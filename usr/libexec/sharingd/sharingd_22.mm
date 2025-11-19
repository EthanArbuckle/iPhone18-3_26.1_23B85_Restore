uint64_t sub_1003B4618()
{
  v2 = *v1;
  v3 = *(*v1 + 888);
  v9 = *v1;
  *(*v1 + 896) = v0;

  if (v0)
  {
    v4 = *(v2 + 864);
    v5 = *(v2 + 712);

    v6 = sub_1003B5050;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 712);
    v6 = sub_1003B4740;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1003B4740()
{
  v1 = *(v0 + 864);
  v2 = *(v0 + 752);
  v3 = *(v0 + 552);
  v4 = *(v0 + 528);
  sub_1002FF790(*(v0 + 576));
  v5 = sub_10028088C(&qword_10097B2C0, &qword_1007FE678);
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 1, 1, v5);
  if (v1)
  {
    v7 = (*(v0 + 880) & 0xFF00000000) == 0x300000000 || (*(v0 + 880) & 1) == 0;
    if (!v7 && *(v0 + 944) != 0)
    {
      v93 = v6;
      v9 = *(v0 + 864);
      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = *(v0 + 456);
        v12 = *(v0 + 432);

        sub_10028FAB4(0, v10, 0);
        v13 = *(v12 + 16);
        v12 += 16;
        v14 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
        v95 = *(v12 + 56);
        v98 = v13;
        v15 = (v12 - 8);
        do
        {
          v16 = *(v0 + 464);
          v17 = *(v0 + 440);
          v18 = *(v0 + 424);
          v98(v17, v14, v18);
          SFSecurityScopedURL.url.getter();
          (*v15)(v17, v18);
          v20 = _swiftEmptyArrayStorage[2];
          v19 = _swiftEmptyArrayStorage[3];
          if (v20 >= v19 >> 1)
          {
            sub_10028FAB4(v19 > 1, v20 + 1, 1);
          }

          v21 = *(v0 + 464);
          v22 = *(v0 + 448);
          _swiftEmptyArrayStorage[2] = v20 + 1;
          (*(v11 + 32))(_swiftEmptyArrayStorage + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20, v21, v22);
          v14 += v95;
          --v10;
        }

        while (v10);
      }

      v23 = *(v0 + 752);
      v24 = *(v0 + 528);
      v25 = *(v0 + 520);
      v26 = *(v0 + 504);
      v27 = *(v0 + 512);
      v28 = *(v0 + 496);
      v29 = *(v0 + 368);
      SFAirDropSend.Request.id.getter();
      sub_100301C1C(_swiftEmptyArrayStorage, v25);

      (*(v26 + 8))(v27, v28);
      sub_100005508(v24, &qword_10097B1B8, &qword_1007FE4C0);
      v93(v25, 0, 1, v5);
      sub_10002C4E4(v25, v24, &qword_10097B1B8, &qword_1007FE4C0);
    }
  }

  if (static Task<>.isCancelled.getter())
  {
    v30 = *(v0 + 864);
    v31 = *(v0 + 808);
    v32 = *(v0 + 576);
    v33 = *(v0 + 552);
    v34 = *(v0 + 544);
    v35 = *(v0 + 536);
    v36 = *(v0 + 528);
    v37 = *(v0 + 472);

    sub_1003C3718(&unk_10097A6B0, &type metadata accessor for CancellationError);
    v38 = swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    sub_100005508(v36, &qword_10097B1B8, &qword_1007FE4C0);
    (*(v34 + 8))(v33, v35);
    sub_1003C41CC(v32, _s10AskRequestVMa);
    v39 = *(v0 + 488);
    v40 = *(v0 + 472);
    *(v0 + 312) = v38;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    if (swift_dynamicCast())
    {
      v41 = *(v0 + 752);
      v42 = *(v0 + 696);
      v43 = *(v0 + 480);
      v96 = *(v0 + 472);
      v99 = *(v0 + 488);
      v44 = *(v0 + 416);
      v46 = *(v0 + 392);
      v45 = *(v0 + 400);
      v47 = *(v0 + 360);

      sub_1003C36B0(v47, v42, type metadata accessor for SDAirDropDiscoveredEndpoint);
      (*(v45 + 104))(v44, enum case for SFAirDropSend.Failure.cancelled(_:), v46);
      v48 = _s15EndpointFailureVMa(0);
      sub_1003C3718(&qword_10097B358, _s15EndpointFailureVMa);
      swift_allocError();
      v50 = v49;
      sub_10000ED78(v42, v49, type metadata accessor for SDAirDropDiscoveredEndpoint);
      (*(v45 + 32))(v50 + *(v48 + 20), v44, v46);
      swift_willThrow();

      (*(v43 + 8))(v99, v96);
      v51 = *(v0 + 312);
    }

    else
    {
      v56 = *(v0 + 392);
      v57 = *(v0 + 400);
      v58 = *(v0 + 384);
      v59 = *(v0 + 312);

      *(v0 + 320) = v38;
      swift_errorRetain();
      v60 = swift_dynamicCast();
      v61 = *(v57 + 56);
      v63 = *(v0 + 400);
      v62 = *(v0 + 408);
      v65 = *(v0 + 384);
      v64 = *(v0 + 392);
      if (v60)
      {
        v61(*(v0 + 384), 0, 1, *(v0 + 392));
        (*(v63 + 32))(v62, v65, v64);
      }

      else
      {
        v61(*(v0 + 384), 1, 1, *(v0 + 392));
        swift_errorRetain();
        CodableError.init(_:)();
        (*(v63 + 104))(v62, enum case for SFAirDropSend.Failure.unexpected(_:), v64);
        if ((*(v63 + 48))(v65, 1, v64) != 1)
        {
          sub_100005508(*(v0 + 384), &qword_10097B350, &qword_1007FE758);
        }
      }

      v100 = *(v0 + 752);
      v66 = *(v0 + 696);
      v67 = *(v0 + 408);
      v68 = *(v0 + 416);
      v70 = *(v0 + 392);
      v69 = *(v0 + 400);
      sub_1003C36B0(*(v0 + 360), v66, type metadata accessor for SDAirDropDiscoveredEndpoint);
      (*(v69 + 16))(v68, v67, v70);
      v71 = _s15EndpointFailureVMa(0);
      sub_1003C3718(&qword_10097B358, _s15EndpointFailureVMa);
      swift_allocError();
      v73 = v72;
      sub_10000ED78(v66, v72, type metadata accessor for SDAirDropDiscoveredEndpoint);
      (*(v69 + 32))(v73 + *(v71 + 20), v68, v70);
      swift_willThrow();

      (*(v69 + 8))(v67, v70);
    }

    v74 = *(v0 + 704);
    v75 = *(v0 + 696);
    v76 = *(v0 + 688);
    v77 = *(v0 + 680);
    v78 = *(v0 + 672);
    v79 = *(v0 + 648);
    v80 = *(v0 + 624);
    v81 = *(v0 + 616);
    v82 = *(v0 + 600);
    v83 = *(v0 + 576);
    v86 = *(v0 + 552);
    v87 = *(v0 + 528);
    v88 = *(v0 + 520);
    v89 = *(v0 + 512);
    v90 = *(v0 + 488);
    v91 = *(v0 + 464);
    v92 = *(v0 + 440);
    v94 = *(v0 + 416);
    v97 = *(v0 + 408);
    v101 = *(v0 + 384);

    v84 = *(v0 + 8);

    return v84();
  }

  else
  {
    v52 = async function pointer to SFProgressTask.finalValue.getter[1];
    v53 = swift_task_alloc();
    *(v0 + 904) = v53;
    *v53 = v0;
    v53[1] = sub_1003B5588;
    v54 = *(v0 + 552);
    v55 = *(v0 + 536);

    return SFProgressTask.finalValue.getter(v0 + 16, v55);
  }
}

uint64_t sub_1003B5050()
{
  v1 = v0[101];

  v2 = v0[112];
  v3 = v0[61];
  v4 = v0[59];
  v0[39] = v2;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v5 = v0[94];
    v6 = v0[87];
    v7 = v0[60];
    v54 = v0[59];
    v56 = v0[61];
    v8 = v0[52];
    v10 = v0[49];
    v9 = v0[50];
    v11 = v0[45];

    sub_1003C36B0(v11, v6, type metadata accessor for SDAirDropDiscoveredEndpoint);
    (*(v9 + 104))(v8, enum case for SFAirDropSend.Failure.cancelled(_:), v10);
    v12 = _s15EndpointFailureVMa(0);
    sub_1003C3718(&qword_10097B358, _s15EndpointFailureVMa);
    swift_allocError();
    v14 = v13;
    sub_10000ED78(v6, v13, type metadata accessor for SDAirDropDiscoveredEndpoint);
    (*(v9 + 32))(v14 + *(v12 + 20), v8, v10);
    swift_willThrow();

    (*(v7 + 8))(v56, v54);
    v15 = v0[39];
  }

  else
  {
    v16 = v0[49];
    v17 = v0[50];
    v18 = v0[48];
    v19 = v0[39];

    v0[40] = v2;
    swift_errorRetain();
    v20 = swift_dynamicCast();
    v21 = *(v17 + 56);
    v23 = v0[50];
    v22 = v0[51];
    v25 = v0[48];
    v24 = v0[49];
    if (v20)
    {
      v21(v0[48], 0, 1, v0[49]);
      (*(v23 + 32))(v22, v25, v24);
    }

    else
    {
      v21(v0[48], 1, 1, v0[49]);
      swift_errorRetain();
      CodableError.init(_:)();
      (*(v23 + 104))(v22, enum case for SFAirDropSend.Failure.unexpected(_:), v24);
      if ((*(v23 + 48))(v25, 1, v24) != 1)
      {
        sub_100005508(v0[48], &qword_10097B350, &qword_1007FE758);
      }
    }

    v57 = v0[94];
    v26 = v0[87];
    v27 = v0[51];
    v28 = v0[52];
    v30 = v0[49];
    v29 = v0[50];
    sub_1003C36B0(v0[45], v26, type metadata accessor for SDAirDropDiscoveredEndpoint);
    (*(v29 + 16))(v28, v27, v30);
    v31 = _s15EndpointFailureVMa(0);
    sub_1003C3718(&qword_10097B358, _s15EndpointFailureVMa);
    swift_allocError();
    v33 = v32;
    sub_10000ED78(v26, v32, type metadata accessor for SDAirDropDiscoveredEndpoint);
    (*(v29 + 32))(v33 + *(v31 + 20), v28, v30);
    swift_willThrow();

    (*(v29 + 8))(v27, v30);
  }

  v34 = v0[88];
  v35 = v0[87];
  v36 = v0[86];
  v37 = v0[85];
  v38 = v0[84];
  v39 = v0[81];
  v40 = v0[78];
  v41 = v0[77];
  v42 = v0[75];
  v43 = v0[72];
  v46 = v0[69];
  v47 = v0[66];
  v48 = v0[65];
  v49 = v0[64];
  v50 = v0[61];
  v51 = v0[58];
  v52 = v0[55];
  v53 = v0[52];
  v55 = v0[51];
  v58 = v0[48];

  v44 = v0[1];

  return v44();
}

uint64_t sub_1003B5588()
{
  v2 = *v1;
  v3 = *(*v1 + 904);
  v10 = *v1;
  *(*v1 + 912) = v0;

  if (v0)
  {
    v4 = *(v2 + 864);
    v5 = *(v2 + 712);

    v6 = sub_1003B5B08;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 712);
    v8 = *(v2 + 608);
    *(v2 + 920) = v8[12];
    *(v2 + 924) = v8[16];
    *(v2 + 928) = v8[20];
    *(v2 + 932) = v8[24];
    *(v2 + 936) = v8[28];
    *(v2 + 940) = v8[32];
    v6 = sub_1003B56E4;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1003B56E4()
{
  v45 = *(v0 + 936);
  v32 = *(v0 + 928);
  v30 = *(v0 + 920);
  v34 = *(v0 + 880);
  v40 = *(v0 + 924);
  v41 = *(v0 + 864);
  v1 = *(v0 + 808);
  v36 = *(v0 + 940);
  v38 = *(v0 + 752);
  v47 = *(v0 + 704);
  v48 = *(v0 + 696);
  v49 = *(v0 + 688);
  v50 = *(v0 + 680);
  v51 = *(v0 + 672);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  v4 = *(v0 + 608);
  v52 = *(v0 + 648);
  v53 = *(v0 + 600);
  v5 = *(v0 + 576);
  v6 = *(v0 + 552);
  v7 = *(v0 + 544);
  v8 = *(v0 + 536);
  v54 = *(v0 + 520);
  v55 = *(v0 + 512);
  v59 = *(v0 + 464);
  v61 = *(v0 + 440);
  v62 = *(v0 + 528);
  v9 = v2 + *(v0 + 932);
  v56 = *(v0 + 416);
  v57 = *(v0 + 488);
  v58 = *(v0 + 408);
  v60 = *(v0 + 384);
  v28 = *(v0 + 360);
  v44 = *(v0 + 352);
  v42 = *(v0 + 336);
  v43 = *(v0 + 344);
  v10 = *(v0 + 328);

  (*(v7 + 8))(v6, v8);
  v11 = *(v0 + 48);
  *(v0 + 168) = *(v0 + 64);
  v12 = *(v0 + 96);
  *(v0 + 184) = *(v0 + 80);
  *(v0 + 200) = v12;
  *(v0 + 216) = *(v0 + 112);
  v13 = *(v0 + 32);
  *(v0 + 120) = *(v0 + 16);
  *(v0 + 136) = v13;
  *(v0 + 152) = v11;
  sub_10000ED78(v5, v2 + v30, _s10AskRequestVMa);
  sub_1003C36B0(v28, v2 + v32, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_10002C4E4(v62, v2 + v36, &qword_10097B1B8, &qword_1007FE4C0);
  *(v2 + 4) = BYTE4(v34);
  *v2 = v34;
  *(v2 + v40) = v38;
  v14 = *(v0 + 168);
  v15 = *(v0 + 184);
  v16 = *(v0 + 200);
  *(v9 + 96) = *(v0 + 216);
  *(v9 + 64) = v15;
  *(v9 + 80) = v16;
  *(v9 + 48) = v14;
  v17 = *(v0 + 120);
  v18 = *(v0 + 152);
  *(v9 + 16) = *(v0 + 136);
  *(v9 + 32) = v18;
  *v9 = v17;
  *(v2 + v45) = v41;
  v46 = v38;
  sub_10002C4E4(v2, v3, &qword_10097B320, &qword_100806120);
  LODWORD(v41) = *v3;
  LOBYTE(v40) = *(v3 + 4);
  v19 = v4[12];
  v20 = v4[20];
  v21 = v3 + v4[24];
  v22 = *(v21 + 16);
  v23 = *(v21 + 24);
  v37 = *(v3 + v4[28]);
  v39 = *(v3 + v4[16]);
  LOBYTE(v6) = *(v21 + 32);
  v24 = v4[32];
  v33 = *(v21 + 40);
  v35 = *v21;
  v29 = *(v21 + 56);
  v31 = *(v21 + 72);
  v27 = *(v21 + 88);
  sub_10000ED78(v3 + v19, v42, _s10AskRequestVMa);
  sub_10000ED78(v3 + v20, v43, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_10002C4E4(v3 + v24, v44, &qword_10097B1B8, &qword_1007FE4C0);

  *(v10 + 4) = v40;
  *v10 = v41;
  *(v10 + 8) = v39;
  *(v10 + 16) = v35;
  *(v10 + 32) = v22;
  *(v10 + 40) = v23;
  *(v10 + 48) = v6;
  *(v10 + 72) = v29;
  *(v10 + 56) = v33;
  *(v10 + 104) = v27;
  *(v10 + 88) = v31;
  *(v10 + 120) = v37;
  *(v10 + 128) = v46;
  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1003B5B08()
{
  v1 = v0[101];
  v2 = v0[72];
  v3 = v0[69];
  v4 = v0[68];
  v5 = v0[67];
  v6 = v0[66];

  sub_100005508(v6, &qword_10097B1B8, &qword_1007FE4C0);
  (*(v4 + 8))(v3, v5);
  sub_1003C41CC(v2, _s10AskRequestVMa);
  v7 = v0[114];
  v8 = v0[61];
  v9 = v0[59];
  v0[39] = v7;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v10 = v0[94];
    v11 = v0[87];
    v12 = v0[60];
    v59 = v0[59];
    v61 = v0[61];
    v13 = v0[52];
    v15 = v0[49];
    v14 = v0[50];
    v16 = v0[45];

    sub_1003C36B0(v16, v11, type metadata accessor for SDAirDropDiscoveredEndpoint);
    (*(v14 + 104))(v13, enum case for SFAirDropSend.Failure.cancelled(_:), v15);
    v17 = _s15EndpointFailureVMa(0);
    sub_1003C3718(&qword_10097B358, _s15EndpointFailureVMa);
    swift_allocError();
    v19 = v18;
    sub_10000ED78(v11, v18, type metadata accessor for SDAirDropDiscoveredEndpoint);
    (*(v14 + 32))(v19 + *(v17 + 20), v13, v15);
    swift_willThrow();

    (*(v12 + 8))(v61, v59);
    v20 = v0[39];
  }

  else
  {
    v21 = v0[49];
    v22 = v0[50];
    v23 = v0[48];
    v24 = v0[39];

    v0[40] = v7;
    swift_errorRetain();
    v25 = swift_dynamicCast();
    v26 = *(v22 + 56);
    v28 = v0[50];
    v27 = v0[51];
    v30 = v0[48];
    v29 = v0[49];
    if (v25)
    {
      v26(v0[48], 0, 1, v0[49]);
      (*(v28 + 32))(v27, v30, v29);
    }

    else
    {
      v26(v0[48], 1, 1, v0[49]);
      swift_errorRetain();
      CodableError.init(_:)();
      (*(v28 + 104))(v27, enum case for SFAirDropSend.Failure.unexpected(_:), v29);
      if ((*(v28 + 48))(v30, 1, v29) != 1)
      {
        sub_100005508(v0[48], &qword_10097B350, &qword_1007FE758);
      }
    }

    v62 = v0[94];
    v31 = v0[87];
    v32 = v0[51];
    v33 = v0[52];
    v35 = v0[49];
    v34 = v0[50];
    sub_1003C36B0(v0[45], v31, type metadata accessor for SDAirDropDiscoveredEndpoint);
    (*(v34 + 16))(v33, v32, v35);
    v36 = _s15EndpointFailureVMa(0);
    sub_1003C3718(&qword_10097B358, _s15EndpointFailureVMa);
    swift_allocError();
    v38 = v37;
    sub_10000ED78(v31, v37, type metadata accessor for SDAirDropDiscoveredEndpoint);
    (*(v34 + 32))(v38 + *(v36 + 20), v33, v35);
    swift_willThrow();

    (*(v34 + 8))(v32, v35);
  }

  v39 = v0[88];
  v40 = v0[87];
  v41 = v0[86];
  v42 = v0[85];
  v43 = v0[84];
  v44 = v0[81];
  v45 = v0[78];
  v46 = v0[77];
  v47 = v0[75];
  v48 = v0[72];
  v51 = v0[69];
  v52 = v0[66];
  v53 = v0[65];
  v54 = v0[64];
  v55 = v0[61];
  v56 = v0[58];
  v57 = v0[55];
  v58 = v0[52];
  v60 = v0[51];
  v63 = v0[48];

  v49 = v0[1];

  return v49();
}

uint64_t sub_1003B60A0(void *a1)
{
  v1 = *a1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_endpoint;
  v2 = sub_10032B99C();
  v4 = v3;
  if (v2 == sub_10032B99C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_1003B6148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = _s10AskRequestVMa();
  v5[14] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v8 = type metadata accessor for SFNWInterfaceTypeCategory();
  v5[16] = v8;
  v9 = *(v8 - 8);
  v5[17] = v9;
  v10 = *(v9 + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v11 = *(*(sub_10028088C(&qword_100977DC0, &unk_1007FB320) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v12 = type metadata accessor for SFAirDrop.Progress();
  v5[21] = v12;
  v13 = *(v12 - 8);
  v5[22] = v13;
  v14 = *(v13 + 64) + 15;
  v5[23] = swift_task_alloc();
  v15 = *(*(sub_10028088C(&qword_10097B2B0, &unk_100808F70) - 8) + 64) + 15;
  v5[24] = swift_task_alloc();
  v16 = sub_10028088C(&qword_10097B2B8, &qword_1007FE670);
  v5[25] = v16;
  v17 = *(v16 - 8);
  v5[26] = v17;
  v18 = *(v17 + 64) + 15;
  v5[27] = swift_task_alloc();
  v19 = type metadata accessor for SFNWInterfaceType();
  v5[28] = v19;
  v20 = *(v19 - 8);
  v5[29] = v20;
  v21 = *(v20 + 64) + 15;
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v22 = type metadata accessor for SFAirDropSend.Transfer.State();
  v5[32] = v22;
  v23 = *(v22 - 8);
  v5[33] = v23;
  v24 = *(v23 + 64) + 15;
  v5[34] = swift_task_alloc();
  v25 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v5[35] = v25;
  v26 = *(v25 - 8);
  v5[36] = v26;
  v27 = *(v26 + 64) + 15;
  v5[37] = swift_task_alloc();
  v28 = type metadata accessor for SFAirDrop.DeclineAction();
  v5[38] = v28;
  v29 = *(v28 - 8);
  v5[39] = v29;
  v30 = *(v29 + 64) + 15;
  v5[40] = swift_task_alloc();
  v31 = type metadata accessor for SFAirDrop.NetworkMetrics();
  v5[41] = v31;
  v32 = *(v31 - 8);
  v5[42] = v32;
  v33 = *(v32 + 64) + 15;
  v5[43] = swift_task_alloc();
  v34 = type metadata accessor for SFAirDropSend.Transfer();
  v5[44] = v34;
  v35 = *(v34 - 8);
  v5[45] = v35;
  v5[46] = *(v35 + 64);
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v36 = *(*(sub_10028088C(&qword_10097B1B8, &qword_1007FE4C0) - 8) + 64) + 15;
  v5[49] = swift_task_alloc();
  v37 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v5[50] = v37;
  v38 = *(v37 - 8);
  v5[51] = v38;
  v39 = *(v38 + 64) + 15;
  v5[52] = swift_task_alloc();
  v40 = sub_10028088C(&qword_10097B2C0, &qword_1007FE678);
  v5[53] = v40;
  v41 = *(v40 - 8);
  v5[54] = v41;
  v5[55] = *(v41 + 64);
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v42 = *(*(sub_10028088C(&qword_100977BD8, &qword_1007FAE38) - 8) + 64) + 15;
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v43 = type metadata accessor for SFAirDrop.TransferType();
  v5[60] = v43;
  v44 = *(v43 - 8);
  v5[61] = v44;
  v45 = *(v44 + 64) + 15;
  v5[62] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v46 = static AirDropActor.shared;
  v5[63] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003B67B4, v46, 0);
}

uint64_t sub_1003B67B4()
{
  v124 = v0;
  v1 = *(*(v0 + 104) + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_urls);
  *(v0 + 512) = v1;
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = *(v0 + 480);
  v3 = *(v0 + 488);
  v4 = *(v0 + 472);
  sub_10000FF90(*(v0 + 72) + *(*(v0 + 112) + 20), v4, &qword_100977BD8, &qword_1007FAE38);
  if ((*(v3 + 48))(v4, 1, v2) != 1)
  {
    (*(*(v0 + 488) + 32))(*(v0 + 496), *(v0 + 472), *(v0 + 480));

    v18 = SFAirDrop.TransferType.isFiles.getter();
    v20 = *(v0 + 488);
    v19 = *(v0 + 496);
    v21 = *(v0 + 480);
    if (v18)
    {
      (*(v20 + 8))(*(v0 + 496), *(v0 + 480));
    }

    else
    {
      v39 = SFAirDrop.TransferType.isCustom.getter();
      (*(v20 + 8))(v19, v21);
      if ((v39 & 1) == 0)
      {

        goto LABEL_4;
      }
    }

    v40 = *(v0 + 104);
    *(v0 + 520) = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_log;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Send StateMachine UPLOAD START", v43, 2u);
    }

    v44 = *(v0 + 424);
    v45 = *(v0 + 432);
    v46 = *(v0 + 96);

    v47 = *(v45 + 48);
    if (v47(v46, 1, v44) == 1)
    {
      v48 = *(v0 + 456);
      v50 = *(v0 + 408);
      v49 = *(v0 + 416);
      v51 = *(v0 + 400);
      v52 = *(v0 + 80);
      v53 = *(v0 + 104) + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_sendRequest;
      SFAirDropSend.Request.id.getter();
      sub_100301C1C(v1, v48);
      (*(v50 + 8))(v49, v51);
    }

    else
    {
      v54 = *(v0 + 424);
      v55 = *(v0 + 392);
      sub_10000FF90(*(v0 + 96), v55, &qword_10097B1B8, &qword_1007FE4C0);
      v56 = v47(v55, 1, v54);
      if (v56 == 1)
      {
        __break(1u);
        return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v56, v57, v58, v59, v60);
      }

      (*(*(v0 + 432) + 32))(*(v0 + 456), *(v0 + 392), *(v0 + 424));
    }

    v120 = *(v0 + 456);
    v97 = *(v0 + 440);
    v92 = *(v0 + 432);
    v94 = *(v0 + 424);
    v95 = *(v0 + 448);
    v61 = *(v0 + 384);
    v118 = *(v0 + 376);
    v62 = *(v0 + 360);
    v96 = *(v0 + 368);
    v63 = *(v0 + 344);
    v122 = *(v0 + 352);
    v64 = *(v0 + 328);
    v65 = *(v0 + 336);
    v98 = *(v0 + 320);
    v103 = *(v0 + 312);
    v105 = *(v0 + 304);
    v116 = *(v0 + 296);
    v66 = *(v0 + 288);
    v91 = *(v0 + 280);
    v101 = *(v0 + 272);
    v107 = *(v0 + 264);
    v109 = *(v0 + 256);
    v111 = *(v0 + 248);
    v113 = *(v0 + 216);
    v67 = *(v0 + 104);
    v68 = *(v0 + 80);
    v99 = *(v0 + 88);
    v69 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_metrics;
    *(v0 + 528) = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_metrics;
    swift_beginAccess();
    v70 = *(v65 + 16);
    *(v0 + 536) = v70;
    *(v0 + 544) = (v65 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v70(v63, &v68[v69], v64);
    sub_100335F90(v61);
    v71 = *(v65 + 8);
    *(v0 + 552) = v71;
    *(v0 + 560) = (v65 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v71(v63, v64);
    v93 = *(v62 + 8);
    *(v0 + 568) = v93;
    *(v0 + 576) = (v62 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v93(v61, v122);
    v72 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer;
    swift_beginAccess();
    v73 = *(v62 + 16);
    v73(v61, v67 + v72, v122);
    *v116 = 0x662E657261757173;
    v116[1] = 0xEB000000006C6C69;
    (*(v66 + 104))();
    v74 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v73(v118, v61, v122);
    (*(v92 + 16))(v95, v120, v94);
    v75 = (*(v62 + 80) + 24) & ~*(v62 + 80);
    v76 = (v96 + *(v92 + 80) + v75) & ~*(v92 + 80);
    v77 = swift_allocObject();
    *(v77 + 16) = v74;
    (*(v62 + 32))(v77 + v75, v118, v122);
    (*(v92 + 32))(v77 + v76, v95, v94);
    *(v77 + ((v97 + v76 + 7) & 0xFFFFFFFFFFFFFFF8)) = v68;

    v68;
    SFAirDrop.DeclineAction.init(id:buttonConfiguration:hidden:operation:)();
    v93(v61, v122);

    v78 = sub_10028088C(&qword_10097B2C8, &qword_1007FE680);
    *(v0 + 584) = v78;
    v79 = v78[12];
    v80 = (v101 + v78[16]);
    v81 = v78[20];
    *v101 = sub_10032B99C();
    *(v101 + 8) = v82;
    SFProgressTask.initialValue.getter();
    *v80 = 0;
    v80[1] = 0;
    v83 = *(v103 + 16);
    *(v0 + 592) = v83;
    *(v0 + 600) = (v103 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v83(v101 + v81, v98, v105);
    *(v0 + 656) = enum case for SFAirDropSend.Transfer.State.transferring(_:);
    v84 = *(v107 + 104);
    *(v0 + 608) = v84;
    *(v0 + 616) = (v107 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v84(v101);
    sub_100335364(v101, v61);
    v85 = *(v107 + 8);
    *(v0 + 624) = v85;
    *(v0 + 632) = (v107 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v85(v101, v109);
    v93(v61, v122);
    sub_1002FCB68(v111);
    SFProgressTask.makeAsyncIterator()();
    v86 = sub_1003C3718(&qword_100977C00, type metadata accessor for AirDropActor);
    *(v0 + 640) = v86;
    *(v0 + 660) = enum case for SFNWInterfaceTypeCategory.regular(_:);
    v87 = *(v0 + 504);
    v88 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
    v89 = swift_task_alloc();
    *(v0 + 648) = v89;
    *v89 = v0;
    v89[1] = sub_1003B72F0;
    v90 = *(v0 + 216);
    v56 = *(v0 + 192);
    v59 = *(v0 + 200);
    v60 = v0 + 64;
    v57 = v87;
    v58 = v86;

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v56, v57, v58, v59, v60);
  }

  sub_100005508(*(v0 + 472), &qword_100977BD8, &qword_1007FAE38);
LABEL_4:
  v5 = *(v0 + 104);
  sub_1003C36B0(*(v0 + 72), *(v0 + 120), _s10AskRequestVMa);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 480);
    v9 = *(v0 + 488);
    v10 = *(v0 + 464);
    v12 = *(v0 + 112);
    v11 = *(v0 + 120);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v123 = v14;
    *v13 = 136315138;
    sub_10000FF90(v11 + *(v12 + 20), v10, &qword_100977BD8, &qword_1007FAE38);
    if ((*(v9 + 48))(v10, 1, v8) == 1)
    {
      sub_100005508(*(v0 + 464), &qword_100977BD8, &qword_1007FAE38);
      v15 = 0x800000010078E3B0;
      v16 = 0xD000000000000020;
    }

    else
    {
      v22 = *(v0 + 480);
      v23 = *(v0 + 488);
      v24 = *(v0 + 464);
      v16 = SFAirDrop.TransferType.description.getter();
      v15 = v25;
      (*(v23 + 8))(v24, v22);
    }

    sub_1003C41CC(*(v0 + 120), _s10AskRequestVMa);
    v26 = sub_10000C4E4(v16, v15, &v123);

    *(v13 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v6, v7, "Send StateMachine UPLOAD SKIPPED {type: %s", v13, 0xCu);
    sub_10000C60C(v14);
  }

  else
  {
    v17 = *(v0 + 120);

    sub_1003C41CC(v17, _s10AskRequestVMa);
  }

  v27 = *(v0 + 496);
  v29 = *(v0 + 464);
  v28 = *(v0 + 472);
  v31 = *(v0 + 448);
  v30 = *(v0 + 456);
  v32 = *(v0 + 416);
  v34 = *(v0 + 384);
  v33 = *(v0 + 392);
  v35 = *(v0 + 376);
  v36 = *(v0 + 344);
  v100 = *(v0 + 320);
  v102 = *(v0 + 296);
  v104 = *(v0 + 272);
  v106 = *(v0 + 248);
  v108 = *(v0 + 240);
  v110 = *(v0 + 216);
  v112 = *(v0 + 192);
  v114 = *(v0 + 184);
  v115 = *(v0 + 160);
  v117 = *(v0 + 152);
  v119 = *(v0 + 144);
  v121 = *(v0 + 120);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_1003B72F0()
{
  v2 = *v1;
  v3 = *(*v1 + 648);
  v9 = *v1;

  if (v0)
  {
    v5 = *(v2 + 504);
    v4 = *(v2 + 512);

    v6 = sub_1003B7D24;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 504);
    v6 = sub_1003B7410;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1003B7410()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v123 = *(v0 + 624);
  v125 = *(v0 + 632);
  v119 = *(v0 + 608);
  v121 = *(v0 + 616);
  v117 = *(v0 + 656);
  v113 = *(v0 + 592);
  v115 = *(v0 + 600);
  v5 = *(v0 + 584);
  v127 = *(v0 + 568);
  v130 = *(v0 + 576);
  if (v4 == 1)
  {
    v89 = *(v0 + 552);
    v90 = *(v0 + 560);
    v86 = *(v0 + 536);
    v87 = *(v0 + 544);
    v85 = *(v0 + 528);
    v6 = *(v0 + 384);
    v7 = *(v0 + 344);
    v8 = *(v0 + 352);
    v95 = *(v0 + 512);
    v9 = *(v0 + 328);
    v97 = *(v0 + 304);
    v99 = *(v0 + 320);
    v10 = *(v0 + 272);
    v104 = *(v0 + 232);
    v107 = *(v0 + 224);
    v110 = *(v0 + 520);
    v101 = *(v0 + 256);
    v103 = *(v0 + 160);
    v91 = v2;
    v92 = *(v0 + 104);
    v11 = *(v0 + 80);
    v88 = *(v0 + 88);
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    v86(v7, v11 + v85, v9);
    sub_100335F90(v6);
    v89(v7, v9);
    v127(v6, v8);
    v12 = v5[12];
    v13 = (v10 + v5[16]);
    v14 = v5[20];
    *v10 = sub_10032B99C();
    *(v10 + 8) = v15;
    *(v10 + v12) = v95;
    (*(v3 + 104))(v10 + v12, enum case for SFAirDrop.Progress.completed(_:), v91);
    *v13 = 0;
    v13[1] = 0;
    v113(v10 + v14, v99, v97);
    v119(v10, v117, v101);
    sub_100335364(v10, v6);
    v123(v10, v101);
    v127(v6, v8);
    (*(v104 + 56))(v103, 1, 1, v107);
    sub_100335980(v103, v6);
    sub_100005508(v103, &qword_100977DC0, &unk_1007FB320);
    v127(v6, v8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Send StateMachine UPLOAD END", v18, 2u);
    }

    v19 = *(v0 + 432);
    v128 = *(v0 + 424);
    v131 = *(v0 + 456);
    v20 = *(v0 + 312);
    v21 = *(v0 + 320);
    v22 = *(v0 + 304);
    v23 = *(v0 + 248);
    v25 = *(v0 + 224);
    v24 = *(v0 + 232);
    v26 = *(v0 + 80);

    sub_100305E34(0);
    (*(v24 + 8))(v23, v25);
    (*(v20 + 8))(v21, v22);
    (*(v19 + 8))(v131, v128);
    v27 = *(v0 + 496);
    v29 = *(v0 + 464);
    v28 = *(v0 + 472);
    v31 = *(v0 + 448);
    v30 = *(v0 + 456);
    v32 = *(v0 + 416);
    v34 = *(v0 + 384);
    v33 = *(v0 + 392);
    v35 = *(v0 + 376);
    v36 = *(v0 + 344);
    v105 = *(v0 + 320);
    v108 = *(v0 + 296);
    v111 = *(v0 + 272);
    v114 = *(v0 + 248);
    v116 = *(v0 + 240);
    v118 = *(v0 + 216);
    v120 = *(v0 + 192);
    v122 = *(v0 + 184);
    v124 = *(v0 + 160);
    v126 = *(v0 + 152);
    v129 = *(v0 + 144);
    v132 = *(v0 + 120);

    v37 = *(v0 + 8);

    return v37();
  }

  else
  {
    v94 = *(v0 + 304);
    v96 = *(v0 + 320);
    v39 = *(v0 + 272);
    v112 = *(v0 + 248);
    v40 = *(v0 + 240);
    v102 = *(v0 + 384);
    v106 = *(v0 + 352);
    v109 = *(v0 + 224);
    v41 = *(v0 + 184);
    v98 = *(v0 + 256);
    v100 = *(v0 + 104);
    v42 = *(v0 + 80);
    v93 = *(v0 + 88);
    (*(v3 + 32))(v41, v1, v2);
    sub_1002FCB68(v40);
    v43 = v5[12];
    v44 = v2;
    v45 = (v39 + v5[16]);
    v46 = v5[20];
    *v39 = sub_10032B99C();
    *(v39 + 8) = v47;
    (*(v3 + 16))(v39 + v43, v41, v44);
    *v45 = sub_100333B60();
    v45[1] = v48;
    v113(v39 + v46, v96, v94);
    v119(v39, v117, v98);
    sub_100335364(v39, v102);
    v123(v39, v98);
    v127(v102, v106);
    sub_1003C3718(&qword_10097AD50, &type metadata accessor for SFNWInterfaceType);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v49 = *(v0 + 576);
      v50 = *(v0 + 568);
      v51 = *(v0 + 384);
      v52 = *(v0 + 352);
      v53 = *(v0 + 232);
      v54 = *(v0 + 224);
      v55 = *(v0 + 160);
      v56 = *(v0 + 104);
      (*(v53 + 16))(v55, *(v0 + 240), v54);
      (*(v53 + 56))(v55, 0, 1, v54);
      sub_100335980(v55, v51);
      sub_100005508(v55, &qword_100977DC0, &unk_1007FB320);
      v50(v51, v52);
    }

    v57 = *(v0 + 660);
    v58 = *(v0 + 240);
    v60 = *(v0 + 144);
    v59 = *(v0 + 152);
    v61 = *(v0 + 128);
    v62 = *(v0 + 136);
    SFNWInterfaceType.category()();
    (*(v62 + 104))(v60, v57, v61);
    sub_1003C3718(&qword_10097B2D0, &type metadata accessor for SFNWInterfaceTypeCategory);
    LOBYTE(v58) = dispatch thunk of static Equatable.== infix(_:_:)();
    v63 = *(v62 + 8);
    v63(v60, v61);
    v63(v59, v61);
    if ((v58 & 1) == 0)
    {
      v64 = *(v0 + 240);
      v65 = *(v0 + 248);
      v67 = *(v0 + 144);
      v66 = *(v0 + 152);
      v68 = *(v0 + 128);
      SFNWInterfaceType.category()();
      SFNWInterfaceType.category()();
      LOBYTE(v64) = dispatch thunk of static Equatable.== infix(_:_:)();
      v63(v67, v68);
      v63(v66, v68);
      if ((v64 & 1) == 0)
      {
        v69 = *(v0 + 104) + *(v0 + 520);
        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          *v72 = 0;
          _os_log_impl(&_mh_execute_header, v70, v71, "AirDrop interface changed to high priority category", v72, 2u);
        }

        v73 = *(v0 + 104);

        sub_100336748(3.0);
      }
    }

    v74 = *(v0 + 240);
    v75 = *(v0 + 248);
    v76 = *(v0 + 224);
    v77 = *(v0 + 232);
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
    (*(v77 + 8))(v75, v76);
    (*(v77 + 32))(v75, v74, v76);
    v78 = *(v0 + 640);
    v79 = *(v0 + 504);
    v80 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
    v81 = swift_task_alloc();
    *(v0 + 648) = v81;
    *v81 = v0;
    v81[1] = sub_1003B72F0;
    v82 = *(v0 + 216);
    v83 = *(v0 + 192);
    v84 = *(v0 + 200);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v83, v79, v78, v84, v0 + 64);
  }
}

uint64_t sub_1003B7D24()
{
  v14 = v0[62];
  v15 = v0[59];
  v1 = v0[57];
  v16 = v0[58];
  v17 = v0[56];
  v2 = v0[53];
  v3 = v0[54];
  v18 = v0[52];
  v19 = v0[49];
  v20 = v0[48];
  v21 = v0[47];
  v4 = v0[39];
  v5 = v0[40];
  v6 = v0[38];
  v24 = v0[37];
  v25 = v0[34];
  v7 = v0[31];
  v8 = v0[28];
  v9 = v0[29];
  v22 = v0[43];
  v23 = v0[27];
  v10 = v0[25];
  v26 = v0[30];
  v27 = v0[24];
  v28 = v0[23];
  v29 = v0[20];
  v30 = v0[19];
  v31 = v0[18];
  v32 = v0[15];
  (*(v0[26] + 8))();
  (*(v9 + 8))(v7, v8);
  (*(v4 + 8))(v5, v6);
  (*(v3 + 8))(v1, v2);
  v11 = v0[8];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1003B7F1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 1640) = v4;
  *(v5 + 2489) = a4;
  *(v5 + 1632) = a3;
  *(v5 + 1624) = a2;
  *(v5 + 1616) = a1;
  v6 = _s10AskRequestVMa();
  *(v5 + 1648) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v5 + 1656) = swift_task_alloc();
  v8 = *(*(sub_10028088C(&qword_10097B1F0, &qword_1007FE568) - 8) + 64) + 15;
  *(v5 + 1664) = swift_task_alloc();
  v9 = sub_10028088C(&qword_10097B1F8, &qword_1007FE570);
  *(v5 + 1672) = v9;
  v10 = *(v9 - 8);
  *(v5 + 1680) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 1688) = swift_task_alloc();
  *(v5 + 1696) = swift_task_alloc();
  v12 = _s16ExchangeResponseVMa(0);
  *(v5 + 1704) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v5 + 1712) = swift_task_alloc();
  v14 = type metadata accessor for SFAirDrop.TransferIdentifier();
  *(v5 + 1720) = v14;
  v15 = *(v14 - 8);
  *(v5 + 1728) = v15;
  v16 = *(v15 + 64) + 15;
  *(v5 + 1736) = swift_task_alloc();
  *(v5 + 1744) = swift_task_alloc();
  v17 = _s15ExchangeRequestVMa(0);
  *(v5 + 1752) = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  *(v5 + 1760) = swift_task_alloc();
  *(v5 + 1768) = swift_task_alloc();
  *(v5 + 1776) = swift_task_alloc();
  *(v5 + 1784) = swift_task_alloc();
  v19 = type metadata accessor for SFAirDropSend.Failure();
  *(v5 + 1792) = v19;
  v20 = *(v19 - 8);
  *(v5 + 1800) = v20;
  v21 = *(v20 + 64) + 15;
  *(v5 + 1808) = swift_task_alloc();
  v22 = type metadata accessor for SFAirDropSend.Transfer.State();
  *(v5 + 1816) = v22;
  v23 = *(v22 - 8);
  *(v5 + 1824) = v23;
  v24 = *(v23 + 64) + 15;
  *(v5 + 1832) = swift_task_alloc();
  v25 = type metadata accessor for SFAirDropSend.Transfer();
  *(v5 + 1840) = v25;
  v26 = *(v25 - 8);
  *(v5 + 1848) = v26;
  v27 = *(v26 + 64) + 15;
  *(v5 + 1856) = swift_task_alloc();
  *(v5 + 1864) = swift_task_alloc();
  *(v5 + 1872) = swift_task_alloc();
  v28 = *(*(sub_10028088C(&qword_10097B200, &qword_1007FE578) - 8) + 64) + 15;
  *(v5 + 1880) = swift_task_alloc();
  v29 = *(*(sub_10028088C(&qword_10097B198, &qword_1007FE450) - 8) + 64) + 15;
  *(v5 + 1888) = swift_task_alloc();
  *(v5 + 1896) = swift_task_alloc();
  *(v5 + 1904) = swift_task_alloc();
  *(v5 + 1912) = swift_task_alloc();
  *(v5 + 1920) = swift_task_alloc();
  v30 = type metadata accessor for SFAirDrop.ContactInfo();
  *(v5 + 1928) = v30;
  v31 = *(v30 - 8);
  *(v5 + 1936) = v31;
  v32 = *(v31 + 64) + 15;
  *(v5 + 1944) = swift_task_alloc();
  *(v5 + 1952) = swift_task_alloc();
  *(v5 + 1960) = swift_task_alloc();
  *(v5 + 1968) = swift_task_alloc();
  *(v5 + 1976) = swift_task_alloc();
  v33 = *(*(sub_10028088C(&qword_10097B1C0, &qword_1007FE4C8) - 8) + 64) + 15;
  *(v5 + 1984) = swift_task_alloc();
  *(v5 + 1992) = swift_task_alloc();
  *(v5 + 2000) = swift_task_alloc();
  v34 = type metadata accessor for SFAirDrop.ContactRequest();
  *(v5 + 2008) = v34;
  v35 = *(v34 - 8);
  *(v5 + 2016) = v35;
  v36 = *(v35 + 64) + 15;
  *(v5 + 2024) = swift_task_alloc();
  *(v5 + 2032) = swift_task_alloc();
  *(v5 + 2040) = swift_task_alloc();
  *(v5 + 2048) = swift_task_alloc();
  *(v5 + 2056) = swift_task_alloc();
  *(v5 + 2064) = swift_task_alloc();
  *(v5 + 2072) = swift_task_alloc();
  *(v5 + 2080) = swift_task_alloc();
  v37 = *(*(sub_10028088C(&qword_100977BD8, &qword_1007FAE38) - 8) + 64) + 15;
  *(v5 + 2088) = swift_task_alloc();
  *(v5 + 2096) = swift_task_alloc();
  v38 = type metadata accessor for SFAirDrop.TransferType();
  *(v5 + 2104) = v38;
  v39 = *(v38 - 8);
  *(v5 + 2112) = v39;
  v40 = *(v39 + 64) + 15;
  *(v5 + 2120) = swift_task_alloc();
  *(v5 + 2128) = swift_task_alloc();
  *(v5 + 2136) = swift_task_alloc();
  *(v5 + 2144) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v41 = static AirDropActor.shared;
  *(v5 + 2152) = static AirDropActor.shared;

  return _swift_task_switch(sub_1003B85B0, v41, 0);
}

uint64_t sub_1003B85B0()
{
  v271 = v0;
  v1 = *(v0 + 2112);
  v2 = *(v0 + 2104);
  v3 = *(v0 + 2096);
  v4 = *(v0 + 1648);
  sub_10000FF90(*(v0 + 1616) + *(v4 + 20), v3, &qword_100977BD8, &qword_1007FAE38);
  v5 = *(v1 + 48);
  if (v5(v3, 1, v2) == 1)
  {
    sub_100005508(*(v0 + 2096), &qword_100977BD8, &qword_1007FAE38);
    goto LABEL_20;
  }

  (*(*(v0 + 2112) + 32))(*(v0 + 2144), *(v0 + 2096), *(v0 + 2104));
  SFAirDrop.TransferType.exchangeType.getter();
  if (!v6)
  {
    (*(*(v0 + 2112) + 8))(*(v0 + 2144), *(v0 + 2104));
LABEL_20:
    v32 = *(v0 + 1640);
    sub_1003C36B0(*(v0 + 1616), *(v0 + 1656), _s10AskRequestVMa);
    v33 = v32;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v261 = v35;
      v36 = *(v0 + 1936);
      v37 = *(v0 + 1928);
      v38 = *(v0 + 1896);
      v39 = *(v0 + 1640);
      v40 = swift_slowAlloc();
      v270[0] = swift_slowAlloc();
      *v40 = 141558787;
      *(v40 + 4) = 1752392040;
      *(v40 + 12) = 2081;
      sub_1003A0614(v38);
      v265 = v34;
      if ((*(v36 + 48))(v38, 1, v37))
      {
        sub_100005508(*(v0 + 1896), &qword_10097B198, &qword_1007FE450);
        v41 = 0x800000010078E390;
        v42 = 0xD00000000000001CLL;
      }

      else
      {
        v44 = *(v0 + 1952);
        v45 = *(v0 + 1936);
        v46 = *(v0 + 1928);
        v47 = *(v0 + 1896);
        (*(v45 + 16))(v44, v47, v46);
        sub_100005508(v47, &qword_10097B198, &qword_1007FE450);
        v48 = SFAirDrop.ContactInfo.description.getter();
        v41 = v49;
        (*(v45 + 8))(v44, v46);
        v42 = v48;
      }

      v50 = *(v0 + 2104);
      v51 = *(v0 + 2088);
      v52 = *(v0 + 1656);
      v53 = sub_10000C4E4(v42, v41, v270);

      *(v40 + 14) = v53;
      *(v40 + 22) = 1024;
      sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
      v54 = static NSUserDefaults.airdrop.getter();
      LOBYTE(v53) = SFAirDropUserDefaults.alwaysExchangeContacts.getter();

      *(v40 + 24) = v53 & 1;
      *(v40 + 28) = 2080;
      sub_10000FF90(v52 + *(v4 + 20), v51, &qword_100977BD8, &qword_1007FAE38);
      if (v5(v51, 1, v50) == 1)
      {
        sub_100005508(*(v0 + 2088), &qword_100977BD8, &qword_1007FAE38);
        v55 = 0x800000010078E3B0;
        v56 = 0xD000000000000020;
      }

      else
      {
        v57 = *(v0 + 2112);
        v58 = *(v0 + 2104);
        v59 = *(v0 + 2088);
        v56 = SFAirDrop.TransferType.description.getter();
        v55 = v60;
        (*(v57 + 8))(v59, v58);
      }

      sub_1003C41CC(*(v0 + 1656), _s10AskRequestVMa);
      v61 = sub_10000C4E4(v56, v55, v270);

      *(v40 + 30) = v61;
      _os_log_impl(&_mh_execute_header, v265, v261, "Send StateMachine CONTACTS SKIPPED - Not needed {senderContact: %{private,mask.hash}s, alwaysExchangeContacts: %{BOOL}d, type: %s}", v40, 0x26u);
      swift_arrayDestroy();
    }

    else
    {
      v43 = *(v0 + 1656);

      sub_1003C41CC(v43, _s10AskRequestVMa);
    }

LABEL_29:
    v62 = *(v0 + 2144);
    v63 = *(v0 + 2136);
    v64 = *(v0 + 2128);
    v65 = *(v0 + 2120);
    v66 = *(v0 + 2096);
    v67 = *(v0 + 2088);
    v68 = *(v0 + 2080);
    v69 = *(v0 + 2072);
    v70 = *(v0 + 2064);
    v71 = *(v0 + 2056);
    v217 = *(v0 + 2048);
    v218 = *(v0 + 2040);
    v219 = *(v0 + 2032);
    v220 = *(v0 + 2024);
    v221 = *(v0 + 2000);
    v222 = *(v0 + 1992);
    v223 = *(v0 + 1984);
    v224 = *(v0 + 1976);
    v225 = *(v0 + 1968);
    v226 = *(v0 + 1960);
    v227 = *(v0 + 1952);
    v228 = *(v0 + 1944);
    v229 = *(v0 + 1920);
    v230 = *(v0 + 1912);
    v231 = *(v0 + 1904);
    v232 = *(v0 + 1896);
    v233 = *(v0 + 1888);
    v234 = *(v0 + 1880);
    v235 = *(v0 + 1872);
    v236 = *(v0 + 1864);
    v237 = *(v0 + 1856);
    v238 = *(v0 + 1832);
    v239 = *(v0 + 1808);
    v240 = *(v0 + 1784);
    v241 = *(v0 + 1776);
    v243 = *(v0 + 1768);
    v245 = *(v0 + 1760);
    v247 = *(v0 + 1744);
    v249 = *(v0 + 1736);
    v251 = *(v0 + 1712);
    v254 = *(v0 + 1696);
    v258 = *(v0 + 1688);
    v262 = *(v0 + 1664);
    v266 = *(v0 + 1656);

    v72 = *(v0 + 8);

    return v72(0, 0);
  }

  v7 = *(v0 + 2489);

  if (v7 == 2 || (*(v0 + 2489) & 1) == 0)
  {
    v8 = *(v0 + 2144);
    if ((SFAirDrop.TransferType.isOnlyExchange.getter() & 1) == 0)
    {
      v74 = *(v0 + 1640);
      (*(*(v0 + 2112) + 16))(*(v0 + 2120), *(v0 + 2144), *(v0 + 2104));
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.default.getter();
      v77 = os_log_type_enabled(v75, v76);
      v78 = *(v0 + 2144);
      v79 = *(v0 + 2120);
      v80 = *(v0 + 2112);
      v81 = *(v0 + 2104);
      if (v77)
      {
        v82 = *(v0 + 2489);
        v267 = *(v0 + 2144);
        v83 = swift_slowAlloc();
        v270[0] = swift_slowAlloc();
        *v83 = 136315394;
        v84 = 1702195828;
        if ((v82 & 1) == 0)
        {
          v84 = 0x65736C6166;
        }

        v85 = 0xE500000000000000;
        if (v82)
        {
          v85 = 0xE400000000000000;
        }

        if (v7 == 2)
        {
          v86 = 0xD000000000000024;
        }

        else
        {
          v86 = v84;
        }

        if (v7 == 2)
        {
          v87 = 0x800000010078E3E0;
        }

        else
        {
          v87 = v85;
        }

        v88 = sub_10000C4E4(v86, v87, v270);

        *(v83 + 4) = v88;
        *(v83 + 12) = 2080;
        sub_1003C3718(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType);
        v89 = dispatch thunk of CustomStringConvertible.description.getter();
        v91 = v90;
        v92 = *(v80 + 8);
        v92(v79, v81);
        v93 = sub_10000C4E4(v89, v91, v270);

        *(v83 + 14) = v93;
        _os_log_impl(&_mh_execute_header, v75, v76, "Send StateMachine CONTACTS SKIPPED - {receiverSupportsContactExchange: %s, type: %s} ", v83, 0x16u);
        swift_arrayDestroy();

        v92(v267, v81);
      }

      else
      {

        v119 = *(v80 + 8);
        v119(v79, v81);
        v119(v78, v81);
      }

      goto LABEL_29;
    }
  }

  v9 = *(v0 + 2144);
  v10 = *(v0 + 2136);
  v11 = *(v0 + 2112);
  v12 = *(v0 + 2104);
  v13 = *(v0 + 1640);
  *(v0 + 2160) = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_log;
  (*(v11 + 16))(v10, v9, v12);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 2136);
  v18 = *(v0 + 2112);
  v19 = *(v0 + 2104);
  if (v16)
  {
    v20 = *(v0 + 2489);
    v21 = swift_slowAlloc();
    v270[0] = swift_slowAlloc();
    *v21 = 136315394;
    v22 = 1702195828;
    if ((v20 & 1) == 0)
    {
      v22 = 0x65736C6166;
    }

    v23 = 0xE500000000000000;
    if (v20)
    {
      v23 = 0xE400000000000000;
    }

    if (v7 == 2)
    {
      v24 = 0xD000000000000024;
    }

    else
    {
      v24 = v22;
    }

    if (v7 == 2)
    {
      v25 = 0x800000010078E3E0;
    }

    else
    {
      v25 = v23;
    }

    v26 = sub_10000C4E4(v24, v25, v270);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    sub_1003C3718(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    v30 = *(v18 + 8);
    v30(v17, v19);
    v31 = sub_10000C4E4(v27, v29, v270);

    *(v21 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v14, v15, "Send StateMachine CONTACTS START {receiverSupportsContactExchange: %s, type: %s}", v21, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v30 = *(v18 + 8);
    v30(v17, v19);
  }

  *(v0 + 2168) = v30;
  v94 = *(v0 + 2016);
  v95 = *(v0 + 2008);
  v96 = *(v0 + 2000);
  v97 = *(v0 + 1632);
  v98 = *(v94 + 48);
  *(v0 + 2176) = v98;
  *(v0 + 2184) = (v94 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v99 = v98(v97, 1, v95);
  *(v0 + 2480) = v99;
  sub_10000FF90(v97, v96, &qword_10097B1C0, &qword_1007FE4C8);
  if (v98(v96, 1, v95) == 1)
  {
    v100 = *(v0 + 1936);
    v101 = *(v0 + 1928);
    v102 = *(v0 + 1920);
    v103 = *(v0 + 1640);
    sub_100005508(*(v0 + 2000), &qword_10097B1C0, &qword_1007FE4C8);
    sub_1003A0614(v102);
    v104 = *(v100 + 48);
    *(v0 + 2192) = v104;
    *(v0 + 2200) = (v100 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v104(v102, 1, v101) == 1)
    {
      sub_100005508(*(v0 + 1920), &qword_10097B198, &qword_1007FE450);
      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.fault.getter();
      v107 = os_log_type_enabled(v105, v106);
      v108 = *(v0 + 2144);
      v109 = *(v0 + 2112);
      v110 = *(v0 + 2104);
      if (v107)
      {
        v111 = swift_slowAlloc();
        *v111 = 0;
        _os_log_impl(&_mh_execute_header, v105, v106, "Send StateMachine CONTACTS FAILED - Unexpectedly missing sender contact", v111, 2u);
      }

      v30(v108, v110);
      goto LABEL_29;
    }

    v120 = *(v0 + 1976);
    v121 = *(v0 + 1936);
    v122 = *(v0 + 1928);
    v123 = *(v0 + 1920);
    v124 = *(v121 + 32);
    *(v0 + 2208) = v124;
    *(v0 + 2216) = (v121 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v124(v120, v123, v122);
    v125 = Logger.logObject.getter();
    v126 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      *v127 = 0;
      _os_log_impl(&_mh_execute_header, v125, v126, "Send StateMachine SHARE CONTACT PERMISSION START", v127, 2u);
    }

    v128 = *(v0 + 1976);
    v129 = v99 == 1;
    v130 = *(v0 + 1936);
    v131 = *(v0 + 1880);
    v132 = *(v0 + 1848);
    v263 = *(v0 + 1872);
    v269 = *(v0 + 1840);
    v133 = *(v0 + 1832);
    v134 = *(v0 + 1824);
    v256 = *(v0 + 1928);
    v259 = *(v0 + 1816);
    v135 = *(v0 + 1640);

    sub_1003BF3B0(v128, v129, v131);
    v136 = *(sub_10028088C(&unk_100986200, &unk_1007FE580) + 48);
    (*(v130 + 16))(v133, v128, v256);
    v137 = sub_10028088C(&unk_10097C660, &unk_10080D3E0);
    (*(*(v137 - 8) + 16))(&v133[v136], v131, v137);
    v138 = enum case for SFAirDropSend.Transfer.State.waitingForShareContactPermissionResponse(_:);
    v139 = *(v134 + 104);
    *(v0 + 2224) = v139;
    *(v0 + 2232) = (v134 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v139(v133, v138, v259);
    sub_100335364(v133, v263);
    v140 = *(v134 + 8);
    *(v0 + 2240) = v140;
    *(v0 + 2248) = (v134 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v140(v133, v259);
    v141 = *(v132 + 8);
    *(v0 + 2256) = v141;
    *(v0 + 2264) = (v132 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v141(v263, v269);

    return _swift_task_switch(sub_1003B9B68, 0, 0);
  }

  else
  {
    v112 = (v0 + 872);
    (*(*(v0 + 2016) + 32))(*(v0 + 2080), *(v0 + 2000), *(v0 + 2008));
    v113 = *(v0 + 2080);
    v114 = *(v0 + 1936);
    v115 = *(v0 + 1928);
    v116 = *(v0 + 1912);
    v268 = *(*(v0 + 1640) + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_nearbyAgent);
    SFAirDrop.ContactRequest.contact.getter();
    v255 = *(v114 + 48);
    if (v255(v116, 1, v115) == 1)
    {
      sub_100005508(*(v0 + 1912), &qword_10097B198, &qword_1007FE450);
      v117 = 0;
      v118 = 0;
    }

    else
    {
      v142 = *(v0 + 1936);
      v143 = *(v0 + 1928);
      v144 = *(v0 + 1912);
      v145 = SFAirDrop.ContactInfo.accountHandle.getter();
      v118 = v146;
      (*(v142 + 8))(v144, v143);
      v117 = v145;
    }

    v147 = (v0 + 960);
    v148 = *(v0 + 2080);
    v149 = *(v0 + 2064);
    v150 = *(v0 + 2016);
    v151 = *(v0 + 2008);
    sub_10046A56C(v117, v118, (v0 + 784));
    v152 = *(v0 + 832);
    *(v0 + 904) = *(v0 + 816);
    *(v0 + 920) = v152;
    *(v0 + 936) = *(v0 + 848);
    *(v0 + 952) = *(v0 + 864);
    v153 = *(v0 + 800);
    *v112 = *(v0 + 784);
    *(v0 + 888) = v153;

    *(v0 + 2484) = enum case for SFAirDrop.ContactRequest.notNeeded(_:);
    v154 = *(v150 + 104);
    *(v0 + 2304) = v154;
    *(v0 + 2312) = (v150 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v154(v149);
    v155 = static SFAirDrop.ContactRequest.== infix(_:_:)();
    v156 = *(v150 + 8);
    *(v0 + 2320) = v156;
    *(v0 + 2328) = (v150 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v260 = v156;
    v156(v149, v151);
    if (v155)
    {
      *(v0 + 1040) = 0;
      *(v0 + 1008) = 0u;
      *(v0 + 1024) = 0u;
      *(v0 + 976) = 0u;
      *(v0 + 992) = 0u;
      *v147 = 0u;
    }

    else
    {
      sub_10000FF90(v0 + 784, v0 + 1048, &qword_10097B208, &qword_1007FE5A8);
      v157 = *(v0 + 920);
      *(v0 + 992) = *(v0 + 904);
      *(v0 + 1008) = v157;
      *(v0 + 1024) = *(v0 + 936);
      *(v0 + 1040) = *(v0 + 952);
      v158 = *(v0 + 888);
      *v147 = *v112;
      *(v0 + 976) = v158;
    }

    v159 = *(v0 + 2080);
    v160 = *(v0 + 2056);
    v161 = *(v0 + 2016);
    v162 = *(v0 + 2008);
    v252 = *(v0 + 1928);
    v163 = *(v0 + 1904);
    v164 = *(v0 + 1864);
    v165 = *(v0 + 1848);
    v166 = *(v0 + 1840);
    v167 = *(v0 + 1744);
    v168 = *(v0 + 1640);
    v169 = *(v161 + 16);
    *(v0 + 2336) = v169;
    *(v0 + 2344) = (v161 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v169(v160, v159, v162);
    v170 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer;
    swift_beginAccess();
    (*(v165 + 16))(v164, v168 + v170, v166);
    SFAirDropSend.Transfer.id.getter();
    v171 = *(v165 + 8);
    *(v0 + 2352) = v171;
    *(v0 + 2360) = (v165 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v171(v164, v166);
    sub_10000FF90(v0 + 960, v0 + 1136, &qword_10097B208, &qword_1007FE5A8);
    SFAirDrop.ContactRequest.contact.getter();
    v172 = v255(v163, 1, v252);
    v173 = *(v0 + 2056);
    if (v172 == 1)
    {
      v174 = *(v0 + 1904);
      v175 = *(v0 + 1776);
      v176 = *(v0 + 1752);
      v177 = *(v0 + 1744);
      v178 = *(v0 + 1728);
      v179 = *(v0 + 1720);
      v260(*(v0 + 2056), *(v0 + 2008));
      sub_100005508(v0 + 960, &qword_10097B208, &qword_1007FE5A8);
      sub_100005508(v174, &qword_10097B198, &qword_1007FE450);
      v180 = v176[7];
      v181 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
      (*(*(v181 - 8) + 56))(v175 + v180, 1, 1, v181);
      (*(v178 + 32))(v175, v177, v179);
      v182 = (v175 + v176[5]);
      *v182 = 0;
      v182[1] = 0;
      v183 = (v175 + v176[6]);
      *v183 = 0;
      v183[1] = 0;
      *(v175 + v176[8]) = xmmword_1007F8A80;
      v184 = v175 + v176[9];
      *(v184 + 80) = 0;
      *(v184 + 48) = 0u;
      *(v184 + 64) = 0u;
      *(v184 + 16) = 0u;
      *(v184 + 32) = 0u;
      *v184 = 0u;
    }

    else
    {
      v185 = *(v0 + 1968);
      v186 = *(v0 + 1936);
      v264 = *(v0 + 2008);
      v187 = *(v0 + 1776);
      v188 = *(v0 + 1752);
      v189 = *(v0 + 1744);
      v244 = v189;
      v246 = *(v0 + 1928);
      v190 = *(v0 + 1728);
      v191 = *(v0 + 1720);
      v242 = v191;
      (*(v186 + 32))(v185, *(v0 + 1904));
      (*(v190 + 16))(v187, v189, v191);
      v192 = SFAirDrop.ContactInfo.givenName.getter();
      v253 = v193;
      v257 = v192;
      v194 = SFAirDrop.ContactInfo.fullName.getter();
      v248 = v195;
      v250 = v194;
      v196 = v188[7];
      SFAirDrop.ContactInfo.handle.getter();
      v197 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
      (*(*(v197 - 8) + 56))(v187 + v196, 0, 1, v197);
      v198 = SFAirDrop.ContactInfo.vcard.getter();
      v200 = v199;
      (*(v186 + 8))(v185, v246);
      (*(v190 + 8))(v244, v242);
      v260(v173, v264);
      v201 = (v187 + v188[5]);
      *v201 = v257;
      v201[1] = v253;
      v202 = (v187 + v188[6]);
      *v202 = v250;
      v202[1] = v248;
      v203 = (v187 + v188[8]);
      *v203 = v198;
      v203[1] = v200;
      v204 = v187 + v188[9];
      v205 = *(v0 + 976);
      *v204 = *v147;
      *(v204 + 16) = v205;
      v206 = *(v0 + 992);
      v207 = *(v0 + 1008);
      v208 = *(v0 + 1024);
      *(v204 + 80) = *(v0 + 1040);
      *(v204 + 48) = v207;
      *(v204 + 64) = v208;
      *(v204 + 32) = v206;
    }

    v209 = *(v0 + 1784);
    v210 = *(v0 + 1696);
    v211 = *(v0 + 1624);
    sub_10000ED78(*(v0 + 1776), v209, _s15ExchangeRequestVMa);
    sub_100302D38(v209);
    v212 = async function pointer to SFProgressTask.finalValue.getter[1];
    v213 = swift_task_alloc();
    *(v0 + 2368) = v213;
    *v213 = v0;
    v213[1] = sub_1003BAF18;
    v214 = *(v0 + 1712);
    v215 = *(v0 + 1696);
    v216 = *(v0 + 1672);

    return SFProgressTask.finalValue.getter(v214, v216);
  }
}

uint64_t sub_1003B9B68()
{
  v1 = v0[235];
  v2 = swift_task_alloc();
  v0[284] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[285] = v3;
  *(v3 + 16) = v1;
  v4 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v5 = swift_task_alloc();
  v0[286] = v5;
  *v5 = v0;
  v5[1] = sub_1003B9C70;
  v6 = v0[259];
  v7 = v0[251];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v6, &unk_1007FE590, v2, sub_1003C3800, v3, 0, 0, v7);
}

uint64_t sub_1003B9C70()
{
  v2 = *v1;
  v3 = *(*v1 + 2288);
  v10 = *v1;
  *(*v1 + 2296) = v0;

  if (v0)
  {
    v4 = sub_1003BA610;
    v5 = 0;
  }

  else
  {
    v6 = v2[285];
    v7 = v2[284];
    v8 = v2[269];

    v4 = sub_1003B9DA4;
    v5 = v8;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1003B9DA4()
{
  v1 = *(v0 + 2160);
  v2 = *(v0 + 1640);
  (*(*(v0 + 2016) + 32))(*(v0 + 2080), *(v0 + 2072), *(v0 + 2008));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Send StateMachine SHARE CONTACT PERMISSION END", v5, 2u);
  }

  v6 = *(v0 + 2160);
  v7 = *(v0 + 1640);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Send StateMachine EXCHANGING START", v10, 2u);
  }

  v125 = *(v0 + 2264);
  v11 = (v0 + 872);
  v109 = *(v0 + 2240);
  v111 = *(v0 + 2248);
  v104 = *(v0 + 2224);
  v105 = *(v0 + 2232);
  v12 = *(v0 + 2080);
  v13 = *(v0 + 2016);
  v14 = *(v0 + 2008);
  v115 = (v0 + 784);
  v118 = *(v0 + 1976);
  v15 = *(v0 + 1936);
  v113 = *(v0 + 1928);
  v121 = *(v0 + 2256);
  v123 = *(v0 + 1880);
  v16 = *(v0 + 1872);
  v107 = *(v0 + 1840);
  v17 = *(v0 + 1832);
  v18 = *(v0 + 1816);
  v19 = v8;
  v20 = *(v0 + 1640);

  (*(v13 + 16))(v17, v12, v14);
  v104(v17, enum case for SFAirDropSend.Transfer.State.exchanging(_:), v18);
  sub_100335364(v17, v16);
  v109(v17, v18);
  v121(v16, v107);
  (*(v15 + 8))(v118, v113);
  sub_100005508(v123, &qword_10097B200, &qword_1007FE578);
  v21 = *(v0 + 2080);
  v22 = *(v0 + 1936);
  v23 = *(v0 + 1928);
  v24 = *(v0 + 1912);
  v25 = *(*(v0 + 1640) + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_nearbyAgent);
  SFAirDrop.ContactRequest.contact.getter();
  v119 = *(v22 + 48);
  if (v119(v24, 1, v23) == 1)
  {
    sub_100005508(*(v0 + 1912), &qword_10097B198, &qword_1007FE450);
    v26 = 0;
    v27 = 0;
  }

  else
  {
    v28 = *(v0 + 1936);
    v29 = *(v0 + 1928);
    v30 = *(v0 + 1912);
    v31 = SFAirDrop.ContactInfo.accountHandle.getter();
    v27 = v32;
    (*(v28 + 8))(v30, v29);
    v26 = v31;
  }

  v33 = (v0 + 960);
  v34 = *(v0 + 2080);
  v35 = *(v0 + 2064);
  v36 = *(v0 + 2016);
  v37 = *(v0 + 2008);
  sub_10046A56C(v26, v27, v115);
  v38 = *(v0 + 832);
  *(v0 + 904) = *(v0 + 816);
  *(v0 + 920) = v38;
  *(v0 + 936) = *(v0 + 848);
  *(v0 + 952) = *(v0 + 864);
  v39 = *(v0 + 800);
  *v11 = *v115;
  *(v0 + 888) = v39;

  *(v0 + 2484) = enum case for SFAirDrop.ContactRequest.notNeeded(_:);
  v40 = *(v36 + 104);
  *(v0 + 2304) = v40;
  *(v0 + 2312) = (v36 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v40(v35);
  v41 = static SFAirDrop.ContactRequest.== infix(_:_:)();
  v42 = *(v36 + 8);
  *(v0 + 2320) = v42;
  *(v0 + 2328) = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v122 = v42;
  v42(v35, v37);
  if (v41)
  {
    *(v0 + 1040) = 0;
    *(v0 + 1008) = 0u;
    *(v0 + 1024) = 0u;
    *(v0 + 976) = 0u;
    *(v0 + 992) = 0u;
    *v33 = 0u;
  }

  else
  {
    sub_10000FF90(v115, v0 + 1048, &qword_10097B208, &qword_1007FE5A8);
    v43 = *(v0 + 920);
    *(v0 + 992) = *(v0 + 904);
    *(v0 + 1008) = v43;
    *(v0 + 1024) = *(v0 + 936);
    *(v0 + 1040) = *(v0 + 952);
    v44 = *(v0 + 888);
    *v33 = *v11;
    *(v0 + 976) = v44;
  }

  v45 = *(v0 + 2080);
  v46 = *(v0 + 2056);
  v47 = *(v0 + 2016);
  v48 = *(v0 + 2008);
  v116 = *(v0 + 1928);
  v49 = *(v0 + 1904);
  v50 = *(v0 + 1864);
  v51 = *(v0 + 1848);
  v52 = *(v0 + 1840);
  v53 = *(v0 + 1744);
  v54 = *(v0 + 1640);
  v55 = *(v47 + 16);
  *(v0 + 2336) = v55;
  *(v0 + 2344) = (v47 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v55(v46, v45, v48);
  v56 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer;
  swift_beginAccess();
  (*(v51 + 16))(v50, v54 + v56, v52);
  SFAirDropSend.Transfer.id.getter();
  v57 = *(v51 + 8);
  *(v0 + 2352) = v57;
  *(v0 + 2360) = (v51 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v57(v50, v52);
  sub_10000FF90(v0 + 960, v0 + 1136, &qword_10097B208, &qword_1007FE5A8);
  SFAirDrop.ContactRequest.contact.getter();
  v58 = v119(v49, 1, v116);
  v59 = *(v0 + 2008);
  if (v58 == 1)
  {
    v60 = *(v0 + 1904);
    v61 = *(v0 + 1776);
    v62 = *(v0 + 1752);
    v63 = *(v0 + 1744);
    v64 = *(v0 + 1728);
    v65 = *(v0 + 1720);
    v122(*(v0 + 2056), *(v0 + 2008));
    sub_100005508(v0 + 960, &qword_10097B208, &qword_1007FE5A8);
    sub_100005508(v60, &qword_10097B198, &qword_1007FE450);
    v66 = v62[7];
    v67 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
    (*(*(v67 - 8) + 56))(v61 + v66, 1, 1, v67);
    (*(v64 + 32))(v61, v63, v65);
    v68 = (v61 + v62[5]);
    *v68 = 0;
    v68[1] = 0;
    v69 = (v61 + v62[6]);
    *v69 = 0;
    v69[1] = 0;
    *(v61 + v62[8]) = xmmword_1007F8A80;
    v70 = v61 + v62[9];
    *(v70 + 80) = 0;
    *(v70 + 48) = 0u;
    *(v70 + 64) = 0u;
    *(v70 + 16) = 0u;
    *(v70 + 32) = 0u;
    *v70 = 0u;
  }

  else
  {
    v71 = *(v0 + 1968);
    v72 = *(v0 + 1936);
    v73 = *(v0 + 1776);
    v74 = *(v0 + 1752);
    v75 = *(v0 + 1744);
    v108 = v75;
    v110 = *(v0 + 1928);
    v76 = *(v0 + 1728);
    v77 = *(v0 + 1720);
    v106 = v77;
    v124 = *(v0 + 2056);
    (*(v72 + 32))(v71, *(v0 + 1904));
    (*(v76 + 16))(v73, v75, v77);
    v78 = SFAirDrop.ContactInfo.givenName.getter();
    v117 = v79;
    v120 = v78;
    v80 = SFAirDrop.ContactInfo.fullName.getter();
    v112 = v81;
    v114 = v80;
    v82 = v74[7];
    SFAirDrop.ContactInfo.handle.getter();
    v83 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
    (*(*(v83 - 8) + 56))(v73 + v82, 0, 1, v83);
    v84 = SFAirDrop.ContactInfo.vcard.getter();
    v86 = v85;
    (*(v72 + 8))(v71, v110);
    (*(v76 + 8))(v108, v106);
    v122(v124, v59);
    v87 = (v73 + v74[5]);
    *v87 = v120;
    v87[1] = v117;
    v88 = (v73 + v74[6]);
    *v88 = v114;
    v88[1] = v112;
    v89 = (v73 + v74[8]);
    *v89 = v84;
    v89[1] = v86;
    v90 = v73 + v74[9];
    v91 = *(v0 + 976);
    *v90 = *v33;
    *(v90 + 16) = v91;
    v92 = *(v0 + 992);
    v93 = *(v0 + 1008);
    v94 = *(v0 + 1024);
    *(v90 + 80) = *(v0 + 1040);
    *(v90 + 48) = v93;
    *(v90 + 64) = v94;
    *(v90 + 32) = v92;
  }

  v95 = *(v0 + 1784);
  v96 = *(v0 + 1696);
  v97 = *(v0 + 1624);
  sub_10000ED78(*(v0 + 1776), v95, _s15ExchangeRequestVMa);
  sub_100302D38(v95);
  v98 = async function pointer to SFProgressTask.finalValue.getter[1];
  v99 = swift_task_alloc();
  *(v0 + 2368) = v99;
  *v99 = v0;
  v99[1] = sub_1003BAF18;
  v100 = *(v0 + 1712);
  v101 = *(v0 + 1696);
  v102 = *(v0 + 1672);

  return SFProgressTask.finalValue.getter(v100, v102);
}

uint64_t sub_1003BA610()
{
  v1 = v0[285];
  v2 = v0[284];
  v3 = v0[269];

  return _swift_task_switch(sub_1003BA688, v3, 0);
}

uint64_t sub_1003BA688()
{
  v1 = *(v0 + 1808);
  v2 = *(v0 + 1792);
  *(v0 + 1608) = *(v0 + 2296);
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 1800) + 88))(*(v0 + 1808), *(v0 + 1792)) == enum case for SFAirDropSend.Failure.cancelled(_:))
    {
      v3 = *(v0 + 2296);
      v4 = *(v0 + 2160);
      v5 = *(v0 + 1640);

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Send StateMachine SHARE CONTACT PERMISSION END - Not exchanging contacts", v8, 2u);
      }

      v119 = *(v0 + 2256);
      v122 = *(v0 + 2264);
      v128 = *(v0 + 2192);
      v131 = *(v0 + 2200);
      v9 = *(v0 + 2024);
      v10 = *(v0 + 2016);
      v11 = *(v0 + 2008);
      v125 = *(v0 + 1928);
      v12 = *(v0 + 1888);
      v13 = *(v0 + 1856);
      v14 = *(v0 + 1848);
      v15 = *(v0 + 1840);
      v116 = *(v0 + 1736);
      v16 = *(v0 + 1640);

      (*(v10 + 104))(v9, enum case for SFAirDrop.ContactRequest.notNeeded(_:), v11);
      v17 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer;
      swift_beginAccess();
      (*(v14 + 16))(v13, v16 + v17, v15);
      SFAirDropSend.Transfer.id.getter();
      v119(v13, v15);
      SFAirDrop.ContactRequest.contact.getter();
      if (v128(v12, 1, v125) == 1)
      {
        v18 = *(v0 + 1888);
        v19 = *(v0 + 1760);
        v20 = *(v0 + 1752);
        v21 = *(v0 + 1736);
        v22 = *(v0 + 1728);
        v23 = *(v0 + 1720);
        (*(*(v0 + 2016) + 8))(*(v0 + 2024), *(v0 + 2008));
        sub_100005508(v18, &qword_10097B198, &qword_1007FE450);
        v24 = v20[7];
        v25 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
        (*(*(v25 - 8) + 56))(v19 + v24, 1, 1, v25);
        (*(v22 + 32))(v19, v21, v23);
        v26 = 0;
        v27 = (v19 + v20[5]);
        *v27 = 0;
        v27[1] = 0;
        v28 = (v19 + v20[6]);
        *v28 = 0;
        v28[1] = 0;
        v29 = 0xF000000000000000;
      }

      else
      {
        v56 = *(v0 + 2216);
        v57 = *(v0 + 2016);
        v130 = *(v0 + 2008);
        v133 = *(v0 + 2024);
        v58 = *(v0 + 1944);
        v59 = *(v0 + 1936);
        v60 = *(v0 + 1928);
        v61 = *(v0 + 1760);
        v62 = *(v0 + 1752);
        v63 = *(v0 + 1736);
        v64 = *(v0 + 1728);
        v65 = *(v0 + 1720);
        v113 = v65;
        v115 = v63;
        (*(v0 + 2208))(v58, *(v0 + 1888), v60);
        (*(v64 + 16))(v61, v63, v65);
        v66 = SFAirDrop.ContactInfo.givenName.getter();
        v124 = v67;
        v127 = v66;
        v68 = SFAirDrop.ContactInfo.fullName.getter();
        v118 = v69;
        v121 = v68;
        v70 = v62[7];
        SFAirDrop.ContactInfo.handle.getter();
        v71 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
        (*(*(v71 - 8) + 56))(v61 + v70, 0, 1, v71);
        v26 = SFAirDrop.ContactInfo.vcard.getter();
        v29 = v72;
        (*(v59 + 8))(v58, v60);
        (*(v64 + 8))(v115, v113);
        (*(v57 + 8))(v133, v130);
        v73 = (v61 + v62[5]);
        *v73 = v127;
        v73[1] = v124;
        v74 = (v61 + v62[6]);
        *v74 = v121;
        v74[1] = v118;
      }

      v75 = *(v0 + 1768);
      v76 = *(v0 + 1760);
      v77 = *(v0 + 1752);
      v78 = *(v0 + 1688);
      v79 = *(v0 + 1672);
      v80 = *(v0 + 1624);
      v81 = (v76 + *(v77 + 32));
      *v81 = v26;
      v81[1] = v29;
      v82 = v76 + *(v77 + 36);
      *(v82 + 80) = 0;
      *(v82 + 48) = 0u;
      *(v82 + 64) = 0u;
      *(v82 + 16) = 0u;
      *(v82 + 32) = 0u;
      *v82 = 0u;
      sub_10000ED78(v76, v75, _s15ExchangeRequestVMa);
      v83 = swift_task_alloc();
      *(v0 + 2472) = v83;
      *(v83 + 16) = v80;
      *(v83 + 24) = v75;
      swift_asyncLet_begin();
      v84 = *(v0 + 1688);

      return _swift_asyncLet_finish(v0 + 16, v84, sub_1003BE324, v0 + 656);
    }

    v35 = *(v0 + 2168);
    v36 = *(v0 + 2144);
    v37 = *(v0 + 2112);
    v38 = *(v0 + 2104);
    v39 = *(v0 + 1880);
    v40 = *(v0 + 1808);
    v41 = *(v0 + 1800);
    v42 = *(v0 + 1792);
    (*(*(v0 + 1936) + 8))(*(v0 + 1976), *(v0 + 1928));
    v35(v36, v38);
    sub_100005508(v39, &qword_10097B200, &qword_1007FE578);
    (*(v41 + 8))(v40, v42);
  }

  else
  {
    v30 = *(v0 + 2168);
    v31 = *(v0 + 2144);
    v32 = *(v0 + 2112);
    v33 = *(v0 + 2104);
    v34 = *(v0 + 1880);
    (*(*(v0 + 1936) + 8))(*(v0 + 1976), *(v0 + 1928));
    v30(v31, v33);
    sub_100005508(v34, &qword_10097B200, &qword_1007FE578);
  }

  v43 = *(v0 + 1608);

  v132 = *(v0 + 2296);
  v44 = *(v0 + 2144);
  v45 = *(v0 + 2136);
  v46 = *(v0 + 2128);
  v47 = *(v0 + 2120);
  v48 = *(v0 + 2096);
  v49 = *(v0 + 2088);
  v50 = *(v0 + 2080);
  v51 = *(v0 + 2072);
  v52 = *(v0 + 2064);
  v53 = *(v0 + 2056);
  v85 = *(v0 + 2048);
  v86 = *(v0 + 2040);
  v87 = *(v0 + 2032);
  v88 = *(v0 + 2024);
  v89 = *(v0 + 2000);
  v90 = *(v0 + 1992);
  v91 = *(v0 + 1984);
  v92 = *(v0 + 1976);
  v93 = *(v0 + 1968);
  v94 = *(v0 + 1960);
  v95 = *(v0 + 1952);
  v96 = *(v0 + 1944);
  v97 = *(v0 + 1920);
  v98 = *(v0 + 1912);
  v99 = *(v0 + 1904);
  v100 = *(v0 + 1896);
  v101 = *(v0 + 1888);
  v102 = *(v0 + 1880);
  v103 = *(v0 + 1872);
  v104 = *(v0 + 1864);
  v105 = *(v0 + 1856);
  v106 = *(v0 + 1832);
  v107 = *(v0 + 1808);
  v108 = *(v0 + 1784);
  v109 = *(v0 + 1776);
  v110 = *(v0 + 1768);
  v111 = *(v0 + 1760);
  v112 = *(v0 + 1744);
  v114 = *(v0 + 1736);
  v117 = *(v0 + 1712);
  v120 = *(v0 + 1696);
  v123 = *(v0 + 1688);
  v126 = *(v0 + 1664);
  v129 = *(v0 + 1656);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_1003BAF18()
{
  v2 = *v1;
  v3 = *(*v1 + 2368);
  v4 = *v1;
  *(*v1 + 2376) = v0;

  v5 = v2[269];
  (*(v2[210] + 8))(v2[212], v2[209]);
  if (v0)
  {
    v6 = sub_1003BE6AC;
  }

  else
  {
    v6 = sub_1003BB094;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003BB094()
{
  v131 = v0;
  v1 = *(v0 + 2160);
  v2 = *(v0 + 1712);
  v3 = *(v0 + 1640);
  sub_1005824F4(*(v0 + 2048));
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Send StateMachine EXCHANGING END", v6, 2u);
  }

  v7 = *(v0 + 2344);
  v8 = *(v0 + 2336);
  v9 = *(v0 + 2048);
  v10 = *(v0 + 2040);
  v11 = *(v0 + 2016);
  v12 = *(v0 + 2008);

  v8(v10, v9, v12);
  v13 = (*(v11 + 88))(v10, v12);
  v14 = *(v0 + 1640);
  if (v13 == enum case for SFAirDrop.ContactRequest.contact(_:))
  {
    v15 = *(v0 + 2160);
    v16 = *(v0 + 2040);
    v17 = *(v0 + 1992);
    v18 = *(v0 + 1960);
    v19 = *(v0 + 1936);
    v20 = *(v0 + 1928);
    v21 = *(v0 + 1632);
    (*(*(v0 + 2016) + 96))(v16, *(v0 + 2008));
    (*(v19 + 32))(v18, v16, v20);
    sub_10000FF90(v21, v17, &qword_10097B1C0, &qword_1007FE4C8);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v125 = *(v0 + 2184);
      v24 = *(v0 + 2176);
      v25 = *(v0 + 2008);
      v26 = *(v0 + 1992);
      v27 = *(v0 + 1984);
      v28 = *(v0 + 2480) == 1;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v130[0] = v30;
      *v29 = 67109635;
      *(v29 + 4) = v28;
      *(v29 + 8) = 2160;
      *(v29 + 10) = 1752392040;
      *(v29 + 18) = 2081;
      sub_10000FF90(v26, v27, &qword_10097B1C0, &qword_1007FE4C8);
      if (v24(v27, 1, v25) == 1)
      {
        sub_100005508(*(v0 + 1984), &qword_10097B1C0, &qword_1007FE4C8);
        v31 = 0x800000010078E410;
        v32 = 0xD000000000000013;
      }

      else
      {
        v128 = *(v0 + 2328);
        v67 = *(v0 + 2320);
        v68 = *(v0 + 2008);
        v69 = *(v0 + 1984);
        v32 = SFAirDrop.ContactRequest.description.getter();
        v31 = v70;
        v67(v69, v68);
      }

      sub_100005508(*(v0 + 1992), &qword_10097B1C0, &qword_1007FE4C8);
      v71 = sub_10000C4E4(v32, v31, v130);

      *(v29 + 20) = v71;
      _os_log_impl(&_mh_execute_header, v22, v23, "Should Import CONTACT START {afterAirDrop: %{BOOL}d, contactRequest: %{private,mask.hash}s}", v29, 0x1Cu);
      sub_10000C60C(v30);
    }

    else
    {
      v54 = *(v0 + 1992);

      sub_100005508(v54, &qword_10097B1C0, &qword_1007FE4C8);
    }

    v124 = *(v0 + 2352);
    v129 = *(v0 + 2360);
    v72 = *(v0 + 1960);
    v73 = *(v0 + 1936);
    v74 = *(v0 + 1928);
    v118 = *(v0 + 1872);
    v121 = *(v0 + 1840);
    v75 = *(v0 + 1832);
    v76 = *(v0 + 1824);
    v77 = *(v0 + 1816);
    v78 = *(v0 + 1664);
    v79 = *(v0 + 1640);
    sub_1003C02E4(v72, *(v0 + 2480) == 1, v78);
    v80 = *(sub_10028088C(&unk_1009861F0, &unk_1007FE5B0) + 48);
    (*(v73 + 16))(v75, v72, v74);
    v81 = sub_10028088C(&qword_10097B218, &unk_100809050);
    (*(*(v81 - 8) + 16))(&v75[v80], v78, v81);
    (*(v76 + 104))(v75, enum case for SFAirDropSend.Transfer.State.waitingForImportContactResponse(_:), v77);
    sub_100335364(v75, v118);
    (*(v76 + 8))(v75, v77);
    v124(v118, v121);

    return _swift_task_switch(sub_1003BBAE8, 0, 0);
  }

  else
  {
    v33 = *(v0 + 2344);
    v34 = *(v0 + 2336);
    v35 = *(v0 + 2328);
    v36 = *(v0 + 2160);
    v37 = *(v0 + 2048);
    v38 = *(v0 + 2032);
    v39 = *(v0 + 2008);
    (*(v0 + 2320))(*(v0 + 2040), v39);
    v34(v38, v37, v39);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v0 + 2320);
    v44 = *(v0 + 2168);
    v45 = *(v0 + 2144);
    v119 = *(v0 + 2112);
    v122 = *(v0 + 2328);
    v126 = *(v0 + 2104);
    v112 = *(v0 + 2048);
    v46 = *(v0 + 2032);
    v47 = *(v0 + 2008);
    v114 = *(v0 + 1784);
    v116 = *(v0 + 2080);
    if (v42)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v130[0] = v49;
      *v48 = 136315138;
      sub_1003C3718(&qword_10097B210, &type metadata accessor for SFAirDrop.ContactRequest);
      v108 = v45;
      v110 = v44;
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      v43(v46, v47);
      v53 = sub_10000C4E4(v50, v52, v130);

      *(v48 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v40, v41, "Import CONTACT SKIP. No contact from receiver {exchangeContactResponse: %s}", v48, 0xCu);
      sub_10000C60C(v49);

      sub_100005508(v0 + 960, &qword_10097B208, &qword_1007FE5A8);
      sub_100005508(v0 + 784, &qword_10097B208, &qword_1007FE5A8);
      v43(v112, v47);
      sub_1003C41CC(v114, _s15ExchangeRequestVMa);
      v43(v116, v47);
      v110(v108, v126);
    }

    else
    {

      sub_100005508(v0 + 960, &qword_10097B208, &qword_1007FE5A8);
      sub_100005508(v0 + 784, &qword_10097B208, &qword_1007FE5A8);
      v43(v46, v47);
      v43(v112, v47);
      sub_1003C41CC(v114, _s15ExchangeRequestVMa);
      v43(v116, v47);
      v44(v45, v126);
    }

    sub_1003C41CC(*(v0 + 1712), _s16ExchangeResponseVMa);
    v55 = *(v0 + 2144);
    v56 = *(v0 + 2136);
    v57 = *(v0 + 2128);
    v58 = *(v0 + 2120);
    v59 = *(v0 + 2096);
    v60 = *(v0 + 2088);
    v61 = *(v0 + 2080);
    v62 = *(v0 + 2072);
    v63 = *(v0 + 2064);
    v64 = *(v0 + 2056);
    v82 = *(v0 + 2048);
    v83 = *(v0 + 2040);
    v84 = *(v0 + 2032);
    v85 = *(v0 + 2024);
    v86 = *(v0 + 2000);
    v87 = *(v0 + 1992);
    v88 = *(v0 + 1984);
    v89 = *(v0 + 1976);
    v90 = *(v0 + 1968);
    v91 = *(v0 + 1960);
    v92 = *(v0 + 1952);
    v93 = *(v0 + 1944);
    v94 = *(v0 + 1920);
    v95 = *(v0 + 1912);
    v96 = *(v0 + 1904);
    v97 = *(v0 + 1896);
    v98 = *(v0 + 1888);
    v99 = *(v0 + 1880);
    v100 = *(v0 + 1872);
    v101 = *(v0 + 1864);
    v102 = *(v0 + 1856);
    v103 = *(v0 + 1832);
    v104 = *(v0 + 1808);
    v105 = *(v0 + 1784);
    v106 = *(v0 + 1776);
    v107 = *(v0 + 1768);
    v109 = *(v0 + 1760);
    v111 = *(v0 + 1744);
    v113 = *(v0 + 1736);
    v115 = *(v0 + 1712);
    v117 = *(v0 + 1696);
    v120 = *(v0 + 1688);
    v123 = *(v0 + 1664);
    v127 = *(v0 + 1656);

    v65 = *(v0 + 8);

    return v65(0, 0);
  }
}

uint64_t sub_1003BBAE8()
{
  v1 = v0[208];
  v2 = swift_task_alloc();
  v0[298] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[299] = v3;
  *(v3 + 16) = v1;
  v4 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v5 = swift_task_alloc();
  v0[300] = v5;
  *v5 = v0;
  v5[1] = sub_1003BBBF4;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v0 + 311, &unk_1007FE5C8, v2, sub_1003C3968, v3, 0, 0, &type metadata for Bool);
}

uint64_t sub_1003BBBF4()
{
  v2 = *v1;
  v3 = *(*v1 + 2400);
  v10 = *v1;
  *(*v1 + 2408) = v0;

  if (v0)
  {
    v4 = sub_1003BC324;
    v5 = 0;
  }

  else
  {
    v6 = *(v2 + 2392);
    v7 = *(v2 + 2384);
    v8 = *(v2 + 2152);

    *(v2 + 2490) = *(v2 + 2488);
    v4 = sub_1003BBD38;
    v5 = v8;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1003BBD38()
{
  v1 = *(v0 + 1640) + *(v0 + 2160);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 2490);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Should Import CONTACT END {shouldImportContact: %{BOOL}d}", v5, 8u);
  }

  v6 = *(v0 + 2490);

  if (v6 == 1)
  {
    v7 = *(v0 + 2168);
    v8 = *(v0 + 2128);
    v9 = *(v0 + 2112);
    v10 = *(v0 + 2104);
    v11 = *(v0 + 1640) + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_sendRequest;
    SFAirDropSend.Request.type.getter();
    v12 = SFAirDrop.TransferType.isOnlyExchange.getter();
    *(v0 + 2416) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v8, v10);
    v13 = swift_task_alloc();
    *(v0 + 2424) = v13;
    *v13 = v0;
    v13[1] = sub_1003BC78C;
    v14 = *(v0 + 1960);

    return sub_10034B410(v14, v12 & 1);
  }

  else
  {
    v16 = *(v0 + 1640) + *(v0 + 2160);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Import CONTACT SKIP. Declined.", v19, 2u);
    }

    v20 = *(v0 + 2328);
    v21 = *(v0 + 2320);
    v74 = *(v0 + 2144);
    v76 = *(v0 + 2168);
    v70 = *(v0 + 2112);
    v72 = *(v0 + 2104);
    v22 = *(v0 + 2048);
    v23 = *(v0 + 2008);
    v24 = *(v0 + 1960);
    v25 = *(v0 + 1936);
    v26 = *(v0 + 1928);
    v64 = *(v0 + 1784);
    v66 = *(v0 + 2080);
    v78 = *(v0 + 1712);
    v68 = *(v0 + 1664);

    sub_100005508(v0 + 960, &qword_10097B208, &qword_1007FE5A8);
    sub_100005508(v0 + 784, &qword_10097B208, &qword_1007FE5A8);
    (*(v25 + 8))(v24, v26);
    v21(v22, v23);
    sub_1003C41CC(v64, _s15ExchangeRequestVMa);
    v21(v66, v23);
    v76(v74, v72);
    sub_100005508(v68, &qword_10097B1F0, &qword_1007FE568);
    sub_1003C41CC(v78, _s16ExchangeResponseVMa);
    v27 = *(v0 + 2144);
    v28 = *(v0 + 2136);
    v29 = *(v0 + 2128);
    v30 = *(v0 + 2120);
    v31 = *(v0 + 2096);
    v32 = *(v0 + 2088);
    v33 = *(v0 + 2080);
    v34 = *(v0 + 2072);
    v35 = *(v0 + 2064);
    v36 = *(v0 + 2056);
    v38 = *(v0 + 2048);
    v39 = *(v0 + 2040);
    v40 = *(v0 + 2032);
    v41 = *(v0 + 2024);
    v42 = *(v0 + 2000);
    v43 = *(v0 + 1992);
    v44 = *(v0 + 1984);
    v45 = *(v0 + 1976);
    v46 = *(v0 + 1968);
    v47 = *(v0 + 1960);
    v48 = *(v0 + 1952);
    v49 = *(v0 + 1944);
    v50 = *(v0 + 1920);
    v51 = *(v0 + 1912);
    v52 = *(v0 + 1904);
    v53 = *(v0 + 1896);
    v54 = *(v0 + 1888);
    v55 = *(v0 + 1880);
    v56 = *(v0 + 1872);
    v57 = *(v0 + 1864);
    v58 = *(v0 + 1856);
    v59 = *(v0 + 1832);
    v60 = *(v0 + 1808);
    v61 = *(v0 + 1784);
    v62 = *(v0 + 1776);
    v63 = *(v0 + 1768);
    v65 = *(v0 + 1760);
    v67 = *(v0 + 1744);
    v69 = *(v0 + 1736);
    v71 = *(v0 + 1712);
    v73 = *(v0 + 1696);
    v75 = *(v0 + 1688);
    v77 = *(v0 + 1664);
    v79 = *(v0 + 1656);

    v37 = *(v0 + 8);

    return v37(0, 0);
  }
}

uint64_t sub_1003BC324()
{
  v1 = v0[299];
  v2 = v0[298];
  v3 = v0[269];

  return _swift_task_switch(sub_1003BC39C, v3, 0);
}

uint64_t sub_1003BC39C()
{
  v1 = v0[291];
  v2 = v0[290];
  v57 = v0[268];
  v59 = v0[271];
  v53 = v0[264];
  v55 = v0[263];
  v3 = v0[256];
  v4 = v0[251];
  v5 = v0[245];
  v6 = v0[242];
  v7 = v0[241];
  v47 = v0[223];
  v49 = v0[260];
  v61 = v0[214];
  v51 = v0[208];
  sub_100005508((v0 + 120), &qword_10097B208, &qword_1007FE5A8);
  sub_100005508((v0 + 98), &qword_10097B208, &qword_1007FE5A8);
  (*(v6 + 8))(v5, v7);
  v2(v3, v4);
  sub_1003C41CC(v47, _s15ExchangeRequestVMa);
  v2(v49, v4);
  v59(v57, v55);
  sub_100005508(v51, &qword_10097B1F0, &qword_1007FE568);
  sub_1003C41CC(v61, _s16ExchangeResponseVMa);
  v62 = v0[301];
  v8 = v0[268];
  v9 = v0[267];
  v10 = v0[266];
  v11 = v0[265];
  v12 = v0[262];
  v13 = v0[261];
  v14 = v0[260];
  v15 = v0[259];
  v16 = v0[258];
  v17 = v0[257];
  v20 = v0[256];
  v21 = v0[255];
  v22 = v0[254];
  v23 = v0[253];
  v24 = v0[250];
  v25 = v0[249];
  v26 = v0[248];
  v27 = v0[247];
  v28 = v0[246];
  v29 = v0[245];
  v30 = v0[244];
  v31 = v0[243];
  v32 = v0[240];
  v33 = v0[239];
  v34 = v0[238];
  v35 = v0[237];
  v36 = v0[236];
  v37 = v0[235];
  v38 = v0[234];
  v39 = v0[233];
  v40 = v0[232];
  v41 = v0[229];
  v42 = v0[226];
  v43 = v0[223];
  v44 = v0[222];
  v45 = v0[221];
  v46 = v0[220];
  v48 = v0[218];
  v50 = v0[217];
  v52 = v0[214];
  v54 = v0[212];
  v56 = v0[211];
  v58 = v0[208];
  v60 = v0[207];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1003BC78C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 2424);
  v7 = *v3;
  v5[304] = a1;
  v5[305] = a2;
  v5[306] = v2;

  v8 = v4[269];
  if (v2)
  {
    v9 = sub_1003BD630;
  }

  else
  {
    v9 = sub_1003BC8C8;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1003BC8C8()
{
  v1 = *(v0 + 2440);
  if (v1)
  {
    v2 = *(v0 + 1712) + *(*(v0 + 1704) + 36);
    v3 = *(v2 + 16);
    *(v0 + 1224) = *v2;
    *(v0 + 1240) = v3;
    v5 = *(v2 + 48);
    v4 = *(v2 + 64);
    v6 = *(v2 + 32);
    *(v0 + 1304) = *(v2 + 80);
    *(v0 + 1272) = v5;
    *(v0 + 1288) = v4;
    *(v0 + 1256) = v6;
    *(v0 + 1488) = *v2;
    v8 = *(v2 + 32);
    v7 = *(v2 + 48);
    v9 = *(v2 + 16);
    *(v0 + 1552) = *(v2 + 64);
    *(v0 + 1520) = v8;
    *(v0 + 1536) = v7;
    *(v0 + 1504) = v9;
    v10 = *(v0 + 1296);
    if (!v10)
    {
      v58 = *(v0 + 1640) + *(v0 + 2160);
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();
      v61 = os_log_type_enabled(v59, v60);
      v62 = *(v0 + 2416);
      v63 = *(v0 + 2328);
      v64 = *(v0 + 2320);
      v182 = *(v0 + 2144);
      v186 = *(v0 + 2168);
      v155 = *(v0 + 2048);
      v65 = *(v0 + 2008);
      v66 = *(v0 + 1960);
      v67 = *(v0 + 1936);
      v68 = *(v0 + 1928);
      v160 = *(v0 + 1784);
      v165 = *(v0 + 2080);
      v170 = *(v0 + 1664);
      v176 = *(v0 + 2104);
      if (v61)
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&_mh_execute_header, v59, v60, "Import Identity SKIP. Not provided", v69, 2u);
      }

      sub_100005508(v0 + 960, &qword_10097B208, &qword_1007FE5A8);
      sub_100005508(v0 + 784, &qword_10097B208, &qword_1007FE5A8);
      (*(v67 + 8))(v66, v68);
      v64(v155, v65);
      sub_1003C41CC(v160, _s15ExchangeRequestVMa);
      v64(v165, v65);
      v186(v182, v176);
      v78 = v170;
      goto LABEL_20;
    }

    v178 = *(v0 + 2320);
    v184 = *(v0 + 2328);
    v11 = *(v0 + 2312);
    v12 = *(v0 + 2304);
    v13 = *(v0 + 2484);
    v172 = *(v0 + 2160);
    v14 = *(v0 + 2080);
    v15 = *(v0 + 2064);
    v16 = *(v0 + 2008);
    v17 = *(v0 + 1640);
    v18 = *(v0 + 1304);
    v19 = *(v0 + 1536);
    *(v0 + 728) = *(v0 + 1520);
    *(v0 + 744) = v19;
    *(v0 + 760) = *(v0 + 1552);
    v20 = *(v0 + 1504);
    *(v0 + 696) = *(v0 + 1488);
    *(v0 + 712) = v20;
    *(v0 + 768) = v10;
    *(v0 + 776) = v18;
    v12(v15, v13, v16);
    v21 = *(v0 + 1272);
    *(v0 + 1344) = *(v0 + 1256);
    *(v0 + 1360) = v21;
    *(v0 + 1376) = *(v0 + 1288);
    *(v0 + 1392) = *(v0 + 1304);
    v22 = *(v0 + 1240);
    *(v0 + 1312) = *(v0 + 1224);
    *(v0 + 1328) = v22;
    sub_1003398A0(v0 + 1312, v0 + 1400);
    v23 = static SFAirDrop.ContactRequest.== infix(_:_:)();
    v178(v15, v16);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v26 = os_log_type_enabled(v24, v25);
    if (v23)
    {
      v27 = *(v0 + 2328);
      v28 = *(v0 + 2320);
      v179 = *(v0 + 2168);
      v185 = *(v0 + 2416);
      v167 = *(v0 + 2104);
      v173 = *(v0 + 2144);
      v29 = *(v0 + 2008);
      v144 = *(v0 + 1960);
      v148 = *(v0 + 2048);
      v30 = *(v0 + 1936);
      v31 = *(v0 + 1928);
      v152 = *(v0 + 1784);
      v157 = *(v0 + 2080);
      v162 = *(v0 + 1664);
      if (v26)
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Exchange Contact IDENTITY IMPORT SKIP. User chose to only receive", v32, 2u);
      }

      sub_100005508(v0 + 1224, &qword_10097B208, &qword_1007FE5A8);

      sub_100005508(v0 + 960, &qword_10097B208, &qword_1007FE5A8);
      sub_100005508(v0 + 784, &qword_10097B208, &qword_1007FE5A8);
      (*(v30 + 8))(v144, v31);
      v28(v148, v29);
      sub_1003C41CC(v152, _s15ExchangeRequestVMa);
      v28(v157, v29);
      v179(v173, v167);
      v78 = v162;
LABEL_20:
      sub_100005508(v78, &qword_10097B1F0, &qword_1007FE568);
      sub_1003C41CC(*(v0 + 1712), _s16ExchangeResponseVMa);
      v183 = *(v0 + 2432);
      v187 = *(v0 + 2440);
      v79 = *(v0 + 2144);
      v80 = *(v0 + 2136);
      v81 = *(v0 + 2128);
      v82 = *(v0 + 2120);
      v83 = *(v0 + 2096);
      v84 = *(v0 + 2088);
      v85 = *(v0 + 2080);
      v86 = *(v0 + 2072);
      v87 = *(v0 + 2064);
      v88 = *(v0 + 2056);
      v90 = *(v0 + 2048);
      v92 = *(v0 + 2040);
      v94 = *(v0 + 2032);
      v96 = *(v0 + 2024);
      v98 = *(v0 + 2000);
      v100 = *(v0 + 1992);
      v102 = *(v0 + 1984);
      v104 = *(v0 + 1976);
      v106 = *(v0 + 1968);
      v108 = *(v0 + 1960);
      v110 = *(v0 + 1952);
      v112 = *(v0 + 1944);
      v114 = *(v0 + 1920);
      v116 = *(v0 + 1912);
      v118 = *(v0 + 1904);
      v120 = *(v0 + 1896);
      v122 = *(v0 + 1888);
      v124 = *(v0 + 1880);
      v126 = *(v0 + 1872);
      v128 = *(v0 + 1864);
      v130 = *(v0 + 1856);
      v132 = *(v0 + 1832);
      v134 = *(v0 + 1808);
      v136 = *(v0 + 1784);
      v138 = *(v0 + 1776);
      v140 = *(v0 + 1768);
      v143 = *(v0 + 1760);
      v147 = *(v0 + 1744);
      v151 = *(v0 + 1736);
      v156 = *(v0 + 1712);
      v161 = *(v0 + 1696);
      v166 = *(v0 + 1688);
      v171 = *(v0 + 1664);
      v177 = *(v0 + 1656);

      v89 = *(v0 + 8);

      return v89(v183, v187);
    }

    if (v26)
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Import Identity CONTINUE. Attempting identity import", v70, 2u);
    }

    v71 = *(v0 + 1712);
    v72 = *(v0 + 1704);

    v73 = (v71 + *(v72 + 32));
    v74 = *v73;
    v75 = v73[1];
    v76 = swift_task_alloc();
    *(v0 + 2456) = v76;
    *v76 = v0;
    v76[1] = sub_1003BDA14;
    v77 = *(v0 + 2432);

    return sub_10034E3C0(v0 + 696, v74, v75, v77, v1);
  }

  else
  {
    v33 = *(v0 + 1640) + *(v0 + 2160);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Import CONTACT FAILED", v36, 2u);
    }

    v180 = *(v0 + 2416);
    v37 = *(v0 + 2328);
    v38 = *(v0 + 2320);
    v163 = *(v0 + 2144);
    v168 = *(v0 + 2168);
    v141 = *(v0 + 2048);
    v39 = *(v0 + 2008);
    v40 = *(v0 + 1960);
    v41 = *(v0 + 1936);
    v42 = *(v0 + 1928);
    v43 = *(v0 + 1800);
    v44 = *(v0 + 1792);
    v145 = *(v0 + 1784);
    v149 = *(v0 + 2080);
    v174 = *(v0 + 1712);
    v153 = *(v0 + 1664);
    v158 = *(v0 + 2104);

    sub_1003C3718(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
    swift_allocError();
    (*(v43 + 104))(v45, enum case for SFAirDropSend.Failure.badRequest(_:), v44);
    swift_willThrow();
    sub_100005508(v0 + 960, &qword_10097B208, &qword_1007FE5A8);
    sub_100005508(v0 + 784, &qword_10097B208, &qword_1007FE5A8);
    (*(v41 + 8))(v40, v42);
    v38(v141, v39);
    sub_1003C41CC(v145, _s15ExchangeRequestVMa);
    v38(v149, v39);
    v168(v163, v158);
    sub_100005508(v153, &qword_10097B1F0, &qword_1007FE568);
    sub_1003C41CC(v174, _s16ExchangeResponseVMa);
    v46 = *(v0 + 2144);
    v47 = *(v0 + 2136);
    v48 = *(v0 + 2128);
    v49 = *(v0 + 2120);
    v50 = *(v0 + 2096);
    v51 = *(v0 + 2088);
    v52 = *(v0 + 2080);
    v53 = *(v0 + 2072);
    v54 = *(v0 + 2064);
    v55 = *(v0 + 2056);
    v91 = *(v0 + 2048);
    v93 = *(v0 + 2040);
    v95 = *(v0 + 2032);
    v97 = *(v0 + 2024);
    v99 = *(v0 + 2000);
    v101 = *(v0 + 1992);
    v103 = *(v0 + 1984);
    v105 = *(v0 + 1976);
    v107 = *(v0 + 1968);
    v109 = *(v0 + 1960);
    v111 = *(v0 + 1952);
    v113 = *(v0 + 1944);
    v115 = *(v0 + 1920);
    v117 = *(v0 + 1912);
    v119 = *(v0 + 1904);
    v121 = *(v0 + 1896);
    v123 = *(v0 + 1888);
    v125 = *(v0 + 1880);
    v127 = *(v0 + 1872);
    v129 = *(v0 + 1864);
    v131 = *(v0 + 1856);
    v133 = *(v0 + 1832);
    v135 = *(v0 + 1808);
    v137 = *(v0 + 1784);
    v139 = *(v0 + 1776);
    v142 = *(v0 + 1768);
    v146 = *(v0 + 1760);
    v150 = *(v0 + 1744);
    v154 = *(v0 + 1736);
    v159 = *(v0 + 1712);
    v164 = *(v0 + 1696);
    v169 = *(v0 + 1688);
    v175 = *(v0 + 1664);
    v181 = *(v0 + 1656);

    v56 = *(v0 + 8);

    return v56();
  }
}

uint64_t sub_1003BD630()
{
  v1 = v0[291];
  v2 = v0[290];
  v57 = v0[271];
  v59 = v0[302];
  v53 = v0[263];
  v55 = v0[268];
  v3 = v0[256];
  v4 = v0[251];
  v5 = v0[245];
  v6 = v0[242];
  v7 = v0[241];
  v47 = v0[223];
  v49 = v0[260];
  v61 = v0[214];
  v51 = v0[208];
  sub_100005508((v0 + 120), &qword_10097B208, &qword_1007FE5A8);
  sub_100005508((v0 + 98), &qword_10097B208, &qword_1007FE5A8);
  (*(v6 + 8))(v5, v7);
  v2(v3, v4);
  sub_1003C41CC(v47, _s15ExchangeRequestVMa);
  v2(v49, v4);
  v57(v55, v53);
  sub_100005508(v51, &qword_10097B1F0, &qword_1007FE568);
  sub_1003C41CC(v61, _s16ExchangeResponseVMa);
  v62 = v0[306];
  v8 = v0[268];
  v9 = v0[267];
  v10 = v0[266];
  v11 = v0[265];
  v12 = v0[262];
  v13 = v0[261];
  v14 = v0[260];
  v15 = v0[259];
  v16 = v0[258];
  v17 = v0[257];
  v20 = v0[256];
  v21 = v0[255];
  v22 = v0[254];
  v23 = v0[253];
  v24 = v0[250];
  v25 = v0[249];
  v26 = v0[248];
  v27 = v0[247];
  v28 = v0[246];
  v29 = v0[245];
  v30 = v0[244];
  v31 = v0[243];
  v32 = v0[240];
  v33 = v0[239];
  v34 = v0[238];
  v35 = v0[237];
  v36 = v0[236];
  v37 = v0[235];
  v38 = v0[234];
  v39 = v0[233];
  v40 = v0[232];
  v41 = v0[229];
  v42 = v0[226];
  v43 = v0[223];
  v44 = v0[222];
  v45 = v0[221];
  v46 = v0[220];
  v48 = v0[218];
  v50 = v0[217];
  v52 = v0[214];
  v54 = v0[212];
  v56 = v0[211];
  v58 = v0[208];
  v60 = v0[207];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1003BDA14()
{
  v2 = *v1;
  v3 = *(*v1 + 2456);
  v9 = *v1;
  *(*v1 + 2464) = v0;

  if (v0)
  {
    v4 = *(v2 + 2440);
    v5 = *(v2 + 2152);

    v6 = sub_1003BDF30;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 2152);
    v6 = sub_1003BDB3C;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1003BDB3C()
{
  v1 = v0[291];
  v2 = v0[290];
  v59 = v0[271];
  v61 = v0[302];
  v55 = v0[263];
  v57 = v0[268];
  v3 = v0[256];
  v4 = v0[251];
  v5 = v0[245];
  v6 = v0[242];
  v7 = v0[241];
  v49 = v0[223];
  v51 = v0[260];
  v53 = v0[208];
  sub_100005508((v0 + 153), &qword_10097B208, &qword_1007FE5A8);
  sub_100005508((v0 + 120), &qword_10097B208, &qword_1007FE5A8);
  sub_100005508((v0 + 98), &qword_10097B208, &qword_1007FE5A8);
  (*(v6 + 8))(v5, v7);
  v2(v3, v4);
  sub_1003C41CC(v49, _s15ExchangeRequestVMa);
  v2(v51, v4);
  v59(v57, v55);
  sub_100005508(v53, &qword_10097B1F0, &qword_1007FE568);
  sub_1003C41CC(v0[214], _s16ExchangeResponseVMa);
  v60 = v0[304];
  v62 = v0[305];
  v8 = v0[268];
  v9 = v0[267];
  v10 = v0[266];
  v11 = v0[265];
  v12 = v0[262];
  v13 = v0[261];
  v14 = v0[260];
  v15 = v0[259];
  v16 = v0[258];
  v17 = v0[257];
  v20 = v0[256];
  v21 = v0[255];
  v22 = v0[254];
  v23 = v0[253];
  v24 = v0[250];
  v25 = v0[249];
  v26 = v0[248];
  v27 = v0[247];
  v28 = v0[246];
  v29 = v0[245];
  v30 = v0[244];
  v31 = v0[243];
  v32 = v0[240];
  v33 = v0[239];
  v34 = v0[238];
  v35 = v0[237];
  v36 = v0[236];
  v37 = v0[235];
  v38 = v0[234];
  v39 = v0[233];
  v40 = v0[232];
  v41 = v0[229];
  v42 = v0[226];
  v43 = v0[223];
  v44 = v0[222];
  v45 = v0[221];
  v46 = v0[220];
  v47 = v0[218];
  v48 = v0[217];
  v50 = v0[214];
  v52 = v0[212];
  v54 = v0[211];
  v56 = v0[208];
  v58 = v0[207];

  v18 = v0[1];

  return v18(v60, v62);
}

uint64_t sub_1003BDF30()
{
  v1 = v0[291];
  v2 = v0[290];
  v57 = v0[271];
  v59 = v0[302];
  v53 = v0[263];
  v55 = v0[268];
  v3 = v0[256];
  v4 = v0[251];
  v5 = v0[245];
  v6 = v0[242];
  v7 = v0[241];
  v47 = v0[223];
  v49 = v0[260];
  v61 = v0[214];
  v51 = v0[208];
  sub_100005508((v0 + 153), &qword_10097B208, &qword_1007FE5A8);
  sub_100005508((v0 + 120), &qword_10097B208, &qword_1007FE5A8);
  sub_100005508((v0 + 98), &qword_10097B208, &qword_1007FE5A8);
  (*(v6 + 8))(v5, v7);
  v2(v3, v4);
  sub_1003C41CC(v47, _s15ExchangeRequestVMa);
  v2(v49, v4);
  v57(v55, v53);
  sub_100005508(v51, &qword_10097B1F0, &qword_1007FE568);
  sub_1003C41CC(v61, _s16ExchangeResponseVMa);
  v62 = v0[308];
  v8 = v0[268];
  v9 = v0[267];
  v10 = v0[266];
  v11 = v0[265];
  v12 = v0[262];
  v13 = v0[261];
  v14 = v0[260];
  v15 = v0[259];
  v16 = v0[258];
  v17 = v0[257];
  v20 = v0[256];
  v21 = v0[255];
  v22 = v0[254];
  v23 = v0[253];
  v24 = v0[250];
  v25 = v0[249];
  v26 = v0[248];
  v27 = v0[247];
  v28 = v0[246];
  v29 = v0[245];
  v30 = v0[244];
  v31 = v0[243];
  v32 = v0[240];
  v33 = v0[239];
  v34 = v0[238];
  v35 = v0[237];
  v36 = v0[236];
  v37 = v0[235];
  v38 = v0[234];
  v39 = v0[233];
  v40 = v0[232];
  v41 = v0[229];
  v42 = v0[226];
  v43 = v0[223];
  v44 = v0[222];
  v45 = v0[221];
  v46 = v0[220];
  v48 = v0[218];
  v50 = v0[217];
  v52 = v0[214];
  v54 = v0[212];
  v56 = v0[211];
  v58 = v0[208];
  v60 = v0[207];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1003BE340()
{
  v1 = v0[309];
  v2 = v0[271];
  v3 = v0[268];
  v4 = v0[264];
  v5 = v0[263];
  v6 = v0[247];
  v7 = v0[242];
  v8 = v0[241];
  v9 = v0[235];
  v10 = v0[221];

  (*(v7 + 8))(v6, v8);
  v2(v3, v5);
  sub_100005508(v9, &qword_10097B200, &qword_1007FE578);
  sub_1003C41CC(v10, _s15ExchangeRequestVMa);
  v11 = v0[201];

  v12 = v0[268];
  v13 = v0[267];
  v14 = v0[266];
  v15 = v0[265];
  v16 = v0[262];
  v17 = v0[261];
  v18 = v0[260];
  v19 = v0[259];
  v20 = v0[258];
  v21 = v0[257];
  v24 = v0[256];
  v25 = v0[255];
  v26 = v0[254];
  v27 = v0[253];
  v28 = v0[250];
  v29 = v0[249];
  v30 = v0[248];
  v31 = v0[247];
  v32 = v0[246];
  v33 = v0[245];
  v34 = v0[244];
  v35 = v0[243];
  v36 = v0[240];
  v37 = v0[239];
  v38 = v0[238];
  v39 = v0[237];
  v40 = v0[236];
  v41 = v0[235];
  v42 = v0[234];
  v43 = v0[233];
  v44 = v0[232];
  v45 = v0[229];
  v46 = v0[226];
  v47 = v0[223];
  v48 = v0[222];
  v49 = v0[221];
  v50 = v0[220];
  v51 = v0[218];
  v52 = v0[217];
  v53 = v0[214];
  v54 = v0[212];
  v55 = v0[211];
  v56 = v0[208];
  v57 = v0[207];

  v22 = v0[1];

  return v22(0, 0);
}

uint64_t sub_1003BE6AC()
{
  v1 = v0[291];
  v2 = v0[290];
  v53 = v0[268];
  v55 = v0[271];
  v3 = v0[264];
  v4 = v0[263];
  v5 = v0[260];
  v6 = v0[251];
  v7 = v0[223];
  sub_100005508((v0 + 120), &qword_10097B208, &qword_1007FE5A8);
  sub_100005508((v0 + 98), &qword_10097B208, &qword_1007FE5A8);
  sub_1003C41CC(v7, _s15ExchangeRequestVMa);
  v2(v5, v6);
  v55(v53, v4);
  v56 = v0[297];
  v8 = v0[268];
  v9 = v0[267];
  v10 = v0[266];
  v11 = v0[265];
  v12 = v0[262];
  v13 = v0[261];
  v14 = v0[260];
  v15 = v0[259];
  v16 = v0[258];
  v17 = v0[257];
  v20 = v0[256];
  v21 = v0[255];
  v22 = v0[254];
  v23 = v0[253];
  v24 = v0[250];
  v25 = v0[249];
  v26 = v0[248];
  v27 = v0[247];
  v28 = v0[246];
  v29 = v0[245];
  v30 = v0[244];
  v31 = v0[243];
  v32 = v0[240];
  v33 = v0[239];
  v34 = v0[238];
  v35 = v0[237];
  v36 = v0[236];
  v37 = v0[235];
  v38 = v0[234];
  v39 = v0[233];
  v40 = v0[232];
  v41 = v0[229];
  v42 = v0[226];
  v43 = v0[223];
  v44 = v0[222];
  v45 = v0[221];
  v46 = v0[220];
  v47 = v0[218];
  v48 = v0[217];
  v49 = v0[214];
  v50 = v0[212];
  v51 = v0[211];
  v52 = v0[208];
  v54 = v0[207];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1003BEA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = sub_10028088C(&qword_10097B318, &unk_1007FE6E0);
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();
  v9 = _s12ErrorRequestVMa();
  v5[12] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v11 = static AirDropActor.shared;
  v5[14] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003BEB5C, v11, 0);
}

uint64_t sub_1003BEB5C()
{
  v1 = v0[5];
  if (v1)
  {
    if ((v0[6] & 0xFF00000000) != 0x300000000 && (v0[6] & 4) != 0)
    {
      v13 = v0[12];
      v12 = v0[13];
      v14 = v0[11];
      v15 = v0[7];
      v16 = v0[4];
      v1;
      SFAirDropSend.Request.id.getter();
      v17 = *(v13 + 20);
      v18 = type metadata accessor for CodableError();
      (*(*(v18 - 8) + 16))(v12 + v17, v15, v18);
      sub_1003046F0(v12, v14);
      v19 = async function pointer to SFProgressTask.finalValue.getter[1];
      v20 = swift_task_alloc();
      v0[15] = v20;
      *v20 = v0;
      v20[1] = sub_1003BED78;
      v21 = v0[11];
      v22 = v0[9];

      return SFProgressTask.finalValue.getter(v0 + 2, v22);
    }

    v3 = v0[8];
    v4 = v1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "No HELLO response present with .errorMessage support", v7, 2u);
    }
  }

  v8 = v0[13];
  v9 = v0[11];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003BED78()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v9 = *v1;

  if (v0)
  {
    v4 = v2[14];

    v5 = sub_1003C43B8;
    v6 = v4;
  }

  else
  {
    v7 = v2[14];
    sub_100026AC0(v2[2], v2[3]);
    v5 = sub_1003BEEA8;
    v6 = v7;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1003BEEA8()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);

  (*(v3 + 8))(v2, v4);
  sub_1003C41CC(v1, _s12ErrorRequestVMa);
  v5 = *(v0 + 104);
  v6 = *(v0 + 88);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1003BEF64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_10028088C(&qword_10097B328, &qword_1007FE720);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_1003BF034, 0, 0);
}

uint64_t sub_1003BF034()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v0 = static AirDropActor.shared;

  return _swift_task_switch(sub_1003BF0CC, v0, 0);
}

uint64_t sub_1003BF0CC()
{
  v1 = v0[7];
  v2 = v0[3];
  sub_1002FF790(v0[4]);
  v3 = async function pointer to SFProgressTask.finalValue.getter[1];
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1003BF178;
  v5 = v0[7];
  v6 = v0[5];
  v7 = v0[2];

  return SFProgressTask.finalValue.getter(v7, v6);
}

uint64_t sub_1003BF178()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 72) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1003BF34C;
  }

  else
  {
    v6 = sub_1003BF2E8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1003BF2E8()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003BF34C()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_1003BF3B0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v108 = a1;
  v115 = a3;
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v103 = &v84[-v6];
  v7 = sub_10028088C(&qword_10097B258, &unk_100808E00);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v102 = &v84[-v9];
  v10 = type metadata accessor for Date();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v100 = &v84[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for UUID();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v99 = &v84[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v91 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
  v89 = *(v91 - 8);
  v16 = *(v89 + 64);
  __chkstk_darwin(v91);
  v90 = &v84[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v111 = type metadata accessor for SFAirDrop.ContactRequest();
  v107 = *(v111 - 8);
  v18 = *(v107 + 64);
  __chkstk_darwin(v111);
  v106 = &v84[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v114 = sub_10028088C(&qword_10097B260, &unk_1007FE620);
  v101 = *(v114 - 8);
  v20 = *(v101 + 64);
  __chkstk_darwin(v114);
  v116 = &v84[-v21];
  v93 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v22 = *(v93 - 1);
  v23 = *(v22 + 64);
  __chkstk_darwin(v93);
  v25 = &v84[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v113 = type metadata accessor for SFAirDrop.DeclineAction();
  v98 = *(v113 - 8);
  v26 = *(v98 + 64);
  v27 = __chkstk_darwin(v113);
  v95 = &v84[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v117 = &v84[-v29];
  v30 = sub_10028088C(&qword_10097B268, &unk_100808E10);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = __chkstk_darwin(v30);
  v35 = &v84[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v110 = v34;
  __chkstk_darwin(v33);
  v37 = &v84[-v36];
  v104 = 0xD000000000000017;
  SFProgressContinuation.init(_:initialProgress:file:line:)();
  v105 = v25;
  *v25 = 0x776F4E20746F4ELL;
  v25[1] = 0xE700000000000000;
  LODWORD(v88) = enum case for SFAirDrop.ButtonConfiguration.text(_:);
  v38 = *(v22 + 104);
  v92 = v22 + 104;
  v94 = v38;
  v38(v25);
  v85 = ~a2;
  v109 = *(v31 + 16);
  v112 = v30;
  v109(v35, v37, v30);
  v39 = *(v31 + 80);
  v40 = (v39 + 16) & ~v39;
  v41 = swift_allocObject();
  v97 = v31;
  v42 = *(v31 + 32);
  (v42)(v41 + v40, v35, v30);
  v43 = v105;
  SFAirDrop.DeclineAction.init(id:buttonConfiguration:hidden:operation:)();
  *v43 = 0x6572616853;
  v43[1] = 0xE500000000000000;
  v94(v43, v88, v93);
  v44 = type metadata accessor for SFAirDrop.ContactInfo();
  v45 = v106;
  (*(*(v44 - 8) + 16))(v106, v108, v44);
  (*(v107 + 104))(v45, enum case for SFAirDrop.ContactRequest.contact(_:), v111);
  v46 = v112;
  v92 = v31 + 16;
  v109(v35, v37, v112);
  v107 = v39;
  v47 = swift_allocObject();
  v94 = (v31 + 32);
  v93 = v42;
  (v42)(v47 + v40, v35, v46);
  v48 = sub_1003C3718(&qword_10097B270, &type metadata accessor for SFAirDrop.ContactRequest);
  v49 = sub_1003C3718(&qword_10097B278, &type metadata accessor for SFAirDrop.ContactRequest);
  v86 = sub_1003C3718(&qword_10097B280, &type metadata accessor for SFAirDrop.ContactRequest);
  v87 = v49;
  v88 = v48;
  SFAirDrop.AcceptAction.Single.init(id:buttonConfiguration:prominent:hidden:defaultAnswer:operation:)();
  v50 = (v89 + 8);
  v96 = v37;
  if (v85)
  {
    v118 = SFAirDrop.ContactInfo.fullName.getter();
    v119 = v57;
    v58._countAndFlagsBits = 10;
    v58._object = 0xE100000000000000;
    String.append(_:)(v58);
    v59 = v90;
    SFAirDrop.ContactInfo.handle.getter();
    sub_1003C3718(&qword_10097B230, &type metadata accessor for SFAirDrop.ContactInfo.Handle);
    v60 = v91;
    v61._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v61);

    (*v50)(v59, v60);
    v105 = v119;
    v106 = v118;
  }

  else
  {
    v118 = SFAirDrop.ContactInfo.fullName.getter();
    v119 = v51;
    v52._countAndFlagsBits = 10272;
    v52._object = 0xE200000000000000;
    String.append(_:)(v52);
    v53 = v90;
    SFAirDrop.ContactInfo.handle.getter();
    sub_1003C3718(&qword_10097B230, &type metadata accessor for SFAirDrop.ContactInfo.Handle);
    v54 = v91;
    v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v55);

    (*v50)(v53, v54);
    v56._countAndFlagsBits = 41;
    v56._object = 0xE100000000000000;
    String.append(_:)(v56);
    v105 = v119;
    v106 = v118;
    v104 = 0xD00000000000001FLL;
  }

  v108 = ~v107;
  UUID.init()();
  static Date.now.getter();
  sub_10028088C(&qword_10097B288, &unk_1007FE630);
  v62 = sub_10028088C(&qword_10097B290, &unk_100808E20);
  v63 = *(v62 - 8);
  v64 = *(v63 + 72);
  v65 = (*(v63 + 80) + 32) & ~*(v63 + 80);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1007F5670;
  v67 = v66 + v65;
  v68 = *(sub_10028088C(&qword_10097B298, &unk_1007FE640) + 48);
  v69 = v101;
  (*(v101 + 16))(v67, v116, v114);
  UUID.init()();
  (*(v63 + 104))(v67, enum case for SFAirDrop.AcceptAction.single<A>(_:), v62);
  v70 = v98;
  (*(v98 + 16))(v95, v117, v113);
  v71 = sub_10028088C(&qword_10097B2A0, &qword_100808E30);
  (*(*(v71 - 8) + 56))(v102, 1, 1, v71);
  SFAirDrop.PermissionRequest.init(id:requestDate:title:prompt:acceptActions:declineAction:isAnswered:telemetryData:)();
  v72 = type metadata accessor for TaskPriority();
  v73 = v103;
  (*(*(v72 - 8) + 56))(v103, 1, 1, v72);
  v74 = v35;
  v75 = v35;
  v76 = v96;
  v77 = v112;
  v109(v75, v96, v112);
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v78 = static AirDropActor.shared;
  v79 = sub_1003C3718(&qword_100977C00, type metadata accessor for AirDropActor);
  v80 = (v107 + 32) & v108;
  v81 = swift_allocObject();
  *(v81 + 16) = v78;
  *(v81 + 24) = v79;
  (v93)(v81 + v80, v74, v77);

  v82 = sub_1002B2B00(0, 0, v73, &unk_1007FE658, v81);
  (*(v69 + 8))(v116, v114);
  (*(v70 + 8))(v117, v113);
  (*(v97 + 8))(v76, v77);
  result = sub_10028088C(&qword_10097B200, &qword_1007FE578);
  *(v115 + *(result + 52)) = v82;
  return result;
}

uint64_t sub_1003C01C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1003C01E4, 0, 0);
}

uint64_t sub_1003C01E4()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v0 = static AirDropActor.shared;

  return _swift_task_switch(sub_1003C027C, v0, 0);
}

uint64_t sub_1003C027C()
{
  v1 = v0[3];
  v2 = v0[2];
  sub_100302D38(v0[4]);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1003C02E4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a2;
  LODWORD(v81) = a2;
  v86 = a1;
  v101 = a3;
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v96 = &v75 - v6;
  v7 = sub_10028088C(&qword_10097B220, &qword_1007FE5D8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v94 = &v75 - v9;
  v10 = type metadata accessor for Date();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v92 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v91 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
  v76 = *(v77 - 8);
  v16 = *(v76 + 64);
  __chkstk_darwin(v77);
  v75 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_10028088C(&qword_10097B228, &unk_1007FE5E0);
  v95 = *(v100 - 8);
  v18 = *(v95 + 64);
  __chkstk_darwin(v100);
  v103 = &v75 - v19;
  v83 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v20 = *(v83 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v83);
  v23 = (&v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v99 = type metadata accessor for SFAirDrop.DeclineAction();
  v93 = *(v99 - 8);
  v24 = *(v93 + 64);
  v25 = __chkstk_darwin(v99);
  v87 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v102 = &v75 - v27;
  v28 = sub_10028088C(&unk_1009755E0, &qword_1007F8970);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v33 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v32;
  __chkstk_darwin(v31);
  v35 = &v75 - v34;
  v98 = &v75 - v34;
  SFProgressContinuation.init(_:initialProgress:file:line:)();
  v36 = 0x6574656C6544;
  if (v3)
  {
    v36 = 0x656E696C636544;
  }

  v37 = 0xE700000000000000;
  if ((v3 & 1) == 0)
  {
    v37 = 0xE600000000000000;
  }

  *v23 = v36;
  v23[1] = v37;
  LODWORD(v79) = enum case for SFAirDrop.ButtonConfiguration.text(_:);
  v38 = *(v20 + 104);
  v82 = (v20 + 104);
  v84 = v38;
  v39 = 1885693259;
  if (v3)
  {
    v39 = 0x747065636341;
  }

  v85 = v39;
  v40 = 0xE400000000000000;
  if (v3)
  {
    v40 = 0xE600000000000000;
  }

  v78 = v40;
  (v38)(v23);
  v41 = *(v29 + 16);
  v41(v33, v35, v28);
  v42 = *(v29 + 80);
  v43 = (v42 + 16) & ~v42;
  v44 = swift_allocObject();
  v89 = v29;
  v45 = *(v29 + 32);
  v45(v44 + v43, v33, v28);
  SFAirDrop.DeclineAction.init(id:buttonConfiguration:hidden:operation:)();
  v80 = v23;
  v46 = v78;
  *v23 = v85;
  v23[1] = v46;
  v84(v23, v79, v83);
  LOBYTE(v104) = 1;
  v83 = v29 + 16;
  v82 = v41;
  v41(v33, v98, v28);
  v47 = swift_allocObject();
  v85 = v29 + 32;
  v84 = v45;
  v45(v47 + v43, v33, v28);
  SFAirDrop.AcceptAction.Single.init(id:buttonConfiguration:prominent:hidden:defaultAnswer:operation:)();
  v90 = v28;
  v88 = v33;
  if (v81)
  {
    SFAirDrop.ContactInfo.fullName.getter();
    v81 = v48;
    v80 = 0x800000010078E4E0;
    v79 = 0xD000000000000013;
  }

  else
  {
    v81 = 0x800000010078E4C0;
    v104 = SFAirDrop.ContactInfo.fullName.getter();
    v105 = v49;
    v50._countAndFlagsBits = 10;
    v50._object = 0xE100000000000000;
    String.append(_:)(v50);
    v51 = v75;
    SFAirDrop.ContactInfo.handle.getter();
    sub_1003C3718(&qword_10097B230, &type metadata accessor for SFAirDrop.ContactInfo.Handle);
    v52 = v77;
    v53._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v53);

    (*(v76 + 8))(v51, v52);
    v79 = v104;
    v80 = v105;
  }

  v86 = ~v42;
  UUID.init()();
  static Date.now.getter();
  sub_10028088C(&qword_10097B238, &qword_1007FE5F0);
  v54 = sub_10028088C(&qword_10097B240, &qword_1007FE5F8);
  v55 = *(v54 - 8);
  v56 = *(v55 + 72);
  v57 = v42;
  v58 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1007F5670;
  v60 = v59 + v58;
  LODWORD(v58) = *(sub_10028088C(&qword_10097B248, &qword_1007FE600) + 48);
  v61 = v95;
  (*(v95 + 16))(v60, v103, v100);
  UUID.init()();
  (*(v55 + 104))(v60, enum case for SFAirDrop.AcceptAction.single<A>(_:), v54);
  v62 = v93;
  (*(v93 + 16))(v87, v102, v99);
  v63 = sub_10028088C(&qword_10097B250, &qword_1007FE608);
  (*(*(v63 - 8) + 56))(v94, 1, 1, v63);
  SFAirDrop.PermissionRequest.init(id:requestDate:title:prompt:acceptActions:declineAction:isAnswered:telemetryData:)();
  v64 = type metadata accessor for TaskPriority();
  v65 = v96;
  (*(*(v64 - 8) + 56))(v96, 1, 1, v64);
  v66 = v88;
  v67 = v98;
  v68 = v90;
  v82(v88, v98, v90);
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v69 = static AirDropActor.shared;
  v70 = sub_1003C3718(&qword_100977C00, type metadata accessor for AirDropActor);
  v71 = (v57 + 32) & v86;
  v72 = swift_allocObject();
  *(v72 + 16) = v69;
  *(v72 + 24) = v70;
  v84(v72 + v71, v66, v68);

  v73 = sub_1002B2DE0(0, 0, v65, &unk_1007FE618, v72);
  (*(v61 + 8))(v103, v100);
  (*(v62 + 8))(v102, v99);
  (*(v89 + 8))(v67, v68);
  result = sub_10028088C(&qword_10097B1F0, &qword_1007FE568);
  *(v101 + *(result + 52)) = v73;
  return result;
}

uint64_t sub_1003C0F3C()
{
  v0 = type metadata accessor for SFAirDropSend.Failure();
  sub_1003C3718(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
  swift_allocError();
  (*(*(v0 - 8) + 104))(v1, enum case for SFAirDropSend.Failure.cancelled(_:), v0);
  sub_10028088C(&qword_10097B268, &unk_100808E10);
  SFProgressContinuation.fail(with:)();
}

uint64_t sub_1003C102C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = sub_10028088C(&qword_10097B2A8, &unk_1007FE660);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;
  v4[7] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003C1134, v8, 0);
}

uint64_t sub_1003C1134()
{
  v1 = v0[6];
  v2 = v0[3];
  sub_10028088C(&qword_10097B268, &unk_100808E10);
  SFProgressContinuation.task.getter();
  v3 = async function pointer to SFProgressTask.finalValue.getter[1];
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1003C11F8;
  v5 = v0[6];
  v6 = v0[4];
  v7 = v0[2];

  return SFProgressTask.finalValue.getter(v7, v6);
}

uint64_t sub_1003C11F8()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 72) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 56);
  if (v0)
  {
    v9 = sub_1003C13E4;
  }

  else
  {
    v9 = sub_1003C1380;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1003C1380()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003C13E4()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_1003C1448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = sub_10028088C(&qword_100975658, &qword_1007F8A40);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;
  v4[7] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003C1550, v8, 0);
}

uint64_t sub_1003C1550()
{
  v1 = v0[6];
  v2 = v0[3];
  sub_10028088C(&unk_1009755E0, &qword_1007F8970);
  SFProgressContinuation.task.getter();
  v3 = async function pointer to SFProgressTask.finalValue.getter[1];
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1003C1614;
  v5 = v0[6];
  v6 = v0[4];
  v7 = v0[2];

  return SFProgressTask.finalValue.getter(v7, v6);
}

uint64_t sub_1003C1614()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 72) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 56);
  if (v0)
  {
    v9 = sub_1003C43BC;
  }

  else
  {
    v9 = sub_1003C43B4;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1003C179C()
{
  v0 = type metadata accessor for SFAirDropSend.Failure();
  sub_1003C3718(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
  swift_allocError();
  (*(*(v0 - 8) + 104))(v1, enum case for SFAirDropSend.Failure.cancelled(_:), v0);
  sub_10028088C(&qword_100976900, &unk_1007FD250);
  SFProgressTask.cancel(_:)();
}

uint64_t sub_1003C188C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    (*(v1 + 16))(v4, result + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_log, v0);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Accepted intervention via permission request", v9, 2u);
    }

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_1003C1A14(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v69 - v6;
  v8 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v70 = &v69 - v15;
  __chkstk_darwin(v14);
  v71 = &v69 - v16;
  v17 = type metadata accessor for SFAirDrop.TransferType();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  SFAirDropSend.Request.type.getter();
  v22 = SFAirDrop.TransferType.isOnlyExchange.getter();
  result = (*(v18 + 8))(v21, v17);
  if (v22)
  {
    return result;
  }

  v24 = v2;
  v69 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_endpoints;
  v25 = *(v2 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_endpoints);

  CurrentValueSubject.value.getter();

  v27 = v73;
  __chkstk_darwin(v26);
  *(&v69 - 2) = a1;
  sub_1002CC594(sub_1003C2904, v27, v7);

  v28 = v9;
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100005508(v7, &qword_1009763E0, &qword_1007F95D0);
    v29 = a1;
LABEL_8:
    v43 = v24;
    sub_1003C36B0(v29, v13, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = v28;
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v73 = v48;
      *v47 = 136315138;
      v49 = sub_10032DA30(v48);
      v51 = v50;
      sub_1003C41CC(v13, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v52 = sub_10000C4E4(v49, v51, &v73);

      *(v47 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v44, v45, "Adding connectable endpoint to runner endpoints %s", v47, 0xCu);
      sub_10000C60C(v48);

      v28 = v46;
    }

    else
    {

      sub_1003C41CC(v13, type metadata accessor for SDAirDropDiscoveredEndpoint);
    }

    sub_10028088C(&qword_1009750D0, &qword_1007FE490);
    v53 = *(v28 + 72);
    v54 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1007F5670;
    sub_1003C36B0(v29, v55 + v54, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v56 = sub_100292E1C(v55);
    swift_setDeallocating();
    sub_1003C41CC(v55 + v54, type metadata accessor for SDAirDropDiscoveredEndpoint);
    swift_deallocClassInstance();
    v57 = v69;
    v58 = *(v43 + v69);

    CurrentValueSubject.value.getter();

    v59 = *(v43 + v57);
    v60 = v73;

    v72 = sub_1006947E0(v56, v60);
    CurrentValueSubject.send(_:)();
  }

  v30 = v71;
  sub_10000ED78(v7, v71, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v31 = sub_10032FEAC();
  v29 = a1;
  if (sub_10032FEAC() >= v31)
  {
    sub_1003C41CC(v30, type metadata accessor for SDAirDropDiscoveredEndpoint);
    goto LABEL_8;
  }

  v32 = v70;
  sub_1003C36B0(a1, v70, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v33 = v24;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = v32;
    v38 = swift_slowAlloc();
    v73 = v38;
    *v36 = 136315138;
    v39 = sub_10032DA30(v38);
    v69 = v29;
    v41 = v40;
    sub_1003C41CC(v37, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v42 = sub_10000C4E4(v39, v41, &v73);
    v29 = v69;
    v33 = v24;

    *(v36 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v34, v35, "Adding connectable endpoint to backup endpoints %s", v36, 0xCu);
    sub_10000C60C(v38);
  }

  else
  {

    sub_1003C41CC(v32, type metadata accessor for SDAirDropDiscoveredEndpoint);
  }

  sub_10028088C(&qword_1009750D0, &qword_1007FE490);
  v61 = *(v28 + 72);
  v62 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1007F5670;
  sub_1003C36B0(v29, v63 + v62, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v64 = sub_100292E1C(v63);
  swift_setDeallocating();
  sub_1003C41CC(v63 + v62, type metadata accessor for SDAirDropDiscoveredEndpoint);
  swift_deallocClassInstance();
  v65 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_backupEndpoints;
  v66 = *(v33 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_backupEndpoints);

  CurrentValueSubject.value.getter();

  v67 = *(v33 + v65);
  v68 = v73;

  v72 = sub_1006947E0(v64, v68);
  CurrentValueSubject.send(_:)();

  return sub_1003C41CC(v30, type metadata accessor for SDAirDropDiscoveredEndpoint);
}

uint64_t sub_1003C2210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v41 - v20;
  sub_1003C36B0(a1, &v41 - v20, type metadata accessor for SDAirDropDiscoveredEndpoint);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v27 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    }

    else
    {
      v27 = type metadata accessor for SDAirDropDiscoveredEndpoint;
    }

    sub_1003C41CC(v21, v27);
    device_id = 0;
    v26 = 0;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_10000ED78(v21, v7, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      v28 = &v7[*(v4 + 28)];
      device_id = *v28;
      v26 = v28[1];

      v29 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
      v30 = v7;
    }

    else
    {
      sub_10000ED78(v21, v14, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      result = NWEndpoint.nw.getter();
      if (!result)
      {
        __break(1u);
        goto LABEL_41;
      }

      device_id = nw_endpoint_get_device_id();
      swift_unknownObjectRelease();
      if (device_id)
      {
        device_id = String.init(cString:)();
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      v29 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
      v30 = v14;
    }

    sub_1003C41CC(v30, v29);
  }

  sub_1003C36B0(a2, v19, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v31 = swift_getEnumCaseMultiPayload();
  if (v31 > 1)
  {
    if (v31 == 2)
    {
      v35 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    }

    else
    {
      v35 = type metadata accessor for SDAirDropDiscoveredEndpoint;
    }

    sub_1003C41CC(v19, v35);
    v32 = 0;
    v34 = 0;
    if (!v26)
    {
      goto LABEL_35;
    }

    goto LABEL_24;
  }

  if (v31)
  {
    sub_10000ED78(v19, v7, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    v36 = &v7[*(v4 + 28)];
    v32 = *v36;
    v34 = v36[1];

    v37 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
    v38 = v7;
    goto LABEL_34;
  }

  sub_10000ED78(v19, v12, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
  result = NWEndpoint.nw.getter();
  if (result)
  {
    v32 = nw_endpoint_get_device_id();
    swift_unknownObjectRelease();
    if (v32)
    {
      v32 = String.init(cString:)();
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    v37 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
    v38 = v12;
LABEL_34:
    sub_1003C41CC(v38, v37);
    if (!v26)
    {
LABEL_35:
      if (!v34)
      {
        v40 = 1;
        return v40 & 1;
      }

      v40 = 0;
LABEL_37:

      return v40 & 1;
    }

LABEL_24:
    if (v34)
    {
      if (device_id == v32 && v26 == v34)
      {

        v40 = 1;
      }

      else
      {
        v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v40 = 0;
    }

    goto LABEL_37;
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1003C267C()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_pseudonymService);

  v2 = *(v0 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_sendConnections);

  v3 = *(v0 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_urls);

  return sub_100005508(v0 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner____lazy_storage___senderContact, &qword_10097B1A0, &qword_1007FE498);
}

void sub_1003C27D8()
{
  sub_1003C28A0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1003C28A0()
{
  if (!qword_10097B190)
  {
    sub_100280938(&qword_10097B198, &qword_1007FE450);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10097B190);
    }
  }
}

unint64_t *sub_1003C2924(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    sub_1003C2C5C(v7, a2, a3);
    v10 = v9;

    return v10;
  }

  return result;
}

id sub_1003C29BC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

uint64_t sub_1003C2A08(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1003C2A28, 0, 0);
}

uint64_t sub_1003C2A28()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + *(sub_10028088C(&qword_10097B1F0, &qword_1007FE568) + 52));
  v3 = async function pointer to Task.value.getter[1];
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  v5 = sub_10028088C(&unk_10097A930, &unk_1007F9050);
  *v4 = v0;
  v4[1] = sub_1003C2B0C;

  return Task.value.getter(v0 + 48, v2, &type metadata for Bool, v5, &protocol self-conformance witness table for Error);
}

uint64_t sub_1003C2B0C()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_1003C2C44;
  }

  else
  {
    v3 = sub_1003C2C20;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_1003C2C5C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v18 = 0;
  v4 = 0;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_11:
    v12 = v9 | (v4 << 6);
    v13 = *(*(a3 + 48) + 8 * v12);
    v14 = static NSObject.== infix(_:_:)();

    if ((v14 & 1) == 0)
    {
      *(a1 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
LABEL_15:

        sub_1006E375C(a1, a2, v18, a3);
        return;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      goto LABEL_15;
    }

    v11 = *(a3 + 56 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1003C2DB4(uint64_t a1, void *a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v25 = ((1 << v6) + 63) >> 6;
  v8 = 8 * v25;
  v9 = a2;
  v28 = v9;
  if (v7 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v24[1] = v24;
    v24[2] = v3;
    __chkstk_darwin(v9);
    v26 = v24 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v26, v8);
    v27 = 0;
    v3 = 0;
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v8 = (v10 + 63) >> 6;
    while (v12)
    {
      v13 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v16 = v13 | (v3 << 6);
      v17 = *(*(a1 + 48) + 8 * v16);
      v18 = static NSObject.== infix(_:_:)();

      if ((v18 & 1) == 0)
      {
        *&v26[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
LABEL_16:
          v20 = sub_1006E375C(v26, v25, v27, a1);

          return v20;
        }
      }
    }

    v14 = v3;
    while (1)
    {
      v3 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v3 >= v8)
      {
        goto LABEL_16;
      }

      v15 = *(a1 + 56 + 8 * v3);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v12 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v22 = swift_slowAlloc();
  v23 = v28;
  v20 = sub_1003C2924(v22, v25, a1, v23);

  return v20;
}

Swift::Int sub_1003C3038(uint64_t a1, void *a2)
{
  swift_getObjectType();
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1003C2DB4(a1, a2);
  }

  v4 = a2;
  __CocoaSet.makeIterator()();
  while (__CocoaSet.Iterator.next()())
  {
    swift_dynamicCast();
    if (static NSObject.== infix(_:_:)())
    {
    }

    else
    {
      v5 = *(&_swiftEmptySetSingleton + 2);
      if (*(&_swiftEmptySetSingleton + 3) <= v5)
      {
        sub_100471EC4(v5 + 1);
      }

      result = NSObject._rawHashValue(seed:)(*(&_swiftEmptySetSingleton + 5));
      v7 = &_swiftEmptySetSingleton + 56;
      v8 = -1 << *(&_swiftEmptySetSingleton + 32);
      v9 = result & ~v8;
      v10 = v9 >> 6;
      if (((-1 << v9) & ~*(&_swiftEmptySetSingleton + (v9 >> 6) + 7)) != 0)
      {
        v11 = __clz(__rbit64((-1 << v9) & ~*(&_swiftEmptySetSingleton + (v9 >> 6) + 7))) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = 0;
        v13 = (63 - v8) >> 6;
        do
        {
          if (++v10 == v13 && (v12 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v14 = v10 == v13;
          if (v10 == v13)
          {
            v10 = 0;
          }

          v12 |= v14;
          v15 = *&v7[8 * v10];
        }

        while (v15 == -1);
        v11 = __clz(__rbit64(~v15)) + (v10 << 6);
      }

      *&v7[(v11 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v11;
      *(*(&_swiftEmptySetSingleton + 6) + 8 * v11) = v16;
      ++*(&_swiftEmptySetSingleton + 2);
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1003C3240(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v50 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v41 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v42 = v6;
  while (v9)
  {
    v45 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v49[0] = *v17;
    v49[1] = v18;
    v49[2] = v19;

    v20 = v19;
    a2(&v46, v49);

    v21 = v46;
    v22 = v47;
    v23 = v48;
    v24 = *v50;
    v26 = sub_100012854(v46, v47);
    v27 = *(v24 + 16);
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (*(v24 + 24) >= v29)
    {
      if ((v45 & 1) == 0)
      {
        sub_1002D0A44();
      }
    }

    else
    {
      v31 = v50;
      sub_100575784(v29, v45 & 1);
      v32 = *v31;
      v33 = sub_100012854(v21, v22);
      if ((v30 & 1) != (v34 & 1))
      {
        goto LABEL_27;
      }

      v26 = v33;
    }

    v9 &= v9 - 1;
    v35 = *v50;
    if (v30)
    {

      v12 = v35[7];
      v13 = *(v12 + 8 * v26);
      *(v12 + 8 * v26) = v23;
    }

    else
    {
      v35[(v26 >> 6) + 8] |= 1 << v26;
      v36 = (v35[6] + 16 * v26);
      *v36 = v21;
      v36[1] = v22;
      *(v35[7] + 8 * v26) = v23;
      v37 = v35[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_26;
      }

      v35[2] = v39;
    }

    a4 = 1;
    v11 = v14;
    v6 = v42;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_100027D64();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v45 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1003C3524(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100005C00;

  return sub_1003AC85C(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_1003C3600(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003A50E0(a1, a2, v6);
}

uint64_t sub_1003C36B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003C3718(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003C3760(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_10052F94C(a1, v4);
}

uint64_t sub_1003C3808(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005C00;

  return sub_1003C01C0(a1, v5, v4);
}

uint64_t sub_1003C38B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003C2A08(a1, v4);
}

uint64_t sub_1003C3970()
{
  v0 = *(sub_10028088C(&unk_1009755E0, &qword_1007F8970) - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  sub_10028088C(&unk_1009755E0, &qword_1007F8970);
  return SFProgressContinuation.finish(with:)();
}

uint64_t sub_1003C3A08(char *a1)
{
  v2 = *(sub_10028088C(&unk_1009755E0, &qword_1007F8970) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *a1;
  sub_10028088C(&unk_1009755E0, &qword_1007F8970);
  return SFProgressContinuation.finish(with:)();
}

uint64_t sub_1003C3AB0(uint64_t a1)
{
  v4 = *(sub_10028088C(&unk_1009755E0, &qword_1007F8970) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1003C1448(a1, v6, v7, v1 + v5);
}

uint64_t sub_1003C3BD4()
{
  v1 = *(sub_10028088C(&qword_10097B268, &unk_100808E10) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return SFProgressContinuation.finish(with:)();
}

uint64_t sub_1003C3C48(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10028088C(a1, a2);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(v2 + 16);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2 + v5, v3);

  return _swift_deallocObject(v2, v5 + v6);
}

uint64_t sub_1003C3D08(uint64_t a1)
{
  v4 = *(sub_10028088C(&qword_10097B268, &unk_100808E10) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1003C102C(a1, v6, v7, v1 + v5);
}

uint64_t sub_1003C3E04()
{
  v1 = *(type metadata accessor for SFAirDropSend.Transfer() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(sub_10028088C(&qword_10097B2C0, &qword_1007FE678) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1003AD2E0(v6, v0 + v2, v0 + v5, v7);
}

uint64_t sub_1003C3F0C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1003C3F24(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10028088C(a1, a2);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  (*(v4 + 8))(v2 + v5, v3);

  return _swift_deallocObject(v2, v5 + v6);
}

uint64_t sub_1003C3FD0(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v4 = *(sub_10028088C(a1, a2) - 8);
  v5 = v3 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a3(v5);
}

uint64_t sub_1003C4048(uint64_t a1)
{
  v4 = *(_s10AskRequestVMa() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1003BEF64(a1, v6, v1 + v5);
}

uint64_t sub_1003C412C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C04;

  return sub_10052F94C(a1, v4);
}

uint64_t sub_1003C41CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003C426C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1003C42B8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1003C432C()
{
  result = type metadata accessor for SDAirDropDiscoveredEndpoint(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SFAirDropSend.Failure();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003C43C4()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097B3F0);
  v1 = sub_10000C4AC(v0, qword_10097B3F0);
  if (qword_1009736E8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0900);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003C448C(uint64_t a1)
{
  v2[123] = v1;
  v2[122] = a1;
  v3 = type metadata accessor for NWEndpoint();
  v2[124] = v3;
  v4 = *(v3 - 8);
  v2[125] = v4;
  v5 = *(v4 + 64) + 15;
  v2[126] = swift_task_alloc();
  v6 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v2[127] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[128] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v2[129] = v8;
  v9 = *(v8 - 8);
  v2[130] = v9;
  v10 = *(v9 + 64) + 15;
  v2[131] = swift_task_alloc();
  v2[132] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v11 = static AirDropActor.shared;
  v2[133] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003C4624, v11, 0);
}

uint64_t sub_1003C4624()
{
  v1 = v0[132];
  Date.init()();
  v2 = swift_task_alloc();
  v0[134] = v2;
  *v2 = v0;
  v2[1] = sub_1003C46C4;
  v3 = v0[123];

  return sub_1003C657C((v0 + 2));
}

uint64_t sub_1003C46C4()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 1072);
  v5 = *v1;
  v3[135] = v0;
  v25 = *(v3 + 4);
  v26 = *(v3 + 2);
  v22 = *(v3 + 3);
  v23 = *(v3 + 1);
  v24 = *(v3 + 6);
  v21 = *(v3 + 5);
  v20 = v2[14];
  v6 = v2[15];
  v7 = v2[16];
  v8 = *(v3 + 136);
  v9 = v2[18];
  v10 = v2[19];
  v11 = *(v3 + 160);
  v12 = v2[21];
  v3[136] = v12;

  v13 = v3[133];
  if (v0)
  {
    v14 = sub_1003C64D0;
  }

  else
  {
    *(v3 + 21) = v23;
    *(v3 + 22) = v26;
    *(v3 + 23) = v22;
    *(v3 + 24) = v25;
    *(v3 + 25) = v21;
    *(v3 + 26) = v24;
    v3[54] = v20;
    v3[55] = v6;
    v3[56] = v7;
    *(v3 + 456) = v8;
    v3[58] = v9;
    v3[59] = v10;
    *(v3 + 480) = v11;
    v3[61] = v12;
    *(v3 + 800) = v11;
    v15 = *(v3 + 28);
    *(v3 + 47) = *(v3 + 27);
    *(v3 + 48) = v15;
    *(v3 + 49) = *(v3 + 29);
    v16 = *(v3 + 24);
    *(v3 + 43) = *(v3 + 23);
    *(v3 + 44) = v16;
    v17 = *(v3 + 26);
    *(v3 + 45) = *(v3 + 25);
    *(v3 + 46) = v17;
    v18 = *(v3 + 22);
    *(v3 + 41) = *(v3 + 21);
    *(v3 + 42) = v18;
    v14 = sub_1003C490C;
  }

  return _swift_task_switch(v14, v13, 0);
}

uint64_t sub_1003C490C()
{
  v64 = v0;
  v1 = *(v0 + 1088);
  v2 = *(v0 + 448);
  *(v0 + 272) = *(v0 + 432);
  *(v0 + 288) = v2;
  *(v0 + 304) = *(v0 + 464);
  *(v0 + 320) = *(v0 + 480);
  v3 = *(v0 + 384);
  *(v0 + 208) = *(v0 + 368);
  *(v0 + 224) = v3;
  v4 = *(v0 + 416);
  *(v0 + 240) = *(v0 + 400);
  *(v0 + 256) = v4;
  v5 = *(v0 + 352);
  *(v0 + 176) = *(v0 + 336);
  *(v0 + 192) = v5;
  *(v0 + 328) = v1;
  v6 = sub_10062E930();
  *(v0 + 1096) = v6;
  if (v6)
  {
    v7 = *(v0 + 1088);
    v8 = v6;
    v62 = v6;
    v61 = sub_1006373F8(v8);
    v10 = v9;
    *(v0 + 1104) = v9;
    sub_10000FF90(v0 + 176, v0 + 496, &unk_10097B4A0, &qword_1007FE898);

    if (qword_1009737A8 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 1056);
    v12 = *(v0 + 1048);
    v13 = *(v0 + 1040);
    v14 = *(v0 + 1032);
    v15 = *(v0 + 984);
    v16 = type metadata accessor for Logger();
    *(v0 + 1112) = sub_10000C4AC(v16, qword_10097B3F0);
    (*(v13 + 16))(v12, v11, v14);
    sub_1003CB81C(v0 + 336, v0 + 808);
    v17 = v15;

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    sub_1003CB878(v0 + 336);

    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 1048);
    v22 = *(v0 + 1040);
    v23 = *(v0 + 1032);
    if (v20)
    {
      v24 = *(v0 + 984);
      v25 = swift_slowAlloc();
      v63[0] = swift_slowAlloc();
      *v25 = 134218754;
      Date.timeIntervalSinceNow.getter();
      v27 = v26;
      (*(v22 + 8))(v21, v23);
      *(v25 + 4) = -v27;
      *(v25 + 12) = 2080;
      v28 = sub_1004226C0();
      v30 = sub_10000C4E4(v28, v29, v63);

      *(v25 + 14) = v30;
      *(v25 + 22) = 2080;
      v31 = NWEndpoint.debugDescription.getter();
      v33 = sub_10000C4E4(v31, v32, v63);

      *(v25 + 24) = v33;
      *(v25 + 32) = 2080;
      *(v25 + 34) = sub_10000C4E4(v61, v10, v63);
      _os_log_impl(&_mh_execute_header, v18, v19, "Got DISCOVER response - %fs - %s for endpoint %s - cert digest %s", v25, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      (*(v22 + 8))(v21, v23);
    }

    v49 = *(v0 + 984);
    v50 = *(v49 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_deviceStatus);
    *(v0 + 1120) = v50;
    v51 = type metadata accessor for SDAirDropBonjourContactFetcher();
    v52 = swift_allocObject();
    v53 = v62;
    swift_defaultActor_initialize();
    *(v52 + 112) = v50;
    *(v52 + 120) = v53;
    *(v0 + 960) = v52;
    *(v0 + 968) = v51;
    v54 = v50;
    *(v0 + 1128) = objc_msgSendSuper2((v0 + 960), "init");
    v55 = *(v0 + 368);
    v56 = *(v0 + 376);
    *(v0 + 1136) = v55;
    *(v0 + 1144) = v56;
    v57 = v49 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_serviceName;
    v58 = *(v49 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_serviceName);
    *(v0 + 1152) = v58;
    v59 = *(v57 + 8);
    *(v0 + 1160) = v59;
    v60 = swift_task_alloc();
    *(v0 + 1168) = v60;
    *v60 = v0;
    v60[1] = sub_1003C4F20;

    return sub_1005E9764(v55, v56, v58, v59);
  }

  else
  {
    if (qword_1009737A8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000C4AC(v34, qword_10097B3F0);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Missing SecTrust dropping", v37, 2u);
    }

    v38 = *(v0 + 1056);
    v39 = *(v0 + 1040);
    v40 = *(v0 + 1032);

    v41 = type metadata accessor for SFAirDropSend.Failure();
    sub_1003CD52C(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
    swift_allocError();
    (*(*(v41 - 8) + 104))(v42, enum case for SFAirDropSend.Failure.badRequest(_:), v41);
    swift_willThrow();
    sub_100005508(v0 + 176, &unk_10097B4A0, &qword_1007FE898);
    (*(v39 + 8))(v38, v40);
    v43 = *(v0 + 1056);
    v44 = *(v0 + 1048);
    v45 = *(v0 + 1024);
    v46 = *(v0 + 1008);

    v47 = *(v0 + 8);

    return v47();
  }
}

uint64_t sub_1003C4F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(*v4 + 1168);
  v7 = *(*v4 + 1064);
  v9 = *v4;
  v5[147] = a1;
  v5[148] = a2;
  v5[149] = a3;
  v5[150] = a4;

  return _swift_task_switch(sub_1003C5044, v7, 0);
}

uint64_t sub_1003C5044()
{
  v144 = v0;
  v1 = *(v0 + 1144);
  v2 = v1 >> 60;
  if (v1 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v4 = *(v0 + 1136);
    sub_100294008(v4, *(v0 + 1144));
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10028BCC0(v4, v1);
  }

  v5 = *(v0 + 1160);
  v6 = *(v0 + 1152);
  v7 = *(v0 + 1096);
  v8 = String._bridgeToObjectiveC()();
  v9 = sub_100092290(isa, v7, v8);

  if (v9)
  {
    v10 = *(v0 + 1120);
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v142 = sub_10046A7CC();
  }

  else
  {
    v142 = 0;
    v11 = 0;
    v13 = 0;
  }

  *(v0 + 1216) = v13;
  *(v0 + 1208) = v11;
  v14 = *(v0 + 1184);
  v141 = v13;
  v140 = v11;
  if (v14)
  {
    v15 = *(v0 + 1120);

    v16 = [v15 meCard];
    if (v16)
    {
      v17 = v16;
      v18 = *(v0 + 1184);
      v19 = *(v0 + 1176);
      v20 = [v16 identifier];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      if (v19 == v21 && v18 == v23)
      {
        v24 = 1;
      }

      else
      {
        v26 = *(v0 + 1176);
        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v25 = v142;
    }

    else
    {
      v24 = 0;
      v25 = v142;
    }
  }

  else
  {
    v24 = 0;
    v25 = v142;
  }

  v126 = v14;
  if (v2 <= 0xE)
  {
    v29 = *(v0 + 1144);
    v30 = *(v0 + 1136);
    v31 = *(v0 + 1120);
    v32 = *(v0 + 1104);
    v33 = *(v0 + 1096);
    sub_100294008(v30, v29);

    sub_10046A92C(v30, v29, v33);
    v28 = v34;
    sub_10028BCC0(v30, v29);
  }

  else
  {
    v27 = *(v0 + 1104);

    v28 = 0;
  }

  v35 = *(v0 + 1112);
  v36 = *(v0 + 984);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = *(v0 + 1160);
    v40 = *(v0 + 1152);
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v143 = v42;
    *v41 = 136315906;
    *(v41 + 4) = sub_10000C4E4(v40, v39, &v143);
    *(v41 + 12) = 1024;
    *(v41 + 14) = v24 & 1;
    *(v41 + 18) = 1024;
    *(v41 + 20) = v25 & 1;
    *(v41 + 24) = 1024;
    *(v41 + 26) = v28 & 1;
    _os_log_impl(&_mh_execute_header, v37, v38, "%s - isContactIDMe: %{BOOL}d isSameAccount: %{BOOL}d isPeerBlocked: %{BOOL}d", v41, 0x1Eu);
    sub_10000C60C(v42);
  }

  v43 = *(v0 + 984);
  (*(*(v0 + 1000) + 16))(*(v0 + 1008), v43 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_endpoint, *(v0 + 992));
  v138 = *(v43 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_deviceSupportFlags);
  if (v25 & 1 | ((v24 & 1) == 0))
  {
    v136 = *(v0 + 440);
    v137 = *(v0 + 432);

    v139 = v28;
    if ((v25 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_27:
    v45 = *(v0 + 392);
    v132 = *(v0 + 384);
    v129 = *(v0 + 352);
    v130 = *(v0 + 360);

    v133 = 0;
    v134 = 0;
    v135 = 0;
    v131 = 0;
    v128 = v45;
    goto LABEL_29;
  }

  v136 = 0;
  v137 = 0;
  v139 = v28;
  if (v25)
  {
    goto LABEL_27;
  }

LABEL_24:
  v44 = *(v0 + 360);
  v129 = *(v0 + 352);
  if (v24)
  {
    v133 = 0;
    v134 = 0;
    v135 = 0;
    v131 = 0;
    v132 = 0;
    v128 = 0;
    v130 = *(v0 + 360);
  }

  else
  {
    v46 = *(v0 + 360);
    v47 = *(v0 + 1184);
    v135 = *(v0 + 1200);

    v134 = v47;

    v128 = 0;
    v132 = 0;
    v133 = *(v0 + 1192);
    v130 = v46;
    v131 = *(v0 + 1176);
  }

LABEL_29:
  v48 = *(v0 + 1160);
  v49 = *(v0 + 1024);
  v50 = *(v0 + 1016);
  v51 = *(v0 + 1008);
  v52 = *(v0 + 1000);
  v53 = *(v0 + 992);
  v127 = (*(v0 + 480) == 2) | *(v0 + 480);
  v55 = *(v0 + 336);
  v54 = *(v0 + 344);
  *v49 = *(v0 + 1152);
  *(v49 + 1) = v48;
  v56 = v50[5];
  v57 = *(v52 + 32);

  v57(&v49[v56], v51, v53);
  v58 = &v49[v50[6]];
  *v58 = v138;
  v58[8] = 0;
  v59 = &v49[v50[7]];
  *v59 = v137;
  *(v59 + 1) = v136;
  v60 = &v49[v50[8]];
  *v60 = v132;
  *(v60 + 1) = v128;
  v61 = &v49[v50[9]];
  *v61 = v129;
  *(v61 + 1) = v130;
  v62 = &v49[v50[10]];
  *v62 = v140;
  v62[1] = v141;
  v63 = &v49[v50[11]];
  *v63 = v131;
  *(v63 + 1) = v134;
  v64 = &v49[v50[12]];
  *v64 = v133;
  *(v64 + 1) = v135;
  v49[v50[13]] = v142 & 1;
  v65 = &v49[v50[14]];
  *v65 = v55;
  v65[1] = v54;
  v49[v50[15]] = v127 & 1;
  v49[v50[16]] = 1;
  if (v139)
  {
    v66 = *(v0 + 1200);
    v67 = *(v0 + 1184);
    v68 = *(v0 + 1160);
    v69 = *(v0 + 1112);

    sub_1002A9924(v55, v54);

    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v70, v71, "Peer is blocked", v72, 2u);
    }

    v73 = *(v0 + 1128);
    v74 = *(v0 + 1096);
    v75 = *(v0 + 1056);
    v76 = *(v0 + 1040);
    v77 = *(v0 + 1032);
    v78 = *(v0 + 1024);

    v79 = type metadata accessor for SFAirDropSend.Failure();
    sub_1003CD52C(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
    swift_allocError();
    (*(*(v79 - 8) + 104))(v80, enum case for SFAirDropSend.Failure.receiverDeclined(_:), v79);
    swift_willThrow();

    sub_1003CB878(v0 + 336);
    sub_100005508(v0 + 176, &unk_10097B4A0, &qword_1007FE898);

    sub_1003CCA70(v78, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    (*(v76 + 8))(v75, v77);
    v81 = *(v0 + 1056);
    v82 = *(v0 + 1048);
    v83 = *(v0 + 1024);
    v84 = *(v0 + 1008);

    v85 = *(v0 + 8);
LABEL_53:

    return v85();
  }

  if (v142)
  {
    v86 = *(v0 + 1200);
    v87 = *(v0 + 1184);
    v88 = *(v0 + 1160);
    v89 = *(v0 + 1112);

    sub_1002A9924(v55, v54);

    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&_mh_execute_header, v90, v91, "Same account send detected - skipping IDENTITY-SHARE", v92, 2u);
    }

    v93 = *(v0 + 1112);

    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.default.getter();
    v96 = os_log_type_enabled(v94, v95);
    v97 = *(v0 + 1128);
    v98 = *(v0 + 1096);
    if (v96)
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&_mh_execute_header, v94, v95, "Finished DISCOVER", v99, 2u);

      sub_1003CB878(v0 + 336);
      sub_100005508(v0 + 176, &unk_10097B4A0, &qword_1007FE898);
      v94 = v98;
    }

    else
    {

      sub_100005508(v0 + 176, &unk_10097B4A0, &qword_1007FE898);
      sub_1003CB878(v0 + 336);
    }

    v122 = *(v0 + 1048);
    v123 = *(v0 + 1024);
    v124 = *(v0 + 1008);
    v125 = *(v0 + 976);
    (*(*(v0 + 1040) + 8))(*(v0 + 1056), *(v0 + 1032));
    sub_1003CC878(v123, v125, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    type metadata accessor for SDAirDropDiscoveredEndpoint(0);
    swift_storeEnumTagMultiPayload();

    v85 = *(v0 + 8);
    goto LABEL_53;
  }

  if (v126 && *(v0 + 408) >> 60 != 15 && (v138 & 0x2000) != 0)
  {
    v100 = *(v0 + 1184);
    v101 = *(v0 + 1160);

    sub_1002A9924(v55, v54);

    v102 = swift_task_alloc();
    *(v0 + 1224) = v102;
    *v102 = v0;
    v102[1] = sub_1003C5C18;
    v103 = *(v0 + 984);

    return sub_1003CB8CC();
  }

  else
  {
    v105 = *(v0 + 1160);
    v106 = *(v0 + 1112);

    sub_1002A9924(v55, v54);

    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      *v109 = 0;
      _os_log_impl(&_mh_execute_header, v107, v108, "No receiver deviceIRKData or contactID or unsupported client - skipping IDENTITY-SHARE", v109, 2u);
    }

    v110 = *(v0 + 1112);

    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      *v113 = 0;
      _os_log_impl(&_mh_execute_header, v111, v112, "Finished DISCOVER", v113, 2u);
    }

    v114 = *(v0 + 448);
    v115 = *(v0 + 456);
    v116 = *(v0 + 464);
    v117 = *(v0 + 472);
    v118 = swift_task_alloc();
    *(v0 + 1248) = v118;
    *v118 = v0;
    v118[1] = sub_1003C6240;
    v119 = *(v0 + 1184);
    v120 = *(v0 + 1176);
    v121 = *(v0 + 984);
    v146 = v116;
    v147 = v117;

    return sub_1003C72DC(v0 + 656, v140, v141, v120, v119, 0, v114, v115);
  }
}

uint64_t sub_1003C5C18()
{
  v2 = *(*v1 + 1224);
  v3 = *v1;
  *(v3 + 1232) = v0;

  if (v0)
  {
    v4 = *(v3 + 1216);
    v5 = *(v3 + 1200);
    v6 = *(v3 + 1184);
    v7 = *(v3 + 1064);

    swift_bridgeObjectRelease_n();

    return _swift_task_switch(sub_1003C6134, v7, 0);
  }

  else
  {
    v8 = *(v3 + 1184);

    v9 = *(v3 + 448);
    v10 = *(v3 + 456);
    v11 = *(v3 + 464);
    v12 = *(v3 + 472);
    v13 = swift_task_alloc();
    *(v3 + 1240) = v13;
    *v13 = v3;
    v13[1] = sub_1003C5E04;
    v14 = *(v3 + 1216);
    v15 = *(v3 + 1208);
    v16 = *(v3 + 1184);
    v17 = *(v3 + 1176);
    v18 = *(v3 + 984);

    return sub_1003C72DC(v3 + 656, v15, v14, v17, v16, 0, v9, v10);
  }
}

uint64_t sub_1003C5E04()
{
  v1 = *(*v0 + 1240);
  v2 = *(*v0 + 1216);
  v3 = *(*v0 + 1200);
  v4 = *(*v0 + 1184);
  v5 = *(*v0 + 1064);
  v7 = *v0;

  return _swift_task_switch(sub_1003C5F70, v5, 0);
}

uint64_t sub_1003C5F70()
{
  v1 = v0[139];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[141];
  v6 = v0[137];
  if (v4)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finished DISCOVER and IDENTITY-SHARE", v7, 2u);

    sub_1003CB878((v0 + 42));
    sub_100005508((v0 + 22), &unk_10097B4A0, &qword_1007FE898);
    v2 = v6;
  }

  else
  {

    sub_100005508((v0 + 22), &unk_10097B4A0, &qword_1007FE898);
    sub_1003CB878((v0 + 42));
  }

  v8 = v0[131];
  v9 = v0[128];
  v10 = v0[126];
  v11 = v0[122];
  (*(v0[130] + 8))(v0[132], v0[129]);
  sub_1003CC878(v9, v11, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
  type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  swift_storeEnumTagMultiPayload();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1003C6134()
{
  v1 = *(v0 + 1096);
  v2 = *(v0 + 1056);
  v3 = *(v0 + 1040);
  v4 = *(v0 + 1032);
  v5 = *(v0 + 1024);

  sub_1003CB878(v0 + 336);
  sub_100005508(v0 + 176, &unk_10097B4A0, &qword_1007FE898);

  sub_1003CCA70(v5, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
  (*(v3 + 8))(v2, v4);
  v6 = *(v0 + 1232);
  v7 = *(v0 + 1056);
  v8 = *(v0 + 1048);
  v9 = *(v0 + 1024);
  v10 = *(v0 + 1008);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1003C6240()
{
  v1 = *(*v0 + 1248);
  v2 = *(*v0 + 1216);
  v3 = *(*v0 + 1200);
  v4 = *(*v0 + 1184);
  v5 = *(*v0 + 1064);
  v7 = *v0;

  return _swift_task_switch(sub_1003C63AC, v5, 0);
}

uint64_t sub_1003C63AC()
{
  v1 = *(v0 + 1096);

  sub_1003CB878(v0 + 336);
  sub_100005508(v0 + 176, &unk_10097B4A0, &qword_1007FE898);

  v2 = *(v0 + 1048);
  v3 = *(v0 + 1024);
  v4 = *(v0 + 1008);
  v5 = *(v0 + 976);
  (*(*(v0 + 1040) + 8))(*(v0 + 1056), *(v0 + 1032));
  sub_1003CC878(v3, v5, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
  type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  swift_storeEnumTagMultiPayload();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1003C64D0()
{
  (*(v0[130] + 8))(v0[132], v0[129]);
  v1 = v0[135];
  v2 = v0[132];
  v3 = v0[131];
  v4 = v0[128];
  v5 = v0[126];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1003C657C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for SDAirDropMessage();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v2[10] = *(v5 + 64);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v2[13] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003C66C4, v6, 0);
}

uint64_t sub_1003C66C4()
{
  v15 = v0;
  if (qword_1009737A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097B3F0);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 48);
    v7 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = NWEndpoint.debugDescription.getter();
    v10 = sub_10000C4E4(v8, v9, &v14);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_10000C4E4(*(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_tlsCertDigestDescription), *(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_tlsCertDigestDescription + 8), &v14);
    _os_log_impl(&_mh_execute_header, v4, v5, "Sending DISCOVER request %s - cert digest %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  *v11 = v0;
  v11[1] = sub_1003C68C8;
  v12 = *(v0 + 48);

  return sub_1003C7D78();
}

uint64_t sub_1003C68C8(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 120) = a1;

  return _swift_task_switch(sub_1003C69E0, v3, 0);
}

uint64_t sub_1003C69E0()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  v23 = v0[9];
  v24 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  v7 = *&v6[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_discoverConnection];
  *&v6[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_discoverConnection] = v1;

  v8 = *&v6[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_deviceStatus];
  v9 = sub_10046AB74();
  v0[16] = v9;
  v0[17] = v10;
  if (v10 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  if (v10 >> 60 == 15)
  {
    v12 = 0xC000000000000000;
  }

  else
  {
    v12 = v10;
  }

  if (sub_10002A73C())
  {
    v13 = 62459;
  }

  else
  {
    v13 = 46075;
  }

  sub_100294008(v11, v12);
  sub_10028BCC0(0, 0xF000000000000000);
  sub_1002A9924(v11, v12);
  sub_10028BCC0(v11, v12);
  *v3 = v11;
  *(v3 + 8) = v12;
  *(v3 + 16) = v13;
  *(v3 + 24) = 0;
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_1003CC814(v3, v2);
  v15 = (*(v23 + 80) + 24) & ~*(v23 + 80);
  v16 = swift_allocObject();
  v0[18] = v16;
  *(v16 + 16) = v1;
  sub_1003CC878(v2, v16 + v15, type metadata accessor for SDAirDropMessage);
  v17 = swift_allocObject();
  v0[19] = v17;
  *(v17 + 16) = v6;
  *(v17 + 24) = v1;
  v18 = async function pointer to concurrentRace<A>(priority:operation:against:)[1];
  swift_retain_n();
  v19 = v6;
  v20 = swift_task_alloc();
  v0[20] = v20;
  *v20 = v0;
  v20[1] = sub_1003C6C68;
  v21 = v0[7];

  return concurrentRace<A>(priority:operation:against:)(v0 + 2, v21, &unk_1007FE940, v16, &unk_1007FE950, v17, &type metadata for SDNWHTTPResponse);
}

uint64_t sub_1003C6C68()
{
  v2 = *v1;
  v3 = (*v1)[20];
  v4 = *v1;
  (*v1)[21] = v0;

  v5 = v2[19];
  v6 = v2[18];
  v7 = v2[13];
  sub_100005508(v2[7], &qword_100976160, &qword_1007F8770);

  if (v0)
  {
    v8 = sub_1003C71E4;
  }

  else
  {
    v8 = sub_1003C6E00;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1003C6E00()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  if (v1 >= 3)
  {
    if (v1 == 9)
    {
      v5 = type metadata accessor for SFAirDropSend.Failure();
      sub_1003CD52C(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
      swift_allocError();
      v7 = v17;
      v8 = &enum case for SFAirDropSend.Failure.unsupportedConnection(_:);
    }

    else if (v1 == 4)
    {
      v5 = type metadata accessor for SFAirDropSend.Failure();
      sub_1003CD52C(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
      swift_allocError();
      v7 = v6;
      v8 = &enum case for SFAirDropSend.Failure.receiverDeclined(_:);
    }

    else
    {
      v5 = type metadata accessor for SFAirDropSend.Failure();
      sub_1003CD52C(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
      swift_allocError();
      v7 = v18;
      v8 = &enum case for SFAirDropSend.Failure.badRequest(_:);
    }

    (*(*(v5 - 8) + 104))(v7, *v8, v5);
    swift_willThrow();
  }

  else
  {
    v4 = *(v0 + 168);
    sub_100294008(*(v0 + 24), *(v0 + 32));
    sub_100675EE8();
    if (!v4)
    {
      v9 = *(v0 + 136);
      v10 = *(v0 + 120);
      v11 = *(v0 + 88);
      v12 = *(v0 + 96);
      v27 = *(v0 + 56);
      v13 = *(v0 + 40);
      if (v9 >> 60 == 15)
      {
        v14 = 0;
      }

      else
      {
        v14 = *(v0 + 128);
      }

      if (v9 >> 60 == 15)
      {
        v15 = 0xC000000000000000;
      }

      else
      {
        v15 = *(v0 + 136);
      }

      sub_100026AC0(v3, v2);
      NWConnection.forceCancel()();
      sub_100026AC0(v3, v2);
      sub_100026AC0(v14, v15);
      sub_1003CCA70(v12, type metadata accessor for SDAirDropMessage);

      *v13 = v28;
      *(v13 + 16) = v29;
      *(v13 + 32) = v30;
      *(v13 + 48) = v31;
      *(v13 + 64) = v32;
      *(v13 + 80) = v33;
      *(v13 + 96) = v34;
      *(v13 + 112) = v35;
      *(v13 + 120) = v36 & 1;
      *(v13 + 128) = v37;
      *(v13 + 136) = v38;
      *(v13 + 144) = v39;
      *(v13 + 152) = v10;
      v16 = *(v0 + 8);
      goto LABEL_24;
    }

    sub_100026AC0(v3, v2);
  }

  sub_100026AC0(v3, v2);
  v19 = *(v0 + 136);
  v20 = *(v0 + 120);
  v22 = *(v0 + 88);
  v21 = *(v0 + 96);
  v23 = *(v0 + 56);
  if (v19 >> 60 == 15)
  {
    v24 = 0;
  }

  else
  {
    v24 = *(v0 + 128);
  }

  if (v19 >> 60 == 15)
  {
    v25 = 0xC000000000000000;
  }

  else
  {
    v25 = *(v0 + 136);
  }

  NWConnection.forceCancel()();
  swift_willThrow();
  sub_100026AC0(v24, v25);

  sub_1003CCA70(v21, type metadata accessor for SDAirDropMessage);

  v16 = *(v0 + 8);
LABEL_24:

  return v16();
}

uint64_t sub_1003C71E4()
{
  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[15];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[7];
  if (v2 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = v0[16];
  }

  if (v2 >> 60 == 15)
  {
    v8 = 0xC000000000000000;
  }

  else
  {
    v8 = v0[17];
  }

  NWConnection.forceCancel()();
  swift_willThrow();
  sub_100026AC0(v7, v8);

  sub_1003CCA70(v4, type metadata accessor for SDAirDropMessage);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1003C72DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v9 + 232) = v14;
  *(v9 + 240) = v8;
  *(v9 + 216) = a7;
  *(v9 + 224) = v13;
  *(v9 + 273) = a8;
  *(v9 + 272) = a6;
  *(v9 + 200) = a4;
  *(v9 + 208) = a5;
  *(v9 + 184) = a2;
  *(v9 + 192) = a3;
  *(v9 + 176) = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v10 = static AirDropActor.shared;
  *(v9 + 248) = static AirDropActor.shared;

  return _swift_task_switch(sub_1003C739C, v10, 0);
}

uint64_t sub_1003C739C()
{
  if (*(v0 + 272))
  {
    if (qword_1009737A8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C4AC(v1, qword_10097B3F0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_16;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "SameAccount device detected, skipping identity update";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v2, v3, v5, v4, 2u);

LABEL_16:

    v10 = *(v0 + 8);

    return v10();
  }

  if (!*(v0 + 192) || (v6 = *(v0 + 176), !*(v6 + 104)) || !*(v0 + 208) || (v7 = *(v6 + 96), *(v0 + 144) = *(v6 + 64), *(v0 + 152) >> 60 == 15) || (v8 = *(v0 + 144), *(v0 + 160) = *(v6 + 80), *(v0 + 168) >> 60 == 15))
  {
    if (qword_1009737A8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_10097B3F0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_16;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Missing data for identity update, skipping";
    goto LABEL_15;
  }

  v30 = *(v0 + 232);
  v27 = *(v0 + 184);
  v28 = *(v0 + 200);
  v29 = *(v0 + 160);
  if (*(v0 + 273))
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v0 + 216);
  }

  v31 = v12;
  v13 = objc_allocWithZone(RPIdentity);
  sub_10000FF90(v0 + 144, v0 + 80, &qword_100974E10, &qword_1007FC4C0);
  sub_10000FF90(v0 + 160, v0 + 80, &qword_100974E10, &qword_1007FC4C0);
  v14 = [v13 init];
  *(v0 + 256) = v14;
  [v14 setType:6];
  v15 = String._bridgeToObjectiveC()();
  [v14 setAccountID:v15];

  v16 = String._bridgeToObjectiveC()();
  [v14 setContactID:v16];

  isa = Data._bridgeToObjectiveC()().super.isa;
  [v14 setDeviceIRKData:isa];

  v18 = Data._bridgeToObjectiveC()().super.isa;
  [v14 setEdPKData:v18];

  v19 = String._bridgeToObjectiveC()();
  [v14 setIdsDeviceID:v19];

  if (v30)
  {
    v20 = *(v0 + 224);
    v21 = *(v0 + 232);
    v22 = String._bridgeToObjectiveC()();
  }

  else
  {
    v22 = 0;
  }

  [v14 setSendersKnownAlias:v22];

  if (v31)
  {
    [v14 setFeatureFlags:?];
  }

  v23 = *(v0 + 240);
  v24 = objc_opt_self();
  v25 = *(v23 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_rpClient);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1003C7880;
  v26 = swift_continuation_init();
  *(v0 + 136) = sub_10028088C(&qword_10097B520, &qword_1007FCC20);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100638A98;
  *(v0 + 104) = &unk_1008DE630;
  *(v0 + 112) = v26;
  [v24 addOrUpdateIdentityWithClient:v25 identity:v14 completion:?];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1003C7880()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 264) = v3;
  v4 = *(v1 + 248);
  if (v3)
  {
    v5 = sub_1003C7B5C;
  }

  else
  {
    v5 = sub_1003C79A0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1003C79A0()
{
  v14 = v0;
  if (qword_1009737A8 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097B3F0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[32];
  if (v5)
  {
    v8 = v0[25];
    v7 = v0[26];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10000C4E4(v8, v7, &v13);
    _os_log_impl(&_mh_execute_header, v3, v4, "Added/updated identity for contact %s", v9, 0xCu);
    sub_10000C60C(v10);
  }

  sub_100005508((v0 + 18), &qword_100974E10, &qword_1007FC4C0);

  sub_100005508((v0 + 20), &qword_100974E10, &qword_1007FC4C0);
  v11 = v0[1];

  return v11();
}

uint64_t sub_1003C7B5C()
{
  v1 = v0[33];
  swift_willThrow();
  if (qword_1009737A8 != -1)
  {
    swift_once();
  }

  v2 = v0[33];
  v3 = type metadata accessor for Logger();
  sub_10000C4AC(v3, qword_10097B3F0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[32];
  v7 = v0[33];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Identity update failed %@", v9, 0xCu);
    sub_100005508(v10, &qword_100975400, &qword_1007F65D0);

    sub_100005508((v0 + 18), &qword_100974E10, &qword_1007FC4C0);

    sub_100005508((v0 + 20), &qword_100974E10, &qword_1007FC4C0);
  }

  else
  {
    sub_100005508((v0 + 18), &qword_100974E10, &qword_1007FC4C0);

    sub_100005508((v0 + 20), &qword_100974E10, &qword_1007FC4C0);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1003C7D78()
{
  v1[14] = v0;
  v2 = type metadata accessor for NWInterface.InterfaceSubtype();
  v1[15] = v2;
  v3 = *(v2 - 8);
  v1[16] = v3;
  v4 = *(v3 + 64) + 15;
  v1[17] = swift_task_alloc();
  v5 = type metadata accessor for NWEndpoint();
  v1[18] = v5;
  v6 = *(v5 - 8);
  v1[19] = v6;
  v7 = *(v6 + 64) + 15;
  v1[20] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v1[21] = v8;
  v9 = *(v8 - 8);
  v1[22] = v9;
  v10 = *(v9 + 64) + 15;
  v1[23] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v11 = static AirDropActor.shared;

  return _swift_task_switch(sub_1003C7F28, v11, 0);
}

uint64_t sub_1003C7F28()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v6 = v0[19];
  v35 = v0[17];
  v34 = v0[16];
  v7 = v0[14];
  v36 = v0[15];
  UUID.init()();
  UUID.uuidString.getter();
  (*(v2 + 8))(v1, v3);
  v8 = String.utf8CString.getter();

  nw_content_context_create((v8 + 32));

  (*(v6 + 16))(v4, v7 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_endpoint, v5);
  v9 = *(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_browserQueue);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = type metadata accessor for NWProtocolTCP.Options();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();

  NWProtocolTCP.Options.init()();
  dispatch thunk of NWProtocolTCP.Options.enableFastOpen.setter();
  v15 = type metadata accessor for NWProtocolTLS.Options();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  NWProtocolTLS.Options.init()();
  v18 = dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
  sec_protocol_options_set_peer_authentication_required(v18, 0);
  swift_unknownObjectRelease();
  v19 = dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
  v0[6] = sub_1003CCB30;
  v0[7] = v10;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10062FDCC;
  v0[5] = &unk_1008DE2E8;
  v20 = _Block_copy(v0 + 2);
  v21 = v0[7];

  sec_protocol_options_set_verify_block(v19, v20, v9);
  _Block_release(v20);
  swift_unknownObjectRelease();
  v22 = dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
  v0[12] = sub_1003CCB38;
  v0[13] = v11;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_1003CB76C;
  v0[11] = &unk_1008DE310;
  v23 = _Block_copy(v0 + 8);
  v24 = v0[13];

  sec_protocol_options_set_challenge_block(v22, v23, v9);
  _Block_release(v23);
  swift_unknownObjectRelease();
  dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
  sec_protocol_options_set_nw_protocol_joining_context();
  swift_unknownObjectRelease();
  type metadata accessor for NWParameters();

  NWParameters.__allocating_init(tls:tcp:)();
  (*(v34 + 104))(v35, enum case for NWInterface.InterfaceSubtype.wifiAWDL(_:), v36);
  NWParameters.requiredInterfaceSubtype.setter();
  NWParameters.allowLocalEndpointReuse.setter();
  NWParameters.includePeerToPeer.setter();
  NWParameters.preferNoProxies.setter();
  options = nw_http_messaging_create_options();
  nw_http1_set_idle_timeout();
  v26 = NWParameters.nw.getter();
  v27 = nw_parameters_copy_default_protocol_stack(v26);
  swift_unknownObjectRelease();
  nw_protocol_stack_prepend_application_protocol(v27, options);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  NWParameters.nw.getter();
  nw_parameters_set_server_mode();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v28 = type metadata accessor for NWConnection();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = NWConnection.init(to:using:)();
  NWConnection.start(queue:)();
  swift_unknownObjectRelease();

  v32 = v0[1];

  return v32(v31);
}

uint64_t sub_1003C83EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v20 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v15 = qword_1009735E0;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = static AirDropActor.shared;
  v17 = sub_1003CD52C(&qword_100977C00, type metadata accessor for AirDropActor);
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = v17;
  v18[4] = v13;
  v18[5] = a1;
  v18[6] = a2;
  v18[7] = a3;
  v18[8] = a4;

  sub_1002B3398(0, 0, v11, &unk_1007FE920, v18);
}

uint64_t sub_1003C8610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a1;
  v8[6] = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v9 = static AirDropActor.shared;
  v8[11] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003C86B8, v9, 0);
}

uint64_t sub_1003C86B8()
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
    v3[1] = sub_1003C87B8;
    v4 = *(v0 + 72);
    v5 = *(v0 + 80);
    v7 = *(v0 + 56);
    v6 = *(v0 + 64);

    return sub_1003C8908(v7, v6, v4, v5);
  }

  else
  {
    **(v0 + 40) = 1;
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1003C87B8()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v5 = *v0;

  return _swift_task_switch(sub_1003C88E0, v3, 0);
}

uint64_t sub_1003C8908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[40] = a4;
  v5[41] = v4;
  v5[38] = a2;
  v5[39] = a3;
  v5[37] = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v5[42] = v6;
  v7 = *(v6 - 8);
  v5[43] = v7;
  v8 = *(v7 + 64) + 15;
  v5[44] = swift_task_alloc();
  v9 = type metadata accessor for DispatchQoS();
  v5[45] = v9;
  v10 = *(v9 - 8);
  v5[46] = v10;
  v11 = *(v10 + 64) + 15;
  v5[47] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v12 = static AirDropActor.shared;
  v5[48] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003C8A68, v12, 0);
}

uint64_t sub_1003C8A68()
{
  v1 = *(v0 + 328);
  negotiated_tls_protocol_version = sec_protocol_metadata_get_negotiated_tls_protocol_version(*(v0 + 296));
  if ((*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_deviceSupportFlags + 1) & 0x10) != 0 && negotiated_tls_protocol_version != 772)
  {
    if (qword_1009737A8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_10097B3F0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Rejecting TLS downgrade", v6, 2u);
    }

    v8 = *(v0 + 368);
    v7 = *(v0 + 376);
    v9 = *(v0 + 352);
    v53 = *(v0 + 360);
    v10 = *(v0 + 336);
    v11 = *(v0 + 344);
    v12 = *(v0 + 320);
    v13 = *(v0 + 328);
    v14 = *(v0 + 312);

    v51 = *(v13 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_browserQueue);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = v12;
    *(v0 + 248) = v15;
    v16 = (v0 + 248);
    *(v0 + 240) = sub_100375A3C;
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_100011678;
    *(v0 + 232) = &unk_1008DE608;
    v17 = _Block_copy((v0 + 208));

    static DispatchQoS.unspecified.getter();
    *(v0 + 288) = _swiftEmptyArrayStorage;
    sub_1003CD52C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100013EB8();
LABEL_8:
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);
    (*(v11 + 8))(v9, v10);
    (*(v8 + 8))(v7, v53);
LABEL_13:
    v33 = *v16;

    v34 = *(v0 + 376);
    v35 = *(v0 + 352);

    v36 = *(v0 + 8);

    return v36();
  }

  v18 = *(v0 + 328);
  if (*(v18 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_privacyImprovements) != 1)
  {
    v25 = *(v0 + 368);
    v24 = *(v0 + 376);
    v26 = *(v0 + 352);
    v27 = *(v0 + 336);
    v28 = *(v0 + 344);
    v30 = *(v0 + 312);
    v29 = *(v0 + 320);
    v54 = *(v18 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_browserQueue);
    aBlock = *(v0 + 360);
    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    *(v31 + 24) = v29;
    *(v0 + 56) = v31;
    v16 = (v0 + 56);
    *(v0 + 48) = sub_100375990;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_100011678;
    *(v0 + 40) = &unk_1008DE4C8;
    v32 = _Block_copy((v0 + 16));

    static DispatchQoS.unspecified.getter();
    *(v0 + 256) = _swiftEmptyArrayStorage;
    sub_1003CD52C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100013EB8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v32);
    (*(v28 + 8))(v26, v27);
    (*(v25 + 8))(v24, aBlock);
    goto LABEL_13;
  }

  v19 = sec_trust_copy_ref(*(v0 + 304));
  v20 = sub_10009159C(v19);

  if (v20)
  {
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v38 = sub_100638124(v21, v23);
  v40 = v39;
  *(v0 + 392) = v38;
  *(v0 + 400) = v39;

  if (!v40)
  {
    if (qword_1009737A8 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_10000C4AC(v43, qword_10097B3F0);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Missing altDSID on certificate", v46, 2u);
    }

    v8 = *(v0 + 368);
    v7 = *(v0 + 376);
    v9 = *(v0 + 352);
    v53 = *(v0 + 360);
    v10 = *(v0 + 336);
    v11 = *(v0 + 344);
    v47 = *(v0 + 320);
    v48 = *(v0 + 328);
    v49 = *(v0 + 312);

    v52 = *(v48 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_browserQueue);
    v50 = swift_allocObject();
    *(v50 + 16) = v49;
    *(v50 + 24) = v47;
    *(v0 + 104) = v50;
    v16 = (v0 + 104);
    *(v0 + 96) = sub_100375A04;
    *(v0 + 64) = _NSConcreteStackBlock;
    *(v0 + 72) = 1107296256;
    *(v0 + 80) = sub_100011678;
    *(v0 + 88) = &unk_1008DE518;
    v17 = _Block_copy((v0 + 64));

    static DispatchQoS.unspecified.getter();
    *(v0 + 264) = _swiftEmptyArrayStorage;
    sub_1003CD52C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100013EB8();
    goto LABEL_8;
  }

  v41 = *(*(v0 + 328) + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_idmsService);
  v42 = swift_task_alloc();
  *(v0 + 408) = v42;
  *v42 = v0;
  v42[1] = sub_1003C91DC;

  return sub_100375C30(v38, v40);
}

uint64_t sub_1003C91DC(char a1)
{
  v2 = *(*v1 + 408);
  v3 = *(*v1 + 384);
  v5 = *v1;
  *(*v1 + 416) = a1;

  return _swift_task_switch(sub_1003C92F4, v3, 0);
}

uint64_t sub_1003C92F4()
{
  v50 = v0;
  if (*(v0 + 416) == 1)
  {
    if (qword_1009737A8 != -1)
    {
      swift_once();
    }

    v1 = v0[50];
    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_10097B3F0);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = v0[49];
      v5 = v0[50];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v49 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_10000C4E4(v6, v5, &v49);
      _os_log_impl(&_mh_execute_header, v3, v4, "Matching altDSID found %s - accepting connection", v7, 0xCu);
      sub_10000C60C(v8);
    }

    v10 = v0[46];
    v9 = v0[47];
    v11 = v0[44];
    v46 = v0[45];
    v12 = v0[42];
    v13 = v0[43];
    v14 = v0[40];
    v15 = v0[41];
    v16 = v0[39];
    v17 = *(v15 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_knownAltDSID + 8);
    *(v15 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_knownAltDSID) = *(v0 + 49);

    v45 = *(v15 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_browserQueue);
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = v14;
    v0[25] = v18;
    v19 = v0 + 25;
    v0[24] = sub_1003CDFB0;
    v0[20] = _NSConcreteStackBlock;
    v0[21] = 1107296256;
    v0[22] = sub_100011678;
    v0[23] = &unk_1008DE5B8;
    v20 = _Block_copy(v0 + 20);

    static DispatchQoS.unspecified.getter();
    v0[35] = _swiftEmptyArrayStorage;
    sub_1003CD52C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100013EB8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);
    (*(v13 + 8))(v11, v12);
    (*(v10 + 8))(v9, v46);
  }

  else
  {
    if (qword_1009737A8 != -1)
    {
      swift_once();
    }

    v21 = v0[50];
    v22 = type metadata accessor for Logger();
    sub_10000C4AC(v22, qword_10097B3F0);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[50];
    if (v25)
    {
      v27 = v0[49];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v49 = v29;
      *v28 = 136315138;
      v30 = sub_10000C4E4(v27, v26, &v49);

      *(v28 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "Unknown altDSID on certificate %s", v28, 0xCu);
      sub_10000C60C(v29);
    }

    else
    {
    }

    v32 = v0[46];
    v31 = v0[47];
    v33 = v0[44];
    v34 = v0[42];
    v35 = v0[43];
    v36 = v0[40];
    v37 = v0[39];
    v47 = *(v0[41] + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_browserQueue);
    aBlock = v0[45];
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    *(v38 + 24) = v36;
    v0[19] = v38;
    v19 = v0 + 19;
    v0[18] = sub_100375A3C;
    v0[14] = _NSConcreteStackBlock;
    v0[15] = 1107296256;
    v0[16] = sub_100011678;
    v0[17] = &unk_1008DE568;
    v39 = _Block_copy(v0 + 14);

    static DispatchQoS.unspecified.getter();
    v0[34] = _swiftEmptyArrayStorage;
    sub_1003CD52C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100013EB8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v39);
    (*(v35 + 8))(v33, v34);
    (*(v32 + 8))(v31, aBlock);
  }

  v40 = *v19;

  v41 = v0[47];
  v42 = v0[44];

  v43 = v0[1];

  return v43();
}

uint64_t sub_1003C9904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v13 = qword_1009735E0;

  swift_unknownObjectRetain();

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = static AirDropActor.shared;
  v15 = sub_1003CD52C(&qword_100977C00, type metadata accessor for AirDropActor);
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v15;
  v16[4] = v11;
  v16[5] = a1;
  v16[6] = a2;
  v16[7] = a3;

  sub_1002B3398(0, 0, v9, &unk_1007FE8F8, v16);
}

uint64_t sub_1003C9B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a1;
  v7[6] = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;
  v7[9] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003C9BB4, v8, 0);
}

uint64_t sub_1003C9BB4()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v3[1] = sub_1003C9CB0;
    v5 = *(v0 + 56);
    v4 = *(v0 + 64);

    return sub_1003CCC28(v5, v4);
  }

  else
  {
    **(v0 + 40) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1003C9CB0()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v5 = *v0;

  return _swift_task_switch(sub_1003C9DD8, v3, 0);
}

uint64_t sub_1003C9E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;
  v3[8] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003C9EA4, v4, 0);
}

uint64_t sub_1003C9EA4()
{
  v1 = v0[7];
  v0[9] = sub_100674350();
  v0[10] = sub_1006749CC();
  v0[11] = v2;

  return _swift_task_switch(sub_1003C9F6C, 0, 0);
}

uint64_t sub_1003C9F6C()
{
  v7 = *(v0 + 80);
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v7;
  *(v3 + 40) = v1;
  *(v3 + 48) = 1;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_1003CA088;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000029, 0x800000010078B5E0, sub_1003CDFDC, v3, &type metadata for () + 8);
}

uint64_t sub_1003CA088()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_1003CA3A4;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_1003CA1A4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003CA1A4()
{
  v1 = v0[9];
  sub_100026AC0(v0[10], v0[11]);
  swift_unknownObjectRelease();
  v2 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_1003CA290;
  v4 = v0[6];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000015, 0x800000010078E780, sub_1003CDFE0, v4, &type metadata for SDNWHTTPResponse);
}

uint64_t sub_1003CA290()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1003CA474;
  }

  else
  {
    v3 = sub_1003CA41C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003CA3A4()
{
  v1 = v0[12];
  v2 = v0[9];
  sub_100026AC0(v0[10], v0[11]);
  swift_unknownObjectRelease();

  v3 = v0[14];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1003CA41C()
{
  v1 = *(v0 + 64);
  *(v0 + 152) = *(v0 + 16);
  *(v0 + 136) = *(v0 + 24);
  return _swift_task_switch(sub_1003CA448, v1, 0);
}

uint64_t sub_1003CA448()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 136);
  *v1 = *(v0 + 152);
  *(v1 + 8) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_1003CA48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = type metadata accessor for ContinuousClock();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  v3[7] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003CA588, v7, 0);
}

uint64_t sub_1003CA588()
{
  v1 = *(v0 + 48);
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1003CA654;
  v3 = *(v0 + 48);

  return sub_10002ED10(5000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1003CA654()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 72) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 56);
  if (v0)
  {
    v9 = sub_1003CA99C;
  }

  else
  {
    v9 = sub_1003CA7DC;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1003CA7DC()
{
  v15 = v0;
  if (qword_1009737A8 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097B3F0);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10000C4E4(*(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_serviceName), *(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_serviceName + 8), &v14);
    _os_log_impl(&_mh_execute_header, v4, v5, "DISCOVER request timeout for serviceName %s", v7, 0xCu);
    sub_10000C60C(v8);
  }

  v9 = v0[3];
  NWConnection.forceCancel()();
  sub_1003CCAD0();
  swift_allocError();
  *v10 = 504;
  swift_willThrow();
  v11 = v0[6];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1003CA99C()
{
  v1 = v0[9];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003CAA00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;
  v3[8] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003CAAA4, v4, 0);
}

uint64_t sub_1003CAAA4()
{
  v1 = v0[7];
  v0[9] = sub_100674350();
  v0[10] = sub_1006749CC();
  v0[11] = v2;

  return _swift_task_switch(sub_1003CAB6C, 0, 0);
}

uint64_t sub_1003CAB6C()
{
  v7 = *(v0 + 80);
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v7;
  *(v3 + 40) = v1;
  *(v3 + 48) = 1;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_1003CAC88;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000029, 0x800000010078B5E0, sub_1003CCB24, v3, &type metadata for () + 8);
}

uint64_t sub_1003CAC88()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_1003CDFD8;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_1003CADA4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003CADA4()
{
  v1 = v0[9];
  sub_100026AC0(v0[10], v0[11]);
  swift_unknownObjectRelease();
  v2 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_1003CAE90;
  v4 = v0[6];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000015, 0x800000010078E780, sub_1003CCB28, v4, &type metadata for SDNWHTTPResponse);
}

uint64_t sub_1003CAE90()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1003CDFAC;
  }

  else
  {
    v3 = sub_1003CAFA4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003CAFA4()
{
  v1 = *(v0 + 64);
  *(v0 + 152) = *(v0 + 16);
  *(v0 + 136) = *(v0 + 24);
  return _swift_task_switch(sub_1003CDFE4, v1, 0);
}

uint64_t sub_1003CAFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = type metadata accessor for ContinuousClock();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  v3[7] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003CB0CC, v7, 0);
}

uint64_t sub_1003CB0CC()
{
  v1 = *(v0 + 48);
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1003CB198;
  v3 = *(v0 + 48);

  return sub_10002ED10(5000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1003CB198()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 72) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 56);
  if (v0)
  {
    v9 = sub_1003CDFA8;
  }

  else
  {
    v9 = sub_1003CB320;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1003CB320()
{
  v15 = v0;
  if (qword_1009737A8 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097B3F0);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10000C4E4(*(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_serviceName), *(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_serviceName + 8), &v14);
    _os_log_impl(&_mh_execute_header, v4, v5, "IDENTITY-SHARE request timeout for serviceName %s", v7, 0xCu);
    sub_10000C60C(v8);
  }

  v9 = v0[3];
  NWConnection.forceCancel()();
  sub_1003CCAD0();
  swift_allocError();
  *v10 = 504;
  swift_willThrow();
  v11 = v0[6];

  v12 = v0[1];

  return v12();
}

uint64_t type metadata accessor for SDAirDropBonjourDiscoverConnection()
{
  result = qword_10097B488;
  if (!qword_10097B488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003CB68C()
{
  result = type metadata accessor for NWEndpoint();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1003CB76C(uint64_t a1, int a2, void *aBlock)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = _Block_copy(aBlock);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;

  v7 = swift_unknownObjectRetain();
  v4(v7, sub_1003CCB40, v6);

  return swift_unknownObjectRelease();
}

uint64_t sub_1003CB8CC()
{
  v1[27] = v0;
  v2 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v1[28] = swift_task_alloc();
  v3 = type metadata accessor for SDAirDropMessage();
  v1[29] = v3;
  v4 = *(v3 - 8);
  v1[30] = v4;
  v1[31] = *(v4 + 64);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v1[34] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003CBA14, v5, 0);
}

uint64_t sub_1003CBA14()
{
  v46 = v0;
  v1 = v0[27];
  v2 = [*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_nearbyAgent) idSelfIdentity];
  v0[35] = v2;
  v3 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_deviceStatus);
  v4 = sub_10046AB74();
  v0[36] = v4;
  v0[37] = v5;
  if (v5 >> 60 != 15)
  {
    v6 = v5;
    v7 = v4;
    if (v2)
    {
      v8 = [v2 idsDeviceID];
      if (v8)
      {
        v9 = v8;
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;

        v0[38] = v10;
        v0[39] = v12;
        v13 = [v2 deviceIRKData];
        if (v13)
        {
          v14 = v13;
          v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = v16;

          v0[40] = v15;
          v0[41] = v17;
          v18 = [v2 edPKData];
          if (v18)
          {
            v19 = v18;
            v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v22 = v21;

            v0[42] = v20;
            v0[43] = v22;
            if (qword_1009737A8 != -1)
            {
              swift_once();
            }

            v23 = v0[27];
            v24 = type metadata accessor for Logger();
            sub_10000C4AC(v24, qword_10097B3F0);
            v25 = v23;
            v26 = Logger.logObject.getter();
            v27 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v26, v27))
            {
              v28 = v0[27];
              v29 = swift_slowAlloc();
              v30 = swift_slowAlloc();
              v45 = v30;
              *v29 = 136315138;
              v31 = NWEndpoint.debugDescription.getter();
              v33 = sub_10000C4E4(v31, v32, &v45);

              *(v29 + 4) = v33;
              _os_log_impl(&_mh_execute_header, v26, v27, "Sending IDENTITY-SHARE request %s", v29, 0xCu);
              sub_10000C60C(v30);
            }

            v34 = swift_task_alloc();
            v0[44] = v34;
            *v34 = v0;
            v34[1] = sub_1003CBE18;
            v35 = v0[27];

            return sub_1003C7D78();
          }

          sub_100026AC0(v15, v17);
        }

        else
        {
        }
      }
    }

    sub_10028BCC0(v7, v6);
  }

  if (qword_1009737A8 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_10000C4AC(v37, qword_10097B3F0);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "Missing data for identity update, skipping IDENTITY-SHARE", v40, 2u);
  }

  v42 = v0[32];
  v41 = v0[33];
  v43 = v0[28];

  v44 = v0[1];

  return v44();
}

uint64_t sub_1003CBE18(uint64_t a1)
{
  v2 = *(*v1 + 352);
  v3 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 360) = a1;

  return _swift_task_switch(sub_1003CBF30, v3, 0);
}

uint64_t sub_1003CBF30()
{
  v1 = v0[45];
  v2 = v0[42];
  v3 = v0[40];
  v4 = v0[41];
  v23 = v0[39];
  v24 = v0[43];
  v22 = v0[38];
  v6 = v0[36];
  v5 = v0[37];
  v30 = v4;
  v7 = v0[35];
  v8 = v0[33];
  v29 = v5;
  v27 = v0[32];
  v28 = v0[30];
  v25 = v0[29];
  v26 = v0[28];
  v31 = v0[27];
  v9 = *&v31[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_identityShareConnection];
  *&v31[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_identityShareConnection] = v1;

  v10 = sub_1001BC3B0([v7 featureFlags]);
  v0[3] = 0;
  v0[2] = 0;
  *&v11 = v6;
  *(&v11 + 1) = v5;
  *&v12 = v3;
  *(&v12 + 1) = v4;
  *(v0 + 2) = v11;
  *(v0 + 3) = v12;
  v0[8] = v2;
  v0[9] = v24;
  v0[10] = v22;
  v0[11] = v23;
  v0[12] = v10;
  memmove(v8, v0 + 2, 0x58uLL);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v26, 1, 1, v13);
  sub_1003CC814(v8, v27);
  v14 = (*(v28 + 80) + 24) & ~*(v28 + 80);
  v15 = swift_allocObject();
  v0[46] = v15;
  *(v15 + 16) = v1;
  sub_1003CC878(v27, v15 + v14, type metadata accessor for SDAirDropMessage);
  v16 = swift_allocObject();
  v0[47] = v16;
  *(v16 + 16) = v31;
  *(v16 + 24) = v1;
  swift_retain_n();
  v17 = v31;
  sub_1002A9924(v6, v29);
  sub_100294008(v3, v30);
  sub_100294008(v2, v24);
  sub_1003398A0((v0 + 2), (v0 + 13));
  v18 = async function pointer to concurrentRace<A>(priority:operation:against:)[1];
  v19 = swift_task_alloc();
  v0[48] = v19;
  *v19 = v0;
  v19[1] = sub_1003CC1F8;
  v20 = v0[28];

  return concurrentRace<A>(priority:operation:against:)(v0 + 24, v20, &unk_1007FE8C8, v15, &unk_1007FE8D8, v16, &type metadata for SDNWHTTPResponse);
}

uint64_t sub_1003CC1F8()
{
  v2 = *v1;
  v3 = (*v1)[48];
  v4 = *v1;
  (*v1)[49] = v0;

  v5 = v2[47];
  v6 = v2[46];
  v7 = v2[34];
  sub_100005508(v2[28], &qword_100976160, &qword_1007F8770);

  if (v0)
  {
    v8 = sub_1003CC6F4;
  }

  else
  {
    v8 = sub_1003CC390;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1003CC390()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  if (v1 >= 3)
  {
    if (v1 == 9)
    {
      v15 = type metadata accessor for SFAirDropSend.Failure();
      sub_1003CD52C(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
      swift_allocError();
      v17 = v19;
      v18 = &enum case for SFAirDropSend.Failure.unsupportedConnection(_:);
    }

    else if (v1 == 4)
    {
      v15 = type metadata accessor for SFAirDropSend.Failure();
      sub_1003CD52C(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
      swift_allocError();
      v17 = v16;
      v18 = &enum case for SFAirDropSend.Failure.receiverDeclined(_:);
    }

    else
    {
      v15 = type metadata accessor for SFAirDropSend.Failure();
      sub_1003CD52C(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
      swift_allocError();
      v17 = v20;
      v18 = &enum case for SFAirDropSend.Failure.badRequest(_:);
    }

    (*(*(v15 - 8) + 104))(v17, *v18, v15);
    swift_willThrow();
    sub_100026AC0(v2, v3);
    v21 = *(v0 + 360);
    v23 = *(v0 + 336);
    v22 = *(v0 + 344);
    v25 = *(v0 + 320);
    v24 = *(v0 + 328);
    v26 = *(v0 + 288);
    v29 = *(v0 + 296);
    v30 = *(v0 + 280);
    v27 = *(v0 + 264);
    v32 = *(v0 + 256);
    v34 = *(v0 + 224);
    NWConnection.forceCancel()();
    swift_willThrow();
    sub_1003398D8(v0 + 16);
    sub_100026AC0(v23, v22);
    sub_100026AC0(v25, v24);
    sub_10028BCC0(v26, v29);

    sub_1003CCA70(v27, type metadata accessor for SDAirDropMessage);

    v14 = *(v0 + 8);
  }

  else
  {
    v4 = *(v0 + 360);
    v6 = *(v0 + 336);
    v5 = *(v0 + 344);
    v8 = *(v0 + 320);
    v7 = *(v0 + 328);
    v10 = *(v0 + 288);
    v9 = *(v0 + 296);
    v31 = *(v0 + 280);
    v33 = *(v0 + 264);
    NWConnection.forceCancel()();
    sub_100026AC0(v2, v3);
    sub_1003398D8(v0 + 16);
    sub_100026AC0(v6, v5);
    sub_100026AC0(v8, v7);
    sub_10028BCC0(v10, v9);

    sub_1003CCA70(v33, type metadata accessor for SDAirDropMessage);
    v12 = *(v0 + 256);
    v11 = *(v0 + 264);
    v13 = *(v0 + 224);

    v14 = *(v0 + 8);
  }

  return v14();
}

uint64_t sub_1003CC6F4()
{
  v1 = v0[45];
  v3 = v0[42];
  v2 = v0[43];
  v5 = v0[40];
  v4 = v0[41];
  v7 = v0[36];
  v6 = v0[37];
  v11 = v0[35];
  v8 = v0[33];
  v12 = v0[32];
  v13 = v0[49];
  v14 = v0[28];
  NWConnection.forceCancel()();
  swift_willThrow();
  sub_1003398D8((v0 + 2));
  sub_100026AC0(v3, v2);
  sub_100026AC0(v5, v4);
  sub_10028BCC0(v7, v6);

  sub_1003CCA70(v8, type metadata accessor for SDAirDropMessage);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1003CC814(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDAirDropMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003CC878(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003CC8E0(uint64_t a1)
{
  v4 = *(type metadata accessor for SDAirDropMessage() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1003CAA00(a1, v6, v1 + v5);
}

uint64_t sub_1003CC9C4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005C00;

  return sub_1003CAFD0(a1, v5, v4);
}

uint64_t sub_1003CCA70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1003CCAD0()
{
  result = qword_10097B4B0;
  if (!qword_10097B4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097B4B0);
  }

  return result;
}

uint64_t sub_1003CCB54(uint64_t a1)
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
  v10[1] = sub_100005C00;

  return sub_1003C9B10(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1003CCC28(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v3[26] = v4;
  v5 = *(v4 - 8);
  v3[27] = v5;
  v6 = *(v5 + 64) + 15;
  v3[28] = swift_task_alloc();
  v7 = type metadata accessor for DispatchQoS();
  v3[29] = v7;
  v8 = *(v7 - 8);
  v3[30] = v8;
  v9 = *(v8 + 64) + 15;
  v3[31] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v10 = static AirDropActor.shared;

  return _swift_task_switch(sub_1003CCD80, v10, 0);
}

uint64_t sub_1003CCD80()
{
  v61 = v0;
  v1 = v0[25];
  v2 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_deviceStatus);
  v3 = sub_10046949C();
  v59 = v3;
  if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_privacyImprovements) == 1)
  {
    v4 = (v0[25] + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_knownAltDSID);
    v5 = v4[1];
    if (v5)
    {
      v6 = *v4;
      v7 = qword_1009737A8;

      if (v7 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_10000C4AC(v8, qword_10097B3F0);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v60 = v12;
        *v11 = 136315138;
        v13 = sub_10000C4E4(v6, v5, &v60);

        *(v11 + 4) = v13;
        _os_log_impl(&_mh_execute_header, v9, v10, "Known peer detected %s - presenting AppleID cert for TLS", v11, 0xCu);
        sub_10000C60C(v12);
      }

      else
      {
      }

      v37 = v0[31];
      v38 = v0[28];
      v56 = v0[30];
      aBlocka = v0[29];
      v39 = v0[26];
      v40 = v0[27];
      v41 = v0[24];
      v42 = v0[23];
      v53 = *(v0[25] + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_browserQueue);
      v43 = swift_allocObject();
      v43[2] = v42;
      v43[3] = v41;
      v43[4] = v59;
      v0[19] = v43;
      v21 = v0 + 19;
      v0[18] = sub_1003CD5A0;
      v0[14] = _NSConcreteStackBlock;
      v0[15] = 1107296256;
      v0[16] = sub_100011678;
      v0[17] = &unk_1008DE450;
      v44 = _Block_copy(v0 + 14);
      swift_unknownObjectRetain();

      static DispatchQoS.unspecified.getter();
      v0[22] = _swiftEmptyArrayStorage;
      sub_1003CD52C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
      sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
      sub_100013EB8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v44);
      swift_unknownObjectRelease();
      (*(v40 + 8))(v38, v39);
      (*(v56 + 8))(v37, aBlocka);
    }

    else
    {
      if (qword_1009737A8 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_10000C4AC(v23, qword_10097B3F0);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Unknown peer detected - presenting self-signed cert for TLS", v26, 2u);
      }

      v28 = v0[30];
      v27 = v0[31];
      v29 = v0[28];
      v55 = v0[29];
      v30 = v0[26];
      v31 = v0[27];
      v33 = v0[24];
      v32 = v0[25];
      v34 = v0[23];

      v52 = *(v32 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_browserQueue);
      v35 = swift_allocObject();
      *(v35 + 16) = v34;
      *(v35 + 24) = v33;
      v0[13] = v35;
      v21 = v0 + 13;
      v0[12] = sub_1003CD574;
      v0[8] = _NSConcreteStackBlock;
      v0[9] = 1107296256;
      v0[10] = sub_100011678;
      v0[11] = &unk_1008DE400;
      v36 = _Block_copy(v0 + 8);

      static DispatchQoS.unspecified.getter();
      v0[21] = _swiftEmptyArrayStorage;
      sub_1003CD52C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
      sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
      sub_100013EB8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v36);
      swift_unknownObjectRelease();
      (*(v31 + 8))(v29, v30);
      (*(v28 + 8))(v27, v55);
    }
  }

  else
  {
    v14 = v3;
    v50 = v0[31];
    v15 = v0[28];
    v54 = v0[30];
    aBlock = v0[29];
    v16 = v0[26];
    v17 = v0[27];
    v18 = v0[24];
    v19 = v0[23];
    v51 = *(v0[25] + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_browserQueue);
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = v18;
    v20[4] = v14;
    v0[6] = sub_1003CDFE8;
    v0[7] = v20;
    v21 = v0 + 7;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100011678;
    v0[5] = &unk_1008DE3B0;
    v22 = _Block_copy(v0 + 2);
    swift_unknownObjectRetain();

    static DispatchQoS.unspecified.getter();
    v0[20] = _swiftEmptyArrayStorage;
    sub_1003CD52C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100013EB8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);
    swift_unknownObjectRelease();
    (*(v17 + 8))(v15, v16);
    (*(v54 + 8))(v50, aBlock);
  }

  v45 = *v21;

  v46 = v0[31];
  v47 = v0[28];

  v48 = v0[1];

  return v48();
}

uint64_t sub_1003CD52C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003CD574()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t sub_1003CD5D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100005C04;

  return sub_1003C8610(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1003CD6C4()
{
  v1 = *(type metadata accessor for SDAirDropMessage() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 16);

  v5 = (v0 + v2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v41 = type metadata accessor for SFAirDrop.TransferIdentifier();
      (*(*(v41 - 8) + 8))(v0 + v2, v41);
      break;
    case 2u:
      v7 = v5[1];
      if (v7 >> 60 != 15)
      {
        v6 = *v5;
        goto LABEL_3;
      }

      break;
    case 3u:
      v42 = v5[1];
      if (v42 >> 60 != 15)
      {
        sub_100026AC0(*v5, v42);
      }

      v43 = v5[3];

      v44 = v5[5];
      if (v44 >> 60 != 15)
      {
        sub_100026AC0(v5[4], v44);
      }

      v45 = v5[7];

      v46 = v5[9];
      if (v46 >> 60 != 15)
      {
        sub_100026AC0(v5[8], v46);
      }

      v47 = v5[11];
      if (v47 >> 60 != 15)
      {
        sub_100026AC0(v5[10], v47);
      }

      v48 = v5[13];

      v49 = v5[17];
      goto LABEL_46;
    case 4u:
      v21 = type metadata accessor for SFAirDrop.TransferIdentifier();
      v22 = *(v21 - 8);
      if (!(*(v22 + 48))(v0 + v2, 1, v21))
      {
        (*(v22 + 8))(v0 + v2, v21);
      }

      v23 = _s10AskRequestVMa();
      v24 = v23[5];
      v25 = type metadata accessor for SFAirDrop.TransferType();
      v26 = *(v25 - 8);
      if (!(*(v26 + 48))(v5 + v24, 1, v25))
      {
        (*(v26 + 8))(v5 + v24, v25);
      }

      v27 = (v5 + v23[6]);
      v28 = v27[1];
      if (v28 >> 60 != 15)
      {
        sub_100026AC0(*v27, v28);
      }

      v29 = *(v5 + v23[7] + 8);

      v30 = *(v5 + v23[8] + 8);

      v31 = *(v5 + v23[9] + 8);

      v32 = *(v5 + v23[10] + 8);

      v33 = *(v5 + v23[11]);

      v34 = *(v5 + v23[12]);

      v35 = *(v5 + v23[13] + 8);

      v36 = (v5 + v23[14]);
      v37 = v36[1];
      if (v37 >> 60 != 15)
      {
        sub_100026AC0(*v36, v37);
      }

      v38 = (v5 + v23[15]);
      v39 = v38[1];
      if (v39 >> 60 != 15)
      {
        sub_100026AC0(*v38, v39);
      }

      v40 = (v5 + v23[17]);
      v7 = v40[1];
      if (v7 >> 60 == 15)
      {
        break;
      }

      v6 = *v40;
      goto LABEL_3;
    case 5u:
      v8 = v5[1];

      v9 = v5[3];

      v10 = v5[6];

      v11 = v5[8];

      v12 = v5[10];

      v7 = v5[12];
      if (v7 >> 60 == 15)
      {
        break;
      }

      v6 = v5[11];
LABEL_3:
      sub_100026AC0(v6, v7);
      break;
    case 6u:
      v13 = type metadata accessor for SFAirDrop.TransferIdentifier();
      v14 = *(v13 - 8);
      if (!(*(v14 + 48))(v0 + v2, 1, v13))
      {
        (*(v14 + 8))(v0 + v2, v13);
      }

      v15 = _s13UploadRequestVMa();
      v16 = *(v5 + v15[6] + 8);

      v17 = (v5 + v15[7]);
      v18 = v17[1];
      if (v18 >> 60 != 15)
      {
        sub_100026AC0(*v17, v18);
      }

      v19 = *(v5 + v15[9] + 8);

      v20 = *(v5 + v15[10] + 8);
      goto LABEL_46;
    case 7u:
    case 0xBu:
    case 0xDu:
      v6 = *v5;
      v7 = v5[1];
      goto LABEL_3;
    case 8u:
      v50 = type metadata accessor for SFAirDrop.TransferIdentifier();
      (*(*(v50 - 8) + 8))(v0 + v2, v50);
      v51 = _s15ExchangeRequestVMa(0);
      goto LABEL_38;
    case 9u:
      v55 = type metadata accessor for SFAirDrop.TransferIdentifier();
      (*(*(v55 - 8) + 8))(v0 + v2, v55);
      v51 = _s16ExchangeResponseVMa(0);
LABEL_38:
      v56 = v51;
      v57 = *(v5 + *(v51 + 20) + 8);

      v58 = *(v5 + v56[6] + 8);

      v59 = v56[7];
      v60 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
      v61 = *(v60 - 8);
      if (!(*(v61 + 48))(v5 + v59, 1, v60))
      {
        (*(v61 + 8))(v5 + v59, v60);
      }

      v62 = (v5 + v56[8]);
      v63 = v62[1];
      if (v63 >> 60 != 15)
      {
        sub_100026AC0(*v62, v63);
      }

      v5 = (v5 + v56[9]);
      if (v5[9])
      {
        goto LABEL_43;
      }

      break;
    case 0xAu:
LABEL_43:
      v64 = v5[1];

      v65 = v5[3];
      if (v65 >> 60 != 15)
      {
        sub_100026AC0(v5[2], v65);
      }

      sub_100026AC0(v5[4], v5[5]);
      sub_100026AC0(v5[6], v5[7]);
      v66 = v5[9];
LABEL_46:

      break;
    case 0xCu:
      v52 = type metadata accessor for SFAirDrop.TransferIdentifier();
      (*(*(v52 - 8) + 8))(v0 + v2, v52);
      v53 = *(_s12ErrorRequestVMa() + 20);
      v54 = type metadata accessor for CodableError();
      (*(*(v54 - 8) + 8))(v5 + v53, v54);
      break;
    default:
      break;
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1003CDDB4(uint64_t a1)
{
  v4 = *(type metadata accessor for SDAirDropMessage() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1003C9E00(a1, v6, v1 + v5);
}

uint64_t sub_1003CDE98()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1003CDED8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005C04;

  return sub_1003CA48C(a1, v5, v4);
}

uint64_t sub_1003CDFEC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10028088C(&qword_1009746B8, &qword_1007F6598);
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
    sub_1000106E0((v28 + 8), v26);
    sub_1000106E0(v26, v28);
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
    result = sub_1000106E0(v28, (v1[7] + 32 * v9));
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

uint64_t sub_1003CE294(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10028088C(&unk_1009744B0, &unk_1007F9630);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10000C5B0(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1000106E0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1000106E0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1000106E0(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1000106E0(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1003CE55C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10028088C(&qword_100974780, &qword_1007F6640);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);

        v20 = v19;
        v21 = sub_100012854(v18, v17);
        if (v22)
        {
          v8 = (v2[6] + 16 * v21);
          v9 = v8[1];
          *v8 = v18;
          v8[1] = v17;
          v10 = v21;

          v11 = v2[7];
          v12 = *(v11 + 8 * v10);
          *(v11 + 8 * v10) = v20;

          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v21;
          v23 = (v2[6] + 16 * v21);
          *v23 = v18;
          v23[1] = v17;
          *(v2[7] + 8 * v21) = v20;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

unint64_t sub_1003CE73C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10028088C(&unk_100975640, &unk_1007F64E0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + v15);

        swift_dynamicCast();
        sub_1000106E0(&v25, v27);
        sub_1000106E0(v27, v28);
        sub_1000106E0(v28, &v26);
        result = sub_100012854(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_10000C60C(v12);
          result = sub_1000106E0(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_1000106E0(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1003CE984(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10028088C(&unk_1009744B0, &unk_1007F9630);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 4 * v13);
    sub_10000C5B0(*(a1 + 56) + 32 * v13, v33 + 8);
    LODWORD(v33[0]) = v14;
    v31[0] = v33[0];
    v31[1] = v33[1];
    v32 = v34;
    LODWORD(v30[0]) = v14;
    swift_dynamicCast();
    sub_1000106E0((v31 + 8), v25);
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1000106E0(v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1000106E0(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_1000106E0(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

char *sub_1003CEC3C(unint64_t a1, uint64_t *a2)
{
  v5 = sub_10028088C(&qword_10097B548, &qword_1007FE968);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for SFSecurityScopedURL();
  v28 = *(v9 - 8);
  v10 = *(v28 + 64);
  v11 = __chkstk_darwin(v9);
  v34 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v27 = &v25 - v13;
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v15 = 0;
    v32 = a1 & 0xFFFFFFFFFFFFFF8;
    v33 = a1 & 0xC000000000000001;
    v29 = (v28 + 32);
    v30 = (v28 + 48);
    v16 = _swiftEmptyArrayStorage;
    v25 = a1;
    v26 = a2;
    v31 = i;
    while (1)
    {
      if (v33)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *(v32 + 16))
        {
          goto LABEL_20;
        }

        v17 = *(a1 + 8 * v15 + 32);
      }

      v18 = v17;
      v19 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v35 = v17;
      sub_1003D7928(&v35, a2, v8);
      if (v2)
      {

        return v16;
      }

      if ((*v30)(v8, 1, v9) == 1)
      {
        sub_100005508(v8, &qword_10097B548, &qword_1007FE968);
      }

      else
      {
        v20 = *v29;
        v21 = v27;
        (*v29)(v27, v8, v9);
        v20(v34, v21, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_10028EE84(0, *(v16 + 2) + 1, 1, v16);
        }

        v23 = *(v16 + 2);
        v22 = *(v16 + 3);
        if (v23 >= v22 >> 1)
        {
          v16 = sub_10028EE84(v22 > 1, v23 + 1, 1, v16);
        }

        *(v16 + 2) = v23 + 1;
        v20(&v16[((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v23], v34, v9);
        a1 = v25;
        a2 = v26;
      }

      ++v15;
      if (v19 == v31)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return _swiftEmptyArrayStorage;
}