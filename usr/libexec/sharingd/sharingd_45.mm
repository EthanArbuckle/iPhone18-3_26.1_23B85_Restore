uint64_t sub_1005EC538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = type metadata accessor for CancellationError();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v10 = type metadata accessor for ContinuousClock();
  v5[9] = v10;
  v11 = *(v10 - 8);
  v5[10] = v11;
  v12 = *(v11 + 64) + 15;
  v5[11] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v13 = static AirDropActor.shared;
  v5[12] = static AirDropActor.shared;

  return _swift_task_switch(sub_1005EC6C8, v13, 0);
}

uint64_t sub_1005EC6C8()
{
  v1 = v0[11];
  v2 = v0[3];
  ContinuousClock.init()();
  Date.timeIntervalSinceNow.getter();
  v3 = static Duration.seconds(_:)();
  v5 = v4;
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1005EC7A4;
  v7 = v0[11];

  return sub_10002ED10(v3, v5, 0, 0, 1);
}

uint64_t sub_1005EC7A4()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 112) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 96);
  if (v0)
  {
    v9 = sub_1005ECA60;
  }

  else
  {
    v9 = sub_1005EC92C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1005EC92C()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[4];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = sub_10002CE80();
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v3;

  sub_1002B3098(0, 0, v2, &unk_10080D7F0, v6);

  v7 = v0[11];
  v8 = v0[7];
  v9 = v0[8];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1005ECA60()
{
  v0[2] = v0[14];
  v1 = v0[7];
  v2 = v0[5];
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v3 = v0[14];

    if (qword_100973B50 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_100986460);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Cancelled pseudonym expiration task", v7, 2u);
    }

    v9 = v0[6];
    v8 = v0[7];
    v10 = v0[5];

    (*(v9 + 8))(v8, v10);
    v11 = v0[2];
  }

  else
  {
    v12 = v0[2];

    if (qword_100973B50 != -1)
    {
      swift_once();
    }

    v13 = v0[14];
    v14 = type metadata accessor for Logger();
    sub_10000C4AC(v14, qword_100986460);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[14];
    if (v17)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to start task for pseudonym expiration with error %@", v19, 0xCu);
      sub_100005508(v20, &qword_100975400, &qword_1007F65D0);

      goto LABEL_13;
    }
  }

LABEL_13:
  v22 = v0[11];
  v23 = v0[7];
  v24 = v0[8];

  v25 = v0[1];

  return v25();
}

uint64_t sub_1005ECD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = type metadata accessor for CancellationError();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v10 = type metadata accessor for ContinuousClock();
  v5[9] = v10;
  v11 = *(v10 - 8);
  v5[10] = v11;
  v12 = *(v11 + 64) + 15;
  v5[11] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v13 = static AirDropActor.shared;
  v5[12] = static AirDropActor.shared;

  return _swift_task_switch(sub_1005ECEE4, v13, 0);
}

uint64_t sub_1005ECEE4()
{
  v1 = v0[11];
  v2 = v0[3];
  ContinuousClock.init()();
  Date.timeIntervalSinceNow.getter();
  v3 = static Duration.seconds(_:)();
  v5 = v4;
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1005ECFC0;
  v7 = v0[11];

  return sub_10002ED10(v3, v5, 0, 0, 1);
}

uint64_t sub_1005ECFC0()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 112) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 96);
  if (v0)
  {
    v9 = sub_1005ED27C;
  }

  else
  {
    v9 = sub_1005ED148;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1005ED148()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[4];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = sub_10002CE80();
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v3;

  sub_1002B3098(0, 0, v2, &unk_10080D7B0, v6);

  v7 = v0[11];
  v8 = v0[7];
  v9 = v0[8];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1005ED27C()
{
  v0[2] = v0[14];
  v1 = v0[7];
  v2 = v0[5];
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v3 = v0[14];

    if (qword_100973B50 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_100986460);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Cancelled after first use expiration task", v7, 2u);
    }

    v9 = v0[6];
    v8 = v0[7];
    v10 = v0[5];

    (*(v9 + 8))(v8, v10);
    v11 = v0[2];
  }

  else
  {
    v12 = v0[2];

    if (qword_100973B50 != -1)
    {
      swift_once();
    }

    v13 = v0[14];
    v14 = type metadata accessor for Logger();
    sub_10000C4AC(v14, qword_100986460);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[14];
    if (v17)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to start task for after first use expiration with error %@", v19, 0xCu);
      sub_100005508(v20, &qword_100975400, &qword_1007F65D0);

      goto LABEL_13;
    }
  }

LABEL_13:
  v22 = v0[11];
  v23 = v0[7];
  v24 = v0[8];

  v25 = v0[1];

  return v25();
}

uint64_t sub_1005ED570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1005ED60C, v5, 0);
}

uint64_t sub_1005ED60C()
{
  v1 = *(v0 + 16);
  sub_1005EBB7C();
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1002963B0;
  v3 = *(v0 + 16);

  return sub_1005ED6A4();
}

uint64_t sub_1005ED6A4()
{
  v1[27] = v0;
  v2 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v1[28] = swift_task_alloc();
  v3 = *(*(sub_10028088C(&qword_10097A7F0, &unk_1007FB600) - 8) + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v4 = type metadata accessor for ContinuousClock();
  v1[33] = v4;
  v5 = *(v4 - 8);
  v1[34] = v5;
  v6 = *(v5 + 64) + 15;
  v1[35] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  v1[36] = static AirDropActor.shared;

  return _swift_task_switch(sub_1005ED834, v7, 0);
}

uint64_t sub_1005ED834()
{
  if (qword_100973B50 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[37] = sub_10000C4AC(v1, qword_100986460);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Waiting for first unlock to provision AirDrop pseudonym", v4, 2u);
  }

  v5 = v0[27];

  v6 = *(v5 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropPseudonymService_deviceStatus);
  v7 = swift_task_alloc();
  v0[38] = v7;
  *v7 = v0;
  v7[1] = sub_1005ED990;

  return sub_10002DCF0();
}

uint64_t sub_1005ED990()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 288);
  v4 = *v0;

  return _swift_task_switch(sub_1005EDAA0, v2, 0);
}

uint64_t sub_1005EDAA0()
{
  v1 = v0[37];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Waiting to start provisioning", v4, 2u);
  }

  v5 = v0[35];
  v6 = v0[27];

  v7 = *(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropPseudonymService_processStartupDelaySeconds);
  v8 = static Duration.seconds(_:)();
  v10 = v9;
  static Clock<>.continuous.getter();
  v11 = swift_task_alloc();
  v0[39] = v11;
  *v11 = v0;
  v11[1] = sub_1005EDBFC;
  v12 = v0[35];

  return sub_10002ED10(v8, v10, 0, 0, 1);
}

uint64_t sub_1005EDBFC()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;

  v5 = v2[36];
  v6 = v2[35];
  v7 = v2[34];
  v8 = v2[33];
  if (v0)
  {

    (*(v7 + 8))(v6, v8);
    v9 = sub_1005F11DC;
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v9 = sub_1005EDDA8;
  }

  return _swift_task_switch(v9, v5, 0);
}

uint64_t sub_1005EDDA8()
{
  v97 = v0;
  v1 = v0[37];
  v2 = v0[27];
  v3 = v2[5];
  v4 = v2[6];
  sub_10002CDC0(v2 + 2, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v7 = v6;
  v0[40] = v5;
  v0[41] = v6;
  v8 = v2[5];
  v9 = v2[6];
  sub_10002CDC0(v2 + 2, v8);
  v10 = (*(v9 + 40))(0x51706F7244726941, 0xE900000000000052, v8, v9, 31536000.0);
  v0[42] = v10;

  v11 = v10;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v96 = v16;
    *v14 = 136315394;
    v17 = v7 == 0;
    if (!v7)
    {
      v5 = 0xD000000000000015;
    }

    v18 = v7;
    v19 = v11;
    if (v17)
    {
      v20 = 0x8000000100789F30;
    }

    else
    {
      v20 = v18;
    }

    v21 = sub_10000C4E4(v5, v20, &v96);
    v11 = v19;

    *(v14 + 4) = v21;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v19;
    *v15 = v19;
    v22 = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "Provisioning pseudonym for service %s and properties %@", v14, 0x16u);
    sub_100005508(v15, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v16);
  }

  if (sub_1004BB21C())
  {
    v91 = v11;
    v23 = v0[32];
    v24 = v0[27];
    v25 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropPseudonymService_lastProvisionAttempt;
    swift_beginAccess();
    sub_10000FF90(v24 + v25, v23, &qword_10097A7F0, &unk_1007FB600);
    v26 = type metadata accessor for Date();
    v27 = *(v26 - 8);
    v28 = *(v27 + 48);
    v29 = v28(v23, 1, v26);
    sub_100005508(v23, &qword_10097A7F0, &unk_1007FB600);
    if (v29 == 1)
    {
      goto LABEL_12;
    }

    v30 = v0[31];
    sub_10000FF90(v24 + v25, v30, &qword_10097A7F0, &unk_1007FB600);
    result = v28(v30, 1, v26);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v32 = v0[31];
    v33 = v0[27];
    Date.timeIntervalSinceNow.getter();
    v35 = v34;
    (*(v27 + 8))(v32, v26);
    if (*(v33 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropPseudonymService_provisionThrottleSeconds) < -v35)
    {
LABEL_12:
      v36 = v0[30];
      Date.init()();
      (*(v27 + 56))(v36, 0, 1, v26);
      swift_beginAccess();
      sub_1003561CC(v36, v24 + v25);
      swift_endAccess();
      v37 = v2[5];
      v38 = v2[6];
      sub_10002CDC0(v2 + 2, v37);
      v39 = *(v38 + 24);
      v93 = (v39 + *v39);
      v40 = v39[1];
      v41 = swift_task_alloc();
      v0[43] = v41;
      *v41 = v0;
      v41[1] = sub_1005EE758;

      return v93(v91, v37, v38);
    }

    v88 = v0[37];

    v79 = Logger.logObject.getter();
    v89 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v79, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&_mh_execute_header, v79, v89, "Attempting to provision AirDrop pseudonyms too frequetly.", v90, 2u);
    }
  }

  else
  {
    v42 = v0[37];

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Pseudonym provisioning is disabled", v45, 2u);
    }

    v46 = v0[27];
    v47 = sub_10002C5AC();
    if (v47)
    {
      v48 = v0[27];
      v49 = v47;
      v50 = [v47 URI];
      v51 = [v50 prefixedURI];

      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v92 = v53;
      v94 = v52;

      swift_beginAccess();
      v54 = *(v48 + 120);
      v55 = *(v48 + 128);
      sub_10002F5B4(v46 + 96, v54);
      v56 = *(v55 + 72);
      v57 = v49;
      v58 = v56(v0 + 2, v54, v55);
      sub_1002B07C8(v49, v94, v92);
      v58(v0 + 2, 0);
      swift_endAccess();
    }

    v59 = v0[30];
    v60 = v0[27];
    swift_beginAccess();
    v61 = *(v60 + 120);
    v62 = *(v60 + 128);
    sub_10002F5B4(v46 + 96, v61);
    (*(v62 + 16))(0, v61, v62);
    v63 = type metadata accessor for Date();
    v64 = *(*(v63 - 8) + 56);
    v64(v59, 1, 1, v63);
    v65 = v46;
    v66 = v64;
    v67 = *(v60 + 120);
    v68 = *(v60 + 128);
    sub_10002F5B4(v65 + 96, v67);
    (*(v68 + 40))(v59, v67, v68);
    swift_endAccess();
    v95 = v0[42];
    v69 = v0[36];
    v71 = v0[29];
    v70 = v0[30];
    v72 = v0[27];
    v73 = v0[28];
    v66(v71, 1, 1, v63);
    sub_1005EBC3C(v71);
    sub_100005508(v71, &qword_10097A7F0, &unk_1007FB600);
    v74 = type metadata accessor for TaskPriority();
    (*(*(v74 - 8) + 56))(v73, 1, 1, v74);
    v75 = sub_10002CE80();
    v76 = swift_allocObject();
    v76[2] = v69;
    v76[3] = v75;
    v76[4] = v72;

    sub_1002B3098(0, 0, v73, &unk_10080D7C8, v76);

    v66(v70, 1, 1, v63);
    v77 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropPseudonymService_lastProvisionAttempt;
    swift_beginAccess();
    v78 = v72 + v77;
    v79 = v95;
    sub_1003561CC(v70, v78);
    swift_endAccess();
    *(v72 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropPseudonymService_provisionThrottleSeconds) = 0x404E000000000000;
    swift_beginAccess();
    v80 = *sub_10002CDC0((v72 + 136), *(v72 + 160));
    sub_100531644();
  }

  v81 = v0[35];
  v82 = v0[31];
  v83 = v0[32];
  v85 = v0[29];
  v84 = v0[30];
  v86 = v0[28];

  v87 = v0[1];

  return v87();
}

uint64_t sub_1005EE758(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 344);
  v10 = *v2;
  v3[44] = a1;
  v3[45] = v1;

  if (v1)
  {
    v5 = v3[36];
    v6 = sub_1005EEDEC;
  }

  else
  {
    v7 = v3[41];
    v8 = v3[36];

    v6 = sub_1005EE880;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1005EE880()
{
  v1 = v0[44];
  v2 = v0[37];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[44];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v1;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Provisioned pseudonym %@)", v7, 0xCu);
    sub_100005508(v8, &qword_100975400, &qword_1007F65D0);
  }

  v60 = v0[27];
  v10 = sub_10002C5AC();
  if (v10)
  {
    v11 = v0[27];
    v12 = v10;
    v13 = [v10 URI];
    v14 = [v13 prefixedURI];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v16;
    v56 = v15;

    swift_beginAccess();
    v18 = *(v11 + 120);
    v17 = *(v11 + 128);
    sub_10002F5B4(v60 + 96, v18);
    v19 = v3;
    v20 = v1;
    v21 = *(v17 + 72);
    v54 = v12;
    v22 = v21(v0 + 2, v18, v17);
    v1 = v20;
    v3 = v19;
    v23 = v22;
    sub_1002B07C8(v12, v56, v55);
    v23(v0 + 2, 0);
    swift_endAccess();
  }

  v57 = v0[30];
  v24 = v0[27];
  swift_beginAccess();
  v25 = *(v24 + 120);
  v26 = *(v24 + 128);
  sub_10002F5B4(v60 + 96, v25);
  v27 = *(v26 + 16);
  v28 = v3;
  v27(v1, v25, v26);
  v29 = type metadata accessor for Date();
  v30 = 1;
  v59 = *(*(v29 - 8) + 56);
  v59(v57, 1, 1, v29);
  v31 = *(v24 + 120);
  v32 = *(v24 + 128);
  sub_10002F5B4(v60 + 96, v31);
  (*(v32 + 40))(v57, v31, v32);
  swift_endAccess();
  v61 = v28;
  if (v28)
  {
    v33 = v0[29];
    v34 = [v28 properties];
    v35 = [v34 expirationDate];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = 0;
  }

  v58 = v0[42];
  v36 = v0[36];
  v38 = v0[29];
  v37 = v0[30];
  v39 = v0[27];
  v40 = v0[28];
  v59(v38, v30, 1, v29);
  sub_1005EBC3C(v38);
  sub_100005508(v38, &qword_10097A7F0, &unk_1007FB600);
  v41 = type metadata accessor for TaskPriority();
  (*(*(v41 - 8) + 56))(v40, 1, 1, v41);
  v42 = sub_10002CE80();
  v43 = swift_allocObject();
  v43[2] = v36;
  v43[3] = v42;
  v43[4] = v39;

  sub_1002B3098(0, 0, v40, &unk_10080D7C8, v43);

  v59(v37, 1, 1, v29);
  v44 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropPseudonymService_lastProvisionAttempt;
  swift_beginAccess();
  sub_1003561CC(v37, v39 + v44);
  swift_endAccess();
  *(v39 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropPseudonymService_provisionThrottleSeconds) = 0x404E000000000000;
  swift_beginAccess();
  v45 = *sub_10002CDC0((v39 + 136), *(v39 + 160));
  sub_100531644();

  v46 = v0[35];
  v47 = v0[31];
  v48 = v0[32];
  v50 = v0[29];
  v49 = v0[30];
  v51 = v0[28];

  v52 = v0[1];

  return v52();
}

uint64_t sub_1005EEDEC()
{
  v33 = v0;
  v1 = v0[45];
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[37];

  v5 = v2;
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[45];
    v9 = v0[41];
    v10 = v0[42];
    v11 = v0[40];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v32 = v14;
    *v12 = 136315650;
    if (v9)
    {
      v15 = v11;
    }

    else
    {
      v15 = 0xD000000000000015;
    }

    if (!v9)
    {
      v9 = 0x8000000100789F30;
    }

    v16 = sub_10000C4E4(v15, v9, &v32);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v10;
    *v13 = v10;
    *(v12 + 22) = 2112;
    v17 = v10;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v18;
    v13[1] = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to provision pseudonym for service %s and %@ with error: %@", v12, 0x20u);
    sub_10028088C(&qword_100975400, &qword_1007F65D0);
    swift_arrayDestroy();

    sub_10000C60C(v14);
  }

  else
  {
    v19 = v0[41];
  }

  v20 = v0[45];
  v21 = v0[42];
  v22 = v0[27];
  *(v22 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropPseudonymService_provisionThrottleSeconds) = *(v22 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropPseudonymService_provisionThrottleSeconds) + *(v22 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropPseudonymService_provisionThrottleSeconds);
  swift_beginAccess();
  v23 = *sub_10002CDC0((v22 + 136), *(v22 + 160));
  sub_100531488();

  v24 = v0[35];
  v25 = v0[31];
  v26 = v0[32];
  v28 = v0[29];
  v27 = v0[30];
  v29 = v0[28];

  v30 = v0[1];

  return v30();
}

uint64_t sub_1005EF0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1005EF13C, v5, 0);
}

uint64_t sub_1005EF13C()
{
  v1 = sub_10002E624();
  v0[3] = v1;
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1005EF1DC;
  v3 = v0[2];

  return sub_1005EC0D4(v1);
}

uint64_t sub_1005EF1DC()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1005EF2EC(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;
  v2[11] = static AirDropActor.shared;

  return _swift_task_switch(sub_1005EF38C, v3, 0);
}

uint64_t sub_1005EF38C()
{
  v28 = v0;
  v1 = v0[10];
  v2 = v1[5];
  v3 = v1[6];
  sub_10002CDC0(v1 + 2, v2);
  v4 = (*(v3 + 8))(v2, v3);
  v6 = v5;
  v0[12] = v4;
  v0[13] = v5;
  if (qword_100973B50 != -1)
  {
    swift_once();
  }

  v7 = v0[9];
  v8 = type metadata accessor for Logger();
  v0[14] = sub_10000C4AC(v8, qword_100986460);

  v9 = v7;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[9];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v13 = 138412546;
    *(v13 + 4) = v12;
    *v14 = v12;
    *(v13 + 12) = 2080;
    if (v6)
    {
      v15 = v6;
    }

    else
    {
      v4 = 0xD000000000000015;
      v15 = 0x8000000100789F30;
    }

    v16 = v12;

    v17 = sub_10000C4E4(v4, v15, &v27);

    *(v13 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "Revoking pseudonym %@ for service %s", v13, 0x16u);
    sub_100005508(v14, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v25);
  }

  v18 = v1[5];
  v19 = v1[6];
  sub_10002CDC0(v1 + 2, v18);
  v20 = *(v19 + 32);
  v26 = (v20 + *v20);
  v21 = v20[1];
  v22 = swift_task_alloc();
  v0[15] = v22;
  *v22 = v0;
  v22[1] = sub_1005EF6B8;
  v23 = v0[9];

  return v26(v23, v18, v19);
}

uint64_t sub_1005EF6B8(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(v4 + 128) = v1;

  v7 = *(v4 + 88);
  if (v1)
  {
    v8 = sub_1005EFBE8;
  }

  else
  {
    *(v4 + 136) = a1 & 1;
    v8 = sub_1005EF7F8;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1005EF7F8()
{
  v35 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 72);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 104);
  if (v1 == 1)
  {
    if (v7)
    {
      v9 = *(v0 + 96);
      v10 = *(v0 + 72);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v34 = v13;
      *v11 = 138412546;
      *(v11 + 4) = v10;
      *v12 = v10;
      *(v11 + 12) = 2080;
      if (!v8)
      {
        v9 = 0xD000000000000015;
        v8 = 0x8000000100789F30;
      }

      v14 = v10;
      v15 = sub_10000C4E4(v9, v8, &v34);

      *(v11 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v5, v6, "Revoked pseudonym %@ for service %s", v11, 0x16u);
      sub_100005508(v12, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v13);
    }

    else
    {
    }

    v23 = *(v0 + 80);
    v24 = [*(v0 + 72) URI];
    v25 = [v24 prefixedURI];

    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    swift_beginAccess();
    v29 = *(v23 + 120);
    v30 = *(v23 + 128);
    sub_10002F5B4(v23 + 96, v29);
    v31 = (*(v30 + 72))(v0 + 16, v29, v30);
    sub_1002B07C8(0, v26, v28);
    v31(v0 + 16, 0);
    swift_endAccess();
  }

  else if (v7)
  {
    v16 = *(v0 + 96);
    v17 = *(v0 + 72);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v34 = v20;
    *v18 = 138412546;
    *(v18 + 4) = v17;
    *v19 = v17;
    *(v18 + 12) = 2080;
    if (!v8)
    {
      v16 = 0xD000000000000015;
      v8 = 0x8000000100789F30;
    }

    v21 = v17;
    v22 = sub_10000C4E4(v16, v8, &v34);

    *(v18 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v5, v6, "Did not revoke pseudonym %@ for service %s", v18, 0x16u);
    sub_100005508(v19, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v20);
  }

  else
  {
  }

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1005EFBE8()
{
  v21 = v0;
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 72);

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 128);
  v9 = *(v0 + 104);
  if (v7)
  {
    v10 = *(v0 + 96);
    v11 = *(v0 + 72);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v12 = 138412802;
    *(v12 + 4) = v11;
    *v13 = v11;
    *(v12 + 12) = 2080;
    if (!v9)
    {
      v10 = 0xD000000000000015;
      v9 = 0x8000000100789F30;
    }

    v15 = v11;
    v16 = sub_10000C4E4(v10, v9, &v20);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v17;
    v13[1] = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to revoke pseudonym %@ for service %s with error: %@", v12, 0x20u);
    sub_10028088C(&qword_100975400, &qword_1007F65D0);
    swift_arrayDestroy();

    sub_10000C60C(v14);
  }

  else
  {
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1005EFE24()
{
  sub_10000C60C(v0 + 2);
  sub_10000C60C(v0 + 7);
  sub_10000C60C(v0 + 12);
  sub_10000C60C(v0 + 17);
  v1 = v0[22];

  v2 = v0[23];

  sub_100005508(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropPseudonymService_lastProvisionAttempt, &qword_10097A7F0, &unk_1007FB600);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SDAirDropPseudonymService()
{
  result = qword_1009864C8;
  if (!qword_1009864C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005EFF2C()
{
  sub_1002A6BEC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1005EFFF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v52 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(a1);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v52 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v52 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v52 - v21;
  if (!v20)
  {
    if (qword_100973B50 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000C4AC(v30, qword_100986460);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Pseudonym is not set", v33, 2u);
    }

    return 0;
  }

  v23 = [v20 properties];
  v24 = [v23 expirationDate];

  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = *(v9 + 32);
  v25(v22, v19, v8);
  static Date.now.getter();
  sub_10000FF90(a2, v7, &qword_10097A7F0, &unk_1007FB600);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100005508(v7, &qword_10097A7F0, &unk_1007FB600);
    if (qword_100973B50 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000C4AC(v26, qword_100986460);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Pseudonym has not been used", v29, 2u);
    }
  }

  else
  {
    v25(v13, v7, v8);
    if (qword_100973B50 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000C4AC(v34, qword_100986460);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Current pseudonym has been used", v37, 2u);
    }

    if ((static Date.< infix(_:_:)() & 1) == 0)
    {
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "Pseudonym is not valid; expired after first use", v51, 2u);
      }

      v48 = *(v9 + 8);
      v48(v13, v8);
      v48(v16, v8);
      goto LABEL_33;
    }

    (*(v9 + 8))(v13, v8);
  }

  if ((static Date.< infix(_:_:)() & 1) == 0)
  {
    if (qword_100973B50 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_10000C4AC(v44, qword_100986460);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Pseudonym is not valid; expired", v47, 2u);
    }

    v48 = *(v9 + 8);
    v48(v16, v8);
LABEL_33:
    v48(v22, v8);
    return 0;
  }

  if (qword_100973B50 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_10000C4AC(v38, qword_100986460);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "Pseudonym is valid", v41, 2u);
  }

  v42 = *(v9 + 8);
  v42(v16, v8);
  v42(v22, v8);
  return 1;
}

void *sub_1005F06F4()
{
  v0 = objc_allocWithZone(IDSAccountController);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithService:v1];

  if (!v2)
  {
    goto LABEL_26;
  }

  v3 = [v2 accounts];
  if (!v3)
  {

LABEL_26:
    if (qword_100973B50 != -1)
    {
LABEL_33:
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000C4AC(v20, qword_100986460);
    v2 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v2, v21, "Pseudonym service does not have an IDS account", v22, 2u);
    }

    goto LABEL_29;
  }

  v4 = v3;
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = -1 << *(v5 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v5 + 56);

  v9 = 0;
  if (v8)
  {
    goto LABEL_14;
  }

LABEL_9:
  v10 = v9;
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v11 >= ((63 - v6) >> 6))
    {
      break;
    }

    v8 = *(v5 + 56 + 8 * v11);
    ++v10;
    if (v8)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        sub_100010684(*(v5 + 48) + 40 * (v12 | (v11 << 6)), &v28);
        if (!v30)
        {
          goto LABEL_20;
        }

        v24 = v28;
        v25 = v29;
        v26 = v30;
        v27 = v31;
        v13.isa = AnyHashable._bridgeToObjectiveC()().isa;
        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        if (v14)
        {
          v15 = v14;
          sub_100285E74(&v24);
          if ([v15 isActive])
          {
            sub_100027D64();

            return v15;
          }

          v9 = v11;
          if (!v8)
          {
            goto LABEL_9;
          }
        }

        else
        {

          sub_100285E74(&v24);
          v9 = v11;
          if (!v8)
          {
            goto LABEL_9;
          }
        }

LABEL_14:
        v11 = v9;
      }
    }
  }

LABEL_20:
  sub_100027D64();

  if (qword_100973B50 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000C4AC(v16, qword_100986460);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Pseudonym service does not have an active IDS account", v19, 2u);
  }

LABEL_29:
  return 0;
}

uint64_t sub_1005F0AC0()
{
  if ((sub_1004E701C() & 1) == 0)
  {
    if (qword_100973B50 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C4AC(v8, qword_100986460);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_14;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Pseudonym service is disabled";
    goto LABEL_13;
  }

  v0 = sub_1005F06F4();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 pushToken];

    if (v2)
    {
      v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;

      countAndFlagsBits = Data.hexString()()._countAndFlagsBits;
      sub_100026AC0(v3, v5);
      return countAndFlagsBits;
    }
  }

  if (qword_100973B50 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000C4AC(v13, qword_100986460);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Pseudonym service does not have an active IDS account push token";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v9, v10, v12, v11, 2u);
  }

LABEL_14:

  return 0;
}

uint64_t sub_1005F0CA4(uint64_t a1)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_1005ECD54(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1005F0DC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1005ED570(a1, v4, v5, v6);
}

uint64_t sub_1005F0E78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_1005EF0A0(a1, v4, v5, v6);
}

uint64_t sub_1005F0F2C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1005F1004(uint64_t a1)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_1005EC538(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1005F1124(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1005EBF98(a1, v4, v5, v6);
}

uint64_t sub_1005F11E8(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v40 = type metadata accessor for UUID();
  v7 = *(*(v40 - 8) + 64);
  v8 = __chkstk_darwin(v40);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v29 - v12;
  v36 = *(a3 + 16);
  if (v36)
  {
    v13 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = _swiftEmptyArrayStorage;
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v13 < *(a3 + 16))
    {
      v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v15 = *(v11 + 72);
      v16 = a3;
      v17 = a3 + v14 + v15 * v13;
      v18 = v11;
      v19 = a1;
      v20 = v39;
      (*(v11 + 16))(v39, v17, v40);
      v21 = v20;
      a1 = v19;
      v22 = v19(v21);
      if (v3)
      {
        (*v33)(v39, v40);
        v28 = v38;

        return v28;
      }

      if (v22)
      {
        v23 = *v34;
        (*v34)(v37, v39, v40);
        v24 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100290034(0, v24[2] + 1, 1);
          v24 = v41;
        }

        v27 = v24[2];
        v26 = v24[3];
        if (v27 >= v26 >> 1)
        {
          sub_100290034(v26 > 1, v27 + 1, 1);
          v24 = v41;
        }

        v24[2] = v27 + 1;
        v38 = v24;
        result = (v23)(v24 + v14 + v27 * v15, v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        result = (*v33)(v39, v40);
        a3 = v16;
      }

      ++v13;
      v11 = v18;
      if (v36 == v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = _swiftEmptyArrayStorage;
LABEL_14:

    return v38;
  }

  return result;
}

uint64_t sub_1005F14B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1005F150C()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009865B0);
  v1 = sub_10000C4AC(v0, qword_1009865B0);
  if (qword_100973740 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A08);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1005F15D4()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  sub_100282710(v0, qword_1009865C8);
  *sub_10000C4AC(v0, qword_1009865C8) = 50;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

void sub_1005F1664()
{
  v0 = CBUUIDHumanInterfaceDeviceServiceString;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 UUIDWithString:v2];

  qword_1009A0D70 = v3;
}

void sub_1005F16D0(char a1, uint64_t *a2, const char *a3)
{
  v4 = *a2;
  if (*(v3 + *a2) != (a1 & 1))
  {
    v6 = v3;
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_1009865B0);

    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = *(v6 + v4);

      _os_log_impl(&_mh_execute_header, oslog, v8, a3, v9, 8u);
    }

    else
    {
    }
  }
}

void sub_1005F184C()
{
  v1 = type metadata accessor for DefaultStringInterpolation.PrintUtilsHexFormat();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_1009865B0);

  v16[0] = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16[0], v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    v10 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_b332BTAddr + 8);
    if (v10 >> 60 == 15)
    {
      v11 = 0x8000000100789F30;
      v12 = 0xD000000000000015;
    }

    else
    {
      v14 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_b332BTAddr);
      v17 = 0;
      v18 = 0xE000000000000000;
      v16[1] = v14;
      v16[2] = v10;
      (*(v2 + 104))(v5, enum case for DefaultStringInterpolation.PrintUtilsHexFormat.hex(_:), v1);
      sub_100294008(v14, v10);
      sub_100423B84();
      DefaultStringInterpolation.appendInterpolation<A>(_:_:separator:)();
      (*(v2 + 8))(v5, v1);
      sub_10028BCC0(v14, v10);
      v12 = v17;
      v11 = v18;
    }

    v15 = sub_10000C4E4(v12, v11, &v19);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v16[0], v7, "b332BTAddr set. formatted: %s", v8, 0xCu);
    sub_10000C60C(v9);
  }

  else
  {
    v13 = v16[0];
  }
}

void sub_1005F1B24(int a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_pairedPencilsIsEmpty;
  v4 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_pairedPencilsIsEmpty);
  if (a1 == 2)
  {
    if (v4 == 2)
    {
      return;
    }
  }

  else if (v4 != 2 && ((v4 ^ a1) & 1) == 0)
  {
    return;
  }

  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_1009865B0);

  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    v9 = *(v2 + v3);
    *v7 = 136315138;
    v10 = 1702195828;
    if ((v9 & 1) == 0)
    {
      v10 = 0x65736C6166;
    }

    v11 = 0xE500000000000000;
    if (v9)
    {
      v11 = 0xE400000000000000;
    }

    if (v9 == 2)
    {
      v12 = 0xD00000000000001ELL;
    }

    else
    {
      v12 = v10;
    }

    if (v9 == 2)
    {
      v13 = 0x80000001007998B0;
    }

    else
    {
      v13 = v11;
    }

    v14 = sub_10000C4E4(v12, v13, &v16);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, oslog, v6, "didSet pairedPencilsIsEmpty: %s", v7, 0xCu);
    sub_10000C60C(v8);
  }

  else
  {
  }
}

void sub_1005F1D24()
{
  v1 = v0;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009865B0);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    v6 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didPairingSucceed);
    *v4 = 136315138;
    v7 = 1702195828;
    if ((v6 & 1) == 0)
    {
      v7 = 0x65736C6166;
    }

    v8 = 0xE500000000000000;
    if (v6)
    {
      v8 = 0xE400000000000000;
    }

    if (v6 == 2)
    {
      v9 = 0xD00000000000001BLL;
    }

    else
    {
      v9 = v7;
    }

    if (v6 == 2)
    {
      v10 = 0x8000000100799A30;
    }

    else
    {
      v10 = v8;
    }

    v11 = sub_10000C4E4(v9, v10, &v13);

    *(v4 + 4) = v11;
    _os_log_impl(&_mh_execute_header, oslog, v3, "didSet didPairingSucceed: %s", v4, 0xCu);
    sub_10000C60C(v5);
  }
}

uint64_t sub_1005F1ED8(id a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sbRemoteHandle);
  *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sbRemoteHandle) = a1;
  v4 = v2;
  if (a1)
  {
    if (v2 == a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  a1 = 0;
  v2 = v4;
  if (v4)
  {
LABEL_3:
    a1 = [v2 invalidate];
  }

LABEL_4:

  return _objc_release_x2(a1);
}

void sub_1005F1F48()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sessionTimeout;
  v2 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sessionTimeout);
  if (v2)
  {
    v3 = v0;
    v4 = qword_100973B58;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_1009865B0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "- stopSessionTimeout", v8, 2u);
    }

    v9 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary13PushableTimer_timer);
    swift_getObjectType();
    OS_dispatch_source.cancel()();

    v10 = *(v3 + v1);
    *(v3 + v1) = 0;
  }
}

uint64_t sub_1005F2090()
{
  sub_1005F1F48();
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_uuid;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  sub_10028BCC0(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sentBluetoothAddress), *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sentBluetoothAddress + 8));
  v4 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needingUnpair);

  v5 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needingDisconnect);

  v6 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_accInfoDict);

  v7 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_babyHash + 8);

  v8 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sessionTimeout);

  v9 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__accessoryUID + 8);

  sub_10028BCC0(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__blePairingUUID), *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__blePairingUUID + 8));
  v10 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_devicePencilBtTag + 8);

  sub_10028BCC0(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_oobd), *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_oobd + 8));
  swift_unknownObjectWeakDestroy();

  sub_10028BCC0(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_b332BTAddr), *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_b332BTAddr + 8));
  return v0;
}

uint64_t sub_1005F2248()
{
  sub_1005F2090();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1005F22C8()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1005F2434()
{
  type metadata accessor for OnceManager();
  v1 = swift_allocObject();
  *(v1 + 16) = _swiftEmptySetSingleton;
  *(v0 + 16) = v1;
  UUID.init()();
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults;
  *(v0 + v2) = [objc_opt_self() standardUserDefaults];
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_btCnxState) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_hidServiceDiscovered) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_ranEnsurePairingStarted) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_handledPairRequest) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_handledPairResult) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_pairConsented) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairingStarted) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairPrompt) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedEnableBTPrompt) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_lastSentBatteryPercentage) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sentBluetoothAddress) = xmmword_1007F8A80;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_ranHandleDiscover) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_ranHandleUnpairs) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needsUnlockPrompt) = 1;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needToStopBLEUpdates) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_hideBattery) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didCleanup) = 0;
  v3 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needingUnpair;
  *(v0 + v3) = sub_1002823F8(_swiftEmptyArrayStorage);
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needingDisconnect;
  *(v0 + v4) = sub_1002823F8(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_startedUnpairProcess) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_startedCheckingFindMyStatus) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_finishedCheckingFindMyStatus) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needsHiddenChargeStatusForReplacementB332) = 1;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didShowSuccess) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needToResetFromBTAddrRotation) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_secondNeedsHiddenChargeStatusForReplacementB332) = 1;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_shouldFindMyPairOnSuccess) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_isPaired) = 2;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_peerRequestingPairing) = 0;
  v5 = v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_peerPairingType;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_accInfoDict) = 0;
  v6 = (v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_babyHash);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sessionTimeout) = 0;
  v7 = (v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__accessoryUID);
  *v7 = 0;
  v7[1] = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__blePairingUUID) = xmmword_1007F8A80;
  v8 = v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = (v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_devicePencilBtTag);
  *v9 = 0;
  v9[1] = 0;
  v10 = v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_devicePencilCode;
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_oobd) = xmmword_1007F8A80;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_viewServiceXPCConnectionEstablished) = 2;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_discoveredBatteryInfo) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_btBatteryScanner) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_remoteHandleActivated) = 2;
  v11 = v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_powerSourceID;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_findMyUnpairAlert) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) = 1;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_b332BTAddr) = xmmword_1007F8A80;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_pairedPencilsIsEmpty) = 2;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didPairingSucceed) = 2;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sbRemoteHandle) = 0;
  return v0;
}

id sub_1005F27A8()
{
  result = [objc_allocWithZone(type metadata accessor for SDB332SetupAgent(0)) init];
  qword_1009A0D78 = result;
  return result;
}

uint64_t sub_1005F2838(void *a1, int a2)
{
  v5 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v58 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v59 = &v55 - v9;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_1009865B0);
  v11 = v2;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109376;
    *(v14 + 4) = (*(&v11->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState))[OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_hideBattery];

    *(v14 + 8) = 1024;
    *(v14 + 10) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v12, v13, "updateStateRemotely. hideBattery: %{BOOL}d, isCharging: %{BOOL}d", v14, 0xEu);
  }

  else
  {

    v12 = v11;
  }

  aBlock[4] = sub_10060E6A0;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004502D4;
  aBlock[3] = &unk_1008EA788;
  v15 = _Block_copy(aBlock);
  v57 = [a1 remoteObjectProxyWithErrorHandler:v15];
  _Block_release(v15);
  v16 = *(&v11->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_ioKitBatteryLevel);
  v17 = *(&v11[1].isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_ioKitBatteryLevel);
  v18 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v19 = *(*(&v11->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_discoveredBatteryInfo);
  if (v19)
  {
    [v19 batteryLevel];
    v21 = v20;
  }

  else
  {
    v21 = 0.0;
  }

  v22 = v19 == 0;
  if (v17)
  {
    v23 = v21;
  }

  else
  {
    v23 = v16;
  }

  v24 = v17 & v22;
  if ((v17 & v22) != 0)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = v23;
  }

  v26 = *(&v11->isa + v18);
  if ((a2 & 1) != 0 && v25 <= *(v26 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_lastSentBatteryPercentage))
  {
    v25 = *(v26 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_lastSentBatteryPercentage);
  }

  *(v26 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_lastSentBatteryPercentage) = v25;
  v61 = a2;
  if ((v24 & 1) == 0)
  {
    v61 = (*(v26 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_hideBattery) & a2);
  }

  v60 = a2;
  v27 = v11;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v56 = v27;

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v30 = 134219010;
    *(v30 + 4) = v25;
    *(v30 + 12) = 2080;
    if (v17)
    {
      v31 = 0xD000000000000014;
      v32 = 0x8000000100799670;
    }

    else
    {
      v31 = Double.description.getter();
      v32 = v33;
    }

    v34 = sub_10000C4E4(v31, v32, aBlock);

    *(v30 + 14) = v34;
    *(v30 + 22) = 2080;
    if (v19)
    {
      v35 = Double.description.getter();
      v37 = v36;
    }

    else
    {
      v37 = 0x8000000100799690;
      v35 = 0xD00000000000001CLL;
    }

    v38 = sub_10000C4E4(v35, v37, aBlock);

    *(v30 + 24) = v38;
    *(v30 + 32) = 2048;
    *(v30 + 34) = *(*(&v11->isa + v18) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_lastSentBatteryPercentage);
    *(v30 + 42) = 1024;
    *(v30 + 44) = v61 & 1;
    _os_log_impl(&_mh_execute_header, v28, v29, "Sending B332 battery level: %f |\nIOKitLevel: %s, advertisementLevel: %s, lastSent: %f, hiding: %{BOOL}d", v30, 0x30u);
    swift_arrayDestroy();
  }

  v39 = *(&v11->isa + v18);
  v40 = *(v39 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType);
  v41 = *(v39 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType + 8);
  v42 = *(v39 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral);
  v43 = v60;
  v45 = v58;
  v44 = v59;
  if (v42)
  {
    v46 = [v42 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

  v48 = type metadata accessor for UUID();
  v49 = *(v48 - 8);
  v50 = 1;
  (*(v49 + 56))(v44, v47, 1, v48);
  v51 = *(&v56->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_orientation) - 1;
  if (v51 <= 3)
  {
    v50 = qword_10080DB58[v51];
  }

  sub_10000FF90(v44, v45, &unk_100976120, &qword_1007F9260);
  if ((*(v49 + 48))(v45, 1, v48) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v49 + 8))(v45, v48);
  }

  if (v41)
  {
    v53 = 0;
  }

  else
  {
    v53 = v40;
  }

  [v57 updateDeviceInfoWithDeviceType:v53 batteryLevel:(v61 & 1) == 0 batteryLevelKnown:v50 edge:0 orientation:v43 & 1 isCharging:isa identifier:v25];
  swift_unknownObjectRelease();

  return sub_100005508(v44, &unk_100976120, &qword_1007F9260);
}

void sub_1005F2E9C(char a1)
{
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sbHasStarted;
  if (v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sbHasStarted] != (a1 & 1))
  {
    v3 = v1;
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_1009865B0);
    v5 = v1;
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = v3[v2];

      _os_log_impl(&_mh_execute_header, oslog, v6, "sbHasStarted = %{BOOL}d", v7, 8u);

      v8 = oslog;
    }

    else
    {

      v8 = v5;
    }
  }
}

uint64_t sub_1005F2FF4()
{
  if (SBSSpringBoardBlockableServerPort())
  {
    IsAlive = SBGetIsAlive();
    v10 = IsAlive;
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000C4AC(v11, qword_1009865B0);
    v2 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109376;
      *(v13 + 4) = v10;
      *(v13 + 8) = 256;
      swift_beginAccess();
      *(v13 + 10) = 0;
      v5 = "getSBIsAlive() - SBGetIsAlive result: %d, outIsAlive: %hhu";
      v6 = v12;
      v7 = v2;
      v8 = v13;
      v9 = 11;
      goto LABEL_11;
    }
  }

  else
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C4AC(v1, qword_1009865B0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "sbPort = 0";
      v6 = v3;
      v7 = v2;
      v8 = v4;
      v9 = 2;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v7, v6, v5, v8, v9);
    }
  }

  return 0;
}

uint64_t sub_1005F3200()
{
  v1 = type metadata accessor for DefaultStringInterpolation.PrintUtilsHexFormat();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  v7 = (*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_b332BTAddr);
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    v9 = *v7;
    v13 = 0;
    v14 = 0xE000000000000000;
    v12[0] = v9;
    v12[1] = v8;
    (*(v2 + 104))(v5, enum case for DefaultStringInterpolation.PrintUtilsHexFormat.hex(_:), v1);
    sub_100294008(v9, v8);
    sub_100423B84();
    DefaultStringInterpolation.appendInterpolation<A>(_:_:separator:)();
    (*(v2 + 8))(v5, v1);
    v10._countAndFlagsBits = v13;
    v11 = v14;
    v13 = 0x206D6F646E6152;
    v14 = 0xE700000000000000;
    v10._object = v11;
    String.append(_:)(v10);

    sub_10028BCC0(v9, v8);
    return v13;
  }

  return result;
}

void sub_1005F339C()
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_1009865B0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    if (v2[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_ioKitBatteryLevel + 8])
    {
      v7 = 0x8000000100799A00;
      v8 = 0xD000000000000020;
    }

    else
    {
      v9 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_ioKitBatteryLevel];
      v8 = Double.description.getter();
      v7 = v10;
    }

    v11 = sub_10000C4E4(v8, v7, &v17);

    *(v5 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Update b332 status: %s", v5, 0xCu);
    sub_10000C60C(v6);
  }

  v12 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_1005F2838(Strong, 1);
  }

  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    sub_1005F2838(v15, 1);
  }
}

id sub_1005F35B0()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v1, v0);

  v3.receiver = v0;
  v3.super_class = type metadata accessor for SDB332SetupAgent(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *sub_1005F37A8()
{
  v1 = v0;
  v36 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v36 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v36);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v35 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q;
  v10 = sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
  v34[1] = "Optional<Double>.none";
  v34[2] = v10;
  static DispatchQoS.unspecified.getter();
  v38 = _swiftEmptyArrayStorage;
  sub_10000D4DC(&qword_100973C60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10028088C(&unk_10097A630, &unk_1007F5680);
  sub_100011630(&qword_100973C70, &unk_10097A630, &unk_1007F5680);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v36);
  *&v0[v35] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_bleProvider] = 0;
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_orientationObserver] = 0;
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_orientation] = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor;
  *&v1[v11] = [objc_allocWithZone(CUSystemMonitor) init];
  v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitorActivated] = 0;
  v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sbHasStarted] = 0;
  *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_peripheralsIConnectedTo] = &_swiftEmptyDictionarySingleton;
  v12 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_lastB332WeWantedToPair;
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 56))(&v1[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_powerSourceMonitor;
  *&v1[v14] = [objc_allocWithZone(CUPowerSourceMonitor) init];
  v15 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_lastAccessoryDetachTimestamp;
  v16 = type metadata accessor for Date();
  (*(*(v16 - 8) + 56))(&v1[v15], 1, 1, v16);
  v17 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_lastAttachedAccessorySerialNum];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_ioKitBatteryLevel];
  *v18 = 0;
  v18[8] = 1;
  v19 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v20 = type metadata accessor for SDB332SetupAgentSessionState(0);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  sub_1005F2434();
  *&v1[v19] = v23;
  v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionInProgress] = 0;
  *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionAttempt] = 0;
  *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionMaxAttempts] = 10;
  *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionWaitDelay] = 0x3FE8000000000000;
  *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionWaitIndex] = 0;
  v24 = [objc_allocWithZone(CBCentralManager) init];
  *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central] = v24;
  v25 = type metadata accessor for SDB332SetupAgent(0);
  v37.receiver = v1;
  v37.super_class = v25;
  v26 = objc_msgSendSuper2(&v37, "init");
  v27 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_powerSourceMonitor;
  v28 = *&v26[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_powerSourceMonitor];
  v29 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q;
  v30 = *&v26[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q];
  v31 = v26;
  [v28 setDispatchQueue:v30];
  v32 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor;
  [*&v31[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor] setDispatchQueue:*&v26[v29]];
  [*&v31[v32] setMeDeviceUseFindMyLocate:1];
  [*&v26[v27] setChangeFlags:0xFFFFFFFFLL];

  return v31;
}

id sub_1005F3CCC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_1009865B0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10000C4E4(a1, a2, &v12);
    _os_log_impl(&_mh_execute_header, v7, v8, "Received Darwin notification: %s", v9, 0xCu);
    sub_10000C60C(v10);
  }

  return [v3 showEducationUIIfNecessary];
}

void sub_1005F3E3C()
{
  v130 = type metadata accessor for DispatchWorkItemFlags();
  isa = v130[-1].isa;
  v2 = *(isa + 8);
  __chkstk_darwin(v130);
  v4 = &v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MobileGestalt_get_current_device();
  if (!v10)
  {
    __break(1u);
    return;
  }

  v11 = v10;
  deviceSupportsApplePencil = MobileGestalt_get_deviceSupportsApplePencil();

  if (deviceSupportsApplePencil)
  {
    if ([objc_opt_self() b332PairingEnabled])
    {
      v127 = v6;
      v128 = v5;
      v129 = isa;
      v126 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q];
      [v0 setDispatchQueue:?];
      v13 = [objc_opt_self() standardUserDefaults];
      sub_1005619B4();

      v14 = CFNotificationCenterGetDarwinNotifyCenter();
      v15 = String._bridgeToObjectiveC()();
      CFNotificationCenterAddObserver(v14, v0, sub_1005F536C, v15, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

      if (IsAppleInternalBuild())
      {
        v16 = objc_opt_self();
        v17 = [v16 defaultCenter];
        v18 = String._bridgeToObjectiveC()();
        v19 = swift_allocObject();
        *(v19 + 16) = v0;
        v137 = sub_100625414;
        v138 = v19;
        aBlock = _NSConcreteStackBlock;
        v134 = 1107296256;
        v135 = sub_1002E679C;
        v136 = &unk_1008EB098;
        v20 = _Block_copy(&aBlock);
        v125 = v0;
        v21 = v0;

        v22 = [v17 addObserverForName:v18 object:0 queue:0 usingBlock:v20];
        _Block_release(v20);
        swift_unknownObjectRelease();

        v23 = [v16 defaultCenter];
        v24 = String._bridgeToObjectiveC()();
        v25 = swift_allocObject();
        *(v25 + 16) = v21;
        v137 = sub_100625454;
        v138 = v25;
        aBlock = _NSConcreteStackBlock;
        v134 = 1107296256;
        v135 = sub_1002E679C;
        v136 = &unk_1008EB0E8;
        v26 = _Block_copy(&aBlock);
        v27 = v21;

        v28 = [v23 addObserverForName:v24 object:0 queue:0 usingBlock:v26];
        _Block_release(v26);
        swift_unknownObjectRelease();

        v29 = [v16 defaultCenter];
        v30 = String._bridgeToObjectiveC()();
        v31 = swift_allocObject();
        *(v31 + 16) = v27;
        v137 = sub_100625494;
        v138 = v31;
        aBlock = _NSConcreteStackBlock;
        v134 = 1107296256;
        v135 = sub_1002E679C;
        v136 = &unk_1008EB138;
        v32 = _Block_copy(&aBlock);
        v33 = v27;

        v34 = [v29 addObserverForName:v30 object:0 queue:0 usingBlock:v32];
        _Block_release(v32);
        swift_unknownObjectRelease();

        v35 = [v16 defaultCenter];
        v36 = String._bridgeToObjectiveC()();
        v37 = swift_allocObject();
        *(v37 + 16) = v33;
        v137 = sub_1006254D4;
        v138 = v37;
        aBlock = _NSConcreteStackBlock;
        v134 = 1107296256;
        v135 = sub_1002E679C;
        v136 = &unk_1008EB188;
        v38 = _Block_copy(&aBlock);
        v39 = v33;

        v40 = [v35 addObserverForName:v36 object:0 queue:0 usingBlock:v38];
        _Block_release(v38);
        swift_unknownObjectRelease();

        v41 = [v16 defaultCenter];
        v42 = String._bridgeToObjectiveC()();
        v43 = swift_allocObject();
        *(v43 + 16) = v39;
        v137 = sub_10062550C;
        v138 = v43;
        aBlock = _NSConcreteStackBlock;
        v134 = 1107296256;
        v135 = sub_1002E679C;
        v136 = &unk_1008EB1D8;
        v44 = _Block_copy(&aBlock);
        v45 = v39;

        v46 = [v41 addObserverForName:v42 object:0 queue:0 usingBlock:v44];
        _Block_release(v44);
        swift_unknownObjectRelease();

        v47 = [v16 defaultCenter];
        v48 = String._bridgeToObjectiveC()();
        v49 = swift_allocObject();
        *(v49 + 16) = v45;
        v137 = sub_100625544;
        v138 = v49;
        aBlock = _NSConcreteStackBlock;
        v134 = 1107296256;
        v135 = sub_1002E679C;
        v136 = &unk_1008EB228;
        v50 = _Block_copy(&aBlock);
        v51 = v45;

        v52 = [v47 addObserverForName:v48 object:0 queue:0 usingBlock:v50];
        _Block_release(v50);
        swift_unknownObjectRelease();

        v53 = [v16 defaultCenter];
        v54 = String._bridgeToObjectiveC()();
        v55 = swift_allocObject();
        *(v55 + 16) = v51;
        v137 = sub_10062557C;
        v138 = v55;
        aBlock = _NSConcreteStackBlock;
        v134 = 1107296256;
        v135 = sub_1002E679C;
        v136 = &unk_1008EB278;
        v56 = _Block_copy(&aBlock);
        v57 = v51;

        v58 = [v53 addObserverForName:v54 object:0 queue:0 usingBlock:v56];
        _Block_release(v56);
        swift_unknownObjectRelease();

        v59 = [v16 defaultCenter];
        v60 = String._bridgeToObjectiveC()();
        v61 = swift_allocObject();
        *(v61 + 16) = v57;
        v137 = sub_1006255B4;
        v138 = v61;
        aBlock = _NSConcreteStackBlock;
        v134 = 1107296256;
        v135 = sub_1002E679C;
        v136 = &unk_1008EB2C8;
        v62 = _Block_copy(&aBlock);
        v63 = v57;

        v64 = [v59 addObserverForName:v60 object:0 queue:0 usingBlock:v62];
        _Block_release(v62);
        swift_unknownObjectRelease();

        v65 = [v16 defaultCenter];
        v66 = String._bridgeToObjectiveC()();
        v67 = swift_allocObject();
        *(v67 + 16) = v63;
        v137 = sub_1006255EC;
        v138 = v67;
        aBlock = _NSConcreteStackBlock;
        v134 = 1107296256;
        v135 = sub_1002E679C;
        v136 = &unk_1008EB318;
        v68 = _Block_copy(&aBlock);
        v69 = v63;

        v70 = [v65 addObserverForName:v66 object:0 queue:0 usingBlock:v68];
        _Block_release(v68);
        swift_unknownObjectRelease();

        v71 = [v16 defaultCenter];
        v72 = String._bridgeToObjectiveC()();
        v73 = swift_allocObject();
        *(v73 + 16) = v69;
        v137 = sub_100625624;
        v138 = v73;
        aBlock = _NSConcreteStackBlock;
        v134 = 1107296256;
        v135 = sub_1002E679C;
        v136 = &unk_1008EB368;
        v74 = _Block_copy(&aBlock);
        v75 = v69;

        v76 = [v71 addObserverForName:v72 object:0 queue:0 usingBlock:v74];
        _Block_release(v74);
        swift_unknownObjectRelease();

        v77 = [v16 defaultCenter];
        v78 = String._bridgeToObjectiveC()();
        v79 = swift_allocObject();
        *(v79 + 16) = v75;
        v137 = sub_100625664;
        v138 = v79;
        aBlock = _NSConcreteStackBlock;
        v134 = 1107296256;
        v135 = sub_1002E679C;
        v136 = &unk_1008EB3B8;
        v80 = _Block_copy(&aBlock);
        v81 = v75;

        v82 = [v77 addObserverForName:v78 object:0 queue:0 usingBlock:v80];
        _Block_release(v80);
        swift_unknownObjectRelease();

        v83 = [v16 defaultCenter];
        v84 = String._bridgeToObjectiveC()();
        v85 = swift_allocObject();
        *(v85 + 16) = v81;
        v137 = sub_10062569C;
        v138 = v85;
        aBlock = _NSConcreteStackBlock;
        v134 = 1107296256;
        v135 = sub_1002E679C;
        v136 = &unk_1008EB408;
        v86 = _Block_copy(&aBlock);
        v87 = v81;

        v88 = [v83 addObserverForName:v84 object:0 queue:0 usingBlock:v86];
        _Block_release(v86);
        swift_unknownObjectRelease();

        v89 = [v16 defaultCenter];
        v90 = String._bridgeToObjectiveC()();
        v91 = swift_allocObject();
        *(v91 + 16) = v87;
        v137 = sub_1006256D4;
        v138 = v91;
        aBlock = _NSConcreteStackBlock;
        v134 = 1107296256;
        v135 = sub_1002E679C;
        v136 = &unk_1008EB458;
        v92 = _Block_copy(&aBlock);
        v93 = v87;

        v94 = [v89 addObserverForName:v90 object:0 queue:0 usingBlock:v92];
        v95 = v92;
        v0 = v125;
        _Block_release(v95);
        swift_unknownObjectRelease();
      }

      v96 = [objc_opt_self() defaultCenter];
      v97 = swift_allocObject();
      *(v97 + 16) = v0;
      v137 = sub_1006256DC;
      v138 = v97;
      aBlock = _NSConcreteStackBlock;
      v134 = 1107296256;
      v135 = sub_1002E679C;
      v136 = &unk_1008EB4A8;
      v98 = _Block_copy(&aBlock);
      v99 = v0;
      v100 = @"com.apple.sharingd.SystemUIChanged";

      v101 = [v96 addObserverForName:v100 object:0 queue:0 usingBlock:v98];
      _Block_release(v98);
      swift_unknownObjectRelease();

      v102 = swift_allocObject();
      *(v102 + 16) = v99;
      v137 = sub_10062571C;
      v138 = v102;
      aBlock = _NSConcreteStackBlock;
      v134 = 1107296256;
      v135 = sub_100011678;
      v136 = &unk_1008EB4F8;
      v103 = _Block_copy(&aBlock);
      v104 = v99;
      static DispatchQoS.unspecified.getter();
      v132 = _swiftEmptyArrayStorage;
      sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
      sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
      sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
      v105 = v130;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v103);
      (*(v129 + 1))(v4, v105);
      (*(v127 + 8))(v9, v128);

      v106 = type metadata accessor for SDB332SetupAgent(0);
      v131.receiver = v104;
      v131.super_class = v106;
      objc_msgSendSuper2(&v131, "_activate");
      if (qword_100973B58 != -1)
      {
        swift_once();
      }

      v107 = type metadata accessor for Logger();
      sub_10000C4AC(v107, qword_1009865B0);
      v108 = Logger.logObject.getter();
      v109 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        *v110 = 0;
        _os_log_impl(&_mh_execute_header, v108, v109, "Activated", v110, 2u);
      }

      return;
    }

    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v120 = type metadata accessor for Logger();
    sub_10000C4AC(v120, qword_1009865B0);
    v130 = Logger.logObject.getter();
    v121 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v130, v121))
    {
      v122 = swift_slowAlloc();
      *v122 = 0;
      _os_log_impl(&_mh_execute_header, v130, v121, "b332PairingEnabled = false. Don't activate.", v122, 2u);
    }
  }

  else
  {
    v111 = SFDeviceModelCodeGet();
    sub_100625350(v111);
    v112 = String.init(cString:)();
    v114 = v113;
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v115 = type metadata accessor for Logger();
    sub_10000C4AC(v115, qword_1009865B0);

    v130 = Logger.logObject.getter();
    v116 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v130, v116))
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      aBlock = v118;
      *v117 = 136315138;
      v119 = sub_10000C4E4(v112, v114, &aBlock);

      *(v117 + 4) = v119;
      _os_log_impl(&_mh_execute_header, v130, v116, "Device model code (%s) does not support Apple Pencil. Don't activate.", v117, 0xCu);
      sub_10000C60C(v118);

      return;
    }
  }

  v123 = v130;
}

void sub_1005F536C(uint64_t a1, void *a2, void *a3)
{
  if (a2 && a3)
  {
    v4 = a2;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    v8 = a3;
    sub_1005F3CCC(v5, v7);
  }
}

uint64_t sub_1005F53F4(uint64_t a1)
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009865B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Erasing B332 setup defaults", v5, 2u);
  }

  sub_1005FE0C0();
  v6 = [objc_opt_self() standardUserDefaults];
  sub_100561714();

  v7 = type metadata accessor for SDB332SetupAgentSessionState(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  sub_1005F2434();
  v11 = *(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState);
  *(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) = v10;
}

uint64_t sub_1005F5540(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v13 = *(v22 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v22);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *&a2[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q];
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  aBlock[4] = a4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = a5;
  v18 = _Block_copy(aBlock);
  v19 = a2;
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v22);
}

void sub_1005F5804(uint64_t a1)
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009865B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "sharingCallBluetoothAddressChangedHandler", v5, 2u);
  }

  v6 = [*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor) bluetoothAddressChangedHandler];
  if (v6)
  {
    v7 = v6;
    (*(v6 + 2))();

    _Block_release(v7);
  }
}

void sub_1005F5938(uint64_t a1)
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009865B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "sendsUIUpdates = false, sharingDisableB332UIUpdates", v5, 2u);
  }

  v6 = *(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState);
  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates;
  v8 = *(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates);
  *(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) = 0;
  if (v8 == 1)
  {

    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = *(v6 + v7);
      _os_log_impl(&_mh_execute_header, oslog, v9, "sendsUIUpdates = %{BOOL}d", v10, 8u);
    }
  }
}

uint64_t sub_1005F5B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v11 = *(v19 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v19);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q);
  aBlock[4] = a3;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = a4;
  v16 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v20 + 8))(v10, v7);
  return (*(v11 + 8))(v14, v19);
}

void sub_1005F5E18(const char *a1, void (*a2)(void))
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_1009865B0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, a1, v7, 2u);
  }

  v8 = [objc_opt_self() standardUserDefaults];
  a2();
}

void sub_1005F5F5C(const char *a1, char a2, uint64_t a3)
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_1009865B0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 2u);
  }

  v10 = objc_opt_self();
  v11 = [v10 standardUserDefaults];
  sub_1005610DC(a2 & 1);

  v12 = [v10 standardUserDefaults];
  sub_100560F98(a3);
}

id sub_1005F60BC(void *a1)
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009865B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "sharing.simulateB332TapToPair", v5, 2u);
  }

  return [a1 pairTapped];
}

void sub_1005F61D4(const char *a1, char a2)
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_1009865B0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, a1, v7, 2u);
  }

  v8 = [objc_opt_self() standardUserDefaults];
  sub_100561220(a2 & 1);
}

uint64_t sub_1005F6308(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v21 = *(v8 - 8);
  v22 = v8;
  v9 = *(v21 + 64);
  __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Notification();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v20[1] = *&a2[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q];
  (*(v13 + 16))(v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  v15 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  (*(v13 + 32))(v16 + v15, v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  aBlock[4] = sub_100625950;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008EB930;
  v17 = _Block_copy(aBlock);
  v18 = a2;
  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v23 + 8))(v7, v4);
  (*(v21 + 8))(v11, v22);
}

void sub_1005F66A4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v54 - v6;
  v8 = type metadata accessor for Notification();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000C4AC(v13, qword_1009865B0);
  (*(v9 + 16))(v12, a1, v8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v54[1] = a1;
    v54[2] = v14;
    v55 = v1;
    v56 = v7;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v59[0] = v18;
    *v17 = 136315138;
    if (Notification.userInfo.getter())
    {
      v19 = Dictionary.description.getter();
      v21 = v20;
    }

    else
    {
      v21 = 0x8000000100799D00;
      v19 = 0xD00000000000002BLL;
    }

    (*(v9 + 8))(v12, v8);
    v22 = sub_10000C4E4(v19, v21, v59);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "showPencilUI. Info: %s", v17, 0xCu);
    sub_10000C60C(v18);

    v2 = v55;
    v7 = v56;
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v23 = Notification.userInfo.getter();
  if (!v23)
  {
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_28;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "showPencilUI called without userInfo";
    goto LABEL_26;
  }

  v24 = v23;
  v57 = 0x657079546975;
  v58 = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v24 + 16) || (v25 = sub_100570754(v59), (v26 & 1) == 0))
  {

    sub_100285E74(v59);
LABEL_22:
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_28;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "showPencilUI called without UI type";
LABEL_26:
    _os_log_impl(&_mh_execute_header, v37, v38, v40, v39, 2u);
LABEL_27:

    goto LABEL_28;
  }

  sub_10000C5B0(*(v24 + 56) + 32 * v25, v60);
  sub_100285E74(v59);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_22;
  }

  v28 = v57;
  v27 = v58;
  v57 = 0x79546C69636E6570;
  v58 = 0xEA00000000006570;
  AnyHashable.init<A>(_:)();
  if (!*(v24 + 16) || (v29 = sub_100570754(v59), (v30 & 1) == 0))
  {

    sub_100285E74(v59);
LABEL_31:
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_28;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "showPencilUI called without valid Pencil type";
    goto LABEL_26;
  }

  sub_10000C5B0(*(v24 + 56) + 32 * v29, v60);
  sub_100285E74(v59);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_31;
  }

  v31 = v57;
  if (v28 == 0x6961507473726966 && v27 == 0xE900000000000072 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v32 = type metadata accessor for TaskPriority();
    (*(*(v32 - 8) + 56))(v7, 1, 1, v32);
    type metadata accessor for MainActor();
    v33 = v2;
    v34 = static MainActor.shared.getter();
    v35 = swift_allocObject();
    v35[2] = v34;
    v35[3] = &protocol witness table for MainActor;
    v35[4] = v33;
    v35[5] = v31;
    v35[6] = v24;
    v36 = &unk_10080DB38;
LABEL_20:
    sub_1002B3098(0, 0, v7, v36, v35);

    return;
  }

  if (v28 == 1819044208 && v27 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v41 = type metadata accessor for TaskPriority();
    (*(*(v41 - 8) + 56))(v7, 1, 1, v41);
    type metadata accessor for MainActor();
    v42 = v2;
    v43 = static MainActor.shared.getter();
    v35 = swift_allocObject();
    v35[2] = v43;
    v35[3] = &protocol witness table for MainActor;
    v35[4] = v42;
    v35[5] = v31;
    v35[6] = v24;
    v36 = &unk_10080DB28;
    goto LABEL_20;
  }

  if ((v28 != 0x6574746142776F6CLL || v27 != 0xEE006C6C69507972) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    v37 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v37, v50))
    {

      goto LABEL_28;
    }

    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v59[0] = v52;
    *v51 = 136315138;
    v53 = sub_10000C4E4(v28, v27, v59);

    *(v51 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v37, v50, "showPencilUI called with unrecognized UI type: %s", v51, 0xCu);
    sub_10000C60C(v52);

    goto LABEL_27;
  }

  v57 = 0x656772616863;
  v58 = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  if (*(v24 + 16) && (v44 = sub_100570754(v59), (v45 & 1) != 0))
  {
    sub_10000C5B0(*(v24 + 56) + 32 * v44, v60);
    sub_100285E74(v59);

    if (swift_dynamicCast())
    {
      v46 = v57;
      v47 = type metadata accessor for TaskPriority();
      (*(*(v47 - 8) + 56))(v7, 1, 1, v47);
      type metadata accessor for MainActor();
      v48 = v2;
      v49 = static MainActor.shared.getter();
      v35 = swift_allocObject();
      v35[2] = v49;
      v35[3] = &protocol witness table for MainActor;
      v35[4] = v48;
      v35[5] = v31;
      v35[6] = v46;
      v36 = &unk_10080DB18;
      goto LABEL_20;
    }
  }

  else
  {

    sub_100285E74(v59);
  }

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "showPencilUI called for low-battery pill without valid charge";
    goto LABEL_26;
  }

LABEL_28:
}

void sub_1005F7090()
{
  v1 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v209 - v3;
  v5 = type metadata accessor for UUID();
  v229 = *(v5 - 8);
  v6 = *(v229 + 64);
  __chkstk_darwin(v5);
  v8 = &v209 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v227 = *(v9 - 8);
  v228 = v9;
  v10 = *(v227 + 64);
  __chkstk_darwin(v9);
  v12 = &v209 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v226 = *(v13 - 8);
  v14 = *(v226 + 64);
  __chkstk_darwin(v13);
  v16 = &v209 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchTime();
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17);
  v21 = &v209 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v24 = &v209 - v23;
  v25 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState];
  if (*(v25 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType + 8))
  {
    return;
  }

  v26 = *(v25 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType);
  v27 = v26 > 4;
  v28 = (1 << v26) & 0x1A;
  if (v27 || v28 == 0)
  {
    return;
  }

  v222 = v5;
  v223 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v221 = v4;
  v224 = v0;
  v30 = *(v25 + 16);
  aBlock = 0xD000000000000057;
  v231 = 0x80000001007995E0;
  v219 = v22;
  v220 = 0x80000001007995E0;
  v236[0] = 924;

  v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v31);

  v32 = String.hashValue.getter();

  swift_beginAccess();
  v225 = v30;
  v33 = v224;
  v34 = sub_10046E4E8(v236, v32);
  swift_endAccess();
  if (v34)
  {
    sub_100603404(v33);
  }

  v35 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sbHasStarted;
  if (v33[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sbHasStarted])
  {
    v36 = 1;
    v37 = 1;
  }

  else
  {
    v37 = sub_1005F2FF4();
    v36 = v33[v35];
  }

  v33[v35] = v37 & 1;
  sub_1005F2E9C(v36);
  if (v33[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitorActivated] == 1)
  {
    v38 = *&v33[v223];
    if (*(v38 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete))
    {
LABEL_13:

      return;
    }

    v217 = v12;
    v218 = v13;
    v43 = v38 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType;
    v44 = *v43;
    v45 = *(v43 + 8);
    v46 = 0;
    sub_1006037AC();
    LODWORD(v215) = v45;
    v216 = v44;
    sub_1005FF444();
    sub_10060108C();
    sub_100601364();
    sub_100601674();
    aBlock = 0xD000000000000057;
    v231 = v220;
    v236[0] = 956;
    v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v47);

    v48 = String.hashValue.getter();

    swift_beginAccess();
    v49 = sub_10046E4E8(v236, v48);
    swift_endAccess();
    if (v49)
    {
      sub_1006039F0(v33);
    }

    sub_100603BF4();
    v55 = *&v33[v223];
    v56 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_pairedPencilsIsEmpty;
    v57 = *(v55 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_pairedPencilsIsEmpty);
    if (v57 == 2)
    {
      v58 = *&v33[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central];
      v59 = *&v33[v223];

      v60 = [v58 sharedPairingAgent];
      if (!v60)
      {
LABEL_213:
        __break(1u);
        goto LABEL_214;
      }

      v61 = v60;
      v214 = sub_1005FEA1C();

      if (v214 >> 62)
      {
        v62 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v62 = *((v214 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v63 = v62 == 0;
      v57 = *(v55 + v56);
    }

    else
    {
      v64 = *&v33[v223];

      v63 = v57;
    }

    *(v55 + v56) = v63;
    sub_1005F1B24(v57);

    v65 = *(*&v33[v223] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);

    if (sub_1005607A0())
    {
      v56 = String._bridgeToObjectiveC()();
      v66 = [v65 BOOLForKey:v56];

      if ((v66 & 1) == 0)
      {
        sub_100603E50();
        sub_1006040C8();
        sub_100601B14();
        v67 = v215;
        v68 = v216;
        if (v216 == 3)
        {
          LOBYTE(v56) = v215;
        }

        else
        {
          LOBYTE(v56) = 1;
        }

        if ((v56 & 1) == 0)
        {
          sub_10060464C(0);
        }

        sub_10060194C();
        sub_1006020A8();
        if ((v67 & 1) == 0 && (v68 == 4 || v68 == 1))
        {
          v69 = *&v33[v223];
          if (*(v69 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairPrompt) == 1)
          {
            v70 = v224;
            sub_1005FDBD8(0);
            v69 = *&v70[v223];
          }

          v71 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairingStarted;
          if ((*(v69 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairingStarted) & 1) == 0)
          {
            v72 = v224;
            sub_1006023A0(1, v216);
            v69 = *&v72[v223];
            v71 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairingStarted;
          }

          *(v69 + v71) = 1;
        }

        sub_10060491C();
        sub_100604B60();
        v212 = sub_1006050AC();
        v213 = v73;
        v214 = v74;
        v215 = v75;
        aBlock = 0xD000000000000057;
        v231 = v220;
        v236[0] = 1013;
        v119._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v119);

        v120 = String.hashValue.getter();

        swift_beginAccess();
        v121 = sub_10046E4E8(v236, v120);
        swift_endAccess();
        if (v121)
        {
          sub_100605330(v212, v213, v214, v215);
        }

        v115 = v212;
        v122 = v213;
        sub_100294008(v212, v213);
        v123 = v215;
        sub_100294008(v214, v215);
        sub_100026AC0(v115, v122);
        v124 = v123 >> 62;
        if ((v123 >> 62) <= 1)
        {
          if (!v124)
          {
            v125 = BYTE6(v215);
            sub_100026AC0(v214, v215);
            v126 = v125;
            goto LABEL_126;
          }

LABEL_124:
          v143 = v214;
          v144 = HIDWORD(v214);
          sub_100026AC0(v214, v215);
          LODWORD(v126) = v144 - v143;
          if (!__OFSUB__(v144, v143))
          {
            v126 = v126;
            goto LABEL_126;
          }

          goto LABEL_212;
        }

        if (v124 != 2)
        {
          sub_100026AC0(v214, v215);
          goto LABEL_129;
        }

        v130 = *(v214 + 16);
        v114 = *(v214 + 24);
        sub_100026AC0(v214, v215);
        v126 = v114 - v130;
        if (!__OFSUB__(v114, v130))
        {
LABEL_126:
          if (v126 == 16)
          {
            v145 = 1;
            sub_100604368(1, 1016, 0x29286E7572, 0xE500000000000000);
            goto LABEL_130;
          }

LABEL_129:
          v145 = 0;
LABEL_130:
          [v224 startScanning];
          sub_1006054DC();
          v147 = v146;
          if ((v56 & 1) == 0)
          {
            [v224 startBatteryScannerForPeripheral:v146];
          }

          sub_100605AEC();
          v216 = 0;
          if (v145)
          {
            v148 = v216;
            sub_100604368(1, 1029, 0x29286E7572, 0xE500000000000000);
            v216 = v148;
          }

          v149 = *&v224[v223];
          v150 = *(v149 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_isPaired);
          if (v150 != 2)
          {
            if (v150)
            {
              if ((v56 & 1) == 0)
              {
LABEL_137:
                v151 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairingStarted;
                if ((*(v149 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairingStarted) & 1) == 0)
                {
                  if (*(v149 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType + 8))
                  {
                    v152 = 0;
                  }

                  else
                  {
                    v152 = *(v149 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType);
                  }

                  v153 = v224;
                  sub_1006023A0(1, v152);
                  v149 = *&v153[v223];
                  v151 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairingStarted;
                }

                *(v149 + v151) = 1;
                sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
                v211 = static OS_dispatch_queue.main.getter();
                static DispatchTime.now()();
                + infix(_:_:)();
                v219 = *(v219 + 8);
                (v219)(v21, v17);
                v154 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v234 = sub_1006248E8;
                v235 = v154;
                aBlock = _NSConcreteStackBlock;
                v231 = 1107296256;
                v232 = sub_100011678;
                v233 = &unk_1008EA6E8;
                v210 = _Block_copy(&aBlock);

                static DispatchQoS.unspecified.getter();
                aBlock = _swiftEmptyArrayStorage;
                sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
                sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
                sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
                v155 = v217;
                v156 = v228;
                dispatch thunk of SetAlgebra.init<A>(_:)();
                v157 = v210;
                v158 = v211;
                OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
                _Block_release(v157);

                (*(v227 + 8))(v155, v156);
                (*(v226 + 8))(v16, v218);
                (v219)(v24, v17);
                v149 = *&v224[v223];
              }

LABEL_143:
              v159 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete;
              if (*(v149 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete))
              {
                v160 = 1;
              }

              else
              {
                v161 = v224;
                sub_100602704();
                v149 = *&v161[v223];
                v159 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete;
                v160 = *(v149 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete);
              }

              *(v149 + v159) = 1;

              sub_1005F16D0(v160, &OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete, "didComplete = %{BOOL}d");

              sub_100026AC0(v212, v213);
              v162 = v214;
              v163 = v215;
LABEL_193:
              sub_100026AC0(v162, v163);
              v199 = v224;
              v200 = *&v224[v223];

              sub_1005F1F48();

              [v199 stopBatteryScanner];
              [v199 stopScanning];
              sub_100602B9C();
              v46 = v216;
              sub_100603198();
              if (!v46)
              {
                aBlock = 0xD000000000000057;
                v231 = v220;
                v236[0] = 1181;
                v201._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v201);

                v202 = String.hashValue.getter();

                swift_beginAccess();
                v203 = sub_10046E4E8(v236, v202);
                swift_endAccess();
                if (v203)
                {
                  sub_10061F624(&static os_log_type_t.default.getter, "All cleanup completely done.");
                }

                goto LABEL_13;
              }

              goto LABEL_22;
            }

            sub_1006065A0();
            v46 = v216;
            sub_100606900();
            if (!v46)
            {
              sub_100607E54();
              v216 = 0;
              v149 = *&v224[v223];
              if ((v56 & 1) == 0)
              {
                goto LABEL_137;
              }

              goto LABEL_143;
            }

            sub_100026AC0(v212, v213);
            sub_100026AC0(v214, v215);
LABEL_22:
            aBlock = v46;
            swift_errorRetain();
            sub_10028088C(&unk_10097A930, &unk_1007F9050);
            if (swift_dynamicCast() && LOBYTE(v236[0]) == 3)
            {
              if (qword_100973B58 != -1)
              {
                swift_once();
              }

              v50 = type metadata accessor for Logger();
              sub_10000C4AC(v50, qword_1009865B0);
              v51 = Logger.logObject.getter();
              v52 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v51, v52))
              {
                v53 = swift_slowAlloc();
                *v53 = 0;
                _os_log_impl(&_mh_execute_header, v51, v52, "run() failed", v53, 2u);
              }

              v54 = v221;
              (*(v229 + 56))(v221, 1, 1, v222);
              sub_1005FCB7C(v54, 0);

              sub_100005508(v54, &unk_100976120, &qword_1007F9260);
            }

            else
            {
            }

            return;
          }

LABEL_218:
          __break(1u);
          return;
        }

        __break(1u);
        goto LABEL_108;
      }
    }

    else
    {
    }

    v76 = *(*&v33[v223] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_pairedPencilsIsEmpty);
    if (v76 == 2)
    {
      goto LABEL_211;
    }

    if (v76)
    {
      aBlock = 0xD000000000000057;
      v231 = v220;
      v236[0] = 1063;
      v77._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v77);

      v78 = String.hashValue.getter();

      swift_beginAccess();
      v79 = sub_10046E4E8(v236, v78);
      swift_endAccess();
      if (v79)
      {
        sub_10061F624(&static os_log_type_t.default.getter, "pairedPencilsIsEmpty path");
      }

      sub_100603E50();
      sub_1006040C8();
      sub_10060491C();
      v80 = *&v33[v223];
      v81 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairingStarted;
      if ((*(v80 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairingStarted) & 1) == 0)
      {
        sub_10060464C(1);
        v80 = *&v33[v223];
        v81 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairingStarted;
      }

      *(v80 + v81) = 1;
      sub_100604B60();
      v24 = sub_1006050AC();
      v21 = v82;
      v84 = v83;
      v17 = v85;
      sub_100294008(v24, v82);
      sub_100294008(v84, v17);
      sub_100026AC0(v24, v21);
      v86 = v17 >> 62;
      if ((v17 >> 62) <= 1)
      {
        if (!v86)
        {
          sub_100026AC0(v84, v17);
          v87 = BYTE6(v17);
          goto LABEL_98;
        }

        sub_100026AC0(v84, v17);
        LODWORD(v87) = HIDWORD(v84) - v84;
        if (!__OFSUB__(HIDWORD(v84), v84))
        {
          v87 = v87;
          goto LABEL_98;
        }

        __break(1u);
LABEL_211:
        __break(1u);
LABEL_212:
        __break(1u);
        goto LABEL_213;
      }

      if (v86 != 2)
      {
        sub_100026AC0(v84, v17);
        goto LABEL_101;
      }

      v111 = *(v84 + 16);
      v110 = *(v84 + 24);
      sub_100026AC0(v84, v17);
      v87 = v110 - v111;
      if (!__OFSUB__(v110, v111))
      {
LABEL_98:
        if (v87 == 16)
        {
          sub_100604368(0, 1074, 0x29286E7572, 0xE500000000000000);
        }

LABEL_101:
        [v224 startScanning];
        sub_1006054DC();
        v128 = v127;
        [v224 startBatteryScannerForPeripheral:v127];
        sub_100605AEC();
        sub_100294008(v24, v21);
        sub_100294008(v84, v17);
        sub_100026AC0(v24, v21);
        if (v86 > 1)
        {
          if (v86 != 2)
          {
            sub_100026AC0(v84, v17);
LABEL_150:
            sub_1006065A0();
            sub_100606900();
            sub_100607E54();
            sub_10060847C();
            v216 = 0;
            v164 = *&v224[v223];
            v165 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete;
            if (*(v164 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete))
            {
              v166 = 1;
            }

            else
            {
              v167 = v224;
              sub_10060464C(0);
              sub_1006086B4();
              v164 = *&v167[v223];
              v165 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete;
              v166 = *(v164 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete);
            }

            *(v164 + v165) = 1;

            sub_1005F16D0(v166, &OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete, "didComplete = %{BOOL}d");

            sub_100026AC0(v24, v21);
            v162 = v84;
LABEL_192:
            v163 = v17;
            goto LABEL_193;
          }

          v142 = *(v84 + 16);
          v141 = *(v84 + 24);
          sub_100026AC0(v84, v17);
          v129 = v141 - v142;
          if (__OFSUB__(v141, v142))
          {
            __break(1u);
            goto LABEL_124;
          }
        }

        else if (v86)
        {
          sub_100026AC0(v84, v17);
          LODWORD(v129) = HIDWORD(v84) - v84;
          if (__OFSUB__(HIDWORD(v84), v84))
          {
LABEL_214:
            __break(1u);
            goto LABEL_215;
          }

          v129 = v129;
        }

        else
        {
          sub_100026AC0(v84, v17);
          v129 = BYTE6(v17);
        }

        if (v129 == 16)
        {
          sub_100604368(0, 1079, 0x29286E7572, 0xE500000000000000);
        }

        goto LABEL_150;
      }

      __break(1u);
      goto LABEL_85;
    }

    aBlock = 0xD000000000000057;
    v231 = v220;
    v236[0] = 1091;
    v88._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v88);

    v89 = String.hashValue.getter();

    swift_beginAccess();
    v90 = sub_10046E4E8(v236, v89);
    swift_endAccess();
    if (v90)
    {
      sub_10061F624(&static os_log_type_t.default.getter, "have a paired Pencil path");
    }

    sub_10060491C();
    v91 = v223;
    if (*(*&v33[v223] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) != 1)
    {
      goto LABEL_165;
    }

    v92 = [*&v33[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central] sharedPairingAgent];
    if (!v92)
    {
LABEL_215:
      __break(1u);
      goto LABEL_216;
    }

    v93 = v92;
    v17 = sub_1005FEA1C();

    if (v17 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_71;
      }
    }

    else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_71:
      v216 = 0;
      if ((v17 & 0xC000000000000001) != 0)
      {
        v94 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_208:
          sub_10060847C();
          v216 = 0;
          aBlock = 0xD000000000000057;
          v231 = v220;
          v236[0] = 1159;
          v206._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v206);

          v207 = String.hashValue.getter();

          swift_beginAccess();
          v208 = sub_10046E4E8(v236, v207);
          swift_endAccess();
          if (v208)
          {
            sub_100609A10();
          }

          goto LABEL_186;
        }

        v94 = *(v17 + 32);
      }

      v95 = v94;

      v96 = [v95 identifier];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v97 = UUID.uuidString.getter();
      v99 = v98;
      (*(v229 + 8))(v8, v222);
      v100 = objc_opt_self();
      v101 = [v100 standardUserDefaults];
      v102 = String._bridgeToObjectiveC()();
      v103 = [v101 stringForKey:v102];

      if (!v103)
      {
        goto LABEL_115;
      }

      v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v106 = v105;
      v107 = [v100 standardUserDefaults];
      v108 = [v107 stringForKey:v103];

      if (!v108)
      {

        goto LABEL_115;
      }

      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v109;

      if (v104 == v97 && v106 == v99)
      {

        goto LABEL_86;
      }

LABEL_85:
      v112 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v112)
      {
LABEL_86:
        if (qword_100973B58 != -1)
        {
          swift_once();
        }

        v113 = type metadata accessor for Logger();
        sub_10000C4AC(v113, qword_1009865B0);

        v21 = v224;
        v114 = Logger.logObject.getter();
        LOBYTE(v115) = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v114, v115))
        {
LABEL_110:

          if (v21[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_ioKitBatteryLevel + 8] != 1)
          {
            v132 = (*&v224[v223] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_babyHash);
            v133 = v132[1];
            if (v133)
            {
              if (v46 == *v132 && v133 == v17)
              {
              }

              else
              {
                v134 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v46 = v216;
                v91 = v223;
                v33 = v224;
                if ((v134 & 1) == 0)
                {
                  goto LABEL_165;
                }
              }

              sub_10060464C(0);
              sub_1006086B4();
              v135 = Logger.logObject.getter();
              v136 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v135, v136))
              {
                v137 = swift_slowAlloc();
                *v137 = 0;
                _os_log_impl(&_mh_execute_header, v135, v136, "sendsUIUpdates = false, because we already showed battery status for short-hash path", v137, 2u);
              }

              v138 = v223;
              v33 = v224;
              v139 = *&v224[v223];
              v140 = *(v139 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates);
              *(v139 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) = 0;

              sub_1005F16D0(v140, &OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates, "sendsUIUpdates = %{BOOL}d");

              v91 = v138;
              v46 = v216;
LABEL_165:
              v168 = *&v33[v91];
              v169 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needsHiddenChargeStatusForReplacementB332;
              if (*(v168 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needsHiddenChargeStatusForReplacementB332) == 1)
              {
                v170 = v91;
                sub_10060464C(1);
                v168 = *&v33[v170];
                v169 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needsHiddenChargeStatusForReplacementB332;
              }

              *(v168 + v169) = 0;
              sub_100604B60();
              v171 = sub_1006050AC();
              if (v46)
              {
                goto LABEL_22;
              }

              v89 = v173;
              v17 = v174;
              v175 = v33;
              v33 = v171;
              v24 = v172;
              [v175 startScanning];
              sub_1006054DC();
              v177 = *(*&v224[v223] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_isPaired);
              if (v177 == 2)
              {
                goto LABEL_217;
              }

              v8 = v176;
              if (v177)
              {
                aBlock = 0xD000000000000057;
                v231 = v220;
                v236[0] = 1125;
                v178._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v178);

                v179 = String.hashValue.getter();

                swift_beginAccess();
                v180 = sub_10046E4E8(v236, v179);
                swift_endAccess();
                if (v180)
                {
                  sub_10061F624(&static os_log_type_t.default.getter, "isPaired block");
                }

                sub_10060464C(0);
                sub_100605AEC();
                v216 = 0;
                if ((*(*&v224[v223] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didShowSuccess) & 1) == 0)
                {
                  v193 = v216;
                  sub_10060847C();
                  v216 = v193;
                  v194 = v224;
                  sub_1006086B4();
                  *(*&v194[v223] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didShowSuccess) = 1;
                }

LABEL_186:
                v195 = *&v224[v223];
                v196 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete;
                if (*(v195 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete))
                {
                  v197 = 1;
                }

                else
                {
                  *(v195 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_hideBattery) = 0;
                  v198 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didShowSuccess;
                  if ((*(v195 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didShowSuccess) & 1) == 0)
                  {
                    sub_1006086B4();
                    v198 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didShowSuccess;
                  }

                  v195 = *&v224[v223];
                  *(v195 + v198) = 1;
                  v196 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete;
                  v197 = *(v195 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete);
                }

                *(v195 + v196) = 1;

                sub_1005F16D0(v197, &OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete, "didComplete = %{BOOL}d");

                sub_100026AC0(v33, v24);
                v162 = v89;
                goto LABEL_192;
              }

              aBlock = 0xD000000000000057;
              v231 = v220;
              v236[0] = 1139;
              v181._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v181);

              v182 = String.hashValue.getter();

              swift_beginAccess();
              v183 = sub_10046E4E8(v236, v182);
              swift_endAccess();
              if (v183)
              {
                sub_10061F624(&static os_log_type_t.default.getter, "not-isPaired block");
              }

              [v224 startBatteryScannerForPeripheral:v8];
              sub_100603E50();
              v184 = *&v224[v223];
              v185 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_secondNeedsHiddenChargeStatusForReplacementB332;
              if (*(v184 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_secondNeedsHiddenChargeStatusForReplacementB332) == 1)
              {
                v186 = v224;
                sub_10060464C(1);
                v184 = *&v186[v223];
                v185 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_secondNeedsHiddenChargeStatusForReplacementB332;
              }

              *(v184 + v185) = 0;
              v187 = sub_100609B64()[2];

              if (!v187)
              {
                sub_100608954();
              }

              sub_100605AEC();
              aBlock = 0xD000000000000057;
              v231 = v220;
              v236[0] = 1149;
              v188._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v188);

              v189 = String.hashValue.getter();

              swift_beginAccess();
              v190 = sub_10046E4E8(v236, v189);
              swift_endAccess();
              if (v190)
              {
                sub_10061F624(&static os_log_type_t.default.getter, "not-isPaired block 2");
              }

              sub_10060969C();
              sub_100608954();
              sub_100294008(v33, v24);
              sub_100294008(v89, v17);
              sub_100026AC0(v33, v24);
              v191 = v17 >> 62;
              if ((v17 >> 62) > 1)
              {
                if (v191 != 2)
                {
                  sub_100026AC0(v89, v17);
LABEL_205:
                  sub_1006065A0();
                  sub_100606900();
                  sub_100607E54();
                  goto LABEL_208;
                }

                v205 = *(v89 + 16);
                v204 = *(v89 + 24);
                sub_100026AC0(v89, v17);
                v192 = v204 - v205;
                if (!__OFSUB__(v204, v205))
                {
LABEL_202:
                  if (v192 == 16)
                  {
                    sub_100604368(0, 1154, 0x29286E7572, 0xE500000000000000);
                  }

                  goto LABEL_205;
                }

                __break(1u);
              }

              else if (!v191)
              {
                sub_100026AC0(v89, v17);
                v192 = BYTE6(v17);
                goto LABEL_202;
              }

              sub_100026AC0(v89, v17);
              LODWORD(v192) = HIDWORD(v89) - v89;
              if (__OFSUB__(HIDWORD(v89), v89))
              {
LABEL_216:
                __break(1u);
LABEL_217:
                __break(1u);
                goto LABEL_218;
              }

              v192 = v192;
              goto LABEL_202;
            }
          }

          goto LABEL_115;
        }

        v24 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v24 = 136315394;
        *(v24 + 4) = sub_10000C4E4(v46, v17, &aBlock);
        *(v24 + 6) = 2080;
        v116 = (*&v224[v223] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_babyHash);
        if (v116[1])
        {
          v117 = *v116;
          v118 = v116[1];
LABEL_109:

          v131 = sub_10000C4E4(v117, v118, &aBlock);

          *(v24 + 14) = v131;
          _os_log_impl(&_mh_execute_header, v114, v115, "getHash: %s, sessionState.babyHash: %s", v24, 0x16u);
          swift_arrayDestroy();

          goto LABEL_110;
        }

LABEL_108:
        v118 = 0x8000000100789F30;
        v117 = 0xD000000000000015;
        goto LABEL_109;
      }

LABEL_115:

      v46 = v216;
      v33 = v224;
LABEL_164:
      v91 = v223;
      goto LABEL_165;
    }

    goto LABEL_164;
  }

  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_10000C4AC(v39, qword_1009865B0);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "System monitor not activated. Bailing.", v42, 2u);
  }
}

void sub_1005F93E0(_BYTE *a1)
{
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sbHasStarted;
  if (a1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sbHasStarted] == 1)
  {
    a1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sbHasStarted] = 1;
  }

  else
  {
    v3 = sub_1005F2FF4();
    v4 = a1[v2];
    a1[v2] = v3 & 1;
    if ((v3 & 1) != v4)
    {
      if (qword_100973B58 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_10000C4AC(v5, qword_1009865B0);
      v6 = a1;
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 67109120;
        *(v9 + 4) = a1[v2];

        _os_log_impl(&_mh_execute_header, v7, v8, "sbHasStarted = %{BOOL}d", v9, 8u);
      }

      else
      {
      }
    }
  }

  v10 = [objc_allocWithZone(FBSOrientationObserver) init];
  v11 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_orientationObserver;
  v12 = *&a1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_orientationObserver];
  *&a1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_orientationObserver] = v10;

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  v14 = *&a1[v11];
  if (!v14)
  {
    __break(1u);
    goto LABEL_31;
  }

  v15 = v13;
  v106 = sub_100625724;
  v107 = v13;
  aBlock = _NSConcreteStackBlock;
  v103 = 1107296256;
  v104 = sub_100035F94;
  v105 = &unk_1008EB548;
  v16 = _Block_copy(&aBlock);
  v17 = a1;

  v18 = v14;

  [v18 activeInterfaceOrientationWithCompletion:v16];
  _Block_release(v16);

  v19 = *&a1[v11];
  if (!v19)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v106 = sub_100625724;
  v107 = v15;
  aBlock = _NSConcreteStackBlock;
  v103 = 1107296256;
  v104 = sub_100035F94;
  v105 = &unk_1008EB570;
  v20 = _Block_copy(&aBlock);

  v21 = v19;

  [v21 setHandler:v20];
  _Block_release(v20);

  v22 = swift_allocObject();
  *(v22 + 16) = v17;
  v23 = *&v17[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_powerSourceMonitor];
  v24 = swift_allocObject();
  *(v24 + 16) = sub_10062572C;
  *(v24 + 24) = v22;
  v106 = sub_100625734;
  v107 = v24;
  aBlock = _NSConcreteStackBlock;
  v103 = 1107296256;
  v104 = sub_100035F94;
  v105 = &unk_1008EB5E8;
  v25 = _Block_copy(&aBlock);
  v26 = v17;

  [v23 setPowerSourceFoundHandler:v25];
  _Block_release(v25);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_10062572C;
  *(v27 + 24) = v22;
  v106 = sub_10044EDA8;
  v107 = v27;
  aBlock = _NSConcreteStackBlock;
  v103 = 1107296256;
  v104 = sub_1005FBBA8;
  v105 = &unk_1008EB638;
  v28 = _Block_copy(&aBlock);

  [v23 setPowerSourceChangedHandler:v28];
  _Block_release(v28);
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  v106 = sub_10062573C;
  v107 = v29;
  aBlock = _NSConcreteStackBlock;
  v103 = 1107296256;
  v104 = sub_100035F94;
  v105 = &unk_1008EB688;
  v30 = _Block_copy(&aBlock);
  v31 = v26;

  [v23 setPowerSourceLostHandler:v30];
  _Block_release(v30);
  [v23 activateWithCompletion:0];
  v32 = [objc_allocWithZone(CBCentralManager) initWithDelegate:v31 queue:*&v31[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q]];
  v33 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central;
  v34 = *&v31[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central];
  *&v31[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central] = v32;

  v35 = [objc_allocWithZone(ACCBLEPairingProvider) initWithDelegate:v31];
  v36 = *&v31[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_bleProvider];
  *&v31[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_bleProvider] = v35;

  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_10000C4AC(v37, qword_1009865B0);
  v38 = v31;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 67109120;
    *(v41 + 4) = [*&v31[v33] isScanning];

    _os_log_impl(&_mh_execute_header, v39, v40, "scanning: %{BOOL}d", v41, 8u);
  }

  else
  {

    v39 = v38;
  }

  v42 = v38;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 138412290;
    v47 = *(&v42->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor);
    *(v45 + 4) = v47;
    *v46 = v47;
    v48 = v47;
    _os_log_impl(&_mh_execute_header, v43, v44, "Setting handlers on systemMonitor %@...", v45, 0xCu);
    sub_100005508(v46, &qword_100975400, &qword_1007F65D0);
  }

  v49 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor;
  v50 = *(&v42->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor);
  v51 = swift_allocObject();
  *(v51 + 16) = v42;
  v106 = sub_100625744;
  v107 = v51;
  aBlock = _NSConcreteStackBlock;
  v103 = 1107296256;
  v104 = sub_100011678;
  v105 = &unk_1008EB6D8;
  v52 = _Block_copy(&aBlock);
  v53 = v42;
  v54 = v50;

  [v54 setSystemLockStateChangedHandler:v52];
  _Block_release(v52);

  v55 = *(&v42->isa + v49);
  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v106 = sub_100625768;
  v107 = v56;
  aBlock = _NSConcreteStackBlock;
  v103 = 1107296256;
  v104 = sub_100011678;
  v105 = &unk_1008EB700;
  v57 = _Block_copy(&aBlock);
  v58 = v55;

  [v58 setBluetoothAddressChangedHandler:v57];
  _Block_release(v57);

  v59 = v53;
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    *v62 = 138412802;
    v64 = *(&v42->isa + v49);
    *(v62 + 4) = v64;
    v99 = v63;
    *v63 = v64;
    *(v62 + 12) = 2080;
    v65 = [v64 bluetoothAddressChangedHandler];
    v100 = v61;
    if (v65)
    {
      v66 = v65;
      v67 = swift_allocObject();
      *(v67 + 16) = v66;
      v68 = swift_allocObject();
      *(v68 + 16) = sub_10062605C;
      *(v68 + 24) = v67;
      v69 = sub_100626198;
    }

    else
    {
      v69 = 0;
      v68 = 0;
    }

    aBlock = v69;
    v103 = v68;
    sub_10028088C(&unk_100987180, &qword_10080DAF8);
    v70 = Optional.debugDescription.getter();
    v72 = v71;
    sub_100015D04(v69);
    v73 = sub_10000C4E4(v70, v72, &v101);

    *(v62 + 14) = v73;
    *(v62 + 22) = 2080;
    v74 = [*(&v42->isa + v49) systemLockStateChangedHandler];
    if (v74)
    {
      v75 = v74;
      v76 = swift_allocObject();
      *(v76 + 16) = v75;
      v77 = swift_allocObject();
      *(v77 + 16) = sub_100625780;
      *(v77 + 24) = v76;
      v78 = sub_100597A30;
    }

    else
    {
      v78 = 0;
      v77 = 0;
    }

    aBlock = v78;
    v103 = v77;
    v79 = Optional.debugDescription.getter();
    v81 = v80;
    sub_100015D04(v78);
    v82 = sub_10000C4E4(v79, v81, &v101);

    *(v62 + 24) = v82;
    _os_log_impl(&_mh_execute_header, v60, v100, "Did set handlers on systemMonitor %@. bluetoothAddressChangedHandler: %s, systemLockStateChangedHandler: %s", v62, 0x20u);
    sub_100005508(v99, &qword_100975400, &qword_1007F65D0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v83 = *(&v42->isa + v49);
  v84 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v106 = sub_100625770;
  v107 = v84;
  aBlock = _NSConcreteStackBlock;
  v103 = 1107296256;
  v104 = sub_100011678;
  v105 = &unk_1008EB728;
  v85 = _Block_copy(&aBlock);
  v86 = v83;

  [v86 setScreenOnChangedHandler:v85];
  _Block_release(v85);

  v87 = v59;
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    *v90 = 138412290;
    v92 = *(&v42->isa + v49);
    *(v90 + 4) = v92;
    *v91 = v92;
    v93 = v92;
    _os_log_impl(&_mh_execute_header, v88, v89, "Activating systemMonitor %@", v90, 0xCu);
    sub_100005508(v91, &qword_100975400, &qword_1007F65D0);
  }

  v94 = *(&v42->isa + v49);
  v95 = swift_allocObject();
  *(v95 + 16) = v87;
  v106 = sub_100625778;
  v107 = v95;
  aBlock = _NSConcreteStackBlock;
  v103 = 1107296256;
  v104 = sub_100011678;
  v105 = &unk_1008EB778;
  v96 = _Block_copy(&aBlock);
  v97 = v87;
  v98 = v94;

  [v98 activateWithCompletion:v96];
  _Block_release(v96);
}

uint64_t sub_1005FA1B4(void *a1, char *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v8 = *(v26 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v26);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000C4AC(v12, qword_1009865B0);
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v14, v15, "new orientation: %@", v16, 0xCu);
    sub_100005508(v17, &qword_100975400, &qword_1007F65D0);
  }

  v19 = [v13 orientation];
  v20 = *&a2[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q];
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = v19;
  aBlock[4] = sub_100625858;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008EB890;
  v22 = _Block_copy(aBlock);
  v23 = a2;
  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v27 + 8))(v7, v4);
  (*(v8 + 8))(v11, v26);
}

void sub_1005FA5A8(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_orientation) = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1005F2838(Strong, 1);
  }
}

void sub_1005FA620(void *a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v25 - v6;
  if ([a1 productID] != 332 && objc_msgSend(a1, "productID") != 482 && objc_msgSend(a1, "productID") != 1106)
  {
    return;
  }

  v8 = a2 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_ioKitBatteryLevel;
  v9 = *(a2 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_ioKitBatteryLevel);
  if (*(a2 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_ioKitBatteryLevel + 8))
  {
    v10 = -1.0;
  }

  else
  {
    v10 = *(a2 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_ioKitBatteryLevel);
  }

  [a1 chargeLevel];
  *v8 = fabs(v11);
  *(v8 + 8) = 0;
  sub_1005F339C();
  v12 = [a1 productID];
  if (v12 > 545)
  {
    if (v12 != 1106)
    {
      if (v12 == 546)
      {
        v13 = 2;
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    v13 = 4;
  }

  else
  {
    if (v12 != 332)
    {
      if (v12 == 482)
      {
        v13 = 3;
        goto LABEL_17;
      }

LABEL_14:
      v13 = 0;
      goto LABEL_17;
    }

    v13 = 1;
  }

LABEL_17:
  v14 = [a1 sourceID];
  v15 = *(a2 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_powerSourceID;
  *v15 = v14;
  *(v15 + 8) = 0;
  sub_1005F7090();
  if ((*(v8 + 8) & 1) == 0)
  {
    v16 = *v8;
    if ((v10 < 0.0 || vabdd_f64(v10, v16) > 0.005) && ([a1 productID] == 332 || objc_msgSend(a1, "productID") == 482 || objc_msgSend(a1, "productID") == 1106) && (objc_msgSend(a1, "charging") & 1) == 0 && (fabs(v16 + -0.2) <= 0.005 || fabs(v16 + -0.1) <= 0.005))
    {
      if (qword_100973B58 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_10000C4AC(v17, qword_1009865B0);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Reached low battery pill threshold for connected Pencil", v20, 2u);
      }

      v21 = type metadata accessor for TaskPriority();
      (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for MainActor();

      v23 = static MainActor.shared.getter();
      v24 = swift_allocObject();
      v24[2] = v23;
      v24[3] = &protocol witness table for MainActor;
      v24[4] = v22;
      v24[5] = v13;
      v24[6] = v14;

      sub_1002B3398(0, 0, v7, &unk_10080DB08, v24);
    }
  }
}

uint64_t sub_1005FAA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  type metadata accessor for MainActor();
  v6[9] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[10] = v8;
  v6[11] = v7;

  return _swift_task_switch(sub_1005FAAAC, v8, v7);
}

uint64_t sub_1005FAAAC()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 104) = v3;
    *v3 = v0;
    v3[1] = sub_1005FABBC;
    v5 = *(v0 + 56);
    v4 = *(v0 + 64);

    return sub_1005FAD70(v5, v4, 0);
  }

  else
  {
    v7 = *(v0 + 72);

    **(v0 + 40) = *(v0 + 96) == 0;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1005FABBC()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v7 = *v0;

  v4 = *(v1 + 88);
  v5 = *(v1 + 80);

  return _swift_task_switch(sub_1005FACFC, v5, v4);
}

uint64_t sub_1005FACFC()
{
  v1 = *(v0 + 72);

  **(v0 + 40) = *(v0 + 96) == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1005FAD70(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 136) = a2;
  *(v4 + 144) = v3;
  *(v4 + 296) = a3;
  *(v4 + 128) = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  *(v4 + 152) = v5;
  v6 = *(v5 - 8);
  *(v4 + 160) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 168) = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  *(v4 + 176) = v8;
  v9 = *(v8 - 8);
  *(v4 + 184) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 192) = swift_task_alloc();
  v11 = type metadata accessor for DispatchTimeInterval();
  *(v4 + 200) = v11;
  v12 = *(v11 - 8);
  *(v4 + 208) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 216) = swift_task_alloc();
  v14 = type metadata accessor for DispatchTime();
  *(v4 + 224) = v14;
  v15 = *(v14 - 8);
  *(v4 + 232) = v15;
  v16 = *(v15 + 64) + 15;
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_1005FAF58, 0, 0);
}

uint64_t sub_1005FAF58()
{
  v18 = v0;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 256) = sub_10000C4AC(v1, qword_1009865B0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 296);
    v5 = *(v0 + 128);
    v6 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = sub_10060E6AC(v5);
    v9 = sub_10000C4E4(v7, v8, &v17);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    if (v4)
    {
      v10 = 0x8000000100799920;
      v11 = 0xD000000000000012;
    }

    else
    {
      *(v0 + 120) = *(v0 + 136);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = v12;
    }

    v13 = sub_10000C4E4(v11, v10, &v17);

    *(v6 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "showLowBatteryPill [type: %s, powerSourceID: %s]", v6, 0x16u);
    swift_arrayDestroy();
  }

  v14 = swift_task_alloc();
  *(v0 + 264) = v14;
  *v14 = v0;
  v14[1] = sub_1005FB190;
  v15 = *(v0 + 144);

  return sub_10060E9B0();
}

uint64_t sub_1005FB190(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 264);
  v5 = *v1;

  if (a1)
  {
    v6 = swift_task_alloc();
    v3[34] = v6;
    *v6 = v5;
    v6[1] = sub_1005FB334;
    v7 = v3[18];

    return sub_10060F9EC();
  }

  else
  {
    v10 = v3[30];
    v9 = v3[31];
    v11 = v3[27];
    v12 = v3[24];
    v13 = v3[21];

    v14 = *(v5 + 8);

    return v14();
  }
}

uint64_t sub_1005FB334(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 272);
  v6 = *v2;
  *(v3 + 280) = a1;
  *(v3 + 288) = a2;

  return _swift_task_switch(sub_1005FB434, 0, 0);
}

uint64_t sub_1005FB434()
{
  if (v0[35] && v0[36])
  {
    v48 = v0[36];
    v49 = v0[35];
    v1 = v0[16];
    v2 = *(v0 + 296);
    swift_unknownObjectRetain();
    v3 = 0;
    if (v1 == 4 && (v2 & 1) == 0)
    {
      if (SFIsPencilHapticsEnabled())
      {
        v4 = v0[17];
        v5 = objc_opt_self();
        v6 = swift_allocObject();
        *(v6 + 16) = v4;
        v7 = swift_allocObject();
        *(v7 + 16) = sub_100624FFC;
        *(v7 + 24) = v6;
        v0[12] = sub_10044EDA8;
        v0[13] = v7;
        v0[8] = _NSConcreteStackBlock;
        v0[9] = 1107296256;
        v0[10] = sub_100610AC0;
        v0[11] = &unk_1008EAD28;
        v8 = _Block_copy(v0 + 8);
        v9 = v0[13];

        v10 = [v5 build:v8];
        _Block_release(v8);
        LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

        if (v8)
        {
          __break(1u);
          return result;
        }

        BKSHIDServicesRequestHapticFeedback();
        v3 = sub_100624FFC;
      }

      else
      {
        v19 = v0[32];
        v10 = Logger.logObject.getter();
        v20 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v10, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v10, v20, "Not playing Pencil haptics because the default is off", v21, 2u);
        }

        v3 = 0;
      }
    }

    v47 = v3;
    v23 = v0[30];
    v22 = v0[31];
    v24 = v0[28];
    v40 = v0[29];
    v25 = v0[26];
    v26 = v0[27];
    v27 = v0[25];
    v38 = v0[24];
    v45 = v0[23];
    v46 = v0[22];
    v44 = v0[20];
    v28 = v0[18];
    v42 = v0[21];
    v43 = v0[19];
    [v48 acquireHUDTransaction];
    sub_1005F2838(v49, 0);
    [v48 showChargingStatus];
    sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
    v39 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    *v26 = 5;
    (*(v25 + 104))(v26, enum case for DispatchTimeInterval.seconds(_:), v27);
    + infix(_:_:)();
    (*(v25 + 8))(v26, v27);
    v41 = *(v40 + 8);
    v41(v23, v24);
    v29 = swift_allocObject();
    *(v29 + 16) = v48;
    v0[6] = sub_100626060;
    v0[7] = v29;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100011678;
    v0[5] = &unk_1008EACB0;
    v30 = _Block_copy(v0 + 2);
    swift_unknownObjectRetain();
    static DispatchQoS.unspecified.getter();
    v0[14] = _swiftEmptyArrayStorage;
    sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();

    _Block_release(v30);
    swift_unknownObjectRelease_n();
    (*(v44 + 8))(v42, v43);
    (*(v45 + 8))(v38, v46);
    v41(v22, v24);
    v31 = v0[7];

    sub_100015D04(v47);
  }

  else
  {
    v12 = v0[32];
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    v15 = os_log_type_enabled(v13, v14);
    v17 = v0[35];
    v16 = v0[36];
    if (v15)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to get HUD connection to show low battery pill", v18, 2u);
    }

    swift_unknownObjectRelease();
  }

  v33 = v0[30];
  v32 = v0[31];
  v34 = v0[27];
  v35 = v0[24];
  v36 = v0[21];

  v37 = v0[1];

  return v37();
}

uint64_t sub_1005FBA48(void *a1, uint64_t (*a2)(id))
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_1009865B0);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Found power source: %@", v8, 0xCu);
    sub_100005508(v9, &qword_100975400, &qword_1007F65D0);
  }

  return a2(v5);
}

void sub_1005FBBB0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_1005FBC2C(void *a1, uint64_t a2)
{
  if ([a1 productID] == 332 || objc_msgSend(a1, "productID") == 482 || objc_msgSend(a1, "productID") == 1106)
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_1009865B0);
    v5 = a1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, v7, "Lost power source: %@", v8, 0xCu);
      sub_100005508(v9, &qword_100975400, &qword_1007F65D0);
    }

    v11 = a2 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_ioKitBatteryLevel;
    *v11 = 0;
    *(v11 + 8) = 1;
    sub_1005F339C();
    v12 = *(a2 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_powerSourceID;
    *v12 = 0;
    *(v12 + 8) = 1;
  }
}

void sub_1005FBDEC(uint64_t a1, const char *a2)
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000C4AC(v3, qword_1009865B0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, a2, v6, 2u);
  }

  sub_1005F7090();
}

void sub_1005FBED8()
{
  v0 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v40 - v2;
  v4 = type metadata accessor for DefaultStringInterpolation.PrintUtilsHexFormat();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v46 = v5;
    v11 = [*(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor) bluetoothAddressData];
    if (v11)
    {
      v12 = v11;
      v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0xF000000000000000;
    }

    v47 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
    v16 = (*&v10[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sentBluetoothAddress);
    v18 = *v16;
    v17 = v16[1];
    sub_1002A9924(*v16, v17);
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    v20 = sub_10000C4AC(v19, qword_1009865B0);
    sub_1002A9924(v18, v17);
    sub_1002A9924(v13, v15);
    v43 = v20;
    v21 = Logger.logObject.getter();
    LODWORD(v20) = static os_log_type_t.default.getter();
    sub_10028BCC0(v13, v15);
    sub_10028BCC0(v18, v17);
    v44 = v20;
    v22 = os_log_type_enabled(v21, v20);
    v23 = v17 >> 60;
    if (v22)
    {
      v45 = v17 >> 60;
      v41 = v3;
      v24 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v52 = v40;
      *v24 = 136315394;
      v42 = v13;
      if (v15 >> 60 == 15)
      {
        v25 = 0x8000000100789F30;
        v26 = 0xD000000000000015;
      }

      else
      {
        v50 = 0;
        v51 = 0xE000000000000000;
        v48 = v13;
        v49 = v15;
        v27 = v46;
        (*(v46 + 104))(v8, enum case for DefaultStringInterpolation.PrintUtilsHexFormat.hex(_:), v4);
        sub_100423B84();
        DefaultStringInterpolation.appendInterpolation<A>(_:_:separator:)();
        (*(v27 + 8))(v8, v4);
        v26 = v50;
        v25 = v51;
      }

      v28 = sub_10000C4E4(v26, v25, &v52);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      if (v45 <= 0xE)
      {
        v50 = 0;
        v51 = 0xE000000000000000;
        v48 = v18;
        v49 = v17;
        v31 = v46;
        (*(v46 + 104))(v8, enum case for DefaultStringInterpolation.PrintUtilsHexFormat.hex(_:), v4);
        sub_100423B84();
        DefaultStringInterpolation.appendInterpolation<A>(_:_:separator:)();
        (*(v31 + 8))(v8, v4);
        v30 = v50;
        v29 = v51;
      }

      else
      {
        v29 = 0x8000000100789F30;
        v30 = 0xD000000000000015;
      }

      v32 = sub_10000C4E4(v30, v29, &v52);

      *(v24 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v21, v44, "bluetoothAddressChanged %s, sentBluetoothAddress: %s", v24, 0x16u);
      swift_arrayDestroy();

      v3 = v41;
      v13 = v42;
      v23 = v45;
    }

    else
    {
    }

    v33 = v47;
    if (*(*&v10[v47] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__accessoryUID + 8))
    {
      if (v23 >= 0xF)
      {
        if (v15 >> 60 == 15)
        {
LABEL_27:

          return;
        }

        sub_1005F7090();
LABEL_26:
        sub_10028BCC0(v13, v15);
        goto LABEL_27;
      }
    }

    else if (v23 >= 0xF)
    {
      goto LABEL_26;
    }

    sub_1002A9924(v18, v17);
    sub_1002A9924(v18, v17);
    sub_1002A9924(v13, v15);
    if (v15 >> 60 == 15)
    {
      sub_10028BCC0(v18, v17);
      sub_10028BCC0(v13, v15);
    }

    else
    {
      v34 = sub_100331508(v18, v17, v13, v15);
      sub_10028BCC0(v13, v15);
      sub_10028BCC0(v18, v17);
      if (v34)
      {
LABEL_25:
        sub_10028BCC0(v18, v17);
        sub_10028BCC0(v18, v17);
        goto LABEL_26;
      }
    }

    v35 = *&v10[v33];
    if (*(v35 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete))
    {
      goto LABEL_25;
    }

    *(v35 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needToResetFromBTAddrRotation) = 1;
    if (*(v35 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_oobd + 8) >> 60 == 15)
    {
      sub_10028BCC0(v18, v17);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v36, v37, "Waiting for OOBD before replayAttachEvent", v38, 2u);
      }

      sub_10028BCC0(v13, v15);
      sub_10028BCC0(v18, v17);
    }

    else
    {
      v39 = type metadata accessor for UUID();
      (*(*(v39 - 8) + 56))(v3, 1, 1, v39);
      sub_1005FCB7C(v3, 1);

      sub_10028BCC0(v18, v17);
      sub_10028BCC0(v18, v17);
      sub_10028BCC0(v13, v15);
      sub_100005508(v3, &unk_100976120, &qword_1007F9260);
    }
  }
}

void sub_1005FC5C0()
{
  v0 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v12 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_1009865B0);
    v7 = v5;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = [*(&v7->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor) screenOn];

      _os_log_impl(&_mh_execute_header, v8, v9, "screenOnChangedHandler. on: %{BOOL}d", v10, 8u);
    }

    else
    {

      v8 = v7;
    }

    if ([*(&v7->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor) screenOn])
    {
      sub_1005F7090();
    }

    else
    {
      v11 = type metadata accessor for UUID();
      (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
      sub_1005FCB7C(v3, 0);

      sub_100005508(v3, &unk_100976120, &qword_1007F9260);
    }
  }
}

void sub_1005FC7F4(_BYTE *a1)
{
  a1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitorActivated] = 1;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009865B0);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 67109378;
    v8 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor;
    v9 = [*(&v3->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor) systemLockState] == 1 || objc_msgSend(*(&v3->isa + v8), "systemLockState") == 4;
    *(v6 + 4) = v9;

    *(v6 + 8) = 2112;
    v10 = *(&v3->isa + v8);
    *(v6 + 10) = v10;
    *v7 = v10;
    v11 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "System monitor activated - Authed? %{BOOL}d - (%@)", v6, 0x12u);
    sub_100005508(v7, &qword_100975400, &qword_1007F65D0);
  }

  else
  {

    v4 = v3;
  }

  sub_1005F7090();
}

void sub_1005FC9F0()
{
  sub_1004EC778(319, &qword_100975F70, &type metadata accessor for UUID);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1004EC778(319, &qword_10097DB80, &type metadata accessor for Date);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1005FCB7C(unint64_t a1, int a2)
{
  v3 = v2;
  v135 = a2;
  v138 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v131 = *(v4 - 8);
  v132 = v4;
  v5 = *(v131 + 64);
  __chkstk_darwin(v4);
  v129 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for DispatchQoS();
  v128 = *(v130 - 8);
  v7 = *(v128 + 64);
  __chkstk_darwin(v130);
  v127 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v133 = &v121 - v15;
  v16 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v121 - v22;
  __chkstk_darwin(v21);
  v25 = &v121 - v24;
  v125 = objc_opt_self();
  v26 = [v125 standardUserDefaults];
  v27 = sub_1005607A0();

  LODWORD(v136) = v27;
  if (v27)
  {
    LODWORD(v126) = 0;
  }

  else
  {
    LODWORD(v126) = *(*&v3[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete);
  }

  v134 = v14;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v29 = sub_10000C4AC(v28, qword_1009865B0);
  sub_10000FF90(v138, v25, &unk_100976120, &qword_1007F9260);
  v30 = v3;
  v137 = v29;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v124 = v32;
    v33 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    aBlock[0] = v123;
    *v33 = 67110402;
    v122 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
    *(v33 + 4) = *(*&v30[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete);

    *(v33 + 8) = 1024;
    *(v33 + 10) = v136 & 1;
    *(v33 + 14) = 1024;
    *(v33 + 16) = v126;
    *(v33 + 20) = 1024;
    *(v33 + 22) = v135 & 1;
    *(v33 + 26) = 2080;
    sub_10000FF90(v25, v23, &unk_100976120, &qword_1007F9260);
    if ((*(v10 + 48))(v23, 1, v9) == 1)
    {
      sub_100005508(v23, &unk_100976120, &qword_1007F9260);
      v34 = 0x8000000100799A70;
      v35 = 0xD000000000000028;
    }

    else
    {
      v35 = UUID.description.getter();
      v34 = v36;
      (*(v10 + 8))(v23, v9);
    }

    sub_100005508(v25, &unk_100976120, &qword_1007F9260);
    v37 = sub_10000C4E4(v35, v34, aBlock);

    *(v33 + 28) = v37;
    *(v33 + 36) = 2080;
    v38 = v133;
    (*(v10 + 16))(v133, *&v30[v122] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_uuid, v9);
    sub_10000D4DC(&qword_100978CE0, &type metadata accessor for UUID);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;
    (*(v10 + 8))(v38, v9);
    v42 = sub_10000C4E4(v39, v41, aBlock);

    *(v33 + 38) = v42;
    _os_log_impl(&_mh_execute_header, v31, v124, "resetState. didComplete: %{BOOL}d, neededEduUI: %{BOOL}d, didCompleteInitialPair: %{BOOL}d, replayAttachEvent: %{BOOL}d, canceling id: %s, currentID: %s", v33, 0x2Eu);
    swift_arrayDestroy();
  }

  else
  {

    sub_100005508(v25, &unk_100976120, &qword_1007F9260);
  }

  sub_10000FF90(v138, v20, &unk_100976120, &qword_1007F9260);
  v43 = (*(v10 + 48))(v20, 1, v9);
  v44 = v134;
  if (v43 == 1)
  {
    sub_100005508(v20, &unk_100976120, &qword_1007F9260);
LABEL_16:
    v48 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
    v49 = *&v30[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState];
    v50 = *(v49 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_peerRequestingPairing);
    if (v50 && (*(v49 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_peerPairingType + 8) & 1) == 0 && (*(v49 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_handledPairRequest) & 1) == 0)
    {
      v51 = *(v49 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_peerPairingType);
      v52 = v50;
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&_mh_execute_header, v53, v54, "Reject unhandled pairing request", v55, 2u);
      }

      v56 = [*&v30[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central] sharedPairingAgent];
      if (!v56)
      {
        __break(1u);
        goto LABEL_48;
      }

      v57 = v56;
      v58 = v52;
      sub_10027FD18(_swiftEmptyArrayStorage);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v57 respondToPairingRequest:v58 type:v51 accept:0 data:isa];
    }

    if ((v136 & 1) == 0)
    {
      v60 = [v125 standardUserDefaults];
      sub_100561364(0);
    }

    v61 = *&v30[v48];
    if (!*(v61 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__accessoryUID + 8))
    {
      goto LABEL_32;
    }

    v62 = *(v61 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__blePairingUUID + 8);
    if (v62 >> 60 == 15 || *(v61 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needToStopBLEUpdates) != 1)
    {
      goto LABEL_32;
    }

    v63 = *(v61 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__accessoryUID);
    v64 = *(v61 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__blePairingUUID);
    v65 = *(v61 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__accessoryUID + 8);

    sub_1002A9924(v64, v62);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v66, v67, "stopBLEUpdates in resetState.", v68, 2u);
    }

    v69 = *&v30[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_bleProvider];
    if (v69)
    {
      v70 = v69;
      v71 = String._bridgeToObjectiveC()();

      v72 = Data._bridgeToObjectiveC()().super.isa;
      [v70 stopBLEUpdates:v71 blePairingUUID:v72];

      sub_10028BCC0(v64, v62);
      v61 = *&v30[v48];
LABEL_32:
      v73 = *(v61 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_findMyUnpairAlert);
      if (v73)
      {
        v74 = v73;
        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          *v77 = 0;
          _os_log_impl(&_mh_execute_header, v75, v76, "Dismiss FindMy unpair alert in resetState", v77, 2u);
        }

        if (*(*&v30[v48] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral))
        {
          [*&v30[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central] cancelPeripheralConnection:?];
        }

        [v74 invalidate];
        sub_1005FDBD8(0);

        v78 = *&v30[v48];
      }

      sub_1005F1F48();

      [v30 stopScanning];
      [v30 stopBatteryScanner];
      v79 = *&v30[v48];
      v80 = *(v79 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__accessoryUID + 8);
      v126 = *(v79 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__accessoryUID);
      v82 = *(v79 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__blePairingUUID);
      v81 = *(v79 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__blePairingUUID + 8);
      v83 = *(v79 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType);
      v84 = *(v79 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType + 8);
      v86 = *(v79 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_devicePencilBtTag);
      v85 = *(v79 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_devicePencilBtTag + 8);
      v87 = (v79 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_devicePencilCode);
      v134 = *v87;
      LODWORD(v133) = *(v87 + 8);
      v88 = type metadata accessor for SDB332SetupAgentSessionState(0);
      v89 = *(v88 + 48);
      v90 = *(v88 + 52);
      v91 = swift_allocObject();

      v136 = v82;
      sub_1002A9924(v82, v81);

      sub_1005F2434();
      v92 = *&v30[v48];
      *&v30[v48] = v91;

      v93 = *&v30[v48] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType;
      *v93 = v83;
      *(v93 + 8) = v84;
      v94 = (v91 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_devicePencilBtTag);
      v95 = *(v91 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_devicePencilBtTag + 8);
      *v94 = v86;
      v94[1] = v85;

      v96 = *&v30[v48];
      v97 = v96 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_devicePencilCode;
      *v97 = v134;
      *(v97 + 8) = v133;
      v138 = v81;
      if (v135)
      {
        v98 = (v96 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__accessoryUID);
        v99 = v98[1];
        *v98 = v126;
        v98[1] = v80;

        v100 = (*&v30[v48] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__blePairingUUID);
        v101 = *v100;
        v102 = v100[1];
        v103 = v136;
        *v100 = v136;
        v100[1] = v81;
        sub_1002A9924(v103, v81);

        sub_10028BCC0(v101, v102);

        [objc_opt_self() b332BTAddressRotationDelay];
        v105 = v104;
        v106 = Logger.logObject.getter();
        v107 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v106, v107))
        {
          v108 = swift_slowAlloc();
          *v108 = 134217984;
          *(v108 + 4) = v105;
          _os_log_impl(&_mh_execute_header, v106, v107, "Sleeping for %f sec due to address rotation.", v108, 0xCu);
        }

        [objc_opt_self() sleepForTimeInterval:v105];
        [v30 resetUIUpdatesFlagWithUndimScreen:0];
      }

      else
      {

        sub_1005FDE80();
        v109 = [objc_allocWithZone(CBCentralManager) initWithDelegate:v30 queue:*&v30[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q]];
        v110 = *&v30[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central];
        *&v30[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central] = v109;

        v103 = v136;
      }

      v111 = *&v30[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q];
      v112 = swift_allocObject();
      *(v112 + 16) = v30;
      aBlock[4] = sub_1006252EC;
      aBlock[5] = v112;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100011678;
      aBlock[3] = &unk_1008EB048;
      v113 = _Block_copy(aBlock);
      v114 = v30;
      v115 = v127;
      static DispatchQoS.unspecified.getter();
      v139 = _swiftEmptyArrayStorage;
      sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
      sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
      sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
      v116 = v129;
      v117 = v132;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v113);
      sub_10028BCC0(v103, v138);
      (*(v131 + 8))(v116, v117);
      (*(v128 + 8))(v115, v130);

      return;
    }

LABEL_48:
    __break(1u);
    return;
  }

  (*(v10 + 32))(v134, v20, v9);
  v45 = v133;
  (*(v10 + 16))(v133, *&v30[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_uuid, v9);
  sub_10000D4DC(&qword_1009761E0, &type metadata accessor for UUID);
  v46 = dispatch thunk of static Equatable.== infix(_:_:)();
  v47 = *(v10 + 8);
  v47(v45, v9);
  if (v46)
  {
    v47(v44, v9);
    goto LABEL_16;
  }

  v118 = Logger.logObject.getter();
  v119 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v118, v119))
  {
    v120 = swift_slowAlloc();
    *v120 = 0;
    _os_log_impl(&_mh_execute_header, v118, v119, "ignore resetState", v120, 2u);
  }

  v47(v44, v9);
}

void sub_1005FDBD8(char a1)
{
  if (*(*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) == 1)
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_1009865B0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "dismissSBUI", v6, 2u);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      aBlock[4] = sub_100612F5C;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1004502D4;
      aBlock[3] = &unk_1008EA710;
      v9 = _Block_copy(aBlock);
      v10 = [v8 remoteObjectProxyWithErrorHandler:v9];
      _Block_release(v9);
      [v10 dismissUIAnimated:a1 & 1];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000C4AC(v11, qword_1009865B0);
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v12, "ignore dismissSBUI, UI updates disabled for current session state", v13, 2u);
    }
  }
}

void sub_1005FDE80()
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_1009865B0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "releaseHUDTransaction", v3, 2u);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    aBlock[4] = sub_100612F50;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1004502D4;
    aBlock[3] = &unk_1008EA850;
    v6 = _Block_copy(aBlock);
    v7 = [v5 remoteObjectProxyWithErrorHandler:v6];
    _Block_release(v6);
    [v7 releaseHUDTransaction];

    swift_unknownObjectRelease();
  }

  else
  {
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "no UI service to stop", v9, 2u);
    }
  }
}

id sub_1005FE0C0()
{
  v1 = v0;
  v2 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v50 - v4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v61 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DispatchQoS();
  v60 = *(v62 - 8);
  v10 = *(v60 + 64);
  __chkstk_darwin(v62);
  v59 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DispatchTime();
  v57 = *(v58 - 8);
  v12 = *(v57 + 64);
  v13 = __chkstk_darwin(v58);
  v55 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v56 = &v50 - v15;
  v68 = type metadata accessor for UUID();
  v63 = *(v68 - 8);
  v16 = *(v63 + 64);
  __chkstk_darwin(v68);
  v66 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973B58 != -1)
  {
LABEL_20:
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000C4AC(v18, qword_1009865B0);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "raceyInternalUnpairPreviousB332s...", v21, 2u);
  }

  v22 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q);
  v23 = [objc_allocWithZone(CBCentralManager) initWithDelegate:0 queue:v22];
  v67 = [objc_allocWithZone(SPPairingManager) init];
  v24 = v23;
  result = [v24 sharedPairingAgent];
  if (result)
  {
    v26 = result;
    v51 = v7;
    v52 = v6;
    v53 = v5;
    v6 = sub_1005FEA1C();

    v54 = v1;
    v50 = v22;
    if (v6 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
      if (v7)
      {
LABEL_7:
        v27 = 0;
        v1 = v6 & 0xFFFFFFFFFFFFFF8;
        v64 = &v73;
        v65 = (v63 + 8);
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v27 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_19;
            }

            v28 = *(v6 + 8 * v27 + 32);
          }

          v29 = v28;
          v30 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            __break(1u);
LABEL_19:
            __break(1u);
            goto LABEL_20;
          }

          result = [v24 sharedPairingAgent];
          if (!result)
          {
            break;
          }

          v31 = result;
          v32 = v29;
          [v31 unpairPeer:v32];

          v33 = String._bridgeToObjectiveC()();
          v5 = [(objc_class *)v32 hasTag:v33];

          if (v5)
          {
            v34 = [(objc_class *)v32 identifier];

            v35 = v66;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            isa = UUID._bridgeToObjectiveC()().super.isa;
            (*v65)(v35, v68);
            v36 = swift_allocObject();
            *(v36 + 16) = v32;
            v75 = sub_1006252DC;
            v76 = v36;
            aBlock = _NSConcreteStackBlock;
            v72 = 1107296256;
            v73 = sub_1005CC610;
            v74 = &unk_1008EAFA8;
            v5 = _Block_copy(&aBlock);
            v37 = v32;

            v38 = isa;
            [v67 unpairUUID:isa force:1 completion:v5];

            _Block_release(v5);
            v32 = v38;
          }

          else
          {
          }

          ++v27;
          if (v30 == v7)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_24;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_7;
      }
    }

LABEL_22:

    [objc_opt_self() sleepForTimeInterval:2.0];
    v39 = v55;
    static DispatchTime.now()();
    v40 = v56;
    + infix(_:_:)();
    isa = *(v57 + 8);
    v41 = v58;
    (isa)(v39, v58);
    v42 = swift_allocObject();
    *(v42 + 16) = v24;
    v75 = sub_1006252E4;
    v76 = v42;
    aBlock = _NSConcreteStackBlock;
    v72 = 1107296256;
    v73 = sub_100011678;
    v74 = &unk_1008EAFF8;
    v43 = _Block_copy(&aBlock);
    v66 = v24;
    v44 = v59;
    static DispatchQoS.unspecified.getter();
    v70 = _swiftEmptyArrayStorage;
    sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
    v45 = v61;
    v46 = v52;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v43);
    (*(v51 + 8))(v45, v46);
    (*(v60 + 8))(v44, v62);
    (isa)(v40, v41);

    v47 = v54;
    v48 = v54 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_ioKitBatteryLevel;
    *v48 = 0;
    *(v48 + 8) = 1;
    sub_1005F339C();
    *(*(v47 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_lastSentBatteryPercentage) = 0;
    v49 = v53;
    (*(v63 + 56))(v53, 1, 1, v68);
    sub_1005FCB7C(v49, 0);

    return sub_100005508(v49, &unk_100976120, &qword_1007F9260);
  }

LABEL_24:
  __break(1u);
  return result;
}

id sub_1005FEA1C()
{
  result = [v0 retrievePairedPeers];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = sub_100469018(v3);

  v41 = _swiftEmptyArrayStorage;
  v5 = (v4 & 0xFFFFFFFFFFFFFF8);
  if (v4 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (i)
    {
      v7 = 0;
      v8 = _swiftEmptyArrayStorage;
      do
      {
        v9 = v7;
        while (1)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v9 >= v5[2])
            {
              goto LABEL_41;
            }

            v10 = *(v4 + 8 * v9 + 32);
          }

          v11 = v10;
          v7 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v9;
          if (v7 == i)
          {
            goto LABEL_20;
          }
        }

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v12 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v8 = v41;
      }

      while (v7 != i);
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

LABEL_20:

    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000C4AC(v13, qword_1009865B0);

    v4 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v4, v14))
    {
      v15 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v41 = v5;
      *v15 = 136315138;
      sub_1000276B4(0, &qword_100987090, CBPeripheral_ptr);
      v16 = Array.description.getter();
      v18 = sub_10000C4E4(v16, v17, &v41);

      *(v15 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v4, v14, "pairedPeripherals: %s", v15, 0xCu);
      sub_10000C60C(v5);
    }

    v41 = _swiftEmptyArrayStorage;
    if (v8 >> 62)
    {
      break;
    }

    v19 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_46;
    }

LABEL_26:
    v20 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v20 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v21 = *(v8 + 8 * v20 + 32);
      }

      v22 = v21;
      v5 = (v20 + 1);
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v23 = String._bridgeToObjectiveC()();
      v24 = [v22 hasTag:v23];

      if (v24)
      {
        goto LABEL_35;
      }

      v25 = String._bridgeToObjectiveC()();
      v26 = [v22 hasTag:v25];

      if (v26 & 1) != 0 || (v27 = String._bridgeToObjectiveC()(), v28 = [v22 hasTag:v27], v27, (v28) || (v4 = String._bridgeToObjectiveC()(), v29 = objc_msgSend(v22, "hasTag:", v4), v4, (v29))
      {
LABEL_35:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v4 = *(v41 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v20;
      if (v5 == v19)
      {
        v30 = v41;
        goto LABEL_47;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

  v19 = _CocoaArrayWrapper.endIndex.getter();
  if (v19)
  {
    goto LABEL_26;
  }

LABEL_46:
  v30 = _swiftEmptyArrayStorage;
LABEL_47:

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v41 = v34;
    *v33 = 136315138;
    sub_1000276B4(0, &qword_100987090, CBPeripheral_ptr);
    v35 = Array.description.getter();
    v37 = sub_10000C4E4(v35, v36, &v41);

    *(v33 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v31, v32, "pairedPencils: %s", v33, 0xCu);
    sub_10000C60C(v34);
  }

  if (v30 < 0 || (v30 & 0x4000000000000000) != 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter() >= 2)
    {
LABEL_52:
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "!!! Multiple paired Pencils", v40, 2u);
      }
    }
  }

  else if (*(v30 + 16) >= 2)
  {
    goto LABEL_52;
  }

  return v30;
}

void sub_1005FF058(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_1009865B0);
    swift_errorRetain();
    v10 = a2;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v13 = 136315394;
      v15 = [v10 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000D4DC(&qword_100978CE0, &type metadata accessor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v5 + 8))(v8, v4);
      v19 = sub_10000C4E4(v16, v18, &v22);

      *(v13 + 4) = v19;
      *(v13 + 12) = 2112;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v20;
      *v14 = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to FindMy-unpair Pencil with ID %s: %@", v13, 0x16u);
      sub_100005508(v14, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v21);
    }

    else
    {
    }
  }
}

id sub_1005FF374(void *a1)
{
  sub_10028088C(&qword_100974EA0, &qword_1007FBA30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007F5670;
  result = [a1 sharedPairingAgent];
  if (result)
  {
    v4 = result;
    v5 = sub_1005FEA1C();

    *(v2 + 56) = sub_10028088C(&qword_100987178, &qword_10080DAF0);
    *(v2 + 32) = v5;
    print(_:separator:terminator:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005FF444()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_100976C00, &unk_1007F9D70);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v45 - v4;
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v45 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  result = __chkstk_darwin(v17);
  if (!*(*&v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sessionTimeout))
  {
    v48 = v20;
    v52 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
    v53 = v6;
    v50 = v5;
    v54 = &v45 - v19;
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000C4AC(v21, qword_1009865B0);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    v24 = os_log_type_enabled(v22, v23);
    v51 = v13;
    if (v24)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "- startSessionTimeout", v25, 2u);
      v13 = v51;
    }

    v49 = v15;

    v26 = v52;
    v27 = *(v15 + 16);
    v27(v54, *&v1[v52] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_uuid, v14);
    static DispatchTime.now()();
    if (qword_100973B60 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for DispatchTimeInterval();
    sub_10000C4AC(v28, qword_1009865C8);
    + infix(_:_:)();
    v29 = v53;
    v46 = *(v7 + 8);
    v47 = v7 + 8;
    v46(v11, v53);
    v30 = *&v1[v26];
    (*(v7 + 16))(v11, v13, v29);
    v31 = v50;
    (*(v7 + 56))(v50, 1, 1, v29);
    v45 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q];
    v32 = v48;
    v27(v48, v54, v14);
    v33 = v49;
    v34 = (*(v49 + 80) + 24) & ~*(v49 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = v1;
    (*(v33 + 32))(v35 + v34, v32, v14);
    v36 = type metadata accessor for PushableTimer(0);
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    swift_allocObject();

    v39 = v45;
    v40 = v1;
    v41 = sub_1002F1D34(v11, v31, v39, sub_10062524C, v35);

    v42 = *(v30 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sessionTimeout);
    *(v30 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sessionTimeout) = v41;

    v43 = *(*&v1[v52] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sessionTimeout);
    if (v43)
    {
      v44 = *(v43 + OBJC_IVAR____TtC16DaemoniOSLibrary13PushableTimer_timer);
      swift_getObjectType();

      OS_dispatch_source.resume()();
      v46(v51, v53);
      (*(v33 + 8))(v54, v14);
    }

    else
    {
      v46(v51, v53);
      return (*(v33 + 8))(v54, v14);
    }
  }

  return result;
}

uint64_t sub_1005FF99C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000C4AC(v7, qword_1009865B0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "- sessionTimeout fired", v10, 2u);
  }

  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v6, a2, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  sub_1005FCB7C(v6, 0);
  return sub_100005508(v6, &unk_100976120, &qword_1007F9260);
}

void sub_1005FFB88(char a1)
{
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v3 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType;
  if ((*(v3 + 8) & 1) != 0 || *v3 != 2)
  {
    return;
  }

  v4 = v1;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_1009865B0);
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v7, v8))
  {

    v7 = v6;
    goto LABEL_14;
  }

  v33 = v8;
  v9 = swift_slowAlloc();
  *v9 = 67110400;
  v10 = *(*&v1[v2] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);

  v11 = String._bridgeToObjectiveC()();
  LODWORD(v10) = [v10 BOOLForKey:v11];

  *(v9 + 4) = v10 ^ 1;
  *(v9 + 8) = 1024;
  v12 = *(*&v1[v2] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);

  LOBYTE(v12) = sub_10056089C();

  *(v9 + 10) = v12 & 1;

  *(v9 + 14) = 1024;
  v13 = *(*&v4[v2] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);
  v14 = String._bridgeToObjectiveC()();
  LODWORD(v10) = [v13 BOOLForKey:v14];

  if (!v10 || (sub_1005609D0() & 1) == 0)
  {

    goto LABEL_12;
  }

  v15 = String._bridgeToObjectiveC()();
  v16 = [v13 BOOLForKey:v15];

  if (v16)
  {
LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  v17 = 1;
LABEL_13:
  *(v9 + 16) = v17;

  *(v9 + 20) = 1024;
  v18 = *(*&v4[v2] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);
  v19 = String._bridgeToObjectiveC()();
  v20 = [v18 BOOLForKey:v19];

  *(v9 + 22) = v20;
  *(v9 + 26) = 1024;
  v21 = *(*&v4[v2] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);
  LOBYTE(v19) = sub_1005609D0();

  *(v9 + 28) = v19 & 1;
  *(v9 + 32) = 1024;
  v22 = *(*&v4[v2] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);
  v23 = String._bridgeToObjectiveC()();
  v24 = [v22 BOOLForKey:v23];

  *(v9 + 34) = v24;
  _os_log_impl(&_mh_execute_header, v7, v33, "--B222 Begin run Info--\nneedsInitialEducationUI:%{BOOL}d\nneedsWhatsNewUI:%{BOOL}d\nneedsWhatsNewForKeyboardLocale:%{BOOL}d\nhasShownPencilTextInputEducation:%{BOOL}d\nSupportedTextInputLocaleExists:%{BOOL}d\nisShowingEducationUI:%{BOOL}d", v9, 0x26u);

LABEL_14:

  v25 = *(*&v4[v2] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);

  if (sub_1005607A0())
  {
    v26 = String._bridgeToObjectiveC()();
    v27 = [v25 BOOLForKey:v26];

    if ((v27 & 1) == 0)
    {
      if (*(&v6->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionInProgress))
      {
        if (a1)
        {
          v28 = Logger.logObject.getter();
          v29 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            *v30 = 0;
            _os_log_impl(&_mh_execute_header, v28, v29, "Beginning b222 attempt in progress, but requested counter reset", v30, 2u);
          }

          *(&v6->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionAttempt) = 0;
        }
      }

      else
      {
        *(&v6->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionInProgress) = 1;
        *(&v6->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionAttempt) = 0;
        sub_100600158(0);
      }

      return;
    }
  }

  else
  {
  }

  osloga = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(osloga, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, osloga, v31, "b222BeginRunWithTimeout does not need any education UI, bailing", v32, 2u);
  }
}

void sub_100600158(int a1)
{
  v2 = v1;
  LODWORD(v56) = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTime();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v21 = &v47 - v20;
  v22 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionInProgress;
  if (v2[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionInProgress] != 1)
  {
    return;
  }

  v54 = v12;
  v23 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionAttempt;
  v24 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionAttempt];
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
    goto LABEL_19;
  }

  v48 = v19;
  v49 = v9;
  v50 = v7;
  v51 = v8;
  v52 = v4;
  v53 = v3;
  v55 = v18;
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionAttempt] = v26;
  if (qword_100973B58 != -1)
  {
LABEL_19:
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000C4AC(v27, qword_1009865B0);
  v28 = v2;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 134217984;
    *(v31 + 4) = *&v2[v23];

    _os_log_impl(&_mh_execute_header, v29, v30, "Beginning b222 attempt %ld", v31, 0xCu);
  }

  else
  {

    v29 = v28;
  }

  if (*&v2[v23] <= 9)
  {
    if ((v56 & 1) == 0)
    {
      sub_100600844();
      return;
    }

    v32 = *(&v28->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionWaitIndex);
    v33 = (v32 + 1);
    if (!__OFADD__(v32, 1))
    {
      *(&v28->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionWaitIndex) = v33;
      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
      v47 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v56 = *(v48 + 8);
      v56(v17, v55);
      v35 = swift_allocObject();
      *(v35 + 16) = v34;
      *(v35 + 24) = v33;
      aBlock[4] = sub_100624FF4;
      aBlock[5] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100011678;
      aBlock[3] = &unk_1008EAC60;
      v36 = _Block_copy(aBlock);

      v37 = v54;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
      sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
      sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
      v38 = v50;
      v39 = v53;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v40 = v47;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v36);

      (*(v52 + 8))(v38, v39);
      (*(v49 + 8))(v37, v51);
      v56(v21, v55);

      return;
    }

    goto LABEL_21;
  }

  v41 = v28;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 134217984;
    *(v44 + 4) = 10;

    _os_log_impl(&_mh_execute_header, v42, v43, "b222 reached max attempts %ld, canceling", v44, 0xCu);
  }

  else
  {

    v42 = v41;
  }

  v2[v22] = 0;
  *&v2[v23] = 0;
  v45 = *(&v41->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionWaitIndex);
  v25 = __OFADD__(v45, 1);
  v46 = (v45 + 1);
  if (v25)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  *(&v41->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionWaitIndex) = v46;
}

void sub_100600788(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionWaitIndex];

      if (v5 == a2)
      {
        swift_beginAccess();
        v6 = swift_unknownObjectWeakLoadStrong();
        if (v6)
        {
          v7 = v6;
          sub_100600844();
        }
      }
    }
  }
}

void sub_100600844()
{
  v3 = v0;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_1009865B0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "b222Run()", v7, 2u);
  }

  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionWaitIndex;
  v9 = *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionWaitIndex];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionWaitIndex] = v11;
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v2 = &unk_1009A0000;
  if (*(*&v3[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete))
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "B222 run called, but sessionState.didComplete == true.  Bailing", v14, 2u);
    }

    v3[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionInProgress] = 0;
    *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionAttempt] = 0;
    v15 = *&v3[v8];
    v10 = __OFADD__(v15, 1);
    v16 = v15 + 1;
    if (!v10)
    {
      *&v3[v8] = v16;
      return;
    }

    goto LABEL_41;
  }

  v17 = [*&v3[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central] sharedPairingAgent];
  if (!v17)
  {
    goto LABEL_44;
  }

  v18 = v17;
  v19 = sub_1005FEA1C();

  if (!(v19 >> 62))
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_14;
  }

LABEL_42:
  v20 = _CocoaArrayWrapper.endIndex.getter();
LABEL_14:

  if (v20 >= 1)
  {
    v21 = *(*&v3[v1] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);

    if (sub_1005607A0())
    {
      v22 = String._bridgeToObjectiveC()();
      v23 = [v21 BOOLForKey:v22];

      if ((v23 & 1) == 0)
      {
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&_mh_execute_header, v24, v25, "attempting to show UI for b222.  .", v26, 2u);
        }

        sub_1005FF444();
        sub_10060108C();
        sub_100601364();
        sub_100601674();
        sub_10060194C();
        sub_100601B14();
        sub_1006020A8();
        v35 = *&v3[v1];
        if ((*(v35 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairingStarted) & 1) == 0)
        {
          v36 = v35 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType;
          if (*(v36 + 8))
          {
            v37 = 0;
          }

          else
          {
            v37 = *v36;
          }

          sub_1006023A0(1, v37);
          v35 = *&v3[v1];
          *(v35 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairingStarted) = 1;
        }

        v38 = v2[482];
        if ((*(v35 + v38) & 1) == 0)
        {
          sub_100602704();
          v38 = v2[482];
        }

        v39 = *&v3[v1];
        v40 = *(v39 + v38);
        *(v39 + v38) = 1;
        if ((v40 & 1) == 0)
        {

          v41 = Logger.logObject.getter();
          v42 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            *v43 = 67109120;
            *(v43 + 4) = *(v39 + v38);
            _os_log_impl(&_mh_execute_header, v41, v42, "didComplete = %{BOOL}d", v43, 8u);
            v2 = &unk_1009A0000;
          }
        }
      }
    }

    else
    {
    }
  }

  if (*(*&v3[v1] + v2[482]))
  {
    v3[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionInProgress] = 0;
    *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionAttempt] = 0;
    v27 = *&v3[v8];
    v10 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v10)
    {
      *&v3[v8] = v28;

      sub_1005F1F48();

      [v3 stopScanning];
      sub_100602B9C();
      sub_100603198();
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "b222run() All cleanup completely done.", v31, 2u);
      }

      return;
    }

    __break(1u);
LABEL_44:
    __break(1u);
    return;
  }

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "b222Run() did not complete, waiting to try again.", v34, 2u);
  }

  sub_100600158(1);
}

uint64_t sub_10060108C()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v2 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState);
  if (*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) != 1)
  {
    v9 = *(v2 + 16);
    v18 = 1637;

    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    v11 = String.hashValue.getter();

    swift_beginAccess();
    v12 = sub_10046E4E8(&v18, v11);
    swift_endAccess();
    if (v12)
    {
      v8 = "ignore ensureScreenOn, UI updates disabled for current session state";
      goto LABEL_7;
    }
  }

  v3 = [*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor) screenOn];
  v4 = *(*(v0 + v1) + 16);
  if (v3)
  {
    v18 = 1646;

    v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v5);

    v6 = String.hashValue.getter();

    swift_beginAccess();
    v7 = sub_10046E4E8(&v18, v6);
    swift_endAccess();
    if (v7)
    {
      v8 = "ensureScreenOn completed";
LABEL_7:
      sub_10061F624(&static os_log_type_t.default.getter, v8);
    }
  }

  v18 = 1643;

  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  v15 = String.hashValue.getter();

  swift_beginAccess();
  v16 = sub_10046E4E8(&v18, v15);
  swift_endAccess();
  if (v16)
  {
    sub_10061F624(&static os_log_type_t.default.getter, "ensureScreenOn - screen is currently off");
  }

  sub_100624918();
  swift_allocError();
  *v17 = 1;
  return swift_willThrow();
}

uint64_t sub_100601364()
{
  v1 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState);
  if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) != 1)
  {
    v8 = *(v1 + 16);
    v18 = 2285;

    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    v10 = String.hashValue.getter();

    swift_beginAccess();
    v11 = sub_10046E4E8(&v18, v10);
    swift_endAccess();
    if (v11)
    {
      v12 = "ignore startUIService, UI updates disabled for current session state";
      v13 = &static os_log_type_t.default.getter;
LABEL_14:
      sub_10061F624(v13, v12);
    }
  }

  if (*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sbHasStarted) != 1)
  {
    v14 = *(v1 + 16);
    v18 = 2291;

    v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v15);

    v16 = String.hashValue.getter();

    swift_beginAccess();
    v17 = sub_10046E4E8(&v18, v16);
    swift_endAccess();
    if (v17)
    {
      v12 = "Hmm, SpringBoard hasn't started even though sendsUIUpdates = true";
      v13 = &static os_log_type_t.fault.getter;
      goto LABEL_14;
    }
  }

  v2 = [*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor) screenOn];
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000C4AC(v3, qword_1009865B0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v2;
    _os_log_impl(&_mh_execute_header, v4, v5, "startUIService. Screen on? %{BOOL}d.", v6, 8u);
  }

  if (qword_1009738A0 != -1)
  {
    swift_once();
  }

  return sub_1004521F4();
}

uint64_t sub_100601674()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v2 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState);
  v3 = *(v2 + 16);
  if (*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) != 1)
  {
    v19 = 1653;

    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    v15 = String.hashValue.getter();

    swift_beginAccess();
    v16 = sub_10046E4E8(&v19, v15);
    swift_endAccess();
    if (v16)
    {
      v13 = "ignore ensureHUDServiceStarted, UI updates disabled for current session state";
      goto LABEL_9;
    }
  }

  v4 = v0;
  v19 = 1657;

  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6 = String.hashValue.getter();

  swift_beginAccess();
  v7 = sub_10046E4E8(&v19, v6);
  swift_endAccess();
  if (v7)
  {
    sub_10061F624(&static os_log_type_t.default.getter, "ensureUIServiceStarted called");
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v9 = *(*(v4 + v1) + 16);
    v19 = 1659;

    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    v11 = String.hashValue.getter();

    swift_beginAccess();
    v12 = sub_10046E4E8(&v19, v11);
    swift_endAccess();
    if (v12)
    {
      v13 = "ensureUIServiceStarted completed";
LABEL_9:
      sub_10061F624(&static os_log_type_t.default.getter, v13);
    }
  }

  sub_100624918();
  swift_allocError();
  *v18 = 1;
  return swift_willThrow();
}

void sub_10060194C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState);
  if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) != 1)
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_1009865B0);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(oslog, v3))
    {
      goto LABEL_12;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "ignore startViewService, UI updates disabled for current session state";
    goto LABEL_11;
  }

  if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sbRemoteHandle))
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_1009865B0);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(oslog, v3))
    {
      goto LABEL_12;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "sbRemoteHandle != nil";
LABEL_11:
    _os_log_impl(&_mh_execute_header, oslog, v3, v5, v4, 2u);

LABEL_12:

    return;
  }

  sub_100612B04();
}

id sub_100601B14()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v2 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState);
  v3 = *(v2 + 16);
  if (*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) != 1)
  {
    v40._countAndFlagsBits = 0xD000000000000057;
    v40._object = 0x80000001007995E0;
    v41 = 1685;

    v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v31);

    v32 = String.hashValue.getter();

    swift_beginAccess();
    v33 = sub_10046E4E8(&v41, v32);
    swift_endAccess();
    if (v33)
    {
      v34 = "ignore ensureSystemUIState, UI updates disabled for current session state";
LABEL_15:
      sub_10061F624(&static os_log_type_t.default.getter, v34);
    }
  }

  v4 = v0;
  v40._countAndFlagsBits = 0xD000000000000057;
  v40._object = 0x80000001007995E0;
  v41 = 1688;

  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6 = String.hashValue.getter();

  swift_beginAccess();
  v7 = sub_10046E4E8(&v41, v6);
  swift_endAccess();
  if (v7)
  {
    sub_10061F624(&static os_log_type_t.default.getter, "ensureSystemUIState called");
  }

  result = [objc_opt_self() sharedMonitor];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = [result systemUIFlags];

  if ((v10 & 0x74008) == 0)
  {
    v35 = *(*(v4 + v1) + 16);
    v40._countAndFlagsBits = 0xD000000000000057;
    v40._object = 0x80000001007995E0;
    v41 = 1709;

    v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v36);

    v37 = String.hashValue.getter();

    swift_beginAccess();
    v38 = sub_10046E4E8(&v41, v37);
    swift_endAccess();
    if (v38)
    {
      v34 = "ensureSystemUIState completed";
      goto LABEL_15;
    }
  }

  LODWORD(v40._countAndFlagsBits) = v10;
  v11 = sub_10062496C();
  countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
  object = v13;
  v15 = String.count.getter();
  v16 = 32 - v15;
  if (__OFSUB__(32, v15))
  {
    __break(1u);
    goto LABEL_20;
  }

  v17._countAndFlagsBits = 48;
  v17._object = 0xE100000000000000;
  v18 = String.init(repeating:count:)(v17, v16 & ~(v16 >> 63));
  HIDWORD(v40._countAndFlagsBits) = HIDWORD(v18._countAndFlagsBits);
  v40._object = v18._object;

  v19._countAndFlagsBits = countAndFlagsBits;
  v19._object = object;
  String.append(_:)(v19);

  countAndFlagsBits = v18._countAndFlagsBits;
  object = v18._object;
  LODWORD(v40._countAndFlagsBits) = 475144;
  v6 = String.init<A>(_:radix:uppercase:)();
  v11 = v20;
  v21 = String.count.getter();
  v22 = 32 - v21;
  if (__OFSUB__(32, v21))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23._countAndFlagsBits = 48;
  v23._object = 0xE100000000000000;
  v40 = String.init(repeating:count:)(v23, v22 & ~(v22 >> 63));

  v24._countAndFlagsBits = v6;
  v24._object = v11;
  String.append(_:)(v24);

  v11 = v40._object;
  v6 = v40._countAndFlagsBits;
  if (qword_100973B58 != -1)
  {
LABEL_21:
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_10000C4AC(v25, qword_1009865B0);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v40._countAndFlagsBits = swift_slowAlloc();
    *v28 = 136315394;
    v29 = sub_10000C4E4(countAndFlagsBits, object, &v40._countAndFlagsBits);

    *(v28 + 4) = v29;
    *(v28 + 12) = 2080;
    v30 = sub_10000C4E4(v6, v11, &v40._countAndFlagsBits);

    *(v28 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v26, v27, "ensureSystemUIState - not ready.\n(%s) <- printSystemUIFlags,\n(%s) <- printB332Flags", v28, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_100624918();
  swift_allocError();
  *v39 = 1;
  return swift_willThrow();
}

uint64_t sub_1006020A8()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v2 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState);
  v3 = *(v2 + 16);
  if (*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) != 1)
  {
    v22 = 1666;

    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v11);

    v12 = String.hashValue.getter();

    swift_beginAccess();
    v13 = sub_10046E4E8(&v22, v12);
    swift_endAccess();
    if ((v13 & 1) == 0)
    {
    }

    v14 = "ignore ensureViewServiceStarted, UI updates disabled for current session state";
LABEL_8:
    sub_10061F624(&static os_log_type_t.default.getter, v14);
  }

  v4 = v0;
  v22 = 1670;

  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6 = String.hashValue.getter();

  swift_beginAccess();
  v7 = sub_10046E4E8(&v22, v6);
  swift_endAccess();
  if (v7)
  {
    sub_10061F624(&static os_log_type_t.default.getter, "Waiting for view service");
  }

  v8 = *(v4 + v1);
  v9 = *(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_remoteHandleActivated);
  if (v9 == 2)
  {
    goto LABEL_5;
  }

  if ((v9 & 1) == 0)
  {
LABEL_15:
    v10 = 3;
    goto LABEL_16;
  }

  v16 = *(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_viewServiceXPCConnectionEstablished);
  if (v16 != 2)
  {
    if (v16)
    {
      v17 = *(v8 + 16);
      v22 = 1678;

      v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v18);

      v19 = String.hashValue.getter();

      swift_beginAccess();
      v20 = sub_10046E4E8(&v22, v19);
      swift_endAccess();
      if ((v20 & 1) == 0)
      {
      }

      v14 = "View service up and XPC'd into daemon.";
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_5:
  v10 = 1;
LABEL_16:
  sub_100624918();
  swift_allocError();
  *v21 = v10;
  return swift_willThrow();
}

void sub_1006023A0(char a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  if (*(*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) == 1)
  {
    v4 = v2;
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_1009865B0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      aBlock[0] = v11;
      *v10 = 67109378;
      *(v10 + 4) = a1 & 1;
      *(v10 + 8) = 2080;
      v12 = sub_10060E6AC(a2);
      v14 = sub_10000C4E4(v12, v13, aBlock);

      *(v10 + 10) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "showPairingStarted. willTransitionToEducation: %{BOOL}d, deviceType: %s", v10, 0x12u);
      sub_10000C60C(v11);
    }

    if (a1)
    {
      v15 = *(v4 + v3);
      v16 = &OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_viewServiceConnection;
    }

    else
    {
      v16 = &OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_uiAgentConnection;
    }

    v20 = *v16;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v22 = Strong;
      sub_1005F2838(Strong, 1);
      aBlock[4] = sub_10060E7DC;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1004502D4;
      aBlock[3] = &unk_1008EA760;
      v23 = _Block_copy(aBlock);
      v24 = [v22 remoteObjectProxyWithErrorHandler:v23];
      _Block_release(v23);
      [v24 setDeviceType:a2];
      [v24 showPairingStarted];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000C4AC(v17, qword_1009865B0);
    oslog = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v18, "ignore showPairingStarted, UI updates disabled for current session state", v19, 2u);
    }
  }
}

void sub_100602704()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  if (*(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) == 1)
  {
    v2 = v0;
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_1009865B0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "showPairingSuccess", v6, 2u);
    }

    v7 = *(v2 + v1);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      sub_1005F2838(Strong, 1);
      aBlock[4] = sub_10060E980;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1004502D4;
      aBlock[3] = &unk_1008EA7B0;
      v10 = _Block_copy(aBlock);
      v11 = [v9 remoteObjectProxyWithErrorHandler:v10];
      _Block_release(v10);
      v12 = *(*(v2 + v1) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);

      LOBYTE(v12) = sub_10056089C();

      if (v12)
      {
        [v11 setShouldShowWhatsNew:1];
      }

      v13 = *(v2 + v1) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType;
      if (*(v13 + 8))
      {
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v14, v15, "No device type is set in showPairingSuccess! Falling back to B222", v16, 2u);
        }

        v17 = 2;
      }

      else
      {
        v17 = *v13;
      }

      [v11 setDeviceType:v17];
      [v11 showPairingSuccess];
      v21 = *(*(v2 + v1) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);

      if (sub_1005607A0())
      {
        v22 = String._bridgeToObjectiveC()();
        v23 = [v21 BOOLForKey:v22];

        if ((v23 & 1) == 0)
        {
          v24 = *(v2 + v1) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType;
          if ((*(v24 + 8) & 1) == 0)
          {
            v25 = *v24;
            if (v25 <= 4 && ((1 << v25) & 0x1A) != 0)
            {
              v26 = [objc_opt_self() standardUserDefaults];
              sub_100561364(1);
            }
          }

          swift_unknownObjectRelease();
          return;
        }
      }

      else
      {
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000C4AC(v18, qword_1009865B0);
    oslog = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v19, "ignore showPairingSuccess, UI updates disabled for current session state", v20, 2u);
    }
  }
}

void sub_100602B9C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v8 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState];
  if (*(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete) == 1 && (*(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didCleanup) & 1) == 0)
  {
    v9 = v4;
    *(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didCleanup) = 1;
    v10 = v8 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType;
    if ((*(v10 + 8) & 1) != 0 || *v10 != 2)
    {
      v11 = objc_opt_self();
      v12 = [v11 standardUserDefaults];
      v13 = String._bridgeToObjectiveC()();
      v14 = [v12 stringForKey:v13];

      if (v14)
      {
        v15 = [v11 standardUserDefaults];
        [v15 setURL:0 forKey:v14];
      }

      v16 = *(*&v0[v7] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral);
      if (v16)
      {
        v17 = [v16 identifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v48 = v0;
        v18 = UUID.uuidString.getter();
        v19 = v48;
        v20 = v18;
        v22 = v21;
        (*(v2 + 8))(v6, v9);
        v23 = [v11 standardUserDefaults];
        v24 = String._bridgeToObjectiveC()();
        v25 = String._bridgeToObjectiveC()();
        [v23 setObject:v24 forKey:v25];

        v26 = [v11 standardUserDefaults];
        v27 = (*&v19[v7] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_babyHash);
        if (v27[1])
        {
          v28 = *v27;
          v29 = v27[1];

          v30 = String._bridgeToObjectiveC()();
        }

        else
        {
          v30 = 0;
        }

        v31 = String._bridgeToObjectiveC()();
        [v26 setObject:v30 forKey:v31];

        swift_unknownObjectRelease();
        if (qword_100973B58 != -1)
        {
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        sub_10000C4AC(v32, qword_1009865B0);
        v33 = v19;

        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *v36 = 136315394;
          v0 = v48;
          v37 = (*&v48[v7] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_babyHash);
          if (v37[1])
          {
            v38 = *v37;
            v39 = v37[1];
          }

          else
          {
            v39 = 0x8000000100789F30;
            v38 = 0xD000000000000015;
          }

          v40 = sub_10000C4E4(v38, v39, &v49);

          *(v36 + 4) = v40;
          *(v36 + 12) = 2080;
          v41 = sub_10000C4E4(v20, v22, &v49);

          *(v36 + 14) = v41;
          _os_log_impl(&_mh_execute_header, v34, v35, "setHash: %s, forKey: %s", v36, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v0 = v48;
        }
      }
    }

    sub_1005FDE80();
    v42 = *(*&v0[v7] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);
    v43 = String._bridgeToObjectiveC()();
    [v42 removeObjectForKey:v43];

    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_10000C4AC(v44, qword_1009865B0);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "ensureCleanedUp!!!", v47, 2u);
    }
  }
}

uint64_t sub_100603198()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v3 = *(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + 16);
  v15 = 1222;

  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5 = String.hashValue.getter();

  swift_beginAccess();
  v6 = sub_10046E4E8(&v15, v5);
  swift_endAccess();
  if (v6)
  {
    sub_10061F624(&static os_log_type_t.default.getter, "ensurePairingAgentDeallocated called");
  }

  if (*(*(v1 + v2) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_hidServiceDiscovered) == 1)
  {
    v7 = [objc_allocWithZone(CBCentralManager) initWithDelegate:v1 queue:{*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q), 0xD000000000000057, 0x80000001007995E0}];
    v8 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central);
    *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central) = v7;

    v9 = *(*(v1 + v2) + 16);
    v15 = 1227;

    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    v11 = String.hashValue.getter();

    swift_beginAccess();
    v12 = sub_10046E4E8(&v15, v11);
    swift_endAccess();
    if (v12)
    {
      sub_10061F624(&static os_log_type_t.default.getter, "ensurePairingAgentDeallocated completed");
    }
  }

  else
  {
    sub_100624918();
    swift_allocError();
    *v14 = 1;
    return swift_willThrow();
  }
}

void sub_100603404(void *a1)
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009865B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "run() once", v5, 2u);
  }

  v6 = a1;
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(oslog, v7))
  {

    v18 = v6;
    goto LABEL_14;
  }

  v8 = swift_slowAlloc();
  *v8 = 67110144;
  v9 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v10 = *(*(&v6->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);

  v11 = String._bridgeToObjectiveC()();
  LODWORD(v10) = [v10 BOOLForKey:v11];

  *(v8 + 4) = v10 ^ 1;
  *(v8 + 8) = 1024;
  v12 = *(*(&v6->isa + v9) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);

  LOBYTE(v12) = sub_10056089C();

  *(v8 + 10) = v12 & 1;

  *(v8 + 14) = 1024;
  v13 = *(*(&v6->isa + v9) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);
  v14 = String._bridgeToObjectiveC()();
  LODWORD(v11) = [v13 BOOLForKey:v14];

  if (!v11 || (sub_1005609D0() & 1) == 0)
  {

    goto LABEL_12;
  }

  v15 = String._bridgeToObjectiveC()();
  v16 = [v13 BOOLForKey:v15];

  if (v16)
  {
LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  v17 = 1;
LABEL_13:
  *(v8 + 16) = v17;

  *(v8 + 20) = 1024;
  v19 = *(*(&v6->isa + v9) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 BOOLForKey:v20];

  *(v8 + 22) = v21;
  *(v8 + 26) = 1024;
  v22 = *(*(&v6->isa + v9) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);
  LOBYTE(v20) = sub_1005609D0();

  *(v8 + 28) = v20 & 1;
  _os_log_impl(&_mh_execute_header, oslog, v7, "--B322 Begin run Info--\nneedsInitialEducationUI:%{BOOL}d\nneedsWhatsNewUI:%{BOOL}d\nneedsWhatsNewForKeyboardLocale:%{BOOL}d\nhasShownPencilTextInputEducation:%{BOOL}d\nSupportedTextInputLocaleExists:%{BOOL}d", v8, 0x20u);

  v18 = oslog;
LABEL_14:
}

uint64_t sub_1006037AC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v3 = *(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + 16);
  v14 = 1232;

  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5 = String.hashValue.getter();

  swift_beginAccess();
  v6 = sub_10046E4E8(&v14, v5);
  swift_endAccess();
  if (v6)
  {
    sub_10061F624(&static os_log_type_t.default.getter, "ensureAttached called");
  }

  v7 = *(v1 + v2);
  if (*(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__accessoryUID + 8) && *(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__blePairingUUID + 8) >> 60 != 15)
  {
    v10 = *(v7 + 16);
    v14 = 1234;

    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v11);

    v12 = String.hashValue.getter();

    swift_beginAccess();
    v13 = sub_10046E4E8(&v14, v12);
    swift_endAccess();
    if (v13)
    {
      sub_10061F624(&static os_log_type_t.default.getter, "ensureAttached completed");
    }
  }

  else
  {
    sub_100624918();
    swift_allocError();
    *v8 = 1;
    return swift_willThrow();
  }
}

void sub_1006039F0(void *a1)
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009865B0);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    v6 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
    v7 = *(*(&v3->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);

    v8 = String._bridgeToObjectiveC()();
    LOBYTE(v7) = [v7 BOOLForKey:v8];

    v12 = 0;
    if ((v7 & 1) == 0)
    {
      v9 = *(*(&v3->isa + v6) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);
      v10 = String._bridgeToObjectiveC()();
      v11 = [v9 BOOLForKey:v10];

      if (!v11)
      {
        v12 = 1;
      }
    }

    *(v5 + 4) = v12;

    _os_log_impl(&_mh_execute_header, oslog, v4, "First pair?: %{BOOL}d", v5, 8u);

    v13 = oslog;
  }

  else
  {

    v13 = v3;
  }
}

uint64_t sub_100603BF4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central;
  if ([*&v0[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central] state] == 5)
  {
    v3 = *(*&v0[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState] + 16);
    v14 = 1719;

    v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v4);

    v5 = String.hashValue.getter();

    swift_beginAccess();
    v6 = sub_10046E4E8(&v14, v5);
    swift_endAccess();
    if (v6)
    {
      sub_10061F624(&static os_log_type_t.default.getter, "ensureBTOn completed");
    }
  }

  else
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C4AC(v8, qword_1009865B0);
    v9 = v0;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = [*&v1[v2] state];

      _os_log_impl(&_mh_execute_header, v10, v11, "ensureBTOn - central.state(%ld) != .poweredOn", v12, 0xCu);
    }

    else
    {

      v10 = v9;
    }

    sub_100624918();
    swift_allocError();
    *v13 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_100603E50()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v3 = *(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + 16);
  v16 = 1745;

  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5 = String.hashValue.getter();

  swift_beginAccess();
  v6 = sub_10046E4E8(&v16, v5);
  swift_endAccess();
  if (v6)
  {
    sub_10061F624(&static os_log_type_t.default.getter, "ensureUnlocked called");
  }

  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor;
  if ([*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor) systemLockState] == 1 || objc_msgSend(*(v1 + v7), "systemLockState") == 4)
  {
    v8 = *(*(v1 + v2) + 16);
    v16 = 1756;

    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    v10 = String.hashValue.getter();

    swift_beginAccess();
    v11 = sub_10046E4E8(&v16, v10);
    swift_endAccess();
    if (v11)
    {
      sub_10061F624(&static os_log_type_t.default.getter, "ensureUnlocked completed");
    }
  }

  else
  {
    v13 = *(v1 + v2);
    v14 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needsUnlockPrompt;
    if (*(v13 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needsUnlockPrompt) == 1)
    {
      sub_1006082D8();
      sub_10060E3D8();
      v13 = *(v1 + v2);
      v14 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needsUnlockPrompt;
    }

    *(v13 + v14) = 0;
    sub_100624918();
    swift_allocError();
    *v15 = 1;
    return swift_willThrow();
  }
}

void sub_1006040C8()
{
  if (*(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) == 1)
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C4AC(v1, qword_1009865B0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "dismissUnlockPrompt", v4, 2u);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      sub_1005F2838(Strong, 1);
      aBlock[4] = sub_100612CF8;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1004502D4;
      aBlock[3] = &unk_1008EAA80;
      v7 = _Block_copy(aBlock);
      v8 = [v6 remoteObjectProxyWithErrorHandler:v7];
      _Block_release(v7);
      [v8 dismissUnlockPrompt];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_1009865B0);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "ignore dismissUnlockPrompt, UI updates disabled for current session state", v11, 2u);
    }
  }
}

uint64_t sub_100604368(char a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v6 = *(v4 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState);
  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairPrompt;
  if ((*(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairPrompt) & 1) == 0)
  {
    v8 = v4;
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C4AC(v12, qword_1009865B0);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24[0] = v16;
      *v15 = 67109634;
      *(v15 + 4) = a1 & 1;
      *(v15 + 8) = 2080;
      *(v15 + 10) = sub_10000C4E4(a3, a4, v24);
      *(v15 + 18) = 2048;
      *(v15 + 20) = a2;
      _os_log_impl(&_mh_execute_header, v13, v14, "ensurePairingConsented - inViewService: %{BOOL}d | %s:%ld", v15, 0x1Cu);
      sub_10000C60C(v16);
    }

    sub_10060E0FC(a1 & 1);
    v6 = *(v8 + v5);
    v7 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairPrompt;
  }

  *(v6 + v7) = 1;
  if (*(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_pairConsented) == 1)
  {
    v17 = *(v6 + 16);
    v24[0] = 0xD000000000000057;
    v24[1] = 0x80000001007995E0;
    v25 = 1629;

    v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v18);

    v19 = String.hashValue.getter();

    swift_beginAccess();
    v20 = sub_10046E4E8(&v25, v19);
    swift_endAccess();
    if (v20)
    {
      sub_10061F624(&static os_log_type_t.default.getter, "ensurePairingConsented completed");
    }
  }

  else
  {
    sub_100624918();
    swift_allocError();
    *v22 = 1;
    return swift_willThrow();
  }
}

void sub_10060464C(char a1)
{
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  if (*(*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) == 1)
  {
    v3 = v1;
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_1009865B0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "showChargingStatus", v8, 2u);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      if (a1 != 2)
      {
        *(*(v3 + v2) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_hideBattery) = a1 & 1;
      }

      v10 = Strong;
      sub_1005F2838(Strong, 1);
      aBlock[4] = sub_10060E998;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1004502D4;
      aBlock[3] = &unk_1008EA7D8;
      v11 = _Block_copy(aBlock);
      v12 = [v10 remoteObjectProxyWithErrorHandler:v11];
      _Block_release(v11);
      [v12 showChargingStatus];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000C4AC(v13, qword_1009865B0);
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v14, "ignore showChargingStatus, UI updates disabled for current session state", v15, 2u);
    }
  }
}

uint64_t sub_10060491C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor) bluetoothAddressData];
  if (v1)
  {
    v2 = v1;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    sub_100026AC0(v3, v5);
    v6 = *(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + 16);
    v16 = 1729;

    v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v7);

    v8 = String.hashValue.getter();

    swift_beginAccess();
    v9 = sub_10046E4E8(&v16, v8);
    swift_endAccess();
    if (v9)
    {
      sub_10061F624(&static os_log_type_t.default.getter, "ensureMyBTAddressAvailable completed");
    }
  }

  else
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000C4AC(v11, qword_1009865B0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "ensureMyBTAddressAvailable - bluetoothAddressData = nil", v14, 2u);
    }

    sub_100624918();
    swift_allocError();
    *v15 = 1;
    return swift_willThrow();
  }
}

void sub_100604B60()
{
  v1 = v0;
  v2 = type metadata accessor for DefaultStringInterpolation.PrintUtilsHexFormat();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  if (*(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sentBluetoothAddress + 8) >> 60 == 15)
  {
    v51 = v5;
    v9 = [*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor) bluetoothAddressData];
    if (v9)
    {
      v10 = v9;
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0xF000000000000000;
    }

    v55 = v11;
    v56 = v13;
    sub_10028088C(&qword_100974E10, &qword_1007FC4C0);
    Optional.unwrap(_:file:line:)();
    sub_10028BCC0(v55, v56);
    v14 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_bleProvider);
    if (v14)
    {
      v15 = (*(v1 + v8) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__accessoryUID);
      if (v15[1])
      {
        v16 = v3;
        v17 = v58;
        v52 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_bleProvider;
        v53 = v57;
        v18 = *v15;
        v19 = v14;

        v20 = String._bridgeToObjectiveC()();

        v21 = *(v1 + v8) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__blePairingUUID;
        v22 = *(v21 + 8);
        if (v22 >> 60 != 15)
        {
          v23 = *v21;
          sub_100294008(*v21, *(v21 + 8));
          isa = Data._bridgeToObjectiveC()().super.isa;
          sub_10028BCC0(v23, v22);
          [v19 startBLEUpdates:v20 blePairingUUID:isa pairType:1 bRadioUpdatesOn:1 bPairInfoUpdatesOn:1];

          *(*(v1 + v8) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needToStopBLEUpdates) = 1;
          v25 = v8;
          if (qword_100973B58 != -1)
          {
            swift_once();
          }

          v26 = type metadata accessor for Logger();
          sub_10000C4AC(v26, qword_1009865B0);
          v27 = v53;
          sub_100294008(v53, v17);
          v28 = Logger.logObject.getter();
          v29 = static os_log_type_t.default.getter();
          sub_100026AC0(v27, v17);
          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            v31 = swift_slowAlloc();
            v50 = v25;
            v32 = v31;
            v54 = v31;
            v55 = v27;
            *v30 = 136315138;
            v57 = 0;
            v58 = 0xE000000000000000;
            v56 = v17;
            v33 = v51;
            (*(v16 + 104))(v7, enum case for DefaultStringInterpolation.PrintUtilsHexFormat.hex(_:), v51);
            sub_100423B84();
            DefaultStringInterpolation.appendInterpolation<A>(_:_:separator:)();
            v34 = v33;
            v27 = v53;
            (*(v16 + 8))(v7, v34);
            v35 = sub_10000C4E4(v57, v58, &v54);

            *(v30 + 4) = v35;
            _os_log_impl(&_mh_execute_header, v28, v29, "ensureMyAddressSent - sent myAddress: %s", v30, 0xCu);
            sub_10000C60C(v32);
            v25 = v50;
          }

          v36 = *(v1 + v52);
          if (v36)
          {
            v37 = (*(v1 + v25) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__accessoryUID);
            if (v37[1])
            {
              v38 = *v37;
              v39 = v36;

              v40 = String._bridgeToObjectiveC()();

              v41 = *(v1 + v25) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__blePairingUUID;
              v42 = *(v41 + 8);
              if (v42 >> 60 != 15)
              {
                v43 = *v41;
                sub_100294008(*v41, *(v41 + 8));
                v44 = Data._bridgeToObjectiveC()().super.isa;
                sub_10028BCC0(v43, v42);
                v45 = Data._bridgeToObjectiveC()().super.isa;
                [v39 deviceUpdatePairingInfo:v40 blePairingUUID:v44 pairType:1 pairInfo:v45];

                v46 = (*(v1 + v25) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sentBluetoothAddress);
                v47 = *v46;
                v48 = v46[1];
                *v46 = v27;
                v46[1] = v17;

                sub_10028BCC0(v47, v48);

                return;
              }

LABEL_22:
              __break(1u);
              return;
            }

LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }
}

uint64_t sub_1006050AC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v3 = *(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + 16);
  v17 = 1734;

  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5 = String.hashValue.getter();

  swift_beginAccess();
  v6 = sub_10046E4E8(&v17, v5);
  swift_endAccess();
  if (v6)
  {
    sub_10061F624(&static os_log_type_t.default.getter, "ensureAllDataFromB332 called");
  }

  v7 = *(v1 + v2);
  v8 = *(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_b332BTAddr + 8);
  if (v8 >> 60 == 15 || (v9 = *(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_oobd + 8), v9 >> 60 == 15))
  {
    sub_100624918();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
  }

  else
  {
    v5 = *(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_b332BTAddr);
    v11 = *(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_oobd);
    v12 = *(v7 + 16);
    v17 = 1739;
    sub_1002A9924(v5, v8);
    sub_1002A9924(v11, v9);

    v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v13);

    v14 = String.hashValue.getter();

    swift_beginAccess();
    v15 = sub_10046E4E8(&v17, v14);
    swift_endAccess();
    if (v15)
    {
      sub_10061F624(&static os_log_type_t.default.getter, "ensureAllDataFromB332 completed");
    }
  }

  return v5;
}

void sub_100605330(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_1009865B0);
  sub_100294008(a1, a2);
  sub_100294008(a3, a4);
  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    v11 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      if (v11 != 2)
      {
        v12 = 0;
        goto LABEL_15;
      }

      v14 = *(a3 + 16);
      v13 = *(a3 + 24);
      v15 = __OFSUB__(v13, v14);
      v12 = v13 - v14;
      if (!v15)
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v11)
    {
      v12 = BYTE6(a4);
LABEL_15:
      *(v10 + 4) = v12;
      v16 = v10;
      sub_100026AC0(a1, a2);
      sub_100026AC0(a3, a4);
      _os_log_impl(&_mh_execute_header, oslog, v9, "COUNT: %ld", v16, 0xCu);

      goto LABEL_16;
    }

    LODWORD(v12) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      __break(1u);
      return;
    }

    v12 = v12;
    goto LABEL_15;
  }

  sub_100026AC0(a1, a2);
  sub_100026AC0(a3, a4);
LABEL_16:
}

void sub_1006054DC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v3 = *(*&v0[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState] + 16);
  v55[0] = 0xD000000000000057;
  v55[1] = 0x80000001007995E0;
  v56 = 1456;

  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5 = String.hashValue.getter();

  swift_beginAccess();
  v6 = sub_10046E4E8(&v56, v5);
  swift_endAccess();
  if (v6)
  {
    sub_10061F624(&static os_log_type_t.default.getter, "ensureDiscovered called");
  }

  v7 = *&v1[v2];
  v8 = *(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral);
  if (!v8)
  {
    sub_100624918();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
    return;
  }

  if (*(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_ranHandleDiscover))
  {
    v9 = v8;
    return;
  }

  *(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_ranHandleDiscover) = 1;
  v11 = (v7 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_devicePencilBtTag);
  if (v11[1])
  {
    v12 = *v11;
    v13 = v8;

    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v15 = v8;
    v14 = 0;
  }

  [v8 tag:v14];

  v16 = String._bridgeToObjectiveC()();
  [v8 tag:v16];

  v17 = *&v1[v2];
  if ((*(v17 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType + 8) & 1) != 0 || (*(v17 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType) - 4) <= 0xFFFFFFFFFFFFFFFCLL)
  {
    v18 = String._bridgeToObjectiveC()();
    [v8 tag:v18];

    v17 = *&v1[v2];
  }

  v54 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central;
  v19 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central];

  v20 = [v19 sharedPairingAgent];
  if (!v20)
  {
    goto LABEL_49;
  }

  v21 = v20;
  v22 = [v20 isPeerPaired:v8];

  *(v17 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_isPaired) = v22;

  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000C4AC(v23, qword_1009865B0);
  v24 = v1;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v55[0] = v28;
    v29 = *&v1[v2];
    *v27 = 136315138;
    v30 = *(v29 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_isPaired);
    v31 = 1702195828;
    if ((v30 & 1) == 0)
    {
      v31 = 0x65736C6166;
    }

    v32 = 0xE500000000000000;
    if (v30)
    {
      v32 = 0xE400000000000000;
    }

    if (v30 == 2)
    {
      v33 = 0xD000000000000013;
    }

    else
    {
      v33 = v31;
    }

    if (v30 == 2)
    {
      v34 = 0x8000000100799820;
    }

    else
    {
      v34 = v32;
    }

    v35 = sub_10000C4E4(v33, v34, v55);

    *(v27 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v25, v26, "ensureDiscovered completed. isPaired? %s", v27, 0xCu);
    sub_10000C60C(v28);
  }

  sub_1006040C8();
  v36 = *&v1[v2];
  v37 = *(v36 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_oobd + 8);
  if (v37 >> 60 == 15)
  {
    goto LABEL_50;
  }

  v38 = *(v36 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_oobd);
  v39 = v37 >> 62;
  if ((v37 >> 62) > 1)
  {
    if (v39 != 2)
    {
      goto LABEL_46;
    }

    v42 = v38 + 16;
    v40 = *(v38 + 16);
    v41 = *(v42 + 8);
    v43 = __OFSUB__(v41, v40);
    v44 = v41 - v40;
    if (!v43)
    {
      if (v44 != 32)
      {
        goto LABEL_46;
      }

      goto LABEL_39;
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v39)
  {
    v43 = __OFSUB__(HIDWORD(v38), v38);
    v45 = HIDWORD(v38) - v38;
    if (!v43)
    {
      if (v45 == 32)
      {
        goto LABEL_39;
      }

LABEL_46:

      return;
    }

    goto LABEL_48;
  }

  if (BYTE6(v37) != 32)
  {
    goto LABEL_46;
  }

LABEL_39:
  v46 = *(v36 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_isPaired);
  if (v46 == 2)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v46)
  {
    goto LABEL_46;
  }

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&_mh_execute_header, v47, v48, "Enabling OOBP for B332", v49, 2u);
  }

  v50 = [*&v1[v54] sharedPairingAgent];
  if (!v50)
  {
    goto LABEL_52;
  }

  v51 = v50;
  [v50 setOOBPairingEnabled:0 forPeer:v8];

  v52 = [*&v1[v54] sharedPairingAgent];
  if (v52)
  {
    v53 = v52;
    [v52 setOOBPairingEnabled:1 forPeer:v8];

    goto LABEL_46;
  }

LABEL_53:
  __break(1u);
}