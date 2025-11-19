uint64_t sub_10042C164()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
    swift_errorRetain();
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 16);
    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005E0C30);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    sub_1002BC5B4(v2, 1);
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 16);
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138543362;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "revokeFindingToken error: %{public}@", v8, 0xCu);
      sub_100002CE0(v9, &qword_1005A9670, &unk_1004C2480);

      sub_1002BC5B4(v7, 1);
    }

    else
    {

      sub_1002BC5B4(v7, 1);
    }
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10042C328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v4[11] = *v3;
  v5 = type metadata accessor for FindingConfigSessionStopEnvelopeV1(0);
  v4[12] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v7 = type metadata accessor for FindingConfigEnvelopeV1(0);
  v4[15] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v9 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v10 = type metadata accessor for FindingTokenEnvelopeV1();
  v4[19] = v10;
  v11 = *(v10 - 8);
  v4[20] = v11;
  v4[21] = *(v11 + 64);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v12 = sub_10004B564(&qword_1005A92B0, &qword_1004D8050);
  v4[25] = v12;
  v13 = *(v12 - 8);
  v4[26] = v13;
  v14 = *(v13 + 64) + 15;
  v4[27] = swift_task_alloc();
  v15 = type metadata accessor for Destination();
  v4[28] = v15;
  v16 = *(v15 - 8);
  v4[29] = v16;
  v17 = *(v16 + 64) + 15;
  v4[30] = swift_task_alloc();
  v18 = type metadata accessor for Account();
  v4[31] = v18;
  v19 = *(v18 - 8);
  v4[32] = v19;
  v20 = *(v19 + 64) + 15;
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();

  return _swift_task_switch(sub_10042C604, v3, 0);
}

uint64_t sub_10042C604()
{
  v161 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = v0[34];
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[30];
  v158 = v0;
  v5 = v0[29];
  v6 = v158[28];
  v7 = v158[26];
  v154 = v158[25];
  v155 = v158[27];
  v152 = v158[9];
  v8 = v158[8];
  v9 = v158[7];
  v10 = type metadata accessor for Logger();
  v158[35] = sub_10000A6F0(v10, qword_1005E0C30);
  v151 = *(v3 + 16);
  v151(v1, v9, v2);
  (*(v5 + 16))(v4, v8, v6);
  v11 = v158;
  (*(v7 + 16))(v155, v152, v154);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v158[34];
  if (v14)
  {
    v16 = v158[32];
    v17 = v158[33];
    v18 = v158[31];
    v19 = v158[29];
    v147 = v158[28];
    v148 = v158[30];
    v153 = v158[26];
    v149 = v158[25];
    v150 = v158[27];
    v20 = swift_slowAlloc();
    v160[0] = swift_slowAlloc();
    *v20 = 136447747;
    *(v20 + 4) = sub_10000D01C(0xD00000000000003ELL, 0x80000001004DEC60, v160);
    *(v20 + 12) = 2160;
    *(v20 + 14) = 1752392040;
    *(v20 + 22) = 2081;
    v151(v17, v15, v18);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    (*(v16 + 8))(v15, v18);
    v24 = sub_10000D01C(v21, v23, v160);

    *(v20 + 24) = v24;
    *(v20 + 32) = 2160;
    *(v20 + 34) = 1752392040;
    *(v20 + 42) = 2081;
    sub_100009680(&qword_1005A9260, &type metadata accessor for Destination);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v19 + 8))(v148, v147);
    v28 = sub_10000D01C(v25, v27, v160);

    *(v20 + 44) = v28;
    *(v20 + 52) = 2160;
    *(v20 + 54) = 1752392040;
    *(v20 + 62) = 2081;
    sub_10001DF0C(&qword_1005A92B8, &qword_1005A92B0, &qword_1004D8050);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    (*(v153 + 8))(v150, v149);
    v32 = sub_10000D01C(v29, v31, v160);

    *(v20 + 64) = v32;
    _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s\naccount: %{private,mask.hash}s\ndestination %{private,mask.hash}s\nmessage: %{private,mask.hash}s", v20, 0x48u);
    swift_arrayDestroy();
  }

  else
  {
    v33 = v158[32];
    v34 = v158[31];
    v35 = v158[30];
    v36 = v158[29];
    v37 = v158[28];
    v38 = v158[27];
    v39 = v158[26];
    v40 = v158[25];

    (*(v39 + 8))(v38, v40);
    (*(v36 + 8))(v35, v37);
    (*(v33 + 8))(v15, v34);
    v11 = v158;
  }

  v41 = v11[25];
  v42 = v11[9];
  Message.type.getter();
  v43 = *(v11 + 320);
  if (v43 <= 2)
  {
    if (v43 == 1)
    {
      v61 = v11[24];
      v62 = v11[25];
      v63 = v11[19];
      v64 = v11[9];
      sub_100009680(&qword_1005B3998, type metadata accessor for FindingTokenEnvelopeV1);
      sub_100009680(&qword_1005B39A0, type metadata accessor for FindingTokenEnvelopeV1);
      Message.extract<A>()();
      sub_10042E66C(v11[24], v11[23], type metadata accessor for FindingTokenEnvelopeV1);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.default.getter();
      v67 = os_log_type_enabled(v65, v66);
      v68 = v11[23];
      if (v67)
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v160[0] = v70;
        *v69 = 141558275;
        *(v69 + 4) = 1752392040;
        *(v69 + 12) = 2081;
        v71 = sub_1002E9AE4();
        v73 = v72;
        sub_10042E6D4(v68, type metadata accessor for FindingTokenEnvelopeV1);
        v74 = sub_10000D01C(v71, v73, v160);

        *(v69 + 14) = v74;
        _os_log_impl(&_mh_execute_header, v65, v66, "Extracted FindingTokenEnvelopeV1: %{private,mask.hash}s", v69, 0x16u);
        sub_100004984(v70);
      }

      else
      {

        sub_10042E6D4(v68, type metadata accessor for FindingTokenEnvelopeV1);
      }

      v132 = v11[24];
      v133 = v11[22];
      v134 = v158[21];
      v135 = v158[20];
      v136 = v158[18];
      v137 = v158[11];
      v138 = v158[10];
      v157 = *(v138 + 128);
      type metadata accessor for WorkItemQueue.WorkItem();
      sub_10042E66C(v132, v133, type metadata accessor for FindingTokenEnvelopeV1);
      v139 = (*(v135 + 80) + 24) & ~*(v135 + 80);
      v11 = v158;
      v140 = swift_allocObject();
      *(v140 + 16) = v138;
      sub_10042E604(v133, v140 + v139, type metadata accessor for FindingTokenEnvelopeV1);
      *(swift_allocObject() + 16) = v137;

      UUID.init()();
      WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
      dispatch thunk of WorkItemQueue.enqueue(_:)();

      sub_10042E6D4(v132, type metadata accessor for FindingTokenEnvelopeV1);
    }

    goto LABEL_21;
  }

  if (*(v11 + 320) > 4u)
  {
    if (v43 != 5)
    {
      v103 = v11[25];
      v104 = v11[9];
      sub_10042E134();
      sub_10042E188();
      Message.extract<A>()();
      v118 = v11[2];
      v117 = v11[3];

      v119 = Logger.logObject.getter();
      v120 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v119, v120))
      {
        v122 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        v160[0] = v123;
        *v122 = 141558275;
        *(v122 + 4) = 1752392040;
        *(v122 + 12) = 2081;

        v124 = sub_1002EA6EC(v118, v117);
        v126 = v125;

        v127 = sub_10000D01C(v124, v126, v160);

        *(v122 + 14) = v127;
        _os_log_impl(&_mh_execute_header, v119, v120, "Extracted FindingTokenRevokeEnvelopeV1: %{private,mask.hash}s", v122, 0x16u);
        sub_100004984(v123);
      }

      v128 = v11[18];
      v129 = v11[10];
      v130 = *(v129 + 128);
      type metadata accessor for WorkItemQueue.WorkItem();
      v131 = swift_allocObject();
      v131[2] = v129;
      v131[3] = v118;
      v131[4] = v117;

      UUID.init()();
      WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
      dispatch thunk of WorkItemQueue.enqueue(_:)();

      goto LABEL_21;
    }

    v75 = v11[25];
    v76 = v11[14];
    v77 = v11[12];
    v78 = v11[9];
    sub_100009680(&qword_1005B39E8, type metadata accessor for FindingConfigSessionStopEnvelopeV1);
    sub_100009680(&qword_1005B39F0, type metadata accessor for FindingConfigSessionStopEnvelopeV1);
    Message.extract<A>()();
    sub_10042E66C(v11[14], v11[13], type metadata accessor for FindingConfigSessionStopEnvelopeV1);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.default.getter();
    v81 = os_log_type_enabled(v79, v80);
    v82 = v11[13];
    if (v81)
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v160[0] = v84;
      *v83 = 141558275;
      *(v83 + 4) = 1752392040;
      *(v83 + 12) = 2081;
      v85 = sub_1002E8BC8();
      v87 = v86;
      sub_10042E6D4(v82, type metadata accessor for FindingConfigSessionStopEnvelopeV1);
      v88 = sub_10000D01C(v85, v87, v160);

      *(v83 + 14) = v88;
      _os_log_impl(&_mh_execute_header, v79, v80, "NIRangingService Extracted FindingConfigSessionStopEnvelopeV1: %{private,mask.hash}s", v83, 0x16u);
      sub_100004984(v84);
    }

    else
    {

      sub_10042E6D4(v82, type metadata accessor for FindingConfigSessionStopEnvelopeV1);
    }

    v141 = swift_task_alloc();
    v11[38] = v141;
    *v141 = v11;
    v141[1] = sub_10042DA94;
    v142 = v11[14];
    v143 = v11[10];

    return sub_10042A2EC(v142);
  }

  else
  {
    if (v43 == 3)
    {
      v44 = v11[25];
      v45 = v11[9];
      sub_10042E284();
      sub_10042E2D8();
      Message.extract<A>()();
      v47 = v11[4];
      v46 = v11[5];

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v160[0] = v51;
        *v50 = 141558275;
        *(v50 + 4) = 1752392040;
        *(v50 + 12) = 2081;

        v52 = sub_1002EA528(v47, v46);
        v54 = v53;

        v55 = sub_10000D01C(v52, v54, v160);

        *(v50 + 14) = v55;
        _os_log_impl(&_mh_execute_header, v48, v49, "Extracted FindingTokenRequestEnvelopeV1: %{private,mask.hash}s", v50, 0x16u);
        sub_100004984(v51);
      }

      v56 = v11[18];
      v57 = v158[11];
      v58 = v158[10];
      v59 = *(v58 + 128);
      type metadata accessor for WorkItemQueue.WorkItem();
      v60 = swift_allocObject();
      v60[2] = v58;
      v60[3] = v47;
      v60[4] = v46;
      *(swift_allocObject() + 16) = v57;
      v11 = v158;

      UUID.init()();
      WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
      dispatch thunk of WorkItemQueue.enqueue(_:)();

LABEL_21:
      v106 = v11[33];
      v105 = v11[34];
      v107 = v11[30];
      v108 = v11[27];
      v110 = v11[23];
      v109 = v11[24];
      v111 = v11[22];
      v113 = v11[17];
      v112 = v11[18];
      v114 = v11[16];
      v156 = v11[14];
      v159 = v11[13];

      v115 = v11[1];

      return v115();
    }

    v89 = v11[25];
    v90 = v11[17];
    v91 = v11[15];
    v92 = v11[9];
    sub_100009680(&qword_1005B3208, type metadata accessor for FindingConfigEnvelopeV1);
    sub_100009680(&qword_1005B3210, type metadata accessor for FindingConfigEnvelopeV1);
    Message.extract<A>()();
    sub_10042E66C(v11[17], v11[16], type metadata accessor for FindingConfigEnvelopeV1);
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.default.getter();
    v95 = os_log_type_enabled(v93, v94);
    v96 = v11[16];
    if (v95)
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v160[0] = v98;
      *v97 = 141558275;
      *(v97 + 4) = 1752392040;
      *(v97 + 12) = 2081;
      v99 = sub_1002E8304();
      v101 = v100;
      sub_10042E6D4(v96, type metadata accessor for FindingConfigEnvelopeV1);
      v102 = sub_10000D01C(v99, v101, v160);

      *(v97 + 14) = v102;
      _os_log_impl(&_mh_execute_header, v93, v94, "NIRangingService Extracted FindingConfigEnvelopeV1: %{private,mask.hash}s", v97, 0x16u);
      sub_100004984(v98);
    }

    else
    {

      sub_10042E6D4(v96, type metadata accessor for FindingConfigEnvelopeV1);
    }

    v144 = swift_task_alloc();
    v11[36] = v144;
    *v144 = v11;
    v144[1] = sub_10042D854;
    v145 = v11[17];
    v146 = v11[10];

    return sub_100429938(v145);
  }
}

uint64_t sub_10042D854()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = v0;

  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_10042DCD4;
  }

  else
  {
    v6 = sub_10042D980;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10042D980()
{
  sub_10042E6D4(v0[17], type metadata accessor for FindingConfigEnvelopeV1);
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[30];
  v4 = v0[27];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[16];
  v13 = v0[14];
  v14 = v0[13];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10042DA94()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = v0;

  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_10042DF04;
  }

  else
  {
    v6 = sub_10042DBC0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10042DBC0()
{
  sub_10042E6D4(v0[14], type metadata accessor for FindingConfigSessionStopEnvelopeV1);
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[30];
  v4 = v0[27];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[16];
  v13 = v0[14];
  v14 = v0[13];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10042DCD4()
{
  v25 = v0;
  sub_10042E6D4(v0[17], type metadata accessor for FindingConfigEnvelopeV1);
  v1 = v0[37];
  v2 = v0[35];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136446210;
    v0[6] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v24);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "messageReceived handler error: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  else
  {
  }

  v11 = v0[33];
  v10 = v0[34];
  v12 = v0[30];
  v13 = v0[27];
  v15 = v0[23];
  v14 = v0[24];
  v16 = v0[22];
  v18 = v0[17];
  v17 = v0[18];
  v19 = v0[16];
  v22 = v0[14];
  v23 = v0[13];

  v20 = v0[1];

  return v20();
}

uint64_t sub_10042DF04()
{
  v25 = v0;
  sub_10042E6D4(v0[14], type metadata accessor for FindingConfigSessionStopEnvelopeV1);
  v1 = v0[39];
  v2 = v0[35];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136446210;
    v0[6] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v24);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "messageReceived handler error: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  else
  {
  }

  v11 = v0[33];
  v10 = v0[34];
  v12 = v0[30];
  v13 = v0[27];
  v15 = v0[23];
  v14 = v0[24];
  v16 = v0[22];
  v18 = v0[17];
  v17 = v0[18];
  v19 = v0[16];
  v22 = v0[14];
  v23 = v0[13];

  v20 = v0[1];

  return v20();
}

unint64_t sub_10042E134()
{
  result = qword_1005B39F8;
  if (!qword_1005B39F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B39F8);
  }

  return result;
}

unint64_t sub_10042E188()
{
  result = qword_1005B3A00;
  if (!qword_1005B3A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3A00);
  }

  return result;
}

uint64_t sub_10042E1DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_100426DC0(v2, v3, v4);
}

unint64_t sub_10042E284()
{
  result = qword_1005B3A08;
  if (!qword_1005B3A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3A08);
  }

  return result;
}

unint64_t sub_10042E2D8()
{
  result = qword_1005B3A10;
  if (!qword_1005B3A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3A10);
  }

  return result;
}

uint64_t sub_10042E32C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100003690;

  return sub_100420594(v2, v3, v4);
}

uint64_t sub_10042E3D4(uint64_t a1, char a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000368C;

  return sub_100426B1C(a1, a2 & 1, v6);
}

uint64_t sub_10042E480()
{
  v2 = *(type metadata accessor for FindingTokenEnvelopeV1() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_10041DB84(v4, v0 + v3);
}

uint64_t sub_10042E558(uint64_t a1, char a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100003690;

  return sub_1004201E0(a1, a2 & 1, v6);
}

uint64_t sub_10042E604(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10042E66C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10042E6D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10042E734()
{
  v1 = type metadata accessor for Friend();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10042E804()
{
  v1 = type metadata accessor for Friend();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10042E898(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_10042BCCC(a1, v4, v5, v6);
}

uint64_t sub_10042E958@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for DiscoveryToken.Bucket(0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10042FCD0();
  sub_10042ED60(a2, a3, v13, v12);
  v14 = sub_10042F8D8(a1, *&v12[*(v9 + 28)], 0);
  if (v14)
  {
    v15 = v14;
    v16 = type metadata accessor for DiscoveryToken(0);
    sub_10042FE40(v12, a4 + *(v16 + 20));
    *a4 = v15;
    return (*(*(v16 - 8) + 56))(a4, 0, 1, v16);
  }

  else
  {
    sub_10042FDE4(v12);
    v18 = type metadata accessor for DiscoveryToken(0);
    return (*(*(v18 - 8) + 56))(a4, 1, 1, v18);
  }
}

uint64_t sub_10042EABC()
{
  v1 = v0;
  _StringGuts.grow(_:)(54);
  v2 = type metadata accessor for DiscoveryToken(0);
  sub_10042FC68(&qword_1005B3A28, type metadata accessor for DiscoveryToken);
  v3._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x6E656B6F54696E20;
  v4._object = 0xEA0000000000203ALL;
  String.append(_:)(v4);
  v5 = [*v0 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x7461446573616220;
  v10._object = 0xEB00000000203A65;
  String.append(_:)(v10);
  v11 = v1 + *(v2 + 20);
  type metadata accessor for Date();
  sub_10042FC68(&qword_1005A9800, &type metadata accessor for Date);
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x203A7865646E6920;
  v13._object = 0xE800000000000000;
  String.append(_:)(v13);
  v14 = type metadata accessor for DiscoveryToken.Bucket(0);
  v20 = *&v11[*(v14 + 20)];
  v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0x746E496574616420;
  v16._object = 0xEF203A6C61767265;
  String.append(_:)(v16);
  v17 = *(v14 + 24);
  type metadata accessor for DateInterval();
  sub_10042FC68(&qword_1005B3A30, &type metadata accessor for DateInterval);
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  return 0;
}

uint64_t sub_10042ED60@<X0>(void (*a1)(void, void)@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v73 = a4;
  v77 = type metadata accessor for DateInterval();
  v84 = *(v77 - 8);
  v7 = *(v84 + 64);
  v8 = __chkstk_darwin(v77);
  v75 = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v82 = v68 - v10;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v71 = v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v78 = v68 - v17;
  v18 = __chkstk_darwin(v16);
  v69 = (v68 - v19);
  v20 = __chkstk_darwin(v18);
  v22 = v68 - v21;
  v23 = __chkstk_darwin(v20);
  v80 = v68 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = v68 - v26;
  v28 = __chkstk_darwin(v25);
  v76 = v68 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = v68 - v31;
  __chkstk_darwin(v30);
  v34 = v68 - v33;
  Date.timeIntervalSinceReferenceDate.getter();
  Date.init(timeIntervalSinceReferenceDate:)();
  sub_10042FC68(&qword_1005B0BF0, &type metadata accessor for Date);
  v35 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v36 = v12[2];
  v83 = a1;
  v70 = a2;
  if (v35)
  {
    v37 = a1;
  }

  else
  {
    v37 = a2;
  }

  v79 = v36;
  (v36)(v32, v37, v11);
  v81 = v34;
  v72 = v32;
  Date.timeIntervalSince(_:)();
  v39 = v38 / (a3 * 60.0);
  if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v39 <= -1.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v39 >= 1.84467441e19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v39 != -1)
  {
    v74 = v39 + 1;
    v32 = v79;
    (v79)(v27, v81, v11);
    v34 = v76;
    Date.init(timeInterval:since:)();
    (v32)(v27, v34, v11);
    Date.init(timeInterval:since:)();
    Date.timeIntervalSince1970.getter();
    a1 = v12[1];
    v68[1] = v12 + 1;
    a1(v22, v11);
    v40 = v80;
    Date.init(timeIntervalSince1970:)();
    (v32)(v27, v34, v11);
    (v32)(v69, v40, v11);
    v22 = v82;
    DateInterval.init(start:end:)();
    a2 = v78;
    if (qword_1005A8530 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  __break(1u);
  __break(1u);
LABEL_17:
  swift_once();
LABEL_9:
  v41 = type metadata accessor for Logger();
  sub_10000A6F0(v41, qword_1005E0C30);
  (v32)(a2, v83, v11);
  v42 = v71;
  (v32)(v71, v70, v11);
  v43 = v84;
  v44 = v75;
  v45 = v77;
  (*(v84 + 16))(v75, v22, v77);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v85[0] = v70;
    *v48 = 134218754;
    *(v48 + 4) = v74;
    *(v48 + 12) = 2082;
    sub_10042FC68(&qword_1005A9800, &type metadata accessor for Date);
    v69 = v46;
    v49 = v78;
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    v52 = v51;
    LODWORD(v78) = v47;
    a1(v49, v11);
    v53 = sub_10000D01C(v50, v52, v85);

    *(v48 + 14) = v53;
    *(v48 + 22) = 2082;
    v45 = v77;
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v55;
    a1(v42, v11);
    v57 = sub_10000D01C(v54, v56, v85);

    *(v48 + 24) = v57;
    *(v48 + 32) = 2082;
    sub_10042FC68(&qword_1005B3A30, &type metadata accessor for DateInterval);
    v58 = v75;
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    v61 = v60;
    (*(v84 + 8))(v58, v45);
    v62 = sub_10000D01C(v59, v61, v85);
    v43 = v84;

    *(v48 + 34) = v62;
    v63 = v74;
    v64 = v69;
    _os_log_impl(&_mh_execute_header, v69, v78, "Bucket calculated to ‣%llu baseTime: %{public}s date: %{public}s .\ndateInterval: %{public}s", v48, 0x2Au);
    swift_arrayDestroy();

    a1(v80, v11);
    a1(v76, v11);
    a1(v72, v11);
    a1(v81, v11);
  }

  else
  {

    (*(v43 + 8))(v44, v45);
    a1(v42, v11);
    a1(v78, v11);
    a1(v80, v11);
    a1(v34, v11);
    a1(v72, v11);
    a1(v81, v11);
    v63 = v74;
  }

  v65 = v73;
  (v79)(v73, v83, v11);
  v66 = type metadata accessor for DiscoveryToken.Bucket(0);
  *(v65 + *(v66 + 20)) = v63;
  return (*(v43 + 32))(v65 + *(v66 + 24), v82, v45);
}

uint64_t sub_10042F654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[3] = &type metadata for UnsafeRawBufferPointer;
  v14[4] = &protocol witness table for UnsafeRawBufferPointer;
  v14[0] = a1;
  v14[1] = a2;
  v4 = sub_100011AEC(v14, &type metadata for UnsafeRawBufferPointer);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_10042F720(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_10042F7D8(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_10042F854(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = sub_100004984(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t sub_10042F720(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_10042F7D8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_10042F854(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

id sub_10042F8D8(uint64_t a1, uint64_t a2, char a3)
{
  v5 = type metadata accessor for SymmetricKey();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v25 - v11;
  v13 = String.utf8Data.getter();
  v15 = v14;
  v30 = SharedSecretKey.data.getter();
  v31 = v16;
  SymmetricKey.init<A>(data:)();
  v26 = v13;
  v30 = v13;
  v31 = v15;
  if (a3)
  {
    type metadata accessor for SHA256();
    sub_10042FC68(&qword_1005B3A18, &type metadata accessor for SHA256);
    sub_1000CA210();
    static HKDF.deriveKey<A>(inputKeyMaterial:salt:outputByteCount:)();
  }

  else
  {
    v29 = a2;
    sub_10042FBF4();
    v27 = FixedWidthInteger.data.getter();
    v28 = v17;
    type metadata accessor for SHA256();
    sub_10042FC68(&qword_1005B3A18, &type metadata accessor for SHA256);
    sub_1000CA210();
    static HKDF.deriveKey<A, B>(inputKeyMaterial:salt:info:outputByteCount:)();
    sub_1000049D0(v27, v28);
  }

  SymmetricKey.withUnsafeBytes<A>(_:)();
  v18 = *(v6 + 8);
  v18(v10, v5);
  v19 = v30;
  v20 = v31;
  v21 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v23 = [v21 generateFindingDiscoveryTokenWithSharedSecret:isa];

  sub_1000049D0(v26, v15);
  sub_1000049D0(v19, v20);
  v18(v12, v5);
  return v23;
}

unint64_t sub_10042FBF4()
{
  result = qword_1005B3A20;
  if (!qword_1005B3A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3A20);
  }

  return result;
}

uint64_t sub_10042FC68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10042FCD0()
{
  sub_1004BA244();
  if (v1)
  {
    return 10080;
  }

  v2 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0C30);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v2;
    _os_log_impl(&_mh_execute_header, v4, v5, "Using keyroll interval from defaults: %ld minutes", v6, 0xCu);
  }

  return v2;
}

uint64_t sub_10042FDE4(uint64_t a1)
{
  v2 = type metadata accessor for DiscoveryToken.Bucket(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10042FE40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveryToken.Bucket(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10042FECC()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DateInterval();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10042FF80()
{
  result = sub_1002414A8();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DiscoveryToken.Bucket(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100430004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v20 - v9;
  sub_100005F04(a1, v20 - v9, &qword_1005A9690, &qword_1004C2A00);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100002CE0(v10, &qword_1005A9690, &qword_1004C2A00);
    if (*(a3 + 16))
    {
LABEL_3:
      v13 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = dispatch thunk of Actor.unownedExecutor.getter();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v4;
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t sub_1004301F4(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = type metadata accessor for TimeoutError();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_1004302C0, 0, 0);
}

uint64_t sub_1004302C0()
{
  if (qword_1005A8508 != -1)
  {
    swift_once();
  }

  v2 = qword_1005B3070;
  v1 = *algn_1005B3078;
  v0[10] = qword_1005B3070;
  v0[11] = v1;
  v3 = async function pointer to withTimeout<A>(_:block:)[1];
  v4 = swift_task_alloc();
  v0[12] = v4;
  v5 = sub_10004B564(&qword_1005B0680, &qword_1004D2010);
  *v4 = v0;
  v4[1] = sub_1004303C4;
  v6 = v0[4];
  v7 = v0[5];

  return withTimeout<A>(_:block:)(v0 + 2, v2, v1, v6, v7, v5);
}

uint64_t sub_1004303C4()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100430514, 0, 0);
  }

  else
  {
    v5 = v3[8];
    v4 = v3[9];
    v6 = v3[2];

    v7 = v3[1];

    return v7(v6);
  }
}

uint64_t sub_100430514()
{
  v0[3] = v0[13];
  v1 = v0[9];
  v2 = v0[6];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  v3 = swift_dynamicCast();
  v4 = v0[13];
  if (v3)
  {
    v6 = v0[8];
    v5 = v0[9];
    v7 = v0[6];
    v8 = v0[7];
    v9 = v0[13];

    (*(v8 + 32))(v6, v5, v7);
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000A6F0(v10, qword_1005E0BF0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v14 = v0[10];
      v13 = v0[11];
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = Duration.milliseconds.getter();
      _os_log_impl(&_mh_execute_header, v11, v12, "Nearby Interaction call timed out after %lld milliseconds", v15, 0xCu);
    }

    v17 = v0[7];
    v16 = v0[8];
    v18 = v0[6];

    sub_1000069AC(&qword_1005B3B80, &type metadata accessor for TimeoutError);
    swift_allocError();
    (*(v17 + 16))(v19, v16, v18);
    swift_willThrow();
    (*(v17 + 8))(v16, v18);
  }

  v21 = v0[8];
  v20 = v0[9];
  v22 = v0[3];

  v23 = v0[1];

  return v23();
}

uint64_t sub_100430774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for TimeoutError();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_100430844, 0, 0);
}

uint64_t sub_100430844()
{
  if (qword_1005A8508 != -1)
  {
    swift_once();
  }

  v2 = qword_1005B3070;
  v1 = *algn_1005B3078;
  v0[10] = qword_1005B3070;
  v0[11] = v1;
  v3 = async function pointer to withTimeout<A>(_:block:)[1];
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_100430934;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];

  return withTimeout<A>(_:block:)(v7, v2, v1, v5, v6, &type metadata for () + 8);
}

uint64_t sub_100430934()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100430A7C, 0, 0);
  }

  else
  {
    v5 = v3[8];
    v4 = v3[9];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_100430A7C()
{
  v0[2] = v0[13];
  v1 = v0[9];
  v2 = v0[6];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  v3 = swift_dynamicCast();
  v4 = v0[13];
  if (v3)
  {
    v6 = v0[8];
    v5 = v0[9];
    v7 = v0[6];
    v8 = v0[7];
    v9 = v0[13];

    (*(v8 + 32))(v6, v5, v7);
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000A6F0(v10, qword_1005E0BF0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v14 = v0[10];
      v13 = v0[11];
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = Duration.milliseconds.getter();
      _os_log_impl(&_mh_execute_header, v11, v12, "Nearby Interaction call timed out after %lld milliseconds", v15, 0xCu);
    }

    v17 = v0[7];
    v16 = v0[8];
    v18 = v0[6];

    sub_1000069AC(&qword_1005B3B80, &type metadata accessor for TimeoutError);
    swift_allocError();
    (*(v17 + 16))(v19, v16, v18);
    swift_willThrow();
    (*(v17 + 8))(v16, v18);
  }

  v21 = v0[8];
  v20 = v0[9];
  v22 = v0[2];

  v23 = v0[1];

  return v23();
}

uint64_t sub_100430CDC()
{
  v1[3] = v0;
  v1[4] = *v0;
  v2 = type metadata accessor for Destination();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v5 = type metadata accessor for Handle();
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v8 = type metadata accessor for RedStripeNotification();
  v1[13] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v10 = *(*(sub_10004B564(&qword_1005A9188, &unk_1004D80D0) - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v11 = type metadata accessor for Friend();
  v1[22] = v11;
  v12 = *(v11 - 8);
  v1[23] = v12;
  v13 = *(v12 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v14 = type metadata accessor for DiscoveryToken.Bucket(0);
  v1[28] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v1[29] = swift_task_alloc();
  v16 = *(*(sub_10004B564(&qword_1005B0F30, &qword_1004D3308) - 8) + 64) + 15;
  v1[30] = swift_task_alloc();
  v17 = type metadata accessor for DiscoveryToken(0);
  v1[31] = v17;
  v18 = *(v17 - 8);
  v1[32] = v18;
  v19 = *(v18 + 64) + 15;
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v20 = *(*(sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0) - 8) + 64) + 15;
  v1[35] = swift_task_alloc();
  v21 = type metadata accessor for Date();
  v1[36] = v21;
  v22 = *(v21 - 8);
  v1[37] = v22;
  v23 = *(v22 + 64) + 15;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v24 = *(*(sub_10004B564(&qword_1005AEB98, &unk_1004D07C0) - 8) + 64) + 15;
  v1[40] = swift_task_alloc();
  v25 = type metadata accessor for SharedSecretKey();
  v1[41] = v25;
  v26 = *(v25 - 8);
  v1[42] = v26;
  v27 = *(v26 + 64) + 15;
  v1[43] = swift_task_alloc();
  v28 = type metadata accessor for FriendSharedSecretsRecord();
  v1[44] = v28;
  v29 = *(v28 - 8);
  v1[45] = v29;
  v30 = *(v29 + 64) + 15;
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v31 = async function pointer to daemon.getter[1];
  v32 = swift_task_alloc();
  v1[50] = v32;
  *v32 = v1;
  v32[1] = sub_10043121C;

  return daemon.getter();
}

uint64_t sub_10043121C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 400);
  v12 = *v1;
  v3[51] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[52] = v6;
  v7 = type metadata accessor for Daemon();
  v3[53] = v7;
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_1000069AC(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[54] = v9;
  v10 = sub_1000069AC(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_1004313FC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1004313FC(uint64_t a1)
{
  v3 = *(*v2 + 416);
  v4 = *v2;
  v4[55] = a1;
  v4[56] = v1;

  if (v1)
  {
    v5 = v4[3];

    return _swift_task_switch(sub_1004352E8, v5, 0);
  }

  else
  {
    v6 = v4[51];

    v7 = swift_task_alloc();
    v4[57] = v7;
    *v7 = v4;
    v7[1] = sub_1004315A0;

    return (sub_1004301F4)(&unk_1004D8CC0, 0);
  }
}

uint64_t sub_1004315A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 456);
  v5 = *v2;
  *(*v2 + 464) = a1;

  v6 = *(v3 + 24);
  if (v1)
  {

    v7 = sub_100435614;
  }

  else
  {
    v7 = sub_1004316E0;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1004316E0()
{
  v54 = v0;
  v1 = v0[58];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v7 = v0[58];
    }

    v8 = _CocoaArrayWrapper.endIndex.getter();
    v2 = v0[58];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = v0[58];
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_3:
      v3 = sub_10023F968(v2);
      v0[59] = v3;

      v4 = swift_task_alloc();
      v0[60] = v4;
      *v4 = v0;
      v4[1] = sub_100431BBC;
      v5 = v0[3];

      return sub_1004393F8(v3);
    }
  }

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000A6F0(v9, qword_1005E0C30);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "No activelyInteractingDiscoveryTokens!", v12, 2u);
  }

  v13 = v0[55];

  sub_1003DA6A0();
  v14 = swift_allocError();
  *v15 = 2;
  swift_willThrow();

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v9, qword_1005E0C30);
  swift_errorRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v53 = v19;
    *v18 = 136446210;
    v0[2] = v14;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v20 = String.init<A>(describing:)();
    v22 = sub_10000D01C(v20, v21, &v53);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "handleRangingStartedNotification error: %{public}s", v18, 0xCu);
    sub_100004984(v19);
  }

  else
  {
  }

  v24 = v0[48];
  v23 = v0[49];
  v26 = v0[46];
  v25 = v0[47];
  v27 = v0[43];
  v29 = v0[39];
  v28 = v0[40];
  v30 = v0[38];
  v31 = v0[34];
  v32 = v0[35];
  v34 = v0[33];
  v35 = v0[30];
  v36 = v0[29];
  v37 = v0[27];
  v38 = v0[26];
  v39 = v0[25];
  v40 = v0[24];
  v41 = v0[21];
  v42 = v0[20];
  v43 = v0[19];
  v44 = v0[18];
  v45 = v0[17];
  v46 = v0[16];
  v47 = v0[15];
  v48 = v0[14];
  v49 = v0[12];
  v50 = v0[11];
  v51 = v0[8];
  v52 = v0[7];

  v33 = v0[1];

  return v33();
}

uint64_t sub_100431BBC(char a1)
{
  v2 = *(*v1 + 480);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 796) = a1;

  return _swift_task_switch(sub_100431CD4, v3, 0);
}

uint64_t sub_100431CD4()
{
  if (*(v0 + 796))
  {
    v1 = *(v0 + 472);
    v2 = *(v0 + 440);

    v4 = *(v0 + 384);
    v3 = *(v0 + 392);
    v6 = *(v0 + 368);
    v5 = *(v0 + 376);
    v7 = *(v0 + 344);
    v9 = *(v0 + 312);
    v8 = *(v0 + 320);
    v10 = *(v0 + 304);
    v11 = *(v0 + 272);
    v12 = *(v0 + 280);
    v16 = *(v0 + 264);
    v17 = *(v0 + 240);
    v18 = *(v0 + 232);
    v19 = *(v0 + 216);
    v20 = *(v0 + 208);
    v21 = *(v0 + 200);
    v22 = *(v0 + 192);
    v23 = *(v0 + 168);
    v24 = *(v0 + 160);
    v25 = *(v0 + 152);
    v26 = *(v0 + 144);
    v27 = *(v0 + 136);
    v28 = *(v0 + 128);
    v29 = *(v0 + 120);
    v30 = *(v0 + 112);
    v31 = *(v0 + 96);
    v32 = *(v0 + 88);
    v33 = *(v0 + 64);
    v34 = *(v0 + 56);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v15 = *(v0 + 440);

    return _swift_task_switch(sub_100431F00, v15, 0);
  }
}

uint64_t sub_100431F00()
{
  *(v0 + 488) = sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  *(v0 + 496) = v1;
  v2 = *(v1 - 8);
  *(v0 + 504) = *(v2 + 72);
  v3 = *(v2 + 80);
  *(v0 + 792) = v3;
  v4 = (v3 + 32) & ~v3;
  v5 = swift_allocObject();
  *(v0 + 512) = v5;
  *(v5 + 16) = xmmword_1004C1900;
  v6 = enum case for HandleType.follower(_:);
  v7 = *(v2 + 104);
  *(v0 + 520) = v7;
  *(v0 + 528) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v7(v5 + v4, v6, v1);
  v8 = swift_task_alloc();
  *(v0 + 536) = v8;
  *v8 = v0;
  v8[1] = sub_100432088;
  v9 = *(v0 + 440);

  return sub_10001C61C(v5, 1);
}

uint64_t sub_100432088(uint64_t a1)
{
  v2 = *(*v1 + 536);
  v3 = *(*v1 + 512);
  v4 = *(*v1 + 440);
  v6 = *v1;
  *(*v1 + 544) = a1;

  return _swift_task_switch(sub_1004321BC, v4, 0);
}

uint64_t sub_1004321BC()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = *(v0 + 496);
  v4 = *(v0 + 488);
  v5 = (*(v0 + 792) + 32) & ~*(v0 + 792);
  v6 = v5 + *(v0 + 504);
  v7 = swift_allocObject();
  *(v0 + 552) = v7;
  *(v7 + 16) = xmmword_1004C1900;
  v2(v7 + v5, enum case for HandleType.following(_:), v3);
  v8 = swift_task_alloc();
  *(v0 + 560) = v8;
  *v8 = v0;
  v8[1] = sub_1004322B8;
  v9 = *(v0 + 440);

  return sub_10001C61C(v7, 1);
}

uint64_t sub_1004322B8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 560);
  v4 = *(*v1 + 552);
  v8 = *v1;
  *(v2 + 568) = a1;

  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v2 + 576) = v6;
  *v6 = v8;
  v6[1] = sub_100432408;

  return daemon.getter();
}

uint64_t sub_100432408(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 576);
  v5 = *v1;
  v3[73] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[74] = v7;
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_1000069AC(&qword_1005AD568, type metadata accessor for CloudStorageService);
  *v7 = v5;
  v7[1] = sub_1004325BC;
  v10 = v3[54];
  v11 = v3[53];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1004325BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 592);
  v9 = *v2;
  v3[75] = a1;
  v3[76] = v1;

  if (v1)
  {
    v5 = v3[3];
    v6 = sub_100435A20;
  }

  else
  {
    v7 = v3[73];

    v6 = sub_1004326E4;
    v5 = 0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1004326E4()
{
  v1 = *(*(v0 + 600) + 128);
  v2 = swift_task_alloc();
  *(v0 + 616) = v2;
  *v2 = v0;
  v2[1] = sub_100432778;

  return sub_1001C412C();
}

uint64_t sub_100432778(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 616);
  v6 = *v2;
  *(*v2 + 624) = v1;

  if (v1)
  {
    v7 = sub_1004339C8;
  }

  else
  {
    *(v4 + 632) = a1;
    v7 = sub_1004328A0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1004328A0()
{
  v1 = v0[79];
  v2 = v0[3];
  v0[80] = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

  return _swift_task_switch(sub_100432918, v2, 0);
}

uint64_t sub_100432918()
{
  v183 = v0;
  v1 = v0[80];
  v179 = *(v1 + 16);
  if (!v179)
  {
LABEL_27:
    v69 = v0[75];
    v70 = v0[71];
    v71 = v0[68];
    v72 = v0[59];
    v73 = v0[55];

    goto LABEL_28;
  }

  v2 = 0;
  v3 = v0[44];
  v176 = v0[45];
  v174 = v1 + ((*(v176 + 80) + 32) & ~*(v176 + 80));
  v4 = v0[42];
  v172 = (v4 + 48);
  v5 = v0[37];
  v164 = (v5 + 48);
  v166 = (v4 + 32);
  v6 = (v5 + 32);
  v162 = v5 + 8;
  v7 = v0[32];
  v145 = v0[31];
  v155 = (v7 + 56);
  v157 = v6;
  v160 = (v4 + 8);
  v8 = &unk_1004D07C0;
  v151 = v0[28];
  v153 = (v7 + 48);
  v9 = &qword_1005A8000;
  v168 = v3;
  v170 = v0[80];
  while (1)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_47;
    }

    v10 = v0[49];
    v12 = v0[40];
    v11 = v0[41];
    sub_10044AC80(v174 + *(v176 + 72) * v2, v10, type metadata accessor for FriendSharedSecretsRecord);
    sub_100005F04(v10 + *(v3 + 32), v12, &qword_1005AEB98, &unk_1004D07C0);
    if ((*v172)(v12, 1, v11) == 1)
    {
      v13 = v0[40];
      v14 = &qword_1005AEB98;
      v15 = &unk_1004D07C0;
LABEL_10:
      sub_100002CE0(v13, v14, v15);
      if (v9[166] != -1)
      {
        swift_once();
      }

      v22 = v0[49];
      v23 = v0[46];
      v24 = type metadata accessor for Logger();
      sub_10000A6F0(v24, qword_1005E0C30);
      sub_10044AC80(v22, v23, type metadata accessor for FriendSharedSecretsRecord);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      v27 = os_log_type_enabled(v25, v26);
      v28 = v0[46];
      if (v27)
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v182[0] = v30;
        *v29 = 136446210;
        type metadata accessor for UUID();
        sub_1000069AC(&qword_1005A92C0, &type metadata accessor for UUID);
        v31 = dispatch thunk of CustomStringConvertible.description.getter();
        v33 = v32;
        sub_10044ACE8(v28, type metadata accessor for FriendSharedSecretsRecord);
        v34 = sub_10000D01C(v31, v33, v182);
        v3 = v168;

        *(v29 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v25, v26, "No incomingSharedSecret for %{public}s", v29, 0xCu);
        sub_100004984(v30);
        v1 = v170;
      }

      else
      {

        sub_10044ACE8(v28, type metadata accessor for FriendSharedSecretsRecord);
      }

      goto LABEL_4;
    }

    v16 = v0[49];
    v18 = v0[35];
    v17 = v0[36];
    (*v166)(v0[43], v0[40], v0[41]);
    sub_100005F04(v16 + *(v3 + 36), v18, &unk_1005AE5B0, &qword_1004C32F0);
    v19 = (*v164)(v18, 1, v17);
    v20 = v0[43];
    if (v19 == 1)
    {
      v21 = v0[35];
      (*v160)(v0[43], v0[41]);
      v13 = v21;
      v14 = &unk_1005AE5B0;
      v15 = &qword_1004C32F0;
      goto LABEL_10;
    }

    v35 = v0[38];
    v36 = v0[39];
    v37 = v0[36];
    v38 = v0[29];
    v39 = v0[4];
    (*v157)(v36, v0[35], v37);
    static Date.trustedNow.getter(v35);
    v40 = sub_10042FCD0();
    sub_10042ED60(v36, v35, v40, v38);
    v41 = sub_10042F8D8(v20, *(v38 + *(v151 + 20)), 0);
    v8 = *v162;
    v0[81] = *v162;
    v0[82] = v162 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v35, v37);
    v43 = v0[30];
    v42 = v0[31];
    v44 = v0[29];
    if (v41)
    {
      sub_10044AD48(v44, v43 + *(v145 + 20), type metadata accessor for DiscoveryToken.Bucket);
      *v43 = v41;
      (*v155)(v43, 0, 1, v42);
    }

    else
    {
      sub_10044ACE8(v44, type metadata accessor for DiscoveryToken.Bucket);
      (*v155)(v43, 1, 1, v42);
    }

    v45 = v0[30];
    v3 = v168;
    v1 = v170;
    if ((*v153)(v45, 1, v0[31]) == 1)
    {
      sub_100002CE0(v45, &qword_1005B0F30, &qword_1004D3308);
      if (v9[166] != -1)
      {
        swift_once();
      }

      v46 = v0[49];
      v47 = v0[47];
      v48 = type metadata accessor for Logger();
      sub_10000A6F0(v48, qword_1005E0C30);
      sub_10044AC80(v46, v47, type metadata accessor for FriendSharedSecretsRecord);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      v51 = os_log_type_enabled(v49, v50);
      v52 = v0[47];
      v53 = v0[43];
      v54 = v0[39];
      v147 = v54;
      v149 = v0[41];
      v55 = v0[36];
      if (v51)
      {
        v141 = v0[43];
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v182[0] = v57;
        *v56 = 136446210;
        type metadata accessor for UUID();
        sub_1000069AC(&qword_1005A92C0, &type metadata accessor for UUID);
        v58 = dispatch thunk of CustomStringConvertible.description.getter();
        v142 = v8;
        v60 = v59;
        sub_10044ACE8(v52, type metadata accessor for FriendSharedSecretsRecord);
        v61 = v58;
        v3 = v168;
        v62 = sub_10000D01C(v61, v60, v182);

        *(v56 + 4) = v62;
        _os_log_impl(&_mh_execute_header, v49, v50, "Unable to retrieve discovery token for for %{public}s", v56, 0xCu);
        sub_100004984(v57);
        v1 = v170;

        v142(v147, v55);
        (*v160)(v141, v149);
      }

      else
      {

        sub_10044ACE8(v52, type metadata accessor for FriendSharedSecretsRecord);
        v8(v147, v55);
        (*v160)(v53, v149);
      }

      v9 = &qword_1005A8000;
      goto LABEL_4;
    }

    v63 = v0[59];
    v64 = v0[34];
    sub_10044AD48(v45, v64, type metadata accessor for DiscoveryToken);
    if (sub_10021B89C(*v64, v63))
    {
      break;
    }

    v65 = v0[43];
    v66 = v0[41];
    v67 = v0[34];
    v8(v0[39], v0[36]);
    (*v160)(v65, v66);
    sub_10044ACE8(v67, type metadata accessor for DiscoveryToken);
LABEL_4:
    v8 = &unk_1004D07C0;
    ++v2;
    sub_10044ACE8(v0[49], type metadata accessor for FriendSharedSecretsRecord);
    if (v179 == v2)
    {
      v68 = v0[80];
      goto LABEL_27;
    }
  }

  v86 = v0[80];
  v87 = v0[59];

  if (v9[166] == -1)
  {
    goto LABEL_32;
  }

LABEL_47:
  swift_once();
LABEL_32:
  v89 = v0[48];
  v88 = v0[49];
  v91 = v0[33];
  v90 = v0[34];
  v181 = type metadata accessor for Logger();
  v0[83] = sub_10000A6F0(v181, qword_1005E0C30);
  sub_10044AC80(v90, v91, type metadata accessor for DiscoveryToken);
  sub_10044AC80(v88, v89, type metadata accessor for FriendSharedSecretsRecord);
  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.default.getter();
  v94 = os_log_type_enabled(v92, v93);
  v95 = v0[48];
  v96 = v0[33];
  v144 = v8;
  if (v94)
  {
    v97 = swift_slowAlloc();
    v182[0] = swift_slowAlloc();
    *v97 = 136446466;
    v98 = sub_10042EABC();
    v100 = v99;
    sub_10044ACE8(v96, type metadata accessor for DiscoveryToken);
    v101 = sub_10000D01C(v98, v100, v182);

    *(v97 + 4) = v101;
    *(v97 + 12) = 2082;
    type metadata accessor for UUID();
    sub_1000069AC(&qword_1005A92C0, &type metadata accessor for UUID);
    v102 = dispatch thunk of CustomStringConvertible.description.getter();
    v104 = v103;
    sub_10044ACE8(v95, type metadata accessor for FriendSharedSecretsRecord);
    v105 = sub_10000D01C(v102, v104, v182);

    *(v97 + 14) = v105;
    _os_log_impl(&_mh_execute_header, v92, v93, "Found matching token %{public}s from record %{public}s", v97, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10044ACE8(v95, type metadata accessor for FriendSharedSecretsRecord);
    sub_10044ACE8(v96, type metadata accessor for DiscoveryToken);
  }

  v106 = v0[78];
  v107 = v0[68];
  v108 = v0[49];
  v109 = v0[22];
  v110 = v0[23];
  v111 = v0[21];
  *(swift_task_alloc() + 16) = v108;
  sub_10044FE2C(sub_10044AC40, v107, v111);

  v112 = *(v110 + 48);
  v0[84] = v112;
  v0[85] = (v110 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v112(v111, 1, v109) == 1)
  {
    v113 = v0[71];
    v114 = v0[21];

    sub_100002CE0(v114, &qword_1005A9188, &unk_1004D80D0);
    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      *v117 = 0;
      _os_log_impl(&_mh_execute_header, v115, v116, "No matching friend for active token!", v117, 2u);
    }

    v118 = v0[75];
    v119 = v0[55];
    v178 = v0[49];
    v120 = v0[43];
    v121 = v0[41];
    v122 = v0[39];
    v123 = v0[36];
    v124 = v0[34];

    sub_1003DA6A0();
    v125 = swift_allocError();
    *v126 = 2;
    swift_willThrow();

    v144(v122, v123);
    (*v160)(v120, v121);
    sub_10044ACE8(v124, type metadata accessor for DiscoveryToken);
    sub_10044ACE8(v178, type metadata accessor for FriendSharedSecretsRecord);
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    sub_10000A6F0(v181, qword_1005E0C30);
    swift_errorRetain();
    v127 = Logger.logObject.getter();
    v128 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v182[0] = v130;
      *v129 = 136446210;
      v0[2] = v125;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v131 = String.init<A>(describing:)();
      v133 = sub_10000D01C(v131, v132, v182);

      *(v129 + 4) = v133;
      _os_log_impl(&_mh_execute_header, v127, v128, "handleRangingStartedNotification error: %{public}s", v129, 0xCu);
      sub_100004984(v130);
    }

    else
    {
    }

LABEL_28:
    v75 = v0[48];
    v74 = v0[49];
    v77 = v0[46];
    v76 = v0[47];
    v78 = v0[43];
    v80 = v0[39];
    v79 = v0[40];
    v81 = v0[38];
    v82 = v0[34];
    v83 = v0[35];
    v143 = v0[33];
    v146 = v0[30];
    v148 = v0[29];
    v150 = v0[27];
    v152 = v0[26];
    v154 = v0[25];
    v156 = v0[24];
    v158 = v0[21];
    v159 = v0[20];
    v161 = v0[19];
    v163 = v0[18];
    v165 = v0[17];
    v167 = v0[16];
    v169 = v0[15];
    v171 = v0[14];
    v173 = v0[12];
    v175 = v0[11];
    v177 = v0[8];
    v180 = v0[7];

    v84 = v0[1];

    return v84();
  }

  else
  {
    v134 = v0[27];
    v135 = v0[22];
    v136 = v0[23];
    v137 = v0[21];
    v138 = *(v136 + 32);
    v0[86] = v138;
    v0[87] = (v136 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v138(v134, v137, v135);
    v139 = async function pointer to daemon.getter[1];
    v140 = swift_task_alloc();
    v0[88] = v140;
    *v140 = v0;
    v140[1] = sub_100433D8C;

    return daemon.getter();
  }
}

uint64_t sub_1004339C8()
{
  v1 = v0[71];
  v2 = v0[68];
  v3 = v0[59];
  v4 = v0[3];

  return _swift_task_switch(sub_100433A54, v4, 0);
}

uint64_t sub_100433A54()
{
  v44 = v0;
  v1 = v0[75];
  v2 = v0[55];

  v3 = v0[78];
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A6F0(v4, qword_1005E0C30);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v43 = v8;
    *v7 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v9 = String.init<A>(describing:)();
    v11 = sub_10000D01C(v9, v10, &v43);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "handleRangingStartedNotification error: %{public}s", v7, 0xCu);
    sub_100004984(v8);
  }

  else
  {
  }

  v13 = v0[48];
  v12 = v0[49];
  v15 = v0[46];
  v14 = v0[47];
  v16 = v0[43];
  v18 = v0[39];
  v17 = v0[40];
  v19 = v0[38];
  v20 = v0[34];
  v21 = v0[35];
  v24 = v0[33];
  v25 = v0[30];
  v26 = v0[29];
  v27 = v0[27];
  v28 = v0[26];
  v29 = v0[25];
  v30 = v0[24];
  v31 = v0[21];
  v32 = v0[20];
  v33 = v0[19];
  v34 = v0[18];
  v35 = v0[17];
  v36 = v0[16];
  v37 = v0[15];
  v38 = v0[14];
  v39 = v0[12];
  v40 = v0[11];
  v41 = v0[8];
  v42 = v0[7];

  v22 = v0[1];

  return v22();
}

uint64_t sub_100433D8C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 704);
  v5 = *v1;
  v3[89] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[90] = v7;
  v8 = type metadata accessor for UserNotificationService();
  v9 = sub_1000069AC(&qword_1005AD530, type metadata accessor for UserNotificationService);
  *v7 = v5;
  v7[1] = sub_100433F40;
  v10 = v3[54];
  v11 = v3[53];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100433F40(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 720);
  v6 = *v2;
  v4[91] = a1;
  v4[92] = v1;

  v7 = v3[89];
  if (v1)
  {
    v8 = v4[71];
    v9 = v4[3];

    v10 = sub_100435D7C;
    v11 = v9;
  }

  else
  {
    v12 = v4[3];

    v10 = sub_1004340A4;
    v11 = v12;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_1004340A4()
{
  v1 = *(v0 + 736);
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);
  v4 = *(v0 + 568);
  v5 = *(v0 + 216);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  v8 = *(v0 + 160);
  *(swift_task_alloc() + 16) = v5;
  sub_10044FE2C(sub_10044AC60, v4, v8);

  v9 = v3(v8, 1, v6);
  v10 = (v7 + 16);
  if (v9 == 1)
  {
    v11 = *(v0 + 216);
    v12 = *(v0 + 192);
    v13 = *(v0 + 176);
    sub_100002CE0(*(v0 + 160), &qword_1005A9188, &unk_1004D80D0);
    (*v10)(v12, v11, v13);
    v14 = sub_10043481C;
  }

  else
  {
    v15 = *(v0 + 696);
    v16 = *(v0 + 200);
    v17 = *(v0 + 208);
    v18 = *(v0 + 176);
    (*(v0 + 688))(v17, *(v0 + 160), v18);
    (*v10)(v16, v17, v18);
    v14 = sub_10043422C;
  }

  return _swift_task_switch(v14, 0, 0);
}

uint64_t sub_10043422C()
{
  v1 = v0[25];
  v2 = v0[19];
  v3 = v0[12];
  v4 = v0[13];
  *v2 = 2;
  v5 = *(v4 + 20);
  v6 = enum case for LocalUserNotificationCategory.peopleFindingSessionStarted(_:);
  v7 = type metadata accessor for LocalUserNotificationCategory();
  (*(*(v7 - 8) + 104))(&v2[v5], v6, v7);
  v8 = &v2[*(v4 + 24)];
  UUID.init()();
  Friend.handle.getter();
  LOBYTE(v6) = Handle.isPhoneNumber.getter();
  Handle.identifier.getter();
  v9 = v0[8];
  if (v6)
  {
    Destination.init(phoneNumber:)();
  }

  else
  {
    Destination.init(email:)();
  }

  (*(v0[10] + 8))(v0[12], v0[9]);
  v10 = swift_task_alloc();
  v0[93] = v10;
  *v10 = v0;
  v10[1] = sub_100434380;
  v11 = v0[8];

  return sub_1004559B4(1);
}

uint64_t sub_100434380(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 744);
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 40);
  v9 = *v2;
  *(v3 + 752) = a1;
  *(v3 + 760) = a2;

  (*(v6 + 8))(v5, v7);

  return _swift_task_switch(sub_1004344E4, 0, 0);
}

uint64_t sub_1004344E4()
{
  v1 = v0[95];
  v2 = v0[87];
  v3 = v0[86];
  v4 = v0[25];
  v5 = v0[22];
  v6 = v0[19];
  v7 = v0[13];
  v8 = v0[3];
  v9 = (v6 + *(v7 + 28));
  *v9 = v0[94];
  v9[1] = v1;
  v3(v6 + *(v7 + 32), v4, v5);

  return _swift_task_switch(sub_100434580, v8, 0);
}

uint64_t sub_100434580()
{
  v23 = v0;
  (*(v0[23] + 8))(v0[26], v0[22]);
  v1 = v0[83];
  v2 = v0[19];
  v3 = v0[17];
  sub_10044AC80(v2, v0[18], type metadata accessor for RedStripeNotification);
  sub_10044AC80(v2, v3, type metadata accessor for RedStripeNotification);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[17];
  v8 = v0[18];
  if (v6)
  {
    v21 = v0[16];
    v9 = v0[13];
    v10 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v11 = (v8 + *(v9 + 28));
    v13 = *v11;
    v12 = v11[1];

    sub_10044ACE8(v8, type metadata accessor for RedStripeNotification);
    v14 = sub_10000D01C(v13, v12, &v22);

    *(v10 + 14) = v14;
    *(v10 + 22) = 2080;
    sub_10044AC80(v7, v21, type metadata accessor for RedStripeNotification);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    sub_10044ACE8(v7, type metadata accessor for RedStripeNotification);
    v18 = sub_10000D01C(v15, v17, &v22);

    *(v10 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{private,mask.hash}s is trying to find you. %s", v10, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10044ACE8(v7, type metadata accessor for RedStripeNotification);
    sub_10044ACE8(v8, type metadata accessor for RedStripeNotification);
  }

  v19 = v0[91];

  return _swift_task_switch(sub_100434DF8, v19, 0);
}

uint64_t sub_10043481C()
{
  v1 = v0[24];
  v2 = v0[19];
  v3 = v0[13];
  v4 = v0[11];
  *v2 = 2;
  v5 = *(v3 + 20);
  v6 = enum case for LocalUserNotificationCategory.peopleFindingSessionStarted(_:);
  v7 = type metadata accessor for LocalUserNotificationCategory();
  (*(*(v7 - 8) + 104))(&v2[v5], v6, v7);
  v8 = &v2[*(v3 + 24)];
  UUID.init()();
  Friend.handle.getter();
  LOBYTE(v6) = Handle.isPhoneNumber.getter();
  Handle.identifier.getter();
  v9 = v0[7];
  if (v6)
  {
    Destination.init(phoneNumber:)();
  }

  else
  {
    Destination.init(email:)();
  }

  (*(v0[10] + 8))(v0[11], v0[9]);
  v10 = swift_task_alloc();
  v0[96] = v10;
  *v10 = v0;
  v10[1] = sub_100434974;
  v11 = v0[7];

  return sub_1004559B4(1);
}

uint64_t sub_100434974(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 768);
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 40);
  v9 = *v2;
  *(v3 + 776) = a1;
  *(v3 + 784) = a2;

  (*(v6 + 8))(v5, v7);

  return _swift_task_switch(sub_100434AD8, 0, 0);
}

uint64_t sub_100434AD8()
{
  v1 = v0[98];
  v2 = v0[87];
  v3 = v0[86];
  v4 = v0[24];
  v5 = v0[22];
  v6 = v0[19];
  v7 = v0[13];
  v8 = v0[3];
  v9 = (v6 + *(v7 + 28));
  *v9 = v0[97];
  v9[1] = v1;
  v3(v6 + *(v7 + 32), v4, v5);

  return _swift_task_switch(sub_100434B74, v8, 0);
}

uint64_t sub_100434B74()
{
  v23 = v0;
  v1 = v0[83];
  v2 = v0[19];
  v3 = v0[17];
  sub_10044AC80(v2, v0[18], type metadata accessor for RedStripeNotification);
  sub_10044AC80(v2, v3, type metadata accessor for RedStripeNotification);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[17];
  v8 = v0[18];
  if (v6)
  {
    v21 = v0[16];
    v9 = v0[13];
    v10 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v11 = (v8 + *(v9 + 28));
    v13 = *v11;
    v12 = v11[1];

    sub_10044ACE8(v8, type metadata accessor for RedStripeNotification);
    v14 = sub_10000D01C(v13, v12, &v22);

    *(v10 + 14) = v14;
    *(v10 + 22) = 2080;
    sub_10044AC80(v7, v21, type metadata accessor for RedStripeNotification);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    sub_10044ACE8(v7, type metadata accessor for RedStripeNotification);
    v18 = sub_10000D01C(v15, v17, &v22);

    *(v10 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{private,mask.hash}s is trying to find you. %s", v10, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10044ACE8(v7, type metadata accessor for RedStripeNotification);
    sub_10044ACE8(v8, type metadata accessor for RedStripeNotification);
  }

  v19 = v0[91];

  return _swift_task_switch(sub_100434DF8, v19, 0);
}

uint64_t sub_100434DF8()
{
  sub_10044AC80(v0[19], v0[15], type metadata accessor for RedStripeNotification);
  if (qword_1005A8598 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[3];
  sub_10044AC80(v1, v2, type metadata accessor for RedStripeNotification);
  v5 = *v2;
  v6 = objc_allocWithZone(UNUserNotificationCenter);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 initWithBundleIdentifier:v7];

  v9 = sub_100292D94(v2);
  v10 = &v2[*(v3 + 24)];
  UUID.uuidString.getter();
  v11 = v9;
  v12 = String._bridgeToObjectiveC()();

  v13 = [objc_opt_self() requestWithIdentifier:v12 content:v11 trigger:0 destinations:7];

  [v8 addNotificationRequest:v13 withCompletionHandler:0];
  sub_10044ACE8(v2, type metadata accessor for RedStripeNotification);
  sub_10044ACE8(v1, type metadata accessor for RedStripeNotification);

  return _swift_task_switch(sub_100435030, v4, 0);
}

uint64_t sub_100435030()
{
  v1 = v0[91];
  v38 = v0[82];
  v2 = v0[81];
  v3 = v0[75];
  v4 = v0[55];
  v46 = v0[49];
  v5 = v0[42];
  v36 = v0[43];
  v6 = v0[41];
  v7 = v0[39];
  v8 = v0[36];
  v44 = v0[27];
  v9 = v0[23];
  v40 = v0[34];
  v42 = v0[22];
  v10 = v0[19];

  sub_10044ACE8(v10, type metadata accessor for RedStripeNotification);
  v2(v7, v8);
  (*(v5 + 8))(v36, v6);
  sub_10044ACE8(v40, type metadata accessor for DiscoveryToken);
  (*(v9 + 8))(v44, v42);
  sub_10044ACE8(v46, type metadata accessor for FriendSharedSecretsRecord);
  v12 = v0[48];
  v11 = v0[49];
  v14 = v0[46];
  v13 = v0[47];
  v15 = v0[43];
  v17 = v0[39];
  v16 = v0[40];
  v18 = v0[38];
  v19 = v0[34];
  v20 = v0[35];
  v23 = v0[33];
  v24 = v0[30];
  v25 = v0[29];
  v26 = v0[27];
  v27 = v0[26];
  v28 = v0[25];
  v29 = v0[24];
  v30 = v0[21];
  v31 = v0[20];
  v32 = v0[19];
  v33 = v0[18];
  v34 = v0[17];
  v35 = v0[16];
  v37 = v0[15];
  v39 = v0[14];
  v41 = v0[12];
  v43 = v0[11];
  v45 = v0[8];
  v47 = v0[7];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1004352E8()
{
  v43 = v0;
  v1 = v0[51];

  v2 = v0[56];
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0C30);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v42 = v7;
    *v6 = 136446210;
    v0[2] = v2;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v42);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "handleRangingStartedNotification error: %{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  else
  {
  }

  v12 = v0[48];
  v11 = v0[49];
  v14 = v0[46];
  v13 = v0[47];
  v15 = v0[43];
  v17 = v0[39];
  v16 = v0[40];
  v18 = v0[38];
  v19 = v0[34];
  v20 = v0[35];
  v23 = v0[33];
  v24 = v0[30];
  v25 = v0[29];
  v26 = v0[27];
  v27 = v0[26];
  v28 = v0[25];
  v29 = v0[24];
  v30 = v0[21];
  v31 = v0[20];
  v32 = v0[19];
  v33 = v0[18];
  v34 = v0[17];
  v35 = v0[16];
  v36 = v0[15];
  v37 = v0[14];
  v38 = v0[12];
  v39 = v0[11];
  v40 = v0[8];
  v41 = v0[7];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100435614()
{
  v47 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0C30);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No activelyInteractingDiscoveryTokens!", v4, 2u);
  }

  v5 = v0[55];

  sub_1003DA6A0();
  v6 = swift_allocError();
  *v7 = 2;
  swift_willThrow();

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v1, qword_1005E0C30);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v46 = v11;
    *v10 = 136446210;
    v0[2] = v6;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v12 = String.init<A>(describing:)();
    v14 = sub_10000D01C(v12, v13, &v46);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "handleRangingStartedNotification error: %{public}s", v10, 0xCu);
    sub_100004984(v11);
  }

  else
  {
  }

  v16 = v0[48];
  v15 = v0[49];
  v18 = v0[46];
  v17 = v0[47];
  v19 = v0[43];
  v21 = v0[39];
  v20 = v0[40];
  v22 = v0[38];
  v23 = v0[34];
  v24 = v0[35];
  v27 = v0[33];
  v28 = v0[30];
  v29 = v0[29];
  v30 = v0[27];
  v31 = v0[26];
  v32 = v0[25];
  v33 = v0[24];
  v34 = v0[21];
  v35 = v0[20];
  v36 = v0[19];
  v37 = v0[18];
  v38 = v0[17];
  v39 = v0[16];
  v40 = v0[15];
  v41 = v0[14];
  v42 = v0[12];
  v43 = v0[11];
  v44 = v0[8];
  v45 = v0[7];

  v25 = v0[1];

  return v25();
}

uint64_t sub_100435A20()
{
  v47 = v0;
  v1 = v0[73];
  v2 = v0[71];
  v3 = v0[68];
  v4 = v0[59];
  v5 = v0[55];

  v6 = v0[76];
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000A6F0(v7, qword_1005E0C30);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v46 = v11;
    *v10 = 136446210;
    v0[2] = v6;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v12 = String.init<A>(describing:)();
    v14 = sub_10000D01C(v12, v13, &v46);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "handleRangingStartedNotification error: %{public}s", v10, 0xCu);
    sub_100004984(v11);
  }

  else
  {
  }

  v16 = v0[48];
  v15 = v0[49];
  v18 = v0[46];
  v17 = v0[47];
  v19 = v0[43];
  v21 = v0[39];
  v20 = v0[40];
  v22 = v0[38];
  v23 = v0[34];
  v24 = v0[35];
  v27 = v0[33];
  v28 = v0[30];
  v29 = v0[29];
  v30 = v0[27];
  v31 = v0[26];
  v32 = v0[25];
  v33 = v0[24];
  v34 = v0[21];
  v35 = v0[20];
  v36 = v0[19];
  v37 = v0[18];
  v38 = v0[17];
  v39 = v0[16];
  v40 = v0[15];
  v41 = v0[14];
  v42 = v0[12];
  v43 = v0[11];
  v44 = v0[8];
  v45 = v0[7];

  v25 = v0[1];

  return v25();
}

uint64_t sub_100435D7C()
{
  v56 = v0;
  v1 = v0[82];
  v2 = v0[81];
  v3 = v0[75];
  v4 = v0[55];
  v6 = v0[42];
  v5 = v0[43];
  v7 = v0[41];
  v8 = v0[39];
  v9 = v0[36];
  v51 = v0[27];
  v53 = v0[49];
  v10 = v0[23];
  v47 = v0[34];
  v49 = v0[22];

  v2(v8, v9);
  (*(v6 + 8))(v5, v7);
  sub_10044ACE8(v47, type metadata accessor for DiscoveryToken);
  (*(v10 + 8))(v51, v49);
  sub_10044ACE8(v53, type metadata accessor for FriendSharedSecretsRecord);
  v11 = v0[92];
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000A6F0(v12, qword_1005E0C30);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v55 = v16;
    *v15 = 136446210;
    v0[2] = v11;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v17 = String.init<A>(describing:)();
    v19 = sub_10000D01C(v17, v18, &v55);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "handleRangingStartedNotification error: %{public}s", v15, 0xCu);
    sub_100004984(v16);
  }

  else
  {
  }

  v21 = v0[48];
  v20 = v0[49];
  v23 = v0[46];
  v22 = v0[47];
  v24 = v0[43];
  v26 = v0[39];
  v25 = v0[40];
  v27 = v0[38];
  v28 = v0[34];
  v29 = v0[35];
  v32 = v0[33];
  v33 = v0[30];
  v34 = v0[29];
  v35 = v0[27];
  v36 = v0[26];
  v37 = v0[25];
  v38 = v0[24];
  v39 = v0[21];
  v40 = v0[20];
  v41 = v0[19];
  v42 = v0[18];
  v43 = v0[17];
  v44 = v0[16];
  v45 = v0[15];
  v46 = v0[14];
  v48 = v0[12];
  v50 = v0[11];
  v52 = v0[8];
  v54 = v0[7];

  v30 = v0[1];

  return v30();
}

uint64_t sub_100436154()
{
  v1[3] = v0;
  v2 = *(*(sub_10004B564(&qword_1005AA718, &qword_1004C4370) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v1[5] = v4;
  *v4 = v1;
  v4[1] = sub_100436220;

  return daemon.getter();
}

uint64_t sub_100436220(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v12 = *v1;
  v3[6] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[7] = v6;
  v7 = type metadata accessor for Daemon();
  v3[8] = v7;
  v8 = type metadata accessor for AppDeletionService();
  v9 = sub_1000069AC(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[9] = v9;
  v10 = sub_1000069AC(&qword_1005AD540, type metadata accessor for AppDeletionService);
  *v6 = v12;
  v6[1] = sub_100436400;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100436400(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  v4[10] = a1;
  v4[11] = v1;

  if (v1)
  {
    v7 = v4[3];
    v8 = sub_1004374E4;
  }

  else
  {
    v9 = v4[6];

    v8 = sub_100436538;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100436538()
{
  v1 = *(v0 + 24);
  *(v0 + 152) = *(*(v0 + 80) + 137);
  return _swift_task_switch(sub_100436560, v1, 0);
}

uint64_t sub_100436560()
{
  v14 = v0;
  if (*(v0 + 152) == 1)
  {
    v1 = async function pointer to daemon.getter[1];
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_100436770;

    return daemon.getter();
  }

  else
  {
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005E0C30);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 80);
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_10000D01C(0x656C6261646E6966, 0xEE00737574617453, &v13);
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s? Find My app is NOT installed.", v8, 0xCu);
      sub_100004984(v9);
    }

    v10 = *(v0 + 32);

    v11 = *(v0 + 8);

    return v11(2);
  }
}

uint64_t sub_100436770(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v5 = *v1;
  v3[13] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[14] = v7;
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_1000069AC(&qword_1005A90D0, type metadata accessor for DataManager);
  *v7 = v5;
  v7[1] = sub_100436924;
  v10 = v3[9];
  v11 = v3[8];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100436924(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  v4[15] = a1;
  v4[16] = v1;

  if (v1)
  {
    v7 = v4[3];

    return _swift_task_switch(sub_100437708, v7, 0);
  }

  else
  {
    v8 = v4[13];

    v9 = swift_task_alloc();
    v4[17] = v9;
    *v9 = v6;
    v9[1] = sub_100436AB0;
    v10 = v4[4];

    return sub_1001DB14C(v10);
  }
}

uint64_t sub_100436AB0()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return _swift_task_switch(sub_100436BC0, v2, 0);
}

uint64_t sub_100436BC0()
{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for Device();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 24);
  if (v4 == 1)
  {
    sub_100002CE0(v1, &qword_1005AA718, &qword_1004C4370);
    v6 = sub_100436F18;
  }

  else
  {
    *(v0 + 153) = Device.isThisDevice.getter() & 1;
    (*(v3 + 8))(v1, v2);
    v6 = sub_100436CF0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100436CF0()
{
  v15 = v0;
  if (*(v0 + 153) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 144) = v1;
    *v1 = v0;
    v1[1] = sub_1004370C0;
    v2 = *(v0 + 120);

    return sub_1001DBB70();
  }

  else
  {
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005E0C30);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 120);
    v9 = *(v0 + 80);
    if (v7)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_10000D01C(0x656C6261646E6966, 0xEE00737574617453, &v14);
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s? not a me device", v10, 0xCu);
      sub_100004984(v11);
    }

    v12 = *(v0 + 32);

    v13 = *(v0 + 8);

    return v13(1);
  }
}

uint64_t sub_100436F18()
{
  v13 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0C30);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[15];
  v6 = v0[10];
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_10000D01C(0x656C6261646E6966, 0xEE00737574617453, &v12);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s? not a me device", v7, 0xCu);
    sub_100004984(v8);
  }

  v9 = v0[4];

  v10 = v0[1];

  return v10(1);
}

uint64_t sub_1004370C0(char a1)
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 154) = a1;

  return _swift_task_switch(sub_1004371D8, v3, 0);
}

uint64_t sub_1004371D8()
{
  v21 = v0;
  if (*(v0 + 154) == 1)
  {
    v1 = *(v0 + 120);
    v2 = *(v0 + 80);

    if ([objc_opt_self() locationServicesEnabled])
    {
      v3 = 0;
    }

    else
    {
      if (qword_1005A8530 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_10000A6F0(v12, qword_1005E0C30);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v20 = v16;
        *v15 = 136446210;
        *(v15 + 4) = sub_10000D01C(0x656C6261646E6966, 0xEE00737574617453, &v20);
        _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s? location services disabled", v15, 0xCu);
        sub_100004984(v16);
      }

      v3 = 4;
    }
  }

  else
  {
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005E0C30);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 120);
    v9 = *(v0 + 80);
    if (v7)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_10000D01C(0x656C6261646E6966, 0xEE00737574617453, &v20);
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s? share my location disabled", v10, 0xCu);
      sub_100004984(v11);
    }

    v3 = 3;
  }

  v17 = *(v0 + 32);

  v18 = *(v0 + 8);

  return v18(v3);
}

uint64_t sub_1004374E4()
{
  v14 = v0;
  v1 = v0[11];
  v2 = v0[6];

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0C30);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0x656C6261646E6966, 0xEE00737574617453, &v13);
    *(v6 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v13);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s error %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v10 = v0[4];

  v11 = v0[1];

  return v11(5);
}

uint64_t sub_100437708()
{
  v15 = v0;
  v1 = v0[10];

  v2 = v0[16];
  v3 = v0[13];

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A6F0(v4, qword_1005E0C30);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_10000D01C(0x656C6261646E6966, 0xEE00737574617453, &v14);
    *(v7 + 12) = 2082;
    v0[2] = v2;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v14);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s error %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v11 = v0[4];

  v12 = v0[1];

  return v12(5);
}

uint64_t sub_100437934(uint64_t a1, uint64_t a2, void *a3)
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
    sub_1002414A8();
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_100437A14(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  return _swift_task_switch(sub_100437A5C, v1, 0);
}

uint64_t sub_100437A5C()
{
  v36 = v0;
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_1000069AC(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy);
  v2 = sub_10000331C(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.redStripe(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100004984(v0 + 2);
  if (My)
  {
    if (sub_1003F399C())
    {
      if (qword_1005A8530 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_10000A6F0(v3, qword_1005E0C30);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v35 = v7;
        *v6 = 136446210;
        *(v6 + 4) = sub_10000D01C(0xD000000000000023, 0x80000001004EA560, &v35);
        _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s", v6, 0xCu);
        sub_100004984(v7);
      }

      else
      {
      }

      v27 = v0[8];
      v28 = v0[9];
      v29 = sub_1000069AC(&qword_1005B3700, type metadata accessor for NITokenService);
      v30 = swift_task_alloc();
      v0[10] = v30;
      *(v30 + 16) = v27;
      *(v30 + 24) = v28;
      v31 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
      v32 = swift_task_alloc();
      v0[11] = v32;
      v33 = sub_10004B564(&qword_1005B1C88, &qword_1004D5E68);
      *v32 = v0;
      v32[1] = sub_1004380C8;
      v34 = v0[7];

      return withCheckedContinuation<A>(isolation:function:_:)(v34, v27, v29, 0xD000000000000023, 0x80000001004EA560, sub_10044A1FC, v30, v33);
    }

    else
    {
      if (qword_1005A8530 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_10000A6F0(v17, qword_1005E0C30);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v35 = v21;
        *v20 = 136446210;
        *(v20 + 4) = sub_10000D01C(0xD000000000000023, 0x80000001004EA560, &v35);
        _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s isFindingCapable == false.", v20, 0xCu);
        sub_100004984(v21);
      }

      v22 = v0[9];
      sub_1003DA6A0();
      v23 = swift_allocError();
      v0[12] = v23;
      *v24 = 20;
      v25 = sub_100209E2C(_swiftEmptyArrayStorage);
      v0[13] = v25;
      v26 = swift_task_alloc();
      v0[14] = v26;
      *v26 = v0;
      v26[1] = sub_1004381D8;

      return sub_100402934(0xD00000000000003BLL, 0x80000001004EA590, v23, v25);
    }
  }

  else
  {
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A6F0(v8, qword_1005E0C30);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v35 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_10000D01C(0xD000000000000023, 0x80000001004EA560, &v35);
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s Feature.FindMy.redStripe FF disabled.", v11, 0xCu);
      sub_100004984(v12);
    }

    v13 = v0[7];
    v14 = type metadata accessor for OwnerSharedSecretsRecord();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1004380C8()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1004381D8()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 64);
  v6 = *v0;

  return _swift_task_switch(sub_100438328, v4, 0);
}

uint64_t sub_100438328()
{
  v1 = *(v0 + 56);
  v2 = type metadata accessor for OwnerSharedSecretsRecord();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1004383C4()
{
  v1[4] = v0;
  v2 = type metadata accessor for Date();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_100438484, v0, 0);
}

uint64_t sub_100438484()
{
  v12 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[8] = sub_10000A6F0(v1, qword_1005E0C30);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004EA700, &v11);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = v0[7];
  v0[2] = _swiftEmptyArrayStorage;
  static ReferenceClock.now.getter();
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_100438650;
  v8 = v0[7];
  v9 = v0[4];

  return sub_100403F98();
}

uint64_t sub_100438650(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 56);
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 40);
  v9 = *v2;
  *(v4 + 80) = a1;
  *(v4 + 88) = v1;

  (*(v7 + 8))(v6, v8);
  v10 = *(v3 + 32);
  if (v1)
  {
    v11 = sub_100438D68;
  }

  else
  {
    v11 = sub_1004387E0;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_1004387E0()
{
  v1 = v0[10];
  if (v1)
  {
    v2 = v0[8];
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[10];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138543362;
      *(v7 + 4) = v3;
      *v8 = v6;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, v5, "Setting owner token: %{public}@", v7, 0xCu);
      sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);
    }

    v10 = v3;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v15 = *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v11 = v0[2];
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = swift_allocObject();
  v0[12] = v12;
  *(v12 + 16) = v11;
  v13 = swift_task_alloc();
  v0[13] = v13;
  *v13 = v0;
  v13[1] = sub_100438A0C;

  return sub_100430774();
}

uint64_t sub_100438A0C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  v5 = *(v2 + 96);
  v6 = *(v2 + 32);
  if (v0)
  {

    v7 = sub_10044ADE0;
  }

  else
  {

    v7 = sub_100438B68;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100438B68()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_100438BF8;
  v2 = *(v0 + 32);

  return sub_10044D898();
}

uint64_t sub_100438BF8()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_100438D08, v2, 0);
}

uint64_t sub_100438D08()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100438D68()
{
  v15 = v0;
  v1 = v0[11];
  v2 = v0[8];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[11];
    v6 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004EA700, &v14);
    *(v6 + 12) = 2082;
    v0[3] = v5;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v14);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s error %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v10 = v0[11];
  }

  v11 = swift_allocObject();
  v0[12] = v11;
  *(v11 + 16) = _swiftEmptyArrayStorage;
  v12 = swift_task_alloc();
  v0[13] = v12;
  *v12 = v0;
  v12[1] = sub_100438A0C;

  return sub_100430774(sub_100430774, &unk_1004D8CB0, v11);
}

void sub_100438FC0()
{
  v1 = *v0;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A6F0(v4, qword_1005E0C30);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004EA660, v18);
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s", v7, 0xCu);
    sub_100004984(v8);
  }

  My = type metadata accessor for Feature.FindMy();
  v18[3] = My;
  v18[4] = sub_1000069AC(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy);
  v10 = sub_10000331C(v18);
  (*(*(My - 8) + 104))(v10, enum case for Feature.FindMy.redStripe(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100004984(v18);
  if (My)
  {
    if (sub_1003F399C())
    {
      v11 = v0[16];
      type metadata accessor for WorkItemQueue.WorkItem();
      v12 = swift_allocObject();
      *(v12 + 16) = v0;
      *(v12 + 24) = v1;

      UUID.init()();
      WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
      dispatch thunk of WorkItemQueue.enqueue(_:)();

      return;
    }

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18[0] = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004EA660, v18);
      v17 = "%{public}s isFindingCapable == false.";
      goto LABEL_12;
    }
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18[0] = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004EA660, v18);
      v17 = "%{public}s Feature.FindMy.redStripe FF disabled.";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v13, v14, v17, v15, 0xCu);
      sub_100004984(v16);
    }
  }
}

uint64_t sub_1004393F8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for Date();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1004394B8, v1, 0);
}

uint64_t sub_1004394B8()
{
  v12 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[8] = sub_10000A6F0(v1, qword_1005E0C30);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000025, 0x80000001004EA720, &v11);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = v0[7];
  static ReferenceClock.now.getter();
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_100439678;
  v8 = v0[7];
  v9 = v0[4];

  return sub_100403F98();
}

uint64_t sub_100439678(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 56);
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 40);
  v9 = *v2;
  *(v4 + 80) = a1;
  *(v4 + 88) = v1;

  (*(v7 + 8))(v6, v8);
  v10 = *(v3 + 32);
  if (v1)
  {
    v11 = sub_1004399E4;
  }

  else
  {
    v11 = sub_100439808;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_100439808()
{
  v16 = v0;
  v1 = *(v0 + 80);
  if (!v1)
  {
    v7 = *(v0 + 64);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_10000D01C(0xD000000000000025, 0x80000001004EA720, &v15);
      _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s missing owner token!", v10, 0xCu);
      sub_100004984(v11);
    }

    goto LABEL_10;
  }

  if ((sub_10021B89C(*(v0 + 80), *(v0 + 24)) & 1) == 0)
  {

LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  v2 = *(v0 + 64);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Owner ranging is active.", v5, 2u);
  }

  v6 = 1;
LABEL_11:
  v12 = *(v0 + 56);

  v13 = *(v0 + 8);

  return v13(v6);
}

uint64_t sub_1004399E4()
{
  v15 = v0;
  v1 = v0[11];
  v2 = v0[8];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[11];
    v6 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD000000000000025, 0x80000001004EA720, &v14);
    *(v6 + 12) = 2082;
    v0[2] = v5;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v14);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s error %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v10 = v0[11];
  }

  v11 = v0[7];

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_100439BE0()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100439D08;
  v2 = swift_continuation_init();
  v0[17] = sub_10004B564(&qword_1005B3B68, &qword_1004D8C70);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100437934;
  v0[13] = &unk_10059C428;
  v0[14] = v2;
  [v1 getAsyncActivelyInteractingDiscoveryTokens:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100439D08()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_10044ADEC;
  }

  else
  {
    v3 = sub_10044ADF0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100439E18(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v41 = type metadata accessor for UUID();
  v2 = *(v41 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v41);
  v40 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004B564(&qword_1005B0B70, &qword_1004D6B30);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v9 = &v40 - v8;
  v10 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v43 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v40 - v15;
  __chkstk_darwin(v14);
  v18 = &v40 - v17;
  v19 = type metadata accessor for Handle();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  Friend.handle.getter();
  Handle.peerID.getter();
  v24 = v18;
  (*(v20 + 8))(v23, v19);
  v25 = v41;
  (*(v2 + 16))(v16, v42, v41);
  (*(v2 + 56))(v16, 0, 1, v25);
  v26 = *(v6 + 56);
  sub_100005F04(v24, v9, &qword_1005A96E0, &qword_1004C2A80);
  sub_100005F04(v16, &v9[v26], &qword_1005A96E0, &qword_1004C2A80);
  v27 = v2;
  v28 = v2;
  v29 = v9;
  v30 = v25;
  v31 = *(v28 + 48);
  if (v31(v29, 1, v25) != 1)
  {
    v42 = v24;
    sub_100005F04(v29, v43, &qword_1005A96E0, &qword_1004C2A80);
    if (v31(v29 + v26, 1, v25) != 1)
    {
      v33 = v29;
      v34 = v27;
      v35 = v33 + v26;
      v36 = v40;
      (*(v27 + 32))(v40, v35, v30);
      sub_1000069AC(&qword_1005A9FC8, &type metadata accessor for UUID);
      v37 = v43;
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      v38 = *(v34 + 8);
      v38(v36, v30);
      sub_100002CE0(v16, &qword_1005A96E0, &qword_1004C2A80);
      sub_100002CE0(v42, &qword_1005A96E0, &qword_1004C2A80);
      v38(v37, v30);
      sub_100002CE0(v33, &qword_1005A96E0, &qword_1004C2A80);
      return v32 & 1;
    }

    sub_100002CE0(v16, &qword_1005A96E0, &qword_1004C2A80);
    sub_100002CE0(v42, &qword_1005A96E0, &qword_1004C2A80);
    (*(v27 + 8))(v43, v25);
    goto LABEL_6;
  }

  sub_100002CE0(v16, &qword_1005A96E0, &qword_1004C2A80);
  sub_100002CE0(v24, &qword_1005A96E0, &qword_1004C2A80);
  if (v31(v29 + v26, 1, v25) != 1)
  {
LABEL_6:
    sub_100002CE0(v29, &qword_1005B0B70, &qword_1004D6B30);
    v32 = 0;
    return v32 & 1;
  }

  sub_100002CE0(v29, &qword_1005A96E0, &qword_1004C2A80);
  v32 = 1;
  return v32 & 1;
}

uint64_t sub_10043A334()
{
  v0 = type metadata accessor for Handle();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v18 - v6;
  Friend.handle.getter();
  v8 = Handle.identifier.getter();
  v10 = v9;
  v11 = *(v1 + 8);
  v11(v7, v0);
  Friend.handle.getter();
  v12 = Handle.identifier.getter();
  v14 = v13;
  v11(v5, v0);
  if (v8 == v12 && v10 == v14)
  {
    v16 = 1;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v16 & 1;
}

uint64_t sub_10043A4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_10004B564(&qword_1005B3B60, &qword_1004D8B88);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v17 - v11;
  v13 = *(a2 + 128);
  type metadata accessor for WorkItemQueue.WorkItem();
  (*(v9 + 16))(v12, a1, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v12, v8);
  *(v15 + ((v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_10043A6AC(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for Date();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = *(*(sub_10004B564(&qword_1005AEB98, &unk_1004D07C0) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v10 = type metadata accessor for SharedSecretKey();
  v2[14] = v10;
  v11 = *(v10 - 8);
  v2[15] = v11;
  v12 = *(v11 + 64) + 15;
  v2[16] = swift_task_alloc();
  v13 = *(*(sub_10004B564(&qword_1005B1C88, &qword_1004D5E68) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v14 = type metadata accessor for OwnerSharedSecretsRecord();
  v2[19] = v14;
  v15 = *(v14 - 8);
  v2[20] = v15;
  v16 = *(v15 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v17 = async function pointer to daemon.getter[1];
  v18 = swift_task_alloc();
  v2[27] = v18;
  *v18 = v2;
  v18[1] = sub_10043A968;

  return daemon.getter();
}

uint64_t sub_10043A968(uint64_t a1)
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
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_1000069AC(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[31] = v9;
  v10 = sub_1000069AC(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_10043AB48;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10043AB48(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 232);
  v6 = *v2;
  v4[32] = a1;
  v4[33] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10043C4EC, 0, 0);
  }

  else
  {
    v7 = v4[28];

    v8 = swift_task_alloc();
    v4[34] = v8;
    *v8 = v6;
    v8[1] = sub_10043ACD4;
    v9 = v4[18];

    return sub_100309F04(v9);
  }
}

uint64_t sub_10043ACD4()
{
  v2 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_10043C5D0;
  }

  else
  {
    v3 = sub_10043ADE8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10043ADE8()
{
  v78 = v0;
  v1 = v0[18];
  if ((*(v0[20] + 48))(v1, 1, v0[19]) == 1)
  {
    v2 = v0[14];
    v3 = v0[15];
    v4 = v0[13];
    sub_100002CE0(v1, &qword_1005B1C88, &qword_1004D5E68);
    static SharedSecretKey.length.getter();
    static Data.random(bytes:)();
    sub_1000069AC(&qword_1005AEC08, &type metadata accessor for SharedSecretKey);
    KeyRepresenting.init(rawValue:)();
    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      sub_100002CE0(v0[13], &qword_1005AEB98, &unk_1004D07C0);
      if (qword_1005A8530 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_10000A6F0(v5, qword_1005E0C30);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      v8 = os_log_type_enabled(v6, v7);
      v9 = v0[32];
      if (v8)
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v77 = v11;
        *v10 = 136446210;
        *(v10 + 4) = sub_10000D01C(0xD000000000000023, 0x80000001004EA560, &v77);
        _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s Unable to generate SharedSecretKey!", v10, 0xCu);
        sub_100004984(v11);
      }

      v13 = v0[25];
      v12 = v0[26];
      v15 = v0[23];
      v14 = v0[24];
      v17 = v0[21];
      v16 = v0[22];
      v19 = v0[17];
      v18 = v0[18];
      v20 = v0[16];
      v21 = v0[13];
      v73 = v0[12];
      v75 = v0[9];

      v22 = v0[1];

      return v22();
    }

    else
    {
      v39 = v0[22];
      v40 = v0[19];
      v41 = v0[15];
      v42 = v0[13];
      v43 = v0[11];
      v44 = v0[12];
      v72 = v0[10];
      v74 = v0[16];
      v70 = v0[9];
      v71 = v0[14];
      v45 = v0[8];
      v76 = v0[7];
      (*(v41 + 32))();
      sub_1004B93E4();
      v46 = String.utf8Data.getter();
      v48 = v47;

      v0[2] = v46;
      v0[3] = v48;
      sub_1000CA210();
      DataProtocol.stableUUID.getter();
      sub_1000049D0(v46, v48);
      static Date.trustedNow.getter(v70);
      (*(v43 + 16))(v39, v44, v72);
      (*(v41 + 16))(v39 + v40[6], v74, v71);
      (*(v45 + 16))(v39 + v40[7], v70, v76);
      *(v39 + v40[5]) = 1;
      if (qword_1005A8530 != -1)
      {
        swift_once();
      }

      v49 = v0[21];
      v50 = v0[22];
      v51 = type metadata accessor for Logger();
      sub_10000A6F0(v51, qword_1005E0C30);
      sub_10044AC80(v50, v49, type metadata accessor for OwnerSharedSecretsRecord);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = v0[23];
        v55 = v0[21];
        v56 = v0[19];
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v77 = v58;
        *v57 = 136315138;
        sub_10044AC80(v55, v54, type metadata accessor for OwnerSharedSecretsRecord);
        v59 = String.init<A>(describing:)();
        v61 = v60;
        sub_10044ACE8(v55, type metadata accessor for OwnerSharedSecretsRecord);
        v62 = sub_10000D01C(v59, v61, &v77);

        *(v57 + 4) = v62;
        _os_log_impl(&_mh_execute_header, v52, v53, "Creating new OwnerSharedSecretsRecord: %s", v57, 0xCu);
        sub_100004984(v58);
      }

      else
      {
        v66 = v0[21];

        sub_10044ACE8(v66, type metadata accessor for OwnerSharedSecretsRecord);
      }

      v67 = swift_task_alloc();
      v0[36] = v67;
      *v67 = v0;
      v67[1] = sub_10043B6A8;
      v68 = v0[32];
      v69 = v0[22];

      return sub_10030A8A4(v69);
    }
  }

  else
  {
    sub_10044AD48(v1, v0[25], type metadata accessor for OwnerSharedSecretsRecord);
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v24 = v0[24];
    v25 = v0[25];
    v26 = type metadata accessor for Logger();
    sub_10000A6F0(v26, qword_1005E0C30);
    sub_10044AC80(v25, v24, type metadata accessor for OwnerSharedSecretsRecord);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v0[24];
    if (v29)
    {
      v31 = v0[23];
      v32 = v0[19];
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v77 = v34;
      *v33 = 136315138;
      sub_10044AC80(v30, v31, type metadata accessor for OwnerSharedSecretsRecord);
      v35 = String.init<A>(describing:)();
      v37 = v36;
      sub_10044ACE8(v30, type metadata accessor for OwnerSharedSecretsRecord);
      v38 = sub_10000D01C(v35, v37, &v77);

      *(v33 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v27, v28, "Found existing owner record: %s", v33, 0xCu);
      sub_100004984(v34);
    }

    else
    {

      sub_10044ACE8(v30, type metadata accessor for OwnerSharedSecretsRecord);
    }

    sub_10044AD48(v0[25], v0[26], type metadata accessor for OwnerSharedSecretsRecord);
    v63 = sub_100209E2C(_swiftEmptyArrayStorage);
    v0[44] = v63;
    v64 = swift_task_alloc();
    v0[45] = v64;
    *v64 = v0;
    v64[1] = sub_10043BE40;
    v65 = v0[6];

    return sub_100402934(0xD00000000000003BLL, 0x80000001004EA590, 0, v63);
  }
}

uint64_t sub_10043B6A8()
{
  v2 = (*v1)[36];
  v3 = *v1;
  v3[37] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10043C6B4, 0, 0);
  }

  else
  {
    sub_10044AC80(v3[22], v3[26], type metadata accessor for OwnerSharedSecretsRecord);
    v4 = async function pointer to daemon.getter[1];
    v5 = swift_task_alloc();
    v3[38] = v5;
    *v5 = v3;
    v5[1] = sub_10043B834;

    return daemon.getter();
  }
}

uint64_t sub_10043B834(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 304);
  v5 = *v1;
  v3[39] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[40] = v7;
  v8 = type metadata accessor for NITokenService_LocalMessaging();
  v9 = sub_1000069AC(&qword_1005AD550, type metadata accessor for NITokenService_LocalMessaging);
  *v7 = v5;
  v7[1] = sub_10043B9E8;
  v10 = v3[31];
  v11 = v3[30];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_10043B9E8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 320);
  v6 = *(*v2 + 312);
  v7 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v8 = sub_10043C830;
    v9 = 0;
  }

  else
  {
    *(v4 + 336) = a1;
    v8 = sub_10043BB40;
    v9 = a1;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_10043BB40()
{
  sub_10040231C();
  v1 = swift_task_alloc();
  *(v0 + 344) = v1;
  *v1 = v0;
  v1[1] = sub_10043BBD8;
  v2 = *(v0 + 336);

  return sub_1003F54F4(0);
}

uint64_t sub_10043BBD8()
{
  v1 = *(*v0 + 344);
  v3 = *v0;

  return _swift_task_switch(sub_10043BCD4, 0, 0);
}

uint64_t sub_10043BCD4()
{
  v1 = v0[42];
  v2 = v0[22];
  v3 = v0[15];
  v15 = v0[16];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v8 = v0[9];
  v7 = v0[10];
  v10 = v0[7];
  v9 = v0[8];

  sub_10044ACE8(v2, type metadata accessor for OwnerSharedSecretsRecord);
  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v15, v4);
  v11 = sub_100209E2C(_swiftEmptyArrayStorage);
  v0[44] = v11;
  v12 = swift_task_alloc();
  v0[45] = v12;
  *v12 = v0;
  v12[1] = sub_10043BE40;
  v13 = v0[6];

  return sub_100402934(0xD00000000000003BLL, 0x80000001004EA590, 0, v11);
}

uint64_t sub_10043BE40()
{
  v1 = *(*v0 + 360);
  v2 = *(*v0 + 352);
  v4 = *v0;

  return _swift_task_switch(sub_10043BF58, 0, 0);
}

uint64_t sub_10043BF58()
{
  v1 = v0[32];
  v2 = v0[26];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[17];
  v6 = v0[5];
  sub_10044AC80(v2, v5, type metadata accessor for OwnerSharedSecretsRecord);
  (*(v4 + 56))(v5, 0, 1, v3);
  sub_10004B564(&qword_1005B3B60, &qword_1004D8B88);
  CheckedContinuation.resume(returning:)();

  sub_10044ACE8(v2, type metadata accessor for OwnerSharedSecretsRecord);
  v8 = v0[25];
  v7 = v0[26];
  v10 = v0[23];
  v9 = v0[24];
  v12 = v0[21];
  v11 = v0[22];
  v14 = v0[17];
  v13 = v0[18];
  v15 = v0[16];
  v16 = v0[13];
  v19 = v0[12];
  v20 = v0[9];

  v17 = v0[1];

  return v17();
}

uint64_t sub_10043C0E8()
{
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 376);
  v3 = *(*v0 + 368);
  v5 = *v0;

  return _swift_task_switch(sub_10043C21C, 0, 0);
}

uint64_t sub_10043C21C()
{
  v27 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = v0[46];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0C30);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[46];
    v6 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD000000000000023, 0x80000001004EA560, &v26);
    *(v6 + 12) = 2082;
    v0[4] = v5;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v26);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s error %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v0[46];
  v11 = v0[5];
  (*(v0[20] + 56))(v0[17], 1, 1, v0[19]);
  sub_10004B564(&qword_1005B3B60, &qword_1004D8B88);
  CheckedContinuation.resume(returning:)();

  v13 = v0[25];
  v12 = v0[26];
  v15 = v0[23];
  v14 = v0[24];
  v17 = v0[21];
  v16 = v0[22];
  v19 = v0[17];
  v18 = v0[18];
  v20 = v0[16];
  v21 = v0[13];
  v24 = v0[12];
  v25 = v0[9];

  v22 = v0[1];

  return v22();
}

uint64_t sub_10043C4EC()
{
  v1 = v0[28];

  v2 = v0[33];
  v0[46] = v2;
  swift_errorRetain();
  v3 = sub_100209E2C(_swiftEmptyArrayStorage);
  v0[47] = v3;
  v4 = swift_task_alloc();
  v0[48] = v4;
  *v4 = v0;
  v4[1] = sub_10043C0E8;
  v5 = v0[6];

  return sub_100402934(0xD00000000000003BLL, 0x80000001004EA590, v2, v3);
}

uint64_t sub_10043C5D0()
{
  v1 = v0[32];

  v2 = v0[35];
  v0[46] = v2;
  swift_errorRetain();
  v3 = sub_100209E2C(_swiftEmptyArrayStorage);
  v0[47] = v3;
  v4 = swift_task_alloc();
  v0[48] = v4;
  *v4 = v0;
  v4[1] = sub_10043C0E8;
  v5 = v0[6];

  return sub_100402934(0xD00000000000003BLL, 0x80000001004EA590, v2, v3);
}

uint64_t sub_10043C6B4()
{
  v1 = v0[32];
  v2 = v0[22];
  v3 = v0[15];
  v16 = v0[16];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v8 = v0[9];
  v7 = v0[10];
  v10 = v0[7];
  v9 = v0[8];

  sub_10044ACE8(v2, type metadata accessor for OwnerSharedSecretsRecord);
  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v16, v4);
  v11 = v0[37];
  v0[46] = v11;
  swift_errorRetain();
  v12 = sub_100209E2C(_swiftEmptyArrayStorage);
  v0[47] = v12;
  v13 = swift_task_alloc();
  v0[48] = v13;
  *v13 = v0;
  v13[1] = sub_10043C0E8;
  v14 = v0[6];

  return sub_100402934(0xD00000000000003BLL, 0x80000001004EA590, v11, v12);
}

uint64_t sub_10043C830()
{
  v1 = v0[32];
  v2 = v0[22];
  v3 = v0[15];
  v16 = v0[16];
  v17 = v0[26];
  v15 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  v9 = v0[7];
  v8 = v0[8];

  sub_10044ACE8(v2, type metadata accessor for OwnerSharedSecretsRecord);
  (*(v8 + 8))(v7, v9);
  (*(v4 + 8))(v5, v6);
  (*(v3 + 8))(v16, v15);
  sub_10044ACE8(v17, type metadata accessor for OwnerSharedSecretsRecord);
  v10 = v0[41];
  v0[46] = v10;
  swift_errorRetain();
  v11 = sub_100209E2C(_swiftEmptyArrayStorage);
  v0[47] = v11;
  v12 = swift_task_alloc();
  v0[48] = v12;
  *v12 = v0;
  v12[1] = sub_10043C0E8;
  v13 = v0[6];

  return sub_100402934(0xD00000000000003BLL, 0x80000001004EA590, v10, v11);
}

uint64_t sub_10043C9C0(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  v3 = type metadata accessor for DiscoveryToken(0);
  v2[24] = v3;
  v4 = *(v3 - 8);
  v2[25] = v4;
  v5 = *(v4 + 64) + 15;
  v2[26] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v2[27] = v6;
  v7 = *(v6 - 8);
  v2[28] = v7;
  v8 = *(v7 + 64) + 15;
  v2[29] = swift_task_alloc();

  return _swift_task_switch(sub_10043CADC, 0, 0);
}

uint64_t sub_10043CADC()
{
  v1 = v0[29];
  v0[20] = _swiftEmptyArrayStorage;
  static ReferenceClock.now.getter();
  v2 = swift_task_alloc();
  v0[30] = v2;
  *v2 = v0;
  v2[1] = sub_10043CB88;
  v3 = v0[29];
  v4 = v0[22];

  return sub_100403F98();
}

uint64_t sub_10043CB88(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 240);
  v5 = *(*v2 + 232);
  v6 = *(*v2 + 224);
  v7 = *(*v2 + 216);
  v10 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v8 = sub_10043ECF8;
  }

  else
  {
    v8 = sub_10043CCFC;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10043CCFC()
{
  v1 = v0[31];
  if (v1)
  {
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005E0C30);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[31];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138543362;
      *(v7 + 4) = v3;
      *v8 = v6;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, v5, "Setting owner token: %{public}@", v7, 0xCu);
      sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);
    }

    v10 = v3;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v0[20] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[20] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v15 = *((v0[20] & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v11 = v0[20];
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v0[33] = v11;
  v12 = swift_task_alloc();
  v0[34] = v12;
  *v12 = v0;
  v12[1] = sub_10043CF24;
  v13 = v0[22];

  return sub_100436154();
}

uint64_t sub_10043CF24(char a1)
{
  v2 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 458) = a1;

  return _swift_task_switch(sub_10043D024, 0, 0);
}

uint64_t sub_10043D024()
{
  v18 = v0;
  if (*(v0 + 458) > 2u || *(v0 + 458))
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v1 & 1) == 0)
    {
      if (qword_1005A8530 != -1)
      {
        swift_once();
      }

      v2 = *(v0 + 264);
      v3 = type metadata accessor for Logger();
      *(v0 + 376) = sub_10000A6F0(v3, qword_1005E0C30);

      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = *(v0 + 264);
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v17 = v8;
        *v7 = 136446466;
        *(v7 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004EA660, &v17);
        *(v7 + 12) = 1024;
        if (v6 >> 62)
        {
          if (*(v0 + 264) < 0)
          {
            v16 = *(v0 + 264);
          }

          v9 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v7 + 14) = v9 != 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s should not include friend tokens. Start beaconing owner token? %{BOOL}d", v7, 0x12u);
        sub_100004984(v8);
      }

      v10 = *(v0 + 264);
      v11 = swift_allocObject();
      *(v0 + 384) = v11;
      *(v11 + 16) = v10;
      v12 = swift_task_alloc();
      *(v0 + 392) = v12;
      *v12 = v0;
      v12[1] = sub_10043E1BC;

      return sub_100430774(sub_100430774, &unk_1004D8C30, v11);
    }
  }

  else
  {
  }

  v14 = swift_task_alloc();
  *(v0 + 280) = v14;
  *v14 = v0;
  v14[1] = sub_10043D3AC;
  v15 = *(v0 + 176);

  return sub_10043F744();
}

uint64_t sub_10043D3AC(uint64_t a1)
{
  v2 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = a1;

  return _swift_task_switch(sub_10043D4AC, 0, 0);
}

uint64_t sub_10043D4AC()
{
  v29 = v0;
  v1 = v0[36];
  v2 = *(v1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = v0[25];
    v28 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    do
    {
      v7 = v0[26];
      sub_10044AC80(v5, v7, type metadata accessor for DiscoveryToken);
      v8 = *v7;
      sub_10044ACE8(v7, type metadata accessor for DiscoveryToken);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v9 = v28[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v5 += v6;
      --v2;
    }

    while (v2);
    v3 = v28;
  }

  sub_100249664(v3);
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v10 = v0[36];
  v11 = type metadata accessor for Logger();
  v0[37] = sub_10000A6F0(v11, qword_1005E0C30);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[36];
  if (v14)
  {
    v16 = v0[24];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 134218242;
    *(v17 + 4) = *(v1 + 16);

    *(v17 + 12) = 2082;
    v19 = Array.description.getter();
    v21 = v20;

    v22 = sub_10000D01C(v19, v21, &v28);

    *(v17 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "Setting friends tokens[%ld]: %{public}s", v17, 0x16u);
    sub_100004984(v18);
  }

  else
  {
    v23 = v0[36];
    swift_bridgeObjectRelease_n();
  }

  v24 = v0[20];
  v0[38] = v24;
  v25 = swift_allocObject();
  v0[39] = v25;
  *(v25 + 16) = v24;

  v26 = swift_task_alloc();
  v0[40] = v26;
  *v26 = v0;
  v26[1] = sub_10043D7EC;

  return sub_100430774(sub_100430774, &unk_1004D8C60, v25);
}

uint64_t sub_10043D7EC()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *(*v1 + 312);
  v8 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v5 = *(v2 + 304);

    v6 = sub_10043EF18;
  }

  else
  {
    v6 = sub_10043D92C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10043D92C()
{
  v1 = swift_task_alloc();
  *(v0 + 336) = v1;
  *v1 = v0;
  v1[1] = sub_10043D9E4;

  return sub_1004301F4(&unk_1004D8C68, 0);
}

uint64_t sub_10043D9E4(uint64_t a1)
{
  v3 = *(*v2 + 336);
  v6 = *v2;
  *(*v2 + 344) = a1;

  if (v1)
  {

    v4 = sub_10043DB00;
  }

  else
  {
    v4 = sub_10043DC28;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10043DB00()
{
  v1 = v0[38];
  if (v1 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
    v12 = v0[38];

    if (!v11)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v2)
    {
      goto LABEL_6;
    }
  }

  v3 = v0[37];
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "interactableDiscoveryTokens is unexpectedly empty!", v6, 2u);
  }

LABEL_6:
  v7 = v0[29];
  v8 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10043DC28()
{
  v19 = v0;
  v1 = *(v0 + 344);
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 344);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136446210;
    sub_1002414A8();
    v10 = Array.description.getter();
    v12 = v11;

    v13 = sub_10000D01C(v10, v12, &v18);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Interactable discovery tokens: %{public}s", v8, 0xCu);
    sub_100004984(v9);
  }

  else
  {
  }

  if (qword_1005A8548 != -1)
  {
    swift_once();
  }

  v14 = sub_10004B564(&qword_1005AFFF0, &qword_1004D1520);
  sub_10000A6F0(v14, qword_1005B34C8);
  *(v0 + 457) = 1;
  swift_beginAccess();
  ManagedDefault.wrappedValue.setter();
  swift_endAccess();
  v15 = swift_task_alloc();
  *(v0 + 352) = v15;
  *v15 = v0;
  v15[1] = sub_10043DE6C;
  v16 = *(v0 + 176);

  return sub_10044D898();
}

uint64_t sub_10043DE6C()
{
  v1 = *(*v0 + 352);
  v3 = *v0;

  return _swift_task_switch(sub_10043DF68, 0, 0);
}

uint64_t sub_10043DF68()
{
  v1 = sub_100209E2C(_swiftEmptyArrayStorage);
  v0[45] = v1;
  v2 = swift_task_alloc();
  v0[46] = v2;
  *v2 = v0;
  v2[1] = sub_10043E034;
  v3 = v0[23];

  return sub_100402934(0xD00000000000003ELL, 0x80000001004EA6C0, 0, v1);
}

uint64_t sub_10043E034()
{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 360);
  v4 = *v0;

  return _swift_task_switch(sub_10043E14C, 0, 0);
}

uint64_t sub_10043E14C()
{
  v1 = v0[29];
  v2 = v0[26];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10043E1BC()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;

  v5 = *(v2 + 384);
  if (v0)
  {

    v6 = sub_10044ADC4;
  }

  else
  {

    v6 = sub_10043E304;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10043E304()
{
  v1 = swift_task_alloc();
  *(v0 + 400) = v1;
  *v1 = v0;
  v1[1] = sub_10043E3BC;

  return sub_1004301F4(&unk_1004D8C40, 0);
}

uint64_t sub_10043E3BC(uint64_t a1)
{
  v3 = *(*v2 + 400);
  v6 = *v2;
  *(*v2 + 408) = a1;

  if (v1)
  {

    v4 = sub_10043E4D8;
  }

  else
  {
    v4 = sub_10043E600;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10043E4D8()
{
  v1 = v0[33];
  if (v1 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
    v12 = v0[33];

    if (!v11)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v2)
    {
      goto LABEL_6;
    }
  }

  v3 = v0[47];
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "interactableDiscoveryTokens is unexpectedly empty!", v6, 2u);
  }

LABEL_6:
  v7 = v0[29];
  v8 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10043E600()
{
  v20 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 376);
  v3 = *(v0 + 264);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 408);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446210;
    sub_1002414A8();
    v10 = Array.description.getter();
    v12 = v11;

    v13 = sub_10000D01C(v10, v12, &v19);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Interactable discovery tokens: %{public}s", v8, 0xCu);
    sub_100004984(v9);
  }

  else
  {
  }

  if (qword_1005A8548 != -1)
  {
    swift_once();
  }

  v14 = sub_10004B564(&qword_1005AFFF0, &qword_1004D1520);
  sub_10000A6F0(v14, qword_1005B34C8);
  *(v0 + 456) = 1;
  swift_beginAccess();
  ManagedDefault.wrappedValue.setter();
  swift_endAccess();
  v15 = sub_100209E2C(_swiftEmptyArrayStorage);
  *(v0 + 416) = v15;
  v16 = swift_task_alloc();
  *(v0 + 424) = v16;
  *v16 = v0;
  v16[1] = sub_10043E87C;
  v17 = *(v0 + 184);

  return sub_100402934(0xD00000000000003ELL, 0x80000001004EA680, 0, v15);
}

uint64_t sub_10043E87C()
{
  v1 = *(*v0 + 424);
  v2 = *(*v0 + 416);
  v4 = *v0;

  return _swift_task_switch(sub_10043E994, 0, 0);
}

uint64_t sub_10043E994()
{
  v1 = *(v0 + 458);
  sub_1003DA6A0();
  v2 = swift_allocError();
  *(v0 + 432) = v2;
  *v3 = 20;
  sub_10004B564(&qword_1005B2DD0, &unk_1004D7C00);
  inited = swift_initStackObject();
  v5 = inited;
  *(inited + 16) = xmmword_1004C1900;
  *(inited + 32) = 0x656C6261646E6966;
  v6 = inited + 32;
  *(inited + 40) = 0xEE00737574617453;
  if (v1 <= 2)
  {
    if (v1 == 1)
    {
      v7 = "notFindableFindMyAppUninstalled";
      v8 = 0xD000000000000010;
    }

    else
    {
      v7 = "MyLocationDisabled";
      v8 = 0xD00000000000001FLL;
    }
  }

  else if (v1 == 3)
  {
    v7 = "ionServicesDisabled";
    v8 = 0xD000000000000022;
  }

  else if (v1 == 4)
  {
    v7 = "notFindableUnknown";
    v8 = 0xD000000000000023;
  }

  else
  {
    v7 = "and(_:content:credential:)";
    v8 = 0xD000000000000012;
  }

  v9 = v7 | 0x8000000000000000;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = sub_1000246F4();
  *(v5 + 48) = v8;
  *(v5 + 56) = v9;
  *(v5 + 88) = 1;
  v10 = sub_100209E2C(v5);
  *(v0 + 440) = v10;
  swift_setDeallocating();
  sub_100002CE0(v6, &qword_1005B0160, &qword_1004D16F0);
  v11 = swift_task_alloc();
  *(v0 + 448) = v11;
  *v11 = v0;
  v11[1] = sub_10043EBC4;
  v12 = *(v0 + 184);

  return sub_100402934(0xD00000000000003ELL, 0x80000001004EA6C0, v2, v10);
}

uint64_t sub_10043EBC4()
{
  v1 = *(*v0 + 448);
  v2 = *(*v0 + 440);
  v3 = *(*v0 + 432);
  v5 = *v0;

  return _swift_task_switch(sub_10044ADE4, 0, 0);
}

uint64_t sub_10043ECF8()
{
  v14 = v0;
  v1 = v0[32];
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0C30);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004EA660, &v13);
    *(v5 + 12) = 2082;
    v0[21] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v13);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s error %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v9 = v0[29];
  v10 = v0[26];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10043EF18()
{
  v14 = v0;
  v1 = v0[41];
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0C30);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004EA660, &v13);
    *(v5 + 12) = 2082;
    v0[21] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v13);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s error %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v9 = v0[29];
  v10 = v0[26];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10043F158()
{
  v1 = v0[18];
  v2 = objc_opt_self();
  sub_1002414A8();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[19] = isa;
  v0[2] = v0;
  v0[3] = sub_10043F2A4;
  v4 = swift_continuation_init();
  v0[17] = sub_10004B564(&qword_1005B3B70, &qword_1004D8C78);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10043F3B4;
  v0[13] = &unk_10059C3B0;
  v0[14] = v4;
  [v2 setAsyncLocalDeviceInteractableDiscoveryTokens:isa completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10043F2A4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_10044ADE8;
  }

  else
  {
    v3 = sub_10044ADF4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10043F3B4(uint64_t a1, void *a2)
{
  v3 = sub_100011AEC((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_10043F480()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10043F5A8;
  v2 = swift_continuation_init();
  v0[17] = sub_10004B564(&qword_1005B3B68, &qword_1004D8C70);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100437934;
  v0[13] = &unk_10059C388;
  v0[14] = v2;
  [v1 getAsyncInteractableDiscoveryTokens:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10043F5A8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_10043F6D8;
  }

  else
  {
    v3 = sub_10043F6B8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10043F6D8()
{
  v1 = *(v0 + 160);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 160);

  return v2();
}

uint64_t sub_10043F744()
{
  v1[4] = v0;
  v1[5] = *v0;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  v1[6] = v3;
  *v3 = v1;
  v3[1] = sub_10043F800;

  return daemon.getter();
}

uint64_t sub_10043F800(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v12 = *v1;
  v3[7] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[8] = v6;
  v7 = type metadata accessor for Daemon();
  v3[9] = v7;
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_1000069AC(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[10] = v9;
  v10 = sub_1000069AC(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_10043F9E0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10043F9E0(uint64_t a1)
{
  v3 = *(*v2 + 64);
  v4 = *v2;
  v4[11] = a1;
  v4[12] = v1;

  if (v1)
  {
    v5 = v4[4];

    return _swift_task_switch(sub_100440628, v5, 0);
  }

  else
  {
    v6 = v4[7];

    v7 = async function pointer to daemon.getter[1];
    v8 = swift_task_alloc();
    v4[13] = v8;
    *v8 = v4;
    v8[1] = sub_10043FB54;

    return daemon.getter();
  }
}

uint64_t sub_10043FB54(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  v5 = *v1;
  v3[14] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[15] = v7;
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_1000069AC(&qword_1005AD568, type metadata accessor for CloudStorageService);
  *v7 = v5;
  v7[1] = sub_10043FD08;
  v10 = v3[10];
  v11 = v3[9];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_10043FD08(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v10 = *v2;
  v3[16] = a1;
  v3[17] = v1;

  if (v1)
  {
    v5 = v3[4];
    v6 = sub_100440838;
  }

  else
  {
    v7 = v3[14];
    v8 = v3[4];

    v6 = sub_10043FE30;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10043FE30()
{
  v1 = v0[16];
  v2 = v0[5];
  v3 = swift_allocObject();
  v0[18] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withTimeout<A>(_:block:)[1];

  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_10043FF30;

  return withTimeout<A>(_:block:)(v5, 0x8155A43676E00000, 6, &unk_1004D8C88, v3, &type metadata for () + 8);
}

uint64_t sub_10043FF30()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v9 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_100440A50;
  }

  else
  {
    v6 = *(v2 + 144);
    v7 = *(v2 + 32);

    v5 = sub_100440058;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100440074()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[21] = v5;
  *(v5 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v5 + v4, enum case for HandleType.follower(_:), v1);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_1004401D8;
  v7 = v0[11];

  return sub_10001C61C(v5, 1);
}

uint64_t sub_1004401D8(uint64_t a1)
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 184) = a1;

  return _swift_task_switch(sub_10044030C, v4, 0);
}

uint64_t sub_10044030C()
{
  v1 = v0[16];
  v3 = v0[4];
  v2 = v0[5];
  v0[3] = v0[23];
  v4 = swift_task_alloc();
  v0[24] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = async function pointer to Sequence.asyncCompactMap<A>(_:)[1];
  v6 = swift_task_alloc();
  v0[25] = v6;
  v7 = sub_10004B564(&qword_1005B0578, &qword_1004D5CA0);
  v8 = type metadata accessor for DiscoveryToken(0);
  v9 = sub_10001DF0C(&qword_1005B3B78, &qword_1005B0578, &qword_1004D5CA0);
  *v6 = v0;
  v6[1] = sub_10044045C;

  return Sequence.asyncCompactMap<A>(_:)(&unk_1004D8C98, v4, v7, v8, v9);
}

uint64_t sub_10044045C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *v2;

  if (v1)
  {
  }

  else
  {
    v8 = v4[23];
    v9 = v4[24];
    v10 = v4[4];

    v4[26] = a1;

    return _swift_task_switch(sub_1004405B8, v10, 0);
  }
}

uint64_t sub_1004405B8()
{
  v1 = v0[16];
  v2 = v0[11];

  v3 = v0[26];
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_100440628()
{
  v13 = v0;
  v1 = v0[12];
  v2 = v0[7];

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0C30);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0x6F54646E65697266, 0xEE002928736E656BLL, &v12);
    *(v6 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v12);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s error %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v0[1];

  return v10(_swiftEmptyArrayStorage);
}

uint64_t sub_100440838()
{
  v14 = v0;
  v1 = v0[11];

  v2 = v0[17];
  v3 = v0[14];

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A6F0(v4, qword_1005E0C30);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_10000D01C(0x6F54646E65697266, 0xEE002928736E656BLL, &v13);
    *(v7 + 12) = 2082;
    v0[2] = v2;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v13);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s error %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v11 = v0[1];

  return v11(_swiftEmptyArrayStorage);
}

uint64_t sub_100440A50()
{
  v15 = v0;
  v1 = v0[18];
  v2 = v0[11];

  v3 = v0[20];
  v4 = v0[16];

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005E0C30);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v8 = 136446466;
    *(v8 + 4) = sub_10000D01C(0x6F54646E65697266, 0xEE002928736E656BLL, &v14);
    *(v8 + 12) = 2082;
    v0[2] = v3;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v9 = String.init<A>(describing:)();
    v11 = sub_10000D01C(v9, v10, &v14);

    *(v8 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s error %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v12 = v0[1];

  return v12(_swiftEmptyArrayStorage);
}

uint64_t sub_100440C94()
{
  v1 = v0[18];
  v2 = objc_opt_self();
  sub_1002414A8();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[19] = isa;
  v0[2] = v0;
  v0[3] = sub_10043F2A4;
  v4 = swift_continuation_init();
  v0[17] = sub_10004B564(&qword_1005B3B70, &qword_1004D8C78);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10043F3B4;
  v0[13] = &unk_10059C338;
  v0[14] = v4;
  [v2 setAsyncLocalDeviceInteractableDiscoveryTokens:isa completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100440E00()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100439D08;
  v2 = swift_continuation_init();
  v0[17] = sub_10004B564(&qword_1005B3B68, &qword_1004D8C70);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100437934;
  v0[13] = &unk_10059C310;
  v0[14] = v2;
  [v1 getAsyncInteractableDiscoveryTokens:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

void sub_100440F28(double a1)
{
  v2 = v1;
  v49 = *v1;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v48[1] = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004B564(&qword_1005B02D8, &qword_1004D1868);
  v51 = *(v7 - 8);
  v52 = v7;
  v8 = *(v51 + 64);
  __chkstk_darwin(v7);
  v50 = v48 - v9;
  v10 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v48 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v53 = v48 - v20;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000A6F0(v21, qword_1005E0C30);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v48[0] = v19;
    v26 = v25;
    v54[0] = v25;
    *v24 = 136446466;
    *(v24 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004EA5D0, v54);
    *(v24 + 12) = 2048;
    *(v24 + 14) = a1;
    _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s threshold: %f", v24, 0x16u);
    sub_100004984(v26);
    v2 = v1;
    v19 = v48[0];
  }

  My = type metadata accessor for Feature.FindMy();
  v54[3] = My;
  v54[4] = sub_1000069AC(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy);
  v28 = sub_10000331C(v54);
  (*(*(My - 8) + 104))(v28, enum case for Feature.FindMy.redStripe(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100004984(v54);
  if ((My & 1) == 0)
  {
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v54[0] = v37;
      *v36 = 136446210;
      *(v36 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004EA5D0, v54);
      v38 = "%{public}s Feature.FindMy.redStripe FF disabled.";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v34, v35, v38, v36, 0xCu);
      sub_100004984(v37);

LABEL_17:
    }

LABEL_18:

    return;
  }

  if ((sub_1003F399C() & 1) == 0)
  {
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v54[0] = v37;
      *v36 = 136446210;
      *(v36 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004EA5D0, v54);
      v38 = "%{public}s isFindingCapable == false.";
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  static Date.trustedNow.getter(v53);
  if (qword_1005A8550 != -1)
  {
    swift_once();
  }

  v29 = v52;
  v30 = sub_10000A6F0(v52, qword_1005B34E0);
  swift_beginAccess();
  v31 = v50;
  v32 = v51;
  (*(v51 + 16))(v50, v30, v29);
  ManagedDefault.wrappedValue.getter();
  (*(v32 + 8))(v31, v29);
  v33 = *(v15 + 48);
  if (v33(v13, 1, v14) == 1)
  {
    static Date.distantPast.getter();
    if (v33(v13, 1, v14) != 1)
    {
      sub_100002CE0(v13, &unk_1005AE5B0, &qword_1004C32F0);
    }
  }

  else
  {
    (*(v15 + 32))(v19, v13, v14);
  }

  v39 = v53;
  Date.timeIntervalSince(_:)();
  v41 = v40;
  v42 = *(v15 + 8);
  v42(v19, v14);
  v42(v39, v14);
  if (v41 <= a1)
  {
    v34 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v34, v46))
    {
      goto LABEL_18;
    }

    v47 = swift_slowAlloc();
    *v47 = 134349312;
    *(v47 + 4) = v41;
    *(v47 + 12) = 2050;
    *(v47 + 14) = a1;
    _os_log_impl(&_mh_execute_header, v34, v46, "Time since last token request attempt: %{public}f. Threshold: %{public}f. Not sending.", v47, 0x16u);
    goto LABEL_17;
  }

  v43 = v2[16];
  type metadata accessor for WorkItemQueue.WorkItem();
  v44 = swift_allocObject();
  v45 = v49;
  *(v44 + 16) = v2;
  *(v44 + 24) = v45;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100441720()
{
  v1 = v0[18];
  v2 = objc_opt_self();
  sub_1002414A8();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[19] = isa;
  v0[2] = v0;
  v0[3] = sub_10044186C;
  v4 = swift_continuation_init();
  v0[17] = sub_10004B564(&qword_1005B3B70, &qword_1004D8C78);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10043F3B4;
  v0[13] = &unk_10059C400;
  v0[14] = v4;
  [v2 setAsyncLocalDeviceInteractableDiscoveryTokens:isa completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10044186C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_1004419E0;
  }

  else
  {
    v3 = sub_10044197C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10044197C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004419E0()
{
  v1 = v0[19];
  v2 = v0[20];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[20];

  return v3();
}

uint64_t sub_100441A50(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for CloudKitStorage.State();
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_100441B10, 0, 0);
}

uint64_t sub_100441B10()
{
  v9 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[6] = sub_10000A6F0(v1, qword_1005E0C30);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0x6F54646E65697266, 0xEE002928736E656BLL, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "Waiting for CloudKit to be available %{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = v0[2];
  (*(v0[4] + 104))(v0[5], enum case for CloudKitStorage.State.available(_:), v0[3]);

  return _swift_task_switch(sub_100441CBC, v6, 0);
}

uint64_t sub_100441CBC()
{
  v1 = *(v0[2] + 136);
  v2 = *(&async function pointer to dispatch thunk of CloudKitStorage.await(state:) + 1);
  v6 = (&async function pointer to dispatch thunk of CloudKitStorage.await(state:) + async function pointer to dispatch thunk of CloudKitStorage.await(state:));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_100441D6C;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_100441D6C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = v2[2];
    v5 = sub_1002CABE8;
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);
    v5 = sub_100441EA0;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100441EA0()
{
  v10 = v0;
  v1 = v0[6];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0x6F54646E65697266, 0xEE002928736E656BLL, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "CloudKit is available. %{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = v0[5];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100441FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for Friend();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v8 = sub_10004B564(&qword_1005B0F30, &qword_1004D3308);
  v4[12] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v10 = *(*(sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v4[17] = v11;
  v12 = *(v11 - 8);
  v4[18] = v12;
  v13 = *(v12 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v14 = *(*(sub_10004B564(&qword_1005AEB98, &unk_1004D07C0) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v15 = type metadata accessor for SharedSecretKey();
  v4[22] = v15;
  v16 = *(v15 - 8);
  v4[23] = v16;
  v17 = *(v16 + 64) + 15;
  v4[24] = swift_task_alloc();
  v18 = *(*(sub_10004B564(&unk_1005AECE8, &qword_1004D07A0) - 8) + 64) + 15;
  v4[25] = swift_task_alloc();
  v19 = type metadata accessor for FriendSharedSecretsRecord();
  v4[26] = v19;
  v20 = *(v19 - 8);
  v4[27] = v20;
  v21 = *(v20 + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v22 = *(*(sub_10004B564(&qword_1005A96E0, &qword_1004C2A80) - 8) + 64) + 15;
  v4[30] = swift_task_alloc();
  v23 = type metadata accessor for Handle();
  v4[31] = v23;
  v24 = *(v23 - 8);
  v4[32] = v24;
  v25 = *(v24 + 64) + 15;
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v26 = type metadata accessor for UUID();
  v4[35] = v26;
  v27 = *(v26 - 8);
  v4[36] = v27;
  v28 = *(v27 + 64) + 15;
  v4[37] = swift_task_alloc();

  return _swift_task_switch(sub_1004423E4, 0, 0);
}

uint64_t sub_1004423E4()
{
  v54 = v0;
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  v4 = v0[31];
  v5 = v0[32];
  v6 = v0[30];
  v7 = v0[4];
  Friend.handle.getter();
  Handle.peerID.getter();
  v8 = *(v5 + 8);
  v0[38] = v8;
  v0[39] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v3, v4);
  if ((*(v2 + 48))(v6, 1, v1) == 1)
  {
    sub_100002CE0(v0[30], &qword_1005A96E0, &qword_1004C2A80);
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v9 = v0[10];
    v10 = v0[7];
    v11 = v0[8];
    v12 = v0[4];
    v13 = type metadata accessor for Logger();
    sub_10000A6F0(v13, qword_1005E0C30);
    (*(v11 + 16))(v9, v12, v10);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[10];
    v18 = v0[7];
    v19 = v0[8];
    if (v16)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v53 = v21;
      *v20 = 141558275;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2081;
      sub_1000069AC(&qword_1005AA720, &type metadata accessor for Friend);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v19 + 8))(v17, v18);
      v25 = sub_10000D01C(v22, v24, &v53);

      *(v20 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v14, v15, "Missing friendSharedSecretsRecord for %{private,mask.hash}s", v20, 0x16u);
      sub_100004984(v21);
    }

    else
    {

      (*(v19 + 8))(v17, v18);
    }

    v32 = v0[3];
    v33 = type metadata accessor for DiscoveryToken(0);
    (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
    v34 = v0[37];
    v36 = v0[33];
    v35 = v0[34];
    v38 = v0[29];
    v37 = v0[30];
    v39 = v0[28];
    v40 = v0[24];
    v41 = v0[25];
    v43 = v0[20];
    v42 = v0[21];
    v45 = v0[19];
    v46 = v0[16];
    v47 = v0[15];
    v48 = v0[14];
    v49 = v0[13];
    v50 = v0[11];
    v51 = v0[10];
    v52 = v0[9];

    v44 = v0[1];

    return v44();
  }

  else
  {
    v26 = v0[5];
    (*(v0[36] + 32))(v0[37], v0[30], v0[35]);
    v27 = *(v26 + 128);
    v28 = swift_task_alloc();
    v0[40] = v28;
    *v28 = v0;
    v28[1] = sub_100442868;
    v29 = v0[37];
    v30 = v0[25];

    return sub_1001C4430(v30, v29);
  }
}

uint64_t sub_100442868()
{
  v2 = *(*v1 + 320);
  v5 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = sub_100443794;
  }

  else
  {
    v3 = sub_10044297C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10044297C()
{
  v159 = v0;
  v1 = v0[26];
  v2 = v0[25];
  if ((*(v0[27] + 48))(v2, 1, v1) == 1)
  {
    (*(v0[36] + 8))(v0[37], v0[35]);
    sub_100002CE0(v2, &unk_1005AECE8, &qword_1004D07A0);
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v3 = v0[10];
    v4 = v0[7];
    v5 = v0[8];
    v6 = v0[4];
    v7 = type metadata accessor for Logger();
    sub_10000A6F0(v7, qword_1005E0C30);
    (*(v5 + 16))(v3, v6, v4);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[10];
    v12 = v0[7];
    v13 = v0[8];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v158[0] = v15;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      sub_1000069AC(&qword_1005AA720, &type metadata accessor for Friend);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v13 + 8))(v11, v12);
      v19 = sub_10000D01C(v16, v18, v158);

      *(v14 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "Missing friendSharedSecretsRecord for %{private,mask.hash}s", v14, 0x16u);
      sub_100004984(v15);
    }

    else
    {

      (*(v13 + 8))(v11, v12);
    }

LABEL_16:
    v50 = v0[3];
    v51 = type metadata accessor for DiscoveryToken(0);
    (*(*(v51 - 8) + 56))(v50, 1, 1, v51);
    goto LABEL_17;
  }

  v20 = v0[29];
  v21 = v0[22];
  v22 = v0[23];
  v23 = v0[21];
  sub_10044AD48(v2, v20, type metadata accessor for FriendSharedSecretsRecord);
  sub_100005F04(v20 + *(v1 + 32), v23, &qword_1005AEB98, &unk_1004D07C0);
  if ((*(v22 + 48))(v23, 1, v21) == 1)
  {
    v24 = v0[21];
    v25 = &qword_1005AEB98;
    v26 = &unk_1004D07C0;
LABEL_11:
    sub_100002CE0(v24, v25, v26);
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v33 = v0[28];
    v34 = v0[29];
    v35 = type metadata accessor for Logger();
    sub_10000A6F0(v35, qword_1005E0C30);
    sub_10044AC80(v34, v33, type metadata accessor for FriendSharedSecretsRecord);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v0[36];
    v40 = v0[37];
    v41 = v0[35];
    v42 = v0[28];
    v43 = v0[29];
    if (v38)
    {
      v155 = v0[29];
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v158[0] = v45;
      *v44 = 136446210;
      sub_1000069AC(&qword_1005A92C0, &type metadata accessor for UUID);
      v153 = v41;
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      sub_10044ACE8(v42, type metadata accessor for FriendSharedSecretsRecord);
      v49 = sub_10000D01C(v46, v48, v158);

      *(v44 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v36, v37, "No incomingSharedSecret for %{public}s", v44, 0xCu);
      sub_100004984(v45);

      sub_10044ACE8(v155, type metadata accessor for FriendSharedSecretsRecord);
      (*(v39 + 8))(v40, v153);
    }

    else
    {

      sub_10044ACE8(v42, type metadata accessor for FriendSharedSecretsRecord);
      sub_10044ACE8(v43, type metadata accessor for FriendSharedSecretsRecord);
      (*(v39 + 8))(v40, v41);
    }

    goto LABEL_16;
  }

  v27 = v0[29];
  v28 = v0[26];
  v29 = v0[17];
  v30 = v0[18];
  v31 = v0[16];
  (*(v0[23] + 32))(v0[24], v0[21], v0[22]);
  sub_100005F04(v27 + *(v28 + 36), v31, &unk_1005AE5B0, &qword_1004C32F0);
  if ((*(v30 + 48))(v31, 1, v29) == 1)
  {
    v32 = v0[16];
    (*(v0[23] + 8))(v0[24], v0[22]);
    v25 = &unk_1005AE5B0;
    v26 = &qword_1004C32F0;
    v24 = v32;
    goto LABEL_11;
  }

  v64 = v0[41];
  v65 = v0[24];
  v67 = v0[19];
  v66 = v0[20];
  v68 = v0[15];
  v69 = v0[6];
  (*(v0[18] + 32))(v66, v0[16], v0[17]);
  static Date.trustedNow.getter(v67);
  sub_10042E958(v65, v66, v67, v68);
  if (v64)
  {
    v70 = v0[29];
    v72 = v0[23];
    v71 = v0[24];
    v73 = v0[22];
    v74 = v0[20];
    v75 = v0[17];
    v76 = *(v0[18] + 8);
    v76(v0[19], v75);
    v76(v74, v75);
    (*(v72 + 8))(v71, v73);
    sub_10044ACE8(v70, type metadata accessor for FriendSharedSecretsRecord);
    (*(v0[36] + 8))(v0[37], v0[35]);
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v78 = v0[8];
    v77 = v0[9];
    v79 = v0[7];
    v80 = v0[4];
    v81 = type metadata accessor for Logger();
    sub_10000A6F0(v81, qword_1005E0C30);
    (*(v78 + 16))(v77, v80, v79);
    swift_errorRetain();
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();

    v84 = os_log_type_enabled(v82, v83);
    v86 = v0[8];
    v85 = v0[9];
    v87 = v0[7];
    if (v84)
    {
      v88 = swift_slowAlloc();
      v158[0] = swift_slowAlloc();
      *v88 = 141558531;
      *(v88 + 4) = 1752392040;
      *(v88 + 12) = 2081;
      sub_1000069AC(&qword_1005AA720, &type metadata accessor for Friend);
      v89 = dispatch thunk of CustomStringConvertible.description.getter();
      v91 = v90;
      (*(v86 + 8))(v85, v87);
      v92 = sub_10000D01C(v89, v91, v158);

      *(v88 + 14) = v92;
      *(v88 + 22) = 2082;
      v0[2] = v64;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v93 = String.init<A>(describing:)();
      v95 = sub_10000D01C(v93, v94, v158);

      *(v88 + 24) = v95;
      _os_log_impl(&_mh_execute_header, v82, v83, "Unable to generate discovery token for %{private,mask.hash}s. Error: %{public}s.", v88, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v86 + 8))(v85, v87);
    }

    goto LABEL_16;
  }

  v152 = *(v0[18] + 8);
  v152(v0[19], v0[17]);
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v96 = v0[14];
  v97 = v0[15];
  v98 = v0[11];
  v99 = v0[7];
  v100 = v0[8];
  v101 = v0[4];
  v102 = type metadata accessor for Logger();
  sub_10000A6F0(v102, qword_1005E0C30);
  sub_100005F04(v97, v96, &qword_1005B0F30, &qword_1004D3308);
  (*(v100 + 16))(v98, v101, v99);
  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.default.getter();
  v157 = v103;
  if (os_log_type_enabled(v103, v104))
  {
    v131 = v0[38];
    v132 = v0[39];
    v133 = v0[36];
    v146 = v0[35];
    v149 = v0[37];
    v105 = v0[33];
    v140 = v0[24];
    v143 = v0[29];
    v136 = v0[23];
    v138 = v0[22];
    v134 = v0[17];
    v135 = v0[20];
    v107 = v0[13];
    v106 = v0[14];
    v108 = v0[12];
    v128 = v0[11];
    v109 = v0[8];
    v129 = v0[7];
    v130 = v0[31];
    v110 = swift_slowAlloc();
    v158[0] = swift_slowAlloc();
    *v110 = 141558787;
    *(v110 + 4) = 1752392040;
    *(v110 + 12) = 2081;
    sub_100005F04(v106, v107, &qword_1005B0F30, &qword_1004D3308);
    v111 = String.init<A>(describing:)();
    v113 = v112;
    sub_100002CE0(v106, &qword_1005B0F30, &qword_1004D3308);
    v114 = sub_10000D01C(v111, v113, v158);

    *(v110 + 14) = v114;
    *(v110 + 22) = 2160;
    *(v110 + 24) = 1752392040;
    *(v110 + 32) = 2081;
    Friend.handle.getter();
    v115 = Handle.identifier.getter();
    v117 = v116;
    v131(v105, v130);
    (*(v109 + 8))(v128, v129);
    v118 = sub_10000D01C(v115, v117, v158);

    *(v110 + 34) = v118;
    _os_log_impl(&_mh_execute_header, v157, v104, "Local discovery token: %{private,mask.hash}s for follower: %{private,mask.hash}s.", v110, 0x2Au);
    swift_arrayDestroy();

    v152(v135, v134);
    (*(v136 + 8))(v140, v138);
    sub_10044ACE8(v143, type metadata accessor for FriendSharedSecretsRecord);
    (*(v133 + 8))(v149, v146);
  }

  else
  {
    v119 = v0[36];
    v147 = v0[35];
    v150 = v0[37];
    v120 = v0[23];
    v141 = v0[24];
    v144 = v0[29];
    v121 = v0[22];
    v122 = v0[20];
    v123 = v0[17];
    v124 = v0[14];
    v125 = v0[11];
    v126 = v0[7];
    v127 = v0[8];

    (*(v127 + 8))(v125, v126);
    sub_100002CE0(v124, &qword_1005B0F30, &qword_1004D3308);
    v152(v122, v123);
    (*(v120 + 8))(v141, v121);
    sub_10044ACE8(v144, type metadata accessor for FriendSharedSecretsRecord);
    (*(v119 + 8))(v150, v147);
  }

  sub_1002CE81C(v0[15], v0[3]);
LABEL_17:
  v52 = v0[37];
  v54 = v0[33];
  v53 = v0[34];
  v56 = v0[29];
  v55 = v0[30];
  v57 = v0[28];
  v58 = v0[24];
  v59 = v0[25];
  v61 = v0[20];
  v60 = v0[21];
  v137 = v0[19];
  v139 = v0[16];
  v142 = v0[15];
  v145 = v0[14];
  v148 = v0[13];
  v151 = v0[11];
  v154 = v0[10];
  v156 = v0[9];

  v62 = v0[1];

  return v62();
}

uint64_t sub_100443794()
{
  v44 = v0;
  v1 = v0[41];
  (*(v0[36] + 8))(v0[37], v0[35]);
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v5 = v0[4];
  v6 = type metadata accessor for Logger();
  sub_10000A6F0(v6, qword_1005E0C30);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[7];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1000069AC(&qword_1005AA720, &type metadata accessor for Friend);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_10000D01C(v14, v16, &v43);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v18 = String.init<A>(describing:)();
    v20 = sub_10000D01C(v18, v19, &v43);

    *(v13 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "Unable to generate discovery token for %{private,mask.hash}s. Error: %{public}s.", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v21 = v0[3];
  v22 = type metadata accessor for DiscoveryToken(0);
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  v23 = v0[37];
  v25 = v0[33];
  v24 = v0[34];
  v27 = v0[29];
  v26 = v0[30];
  v28 = v0[28];
  v29 = v0[24];
  v30 = v0[25];
  v32 = v0[20];
  v31 = v0[21];
  v35 = v0[19];
  v36 = v0[16];
  v37 = v0[15];
  v38 = v0[14];
  v39 = v0[13];
  v40 = v0[11];
  v41 = v0[10];
  v42 = v0[9];

  v33 = v0[1];

  return v33();
}

uint64_t sub_100443B88(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = *(*(sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  v2[9] = v5;
  *v5 = v2;
  v5[1] = sub_100443C60;

  return daemon.getter();
}

uint64_t sub_100443C60(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v12 = *v1;
  v3[10] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[11] = v6;
  v7 = type metadata accessor for Daemon();
  v3[12] = v7;
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_1000069AC(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[13] = v9;
  v10 = sub_1000069AC(&qword_1005AD568, type metadata accessor for CloudStorageService);
  *v6 = v12;
  v6[1] = sub_100443E40;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100443E40(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v8 = *v2;
  v3[14] = a1;
  v3[15] = v1;

  if (v1)
  {
    v5 = sub_100444EC8;
  }

  else
  {
    v6 = v3[10];

    v5 = sub_100443F5C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100443F5C()
{
  v1 = v0[14];
  v2 = v0[6];
  v3 = swift_allocObject();
  v0[16] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withTimeout<A>(_:block:)[1];

  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_10044405C;

  return withTimeout<A>(_:block:)(v5, 0x8155A43676E00000, 6, &unk_1004D8BC8, v3, &type metadata for () + 8);
}

uint64_t sub_10044405C()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_100444FAC;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_100444178;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100444178()
{
  v1 = async function pointer to daemon.getter[1];
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_100444208;

  return daemon.getter();
}

uint64_t sub_100444208(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 152);
  v5 = *v1;
  v3[20] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[21] = v7;
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_1000069AC(&qword_1005A90D0, type metadata accessor for DataManager);
  *v7 = v5;
  v7[1] = sub_1004443BC;
  v10 = v3[13];
  v11 = v3[12];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1004443BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  v8 = *v2;
  v3[22] = a1;
  v3[23] = v1;

  if (v1)
  {
    v5 = sub_10044509C;
  }

  else
  {
    v6 = v3[20];

    v5 = sub_1004444D8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1004444D8()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 112);
  v3 = swift_task_alloc();
  *(v0 + 192) = v3;
  v4 = *(v0 + 40);
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = v4;
  v5 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v6 = swift_task_alloc();
  *(v0 + 200) = v6;
  *v6 = v0;
  v6[1] = sub_1004445D0;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1004445D0()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = sub_10044518C;
  }

  else
  {
    v5 = *(v2 + 192);

    v4 = sub_1004446EC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004446EC()
{
  v16 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0C30);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004EA5D0, &v15);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s completed!", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = v0[8];
  static Date.trustedNow.getter(v6);
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  if (qword_1005A8550 != -1)
  {
    swift_once();
  }

  v9 = v0[7];
  v8 = v0[8];
  v10 = sub_10004B564(&qword_1005B02D8, &qword_1004D1868);
  sub_10000A6F0(v10, qword_1005B34E0);
  sub_100005F04(v8, v9, &unk_1005AE5B0, &qword_1004C32F0);
  swift_beginAccess();
  ManagedDefault.wrappedValue.setter();
  swift_endAccess();
  sub_100002CE0(v8, &unk_1005AE5B0, &qword_1004C32F0);
  v11 = sub_100209E2C(_swiftEmptyArrayStorage);
  v0[27] = v11;
  v12 = swift_task_alloc();
  v0[28] = v12;
  *v12 = v0;
  v12[1] = sub_1004449E4;
  v13 = v0[6];

  return sub_100402934(0xD00000000000003ALL, 0x80000001004EA600, 0, v11);
}

uint64_t sub_1004449E4()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v4 = *v0;

  return _swift_task_switch(sub_100444AFC, 0, 0);
}

uint64_t sub_100444AFC()
{
  v1 = v0[22];
  v2 = v0[14];

  v4 = v0[7];
  v3 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100444B7C()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);
  v3 = *(*v0 + 232);
  v5 = *v0;

  return _swift_task_switch(sub_100444CB0, 0, 0);
}

uint64_t sub_100444CB0()
{
  v16 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0C30);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[29];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004EA5D0, &v15);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s error %{public}@", v7, 0x16u);
    sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v9);
  }

  else
  {
  }

  v12 = v0[7];
  v11 = v0[8];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100444EC8()
{
  v1 = v0[10];

  v2 = v0[15];
  v0[29] = v2;
  swift_errorRetain();
  v3 = sub_100209E2C(_swiftEmptyArrayStorage);
  v0[30] = v3;
  v4 = swift_task_alloc();
  v0[31] = v4;
  *v4 = v0;
  v4[1] = sub_100444B7C;
  v5 = v0[6];

  return sub_100402934(0xD00000000000003ALL, 0x80000001004EA600, v2, v3);
}

uint64_t sub_100444FAC()
{
  v1 = v0[16];
  v2 = v0[14];

  v3 = v0[18];
  v0[29] = v3;
  swift_errorRetain();
  v4 = sub_100209E2C(_swiftEmptyArrayStorage);
  v0[30] = v4;
  v5 = swift_task_alloc();
  v0[31] = v5;
  *v5 = v0;
  v5[1] = sub_100444B7C;
  v6 = v0[6];

  return sub_100402934(0xD00000000000003ALL, 0x80000001004EA600, v3, v4);
}

uint64_t sub_10044509C()
{
  v1 = v0[20];
  v2 = v0[14];

  v3 = v0[23];
  v0[29] = v3;
  swift_errorRetain();
  v4 = sub_100209E2C(_swiftEmptyArrayStorage);
  v0[30] = v4;
  v5 = swift_task_alloc();
  v0[31] = v5;
  *v5 = v0;
  v5[1] = sub_100444B7C;
  v6 = v0[6];

  return sub_100402934(0xD00000000000003ALL, 0x80000001004EA600, v3, v4);
}

uint64_t sub_10044518C()
{
  v1 = v0[24];
  v2 = v0[22];
  v3 = v0[14];

  v4 = v0[26];
  v0[29] = v4;
  swift_errorRetain();
  v5 = sub_100209E2C(_swiftEmptyArrayStorage);
  v0[30] = v5;
  v6 = swift_task_alloc();
  v0[31] = v6;
  *v6 = v0;
  v6[1] = sub_100444B7C;
  v7 = v0[6];

  return sub_100402934(0xD00000000000003ALL, 0x80000001004EA600, v4, v5);
}

uint64_t sub_100445288(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for CloudKitStorage.State();
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_100445348, 0, 0);
}

uint64_t sub_100445348()
{
  v9 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[6] = sub_10000A6F0(v1, qword_1005E0C30);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004EA5D0, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "Waiting for CloudKit to be available %{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = v0[2];
  (*(v0[4] + 104))(v0[5], enum case for CloudKitStorage.State.available(_:), v0[3]);

  return _swift_task_switch(sub_1004454EC, v6, 0);
}

uint64_t sub_1004454EC()
{
  v1 = *(v0[2] + 136);
  v2 = *(&async function pointer to dispatch thunk of CloudKitStorage.await(state:) + 1);
  v6 = (&async function pointer to dispatch thunk of CloudKitStorage.await(state:) + async function pointer to dispatch thunk of CloudKitStorage.await(state:));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_10044559C;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_10044559C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = v2[2];
    v5 = sub_1002C78BC;
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);
    v5 = sub_1004456D0;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1004456D0()
{
  v10 = v0;
  v1 = v0[6];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004EA5D0, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "CloudKit is available. %{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = v0[5];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10044580C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[17] = a3;
  v6[18] = a4;
  v6[16] = a2;
  v8 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v9 = *(*(sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0) - 8) + 64) + 15;
  v6[25] = swift_task_alloc();
  v10 = *(*(sub_10004B564(&qword_1005AEB98, &unk_1004D07C0) - 8) + 64) + 15;
  v6[26] = swift_task_alloc();
  v11 = *(*(sub_10004B564(&unk_1005AECE8, &qword_1004D07A0) - 8) + 64) + 15;
  v6[27] = swift_task_alloc();
  v12 = type metadata accessor for FriendSharedSecretsRecord();
  v6[28] = v12;
  v13 = *(v12 - 8);
  v6[29] = v13;
  v14 = *(v13 + 64) + 15;
  v6[30] = swift_task_alloc();
  v15 = *(*(sub_10004B564(&qword_1005A96E0, &qword_1004C2A80) - 8) + 64) + 15;
  v6[31] = swift_task_alloc();
  v16 = type metadata accessor for Handle();
  v6[32] = v16;
  v17 = *(v16 - 8);
  v6[33] = v17;
  v18 = *(v17 + 64) + 15;
  v6[34] = swift_task_alloc();
  v19 = type metadata accessor for UUID();
  v6[35] = v19;
  v20 = *(v19 - 8);
  v6[36] = v20;
  v21 = *(v20 + 64) + 15;
  v6[37] = swift_task_alloc();
  v22 = type metadata accessor for Friend();
  v6[38] = v22;
  v23 = *(v22 - 8);
  v6[39] = v23;
  v6[40] = *(v23 + 64);
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();

  return _swift_task_switch(sub_100445B6C, a3, 0);
}

uint64_t sub_100445B6C()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[47] = v5;
  *(v5 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v5 + v4, enum case for HandleType.following(_:), v1);
  v6 = swift_task_alloc();
  v0[48] = v6;
  *v6 = v0;
  v6[1] = sub_100445CD0;
  v7 = v0[17];

  return sub_10001C61C(v5, 1);
}

uint64_t sub_100445CD0(uint64_t a1)
{
  v2 = *(*v1 + 384);
  v3 = *(*v1 + 376);
  v5 = *v1;
  *(*v1 + 392) = a1;

  return _swift_task_switch(sub_100445DF0, 0, 0);
}

uint64_t sub_100445DF0()
{
  v79 = v0;
  result = *(v0 + 392);
  v2 = *(result + 16);
  *(v0 + 400) = v2;
  if (v2)
  {
    v3 = 0;
    *(v0 + 464) = *(*(v0 + 312) + 80);
    while (1)
    {
      *(v0 + 408) = v3;
      v4 = *(v0 + 392);
      if (v3 >= *(v4 + 16))
      {
        __break(1u);
        return result;
      }

      v5 = *(v0 + 368);
      v6 = *(v0 + 304);
      v7 = *(v0 + 312);
      v9 = *(v7 + 16);
      v7 += 16;
      v8 = v9;
      v10 = v4 + ((*(v0 + 464) + 32) & ~*(v0 + 464)) + *(v7 + 56) * v3;
      *(v0 + 416) = v9;
      *(v0 + 424) = v7 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v9(v5, v10, v6);
      if (qword_1005A8530 != -1)
      {
        swift_once();
      }

      v11 = *(v0 + 360);
      v12 = *(v0 + 368);
      v13 = *(v0 + 304);
      v14 = type metadata accessor for Logger();
      *(v0 + 432) = sub_10000A6F0(v14, qword_1005E0C30);
      v8(v11, v12, v13);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      v17 = os_log_type_enabled(v15, v16);
      v18 = *(v0 + 360);
      v20 = *(v0 + 304);
      v19 = *(v0 + 312);
      v76 = v8;
      if (v17)
      {
        v21 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v78 = v72;
        *v21 = 141558275;
        *(v21 + 4) = 1752392040;
        *(v21 + 12) = 2081;
        sub_1000069AC(&qword_1005AA720, &type metadata accessor for Friend);
        v22 = dispatch thunk of CustomStringConvertible.description.getter();
        v24 = v23;
        v25 = v20;
        v26 = *(v19 + 8);
        v26(v18, v25);
        v27 = sub_10000D01C(v22, v24, &v78);

        *(v21 + 14) = v27;
        _os_log_impl(&_mh_execute_header, v15, v16, "Checking if we need to request token for %{private,mask.hash}s", v21, 0x16u);
        sub_100004984(v72);
      }

      else
      {

        v28 = v20;
        v26 = *(v19 + 8);
        v26(v18, v28);
      }

      *(v0 + 440) = v26;
      v29 = *(v0 + 368);
      v30 = *(v0 + 280);
      v31 = *(v0 + 288);
      v33 = *(v0 + 264);
      v32 = *(v0 + 272);
      v35 = *(v0 + 248);
      v34 = *(v0 + 256);
      Friend.handle.getter();
      Handle.peerID.getter();
      (*(v33 + 8))(v32, v34);
      if ((*(v31 + 48))(v35, 1, v30) != 1)
      {
        break;
      }

      v36 = *(v0 + 368);
      v37 = *(v0 + 328);
      v38 = *(v0 + 304);
      sub_100002CE0(*(v0 + 248), &qword_1005A96E0, &qword_1004C2A80);
      v76(v37, v36, v38);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();
      v41 = os_log_type_enabled(v39, v40);
      v42 = *(v0 + 368);
      v43 = *(v0 + 328);
      v45 = *(v0 + 304);
      v44 = *(v0 + 312);
      if (v41)
      {
        v46 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *v46 = 136446723;
        *(v46 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004EA5D0, &v78);
        *(v46 + 12) = 2160;
        *(v46 + 14) = 1752392040;
        *(v46 + 22) = 2081;
        sub_1000069AC(&qword_1005AA720, &type metadata accessor for Friend);
        v74 = v42;
        v47 = dispatch thunk of CustomStringConvertible.description.getter();
        v49 = v48;
        v26(v43, v45);
        v50 = sub_10000D01C(v47, v49, &v78);

        *(v46 + 24) = v50;
        _os_log_impl(&_mh_execute_header, v39, v40, "%{public}s No peerID for following %{private,mask.hash}s", v46, 0x20u);
        swift_arrayDestroy();

        result = (v26)(v74, v45);
      }

      else
      {

        v26(v43, v45);
        result = (v26)(v42, v45);
      }

      v3 = *(v0 + 408) + 1;
      if (v3 == *(v0 + 400))
      {
        v56 = *(v0 + 392);
        goto LABEL_18;
      }
    }

    v51 = *(v0 + 144);
    (*(*(v0 + 288) + 32))(*(v0 + 296), *(v0 + 248), *(v0 + 280));
    v52 = *(v51 + 128);
    v53 = swift_task_alloc();
    *(v0 + 448) = v53;
    *v53 = v0;
    v53[1] = sub_1004464CC;
    v54 = *(v0 + 296);
    v55 = *(v0 + 216);

    return sub_1001C4430(v55, v54);
  }

  else
  {
LABEL_18:

    v58 = *(v0 + 360);
    v57 = *(v0 + 368);
    v60 = *(v0 + 344);
    v59 = *(v0 + 352);
    v62 = *(v0 + 328);
    v61 = *(v0 + 336);
    v63 = *(v0 + 296);
    v64 = *(v0 + 272);
    v66 = *(v0 + 240);
    v65 = *(v0 + 248);
    v68 = *(v0 + 216);
    v69 = *(v0 + 208);
    v70 = *(v0 + 200);
    v71 = *(v0 + 192);
    v73 = *(v0 + 184);
    v75 = *(v0 + 176);
    v77 = *(v0 + 168);

    v67 = *(v0 + 8);

    return v67();
  }
}

uint64_t sub_1004464CC()
{
  v2 = *(*v1 + 448);
  v5 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = sub_1004477F0;
  }

  else
  {
    v3 = sub_1004465E0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004465E0()
{
  v191 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 216);
  if ((*(*(v0 + 232) + 48))(v2, 1, v1) == 1)
  {
    v4 = *(v0 + 424);
    v3 = *(v0 + 432);
    v5 = *(v0 + 416);
    v6 = *(v0 + 368);
    v7 = *(v0 + 336);
    v8 = *(v0 + 304);
    sub_100002CE0(v2, &unk_1005AECE8, &qword_1004D07A0);
    v5(v7, v6, v8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 440);
    v13 = *(v0 + 336);
    v15 = *(v0 + 304);
    v14 = *(v0 + 312);
    if (v11)
    {
      v16 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      *v16 = 136446723;
      *(v16 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004EA5D0, &v190);
      *(v16 + 12) = 2160;
      *(v16 + 14) = 1752392040;
      *(v16 + 22) = 2081;
      sub_1000069AC(&qword_1005AA720, &type metadata accessor for Friend);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      v12(v13, v15);
      v20 = sub_10000D01C(v17, v19, &v190);

      *(v16 + 24) = v20;
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s Missing friendSharedSecretsRecord for %{private,mask.hash}s. Requesting token...", v16, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v12(v13, v15);
    }

    v168 = *(v0 + 424);
    v162 = *(v0 + 368);
    v165 = *(v0 + 416);
    v40 = *(v0 + 344);
    v41 = *(v0 + 312);
    v42 = *(v0 + 304);
    v43 = *(v0 + 176);
    v160 = v43;
    v179 = *(v0 + 160);
    v185 = *(v0 + 168);
    v171 = *(v0 + 152);
    v174 = (*(v0 + 464) + 40) & ~*(v0 + 464);
    v44 = (*(v0 + 320) + v174 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = type metadata accessor for TaskPriority();
    v46 = *(v45 - 8);
    (*(v46 + 56))(v43, 1, 1, v45);
    v165(v40, v162, v42);
    v47 = swift_allocObject();
    v47[2] = 0;
    v48 = v47 + 2;
    v47[3] = 0;
    v47[4] = v171;
    (*(v41 + 32))(v47 + v174, v40, v42);
    *(v47 + v44) = v179;
    sub_100005F04(v160, v185, &qword_1005A9690, &qword_1004C2A00);
    LODWORD(v44) = (*(v46 + 48))(v185, 1, v45);

    v49 = *(v0 + 168);
    if (v44 == 1)
    {
      sub_100002CE0(*(v0 + 168), &qword_1005A9690, &qword_1004C2A00);
      if (*v48)
      {
LABEL_12:
        v50 = v47[3];
        swift_getObjectType();
        swift_unknownObjectRetain();
        v51 = dispatch thunk of Actor.unownedExecutor.getter();
        v53 = v52;
        swift_unknownObjectRelease();
LABEL_15:
        v54 = **(v0 + 128);

        if (v53 | v51)
        {
          v55 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v51;
          *(v0 + 40) = v53;
        }

        else
        {
          v55 = 0;
        }

        v181 = *(v0 + 368);
        v187 = *(v0 + 440);
        v66 = *(v0 + 304);
        v68 = *(v0 + 288);
        v67 = *(v0 + 296);
        v69 = *(v0 + 280);
        v70 = *(v0 + 176);
        v71 = *(v0 + 312) + 8;
        *(v0 + 80) = 1;
        *(v0 + 88) = v55;
        *(v0 + 96) = v54;
        swift_task_create();

        sub_100002CE0(v70, &qword_1005A9690, &qword_1004C2A00);
        (*(v68 + 8))(v67, v69);
        result = v187(v181, v66);
        goto LABEL_31;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v46 + 8))(v49, v45);
      if (*v48)
      {
        goto LABEL_12;
      }
    }

    v51 = 0;
    v53 = 0;
    goto LABEL_15;
  }

  v21 = *(v0 + 240);
  v22 = *(v0 + 208);
  sub_10044AD48(v2, v21, type metadata accessor for FriendSharedSecretsRecord);
  sub_100005F04(v21 + *(v1 + 24), v22, &qword_1005AEB98, &unk_1004D07C0);
  v23 = type metadata accessor for SharedSecretKey();
  LODWORD(v21) = (*(*(v23 - 8) + 48))(v22, 1, v23);
  sub_100002CE0(v22, &qword_1005AEB98, &unk_1004D07C0);
  if (v21 != 1)
  {
    v24 = *(v0 + 200);
    sub_100005F04(*(v0 + 240) + *(*(v0 + 224) + 28), v24, &unk_1005AE5B0, &qword_1004C32F0);
    v25 = type metadata accessor for Date();
    if ((*(*(v25 - 8) + 48))(v24, 1, v25) != 1)
    {
      v87 = *(v0 + 440);
      v88 = *(v0 + 368);
      v89 = *(v0 + 304);
      v91 = *(v0 + 288);
      v90 = *(v0 + 296);
      v92 = *(v0 + 280);
      v93 = *(v0 + 200);
      v94 = *(v0 + 312) + 8;
      sub_10044ACE8(*(v0 + 240), type metadata accessor for FriendSharedSecretsRecord);
      (*(v91 + 8))(v90, v92);
      v87(v88, v89);
      result = sub_100002CE0(v93, &unk_1005AE5B0, &qword_1004C32F0);
      goto LABEL_31;
    }

    sub_100002CE0(*(v0 + 200), &unk_1005AE5B0, &qword_1004C32F0);
  }

  v26 = *(v0 + 424);
  v27 = *(v0 + 432);
  (*(v0 + 416))(*(v0 + 352), *(v0 + 368), *(v0 + 304));
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = os_log_type_enabled(v28, v29);
  v31 = *(v0 + 440);
  v32 = *(v0 + 352);
  v34 = *(v0 + 304);
  v33 = *(v0 + 312);
  if (v30)
  {
    v35 = swift_slowAlloc();
    v190 = swift_slowAlloc();
    *v35 = 136446723;
    *(v35 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004EA5D0, &v190);
    *(v35 + 12) = 2160;
    *(v35 + 14) = 1752392040;
    *(v35 + 22) = 2081;
    sub_1000069AC(&qword_1005AA720, &type metadata accessor for Friend);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    v31(v32, v34);
    v39 = sub_10000D01C(v36, v38, &v190);

    *(v35 + 24) = v39;
    _os_log_impl(&_mh_execute_header, v28, v29, "%{public}s Missing outgoingSharedSecret for %{private,mask.hash}s. Requesting token...", v35, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v31(v32, v34);
  }

  v169 = *(v0 + 424);
  v163 = *(v0 + 368);
  v166 = *(v0 + 416);
  v56 = *(v0 + 344);
  v57 = *(v0 + 312);
  v58 = *(v0 + 304);
  v59 = *(v0 + 192);
  v161 = v59;
  v180 = *(v0 + 160);
  v186 = *(v0 + 184);
  v172 = *(v0 + 152);
  v175 = (*(v0 + 464) + 40) & ~*(v0 + 464);
  v60 = (*(v0 + 320) + v175 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = type metadata accessor for TaskPriority();
  v62 = *(v61 - 8);
  (*(v62 + 56))(v59, 1, 1, v61);
  v166(v56, v163, v58);
  v63 = swift_allocObject();
  v63[2] = 0;
  v64 = v63 + 2;
  v63[3] = 0;
  v63[4] = v172;
  (*(v57 + 32))(v63 + v175, v56, v58);
  *(v63 + v60) = v180;
  sub_100005F04(v161, v186, &qword_1005A9690, &qword_1004C2A00);
  LODWORD(v60) = (*(v62 + 48))(v186, 1, v61);

  v65 = *(v0 + 184);
  if (v60 == 1)
  {
    sub_100002CE0(*(v0 + 184), &qword_1005A9690, &qword_1004C2A00);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v62 + 8))(v65, v61);
  }

  if (*v64)
  {
    v73 = v63[3];
    v74 = *v64;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v75 = dispatch thunk of Actor.unownedExecutor.getter();
    v77 = v76;
    swift_unknownObjectRelease();
  }

  else
  {
    v75 = 0;
    v77 = 0;
  }

  v78 = **(v0 + 128);

  if (v77 | v75)
  {
    v79 = v0 + 48;
    *(v0 + 48) = 0;
    *(v0 + 56) = 0;
    *(v0 + 64) = v75;
    *(v0 + 72) = v77;
  }

  else
  {
    v79 = 0;
  }

  v176 = *(v0 + 368);
  v182 = *(v0 + 440);
  v80 = *(v0 + 304);
  v81 = *(v0 + 288);
  v82 = *(v0 + 296);
  v83 = *(v0 + 280);
  v84 = *(v0 + 240);
  v85 = *(v0 + 192);
  v86 = *(v0 + 312) + 8;
  *(v0 + 104) = 1;
  *(v0 + 112) = v79;
  *(v0 + 120) = v78;
  swift_task_create();

  sub_100002CE0(v85, &qword_1005A9690, &qword_1004C2A00);
  sub_10044ACE8(v84, type metadata accessor for FriendSharedSecretsRecord);
  (*(v81 + 8))(v82, v83);
  result = v182(v176, v80);
LABEL_31:
  v95 = *(v0 + 408) + 1;
  if (v95 == *(v0 + 400))
  {
LABEL_32:
    v96 = *(v0 + 392);

    v98 = *(v0 + 360);
    v97 = *(v0 + 368);
    v100 = *(v0 + 344);
    v99 = *(v0 + 352);
    v102 = *(v0 + 328);
    v101 = *(v0 + 336);
    v103 = *(v0 + 296);
    v104 = *(v0 + 272);
    v106 = *(v0 + 240);
    v105 = *(v0 + 248);
    v164 = *(v0 + 216);
    v167 = *(v0 + 208);
    v170 = *(v0 + 200);
    v173 = *(v0 + 192);
    v177 = *(v0 + 184);
    v183 = *(v0 + 176);
    v188 = *(v0 + 168);

    v107 = *(v0 + 8);

    return v107();
  }

  else
  {
    while (1)
    {
      *(v0 + 408) = v95;
      v113 = *(v0 + 392);
      if (v95 >= *(v113 + 16))
      {
        __break(1u);
        return result;
      }

      v114 = *(v0 + 368);
      v115 = *(v0 + 304);
      v116 = *(v0 + 312);
      v118 = *(v116 + 16);
      v116 += 16;
      v117 = v118;
      v119 = v113 + ((*(v0 + 464) + 32) & ~*(v0 + 464)) + *(v116 + 56) * v95;
      *(v0 + 416) = v118;
      *(v0 + 424) = v116 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v118(v114, v119, v115);
      if (qword_1005A8530 != -1)
      {
        swift_once();
      }

      v120 = *(v0 + 360);
      v121 = *(v0 + 368);
      v122 = *(v0 + 304);
      v123 = type metadata accessor for Logger();
      *(v0 + 432) = sub_10000A6F0(v123, qword_1005E0C30);
      v117(v120, v121, v122);
      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.default.getter();
      v126 = os_log_type_enabled(v124, v125);
      v127 = *(v0 + 360);
      v129 = *(v0 + 304);
      v128 = *(v0 + 312);
      v189 = v117;
      if (v126)
      {
        v130 = swift_slowAlloc();
        v178 = swift_slowAlloc();
        v190 = v178;
        *v130 = 141558275;
        *(v130 + 4) = 1752392040;
        *(v130 + 12) = 2081;
        sub_1000069AC(&qword_1005AA720, &type metadata accessor for Friend);
        v131 = dispatch thunk of CustomStringConvertible.description.getter();
        v133 = v132;
        v134 = v129;
        v135 = *(v128 + 8);
        v135(v127, v134);
        v136 = sub_10000D01C(v131, v133, &v190);

        *(v130 + 14) = v136;
        _os_log_impl(&_mh_execute_header, v124, v125, "Checking if we need to request token for %{private,mask.hash}s", v130, 0x16u);
        sub_100004984(v178);
      }

      else
      {

        v137 = v129;
        v135 = *(v128 + 8);
        v135(v127, v137);
      }

      *(v0 + 440) = v135;
      v138 = *(v0 + 368);
      v139 = *(v0 + 280);
      v140 = *(v0 + 288);
      v142 = *(v0 + 264);
      v141 = *(v0 + 272);
      v144 = *(v0 + 248);
      v143 = *(v0 + 256);
      Friend.handle.getter();
      Handle.peerID.getter();
      (*(v142 + 8))(v141, v143);
      if ((*(v140 + 48))(v144, 1, v139) != 1)
      {
        break;
      }

      v145 = *(v0 + 368);
      v146 = *(v0 + 328);
      v147 = *(v0 + 304);
      sub_100002CE0(*(v0 + 248), &qword_1005A96E0, &qword_1004C2A80);
      v189(v146, v145, v147);
      v148 = Logger.logObject.getter();
      v149 = static os_log_type_t.error.getter();
      v150 = os_log_type_enabled(v148, v149);
      v151 = *(v0 + 368);
      v152 = *(v0 + 328);
      v154 = *(v0 + 304);
      v153 = *(v0 + 312);
      if (v150)
      {
        v108 = swift_slowAlloc();
        v190 = swift_slowAlloc();
        *v108 = 136446723;
        *(v108 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004EA5D0, &v190);
        *(v108 + 12) = 2160;
        *(v108 + 14) = 1752392040;
        *(v108 + 22) = 2081;
        sub_1000069AC(&qword_1005AA720, &type metadata accessor for Friend);
        v184 = v151;
        v109 = dispatch thunk of CustomStringConvertible.description.getter();
        v111 = v110;
        v135(v152, v154);
        v112 = sub_10000D01C(v109, v111, &v190);

        *(v108 + 24) = v112;
        _os_log_impl(&_mh_execute_header, v148, v149, "%{public}s No peerID for following %{private,mask.hash}s", v108, 0x20u);
        swift_arrayDestroy();

        result = (v135)(v184, v154);
      }

      else
      {

        v135(v152, v154);
        result = (v135)(v151, v154);
      }

      v95 = *(v0 + 408) + 1;
      if (v95 == *(v0 + 400))
      {
        goto LABEL_32;
      }
    }

    v155 = *(v0 + 144);
    (*(*(v0 + 288) + 32))(*(v0 + 296), *(v0 + 248), *(v0 + 280));
    v156 = *(v155 + 128);
    v157 = swift_task_alloc();
    *(v0 + 448) = v157;
    *v157 = v0;
    v157[1] = sub_1004464CC;
    v158 = *(v0 + 296);
    v159 = *(v0 + 216);

    return sub_1001C4430(v159, v158);
  }
}

uint64_t sub_1004477F0()
{
  v1 = v0[55];
  v2 = v0[49];
  v3 = v0[45];
  v4 = v0[46];
  v5 = v0[44];
  v14 = v0[43];
  v15 = v0[42];
  v7 = v0[38];
  v6 = v0[39];
  v8 = v0[36];
  v9 = v0[37];
  v10 = v0[35];
  v16 = v0[41];
  v17 = v0[34];
  v18 = v0[31];
  v19 = v0[30];
  v20 = v0[27];
  v21 = v0[26];
  v22 = v0[25];
  v23 = v0[24];
  v24 = v0[23];
  v25 = v0[22];
  v26 = v0[21];

  (*(v8 + 8))(v9, v10);
  v1(v4, v7);

  v11 = v0[1];
  v12 = v0[57];

  return v11();
}

uint64_t sub_100447978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v7 = type metadata accessor for Handle();
  v5[3] = v7;
  v8 = *(v7 - 8);
  v5[4] = v8;
  v9 = *(v8 + 64) + 15;
  v5[5] = swift_task_alloc();
  v10 = type metadata accessor for Friend();
  v5[6] = v10;
  v11 = *(v10 - 8);
  v5[7] = v11;
  v12 = *(v11 + 64) + 15;
  v5[8] = swift_task_alloc();
  v13 = swift_task_alloc();
  v5[9] = v13;
  *v13 = v5;
  v13[1] = sub_100447ACC;

  return sub_100447C18(a5);
}

uint64_t sub_100447ACC()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10044ADDC, 0, 0);
  }

  else
  {
    v4 = v3[8];
    v5 = v3[5];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_100447C18(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for UUID();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = *(*(sub_10004B564(&qword_1005A96E0, &qword_1004C2A80) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v7 = type metadata accessor for MessagingOptions();
  v2[10] = v7;
  v8 = *(v7 - 8);
  v2[11] = v8;
  v9 = *(v8 + 64) + 15;
  v2[12] = swift_task_alloc();
  v10 = sub_10004B564(&qword_1005A92B0, &qword_1004D8050);
  v2[13] = v10;
  v11 = *(v10 - 8);
  v2[14] = v11;
  v12 = *(v11 + 64) + 15;
  v2[15] = swift_task_alloc();
  v13 = *(*(sub_10004B564(&qword_1005A9110, &qword_1004C25F8) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v14 = type metadata accessor for Account();
  v2[17] = v14;
  v15 = *(v14 - 8);
  v2[18] = v15;
  v16 = *(v15 + 64) + 15;
  v2[19] = swift_task_alloc();
  v17 = type metadata accessor for MessagingCapability();
  v2[20] = v17;
  v18 = *(v17 - 8);
  v2[21] = v18;
  v19 = *(v18 + 64) + 15;
  v2[22] = swift_task_alloc();
  v20 = type metadata accessor for Destination();
  v2[23] = v20;
  v21 = *(v20 - 8);
  v2[24] = v21;
  v22 = *(v21 + 64) + 15;
  v2[25] = swift_task_alloc();
  v23 = type metadata accessor for Handle();
  v2[26] = v23;
  v24 = *(v23 - 8);
  v2[27] = v24;
  v25 = *(v24 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();

  return _swift_task_switch(sub_100447FAC, v1, 0);
}

uint64_t sub_100447FAC()
{
  v25 = v0;
  v1 = v0[32];
  v2 = v0[4];
  Friend.handle.getter();
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v3 = v0[31];
  v4 = v0[32];
  v5 = v0[26];
  v6 = v0[27];
  v7 = type metadata accessor for Logger();
  v0[33] = sub_10000A6F0(v7, qword_1005E0C30);
  v8 = *(v6 + 16);
  v0[34] = v8;
  v0[35] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v4, v5);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[31];
  v14 = v0[26];
  v13 = v0[27];
  if (v11)
  {
    v15 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v15 = 136446723;
    *(v15 + 4) = sub_10000D01C(0xD000000000000013, 0x80000001004EA640, &v24);
    *(v15 + 12) = 2160;
    *(v15 + 14) = 1752392040;
    *(v15 + 22) = 2081;
    v16 = Handle.identifier.getter();
    v18 = v17;
    v19 = *(v13 + 8);
    v19(v12, v14);
    v20 = sub_10000D01C(v16, v18, &v24);

    *(v15 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s from: %{private,mask.hash}s", v15, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v19 = *(v13 + 8);
    v19(v12, v14);
  }

  v0[36] = v19;
  v21 = async function pointer to daemon.getter[1];
  v22 = swift_task_alloc();
  v0[37] = v22;
  *v22 = v0;
  v22[1] = sub_100448248;

  return daemon.getter();
}

uint64_t sub_100448248(uint64_t a1)
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
  v8 = sub_10004B564(&qword_1005A90E0, &qword_1004C2490);
  v9 = sub_1000069AC(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[41] = v9;
  v10 = sub_10001DF0C(&qword_1005A90E8, &qword_1005A90E0, &qword_1004C2490);
  *v6 = v12;
  v6[1] = sub_10044843C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10044843C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 312);
  v6 = *v2;
  *(v4 + 336) = a1;
  *(v4 + 344) = v1;

  v7 = *(v3 + 304);
  v8 = *(v3 + 40);

  if (v1)
  {
    v9 = sub_10041D368;
  }

  else
  {
    v9 = sub_10044858C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10044858C()
{
  v1 = *(v0 + 256);
  v2 = Handle.isPhoneNumber.getter();
  Handle.identifier.getter();
  v3 = *(v0 + 200);
  if (v2)
  {
    Destination.init(phoneNumber:)();
  }

  else
  {
    Destination.init(email:)();
  }

  v4 = *(v0 + 336);
  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v7 = *(v0 + 160);
  *(v0 + 464) = enum case for MessagingCapability.supportsPeopleFindingV1(_:);
  v8 = *(v6 + 104);
  *(v0 + 352) = v8;
  *(v0 + 360) = (v6 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v8(v5);

  return _swift_task_switch(sub_100448648, v4, 0);
}

uint64_t sub_100448648()
{
  v1 = *(v0[42] + 136);
  v2 = *(&async function pointer to dispatch thunk of QueryController.destinationHasCapability(destination:capability:) + 1);
  v7 = (&async function pointer to dispatch thunk of QueryController.destinationHasCapability(destination:capability:) + async function pointer to dispatch thunk of QueryController.destinationHasCapability(destination:capability:));
  v3 = swift_task_alloc();
  v0[46] = v3;
  *v3 = v0;
  v3[1] = sub_1004486FC;
  v4 = v0[25];
  v5 = v0[22];

  return v7(v4, v5);
}

uint64_t sub_1004486FC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 368);
  v17 = *v2;
  *(*v2 + 376) = v1;

  if (v1)
  {
    v6 = *(v4 + 336);
    v7 = sub_10041BF4C;
  }

  else
  {
    v9 = *(v4 + 192);
    v8 = *(v4 + 200);
    v10 = *(v4 + 176);
    v11 = *(v4 + 184);
    v12 = *(v4 + 160);
    v13 = *(v4 + 168);
    v14 = *(v4 + 40);
    *(v4 + 469) = a1 & 1;
    v15 = *(v13 + 8);
    *(v4 + 384) = v15;
    *(v4 + 392) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v15(v10, v12);
    (*(v9 + 8))(v8, v11);
    v7 = sub_100448878;
    v6 = v14;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100448878()
{
  v38 = v0;
  if (*(v0 + 469) == 1)
  {
    v1 = async function pointer to daemon.getter[1];
    v2 = swift_task_alloc();
    *(v0 + 400) = v2;
    *v2 = v0;
    v2[1] = sub_100448BE0;

    return daemon.getter();
  }

  else
  {
    v3 = *(v0 + 280);
    v4 = *(v0 + 264);
    (*(v0 + 272))(*(v0 + 224), *(v0 + 256), *(v0 + 208));
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 288);
    v10 = *(v0 + 216);
    v9 = *(v0 + 224);
    v11 = *(v0 + 208);
    if (v7)
    {
      v12 = swift_slowAlloc();
      v37[0] = swift_slowAlloc();
      *v12 = 136446723;
      *(v12 + 4) = sub_10000D01C(0xD000000000000013, 0x80000001004EA640, v37);
      *(v12 + 12) = 2160;
      *(v12 + 14) = 1752392040;
      *(v12 + 22) = 2081;
      v13 = Handle.identifier.getter();
      v15 = v14;
      v8(v9, v11);
      v16 = sub_10000D01C(v13, v15, v37);

      *(v12 + 24) = v16;
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s %{private,mask.hash}s missing required capability", v12, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v8(v9, v11);
    }

    v17 = *(v0 + 336);
    v18 = *(v0 + 288);
    v19 = *(v0 + 256);
    v20 = *(v0 + 208);
    sub_1003DA6A0();
    swift_allocError();
    *v21 = 3;
    swift_willThrow();

    v18(v19, v20);
    v23 = *(v0 + 248);
    v22 = *(v0 + 256);
    v25 = *(v0 + 232);
    v24 = *(v0 + 240);
    v26 = *(v0 + 224);
    v27 = *(v0 + 200);
    v28 = *(v0 + 176);
    v29 = *(v0 + 152);
    v30 = *(v0 + 120);
    v31 = *(v0 + 128);
    v34 = *(v0 + 96);
    v35 = *(v0 + 72);
    v36 = *(v0 + 64);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_100448BE0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 400);
  v5 = *v1;
  v3[51] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[52] = v7;
  v8 = type metadata accessor for AccountService(0);
  v9 = sub_1000069AC(&qword_1005A9118, type metadata accessor for AccountService);
  *v7 = v5;
  v7[1] = sub_100448D94;
  v10 = v3[41];
  v11 = v3[40];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100448D94(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 416);
  v6 = *v2;
  v4[53] = a1;
  v4[54] = v1;

  v7 = v4[51];
  if (v1)
  {
    v8 = v4[5];

    return _swift_task_switch(sub_10041D494, v8, 0);
  }

  else
  {

    v9 = swift_task_alloc();
    v4[55] = v9;
    *v9 = v6;
    v9[1] = sub_100448F40;
    v10 = v4[16];

    return sub_10000EB24(v10);
  }
}

uint64_t sub_100448F40()
{
  v1 = *(*v0 + 440);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_100449050, v2, 0);
}

uint64_t sub_100449050()
{
  v84 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 264);
    sub_100002CE0(v3, &qword_1005A9110, &qword_1004C25F8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v83[0] = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_10000D01C(0xD000000000000013, 0x80000001004EA640, v83);
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s Missing primary account to send FindingTokenReuqest with my dsid!", v7, 0xCu);
      sub_100004984(v8);
    }

    v9 = *(v0 + 424);
    v10 = *(v0 + 336);
    v11 = *(v0 + 288);
    v12 = *(v0 + 256);
    v13 = *(v0 + 208);
    v14 = *(v0 + 216);
    sub_1003DA6A0();
    swift_allocError();
    *v15 = 16;
    swift_willThrow();

    v16 = v12;
    v17 = v13;
    goto LABEL_10;
  }

  v18 = *(v0 + 272);
  v19 = *(v0 + 280);
  v20 = *(v0 + 256);
  v81 = *(v0 + 264);
  v21 = *(v0 + 240);
  v22 = *(v0 + 208);
  (*(v2 + 32))(*(v0 + 152), v3, v1);
  v23 = Account.dsidBase64EncodedString()();
  countAndFlagsBits = v23._countAndFlagsBits;
  v25 = v20;
  object = v23._object;
  v18(v21, v25, v22);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v0 + 288);
  v31 = *(v0 + 240);
  v33 = *(v0 + 208);
  v32 = *(v0 + 216);
  if (v29)
  {
    v78 = v28;
    v34 = swift_slowAlloc();
    v83[0] = swift_slowAlloc();
    *v34 = 141558787;
    *(v34 + 4) = 1752392040;
    *(v34 + 12) = 2081;
    v35 = Handle.identifier.getter();
    v37 = v36;
    v30(v31, v33);
    v38 = sub_10000D01C(v35, v37, v83);
    countAndFlagsBits = v23._countAndFlagsBits;
    object = v23._object;

    *(v34 + 14) = v38;
    *(v34 + 22) = 2160;
    *(v34 + 24) = 1752392040;
    *(v34 + 32) = 2081;
    *(v34 + 34) = sub_10000D01C(v23._countAndFlagsBits, v23._object, v83);
    _os_log_impl(&_mh_execute_header, v27, v78, "Requesting shared secret from %{private,mask.hash}s.\nserverId: %{private,mask.hash}s over IDS.", v34, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v30(v31, v33);
  }

  v39 = *(v0 + 432);
  v40 = *(v0 + 120);
  *(v0 + 468) = 3;
  *(v0 + 16) = countAndFlagsBits;
  *(v0 + 24) = object;
  sub_10006DFA4();
  sub_10042E284();
  sub_10042E2D8();
  Message.init<A>(type:version:payload:)();
  if (v39)
  {
    v41 = *(v0 + 424);
    v42 = *(v0 + 336);
    v11 = *(v0 + 288);
    v43 = *(v0 + 256);
    v44 = *(v0 + 208);
    v45 = *(v0 + 216);
    v47 = *(v0 + 144);
    v46 = *(v0 + 152);
    v48 = *(v0 + 136);

    (*(v47 + 8))(v46, v48);
    v16 = v43;
    v17 = v44;
LABEL_10:
    v11(v16, v17);
    v50 = *(v0 + 248);
    v49 = *(v0 + 256);
    v52 = *(v0 + 232);
    v51 = *(v0 + 240);
    v53 = *(v0 + 224);
    v54 = *(v0 + 200);
    v55 = *(v0 + 176);
    v56 = *(v0 + 152);
    v57 = *(v0 + 120);
    v58 = *(v0 + 128);
    v75 = *(v0 + 96);
    log = *(v0 + 72);
    v79 = *(v0 + 64);

    v59 = *(v0 + 8);

    return v59();
  }

  v61 = *(v0 + 256);
  v62 = *(v0 + 192);
  sub_10004B564(&qword_1005A9270, &qword_1004C5810);
  v63 = *(v62 + 72);
  v64 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  *(swift_allocObject() + 16) = xmmword_1004C1900;
  v65 = Handle.isPhoneNumber.getter();
  Handle.identifier.getter();
  if (v65)
  {
    Destination.init(phoneNumber:)();
  }

  else
  {
    Destination.init(email:)();
  }

  v66 = *(v0 + 384);
  v76 = *(v0 + 392);
  v68 = *(v0 + 352);
  v67 = *(v0 + 360);
  v69 = *(v0 + 464);
  v70 = *(v0 + 160);
  v71 = *(v0 + 168);
  v80 = *(v0 + 96);
  v82 = *(v0 + 336);
  (*(*(v0 + 56) + 56))(*(v0 + 72), 1, 1, *(v0 + 48));
  sub_10004B564(&qword_1005AB930, &qword_1004C5818);
  v72 = *(v71 + 72);
  v73 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1004C1900;
  v68(v74 + v73, v69, v70);
  sub_10025EC18(v74);
  swift_setDeallocating();
  v66(v74 + v73, v70);
  swift_deallocClassInstance();
  sub_100293190(_swiftEmptyArrayStorage);
  MessagingOptions.init(destinations:expectsPeerResponse:responseIdentifier:timeToLive:fireAndForget:requiredCapabilities:lackingCapabilities:queueOneIdentifier:)();

  return _swift_task_switch(sub_100449728, v82, 0);
}

uint64_t sub_100449728()
{
  v1 = *(v0[42] + 128);
  v2 = async function pointer to InternetMessaging.send(message:messageOptions:)[1];
  v3 = swift_task_alloc();
  v0[56] = v3;
  *v3 = v0;
  v3[1] = sub_1004497D0;
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[8];

  return InternetMessaging.send(message:messageOptions:)(v6, v4, v5);
}

uint64_t sub_1004497D0()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v8 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v4 = v2[5];
    v5 = sub_10041D1B8;
  }

  else
  {
    v6 = v2[5];
    (*(v2[7] + 8))(v2[8], v2[6]);
    v5 = sub_100449904;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100449904()
{
  v47 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  (*(v0 + 272))(*(v0 + 232), *(v0 + 256), *(v0 + 208));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 336);
  v7 = *(v0 + 288);
  v8 = *(v0 + 256);
  v9 = *(v0 + 232);
  v10 = *(v0 + 208);
  v35 = *(v0 + 216);
  v42 = *(v0 + 152);
  v44 = *(v0 + 144);
  v11 = *(v0 + 112);
  v39 = *(v0 + 120);
  v40 = *(v0 + 136);
  v37 = *(v0 + 96);
  v38 = *(v0 + 104);
  v12 = *(v0 + 88);
  v36 = *(v0 + 80);
  if (v5)
  {
    v33 = *(v0 + 424);
    v34 = *(v0 + 256);
    v13 = swift_slowAlloc();
    v32 = v4;
    v14 = swift_slowAlloc();
    v46 = v14;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    v15 = Handle.identifier.getter();
    log = v3;
    v17 = v16;
    v7(v9, v10);
    v18 = sub_10000D01C(v15, v17, &v46);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, log, v32, "Successfully requested finding token from %{private,mask.hash}s", v13, 0x16u);
    sub_100004984(v14);

    (*(v12 + 8))(v37, v36);
    (*(v11 + 8))(v39, v38);
    (*(v44 + 8))(v42, v40);
    v7(v34, v10);
  }

  else
  {

    v7(v9, v10);
    (*(v12 + 8))(v37, v36);
    (*(v11 + 8))(v39, v38);
    (*(v44 + 8))(v42, v40);
    v7(v8, v10);
  }

  v20 = *(v0 + 248);
  v19 = *(v0 + 256);
  v22 = *(v0 + 232);
  v21 = *(v0 + 240);
  v23 = *(v0 + 224);
  v24 = *(v0 + 200);
  v25 = *(v0 + 176);
  v26 = *(v0 + 152);
  v28 = *(v0 + 120);
  v27 = *(v0 + 128);
  v41 = *(v0 + 96);
  v43 = *(v0 + 72);
  v45 = *(v0 + 64);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_100449C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v7 = type metadata accessor for Handle();
  v5[3] = v7;
  v8 = *(v7 - 8);
  v5[4] = v8;
  v9 = *(v8 + 64) + 15;
  v5[5] = swift_task_alloc();
  v10 = type metadata accessor for Friend();
  v5[6] = v10;
  v11 = *(v10 - 8);
  v5[7] = v11;
  v12 = *(v11 + 64) + 15;
  v5[8] = swift_task_alloc();
  v13 = swift_task_alloc();
  v5[9] = v13;
  *v13 = v5;
  v13[1] = sub_100449DC4;

  return sub_100447C18(a5);
}

uint64_t sub_100449DC4()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100449F10, 0, 0);
  }

  else
  {
    v4 = v3[8];
    v5 = v3[5];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_100449F10()
{
  v32 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = v0[2];
  v6 = type metadata accessor for Logger();
  sub_10000A6F0(v6, qword_1005E0C30);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[7];
  v11 = v0[8];
  v12 = v0[6];
  if (v9)
  {
    v13 = v0[4];
    v14 = v0[5];
    v26 = v0[3];
    v29 = v0[10];
    v15 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v15 = 141558531;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    v27 = v8;
    Friend.handle.getter();
    v16 = Handle.identifier.getter();
    v18 = v17;
    (*(v13 + 8))(v14, v26);
    (*(v10 + 8))(v11, v12);
    v19 = sub_10000D01C(v16, v18, &v31);

    *(v15 + 14) = v19;
    *(v15 + 22) = 2114;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v20;
    *v28 = v20;
    _os_log_impl(&_mh_execute_header, v7, v27, "Failed to request token from %{private,mask.hash}s error - %{public}@", v15, 0x20u);
    sub_100002CE0(v28, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v30);
  }

  else
  {
    v21 = v0[10];

    (*(v10 + 8))(v11, v12);
  }

  v22 = v0[8];
  v23 = v0[5];

  v24 = v0[1];

  return v24();
}

uint64_t sub_10044A204()
{
  v2 = *(sub_10004B564(&qword_1005B3B60, &qword_1004D8B88) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_10043A6AC(v0 + v3, v4);
}

uint64_t sub_10044A314()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000368C;

  return sub_100443B88(v2, v3);
}

uint64_t sub_10044A3AC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_100445288(a1, v5);
}