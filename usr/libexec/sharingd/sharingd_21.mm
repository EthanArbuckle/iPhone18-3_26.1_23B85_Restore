uint64_t sub_1003978C0()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v8 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = v2[15];
    v5 = sub_100397A9C;
  }

  else
  {
    v6 = v2[15];
    (*(v2[17] + 8))(v2[8], v2[16]);
    v5 = sub_1003979F8;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1003979F8()
{
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1 = v0[14];
  v2 = v0[11];
  v4 = v0[7];
  v3 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100397A9C()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[8];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v2 + 8))(v3, v1);
  v4 = v0[19];
  v5 = v0[14];
  v6 = v0[11];
  v8 = v0[7];
  v7 = v0[8];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100397B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_10028088C(&qword_10097AD18, &unk_1007FDF70);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = sub_10028088C(&qword_10097AD20, &qword_100806FA0);
  v4[7] = v8;
  v9 = *(v8 - 8);
  v4[8] = v9;
  v10 = *(v9 + 64) + 15;
  v4[9] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v11 = static AirDropActor.shared;
  v4[10] = static AirDropActor.shared;

  return _swift_task_switch(sub_100397CCC, v11, 0);
}

uint64_t sub_100397CCC()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v0[2] = *(v0[3] + 48);
  sub_10028088C(&qword_10097AD28, &unk_1007FDF80);
  sub_100011630(&qword_10097AD30, &qword_10097AD28, &unk_1007FDF80);
  Publisher<>.values.getter();
  AsyncPublisher.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v5 = sub_10039C658(&qword_100977C00, type metadata accessor for AirDropActor);
  v0[11] = v5;
  v6 = v0[10];
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_100397E6C;
  v8 = v0[9];

  return sub_1004C4C2C(v6, v5);
}

uint64_t sub_100397E6C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v7 = *v2;
  *(*v2 + 104) = a1;

  if (!v1)
  {
    v6 = *(v3 + 80);

    return _swift_task_switch(sub_100397F80, v6, 0);
  }

  return result;
}

uint64_t sub_100397F80()
{
  v21 = v0;
  v1 = v0[13];
  if (v1)
  {
    if (qword_100973788 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_10097ABF8);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v20 = v6;
      *v5 = 136315138;
      type metadata accessor for SFAirDrop.TransferIdentifier();
      type metadata accessor for SFAirDropReceive.Transfer();
      sub_10039C658(&qword_10097F350, &type metadata accessor for SFAirDrop.TransferIdentifier);
      v7 = Dictionary.description.getter();
      v9 = sub_10000C4E4(v7, v8, &v20);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Receive transfers updates in daemon: %s", v5, 0xCu);
      sub_10000C60C(v6);
    }

    v10 = v0[3];
    sub_10039461C(&_swiftEmptyDictionarySingleton, v1);
    v11 = v10[12];
    v12 = v10[13];
    sub_10002CDC0(v10 + 9, v11);
    (*(v12 + 72))(v1, v11, v12);

    v13 = v0[10];
    v14 = v0[11];
    v15 = swift_task_alloc();
    v0[12] = v15;
    *v15 = v0;
    v15[1] = sub_100397E6C;
    v16 = v0[9];

    return sub_1004C4C2C(v13, v14);
  }

  else
  {
    v18 = v0[6];
    (*(v0[8] + 8))(v0[9], v0[7]);

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_100398280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[25] = a2;
  v5 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[29] = v6;
  v7 = *(v6 - 8);
  v4[30] = v7;
  v4[31] = *(v7 + 64);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v8 = type metadata accessor for SFAirDropReceive.AskRequest();
  v4[34] = v8;
  v9 = *(v8 - 8);
  v4[35] = v9;
  v10 = *(v9 + 64) + 15;
  v4[36] = swift_task_alloc();
  v11 = type metadata accessor for SFAirDrop.DisplayPriority();
  v4[37] = v11;
  v12 = *(v11 - 8);
  v4[38] = v12;
  v13 = *(v12 + 64) + 15;
  v4[39] = swift_task_alloc();
  v14 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v4[40] = v14;
  v15 = *(v14 - 8);
  v4[41] = v15;
  v16 = *(v15 + 64) + 15;
  v4[42] = swift_task_alloc();
  v17 = type metadata accessor for SFAirDropReceive.Transfer();
  v4[43] = v17;
  v18 = *(v17 - 8);
  v4[44] = v18;
  v4[45] = *(v18 + 64);
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v19 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v4[50] = v19;
  v20 = *(v19 - 8);
  v4[51] = v20;
  v21 = *(v20 + 64) + 15;
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v22 = *(*(sub_10028088C(&unk_1009762C0, &unk_1007F9430) - 8) + 64) + 15;
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v23 = sub_10028088C(&qword_10097AD08, &unk_1007FDF48);
  v4[59] = v23;
  v24 = *(v23 - 8);
  v4[60] = v24;
  v25 = *(v24 + 64) + 15;
  v4[61] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v26 = static AirDropActor.shared;
  v4[62] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003986A0, v26, 0);
}

uint64_t sub_1003986A0()
{
  v1 = v0[61];
  v2 = v0[27];
  v3 = v0[25];
  sub_10028088C(&qword_10097AD00, &qword_1007FDF30);
  SFNoThrowAsyncSequence.makeAsyncIterator()();
  v0[63] = sub_10039C658(&qword_100977C00, type metadata accessor for AirDropActor);
  swift_beginAccess();
  v4 = sub_100011630(&qword_10097AD10, &qword_10097AD08, &unk_1007FDF48);
  v5 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v6 = swift_task_alloc();
  v0[64] = v6;
  *v6 = v0;
  v6[1] = sub_1003987F0;
  v7 = v0[61];
  v8 = v0[58];
  v9 = v0[59];

  return dispatch thunk of AsyncIteratorProtocol.next()(v8, v9, v4);
}

uint64_t sub_1003987F0()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *v1;
  v2[65] = v0;

  v5 = v2[62];
  if (v0)
  {
    if (v5)
    {
      v6 = v2[63];
      swift_getObjectType();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_10039948C;
  }

  else
  {
    if (v5)
    {
      v11 = v2[63];
      swift_getObjectType();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      v9 = v12;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_100398988;
  }

  return _swift_task_switch(v10, v7, v9);
}

uint64_t sub_1003989A4()
{
  v125 = v0;
  v1 = v0[58];
  v2 = v0[43];
  v3 = v0[44];
  v4 = *(v3 + 48);
  if (v4(v1, 1, v2) == 1)
  {
    (*(v0[60] + 8))(v0[61], v0[59]);
    if (qword_100973788 != -1)
    {
      swift_once();
    }

    v5 = v0[55];
    v6 = v0[50];
    v7 = v0[51];
    v8 = v0[26];
    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_10097ABF8);
    v10 = *(v7 + 16);
    v0[66] = v10;
    v0[67] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v5, v8, v6);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[55];
    v15 = v0[50];
    v16 = v0[51];
    if (v13)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v124 = v18;
      *v17 = 136315138;
      sub_10039C658(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      (*(v16 + 8))(v14, v15);
      v22 = sub_10000C4E4(v19, v21, &v124);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v11, v12, "SDAirDropReceiveService.transfers REMOVE {id: %s}", v17, 0xCu);
      sub_10000C60C(v18);
    }

    else
    {

      (*(v16 + 8))(v14, v15);
    }

    v0[72] = *(v0[27] + 48);
    CurrentValueSubject.value.getter();
    v51 = v0[24];
    if (*(v51 + 16) && (v52 = sub_100570848(v0[26]), (v53 & 1) != 0))
    {
      v54 = v0[46];
      v55 = v0[43];
      v56 = v0[44];
      v57 = v0[27];
      v58 = *(v56 + 16);
      v56 += 16;
      v59 = *(v51 + 56) + *(v56 + 56) * v52;
      v0[73] = v58;
      v0[74] = v56 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v58(v54, v59, v55);

      if (*(v57 + 136))
      {
        sub_1002A9938(v0[27] + 112, (v0 + 2));
        v60 = v0[5];
        v61 = v0[6];
        sub_10002CDC0(v0 + 2, v60);
        v62 = *(v61 + 40);
        v122 = (v62 + *v62);
        v63 = v62[1];
        v64 = swift_task_alloc();
        v0[75] = v64;
        *v64 = v0;
        v64[1] = sub_100399C68;
        v65 = v0[46];

        return v122(v65, v60, v61);
      }

      else
      {
        v100 = v0[46];
        v101 = v0[36];
        v102 = *(v0[27] + 24);
        SFAirDropReceive.Transfer.askRequest.getter();
        v103 = swift_task_alloc();
        v0[76] = v103;
        *v103 = v0;
        v103[1] = sub_100399E2C;
        v104 = v0[36];

        return sub_10047D484(v104);
      }
    }

    else
    {

      v67 = v0[61];
      v69 = v0[57];
      v68 = v0[58];
      v71 = v0[55];
      v70 = v0[56];
      v72 = v0[53];
      v73 = v0[54];
      v74 = v0[52];
      v76 = v0[48];
      v75 = v0[49];
      v112 = v0[47];
      v114 = v0[46];
      v116 = v0[42];
      v117 = v0[39];
      v118 = v0[36];
      v119 = v0[33];
      v121 = v0[32];
      v123 = v0[28];

      v77 = v0[1];

      return v77();
    }
  }

  else
  {
    v120 = v4;
    v110 = *(v3 + 32);
    v110(v0[49], v1, v2);
    if (qword_100973788 != -1)
    {
      swift_once();
    }

    v23 = v0[54];
    v24 = v0[50];
    v25 = v0[51];
    v26 = v0[48];
    v27 = v0[49];
    v28 = v0[43];
    v29 = v0[44];
    v30 = v0[26];
    v31 = type metadata accessor for Logger();
    sub_10000C4AC(v31, qword_10097ABF8);
    v115 = *(v25 + 16);
    v115(v23, v30, v24);
    v113 = *(v29 + 16);
    v113(v26, v27, v28);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = v0[54];
    v36 = v0[50];
    v37 = v0[51];
    v38 = v0[48];
    v40 = v0[43];
    v39 = v0[44];
    if (v34)
    {
      v108 = v0[41];
      v106 = v0[42];
      v107 = v0[40];
      v109 = v33;
      v41 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      *v41 = 136315394;
      sub_10039C658(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v105 = v40;
      v44 = v43;
      v111 = *(v37 + 8);
      v111(v35, v36);
      v45 = sub_10000C4E4(v42, v44, &v124);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2080;
      SFAirDropReceive.Transfer.state.getter();
      sub_10039C658(&unk_1009892B0, &type metadata accessor for SFAirDropReceive.Transfer.State);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      (*(v108 + 8))(v106, v107);
      v49 = *(v39 + 8);
      v49(v38, v105);
      v50 = sub_10000C4E4(v46, v48, &v124);

      *(v41 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v32, v109, "SDAirDropReceiveService.transfers UPDATE {id: %s, state: %s}", v41, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v49 = *(v39 + 8);
      v49(v38, v40);
      v111 = *(v37 + 8);
      v111(v35, v36);
    }

    v0[68] = v49;
    v78 = v0[57];
    v79 = v0[49];
    v81 = v0[43];
    v80 = v0[44];
    v82 = *(v0[27] + 48);
    v115(v0[53], v0[26], v0[50]);
    v113(v78, v79, v81);
    (*(v80 + 56))(v78, 0, 1, v81);
    v83 = CurrentValueSubject.value.modify();
    v85 = v84;
    if (v120(v78, 1, v81) == 1)
    {
      v86 = v0[56];
      v87 = v0[53];
      v88 = v0[50];
      v89 = v0[51] + 8;
      sub_100005508(v0[57], &unk_1009762C0, &unk_1007F9430);
      sub_1002D2F14(v87, v86);
      v111(v87, v88);
      sub_100005508(v86, &unk_1009762C0, &unk_1007F9430);
    }

    else
    {
      v90 = v0[53];
      v91 = v0[50];
      v92 = v0[47];
      v93 = v0[51] + 8;
      v110(v92, v0[57], v0[43]);
      v94 = *v85;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v124 = *v85;
      *v85 = 0x8000000000000000;
      sub_100579950(v92, v90, isUniquelyReferenced_nonNull_native);
      v111(v90, v91);
      *v85 = v124;
    }

    v96 = v0[27];
    v83();
    v97 = *(v96 + 32);
    v98 = swift_task_alloc();
    v0[69] = v98;
    *v98 = v0;
    v98[1] = sub_100399518;
    v99 = v0[49];

    return sub_100362C20(v99);
  }
}

uint64_t sub_10039948C()
{
  *(v0 + 184) = *(v0 + 520);
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_100399518()
{
  v1 = *(*v0 + 552);
  v2 = *(*v0 + 496);
  v4 = *v0;

  return _swift_task_switch(sub_100399628, v2, 0);
}

uint64_t sub_100399628()
{
  v1 = v0[27];
  if (*(v1 + 136))
  {
    sub_1002A9938(v1 + 112, (v0 + 7));
    v2 = v0[10];
    v3 = v0[11];
    sub_10002CDC0(v0 + 7, v2);
    v4 = *(v3 + 32);
    v12 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[70] = v6;
    *v6 = v0;
    v6[1] = sub_1003997E0;
    v7 = v0[49];

    return v12(v7, v2, v3);
  }

  else
  {
    v9 = *(v1 + 24);
    v10 = swift_task_alloc();
    v0[71] = v10;
    *v10 = v0;
    v10[1] = sub_100399994;
    v11 = v0[49];

    return sub_10047CDB4(v11);
  }
}

uint64_t sub_1003997E0()
{
  v1 = *(*v0 + 560);
  v2 = *(*v0 + 496);
  v4 = *v0;

  return _swift_task_switch(sub_1003998F0, v2, 0);
}

uint64_t sub_1003998F0()
{
  sub_10000C60C(v0 + 7);
  v1 = *(v0[27] + 24);
  v2 = swift_task_alloc();
  v0[71] = v2;
  *v2 = v0;
  v2[1] = sub_100399994;
  v3 = v0[49];

  return sub_10047CDB4(v3);
}

uint64_t sub_100399994()
{
  v1 = *(*v0 + 568);
  v2 = *(*v0 + 496);
  v4 = *v0;

  return _swift_task_switch(sub_100399AA4, v2, 0);
}

uint64_t sub_100399AA4()
{
  v1 = v0[49];
  v20 = v0[43];
  v21 = v0[68];
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[39];
  v5 = v0[38];
  v17 = v0[37];
  v18 = v0[40];
  v6 = v0[27];
  v19 = v0[44] + 8;
  v7 = v6[12];
  v8 = v6[13];
  sub_10002CDC0(v6 + 9, v7);
  SFAirDropReceive.Transfer.state.getter();
  SFAirDropReceive.Transfer.displayPriority.getter();
  (*(v8 + 56))(v2, v4, v7, v8);
  (*(v5 + 8))(v4, v17);
  (*(v3 + 8))(v2, v18);
  v9 = v6[19];
  sub_10055D668(v1);
  v21(v1, v20);
  v10 = sub_100011630(&qword_10097AD10, &qword_10097AD08, &unk_1007FDF48);
  v11 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v12 = swift_task_alloc();
  v0[64] = v12;
  *v12 = v0;
  v12[1] = sub_1003987F0;
  v13 = v0[61];
  v14 = v0[58];
  v15 = v0[59];

  return dispatch thunk of AsyncIteratorProtocol.next()(v14, v15, v10);
}

uint64_t sub_100399C68()
{
  v1 = *(*v0 + 600);
  v2 = *(*v0 + 496);
  v4 = *v0;

  return _swift_task_switch(sub_100399D78, v2, 0);
}

uint64_t sub_100399D78()
{
  sub_10000C60C(v0 + 2);
  v1 = v0[46];
  v2 = v0[36];
  v3 = *(v0[27] + 24);
  SFAirDropReceive.Transfer.askRequest.getter();
  v4 = swift_task_alloc();
  v0[76] = v4;
  *v4 = v0;
  v4[1] = sub_100399E2C;
  v5 = v0[36];

  return sub_10047D484(v5);
}

uint64_t sub_100399E2C()
{
  v1 = *(*v0 + 608);
  v2 = *(*v0 + 496);
  v3 = *(*v0 + 288);
  v4 = *(*v0 + 280);
  v5 = *(*v0 + 272);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_100399F98, v2, 0);
}

uint64_t sub_100399F98()
{
  v28 = v0[74];
  v27 = v0[73];
  v45 = v0[72];
  v39 = v0[66];
  v41 = v0[67];
  v43 = v0[56];
  v35 = v0[52];
  v37 = v0[50];
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[44];
  v4 = v0[43];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[30];
  v29 = v0[45];
  v30 = v0[31];
  v8 = v0[28];
  v26 = v0[29];
  v31 = v5;
  v32 = v0[26];
  v33 = v2;
  SFAirDropReceive.Transfer.receiveID.getter();
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v27(v1, v2, v4);
  (*(v7 + 16))(v6, v5, v26);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = (v29 + *(v7 + 80) + v10) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v3 + 32))(v12 + v10, v1, v4);
  (*(v7 + 32))(v12 + v11, v6, v26);
  static Task<>.noThrow(priority:operation:)();

  sub_100005508(v8, &qword_100976160, &qword_1007F8770);
  (*(v7 + 8))(v31, v26);
  v39(v35, v32, v37);
  (*(v3 + 56))(v43, 1, 1, v4);
  v13 = CurrentValueSubject.value.modify();
  sub_1002B059C(v43, v35);
  v13(v0 + 12, 0);
  (*(v3 + 8))(v33, v4);
  v14 = v0[61];
  v16 = v0[57];
  v15 = v0[58];
  v18 = v0[55];
  v17 = v0[56];
  v19 = v0[53];
  v20 = v0[54];
  v21 = v0[52];
  v23 = v0[48];
  v22 = v0[49];
  v34 = v0[47];
  v36 = v0[46];
  v38 = v0[42];
  v40 = v0[39];
  v42 = v0[36];
  v44 = v0[33];
  v46 = v0[32];
  v47 = v0[28];

  v24 = v0[1];

  return v24();
}

uint64_t sub_10039A350()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  sub_1002A6694(v0 + 56);
  sub_10000C60C((v0 + 72));
  sub_100005508(v0 + 112, &qword_10097AD60, &qword_1007FDFD0);
  v4 = *(v0 + 152);

  v5 = *(v0 + 160);

  return v0;
}

uint64_t sub_10039A3D0()
{
  sub_10039A350();

  return swift_deallocClassInstance();
}

uint64_t sub_10039A428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_10028088C(&qword_100974CE0, &qword_1007F8240) + 48);
  v5 = *(sub_10028088C(&qword_1009746D8, &qword_1007F65B8) + 48);
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = type metadata accessor for SFNWInterfaceType();
  v8 = *(*(v7 - 8) + 16);

  return v8(a2 + v5, a1 + v4, v7);
}

uint64_t sub_10039A508(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_10039A668(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_10039AABC(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_10039A668(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v39 = a2;
  v40 = a1;
  v55 = sub_10028088C(&qword_100974CE0, &qword_1007F8240);
  v4 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v54 = &v38 - v5;
  v52 = type metadata accessor for SFNWInterfaceType();
  v6 = *(v52 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v52);
  v51 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v62 = &v38 - v10;
  v61 = type metadata accessor for UUID();
  v11 = *(*(v61 - 8) + 64);
  result = __chkstk_darwin(v61);
  v59 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v56 = a3;
  v16 = *(a3 + 64);
  v43 = a3 + 64;
  v17 = 1 << *(a3 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v41 = 0;
  v42 = (v17 + 63) >> 6;
  v49 = v6 + 16;
  v50 = v13 + 16;
  v48 = enum case for SFNWInterfaceType.cellular(_:);
  v53 = v6;
  v46 = v6 + 8;
  v47 = v6 + 104;
  v60 = v13;
  v45 = v13 + 8;
  v20 = v6;
  while (v19)
  {
    v21 = __clz(__rbit64(v19));
    v58 = (v19 - 1) & v19;
LABEL_11:
    v24 = v21 | (v15 << 6);
    v25 = v56;
    v26 = v59;
    v27 = *(v60 + 16);
    v27(v59, v56[6] + *(v60 + 72) * v24, v61);
    v28 = v25[7];
    v29 = *(v20 + 72);
    v44 = v24;
    v57 = *(v20 + 16);
    v30 = v62;
    v31 = v52;
    v57(v62, v28 + v29 * v24, v52);
    v32 = v54;
    v33 = v26;
    v34 = v61;
    v27(v54, v33, v61);
    v57((v32 + *(v55 + 48)), v30, v31);
    v35 = v51;
    (*(v20 + 104))(v51, v48, v31);
    LOBYTE(v27) = static SFNWInterfaceType.== infix(_:_:)();
    v36 = *(v20 + 8);
    v36(v35, v31);
    sub_100005508(v32, &qword_100974CE0, &qword_1007F8240);
    v36(v62, v31);
    result = (*(v60 + 8))(v59, v34);
    v19 = v58;
    if (v27)
    {
      *(v40 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
      if (__OFADD__(v41++, 1))
      {
        __break(1u);
        return sub_1006203D0(v40, v39, v41, v56);
      }
    }
  }

  v22 = v15;
  while (1)
  {
    v15 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v15 >= v42)
    {
      return sub_1006203D0(v40, v39, v41, v56);
    }

    v23 = *(v43 + 8 * v15);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v58 = (v23 - 1) & v23;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_10039AABC(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_10039A668(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_10039AB34(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = type metadata accessor for SFAirDropReceive.AskRequest();
  v3[17] = v4;
  v5 = *(v4 - 8);
  v3[18] = v5;
  v6 = *(v5 + 64) + 15;
  v3[19] = swift_task_alloc();
  v7 = sub_10028088C(&qword_10097AD00, &qword_1007FDF30);
  v3[20] = v7;
  v8 = *(v7 - 8);
  v3[21] = v8;
  v3[22] = *(v8 + 64);
  v3[23] = swift_task_alloc();
  v9 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v10 = *(*(sub_10028088C(&unk_1009762C0, &unk_1007F9430) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v11 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v3[26] = v11;
  v12 = *(v11 - 8);
  v3[27] = v12;
  v3[28] = *(v12 + 64);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v13 = type metadata accessor for SFAirDropReceive.Transfer();
  v3[31] = v13;
  v14 = *(v13 - 8);
  v3[32] = v14;
  v15 = *(v14 + 64) + 15;
  v3[33] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v16 = static AirDropActor.shared;
  v3[34] = static AirDropActor.shared;

  return _swift_task_switch(sub_10039ADE0, v16, 0);
}

uint64_t sub_10039ADE0()
{
  v33 = v0;
  if (qword_100973788 != -1)
  {
    swift_once();
  }

  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v4 = v0[14];
  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_10097ABF8);
  v6 = *(v2 + 16);
  v0[35] = v6;
  v0[36] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[32];
  v10 = v0[33];
  v12 = v0[31];
  if (v9)
  {
    v13 = v0[30];
    v28 = v0[31];
    v15 = v0[26];
    v14 = v0[27];
    v16 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = v30;
    *v16 = 136315138;
    v29 = v8;
    SFAirDropReceive.Transfer.id.getter();
    sub_10039C658(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v14 + 8))(v13, v15);
    (*(v11 + 8))(v10, v28);
    v20 = sub_10000C4E4(v17, v19, &v32);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v7, v29, "SDAirDropReceiveService.transfers ADD {id: %s}", v16, 0xCu);
    sub_10000C60C(v30);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v21 = v0[16];
  v22 = v21[12];
  v23 = v21[13];
  sub_10002CDC0(v21 + 9, v22);
  v24 = *(v23 + 40);
  v31 = (v24 + *v24);
  v25 = v24[1];
  v26 = swift_task_alloc();
  v0[37] = v26;
  *v26 = v0;
  v26[1] = sub_10039B124;

  return v31(v22, v23);
}

uint64_t sub_10039B124()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[33];
    v7 = v2[29];
    v6 = v2[30];
    v9 = v2[24];
    v8 = v2[25];
    v10 = v2[23];
    v11 = v2[19];

    v12 = *(v4 + 8);

    return v12(0);
  }

  else
  {
    v14 = v2[34];

    return _swift_task_switch(sub_10039B2C4, v14, 0);
  }
}

uint64_t sub_10039B2C4()
{
  v1 = v0[16];
  swift_beginAccess();
  if (*(v1 + 136))
  {
    v2 = v0[30];
    v3 = v0[14];
    sub_1002A9938(v1 + 112, (v0 + 2));
    v4 = v0[5];
    v5 = v0[6];
    sub_10002CDC0(v0 + 2, v4);
    SFAirDropReceive.Transfer.id.getter();
    v6 = *(v5 + 48);
    v39 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    v0[38] = v8;
    *v8 = v0;
    v8[1] = sub_10039B758;
    v9 = v0[30];

    return v39(v9, v4, v5);
  }

  else
  {
    v26 = v0[35];
    v27 = v0[36];
    v12 = v0[31];
    v11 = v0[32];
    v13 = v0[30];
    v36 = v0[28];
    v32 = v0[27];
    v14 = v0[25];
    v33 = v0[26];
    v34 = v0[29];
    v40 = v0[24];
    v15 = v0[21];
    v35 = v0[22];
    v29 = v0[20];
    v30 = v0[23];
    v38 = v0[19];
    v37 = v0[16];
    v28 = v0[15];
    v16 = v0[14];
    v17 = *(v37 + 48);
    SFAirDropReceive.Transfer.id.getter();
    v26(v14, v16, v12);
    (*(v11 + 56))(v14, 0, 1, v12);
    v18 = CurrentValueSubject.value.modify();
    sub_1002B059C(v14, v13);
    v18(v0 + 7, 0);
    v31 = v13;
    SFAirDropReceive.Transfer.id.getter();
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v40, 1, 1, v19);
    (*(v15 + 16))(v30, v28, v29);
    (*(v32 + 16))(v34, v13, v33);
    v20 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v21 = (v35 + *(v32 + 80) + v20) & ~*(v32 + 80);
    v22 = swift_allocObject();
    (*(v15 + 32))(v22 + v20, v30, v29);
    (*(v32 + 32))(v22 + v21, v34, v33);
    *(v22 + ((v36 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v37;

    static Task<>.noThrow(priority:operation:)();

    sub_100005508(v40, &qword_100976160, &qword_1007F8770);
    (*(v32 + 8))(v31, v33);
    v23 = *(v37 + 24);
    SFAirDropReceive.Transfer.askRequest.getter();
    v24 = swift_task_alloc();
    v0[39] = v24;
    *v24 = v0;
    v24[1] = sub_10039BC14;
    v25 = v0[19];

    return sub_10047DA70(v25);
  }
}

uint64_t sub_10039B758()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 240);
  v4 = *(*v0 + 216);
  v5 = *(*v0 + 208);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_10039B8C4, v2, 0);
}

uint64_t sub_10039B8C4()
{
  sub_10000C60C(v0 + 2);
  v17 = v0[35];
  v18 = v0[36];
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v27 = v0[28];
  v23 = v0[27];
  v4 = v0[25];
  v24 = v0[26];
  v25 = v0[29];
  v30 = v0[24];
  v5 = v0[21];
  v26 = v0[22];
  v20 = v0[20];
  v21 = v0[23];
  v29 = v0[19];
  v28 = v0[16];
  v19 = v0[15];
  v6 = v0[14];
  v7 = *(v28 + 48);
  SFAirDropReceive.Transfer.id.getter();
  v17(v4, v6, v2);
  (*(v1 + 56))(v4, 0, 1, v2);
  v8 = CurrentValueSubject.value.modify();
  sub_1002B059C(v4, v3);
  v8(v0 + 7, 0);
  v22 = v3;
  SFAirDropReceive.Transfer.id.getter();
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v30, 1, 1, v9);
  (*(v5 + 16))(v21, v19, v20);
  (*(v23 + 16))(v25, v3, v24);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = (v26 + *(v23 + 80) + v10) & ~*(v23 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v10, v21, v20);
  (*(v23 + 32))(v12 + v11, v25, v24);
  *(v12 + ((v27 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;

  static Task<>.noThrow(priority:operation:)();

  sub_100005508(v30, &qword_100976160, &qword_1007F8770);
  (*(v23 + 8))(v22, v24);
  v13 = *(v28 + 24);
  SFAirDropReceive.Transfer.askRequest.getter();
  v14 = swift_task_alloc();
  v0[39] = v14;
  *v14 = v0;
  v14[1] = sub_10039BC14;
  v15 = v0[19];

  return sub_10047DA70(v15);
}

uint64_t sub_10039BC14()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 264);
  v3 = *(*v0 + 240);
  v4 = *(*v0 + 232);
  v5 = *(*v0 + 200);
  v6 = *(*v0 + 192);
  v7 = *(*v0 + 184);
  v8 = *(*v0 + 152);
  v9 = *(*v0 + 144);
  v10 = *(*v0 + 136);
  v13 = *v0;

  (*(v9 + 8))(v8, v10);

  v11 = *(v13 + 8);

  return v11(1);
}

uint64_t sub_10039BE34(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10028088C(&qword_10097AD00, &qword_1007FDF30) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for SFAirDrop.TransferIdentifier() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100005C04;

  return sub_100398280(a1, v1 + v6, v1 + v9, v10);
}

uint64_t sub_10039BFB4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SFAirDropReceive.Transfer() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100005C00;

  return sub_1003D4704(a1, v1 + v6, v1 + v9);
}

uint64_t sub_10039C0F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_100397B5C(a1, v4, v5, v6);
}

uint64_t sub_10039C1A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v72 = a5;
  v9 = type metadata accessor for SFNWInterfaceType();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v59 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v64 = v54 - v14;
  v63 = type metadata accessor for UUID();
  v15 = *(v63 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v63);
  v18 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10028088C(&qword_10097AD58, &unk_1007FDFC0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = v54 - v21;
  v23 = -1 << *(a1 + 32);
  v24 = ~v23;
  v25 = *(a1 + 64);
  v26 = -v23;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  else
  {
    v27 = -1;
  }

  v65 = a1;
  v66 = a1 + 64;
  v67 = v24;
  v68 = 0;
  v61 = (v10 + 32);
  v62 = (v15 + 32);
  v69 = v27 & v25;
  v70 = a2;
  v71 = a3;
  v56 = v10 + 8;
  v57 = v10 + 16;
  v58 = v15;
  v60 = v10;
  v54[3] = v10 + 40;
  v55 = (v15 + 8);

  v54[1] = a3;

  while (1)
  {
    sub_100286FFC(v22);
    v31 = sub_10028088C(&qword_1009746D8, &qword_1007F65B8);
    if ((*(*(v31 - 8) + 48))(v22, 1, v31) == 1)
    {
      sub_100027D64();
    }

    v32 = a4;
    v33 = *(v31 + 48);
    v34 = *v62;
    (*v62)(v18, v22, v63);
    v35 = *v61;
    v36 = v9;
    (*v61)(v64, &v22[v33], v9);
    v37 = *v72;
    v39 = sub_10000EBD4(v18);
    v40 = *(v37 + 16);
    v41 = (v38 & 1) == 0;
    v42 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      break;
    }

    v43 = v38;
    if (*(v37 + 24) >= v42)
    {
      if ((v32 & 1) == 0)
      {
        sub_1002CFC48();
      }
    }

    else
    {
      v44 = v72;
      sub_100574574(v42, v32 & 1);
      v45 = *v44;
      v46 = sub_10000EBD4(v18);
      if ((v43 & 1) != (v47 & 1))
      {
        goto LABEL_19;
      }

      v39 = v46;
    }

    v48 = *v72;
    if (v43)
    {
      v29 = v59;
      v28 = v60;
      v30 = *(v60 + 72) * v39;
      v9 = v36;
      (*(v60 + 16))(v59, v48[7] + v30, v36);
      (*(v28 + 8))(v64, v36);
      (*v55)(v18, v63);
      (*(v28 + 40))(v48[7] + v30, v29, v36);
      a4 = 1;
    }

    else
    {
      v48[(v39 >> 6) + 8] |= 1 << v39;
      v34((v48[6] + *(v58 + 72) * v39), v18, v63);
      v49 = v48[7] + *(v60 + 72) * v39;
      v9 = v36;
      v35(v49, v64, v36);
      v50 = v48[2];
      v51 = __OFADD__(v50, 1);
      v52 = v50 + 1;
      if (v51)
      {
        goto LABEL_18;
      }

      v48[2] = v52;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10039C658(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10039C6BC()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097AD70);
  v1 = sub_10000C4AC(v0, qword_10097AD70);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_10039C784()
{
  v1 = 0x2072756F6A6E6F42;
  if (*v0 != 1)
  {
    v1 = 0x656946207261654ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

unint64_t sub_10039C7F8()
{
  result = qword_10097AD88;
  if (!qword_10097AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097AD88);
  }

  return result;
}

uint64_t sub_10039C864(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for NWListener.State();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v3 + *a3))
  {
    return 0;
  }

  NWListener.state.getter();

  v10 = (*(v6 + 88))(v9, v5);
  if (v10 != enum case for NWListener.State.failed(_:) && v10 == enum case for NWListener.State.cancelled(_:))
  {
    return 1;
  }

  v12 = v10 == enum case for NWListener.State.failed(_:);
  (*(v6 + 8))(v9, v5);
  return v12;
}

void sub_10039C9A8()
{
  v1 = v0;
  if (qword_100973798 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097AD90);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315138;
    v9 = sub_10039CD88(v6, v7, v8, *(v1 + 56));
    v11 = sub_10000C4E4(v9, v10, &v20);

    *(v5 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "SDAirDropReceiveStateMachineAdaptor start {pipeline: %s}", v5, 0xCu);
    sub_10000C60C(v6);
  }

  v12 = *(v1 + 40);
  v14 = *(v1 + 48);
  v13 = *(v1 + 56);
  if (v13 < 0)
  {
    v17 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
    swift_unknownObjectWeakLoadStrong();
    v12[3] = *(v1 + 24);
    swift_unknownObjectWeakAssign();

    v19 = v14;
    v18 = v17;
    swift_unknownObjectRelease();
    sub_1003590E8();
    [v19 activate];
  }

  else
  {
    v15 = *(v1 + 32);
    v16 = v12;
    v19 = v14;
    [v19 activate];
    [v15 start];
    [v16 activate];
  }
}

void sub_10039CBE4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  if (v3 < 0)
  {
    v6 = (v3 & 0x7FFFFFFFFFFFFFFFLL);

    v5 = v2;
    v7 = v6;
    [v5 invalidate];
    sub_1002D8D00();
  }

  else
  {
    v4 = *(v0 + 32);
    v5 = v1;
    v7 = v2;
    [v5 invalidate];
    [v4 stop];
    [v7 invalidate];
  }
}

uint64_t sub_10039CCC0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097AD90);
  v1 = sub_10000C4AC(v0, qword_10097AD90);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10039CF50()
{
  sub_10004C60C(v0 + 16);
  sub_10039D0F8(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_10039CFC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 32))
  {
    return (*a1 + 127);
  }

  v3 = (((*(a1 + 24) >> 57) >> 6) | (2 * ((*(a1 + 24) >> 57) & 0x38 | *(a1 + 24) & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10039D020(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_10039D0AC()
{
  result = qword_100974730;
  if (!qword_100974730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100974730);
  }

  return result;
}

void sub_10039D0F8(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 < 0)
  {
    v5 = a4 & 0x7FFFFFFFFFFFFFFFLL;

    a2 = a3;
    a3 = v5;
  }

  else
  {
  }
}

uint64_t sub_10039D160()
{
  v1 = v0[15];

  v2 = v0[17];

  v3 = v0[19];

  sub_10039D590(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication16IndividualVolume_dependencies);
  v4 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication16IndividualVolume_relockTask);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10039D1F0()
{
  result = _s18VolumeDependenciesVMa(319);
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

unint64_t sub_10039D318()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = sub_10039D3CC();
    if (v2 <= 0x3F)
    {
      result = sub_10039D430();
      if (v3 <= 0x3F)
      {
        result = _s22VolumeUnlockLocalCacheCMa();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_10039D3CC()
{
  result = qword_10097B090;
  if (!qword_10097B090)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10097B090);
  }

  return result;
}

unint64_t sub_10039D430()
{
  result = qword_10097B098;
  if (!qword_10097B098)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10097B098);
  }

  return result;
}

unint64_t sub_10039D484()
{
  result = qword_10097B0D8;
  if (!qword_10097B0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097B0D8);
  }

  return result;
}

uint64_t sub_10039D4E4(void *a1, void *a2)
{
  v4 = a1[14] == a2[14] && a1[15] == a2[15];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[16] == a2[16] && a1[17] == a2[17];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (a1[18] == a2[18] && a1[19] == a2[19])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10039D590(uint64_t a1)
{
  v2 = _s18VolumeDependenciesVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10039D5EC()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097B0E0);
  v1 = sub_10000C4AC(v0, qword_10097B0E0);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10039D70C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SDAirDropiOSNotificationManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10039D774(uint64_t a1, uint64_t a2)
{
  *(*v2 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAirDropiOSNotificationManager_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_10039D7C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100005C04;

  return sub_10039EC30(a1);
}

uint64_t sub_10039D86C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_10028088C(&qword_100974F18, &qword_1007F8330);
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v10 = sub_10028088C(&qword_100974EB0, &qword_1007FE410);
  v3[14] = v10;
  v11 = *(v10 - 8);
  v3[15] = v11;
  v12 = *(v11 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v13 = sub_10028088C(&qword_100975358, &unk_1007F8590);
  v3[18] = v13;
  v14 = *(v13 - 8);
  v3[19] = v14;
  v15 = *(v14 + 64) + 15;
  v3[20] = swift_task_alloc();
  v16 = type metadata accessor for SFAirDrop.DeclineAction();
  v3[21] = v16;
  v17 = *(v16 - 8);
  v3[22] = v17;
  v18 = *(v17 + 64) + 15;
  v3[23] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v19 = static AirDropActor.shared;
  v3[24] = static AirDropActor.shared;

  return _swift_task_switch(sub_10039DB30, v19, 0);
}

uint64_t sub_10039DB30()
{
  v95 = v0;
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[4];
  sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
  SFAirDrop.PermissionRequest.style.getter();
  if ((*(v2 + 88))(v1, v3) != enum case for SFAirDrop.PermissionRequest.Style.alert<A>(_:))
  {
    (*(v0[19] + 8))(v0[20], v0[18]);
    v16 = v0[23];
    v17 = v0[20];
    v19 = v0[16];
    v18 = v0[17];
    v21 = v0[12];
    v20 = v0[13];
    v23 = v0[10];
    v22 = v0[11];
    v24 = v0[7];

    v25 = v0[1];

    return v25();
  }

  v6 = v0[22];
  v5 = v0[23];
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[3];
  (*(v0[19] + 96))(v8, v0[18]);
  v10 = *(v8 + 1);

  v11 = *(v8 + 3);

  v12 = *(v8 + 4);
  v13 = sub_10028088C(&qword_100975360, &unk_100801D40);
  (*(v6 + 32))(v5, &v8[*(v13 + 80)], v7);
  v14 = SFAirDrop.DeclineAction.id.getter();
  v88 = v9;
  if (v9)
  {
    if (v14 == v0[2] && v0[3] == v15)
    {

LABEL_11:

      v28 = async function pointer to SFAirDrop.DeclineAction.decline()[1];
      v29 = swift_task_alloc();
      v0[25] = v29;
      *v29 = v0;
      v30 = sub_10039E370;
LABEL_43:
      v29[1] = v30;
      v73 = v0[23];

      return SFAirDrop.DeclineAction.decline()();
    }

    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v27)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v31 = *(v12 + 16);
  if (v31)
  {
    v32 = v0[15];
    v35 = *(v32 + 16);
    v33 = v32 + 16;
    v34 = v35;
    v36 = v12 + ((*(v33 + 64) + 32) & ~*(v33 + 64));
    v37 = *(v33 + 56);
    v91 = (v33 + 72);
    v92 = (v33 + 16);
    v90 = enum case for SFAirDrop.AcceptAction.single<A>(_:);
    v83 = (v33 + 80);
    v84 = (v33 - 8);
    v87 = v0[9];
    v89 = (v87 + 32);
    v38 = _swiftEmptyArrayStorage;
    v85 = v37;
    v86 = v35;
    do
    {
      v40 = v0[16];
      v39 = v0[17];
      v41 = v0[14];
      v34(v39, v36, v41);
      (*v92)(v40, v39, v41);
      v42 = (*v91)(v40, v41);
      v43 = v0[16];
      v44 = v0[14];
      if (v42 == v90)
      {
        v45 = v33;
        v46 = v0[11];
        v47 = v0[8];
        (*v83)(v0[16], v44);
        v48 = *(sub_10028088C(&qword_10097B140, &qword_1007FE418) + 48);
        v49 = *v89;
        (*v89)(v46, v43, v47);
        v50 = type metadata accessor for UUID();
        (*(*(v50 - 8) + 8))(v43 + v48, v50);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_10028EC78(0, v38[2] + 1, 1, v38);
        }

        v52 = v38[2];
        v51 = v38[3];
        v33 = v45;
        if (v52 >= v51 >> 1)
        {
          v38 = sub_10028EC78(v51 > 1, v52 + 1, 1, v38);
        }

        v34 = v86;
        v53 = v0[11];
        v54 = v0[8];
        v38[2] = v52 + 1;
        v49(v38 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v52, v53, v54);
        v37 = v85;
      }

      else
      {
        (*v84)(v0[16], v44);
      }

      v36 += v37;
      --v31;
    }

    while (v31);

    v55 = v38[2];
    if (!v55)
    {
      goto LABEL_36;
    }
  }

  else
  {

    v38 = _swiftEmptyArrayStorage;
    v55 = _swiftEmptyArrayStorage[2];
    if (!v55)
    {
LABEL_36:

      if (qword_1009737A0 != -1)
      {
LABEL_51:
        swift_once();
      }

      v63 = v0[3];
      v64 = type metadata accessor for Logger();
      sub_10000C4AC(v64, qword_10097B0E0);

      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = v0[2];
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v94 = v69;
        *v68 = 136315138;
        if (v88)
        {
          v70 = v63;
        }

        else
        {
          v67 = 0xD000000000000015;
          v70 = 0x8000000100789F30;
        }

        v71 = sub_10000C4E4(v67, v70, &v94);

        *(v68 + 4) = v71;
        _os_log_impl(&_mh_execute_header, v65, v66, "Chosen action from alert (%s) did not match any actions in permission request. Canceling AirDrop", v68, 0xCu);
        sub_10000C60C(v69);
      }

      v72 = async function pointer to SFAirDrop.DeclineAction.decline()[1];
      v29 = swift_task_alloc();
      v0[29] = v29;
      *v29 = v0;
      v30 = sub_10039E814;
      goto LABEL_43;
    }
  }

  v56 = 0;
  v57 = v0[9];
  v93 = v0[3];
  v58 = v38 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
  while (1)
  {
    if (v56 >= v38[2])
    {
      __break(1u);
      goto LABEL_51;
    }

    (*(v57 + 16))(v0[10], &v58[*(v57 + 72) * v56], v0[8]);
    v59 = SFAirDrop.AcceptAction.Single.id.getter();
    if (!v88)
    {

      goto LABEL_27;
    }

    if (v59 == v0[2] && v0[3] == v60)
    {
      break;
    }

    v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v62)
    {
      goto LABEL_47;
    }

LABEL_27:
    ++v56;
    (*(v57 + 8))(v0[10], v0[8]);
    if (v55 == v56)
    {
      goto LABEL_36;
    }
  }

LABEL_47:

  v74 = v0[12];
  v75 = v0[13];
  v76 = v0[8];
  v77 = *(v0[9] + 32);
  v77(v74, v0[10], v76);
  v77(v75, v74, v76);
  SFAirDrop.AcceptAction.Single.defaultAnswer.getter();
  v78 = async function pointer to SFAirDrop.AcceptAction.Single.accept(with:)[1];
  v79 = swift_task_alloc();
  v0[27] = v79;
  *v79 = v0;
  v79[1] = sub_10039E584;
  v80 = v0[13];
  v82 = v0[7];
  v81 = v0[8];

  return SFAirDrop.AcceptAction.Single.accept(with:)(v82, v81);
}

uint64_t sub_10039E370()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 192);
  if (v0)
  {
    v6 = sub_10039E940;
  }

  else
  {
    v6 = sub_10039E49C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10039E49C()
{
  (*(v0[22] + 8))(v0[23], v0[21]);
  v1 = v0[23];
  v2 = v0[20];
  v4 = v0[16];
  v3 = v0[17];
  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[7];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10039E584()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 224) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 192);
  if (v0)
  {
    v9 = sub_10039EA30;
  }

  else
  {
    v9 = sub_10039E70C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10039E70C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  (*(v0[9] + 8))(v0[13], v0[8]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[23];
  v5 = v0[20];
  v7 = v0[16];
  v6 = v0[17];
  v9 = v0[12];
  v8 = v0[13];
  v11 = v0[10];
  v10 = v0[11];
  v12 = v0[7];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10039E814()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 192);
  if (v0)
  {
    v6 = sub_10039EB40;
  }

  else
  {
    v6 = sub_10039E49C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10039E940()
{
  (*(v0[22] + 8))(v0[23], v0[21]);
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[20];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[12];
  v6 = v0[13];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10039EA30()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  (*(v0[9] + 8))(v0[13], v0[8]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[28];
  v5 = v0[23];
  v6 = v0[20];
  v8 = v0[16];
  v7 = v0[17];
  v10 = v0[12];
  v9 = v0[13];
  v12 = v0[10];
  v11 = v0[11];
  v13 = v0[7];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10039EB40()
{
  (*(v0[22] + 8))(v0[23], v0[21]);
  v1 = v0[30];
  v2 = v0[23];
  v3 = v0[20];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[12];
  v6 = v0[13];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10039EC30(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for SFInterventionResponse();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_10028088C(&qword_10097B128, &unk_1007FE3D8);
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = type metadata accessor for SFInterventionWorkflow();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v11 = sub_10028088C(&qword_100975358, &unk_1007F8590);
  v1[12] = v11;
  v12 = *(v11 - 8);
  v1[13] = v12;
  v13 = *(v12 + 64) + 15;
  v1[14] = swift_task_alloc();
  v14 = *(*(sub_10028088C(&qword_10097B130, &qword_1007FE3E8) - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v15 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v1[16] = v15;
  v16 = *(v15 - 8);
  v1[17] = v16;
  v17 = *(v16 + 64) + 15;
  v1[18] = swift_task_alloc();
  v18 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
  v1[19] = v18;
  v19 = *(v18 - 8);
  v1[20] = v19;
  v20 = *(v19 + 64) + 15;
  v1[21] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v21 = static AirDropActor.shared;
  v1[22] = static AirDropActor.shared;

  return _swift_task_switch(sub_10039EF54, v21, 0);
}

uint64_t sub_10039EF54()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = *(v0 + 16);
  SFAirDropReceive.Transfer.state.getter();
  SFAirDropReceive.Transfer.State.permissionRequest.getter();
  (*(v4 + 8))(v3, v5);
  if ((*(v2 + 48))(v6, 1, v1) == 1)
  {
    sub_100005508(*(v0 + 120), &qword_10097B130, &qword_1007FE3E8);
LABEL_5:
    v8 = *(v0 + 168);
    v9 = *(v0 + 144);
    v11 = *(v0 + 112);
    v10 = *(v0 + 120);
    v12 = *(v0 + 88);
    v13 = *(v0 + 64);
    v14 = *(v0 + 40);

    v15 = *(v0 + 8);

    return v15();
  }

  (*(*(v0 + 160) + 32))(*(v0 + 168), *(v0 + 120), *(v0 + 152));
  if (SFAirDrop.PermissionRequest.isAnswered.getter())
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    goto LABEL_5;
  }

  v17 = *(v0 + 152);
  v19 = *(v0 + 104);
  v18 = *(v0 + 112);
  v20 = *(v0 + 96);
  SFAirDrop.PermissionRequest.style.getter();
  v21 = (*(v19 + 88))(v18, v20);
  if (v21 == enum case for SFAirDrop.PermissionRequest.Style.intervention<A>(_:))
  {
    v22 = *(v0 + 112);
    v23 = *(v0 + 88);
    v24 = *(v0 + 72);
    v25 = *(v0 + 80);
    v27 = *(v0 + 56);
    v26 = *(v0 + 64);
    v28 = *(v0 + 48);
    (*(*(v0 + 104) + 96))(v22, *(v0 + 96));
    v29 = *(sub_10028088C(&qword_10097B138, &qword_1007FE3F8) + 48);
    (*(v25 + 32))(v23, v22, v24);
    (*(v27 + 32))(v26, v22 + v29, v28);
    if (qword_1009737A0 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000C4AC(v30, qword_10097B0E0);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Showing intervention permission request", v33, 2u);
    }

    *(v0 + 224) = [objc_allocWithZone(type metadata accessor for SDAirDropUserSafetyInterventionAlert()) init];
    v34 = swift_task_alloc();
    *(v0 + 232) = v34;
    *v34 = v0;
    v34[1] = sub_10039FD64;
    v35 = *(v0 + 88);
    v36 = *(v0 + 40);

    return sub_1004B1884(v36, v35);
  }

  else
  {
    if (v21 != enum case for SFAirDrop.PermissionRequest.Style.alert<A>(_:))
    {
      v48 = *(v0 + 104);
      v47 = *(v0 + 112);
      v49 = *(v0 + 96);
      (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
      (*(v48 + 8))(v47, v49);
      goto LABEL_5;
    }

    v37 = *(v0 + 112);
    (*(*(v0 + 104) + 96))(v37, *(v0 + 96));
    v38 = v37[1];

    v39 = v37[3];

    v40 = v37[4];

    if (qword_1009737A0 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_10000C4AC(v41, qword_10097B0E0);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Showing alert permission request", v44, 2u);
    }

    *(v0 + 264) = *(sub_10028088C(&qword_100975360, &unk_100801D40) + 80);
    v45 = swift_task_alloc();
    *(v0 + 184) = v45;
    *v45 = v0;
    v45[1] = sub_10039F4CC;
    v46 = *(v0 + 168);

    return (sub_1002943BC)(v46);
  }
}

uint64_t sub_10039F4CC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 184);
  v8 = *v3;
  *(*v3 + 192) = v2;

  if (v2)
  {
    v9 = v6[22];

    return _swift_task_switch(sub_10039F7B0, v9, 0);
  }

  else
  {
    v6[25] = a2;
    v10 = swift_task_alloc();
    v6[26] = v10;
    *v10 = v8;
    v10[1] = sub_10039F668;
    v11 = v6[21];

    return sub_10039D86C(a1, a2, v11);
  }
}

uint64_t sub_10039F668()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 216) = v0;

  v6 = *(v2 + 176);
  if (v0)
  {
    v7 = sub_10039FB10;
  }

  else
  {
    v7 = sub_10039FA04;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10039F7B0()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 112);
  v3 = type metadata accessor for SFAirDrop.DeclineAction();
  (*(*(v3 - 8) + 8))(v2 + v1, v3);
  v4 = *(v0 + 192);
  if (qword_1009737A0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_10097B0E0);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 160);
  v9 = *(v0 + 168);
  v11 = *(v0 + 152);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to show alert or intervention: %@", v12, 0xCu);
    sub_100005508(v13, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  (*(v10 + 8))(v9, v11);
  v15 = *(v0 + 168);
  v16 = *(v0 + 144);
  v18 = *(v0 + 112);
  v17 = *(v0 + 120);
  v19 = *(v0 + 88);
  v20 = *(v0 + 64);
  v21 = *(v0 + 40);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_10039FA04()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 112);
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  v3 = type metadata accessor for SFAirDrop.DeclineAction();
  (*(*(v3 - 8) + 8))(v2 + v1, v3);
  v4 = *(v0 + 168);
  v5 = *(v0 + 144);
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  v8 = *(v0 + 88);
  v9 = *(v0 + 64);
  v10 = *(v0 + 40);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10039FB10()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 112);
  v3 = type metadata accessor for SFAirDrop.DeclineAction();
  (*(*(v3 - 8) + 8))(v2 + v1, v3);
  v4 = *(v0 + 216);
  if (qword_1009737A0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_10097B0E0);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 160);
  v9 = *(v0 + 168);
  v11 = *(v0 + 152);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to show alert or intervention: %@", v12, 0xCu);
    sub_100005508(v13, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  (*(v10 + 8))(v9, v11);
  v15 = *(v0 + 168);
  v16 = *(v0 + 144);
  v18 = *(v0 + 112);
  v17 = *(v0 + 120);
  v19 = *(v0 + 88);
  v20 = *(v0 + 64);
  v21 = *(v0 + 40);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_10039FD64()
{
  v2 = *(*v1 + 232);
  v3 = *(*v1 + 224);
  v4 = *v1;
  v4[30] = v0;

  if (v0)
  {
    v5 = v4[22];

    return _swift_task_switch(sub_1003A0164, v5, 0);
  }

  else
  {
    v6 = async function pointer to SFAirDrop.PermissionRequest.InterventionAction.respond(with:)[1];
    v7 = swift_task_alloc();
    v4[31] = v7;
    *v7 = v4;
    v7[1] = sub_10039FF00;
    v8 = v4[8];
    v9 = v4[6];
    v10 = v4[5];

    return SFAirDrop.PermissionRequest.InterventionAction.respond(with:)(v10, v9);
  }
}

uint64_t sub_10039FF00()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = v0;

  v5 = *(v2 + 176);
  if (v0)
  {
    v6 = sub_1003A03AC;
  }

  else
  {
    v6 = sub_1003A002C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003A002C()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v5 = v0[10];
  v4 = v0[11];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[6];
  v9 = v0[7];
  (*(v0[4] + 8))(v0[5], v0[3]);
  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v10 = v0[21];
  v11 = v0[18];
  v13 = v0[14];
  v12 = v0[15];
  v14 = v0[11];
  v15 = v0[8];
  v16 = v0[5];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1003A0164()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  (*(v0[7] + 8))(v0[8], v0[6]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[30];
  if (qword_1009737A0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_10097B0E0);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[20];
  v9 = v0[21];
  v11 = v0[19];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to show alert or intervention: %@", v12, 0xCu);
    sub_100005508(v13, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  (*(v10 + 8))(v9, v11);
  v15 = v0[21];
  v16 = v0[18];
  v18 = v0[14];
  v17 = v0[15];
  v19 = v0[11];
  v20 = v0[8];
  v21 = v0[5];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1003A03AC()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  (*(v0[4] + 8))(v0[5], v0[3]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[32];
  if (qword_1009737A0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_10097B0E0);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[20];
  v12 = v0[21];
  v14 = v0[19];
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v17;
    *v16 = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to show alert or intervention: %@", v15, 0xCu);
    sub_100005508(v16, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  (*(v13 + 8))(v12, v14);
  v18 = v0[21];
  v19 = v0[18];
  v21 = v0[14];
  v20 = v0[15];
  v22 = v0[11];
  v23 = v0[8];
  v24 = v0[5];

  v25 = v0[1];

  return v25();
}

uint64_t sub_1003A0614@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10028088C(&qword_10097B1A0, &qword_1007FE498);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner____lazy_storage___senderContact;
  swift_beginAccess();
  sub_10000FF90(v1 + v10, v9, &qword_10097B1A0, &qword_1007FE498);
  v11 = sub_10028088C(&qword_10097B198, &qword_1007FE450);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return sub_10002C4E4(v9, a1, &qword_10097B198, &qword_1007FE450);
  }

  sub_100005508(v9, &qword_10097B1A0, &qword_1007FE498);
  v13 = v1;
  v14 = *(v1 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_deviceStatus);
  sub_1004E5AD8(a1);
  sub_10000FF90(a1, v7, &qword_10097B198, &qword_1007FE450);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_10000C788(v7, v13 + v10, &qword_10097B1A0, &qword_1007FE498);
  return swift_endAccess();
}

uint64_t sub_1003A0838(uint64_t a1)
{
  v2[120] = v1;
  v2[119] = a1;
  v3 = type metadata accessor for SFAirDrop.NetworkMetrics();
  v2[121] = v3;
  v4 = *(v3 - 8);
  v2[122] = v4;
  v5 = *(v4 + 64) + 15;
  v2[123] = swift_task_alloc();
  v2[124] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDrop.DeviceRelationship();
  v2[125] = v6;
  v7 = *(v6 - 8);
  v2[126] = v7;
  v8 = *(v7 + 64) + 15;
  v2[127] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v2[128] = v9;
  v10 = *(v9 - 8);
  v2[129] = v10;
  v11 = *(v10 + 64) + 15;
  v2[130] = swift_task_alloc();
  v12 = type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult();
  v2[131] = v12;
  v13 = *(v12 - 8);
  v2[132] = v13;
  v14 = *(v13 + 64) + 15;
  v2[133] = swift_task_alloc();
  v2[134] = swift_task_alloc();
  v15 = *(*(sub_10028088C(&qword_100977BB0, &qword_1007FADE0) - 8) + 64) + 15;
  v2[135] = swift_task_alloc();
  v2[136] = swift_task_alloc();
  v16 = *(*(sub_10028088C(&qword_1009763E0, &qword_1007F95D0) - 8) + 64) + 15;
  v2[137] = swift_task_alloc();
  v2[138] = swift_task_alloc();
  v17 = *(*(sub_10028088C(&qword_10097B1A8, &unk_1007FE4B0) - 8) + 64) + 15;
  v2[139] = swift_task_alloc();
  v2[140] = swift_task_alloc();
  v18 = type metadata accessor for SFAirDropSend.Request();
  v2[141] = v18;
  v19 = *(v18 - 8);
  v2[142] = v19;
  v20 = *(v19 + 64) + 15;
  v2[143] = swift_task_alloc();
  v21 = *(*(sub_10028088C(&qword_100977DC0, &unk_1007FB320) - 8) + 64) + 15;
  v2[144] = swift_task_alloc();
  v2[145] = swift_task_alloc();
  v2[146] = swift_task_alloc();
  v22 = type metadata accessor for SFAirDropSend.Transfer.State();
  v2[147] = v22;
  v23 = *(v22 - 8);
  v2[148] = v23;
  v24 = *(v23 + 64) + 15;
  v2[149] = swift_task_alloc();
  v25 = type metadata accessor for SFAirDrop.TransferType();
  v2[150] = v25;
  v26 = *(v25 - 8);
  v2[151] = v26;
  v27 = *(v26 + 64) + 15;
  v2[152] = swift_task_alloc();
  v28 = *(*(sub_10028088C(&qword_10097A7F0, &unk_1007FB600) - 8) + 64) + 15;
  v2[153] = swift_task_alloc();
  v29 = *(*(sub_10028088C(&qword_10097B1B0, &unk_10080DD40) - 8) + 64) + 15;
  v2[154] = swift_task_alloc();
  v30 = type metadata accessor for Date();
  v2[155] = v30;
  v31 = *(v30 - 8);
  v2[156] = v31;
  v32 = *(v31 + 64) + 15;
  v2[157] = swift_task_alloc();
  v33 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v2[158] = v33;
  v34 = *(v33 - 8);
  v2[159] = v34;
  v35 = *(v34 + 64) + 15;
  v2[160] = swift_task_alloc();
  v2[161] = swift_task_alloc();
  v36 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
  v2[162] = v36;
  v37 = *(v36 - 8);
  v2[163] = v37;
  v38 = *(v37 + 64) + 15;
  v2[164] = swift_task_alloc();
  v39 = type metadata accessor for CancellationError();
  v2[165] = v39;
  v40 = *(v39 - 8);
  v2[166] = v40;
  v41 = *(v40 + 64) + 15;
  v2[167] = swift_task_alloc();
  v42 = type metadata accessor for SFAirDropSend.Failure();
  v2[168] = v42;
  v43 = *(v42 - 8);
  v2[169] = v43;
  v44 = *(v43 + 64) + 15;
  v2[170] = swift_task_alloc();
  v2[171] = swift_task_alloc();
  v2[172] = swift_task_alloc();
  v45 = *(*(sub_10028088C(&qword_10097B1B8, &qword_1007FE4C0) - 8) + 64) + 15;
  v2[173] = swift_task_alloc();
  v46 = *(*(sub_10028088C(&qword_10097B1C0, &qword_1007FE4C8) - 8) + 64) + 15;
  v2[174] = swift_task_alloc();
  v2[175] = swift_task_alloc();
  v47 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v2[176] = v47;
  v48 = *(v47 - 8);
  v2[177] = v48;
  v49 = *(v48 + 64) + 15;
  v2[178] = swift_task_alloc();
  v2[179] = swift_task_alloc();
  v2[180] = swift_task_alloc();
  v2[181] = swift_task_alloc();
  v50 = *(*(_s10AskRequestVMa() - 8) + 64) + 15;
  v2[182] = swift_task_alloc();
  v2[183] = swift_task_alloc();
  v51 = type metadata accessor for SFAirDropSend.Transfer();
  v2[184] = v51;
  v52 = *(v51 - 8);
  v2[185] = v52;
  v53 = *(v52 + 64) + 15;
  v2[186] = swift_task_alloc();
  v2[187] = swift_task_alloc();
  v2[188] = swift_task_alloc();
  v2[189] = swift_task_alloc();
  v2[190] = swift_task_alloc();
  v2[191] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v54 = static AirDropActor.shared;
  v2[192] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003A10C0, v54, 0);
}

uint64_t sub_1003A10C0()
{
  v1 = *(v0 + 960);
  v2 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_sendRequest;
  *(v0 + 1544) = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_sendRequest;
  v3 = SFAirDropSend.Request.urls.getter();
  if (v3 && (v4 = *(v3 + 16), , v4))
  {
    *(v0 + 520) = 0;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    *(v0 + 424) = 0u;
    *(v0 + 440) = 0u;
    v5 = swift_task_alloc();
    *(v0 + 1552) = v5;
    *v5 = v0;
    v5[1] = sub_1003A1234;
    v6 = *(v0 + 960);

    return sub_1003A4468(v1 + v2, 0, 0x300000000, v0 + 424);
  }

  else
  {
    v8 = swift_task_alloc();
    *(v0 + 1600) = v8;
    *v8 = v0;
    v8[1] = sub_1003A1670;
    v9 = *(v0 + 1456);
    v10 = *(v0 + 1440);
    v11 = *(v0 + 1392);
    v12 = *(v0 + 1384);
    v13 = *(v0 + 960);

    return sub_1003A8774(v0 + 168, v9, v10, v11, v12);
  }
}

uint64_t sub_1003A1234(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1552);
  v6 = *v2;
  *(v4 + 1560) = a1;
  *(v4 + 1568) = v1;

  v7 = *(v3 + 1536);
  if (v1)
  {
    v8 = sub_1003A3C38;
  }

  else
  {
    v8 = sub_1003A136C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1003A136C()
{
  v1 = v0[120];
  v2 = swift_task_alloc();
  v0[197] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to static SFSecurityScopedURL.withAccess<A>(to:body:)[1];
  v4 = swift_task_alloc();
  v0[198] = v4;
  *v4 = v0;
  v4[1] = sub_1003A143C;
  v5 = v0[195];
  v6 = v0[190];
  v7 = v0[184];

  return static SFSecurityScopedURL.withAccess<A>(to:body:)(v6, v5, &unk_1007FE520, v2, v7);
}

uint64_t sub_1003A143C()
{
  v2 = *v1;
  v3 = *(*v1 + 1584);
  v4 = *v1;
  *(*v1 + 1592) = v0;

  v5 = v2[197];
  v6 = v2[195];
  v7 = v2[192];

  if (v0)
  {
    v8 = sub_1003A3DB0;
  }

  else
  {
    v8 = sub_1003A15A0;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1003A15A0()
{
  v1 = v0[185];
  v2 = *(v1 + 32);
  v2(v0[191], v0[190], v0[184]);
  v0[211] = v2;
  v0[210] = v1 + 32;
  v3 = *(v0[120] + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_endpointService);
  sub_10047E40C();
  v4 = swift_task_alloc();
  v0[212] = v4;
  *v4 = v0;
  v4[1] = sub_1003A1F98;
  v5 = v0[120];

  return sub_1003ACFD4(0);
}

uint64_t sub_1003A1670()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 1600);
  v28 = *v1;
  v3[201] = v0;
  v5 = *(v3 + 172);
  v6 = *(v3 + 42);
  v27 = v2[22];
  v7 = v2[23];
  v8 = v2[24];
  v9 = v2[25];
  v10 = v2[26];
  v11 = *(v3 + 216);
  v25 = *(v3 + 17);
  v26 = *(v3 + 15);
  v23 = *(v3 + 16);
  v24 = *(v3 + 14);
  v12 = v2[36];

  if (v0)
  {
    v13 = v3[192];
    v14 = sub_1003A3F28;
  }

  else
  {
    v22 = v3[192];
    v15 = v3[173];
    *(v3 + 74) = v6;
    *(v3 + 300) = (v6 | (v5 << 32)) >> 32;
    v3[38] = v27;
    v3[39] = v7;
    v3[40] = v8;
    v3[41] = v9;
    v3[42] = v10;
    *(v3 + 344) = v11;
    *(v3 + 22) = v24;
    *(v3 + 23) = v26;
    *(v3 + 24) = v23;
    *(v3 + 25) = v25;
    v3[52] = v12;
    sub_100005508(v15, &qword_10097B1B8, &qword_1007FE4C0);
    v16 = *(v3 + 74);
    *(v3 + 1620) = *(v3 + 300);
    *(v3 + 404) = v16;
    v3[203] = v3[38];
    v17 = *(v3 + 49);
    *(v3 + 87) = *(v3 + 47);
    *(v3 + 89) = v17;
    v18 = v3[52];
    v3[91] = v3[51];
    v19 = *(v3 + 41);
    *(v3 + 79) = *(v3 + 39);
    *(v3 + 81) = v19;
    v20 = *(v3 + 45);
    *(v3 + 83) = *(v3 + 43);
    *(v3 + 85) = v20;

    v14 = sub_1003A18EC;
    v13 = v22;
  }

  return _swift_task_switch(v14, v13, 0);
}

uint64_t sub_1003A18EC()
{
  v1 = *(v0 + 1624);
  v15 = *(v0 + 1616) | (*(v0 + 1620) << 32);
  v2 = *(v0 + 1544);
  v3 = *(v0 + 1448);
  v4 = *(v0 + 1440);
  v5 = *(v0 + 1400);
  v6 = *(v0 + 1392);
  v7 = *(v0 + 960);
  sub_10000ED78(*(v0 + 1456), *(v0 + 1464), _s10AskRequestVMa);
  sub_10000ED78(v4, v3, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_10002C4E4(v6, v5, &qword_10097B1C0, &qword_1007FE4C8);
  v8 = *(v0 + 392);
  *(v0 + 592) = *(v0 + 376);
  *(v0 + 608) = v8;
  *(v0 + 624) = *(v0 + 408);
  v9 = *(v0 + 328);
  *(v0 + 528) = *(v0 + 312);
  *(v0 + 544) = v9;
  v10 = *(v0 + 360);
  *(v0 + 560) = *(v0 + 344);
  *(v0 + 576) = v10;
  v11 = v1;
  sub_1003C34C8(v0 + 312, v0 + 736);
  v12 = swift_task_alloc();
  *(v0 + 1632) = v12;
  *v12 = v0;
  v12[1] = sub_1003A1A6C;
  v13 = *(v0 + 960);

  return sub_1003A4468(v7 + v2, v1, v15, v0 + 528);
}

uint64_t sub_1003A1A6C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1632);
  v6 = *v2;
  *(v4 + 1640) = a1;
  *(v4 + 1648) = v1;

  v7 = *(v3 + 1624);
  v8 = *(v3 + 1536);
  sub_10030D74C(v4 + 312);

  if (v1)
  {
    v9 = sub_1003A40A0;
  }

  else
  {
    v9 = sub_1003A1BD0;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1003A1BD0()
{
  v1 = v0[203];
  v2 = v0[183];
  v3 = v0[181];
  v4 = v0[175];
  v5 = v0[120];
  v6 = swift_task_alloc();
  v0[207] = v6;
  v6[2] = v5;
  v6[3] = v2;
  v6[4] = v1;
  v6[5] = v3;
  v6[6] = v0 + 79;
  v6[7] = v4;
  v7 = async function pointer to static SFSecurityScopedURL.withAccess<A>(to:body:)[1];
  v8 = swift_task_alloc();
  v0[208] = v8;
  *v8 = v0;
  v8[1] = sub_1003A1CD4;
  v9 = v0[205];
  v10 = v0[189];
  v11 = v0[184];

  return static SFSecurityScopedURL.withAccess<A>(to:body:)(v10, v9, &unk_1007FE510, v6, v11);
}

uint64_t sub_1003A1CD4()
{
  v2 = *v1;
  v3 = *(*v1 + 1664);
  v4 = *v1;
  *(*v1 + 1672) = v0;

  v5 = v2[207];
  v6 = v2[205];
  v7 = v2[192];

  if (v0)
  {
    v8 = sub_1003A4284;
  }

  else
  {
    v8 = sub_1003A1E38;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1003A1E38()
{
  v1 = *(v0 + 1528);
  v2 = *(v0 + 1512);
  v3 = *(v0 + 1480);
  v4 = *(v0 + 1472);
  v5 = *(v0 + 1464);
  v6 = *(v0 + 1448);
  v7 = *(v0 + 1400);

  sub_10030D74C(v0 + 312);
  v8 = *(v3 + 32);
  v8(v1, v2, v4);
  sub_100005508(v7, &qword_10097B1C0, &qword_1007FE4C8);
  sub_1003C41CC(v6, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_1003C41CC(v5, _s10AskRequestVMa);
  *(v0 + 1688) = v8;
  *(v0 + 1680) = v3 + 32;
  v9 = *(*(v0 + 960) + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_endpointService);
  sub_10047E40C();
  v10 = swift_task_alloc();
  *(v0 + 1696) = v10;
  *v10 = v0;
  v10[1] = sub_1003A1F98;
  v11 = *(v0 + 960);

  return sub_1003ACFD4(0);
}

uint64_t sub_1003A1F98()
{
  v1 = *(*v0 + 1696);
  v2 = *(*v0 + 1536);
  v4 = *v0;

  return _swift_task_switch(sub_1003A20A8, v2, 0);
}

uint64_t sub_1003A20A8()
{
  v1 = *(v0 + 1520);
  v2 = *(v0 + 1512);
  v3 = *(v0 + 1504);
  v4 = *(v0 + 1496);
  v5 = *(v0 + 1488);
  v6 = *(v0 + 1464);
  v7 = *(v0 + 1456);
  v8 = *(v0 + 1448);
  v12 = *(v0 + 1440);
  v13 = *(v0 + 1432);
  v14 = *(v0 + 1424);
  v15 = *(v0 + 1400);
  v16 = *(v0 + 1392);
  v17 = *(v0 + 1384);
  v18 = *(v0 + 1376);
  v19 = *(v0 + 1368);
  v20 = *(v0 + 1360);
  v21 = *(v0 + 1336);
  v22 = *(v0 + 1312);
  v23 = *(v0 + 1288);
  v24 = *(v0 + 1280);
  v25 = *(v0 + 1256);
  v26 = *(v0 + 1232);
  v27 = *(v0 + 1224);
  v28 = *(v0 + 1216);
  v29 = *(v0 + 1192);
  v30 = *(v0 + 1168);
  v31 = *(v0 + 1160);
  v32 = *(v0 + 1152);
  v33 = *(v0 + 1144);
  v34 = *(v0 + 1120);
  v35 = *(v0 + 1112);
  v36 = *(v0 + 1104);
  v37 = *(v0 + 1096);
  v38 = *(v0 + 1088);
  v39 = *(v0 + 1080);
  v40 = *(v0 + 1072);
  v41 = *(v0 + 1064);
  v42 = *(v0 + 1040);
  v43 = *(v0 + 1016);
  v44 = *(v0 + 992);
  v45 = *(v0 + 984);
  v9 = *(v0 + 1680) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  (*(v0 + 1688))(*(v0 + 952), *(v0 + 1528), *(v0 + 1472));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1003A2388()
{
  v1 = *(*v0 + 1712);
  v2 = *(*v0 + 1536);
  v4 = *v0;

  return _swift_task_switch(sub_1003A2498, v2, 0);
}

uint64_t sub_1003A2498()
{
  v53 = *(v0 + 1544);
  v1 = *(v0 + 1504);
  v58 = *(v0 + 1496);
  v2 = *(v0 + 1480);
  v3 = *(v0 + 1472);
  v55 = *(v0 + 1376);
  v4 = *(v0 + 1352);
  v41 = *(v0 + 1344);
  v38 = *(v0 + 1312);
  v59 = *(v0 + 1288);
  v37 = *(v0 + 1256);
  v44 = *(v0 + 1248);
  v45 = *(v0 + 1240);
  v47 = *(v0 + 1216);
  v49 = *(v0 + 1208);
  v51 = *(v0 + 1200);
  v39 = *(v0 + 1232);
  v40 = *(v0 + 1056);
  v42 = *(v0 + 1048);
  v43 = *(v0 + 1224);
  v5 = *(v0 + 960);
  v6 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer;
  swift_beginAccess();
  v7 = *(v2 + 16);
  v7(v1, v5 + v6, v3);
  SFAirDropSend.Transfer.id.getter();
  v8 = *(v2 + 8);
  v8(v1, v3);
  v7(v58, v5 + v6, v3);
  SFAirDropSend.Transfer.startDate.getter();
  v57 = v8;
  v8(v58, v3);
  SFAirDropSend.Transfer.Metrics.init(id:startDate:)();
  v9 = *(v4 + 16);
  *(v0 + 1720) = v9;
  *(v0 + 1728) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10 = v55;
  v56 = v9;
  v9(v39, v10, v41);
  *(v0 + 1808) = enum case for SFAirDropSend.Transfer.Metrics.TransferResult.failure(_:);
  v11 = *(v40 + 104);
  *(v0 + 1736) = v11;
  *(v0 + 1744) = (v40 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v11(v39);
  (*(v40 + 56))(v39, 0, 1, v42);
  SFAirDropSend.Transfer.Metrics.result.setter();
  static Date.now.getter();
  (*(v44 + 56))(v43, 0, 1, v45);
  SFAirDropSend.Transfer.Metrics.endDate.setter();
  SFAirDropSend.Request.type.getter();
  LOBYTE(v1) = SFAirDrop.TransferType.isOnlyExchange.getter();
  v12 = *(v49 + 8);
  *(v0 + 1752) = v12;
  *(v0 + 1760) = (v49 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v47, v51);
  if ((v1 & 1) == 0)
  {
    v13 = *(v0 + 1376);
    v14 = *(v0 + 1368);
    v15 = *(v0 + 1352);
    v16 = *(v0 + 1344);
    v17 = *(v0 + 960);
    (*(v15 + 104))(v14, enum case for SFAirDropSend.Failure.receiverDeclined(_:), v16);
    LOBYTE(v13) = static SFAirDropSend.Failure.== infix(_:_:)();
    (*(v15 + 8))(v14, v16);
    v18 = *(v17 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_hapticsManager);
    v19 = *(v17 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_hapticsManager + 8);
    ObjectType = swift_getObjectType();
    if (v13)
    {
      v21 = 5;
    }

    else
    {
      v21 = 4;
    }

    (*(v19 + 16))(v21, ObjectType, v19);
  }

  v52 = *(v0 + 1504);
  v54 = *(v0 + 1472);
  v22 = *(v0 + 1376);
  v23 = *(v0 + 1344);
  v24 = *(v0 + 1312);
  v25 = *(v0 + 1304);
  v26 = *(v0 + 1296);
  v27 = *(v0 + 1192);
  v28 = *(v0 + 1184);
  v29 = *(v0 + 1176);
  v48 = *(v0 + 1488);
  v50 = *(v0 + 1168);
  v46 = *(v0 + 960);
  v30 = *(sub_10028088C(&unk_100986210, &unk_1008042C0) + 48);
  (*(v25 + 16))(v27, v24, v26);
  v56(&v27[v30], v22, v23);
  (*(v28 + 104))(v27, enum case for SFAirDropSend.Transfer.State.transferFailed(_:), v29);
  sub_100335364(v27, v48);
  (*(v28 + 8))(v27, v29);
  v31 = type metadata accessor for SFNWInterfaceType();
  *(v0 + 1768) = v31;
  v32 = *(v31 - 8);
  *(v0 + 1776) = v32;
  v33 = *(v32 + 56);
  *(v0 + 1784) = v33;
  *(v0 + 1792) = (v32 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v33(v50, 1, 1, v31);
  sub_100335980(v50, v52);
  sub_100005508(v50, &qword_100977DC0, &unk_1007FB320);
  v57(v52, v54);
  v34 = swift_task_alloc();
  *(v0 + 1800) = v34;
  *v34 = v0;
  v34[1] = sub_1003A29DC;
  v35 = *(v0 + 960);

  return sub_100334168();
}

uint64_t sub_1003A29DC()
{
  v1 = *(*v0 + 1800);
  v2 = *(*v0 + 1536);
  v4 = *v0;

  return _swift_task_switch(sub_1003A2AEC, v2, 0);
}

uint64_t sub_1003A2AEC()
{
  v190 = v0;
  v1 = *(v0 + 960);
  (*(*(v0 + 1136) + 16))(*(v0 + 1144), v1 + *(v0 + 1544), *(v0 + 1128));
  v2 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_selectedConnection;
  v3 = *(v1 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_selectedConnection);
  if (v3)
  {
    v4 = *(v0 + 1120);
    v5 = *(v0 + 1104);
    v6 = *(v0 + 976);
    v7 = *(v0 + 968);
    v8 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_metrics;
    swift_beginAccess();
    (*(v6 + 16))(v4, v3 + v8, v7);
    (*(v6 + 56))(v4, 0, 1, v7);
    sub_1003C36B0(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_endpoint, v5, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v9 = 0;
  }

  else
  {
    v9 = 1;
    (*(*(v0 + 976) + 56))(*(v0 + 1120), 1, 1, *(v0 + 968));
  }

  v10 = *(v0 + 960);
  (*(*(v0 + 1416) + 56))(*(v0 + 1104), v9, 1, *(v0 + 1408));
  v11 = *(v10 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_endpoints);

  CurrentValueSubject.value.getter();

  v187 = *(v0 + 944);
  v12 = *(v1 + v2);
  if (v12)
  {
    v13 = *(v0 + 1776);
    v14 = *(v0 + 1768);
    v15 = *(v0 + 1160);
    v16 = *(v0 + 1088);
    v17 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadRequest;
    swift_beginAccess();
    sub_10000FF90(v12 + v17, v16, &qword_100977BB0, &qword_1007FADE0);
    v18 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_lastActiveInterfaceType;
    swift_beginAccess();
    (*(v13 + 16))(v15, v12 + v18, v14);
    v19 = 0;
  }

  else
  {
    v20 = *(v0 + 1088);
    v21 = _s13UploadRequestVMa();
    (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
    v19 = 1;
  }

  v22 = *(v0 + 1792);
  v178 = *(v0 + 1736);
  v184 = *(v0 + 1744);
  v23 = *(v0 + 1808);
  v24 = *(v0 + 1728);
  v25 = *(v0 + 1720);
  v26 = *(v0 + 1376);
  v27 = *(v0 + 1344);
  v28 = *(v0 + 1088);
  v29 = *(v0 + 1080);
  v30 = *(v0 + 1072);
  v31 = *(v0 + 1048);
  (*(v0 + 1784))(*(v0 + 1160), v19, 1, *(v0 + 1768));
  v25(v30, v26, v27);
  v178(v30, v23, v31);
  sub_10000FF90(v28, v29, &qword_100977BB0, &qword_1007FADE0);
  v32 = _s13UploadRequestVMa();
  v33 = (*(*(v32 - 8) + 48))(v29, 1, v32);
  v34 = *(v0 + 1080);
  if (v33 == 1)
  {
    sub_100005508(v34, &qword_100977BB0, &qword_1007FADE0);
  }

  else
  {
    v179 = *(v34 + *(v32 + 20));
    sub_1003C41CC(v34, _s13UploadRequestVMa);
  }

  v35 = *(v0 + 1776);
  v36 = *(v0 + 1768);
  v37 = *(v0 + 1152);
  sub_10000FF90(*(v0 + 1160), v37, &qword_100977DC0, &unk_1007FB320);
  if ((*(v35 + 48))(v37, 1, v36) == 1)
  {
    sub_100005508(*(v0 + 1152), &qword_100977DC0, &unk_1007FB320);
  }

  else
  {
    v38 = *(v0 + 1776);
    v39 = *(v0 + 1768);
    v40 = *(v0 + 1152);
    SFNWInterfaceType.description.getter();
    (*(v38 + 8))(v40, v39);
  }

  v173 = *(v0 + 1808);
  v41 = *(v0 + 1280);
  v42 = *(v0 + 1272);
  v43 = *(v0 + 1264);
  v44 = *(v0 + 1144);
  v162 = *(v0 + 1072);
  v45 = *(v0 + 1056);
  v167 = *(v0 + 1048);
  v170 = *(v0 + 1064);
  v46 = *(v0 + 1040);
  v47 = *(v0 + 1032);
  v48 = *(v0 + 1024);
  sub_10028088C(&qword_10097B1C8, &unk_1007FE4F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F8220;
  *(inited + 32) = 0x726566736E617274;
  *(inited + 40) = 0xEA00000000004449;
  SFAirDropSend.Request.id.getter();
  SFAirDrop.TransferIdentifier.id.getter();
  (*(v42 + 8))(v41, v43);
  UUID.uuidString.getter();
  (*(v47 + 8))(v46, v48);
  v50 = String._bridgeToObjectiveC()();

  *(inited + 48) = v50;
  *(inited + 56) = 1702521203;
  *(inited + 64) = 0xE400000000000000;
  *(inited + 72) = Int._bridgeToObjectiveC()();
  *(inited + 80) = 0x726F70736E617274;
  *(inited + 88) = 0xE900000000000074;
  *(inited + 96) = String._bridgeToObjectiveC()();
  *(inited + 104) = 0x746C75736572;
  *(inited + 112) = 0xE600000000000000;
  sub_1003E64C0();
  *(inited + 120) = Int._bridgeToObjectiveC()();
  strcpy((inited + 128), "failureSubType");
  *(inited + 143) = -18;
  (*(v45 + 16))(v170, v162, v167);
  if ((*(v45 + 88))(v170, v167) == v173)
  {
    v51 = *(v0 + 1360);
    v52 = *(v0 + 1352);
    v53 = *(v0 + 1344);
    v54 = *(v0 + 1064);
    (*(*(v0 + 1056) + 96))(v54, *(v0 + 1048));
    (*(v52 + 32))(v51, v54, v53);
    SFAirDropSend.Failure.errorDescription.getter();
    (*(v52 + 8))(v51, v53);
  }

  else
  {
    (*(*(v0 + 1056) + 8))(*(v0 + 1064), *(v0 + 1048));
  }

  v55 = *(v0 + 1416);
  v56 = *(v0 + 1408);
  v57 = *(v0 + 1104);
  v58 = *(v0 + 1096);
  v59 = String._bridgeToObjectiveC()();

  *(inited + 144) = v59;
  v60 = sub_1002812CC(inited);
  swift_setDeallocating();
  sub_10028088C(&qword_10097B1D0, &qword_1007FEC90);
  swift_arrayDestroy();
  sub_10000FF90(v57, v58, &qword_1009763E0, &qword_1007F95D0);
  if ((*(v55 + 48))(v58, 1, v56) == 1)
  {
    sub_100005508(*(v0 + 1096), &qword_1009763E0, &qword_1007F95D0);
    if (*(v187 + 16))
    {
      v61 = *(v0 + 1144);
      sub_1003E5DF0(v187);
      v62 = String._bridgeToObjectiveC()();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10057B0BC(v62, 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
      sub_1003E6060(v187);
      isa = Int._bridgeToObjectiveC()().super.super.isa;
      v65 = swift_isUniquelyReferenced_nonNull_native();
      sub_10057B0BC(isa, 0x6C6F636F746F7270, 0xE800000000000000, v65);
      sub_1003E6260(v187);
      v66 = Int._bridgeToObjectiveC()().super.super.isa;
      v67 = swift_isUniquelyReferenced_nonNull_native();
      v189[0] = v60;
      sub_10057B0BC(v66, 0xD000000000000010, 0x800000010078E320, v67);
    }
  }

  else
  {
    v68 = *(v0 + 1760);
    v69 = *(v0 + 1752);
    v70 = *(v0 + 1432);
    v180 = *(v0 + 1424);
    v185 = *(v0 + 1408);
    v71 = *(v0 + 1216);
    v72 = *(v0 + 1200);
    v73 = *(v0 + 1144);
    sub_10000ED78(*(v0 + 1096), v70, type metadata accessor for SDAirDropDiscoveredEndpoint);
    SFAirDropSend.Request.type.getter();
    sub_1003E67D8(v71);
    v69(v71, v72);
    v74 = String._bridgeToObjectiveC()();

    v75 = swift_isUniquelyReferenced_nonNull_native();
    v189[0] = v60;
    sub_10057B0BC(v74, 1701869940, 0xE400000000000000, v75);
    sub_1003C36B0(v70, v180, type metadata accessor for SDAirDropDiscoveredEndpoint);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v77 = qword_1007FE7B8[EnumCaseMultiPayload];
    sub_1003C41CC(*(v0 + 1424), off_1008DE230[EnumCaseMultiPayload]);
    v78 = *(v0 + 1432);
    v79 = *(v0 + 1016);
    v80 = *(v0 + 1008);
    v81 = *(v0 + 1000);
    v82 = Int._bridgeToObjectiveC()().super.super.isa;
    v83 = swift_isUniquelyReferenced_nonNull_native();
    v189[0] = v60;
    sub_10057B0BC(v82, 0x6C6F636F746F7270, 0xE800000000000000, v83);
    sub_10032C154(v79);
    SFAirDrop.DeviceRelationship.rawValue.getter();
    (*(v80 + 8))(v79, v81);
    v84 = Int._bridgeToObjectiveC()().super.super.isa;
    v85 = swift_isUniquelyReferenced_nonNull_native();
    v189[0] = v60;
    sub_10057B0BC(v84, 0xD000000000000010, 0x800000010078E320, v85);
    sub_1003C41CC(v78, type metadata accessor for SDAirDropDiscoveredEndpoint);
  }

  v86 = *(v0 + 1112);
  v87 = *(v0 + 976);
  v88 = *(v0 + 968);
  sub_10000FF90(*(v0 + 1120), v86, &qword_10097B1A8, &unk_1007FE4B0);
  v89 = (*(v87 + 48))(v86, 1, v88);
  v90 = *(v0 + 1112);
  if (v89 == 1)
  {

    sub_100005508(v90, &qword_10097B1A8, &unk_1007FE4B0);
  }

  else
  {
    (*(*(v0 + 976) + 32))(*(v0 + 992), *(v0 + 1112), *(v0 + 968));
    v91 = SFAirDrop.NetworkMetrics.payload.getter();
    v92 = swift_isUniquelyReferenced_nonNull_native();
    v189[0] = v60;
    sub_1003C3240(v91, sub_1003C29BC, 0, v92, v189);

    if (qword_1009737E0 != -1)
    {
      swift_once();
    }

    v93 = *(v0 + 992);
    v94 = *(v0 + 984);
    v95 = *(v0 + 976);
    v96 = *(v0 + 968);
    v97 = type metadata accessor for Logger();
    sub_10000C4AC(v97, qword_10097B8A0);
    (*(v95 + 16))(v94, v93, v96);
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.default.getter();
    v100 = os_log_type_enabled(v98, v99);
    v101 = *(v0 + 992);
    v102 = *(v0 + 984);
    v103 = *(v0 + 976);
    v104 = *(v0 + 968);
    if (v100)
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v189[0] = v106;
      *v105 = 136315138;
      v107 = SFAirDrop.NetworkMetrics.description.getter();
      v181 = v101;
      v109 = v108;
      v110 = *(v103 + 8);
      v110(v102, v104);
      v111 = sub_10000C4E4(v107, v109, v189);

      *(v105 + 4) = v111;
      _os_log_impl(&_mh_execute_header, v98, v99, "SFAirDrop.NetworkMetrics: %s", v105, 0xCu);
      sub_10000C60C(v106);

      v110(v181, v104);
    }

    else
    {

      v112 = *(v103 + 8);
      v112(v102, v104);
      v112(v101, v104);
    }
  }

  v152 = *(v0 + 1704);
  v176 = *(v0 + 1376);
  v182 = *(v0 + 1480);
  v113 = *(v0 + 1352);
  v171 = *(v0 + 1312);
  v174 = *(v0 + 1344);
  v114 = *(v0 + 1304);
  v168 = *(v0 + 1296);
  v154 = *(v0 + 1160);
  v115 = *(v0 + 1136);
  v163 = *(v0 + 1128);
  v165 = *(v0 + 1144);
  v160 = *(v0 + 1120);
  v156 = *(v0 + 1088);
  v158 = *(v0 + 1104);
  v116 = *(v0 + 1072);
  v117 = *(v0 + 1056);
  v118 = *(v0 + 1048);
  v119 = String._bridgeToObjectiveC()();
  sub_1000276B4(0, &qword_1009772D8, NSObject_ptr);
  v120 = Dictionary._bridgeToObjectiveC()().super.isa;

  SFMetricsLog();

  (*(v117 + 8))(v116, v118);
  sub_100005508(v154, &qword_100977DC0, &unk_1007FB320);
  sub_100005508(v156, &qword_100977BB0, &qword_1007FADE0);
  sub_100005508(v158, &qword_1009763E0, &qword_1007F95D0);
  sub_100005508(v160, &qword_10097B1A8, &unk_1007FE4B0);
  (*(v115 + 8))(v165, v163);
  (*(v114 + 8))(v171, v168);
  (*(v113 + 8))(v176, v174);
  v121 = *(v182 + 32);
  v122 = *(v0 + 1528);
  v123 = *(v0 + 1520);
  v124 = *(v0 + 1512);
  v125 = *(v0 + 1504);
  v126 = *(v0 + 1496);
  v127 = *(v0 + 1464);
  v128 = *(v0 + 1456);
  v129 = *(v0 + 1448);
  v132 = *(v0 + 1440);
  v133 = *(v0 + 1432);
  v134 = *(v0 + 1424);
  v135 = *(v0 + 1400);
  v136 = *(v0 + 1392);
  v137 = *(v0 + 1384);
  v138 = *(v0 + 1376);
  v139 = *(v0 + 1368);
  v140 = *(v0 + 1360);
  v141 = *(v0 + 1336);
  v142 = *(v0 + 1312);
  v143 = *(v0 + 1288);
  v144 = *(v0 + 1280);
  v145 = *(v0 + 1256);
  v146 = *(v0 + 1232);
  v147 = *(v0 + 1224);
  v148 = *(v0 + 1216);
  v149 = *(v0 + 1192);
  v150 = *(v0 + 1168);
  v151 = *(v0 + 1160);
  v153 = *(v0 + 1152);
  v155 = *(v0 + 1144);
  v157 = *(v0 + 1120);
  v159 = *(v0 + 1112);
  v161 = *(v0 + 1104);
  v164 = *(v0 + 1096);
  v166 = *(v0 + 1088);
  v169 = *(v0 + 1080);
  v172 = *(v0 + 1072);
  v175 = *(v0 + 1064);
  v177 = *(v0 + 1040);
  v183 = *(v0 + 1016);
  v186 = *(v0 + 992);
  v188 = *(v0 + 984);
  v121(*(v0 + 952), *(v0 + 1488), *(v0 + 1472));

  v130 = *(v0 + 8);

  return v130();
}

uint64_t sub_1003A3C38()
{
  v1 = v0[196];
  v0[213] = v1;
  v2 = v0[167];
  v3 = v0[165];
  v0[117] = v1;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  v4 = swift_dynamicCast();
  v5 = v0[172];
  if (v4)
  {
    v6 = v0[167];
    v7 = v0[166];
    v8 = v0[165];
    (*(v0[169] + 104))(v0[172], enum case for SFAirDropSend.Failure.cancelled(_:), v0[168]);
    (*(v7 + 8))(v6, v8);
    v9 = v0[117];
  }

  else
  {
    v10 = v0[117];

    swift_errorRetain();
    SFAirDropSend.Failure.init(_:)();
  }

  v11 = *(v0[120] + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_endpointService);
  sub_10047E40C();
  v12 = swift_task_alloc();
  v0[214] = v12;
  *v12 = v0;
  v12[1] = sub_1003A2388;
  v13 = v0[120];

  return sub_1003ACFD4(1);
}

uint64_t sub_1003A3DB0()
{
  v1 = v0[199];
  v0[213] = v1;
  v2 = v0[167];
  v3 = v0[165];
  v0[117] = v1;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  v4 = swift_dynamicCast();
  v5 = v0[172];
  if (v4)
  {
    v6 = v0[167];
    v7 = v0[166];
    v8 = v0[165];
    (*(v0[169] + 104))(v0[172], enum case for SFAirDropSend.Failure.cancelled(_:), v0[168]);
    (*(v7 + 8))(v6, v8);
    v9 = v0[117];
  }

  else
  {
    v10 = v0[117];

    swift_errorRetain();
    SFAirDropSend.Failure.init(_:)();
  }

  v11 = *(v0[120] + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_endpointService);
  sub_10047E40C();
  v12 = swift_task_alloc();
  v0[214] = v12;
  *v12 = v0;
  v12[1] = sub_1003A2388;
  v13 = v0[120];

  return sub_1003ACFD4(1);
}

uint64_t sub_1003A3F28()
{
  v1 = v0[201];
  v0[213] = v1;
  v2 = v0[167];
  v3 = v0[165];
  v0[117] = v1;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  v4 = swift_dynamicCast();
  v5 = v0[172];
  if (v4)
  {
    v6 = v0[167];
    v7 = v0[166];
    v8 = v0[165];
    (*(v0[169] + 104))(v0[172], enum case for SFAirDropSend.Failure.cancelled(_:), v0[168]);
    (*(v7 + 8))(v6, v8);
    v9 = v0[117];
  }

  else
  {
    v10 = v0[117];

    swift_errorRetain();
    SFAirDropSend.Failure.init(_:)();
  }

  v11 = *(v0[120] + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_endpointService);
  sub_10047E40C();
  v12 = swift_task_alloc();
  v0[214] = v12;
  *v12 = v0;
  v12[1] = sub_1003A2388;
  v13 = v0[120];

  return sub_1003ACFD4(1);
}

uint64_t sub_1003A40A0()
{
  v1 = *(v0 + 1464);
  v2 = *(v0 + 1448);
  v3 = *(v0 + 1400);

  sub_10030D74C(v0 + 312);
  sub_100005508(v3, &qword_10097B1C0, &qword_1007FE4C8);
  sub_1003C41CC(v2, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_1003C41CC(v1, _s10AskRequestVMa);
  v4 = *(v0 + 1648);
  *(v0 + 1704) = v4;
  v5 = *(v0 + 1336);
  v6 = *(v0 + 1320);
  *(v0 + 936) = v4;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  v7 = swift_dynamicCast();
  v8 = *(v0 + 1376);
  if (v7)
  {
    v9 = *(v0 + 1336);
    v10 = *(v0 + 1328);
    v11 = *(v0 + 1320);
    (*(*(v0 + 1352) + 104))(*(v0 + 1376), enum case for SFAirDropSend.Failure.cancelled(_:), *(v0 + 1344));
    (*(v10 + 8))(v9, v11);
    v12 = *(v0 + 936);
  }

  else
  {
    v13 = *(v0 + 936);

    swift_errorRetain();
    SFAirDropSend.Failure.init(_:)();
  }

  v14 = *(*(v0 + 960) + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_endpointService);
  sub_10047E40C();
  v15 = swift_task_alloc();
  *(v0 + 1712) = v15;
  *v15 = v0;
  v15[1] = sub_1003A2388;
  v16 = *(v0 + 960);

  return sub_1003ACFD4(1);
}

uint64_t sub_1003A4284()
{
  v1 = *(v0 + 1464);
  v2 = *(v0 + 1448);
  v3 = *(v0 + 1400);

  sub_10030D74C(v0 + 312);
  sub_100005508(v3, &qword_10097B1C0, &qword_1007FE4C8);
  sub_1003C41CC(v2, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_1003C41CC(v1, _s10AskRequestVMa);
  v4 = *(v0 + 1672);
  *(v0 + 1704) = v4;
  v5 = *(v0 + 1336);
  v6 = *(v0 + 1320);
  *(v0 + 936) = v4;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  v7 = swift_dynamicCast();
  v8 = *(v0 + 1376);
  if (v7)
  {
    v9 = *(v0 + 1336);
    v10 = *(v0 + 1328);
    v11 = *(v0 + 1320);
    (*(*(v0 + 1352) + 104))(*(v0 + 1376), enum case for SFAirDropSend.Failure.cancelled(_:), *(v0 + 1344));
    (*(v10 + 8))(v9, v11);
    v12 = *(v0 + 936);
  }

  else
  {
    v13 = *(v0 + 936);

    swift_errorRetain();
    SFAirDropSend.Failure.init(_:)();
  }

  v14 = *(*(v0 + 960) + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_endpointService);
  sub_10047E40C();
  v15 = swift_task_alloc();
  *(v0 + 1712) = v15;
  *v15 = v0;
  v15[1] = sub_1003A2388;
  v16 = *(v0 + 960);

  return sub_1003ACFD4(1);
}

uint64_t sub_1003A4468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = *(*(sub_10028088C(&qword_10097B310, &qword_1007FE6C8) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v7 = type metadata accessor for CodableError();
  v5[9] = v7;
  v8 = *(v7 - 8);
  v5[10] = v8;
  v9 = *(v8 + 64) + 15;
  v5[11] = swift_task_alloc();
  v10 = type metadata accessor for SFAirDrop.TransferType();
  v5[12] = v10;
  v11 = *(v10 - 8);
  v5[13] = v11;
  v12 = *(v11 + 64) + 15;
  v5[14] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v13 = static AirDropActor.shared;
  v5[15] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003A4600, v13, 0);
}

uint64_t sub_1003A4600()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[3];
  SFAirDropSend.Request.type.getter();
  LOBYTE(v4) = SFAirDrop.TransferType.isOnlyExchange.getter();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = v0[14];
    v6 = v0[11];
    v7 = v0[8];

    v8 = v0[1];

    return v8(_swiftEmptyArrayStorage);
  }

  else
  {
    v10 = v0[6];
    if (v10[1])
    {
      v11 = v10[11];
      v12 = v10[12];
    }

    else
    {
      v11 = 0;
      v12 = 0xF000000000000000;
    }

    v13 = swift_task_alloc();
    v0[16] = v13;
    *v13 = v0;
    v13[1] = sub_1003A4758;
    v14 = v0[3];

    return sub_1005435A0(v11, v12);
  }
}

uint64_t sub_1003A4758(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(v4 + 136) = a1;
  *(v4 + 144) = v1;

  v7 = *(v3 + 120);
  if (v1)
  {
    v8 = sub_1003A4E44;
  }

  else
  {
    v8 = sub_1003A488C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1003A488C()
{
  v1 = v0[17];
  if (*(v1 + 16))
  {
    v2 = v0[14];
    v3 = v0[11];
    v4 = v0[8];

    v5 = v0[1];

    return v5(v1);
  }

  else
  {
    v7 = v0[17];

    v8 = type metadata accessor for SFAirDropSend.Failure();
    sub_1003C3718(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
    v9 = swift_allocError();
    (*(*(v8 - 8) + 104))(v10, enum case for SFAirDropSend.Failure.badRequest(_:), v8);
    swift_willThrow();
    v0[19] = v9;
    v11 = v0[7];
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to load final URLs %@", v14, 0xCu);
      sub_100005508(v15, &qword_100975400, &qword_1007F65D0);
    }

    v17 = v0[9];
    v18 = v0[10];
    v19 = v0[8];

    v0[2] = v9;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v20 = swift_dynamicCast();
    v21 = *(v18 + 56);
    v23 = v0[10];
    v22 = v0[11];
    v25 = v0[8];
    v24 = v0[9];
    if (v20)
    {
      v21(v0[8], 0, 1, v0[9]);
      (*(v23 + 32))(v22, v25, v24);
    }

    else
    {
      v21(v0[8], 1, 1, v0[9]);
      swift_errorRetain();
      CodableError.init(_:)();
      if ((*(v23 + 48))(v25, 1, v24) != 1)
      {
        sub_100005508(v0[8], &qword_10097B310, &qword_1007FE6C8);
      }
    }

    v26 = v0[5];
    v27 = swift_task_alloc();
    v0[20] = v27;
    *v27 = v0;
    v27[1] = sub_1003A4C40;
    v28 = v0[11];
    v29 = v0[7];
    v31 = v0[3];
    v30 = v0[4];

    return sub_1003BEA1C(v31, v30, v26 & 0xFFFFFFFFFFLL, v28);
  }
}

uint64_t sub_1003A4C40()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 72);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_1003A4DAC, v2, 0);
}

uint64_t sub_1003A4DAC()
{
  v1 = v0[19];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[8];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[19];

  return v5();
}

uint64_t sub_1003A4E44()
{
  v1 = v0[18];
  v0[19] = v1;
  v2 = v0[7];
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
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to load final URLs %@", v5, 0xCu);
    sub_100005508(v6, &qword_100975400, &qword_1007F65D0);
  }

  v8 = v0[9];
  v9 = v0[10];
  v10 = v0[8];

  v0[2] = v1;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  v11 = swift_dynamicCast();
  v12 = *(v9 + 56);
  v14 = v0[10];
  v13 = v0[11];
  v16 = v0[8];
  v15 = v0[9];
  if (v11)
  {
    v12(v0[8], 0, 1, v0[9]);
    (*(v14 + 32))(v13, v16, v15);
  }

  else
  {
    v12(v0[8], 1, 1, v0[9]);
    swift_errorRetain();
    CodableError.init(_:)();
    if ((*(v14 + 48))(v16, 1, v15) != 1)
    {
      sub_100005508(v0[8], &qword_10097B310, &qword_1007FE6C8);
    }
  }

  v17 = v0[5];
  v18 = swift_task_alloc();
  v0[20] = v18;
  *v18 = v0;
  v18[1] = sub_1003A4C40;
  v19 = v0[11];
  v20 = v0[7];
  v22 = v0[3];
  v21 = v0[4];

  return sub_1003BEA1C(v22, v21, v17 & 0xFFFFFFFFFFLL, v19);
}

uint64_t sub_1003A50E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[50] = a2;
  v3[51] = a3;
  v3[49] = a1;
  v4 = *(*(sub_10028088C(&qword_10097B1B8, &qword_1007FE4C0) - 8) + 64) + 15;
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v5 = *(*(sub_10028088C(&qword_10097B1C0, &qword_1007FE4C8) - 8) + 64) + 15;
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v6 = *(*(type metadata accessor for SDAirDropDiscoveredEndpoint(0) - 8) + 64) + 15;
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v7 = *(*(_s10AskRequestVMa() - 8) + 64) + 15;
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v3[60] = v8;
  v9 = *(v8 - 8);
  v3[61] = v9;
  v10 = *(v9 + 64) + 15;
  v3[62] = swift_task_alloc();

  return _swift_task_switch(sub_1003A529C, 0, 0);
}

uint64_t sub_1003A529C()
{
  v1 = 0;
  v2 = v0[61];
  v3 = v0[50];
  v0[47] = v3;
  v4 = *(v3 + 16);
  while (v4 != v1)
  {
    v5 = v0[62];
    v6 = v0[60];
    (*(v2 + 16))(v5, v0[50] + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v1++, v6);
    URL._bridgeToObjectiveC()(v7);
    v9 = v8;
    v10 = [v8 isiWorkDocument];

    (*(v2 + 8))(v5, v6);
    if (v10)
    {
      v11 = 8;
      goto LABEL_6;
    }
  }

  v11 = 131074;
LABEL_6:
  v12 = async function pointer to Sequence<>.coordinateRead(withSaveToTempDir:options:)[1];
  v13 = swift_task_alloc();
  v0[63] = v13;
  v14 = sub_10028088C(&qword_100975610, &qword_1007F89B0);
  v15 = sub_100011630(&qword_10097B1D8, &qword_100975610, &qword_1007F89B0);
  *v13 = v0;
  v13[1] = sub_1003A5454;

  return Sequence<>.coordinateRead(withSaveToTempDir:options:)(0, v11, v14, v15);
}

uint64_t sub_1003A5454(uint64_t a1)
{
  v3 = *(*v2 + 504);
  v4 = *v2;
  v4[64] = a1;
  v4[65] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003A5DF4, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v4[66] = v5;
    *v5 = v4;
    v5[1] = sub_1003A55C8;
    v6 = v4[51];
    v7 = v4[50];

    return sub_1003A61D4(v7);
  }
}

uint64_t sub_1003A55C8()
{
  v2 = *(*v1 + 528);
  v3 = *v1;
  v3[67] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003A5EC8, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[68] = v4;
    *v4 = v3;
    v4[1] = sub_1003A5748;
    v5 = v3[58];
    v6 = v3[56];
    v7 = v3[54];
    v9 = v3[51];
    v8 = v3[52];

    return sub_1003A8774((v3 + 2), v5, v6, v7, v8);
  }
}

uint64_t sub_1003A5748()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 544);
  v5 = *v1;
  v3[69] = v0;
  v6 = *(v3 + 20);
  v7 = *(v3 + 4);
  v8 = v2[3];
  v3[70] = v8;
  v24 = v2[4];
  v23 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = *(v3 + 64);
  v21 = *(v3 + 15);
  v22 = *(v3 + 11);
  v19 = *(v3 + 13);
  v20 = *(v3 + 9);
  v12 = v2[17];
  v3[71] = v12;

  if (v0)
  {
    v13 = v3[64];

    v14 = sub_1003A5FA4;
  }

  else
  {
    *(v3 + 36) = v7;
    *(v3 + 148) = (v7 | (v6 << 32)) >> 32;
    v3[19] = v8;
    v3[20] = v24;
    v3[21] = v23;
    v3[22] = v9;
    v3[23] = v10;
    *(v3 + 192) = v11;
    *(v3 + 25) = v20;
    *(v3 + 27) = v22;
    *(v3 + 29) = v19;
    *(v3 + 31) = v21;
    v3[33] = v12;
    v15 = *(v3 + 11);
    *(v3 + 17) = *(v3 + 10);
    *(v3 + 18) = v15;
    v16 = *(v3 + 13);
    *(v3 + 19) = *(v3 + 12);
    *(v3 + 20) = v16;
    v17 = *(v3 + 15);
    *(v3 + 21) = *(v3 + 14);
    *(v3 + 22) = v17;
    v3[46] = v3[32];
    v14 = sub_1003A5998;
  }

  return _swift_task_switch(v14, 0, 0);
}

uint64_t sub_1003A5998()
{
  v1 = v0[71];
  v2 = v0[56];
  v3 = v0[57];
  v5 = v0[54];
  v4 = v0[55];
  v7 = v0[52];
  v6 = v0[53];
  sub_10000ED78(v0[58], v0[59], _s10AskRequestVMa);
  sub_10000ED78(v2, v3, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_10002C4E4(v5, v4, &qword_10097B1C0, &qword_1007FE4C8);
  sub_10002C4E4(v7, v6, &qword_10097B1B8, &qword_1007FE4C0);
  if (v1)
  {
    v8 = v0[64];
    v0[48] = v0[71];
    sub_10028088C(&qword_10097B1E0, &unk_1007FE540);
    sub_100011630(&qword_10097B1E8, &qword_10097B1E0, &unk_1007FE540);
    v9 = RandomAccessCollection<>.urls.getter();
  }

  else
  {
    v9 = v0[64];
  }

  v0[72] = v9;
  v10 = swift_task_alloc();
  v0[73] = v10;
  *v10 = v0;
  v10[1] = sub_1003A5B70;
  v11 = v0[70];
  v12 = v0[59];
  v13 = v0[57];
  v14 = v0[55];
  v15 = v0[53];
  v16 = v0[51];
  v17 = v0[49];

  return sub_1003A9FB4(v17, v12, v11, v13, (v0 + 34), v14, v9, v15);
}

uint64_t sub_1003A5B70()
{
  v2 = *(*v1 + 584);
  v3 = *(*v1 + 576);
  v6 = *v1;
  *(*v1 + 592) = v0;

  if (v0)
  {
    v4 = sub_1003A6078;
  }

  else
  {
    v4 = sub_1003A5CA0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003A5CA0()
{
  v1 = v0[70];
  v2 = v0[62];
  v4 = v0[58];
  v3 = v0[59];
  v5 = v0[56];
  v6 = v0[57];
  v7 = v0[54];
  v8 = v0[55];
  v9 = v0[53];
  v12 = v0[52];
  sub_10030D74C((v0 + 20));

  sub_100005508(v9, &qword_10097B1B8, &qword_1007FE4C0);
  sub_100005508(v8, &qword_10097B1C0, &qword_1007FE4C8);
  sub_1003C41CC(v6, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_1003C41CC(v3, _s10AskRequestVMa);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003A5DF4()
{
  v1 = v0[65];
  v2 = v0[62];
  v4 = v0[58];
  v3 = v0[59];
  v6 = v0[56];
  v5 = v0[57];
  v8 = v0[54];
  v7 = v0[55];
  v10 = v0[52];
  v9 = v0[53];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003A5EC8()
{
  v1 = v0[64];

  v2 = v0[67];
  v3 = v0[62];
  v5 = v0[58];
  v4 = v0[59];
  v7 = v0[56];
  v6 = v0[57];
  v9 = v0[54];
  v8 = v0[55];
  v11 = v0[52];
  v10 = v0[53];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1003A5FA4()
{
  v1 = v0[69];
  v2 = v0[62];
  v4 = v0[58];
  v3 = v0[59];
  v6 = v0[56];
  v5 = v0[57];
  v8 = v0[54];
  v7 = v0[55];
  v10 = v0[52];
  v9 = v0[53];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003A6078()
{
  v1 = v0[70];
  v2 = v0[59];
  v3 = v0[57];
  v4 = v0[55];
  v5 = v0[53];
  sub_10030D74C((v0 + 20));

  sub_100005508(v5, &qword_10097B1B8, &qword_1007FE4C0);
  sub_100005508(v4, &qword_10097B1C0, &qword_1007FE4C8);
  sub_1003C41CC(v3, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_1003C41CC(v2, _s10AskRequestVMa);
  v6 = v0[74];
  v7 = v0[62];
  v9 = v0[58];
  v8 = v0[59];
  v11 = v0[56];
  v10 = v0[57];
  v13 = v0[54];
  v12 = v0[55];
  v15 = v0[52];
  v14 = v0[53];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1003A61D4(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = type metadata accessor for SFInterventionResponse();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v6 = *(*(sub_10028088C(&qword_10097B2D8, &qword_1007FE688) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v7 = type metadata accessor for SFInterventionWorkflow();
  v2[17] = v7;
  v8 = *(v7 - 8);
  v2[18] = v8;
  v9 = *(v8 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v10 = sub_10028088C(&qword_10097B2E0, &qword_1007FE690);
  v2[21] = v10;
  v11 = *(v10 - 8);
  v2[22] = v11;
  v12 = *(v11 + 64) + 15;
  v2[23] = swift_task_alloc();
  v13 = sub_10028088C(&qword_10097B2E8, &qword_1007FE698);
  v2[24] = v13;
  v14 = *(v13 - 8);
  v2[25] = v14;
  v15 = *(v14 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v16 = type metadata accessor for Date();
  v2[28] = v16;
  v17 = *(v16 - 8);
  v2[29] = v17;
  v18 = *(v17 + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v19 = type metadata accessor for UUID();
  v2[32] = v19;
  v20 = *(v19 - 8);
  v2[33] = v20;
  v21 = *(v20 + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v22 = sub_10028088C(&unk_1009892E0, &unk_1007FE6A0);
  v2[36] = v22;
  v23 = *(v22 - 8);
  v2[37] = v23;
  v24 = *(v23 + 64) + 15;
  v2[38] = swift_task_alloc();
  v25 = type metadata accessor for SFAirDropSend.Transfer.State();
  v2[39] = v25;
  v26 = *(v25 - 8);
  v2[40] = v26;
  v27 = *(v26 + 64) + 15;
  v2[41] = swift_task_alloc();
  v28 = type metadata accessor for SFAirDropSend.Transfer();
  v2[42] = v28;
  v29 = *(v28 - 8);
  v2[43] = v29;
  v30 = *(v29 + 64) + 15;
  v2[44] = swift_task_alloc();
  v31 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v2[45] = v31;
  v32 = *(v31 - 8);
  v2[46] = v32;
  v33 = *(v32 + 64) + 15;
  v2[47] = swift_task_alloc();
  v34 = type metadata accessor for SFAirDrop.DeclineAction();
  v2[48] = v34;
  v35 = *(v34 - 8);
  v2[49] = v35;
  v36 = *(v35 + 64) + 15;
  v2[50] = swift_task_alloc();
  v37 = sub_10028088C(&qword_100976900, &unk_1007FD250);
  v2[51] = v37;
  v38 = *(v37 - 8);
  v2[52] = v38;
  v2[53] = *(v38 + 64);
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v39 = static AirDropActor.shared;
  v2[56] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003A677C, v39, 0);
}

uint64_t sub_1003A677C()
{
  v81 = v0;
  v1 = *(v0 + 88);
  v2 = type metadata accessor for SDAirDropUserSafetyContentHandler();
  *(v0 + 16) = swift_allocObject();
  *(v0 + 40) = v2;
  *(v0 + 48) = &off_1008E3278;
  v4 = sub_10049F1E0();
  v6 = v5;
  *(v0 + 456) = v4;
  *(v0 + 464) = v5;
  *(v0 + 472) = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_log;
  if (v3 == 2)
  {

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    sub_1003C3F0C(v4, v6, 2u);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v80 = v10;
      *v9 = 136315138;

      v11 = sub_100498E20(v4, v6, 2);
      v13 = v12;
      sub_1003C3F0C(v4, v6, 2u);
      v14 = sub_10000C4E4(v11, v13, &v80);

      *(v9 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v7, v8, "Send StateMachine UserSafety ANALYZE START {userSafetyMode: %s}", v9, 0xCu);
      sub_10000C60C(v10);

      v2 = *(v0 + 40);
    }

    else
    {
    }

    v23 = *(v0 + 440);
    v24 = *(v0 + 416);
    v56 = *(v0 + 432);
    v57 = *(v0 + 424);
    v59 = *(v0 + 400);
    v61 = *(v0 + 392);
    v65 = *(v0 + 384);
    v25 = *(v0 + 368);
    v26 = *(v0 + 376);
    v54 = *(v0 + 360);
    v55 = *(v0 + 408);
    v71 = *(v0 + 352);
    v73 = *(v0 + 344);
    v78 = *(v0 + 336);
    v27 = *(v0 + 328);
    v63 = *(v0 + 320);
    v75 = *(v0 + 304);
    v28 = *(v0 + 80);
    v67 = *(v0 + 312);
    v69 = *(v0 + 88);
    v29 = *sub_10002CDC0((v0 + 16), v2);
    sub_100498F44(v28);
    *v26 = 0x656E696C636544;
    v26[1] = 0xE700000000000000;
    (*(v25 + 104))(v26, enum case for SFAirDrop.ButtonConfiguration.text(_:), v54);
    (*(v24 + 16))(v56, v23, v55);
    v30 = (*(v24 + 80) + 16) & ~*(v24 + 80);
    v31 = swift_allocObject();
    (*(v24 + 32))(v31 + v30, v56, v55);
    SFAirDrop.DeclineAction.init(id:buttonConfiguration:hidden:operation:)();
    v32 = sub_10028088C(&unk_100986230, &qword_1007FE6B0);
    *(v0 + 480) = v32;
    v33 = *(v32 + 64);
    *v27 = v28;

    SFProgressTask.initialValue.getter();
    v34 = *(v61 + 16);
    *(v0 + 488) = v34;
    *(v0 + 496) = (v61 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v34(&v27[v33], v59, v65);
    *(v0 + 68) = enum case for SFAirDropSend.Transfer.State.analyzingFullContent(_:);
    v35 = *(v63 + 104);
    *(v0 + 504) = v35;
    *(v0 + 512) = (v63 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v35(v27);
    sub_100335364(v27, v71);
    v36 = *(v63 + 8);
    *(v0 + 520) = v36;
    *(v0 + 528) = (v63 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v36(v27, v67);
    v37 = *(v73 + 8);
    *(v0 + 536) = v37;
    *(v0 + 544) = (v73 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v37(v71, v78);
    SFProgressTask.makeAsyncIterator()();
    v38 = sub_1003C3718(&qword_100977C00, type metadata accessor for AirDropActor);
    *(v0 + 552) = v38;
    v39 = *(v0 + 448);
    v40 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
    v41 = swift_task_alloc();
    *(v0 + 560) = v41;
    *v41 = v0;
    v41[1] = sub_1003A6EAC;
    v42 = *(v0 + 304);
    v43 = *(v0 + 288);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 56, v39, v38, v43, v0 + 72);
  }

  else
  {
    v15 = v3;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v80 = v77;
      *v18 = 136315138;
      v19 = sub_100498E20(v4, v6, v15);
      v21 = v20;
      sub_1003C3F0C(v4, v6, v15);
      v22 = sub_10000C4E4(v19, v21, &v80);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Send StateMachine UserSafety SKIP {userSafetyMode: %s}", v18, 0xCu);
      sub_10000C60C(v77);
    }

    else
    {

      sub_1003C3F0C(v4, v6, v15);
    }

    v44 = *(v0 + 432);
    v45 = *(v0 + 440);
    v46 = *(v0 + 400);
    v47 = *(v0 + 376);
    v48 = *(v0 + 352);
    v49 = *(v0 + 328);
    v50 = *(v0 + 304);
    v51 = *(v0 + 280);
    v58 = *(v0 + 272);
    v60 = *(v0 + 248);
    v62 = *(v0 + 240);
    v64 = *(v0 + 216);
    v66 = *(v0 + 208);
    v68 = *(v0 + 184);
    v70 = *(v0 + 160);
    v72 = *(v0 + 152);
    v74 = *(v0 + 128);
    v76 = *(v0 + 120);
    v79 = *(v0 + 112);
    sub_10000C60C((v0 + 16));

    v52 = *(v0 + 8);

    return v52();
  }
}

uint64_t sub_1003A6EAC()
{
  v2 = *v1;
  v3 = *(*v1 + 560);
  v8 = *v1;

  if (v0)
  {
    v4 = v2[56];
    sub_1003C3F0C(v2[57], v2[58], 2u);
    v5 = sub_1003A8228;
    v6 = v4;
  }

  else
  {
    v6 = v2[56];
    v5 = sub_1003A6FD4;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1003A6FD4()
{
  v1 = *(v0 + 56);
  if (*(v0 + 64))
  {
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288), v1);
    v2 = async function pointer to SFProgressTask.finalValue.getter[1];
    v3 = swift_task_alloc();
    *(v0 + 568) = v3;
    *v3 = v0;
    v3[1] = sub_1003A71F4;
    v4 = *(v0 + 440);
    v5 = *(v0 + 408);

    return SFProgressTask.finalValue.getter(v0 + 65, v5);
  }

  else
  {
    v28 = *(v0 + 536);
    v29 = *(v0 + 544);
    v26 = *(v0 + 520);
    v27 = *(v0 + 528);
    v6 = *(v0 + 504);
    v7 = *(v0 + 512);
    v8 = *(v0 + 68);
    v10 = *(v0 + 488);
    v9 = *(v0 + 496);
    v11 = *(v0 + 400);
    v12 = *(v0 + 384);
    v13 = *(v0 + 352);
    v14 = *(v0 + 328);
    v25 = *(v0 + 336);
    v15 = *(v0 + 312);
    v16 = *(v0 + 88);
    v17 = *(*(v0 + 480) + 64);
    *v14 = *(v0 + 80);
    *(v14 + 8) = v1;
    v10(v14 + v17, v11, v12);
    v6(v14, v8, v15);

    sub_100335364(v14, v13);
    v26(v14, v15);
    v28(v13, v25);
    v18 = *(v0 + 552);
    v19 = *(v0 + 448);
    v20 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
    v21 = swift_task_alloc();
    *(v0 + 560) = v21;
    *v21 = v0;
    v21[1] = sub_1003A6EAC;
    v22 = *(v0 + 304);
    v23 = *(v0 + 288);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 56, v19, v18, v23, v0 + 72);
  }
}

uint64_t sub_1003A71F4()
{
  v2 = *v1;
  v3 = *(*v1 + 568);
  v8 = *v1;
  *(*v1 + 576) = v0;

  if (v0)
  {
    v4 = v2[56];
    sub_1003C3F0C(v2[57], v2[58], 2u);
    v5 = sub_1003A83EC;
    v6 = v4;
  }

  else
  {
    v6 = v2[56];
    v5 = sub_1003A7320;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1003A7320()
{
  v1 = *(v0 + 65);
  v2 = *(v0 + 88) + *(v0 + 472);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Send StateMachine UserSafety ANALYZE END {isSensitiveContent: %{BOOL}d}", v5, 8u);
  }

  v6 = *(v0 + 440);
  v7 = *(v0 + 408);
  v8 = *(v0 + 416);
  v10 = *(v0 + 392);
  v9 = *(v0 + 400);
  v11 = *(v0 + 384);

  (*(v10 + 8))(v9, v11);
  (*(v8 + 8))(v6, v7);
  if (v1)
  {
    v12 = *(v0 + 88) + *(v0 + 472);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Send StateMachine UserSafety INTERVENTION START", v15, 2u);
    }

    v78 = *(v0 + 536);
    v80 = *(v0 + 544);
    v72 = *(v0 + 520);
    v74 = *(v0 + 528);
    v64 = *(v0 + 504);
    v66 = *(v0 + 512);
    v68 = *(v0 + 352);
    v70 = *(v0 + 336);
    v62 = *(v0 + 328);
    v63 = *(v0 + 312);
    v17 = *(v0 + 272);
    v16 = *(v0 + 280);
    v19 = *(v0 + 256);
    v18 = *(v0 + 264);
    v45 = v19;
    v20 = *(v0 + 248);
    v47 = *(v0 + 232);
    v21 = *(v0 + 216);
    v52 = *(v0 + 224);
    v53 = *(v0 + 200);
    v54 = *(v0 + 208);
    v55 = *(v0 + 192);
    v58 = *(v0 + 184);
    v60 = *(v0 + 176);
    v61 = *(v0 + 168);
    v48 = *(v0 + 160);
    v49 = *(v0 + 240);
    v76 = *(v0 + 152);
    v50 = *(v0 + 144);
    v82 = *(v0 + 136);
    v46 = *(v0 + 96);
    v56 = *(v0 + 128);
    v57 = *(v0 + 88);
    v59 = *(v0 + 80);

    UUID.init()();
    static Date.now.getter();
    v44 = *(v18 + 16);
    v44(v17, v16, v19);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1003C3718(&qword_10097B2F0, &type metadata accessor for SFInterventionResponse);
    v22 = sub_1003C3718(&qword_10097B2F8, &type metadata accessor for SFInterventionResponse);
    v23 = sub_1003C3718(&qword_10097B300, &type metadata accessor for SFInterventionResponse);
    SFAirDrop.PermissionRequest.InterventionAction.init(id:operation:)();
    v44(v17, v16, v45);
    (*(v47 + 16))(v49, v20, v52);
    LODWORD(v52) = enum case for SFInterventionWorkflow.send(_:);
    v51 = *(v50 + 104);
    v51(v48);
    (*(v53 + 16))(v54, v21, v55);
    v24 = sub_10028088C(&qword_10097B308, &qword_1007FE6B8);
    (*(*(v24 - 8) + 56))(v56, 1, 1, v24);
    SFAirDrop.PermissionRequest.init(id:requestDate:interventionWorkflow:action:isAnswered:telemetryData:)();
    v25 = *(sub_10028088C(&unk_100986220, &qword_1007FE6C0) + 48);
    *v62 = v59;
    (*(v60 + 16))(&v62[v25], v58, v61);
    v64(v62, enum case for SFAirDropSend.Transfer.State.waitingForSensitiveContentResponse(_:), v63);

    sub_100335364(v62, v68);
    v72(v62, v63);
    v78(v68, v70);
    *(v0 + 584) = [objc_allocWithZone(type metadata accessor for SDAirDropUserSafetyInterventionAlert()) init];
    (v51)(v76, v52, v82);
    v26 = swift_task_alloc();
    *(v0 + 592) = v26;
    *v26 = v0;
    v26[1] = sub_1003A7A68;
    v27 = *(v0 + 152);
    v28 = *(v0 + 120);

    return sub_1004B1884(v28, v27);
  }

  else
  {
    v30 = *(v0 + 88);
    sub_1003C3F0C(*(v0 + 456), *(v0 + 464), 2u);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Send StateMachine UserSafety INTERVENTION SKIP. Content is not sensitive", v33, 2u);
    }

    v35 = *(v0 + 432);
    v34 = *(v0 + 440);
    v36 = *(v0 + 400);
    v37 = *(v0 + 376);
    v38 = *(v0 + 352);
    v39 = *(v0 + 328);
    v40 = *(v0 + 304);
    v42 = *(v0 + 272);
    v41 = *(v0 + 280);
    v65 = *(v0 + 248);
    v67 = *(v0 + 240);
    v69 = *(v0 + 216);
    v71 = *(v0 + 208);
    v73 = *(v0 + 184);
    v75 = *(v0 + 160);
    v77 = *(v0 + 152);
    v79 = *(v0 + 128);
    v81 = *(v0 + 120);
    v83 = *(v0 + 112);
    sub_10000C60C((v0 + 16));

    v43 = *(v0 + 8);

    return v43();
  }
}

uint64_t sub_1003A7A68()
{
  v2 = *v1;
  v3 = *(*v1 + 592);
  v4 = *v1;
  v2[75] = v0;

  v5 = v2[73];
  if (v0)
  {
    v7 = v2[57];
    v6 = v2[58];
    v8 = v2[56];
    (*(v2[18] + 8))(v2[19], v2[17]);

    sub_1003C3F0C(v7, v6, 2u);
    v9 = sub_1003A8590;
    v10 = v8;
  }

  else
  {
    v11 = v2[56];
    (*(v2[18] + 8))(v2[19], v2[17]);

    v9 = sub_1003A7C00;
    v10 = v11;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_1003A7C00()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];
  (*(v3 + 16))(v1, v0[15], v2);
  v4 = (*(v3 + 88))(v1, v2);
  if (v4 == enum case for SFInterventionResponse.accept(_:))
  {
    v5 = v0[59];
    v6 = v0[11];
    sub_1003C3F0C(v0[57], v0[58], 2u);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[35];
    v11 = v0[33];
    v83 = v0[32];
    v87 = v0[31];
    v12 = v0[29];
    v75 = v0[27];
    v79 = v0[28];
    v13 = v0[25];
    v14 = v0[22];
    v67 = v0[23];
    v71 = v0[24];
    v15 = v0[15];
    v59 = v15;
    v63 = v0[21];
    v17 = v0[12];
    v16 = v0[13];
    if (v9)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Send StateMachine UserSafety INTERVENTION ACCEPTED", v18, 2u);
    }

    (*(v16 + 8))(v59, v17);
    (*(v14 + 8))(v67, v63);
    (*(v13 + 8))(v75, v71);
    (*(v12 + 8))(v87, v79);
    (*(v11 + 8))(v10, v83);
    v20 = v0[54];
    v19 = v0[55];
    v21 = v0[50];
    v22 = v0[47];
    v23 = v0[44];
    v24 = v0[41];
    v25 = v0[38];
    v27 = v0[34];
    v26 = v0[35];
    v54 = v0[31];
    v56 = v0[30];
    v60 = v0[27];
    v64 = v0[26];
    v68 = v0[23];
    v72 = v0[20];
    v76 = v0[19];
    v80 = v0[16];
    v84 = v0[15];
    v88 = v0[14];
    sub_10000C60C(v0 + 2);

    v28 = v0[1];
  }

  else
  {
    if (v4 != enum case for SFInterventionResponse.reject(_:))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v29 = v0[59];
    v30 = v0[11];
    sub_1003C3F0C(v0[57], v0[58], 2u);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Send StateMachine UserSafety INTERVENTION REJECTED", v33, 2u);
    }

    v34 = v0[33];
    v81 = v0[32];
    v85 = v0[35];
    v35 = v0[29];
    v73 = v0[28];
    v77 = v0[31];
    v36 = v0[25];
    v65 = v0[24];
    v69 = v0[27];
    v37 = v0[22];
    v57 = v0[21];
    v61 = v0[23];
    v38 = v0[15];
    v40 = v0[12];
    v39 = v0[13];

    v41 = type metadata accessor for SFAirDropSend.Failure();
    sub_1003C3718(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
    swift_allocError();
    (*(*(v41 - 8) + 104))(v42, enum case for SFAirDropSend.Failure.cancelled(_:), v41);
    swift_willThrow();
    (*(v39 + 8))(v38, v40);
    (*(v37 + 8))(v61, v57);
    (*(v36 + 8))(v69, v65);
    (*(v35 + 8))(v77, v73);
    (*(v34 + 8))(v85, v81);
    v43 = v0[54];
    v44 = v0[55];
    v45 = v0[50];
    v46 = v0[47];
    v47 = v0[44];
    v48 = v0[41];
    v49 = v0[38];
    v51 = v0[34];
    v50 = v0[35];
    v53 = v0[31];
    v55 = v0[30];
    v58 = v0[27];
    v62 = v0[26];
    v66 = v0[23];
    v70 = v0[20];
    v74 = v0[19];
    v78 = v0[16];
    v82 = v0[15];
    v86 = v0[14];
    sub_10000C60C(v0 + 2);

    v28 = v0[1];
  }

  return v28();
}

uint64_t sub_1003A8228()
{
  v1 = v0[55];
  v2 = v0[51];
  v3 = v0[52];
  v5 = v0[49];
  v4 = v0[50];
  v6 = v0[48];
  (*(v0[37] + 8))(v0[38], v0[36]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v28 = v0[9];
  v7 = v0[54];
  v8 = v0[55];
  v9 = v0[50];
  v10 = v0[47];
  v11 = v0[44];
  v12 = v0[41];
  v13 = v0[38];
  v15 = v0[34];
  v14 = v0[35];
  v18 = v0[31];
  v19 = v0[30];
  v20 = v0[27];
  v21 = v0[26];
  v22 = v0[23];
  v23 = v0[20];
  v24 = v0[19];
  v25 = v0[16];
  v26 = v0[15];
  v27 = v0[14];
  sub_10000C60C(v0 + 2);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1003A83EC()
{
  v1 = v0[55];
  v2 = v0[51];
  v3 = v0[52];
  (*(v0[49] + 8))(v0[50], v0[48]);
  (*(v3 + 8))(v1, v2);
  v25 = v0[72];
  v4 = v0[54];
  v5 = v0[55];
  v6 = v0[50];
  v7 = v0[47];
  v8 = v0[44];
  v9 = v0[41];
  v10 = v0[38];
  v12 = v0[34];
  v11 = v0[35];
  v15 = v0[31];
  v16 = v0[30];
  v17 = v0[27];
  v18 = v0[26];
  v19 = v0[23];
  v20 = v0[20];
  v21 = v0[19];
  v22 = v0[16];
  v23 = v0[15];
  v24 = v0[14];
  sub_10000C60C(v0 + 2);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1003A8590()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[31];
  v5 = v0[28];
  v6 = v0[29];
  v7 = v0[27];
  v8 = v0[24];
  v9 = v0[25];
  (*(v0[22] + 8))(v0[23], v0[21]);
  (*(v9 + 8))(v7, v8);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);
  v31 = v0[75];
  v10 = v0[54];
  v11 = v0[55];
  v12 = v0[50];
  v13 = v0[47];
  v14 = v0[44];
  v15 = v0[41];
  v16 = v0[38];
  v18 = v0[34];
  v17 = v0[35];
  v21 = v0[31];
  v22 = v0[30];
  v23 = v0[27];
  v24 = v0[26];
  v25 = v0[23];
  v26 = v0[20];
  v27 = v0[19];
  v28 = v0[16];
  v29 = v0[15];
  v30 = v0[14];
  sub_10000C60C(v0 + 2);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1003A8774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[134] = v5;
  v6[133] = a5;
  v6[132] = a4;
  v6[131] = a3;
  v6[130] = a2;
  v6[129] = a1;
  v7 = sub_10028088C(&qword_10097B320, &qword_100806120);
  v6[135] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[136] = swift_task_alloc();
  v6[137] = swift_task_alloc();
  v6[138] = swift_task_alloc();
  v6[139] = swift_task_alloc();
  v6[140] = swift_task_alloc();
  v6[141] = swift_task_alloc();
  v6[142] = swift_task_alloc();
  v6[143] = swift_task_alloc();
  v6[144] = swift_task_alloc();
  v9 = type metadata accessor for SFAirDropSend.Transfer.State();
  v6[145] = v9;
  v10 = *(v9 - 8);
  v6[146] = v10;
  v11 = *(v10 + 64) + 15;
  v6[147] = swift_task_alloc();
  v12 = type metadata accessor for SFAirDropSend.Transfer();
  v6[148] = v12;
  v13 = *(v12 - 8);
  v6[149] = v13;
  v14 = *(v13 + 64) + 15;
  v6[150] = swift_task_alloc();
  v6[151] = swift_task_alloc();
  v6[152] = swift_task_alloc();
  v15 = type metadata accessor for SFAirDrop.TransferType();
  v6[153] = v15;
  v16 = *(v15 - 8);
  v6[154] = v16;
  v17 = *(v16 + 64) + 15;
  v6[155] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v18 = static AirDropActor.shared;
  v6[156] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003A89F0, v18, 0);
}

uint64_t sub_1003A89F0()
{
  v1 = v0[155];
  v2 = v0[154];
  v3 = v0[153];
  v4 = v0[134];
  v5 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_sendRequest;
  SFAirDropSend.Request.type.getter();
  v6 = (*(v2 + 88))(v1, v3);
  v7 = enum case for SFAirDrop.TransferType.exchange(_:);
  (*(v2 + 8))(v1, v3);
  if (v6 == v7 && (v8 = *(v0[134] + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_endpoints), , CurrentValueSubject.value.getter(), , v9 = *(v0[128] + 16), , v9 == 1))
  {
    v10 = swift_task_alloc();
    v0[157] = v10;
    *v10 = v0;
    v10[1] = sub_1003A8E14;
    v11 = v0[134];
    v12 = v0[133];
    v13 = v0[132];
    v14 = v0[131];
    v15 = v0[130];

    return sub_1003ADDF8((v0 + 18), v15, v14, v13, v12);
  }

  else
  {
    v45 = v5;
    v46 = v4;
    v17 = v0[134];
    v0[158] = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_log;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Send StateMachine ASK START", v20, 2u);
    }

    v21 = v0[151];
    v22 = v0[149];
    v23 = v0[148];
    v37 = v0[152];
    v24 = v0[147];
    v25 = v0[146];
    v26 = v0[145];
    v43 = v0[150];
    v44 = v0[144];
    v42 = v0[135];
    v27 = v0[134];

    v40 = *(v27 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_yield + 8);
    v41 = *(v27 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_yield);
    v28 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer;
    v39 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer;
    swift_beginAccess();
    v38 = *(v22 + 16);
    v38(v21, v27 + v28, v23);
    (*(v25 + 104))(v24, enum case for SFAirDropSend.Transfer.State.waitingForAskResponse(_:), v26);
    SFAirDropSend.Transfer.update(state:)();
    (*(v25 + 8))(v24, v26);
    v29 = *(v22 + 8);
    v0[159] = v29;
    v0[160] = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v29(v21, v23);
    v41(v37);
    v29(v37, v23);
    v30 = v42[12];
    v31 = v42[20];
    v32 = v42[32];
    v38(v43, v27 + v39, v23);
    v33 = *(v27 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_deviceStatus);
    v34 = swift_task_alloc();
    v0[161] = v34;
    *v34 = v0;
    v34[1] = sub_1003A9264;
    v35 = v0[150];
    v36 = v0[134];

    return sub_1003B0DF8((v0 + 2), v44 + v30, v44 + v31, v44 + v32, v46 + v45, v35, v33);
  }
}

uint64_t sub_1003A8E14()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 1256);
  v35 = *v1;
  v17 = *(*v1 + 148);
  v16 = *(*v1 + 144);
  v28 = *(*v1 + 152);
  v27 = *(*v1 + 160);
  v26 = *(*v1 + 168);
  v25 = *(*v1 + 176);
  v24 = *(*v1 + 184);
  v19 = *(*v1 + 192);
  v22 = *(*v1 + 216);
  v23 = *(*v1 + 200);
  v20 = *(*v1 + 248);
  v21 = *(*v1 + 232);
  v18 = *(*v1 + 264);

  v5 = v2[155];
  v6 = v2[152];
  v7 = v2[151];
  v8 = v2[150];
  v9 = v2[147];
  v10 = v2[144];
  v11 = v2[143];
  v29 = v2[142];
  v30 = v2[141];
  v31 = v2[140];
  v32 = v2[139];
  v33 = v2[138];
  v34 = v2[137];
  v12 = v2[136];
  if (v0)
  {
  }

  else
  {
    v14 = v3[129];

    *(v14 + 4) = (v16 | (v17 << 32)) >> 32;
    *v14 = v16;
    *(v14 + 8) = v28;
    *(v14 + 16) = v27;
    *(v14 + 24) = v26;
    *(v14 + 32) = v25;
    *(v14 + 40) = v24;
    *(v14 + 48) = v19;
    *(v14 + 72) = v22;
    *(v14 + 56) = v23;
    *(v14 + 104) = v20;
    *(v14 + 88) = v21;
    *(v14 + 120) = v18;
  }

  v13 = *(v35 + 8);

  return v13();
}

uint64_t sub_1003A9264()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 1288);
  v5 = *v1;
  v3[162] = v0;
  v6 = *(v3 + 4);
  *(v3 + 1308) = *(v3 + 20);
  *(v3 + 326) = v6;
  v3[164] = v2[3];
  v3[165] = v2[4];
  *(v3 + 83) = *(v3 + 5);
  v3[168] = v2[7];
  *(v3 + 1443) = *(v3 + 64);
  *(v3 + 169) = *(v3 + 9);
  *(v3 + 171) = *(v3 + 11);
  *(v3 + 173) = *(v3 + 13);
  *(v3 + 175) = *(v3 + 15);
  v3[177] = v2[17];

  v7 = v3[160];
  if (v0)
  {
    v8 = v3[156];
    (v3[159])(v3[150], v3[148]);
    v9 = sub_1003A9E84;
  }

  else
  {
    v10 = v3[159];
    v8 = v3[156];
    v11 = v3[150];
    v12 = v3[148];
    v13 = v3[135];
    *(v3 + 356) = v13[16];
    *(v3 + 357) = v13[24];
    *(v3 + 358) = v13[28];
    v10(v11, v12);
    v9 = sub_1003A947C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1003A947C()
{
  v149 = v0;
  v1 = *(v0 + 1432);
  v2 = *(v0 + 1424);
  v3 = *(v0 + 1416);
  v4 = *(v0 + 1443);
  v5 = *(v0 + 1344);
  v6 = *(v0 + 1336);
  v7 = *(v0 + 1320);
  v8 = *(v0 + 1312);
  v9 = *(v0 + 1304);
  v10 = *(v0 + 1264);
  v11 = *(v0 + 1152);
  v12 = *(v0 + 1144);
  v13 = *(v0 + 1072);
  v14 = v11 + *(v0 + 1428);
  v15 = *(v0 + 1352);
  v16 = *(v0 + 1368);
  v17 = *(v0 + 1384);
  v18 = *(v0 + 1400);
  *(v11 + 4) = *(v0 + 1308);
  *v11 = v9;
  *(v11 + v2) = v8;
  *v14 = v7;
  *(v14 + 16) = v6;
  *(v14 + 24) = v5;
  *(v14 + 32) = v4;
  v19 = *(v0 + 1436);
  *(v14 + 36) = *(v0 + 1439);
  *(v14 + 33) = v19;
  *(v14 + 40) = v15;
  *(v14 + 56) = v16;
  *(v14 + 72) = v17;
  *(v14 + 88) = v18;
  *(v11 + v1) = v3;
  sub_10000FF90(v11, v12, &qword_10097B320, &qword_100806120);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 1144);
  if (v22)
  {
    v24 = *(v0 + 1136);
    v25 = *(v0 + 1080);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v148 = v27;
    *v26 = 136315138;
    sub_10000FF90(v23, v24, &qword_10097B320, &qword_100806120);
    v28 = v25[12];

    v29 = v25[20];
    v30 = v24 + v25[24];
    v32 = *(v30 + 64);
    v31 = *(v30 + 80);
    v33 = *(v30 + 48);
    *(v0 + 368) = *(v30 + 96);
    *(v0 + 336) = v32;
    *(v0 + 352) = v31;
    *(v0 + 320) = v33;
    v34 = *v30;
    v35 = *(v30 + 32);
    *(v0 + 288) = *(v30 + 16);
    *(v0 + 304) = v35;
    *(v0 + 272) = v34;
    v36 = *(v24 + v25[28]);

    sub_100005508(v24 + v25[32], &qword_10097B1B8, &qword_1007FE4C0);
    sub_1003C41CC(v24 + v29, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_1003C41CC(v24 + v28, _s10AskRequestVMa);
    v37 = sub_1005A43F8();
    v39 = v38;
    sub_10030D74C(v0 + 272);
    sub_100005508(v23, &qword_10097B320, &qword_100806120);
    v40 = sub_10000C4E4(v37, v39, &v148);

    *(v26 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v20, v21, "Send StateMachine ASK END {response: %s}", v26, 0xCu);
    sub_10000C60C(v27);
  }

  else
  {

    sub_100005508(v23, &qword_10097B320, &qword_100806120);
  }

  v41 = *(v0 + 1152);
  v42 = *(v0 + 1136);
  v43 = *(v0 + 1128);
  v142 = *(v0 + 1112);
  v144 = *(v0 + 1104);
  v146 = *(v0 + 1120);
  v115 = *(v0 + 1096);
  v117 = *(v0 + 1088);
  v44 = *(v0 + 1080);
  v131 = *(v0 + 1064);
  v112 = *(v0 + 1056);
  v127 = *(v0 + 1048);
  v134 = *(v0 + 1040);
  sub_10000FF90(v41, v42, &qword_10097B320, &qword_100806120);
  v141 = *v42;
  v140 = *(v42 + 4);
  v138 = v44[12];

  v136 = v44[20];
  v45 = v42 + v44[24];
  v47 = *(v45 + 64);
  v46 = *(v45 + 80);
  v48 = *(v45 + 48);
  *(v0 + 992) = *(v45 + 96);
  *(v0 + 960) = v47;
  *(v0 + 976) = v46;
  *(v0 + 944) = v48;
  v49 = *v45;
  v50 = *(v45 + 32);
  *(v0 + 912) = *(v45 + 16);
  *(v0 + 928) = v50;
  *(v0 + 896) = v49;
  sub_10030D74C(v0 + 896);
  v51 = *(v42 + v44[28]);

  v133 = v44[32];
  sub_10000FF90(v41, v43, &qword_10097B320, &qword_100806120);
  v52 = v44[12];

  v132 = v44[20];
  v53 = v43 + v44[24];
  v55 = *(v53 + 64);
  v54 = *(v53 + 80);
  v56 = *(v53 + 48);
  *(v0 + 888) = *(v53 + 96);
  *(v0 + 856) = v55;
  *(v0 + 872) = v54;
  *(v0 + 840) = v56;
  v57 = *v53;
  v58 = *(v53 + 32);
  *(v0 + 808) = *(v53 + 16);
  *(v0 + 824) = v58;
  *(v0 + 792) = v57;
  sub_10030D74C(v0 + 792);
  v129 = v43;
  v59 = *(v43 + v44[28]);

  v130 = v44[32];
  sub_10000ED78(v43 + v52, v134, _s10AskRequestVMa);
  sub_10000FF90(v41, v146, &qword_10097B320, &qword_100806120);
  v135 = *(v146 + v44[16]);
  v118 = v44[20];
  v119 = v44[12];
  v60 = v146 + v44[24];
  v62 = *(v60 + 16);
  v61 = *(v60 + 32);
  *(v0 + 688) = *v60;
  *(v0 + 704) = v62;
  *(v0 + 720) = v61;
  v63 = *(v60 + 96);
  v64 = *(v60 + 80);
  v65 = *(v60 + 48);
  *(v0 + 752) = *(v60 + 64);
  *(v0 + 768) = v64;
  *(v0 + 784) = v63;
  *(v0 + 736) = v65;
  sub_10030D74C(v0 + 688);
  v66 = *(v146 + v44[28]);

  v116 = v44[32];
  sub_10000FF90(v41, v142, &qword_10097B320, &qword_100806120);
  v114 = v44[12];

  v67 = v44[20];
  v68 = v142 + v44[24];
  v70 = *(v68 + 64);
  v69 = *(v68 + 80);
  v71 = *(v68 + 48);
  *(v0 + 680) = *(v68 + 96);
  *(v0 + 648) = v70;
  *(v0 + 664) = v69;
  *(v0 + 632) = v71;
  v72 = *v68;
  v73 = *(v68 + 32);
  *(v0 + 600) = *(v68 + 16);
  *(v0 + 616) = v73;
  *(v0 + 584) = v72;
  sub_10030D74C(v0 + 584);
  v74 = *(v142 + v44[28]);

  v111 = v44[32];
  sub_10000ED78(v142 + v67, v127, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_10000FF90(v41, v144, &qword_10097B320, &qword_100806120);
  v110 = v44[12];

  v109 = v44[20];
  v75 = v144 + v44[24];
  v128 = *v75;
  v125 = *(v75 + 24);
  v126 = *(v75 + 16);
  v124 = *(v75 + 32);
  v76 = *(v144 + v44[28]);
  v122 = *(v75 + 72);
  v123 = *(v75 + 40);
  v120 = *(v75 + 88);
  v121 = *(v75 + 56);

  v108 = v44[32];
  v77 = type metadata accessor for SFAirDrop.ContactRequest();
  (*(*(v77 - 8) + 56))(v112, 1, 1, v77);
  sub_10000FF90(v41, v115, &qword_10097B320, &qword_100806120);
  v107 = v44[12];

  v106 = v44[20];
  v78 = v115 + v44[24];
  v80 = *(v78 + 64);
  v79 = *(v78 + 80);
  v81 = *(v78 + 48);
  *(v0 + 576) = *(v78 + 96);
  *(v0 + 544) = v80;
  *(v0 + 560) = v79;
  *(v0 + 528) = v81;
  v82 = *v78;
  v83 = *(v78 + 32);
  *(v0 + 496) = *(v78 + 16);
  *(v0 + 512) = v83;
  *(v0 + 480) = v82;
  sub_10030D74C(v0 + 480);
  v113 = *(v115 + v44[28]);
  v105 = v44[32];
  sub_10002C4E4(v41, v117, &qword_10097B320, &qword_100806120);
  v84 = v44[12];

  v85 = v44[20];
  v86 = v117 + v44[24];
  v88 = *(v86 + 64);
  v87 = *(v86 + 80);
  v89 = *(v86 + 48);
  *(v0 + 472) = *(v86 + 96);
  *(v0 + 440) = v88;
  *(v0 + 456) = v87;
  *(v0 + 424) = v89;
  v90 = *v86;
  v91 = *(v86 + 32);
  *(v0 + 392) = *(v86 + 16);
  *(v0 + 408) = v91;
  *(v0 + 376) = v90;
  sub_10030D74C(v0 + 376);
  v92 = *(v117 + v44[28]);

  sub_10002C4E4(v117 + v44[32], v131, &qword_10097B1B8, &qword_1007FE4C0);
  sub_1003C41CC(v117 + v85, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_1003C41CC(v117 + v84, _s10AskRequestVMa);
  sub_100005508(v115 + v105, &qword_10097B1B8, &qword_1007FE4C0);
  sub_1003C41CC(v115 + v106, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_1003C41CC(v115 + v107, _s10AskRequestVMa);
  sub_100005508(v144 + v108, &qword_10097B1B8, &qword_1007FE4C0);
  sub_1003C41CC(v144 + v109, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_1003C41CC(v144 + v110, _s10AskRequestVMa);
  sub_100005508(v142 + v111, &qword_10097B1B8, &qword_1007FE4C0);
  sub_1003C41CC(v142 + v114, _s10AskRequestVMa);
  sub_100005508(v146 + v116, &qword_10097B1B8, &qword_1007FE4C0);
  sub_1003C41CC(v146 + v118, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_1003C41CC(v146 + v119, _s10AskRequestVMa);
  sub_100005508(v129 + v130, &qword_10097B1B8, &qword_1007FE4C0);
  sub_1003C41CC(v129 + v132, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_100005508(v42 + v133, &qword_10097B1B8, &qword_1007FE4C0);
  sub_1003C41CC(v42 + v136, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_1003C41CC(v42 + v138, _s10AskRequestVMa);
  v93 = *(v0 + 1240);
  v94 = *(v0 + 1216);
  v95 = *(v0 + 1208);
  v96 = *(v0 + 1200);
  v97 = *(v0 + 1176);
  v98 = *(v0 + 1152);
  v99 = *(v0 + 1144);
  v100 = *(v0 + 1136);
  v101 = *(v0 + 1128);
  v137 = *(v0 + 1120);
  v139 = *(v0 + 1112);
  v143 = *(v0 + 1104);
  v145 = *(v0 + 1096);
  v147 = *(v0 + 1088);
  v102 = *(v0 + 1032);

  *(v102 + 4) = v140;
  *v102 = v141;
  *(v102 + 8) = v135;
  *(v102 + 16) = v128;
  *(v102 + 32) = v126;
  *(v102 + 40) = v125;
  *(v102 + 48) = v124;
  *(v102 + 72) = v121;
  *(v102 + 56) = v123;
  *(v102 + 104) = v120;
  *(v102 + 88) = v122;
  *(v102 + 120) = v113;
  v103 = *(v0 + 8);

  return v103();
}

uint64_t sub_1003A9E84()
{
  v1 = v0[155];
  v2 = v0[152];
  v3 = v0[151];
  v4 = v0[150];
  v5 = v0[147];
  v6 = v0[144];
  v7 = v0[143];
  v8 = v0[142];
  v9 = v0[141];
  v10 = v0[140];
  v13 = v0[139];
  v14 = v0[138];
  v15 = v0[137];
  v16 = v0[136];
  v17 = v0[162];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003A9FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[54] = a8;
  v9[55] = v8;
  v9[52] = a6;
  v9[53] = a7;
  v9[50] = a4;
  v9[51] = a5;
  v9[48] = a2;
  v9[49] = a3;
  v9[47] = a1;
  v10 = type metadata accessor for SFAirDrop.NetworkMetrics();
  v9[56] = v10;
  v11 = *(v10 - 8);
  v9[57] = v11;
  v12 = *(v11 + 64) + 15;
  v9[58] = swift_task_alloc();
  v9[59] = swift_task_alloc();
  v13 = type metadata accessor for SFAirDrop.DeviceRelationship();
  v9[60] = v13;
  v14 = *(v13 - 8);
  v9[61] = v14;
  v15 = *(v14 + 64) + 15;
  v9[62] = swift_task_alloc();
  v16 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v9[63] = v16;
  v17 = *(v16 - 8);
  v9[64] = v17;
  v18 = *(v17 + 64) + 15;
  v9[65] = swift_task_alloc();
  v9[66] = swift_task_alloc();
  v19 = type metadata accessor for SFAirDropSend.Failure();
  v9[67] = v19;
  v20 = *(v19 - 8);
  v9[68] = v20;
  v21 = *(v20 + 64) + 15;
  v9[69] = swift_task_alloc();
  v22 = type metadata accessor for UUID();
  v9[70] = v22;
  v23 = *(v22 - 8);
  v9[71] = v23;
  v24 = *(v23 + 64) + 15;
  v9[72] = swift_task_alloc();
  v25 = type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult();
  v9[73] = v25;
  v26 = *(v25 - 8);
  v9[74] = v26;
  v27 = *(v26 + 64) + 15;
  v9[75] = swift_task_alloc();
  v9[76] = swift_task_alloc();
  v28 = *(*(sub_10028088C(&qword_100977DC0, &unk_1007FB320) - 8) + 64) + 15;
  v9[77] = swift_task_alloc();
  v9[78] = swift_task_alloc();
  v29 = *(*(sub_10028088C(&qword_100977BB0, &qword_1007FADE0) - 8) + 64) + 15;
  v9[79] = swift_task_alloc();
  v9[80] = swift_task_alloc();
  v30 = *(*(sub_10028088C(&qword_1009763E0, &qword_1007F95D0) - 8) + 64) + 15;
  v9[81] = swift_task_alloc();
  v9[82] = swift_task_alloc();
  v31 = *(*(sub_10028088C(&qword_10097B1A8, &unk_1007FE4B0) - 8) + 64) + 15;
  v9[83] = swift_task_alloc();
  v9[84] = swift_task_alloc();
  v32 = type metadata accessor for SFAirDropSend.Request();
  v9[85] = v32;
  v33 = *(v32 - 8);
  v9[86] = v33;
  v34 = *(v33 + 64) + 15;
  v9[87] = swift_task_alloc();
  v35 = type metadata accessor for SFAirDropSend.Transfer.State();
  v9[88] = v35;
  v36 = *(v35 - 8);
  v9[89] = v36;
  v37 = *(v36 + 64) + 15;
  v9[90] = swift_task_alloc();
  v38 = *(*(sub_10028088C(&qword_10097A7F0, &unk_1007FB600) - 8) + 64) + 15;
  v9[91] = swift_task_alloc();
  v39 = *(*(sub_10028088C(&qword_10097B1B0, &unk_10080DD40) - 8) + 64) + 15;
  v9[92] = swift_task_alloc();
  v40 = type metadata accessor for Date();
  v9[93] = v40;
  v41 = *(v40 - 8);
  v9[94] = v41;
  v42 = *(v41 + 64) + 15;
  v9[95] = swift_task_alloc();
  v43 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v9[96] = v43;
  v44 = *(v43 - 8);
  v9[97] = v44;
  v45 = *(v44 + 64) + 15;
  v9[98] = swift_task_alloc();
  v9[99] = swift_task_alloc();
  v46 = type metadata accessor for SFAirDropSend.Transfer();
  v9[100] = v46;
  v47 = *(v46 - 8);
  v9[101] = v47;
  v48 = *(v47 + 64) + 15;
  v9[102] = swift_task_alloc();
  v9[103] = swift_task_alloc();
  v49 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
  v9[104] = v49;
  v50 = *(v49 - 8);
  v9[105] = v50;
  v51 = *(v50 + 64) + 15;
  v9[106] = swift_task_alloc();
  v52 = type metadata accessor for SFAirDrop.TransferType();
  v9[107] = v52;
  v53 = *(v52 - 8);
  v9[108] = v53;
  v54 = *(v53 + 64) + 15;
  v9[109] = swift_task_alloc();
  v55 = *(*(sub_10028088C(&qword_100977BD8, &qword_1007FAE38) - 8) + 64) + 15;
  v9[110] = swift_task_alloc();
  v9[111] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v56 = static AirDropActor.shared;
  v9[112] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003AA710, v56, 0);
}

uint64_t sub_1003AA710()
{
  if (*(v0[53] + 16))
  {
    goto LABEL_2;
  }

  v19 = v0[111];
  v20 = v0[108];
  v21 = v0[107];
  v22 = v0[48];
  v23 = *(_s10AskRequestVMa() + 20);
  sub_10000FF90(v22 + v23, v19, &qword_100977BD8, &qword_1007FAE38);
  v24 = *(v20 + 48);
  v25 = v24(v19, 1, v21);
  v26 = v0[111];
  if (v25 == 1)
  {
    sub_100005508(v0[111], &qword_100977BD8, &qword_1007FAE38);
  }

  else
  {
    v27 = v0[108];
    v28 = v0[107];
    v29 = SFAirDrop.TransferType.isOnlyExchange.getter();
    (*(v27 + 8))(v26, v28);
    if (v29)
    {
      goto LABEL_2;
    }
  }

  v30 = v0[110];
  v31 = v0[107];
  sub_10000FF90(v22 + v23, v30, &qword_100977BD8, &qword_1007FAE38);
  v32 = v24(v30, 1, v31);
  v33 = v0[110];
  if (v32 != 1)
  {
    v34 = v0[108];
    v35 = v0[107];
    v36 = SFAirDrop.TransferType.isCustom.getter();
    (*(v34 + 8))(v33, v35);
    if ((v36 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_2:
    v1 = v0[109];
    v2 = v0[108];
    v3 = v0[107];
    v4 = v0[55];
    v5 = *(v4 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_urls);
    *(v4 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_urls) = v0[53];

    v0[113] = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_sendRequest;

    SFAirDropSend.Request.type.getter();
    v6 = SFAirDrop.TransferType.isOnlyExchange.getter();
    v7 = *(v2 + 8);
    v0[114] = v7;
    v0[115] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v1, v3);
    if ((v6 & 1) == 0)
    {
      v8 = (v0[55] + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_hapticsManager);
      v10 = *v8;
      v9 = v8[1];
      ObjectType = swift_getObjectType();
      (*(v9 + 16))(1, ObjectType, v9);
    }

    v12 = swift_task_alloc();
    v0[116] = v12;
    *v12 = v0;
    v12[1] = sub_1003AAC20;
    v13 = v0[54];
    v14 = v0[55];
    v15 = v0[49];
    v16 = v0[50];
    v17 = v0[48];

    return sub_1003B6148(v17, v15, v16, v13);
  }

  sub_100005508(v0[110], &qword_100977BD8, &qword_1007FAE38);
LABEL_13:
  v37 = v0[68];
  v38 = v0[67];
  sub_1003C3718(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
  swift_allocError();
  (*(v37 + 104))(v39, enum case for SFAirDropSend.Failure.badRequest(_:), v38);
  swift_willThrow();
  v40 = v0[111];
  v41 = v0[110];
  v42 = v0[109];
  v43 = v0[106];
  v44 = v0[103];
  v45 = v0[102];
  v46 = v0[99];
  v47 = v0[98];
  v48 = v0[95];
  v49 = v0[92];
  v51 = v0[91];
  v52 = v0[90];
  v53 = v0[87];
  v54 = v0[84];
  v55 = v0[83];
  v56 = v0[82];
  v57 = v0[81];
  v58 = v0[80];
  v59 = v0[79];
  v60 = v0[78];
  v61 = v0[77];
  v62 = v0[76];
  v63 = v0[75];
  v64 = v0[72];
  v65 = v0[69];
  v66 = v0[66];
  v67 = v0[65];
  v68 = v0[62];
  v69 = v0[59];
  v70 = v0[58];

  v50 = v0[1];

  return v50();
}

uint64_t sub_1003AAC20()
{
  v2 = *v1;
  v3 = *(*v1 + 928);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[111];
    v6 = v2[110];
    v7 = v2[109];
    v8 = v2[106];
    v9 = v2[103];
    v10 = v2[102];
    v11 = v2[99];
    v12 = v2[98];
    v13 = v2[95];
    v20 = v2[92];
    v21 = v2[91];
    v22 = v2[90];
    v23 = v2[87];
    v24 = v2[84];
    v25 = v2[83];
    v26 = v2[82];
    v27 = v2[81];
    v28 = v2[80];
    v29 = v2[79];
    v30 = v2[78];
    v31 = v2[77];
    v32 = v2[76];
    v33 = v2[75];
    v34 = v2[72];
    v35 = v2[69];
    v36 = v2[66];
    v37 = v2[65];
    v14 = v2[62];
    v16 = v2 + 58;
    v15 = v2[58];
    v38 = v16[1];

    v17 = *(v4 + 8);

    return v17();
  }

  else
  {
    v19 = v2[112];

    return _swift_task_switch(sub_1003AAF10, v19, 0);
  }
}

uint64_t sub_1003AAF10()
{
  v1 = v0[115];
  v2 = v0[114];
  v3 = v0[113];
  v4 = v0[109];
  v5 = v0[107];
  v6 = v0[55];
  sub_1003365C8();
  SFAirDropSend.Request.type.getter();
  LOBYTE(v6) = SFAirDrop.TransferType.isOnlyExchange.getter();
  v2(v4, v5);
  if ((v6 & 1) == 0)
  {
    v7 = (v0[55] + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_hapticsManager);
    v9 = *v7;
    v8 = v7[1];
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(2, ObjectType, v8);
  }

  v11 = *(v0[51] + 32);
  v12 = swift_task_alloc();
  v0[117] = v12;
  *v12 = v0;
  v12[1] = sub_1003AB04C;
  v13 = v0[55];
  v14 = v0[52];
  v16 = v0[48];
  v15 = v0[49];

  return sub_1003B7F1C(v16, v15, v14, v11);
}

uint64_t sub_1003AB04C(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 936);
  v7 = *v3;
  v7[118] = v2;

  if (v2)
  {
    v8 = v7[111];
    v9 = v7[110];
    v10 = v7[109];
    v11 = v7[106];
    v12 = v7[103];
    v13 = v7[102];
    v14 = v7[99];
    v15 = v7[98];
    v20 = v7[95];
    v21 = v7[92];
    v22 = v7[91];
    v23 = v7[90];
    v24 = v7[87];
    v25 = v7[84];
    v26 = v7[83];
    v27 = v7[82];
    v28 = v7[81];
    v29 = v7[80];
    v30 = v7[79];
    v31 = v7[78];
    v32 = v7[77];
    v33 = v7[76];
    v34 = v7[75];
    v35 = v7[72];
    v36 = v7[69];
    v37 = v7[66];
    v38 = v7[65];
    v39 = v7[62];
    v16 = v7[58];
    v40 = v7[59];

    v17 = v7[1];

    return v17();
  }

  else
  {
    v19 = v7[112];
    v7[119] = a2;
    v7[120] = a1;

    return _swift_task_switch(sub_1003AB34C, v19, 0);
  }
}

uint64_t sub_1003AB34C()
{
  v29 = *(v0 + 952);
  v30 = *(v0 + 960);
  v18 = *(v0 + 848);
  v25 = *(v0 + 840);
  v28 = *(v0 + 832);
  v1 = *(v0 + 824);
  v2 = *(v0 + 808);
  v3 = *(v0 + 800);
  v4 = *(v0 + 792);
  v15 = *(v0 + 816);
  v21 = *(v0 + 752);
  v22 = *(v0 + 744);
  v19 = *(v0 + 736);
  v20 = *(v0 + 728);
  v23 = *(v0 + 720);
  v24 = *(v0 + 712);
  v5 = *(v0 + 592);
  v16 = *(v0 + 760);
  v17 = *(v0 + 584);
  v6 = *(v0 + 440);
  v26 = *(v0 + 704);
  v27 = *(v0 + 376);
  v7 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer;
  swift_beginAccess();
  v8 = *(v2 + 16);
  v8(v1, v6 + v7, v3);
  SFAirDropSend.Transfer.id.getter();
  v9 = *(v2 + 8);
  v9(v1, v3);
  v8(v15, v6 + v7, v3);
  SFAirDropSend.Transfer.startDate.getter();
  v9(v15, v3);
  SFAirDropSend.Transfer.Metrics.init(id:startDate:)();
  *(v0 + 992) = enum case for SFAirDropSend.Transfer.Metrics.TransferResult.success(_:);
  v10 = *(v5 + 104);
  *(v0 + 968) = v10;
  *(v0 + 976) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v10(v19);
  (*(v5 + 56))(v19, 0, 1, v17);
  SFAirDropSend.Transfer.Metrics.result.setter();
  static Date.now.getter();
  (*(v21 + 56))(v20, 0, 1, v22);
  SFAirDropSend.Transfer.Metrics.endDate.setter();
  v11 = &v23[*(sub_10028088C(&qword_10097E9D0, &unk_1007FC200) + 48)];
  (*(v25 + 16))(v23, v18, v28);
  *v11 = v30;
  *(v11 + 1) = v29;
  (*(v24 + 104))(v23, enum case for SFAirDropSend.Transfer.State.completedSuccessfully(_:), v26);
  sub_100335364(v23, v27);
  (*(v24 + 8))(v23, v26);
  v12 = swift_task_alloc();
  *(v0 + 984) = v12;
  *v12 = v0;
  v12[1] = sub_1003AB67C;
  v13 = *(v0 + 440);

  return sub_100334168();
}

uint64_t sub_1003AB67C()
{
  v1 = *(*v0 + 984);
  v2 = *(*v0 + 896);
  v4 = *v0;

  return _swift_task_switch(sub_1003AB78C, v2, 0);
}

uint64_t sub_1003AB78C()
{
  v163 = v0;
  v1 = *(v0 + 440);
  (*(*(v0 + 688) + 16))(*(v0 + 696), v1 + *(v0 + 904), *(v0 + 680));
  v2 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_selectedConnection;
  v3 = *(v1 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_selectedConnection);
  if (v3)
  {
    v4 = *(v0 + 672);
    v5 = *(v0 + 656);
    v6 = *(v0 + 448);
    v7 = *(v0 + 456);
    v8 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_metrics;
    swift_beginAccess();
    (*(v7 + 16))(v4, v3 + v8, v6);
    (*(v7 + 56))(v4, 0, 1, v6);
    sub_1003C36B0(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_endpoint, v5, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v9 = 0;
  }

  else
  {
    v9 = 1;
    (*(*(v0 + 456) + 56))(*(v0 + 672), 1, 1, *(v0 + 448));
  }

  v10 = *(v0 + 440);
  (*(*(v0 + 512) + 56))(*(v0 + 656), v9, 1, *(v0 + 504));
  v11 = *(v10 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_endpoints);

  CurrentValueSubject.value.getter();

  v161 = *(v0 + 368);
  v12 = *(v1 + v2);
  v13 = *(v0 + 640);
  v14 = *(v0 + 624);
  if (v12)
  {
    v15 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadRequest;
    swift_beginAccess();
    sub_10000FF90(v12 + v15, v13, &qword_100977BB0, &qword_1007FADE0);
    v16 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_lastActiveInterfaceType;
    swift_beginAccess();
    v17 = type metadata accessor for SFNWInterfaceType();
    v18 = *(v17 - 8);
    (*(v18 + 16))(v14, v12 + v16, v17);
    (*(v18 + 56))(v14, 0, 1, v17);
  }

  else
  {
    v19 = _s13UploadRequestVMa();
    (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
    v20 = type metadata accessor for SFNWInterfaceType();
    (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
  }

  v21 = *(v0 + 976);
  v22 = *(v0 + 640);
  v23 = *(v0 + 632);
  (*(v0 + 968))(*(v0 + 608), *(v0 + 992), *(v0 + 584));
  sub_10000FF90(v22, v23, &qword_100977BB0, &qword_1007FADE0);
  v24 = _s13UploadRequestVMa();
  v25 = (*(*(v24 - 8) + 48))(v23, 1, v24);
  v26 = *(v0 + 632);
  if (v25 == 1)
  {
    sub_100005508(v26, &qword_100977BB0, &qword_1007FADE0);
  }

  else
  {
    v154 = *(v26 + *(v24 + 20));
    sub_1003C41CC(v26, _s13UploadRequestVMa);
  }

  v27 = *(v0 + 616);
  sub_10000FF90(*(v0 + 624), v27, &qword_100977DC0, &unk_1007FB320);
  v28 = type metadata accessor for SFNWInterfaceType();
  v29 = *(v28 - 8);
  v30 = (*(v29 + 48))(v27, 1, v28);
  v31 = *(v0 + 616);
  if (v30 == 1)
  {
    sub_100005508(*(v0 + 616), &qword_100977DC0, &unk_1007FB320);
  }

  else
  {
    SFNWInterfaceType.description.getter();
    (*(v29 + 8))(v31, v28);
  }

  v32 = *(v0 + 784);
  v33 = *(v0 + 776);
  v34 = *(v0 + 768);
  v35 = *(v0 + 696);
  v146 = *(v0 + 608);
  v36 = *(v0 + 592);
  v149 = *(v0 + 584);
  v151 = *(v0 + 600);
  v37 = *(v0 + 576);
  v38 = *(v0 + 568);
  v39 = *(v0 + 560);
  sub_10028088C(&qword_10097B1C8, &unk_1007FE4F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F8220;
  *(inited + 32) = 0x726566736E617274;
  *(inited + 40) = 0xEA00000000004449;
  SFAirDropSend.Request.id.getter();
  SFAirDrop.TransferIdentifier.id.getter();
  (*(v33 + 8))(v32, v34);
  UUID.uuidString.getter();
  (*(v38 + 8))(v37, v39);
  v41 = String._bridgeToObjectiveC()();

  *(inited + 48) = v41;
  *(inited + 56) = 1702521203;
  *(inited + 64) = 0xE400000000000000;
  *(inited + 72) = Int._bridgeToObjectiveC()();
  *(inited + 80) = 0x726F70736E617274;
  *(inited + 88) = 0xE900000000000074;
  *(inited + 96) = String._bridgeToObjectiveC()();
  *(inited + 104) = 0x746C75736572;
  *(inited + 112) = 0xE600000000000000;
  sub_1003E64C0();
  *(inited + 120) = Int._bridgeToObjectiveC()();
  strcpy((inited + 128), "failureSubType");
  *(inited + 143) = -18;
  (*(v36 + 16))(v151, v146, v149);
  v42 = (*(v36 + 88))(v151, v149);
  v43 = *(v0 + 600);
  v44 = *(v0 + 592);
  v45 = *(v0 + 584);
  if (v42 == enum case for SFAirDropSend.Transfer.Metrics.TransferResult.failure(_:))
  {
    v46 = *(v0 + 552);
    v47 = *(v0 + 544);
    v48 = *(v0 + 536);
    (*(v44 + 96))(*(v0 + 600), v45);
    (*(v47 + 32))(v46, v43, v48);
    SFAirDropSend.Failure.errorDescription.getter();
    (*(v47 + 8))(v46, v48);
  }

  else
  {
    (*(v44 + 8))(*(v0 + 600), v45);
  }

  v49 = *(v0 + 656);
  v50 = *(v0 + 648);
  v51 = *(v0 + 504);
  v52 = *(v0 + 512);
  v53 = String._bridgeToObjectiveC()();

  *(inited + 144) = v53;
  v54 = sub_1002812CC(inited);
  swift_setDeallocating();
  sub_10028088C(&qword_10097B1D0, &qword_1007FEC90);
  swift_arrayDestroy();
  sub_10000FF90(v49, v50, &qword_1009763E0, &qword_1007F95D0);
  if ((*(v52 + 48))(v50, 1, v51) == 1)
  {
    sub_100005508(*(v0 + 648), &qword_1009763E0, &qword_1007F95D0);
    if (*(v161 + 16))
    {
      v55 = *(v0 + 696);
      sub_1003E5DF0(v161);
      v56 = String._bridgeToObjectiveC()();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10057B0BC(v56, 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
      sub_1003E6060(v161);
      isa = Int._bridgeToObjectiveC()().super.super.isa;
      v59 = swift_isUniquelyReferenced_nonNull_native();
      sub_10057B0BC(isa, 0x6C6F636F746F7270, 0xE800000000000000, v59);
      sub_1003E6260(v161);
      v60 = Int._bridgeToObjectiveC()().super.super.isa;
      v61 = swift_isUniquelyReferenced_nonNull_native();
      v162[0] = v54;
      sub_10057B0BC(v60, 0xD000000000000010, 0x800000010078E320, v61);
    }
  }

  else
  {
    v62 = *(v0 + 920);
    v63 = *(v0 + 912);
    v64 = *(v0 + 872);
    v65 = *(v0 + 856);
    v66 = *(v0 + 696);
    v67 = *(v0 + 528);
    v155 = *(v0 + 520);
    v158 = *(v0 + 504);
    sub_10000ED78(*(v0 + 648), v67, type metadata accessor for SDAirDropDiscoveredEndpoint);
    SFAirDropSend.Request.type.getter();
    sub_1003E67D8(v64);
    v63(v64, v65);
    v68 = String._bridgeToObjectiveC()();

    v69 = swift_isUniquelyReferenced_nonNull_native();
    v162[0] = v54;
    sub_10057B0BC(v68, 1701869940, 0xE400000000000000, v69);
    sub_1003C36B0(v67, v155, type metadata accessor for SDAirDropDiscoveredEndpoint);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v71 = qword_1007FE7D8[EnumCaseMultiPayload];
    sub_1003C41CC(*(v0 + 520), off_1008DE250[EnumCaseMultiPayload]);
    v72 = *(v0 + 528);
    v74 = *(v0 + 488);
    v73 = *(v0 + 496);
    v75 = *(v0 + 480);
    v76 = Int._bridgeToObjectiveC()().super.super.isa;
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v162[0] = v54;
    sub_10057B0BC(v76, 0x6C6F636F746F7270, 0xE800000000000000, v77);
    sub_10032C154(v73);
    SFAirDrop.DeviceRelationship.rawValue.getter();
    (*(v74 + 8))(v73, v75);
    v78 = Int._bridgeToObjectiveC()().super.super.isa;
    v79 = swift_isUniquelyReferenced_nonNull_native();
    v162[0] = v54;
    sub_10057B0BC(v78, 0xD000000000000010, 0x800000010078E320, v79);
    sub_1003C41CC(v72, type metadata accessor for SDAirDropDiscoveredEndpoint);
  }

  v80 = *(v0 + 664);
  v81 = *(v0 + 448);
  v82 = *(v0 + 456);
  sub_10000FF90(*(v0 + 672), v80, &qword_10097B1A8, &unk_1007FE4B0);
  if ((*(v82 + 48))(v80, 1, v81) == 1)
  {
    v83 = *(v0 + 664);

    sub_100005508(v83, &qword_10097B1A8, &unk_1007FE4B0);
  }

  else
  {
    v84 = *(v0 + 944);
    (*(*(v0 + 456) + 32))(*(v0 + 472), *(v0 + 664), *(v0 + 448));
    v85 = SFAirDrop.NetworkMetrics.payload.getter();
    v86 = swift_isUniquelyReferenced_nonNull_native();
    v162[0] = v54;
    sub_1003C3240(v85, sub_1003C29BC, 0, v86, v162);

    v54 = v162[0];
    if (qword_1009737E0 != -1)
    {
      swift_once();
    }

    v87 = *(v0 + 464);
    v88 = *(v0 + 472);
    v89 = *(v0 + 448);
    v90 = *(v0 + 456);
    v91 = type metadata accessor for Logger();
    sub_10000C4AC(v91, qword_10097B8A0);
    (*(v90 + 16))(v87, v88, v89);
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.default.getter();
    v94 = os_log_type_enabled(v92, v93);
    v95 = *(v0 + 464);
    v96 = *(v0 + 472);
    v97 = *(v0 + 448);
    v98 = *(v0 + 456);
    if (v94)
    {
      v99 = swift_slowAlloc();
      v159 = v96;
      v100 = swift_slowAlloc();
      v162[0] = v100;
      *v99 = 136315138;
      v101 = SFAirDrop.NetworkMetrics.description.getter();
      v102 = v97;
      v156 = v97;
      v104 = v103;
      v105 = *(v98 + 8);
      v105(v95, v102);
      v106 = sub_10000C4E4(v101, v104, v162);

      *(v99 + 4) = v106;
      _os_log_impl(&_mh_execute_header, v92, v93, "SFAirDrop.NetworkMetrics: %s", v99, 0xCu);
      sub_10000C60C(v100);

      v105(v159, v156);
    }

    else
    {

      v107 = *(v98 + 8);
      v107(v95, v97);
      v107(v96, v97);
    }
  }

  v130 = *(v0 + 888);
  v131 = *(v0 + 880);
  v108 = *(v0 + 840);
  v128 = *(v0 + 832);
  v129 = *(v0 + 848);
  v132 = *(v0 + 872);
  v133 = *(v0 + 824);
  v134 = *(v0 + 816);
  v135 = *(v0 + 792);
  v136 = *(v0 + 784);
  v137 = *(v0 + 760);
  v138 = *(v0 + 736);
  v139 = *(v0 + 728);
  v109 = *(v0 + 688);
  v126 = *(v0 + 680);
  v127 = *(v0 + 696);
  v140 = *(v0 + 720);
  v141 = *(v0 + 664);
  v124 = *(v0 + 656);
  v125 = *(v0 + 672);
  v142 = *(v0 + 648);
  v143 = *(v0 + 632);
  v122 = *(v0 + 624);
  v123 = *(v0 + 640);
  v144 = *(v0 + 616);
  v121 = *(v0 + 608);
  v110 = *(v0 + 592);
  v111 = *(v0 + 584);
  v145 = *(v0 + 552);
  v147 = *(v0 + 528);
  v148 = *(v0 + 600);
  v150 = *(v0 + 520);
  v152 = *(v0 + 576);
  v153 = *(v0 + 496);
  v157 = *(v0 + 472);
  v160 = *(v0 + 464);
  v112 = *(v0 + 408);
  v113 = *(v112 + 16);
  v114 = *(v112 + 24);
  sub_1003C34C8(v112, v0 + 168);
  v115 = String._bridgeToObjectiveC()();
  v116 = swift_isUniquelyReferenced_nonNull_native();
  v162[0] = v54;
  sub_10057B0BC(v115, 0xD000000000000012, 0x800000010078E370, v116);
  sub_10030D74C(v112);
  v117 = String._bridgeToObjectiveC()();
  sub_1000276B4(0, &qword_1009772D8, NSObject_ptr);
  v118 = Dictionary._bridgeToObjectiveC()().super.isa;

  SFMetricsLog();

  (*(v110 + 8))(v121, v111);
  sub_100005508(v122, &qword_100977DC0, &unk_1007FB320);
  sub_100005508(v123, &qword_100977BB0, &qword_1007FADE0);
  sub_100005508(v124, &qword_1009763E0, &qword_1007F95D0);
  sub_100005508(v125, &qword_10097B1A8, &unk_1007FE4B0);
  (*(v109 + 8))(v127, v126);
  (*(v108 + 8))(v129, v128);

  v119 = *(v0 + 8);

  return v119();
}

uint64_t sub_1003AC85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v9 = *(*(sub_10028088C(&qword_10097B1B8, &qword_1007FE4C0) - 8) + 64) + 15;
  v8[11] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v8[12] = v10;
  v11 = *(v10 - 8);
  v8[13] = v11;
  v12 = *(v11 + 64) + 15;
  v8[14] = swift_task_alloc();

  return _swift_task_switch(sub_1003AC960, 0, 0);
}

uint64_t sub_1003AC960()
{
  v1 = 0;
  v2 = v0[4];
  v0[2] = v2;
  v3 = v0[13];
  v4 = *(v2 + 16);
  while (v4 != v1)
  {
    v5 = v0[14];
    v6 = v0[12];
    (*(v3 + 16))(v5, v0[4] + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v1++, v6);
    URL._bridgeToObjectiveC()(v7);
    v9 = v8;
    v10 = [v8 isiWorkDocument];

    (*(v3 + 8))(v5, v6);
    if (v10)
    {
      v11 = 8;
      goto LABEL_6;
    }
  }

  v11 = 131074;
LABEL_6:
  v12 = async function pointer to Sequence<>.coordinateRead(withSaveToTempDir:options:)[1];
  v13 = swift_task_alloc();
  v0[15] = v13;
  v14 = sub_10028088C(&qword_100975610, &qword_1007F89B0);
  v15 = sub_100011630(&qword_10097B1D8, &qword_100975610, &qword_1007F89B0);
  *v13 = v0;
  v13[1] = sub_1003ACB20;

  return Sequence<>.coordinateRead(withSaveToTempDir:options:)(0, v11, v14, v15);
}

uint64_t sub_1003ACB20(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = sub_1003ACEF4;
  }

  else
  {
    *(v4 + 136) = a1;
    v7 = sub_1003ACC48;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003ACC48()
{
  v1 = v0[11];
  v2 = sub_10028088C(&qword_10097B2C0, &qword_1007FE678);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_1003ACD40;
  v4 = v0[17];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[5];
  v12 = v0[3];

  return sub_1003A9FB4(v12, v9, v10, v7, v8, v5, v4, v6);
}

uint64_t sub_1003ACD40()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 152) = v0;

  sub_100005508(v5, &qword_10097B1B8, &qword_1007FE4C0);

  if (v0)
  {

    return _swift_task_switch(sub_1003ACF64, 0, 0);
  }

  else
  {
    v7 = *(v2 + 112);
    v8 = *(v2 + 88);

    v9 = *(v6 + 8);

    return v9();
  }
}

uint64_t sub_1003ACEF4()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003ACF64()
{
  v1 = v0[19];
  v2 = v0[14];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003ACFD4(char a1)
{
  *(v2 + 96) = v1;
  *(v2 + 104) = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;

  return _swift_task_switch(sub_1003AD074, v3, 0);
}

void sub_1003AD074()
{
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_sendConnections;
  swift_beginAccess();
  v21 = v1;
  v3 = *(v1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *(v1 + v2);
    }

    __CocoaSet.makeIterator()();
    type metadata accessor for SDAirDropSendConnection();
    sub_1003C3718(&qword_10097AB18, type metadata accessor for SDAirDropSendConnection);
    Set.Iterator.init(_cocoa:)();
    v3 = *(v0 + 16);
    v5 = *(v0 + 24);
    v6 = *(v0 + 32);
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v5 = v3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v3 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  if (v3 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_14:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v3 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_20:
      sub_100027D64();
      v19 = *(v21 + v2);
      *(v21 + v2) = &_swiftEmptySetSingleton;

      v20 = *(v0 + 8);

      v20();
      return;
    }

    while (1)
    {
      sub_100305E34(*(v0 + 104));

      v7 = v15;
      v8 = v16;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      v18 = __CocoaSet.Iterator.next()();
      if (v18)
      {
        *(v0 + 88) = v18;
        type metadata accessor for SDAirDropSendConnection();
        swift_dynamicCast();
        v17 = *(v0 + 80);
        v15 = v7;
        v16 = v8;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_20;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_1003AD2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v40 = *(v7 - 8);
  v41 = v7;
  v8 = *(v40 + 64);
  __chkstk_darwin(v7);
  v10 = &v34[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for SFAirDropSend.Transfer();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v34[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = type metadata accessor for Logger();
  v16 = *(v42 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v42);
  v19 = &v34[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v39 = a3;
    v21 = Strong;
    (*(v16 + 16))(v19, Strong + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_log, v42);

    (*(v12 + 16))(v15, a2, v11);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v36 = v24;
      v37 = swift_slowAlloc();
      v43 = v37;
      *v24 = 136315138;
      SFAirDropSend.Transfer.id.getter();
      sub_1003C3718(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
      v35 = v23;
      v25 = v41;
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = a4;
      v28 = v27;
      (*(v40 + 8))(v10, v25);
      (*(v12 + 8))(v15, v11);
      v29 = sub_10000C4E4(v26, v28, &v43);

      v30 = v36;
      *(v36 + 1) = v29;
      _os_log_impl(&_mh_execute_header, v22, v35, "Transfer %s was cancelled.", v30, 0xCu);
      sub_10000C60C(v37);
    }

    else
    {

      (*(v12 + 8))(v15, v11);
    }

    (*(v16 + 8))(v19, v42);
  }

  v31 = type metadata accessor for SFAirDropSend.Failure();
  sub_1003C3718(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
  swift_allocError();
  (*(*(v31 - 8) + 104))(v32, enum case for SFAirDropSend.Failure.cancelled(_:), v31);
  sub_10028088C(&qword_10097B2C0, &qword_1007FE678);
  SFProgressTask.cancel(_:)();

  return sub_100305E34(1);
}

uint64_t sub_1003AD788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_10028088C(&qword_10097B330, &qword_1007FE728);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = _s12HelloRequestVMa();
  v4[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v10 = type metadata accessor for SFAirDrop.TransferType();
  v4[11] = v10;
  v11 = *(v10 - 8);
  v4[12] = v11;
  v12 = *(v11 + 64) + 15;
  v4[13] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v13 = static AirDropActor.shared;
  v4[14] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003AD920, v13, 0);
}

uint64_t sub_1003AD920()
{
  v1 = v0[4];
  if (sub_10032ED50())
  {
    v3 = v0[12];
    v2 = v0[13];
    v5 = v0[10];
    v4 = v0[11];
    v6 = v0[8];
    v7 = v0[9];
    v8 = v0[2];
    v24 = v0[3];
    SFAirDropSend.Request.type.getter();
    v9 = SFAirDrop.TransferType.isPeerPayment.getter();
    (*(v3 + 8))(v2, v4);
    SFAirDropSend.Request.id.getter();
    v10 = *(v7 + 24);
    *(v5 + *(v7 + 20)) = 3;
    *(v5 + v10) = v9 & 1;
    sub_1002FD580(v5);
    v11 = async function pointer to SFProgressTask.finalValue.getter[1];
    v12 = swift_task_alloc();
    v0[15] = v12;
    *v12 = v0;
    v12[1] = sub_1003ADB44;
    v13 = v0[8];
    v14 = v0[6];

    return SFProgressTask.finalValue.getter(v0 + 16, v14);
  }

  else
  {
    v15 = v0[5] + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_log;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Receiver does not support HELLO, skipping", v18, 2u);
    }

    v19 = v0[13];
    v20 = v0[10];
    v21 = v0[8];

    v22 = v0[1];

    return v22(0x300000000);
  }
}

uint64_t sub_1003ADB44()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;

  v5 = *(v2 + 112);
  if (v0)
  {

    v6 = sub_1003ADD44;
  }

  else
  {
    v6 = sub_1003ADC7C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003ADC7C()
{
  v1 = *(v0 + 128) | (*(v0 + 132) << 32);
  v2 = *(v0 + 80);
  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  sub_1003C41CC(v2, _s12HelloRequestVMa);
  v3 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);

  v6 = *(v0 + 8);

  return v6(v1);
}

uint64_t sub_1003ADD44()
{
  v1 = v0[10];
  (*(v0[7] + 8))(v0[8], v0[6]);
  sub_1003C41CC(v1, _s12HelloRequestVMa);
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[8];

  v5 = v0[1];

  return v5(0x300000000);
}

uint64_t sub_1003ADDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[191] = v5;
  v6[190] = a5;
  v6[189] = a4;
  v6[188] = a3;
  v6[187] = a2;
  v6[186] = a1;
  v7 = type metadata accessor for SFAirDropSend.Failure();
  v6[192] = v7;
  v8 = *(v7 - 8);
  v6[193] = v8;
  v9 = *(v8 + 64) + 15;
  v6[194] = swift_task_alloc();
  v10 = type metadata accessor for SFAirDrop.ContactRequest();
  v6[195] = v10;
  v11 = *(v10 - 8);
  v6[196] = v11;
  v12 = *(v11 + 64) + 15;
  v6[197] = swift_task_alloc();
  v6[198] = swift_task_alloc();
  v6[199] = swift_task_alloc();
  v13 = type metadata accessor for SFAirDropSend.Transfer.State();
  v6[200] = v13;
  v14 = *(v13 - 8);
  v6[201] = v14;
  v15 = *(v14 + 64) + 15;
  v6[202] = swift_task_alloc();
  v16 = type metadata accessor for SFAirDropSend.Transfer();
  v6[203] = v16;
  v17 = *(v16 - 8);
  v6[204] = v17;
  v18 = *(v17 + 64) + 15;
  v6[205] = swift_task_alloc();
  v19 = *(*(sub_10028088C(&qword_10097B200, &qword_1007FE578) - 8) + 64) + 15;
  v6[206] = swift_task_alloc();
  v20 = _s10AskRequestVMa();
  v6[207] = v20;
  v21 = *(v20 - 8);
  v6[208] = v21;
  v6[209] = *(v21 + 64);
  v6[210] = swift_task_alloc();
  v6[211] = swift_task_alloc();
  v22 = type metadata accessor for SFAirDrop.NetworkMetrics();
  v6[212] = v22;
  v23 = *(v22 - 8);
  v6[213] = v23;
  v24 = *(v23 + 64) + 15;
  v6[214] = swift_task_alloc();
  v25 = type metadata accessor for SFAirDropSend.Request();
  v6[215] = v25;
  v26 = *(v25 - 8);
  v6[216] = v26;
  v27 = *(v26 + 64) + 15;
  v6[217] = swift_task_alloc();
  v6[218] = swift_task_alloc();
  v28 = type metadata accessor for SFAirDrop.TransferType();
  v6[219] = v28;
  v29 = *(v28 - 8);
  v6[220] = v29;
  v30 = *(v29 + 64) + 15;
  v6[221] = swift_task_alloc();
  v31 = *(*(sub_10028088C(&qword_1009763E0, &qword_1007F95D0) - 8) + 64) + 15;
  v6[222] = swift_task_alloc();
  v32 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v6[223] = v32;
  v33 = *(v32 - 8);
  v6[224] = v33;
  v34 = *(v33 + 64) + 15;
  v6[225] = swift_task_alloc();
  v6[226] = swift_task_alloc();
  v35 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
  v6[227] = v35;
  v36 = *(v35 - 8);
  v6[228] = v36;
  v37 = *(v36 + 64) + 15;
  v6[229] = swift_task_alloc();
  v38 = type metadata accessor for SFAirDrop.ContactInfo();
  v6[230] = v38;
  v39 = *(v38 - 8);
  v6[231] = v39;
  v40 = *(v39 + 64) + 15;
  v6[232] = swift_task_alloc();
  v41 = *(*(sub_10028088C(&qword_10097B198, &qword_1007FE450) - 8) + 64) + 15;
  v6[233] = swift_task_alloc();
  v6[234] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v42 = static AirDropActor.shared;
  v6[235] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003AE398, v42, 0);
}

uint64_t sub_1003AE398()
{
  v106 = v0;
  v1 = *(v0 + 1872);
  v2 = *(v0 + 1864);
  v3 = *(v0 + 1848);
  v4 = *(v0 + 1840);
  v5 = *(v0 + 1528);
  sub_1003A0614(v1);
  sub_10000FF90(v1, v2, &qword_10097B198, &qword_1007FE450);
  v6 = *(v3 + 48);
  v7 = v6(v2, 1, v4);
  v8 = *(v0 + 1864);
  v9 = *(v0 + 1856);
  if (v7 == 1)
  {
    v10 = *(v0 + 1840);
    v11 = *(v0 + 1832);
    v12 = *(v0 + 1824);
    v13 = *(v0 + 1816);
    *v11 = 0xD000000000000012;
    v11[1] = 0x800000010078E5D0;
    (*(v12 + 104))(v11, enum case for SFAirDrop.ContactInfo.Handle.email(_:), v13);
    SFAirDrop.ContactInfo.init(givenName:fullName:handle:vcard:)();
    if (v6(v8, 1, v10) != 1)
    {
      sub_100005508(*(v0 + 1864), &qword_10097B198, &qword_1007FE450);
    }
  }

  else
  {
    (*(*(v0 + 1848) + 32))(*(v0 + 1856), *(v0 + 1864), *(v0 + 1840));
  }

  v14 = *(v0 + 1792);
  v15 = *(v0 + 1784);
  v16 = *(v0 + 1776);
  v17 = *(*(v0 + 1528) + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_endpoints);

  CurrentValueSubject.value.getter();

  sub_1002FB3B4(*(v0 + 1472), v16);

  if ((*(v14 + 48))(v16, 1, v15) == 1)
  {
    v18 = *(v0 + 1872);
    v19 = *(v0 + 1856);
    v20 = *(v0 + 1848);
    v21 = *(v0 + 1840);
    v22 = *(v0 + 1544);
    v23 = *(v0 + 1536);
    sub_100005508(*(v0 + 1776), &qword_1009763E0, &qword_1007F95D0);
    sub_1003C3718(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
    swift_allocError();
    v25 = v24;
    UUID.init()();
    (*(v22 + 104))(v25, enum case for SFAirDropSend.Failure.missingEndpoint(_:), v23);
    swift_willThrow();
    (*(v20 + 8))(v19, v21);
    sub_100005508(v18, &qword_10097B198, &qword_1007FE450);
    v26 = *(v0 + 1872);
    v27 = *(v0 + 1864);
    v28 = *(v0 + 1856);
    v29 = *(v0 + 1832);
    v30 = *(v0 + 1808);
    v31 = *(v0 + 1800);
    v32 = *(v0 + 1776);
    v33 = *(v0 + 1768);
    v34 = *(v0 + 1744);
    v35 = *(v0 + 1736);
    v86 = *(v0 + 1712);
    v88 = *(v0 + 1688);
    v90 = *(v0 + 1680);
    v91 = *(v0 + 1648);
    v93 = *(v0 + 1640);
    v95 = *(v0 + 1616);
    v97 = *(v0 + 1592);
    v99 = *(v0 + 1584);
    v101 = *(v0 + 1576);
    v103 = *(v0 + 1552);

    v36 = *(v0 + 8);

    return v36();
  }

  else
  {
    v38 = *(v0 + 1528);
    sub_10000ED78(*(v0 + 1776), *(v0 + 1808), type metadata accessor for SDAirDropDiscoveredEndpoint);
    *(v0 + 1888) = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_log;
    v39 = v38;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = *(v0 + 1768);
      v43 = *(v0 + 1760);
      v44 = *(v0 + 1752);
      v45 = *(v0 + 1528);
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v105[0] = v47;
      *v46 = 136315138;
      SFAirDropSend.Request.type.getter();
      sub_1003C3718(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      (*(v43 + 8))(v42, v44);
      v51 = sub_10000C4E4(v48, v50, v105);

      *(v46 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v40, v41, "Send StateMachine ASK START - Async {type: %s}", v46, 0xCu);
      sub_10000C60C(v47);
    }

    v52 = *(v0 + 1800);
    v53 = *(v0 + 1744);
    v54 = *(v0 + 1728);
    v55 = *(v0 + 1720);
    v87 = v53;
    v96 = *(v0 + 1712);
    v98 = *(v0 + 1704);
    v102 = *(v0 + 1696);
    v56 = *(v0 + 1664);
    v57 = *(v0 + 1656);
    v58 = *(v0 + 1528);
    sub_1003C36B0(*(v0 + 1808), v52, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v92 = *(v58 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_deviceStatus);
    *(v0 + 1896) = v92;
    v94 = *(v58 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_pseudonymService);
    v59 = *(v58 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_queue);
    v104 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_sendRequest;
    *(v0 + 1904) = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_sendRequest;
    v89 = *(v54 + 16);
    *(v0 + 1912) = v89;
    *(v0 + 1920) = (v54 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v89(v53, v58 + v104, v55);
    v100 = type metadata accessor for SDAirDropSendConnection();
    v60 = objc_allocWithZone(v100);
    *&v60[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_receiverFeatureFlags] = 0;
    *&v60[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_primaryConnection] = 0;
    v61 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloRequest;
    v62 = _s12HelloRequestVMa();
    (*(*(v62 - 8) + 56))(&v60[v61], 1, 1, v62);
    v63 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloContinuation;
    v64 = sub_10028088C(&qword_100977B48, &qword_1007FAD70);
    (*(*(v64 - 8) + 56))(&v60[v63], 1, 1, v64);
    *&v60[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloConnection] = 0;
    (*(v56 + 56))(&v60[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askRequest], 1, 1, v57);
    *&v60[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askConnection] = 0;
    v65 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askContinuation;
    v66 = sub_10028088C(&qword_100977B60, &qword_1007FAD78);
    (*(*(v66 - 8) + 56))(&v60[v65], 1, 1, v66);
    v67 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadRequest;
    v68 = _s13UploadRequestVMa();
    (*(*(v68 - 8) + 56))(&v60[v67], 1, 1, v68);
    *&v60[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadContext] = 0;
    *&v60[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadConnection] = 0;
    v69 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadContinuation;
    v70 = sub_10028088C(&qword_100977B78, &qword_1007FAD80);
    (*(*(v70 - 8) + 56))(&v60[v69], 1, 1, v70);
    *&v60[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_sandboxTokenURLPairs] = _swiftEmptyArrayStorage;
    *&v60[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_sendCompressionAdapter] = 0;
    *&v60[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeConnection] = 0;
    v71 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeContinuation;
    v72 = sub_10028088C(&qword_100977B88, &qword_1007FAD88);
    (*(*(v72 - 8) + 56))(&v60[v71], 1, 1, v72);
    *&v60[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_errorConnection] = 0;
    v73 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_lastActiveInterfaceType;
    v74 = enum case for SFNWInterfaceType.awdl(_:);
    v75 = type metadata accessor for SFNWInterfaceType();
    (*(*(v75 - 8) + 104))(&v60[v73], v74, v75);
    sub_10062DCB4();
    sub_1003C36B0(v52, &v60[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_endpoint], type metadata accessor for SDAirDropDiscoveredEndpoint);
    *&v60[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_queue] = v59;
    *&v60[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_deviceStatus] = v92;
    *&v60[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_pseudonymService] = v94;
    v89(&v60[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_sendRequest], v87, v55);
    v76 = v59;
    v77 = v92;

    SFAirDrop.NetworkMetrics.init()();
    (*(v98 + 32))(&v60[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_metrics], v96, v102);
    v78 = type metadata accessor for SDAirDropP2PMonitor();
    v79 = swift_allocObject();
    *(v79 + 16) = [objc_allocWithZone(WiFiP2PAWDLStateMonitor) init];
    v80 = &v60[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_p2pMonitor];
    v80[3] = v78;
    v80[4] = &off_1008DBC50;
    *v80 = v79;
    *(v0 + 1440) = v60;
    *(v0 + 1448) = v100;
    v81 = objc_msgSendSuper2((v0 + 1440), "init");
    *(v0 + 1928) = v81;
    (*(v54 + 8))(v87, v55);
    sub_1003C41CC(v52, type metadata accessor for SDAirDropDiscoveredEndpoint);
    swift_beginAccess();
    v82 = v81;
    sub_10046EFE8(v105, v82);
    swift_endAccess();

    v83 = swift_task_alloc();
    *(v0 + 1936) = v83;
    *v83 = v0;
    v83[1] = sub_1003AEF6C;
    v84 = *(v0 + 1808);
    v85 = *(v0 + 1528);

    return sub_1003AD788(v58 + v104, v82, v84);
  }
}

uint64_t sub_1003AEF6C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 1456) = v1;
  *(v3 + 1464) = a1;
  v4 = *(v2 + 1936);
  v5 = *(v2 + 1880);
  v7 = *v1;

  return _swift_task_switch(sub_1003AF084, v5, 0);
}

uint64_t sub_1003AF084()
{
  v1 = *(v0 + 1920);
  v2 = *(v0 + 1896);
  v3 = *(v0 + 1808);
  v4 = *(v0 + 1528);
  (*(v0 + 1912))(*(v0 + 1736), v4 + *(v0 + 1904), *(v0 + 1720));
  sub_10032FC64(v2, *(v4 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_nearbyAgent));
  v6 = v5;
  v8 = v7;
  v9 = v2;
  v10 = swift_task_alloc();
  *(v0 + 1944) = v10;
  *v10 = v0;
  v10[1] = sub_1003AF190;
  v11 = *(v0 + 1896);
  v12 = *(v0 + 1736);
  v13 = *(v0 + 1688);

  return sub_1005A1C54(v13, v12, v6, v8, v11, 0, 0, 0);
}

uint64_t sub_1003AF190()
{
  v2 = *v1;
  v3 = *(*v1 + 1944);
  v4 = *v1;
  *(*v1 + 1952) = v0;

  v5 = *(v2 + 1880);
  if (v0)
  {
    v6 = sub_1003B04B4;
  }

  else
  {
    v6 = sub_1003AF2BC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003AF2BC()
{
  v1 = v0[241];
  v2 = v0[236];
  v3 = v0[210];
  v4 = v0[209];
  v5 = v0[208];
  v6 = v0[191];
  sub_1003C36B0(v0[211], v3, _s10AskRequestVMa);
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = swift_allocObject();
  v0[245] = v8;
  *(v8 + 16) = v1;
  sub_10000ED78(v3, v8 + v7, _s10AskRequestVMa);
  v9 = v1;
  swift_asyncLet_begin();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Send StateMachine SHARE CONTACT PERMISSION START", v12, 2u);
  }

  v13 = v0[232];
  v14 = v0[231];
  v15 = v0[230];
  v16 = v0[206];
  v17 = v0[204];
  v29 = v0[205];
  v30 = v0[203];
  v18 = v0[202];
  v19 = v0[201];
  v28 = v0[200];
  v20 = v0[191];

  sub_1003BF3B0(v13, 0, v16);
  v21 = *(sub_10028088C(&unk_100986200, &unk_1007FE580) + 48);
  (*(v14 + 16))(v18, v13, v15);
  v22 = sub_10028088C(&unk_10097C660, &unk_10080D3E0);
  (*(*(v22 - 8) + 16))(&v18[v21], v16, v22);
  v23 = enum case for SFAirDropSend.Transfer.State.waitingForShareContactPermissionResponse(_:);
  v24 = *(v19 + 104);
  v0[246] = v24;
  v0[247] = (v19 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v24(v18, v23, v28);
  sub_100335364(v18, v29);
  v25 = *(v19 + 8);
  v0[248] = v25;
  v0[249] = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v25(v18, v28);
  v26 = *(v17 + 8);
  v0[250] = v26;
  v0[251] = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v26(v29, v30);

  return _swift_task_switch(sub_1003AF5C0, 0, 0);
}

uint64_t sub_1003AF5C0()
{
  v1 = v0[206];
  v2 = swift_task_alloc();
  v0[252] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[253] = v3;
  *(v3 + 16) = v1;
  v4 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v5 = swift_task_alloc();
  v0[254] = v5;
  *v5 = v0;
  v5[1] = sub_1003AF6C8;
  v6 = v0[198];
  v7 = v0[195];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v6, &unk_1007FE718, v2, sub_1003C43C0, v3, 0, 0, v7);
}

uint64_t sub_1003AF6C8()
{
  v2 = *v1;
  v3 = *(*v1 + 2032);
  v10 = *v1;
  *(*v1 + 2040) = v0;

  if (v0)
  {
    v4 = sub_1003AFB6C;
    v5 = 0;
  }

  else
  {
    v6 = v2[253];
    v7 = v2[252];
    v8 = v2[235];

    v4 = sub_1003AF7FC;
    v5 = v8;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1003AF7FC()
{
  v42 = v0;
  v1 = v0[236];
  v2 = v0[199];
  v3 = v0[198];
  v4 = v0[197];
  v5 = v0[196];
  v6 = v0[195];
  v7 = v0[191];
  v8 = *(v5 + 32);
  v0[256] = v8;
  v0[257] = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v8(v2, v3, v6);
  v40 = *(v5 + 16);
  v40(v4, v2, v6);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[197];
  v13 = v0[196];
  v14 = v0[195];
  if (v11)
  {
    v15 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v41 = v38;
    *v15 = 141558275;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    sub_1003C3718(&qword_10097B210, &type metadata accessor for SFAirDrop.ContactRequest);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v19 = *(v13 + 8);
    v19(v12, v14);
    v20 = sub_10000C4E4(v16, v18, &v41);

    *(v15 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "Send StateMachine SHARE CONTACT PERMISSION END {contactRequest: %{private,mask.hash}s}", v15, 0x16u);
    sub_10000C60C(v38);
  }

  else
  {

    v19 = *(v13 + 8);
    v19(v12, v14);
  }

  v0[258] = v19;
  v21 = v0[191] + v0[236];
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Send StateMachine EXCHANGING START", v24, 2u);
  }

  v37 = v0[250];
  v39 = v0[251];
  v35 = v0[248];
  v36 = v0[249];
  v25 = v0[247];
  v26 = v0[246];
  v27 = v0[205];
  v34 = v0[203];
  v28 = v0[202];
  v29 = v0[200];
  v30 = v0[199];
  v31 = v0[195];
  v32 = v0[191];

  v40(v28, v30, v31);
  v26(v28, enum case for SFAirDropSend.Transfer.State.exchanging(_:), v29);
  sub_100335364(v28, v27);
  v35(v28, v29);
  v37(v27, v34);

  return _swift_asyncLet_get_throwing(v0 + 2, v0 + 105, sub_1003AFE94, v0 + 136);
}

uint64_t sub_1003AFB6C()
{
  v1 = v0[253];
  v2 = v0[252];
  v3 = v0[235];

  return _swift_task_switch(sub_1003AFBE4, v3, 0);
}

uint64_t sub_1003AFBE4()
{
  v1 = v0[194];
  v2 = v0[192];
  v0[185] = v0[255];
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v3 = (*(v0[193] + 88))(v0[194], v0[192]);
    if (v3 == enum case for SFAirDropSend.Failure.cancelled(_:))
    {
      v4 = v3;
      v5 = v0[255];
      v6 = v0[236];
      v7 = v0[191];

      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Send StateMachine SHARE CONTACT PERMISSION END - Cancelling exchange", v10, 2u);
      }

      v11 = v0[206];
      v12 = v0[193];
      v13 = v0[192];

      sub_1003C3718(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
      v0[273] = swift_allocError();
      (*(v12 + 104))(v14, v4, v13);
      swift_willThrow();
      sub_100005508(v11, &qword_10097B200, &qword_1007FE578);
      v15 = v0[185];

      v16 = sub_1003B06A0;
      v17 = v0 + 2;
      v18 = v0 + 105;
      v19 = v0 + 118;
    }

    else
    {
      v21 = v0[194];
      v22 = v0[193];
      v23 = v0[192];
      sub_100005508(v0[206], &qword_10097B200, &qword_1007FE578);
      (*(v22 + 8))(v21, v23);
      v24 = v0[185];

      v16 = sub_1003B08D4;
      v17 = v0 + 2;
      v18 = v0 + 105;
      v19 = v0 + 100;
    }
  }

  else
  {
    sub_100005508(v0[206], &qword_10097B200, &qword_1007FE578);
    v20 = v0[185];

    v16 = sub_1003B0B08;
    v17 = v0 + 2;
    v18 = v0 + 105;
    v19 = v0 + 82;
  }

  return _swift_asyncLet_finish(v17, v18, v16, v19);
}

uint64_t sub_1003AFE94()
{
  *(v1 + 2072) = v0;
  if (v0)
  {
    v2 = sub_1003B0B24;
  }

  else
  {
    v2 = sub_1003AFEC8;
  }

  return _swift_task_switch(v2, *(v1 + 1880), 0);
}

uint64_t sub_1003AFEC8()
{
  v33 = v0;
  v1 = *(v0 + 920);
  *(v0 + 760) = *(v0 + 904);
  *(v0 + 776) = v1;
  v2 = *(v0 + 856);
  *(v0 + 696) = *(v0 + 840);
  *(v0 + 712) = v2;
  v3 = *(v0 + 888);
  *(v0 + 728) = *(v0 + 872);
  *(v0 + 744) = v3;
  v4 = *(v0 + 896);
  *(v0 + 2112) = *(v0 + 880);
  *(v0 + 2128) = v4;
  v5 = *(v0 + 928);
  *(v0 + 2144) = *(v0 + 912);
  v6 = *(v0 + 1888);
  v7 = *(v0 + 1528);
  *(v0 + 792) = *(v0 + 936);
  *(v0 + 2080) = *(v0 + 840);
  *(v0 + 2088) = *(v0 + 848);
  *(v0 + 2096) = *(v0 + 856);
  *(v0 + 2104) = *(v0 + 864);
  *(v0 + 2192) = *(v0 + 872);
  *(v0 + 2160) = v5;
  sub_1003C34C8(v0 + 696, v0 + 984);
  sub_1003C34C8(v0 + 696, v0 + 1128);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  sub_10030D74C(v0 + 696);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1648);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v32 = v12;
    *v11 = 136315138;
    sub_1003C34C8(v0 + 696, v0 + 1272);
    v13 = sub_1005A43F8();
    v15 = v14;
    sub_10030D74C(v0 + 696);
    v16 = sub_10000C4E4(v13, v15, &v32);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "Send StateMachine ASK END - Async {response: %s}", v11, 0xCu);
    sub_10000C60C(v12);

    v17 = v10;
  }

  else
  {
    v18 = *(v0 + 1648);

    v17 = v18;
  }

  sub_100005508(v17, &qword_10097B200, &qword_1007FE578);
  v19 = *(v0 + 2056);
  v20 = *(v0 + 2048);
  v21 = *(v0 + 1808);
  v22 = *(v0 + 1688);
  v23 = *(v0 + 1592);
  v24 = *(v0 + 1568);
  v25 = *(v0 + 1560);
  v31 = *(v0 + 1520);
  v26 = *(v0 + 1512);
  v27 = *(v0 + 1504);
  v28 = *(v0 + 1496);
  *(v0 + 2176) = *(v0 + 1464);
  sub_1003C36B0(v22, v28, _s10AskRequestVMa);
  sub_1003C36B0(v21, v27, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v20(v26, v23, v25);
  (*(v24 + 56))(v26, 0, 1, v25);
  v29 = sub_10028088C(&qword_10097B2C0, &qword_1007FE678);
  (*(*(v29 - 8) + 56))(v31, 1, 1, v29);

  return _swift_asyncLet_finish(v0 + 16, v0 + 840, sub_1003B01EC, v0 + 1376);
}

uint64_t sub_1003B0208()
{
  v36 = *(v0 + 2192);
  v34 = *(v0 + 2096);
  v35 = *(v0 + 2104);
  v33 = *(v0 + 2088);
  v31 = *(v0 + 2176);
  v32 = *(v0 + 2080);
  v1 = *(v0 + 1960);
  v30 = *(v0 + 1928);
  v2 = *(v0 + 1872);
  v3 = *(v0 + 1864);
  v4 = *(v0 + 1856);
  v5 = *(v0 + 1848);
  v6 = *(v0 + 1840);
  v7 = *(v0 + 1808);
  v11 = *(v0 + 1832);
  v12 = *(v0 + 1800);
  v13 = *(v0 + 1776);
  v14 = *(v0 + 1768);
  v15 = *(v0 + 1744);
  v16 = *(v0 + 1736);
  v17 = *(v0 + 1712);
  v18 = *(v0 + 1680);
  v19 = *(v0 + 1648);
  v20 = *(v0 + 1640);
  v21 = *(v0 + 1616);
  v22 = *(v0 + 1592);
  v23 = *(v0 + 1584);
  v24 = *(v0 + 1576);
  v25 = *(v0 + 1552);
  v29 = *(v0 + 2112);
  v27 = *(v0 + 2128);
  v28 = *(v0 + 2144);
  v26 = *(v0 + 2160);
  v8 = *(v0 + 1488);
  sub_1003C41CC(*(v0 + 1688), _s10AskRequestVMa);
  sub_1003C41CC(v7, type metadata accessor for SDAirDropDiscoveredEndpoint);
  (*(v5 + 8))(v4, v6);
  sub_100005508(v2, &qword_10097B198, &qword_1007FE450);

  *(v8 + 4) = BYTE4(v31);
  *v8 = v31;
  *(v8 + 8) = v30;
  *(v8 + 16) = v32;
  *(v8 + 24) = v33;
  *(v8 + 32) = v34;
  *(v8 + 40) = v35;
  *(v8 + 48) = v36;
  *(v8 + 72) = v27;
  *(v8 + 56) = v29;
  *(v8 + 104) = v26;
  *(v8 + 88) = v28;
  *(v8 + 120) = 0;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1003B04B4()
{
  v1 = *(v0 + 1872);
  v2 = *(v0 + 1856);
  v3 = *(v0 + 1848);
  v4 = *(v0 + 1840);
  v5 = *(v0 + 1808);

  sub_1003C41CC(v5, type metadata accessor for SDAirDropDiscoveredEndpoint);
  (*(v3 + 8))(v2, v4);
  sub_100005508(v1, &qword_10097B198, &qword_1007FE450);
  v28 = *(v0 + 1952);
  v6 = *(v0 + 1872);
  v7 = *(v0 + 1864);
  v8 = *(v0 + 1856);
  v9 = *(v0 + 1832);
  v10 = *(v0 + 1808);
  v11 = *(v0 + 1800);
  v12 = *(v0 + 1776);
  v13 = *(v0 + 1768);
  v14 = *(v0 + 1744);
  v15 = *(v0 + 1736);
  v18 = *(v0 + 1712);
  v19 = *(v0 + 1688);
  v20 = *(v0 + 1680);
  v21 = *(v0 + 1648);
  v22 = *(v0 + 1640);
  v23 = *(v0 + 1616);
  v24 = *(v0 + 1592);
  v25 = *(v0 + 1584);
  v26 = *(v0 + 1576);
  v27 = *(v0 + 1552);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1003B06BC()
{
  v1 = *(v0 + 1960);
  v2 = *(v0 + 1872);
  v3 = *(v0 + 1856);
  v4 = *(v0 + 1848);
  v5 = *(v0 + 1840);
  v6 = *(v0 + 1808);
  v7 = *(v0 + 1688);

  sub_1003C41CC(v7, _s10AskRequestVMa);
  sub_1003C41CC(v6, type metadata accessor for SDAirDropDiscoveredEndpoint);
  (*(v4 + 8))(v3, v5);
  sub_100005508(v2, &qword_10097B198, &qword_1007FE450);

  v30 = *(v0 + 2184);
  v8 = *(v0 + 1872);
  v9 = *(v0 + 1864);
  v10 = *(v0 + 1856);
  v11 = *(v0 + 1832);
  v12 = *(v0 + 1808);
  v13 = *(v0 + 1800);
  v14 = *(v0 + 1776);
  v15 = *(v0 + 1768);
  v16 = *(v0 + 1744);
  v17 = *(v0 + 1736);
  v20 = *(v0 + 1712);
  v21 = *(v0 + 1688);
  v22 = *(v0 + 1680);
  v23 = *(v0 + 1648);
  v24 = *(v0 + 1640);
  v25 = *(v0 + 1616);
  v26 = *(v0 + 1592);
  v27 = *(v0 + 1584);
  v28 = *(v0 + 1576);
  v29 = *(v0 + 1552);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1003B08F0()
{
  v1 = *(v0 + 1960);
  v2 = *(v0 + 1872);
  v3 = *(v0 + 1856);
  v4 = *(v0 + 1848);
  v5 = *(v0 + 1840);
  v6 = *(v0 + 1808);
  v7 = *(v0 + 1688);

  sub_1003C41CC(v7, _s10AskRequestVMa);
  sub_1003C41CC(v6, type metadata accessor for SDAirDropDiscoveredEndpoint);
  (*(v4 + 8))(v3, v5);
  sub_100005508(v2, &qword_10097B198, &qword_1007FE450);

  v30 = *(v0 + 2040);
  v8 = *(v0 + 1872);
  v9 = *(v0 + 1864);
  v10 = *(v0 + 1856);
  v11 = *(v0 + 1832);
  v12 = *(v0 + 1808);
  v13 = *(v0 + 1800);
  v14 = *(v0 + 1776);
  v15 = *(v0 + 1768);
  v16 = *(v0 + 1744);
  v17 = *(v0 + 1736);
  v20 = *(v0 + 1712);
  v21 = *(v0 + 1688);
  v22 = *(v0 + 1680);
  v23 = *(v0 + 1648);
  v24 = *(v0 + 1640);
  v25 = *(v0 + 1616);
  v26 = *(v0 + 1592);
  v27 = *(v0 + 1584);
  v28 = *(v0 + 1576);
  v29 = *(v0 + 1552);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1003B0B24()
{
  v1 = *(v0 + 1648);
  v2 = *(v0 + 1568) + 8;
  (*(v0 + 2064))(*(v0 + 1592), *(v0 + 1560));
  sub_100005508(v1, &qword_10097B200, &qword_1007FE578);

  return _swift_asyncLet_finish(v0 + 16, v0 + 840, sub_1003B0BC4, v0 + 1232);
}

uint64_t sub_1003B0BE0()
{
  v1 = *(v0 + 1960);
  v2 = *(v0 + 1872);
  v3 = *(v0 + 1856);
  v4 = *(v0 + 1848);
  v5 = *(v0 + 1840);
  v6 = *(v0 + 1808);
  v7 = *(v0 + 1688);

  sub_1003C41CC(v7, _s10AskRequestVMa);
  sub_1003C41CC(v6, type metadata accessor for SDAirDropDiscoveredEndpoint);
  (*(v4 + 8))(v3, v5);
  sub_100005508(v2, &qword_10097B198, &qword_1007FE450);

  v30 = *(v0 + 2072);
  v8 = *(v0 + 1872);
  v9 = *(v0 + 1864);
  v10 = *(v0 + 1856);
  v11 = *(v0 + 1832);
  v12 = *(v0 + 1808);
  v13 = *(v0 + 1800);
  v14 = *(v0 + 1776);
  v15 = *(v0 + 1768);
  v16 = *(v0 + 1744);
  v17 = *(v0 + 1736);
  v20 = *(v0 + 1712);
  v21 = *(v0 + 1688);
  v22 = *(v0 + 1680);
  v23 = *(v0 + 1648);
  v24 = *(v0 + 1640);
  v25 = *(v0 + 1616);
  v26 = *(v0 + 1592);
  v27 = *(v0 + 1584);
  v28 = *(v0 + 1576);
  v29 = *(v0 + 1552);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1003B0DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[52] = a7;
  v8[53] = v7;
  v8[50] = a5;
  v8[51] = a6;
  v8[48] = a3;
  v8[49] = a4;
  v8[46] = a1;
  v8[47] = a2;
  v8[54] = swift_getObjectType();
  v9 = sub_10028088C(&qword_10097B320, &qword_100806120);
  v8[55] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[56] = swift_task_alloc();
  v8[57] = swift_task_alloc();
  v11 = *(*(sub_10028088C(&qword_10097B338, &unk_1007FE730) - 8) + 64) + 15;
  v8[58] = swift_task_alloc();
  v12 = type metadata accessor for Date();
  v8[59] = v12;
  v13 = *(v12 - 8);
  v8[60] = v13;
  v14 = *(v13 + 64) + 15;
  v8[61] = swift_task_alloc();
  v15 = type metadata accessor for SFAirDropSend.Transfer();
  v8[62] = v15;
  v16 = *(v15 - 8);
  v8[63] = v16;
  v17 = *(v16 + 64) + 15;
  v8[64] = swift_task_alloc();
  v18 = type metadata accessor for SFAirDropSend.Request();
  v8[65] = v18;
  v19 = *(v18 - 8);
  v8[66] = v19;
  v20 = *(v19 + 64) + 15;
  v8[67] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v21 = static AirDropActor.shared;
  v8[68] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003B1044, v21, 0);
}

uint64_t sub_1003B1044()
{
  v41 = v0[67];
  v38 = v0[66];
  v1 = v0[63];
  v2 = v0[64];
  v29 = v2;
  v3 = v0[62];
  v26 = v0[65];
  v33 = v0[61];
  v34 = v0[60];
  v35 = v0[59];
  v37 = v0[58];
  v4 = v0[54];
  v39 = v0[55];
  v40 = v0[57];
  v5 = v0[53];
  v32 = v0[52];
  v6 = v0[50];
  v7 = v0[51];
  v8 = *(v38 + 16);
  v8();
  v27 = *(v1 + 16);
  v27(v2, v7, v3);
  v28 = *&v5[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_endpointService];
  v0[27] = v4;
  v0[28] = &off_1008DE058;
  v0[24] = v5;
  v9 = type metadata accessor for SDAirDropAskFanoutHelper();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v0[69] = v12;
  sub_10002F5B4((v0 + 24), v4);
  v13 = *(v4 - 8);
  v14 = *(v13 + 64) + 15;
  v36 = swift_task_alloc();
  (*(v13 + 16))();
  v15 = *v36;
  v0[32] = v4;
  v0[33] = &off_1008DE058;
  v0[29] = v15;
  v16 = v5;
  swift_defaultActor_initialize();
  v17 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_askContinuation;
  v31 = sub_10028088C(&qword_10097B340, &qword_100806090);
  v30 = *(*(v31 - 8) + 56);
  v30(v12 + v17, 1, 1, v31);
  *(v12 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_askTasks) = &_swiftEmptySetSingleton;
  *(v12 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_failedResolveEndpointIDs) = &_swiftEmptySetSingleton;
  *(v12 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_needsFallbackDeviceIDs) = &_swiftEmptySetSingleton;
  *(v12 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_pipelinedUploadAvailable) = 1;
  (v8)(v12 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_sendRequest, v41, v26);
  v27(v12 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_initialTransfer, v29, v3);
  *(v12 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_endpointService) = v28;
  *(v12 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_deviceStatus) = v32;
  sub_1002A9938((v0 + 29), v12 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_runner);
  v18 = v28;
  v19 = v32;
  Date.init()();
  (*(v34 + 32))(v12 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_askStart, v33, v35);
  v0[43] = 0;
  sub_10028088C(&unk_100985A40, &qword_1007FE740);
  sub_10028088C(&qword_10097B348, &qword_1007FE748);
  SFProgressContinuation.init(_:initialProgress:file:line:)();
  (*(v1 + 8))(v29, v3);
  (*(v38 + 8))(v41, v26);
  sub_10000C60C(v0 + 29);
  v30(v37, 0, 1, v31);
  v20 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_askContinuation;
  swift_beginAccess();
  sub_10000C788(v37, v12 + v20, &qword_10097B338, &unk_1007FE730);
  swift_endAccess();
  sub_10000C60C(v0 + 24);

  v21 = v39[12];
  v22 = v39[20];
  v23 = v39[32];
  v24 = swift_task_alloc();
  v0[70] = v24;
  *v24 = v0;
  v24[1] = sub_1003B150C;

  return sub_1004B28C0((v0 + 2), v40 + v21, v40 + v22, v40 + v23);
}

uint64_t sub_1003B150C()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 560);
  v5 = *v1;
  v3[71] = v0;
  v6 = *(v3 + 4);
  *(v3 + 580) = *(v3 + 20);
  *(v3 + 144) = v6;
  v3[73] = v2[3];
  v3[74] = v2[4];
  *(v3 + 75) = *(v3 + 5);
  v3[77] = v2[7];
  *(v3 + 716) = *(v3 + 64);
  v7 = *(v3 + 11);
  *(v3 + 39) = *(v3 + 9);
  *(v3 + 40) = v7;
  v8 = *(v3 + 15);
  *(v3 + 41) = *(v3 + 13);
  *(v3 + 42) = v8;
  v3[86] = v2[17];
  v3[87] = v2[18];

  v9 = v2[68];
  if (v0)
  {
    v10 = sub_1003B1BC4;
  }

  else
  {
    v11 = v3[55];
    *(v3 + 176) = v11[16];
    *(v3 + 177) = v11[24];
    *(v3 + 178) = v11[28];
    v10 = sub_1003B1708;
  }

  return _swift_task_switch(v10, v9, 0);
}

void sub_1003B1708()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 704);
  v3 = *(v0 + 696);
  v4 = *(v0 + 688);
  v5 = *(v0 + 716);
  v6 = *(v0 + 616);
  v7 = *(v0 + 608);
  v8 = *(v0 + 592);
  v9 = *(v0 + 584);
  v10 = *(v0 + 576);
  v11 = *(v0 + 568);
  v12 = *(v0 + 456);
  v13 = *(v0 + 424);
  v14 = v12 + *(v0 + 708);
  v15 = *(v0 + 624);
  v16 = *(v0 + 640);
  v17 = *(v0 + 656);
  v18 = *(v0 + 672);
  *(v12 + 4) = *(v0 + 580);
  *v12 = v10;
  *(v12 + v2) = v9;
  *v14 = v8;
  *(v14 + 16) = v7;
  *(v14 + 24) = v6;
  *(v14 + 32) = v5;
  *(v14 + 40) = v15;
  *(v14 + 56) = v16;
  *(v14 + 72) = v17;
  *(v14 + 88) = v18;
  *(v12 + v1) = v4;
  v19 = *(v13 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_selectedConnection);
  *(v13 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_selectedConnection) = v3;
  v20 = v3;

  v21 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_sendConnections;
  swift_beginAccess();
  v22 = *(v13 + v21);
  v23 = v20;

  v25 = sub_1003C3038(v24, v23);

  if ((v25 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for SDAirDropSendConnection();
    sub_1003C3718(&qword_10097AB18, type metadata accessor for SDAirDropSendConnection);
    Set.Iterator.init(_cocoa:)();
    v25 = *(v0 + 152);
    v26 = *(v0 + 160);
    v27 = *(v0 + 168);
    v28 = *(v0 + 176);
    v29 = *(v0 + 184);
  }

  else
  {
    v28 = 0;
    v30 = -1 << *(v25 + 32);
    v26 = v25 + 56;
    v27 = ~v30;
    v31 = -v30;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v29 = v32 & *(v25 + 56);
  }

  v33 = (v27 + 64) >> 6;
  if (v25 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v34 = v28;
    v35 = v29;
    v36 = v28;
    if (!v29)
    {
      break;
    }

LABEL_12:
    v37 = (v35 - 1) & v35;
    v38 = *(*(v25 + 48) + ((v36 << 9) | (8 * __clz(__rbit64(v35)))));
    if (!v38)
    {
LABEL_18:
      v41 = *(v0 + 696);
      v63 = *(v0 + 552);
      v65 = *(v0 + 536);
      v66 = *(v0 + 512);
      v42 = *(v0 + 456);
      v68 = *(v0 + 488);
      v69 = *(v0 + 464);
      v44 = *(v0 + 440);
      v43 = *(v0 + 448);
      v64 = *(v0 + 392);
      v58 = *(v0 + 384);
      v45 = *(v0 + 368);
      v55 = *(v0 + 376);
      sub_100027D64();

      sub_10002C4E4(v42, v43, &qword_10097B320, &qword_100806120);
      v67 = *v43;
      LOBYTE(v63) = *(v43 + 4);
      v46 = v44[12];
      v62 = *(v43 + v44[16]);
      v47 = v44[20];
      v48 = v43 + v44[24];
      v50 = *(v48 + 16);
      v49 = *(v48 + 24);
      v51 = *(v43 + v44[28]);
      v52 = *(v48 + 32);
      v53 = v44[32];
      v60 = *(v48 + 40);
      v61 = *v48;
      v59 = *(v48 + 72);
      v56 = *(v48 + 88);
      v57 = *(v48 + 56);
      sub_10000ED78(v43 + v46, v55, _s10AskRequestVMa);
      sub_10000ED78(v43 + v47, v58, type metadata accessor for SDAirDropDiscoveredEndpoint);
      sub_10002C4E4(v43 + v53, v64, &qword_10097B1B8, &qword_1007FE4C0);

      *(v45 + 4) = v63;
      *v45 = v67;
      *(v45 + 8) = v62;
      *(v45 + 16) = v61;
      *(v45 + 32) = v50;
      *(v45 + 40) = v49;
      *(v45 + 48) = v52;
      *(v45 + 72) = v57;
      *(v45 + 56) = v60;
      *(v45 + 104) = v56;
      *(v45 + 88) = v59;
      *(v45 + 120) = v51;
      v54 = *(v0 + 8);

      v54();
      return;
    }

    while (1)
    {
      sub_100305E34(0);
      swift_beginAccess();
      v40 = sub_10036E36C(v38);
      swift_endAccess();

      v28 = v36;
      v29 = v37;
      if ((v25 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v39 = __CocoaSet.Iterator.next()();
      if (v39)
      {
        *(v0 + 360) = v39;
        type metadata accessor for SDAirDropSendConnection();
        swift_dynamicCast();
        v38 = *(v0 + 352);
        v36 = v28;
        v37 = v29;
        if (v38)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v36 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v36 >= v33)
    {
      goto LABEL_18;
    }

    v35 = *(v26 + 8 * v36);
    ++v34;
    if (v35)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1003B1BC4()
{
  v1 = v0[69];
  v2 = v0[67];
  v3 = v0[64];
  v4 = v0[61];
  v6 = v0[57];
  v5 = v0[58];
  v7 = v0[56];

  v8 = v0[1];
  v9 = v0[71];

  return v8();
}

uint64_t sub_1003B1C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v8 + 368) = a7;
  *(v8 + 376) = v7;
  *(v8 + 944) = a6;
  *(v8 + 352) = a4;
  *(v8 + 360) = a5;
  *(v8 + 336) = a2;
  *(v8 + 344) = a3;
  *(v8 + 328) = a1;
  v9 = *(*(sub_10028088C(&qword_10097B350, &qword_1007FE758) - 8) + 64) + 15;
  *(v8 + 384) = swift_task_alloc();
  v10 = type metadata accessor for SFAirDropSend.Failure();
  *(v8 + 392) = v10;
  v11 = *(v10 - 8);
  *(v8 + 400) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  v13 = type metadata accessor for SFSecurityScopedURL();
  *(v8 + 424) = v13;
  v14 = *(v13 - 8);
  *(v8 + 432) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 440) = swift_task_alloc();
  v16 = type metadata accessor for URL();
  *(v8 + 448) = v16;
  v17 = *(v16 - 8);
  *(v8 + 456) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 464) = swift_task_alloc();
  v19 = type metadata accessor for CancellationError();
  *(v8 + 472) = v19;
  v20 = *(v19 - 8);
  *(v8 + 480) = v20;
  v21 = *(v20 + 64) + 15;
  *(v8 + 488) = swift_task_alloc();
  v22 = type metadata accessor for SFAirDrop.TransferIdentifier();
  *(v8 + 496) = v22;
  v23 = *(v22 - 8);
  *(v8 + 504) = v23;
  v24 = *(v23 + 64) + 15;
  *(v8 + 512) = swift_task_alloc();
  v25 = *(*(sub_10028088C(&qword_10097B1B8, &qword_1007FE4C0) - 8) + 64) + 15;
  *(v8 + 520) = swift_task_alloc();
  *(v8 + 528) = swift_task_alloc();
  v26 = sub_10028088C(&qword_10097B328, &qword_1007FE720);
  *(v8 + 536) = v26;
  v27 = *(v26 - 8);
  *(v8 + 544) = v27;
  v28 = *(v27 + 64) + 15;
  *(v8 + 552) = swift_task_alloc();
  v29 = _s10AskRequestVMa();
  *(v8 + 560) = v29;
  v30 = *(v29 - 8);
  *(v8 + 568) = v30;
  v31 = *(v30 + 64) + 15;
  *(v8 + 576) = swift_task_alloc();
  v32 = type metadata accessor for SFAirDrop.TransferType();
  *(v8 + 584) = v32;
  v33 = *(v32 - 8);
  *(v8 + 592) = v33;
  v34 = *(v33 + 64) + 15;
  *(v8 + 600) = swift_task_alloc();
  v35 = sub_10028088C(&qword_10097B320, &qword_100806120);
  *(v8 + 608) = v35;
  v36 = *(*(v35 - 8) + 64) + 15;
  *(v8 + 616) = swift_task_alloc();
  *(v8 + 624) = swift_task_alloc();
  v37 = type metadata accessor for SFAirDrop.NetworkMetrics();
  *(v8 + 632) = v37;
  v38 = *(v37 - 8);
  *(v8 + 640) = v38;
  v39 = *(v38 + 64) + 15;
  *(v8 + 648) = swift_task_alloc();
  v40 = type metadata accessor for SFAirDropSend.Request();
  *(v8 + 656) = v40;
  v41 = *(v40 - 8);
  *(v8 + 664) = v41;
  v42 = *(v41 + 64) + 15;
  *(v8 + 672) = swift_task_alloc();
  *(v8 + 680) = swift_task_alloc();
  v43 = *(*(type metadata accessor for SDAirDropDiscoveredEndpoint(0) - 8) + 64) + 15;
  *(v8 + 688) = swift_task_alloc();
  *(v8 + 696) = swift_task_alloc();
  *(v8 + 704) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v44 = static AirDropActor.shared;
  *(v8 + 712) = static AirDropActor.shared;

  return _swift_task_switch(sub_1003B21F0, v44, 0);
}

uint64_t sub_1003B21F0()
{
  v111 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 360);
  v3 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_sendConnections;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;

  sub_100390318(sub_1003C422C, v5, v4);
  LOBYTE(v2) = v6;

  *(v0 + 720) = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_log;
  v7 = *(v0 + 360);
  if (v2)
  {
    sub_1003C36B0(v7, *(v0 + 688), type metadata accessor for SDAirDropDiscoveredEndpoint);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 688);
    if (v10)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v110[0] = v13;
      *v12 = 136315138;
      v14 = sub_10032DA30(v13);
      v16 = v15;
      sub_1003C41CC(v11, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v17 = sub_10000C4E4(v14, v16, v110);

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Ask connection already exists for endpoint - %s", v12, 0xCu);
      sub_10000C60C(v13);
    }

    else
    {

      sub_1003C41CC(v11, type metadata accessor for SDAirDropDiscoveredEndpoint);
    }

    v28 = *(v0 + 392);
    v29 = *(v0 + 400);
    sub_1003C3718(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
    swift_allocError();
    (*(v29 + 104))(v30, enum case for SFAirDropSend.Failure.badRequest(_:), v28);
    swift_willThrow();
    v31 = *(v0 + 704);
    v32 = *(v0 + 696);
    v33 = *(v0 + 688);
    v34 = *(v0 + 680);
    v35 = *(v0 + 672);
    v36 = *(v0 + 648);
    v37 = *(v0 + 624);
    v38 = *(v0 + 616);
    v39 = *(v0 + 600);
    v40 = *(v0 + 576);
    v93 = *(v0 + 552);
    v94 = *(v0 + 528);
    v95 = *(v0 + 520);
    v97 = *(v0 + 512);
    v99 = *(v0 + 488);
    v101 = *(v0 + 464);
    v103 = *(v0 + 440);
    v105 = *(v0 + 416);
    v107 = *(v0 + 408);
    v109 = *(v0 + 384);

    v41 = *(v0 + 8);

    return v41();
  }

  else
  {
    sub_1003C36B0(v7, *(v0 + 704), type metadata accessor for SDAirDropDiscoveredEndpoint);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 704);
    if (v20)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v110[0] = v23;
      *v22 = 136315138;
      v24 = sub_10032DA30(v23);
      v26 = v25;
      sub_1003C41CC(v21, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v27 = sub_10000C4E4(v24, v26, v110);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v18, v19, "Sending Ask to new endpoint: %s", v22, 0xCu);
      sub_10000C60C(v23);
    }

    else
    {

      sub_1003C41CC(v21, type metadata accessor for SDAirDropDiscoveredEndpoint);
    }

    v43 = *(v0 + 696);
    v44 = *(v0 + 680);
    v45 = *(v0 + 664);
    v46 = *(v0 + 656);
    v100 = *(v0 + 648);
    v102 = *(v0 + 640);
    v106 = *(v0 + 632);
    v108 = v45;
    v47 = *(v0 + 568);
    v48 = *(v0 + 560);
    v49 = *(v0 + 368);
    v50 = *(v0 + 376);
    sub_1003C36B0(*(v0 + 360), v43, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v96 = *(v50 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_deviceStatus);
    *(v0 + 728) = v96;
    v98 = *(v50 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_pseudonymService);
    v91 = *(v50 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_queue);
    v92 = *(v45 + 16);
    *(v0 + 736) = v92;
    *(v0 + 744) = (v45 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v51 = v46;
    v92(v44, v49, v46);
    v104 = type metadata accessor for SDAirDropSendConnection();
    v52 = objc_allocWithZone(v104);
    *&v52[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_receiverFeatureFlags] = 0;
    *&v52[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_primaryConnection] = 0;
    v53 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloRequest;
    v54 = _s12HelloRequestVMa();
    (*(*(v54 - 8) + 56))(&v52[v53], 1, 1, v54);
    v55 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloContinuation;
    v56 = sub_10028088C(&qword_100977B48, &qword_1007FAD70);
    (*(*(v56 - 8) + 56))(&v52[v55], 1, 1, v56);
    *&v52[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloConnection] = 0;
    (*(v47 + 56))(&v52[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askRequest], 1, 1, v48);
    *&v52[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askConnection] = 0;
    v57 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askContinuation;
    v58 = sub_10028088C(&qword_100977B60, &qword_1007FAD78);
    (*(*(v58 - 8) + 56))(&v52[v57], 1, 1, v58);
    v59 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadRequest;
    v60 = _s13UploadRequestVMa();
    (*(*(v60 - 8) + 56))(&v52[v59], 1, 1, v60);
    *&v52[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadContext] = 0;
    *&v52[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadConnection] = 0;
    v61 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadContinuation;
    v62 = sub_10028088C(&qword_100977B78, &qword_1007FAD80);
    (*(*(v62 - 8) + 56))(&v52[v61], 1, 1, v62);
    *&v52[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_sandboxTokenURLPairs] = _swiftEmptyArrayStorage;
    *&v52[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_sendCompressionAdapter] = 0;
    *&v52[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeConnection] = 0;
    v63 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeContinuation;
    v64 = sub_10028088C(&qword_100977B88, &qword_1007FAD88);
    (*(*(v64 - 8) + 56))(&v52[v63], 1, 1, v64);
    *&v52[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_errorConnection] = 0;
    v65 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_lastActiveInterfaceType;
    v66 = enum case for SFNWInterfaceType.awdl(_:);
    v67 = type metadata accessor for SFNWInterfaceType();
    (*(*(v67 - 8) + 104))(&v52[v65], v66, v67);
    sub_10062DCB4();
    sub_1003C36B0(v43, &v52[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_endpoint], type metadata accessor for SDAirDropDiscoveredEndpoint);
    *&v52[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_queue] = v91;
    *&v52[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_deviceStatus] = v96;
    *&v52[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_pseudonymService] = v98;
    v92(&v52[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_sendRequest], v44, v51);
    v68 = v91;
    v69 = v96;

    SFAirDrop.NetworkMetrics.init()();
    (*(v102 + 32))(&v52[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_metrics], v100, v106);
    v70 = type metadata accessor for SDAirDropP2PMonitor();
    v71 = swift_allocObject();
    *(v71 + 16) = [objc_allocWithZone(WiFiP2PAWDLStateMonitor) init];
    v72 = &v52[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_p2pMonitor];
    v72[3] = v70;
    v72[4] = &off_1008DBC50;
    *v72 = v71;
    *(v0 + 296) = v52;
    *(v0 + 304) = v104;
    v73 = objc_msgSendSuper2((v0 + 296), "init");
    *(v0 + 752) = v73;
    (*(v108 + 8))(v44, v51);
    sub_1003C41CC(v43, type metadata accessor for SDAirDropDiscoveredEndpoint);
    swift_beginAccess();
    sub_10046EFE8(v110, v73);
    swift_endAccess();

    v74 = SFAirDropSend.Request.urls.getter();
    *(v0 + 760) = v74;
    v75 = *(v0 + 368);
    if (v74)
    {
      v76 = v74;
      v77 = SFAirDropSend.Request.requestSource.getter();
      v78 = v69;
      v80 = v79;
      *(v0 + 768) = v79;
      v81 = swift_task_alloc();
      *(v0 + 776) = v81;
      *v81 = v0;
      v81[1] = sub_1003B2DD8;
      v82 = *(v0 + 360);
      v83 = *(v0 + 368);

      return sub_1003DAC7C(v83, v76, v77, v80, v82, v78);
    }

    else
    {
      v84 = SFAirDropSend.Request.urls.getter();
      *(v0 + 808) = 0;
      *(v0 + 800) = v84;
      v85 = *(v0 + 368);
      type metadata accessor for SDAirDropContentHandlerUtilities();
      v86 = SFAirDropSend.Request.requestSource.getter();
      v88 = v87;
      *(v0 + 816) = v87;
      v89 = swift_task_alloc();
      *(v0 + 824) = v89;
      *v89 = v0;
      v89[1] = sub_1003B354C;
      v90 = *(v0 + 360);

      return sub_1003CEFE4(v84, v86, v88, v90);
    }
  }
}

uint64_t sub_1003B2DD8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 776);
  v6 = *v2;
  *(*v2 + 784) = v1;

  if (v1)
  {
    v7 = v4[89];
    v8 = sub_1003B3008;
  }

  else
  {
    v9 = v4[96];
    v10 = v4[95];
    v11 = v4[89];

    v4[99] = a1;

    v8 = sub_1003B2F2C;
    v7 = v11;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1003B2F2C()
{
  v1 = v0[99];
  v0[101] = v1;
  v0[100] = v1;
  v2 = v0[46];
  type metadata accessor for SDAirDropContentHandlerUtilities();

  v3 = SFAirDropSend.Request.requestSource.getter();
  v5 = v4;
  v0[102] = v4;
  v6 = swift_task_alloc();
  v0[103] = v6;
  *v6 = v0;
  v6[1] = sub_1003B354C;
  v7 = v0[45];

  return sub_1003CEFE4(v1, v3, v5, v7);
}

uint64_t sub_1003B3008()
{
  v1 = v0[96];
  v2 = v0[95];

  v3 = v0[98];
  v4 = v0[61];
  v5 = v0[59];
  v0[39] = v3;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v6 = v0[94];
    v7 = v0[87];
    v8 = v0[60];
    v55 = v0[59];
    v57 = v0[61];
    v9 = v0[52];
    v11 = v0[49];
    v10 = v0[50];
    v12 = v0[45];

    sub_1003C36B0(v12, v7, type metadata accessor for SDAirDropDiscoveredEndpoint);
    (*(v10 + 104))(v9, enum case for SFAirDropSend.Failure.cancelled(_:), v11);
    v13 = _s15EndpointFailureVMa(0);
    sub_1003C3718(&qword_10097B358, _s15EndpointFailureVMa);
    swift_allocError();
    v15 = v14;
    sub_10000ED78(v7, v14, type metadata accessor for SDAirDropDiscoveredEndpoint);
    (*(v10 + 32))(v15 + *(v13 + 20), v9, v11);
    swift_willThrow();

    (*(v8 + 8))(v57, v55);
    v16 = v0[39];
  }

  else
  {
    v17 = v0[49];
    v18 = v0[50];
    v19 = v0[48];
    v20 = v0[39];

    v0[40] = v3;
    swift_errorRetain();
    v21 = swift_dynamicCast();
    v22 = *(v18 + 56);
    v24 = v0[50];
    v23 = v0[51];
    v26 = v0[48];
    v25 = v0[49];
    if (v21)
    {
      v22(v0[48], 0, 1, v0[49]);
      (*(v24 + 32))(v23, v26, v25);
    }

    else
    {
      v22(v0[48], 1, 1, v0[49]);
      swift_errorRetain();
      CodableError.init(_:)();
      (*(v24 + 104))(v23, enum case for SFAirDropSend.Failure.unexpected(_:), v25);
      if ((*(v24 + 48))(v26, 1, v25) != 1)
      {
        sub_100005508(v0[48], &qword_10097B350, &qword_1007FE758);
      }
    }

    v58 = v0[94];
    v27 = v0[87];
    v28 = v0[51];
    v29 = v0[52];
    v31 = v0[49];
    v30 = v0[50];
    sub_1003C36B0(v0[45], v27, type metadata accessor for SDAirDropDiscoveredEndpoint);
    (*(v30 + 16))(v29, v28, v31);
    v32 = _s15EndpointFailureVMa(0);
    sub_1003C3718(&qword_10097B358, _s15EndpointFailureVMa);
    swift_allocError();
    v34 = v33;
    sub_10000ED78(v27, v33, type metadata accessor for SDAirDropDiscoveredEndpoint);
    (*(v30 + 32))(v34 + *(v32 + 20), v29, v31);
    swift_willThrow();

    (*(v30 + 8))(v28, v31);
  }

  v35 = v0[88];
  v36 = v0[87];
  v37 = v0[86];
  v38 = v0[85];
  v39 = v0[84];
  v40 = v0[81];
  v41 = v0[78];
  v42 = v0[77];
  v43 = v0[75];
  v44 = v0[72];
  v47 = v0[69];
  v48 = v0[66];
  v49 = v0[65];
  v50 = v0[64];
  v51 = v0[61];
  v52 = v0[58];
  v53 = v0[55];
  v54 = v0[52];
  v56 = v0[51];
  v59 = v0[48];

  v45 = v0[1];

  return v45();
}

uint64_t sub_1003B354C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 824);
  v13 = *v4;
  v5[104] = a1;
  v5[105] = a2;
  v5[106] = a3;
  v5[107] = v3;

  if (v3)
  {
    v7 = v5[89];
    v8 = sub_1003B3804;
  }

  else
  {
    v9 = v5[102];
    v10 = v5[100];
    v11 = v5[89];

    v8 = sub_1003B368C;
    v7 = v11;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1003B368C()
{
  if (v0[104])
  {
    v1 = v0[106];
    v2 = v0[105];
    v3 = v0[47];
    sub_1003C42B8(v0[104]);

    swift_beginAccess();
    sub_1004037BC(v1);
    swift_endAccess();

    v4 = v0[104];
  }

  else
  {
    v5 = v0[101];
    v6 = v0[47];
    swift_beginAccess();
    sub_1004037BC(_swiftEmptyArrayStorage);
    swift_endAccess();
    if (v5)
    {
      v7 = v0[101];
    }

    else
    {
      v8 = v0[46];
      v4 = SFAirDropSend.Request.urls.getter();
    }
  }

  v0[108] = v4;
  v9 = swift_task_alloc();
  v0[109] = v9;
  *v9 = v0;
  v9[1] = sub_1003B3D54;
  v10 = v0[94];
  v11 = v0[46];
  v12 = v0[47];
  v13 = v0[45];

  return sub_1003AD788(v11, v10, v13);
}

uint64_t sub_1003B3804()
{
  v1 = v0[102];
  v2 = v0[101];
  v3 = v0[100];

  v4 = v0[107];
  v5 = v0[61];
  v6 = v0[59];
  v0[39] = v4;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v7 = v0[94];
    v8 = v0[87];
    v9 = v0[60];
    v56 = v0[59];
    v58 = v0[61];
    v10 = v0[52];
    v12 = v0[49];
    v11 = v0[50];
    v13 = v0[45];

    sub_1003C36B0(v13, v8, type metadata accessor for SDAirDropDiscoveredEndpoint);
    (*(v11 + 104))(v10, enum case for SFAirDropSend.Failure.cancelled(_:), v12);
    v14 = _s15EndpointFailureVMa(0);
    sub_1003C3718(&qword_10097B358, _s15EndpointFailureVMa);
    swift_allocError();
    v16 = v15;
    sub_10000ED78(v8, v15, type metadata accessor for SDAirDropDiscoveredEndpoint);
    (*(v11 + 32))(v16 + *(v14 + 20), v10, v12);
    swift_willThrow();

    (*(v9 + 8))(v58, v56);
    v17 = v0[39];
  }

  else
  {
    v18 = v0[49];
    v19 = v0[50];
    v20 = v0[48];
    v21 = v0[39];

    v0[40] = v4;
    swift_errorRetain();
    v22 = swift_dynamicCast();
    v23 = *(v19 + 56);
    v25 = v0[50];
    v24 = v0[51];
    v27 = v0[48];
    v26 = v0[49];
    if (v22)
    {
      v23(v0[48], 0, 1, v0[49]);
      (*(v25 + 32))(v24, v27, v26);
    }

    else
    {
      v23(v0[48], 1, 1, v0[49]);
      swift_errorRetain();
      CodableError.init(_:)();
      (*(v25 + 104))(v24, enum case for SFAirDropSend.Failure.unexpected(_:), v26);
      if ((*(v25 + 48))(v27, 1, v26) != 1)
      {
        sub_100005508(v0[48], &qword_10097B350, &qword_1007FE758);
      }
    }

    v59 = v0[94];
    v28 = v0[87];
    v29 = v0[51];
    v30 = v0[52];
    v32 = v0[49];
    v31 = v0[50];
    sub_1003C36B0(v0[45], v28, type metadata accessor for SDAirDropDiscoveredEndpoint);
    (*(v31 + 16))(v30, v29, v32);
    v33 = _s15EndpointFailureVMa(0);
    sub_1003C3718(&qword_10097B358, _s15EndpointFailureVMa);
    swift_allocError();
    v35 = v34;
    sub_10000ED78(v28, v34, type metadata accessor for SDAirDropDiscoveredEndpoint);
    (*(v31 + 32))(v35 + *(v33 + 20), v30, v32);
    swift_willThrow();

    (*(v31 + 8))(v29, v32);
  }

  v36 = v0[88];
  v37 = v0[87];
  v38 = v0[86];
  v39 = v0[85];
  v40 = v0[84];
  v41 = v0[81];
  v42 = v0[78];
  v43 = v0[77];
  v44 = v0[75];
  v45 = v0[72];
  v48 = v0[69];
  v49 = v0[66];
  v50 = v0[65];
  v51 = v0[64];
  v52 = v0[61];
  v53 = v0[58];
  v54 = v0[55];
  v55 = v0[52];
  v57 = v0[51];
  v60 = v0[48];

  v46 = v0[1];

  return v46();
}

uint64_t sub_1003B3D54(uint64_t a1)
{
  v2 = *(*v1 + 872);
  v3 = *(*v1 + 712);
  v5 = *v1;
  *(*v1 + 880) = a1;

  return _swift_task_switch(sub_1003B3E6C, v3, 0);
}

uint64_t sub_1003B3E6C()
{
  v1 = v0[110];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[73];
  v5 = v0[46];
  SFAirDropSend.Request.type.getter();
  LOBYTE(v5) = SFAirDrop.TransferType.isPeerPayment.getter();
  (*(v3 + 8))(v2, v4);
  if ((v5 & 1) != 0 && ((v1 & 0xFF00000000) != 0x300000000 ? (v6 = (v1 & 2) == 0) : (v6 = 0), v6))
  {
    v7 = v0[108];
    v8 = v0[106];
    v9 = v0[105];
    v10 = v0[104];
    v11 = v0[90];
    v12 = v0[47];

    sub_1003C426C(v10);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Hello response - peerPayment type is not supported by receiver device", v15, 2u);
    }

    v16 = v0[101];
    v17 = v0[49];
    v18 = v0[50];

    sub_1003C3718(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
    v19 = swift_allocError();
    (*(v18 + 104))(v20, enum case for SFAirDropSend.Failure.unsupportedConnection(_:), v17);
    swift_willThrow();

    v21 = v0[61];
    v22 = v0[59];
    v0[39] = v19;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    if (swift_dynamicCast())
    {
      v23 = v0[94];
      v24 = v0[87];
      v25 = v0[60];
      v92 = v0[59];
      v94 = v0[61];
      v26 = v0[52];
      v28 = v0[49];
      v27 = v0[50];
      v29 = v0[45];

      sub_1003C36B0(v29, v24, type metadata accessor for SDAirDropDiscoveredEndpoint);
      (*(v27 + 104))(v26, enum case for SFAirDropSend.Failure.cancelled(_:), v28);
      v30 = _s15EndpointFailureVMa(0);
      sub_1003C3718(&qword_10097B358, _s15EndpointFailureVMa);
      swift_allocError();
      v32 = v31;
      sub_10000ED78(v24, v31, type metadata accessor for SDAirDropDiscoveredEndpoint);
      (*(v27 + 32))(v32 + *(v30 + 20), v26, v28);
      swift_willThrow();

      (*(v25 + 8))(v94, v92);
      v33 = v0[39];
    }

    else
    {
      v55 = v0[49];
      v56 = v0[50];
      v57 = v0[48];
      v58 = v0[39];

      v0[40] = v19;
      swift_errorRetain();
      v59 = swift_dynamicCast();
      v60 = *(v56 + 56);
      v62 = v0[50];
      v61 = v0[51];
      v64 = v0[48];
      v63 = v0[49];
      if (v59)
      {
        v60(v0[48], 0, 1, v0[49]);
        (*(v62 + 32))(v61, v64, v63);
      }

      else
      {
        v60(v0[48], 1, 1, v0[49]);
        swift_errorRetain();
        CodableError.init(_:)();
        (*(v62 + 104))(v61, enum case for SFAirDropSend.Failure.unexpected(_:), v63);
        if ((*(v62 + 48))(v64, 1, v63) != 1)
        {
          sub_100005508(v0[48], &qword_10097B350, &qword_1007FE758);
        }
      }

      v95 = v0[94];
      v65 = v0[87];
      v66 = v0[51];
      v67 = v0[52];
      v69 = v0[49];
      v68 = v0[50];
      sub_1003C36B0(v0[45], v65, type metadata accessor for SDAirDropDiscoveredEndpoint);
      (*(v68 + 16))(v67, v66, v69);
      v70 = _s15EndpointFailureVMa(0);
      sub_1003C3718(&qword_10097B358, _s15EndpointFailureVMa);
      swift_allocError();
      v72 = v71;
      sub_10000ED78(v65, v71, type metadata accessor for SDAirDropDiscoveredEndpoint);
      (*(v68 + 32))(v72 + *(v70 + 20), v67, v69);
      swift_willThrow();

      (*(v68 + 8))(v66, v69);
    }

    v73 = v0[88];
    v74 = v0[87];
    v75 = v0[86];
    v76 = v0[85];
    v77 = v0[84];
    v78 = v0[81];
    v79 = v0[78];
    v80 = v0[77];
    v81 = v0[75];
    v82 = v0[72];
    v84 = v0[69];
    v85 = v0[66];
    v86 = v0[65];
    v87 = v0[64];
    v88 = v0[61];
    v89 = v0[58];
    v90 = v0[55];
    v91 = v0[52];
    v93 = v0[51];
    v96 = v0[48];

    v83 = v0[1];

    return v83();
  }

  else
  {
    v34 = v0[101];
    v35 = v0[93];
    v36 = v0[92];
    v37 = v0[91];
    v38 = v0[84];
    v39 = v0[82];
    v40 = v0[46];
    v41 = v0[45];
    sub_10032FC64(v37, *(v0[47] + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_nearbyAgent));
    v43 = v42;
    v45 = v44;
    v36(v38, v40, v39);
    v46 = v37;

    v47 = swift_task_alloc();
    v0[111] = v47;
    *v47 = v0;
    v47[1] = sub_1003B4618;
    v48 = v0[105];
    v49 = v0[104];
    v50 = v0[101];
    v51 = v0[91];
    v52 = v0[84];
    v53 = v0[72];
    v98 = v0[106];

    return sub_1005A1C54(v53, v52, v43, v45, v51, v50, v49, v48);
  }
}