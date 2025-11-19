uint64_t sub_10050E2BC()
{
  v1 = *v0;
  v2 = *(*v0 + 480);
  v3 = *(*v0 + 472);
  v4 = *v0;

  v5 = swift_task_alloc();
  v1[61] = v5;
  *v5 = v4;
  v5[1] = sub_10050E44C;
  v6 = v1[21];
  v7 = v1[18];
  v8 = v1[16];

  return sub_10068E200(v8, v6);
}

uint64_t sub_10050E44C()
{
  v1 = *(*v0 + 488);
  v2 = *(*v0 + 304);
  v4 = *v0;

  return _swift_task_switch(sub_10050E55C, v2, 0);
}

uint64_t sub_10050E55C()
{
  v1 = v0[58];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];

  (*(v3 + 8))(v2, v4);
  v6 = v0[36];
  v5 = v0[37];
  v7 = v0[35];
  v8 = v0[32];
  v10 = v0[28];
  v9 = v0[29];
  v12 = v0[26];
  v11 = v0[27];
  v13 = v0[25];
  v14 = v0[22];
  v17 = v0[21];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10050E670()
{
  v1 = v0[33];
  v2 = *(v0[34] + 8);
  v3 = v0[37];
  v0[58] = v0[40];
  v5 = v0[20];
  v4 = v0[21];
  v7 = v0[18];
  v6 = v0[19];
  v2(v3, v1);
  swift_errorRetain();
  SFAirDropReceive.Failure.init(_:)();
  v8 = *(v7 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_receiveHandler);
  sub_100530ED4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
  v9 = swift_allocError();
  v0[59] = v9;
  (*(v5 + 16))(v10, v4, v6);
  v11 = swift_task_alloc();
  v0[60] = v11;
  *v11 = v0;
  v11[1] = sub_10050E2BC;

  return sub_100641284(v9);
}

uint64_t sub_10050E7C4()
{
  v1 = v0[34];
  sub_100005508(v0[29], &qword_10097B1C0, &qword_1007FE4C8);
  v2 = *(v1 + 8);
  v3 = v0[37];
  v4 = v0[33];
  v0[58] = v0[44];
  v6 = v0[20];
  v5 = v0[21];
  v8 = v0[18];
  v7 = v0[19];
  v2(v3, v4);
  swift_errorRetain();
  SFAirDropReceive.Failure.init(_:)();
  v9 = *(v8 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_receiveHandler);
  sub_100530ED4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
  v10 = swift_allocError();
  v0[59] = v10;
  (*(v6 + 16))(v11, v5, v7);
  v12 = swift_task_alloc();
  v0[60] = v12;
  *v12 = v0;
  v12[1] = sub_10050E2BC;

  return sub_100641284(v10);
}

uint64_t sub_10050E934()
{
  v1 = v0[34];
  sub_100005508(v0[29], &qword_10097B1C0, &qword_1007FE4C8);
  v2 = *(v1 + 8);
  v3 = v0[37];
  v4 = v0[33];
  v0[58] = v0[46];
  v6 = v0[20];
  v5 = v0[21];
  v8 = v0[18];
  v7 = v0[19];
  v2(v3, v4);
  swift_errorRetain();
  SFAirDropReceive.Failure.init(_:)();
  v9 = *(v8 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_receiveHandler);
  sub_100530ED4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
  v10 = swift_allocError();
  v0[59] = v10;
  (*(v6 + 16))(v11, v5, v7);
  v12 = swift_task_alloc();
  v0[60] = v12;
  *v12 = v0;
  v12[1] = sub_10050E2BC;

  return sub_100641284(v10);
}

uint64_t sub_10050EAA4()
{
  v1 = v0[29];
  v2 = *(v0[34] + 8);
  v2(v0[36], v0[33]);
  sub_100005508(v1, &qword_10097B1C0, &qword_1007FE4C8);
  v3 = v0[37];
  v4 = v0[33];
  v0[58] = v0[49];
  v6 = v0[20];
  v5 = v0[21];
  v8 = v0[18];
  v7 = v0[19];
  v2(v3, v4);
  swift_errorRetain();
  SFAirDropReceive.Failure.init(_:)();
  v9 = *(v8 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_receiveHandler);
  sub_100530ED4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
  v10 = swift_allocError();
  v0[59] = v10;
  (*(v6 + 16))(v11, v5, v7);
  v12 = swift_task_alloc();
  v0[60] = v12;
  *v12 = v0;
  v12[1] = sub_10050E2BC;

  return sub_100641284(v10);
}

uint64_t sub_10050EC30()
{
  v1 = v0[29];
  v2 = *(v0[34] + 8);
  v2(v0[36], v0[33]);
  sub_100005508(v1, &qword_10097B1C0, &qword_1007FE4C8);
  v3 = v0[37];
  v4 = v0[33];
  v0[58] = v0[52];
  v6 = v0[20];
  v5 = v0[21];
  v8 = v0[18];
  v7 = v0[19];
  v2(v3, v4);
  swift_errorRetain();
  SFAirDropReceive.Failure.init(_:)();
  v9 = *(v8 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_receiveHandler);
  sub_100530ED4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
  v10 = swift_allocError();
  v0[59] = v10;
  (*(v6 + 16))(v11, v5, v7);
  v12 = swift_task_alloc();
  v0[60] = v12;
  *v12 = v0;
  v12[1] = sub_10050E2BC;

  return sub_100641284(v10);
}

uint64_t sub_10050EDBC()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[33];
  v4 = v0[34];
  v5 = v0[29];
  sub_100005508(v0[28], &qword_100982508, &unk_100808D50);
  v6 = *(v4 + 8);
  v6(v1, v3);
  v6(v2, v3);
  sub_100005508(v5, &qword_10097B1C0, &qword_1007FE4C8);
  v7 = v0[37];
  v8 = v0[33];
  v0[58] = v0[54];
  v10 = v0[20];
  v9 = v0[21];
  v12 = v0[18];
  v11 = v0[19];
  v6(v7, v8);
  swift_errorRetain();
  SFAirDropReceive.Failure.init(_:)();
  v13 = *(v12 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_receiveHandler);
  sub_100530ED4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
  v14 = swift_allocError();
  v0[59] = v14;
  (*(v10 + 16))(v15, v9, v11);
  v16 = swift_task_alloc();
  v0[60] = v16;
  *v16 = v0;
  v16[1] = sub_10050E2BC;

  return sub_100641284(v14);
}

uint64_t sub_10050EF78(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = type metadata accessor for SFAirDropReceive.Failure();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();
  v6 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v7 = type metadata accessor for SFAirDrop.ContactRequest();
  v2[17] = v7;
  v8 = *(v7 - 8);
  v2[18] = v8;
  v9 = *(v8 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v10 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v2[22] = v10;
  v11 = *(v10 - 8);
  v2[23] = v11;
  v12 = *(v11 + 64) + 15;
  v2[24] = swift_task_alloc();
  v13 = *(sub_10028088C(&qword_10097B200, &qword_1007FE578) - 8);
  v2[25] = v13;
  v2[26] = *(v13 + 64);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v14 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
  v2[29] = v14;
  v15 = *(v14 - 8);
  v2[30] = v15;
  v16 = *(v15 + 64) + 15;
  v2[31] = swift_task_alloc();
  v17 = *(*(sub_10028088C(&qword_10097B198, &qword_1007FE450) - 8) + 64) + 15;
  v2[32] = swift_task_alloc();
  v18 = type metadata accessor for SFAirDrop.ContactInfo();
  v2[33] = v18;
  v19 = *(v18 - 8);
  v2[34] = v19;
  v20 = *(v19 + 64) + 15;
  v2[35] = swift_task_alloc();
  v21 = type metadata accessor for SFAirDrop.TransferType();
  v2[36] = v21;
  v22 = *(v21 - 8);
  v2[37] = v22;
  v23 = *(v22 + 64) + 15;
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v24 = type metadata accessor for SFAirDropReceive.AskRequest();
  v2[40] = v24;
  v25 = *(v24 - 8);
  v2[41] = v25;
  v26 = *(v25 + 64) + 15;
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v27 = type metadata accessor for SFAirDropReceive.Transfer();
  v2[44] = v27;
  v28 = *(v27 - 8);
  v2[45] = v28;
  v29 = *(v28 + 64) + 15;
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v30 = static AirDropActor.shared;
  v2[49] = static AirDropActor.shared;

  return _swift_task_switch(sub_10050F428, v30, 0);
}

uint64_t sub_10050F428()
{
  v101 = v0;
  v1 = v0[48];
  v3 = v0[44];
  v2 = v0[45];
  v4 = v0[43];
  v5 = v0[41];
  v96 = v0[40];
  v6 = v0[39];
  v7 = v0[36];
  v8 = v0[37];
  v90 = *(v0[12] + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_subject);
  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v93 = *(v2 + 8);
  v93(v1, v3);
  SFAirDropReceive.AskRequest.type.getter();
  v9 = *(v5 + 8);
  v9(v4, v96);
  v10 = (*(v8 + 88))(v6, v7);
  LODWORD(v4) = enum case for SFAirDrop.TransferType.exchange(_:);
  v11 = *(v8 + 8);
  v11(v6, v7);
  if (v10 == v4)
  {
    v13 = v0[33];
    v12 = v0[34];
    v14 = v0[32];
    v15 = *(v0[12] + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_deviceStatus);
    sub_1004E5AD8(v14);
    v16 = *(v12 + 48);
    v17 = v16(v14, 1, v13);
    v18 = v0[35];
    if (v17 == 1)
    {
      v20 = v0[32];
      v19 = v0[33];
      v21 = v0[30];
      v22 = v0[31];
      v23 = v0[29];
      *v22 = 0xD000000000000012;
      v22[1] = 0x800000010078E5D0;
      (*(v21 + 104))(v22, enum case for SFAirDrop.ContactInfo.Handle.email(_:), v23);
      SFAirDrop.ContactInfo.init(givenName:fullName:handle:vcard:)();
      if (v16(v20, 1, v19) != 1)
      {
        sub_100005508(v0[32], &qword_10097B198, &qword_1007FE450);
      }
    }

    else
    {
      (*(v0[34] + 32))(v0[35], v0[32], v0[33]);
    }

    v46 = v0[12];
    v0[50] = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_log;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Share Contacts Permission START", v49, 2u);
    }

    v50 = v0[47];
    v51 = v0[35];
    v52 = v0[28];
    v53 = v0[12];

    v54 = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_contentHandler;
    swift_beginAccess();
    sub_1002A9938(v53 + v54, (v0 + 2));
    v55 = v0[6];
    sub_10002CDC0(v0 + 2, v0[5]);
    CurrentValueSubject.value.getter();
    sub_100589CEC(v50, v51, v52);
    v57 = v0[44];
    v80 = v57;
    v83 = v0[46];
    v58 = v0[34];
    v59 = v0[35];
    v60 = v0[33];
    v99 = v0[26];
    v89 = v0[27];
    v92 = v0[25];
    v61 = v0[23];
    v62 = v0[24];
    v63 = v0[22];
    logb = v0[16];
    v75 = v0[28];
    v77 = v0[12];
    (v93)(v0[47]);
    sub_10000C60C(v0 + 2);
    v64 = *(sub_10028088C(&qword_10097C688, &unk_1008042A0) + 48);
    (*(v58 + 16))(v62, v59, v60);
    v65 = sub_10028088C(&unk_10097C660, &unk_10080D3E0);
    (*(*(v65 - 8) + 16))(v62 + v64, v75, v65);
    (*(v61 + 104))(v62, enum case for SFAirDropReceive.Transfer.State.waitingForShareContactPermissionResponse(_:), v63);
    sub_100687AF8(v62, v83);
    (*(v61 + 8))(v62, v63);
    v93(v83, v80);
    v66 = type metadata accessor for TaskPriority();
    (*(*(v66 - 8) + 56))(logb, 1, 1, v66);
    sub_10000FF90(v75, v89, &qword_10097B200, &qword_1007FE578);
    v67 = (*(v92 + 80) + 16) & ~*(v92 + 80);
    v68 = swift_allocObject();
    v0[51] = v68;
    sub_10002C4E4(v89, v68 + v67, &qword_10097B200, &qword_1007FE578);
    v69 = async function pointer to concurrentRace<A>(priority:operation:against:)[1];

    v70 = swift_task_alloc();
    v0[52] = v70;
    *v70 = v0;
    v70[1] = sub_10050FE20;
    v71 = v0[20];
    v72 = v0[16];
    v73 = v0[17];
    v74 = v0[12];

    return concurrentRace<A>(priority:operation:against:)(v71, v72, &unk_100808F98, v68, &unk_100808FA8, v74, v73);
  }

  else
  {
    v24 = v0[12];

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v97 = v26;
      v27 = v0[46];
      v28 = v0[42];
      v76 = v0[44];
      v78 = v0[40];
      v29 = v0[38];
      v81 = v0[36];
      v30 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v100 = v87;
      *v30 = 136315138;
      log = v25;
      CurrentValueSubject.value.getter();
      SFAirDropReceive.Transfer.askRequest.getter();
      v93(v27, v76);
      SFAirDropReceive.AskRequest.type.getter();
      v9(v28, v78);
      sub_100530ED4(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      v11(v29, v81);
      v34 = sub_10000C4E4(v31, v33, &v100);

      *(v30 + 4) = v34;
      v25 = log;
      _os_log_impl(&_mh_execute_header, log, v97, "Share Contacts Permission SKIP. {type: %s}", v30, 0xCu);
      sub_10000C60C(v87);
    }

    (*(v0[18] + 56))(v0[11], 1, 1, v0[17]);
    v36 = v0[47];
    v35 = v0[48];
    v37 = v0[46];
    v39 = v0[42];
    v38 = v0[43];
    v40 = v0[38];
    v41 = v0[39];
    v42 = v0[35];
    v44 = v0[31];
    v43 = v0[32];
    v79 = v0[28];
    v82 = v0[27];
    loga = v0[24];
    v88 = v0[21];
    v91 = v0[20];
    v94 = v0[19];
    v95 = v0[16];
    v98 = v0[15];

    v45 = v0[1];

    return v45();
  }
}

uint64_t sub_10050FE20()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v4 = *v1;
  *(*v1 + 424) = v0;

  v5 = v2[51];
  v6 = v2[49];
  v7 = v2[12];
  sub_100005508(v2[16], &qword_100976160, &qword_1007F8770);

  if (v0)
  {
    v8 = sub_100510348;
  }

  else
  {
    v8 = sub_10050FFB8;
  }

  return _swift_task_switch(v8, v6, 0);
}

uint64_t sub_10050FFB8()
{
  v51 = v0;
  v1 = v0[50];
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v6 = v0[12];
  v48 = *(v4 + 32);
  v48(v2, v0[20], v5);
  (*(v4 + 16))(v3, v2, v5);
  v7 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v7, v46);
  v10 = v0[34];
  v9 = v0[35];
  v11 = v0[33];
  v12 = v0[28];
  v14 = v0[18];
  v13 = v0[19];
  v15 = v0[17];
  if (v8)
  {
    v44 = v0[28];
    v16 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v50 = v38;
    *v16 = 136315138;
    sub_100530ED4(&qword_10097B210, &type metadata accessor for SFAirDrop.ContactRequest);
    v40 = v11;
    v42 = v9;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v14 + 8))(v13, v15);
    v20 = sub_10000C4E4(v17, v19, &v50);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v7, v46, "Share Contacts Permission END {response: %s}", v16, 0xCu);
    sub_10000C60C(v38);

    sub_100005508(v44, &qword_10097B200, &qword_1007FE578);
    (*(v10 + 8))(v42, v40);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
    sub_100005508(v12, &qword_10097B200, &qword_1007FE578);
    (*(v10 + 8))(v9, v11);
  }

  v21 = v0[17];
  v22 = v0[18];
  v23 = v0[11];
  v48(v23, v0[21], v21);
  (*(v22 + 56))(v23, 0, 1, v21);
  v25 = v0[47];
  v24 = v0[48];
  v26 = v0[46];
  v28 = v0[42];
  v27 = v0[43];
  v29 = v0[38];
  v30 = v0[39];
  v31 = v0[35];
  v33 = v0[31];
  v32 = v0[32];
  v36 = v0[28];
  v37 = v0[27];
  v39 = v0[24];
  v41 = v0[21];
  v43 = v0[20];
  v45 = v0[19];
  v47 = v0[16];
  v49 = v0[15];

  v34 = v0[1];

  return v34();
}

uint64_t sub_100510348()
{
  *(v0 + 80) = *(v0 + 424);
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v3 = (*(*(v0 + 112) + 88))(*(v0 + 120), *(v0 + 104));
    *(v0 + 448) = v3;
    if (v3 == enum case for SFAirDropReceive.Failure.receiverCancelled(_:))
    {
      v4 = *(v0 + 424);
      v5 = *(v0 + 400);
      v6 = *(v0 + 96);

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "Share Contacts Permission END - Cancelling exchange", v9, 2u);
      }

      v10 = *(v0 + 96);

      v11 = *(v10 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_receiveHandler);
      type metadata accessor for CancellationError();
      sub_100530ED4(&unk_10097A6B0, &type metadata accessor for CancellationError);
      v12 = swift_allocError();
      *(v0 + 432) = v12;
      CancellationError.init()();
      v13 = swift_task_alloc();
      *(v0 + 440) = v13;
      *v13 = v0;
      v13[1] = sub_100510714;

      return sub_100641284(v12);
    }

    v19 = *(v0 + 272);
    v18 = *(v0 + 280);
    v20 = *(v0 + 264);
    v22 = *(v0 + 112);
    v21 = *(v0 + 120);
    v23 = *(v0 + 104);
    sub_100005508(*(v0 + 224), &qword_10097B200, &qword_1007FE578);
    (*(v19 + 8))(v18, v20);
    (*(v22 + 8))(v21, v23);
  }

  else
  {
    v16 = *(v0 + 272);
    v15 = *(v0 + 280);
    v17 = *(v0 + 264);
    sub_100005508(*(v0 + 224), &qword_10097B200, &qword_1007FE578);
    (*(v16 + 8))(v15, v17);
  }

  v24 = *(v0 + 80);

  v44 = *(v0 + 424);
  v26 = *(v0 + 376);
  v25 = *(v0 + 384);
  v27 = *(v0 + 368);
  v29 = *(v0 + 336);
  v28 = *(v0 + 344);
  v31 = *(v0 + 304);
  v30 = *(v0 + 312);
  v32 = *(v0 + 280);
  v34 = *(v0 + 248);
  v33 = *(v0 + 256);
  v36 = *(v0 + 224);
  v37 = *(v0 + 216);
  v38 = *(v0 + 192);
  v39 = *(v0 + 168);
  v40 = *(v0 + 160);
  v41 = *(v0 + 152);
  v42 = *(v0 + 128);
  v43 = *(v0 + 120);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_100510714()
{
  v1 = *(*v0 + 440);
  v2 = *(*v0 + 432);
  v3 = *(*v0 + 392);
  v5 = *v0;

  return _swift_task_switch(sub_100510840, v3, 0);
}

uint64_t sub_100510840()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v4 = *(v0 + 264);
  v5 = *(v0 + 224);
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  sub_100530ED4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
  swift_allocError();
  (*(v7 + 104))(v8, v1, v6);
  swift_willThrow();
  sub_100005508(v5, &qword_10097B200, &qword_1007FE578);
  (*(v2 + 8))(v3, v4);
  v9 = *(v0 + 80);

  v11 = *(v0 + 376);
  v10 = *(v0 + 384);
  v12 = *(v0 + 368);
  v14 = *(v0 + 336);
  v13 = *(v0 + 344);
  v15 = *(v0 + 304);
  v16 = *(v0 + 312);
  v17 = *(v0 + 280);
  v19 = *(v0 + 248);
  v18 = *(v0 + 256);
  v22 = *(v0 + 224);
  v23 = *(v0 + 216);
  v24 = *(v0 + 192);
  v25 = *(v0 + 168);
  v26 = *(v0 + 160);
  v27 = *(v0 + 152);
  v28 = *(v0 + 128);
  v29 = *(v0 + 120);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100510A44(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = type metadata accessor for CancellationError();
  v2[26] = v3;
  v4 = *(v3 - 8);
  v2[27] = v4;
  v5 = *(v4 + 64) + 15;
  v2[28] = swift_task_alloc();
  v6 = sub_10028088C(&unk_100989310, &qword_1007F9878);
  v2[29] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v8 = sub_10028088C(&qword_1009768F0, &unk_100808F60);
  v2[32] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v2[33] = swift_task_alloc();
  v10 = type metadata accessor for SFNWInterfaceTypeCategory();
  v2[34] = v10;
  v11 = *(v10 - 8);
  v2[35] = v11;
  v12 = *(v11 + 64) + 15;
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v13 = *(*(sub_10028088C(&qword_100977DC0, &unk_1007FB320) - 8) + 64) + 15;
  v2[38] = swift_task_alloc();
  v14 = type metadata accessor for SFAirDrop.Progress();
  v2[39] = v14;
  v15 = *(v14 - 8);
  v2[40] = v15;
  v16 = *(v15 + 64) + 15;
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v17 = *(*(sub_10028088C(&qword_10097B2B0, &unk_100808F70) - 8) + 64) + 15;
  v2[43] = swift_task_alloc();
  v18 = sub_10028088C(&qword_10097B2B8, &qword_1007FE670);
  v2[44] = v18;
  v19 = *(v18 - 8);
  v2[45] = v19;
  v20 = *(v19 + 64) + 15;
  v2[46] = swift_task_alloc();
  v21 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v2[47] = v21;
  v22 = *(v21 - 8);
  v2[48] = v22;
  v23 = *(v22 + 64) + 15;
  v2[49] = swift_task_alloc();
  v24 = type metadata accessor for SFNWInterfaceType();
  v2[50] = v24;
  v25 = *(v24 - 8);
  v2[51] = v25;
  v26 = *(v25 + 64) + 15;
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v27 = type metadata accessor for SFAirDrop.DeclineAction();
  v2[54] = v27;
  v28 = *(v27 - 8);
  v2[55] = v28;
  v29 = *(v28 + 64) + 15;
  v2[56] = swift_task_alloc();
  v30 = *(*(sub_10028088C(&qword_10097A7F0, &unk_1007FB600) - 8) + 64) + 15;
  v2[57] = swift_task_alloc();
  v31 = type metadata accessor for Date();
  v2[58] = v31;
  v32 = *(v31 - 8);
  v2[59] = v32;
  v33 = *(v32 + 64) + 15;
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v34 = sub_10028088C(&qword_1009764E8, &qword_1007F9790);
  v2[62] = v34;
  v35 = *(v34 - 8);
  v2[63] = v35;
  v36 = *(v35 + 64) + 15;
  v2[64] = swift_task_alloc();
  v37 = sub_10028088C(&qword_1009768F8, &unk_1008092B0);
  v2[65] = v37;
  v38 = *(v37 - 8);
  v2[66] = v38;
  v39 = *(v38 + 64) + 15;
  v2[67] = swift_task_alloc();
  v40 = *(*(sub_10028088C(&unk_1009755F0, &unk_1007FE9A0) - 8) + 64) + 15;
  v2[68] = swift_task_alloc();
  v41 = type metadata accessor for SFAirDrop.NetworkMetrics();
  v2[69] = v41;
  v42 = *(v41 - 8);
  v2[70] = v42;
  v43 = *(v42 + 64) + 15;
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v44 = type metadata accessor for SFAirDrop.TransferType();
  v2[73] = v44;
  v45 = *(v44 - 8);
  v2[74] = v45;
  v46 = *(v45 + 64) + 15;
  v2[75] = swift_task_alloc();
  v2[76] = swift_task_alloc();
  v47 = type metadata accessor for SFAirDropReceive.AskRequest();
  v2[77] = v47;
  v48 = *(v47 - 8);
  v2[78] = v48;
  v49 = *(v48 + 64) + 15;
  v2[79] = swift_task_alloc();
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();
  v50 = type metadata accessor for SFAirDropReceive.Transfer();
  v2[82] = v50;
  v51 = *(v50 - 8);
  v2[83] = v51;
  v52 = *(v51 + 64) + 15;
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v53 = static AirDropActor.shared;
  v2[87] = static AirDropActor.shared;

  return _swift_task_switch(sub_1005111EC, v53, 0);
}

uint64_t sub_1005111EC()
{
  v172 = v0;
  v1 = *(v0 + 688);
  v2 = *(v0 + 664);
  v3 = *(v0 + 656);
  v4 = *(v0 + 648);
  v5 = *(v0 + 624);
  v6 = *(v0 + 616);
  v7 = *(v0 + 608);
  v8 = *(v0 + 592);
  v159 = *(v0 + 584);
  v166 = *(*(v0 + 200) + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_subject);
  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v9 = *(v2 + 8);
  *(v0 + 704) = v9;
  *(v0 + 712) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v168 = v9;
  v9(v1, v3);
  SFAirDropReceive.AskRequest.type.getter();
  v10 = *(v5 + 8);
  v10(v4, v6);
  v11 = v10;
  LOBYTE(v10) = SFAirDrop.TransferType.isFiles.getter();
  v12 = *(v8 + 8);
  v12(v7, v159);
  v163 = v11;
  if (v10)
  {
    goto LABEL_3;
  }

  v13 = *(v0 + 680);
  v14 = *(v0 + 656);
  v15 = *(v0 + 640);
  v16 = *(v0 + 616);
  v17 = *(v0 + 600);
  v18 = *(v0 + 584);
  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v168(v13, v14);
  SFAirDropReceive.AskRequest.type.getter();
  v163(v15, v16);
  v19 = SFAirDrop.TransferType.isCustom.getter();
  v12(v17, v18);
  if (v19)
  {
LABEL_3:
    v20 = *(v0 + 200);
    *(v0 + 720) = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_log;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Monitoring Transfer START", v23, 2u);
    }

    v24 = *(v0 + 680);
    v25 = *(v0 + 576);
    v26 = *(v0 + 560);
    v27 = *(v0 + 552);
    v123 = *(v0 + 544);
    v149 = *(v0 + 568);
    v153 = *(v0 + 536);
    v139 = *(v0 + 496);
    v142 = *(v0 + 512);
    v133 = *(v0 + 472);
    v136 = *(v0 + 504);
    v156 = *(v0 + 464);
    v160 = *(v0 + 656);
    v145 = *(v0 + 456);
    v28 = *(v0 + 200);

    v29 = *(v28 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_receiveHandler);
    *(v0 + 728) = v29;
    v30 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_metrics;
    *(v0 + 736) = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_metrics;
    v31 = v30;
    v131 = v30;
    swift_beginAccess();
    v32 = *(v26 + 16);
    *(v0 + 744) = v32;
    v128 = v32;
    *(v0 + 752) = (v26 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v32(v25, v29 + v31, v27);
    sub_100688490(v25);
    v125 = *(v26 + 8);
    *(v0 + 760) = v125;
    *(v0 + 768) = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v125(v25, v27);
    v168(v24, v160);
    v33 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_fileInfo;
    *(v0 + 776) = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_fileInfo;
    swift_beginAccess();
    sub_10000FF90(v29 + v33, v123, &unk_1009755F0, &unk_1007FE9A0);
    sub_100688470(v123);
    sub_100005508(v123, &unk_1009755F0, &unk_1007FE9A0);
    v168(v24, v160);
    (*(v136 + 16))(v142, v29 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_transferContinuation, v139);
    SFProgressContinuation.task.getter();
    (*(v136 + 8))(v142, v139);
    v128(v149, v29 + v131, v27);
    SFAirDrop.NetworkMetrics.uploadStart.getter();
    v125(v149, v27);
    v34 = *(v133 + 48);
    if (v34(v145, 1, v156) == 1)
    {
      v35 = *(v0 + 456);
      v36 = *(v0 + 464);
      v37 = *(v0 + 488);
      static Date.now.getter();
      if (v34(v35, 1, v36) != 1)
      {
        sub_100005508(*(v0 + 456), &qword_10097A7F0, &unk_1007FB600);
      }
    }

    else
    {
      (*(*(v0 + 472) + 32))(*(v0 + 488), *(v0 + 456), *(v0 + 464));
    }

    v38 = *(v0 + 680);
    v157 = *(v0 + 656);
    v115 = *(v0 + 640);
    v39 = *(v0 + 536);
    v40 = *(v0 + 448);
    v134 = *(v0 + 440);
    v117 = *(v0 + 616);
    v119 = *(v0 + 424);
    v121 = *(v0 + 392);
    v137 = *(v0 + 432);
    v140 = *(v0 + 384);
    v143 = *(v0 + 376);
    v146 = *(v0 + 368);
    v150 = *(v0 + 520);
    v41 = *(v0 + 312);
    v42 = *(v0 + 200);
    v126 = *(v0 + 192);
    v129 = *(v0 + 320);
    v43 = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_contentHandler;
    swift_beginAccess();
    sub_1002A9938(v42 + v43, v0 + 16);
    v44 = *(v0 + 40);
    v45 = *(v0 + 48);
    sub_10002CDC0((v0 + 16), v44);
    CurrentValueSubject.value.getter();
    v46 = sub_10028088C(&qword_100975610, &qword_1007F89B0);
    sub_100587FBC(v38, 0x726566736E617274, 0xEC000000676E6972, v39, v44, v41, v46, v45, v40);
    v168(v38, v157);
    sub_10000C60C((v0 + 16));
    sub_1002A9938(v42 + v43, v0 + 56);
    v47 = *(v0 + 80);
    v48 = *(v0 + 88);
    sub_10002CDC0((v0 + 56), v47);
    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.askRequest.getter();
    v168(v38, v157);
    v49 = (*(v48 + 64))(v115, v47, v48);
    v51 = v50;
    *(v0 + 784) = v49;
    *(v0 + 792) = v50;
    v163(v115, v117);
    sub_10000C60C((v0 + 56));
    sub_100638724(v119);
    v52 = sub_10028088C(&qword_10097C680, &unk_100808F80);
    *(v0 + 800) = v52;
    v53 = v52[12];
    v54 = (v121 + v52[16]);
    v55 = v52[20];
    v56 = type metadata accessor for SFAirDropReceive.ItemDestination();
    *(v0 + 808) = v56;
    v57 = *(v56 - 8);
    v58 = *(v57 + 16);
    *(v0 + 816) = v58;
    *(v0 + 824) = (v57 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v58(v121, v126, v56);
    v59 = enum case for SFAirDrop.Progress.notStarted(_:);
    v60 = *(v129 + 104);
    *(v0 + 832) = v60;
    *(v0 + 840) = (v129 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v60(v121 + v53, v59, v41);
    *v54 = sub_100333550(v49, v51);
    v54[1] = v61;
    v62 = *(v134 + 16);
    *(v0 + 848) = v62;
    *(v0 + 856) = (v134 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v62(v121 + v55, v40, v137);
    *(v0 + 960) = enum case for SFAirDropReceive.Transfer.State.transferring(_:);
    v63 = *(v140 + 104);
    *(v0 + 864) = v63;
    *(v0 + 872) = (v140 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v63(v121);
    sub_100687AF8(v121, v38);
    v64 = *(v140 + 8);
    *(v0 + 880) = v64;
    *(v0 + 888) = (v140 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v64(v121, v143);
    v168(v38, v157);
    SFProgressTask.makeAsyncIterator()();
    v65 = sub_100530ED4(&qword_100977C00, type metadata accessor for AirDropActor);
    *(v0 + 896) = v65;
    *(v0 + 964) = enum case for SFAirDrop.Progress.completed(_:);
    *(v0 + 968) = enum case for SFNWInterfaceTypeCategory.regular(_:);
    v66 = *(v0 + 696);
    v67 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
    v68 = swift_task_alloc();
    *(v0 + 904) = v68;
    *v68 = v0;
    v68[1] = sub_100512084;
    v69 = *(v0 + 368);
    v70 = *(v0 + 344);
    v71 = *(v0 + 352);
    v72 = v0 + 168;
    v73 = v66;
    v74 = v65;

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v70, v73, v74, v71, v72);
  }

  v75 = *(v0 + 200);

  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = *(v0 + 680);
    v79 = *(v0 + 640);
    v147 = *(v0 + 656);
    v151 = *(v0 + 616);
    v80 = *(v0 + 600);
    v154 = *(v0 + 584);
    v81 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    v171[0] = v161;
    *v81 = 136315138;
    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.askRequest.getter();
    v168(v78, v147);
    SFAirDropReceive.AskRequest.type.getter();
    v163(v79, v151);
    sub_100530ED4(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType);
    v82 = dispatch thunk of CustomStringConvertible.description.getter();
    v84 = v83;
    v12(v80, v154);
    v85 = sub_10000C4E4(v82, v84, v171);

    *(v81 + 4) = v85;
    _os_log_impl(&_mh_execute_header, v76, v77, "Monitoring Transfer SKIP. {type: %s}", v81, 0xCu);
    sub_10000C60C(v161);
  }

  else
  {
  }

  v86 = *(v0 + 680);
  v87 = *(v0 + 656);
  v88 = *(v0 + 640);
  v89 = *(v0 + 616);
  v90 = *(v0 + 600);
  v91 = *(v0 + 584);
  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v168(v86, v87);
  SFAirDropReceive.AskRequest.type.getter();
  v163(v88, v89);
  v92 = SFAirDrop.TransferType.isLinks.getter();
  v12(v90, v91);
  if ((v92 & 1) == 0)
  {
    goto LABEL_20;
  }

  v93 = *(v0 + 672);
  v94 = *(v0 + 656);
  v95 = *(v0 + 632);
  v96 = *(v0 + 616);
  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v168(v93, v94);
  v97 = SFAirDropReceive.AskRequest.urlItems.getter();
  v163(v95, v96);
  v98 = *(v97 + 16);
  if (!v98)
  {

LABEL_20:
    v170 = _swiftEmptyArrayStorage;
    goto LABEL_21;
  }

  v99 = sub_10028F660(*(v97 + 16), 0);
  v100 = *(type metadata accessor for URL() - 8);
  v101 = sub_100291948(v171, &v99[(*(v100 + 80) + 32) & ~*(v100 + 80)], v98, v97);
  v70 = sub_100027D64();
  if (v101 != v98)
  {
    __break(1u);
    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v70, v73, v74, v71, v72);
  }

  v170 = v99;
LABEL_21:
  v102 = *(v0 + 688);
  v103 = *(v0 + 680);
  v104 = *(v0 + 672);
  v105 = *(v0 + 648);
  v106 = *(v0 + 640);
  v107 = *(v0 + 632);
  v108 = *(v0 + 608);
  v109 = *(v0 + 600);
  v110 = *(v0 + 576);
  v111 = *(v0 + 568);
  v116 = *(v0 + 544);
  v118 = *(v0 + 536);
  v120 = *(v0 + 512);
  v122 = *(v0 + 488);
  v124 = *(v0 + 480);
  v127 = *(v0 + 456);
  v130 = *(v0 + 448);
  v132 = *(v0 + 424);
  v135 = *(v0 + 416);
  v138 = *(v0 + 392);
  v141 = *(v0 + 368);
  v144 = *(v0 + 344);
  v148 = *(v0 + 336);
  v152 = *(v0 + 328);
  v155 = *(v0 + 304);
  v158 = *(v0 + 296);
  v162 = *(v0 + 288);
  v164 = *(v0 + 264);
  v165 = *(v0 + 248);
  v167 = *(v0 + 240);
  v169 = *(v0 + 224);

  v112 = *(v0 + 8);
  v113.n128_u64[0] = 0;

  return v112(v170, v113);
}

uint64_t sub_100512084()
{
  v2 = *v1;
  v3 = *(*v1 + 904);
  v9 = *v1;

  if (v0)
  {
    v4 = *(v2 + 792);
    v5 = *(v2 + 696);

    v6 = sub_100513B2C;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 696);
    v6 = sub_1005121A8;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1005121A8()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 312);
  v3 = *(v0 + 320);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 360) + 8))(*(v0 + 368), *(v0 + 352));
    v4 = async function pointer to SFProgressTask.finalValue.getter[1];
    v5 = swift_task_alloc();
    *(v0 + 912) = v5;
    *v5 = v0;
    v5[1] = sub_1005128F0;
    v6 = *(v0 + 536);
    v7 = *(v0 + 520);

    return SFProgressTask.finalValue.getter(v0 + 184, v7);
  }

  else
  {
    v8 = *(v0 + 964);
    v9 = *(v0 + 728);
    v10 = *(v0 + 416);
    v12 = *(v0 + 328);
    v11 = *(v0 + 336);
    (*(v3 + 32))(v11, v1, v2);
    sub_100638724(v10);
    v13 = *(v3 + 16);
    v13(v12, v11, v2);
    if ((*(v3 + 88))(v12, v2) == v8)
    {
      v14 = *(v0 + 720);
      v15 = *(v0 + 200);
      v16 = *(*(v0 + 320) + 8);
      v16(*(v0 + 328), *(v0 + 312));
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      v19 = os_log_type_enabled(v17, v18);
      v20 = *(v0 + 424);
      v21 = *(v0 + 400);
      v22 = *(v0 + 408);
      v23 = *(v0 + 336);
      v24 = *(v0 + 312);
      if (v19)
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Pipelined UPLOAD already complete", v25, 2u);
      }

      v16(v23, v24);
      (*(v22 + 8))(v20, v21);
    }

    else
    {
      v90 = *(v0 + 880);
      v91 = *(v0 + 888);
      v87 = *(v0 + 872);
      v85 = *(v0 + 864);
      v84 = *(v0 + 960);
      v82 = *(v0 + 848);
      v83 = *(v0 + 856);
      v26 = *(v0 + 824);
      v27 = *(v0 + 800);
      v76 = *(v0 + 792);
      v28 = *(v0 + 784);
      v75 = *(v0 + 728);
      v89 = *(v0 + 712);
      v88 = *(v0 + 704);
      v81 = *(v0 + 680);
      v86 = *(v0 + 656);
      v78 = *(v0 + 448);
      v77 = *(v0 + 432);
      v93 = *(v0 + 424);
      v92 = *(v0 + 416);
      v29 = *(v0 + 392);
      v79 = *(v0 + 376);
      v30 = *(v0 + 336);
      v31 = *(v0 + 312);
      v80 = *(v0 + 200);
      v32 = v27[12];
      v33 = (v29 + v27[16]);
      v34 = v27[20];
      (*(v0 + 816))(v29, *(v0 + 192), *(v0 + 808));
      v13(v29 + v32, v30, v31);
      *v33 = sub_100333550(v28, v76);
      v33[1] = v35;
      v82(v29 + v34, v78, v77);
      v85(v29, v84, v79);
      sub_100687AF8(v29, v81);
      v90(v29, v79);
      v88(v81, v86);
      sub_100530ED4(&qword_10097AD50, &type metadata accessor for SFNWInterfaceType);
      if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        v36 = *(v0 + 712);
        v37 = *(v0 + 704);
        v38 = *(v0 + 680);
        v39 = *(v0 + 656);
        v40 = *(v0 + 408);
        v41 = *(v0 + 400);
        v42 = *(v0 + 304);
        v43 = *(v0 + 200);
        (*(v40 + 16))(v42, *(v0 + 416), v41);
        (*(v40 + 56))(v42, 0, 1, v41);
        sub_100688030(v42, v38);
        sub_100005508(v42, &qword_100977DC0, &unk_1007FB320);
        v37(v38, v39);
      }

      v44 = *(v0 + 968);
      v45 = *(v0 + 416);
      v47 = *(v0 + 288);
      v46 = *(v0 + 296);
      v48 = *(v0 + 272);
      v49 = *(v0 + 280);
      SFNWInterfaceType.category()();
      (*(v49 + 104))(v47, v44, v48);
      sub_100530ED4(&qword_10097B2D0, &type metadata accessor for SFNWInterfaceTypeCategory);
      LOBYTE(v45) = dispatch thunk of static Equatable.== infix(_:_:)();
      v50 = *(v49 + 8);
      v50(v47, v48);
      v50(v46, v48);
      if ((v45 & 1) == 0)
      {
        v51 = *(v0 + 416);
        v52 = *(v0 + 424);
        v54 = *(v0 + 288);
        v53 = *(v0 + 296);
        v55 = *(v0 + 272);
        SFNWInterfaceType.category()();
        SFNWInterfaceType.category()();
        LOBYTE(v51) = dispatch thunk of static Equatable.== infix(_:_:)();
        v50(v54, v55);
        v50(v53, v55);
        if ((v51 & 1) == 0)
        {
          v56 = *(v0 + 200) + *(v0 + 720);
          v57 = Logger.logObject.getter();
          v58 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v57, v58))
          {
            v59 = swift_slowAlloc();
            *v59 = 0;
            _os_log_impl(&_mh_execute_header, v57, v58, "AirDrop interface changed to high priority category", v59, 2u);
          }

          v60 = *(v0 + 200);

          sub_10068ECC0(3.0);
        }
      }

      v61 = *(v0 + 424);
      v62 = *(v0 + 400);
      v63 = *(v0 + 408);
      v64 = *(v0 + 328);
      v65 = *(v0 + 312);
      v66 = *(*(v0 + 320) + 8);
      v66(*(v0 + 336), v65);
      (*(v63 + 8))(v61, v62);
      v66(v64, v65);
    }

    (*(*(v0 + 408) + 32))(*(v0 + 424), *(v0 + 416), *(v0 + 400));
    v67 = *(v0 + 896);
    v68 = *(v0 + 696);
    v69 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
    v70 = swift_task_alloc();
    *(v0 + 904) = v70;
    *v70 = v0;
    v70[1] = sub_100512084;
    v71 = *(v0 + 368);
    v72 = *(v0 + 344);
    v73 = *(v0 + 352);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v72, v68, v67, v73, v0 + 168);
  }
}

uint64_t sub_1005128F0()
{
  v2 = *v1;
  v3 = *(*v1 + 912);
  v9 = *v1;
  *(*v1 + 920) = v0;

  if (v0)
  {
    v4 = *(v2 + 792);
    v5 = *(v2 + 696);

    v6 = sub_100513D90;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 696);
    v6 = sub_100512A18;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100512A18()
{
  v72 = *(v0 + 964);
  v90 = *(v0 + 880);
  v93 = *(v0 + 888);
  v86 = *(v0 + 864);
  v88 = *(v0 + 872);
  v82 = *(v0 + 960);
  v76 = *(v0 + 848);
  v78 = *(v0 + 856);
  v68 = *(v0 + 832);
  v70 = *(v0 + 840);
  v60 = *(v0 + 816);
  v62 = *(v0 + 824);
  v58 = *(v0 + 808);
  v1 = *(v0 + 800);
  v64 = *(v0 + 784);
  v66 = *(v0 + 792);
  v54 = *(v0 + 768);
  v52 = *(v0 + 760);
  v2 = *(v0 + 752);
  v3 = *(v0 + 704);
  v4 = *(v0 + 680);
  v5 = *(v0 + 656);
  v6 = *(v0 + 576);
  v7 = *(v0 + 552);
  v102 = *(v0 + 488);
  v106 = *(v0 + 712);
  v96 = *(v0 + 480);
  v100 = *(v0 + 464);
  v55 = *(v0 + 432);
  v56 = *(v0 + 448);
  v80 = *(v0 + 408);
  v84 = *(v0 + 400);
  v8 = *(v0 + 392);
  v57 = *(v0 + 376);
  v53 = *(v0 + 312);
  v74 = *(v0 + 304);
  v9 = *(v0 + 200);
  v51 = *(v0 + 192);
  v10 = *(v0 + 184);
  (*(v0 + 744))(v6, *(v0 + 728) + *(v0 + 736), v7);
  sub_100688490(v6);
  v52(v6, v7);
  v3(v4, v5);
  v11 = v1[12];
  v12 = (v8 + v1[16]);
  v13 = v1[20];
  v60(v8, v51, v58);
  *(v8 + v11) = v10;
  v68(v8 + v11, v72, v53);
  *v12 = v64;
  v12[1] = v66;
  v76(v8 + v13, v56, v55);
  v86(v8, v82, v57);
  v89 = v10;

  sub_100687AF8(v8, v4);
  v90(v8, v57);
  v3(v4, v5);
  (*(v80 + 56))(v74, 1, 1, v84);
  sub_100688030(v74, v4);
  sub_100005508(v74, &qword_100977DC0, &unk_1007FB320);
  v3(v4, v5);
  static Date.now.getter();
  sub_100530ED4(&qword_10097E910, &type metadata accessor for Date);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v15 = *(v0 + 480);
    v16 = *(v0 + 464);
    v17 = *(v0 + 472);
    v18 = *(v0 + 264);
    v103 = *(v0 + 720);
    v107 = *(v0 + 256);
    v19 = *(v0 + 240);
    v20 = *(v0 + 248);
    v21 = *(v0 + 232);
    v97 = *(v0 + 200);
    (*(v17 + 16))(v20, *(v0 + 488), v16);
    v22 = *(v17 + 32);
    v22(v20 + *(v21 + 48), v15, v16);
    sub_10000FF90(v20, v19, &unk_100989310, &qword_1007F9878);
    v23 = *(v21 + 48);
    v24 = v18;
    v22(v18, v19, v16);
    v25 = *(v17 + 8);
    v25(v19 + v23, v16);
    sub_10002C4E4(v20, v19, &unk_100989310, &qword_1007F9878);
    v22(v24 + *(v107 + 36), v19 + *(v21 + 48), v16);
    v108 = v25;
    v25(v19, v16);
    ClosedRange<>.interval.getter();
    v27 = v26;
    sub_100005508(v24, &qword_1009768F0, &unk_100808F60);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 536);
    v32 = *(v0 + 528);
    v33 = *(v0 + 520);
    v104 = *(v0 + 488);
    v34 = *(v0 + 440);
    v94 = *(v0 + 448);
    v98 = *(v0 + 464);
    v35 = *(v0 + 424);
    v91 = *(v0 + 432);
    v36 = *(v0 + 400);
    v37 = *(v0 + 408);
    if (v30)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Monitoring Transfer END", v38, 2u);
    }

    (*(v37 + 8))(v35, v36);
    (*(v34 + 8))(v94, v91);
    v108(v104, v98);
    (*(v32 + 8))(v31, v33);
    v39 = *(v0 + 688);
    v40 = *(v0 + 680);
    v41 = *(v0 + 672);
    v42 = *(v0 + 648);
    v43 = *(v0 + 640);
    v44 = *(v0 + 632);
    v45 = *(v0 + 608);
    v46 = *(v0 + 600);
    v47 = *(v0 + 576);
    v48 = *(v0 + 568);
    v59 = *(v0 + 544);
    v61 = *(v0 + 536);
    v63 = *(v0 + 512);
    v65 = *(v0 + 488);
    v67 = *(v0 + 480);
    v69 = *(v0 + 456);
    v71 = *(v0 + 448);
    v73 = *(v0 + 424);
    v75 = *(v0 + 416);
    v77 = *(v0 + 392);
    v79 = *(v0 + 368);
    v81 = *(v0 + 344);
    v83 = *(v0 + 336);
    v85 = *(v0 + 328);
    v87 = *(v0 + 304);
    v92 = *(v0 + 296);
    v95 = *(v0 + 288);
    v99 = *(v0 + 264);
    v101 = *(v0 + 248);
    v105 = *(v0 + 240);
    v109 = *(v0 + 224);

    v49 = *(v0 + 8);
    v50.n128_u64[0] = v27;

    return v49(v89, v50);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005130FC()
{
  v1 = *(*v0 + 944);
  v2 = *(*v0 + 936);
  v3 = *(*v0 + 696);
  v5 = *v0;

  return _swift_task_switch(sub_100513228, v3, 0);
}

uint64_t sub_100513228()
{
  v48 = v0[89];
  v1 = v0[88];
  v2 = v0[85];
  v3 = v0[82];
  v4 = v0[68];
  v5 = v0[51];
  v50 = v0[50];
  v52 = v0[90];
  v6 = v0[38];
  v7 = v0[25];
  sub_10000FF90(v0[91] + v0[97], v4, &unk_1009755F0, &unk_1007FE9A0);
  sub_100688470(v4);
  sub_100005508(v4, &unk_1009755F0, &unk_1007FE9A0);
  v1(v2, v3);
  (*(v5 + 56))(v6, 1, 1, v50);
  sub_100688030(v6, v2);
  sub_100005508(v6, &qword_100977DC0, &unk_1007FB320);
  v1(v2, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Monitoring Transfer END - Cancelled.", v10, 2u);
  }

  v12 = v0[27];
  v11 = v0[28];
  v13 = v0[26];

  v14 = type metadata accessor for SFAirDropReceive.Failure();
  sub_100530ED4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
  swift_allocError();
  (*(*(v14 - 8) + 104))(v15, enum case for SFAirDropReceive.Failure.senderCancelled(_:), v14);
  swift_willThrow();
  (*(v12 + 8))(v11, v13);
  v16 = v0[22];

  v17 = v0[86];
  v18 = v0[85];
  v19 = v0[84];
  v20 = v0[81];
  v21 = v0[80];
  v22 = v0[79];
  v23 = v0[76];
  v24 = v0[75];
  v25 = v0[72];
  v26 = v0[71];
  v29 = v0[68];
  v30 = v0[67];
  v31 = v0[64];
  v32 = v0[61];
  v33 = v0[60];
  v34 = v0[57];
  v35 = v0[56];
  v36 = v0[53];
  v37 = v0[52];
  v38 = v0[49];
  v39 = v0[46];
  v40 = v0[43];
  v41 = v0[42];
  v42 = v0[41];
  v43 = v0[38];
  v44 = v0[37];
  v45 = v0[36];
  v46 = v0[33];
  v47 = v0[31];
  v49 = v0[30];
  v51 = v0[28];

  v27 = v0[1];

  return v27();
}

uint64_t sub_100513634()
{
  v1 = *(*v0 + 952);
  v2 = *(*v0 + 928);
  v3 = *(*v0 + 696);
  v5 = *v0;

  return _swift_task_switch(sub_100513760, v3, 0);
}

uint64_t sub_100513760()
{
  v49 = v0[116];
  v51 = v0[90];
  v1 = v0[88];
  v2 = v0[85];
  v3 = v0[82];
  v4 = v0[68];
  v5 = v0[51];
  v45 = v0[89];
  v47 = v0[50];
  v6 = v0[38];
  v7 = v0[25];
  sub_10000FF90(v0[91] + v0[97], v4, &unk_1009755F0, &unk_1007FE9A0);
  sub_100688470(v4);
  sub_100005508(v4, &unk_1009755F0, &unk_1007FE9A0);
  v1(v2, v3);
  (*(v5 + 56))(v6, 1, 1, v47);
  sub_100688030(v6, v2);
  sub_100005508(v6, &qword_100977DC0, &unk_1007FB320);
  v1(v2, v3);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[116];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v8, v9, "Monitoring Transfer END - Failure {%@}", v11, 0xCu);
    sub_100005508(v12, &qword_100975400, &qword_1007F65D0);
  }

  v14 = v0[116];

  swift_willThrow();
  v52 = v0[116];
  v15 = v0[86];
  v16 = v0[85];
  v17 = v0[84];
  v18 = v0[81];
  v19 = v0[80];
  v20 = v0[79];
  v21 = v0[76];
  v22 = v0[75];
  v23 = v0[72];
  v24 = v0[71];
  v27 = v0[68];
  v28 = v0[67];
  v29 = v0[64];
  v30 = v0[61];
  v31 = v0[60];
  v32 = v0[57];
  v33 = v0[56];
  v34 = v0[53];
  v35 = v0[52];
  v36 = v0[49];
  v37 = v0[46];
  v38 = v0[43];
  v39 = v0[42];
  v40 = v0[41];
  v41 = v0[38];
  v42 = v0[37];
  v43 = v0[36];
  v44 = v0[33];
  v46 = v0[31];
  v48 = v0[30];
  v50 = v0[28];

  v25 = v0[1];

  return v25();
}

uint64_t sub_100513B2C()
{
  v1 = v0[66];
  v23 = v0[65];
  v24 = v0[67];
  v22 = v0[61];
  v3 = v0[58];
  v2 = v0[59];
  v4 = v0[55];
  v5 = v0[56];
  v7 = v0[53];
  v6 = v0[54];
  v9 = v0[50];
  v8 = v0[51];
  (*(v0[45] + 8))(v0[46], v0[44]);
  (*(v8 + 8))(v7, v9);
  (*(v4 + 8))(v5, v6);
  (*(v2 + 8))(v22, v3);
  (*(v1 + 8))(v24, v23);
  v10 = v0[21];
  v0[22] = v10;
  v0[116] = v10;
  v11 = v0[28];
  v12 = v0[26];
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v13 = v0[26];

    sub_100530ED4(&unk_10097A6B0, &type metadata accessor for CancellationError);
    v14 = swift_allocError();
    v0[117] = v14;
    CancellationError.init()();
    v15 = swift_task_alloc();
    v0[118] = v15;
    *v15 = v0;
    v15[1] = sub_1005130FC;
    v16 = v0[91];
    v17 = v14;
  }

  else
  {
    v18 = v0[22];

    swift_errorRetain();
    v19 = swift_task_alloc();
    v0[119] = v19;
    *v19 = v0;
    v19[1] = sub_100513634;
    v20 = v0[91];
    v17 = v10;
  }

  return sub_100641284(v17);
}

uint64_t sub_100513D90()
{
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[61];
  v5 = v0[58];
  v6 = v0[59];
  v8 = v0[55];
  v7 = v0[56];
  v9 = v0[54];
  (*(v0[51] + 8))(v0[53], v0[50]);
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v10 = v0[115];
  v0[22] = v10;
  v0[116] = v10;
  v11 = v0[28];
  v12 = v0[26];
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v13 = v0[26];

    sub_100530ED4(&unk_10097A6B0, &type metadata accessor for CancellationError);
    v14 = swift_allocError();
    v0[117] = v14;
    CancellationError.init()();
    v15 = swift_task_alloc();
    v0[118] = v15;
    *v15 = v0;
    v15[1] = sub_1005130FC;
    v16 = v0[91];
    v17 = v14;
  }

  else
  {
    v18 = v0[22];

    swift_errorRetain();
    v19 = swift_task_alloc();
    v0[119] = v19;
    *v19 = v0;
    v19[1] = sub_100513634;
    v20 = v0[91];
    v17 = v10;
  }

  return sub_100641284(v17);
}

uint64_t sub_100513FD0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 234) = a4;
  *(v5 + 264) = a3;
  *(v5 + 272) = v4;
  *(v5 + 248) = a1;
  *(v5 + 256) = a2;
  v6 = *(*(sub_10028088C(&qword_100976908, &unk_100801D60) - 8) + 64) + 15;
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();
  v7 = sub_10028088C(&unk_1009892E0, &unk_1007FE6A0);
  *(v5 + 296) = v7;
  v8 = *(v7 - 8);
  *(v5 + 304) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 312) = swift_task_alloc();
  v10 = type metadata accessor for SFAirDropReceive.Transfer.State();
  *(v5 + 320) = v10;
  v11 = *(v10 - 8);
  *(v5 + 328) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 336) = swift_task_alloc();
  v13 = type metadata accessor for SFAirDrop.DeclineAction();
  *(v5 + 344) = v13;
  v14 = *(v13 - 8);
  *(v5 + 352) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 360) = swift_task_alloc();
  v16 = sub_10028088C(&qword_100976900, &unk_1007FD250);
  *(v5 + 368) = v16;
  v17 = *(v16 - 8);
  *(v5 + 376) = v17;
  v18 = *(v17 + 64) + 15;
  *(v5 + 384) = swift_task_alloc();
  v19 = type metadata accessor for SFAirDropReceive.ItemDestination();
  *(v5 + 392) = v19;
  v20 = *(v19 - 8);
  *(v5 + 400) = v20;
  v21 = *(v20 + 64) + 15;
  *(v5 + 408) = swift_task_alloc();
  *(v5 + 416) = swift_task_alloc();
  *(v5 + 424) = swift_task_alloc();
  v22 = type metadata accessor for SFAirDrop.TransferType();
  *(v5 + 432) = v22;
  v23 = *(v22 - 8);
  *(v5 + 440) = v23;
  v24 = *(v23 + 64) + 15;
  *(v5 + 448) = swift_task_alloc();
  v25 = type metadata accessor for SFAirDropReceive.AskRequest();
  *(v5 + 456) = v25;
  v26 = *(v25 - 8);
  *(v5 + 464) = v26;
  v27 = *(v26 + 64) + 15;
  *(v5 + 472) = swift_task_alloc();
  v28 = type metadata accessor for SFAirDropReceive.Transfer();
  *(v5 + 480) = v28;
  v29 = *(v28 - 8);
  *(v5 + 488) = v29;
  v30 = *(v29 + 64) + 15;
  *(v5 + 496) = swift_task_alloc();
  *(v5 + 504) = swift_task_alloc();
  *(v5 + 512) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v31 = static AirDropActor.shared;
  *(v5 + 520) = static AirDropActor.shared;

  return _swift_task_switch(sub_1005143E4, v31, 0);
}

uint64_t sub_1005143E4()
{
  v123 = v0;
  v1 = type metadata accessor for SDAirDropUserSafetyContentHandler();
  v2 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 40) = v1;
  *(v0 + 48) = &off_1008E3278;
  v4 = sub_10049F1E0(v2);
  v6 = v5;
  *(v0 + 528) = v4;
  *(v0 + 536) = v5;
  v121 = (v0 + 16);
  *(v0 + 235) = v3;
  if (v3)
  {
    v114 = v1;
    if ((*(v0 + 234) & 1) == 0)
    {
      v7 = *(v0 + 512);
      v9 = *(v0 + 480);
      v8 = *(v0 + 488);
      v10 = *(v0 + 464);
      v11 = *(v0 + 472);
      v12 = *(v0 + 456);
      *(v0 + 544) = *(*(v0 + 272) + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_subject);
      v117 = v3;
      CurrentValueSubject.value.getter();
      SFAirDropReceive.Transfer.askRequest.getter();
      v13 = *(v8 + 8);
      *(v0 + 552) = v13;
      *(v0 + 560) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v111 = v13;
      v13(v7, v9);
      v14 = SFAirDropReceive.AskRequest.senderIsMe.getter();
      v15 = *(v10 + 8);
      v15(v11, v12);
      v3 = v117;
      if ((v14 & 1) == 0)
      {
        v16 = *(v0 + 512);
        v17 = *(v0 + 472);
        v18 = *(v0 + 448);
        v99 = *(v0 + 480);
        v101 = *(v0 + 456);
        v104 = *(v0 + 440);
        v106 = *(v0 + 432);
        CurrentValueSubject.value.getter();
        SFAirDropReceive.Transfer.askRequest.getter();
        v111(v16, v99);
        SFAirDropReceive.AskRequest.type.getter();
        v15(v17, v101);
        v19 = SFAirDrop.TransferType.isFiles.getter();
        (*(v104 + 8))(v18, v106);
        v3 = v117;
        if (v19)
        {
          v20 = *(v0 + 424);
          v21 = *(v0 + 392);
          v22 = *(v0 + 400);
          v23 = *(v0 + 264);
          v24 = *(v0 + 272);
          v25 = *(v22 + 16);
          *(v0 + 568) = v25;
          *(v0 + 576) = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v102 = v25;
          v25(v20, v23, v21);
          *(v0 + 584) = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_log;
          v26 = Logger.logObject.getter();
          v27 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            *v28 = 0;
            _os_log_impl(&_mh_execute_header, v26, v27, "Analyzing full content START", v28, 2u);
          }

          v29 = *(v0 + 512);
          v118 = *(v0 + 480);
          v30 = *(v0 + 384);
          v31 = *(v0 + 360);
          v32 = *(v0 + 352);
          v93 = *(v0 + 392);
          v94 = *(v0 + 344);
          v33 = *(v0 + 336);
          v95 = *(v0 + 328);
          v96 = *(v0 + 320);
          v97 = *(v0 + 312);
          v100 = *(v0 + 368);
          v34 = *(v0 + 272);
          v35 = *(v0 + 256);
          v92 = *(v0 + 264);

          v36 = *sub_10002CDC0(v121, v114);
          sub_100498F44(v35);
          v37 = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_contentHandler;
          *(v0 + 592) = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_contentHandler;
          swift_beginAccess();
          sub_1002A9938(v34 + v37, v0 + 56);
          v39 = *(v0 + 80);
          v38 = *(v0 + 88);
          sub_10002CDC0((v0 + 56), v39);
          CurrentValueSubject.value.getter();
          sub_100587FBC(v29, 0xD000000000000014, 0x8000000100794B20, v30, v39, &type metadata for Double, &type metadata for Bool, v38, v31);
          v111(v29, v118);
          sub_10000C60C((v0 + 56));
          v40 = sub_10028088C(&qword_100974E88, &unk_100808F30);
          *(v0 + 600) = v40;
          v41 = v40[12];
          v42 = v40[16];
          v43 = v40[20];
          v102(v33, v92, v93);
          *(v33 + v41) = v35;
          *(v33 + v42) = 0;
          v44 = *(v32 + 16);
          *(v0 + 608) = v44;
          *(v0 + 616) = (v32 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v44(v33 + v43, v31, v94);
          *(v0 + 236) = enum case for SFAirDropReceive.Transfer.State.analyzingFullContent(_:);
          v45 = *(v95 + 104);
          *(v0 + 624) = v45;
          *(v0 + 632) = (v95 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
          v45(v33);

          sub_100687AF8(v33, v29);
          v46 = *(v95 + 8);
          *(v0 + 640) = v46;
          *(v0 + 648) = (v95 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v46(v33, v96);
          v111(v29, v118);
          SFProgressTask.makeAsyncIterator()();
          v47 = sub_100530ED4(&qword_100977C00, type metadata accessor for AirDropActor);
          *(v0 + 656) = v47;
          v48 = *(v0 + 520);
          v49 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
          v50 = swift_task_alloc();
          *(v0 + 664) = v50;
          *v50 = v0;
          v50[1] = sub_100514E0C;
          v51 = *(v0 + 312);
          v52 = *(v0 + 296);

          return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 224, v48, v47, v52, v0 + 240);
        }
      }
    }

    v53 = *(v0 + 272);
    sub_1003C3F0C(v4, v6, v3);

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v54, v55))
    {
      v80 = *(v0 + 272);

      goto LABEL_17;
    }

    v56 = *(v0 + 512);
    v58 = *(v0 + 480);
    v57 = *(v0 + 488);
    v98 = v58;
    v119 = v55;
    v59 = *(v0 + 464);
    v60 = *(v0 + 472);
    v103 = *(v0 + 456);
    v105 = *(v0 + 448);
    v107 = *(v0 + 432);
    v109 = *(v0 + 440);
    v61 = *(v0 + 272);
    v115 = v54;
    v62 = *(v0 + 234);
    v63 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v122 = v112;
    *v63 = 67109634;
    *(v63 + 4) = v62;
    *(v63 + 8) = 1024;
    v64 = *(v61 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_subject);
    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.askRequest.getter();
    v65 = *(v57 + 8);
    v65(v56, v58);
    LOBYTE(v62) = SFAirDropReceive.AskRequest.senderIsMe.getter();
    v66 = *(v59 + 8);
    v66(v60, v103);
    *(v63 + 10) = v62 & 1;

    *(v63 + 14) = 2080;
    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.askRequest.getter();
    v65(v56, v98);
    SFAirDropReceive.AskRequest.type.getter();
    v66(v60, v103);
    sub_100530ED4(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType);
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    v69 = v68;
    (*(v109 + 8))(v105, v107);
    v70 = sub_10000C4E4(v67, v69, &v122);

    *(v63 + 16) = v70;
    v71 = v115;
    _os_log_impl(&_mh_execute_header, v115, v119, "Analyzing full content SKIP {isPreviewSensitive: %{BOOL}d, senderIsMe: %{BOOL}d, askRequest.type: %s", v63, 0x18u);
    sub_10000C60C(v112);
  }

  else
  {
    v72 = *(v0 + 272) + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_log;
    v71 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v71, v73))
    {

      sub_1003C3F0C(v4, v6, 0);
      goto LABEL_17;
    }

    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v122 = v75;
    *v74 = 136315138;
    v76 = sub_100498E20(v4, v6, 0);
    v78 = v77;
    sub_1003C3F0C(v4, v6, 0);
    v79 = sub_10000C4E4(v76, v78, &v122);

    *(v74 + 4) = v79;
    _os_log_impl(&_mh_execute_header, v71, v73, "Analyzing full content SKIP {userSafetyMode: %s}", v74, 0xCu);
    sub_10000C60C(v75);
  }

LABEL_17:
  (*(*(v0 + 400) + 16))(*(v0 + 248), *(v0 + 264), *(v0 + 392));
  v82 = *(v0 + 504);
  v81 = *(v0 + 512);
  v83 = *(v0 + 496);
  v84 = *(v0 + 472);
  v85 = *(v0 + 448);
  v87 = *(v0 + 416);
  v86 = *(v0 + 424);
  v88 = *(v0 + 408);
  v89 = *(v0 + 384);
  v108 = *(v0 + 360);
  v110 = *(v0 + 336);
  v113 = *(v0 + 312);
  v116 = *(v0 + 288);
  v120 = *(v0 + 280);
  sub_10000C60C(v121);

  v90 = *(v0 + 8);

  return v90(0);
}

uint64_t sub_100514E0C()
{
  v2 = *v1;
  v3 = *(*v1 + 664);
  v8 = *v1;

  if (v0)
  {
    v4 = *(v2 + 520);
    sub_1003C3F0C(*(v2 + 528), *(v2 + 536), *(v2 + 235));
    v5 = sub_100516F68;
    v6 = v4;
  }

  else
  {
    v6 = *(v2 + 520);
    v5 = sub_100514F38;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100514F38()
{
  v1 = *(v0 + 224);
  if (*(v0 + 232))
  {
    (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
    v2 = async function pointer to SFProgressTask.finalValue.getter[1];
    v3 = swift_task_alloc();
    *(v0 + 672) = v3;
    *v3 = v0;
    v3[1] = sub_1005151BC;
    v4 = *(v0 + 384);
    v5 = *(v0 + 368);

    return SFProgressTask.finalValue.getter(v0 + 233, v5);
  }

  else
  {
    v33 = *(v0 + 640);
    v34 = *(v0 + 648);
    v28 = *(v0 + 624);
    v29 = *(v0 + 632);
    v26 = *(v0 + 236);
    v23 = *(v0 + 608);
    v24 = *(v0 + 616);
    v6 = *(v0 + 600);
    v7 = *(v0 + 576);
    v32 = *(v0 + 560);
    v31 = *(v0 + 552);
    v27 = *(v0 + 512);
    v30 = *(v0 + 480);
    v8 = *(v0 + 360);
    v10 = *(v0 + 336);
    v9 = *(v0 + 344);
    v11 = *(v0 + 320);
    v25 = *(v0 + 272);
    v12 = *(v0 + 256);
    v13 = v6[12];
    v14 = v6[16];
    v15 = v6[20];
    (*(v0 + 568))(v10, *(v0 + 264), *(v0 + 392));
    *(v10 + v13) = v12;
    *(v10 + v14) = v1;
    v23(v10 + v15, v8, v9);
    v28(v10, v26, v11);

    sub_100687AF8(v10, v27);
    v33(v10, v11);
    v31(v27, v30);
    v16 = *(v0 + 656);
    v17 = *(v0 + 520);
    v18 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
    v19 = swift_task_alloc();
    *(v0 + 664) = v19;
    *v19 = v0;
    v19[1] = sub_100514E0C;
    v20 = *(v0 + 312);
    v21 = *(v0 + 296);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 224, v17, v16, v21, v0 + 240);
  }
}

uint64_t sub_1005151BC()
{
  v2 = *v1;
  v3 = *(*v1 + 672);
  v8 = *v1;
  *(*v1 + 680) = v0;

  if (v0)
  {
    v4 = *(v2 + 520);
    sub_1003C3F0C(*(v2 + 528), *(v2 + 536), *(v2 + 235));
    v5 = sub_100517200;
    v6 = v4;
  }

  else
  {
    v6 = *(v2 + 520);
    v5 = sub_1005152EC;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1005152EC()
{
  v122 = v0;
  v1 = *(v0 + 233);
  v2 = *(v0 + 272) + *(v0 + 584);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Analyzing full content END {isSensitive: %{BOOL}d}", v5, 8u);
  }

  v6 = *(v0 + 272);

  swift_beginAccess();
  SFAirDropReceive.Transfer.Metrics.sensitive.setter();
  swift_endAccess();
  if (!v1)
  {
    v37 = *(v0 + 584);
    v38 = *(v0 + 536);
    v39 = *(v0 + 528);
    v40 = *(v0 + 272);
    v41 = *(v0 + 235);
    sub_100530B64(v39, v38, v41);
    v42 = Logger.logObject.getter();
    LOBYTE(v37) = static os_log_type_t.default.getter();
    sub_1003C3F0C(v39, v38, v41);
    v101 = v37;
    v43 = os_log_type_enabled(v42, v37);
    v44 = *(v0 + 235);
    v45 = *(v0 + 536);
    v46 = *(v0 + 528);
    v47 = *(v0 + 424);
    v49 = *(v0 + 392);
    v48 = *(v0 + 400);
    v50 = *(v0 + 376);
    v51 = *(v0 + 368);
    v113 = v51;
    v118 = *(v0 + 384);
    v52 = *(v0 + 344);
    v53 = *(v0 + 352);
    v105 = v52;
    v108 = *(v0 + 360);
    if (v43)
    {
      loga = v42;
      v54 = swift_slowAlloc();
      v98 = v48;
      v55 = swift_slowAlloc();
      v121 = v55;
      *v54 = 136315394;
      v92 = v49;
      v95 = v47;
      v56 = sub_100498E20(v46, v45, v44);
      v58 = v57;
      sub_1003C3F0C(v46, v45, v44);
      v59 = sub_10000C4E4(v56, v58, &v121);

      *(v54 + 4) = v59;
      *(v54 + 12) = 1024;
      *(v54 + 14) = 0;
      _os_log_impl(&_mh_execute_header, loga, v101, "Sensitive preview step SKIP {userSafetyMode: %s, isSensitive: %{BOOL}d}", v54, 0x12u);
      sub_10000C60C(v55);

      (*(v53 + 8))(v108, v105);
      (*(v50 + 8))(v118, v113);
      (*(v98 + 8))(v95, v92);
    }

    else
    {

      sub_1003C3F0C(v46, v45, v44);
      (*(v53 + 8))(v108, v105);
      (*(v50 + 8))(v118, v113);
      (*(v48 + 8))(v47, v49);
    }

    v60 = *(v0 + 576);
    (*(v0 + 568))(*(v0 + 248), *(v0 + 264), *(v0 + 392));
    v61 = *(v0 + 504);
    v62 = *(v0 + 512);
    v63 = *(v0 + 496);
    v64 = *(v0 + 472);
    v65 = *(v0 + 448);
    v67 = *(v0 + 416);
    v66 = *(v0 + 424);
    v68 = *(v0 + 408);
    v69 = *(v0 + 384);
    v102 = *(v0 + 360);
    v106 = *(v0 + 336);
    v109 = *(v0 + 312);
    v114 = *(v0 + 288);
    v119 = *(v0 + 280);
    sub_10000C60C((v0 + 16));

    v36 = *(v0 + 8);
LABEL_12:

    return v36(0);
  }

  v7 = *(v0 + 680);
  v8 = *(v0 + 544);
  v9 = *(v0 + 504);
  v10 = *(v0 + 288);
  sub_1002A9938(*(v0 + 272) + *(v0 + 592), v0 + 96);
  v11 = *(v0 + 120);
  v12 = *(v0 + 128);
  sub_10002CDC0((v0 + 96), v11);
  CurrentValueSubject.value.getter();
  sub_10058ADEC(v9, v11, v12);
  if (v7)
  {
    v13 = *(v0 + 560);
    v14 = *(v0 + 552);
    v15 = *(v0 + 504);
    v16 = *(v0 + 480);
    v17 = *(v0 + 376);
    v18 = *(v0 + 360);
    v111 = *(v0 + 368);
    v116 = *(v0 + 384);
    v20 = *(v0 + 344);
    v19 = *(v0 + 352);
    sub_1003C3F0C(*(v0 + 528), *(v0 + 536), *(v0 + 235));
    v14(v15, v16);
    (*(v19 + 8))(v18, v20);
    (*(v17 + 8))(v116, v111);
    sub_10000C60C((v0 + 96));
    v21 = *(v0 + 584);
    v22 = *(v0 + 272);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, "Analyzing full content END - Failure {%@}", v25, 0xCu);
      sub_100005508(v26, &qword_100975400, &qword_1007F65D0);
    }

    v28 = *(v0 + 504);
    v29 = *(v0 + 512);
    v30 = *(v0 + 496);
    v31 = *(v0 + 472);
    v32 = *(v0 + 424);
    log = *(v0 + 448);
    v91 = *(v0 + 416);
    v33 = *(v0 + 400);
    v34 = v23;
    v35 = *(v0 + 392);
    v94 = *(v0 + 408);
    v97 = *(v0 + 384);
    v100 = *(v0 + 360);
    v104 = *(v0 + 336);
    v107 = *(v0 + 312);
    v112 = *(v0 + 288);
    v117 = *(v0 + 280);

    swift_willThrow();
    (*(v33 + 8))(v32, v35);
    sub_10000C60C((v0 + 16));

    v36 = *(v0 + 8);
    goto LABEL_12;
  }

  v115 = *(v0 + 640);
  v120 = *(v0 + 648);
  v93 = *(v0 + 624);
  v96 = *(v0 + 632);
  v71 = *(v0 + 576);
  v72 = *(v0 + 568);
  v73 = *(v0 + 560);
  v110 = *(v0 + 552);
  v74 = *(v0 + 480);
  v99 = v74;
  v103 = *(v0 + 512);
  v75 = *(v0 + 392);
  v76 = *(v0 + 336);
  v77 = *(v0 + 320);
  v78 = *(v0 + 288);
  v79 = *(v0 + 264);
  v87 = v78;
  logb = *(v0 + 272);
  v80 = *(v0 + 256);
  (v110)(*(v0 + 504));
  sub_10000C60C((v0 + 96));
  v81 = sub_10028088C(&qword_100974E80, &qword_100808F40);
  *(v0 + 688) = v81;
  v82 = *(v81 + 48);
  v83 = *(v81 + 64);
  v72(v76, v79, v75);
  *(v76 + v82) = v80;
  v84 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
  *(v0 + 696) = v84;
  v85 = *(v84 - 8);
  v86 = *(v85 + 16);
  *(v0 + 704) = v86;
  *(v0 + 712) = (v85 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v86(v76 + v83, v87, v84);
  v93(v76, enum case for SFAirDropReceive.Transfer.State.waitingForSensitiveContentResponse(_:), v77);

  sub_100687AF8(v76, v103);
  v115(v76, v77);
  v110(v103, v99);

  return _swift_task_switch(sub_100515B30, 0, 0);
}

uint64_t sub_100515B30()
{
  v1 = v0[36];
  v2 = swift_task_alloc();
  v0[90] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[91] = v3;
  *(v3 + 16) = v1;
  v4 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v5 = swift_task_alloc();
  v0[92] = v5;
  *v5 = v0;
  v5[1] = sub_100515C38;
  v6 = v0[52];
  v7 = v0[49];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v6, &unk_100808F48, v2, sub_1002E3960, v3, 0, 0, v7);
}

uint64_t sub_100515C38()
{
  v2 = *v1;
  v3 = *(*v1 + 736);
  v4 = *v1;
  *(v2 + 744) = v0;

  v5 = *(v2 + 728);
  v6 = *(v2 + 720);
  if (v0)
  {
    v7 = *(v2 + 520);
    sub_1003C3F0C(*(v2 + 528), *(v2 + 536), *(v2 + 235));

    v8 = sub_100516590;
  }

  else
  {
    v7 = *(v2 + 520);

    v8 = sub_100515DBC;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100515DBC()
{
  v119 = v0;
  v1 = *(v0 + 235);
  v2 = *(v0 + 416);
  v3 = *(v0 + 424);
  v4 = *(v0 + 392);
  v5 = *(v0 + 400);
  v6 = *(v5 + 8);
  *(v0 + 752) = v6;
  *(v0 + 760) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v4);
  v7 = *(v5 + 32);
  *(v0 + 768) = v7;
  *(v0 + 776) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v7(v3, v2, v4);
  if (v1 != 2)
  {
    v41 = *(v0 + 584);
    v42 = *(v0 + 536);
    v43 = *(v0 + 528);
    v44 = *(v0 + 272);
    v45 = *(v0 + 235);
    sub_100530B64(v43, v42, v45);
    v46 = Logger.logObject.getter();
    LOBYTE(v44) = static os_log_type_t.default.getter();
    sub_1003C3F0C(v43, v42, v45);
    v99 = v44;
    log = v46;
    v47 = os_log_type_enabled(v46, v44);
    v48 = *(v0 + 235);
    v49 = *(v0 + 536);
    v50 = *(v0 + 528);
    v51 = *(v0 + 376);
    v52 = *(v0 + 384);
    v115 = *(v0 + 368);
    v53 = *(v0 + 344);
    v54 = *(v0 + 352);
    v103 = v53;
    v107 = *(v0 + 360);
    v55 = *(v0 + 288);
    if (v47)
    {
      v96 = *(v0 + 384);
      v56 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v118 = v87;
      *v56 = 136315394;
      v90 = v51;
      v93 = v55;
      v57 = sub_100498E20(v50, v49, v48);
      v59 = v58;
      sub_1003C3F0C(v50, v49, v48);
      v60 = sub_10000C4E4(v57, v59, &v118);

      *(v56 + 4) = v60;
      *(v56 + 12) = 1024;
      *(v56 + 14) = 1;
      _os_log_impl(&_mh_execute_header, log, v99, "Intervention step SKIP {userSafetyMode: %s, isSensitive: %{BOOL}d}", v56, 0x12u);
      sub_10000C60C(v87);

      (*(v54 + 8))(v107, v103);
      (*(v90 + 8))(v96, v115);
      v61 = v93;
    }

    else
    {

      sub_1003C3F0C(v50, v49, v48);
      (*(v54 + 8))(v107, v103);
      (*(v51 + 8))(v52, v115);
      v61 = v55;
    }

    sub_100005508(v61, &qword_100976908, &unk_100801D60);
    v7(*(v0 + 248), *(v0 + 424), *(v0 + 392));
    v62 = *(v0 + 504);
    v63 = *(v0 + 512);
    v64 = *(v0 + 496);
    v65 = *(v0 + 472);
    v66 = *(v0 + 448);
    v68 = *(v0 + 416);
    v67 = *(v0 + 424);
    v69 = *(v0 + 408);
    v70 = *(v0 + 384);
    v100 = *(v0 + 360);
    v104 = *(v0 + 336);
    v108 = *(v0 + 312);
    logb = *(v0 + 288);
    v116 = *(v0 + 280);
    sub_10000C60C((v0 + 16));

    v39 = *(v0 + 8);
    v40 = 1;
LABEL_10:

    return v39(v40);
  }

  v8 = *(v0 + 744);
  v9 = *(v0 + 592);
  v10 = *(v0 + 544);
  v11 = *(v0 + 496);
  v12 = *(v0 + 424);
  v14 = *(v0 + 272);
  v13 = *(v0 + 280);
  sub_1003C3F0C(*(v0 + 528), *(v0 + 536), 2u);
  sub_1002A9938(v14 + v9, v0 + 136);
  v15 = *(v0 + 168);
  sub_10002CDC0((v0 + 136), *(v0 + 160));
  CurrentValueSubject.value.getter();
  sub_100589278(v11, v12, v13);
  if (v8)
  {
    v16 = *(v0 + 560);
    v18 = *(v0 + 376);
    v17 = *(v0 + 384);
    v20 = *(v0 + 360);
    v19 = *(v0 + 368);
    v21 = *(v0 + 344);
    v22 = *(v0 + 352);
    v23 = *(v0 + 288);
    (*(v0 + 552))(*(v0 + 496), *(v0 + 480));
    (*(v22 + 8))(v20, v21);
    (*(v18 + 8))(v17, v19);
    sub_100005508(v23, &qword_100976908, &unk_100801D60);
    sub_10000C60C((v0 + 136));
    v24 = *(v0 + 584);
    v25 = *(v0 + 272);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      swift_errorRetain();
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v30;
      *v29 = v30;
      _os_log_impl(&_mh_execute_header, v26, v27, "Analyzing full content END - Failure {%@}", v28, 0xCu);
      sub_100005508(v29, &qword_100975400, &qword_1007F65D0);
    }

    v31 = *(v0 + 504);
    v32 = *(v0 + 512);
    v33 = *(v0 + 496);
    v34 = *(v0 + 472);
    v35 = *(v0 + 424);
    v86 = *(v0 + 448);
    v89 = *(v0 + 416);
    v36 = *(v0 + 400);
    v37 = v26;
    v38 = *(v0 + 392);
    v92 = *(v0 + 408);
    v95 = *(v0 + 384);
    v98 = *(v0 + 360);
    v102 = *(v0 + 336);
    v106 = *(v0 + 312);
    loga = *(v0 + 288);
    v114 = *(v0 + 280);

    swift_willThrow();
    (*(v36 + 8))(v35, v38);
    sub_10000C60C((v0 + 16));

    v39 = *(v0 + 8);
    v40 = 0;
    goto LABEL_10;
  }

  v88 = *(v0 + 704);
  v91 = *(v0 + 712);
  v85 = *(v0 + 696);
  v72 = *(v0 + 688);
  logc = *(v0 + 640);
  v117 = *(v0 + 648);
  v94 = *(v0 + 624);
  v97 = *(v0 + 632);
  v82 = *(v0 + 568);
  v83 = *(v0 + 576);
  v73 = *(v0 + 552);
  v105 = *(v0 + 512);
  v109 = *(v0 + 560);
  v101 = *(v0 + 480);
  v74 = *(v0 + 424);
  v75 = *(v0 + 392);
  v76 = *(v0 + 336);
  v77 = *(v0 + 320);
  v78 = *(v0 + 280);
  v84 = *(v0 + 272);
  v79 = *(v0 + 256);
  (v73)(*(v0 + 496));
  sub_10000C60C((v0 + 136));
  v80 = *(v72 + 48);
  v81 = *(v72 + 64);
  v82(v76, v74, v75);
  *(v76 + v80) = v79;
  v88(v76 + v81, v78, v85);
  v94(v76, enum case for SFAirDropReceive.Transfer.State.waitingForSensitiveContentIntervention(_:), v77);

  sub_100687AF8(v76, v105);
  (logc)(v76, v77);
  v73(v105, v101);

  return _swift_task_switch(sub_100516824, 0, 0);
}

uint64_t sub_100516590()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[46];
  v4 = v0[36];
  (*(v0[44] + 8))(v0[45], v0[43]);
  (*(v2 + 8))(v1, v3);
  sub_100005508(v4, &qword_100976908, &unk_100801D60);
  v5 = v0[93];
  v6 = v0[73];
  v7 = v0[34];
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "Analyzing full content END - Failure {%@}", v10, 0xCu);
    sub_100005508(v11, &qword_100975400, &qword_1007F65D0);
  }

  v14 = v0[63];
  v13 = v0[64];
  v15 = v0[62];
  v16 = v0[59];
  v17 = v0[53];
  v23 = v0[56];
  v24 = v0[52];
  v18 = v8;
  v20 = v0[49];
  v19 = v0[50];
  v25 = v0[51];
  v26 = v0[48];
  v27 = v0[45];
  v28 = v0[42];
  v29 = v0[39];
  v30 = v0[36];
  v31 = v0[35];

  swift_willThrow();
  (*(v19 + 8))(v17, v20);
  sub_10000C60C(v0 + 2);

  v21 = v0[1];

  return v21(0);
}

uint64_t sub_100516824()
{
  v1 = v0[35];
  v2 = swift_task_alloc();
  v0[98] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[99] = v3;
  *(v3 + 16) = v1;
  v4 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v5 = swift_task_alloc();
  v0[100] = v5;
  *v5 = v0;
  v5[1] = sub_10051692C;
  v6 = v0[51];
  v7 = v0[49];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v6, &unk_100808F50, v2, sub_1002E3960, v3, 0, 0, v7);
}

uint64_t sub_10051692C()
{
  v2 = *v1;
  v3 = *(*v1 + 800);
  v11 = *v1;
  *(*v1 + 808) = v0;

  if (v0)
  {
    v4 = sub_100516C44;
    v5 = 0;
  }

  else
  {
    v6 = *(v2 + 792);
    v7 = *(v2 + 784);
    v8 = *(v2 + 760);
    v9 = *(v2 + 520);
    (*(v2 + 752))(*(v2 + 408), *(v2 + 392));

    v4 = sub_100516A80;
    v5 = v9;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100516A80()
{
  v25 = v0[97];
  v1 = v0[96];
  v2 = v0[53];
  v4 = v0[48];
  v3 = v0[49];
  v5 = v0[46];
  v6 = v0[47];
  v8 = v0[35];
  v7 = v0[36];
  v9 = v0[31];
  (*(v0[44] + 8))(v0[45], v0[43]);
  (*(v6 + 8))(v4, v5);
  sub_100005508(v8, &qword_100976908, &unk_100801D60);
  sub_100005508(v7, &qword_100976908, &unk_100801D60);
  v1(v9, v2, v3);
  v10 = v0[63];
  v11 = v0[64];
  v12 = v0[62];
  v13 = v0[59];
  v14 = v0[56];
  v16 = v0[52];
  v15 = v0[53];
  v17 = v0[51];
  v18 = v0[48];
  v21 = v0[45];
  v22 = v0[42];
  v23 = v0[39];
  v24 = v0[36];
  v26 = v0[35];
  sub_10000C60C(v0 + 2);

  v19 = v0[1];

  return v19(1);
}

uint64_t sub_100516C44()
{
  v1 = v0[99];
  v2 = v0[98];
  v3 = v0[65];

  return _swift_task_switch(sub_100516CBC, v3, 0);
}

uint64_t sub_100516CBC()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[46];
  v5 = v0[35];
  v4 = v0[36];
  (*(v0[44] + 8))(v0[45], v0[43]);
  (*(v2 + 8))(v1, v3);
  sub_100005508(v5, &qword_100976908, &unk_100801D60);
  sub_100005508(v4, &qword_100976908, &unk_100801D60);
  v6 = v0[101];
  v7 = v0[73];
  v8 = v0[34];
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, "Analyzing full content END - Failure {%@}", v11, 0xCu);
    sub_100005508(v12, &qword_100975400, &qword_1007F65D0);
  }

  v15 = v0[63];
  v14 = v0[64];
  v16 = v0[62];
  v17 = v0[59];
  v18 = v0[53];
  v24 = v0[56];
  v25 = v0[52];
  v19 = v9;
  v21 = v0[49];
  v20 = v0[50];
  v26 = v0[51];
  v27 = v0[48];
  v28 = v0[45];
  v29 = v0[42];
  v30 = v0[39];
  v31 = v0[36];
  v32 = v0[35];

  swift_willThrow();
  (*(v20 + 8))(v18, v21);
  sub_10000C60C(v0 + 2);

  v22 = v0[1];

  return v22(0);
}

uint64_t sub_100516F68()
{
  v2 = v0[47];
  v1 = v0[48];
  v4 = v0[45];
  v3 = v0[46];
  v5 = v0[43];
  v6 = v0[44];
  (*(v0[38] + 8))(v0[39], v0[37]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[30];
  v8 = v0[73];
  v9 = v0[34];
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&_mh_execute_header, v10, v11, "Analyzing full content END - Failure {%@}", v12, 0xCu);
    sub_100005508(v13, &qword_100975400, &qword_1007F65D0);
  }

  v16 = v0[63];
  v15 = v0[64];
  v17 = v0[62];
  v18 = v0[59];
  v19 = v0[53];
  v25 = v0[56];
  v26 = v0[52];
  v20 = v10;
  v22 = v0[49];
  v21 = v0[50];
  v27 = v0[51];
  v28 = v0[48];
  v29 = v0[45];
  v30 = v0[42];
  v31 = v0[39];
  v32 = v0[36];
  v33 = v0[35];

  swift_willThrow();
  (*(v21 + 8))(v19, v22);
  sub_10000C60C(v0 + 2);

  v23 = v0[1];

  return v23(0);
}

uint64_t sub_100517200()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[46];
  (*(v0[44] + 8))(v0[45], v0[43]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[85];
  v5 = v0[73];
  v6 = v0[34];
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Analyzing full content END - Failure {%@}", v9, 0xCu);
    sub_100005508(v10, &qword_100975400, &qword_1007F65D0);
  }

  v13 = v0[63];
  v12 = v0[64];
  v14 = v0[62];
  v15 = v0[59];
  v16 = v0[53];
  v22 = v0[56];
  v23 = v0[52];
  v17 = v7;
  v19 = v0[49];
  v18 = v0[50];
  v24 = v0[51];
  v25 = v0[48];
  v26 = v0[45];
  v27 = v0[42];
  v28 = v0[39];
  v29 = v0[36];
  v30 = v0[35];

  swift_willThrow();
  (*(v18 + 8))(v16, v19);
  sub_10000C60C(v0 + 2);

  v20 = v0[1];

  return v20(0);
}

uint64_t sub_100517478(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  *(v8 + 560) = v7;
  *(v8 + 552) = a6;
  *(v8 + 544) = a5;
  *(v8 + 536) = a4;
  *(v8 + 528) = a7;
  *(v8 + 1106) = a3;
  *(v8 + 520) = a2;
  *(v8 + 512) = a1;
  v9 = type metadata accessor for SFAirDropReceive.Failure();
  *(v8 + 568) = v9;
  v10 = *(v9 - 8);
  *(v8 + 576) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 584) = swift_task_alloc();
  *(v8 + 592) = swift_task_alloc();
  v12 = *(*(sub_10028088C(&qword_100982508, &unk_100808D50) - 8) + 64) + 15;
  *(v8 + 600) = swift_task_alloc();
  v13 = type metadata accessor for SFAirDropReceive.Transfer.State();
  *(v8 + 608) = v13;
  v14 = *(v13 - 8);
  *(v8 + 616) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 624) = swift_task_alloc();
  *(v8 + 632) = swift_task_alloc();
  v16 = *(*(sub_10028088C(&qword_100976908, &unk_100801D60) - 8) + 64) + 15;
  *(v8 + 640) = swift_task_alloc();
  v17 = sub_10028088C(&qword_100976900, &unk_1007FD250);
  *(v8 + 648) = v17;
  v18 = *(v17 - 8);
  *(v8 + 656) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 664) = swift_task_alloc();
  *(v8 + 672) = swift_task_alloc();
  v20 = type metadata accessor for SFAirDropReceive.ItemDestination();
  *(v8 + 680) = v20;
  v21 = *(v20 - 8);
  *(v8 + 688) = v21;
  v22 = *(v21 + 64) + 15;
  *(v8 + 696) = swift_task_alloc();
  *(v8 + 704) = swift_task_alloc();
  *(v8 + 712) = swift_task_alloc();
  *(v8 + 720) = swift_task_alloc();
  *(v8 + 728) = swift_task_alloc();
  *(v8 + 736) = swift_task_alloc();
  *(v8 + 744) = swift_task_alloc();
  v23 = type metadata accessor for SFPlatform();
  *(v8 + 752) = v23;
  v24 = *(v23 - 8);
  *(v8 + 760) = v24;
  v25 = *(v24 + 64) + 15;
  *(v8 + 768) = swift_task_alloc();
  v26 = type metadata accessor for SFAirDrop.TransferType();
  *(v8 + 776) = v26;
  v27 = *(v26 - 8);
  *(v8 + 784) = v27;
  v28 = *(v27 + 64) + 15;
  *(v8 + 792) = swift_task_alloc();
  *(v8 + 800) = swift_task_alloc();
  v29 = type metadata accessor for SFAirDropReceive.AskRequest();
  *(v8 + 808) = v29;
  v30 = *(v29 - 8);
  *(v8 + 816) = v30;
  v31 = *(v30 + 64) + 15;
  *(v8 + 824) = swift_task_alloc();
  *(v8 + 832) = swift_task_alloc();
  v32 = type metadata accessor for SFAirDropReceive.Transfer();
  *(v8 + 840) = v32;
  v33 = *(v32 - 8);
  *(v8 + 848) = v33;
  v34 = *(v33 + 64) + 15;
  *(v8 + 856) = swift_task_alloc();
  *(v8 + 864) = swift_task_alloc();
  *(v8 + 872) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v35 = static AirDropActor.shared;
  *(v8 + 880) = static AirDropActor.shared;

  return _swift_task_switch(sub_10051792C, v35, 0);
}

uint64_t sub_10051792C()
{
  v199 = v0;
  v1 = *(v0 + 872);
  v2 = *(v0 + 848);
  v3 = *(v0 + 840);
  v4 = *(v0 + 832);
  v175 = *(v0 + 864);
  v179 = *(v0 + 824);
  v5 = *(v0 + 816);
  v195 = *(v0 + 808);
  v6 = *(v0 + 800);
  v183 = *(v0 + 792);
  v187 = *(v0 + 784);
  v171 = *(v0 + 776);
  *(v0 + 888) = *(*(v0 + 560) + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_subject);
  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v7 = *(v2 + 8);
  *(v0 + 896) = v7;
  *(v0 + 904) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v3);
  SFAirDropReceive.AskRequest.type.getter();
  v192 = *(v5 + 8);
  v192(v4, v195);
  v164 = SFAirDrop.TransferType.isPeerPayment.getter();
  v8 = *(v187 + 8);
  v8(v6, v171);
  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v9 = v175;
  v176 = v7;
  v7(v9, v3);
  SFAirDropReceive.AskRequest.type.getter();
  v192(v179, v195);
  v10 = SFAirDrop.TransferType.isLinks.getter();
  v8(v183, v171);
  if ((v10 & 1) == 0)
  {
    v11 = *(v0 + 872);
    v12 = *(v0 + 840);
    v13 = *(v0 + 832);
    v14 = *(v0 + 808);
    v15 = *(v0 + 800);
    v188 = *(v0 + 776);
    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.askRequest.getter();
    v176(v11, v12);
    SFAirDropReceive.AskRequest.type.getter();
    v192(v13, v14);
    v16 = SFAirDrop.TransferType.isFiles.getter();
    v8(v15, v188);
    if (((v16 | v164) & 1) == 0)
    {
      v53 = *(v0 + 560);

      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = *(v0 + 872);
        v57 = *(v0 + 832);
        v168 = *(v0 + 840);
        v172 = *(v0 + 808);
        v58 = *(v0 + 800);
        v180 = *(v0 + 776);
        v59 = swift_slowAlloc();
        v184 = swift_slowAlloc();
        v198[0] = v184;
        *v59 = 136315138;
        CurrentValueSubject.value.getter();
        SFAirDropReceive.Transfer.askRequest.getter();
        v176(v56, v168);
        SFAirDropReceive.AskRequest.type.getter();
        v192(v57, v172);
        sub_100530ED4(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType);
        v60 = dispatch thunk of CustomStringConvertible.description.getter();
        v62 = v61;
        v8(v58, v180);
        v63 = sub_10000C4E4(v60, v62, v198);

        *(v59 + 4) = v63;
        _os_log_impl(&_mh_execute_header, v54, v55, "Ask open/move SKIP. {type: %s}", v59, 0xCu);
        sub_10000C60C(v184);
      }

      goto LABEL_18;
    }
  }

  v17 = *(v0 + 560);
  v18 = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_contentHandler;
  *(v0 + 912) = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_contentHandler;
  swift_beginAccess();
  sub_1002A9938(v17 + v18, v0 + 56);
  *(v0 + 920) = sub_10028088C(&qword_1009892F0, &qword_1007F9888);
  sub_10028088C(&qword_100976910, &unk_100808E80);
  if (!swift_dynamicCast())
  {
    v43 = *(v0 + 560);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
    sub_100005508(v0 + 96, &qword_100976918, &qword_1007F9890);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v198[0] = v47;
      *v46 = 136315138;
      sub_1002A9938(v17 + v18, v0 + 136);
      sub_10002CDC0((v0 + 136), *(v0 + 160));
      DynamicType = swift_getDynamicType();
      v49 = *(v0 + 168);
      sub_10000C60C((v0 + 136));
      *(v0 + 480) = DynamicType;
      *(v0 + 488) = v49;
      sub_10028088C(&qword_100976920, &qword_100808E90);
      v50 = String.init<A>(describing:)();
      v52 = sub_10000C4E4(v50, v51, v198);

      *(v46 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v44, v45, "Ask open/move SKIP. {handler: %s}", v46, 0xCu);
      sub_10000C60C(v47);
    }

LABEL_18:
    v64 = *(v0 + 544);
    v65 = *(v0 + 520);
    (*(*(v0 + 688) + 16))(*(v0 + 512), *(v0 + 552), *(v0 + 680));
    v66 = _s15ExchangeRequestVMa(0);
    (*(*(v66 - 8) + 56))(v65, 1, 1, v66);

LABEL_19:
    v196 = *(v0 + 544);
    v67 = *(v0 + 872);
    v68 = *(v0 + 864);
    v69 = *(v0 + 856);
    v70 = *(v0 + 832);
    v71 = *(v0 + 824);
    v72 = *(v0 + 800);
    v73 = *(v0 + 792);
    v74 = *(v0 + 768);
    v75 = *(v0 + 744);
    v76 = *(v0 + 736);
    v160 = *(v0 + 728);
    v161 = *(v0 + 720);
    v162 = *(v0 + 712);
    v163 = *(v0 + 704);
    v165 = *(v0 + 696);
    v166 = *(v0 + 672);
    v169 = *(v0 + 664);
    v173 = *(v0 + 640);
    v177 = *(v0 + 632);
    v181 = *(v0 + 624);
    v185 = *(v0 + 600);
    v189 = *(v0 + 592);
    v193 = *(v0 + 584);

    v77 = *(v0 + 8);

    return v77(0, v196);
  }

  v19 = *(v0 + 768);
  v20 = *(v0 + 760);
  v21 = *(v0 + 752);
  v22 = *(v0 + 528);
  sub_1000121F8((v0 + 96), v0 + 16);
  sub_1002A9938(v17 + v18, v0 + 176);
  v23 = *(v0 + 200);
  v24 = *(v0 + 208);
  sub_10002CDC0((v0 + 176), v23);
  v25 = (*(v24 + 24))(v23, v24);
  *(v0 + 1107) = v25 & 1;
  sub_10000C60C((v0 + 176));
  sub_1002A9938(v17 + v18, v0 + 216);
  v26 = *(v0 + 240);
  v27 = *(v0 + 248);
  sub_10002CDC0((v0 + 216), v26);
  v28 = (*(v27 + 16))(v26, v27);
  *(v0 + 1108) = v28 & 1;
  sub_10000C60C((v0 + 216));
  v29 = v22 < 8.0;
  static SFPlatform.macOS.getter();
  v30 = static SFPlatform.isPlatform(_:)();
  v31 = *(v20 + 8);
  *(v0 + 928) = v31;
  *(v0 + 936) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v31(v19, v21);
  if (v30)
  {
    if (v22 < 8.0)
    {
      if (((v25 | v28) & 1) == 0 && (*(v0 + 1106) & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }

    v79 = *(v0 + 744);
    v80 = *(v0 + 688);
    v81 = *(v0 + 680);
    v82 = *(v0 + 552);
    (*(v80 + 104))(v79, enum case for SFAirDropReceive.ItemDestination.default(_:), v81);
    sub_100530ED4(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination);
    LODWORD(v82) = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v80 + 8))(v79, v81);
    v29 = v82 ^ 1;
  }

  if (((v25 | (v28 | *(v0 + 1106)) & v29) & 1) == 0)
  {
LABEL_8:
    v32 = *(v0 + 560) + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_log;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = *(v0 + 528);
      v36 = *(v0 + 1106);
      v37 = swift_slowAlloc();
      *v37 = 67109888;
      *(v37 + 4) = v25 & 1;
      *(v37 + 8) = 1024;
      *(v37 + 10) = v28 & 1;
      *(v37 + 14) = 1024;
      *(v37 + 16) = v36;
      *(v37 + 20) = 2048;
      *(v37 + 22) = v35;
      _os_log_impl(&_mh_execute_header, v33, v34, "Not auto-opening URLs {shouldEndAfterAutoOpen: %{BOOL}d, supportsAutoOpen: %{BOOL}d, requestedAutoOpen: %{BOOL}d, transferImportSeconds: %f}", v37, 0x1Eu);
    }

    *(v0 + 1109) = 0;
    v38 = *(v0 + 920);
    sub_1002A9938(*(v0 + 560) + *(v0 + 912), v0 + 296);
    sub_10028088C(&qword_100982538, &qword_100808E98);
    if (swift_dynamicCast())
    {
      v39 = *(v0 + 544);
      sub_1000121F8((v0 + 336), v0 + 256);
      v40 = *(v0 + 280);
      v41 = *(v0 + 288);
      sub_10002CDC0((v0 + 256), v40);
      v42 = (*(v41 + 8))(v39, v40, v41);
      sub_10000C60C((v0 + 256));
    }

    else
    {
      *(v0 + 368) = 0;
      *(v0 + 336) = 0u;
      *(v0 + 352) = 0u;
      sub_100005508(v0 + 336, &qword_100982540, &unk_100808EA0);
      v42 = 0;
    }

    v101 = *(v0 + 1107);
    v197 = *(v0 + 904);
    v102 = *(v0 + 896);
    v103 = *(v0 + 888);
    v104 = *(v0 + 872);
    v105 = *(v0 + 840);
    sub_1002A9938(*(v0 + 560) + *(v0 + 912), v0 + 376);
    v106 = *(v0 + 400);
    v107 = *(v0 + 408);
    sub_10002CDC0((v0 + 376), v106);
    CurrentValueSubject.value.getter();
    LOBYTE(v103) = sub_10058C73C(v104, v101, 0, v42 & 1, v106, v107);
    v102(v104, v105);
    sub_10000C60C((v0 + 376));
    if (v103)
    {
      v108 = *(v0 + 728);
      v109 = *(v0 + 688);
      v110 = *(v0 + 680);
      v111 = *(v0 + 560);
      v112 = *(v0 + 552);
      *(v0 + 992) = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_log;
      v113 = *(v109 + 16);
      *(v0 + 1000) = v113;
      *(v0 + 1008) = (v109 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v113(v108, v112, v110);
      v114 = Logger.logObject.getter();
      v115 = static os_log_type_t.default.getter();
      v194 = v113;
      if (os_log_type_enabled(v114, v115))
      {
        v116 = *(v0 + 744);
        v117 = *(v0 + 728);
        v118 = *(v0 + 688);
        v119 = *(v0 + 680);
        v120 = swift_slowAlloc();
        v190 = swift_slowAlloc();
        v198[0] = v190;
        *v120 = 67109378;
        *(v120 + 8) = 2080;
        v113(v116, v117, v119);
        v121 = String.init<A>(describing:)();
        v123 = v122;
        v124 = *(v118 + 8);
        v124(v117, v119);
        v125 = sub_10000C4E4(v121, v123, v198);

        *(v120 + 10) = v125;
        _os_log_impl(&_mh_execute_header, v114, v115, "Ask open/move START. {alreadyViewed: %{BOOL}d, destination: %s}", v120, 0x12u);
        sub_10000C60C(v190);
      }

      else
      {
        v129 = *(v0 + 728);
        v130 = *(v0 + 688);
        v131 = *(v0 + 680);

        v124 = *(v130 + 8);
        v124(v129, v131);
      }

      *(v0 + 1016) = v124;
      v132 = *(v0 + 888);
      v133 = *(v0 + 856);
      v134 = *(v0 + 640);
      v135 = *(v0 + 552);
      v136 = *(v0 + 544);
      v137 = *(v0 + 536);
      sub_1002A9938(*(v0 + 560) + *(v0 + 912), v0 + 416);
      v138 = *(v0 + 440);
      v139 = *(v0 + 448);
      sub_10002CDC0((v0 + 416), v138);
      CurrentValueSubject.value.getter();
      sub_100588474(v133, v136, 0, v135, v138, v139, v134);
      v140 = *(v0 + 904);
      v141 = *(v0 + 896);
      v142 = *(v0 + 680);
      v170 = v142;
      v174 = *(v0 + 640);
      v143 = *(v0 + 632);
      v144 = *(v0 + 616);
      v178 = *(v0 + 608);
      v182 = *(v0 + 840);
      v186 = *(v0 + 560);
      v191 = *(v0 + 872);
      v145 = *(v0 + 552);
      v167 = *(v0 + 544);
      v146 = *(v0 + 536);
      (v141)(*(v0 + 856));
      sub_10000C60C((v0 + 416));
      v147 = sub_10028088C(&unk_10097C670, &qword_100805110);
      v148 = v147[12];
      v149 = v147[16];
      v150 = v147[20];
      v194(v143, v145, v170);
      *(v143 + v148) = v146;
      *(v143 + v149) = v167;
      v151 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
      (*(*(v151 - 8) + 16))(v143 + v150, v174, v151);
      v152 = enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:);
      v153 = *(v144 + 104);
      *(v0 + 1024) = v153;
      *(v0 + 1032) = (v144 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v153(v143, v152, v178);

      sub_100687AF8(v143, v191);
      v141(v191, v182);
      v154 = swift_task_alloc();
      *(v0 + 1040) = v154;
      *v154 = v0;
      v154[1] = sub_10051A170;
      v155 = *(v0 + 720);
      v156 = *(v0 + 640);
      v157 = *(v0 + 600);
      v158 = *(v0 + 560);
      v159 = *(v0 + 552);

      return sub_10052DBB4(v155, v157, v156, v159);
    }

    v126 = *(v0 + 544);
    v127 = *(v0 + 520);
    (*(*(v0 + 688) + 16))(*(v0 + 512), *(v0 + 552), *(v0 + 680));
    v128 = _s15ExchangeRequestVMa(0);
    (*(*(v128 - 8) + 56))(v127, 1, 1, v128);

    sub_10000C60C((v0 + 16));
    goto LABEL_19;
  }

LABEL_24:
  v83 = (*(v0 + 560) + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_lockStateManager);
  v84 = v83[3];
  v85 = v83[4];
  sub_10002CDC0(v83, v84);
  if ((*(v85 + 8))(v84, v85))
  {
    v86 = *(v0 + 560);
    *(v0 + 944) = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_log;
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&_mh_execute_header, v87, v88, "Waiting for unlock before auto-opening...", v89, 2u);
    }

    v90 = *(v0 + 880);

    v91 = sub_100530ED4(&qword_100977C00, type metadata accessor for AirDropActor);
    v92 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v93 = swift_task_alloc();
    *(v0 + 952) = v93;
    *v93 = v0;
    v93[1] = sub_100518F84;
    v94 = *(v0 + 560);

    return withCheckedContinuation<A>(isolation:function:_:)(v93, v90, v91, 0xD00000000000005BLL, 0x8000000100794AC0, sub_1005308A0, v94, &type metadata for () + 8);
  }

  else
  {
    v95 = swift_task_alloc();
    *(v0 + 960) = v95;
    *v95 = v0;
    v95[1] = sub_1005191B8;
    v96 = *(v0 + 736);
    v97 = *(v0 + 560);
    v98 = *(v0 + 552);
    v99 = *(v0 + 544);
    v100 = *(v0 + 536);

    return sub_10052CF4C(v96, v100, v99, v98);
  }
}

uint64_t sub_100518F84()
{
  v1 = *(*v0 + 952);
  v2 = *(*v0 + 880);
  v4 = *v0;

  return _swift_task_switch(sub_100519094, v2, 0);
}

uint64_t sub_100519094()
{
  v1 = v0[70] + v0[118];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finished waiting for unlock", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[120] = v5;
  *v5 = v0;
  v5[1] = sub_1005191B8;
  v6 = v0[92];
  v7 = v0[70];
  v8 = v0[69];
  v9 = v0[68];
  v10 = v0[67];

  return sub_10052CF4C(v6, v10, v9, v8);
}

uint64_t sub_1005191B8()
{
  v2 = *v1;
  v3 = *(*v1 + 960);
  v4 = *v1;
  *(*v1 + 968) = v0;

  v5 = *(v2 + 880);
  if (v0)
  {
    v6 = sub_10051AF94;
  }

  else
  {
    v6 = sub_1005192E4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1005192E4()
{
  v1 = *(v0 + 560) + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_log;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1108);
    v5 = *(v0 + 1107);
    v6 = *(v0 + 528);
    v7 = *(v0 + 1106);
    v8 = swift_slowAlloc();
    *v8 = 67109888;
    *(v8 + 4) = v5;
    *(v8 + 8) = 1024;
    *(v8 + 10) = v4;
    *(v8 + 14) = 1024;
    *(v8 + 16) = v7;
    *(v8 + 20) = 2048;
    *(v8 + 22) = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Opening autoOpen URLs {shouldEndAfterAutoOpen: %{BOOL}d, supportsAutoOpen: %{BOOL}d, requestedAutoOpen: %{BOOL}d, transferImportSeconds: %f}", v8, 0x1Eu);
  }

  v9 = *(v0 + 736);
  v10 = *(v0 + 672);
  v11 = *(v0 + 544);

  v12 = *(v0 + 40);
  v13 = *(v0 + 48);
  sub_10002CDC0((v0 + 16), v12);
  (*(v13 + 8))(v11, v9, v12, v13);
  v14 = async function pointer to SFProgressTask.finalValue.getter[1];
  v15 = swift_task_alloc();
  *(v0 + 976) = v15;
  *v15 = v0;
  v15[1] = sub_10051949C;
  v16 = *(v0 + 672);
  v17 = *(v0 + 648);

  return SFProgressTask.finalValue.getter(v0 + 1105, v17);
}

uint64_t sub_10051949C()
{
  v2 = *v1;
  v3 = *(*v1 + 976);
  v4 = *v1;
  *(*v1 + 984) = v0;

  v5 = v2[110];
  (*(v2[82] + 8))(v2[84], v2[81]);
  if (v0)
  {
    v6 = sub_10051B474;
  }

  else
  {
    v6 = sub_100519618;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100519618()
{
  v150 = v0;
  (*(*(v0 + 688) + 8))(*(v0 + 736), *(v0 + 680));
  v1 = *(v0 + 1105);
  v139 = *(v0 + 984);
  *(v0 + 1109) = v1;
  v2 = *(v0 + 920);
  sub_1002A9938(*(v0 + 560) + *(v0 + 912), v0 + 296);
  sub_10028088C(&qword_100982538, &qword_100808E98);
  v146 = v1;
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 544);
    sub_1000121F8((v0 + 336), v0 + 256);
    v4 = *(v0 + 280);
    v5 = *(v0 + 288);
    sub_10002CDC0((v0 + 256), v4);
    v6 = (*(v5 + 8))(v3, v4, v5);
    sub_10000C60C((v0 + 256));
  }

  else
  {
    *(v0 + 368) = 0;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    sub_100005508(v0 + 336, &qword_100982540, &unk_100808EA0);
    v6 = 0;
  }

  v7 = *(v0 + 1107);
  v143 = *(v0 + 904);
  v8 = *(v0 + 896);
  v9 = *(v0 + 888);
  v10 = *(v0 + 872);
  v11 = *(v0 + 840);
  sub_1002A9938(*(v0 + 560) + *(v0 + 912), v0 + 376);
  v12 = *(v0 + 400);
  v13 = *(v0 + 408);
  sub_10002CDC0((v0 + 376), v12);
  CurrentValueSubject.value.getter();
  LOBYTE(v9) = sub_10058C73C(v10, v7, v146, v6 & 1, v12, v13);
  v8(v10, v11);
  sub_10000C60C((v0 + 376));
  if ((v9 & 1) == 0)
  {
    v32 = *(v0 + 544);
    v33 = *(v0 + 520);
    (*(*(v0 + 688) + 16))(*(v0 + 512), *(v0 + 552), *(v0 + 680));
    v34 = _s15ExchangeRequestVMa(0);
    (*(*(v34 - 8) + 56))(v33, 1, 1, v34);

    sub_10000C60C((v0 + 16));
    v35 = *(v0 + 544);
LABEL_8:
    v144 = v35;
    v36 = *(v0 + 872);
    v37 = *(v0 + 864);
    v38 = *(v0 + 856);
    v39 = *(v0 + 832);
    v40 = *(v0 + 824);
    v41 = *(v0 + 800);
    v42 = *(v0 + 792);
    v43 = *(v0 + 768);
    v44 = *(v0 + 744);
    v45 = *(v0 + 736);
    v108 = *(v0 + 728);
    v110 = *(v0 + 720);
    v112 = *(v0 + 712);
    v114 = *(v0 + 704);
    v116 = *(v0 + 696);
    v118 = *(v0 + 672);
    v120 = *(v0 + 664);
    v123 = *(v0 + 640);
    v126 = *(v0 + 632);
    v129 = *(v0 + 624);
    v133 = *(v0 + 600);
    v137 = *(v0 + 592);
    v140 = *(v0 + 584);

    v46 = *(v0 + 8);

    return v46(v146, v144);
  }

  v14 = *(v0 + 728);
  v15 = *(v0 + 688);
  v16 = *(v0 + 680);
  v17 = *(v0 + 560);
  v18 = *(v0 + 552);
  *(v0 + 992) = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_log;
  v19 = *(v15 + 16);
  *(v0 + 1000) = v19;
  *(v0 + 1008) = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v19(v14, v18, v16);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v136 = v19;
  if (os_log_type_enabled(v20, v21))
  {
    v22 = *(v0 + 744);
    v23 = *(v0 + 728);
    v24 = *(v0 + 688);
    v25 = *(v0 + 680);
    v26 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v149 = v132;
    *v26 = 67109378;
    *(v26 + 4) = v146;
    *(v26 + 8) = 2080;
    v19(v22, v23, v25);
    v27 = String.init<A>(describing:)();
    v29 = v28;
    v30 = *(v24 + 8);
    v30(v23, v25);
    v31 = sub_10000C4E4(v27, v29, &v149);

    *(v26 + 10) = v31;
    _os_log_impl(&_mh_execute_header, v20, v21, "Ask open/move START. {alreadyViewed: %{BOOL}d, destination: %s}", v26, 0x12u);
    sub_10000C60C(v132);
  }

  else
  {
    v48 = *(v0 + 728);
    v49 = *(v0 + 688);
    v50 = *(v0 + 680);

    v30 = *(v49 + 8);
    v30(v48, v50);
  }

  *(v0 + 1016) = v30;
  v51 = *(v0 + 888);
  v52 = *(v0 + 856);
  v53 = *(v0 + 640);
  v54 = *(v0 + 552);
  v55 = *(v0 + 544);
  v56 = *(v0 + 536);
  sub_1002A9938(*(v0 + 560) + *(v0 + 912), v0 + 416);
  v57 = *(v0 + 440);
  v58 = *(v0 + 448);
  sub_10002CDC0((v0 + 416), v57);
  CurrentValueSubject.value.getter();
  sub_100588474(v52, v55, v146, v54, v57, v58, v53);
  v59 = *(v0 + 904);
  v60 = *(v0 + 896);
  if (v139)
  {
    (v60)(*(v0 + 856), *(v0 + 840));
    sub_10000C60C((v0 + 416));
    v61 = *(v0 + 584);
    v62 = *(v0 + 568);
    *(v0 + 496) = v139;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    if (swift_dynamicCast())
    {
      v63 = (*(*(v0 + 576) + 88))(*(v0 + 584), *(v0 + 568));
      if (v63 == enum case for SFAirDropReceive.Failure.declined(_:))
      {
        v64 = *(v0 + 992);
        v65 = *(v0 + 560);

        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          *v68 = 0;
          v69 = "Ask open/move END - Declined. Not opening or moving";
LABEL_23:
          _os_log_impl(&_mh_execute_header, v66, v67, v69, v68, 2u);

          goto LABEL_24;
        }

        goto LABEL_24;
      }

      if (v63 == enum case for SFAirDropReceive.Failure.askNotHandled(_:))
      {
        v88 = *(v0 + 992);
        v89 = *(v0 + 560);

        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          *v68 = 0;
          v69 = "Ask open/move END - Not handled. Not opening or moving";
          goto LABEL_23;
        }

LABEL_24:
        v90 = *(v0 + 1008);
        v91 = *(v0 + 1000);
        v92 = *(v0 + 680);
        v93 = *(v0 + 552);
        v94 = *(v0 + 520);
        v95 = *(v0 + 512);

        v91(v95, v93, v92);
        v96 = _s15ExchangeRequestVMa(0);
        (*(*(v96 - 8) + 56))(v94, 1, 1, v96);
        v97 = *(v0 + 496);

        sub_10000C60C((v0 + 16));
        v146 = 0;
        v35 = _swiftEmptyArrayStorage;
        goto LABEL_8;
      }

      (*(*(v0 + 576) + 8))(*(v0 + 584), *(v0 + 568));
    }

    v98 = *(v0 + 496);

    v99 = *(v0 + 872);
    v100 = *(v0 + 864);
    v101 = *(v0 + 856);
    v102 = *(v0 + 832);
    v103 = *(v0 + 824);
    v104 = *(v0 + 800);
    v105 = *(v0 + 792);
    v106 = *(v0 + 768);
    v109 = *(v0 + 744);
    v111 = *(v0 + 736);
    v113 = *(v0 + 728);
    v115 = *(v0 + 720);
    v117 = *(v0 + 712);
    v119 = *(v0 + 704);
    v122 = *(v0 + 696);
    v125 = *(v0 + 672);
    v128 = *(v0 + 664);
    v131 = *(v0 + 640);
    v135 = *(v0 + 632);
    v138 = *(v0 + 624);
    v142 = *(v0 + 600);
    v145 = *(v0 + 592);
    v148 = *(v0 + 584);
    sub_10000C60C((v0 + 16));

    v107 = *(v0 + 8);

    return v107(0);
  }

  else
  {
    v147 = *(v0 + 872);
    v70 = *(v0 + 680);
    v124 = v70;
    v127 = *(v0 + 640);
    v71 = *(v0 + 632);
    v72 = *(v0 + 616);
    v130 = *(v0 + 608);
    v134 = *(v0 + 840);
    v141 = *(v0 + 560);
    v73 = *(v0 + 552);
    v121 = *(v0 + 544);
    v74 = *(v0 + 536);
    v60(*(v0 + 856));
    sub_10000C60C((v0 + 416));
    v75 = sub_10028088C(&unk_10097C670, &qword_100805110);
    v76 = v75[12];
    v77 = v75[16];
    v78 = v75[20];
    v136(v71, v73, v124);
    *(v71 + v76) = v74;
    *(v71 + v77) = v121;
    v79 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
    (*(*(v79 - 8) + 16))(v71 + v78, v127, v79);
    v80 = enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:);
    v81 = *(v72 + 104);
    *(v0 + 1024) = v81;
    *(v0 + 1032) = (v72 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v81(v71, v80, v130);

    sub_100687AF8(v71, v147);
    (v60)(v147, v134);
    v82 = swift_task_alloc();
    *(v0 + 1040) = v82;
    *v82 = v0;
    v82[1] = sub_10051A170;
    v83 = *(v0 + 720);
    v84 = *(v0 + 640);
    v85 = *(v0 + 600);
    v86 = *(v0 + 560);
    v87 = *(v0 + 552);

    return sub_10052DBB4(v83, v85, v84, v87);
  }
}

uint64_t sub_10051A170()
{
  v2 = *v1;
  v3 = *(*v1 + 1040);
  v4 = *v1;
  *(*v1 + 1048) = v0;

  v5 = *(v2 + 880);
  if (v0)
  {
    v6 = sub_10051B970;
  }

  else
  {
    v6 = sub_10051A29C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10051A29C()
{
  v31 = v0;
  v1 = *(v0 + 1008);
  v2 = *(v0 + 992);
  v3 = *(v0 + 560);
  (*(v0 + 1000))(*(v0 + 712), *(v0 + 720), *(v0 + 680));
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 1016);
  if (v6)
  {
    v8 = *(v0 + 1000);
    v9 = *(v0 + 744);
    v10 = *(v0 + 712);
    v28 = *(v0 + 1008);
    v29 = *(v0 + 688);
    v11 = *(v0 + 680);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v13;
    *v12 = 136315138;
    v8(v9, v10, v11);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    v7(v10, v11);
    v17 = sub_10000C4E4(v14, v16, &v30);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Ask open/move END - accepted {destination: %s}", v12, 0xCu);
    sub_10000C60C(v13);
  }

  else
  {
    v18 = *(v0 + 712);
    v19 = *(v0 + 688);
    v20 = *(v0 + 680);

    v7(v18, v20);
  }

  v21 = swift_task_alloc();
  *(v0 + 1056) = v21;
  *v21 = v0;
  v21[1] = sub_10051A4D4;
  v22 = *(v0 + 720);
  v23 = *(v0 + 704);
  v24 = *(v0 + 560);
  v25 = *(v0 + 544);
  v26 = *(v0 + 536);

  return sub_10052CF4C(v23, v26, v25, v22);
}

uint64_t sub_10051A4D4()
{
  v2 = *v1;
  v3 = *(*v1 + 1056);
  v4 = *v1;
  *(*v1 + 1064) = v0;

  v5 = *(v2 + 880);
  if (v0)
  {
    v6 = sub_10051BEE0;
  }

  else
  {
    v6 = sub_10051A600;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10051A600()
{
  v1 = *(v0 + 1008);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  v4 = *(v0 + 680);
  (*(v0 + 1000))(v2, *(v0 + 704), v4);
  v5 = (*(v3 + 88))(v2, v4);
  if (v5 != enum case for SFAirDropReceive.ItemDestination.customApp(_:))
  {
    if (v5 != enum case for SFAirDropReceive.ItemDestination.noItem(_:))
    {
      v13 = *(v0 + 1109);
      v14 = *(v0 + 688) + 8;
      (*(v0 + 1016))(*(v0 + 696), *(v0 + 680));
      if (v13 != 1)
      {
LABEL_17:
        v66 = *(v0 + 1024);
        v68 = *(v0 + 1032);
        v60 = *(v0 + 1000);
        v62 = *(v0 + 1008);
        v78 = *(v0 + 904);
        v74 = *(v0 + 840);
        v76 = *(v0 + 896);
        v20 = *(v0 + 704);
        v70 = *(v0 + 872);
        v72 = v20;
        v21 = *(v0 + 680);
        v80 = *(v0 + 664);
        v22 = *(v0 + 624);
        v23 = *(v0 + 616);
        v24 = *(v0 + 608);
        v64 = *(v0 + 560);
        v25 = *(v0 + 544);
        v26 = *(v0 + 536);
        v27 = sub_10028088C(&unk_100974E60, &qword_100808EC0);
        v28 = *(v27 + 48);
        v29 = *(v27 + 64);
        v60(v22, v20, v21);
        *(v22 + v28) = v26;
        *(v22 + v29) = v25;
        v66(v22, enum case for SFAirDropReceive.Transfer.State.opening(_:), v24);

        sub_100687AF8(v22, v70);
        v30 = *(v23 + 8);
        *(v0 + 1072) = v30;
        *(v0 + 1080) = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v30(v22, v24);
        v76(v70, v74);
        v31 = *(v0 + 40);
        v32 = *(v0 + 48);
        sub_10002CDC0((v0 + 16), v31);
        (*(v32 + 8))(v25, v72, v31, v32);
        v33 = async function pointer to SFProgressTask.finalValue.getter[1];
        v34 = swift_task_alloc();
        *(v0 + 1088) = v34;
        *v34 = v0;
        v34[1] = sub_10051ABA8;
        v35 = *(v0 + 664);
        v36 = *(v0 + 648);

        return SFProgressTask.finalValue.getter(v0 + 1104, v36);
      }

      v12 = 1;
LABEL_15:
      v15 = *(v0 + 936);
      v16 = *(v0 + 928);
      v17 = *(v0 + 768);
      v18 = *(v0 + 752);
      static SFPlatform.macOS.getter();
      v19 = static SFPlatform.isPlatform(_:)();
      v16(v17, v18);
      if ((v19 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if ((*(v0 + 1109) & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_12:
    v12 = 0;
    goto LABEL_15;
  }

  v6 = *(v0 + 696);
  (*(*(v0 + 688) + 96))(v6, *(v0 + 680));
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + 1109);
  if (v7 == 0xD000000000000034 && 0x800000010078AA10 == v8)
  {

    if ((v9 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v12 = v11 ^ 1;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (v12)
  {
    goto LABEL_17;
  }

LABEL_20:
  v37 = *(v0 + 640);
  v38 = *(v0 + 632);
  v39 = *(v0 + 616);
  v40 = *(v0 + 608);
  v41 = *(v0 + 688) + 8;
  (*(v0 + 1016))(*(v0 + 720), *(v0 + 680));
  (*(v39 + 8))(v38, v40);
  sub_100005508(v37, &qword_100976908, &unk_100801D60);
  v42 = *(v0 + 600);
  v43 = *(v0 + 544);
  v44 = *(v0 + 520);
  (*(*(v0 + 688) + 32))(*(v0 + 512), *(v0 + 704), *(v0 + 680));
  sub_10002C4E4(v42, v44, &qword_100982508, &unk_100808D50);

  sub_10000C60C((v0 + 16));
  v81 = *(v0 + 544);
  v45 = *(v0 + 872);
  v46 = *(v0 + 864);
  v47 = *(v0 + 856);
  v48 = *(v0 + 832);
  v49 = *(v0 + 824);
  v50 = *(v0 + 800);
  v51 = *(v0 + 792);
  v52 = *(v0 + 768);
  v53 = *(v0 + 744);
  v54 = *(v0 + 736);
  v57 = *(v0 + 728);
  v58 = *(v0 + 720);
  v59 = *(v0 + 712);
  v61 = *(v0 + 704);
  v63 = *(v0 + 696);
  v65 = *(v0 + 672);
  v67 = *(v0 + 664);
  v69 = *(v0 + 640);
  v71 = *(v0 + 632);
  v73 = *(v0 + 624);
  v75 = *(v0 + 600);
  v77 = *(v0 + 592);
  v79 = *(v0 + 584);

  v55 = *(v0 + 8);

  return v55(1, v81);
}

uint64_t sub_10051ABA8()
{
  v2 = *v1;
  v3 = *(*v1 + 1088);
  v4 = *v1;
  *(*v1 + 1096) = v0;

  v5 = v2[110];
  (*(v2[82] + 8))(v2[83], v2[81]);
  if (v0)
  {
    v6 = sub_10051C498;
  }

  else
  {
    v6 = sub_10051AD24;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10051AD24()
{
  v1 = *(v0 + 1080);
  v2 = *(v0 + 1072);
  v3 = *(v0 + 640);
  v4 = *(v0 + 632);
  v5 = *(v0 + 608);
  v6 = *(v0 + 688) + 8;
  (*(v0 + 1016))(*(v0 + 720), *(v0 + 680));
  v2(v4, v5);
  sub_100005508(v3, &qword_100976908, &unk_100801D60);
  v36 = *(v0 + 1104);
  v7 = *(v0 + 600);
  v8 = *(v0 + 544);
  v9 = *(v0 + 520);
  (*(*(v0 + 688) + 32))(*(v0 + 512), *(v0 + 704), *(v0 + 680));
  sub_10002C4E4(v7, v9, &qword_100982508, &unk_100808D50);

  sub_10000C60C((v0 + 16));
  v35 = *(v0 + 544);
  v10 = *(v0 + 872);
  v11 = *(v0 + 864);
  v12 = *(v0 + 856);
  v13 = *(v0 + 832);
  v14 = *(v0 + 824);
  v15 = *(v0 + 800);
  v16 = *(v0 + 792);
  v17 = *(v0 + 768);
  v18 = *(v0 + 744);
  v19 = *(v0 + 736);
  v22 = *(v0 + 728);
  v23 = *(v0 + 720);
  v24 = *(v0 + 712);
  v25 = *(v0 + 704);
  v26 = *(v0 + 696);
  v27 = *(v0 + 672);
  v28 = *(v0 + 664);
  v29 = *(v0 + 640);
  v30 = *(v0 + 632);
  v31 = *(v0 + 624);
  v32 = *(v0 + 600);
  v33 = *(v0 + 592);
  v34 = *(v0 + 584);

  v20 = *(v0 + 8);

  return v20(v36, v35);
}

uint64_t sub_10051AF94()
{
  v1 = v0[74];
  v2 = v0[71];
  v0[63] = v0[121];
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    if ((*(v0[72] + 88))(v0[74], v0[71]) == enum case for SFAirDropReceive.Failure.declined(_:))
    {
      v3 = v0[70];

      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "Ask open/move END - Declined. Not opening or moving", v6, 2u);
      }

      v7 = v0[86];
      v8 = v0[85];
      v9 = v0[69];
      v10 = v0[65];
      v11 = v0[64];

      (*(v7 + 16))(v11, v9, v8);
      v12 = _s15ExchangeRequestVMa(0);
      (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
      v13 = v0[63];

      sub_10000C60C(v0 + 2);
      v14 = v0[109];
      v15 = v0[108];
      v16 = v0[107];
      v17 = v0[104];
      v18 = v0[103];
      v19 = v0[100];
      v20 = v0[99];
      v21 = v0[96];
      v22 = v0[93];
      v23 = v0[92];
      v39 = v0[91];
      v41 = v0[90];
      v43 = v0[89];
      v45 = v0[88];
      v47 = v0[87];
      v49 = v0[84];
      v51 = v0[83];
      v53 = v0[80];
      v55 = v0[79];
      v57 = v0[78];
      v59 = v0[75];
      v61 = v0[74];
      v63 = v0[73];

      v24 = v0[1];

      return v24(0, _swiftEmptyArrayStorage);
    }

    (*(v0[72] + 8))(v0[74], v0[71]);
  }

  v26 = v0[63];

  v27 = v0[109];
  v28 = v0[108];
  v29 = v0[107];
  v30 = v0[104];
  v31 = v0[103];
  v32 = v0[100];
  v33 = v0[99];
  v34 = v0[96];
  v35 = v0[93];
  v37 = v0[92];
  v38 = v0[91];
  v40 = v0[90];
  v42 = v0[89];
  v44 = v0[88];
  v46 = v0[87];
  v48 = v0[84];
  v50 = v0[83];
  v52 = v0[80];
  v54 = v0[79];
  v56 = v0[78];
  v58 = v0[75];
  v60 = v0[74];
  v62 = v0[73];
  sub_10000C60C(v0 + 2);

  v36 = v0[1];

  return v36(0);
}

uint64_t sub_10051B474()
{
  (*(v0[86] + 8))(v0[92], v0[85]);
  v1 = v0[74];
  v2 = v0[71];
  v0[63] = v0[123];
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    if ((*(v0[72] + 88))(v0[74], v0[71]) == enum case for SFAirDropReceive.Failure.declined(_:))
    {
      v3 = v0[70];

      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "Ask open/move END - Declined. Not opening or moving", v6, 2u);
      }

      v7 = v0[86];
      v8 = v0[85];
      v9 = v0[69];
      v10 = v0[65];
      v11 = v0[64];

      (*(v7 + 16))(v11, v9, v8);
      v12 = _s15ExchangeRequestVMa(0);
      (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
      v13 = v0[63];

      sub_10000C60C(v0 + 2);
      v14 = v0[109];
      v15 = v0[108];
      v16 = v0[107];
      v17 = v0[104];
      v18 = v0[103];
      v19 = v0[100];
      v20 = v0[99];
      v21 = v0[96];
      v22 = v0[93];
      v23 = v0[92];
      v39 = v0[91];
      v41 = v0[90];
      v43 = v0[89];
      v45 = v0[88];
      v47 = v0[87];
      v49 = v0[84];
      v51 = v0[83];
      v53 = v0[80];
      v55 = v0[79];
      v57 = v0[78];
      v59 = v0[75];
      v61 = v0[74];
      v63 = v0[73];

      v24 = v0[1];

      return v24(0, _swiftEmptyArrayStorage);
    }

    (*(v0[72] + 8))(v0[74], v0[71]);
  }

  v26 = v0[63];

  v27 = v0[109];
  v28 = v0[108];
  v29 = v0[107];
  v30 = v0[104];
  v31 = v0[103];
  v32 = v0[100];
  v33 = v0[99];
  v34 = v0[96];
  v35 = v0[93];
  v37 = v0[92];
  v38 = v0[91];
  v40 = v0[90];
  v42 = v0[89];
  v44 = v0[88];
  v46 = v0[87];
  v48 = v0[84];
  v50 = v0[83];
  v52 = v0[80];
  v54 = v0[79];
  v56 = v0[78];
  v58 = v0[75];
  v60 = v0[74];
  v62 = v0[73];
  sub_10000C60C(v0 + 2);

  v36 = v0[1];

  return v36(0);
}

uint64_t sub_10051B970()
{
  v1 = v0[80];
  (*(v0[77] + 8))(v0[79], v0[76]);
  sub_100005508(v1, &qword_100976908, &unk_100801D60);
  v2 = v0[73];
  v3 = v0[71];
  v0[62] = v0[131];
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v4 = (*(v0[72] + 88))(v0[73], v0[71]);
    if (v4 == enum case for SFAirDropReceive.Failure.declined(_:))
    {
      v5 = v0[124];
      v6 = v0[70];

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        v10 = "Ask open/move END - Declined. Not opening or moving";
LABEL_8:
        _os_log_impl(&_mh_execute_header, v7, v8, v10, v9, 2u);

        goto LABEL_9;
      }

      goto LABEL_9;
    }

    if (v4 == enum case for SFAirDropReceive.Failure.askNotHandled(_:))
    {
      v11 = v0[124];
      v12 = v0[70];

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        v10 = "Ask open/move END - Not handled. Not opening or moving";
        goto LABEL_8;
      }

LABEL_9:
      v13 = v0[126];
      v14 = v0[125];
      v15 = v0[85];
      v16 = v0[69];
      v17 = v0[65];
      v18 = v0[64];

      v14(v18, v16, v15);
      v19 = _s15ExchangeRequestVMa(0);
      (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
      v20 = v0[62];

      sub_10000C60C(v0 + 2);
      v21 = v0[109];
      v22 = v0[108];
      v23 = v0[107];
      v24 = v0[104];
      v25 = v0[103];
      v26 = v0[100];
      v27 = v0[99];
      v28 = v0[96];
      v29 = v0[93];
      v30 = v0[92];
      v45 = v0[91];
      v47 = v0[90];
      v49 = v0[89];
      v51 = v0[88];
      v53 = v0[87];
      v55 = v0[84];
      v57 = v0[83];
      v59 = v0[80];
      v61 = v0[79];
      v63 = v0[78];
      v65 = v0[75];
      v67 = v0[74];
      v69 = v0[73];

      v31 = v0[1];

      return v31(0, _swiftEmptyArrayStorage);
    }

    (*(v0[72] + 8))(v0[73], v0[71]);
  }

  v33 = v0[62];

  v34 = v0[109];
  v35 = v0[108];
  v36 = v0[107];
  v37 = v0[104];
  v38 = v0[103];
  v39 = v0[100];
  v40 = v0[99];
  v41 = v0[96];
  v43 = v0[93];
  v44 = v0[92];
  v46 = v0[91];
  v48 = v0[90];
  v50 = v0[89];
  v52 = v0[88];
  v54 = v0[87];
  v56 = v0[84];
  v58 = v0[83];
  v60 = v0[80];
  v62 = v0[79];
  v64 = v0[78];
  v66 = v0[75];
  v68 = v0[74];
  v70 = v0[73];
  sub_10000C60C(v0 + 2);

  v42 = v0[1];

  return v42(0);
}

uint64_t sub_10051BEE0()
{
  v1 = v0[127];
  v2 = v0[90];
  v3 = v0[86];
  v4 = v0[85];
  v5 = v0[80];
  v6 = v0[79];
  v7 = v0[77];
  v8 = v0[76];
  sub_100005508(v0[75], &qword_100982508, &unk_100808D50);
  v1(v2, v4);
  (*(v7 + 8))(v6, v8);
  sub_100005508(v5, &qword_100976908, &unk_100801D60);
  v9 = v0[73];
  v10 = v0[71];
  v0[62] = v0[133];
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v11 = (*(v0[72] + 88))(v0[73], v0[71]);
    if (v11 == enum case for SFAirDropReceive.Failure.declined(_:))
    {
      v12 = v0[124];
      v13 = v0[70];

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        v17 = "Ask open/move END - Declined. Not opening or moving";
LABEL_8:
        _os_log_impl(&_mh_execute_header, v14, v15, v17, v16, 2u);

        goto LABEL_9;
      }

      goto LABEL_9;
    }

    if (v11 == enum case for SFAirDropReceive.Failure.askNotHandled(_:))
    {
      v18 = v0[124];
      v19 = v0[70];

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        v17 = "Ask open/move END - Not handled. Not opening or moving";
        goto LABEL_8;
      }

LABEL_9:
      v20 = v0[126];
      v21 = v0[125];
      v22 = v0[85];
      v23 = v0[69];
      v24 = v0[65];
      v25 = v0[64];

      v21(v25, v23, v22);
      v26 = _s15ExchangeRequestVMa(0);
      (*(*(v26 - 8) + 56))(v24, 1, 1, v26);
      v27 = v0[62];

      sub_10000C60C(v0 + 2);
      v28 = v0[109];
      v29 = v0[108];
      v30 = v0[107];
      v31 = v0[104];
      v32 = v0[103];
      v33 = v0[100];
      v34 = v0[99];
      v35 = v0[96];
      v36 = v0[93];
      v37 = v0[92];
      v52 = v0[91];
      v54 = v0[90];
      v56 = v0[89];
      v58 = v0[88];
      v60 = v0[87];
      v62 = v0[84];
      v64 = v0[83];
      v66 = v0[80];
      v68 = v0[79];
      v70 = v0[78];
      v72 = v0[75];
      v74 = v0[74];
      v76 = v0[73];

      v38 = v0[1];

      return v38(0, _swiftEmptyArrayStorage);
    }

    (*(v0[72] + 8))(v0[73], v0[71]);
  }

  v40 = v0[62];

  v41 = v0[109];
  v42 = v0[108];
  v43 = v0[107];
  v44 = v0[104];
  v45 = v0[103];
  v46 = v0[100];
  v47 = v0[99];
  v48 = v0[96];
  v50 = v0[93];
  v51 = v0[92];
  v53 = v0[91];
  v55 = v0[90];
  v57 = v0[89];
  v59 = v0[88];
  v61 = v0[87];
  v63 = v0[84];
  v65 = v0[83];
  v67 = v0[80];
  v69 = v0[79];
  v71 = v0[78];
  v73 = v0[75];
  v75 = v0[74];
  v77 = v0[73];
  sub_10000C60C(v0 + 2);

  v49 = v0[1];

  return v49(0);
}

uint64_t sub_10051C498()
{
  v77 = v0[135];
  v1 = v0[134];
  v2 = v0[127];
  v3 = v0[90];
  v4 = v0[85];
  v5 = v0[80];
  v6 = v0[79];
  v7 = v0[76];
  v8 = v0[75];
  v9 = v0[86] + 8;
  v2(v0[88], v4);
  sub_100005508(v8, &qword_100982508, &unk_100808D50);
  v2(v3, v4);
  v1(v6, v7);
  sub_100005508(v5, &qword_100976908, &unk_100801D60);
  v10 = v0[73];
  v11 = v0[71];
  v0[62] = v0[137];
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v12 = (*(v0[72] + 88))(v0[73], v0[71]);
    if (v12 == enum case for SFAirDropReceive.Failure.declined(_:))
    {
      v13 = v0[124];
      v14 = v0[70];

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        v18 = "Ask open/move END - Declined. Not opening or moving";
LABEL_8:
        _os_log_impl(&_mh_execute_header, v15, v16, v18, v17, 2u);

        goto LABEL_9;
      }

      goto LABEL_9;
    }

    if (v12 == enum case for SFAirDropReceive.Failure.askNotHandled(_:))
    {
      v19 = v0[124];
      v20 = v0[70];

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        v18 = "Ask open/move END - Not handled. Not opening or moving";
        goto LABEL_8;
      }

LABEL_9:
      v21 = v0[126];
      v22 = v0[125];
      v23 = v0[85];
      v24 = v0[69];
      v25 = v0[65];
      v26 = v0[64];

      v22(v26, v24, v23);
      v27 = _s15ExchangeRequestVMa(0);
      (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
      v28 = v0[62];

      sub_10000C60C(v0 + 2);
      v29 = v0[109];
      v30 = v0[108];
      v31 = v0[107];
      v32 = v0[104];
      v33 = v0[103];
      v34 = v0[100];
      v35 = v0[99];
      v36 = v0[96];
      v37 = v0[93];
      v38 = v0[92];
      v53 = v0[91];
      v55 = v0[90];
      v57 = v0[89];
      v59 = v0[88];
      v61 = v0[87];
      v63 = v0[84];
      v65 = v0[83];
      v67 = v0[80];
      v69 = v0[79];
      v71 = v0[78];
      v73 = v0[75];
      v75 = v0[74];
      v78 = v0[73];

      v39 = v0[1];

      return v39(0, _swiftEmptyArrayStorage);
    }

    (*(v0[72] + 8))(v0[73], v0[71]);
  }

  v41 = v0[62];

  v42 = v0[109];
  v43 = v0[108];
  v44 = v0[107];
  v45 = v0[104];
  v46 = v0[103];
  v47 = v0[100];
  v48 = v0[99];
  v49 = v0[96];
  v51 = v0[93];
  v52 = v0[92];
  v54 = v0[91];
  v56 = v0[90];
  v58 = v0[89];
  v60 = v0[88];
  v62 = v0[87];
  v64 = v0[84];
  v66 = v0[83];
  v68 = v0[80];
  v70 = v0[79];
  v72 = v0[78];
  v74 = v0[75];
  v76 = v0[74];
  v79 = v0[73];
  sub_10000C60C(v0 + 2);

  v50 = v0[1];

  return v50(0);
}

uint64_t sub_10051CA68(uint64_t a1, uint64_t a2)
{
  v3[228] = v2;
  v3[227] = a2;
  v3[226] = a1;
  v4 = *(*(sub_10028088C(&qword_10097B200, &qword_1007FE578) - 8) + 64) + 15;
  v3[229] = swift_task_alloc();
  v5 = *(*(sub_10028088C(&qword_100982518, &unk_100808DA0) - 8) + 64) + 15;
  v3[230] = swift_task_alloc();
  v3[231] = swift_task_alloc();
  v6 = type metadata accessor for SDAirDropServerConnection(0);
  v3[232] = v6;
  v7 = *(v6 - 8);
  v3[233] = v7;
  v8 = *(v7 + 64) + 15;
  v3[234] = swift_task_alloc();
  v9 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v3[235] = v9;
  v10 = *(v9 - 8);
  v3[236] = v10;
  v11 = *(v10 + 64) + 15;
  v3[237] = swift_task_alloc();
  v3[238] = swift_task_alloc();
  v12 = *(*(sub_10028088C(&qword_100976908, &unk_100801D60) - 8) + 64) + 15;
  v3[239] = swift_task_alloc();
  v13 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v3[240] = v13;
  v14 = *(v13 - 8);
  v3[241] = v14;
  v15 = *(v14 + 64) + 15;
  v3[242] = swift_task_alloc();
  v3[243] = swift_task_alloc();
  v3[244] = swift_task_alloc();
  v16 = _s16ExchangeResponseVMa(0);
  v3[245] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v3[246] = swift_task_alloc();
  v3[247] = swift_task_alloc();
  v3[248] = swift_task_alloc();
  v3[249] = swift_task_alloc();
  v3[250] = swift_task_alloc();
  v3[251] = swift_task_alloc();
  v18 = *(*(sub_10028088C(&qword_10097B1C0, &qword_1007FE4C8) - 8) + 64) + 15;
  v3[252] = swift_task_alloc();
  v3[253] = swift_task_alloc();
  v3[254] = swift_task_alloc();
  v3[255] = swift_task_alloc();
  v19 = *(*(sub_10028088C(&qword_10097B198, &qword_1007FE450) - 8) + 64) + 15;
  v3[256] = swift_task_alloc();
  v3[257] = swift_task_alloc();
  v3[258] = swift_task_alloc();
  v3[259] = swift_task_alloc();
  v3[260] = swift_task_alloc();
  v3[261] = swift_task_alloc();
  v3[262] = swift_task_alloc();
  v3[263] = swift_task_alloc();
  v3[264] = swift_task_alloc();
  v3[265] = swift_task_alloc();
  v3[266] = swift_task_alloc();
  v20 = type metadata accessor for SFAirDrop.ContactInfo();
  v3[267] = v20;
  v21 = *(v20 - 8);
  v3[268] = v21;
  v22 = *(v21 + 64) + 15;
  v3[269] = swift_task_alloc();
  v3[270] = swift_task_alloc();
  v3[271] = swift_task_alloc();
  v3[272] = swift_task_alloc();
  v3[273] = swift_task_alloc();
  v3[274] = swift_task_alloc();
  v3[275] = swift_task_alloc();
  v3[276] = swift_task_alloc();
  v23 = type metadata accessor for SFAirDrop.TransferType();
  v3[277] = v23;
  v24 = *(v23 - 8);
  v3[278] = v24;
  v25 = *(v24 + 64) + 15;
  v3[279] = swift_task_alloc();
  v26 = type metadata accessor for SFAirDropReceive.AskRequest();
  v3[280] = v26;
  v27 = *(v26 - 8);
  v3[281] = v27;
  v28 = *(v27 + 64) + 15;
  v3[282] = swift_task_alloc();
  v29 = type metadata accessor for SFAirDrop.ContactRequest();
  v3[283] = v29;
  v30 = *(v29 - 8);
  v3[284] = v30;
  v31 = *(v30 + 64) + 15;
  v3[285] = swift_task_alloc();
  v3[286] = swift_task_alloc();
  v3[287] = swift_task_alloc();
  v3[288] = swift_task_alloc();
  v3[289] = swift_task_alloc();
  v3[290] = swift_task_alloc();
  v3[291] = swift_task_alloc();
  v3[292] = swift_task_alloc();
  v3[293] = swift_task_alloc();
  v3[294] = swift_task_alloc();
  v3[295] = swift_task_alloc();
  v3[296] = swift_task_alloc();
  v3[297] = swift_task_alloc();
  v3[298] = swift_task_alloc();
  v3[299] = swift_task_alloc();
  v3[300] = swift_task_alloc();
  v3[301] = swift_task_alloc();
  v3[302] = swift_task_alloc();
  v3[303] = swift_task_alloc();
  v32 = *(*(sub_10028088C(&qword_100982508, &unk_100808D50) - 8) + 64) + 15;
  v3[304] = swift_task_alloc();
  v33 = _s15ExchangeRequestVMa(0);
  v3[305] = v33;
  v34 = *(v33 - 8);
  v3[306] = v34;
  v35 = *(v34 + 64) + 15;
  v3[307] = swift_task_alloc();
  v36 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v3[308] = v36;
  v37 = *(v36 - 8);
  v3[309] = v37;
  v38 = *(v37 + 64) + 15;
  v3[310] = swift_task_alloc();
  v39 = type metadata accessor for SFAirDropReceive.Transfer();
  v3[311] = v39;
  v40 = *(v39 - 8);
  v3[312] = v40;
  v41 = *(v40 + 64) + 15;
  v3[313] = swift_task_alloc();
  v3[314] = swift_task_alloc();
  v3[315] = swift_task_alloc();
  v3[316] = swift_task_alloc();
  v42 = *(*(sub_10028088C(&qword_100982520, &qword_10080E300) - 8) + 64) + 15;
  v3[317] = swift_task_alloc();
  v43 = sub_10028088C(&qword_100982528, &unk_100808DB0);
  v3[318] = v43;
  v44 = *(v43 - 8);
  v3[319] = v44;
  v45 = *(v44 + 64) + 15;
  v3[320] = swift_task_alloc();
  v3[321] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v46 = static AirDropActor.shared;
  v3[322] = static AirDropActor.shared;

  return _swift_task_switch(sub_10051D32C, v46, 0);
}

uint64_t sub_10051D32C()
{
  v421 = v0;
  v1 = *(v0 + 2536);
  v2 = *(*(v0 + 1824) + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_receiveHandler);
  *(v0 + 2584) = v2;
  v3 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeContinuation;
  swift_beginAccess();
  sub_10000FF90(v2 + v3, v1, &qword_100982520, &qword_10080E300);
  v4 = sub_10028088C(&unk_10097A6A0, &qword_10080E1A0);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    v6 = *(v0 + 1824);
    sub_100005508(*(v0 + 2536), &qword_100982520, &qword_10080E300);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Exchange Contact Request SKIP - No contact request task", v9, 2u);
    }

    v10 = *(v0 + 2568);
    v11 = *(v0 + 2560);
    v12 = *(v0 + 2536);
    v13 = *(v0 + 2528);
    v14 = *(v0 + 2520);
    v15 = *(v0 + 2512);
    v16 = *(v0 + 2504);
    v17 = *(v0 + 2480);
    v18 = *(v0 + 2456);
    v19 = *(v0 + 2432);
    v298 = *(v0 + 2424);
    v299 = *(v0 + 2416);
    v300 = *(v0 + 2408);
    v301 = *(v0 + 2400);
    v302 = *(v0 + 2392);
    v303 = *(v0 + 2384);
    v304 = *(v0 + 2376);
    v305 = *(v0 + 2368);
    v306 = *(v0 + 2360);
    v307 = *(v0 + 2352);
    v308 = *(v0 + 2344);
    v309 = *(v0 + 2336);
    v310 = *(v0 + 2328);
    v311 = *(v0 + 2320);
    v312 = *(v0 + 2312);
    v313 = *(v0 + 2304);
    v314 = *(v0 + 2296);
    v315 = *(v0 + 2288);
    v316 = *(v0 + 2280);
    v317 = *(v0 + 2256);
    v318 = *(v0 + 2232);
    v319 = *(v0 + 2208);
    v320 = *(v0 + 2200);
    v321 = *(v0 + 2192);
    v322 = *(v0 + 2184);
    v323 = *(v0 + 2176);
    v324 = *(v0 + 2168);
    v325 = *(v0 + 2160);
    v326 = *(v0 + 2152);
    v327 = *(v0 + 2128);
    v328 = *(v0 + 2120);
    v329 = *(v0 + 2112);
    v330 = *(v0 + 2104);
    v331 = *(v0 + 2096);
    v332 = *(v0 + 2088);
    v333 = *(v0 + 2080);
    v334 = *(v0 + 2072);
    v335 = *(v0 + 2064);
    v336 = *(v0 + 2056);
    v337 = *(v0 + 2048);
    v338 = *(v0 + 2040);
    v341 = *(v0 + 2032);
    v344 = *(v0 + 2024);
    v347 = *(v0 + 2016);
    v351 = *(v0 + 2008);
    v355 = *(v0 + 2000);
    v358 = *(v0 + 1992);
    v360 = *(v0 + 1984);
    v364 = *(v0 + 1976);
    v366 = *(v0 + 1968);
    v368 = *(v0 + 1952);
    v372 = *(v0 + 1944);
    v377 = *(v0 + 1936);
    v381 = *(v0 + 1912);
    v387 = *(v0 + 1904);
    v392 = *(v0 + 1896);
    v399 = *(v0 + 1872);
    v403 = *(v0 + 1848);
    v407 = *(v0 + 1840);
    v414 = *(v0 + 1832);

    v20 = *(v0 + 8);

    return v20(0, 0);
  }

  v22 = *(v0 + 2568);
  v23 = *(v0 + 2560);
  v24 = *(v0 + 2552);
  v25 = *(v0 + 2544);
  v26 = *(v0 + 2536);
  v27 = *(v0 + 1824);
  SFProgressContinuation.task.getter();
  (*(v5 + 8))(v26, v4);
  (*(v24 + 32))(v22, v23, v25);
  *(v0 + 2592) = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_log;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Exchange Contact START", v30, 2u);
  }

  v31 = *(v0 + 2528);
  v32 = *(v0 + 2496);
  v33 = *(v0 + 2480);
  v34 = *(v0 + 2472);
  v35 = *(v0 + 2464);
  v36 = *(v0 + 2448);
  v408 = *(v0 + 2488);
  v415 = *(v0 + 2440);
  v37 = *(v0 + 1824);
  v38 = *(v0 + 1808);

  v39 = enum case for SFAirDropReceive.Transfer.State.waitingForContactExchangeRequest(_:);
  v40 = *(v34 + 104);
  *(v0 + 2600) = v40;
  *(v0 + 2608) = (v34 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v40(v33, v39, v35);
  sub_100687AF8(v33, v31);
  v41 = *(v34 + 8);
  *(v0 + 2616) = v41;
  *(v0 + 2624) = (v34 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v41(v33, v35);
  v42 = *(v32 + 8);
  *(v0 + 2632) = v42;
  *(v0 + 2640) = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v42(v31, v408);
  v43 = *(v36 + 48);
  if (v43(v38, 1, v415) == 1)
  {
    v44 = async function pointer to SFProgressTask.finalValue.getter[1];
    v45 = swift_task_alloc();
    *(v0 + 2648) = v45;
    *v45 = v0;
    v45[1] = sub_10051F28C;
    v46 = *(v0 + 2568);
    v47 = *(v0 + 2544);
    v48 = *(v0 + 2456);

    return SFProgressTask.finalValue.getter(v48, v47);
  }

  v49 = *(v0 + 2440);
  v50 = *(v0 + 2432);
  sub_10000FF90(*(v0 + 1808), v50, &qword_100982508, &unk_100808D50);
  v48 = (v43)(v50, 1, v49);
  if (v48 == 1)
  {
    __break(1u);
    return SFProgressTask.finalValue.getter(v48, v47);
  }

  sub_1005304C4(*(v0 + 2432), *(v0 + 2456), _s15ExchangeRequestVMa);
  v378 = *(v0 + 2632);
  v382 = *(v0 + 2640);
  v51 = *(v0 + 2528);
  v52 = *(v0 + 2488);
  v53 = *(v0 + 2456);
  v54 = *(v0 + 2256);
  v55 = *(v0 + 2248);
  v388 = *(v0 + 2240);
  v56 = *(v0 + 2232);
  v57 = *(v0 + 2224);
  v400 = *(v0 + 2216);
  v58 = *(v0 + 2144);
  v409 = *(v0 + 2128);
  v416 = *(v0 + 2136);
  v59 = *(v0 + 1824);
  sub_10058250C(*(v0 + 2424));
  *(v0 + 2664) = *(v59 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_subject);
  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v378(v51, v52);
  SFAirDropReceive.AskRequest.type.getter();
  v60 = *(v55 + 8);
  *(v0 + 2672) = v60;
  *(v0 + 2680) = (v55 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v60(v54, v388);
  *(v0 + 3008) = SFAirDrop.TransferType.isOnlyExchange.getter() & 1;
  v61 = *(v57 + 8);
  *(v0 + 2688) = v61;
  *(v0 + 2696) = (v57 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v383 = v61;
  v61(v56, v400);
  v62 = v409;
  SFAirDrop.ContactRequest.contact.getter();
  v63 = *(v58 + 48);
  *(v0 + 2704) = v63;
  *(v0 + 2712) = (v58 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v410 = v63;
  if (v63(v62, 1, v416) == 1)
  {
    v64 = *(v0 + 2272);
    v65 = *(v0 + 2264);
    v66 = *(v0 + 2016);
    v67 = *(v0 + 1816);
    sub_100005508(*(v0 + 2128), &qword_10097B198, &qword_1007FE450);
    sub_10000FF90(v67, v66, &qword_10097B1C0, &qword_1007FE4C8);
    v68 = *(v64 + 48);
    v69 = v68(v66, 1, v65);
    v70 = *(v0 + 2304);
    v71 = *(v0 + 2272);
    v72 = *(v0 + 2264);
    v73 = *(v0 + 2016);
    if (v69 == 1)
    {
      (*(v71 + 104))(v70, enum case for SFAirDrop.ContactRequest.notNeeded(_:), *(v0 + 2264));
      if (v68(v73, 1, v72) != 1)
      {
        sub_100005508(*(v0 + 2016), &qword_10097B1C0, &qword_1007FE4C8);
      }
    }

    else
    {
      (*(v71 + 32))(v70, *(v0 + 2016), *(v0 + 2264));
    }

    v95 = *(v0 + 2592);
    v96 = *(v0 + 2304);
    v97 = *(v0 + 2288);
    v98 = *(v0 + 2264);
    v99 = *(v0 + 1824);
    v100 = *(*(v0 + 2272) + 16);
    v100(*(v0 + 2296), *(v0 + 2424), v98);
    v374 = v100;
    v100(v97, v96, v98);

    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = *(v0 + 2528);
      v342 = *(v0 + 2488);
      v345 = *(v0 + 2632);
      v370 = v102;
      v104 = *(v0 + 2296);
      v105 = *(v0 + 2272);
      v106 = *(v0 + 2264);
      v367 = v101;
      v107 = *(v0 + 2256);
      v348 = *(v0 + 2240);
      v352 = *(v0 + 2640);
      v339 = *(v0 + 2232);
      v359 = *(v0 + 2216);
      v362 = *(v0 + 2288);
      v108 = swift_slowAlloc();
      v420[0] = swift_slowAlloc();
      *v108 = 141559043;
      *(v108 + 4) = 1752392040;
      *(v108 + 12) = 2081;
      sub_100530ED4(&qword_10097B210, &type metadata accessor for SFAirDrop.ContactRequest);
      v109 = dispatch thunk of CustomStringConvertible.description.getter();
      v111 = v110;
      v112 = *(v105 + 8);
      v112(v104, v106);
      v113 = sub_10000C4E4(v109, v111, v420);

      *(v108 + 14) = v113;
      *(v108 + 22) = 2080;
      CurrentValueSubject.value.getter();
      SFAirDropReceive.Transfer.askRequest.getter();
      v345(v103, v342);
      SFAirDropReceive.AskRequest.type.getter();
      v60(v107, v348);
      sub_100530ED4(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType);
      v114 = dispatch thunk of CustomStringConvertible.description.getter();
      v116 = v115;
      v383(v339, v359);
      v117 = sub_10000C4E4(v114, v116, v420);

      *(v108 + 24) = v117;
      *(v108 + 32) = 2160;
      *(v108 + 34) = 1752392040;
      *(v108 + 42) = 2081;
      v118 = dispatch thunk of CustomStringConvertible.description.getter();
      v120 = v119;
      v401 = v112;
      v112(v362, v106);
      v121 = sub_10000C4E4(v118, v120, v420);

      *(v108 + 44) = v121;
      _os_log_impl(&_mh_execute_header, v367, v370, "Exchange Contact END - Sender did not send contact {contactRequest: %{private,mask.hash}s, type: %s, contactToSend: %{private,mask.hash}s}", v108, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v125 = *(v0 + 2296);
      v126 = *(v0 + 2288);
      v127 = *(v0 + 2272);
      v128 = *(v0 + 2264);

      v129 = *(v127 + 8);
      v129(v126, v128);
      v401 = v129;
      v129(v125, v128);
    }

    v130 = *(v0 + 2640);
    v131 = *(v0 + 2632);
    v132 = *(v0 + 2504);
    v133 = *(v0 + 2488);
    v134 = *(v0 + 2136);
    v135 = *(v0 + 2048);
    v136 = *(v0 + 1936);
    v374(*(v0 + 2280), *(v0 + 2304), *(v0 + 2264));
    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.id.getter();
    v131(v132, v133);
    SFAirDrop.ContactRequest.contact.getter();
    v137 = v410(v135, 1, v134);
    v138 = *(v0 + 2272);
    v139 = *(v0 + 2264);
    if (v137 == 1)
    {
      v140 = *(v0 + 2048);
      v141 = *(v0 + 1968);
      v142 = *(v0 + 1960);
      v143 = *(v0 + 1936);
      v144 = *(v0 + 1928);
      v145 = *(v0 + 1920);
      v401(*(v0 + 2280), *(v0 + 2264));
      sub_100005508(v140, &qword_10097B198, &qword_1007FE450);
      v146 = v142[7];
      v147 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
      (*(*(v147 - 8) + 56))(v141 + v146, 1, 1, v147);
      (*(v144 + 32))(v141, v143, v145);
      v148 = 0;
      v149 = (v141 + v142[5]);
      *v149 = 0;
      v149[1] = 0;
      v150 = (v141 + v142[6]);
      *v150 = 0;
      v150[1] = 0;
      v151 = 0xF000000000000000;
    }

    else
    {
      v152 = *(v0 + 2152);
      v153 = *(v0 + 2144);
      v154 = *(v0 + 1968);
      v155 = *(v0 + 1960);
      v156 = *(v0 + 1936);
      v379 = v156;
      v384 = *(v0 + 2136);
      v157 = *(v0 + 1928);
      v158 = *(v0 + 1920);
      v375 = v158;
      v417 = *(v0 + 2280);
      (*(v153 + 32))(v152, *(v0 + 2048));
      (*(v157 + 16))(v154, v156, v158);
      v159 = SFAirDrop.ContactInfo.givenName.getter();
      v404 = v160;
      v411 = v159;
      v161 = SFAirDrop.ContactInfo.fullName.getter();
      v389 = v162;
      v394 = v161;
      v163 = v155[7];
      SFAirDrop.ContactInfo.handle.getter();
      v164 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
      (*(*(v164 - 8) + 56))(v154 + v163, 0, 1, v164);
      v148 = SFAirDrop.ContactInfo.vcard.getter();
      v151 = v165;
      (*(v153 + 8))(v152, v384);
      (*(v157 + 8))(v379, v375);
      v401(v417, v139);
      v166 = (v154 + v155[5]);
      *v166 = v411;
      v166[1] = v404;
      v167 = (v154 + v155[6]);
      *v167 = v394;
      v167[1] = v389;
    }

    v168 = *(v0 + 1976);
    v169 = *(v0 + 1968);
    v170 = *(v0 + 1960);
    v171 = (v169 + *(v170 + 32));
    *v171 = v148;
    v171[1] = v151;
    v172 = v169 + *(v170 + 36);
    *(v172 + 80) = 0;
    *(v172 + 48) = 0u;
    *(v172 + 64) = 0u;
    *(v172 + 16) = 0u;
    *(v172 + 32) = 0u;
    *v172 = 0u;
    sub_1005304C4(v169, v168, _s16ExchangeResponseVMa);
    v173 = swift_task_alloc();
    *(v0 + 2992) = v173;
    *v173 = v0;
    v173[1] = sub_100527DD8;
    v174 = *(v0 + 2584);
    v175 = *(v0 + 1976);
    goto LABEL_49;
  }

  v74 = *(v0 + 2592);
  v75 = *(v0 + 2424);
  v76 = *(v0 + 2416);
  v77 = *(v0 + 2272);
  v78 = *(v0 + 2264);
  v79 = *(v0 + 2208);
  v80 = *(v0 + 2144);
  v81 = *(v0 + 2136);
  v82 = *(v0 + 2128);
  v83 = *(v0 + 1824);
  v84 = *(v80 + 32);
  *(v0 + 2720) = v84;
  *(v0 + 2728) = (v80 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v365 = v84;
  (v84)(v79, v82, v81);
  v85 = *(v77 + 16);
  *(v0 + 2736) = v85;
  *(v0 + 2744) = (v77 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v373 = v85;
  v85(v76, v75, v78);

  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.default.getter();

  v88 = os_log_type_enabled(v86, v87);
  v89 = *(v0 + 2416);
  if (v88)
  {
    v361 = v87;
    v393 = v60;
    v90 = *(v0 + 2136);
    v91 = *(v0 + 2120);
    v92 = swift_slowAlloc();
    v420[0] = swift_slowAlloc();
    *v92 = 141558531;
    *(v92 + 4) = 1752392040;
    *(v92 + 12) = 2081;
    SFAirDrop.ContactRequest.contact.getter();
    v369 = v86;
    if (v410(v91, 1, v90) == 1)
    {
      sub_100005508(*(v0 + 2120), &qword_10097B198, &qword_1007FE450);
      v93 = 0x8000000100794A70;
      v94 = 0xD000000000000020;
    }

    else
    {
      v176 = *(v0 + 2144);
      v177 = *(v0 + 2136);
      v178 = *(v0 + 2120);
      v94 = SFAirDrop.ContactInfo.description.getter();
      v93 = v179;
      (*(v176 + 8))(v178, v177);
    }

    v349 = *(v0 + 2632);
    v353 = *(v0 + 2640);
    v180 = *(v0 + 2528);
    v181 = *(v0 + 2488);
    v182 = *(v0 + 2256);
    v356 = *(v0 + 2240);
    v183 = *(v0 + 2232);
    v184 = *(v0 + 2216);
    v124 = *(*(v0 + 2272) + 8);
    v124(*(v0 + 2416), *(v0 + 2264));
    v185 = sub_10000C4E4(v94, v93, v420);

    *(v92 + 14) = v185;
    *(v92 + 22) = 2080;
    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.askRequest.getter();
    v349(v180, v181);
    SFAirDropReceive.AskRequest.type.getter();
    v60 = v393;
    v393(v182, v356);
    sub_100530ED4(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType);
    v186 = dispatch thunk of CustomStringConvertible.description.getter();
    v188 = v187;
    v383(v183, v184);
    v189 = sub_10000C4E4(v186, v188, v420);

    *(v92 + 24) = v189;
    _os_log_impl(&_mh_execute_header, v369, v361, "Exchange Contact CONTINUE {senderContact: %{private,mask.hash}s, type: %s}", v92, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v122 = *(v0 + 2272);
    v123 = *(v0 + 2264);

    v124 = *(v122 + 8);
    v124(v89, v123);
  }

  *(v0 + 2752) = v124;
  v190 = *(v0 + 2272);
  v191 = *(v0 + 2264);
  v192 = *(v0 + 2040);
  sub_10000FF90(*(v0 + 1816), v192, &qword_10097B1C0, &qword_1007FE4C8);
  v193 = *(v190 + 48);
  *(v0 + 2760) = v193;
  *(v0 + 2768) = (v190 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v193(v192, 1, v191) != 1)
  {
    v205 = *(v0 + 2592);
    v206 = *(v0 + 2408);
    v207 = *(v0 + 2400);
    v208 = *(v0 + 2264);
    v209 = *(v0 + 1824);
    (*(*(v0 + 2272) + 32))(v206, *(v0 + 2040), v208);
    v373(v207, v206, v208);

    v210 = Logger.logObject.getter();
    v211 = static os_log_type_t.default.getter();

    v371 = v124;
    if (os_log_type_enabled(v210, v211))
    {
      v346 = *(v0 + 2632);
      v350 = *(v0 + 2640);
      v212 = *(v0 + 2528);
      v363 = v211;
      v213 = *(v0 + 2400);
      v340 = *(v0 + 2272);
      v343 = *(v0 + 2488);
      v214 = *(v0 + 2264);
      v396 = v60;
      v215 = *(v0 + 2256);
      v216 = *(v0 + 2232);
      v354 = *(v0 + 2240);
      v357 = *(v0 + 2216);
      v217 = swift_slowAlloc();
      v420[0] = swift_slowAlloc();
      *v217 = 141558531;
      *(v217 + 4) = 1752392040;
      *(v217 + 12) = 2081;
      sub_100530ED4(&qword_10097B210, &type metadata accessor for SFAirDrop.ContactRequest);
      v218 = dispatch thunk of CustomStringConvertible.description.getter();
      v219 = v124;
      v220 = v218;
      v222 = v221;
      v219(v213, v214);
      v223 = sub_10000C4E4(v220, v222, v420);

      *(v217 + 14) = v223;
      *(v217 + 22) = 2080;
      CurrentValueSubject.value.getter();
      SFAirDropReceive.Transfer.askRequest.getter();
      v346(v212, v343);
      SFAirDropReceive.AskRequest.type.getter();
      v396(v215, v354);
      sub_100530ED4(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType);
      v224 = dispatch thunk of CustomStringConvertible.description.getter();
      v226 = v225;
      v383(v216, v357);
      v227 = sub_10000C4E4(v224, v226, v420);

      *(v217 + 24) = v227;
      _os_log_impl(&_mh_execute_header, v210, v363, "Exchange Contact CONTINUE. Respond to sender {contactToSend: %{private,mask.hash}s, type: %s}", v217, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v228 = *(v0 + 2400);
      v229 = *(v0 + 2272);
      v230 = *(v0 + 2264);

      v124(v228, v230);
    }

    v231 = (v0 + 1336);
    v232 = *(v0 + 2408);
    v233 = *(v0 + 2136);
    v234 = *(v0 + 2112);
    v235 = *(*(v0 + 1824) + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_nearbyAgent);
    SFAirDrop.ContactRequest.contact.getter();
    if (v410(v234, 1, v233) == 1)
    {
      sub_100005508(*(v0 + 2112), &qword_10097B198, &qword_1007FE450);
      v236 = 0;
      v237 = 0;
    }

    else
    {
      v238 = *(v0 + 2144);
      v239 = *(v0 + 2136);
      v240 = *(v0 + 2112);
      v241 = SFAirDrop.ContactInfo.accountHandle.getter();
      v237 = v242;
      (*(v238 + 8))(v240, v239);
      v236 = v241;
    }

    v243 = (v0 + 1424);
    v244 = *(v0 + 2408);
    v245 = *(v0 + 2392);
    v246 = *(v0 + 2272);
    v247 = *(v0 + 2264);
    sub_10046A56C(v236, v237, (v0 + 192));
    v248 = *(v0 + 240);
    *(v0 + 1368) = *(v0 + 224);
    *(v0 + 1384) = v248;
    *(v0 + 1400) = *(v0 + 256);
    *(v0 + 1416) = *(v0 + 272);
    v249 = *(v0 + 208);
    *v231 = *(v0 + 192);
    *(v0 + 1352) = v249;

    (*(v246 + 104))(v245, enum case for SFAirDrop.ContactRequest.notNeeded(_:), v247);
    v250 = static SFAirDrop.ContactRequest.== infix(_:_:)();
    *(v0 + 2776) = (v246 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v371(v245, v247);
    if (v250)
    {
      *(v0 + 1504) = 0;
      *(v0 + 1472) = 0u;
      *(v0 + 1488) = 0u;
      *(v0 + 1440) = 0u;
      *(v0 + 1456) = 0u;
      *v243 = 0u;
    }

    else
    {
      sub_10000FF90(v0 + 192, v0 + 1512, &qword_10097B208, &qword_1007FE5A8);
      v251 = *(v0 + 1384);
      *(v0 + 1456) = *(v0 + 1368);
      *(v0 + 1472) = v251;
      *(v0 + 1488) = *(v0 + 1400);
      *(v0 + 1504) = *(v0 + 1416);
      v252 = *(v0 + 1352);
      *v243 = *v231;
      *(v0 + 1440) = v252;
    }

    v253 = *(v0 + 2640);
    v254 = *(v0 + 2632);
    v255 = *(v0 + 2520);
    v256 = *(v0 + 2488);
    v397 = *(v0 + 2136);
    v257 = *(v0 + 2104);
    v258 = *(v0 + 1952);
    v373(*(v0 + 2384), *(v0 + 2408), *(v0 + 2264));
    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.id.getter();
    v254(v255, v256);
    sub_10000FF90(v0 + 1424, v0 + 1600, &qword_10097B208, &qword_1007FE5A8);
    SFAirDrop.ContactRequest.contact.getter();
    v259 = v410(v257, 1, v397);
    v260 = *(v0 + 2264);
    if (v259 == 1)
    {
      v261 = *(v0 + 2104);
      v262 = *(v0 + 2000);
      v263 = *(v0 + 1960);
      v264 = *(v0 + 1952);
      v265 = *(v0 + 1928);
      v266 = *(v0 + 1920);
      v371(*(v0 + 2384), *(v0 + 2264));
      sub_100005508(v0 + 1424, &qword_10097B208, &qword_1007FE5A8);
      sub_100005508(v261, &qword_10097B198, &qword_1007FE450);
      v267 = v263[7];
      v268 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
      (*(*(v268 - 8) + 56))(v262 + v267, 1, 1, v268);
      (*(v265 + 32))(v262, v264, v266);
      v269 = (v262 + v263[5]);
      *v269 = 0;
      v269[1] = 0;
      v270 = (v262 + v263[6]);
      *v270 = 0;
      v270[1] = 0;
      *(v262 + v263[8]) = xmmword_1007F8A80;
      v271 = v262 + v263[9];
      *(v271 + 80) = 0;
      *(v271 + 48) = 0u;
      *(v271 + 64) = 0u;
      *(v271 + 16) = 0u;
      *(v271 + 32) = 0u;
      *v271 = 0u;
    }

    else
    {
      v272 = *(v0 + 2200);
      v273 = *(v0 + 2144);
      v274 = *(v0 + 2000);
      v275 = *(v0 + 1960);
      v276 = *(v0 + 1952);
      v380 = v276;
      v386 = *(v0 + 2136);
      v277 = *(v0 + 1928);
      v278 = *(v0 + 1920);
      v376 = v278;
      v419 = *(v0 + 2384);
      v365(v272, *(v0 + 2104));
      (*(v277 + 16))(v274, v276, v278);
      v279 = SFAirDrop.ContactInfo.givenName.getter();
      v406 = v280;
      v413 = v279;
      v281 = SFAirDrop.ContactInfo.fullName.getter();
      v391 = v282;
      v398 = v281;
      v283 = v275[7];
      SFAirDrop.ContactInfo.handle.getter();
      v284 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
      (*(*(v284 - 8) + 56))(v274 + v283, 0, 1, v284);
      v285 = SFAirDrop.ContactInfo.vcard.getter();
      v287 = v286;
      (*(v273 + 8))(v272, v386);
      (*(v277 + 8))(v380, v376);
      v371(v419, v260);
      v288 = (v274 + v275[5]);
      *v288 = v413;
      v288[1] = v406;
      v289 = (v274 + v275[6]);
      *v289 = v398;
      v289[1] = v391;
      v290 = (v274 + v275[8]);
      *v290 = v285;
      v290[1] = v287;
      v291 = v274 + v275[9];
      v292 = *(v0 + 1440);
      *v291 = *v243;
      *(v291 + 16) = v292;
      v293 = *(v0 + 1456);
      v294 = *(v0 + 1472);
      v295 = *(v0 + 1488);
      *(v291 + 80) = *(v0 + 1504);
      *(v291 + 48) = v294;
      *(v291 + 64) = v295;
      *(v291 + 32) = v293;
    }

    sub_1005304C4(*(v0 + 2000), *(v0 + 2008), _s16ExchangeResponseVMa);
    v296 = swift_task_alloc();
    *(v0 + 2784) = v296;
    *v296 = v0;
    v296[1] = sub_100520B28;
    v297 = *(v0 + 2584);
    v175 = *(v0 + 2008);
LABEL_49:

    return sub_1006424A0(v175);
  }

  sub_100005508(*(v0 + 2040), &qword_10097B1C0, &qword_1007FE4C8);
  v412 = *(v0 + 2632);
  v418 = *(v0 + 2640);
  v402 = *(v0 + 2616);
  v405 = *(v0 + 2624);
  v385 = *(v0 + 2600);
  v390 = *(v0 + 2608);
  v194 = *(v0 + 2528);
  v395 = *(v0 + 2488);
  v195 = *(v0 + 2480);
  v196 = *(v0 + 2464);
  v197 = *(v0 + 2208);
  v198 = *(v0 + 2144);
  v199 = *(v0 + 2136);
  v200 = *(v0 + 1912);
  v201 = *(v0 + 1824);
  sub_10052AC24(v197, v200);
  v202 = *(sub_10028088C(&unk_10097E9C0, &unk_100808DC0) + 48);
  v203 = *(v198 + 16);
  *(v0 + 2800) = v203;
  *(v0 + 2808) = (v198 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v203(v195, v197, v199);
  v204 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
  (*(*(v204 - 8) + 16))(v195 + v202, v200, v204);
  v385(v195, enum case for SFAirDropReceive.Transfer.State.waitingForShouldImportContactResponse(_:), v196);
  sub_100687AF8(v195, v194);
  v402(v195, v196);
  v412(v194, v395);

  return _swift_task_switch(sub_100520E6C, 0, 0);
}

uint64_t sub_10051F28C()
{
  v2 = *v1;
  v3 = *(*v1 + 2648);
  v4 = *v1;
  *(*v1 + 2656) = v0;

  v5 = *(v2 + 2576);
  if (v0)
  {
    v6 = sub_1005283E8;
  }

  else
  {
    v6 = sub_10051F3B8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10051F3B8()
{
  v308 = v0;
  v274 = *(v0 + 2632);
  v277 = *(v0 + 2640);
  v1 = *(v0 + 2528);
  v2 = *(v0 + 2488);
  v3 = *(v0 + 2456);
  v4 = *(v0 + 2256);
  v5 = *(v0 + 2248);
  v282 = *(v0 + 2240);
  v6 = *(v0 + 2232);
  v7 = *(v0 + 2224);
  v292 = *(v0 + 2216);
  v8 = *(v0 + 2144);
  v298 = *(v0 + 2128);
  v303 = *(v0 + 2136);
  v9 = *(v0 + 1824);
  sub_10058250C(*(v0 + 2424));
  *(v0 + 2664) = *(v9 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_subject);
  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v274(v1, v2);
  SFAirDropReceive.AskRequest.type.getter();
  v10 = *(v5 + 8);
  *(v0 + 2672) = v10;
  *(v0 + 2680) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v4, v282);
  *(v0 + 3008) = SFAirDrop.TransferType.isOnlyExchange.getter() & 1;
  v11 = *(v7 + 8);
  *(v0 + 2688) = v11;
  *(v0 + 2696) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v278 = v11;
  v11(v6, v292);
  v12 = v298;
  SFAirDrop.ContactRequest.contact.getter();
  v13 = *(v8 + 48);
  *(v0 + 2704) = v13;
  *(v0 + 2712) = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v299 = v13;
  if (v13(v12, 1, v303) == 1)
  {
    v14 = *(v0 + 2272);
    v15 = *(v0 + 2264);
    v16 = *(v0 + 2016);
    v17 = *(v0 + 1816);
    sub_100005508(*(v0 + 2128), &qword_10097B198, &qword_1007FE450);
    sub_10000FF90(v17, v16, &qword_10097B1C0, &qword_1007FE4C8);
    v18 = *(v14 + 48);
    v19 = v18(v16, 1, v15);
    v20 = *(v0 + 2304);
    v21 = *(v0 + 2272);
    v22 = *(v0 + 2264);
    v23 = *(v0 + 2016);
    if (v19 == 1)
    {
      (*(v21 + 104))(v20, enum case for SFAirDrop.ContactRequest.notNeeded(_:), *(v0 + 2264));
      if (v18(v23, 1, v22) != 1)
      {
        sub_100005508(*(v0 + 2016), &qword_10097B1C0, &qword_1007FE4C8);
      }
    }

    else
    {
      (*(v21 + 32))(v20, *(v0 + 2016), *(v0 + 2264));
    }

    v45 = *(v0 + 2592);
    v46 = *(v0 + 2304);
    v47 = *(v0 + 2288);
    v48 = *(v0 + 2264);
    v49 = *(v0 + 1824);
    v50 = *(*(v0 + 2272) + 16);
    v50(*(v0 + 2296), *(v0 + 2424), v48);
    v271 = v50;
    v50(v47, v46, v48);

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v256 = *(v0 + 2640);
      v53 = *(v0 + 2528);
      v249 = *(v0 + 2488);
      v251 = *(v0 + 2632);
      v268 = v52;
      v54 = *(v0 + 2296);
      v263 = *(v0 + 2288);
      v55 = *(v0 + 2272);
      v56 = *(v0 + 2264);
      log = v51;
      v57 = *(v0 + 2256);
      v253 = *(v0 + 2240);
      v247 = *(v0 + 2232);
      v261 = *(v0 + 2216);
      v58 = swift_slowAlloc();
      v307 = swift_slowAlloc();
      *v58 = 141559043;
      *(v58 + 4) = 1752392040;
      *(v58 + 12) = 2081;
      sub_100530ED4(&qword_10097B210, &type metadata accessor for SFAirDrop.ContactRequest);
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      v62 = *(v55 + 8);
      v62(v54, v56);
      v63 = sub_10000C4E4(v59, v61, &v307);

      *(v58 + 14) = v63;
      *(v58 + 22) = 2080;
      CurrentValueSubject.value.getter();
      SFAirDropReceive.Transfer.askRequest.getter();
      v251(v53, v249);
      SFAirDropReceive.AskRequest.type.getter();
      v10(v57, v253);
      sub_100530ED4(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType);
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v65;
      v278(v247, v261);
      v67 = sub_10000C4E4(v64, v66, &v307);

      *(v58 + 24) = v67;
      *(v58 + 32) = 2160;
      *(v58 + 34) = 1752392040;
      *(v58 + 42) = 2081;
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v69;
      v293 = v62;
      v62(v263, v56);
      v71 = sub_10000C4E4(v68, v70, &v307);

      *(v58 + 44) = v71;
      _os_log_impl(&_mh_execute_header, log, v268, "Exchange Contact END - Sender did not send contact {contactRequest: %{private,mask.hash}s, type: %s, contactToSend: %{private,mask.hash}s}", v58, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v75 = *(v0 + 2296);
      v76 = *(v0 + 2288);
      v77 = *(v0 + 2272);
      v78 = *(v0 + 2264);

      v79 = *(v77 + 8);
      v79(v76, v78);
      v293 = v79;
      v79(v75, v78);
    }

    v80 = *(v0 + 2640);
    v81 = *(v0 + 2632);
    v82 = *(v0 + 2504);
    v83 = *(v0 + 2488);
    v84 = *(v0 + 2136);
    v85 = *(v0 + 2048);
    v86 = *(v0 + 1936);
    v271(*(v0 + 2280), *(v0 + 2304), *(v0 + 2264));
    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.id.getter();
    v81(v82, v83);
    SFAirDrop.ContactRequest.contact.getter();
    v87 = v299(v85, 1, v84);
    v88 = *(v0 + 2272);
    v89 = *(v0 + 2264);
    if (v87 == 1)
    {
      v90 = *(v0 + 2048);
      v91 = *(v0 + 1968);
      v92 = *(v0 + 1960);
      v93 = *(v0 + 1936);
      v94 = *(v0 + 1928);
      v95 = *(v0 + 1920);
      v293(*(v0 + 2280), *(v0 + 2264));
      sub_100005508(v90, &qword_10097B198, &qword_1007FE450);
      v96 = v92[7];
      v97 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
      (*(*(v97 - 8) + 56))(v91 + v96, 1, 1, v97);
      (*(v94 + 32))(v91, v93, v95);
      v98 = 0;
      v99 = (v91 + v92[5]);
      *v99 = 0;
      v99[1] = 0;
      v100 = (v91 + v92[6]);
      *v100 = 0;
      v100[1] = 0;
      v101 = 0xF000000000000000;
    }

    else
    {
      v102 = *(v0 + 2152);
      v103 = *(v0 + 2144);
      v104 = *(v0 + 1968);
      v105 = *(v0 + 1960);
      v106 = *(v0 + 1936);
      v275 = v106;
      v279 = *(v0 + 2136);
      v107 = *(v0 + 1928);
      v108 = *(v0 + 1920);
      v272 = v108;
      v304 = *(v0 + 2280);
      (*(v103 + 32))(v102, *(v0 + 2048));
      (*(v107 + 16))(v104, v106, v108);
      v109 = SFAirDrop.ContactInfo.givenName.getter();
      v295 = v110;
      v300 = v109;
      v287 = SFAirDrop.ContactInfo.fullName.getter();
      v283 = v111;
      v112 = v105[7];
      SFAirDrop.ContactInfo.handle.getter();
      v113 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
      (*(*(v113 - 8) + 56))(v104 + v112, 0, 1, v113);
      v98 = SFAirDrop.ContactInfo.vcard.getter();
      v101 = v114;
      (*(v103 + 8))(v102, v279);
      (*(v107 + 8))(v275, v272);
      v293(v304, v89);
      v115 = (v104 + v105[5]);
      *v115 = v300;
      v115[1] = v295;
      v116 = (v104 + v105[6]);
      *v116 = v287;
      v116[1] = v283;
    }

    v117 = *(v0 + 1976);
    v118 = *(v0 + 1968);
    v119 = *(v0 + 1960);
    v120 = (v118 + *(v119 + 32));
    *v120 = v98;
    v120[1] = v101;
    v121 = v118 + *(v119 + 36);
    *(v121 + 80) = 0;
    *(v121 + 48) = 0u;
    *(v121 + 64) = 0u;
    *(v121 + 16) = 0u;
    *(v121 + 32) = 0u;
    *v121 = 0u;
    sub_1005304C4(v118, v117, _s16ExchangeResponseVMa);
    v122 = swift_task_alloc();
    *(v0 + 2992) = v122;
    *v122 = v0;
    v122[1] = sub_100527DD8;
    v123 = *(v0 + 2584);
    v124 = *(v0 + 1976);
    goto LABEL_36;
  }

  v24 = *(v0 + 2592);
  v25 = *(v0 + 2424);
  v26 = *(v0 + 2416);
  v27 = *(v0 + 2272);
  v28 = *(v0 + 2264);
  v29 = *(v0 + 2208);
  v30 = *(v0 + 2144);
  v31 = *(v0 + 2136);
  v32 = *(v0 + 2128);
  v33 = *(v0 + 1824);
  v34 = *(v30 + 32);
  *(v0 + 2720) = v34;
  *(v0 + 2728) = (v30 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v265 = v34;
  (v34)(v29, v32, v31);
  v35 = *(v27 + 16);
  *(v0 + 2736) = v35;
  *(v0 + 2744) = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v270 = v35;
  v35(v26, v25, v28);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  v38 = os_log_type_enabled(v36, v37);
  v39 = *(v0 + 2416);
  if (v38)
  {
    v262 = v37;
    v286 = v10;
    v40 = *(v0 + 2136);
    v41 = *(v0 + 2120);
    v42 = swift_slowAlloc();
    v307 = swift_slowAlloc();
    *v42 = 141558531;
    *(v42 + 4) = 1752392040;
    *(v42 + 12) = 2081;
    SFAirDrop.ContactRequest.contact.getter();
    v267 = v36;
    if (v299(v41, 1, v40) == 1)
    {
      sub_100005508(*(v0 + 2120), &qword_10097B198, &qword_1007FE450);
      v43 = 0x8000000100794A70;
      v44 = 0xD000000000000020;
    }

    else
    {
      v125 = *(v0 + 2144);
      v126 = *(v0 + 2136);
      v127 = *(v0 + 2120);
      v44 = SFAirDrop.ContactInfo.description.getter();
      v43 = v128;
      (*(v125 + 8))(v127, v126);
    }

    v254 = *(v0 + 2632);
    v257 = *(v0 + 2640);
    v129 = *(v0 + 2528);
    v130 = *(v0 + 2488);
    v131 = *(v0 + 2256);
    v259 = *(v0 + 2240);
    v132 = *(v0 + 2232);
    v133 = *(v0 + 2216);
    v74 = *(*(v0 + 2272) + 8);
    (v74)(*(v0 + 2416), *(v0 + 2264));
    v134 = sub_10000C4E4(v44, v43, &v307);

    *(v42 + 14) = v134;
    *(v42 + 22) = 2080;
    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.askRequest.getter();
    v254(v129, v130);
    SFAirDropReceive.AskRequest.type.getter();
    v10 = v286;
    v286(v131, v259);
    sub_100530ED4(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType);
    v135 = dispatch thunk of CustomStringConvertible.description.getter();
    v137 = v136;
    v278(v132, v133);
    v138 = sub_10000C4E4(v135, v137, &v307);

    *(v42 + 24) = v138;
    _os_log_impl(&_mh_execute_header, v267, v262, "Exchange Contact CONTINUE {senderContact: %{private,mask.hash}s, type: %s}", v42, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v72 = *(v0 + 2272);
    v73 = *(v0 + 2264);

    v74 = *(v72 + 8);
    (v74)(v39, v73);
  }

  *(v0 + 2752) = v74;
  v139 = *(v0 + 2272);
  v140 = *(v0 + 2264);
  v141 = *(v0 + 2040);
  sub_10000FF90(*(v0 + 1816), v141, &qword_10097B1C0, &qword_1007FE4C8);
  v142 = *(v139 + 48);
  *(v0 + 2760) = v142;
  *(v0 + 2768) = (v139 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v142(v141, 1, v140) != 1)
  {
    v154 = *(v0 + 2592);
    v155 = *(v0 + 2408);
    v156 = *(v0 + 2400);
    v157 = *(v0 + 2264);
    v158 = *(v0 + 1824);
    (*(*(v0 + 2272) + 32))(v155, *(v0 + 2040), v157);
    v270(v156, v155, v157);

    v159 = Logger.logObject.getter();
    v160 = static os_log_type_t.default.getter();

    v269 = v74;
    if (os_log_type_enabled(v159, v160))
    {
      v252 = *(v0 + 2632);
      v255 = *(v0 + 2640);
      v161 = *(v0 + 2528);
      v264 = v160;
      v162 = *(v0 + 2400);
      v248 = *(v0 + 2272);
      v250 = *(v0 + 2488);
      v163 = *(v0 + 2264);
      v289 = v10;
      v164 = *(v0 + 2256);
      v165 = *(v0 + 2232);
      v258 = *(v0 + 2240);
      v260 = *(v0 + 2216);
      v166 = swift_slowAlloc();
      v307 = swift_slowAlloc();
      *v166 = 141558531;
      *(v166 + 4) = 1752392040;
      *(v166 + 12) = 2081;
      sub_100530ED4(&qword_10097B210, &type metadata accessor for SFAirDrop.ContactRequest);
      v167 = dispatch thunk of CustomStringConvertible.description.getter();
      v168 = v74;
      v169 = v167;
      v171 = v170;
      (v168)(v162, v163);
      v172 = sub_10000C4E4(v169, v171, &v307);

      *(v166 + 14) = v172;
      *(v166 + 22) = 2080;
      CurrentValueSubject.value.getter();
      SFAirDropReceive.Transfer.askRequest.getter();
      v252(v161, v250);
      SFAirDropReceive.AskRequest.type.getter();
      v289(v164, v258);
      sub_100530ED4(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType);
      v173 = dispatch thunk of CustomStringConvertible.description.getter();
      v175 = v174;
      v278(v165, v260);
      v176 = sub_10000C4E4(v173, v175, &v307);

      *(v166 + 24) = v176;
      _os_log_impl(&_mh_execute_header, v159, v264, "Exchange Contact CONTINUE. Respond to sender {contactToSend: %{private,mask.hash}s, type: %s}", v166, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v177 = *(v0 + 2400);
      v178 = *(v0 + 2272);
      v179 = *(v0 + 2264);

      (v74)(v177, v179);
    }

    v180 = (v0 + 1336);
    v181 = *(v0 + 2408);
    v182 = *(v0 + 2136);
    v183 = *(v0 + 2112);
    v184 = *(*(v0 + 1824) + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_nearbyAgent);
    SFAirDrop.ContactRequest.contact.getter();
    if (v299(v183, 1, v182) == 1)
    {
      sub_100005508(*(v0 + 2112), &qword_10097B198, &qword_1007FE450);
      v185 = 0;
      v186 = 0;
    }

    else
    {
      v187 = *(v0 + 2144);
      v188 = *(v0 + 2136);
      v189 = *(v0 + 2112);
      v190 = SFAirDrop.ContactInfo.accountHandle.getter();
      v186 = v191;
      (*(v187 + 8))(v189, v188);
      v185 = v190;
    }

    v192 = (v0 + 1424);
    v193 = *(v0 + 2408);
    v194 = *(v0 + 2392);
    v195 = *(v0 + 2272);
    v196 = *(v0 + 2264);
    sub_10046A56C(v185, v186, (v0 + 192));
    v197 = *(v0 + 240);
    *(v0 + 1368) = *(v0 + 224);
    *(v0 + 1384) = v197;
    *(v0 + 1400) = *(v0 + 256);
    *(v0 + 1416) = *(v0 + 272);
    v198 = *(v0 + 208);
    *v180 = *(v0 + 192);
    *(v0 + 1352) = v198;

    (*(v195 + 104))(v194, enum case for SFAirDrop.ContactRequest.notNeeded(_:), v196);
    v199 = static SFAirDrop.ContactRequest.== infix(_:_:)();
    *(v0 + 2776) = (v195 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v269)(v194, v196);
    if (v199)
    {
      *(v0 + 1504) = 0;
      *(v0 + 1472) = 0u;
      *(v0 + 1488) = 0u;
      *(v0 + 1440) = 0u;
      *(v0 + 1456) = 0u;
      *v192 = 0u;
    }

    else
    {
      sub_10000FF90(v0 + 192, v0 + 1512, &qword_10097B208, &qword_1007FE5A8);
      v200 = *(v0 + 1384);
      *(v0 + 1456) = *(v0 + 1368);
      *(v0 + 1472) = v200;
      *(v0 + 1488) = *(v0 + 1400);
      *(v0 + 1504) = *(v0 + 1416);
      v201 = *(v0 + 1352);
      *v192 = *v180;
      *(v0 + 1440) = v201;
    }

    v202 = *(v0 + 2640);
    v203 = *(v0 + 2632);
    v204 = *(v0 + 2520);
    v205 = *(v0 + 2488);
    v290 = *(v0 + 2136);
    v206 = *(v0 + 2104);
    v207 = *(v0 + 1952);
    v270(*(v0 + 2384), *(v0 + 2408), *(v0 + 2264));
    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.id.getter();
    v203(v204, v205);
    sub_10000FF90(v0 + 1424, v0 + 1600, &qword_10097B208, &qword_1007FE5A8);
    SFAirDrop.ContactRequest.contact.getter();
    v208 = v299(v206, 1, v290);
    v209 = *(v0 + 2264);
    if (v208 == 1)
    {
      v210 = *(v0 + 2104);
      v211 = *(v0 + 2000);
      v212 = *(v0 + 1960);
      v213 = *(v0 + 1952);
      v214 = *(v0 + 1928);
      v215 = *(v0 + 1920);
      (v269)(*(v0 + 2384), *(v0 + 2264));
      sub_100005508(v0 + 1424, &qword_10097B208, &qword_1007FE5A8);
      sub_100005508(v210, &qword_10097B198, &qword_1007FE450);
      v216 = v212[7];
      v217 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
      (*(*(v217 - 8) + 56))(v211 + v216, 1, 1, v217);
      (*(v214 + 32))(v211, v213, v215);
      v218 = (v211 + v212[5]);
      *v218 = 0;
      v218[1] = 0;
      v219 = (v211 + v212[6]);
      *v219 = 0;
      v219[1] = 0;
      *(v211 + v212[8]) = xmmword_1007F8A80;
      v220 = v211 + v212[9];
      *(v220 + 80) = 0;
      *(v220 + 48) = 0u;
      *(v220 + 64) = 0u;
      *(v220 + 16) = 0u;
      *(v220 + 32) = 0u;
      *v220 = 0u;
    }

    else
    {
      v221 = *(v0 + 2200);
      v222 = *(v0 + 2144);
      v223 = *(v0 + 2000);
      v224 = *(v0 + 1960);
      v225 = *(v0 + 1952);
      v276 = v225;
      v281 = *(v0 + 2136);
      v226 = *(v0 + 1928);
      v227 = *(v0 + 1920);
      v273 = v227;
      v306 = *(v0 + 2384);
      v265(v221, *(v0 + 2104));
      (*(v226 + 16))(v223, v225, v227);
      v228 = SFAirDrop.ContactInfo.givenName.getter();
      v297 = v229;
      v302 = v228;
      v291 = SFAirDrop.ContactInfo.fullName.getter();
      v285 = v230;
      v231 = v224[7];
      SFAirDrop.ContactInfo.handle.getter();
      v232 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
      (*(*(v232 - 8) + 56))(v223 + v231, 0, 1, v232);
      v233 = SFAirDrop.ContactInfo.vcard.getter();
      v235 = v234;
      (*(v222 + 8))(v221, v281);
      (*(v226 + 8))(v276, v273);
      (v269)(v306, v209);
      v236 = (v223 + v224[5]);
      *v236 = v302;
      v236[1] = v297;
      v237 = (v223 + v224[6]);
      *v237 = v291;
      v237[1] = v285;
      v238 = (v223 + v224[8]);
      *v238 = v233;
      v238[1] = v235;
      v239 = v223 + v224[9];
      v240 = *(v0 + 1440);
      *v239 = *v192;
      *(v239 + 16) = v240;
      v241 = *(v0 + 1456);
      v242 = *(v0 + 1472);
      v243 = *(v0 + 1488);
      *(v239 + 80) = *(v0 + 1504);
      *(v239 + 48) = v242;
      *(v239 + 64) = v243;
      *(v239 + 32) = v241;
    }

    sub_1005304C4(*(v0 + 2000), *(v0 + 2008), _s16ExchangeResponseVMa);
    v244 = swift_task_alloc();
    *(v0 + 2784) = v244;
    *v244 = v0;
    v244[1] = sub_100520B28;
    v245 = *(v0 + 2584);
    v124 = *(v0 + 2008);
LABEL_36:

    return sub_1006424A0(v124);
  }

  sub_100005508(*(v0 + 2040), &qword_10097B1C0, &qword_1007FE4C8);
  v301 = *(v0 + 2632);
  v305 = *(v0 + 2640);
  v294 = *(v0 + 2616);
  v296 = *(v0 + 2624);
  v280 = *(v0 + 2600);
  v284 = *(v0 + 2608);
  v143 = *(v0 + 2528);
  v288 = *(v0 + 2488);
  v144 = *(v0 + 2480);
  v145 = *(v0 + 2464);
  v146 = *(v0 + 2208);
  v147 = *(v0 + 2144);
  v148 = *(v0 + 2136);
  v149 = *(v0 + 1912);
  v150 = *(v0 + 1824);
  sub_10052AC24(v146, v149);
  v151 = *(sub_10028088C(&unk_10097E9C0, &unk_100808DC0) + 48);
  v152 = *(v147 + 16);
  *(v0 + 2800) = v152;
  *(v0 + 2808) = (v147 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v152(v144, v146, v148);
  v153 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
  (*(*(v153 - 8) + 16))(v144 + v151, v149, v153);
  v280(v144, enum case for SFAirDropReceive.Transfer.State.waitingForShouldImportContactResponse(_:), v145);
  sub_100687AF8(v144, v143);
  v294(v144, v145);
  v301(v143, v288);

  return _swift_task_switch(sub_100520E6C, 0, 0);
}

uint64_t sub_100520B28()
{
  v2 = *v1;
  v3 = *(*v1 + 2784);
  v4 = *v1;
  *(*v1 + 2792) = v0;

  v5 = *(v2 + 2576);
  if (v0)
  {
    v6 = sub_100528D38;
  }

  else
  {
    v6 = sub_100520C54;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100520C54()
{
  v1 = v0[347];
  v2 = v0[344];
  v3 = v0[301];
  v4 = v0[283];
  v5 = v0[251];
  sub_100005508((v0 + 178), &qword_10097B208, &qword_1007FE5A8);
  sub_100005508((v0 + 24), &qword_10097B208, &qword_1007FE5A8);
  sub_100530400(v5, _s16ExchangeResponseVMa);
  v2(v3, v4);
  v23 = v0[329];
  v24 = v0[330];
  v21 = v0[327];
  v22 = v0[328];
  v18 = v0[325];
  v19 = v0[326];
  v6 = v0[316];
  v20 = v0[311];
  v7 = v0[310];
  v8 = v0[308];
  v9 = v0[276];
  v10 = v0[268];
  v11 = v0[267];
  v12 = v0[239];
  v13 = v0[228];
  sub_10052AC24(v9, v12);
  v14 = *(sub_10028088C(&unk_10097E9C0, &unk_100808DC0) + 48);
  v15 = *(v10 + 16);
  v0[350] = v15;
  v0[351] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v7, v9, v11);
  v16 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
  (*(*(v16 - 8) + 16))(v7 + v14, v12, v16);
  v18(v7, enum case for SFAirDropReceive.Transfer.State.waitingForShouldImportContactResponse(_:), v8);
  sub_100687AF8(v7, v6);
  v21(v7, v8);
  v23(v6, v20);

  return _swift_task_switch(sub_100520E6C, 0, 0);
}

uint64_t sub_100520E6C()
{
  v1 = v0[239];
  v2 = swift_task_alloc();
  v0[352] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[353] = v3;
  *(v3 + 16) = v1;
  v4 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v5 = swift_task_alloc();
  v0[354] = v5;
  *v5 = v0;
  v5[1] = sub_100520F74;
  v6 = v0[238];
  v7 = v0[235];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v6, &unk_1007F9898, v2, sub_1002E3870, v3, 0, 0, v7);
}

uint64_t sub_100520F74()
{
  v2 = *v1;
  v3 = *(*v1 + 2832);
  v10 = *v1;
  *(*v1 + 2840) = v0;

  if (v0)
  {
    v4 = sub_100522990;
    v5 = 0;
  }

  else
  {
    v6 = v2[353];
    v7 = v2[352];
    v8 = v2[322];

    v4 = sub_1005210A8;
    v5 = v8;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1005210A8()
{
  v364 = v0;
  v1 = *(v0 + 2592);
  v2 = *(v0 + 1904);
  v3 = *(v0 + 1896);
  v4 = *(v0 + 1888);
  v5 = *(v0 + 1880);
  v6 = *(v0 + 1824);
  (*(v4 + 104))(v3, enum case for SFAirDropReceive.ItemDestination.noItem(_:), v5);
  sub_100530ED4(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination);
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();
  v8 = *(v4 + 8);
  *(v0 + 2848) = v8;
  *(v0 + 2856) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v3, v5);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = (v7 & 1) == 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Exchange Contact CONTINUE. Accept permission {shouldAcceptSenderContact: %{BOOL}d}", v11, 8u);
  }

  v12 = *(v0 + 2712);
  v13 = *(v0 + 2704);
  v14 = *(v0 + 2424);
  v15 = *(v0 + 2136);
  v16 = *(v0 + 2096);

  SFAirDrop.ContactRequest.contact.getter();
  if (v13(v16, 1, v15) == 1)
  {
    v17 = *(v0 + 2744);
    v18 = *(v0 + 2736);
    v19 = *(v0 + 2592);
    v20 = *(v0 + 2424);
    v21 = *(v0 + 2360);
    v22 = *(v0 + 2264);
    v23 = *(v0 + 1824);
    sub_100005508(*(v0 + 2096), &qword_10097B198, &qword_1007FE450);
    v18(v21, v20, v22);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 2752);
    if (v26)
    {
      v355 = *(v0 + 3008);
      v28 = *(v0 + 2360);
      v338 = *(v0 + 2272);
      v29 = *(v0 + 2264);
      v30 = swift_slowAlloc();
      v346 = swift_slowAlloc();
      v363[0] = v346;
      *v30 = 141558787;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2081;
      sub_100530ED4(&qword_10097B210, &type metadata accessor for SFAirDrop.ContactRequest);
      v31 = v7;
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      v27(v28, v29);
      v35 = sub_10000C4E4(v32, v34, v363);

      *(v30 + 14) = v35;
      *(v30 + 22) = 1024;
      *(v30 + 24) = (v31 & 1) == 0;
      *(v30 + 28) = 1024;
      *(v30 + 30) = v355;
      _os_log_impl(&_mh_execute_header, v24, v25, "Exchange Contact IMPORT SKIP {contactRequest: %{private,mask.hash}s, shouldAcceptSenderContact: %{BOOL}d, isExchangeType: %{BOOL}d}", v30, 0x22u);
      sub_10000C60C(v346);
    }

    else
    {
      v56 = *(v0 + 2360);
      v57 = *(v0 + 2272);
      v58 = *(v0 + 2264);

      v27(v56, v58);
    }

    *(v0 + 2920) = 0u;
    v59 = *(v0 + 2768);
    v60 = *(v0 + 2760);
    v61 = *(v0 + 2264);
    v62 = *(v0 + 2024);
    sub_10000FF90(*(v0 + 1816), v62, &qword_10097B1C0, &qword_1007FE4C8);
    LODWORD(v61) = v60(v62, 1, v61);
    sub_100005508(v62, &qword_10097B1C0, &qword_1007FE4C8);
    if (v61 == 1)
    {
      v63 = *(v0 + 2712);
      v64 = *(v0 + 2704);
      v65 = *(v0 + 2424);
      v66 = *(v0 + 2136);
      v67 = *(v0 + 2088);
      SFAirDrop.ContactRequest.contact.getter();
      if (v64(v67, 1, v66) == 1)
      {
        v68 = (v0 + 2088);
LABEL_25:
        v130 = *v68;
        v131 = *(v0 + 2744);
        v132 = *(v0 + 2736);
        v133 = *(v0 + 2592);
        v134 = *(v0 + 2424);
        v135 = *(v0 + 2328);
        v136 = *(v0 + 2264);
        v137 = *(v0 + 1824);
        sub_100005508(v130, &qword_10097B198, &qword_1007FE450);
        v132(v135, v134, v136);
        v138 = Logger.logObject.getter();
        v139 = static os_log_type_t.default.getter();
        v140 = os_log_type_enabled(v138, v139);
        v141 = *(v0 + 2328);
        if (v140)
        {
          v142 = *(v0 + 2712);
          v143 = *(v0 + 2704);
          v144 = *(v0 + 2136);
          v145 = *(v0 + 2072);
          v146 = swift_slowAlloc();
          v147 = swift_slowAlloc();
          v363[0] = v147;
          *v146 = 141558275;
          *(v146 + 4) = 1752392040;
          *(v146 + 12) = 2081;
          SFAirDrop.ContactRequest.contact.getter();
          if (v143(v145, 1, v144) == 1)
          {
            sub_100005508(*(v0 + 2072), &qword_10097B198, &qword_1007FE450);
            v148 = 0x8000000100794A70;
            v149 = 0xD000000000000020;
          }

          else
          {
            v165 = *(v0 + 2144);
            v166 = *(v0 + 2136);
            v167 = *(v0 + 2072);
            v149 = SFAirDrop.ContactInfo.description.getter();
            v148 = v168;
            (*(v165 + 8))(v167, v166);
          }

          v169 = *(v0 + 2272) + 8;
          (*(v0 + 2752))(*(v0 + 2328), *(v0 + 2264));
          v170 = sub_10000C4E4(v149, v148, v363);

          *(v146 + 14) = v170;
          _os_log_impl(&_mh_execute_header, v138, v139, "Exchange Contact SHARE BACK PERMISSION SKIP. No senderContact or no receiverContact {senderContact: %{private,mask.hash}s}", v146, 0x16u);
          sub_10000C60C(v147);
        }

        else
        {
          v150 = *(v0 + 2752);
          v151 = *(v0 + 2272);
          v152 = *(v0 + 2264);

          v150(v141, v152);
        }

        v171 = (v0 + 280);
        v172 = *(v0 + 2264);
        v362 = enum case for SFAirDrop.ContactRequest.notNeeded(_:);
        (*(*(v0 + 2272) + 104))(*(v0 + 2352));
        v173 = *(v0 + 2744);
        v174 = *(v0 + 2736);
        v343 = *(v0 + 2704);
        v352 = *(v0 + 2712);
        v324 = *(v0 + 2632);
        v330 = *(v0 + 2640);
        v299 = *(v0 + 2600);
        v301 = *(v0 + 2608);
        v303 = *(v0 + 2528);
        v305 = *(v0 + 2488);
        v307 = *(v0 + 2616);
        v175 = *(v0 + 2480);
        v176 = *(v0 + 2464);
        v177 = *(v0 + 2424);
        v178 = *(v0 + 2352);
        v179 = *(v0 + 2264);
        v336 = *(v0 + 2136);
        v312 = *(v0 + 2064);
        v318 = *(v0 + 2624);
        v297 = *(v0 + 1824);
        v180 = *(sub_10028088C(&qword_10097C650, &unk_100808DE0) + 48);
        v174(v175, v177, v179);
        v174(v175 + v180, v178, v179);
        v299(v175, enum case for SFAirDropReceive.Transfer.State.sharingContactBack(_:), v176);
        sub_100687AF8(v175, v303);
        v307(v175, v176);
        v324(v303, v305);
        v181 = *(v297 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_nearbyAgent);
        SFAirDrop.ContactRequest.contact.getter();
        if (v343(v312, 1, v336) == 1)
        {
          sub_100005508(*(v0 + 2064), &qword_10097B198, &qword_1007FE450);
          v182 = 0;
          v183 = 0;
        }

        else
        {
          v184 = *(v0 + 2144);
          v185 = *(v0 + 2136);
          v186 = *(v0 + 2064);
          v187 = SFAirDrop.ContactInfo.accountHandle.getter();
          v183 = v188;
          (*(v184 + 8))(v186, v185);
          v182 = v187;
        }

        v189 = *(v0 + 2752);
        v190 = *(v0 + 2392);
        v191 = *(v0 + 2352);
        v192 = *(v0 + 2272);
        v193 = *(v0 + 2264);
        sub_10046A56C(v182, v183, (v0 + 104));
        v194 = *(v0 + 152);
        *(v0 + 312) = *(v0 + 136);
        *(v0 + 328) = v194;
        *(v0 + 344) = *(v0 + 168);
        *(v0 + 360) = *(v0 + 184);
        v195 = *(v0 + 120);
        *v171 = *(v0 + 104);
        *(v0 + 296) = v195;

        (*(v192 + 104))(v190, v362, v193);
        v196 = static SFAirDrop.ContactRequest.== infix(_:_:)();
        *(v0 + 2968) = (v192 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v189(v190, v193);
        if (v196)
        {
          *(v0 + 448) = 0;
          *(v0 + 416) = 0u;
          *(v0 + 432) = 0u;
          *(v0 + 384) = 0u;
          *(v0 + 400) = 0u;
          *(v0 + 368) = 0u;
        }

        else
        {
          sub_10000FF90(v0 + 104, v0 + 456, &qword_10097B208, &qword_1007FE5A8);
          v197 = *(v0 + 328);
          *(v0 + 400) = *(v0 + 312);
          *(v0 + 416) = v197;
          *(v0 + 432) = *(v0 + 344);
          *(v0 + 448) = *(v0 + 360);
          v198 = *(v0 + 296);
          *(v0 + 368) = *v171;
          *(v0 + 384) = v198;
        }

        v199 = *(v0 + 2744);
        v344 = *(v0 + 2704);
        v353 = *(v0 + 2712);
        v200 = *(v0 + 2664);
        v201 = *(v0 + 2640);
        v202 = *(v0 + 2632);
        v203 = *(v0 + 2512);
        v204 = *(v0 + 2488);
        v205 = *(v0 + 2136);
        v206 = *(v0 + 2056);
        v207 = *(v0 + 1944);
        (*(v0 + 2736))(*(v0 + 2320), *(v0 + 2352), *(v0 + 2264));
        CurrentValueSubject.value.getter();
        SFAirDropReceive.Transfer.id.getter();
        v202(v203, v204);
        sub_10000FF90(v0 + 368, v0 + 544, &qword_10097B208, &qword_1007FE5A8);
        SFAirDrop.ContactRequest.contact.getter();
        if (v344(v206, 1, v205) == 1)
        {
          v208 = *(v0 + 2056);
          v209 = *(v0 + 1984);
          v210 = *(v0 + 1960);
          v211 = *(v0 + 1944);
          v212 = *(v0 + 1928);
          v213 = *(v0 + 1920);
          (*(v0 + 2752))(*(v0 + 2320), *(v0 + 2264));
          sub_100005508(v0 + 368, &qword_10097B208, &qword_1007FE5A8);
          sub_100005508(v208, &qword_10097B198, &qword_1007FE450);
          v214 = v210[7];
          v215 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
          (*(*(v215 - 8) + 56))(v209 + v214, 1, 1, v215);
          (*(v212 + 32))(v209, v211, v213);
          v216 = (v209 + v210[5]);
          *v216 = 0;
          v216[1] = 0;
          v217 = (v209 + v210[6]);
          *v217 = 0;
          v217[1] = 0;
          *(v209 + v210[8]) = xmmword_1007F8A80;
          v218 = v209 + v210[9];
          *(v218 + 80) = 0;
          *(v218 + 48) = 0u;
          *(v218 + 64) = 0u;
          *(v218 + 16) = 0u;
          *(v218 + 32) = 0u;
          *v218 = 0u;
        }

        else
        {
          v219 = *(v0 + 2728);
          v354 = *(v0 + 2752);
          v337 = *(v0 + 2264);
          v345 = *(v0 + 2320);
          v220 = *(v0 + 2160);
          v221 = *(v0 + 2144);
          v222 = *(v0 + 2136);
          v223 = *(v0 + 1984);
          v224 = *(v0 + 1960);
          v225 = *(v0 + 1944);
          v308 = v225;
          v226 = *(v0 + 1928);
          v227 = *(v0 + 1920);
          (*(v0 + 2720))(v220, *(v0 + 2056), v222);
          (*(v226 + 16))(v223, v225, v227);
          v228 = SFAirDrop.ContactInfo.givenName.getter();
          v325 = v229;
          v331 = v228;
          v230 = SFAirDrop.ContactInfo.fullName.getter();
          v313 = v231;
          v319 = v230;
          v232 = v224[7];
          SFAirDrop.ContactInfo.handle.getter();
          v233 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
          (*(*(v233 - 8) + 56))(v223 + v232, 0, 1, v233);
          v234 = SFAirDrop.ContactInfo.vcard.getter();
          v236 = v235;
          (*(v221 + 8))(v220, v222);
          (*(v226 + 8))(v308, v227);
          v354(v345, v337);
          v237 = (v223 + v224[5]);
          *v237 = v331;
          v237[1] = v325;
          v238 = (v223 + v224[6]);
          *v238 = v319;
          v238[1] = v313;
          v239 = (v223 + v224[8]);
          *v239 = v234;
          v239[1] = v236;
          v240 = v223 + v224[9];
          v241 = *(v0 + 384);
          *v240 = *(v0 + 368);
          *(v240 + 16) = v241;
          v242 = *(v0 + 400);
          v243 = *(v0 + 416);
          v244 = *(v0 + 432);
          *(v240 + 80) = *(v0 + 448);
          *(v240 + 48) = v243;
          *(v240 + 64) = v244;
          *(v240 + 32) = v242;
        }

        sub_1005304C4(*(v0 + 1984), *(v0 + 1992), _s16ExchangeResponseVMa);
        v245 = swift_task_alloc();
        *(v0 + 2976) = v245;
        *v245 = v0;
        v245[1] = sub_1005274CC;
        v246 = *(v0 + 2584);
        v247 = *(v0 + 1992);

        return sub_1006424A0(v247);
      }

      v123 = *(v0 + 2728);
      v124 = *(v0 + 2712);
      v125 = *(v0 + 2704);
      v126 = *(v0 + 2136);
      v127 = *(v0 + 2080);
      v128 = *(v0 + 1824);
      (*(v0 + 2720))(*(v0 + 2176), *(v0 + 2088), v126);
      v129 = *(v128 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_deviceStatus);
      sub_1004E5AD8(v127);
      if (v125(v127, 1, v126) == 1)
      {
        v68 = (v0 + 2080);
        (*(*(v0 + 2144) + 8))(*(v0 + 2176), *(v0 + 2136));
        goto LABEL_25;
      }

      v153 = *(v0 + 2800);
      v154 = *(v0 + 2728);
      v361 = *(v0 + 2640);
      v351 = *(v0 + 2632);
      v342 = *(v0 + 2624);
      v335 = *(v0 + 2616);
      v323 = *(v0 + 2608);
      v311 = *(v0 + 2808);
      v317 = *(v0 + 2600);
      v155 = *(v0 + 2528);
      v329 = *(v0 + 2488);
      v156 = *(v0 + 2480);
      v157 = *(v0 + 2464);
      v158 = *(v0 + 2176);
      v159 = *(v0 + 2168);
      v160 = *(v0 + 2136);
      v161 = *(v0 + 1832);
      v162 = *(v0 + 1824);
      (*(v0 + 2720))(v159, *(v0 + 2080), v160);
      sub_10052BDD8(v158, v159, v161);
      v163 = *(sub_10028088C(&qword_10097C658, &unk_1008042B0) + 48);
      v153(v156, v159, v160);
      v164 = sub_10028088C(&unk_10097C660, &unk_10080D3E0);
      (*(*(v164 - 8) + 16))(v156 + v163, v161, v164);
      v317(v156, enum case for SFAirDropReceive.Transfer.State.waitingForContactShareBackResponse(_:), v157);
      sub_100687AF8(v156, v155);
      v335(v156, v157);
      v351(v155, v329);

      return _swift_task_switch(sub_100526380, 0, 0);
    }

    else
    {
      v83 = *(v0 + 2592);
      v84 = *(v0 + 1824);

      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v85, v86))
      {
        v348 = *(v0 + 2688);
        v358 = *(v0 + 2696);
        v326 = *(v0 + 2672);
        v332 = *(v0 + 2680);
        v87 = *(v0 + 2664);
        v309 = *(v0 + 2632);
        v314 = *(v0 + 2640);
        v88 = *(v0 + 2528);
        v89 = *(v0 + 2488);
        v90 = *(v0 + 2256);
        v320 = *(v0 + 2240);
        v91 = *(v0 + 2232);
        v339 = *(v0 + 2216);
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v363[0] = v93;
        *v92 = 136315138;
        CurrentValueSubject.value.getter();
        SFAirDropReceive.Transfer.askRequest.getter();
        v309(v88, v89);
        SFAirDropReceive.AskRequest.type.getter();
        v326(v90, v320);
        sub_100530ED4(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType);
        v94 = dispatch thunk of CustomStringConvertible.description.getter();
        v96 = v95;
        v348(v91, v339);
        v97 = sub_10000C4E4(v94, v96, v363);

        *(v92 + 4) = v97;
        _os_log_impl(&_mh_execute_header, v85, v86, "Exchange Contact SHARE BACK SKIP. Already responded with contact {type: %s}", v92, 0xCu);
        sub_10000C60C(v93);
      }

      v98 = *(v0 + 1824) + *(v0 + 2592);
      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        *v101 = 0;
        _os_log_impl(&_mh_execute_header, v99, v100, "Exchange Contact END", v101, 2u);
      }

      v102 = *(v0 + 2856);
      v103 = *(v0 + 2848);
      v104 = *(v0 + 2552);
      v340 = *(v0 + 2544);
      v349 = *(v0 + 2568);
      v359 = *(v0 + 2456);
      v321 = *(v0 + 2424);
      v327 = *(v0 + 2752);
      v105 = *(v0 + 2272);
      v315 = *(v0 + 2264);
      v106 = *(v0 + 2208);
      v107 = v99;
      v108 = *(v0 + 2144);
      v109 = *(v0 + 2136);
      v333 = *(v0 + 1912);
      v110 = *(v0 + 1904);
      v111 = *(v0 + 1880);

      v103(v110, v111);
      (*(v108 + 8))(v106, v109);
      v327(v321, v315);
      (*(v104 + 8))(v349, v340);
      sub_100005508(v333, &qword_100976908, &unk_100801D60);
      sub_100530400(v359, _s15ExchangeRequestVMa);
      v350 = *(v0 + 2920);
      v360 = *(v0 + 2928);
      v112 = *(v0 + 2568);
      v113 = *(v0 + 2560);
      v114 = *(v0 + 2536);
      v115 = *(v0 + 2528);
      v116 = *(v0 + 2520);
      v117 = *(v0 + 2512);
      v118 = *(v0 + 2504);
      v119 = *(v0 + 2480);
      v120 = *(v0 + 2456);
      v121 = *(v0 + 2432);
      v248 = *(v0 + 2424);
      v249 = *(v0 + 2416);
      v250 = *(v0 + 2408);
      v251 = *(v0 + 2400);
      v252 = *(v0 + 2392);
      v253 = *(v0 + 2384);
      v254 = *(v0 + 2376);
      v255 = *(v0 + 2368);
      v256 = *(v0 + 2360);
      v257 = *(v0 + 2352);
      v258 = *(v0 + 2344);
      v259 = *(v0 + 2336);
      v260 = *(v0 + 2328);
      v261 = *(v0 + 2320);
      v262 = *(v0 + 2312);
      v263 = *(v0 + 2304);
      v264 = *(v0 + 2296);
      v265 = *(v0 + 2288);
      v266 = *(v0 + 2280);
      v267 = *(v0 + 2256);
      v268 = *(v0 + 2232);
      v269 = *(v0 + 2208);
      v270 = *(v0 + 2200);
      v271 = *(v0 + 2192);
      v272 = *(v0 + 2184);
      v273 = *(v0 + 2176);
      v274 = *(v0 + 2168);
      v275 = *(v0 + 2160);
      v276 = *(v0 + 2152);
      v277 = *(v0 + 2128);
      v278 = *(v0 + 2120);
      v279 = *(v0 + 2112);
      v280 = *(v0 + 2104);
      v281 = *(v0 + 2096);
      v282 = *(v0 + 2088);
      v283 = *(v0 + 2080);
      v284 = *(v0 + 2072);
      v285 = *(v0 + 2064);
      v286 = *(v0 + 2056);
      v287 = *(v0 + 2048);
      v288 = *(v0 + 2040);
      v289 = *(v0 + 2032);
      v290 = *(v0 + 2024);
      v291 = *(v0 + 2016);
      v292 = *(v0 + 2008);
      v293 = *(v0 + 2000);
      v294 = *(v0 + 1992);
      v295 = *(v0 + 1984);
      v296 = *(v0 + 1976);
      v298 = *(v0 + 1968);
      v300 = *(v0 + 1952);
      v302 = *(v0 + 1944);
      v304 = *(v0 + 1936);
      v306 = *(v0 + 1912);
      v310 = *(v0 + 1904);
      v316 = *(v0 + 1896);
      v322 = *(v0 + 1872);
      v328 = *(v0 + 1848);
      v334 = *(v0 + 1840);
      v341 = *(v0 + 1832);

      v122 = *(v0 + 8);

      return v122(v350, v360);
    }
  }

  else
  {
    v36 = *(v0 + 2808);
    v37 = *(v0 + 2800);
    v38 = *(v0 + 2728);
    v39 = *(v0 + 2592);
    v40 = *(v0 + 2192);
    v41 = *(v0 + 2184);
    v42 = *(v0 + 2136);
    v43 = *(v0 + 1824);
    (*(v0 + 2720))(v40, *(v0 + 2096), v42);
    v37(v41, v40, v42);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v0 + 2184);
    v48 = *(v0 + 2144);
    v49 = *(v0 + 2136);
    if (v46)
    {
      v50 = swift_slowAlloc();
      v356 = swift_slowAlloc();
      v363[0] = v356;
      *v50 = 67109635;
      *(v50 + 4) = (v7 & 1) == 0;
      *(v50 + 8) = 2160;
      *(v50 + 10) = 1752392040;
      *(v50 + 18) = 2081;
      sub_100530ED4(&qword_100982530, &type metadata accessor for SFAirDrop.ContactInfo);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      v54 = *(v48 + 8);
      v54(v47, v49);
      v55 = sub_10000C4E4(v51, v53, v363);

      *(v50 + 20) = v55;
      _os_log_impl(&_mh_execute_header, v44, v45, "Exchange Contact CONTINUE. Importing contact {shouldAcceptSenderContact: %{BOOL}d, senderContact: %{private,mask.hash}s}", v50, 0x1Cu);
      sub_10000C60C(v356);
    }

    else
    {

      v54 = *(v48 + 8);
      v54(v47, v49);
    }

    *(v0 + 2864) = v54;
    v69 = *(v0 + 2808);
    v347 = *(v0 + 2632);
    v357 = *(v0 + 2640);
    v70 = *(v0 + 2624);
    v71 = *(v0 + 2616);
    v72 = *(v0 + 2608);
    v73 = *(v0 + 2600);
    v74 = *(v0 + 2528);
    v75 = *(v0 + 2488);
    v76 = *(v0 + 2480);
    v77 = *(v0 + 2464);
    v78 = *(v0 + 1824);
    (*(v0 + 2800))(v76, *(v0 + 2192), *(v0 + 2136));
    v73(v76, enum case for SFAirDropReceive.Transfer.State.importingReceivedContact(_:), v77);
    sub_100687AF8(v76, v74);
    v71(v76, v77);
    v347(v74, v75);
    v79 = swift_task_alloc();
    *(v0 + 2872) = v79;
    *v79 = v0;
    v79[1] = sub_100522EF8;
    v80 = *(v0 + 3008);
    v81 = *(v0 + 2192);

    return sub_10034B410(v81, v80);
  }
}

uint64_t sub_100522990()
{
  v1 = v0[353];
  v2 = v0[352];
  v3 = v0[322];

  return _swift_task_switch(sub_100522A08, v3, 0);
}

uint64_t sub_100522A08()
{
  v1 = v0[344];
  v2 = v0[321];
  v3 = v0[319];
  v4 = v0[318];
  v5 = v0[307];
  v6 = v0[303];
  v7 = v0[284];
  v8 = v0[283];
  v9 = v0[239];
  (*(v0[268] + 8))(v0[276], v0[267]);
  v1(v6, v8);
  (*(v3 + 8))(v2, v4);
  sub_100005508(v9, &qword_100976908, &unk_100801D60);
  sub_100530400(v5, _s15ExchangeRequestVMa);
  v82 = v0[355];
  v10 = v0[321];
  v11 = v0[320];
  v12 = v0[317];
  v13 = v0[316];
  v14 = v0[315];
  v15 = v0[314];
  v16 = v0[313];
  v17 = v0[310];
  v18 = v0[307];
  v19 = v0[304];
  v22 = v0[303];
  v23 = v0[302];
  v24 = v0[301];
  v25 = v0[300];
  v26 = v0[299];
  v27 = v0[298];
  v28 = v0[297];
  v29 = v0[296];
  v30 = v0[295];
  v31 = v0[294];
  v32 = v0[293];
  v33 = v0[292];
  v34 = v0[291];
  v35 = v0[290];
  v36 = v0[289];
  v37 = v0[288];
  v38 = v0[287];
  v39 = v0[286];
  v40 = v0[285];
  v41 = v0[282];
  v42 = v0[279];
  v43 = v0[276];
  v44 = v0[275];
  v45 = v0[274];
  v46 = v0[273];
  v47 = v0[272];
  v48 = v0[271];
  v49 = v0[270];
  v50 = v0[269];
  v51 = v0[266];
  v52 = v0[265];
  v53 = v0[264];
  v54 = v0[263];
  v55 = v0[262];
  v56 = v0[261];
  v57 = v0[260];
  v58 = v0[259];
  v59 = v0[258];
  v60 = v0[257];
  v61 = v0[256];
  v62 = v0[255];
  v63 = v0[254];
  v64 = v0[253];
  v65 = v0[252];
  v66 = v0[251];
  v67 = v0[250];
  v68 = v0[249];
  v69 = v0[248];
  v70 = v0[247];
  v71 = v0[246];
  v72 = v0[244];
  v73 = v0[243];
  v74 = v0[242];
  v75 = v0[239];
  v76 = v0[238];
  v77 = v0[237];
  v78 = v0[234];
  v79 = v0[231];
  v80 = v0[230];
  v81 = v0[229];

  v20 = v0[1];

  return v20();
}

uint64_t sub_100522EF8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 2872);
  v7 = *v3;
  v5[360] = a1;
  v5[361] = a2;
  v5[362] = v2;

  v8 = v4[322];
  if (v2)
  {
    v9 = sub_100524948;
  }

  else
  {
    v9 = sub_100523034;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100523034()
{
  v371 = v0;
  v1 = *(v0 + 2584);
  v2 = *(v0 + 1864);
  v3 = *(v0 + 1856);
  v4 = *(v0 + 1848);
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeConnection;
  swift_beginAccess();
  sub_10000FF90(v1 + v5, v4, &qword_100982518, &unk_100808DA0);
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    sub_100005508(*(v0 + 1848), &qword_100982518, &unk_100808DA0);
LABEL_7:
    v25 = *(v0 + 1824) + *(v0 + 2592);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Exchange Contact IDENTITY IMPORT SKIP. Not provided", v28, 2u);
    }

    goto LABEL_10;
  }

  v6 = (v0 + 632);
  v7 = *(v0 + 2456);
  v8 = *(v0 + 2440);
  sub_1005304C4(*(v0 + 1848), *(v0 + 1872), type metadata accessor for SDAirDropServerConnection);
  v9 = v7 + *(v8 + 36);
  v10 = *(v9 + 32);
  v11 = *(v9 + 48);
  v12 = *(v9 + 64);
  *(v0 + 712) = *(v9 + 80);
  *(v0 + 680) = v11;
  *(v0 + 696) = v12;
  *(v0 + 664) = v10;
  v13 = *(v9 + 16);
  *(v0 + 632) = *v9;
  *(v0 + 648) = v13;
  v15 = *(v9 + 32);
  v14 = *(v9 + 48);
  v16 = *(v9 + 16);
  *(v0 + 1752) = *(v9 + 64);
  *(v0 + 1720) = v15;
  *(v0 + 1736) = v14;
  *(v0 + 1704) = v16;
  *(v0 + 1688) = *v9;
  v17 = *(v0 + 704);
  if (!*(v0 + 704))
  {
    sub_100530400(*(v0 + 1872), type metadata accessor for SDAirDropServerConnection);
    goto LABEL_7;
  }

  v364 = *(v0 + 704);
  v18 = *(v0 + 2768);
  v19 = *(v0 + 2760);
  v20 = *(v0 + 2264);
  v21 = *(v0 + 2032);
  sub_10000FF90(*(v0 + 1816), v21, &qword_10097B1C0, &qword_1007FE4C8);
  if (v19(v21, 1, v20) == 1)
  {
    v22 = *(v0 + 2032);
    v23 = *(v0 + 680);
    *(v0 + 752) = *(v0 + 664);
    *(v0 + 768) = v23;
    *(v0 + 784) = *(v0 + 696);
    *(v0 + 800) = *(v0 + 712);
    v24 = *(v0 + 648);
    *(v0 + 720) = *v6;
    *(v0 + 736) = v24;
    sub_1003398A0(v0 + 720, v0 + 808);
    sub_100005508(v22, &qword_10097B1C0, &qword_1007FE4C8);
LABEL_36:
    v157 = *(v0 + 1824) + *(v0 + 2592);
    v158 = Logger.logObject.getter();
    v159 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v158, v159))
    {
      v160 = swift_slowAlloc();
      *v160 = 0;
      _os_log_impl(&_mh_execute_header, v158, v159, "Exchange Contact CONTINUE. Attempting identity import", v160, 2u);
    }

    v161 = *(v0 + 2456);
    v162 = *(v0 + 2440);
    v163 = *(v0 + 1872);
    v164 = *(v0 + 1864);
    v165 = *(v0 + 1856);
    v166 = *(v0 + 1840);

    v167 = *(v0 + 1736);
    *(v0 + 48) = *(v0 + 1720);
    *(v0 + 64) = v167;
    *(v0 + 80) = *(v0 + 1752);
    v168 = *(v0 + 1704);
    *(v0 + 16) = *(v0 + 1688);
    *(v0 + 32) = v168;
    *(v0 + 88) = v364;
    v169 = (v161 + *(v162 + 32));
    v171 = *v169;
    v170 = v169[1];
    sub_100530460(v163, v166);
    (*(v164 + 56))(v166, 0, 1, v165);
    sub_10000FF90(v0 + 632, v0 + 896, &qword_10097B208, &qword_1007FE5A8);
    v172 = swift_task_alloc();
    *(v0 + 2904) = v172;
    *v172 = v0;
    v172[1] = sub_100524E84;
    v173 = *(v0 + 2888);
    v174 = *(v0 + 2880);
    v175 = *(v0 + 2584);
    v176 = *(v0 + 1840);

    return sub_100642E64(v0 + 16, v171, v170, v174, v173, v176);
  }

  v116 = *(v0 + 2744);
  v117 = *(v0 + 2736);
  v118 = *(v0 + 2376);
  v119 = *(v0 + 2368);
  v120 = *(v0 + 2272);
  v121 = *(v0 + 2264);
  (*(v120 + 32))(v118, *(v0 + 2032), v121);
  v117(v119, v118, v121);
  v122 = (*(v120 + 88))(v119, v121);
  v123 = *(v0 + 2752);
  if (v122 != enum case for SFAirDrop.ContactRequest.notNeeded(_:))
  {
    v152 = *(v0 + 2376);
    v153 = *(v0 + 2368);
    v154 = *(v0 + 2264);
    v155 = *(v0 + 680);
    *(v0 + 1016) = *(v0 + 664);
    *(v0 + 1032) = v155;
    *(v0 + 1048) = *(v0 + 696);
    *(v0 + 1064) = *(v0 + 712);
    v156 = *(v0 + 648);
    *(v0 + 984) = *v6;
    *(v0 + 1000) = v156;
    sub_1003398A0(v0 + 984, v0 + 1072);
    v123(v152, v154);
    v123(v153, v154);
    goto LABEL_36;
  }

  v124 = *(v0 + 2592);
  v125 = *(v0 + 2368);
  v126 = *(v0 + 2264);
  v127 = *(v0 + 1824);
  v128 = *(v0 + 680);
  *(v0 + 1192) = *(v0 + 664);
  *(v0 + 1208) = v128;
  *(v0 + 1224) = *(v0 + 696);
  *(v0 + 1240) = *(v0 + 712);
  v129 = *(v0 + 648);
  *(v0 + 1160) = *v6;
  *(v0 + 1176) = v129;
  sub_1003398A0(v0 + 1160, v0 + 1248);
  v123(v125, v126);
  v130 = Logger.logObject.getter();
  v131 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v130, v131))
  {
    v132 = swift_slowAlloc();
    *v132 = 0;
    _os_log_impl(&_mh_execute_header, v130, v131, "Exchange Contact IDENTITY IMPORT SKIP. User chose to only receive", v132, 2u);
  }

  v133 = *(v0 + 2752);
  v134 = *(v0 + 2376);
  v135 = *(v0 + 2264);
  v136 = *(v0 + 1872);

  sub_100005508(v0 + 632, &qword_10097B208, &qword_1007FE5A8);
  v133(v134, v135);
  sub_100530400(v136, type metadata accessor for SDAirDropServerConnection);
LABEL_10:
  v29 = *(v0 + 1824) + *(v0 + 2592);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v0 + 2864);
  v34 = *(v0 + 2192);
  v35 = *(v0 + 2144);
  v36 = *(v0 + 2136);
  if (v32)
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Exchange Contact CONTINUE. Imported contact", v37, 2u);
  }

  v33(v34, v36);
  *(v0 + 2920) = *(v0 + 2880);
  v38 = *(v0 + 2768);
  v39 = *(v0 + 2760);
  v40 = *(v0 + 2264);
  v41 = *(v0 + 2024);
  sub_10000FF90(*(v0 + 1816), v41, &qword_10097B1C0, &qword_1007FE4C8);
  LODWORD(v40) = v39(v41, 1, v40);
  sub_100005508(v41, &qword_10097B1C0, &qword_1007FE4C8);
  if (v40 == 1)
  {
    v42 = *(v0 + 2712);
    v43 = *(v0 + 2704);
    v44 = *(v0 + 2424);
    v45 = *(v0 + 2136);
    v46 = *(v0 + 2088);
    SFAirDrop.ContactRequest.contact.getter();
    if (v43(v46, 1, v45) == 1)
    {
      v47 = (v0 + 2088);
LABEL_24:
      v96 = *v47;
      v97 = *(v0 + 2744);
      v98 = *(v0 + 2736);
      v99 = *(v0 + 2592);
      v100 = *(v0 + 2424);
      v101 = *(v0 + 2328);
      v102 = *(v0 + 2264);
      v103 = *(v0 + 1824);
      sub_100005508(v96, &qword_10097B198, &qword_1007FE450);
      v98(v101, v100, v102);
      v104 = Logger.logObject.getter();
      v105 = static os_log_type_t.default.getter();
      v106 = os_log_type_enabled(v104, v105);
      v107 = *(v0 + 2328);
      if (v106)
      {
        v108 = *(v0 + 2712);
        v109 = *(v0 + 2704);
        v110 = *(v0 + 2136);
        v111 = *(v0 + 2072);
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v370[0] = v113;
        *v112 = 141558275;
        *(v112 + 4) = 1752392040;
        *(v112 + 12) = 2081;
        SFAirDrop.ContactRequest.contact.getter();
        if (v109(v111, 1, v110) == 1)
        {
          sub_100005508(*(v0 + 2072), &qword_10097B198, &qword_1007FE450);
          v114 = 0x8000000100794A70;
          v115 = 0xD000000000000020;
        }

        else
        {
          v177 = *(v0 + 2144);
          v178 = *(v0 + 2136);
          v179 = *(v0 + 2072);
          v115 = SFAirDrop.ContactInfo.description.getter();
          v114 = v180;
          (*(v177 + 8))(v179, v178);
        }

        v181 = *(v0 + 2272) + 8;
        (*(v0 + 2752))(*(v0 + 2328), *(v0 + 2264));
        v182 = sub_10000C4E4(v115, v114, v370);

        *(v112 + 14) = v182;
        _os_log_impl(&_mh_execute_header, v104, v105, "Exchange Contact SHARE BACK PERMISSION SKIP. No senderContact or no receiverContact {senderContact: %{private,mask.hash}s}", v112, 0x16u);
        sub_10000C60C(v113);
      }

      else
      {
        v137 = *(v0 + 2752);
        v138 = *(v0 + 2272);
        v139 = *(v0 + 2264);

        v137(v107, v139);
      }

      v183 = (v0 + 280);
      v184 = *(v0 + 2264);
      v369 = enum case for SFAirDrop.ContactRequest.notNeeded(_:);
      (*(*(v0 + 2272) + 104))(*(v0 + 2352));
      v185 = *(v0 + 2744);
      v186 = *(v0 + 2736);
      v354 = *(v0 + 2704);
      v361 = *(v0 + 2712);
      v336 = *(v0 + 2632);
      v342 = *(v0 + 2640);
      v311 = *(v0 + 2600);
      v313 = *(v0 + 2608);
      v315 = *(v0 + 2528);
      v317 = *(v0 + 2488);
      v319 = *(v0 + 2616);
      v187 = *(v0 + 2480);
      v188 = *(v0 + 2464);
      v189 = *(v0 + 2424);
      v190 = *(v0 + 2352);
      v191 = *(v0 + 2264);
      v348 = *(v0 + 2136);
      v324 = *(v0 + 2064);
      v330 = *(v0 + 2624);
      v309 = *(v0 + 1824);
      v192 = *(sub_10028088C(&qword_10097C650, &unk_100808DE0) + 48);
      v186(v187, v189, v191);
      v186(v187 + v192, v190, v191);
      v311(v187, enum case for SFAirDropReceive.Transfer.State.sharingContactBack(_:), v188);
      sub_100687AF8(v187, v315);
      v319(v187, v188);
      v336(v315, v317);
      v193 = *(v309 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_nearbyAgent);
      SFAirDrop.ContactRequest.contact.getter();
      if (v354(v324, 1, v348) == 1)
      {
        sub_100005508(*(v0 + 2064), &qword_10097B198, &qword_1007FE450);
        v194 = 0;
        v195 = 0;
      }

      else
      {
        v196 = *(v0 + 2144);
        v197 = *(v0 + 2136);
        v198 = *(v0 + 2064);
        v199 = SFAirDrop.ContactInfo.accountHandle.getter();
        v195 = v200;
        (*(v196 + 8))(v198, v197);
        v194 = v199;
      }

      v201 = *(v0 + 2752);
      v202 = *(v0 + 2392);
      v203 = *(v0 + 2352);
      v204 = *(v0 + 2272);
      v205 = *(v0 + 2264);
      sub_10046A56C(v194, v195, (v0 + 104));
      v206 = *(v0 + 152);
      *(v0 + 312) = *(v0 + 136);
      *(v0 + 328) = v206;
      *(v0 + 344) = *(v0 + 168);
      *(v0 + 360) = *(v0 + 184);
      v207 = *(v0 + 120);
      *v183 = *(v0 + 104);
      *(v0 + 296) = v207;

      (*(v204 + 104))(v202, v369, v205);
      v208 = static SFAirDrop.ContactRequest.== infix(_:_:)();
      *(v0 + 2968) = (v204 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v201(v202, v205);
      if (v208)
      {
        *(v0 + 448) = 0;
        *(v0 + 416) = 0u;
        *(v0 + 432) = 0u;
        *(v0 + 384) = 0u;
        *(v0 + 400) = 0u;
        *(v0 + 368) = 0u;
      }

      else
      {
        sub_10000FF90(v0 + 104, v0 + 456, &qword_10097B208, &qword_1007FE5A8);
        v209 = *(v0 + 328);
        *(v0 + 400) = *(v0 + 312);
        *(v0 + 416) = v209;
        *(v0 + 432) = *(v0 + 344);
        *(v0 + 448) = *(v0 + 360);
        v210 = *(v0 + 296);
        *(v0 + 368) = *v183;
        *(v0 + 384) = v210;
      }

      v211 = *(v0 + 2744);
      v355 = *(v0 + 2704);
      v362 = *(v0 + 2712);
      v212 = *(v0 + 2664);
      v213 = *(v0 + 2640);
      v214 = *(v0 + 2632);
      v215 = *(v0 + 2512);
      v216 = *(v0 + 2488);
      v217 = *(v0 + 2136);
      v218 = *(v0 + 2056);
      v219 = *(v0 + 1944);
      (*(v0 + 2736))(*(v0 + 2320), *(v0 + 2352), *(v0 + 2264));
      CurrentValueSubject.value.getter();
      SFAirDropReceive.Transfer.id.getter();
      v214(v215, v216);
      sub_10000FF90(v0 + 368, v0 + 544, &qword_10097B208, &qword_1007FE5A8);
      SFAirDrop.ContactRequest.contact.getter();
      if (v355(v218, 1, v217) == 1)
      {
        v220 = *(v0 + 2056);
        v221 = *(v0 + 1984);
        v222 = *(v0 + 1960);
        v223 = *(v0 + 1944);
        v224 = *(v0 + 1928);
        v225 = *(v0 + 1920);
        (*(v0 + 2752))(*(v0 + 2320), *(v0 + 2264));
        sub_100005508(v0 + 368, &qword_10097B208, &qword_1007FE5A8);
        sub_100005508(v220, &qword_10097B198, &qword_1007FE450);
        v226 = v222[7];
        v227 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
        (*(*(v227 - 8) + 56))(v221 + v226, 1, 1, v227);
        (*(v224 + 32))(v221, v223, v225);
        v228 = (v221 + v222[5]);
        *v228 = 0;
        v228[1] = 0;
        v229 = (v221 + v222[6]);
        *v229 = 0;
        v229[1] = 0;
        *(v221 + v222[8]) = xmmword_1007F8A80;
        v230 = v221 + v222[9];
        *(v230 + 80) = 0;
        *(v230 + 48) = 0u;
        *(v230 + 64) = 0u;
        *(v230 + 16) = 0u;
        *(v230 + 32) = 0u;
        *v230 = 0u;
      }

      else
      {
        v231 = *(v0 + 2728);
        v363 = *(v0 + 2752);
        v349 = *(v0 + 2264);
        v356 = *(v0 + 2320);
        v232 = *(v0 + 2160);
        v233 = *(v0 + 2144);
        v234 = *(v0 + 2136);
        v235 = *(v0 + 1984);
        v236 = *(v0 + 1960);
        v237 = *(v0 + 1944);
        v320 = v237;
        v238 = *(v0 + 1928);
        v239 = *(v0 + 1920);
        (*(v0 + 2720))(v232, *(v0 + 2056), v234);
        (*(v238 + 16))(v235, v237, v239);
        v240 = SFAirDrop.ContactInfo.givenName.getter();
        v337 = v241;
        v343 = v240;
        v242 = SFAirDrop.ContactInfo.fullName.getter();
        v325 = v243;
        v331 = v242;
        v244 = v236[7];
        SFAirDrop.ContactInfo.handle.getter();
        v245 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
        (*(*(v245 - 8) + 56))(v235 + v244, 0, 1, v245);
        v246 = SFAirDrop.ContactInfo.vcard.getter();
        v248 = v247;
        (*(v233 + 8))(v232, v234);
        (*(v238 + 8))(v320, v239);
        v363(v356, v349);
        v249 = (v235 + v236[5]);
        *v249 = v343;
        v249[1] = v337;
        v250 = (v235 + v236[6]);
        *v250 = v331;
        v250[1] = v325;
        v251 = (v235 + v236[8]);
        *v251 = v246;
        v251[1] = v248;
        v252 = v235 + v236[9];
        v253 = *(v0 + 384);
        *v252 = *(v0 + 368);
        *(v252 + 16) = v253;
        v254 = *(v0 + 400);
        v255 = *(v0 + 416);
        v256 = *(v0 + 432);
        *(v252 + 80) = *(v0 + 448);
        *(v252 + 48) = v255;
        *(v252 + 64) = v256;
        *(v252 + 32) = v254;
      }

      sub_1005304C4(*(v0 + 1984), *(v0 + 1992), _s16ExchangeResponseVMa);
      v257 = swift_task_alloc();
      *(v0 + 2976) = v257;
      *v257 = v0;
      v257[1] = sub_1005274CC;
      v258 = *(v0 + 2584);
      v259 = *(v0 + 1992);

      return sub_1006424A0(v259);
    }

    v89 = *(v0 + 2728);
    v90 = *(v0 + 2712);
    v91 = *(v0 + 2704);
    v92 = *(v0 + 2136);
    v93 = *(v0 + 2080);
    v94 = *(v0 + 1824);
    (*(v0 + 2720))(*(v0 + 2176), *(v0 + 2088), v92);
    v95 = *(v94 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_deviceStatus);
    sub_1004E5AD8(v93);
    if (v91(v93, 1, v92) == 1)
    {
      v47 = (v0 + 2080);
      (*(*(v0 + 2144) + 8))(*(v0 + 2176), *(v0 + 2136));
      goto LABEL_24;
    }

    v140 = *(v0 + 2800);
    v141 = *(v0 + 2728);
    v368 = *(v0 + 2640);
    v360 = *(v0 + 2632);
    v353 = *(v0 + 2624);
    v347 = *(v0 + 2616);
    v335 = *(v0 + 2608);
    v323 = *(v0 + 2808);
    v329 = *(v0 + 2600);
    v142 = *(v0 + 2528);
    v341 = *(v0 + 2488);
    v143 = *(v0 + 2480);
    v144 = *(v0 + 2464);
    v145 = *(v0 + 2176);
    v146 = *(v0 + 2168);
    v147 = *(v0 + 2136);
    v148 = *(v0 + 1832);
    v149 = *(v0 + 1824);
    (*(v0 + 2720))(v146, *(v0 + 2080), v147);
    sub_10052BDD8(v145, v146, v148);
    v150 = *(sub_10028088C(&qword_10097C658, &unk_1008042B0) + 48);
    v140(v143, v146, v147);
    v151 = sub_10028088C(&unk_10097C660, &unk_10080D3E0);
    (*(*(v151 - 8) + 16))(v143 + v150, v148, v151);
    v329(v143, enum case for SFAirDropReceive.Transfer.State.waitingForContactShareBackResponse(_:), v144);
    sub_100687AF8(v143, v142);
    v347(v143, v144);
    v360(v142, v341);

    return _swift_task_switch(sub_100526380, 0, 0);
  }

  else
  {
    v48 = *(v0 + 2592);
    v49 = *(v0 + 1824);

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v357 = *(v0 + 2688);
      v365 = *(v0 + 2696);
      v338 = *(v0 + 2672);
      v344 = *(v0 + 2680);
      v52 = *(v0 + 2664);
      v321 = *(v0 + 2632);
      v326 = *(v0 + 2640);
      v53 = *(v0 + 2528);
      v54 = *(v0 + 2488);
      v55 = *(v0 + 2256);
      v332 = *(v0 + 2240);
      v56 = *(v0 + 2232);
      v350 = *(v0 + 2216);
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v370[0] = v58;
      *v57 = 136315138;
      CurrentValueSubject.value.getter();
      SFAirDropReceive.Transfer.askRequest.getter();
      v321(v53, v54);
      SFAirDropReceive.AskRequest.type.getter();
      v338(v55, v332);
      sub_100530ED4(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType);
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      v357(v56, v350);
      v62 = sub_10000C4E4(v59, v61, v370);

      *(v57 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v50, v51, "Exchange Contact SHARE BACK SKIP. Already responded with contact {type: %s}", v57, 0xCu);
      sub_10000C60C(v58);
    }

    v63 = *(v0 + 1824) + *(v0 + 2592);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "Exchange Contact END", v66, 2u);
    }

    v67 = *(v0 + 2856);
    v68 = *(v0 + 2848);
    v69 = *(v0 + 2552);
    v351 = *(v0 + 2544);
    v358 = *(v0 + 2568);
    v366 = *(v0 + 2456);
    v333 = *(v0 + 2424);
    v339 = *(v0 + 2752);
    v70 = *(v0 + 2272);
    v327 = *(v0 + 2264);
    v71 = *(v0 + 2208);
    v72 = v64;
    v73 = *(v0 + 2144);
    v74 = *(v0 + 2136);
    v345 = *(v0 + 1912);
    v75 = *(v0 + 1904);
    v76 = *(v0 + 1880);

    v68(v75, v76);
    (*(v73 + 8))(v71, v74);
    v339(v333, v327);
    (*(v69 + 8))(v358, v351);
    sub_100005508(v345, &qword_100976908, &unk_100801D60);
    sub_100530400(v366, _s15ExchangeRequestVMa);
    v359 = *(v0 + 2920);
    v367 = *(v0 + 2928);
    v77 = *(v0 + 2568);
    v78 = *(v0 + 2560);
    v79 = *(v0 + 2536);
    v80 = *(v0 + 2528);
    v81 = *(v0 + 2520);
    v82 = *(v0 + 2512);
    v83 = *(v0 + 2504);
    v84 = *(v0 + 2480);
    v85 = *(v0 + 2456);
    v86 = *(v0 + 2432);
    v260 = *(v0 + 2424);
    v261 = *(v0 + 2416);
    v262 = *(v0 + 2408);
    v263 = *(v0 + 2400);
    v264 = *(v0 + 2392);
    v265 = *(v0 + 2384);
    v266 = *(v0 + 2376);
    v267 = *(v0 + 2368);
    v268 = *(v0 + 2360);
    v269 = *(v0 + 2352);
    v270 = *(v0 + 2344);
    v271 = *(v0 + 2336);
    v272 = *(v0 + 2328);
    v273 = *(v0 + 2320);
    v274 = *(v0 + 2312);
    v275 = *(v0 + 2304);
    v276 = *(v0 + 2296);
    v277 = *(v0 + 2288);
    v278 = *(v0 + 2280);
    v279 = *(v0 + 2256);
    v280 = *(v0 + 2232);
    v281 = *(v0 + 2208);
    v282 = *(v0 + 2200);
    v283 = *(v0 + 2192);
    v284 = *(v0 + 2184);
    v285 = *(v0 + 2176);
    v286 = *(v0 + 2168);
    v287 = *(v0 + 2160);
    v288 = *(v0 + 2152);
    v289 = *(v0 + 2128);
    v290 = *(v0 + 2120);
    v291 = *(v0 + 2112);
    v292 = *(v0 + 2104);
    v293 = *(v0 + 2096);
    v294 = *(v0 + 2088);
    v295 = *(v0 + 2080);
    v296 = *(v0 + 2072);
    v297 = *(v0 + 2064);
    v298 = *(v0 + 2056);
    v299 = *(v0 + 2048);
    v300 = *(v0 + 2040);
    v301 = *(v0 + 2032);
    v302 = *(v0 + 2024);
    v303 = *(v0 + 2016);
    v304 = *(v0 + 2008);
    v305 = *(v0 + 2000);
    v306 = *(v0 + 1992);
    v307 = *(v0 + 1984);
    v308 = *(v0 + 1976);
    v310 = *(v0 + 1968);
    v312 = *(v0 + 1952);
    v314 = *(v0 + 1944);
    v316 = *(v0 + 1936);
    v318 = *(v0 + 1912);
    v322 = *(v0 + 1904);
    v328 = *(v0 + 1896);
    v334 = *(v0 + 1872);
    v340 = *(v0 + 1848);
    v346 = *(v0 + 1840);
    v352 = *(v0 + 1832);

    v87 = *(v0 + 8);

    return v87(v359, v367);
  }
}

uint64_t sub_100524948()
{
  v1 = v0[358];
  v2 = v0[356];
  v3 = v0[319];
  v83 = v0[344];
  v85 = v0[318];
  v87 = v0[321];
  v89 = v0[307];
  v4 = v0[284];
  v75 = v0[357];
  v77 = v0[283];
  v5 = v0[276];
  v6 = v0[267];
  v79 = v0[303];
  v81 = v0[239];
  v7 = v0[238];
  v8 = v0[268] + 8;
  v9 = v0[235];
  v1(v0[274], v6);
  v2(v7, v9);
  v1(v5, v6);
  v83(v79, v77);
  (*(v3 + 8))(v87, v85);
  sub_100005508(v81, &qword_100976908, &unk_100801D60);
  sub_100530400(v89, _s15ExchangeRequestVMa);
  v90 = v0[362];
  v10 = v0[321];
  v11 = v0[320];
  v12 = v0[317];
  v13 = v0[316];
  v14 = v0[315];
  v15 = v0[314];
  v16 = v0[313];
  v17 = v0[310];
  v18 = v0[307];
  v19 = v0[304];
  v22 = v0[303];
  v23 = v0[302];
  v24 = v0[301];
  v25 = v0[300];
  v26 = v0[299];
  v27 = v0[298];
  v28 = v0[297];
  v29 = v0[296];
  v30 = v0[295];
  v31 = v0[294];
  v32 = v0[293];
  v33 = v0[292];
  v34 = v0[291];
  v35 = v0[290];
  v36 = v0[289];
  v37 = v0[288];
  v38 = v0[287];
  v39 = v0[286];
  v40 = v0[285];
  v41 = v0[282];
  v42 = v0[279];
  v43 = v0[276];
  v44 = v0[275];
  v45 = v0[274];
  v46 = v0[273];
  v47 = v0[272];
  v48 = v0[271];
  v49 = v0[270];
  v50 = v0[269];
  v51 = v0[266];
  v52 = v0[265];
  v53 = v0[264];
  v54 = v0[263];
  v55 = v0[262];
  v56 = v0[261];
  v57 = v0[260];
  v58 = v0[259];
  v59 = v0[258];
  v60 = v0[257];
  v61 = v0[256];
  v62 = v0[255];
  v63 = v0[254];
  v64 = v0[253];
  v65 = v0[252];
  v66 = v0[251];
  v67 = v0[250];
  v68 = v0[249];
  v69 = v0[248];
  v70 = v0[247];
  v71 = v0[246];
  v72 = v0[244];
  v73 = v0[243];
  v74 = v0[242];
  v76 = v0[239];
  v78 = v0[238];
  v80 = v0[237];
  v82 = v0[234];
  v84 = v0[231];
  v86 = v0[230];
  v88 = v0[229];

  v20 = v0[1];

  return v20();
}

uint64_t sub_100524E84()
{
  v2 = *v1;
  v3 = *(*v1 + 2904);
  v4 = *(*v1 + 1840);
  v5 = *v1;
  v2[364] = v0;

  sub_100005508(v4, &qword_100982518, &unk_100808DA0);
  sub_100005508((v2 + 79), &qword_10097B208, &qword_1007FE5A8);
  if (v0)
  {
    v6 = v2[361];
    v7 = v2[322];

    v8 = sub_100529270;
    v9 = v7;
  }

  else
  {
    v9 = v2[322];
    v8 = sub_100525000;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_100525000()
{
  v297 = v0;
  v1 = *(v0 + 1872);
  sub_100005508(v0 + 632, &qword_10097B208, &qword_1007FE5A8);
  sub_100530400(v1, type metadata accessor for SDAirDropServerConnection);
  v2 = *(v0 + 1824) + *(v0 + 2592);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 2864);
  v7 = *(v0 + 2192);
  v8 = *(v0 + 2144);
  v9 = *(v0 + 2136);
  if (v5)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Exchange Contact CONTINUE. Imported contact", v10, 2u);
  }

  v6(v7, v9);
  *(v0 + 2920) = *(v0 + 2880);
  v11 = *(v0 + 2768);
  v12 = *(v0 + 2760);
  v13 = *(v0 + 2264);
  v14 = *(v0 + 2024);
  sub_10000FF90(*(v0 + 1816), v14, &qword_10097B1C0, &qword_1007FE4C8);
  LODWORD(v13) = v12(v14, 1, v13);
  sub_100005508(v14, &qword_10097B1C0, &qword_1007FE4C8);
  if (v13 == 1)
  {
    v15 = *(v0 + 2712);
    v16 = *(v0 + 2704);
    v17 = *(v0 + 2424);
    v18 = *(v0 + 2136);
    v19 = *(v0 + 2088);
    SFAirDrop.ContactRequest.contact.getter();
    if (v16(v19, 1, v18) == 1)
    {
      v20 = (v0 + 2088);
LABEL_15:
      v69 = *v20;
      v70 = *(v0 + 2744);
      v71 = *(v0 + 2736);
      v72 = *(v0 + 2592);
      v73 = *(v0 + 2424);
      v74 = *(v0 + 2328);
      v75 = *(v0 + 2264);
      v76 = *(v0 + 1824);
      sub_100005508(v69, &qword_10097B198, &qword_1007FE450);
      v71(v74, v73, v75);
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.default.getter();
      v79 = os_log_type_enabled(v77, v78);
      v80 = *(v0 + 2328);
      if (v79)
      {
        v81 = *(v0 + 2712);
        v82 = *(v0 + 2704);
        v83 = *(v0 + 2136);
        v84 = *(v0 + 2072);
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v296[0] = v86;
        *v85 = 141558275;
        *(v85 + 4) = 1752392040;
        *(v85 + 12) = 2081;
        SFAirDrop.ContactRequest.contact.getter();
        if (v82(v84, 1, v83) == 1)
        {
          sub_100005508(*(v0 + 2072), &qword_10097B198, &qword_1007FE450);
          v87 = 0x8000000100794A70;
          v88 = 0xD000000000000020;
        }

        else
        {
          v104 = *(v0 + 2144);
          v105 = *(v0 + 2136);
          v106 = *(v0 + 2072);
          v88 = SFAirDrop.ContactInfo.description.getter();
          v87 = v107;
          (*(v104 + 8))(v106, v105);
        }

        v108 = *(v0 + 2272) + 8;
        (*(v0 + 2752))(*(v0 + 2328), *(v0 + 2264));
        v109 = sub_10000C4E4(v88, v87, v296);

        *(v85 + 14) = v109;
        _os_log_impl(&_mh_execute_header, v77, v78, "Exchange Contact SHARE BACK PERMISSION SKIP. No senderContact or no receiverContact {senderContact: %{private,mask.hash}s}", v85, 0x16u);
        sub_10000C60C(v86);
      }

      else
      {
        v89 = *(v0 + 2752);
        v90 = *(v0 + 2272);
        v91 = *(v0 + 2264);

        v89(v80, v91);
      }

      v110 = (v0 + 280);
      v111 = *(v0 + 2264);
      v295 = enum case for SFAirDrop.ContactRequest.notNeeded(_:);
      (*(*(v0 + 2272) + 104))(*(v0 + 2352));
      v112 = *(v0 + 2744);
      v113 = *(v0 + 2736);
      v281 = *(v0 + 2704);
      v288 = *(v0 + 2712);
      v263 = *(v0 + 2632);
      v269 = *(v0 + 2640);
      v238 = *(v0 + 2600);
      v240 = *(v0 + 2608);
      v242 = *(v0 + 2528);
      v244 = *(v0 + 2488);
      v246 = *(v0 + 2616);
      v114 = *(v0 + 2480);
      v115 = *(v0 + 2464);
      v116 = *(v0 + 2424);
      v117 = *(v0 + 2352);
      v118 = *(v0 + 2264);
      v275 = *(v0 + 2136);
      v251 = *(v0 + 2064);
      v257 = *(v0 + 2624);
      v236 = *(v0 + 1824);
      v119 = *(sub_10028088C(&qword_10097C650, &unk_100808DE0) + 48);
      v113(v114, v116, v118);
      v113(v114 + v119, v117, v118);
      v238(v114, enum case for SFAirDropReceive.Transfer.State.sharingContactBack(_:), v115);
      sub_100687AF8(v114, v242);
      v246(v114, v115);
      v263(v242, v244);
      v120 = *(v236 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_nearbyAgent);
      SFAirDrop.ContactRequest.contact.getter();
      if (v281(v251, 1, v275) == 1)
      {
        sub_100005508(*(v0 + 2064), &qword_10097B198, &qword_1007FE450);
        v121 = 0;
        v122 = 0;
      }

      else
      {
        v123 = *(v0 + 2144);
        v124 = *(v0 + 2136);
        v125 = *(v0 + 2064);
        v126 = SFAirDrop.ContactInfo.accountHandle.getter();
        v122 = v127;
        (*(v123 + 8))(v125, v124);
        v121 = v126;
      }

      v128 = *(v0 + 2752);
      v129 = *(v0 + 2392);
      v130 = *(v0 + 2352);
      v131 = *(v0 + 2272);
      v132 = *(v0 + 2264);
      sub_10046A56C(v121, v122, (v0 + 104));
      v133 = *(v0 + 152);
      *(v0 + 312) = *(v0 + 136);
      *(v0 + 328) = v133;
      *(v0 + 344) = *(v0 + 168);
      *(v0 + 360) = *(v0 + 184);
      v134 = *(v0 + 120);
      *v110 = *(v0 + 104);
      *(v0 + 296) = v134;

      (*(v131 + 104))(v129, v295, v132);
      v135 = static SFAirDrop.ContactRequest.== infix(_:_:)();
      *(v0 + 2968) = (v131 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v128(v129, v132);
      if (v135)
      {
        *(v0 + 448) = 0;
        *(v0 + 416) = 0u;
        *(v0 + 432) = 0u;
        *(v0 + 384) = 0u;
        *(v0 + 400) = 0u;
        *(v0 + 368) = 0u;
      }

      else
      {
        sub_10000FF90(v0 + 104, v0 + 456, &qword_10097B208, &qword_1007FE5A8);
        v136 = *(v0 + 328);
        *(v0 + 400) = *(v0 + 312);
        *(v0 + 416) = v136;
        *(v0 + 432) = *(v0 + 344);
        *(v0 + 448) = *(v0 + 360);
        v137 = *(v0 + 296);
        *(v0 + 368) = *v110;
        *(v0 + 384) = v137;
      }

      v138 = *(v0 + 2744);
      v282 = *(v0 + 2704);
      v289 = *(v0 + 2712);
      v139 = *(v0 + 2664);
      v140 = *(v0 + 2640);
      v141 = *(v0 + 2632);
      v142 = *(v0 + 2512);
      v143 = *(v0 + 2488);
      v144 = *(v0 + 2136);
      v145 = *(v0 + 2056);
      v146 = *(v0 + 1944);
      (*(v0 + 2736))(*(v0 + 2320), *(v0 + 2352), *(v0 + 2264));
      CurrentValueSubject.value.getter();
      SFAirDropReceive.Transfer.id.getter();
      v141(v142, v143);
      sub_10000FF90(v0 + 368, v0 + 544, &qword_10097B208, &qword_1007FE5A8);
      SFAirDrop.ContactRequest.contact.getter();
      if (v282(v145, 1, v144) == 1)
      {
        v147 = *(v0 + 2056);
        v148 = *(v0 + 1984);
        v149 = *(v0 + 1960);
        v150 = *(v0 + 1944);
        v151 = *(v0 + 1928);
        v152 = *(v0 + 1920);
        (*(v0 + 2752))(*(v0 + 2320), *(v0 + 2264));
        sub_100005508(v0 + 368, &qword_10097B208, &qword_1007FE5A8);
        sub_100005508(v147, &qword_10097B198, &qword_1007FE450);
        v153 = v149[7];
        v154 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
        (*(*(v154 - 8) + 56))(v148 + v153, 1, 1, v154);
        (*(v151 + 32))(v148, v150, v152);
        v155 = (v148 + v149[5]);
        *v155 = 0;
        v155[1] = 0;
        v156 = (v148 + v149[6]);
        *v156 = 0;
        v156[1] = 0;
        *(v148 + v149[8]) = xmmword_1007F8A80;
        v157 = v148 + v149[9];
        *(v157 + 80) = 0;
        *(v157 + 48) = 0u;
        *(v157 + 64) = 0u;
        *(v157 + 16) = 0u;
        *(v157 + 32) = 0u;
        *v157 = 0u;
      }

      else
      {
        v158 = *(v0 + 2728);
        v290 = *(v0 + 2752);
        v276 = *(v0 + 2264);
        v283 = *(v0 + 2320);
        v159 = *(v0 + 2160);
        v160 = *(v0 + 2144);
        v161 = *(v0 + 2136);
        v162 = *(v0 + 1984);
        v163 = *(v0 + 1960);
        v164 = *(v0 + 1944);
        v247 = v164;
        v165 = *(v0 + 1928);
        v166 = *(v0 + 1920);
        (*(v0 + 2720))(v159, *(v0 + 2056), v161);
        (*(v165 + 16))(v162, v164, v166);
        v167 = SFAirDrop.ContactInfo.givenName.getter();
        v264 = v168;
        v270 = v167;
        v169 = SFAirDrop.ContactInfo.fullName.getter();
        v252 = v170;
        v258 = v169;
        v171 = v163[7];
        SFAirDrop.ContactInfo.handle.getter();
        v172 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
        (*(*(v172 - 8) + 56))(v162 + v171, 0, 1, v172);
        v173 = SFAirDrop.ContactInfo.vcard.getter();
        v175 = v174;
        (*(v160 + 8))(v159, v161);
        (*(v165 + 8))(v247, v166);
        v290(v283, v276);
        v176 = (v162 + v163[5]);
        *v176 = v270;
        v176[1] = v264;
        v177 = (v162 + v163[6]);
        *v177 = v258;
        v177[1] = v252;
        v178 = (v162 + v163[8]);
        *v178 = v173;
        v178[1] = v175;
        v179 = v162 + v163[9];
        v180 = *(v0 + 384);
        *v179 = *(v0 + 368);
        *(v179 + 16) = v180;
        v181 = *(v0 + 400);
        v182 = *(v0 + 416);
        v183 = *(v0 + 432);
        *(v179 + 80) = *(v0 + 448);
        *(v179 + 48) = v182;
        *(v179 + 64) = v183;
        *(v179 + 32) = v181;
      }

      sub_1005304C4(*(v0 + 1984), *(v0 + 1992), _s16ExchangeResponseVMa);
      v184 = swift_task_alloc();
      *(v0 + 2976) = v184;
      *v184 = v0;
      v184[1] = sub_1005274CC;
      v185 = *(v0 + 2584);
      v186 = *(v0 + 1992);

      return sub_1006424A0(v186);
    }

    v62 = *(v0 + 2728);
    v63 = *(v0 + 2712);
    v64 = *(v0 + 2704);
    v65 = *(v0 + 2136);
    v66 = *(v0 + 2080);
    v67 = *(v0 + 1824);
    (*(v0 + 2720))(*(v0 + 2176), *(v0 + 2088), v65);
    v68 = *(v67 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_deviceStatus);
    sub_1004E5AD8(v66);
    if (v64(v66, 1, v65) == 1)
    {
      v20 = (v0 + 2080);
      (*(*(v0 + 2144) + 8))(*(v0 + 2176), *(v0 + 2136));
      goto LABEL_15;
    }

    v92 = *(v0 + 2800);
    v93 = *(v0 + 2728);
    v294 = *(v0 + 2640);
    v287 = *(v0 + 2632);
    v280 = *(v0 + 2624);
    v274 = *(v0 + 2616);
    v262 = *(v0 + 2608);
    v250 = *(v0 + 2808);
    v256 = *(v0 + 2600);
    v94 = *(v0 + 2528);
    v268 = *(v0 + 2488);
    v95 = *(v0 + 2480);
    v96 = *(v0 + 2464);
    v97 = *(v0 + 2176);
    v98 = *(v0 + 2168);
    v99 = *(v0 + 2136);
    v100 = *(v0 + 1832);
    v101 = *(v0 + 1824);
    (*(v0 + 2720))(v98, *(v0 + 2080), v99);
    sub_10052BDD8(v97, v98, v100);
    v102 = *(sub_10028088C(&qword_10097C658, &unk_1008042B0) + 48);
    v92(v95, v98, v99);
    v103 = sub_10028088C(&unk_10097C660, &unk_10080D3E0);
    (*(*(v103 - 8) + 16))(v95 + v102, v100, v103);
    v256(v95, enum case for SFAirDropReceive.Transfer.State.waitingForContactShareBackResponse(_:), v96);
    sub_100687AF8(v95, v94);
    v274(v95, v96);
    v287(v94, v268);

    return _swift_task_switch(sub_100526380, 0, 0);
  }

  else
  {
    v21 = *(v0 + 2592);
    v22 = *(v0 + 1824);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v284 = *(v0 + 2688);
      v291 = *(v0 + 2696);
      v265 = *(v0 + 2672);
      v271 = *(v0 + 2680);
      v25 = *(v0 + 2664);
      v248 = *(v0 + 2632);
      v253 = *(v0 + 2640);
      v26 = *(v0 + 2528);
      v27 = *(v0 + 2488);
      v28 = *(v0 + 2256);
      v259 = *(v0 + 2240);
      v29 = *(v0 + 2232);
      v277 = *(v0 + 2216);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v296[0] = v31;
      *v30 = 136315138;
      CurrentValueSubject.value.getter();
      SFAirDropReceive.Transfer.askRequest.getter();
      v248(v26, v27);
      SFAirDropReceive.AskRequest.type.getter();
      v265(v28, v259);
      sub_100530ED4(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      v284(v29, v277);
      v35 = sub_10000C4E4(v32, v34, v296);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v23, v24, "Exchange Contact SHARE BACK SKIP. Already responded with contact {type: %s}", v30, 0xCu);
      sub_10000C60C(v31);
    }

    v36 = *(v0 + 1824) + *(v0 + 2592);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Exchange Contact END", v39, 2u);
    }

    v40 = *(v0 + 2856);
    v41 = *(v0 + 2848);
    v42 = *(v0 + 2552);
    v278 = *(v0 + 2544);
    v285 = *(v0 + 2568);
    v292 = *(v0 + 2456);
    v260 = *(v0 + 2424);
    v266 = *(v0 + 2752);
    v43 = *(v0 + 2272);
    v254 = *(v0 + 2264);
    v44 = *(v0 + 2208);
    v45 = v37;
    v46 = *(v0 + 2144);
    v47 = *(v0 + 2136);
    v272 = *(v0 + 1912);
    v48 = *(v0 + 1904);
    v49 = *(v0 + 1880);

    v41(v48, v49);
    (*(v46 + 8))(v44, v47);
    v266(v260, v254);
    (*(v42 + 8))(v285, v278);
    sub_100005508(v272, &qword_100976908, &unk_100801D60);
    sub_100530400(v292, _s15ExchangeRequestVMa);
    v286 = *(v0 + 2920);
    v293 = *(v0 + 2928);
    v50 = *(v0 + 2568);
    v51 = *(v0 + 2560);
    v52 = *(v0 + 2536);
    v53 = *(v0 + 2528);
    v54 = *(v0 + 2520);
    v55 = *(v0 + 2512);
    v56 = *(v0 + 2504);
    v57 = *(v0 + 2480);
    v58 = *(v0 + 2456);
    v59 = *(v0 + 2432);
    v187 = *(v0 + 2424);
    v188 = *(v0 + 2416);
    v189 = *(v0 + 2408);
    v190 = *(v0 + 2400);
    v191 = *(v0 + 2392);
    v192 = *(v0 + 2384);
    v193 = *(v0 + 2376);
    v194 = *(v0 + 2368);
    v195 = *(v0 + 2360);
    v196 = *(v0 + 2352);
    v197 = *(v0 + 2344);
    v198 = *(v0 + 2336);
    v199 = *(v0 + 2328);
    v200 = *(v0 + 2320);
    v201 = *(v0 + 2312);
    v202 = *(v0 + 2304);
    v203 = *(v0 + 2296);
    v204 = *(v0 + 2288);
    v205 = *(v0 + 2280);
    v206 = *(v0 + 2256);
    v207 = *(v0 + 2232);
    v208 = *(v0 + 2208);
    v209 = *(v0 + 2200);
    v210 = *(v0 + 2192);
    v211 = *(v0 + 2184);
    v212 = *(v0 + 2176);
    v213 = *(v0 + 2168);
    v214 = *(v0 + 2160);
    v215 = *(v0 + 2152);
    v216 = *(v0 + 2128);
    v217 = *(v0 + 2120);
    v218 = *(v0 + 2112);
    v219 = *(v0 + 2104);
    v220 = *(v0 + 2096);
    v221 = *(v0 + 2088);
    v222 = *(v0 + 2080);
    v223 = *(v0 + 2072);
    v224 = *(v0 + 2064);
    v225 = *(v0 + 2056);
    v226 = *(v0 + 2048);
    v227 = *(v0 + 2040);
    v228 = *(v0 + 2032);
    v229 = *(v0 + 2024);
    v230 = *(v0 + 2016);
    v231 = *(v0 + 2008);
    v232 = *(v0 + 2000);
    v233 = *(v0 + 1992);
    v234 = *(v0 + 1984);
    v235 = *(v0 + 1976);
    v237 = *(v0 + 1968);
    v239 = *(v0 + 1952);
    v241 = *(v0 + 1944);
    v243 = *(v0 + 1936);
    v245 = *(v0 + 1912);
    v249 = *(v0 + 1904);
    v255 = *(v0 + 1896);
    v261 = *(v0 + 1872);
    v267 = *(v0 + 1848);
    v273 = *(v0 + 1840);
    v279 = *(v0 + 1832);

    v60 = *(v0 + 8);

    return v60(v286, v293);
  }
}

uint64_t sub_100526380()
{
  v1 = v0[229];
  v2 = swift_task_alloc();
  v0[367] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[368] = v3;
  *(v3 + 16) = v1;
  v4 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v5 = swift_task_alloc();
  v0[369] = v5;
  *v5 = v0;
  v5[1] = sub_100526488;
  v6 = v0[293];
  v7 = v0[283];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v6, &unk_1007FE590, v2, sub_1003C3800, v3, 0, 0, v7);
}

uint64_t sub_100526488()
{
  v2 = *v1;
  v3 = *(*v1 + 2952);
  v10 = *v1;
  *(*v1 + 2960) = v0;

  if (v0)
  {
    v4 = sub_100526ECC;
    v5 = 0;
  }

  else
  {
    v6 = v2[368];
    v7 = v2[367];
    v8 = v2[322];

    v4 = sub_1005265BC;
    v5 = v8;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1005265BC()
{
  v136 = v0;
  v1 = *(v0 + 2744);
  v2 = *(v0 + 2736);
  v3 = *(v0 + 2592);
  v4 = *(v0 + 2352);
  v5 = *(v0 + 2336);
  v6 = *(v0 + 2264);
  v7 = *(v0 + 1824);
  (*(*(v0 + 2272) + 32))(v4, *(v0 + 2344), v6);
  v2(v5, v4, v6);
  v8 = Logger.logObject.getter();
  v129 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v8, v129);
  v133 = *(v0 + 2752);
  v10 = *(v0 + 2336);
  v11 = *(v0 + 2272);
  v12 = *(v0 + 2264);
  v13 = *(v0 + 2176);
  v14 = *(v0 + 2168);
  v15 = *(v0 + 2144);
  v16 = *(v0 + 2136);
  v17 = *(v0 + 1832);
  if (v9)
  {
    v121 = *(v0 + 2168);
    v18 = swift_slowAlloc();
    v125 = v17;
    v19 = swift_slowAlloc();
    v135 = v19;
    *v18 = 141558275;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    sub_100530ED4(&qword_10097B210, &type metadata accessor for SFAirDrop.ContactRequest);
    v115 = v16;
    v118 = v13;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v133(v10, v12);
    v23 = sub_10000C4E4(v20, v22, &v135);

    *(v18 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v8, v129, "Exchange Contact CONTINUE. Share back permission {contactToSend: %{private,mask.hash}s}", v18, 0x16u);
    sub_10000C60C(v19);

    v24 = *(v15 + 8);
    v24(v121, v115);
    v24(v118, v115);
    v25 = v125;
  }

  else
  {

    v133(v10, v12);
    v26 = *(v15 + 8);
    v26(v14, v16);
    v26(v13, v16);
    v25 = v17;
  }

  sub_100005508(v25, &qword_10097B200, &qword_1007FE578);
  v27 = (v0 + 280);
  v28 = *(v0 + 2744);
  v29 = *(v0 + 2736);
  v134 = *(v0 + 2712);
  v130 = *(v0 + 2704);
  v119 = *(v0 + 2632);
  v122 = *(v0 + 2640);
  v106 = *(v0 + 2600);
  v107 = *(v0 + 2608);
  v108 = *(v0 + 2528);
  v109 = *(v0 + 2488);
  v111 = *(v0 + 2616);
  v30 = *(v0 + 2480);
  v31 = *(v0 + 2464);
  v32 = *(v0 + 2424);
  v33 = *(v0 + 2352);
  v34 = *(v0 + 2264);
  v126 = *(v0 + 2136);
  v113 = *(v0 + 2064);
  v116 = *(v0 + 2624);
  v105 = *(v0 + 1824);
  v35 = *(sub_10028088C(&qword_10097C650, &unk_100808DE0) + 48);
  v29(v30, v32, v34);
  v29(v30 + v35, v33, v34);
  v106(v30, enum case for SFAirDropReceive.Transfer.State.sharingContactBack(_:), v31);
  sub_100687AF8(v30, v108);
  v111(v30, v31);
  v119(v108, v109);
  v123 = *(v105 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_nearbyAgent);
  SFAirDrop.ContactRequest.contact.getter();
  if (v130(v113, 1, v126) == 1)
  {
    sub_100005508(*(v0 + 2064), &qword_10097B198, &qword_1007FE450);
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v38 = *(v0 + 2144);
    v39 = *(v0 + 2136);
    v40 = *(v0 + 2064);
    v41 = SFAirDrop.ContactInfo.accountHandle.getter();
    v37 = v42;
    (*(v38 + 8))(v40, v39);
    v36 = v41;
  }

  v43 = *(v0 + 2752);
  v44 = *(v0 + 2392);
  v45 = *(v0 + 2352);
  v46 = *(v0 + 2272);
  v47 = *(v0 + 2264);
  sub_10046A56C(v36, v37, (v0 + 104));
  v48 = *(v0 + 152);
  *(v0 + 312) = *(v0 + 136);
  *(v0 + 328) = v48;
  *(v0 + 344) = *(v0 + 168);
  *(v0 + 360) = *(v0 + 184);
  v49 = *(v0 + 120);
  *v27 = *(v0 + 104);
  *(v0 + 296) = v49;

  (*(v46 + 104))(v44, enum case for SFAirDrop.ContactRequest.notNeeded(_:), v47);
  v50 = static SFAirDrop.ContactRequest.== infix(_:_:)();
  *(v0 + 2968) = (v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v43(v44, v47);
  if (v50)
  {
    *(v0 + 448) = 0;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 368) = 0u;
  }

  else
  {
    sub_10000FF90(v0 + 104, v0 + 456, &qword_10097B208, &qword_1007FE5A8);
    v51 = *(v0 + 328);
    *(v0 + 400) = *(v0 + 312);
    *(v0 + 416) = v51;
    *(v0 + 432) = *(v0 + 344);
    *(v0 + 448) = *(v0 + 360);
    v52 = *(v0 + 296);
    *(v0 + 368) = *v27;
    *(v0 + 384) = v52;
  }

  v53 = *(v0 + 2744);
  v54 = *(v0 + 2704);
  v127 = v54;
  v131 = *(v0 + 2712);
  v55 = *(v0 + 2664);
  v56 = *(v0 + 2640);
  v57 = *(v0 + 2632);
  v58 = *(v0 + 2512);
  v59 = *(v0 + 2488);
  v60 = *(v0 + 2136);
  v61 = *(v0 + 2056);
  v62 = *(v0 + 1944);
  (*(v0 + 2736))(*(v0 + 2320), *(v0 + 2352), *(v0 + 2264));
  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.id.getter();
  v57(v58, v59);
  sub_10000FF90(v0 + 368, v0 + 544, &qword_10097B208, &qword_1007FE5A8);
  SFAirDrop.ContactRequest.contact.getter();
  if (v127(v61, 1, v60) == 1)
  {
    v63 = *(v0 + 2056);
    v64 = *(v0 + 1984);
    v65 = *(v0 + 1960);
    v66 = *(v0 + 1944);
    v67 = *(v0 + 1928);
    v68 = *(v0 + 1920);
    (*(v0 + 2752))(*(v0 + 2320), *(v0 + 2264));
    sub_100005508(v0 + 368, &qword_10097B208, &qword_1007FE5A8);
    sub_100005508(v63, &qword_10097B198, &qword_1007FE450);
    v69 = v65[7];
    v70 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
    (*(*(v70 - 8) + 56))(v64 + v69, 1, 1, v70);
    (*(v67 + 32))(v64, v66, v68);
    v71 = (v64 + v65[5]);
    *v71 = 0;
    v71[1] = 0;
    v72 = (v64 + v65[6]);
    *v72 = 0;
    v72[1] = 0;
    *(v64 + v65[8]) = xmmword_1007F8A80;
    v73 = v64 + v65[9];
    *(v73 + 80) = 0;
    *(v73 + 48) = 0u;
    *(v73 + 64) = 0u;
    *(v73 + 16) = 0u;
    *(v73 + 32) = 0u;
    *v73 = 0u;
  }

  else
  {
    v74 = *(v0 + 2728);
    v132 = *(v0 + 2752);
    v75 = *(v0 + 2264);
    v124 = v75;
    v128 = *(v0 + 2320);
    v76 = *(v0 + 2160);
    v77 = *(v0 + 2144);
    v78 = *(v0 + 2136);
    v79 = *(v0 + 1984);
    v80 = *(v0 + 1960);
    v81 = *(v0 + 1944);
    v110 = v81;
    v82 = *(v0 + 1928);
    v83 = *(v0 + 1920);
    (*(v0 + 2720))(v76, *(v0 + 2056), v78);
    (*(v82 + 16))(v79, v81, v83);
    v84 = SFAirDrop.ContactInfo.givenName.getter();
    v117 = v85;
    v120 = v84;
    v86 = SFAirDrop.ContactInfo.fullName.getter();
    v112 = v87;
    v114 = v86;
    v88 = v80[7];
    SFAirDrop.ContactInfo.handle.getter();
    v89 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
    (*(*(v89 - 8) + 56))(v79 + v88, 0, 1, v89);
    v90 = SFAirDrop.ContactInfo.vcard.getter();
    v92 = v91;
    (*(v77 + 8))(v76, v78);
    (*(v82 + 8))(v110, v83);
    v132(v128, v124);
    v93 = (v79 + v80[5]);
    *v93 = v120;
    v93[1] = v117;
    v94 = (v79 + v80[6]);
    *v94 = v114;
    v94[1] = v112;
    v95 = (v79 + v80[8]);
    *v95 = v90;
    v95[1] = v92;
    v96 = v79 + v80[9];
    v97 = *(v0 + 384);
    *v96 = *(v0 + 368);
    *(v96 + 16) = v97;
    v98 = *(v0 + 400);
    v99 = *(v0 + 416);
    v100 = *(v0 + 432);
    *(v96 + 80) = *(v0 + 448);
    *(v96 + 48) = v99;
    *(v96 + 64) = v100;
    *(v96 + 32) = v98;
  }

  sub_1005304C4(*(v0 + 1984), *(v0 + 1992), _s16ExchangeResponseVMa);
  v101 = swift_task_alloc();
  *(v0 + 2976) = v101;
  *v101 = v0;
  v101[1] = sub_1005274CC;
  v102 = *(v0 + 2584);
  v103 = *(v0 + 1992);

  return sub_1006424A0(v103);
}

uint64_t sub_100526ECC()
{
  v1 = v0[368];
  v2 = v0[367];
  v3 = v0[366];
  v4 = v0[322];

  return _swift_task_switch(sub_100526F58, v4, 0);
}

uint64_t sub_100526F58()
{
  v72 = v0[356];
  v74 = v0[357];
  v1 = v0[319];
  v82 = v0[344];
  v84 = v0[318];
  v90 = v0[307];
  v2 = v0[284];
  v76 = v0[283];
  v78 = v0[303];
  v3 = v0[276];
  v4 = v0[272];
  v5 = v0[267];
  v86 = v0[321];
  v88 = v0[239];
  v6 = v0[238];
  v7 = v0[235];
  v80 = v0[229];
  v8 = *(v0[268] + 8);
  v8(v0[271], v5);
  v8(v4, v5);
  v72(v6, v7);
  v8(v3, v5);
  v82(v78, v76);
  (*(v1 + 8))(v86, v84);
  sub_100005508(v80, &qword_10097B200, &qword_1007FE578);
  sub_100005508(v88, &qword_100976908, &unk_100801D60);
  sub_100530400(v90, _s15ExchangeRequestVMa);
  v91 = v0[370];
  v9 = v0[321];
  v10 = v0[320];
  v11 = v0[317];
  v12 = v0[316];
  v13 = v0[315];
  v14 = v0[314];
  v15 = v0[313];
  v16 = v0[310];
  v17 = v0[307];
  v18 = v0[304];
  v21 = v0[303];
  v22 = v0[302];
  v23 = v0[301];
  v24 = v0[300];
  v25 = v0[299];
  v26 = v0[298];
  v27 = v0[297];
  v28 = v0[296];
  v29 = v0[295];
  v30 = v0[294];
  v31 = v0[293];
  v32 = v0[292];
  v33 = v0[291];
  v34 = v0[290];
  v35 = v0[289];
  v36 = v0[288];
  v37 = v0[287];
  v38 = v0[286];
  v39 = v0[285];
  v40 = v0[282];
  v41 = v0[279];
  v42 = v0[276];
  v43 = v0[275];
  v44 = v0[274];
  v45 = v0[273];
  v46 = v0[272];
  v47 = v0[271];
  v48 = v0[270];
  v49 = v0[269];
  v50 = v0[266];
  v51 = v0[265];
  v52 = v0[264];
  v53 = v0[263];
  v54 = v0[262];
  v55 = v0[261];
  v56 = v0[260];
  v57 = v0[259];
  v58 = v0[258];
  v59 = v0[257];
  v60 = v0[256];
  v61 = v0[255];
  v62 = v0[254];
  v63 = v0[253];
  v64 = v0[252];
  v65 = v0[251];
  v66 = v0[250];
  v67 = v0[249];
  v68 = v0[248];
  v69 = v0[247];
  v70 = v0[246];
  v71 = v0[244];
  v73 = v0[243];
  v75 = v0[242];
  v77 = v0[239];
  v79 = v0[238];
  v81 = v0[237];
  v83 = v0[234];
  v85 = v0[231];
  v87 = v0[230];
  v89 = v0[229];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1005274CC()
{
  v2 = *v1;
  v3 = *(*v1 + 2976);
  v9 = *v1;
  *(*v1 + 2984) = v0;

  if (v0)
  {
    v4 = *(v2 + 2928);
    v5 = *(v2 + 2576);

    v6 = sub_1005297F4;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 2576);
    v6 = sub_1005275F4;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1005275F4()
{
  v118 = v0;
  v1 = *(v0 + 2744);
  v2 = *(v0 + 2592);
  v3 = *(v0 + 1824);
  (*(v0 + 2736))(*(v0 + 2312), *(v0 + 2352), *(v0 + 2264));
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 2968);
  v8 = *(v0 + 2752);
  v9 = *(v0 + 2352);
  v10 = *(v0 + 2312);
  v11 = *(v0 + 2264);
  v12 = *(v0 + 1992);
  if (v6)
  {
    v13 = swift_slowAlloc();
    v114 = v9;
    v117 = swift_slowAlloc();
    v14 = v117;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_100530ED4(&qword_10097B210, &type metadata accessor for SFAirDrop.ContactRequest);
    v111 = v12;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v108 = v5;
    v17 = v16;
    v8(v10, v11);
    v18 = sub_10000C4E4(v15, v17, &v117);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v4, v108, "Exchange Contact CONTINUE. Shared back {contactToSend: %{private,mask.hash}s}", v13, 0x16u);
    sub_10000C60C(v14);

    sub_100005508(v0 + 368, &qword_10097B208, &qword_1007FE5A8);
    sub_100005508(v0 + 104, &qword_10097B208, &qword_1007FE5A8);
    sub_100530400(v111, _s16ExchangeResponseVMa);
    v8(v114, v11);
  }

  else
  {

    sub_100005508(v0 + 368, &qword_10097B208, &qword_1007FE5A8);
    sub_100005508(v0 + 104, &qword_10097B208, &qword_1007FE5A8);
    v8(v10, v11);
    sub_100530400(v12, _s16ExchangeResponseVMa);
    v8(v9, v11);
  }

  v19 = *(v0 + 1824) + *(v0 + 2592);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Exchange Contact END", v22, 2u);
  }

  v23 = *(v0 + 2856);
  v24 = *(v0 + 2848);
  v25 = *(v0 + 2552);
  v109 = *(v0 + 2544);
  v112 = *(v0 + 2568);
  v115 = *(v0 + 2456);
  v102 = *(v0 + 2424);
  v104 = *(v0 + 2752);
  v26 = *(v0 + 2272);
  v100 = *(v0 + 2264);
  v27 = *(v0 + 2208);
  v28 = v20;
  v29 = *(v0 + 2144);
  v30 = *(v0 + 2136);
  v106 = *(v0 + 1912);
  v31 = *(v0 + 1904);
  v32 = *(v0 + 1880);

  v24(v31, v32);
  (*(v29 + 8))(v27, v30);
  v104(v102, v100);
  (*(v25 + 8))(v112, v109);
  sub_100005508(v106, &qword_100976908, &unk_100801D60);
  sub_100530400(v115, _s15ExchangeRequestVMa);
  v113 = *(v0 + 2920);
  v116 = *(v0 + 2928);
  v33 = *(v0 + 2568);
  v34 = *(v0 + 2560);
  v35 = *(v0 + 2536);
  v36 = *(v0 + 2528);
  v37 = *(v0 + 2520);
  v38 = *(v0 + 2512);
  v39 = *(v0 + 2504);
  v40 = *(v0 + 2480);
  v41 = *(v0 + 2456);
  v42 = *(v0 + 2432);
  v45 = *(v0 + 2424);
  v46 = *(v0 + 2416);
  v47 = *(v0 + 2408);
  v48 = *(v0 + 2400);
  v49 = *(v0 + 2392);
  v50 = *(v0 + 2384);
  v51 = *(v0 + 2376);
  v52 = *(v0 + 2368);
  v53 = *(v0 + 2360);
  v54 = *(v0 + 2352);
  v55 = *(v0 + 2344);
  v56 = *(v0 + 2336);
  v57 = *(v0 + 2328);
  v58 = *(v0 + 2320);
  v59 = *(v0 + 2312);
  v60 = *(v0 + 2304);
  v61 = *(v0 + 2296);
  v62 = *(v0 + 2288);
  v63 = *(v0 + 2280);
  v64 = *(v0 + 2256);
  v65 = *(v0 + 2232);
  v66 = *(v0 + 2208);
  v67 = *(v0 + 2200);
  v68 = *(v0 + 2192);
  v69 = *(v0 + 2184);
  v70 = *(v0 + 2176);
  v71 = *(v0 + 2168);
  v72 = *(v0 + 2160);
  v73 = *(v0 + 2152);
  v74 = *(v0 + 2128);
  v75 = *(v0 + 2120);
  v76 = *(v0 + 2112);
  v77 = *(v0 + 2104);
  v78 = *(v0 + 2096);
  v79 = *(v0 + 2088);
  v80 = *(v0 + 2080);
  v81 = *(v0 + 2072);
  v82 = *(v0 + 2064);
  v83 = *(v0 + 2056);
  v84 = *(v0 + 2048);
  v85 = *(v0 + 2040);
  v86 = *(v0 + 2032);
  v87 = *(v0 + 2024);
  v88 = *(v0 + 2016);
  v89 = *(v0 + 2008);
  v90 = *(v0 + 2000);
  v91 = *(v0 + 1992);
  v92 = *(v0 + 1984);
  v93 = *(v0 + 1976);
  v94 = *(v0 + 1968);
  v95 = *(v0 + 1952);
  v96 = *(v0 + 1944);
  v97 = *(v0 + 1936);
  v98 = *(v0 + 1912);
  v99 = *(v0 + 1904);
  v101 = *(v0 + 1896);
  v103 = *(v0 + 1872);
  v105 = *(v0 + 1848);
  v107 = *(v0 + 1840);
  v110 = *(v0 + 1832);

  v43 = *(v0 + 8);

  return v43(v113, v116);
}

uint64_t sub_100527DD8()
{
  v2 = *v1;
  v3 = *(*v1 + 2992);
  v4 = *v1;
  *(*v1 + 3000) = v0;

  v5 = *(v2 + 2576);
  if (v0)
  {
    v6 = sub_100528850;
  }

  else
  {
    v6 = sub_100527F04;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100527F04()
{
  v1 = v0[321];
  v2 = v0[319];
  v3 = v0[318];
  v4 = v0[307];
  v5 = v0[303];
  v6 = v0[288];
  v7 = v0[284];
  v8 = v0[283];
  sub_100530400(v0[247], _s16ExchangeResponseVMa);
  v9 = *(v7 + 8);
  v9(v6, v8);
  v9(v5, v8);
  (*(v2 + 8))(v1, v3);
  sub_100530400(v4, _s15ExchangeRequestVMa);
  v10 = v0[321];
  v11 = v0[320];
  v12 = v0[317];
  v13 = v0[316];
  v14 = v0[315];
  v15 = v0[314];
  v16 = v0[313];
  v17 = v0[310];
  v18 = v0[307];
  v19 = v0[304];
  v22 = v0[303];
  v23 = v0[302];
  v24 = v0[301];
  v25 = v0[300];
  v26 = v0[299];
  v27 = v0[298];
  v28 = v0[297];
  v29 = v0[296];
  v30 = v0[295];
  v31 = v0[294];
  v32 = v0[293];
  v33 = v0[292];
  v34 = v0[291];
  v35 = v0[290];
  v36 = v0[289];
  v37 = v0[288];
  v38 = v0[287];
  v39 = v0[286];
  v40 = v0[285];
  v41 = v0[282];
  v42 = v0[279];
  v43 = v0[276];
  v44 = v0[275];
  v45 = v0[274];
  v46 = v0[273];
  v47 = v0[272];
  v48 = v0[271];
  v49 = v0[270];
  v50 = v0[269];
  v51 = v0[266];
  v52 = v0[265];
  v53 = v0[264];
  v54 = v0[263];
  v55 = v0[262];
  v56 = v0[261];
  v57 = v0[260];
  v58 = v0[259];
  v59 = v0[258];
  v60 = v0[257];
  v61 = v0[256];
  v62 = v0[255];
  v63 = v0[254];
  v64 = v0[253];
  v65 = v0[252];
  v66 = v0[251];
  v67 = v0[250];
  v68 = v0[249];
  v69 = v0[248];
  v70 = v0[247];
  v71 = v0[246];
  v72 = v0[244];
  v73 = v0[243];
  v74 = v0[242];
  v75 = v0[239];
  v76 = v0[238];
  v77 = v0[237];
  v78 = v0[234];
  v79 = v0[231];
  v80 = v0[230];
  v81 = v0[229];

  v20 = v0[1];

  return v20(0, 0);
}

uint64_t sub_1005283E8()
{
  (*(v0[319] + 8))(v0[321], v0[318]);
  v73 = v0[332];
  v1 = v0[321];
  v2 = v0[320];
  v3 = v0[317];
  v4 = v0[316];
  v5 = v0[315];
  v6 = v0[314];
  v7 = v0[313];
  v8 = v0[310];
  v9 = v0[307];
  v10 = v0[304];
  v13 = v0[303];
  v14 = v0[302];
  v15 = v0[301];
  v16 = v0[300];
  v17 = v0[299];
  v18 = v0[298];
  v19 = v0[297];
  v20 = v0[296];
  v21 = v0[295];
  v22 = v0[294];
  v23 = v0[293];
  v24 = v0[292];
  v25 = v0[291];
  v26 = v0[290];
  v27 = v0[289];
  v28 = v0[288];
  v29 = v0[287];
  v30 = v0[286];
  v31 = v0[285];
  v32 = v0[282];
  v33 = v0[279];
  v34 = v0[276];
  v35 = v0[275];
  v36 = v0[274];
  v37 = v0[273];
  v38 = v0[272];
  v39 = v0[271];
  v40 = v0[270];
  v41 = v0[269];
  v42 = v0[266];
  v43 = v0[265];
  v44 = v0[264];
  v45 = v0[263];
  v46 = v0[262];
  v47 = v0[261];
  v48 = v0[260];
  v49 = v0[259];
  v50 = v0[258];
  v51 = v0[257];
  v52 = v0[256];
  v53 = v0[255];
  v54 = v0[254];
  v55 = v0[253];
  v56 = v0[252];
  v57 = v0[251];
  v58 = v0[250];
  v59 = v0[249];
  v60 = v0[248];
  v61 = v0[247];
  v62 = v0[246];
  v63 = v0[244];
  v64 = v0[243];
  v65 = v0[242];
  v66 = v0[239];
  v67 = v0[238];
  v68 = v0[237];
  v69 = v0[234];
  v70 = v0[231];
  v71 = v0[230];
  v72 = v0[229];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100528850()
{
  v1 = v0[321];
  v2 = v0[319];
  v3 = v0[318];
  v4 = v0[307];
  v5 = v0[303];
  v6 = v0[288];
  v7 = v0[284];
  v8 = v0[283];
  sub_100530400(v0[247], _s16ExchangeResponseVMa);
  v9 = *(v7 + 8);
  v9(v6, v8);
  v9(v5, v8);
  (*(v2 + 8))(v1, v3);
  sub_100530400(v4, _s15ExchangeRequestVMa);
  v82 = v0[375];
  v10 = v0[321];
  v11 = v0[320];
  v12 = v0[317];
  v13 = v0[316];
  v14 = v0[315];
  v15 = v0[314];
  v16 = v0[313];
  v17 = v0[310];
  v18 = v0[307];
  v19 = v0[304];
  v22 = v0[303];
  v23 = v0[302];
  v24 = v0[301];
  v25 = v0[300];
  v26 = v0[299];
  v27 = v0[298];
  v28 = v0[297];
  v29 = v0[296];
  v30 = v0[295];
  v31 = v0[294];
  v32 = v0[293];
  v33 = v0[292];
  v34 = v0[291];
  v35 = v0[290];
  v36 = v0[289];
  v37 = v0[288];
  v38 = v0[287];
  v39 = v0[286];
  v40 = v0[285];
  v41 = v0[282];
  v42 = v0[279];
  v43 = v0[276];
  v44 = v0[275];
  v45 = v0[274];
  v46 = v0[273];
  v47 = v0[272];
  v48 = v0[271];
  v49 = v0[270];
  v50 = v0[269];
  v51 = v0[266];
  v52 = v0[265];
  v53 = v0[264];
  v54 = v0[263];
  v55 = v0[262];
  v56 = v0[261];
  v57 = v0[260];
  v58 = v0[259];
  v59 = v0[258];
  v60 = v0[257];
  v61 = v0[256];
  v62 = v0[255];
  v63 = v0[254];
  v64 = v0[253];
  v65 = v0[252];
  v66 = v0[251];
  v67 = v0[250];
  v68 = v0[249];
  v69 = v0[248];
  v70 = v0[247];
  v71 = v0[246];
  v72 = v0[244];
  v73 = v0[243];
  v74 = v0[242];
  v75 = v0[239];
  v76 = v0[238];
  v77 = v0[237];
  v78 = v0[234];
  v79 = v0[231];
  v80 = v0[230];
  v81 = v0[229];

  v20 = v0[1];

  return v20();
}

uint64_t sub_100528D38()
{
  v1 = v0[347];
  v2 = v0[344];
  v3 = v0[319];
  v81 = v0[318];
  v83 = v0[321];
  v85 = v0[307];
  v4 = v0[301];
  v5 = v0[283];
  v77 = v0[276];
  v79 = v0[303];
  v6 = v0[268];
  v75 = v0[267];
  v7 = v0[251];
  sub_100005508((v0 + 178), &qword_10097B208, &qword_1007FE5A8);
  sub_100005508((v0 + 24), &qword_10097B208, &qword_1007FE5A8);
  sub_100530400(v7, _s16ExchangeResponseVMa);
  v2(v4, v5);
  (*(v6 + 8))(v77, v75);
  v2(v79, v5);
  (*(v3 + 8))(v83, v81);
  sub_100530400(v85, _s15ExchangeRequestVMa);
  v86 = v0[349];
  v8 = v0[321];
  v9 = v0[320];
  v10 = v0[317];
  v11 = v0[316];
  v12 = v0[315];
  v13 = v0[314];
  v14 = v0[313];
  v15 = v0[310];
  v16 = v0[307];
  v17 = v0[304];
  v20 = v0[303];
  v21 = v0[302];
  v22 = v0[301];
  v23 = v0[300];
  v24 = v0[299];
  v25 = v0[298];
  v26 = v0[297];
  v27 = v0[296];
  v28 = v0[295];
  v29 = v0[294];
  v30 = v0[293];
  v31 = v0[292];
  v32 = v0[291];
  v33 = v0[290];
  v34 = v0[289];
  v35 = v0[288];
  v36 = v0[287];
  v37 = v0[286];
  v38 = v0[285];
  v39 = v0[282];
  v40 = v0[279];
  v41 = v0[276];
  v42 = v0[275];
  v43 = v0[274];
  v44 = v0[273];
  v45 = v0[272];
  v46 = v0[271];
  v47 = v0[270];
  v48 = v0[269];
  v49 = v0[266];
  v50 = v0[265];
  v51 = v0[264];
  v52 = v0[263];
  v53 = v0[262];
  v54 = v0[261];
  v55 = v0[260];
  v56 = v0[259];
  v57 = v0[258];
  v58 = v0[257];
  v59 = v0[256];
  v60 = v0[255];
  v61 = v0[254];
  v62 = v0[253];
  v63 = v0[252];
  v64 = v0[251];
  v65 = v0[250];
  v66 = v0[249];
  v67 = v0[248];
  v68 = v0[247];
  v69 = v0[246];
  v70 = v0[244];
  v71 = v0[243];
  v72 = v0[242];
  v73 = v0[239];
  v74 = v0[238];
  v76 = v0[237];
  v78 = v0[234];
  v80 = v0[231];
  v82 = v0[230];
  v84 = v0[229];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100529270()
{
  v1 = v0[358];
  v75 = v0[356];
  v77 = v0[357];
  v2 = v0[319];
  v85 = v0[344];
  v87 = v0[318];
  v89 = v0[321];
  v91 = v0[307];
  v73 = v0[284];
  v79 = v0[283];
  v81 = v0[303];
  v3 = v0[276];
  v4 = v0[274];
  v5 = v0[268];
  v6 = v0[267];
  v83 = v0[239];
  v7 = v0[238];
  v8 = v0[235];
  v9 = v0[234];
  sub_100005508((v0 + 79), &qword_10097B208, &qword_1007FE5A8);
  sub_100530400(v9, type metadata accessor for SDAirDropServerConnection);
  v1(v4, v6);
  v75(v7, v8);
  v1(v3, v6);
  v85(v81, v79);
  (*(v2 + 8))(v89, v87);
  sub_100005508(v83, &qword_100976908, &unk_100801D60);
  sub_100530400(v91, _s15ExchangeRequestVMa);
  v92 = v0[364];
  v10 = v0[321];
  v11 = v0[320];
  v12 = v0[317];
  v13 = v0[316];
  v14 = v0[315];
  v15 = v0[314];
  v16 = v0[313];
  v17 = v0[310];
  v18 = v0[307];
  v19 = v0[304];
  v22 = v0[303];
  v23 = v0[302];
  v24 = v0[301];
  v25 = v0[300];
  v26 = v0[299];
  v27 = v0[298];
  v28 = v0[297];
  v29 = v0[296];
  v30 = v0[295];
  v31 = v0[294];
  v32 = v0[293];
  v33 = v0[292];
  v34 = v0[291];
  v35 = v0[290];
  v36 = v0[289];
  v37 = v0[288];
  v38 = v0[287];
  v39 = v0[286];
  v40 = v0[285];
  v41 = v0[282];
  v42 = v0[279];
  v43 = v0[276];
  v44 = v0[275];
  v45 = v0[274];
  v46 = v0[273];
  v47 = v0[272];
  v48 = v0[271];
  v49 = v0[270];
  v50 = v0[269];
  v51 = v0[266];
  v52 = v0[265];
  v53 = v0[264];
  v54 = v0[263];
  v55 = v0[262];
  v56 = v0[261];
  v57 = v0[260];
  v58 = v0[259];
  v59 = v0[258];
  v60 = v0[257];
  v61 = v0[256];
  v62 = v0[255];
  v63 = v0[254];
  v64 = v0[253];
  v65 = v0[252];
  v66 = v0[251];
  v67 = v0[250];
  v68 = v0[249];
  v69 = v0[248];
  v70 = v0[247];
  v71 = v0[246];
  v72 = v0[244];
  v74 = v0[243];
  v76 = v0[242];
  v78 = v0[239];
  v80 = v0[238];
  v82 = v0[237];
  v84 = v0[234];
  v86 = v0[231];
  v88 = v0[230];
  v90 = v0[229];

  v20 = v0[1];

  return v20();
}