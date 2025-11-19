uint64_t sub_100276380()
{
  v1 = v0[23];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Attempting to fetch Identity Proofing static assets", v4, 2u);
  }

  v5 = v0[23];
  v6 = v0[18];
  v7 = v0[19];

  (*(v7 + 8))(v5, v6);
  v0[38] = sub_1005A2ACC();
  sub_1005A2ACC();

  v8 = swift_task_alloc();
  v0[39] = v8;
  *v8 = v0;
  v8[1] = sub_100276724;

  return sub_1005A41DC(0xD000000000000024, 0x80000001007089E0, 0x6A2E737465737361, 0xEB000000006E6F73);
}

uint64_t sub_100276508()
{
  v30 = v0;
  v1 = v0[37];
  v2 = v0[20];
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[19];
    v28 = v0[20];
    v6 = v0[18];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[12];
    v12 = Error.localizedDescription.getter();
    v14 = sub_100141FE4(v12, v13, &v29);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "received an error during refreshing static content %s", v7, 0xCu);
    sub_10000BB78(v8);

    (*(v5 + 8))(v28, v6);
  }

  else
  {
    v16 = v0[19];
    v15 = v0[20];
    v17 = v0[18];

    (*(v16 + 8))(v15, v17);
  }

  v19 = v0[30];
  v18 = v0[31];
  v20 = v0[27];
  v22 = v0[23];
  v21 = v0[24];
  v24 = v0[21];
  v23 = v0[22];
  v25 = v0[20];

  v26 = v0[1];

  return v26();
}

uint64_t sub_100276724()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v7 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = sub_100276AD4;
  }

  else
  {
    v5 = *(v2 + 304);

    v4 = sub_100276840;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100276840()
{
  *(v0 + 328) = sub_1005A2ACC();
  sub_1005A2ACC();

  v1 = swift_task_alloc();
  *(v0 + 336) = v1;
  *v1 = v0;
  v1[1] = sub_100276924;

  return sub_1005A41DC(0xD000000000000024, 0x8000000100708A40, 0x6A2E737465737361, 0xEB000000006E6F73);
}

uint64_t sub_100276924()
{
  v2 = *(*v1 + 336);
  v3 = *v1;
  v3[43] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100276CF8, 0, 0);
  }

  else
  {
    v4 = v3[41];

    v6 = v3[30];
    v5 = v3[31];
    v7 = v3[27];
    v9 = v3[23];
    v8 = v3[24];
    v11 = v3[21];
    v10 = v3[22];
    v12 = v3[20];

    v13 = v3[1];

    return v13();
  }
}

uint64_t sub_100276AD4()
{
  v31 = v0;
  v1 = v0[38];

  v2 = v0[40];
  v3 = v0[20];
  defaultLogger()();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[19];
    v29 = v0[20];
    v7 = v0[18];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[10];
    v10 = v0[11];
    v12 = v0[12];
    v13 = Error.localizedDescription.getter();
    v15 = sub_100141FE4(v13, v14, &v30);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "received an error during refreshing static content %s", v8, 0xCu);
    sub_10000BB78(v9);

    (*(v6 + 8))(v29, v7);
  }

  else
  {
    v17 = v0[19];
    v16 = v0[20];
    v18 = v0[18];

    (*(v17 + 8))(v16, v18);
  }

  v20 = v0[30];
  v19 = v0[31];
  v21 = v0[27];
  v23 = v0[23];
  v22 = v0[24];
  v25 = v0[21];
  v24 = v0[22];
  v26 = v0[20];

  v27 = v0[1];

  return v27();
}

uint64_t sub_100276CF8()
{
  v31 = v0;
  v1 = v0[41];

  v2 = v0[43];
  v3 = v0[20];
  defaultLogger()();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[19];
    v29 = v0[20];
    v7 = v0[18];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[10];
    v10 = v0[11];
    v12 = v0[12];
    v13 = Error.localizedDescription.getter();
    v15 = sub_100141FE4(v13, v14, &v30);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "received an error during refreshing static content %s", v8, 0xCu);
    sub_10000BB78(v9);

    (*(v6 + 8))(v29, v7);
  }

  else
  {
    v17 = v0[19];
    v16 = v0[20];
    v18 = v0[18];

    (*(v17 + 8))(v16, v18);
  }

  v20 = v0[30];
  v19 = v0[31];
  v21 = v0[27];
  v23 = v0[23];
  v22 = v0[24];
  v25 = v0[21];
  v24 = v0[22];
  v26 = v0[20];

  v27 = v0[1];

  return v27();
}

uint64_t sub_100276F1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 440) = a4;
  *(v5 + 64) = a3;
  *(v5 + 72) = v4;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  v6 = *(*(sub_100007224(&unk_100849400, &unk_1006BFBB0) - 8) + 64) + 15;
  *(v5 + 80) = swift_task_alloc();
  v7 = type metadata accessor for Date();
  *(v5 + 88) = v7;
  v8 = *(v7 - 8);
  *(v5 + 96) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v5 + 120) = v10;
  v11 = *(v10 - 8);
  *(v5 + 128) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 232) = swift_task_alloc();
  *(v5 + 240) = swift_task_alloc();
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 256) = swift_task_alloc();
  *(v5 + 264) = swift_task_alloc();

  return _swift_task_switch(sub_100277144, 0, 0);
}

uint64_t sub_100277144()
{
  v54 = v0;
  v1 = *(v0 + 56);
  if (!v1)
  {
    v11 = *(v0 + 144);
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    v12 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 144);
    v7 = *(v0 + 120);
    v8 = *(v0 + 128);
    if (v12)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Unable to update proofing as proofingSessionID doesn't exist";
      goto LABEL_7;
    }

LABEL_8:

    (*(v8 + 8))(v6, v7);
    v14 = *(v0 + 256);
    v13 = *(v0 + 264);
    v15 = *(v0 + 240);
    v16 = *(v0 + 248);
    v18 = *(v0 + 224);
    v17 = *(v0 + 232);
    v20 = *(v0 + 208);
    v19 = *(v0 + 216);
    v22 = *(v0 + 192);
    v21 = *(v0 + 200);
    v42 = *(v0 + 184);
    v43 = *(v0 + 176);
    v44 = *(v0 + 168);
    v45 = *(v0 + 160);
    v46 = *(v0 + 152);
    v47 = *(v0 + 144);
    v48 = *(v0 + 136);
    v49 = *(v0 + 112);
    v50 = *(v0 + 104);
    v51 = *(v0 + 80);

    v23 = *(v0 + 8);

    return v23();
  }

  if (*(v0 + 440))
  {
    v2 = *(v0 + 152);
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 152);
    v7 = *(v0 + 120);
    v8 = *(v0 + 128);
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Unable to update proofing as target doesn't exist";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v3, v4, v10, v9, 2u);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v25 = *(v0 + 264);
  defaultLogger()();

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  v28 = os_log_type_enabled(v26, v27);
  v29 = *(v0 + 264);
  v31 = *(v0 + 120);
  v30 = *(v0 + 128);
  if (v28)
  {
    v32 = *(v0 + 64);
    v33 = *(v0 + 48);
    v52 = *(v0 + 264);
    v34 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v34 = 136315394;
    *(v34 + 4) = sub_100141FE4(v33, v1, &v53);
    *(v34 + 12) = 2080;
    v35 = IdentityTarget.debugDescription.getter();
    v37 = sub_100141FE4(v35, v36, &v53);

    *(v34 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v26, v27, "check if an identity pass exists for proofingSessionID: %s and target %s", v34, 0x16u);
    swift_arrayDestroy();

    v38 = *(v30 + 8);
    v38(v52, v31);
  }

  else
  {

    v38 = *(v30 + 8);
    v38(v29, v31);
  }

  *(v0 + 272) = v38;
  v39 = swift_task_alloc();
  *(v0 + 280) = v39;
  *v39 = v0;
  v39[1] = sub_100277584;
  v40 = *(v0 + 64);
  v41 = *(v0 + 48);

  return sub_100280DD8(v41, v1, v40);
}

uint64_t sub_100277584(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 280);
  v6 = *v2;
  *(v3 + 288) = a1;
  *(v3 + 296) = a2;

  return _swift_task_switch(sub_100277684, 0, 0);
}

uint64_t sub_100277684()
{
  v77 = v0;
  v1 = v0[37];
  if (v1)
  {
    v2 = v0[36];
    v3 = *(v0[9] + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_passManager);

    sub_100511C48(v2, v1);
    v5 = v4;

    v6 = v0[7];
    if (v5)
    {
      v7 = v0[32];

      defaultLogger()();

      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = v0[36];
        v73 = v0[32];
        v74 = v0[34];
        v11 = v0[16];
        v72 = v0[15];
        v13 = v0[6];
        v12 = v0[7];
        v14 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *v14 = 136315394;
        *(v14 + 4) = sub_100141FE4(v13, v12, &v76);
        *(v14 + 12) = 2080;
        *(v14 + 14) = sub_100141FE4(v10, v1, &v76);
        _os_log_impl(&_mh_execute_header, v8, v9, "Pass exists for a given proofingSessionID %s and %s. Delete locally stored data", v14, 0x16u);
        swift_arrayDestroy();

        v74(v73, v72);
      }

      else
      {
        v44 = v0[34];
        v45 = v0[32];
        v46 = v0[15];
        v47 = v0[16];

        v44(v45, v46);
      }

      v48 = v0[31];
      v0[38] = *(v0[9] + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_cleanupProvider);

      defaultLogger()();
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "Attempting to notify provisioning complete to the server", v51, 2u);
      }

      v52 = v0[34];
      v53 = v0[31];
      v54 = v0[15];
      v55 = v0[16];

      v52(v53, v54);
      v56 = swift_task_alloc();
      v0[39] = v56;
      *v56 = v0;
      v56[1] = sub_100277D84;
      v57 = v0[36];
      v58 = v0[8];

      return sub_10029AFAC(v57, v1, 0, v58);
    }

    else
    {
      v29 = v0[30];
      defaultLogger()();

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();

      v32 = os_log_type_enabled(v30, v31);
      v33 = v0[34];
      v34 = v0[30];
      v36 = v0[15];
      v35 = v0[16];
      if (v32)
      {
        v38 = v0[7];
        v37 = v0[8];
        v39 = v0[6];
        v75 = v0[34];
        v40 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *v40 = 136315394;
        *(v40 + 4) = sub_100141FE4(v39, v38, &v76);
        *(v40 + 12) = 2080;
        v41 = IdentityTarget.debugDescription.getter();
        v43 = sub_100141FE4(v41, v42, &v76);

        *(v40 + 14) = v43;
        _os_log_impl(&_mh_execute_header, v30, v31, "Manual check time interval has elapsed for the storedProofingSession with proofingSessionID: %s and target: %s. Will update proofing data...", v40, 0x16u);
        swift_arrayDestroy();

        v75(v34, v36);
      }

      else
      {

        v33(v34, v36);
      }

      v59 = v0[29];
      defaultLogger()();
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&_mh_execute_header, v60, v61, "Check if there was a provisioning attempt", v62, 2u);
      }

      v63 = v0[34];
      v64 = v0[29];
      v65 = v0[15];
      v66 = v0[16];
      v67 = v0[7];

      v63(v64, v65);
      v68 = swift_task_alloc();
      v0[40] = v68;
      *v68 = v0;
      v68[1] = sub_100278008;
      v69 = v0[10];
      v70 = v0[8];
      v71 = v0[6];

      return sub_10027ACBC(v69, v71, v67, v70);
    }
  }

  else
  {
    v15 = v0[20];
    defaultLogger()();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "The proofing Session does not have a credential identifier, this is an invalid state. Delete locally stored data", v18, 2u);
    }

    v19 = v0[34];
    v20 = v0[20];
    v21 = v0[15];
    v22 = v0[16];
    v23 = v0[9];

    v19(v20, v21);
    v0[53] = *(v23 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_cleanupProvider);

    v24 = swift_task_alloc();
    v0[54] = v24;
    *v24 = v0;
    v24[1] = sub_10027980C;
    v25 = v0[7];
    v26 = v0[8];
    v27 = v0[6];

    return sub_10029E160(0, 0, v27, v25, v26, 0);
  }
}

uint64_t sub_100277D84()
{
  v1 = *(*v0 + 312);
  v3 = *v0;

  return _swift_task_switch(sub_100277E80, 0, 0);
}

uint64_t sub_100277E80()
{
  v1 = v0[38];
  sub_1002A3AF8(v0[36], v0[37], 0, 0, v0[8], 0);

  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[30];
  v5 = v0[31];
  v7 = v0[28];
  v6 = v0[29];
  v9 = v0[26];
  v8 = v0[27];
  v11 = v0[24];
  v10 = v0[25];
  v14 = v0[23];
  v15 = v0[22];
  v16 = v0[21];
  v17 = v0[20];
  v18 = v0[19];
  v19 = v0[18];
  v20 = v0[17];
  v21 = v0[14];
  v22 = v0[13];
  v23 = v0[10];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100278008()
{
  v1 = *(*v0 + 320);
  v3 = *v0;

  return _swift_task_switch(sub_100278104, 0, 0);
}

uint64_t sub_100278104()
{
  v58 = v0;
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[37];
    v5 = v0[22];

    sub_10000BE18(v3, &unk_100849400, &unk_1006BFBB0);
    defaultLogger()();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Provisioning has never been attempted. Will call pending actions.", v8, 2u);
    }

    v9 = v0[34];
    v10 = v0[22];
    v11 = v0[15];
    v12 = v0[16];
    v13 = v0[9];

    v9(v10, v11);
    v14 = *(v13 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_pendingActionsFlowFactory);

    v0[49] = sub_100266DA8(1, 0);

    v15 = swift_task_alloc();
    v0[50] = v15;
    *v15 = v0;
    v15[1] = sub_10027939C;
    v16 = v0[7];
    v17 = v0[8];
    v18 = v0[6];

    return sub_10025AE6C(v18, v16, v17, 0);
  }

  else
  {
    v20 = v0[28];
    v22 = v0[13];
    v21 = v0[14];
    (*(v2 + 32))(v21, v3, v1);
    defaultLogger()();
    (*(v2 + 16))(v22, v21, v1);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[34];
    v27 = v0[28];
    v28 = v0[15];
    v29 = v0[16];
    v31 = v0[12];
    v30 = v0[13];
    v32 = v0[11];
    if (v25)
    {
      v56 = v0[28];
      v33 = swift_slowAlloc();
      v55 = v28;
      v34 = swift_slowAlloc();
      v57 = v34;
      *v33 = 136315138;
      sub_10017F790(&qword_10083ACE0, &type metadata accessor for Date);
      v54 = v26;
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      v53 = v24;
      v38 = *(v31 + 8);
      v38(v30, v32);
      v39 = sub_100141FE4(v35, v37, &v57);

      *(v33 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v23, v53, "Provisioning has already been attempted. %s", v33, 0xCu);
      sub_10000BB78(v34);

      v54(v56, v55);
    }

    else
    {

      v38 = *(v31 + 8);
      v38(v30, v32);
      v26(v27, v28);
    }

    v0[41] = v38;
    v40 = v0[27];
    defaultLogger()();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Check if there are any pending provisioning", v43, 2u);
    }

    v44 = v0[34];
    v45 = v0[27];
    v46 = v0[15];
    v47 = v0[16];
    v48 = v0[9];
    v49 = v0[7];

    v44(v45, v46);
    v0[42] = *(v48 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_pendingProvisioning);

    v50 = swift_task_alloc();
    v0[43] = v50;
    *v50 = v0;
    v50[1] = sub_100278614;
    v51 = v0[8];
    v52 = v0[6];

    return sub_100180164(v52, v49, v51);
  }
}

uint64_t sub_100278614(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 344);
  v6 = *v2;
  *(v4 + 352) = v1;

  v7 = *(v4 + 336);
  if (v1)
  {
    v8 = *(v4 + 296);

    v9 = sub_100279B98;
  }

  else
  {

    *(v4 + 441) = a1 & 1;
    v9 = sub_10027876C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10027876C()
{
  if (*(v0 + 441) == 1)
  {
    v1 = *(v0 + 296);
    v2 = *(v0 + 208);

    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 328);
    v47 = *(v0 + 272);
    v7 = *(v0 + 208);
    v8 = *(v0 + 120);
    v9 = *(v0 + 128);
    v10 = *(v0 + 112);
    v11 = *(v0 + 88);
    v12 = *(v0 + 96);
    if (v5)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Pending provisioning exists", v13, 2u);
    }

    v47(v7, v8);
    v6(v10, v11);
    v15 = *(v0 + 256);
    v14 = *(v0 + 264);
    v16 = *(v0 + 240);
    v17 = *(v0 + 248);
    v19 = *(v0 + 224);
    v18 = *(v0 + 232);
    v21 = *(v0 + 208);
    v20 = *(v0 + 216);
    v23 = *(v0 + 192);
    v22 = *(v0 + 200);
    v38 = *(v0 + 184);
    v39 = *(v0 + 176);
    v40 = *(v0 + 168);
    v41 = *(v0 + 160);
    v42 = *(v0 + 152);
    v43 = *(v0 + 144);
    v44 = *(v0 + 136);
    v45 = *(v0 + 112);
    v46 = *(v0 + 104);
    v48 = *(v0 + 80);

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    v26 = *(v0 + 200);
    defaultLogger()();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Pending provisioning doesn't exist. Checking for provisioning timeout to delete provisioning data", v29, 2u);
    }

    v30 = *(v0 + 272);
    v31 = *(v0 + 200);
    v32 = *(v0 + 120);
    v33 = *(v0 + 128);

    v30(v31, v32);
    v34 = swift_task_alloc();
    *(v0 + 360) = v34;
    *v34 = v0;
    v34[1] = sub_100278AC8;
    v35 = *(v0 + 56);
    v36 = *(v0 + 64);
    v37 = *(v0 + 48);

    return sub_1002812C0(v37, v35, v36, 0);
  }
}

uint64_t sub_100278AC8(char a1)
{
  v2 = *(*v1 + 360);
  v4 = *v1;
  *(*v1 + 442) = a1;

  return _swift_task_switch(sub_100278BC8, 0, 0);
}

uint64_t sub_100278BC8()
{
  if (*(v0 + 442) == 1)
  {
    v1 = *(v0 + 192);
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Provisioning time out has occurred. Deleting the locally stored proofing data.", v4, 2u);
    }

    v5 = *(v0 + 272);
    v6 = *(v0 + 192);
    v7 = *(v0 + 120);
    v8 = *(v0 + 128);
    v9 = *(v0 + 72);

    v5(v6, v7);
    *(v0 + 368) = *(v9 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_cleanupProvider);

    v10 = swift_task_alloc();
    *(v0 + 376) = v10;
    *v10 = v0;
    v10[1] = sub_100278EA4;
    v12 = *(v0 + 288);
    v11 = *(v0 + 296);

    return sub_1002A2920(v12, v11, 0, 0);
  }

  else
  {
    v14 = *(v0 + 296);
    v15 = *(v0 + 96) + 8;
    (*(v0 + 328))(*(v0 + 112), *(v0 + 88));

    v17 = *(v0 + 256);
    v16 = *(v0 + 264);
    v18 = *(v0 + 240);
    v19 = *(v0 + 248);
    v21 = *(v0 + 224);
    v20 = *(v0 + 232);
    v23 = *(v0 + 208);
    v22 = *(v0 + 216);
    v25 = *(v0 + 192);
    v24 = *(v0 + 200);
    v27 = *(v0 + 184);
    v28 = *(v0 + 176);
    v29 = *(v0 + 168);
    v30 = *(v0 + 160);
    v31 = *(v0 + 152);
    v32 = *(v0 + 144);
    v33 = *(v0 + 136);
    v34 = *(v0 + 112);
    v35 = *(v0 + 104);
    v36 = *(v0 + 80);

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_100278EA4()
{
  v1 = *(*v0 + 376);
  v3 = *v0;

  return _swift_task_switch(sub_100278FA0, 0, 0);
}

uint64_t sub_100278FA0()
{
  v1 = v0[23];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Attempting to notify provisioning complete to the server", v4, 2u);
  }

  v5 = v0[37];
  v6 = v0[34];
  v7 = v0[23];
  v8 = v0[15];
  v9 = v0[16];

  v6(v7, v8);
  v10 = swift_task_alloc();
  v0[48] = v10;
  *v10 = v0;
  v10[1] = sub_1002790F4;
  v11 = v0[46];
  v12 = v0[36];
  v13 = v0[8];

  return sub_10029AFAC(v12, v5, 1, v13);
}

uint64_t sub_1002790F4()
{
  v1 = *(*v0 + 384);
  v3 = *v0;

  return _swift_task_switch(sub_1002791F0, 0, 0);
}

uint64_t sub_1002791F0()
{
  v1 = v0[46];
  v2 = v0[41];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  sub_1002A3AF8(v0[36], v0[37], 0, 0, v0[8], 0);

  v2(v3, v4);
  v7 = v0[32];
  v6 = v0[33];
  v8 = v0[30];
  v9 = v0[31];
  v11 = v0[28];
  v10 = v0[29];
  v13 = v0[26];
  v12 = v0[27];
  v15 = v0[24];
  v14 = v0[25];
  v18 = v0[23];
  v19 = v0[22];
  v20 = v0[21];
  v21 = v0[20];
  v22 = v0[19];
  v23 = v0[18];
  v24 = v0[17];
  v25 = v0[14];
  v26 = v0[13];
  v27 = v0[10];

  v16 = v0[1];

  return v16();
}

uint64_t sub_10027939C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 400);
  v7 = *v2;
  *(v3 + 408) = a1;
  *(v3 + 416) = v1;

  if (v1)
  {
    v5 = sub_100279D14;
  }

  else
  {
    v5 = sub_1002794B0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002794B0()
{
  v50 = v0;
  v1 = v0[51];
  if (v1)
  {
    if (*(v1 + 16) && (v2 = sub_10003ADCC(0xD000000000000010, 0x8000000100707760), (v3 & 1) != 0))
    {
      v4 = v0[21];
      v5 = *(*(v1 + 56) + 8 * v2);

      defaultLogger()();

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.debug.getter();

      v8 = os_log_type_enabled(v6, v7);
      v9 = v0[49];
      v10 = v0[34];
      v11 = v0[21];
      v13 = v0[15];
      v12 = v0[16];
      if (v8)
      {
        v47 = v0[21];
        v14 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v14 = 136315394;
        v44 = v10;
        v16 = v5[2];
        v15 = v5[3];

        v17 = sub_100141FE4(v16, v15, &v49);

        *(v14 + 4) = v17;
        *(v14 + 12) = 2080;
        v18 = v5[4];
        v19 = IdentityTarget.debugDescription.getter();
        v21 = sub_100141FE4(v19, v20, &v49);

        *(v14 + 14) = v21;
        _os_log_impl(&_mh_execute_header, v6, v7, "Get pending actions called for proofingSessionID: %s and target: %s", v14, 0x16u);
        swift_arrayDestroy();

        v44(v47, v13);
      }

      else
      {
        v24 = v0[49];

        v10(v11, v13);
      }
    }

    else
    {
      v22 = v0[49];
    }
  }

  else
  {
    v23 = v0[49];
  }

  v26 = v0[32];
  v25 = v0[33];
  v27 = v0[30];
  v28 = v0[31];
  v30 = v0[28];
  v29 = v0[29];
  v32 = v0[26];
  v31 = v0[27];
  v34 = v0[24];
  v33 = v0[25];
  v37 = v0[23];
  v38 = v0[22];
  v39 = v0[21];
  v40 = v0[20];
  v41 = v0[19];
  v42 = v0[18];
  v43 = v0[17];
  v45 = v0[14];
  v46 = v0[13];
  v48 = v0[10];

  v35 = v0[1];

  return v35();
}

uint64_t sub_10027980C()
{
  v1 = *v0;
  v2 = *(*v0 + 432);
  v3 = *(*v0 + 424);
  v26 = *v0;

  v4 = v1[33];
  v5 = v1[32];
  v6 = v1[31];
  v7 = v1[30];
  v8 = v1[29];
  v9 = v1[28];
  v10 = v1[27];
  v11 = v1[26];
  v12 = v1[25];
  v16 = v1[24];
  v17 = v1[23];
  v18 = v1[22];
  v19 = v1[21];
  v20 = v1[20];
  v21 = v1[19];
  v22 = v1[18];
  v23 = v1[17];
  v24 = v1[14];
  v25 = v1[13];
  v13 = v1[10];

  v14 = *(v26 + 8);

  return v14();
}

uint64_t sub_100279B98()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v6 = *(v0 + 224);
  v5 = *(v0 + 232);
  v7 = *(v0 + 208);
  v8 = *(v0 + 216);
  v13 = *(v0 + 200);
  v14 = *(v0 + 192);
  v15 = *(v0 + 184);
  v16 = *(v0 + 176);
  v17 = *(v0 + 168);
  v18 = *(v0 + 160);
  v19 = *(v0 + 152);
  v20 = *(v0 + 144);
  v23 = *(v0 + 104);
  v21 = *(v0 + 136);
  v22 = *(v0 + 80);
  v9 = (*(v0 + 96) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (*(v0 + 328))(*(v0 + 112), *(v0 + 88));

  v10 = *(v0 + 8);
  v11 = *(v0 + 352);

  return v10();
}

uint64_t sub_100279D14()
{
  v47 = v0;
  v1 = v0[52];
  v2 = v0[49];
  v3 = v0[17];

  defaultLogger()();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[52];
    v7 = v0[16];
    v42 = v0[17];
    v44 = v0[34];
    v8 = v0[15];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v46 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = v0[2];
    v11 = v0[3];
    v13 = v0[4];
    v14 = Error.localizedDescription.getter();
    v16 = sub_100141FE4(v14, v15, &v46);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received an error while updating proofing from background activity %s", v9, 0xCu);
    sub_10000BB78(v10);

    v44(v42, v8);
  }

  else
  {
    v17 = v0[52];
    v18 = v0[34];
    v20 = v0[16];
    v19 = v0[17];
    v21 = v0[15];

    v18(v19, v21);
  }

  v23 = v0[32];
  v22 = v0[33];
  v24 = v0[30];
  v25 = v0[31];
  v27 = v0[28];
  v26 = v0[29];
  v29 = v0[26];
  v28 = v0[27];
  v31 = v0[24];
  v30 = v0[25];
  v34 = v0[23];
  v35 = v0[22];
  v36 = v0[21];
  v37 = v0[20];
  v38 = v0[19];
  v39 = v0[18];
  v40 = v0[17];
  v41 = v0[14];
  v43 = v0[13];
  v45 = v0[10];

  v32 = v0[1];

  return v32();
}

void sub_100279FD4(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v94 = a4;
  v93 = a1;
  v87 = a5;
  v92 = type metadata accessor for Logger();
  v88 = *(v92 - 8);
  v7 = *(v88 + 64);
  v8 = __chkstk_darwin(v92);
  v90 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v85 = &v80 - v11;
  __chkstk_darwin(v10);
  v89 = &v80 - v12;
  v13 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v86 = &v80 - v15;
  v16 = type metadata accessor for Date();
  v91 = *(v16 - 8);
  v17 = *(v91 + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v80 - v21;
  v23 = type metadata accessor for DIPError.Code();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v95;
  v29 = sub_1005792EC(a2, a3);
  if (v28)
  {
    return;
  }

  v94 = v24;
  v95 = v23;
  v83 = v16;
  v84 = a2;
  v93 = a3;
  v30 = v89;
  v31 = v90;
  v81 = v20;
  v82 = v22;
  v32 = v91;
  v33 = v92;
  if (!v29)
  {
    v96 = 0;
    v97 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v96 = 0xD000000000000015;
    v97 = 0x80000001007088D0;
    v35._countAndFlagsBits = v84;
    v35._object = v93;
    String.append(_:)(v35);
    v36._countAndFlagsBits = 0x74276E73656F6420;
    v36._object = 0xEE00747369786520;
    String.append(_:)(v36);
    (*(v94 + 104))(v27, enum case for DIPError.Code.internalError(_:), v95);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10017F790(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  v84 = 0;
  v93 = v29;
  [v29 proofingActionStatus];
  IdentityProofingActionStatus.init(rawValue:)();
  if (v34)
  {
    (*(v94 + 104))(v27, enum case for DIPError.Code.storedProofingActionStatusDoesntExist(_:), v95);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10017F790(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return;
  }

  v37 = IdentityProofingActionStatus.rawValue.getter();
  if (v37 == IdentityProofingActionStatus.rawValue.getter())
  {
    v38 = [v93 provisioningRetryTimeout];
    v39 = 86400 * v38;
    if ((v38 * 86400) >> 64 == (86400 * v38) >> 63)
    {
      v40 = [v93 provisioningAttemptDate];
      v41 = v83;
      v42 = v81;
      if (v40)
      {
        v43 = v40;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v44 = *(v32 + 32);
        v45 = v39;
        v46 = v86;
        v44(v86, v42, v41);
        (*(v32 + 56))(v46, 0, 1, v41);
        v47 = v46;
        v39 = v45;
        v44(v82, v47, v41);
        v42 = v81;
      }

      else
      {
        v51 = v86;
        (*(v32 + 56))(v86, 1, 1, v83);
        Date.init()();
        if ((*(v32 + 48))(v51, 1, v41) != 1)
        {
          sub_10000BE18(v51, &unk_100849400, &unk_1006BFBB0);
        }
      }

      Date.init()();
      v52 = Date.isAtLeast(seconds:after:)();
      v54 = *(v32 + 8);
      v53 = v32 + 8;
      v95 = v54;
      v54(v42, v41);
      if (v52)
      {
        v55 = v30;
        defaultLogger()();
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.debug.getter();
        v58 = os_log_type_enabled(v56, v57);
        v60 = v87;
        v59 = v88;
        v61 = v92;
        if (v58)
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&_mh_execute_header, v56, v57, "Time has elapsed to delete the provisioning timeout", v62, 2u);
          v59 = v88;
        }

        (*(v59 + 8))(v55, v61);
        v95(v82, v83);
        *v60 = 1;
        return;
      }

      Date.timeIntervalSinceNow.getter();
      v64 = v63;
      v65 = v87;
      v66 = v92;
      if ((*&v63 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v67 = v85;
        v68 = v88;
        if (v63 < 9.22337204e18)
        {
          if (v63 > -9.22337204e18)
          {
            defaultLogger()();
            v69 = Logger.logObject.getter();
            v70 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v69, v70))
            {
              v71 = v39 / 3600;
              v72 = v39 % 3600;
              v73 = (((34953 * v72) >> 16) >> 5) + (((v72 + ((-30583 * v72) >> 16)) & 0x8000) >> 15);
              v74 = (v72 - 60 * v73);
              v94 = v73;
              v75 = -v64;
              v76 = v75 / 3600;
              v77 = v75 % 3600;
              LODWORD(v75) = (v77 + ((-30583 * v77) >> 16)) & 0x8000;
              v90 = (v77 - 60 * ((((34953 * v77) >> 16) >> 5) + (v75 >> 15)));
              v91 = v53;
              v78 = ((((34953 * v77) >> 16) >> 5) + (v75 >> 15));
              v79 = swift_slowAlloc();
              *v79 = 134219264;
              *(v79 + 4) = v71;
              v65 = v87;
              *(v79 + 12) = 2048;
              *(v79 + 14) = v94;
              *(v79 + 22) = 2048;
              *(v79 + 24) = v74;
              *(v79 + 32) = 2048;
              *(v79 + 34) = v76;
              v67 = v85;
              v66 = v33;
              *(v79 + 42) = 2048;
              *(v79 + 44) = v78;
              *(v79 + 52) = 2048;
              *(v79 + 54) = v90;
              _os_log_impl(&_mh_execute_header, v69, v70, "%ldhour(s) %ld minutes(s) %ldseconds(s) not elapsed yet. Time elapsed since provisioning failure is %ldhour(s) %ldminute(s) %ldsecond(s)", v79, 0x3Eu);
              v68 = v88;
            }

            (*(v68 + 8))(v67, v66);
            v95(v82, v83);
            *v65 = 0;
            return;
          }

LABEL_28:
          __break(1u);
          return;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  defaultLogger()();
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&_mh_execute_header, v48, v49, "Proofing status is not claim ready", v50, 2u);
  }

  (*(v88 + 8))(v31, v33);
  *v87 = 0;
}

void sub_10027AA3C(uint64_t a1@<X1>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for DIPError.Code();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005792EC(a1, a2);
  if (!v3)
  {
    if (v12)
    {
      v13 = v12;
      v14 = [v12 credentialIdentifier];
      if (v14)
      {
        v15 = v14;
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
      }

      else
      {

        v16 = 0;
        v18 = 0;
      }

      *a3 = v16;
      a3[1] = v18;
    }

    else
    {
      v21[0] = 0;
      v21[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(66);
      v19._countAndFlagsBits = 0xD000000000000040;
      v19._object = 0x8000000100708960;
      String.append(_:)(v19);
      v20._countAndFlagsBits = a1;
      v20._object = a2;
      String.append(_:)(v20);
      (*(v8 + 104))(v11, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v7);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10017F790(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

uint64_t sub_10027ACBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[29] = a3;
  v4[30] = a4;
  v4[27] = a1;
  v4[28] = a2;
  v5 = type metadata accessor for Logger();
  v4[31] = v5;
  v6 = *(v5 - 8);
  v4[32] = v6;
  v7 = *(v6 + 64) + 15;
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_10027AD80, 0, 0);
}

uint64_t sub_10027AD80()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_100031B5C(&v1[4], (v0 + 2));
  os_unfair_lock_unlock(v1 + 54);
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[28];
  v5 = v0[9];
  v0[34] = v5;

  sub_100031918((v0 + 2));
  v6 = swift_allocObject();
  v0[35] = v6;
  v6[2] = v4;
  v6[3] = v2;
  v6[4] = v3;
  v7 = *(v5 + 16);
  v8 = swift_allocObject();
  v0[36] = v8;
  *(v8 + 16) = sub_100282830;
  *(v8 + 24) = v6;
  v9 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

  v10 = swift_task_alloc();
  v0[37] = v10;
  v11 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  *v10 = v0;
  v10[1] = sub_10027AF5C;
  v12 = v0[27];

  return AsyncCoreDataContainer.performRead<A>(_:)(v12, sub_1000280B4, v8, v11);
}

uint64_t sub_10027AF5C()
{
  v2 = *(*v1 + 296);
  v3 = *v1;
  v3[38] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10027B0C0, 0, 0);
  }

  else
  {
    v5 = v3[35];
    v4 = v3[36];
    v6 = v3[34];

    v7 = v3[33];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_10027B0C0()
{
  v1 = v0[38];
  v2 = v0[35];
  v3 = v0[36];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[31];
  v7 = v0[32];
  v8 = v0[27];

  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v7 + 8))(v5, v6);
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = v0[33];

  v11 = v0[1];

  return v11();
}

void *sub_10027B1DC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for DIPError.Code();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1005792EC(a1, a2);
  if (!v3)
  {
    if (result)
    {
      v13 = result;
      v14 = [result provisioningAttemptDate];
      if (v14)
      {
        v15 = v14;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v16 = 0;
      }

      else
      {
        v16 = 1;
        v15 = v13;
      }

      v17 = type metadata accessor for Date();
      return (*(*(v17 - 8) + 56))(a3, v16, 1, v17);
    }

    else
    {
      (*(v8 + 104))(v11, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v7);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10017F790(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }
  }

  return result;
}

void sub_10027B464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a5;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v37 - v14;
  v16 = sub_1005792EC(a2, a3);
  if (!v5)
  {
    v17 = v16;
    v38 = a2;
    v39 = v15;
    v40 = v9;
    v41 = 0;
    if (v16)
    {
      v18 = IdentityProofingActionStatus.rawValue.getter();
      sub_10057F148(v18, 0);
      v19 = v41;
      sub_1005783D4();
      v41 = v19;
      if (v19)
      {
      }

      else
      {
        v26 = type metadata accessor for IdentityManagementSessionDelegate();
        v27 = [objc_opt_self() defaultCenter];
        v28 = String._bridgeToObjectiveC()();
        v43 = v26;
        sub_100007224(&qword_10083D698, &unk_1006DB6F0);
        [v27 postNotificationName:v28 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

        swift_unknownObjectRelease();
        v29 = v39;
        defaultLogger()();
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v43 = v33;
          *v32 = 136315138;
          v34 = IdentityProofingActionStatus.debugDescription.getter();
          v36 = sub_100141FE4(v34, v35, &v43);

          *(v32 + 4) = v36;
          _os_log_impl(&_mh_execute_header, v30, v31, "Updated the proofing action status to %s", v32, 0xCu);
          sub_10000BB78(v33);
        }

        (*(v40 + 8))(v29, v8);
      }
    }

    else
    {
      defaultLogger()();
      v20 = a3;

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();

      v23 = v8;
      if (os_log_type_enabled(v21, v22))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v43 = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_100141FE4(v38, v20, &v43);
        _os_log_impl(&_mh_execute_header, v21, v22, "Proofing session with proofingSessionID %s doesn't exist.", v24, 0xCu);
        sub_10000BB78(v25);
      }

      (*(v40 + 8))(v13, v23);
    }
  }
}

uint64_t sub_10027B844(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for Logger();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v7 = *(*(sub_100007224(&unk_100834140, &qword_1006DC180) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v8 = type metadata accessor for NWPath();
  v3[18] = v8;
  v9 = *(v8 - 8);
  v3[19] = v9;
  v10 = *(v9 + 64) + 15;
  v3[20] = swift_task_alloc();
  v11 = type metadata accessor for ProofingSession.UploadAsset();
  v3[21] = v11;
  v12 = *(v11 - 8);
  v3[22] = v12;
  v13 = *(v12 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_10027BA34, 0, 0);
}

uint64_t sub_10027BA34()
{
  v1 = v0[8];
  result = ProofingSession.uploadAssets.getter();
  v3 = result;
  v61 = *(result + 16);
  if (!v61)
  {
LABEL_12:

    v17 = _swiftEmptyArrayStorage[2];

    if (!v17)
    {
      v25 = v0[23];
      v24 = v0[24];
      v26 = v0[20];
      v28 = v0[16];
      v27 = v0[17];
      v30 = v0[14];
      v29 = v0[15];
      v32 = v0[12];
      v31 = v0[13];

      v33 = v0[1];

      return v33(0);
    }

    v18 = v0[18];
    v19 = v0[19];
    v20 = v0[17];
    v21 = v0[9];
    v22 = *(*(v21 + 32) + 16);

    NetworkMonitor.currentPath.getter();
    if ((*(v19 + 48))(v20, 1, v18) == 1)
    {
      v23 = v0[17];

      sub_10000BE18(v23, &unk_100834140, &qword_1006DC180);
    }

    else
    {
      (*(v0[19] + 32))(v0[20], v0[17], v0[18]);
      v34 = NWPath.isExpensive.getter();
      v36 = v0[19];
      v35 = v0[20];
      v37 = v0[18];
      if (v34)
      {

        (*(v36 + 8))(v35, v37);
      }

      else
      {
        v38 = NWPath.isConstrained.getter();

        (*(v36 + 8))(v35, v37);
        if ((v38 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v39 = v0[8];
      if (ProofingSession.canUploadOnExpensiveNetwork.getter())
      {
        v40 = v0[16];
        defaultLogger()();
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&_mh_execute_header, v41, v42, "Device is on expensive network but the user has given consent to upload over cellular network. Start uploads...", v43, 2u);
        }

        v44 = v0[16];
        v45 = v0[10];
        v46 = v0[11];
        v47 = v0[8];

        (*(v46 + 8))(v44, v45);
        v48 = ProofingSession.proofingSessionID.getter();
        v50 = v49;
        v0[25] = v49;
        ProofingSession.target.getter();
        v51 = IdentityTarget.init(rawValue:)();
        v53 = v52;
        v54 = swift_task_alloc();
        v0[26] = v54;
        *v54 = v0;
        v54[1] = sub_10027BFA8;

        return sub_100281CC4(v48, v50, v51, v53 & 1, 1);
      }
    }

LABEL_27:
    v55 = v0[8];
    v0[27] = *(v21 + 32);

    v56 = ProofingSession.totalUploadAssetsFileSizeInBytes.getter();
    v57 = ProofingSession.canUploadOnExpensiveNetwork.getter();
    v58 = swift_task_alloc();
    v0[28] = v58;
    *v58 = v0;
    v58[1] = sub_10027C1DC;
    v59 = v0[7];

    return sub_1002C7430(v59, v56, v57 & 1);
  }

  v4 = 0;
  v5 = v0[22];
  v62 = (v5 + 32);
  v60 = result;
  while (v4 < *(v3 + 16))
  {
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v7 = *(v5 + 72);
    (*(v5 + 16))(v0[24], v3 + v6 + v7 * v4, v0[21]);
    ProofingSession.UploadAsset.assetFileURL.getter();
    v8 = v0[24];
    if (v9)
    {
      v10 = v0[23];
      v11 = v0[21];

      v12 = *v62;
      (*v62)(v10, v8, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100173084(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_100173084(v13 > 1, v14 + 1, 1);
      }

      v15 = v0[23];
      v16 = v0[21];
      _swiftEmptyArrayStorage[2] = v14 + 1;
      result = v12(_swiftEmptyArrayStorage + v6 + v14 * v7, v15, v16);
      v3 = v60;
    }

    else
    {
      result = (*(v5 + 8))(v0[24], v0[21]);
    }

    if (v61 == ++v4)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10027BFA8()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v15 = *v0;

  v4 = v1[24];
  v5 = v1[23];
  v6 = v1[20];
  v7 = v1[17];
  v8 = v1[16];
  v9 = v1[15];
  v10 = v1[14];
  v11 = v1[13];
  v12 = v1[12];

  v13 = *(v15 + 8);

  return v13(1);
}

uint64_t sub_10027C1DC(char a1)
{
  v2 = *(*v1 + 224);
  v3 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 280) = a1;

  return _swift_task_switch(sub_10027C2FC, 0, 0);
}

uint64_t sub_10027C2FC()
{
  if (*(v0 + 280) == 1)
  {
    v1 = *(v0 + 120);
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Device is on an expensive network and the data size is greater than the threshold. No consent to upload on cellular. Will not upload the files.", v4, 2u);
    }

    v5 = *(v0 + 120);
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    v8 = *(v0 + 64);

    v9 = *(v7 + 8);
    *(v0 + 232) = v9;
    v9(v5, v6);
    v10 = ProofingSession.proofingSessionID.getter();
    v12 = v11;
    *(v0 + 240) = v11;
    ProofingSession.target.getter();
    v13 = IdentityTarget.init(rawValue:)();
    v15 = v14;
    v16 = swift_task_alloc();
    *(v0 + 248) = v16;
    *v16 = v0;
    v16[1] = sub_10027C538;

    return (sub_100281CC4)(v10, v12, v13, v15 & 1, 9);
  }

  else
  {
    v19 = *(v0 + 184);
    v18 = *(v0 + 192);
    v20 = *(v0 + 160);
    v22 = *(v0 + 128);
    v21 = *(v0 + 136);
    v24 = *(v0 + 112);
    v23 = *(v0 + 120);
    v26 = *(v0 + 96);
    v25 = *(v0 + 104);

    v27 = *(v0 + 8);

    return v27(1);
  }
}

uint64_t sub_10027C538()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);
  v4 = *v0;

  return _swift_task_switch(sub_10027C650, 0, 0);
}

uint64_t sub_10027C650()
{
  v1 = v0[9];
  sub_10027DDA8();
  v2 = v0[14];
  defaultLogger()();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Checking if connect to wifi reminder should be shown", v5, 2u);
  }

  v6 = v0[29];
  v7 = v0[14];
  v8 = v0[10];
  v9 = v0[11];
  v10 = v0[8];

  v6(v7, v8);
  if (ProofingSession.didShowWifiReminderAlert.getter())
  {
    v11 = v0[13];
    defaultLogger()();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[29];
    v16 = v0[13];
    v17 = v0[10];
    v18 = v0[11];
    if (v14)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Connect to WiFi reminder alert has been shown to the user once already. Will not show it again.", v19, 2u);
    }

    v15(v16, v17);
    v21 = v0[23];
    v20 = v0[24];
    v22 = v0[20];
    v24 = v0[16];
    v23 = v0[17];
    v26 = v0[14];
    v25 = v0[15];
    v28 = v0[12];
    v27 = v0[13];

    v29 = v0[1];

    return v29(0);
  }

  else
  {
    v31 = v0[12];
    defaultLogger()();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Connect to wifi reminder to be shown...", v34, 2u);
    }

    v35 = v0[29];
    v37 = v0[11];
    v36 = v0[12];
    v39 = v0[9];
    v38 = v0[10];
    v40 = v0[8];

    v35(v36, v38);
    sub_100020260(v39 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_connectToWifiAlertProvider, (v0 + 2));
    v41 = sub_10000BA08(v0 + 2, v0[5]);
    v42 = ProofingSession.proofingSessionID.getter();
    v44 = v43;
    v0[32] = v43;
    ProofingSession.target.getter();
    v45 = IdentityTarget.init(rawValue:)();
    v47 = v46;
    v48 = v41[2];
    v49 = swift_task_alloc();
    v0[33] = v49;
    *v49 = v0;
    v49[1] = sub_10027CA74;
    v50 = v0[7];

    return sub_10030771C(v50, v42, v44, v45, v47 & 1, v48);
  }
}

uint64_t sub_10027CA74()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  v5 = *(v2 + 256);

  if (v0)
  {
    v6 = sub_10027CC80;
  }

  else
  {
    v6 = sub_10027CBA8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10027CBA8()
{
  sub_10000BB78(v0 + 2);
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[20];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[14];
  v6 = v0[15];
  v9 = v0[12];
  v8 = v0[13];

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_10027CC80()
{
  sub_10000BB78(v0 + 2);
  v1 = v0[34];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[20];
  v6 = v0[16];
  v5 = v0[17];
  v8 = v0[14];
  v7 = v0[15];
  v10 = v0[12];
  v9 = v0[13];

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_10027CD60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Logger();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v8 = type metadata accessor for DIPError.Code();
  v4[10] = v8;
  v9 = *(v8 - 8);
  v4[11] = v9;
  v10 = *(v9 + 64) + 15;
  v4[12] = swift_task_alloc();
  v11 = *(*(sub_100007224(&unk_100849400, &unk_1006BFBB0) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v12 = type metadata accessor for Date();
  v4[14] = v12;
  v13 = *(v12 - 8);
  v4[15] = v13;
  v14 = *(v13 + 64) + 15;
  v4[16] = swift_task_alloc();
  v15 = type metadata accessor for DIPBackgroundDeferralStatus();
  v4[17] = v15;
  v16 = *(v15 - 8);
  v4[18] = v16;
  v17 = *(v16 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_10027CF88, 0, 0);
}

uint64_t sub_10027CF88()
{
  v1 = v0[2];
  v2 = *(ProofingSession.uploadAssets.getter() + 16);

  if (v2)
  {
    v3 = v0[2];
    ProofingSession.documentType.getter();
    if (v4)
    {
      v5 = IdentityDocumentType.init(documentTypeString:)();
      v0[21] = v5;
      v6 = swift_task_alloc();
      v0[22] = v6;
      *v6 = v0;
      v6[1] = sub_10027D1CC;
      v7 = v0[5];
      v8 = v0[2];

      return sub_10027B844(v5, v8);
    }

    v11 = v0 + 9;
    v16 = v0[9];
    defaultLogger()();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Unable to retrieve document type";
      goto LABEL_10;
    }
  }

  else
  {
    v11 = v0 + 8;
    v10 = v0[8];
    defaultLogger()();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Upload assets doesn't exist to be uploaded.";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v12, v13, v15, v14, 2u);
    }
  }

  (*(v0[7] + 8))(*v11, v0[6]);
  v18 = v0[19];
  v17 = v0[20];
  v19 = v0[16];
  v21 = v0[12];
  v20 = v0[13];
  v23 = v0[8];
  v22 = v0[9];

  v24 = v0[1];

  return v24(0);
}

uint64_t sub_10027D1CC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *v2;

  if (v1)
  {
    v8 = *(v4 + 152);
    v7 = *(v4 + 160);
    v9 = *(v4 + 128);
    v11 = *(v4 + 96);
    v10 = *(v4 + 104);
    v14 = v4 + 64;
    v12 = *(v4 + 64);
    v13 = *(v14 + 8);

    v15 = *(v6 + 8);

    return v15(0);
  }

  else
  {
    *(v4 + 276) = a1 & 1;

    return _swift_task_switch(sub_10027D374, 0, 0);
  }
}

uint64_t sub_10027D374()
{
  v1 = *(v0 + 276);
  if (v1 != 1)
  {
    goto LABEL_3;
  }

  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  v6 = *(v0 + 32);
  (*(v0 + 24))();
  *(v0 + 272) = enum case for DIPBackgroundDeferralStatus.shouldDefer(_:);
  v7 = *(v5 + 104);
  *(v0 + 184) = v7;
  *(v0 + 192) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v7(v3);
  LOBYTE(v6) = static DIPBackgroundDeferralStatus.== infix(_:_:)();
  v8 = *(v5 + 8);
  *(v0 + 200) = v8;
  *(v0 + 208) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v3, v4);
  v8(v2, v4);
  if (v6)
  {
LABEL_3:
    v10 = *(v0 + 152);
    v9 = *(v0 + 160);
    v11 = *(v0 + 128);
    v13 = *(v0 + 96);
    v12 = *(v0 + 104);
    v15 = *(v0 + 64);
    v14 = *(v0 + 72);

    v16 = *(v0 + 8);
    v17 = v1 ^ 1u;
LABEL_4:

    return v16(v17);
  }

  v19 = *(v0 + 16);
  ProofingSession.target.getter();
  v20 = IdentityTarget.init(rawValue:)();
  if (v21)
  {
    (*(*(v0 + 88) + 104))(*(v0 + 96), enum case for DIPError.Code.targetUnavailable(_:), *(v0 + 80));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10017F790(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v23 = *(v0 + 152);
    v22 = *(v0 + 160);
    v24 = *(v0 + 128);
    v26 = *(v0 + 96);
    v25 = *(v0 + 104);
    v28 = *(v0 + 64);
    v27 = *(v0 + 72);

    v16 = *(v0 + 8);
    v17 = 0;
    goto LABEL_4;
  }

  v29 = *(v0 + 16);
  *(v0 + 216) = v20;
  v30 = v20;
  v31 = ProofingSession.proofingSessionID.getter();
  v33 = v32;
  *(v0 + 224) = v32;
  v34 = swift_task_alloc();
  *(v0 + 232) = v34;
  *v34 = v0;
  v34[1] = sub_10027D6F8;

  return sub_100281CC4(v31, v33, v30, 0, 1);
}

uint64_t sub_10027D6F8()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v4 = *v0;

  return _swift_task_switch(sub_10027D810, 0, 0);
}

uint64_t sub_10027D810()
{
  v1 = v0[2];
  v0[30] = *(v0[5] + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_proofingUpdateManager);

  v2 = ProofingSession.proofingSessionID.getter();
  v4 = v3;
  v0[31] = v3;
  v5 = ProofingSession.canUploadOnExpensiveNetwork.getter();
  v6 = swift_task_alloc();
  v0[32] = v6;
  *v6 = v0;
  v6[1] = sub_10027D900;
  v7 = v0[27];
  v8 = v0[21];

  return sub_100316898(v2, v4, 0, 0, v8, v7, 0, v5 & 1);
}

uint64_t sub_10027D900()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v8 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = sub_10027DC34;
  }

  else
  {
    v5 = *(v2 + 240);
    v6 = *(v2 + 248);

    v4 = sub_10027DA24;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10027DA24()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 272);
  v7 = *(v0 + 152);
  v6 = *(v0 + 160);
  v8 = *(v0 + 136);
  v9 = *(v0 + 32);
  (*(v0 + 24))();
  v4(v7, v5, v8);
  v10 = static DIPBackgroundDeferralStatus.== infix(_:_:)();
  v2(v7, v8);
  v2(v6, v8);
  if ((v10 & 1) == 0)
  {
    v11 = *(v0 + 112);
    v12 = *(v0 + 120);
    v13 = *(v0 + 104);
    v14 = *(v0 + 16);
    v15 = *(*(v0 + 40) + 24);

    ProofingSession.createdAt.getter();
    v16 = *(v12 + 48);
    if (v16(v13, 1, v11) == 1)
    {
      v18 = *(v0 + 104);
      v17 = *(v0 + 112);
      v19 = *(v0 + 128);
      Date.init()();
      if (v16(v18, 1, v17) != 1)
      {
        sub_10000BE18(*(v0 + 104), &unk_100849400, &unk_1006BFBB0);
      }
    }

    else
    {
      (*(*(v0 + 120) + 32))(*(v0 + 128), *(v0 + 104), *(v0 + 112));
    }

    v20 = *(v0 + 128);
    v21 = *(v0 + 16);
    ProofingSession.manualCheckInterval.getter();
    sub_1002FA39C();

    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  }

  v23 = *(v0 + 152);
  v22 = *(v0 + 160);
  v24 = *(v0 + 128);
  v26 = *(v0 + 96);
  v25 = *(v0 + 104);
  v28 = *(v0 + 64);
  v27 = *(v0 + 72);

  v29 = *(v0 + 8);

  return v29((v10 & 1) == 0);
}

uint64_t sub_10027DC34()
{
  v1 = v0[30];
  v2 = v0[31];

  v3 = v0[33];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[16];
  v8 = v0[12];
  v7 = v0[13];
  v10 = v0[8];
  v9 = v0[9];

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_10027DD00(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100027B9C;

  return sub_10027E038(a1, a2);
}

uint64_t sub_10027DDA8()
{
  v2 = type metadata accessor for Logger();
  v17 = *(v2 - 8);
  v3 = *(v17 + 64);
  __chkstk_darwin(v2);
  v5 = &v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BackgroundActivitySettings();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  BackgroundActivitySettings.init()();
  BackgroundActivitySettings.requiresNetworkConnectivity.setter();
  BackgroundActivitySettings.requiresInexpensiveNetworkConnectivity.setter();
  sub_100020260(v0 + 40, v16);
  sub_10000BA08(v16, v16[3]);
  dispatch thunk of BackgroundActivityManaging.scheduleActivity(identifier:after:gracePeriod:settings:)();
  if (v1)
  {
    (*(v7 + 8))(v10, v6);
    return sub_10000BB78(v16);
  }

  else
  {
    sub_10000BB78(v16);
    defaultLogger()();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Scheduling background activity to be triggered when the device connects to wifi.", v14, 2u);
    }

    (*(v17 + 8))(v5, v2);
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_10027E038(uint64_t a1, uint64_t a2)
{
  v3[34] = a2;
  v3[35] = v2;
  v3[33] = a1;
  v4 = type metadata accessor for Logger();
  v3[36] = v4;
  v5 = *(v4 - 8);
  v3[37] = v5;
  v6 = *(v5 + 64) + 15;
  v3[38] = swift_task_alloc();
  v7 = type metadata accessor for DIPBackgroundDeferralStatus();
  v3[39] = v7;
  v8 = *(v7 - 8);
  v3[40] = v8;
  v9 = *(v8 + 64) + 15;
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v10 = swift_task_alloc();
  v3[43] = v10;
  *v10 = v3;
  v10[1] = sub_10027E190;

  return sub_1002755E0();
}

uint64_t sub_10027E190()
{
  v1 = *(*v0 + 344);
  v3 = *v0;

  return _swift_task_switch(sub_10027E28C, 0, 0);
}

uint64_t sub_10027E28C()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);
  v5 = *(v0 + 272);
  (*(v0 + 264))();
  (*(v4 + 104))(v2, enum case for DIPBackgroundDeferralStatus.shouldDefer(_:), v3);
  LOBYTE(v5) = static DIPBackgroundDeferralStatus.== infix(_:_:)();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {
    v8 = *(v0 + 328);
    v7 = *(v0 + 336);
    v9 = *(v0 + 304);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v12 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v12 + 54);
    sub_1000318FC(&v12[4], v0 + 16);
    os_unfair_lock_unlock(v12 + 54);
    v14 = *(v0 + 264);
    v13 = *(v0 + 272);
    v15 = *(v0 + 72);
    *(v0 + 352) = v15;

    sub_100031918(v0 + 16);
    v16 = swift_allocObject();
    *(v0 + 360) = v16;
    *(v16 + 16) = v14;
    *(v16 + 24) = v13;
    v17 = *(v15 + 16);
    v18 = swift_allocObject();
    *(v0 + 368) = v18;
    *(v18 + 16) = sub_100280CF4;
    *(v18 + 24) = v16;
    v19 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

    v20 = swift_task_alloc();
    *(v0 + 376) = v20;
    v21 = sub_100007224(&qword_10083E3E0, &qword_1006DBCE0);
    *v20 = v0;
    v20[1] = sub_10027E544;

    return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 240, sub_100267820, v18, v21);
  }
}

uint64_t sub_10027E544()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v9 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v4 = sub_10027E8F4;
  }

  else
  {
    v5 = v2[45];
    v6 = v2[46];
    v7 = v2[44];

    v2[49] = v2[30];
    v4 = sub_10027E684;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10027E684()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 280);
  type metadata accessor for OSTransaction();
  v3 = swift_task_alloc();
  *(v0 + 400) = v3;
  v4 = *(v0 + 264);
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = v4;
  v5 = _s13CoreIDVShared13OSTransactionC5namedyq_SS_q_yYaYbxYKXEtYaxYKs5ErrorRzRi__r0_lFZTu[1];
  v6 = swift_task_alloc();
  *(v0 + 408) = v6;
  v7 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
  *v6 = v0;
  v6[1] = sub_10027E7CC;

  return __s13CoreIDVShared13OSTransactionC5namedyq_SS_q_yYaYbxYKXEtYaxYKs5ErrorRzRi__r0_lFZ(v7, 0xD00000000000002ALL, 0x80000001006DC0C0, &unk_1006DC168, v3, v7, &type metadata for () + 8, &protocol self-conformance witness table for Error);
}

uint64_t sub_10027E7CC()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v8 = *v1;

  v4 = *(v2 + 392);
  if (v0)
  {

    v5 = sub_10027EB6C;
  }

  else
  {
    v6 = *(v2 + 400);

    v5 = sub_10027EAF8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10027E8F4()
{
  v28 = v0;
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[44];

  v4 = v0[48];
  v5 = v0[38];
  defaultLogger()();
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[37];
    v26 = v0[38];
    v9 = v0[36];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v13 = v0[27];
    v12 = v0[28];
    v14 = v0[29];
    v15 = Error.localizedDescription.getter();
    v17 = sub_100141FE4(v15, v16, &v27);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error received when attempting to retrieve proofing sessions to update %s", v10, 0xCu);
    sub_10000BB78(v11);

    (*(v8 + 8))(v26, v9);
  }

  else
  {
    v19 = v0[37];
    v18 = v0[38];
    v20 = v0[36];

    (*(v19 + 8))(v18, v20);
  }

  v22 = v0[41];
  v21 = v0[42];
  v23 = v0[38];

  v24 = v0[1];

  return v24();
}

uint64_t sub_10027EAF8()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[38];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10027EB6C()
{
  v26 = v0;
  v1 = v0[50];
  v2 = v0[32];

  v3 = v0[38];
  defaultLogger()();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[37];
    v24 = v0[38];
    v7 = v0[36];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[27];
    v10 = v0[28];
    v12 = v0[29];
    v13 = Error.localizedDescription.getter();
    v15 = sub_100141FE4(v13, v14, &v25);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error received when attempting to retrieve proofing sessions to update %s", v8, 0xCu);
    sub_10000BB78(v9);

    (*(v6 + 8))(v24, v7);
  }

  else
  {
    v17 = v0[37];
    v16 = v0[38];
    v18 = v0[36];

    (*(v17 + 8))(v16, v18);
  }

  v20 = v0[41];
  v19 = v0[42];
  v21 = v0[38];

  v22 = v0[1];

  return v22();
}

void sub_10027ED5C(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v38 = a2;
  v36 = a4;
  v37 = a3;
  v40 = type metadata accessor for ProofingSession();
  v5 = *(v40 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v40);
  v35 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v35 - v9;
  v11 = type metadata accessor for DIPBackgroundDeferralStatus();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v35 - v17;
  v19 = *(a1 + 16);
  type metadata accessor for StoredProofingSession();
  v20 = static StoredProofingSession.fetchRequest()();
  v21 = v39;
  v22 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v21)
  {
    v39 = 0;
    v38();
    (*(v12 + 104))(v16, enum case for DIPBackgroundDeferralStatus.shouldDefer(_:), v11);
    v23 = static DIPBackgroundDeferralStatus.== infix(_:_:)();
    v24 = *(v12 + 8);
    v24(v16, v11);
    v24(v18, v11);
    if ((v23 & 1) != 0 || (v22 >> 62 ? (v25 = _CocoaArrayWrapper.endIndex.getter()) : (v25 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10)), v26 = v35, !v25))
    {

      *v36 = _swiftEmptyArrayStorage;
    }

    else
    {
      v41 = _swiftEmptyArrayStorage;
      sub_100173040(0, v25 & ~(v25 >> 63), 0);
      if (v25 < 0)
      {
        __break(1u);
      }

      else
      {
        v27 = v41;
        if ((v22 & 0xC000000000000001) != 0)
        {
          for (i = 0; i != v25; ++i)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            ProofingSession.init(_:)();
            v41 = v27;
            v30 = v27[2];
            v29 = v27[3];
            if (v30 >= v29 >> 1)
            {
              sub_100173040(v29 > 1, v30 + 1, 1);
              v27 = v41;
            }

            v27[2] = v30 + 1;
            (*(v5 + 32))(v27 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v30, v10, v40);
          }
        }

        else
        {
          v31 = 32;
          do
          {
            v32 = *(v22 + v31);
            ProofingSession.init(_:)();
            v41 = v27;
            v34 = v27[2];
            v33 = v27[3];
            if (v34 >= v33 >> 1)
            {
              sub_100173040(v33 > 1, v34 + 1, 1);
              v27 = v41;
            }

            v27[2] = v34 + 1;
            (*(v5 + 32))(v27 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v34, v26, v40);
            v31 += 8;
            --v25;
          }

          while (v25);
        }

        *v36 = v27;
      }
    }
  }
}

uint64_t sub_10027F170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  v7 = type metadata accessor for DIPBackgroundDeferralStatus();
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v9 = *(v8 + 64) + 15;
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();
  v10 = *(*(sub_100007224(&unk_100849400, &unk_1006BFBB0) - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v6[12] = v11;
  v12 = *(v11 - 8);
  v6[13] = v12;
  v13 = *(v12 + 64) + 15;
  v6[14] = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  v6[15] = v14;
  v15 = *(v14 - 8);
  v6[16] = v15;
  v16 = *(v15 + 64) + 15;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v17 = type metadata accessor for ProofingSession();
  v6[23] = v17;
  v18 = *(v17 - 8);
  v6[24] = v18;
  v19 = *(v18 + 64) + 15;
  v6[25] = swift_task_alloc();

  return _swift_task_switch(sub_10027F3CC, 0, 0);
}

uint64_t sub_10027F3CC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v0 + 208) = v2;
  if (v2)
  {
    *(v0 + 344) = enum case for DIPBackgroundDeferralStatus.shouldDefer(_:);
    v3 = *(v0 + 184);
    v4 = *(v0 + 192);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 348) = v6;
    *(v0 + 216) = *(v4 + 56);
    *(v0 + 224) = v5;
    *(v0 + 232) = 0;
    v5(*(v0 + 200), v1 + ((v6 + 32) & ~v6), v3);
    v7 = swift_task_alloc();
    *(v0 + 240) = v7;
    *v7 = v0;
    v7[1] = sub_10027F59C;
    v8 = *(v0 + 200);
    v9 = *(v0 + 32);
    v10 = *(v0 + 40);
    v11 = *(v0 + 24);

    return sub_10027CD60(v8, v9, v10);
  }

  else
  {
    v13 = *(v0 + 200);
    v14 = *(v0 + 168);
    v15 = *(v0 + 176);
    v17 = *(v0 + 152);
    v16 = *(v0 + 160);
    v19 = *(v0 + 136);
    v18 = *(v0 + 144);
    v20 = *(v0 + 112);
    v22 = *(v0 + 80);
    v21 = *(v0 + 88);
    v24 = *(v0 + 72);

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_10027F59C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 240);
  v6 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v7 = sub_100280698;
  }

  else
  {
    *(v4 + 352) = a1 & 1;
    v7 = sub_10027F6C8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10027F6C8()
{
  if (*(v0 + 352))
  {
    v1 = *(v0 + 176);
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 176);
    v6 = *(v0 + 120);
    v7 = *(v0 + 128);
    if (v4)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Wait for the schdeuled background task to be triggered to make pending actions request.", v8, 2u);
    }

    (*(v7 + 8))(v5, v6);
    goto LABEL_5;
  }

  v23 = *(v0 + 168);
  defaultLogger()();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "No upload assets to upload to cloudkit, continuing with the proofing session update from the background task", v26, 2u);
  }

  v27 = *(v0 + 200);
  v28 = *(v0 + 168);
  v29 = *(v0 + 120);
  v30 = *(v0 + 128);
  v31 = *(v0 + 96);
  v32 = *(v0 + 104);
  v33 = *(v0 + 88);

  v34 = *(v30 + 8);
  *(v0 + 256) = v34;
  v34(v28, v29);
  ProofingSession.createdAt.getter();
  if ((*(v32 + 48))(v33, 1, v31) == 1)
  {
    v35 = *(v0 + 160);
    sub_10000BE18(*(v0 + 88), &unk_100849400, &unk_1006BFBB0);
    defaultLogger()();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 160);
    v40 = *(v0 + 120);
    if (v38)
    {
      v41 = *(v0 + 128) + 8;
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "createdDate doesn't exist in the storedProofingSession, exiting idp background activity", v42, 2u);
    }

    v34(v39, v40);
    goto LABEL_5;
  }

  (*(*(v0 + 104) + 32))(*(v0 + 112), *(v0 + 88), *(v0 + 96));
  v51 = [objc_opt_self() standardUserDefaults];
  v52._countAndFlagsBits = static DaemonInternalDefaultsKeys.clearManualCheckTime.getter();
  v53 = NSUserDefaults.internalBool(forKey:)(v52);

  if (v53)
  {
    v54 = *(v0 + 152);
    defaultLogger()();
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "Skipping the time elapsed check as the clearManualCheckTime internal setting has been enabled", v57, 2u);
    }

    v58 = *(v0 + 200);
    v59 = *(v0 + 152);
    v60 = *(v0 + 120);
    v61 = *(v0 + 128);

    v34(v59, v60);
    v62 = ProofingSession.proofingSessionID.getter();
    v64 = v63;
    *(v0 + 264) = v63;
    ProofingSession.target.getter();
    v65 = IdentityTarget.init(rawValue:)();
    v67 = v66;
    v68 = swift_task_alloc();
    *(v0 + 272) = v68;
    *v68 = v0;
    v69 = sub_10027FF30;
    goto LABEL_22;
  }

  v71 = *(v0 + 344);
  v73 = *(v0 + 72);
  v72 = *(v0 + 80);
  v74 = *(v0 + 56);
  v75 = *(v0 + 64);
  v76 = *(v0 + 40);
  (*(v0 + 32))();
  v77 = *(v75 + 104);
  *(v0 + 288) = v77;
  *(v0 + 296) = (v75 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v105 = v77;
  v77(v73, v71, v74);
  LOBYTE(v76) = static DIPBackgroundDeferralStatus.== infix(_:_:)();
  v78 = *(v75 + 8);
  *(v0 + 304) = v78;
  *(v0 + 312) = (v75 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v78(v73, v74);
  v78(v72, v74);
  if (v76)
  {
    goto LABEL_27;
  }

  v79 = *(v0 + 200);
  v80 = *(v0 + 112);
  ProofingSession.manualCheckInterval.getter();
  if ((sub_1002825C0() & 1) == 0)
  {
    v95 = *(v0 + 200);
    v97 = *(v0 + 104);
    v96 = *(v0 + 112);
    v98 = *(v0 + 96);
    v99 = *(*(v0 + 24) + 24);

    ProofingSession.manualCheckInterval.getter();
    sub_1002FA39C();

    (*(v97 + 8))(v96, v98);
LABEL_5:
    v9 = *(v0 + 208);
    v10 = *(v0 + 232) + 1;
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    if (v10 == v9)
    {
      v11 = *(v0 + 200);
      v12 = *(v0 + 168);
      v13 = *(v0 + 176);
      v15 = *(v0 + 152);
      v14 = *(v0 + 160);
      v17 = *(v0 + 136);
      v16 = *(v0 + 144);
      v18 = *(v0 + 112);
      v20 = *(v0 + 80);
      v19 = *(v0 + 88);
      v104 = *(v0 + 72);

      v21 = *(v0 + 8);

      return v21();
    }

    else
    {
      v43 = *(v0 + 224);
      v44 = *(v0 + 232) + 1;
      *(v0 + 232) = v44;
      v45 = *(v0 + 192) + 16;
      v43(*(v0 + 200), *(v0 + 16) + ((*(v0 + 348) + 32) & ~*(v0 + 348)) + *(v0 + 216) * v44, *(v0 + 184));
      v46 = swift_task_alloc();
      *(v0 + 240) = v46;
      *v46 = v0;
      v46[1] = sub_10027F59C;
      v47 = *(v0 + 200);
      v48 = *(v0 + 32);
      v49 = *(v0 + 40);
      v50 = *(v0 + 24);

      return sub_10027CD60(v47, v48, v49);
    }
  }

  v81 = *(v0 + 144);
  defaultLogger()();
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&_mh_execute_header, v82, v83, "Manual check time has elapsed. Will update proofing...", v84, 2u);
  }

  v103 = *(v0 + 344);
  v85 = v82;
  v86 = *(v0 + 120);
  v87 = *(v0 + 128);
  v88 = *(v0 + 72);
  v89 = *(v0 + 80);
  v90 = *(v0 + 56);
  v101 = *(v0 + 40);
  v102 = *(v0 + 144);
  v100 = *(v0 + 32);

  v91 = (v34)(v102, v86);
  v100(v91);
  v105(v88, v103, v90);
  LOBYTE(v86) = static DIPBackgroundDeferralStatus.== infix(_:_:)();
  v78(v88, v90);
  v78(v89, v90);
  if (v86)
  {
LABEL_27:
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    goto LABEL_5;
  }

  v92 = *(v0 + 200);
  v62 = ProofingSession.proofingSessionID.getter();
  v64 = v93;
  *(v0 + 320) = v93;
  ProofingSession.target.getter();
  v65 = IdentityTarget.init(rawValue:)();
  v67 = v94;
  v68 = swift_task_alloc();
  *(v0 + 328) = v68;
  *v68 = v0;
  v69 = sub_100280258;
LABEL_22:
  v68[1] = v69;
  v70 = *(v0 + 24);

  return sub_100276F1C(v62, v64, v65, v67 & 1);
}

uint64_t sub_10027FF30()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 264);

  if (v0)
  {
    v6 = sub_1002807B8;
  }

  else
  {
    v6 = sub_100280064;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100280064()
{
  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  v1 = *(v0 + 208);
  v2 = *(v0 + 232) + 1;
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
  if (v2 == v1)
  {
    v3 = *(v0 + 200);
    v4 = *(v0 + 168);
    v5 = *(v0 + 176);
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    v9 = *(v0 + 136);
    v8 = *(v0 + 144);
    v10 = *(v0 + 112);
    v12 = *(v0 + 80);
    v11 = *(v0 + 88);
    v23 = *(v0 + 72);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v15 = *(v0 + 224);
    v16 = *(v0 + 232) + 1;
    *(v0 + 232) = v16;
    v17 = *(v0 + 192) + 16;
    v15(*(v0 + 200), *(v0 + 16) + ((*(v0 + 348) + 32) & ~*(v0 + 348)) + *(v0 + 216) * v16, *(v0 + 184));
    v18 = swift_task_alloc();
    *(v0 + 240) = v18;
    *v18 = v0;
    v18[1] = sub_10027F59C;
    v19 = *(v0 + 200);
    v20 = *(v0 + 32);
    v21 = *(v0 + 40);
    v22 = *(v0 + 24);

    return sub_10027CD60(v19, v20, v21);
  }
}

uint64_t sub_100280258()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 336) = v0;

  v5 = *(v2 + 320);

  if (v0)
  {
    v6 = sub_1002808F0;
  }

  else
  {
    v6 = sub_10028038C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10028038C()
{
  v1 = *(v0 + 136);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Pending actions request complete from Identity Proofing Background activity", v4, 2u);
  }

  v42 = *(v0 + 304);
  v43 = *(v0 + 312);
  v40 = *(v0 + 288);
  v41 = *(v0 + 296);
  v38 = *(v0 + 256);
  v39 = *(v0 + 344);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v7 = *(v0 + 120);
  v8 = *(v0 + 104);
  v44 = *(v0 + 96);
  v45 = *(v0 + 112);
  v10 = *(v0 + 72);
  v9 = *(v0 + 80);
  v11 = *(v0 + 56);
  v12 = v2;
  v14 = *(v0 + 32);
  v13 = *(v0 + 40);

  v15 = v38(v5, v7);
  v14(v15);
  v40(v10, v39, v11);
  static DIPBackgroundDeferralStatus.== infix(_:_:)();
  v42(v10, v11);
  v42(v9, v11);
  (*(v8 + 8))(v45, v44);
  v16 = *(v0 + 208);
  v17 = *(v0 + 232) + 1;
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
  if (v17 == v16)
  {
    v18 = *(v0 + 200);
    v19 = *(v0 + 168);
    v20 = *(v0 + 176);
    v22 = *(v0 + 152);
    v21 = *(v0 + 160);
    v24 = *(v0 + 136);
    v23 = *(v0 + 144);
    v25 = *(v0 + 112);
    v27 = *(v0 + 80);
    v26 = *(v0 + 88);
    v46 = *(v0 + 72);

    v28 = *(v0 + 8);

    return v28();
  }

  else
  {
    v30 = *(v0 + 224);
    v31 = *(v0 + 232) + 1;
    *(v0 + 232) = v31;
    v32 = *(v0 + 192) + 16;
    v30(*(v0 + 200), *(v0 + 16) + ((*(v0 + 348) + 32) & ~*(v0 + 348)) + *(v0 + 216) * v31, *(v0 + 184));
    v33 = swift_task_alloc();
    *(v0 + 240) = v33;
    *v33 = v0;
    v33[1] = sub_10027F59C;
    v34 = *(v0 + 200);
    v35 = *(v0 + 32);
    v36 = *(v0 + 40);
    v37 = *(v0 + 24);

    return sub_10027CD60(v34, v35, v36);
  }
}

uint64_t sub_100280698()
{
  v1 = v0[31];
  v2 = v0[22];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[17];
  v8 = v0[14];
  v12 = v0[11];
  v13 = v0[10];
  v14 = v0[9];
  v9 = v0[6];
  (*(v0[24] + 8))(v0[25], v0[23]);
  *v9 = v1;

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002807B8()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[35];
  v2 = v0[22];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[17];
  v8 = v0[14];
  v12 = v0[11];
  v13 = v0[10];
  v14 = v0[9];
  v9 = v0[6];
  (*(v0[24] + 8))(v0[25], v0[23]);
  *v9 = v1;

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002808F0()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[42];
  v2 = v0[22];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[17];
  v8 = v0[14];
  v12 = v0[11];
  v13 = v0[10];
  v14 = v0[9];
  v9 = v0[6];
  (*(v0[24] + 8))(v0[25], v0[23]);
  *v9 = v1;

  v10 = v0[1];

  return v10();
}

void *sub_100280A28()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  sub_10000BB78(v0 + 5);
  sub_10000BB78(v0 + 10);
  v4 = OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_locale;
  v5 = type metadata accessor for Locale();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_workflowProvider);

  v7 = *(v0 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_assetProvider);

  v8 = *(v0 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_proofingUpdateManager);

  sub_10000BB78((v0 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_connectToWifiAlertProvider));
  v9 = *(v0 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_pendingProvisioning);

  v10 = *(v0 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_passManager);

  v11 = *(v0 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_cleanupProvider);

  v12 = *(v0 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_pendingActionsFlowFactory);

  v13 = *(v0 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_databaseProvider);

  return v0;
}

uint64_t sub_100280B40()
{
  sub_100280A28();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IdentityProofingBackgroundActivityProvider()
{
  result = qword_10083E850;
  if (!qword_10083E850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100280BEC()
{
  result = type metadata accessor for Locale();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100280CBC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100280D10(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100027B9C;

  return sub_10027F170(a1, v6, v7, v9, v8, a2);
}

uint64_t sub_100280DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[30] = a2;
  v3[31] = a3;
  v3[29] = a1;
  v4 = type metadata accessor for Logger();
  v3[32] = v4;
  v5 = *(v4 - 8);
  v3[33] = v5;
  v6 = *(v5 + 64) + 15;
  v3[34] = swift_task_alloc();

  return _swift_task_switch(sub_100280E9C, 0, 0);
}

uint64_t sub_100280E9C()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_100031B5C(&v1[4], (v0 + 2));
  os_unfair_lock_unlock(v1 + 54);
  v2 = v0[30];
  v3 = v0[31];
  v4 = v0[29];
  v5 = v0[9];
  v0[35] = v5;

  sub_100031918((v0 + 2));
  v6 = swift_allocObject();
  v0[36] = v6;
  v6[2] = v4;
  v6[3] = v2;
  v6[4] = v3;
  v7 = *(v5 + 16);
  v8 = swift_allocObject();
  v0[37] = v8;
  *(v8 + 16) = sub_1002828A8;
  *(v8 + 24) = v6;
  v9 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

  v10 = swift_task_alloc();
  v0[38] = v10;
  v11 = sub_100007224(&qword_10084A1D0, &qword_1006DB410);
  *v10 = v0;
  v10[1] = sub_100281078;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 27, sub_100267AC8, v8, v11);
}

uint64_t sub_100281078()
{
  v2 = *(*v1 + 304);
  v3 = *v1;
  v3[39] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002811E8, 0, 0);
  }

  else
  {
    v4 = v3[36];
    v5 = v3[37];
    v6 = v3[35];

    v7 = v3[27];
    v8 = v3[28];
    v9 = v3[34];

    v10 = v3[1];

    return v10(v7, v8);
  }
}

uint64_t sub_1002811E8()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[32];
  v7 = v0[33];

  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v7 + 8))(v5, v6);
  v8 = v0[34];

  v9 = v0[1];

  return v9(0, 0);
}

uint64_t sub_1002812C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 377) = a4;
  *(v4 + 256) = a2;
  *(v4 + 264) = a3;
  *(v4 + 248) = a1;
  v5 = type metadata accessor for Logger();
  *(v4 + 272) = v5;
  v6 = *(v5 - 8);
  *(v4 + 280) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 288) = swift_task_alloc();
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();

  return _swift_task_switch(sub_1002813B8, 0, 0);
}

uint64_t sub_1002813B8()
{
  v55 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 256);
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 320);
  v7 = *(v0 + 272);
  v8 = *(v0 + 280);
  if (v5)
  {
    v10 = *(v0 + 248);
    v9 = *(v0 + 256);
    v53 = *(v0 + 320);
    v11 = v2;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v54 = v13;
    *v12 = 136315138;
    v14 = v9 == 0;
    if (v9)
    {
      v15 = v10;
    }

    else
    {
      v15 = 7104878;
    }

    if (v14)
    {
      v16 = 0xE300000000000000;
    }

    else
    {
      v16 = v11;
    }

    v17 = sub_100141FE4(v15, v16, &v54);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "Checking if the data has to be cleared for proofingSession with ID %s", v12, 0xCu);
    sub_10000BB78(v13);

    v2 = v11;

    v18 = *(v8 + 8);
    v18(v53, v7);
  }

  else
  {

    v18 = *(v8 + 8);
    v18(v6, v7);
  }

  *(v0 + 328) = v18;
  v19 = [objc_opt_self() standardUserDefaults];
  v20._countAndFlagsBits = static DaemonInternalDefaultsKeys.clearProvisioningRetryTimeout.getter();
  v21 = NSUserDefaults.internalBool(forKey:)(v20);

  if (v21)
  {
    v22 = *(v0 + 312);
    defaultLogger()();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 312);
    v27 = *(v0 + 272);
    v28 = *(v0 + 280);
    if (v25)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = "ClearProvisioningRetryTimeout Interval setting has been enabled.";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v23, v24, v30, v29, 2u);

      goto LABEL_20;
    }

    goto LABEL_20;
  }

  if (!*(v0 + 256))
  {
    v34 = *(v0 + 288);
    defaultLogger()();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    v35 = os_log_type_enabled(v23, v24);
    v36 = *(v0 + 280);
    v26 = *(v0 + 288);
    v27 = *(v0 + 272);
    if (v35)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = "Unable to update proofing as proofingSessionID doesn't exist";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (*(v0 + 377))
  {
    v31 = *(v0 + 296);
    defaultLogger()();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    v32 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 296);
    v27 = *(v0 + 272);
    v33 = *(v0 + 280);
    if (v32)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = "Unable to update proofing as target doesn't exist";
      goto LABEL_19;
    }

LABEL_20:

    v18(v26, v27);
    v38 = *(v0 + 312);
    v37 = *(v0 + 320);
    v40 = *(v0 + 296);
    v39 = *(v0 + 304);
    v41 = *(v0 + 288);

    v42 = *(v0 + 8);

    return v42(v21);
  }

  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v44 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v44 + 54);
  sub_100031B5C(&v44[4], v0 + 16);
  os_unfair_lock_unlock(v44 + 54);
  v45 = *(v0 + 264);
  v46 = *(v0 + 248);
  v47 = *(v0 + 72);
  *(v0 + 336) = v47;

  sub_100031918(v0 + 16);
  v48 = swift_allocObject();
  *(v0 + 344) = v48;
  v48[2] = v46;
  v48[3] = v2;
  v48[4] = v45;
  v49 = *(v47 + 16);
  v50 = swift_allocObject();
  *(v0 + 352) = v50;
  *(v50 + 16) = sub_100282850;
  *(v50 + 24) = v48;
  v51 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

  v52 = swift_task_alloc();
  *(v0 + 360) = v52;
  *v52 = v0;
  v52[1] = sub_1002818F8;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 376, sub_10017F7F4, v50, &type metadata for Bool);
}

uint64_t sub_1002818F8()
{
  v2 = *(*v1 + 360);
  v3 = *v1;
  *(v3 + 368) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100281A98, 0, 0);
  }

  else
  {
    v4 = *(v3 + 344);
    v5 = *(v3 + 352);
    v6 = *(v3 + 336);

    v7 = *(v3 + 376);
    v9 = *(v3 + 312);
    v8 = *(v3 + 320);
    v11 = *(v3 + 296);
    v10 = *(v3 + 304);
    v12 = *(v3 + 288);

    v13 = *(v3 + 8);

    return v13(v7);
  }
}

uint64_t sub_100281A98()
{
  v34 = v0;
  v1 = v0[46];
  v2 = v0[43];
  v3 = v0[44];
  v4 = v0[42];
  v5 = v0[38];

  defaultLogger()();
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[46];
    v31 = v0[38];
    v32 = v0[41];
    v10 = v0[34];
    v9 = v0[35];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v14 = v0[27];
    v13 = v0[28];
    v15 = v0[29];
    v16 = Error.localizedDescription.getter();
    v18 = sub_100141FE4(v16, v17, &v33);

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "received an error while checking if data has to be cleared. %s", v11, 0xCu);
    sub_10000BB78(v12);

    v32(v31, v10);
  }

  else
  {
    v19 = v0[46];
    v20 = v0[41];
    v21 = v0[38];
    v22 = v0[34];
    v23 = v0[35];

    v20(v21, v22);
  }

  v25 = v0[39];
  v24 = v0[40];
  v27 = v0[37];
  v26 = v0[38];
  v28 = v0[36];

  v29 = v0[1];

  return v29(0);
}

uint64_t sub_100281CC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 376) = a4;
  *(v5 + 232) = a3;
  *(v5 + 240) = a5;
  *(v5 + 216) = a1;
  *(v5 + 224) = a2;
  v6 = type metadata accessor for Logger();
  *(v5 + 248) = v6;
  v7 = *(v6 - 8);
  *(v5 + 256) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 272) = swift_task_alloc();
  *(v5 + 280) = swift_task_alloc();
  v9 = type metadata accessor for DIPError.Code();
  *(v5 + 288) = v9;
  v10 = *(v9 - 8);
  *(v5 + 296) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 304) = swift_task_alloc();
  v12 = type metadata accessor for DIPError();
  *(v5 + 312) = v12;
  v13 = *(v12 - 8);
  *(v5 + 320) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 328) = swift_task_alloc();

  return _swift_task_switch(sub_100281E5C, 0, 0);
}

uint64_t sub_100281E5C()
{
  v1 = *(v0 + 224);
  if (!v1)
  {
    v11 = *(v0 + 264);
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    v12 = os_log_type_enabled(v3, v4);
    v8 = *(v0 + 256);
    v6 = *(v0 + 264);
    v7 = *(v0 + 248);
    if (v12)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Unable to clearProofingSession as proofingSessionID doesn't exist";
      goto LABEL_7;
    }

LABEL_8:

    (*(v8 + 8))(v6, v7);
    v13 = *(v0 + 328);
    v14 = *(v0 + 304);
    v16 = *(v0 + 272);
    v15 = *(v0 + 280);
    v17 = *(v0 + 264);

    v18 = *(v0 + 8);

    return v18();
  }

  if (*(v0 + 376))
  {
    v2 = *(v0 + 272);
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 272);
    v7 = *(v0 + 248);
    v8 = *(v0 + 256);
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Unable to update proofing as target doesn't exist";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v3, v4, v10, v9, 2u);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v20 = qword_100832B60;
  v21 = *(v0 + 224);

  if (v20 != -1)
  {
    swift_once();
  }

  v22 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v22 + 54);
  sub_100031B5C(&v22[4], v0 + 16);
  os_unfair_lock_unlock(v22 + 54);
  v24 = *(v0 + 232);
  v23 = *(v0 + 240);
  v25 = *(v0 + 216);
  v26 = *(v0 + 72);
  *(v0 + 336) = v26;

  sub_100031918(v0 + 16);
  v27 = swift_allocObject();
  *(v0 + 344) = v27;
  v27[2] = v25;
  v27[3] = v1;
  v27[4] = v24;
  v27[5] = v23;
  v28 = *(v26 + 16);
  v29 = swift_allocObject();
  *(v0 + 352) = v29;
  *(v29 + 16) = sub_100282810;
  *(v29 + 24) = v27;
  v30 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

  v31 = swift_task_alloc();
  *(v0 + 360) = v31;
  *v31 = v0;
  v31[1] = sub_1002821A4;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v31, sub_10017F710, v29, &type metadata for () + 8);
}

uint64_t sub_1002821A4()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v9 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v4 = sub_100282368;
  }

  else
  {
    v6 = v2[43];
    v5 = v2[44];
    v7 = v2[42];

    v4 = sub_1002822D4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002822D4()
{
  v1 = v0[41];
  v2 = v0[38];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[33];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100282368()
{
  v1 = v0[46];
  v2 = v0[43];
  v3 = v0[44];
  v4 = v0[42];
  v5 = v0[40];
  v18 = v0[41];
  v19 = v0[39];
  v6 = v0[37];
  v7 = v0[38];
  v8 = v0[35];
  v9 = v0[36];
  v20 = v0[32];
  v21 = v0[31];

  (*(v6 + 104))(v7, enum case for DIPError.Code.internalError(_:), v9);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10017F790(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v5 + 16))(v10, v18, v19);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v20 + 8))(v8, v21);
  (*(v5 + 8))(v18, v19);

  v11 = v0[41];
  v12 = v0[38];
  v14 = v0[34];
  v13 = v0[35];
  v15 = v0[33];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1002825C0()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v16 = v0;
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "checking if the manual check interval has elapsed...", v12, 2u);
    v0 = v16;
  }

  (*(v6 + 8))(v9, v5);
  Date.init()();
  v13 = Date.isAtLeast(seconds:after:)();
  (*(v1 + 8))(v4, v0);
  return v13 & 1;
}

uint64_t sub_1002827D8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100282870()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1002828E4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x7972746E756F63;
    v6 = 0x6E69747465537861;
    if (a1 != 8)
    {
      v6 = 1701736302;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000010;
    if (a1 != 5)
    {
      v7 = 0xD000000000000012;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 6645601;
    v2 = 0x6574617473;
    v3 = 1701011826;
    if (a1 != 3)
    {
      v3 = 0x656E6F546E696B73;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 7890291;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100282A04(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1002828E4(*a1);
  v5 = v4;
  if (v3 == sub_1002828E4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100282A8C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1002828E4(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100282AF0()
{
  sub_1002828E4(*v0);
  String.hash(into:)();
}

Swift::Int sub_100282B44()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1002828E4(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100282BA4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100285200(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100282BD4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1002828E4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_100282C00(uint64_t a1)
{
  v2 = sub_100007224(&qword_10083EBD8, &qword_1006DC2B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v28 - v4;
  v36 = sub_100007224(&qword_10083EBE0, &qword_1006DC2B8);
  v6 = *(v36 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v36);
  v31 = &v28 - v8;
  v9 = sub_100007224(&qword_10083EBE8, &qword_1006DC2C0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v28 - v15;
  v41 = &_swiftEmptySetSingleton;
  sub_100007224(&qword_10083EBF0, &qword_1006DC2C8);
  v17 = sub_1000BA30C(&qword_10083EBF8, &qword_10083EBE8, &qword_1006DC2C0);
  v38 = v16;
  v35 = v17;
  Regex.init<A>(_:)();
  v18 = *(a1 + 16);
  if (v18)
  {
    v37 = (v10 + 8);
    v33 = v6 + 56;
    v34 = v5;
    v32 = (v6 + 48);
    v29 = (v6 + 8);
    v30 = (v6 + 32);
    v19 = (a1 + 40);
    do
    {
      v21 = *(v19 - 1);
      v20 = *v19;

      dispatch thunk of RegexComponent.regex.getter();
      String.subscript.getter();

      v22 = v34;
      Regex.wholeMatch(in:)();
      v23 = *v37;
      (*v37)(v14, v9);

      v24 = v36;
      if ((*v32)(v22, 1, v36) == 1)
      {
        sub_10000BE18(v22, &qword_10083EBD8, &qword_1006DC2B0);
      }

      else
      {
        v25 = v31;
        (*v30)(v31, v22, v24);
        swift_getKeyPath();
        Regex.Match.subscript.getter();

        sub_1001516C4(v40, v39);
        (*v29)(v25, v24);
      }

      v19 += 2;
      --v18;
    }

    while (v18);
    v26 = v41;
  }

  else
  {
    v23 = *(v10 + 8);
    v26 = &_swiftEmptySetSingleton;
  }

  v23(v38, v9);
  return v26;
}

uint64_t sub_100283090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v118 = sub_100007224(&qword_10083EC00, &qword_1006DC2F0);
  v119 = *(v118 - 8);
  v3 = *(v119 + 8);
  v4 = __chkstk_darwin(v118);
  v109 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v110 = &v96 - v6;
  v114 = sub_100007224(&qword_10083EBE8, &qword_1006DC2C0);
  v115 = *(v114 - 8);
  v7 = *(v115 + 64);
  __chkstk_darwin(v114);
  v126 = &v96 - v8;
  v9 = sub_100007224(&qword_10083EC08, &qword_1006DC2F8);
  v10 = *(v9 - 8);
  v135 = v9;
  v136 = v10;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v111 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v137 = &v96 - v14;
  v125 = sub_100007224(&qword_10083EC10, &qword_1006DC300);
  v134 = *(v125 - 8);
  v15 = *(v134 + 64);
  v16 = __chkstk_darwin(v125);
  v113 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v112 = &v96 - v19;
  v20 = __chkstk_darwin(v18);
  v127 = &v96 - v21;
  __chkstk_darwin(v20);
  v117 = &v96 - v22;
  v128 = type metadata accessor for _RegexFactory();
  v23 = *(v128 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v128);
  v26 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100007224(&qword_10083EC18, &qword_1006DC308);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v96 - v29;
  v31 = type metadata accessor for CharacterClass();
  v132 = *(v31 - 8);
  v32 = *(v132 + 64);
  __chkstk_darwin(v31);
  v34 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_100007224(&qword_10083EC20, &qword_1006DC310);
  v131 = *(v121 - 8);
  v35 = *(v131 + 64);
  __chkstk_darwin(v121);
  v120 = &v96 - v36;
  v130 = sub_100007224(&qword_10083EC28, &qword_1006DC318);
  v140 = *(v130 - 8);
  v37 = *(v140 + 64);
  v38 = __chkstk_darwin(v130);
  v108 = &v96 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v139 = &v96 - v41;
  __chkstk_darwin(v40);
  v133 = &v96 - v42;
  v97 = a1;
  v43 = *(a1 + 32);
  v141 = *(a1 + 24);
  v142 = v43;
  v107 = sub_1000348F4();
  static RegexComponentBuilder.buildExpression<A>(_:)();
  static RegexComponent<>.any.getter();
  v44 = type metadata accessor for RegexRepetitionBehavior();
  v45 = *(v44 - 8);
  v46 = *(v45 + 56);
  v47 = v45 + 56;
  v123 = v44;
  v46(v30, 1, 1, v44);
  v99 = v47;
  v100 = v46;
  makeFactory()();
  v106 = sub_100285254();
  v101 = v34;
  v48 = v31;
  v102 = v31;
  _RegexFactory.oneOrMore<A, B>(_:_:)();
  v138 = *(v23 + 8);
  v49 = v128;
  v138(v26, v128);
  v129 = v23 + 8;
  v50 = v30;
  sub_10000BE18(v30, &qword_10083EC18, &qword_1006DC308);
  v51 = *(v132 + 8);
  v132 += 8;
  v105 = v51;
  v51(v34, v48);
  v52 = v120;
  v53 = v117;
  OneOrMore.init(_:)();
  v96 = v50;
  v46(v50, 1, 1, v44);
  makeFactory()();
  v104 = sub_1000BA30C(&qword_10083EC38, &qword_10083EC20, &qword_1006DC310);
  v54 = v53;
  v55 = v52;
  v56 = v121;
  _RegexFactory.zeroOrOne<A, B>(_:_:)();
  v138(v26, v49);
  sub_10000BE18(v50, &qword_10083EC18, &qword_1006DC308);
  v57 = *(v131 + 8);
  v131 += 8;
  v103 = v57;
  v57(v55, v56);
  v58 = v139;
  Optionally.init(_:)();
  v122 = sub_1000BA30C(&qword_10083EC40, &qword_10083EC28, &qword_1006DC318);
  v59 = v130;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v60 = *(v140 + 8);
  v140 += 8;
  v124 = v60;
  v60(v58, v59);

  makeFactory()();
  v61 = v109;
  ChoiceOf.init(_:)();
  sub_1000BA30C(&qword_10083EC48, &qword_10083EC00, &qword_1006DC2F0);
  v62 = v110;
  v63 = v61;
  v64 = v118;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v65 = *(v119 + 1);
  v65(v63, v64);
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  v65(v62, v64);
  v66 = sub_100007224(&qword_10083EBF0, &qword_1006DC2C8);
  v110 = &protocol conformance descriptor for Regex<A>;
  v118 = sub_1000BA30C(&qword_10083EC50, &qword_10083EC10, &qword_1006DC300);
  v67 = v125;
  v98 = v66;
  _RegexFactory.capture<A, B, C, D>(_:_:_:)();

  v68 = *(v134 + 8);
  v134 += 8;
  v119 = v68;
  v68(v54, v67);
  v69 = v128;
  v70 = v138;
  v138(v26, v128);
  v71 = v111;
  Capture.init(_:)();
  v97 = sub_1000BA30C(&qword_10083EC58, &qword_10083EC08, &qword_1006DC2F8);
  v72 = v135;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v73 = *(v136 + 8);
  v136 += 8;
  v109 = v73;
  (v73)(v71, v72);
  v74 = v101;
  static RegexComponent<>.any.getter();
  v75 = v96;
  v76 = v100;
  v100(v96, 1, 1, v123);
  makeFactory()();
  v77 = v102;
  _RegexFactory.oneOrMore<A, B>(_:_:)();
  v70(v26, v69);
  sub_10000BE18(v75, &qword_10083EC18, &qword_1006DC308);
  v105(v74, v77);
  v78 = v120;
  OneOrMore.init(_:)();
  v76(v75, 1, 1, v123);
  makeFactory()();
  v79 = v121;
  _RegexFactory.zeroOrOne<A, B>(_:_:)();
  v80 = v69;
  v70(v26, v69);
  sub_10000BE18(v75, &qword_10083EC18, &qword_1006DC308);
  v103(v78, v79);
  v81 = v108;
  Optionally.init(_:)();
  v82 = v130;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v124(v81, v82);
  v141 = v143;
  v142 = v144;
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();

  makeFactory()();
  v83 = v112;
  v84 = v125;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  v85 = v113;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  v86 = v84;
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v87 = v119;
  v119(v85, v84);
  v87(v83, v84);
  v88 = v138;
  v138(v26, v80);
  makeFactory()();
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  v89 = v126;
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v90 = v119;
  v119(v83, v86);
  v88(v26, v80);
  makeFactory()();
  v91 = v130;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  sub_1000BA30C(&qword_10083EBF8, &qword_10083EBE8, &qword_1006DC2C0);
  v92 = v89;
  v93 = v114;
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v90(v83, v86);
  v138(v26, v128);
  (*(v115 + 8))(v92, v93);
  v90(v127, v86);
  v90(v117, v86);
  v94 = v124;
  v124(v139, v91);
  (v109)(v137, v135);
  return v94(v133, v91);
}

uint64_t sub_100284080@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_100007224(&qword_10083EC10, &qword_1006DC300);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v54 = type metadata accessor for _RegexFactory();
  v53 = *(v54 - 8);
  v5 = *(v53 + 64);
  __chkstk_darwin(v54);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007224(&qword_10083EC00, &qword_1006DC2F0);
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  v10 = __chkstk_darwin(v8);
  v42 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v51 = &v40 - v13;
  v14 = __chkstk_darwin(v12);
  v50 = &v40 - v15;
  v16 = __chkstk_darwin(v14);
  v49 = &v40 - v17;
  v18 = __chkstk_darwin(v16);
  v48 = &v40 - v19;
  v20 = __chkstk_darwin(v18);
  v47 = &v40 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v40 - v23;
  __chkstk_darwin(v22);
  v26 = &v40 - v25;
  v71 = 6645601;
  v72 = 0xE300000000000000;
  v27 = sub_1000348F4();
  static AlternationBuilder.buildExpression<A>(_:)();
  v69 = 7890291;
  v70 = 0xE300000000000000;
  static AlternationBuilder.buildExpression<A>(_:)();
  v67 = 0x6574617473;
  v68 = 0xE500000000000000;
  static AlternationBuilder.buildExpression<A>(_:)();
  v65 = 1701011826;
  v66 = 0xE400000000000000;
  static AlternationBuilder.buildExpression<A>(_:)();
  v63 = 0xD000000000000012;
  v64 = 0x80000001006FA480;
  static AlternationBuilder.buildExpression<A>(_:)();
  v61 = 0x7972746E756F63;
  v62 = 0xE700000000000000;
  static AlternationBuilder.buildExpression<A>(_:)();
  v59 = 0x6E69747465537861;
  v60 = 0xEA00000000007367;
  static AlternationBuilder.buildExpression<A>(_:)();
  v28 = a1[6];
  v57 = a1[5];
  v58 = v28;
  static AlternationBuilder.buildExpression<A>(_:)();
  v29 = a1[8];
  v55 = a1[7];
  v56 = v29;
  static AlternationBuilder.buildExpression<A>(_:)();
  v55 = v73;
  v56 = v74;
  v41 = v26;
  v52 = v27;
  static AlternationBuilder.buildPartialBlock<A>(first:)();

  v55 = v71;
  v56 = v72;
  makeFactory()();
  v30 = v8;
  v31 = sub_1000BA30C(&qword_10083EC48, &qword_10083EC00, &qword_1006DC2F0);
  _RegexFactory.accumulateAlternation<A, B, C>(_:_:)();
  v32 = *(v53 + 8);
  v53 += 8;
  v33 = v54;
  v32(v7, v54);

  v40 = v24;
  ChoiceOf.init(_:)();
  v55 = v69;
  v56 = v70;
  makeFactory()();
  v45 = v30;
  v46 = v31;
  _RegexFactory.accumulateAlternation<A, B, C>(_:_:)();
  v32(v7, v33);

  ChoiceOf.init(_:)();
  v55 = v67;
  v56 = v68;
  makeFactory()();
  _RegexFactory.accumulateAlternation<A, B, C>(_:_:)();
  v34 = v54;
  v32(v7, v54);

  ChoiceOf.init(_:)();
  v55 = v65;
  v56 = v66;
  makeFactory()();
  _RegexFactory.accumulateAlternation<A, B, C>(_:_:)();
  v32(v7, v34);

  ChoiceOf.init(_:)();
  v55 = v63;
  v56 = v64;
  makeFactory()();
  _RegexFactory.accumulateAlternation<A, B, C>(_:_:)();
  v32(v7, v34);

  ChoiceOf.init(_:)();
  v55 = v61;
  v56 = v62;
  makeFactory()();
  v35 = v45;
  _RegexFactory.accumulateAlternation<A, B, C>(_:_:)();
  v32(v7, v34);

  ChoiceOf.init(_:)();
  v55 = v59;
  v56 = v60;
  makeFactory()();
  _RegexFactory.accumulateAlternation<A, B, C>(_:_:)();
  v36 = v54;
  v32(v7, v54);

  v37 = v42;
  ChoiceOf.init(_:)();
  v55 = v57;
  v56 = v58;
  makeFactory()();
  _RegexFactory.accumulateAlternation<A, B, C>(_:_:)();
  v32(v7, v36);

  ChoiceOf.init(_:)();
  v38 = *(v43 + 8);
  v38(v37, v35);
  v38(v51, v35);
  v38(v50, v35);
  v38(v49, v35);
  v38(v48, v35);
  v38(v47, v35);
  v38(v40, v35);
  return (v38)(v41, v35);
}

unint64_t sub_1002849E0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  if (static String._fromSubstring(_:)() == a2[5] && v9 == a2[6])
  {

    goto LABEL_13;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
LABEL_13:
    v16 = 4;
    goto LABEL_14;
  }

  if (static String._fromSubstring(_:)() == a2[7] && v13 == a2[8])
  {

    v16 = 5;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      v16 = 5;
    }

    else
    {
      v17._countAndFlagsBits = static String._fromSubstring(_:)();
      result = sub_100285200(v17);
      if (result == 10)
      {
        v16 = 9;
      }

      else
      {
        v16 = result;
      }
    }
  }

LABEL_14:
  *a3 = v16;
  return result;
}

uint64_t sub_100284B08(uint64_t a1, int a2)
{
  v3 = v2;
  v61 = a2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v55 - v10;
  defaultLogger()();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "fetchBiomeFedStatsUI: fetching biome-fedstats UI from fedStatsOptInUIElement", v14, 2u);
  }

  v15 = *(v5 + 8);
  v15(v11, v4);
  v16 = IdentityProofingUnorderedUIElement.title.getter();
  v18 = v17;
  if (v17)
  {
    v19 = v16;
  }

  else
  {
    v19 = 0;
  }

  v60 = v19;
  v20 = IdentityProofingUnorderedUIElement.messages.getter();
  if (v20)
  {
    if (v20[2])
    {
      v21 = v20[4];
      v58 = v20[5];
      v59 = v21;

      goto LABEL_11;
    }
  }

  v58 = 0;
  v59 = 0;
LABEL_11:
  v22 = IdentityProofingUnorderedUIElement.actions.getter();
  if (v22)
  {
    if (v22[2])
    {
      v23 = v22[4];
      v56 = v22[5];
      v57 = v23;

      goto LABEL_16;
    }
  }

  v56 = 0;
  v57 = 0;
LABEL_16:
  v24 = IdentityProofingUnorderedUIElement.options.getter();
  v62 = v24 >> 62;
  if (v24)
  {
    if (v24 >> 62)
    {
      v25 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v26 = _swiftEmptyArrayStorage;
    if (v25)
    {
      v55[1] = v18;
      if ((v24 & 0xC000000000000001) != 0)
      {
        v27 = v3;
        v28 = v9;
        v29 = v15;
        v30 = v4;
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_55;
        }

        v27 = v3;
        v28 = v9;
        v29 = v15;
        v30 = v4;
        v31 = *(v24 + 32);
      }

      v32 = v31;
      v33 = IdentityProofingUnorderedUIElementOption.bullets.getter();

      if (v33)
      {
        v26 = v33;
      }

      v4 = v30;
      v15 = v29;
      v9 = v28;
      v3 = v27;
    }
  }

  else
  {
    v26 = _swiftEmptyArrayStorage;
  }

  v34 = sub_100282C00(v26);

  swift_beginAccess();
  v35 = *(v3 + 16);
  *(v3 + 16) = v34;

  if (!v24)
  {
    goto LABEL_44;
  }

  v36 = v62;
  if (v62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_30;
    }
  }

  else
  {
    result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
LABEL_30:
      if ((v24 & 0xC000000000000001) != 0)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_57;
        }

        v38 = *(v24 + 32);
      }

      v39 = v38;
      v40 = IdentityProofingUnorderedUIElementOption.assessments.getter();

      v41 = v40;
      v36 = v62;
      if (v41)
      {

        swift_beginAccess();
        sub_1001516C4(&v63, 6);
        swift_endAccess();
      }
    }
  }

  if (!v36)
  {
    result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_44;
    }

LABEL_39:
    if ((v24 & 0xC000000000000001) == 0)
    {
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v42 = *(v24 + 32);
        goto LABEL_42;
      }

LABEL_57:
      __break(1u);
      return result;
    }

LABEL_55:
    v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_42:
    v43 = v42;
    v44 = IdentityProofingUnorderedUIElementOption.accessibility.getter();

    if (v44)
    {

      swift_beginAccess();
      sub_1001516C4(&v63, 8);
      swift_endAccess();
    }

    goto LABEL_44;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
    goto LABEL_39;
  }

LABEL_44:
  IdentityProofingUnorderedUIElement.learnMoreURL.getter();
  if (v61)
  {
    v45 = *(*(v3 + 16) + 16) != 0;
  }

  v46 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
  v47 = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
  defaultLogger()();
  v48 = v47;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = v15;
    v53 = swift_slowAlloc();
    *v51 = 138412290;
    *(v51 + 4) = v48;
    *v53 = v48;
    v54 = v48;
    _os_log_impl(&_mh_execute_header, v49, v50, "fetchBiomeFedStatsUI: returning biome-fedstats UI config %@", v51, 0xCu);
    sub_10000BE18(v53, &unk_100833B50, &unk_1006D8FB0);
    v15 = v52;
  }

  v15(v9, v4);
  return v48;
}

uint64_t sub_100285124()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return swift_deallocClassInstance();
}

unint64_t sub_1002851AC()
{
  result = qword_10083EBD0;
  if (!qword_10083EBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083EBD0);
  }

  return result;
}

unint64_t sub_100285200(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007FB900, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100285254()
{
  result = qword_10083EC30;
  if (!qword_10083EC30)
  {
    type metadata accessor for CharacterClass();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083EC30);
  }

  return result;
}

uint64_t sub_1002852D0@<X0>(void *a1@<X8>)
{
  v32 = type metadata accessor for ProofingSession();
  v2 = *(v32 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v32);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v29 - v7;
  v9 = type metadata accessor for DIPError.Code();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  IdentityProofingConfiguration.state.getter();
  if (!v14)
  {
    (*(v10 + 104))(v13, enum case for DIPError.Code.idStateUnavailable(_:), v9);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  v15 = String.lowercased()();

  v16 = v31;
  v17 = sub_1005795AC(v15._countAndFlagsBits, v15._object);
  if (v16)
  {
  }

  v19 = v17;

  if (!(v19 >> 62))
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_7;
    }

LABEL_20:

    *a1 = _swiftEmptyArrayStorage;
    return result;
  }

  v20 = _CocoaArrayWrapper.endIndex.getter();
  if (!v20)
  {
    goto LABEL_20;
  }

LABEL_7:
  v31 = 0;
  v33 = _swiftEmptyArrayStorage;
  result = sub_100173040(0, v20 & ~(v20 >> 63), 0);
  if (v20 < 0)
  {
    __break(1u);
  }

  else
  {
    v30 = a1;
    v21 = v33;
    if ((v19 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v20; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        ProofingSession.init(_:)();
        v33 = v21;
        v24 = v21[2];
        v23 = v21[3];
        if (v24 >= v23 >> 1)
        {
          sub_100173040(v23 > 1, v24 + 1, 1);
          v21 = v33;
        }

        v21[2] = v24 + 1;
        (*(v2 + 32))(v21 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v24, v8, v32);
      }
    }

    else
    {
      v25 = 32;
      do
      {
        v26 = *(v19 + v25);
        ProofingSession.init(_:)();
        v33 = v21;
        v28 = v21[2];
        v27 = v21[3];
        if (v28 >= v27 >> 1)
        {
          sub_100173040(v27 > 1, v28 + 1, 1);
          v21 = v33;
        }

        v21[2] = v28 + 1;
        (*(v2 + 32))(v21 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v28, v6, v32);
        v25 += 8;
        --v20;
      }

      while (v20);
    }

    *v30 = v21;
  }

  return result;
}

uint64_t sub_100285720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100285744, 0, 0);
}

uint64_t sub_100285744()
{
  if (*(v0[3] + 16))
  {
    v1 = *(type metadata accessor for ProofingSession() - 8);
    v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v3 = ProofingSession.workflowID.getter();
    v5 = v4;
    v6 = ProofingSession.country.getter();
    if (v7)
    {
      v8 = v6;
      v9 = v7;
    }

    else
    {

      v8 = 0;
      v9 = 0xE000000000000000;
    }

    v12 = v0[3] + v2;
    v10 = ProofingSession.proofingSessionID.getter();
    v11 = v13;
  }

  else
  {

    v10 = 0;
    v11 = 0;
    v8 = 0;
    v3 = 0;
    v5 = 0;
    v9 = 0xE000000000000000;
  }

  v0[6] = v9;
  v0[7] = v5;
  v0[5] = v11;
  v14 = swift_task_alloc();
  v0[8] = v14;
  *v14 = v0;
  v14[1] = sub_1002858C4;
  v15 = v0[4];
  v16 = v0[2];

  return sub_1002890C4(v3, v5, v8, v9, v10, v11, v15);
}

uint64_t sub_1002858C4()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 48);
  v5 = *v1;

  v6 = *(v2 + 56);
  v7 = *(v2 + 40);
  if (v0)
  {
    v8 = *(v2 + 40);
  }

  else
  {
    v9 = *(v2 + 56);
  }

  v10 = *(v5 + 8);

  return v10();
}

uint64_t sub_100285A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[31] = a4;
  v5[32] = v4;
  v5[29] = a2;
  v5[30] = a3;
  v5[28] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[33] = v6;
  v7 = *(v6 - 8);
  v5[34] = v7;
  v8 = *(v7 + 64) + 15;
  v5[35] = swift_task_alloc();
  v9 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  v5[36] = swift_task_alloc();
  v10 = type metadata accessor for ProofingSession();
  v5[37] = v10;
  v11 = *(v10 - 8);
  v5[38] = v11;
  v5[39] = *(v11 + 64);
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v5[42] = v12;
  v13 = *(v12 - 8);
  v5[43] = v13;
  v14 = *(v13 + 64) + 15;
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();

  return _swift_task_switch(sub_100285C10, 0, 0);
}

uint64_t sub_100285C10()
{
  v31 = v0;
  v1 = v0[45];
  v2 = v0[31];
  v3 = v0[29];
  defaultLogger()();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[45];
  v9 = v0[42];
  v8 = v0[43];
  if (v6)
  {
    v10 = v0[30];
    v28 = v0[31];
    v12 = v0[28];
    v11 = v0[29];
    v29 = v0[45];
    v13 = swift_slowAlloc();
    v30[0] = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_100141FE4(v12, v11, v30);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_100141FE4(v10, v28, v30);
    _os_log_impl(&_mh_execute_header, v4, v5, "Proofing has been cancelled by the user, will attempt to clean up all (%s, %s proofing sessions and notify the server", v13, 0x16u);
    swift_arrayDestroy();

    v14 = *(v8 + 8);
    v14(v29, v9);
  }

  else
  {

    v14 = *(v8 + 8);
    v14(v7, v9);
  }

  v0[46] = v14;
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v15 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v15 + 54);
  sub_100031B5C(&v15[4], (v0 + 2));
  os_unfair_lock_unlock(v15 + 54);
  v17 = v0[30];
  v16 = v0[31];
  v19 = v0[28];
  v18 = v0[29];
  v20 = v0[9];
  v0[47] = v20;

  sub_100031918((v0 + 2));
  v21 = swift_allocObject();
  v0[48] = v21;
  v21[2] = v19;
  v21[3] = v18;
  v21[4] = v17;
  v21[5] = v16;
  v22 = *(v20 + 16);
  v23 = swift_allocObject();
  v0[49] = v23;
  *(v23 + 16) = sub_10028AE28;
  *(v23 + 24) = v21;
  v24 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

  v25 = swift_task_alloc();
  v0[50] = v25;
  v26 = sub_100007224(&qword_10083E3E0, &qword_1006DBCE0);
  *v25 = v0;
  v25[1] = sub_100285F64;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 27, sub_10026CBEC, v23, v26);
}

uint64_t sub_100285F64()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v9 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v4 = sub_100286574;
  }

  else
  {
    v5 = v2[48];
    v6 = v2[49];
    v7 = v2[47];

    v2[52] = v2[27];
    v4 = sub_1002860A4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002860A4()
{
  v44 = v0;
  v1 = *(v0 + 416);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 328);
    v3 = *(v0 + 296);
    v4 = *(v0 + 304);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 464) = v6;
    *(v0 + 424) = v5;
    *(v0 + 432) = v4 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v5(v2, v1 + ((v6 + 32) & ~v6), v3);
    ProofingSession.documentType.getter();
    if (v7)
    {
      v8 = IdentityDocumentType.init(documentTypeString:)();
      *(v0 + 440) = v8;
      v9 = swift_task_alloc();
      *(v0 + 448) = v9;
      *v9 = v0;
      v9[1] = sub_100286634;
      v10 = *(v0 + 416);
      v11 = *(v0 + 256);

      return sub_100287040(v10, v8);
    }

    v26 = *(v0 + 416);
    v27 = *(v0 + 328);
    v28 = *(v0 + 296);
    v29 = *(v0 + 304);
    v31 = *(v0 + 272);
    v30 = *(v0 + 280);
    v32 = *(v0 + 264);

    (*(v31 + 104))(v30, enum case for DIPError.Code.idTypeUnavailable(_:), v32);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v29 + 8))(v27, v28);
  }

  else
  {
    v13 = *(v0 + 352);
    v14 = *(v0 + 248);
    v15 = *(v0 + 232);

    defaultLogger()();

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 368);
    v21 = *(v0 + 344);
    v20 = *(v0 + 352);
    v22 = *(v0 + 336);
    if (v18)
    {
      v40 = *(v0 + 240);
      v41 = *(v0 + 248);
      v24 = *(v0 + 224);
      v23 = *(v0 + 232);
      v42 = *(v0 + 368);
      v25 = swift_slowAlloc();
      v43[0] = swift_slowAlloc();
      *v25 = 136315394;
      *(v25 + 4) = sub_100141FE4(v24, v23, v43);
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_100141FE4(v40, v41, v43);
      _os_log_impl(&_mh_execute_header, v16, v17, "IdentityProofingCancellationProvider no proofing sessions found for %s, %s", v25, 0x16u);
      swift_arrayDestroy();

      v42(v20, v22);
    }

    else
    {

      v19(v20, v22);
    }

    (*(*(v0 + 272) + 104))(*(v0 + 280), enum case for DIPError.Code.proofingSessionDoesntExist(_:), *(v0 + 264));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v34 = *(v0 + 352);
  v33 = *(v0 + 360);
  v36 = *(v0 + 320);
  v35 = *(v0 + 328);
  v38 = *(v0 + 280);
  v37 = *(v0 + 288);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_100286574()
{
  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[47];

  v4 = v0[51];
  v6 = v0[44];
  v5 = v0[45];
  v8 = v0[40];
  v7 = v0[41];
  v10 = v0[35];
  v9 = v0[36];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100286634()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v4 = *v1;
  *(*v1 + 456) = v0;

  v5 = *(v2 + 416);

  if (v0)
  {
    v6 = sub_1002869FC;
  }

  else
  {
    v6 = sub_100286768;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100286768()
{
  v17 = *(v0 + 424);
  v18 = *(v0 + 432);
  v1 = *(v0 + 464);
  v23 = *(v0 + 440);
  v24 = *(v0 + 360);
  v25 = *(v0 + 352);
  v2 = *(v0 + 328);
  v15 = *(v0 + 320);
  v16 = *(v0 + 312);
  v20 = *(v0 + 304);
  v3 = *(v0 + 288);
  v4 = *(v0 + 296);
  v26 = *(v0 + 280);
  v19 = *(v0 + 256);
  v21 = *(v0 + 240);
  v22 = *(v0 + 248);
  v5 = *(v19 + 16);
  v6 = type metadata accessor for TaskPriority();
  v7 = *(*(v6 - 8) + 56);
  v7(v3, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v5;

  sub_1003E653C(0, 0, v3, &unk_1006DC3A8, v8);

  v7(v3, 1, 1, v6);
  v17(v15, v2, v4);
  v9 = (v1 + 40) & ~v1;
  v10 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = v19;
  (*(v20 + 32))(&v11[v9], v15, v4);
  v12 = &v11[v10];
  *v12 = v21;
  *(v12 + 1) = v22;
  *&v11[(v10 + 23) & 0xFFFFFFFFFFFFFFF8] = v23;

  sub_100130390(0, 0, v3, &unk_1006DC3B8, v11);

  (*(v20 + 8))(v2, v4);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002869FC()
{
  (*(v0[38] + 8))(v0[41], v0[37]);
  v1 = v0[57];
  v3 = v0[44];
  v2 = v0[45];
  v5 = v0[40];
  v4 = v0[41];
  v7 = v0[35];
  v6 = v0[36];

  v8 = v0[1];

  return v8();
}

size_t sub_100286AB8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v31 = a5;
  v9 = type metadata accessor for ProofingSession();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v30 - v15;
  v17 = v32;
  result = sub_1005796D0(a1, a2, a3, a4);
  if (v17)
  {
    return result;
  }

  v19 = result;
  v20 = v31;
  v32 = v9;
  v30[1] = 0;
  if (!(result >> 62))
  {
    v21 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_4;
    }

LABEL_17:

    *v20 = _swiftEmptyArrayStorage;
    return result;
  }

  v21 = _CocoaArrayWrapper.endIndex.getter();
  if (!v21)
  {
    goto LABEL_17;
  }

LABEL_4:
  v33 = _swiftEmptyArrayStorage;
  result = sub_100173040(0, v21 & ~(v21 >> 63), 0);
  if (v21 < 0)
  {
    __break(1u);
  }

  else
  {
    v22 = v33;
    if ((v19 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v21; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        ProofingSession.init(_:)();
        v33 = v22;
        v25 = v22[2];
        v24 = v22[3];
        if (v25 >= v24 >> 1)
        {
          sub_100173040(v24 > 1, v25 + 1, 1);
          v22 = v33;
        }

        v22[2] = v25 + 1;
        (*(v10 + 32))(v22 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v25, v16, v32);
      }
    }

    else
    {
      v26 = 32;
      do
      {
        v27 = *(v19 + v26);
        ProofingSession.init(_:)();
        v33 = v22;
        v29 = v22[2];
        v28 = v22[3];
        if (v29 >= v28 >> 1)
        {
          sub_100173040(v28 > 1, v29 + 1, 1);
          v22 = v33;
        }

        v22[2] = v29 + 1;
        (*(v10 + 32))(v22 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v29, v14, v32);
        v26 += 8;
        --v21;
      }

      while (v21);
    }

    *v31 = v22;
  }

  return result;
}

uint64_t sub_100286D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_100286DB0, 0, 0);
}

uint64_t sub_100286DB0()
{
  v1 = v0[3];
  v2 = ProofingSession.workflowID.getter();
  v4 = v3;
  v0[7] = v3;
  v5 = ProofingSession.proofingSessionID.getter();
  v7 = v6;
  v0[8] = v6;
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_100286E8C;
  v9 = v0[5];
  v10 = v0[6];
  v11 = v0[4];
  v12 = v0[2];

  return sub_1002890C4(v2, v4, v11, v9, v5, v7, v10);
}

uint64_t sub_100286E8C()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100286FD4, 0, 0);
  }

  else
  {
    v5 = v3[7];
    v4 = v3[8];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_100286FD4()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_100287040(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  v4 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  v3[31] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[32] = v5;
  v6 = *(v5 - 8);
  v3[33] = v6;
  v7 = *(v6 + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v8 = type metadata accessor for DIPError.Code();
  v3[38] = v8;
  v9 = *(v8 - 8);
  v3[39] = v9;
  v10 = *(v9 + 64) + 15;
  v3[40] = swift_task_alloc();
  v11 = type metadata accessor for DIPError();
  v3[41] = v11;
  v12 = *(v11 - 8);
  v3[42] = v12;
  v13 = *(v12 + 64) + 15;
  v3[43] = swift_task_alloc();
  v14 = type metadata accessor for ProofingSession();
  v3[44] = v14;
  v15 = *(v14 - 8);
  v3[45] = v15;
  v3[46] = *(v15 + 64);
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();

  return _swift_task_switch(sub_100287294, 0, 0);
}

uint64_t sub_100287294()
{
  v1 = *(v0 + 224);
  v2 = *(v1 + 16);
  *(v0 + 400) = v2;
  if (!v2)
  {
    v14 = *(v0 + 280);
    v15 = type metadata accessor for IdentityManagementSessionDelegate();
    v16 = [objc_opt_self() defaultCenter];
    v17 = String._bridgeToObjectiveC()();
    *(v0 + 216) = v15;
    sub_100007224(&qword_10083D698, &unk_1006DB6F0);
    [v16 postNotificationName:v17 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();

    defaultLogger()();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Will attempt to delete biome meta data", v20, 2u);
    }

    v21 = *(v0 + 280);
    v22 = *(v0 + 256);
    v23 = *(v0 + 264);
    v24 = *(v0 + 232);

    v25 = *(v23 + 8);
    v25(v21, v22);
    sub_1002A5038(v24);
    v26 = *(v0 + 272);
    defaultLogger()();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Will attempt to delete biome proofing data", v29, 2u);
    }

    v30 = *(v0 + 392);
    v83 = *(v0 + 384);
    v84 = *(v0 + 376);
    v85 = *(v0 + 344);
    v86 = *(v0 + 320);
    v87 = *(v0 + 296);
    v88 = *(v0 + 288);
    v31 = *(v0 + 272);
    v89 = *(v0 + 280);
    v32 = *(v0 + 256);
    v33 = *(v0 + 264);
    v35 = *(v0 + 240);
    v34 = *(v0 + 248);
    v36 = *(v0 + 232);

    v25(v31, v32);
    v37 = type metadata accessor for TaskPriority();
    (*(*(v37 - 8) + 56))(v34, 1, 1, v37);
    v38 = swift_allocObject();
    v38[2] = 0;
    v38[3] = 0;
    v38[4] = v35;
    v38[5] = v36;

    sub_1003E653C(0, 0, v34, &unk_1006DC3A0, v38);

    v39 = *(v0 + 8);
    goto LABEL_16;
  }

  v3 = *(v0 + 352);
  v4 = *(v0 + 360);
  v5 = *(v4 + 16);
  v4 += 16;
  v6 = *(v4 + 64);
  *(v0 + 552) = v6;
  *(v0 + 556) = enum case for DIPError.Code.failedToDeletePIITokenNoIdentifier(_:);
  *(v0 + 408) = *(v4 + 56);
  *(v0 + 416) = v5;
  *(v0 + 424) = 0;
  *(v0 + 432) = 0;
  v7 = *(v0 + 392);
  *(v0 + 440) = v4 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v7, v1 + ((v6 + 32) & ~v6), v3);
  ProofingSession.target.getter();
  v8 = IdentityTarget.init(rawValue:)();
  *(v0 + 448) = v8;
  v9 = *(v0 + 392);
  if (v10)
  {
    v11 = *(v0 + 352);
    v12 = *(v0 + 360);
    v13 = *(v0 + 328);
    (*(*(v0 + 312) + 104))(*(v0 + 320), enum case for DIPError.Code.targetUnavailable(_:), *(v0 + 304));
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v12 + 8))(v9, v11);
LABEL_15:
    v57 = *(v0 + 384);
    v56 = *(v0 + 392);
    v58 = *(v0 + 376);
    v59 = *(v0 + 344);
    v60 = *(v0 + 320);
    v62 = *(v0 + 288);
    v61 = *(v0 + 296);
    v64 = *(v0 + 272);
    v63 = *(v0 + 280);
    v65 = *(v0 + 248);

    v39 = *(v0 + 8);
LABEL_16:

    return v39();
  }

  v40 = v8;
  v41 = *(v0 + 392);
  v42 = ProofingSession.credentialIdentifier.getter();
  *(v0 + 456) = v42;
  *(v0 + 464) = v43;
  v44 = *(v0 + 392);
  if (!v43)
  {
    v53 = *(v0 + 352);
    v54 = *(v0 + 360);
    v55 = *(v0 + 328);
    (*(*(v0 + 312) + 104))(*(v0 + 320), enum case for DIPError.Code.credentialIdentifierDoesNotExist(_:), *(v0 + 304));
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v54 + 8))(v44, v53);
    goto LABEL_15;
  }

  v45 = v42;
  v46 = v43;
  v47 = ProofingSession.proofingSessionID.getter();
  *(v0 + 472) = v48;
  if (v48)
  {
    v49 = v47;
    v50 = v48;
    v51 = swift_task_alloc();
    *(v0 + 480) = v51;
    *v51 = v0;
    v51[1] = sub_100287BB8;

    return sub_1002A2920(v49, v50, v40, 128);
  }

  else
  {
    v66 = *(v0 + 392);
    v67 = ProofingSession.piiTokenIdentifier.getter();
    *(v0 + 488) = v68;
    if (v68)
    {
      v69 = v67;
      v70 = v68;
      v71 = swift_task_alloc();
      *(v0 + 496) = v71;
      *v71 = v0;
      v71[1] = sub_100287D74;

      return sub_1002A2314(v69, v70, v45, v46);
    }

    else
    {
      v73 = *(v0 + 336);
      v72 = *(v0 + 344);
      v74 = *(v0 + 328);
      v75 = *(v0 + 296);
      v76 = *(v0 + 264);
      v90 = *(v0 + 256);
      (*(*(v0 + 312) + 104))(*(v0 + 320), *(v0 + 556), *(v0 + 304));
      sub_1000402AC(_swiftEmptyArrayStorage);
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      sub_100037214();
      swift_allocError();
      (*(v73 + 16))(v77, v72, v74);
      defaultLogger()();
      DIPRecordError(_:message:log:)();
      (*(v76 + 8))(v75, v90);
      (*(v73 + 8))(v72, v74);

      v78 = *(v0 + 464);
      v79 = *(*(v0 + 240) + 16);
      v80 = swift_task_alloc();
      *(v0 + 504) = v80;
      *v80 = v0;
      v80[1] = sub_100287E8C;
      v82 = *(v0 + 448);
      v81 = *(v0 + 456);

      return sub_10028B9DC(v82, v81, v78);
    }
  }
}

uint64_t sub_100287BB8()
{
  v1 = *(*v0 + 480);
  v2 = *(*v0 + 472);
  v4 = *v0;

  return _swift_task_switch(sub_100287CD0, 0, 0);
}

uint64_t sub_100287CD0()
{
  v1 = v0[58];
  v2 = *(v0[30] + 16);
  v3 = swift_task_alloc();
  v0[63] = v3;
  *v3 = v0;
  v3[1] = sub_100287E8C;
  v5 = v0[56];
  v4 = v0[57];

  return sub_10028B9DC(v5, v4, v1);
}

uint64_t sub_100287D74()
{
  v1 = *(*v0 + 496);
  v2 = *(*v0 + 488);
  v4 = *v0;

  return _swift_task_switch(sub_10028B1A4, 0, 0);
}

uint64_t sub_100287E8C()
{
  v1 = *(*v0 + 504);
  v3 = *v0;

  return _swift_task_switch(sub_100287F88, 0, 0);
}

void sub_100287F88()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 424);
  v2 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v2 + 54);
  sub_100031B5C(&v2[4], v0 + 16);
  if (v1)
  {

    os_unfair_lock_unlock(v2 + 54);
  }

  else
  {
    v16 = *(v0 + 440);
    v3 = *(v0 + 416);
    v4 = *(v0 + 384);
    v5 = *(v0 + 392);
    v7 = *(v0 + 360);
    v6 = *(v0 + 368);
    v8 = *(v0 + 352);
    v9 = (*(v0 + 552) + 16) & ~*(v0 + 552);
    os_unfair_lock_unlock(v2 + 54);
    v10 = *(v0 + 72);
    *(v0 + 512) = v10;

    sub_100031918(v0 + 16);
    v3(v4, v5, v8);
    v11 = swift_allocObject();
    *(v0 + 520) = v11;
    (*(v7 + 32))(v11 + v9, v4, v8);
    v12 = *(v10 + 16);
    v13 = swift_allocObject();
    *(v0 + 528) = v13;
    *(v13 + 16) = sub_10028AC6C;
    *(v13 + 24) = v11;
    v14 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

    v15 = swift_task_alloc();
    *(v0 + 536) = v15;
    *v15 = v0;
    v15[1] = sub_1002881B8;

    AsyncCoreDataContainer.performWrite<A>(_:)(v15, sub_10017F710, v13, &type metadata for () + 8);
  }
}

uint64_t sub_1002881B8()
{
  v2 = *v1;
  v3 = *(*v1 + 536);
  v9 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {
    v4 = sub_100288E64;
  }

  else
  {
    v5 = v2[66];
    v6 = v2[65];
    v7 = v2[64];

    v4 = sub_1002882EC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002882EC()
{
  v127 = v0;
  v1 = *(v0 + 464);
  v2 = *(v0 + 440);
  v3 = *(v0 + 416);
  v4 = *(v0 + 392);
  v5 = *(v0 + 376);
  v6 = *(v0 + 352);
  v7 = *(v0 + 288);
  defaultLogger()();
  v3(v5, v4, v6);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 464);
  if (v10)
  {
    v111 = *(v0 + 456);
    v112 = *(v0 + 448);
    v115 = v9;
    v12 = *(v0 + 376);
    v14 = *(v0 + 352);
    v13 = *(v0 + 360);
    v121 = *(v0 + 288);
    v123 = *(v0 + 392);
    v117 = *(v0 + 264);
    v119 = *(v0 + 256);
    v15 = swift_slowAlloc();
    v126[0] = swift_slowAlloc();
    *v15 = 136315650;
    v16 = ProofingSession.proofingSessionID.getter();
    if (v17)
    {
      v18 = v16;
    }

    else
    {
      v18 = 4999502;
    }

    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0xE300000000000000;
    }

    v20 = *(v13 + 8);
    v20(v12, v14);
    v21 = sub_100141FE4(v18, v19, v126);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    v22 = sub_100141FE4(v111, v11, v126);

    *(v15 + 14) = v22;
    *(v15 + 22) = 2080;
    v23 = IdentityTarget.debugDescription.getter();
    v25 = sub_100141FE4(v23, v24, v126);

    *(v15 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v8, v115, "Deleted proofing session with proofingSessionID %s and credentialIdentifier %s and target %s", v15, 0x20u);
    swift_arrayDestroy();

    (*(v117 + 8))(v121, v119);
    v20(v123, v14);
  }

  else
  {
    v26 = *(v0 + 392);
    v27 = *(v0 + 376);
    v28 = *(v0 + 352);
    v29 = *(v0 + 360);
    v30 = *(v0 + 288);
    v31 = *(v0 + 256);
    v32 = *(v0 + 264);

    v33 = *(v29 + 8);
    v33(v27, v28);
    (*(v32 + 8))(v30, v31);
    v33(v26, v28);
  }

  v34 = *(v0 + 432) + 1;
  v35 = *(v0 + 544);
  if (v34 == *(v0 + 400))
  {
    v36 = *(v0 + 280);
    v37 = type metadata accessor for IdentityManagementSessionDelegate();
    v38 = [objc_opt_self() defaultCenter];
    v39 = String._bridgeToObjectiveC()();
    *(v0 + 216) = v37;
    sub_100007224(&qword_10083D698, &unk_1006DB6F0);
    [v38 postNotificationName:v39 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();

    defaultLogger()();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Will attempt to delete biome meta data", v42, 2u);
    }

    v43 = *(v0 + 280);
    v44 = *(v0 + 256);
    v45 = *(v0 + 264);
    v46 = *(v0 + 232);

    v47 = *(v45 + 8);
    v47(v43, v44);
    sub_1002A5038(v46);
    if (!v35)
    {
      v48 = *(v0 + 272);
      defaultLogger()();
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "Will attempt to delete biome proofing data", v51, 2u);
      }

      v52 = *(v0 + 392);
      v113 = *(v0 + 384);
      v114 = *(v0 + 376);
      v116 = *(v0 + 344);
      v118 = *(v0 + 320);
      v120 = *(v0 + 296);
      v122 = *(v0 + 288);
      v53 = *(v0 + 272);
      v124 = *(v0 + 280);
      v54 = *(v0 + 256);
      v55 = *(v0 + 264);
      v57 = *(v0 + 240);
      v56 = *(v0 + 248);
      v58 = *(v0 + 232);

      v47(v53, v54);
      v59 = type metadata accessor for TaskPriority();
      (*(*(v59 - 8) + 56))(v56, 1, 1, v59);
      v60 = swift_allocObject();
      v60[2] = 0;
      v60[3] = 0;
      v60[4] = v57;
      v60[5] = v58;

      sub_1003E653C(0, 0, v56, &unk_1006DC3A0, v60);

      v61 = *(v0 + 8);
      goto LABEL_27;
    }

LABEL_26:
    v85 = *(v0 + 384);
    v84 = *(v0 + 392);
    v86 = *(v0 + 376);
    v87 = *(v0 + 344);
    v88 = *(v0 + 320);
    v90 = *(v0 + 288);
    v89 = *(v0 + 296);
    v92 = *(v0 + 272);
    v91 = *(v0 + 280);
    v93 = *(v0 + 248);

    v61 = *(v0 + 8);
LABEL_27:

    return v61();
  }

  *(v0 + 424) = v35;
  *(v0 + 432) = v34;
  v62 = *(v0 + 416);
  v63 = *(v0 + 392);
  v64 = *(v0 + 352);
  v65 = *(v0 + 224) + ((*(v0 + 552) + 32) & ~*(v0 + 552)) + *(v0 + 408) * v34;
  *(v0 + 440) = (*(v0 + 360) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v62(v63, v65, v64);
  ProofingSession.target.getter();
  v66 = IdentityTarget.init(rawValue:)();
  *(v0 + 448) = v66;
  v67 = *(v0 + 392);
  if (v68)
  {
    v69 = *(v0 + 352);
    v70 = *(v0 + 360);
    v71 = *(v0 + 328);
    (*(*(v0 + 312) + 104))(*(v0 + 320), enum case for DIPError.Code.targetUnavailable(_:), *(v0 + 304));
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_100037214();
    swift_allocError();
LABEL_25:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v70 + 8))(v67, v69);
    goto LABEL_26;
  }

  v72 = v66;
  v73 = ProofingSession.credentialIdentifier.getter();
  *(v0 + 456) = v73;
  *(v0 + 464) = v74;
  v67 = *(v0 + 392);
  if (!v74)
  {
    v69 = *(v0 + 352);
    v70 = *(v0 + 360);
    v83 = *(v0 + 328);
    (*(*(v0 + 312) + 104))(*(v0 + 320), enum case for DIPError.Code.credentialIdentifierDoesNotExist(_:), *(v0 + 304));
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_100037214();
    swift_allocError();
    goto LABEL_25;
  }

  v75 = v73;
  v76 = v74;
  v77 = ProofingSession.proofingSessionID.getter();
  *(v0 + 472) = v78;
  if (v78)
  {
    v79 = v77;
    v80 = v78;
    v81 = swift_task_alloc();
    *(v0 + 480) = v81;
    *v81 = v0;
    v81[1] = sub_100287BB8;

    return sub_1002A2920(v79, v80, v72, 128);
  }

  else
  {
    v94 = *(v0 + 392);
    v95 = ProofingSession.piiTokenIdentifier.getter();
    *(v0 + 488) = v96;
    if (v96)
    {
      v97 = v95;
      v98 = v96;
      v99 = swift_task_alloc();
      *(v0 + 496) = v99;
      *v99 = v0;
      v99[1] = sub_100287D74;

      return sub_1002A2314(v97, v98, v75, v76);
    }

    else
    {
      v101 = *(v0 + 336);
      v100 = *(v0 + 344);
      v102 = *(v0 + 328);
      v103 = *(v0 + 296);
      v104 = *(v0 + 264);
      v125 = *(v0 + 256);
      (*(*(v0 + 312) + 104))(*(v0 + 320), *(v0 + 556), *(v0 + 304));
      sub_1000402AC(_swiftEmptyArrayStorage);
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      sub_100037214();
      swift_allocError();
      (*(v101 + 16))(v105, v100, v102);
      defaultLogger()();
      DIPRecordError(_:message:log:)();
      (*(v104 + 8))(v103, v125);
      (*(v101 + 8))(v100, v102);

      v106 = *(v0 + 464);
      v107 = *(*(v0 + 240) + 16);
      v108 = swift_task_alloc();
      *(v0 + 504) = v108;
      *v108 = v0;
      v108[1] = sub_100287E8C;
      v110 = *(v0 + 448);
      v109 = *(v0 + 456);

      return sub_10028B9DC(v110, v109, v106);
    }
  }
}

uint64_t sub_100288E64()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[64];
  v4 = v0[58];
  v5 = v0[49];
  v6 = v0[44];
  v7 = v0[45];

  (*(v7 + 8))(v5, v6);
  v20 = v0[68];
  v9 = v0[48];
  v8 = v0[49];
  v10 = v0[47];
  v11 = v0[43];
  v12 = v0[40];
  v14 = v0[36];
  v13 = v0[37];
  v16 = v0[34];
  v15 = v0[35];
  v17 = v0[31];

  v18 = v0[1];

  return v18();
}

void sub_100288F9C(uint64_t a1)
{
  v3 = ProofingSession.objectID.getter();
  v4 = sub_10057886C(v3);

  if (!v1)
  {
    [*(a1 + 16) deleteObject:v4];

    sub_1005783D4();
  }
}

uint64_t sub_10028901C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100027B9C;

  return sub_1002A54D0(a5);
}

uint64_t sub_1002890C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = type metadata accessor for Logger();
  v8[10] = v9;
  v10 = *(v9 - 8);
  v8[11] = v10;
  v11 = *(v10 + 64) + 15;
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v12 = type metadata accessor for DIPError();
  v8[14] = v12;
  v13 = *(v12 - 8);
  v8[15] = v13;
  v14 = *(v13 + 64) + 15;
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v15 = type metadata accessor for DIPError.Code();
  v8[18] = v15;
  v16 = *(v15 - 8);
  v8[19] = v16;
  v17 = *(v16 + 64) + 15;
  v8[20] = swift_task_alloc();

  return _swift_task_switch(sub_100289260, 0, 0);
}

uint64_t sub_100289260()
{
  v51 = v0;
  if (v0[3])
  {
    if (v0[7])
    {
      v1 = *sub_10000BA08((*(v0[9] + 24) + 16), *(*(v0[9] + 24) + 40));
      v2 = swift_task_alloc();
      v0[21] = v2;
      *v2 = v0;
      v2[1] = sub_10028981C;
      v3 = v0[7];
      v4 = v0[8];
      v5 = v0[5];
      v6 = v0[6];
      v8 = v0[3];
      v7 = v0[4];
      v9 = v0[2];

      return sub_10022083C(&off_1007FBA10, v7, v5, v9, v8, v6, v3, v4);
    }

    v12 = v0[14];
    v48 = *(v0[19] + 104);
    v48(v0[20], enum case for DIPError.Code.proofingSessionIDUnavailable(_:), v0[18]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_100037214();
    swift_allocError();
  }

  else
  {
    v11 = v0[14];
    v48 = *(v0[19] + 104);
    v48(v0[20], enum case for DIPError.Code.workflowIdDoesNotExist(_:), v0[18]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_100037214();
    swift_allocError();
  }

  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v13 = v0[17];
  v14 = v0[15];
  v16 = v0[13];
  v15 = v0[14];
  v18 = v0[11];
  v17 = v0[12];
  v43 = v0[10];
  v44 = v0[16];
  v48(v0[20], enum case for DIPError.Code.internalError(_:), v0[18]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100037214();
  swift_allocError();
  v19 = *(v14 + 16);
  v19(v20, v13, v15);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v49 = *(v18 + 8);
  v49(v16, v43);

  defaultLogger()();
  v19(v44, v13, v15);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  v23 = os_log_type_enabled(v21, v22);
  v24 = v0[16];
  v25 = v0[17];
  v27 = v0[14];
  v26 = v0[15];
  v28 = v0[12];
  v47 = v0[10];
  if (v23)
  {
    v29 = swift_slowAlloc();
    v46 = v25;
    v30 = swift_slowAlloc();
    v50 = v30;
    *v29 = 136315138;
    v31 = Error.localizedDescription.getter();
    v45 = v28;
    v33 = v32;
    v34 = *(v26 + 8);
    v34(v24, v27);
    v35 = sub_100141FE4(v31, v33, &v50);

    *(v29 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v21, v22, "Received an error communicating user cancelling the proofing flow with the server - %s. Treating this as a non fatal error as this has not user impact.", v29, 0xCu);
    sub_10000BB78(v30);

    v49(v45, v47);
    v34(v46, v27);
  }

  else
  {

    v36 = *(v26 + 8);
    v36(v24, v27);
    v49(v28, v47);
    v36(v25, v27);
  }

  v37 = v0[20];
  v38 = v0[16];
  v39 = v0[17];
  v41 = v0[12];
  v40 = v0[13];

  v42 = v0[1];

  return v42();
}

uint64_t sub_10028981C()
{
  v2 = *(*v1 + 168);
  v3 = *v1;
  v3[22] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100289990, 0, 0);
  }

  else
  {
    v4 = v3[20];
    v6 = v3[16];
    v5 = v3[17];
    v7 = v3[12];
    v8 = v3[13];

    v9 = v3[1];

    return v9();
  }
}

uint64_t sub_100289990()
{
  v46 = v0;
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[14];
  v44 = enum case for DIPError.Code.internalError(_:);
  v43 = *(v0[19] + 104);
  v43(v0[20]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[17];
  v5 = v0[15];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[11];
  v39 = v0[12];
  v41 = v0[16];
  v36 = v0[10];
  (v43)(v0[20], v44, v0[18]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  v9 = v4;
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_allocError();
  v10 = *(v5 + 16);
  v10(v11, v9, v6);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v12 = *(v8 + 8);
  v12(v7, v36);

  defaultLogger()();
  v10(v41, v9, v6);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[16];
  v17 = v0[17];
  v19 = v0[14];
  v18 = v0[15];
  v20 = v0[10];
  v40 = v20;
  v42 = v0[12];
  if (v15)
  {
    v21 = swift_slowAlloc();
    v37 = v17;
    v22 = swift_slowAlloc();
    v45 = v22;
    *v21 = 136315138;
    v23 = Error.localizedDescription.getter();
    v38 = v12;
    v25 = v24;
    v26 = *(v18 + 8);
    v26(v16, v19);
    v27 = sub_100141FE4(v23, v25, &v45);

    *(v21 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v13, v14, "Received an error communicating user cancelling the proofing flow with the server - %s. Treating this as a non fatal error as this has not user impact.", v21, 0xCu);
    sub_10000BB78(v22);

    v38(v42, v40);
    v26(v37, v19);
  }

  else
  {

    v28 = *(v18 + 8);
    v28(v16, v19);
    v12(v42, v40);
    v28(v17, v19);
  }

  v29 = v0[20];
  v30 = v0[16];
  v31 = v0[17];
  v33 = v0[12];
  v32 = v0[13];

  v34 = v0[1];

  return v34();
}

uint64_t sub_100289DF4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_100289E58(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[30] = v3;
  v4 = *(v3 - 8);
  v2[31] = v4;
  v5 = *(v4 + 64) + 15;
  v2[32] = swift_task_alloc();
  v6 = type metadata accessor for ProofingSession();
  v2[33] = v6;
  v7 = *(v6 - 8);
  v2[34] = v7;
  v8 = *(v7 + 64) + 15;
  v2[35] = swift_task_alloc();
  v9 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  v2[36] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v2[37] = v10;
  v11 = *(v10 - 8);
  v2[38] = v11;
  v12 = *(v11 + 64) + 15;
  v2[39] = swift_task_alloc();

  return _swift_task_switch(sub_10028A008, 0, 0);
}

uint64_t sub_10028A008()
{
  v1 = v0[39];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Proofing has been cancelled by the user, will attempt to clean up and notify the server using proofing configuration and proofing options", v4, 2u);
  }

  v6 = v0[38];
  v5 = v0[39];
  v7 = v0[37];

  (*(v6 + 8))(v5, v7);
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v8 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v8 + 54);
  sub_1000318FC(&v8[4], (v0 + 2));
  os_unfair_lock_unlock(v8 + 54);
  v9 = v0[28];
  v10 = v0[9];
  v0[40] = v10;

  sub_100031918((v0 + 2));
  v11 = swift_allocObject();
  v0[41] = v11;
  *(v11 + 16) = v9;
  v12 = *(v10 + 16);
  v13 = swift_allocObject();
  v0[42] = v13;
  *(v13 + 16) = sub_10028AA04;
  *(v13 + 24) = v11;
  v14 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];
  v15 = v9;

  v16 = swift_task_alloc();
  v0[43] = v16;
  v17 = sub_100007224(&qword_10083E3E0, &qword_1006DBCE0);
  *v16 = v0;
  v16[1] = sub_10028A270;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 27, sub_100267820, v13, v17);
}

uint64_t sub_10028A270()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v9 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = sub_10028A5C4;
  }

  else
  {
    v5 = v2[41];
    v6 = v2[42];
    v7 = v2[40];

    v2[45] = v2[27];
    v4 = sub_10028A3B0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10028A3B0()
{
  v1 = v0[28];
  v2 = IdentityProofingConfiguration.documentType.getter();
  v3 = swift_task_alloc();
  v0[46] = v3;
  *v3 = v0;
  v3[1] = sub_10028A458;
  v4 = v0[45];
  v5 = v0[29];

  return sub_100287040(v4, v2);
}

uint64_t sub_10028A458()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[45];

    v6 = v2[39];
    v8 = v2[35];
    v7 = v2[36];
    v9 = v2[32];

    v10 = *(v4 + 8);

    return v10();
  }

  else
  {

    return _swift_task_switch(sub_10028A66C, 0, 0);
  }
}

uint64_t sub_10028A5C4()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[40];

  v4 = v0[44];
  v5 = v0[39];
  v7 = v0[35];
  v6 = v0[36];
  v8 = v0[32];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10028A66C()
{
  v1 = v0[45];
  v2 = v0[36];
  v3 = *(v0[29] + 16);
  v4 = type metadata accessor for TaskPriority();
  v5 = *(*(v4 - 8) + 56);
  v5(v2, 1, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;

  sub_1003E653C(0, 0, v2, &unk_1006DC378, v6);

  if (*(v1 + 16) && (v8 = v0[34], v7 = v0[35], v9 = v0[33], (*(v8 + 16))(v7, v0[45] + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v9), ProofingSession.documentType.getter(), v11 = v10, (*(v8 + 8))(v7, v9), v11))
  {
    v12 = v0[45];
    v13 = v0[39];
    v14 = v0[35];
    v15 = v0[36];
    v29 = v0[32];
    v16 = v0[29];
    v17 = IdentityDocumentType.init(documentTypeString:)();
    v5(v15, 1, 1, v4);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v16;
    v18[5] = v12;
    v18[6] = v17;

    sub_100130390(0, 0, v15, &unk_1006DC388, v18);

    v19 = v0[1];
  }

  else
  {
    v20 = v0[45];
    v22 = v0[31];
    v21 = v0[32];
    v23 = v0[30];

    (*(v22 + 104))(v21, enum case for DIPError.Code.unexpectedIDType(_:), v23);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v24 = v0[39];
    v25 = v0[35];
    v26 = v0[36];
    v27 = v0[32];

    v19 = v0[1];
  }

  return v19();
}

uint64_t sub_10028A9CC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10028AA20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_100293CE4(a1, v4, v5, v6);
}

uint64_t sub_10028AAD4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10028AB1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100027B9C;

  return sub_100285720(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10028ABE4()
{
  v1 = type metadata accessor for ProofingSession();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10028ACE8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10028AD28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100041F04;

  return sub_10028901C(a1, v4, v5, v7, v6);
}

uint64_t sub_10028ADE8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10028AE50(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10028AE9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027B9C;

  return sub_100293CE4(a1, v4, v5, v6);
}

uint64_t sub_10028AF50()
{
  v1 = type metadata accessor for ProofingSession();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10028B044(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ProofingSession() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = (v1 + v7);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v1 + v8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_100041F04;

  return sub_100286D88(a1, v9, v10, v11, v1 + v6, v13, v14, v15);
}

uint64_t sub_10028B1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for Logger();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();

  return _swift_task_switch(sub_10028B294, 0, 0);
}

uint64_t sub_10028B294()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[4];
    if (v2)
    {
      if (qword_100832C20 != -1)
      {
        swift_once();
      }

      v3 = *(qword_100882228 + 16);
      v0[11] = v3;
      v19 = sub_1002A4034;
      v4 = v3;
      v5 = swift_task_alloc();
      v0[12] = v5;
      *v5 = v0;
      v5[1] = sub_10028B490;
      v6 = v0[3];
      v7 = v2;
      v8 = v4;
      goto LABEL_10;
    }
  }

  if ((v1 & 2) != 0)
  {
    if (v0[6])
    {
      v9 = v0[7];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v11 = v0[6];
        v12 = *(Strong + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService);
        v0[14] = v12;
        v13 = Strong;
        v14 = v12;

        v19 = sub_1002A472C;
        v15 = swift_task_alloc();
        v0[15] = v15;
        *v15 = v0;
        v15[1] = sub_10028B7A8;
        v6 = v0[5];
        v7 = v11;
        v8 = v14;
LABEL_10:

        return v19(v6, v7, v8);
      }
    }
  }

  v17 = v0[10];

  v18 = v0[1];

  return v18();
}

uint64_t sub_10028B490()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_10028B5BC;
  }

  else
  {
    v4 = sub_10028B66C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10028B5BC()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10028B66C, 0, 0);
}

uint64_t sub_10028B66C()
{
  if ((*(v0 + 16) & 2) != 0 && *(v0 + 48) && (v1 = *(v0 + 56), (Strong = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v3 = *(v0 + 48);
    v4 = *(Strong + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService);
    *(v0 + 112) = v4;
    v5 = Strong;
    v6 = v4;

    v7 = swift_task_alloc();
    *(v0 + 120) = v7;
    *v7 = v0;
    v7[1] = sub_10028B7A8;
    v8 = *(v0 + 40);

    return sub_1002A472C(v8, v3, v6);
  }

  else
  {
    v10 = *(v0 + 80);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_10028B7A8()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_10028B924;
  }

  else
  {
    v3 = sub_10028B8BC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10028B8BC()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10028B924()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);

  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 80);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10028B9DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Logger();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for DIPError.Code();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_10028BAFC, 0, 0);
}

uint64_t sub_10028BAFC()
{
  v1 = v0[2];
  if (v1 == 2)
  {
    v8 = v0[5];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = *(Strong + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService);
      v0[15] = v10;
      v11 = Strong;
      v12 = v10;

      v21 = sub_1002A472C;
      v13 = swift_task_alloc();
      v0[16] = v13;
      *v13 = v0;
      v13[1] = sub_10028C078;
      v5 = v0[4];
      v6 = v0[3];
      v7 = v12;
LABEL_8:

      return v21(v6, v5, v7);
    }
  }

  else
  {
    if (v1 == 1)
    {
      if (qword_100832C20 != -1)
      {
        swift_once();
      }

      v2 = *(qword_100882228 + 16);
      v0[12] = v2;
      v21 = sub_1002A4034;
      v3 = v2;
      v4 = swift_task_alloc();
      v0[13] = v4;
      *v4 = v0;
      v4[1] = sub_10028BE50;
      v5 = v0[4];
      v6 = v0[3];
      v7 = v3;
      goto LABEL_8;
    }

    (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.targetUnavailable(_:), v0[9]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v16 = v0[7];
    v15 = v0[8];
    v17 = v0[6];
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    (*(v16 + 8))(v15, v17);
  }

  v18 = v0[11];
  v19 = v0[8];

  v20 = v0[1];

  return v20();
}

uint64_t sub_10028BE50()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *v1;
  v4[14] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10028BFBC, 0, 0);
  }

  else
  {
    v5 = v4[11];
    v6 = v4[8];

    v7 = v4[1];

    return v7();
  }
}

uint64_t sub_10028BFBC()
{
  v1 = v0[14];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v3 + 8))(v2, v4);
  v5 = v0[11];
  v6 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10028C078()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_10028C200;
  }

  else
  {
    v3 = sub_10028C18C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10028C18C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10028C200()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 48);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 88);
  v6 = *(v0 + 64);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10028C2C4()
{
  v1[57] = v0;
  v2 = type metadata accessor for Logger();
  v1[58] = v2;
  v3 = *(v2 - 8);
  v1[59] = v3;
  v4 = *(v3 + 64) + 15;
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v5 = type metadata accessor for ProofingSession();
  v1[62] = v5;
  v6 = *(v5 - 8);
  v1[63] = v6;
  v1[64] = *(v6 + 64);
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();

  return _swift_task_switch(sub_10028C400, 0, 0);
}

uint64_t sub_10028C400()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = qword_100881E78;
  v0[67] = qword_100881E78;
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 54);
  sub_100031B5C(&v2[4], (v0 + 2));
  os_unfair_lock_unlock(v2 + 54);
  v3 = v0[9];
  v0[68] = v3;

  sub_100031918((v0 + 2));
  v4 = *(v3 + 16);
  v5 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];
  v6 = swift_task_alloc();
  v0[69] = v6;
  v7 = sub_100007224(&qword_10083E3E0, &qword_1006DBCE0);
  *v6 = v0;
  v6[1] = sub_10028C564;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 55, sub_10029FAA0, 0, v7);
}

uint64_t sub_10028C564()
{
  v2 = *v1;
  v3 = *(*v1 + 552);
  v7 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v4 = sub_10028C89C;
  }

  else
  {
    v5 = v2[68];

    v2[71] = v2[55];
    v4 = sub_10028C688;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10028C688()
{
  result = *(v0 + 568);
  v2 = *(result + 16);
  *(v0 + 576) = v2;
  if (v2)
  {
    v3 = *(v0 + 504);
    v4 = *(v0 + 560);
    *(v0 + 592) = 0;
    *(v0 + 584) = v4;
    if (*(result + 16))
    {
      v5 = *(v0 + 528);
      v6 = *(v0 + 496);
      v8 = *(v3 + 16);
      v7 = v3 + 16;
      v9 = *(v7 + 64);
      *(v0 + 664) = v9;
      *(v0 + 600) = v8;
      *(v0 + 608) = v7 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v8(v5, result + ((v9 + 32) & ~v9), v6);
      v10 = swift_task_alloc();
      *(v0 + 616) = v10;
      *v10 = v0;
      v10[1] = sub_10028CA98;
      v11 = *(v0 + 528);
      v12 = *(v0 + 456);

      return sub_100299718(v11);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v13 = *(v0 + 488);

    defaultLogger()();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 488);
    v18 = *(v0 + 464);
    v19 = *(v0 + 472);
    if (v16)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Deleted all the proofing sessions successfully", v20, 2u);
    }

    (*(v19 + 8))(v17, v18);
    v21 = *(v0 + 528);
    v22 = *(v0 + 520);
    v24 = *(v0 + 480);
    v23 = *(v0 + 488);

    v25 = *(v0 + 8);

    return v25();
  }

  return result;
}

uint64_t sub_10028C89C()
{
  v27 = v0;
  v1 = v0[68];

  v2 = v0[70];
  v3 = v0[60];
  defaultLogger()();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[59];
    v25 = v0[60];
    v7 = v0[58];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[52];
    v10 = v0[53];
    v12 = v0[54];
    v13 = Error.localizedDescription.getter();
    v15 = sub_100141FE4(v13, v14, &v26);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received an error during clearing of all proofing sessions %s", v8, 0xCu);
    sub_10000BB78(v9);

    (*(v6 + 8))(v25, v7);
  }

  else
  {
    v17 = v0[59];
    v16 = v0[60];
    v18 = v0[58];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[66];
  v20 = v0[65];
  v22 = v0[60];
  v21 = v0[61];

  v23 = v0[1];

  return v23();
}

uint64_t sub_10028CA98()
{
  v1 = *(*v0 + 616);
  v3 = *v0;

  return _swift_task_switch(sub_10028CB94, 0, 0);
}

void sub_10028CB94()
{
  v1 = *(v0 + 584);
  v2 = *(*(v0 + 536) + 16);
  os_unfair_lock_lock(v2 + 54);
  sub_100031B5C(&v2[4], v0 + 216);
  if (v1)
  {

    os_unfair_lock_unlock(v2 + 54);
  }

  else
  {
    v3 = *(v0 + 608);
    v4 = *(v0 + 600);
    v5 = *(v0 + 664);
    v6 = *(v0 + 528);
    v7 = *(v0 + 520);
    v9 = *(v0 + 504);
    v8 = *(v0 + 512);
    v10 = *(v0 + 496);
    os_unfair_lock_unlock(v2 + 54);
    v11 = *(v0 + 272);
    *(v0 + 624) = v11;

    sub_100031918(v0 + 216);
    v4(v7, v6, v10);
    v12 = swift_allocObject();
    *(v0 + 632) = v12;
    (*(v9 + 32))(v12 + ((v5 + 16) & ~v5), v7, v10);
    v13 = *(v11 + 16);
    v14 = swift_allocObject();
    *(v0 + 640) = v14;
    *(v14 + 16) = sub_1002A7788;
    *(v14 + 24) = v12;
    v15 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

    v16 = swift_task_alloc();
    *(v0 + 648) = v16;
    *v16 = v0;
    v16[1] = sub_10028CD8C;

    AsyncCoreDataContainer.performWrite<A>(_:)(v16, sub_10021F3D0, v14, &type metadata for () + 8);
  }
}

uint64_t sub_10028CD8C()
{
  v2 = *v1;
  v3 = *(*v1 + 648);
  v9 = *v1;
  *(*v1 + 656) = v0;

  if (v0)
  {
    v4 = sub_10028D104;
  }

  else
  {
    v5 = v2[80];
    v6 = v2[79];
    v7 = v2[78];

    v4 = sub_10028CEC0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10028CEC0()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 592) + 1;
  result = (*(*(v0 + 504) + 8))(*(v0 + 528), *(v0 + 496));
  if (v2 == v1)
  {
    v4 = *(v0 + 568);
    v5 = *(v0 + 488);

    defaultLogger()();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 488);
    v10 = *(v0 + 464);
    v11 = *(v0 + 472);
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Deleted all the proofing sessions successfully", v12, 2u);
    }

    (*(v11 + 8))(v9, v10);
    v13 = *(v0 + 528);
    v14 = *(v0 + 520);
    v16 = *(v0 + 480);
    v15 = *(v0 + 488);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v18 = *(v0 + 656);
    v19 = *(v0 + 592) + 1;
    *(v0 + 592) = v19;
    *(v0 + 584) = v18;
    v20 = *(v0 + 568);
    if (v19 >= *(v20 + 16))
    {
      __break(1u);
    }

    else
    {
      v21 = *(v0 + 528);
      v22 = *(v0 + 496);
      v23 = *(v0 + 504);
      v24 = *(v23 + 16);
      v23 += 16;
      v25 = *(v23 + 64);
      *(v0 + 664) = v25;
      v26 = v20 + ((v25 + 32) & ~v25) + *(v23 + 56) * v19;
      *(v0 + 600) = v24;
      *(v0 + 608) = v23 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v24(v21, v26, v22);
      v27 = swift_task_alloc();
      *(v0 + 616) = v27;
      *v27 = v0;
      v27[1] = sub_10028CA98;
      v28 = *(v0 + 528);
      v29 = *(v0 + 456);

      return sub_100299718(v28);
    }
  }

  return result;
}

uint64_t sub_10028D104()
{
  v33 = v0;
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[71];
  v5 = v0[66];
  v6 = v0[62];
  v7 = v0[63];

  (*(v7 + 8))(v5, v6);
  v8 = v0[82];
  v9 = v0[60];
  defaultLogger()();
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[59];
    v31 = v0[60];
    v13 = v0[58];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136315138;
    swift_getErrorValue();
    v17 = v0[52];
    v16 = v0[53];
    v18 = v0[54];
    v19 = Error.localizedDescription.getter();
    v21 = sub_100141FE4(v19, v20, &v32);

    *(v14 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "Received an error during clearing of all proofing sessions %s", v14, 0xCu);
    sub_10000BB78(v15);

    (*(v12 + 8))(v31, v13);
  }

  else
  {
    v23 = v0[59];
    v22 = v0[60];
    v24 = v0[58];

    (*(v23 + 8))(v22, v24);
  }

  v25 = v0[66];
  v26 = v0[65];
  v28 = v0[60];
  v27 = v0[61];

  v29 = v0[1];

  return v29();
}

void sub_10028D344(uint64_t a1@<X0>, void *a2@<X8>)
{
  v27 = a2;
  v4 = type metadata accessor for ProofingSession();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v26 - v10;
  v12 = *(a1 + 16);
  type metadata accessor for StoredProofingSession();
  v13 = static StoredProofingSession.fetchRequest()();
  v14 = NSManagedObjectContext.fetch<A>(_:)();

  if (v2)
  {
    return;
  }

  v15 = v27;
  v28 = v4;
  if (!(v14 >> 62))
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v17 = v27;
    if (v16)
    {
      goto LABEL_4;
    }

LABEL_17:

    *v17 = _swiftEmptyArrayStorage;
    return;
  }

  v16 = _CocoaArrayWrapper.endIndex.getter();
  v17 = v15;
  if (!v16)
  {
    goto LABEL_17;
  }

LABEL_4:
  v29 = _swiftEmptyArrayStorage;
  sub_100173040(0, v16 & ~(v16 >> 63), 0);
  if (v16 < 0)
  {
    __break(1u);
  }

  else
  {
    v26[1] = 0;
    v18 = v29;
    if ((v14 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v16; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        ProofingSession.init(_:)();
        v29 = v18;
        v21 = v18[2];
        v20 = v18[3];
        if (v21 >= v20 >> 1)
        {
          sub_100173040(v20 > 1, v21 + 1, 1);
          v18 = v29;
        }

        v18[2] = v21 + 1;
        (*(v5 + 32))(v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v21, v11, v28);
      }
    }

    else
    {
      v22 = 32;
      do
      {
        v23 = *(v14 + v22);
        ProofingSession.init(_:)();
        v29 = v18;
        v25 = v18[2];
        v24 = v18[3];
        if (v25 >= v24 >> 1)
        {
          sub_100173040(v24 > 1, v25 + 1, 1);
          v18 = v29;
        }

        v18[2] = v25 + 1;
        (*(v5 + 32))(v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v25, v9, v28);
        v22 += 8;
        --v16;
      }

      while (v16);
    }

    *v27 = v18;
  }
}

uint64_t sub_10028D628()
{
  v1[57] = v0;
  v2 = type metadata accessor for Logger();
  v1[58] = v2;
  v3 = *(v2 - 8);
  v1[59] = v3;
  v4 = *(v3 + 64) + 15;
  v1[60] = swift_task_alloc();
  v5 = type metadata accessor for ProofingSession();
  v1[61] = v5;
  v6 = *(v5 - 8);
  v1[62] = v6;
  v7 = *(v6 + 64) + 15;
  v1[63] = swift_task_alloc();

  return _swift_task_switch(sub_10028D744, 0, 0);
}

uint64_t sub_10028D744()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = qword_100881E78;
  v0[64] = qword_100881E78;
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 54);
  sub_100031B5C(&v2[4], (v0 + 2));
  os_unfair_lock_unlock(v2 + 54);
  v3 = v0[57];
  v4 = v0[9];
  v0[65] = v4;

  sub_100031918((v0 + 2));
  v5 = *(v4 + 16);
  v6 = swift_allocObject();
  v0[66] = v6;
  *(v6 + 16) = sub_1002A758C;
  *(v6 + 24) = v3;
  v7 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];
  swift_retain_n();
  v8 = swift_task_alloc();
  v0[67] = v8;
  v9 = sub_100007224(&qword_10083E3E0, &qword_1006DBCE0);
  *v8 = v0;
  v8[1] = sub_10028D8F8;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 55, sub_10026CBEC, v6, v9);
}

uint64_t sub_10028D8F8()
{
  v2 = *v1;
  v3 = *(*v1 + 536);
  v9 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {
    v4 = sub_10028DC88;
  }

  else
  {
    v5 = v2[66];
    v6 = v2[65];
    v7 = v2[57];

    v2[69] = v2[55];
    v4 = sub_10028DA3C;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_10028DA3C()
{
  v1 = *(v0 + 552);
  v2 = *(v1 + 16);
  *(v0 + 560) = v2;
  if (v2)
  {
    v3 = *(v0 + 488);
    v4 = *(v0 + 496);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 640) = v6;
    *(v0 + 568) = *(v4 + 56);
    *(v0 + 576) = v5;
    *(v0 + 584) = 0;
    v5(*(v0 + 504), v1 + ((v6 + 32) & ~v6), v3);
    v7 = swift_task_alloc();
    *(v0 + 592) = v7;
    *v7 = v0;
    v7[1] = sub_10028DE88;
    v8 = *(v0 + 504);
    v9 = *(v0 + 456);

    sub_100299718(v8);
  }

  else
  {
    v10 = *(v0 + 544);
    v11 = *(*(v0 + 512) + 16);
    os_unfair_lock_lock(v11 + 54);
    sub_100031B5C(&v11[4], v0 + 216);
    os_unfair_lock_unlock(v11 + 54);
    if (!v10)
    {
      v12 = *(v0 + 552);
      v13 = *(v0 + 272);
      *(v0 + 600) = v13;

      sub_100031918(v0 + 216);
      v14 = swift_allocObject();
      *(v0 + 608) = v14;
      *(v14 + 16) = v12;
      v15 = *(v13 + 16);
      v16 = swift_allocObject();
      *(v0 + 616) = v16;
      *(v16 + 16) = sub_1002A75E0;
      *(v16 + 24) = v14;
      v17 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

      v18 = swift_task_alloc();
      *(v0 + 624) = v18;
      *v18 = v0;
      v18[1] = sub_10028E22C;

      AsyncCoreDataContainer.performWrite<A>(_:)(v18, sub_10021F3D0, v16, &type metadata for () + 8);
    }
  }
}

uint64_t sub_10028DC88()
{
  v27 = v0;
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[57];

  v4 = v0[68];
  v5 = v0[60];
  defaultLogger()();
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[59];
    v25 = v0[60];
    v9 = v0[58];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v13 = v0[52];
    v12 = v0[53];
    v14 = v0[54];
    v15 = Error.localizedDescription.getter();
    v17 = sub_100141FE4(v15, v16, &v26);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Received an error during clearing of all proofing sessions %s", v10, 0xCu);
    sub_10000BB78(v11);

    (*(v8 + 8))(v25, v9);
  }

  else
  {
    v19 = v0[59];
    v18 = v0[60];
    v20 = v0[58];

    (*(v19 + 8))(v18, v20);
  }

  v21 = v0[63];
  v22 = v0[60];

  v23 = v0[1];

  return v23();
}

uint64_t sub_10028DE88()
{
  v1 = *(*v0 + 592);
  v2 = *(*v0 + 504);
  v3 = *(*v0 + 496);
  v4 = *(*v0 + 488);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10028DFE0, 0, 0);
}

void sub_10028DFE0()
{
  v1 = *(v0 + 584) + 1;
  if (v1 == *(v0 + 560))
  {
    v2 = *(v0 + 544);
    v3 = *(*(v0 + 512) + 16);
    os_unfair_lock_lock(v3 + 54);
    sub_100031B5C(&v3[4], v0 + 216);
    os_unfair_lock_unlock(v3 + 54);
    if (!v2)
    {
      v8 = *(v0 + 552);
      v9 = *(v0 + 272);
      *(v0 + 600) = v9;

      sub_100031918(v0 + 216);
      v10 = swift_allocObject();
      *(v0 + 608) = v10;
      *(v10 + 16) = v8;
      v11 = *(v9 + 16);
      v12 = swift_allocObject();
      *(v0 + 616) = v12;
      *(v12 + 16) = sub_1002A75E0;
      *(v12 + 24) = v10;
      v13 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

      v14 = swift_task_alloc();
      *(v0 + 624) = v14;
      *v14 = v0;
      v14[1] = sub_10028E22C;

      AsyncCoreDataContainer.performWrite<A>(_:)(v14, sub_10021F3D0, v12, &type metadata for () + 8);
    }
  }

  else
  {
    *(v0 + 584) = v1;
    v4 = *(v0 + 496) + 16;
    (*(v0 + 576))(*(v0 + 504), *(v0 + 552) + ((*(v0 + 640) + 32) & ~*(v0 + 640)) + *(v0 + 568) * v1, *(v0 + 488));
    v5 = swift_task_alloc();
    *(v0 + 592) = v5;
    *v5 = v0;
    v5[1] = sub_10028DE88;
    v6 = *(v0 + 504);
    v7 = *(v0 + 456);

    sub_100299718(v6);
  }
}

uint64_t sub_10028E22C()
{
  v2 = *v1;
  v3 = *(*v1 + 624);
  v9 = *v1;
  *(*v1 + 632) = v0;

  if (v0)
  {
    v4 = sub_10028E3CC;
  }

  else
  {
    v5 = v2[77];
    v6 = v2[76];
    v7 = v2[75];

    v4 = sub_10028E360;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10028E360()
{
  v1 = v0[63];
  v2 = v0[60];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10028E3CC()
{
  v27 = v0;
  v1 = v0[77];
  v2 = v0[76];
  v3 = v0[75];

  v4 = v0[79];
  v5 = v0[60];
  defaultLogger()();
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[59];
    v25 = v0[60];
    v9 = v0[58];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v13 = v0[52];
    v12 = v0[53];
    v14 = v0[54];
    v15 = Error.localizedDescription.getter();
    v17 = sub_100141FE4(v15, v16, &v26);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Received an error during clearing of all proofing sessions %s", v10, 0xCu);
    sub_10000BB78(v11);

    (*(v8 + 8))(v25, v9);
  }

  else
  {
    v19 = v0[59];
    v18 = v0[60];
    v20 = v0[58];

    (*(v19 + 8))(v18, v20);
  }

  v21 = v0[63];
  v22 = v0[60];

  v23 = v0[1];

  return v23();
}

void sub_10028E5CC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  v105 = a2;
  v100 = a3;
  v5 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v104 = &v99 - v7;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v117 = v8;
  v118 = v9;
  v10 = *(v9 + 8);
  v11 = __chkstk_darwin(v8);
  v102 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v103 = &v99 - v14;
  v15 = __chkstk_darwin(v13);
  v109 = &v99 - v16;
  v17 = __chkstk_darwin(v15);
  v107 = &v99 - v18;
  __chkstk_darwin(v17);
  v111 = &v99 - v19;
  v20 = type metadata accessor for ProofingSession();
  v116 = *(v20 - 8);
  v21 = *(v116 + 64);
  v22 = __chkstk_darwin(v20);
  v24 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v27 = &v99 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v99 - v29;
  __chkstk_darwin(v28);
  v32 = &v99 - v31;
  v124 = &_swiftEmptySetSingleton;
  v33 = *(a1 + 16);
  type metadata accessor for StoredProofingSession();
  v34 = static StoredProofingSession.fetchRequest()();
  v35 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v3)
  {
    v112 = v27;
    v113 = v30;
    v122 = v20;
    if (v35 >> 62)
    {
      goto LABEL_63;
    }

    for (i = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v37 = v111;
      v38 = v122;
      v99 = v3;
      if (i)
      {
        v123 = _swiftEmptyArrayStorage;
        sub_100173040(0, i & ~(i >> 63), 0);
        if (i < 0)
        {
          __break(1u);
          return;
        }

        v39 = v123;
        v40 = v116;
        if ((v35 & 0xC000000000000001) != 0)
        {
          for (j = 0; j != i; ++j)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            ProofingSession.init(_:)();
            v123 = v39;
            v43 = v39[2];
            v42 = v39[3];
            if (v43 >= v42 >> 1)
            {
              sub_100173040(v42 > 1, v43 + 1, 1);
              v40 = v116;
              v39 = v123;
            }

            v39[2] = v43 + 1;
            (*(v40 + 32))(v39 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v43, v32, v122);
          }
        }

        else
        {
          v45 = 32;
          do
          {
            v46 = *(v35 + v45);
            ProofingSession.init(_:)();
            v123 = v39;
            v32 = v39[2];
            v47 = v39[3];
            if (v32 >= v47 >> 1)
            {
              sub_100173040(v47 > 1, v32 + 1, 1);
              v40 = v116;
              v39 = v123;
            }

            v39[2] = v32 + 1;
            (*(v40 + 32))(v39 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v32, v24, v122);
            v45 += 8;
            --i;
          }

          while (i);
        }

        v37 = v111;
        v38 = v122;
      }

      else
      {

        v39 = _swiftEmptyArrayStorage;
        v40 = v116;
      }

      v24 = v113;
      v114 = v39[2];
      if (!v114)
      {
LABEL_59:

        *v100 = v39;
        return;
      }

      v48 = 0;
      v121 = v39 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
      v119 = (v40 + 8);
      v120 = v40 + 16;
      v115 = (v118 + 8);
      *&v44 = 136315138;
      v101 = v44;
      v106 = v39;
      while (v48 < v39[2])
      {
        v35 = *(v40 + 16);
        (v35)(v24, &v121[*(v40 + 72) * v48], v38);
        v49 = ProofingSession.proofingSessionID.getter();
        if (v50)
        {
          if (!v39[2])
          {
            goto LABEL_62;
          }

          v51 = v49;
          v32 = v50;
          v52 = v112;
          (v35)(v112, v121, v38);
          ProofingSession.documentType.getter();
          v54 = v53;
          v118 = *v119;
          (v118)(v52, v38);
          if (v54)
          {
            v55 = IdentityDocumentType.init(documentTypeString:)();
            v56 = v124;
            v57 = v124[2];
            v24 = v113;
            v110 = v55;
            if (v57 && (v58 = v124[5], Hasher.init(_seed:)(), String.hash(into:)(), v59 = Hasher._finalize()(), v60 = -1 << *(v56 + 32), v61 = v59 & ~v60, ((*(v56 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v61) & 1) != 0))
            {
              v62 = ~v60;
              while (1)
              {
                v63 = (v56[6] + 16 * v61);
                v64 = *v63 == v51 && v32 == v63[1];
                if (v64 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }

                v61 = (v61 + 1) & v62;
                if (((*(v56 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v61) & 1) == 0)
                {
                  goto LABEL_35;
                }
              }

              v96 = v102;
              defaultLogger()();
              v35 = Logger.logObject.getter();
              v97 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v35, v97))
              {
                v98 = swift_slowAlloc();
                *v98 = 0;
                _os_log_impl(&_mh_execute_header, v35, v97, "No proofingSessions exist to notify the server on terminal state", v98, 2u);
              }

              (*v115)(v96, v117);
              v38 = v122;
              (v118)(v24, v122);
              v37 = v111;
            }

            else
            {
LABEL_35:
              v65 = v109;
              defaultLogger()();

              v66 = Logger.logObject.getter();
              v67 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v66, v67))
              {
                v68 = v65;
                v69 = swift_slowAlloc();
                v70 = swift_slowAlloc();
                v123 = v70;
                *v69 = v101;
                *(v69 + 4) = sub_100141FE4(v51, v32, &v123);
                _os_log_impl(&_mh_execute_header, v66, v67, "Server has not been notified of about terminal state for proofingSessionID %s", v69, 0xCu);
                sub_10000BB78(v70);

                v71 = *v115;
                v72 = v68;
                v24 = v113;
              }

              else
              {

                v71 = *v115;
                v72 = v65;
              }

              v108 = v71;
              v71(v72, v117);

              sub_100151120(&v123, v51, v32);

              v79 = v24;
              v81 = ProofingSession.country.getter();
              v82 = v80;
              if (v80)
              {
                v35 = v80;
              }

              else
              {
                v35 = 0xE000000000000000;
              }

              v83 = ProofingSession.workflowID.getter();
              if (v84)
              {
                v85 = v83;
                v86 = v84;
                if (v82)
                {
                  v87 = v81;
                }

                else
                {
                  v87 = 0;
                }

                v88 = type metadata accessor for TaskPriority();
                v89 = v104;
                (*(*(v88 - 8) + 56))(v104, 1, 1, v88);
                v3 = swift_allocObject();
                v3[2] = 0;
                v3[3] = 0;
                v3[4] = v51;
                v3[5] = v32;
                v3[6] = v105;
                v3[7] = v87;
                v3[8] = v35;
                v3[9] = v85;
                v90 = v110;
                v3[10] = v86;
                v3[11] = v90;

                sub_1003E653C(0, 0, v89, &unk_1006DC540, v3);

                v38 = v122;
                (v118)(v79, v122);
                v37 = v111;
                v24 = v79;
              }

              else
              {

                v91 = v103;
                defaultLogger()();

                v35 = Logger.logObject.getter();
                v92 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v35, v92))
                {
                  v93 = swift_slowAlloc();
                  v94 = swift_slowAlloc();
                  v123 = v94;
                  *v93 = v101;
                  v95 = sub_100141FE4(v51, v32, &v123);

                  *(v93 + 4) = v95;
                  _os_log_impl(&_mh_execute_header, v35, v92, "unable to notify server of terminal state for proofingSessionID %s as workflowID doesn't exist", v93, 0xCu);
                  sub_10000BB78(v94);
                }

                else
                {
                }

                v108(v91, v117);
                v24 = v113;
                v38 = v122;
                (v118)(v113, v122);
                v37 = v111;
              }

              v39 = v106;
            }
          }

          else
          {

            v75 = v107;
            defaultLogger()();
            v35 = Logger.logObject.getter();
            v76 = static os_log_type_t.debug.getter();
            v77 = os_log_type_enabled(v35, v76);
            v24 = v113;
            if (v77)
            {
              v78 = swift_slowAlloc();
              *v78 = 0;
              _os_log_impl(&_mh_execute_header, v35, v76, "documentTypeString doesn't doesn't exist. Cannot continue with clearAllProofingSessionsAndNotifyServer", v78, 2u);
              v38 = v122;
            }

            (*v115)(v75, v117);
            (v118)(v24, v38);
          }
        }

        else
        {
          defaultLogger()();
          v35 = Logger.logObject.getter();
          v73 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v35, v73))
          {
            v74 = swift_slowAlloc();
            *v74 = 0;
            _os_log_impl(&_mh_execute_header, v35, v73, "ProofingSessionID doesn't doesn't exist. Cannot continue with clearAllProofingSessionsAndNotifyServer", v74, 2u);
            v38 = v122;
          }

          (*v115)(v37, v117);
          (*v119)(v24, v38);
        }

        ++v48;
        v40 = v116;
        if (v48 == v114)
        {
          goto LABEL_59;
        }
      }

      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      ;
    }
  }
}

void sub_10028F254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  __chkstk_darwin(v4);
  v30 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DIPError.Code();
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  __chkstk_darwin(v7);
  v35 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = *(type metadata accessor for ProofingSession() - 8);
    v12 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = *(v11 + 72);
    while (1)
    {
      v14 = ProofingSession.objectID.getter();
      v15 = *(a1 + 16);
      v16 = [v15 objectWithID:v14];
      type metadata accessor for StoredProofingSession();
      v17 = swift_dynamicCastClass();
      if (!v17)
      {
        break;
      }

      v18 = v17;

      [v15 deleteObject:v18];
      v12 += v13;
      if (!--v10)
      {
        goto LABEL_5;
      }
    }

    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    v36 = 0xD000000000000010;
    v37 = 0x80000001007094D0;
    v24 = [v14 description];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28._countAndFlagsBits = v25;
    v28._object = v27;
    String.append(_:)(v28);

    v29._countAndFlagsBits = 0xD00000000000001FLL;
    v29._object = 0x80000001007094F0;
    String.append(_:)(v29);
    (*(v33 + 104))(v35, enum case for DIPError.Code.coreDataError(_:), v34);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
LABEL_5:
    v19 = v38;
    sub_1005783D4();
    if (!v19)
    {
      v20 = v30;
      defaultLogger()();
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Deleted all the proofing sessions successfully", v23, 2u);
      }

      (*(v31 + 8))(v20, v32);
    }
  }
}

uint64_t sub_10028F6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 728) = v6;
  *(v7 + 1140) = a6;
  *(v7 + 720) = a5;
  *(v7 + 712) = a4;
  *(v7 + 704) = a3;
  *(v7 + 696) = a2;
  *(v7 + 688) = a1;
  v8 = type metadata accessor for DIPError.Code();
  *(v7 + 736) = v8;
  v9 = *(v8 - 8);
  *(v7 + 744) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 752) = swift_task_alloc();
  v11 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  *(v7 + 760) = swift_task_alloc();
  v12 = type metadata accessor for ProofingSession();
  *(v7 + 768) = v12;
  v13 = *(v12 - 8);
  *(v7 + 776) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 784) = swift_task_alloc();
  v15 = type metadata accessor for Logger();
  *(v7 + 792) = v15;
  v16 = *(v15 - 8);
  *(v7 + 800) = v16;
  v17 = *(v16 + 64) + 15;
  *(v7 + 808) = swift_task_alloc();
  *(v7 + 816) = swift_task_alloc();
  *(v7 + 824) = swift_task_alloc();
  *(v7 + 832) = swift_task_alloc();
  *(v7 + 840) = swift_task_alloc();
  *(v7 + 848) = swift_task_alloc();

  return _swift_task_switch(sub_10028F8AC, 0, 0);
}

uint64_t sub_10028F8AC()
{
  v63 = v0;
  if (*(v0 + 1140))
  {
    v1 = *(v0 + 840);
    v2 = *(v0 + 712);
    v3 = *(v0 + 696);
    defaultLogger()();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 840);
    v8 = *(v0 + 800);
    v9 = *(v0 + 792);
    if (v6)
    {
      v58 = *(v0 + 712);
      v10 = *(v0 + 704);
      v11 = *(v0 + 696);
      v12 = *(v0 + 688);
      v60 = *(v0 + 840);
      v13 = swift_slowAlloc();
      v62[0] = swift_slowAlloc();
      *v13 = 136315394;
      *(v13 + 4) = sub_100141FE4(v12, v11, v62);
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_100141FE4(v10, v58, v62);
      _os_log_impl(&_mh_execute_header, v4, v5, "IdentityProofingCleanupProvider clearing all proofing sessions for %s, and %s...", v13, 0x16u);
      swift_arrayDestroy();

      v14 = *(v8 + 8);
      v14(v60, v9);
    }

    else
    {

      v14 = *(v8 + 8);
      v14(v7, v9);
    }

    *(v0 + 920) = v14;
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v30 = qword_100881E78;
    *(v0 + 928) = qword_100881E78;
    v31 = *(v30 + 16);
    os_unfair_lock_lock(v31 + 54);
    sub_100031B5C(&v31[4], v0 + 16);
    os_unfair_lock_unlock(v31 + 54);
    v32 = *(v0 + 712);
    v33 = *(v0 + 704);
    v34 = *(v0 + 696);
    v35 = *(v0 + 688);
    v36 = *(v0 + 72);
    *(v0 + 936) = v36;

    sub_100031918(v0 + 16);
    v37 = swift_allocObject();
    *(v0 + 944) = v37;
    v37[2] = v35;
    v37[3] = v34;
    v37[4] = v33;
    v37[5] = v32;
    v38 = *(v36 + 16);
    v39 = swift_allocObject();
    *(v0 + 952) = v39;
    *(v39 + 16) = sub_1002A7484;
    *(v39 + 24) = v37;
    v40 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

    v41 = swift_task_alloc();
    *(v0 + 960) = v41;
    v42 = sub_100007224(&qword_10083E3E0, &qword_1006DBCE0);
    *v41 = v0;
    v41[1] = sub_100290CF8;
    v43 = v0 + 656;
  }

  else
  {
    v15 = *(v0 + 848);
    v16 = *(v0 + 712);
    v17 = *(v0 + 696);
    defaultLogger()();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();

    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 848);
    v22 = *(v0 + 800);
    v23 = *(v0 + 792);
    if (v20)
    {
      v57 = *(v0 + 720);
      v24 = *(v0 + 712);
      v25 = *(v0 + 704);
      v26 = *(v0 + 696);
      v61 = *(v0 + 848);
      v27 = *(v0 + 688);
      v59 = *(v0 + 792);
      v28 = swift_slowAlloc();
      v62[0] = swift_slowAlloc();
      *v28 = 136315650;
      *(v28 + 4) = sub_100141FE4(v27, v26, v62);
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_100141FE4(v25, v24, v62);
      *(v28 + 22) = 2048;
      *(v28 + 24) = IdentityTarget.rawValue.getter();
      _os_log_impl(&_mh_execute_header, v18, v19, "IdentityProofingCleanupProvider clearing all proofing sessions for %s, %s, target: %lld...", v28, 0x20u);
      swift_arrayDestroy();

      v29 = *(v22 + 8);
      v29(v61, v59);
    }

    else
    {

      v29 = *(v22 + 8);
      v29(v21, v23);
    }

    *(v0 + 856) = v29;
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v44 = qword_100881E78;
    *(v0 + 864) = qword_100881E78;
    v45 = *(v44 + 16);
    os_unfair_lock_lock(v45 + 54);
    sub_100031B5C(&v45[4], v0 + 416);
    os_unfair_lock_unlock(v45 + 54);
    v46 = *(v0 + 720);
    v47 = *(v0 + 712);
    v48 = *(v0 + 704);
    v49 = *(v0 + 696);
    v50 = *(v0 + 688);
    v51 = *(v0 + 472);
    *(v0 + 872) = v51;

    sub_100031918(v0 + 416);
    v52 = swift_allocObject();
    *(v0 + 880) = v52;
    v52[2] = v50;
    v52[3] = v49;
    v52[4] = v48;
    v52[5] = v47;
    v52[6] = v46;
    v53 = *(v51 + 16);
    v39 = swift_allocObject();
    *(v0 + 888) = v39;
    *(v39 + 16) = sub_1002A7568;
    *(v39 + 24) = v52;
    v54 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

    v55 = swift_task_alloc();
    *(v0 + 896) = v55;
    v42 = sub_100007224(&qword_10083E3E0, &qword_1006DBCE0);
    *v55 = v0;
    v55[1] = sub_10028FF24;
    v43 = v0 + 680;
  }

  return AsyncCoreDataContainer.performRead<A>(_:)(v43, sub_10026CBEC, v39, v42);
}

uint64_t sub_10028FF24()
{
  v2 = *v1;
  v3 = *(*v1 + 896);
  v9 = *v1;
  *(*v1 + 904) = v0;

  if (v0)
  {
    v4 = sub_1002908BC;
  }

  else
  {
    v5 = v2[111];
    v6 = v2[110];
    v7 = v2[109];

    v2[114] = v2[85];
    v4 = sub_100290068;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_100290068()
{
  v1 = *(v0 + 912);
  v2 = *(v0 + 904);
  v3 = *(v0 + 856);
  *(v0 + 1008) = *(v0 + 864);
  *(v0 + 1000) = v1;
  *(v0 + 992) = v3;
  *(v0 + 984) = v2;
  *(v0 + 672) = &_swiftEmptySetSingleton;
  v4 = *(v1 + 16);
  *(v0 + 1016) = v4;
  if (!v4)
  {
LABEL_31:

    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v61 = *(v0 + 984);
    v62 = *(*(v0 + 1008) + 16);
    os_unfair_lock_lock(v62 + 54);
    sub_100031B5C(&v62[4], v0 + 216);
    os_unfair_lock_unlock(v62 + 54);
    if (!v61)
    {
      v63 = *(v0 + 1000);
      v64 = *(v0 + 1140);
      v65 = *(v0 + 720);
      v66 = *(v0 + 712);
      v67 = *(v0 + 704);
      v68 = *(v0 + 696);
      v69 = *(v0 + 688);
      v70 = *(v0 + 272);
      *(v0 + 1096) = v70;

      sub_100031918(v0 + 216);
      v71 = swift_allocObject();
      *(v0 + 1104) = v71;
      *(v71 + 16) = v63;
      *(v71 + 24) = v69;
      *(v71 + 32) = v68;
      *(v71 + 40) = v67;
      *(v71 + 48) = v66;
      *(v71 + 56) = v65;
      *(v71 + 64) = v64 & 1;
      v72 = *(v70 + 16);
      v73 = swift_allocObject();
      *(v0 + 1112) = v73;
      *(v73 + 16) = sub_1002A74EC;
      *(v73 + 24) = v71;
      v74 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

      v75 = swift_task_alloc();
      *(v0 + 1120) = v75;
      *v75 = v0;
      v75[1] = sub_100292704;

      AsyncCoreDataContainer.performWrite<A>(_:)(v75, sub_10021F3D0, v73, &type metadata for () + 8);
    }

    return;
  }

  *(v0 + 1136) = *(*(v0 + 776) + 80);
  *(v0 + 1064) = 0;
  *(v0 + 1056) = v3;
  *(v0 + 1048) = v3;
  *(v0 + 1040) = v3;
  *(v0 + 1032) = v3;
  *(v0 + 1024) = v3;
  v5 = *(v1 + 16);

  if (!v5)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    v59 = *(v0 + 1000);

    v60 = *(v0 + 672);
    goto LABEL_31;
  }

  v7 = 0;
  v8 = (v0 + 672);
  while (1)
  {
    (*(*(v0 + 776) + 16))(*(v0 + 784), v6 + ((*(v0 + 1136) + 32) & ~*(v0 + 1136)) + *(*(v0 + 776) + 72) * v7, *(v0 + 768));
    v9 = ProofingSession.proofingSessionID.getter();
    *(v0 + 1072) = v10;
    if (!v10)
    {
      break;
    }

    v11 = v9;
    v12 = v10;
    v13 = *v8;
    if (*(*v8 + 16))
    {
      v14 = *(v13 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      v15 = Hasher._finalize()();
      v16 = -1 << *(v13 + 32);
      v17 = v15 & ~v16;
      if ((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
      {
        v18 = ~v16;
        while (1)
        {
          v19 = (*(v13 + 48) + 16 * v17);
          v20 = *v19 == v11 && v12 == v19[1];
          if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v17 = (v17 + 1) & v18;
          if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_14;
          }
        }

LABEL_41:
        v84 = *(v0 + 1072);

        break;
      }
    }

LABEL_14:
    v21 = *(v0 + 784);
    v22 = ProofingSession.workflowID.getter();
    if (v23)
    {
      v24 = v22;
      v25 = v23;
      v26 = *(v0 + 784);
      v27 = ProofingSession.country.getter();
      if (v28)
      {
        v29 = v27;
        v30 = v28;
        v31 = *(v0 + 784);
        ProofingSession.documentType.getter();
        if (v32)
        {
          v76 = *(v0 + 760);
          v89 = *(v0 + 728);
          v88 = IdentityDocumentType.init(documentTypeString:)();

          sub_100151120((v0 + 640), v11, v12);
          v77 = *(v0 + 648);

          v78 = type metadata accessor for TaskPriority();
          (*(*(v78 - 8) + 56))(v76, 1, 1, v78);
          v79 = swift_allocObject();
          v79[2] = 0;
          v79[3] = 0;
          v79[4] = v11;
          v79[5] = v12;
          v79[6] = v89;
          v79[7] = v29;
          v79[8] = v30;
          v79[9] = v24;
          v79[10] = v25;
          v79[11] = v88;

          sub_1003E653C(0, 0, v76, &unk_1006DC538, v79);

          v80 = IdentityDocumentType.rawValue.getter();
          if (v80 == IdentityDocumentType.rawValue.getter())
          {
            v81 = *(v0 + 1140);
            v82 = swift_task_alloc();
            *(v0 + 1080) = v82;
            *v82 = v0;
            v82[1] = sub_100291ACC;
            v83 = *(v0 + 720);

            sub_1002A2920(v11, v12, v83, v81 & 1 | 0x80);
            return;
          }

          goto LABEL_41;
        }

        v33 = *(v0 + 832);

        defaultLogger()();
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.error.getter();
        v36 = os_log_type_enabled(v34, v35);
        v37 = *(v0 + 832);
        v38 = *(v0 + 800);
        v39 = *(v0 + 792);
        if (!v36)
        {
LABEL_24:

LABEL_26:
          v3(v37, v39);
          goto LABEL_27;
        }

        v40 = swift_slowAlloc();
        *v40 = 0;
        v41 = v35;
        v42 = v34;
        v43 = "IdentityProofingCleanupProvider: Unable to retrieve the documentTypeString from the database";
      }

      else
      {
        v52 = *(v0 + 824);

        defaultLogger()();
        v34 = Logger.logObject.getter();
        v53 = static os_log_type_t.error.getter();
        v54 = os_log_type_enabled(v34, v53);
        v37 = *(v0 + 824);
        v55 = *(v0 + 800);
        v39 = *(v0 + 792);
        if (!v54)
        {
          goto LABEL_24;
        }

        v40 = swift_slowAlloc();
        *v40 = 0;
        v41 = v53;
        v42 = v34;
        v43 = "IdentityProofingCleanupProvider country does not exist; skipping notifying server";
      }

      _os_log_impl(&_mh_execute_header, v42, v41, v43, v40, 2u);

      v3(v37, v39);
    }

    else
    {
      v44 = *(v0 + 816);

      defaultLogger()();
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v45, v46))
      {
        v37 = *(v0 + 816);
        v56 = *(v0 + 800);
        v39 = *(v0 + 792);

        goto LABEL_26;
      }

      v47 = *(v0 + 992);
      v48 = *(v0 + 816);
      v49 = *(v0 + 792);
      v50 = *(v0 + 800) + 8;
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "IdentityProofingCleanupProvider workflow id does not exist; skipping notifying server", v51, 2u);

      v47(v48, v49);
      v3 = *(v0 + 992);
    }

LABEL_27:
    v57 = *(v0 + 1016);
    v58 = *(v0 + 1064) + 1;
    (*(*(v0 + 776) + 8))(*(v0 + 784), *(v0 + 768));
    if (v58 == v57)
    {
      goto LABEL_30;
    }

    v7 = *(v0 + 1064) + 1;
    *(v0 + 1064) = v7;
    *(v0 + 1056) = v3;
    *(v0 + 1048) = v3;
    *(v0 + 1040) = v3;
    *(v0 + 1032) = v3;
    *(v0 + 1024) = v3;
    v6 = *(v0 + 1000);
    if (v7 >= *(v6 + 16))
    {
      goto LABEL_29;
    }
  }

  v85 = swift_task_alloc();
  *(v0 + 1088) = v85;
  *v85 = v0;
  v85[1] = sub_100291C3C;
  v86 = *(v0 + 784);
  v87 = *(v0 + 728);

  sub_100299718(v86);
}

uint64_t sub_1002908BC()
{
  v46 = v0;
  v1 = *(v0 + 888);
  v2 = *(v0 + 880);
  v3 = *(v0 + 872);

  v4 = *(v0 + 904);
  v5 = *(v0 + 856);
  v6 = *(v0 + 808);
  v7 = *(v0 + 712);
  v8 = *(v0 + 696);
  defaultLogger()();

  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v43 = v5;
    v11 = *(v0 + 1140);
    v12 = *(v0 + 712);
    v13 = *(v0 + 704);
    v14 = *(v0 + 696);
    v15 = *(v0 + 688);
    v16 = swift_slowAlloc();
    v45[0] = swift_slowAlloc();
    *v16 = 136315906;
    *(v16 + 4) = sub_100141FE4(v15, v14, v45);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100141FE4(v13, v12, v45);
    *(v16 + 22) = 2080;
    if (v11)
    {
      v17 = 0xE500000000000000;
      v18 = 0x3E6C696E3CLL;
    }

    else
    {
      v22 = *(v0 + 720);
      v18 = IdentityTarget.debugDescription.getter();
      v17 = v23;
    }

    v41 = *(v0 + 808);
    v24 = *(v0 + 800);
    v25 = *(v0 + 792);
    v26 = sub_100141FE4(v18, v17, v45);

    *(v16 + 24) = v26;
    *(v16 + 32) = 2080;
    swift_getErrorValue();
    v27 = *(v0 + 616);
    v28 = *(v0 + 624);
    v29 = *(v0 + 632);
    v30 = Error.localizedDescription.getter();
    v32 = sub_100141FE4(v30, v31, v45);

    *(v16 + 34) = v32;
    _os_log_impl(&_mh_execute_header, v9, v10, "IdentityProofingCleanupProvider Received an error during clearing all proofing sessions for %s, %s, %s: %s", v16, 0x2Au);
    swift_arrayDestroy();

    v43(v41, v25);
  }

  else
  {
    v19 = *(v0 + 808);
    v20 = *(v0 + 800);
    v21 = *(v0 + 792);

    v5(v19, v21);
  }

  v33 = *(v0 + 848);
  v34 = *(v0 + 840);
  v35 = *(v0 + 832);
  v38 = *(v0 + 824);
  v39 = *(v0 + 816);
  v40 = *(v0 + 808);
  v42 = *(v0 + 784);
  v44 = *(v0 + 760);
  (*(*(v0 + 744) + 104))(*(v0 + 752), enum case for DIPError.Code.unableToClearWatchProofingSession(_:), *(v0 + 736));
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_100290CF8()
{
  v2 = *v1;
  v3 = *(*v1 + 960);
  v9 = *v1;
  *(*v1 + 968) = v0;

  if (v0)
  {
    v4 = sub_100291690;
  }

  else
  {
    v5 = v2[119];
    v6 = v2[118];
    v7 = v2[117];

    v2[122] = v2[82];
    v4 = sub_100290E3C;
  }

  return _swift_task_switch(v4, 0, 0);
}