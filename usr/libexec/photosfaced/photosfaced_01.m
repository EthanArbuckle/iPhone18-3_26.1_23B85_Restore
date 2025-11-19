uint64_t sub_10001A028()
{
  v94 = v0;
  v1 = v0[48];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[8];
  v7 = v0[6];
  static Log.photos.getter();
  v3(v6, v5, v7);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[39];
    v77 = v0[40];
    v88 = v0[31];
    v90 = v0[32];
    v83 = v0[13];
    v85 = v0[15];
    v87 = v0[12];
    v82 = v9;
    v11 = v0[10];
    v12 = v0[6];
    v13 = v0[7] + 8;
    v14 = v0[8];
    v15 = v0[43];
    v16 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    log = swift_slowAlloc();
    v93[0] = log;
    *v16 = 136315394;
    v10(v11, v14, v12);
    v15(v14, v12);
    sub_1000438BC(&qword_10012A1E0, &type metadata accessor for DailyID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v15(v11, v12);
    v20 = sub_100102F80(v17, v19, v93);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2112;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v21;
    *v78 = v21;
    _os_log_impl(&_mh_execute_header, v8, v82, "Failed to process face %s with error %@", v16, 0x16u);
    sub_10000C460(v78, &qword_100129EF8, &qword_100108C70);

    sub_10000C304(log);

    v90(v85, v83);
    result = (v15)(v87, v12);
  }

  else
  {
    v23 = v0[31];
    v91 = v0[32];
    v24 = v0[15];
    v26 = v0[12];
    v25 = v0[13];
    v27 = v0[6];
    v28 = v0[7] + 8;
    v29 = v8;
    v30 = v0[43];
    v30(v0[8], v27);

    v91(v24, v25);
    result = v30(v26, v27);
  }

  v32 = v0[37];
  v31 = v0[38];
  v0[49] = v31;
  v33 = v0[36] + 1;
  if (v33 == v0[30])
  {
    v34 = v0[25];

    v35 = swift_task_alloc();
    v0[34] = v35;
    *v35 = v0;
    v35[1] = sub_1000184B8;
    v36 = v0[2];

    return sub_10002E4C4();
  }

  else
  {
    v0[37] = v32;
    v0[38] = v31;
    v0[36] = v33;
    v37 = v0[25];
    if (v33 >= *(v37 + 16))
    {
      __break(1u);
    }

    else
    {
      v38 = v0[12];
      v39 = v0[6];
      v40 = v0[7];
      v42 = *(v40 + 16);
      v40 += 16;
      v41 = v42;
      v43 = v37 + ((*(v40 + 64) + 32) & ~*(v40 + 64)) + *(v40 + 56) * v33;
      v0[39] = v42;
      v0[40] = v40 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v42(v38, v43, v39);
      static Task<>.checkCancellation()();
      v44 = v0[6];
      v45 = v0[17];
      v47 = v0[11];
      v46 = v0[12];
      v48 = v0[2];
      static Log.photos.getter();
      v42(v47, v46, v44);

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      v51 = os_log_type_enabled(v49, v50);
      v53 = v0[31];
      v52 = v0[32];
      v54 = v0[17];
      v55 = v0[13];
      v56 = v0[11];
      if (v51)
      {
        v84 = v50;
        v57 = v0[10];
        v79 = v0[7];
        v89 = v0[17];
        v92 = v0[32];
        v58 = v0[6];
        v59 = v0[2];
        loga = v49;
        v60 = swift_slowAlloc();
        v93[0] = swift_slowAlloc();
        *v60 = 136315394;
        v61 = *(v59 + 16);
        v86 = v55;
        v62 = PhotosFaceType.description.getter();
        v64 = v63;

        v65 = sub_100102F80(v62, v64, v93);

        *(v60 + 4) = v65;
        *(v60 + 12) = 2080;
        v41(v57, v56, v58);
        v66 = *(v79 + 8);
        v66(v56, v58);
        sub_1000438BC(&qword_10012A1E0, &type metadata accessor for DailyID);
        v67 = dispatch thunk of CustomStringConvertible.description.getter();
        v69 = v68;
        v66(v57, v58);
        v70 = sub_100102F80(v67, v69, v93);

        *(v60 + 14) = v70;
        _os_log_impl(&_mh_execute_header, loga, v84, "Processing %s face %s", v60, 0x16u);
        swift_arrayDestroy();

        v92(v89, v86);
      }

      else
      {
        v71 = v0[2];
        v66 = *(v0[7] + 8);
        v66(v0[11], v0[6]);

        v52(v54, v55);
      }

      v0[43] = v66;
      v72 = static TestProperties.bufferSize.getter();
      v73 = swift_task_alloc();
      v0[44] = v73;
      *v73 = v0;
      v73[1] = sub_100018C84;
      v74 = v0[12];
      v75 = v0[5];
      v76 = v0[2];

      return sub_100020A84(v75, v74, v72);
    }
  }

  return result;
}

uint64_t sub_10001A828()
{
  v1[2] = v0;
  v2 = sub_10000560C(&qword_10012A3C8, &qword_1001090B0);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for ShuffleID();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v1[13] = v8;
  v9 = *(v8 - 8);
  v1[14] = v9;
  v10 = *(v9 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = type metadata accessor for CommunicationActor();
  v1[22] = static CommunicationActor.shared.getter();
  v1[23] = static CommunicationActor.shared.getter();
  v11 = type metadata accessor for ShuffleDatabase();
  v12 = sub_1000438BC(&qword_10012A478, &type metadata accessor for ShuffleDatabase);
  v13 = async function pointer to dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryList()[1];
  v14 = swift_task_alloc();
  v1[24] = v14;
  *v14 = v1;
  v14[1] = sub_10001AAC4;

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryList()(v11, v12);
}

uint64_t sub_10001AAC4(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *(*v2 + 184);
  v7 = *(*v2 + 168);
  v12 = *v2;
  v4[25] = a1;
  v4[26] = v3;

  v4[27] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v3)
  {
    v10 = sub_100015788;
  }

  else
  {
    v10 = sub_10001AC58;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_10001AC58()
{
  v1 = v0[27];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];

  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[28] = v6;
  v0[29] = v5;

  return _swift_task_switch(sub_10001ACE4, v6, v5);
}

uint64_t sub_10001ACE4()
{
  v129 = v0;
  v1 = v0[25];
  v2 = *(v1 + 16);
  v0[30] = v2;
  if (!v2)
  {
    v26 = v0[22];
    v27 = v0[20];
    v28 = v0[2];

    static Log.session.getter();

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[20];
    v34 = v0[13];
    v33 = v0[14];
    v35 = v0[2];
    if (v31)
    {
      v124 = v0[20];
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v128[0] = v37;
      *v36 = 136315138;
      v38 = *(v35 + 16);
      v39 = PhotosFaceType.description.getter();
      v41 = v40;

      v42 = sub_100102F80(v39, v41, v128);

      *(v36 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v29, v30, "No %s faces. Exiting.", v36, 0xCu);
      sub_10000C304(v37);

      (*(v33 + 8))(v124, v34);
    }

    else
    {
      v96 = v0[2];

      (*(v33 + 8))(v32, v34);
    }

    v98 = v0[19];
    v97 = v0[20];
    v100 = v0[17];
    v99 = v0[18];
    v102 = v0[15];
    v101 = v0[16];
    v104 = v0[11];
    v103 = v0[12];
    v106 = v0[9];
    v105 = v0[10];
    v122 = v0[8];
    v127 = v0[5];

    v69 = v0[1];
    goto LABEL_14;
  }

  v3 = v0[19];
  v4 = v0[2];
  static Log.session.getter();
  swift_bridgeObjectRetain_n();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[25];
  v9 = v0[19];
  v10 = v0[13];
  v11 = v0[14];
  if (v7)
  {
    v117 = v0[6];
    v123 = v0[19];
    v12 = v0[2];
    v13 = swift_slowAlloc();
    v128[0] = swift_slowAlloc();
    *v13 = 134218498;
    *(v13 + 4) = *(v1 + 16);
    *(v13 + 12) = 2080;
    v14 = *(v12 + 16);
    v15 = PhotosFaceType.description.getter();
    v119 = v10;
    v17 = v16;

    v18 = sub_100102F80(v15, v17, v128);

    *(v13 + 14) = v18;
    *(v13 + 22) = 2080;
    v19 = Array.description.getter();
    v21 = v20;
    swift_bridgeObjectRelease_n();
    v22 = sub_100102F80(v19, v21, v128);

    *(v13 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v5, v6, "Processing %ld %s: %s", v13, 0x20u);
    swift_arrayDestroy();

    v25 = *(v11 + 8);
    v24 = v11 + 8;
    v23 = v25;
    v25(v123, v119);
  }

  else
  {
    v43 = v0[2];
    v44 = v0[25];
    swift_bridgeObjectRelease_n();

    v45 = *(v11 + 8);
    v24 = v11 + 8;
    v23 = v45;
    v45(v9, v10);
  }

  v0[31] = v24;
  v0[32] = v23;
  v46 = v0[7];
  v47 = v0[25];
  v48 = v0[26];
  v0[36] = 0;
  v0[37] = 0;
  v0[35] = 0;
  v49 = *(v47 + 16);

  if (!v49)
  {
    __break(1u);
    return result;
  }

  v53 = *(v46 + 16);
  v52 = v46 + 16;
  v51 = v53;
  v54 = v0[12];
  v55 = v0[6];
  v56 = (*(v52 + 64) + 32) & ~*(v52 + 64);
  v0[38] = v53;
  v0[39] = v52 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v53(v54, result + v56, v55);
  static Task<>.checkCancellation()();
  v57 = v0[6];
  if (v48)
  {
    v58 = v0[25];
    v59 = v0[22];
    (*(v0[7] + 8))(v0[12], v0[6]);

    swift_bridgeObjectRelease_n();
    v61 = v0[19];
    v60 = v0[20];
    v63 = v0[17];
    v62 = v0[18];
    v65 = v0[15];
    v64 = v0[16];
    v67 = v0[11];
    v66 = v0[12];
    v68 = v0[10];
    v118 = v0[9];
    v120 = v0[8];
    v125 = v0[5];

    v69 = v0[1];
LABEL_14:

    return v69();
  }

  v70 = v0[17];
  v72 = v0[11];
  v71 = v0[12];
  v73 = v0[2];
  static Log.photos.getter();
  v51(v72, v71, v57);

  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();
  v76 = os_log_type_enabled(v74, v75);
  v78 = v0[31];
  v77 = v0[32];
  v79 = v0[17];
  v80 = v0[13];
  v81 = v0[11];
  if (v76)
  {
    v115 = v75;
    v82 = v0[10];
    v113 = v0[7];
    v121 = v0[17];
    v126 = v0[32];
    v83 = v0[6];
    v84 = v0[2];
    log = v74;
    v85 = swift_slowAlloc();
    v128[0] = swift_slowAlloc();
    *v85 = 136315394;
    v86 = *(v84 + 16);
    v116 = v80;
    v87 = PhotosFaceType.description.getter();
    v89 = v88;

    v90 = sub_100102F80(v87, v89, v128);

    *(v85 + 4) = v90;
    *(v85 + 12) = 2080;
    v51(v82, v81, v83);
    v91 = *(v113 + 8);
    v91(v81, v83);
    sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID);
    v92 = dispatch thunk of CustomStringConvertible.description.getter();
    v94 = v93;
    v91(v82, v83);
    v95 = sub_100102F80(v92, v94, v128);

    *(v85 + 14) = v95;
    _os_log_impl(&_mh_execute_header, log, v115, "Processing %s face %s", v85, 0x16u);
    swift_arrayDestroy();

    v126(v121, v116);
  }

  else
  {
    v107 = v0[2];
    v91 = *(v0[7] + 8);
    v91(v0[11], v0[6]);

    v77(v79, v80);
  }

  v0[42] = v91;
  v108 = static TestProperties.bufferSize.getter();
  v109 = swift_task_alloc();
  v0[43] = v109;
  *v109 = v0;
  v109[1] = sub_10001B524;
  v110 = v0[12];
  v111 = v0[5];
  v112 = v0[2];

  return sub_100021028(v111, v110, v108);
}

uint64_t sub_10001B524()
{
  v2 = *(*v1 + 344);
  v3 = *v1;
  v3[44] = v0;

  if (v0)
  {
    v4 = v3[28];
    v5 = v3[29];

    return _swift_task_switch(sub_10001B868, v4, v5);
  }

  else
  {
    v6 = async function pointer to AsyncSequence.collect()[1];
    v7 = swift_task_alloc();
    v3[45] = v7;
    v8 = sub_10000CC24(&qword_10012A3D8, &qword_10012A3C8, &qword_1001090B0);
    *v7 = v3;
    v7[1] = sub_10001B6D8;
    v9 = v3[5];
    v10 = v3[3];

    return AsyncSequence.collect()(v10, v8);
  }
}

uint64_t sub_10001B6D8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 360);
  v6 = *v2;
  v4[46] = a1;
  v4[47] = v1;

  (*(v3[4] + 8))(v3[5], v3[3]);
  v7 = v3[29];
  v8 = v3[28];
  if (v1)
  {
    v9 = sub_10001C8C8;
  }

  else
  {
    v9 = sub_10001C068;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_10001B868()
{
  v94 = v0;
  v1 = v0[44];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[8];
  v7 = v0[6];
  static Log.photos.getter();
  v3(v6, v5, v7);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[38];
    v77 = v0[39];
    v88 = v0[31];
    v90 = v0[32];
    v83 = v0[13];
    v85 = v0[15];
    v87 = v0[12];
    v82 = v9;
    v11 = v0[10];
    v12 = v0[6];
    v13 = v0[7] + 8;
    v14 = v0[8];
    v15 = v0[42];
    v16 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    log = swift_slowAlloc();
    v93[0] = log;
    *v16 = 136315394;
    v10(v11, v14, v12);
    v15(v14, v12);
    sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v15(v11, v12);
    v20 = sub_100102F80(v17, v19, v93);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2112;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v21;
    *v78 = v21;
    _os_log_impl(&_mh_execute_header, v8, v82, "Failed to process face %s with error %@", v16, 0x16u);
    sub_10000C460(v78, &qword_100129EF8, &qword_100108C70);

    sub_10000C304(log);

    v90(v85, v83);
    result = (v15)(v87, v12);
  }

  else
  {
    v23 = v0[31];
    v91 = v0[32];
    v24 = v0[15];
    v26 = v0[12];
    v25 = v0[13];
    v27 = v0[6];
    v28 = v0[7] + 8;
    v29 = v8;
    v30 = v0[42];
    v30(v0[8], v27);

    v91(v24, v25);
    result = v30(v26, v27);
  }

  v32 = v0[36];
  v31 = v0[37];
  v0[48] = v31;
  v33 = v0[35] + 1;
  if (v33 == v0[30])
  {
    v34 = v0[25];

    v35 = swift_task_alloc();
    v0[33] = v35;
    *v35 = v0;
    v35[1] = sub_100015814;
    v36 = v0[2];

    return sub_10002EC2C();
  }

  else
  {
    v0[36] = v32;
    v0[37] = v31;
    v0[35] = v33;
    v37 = v0[25];
    if (v33 >= *(v37 + 16))
    {
      __break(1u);
    }

    else
    {
      v38 = v0[12];
      v39 = v0[6];
      v40 = v0[7];
      v42 = *(v40 + 16);
      v40 += 16;
      v41 = v42;
      v43 = v37 + ((*(v40 + 64) + 32) & ~*(v40 + 64)) + *(v40 + 56) * v33;
      v0[38] = v42;
      v0[39] = v40 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v42(v38, v43, v39);
      static Task<>.checkCancellation()();
      v44 = v0[6];
      v45 = v0[17];
      v47 = v0[11];
      v46 = v0[12];
      v48 = v0[2];
      static Log.photos.getter();
      v42(v47, v46, v44);

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      v51 = os_log_type_enabled(v49, v50);
      v53 = v0[31];
      v52 = v0[32];
      v54 = v0[17];
      v55 = v0[13];
      v56 = v0[11];
      if (v51)
      {
        v84 = v50;
        v57 = v0[10];
        v79 = v0[7];
        v89 = v0[17];
        v92 = v0[32];
        v58 = v0[6];
        v59 = v0[2];
        loga = v49;
        v60 = swift_slowAlloc();
        v93[0] = swift_slowAlloc();
        *v60 = 136315394;
        v61 = *(v59 + 16);
        v86 = v55;
        v62 = PhotosFaceType.description.getter();
        v64 = v63;

        v65 = sub_100102F80(v62, v64, v93);

        *(v60 + 4) = v65;
        *(v60 + 12) = 2080;
        v41(v57, v56, v58);
        v66 = *(v79 + 8);
        v66(v56, v58);
        sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID);
        v67 = dispatch thunk of CustomStringConvertible.description.getter();
        v69 = v68;
        v66(v57, v58);
        v70 = sub_100102F80(v67, v69, v93);

        *(v60 + 14) = v70;
        _os_log_impl(&_mh_execute_header, loga, v84, "Processing %s face %s", v60, 0x16u);
        swift_arrayDestroy();

        v92(v89, v86);
      }

      else
      {
        v71 = v0[2];
        v66 = *(v0[7] + 8);
        v66(v0[11], v0[6]);

        v52(v54, v55);
      }

      v0[42] = v66;
      v72 = static TestProperties.bufferSize.getter();
      v73 = swift_task_alloc();
      v0[43] = v73;
      *v73 = v0;
      v73[1] = sub_10001B524;
      v74 = v0[12];
      v75 = v0[5];
      v76 = v0[2];

      return sub_100021028(v75, v74, v72);
    }
  }

  return result;
}

uint64_t sub_10001C068()
{
  v118 = v0;
  v1 = v0[46];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[16];
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[6];
  v8 = v0[2];
  static Log.photos.getter();
  v3(v6, v5, v7);
  swift_bridgeObjectRetain_n();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  log = v9;
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[46];
  v114 = v0[42];
  if (v11)
  {
    v98 = v0[38];
    v99 = v0[39];
    v106 = v0[31];
    v108 = v0[32];
    v101 = v0[13];
    v103 = v0[16];
    v104 = v0[12];
    v14 = v0[9];
    v13 = v0[10];
    v15 = v0[6];
    v97 = v0[7] + 8;
    v16 = v0[2];
    v17 = swift_slowAlloc();
    v117[0] = swift_slowAlloc();
    *v17 = 136315650;
    v18 = *(v16 + 16);
    v19 = PhotosFaceType.description.getter();
    v21 = v20;

    v22 = sub_100102F80(v19, v21, v117);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2048;
    LOBYTE(v21) = v10;
    v23 = *(v12 + 16);

    *(v17 + 14) = v23;

    *(v17 + 22) = 2080;
    v98(v13, v14, v15);
    v114(v14, v15);
    sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v114(v13, v15);
    v27 = sub_100102F80(v24, v26, v117);

    *(v17 + 24) = v27;
    _os_log_impl(&_mh_execute_header, log, v21, "Processed %s %ld photos from %s", v17, 0x20u);
    swift_arrayDestroy();

    v108(v103, v101);
    v114(v104, v15);
  }

  else
  {
    v28 = v0[31];
    v109 = v0[32];
    v29 = v0[16];
    v31 = v0[12];
    v30 = v0[13];
    v32 = v0[9];
    v33 = v0[6];
    v34 = v0[7];
    v35 = v0[2];

    v114(v32, v33);

    v109(v29, v30);
    v114(v31, v33);
  }

  v36 = v0[36];
  v37 = *(v0[46] + 16);

  v39 = v36 + v37;
  if (__OFADD__(v36, v37))
  {
    __break(1u);
    goto LABEL_21;
  }

  v40 = v0[47];
  v0[48] = v39;
  v41 = v0[35] + 1;
  if (v41 == v0[30])
  {
    v42 = v0[25];

    v43 = swift_task_alloc();
    v0[33] = v43;
    *v43 = v0;
    v43[1] = sub_100015814;
    v44 = v0[2];

    return sub_10002EC2C();
  }

  v0[36] = v39;
  v0[37] = v39;
  v0[35] = v41;
  v45 = v0[25];
  if (v41 >= *(v45 + 16))
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v46 = v0[12];
  v47 = v0[6];
  v48 = v0[7];
  v50 = *(v48 + 16);
  v48 += 16;
  v49 = v50;
  v51 = v45 + ((*(v48 + 64) + 32) & ~*(v48 + 64)) + *(v48 + 56) * v41;
  v0[38] = v50;
  v0[39] = v48 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v50(v46, v51, v47);
  static Task<>.checkCancellation()();
  v52 = v0[6];
  if (v40)
  {
    v53 = v0[25];
    v54 = v0[22];
    (*(v0[7] + 8))(v0[12], v0[6]);

    swift_bridgeObjectRelease_n();
    v56 = v0[19];
    v55 = v0[20];
    v58 = v0[17];
    v57 = v0[18];
    v60 = v0[15];
    v59 = v0[16];
    v62 = v0[11];
    v61 = v0[12];
    v63 = v0[10];
    v110 = v0[9];
    loga = v0[8];
    v115 = v0[5];

    v64 = v0[1];

    return v64();
  }

  else
  {
    v65 = v0[17];
    v67 = v0[11];
    v66 = v0[12];
    v68 = v0[2];
    static Log.photos.getter();
    v49(v67, v66, v52);

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();
    v71 = os_log_type_enabled(v69, v70);
    v73 = v0[31];
    v72 = v0[32];
    v74 = v0[17];
    v75 = v0[13];
    v76 = v0[11];
    if (v71)
    {
      v105 = v70;
      v77 = v0[10];
      v100 = v0[7];
      logb = v0[17];
      v116 = v0[32];
      v78 = v0[6];
      v79 = v0[2];
      v102 = v69;
      v80 = swift_slowAlloc();
      v117[0] = swift_slowAlloc();
      *v80 = 136315394;
      v81 = *(v79 + 16);
      v107 = v75;
      v82 = PhotosFaceType.description.getter();
      v84 = v83;

      v85 = sub_100102F80(v82, v84, v117);

      *(v80 + 4) = v85;
      *(v80 + 12) = 2080;
      v49(v77, v76, v78);
      v86 = *(v100 + 8);
      v86(v76, v78);
      sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID);
      v87 = dispatch thunk of CustomStringConvertible.description.getter();
      v89 = v88;
      v86(v77, v78);
      v90 = sub_100102F80(v87, v89, v117);

      *(v80 + 14) = v90;
      _os_log_impl(&_mh_execute_header, v102, v105, "Processing %s face %s", v80, 0x16u);
      swift_arrayDestroy();

      v116(logb, v107);
    }

    else
    {
      v91 = v0[2];
      v86 = *(v0[7] + 8);
      v86(v0[11], v0[6]);

      v72(v74, v75);
    }

    v0[42] = v86;
    v92 = static TestProperties.bufferSize.getter();
    v93 = swift_task_alloc();
    v0[43] = v93;
    *v93 = v0;
    v93[1] = sub_10001B524;
    v94 = v0[12];
    v95 = v0[5];
    v96 = v0[2];

    return sub_100021028(v95, v94, v92);
  }
}

uint64_t sub_10001C8C8()
{
  v94 = v0;
  v1 = v0[47];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[8];
  v7 = v0[6];
  static Log.photos.getter();
  v3(v6, v5, v7);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[38];
    v77 = v0[39];
    v88 = v0[31];
    v90 = v0[32];
    v83 = v0[13];
    v85 = v0[15];
    v87 = v0[12];
    v82 = v9;
    v11 = v0[10];
    v12 = v0[6];
    v13 = v0[7] + 8;
    v14 = v0[8];
    v15 = v0[42];
    v16 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    log = swift_slowAlloc();
    v93[0] = log;
    *v16 = 136315394;
    v10(v11, v14, v12);
    v15(v14, v12);
    sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v15(v11, v12);
    v20 = sub_100102F80(v17, v19, v93);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2112;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v21;
    *v78 = v21;
    _os_log_impl(&_mh_execute_header, v8, v82, "Failed to process face %s with error %@", v16, 0x16u);
    sub_10000C460(v78, &qword_100129EF8, &qword_100108C70);

    sub_10000C304(log);

    v90(v85, v83);
    result = (v15)(v87, v12);
  }

  else
  {
    v23 = v0[31];
    v91 = v0[32];
    v24 = v0[15];
    v26 = v0[12];
    v25 = v0[13];
    v27 = v0[6];
    v28 = v0[7] + 8;
    v29 = v8;
    v30 = v0[42];
    v30(v0[8], v27);

    v91(v24, v25);
    result = v30(v26, v27);
  }

  v32 = v0[36];
  v31 = v0[37];
  v0[48] = v31;
  v33 = v0[35] + 1;
  if (v33 == v0[30])
  {
    v34 = v0[25];

    v35 = swift_task_alloc();
    v0[33] = v35;
    *v35 = v0;
    v35[1] = sub_100015814;
    v36 = v0[2];

    return sub_10002EC2C();
  }

  else
  {
    v0[36] = v32;
    v0[37] = v31;
    v0[35] = v33;
    v37 = v0[25];
    if (v33 >= *(v37 + 16))
    {
      __break(1u);
    }

    else
    {
      v38 = v0[12];
      v39 = v0[6];
      v40 = v0[7];
      v42 = *(v40 + 16);
      v40 += 16;
      v41 = v42;
      v43 = v37 + ((*(v40 + 64) + 32) & ~*(v40 + 64)) + *(v40 + 56) * v33;
      v0[38] = v42;
      v0[39] = v40 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v42(v38, v43, v39);
      static Task<>.checkCancellation()();
      v44 = v0[6];
      v45 = v0[17];
      v47 = v0[11];
      v46 = v0[12];
      v48 = v0[2];
      static Log.photos.getter();
      v42(v47, v46, v44);

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      v51 = os_log_type_enabled(v49, v50);
      v53 = v0[31];
      v52 = v0[32];
      v54 = v0[17];
      v55 = v0[13];
      v56 = v0[11];
      if (v51)
      {
        v84 = v50;
        v57 = v0[10];
        v79 = v0[7];
        v89 = v0[17];
        v92 = v0[32];
        v58 = v0[6];
        v59 = v0[2];
        loga = v49;
        v60 = swift_slowAlloc();
        v93[0] = swift_slowAlloc();
        *v60 = 136315394;
        v61 = *(v59 + 16);
        v86 = v55;
        v62 = PhotosFaceType.description.getter();
        v64 = v63;

        v65 = sub_100102F80(v62, v64, v93);

        *(v60 + 4) = v65;
        *(v60 + 12) = 2080;
        v41(v57, v56, v58);
        v66 = *(v79 + 8);
        v66(v56, v58);
        sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID);
        v67 = dispatch thunk of CustomStringConvertible.description.getter();
        v69 = v68;
        v66(v57, v58);
        v70 = sub_100102F80(v67, v69, v93);

        *(v60 + 14) = v70;
        _os_log_impl(&_mh_execute_header, loga, v84, "Processing %s face %s", v60, 0x16u);
        swift_arrayDestroy();

        v92(v89, v86);
      }

      else
      {
        v71 = v0[2];
        v66 = *(v0[7] + 8);
        v66(v0[11], v0[6]);

        v52(v54, v55);
      }

      v0[42] = v66;
      v72 = static TestProperties.bufferSize.getter();
      v73 = swift_task_alloc();
      v0[43] = v73;
      *v73 = v0;
      v73[1] = sub_10001B524;
      v74 = v0[12];
      v75 = v0[5];
      v76 = v0[2];

      return sub_100021028(v75, v74, v72);
    }
  }

  return result;
}

uint64_t sub_10001D0C8()
{
  v1[2] = v0;
  v2 = sub_10000560C(&qword_10012A3C8, &qword_1001090B0);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for AlbumID();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v1[13] = v8;
  v9 = *(v8 - 8);
  v1[14] = v9;
  v10 = *(v9 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = type metadata accessor for CommunicationActor();
  v1[22] = static CommunicationActor.shared.getter();
  v1[23] = static CommunicationActor.shared.getter();
  v11 = type metadata accessor for AlbumDatabase();
  v12 = sub_1000438BC(&qword_10012A488, &type metadata accessor for AlbumDatabase);
  v13 = async function pointer to dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryList()[1];
  v14 = swift_task_alloc();
  v1[24] = v14;
  *v14 = v1;
  v14[1] = sub_10001D364;

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryList()(v11, v12);
}

uint64_t sub_10001D364(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *(*v2 + 184);
  v7 = *(*v2 + 168);
  v12 = *v2;
  v4[25] = a1;
  v4[26] = v3;

  v4[27] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v3)
  {
    v10 = sub_10001DDC4;
  }

  else
  {
    v10 = sub_10001D4F8;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_10001D4F8()
{
  v1 = v0[27];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];

  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[28] = v6;
  v0[29] = v5;

  return _swift_task_switch(sub_10001D584, v6, v5);
}

uint64_t sub_10001D584()
{
  v129 = v0;
  v1 = v0[25];
  v2 = *(v1 + 16);
  v0[30] = v2;
  if (!v2)
  {
    v26 = v0[22];
    v27 = v0[20];
    v28 = v0[2];

    static Log.session.getter();

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[20];
    v34 = v0[13];
    v33 = v0[14];
    v35 = v0[2];
    if (v31)
    {
      v124 = v0[20];
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v128[0] = v37;
      *v36 = 136315138;
      v38 = *(v35 + 16);
      v39 = PhotosFaceType.description.getter();
      v41 = v40;

      v42 = sub_100102F80(v39, v41, v128);

      *(v36 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v29, v30, "No %s faces. Exiting.", v36, 0xCu);
      sub_10000C304(v37);

      (*(v33 + 8))(v124, v34);
    }

    else
    {
      v96 = v0[2];

      (*(v33 + 8))(v32, v34);
    }

    v98 = v0[19];
    v97 = v0[20];
    v100 = v0[17];
    v99 = v0[18];
    v102 = v0[15];
    v101 = v0[16];
    v104 = v0[11];
    v103 = v0[12];
    v106 = v0[9];
    v105 = v0[10];
    v122 = v0[8];
    v127 = v0[5];

    v69 = v0[1];
    goto LABEL_14;
  }

  v3 = v0[19];
  v4 = v0[2];
  static Log.session.getter();
  swift_bridgeObjectRetain_n();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[25];
  v9 = v0[19];
  v10 = v0[13];
  v11 = v0[14];
  if (v7)
  {
    v117 = v0[6];
    v123 = v0[19];
    v12 = v0[2];
    v13 = swift_slowAlloc();
    v128[0] = swift_slowAlloc();
    *v13 = 134218498;
    *(v13 + 4) = *(v1 + 16);
    *(v13 + 12) = 2080;
    v14 = *(v12 + 16);
    v15 = PhotosFaceType.description.getter();
    v119 = v10;
    v17 = v16;

    v18 = sub_100102F80(v15, v17, v128);

    *(v13 + 14) = v18;
    *(v13 + 22) = 2080;
    v19 = Array.description.getter();
    v21 = v20;
    swift_bridgeObjectRelease_n();
    v22 = sub_100102F80(v19, v21, v128);

    *(v13 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v5, v6, "Processing %ld %s: %s", v13, 0x20u);
    swift_arrayDestroy();

    v25 = *(v11 + 8);
    v24 = v11 + 8;
    v23 = v25;
    v25(v123, v119);
  }

  else
  {
    v43 = v0[2];
    v44 = v0[25];
    swift_bridgeObjectRelease_n();

    v45 = *(v11 + 8);
    v24 = v11 + 8;
    v23 = v45;
    v45(v9, v10);
  }

  v0[31] = v24;
  v0[32] = v23;
  v46 = v0[7];
  v47 = v0[25];
  v48 = v0[26];
  v0[36] = 0;
  v0[37] = 0;
  v0[35] = 0;
  v49 = *(v47 + 16);

  if (!v49)
  {
    __break(1u);
    return result;
  }

  v53 = *(v46 + 16);
  v52 = v46 + 16;
  v51 = v53;
  v54 = v0[12];
  v55 = v0[6];
  v56 = (*(v52 + 64) + 32) & ~*(v52 + 64);
  v0[38] = v53;
  v0[39] = v52 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v53(v54, result + v56, v55);
  static Task<>.checkCancellation()();
  v57 = v0[6];
  if (v48)
  {
    v58 = v0[25];
    v59 = v0[22];
    (*(v0[7] + 8))(v0[12], v0[6]);

    swift_bridgeObjectRelease_n();
    v61 = v0[19];
    v60 = v0[20];
    v63 = v0[17];
    v62 = v0[18];
    v65 = v0[15];
    v64 = v0[16];
    v67 = v0[11];
    v66 = v0[12];
    v68 = v0[10];
    v118 = v0[9];
    v120 = v0[8];
    v125 = v0[5];

    v69 = v0[1];
LABEL_14:

    return v69();
  }

  v70 = v0[17];
  v72 = v0[11];
  v71 = v0[12];
  v73 = v0[2];
  static Log.photos.getter();
  v51(v72, v71, v57);

  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();
  v76 = os_log_type_enabled(v74, v75);
  v78 = v0[31];
  v77 = v0[32];
  v79 = v0[17];
  v80 = v0[13];
  v81 = v0[11];
  if (v76)
  {
    v115 = v75;
    v82 = v0[10];
    v113 = v0[7];
    v121 = v0[17];
    v126 = v0[32];
    v83 = v0[6];
    v84 = v0[2];
    log = v74;
    v85 = swift_slowAlloc();
    v128[0] = swift_slowAlloc();
    *v85 = 136315394;
    v86 = *(v84 + 16);
    v116 = v80;
    v87 = PhotosFaceType.description.getter();
    v89 = v88;

    v90 = sub_100102F80(v87, v89, v128);

    *(v85 + 4) = v90;
    *(v85 + 12) = 2080;
    v51(v82, v81, v83);
    v91 = *(v113 + 8);
    v91(v81, v83);
    sub_1000438BC(&qword_10012A0A0, &type metadata accessor for AlbumID);
    v92 = dispatch thunk of CustomStringConvertible.description.getter();
    v94 = v93;
    v91(v82, v83);
    v95 = sub_100102F80(v92, v94, v128);

    *(v85 + 14) = v95;
    _os_log_impl(&_mh_execute_header, log, v115, "Processing %s face %s", v85, 0x16u);
    swift_arrayDestroy();

    v126(v121, v116);
  }

  else
  {
    v107 = v0[2];
    v91 = *(v0[7] + 8);
    v91(v0[11], v0[6]);

    v77(v79, v80);
  }

  v0[42] = v91;
  v108 = static TestProperties.bufferSize.getter();
  v109 = swift_task_alloc();
  v0[43] = v109;
  *v109 = v0;
  v109[1] = sub_10001E724;
  v110 = v0[12];
  v111 = v0[5];
  v112 = v0[2];

  return sub_1000215CC(v111, v110, v108);
}

uint64_t sub_10001DDC4()
{
  v1 = v0[27];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];

  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001DE50, v6, v5);
}

uint64_t sub_10001DE50()
{
  v1 = v0[22];

  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[9];
  v11 = v0[10];
  v14 = v0[8];
  v15 = v0[5];
  v16 = v0[26];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10001DF58()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v9 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = v2[25];

    v5 = v2[28];
    v6 = v2[29];
    v7 = sub_10001E224;
  }

  else
  {
    v5 = v2[28];
    v6 = v2[29];
    v7 = sub_10001E074;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10001E074()
{
  v1 = *(*(v0 + 16) + 104);
  v2 = swift_task_alloc();
  *(v0 + 320) = v2;
  *v2 = v0;
  v2[1] = sub_10001E108;

  return sub_10006254C();
}

uint64_t sub_10001E108()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v9 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = v2[25];

    v5 = v2[28];
    v6 = v2[29];
    v7 = sub_10001E61C;
  }

  else
  {
    v5 = v2[28];
    v6 = v2[29];
    v7 = sub_10001E32C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10001E224()
{
  v1 = v0[22];

  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[9];
  v11 = v0[10];
  v14 = v0[8];
  v15 = v0[5];
  v16 = v0[34];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10001E32C()
{
  v46 = v0;
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[18];
  v4 = v0[2];

  static Log.session.getter();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v41 = v0[31];
    v43 = v0[32];
    v7 = v0[25];
    v40 = v0[18];
    v38 = v0[48];
    v39 = v0[13];
    v37 = v0[6];
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v9 = 134218754;
    *(v9 + 4) = *(v7 + 16);
    *(v9 + 12) = 2080;
    v10 = *(v8 + 16);
    v11 = PhotosFaceType.description.getter();
    v13 = v12;

    v14 = sub_100102F80(v11, v13, &v45);

    *(v9 + 14) = v14;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v38;
    *(v9 + 32) = 2080;
    v15 = Array.description.getter();
    v17 = v16;
    swift_bridgeObjectRelease_n();
    v18 = sub_100102F80(v15, v17, &v45);

    *(v9 + 34) = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "Processed %ld %s faces: %ld photos in faces: %s", v9, 0x2Au);
    swift_arrayDestroy();

    v43(v40, v39);
  }

  else
  {
    v20 = v0[31];
    v19 = v0[32];
    v21 = v0[25];
    v22 = v0[18];
    v23 = v0[13];
    v24 = v0[2];
    swift_bridgeObjectRelease_n();

    v19(v22, v23);
  }

  v26 = v0[19];
  v25 = v0[20];
  v28 = v0[17];
  v27 = v0[18];
  v30 = v0[15];
  v29 = v0[16];
  v32 = v0[11];
  v31 = v0[12];
  v34 = v0[9];
  v33 = v0[10];
  v42 = v0[8];
  v44 = v0[5];

  v35 = v0[1];

  return v35();
}

uint64_t sub_10001E61C()
{
  v1 = v0[22];

  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[9];
  v11 = v0[10];
  v14 = v0[8];
  v15 = v0[5];
  v16 = v0[41];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10001E724()
{
  v2 = *(*v1 + 344);
  v3 = *v1;
  v3[44] = v0;

  if (v0)
  {
    v4 = v3[28];
    v5 = v3[29];

    return _swift_task_switch(sub_10001EA68, v4, v5);
  }

  else
  {
    v6 = async function pointer to AsyncSequence.collect()[1];
    v7 = swift_task_alloc();
    v3[45] = v7;
    v8 = sub_10000CC24(&qword_10012A3D8, &qword_10012A3C8, &qword_1001090B0);
    *v7 = v3;
    v7[1] = sub_10001E8D8;
    v9 = v3[5];
    v10 = v3[3];

    return AsyncSequence.collect()(v10, v8);
  }
}

uint64_t sub_10001E8D8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 360);
  v6 = *v2;
  v4[46] = a1;
  v4[47] = v1;

  (*(v3[4] + 8))(v3[5], v3[3]);
  v7 = v3[29];
  v8 = v3[28];
  if (v1)
  {
    v9 = sub_10001FAC8;
  }

  else
  {
    v9 = sub_10001F268;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_10001EA68()
{
  v94 = v0;
  v1 = v0[44];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[8];
  v7 = v0[6];
  static Log.photos.getter();
  v3(v6, v5, v7);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[38];
    v77 = v0[39];
    v88 = v0[31];
    v90 = v0[32];
    v83 = v0[13];
    v85 = v0[15];
    v87 = v0[12];
    v82 = v9;
    v11 = v0[10];
    v12 = v0[6];
    v13 = v0[7] + 8;
    v14 = v0[8];
    v15 = v0[42];
    v16 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    log = swift_slowAlloc();
    v93[0] = log;
    *v16 = 136315394;
    v10(v11, v14, v12);
    v15(v14, v12);
    sub_1000438BC(&qword_10012A0A0, &type metadata accessor for AlbumID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v15(v11, v12);
    v20 = sub_100102F80(v17, v19, v93);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2112;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v21;
    *v78 = v21;
    _os_log_impl(&_mh_execute_header, v8, v82, "Failed to process face %s with error %@", v16, 0x16u);
    sub_10000C460(v78, &qword_100129EF8, &qword_100108C70);

    sub_10000C304(log);

    v90(v85, v83);
    result = (v15)(v87, v12);
  }

  else
  {
    v23 = v0[31];
    v91 = v0[32];
    v24 = v0[15];
    v26 = v0[12];
    v25 = v0[13];
    v27 = v0[6];
    v28 = v0[7] + 8;
    v29 = v8;
    v30 = v0[42];
    v30(v0[8], v27);

    v91(v24, v25);
    result = v30(v26, v27);
  }

  v32 = v0[36];
  v31 = v0[37];
  v0[48] = v31;
  v33 = v0[35] + 1;
  if (v33 == v0[30])
  {
    v34 = v0[25];

    v35 = swift_task_alloc();
    v0[33] = v35;
    *v35 = v0;
    v35[1] = sub_10001DF58;
    v36 = v0[2];

    return sub_10002F394();
  }

  else
  {
    v0[36] = v32;
    v0[37] = v31;
    v0[35] = v33;
    v37 = v0[25];
    if (v33 >= *(v37 + 16))
    {
      __break(1u);
    }

    else
    {
      v38 = v0[12];
      v39 = v0[6];
      v40 = v0[7];
      v42 = *(v40 + 16);
      v40 += 16;
      v41 = v42;
      v43 = v37 + ((*(v40 + 64) + 32) & ~*(v40 + 64)) + *(v40 + 56) * v33;
      v0[38] = v42;
      v0[39] = v40 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v42(v38, v43, v39);
      static Task<>.checkCancellation()();
      v44 = v0[6];
      v45 = v0[17];
      v47 = v0[11];
      v46 = v0[12];
      v48 = v0[2];
      static Log.photos.getter();
      v42(v47, v46, v44);

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      v51 = os_log_type_enabled(v49, v50);
      v53 = v0[31];
      v52 = v0[32];
      v54 = v0[17];
      v55 = v0[13];
      v56 = v0[11];
      if (v51)
      {
        v84 = v50;
        v57 = v0[10];
        v79 = v0[7];
        v89 = v0[17];
        v92 = v0[32];
        v58 = v0[6];
        v59 = v0[2];
        loga = v49;
        v60 = swift_slowAlloc();
        v93[0] = swift_slowAlloc();
        *v60 = 136315394;
        v61 = *(v59 + 16);
        v86 = v55;
        v62 = PhotosFaceType.description.getter();
        v64 = v63;

        v65 = sub_100102F80(v62, v64, v93);

        *(v60 + 4) = v65;
        *(v60 + 12) = 2080;
        v41(v57, v56, v58);
        v66 = *(v79 + 8);
        v66(v56, v58);
        sub_1000438BC(&qword_10012A0A0, &type metadata accessor for AlbumID);
        v67 = dispatch thunk of CustomStringConvertible.description.getter();
        v69 = v68;
        v66(v57, v58);
        v70 = sub_100102F80(v67, v69, v93);

        *(v60 + 14) = v70;
        _os_log_impl(&_mh_execute_header, loga, v84, "Processing %s face %s", v60, 0x16u);
        swift_arrayDestroy();

        v92(v89, v86);
      }

      else
      {
        v71 = v0[2];
        v66 = *(v0[7] + 8);
        v66(v0[11], v0[6]);

        v52(v54, v55);
      }

      v0[42] = v66;
      v72 = static TestProperties.bufferSize.getter();
      v73 = swift_task_alloc();
      v0[43] = v73;
      *v73 = v0;
      v73[1] = sub_10001E724;
      v74 = v0[12];
      v75 = v0[5];
      v76 = v0[2];

      return sub_1000215CC(v75, v74, v72);
    }
  }

  return result;
}

uint64_t sub_10001F268()
{
  v118 = v0;
  v1 = v0[46];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[16];
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[6];
  v8 = v0[2];
  static Log.photos.getter();
  v3(v6, v5, v7);
  swift_bridgeObjectRetain_n();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  log = v9;
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[46];
  v114 = v0[42];
  if (v11)
  {
    v98 = v0[38];
    v99 = v0[39];
    v106 = v0[31];
    v108 = v0[32];
    v101 = v0[13];
    v103 = v0[16];
    v104 = v0[12];
    v14 = v0[9];
    v13 = v0[10];
    v15 = v0[6];
    v97 = v0[7] + 8;
    v16 = v0[2];
    v17 = swift_slowAlloc();
    v117[0] = swift_slowAlloc();
    *v17 = 136315650;
    v18 = *(v16 + 16);
    v19 = PhotosFaceType.description.getter();
    v21 = v20;

    v22 = sub_100102F80(v19, v21, v117);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2048;
    LOBYTE(v21) = v10;
    v23 = *(v12 + 16);

    *(v17 + 14) = v23;

    *(v17 + 22) = 2080;
    v98(v13, v14, v15);
    v114(v14, v15);
    sub_1000438BC(&qword_10012A0A0, &type metadata accessor for AlbumID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v114(v13, v15);
    v27 = sub_100102F80(v24, v26, v117);

    *(v17 + 24) = v27;
    _os_log_impl(&_mh_execute_header, log, v21, "Processed %s %ld photos from %s", v17, 0x20u);
    swift_arrayDestroy();

    v108(v103, v101);
    v114(v104, v15);
  }

  else
  {
    v28 = v0[31];
    v109 = v0[32];
    v29 = v0[16];
    v31 = v0[12];
    v30 = v0[13];
    v32 = v0[9];
    v33 = v0[6];
    v34 = v0[7];
    v35 = v0[2];

    v114(v32, v33);

    v109(v29, v30);
    v114(v31, v33);
  }

  v36 = v0[36];
  v37 = *(v0[46] + 16);

  v39 = v36 + v37;
  if (__OFADD__(v36, v37))
  {
    __break(1u);
    goto LABEL_21;
  }

  v40 = v0[47];
  v0[48] = v39;
  v41 = v0[35] + 1;
  if (v41 == v0[30])
  {
    v42 = v0[25];

    v43 = swift_task_alloc();
    v0[33] = v43;
    *v43 = v0;
    v43[1] = sub_10001DF58;
    v44 = v0[2];

    return sub_10002F394();
  }

  v0[36] = v39;
  v0[37] = v39;
  v0[35] = v41;
  v45 = v0[25];
  if (v41 >= *(v45 + 16))
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v46 = v0[12];
  v47 = v0[6];
  v48 = v0[7];
  v50 = *(v48 + 16);
  v48 += 16;
  v49 = v50;
  v51 = v45 + ((*(v48 + 64) + 32) & ~*(v48 + 64)) + *(v48 + 56) * v41;
  v0[38] = v50;
  v0[39] = v48 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v50(v46, v51, v47);
  static Task<>.checkCancellation()();
  v52 = v0[6];
  if (v40)
  {
    v53 = v0[25];
    v54 = v0[22];
    (*(v0[7] + 8))(v0[12], v0[6]);

    swift_bridgeObjectRelease_n();
    v56 = v0[19];
    v55 = v0[20];
    v58 = v0[17];
    v57 = v0[18];
    v60 = v0[15];
    v59 = v0[16];
    v62 = v0[11];
    v61 = v0[12];
    v63 = v0[10];
    v110 = v0[9];
    loga = v0[8];
    v115 = v0[5];

    v64 = v0[1];

    return v64();
  }

  else
  {
    v65 = v0[17];
    v67 = v0[11];
    v66 = v0[12];
    v68 = v0[2];
    static Log.photos.getter();
    v49(v67, v66, v52);

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();
    v71 = os_log_type_enabled(v69, v70);
    v73 = v0[31];
    v72 = v0[32];
    v74 = v0[17];
    v75 = v0[13];
    v76 = v0[11];
    if (v71)
    {
      v105 = v70;
      v77 = v0[10];
      v100 = v0[7];
      logb = v0[17];
      v116 = v0[32];
      v78 = v0[6];
      v79 = v0[2];
      v102 = v69;
      v80 = swift_slowAlloc();
      v117[0] = swift_slowAlloc();
      *v80 = 136315394;
      v81 = *(v79 + 16);
      v107 = v75;
      v82 = PhotosFaceType.description.getter();
      v84 = v83;

      v85 = sub_100102F80(v82, v84, v117);

      *(v80 + 4) = v85;
      *(v80 + 12) = 2080;
      v49(v77, v76, v78);
      v86 = *(v100 + 8);
      v86(v76, v78);
      sub_1000438BC(&qword_10012A0A0, &type metadata accessor for AlbumID);
      v87 = dispatch thunk of CustomStringConvertible.description.getter();
      v89 = v88;
      v86(v77, v78);
      v90 = sub_100102F80(v87, v89, v117);

      *(v80 + 14) = v90;
      _os_log_impl(&_mh_execute_header, v102, v105, "Processing %s face %s", v80, 0x16u);
      swift_arrayDestroy();

      v116(logb, v107);
    }

    else
    {
      v91 = v0[2];
      v86 = *(v0[7] + 8);
      v86(v0[11], v0[6]);

      v72(v74, v75);
    }

    v0[42] = v86;
    v92 = static TestProperties.bufferSize.getter();
    v93 = swift_task_alloc();
    v0[43] = v93;
    *v93 = v0;
    v93[1] = sub_10001E724;
    v94 = v0[12];
    v95 = v0[5];
    v96 = v0[2];

    return sub_1000215CC(v95, v94, v92);
  }
}

uint64_t sub_10001FAC8()
{
  v94 = v0;
  v1 = v0[47];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[8];
  v7 = v0[6];
  static Log.photos.getter();
  v3(v6, v5, v7);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[38];
    v77 = v0[39];
    v88 = v0[31];
    v90 = v0[32];
    v83 = v0[13];
    v85 = v0[15];
    v87 = v0[12];
    v82 = v9;
    v11 = v0[10];
    v12 = v0[6];
    v13 = v0[7] + 8;
    v14 = v0[8];
    v15 = v0[42];
    v16 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    log = swift_slowAlloc();
    v93[0] = log;
    *v16 = 136315394;
    v10(v11, v14, v12);
    v15(v14, v12);
    sub_1000438BC(&qword_10012A0A0, &type metadata accessor for AlbumID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v15(v11, v12);
    v20 = sub_100102F80(v17, v19, v93);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2112;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v21;
    *v78 = v21;
    _os_log_impl(&_mh_execute_header, v8, v82, "Failed to process face %s with error %@", v16, 0x16u);
    sub_10000C460(v78, &qword_100129EF8, &qword_100108C70);

    sub_10000C304(log);

    v90(v85, v83);
    result = (v15)(v87, v12);
  }

  else
  {
    v23 = v0[31];
    v91 = v0[32];
    v24 = v0[15];
    v26 = v0[12];
    v25 = v0[13];
    v27 = v0[6];
    v28 = v0[7] + 8;
    v29 = v8;
    v30 = v0[42];
    v30(v0[8], v27);

    v91(v24, v25);
    result = v30(v26, v27);
  }

  v32 = v0[36];
  v31 = v0[37];
  v0[48] = v31;
  v33 = v0[35] + 1;
  if (v33 == v0[30])
  {
    v34 = v0[25];

    v35 = swift_task_alloc();
    v0[33] = v35;
    *v35 = v0;
    v35[1] = sub_10001DF58;
    v36 = v0[2];

    return sub_10002F394();
  }

  else
  {
    v0[36] = v32;
    v0[37] = v31;
    v0[35] = v33;
    v37 = v0[25];
    if (v33 >= *(v37 + 16))
    {
      __break(1u);
    }

    else
    {
      v38 = v0[12];
      v39 = v0[6];
      v40 = v0[7];
      v42 = *(v40 + 16);
      v40 += 16;
      v41 = v42;
      v43 = v37 + ((*(v40 + 64) + 32) & ~*(v40 + 64)) + *(v40 + 56) * v33;
      v0[38] = v42;
      v0[39] = v40 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v42(v38, v43, v39);
      static Task<>.checkCancellation()();
      v44 = v0[6];
      v45 = v0[17];
      v47 = v0[11];
      v46 = v0[12];
      v48 = v0[2];
      static Log.photos.getter();
      v42(v47, v46, v44);

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      v51 = os_log_type_enabled(v49, v50);
      v53 = v0[31];
      v52 = v0[32];
      v54 = v0[17];
      v55 = v0[13];
      v56 = v0[11];
      if (v51)
      {
        v84 = v50;
        v57 = v0[10];
        v79 = v0[7];
        v89 = v0[17];
        v92 = v0[32];
        v58 = v0[6];
        v59 = v0[2];
        loga = v49;
        v60 = swift_slowAlloc();
        v93[0] = swift_slowAlloc();
        *v60 = 136315394;
        v61 = *(v59 + 16);
        v86 = v55;
        v62 = PhotosFaceType.description.getter();
        v64 = v63;

        v65 = sub_100102F80(v62, v64, v93);

        *(v60 + 4) = v65;
        *(v60 + 12) = 2080;
        v41(v57, v56, v58);
        v66 = *(v79 + 8);
        v66(v56, v58);
        sub_1000438BC(&qword_10012A0A0, &type metadata accessor for AlbumID);
        v67 = dispatch thunk of CustomStringConvertible.description.getter();
        v69 = v68;
        v66(v57, v58);
        v70 = sub_100102F80(v67, v69, v93);

        *(v60 + 14) = v70;
        _os_log_impl(&_mh_execute_header, loga, v84, "Processing %s face %s", v60, 0x16u);
        swift_arrayDestroy();

        v92(v89, v86);
      }

      else
      {
        v71 = v0[2];
        v66 = *(v0[7] + 8);
        v66(v0[11], v0[6]);

        v52(v54, v55);
      }

      v0[42] = v66;
      v72 = static TestProperties.bufferSize.getter();
      v73 = swift_task_alloc();
      v0[43] = v73;
      *v73 = v0;
      v73[1] = sub_10001E724;
      v74 = v0[12];
      v75 = v0[5];
      v76 = v0[2];

      return sub_1000215CC(v75, v74, v72);
    }
  }

  return result;
}

uint64_t sub_1000202C8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_100020334()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000CC84;

  return sub_100013738(v0);
}

uint64_t sub_1000203C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for ShuffleID();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v4[13] = *(v6 + 64);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[17] = v7;
  v8 = *(v7 - 8);
  v4[18] = v8;
  v9 = *(v8 + 64) + 15;
  v4[19] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v4[20] = static CommunicationActor.shared.getter();
  sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[21] = v11;
  v4[22] = v10;

  return _swift_task_switch(sub_100020568, v11, v10);
}

uint64_t sub_100020568()
{
  v51 = v0;
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  v6 = v0[8];
  static Log.default.getter();
  v7 = *(v4 + 16);
  v7(v2, v6, v3);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[18];
  v12 = v0[19];
  v14 = v0[16];
  v13 = v0[17];
  if (v10)
  {
    v46 = v9;
    v15 = v0[15];
    log = v8;
    v48 = v0[18];
    v49 = v7;
    v17 = v0[11];
    v16 = v0[12];
    v18 = v0[10];
    v19 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v19 = 136315650;
    *(v19 + 4) = sub_100102F80(0xD000000000000015, 0x8000000100107080, &v50);
    *(v19 + 12) = 2080;
    v20 = *(v18 + 16);
    v45 = v12;
    v21 = PhotosFaceType.description.getter();
    v23 = v22;

    v24 = sub_100102F80(v21, v23, &v50);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2080;
    v49(v15, v14, v17);
    v25 = *(v16 + 8);
    v25(v14, v17);
    sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v29 = v17;
    v7 = v49;
    v25(v15, v29);
    v30 = sub_100102F80(v26, v28, &v50);

    *(v19 + 24) = v30;
    _os_log_impl(&_mh_execute_header, log, v46, "%s type = %s, id = %s", v19, 0x20u);
    swift_arrayDestroy();

    (*(v48 + 8))(v45, v13);
  }

  else
  {
    v31 = v0[10];
    (*(v0[12] + 8))(v0[16], v0[11]);

    (*(v11 + 8))(v12, v13);
  }

  v33 = v0[13];
  v32 = v0[14];
  v34 = v0[11];
  v35 = v0[12];
  v37 = v0[9];
  v36 = v0[10];
  v7(v32, v0[8], v34);
  v38 = (*(v35 + 80) + 24) & ~*(v35 + 80);
  v39 = (v33 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v0[23] = v40;
  *(v40 + 16) = v36;
  (*(v35 + 32))(v40 + v38, v32, v34);
  *(v40 + v39) = v37;

  v41 = swift_task_alloc();
  v0[24] = v41;
  *v41 = v0;
  v41[1] = sub_100020968;
  v42 = v0[10];
  v43 = v0[8];

  return sub_100021E0C((v0 + 2), v43, &unk_100109108, v40);
}

uint64_t sub_100020968()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v9 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = v2[21];
    v5 = v2[22];
    v6 = sub_100043E94;
  }

  else
  {
    v7 = v2[23];

    v4 = v2[21];
    v5 = v2[22];
    v6 = sub_100043E7C;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100020A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for DailyID();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v4[13] = *(v6 + 64);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[17] = v7;
  v8 = *(v7 - 8);
  v4[18] = v8;
  v9 = *(v8 + 64) + 15;
  v4[19] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v4[20] = static CommunicationActor.shared.getter();
  sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[21] = v11;
  v4[22] = v10;

  return _swift_task_switch(sub_100020C28, v11, v10);
}

uint64_t sub_100020C28()
{
  v51 = v0;
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  v6 = v0[8];
  static Log.default.getter();
  v7 = *(v4 + 16);
  v7(v2, v6, v3);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[18];
  v12 = v0[19];
  v14 = v0[16];
  v13 = v0[17];
  if (v10)
  {
    v46 = v9;
    v15 = v0[15];
    log = v8;
    v48 = v0[18];
    v49 = v7;
    v17 = v0[11];
    v16 = v0[12];
    v18 = v0[10];
    v19 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v19 = 136315650;
    *(v19 + 4) = sub_100102F80(0xD000000000000015, 0x8000000100107080, &v50);
    *(v19 + 12) = 2080;
    v20 = *(v18 + 16);
    v45 = v12;
    v21 = PhotosFaceType.description.getter();
    v23 = v22;

    v24 = sub_100102F80(v21, v23, &v50);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2080;
    v49(v15, v14, v17);
    v25 = *(v16 + 8);
    v25(v14, v17);
    sub_1000438BC(&qword_10012A1E0, &type metadata accessor for DailyID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v29 = v17;
    v7 = v49;
    v25(v15, v29);
    v30 = sub_100102F80(v26, v28, &v50);

    *(v19 + 24) = v30;
    _os_log_impl(&_mh_execute_header, log, v46, "%s type = %s, id = %s", v19, 0x20u);
    swift_arrayDestroy();

    (*(v48 + 8))(v45, v13);
  }

  else
  {
    v31 = v0[10];
    (*(v0[12] + 8))(v0[16], v0[11]);

    (*(v11 + 8))(v12, v13);
  }

  v33 = v0[13];
  v32 = v0[14];
  v34 = v0[11];
  v35 = v0[12];
  v37 = v0[9];
  v36 = v0[10];
  v7(v32, v0[8], v34);
  v38 = (*(v35 + 80) + 24) & ~*(v35 + 80);
  v39 = (v33 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v0[23] = v40;
  *(v40 + 16) = v36;
  (*(v35 + 32))(v40 + v38, v32, v34);
  *(v40 + v39) = v37;

  v41 = swift_task_alloc();
  v0[24] = v41;
  *v41 = v0;
  v41[1] = sub_100020968;
  v42 = v0[10];
  v43 = v0[8];

  return sub_100022978((v0 + 2), v43, &unk_100109210, v40);
}

uint64_t sub_100021028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for ShuffleID();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v4[13] = *(v6 + 64);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[17] = v7;
  v8 = *(v7 - 8);
  v4[18] = v8;
  v9 = *(v8 + 64) + 15;
  v4[19] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v4[20] = static CommunicationActor.shared.getter();
  sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[21] = v11;
  v4[22] = v10;

  return _swift_task_switch(sub_1000211CC, v11, v10);
}

uint64_t sub_1000211CC()
{
  v51 = v0;
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  v6 = v0[8];
  static Log.default.getter();
  v7 = *(v4 + 16);
  v7(v2, v6, v3);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[18];
  v12 = v0[19];
  v14 = v0[16];
  v13 = v0[17];
  if (v10)
  {
    v46 = v9;
    v15 = v0[15];
    log = v8;
    v48 = v0[18];
    v49 = v7;
    v17 = v0[11];
    v16 = v0[12];
    v18 = v0[10];
    v19 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v19 = 136315650;
    *(v19 + 4) = sub_100102F80(0xD000000000000015, 0x8000000100107080, &v50);
    *(v19 + 12) = 2080;
    v20 = *(v18 + 16);
    v45 = v12;
    v21 = PhotosFaceType.description.getter();
    v23 = v22;

    v24 = sub_100102F80(v21, v23, &v50);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2080;
    v49(v15, v14, v17);
    v25 = *(v16 + 8);
    v25(v14, v17);
    sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v29 = v17;
    v7 = v49;
    v25(v15, v29);
    v30 = sub_100102F80(v26, v28, &v50);

    *(v19 + 24) = v30;
    _os_log_impl(&_mh_execute_header, log, v46, "%s type = %s, id = %s", v19, 0x20u);
    swift_arrayDestroy();

    (*(v48 + 8))(v45, v13);
  }

  else
  {
    v31 = v0[10];
    (*(v0[12] + 8))(v0[16], v0[11]);

    (*(v11 + 8))(v12, v13);
  }

  v33 = v0[13];
  v32 = v0[14];
  v34 = v0[11];
  v35 = v0[12];
  v37 = v0[9];
  v36 = v0[10];
  v7(v32, v0[8], v34);
  v38 = (*(v35 + 80) + 24) & ~*(v35 + 80);
  v39 = (v33 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v0[23] = v40;
  *(v40 + 16) = v36;
  (*(v35 + 32))(v40 + v38, v32, v34);
  *(v40 + v39) = v37;

  v41 = swift_task_alloc();
  v0[24] = v41;
  *v41 = v0;
  v41[1] = sub_100020968;
  v42 = v0[10];
  v43 = v0[8];

  return sub_1000234E4((v0 + 2), v43, &unk_100109270, v40);
}

uint64_t sub_1000215CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for AlbumID();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v4[13] = *(v6 + 64);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[17] = v7;
  v8 = *(v7 - 8);
  v4[18] = v8;
  v9 = *(v8 + 64) + 15;
  v4[19] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v4[20] = static CommunicationActor.shared.getter();
  sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[21] = v11;
  v4[22] = v10;

  return _swift_task_switch(sub_100021770, v11, v10);
}

uint64_t sub_100021770()
{
  v51 = v0;
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  v6 = v0[8];
  static Log.default.getter();
  v7 = *(v4 + 16);
  v7(v2, v6, v3);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[18];
  v12 = v0[19];
  v14 = v0[16];
  v13 = v0[17];
  if (v10)
  {
    v46 = v9;
    v15 = v0[15];
    log = v8;
    v48 = v0[18];
    v49 = v7;
    v17 = v0[11];
    v16 = v0[12];
    v18 = v0[10];
    v19 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v19 = 136315650;
    *(v19 + 4) = sub_100102F80(0xD000000000000015, 0x8000000100107080, &v50);
    *(v19 + 12) = 2080;
    v20 = *(v18 + 16);
    v45 = v12;
    v21 = PhotosFaceType.description.getter();
    v23 = v22;

    v24 = sub_100102F80(v21, v23, &v50);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2080;
    v49(v15, v14, v17);
    v25 = *(v16 + 8);
    v25(v14, v17);
    sub_1000438BC(&qword_10012A0A0, &type metadata accessor for AlbumID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v29 = v17;
    v7 = v49;
    v25(v15, v29);
    v30 = sub_100102F80(v26, v28, &v50);

    *(v19 + 24) = v30;
    _os_log_impl(&_mh_execute_header, log, v46, "%s type = %s, id = %s", v19, 0x20u);
    swift_arrayDestroy();

    (*(v48 + 8))(v45, v13);
  }

  else
  {
    v31 = v0[10];
    (*(v0[12] + 8))(v0[16], v0[11]);

    (*(v11 + 8))(v12, v13);
  }

  v33 = v0[13];
  v32 = v0[14];
  v34 = v0[11];
  v35 = v0[12];
  v37 = v0[9];
  v36 = v0[10];
  v7(v32, v0[8], v34);
  v38 = (*(v35 + 80) + 24) & ~*(v35 + 80);
  v39 = (v33 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v0[23] = v40;
  *(v40 + 16) = v36;
  (*(v35 + 32))(v40 + v38, v32, v34);
  *(v40 + v39) = v37;

  v41 = swift_task_alloc();
  v0[24] = v41;
  *v41 = v0;
  v41[1] = sub_100021B70;
  v42 = v0[10];
  v43 = v0[8];

  return sub_100024050((v0 + 2), v43, &unk_1001092D0, v40);
}

uint64_t sub_100021B70()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v9 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = v2[21];
    v5 = v2[22];
    v6 = sub_100021D64;
  }

  else
  {
    v7 = v2[23];

    v4 = v2[21];
    v5 = v2[22];
    v6 = sub_100021C8C;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100021C8C()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v6 = v0[7];

  v7 = v0[6];
  sub_10000C3CC(v0 + 2, v0[5]);
  AsyncSequence.generic.getter();
  sub_10000C304(v0 + 2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100021D64()
{
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];

  v7 = v0[1];
  v8 = v0[25];

  return v7();
}

uint64_t sub_100021E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  FaceRequest = type metadata accessor for FetchFaceRequest();
  v5[15] = FaceRequest;
  v7 = *(FaceRequest - 8);
  v5[16] = v7;
  v5[17] = *(v7 + 64);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v8 = *(*(sub_10000560C(&qword_100129E70, &unk_100109CD0) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v9 = type metadata accessor for ShuffleID();
  v5[21] = v9;
  v10 = *(v9 - 8);
  v5[22] = v10;
  v5[23] = *(v10 + 64);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v5[26] = v11;
  v12 = *(v11 - 8);
  v5[27] = v12;
  v13 = *(v12 + 64) + 15;
  v5[28] = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  v5[29] = v14;
  v15 = *(v14 - 8);
  v5[30] = v15;
  v5[31] = *(v15 + 64);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = type metadata accessor for CommunicationActor();
  v5[35] = static CommunicationActor.shared.getter();
  v5[36] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v17 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[37] = v17;
  v5[38] = v16;

  return _swift_task_switch(sub_1000220C8, v17, v16);
}

uint64_t sub_1000220C8()
{
  v81 = v0;
  v1 = v0[33];
  v2 = v0[21];
  v3 = v0[14];
  v4 = v0[11];
  sub_1000438BC(&qword_10012A2B0, &type metadata accessor for ShuffleID);
  dispatch thunk of PhotosFaceID.id.getter();
  swift_beginAccess();
  if (*(*(v3 + 112) + 16) && (sub_100057AFC(v0[33]), (v5 & 1) != 0))
  {
    v6 = v0[28];
    v7 = v0[25];
    v8 = v0[21];
    v9 = v0[22];
    v10 = v0[11];
    swift_endAccess();
    static Log.session.getter();
    v11 = *(v9 + 16);
    v11(v7, v10, v8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    v14 = os_log_type_enabled(v12, v13);
    v16 = v0[27];
    v15 = v0[28];
    v17 = v0[25];
    v78 = v0[26];
    if (v14)
    {
      log = v12;
      v18 = v0[24];
      v76 = v0[28];
      v72 = v13;
      v20 = v0[21];
      v19 = v0[22];
      buf = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v80 = v70;
      *buf = 136315138;
      v11(v18, v17, v20);
      v21 = *(v19 + 8);
      v21(v17, v20);
      sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      v21(v18, v20);
      v25 = sub_100102F80(v22, v24, &v80);

      *(buf + 4) = v25;
      _os_log_impl(&_mh_execute_header, log, v72, "Attempted to recompute face %s twice in parallel. This is unexpected but probably harmless.", buf, 0xCu);
      sub_10000C304(v70);

      (*(v16 + 8))(v76, v78);
    }

    else
    {
      (*(v0[22] + 8))(v17, v0[21]);

      (*(v16 + 8))(v15, v78);
    }

    v52 = v0[36];
    v53 = v0[34];
    v54 = v0[32];
    v55 = v0[21];
    v56 = v0[19];
    v58 = v0[10];
    v57 = v0[11];
    dispatch thunk of PhotosFaceID.id.getter();
    FetchFaceRequest.init(id:day:)();
    v58[3] = sub_10000560C(&qword_10012A3F8, &qword_100109178);
    v59 = type metadata accessor for StoredPhoto();
    v0[39] = v59;
    v0[9] = v59;
    v58[4] = swift_getOpaqueTypeConformance2();
    v0[40] = sub_10000C1AC(v58);
    v0[41] = static CommunicationActor.shared.getter();
    v61 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10002280C, v61, v60);
  }

  else
  {
    v26 = v0[35];
    loga = v0[36];
    v27 = v0[33];
    v28 = v0[32];
    bufa = v0[31];
    v29 = v0[29];
    v64 = v0[30];
    v30 = v0[24];
    v71 = v0[23];
    v77 = v0[22];
    v79 = v0[21];
    v31 = v0[20];
    v63 = v31;
    v66 = v0[14];
    v67 = v0[13];
    v73 = v0[12];
    v65 = v0[11];
    v32 = v0[10];
    swift_endAccess();

    sub_10000560C(&qword_10012A3E8, &qword_100109118);
    v33 = BroadcastSequence.__allocating_init()();
    v32[3] = sub_10000560C(&qword_10012A3F0, &qword_100109120);
    v0[8] = type metadata accessor for StoredPhoto();
    v32[4] = swift_getOpaqueTypeConformance2();
    sub_10000C1AC(v32);
    dispatch thunk of BroadcastSequence.listen()();
    swift_beginAccess();

    v34 = *(v3 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80 = *(v3 + 112);
    *(v3 + 112) = 0x8000000000000000;
    v62 = v33;
    sub_10005C0A0(v33, v27, isUniquelyReferenced_nonNull_native);
    *(v3 + 112) = v80;
    swift_endAccess();
    v36 = type metadata accessor for TaskPriority();
    (*(*(v36 - 8) + 56))(v31, 1, 1, v36);
    (*(v64 + 16))(v28, v27, v29);
    (*(v77 + 16))(v30, v65, v79);

    v37 = static CommunicationActor.shared.getter();
    v38 = (*(v64 + 80) + 40) & ~*(v64 + 80);
    v39 = &bufa[v38 + 7] & 0xFFFFFFFFFFFFFFF8;
    v40 = (*(v77 + 80) + v39 + 16) & ~*(v77 + 80);
    v41 = swift_allocObject();
    *(v41 + 2) = v37;
    *(v41 + 3) = loga;
    *(v41 + 4) = v66;
    (*(v64 + 32))(&v41[v38], v28, v29);
    v42 = &v41[v39];
    *v42 = v73;
    *(v42 + 1) = v67;
    (*(v77 + 32))(&v41[v40], v30, v79);
    *&v41[(v71 + v40 + 7) & 0xFFFFFFFFFFFFFFF8] = v62;
    sub_100005654(0, 0, v63, &unk_100109170, v41);

    v43 = v0[32];
    v44 = v0[28];
    v46 = v0[24];
    v45 = v0[25];
    v48 = v0[19];
    v47 = v0[20];
    v49 = v0[18];
    (*(v0[30] + 8))(v0[33], v0[29]);

    v50 = v0[1];

    return v50();
  }
}

uint64_t sub_10002280C()
{
  v1 = v0[41];
  v2 = v0[39];
  v15 = v0[36];
  v16 = v0[40];
  v3 = v0[34];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[16];
  v7 = v0[17];
  v9 = v0[14];
  v8 = v0[15];

  static CommunicationActor.shared.getter();
  (*(v6 + 16))(v5, v4, v8);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  (*(v6 + 32))(v11 + v10, v5, v8);

  swift_checkMetadataState();
  generateElements<A>(isolation:_:)();

  (*(v6 + 8))(v4, v8);
  v12 = v0[37];
  v13 = v0[38];

  return _swift_task_switch(sub_100043E90, v12, v13);
}

uint64_t sub_100022978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  FaceRequest = type metadata accessor for FetchFaceRequest();
  v5[15] = FaceRequest;
  v7 = *(FaceRequest - 8);
  v5[16] = v7;
  v5[17] = *(v7 + 64);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v8 = *(*(sub_10000560C(&qword_100129E70, &unk_100109CD0) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v9 = type metadata accessor for DailyID();
  v5[21] = v9;
  v10 = *(v9 - 8);
  v5[22] = v10;
  v5[23] = *(v10 + 64);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v5[26] = v11;
  v12 = *(v11 - 8);
  v5[27] = v12;
  v13 = *(v12 + 64) + 15;
  v5[28] = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  v5[29] = v14;
  v15 = *(v14 - 8);
  v5[30] = v15;
  v5[31] = *(v15 + 64);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = type metadata accessor for CommunicationActor();
  v5[35] = static CommunicationActor.shared.getter();
  v5[36] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v17 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[37] = v17;
  v5[38] = v16;

  return _swift_task_switch(sub_100022C34, v17, v16);
}

uint64_t sub_100022C34()
{
  v81 = v0;
  v1 = v0[33];
  v2 = v0[21];
  v3 = v0[14];
  v4 = v0[11];
  sub_1000438BC(&qword_10012A178, &type metadata accessor for DailyID);
  dispatch thunk of PhotosFaceID.id.getter();
  swift_beginAccess();
  if (*(*(v3 + 112) + 16) && (sub_100057AFC(v0[33]), (v5 & 1) != 0))
  {
    v6 = v0[28];
    v7 = v0[25];
    v8 = v0[21];
    v9 = v0[22];
    v10 = v0[11];
    swift_endAccess();
    static Log.session.getter();
    v11 = *(v9 + 16);
    v11(v7, v10, v8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    v14 = os_log_type_enabled(v12, v13);
    v16 = v0[27];
    v15 = v0[28];
    v17 = v0[25];
    v78 = v0[26];
    if (v14)
    {
      log = v12;
      v18 = v0[24];
      v76 = v0[28];
      v72 = v13;
      v20 = v0[21];
      v19 = v0[22];
      buf = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v80 = v70;
      *buf = 136315138;
      v11(v18, v17, v20);
      v21 = *(v19 + 8);
      v21(v17, v20);
      sub_1000438BC(&qword_10012A1E0, &type metadata accessor for DailyID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      v21(v18, v20);
      v25 = sub_100102F80(v22, v24, &v80);

      *(buf + 4) = v25;
      _os_log_impl(&_mh_execute_header, log, v72, "Attempted to recompute face %s twice in parallel. This is unexpected but probably harmless.", buf, 0xCu);
      sub_10000C304(v70);

      (*(v16 + 8))(v76, v78);
    }

    else
    {
      (*(v0[22] + 8))(v17, v0[21]);

      (*(v16 + 8))(v15, v78);
    }

    v52 = v0[36];
    v53 = v0[34];
    v54 = v0[32];
    v55 = v0[21];
    v56 = v0[19];
    v58 = v0[10];
    v57 = v0[11];
    dispatch thunk of PhotosFaceID.id.getter();
    FetchFaceRequest.init(id:day:)();
    v58[3] = sub_10000560C(&qword_10012A3F8, &qword_100109178);
    v59 = type metadata accessor for StoredPhoto();
    v0[39] = v59;
    v0[9] = v59;
    v58[4] = swift_getOpaqueTypeConformance2();
    v0[40] = sub_10000C1AC(v58);
    v0[41] = static CommunicationActor.shared.getter();
    v61 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100023378, v61, v60);
  }

  else
  {
    v26 = v0[35];
    loga = v0[36];
    v27 = v0[33];
    v28 = v0[32];
    bufa = v0[31];
    v29 = v0[29];
    v64 = v0[30];
    v30 = v0[24];
    v71 = v0[23];
    v77 = v0[22];
    v79 = v0[21];
    v31 = v0[20];
    v63 = v31;
    v66 = v0[14];
    v67 = v0[13];
    v73 = v0[12];
    v65 = v0[11];
    v32 = v0[10];
    swift_endAccess();

    sub_10000560C(&qword_10012A3E8, &qword_100109118);
    v33 = BroadcastSequence.__allocating_init()();
    v32[3] = sub_10000560C(&qword_10012A3F0, &qword_100109120);
    v0[8] = type metadata accessor for StoredPhoto();
    v32[4] = swift_getOpaqueTypeConformance2();
    sub_10000C1AC(v32);
    dispatch thunk of BroadcastSequence.listen()();
    swift_beginAccess();

    v34 = *(v3 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80 = *(v3 + 112);
    *(v3 + 112) = 0x8000000000000000;
    v62 = v33;
    sub_10005C0A0(v33, v27, isUniquelyReferenced_nonNull_native);
    *(v3 + 112) = v80;
    swift_endAccess();
    v36 = type metadata accessor for TaskPriority();
    (*(*(v36 - 8) + 56))(v31, 1, 1, v36);
    (*(v64 + 16))(v28, v27, v29);
    (*(v77 + 16))(v30, v65, v79);

    v37 = static CommunicationActor.shared.getter();
    v38 = (*(v64 + 80) + 40) & ~*(v64 + 80);
    v39 = &bufa[v38 + 7] & 0xFFFFFFFFFFFFFFF8;
    v40 = (*(v77 + 80) + v39 + 16) & ~*(v77 + 80);
    v41 = swift_allocObject();
    *(v41 + 2) = v37;
    *(v41 + 3) = loga;
    *(v41 + 4) = v66;
    (*(v64 + 32))(&v41[v38], v28, v29);
    v42 = &v41[v39];
    *v42 = v73;
    *(v42 + 1) = v67;
    (*(v77 + 32))(&v41[v40], v30, v79);
    *&v41[(v71 + v40 + 7) & 0xFFFFFFFFFFFFFFF8] = v62;
    sub_100005654(0, 0, v63, &unk_100109238, v41);

    v43 = v0[32];
    v44 = v0[28];
    v46 = v0[24];
    v45 = v0[25];
    v48 = v0[19];
    v47 = v0[20];
    v49 = v0[18];
    (*(v0[30] + 8))(v0[33], v0[29]);

    v50 = v0[1];

    return v50();
  }
}

uint64_t sub_100023378()
{
  v1 = v0[41];
  v2 = v0[39];
  v15 = v0[36];
  v16 = v0[40];
  v3 = v0[34];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[16];
  v7 = v0[17];
  v9 = v0[14];
  v8 = v0[15];

  static CommunicationActor.shared.getter();
  (*(v6 + 16))(v5, v4, v8);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  (*(v6 + 32))(v11 + v10, v5, v8);

  swift_checkMetadataState();
  generateElements<A>(isolation:_:)();

  (*(v6 + 8))(v4, v8);
  v12 = v0[37];
  v13 = v0[38];

  return _swift_task_switch(sub_100043E90, v12, v13);
}

uint64_t sub_1000234E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  FaceRequest = type metadata accessor for FetchFaceRequest();
  v5[15] = FaceRequest;
  v7 = *(FaceRequest - 8);
  v5[16] = v7;
  v5[17] = *(v7 + 64);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v8 = *(*(sub_10000560C(&qword_100129E70, &unk_100109CD0) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v9 = type metadata accessor for ShuffleID();
  v5[21] = v9;
  v10 = *(v9 - 8);
  v5[22] = v10;
  v5[23] = *(v10 + 64);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v5[26] = v11;
  v12 = *(v11 - 8);
  v5[27] = v12;
  v13 = *(v12 + 64) + 15;
  v5[28] = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  v5[29] = v14;
  v15 = *(v14 - 8);
  v5[30] = v15;
  v5[31] = *(v15 + 64);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = type metadata accessor for CommunicationActor();
  v5[35] = static CommunicationActor.shared.getter();
  v5[36] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v17 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[37] = v17;
  v5[38] = v16;

  return _swift_task_switch(sub_1000237A0, v17, v16);
}

uint64_t sub_1000237A0()
{
  v81 = v0;
  v1 = v0[33];
  v2 = v0[21];
  v3 = v0[14];
  v4 = v0[11];
  sub_1000438BC(&qword_10012A2B0, &type metadata accessor for ShuffleID);
  dispatch thunk of PhotosFaceID.id.getter();
  swift_beginAccess();
  if (*(*(v3 + 112) + 16) && (sub_100057AFC(v0[33]), (v5 & 1) != 0))
  {
    v6 = v0[28];
    v7 = v0[25];
    v8 = v0[21];
    v9 = v0[22];
    v10 = v0[11];
    swift_endAccess();
    static Log.session.getter();
    v11 = *(v9 + 16);
    v11(v7, v10, v8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    v14 = os_log_type_enabled(v12, v13);
    v16 = v0[27];
    v15 = v0[28];
    v17 = v0[25];
    v78 = v0[26];
    if (v14)
    {
      log = v12;
      v18 = v0[24];
      v76 = v0[28];
      v72 = v13;
      v20 = v0[21];
      v19 = v0[22];
      buf = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v80 = v70;
      *buf = 136315138;
      v11(v18, v17, v20);
      v21 = *(v19 + 8);
      v21(v17, v20);
      sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      v21(v18, v20);
      v25 = sub_100102F80(v22, v24, &v80);

      *(buf + 4) = v25;
      _os_log_impl(&_mh_execute_header, log, v72, "Attempted to recompute face %s twice in parallel. This is unexpected but probably harmless.", buf, 0xCu);
      sub_10000C304(v70);

      (*(v16 + 8))(v76, v78);
    }

    else
    {
      (*(v0[22] + 8))(v17, v0[21]);

      (*(v16 + 8))(v15, v78);
    }

    v52 = v0[36];
    v53 = v0[34];
    v54 = v0[32];
    v55 = v0[21];
    v56 = v0[19];
    v58 = v0[10];
    v57 = v0[11];
    dispatch thunk of PhotosFaceID.id.getter();
    FetchFaceRequest.init(id:day:)();
    v58[3] = sub_10000560C(&qword_10012A3F8, &qword_100109178);
    v59 = type metadata accessor for StoredPhoto();
    v0[39] = v59;
    v0[9] = v59;
    v58[4] = swift_getOpaqueTypeConformance2();
    v0[40] = sub_10000C1AC(v58);
    v0[41] = static CommunicationActor.shared.getter();
    v61 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100023EE4, v61, v60);
  }

  else
  {
    v26 = v0[35];
    loga = v0[36];
    v27 = v0[33];
    v28 = v0[32];
    bufa = v0[31];
    v29 = v0[29];
    v64 = v0[30];
    v30 = v0[24];
    v71 = v0[23];
    v77 = v0[22];
    v79 = v0[21];
    v31 = v0[20];
    v63 = v31;
    v66 = v0[14];
    v67 = v0[13];
    v73 = v0[12];
    v65 = v0[11];
    v32 = v0[10];
    swift_endAccess();

    sub_10000560C(&qword_10012A3E8, &qword_100109118);
    v33 = BroadcastSequence.__allocating_init()();
    v32[3] = sub_10000560C(&qword_10012A3F0, &qword_100109120);
    v0[8] = type metadata accessor for StoredPhoto();
    v32[4] = swift_getOpaqueTypeConformance2();
    sub_10000C1AC(v32);
    dispatch thunk of BroadcastSequence.listen()();
    swift_beginAccess();

    v34 = *(v3 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80 = *(v3 + 112);
    *(v3 + 112) = 0x8000000000000000;
    v62 = v33;
    sub_10005C0A0(v33, v27, isUniquelyReferenced_nonNull_native);
    *(v3 + 112) = v80;
    swift_endAccess();
    v36 = type metadata accessor for TaskPriority();
    (*(*(v36 - 8) + 56))(v31, 1, 1, v36);
    (*(v64 + 16))(v28, v27, v29);
    (*(v77 + 16))(v30, v65, v79);

    v37 = static CommunicationActor.shared.getter();
    v38 = (*(v64 + 80) + 40) & ~*(v64 + 80);
    v39 = &bufa[v38 + 7] & 0xFFFFFFFFFFFFFFF8;
    v40 = (*(v77 + 80) + v39 + 16) & ~*(v77 + 80);
    v41 = swift_allocObject();
    *(v41 + 2) = v37;
    *(v41 + 3) = loga;
    *(v41 + 4) = v66;
    (*(v64 + 32))(&v41[v38], v28, v29);
    v42 = &v41[v39];
    *v42 = v73;
    *(v42 + 1) = v67;
    (*(v77 + 32))(&v41[v40], v30, v79);
    *&v41[(v71 + v40 + 7) & 0xFFFFFFFFFFFFFFF8] = v62;
    sub_100005654(0, 0, v63, &unk_100109298, v41);

    v43 = v0[32];
    v44 = v0[28];
    v46 = v0[24];
    v45 = v0[25];
    v48 = v0[19];
    v47 = v0[20];
    v49 = v0[18];
    (*(v0[30] + 8))(v0[33], v0[29]);

    v50 = v0[1];

    return v50();
  }
}

uint64_t sub_100023EE4()
{
  v1 = v0[41];
  v2 = v0[39];
  v15 = v0[36];
  v16 = v0[40];
  v3 = v0[34];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[16];
  v7 = v0[17];
  v9 = v0[14];
  v8 = v0[15];

  static CommunicationActor.shared.getter();
  (*(v6 + 16))(v5, v4, v8);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  (*(v6 + 32))(v11 + v10, v5, v8);

  swift_checkMetadataState();
  generateElements<A>(isolation:_:)();

  (*(v6 + 8))(v4, v8);
  v12 = v0[37];
  v13 = v0[38];

  return _swift_task_switch(sub_100043E90, v12, v13);
}

uint64_t sub_100024050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  FaceRequest = type metadata accessor for FetchFaceRequest();
  v5[15] = FaceRequest;
  v7 = *(FaceRequest - 8);
  v5[16] = v7;
  v5[17] = *(v7 + 64);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v8 = *(*(sub_10000560C(&qword_100129E70, &unk_100109CD0) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v9 = type metadata accessor for AlbumID();
  v5[21] = v9;
  v10 = *(v9 - 8);
  v5[22] = v10;
  v5[23] = *(v10 + 64);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v5[26] = v11;
  v12 = *(v11 - 8);
  v5[27] = v12;
  v13 = *(v12 + 64) + 15;
  v5[28] = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  v5[29] = v14;
  v15 = *(v14 - 8);
  v5[30] = v15;
  v5[31] = *(v15 + 64);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = type metadata accessor for CommunicationActor();
  v5[35] = static CommunicationActor.shared.getter();
  v5[36] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v17 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[37] = v17;
  v5[38] = v16;

  return _swift_task_switch(sub_10002430C, v17, v16);
}

uint64_t sub_10002430C()
{
  v81 = v0;
  v1 = v0[33];
  v2 = v0[21];
  v3 = v0[14];
  v4 = v0[11];
  sub_1000438BC(&qword_10012A048, &type metadata accessor for AlbumID);
  dispatch thunk of PhotosFaceID.id.getter();
  swift_beginAccess();
  if (*(*(v3 + 112) + 16) && (sub_100057AFC(v0[33]), (v5 & 1) != 0))
  {
    v6 = v0[28];
    v7 = v0[25];
    v8 = v0[21];
    v9 = v0[22];
    v10 = v0[11];
    swift_endAccess();
    static Log.session.getter();
    v11 = *(v9 + 16);
    v11(v7, v10, v8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    v14 = os_log_type_enabled(v12, v13);
    v16 = v0[27];
    v15 = v0[28];
    v17 = v0[25];
    v78 = v0[26];
    if (v14)
    {
      log = v12;
      v18 = v0[24];
      v76 = v0[28];
      v72 = v13;
      v20 = v0[21];
      v19 = v0[22];
      buf = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v80 = v70;
      *buf = 136315138;
      v11(v18, v17, v20);
      v21 = *(v19 + 8);
      v21(v17, v20);
      sub_1000438BC(&qword_10012A0A0, &type metadata accessor for AlbumID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      v21(v18, v20);
      v25 = sub_100102F80(v22, v24, &v80);

      *(buf + 4) = v25;
      _os_log_impl(&_mh_execute_header, log, v72, "Attempted to recompute face %s twice in parallel. This is unexpected but probably harmless.", buf, 0xCu);
      sub_10000C304(v70);

      (*(v16 + 8))(v76, v78);
    }

    else
    {
      (*(v0[22] + 8))(v17, v0[21]);

      (*(v16 + 8))(v15, v78);
    }

    v52 = v0[36];
    v53 = v0[34];
    v54 = v0[32];
    v55 = v0[21];
    v56 = v0[19];
    v58 = v0[10];
    v57 = v0[11];
    dispatch thunk of PhotosFaceID.id.getter();
    FetchFaceRequest.init(id:day:)();
    v58[3] = sub_10000560C(&qword_10012A3F8, &qword_100109178);
    v59 = type metadata accessor for StoredPhoto();
    v0[39] = v59;
    v0[9] = v59;
    v58[4] = swift_getOpaqueTypeConformance2();
    v0[40] = sub_10000C1AC(v58);
    v0[41] = static CommunicationActor.shared.getter();
    v61 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100024A50, v61, v60);
  }

  else
  {
    v26 = v0[35];
    loga = v0[36];
    v27 = v0[33];
    v28 = v0[32];
    bufa = v0[31];
    v29 = v0[29];
    v64 = v0[30];
    v30 = v0[24];
    v71 = v0[23];
    v77 = v0[22];
    v79 = v0[21];
    v31 = v0[20];
    v63 = v31;
    v66 = v0[14];
    v67 = v0[13];
    v73 = v0[12];
    v65 = v0[11];
    v32 = v0[10];
    swift_endAccess();

    sub_10000560C(&qword_10012A3E8, &qword_100109118);
    v33 = BroadcastSequence.__allocating_init()();
    v32[3] = sub_10000560C(&qword_10012A3F0, &qword_100109120);
    v0[8] = type metadata accessor for StoredPhoto();
    v32[4] = swift_getOpaqueTypeConformance2();
    sub_10000C1AC(v32);
    dispatch thunk of BroadcastSequence.listen()();
    swift_beginAccess();

    v34 = *(v3 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80 = *(v3 + 112);
    *(v3 + 112) = 0x8000000000000000;
    v62 = v33;
    sub_10005C0A0(v33, v27, isUniquelyReferenced_nonNull_native);
    *(v3 + 112) = v80;
    swift_endAccess();
    v36 = type metadata accessor for TaskPriority();
    (*(*(v36 - 8) + 56))(v31, 1, 1, v36);
    (*(v64 + 16))(v28, v27, v29);
    (*(v77 + 16))(v30, v65, v79);

    v37 = static CommunicationActor.shared.getter();
    v38 = (*(v64 + 80) + 40) & ~*(v64 + 80);
    v39 = &bufa[v38 + 7] & 0xFFFFFFFFFFFFFFF8;
    v40 = (*(v77 + 80) + v39 + 16) & ~*(v77 + 80);
    v41 = swift_allocObject();
    *(v41 + 2) = v37;
    *(v41 + 3) = loga;
    *(v41 + 4) = v66;
    (*(v64 + 32))(&v41[v38], v28, v29);
    v42 = &v41[v39];
    *v42 = v73;
    *(v42 + 1) = v67;
    (*(v77 + 32))(&v41[v40], v30, v79);
    *&v41[(v71 + v40 + 7) & 0xFFFFFFFFFFFFFFF8] = v62;
    sub_100005654(0, 0, v63, &unk_1001092F8, v41);

    v43 = v0[32];
    v44 = v0[28];
    v46 = v0[24];
    v45 = v0[25];
    v48 = v0[19];
    v47 = v0[20];
    v49 = v0[18];
    (*(v0[30] + 8))(v0[33], v0[29]);

    v50 = v0[1];

    return v50();
  }
}

uint64_t sub_100024A50()
{
  v1 = v0[41];
  v2 = v0[39];
  v15 = v0[36];
  v16 = v0[40];
  v3 = v0[34];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[16];
  v7 = v0[17];
  v9 = v0[14];
  v8 = v0[15];

  static CommunicationActor.shared.getter();
  (*(v6 + 16))(v5, v4, v8);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  (*(v6 + 32))(v11 + v10, v5, v8);

  swift_checkMetadataState();
  generateElements<A>(isolation:_:)();

  (*(v6 + 8))(v4, v8);
  v12 = v0[37];
  v13 = v0[38];

  return _swift_task_switch(sub_100024BBC, v12, v13);
}

uint64_t sub_100024BBC()
{
  v1 = v0[35];

  v2 = v0[32];
  v3 = v0[28];
  v5 = v0[24];
  v4 = v0[25];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[18];
  (*(v0[30] + 8))(v0[33], v0[29]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100024CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  v5 = *(*(sub_10000560C(&qword_10012A400, &qword_100109190) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v6 = sub_10000560C(&qword_10012A3F0, &qword_100109120);
  v4[17] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v8 = sub_10000560C(&qword_10012A408, &qword_100109198);
  v4[19] = v8;
  v9 = *(v8 - 8);
  v4[20] = v9;
  v10 = *(v9 + 64) + 15;
  v4[21] = swift_task_alloc();
  v11 = type metadata accessor for StoredPhoto();
  v4[22] = v11;
  v12 = *(v11 - 8);
  v4[23] = v12;
  v13 = *(v12 + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  FaceRequest = type metadata accessor for FetchFaceRequest();
  v4[26] = FaceRequest;
  v15 = *(FaceRequest - 8);
  v4[27] = v15;
  v16 = *(v15 + 64) + 15;
  v4[28] = swift_task_alloc();
  v17 = type metadata accessor for Logger();
  v4[29] = v17;
  v18 = *(v17 - 8);
  v4[30] = v18;
  v19 = *(v18 + 64) + 15;
  v4[31] = swift_task_alloc();
  v20 = type metadata accessor for UUID();
  v4[32] = v20;
  v21 = *(v20 - 8);
  v4[33] = v21;
  v22 = *(v21 + 64) + 15;
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();

  return _swift_task_switch(sub_100024F94, 0, 0);
}

uint64_t sub_100024F94()
{
  v1 = *(v0[14] + 80);
  v0[8] = v1;
  v2 = v0[38];
  v3 = v0[15];
  v0[39] = v1;

  FetchFaceRequest.id.getter();
  Face = FetchFaceRequest.day.getter();
  if (v5)
  {
    Face = static TimeUtilities.currentEpoch.getter();
  }

  v6 = Face;
  v7 = type metadata accessor for GalleryDatabase();
  v0[40] = v7;
  v8 = sub_1000438BC(&qword_10012A3D0, &type metadata accessor for GalleryDatabase);
  v0[41] = v8;
  v9 = async function pointer to dispatch thunk of PhotosFaceIDReadOnlyDatabase.query(id:day:)[1];
  v10 = swift_task_alloc();
  v0[42] = v10;
  *v10 = v0;
  v10[1] = sub_1000250C8;
  v11 = v0[38];

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.query(id:day:)(v11, v6, v7, v8);
}

uint64_t sub_1000250C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 336);
  v13 = *v2;
  v3[43] = a1;
  v3[44] = v1;

  if (v1)
  {
    v5 = v3[39];
    (*(v3[33] + 8))(v3[38], v3[32]);

    v6 = sub_1000254B8;
  }

  else
  {
    v7 = v3[38];
    v8 = v3[39];
    v9 = v3[32];
    v10 = v3[33];
    v11 = *(v10 + 8);
    v3[45] = v11;
    v3[46] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v7, v9);

    v6 = sub_100025228;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100025228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[43];
  if (!*(v4 + 2))
  {
    v13 = v3[37];
    v14 = v3[15];
    FetchFaceRequest.id.getter();
    type metadata accessor for CommunicationActor();
    v3[47] = static CommunicationActor.shared.getter();
    sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    v18 = sub_1000255C0;
    goto LABEL_9;
  }

  v3[52] = v4;
  v5 = *(v4 + 2);
  v3[53] = v5;
  if (!v5)
  {
    v19 = v3[34];
    v20 = v3[15];

    FetchFaceRequest.id.getter();
    v3[57] = type metadata accessor for CommunicationActor();
    v3[58] = static CommunicationActor.shared.getter();
    v3[59] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v21;
    v18 = sub_10002633C;
LABEL_9:
    v4 = v18;
    a2 = v15;
    a3 = v17;

    return _swift_task_switch(v4, a2, a3);
  }

  v6 = v3[23];
  v7 = v3[12];
  v3[54] = 0;
  if (!*(v4 + 2))
  {
    __break(1u);
    return _swift_task_switch(v4, a2, a3);
  }

  (*(v6 + 16))(v3[25], v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v3[22]);
  v22 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v3[55] = v9;
  *v9 = v3;
  v9[1] = sub_1000261EC;
  v10 = v3[25];
  v11 = v3[13];

  return v22(v10);
}

uint64_t sub_1000254B8()
{
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[34];
  v6 = v0[31];
  v7 = v0[28];
  v9 = v0[24];
  v8 = v0[25];
  v10 = v0[21];
  v13 = v0[18];
  v14 = v0[16];
  v15 = v0[44];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000255C0()
{
  v1 = v0[47];
  v2 = v0[14];

  swift_beginAccess();
  v3 = *(v2 + 112);
  if (*(v3 + 16))
  {
    v4 = sub_100057AFC(v0[37]);
    v6 = v0[45];
    v5 = v0[46];
    v7 = v0[37];
    v8 = v0[32];
    if (v9)
    {
      v0[48] = *(*(v3 + 56) + 8 * v4);
      swift_endAccess();

      v6(v7, v8);
      v10 = sub_10002579C;
    }

    else
    {
      swift_endAccess();
      v6(v7, v8);
      v10 = sub_100043E80;
    }
  }

  else
  {
    v12 = v0[45];
    v11 = v0[46];
    v13 = v0[37];
    v14 = v0[32];
    swift_endAccess();
    v12(v13, v14);
    v10 = sub_1000256F0;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_1000256F0()
{
  v1 = v0[36];
  v2 = v0[14];
  v3 = v0[15];
  FetchFaceRequest.id.getter();
  v4 = async function pointer to dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)[1];
  v5 = swift_task_alloc();
  v0[49] = v5;
  *v5 = v0;
  v5[1] = sub_1000259AC;
  v6 = v0[40];
  v7 = v0[41];
  v8 = v0[36];

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)(v8, v6, v7);
}

uint64_t sub_10002579C()
{
  v1 = v0[48];

  v4 = v0[43];
  v0[52] = v4;
  v5 = *(v4 + 2);
  v0[53] = v5;
  if (!v5)
  {
    v13 = v0[34];
    v14 = v0[15];

    FetchFaceRequest.id.getter();
    v0[57] = type metadata accessor for CommunicationActor();
    v0[58] = static CommunicationActor.shared.getter();
    v0[59] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    v4 = sub_10002633C;
    v2 = v15;
    v3 = v17;

    return _swift_task_switch(v4, v2, v3);
  }

  v6 = v0[23];
  v7 = v0[12];
  v0[54] = 0;
  if (!*(v4 + 2))
  {
    __break(1u);
    return _swift_task_switch(v4, v2, v3);
  }

  (*(v6 + 16))(v0[25], v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v0[22]);
  v18 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[55] = v9;
  *v9 = v0;
  v9[1] = sub_1000261EC;
  v10 = v0[25];
  v11 = v0[13];

  return v18(v10);
}

uint64_t sub_1000259AC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 392);
  v6 = *v2;
  v4[50] = a1;
  v4[51] = v1;

  v7 = v3[46];
  v8 = v3[45];
  if (v1)
  {
    v9 = v4[43];
    v8(v4[36], v4[32]);

    v10 = sub_1000260E4;
  }

  else
  {
    v8(v4[36], v4[32]);
    v10 = sub_100025B1C;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100025B1C()
{
  v63 = v0;
  v1 = *(v0[50] + 16);

  v3 = sub_10002D644(v2);
  v5 = v4;

  if (v5)
  {
    v6 = v0[50];

    v10 = v0[43];
  }

  else
  {
    v11 = v0[43];

    if (static PhotosFaceIDDatabaseFix.hourValueLowerBound()() < v3)
    {
      v12 = v0[31];
      v14 = v0[27];
      v13 = v0[28];
      v15 = v0[26];
      v16 = v0[15];
      static Log.session.getter();
      (*(v14 + 16))(v13, v16, v15);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v56 = v0[45];
        v57 = v0[46];
        v19 = v0[35];
        v20 = v0[32];
        v58 = v0[30];
        v59 = v0[29];
        v60 = v0[31];
        v55 = v18;
        v22 = v0[27];
        v21 = v0[28];
        v53 = v21;
        v54 = v0[26];
        v23 = swift_slowAlloc();
        v62[0] = swift_slowAlloc();
        *v23 = 136315906;
        *(v23 + 4) = sub_100102F80(0xD000000000000013, 0x80000001001070A0, v62);
        *(v23 + 12) = 2080;
        FetchFaceRequest.id.getter();
        sub_1000438BC(&qword_10012A1C0, &type metadata accessor for UUID);
        v24 = dispatch thunk of CustomStringConvertible.description.getter();
        v26 = v25;
        v56(v19, v20);
        (*(v22 + 8))(v53, v54);
        v27 = sub_100102F80(v24, v26, v62);

        *(v23 + 14) = v27;
        *(v23 + 22) = 2048;
        *(v23 + 24) = v3;
        *(v23 + 32) = 2048;
        *(v23 + 34) = static TimeUtilities.currentEpoch.getter();
        _os_log_impl(&_mh_execute_header, v17, v55, "%s: queryByDay(%s) returned photos for day %ld; current day = %ld", v23, 0x2Au);
        swift_arrayDestroy();

        (*(v58 + 8))(v60, v59);
      }

      else
      {
        v29 = v0[30];
        v28 = v0[31];
        v31 = v0[28];
        v30 = v0[29];
        v32 = v0[26];
        v33 = v0[27];

        (*(v33 + 8))(v31, v32);
        (*(v29 + 8))(v28, v30);
      }
    }

    v7 = static TimeUtilities.currentEpoch.getter();
    v34 = v7 - v3;
    if (__OFSUB__(v7, v3))
    {
      goto LABEL_24;
    }

    v35 = __OFSUB__(v34, 1);
    v36 = v34 - 1;
    if (v35)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (v36 < 0)
    {
      v35 = __OFSUB__(0, v36);
      v36 = -v36;
      if (v35)
      {
        goto LABEL_29;
      }
    }

    if (!v1)
    {
      goto LABEL_26;
    }

    v37 = v0[51];
    v38 = v36 % v1;
    v0[11] = v0[50];
    sub_10000560C(&qword_10012A410, &qword_1001091A0);
    sub_10000CC24(&qword_10012A418, &qword_10012A410, &qword_1001091A0);
    v39 = Sequence.sorted<A>(_:)();

    if ((v38 & 0x8000000000000000) != 0)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v38 >= *(v39 + 16))
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return _swift_task_switch(v7, v8, v9);
    }

    v10 = *(v39 + 16 * v38 + 40);
  }

  v0[52] = v10;
  v40 = *(v10 + 16);
  v0[53] = v40;
  if (!v40)
  {
    v48 = v0[34];
    v49 = v0[15];

    FetchFaceRequest.id.getter();
    v0[57] = type metadata accessor for CommunicationActor();
    v0[58] = static CommunicationActor.shared.getter();
    v0[59] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
    v50 = dispatch thunk of Actor.unownedExecutor.getter();
    v52 = v51;
    v7 = sub_10002633C;
    v8 = v50;
    v9 = v52;

    return _swift_task_switch(v7, v8, v9);
  }

  v41 = v0[23];
  v42 = v0[12];
  v0[54] = 0;
  if (!*(v10 + 16))
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  (*(v41 + 16))(v0[25], v10 + ((*(v41 + 80) + 32) & ~*(v41 + 80)), v0[22]);
  v61 = (v42 + *v42);
  v43 = v42[1];
  v44 = swift_task_alloc();
  v0[55] = v44;
  *v44 = v0;
  v44[1] = sub_1000261EC;
  v45 = v0[25];
  v46 = v0[13];

  return v61(v45);
}

uint64_t sub_1000260E4()
{
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[34];
  v6 = v0[31];
  v7 = v0[28];
  v9 = v0[24];
  v8 = v0[25];
  v10 = v0[21];
  v13 = v0[18];
  v14 = v0[16];
  v15 = v0[51];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000261EC()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v7 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v4 = v2[52];
    (*(v2[23] + 8))(v2[25], v2[22]);

    v5 = sub_100026658;
  }

  else
  {
    (*(v2[23] + 8))(v2[25], v2[22]);
    v5 = sub_100026448;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10002633C()
{
  v1 = v0[58];
  v2 = v0[14];

  swift_beginAccess();
  v3 = *(v2 + 112);
  if (*(v3 + 16) && (v4 = sub_100057AFC(v0[34]), (v5 & 1) != 0))
  {
    v7 = v0[45];
    v6 = v0[46];
    v8 = v0[34];
    v9 = v0[32];
    v0[60] = *(*(v3 + 56) + 8 * v4);
    swift_endAccess();

    v7(v8, v9);
    v10 = sub_100026760;
  }

  else
  {
    v12 = v0[45];
    v11 = v0[46];
    v13 = v0[34];
    v14 = v0[32];
    swift_endAccess();
    v12(v13, v14);
    v10 = sub_100026984;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100026448(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[54] + 1;
  if (v4 == v3[53])
  {
    v5 = v3[52];
    v6 = v3[34];
    v7 = v3[15];

    FetchFaceRequest.id.getter();
    v3[57] = type metadata accessor for CommunicationActor();
    v3[58] = static CommunicationActor.shared.getter();
    v3[59] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
    a1 = sub_10002633C;
    a2 = v8;
    a3 = v10;

    return _swift_task_switch(a1, a2, a3);
  }

  v3[54] = v4;
  v11 = v3[52];
  if (v4 >= *(v11 + 16))
  {
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v12 = v3[12];
  (*(v3[23] + 16))(v3[25], v11 + ((*(v3[23] + 80) + 32) & ~*(v3[23] + 80)) + *(v3[23] + 72) * v4, v3[22]);
  v18 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v3[55] = v14;
  *v14 = v3;
  v14[1] = sub_1000261EC;
  v15 = v3[25];
  v16 = v3[13];

  return v18(v15);
}

uint64_t sub_100026658()
{
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[34];
  v6 = v0[31];
  v7 = v0[28];
  v9 = v0[24];
  v8 = v0[25];
  v10 = v0[21];
  v13 = v0[18];
  v14 = v0[16];
  v15 = v0[56];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100026760()
{
  v1 = v0[59];
  v2 = v0[57];
  v0[61] = static CommunicationActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000267F4, v4, v3);
}

uint64_t sub_1000267F4()
{
  v2 = v0[60];
  v1 = v0[61];
  v3 = v0[18];

  dispatch thunk of BroadcastSequence.listen()();

  return _swift_task_switch(sub_100026868, 0, 0);
}

uint64_t sub_100026868()
{
  v1 = v0[21];
  v3 = v0[17];
  v2 = v0[18];
  v0[9] = v0[22];
  v0[62] = swift_getOpaqueTypeConformance2();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v4 = v0[62];
  v5 = v0[19];
  v6 = v0[17];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v9 = swift_task_alloc();
  v0[63] = v9;
  *v9 = v0;
  v9[1] = sub_100026A84;
  v10 = v0[21];
  v11 = v0[19];
  v12 = v0[16];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v12, 0, 0, v0 + 10, v11, AssociatedConformanceWitness);
}

uint64_t sub_100026984()
{
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[34];
  v6 = v0[31];
  v7 = v0[28];
  v9 = v0[24];
  v8 = v0[25];
  v10 = v0[21];
  v13 = v0[18];
  v14 = v0[16];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100026A84()
{
  v2 = *(*v1 + 504);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_100026DE0;
  }

  else
  {
    v3 = sub_100026B94;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100026B94()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[16];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[60];
    (*(v0[20] + 8))(v0[21], v0[19]);

    v6 = v0[37];
    v5 = v0[38];
    v8 = v0[35];
    v7 = v0[36];
    v9 = v0[34];
    v10 = v0[31];
    v11 = v0[28];
    v13 = v0[24];
    v12 = v0[25];
    v14 = v0[21];
    v22 = v0[18];
    v23 = v0[16];

    v15 = v0[1];

    return v15();
  }

  else
  {
    v17 = v0[12];
    (*(v2 + 32))(v0[24], v3, v1);
    v24 = (v17 + *v17);
    v18 = v17[1];
    v19 = swift_task_alloc();
    v0[64] = v19;
    *v19 = v0;
    v19[1] = sub_100026F10;
    v20 = v0[24];
    v21 = v0[13];

    return v24(v20);
  }
}

uint64_t sub_100026DE0()
{
  v1 = v0[60];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];

  (*(v3 + 8))(v2, v4);
  v6 = v0[37];
  v5 = v0[38];
  v8 = v0[35];
  v7 = v0[36];
  v9 = v0[34];
  v10 = v0[31];
  v11 = v0[28];
  v13 = v0[24];
  v12 = v0[25];
  v14 = v0[21];
  v17 = v0[18];
  v18 = v0[16];
  v19 = v0[10];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100026F10()
{
  v2 = *(*v1 + 512);
  v5 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = sub_100027110;
  }

  else
  {
    v3 = sub_100027024;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100027024()
{
  (*(v0[23] + 8))(v0[24], v0[22]);
  v1 = v0[62];
  v2 = v0[19];
  v3 = v0[17];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v6 = swift_task_alloc();
  v0[63] = v6;
  *v6 = v0;
  v6[1] = sub_100026A84;
  v7 = v0[21];
  v8 = v0[19];
  v9 = v0[16];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v9, 0, 0, v0 + 10, v8, AssociatedConformanceWitness);
}

uint64_t sub_100027110()
{
  v1 = v0[60];
  v3 = v0[23];
  v2 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[19];
  v7 = v0[20];

  (*(v3 + 8))(v2, v4);
  (*(v7 + 8))(v5, v6);
  v9 = v0[37];
  v8 = v0[38];
  v11 = v0[35];
  v10 = v0[36];
  v12 = v0[34];
  v13 = v0[31];
  v14 = v0[28];
  v16 = v0[24];
  v15 = v0[25];
  v17 = v0[21];
  v20 = v0[18];
  v21 = v0[16];
  v22 = v0[65];

  v18 = v0[1];

  return v18();
}

uint64_t sub_10002725C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  FaceRequest = type metadata accessor for FetchFaceRequest();
  v4[16] = FaceRequest;
  v6 = *(FaceRequest - 8);
  v4[17] = v6;
  v7 = *(v6 + 64) + 15;
  v4[18] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[19] = v8;
  v9 = *(v8 - 8);
  v4[20] = v9;
  v10 = *(v9 + 64) + 15;
  v4[21] = swift_task_alloc();
  v11 = *(*(sub_10000560C(&qword_10012A400, &qword_100109190) - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v12 = sub_10000560C(&qword_10012A3F0, &qword_100109120);
  v4[23] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v14 = sub_10000560C(&qword_10012A408, &qword_100109198);
  v4[25] = v14;
  v15 = *(v14 - 8);
  v4[26] = v15;
  v16 = *(v15 + 64) + 15;
  v4[27] = swift_task_alloc();
  v17 = type metadata accessor for StoredPhoto();
  v4[28] = v17;
  v18 = *(v17 - 8);
  v4[29] = v18;
  v19 = *(v18 + 64) + 15;
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v20 = type metadata accessor for UUID();
  v4[32] = v20;
  v21 = *(v20 - 8);
  v4[33] = v21;
  v22 = *(v21 + 64) + 15;
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();

  return _swift_task_switch(sub_10002754C, 0, 0);
}

uint64_t sub_10002754C()
{
  v1 = *(v0[14] + 80);
  v0[8] = v1;
  v2 = v0[38];
  v3 = v0[15];
  v0[39] = v1;

  FetchFaceRequest.id.getter();
  Face = FetchFaceRequest.day.getter();
  if (v5)
  {
    Face = static TimeUtilities.currentEpoch.getter();
  }

  v6 = Face;
  v7 = type metadata accessor for DailyDatabase();
  v0[40] = v7;
  v8 = sub_1000438BC(&qword_10012A468, &type metadata accessor for DailyDatabase);
  v0[41] = v8;
  v9 = async function pointer to dispatch thunk of PhotosFaceIDReadOnlyDatabase.query(id:day:)[1];
  v10 = swift_task_alloc();
  v0[42] = v10;
  *v10 = v0;
  v10[1] = sub_100027680;
  v11 = v0[38];

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.query(id:day:)(v11, v6, v7, v8);
}

uint64_t sub_100027680(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 336);
  v13 = *v2;
  v3[43] = a1;
  v3[44] = v1;

  if (v1)
  {
    v5 = v3[39];
    (*(v3[33] + 8))(v3[38], v3[32]);

    v6 = sub_100043E78;
  }

  else
  {
    v7 = v3[38];
    v8 = v3[39];
    v9 = v3[32];
    v10 = v3[33];
    v11 = *(v10 + 8);
    v3[45] = v11;
    v3[46] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v7, v9);

    v6 = sub_1000277E0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000277E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[43];
  if (!*(v4 + 2))
  {
    v13 = v3[37];
    v14 = v3[15];
    FetchFaceRequest.id.getter();
    type metadata accessor for CommunicationActor();
    v3[47] = static CommunicationActor.shared.getter();
    sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    v18 = sub_100027A70;
    goto LABEL_9;
  }

  v3[51] = v4;
  v5 = *(v4 + 2);
  v3[52] = v5;
  if (!v5)
  {
    v19 = v3[35];
    v20 = v3[15];

    FetchFaceRequest.id.getter();
    v3[53] = type metadata accessor for CommunicationActor();
    v3[54] = static CommunicationActor.shared.getter();
    v3[55] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v21;
    v18 = sub_100027D10;
LABEL_9:
    v4 = v18;
    a2 = v15;
    a3 = v17;

    return _swift_task_switch(v4, a2, a3);
  }

  v6 = v3[29];
  v7 = v3[12];
  v3[56] = 0;
  if (!*(v4 + 2))
  {
    __break(1u);
    return _swift_task_switch(v4, a2, a3);
  }

  (*(v6 + 16))(v3[31], v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v3[28]);
  v22 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v3[57] = v9;
  *v9 = v3;
  v9[1] = sub_100027E1C;
  v10 = v3[31];
  v11 = v3[13];

  return v22(v10);
}

uint64_t sub_100027A70()
{
  v1 = v0[47];
  v2 = v0[14];

  swift_beginAccess();
  v3 = *(v2 + 112);
  if (*(v3 + 16))
  {
    v4 = sub_100057AFC(v0[37]);
    v6 = v0[45];
    v5 = v0[46];
    v7 = v0[37];
    v8 = v0[32];
    if (v9)
    {
      v0[65] = *(*(v3 + 56) + 8 * v4);
      swift_endAccess();

      v6(v7, v8);
      v10 = sub_100028EC4;
    }

    else
    {
      swift_endAccess();
      v6(v7, v8);
      v10 = sub_1000290D4;
    }
  }

  else
  {
    v12 = v0[45];
    v11 = v0[46];
    v13 = v0[37];
    v14 = v0[32];
    swift_endAccess();
    v12(v13, v14);
    v10 = sub_100043E84;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100027BA0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 384);
  v6 = *v2;
  v4[49] = a1;
  v4[50] = v1;

  v7 = v3[46];
  v8 = v3[45];
  if (v1)
  {
    v9 = v4[43];
    v8(v4[36], v4[32]);

    v10 = sub_100043E18;
  }

  else
  {
    v8(v4[36], v4[32]);
    v10 = sub_1000288FC;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100027D10()
{
  v1 = v0[54];
  v2 = v0[14];

  swift_beginAccess();
  v3 = *(v2 + 112);
  if (*(v3 + 16) && (v4 = sub_100057AFC(v0[35]), (v5 & 1) != 0))
  {
    v7 = v0[45];
    v6 = v0[46];
    v8 = v0[35];
    v9 = v0[32];
    v0[59] = *(*(v3 + 56) + 8 * v4);
    swift_endAccess();

    v7(v8, v9);
    v10 = sub_100027F6C;
  }

  else
  {
    v12 = v0[45];
    v11 = v0[46];
    v13 = v0[35];
    v14 = v0[32];
    swift_endAccess();
    v12(v13, v14);
    v10 = sub_100043E9C;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100027E1C()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v7 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v4 = v2[51];
    (*(v2[29] + 8))(v2[31], v2[28]);

    v5 = sub_100043E14;
  }

  else
  {
    (*(v2[29] + 8))(v2[31], v2[28]);
    v5 = sub_1000286E8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100027F6C()
{
  v1 = v0[55];
  v2 = v0[53];
  v0[60] = static CommunicationActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100028000, v4, v3);
}

uint64_t sub_100028000()
{
  v2 = v0[59];
  v1 = v0[60];
  v3 = v0[24];

  dispatch thunk of BroadcastSequence.listen()();

  return _swift_task_switch(sub_100028074, 0, 0);
}

uint64_t sub_100028074()
{
  v1 = v0[27];
  v3 = v0[23];
  v2 = v0[24];
  v0[9] = v0[28];
  v0[61] = swift_getOpaqueTypeConformance2();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v4 = v0[61];
  v5 = v0[25];
  v6 = v0[23];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v9 = swift_task_alloc();
  v0[62] = v9;
  *v9 = v0;
  v9[1] = sub_100028190;
  v10 = v0[27];
  v11 = v0[25];
  v12 = v0[22];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v12, 0, 0, v0 + 10, v11, AssociatedConformanceWitness);
}

uint64_t sub_100028190()
{
  v2 = *(*v1 + 496);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_100043E74;
  }

  else
  {
    v3 = sub_1000282A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000282A0()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[22];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[59];
    (*(v0[26] + 8))(v0[27], v0[25]);

    v6 = v0[37];
    v5 = v0[38];
    v8 = v0[35];
    v7 = v0[36];
    v9 = v0[34];
    v11 = v0[30];
    v10 = v0[31];
    v12 = v0[27];
    v13 = v0[24];
    v14 = v0[22];
    v22 = v0[21];
    v23 = v0[18];

    v15 = v0[1];

    return v15();
  }

  else
  {
    v17 = v0[12];
    (*(v2 + 32))(v0[30], v3, v1);
    v24 = (v17 + *v17);
    v18 = v17[1];
    v19 = swift_task_alloc();
    v0[63] = v19;
    *v19 = v0;
    v19[1] = sub_1000284E8;
    v20 = v0[30];
    v21 = v0[13];

    return v24(v20);
  }
}

uint64_t sub_1000284E8()
{
  v2 = *(*v1 + 504);
  v5 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v3 = sub_100043E20;
  }

  else
  {
    v3 = sub_1000285FC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000285FC()
{
  (*(v0[29] + 8))(v0[30], v0[28]);
  v1 = v0[61];
  v2 = v0[25];
  v3 = v0[23];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v6 = swift_task_alloc();
  v0[62] = v6;
  *v6 = v0;
  v6[1] = sub_100028190;
  v7 = v0[27];
  v8 = v0[25];
  v9 = v0[22];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v9, 0, 0, v0 + 10, v8, AssociatedConformanceWitness);
}

uint64_t sub_1000286E8(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[56] + 1;
  if (v4 == v3[52])
  {
    v5 = v3[51];
    v6 = v3[35];
    v7 = v3[15];

    FetchFaceRequest.id.getter();
    v3[53] = type metadata accessor for CommunicationActor();
    v3[54] = static CommunicationActor.shared.getter();
    v3[55] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
    a1 = sub_100027D10;
    a2 = v8;
    a3 = v10;

    return _swift_task_switch(a1, a2, a3);
  }

  v3[56] = v4;
  v11 = v3[51];
  if (v4 >= *(v11 + 16))
  {
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v12 = v3[12];
  (*(v3[29] + 16))(v3[31], v11 + ((*(v3[29] + 80) + 32) & ~*(v3[29] + 80)) + *(v3[29] + 72) * v4, v3[28]);
  v18 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v3[57] = v14;
  *v14 = v3;
  v14[1] = sub_100027E1C;
  v15 = v3[31];
  v16 = v3[13];

  return v18(v15);
}

uint64_t sub_1000288FC()
{
  v63 = v0;
  v1 = *(v0[49] + 16);

  v3 = sub_10002D644(v2);
  v5 = v4;

  if (v5)
  {
    v6 = v0[49];

    v10 = v0[43];
  }

  else
  {
    v11 = v0[43];

    if (static PhotosFaceIDDatabaseFix.hourValueLowerBound()() < v3)
    {
      v12 = v0[21];
      v14 = v0[17];
      v13 = v0[18];
      v16 = v0[15];
      v15 = v0[16];
      static Log.session.getter();
      (*(v14 + 16))(v13, v16, v15);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v56 = v0[45];
        v57 = v0[46];
        v19 = v0[34];
        v20 = v0[32];
        v58 = v0[20];
        v59 = v0[19];
        v60 = v0[21];
        v55 = v18;
        v22 = v0[17];
        v21 = v0[18];
        v53 = v21;
        v54 = v0[16];
        v23 = swift_slowAlloc();
        v62[0] = swift_slowAlloc();
        *v23 = 136315906;
        *(v23 + 4) = sub_100102F80(0xD000000000000013, 0x80000001001070A0, v62);
        *(v23 + 12) = 2080;
        FetchFaceRequest.id.getter();
        sub_1000438BC(&qword_10012A1C0, &type metadata accessor for UUID);
        v24 = dispatch thunk of CustomStringConvertible.description.getter();
        v26 = v25;
        v56(v19, v20);
        (*(v22 + 8))(v53, v54);
        v27 = sub_100102F80(v24, v26, v62);

        *(v23 + 14) = v27;
        *(v23 + 22) = 2048;
        *(v23 + 24) = v3;
        *(v23 + 32) = 2048;
        *(v23 + 34) = static TimeUtilities.currentEpoch.getter();
        _os_log_impl(&_mh_execute_header, v17, v55, "%s: queryByDay(%s) returned photos for day %ld; current day = %ld", v23, 0x2Au);
        swift_arrayDestroy();

        (*(v58 + 8))(v60, v59);
      }

      else
      {
        v29 = v0[20];
        v28 = v0[21];
        v31 = v0[18];
        v30 = v0[19];
        v32 = v0[16];
        v33 = v0[17];

        (*(v33 + 8))(v31, v32);
        (*(v29 + 8))(v28, v30);
      }
    }

    v7 = static TimeUtilities.currentEpoch.getter();
    v34 = v7 - v3;
    if (__OFSUB__(v7, v3))
    {
      goto LABEL_24;
    }

    v35 = __OFSUB__(v34, 1);
    v36 = v34 - 1;
    if (v35)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (v36 < 0)
    {
      v35 = __OFSUB__(0, v36);
      v36 = -v36;
      if (v35)
      {
        goto LABEL_29;
      }
    }

    if (!v1)
    {
      goto LABEL_26;
    }

    v37 = v0[50];
    v38 = v36 % v1;
    v0[11] = v0[49];
    sub_10000560C(&qword_10012A410, &qword_1001091A0);
    sub_10000CC24(&qword_10012A418, &qword_10012A410, &qword_1001091A0);
    v39 = Sequence.sorted<A>(_:)();

    if ((v38 & 0x8000000000000000) != 0)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v38 >= *(v39 + 16))
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return _swift_task_switch(v7, v8, v9);
    }

    v10 = *(v39 + 16 * v38 + 40);
  }

  v0[51] = v10;
  v40 = *(v10 + 16);
  v0[52] = v40;
  if (!v40)
  {
    v48 = v0[35];
    v49 = v0[15];

    FetchFaceRequest.id.getter();
    v0[53] = type metadata accessor for CommunicationActor();
    v0[54] = static CommunicationActor.shared.getter();
    v0[55] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
    v50 = dispatch thunk of Actor.unownedExecutor.getter();
    v52 = v51;
    v7 = sub_100027D10;
    v8 = v50;
    v9 = v52;

    return _swift_task_switch(v7, v8, v9);
  }

  v41 = v0[29];
  v42 = v0[12];
  v0[56] = 0;
  if (!*(v10 + 16))
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  (*(v41 + 16))(v0[31], v10 + ((*(v41 + 80) + 32) & ~*(v41 + 80)), v0[28]);
  v61 = (v42 + *v42);
  v43 = v42[1];
  v44 = swift_task_alloc();
  v0[57] = v44;
  *v44 = v0;
  v44[1] = sub_100027E1C;
  v45 = v0[31];
  v46 = v0[13];

  return v61(v45);
}

uint64_t sub_100028EC4()
{
  v1 = v0[65];

  v4 = v0[43];
  v0[51] = v4;
  v5 = *(v4 + 2);
  v0[52] = v5;
  if (!v5)
  {
    v13 = v0[35];
    v14 = v0[15];

    FetchFaceRequest.id.getter();
    v0[53] = type metadata accessor for CommunicationActor();
    v0[54] = static CommunicationActor.shared.getter();
    v0[55] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    v4 = sub_100027D10;
    v2 = v15;
    v3 = v17;

    return _swift_task_switch(v4, v2, v3);
  }

  v6 = v0[29];
  v7 = v0[12];
  v0[56] = 0;
  if (!*(v4 + 2))
  {
    __break(1u);
    return _swift_task_switch(v4, v2, v3);
  }

  (*(v6 + 16))(v0[31], v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v0[28]);
  v18 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[57] = v9;
  *v9 = v0;
  v9[1] = sub_100027E1C;
  v10 = v0[31];
  v11 = v0[13];

  return v18(v10);
}

uint64_t sub_1000290D4()
{
  v1 = v0[36];
  v2 = v0[14];
  v3 = v0[15];
  FetchFaceRequest.id.getter();
  v4 = async function pointer to dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)[1];
  v5 = swift_task_alloc();
  v0[48] = v5;
  *v5 = v0;
  v5[1] = sub_100027BA0;
  v6 = v0[40];
  v7 = v0[41];
  v8 = v0[36];

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)(v8, v6, v7);
}

uint64_t sub_100029180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  FaceRequest = type metadata accessor for FetchFaceRequest();
  v4[16] = FaceRequest;
  v6 = *(FaceRequest - 8);
  v4[17] = v6;
  v7 = *(v6 + 64) + 15;
  v4[18] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[19] = v8;
  v9 = *(v8 - 8);
  v4[20] = v9;
  v10 = *(v9 + 64) + 15;
  v4[21] = swift_task_alloc();
  v11 = *(*(sub_10000560C(&qword_10012A400, &qword_100109190) - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v12 = sub_10000560C(&qword_10012A3F0, &qword_100109120);
  v4[23] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v14 = sub_10000560C(&qword_10012A408, &qword_100109198);
  v4[25] = v14;
  v15 = *(v14 - 8);
  v4[26] = v15;
  v16 = *(v15 + 64) + 15;
  v4[27] = swift_task_alloc();
  v17 = type metadata accessor for StoredPhoto();
  v4[28] = v17;
  v18 = *(v17 - 8);
  v4[29] = v18;
  v19 = *(v18 + 64) + 15;
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v20 = type metadata accessor for UUID();
  v4[32] = v20;
  v21 = *(v20 - 8);
  v4[33] = v21;
  v22 = *(v21 + 64) + 15;
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();

  return _swift_task_switch(sub_100029470, 0, 0);
}

uint64_t sub_100029470()
{
  v1 = *(v0[14] + 80);
  v0[8] = v1;
  v2 = v0[38];
  v3 = v0[15];
  v0[39] = v1;

  FetchFaceRequest.id.getter();
  Face = FetchFaceRequest.day.getter();
  if (v5)
  {
    Face = static TimeUtilities.currentEpoch.getter();
  }

  v6 = Face;
  v7 = type metadata accessor for ShuffleDatabase();
  v0[40] = v7;
  v8 = sub_1000438BC(&qword_10012A478, &type metadata accessor for ShuffleDatabase);
  v0[41] = v8;
  v9 = async function pointer to dispatch thunk of PhotosFaceIDReadOnlyDatabase.query(id:day:)[1];
  v10 = swift_task_alloc();
  v0[42] = v10;
  *v10 = v0;
  v10[1] = sub_1000295A4;
  v11 = v0[38];

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.query(id:day:)(v11, v6, v7, v8);
}

uint64_t sub_1000295A4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 336);
  v13 = *v2;
  v3[43] = a1;
  v3[44] = v1;

  if (v1)
  {
    v5 = v3[39];
    (*(v3[33] + 8))(v3[38], v3[32]);

    v6 = sub_100043E78;
  }

  else
  {
    v7 = v3[38];
    v8 = v3[39];
    v9 = v3[32];
    v10 = v3[33];
    v11 = *(v10 + 8);
    v3[45] = v11;
    v3[46] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v7, v9);

    v6 = sub_100029704;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100029704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[43];
  if (!*(v4 + 2))
  {
    v13 = v3[37];
    v14 = v3[15];
    FetchFaceRequest.id.getter();
    type metadata accessor for CommunicationActor();
    v3[47] = static CommunicationActor.shared.getter();
    sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    v18 = sub_100029994;
    goto LABEL_9;
  }

  v3[51] = v4;
  v5 = *(v4 + 2);
  v3[52] = v5;
  if (!v5)
  {
    v19 = v3[35];
    v20 = v3[15];

    FetchFaceRequest.id.getter();
    v3[53] = type metadata accessor for CommunicationActor();
    v3[54] = static CommunicationActor.shared.getter();
    v3[55] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v21;
    v18 = sub_100029C34;
LABEL_9:
    v4 = v18;
    a2 = v15;
    a3 = v17;

    return _swift_task_switch(v4, a2, a3);
  }

  v6 = v3[29];
  v7 = v3[12];
  v3[56] = 0;
  if (!*(v4 + 2))
  {
    __break(1u);
    return _swift_task_switch(v4, a2, a3);
  }

  (*(v6 + 16))(v3[31], v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v3[28]);
  v22 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v3[57] = v9;
  *v9 = v3;
  v9[1] = sub_100029D40;
  v10 = v3[31];
  v11 = v3[13];

  return v22(v10);
}

uint64_t sub_100029994()
{
  v1 = v0[47];
  v2 = v0[14];

  swift_beginAccess();
  v3 = *(v2 + 112);
  if (*(v3 + 16))
  {
    v4 = sub_100057AFC(v0[37]);
    v6 = v0[45];
    v5 = v0[46];
    v7 = v0[37];
    v8 = v0[32];
    if (v9)
    {
      v0[65] = *(*(v3 + 56) + 8 * v4);
      swift_endAccess();

      v6(v7, v8);
      v10 = sub_10002ADE8;
    }

    else
    {
      swift_endAccess();
      v6(v7, v8);
      v10 = sub_10002AFF8;
    }
  }

  else
  {
    v12 = v0[45];
    v11 = v0[46];
    v13 = v0[37];
    v14 = v0[32];
    swift_endAccess();
    v12(v13, v14);
    v10 = sub_100043E88;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100029AC4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 384);
  v6 = *v2;
  v4[49] = a1;
  v4[50] = v1;

  v7 = v3[46];
  v8 = v3[45];
  if (v1)
  {
    v9 = v4[43];
    v8(v4[36], v4[32]);

    v10 = sub_100043E18;
  }

  else
  {
    v8(v4[36], v4[32]);
    v10 = sub_10002A820;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100029C34()
{
  v1 = v0[54];
  v2 = v0[14];

  swift_beginAccess();
  v3 = *(v2 + 112);
  if (*(v3 + 16) && (v4 = sub_100057AFC(v0[35]), (v5 & 1) != 0))
  {
    v7 = v0[45];
    v6 = v0[46];
    v8 = v0[35];
    v9 = v0[32];
    v0[59] = *(*(v3 + 56) + 8 * v4);
    swift_endAccess();

    v7(v8, v9);
    v10 = sub_100029E90;
  }

  else
  {
    v12 = v0[45];
    v11 = v0[46];
    v13 = v0[35];
    v14 = v0[32];
    swift_endAccess();
    v12(v13, v14);
    v10 = sub_100043E9C;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100029D40()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v7 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v4 = v2[51];
    (*(v2[29] + 8))(v2[31], v2[28]);

    v5 = sub_100043E14;
  }

  else
  {
    (*(v2[29] + 8))(v2[31], v2[28]);
    v5 = sub_10002A60C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100029E90()
{
  v1 = v0[55];
  v2 = v0[53];
  v0[60] = static CommunicationActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100029F24, v4, v3);
}

uint64_t sub_100029F24()
{
  v2 = v0[59];
  v1 = v0[60];
  v3 = v0[24];

  dispatch thunk of BroadcastSequence.listen()();

  return _swift_task_switch(sub_100029F98, 0, 0);
}

uint64_t sub_100029F98()
{
  v1 = v0[27];
  v3 = v0[23];
  v2 = v0[24];
  v0[9] = v0[28];
  v0[61] = swift_getOpaqueTypeConformance2();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v4 = v0[61];
  v5 = v0[25];
  v6 = v0[23];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v9 = swift_task_alloc();
  v0[62] = v9;
  *v9 = v0;
  v9[1] = sub_10002A0B4;
  v10 = v0[27];
  v11 = v0[25];
  v12 = v0[22];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v12, 0, 0, v0 + 10, v11, AssociatedConformanceWitness);
}

uint64_t sub_10002A0B4()
{
  v2 = *(*v1 + 496);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_100043E74;
  }

  else
  {
    v3 = sub_10002A1C4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002A1C4()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[22];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[59];
    (*(v0[26] + 8))(v0[27], v0[25]);

    v6 = v0[37];
    v5 = v0[38];
    v8 = v0[35];
    v7 = v0[36];
    v9 = v0[34];
    v11 = v0[30];
    v10 = v0[31];
    v12 = v0[27];
    v13 = v0[24];
    v14 = v0[22];
    v22 = v0[21];
    v23 = v0[18];

    v15 = v0[1];

    return v15();
  }

  else
  {
    v17 = v0[12];
    (*(v2 + 32))(v0[30], v3, v1);
    v24 = (v17 + *v17);
    v18 = v17[1];
    v19 = swift_task_alloc();
    v0[63] = v19;
    *v19 = v0;
    v19[1] = sub_10002A40C;
    v20 = v0[30];
    v21 = v0[13];

    return v24(v20);
  }
}

uint64_t sub_10002A40C()
{
  v2 = *(*v1 + 504);
  v5 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v3 = sub_100043E20;
  }

  else
  {
    v3 = sub_10002A520;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002A520()
{
  (*(v0[29] + 8))(v0[30], v0[28]);
  v1 = v0[61];
  v2 = v0[25];
  v3 = v0[23];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v6 = swift_task_alloc();
  v0[62] = v6;
  *v6 = v0;
  v6[1] = sub_10002A0B4;
  v7 = v0[27];
  v8 = v0[25];
  v9 = v0[22];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v9, 0, 0, v0 + 10, v8, AssociatedConformanceWitness);
}

uint64_t sub_10002A60C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[56] + 1;
  if (v4 == v3[52])
  {
    v5 = v3[51];
    v6 = v3[35];
    v7 = v3[15];

    FetchFaceRequest.id.getter();
    v3[53] = type metadata accessor for CommunicationActor();
    v3[54] = static CommunicationActor.shared.getter();
    v3[55] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
    a1 = sub_100029C34;
    a2 = v8;
    a3 = v10;

    return _swift_task_switch(a1, a2, a3);
  }

  v3[56] = v4;
  v11 = v3[51];
  if (v4 >= *(v11 + 16))
  {
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v12 = v3[12];
  (*(v3[29] + 16))(v3[31], v11 + ((*(v3[29] + 80) + 32) & ~*(v3[29] + 80)) + *(v3[29] + 72) * v4, v3[28]);
  v18 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v3[57] = v14;
  *v14 = v3;
  v14[1] = sub_100029D40;
  v15 = v3[31];
  v16 = v3[13];

  return v18(v15);
}

uint64_t sub_10002A820()
{
  v63 = v0;
  v1 = *(v0[49] + 16);

  v3 = sub_10002D644(v2);
  v5 = v4;

  if (v5)
  {
    v6 = v0[49];

    v10 = v0[43];
  }

  else
  {
    v11 = v0[43];

    if (static PhotosFaceIDDatabaseFix.hourValueLowerBound()() < v3)
    {
      v12 = v0[21];
      v14 = v0[17];
      v13 = v0[18];
      v16 = v0[15];
      v15 = v0[16];
      static Log.session.getter();
      (*(v14 + 16))(v13, v16, v15);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v56 = v0[45];
        v57 = v0[46];
        v19 = v0[34];
        v20 = v0[32];
        v58 = v0[20];
        v59 = v0[19];
        v60 = v0[21];
        v55 = v18;
        v22 = v0[17];
        v21 = v0[18];
        v53 = v21;
        v54 = v0[16];
        v23 = swift_slowAlloc();
        v62[0] = swift_slowAlloc();
        *v23 = 136315906;
        *(v23 + 4) = sub_100102F80(0xD000000000000013, 0x80000001001070A0, v62);
        *(v23 + 12) = 2080;
        FetchFaceRequest.id.getter();
        sub_1000438BC(&qword_10012A1C0, &type metadata accessor for UUID);
        v24 = dispatch thunk of CustomStringConvertible.description.getter();
        v26 = v25;
        v56(v19, v20);
        (*(v22 + 8))(v53, v54);
        v27 = sub_100102F80(v24, v26, v62);

        *(v23 + 14) = v27;
        *(v23 + 22) = 2048;
        *(v23 + 24) = v3;
        *(v23 + 32) = 2048;
        *(v23 + 34) = static TimeUtilities.currentEpoch.getter();
        _os_log_impl(&_mh_execute_header, v17, v55, "%s: queryByDay(%s) returned photos for day %ld; current day = %ld", v23, 0x2Au);
        swift_arrayDestroy();

        (*(v58 + 8))(v60, v59);
      }

      else
      {
        v29 = v0[20];
        v28 = v0[21];
        v31 = v0[18];
        v30 = v0[19];
        v32 = v0[16];
        v33 = v0[17];

        (*(v33 + 8))(v31, v32);
        (*(v29 + 8))(v28, v30);
      }
    }

    v7 = static TimeUtilities.currentEpoch.getter();
    v34 = v7 - v3;
    if (__OFSUB__(v7, v3))
    {
      goto LABEL_24;
    }

    v35 = __OFSUB__(v34, 1);
    v36 = v34 - 1;
    if (v35)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (v36 < 0)
    {
      v35 = __OFSUB__(0, v36);
      v36 = -v36;
      if (v35)
      {
        goto LABEL_29;
      }
    }

    if (!v1)
    {
      goto LABEL_26;
    }

    v37 = v0[50];
    v38 = v36 % v1;
    v0[11] = v0[49];
    sub_10000560C(&qword_10012A410, &qword_1001091A0);
    sub_10000CC24(&qword_10012A418, &qword_10012A410, &qword_1001091A0);
    v39 = Sequence.sorted<A>(_:)();

    if ((v38 & 0x8000000000000000) != 0)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v38 >= *(v39 + 16))
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return _swift_task_switch(v7, v8, v9);
    }

    v10 = *(v39 + 16 * v38 + 40);
  }

  v0[51] = v10;
  v40 = *(v10 + 16);
  v0[52] = v40;
  if (!v40)
  {
    v48 = v0[35];
    v49 = v0[15];

    FetchFaceRequest.id.getter();
    v0[53] = type metadata accessor for CommunicationActor();
    v0[54] = static CommunicationActor.shared.getter();
    v0[55] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
    v50 = dispatch thunk of Actor.unownedExecutor.getter();
    v52 = v51;
    v7 = sub_100029C34;
    v8 = v50;
    v9 = v52;

    return _swift_task_switch(v7, v8, v9);
  }

  v41 = v0[29];
  v42 = v0[12];
  v0[56] = 0;
  if (!*(v10 + 16))
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  (*(v41 + 16))(v0[31], v10 + ((*(v41 + 80) + 32) & ~*(v41 + 80)), v0[28]);
  v61 = (v42 + *v42);
  v43 = v42[1];
  v44 = swift_task_alloc();
  v0[57] = v44;
  *v44 = v0;
  v44[1] = sub_100029D40;
  v45 = v0[31];
  v46 = v0[13];

  return v61(v45);
}

uint64_t sub_10002ADE8()
{
  v1 = v0[65];

  v4 = v0[43];
  v0[51] = v4;
  v5 = *(v4 + 2);
  v0[52] = v5;
  if (!v5)
  {
    v13 = v0[35];
    v14 = v0[15];

    FetchFaceRequest.id.getter();
    v0[53] = type metadata accessor for CommunicationActor();
    v0[54] = static CommunicationActor.shared.getter();
    v0[55] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    v4 = sub_100029C34;
    v2 = v15;
    v3 = v17;

    return _swift_task_switch(v4, v2, v3);
  }

  v6 = v0[29];
  v7 = v0[12];
  v0[56] = 0;
  if (!*(v4 + 2))
  {
    __break(1u);
    return _swift_task_switch(v4, v2, v3);
  }

  (*(v6 + 16))(v0[31], v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v0[28]);
  v18 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[57] = v9;
  *v9 = v0;
  v9[1] = sub_100029D40;
  v10 = v0[31];
  v11 = v0[13];

  return v18(v10);
}

uint64_t sub_10002AFF8()
{
  v1 = v0[36];
  v2 = v0[14];
  v3 = v0[15];
  FetchFaceRequest.id.getter();
  v4 = async function pointer to dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)[1];
  v5 = swift_task_alloc();
  v0[48] = v5;
  *v5 = v0;
  v5[1] = sub_100029AC4;
  v6 = v0[40];
  v7 = v0[41];
  v8 = v0[36];

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)(v8, v6, v7);
}

uint64_t sub_10002B0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  FaceRequest = type metadata accessor for FetchFaceRequest();
  v4[16] = FaceRequest;
  v6 = *(FaceRequest - 8);
  v4[17] = v6;
  v7 = *(v6 + 64) + 15;
  v4[18] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[19] = v8;
  v9 = *(v8 - 8);
  v4[20] = v9;
  v10 = *(v9 + 64) + 15;
  v4[21] = swift_task_alloc();
  v11 = *(*(sub_10000560C(&qword_10012A400, &qword_100109190) - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v12 = sub_10000560C(&qword_10012A3F0, &qword_100109120);
  v4[23] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v14 = sub_10000560C(&qword_10012A408, &qword_100109198);
  v4[25] = v14;
  v15 = *(v14 - 8);
  v4[26] = v15;
  v16 = *(v15 + 64) + 15;
  v4[27] = swift_task_alloc();
  v17 = type metadata accessor for StoredPhoto();
  v4[28] = v17;
  v18 = *(v17 - 8);
  v4[29] = v18;
  v19 = *(v18 + 64) + 15;
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v20 = type metadata accessor for UUID();
  v4[32] = v20;
  v21 = *(v20 - 8);
  v4[33] = v21;
  v22 = *(v21 + 64) + 15;
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();

  return _swift_task_switch(sub_10002B394, 0, 0);
}

uint64_t sub_10002B394()
{
  v1 = *(v0[14] + 80);
  v0[8] = v1;
  v2 = v0[38];
  v3 = v0[15];
  v0[39] = v1;

  FetchFaceRequest.id.getter();
  Face = FetchFaceRequest.day.getter();
  if (v5)
  {
    Face = static TimeUtilities.currentEpoch.getter();
  }

  v6 = Face;
  v7 = type metadata accessor for AlbumDatabase();
  v0[40] = v7;
  v8 = sub_1000438BC(&qword_10012A488, &type metadata accessor for AlbumDatabase);
  v0[41] = v8;
  v9 = async function pointer to dispatch thunk of PhotosFaceIDReadOnlyDatabase.query(id:day:)[1];
  v10 = swift_task_alloc();
  v0[42] = v10;
  *v10 = v0;
  v10[1] = sub_10002B4C8;
  v11 = v0[38];

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.query(id:day:)(v11, v6, v7, v8);
}

uint64_t sub_10002B4C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 336);
  v13 = *v2;
  v3[43] = a1;
  v3[44] = v1;

  if (v1)
  {
    v5 = v3[39];
    (*(v3[33] + 8))(v3[38], v3[32]);

    v6 = sub_10002B8B8;
  }

  else
  {
    v7 = v3[38];
    v8 = v3[39];
    v9 = v3[32];
    v10 = v3[33];
    v11 = *(v10 + 8);
    v3[45] = v11;
    v3[46] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v7, v9);

    v6 = sub_10002B628;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10002B628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[43];
  if (!*(v4 + 2))
  {
    v13 = v3[37];
    v14 = v3[15];
    FetchFaceRequest.id.getter();
    type metadata accessor for CommunicationActor();
    v3[47] = static CommunicationActor.shared.getter();
    sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    v18 = sub_10002B9BC;
    goto LABEL_9;
  }

  v3[51] = v4;
  v5 = *(v4 + 2);
  v3[52] = v5;
  if (!v5)
  {
    v19 = v3[35];
    v20 = v3[15];

    FetchFaceRequest.id.getter();
    v3[53] = type metadata accessor for CommunicationActor();
    v3[54] = static CommunicationActor.shared.getter();
    v3[55] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v21;
    v18 = sub_10002BC5C;
LABEL_9:
    v4 = v18;
    a2 = v15;
    a3 = v17;

    return _swift_task_switch(v4, a2, a3);
  }

  v6 = v3[29];
  v7 = v3[12];
  v3[56] = 0;
  if (!*(v4 + 2))
  {
    __break(1u);
    return _swift_task_switch(v4, a2, a3);
  }

  (*(v6 + 16))(v3[31], v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v3[28]);
  v22 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v3[57] = v9;
  *v9 = v3;
  v9[1] = sub_10002BD68;
  v10 = v3[31];
  v11 = v3[13];

  return v22(v10);
}

uint64_t sub_10002B8B8()
{
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[34];
  v7 = v0[30];
  v6 = v0[31];
  v8 = v0[27];
  v9 = v0[24];
  v10 = v0[22];
  v13 = v0[21];
  v14 = v0[18];
  v15 = v0[44];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10002B9BC()
{
  v1 = v0[47];
  v2 = v0[14];

  swift_beginAccess();
  v3 = *(v2 + 112);
  if (*(v3 + 16))
  {
    v4 = sub_100057AFC(v0[37]);
    v6 = v0[45];
    v5 = v0[46];
    v7 = v0[37];
    v8 = v0[32];
    if (v9)
    {
      v0[65] = *(*(v3 + 56) + 8 * v4);
      swift_endAccess();

      v6(v7, v8);
      v10 = sub_10002D388;
    }

    else
    {
      swift_endAccess();
      v6(v7, v8);
      v10 = sub_10002D598;
    }
  }

  else
  {
    v12 = v0[45];
    v11 = v0[46];
    v13 = v0[37];
    v14 = v0[32];
    swift_endAccess();
    v12(v13, v14);
    v10 = sub_100043E8C;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10002BAEC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 384);
  v6 = *v2;
  v4[49] = a1;
  v4[50] = v1;

  v7 = v3[46];
  v8 = v3[45];
  if (v1)
  {
    v9 = v4[43];
    v8(v4[36], v4[32]);

    v10 = sub_10002D284;
  }

  else
  {
    v8(v4[36], v4[32]);
    v10 = sub_10002CCBC;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10002BC5C()
{
  v1 = v0[54];
  v2 = v0[14];

  swift_beginAccess();
  v3 = *(v2 + 112);
  if (*(v3 + 16) && (v4 = sub_100057AFC(v0[35]), (v5 & 1) != 0))
  {
    v7 = v0[45];
    v6 = v0[46];
    v8 = v0[35];
    v9 = v0[32];
    v0[59] = *(*(v3 + 56) + 8 * v4);
    swift_endAccess();

    v7(v8, v9);
    v10 = sub_10002BFB4;
  }

  else
  {
    v12 = v0[45];
    v11 = v0[46];
    v13 = v0[35];
    v14 = v0[32];
    swift_endAccess();
    v12(v13, v14);
    v10 = sub_10002BEB8;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10002BD68()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v7 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v4 = v2[51];
    (*(v2[29] + 8))(v2[31], v2[28]);

    v5 = sub_10002CBB8;
  }

  else
  {
    (*(v2[29] + 8))(v2[31], v2[28]);
    v5 = sub_10002C9A4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10002BEB8()
{
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[34];
  v7 = v0[30];
  v6 = v0[31];
  v8 = v0[27];
  v9 = v0[24];
  v10 = v0[22];
  v13 = v0[21];
  v14 = v0[18];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10002BFB4()
{
  v1 = v0[55];
  v2 = v0[53];
  v0[60] = static CommunicationActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10002C048, v4, v3);
}

uint64_t sub_10002C048()
{
  v2 = v0[59];
  v1 = v0[60];
  v3 = v0[24];

  dispatch thunk of BroadcastSequence.listen()();

  return _swift_task_switch(sub_10002C0BC, 0, 0);
}

uint64_t sub_10002C0BC()
{
  v1 = v0[27];
  v3 = v0[23];
  v2 = v0[24];
  v0[9] = v0[28];
  v0[61] = swift_getOpaqueTypeConformance2();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v4 = v0[61];
  v5 = v0[25];
  v6 = v0[23];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v9 = swift_task_alloc();
  v0[62] = v9;
  *v9 = v0;
  v9[1] = sub_10002C1D8;
  v10 = v0[27];
  v11 = v0[25];
  v12 = v0[22];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v12, 0, 0, v0 + 10, v11, AssociatedConformanceWitness);
}

uint64_t sub_10002C1D8()
{
  v2 = *(*v1 + 496);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_10002C530;
  }

  else
  {
    v3 = sub_10002C2E8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002C2E8()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[22];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[59];
    (*(v0[26] + 8))(v0[27], v0[25]);

    v6 = v0[37];
    v5 = v0[38];
    v8 = v0[35];
    v7 = v0[36];
    v9 = v0[34];
    v11 = v0[30];
    v10 = v0[31];
    v12 = v0[27];
    v13 = v0[24];
    v14 = v0[22];
    v22 = v0[21];
    v23 = v0[18];

    v15 = v0[1];

    return v15();
  }

  else
  {
    v17 = v0[12];
    (*(v2 + 32))(v0[30], v3, v1);
    v24 = (v17 + *v17);
    v18 = v17[1];
    v19 = swift_task_alloc();
    v0[63] = v19;
    *v19 = v0;
    v19[1] = sub_10002C65C;
    v20 = v0[30];
    v21 = v0[13];

    return v24(v20);
  }
}

uint64_t sub_10002C530()
{
  v1 = v0[59];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];

  (*(v3 + 8))(v2, v4);
  v6 = v0[37];
  v5 = v0[38];
  v8 = v0[35];
  v7 = v0[36];
  v9 = v0[34];
  v11 = v0[30];
  v10 = v0[31];
  v12 = v0[27];
  v13 = v0[24];
  v14 = v0[22];
  v17 = v0[21];
  v18 = v0[18];
  v19 = v0[10];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10002C65C()
{
  v2 = *(*v1 + 504);
  v5 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v3 = sub_10002C85C;
  }

  else
  {
    v3 = sub_10002C770;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002C770()
{
  (*(v0[29] + 8))(v0[30], v0[28]);
  v1 = v0[61];
  v2 = v0[25];
  v3 = v0[23];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v6 = swift_task_alloc();
  v0[62] = v6;
  *v6 = v0;
  v6[1] = sub_10002C1D8;
  v7 = v0[27];
  v8 = v0[25];
  v9 = v0[22];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v9, 0, 0, v0 + 10, v8, AssociatedConformanceWitness);
}

uint64_t sub_10002C85C()
{
  v1 = v0[59];
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[25];
  v7 = v0[26];

  (*(v3 + 8))(v2, v4);
  (*(v7 + 8))(v5, v6);
  v9 = v0[37];
  v8 = v0[38];
  v11 = v0[35];
  v10 = v0[36];
  v12 = v0[34];
  v14 = v0[30];
  v13 = v0[31];
  v15 = v0[27];
  v16 = v0[24];
  v17 = v0[22];
  v20 = v0[21];
  v21 = v0[18];
  v22 = v0[64];

  v18 = v0[1];

  return v18();
}

uint64_t sub_10002C9A4(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[56] + 1;
  if (v4 == v3[52])
  {
    v5 = v3[51];
    v6 = v3[35];
    v7 = v3[15];

    FetchFaceRequest.id.getter();
    v3[53] = type metadata accessor for CommunicationActor();
    v3[54] = static CommunicationActor.shared.getter();
    v3[55] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
    a1 = sub_10002BC5C;
    a2 = v8;
    a3 = v10;

    return _swift_task_switch(a1, a2, a3);
  }

  v3[56] = v4;
  v11 = v3[51];
  if (v4 >= *(v11 + 16))
  {
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v12 = v3[12];
  (*(v3[29] + 16))(v3[31], v11 + ((*(v3[29] + 80) + 32) & ~*(v3[29] + 80)) + *(v3[29] + 72) * v4, v3[28]);
  v18 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v3[57] = v14;
  *v14 = v3;
  v14[1] = sub_10002BD68;
  v15 = v3[31];
  v16 = v3[13];

  return v18(v15);
}

uint64_t sub_10002CBB8()
{
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[34];
  v7 = v0[30];
  v6 = v0[31];
  v8 = v0[27];
  v9 = v0[24];
  v10 = v0[22];
  v13 = v0[21];
  v14 = v0[18];
  v15 = v0[58];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10002CCBC()
{
  v63 = v0;
  v1 = *(v0[49] + 16);

  v3 = sub_10002D644(v2);
  v5 = v4;

  if (v5)
  {
    v6 = v0[49];

    v10 = v0[43];
  }

  else
  {
    v11 = v0[43];

    if (static PhotosFaceIDDatabaseFix.hourValueLowerBound()() < v3)
    {
      v12 = v0[21];
      v14 = v0[17];
      v13 = v0[18];
      v16 = v0[15];
      v15 = v0[16];
      static Log.session.getter();
      (*(v14 + 16))(v13, v16, v15);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v56 = v0[45];
        v57 = v0[46];
        v19 = v0[34];
        v20 = v0[32];
        v58 = v0[20];
        v59 = v0[19];
        v60 = v0[21];
        v55 = v18;
        v22 = v0[17];
        v21 = v0[18];
        v53 = v21;
        v54 = v0[16];
        v23 = swift_slowAlloc();
        v62[0] = swift_slowAlloc();
        *v23 = 136315906;
        *(v23 + 4) = sub_100102F80(0xD000000000000013, 0x80000001001070A0, v62);
        *(v23 + 12) = 2080;
        FetchFaceRequest.id.getter();
        sub_1000438BC(&qword_10012A1C0, &type metadata accessor for UUID);
        v24 = dispatch thunk of CustomStringConvertible.description.getter();
        v26 = v25;
        v56(v19, v20);
        (*(v22 + 8))(v53, v54);
        v27 = sub_100102F80(v24, v26, v62);

        *(v23 + 14) = v27;
        *(v23 + 22) = 2048;
        *(v23 + 24) = v3;
        *(v23 + 32) = 2048;
        *(v23 + 34) = static TimeUtilities.currentEpoch.getter();
        _os_log_impl(&_mh_execute_header, v17, v55, "%s: queryByDay(%s) returned photos for day %ld; current day = %ld", v23, 0x2Au);
        swift_arrayDestroy();

        (*(v58 + 8))(v60, v59);
      }

      else
      {
        v29 = v0[20];
        v28 = v0[21];
        v31 = v0[18];
        v30 = v0[19];
        v32 = v0[16];
        v33 = v0[17];

        (*(v33 + 8))(v31, v32);
        (*(v29 + 8))(v28, v30);
      }
    }

    v7 = static TimeUtilities.currentEpoch.getter();
    v34 = v7 - v3;
    if (__OFSUB__(v7, v3))
    {
      goto LABEL_24;
    }

    v35 = __OFSUB__(v34, 1);
    v36 = v34 - 1;
    if (v35)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (v36 < 0)
    {
      v35 = __OFSUB__(0, v36);
      v36 = -v36;
      if (v35)
      {
        goto LABEL_29;
      }
    }

    if (!v1)
    {
      goto LABEL_26;
    }

    v37 = v0[50];
    v38 = v36 % v1;
    v0[11] = v0[49];
    sub_10000560C(&qword_10012A410, &qword_1001091A0);
    sub_10000CC24(&qword_10012A418, &qword_10012A410, &qword_1001091A0);
    v39 = Sequence.sorted<A>(_:)();

    if ((v38 & 0x8000000000000000) != 0)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v38 >= *(v39 + 16))
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return _swift_task_switch(v7, v8, v9);
    }

    v10 = *(v39 + 16 * v38 + 40);
  }

  v0[51] = v10;
  v40 = *(v10 + 16);
  v0[52] = v40;
  if (!v40)
  {
    v48 = v0[35];
    v49 = v0[15];

    FetchFaceRequest.id.getter();
    v0[53] = type metadata accessor for CommunicationActor();
    v0[54] = static CommunicationActor.shared.getter();
    v0[55] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
    v50 = dispatch thunk of Actor.unownedExecutor.getter();
    v52 = v51;
    v7 = sub_10002BC5C;
    v8 = v50;
    v9 = v52;

    return _swift_task_switch(v7, v8, v9);
  }

  v41 = v0[29];
  v42 = v0[12];
  v0[56] = 0;
  if (!*(v10 + 16))
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  (*(v41 + 16))(v0[31], v10 + ((*(v41 + 80) + 32) & ~*(v41 + 80)), v0[28]);
  v61 = (v42 + *v42);
  v43 = v42[1];
  v44 = swift_task_alloc();
  v0[57] = v44;
  *v44 = v0;
  v44[1] = sub_10002BD68;
  v45 = v0[31];
  v46 = v0[13];

  return v61(v45);
}

uint64_t sub_10002D284()
{
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[34];
  v7 = v0[30];
  v6 = v0[31];
  v8 = v0[27];
  v9 = v0[24];
  v10 = v0[22];
  v13 = v0[21];
  v14 = v0[18];
  v15 = v0[50];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10002D388()
{
  v1 = v0[65];

  v4 = v0[43];
  v0[51] = v4;
  v5 = *(v4 + 2);
  v0[52] = v5;
  if (!v5)
  {
    v13 = v0[35];
    v14 = v0[15];

    FetchFaceRequest.id.getter();
    v0[53] = type metadata accessor for CommunicationActor();
    v0[54] = static CommunicationActor.shared.getter();
    v0[55] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    v4 = sub_10002BC5C;
    v2 = v15;
    v3 = v17;

    return _swift_task_switch(v4, v2, v3);
  }

  v6 = v0[29];
  v7 = v0[12];
  v0[56] = 0;
  if (!*(v4 + 2))
  {
    __break(1u);
    return _swift_task_switch(v4, v2, v3);
  }

  (*(v6 + 16))(v0[31], v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v0[28]);
  v18 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[57] = v9;
  *v9 = v0;
  v9[1] = sub_10002BD68;
  v10 = v0[31];
  v11 = v0[13];

  return v18(v10);
}

uint64_t sub_10002D598()
{
  v1 = v0[36];
  v2 = v0[14];
  v3 = v0[15];
  FetchFaceRequest.id.getter();
  v4 = async function pointer to dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)[1];
  v5 = swift_task_alloc();
  v0[48] = v5;
  *v5 = v0;
  v5[1] = sub_10002BAEC;
  v6 = v0[40];
  v7 = v0[41];
  v8 = v0[36];

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)(v8, v6, v7);
}

uint64_t sub_10002D644(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  if (v4)
  {
    v5 = 0;
    v6 = __clz(__rbit64(v4));
    v7 = (v4 - 1) & v4;
    v8 = (v2 + 63) >> 6;
LABEL_9:
    v12 = *(a1 + 48);
    result = *(v12 + 8 * v6);
    if (!v7)
    {
      goto LABEL_11;
    }

    do
    {
      v14 = v5;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = *(v12 + ((v14 << 9) | (8 * v15)));
      if (result <= v16)
      {
        result = v16;
      }
    }

    while (v7);
LABEL_11:
    while (1)
    {
      v14 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v14 >= v8)
      {
        return result;
      }

      v7 = *(v1 + 8 * v14);
      ++v5;
      if (v7)
      {
        v5 = v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = (v2 + 63) >> 6;
    while (v8 - 1 != v10)
    {
      v5 = v10 + 1;
      v11 = *(a1 + 72 + 8 * v10);
      v9 -= 64;
      ++v10;
      if (v11)
      {
        v7 = (v11 - 1) & v11;
        v6 = __clz(__rbit64(v11)) - v9;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_10002D750()
{
  v1[11] = v0;
  v2 = type metadata accessor for Logger();
  v1[12] = v2;
  v3 = *(v2 - 8);
  v1[13] = v3;
  v4 = *(v3 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = type metadata accessor for CommunicationActor();
  v1[16] = static CommunicationActor.shared.getter();
  v1[17] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[18] = v6;
  v1[19] = v5;

  return _swift_task_switch(sub_10002D87C, v6, v5);
}

uint64_t sub_10002D87C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v3 = *(v0 + 88);
  v4 = *(v3 + 16);
  *(v0 + 312) = v4;
  sub_100103EAC(v4);
  *(v0 + 160) = *(v3 + 120);
  *(v0 + 168) = static CommunicationActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 176) = v6;
  *(v0 + 184) = v5;

  return _swift_task_switch(sub_10002D928, v6, v5);
}

uint64_t sub_10002D928()
{
  v1 = v0[20];
  v2 = sub_1000865F0();
  v0[24] = v2;
  if (v2)
  {
    swift_beginAccess();
    v3 = swift_task_alloc();
    v0[25] = v3;
    *v3 = v0;
    v3[1] = sub_10002DA24;

    return sub_100041074();
  }

  else
  {
    v5 = v0[21];

    v6 = v0[18];
    v7 = v0[19];

    return _swift_task_switch(sub_100043E68, v6, v7);
  }
}

uint64_t sub_10002DA24(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 192);
  v8 = *v1;
  *(*v1 + 313) = a1;

  swift_endAccess();

  v5 = *(v2 + 184);
  v6 = *(v2 + 176);

  return _swift_task_switch(sub_10002DB74, v6, v5);
}

uint64_t sub_10002DB74()
{
  v1 = v0[21];

  v2 = v0[18];
  v3 = v0[19];

  return _swift_task_switch(sub_10002DBD8, v2, v3);
}

uint64_t sub_10002DBD8()
{
  v1 = v0[17];
  v2 = v0[15];
  v0[26] = static CommunicationActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[27] = v4;
  v0[28] = v3;

  return _swift_task_switch(sub_10002DC6C, v4, v3);
}

uint64_t sub_10002DC6C()
{
  v1 = v0[20];
  v2 = sub_1000865F0();
  v0[29] = v2;
  if (v2)
  {
    swift_beginAccess();
    v3 = swift_task_alloc();
    v0[30] = v3;
    *v3 = v0;
    v3[1] = sub_10002DD68;

    return sub_100041074();
  }

  else
  {
    v5 = v0[26];

    v6 = v0[18];
    v7 = v0[19];

    return _swift_task_switch(sub_100043E68, v6, v7);
  }
}

uint64_t sub_10002DD68(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 232);
  v8 = *v1;
  *(*v1 + 314) = a1;

  swift_endAccess();

  v5 = *(v2 + 224);
  v6 = *(v2 + 216);

  return _swift_task_switch(sub_10002DEB8, v6, v5);
}

uint64_t sub_10002DEB8()
{
  v1 = v0[26];

  v2 = v0[18];
  v3 = v0[19];

  return _swift_task_switch(sub_10002DF1C, v2, v3);
}

uint64_t sub_10002DF1C()
{
  v1 = v0[17];
  v2 = v0[15];
  v0[31] = static CommunicationActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[32] = v4;
  v0[33] = v3;

  return _swift_task_switch(sub_10002DFB0, v4, v3);
}

uint64_t sub_10002DFB0()
{
  v1 = v0[20];
  v2 = sub_1000865F0();
  v0[34] = v2;
  if (v2)
  {
    swift_beginAccess();
    v3 = swift_task_alloc();
    v0[35] = v3;
    *v3 = v0;
    v3[1] = sub_10002E0AC;

    return sub_100041074();
  }

  else
  {
    v5 = v0[31];

    v6 = v0[18];
    v7 = v0[19];

    return _swift_task_switch(sub_100043E68, v6, v7);
  }
}

uint64_t sub_10002E0AC(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *(*v1 + 272);
  v8 = *v1;
  *(*v1 + 315) = a1;

  swift_endAccess();

  v5 = *(v2 + 264);
  v6 = *(v2 + 256);

  return _swift_task_switch(sub_10002E1FC, v6, v5);
}

uint64_t sub_10002E1FC()
{
  v1 = v0[31];

  v2 = v0[18];
  v3 = v0[19];

  return _swift_task_switch(sub_10002E260, v2, v3);
}

uint64_t sub_10002E260()
{
  if (*(v0 + 313) == 1 && *(v0 + 314) == 1 && *(v0 + 315) == 1)
  {
    v1 = *(v0 + 112);
    static Log.session.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Device is ready for a sync. Notifying it of the new data.", v4, 2u);
    }

    v5 = *(v0 + 136);
    v7 = *(v0 + 112);
    v6 = *(v0 + 120);
    v8 = *(v0 + 96);
    v9 = *(v0 + 104);
    v10 = *(v0 + 88);

    (*(v9 + 8))(v7, v8);
    *(v0 + 288) = *(v10 + 96);
    *(v0 + 296) = static CommunicationActor.shared.getter();
    v12 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10002E418, v12, v11);
  }

  else
  {
    v13 = *(v0 + 128);

    v14 = *(v0 + 112);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_10002E418()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 312);

  v4 = *(v2 + 16);
  sub_100012994(0x3010200u >> (8 * v3), 0, 0xC000000000000000);
  *(v0 + 304) = 0;
  v5 = *(v0 + 144);
  v6 = *(v0 + 152);

  return _swift_task_switch(sub_100043E68, v5, v6);
}

uint64_t sub_10002E4C4()
{
  v1[11] = v0;
  v2 = type metadata accessor for Logger();
  v1[12] = v2;
  v3 = *(v2 - 8);
  v1[13] = v3;
  v4 = *(v3 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = type metadata accessor for CommunicationActor();
  v1[16] = static CommunicationActor.shared.getter();
  v1[17] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[18] = v6;
  v1[19] = v5;

  return _swift_task_switch(sub_10002E5F0, v6, v5);
}

uint64_t sub_10002E5F0()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v3 = *(v0 + 88);
  v4 = *(v3 + 16);
  *(v0 + 312) = v4;
  sub_100103EAC(v4);
  *(v0 + 160) = *(v3 + 120);
  *(v0 + 168) = static CommunicationActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 176) = v6;
  *(v0 + 184) = v5;

  return _swift_task_switch(sub_10002E69C, v6, v5);
}

uint64_t sub_10002E69C()
{
  v1 = v0[20];
  v2 = sub_1000865F0();
  v0[24] = v2;
  if (v2)
  {
    swift_beginAccess();
    v3 = swift_task_alloc();
    v0[25] = v3;
    *v3 = v0;
    v3[1] = sub_10002E798;

    return sub_100041074();
  }

  else
  {
    v5 = v0[21];

    v6 = v0[18];
    v7 = v0[19];

    return _swift_task_switch(sub_100043E68, v6, v7);
  }
}

uint64_t sub_10002E798(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 192);
  v8 = *v1;
  *(*v1 + 313) = a1;

  swift_endAccess();

  v5 = *(v2 + 184);
  v6 = *(v2 + 176);

  return _swift_task_switch(sub_10002E8E8, v6, v5);
}

uint64_t sub_10002E8E8()
{
  v1 = v0[21];

  v2 = v0[18];
  v3 = v0[19];

  return _swift_task_switch(sub_10002E94C, v2, v3);
}

uint64_t sub_10002E94C()
{
  v1 = v0[17];
  v2 = v0[15];
  v0[26] = static CommunicationActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[27] = v4;
  v0[28] = v3;

  return _swift_task_switch(sub_10002E9E0, v4, v3);
}

uint64_t sub_10002E9E0()
{
  v1 = v0[20];
  v2 = sub_1000865F0();
  v0[29] = v2;
  if (v2)
  {
    swift_beginAccess();
    v3 = swift_task_alloc();
    v0[30] = v3;
    *v3 = v0;
    v3[1] = sub_10002EADC;

    return sub_100041074();
  }

  else
  {
    v5 = v0[26];

    v6 = v0[18];
    v7 = v0[19];

    return _swift_task_switch(sub_100043E68, v6, v7);
  }
}

uint64_t sub_10002EADC(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 232);
  v8 = *v1;
  *(*v1 + 314) = a1;

  swift_endAccess();

  v5 = *(v2 + 224);
  v6 = *(v2 + 216);

  return _swift_task_switch(sub_10002DEB8, v6, v5);
}

uint64_t sub_10002EC2C()
{
  v1[11] = v0;
  v2 = type metadata accessor for Logger();
  v1[12] = v2;
  v3 = *(v2 - 8);
  v1[13] = v3;
  v4 = *(v3 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = type metadata accessor for CommunicationActor();
  v1[16] = static CommunicationActor.shared.getter();
  v1[17] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[18] = v6;
  v1[19] = v5;

  return _swift_task_switch(sub_10002ED58, v6, v5);
}

uint64_t sub_10002ED58()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v3 = *(v0 + 88);
  v4 = *(v3 + 16);
  *(v0 + 312) = v4;
  sub_100103EAC(v4);
  *(v0 + 160) = *(v3 + 120);
  *(v0 + 168) = static CommunicationActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 176) = v6;
  *(v0 + 184) = v5;

  return _swift_task_switch(sub_10002EE04, v6, v5);
}

uint64_t sub_10002EE04()
{
  v1 = v0[20];
  v2 = sub_1000865F0();
  v0[24] = v2;
  if (v2)
  {
    swift_beginAccess();
    v3 = swift_task_alloc();
    v0[25] = v3;
    *v3 = v0;
    v3[1] = sub_10002EF00;

    return sub_100041074();
  }

  else
  {
    v5 = v0[21];

    v6 = v0[18];
    v7 = v0[19];

    return _swift_task_switch(sub_100043E68, v6, v7);
  }
}

uint64_t sub_10002EF00(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 192);
  v8 = *v1;
  *(*v1 + 313) = a1;

  swift_endAccess();

  v5 = *(v2 + 184);
  v6 = *(v2 + 176);

  return _swift_task_switch(sub_10002F050, v6, v5);
}

uint64_t sub_10002F050()
{
  v1 = v0[21];

  v2 = v0[18];
  v3 = v0[19];

  return _swift_task_switch(sub_10002F0B4, v2, v3);
}

uint64_t sub_10002F0B4()
{
  v1 = v0[17];
  v2 = v0[15];
  v0[26] = static CommunicationActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[27] = v4;
  v0[28] = v3;

  return _swift_task_switch(sub_10002F148, v4, v3);
}

uint64_t sub_10002F148()
{
  v1 = v0[20];
  v2 = sub_1000865F0();
  v0[29] = v2;
  if (v2)
  {
    swift_beginAccess();
    v3 = swift_task_alloc();
    v0[30] = v3;
    *v3 = v0;
    v3[1] = sub_10002F244;

    return sub_100041074();
  }

  else
  {
    v5 = v0[26];

    v6 = v0[18];
    v7 = v0[19];

    return _swift_task_switch(sub_100043E68, v6, v7);
  }
}

uint64_t sub_10002F244(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 232);
  v8 = *v1;
  *(*v1 + 314) = a1;

  swift_endAccess();

  v5 = *(v2 + 224);
  v6 = *(v2 + 216);

  return _swift_task_switch(sub_10002DEB8, v6, v5);
}

uint64_t sub_10002F394()
{
  v1[11] = v0;
  v2 = type metadata accessor for Logger();
  v1[12] = v2;
  v3 = *(v2 - 8);
  v1[13] = v3;
  v4 = *(v3 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = type metadata accessor for CommunicationActor();
  v1[16] = static CommunicationActor.shared.getter();
  v1[17] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[18] = v6;
  v1[19] = v5;

  return _swift_task_switch(sub_10002F4C0, v6, v5);
}

uint64_t sub_10002F4C0()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v3 = *(v0 + 88);
  v4 = *(v3 + 16);
  *(v0 + 312) = v4;
  sub_100103EAC(v4);
  *(v0 + 160) = *(v3 + 120);
  *(v0 + 168) = static CommunicationActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 176) = v6;
  *(v0 + 184) = v5;

  return _swift_task_switch(sub_10002F56C, v6, v5);
}

uint64_t sub_10002F56C()
{
  v1 = v0[20];
  v2 = sub_1000865F0();
  v0[24] = v2;
  if (v2)
  {
    swift_beginAccess();
    v3 = swift_task_alloc();
    v0[25] = v3;
    *v3 = v0;
    v3[1] = sub_10002F668;

    return sub_100041074();
  }

  else
  {
    v5 = v0[21];

    v6 = v0[18];
    v7 = v0[19];

    return _swift_task_switch(sub_10002FCF0, v6, v7);
  }
}

uint64_t sub_10002F668(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 192);
  v8 = *v1;
  *(*v1 + 313) = a1;

  swift_endAccess();

  v5 = *(v2 + 184);
  v6 = *(v2 + 176);

  return _swift_task_switch(sub_10002F7B8, v6, v5);
}

uint64_t sub_10002F7B8()
{
  v1 = v0[21];

  v2 = v0[18];
  v3 = v0[19];

  return _swift_task_switch(sub_10002F81C, v2, v3);
}

uint64_t sub_10002F81C()
{
  v1 = v0[17];
  v2 = v0[15];
  v0[26] = static CommunicationActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[27] = v4;
  v0[28] = v3;

  return _swift_task_switch(sub_10002F8B0, v4, v3);
}

uint64_t sub_10002F8B0()
{
  v1 = v0[20];
  v2 = sub_1000865F0();
  v0[29] = v2;
  if (v2)
  {
    swift_beginAccess();
    v3 = swift_task_alloc();
    v0[30] = v3;
    *v3 = v0;
    v3[1] = sub_10002F9AC;

    return sub_100041074();
  }

  else
  {
    v5 = v0[26];

    v6 = v0[18];
    v7 = v0[19];

    return _swift_task_switch(sub_100043E68, v6, v7);
  }
}

uint64_t sub_10002F9AC(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 232);
  v8 = *v1;
  *(*v1 + 314) = a1;

  swift_endAccess();

  v5 = *(v2 + 224);
  v6 = *(v2 + 216);

  return _swift_task_switch(sub_10002FAFC, v6, v5);
}

uint64_t sub_10002FAFC()
{
  v1 = v0[26];

  v2 = v0[18];
  v3 = v0[19];

  return _swift_task_switch(sub_10002FB60, v2, v3);
}

uint64_t sub_10002FB60()
{
  v1 = v0[17];
  v2 = v0[15];
  v0[31] = static CommunicationActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[32] = v4;
  v0[33] = v3;

  return _swift_task_switch(sub_10002FBF4, v4, v3);
}

uint64_t sub_10002FBF4()
{
  v1 = v0[20];
  v2 = sub_1000865F0();
  v0[34] = v2;
  if (v2)
  {
    swift_beginAccess();
    v3 = swift_task_alloc();
    v0[35] = v3;
    *v3 = v0;
    v3[1] = sub_10002FD5C;

    return sub_100041074();
  }

  else
  {
    v5 = v0[31];

    v6 = v0[18];
    v7 = v0[19];

    return _swift_task_switch(sub_100043E68, v6, v7);
  }
}

uint64_t sub_10002FCF0()
{
  v1 = v0[16];

  v2 = v0[14];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10002FD5C(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *(*v1 + 272);
  v8 = *v1;
  *(*v1 + 315) = a1;

  swift_endAccess();

  v5 = *(v2 + 264);
  v6 = *(v2 + 256);

  return _swift_task_switch(sub_10002FEAC, v6, v5);
}

uint64_t sub_10002FEAC()
{
  v1 = v0[31];

  v2 = v0[18];
  v3 = v0[19];

  return _swift_task_switch(sub_10002FF10, v2, v3);
}

uint64_t sub_10002FF10()
{
  if (*(v0 + 313) == 1 && *(v0 + 314) == 1 && *(v0 + 315) == 1)
  {
    v1 = *(v0 + 112);
    static Log.session.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Device is ready for a sync. Notifying it of the new data.", v4, 2u);
    }

    v5 = *(v0 + 136);
    v7 = *(v0 + 112);
    v6 = *(v0 + 120);
    v8 = *(v0 + 96);
    v9 = *(v0 + 104);
    v10 = *(v0 + 88);

    (*(v9 + 8))(v7, v8);
    *(v0 + 288) = *(v10 + 96);
    *(v0 + 296) = static CommunicationActor.shared.getter();
    v12 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1000300C8, v12, v11);
  }

  else
  {
    v13 = *(v0 + 128);

    v14 = *(v0 + 112);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1000300C8()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 312);

  v4 = *(v2 + 16);
  sub_100012994(0x3010200u >> (8 * v3), 0, 0xC000000000000000);
  *(v0 + 304) = 0;
  v5 = *(v0 + 144);
  v6 = *(v0 + 152);

  return _swift_task_switch(sub_100043E68, v5, v6);
}

uint64_t sub_100030174()
{
  v1 = v0[16];
  v2 = v0[14];

  v3 = v0[1];
  v4 = v0[38];

  return v3();
}

uint64_t sub_1000301E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a8;
  v8[19] = v28;
  v8[16] = a4;
  v8[17] = a5;
  v10 = type metadata accessor for UUID();
  v8[20] = v10;
  v11 = *(v10 - 8);
  v8[21] = v11;
  v12 = *(v11 + 64) + 15;
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v13 = type metadata accessor for ShuffleID();
  v8[24] = v13;
  v14 = *(v13 - 8);
  v8[25] = v14;
  v15 = *(v14 + 64) + 15;
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  v8[28] = v16;
  v17 = *(v16 - 8);
  v8[29] = v17;
  v18 = *(v17 + 64) + 15;
  v8[30] = swift_task_alloc();
  v19 = type metadata accessor for StoredPhoto();
  v8[31] = v19;
  v20 = *(v19 - 8);
  v8[32] = v20;
  v21 = *(v20 + 64) + 15;
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v22 = *(*(sub_10000560C(&qword_10012A420, &qword_1001091A8) - 8) + 64) + 15;
  v8[35] = swift_task_alloc();
  v8[36] = type metadata accessor for CommunicationActor();
  v8[37] = static CommunicationActor.shared.getter();
  v26 = (a6 + *a6);
  v23 = a6[1];
  v24 = swift_task_alloc();
  v8[38] = v24;
  *v24 = v8;
  v24[1] = sub_1000304D8;

  return v26(v8 + 2);
}

uint64_t sub_1000304D8()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 304);
  v5 = *(*v1 + 296);
  v6 = *(*v1 + 288);
  v7 = *v1;
  v3[39] = v2;

  v3[40] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[41] = v9;
  v3[42] = v8;
  if (v2)
  {
    v10 = sub_10003084C;
  }

  else
  {
    v10 = sub_100030678;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_100030678()
{
  v1 = v0[5];
  v2 = sub_10000C3CC(v0 + 2, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  sub_10000C1AC(v0 + 7);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  v6 = v0[40];
  v7 = v0[36];
  v8 = static CommunicationActor.shared.getter();
  v0[43] = v8;
  v9 = v0[10];
  v10 = v0[11];
  sub_10000C410((v0 + 7), v9);
  v11 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v12 = swift_task_alloc();
  v0[44] = v12;
  *v12 = v0;
  v12[1] = sub_100030984;
  v13 = v0[35];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v13, v8, v6, v0 + 15, v9, v10);
}

uint64_t sub_10003084C()
{
  v1 = v0[37];

  v2 = v0[39];
  v3 = v0[19];
  swift_errorRetain();
  dispatch thunk of BroadcastSequence.finish(throwing:)();

  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];
  v7 = v0[30];
  v9 = v0[26];
  v8 = v0[27];
  v10 = v0[23];
  v15 = v0[22];
  v11 = v0[16];
  v12 = v0[17];
  swift_beginAccess();
  sub_100041774(v12);
  swift_endAccess();

  v13 = v0[1];

  return v13();
}

uint64_t sub_100030984()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v9 = *v1;

  v4 = v2[43];

  v5 = v2[41];
  v6 = v2[42];
  if (v0)
  {
    v7 = sub_100031274;
  }

  else
  {
    v7 = sub_100030AA4;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100030AA4()
{
  v103 = v0;
  v1 = v0[35];
  v2 = sub_10000560C(&qword_10012A428, &unk_1001091B0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[37];
    v4 = v0[19];

    sub_10000C304(v0 + 7);
    dispatch thunk of BroadcastSequence.finish(throwing:)();
    sub_10000C304(v0 + 2);
    v6 = v0[34];
    v5 = v0[35];
    v7 = v0[33];
    v8 = v0[30];
    v10 = v0[26];
    v9 = v0[27];
    v11 = v0[23];
    v99 = v0[22];
    v12 = v0[16];
    v13 = v0[17];
    swift_beginAccess();
    sub_100041774(v13);
    swift_endAccess();

    v14 = v0[1];

    return v14();
  }

  else
  {
    v17 = v0[33];
    v16 = v0[34];
    v18 = v0[31];
    v19 = v0[32];
    v20 = v0[30];
    v100 = v0[27];
    v21 = v0[25];
    v98 = v0[24];
    v22 = v0[18];
    v23 = *v1;
    v0[45] = *v1;
    v24 = *(v2 + 48);
    v25 = v23;
    (*(v19 + 32))(v16, &v1[v24], v18);
    static Log.default.getter();
    (*(v19 + 16))(v17, v16, v18);
    v97 = *(v21 + 16);
    v97(v100, v22, v98);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[32];
    v30 = v0[33];
    v31 = v0[30];
    v101 = v0[31];
    v33 = v0[28];
    v32 = v0[29];
    v34 = v0[27];
    if (v28)
    {
      v89 = v0[26];
      v90 = v0[25];
      v88 = v0[24];
      v94 = v0[29];
      v95 = v0[30];
      v35 = v0[23];
      v96 = v25;
      v36 = v0[20];
      v37 = v0[21];
      v93 = v0[28];
      v38 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      *v38 = 136315650;
      log = v26;
      StoredPhoto.localIdentifier.getter();
      sub_1000438BC(&qword_10012A1C0, &type metadata accessor for UUID);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v91 = v27;
      v41 = v40;
      (*(v37 + 8))(v35, v36);
      v42 = *(v29 + 8);
      v42(v30, v101);
      v43 = sub_100102F80(v39, v41, &v102);

      *(v38 + 4) = v43;
      *(v38 + 12) = 2080;
      v97(v89, v34, v88);
      v44 = *(v90 + 8);
      v45 = v34;
      v46 = v42;
      v44(v45, v88);
      sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      v44(v89, v88);
      v50 = sub_100102F80(v47, v49, &v102);

      *(v38 + 14) = v50;
      *(v38 + 22) = 2080;
      v25 = v96;
      v51 = Array.description.getter();
      v53 = sub_100102F80(v51, v52, &v102);

      *(v38 + 24) = v53;
      _os_log_impl(&_mh_execute_header, log, v91, "Relating photo %s for %s on days %s", v38, 0x20u);
      swift_arrayDestroy();

      v54 = (*(v94 + 8))(v95, v93);
    }

    else
    {
      (*(v0[25] + 8))(v0[27], v0[24]);

      v46 = *(v29 + 8);
      v46(v30, v101);
      v54 = (*(v32 + 8))(v31, v33);
    }

    v0[46] = v46;
    v59 = *(v25 + 16);
    v0[47] = v59;
    if (v59)
    {
      v0[48] = 0;
      v60 = v0[45];
      if (*(v60 + 16))
      {
        v61 = v0[34];
        v62 = v0[24];
        v63 = v0[21];
        v64 = v0[22];
        v65 = v0[18];
        v66 = v0[16];
        v67 = *(v60 + 32);
        sub_10000560C(&qword_10012A430, &qword_1001093D0);
        v68 = *(v63 + 72);
        v69 = (*(v63 + 80) + 32) & ~*(v63 + 80);
        v70 = swift_allocObject();
        v0[49] = v70;
        *(v70 + 16) = xmmword_1001089C0;
        StoredPhoto.localIdentifier.getter();
        sub_1000438BC(&qword_10012A2B0, &type metadata accessor for ShuffleID);
        dispatch thunk of PhotosFaceID.id.getter();
        v71 = type metadata accessor for GalleryDatabase();
        v72 = sub_1000438BC(&qword_10012A438, &type metadata accessor for GalleryDatabase);
        v73 = async function pointer to dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)[1];
        v74 = swift_task_alloc();
        v0[50] = v74;
        *v74 = v0;
        v74[1] = sub_1000313BC;
        v55 = v0[22];
        v54 = v70;
        v56 = v67;
        v57 = v71;
        v58 = v72;
      }

      else
      {
        __break(1u);
      }

      return dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)(v54, v55, v56, v57, v58);
    }

    else
    {
      v75 = v0[45];
      v76 = v0[34];
      v77 = v0[31];
      v78 = v0[32];
      v79 = v0[19];

      dispatch thunk of BroadcastSequence.yield(_:)();
      v46(v76, v77);
      v80 = v0[40];
      v81 = v0[36];
      v82 = static CommunicationActor.shared.getter();
      v0[43] = v82;
      v83 = v0[10];
      v84 = v0[11];
      sub_10000C410((v0 + 7), v83);
      v85 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
      v86 = swift_task_alloc();
      v0[44] = v86;
      *v86 = v0;
      v86[1] = sub_100030984;
      v87 = v0[35];

      return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v87, v82, v80, v0 + 15, v83, v84);
    }
  }
}

uint64_t sub_100031274()
{
  v1 = v0[37];

  v2 = v0[15];
  sub_10000C304(v0 + 7);
  sub_10000C304(v0 + 2);
  v3 = v0[19];
  swift_errorRetain();
  dispatch thunk of BroadcastSequence.finish(throwing:)();

  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];
  v7 = v0[30];
  v9 = v0[26];
  v8 = v0[27];
  v10 = v0[23];
  v15 = v0[22];
  v11 = v0[16];
  v12 = v0[17];
  swift_beginAccess();
  sub_100041774(v12);
  swift_endAccess();

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000313BC()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v4 = *v1;
  v2[51] = v0;

  v5 = v2[49];
  if (v0)
  {
    v6 = v2[45];
    (*(v2[21] + 8))(v2[22], v2[20]);

    v7 = v2[41];
    v8 = v2[42];
    v9 = sub_100031804;
  }

  else
  {
    (*(v2[21] + 8))(v2[22], v2[20]);

    v7 = v2[41];
    v8 = v2[42];
    v9 = sub_100031538;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100031538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5[48] + 1;
  if (v6 == v5[47])
  {
    v7 = v5[45];
    v8 = v5[46];
    v9 = v5[34];
    v10 = v5[31];
    v11 = v5[32];
    v12 = v5[19];

    dispatch thunk of BroadcastSequence.yield(_:)();
    v8(v9, v10);
    v13 = v5[40];
    v14 = v5[36];
    v15 = static CommunicationActor.shared.getter();
    v5[43] = v15;
    v16 = v5[10];
    v17 = v5[11];
    sub_10000C410((v5 + 7), v16);
    v18 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v19 = swift_task_alloc();
    v5[44] = v19;
    *v19 = v5;
    v19[1] = sub_100030984;
    v20 = v5[35];

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v20, v15, v13, v5 + 15, v16, v17);
  }

  else
  {
    v5[48] = v6;
    v21 = v5[45];
    if (v6 >= *(v21 + 16))
    {
      __break(1u);
    }

    else
    {
      v22 = v5[34];
      v23 = v5[24];
      v24 = v5[21];
      v25 = v5[22];
      v26 = v5[18];
      v27 = v5[16];
      v28 = *(v21 + 8 * v6 + 32);
      sub_10000560C(&qword_10012A430, &qword_1001093D0);
      v29 = *(v24 + 72);
      v30 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v31 = swift_allocObject();
      v5[49] = v31;
      *(v31 + 16) = xmmword_1001089C0;
      StoredPhoto.localIdentifier.getter();
      sub_1000438BC(&qword_10012A2B0, &type metadata accessor for ShuffleID);
      dispatch thunk of PhotosFaceID.id.getter();
      v32 = type metadata accessor for GalleryDatabase();
      v33 = sub_1000438BC(&qword_10012A438, &type metadata accessor for GalleryDatabase);
      v34 = async function pointer to dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)[1];
      v35 = swift_task_alloc();
      v5[50] = v35;
      *v35 = v5;
      v35[1] = sub_1000313BC;
      a2 = v5[22];
      a1 = v31;
      a3 = v28;
      a4 = v32;
      a5 = v33;
    }

    return dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_100031804()
{
  v1 = v0[46];
  v2 = v0[37];
  v3 = v0[34];
  v4 = v0[31];
  v5 = v0[32];

  v1(v3, v4);
  sub_10000C304(v0 + 7);
  sub_10000C304(v0 + 2);
  v6 = v0[51];
  v7 = v0[19];
  swift_errorRetain();
  dispatch thunk of BroadcastSequence.finish(throwing:)();

  v9 = v0[34];
  v8 = v0[35];
  v10 = v0[33];
  v11 = v0[30];
  v13 = v0[26];
  v12 = v0[27];
  v14 = v0[23];
  v19 = v0[22];
  v15 = v0[16];
  v16 = v0[17];
  swift_beginAccess();
  sub_100041774(v16);
  swift_endAccess();

  v17 = v0[1];

  return v17();
}

uint64_t sub_100031970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a8;
  v8[16] = v28;
  v8[13] = a4;
  v8[14] = a5;
  v10 = type metadata accessor for UUID();
  v8[17] = v10;
  v11 = *(v10 - 8);
  v8[18] = v11;
  v12 = *(v11 + 64) + 15;
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v13 = type metadata accessor for DailyID();
  v8[21] = v13;
  v14 = *(v13 - 8);
  v8[22] = v14;
  v15 = *(v14 + 64) + 15;
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  v8[25] = v16;
  v17 = *(v16 - 8);
  v8[26] = v17;
  v18 = *(v17 + 64) + 15;
  v8[27] = swift_task_alloc();
  v19 = type metadata accessor for StoredPhoto();
  v8[28] = v19;
  v20 = *(v19 - 8);
  v8[29] = v20;
  v21 = *(v20 + 64) + 15;
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v22 = *(*(sub_10000560C(&qword_10012A420, &qword_1001091A8) - 8) + 64) + 15;
  v8[32] = swift_task_alloc();
  v8[33] = type metadata accessor for CommunicationActor();
  v8[34] = static CommunicationActor.shared.getter();
  v26 = (a6 + *a6);
  v23 = a6[1];
  v24 = swift_task_alloc();
  v8[35] = v24;
  *v24 = v8;
  v24[1] = sub_100031C64;

  return v26(v8 + 2);
}

uint64_t sub_100031C64()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 272);
  v6 = *(*v1 + 264);
  v7 = *v1;
  v3[36] = v2;

  v3[37] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[38] = v9;
  v3[39] = v8;
  if (v2)
  {
    v10 = sub_100043E98;
  }

  else
  {
    v10 = sub_100031E04;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_100031E04()
{
  v1 = v0[5];
  v2 = sub_10000C3CC(v0 + 2, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  sub_10000C1AC(v0 + 7);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  v6 = v0[37];
  v7 = v0[33];
  v8 = static CommunicationActor.shared.getter();
  v0[40] = v8;
  v9 = v0[10];
  v10 = v0[11];
  sub_10000C410((v0 + 7), v9);
  v11 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v12 = swift_task_alloc();
  v0[41] = v12;
  *v12 = v0;
  v12[1] = sub_100031FD8;
  v13 = v0[32];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v13, v8, v6, v0 + 12, v9, v10);
}

uint64_t sub_100031FD8()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v9 = *v1;

  v4 = v2[40];

  v5 = v2[38];
  v6 = v2[39];
  if (v0)
  {
    v7 = sub_100043E30;
  }

  else
  {
    v7 = sub_1000320F8;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1000320F8()
{
  v101 = v0;
  v1 = v0[32];
  v2 = sub_10000560C(&qword_10012A428, &unk_1001091B0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[34];
    v4 = v0[16];

    sub_10000C304(v0 + 7);
    dispatch thunk of BroadcastSequence.finish(throwing:)();
    sub_10000C304(v0 + 2);
    v5 = v0[31];
    v6 = v0[32];
    v7 = v0[30];
    v8 = v0[27];
    v10 = v0[23];
    v9 = v0[24];
    v12 = v0[19];
    v11 = v0[20];
    sub_1000356EC(v0[13], v0[14]);

    v13 = v0[1];

    return v13();
  }

  else
  {
    v16 = v0[30];
    v15 = v0[31];
    v17 = v0[28];
    v18 = v0[29];
    v19 = v0[27];
    v98 = v0[24];
    v20 = v0[22];
    v97 = v0[21];
    v21 = v0[15];
    v22 = *v1;
    v0[42] = *v1;
    v23 = *(v2 + 48);
    v24 = v22;
    (*(v18 + 32))(v15, &v1[v23], v17);
    static Log.default.getter();
    (*(v18 + 16))(v16, v15, v17);
    v96 = *(v20 + 16);
    v96(v98, v21, v97);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[29];
    v29 = v0[30];
    v30 = v0[27];
    v99 = v0[28];
    v32 = v0[25];
    v31 = v0[26];
    v33 = v0[24];
    if (v27)
    {
      v88 = v0[23];
      v89 = v0[22];
      v87 = v0[21];
      v93 = v0[26];
      v94 = v0[27];
      v34 = v0[20];
      v95 = v24;
      v35 = v0[17];
      v36 = v0[18];
      v92 = v0[25];
      v37 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      *v37 = 136315650;
      log = v25;
      StoredPhoto.localIdentifier.getter();
      sub_1000438BC(&qword_10012A1C0, &type metadata accessor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v90 = v26;
      v40 = v39;
      (*(v36 + 8))(v34, v35);
      v41 = *(v28 + 8);
      v41(v29, v99);
      v42 = sub_100102F80(v38, v40, &v100);

      *(v37 + 4) = v42;
      *(v37 + 12) = 2080;
      v96(v88, v33, v87);
      v43 = *(v89 + 8);
      v44 = v33;
      v45 = v41;
      v43(v44, v87);
      sub_1000438BC(&qword_10012A1E0, &type metadata accessor for DailyID);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      v43(v88, v87);
      v49 = sub_100102F80(v46, v48, &v100);

      *(v37 + 14) = v49;
      *(v37 + 22) = 2080;
      v24 = v95;
      v50 = Array.description.getter();
      v52 = sub_100102F80(v50, v51, &v100);

      *(v37 + 24) = v52;
      _os_log_impl(&_mh_execute_header, log, v90, "Relating photo %s for %s on days %s", v37, 0x20u);
      swift_arrayDestroy();

      v53 = (*(v93 + 8))(v94, v92);
    }

    else
    {
      (*(v0[22] + 8))(v0[24], v0[21]);

      v45 = *(v28 + 8);
      v45(v29, v99);
      v53 = (*(v31 + 8))(v30, v32);
    }

    v0[43] = v45;
    v58 = *(v24 + 16);
    v0[44] = v58;
    if (v58)
    {
      v0[45] = 0;
      v59 = v0[42];
      if (*(v59 + 16))
      {
        v60 = v0[31];
        v61 = v0[21];
        v62 = v0[18];
        v63 = v0[19];
        v64 = v0[15];
        v65 = v0[13];
        v66 = *(v59 + 32);
        sub_10000560C(&qword_10012A430, &qword_1001093D0);
        v67 = *(v62 + 72);
        v68 = (*(v62 + 80) + 32) & ~*(v62 + 80);
        v69 = swift_allocObject();
        v0[46] = v69;
        *(v69 + 16) = xmmword_1001089C0;
        StoredPhoto.localIdentifier.getter();
        sub_1000438BC(&qword_10012A178, &type metadata accessor for DailyID);
        dispatch thunk of PhotosFaceID.id.getter();
        v70 = type metadata accessor for DailyDatabase();
        v71 = sub_1000438BC(&qword_10012A470, &type metadata accessor for DailyDatabase);
        v72 = async function pointer to dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)[1];
        v73 = swift_task_alloc();
        v0[47] = v73;
        *v73 = v0;
        v73[1] = sub_100032894;
        v54 = v0[19];
        v53 = v69;
        v55 = v66;
        v56 = v70;
        v57 = v71;
      }

      else
      {
        __break(1u);
      }

      return dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)(v53, v54, v55, v56, v57);
    }

    else
    {
      v74 = v0[42];
      v75 = v0[31];
      v76 = v0[28];
      v77 = v0[29];
      v78 = v0[16];

      dispatch thunk of BroadcastSequence.yield(_:)();
      v45(v75, v76);
      v79 = v0[37];
      v80 = v0[33];
      v81 = static CommunicationActor.shared.getter();
      v0[40] = v81;
      v82 = v0[10];
      v83 = v0[11];
      sub_10000C410((v0 + 7), v82);
      v84 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
      v85 = swift_task_alloc();
      v0[41] = v85;
      *v85 = v0;
      v85[1] = sub_100031FD8;
      v86 = v0[32];

      return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v86, v81, v79, v0 + 12, v82, v83);
    }
  }
}

uint64_t sub_100032894()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  v2[48] = v0;

  v5 = v2[46];
  if (v0)
  {
    v6 = v2[42];
    (*(v2[18] + 8))(v2[19], v2[17]);

    v7 = v2[38];
    v8 = v2[39];
    v9 = sub_100043E2C;
  }

  else
  {
    (*(v2[18] + 8))(v2[19], v2[17]);

    v7 = v2[38];
    v8 = v2[39];
    v9 = sub_100032A10;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100032A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5[45] + 1;
  if (v6 == v5[44])
  {
    v7 = v5[42];
    v8 = v5[43];
    v9 = v5[31];
    v10 = v5[28];
    v11 = v5[29];
    v12 = v5[16];

    dispatch thunk of BroadcastSequence.yield(_:)();
    v8(v9, v10);
    v13 = v5[37];
    v14 = v5[33];
    v15 = static CommunicationActor.shared.getter();
    v5[40] = v15;
    v16 = v5[10];
    v17 = v5[11];
    sub_10000C410((v5 + 7), v16);
    v18 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v19 = swift_task_alloc();
    v5[41] = v19;
    *v19 = v5;
    v19[1] = sub_100031FD8;
    v20 = v5[32];

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v20, v15, v13, v5 + 12, v16, v17);
  }

  else
  {
    v5[45] = v6;
    v21 = v5[42];
    if (v6 >= *(v21 + 16))
    {
      __break(1u);
    }

    else
    {
      v22 = v5[31];
      v23 = v5[21];
      v24 = v5[18];
      v25 = v5[19];
      v26 = v5[15];
      v27 = v5[13];
      v28 = *(v21 + 8 * v6 + 32);
      sub_10000560C(&qword_10012A430, &qword_1001093D0);
      v29 = *(v24 + 72);
      v30 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v31 = swift_allocObject();
      v5[46] = v31;
      *(v31 + 16) = xmmword_1001089C0;
      StoredPhoto.localIdentifier.getter();
      sub_1000438BC(&qword_10012A178, &type metadata accessor for DailyID);
      dispatch thunk of PhotosFaceID.id.getter();
      v32 = type metadata accessor for DailyDatabase();
      v33 = sub_1000438BC(&qword_10012A470, &type metadata accessor for DailyDatabase);
      v34 = async function pointer to dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)[1];
      v35 = swift_task_alloc();
      v5[47] = v35;
      *v35 = v5;
      v35[1] = sub_100032894;
      a2 = v5[19];
      a1 = v31;
      a3 = v28;
      a4 = v32;
      a5 = v33;
    }

    return dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_100032CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a8;
  v8[16] = v28;
  v8[13] = a4;
  v8[14] = a5;
  v10 = type metadata accessor for UUID();
  v8[17] = v10;
  v11 = *(v10 - 8);
  v8[18] = v11;
  v12 = *(v11 + 64) + 15;
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v13 = type metadata accessor for ShuffleID();
  v8[21] = v13;
  v14 = *(v13 - 8);
  v8[22] = v14;
  v15 = *(v14 + 64) + 15;
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  v8[25] = v16;
  v17 = *(v16 - 8);
  v8[26] = v17;
  v18 = *(v17 + 64) + 15;
  v8[27] = swift_task_alloc();
  v19 = type metadata accessor for StoredPhoto();
  v8[28] = v19;
  v20 = *(v19 - 8);
  v8[29] = v20;
  v21 = *(v20 + 64) + 15;
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v22 = *(*(sub_10000560C(&qword_10012A420, &qword_1001091A8) - 8) + 64) + 15;
  v8[32] = swift_task_alloc();
  v8[33] = type metadata accessor for CommunicationActor();
  v8[34] = static CommunicationActor.shared.getter();
  v26 = (a6 + *a6);
  v23 = a6[1];
  v24 = swift_task_alloc();
  v8[35] = v24;
  *v24 = v8;
  v24[1] = sub_100032FD0;

  return v26(v8 + 2);
}

uint64_t sub_100032FD0()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 272);
  v6 = *(*v1 + 264);
  v7 = *v1;
  v3[36] = v2;

  v3[37] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[38] = v9;
  v3[39] = v8;
  if (v2)
  {
    v10 = sub_100043E98;
  }

  else
  {
    v10 = sub_100033170;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_100033170()
{
  v1 = v0[5];
  v2 = sub_10000C3CC(v0 + 2, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  sub_10000C1AC(v0 + 7);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  v6 = v0[37];
  v7 = v0[33];
  v8 = static CommunicationActor.shared.getter();
  v0[40] = v8;
  v9 = v0[10];
  v10 = v0[11];
  sub_10000C410((v0 + 7), v9);
  v11 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v12 = swift_task_alloc();
  v0[41] = v12;
  *v12 = v0;
  v12[1] = sub_100033344;
  v13 = v0[32];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v13, v8, v6, v0 + 12, v9, v10);
}

uint64_t sub_100033344()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v9 = *v1;

  v4 = v2[40];

  v5 = v2[38];
  v6 = v2[39];
  if (v0)
  {
    v7 = sub_100043E30;
  }

  else
  {
    v7 = sub_100033464;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100033464()
{
  v101 = v0;
  v1 = v0[32];
  v2 = sub_10000560C(&qword_10012A428, &unk_1001091B0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[34];
    v4 = v0[16];

    sub_10000C304(v0 + 7);
    dispatch thunk of BroadcastSequence.finish(throwing:)();
    sub_10000C304(v0 + 2);
    v5 = v0[31];
    v6 = v0[32];
    v7 = v0[30];
    v8 = v0[27];
    v10 = v0[23];
    v9 = v0[24];
    v12 = v0[19];
    v11 = v0[20];
    sub_1000356EC(v0[13], v0[14]);

    v13 = v0[1];

    return v13();
  }

  else
  {
    v16 = v0[30];
    v15 = v0[31];
    v17 = v0[28];
    v18 = v0[29];
    v19 = v0[27];
    v98 = v0[24];
    v20 = v0[22];
    v97 = v0[21];
    v21 = v0[15];
    v22 = *v1;
    v0[42] = *v1;
    v23 = *(v2 + 48);
    v24 = v22;
    (*(v18 + 32))(v15, &v1[v23], v17);
    static Log.default.getter();
    (*(v18 + 16))(v16, v15, v17);
    v96 = *(v20 + 16);
    v96(v98, v21, v97);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[29];
    v29 = v0[30];
    v30 = v0[27];
    v99 = v0[28];
    v32 = v0[25];
    v31 = v0[26];
    v33 = v0[24];
    if (v27)
    {
      v88 = v0[23];
      v89 = v0[22];
      v87 = v0[21];
      v93 = v0[26];
      v94 = v0[27];
      v34 = v0[20];
      v95 = v24;
      v35 = v0[17];
      v36 = v0[18];
      v92 = v0[25];
      v37 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      *v37 = 136315650;
      log = v25;
      StoredPhoto.localIdentifier.getter();
      sub_1000438BC(&qword_10012A1C0, &type metadata accessor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v90 = v26;
      v40 = v39;
      (*(v36 + 8))(v34, v35);
      v41 = *(v28 + 8);
      v41(v29, v99);
      v42 = sub_100102F80(v38, v40, &v100);

      *(v37 + 4) = v42;
      *(v37 + 12) = 2080;
      v96(v88, v33, v87);
      v43 = *(v89 + 8);
      v44 = v33;
      v45 = v41;
      v43(v44, v87);
      sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      v43(v88, v87);
      v49 = sub_100102F80(v46, v48, &v100);

      *(v37 + 14) = v49;
      *(v37 + 22) = 2080;
      v24 = v95;
      v50 = Array.description.getter();
      v52 = sub_100102F80(v50, v51, &v100);

      *(v37 + 24) = v52;
      _os_log_impl(&_mh_execute_header, log, v90, "Relating photo %s for %s on days %s", v37, 0x20u);
      swift_arrayDestroy();

      v53 = (*(v93 + 8))(v94, v92);
    }

    else
    {
      (*(v0[22] + 8))(v0[24], v0[21]);

      v45 = *(v28 + 8);
      v45(v29, v99);
      v53 = (*(v31 + 8))(v30, v32);
    }

    v0[43] = v45;
    v58 = *(v24 + 16);
    v0[44] = v58;
    if (v58)
    {
      v0[45] = 0;
      v59 = v0[42];
      if (*(v59 + 16))
      {
        v60 = v0[31];
        v61 = v0[21];
        v62 = v0[18];
        v63 = v0[19];
        v64 = v0[15];
        v65 = v0[13];
        v66 = *(v59 + 32);
        sub_10000560C(&qword_10012A430, &qword_1001093D0);
        v67 = *(v62 + 72);
        v68 = (*(v62 + 80) + 32) & ~*(v62 + 80);
        v69 = swift_allocObject();
        v0[46] = v69;
        *(v69 + 16) = xmmword_1001089C0;
        StoredPhoto.localIdentifier.getter();
        sub_1000438BC(&qword_10012A2B0, &type metadata accessor for ShuffleID);
        dispatch thunk of PhotosFaceID.id.getter();
        v70 = type metadata accessor for ShuffleDatabase();
        v71 = sub_1000438BC(&qword_10012A480, &type metadata accessor for ShuffleDatabase);
        v72 = async function pointer to dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)[1];
        v73 = swift_task_alloc();
        v0[47] = v73;
        *v73 = v0;
        v73[1] = sub_100033C00;
        v54 = v0[19];
        v53 = v69;
        v55 = v66;
        v56 = v70;
        v57 = v71;
      }

      else
      {
        __break(1u);
      }

      return dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)(v53, v54, v55, v56, v57);
    }

    else
    {
      v74 = v0[42];
      v75 = v0[31];
      v76 = v0[28];
      v77 = v0[29];
      v78 = v0[16];

      dispatch thunk of BroadcastSequence.yield(_:)();
      v45(v75, v76);
      v79 = v0[37];
      v80 = v0[33];
      v81 = static CommunicationActor.shared.getter();
      v0[40] = v81;
      v82 = v0[10];
      v83 = v0[11];
      sub_10000C410((v0 + 7), v82);
      v84 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
      v85 = swift_task_alloc();
      v0[41] = v85;
      *v85 = v0;
      v85[1] = sub_100033344;
      v86 = v0[32];

      return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v86, v81, v79, v0 + 12, v82, v83);
    }
  }
}

uint64_t sub_100033C00()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  v2[48] = v0;

  v5 = v2[46];
  if (v0)
  {
    v6 = v2[42];
    (*(v2[18] + 8))(v2[19], v2[17]);

    v7 = v2[38];
    v8 = v2[39];
    v9 = sub_100043E2C;
  }

  else
  {
    (*(v2[18] + 8))(v2[19], v2[17]);

    v7 = v2[38];
    v8 = v2[39];
    v9 = sub_100033D7C;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100033D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5[45] + 1;
  if (v6 == v5[44])
  {
    v7 = v5[42];
    v8 = v5[43];
    v9 = v5[31];
    v10 = v5[28];
    v11 = v5[29];
    v12 = v5[16];

    dispatch thunk of BroadcastSequence.yield(_:)();
    v8(v9, v10);
    v13 = v5[37];
    v14 = v5[33];
    v15 = static CommunicationActor.shared.getter();
    v5[40] = v15;
    v16 = v5[10];
    v17 = v5[11];
    sub_10000C410((v5 + 7), v16);
    v18 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v19 = swift_task_alloc();
    v5[41] = v19;
    *v19 = v5;
    v19[1] = sub_100033344;
    v20 = v5[32];

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v20, v15, v13, v5 + 12, v16, v17);
  }

  else
  {
    v5[45] = v6;
    v21 = v5[42];
    if (v6 >= *(v21 + 16))
    {
      __break(1u);
    }

    else
    {
      v22 = v5[31];
      v23 = v5[21];
      v24 = v5[18];
      v25 = v5[19];
      v26 = v5[15];
      v27 = v5[13];
      v28 = *(v21 + 8 * v6 + 32);
      sub_10000560C(&qword_10012A430, &qword_1001093D0);
      v29 = *(v24 + 72);
      v30 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v31 = swift_allocObject();
      v5[46] = v31;
      *(v31 + 16) = xmmword_1001089C0;
      StoredPhoto.localIdentifier.getter();
      sub_1000438BC(&qword_10012A2B0, &type metadata accessor for ShuffleID);
      dispatch thunk of PhotosFaceID.id.getter();
      v32 = type metadata accessor for ShuffleDatabase();
      v33 = sub_1000438BC(&qword_10012A480, &type metadata accessor for ShuffleDatabase);
      v34 = async function pointer to dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)[1];
      v35 = swift_task_alloc();
      v5[47] = v35;
      *v35 = v5;
      v35[1] = sub_100033C00;
      a2 = v5[19];
      a1 = v31;
      a3 = v28;
      a4 = v32;
      a5 = v33;
    }

    return dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_100034048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a8;
  v8[16] = v28;
  v8[13] = a4;
  v8[14] = a5;
  v10 = type metadata accessor for UUID();
  v8[17] = v10;
  v11 = *(v10 - 8);
  v8[18] = v11;
  v12 = *(v11 + 64) + 15;
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v13 = type metadata accessor for AlbumID();
  v8[21] = v13;
  v14 = *(v13 - 8);
  v8[22] = v14;
  v15 = *(v14 + 64) + 15;
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  v8[25] = v16;
  v17 = *(v16 - 8);
  v8[26] = v17;
  v18 = *(v17 + 64) + 15;
  v8[27] = swift_task_alloc();
  v19 = type metadata accessor for StoredPhoto();
  v8[28] = v19;
  v20 = *(v19 - 8);
  v8[29] = v20;
  v21 = *(v20 + 64) + 15;
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v22 = *(*(sub_10000560C(&qword_10012A420, &qword_1001091A8) - 8) + 64) + 15;
  v8[32] = swift_task_alloc();
  v8[33] = type metadata accessor for CommunicationActor();
  v8[34] = static CommunicationActor.shared.getter();
  v26 = (a6 + *a6);
  v23 = a6[1];
  v24 = swift_task_alloc();
  v8[35] = v24;
  *v24 = v8;
  v24[1] = sub_10003433C;

  return v26(v8 + 2);
}

uint64_t sub_10003433C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 272);
  v6 = *(*v1 + 264);
  v7 = *v1;
  v3[36] = v2;

  v3[37] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[38] = v9;
  v3[39] = v8;
  if (v2)
  {
    v10 = sub_1000346B0;
  }

  else
  {
    v10 = sub_1000344DC;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_1000344DC()
{
  v1 = v0[5];
  v2 = sub_10000C3CC(v0 + 2, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  sub_10000C1AC(v0 + 7);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  v6 = v0[37];
  v7 = v0[33];
  v8 = static CommunicationActor.shared.getter();
  v0[40] = v8;
  v9 = v0[10];
  v10 = v0[11];
  sub_10000C410((v0 + 7), v9);
  v11 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v12 = swift_task_alloc();
  v0[41] = v12;
  *v12 = v0;
  v12[1] = sub_1000347AC;
  v13 = v0[32];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v13, v8, v6, v0 + 12, v9, v10);
}

uint64_t sub_1000346B0()
{
  v1 = v0[34];

  v2 = v0[36];
  v3 = v0[16];
  swift_errorRetain();
  dispatch thunk of BroadcastSequence.finish(throwing:)();

  v4 = v0[31];
  v5 = v0[32];
  v6 = v0[30];
  v7 = v0[27];
  v9 = v0[23];
  v8 = v0[24];
  v11 = v0[19];
  v10 = v0[20];
  sub_1000356EC(v0[13], v0[14]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000347AC()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v9 = *v1;

  v4 = v2[40];

  v5 = v2[38];
  v6 = v2[39];
  if (v0)
  {
    v7 = sub_100035068;
  }

  else
  {
    v7 = sub_1000348CC;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1000348CC()
{
  v101 = v0;
  v1 = v0[32];
  v2 = sub_10000560C(&qword_10012A428, &unk_1001091B0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[34];
    v4 = v0[16];

    sub_10000C304(v0 + 7);
    dispatch thunk of BroadcastSequence.finish(throwing:)();
    sub_10000C304(v0 + 2);
    v5 = v0[31];
    v6 = v0[32];
    v7 = v0[30];
    v8 = v0[27];
    v10 = v0[23];
    v9 = v0[24];
    v12 = v0[19];
    v11 = v0[20];
    sub_1000356EC(v0[13], v0[14]);

    v13 = v0[1];

    return v13();
  }

  else
  {
    v16 = v0[30];
    v15 = v0[31];
    v17 = v0[28];
    v18 = v0[29];
    v19 = v0[27];
    v98 = v0[24];
    v20 = v0[22];
    v97 = v0[21];
    v21 = v0[15];
    v22 = *v1;
    v0[42] = *v1;
    v23 = *(v2 + 48);
    v24 = v22;
    (*(v18 + 32))(v15, &v1[v23], v17);
    static Log.default.getter();
    (*(v18 + 16))(v16, v15, v17);
    v96 = *(v20 + 16);
    v96(v98, v21, v97);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[29];
    v29 = v0[30];
    v30 = v0[27];
    v99 = v0[28];
    v32 = v0[25];
    v31 = v0[26];
    v33 = v0[24];
    if (v27)
    {
      v88 = v0[23];
      v89 = v0[22];
      v87 = v0[21];
      v93 = v0[26];
      v94 = v0[27];
      v34 = v0[20];
      v95 = v24;
      v35 = v0[17];
      v36 = v0[18];
      v92 = v0[25];
      v37 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      *v37 = 136315650;
      log = v25;
      StoredPhoto.localIdentifier.getter();
      sub_1000438BC(&qword_10012A1C0, &type metadata accessor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v90 = v26;
      v40 = v39;
      (*(v36 + 8))(v34, v35);
      v41 = *(v28 + 8);
      v41(v29, v99);
      v42 = sub_100102F80(v38, v40, &v100);

      *(v37 + 4) = v42;
      *(v37 + 12) = 2080;
      v96(v88, v33, v87);
      v43 = *(v89 + 8);
      v44 = v33;
      v45 = v41;
      v43(v44, v87);
      sub_1000438BC(&qword_10012A0A0, &type metadata accessor for AlbumID);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      v43(v88, v87);
      v49 = sub_100102F80(v46, v48, &v100);

      *(v37 + 14) = v49;
      *(v37 + 22) = 2080;
      v24 = v95;
      v50 = Array.description.getter();
      v52 = sub_100102F80(v50, v51, &v100);

      *(v37 + 24) = v52;
      _os_log_impl(&_mh_execute_header, log, v90, "Relating photo %s for %s on days %s", v37, 0x20u);
      swift_arrayDestroy();

      v53 = (*(v93 + 8))(v94, v92);
    }

    else
    {
      (*(v0[22] + 8))(v0[24], v0[21]);

      v45 = *(v28 + 8);
      v45(v29, v99);
      v53 = (*(v31 + 8))(v30, v32);
    }

    v0[43] = v45;
    v58 = *(v24 + 16);
    v0[44] = v58;
    if (v58)
    {
      v0[45] = 0;
      v59 = v0[42];
      if (*(v59 + 16))
      {
        v60 = v0[31];
        v61 = v0[21];
        v62 = v0[18];
        v63 = v0[19];
        v64 = v0[15];
        v65 = v0[13];
        v66 = *(v59 + 32);
        sub_10000560C(&qword_10012A430, &qword_1001093D0);
        v67 = *(v62 + 72);
        v68 = (*(v62 + 80) + 32) & ~*(v62 + 80);
        v69 = swift_allocObject();
        v0[46] = v69;
        *(v69 + 16) = xmmword_1001089C0;
        StoredPhoto.localIdentifier.getter();
        sub_1000438BC(&qword_10012A048, &type metadata accessor for AlbumID);
        dispatch thunk of PhotosFaceID.id.getter();
        v70 = type metadata accessor for AlbumDatabase();
        v71 = sub_1000438BC(&qword_10012A490, &type metadata accessor for AlbumDatabase);
        v72 = async function pointer to dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)[1];
        v73 = swift_task_alloc();
        v0[47] = v73;
        *v73 = v0;
        v73[1] = sub_100035174;
        v54 = v0[19];
        v53 = v69;
        v55 = v66;
        v56 = v70;
        v57 = v71;
      }

      else
      {
        __break(1u);
      }

      return dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)(v53, v54, v55, v56, v57);
    }

    else
    {
      v74 = v0[42];
      v75 = v0[31];
      v76 = v0[28];
      v77 = v0[29];
      v78 = v0[16];

      dispatch thunk of BroadcastSequence.yield(_:)();
      v45(v75, v76);
      v79 = v0[37];
      v80 = v0[33];
      v81 = static CommunicationActor.shared.getter();
      v0[40] = v81;
      v82 = v0[10];
      v83 = v0[11];
      sub_10000C410((v0 + 7), v82);
      v84 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
      v85 = swift_task_alloc();
      v0[41] = v85;
      *v85 = v0;
      v85[1] = sub_1000347AC;
      v86 = v0[32];

      return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v86, v81, v79, v0 + 12, v82, v83);
    }
  }
}