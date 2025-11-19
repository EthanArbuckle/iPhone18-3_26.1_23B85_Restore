uint64_t sub_100312A38()
{
  v59 = v0;
  v1 = v0[52];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[64];
    v56 = v0[55];
    v5 = v0[52];
    v6 = v0[49];
    v7 = v0[50];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v58 = v9;
    *v8 = 136446210;
    v10 = IdentityProofingActionStatus.debugDescription.getter();
    v12 = sub_100141FE4(v10, v11, &v58);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "DISPLAY_MESSAGE doesn't exist for action status %{public}s. Creating display message using fallback strings.", v8, 0xCu);
    sub_10000BB78(v9);

    v56(v5, v6);
  }

  else
  {
    v13 = v0[55];
    v14 = v0[52];
    v15 = v0[49];
    v16 = v0[50];

    v13(v14, v15);
  }

  v17 = v0[73];
  v18 = v0[71];
  v19 = v0[70];
  v20 = v0[42];
  v21 = v0[39];
  v22 = v0[36];
  IdentityProofingDisplayMessage.init(title:messages:primaryButtonTitle:secondaryButtonTitle:learnMoreTitle:url:learnMoreURL:)();

  sub_10000BE18(v20, &qword_10083BD28, &qword_1006DA240);
  v19(v21, 0, 1, v22);
  sub_1001A2A40(v21, v20);
  v23 = v0[40];
  v24 = v0[36];
  v25 = v0[37];
  sub_10000BBC4(v0[42], v23, &qword_10083BD28, &qword_1006DA240);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    v26 = v0[68];
    v27 = v0[56];
    v29 = v0[44];
    v28 = v0[45];
    v30 = v0[43];
    v57 = v0[42];
    v31 = v0[40];

    sub_10000BE18(v31, &qword_10083BD28, &qword_1006DA240);
    v32 = *(v29 + 104);
    v32(v28, enum case for DIPError.Code.displayMessageDataUnavailable(_:), v30);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BE18(v57, &qword_10083BD28, &qword_1006DA240);
    v33 = enum case for DIPError.Code.internalError(_:);
    v32(v28, enum case for DIPError.Code.internalError(_:), v30);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v32(v0[45], v33, v0[43]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v35 = v0[53];
    v34 = v0[54];
    v37 = v0[51];
    v36 = v0[52];
    v38 = v0[48];
    v39 = v0[45];
    v41 = v0[41];
    v40 = v0[42];
    v42 = v0[39];
    v43 = v0[40];
    v55 = v0[38];

    v44 = v0[1];

    return v44();
  }

  else
  {
    v46 = v0[56];
    (*(v0[37] + 32))(v0[38], v0[40], v0[36]);
    v47 = swift_task_alloc();
    v0[74] = v47;
    *v47 = v0;
    v47[1] = sub_1003130A0;
    v48 = v0[69];
    v49 = v0[68];
    v50 = v0[67];
    v51 = v0[64];
    v52 = v0[57];
    v53 = v0[38];
    v54 = v0[34];

    return sub_1001A08A0(v53, v54, v52, v46, v51, v50, v49);
  }
}

uint64_t sub_1003130A0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v3[32] = v1;
  v3[33] = a1;
  v4 = v2[74];
  v5 = v2[68];
  v6 = v2[56];
  v8 = *v1;

  return _swift_task_switch(sub_1003131D8, 0, 0);
}

uint64_t sub_1003131D8()
{
  v1 = v0[51];
  v2 = v0[42];
  (*(v0[37] + 8))(v0[38], v0[36]);
  sub_10000BE18(v2, &qword_10083BD28, &qword_1006DA240);
  defaultLogger()();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Successfully retrieved extended review display info", v5, 2u);
  }

  v7 = v0[54];
  v6 = v0[55];
  v9 = v0[52];
  v8 = v0[53];
  v11 = v0[50];
  v10 = v0[51];
  v13 = v0[48];
  v12 = v0[49];
  v16 = v0[45];
  v17 = v0[42];
  v18 = v0[41];
  v19 = v0[40];
  v20 = v0[39];
  v21 = v0[38];
  v22 = v0[33];

  v6(v10, v12);

  v14 = v0[1];

  return v14(v22);
}

uint64_t sub_1003133A8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 128) = a4;
  *(v5 + 136) = v4;
  *(v5 + 424) = a3;
  *(v5 + 112) = a1;
  *(v5 + 120) = a2;
  v6 = type metadata accessor for DIPError.Code();
  *(v5 + 144) = v6;
  v7 = *(v6 - 8);
  *(v5 + 152) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 160) = swift_task_alloc();
  v9 = sub_100007224(&qword_100833680, &qword_1006C4A20);
  *(v5 + 168) = v9;
  v10 = *(v9 - 8);
  *(v5 + 176) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 184) = swift_task_alloc();
  v12 = *(*(sub_100007224(&qword_10083DC18, &unk_1006DB720) - 8) + 64) + 15;
  *(v5 + 192) = swift_task_alloc();
  v13 = type metadata accessor for ProofingSession();
  *(v5 + 200) = v13;
  v14 = *(v13 - 8);
  *(v5 + 208) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 216) = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  *(v5 + 224) = v16;
  v17 = *(v16 - 8);
  *(v5 + 232) = v17;
  v18 = *(v17 + 64) + 15;
  *(v5 + 240) = swift_task_alloc();
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 256) = swift_task_alloc();
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 272) = swift_task_alloc();
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();

  return _swift_task_switch(sub_100313610, 0, 0);
}

uint64_t sub_100313610()
{
  v1 = v0[16];
  if (v1 == 1)
  {
    v5 = *(v0[17] + 272);
    v6 = swift_task_alloc();
    v0[41] = v6;
    *v6 = v0;
    v6[1] = sub_10031454C;
    v7 = v0[24];
    v8 = v0[14];

    return sub_1002D7508(v7, v8);
  }

  else if (v1)
  {
    v9 = v0[30];
    defaultLogger()();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[29];
    v13 = v0[30];
    v15 = v0[28];
    if (v12)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Invalid consent type. Cannot save consent data", v16, 2u);
    }

    (*(v14 + 8))(v13, v15);
    v18 = v0[35];
    v17 = v0[36];
    v20 = v0[33];
    v19 = v0[34];
    v22 = v0[31];
    v21 = v0[32];
    v23 = v0[30];
    v24 = v0[27];
    v26 = v0[23];
    v25 = v0[24];
    v28 = v0[20];

    v27 = v0[1];

    return v27();
  }

  else
  {
    v2 = swift_task_alloc();
    v0[37] = v2;
    *v2 = v0;
    v2[1] = sub_1003138C0;
    v3 = v0[14];

    return sub_1002A5E10(v3);
  }
}

uint64_t sub_1003138C0()
{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_100313D18;
  }

  else
  {
    v3 = sub_1003139D4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003139D4()
{
  v1 = *(v0 + 304);
  v2 = [objc_opt_self() standardUserDefaults];
  v3._countAndFlagsBits = static SharedInternalDefaultsKeys.injectFedStatsData.getter();
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  v5 = *(v0 + 424);
  if (v4)
  {
    if (*(v0 + 424))
    {
      v6 = swift_task_alloc();
      *(v0 + 312) = v6;
      *v6 = v0;
      v6[1] = sub_1003140A4;
      v7 = *(v0 + 112);

      return sub_1002FAF68(1, v7);
    }

    goto LABEL_9;
  }

  if (!*(v0 + 424))
  {
LABEL_9:
    v12 = *(v0 + 280);
    defaultLogger()();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 280);
    v17 = *(v0 + 224);
    v18 = *(v0 + 232);
    if (v15)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "IdentityProofingFlow the user has not given consent to share the biome data", v19, 2u);
    }

    (*(v18 + 8))(v16, v17);
    goto LABEL_12;
  }

  sub_1002A5038(*(v0 + 112));
  if (v1)
  {
    v9 = *(v0 + 288);
    v10 = *(v0 + 224);
    v11 = *(v0 + 232);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    (*(v11 + 8))(v9, v10);
LABEL_12:
    v21 = *(v0 + 280);
    v20 = *(v0 + 288);
    v23 = *(v0 + 264);
    v22 = *(v0 + 272);
    v25 = *(v0 + 248);
    v24 = *(v0 + 256);
    v26 = *(v0 + 240);
    v27 = *(v0 + 216);
    v29 = *(v0 + 184);
    v28 = *(v0 + 192);
    v35 = *(v0 + 160);

    v30 = *(v0 + 8);

    return v30();
  }

  v31 = *(*(v0 + 136) + 248);
  v32 = swift_task_alloc();
  *(v0 + 320) = v32;
  *v32 = v0;
  v32[1] = sub_1003142F8;
  v34 = *(v0 + 112);
  v33 = *(v0 + 120);

  return sub_1001F52B4(v34, v33);
}

uint64_t sub_100313D18()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 288);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v4 + 8))(v2, v3);
  v5 = [objc_opt_self() standardUserDefaults];
  v6._countAndFlagsBits = static SharedInternalDefaultsKeys.injectFedStatsData.getter();
  LOBYTE(v3) = NSUserDefaults.internalBool(forKey:)(v6);

  v7 = *(v0 + 424);
  if (v3)
  {
    if (*(v0 + 424))
    {
      v8 = swift_task_alloc();
      *(v0 + 312) = v8;
      *v8 = v0;
      v8[1] = sub_1003140A4;
      v9 = *(v0 + 112);

      return sub_1002FAF68(1, v9);
    }

    goto LABEL_8;
  }

  if (!*(v0 + 424))
  {
LABEL_8:
    v11 = *(v0 + 280);
    defaultLogger()();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 280);
    v16 = *(v0 + 224);
    v17 = *(v0 + 232);
    if (v14)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "IdentityProofingFlow the user has not given consent to share the biome data", v18, 2u);
    }

    (*(v17 + 8))(v15, v16);
    v20 = *(v0 + 280);
    v19 = *(v0 + 288);
    v22 = *(v0 + 264);
    v21 = *(v0 + 272);
    v24 = *(v0 + 248);
    v23 = *(v0 + 256);
    v25 = *(v0 + 240);
    v26 = *(v0 + 216);
    v28 = *(v0 + 184);
    v27 = *(v0 + 192);
    v34 = *(v0 + 160);

    v29 = *(v0 + 8);

    return v29();
  }

  sub_1002A5038(*(v0 + 112));
  v30 = *(*(v0 + 136) + 248);
  v31 = swift_task_alloc();
  *(v0 + 320) = v31;
  *v31 = v0;
  v31[1] = sub_1003142F8;
  v33 = *(v0 + 112);
  v32 = *(v0 + 120);

  return sub_1001F52B4(v33, v32);
}

uint64_t sub_1003140A4()
{
  v1 = *v0;
  v2 = *(*v0 + 312);
  v16 = *v0;

  v3 = v1[36];
  v4 = v1[35];
  v5 = v1[34];
  v6 = v1[33];
  v7 = v1[32];
  v8 = v1[31];
  v9 = v1[30];
  v10 = v1[27];
  v14 = v1[24];
  v15 = v1[23];
  v11 = v1[20];

  v12 = *(v16 + 8);

  return v12();
}

uint64_t sub_1003142F8()
{
  v1 = *v0;
  v2 = *(*v0 + 320);
  v16 = *v0;

  v3 = v1[36];
  v4 = v1[35];
  v5 = v1[34];
  v6 = v1[33];
  v7 = v1[32];
  v8 = v1[31];
  v9 = v1[30];
  v10 = v1[27];
  v14 = v1[24];
  v15 = v1[23];
  v11 = v1[20];

  v12 = *(v16 + 8);

  return v12();
}

uint64_t sub_10031454C()
{
  v1 = *(*v0 + 328);
  v3 = *v0;

  return _swift_task_switch(sub_100314648, 0, 0);
}

uint64_t sub_100314648()
{
  v93 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 248);
    sub_10000BE18(v3, &qword_10083DC18, &unk_1006DB720);
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 248);
    v9 = *(v0 + 224);
    v10 = *(v0 + 232);
    if (v7)
    {
      v11 = *(v0 + 112);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v92 = v13;
      *v12 = 136315138;
      v14 = IdentityDocumentType.description.getter();
      v16 = sub_100141FE4(v14, v15, &v92);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v5, v6, "Proofing Session doesn't exist for documentType: %s", v12, 0xCu);
      sub_10000BB78(v13);
    }

    (*(v10 + 8))(v8, v9);
    goto LABEL_11;
  }

  (*(v2 + 32))(*(v0 + 216), v3, v1);
  v17 = ProofingSession.proofingSessionID.getter();
  if (!v18)
  {
    v30 = *(v0 + 208);
    v29 = *(v0 + 216);
    v31 = *(v0 + 200);
    (*(*(v0 + 152) + 104))(*(v0 + 160), enum case for DIPError.Code.proofingSessionDoesntExist(_:), *(v0 + 144));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v30 + 8))(v29, v31);
    goto LABEL_10;
  }

  v19 = v17;
  v20 = v18;
  if (*(v0 + 424))
  {
    v21 = *(v0 + 216);
    *(v0 + 368) = ProofingSession.livenessManualReviewEncryptedMessage.getter();
    *(v0 + 376) = v22;
    if (v22 >> 60 == 15)
    {
      v24 = *(v0 + 208);
      v23 = *(v0 + 216);
      v25 = *(v0 + 200);
      v27 = *(v0 + 152);
      v26 = *(v0 + 160);
      v28 = *(v0 + 144);

      (*(v27 + 104))(v26, enum case for DIPError.Code.keyMaterialFailureForLivenessManualReview(_:), v28);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v24 + 8))(v23, v25);
LABEL_10:
      v32 = *(v0 + 288);
      v33 = *(v0 + 224);
      v34 = *(v0 + 232);
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      (*(v34 + 8))(v32, v33);
LABEL_11:
      v36 = *(v0 + 280);
      v35 = *(v0 + 288);
      v38 = *(v0 + 264);
      v37 = *(v0 + 272);
      v40 = *(v0 + 248);
      v39 = *(v0 + 256);
      v41 = *(v0 + 240);
      v42 = *(v0 + 216);
      v44 = *(v0 + 184);
      v43 = *(v0 + 192);
      v90 = *(v0 + 160);

      v45 = *(v0 + 8);

      return v45();
    }

    v91 = v19;
    v60 = *(v0 + 264);
    defaultLogger()();
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "Successfully fetched the encrypted message for liveness manual review", v63, 2u);
    }

    v64 = *(v0 + 264);
    v66 = *(v0 + 224);
    v65 = *(v0 + 232);
    v67 = *(v0 + 184);
    v68 = *(v0 + 168);

    v69 = *(v65 + 8);
    v69(v64, v66);
    v70 = type metadata accessor for JSONDecoder();
    v71 = *(v70 + 48);
    v72 = *(v70 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    sub_1000BA30C(&qword_100834E68, &qword_100833680, &qword_1006C4A20);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v89 = v69;
    v73 = *(v0 + 256);

    defaultLogger()();
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v74, v75, "Successfully decoded the encrypted message", v76, 2u);
    }

    v77 = *(v0 + 256);
    v79 = *(v0 + 224);
    v78 = *(v0 + 232);
    v81 = *(v0 + 176);
    v80 = *(v0 + 184);
    v82 = *(v0 + 168);
    v83 = *(v0 + 136);

    v89(v77, v79);
    *(v0 + 384) = *(v83 + 80);
    sub_100007224(&qword_100833B78, &unk_1006D9F00);
    inited = swift_initStackObject();
    *(v0 + 392) = inited;
    *(inited + 16) = xmmword_1006BF520;
    *(inited + 32) = v91;
    *(inited + 40) = v20;
    sub_100007224(&qword_100840E10, &qword_1006DD948);
    v85 = *(v81 + 72);
    v86 = (*(v81 + 80) + 32) & ~*(v81 + 80);
    v87 = swift_allocObject();
    *(v0 + 400) = v87;
    *(v87 + 16) = xmmword_1006BF520;
    (*(v81 + 16))(v87 + v86, v80, v82);

    v88 = swift_task_alloc();
    *(v0 + 408) = v88;
    *v88 = v0;
    v88[1] = sub_100315354;
    v58 = inited;
    v59 = 0;
    v57 = v87;
  }

  else
  {
    v47 = *(v0 + 272);
    defaultLogger()();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "User has not given consent to share the liveness data. Notifying the server...", v50, 2u);
    }

    v51 = *(v0 + 272);
    v52 = *(v0 + 224);
    v53 = *(v0 + 232);
    v54 = *(v0 + 136);

    (*(v53 + 8))(v51, v52);
    *(v0 + 336) = *(v54 + 80);
    sub_100007224(&qword_100833B78, &unk_1006D9F00);
    v55 = swift_initStackObject();
    *(v0 + 344) = v55;
    *(v55 + 16) = xmmword_1006BF520;
    *(v55 + 32) = v19;
    *(v55 + 40) = v20;

    v56 = swift_task_alloc();
    *(v0 + 352) = v56;
    *v56 = v0;
    v56[1] = sub_100314FA4;
    v57 = _swiftEmptyArrayStorage;
    v58 = v55;
    v59 = 1;
  }

  return (sub_10031AEC0)(v58, v59, v57);
}

uint64_t sub_100314FA4()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 344);
  v6 = *(v2 + 336);

  swift_setDeallocating();
  sub_10004D860(v5 + 32);
  if (v0)
  {
    v7 = sub_100315204;
  }

  else
  {
    v7 = sub_1003150FC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003150FC()
{
  (*(v0[26] + 8))(v0[27], v0[25]);
  v2 = v0[35];
  v1 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[30];
  v8 = v0[27];
  v10 = v0[23];
  v9 = v0[24];
  v13 = v0[20];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100315204()
{
  (*(v0[26] + 8))(v0[27], v0[25]);
  v1 = v0[45];
  v2 = v0[36];
  v3 = v0[28];
  v4 = v0[29];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v4 + 8))(v2, v3);
  v6 = v0[35];
  v5 = v0[36];
  v8 = v0[33];
  v7 = v0[34];
  v10 = v0[31];
  v9 = v0[32];
  v11 = v0[30];
  v12 = v0[27];
  v14 = v0[23];
  v13 = v0[24];
  v17 = v0[20];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100315354()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *v1;
  *(*v1 + 416) = v0;

  v5 = v2[50];
  v6 = v2[49];
  v7 = v2[48];

  swift_setDeallocating();
  sub_10004D860(v6 + 32);
  if (v0)
  {
    v8 = sub_100315608;
  }

  else
  {
    v8 = sub_1003154D0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1003154D0()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  sub_10000BD94(v0[46], v0[47]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v8 = v0[35];
  v7 = v0[36];
  v10 = v0[33];
  v9 = v0[34];
  v12 = v0[31];
  v11 = v0[32];
  v13 = v0[30];
  v14 = v0[27];
  v16 = v0[23];
  v15 = v0[24];
  v19 = v0[20];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100315608()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  sub_10000BD94(v0[46], v0[47]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = v0[52];
  v8 = v0[36];
  v9 = v0[28];
  v10 = v0[29];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v10 + 8))(v8, v9);
  v12 = v0[35];
  v11 = v0[36];
  v14 = v0[33];
  v13 = v0[34];
  v16 = v0[31];
  v15 = v0[32];
  v17 = v0[30];
  v18 = v0[27];
  v20 = v0[23];
  v19 = v0[24];
  v23 = v0[20];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1003157AC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1003157E4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v5(&v10, *a1);
  if (!v3)
  {
    v8 = v11;
    result = *&v10;
    v9 = v12;
    *a2 = v10;
    *(a2 + 16) = v8;
    *(a2 + 24) = v9;
  }

  return result;
}

uint64_t sub_10031583C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

void *sub_10031589C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  result = v5(v9, *a1);
  if (!v3)
  {
    v8 = v9[1];
    *a2 = v9[0];
    a2[1] = v8;
  }

  return result;
}

uint64_t sub_1003158E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10031593C(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100027B9C;

  return sub_100309428(a1, a2);
}

unsigned __int8 *sub_1003159F4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1._countAndFlagsBits = static DaemonInternalDefaultsKeys.simulateDynamicWorkflowDelay.getter();
  v2 = NSUserDefaults.internalString(forKey:)(v1);

  if (!v2.value._object)
  {
    return 0;
  }

  v4 = (v2.value._object >> 56) & 0xF;
  v5 = v2.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v2.value._object & 0x2000000000000000) != 0)
  {
    v6 = (v2.value._object >> 56) & 0xF;
  }

  else
  {
    v6 = v2.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    return 0;
  }

  if ((v2.value._object & 0x1000000000000000) != 0)
  {

    v8 = sub_1000FFDD8(v2.value._countAndFlagsBits, v2.value._object, 10);
    v28 = v27;
    swift_bridgeObjectRelease_n();
    if ((v28 & 1) == 0)
    {
LABEL_64:
      if (v8 >= 1)
      {
        return v8;
      }
    }

    return 0;
  }

  if ((v2.value._object & 0x2000000000000000) == 0)
  {
    if ((v2.value._countAndFlagsBits & 0x1000000000000000) != 0)
    {
      result = ((v2.value._object & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        v4 = v5 - 1;
        if (v5 != 1)
        {
          v8 = 0;
          if (result)
          {
            v15 = result + 1;
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_62;
              }

              v17 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_62;
              }

              v8 = v17 + v16;
              if (__OFADD__(v17, v16))
              {
                goto LABEL_62;
              }

              ++v15;
              if (!--v4)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_54;
        }

        goto LABEL_62;
      }

      goto LABEL_74;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        v8 = 0;
        if (result)
        {
          while (1)
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_62;
            }

            v22 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_62;
            }

            v8 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              goto LABEL_62;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_54;
            }
          }
        }

        goto LABEL_54;
      }

LABEL_62:
      v8 = 0;
      LOBYTE(v4) = 1;
LABEL_63:
      v30 = v4;
      v26 = v4;

      if ((v26 & 1) == 0)
      {
        goto LABEL_64;
      }

      return 0;
    }

    if (v5 >= 1)
    {
      v4 = v5 - 1;
      if (v5 != 1)
      {
        v8 = 0;
        if (result)
        {
          v9 = result + 1;
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_62;
            }

            v11 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_62;
            }

            v8 = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              goto LABEL_62;
            }

            ++v9;
            if (!--v4)
            {
              goto LABEL_63;
            }
          }
        }

LABEL_54:
        LOBYTE(v4) = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v29[0] = v2.value._countAndFlagsBits;
  v29[1] = v2.value._object & 0xFFFFFFFFFFFFFFLL;
  if (LOBYTE(v2.value._countAndFlagsBits) != 43)
  {
    if (LOBYTE(v2.value._countAndFlagsBits) != 45)
    {
      if (v4)
      {
        v8 = 0;
        v23 = v29;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v4)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    if (v4)
    {
      if (--v4)
      {
        v8 = 0;
        v12 = v29 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          ++v12;
          if (!--v4)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    goto LABEL_73;
  }

  if (v4)
  {
    if (--v4)
    {
      v8 = 0;
      v18 = v29 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = 10 * v8;
        if ((v8 * 10) >> 64 != (10 * v8) >> 63)
        {
          break;
        }

        v8 = v20 + v19;
        if (__OFADD__(v20, v19))
        {
          break;
        }

        ++v18;
        if (!--v4)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_62;
  }

LABEL_75:
  __break(1u);
  return result;
}

id sub_100315D5C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(PKPassLibrary) init];
  v4 = [v3 passesOfType:1];
  sub_10001F8D4(0, &qword_100840E38, PKPass_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v47 = a2;
    v48 = v3;
    a2 = 0;
    v7 = 0;
    v3 = (v5 & 0xC000000000000001);
    v8 = v5 & 0xFFFFFFFFFFFFFF8;
    v9 = v5 + 32;
    v10 = &_s7CoreIDV49ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifierO20domesticVehicleClassyA2CmFWC_ptr;
    v50 = v5 & 0xFFFFFFFFFFFFFF8;
    v51 = v5 & 0xC000000000000001;
    v52 = v5 + 32;
    v53 = v5;
    while (1)
    {
      if (v3)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v8 + 16))
        {
          goto LABEL_44;
        }

        v11 = *(v9 + 8 * v7);
      }

      v12 = v11;
      if (__OFADD__(v7++, 1))
      {
        break;
      }

      v14 = v10[331];
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15 && (v16 = v15, [v15 isIdentityPass]))
      {
        v17 = [v16 devicePrimaryContactlessPaymentApplication];
        if (v17)
        {
          v18 = v17;
          if ([v17 state] == 1)
          {
            result = [v18 subcredentials];
            if (!result)
            {
              __break(1u);
              return result;
            }

            v20 = result;
            sub_10001F8D4(0, &qword_100840E40, PKAppletSubcredential_ptr);
            sub_1003161B8();
            v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

            v22 = v21 & 0xC000000000000001;
            if ((v21 & 0xC000000000000001) != 0)
            {
              v23 = __CocoaSet.startIndex.getter();
              v25 = v24;
              v26 = __CocoaSet.endIndex.getter();
              v28 = v27;
              v29 = static __CocoaSet.Index.== infix(_:_:)();
              sub_100316220(v26, v28, 1);
              v22 = v21 & 0xC000000000000001;
              if (v29)
              {
                goto LABEL_27;
              }
            }

            else
            {
              v30 = 0;
              v31 = (v21 + 56);
              v23 = 1 << *(v21 + 32);
              v32 = (v23 + 63) >> 6;
              while (1)
              {
                v34 = *v31++;
                v33 = v34;
                if (v34)
                {
                  break;
                }

                v30 -= 64;
                if (!--v32)
                {
                  v25 = *(v21 + 36);
                  goto LABEL_27;
                }
              }

              v35 = __clz(__rbit64(v33));
              v25 = *(v21 + 36);
              if (v35 - v23 == v30)
              {
LABEL_27:
                sub_100316220(v23, v25, v22 != 0);

LABEL_37:
                a2 = 1;
                v9 = v52;
                v5 = v53;
                v8 = v50;
                v3 = v51;
                v10 = &_s7CoreIDV49ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifierO20domesticVehicleClassyA2CmFWC_ptr;
                goto LABEL_5;
              }

              v23 = v35 - v30;
            }

            v36 = v22 != 0;
            sub_100511A24(v23, v25, v22 != 0, v21);
            v38 = v37;
            sub_100316220(v23, v25, v36);

            v39 = [v38 identifier];

            if (!v39)
            {

              goto LABEL_37;
            }

            v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v42 = v41;

            v43 = v40 == a1 && v42 == v47;
            v9 = v52;
            v5 = v53;
            if (v43)
            {

              goto LABEL_42;
            }

            v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v8 = v50;
            v3 = v51;
            if (v44)
            {

LABEL_42:
              v46 = 256;
              v45 = 1;
              return (v46 | v45);
            }
          }

          else
          {
          }
        }

        else
        {
        }

        a2 = 1;
        v10 = &_s7CoreIDV49ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifierO20domesticVehicleClassyA2CmFWC_ptr;
      }

      else
      {
      }

LABEL_5:
      if (v7 == i)
      {

        v45 = 0;
        if (a2)
        {
          v46 = 256;
        }

        else
        {
          v46 = 0;
        }

        return (v46 | v45);
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }

  v45 = 0;
  v46 = 0;
  return (v46 | v45);
}

unint64_t sub_1003161B8()
{
  result = qword_100840E48;
  if (!qword_100840E48)
  {
    sub_10001F8D4(255, &qword_100840E40, PKAppletSubcredential_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100840E48);
  }

  return result;
}

uint64_t sub_100316220(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10031623C()
{
  v0 = type metadata accessor for DispatchQoS.QoSClass();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IdentityProofingActionNotificationFlow();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  sub_10017ABC8();
  (*(v1 + 104))(v4, enum case for DispatchQoS.QoSClass.default(_:), v0);
  v7 = static OS_dispatch_queue.global(qos:)();
  (*(v1 + 8))(v4, v0);
  v20[3] = v5;
  v20[4] = &off_10080ADD0;
  v20[0] = v6;
  type metadata accessor for IdentityProofingCleanupProvider();
  v8 = swift_allocObject();
  v9 = sub_10001F370(v20, v5);
  v10 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;
  v18 = v5;
  v19 = &off_10080ADD0;
  *&v17 = v14;
  swift_unknownObjectWeakInit();
  if (qword_1008824A8)
  {
    v15 = *(qword_1008824A8 + 152);
  }

  else
  {
    v15 = 0;
  }

  swift_unknownObjectWeakAssign();

  sub_10001F358(&v17, v8 + 24);
  *(v8 + 64) = v7;
  sub_10000BB78(v20);
  return v8;
}

uint64_t sub_100316488()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_10017ABC8();
  static DispatchQoS.unspecified.getter();
  v29[0] = _swiftEmptyArrayStorage;
  sub_10031AE4C(&qword_1008465A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100007224(&unk_1008458B0, &qword_1006BF8A0);
  sub_10031ABF4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  v9 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (qword_100832B50 != -1)
  {
    swift_once();
  }

  v10 = qword_100881E48;
  v11 = type metadata accessor for IdentityProofingActionNotificationFlow();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;

  v13 = sub_10031623C();
  type metadata accessor for IdentityProofingBackgroundActivityScheduler();
  v14 = swift_allocObject();
  *(v14 + 16) = 3600;
  type metadata accessor for IdentityProofingDeviceMigrationManagerFactory();
  v15 = swift_allocObject();
  type metadata accessor for IdentityProofingWorkflowProvider();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  type metadata accessor for IdentityProofingUploadsHelper();
  v17 = swift_allocObject();
  type metadata accessor for NetworkMonitor();
  *(v17 + 16) = static NetworkMonitor.shared.getter();
  *(v17 + 24) = v16;
  v29[3] = v11;
  v29[4] = &off_10080ADD0;
  v29[0] = v12;
  type metadata accessor for IdentityProofingUpdateManager();
  v18 = swift_allocObject();
  v19 = sub_10001F370(v29, v11);
  v20 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = (&v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = *v22;
  v27 = v11;
  v28 = &off_10080ADD0;
  *&v26 = v24;
  v18[2] = v9;
  v18[3] = v10;
  sub_10001F358(&v26, (v18 + 4));
  v18[9] = v13;
  v18[10] = v14;
  v18[11] = v17;
  result = sub_10000BB78(v29);
  qword_100882310 = v18;
  return result;
}

uint64_t sub_100316898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  *(v9 + 272) = a6;
  *(v9 + 280) = v8;
  *(v9 + 673) = a8;
  *(v9 + 672) = a7;
  *(v9 + 256) = a4;
  *(v9 + 264) = a5;
  *(v9 + 240) = a2;
  *(v9 + 248) = a3;
  *(v9 + 232) = a1;
  v10 = type metadata accessor for DIPError.Code();
  *(v9 + 288) = v10;
  v11 = *(v10 - 8);
  *(v9 + 296) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 304) = swift_task_alloc();
  v13 = *(*(sub_100007224(&unk_100849400, &unk_1006BFBB0) - 8) + 64) + 15;
  *(v9 + 312) = swift_task_alloc();
  *(v9 + 320) = swift_task_alloc();
  v14 = type metadata accessor for Date();
  *(v9 + 328) = v14;
  v15 = *(v14 - 8);
  *(v9 + 336) = v15;
  v16 = *(v15 + 64) + 15;
  *(v9 + 344) = swift_task_alloc();
  *(v9 + 352) = swift_task_alloc();
  v17 = type metadata accessor for ProofingSession.UploadAsset();
  *(v9 + 360) = v17;
  v18 = *(v17 - 8);
  *(v9 + 368) = v18;
  v19 = *(v18 + 64) + 15;
  *(v9 + 376) = swift_task_alloc();
  v20 = type metadata accessor for Logger();
  *(v9 + 384) = v20;
  v21 = *(v20 - 8);
  *(v9 + 392) = v21;
  v22 = *(v21 + 64) + 15;
  *(v9 + 400) = swift_task_alloc();
  *(v9 + 408) = swift_task_alloc();
  *(v9 + 416) = swift_task_alloc();
  *(v9 + 424) = swift_task_alloc();
  v23 = type metadata accessor for ProofingSession();
  *(v9 + 432) = v23;
  v24 = *(v23 - 8);
  *(v9 + 440) = v24;
  v25 = *(v24 + 64) + 15;
  *(v9 + 448) = swift_task_alloc();

  return _swift_task_switch(sub_100316B50, 0, 0);
}

uint64_t sub_100316B50()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_100031B5C(&v1[4], v0 + 16);
  os_unfair_lock_unlock(v1 + 54);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 72);
  *(v0 + 456) = v4;

  v13 = *(v0 + 264);
  v14 = *(v0 + 248);
  sub_100031918(v0 + 16);
  v5 = swift_allocObject();
  *(v0 + 464) = v5;
  *(v5 + 16) = v14;
  *(v5 + 32) = v13;
  *(v5 + 48) = v3;
  *(v5 + 56) = v2;
  v6 = *(v4 + 16);
  v7 = swift_allocObject();
  *(v0 + 472) = v7;
  *(v7 + 16) = sub_10031AE28;
  *(v7 + 24) = v5;
  v8 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

  v9 = swift_task_alloc();
  *(v0 + 480) = v9;
  *v9 = v0;
  v9[1] = sub_100316D40;
  v10 = *(v0 + 448);
  v11 = *(v0 + 432);

  return AsyncCoreDataContainer.performRead<A>(_:)(v10, sub_1000280B4, v7, v11);
}

uint64_t sub_100316D40()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v9 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v4 = sub_100317A74;
  }

  else
  {
    v6 = v2[58];
    v5 = v2[59];
    v7 = v2[57];

    v4 = sub_100316E70;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100316E70()
{
  v1 = *(v0 + 448);
  v2 = ProofingSession.uploadAssets.getter();
  v3 = *(v2 + 16);
  if (!v3)
  {
    v8 = *(v0 + 400);

    defaultLogger()();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    v11 = os_log_type_enabled(v9, v10);
    v13 = *(v0 + 440);
    v12 = *(v0 + 448);
    v14 = *(v0 + 432);
    v16 = *(v0 + 392);
    v15 = *(v0 + 400);
    v17 = *(v0 + 384);
    if (v11)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "No assets exists to be uploaded.", v18, 2u);
    }

    (*(v16 + 8))(v15, v17);
    (*(v13 + 8))(v12, v14);
    goto LABEL_7;
  }

  v4 = *(v0 + 424);
  defaultLogger()();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v2 + 16);

    _os_log_impl(&_mh_execute_header, v5, v6, "the asset count is %ld", v7, 0xCu);
  }

  else
  {
  }

  v30 = *(v0 + 448);
  v31 = *(v0 + 424);
  v32 = *(v0 + 384);
  v33 = *(v0 + 392);
  v34 = *(v0 + 280);
  v35 = *(v33 + 8);
  *(v0 + 496) = v35;
  *(v0 + 504) = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v35(v31, v32);
  v36 = *(v34 + 24);

  v37 = ProofingSession.cloudKitUploadsMaxRetryCount.getter();
  sub_10002ADA0(v37);

  v38 = *(v34 + 24);

  v39 = sub_100030844(v2);
  v41 = v40;

  *(v0 + 512) = v39;
  *(v0 + 520) = v41;
  v42 = ProofingSession.workflowID.getter();
  *(v0 + 528) = v42;
  *(v0 + 536) = v43;
  v44 = *(v0 + 448);
  if (!v43)
  {
    v59 = *(v0 + 440);
    v125 = *(v0 + 432);
    v60 = *(v0 + 296);
    v61 = *(v0 + 304);
    v62 = *(v0 + 288);

    (*(v60 + 104))(v61, enum case for DIPError.Code.workflowIdDoesNotExist(_:), v62);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10031AE4C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v59 + 8))(v44, v125);
LABEL_17:
    v70 = *(v0 + 448);
    v72 = *(v0 + 416);
    v71 = *(v0 + 424);
    v74 = *(v0 + 400);
    v73 = *(v0 + 408);
    v75 = *(v0 + 376);
    v76 = *(v0 + 352);
    v117 = *(v0 + 344);
    v120 = *(v0 + 320);
    v122 = *(v0 + 312);
    v128 = *(v0 + 304);
    swift_willThrow();

    v29 = *(v0 + 8);
    goto LABEL_18;
  }

  v45 = v43;
  v119 = v42;
  v46 = ProofingSession.proofingSessionID.getter();
  *(v0 + 544) = v46;
  *(v0 + 552) = v47;
  v48 = *(v0 + 448);
  if (!v47)
  {
    v63 = *(v0 + 440);
    v126 = *(v0 + 432);
    v64 = *(v0 + 296);
    v65 = *(v0 + 304);
    v66 = *(v0 + 288);

    (*(v64 + 104))(v65, enum case for DIPError.Code.proofingSessionIDUnavailable(_:), v66);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10031AE4C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v63 + 8))(v48, v126);
    goto LABEL_17;
  }

  v49 = v46;
  v50 = v47;
  ProofingSession.documentType.getter();
  v51 = *(v0 + 448);
  if (!v52)
  {
    v121 = *(v0 + 440);
    v127 = *(v0 + 432);
    v67 = *(v0 + 296);
    v68 = *(v0 + 304);
    v69 = *(v0 + 288);

    (*(v67 + 104))(v68, enum case for DIPError.Code.unexpectedIDType(_:), v69);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10031AE4C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v121 + 8))(v51, v127);
    goto LABEL_17;
  }

  v53 = IdentityDocumentType.init(documentTypeString:)();
  *(v0 + 560) = v53;
  if (ProofingSession.didNotifyOnUploadsCompletion.getter())
  {
    v54 = *(v0 + 440);
    v124 = *(v0 + 432);
    v131 = *(v0 + 448);
    v55 = v50;
    v56 = *(v0 + 272);
    v57 = *(v0 + 280);

    v58 = *(v57 + 72);

    sub_1002A4CF0(v49, v55, v56);

    (*(v54 + 8))(v131, v124);
LABEL_7:
    v19 = *(v0 + 448);
    v20 = *(v0 + 416);
    v21 = *(v0 + 424);
    v23 = *(v0 + 400);
    v22 = *(v0 + 408);
    v24 = *(v0 + 376);
    v26 = *(v0 + 344);
    v25 = *(v0 + 352);
    v28 = *(v0 + 312);
    v27 = *(v0 + 320);
    v130 = *(v0 + 304);

    v29 = *(v0 + 8);
LABEL_18:

    return v29();
  }

  v118 = v53;
  if (*(v41 + 16))
  {
    v78 = *(v0 + 672);

    v79 = swift_task_alloc();
    *(v0 + 616) = v79;
    *v79 = v0;
    v79[1] = sub_10031812C;
    v80 = *(v0 + 280);
    v81 = *(v0 + 673);

    return sub_100318DD0(v118, v39, v78 & 1, v81, v49, v50);
  }

  else
  {
    v114 = v45;
    v115 = v49;
    v116 = v50;
    v82 = *(v0 + 368);

    v83 = *(v82 + 16);
    v82 += 16;
    v84 = v2 + ((*(v82 + 64) + 32) & ~*(v82 + 64));
    v123 = *(v82 + 56);
    v129 = v83;
    v85 = (v82 - 8);
    v86 = _swiftEmptyArrayStorage;
    do
    {
      v88 = *(v0 + 376);
      v89 = *(v0 + 360);
      v129(v88, v84, v89);
      v90 = ProofingSession.UploadAsset.recordUUID.getter();
      v92 = v91;
      (*v85)(v88, v89);
      if (v92)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_1003C5110(0, *(v86 + 2) + 1, 1, v86);
        }

        v94 = *(v86 + 2);
        v93 = *(v86 + 3);
        if (v94 >= v93 >> 1)
        {
          v86 = sub_1003C5110((v93 > 1), v94 + 1, 1, v86);
        }

        *(v86 + 2) = v94 + 1;
        v87 = &v86[16 * v94];
        *(v87 + 4) = v90;
        *(v87 + 5) = v92;
      }

      *(v0 + 576) = v86;
      v84 += v123;
      --v3;
    }

    while (v3);
    v95 = *(v0 + 448);
    v97 = *(v0 + 328);
    v96 = *(v0 + 336);
    v98 = *(v0 + 320);

    v99 = ProofingSession.country.getter();
    v101 = v100;
    *(v0 + 568) = v100;
    ProofingSession.createdAt.getter();
    v102 = *(v96 + 48);
    if (v102(v98, 1, v97) == 1)
    {
      v104 = *(v0 + 320);
      v103 = *(v0 + 328);
      v105 = *(v0 + 352);
      Date.init()();
      v106 = v102(v104, 1, v103);
      v107 = v114;
      if (v106 != 1)
      {
        sub_10000BE18(*(v0 + 320), &unk_100849400, &unk_1006BFBB0);
      }
    }

    else
    {
      (*(*(v0 + 336) + 32))(*(v0 + 352), *(v0 + 320), *(v0 + 328));
      v107 = v114;
    }

    if (!v101)
    {
      v101 = 0xE000000000000000;
      v99 = 0;
    }

    v108 = *(v0 + 448);
    v109 = *(v0 + 280);
    *(v0 + 584) = ProofingSession.manualCheckInterval.getter();
    v110 = sub_10000BA08((v109 + 32), *(v109 + 56));
    sub_100007224(&qword_10083E588, &unk_1006DDA70);
    v111 = swift_allocObject();
    *(v0 + 592) = v111;
    *(v111 + 16) = xmmword_1006BF520;
    strcpy((v111 + 32), "UPLOAD_RECORD");
    *(v111 + 46) = -4864;
    *(v111 + 48) = xmmword_1006DBF40;
    *(v111 + 64) = v86;
    *(v111 + 72) = 0;
    *(v111 + 80) = 0;
    *(v111 + 88) = 0;
    *(v111 + 96) = xmmword_1006DBF50;
    v112 = *v110;

    v113 = swift_task_alloc();
    *(v0 + 600) = v113;
    *v113 = v0;
    v113[1] = sub_100317B90;

    return sub_10022083C(v111, v99, v101, v119, v107, v115, v116, v118);
  }
}

uint64_t sub_100317A74()
{
  v1 = v0[58];
  v2 = v0[59];
  v3 = v0[57];

  v4 = v0[61];
  v5 = v0[56];
  v7 = v0[52];
  v6 = v0[53];
  v9 = v0[50];
  v8 = v0[51];
  v10 = v0[47];
  v11 = v0[44];
  v14 = v0[43];
  v15 = v0[40];
  v16 = v0[39];
  v17 = v0[38];
  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_100317B90()
{
  v2 = *v1;
  v3 = *(*v1 + 600);
  v4 = *v1;
  *(*v1 + 608) = v0;

  v5 = *(v2 + 592);
  v6 = *(v2 + 568);

  if (v0)
  {
    v7 = sub_100317FCC;
  }

  else
  {
    v7 = sub_100317CE8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100317CE8()
{
  v1 = v0[52];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Action Notification request complete, will attempt to delete the upload assets meta data.", v4, 2u);
  }

  v5 = v0[69];
  v6 = v0[68];
  v8 = v0[62];
  v7 = v0[63];
  v37 = v0[56];
  v34 = v0[72];
  v35 = v0[55];
  v36 = v0[54];
  v9 = v0[52];
  v10 = v0[48];
  v29 = v0[44];
  v30 = v0[73];
  v31 = v0[42];
  v32 = v0[67];
  v33 = v0[41];
  v11 = v0[34];
  v12 = v0[35];

  v8(v9, v10);
  v13 = *(v12 + 72);

  sub_1002A4CF0(v6, v5, v11);

  v14 = type metadata accessor for IdentityManagementSessionDelegate();
  v15 = [objc_opt_self() defaultCenter];
  v16 = String._bridgeToObjectiveC()();
  v0[28] = v14;
  sub_100007224(&qword_10083D698, &unk_1006DB6F0);
  [v15 postNotificationName:v16 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  sub_1002FA39C();

  (*(v31 + 8))(v29, v33);
  (*(v35 + 8))(v37, v36);
  v17 = v0[56];
  v18 = v0[52];
  v19 = v0[53];
  v21 = v0[50];
  v20 = v0[51];
  v22 = v0[47];
  v24 = v0[43];
  v23 = v0[44];
  v26 = v0[39];
  v25 = v0[40];
  v38 = v0[38];

  v27 = v0[1];

  return v27();
}

uint64_t sub_100317FCC()
{
  v1 = v0[72];
  v2 = v0[69];
  v3 = v0[67];
  v5 = v0[55];
  v4 = v0[56];
  v6 = v0[54];
  v7 = v0[44];
  v8 = v0[41];
  v9 = v0[42];

  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  v10 = v0[76];
  v11 = v0[56];
  v13 = v0[52];
  v12 = v0[53];
  v15 = v0[50];
  v14 = v0[51];
  v16 = v0[47];
  v17 = v0[44];
  v20 = v0[43];
  v21 = v0[40];
  v22 = v0[39];
  v23 = v0[38];
  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_10031812C()
{
  v2 = *v1;
  v3 = *(*v1 + 616);
  v8 = *v1;
  *(*v1 + 624) = v0;

  if (v0)
  {
    v4 = *(v2 + 552);
    v5 = *(v2 + 536);

    v6 = sub_100318A38;
  }

  else
  {
    v6 = sub_100318254;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100318254()
{
  v1 = v0[56];
  v2 = v0[41];
  v3 = v0[42];
  v4 = v0[39];
  v5 = ProofingSession.country.getter();
  v7 = v6;
  v0[79] = v6;
  ProofingSession.createdAt.getter();
  v8 = *(v3 + 48);
  if (v8(v4, 1, v2) == 1)
  {
    v9 = v0[41];
    v10 = v0[39];
    v11 = v0[43];
    Date.init()();
    if (v8(v10, 1, v9) != 1)
    {
      sub_10000BE18(v0[39], &unk_100849400, &unk_1006BFBB0);
    }
  }

  else
  {
    (*(v0[42] + 32))(v0[43], v0[39], v0[41]);
  }

  if (!v7)
  {
    v7 = 0xE000000000000000;
    v5 = 0;
  }

  v12 = v0[65];
  v13 = v0[56];
  v14 = v0[35];
  v0[80] = ProofingSession.manualCheckInterval.getter();
  v15 = sub_10000BA08((v14 + 32), *(v14 + 56));
  sub_100007224(&qword_10083E588, &unk_1006DDA70);
  v16 = swift_allocObject();
  v0[81] = v16;
  *(v16 + 16) = xmmword_1006BF520;
  strcpy((v16 + 32), "UPLOAD_RECORD");
  *(v16 + 46) = -4864;
  *(v16 + 48) = xmmword_1006DBF40;
  *(v16 + 64) = v12;
  *(v16 + 72) = 0;
  *(v16 + 80) = 0;
  *(v16 + 88) = 0;
  *(v16 + 96) = xmmword_1006DBF50;
  v17 = *v15;

  v18 = swift_task_alloc();
  v0[82] = v18;
  *v18 = v0;
  v18[1] = sub_100318488;
  v19 = v0[70];
  v20 = v0[69];
  v21 = v0[68];
  v22 = v0[67];
  v23 = v0[66];

  return sub_10022083C(v16, v5, v7, v23, v22, v21, v20, v19);
}

uint64_t sub_100318488()
{
  v2 = *v1;
  v3 = *(*v1 + 656);
  v4 = *v1;
  *(*v1 + 664) = v0;

  v5 = *(v2 + 648);
  v6 = *(v2 + 632);

  if (v0)
  {
    v7 = sub_1003188CC;
  }

  else
  {
    v7 = sub_1003185E0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003185E0()
{
  v1 = v0[51];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Action Notification request complete, will attempt to delete the upload assets meta data.", v4, 2u);
  }

  v5 = v0[69];
  v6 = v0[68];
  v7 = v0[63];
  v32 = v0[67];
  v33 = v0[64];
  v8 = v0[62];
  v35 = v0[65];
  v36 = v0[55];
  v37 = v0[54];
  v38 = v0[56];
  v9 = v0[51];
  v10 = v0[48];
  v29 = v0[43];
  v30 = v0[80];
  v31 = v0[42];
  v34 = v0[41];
  v11 = v0[34];
  v12 = v0[35];

  v8(v9, v10);
  v13 = *(v12 + 72);

  sub_1002A4CF0(v6, v5, v11);

  v14 = type metadata accessor for IdentityManagementSessionDelegate();
  v15 = [objc_opt_self() defaultCenter];
  v16 = String._bridgeToObjectiveC()();
  v0[27] = v14;
  sub_100007224(&qword_10083D698, &unk_1006DB6F0);
  [v15 postNotificationName:v16 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  sub_1002FA39C();

  (*(v31 + 8))(v29, v34);
  (*(v36 + 8))(v38, v37);
  v17 = v0[56];
  v18 = v0[52];
  v19 = v0[53];
  v21 = v0[50];
  v20 = v0[51];
  v22 = v0[47];
  v24 = v0[43];
  v23 = v0[44];
  v26 = v0[39];
  v25 = v0[40];
  v39 = v0[38];

  v27 = v0[1];

  return v27();
}

uint64_t sub_1003188CC()
{
  v1 = v0[69];
  v2 = v0[67];
  v3 = v0[65];
  v4 = v0[64];
  v6 = v0[55];
  v5 = v0[56];
  v7 = v0[54];
  v9 = v0[42];
  v8 = v0[43];
  v10 = v0[41];

  (*(v9 + 8))(v8, v10);

  (*(v6 + 8))(v5, v7);
  v11 = v0[83];
  v12 = v0[56];
  v14 = v0[52];
  v13 = v0[53];
  v16 = v0[50];
  v15 = v0[51];
  v17 = v0[47];
  v18 = v0[44];
  v21 = v0[43];
  v22 = v0[40];
  v23 = v0[39];
  v24 = v0[38];
  swift_willThrow();

  v19 = v0[1];

  return v19();
}

uint64_t sub_100318A38()
{
  v1 = v0[65];
  v2 = v0[64];
  v4 = v0[55];
  v3 = v0[56];
  v5 = v0[54];

  (*(v4 + 8))(v3, v5);
  v6 = v0[78];
  v7 = v0[56];
  v9 = v0[52];
  v8 = v0[53];
  v11 = v0[50];
  v10 = v0[51];
  v12 = v0[47];
  v13 = v0[44];
  v16 = v0[43];
  v17 = v0[40];
  v18 = v0[39];
  v19 = v0[38];
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

void sub_100318B6C(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v20 = a5;
  v10 = type metadata accessor for DIPError.Code();
  v19 = *(v10 - 8);
  v11 = *(v19 + 64);
  __chkstk_darwin(v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12)
  {
    v15 = sub_10057847C(a2, a1, v12);
    if (v5)
    {
      return;
    }

    v16 = v15;
    if (!a4)
    {
LABEL_4:
      if (v16)
      {
LABEL_5:
        ProofingSession.init(_:)();
        return;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = 0;
    if (!a4)
    {
      goto LABEL_4;
    }
  }

  v17 = sub_1005792EC(a3, a4);

  if (v5)
  {
    return;
  }

  if (v17)
  {
    goto LABEL_5;
  }

LABEL_9:
  (*(v19 + 104))(v14, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v10);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10031AE4C(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

uint64_t sub_100318DD0(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = v6;
  *(v7 + 64) = a2;
  *(v7 + 72) = a5;
  *(v7 + 169) = a4;
  *(v7 + 168) = a3;
  *(v7 + 56) = a1;
  v8 = type metadata accessor for Logger();
  *(v7 + 96) = v8;
  v9 = *(v8 - 8);
  *(v7 + 104) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_100318EAC, 0, 0);
}

uint64_t sub_100318EAC()
{
  v1 = *(v0 + 169);
  v2 = *(v0 + 168);
  v3 = *(v0 + 64);
  v4 = *(*(v0 + 88) + 24);
  *(v0 + 128) = v4;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;

  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = v2;
  *(v5 + 33) = v1;
  *(v5 + 40) = v0 + 16;
  v6 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v7 = swift_task_alloc();
  *(v0 + 144) = v7;
  *v7 = v0;
  v7[1] = sub_100318FEC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, 0, 0, 0xD00000000000003FLL, 0x80000001006FCEC0, sub_1000492B4, v5, &type metadata for () + 8);
}

uint64_t sub_100318FEC()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_100319238;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_100319108;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100319108()
{
  v2 = v0[15];
  v1 = v0[16];

  sub_10000BE18((v0 + 2), &qword_100834128, &unk_1006DDA60);
  defaultLogger()();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Asset uploads successfully complete", v5, 2u);
  }

  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[12];
  v9 = v0[13];

  (*(v9 + 8))(v6, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100319238()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[14];

  sub_10000BE18((v0 + 2), &qword_100834128, &unk_1006DDA60);
  defaultLogger()();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "error has occurred during uploads. Will check if status update is required...", v6, 2u);
  }

  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[12];

  (*(v8 + 8))(v7, v9);
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_1003193A0;
  v11 = v0[10];
  v12 = v0[11];
  v13 = v0[9];
  v14 = v0[7];

  return sub_10031951C(v14, v13, v11);
}

uint64_t sub_1003193A0()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_10031949C, 0, 0);
}

uint64_t sub_10031949C()
{
  v1 = v0[19];
  v2 = v0[14];
  v3 = v0[15];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[19];

  return v4();
}

uint64_t sub_10031951C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[59] = a3;
  v4[60] = v3;
  v4[57] = a1;
  v4[58] = a2;
  v5 = type metadata accessor for Logger();
  v4[61] = v5;
  v6 = *(v5 - 8);
  v4[62] = v6;
  v7 = *(v6 + 64) + 15;
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v8 = type metadata accessor for ProofingSession();
  v4[67] = v8;
  v9 = *(v8 - 8);
  v4[68] = v9;
  v4[69] = *(v9 + 64);
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  v10 = sub_100007224(&qword_10083DC18, &unk_1006DB720);
  v4[72] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v4[73] = swift_task_alloc();
  v4[74] = swift_task_alloc();

  return _swift_task_switch(sub_1003196BC, 0, 0);
}

uint64_t sub_1003196BC()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = qword_100881E78;
  v0[75] = qword_100881E78;
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 54);
  sub_1000318FC(&v2[4], (v0 + 2));
  os_unfair_lock_unlock(v2 + 54);
  v3 = v0[58];
  v4 = v0[59];
  v5 = v0[9];
  v0[76] = v5;

  sub_100031918((v0 + 2));
  v6 = swift_allocObject();
  v0[77] = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  v7 = *(v5 + 16);
  v8 = swift_allocObject();
  v0[78] = v8;
  *(v8 + 16) = sub_10031AC90;
  *(v8 + 24) = v6;
  v9 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

  v10 = swift_task_alloc();
  v0[79] = v10;
  *v10 = v0;
  v10[1] = sub_100319880;
  v11 = v0[74];
  v12 = v0[72];

  return AsyncCoreDataContainer.performRead<A>(_:)(v11, sub_10017F710, v8, v12);
}

uint64_t sub_100319880()
{
  v2 = *v1;
  v3 = *(*v1 + 632);
  v9 = *v1;
  *(*v1 + 640) = v0;

  if (v0)
  {
    v4 = sub_100319D08;
  }

  else
  {
    v5 = v2[78];
    v6 = v2[77];
    v7 = v2[76];

    v4 = sub_1003199B4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003199B4()
{
  v41 = v0;
  v1 = v0[73];
  v2 = v0[68];
  v3 = v0[67];
  sub_1002A740C(v0[74], v1);
  v4 = (*(v2 + 48))(v1, 1, v3);
  v5 = v0[73];
  if (v4 == 1)
  {
    v6 = v0[64];
    v7 = v0[59];
    sub_10000BE18(v0[73], &qword_10083DC18, &unk_1006DB720);
    defaultLogger()();

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[74];
    v12 = v0[64];
    v14 = v0[61];
    v13 = v0[62];
    if (v10)
    {
      v39 = v0[74];
      v16 = v0[58];
      v15 = v0[59];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v40 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_100141FE4(v16, v15, &v40);
      _os_log_impl(&_mh_execute_header, v8, v9, "Proofing session doesn't exist for %s", v17, 0xCu);
      sub_10000BB78(v18);

      (*(v13 + 8))(v12, v14);
      v19 = v39;
    }

    else
    {

      (*(v13 + 8))(v12, v14);
      v19 = v11;
    }

    sub_10000BE18(v19, &qword_10083DC18, &unk_1006DB720);
    v30 = v0[74];
    v31 = v0[73];
    v32 = v0[71];
    v33 = v0[70];
    v34 = v0[66];
    v35 = v0[65];
    v37 = v0[63];
    v36 = v0[64];

    v38 = v0[1];

    return v38();
  }

  else
  {
    v20 = v0[71];
    v21 = v0[68];
    v22 = v0[67];
    v23 = v0[60];
    v24 = *(v21 + 32);
    v0[81] = v24;
    v0[82] = (v21 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v24(v20, v5, v22);
    v0[83] = *(v23 + 88);

    v25 = ProofingSession.totalUploadAssetsFileSizeInBytes.getter();
    v26 = ProofingSession.canUploadOnExpensiveNetwork.getter();
    v27 = swift_task_alloc();
    v0[84] = v27;
    *v27 = v0;
    v27[1] = sub_100319F4C;
    v28 = v0[57];

    return sub_1002C7430(v28, v25, v26 & 1);
  }
}

uint64_t sub_100319D08()
{
  v33 = v0;
  v1 = v0[78];
  v2 = v0[77];
  v3 = v0[76];

  v4 = v0[80];
  v5 = v0[63];
  defaultLogger()();
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[62];
    v31 = v0[63];
    v9 = v0[61];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v13 = v0[52];
    v12 = v0[53];
    v14 = v0[54];
    v15 = Error.localizedDescription.getter();
    v17 = sub_100141FE4(v15, v16, &v32);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "received an error while updaing the proofing action status %s", v10, 0xCu);
    sub_10000BB78(v11);

    (*(v8 + 8))(v31, v9);
  }

  else
  {
    v19 = v0[62];
    v18 = v0[63];
    v20 = v0[61];

    (*(v19 + 8))(v18, v20);
  }

  v21 = v0[74];
  v22 = v0[73];
  v23 = v0[71];
  v24 = v0[70];
  v25 = v0[66];
  v26 = v0[65];
  v28 = v0[63];
  v27 = v0[64];

  v29 = v0[1];

  return v29();
}

uint64_t sub_100319F4C(char a1)
{
  v2 = *(*v1 + 672);
  v3 = *(*v1 + 664);
  v5 = *v1;
  *(*v1 + 720) = a1;

  return _swift_task_switch(sub_10031A06C, 0, 0);
}

void sub_10031A06C()
{
  if (*(v0 + 720))
  {
    v1 = *(v0 + 640);
    v2 = *(*(v0 + 600) + 16);
    os_unfair_lock_lock(v2 + 54);
    sub_100031B5C(&v2[4], v0 + 216);
    os_unfair_lock_unlock(v2 + 54);
    if (!v1)
    {
      v24 = *(v0 + 656);
      v25 = *(v0 + 648);
      v26 = *(v0 + 568);
      v27 = *(v0 + 560);
      v28 = *(v0 + 552);
      v29 = *(v0 + 544);
      v30 = *(v0 + 536);
      v31 = *(v0 + 272);
      *(v0 + 680) = v31;

      sub_100031918(v0 + 216);
      (*(v29 + 16))(v27, v26, v30);
      v32 = (*(v29 + 80) + 16) & ~*(v29 + 80);
      v33 = swift_allocObject();
      *(v0 + 688) = v33;
      v25(v33 + v32, v27, v30);
      v34 = *(v31 + 16);
      v35 = swift_allocObject();
      *(v0 + 696) = v35;
      *(v35 + 16) = sub_10031AD6C;
      *(v35 + 24) = v33;
      v36 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

      v37 = swift_task_alloc();
      *(v0 + 704) = v37;
      *v37 = v0;
      v37[1] = sub_10031A3D4;

      AsyncCoreDataContainer.performWrite<A>(_:)(v37, sub_10017F710, v35, &type metadata for () + 8);
    }
  }

  else
  {
    v3 = *(v0 + 520);
    defaultLogger()();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 592);
    v8 = *(v0 + 568);
    v9 = *(v0 + 544);
    v10 = *(v0 + 536);
    v11 = *(v0 + 520);
    v13 = *(v0 + 488);
    v12 = *(v0 + 496);
    if (v6)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "No update needed as the device is not waiting for wifi to upload the documents", v14, 2u);
    }

    (*(v12 + 8))(v11, v13);
    (*(v9 + 8))(v8, v10);
    sub_10000BE18(v7, &qword_10083DC18, &unk_1006DB720);
    v15 = *(v0 + 592);
    v16 = *(v0 + 584);
    v17 = *(v0 + 568);
    v18 = *(v0 + 560);
    v19 = *(v0 + 528);
    v20 = *(v0 + 520);
    v22 = *(v0 + 504);
    v21 = *(v0 + 512);

    v23 = *(v0 + 8);

    v23();
  }
}

uint64_t sub_10031A3D4()
{
  v2 = *v1;
  v3 = *(*v1 + 704);
  v9 = *v1;
  *(*v1 + 712) = v0;

  if (v0)
  {
    v4 = sub_10031A748;
  }

  else
  {
    v5 = v2[87];
    v6 = v2[86];
    v7 = v2[85];

    v4 = sub_10031A508;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10031A508()
{
  v1 = v0[66];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Successfully updated the proofing action status to wait for wifi", v4, 2u);
  }

  v5 = v0[74];
  v6 = v0[71];
  v7 = v0[68];
  v8 = v0[67];
  v9 = v0[66];
  v10 = v0[61];
  v11 = v0[62];

  (*(v11 + 8))(v9, v10);
  v12 = type metadata accessor for IdentityManagementSessionDelegate();
  v13 = [objc_opt_self() defaultCenter];
  v14 = String._bridgeToObjectiveC()();
  v0[56] = v12;
  sub_100007224(&qword_10083D698, &unk_1006DB6F0);
  [v13 postNotificationName:v14 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  (*(v7 + 8))(v6, v8);
  sub_10000BE18(v5, &qword_10083DC18, &unk_1006DB720);
  v15 = v0[74];
  v16 = v0[73];
  v17 = v0[71];
  v18 = v0[70];
  v19 = v0[66];
  v20 = v0[65];
  v22 = v0[63];
  v21 = v0[64];

  v23 = v0[1];

  return v23();
}

uint64_t sub_10031A748()
{
  v37 = v0;
  v1 = v0[87];
  v2 = v0[86];
  v3 = v0[85];
  v4 = v0[74];
  v5 = v0[71];
  v6 = v0[68];
  v7 = v0[67];

  (*(v6 + 8))(v5, v7);
  sub_10000BE18(v4, &qword_10083DC18, &unk_1006DB720);
  v8 = v0[89];
  v9 = v0[63];
  defaultLogger()();
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[62];
    v35 = v0[63];
    v13 = v0[61];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v36 = v15;
    *v14 = 136315138;
    swift_getErrorValue();
    v17 = v0[52];
    v16 = v0[53];
    v18 = v0[54];
    v19 = Error.localizedDescription.getter();
    v21 = sub_100141FE4(v19, v20, &v36);

    *(v14 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "received an error while updaing the proofing action status %s", v14, 0xCu);
    sub_10000BB78(v15);

    (*(v12 + 8))(v35, v13);
  }

  else
  {
    v23 = v0[62];
    v22 = v0[63];
    v24 = v0[61];

    (*(v23 + 8))(v22, v24);
  }

  v25 = v0[74];
  v26 = v0[73];
  v27 = v0[71];
  v28 = v0[70];
  v29 = v0[66];
  v30 = v0[65];
  v32 = v0[63];
  v31 = v0[64];

  v33 = v0[1];

  return v33();
}

unint64_t sub_10031A9CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = sub_1005791C8(a1, a2);
  if (!v3)
  {
    if (result >> 62)
    {
      v8 = result;
      v9 = _CocoaArrayWrapper.endIndex.getter();
      result = v8;
      if (v9)
      {
        goto LABEL_4;
      }
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((result & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v6 = *(result + 32);
      }

      ProofingSession.init(_:)();
      v7 = 0;
      goto LABEL_10;
    }

    v7 = 1;
LABEL_10:
    v10 = type metadata accessor for ProofingSession();
    return (*(*(v10 - 8) + 56))(a3, v7, 1, v10);
  }

  return result;
}

void sub_10031AAE8()
{
  v1 = ProofingSession.objectID.getter();
  v2 = sub_10057886C(v1);

  if (!v0)
  {
    v3 = IdentityProofingActionStatus.rawValue.getter();
    sub_10057F148(v3, 0);
    sub_1005783D4();
  }
}

uint64_t sub_10031AB70()
{
  v1 = *(v0 + 24);

  sub_10000BB78((v0 + 32));
  v2 = *(v0 + 72);

  v3 = *(v0 + 80);

  v4 = *(v0 + 88);

  return swift_deallocClassInstance();
}

unint64_t sub_10031ABF4()
{
  result = qword_1008465B0;
  if (!qword_1008465B0)
  {
    sub_10000B870(&unk_1008458B0, &qword_1006BF8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008465B0);
  }

  return result;
}

uint64_t sub_10031AC58()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10031ACAC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10031ACE4()
{
  v1 = type metadata accessor for ProofingSession();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10031ADE8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

void sub_10031AE28(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[5];
  sub_100318B6C(v1[2], v1[4], v1[6], v1[7], a1);
}

uint64_t sub_10031AE4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10031AEC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[65] = a3;
  v3[63] = a1;
  v3[64] = a2;
  v4 = type metadata accessor for DIPError.Code();
  v3[66] = v4;
  v5 = *(v4 - 8);
  v3[67] = v5;
  v6 = *(v5 + 64) + 15;
  v3[68] = swift_task_alloc();
  v7 = sub_100007224(&qword_100841070, &unk_1006DDAB0);
  v3[69] = v7;
  v8 = *(v7 - 8);
  v3[70] = v8;
  v9 = *(v8 + 64) + 15;
  v3[71] = swift_task_alloc();
  v10 = type metadata accessor for DeviceInformationProvider();
  v3[72] = v10;
  v11 = *(v10 - 8);
  v3[73] = v11;
  v12 = *(v11 + 64) + 15;
  v3[74] = swift_task_alloc();
  v13 = type metadata accessor for DIPKeyAlgorithm();
  v3[75] = v13;
  v14 = *(v13 - 8);
  v3[76] = v14;
  v15 = *(v14 + 64) + 15;
  v3[77] = swift_task_alloc();
  v16 = type metadata accessor for KeystoreKeyType();
  v3[78] = v16;
  v17 = *(v16 - 8);
  v3[79] = v17;
  v18 = *(v17 + 64) + 15;
  v3[80] = swift_task_alloc();
  v19 = type metadata accessor for UUID();
  v3[81] = v19;
  v20 = *(v19 - 8);
  v3[82] = v20;
  v21 = *(v20 + 64) + 15;
  v3[83] = swift_task_alloc();

  return _swift_task_switch(sub_10031B15C, 0, 0);
}

uint64_t sub_10031B15C()
{
  v1 = v0[83];
  v2 = v0[82];
  v3 = v0[81];
  UUID.init()();
  UUID.uuidString.getter();
  v0[84] = v4;
  v5 = *(v2 + 8);
  v0[85] = v5;
  v0[86] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v0[87] = type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  v6 = swift_task_alloc();
  v0[88] = v6;
  *v6 = v0;
  v6[1] = sub_10031B278;

  return sub_1005FB45C((v0 + 34), 0, 0, 0, 0);
}

uint64_t sub_10031B278(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 704);
  v4 = *(*v1 + 672);
  v6 = *v1;
  *(v2 + 712) = a1;

  sub_10000BB78((v2 + 272));

  return _swift_task_switch(sub_10031B3A0, 0, 0);
}

uint64_t sub_10031B3A0()
{
  v1 = v0[63];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    v4 = _swiftEmptyArrayStorage;
    do
    {
      v5 = v0[65];
      v6 = v0[64];
      v8 = *(v3 - 1);
      v7 = *v3;

      v9 = IdentityProofingDataSharingUserConsent.rawValue.getter();
      v10 = IdentityProofingDataSharingUserConsent.rawValue.getter();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1003C5FB0(0, *(v4 + 2) + 1, 1, v4);
      }

      v12 = *(v4 + 2);
      v11 = *(v4 + 3);
      if (v12 >= v11 >> 1)
      {
        v4 = sub_1003C5FB0((v11 > 1), v12 + 1, 1, v4);
      }

      v13 = v0[65];
      *(v4 + 2) = v12 + 1;
      v14 = &v4[32 * v12];
      *(v14 + 4) = v8;
      *(v14 + 5) = v7;
      *(v14 + 6) = v13;
      v14[56] = v9 != v10;
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v0[90] = v4;
  v15 = v0[86];
  v16 = v0[85];
  v17 = v0[83];
  v18 = v0[81];
  v19 = v0[80];
  v20 = v0[79];
  v21 = v0[78];
  UUID.init()();
  v0[91] = UUID.uuidString.getter();
  v0[92] = v22;
  v16(v17, v18);
  type metadata accessor for DIPKeystoreManager();
  inited = swift_initStackObject();
  v0[93] = inited;
  *(inited + 16) = sub_10003D56C(_swiftEmptyArrayStorage);
  *(inited + 24) = 2;
  sub_100007224(&qword_100839BC0, &qword_1006D49B0);
  v24 = type metadata accessor for HardwareAttestationType();
  v25 = *(v24 - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  v0[94] = v28;
  *(v28 + 16) = xmmword_1006BF520;
  (*(v25 + 104))(v28 + v27, enum case for HardwareAttestationType.SEP(_:), v24);
  (*(v20 + 104))(v19, enum case for KeystoreKeyType.temporary(_:), v21);
  v29 = swift_task_alloc();
  v0[95] = v29;
  *v29 = v0;
  v29[1] = sub_10031B694;

  return sub_10003736C((v0 + 39), v28, 0, 0, 0xF000000000000000);
}

uint64_t sub_10031B694()
{
  v2 = *v1;
  v3 = *(*v1 + 760);
  v4 = *v1;
  *(*v1 + 768) = v0;

  v5 = *(v2 + 752);

  if (v0)
  {
    v6 = sub_10031BA28;
  }

  else
  {
    v6 = sub_10031B7C8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10031B7C8()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 696);
  static DIPAccountManager.sharedInstance.getter();
  v3 = *(v0 + 384);
  sub_10000BA08((v0 + 352), *(v0 + 376));
  v4 = dispatch thunk of DIPAccountManagerProtocol.primaryAppleAccountIdentifier()();
  *(v0 + 776) = v5;
  if (v1)
  {
    v6 = *(v0 + 744);
    v7 = *(v0 + 640);
    v8 = *(v0 + 632);
    v9 = *(v0 + 624);

    (*(v8 + 8))(v7, v9);
    sub_10000BB78((v0 + 352));
    sub_10000BB78((v0 + 312));
    v10 = *(v0 + 736);
    v11 = *(v0 + 728);
    v12 = *(v0 + 720);
    v13 = *(v0 + 712);
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    *(v0 + 32) = v11;
    *(v0 + 40) = v10;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0x61746E6567616DLL;
    *(v0 + 104) = 0xE700000000000000;
    *(v0 + 112) = v12;
    sub_1000F978C(v0 + 16);

    v14 = *(v0 + 664);
    v15 = *(v0 + 640);
    v16 = *(v0 + 616);
    v17 = *(v0 + 592);
    v18 = *(v0 + 568);
    v19 = *(v0 + 544);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    v22 = v4;
    v23 = v5;
    v24 = *(v0 + 616);
    sub_10000BB78((v0 + 352));
    v25 = *(v0 + 344);
    sub_10000BA08((v0 + 312), *(v0 + 336));
    sub_10061B2DC(v24);
    v26 = async function pointer to DIPKeystoreProtocol.retrieveOrGenerateIdentityKey(name:userInfo:keyTypeToGenerate:algorithm:constraints:enableUAM:)[1];
    v27 = swift_task_alloc();
    *(v0 + 784) = v27;
    *v27 = v0;
    v27[1] = sub_10031BB58;
    v28 = *(v0 + 640);
    v29 = *(v0 + 616);

    return DIPKeystoreProtocol.retrieveOrGenerateIdentityKey(name:userInfo:keyTypeToGenerate:algorithm:constraints:enableUAM:)(v0 + 392, 0x61746E6567616DLL, 0xE700000000000000, v22, v23, v28, v29, 0);
  }
}

uint64_t sub_10031BA28()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 640);
  v3 = *(v0 + 632);
  v4 = *(v0 + 624);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 768);
  v6 = *(v0 + 736);
  v7 = *(v0 + 728);
  v8 = *(v0 + 720);
  v9 = *(v0 + 712);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = v7;
  *(v0 + 40) = v6;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0x61746E6567616DLL;
  *(v0 + 104) = 0xE700000000000000;
  *(v0 + 112) = v8;
  sub_1000F978C(v0 + 16);

  v10 = *(v0 + 664);
  v11 = *(v0 + 640);
  v12 = *(v0 + 616);
  v13 = *(v0 + 592);
  v14 = *(v0 + 568);
  v15 = *(v0 + 544);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10031BB58()
{
  v2 = *v1;
  v3 = *(*v1 + 784);
  v4 = *v1;
  *(*v1 + 792) = v0;

  v5 = v2[97];
  (*(v2[76] + 8))(v2[77], v2[75]);

  if (v0)
  {
    v6 = sub_10031C114;
  }

  else
  {
    v6 = sub_10031BCDC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10031BCDC()
{
  v1 = *(v0 + 792);
  v2 = *(v0 + 424);
  sub_10000BA08((v0 + 392), *(v0 + 416));
  v3 = dispatch thunk of IdentityKey.attestation(_:)();
  if (v1)
  {
    v4 = *(v0 + 640);
    v5 = *(v0 + 632);
    v6 = *(v0 + 624);

    (*(v5 + 8))(v4, v6);
    sub_10000BB78((v0 + 392));
    sub_10000BB78((v0 + 312));
    *(v0 + 16) = 0;
    v7 = *(v0 + 736);
    v8 = *(v0 + 728);
    v9 = *(v0 + 720);
    v10 = *(v0 + 712);
    *(v0 + 24) = 0xE000000000000000;
    *(v0 + 32) = v8;
    *(v0 + 40) = v7;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0x61746E6567616DLL;
    *(v0 + 104) = 0xE700000000000000;
    *(v0 + 112) = v9;
    sub_1000F978C(v0 + 16);

LABEL_8:
    v38 = *(v0 + 664);
    v39 = *(v0 + 640);
    v40 = *(v0 + 616);
    v41 = *(v0 + 592);
    v42 = *(v0 + 568);
    v43 = *(v0 + 544);

    v44 = *(v0 + 8);

    return v44();
  }

  v11 = *(v0 + 712);
  v12 = *(v0 + 640);
  v13 = *(v0 + 632);
  v14 = *(v0 + 624);
  v15 = *(v0 + 592);
  v16 = *(v0 + 584);
  v51 = *(v0 + 576);
  v17 = *(v0 + 744);
  v18 = v3;
  swift_setDeallocating();
  v19 = *(v17 + 16);

  (*(v13 + 8))(v12, v14);
  sub_100020260(v0 + 392, v0 + 224);
  v52._rawValue = v18;
  *(v0 + 264) = v18;
  sub_10000BB78((v0 + 392));
  sub_10000BB78((v0 + 312));
  v20 = *(v11 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v50 = *(v11 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  sub_100020260(*(v11 + OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession) + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_accountManager, v0 + 432);
  v21 = *(v0 + 464);
  sub_10000BA08((v0 + 432), *(v0 + 456));

  v22 = dispatch thunk of DIPAccountManagerProtocol.appleAuthHeader(_:)();
  v24 = v23;
  sub_10000BB78((v0 + 432));
  DeviceInformationProvider.init()();
  v25 = DeviceInformationProvider.uniqueDeviceID.getter();
  v27 = v26;
  (*(v16 + 8))(v15, v51);
  if (qword_100832D18 != -1)
  {
    swift_once();
  }

  v28 = *(v0 + 736);
  v29 = *(v0 + 728);
  v30 = *(v0 + 720);
  v31 = *(v0 + 568);
  v32 = *(v0 + 552);
  v33 = xmmword_100882478;
  *(v0 + 120) = v50;
  *(v0 + 128) = v20;
  *(v0 + 136) = v29;
  *(v0 + 144) = v28;
  *(v0 + 152) = v22;
  *(v0 + 160) = v24;
  *(v0 + 168) = v25;
  *(v0 + 176) = v27;
  *(v0 + 184) = v33;
  *(v0 + 200) = 0x61746E6567616DLL;
  *(v0 + 208) = 0xE700000000000000;
  *(v0 + 216) = v30;
  sub_1000F8888();
  sub_1000F88DC();

  JWSSignedJSON.init(payload:)();
  JWSSignedJSON.setCertificateChain(_:)(v52);
  if (v34)
  {
    v37 = *(v0 + 712);
    (*(*(v0 + 560) + 8))(*(v0 + 568), *(v0 + 552));

    sub_1001B7154(v0 + 224);
    goto LABEL_8;
  }

  v35 = *(v0 + 568);
  v36 = *(v0 + 552);
  JWSSignedJSON.setKid(_:)();
  v46 = async function pointer to JWSSignedJSON.sign(_:)[1];
  v47 = swift_task_alloc();
  *(v0 + 800) = v47;
  *v47 = v0;
  v47[1] = sub_10031C24C;
  v48 = *(v0 + 568);
  v49 = *(v0 + 552);

  return JWSSignedJSON.sign(_:)(v0 + 224, v49);
}

uint64_t sub_10031C114()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 640);
  v3 = *(v0 + 632);
  v4 = *(v0 + 624);

  (*(v3 + 8))(v2, v4);
  sub_10000BB78((v0 + 312));
  v5 = *(v0 + 792);
  v6 = *(v0 + 736);
  v7 = *(v0 + 728);
  v8 = *(v0 + 720);
  v9 = *(v0 + 712);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = v7;
  *(v0 + 40) = v6;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0x61746E6567616DLL;
  *(v0 + 104) = 0xE700000000000000;
  *(v0 + 112) = v8;
  sub_1000F978C(v0 + 16);

  v10 = *(v0 + 664);
  v11 = *(v0 + 640);
  v12 = *(v0 + 616);
  v13 = *(v0 + 592);
  v14 = *(v0 + 568);
  v15 = *(v0 + 544);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10031C24C()
{
  v2 = *(*v1 + 800);
  v3 = *v1;
  v3[101] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10031C5C0, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[102] = v4;
    *v4 = v3;
    v4[1] = sub_10031C3C0;
    v5 = v3[89];
    v6 = v3[71];

    return sub_1005E364C(v6);
  }
}

uint64_t sub_10031C3C0()
{
  v2 = *(*v1 + 816);
  v5 = *v1;
  *(*v1 + 824) = v0;

  if (v0)
  {
    v3 = sub_10031C6A4;
  }

  else
  {
    v3 = sub_10031C4D4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10031C4D4()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 640);
  v3 = *(v0 + 616);
  v4 = *(v0 + 592);
  v5 = *(v0 + 568);
  v6 = *(v0 + 560);
  v7 = *(v0 + 552);
  v8 = *(v0 + 544);

  (*(v6 + 8))(v5, v7);
  sub_1001B7154(v0 + 224);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10031C5C0()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);

  (*(v2 + 8))(v1, v3);
  sub_1001B7154(v0 + 224);
  v4 = *(v0 + 808);
  v5 = *(v0 + 664);
  v6 = *(v0 + 640);
  v7 = *(v0 + 616);
  v8 = *(v0 + 592);
  v9 = *(v0 + 568);
  v10 = *(v0 + 544);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10031C6A4()
{
  v1 = v0[103];
  v2 = v0[89];
  v3 = v0[70];
  v12 = v0[69];
  v13 = v0[71];
  (*(v0[67] + 104))(v0[68], enum case for DIPError.Code.internalError(_:), v0[66]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v3 + 8))(v13, v12);
  sub_1001B7154((v0 + 28));
  v4 = v0[83];
  v5 = v0[80];
  v6 = v0[77];
  v7 = v0[74];
  v8 = v0[71];
  v9 = v0[68];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10031C884(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1003C5110(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10031C978(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1003C573C(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for IdentityDocumentElement();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10031CAA4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1003C5E7C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10031CB98(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_10031EB28(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10031ED68(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10031CC88(uint64_t a1)
{
  v79 = type metadata accessor for MobileDocumentElement();
  v4 = *(v79 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v79);
  v80 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007224(&qword_1008410D0, &qword_1006DDB30);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v61 - v11;
  result = __chkstk_darwin(v10);
  v16 = &v61 - v15;
  v17 = *(a1 + 16);
  v18 = *v1;
  v19 = *(*v1 + 2);
  v20 = v19 + v17;
  if (__OFADD__(v19, v17))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v78 = v14;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77 = v12;
  if (!isUniquelyReferenced_nonNull_native || (v22 = *(v18 + 3) >> 1, v22 < v20))
  {
    if (v19 <= v20)
    {
      v23 = v19 + v17;
    }

    else
    {
      v23 = v19;
    }

    v18 = sub_1003C62A4(isUniquelyReferenced_nonNull_native, v23, 1, v18);
    v22 = *(v18 + 3) >> 1;
  }

  v24 = *(v18 + 2);
  v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v19 = *(v4 + 72);
  v25 = v22 - v24;
  result = sub_1003BCC54(&v81, &v18[v20 + v19 * v24], v22 - v24, a1);
  if (result < v17)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v28 = *(v18 + 2);
    v29 = __OFADD__(v28, result);
    v30 = v28 + result;
    if (v29)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v18 + 2) = v30;
  }

  if (result != v25)
  {
    result = sub_10001FA6C();
LABEL_14:
    *v1 = v18;
    return result;
  }

LABEL_17:
  v76 = *(v18 + 2);
  v27 = v82;
  v67 = v81;
  v30 = v84;
  v26 = &v86;
  v62 = v83;
  v31 = v85;
  v65 = v82;
  if (v85)
  {
    v32 = v84;
LABEL_27:
    v74 = (v31 - 1) & v31;
    v36 = v79;
    (*(v2 + 16))(v16, *(v67 + 48) + (__clz(__rbit64(v31)) | (v32 << 6)) * v19, v79);
    v69 = *(v2 + 56);
    v69(v16, 0, 1, v36);
    v35 = v32;
    while (1)
    {
      v37 = v77;
      sub_100321AA8(v16, v77);
      v38 = *(v2 + 48);
      v2 += 48;
      v73 = v38;
      if (v38(v37, 1, v36) == 1)
      {
        break;
      }

      v40 = (v4 + 32);
      v64 = (v62 + 64) >> 6;
      v68 = v4 + 56;
      v66 = (v4 + 16);
      v63 = (v4 + 8);
      v39 = v77;
      v75 = v40;
      while (1)
      {
        sub_10000BE18(v39, &qword_1008410D0, &qword_1006DDB30);
        v41 = *(v18 + 3);
        v42 = v41 >> 1;
        if ((v41 >> 1) < v76 + 1)
        {
          v18 = sub_1003C62A4(v41 > 1, v76 + 1, 1, v18);
          v42 = *(v18 + 3) >> 1;
        }

        v43 = v78;
        sub_100321AA8(v16, v78);
        if (v73(v43, 1, v79) != 1)
        {
          break;
        }

        v44 = v35;
        v45 = v78;
        v4 = v76;
LABEL_38:
        v35 = v44;
        sub_10000BE18(v45, &qword_1008410D0, &qword_1006DDB30);
LABEL_33:
        v76 = v4;
        *(v18 + 2) = v4;
        v39 = v77;
        sub_100321AA8(v16, v77);
        if (v73(v39, 1, v79) == 1)
        {
          goto LABEL_30;
        }
      }

      v71 = &v18[v20];
      v4 = v76;
      v46 = *v75;
      if (v76 <= v42)
      {
        v47 = v42;
      }

      else
      {
        v47 = v76;
      }

      v72 = v47;
      v45 = v78;
      v48 = v79;
      v49 = v80;
      v70 = v46;
      while (1)
      {
        v53 = v49;
        v54 = v45;
        v55 = v48;
        v56 = v46;
        v46(v53, v54, v48);
        if (v4 == v72)
        {
          (*v63)(v80, v55);
          v4 = v72;
          goto LABEL_33;
        }

        sub_10000BE18(v16, &qword_1008410D0, &qword_1006DDB30);
        v76 = v4;
        v56(&v71[v4 * v19], v80, v55);
        v57 = v74;
        if (!v74)
        {
          break;
        }

        v58 = v35;
LABEL_55:
        v74 = (v57 - 1) & v57;
        v51 = v79;
        (*v66)(v16, *(v67 + 48) + (__clz(__rbit64(v57)) | (v58 << 6)) * v19, v79);
        v50 = 0;
        v60 = v58;
LABEL_44:
        v4 = v76 + 1;
        v69(v16, v50, 1, v51);
        v45 = v78;
        sub_100321AA8(v16, v78);
        v52 = v73(v45, 1, v51);
        v48 = v51;
        v35 = v60;
        v44 = v60;
        v49 = v80;
        v46 = v70;
        if (v52 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v64 <= v35 + 1)
      {
        v59 = v35 + 1;
      }

      else
      {
        v59 = v64;
      }

      v60 = v59 - 1;
      while (1)
      {
        v58 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v58 >= v64)
        {
          v74 = 0;
          v50 = 1;
          v51 = v79;
          goto LABEL_44;
        }

        v57 = *(v65 + 8 * v58);
        ++v35;
        if (v57)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v36 = v79;
      v69 = *(v2 + 56);
      v69(v16, 1, 1, v79);
      v74 = 0;
    }

    v39 = v77;
LABEL_30:
    sub_10000BE18(v16, &qword_1008410D0, &qword_1006DDB30);
    sub_10001FA6C();
    result = sub_10000BE18(v39, &qword_1008410D0, &qword_1006DDB30);
    goto LABEL_14;
  }

LABEL_20:
  v33 = (*(v26 - 32) + 64) >> 6;
  if (v33 <= v30 + 1)
  {
    v34 = v30 + 1;
  }

  else
  {
    v34 = v33;
  }

  v35 = v34 - 1;
  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v33)
    {
      goto LABEL_57;
    }

    v31 = *(v27 + 8 * v32);
    ++v30;
    if (v31)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10031D34C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1003C62CC(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10031D438(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1003C6994(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100007224(&qword_1008410E8, &unk_1006DDB40);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10031D540(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1003C6ADC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10031D638(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_10031D720, 0, 0);
}

uint64_t sub_10031D720()
{
  v1 = v0[10];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Identity: asked to delete current claim due to self-heal", v4, 2u);
  }

  v5 = v0[10];
  v6 = v0[5];
  v7 = v0[6];

  v8 = *(v7 + 8);
  v0[11] = v8;
  v8(v5, v6);
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_10031D858;
  v11 = v0[2];
  v10 = v0[3];

  return sub_10031F41C(v11, v10);
}

uint64_t sub_10031D858()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return _swift_task_switch(sub_10031D954, 0, 0);
}

uint64_t sub_10031D954()
{
  v36 = v0;
  v1 = (v0[4] + OBJC_IVAR____TtC8coreidvd18IdentitySelfHealer_proofingSessionID);
  v2 = v1[1];
  if (!v2)
  {
    v17 = v0[8];
    defaultLogger()();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[11];
    v22 = v0[8];
    v23 = v0[5];
    v24 = v0[6];
    if (v20)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Self-healing: skipping proofing session deletion because no proofing session ID is available", v25, 2u);
    }

    v21(v22, v23);
    v26 = v0[7];
    defaultLogger()();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Identity: Done deleting current claim due to self-heal; terminating process", v29, 2u);
    }

    v30 = v0[11];
    v32 = v0[6];
    v31 = v0[7];
    v33 = v0[5];

    v30(v31, v33);
    exit(0);
  }

  v3 = *v1;
  v4 = v0[9];
  defaultLogger()();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[11];
  v9 = v0[9];
  v11 = v0[5];
  v10 = v0[6];
  if (v7)
  {
    v12 = swift_slowAlloc();
    v34 = v8;
    v35 = swift_slowAlloc();
    v13 = v35;
    *v12 = 136315138;
    *(v12 + 4) = sub_100141FE4(v3, v2, &v35);
    _os_log_impl(&_mh_execute_header, v5, v6, "Self-healing: deleting proofing sessions with ID %s", v12, 0xCu);
    sub_10000BB78(v13);

    v34(v9, v11);
  }

  else
  {

    v8(v9, v11);
  }

  v14 = swift_task_alloc();
  v0[13] = v14;
  *v14 = v0;
  v14[1] = sub_10031DC80;
  v15 = v0[4];

  return sub_10031DE4C(v3, v2);
}

uint64_t sub_10031DC80()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return _swift_task_switch(sub_10031DD7C, 0, 0);
}

void sub_10031DD7C()
{
  v1 = v0[7];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Identity: Done deleting current claim due to self-heal; terminating process", v4, 2u);
  }

  v5 = v0[11];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[5];

  v5(v6, v8);
  exit(0);
}

uint64_t sub_10031DE4C(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  v4 = type metadata accessor for Logger();
  v3[30] = v4;
  v5 = *(v4 - 8);
  v3[31] = v5;
  v6 = *(v5 + 64) + 15;
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10031DF10, 0, 0);
}

uint64_t sub_10031DF10()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_1000318FC(&v1[4], (v0 + 2));
  os_unfair_lock_unlock(v1 + 54);
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[27];
  v5 = v0[9];
  v0[33] = v5;

  sub_100031918((v0 + 2));
  v6 = swift_allocObject();
  v0[34] = v6;
  v6[2] = v4;
  v6[3] = v2;
  v6[4] = v3;
  v7 = *(v5 + 16);
  v8 = swift_allocObject();
  v0[35] = v8;
  *(v8 + 16) = sub_100320ED0;
  *(v8 + 24) = v6;
  v9 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

  v10 = v3;

  v11 = swift_task_alloc();
  v0[36] = v11;
  *v11 = v0;
  v11[1] = sub_10031E0E8;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v11, sub_10017F710, v8, &type metadata for () + 8);
}

uint64_t sub_10031E0E8()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v9 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v4 = sub_10031E278;
  }

  else
  {
    v6 = v2[34];
    v5 = v2[35];
    v7 = v2[33];

    v4 = sub_10031E218;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10031E218()
{
  v1 = *(v0 + 256);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10031E278()
{
  v1 = v0[37];
  v2 = v0[34];
  v3 = v0[35];
  v5 = v0[32];
  v4 = v0[33];
  v6 = v0[30];
  v7 = v0[31];

  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v7 + 8))(v5, v6);
  v8 = v0[32];

  v9 = v0[1];

  return v9();
}

id sub_10031E358(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v44 - v13;
  v54 = _swiftEmptyArrayStorage;
  result = sub_10057A388(1, 0, 1);
  if (!v3)
  {
    v50 = a2;
    v16 = result;
    v17 = sub_10057A388(2, 0, 1);
    v48 = v7;
    if (v16)
    {
      v19 = v17;
      sub_10031CB98(v16);
      v17 = v19;
      v7 = v48;
    }

    if (v17)
    {
      sub_10031CB98(v17);
    }

    v20 = v54;
    v49 = v54;
    if (v54 >> 62)
    {
      v45 = 0;
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        v52 = _CocoaArrayWrapper.endIndex.getter();
        if (!v52)
        {
LABEL_34:

          return sub_1005783D4();
        }

        if (v52 >= 1)
        {
          v3 = v45;
          v20 = v49;
          goto LABEL_8;
        }

        __break(1u);
      }
    }

    else
    {
      v52 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v52)
      {
LABEL_8:
        v45 = v3;
        v21 = 0;
        v51 = v20 & 0xC000000000000001;
        v47 = (v8 + 8);
        *&v18 = 136315138;
        v46 = v18;
        v22 = v20;
        while (1)
        {
          if (v51)
          {
            v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v23 = *(v22 + 8 * v21 + 32);
          }

          v24 = v23;
          v25 = [v23 proofingSessionID];
          if (v25)
          {
            v26 = v25;
            v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v29 = v28;

            if (v27 == v50 && v29 == a3)
            {
            }

            else
            {
              v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v31 & 1) == 0)
              {
                goto LABEL_26;
              }
            }

            defaultLogger()();

            v32 = Logger.logObject.getter();
            v33 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v32, v33))
            {
              v34 = swift_slowAlloc();
              v35 = swift_slowAlloc();
              v53 = v35;
              *v34 = v46;
              *(v34 + 4) = sub_100141FE4(v50, a3, &v53);
              _os_log_impl(&_mh_execute_header, v32, v33, "Self-healing: Deleting session %s", v34, 0xCu);
              sub_10000BB78(v35);
              v22 = v49;
            }

            (*v47)(v12, v48);
            [*(a1 + 16) deleteObject:v24];
          }

LABEL_26:
          v36 = [v24 uploadAssets];
          if (v36)
          {
            v37 = v36;
            v38 = sub_10031F088(v37);

            v39 = sub_10057A09C(v38);

            if (!v39)
            {

              v22 = v49;
              goto LABEL_11;
            }

            if (v39 >> 62)
            {
              v40 = _CocoaArrayWrapper.endIndex.getter();
              v22 = v49;
              if (v40)
              {
LABEL_30:
                sub_100320F28(v39, a1);

                goto LABEL_11;
              }
            }

            else
            {
              v22 = v49;
              if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_30;
              }
            }
          }

LABEL_11:
          if (v52 == ++v21)
          {
            goto LABEL_34;
          }
        }
      }
    }

    defaultLogger()();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Self-healing: no sessions to delete", v43, 2u);
    }

    return (*(v8 + 8))(v14, v7);
  }

  return result;
}

uint64_t sub_10031E930(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100041F04;

  return sub_10031D638(a1, a2);
}

uint64_t sub_10031E9D4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100041F04;

  return (sub_10031FB24)(a1, a2);
}

uint64_t sub_10031EA88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100027B9C;

  return sub_100320A6C();
}

uint64_t sub_10031EB28(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_10031EBC8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100321B18(&qword_1008410C8, &qword_1008410C0, &qword_1006DDB28);
          for (i = 0; i != v6; ++i)
          {
            sub_100007224(&qword_1008410C0, &qword_1006DDB28);
            v9 = sub_1002E048C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10001F8D4(0, &qword_1008410B8, CTXPCServiceSubscriptionContext_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10031ED68(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100321B18(&qword_1008410B0, &qword_10083EF60, &qword_1006DC4B8);
          for (i = 0; i != v6; ++i)
          {
            sub_100007224(&qword_10083EF60, &qword_1006DC4B8);
            v9 = sub_1002E0404(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for StoredProofingSession();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10031EEF8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100321B18(&qword_1008410E0, &qword_1008410D8, &qword_1006DDB38);
          for (i = 0; i != v6; ++i)
          {
            sub_100007224(&qword_1008410D8, &qword_1006DDB38);
            v9 = sub_1002E048C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for StoredMobileDocumentRegistration();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10031F088(void *a1)
{
  v2 = type metadata accessor for NSFastEnumerationIterator();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 count];
  v8 = v7;
  if (v7)
  {
    if (v7 < 1)
    {
      v9 = _swiftEmptyArrayStorage;
    }

    else
    {
      sub_100007224(&qword_10083C1D8, &unk_1006DA780);
      v9 = swift_allocObject();
      v10 = j__malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 1;
      }

      v9[2] = v8;
      v9[3] = 2 * (v11 >> 5);
    }
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v12 = v9[3];

  result = NSSet.makeIterator()();
  if (v8 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v14 = v12 >> 1;
  v15 = v9 + 4;
  if (v8)
  {
    v14 -= v8;
    sub_100321A60(&qword_10083C148, &type metadata accessor for NSFastEnumerationIterator);
    do
    {
      result = dispatch thunk of IteratorProtocol.next()();
      if (!v35)
      {
        goto LABEL_38;
      }

      sub_10001F348(&v34, v15);
      v15 += 2;
    }

    while (--v8);
  }

  v31 = v3;
  sub_100321A60(&qword_10083C148, &type metadata accessor for NSFastEnumerationIterator);
  dispatch thunk of IteratorProtocol.next()();
  if (v33)
  {
    while (1)
    {
      result = sub_10001F348(&v32, &v34);
      if (!v14)
      {
        v16 = v9[3];
        if (((v16 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_35;
        }

        v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
        if (v17 <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = v17;
        }

        sub_100007224(&qword_10083C1D8, &unk_1006DA780);
        v19 = swift_allocObject();
        v20 = j__malloc_size(v19);
        v21 = v20 - 32;
        if (v20 < 32)
        {
          v21 = v20 - 1;
        }

        v22 = v21 >> 5;
        v19[2] = v18;
        v19[3] = 2 * (v21 >> 5);
        v23 = (v19 + 4);
        v24 = v9[3] >> 1;
        if (v9[2])
        {
          v25 = v9 + 4;
          if (v19 != v9 || v23 >= v25 + 32 * v24)
          {
            memmove(v19 + 4, v25, 32 * v24);
          }

          v9[2] = 0;
        }

        v15 = (v23 + 32 * v24);
        v14 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - v24;

        v9 = v19;
      }

      v26 = __OFSUB__(v14--, 1);
      if (v26)
      {
        break;
      }

      sub_10001F348(&v34, v15);
      v15 += 2;
      dispatch thunk of IteratorProtocol.next()();
      if (!v33)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_30:
  (*(v31 + 8))(v6, v2);
  result = sub_10000BE18(&v32, &unk_100845ED0, &qword_1006DA1D0);
  v27 = v9[3];
  if (v27 < 2)
  {
    return v9;
  }

  v28 = v27 >> 1;
  v26 = __OFSUB__(v28, v14);
  v29 = v28 - v14;
  if (!v26)
  {
    v9[2] = v29;
    return v9;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_10031F41C(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = type metadata accessor for DIPError.Code();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[11] = v6;
  v7 = *(v6 - 8);
  v2[12] = v7;
  v8 = *(v7 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_10031F544, 0, 0);
}

uint64_t sub_10031F544()
{
  v1 = v0[14];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Self-healing: Deleting identity key", v4, 2u);
  }

  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[7];

  v9 = *(v7 + 8);
  v0[15] = v9;
  v9(v5, v6);
  type metadata accessor for DIPKeystoreManager();
  inited = swift_initStackObject();
  v0[16] = inited;
  *(inited + 16) = sub_10003D56C(_swiftEmptyArrayStorage);
  *(inited + 24) = 2;
  if (v8)
  {
    v11 = v0[7];
    v12 = swift_task_alloc();
    v0[17] = v12;
    *v12 = v0;
    v12[1] = sub_10031F8A4;
    v13 = v0[6];

    return sub_100038F4C(v13, v11);
  }

  else
  {
    (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100321A60(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v16 = v0[15];
    v15 = v0[16];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[11];
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v16(v17, v19);
    v21 = v0[13];
    v20 = v0[14];
    v22 = v0[10];

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_10031F8A4()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_10031FA34;
  }

  else
  {
    v3 = sub_10031F9B8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10031F9B8()
{
  v1 = v0[16];

  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10031FA34()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v3(v4, v6);
  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[10];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10031FB24(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_10031FC08, 0, 0);
}

uint64_t sub_10031FC08()
{
  v1 = v0[9];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Identity: asked to delete all claims for current provider due to self-heal", v4, 2u);
  }

  v5 = v0[9];
  v6 = v0[4];
  v7 = v0[5];

  v8 = *(v7 + 8);
  v0[10] = v8;
  v8(v5, v6);
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_10031FD40;
  v11 = v0[2];
  v10 = v0[3];

  return sub_10031F41C(v11, v10);
}

uint64_t sub_10031FD40()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return _swift_task_switch(sub_10031FE3C, 0, 0);
}

uint64_t sub_10031FE3C()
{
  v33 = v0;
  v1 = v0[3];
  if (!v1)
  {
    v29 = 0;
    v8 = 0xE300000000000000;
    goto LABEL_16;
  }

  v2 = 0x800000010070DEA0 == v1 && v0[2] == 0xD000000000000012;
  if (v2 || (v3 = v0[3], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v4 = swift_task_alloc();
    v0[14] = v4;
    *v4 = v0;
    v4[1] = sub_100320484;
    v5 = 3;
    goto LABEL_12;
  }

  if ((v0[2] != 0x61746E6567616DLL || v0[3] != 0xE700000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v8 = v1;
    v29 = v1;
LABEL_16:
    v9 = v0[8];
    defaultLogger()();

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[8];
    v30 = v13;
    v31 = v0[10];
    v15 = v0[4];
    v14 = v0[5];
    if (v12)
    {
      v16 = v0[2];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v32 = v18;
      *v17 = 136315138;
      if (!v29)
      {
        v16 = 4999502;
      }

      v19 = sub_100141FE4(v16, v8, &v32);

      *(v17 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "Unable to delete all claims due to an unknown providerID %s", v17, 0xCu);
      sub_10000BB78(v18);
    }

    v31(v30, v15);
    v20 = v0[7];
    defaultLogger()();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Identity: Done deleting deleting all claims for current provider due to self-heal; terminating process", v23, 2u);
    }

    v24 = v0[10];
    v25 = v0[7];
    v28 = v0 + 4;
    v26 = v0[4];
    v27 = v28[1];

    v24(v25, v26);
    exit(0);
  }

  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1003201CC;
  v5 = 0;
LABEL_12:

  return sub_1002E0570(1, v5, 0);
}

uint64_t sub_1003201CC()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;

  if (v0)
  {
    *(v2 + 128) = v0;

    return _swift_task_switch(sub_10032080C, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v2 + 104) = v5;
    *v5 = v4;
    v5[1] = sub_100320364;

    return sub_1002E0570(2, 0, 0);
  }
}

uint64_t sub_100320364()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  if (v0)
  {
    *(v2 + 136) = v0;
    v5 = sub_10032093C;
  }

  else
  {
    v5 = sub_10032073C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100320484()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;

  if (v0)
  {
    *(v2 + 128) = v0;

    return _swift_task_switch(sub_10032080C, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v2 + 120) = v5;
    *v5 = v4;
    v5[1] = sub_10032061C;

    return sub_1002E0570(2, 3, 0);
  }
}

uint64_t sub_10032061C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;

  if (v0)
  {
    *(v2 + 136) = v0;
    v5 = sub_10032093C;
  }

  else
  {
    v5 = sub_10032073C;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_10032073C()
{
  v1 = v0[7];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Identity: Done deleting deleting all claims for current provider due to self-heal; terminating process", v4, 2u);
  }

  v5 = v0[10];
  v6 = v0[7];
  v9 = v0 + 4;
  v7 = v0[4];
  v8 = v9[1];

  v5(v6, v7);
  exit(0);
}

void sub_10032080C()
{
  v1 = v0[16];
  v2 = v0[10];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v2(v3, v5);
  v6 = v0[7];
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Identity: Done deleting deleting all claims for current provider due to self-heal; terminating process", v9, 2u);
  }

  v10 = v0[10];
  v11 = v0[7];
  v14 = v0 + 4;
  v12 = v0[4];
  v13 = v14[1];

  v10(v11, v12);
  exit(0);
}

void sub_10032093C()
{
  v1 = v0[17];
  v2 = v0[10];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v2(v3, v5);
  v6 = v0[7];
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Identity: Done deleting deleting all claims for current provider due to self-heal; terminating process", v9, 2u);
  }

  v10 = v0[10];
  v11 = v0[7];
  v14 = v0 + 4;
  v12 = v0[4];
  v13 = v14[1];

  v10(v11, v12);
  exit(0);
}

uint64_t sub_100320A6C()
{
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();

  return _swift_task_switch(sub_100320B34, 0, 0);
}

uint64_t sub_100320B34()
{
  v1 = v0[5];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Identity: Asked to delete everything due to self-heal", v4, 2u);
  }

  v5 = v0[5];
  v6 = v0[2];
  v7 = v0[3];

  v8 = *(v7 + 8);
  v0[6] = v8;
  v8(v5, v6);
  if (qword_100832CA8 != -1)
  {
    swift_once();
  }

  v9 = qword_1008823D8;
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_100320CC4;

  return (sub_100589394)(&off_1007F8558, v9);
}

uint64_t sub_100320CC4()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return _swift_task_switch(sub_100320DC0, 0, 0);
}

void sub_100320DC0()
{
  v1 = v0[4];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Identity: Done deleting everything due to self-heal; terminating process", v4, 2u);
  }

  v5 = v0[6];
  v7 = v0[3];
  v6 = v0[4];
  v8 = v0[2];

  v5(v6, v8);
  exit(0);
}

uint64_t sub_100320E90()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100320EF0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100320F28(unint64_t a1, uint64_t a2)
{
  v86 = a2;
  v108 = type metadata accessor for Logger();
  v3 = *(v108 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v108);
  v96 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v110 = &v86 - v8;
  __chkstk_darwin(v7);
  v95 = &v86 - v9;
  v10 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v86 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v94 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v93 = &v86 - v20;
  __chkstk_darwin(v19);
  v23 = &v86 - v22;
  v87 = a1 >> 62;
  v109 = a1;
  if (a1 >> 62)
  {
    v24 = _CocoaArrayWrapper.endIndex.getter();
    if (v24)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
LABEL_3:
      if (v24 >= 1)
      {
        v25 = 0;
        v92 = 0;
        v106 = v109 & 0xC000000000000001;
        v104 = (v15 + 48);
        v99 = (v15 + 32);
        v98 = (v15 + 16);
        v100 = (v15 + 8);
        v107 = (v3 + 8);
        *&v21 = 136315138;
        v101 = v21;
        *&v21 = 136315394;
        v88 = v21;
        v102 = v23;
        v103 = v14;
        v105 = v24;
        v97 = v13;
        while (1)
        {
          if (v106)
          {
            v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v26 = *(v109 + 8 * v25 + 32);
          }

          v27 = v26;
          v28 = [v26 assetFileURL];
          if (v28)
          {
            v29 = v28;
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            URL.init(string:)();

            if ((*v104)(v13, 1, v14) != 1)
            {
              (*v99)(v23, v13, v14);
              v40 = [objc_opt_self() defaultManager];
              URL._bridgeToObjectiveC()(v41);
              v43 = v42;
              v111 = 0;
              v44 = [v40 removeItemAtURL:v42 error:&v111];

              if (v44)
              {
                v45 = v111;
                v46 = v95;
                defaultLogger()();
                v47 = v23;
                v48 = v93;
                (*v98)(v93, v47, v14);
                v49 = Logger.logObject.getter();
                v50 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v49, v50))
                {
                  v51 = swift_slowAlloc();
                  v52 = swift_slowAlloc();
                  v111 = v52;
                  *v51 = v101;
                  v53 = URL.absoluteString.getter();
                  v55 = v54;
                  v56 = *v100;
                  (*v100)(v48, v103);
                  v57 = sub_100141FE4(v53, v55, &v111);
                  v14 = v103;

                  *(v51 + 4) = v57;
                  _os_log_impl(&_mh_execute_header, v49, v50, "Self-healing: Deleted stale asset file at: %s", v51, 0xCu);
                  sub_10000BB78(v52);

                  (*v107)(v95, v108);
                  v23 = v102;
                  v56(v102, v14);
                  goto LABEL_25;
                }

                v75 = *v100;
                (*v100)(v48, v14);
                (*v107)(v46, v108);
                v75(v47, v14);
                v13 = v97;
                v23 = v47;
              }

              else
              {
                v58 = v111;
                _convertNSErrorToError(_:)();

                swift_willThrow();
                v92 = 0;
                v59 = v96;
                defaultLogger()();
                v60 = v94;
                (*v98)(v94, v23, v14);
                swift_errorRetain();
                v61 = Logger.logObject.getter();
                v62 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v61, v62))
                {
                  v63 = swift_slowAlloc();
                  v91 = swift_slowAlloc();
                  v111 = v91;
                  *v63 = v88;
                  v90 = v62;
                  v64 = URL.absoluteString.getter();
                  v89 = v61;
                  v65 = v64;
                  v67 = v66;
                  v68 = *v100;
                  (*v100)(v60, v14);
                  v69 = sub_100141FE4(v65, v67, &v111);

                  *(v63 + 4) = v69;
                  *(v63 + 12) = 2080;
                  swift_getErrorValue();
                  v70 = Error.localizedDescription.getter();
                  v72 = sub_100141FE4(v70, v71, &v111);

                  *(v63 + 14) = v72;
                  v73 = v89;
                  _os_log_impl(&_mh_execute_header, v89, v90, "Self-healing: Error deleting stale asset file at: %s: %s", v63, 0x16u);
                  swift_arrayDestroy();
                  v23 = v102;

                  (*v107)(v96, v108);
                  v68(v23, v14);
                }

                else
                {

                  v76 = *v100;
                  (*v100)(v60, v14);
                  (*v107)(v59, v108);
                  v76(v23, v14);
                }

LABEL_25:
                v13 = v97;
              }

LABEL_26:
              v24 = v105;
              goto LABEL_6;
            }

            sub_10000BE18(v13, &unk_100844540, &unk_1006BFBC0);
          }

          defaultLogger()();
          v30 = v27;
          v31 = Logger.logObject.getter();
          v32 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            v111 = v34;
            *v33 = v101;
            v35 = [v30 recordUUID];
            if (v35)
            {
              v36 = v35;
              v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v39 = v38;
            }

            else
            {
              v37 = 0;
              v39 = 0xE000000000000000;
            }

            v74 = sub_100141FE4(v37, v39, &v111);

            *(v33 + 4) = v74;
            _os_log_impl(&_mh_execute_header, v31, v32, "Self-healing: Asset url is nil for recordUUID: %s", v33, 0xCu);
            sub_10000BB78(v34);

            (*v107)(v110, v108);
            v23 = v102;
            v14 = v103;
            goto LABEL_26;
          }

          (*v107)(v110, v108);
LABEL_6:
          if (v24 == ++v25)
          {
            goto LABEL_28;
          }
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
    }
  }

LABEL_28:
  if (v87)
  {
    sub_10001F8D4(0, &qword_10083EF78, NSManagedObject_ptr);

    v78 = _bridgeCocoaArray<A>(_:)();

    v77 = v78;
  }

  else
  {
    v77 = v109;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_10001F8D4(0, &qword_10083EF78, NSManagedObject_ptr);
    v78 = v77;
  }

  if (v77 >> 62)
  {
    v79 = _CocoaArrayWrapper.endIndex.getter();
    if (!v79)
    {
    }
  }

  else
  {
    v79 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v79)
    {
    }
  }

  if (v79 < 1)
  {
    goto LABEL_42;
  }

  v80 = 0;
  v81 = *(v86 + 16);
  v82 = v78 & 0xC000000000000001;
  do
  {
    if (v82)
    {
      v83 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v83 = *(v77 + 8 * v80 + 32);
    }

    v84 = v83;
    ++v80;
    [v81 deleteObject:{v83, v86}];
  }

  while (v79 != v80);
}

uint64_t sub_100321A60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100321AA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_1008410D0, &qword_1006DDB30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100321B18(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000B870(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100321B6C(uint64_t a1, uint64_t a2)
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
  v7 = type metadata accessor for IdentityDocumentProviderMetadata();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v10 = type metadata accessor for AppExtensionProcess();
  v3[12] = v10;
  v11 = *(v10 - 8);
  v3[13] = v11;
  v12 = *(v11 + 64) + 15;
  v3[14] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v3[15] = v13;
  v14 = *(v13 - 8);
  v3[16] = v14;
  v15 = *(v14 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_100321D5C, 0, 0);
}

uint64_t sub_100321D5C()
{
  v21 = v0;
  v1 = v0[18];
  v2 = v0[3];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[18];
  v7 = v0[15];
  v8 = v0[16];
  if (v5)
  {
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100141FE4(v10, v9, &v20);
    _os_log_impl(&_mh_execute_header, v3, v4, "IdentityDocumentProviderExtensionConnectionManager fetching scene identifiers for %s.", v11, 0xCu);
    sub_10000BB78(v12);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  v0[19] = v13;
  v14 = swift_task_alloc();
  v0[20] = v14;
  *v14 = v0;
  v14[1] = sub_100321F14;
  v15 = v0[14];
  v16 = v0[3];
  v17 = v0[4];
  v18 = v0[2];

  return sub_100322B2C(v15, v18, v16);
}

uint64_t sub_100321F14()
{
  v2 = *(*v1 + 160);
  v3 = *v1;
  v3[21] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003227C4, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[22] = v4;
    *v4 = v3;
    v4[1] = sub_100322084;
    v5 = v3[14];

    return sub_100324BC8(v5);
  }
}

uint64_t sub_100322084(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *v2;
  v4[23] = a1;
  v4[24] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100322344, 0, 0);
  }

  else
  {
    v7 = async function pointer to SendableXPCConnection.performWithRemoteObjectProxy<A>(_:onCancel:)[1];
    v8 = swift_task_alloc();
    v4[25] = v8;
    *v8 = v6;
    v8[1] = sub_100322230;
    v9 = v4[11];
    v10 = v4[8];

    return SendableXPCConnection.performWithRemoteObjectProxy<A>(_:onCancel:)(v9, &unk_1006DDBF0, 0, 0, 0, v10);
  }
}

uint64_t sub_100322230()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_100322964;
  }

  else
  {
    v3 = sub_1003224FC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100322344()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[24];
  v2 = v0[17];
  v3 = v0[18];
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[10];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.webPresentmentFetchSceneIdentifiersFailed(_:), v0[5]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003224FC()
{
  v40 = v0;
  v1 = v0[17];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  defaultLogger()();
  (*(v5 + 16))(v3, v2, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[19];
  v10 = v0[17];
  v11 = v0[15];
  v13 = v0[9];
  v12 = v0[10];
  v14 = v0[8];
  if (v8)
  {
    v36 = v0[16];
    v15 = swift_slowAlloc();
    v34 = v11;
    v16 = swift_slowAlloc();
    v39 = v16;
    *v15 = 136315138;
    IdentityDocumentProviderMetadata.sceneIdentifiers.getter();
    type metadata accessor for IdentityDocumentRequestSceneIdentifier();
    v31 = v10;
    v32 = v9;
    v17 = Array.description.getter();
    v19 = v18;

    v38 = *(v13 + 8);
    v38(v12, v14);
    v20 = sub_100141FE4(v17, v19, &v39);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v6, v7, "Succesfully fetched scene identifiers %s", v15, 0xCu);
    sub_10000BB78(v16);

    v32(v31, v34);
  }

  else
  {

    v38 = *(v13 + 8);
    v38(v12, v14);
    v9(v10, v11);
  }

  v21 = v0[23];
  v23 = v0[17];
  v22 = v0[18];
  v25 = v0[13];
  v24 = v0[14];
  v26 = v0[11];
  v27 = v0[12];
  v28 = v0[8];
  v33 = v0[10];
  v35 = v0[7];
  v37 = IdentityDocumentProviderMetadata.sceneIdentifiers.getter();

  v38(v26, v28);
  (*(v25 + 8))(v24, v27);

  v29 = v0[1];

  return v29(v37);
}

uint64_t sub_1003227C4()
{
  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[18];
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[10];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.webPresentmentFetchSceneIdentifiersFailed(_:), v0[5]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100322964()
{
  v1 = v0[23];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];

  (*(v3 + 8))(v2, v4);
  v5 = v0[26];
  v6 = v0[17];
  v7 = v0[18];
  v10 = v0[14];
  v11 = v0[11];
  v12 = v0[10];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.webPresentmentFetchSceneIdentifiersFailed(_:), v0[5]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_100322B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for AppExtensionProcess.Configuration();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v11 = type metadata accessor for AppExtensionIdentity();
  v4[13] = v11;
  v12 = *(v11 - 8);
  v4[14] = v12;
  v13 = *(v12 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_100322CC0, 0, 0);
}

uint64_t sub_100322CC0()
{
  v1 = v0[5];
  v2 = v1[5];
  v3 = v1[6];
  sub_10000BA08(v1 + 2, v2);
  v4 = async function pointer to dispatch thunk of ExtensionPointManaging.queryForAppExtension(applicationIdentifer:)[1];
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_100322D84;
  v6 = v0[16];
  v7 = v0[3];
  v8 = v0[4];

  return dispatch thunk of ExtensionPointManaging.queryForAppExtension(applicationIdentifer:)(v6, v7, v8, v2, v3);
}

uint64_t sub_100322D84()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_100323198;
  }

  else
  {
    v3 = sub_100322E98;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100322E98()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  (*(v0[14] + 16))(v0[15], v0[16], v0[13]);
  AppExtensionProcess.Configuration.init(appExtensionIdentity:onInterruption:)();
  (*(v4 + 16))(v2, v1, v3);
  v5 = async function pointer to AppExtensionProcess.init(configuration:)[1];
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_100322FA8;
  v7 = v0[11];
  v8 = v0[2];

  return AppExtensionProcess.init(configuration:)(v8, v7);
}

uint64_t sub_100322FA8()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_100323328;
  }

  else
  {
    v3 = sub_1003230BC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003230BC()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[8];
  (*(v0[10] + 8))(v0[12], v0[9]);
  (*(v4 + 8))(v2, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100323198()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v6 = v0[12];
  v7 = v0[11];
  (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.webPresentmentCouldNotCreateAppExtensionProcess(_:), v0[6]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100323328()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  (*(v0[10] + 8))(v0[12], v0[9]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[20];
  v5 = v0[15];
  v6 = v0[16];
  v9 = v0[12];
  v10 = v0[11];
  (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.webPresentmentCouldNotCreateAppExtensionProcess(_:), v0[6]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003234F0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 152) = a1;
  *(v2 + 160) = v3;
  return _swift_task_switch(sub_100323514, 0, 0);
}

uint64_t sub_100323514()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100323630;
  v2 = swift_continuation_init();
  v0[17] = sub_100007224(&qword_100841190, qword_1006DDBF8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10015FDB8;
  v0[13] = &unk_10080DBD8;
  v0[14] = v2;
  [v1 providerMetadataWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100323630()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_1003237A8;
  }

  else
  {
    v3 = sub_100323740;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100323740()
{
  v2 = v0[18];
  v1 = v0[19];
  XPCIdentityDocumentProviderMetadata.value.getter();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003237A8()
{
  v1 = *(v0 + 168);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 168);

  return v2();
}

uint64_t sub_100323814(uint64_t a1, uint64_t a2)
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
  v7 = type metadata accessor for AppExtensionProcess();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_10032399C, 0, 0);
}

uint64_t sub_10032399C()
{
  v21 = v0;
  v1 = v0[14];
  v2 = v0[3];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[12];
  if (v5)
  {
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100141FE4(v10, v9, &v20);
    _os_log_impl(&_mh_execute_header, v3, v4, "IdentityDocumentProviderExtensionConnectionManager notifying %s to perform registration updates.", v11, 0xCu);
    sub_10000BB78(v12);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  v0[15] = v13;
  v14 = swift_task_alloc();
  v0[16] = v14;
  *v14 = v0;
  v14[1] = sub_100323B54;
  v15 = v0[10];
  v16 = v0[3];
  v17 = v0[4];
  v18 = v0[2];

  return sub_100322B2C(v15, v18, v16);
}

uint64_t sub_100323B54()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  v3[17] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10032434C, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[18] = v4;
    *v4 = v3;
    v4[1] = sub_100323CC4;
    v5 = v3[10];

    return sub_100324BC8(v5);
  }
}

uint64_t sub_100323CC4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  v4[19] = a1;
  v4[20] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100323F88, 0, 0);
  }

  else
  {
    v7 = async function pointer to SendableXPCConnection.performWithRemoteObjectProxy<A>(_:onCancel:)[1];
    v8 = swift_task_alloc();
    v4[21] = v8;
    *v8 = v6;
    v8[1] = sub_100323E74;

    return SendableXPCConnection.performWithRemoteObjectProxy<A>(_:onCancel:)();
  }
}

uint64_t sub_100323E74()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1003244D4;
  }

  else
  {
    v3 = sub_100324128;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100323F88()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[20];
  v2 = v0[13];
  v3 = v0[14];
  v6 = v0[10];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.webPresentmentFetchSceneIdentifiersFailed(_:), v0[5]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100324128()
{
  v32 = v0;
  v1 = v0[13];
  v2 = v0[3];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[19];
    v6 = v0[12];
    v26 = v0[11];
    v27 = v0[13];
    v29 = v0[15];
    v30 = v0[10];
    v7 = v0[9];
    v28 = v0[8];
    v9 = v0[2];
    v8 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v31 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(v9, v8, &v31);
    _os_log_impl(&_mh_execute_header, v3, v4, "IdentityDocumentProviderExtensionConnectionManager successfully notified %s.", v10, 0xCu);
    sub_10000BB78(v11);

    v29(v27, v26);
    (*(v7 + 8))(v30, v28);
  }

  else
  {
    v12 = v0[19];
    v13 = v0[15];
    v15 = v0[12];
    v14 = v0[13];
    v17 = v0[10];
    v16 = v0[11];
    v18 = v0[8];
    v19 = v0[9];

    v13(v14, v16);
    (*(v19 + 8))(v17, v18);
  }

  v21 = v0[13];
  v20 = v0[14];
  v22 = v0[10];
  v23 = v0[7];

  v24 = v0[1];

  return v24();
}

uint64_t sub_10032434C()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[14];
  v6 = v0[10];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.webPresentmentFetchSceneIdentifiersFailed(_:), v0[5]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003244D4()
{
  v1 = v0[19];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];

  (*(v3 + 8))(v2, v4);
  v5 = v0[22];
  v6 = v0[13];
  v7 = v0[14];
  v10 = v0[10];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.webPresentmentFetchSceneIdentifiersFailed(_:), v0[5]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1003246A8()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1003247BC;
  v2 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_1008435E0, &qword_1006E1390);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1004290CC;
  v0[13] = &unk_10080DC00;
  v0[14] = v2;
  [v1 notifyRegistrationUpdatesWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1003247BC()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_1002D0E30, 0, 0);
}

uint64_t sub_1003248B4(const char *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 2u);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1003249F0(uint64_t a1)
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  if (a1)
  {
    v6 = a1;
  }

  else
  {
    (*(v5 + 104))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for DIPError.Code.internalError(_:));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    v6 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  }

  swift_errorRetain();
  return v6;
}

uint64_t sub_100324B6C()
{
  sub_10000BB78((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_100324BC8(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100324C88, 0, 0);
}

uint64_t sub_100324C88()
{
  v1 = v0[2];
  AppExtensionProcess.makeXPCConnection()();
  v2 = v0[5];
  if (v3)
  {
    (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.webPresentmentCouldNotCreateXPCConnection(_:), v0[3]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP13CoreIDVShared42IdentityDocumentProviderExtensionInterface_];
    v7 = sub_100007224(&qword_100841198, &qword_1006DDC10);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    v10 = SendableXPCConnection.init(connection:interface:invalidationHandler:interruptionHandler:exportedInterface:exportedObject:connectionErrorMapper:)();

    v11 = v0[1];

    return v11(v10);
  }
}

uint64_t sub_100324F3C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for PartialWebPresentmentRequest();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = type metadata accessor for CredentialPresentmentRequest();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v12 = type metadata accessor for BundleRecord();
  v2[13] = v12;
  v13 = *(v12 - 8);
  v2[14] = v13;
  v14 = *(v13 + 64) + 15;
  v2[15] = swift_task_alloc();
  v15 = type metadata accessor for Logger();
  v2[16] = v15;
  v16 = *(v15 - 8);
  v2[17] = v16;
  v17 = *(v16 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v18 = type metadata accessor for MobileDocumentProviderApplication();
  v2[23] = v18;
  v19 = *(v18 - 8);
  v2[24] = v19;
  v20 = *(v19 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v21 = type metadata accessor for ExtensionIdentity();
  v2[27] = v21;
  v22 = *(v21 - 8);
  v2[28] = v22;
  v23 = *(v22 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v24 = type metadata accessor for WebPresentmentMobileDocumentSource();
  v2[31] = v24;
  v25 = *(v24 - 8);
  v2[32] = v25;
  v26 = *(v25 + 64) + 15;
  v2[33] = swift_task_alloc();
  v27 = type metadata accessor for PartialWebPresentmentDocumentRequest();
  v2[34] = v27;
  v28 = *(v27 - 8);
  v2[35] = v28;
  v29 = *(v28 + 64) + 15;
  v2[36] = swift_task_alloc();
  v30 = type metadata accessor for PartialWebPresentmentMobileDocumentRequest();
  v2[37] = v30;
  v31 = *(v30 - 8);
  v2[38] = v31;
  v32 = *(v31 + 64) + 15;
  v2[39] = swift_task_alloc();

  return _swift_task_switch(sub_100325380, v1, 0);
}

uint64_t sub_100325380()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  v4 = v0[2];
  PartialWebPresentmentRequest.documentRequest.getter();
  if ((*(v2 + 88))(v1, v3) == enum case for PartialWebPresentmentDocumentRequest.iso18013MobileDocument(_:))
  {
    v6 = v0[38];
    v5 = v0[39];
    v8 = v0[36];
    v7 = v0[37];
    v10 = v0[32];
    v9 = v0[33];
    v11 = v0[31];
    v12 = v0[3];
    (*(v0[35] + 96))(v8, v0[34]);
    (*(v6 + 32))(v5, v8, v7);
    v13 = v12[28];
    sub_10000BA08(v12 + 24, v12[27]);
    dispatch thunk of WebPresentmentDeviceSupportProviding.mobileDocumentSource.getter();
    LODWORD(v5) = (*(v10 + 88))(v9, v11);
    LODWORD(v7) = enum case for WebPresentmentMobileDocumentSource.local(_:);
    (*(v10 + 8))(v9, v11);
    if (v5 == v7)
    {
      v14 = v0[3];
      v15 = v14[17];
      v16 = v14[18];
      sub_10000BA08(v14 + 14, v15);
      v17 = async function pointer to dispatch thunk of ExtensionPointManaging.queryExtensionPoint()[1];
      v18 = swift_task_alloc();
      v0[40] = v18;
      *v18 = v0;
      v18[1] = sub_1003258EC;

      return dispatch thunk of ExtensionPointManaging.queryExtensionPoint()(v15, v16);
    }

    else
    {
      v33 = v0[19];
      defaultLogger()();
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "MobileDocumentProviderDataSource local document providing is not supported on the current device, returning an empty list of provider records", v36, 2u);
      }

      v38 = v0[38];
      v37 = v0[39];
      v39 = v0[37];
      v40 = v0[19];
      v41 = v0[16];
      v42 = v0[17];

      (*(v42 + 8))(v40, v41);
      (*(v38 + 8))(v37, v39);
      v43 = v0[39];
      v44 = v0[36];
      v45 = v0[33];
      v47 = v0[29];
      v46 = v0[30];
      v49 = v0[25];
      v48 = v0[26];
      v50 = v0[21];
      v51 = v0[22];
      v52 = v0[20];
      v57 = v0[19];
      v59 = v0[18];
      v61 = v0[15];
      v63 = v0[12];
      v65 = v0[9];
      v66 = v0[6];

      v53 = v0[1];

      return v53(_swiftEmptyArrayStorage);
    }
  }

  else
  {
    v20 = v0[5];
    v19 = v0[6];
    v21 = v0[4];
    (*(v0[35] + 8))(v0[36], v0[34]);
    (*(v20 + 104))(v19, enum case for DIPError.Code.webPresentmentUnknownPresentmentProtocol(_:), v21);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v22 = v0[39];
    v23 = v0[36];
    v24 = v0[33];
    v26 = v0[29];
    v25 = v0[30];
    v28 = v0[25];
    v27 = v0[26];
    v29 = v0[21];
    v30 = v0[22];
    v31 = v0[20];
    v55 = v0[19];
    v56 = v0[18];
    v58 = v0[15];
    v60 = v0[12];
    v62 = v0[9];
    v64 = v0[6];

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_1003258EC(uint64_t a1)
{
  v2 = *(*v1 + 320);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 328) = a1;

  return _swift_task_switch(sub_100325A04, v3, 0);
}

uint64_t sub_100325A04()
{
  v67 = v0;
  v1 = v0[41];
  v2 = *(v1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = 0;
    v5 = v0[28];
    v63 = (v5 + 32);
    v6 = _swiftEmptyArrayStorage;
    v61 = *(v1 + 16);
    v62 = v0[41];
    while (v4 < *(v1 + 16))
    {
      v3 = v0[30];
      v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v8 = *(v5 + 72);
      (*(v5 + 16))(v3, v0[41] + v7 + v8 * v4, v0[27]);
      v9 = ExtensionIdentity.isEnabled.getter();
      v10 = v0[30];
      if (v9)
      {
        v11 = *v63;
        (*v63)(v0[29], v0[30], v0[27]);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66[0] = v6;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v3 = v66;
          sub_1001731B0(0, *(v6 + 2) + 1, 1);
          v6 = v66[0];
        }

        v14 = *(v6 + 2);
        v13 = *(v6 + 3);
        if (v14 >= v13 >> 1)
        {
          v3 = v66;
          sub_1001731B0(v13 > 1, v14 + 1, 1);
          v6 = v66[0];
        }

        v15 = v0[29];
        v16 = v0[27];
        *(v6 + 2) = v14 + 1;
        v11(&v6[v7 + v14 * v8], v15, v16);
        v2 = v61;
        v1 = v62;
      }

      else
      {
        (*(v5 + 8))(v0[30], v0[27]);
      }

      if (v2 == ++v4)
      {
        v17 = v0[41];
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_36:
    v3 = sub_1003C60BC(0, v3[2] + 1, 1, v3);
LABEL_32:
    v58 = v3[2];
    v57 = v3[3];
    v48 = v3;
    if (v58 >= v57 >> 1)
    {
      v48 = sub_1003C60BC(v57 > 1, v58 + 1, 1, v3);
    }

    v59 = v0[24];
    v60 = v0[25];
    (*(v0[14] + 8))(v0[15], v0[13]);
    *(v48 + 16) = v58 + 1;
    sub_100326E78(v60, v48 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v58, type metadata accessor for MobileDocumentProviderApplication);
    goto LABEL_28;
  }

  v6 = _swiftEmptyArrayStorage;
LABEL_14:

  v18 = *(v6 + 2);
  if (v18)
  {
    v19 = v0[28];
    v20 = v0[24];
    v66[0] = _swiftEmptyArrayStorage;
    sub_10017316C(0, v18, 0);
    v21 = *(v19 + 16);
    v19 += 16;
    v64 = v21;
    v22 = v66[0];
    v23 = &v6[(*(v19 + 64) + 32) & ~*(v19 + 64)];
    v24 = *(v19 + 56);
    do
    {
      v25 = v0[23];
      v64(v0[26], v23, v0[27]);
      swift_storeEnumTagMultiPayload();
      v66[0] = v22;
      v26 = v22[2];
      v27 = v22[3];
      if (v26 >= v27 >> 1)
      {
        sub_10017316C(v27 > 1, v26 + 1, 1);
        v22 = v66[0];
      }

      v28 = v0[26];
      v22[2] = v26 + 1;
      sub_100326E78(v28, v22 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v26, type metadata accessor for MobileDocumentProviderApplication);
      v23 += v24;
      --v18;
    }

    while (v18);
    v65 = v22;
  }

  else
  {

    v65 = _swiftEmptyArrayStorage;
  }

  v29 = *(v0[3] + 272);
  if (FirstPartyDocumentProviderPreferencesManager.isFirstPartyExtensionEnabled.getter())
  {
    v30 = v0[22];
    defaultLogger()();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "MobileDocumentProviderDataSource Apple Wallet application is enabled to be a document provider", v33, 2u);
    }

    v34 = v0[22];
    v36 = v0[16];
    v35 = v0[17];
    v37 = v0[15];
    v38 = v0[3];

    v5 = *(v35 + 8);
    (v5)(v34, v36);
    v39 = v38[23];
    sub_10000BA08(v38 + 19, v38[22]);
    dispatch thunk of BundleRecordFetching.record(withBundleIdentifier:allowPlaceholder:)();
    v55 = v0[23];
    (*(v0[14] + 16))(v0[25], v0[15], v0[13]);
    swift_storeEnumTagMultiPayload();
    v3 = v65;
    v56 = swift_isUniquelyReferenced_nonNull_native();
    if (v56)
    {
      goto LABEL_32;
    }

    goto LABEL_36;
  }

  v40 = v0[21];
  defaultLogger()();
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v0[21];
  v45 = v0[16];
  v46 = v0[17];
  if (v43)
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "MobileDocumentProviderDataSource Apple Wallet application is not enabled to be a document provider; skipping adding to list.", v47, 2u);
  }

  v5 = *(v46 + 8);
  (v5)(v44, v45);
  v48 = v65;
LABEL_28:
  v0[42] = v5;
  v0[43] = v48;
  v49 = v0[12];
  v50 = v0[9];
  (*(v0[8] + 16))(v50, v0[2], v0[7]);
  sub_10042741C(v50, v49);
  sub_10000BA08((v0[3] + 232), *(v0[3] + 256));
  v51 = swift_task_alloc();
  v0[44] = v51;
  *v51 = v0;
  v51[1] = sub_100326204;
  v52 = v0[39];
  v53 = v0[12];

  return sub_100326EE0(v48, v52, v53);
}

uint64_t sub_100326204(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 352);
  v6 = *(*v2 + 344);
  v7 = *v2;
  *(v4 + 360) = a1;
  *(v4 + 368) = v1;

  v8 = *(v3 + 24);
  if (v1)
  {
    v9 = sub_10032667C;
  }

  else
  {
    v9 = sub_100326354;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100326354()
{
  v53 = v0;
  v1 = v0[45];
  v2 = v0[20];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[45];
    v6 = v0[38];
    v49 = v0[39];
    v44 = v0[42];
    v46 = v0[37];
    v7 = v0[17];
    v36 = v0[16];
    v38 = v0[20];
    v8 = v0[11];
    v40 = v0[10];
    v42 = v0[12];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v52 = v10;
    *v9 = 136315138;
    type metadata accessor for MobileDocumentProviderRecord(0);
    v11 = Array.description.getter();
    v13 = sub_100141FE4(v11, v12, &v52);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "MobileDocumentProviderDataSource filtered extension records: %s", v9, 0xCu);
    sub_10000BB78(v10);

    v44(v38, v36);
    (*(v8 + 8))(v42, v40);
    (*(v6 + 8))(v49, v46);
  }

  else
  {
    v14 = v0[42];
    v15 = v0[38];
    v47 = v0[37];
    v50 = v0[39];
    v16 = v0[20];
    v18 = v0[16];
    v17 = v0[17];
    v19 = v0[11];
    v20 = v0[12];
    v21 = v0[10];

    v14(v16, v18);
    (*(v19 + 8))(v20, v21);
    (*(v15 + 8))(v50, v47);
  }

  v22 = v0[3];
  v23 = *(v22 + 280);
  *(v22 + 280) = v0[45];

  v51 = v0[45];
  v24 = v0[39];
  v25 = v0[36];
  v26 = v0[33];
  v28 = v0[29];
  v27 = v0[30];
  v30 = v0[25];
  v29 = v0[26];
  v31 = v0[21];
  v32 = v0[22];
  v33 = v0[20];
  v37 = v0[19];
  v39 = v0[18];
  v41 = v0[15];
  v43 = v0[12];
  v45 = v0[9];
  v48 = v0[6];

  v34 = v0[1];

  return v34(v51);
}

uint64_t sub_10032667C()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);
  v22 = v0[46];
  v4 = v0[39];
  v5 = v0[36];
  v6 = v0[33];
  v8 = v0[29];
  v7 = v0[30];
  v10 = v0[25];
  v9 = v0[26];
  v12 = v0[21];
  v11 = v0[22];
  v13 = v0[20];
  v16 = v0[19];
  v17 = v0[18];
  v18 = v0[15];
  v19 = v0[12];
  v20 = v0[9];
  v21 = v0[6];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1003267F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v8 = type metadata accessor for MobileDocumentProviderRecord(0);
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_100326910, v3, 0);
}

uint64_t sub_100326910()
{
  v37 = v0;
  v1 = v0[5];
  v2 = *(v1 + 280);
  if (!v2)
  {
    v18 = v0[8];
    v19 = v0[4];
    defaultLogger()();

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    v22 = os_log_type_enabled(v20, v21);
    v24 = v0[7];
    v23 = v0[8];
    v25 = v0[6];
    if (v22)
    {
      v27 = v0[3];
      v26 = v0[4];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v36 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_100141FE4(v27, v26, &v36);
      _os_log_impl(&_mh_execute_header, v20, v21, "There are no previously fetched records, returning nil for %s", v28, 0xCu);
      sub_10000BB78(v29);
    }

    (*(v24 + 8))(v23, v25);
    (*(v0[10] + 56))(v0[2], 1, 1, v0[9]);
    goto LABEL_17;
  }

  v3 = *(v2 + 16);
  v4 = *(v1 + 280);

  if (!v3)
  {
LABEL_11:
    v15 = v0[9];
    v16 = v0[10];
    v17 = v0[2];

    (*(v16 + 56))(v17, 1, 1, v15);
LABEL_17:
    v33 = v0[11];
    v34 = v0[8];

    v35 = v0[1];

    return v35();
  }

  v6 = 0;
  v7 = v0[10];
  while (v6 < *(v2 + 16))
  {
    v9 = v0[3];
    v8 = v0[4];
    sub_100326DB8(v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v6, v0[11]);
    if (sub_10032FA04() == v9 && v10 == v8)
    {

LABEL_16:

      v30 = v0[10];
      v31 = v0[9];
      v32 = v0[2];
      sub_100326E78(v0[11], v32, type metadata accessor for MobileDocumentProviderRecord);
      (*(v30 + 56))(v32, 0, 1, v31);
      goto LABEL_17;
    }

    v12 = v0[3];
    v13 = v0[4];
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      goto LABEL_16;
    }

    ++v6;
    result = sub_100326E1C(v0[11]);
    if (v3 == v6)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100326BE8()
{
  sub_10000BB78(v0 + 14);
  sub_10000BB78(v0 + 19);
  sub_10000BB78(v0 + 24);
  sub_10000BB78(v0 + 29);
  v1 = v0[34];

  v2 = v0[35];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100326C6C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10013898C;

  return sub_100324F3C(a1);
}

uint64_t sub_100326D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100027B9C;

  return sub_1003267F0(a1, a2, a3);
}

uint64_t sub_100326DB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentProviderRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100326E1C(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentProviderRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100326E78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100326EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for Logger();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_100326FA4, 0, 0);
}

uint64_t sub_100326FA4()
{
  v23 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 56);
  v9 = *(v0 + 24);
  if (v5)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_100141FE4(0xD000000000000049, 0x800000010070E420, &v22);
    *(v10 + 12) = 2048;
    *(v10 + 14) = *(v9 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "MobileDocumentProviderDataSource %s. Beginning to filter %ld mobile document provider applications using request.", v10, 0x16u);
    sub_10000BB78(v11);
  }

  else
  {
    v12 = *(v0 + 24);
  }

  (*(v7 + 8))(v6, v8);
  v13 = *(v0 + 32);
  *(v0 + 16) = *(v0 + 24);
  v14 = swift_task_alloc();
  *(v0 + 80) = v14;
  v15 = *(v0 + 40);
  *(v14 + 16) = v13;
  *(v14 + 24) = vextq_s8(v15, v15, 8uLL);
  v16 = async function pointer to Sequence.asyncCompactMap<A>(_:)[1];
  v17 = swift_task_alloc();
  *(v0 + 88) = v17;
  v18 = sub_100007224(&qword_100841298, &qword_1006DDD48);
  v19 = type metadata accessor for MobileDocumentProviderRecord(0);
  v20 = sub_10032ADEC();
  *v17 = v0;
  v17[1] = sub_1003271F4;

  return Sequence.asyncCompactMap<A>(_:)(&unk_1006DDD40, v14, v18, v19, v20);
}

uint64_t sub_1003271F4(uint64_t a1)
{
  v4 = *(*v2 + 88);
  v5 = *v2;
  v5[12] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100327350, 0, 0);
  }

  else
  {
    v7 = v5[9];
    v6 = v5[10];

    v8 = v5[1];

    return v8(a1);
  }
}

uint64_t sub_100327350()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t sub_1003273BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(sub_100007224(&qword_1008412A8, &unk_1006DDD50) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v7 = type metadata accessor for IdentityDocumentRequestSceneIdentifier();
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v9 = *(v8 + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v10 = type metadata accessor for MobileDocumentRegistration();
  v5[12] = v10;
  v11 = *(v10 - 8);
  v5[13] = v11;
  v12 = *(v11 + 64) + 15;
  v5[14] = swift_task_alloc();
  v13 = type metadata accessor for MobileDocumentProviderRegisteredApplication();
  v5[15] = v13;
  v14 = *(v13 - 8);
  v5[16] = v14;
  v15 = *(v14 + 64) + 15;
  v5[17] = swift_task_alloc();
  v16 = *(*(sub_100007224(&qword_10083ACF8, &qword_1006D8FC0) - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v17 = type metadata accessor for ExtensionIdentity();
  v5[21] = v17;
  v18 = *(v17 - 8);
  v5[22] = v18;
  v19 = *(v18 + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v20 = *(type metadata accessor for DigitalPresentmentEligibleProposalData() - 8);
  v5[25] = v20;
  v21 = *(v20 + 64) + 15;
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v22 = type metadata accessor for PartialWebPresentmentMobileDocumentRequest();
  v5[29] = v22;
  v23 = *(v22 - 8);
  v5[30] = v23;
  v24 = *(v23 + 64) + 15;
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v25 = type metadata accessor for Logger();
  v5[33] = v25;
  v26 = *(v25 - 8);
  v5[34] = v26;
  v27 = *(v26 + 64) + 15;
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v28 = type metadata accessor for BundleRecord();
  v5[47] = v28;
  v29 = *(v28 - 8);
  v5[48] = v29;
  v30 = *(v29 + 64) + 15;
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  v31 = type metadata accessor for MobileDocumentProviderApplication();
  v5[54] = v31;
  v32 = *(*(v31 - 8) + 64) + 15;
  v5[55] = swift_task_alloc();

  return _swift_task_switch(sub_1003278AC, 0, 0);
}

uint64_t sub_1003278AC()
{
  v145 = v0;
  v1 = *(v0 + 432);
  sub_10032D0A0(*(v0 + 24), *(v0 + 440), type metadata accessor for MobileDocumentProviderApplication);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = *(v0 + 440);
  if (EnumCaseMultiPayload == 1)
  {
    v4 = *(v0 + 376);
    v5 = *(v0 + 384);
    v6 = *(v0 + 160);
    (*(*(v0 + 176) + 32))(*(v0 + 192), v3, *(v0 + 168));
    ExtensionIdentity.applicationExtensionRecord.getter();
    v7 = *(v5 + 48);
    if (v7(v6, 1, v4) == 1)
    {
      v8 = *(v0 + 288);
      v10 = *(v0 + 184);
      v9 = *(v0 + 192);
      v11 = *(v0 + 168);
      v12 = *(v0 + 176);
      sub_10000BE18(*(v0 + 160), &qword_10083ACF8, &qword_1006D8FC0);
      defaultLogger()();
      (*(v12 + 16))(v10, v9, v11);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      v15 = os_log_type_enabled(v13, v14);
      v16 = *(v0 + 288);
      v17 = *(v0 + 272);
      v140 = *(v0 + 264);
      v18 = *(v0 + 184);
      v19 = *(v0 + 192);
      v21 = *(v0 + 168);
      v20 = *(v0 + 176);
      if (v15)
      {
        v136 = *(v0 + 288);
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v144[0] = v23;
        *v22 = 136315138;
        v127 = v14;
        v24 = ExtensionIdentity.bundleIdentifier.getter();
        v132 = v19;
        v26 = v25;
        v27 = *(v20 + 8);
        v27(v18, v21);
        v28 = sub_100141FE4(v24, v26, v144);

        *(v22 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v13, v127, "MobileDocumentProviderDataSource encountered extension with no extension record. Skipping bundleIdentifier %s.", v22, 0xCu);
        sub_10000BB78(v23);

        (*(v17 + 8))(v136, v140);
        v27(v132, v21);
      }

      else
      {

        v60 = *(v20 + 8);
        v60(v18, v21);
        (*(v17 + 8))(v16, v140);
        v60(v19, v21);
      }

      goto LABEL_23;
    }

    v52 = *(v0 + 376);
    v53 = *(v0 + 152);
    (*(*(v0 + 384) + 32))(*(v0 + 408), *(v0 + 160), v52);
    BundleRecord.containingBundleRecord.getter();
    if (v7(v53, 1, v52) == 1)
    {
      sub_10000BE18(*(v0 + 152), &qword_10083ACF8, &qword_1006D8FC0);
      goto LABEL_20;
    }

    v61 = *(v0 + 376);
    v62 = *(v0 + 384);
    v63 = *(v0 + 152);
    v64 = BundleRecord.applicationIdentifier.getter();
    v66 = v65;
    *(v0 + 496) = v64;
    *(v0 + 504) = v65;
    v67 = *(v62 + 8);
    *(v0 + 512) = v67;
    *(v0 + 520) = (v62 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v67(v63, v61);
    if (!v66)
    {
LABEL_20:
      v71 = *(v0 + 400);
      v72 = *(v0 + 408);
      v73 = *(v0 + 376);
      v74 = *(v0 + 384);
      v75 = *(v0 + 320);
      defaultLogger()();
      (*(v74 + 16))(v71, v72, v73);
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.error.getter();
      v78 = os_log_type_enabled(v76, v77);
      v79 = *(v0 + 400);
      v80 = *(v0 + 408);
      v81 = *(v0 + 376);
      v82 = *(v0 + 384);
      v83 = *(v0 + 272);
      v134 = *(v0 + 264);
      v138 = *(v0 + 320);
      v142 = *(v0 + 192);
      v84 = *(v0 + 168);
      v85 = *(v0 + 176);
      if (v78)
      {
        v123 = v77;
        v86 = swift_slowAlloc();
        v130 = v80;
        v87 = swift_slowAlloc();
        v144[0] = v87;
        *v86 = 136315138;
        sub_10032D00C();
        v125 = v85;
        v88 = v81;
        v89 = dispatch thunk of CustomStringConvertible.description.getter();
        v128 = v84;
        v91 = v90;
        v92 = *(v82 + 8);
        v92(v79, v88);
        v93 = sub_100141FE4(v89, v91, v144);

        *(v86 + 4) = v93;
        _os_log_impl(&_mh_execute_header, v76, v123, "Application extension record for %s is missing applicationIdentifier. Skipping.", v86, 0xCu);
        sub_10000BB78(v87);

        (*(v83 + 8))(v138, v134);
        v92(v130, v88);
        (*(v125 + 8))(v142, v128);
      }

      else
      {

        v94 = *(v82 + 8);
        v94(v79, v81);
        (*(v83 + 8))(v138, v134);
        v94(v80, v81);
        (*(v85 + 8))(v142, v84);
      }

LABEL_23:
      v95 = type metadata accessor for MobileDocumentProviderRecord(0);
      v96 = *(v0 + 440);
      v98 = *(v0 + 416);
      v97 = *(v0 + 424);
      v99 = *(v0 + 400);
      v100 = *(v0 + 408);
      v101 = *(v0 + 392);
      v102 = *(v0 + 360);
      v103 = *(v0 + 368);
      v104 = *(v0 + 352);
      v106 = *(v0 + 344);
      v107 = *(v0 + 336);
      v108 = *(v0 + 328);
      v109 = *(v0 + 320);
      v110 = *(v0 + 312);
      v111 = *(v0 + 304);
      v112 = *(v0 + 296);
      v113 = *(v0 + 288);
      v114 = *(v0 + 280);
      v115 = *(v0 + 256);
      v116 = *(v0 + 248);
      v117 = *(v0 + 224);
      v118 = *(v0 + 216);
      v119 = *(v0 + 208);
      v120 = *(v0 + 192);
      v121 = *(v0 + 184);
      log = *(v0 + 160);
      v124 = *(v0 + 152);
      v126 = *(v0 + 144);
      v129 = *(v0 + 136);
      v131 = *(v0 + 112);
      v135 = *(v0 + 88);
      v139 = *(v0 + 80);
      v143 = *(v0 + 56);
      (*(*(v95 - 8) + 56))(*(v0 + 16), 1, 1, v95);

      v105 = *(v0 + 8);

      return v105();
    }

    v68 = *sub_10000BA08(*(v0 + 40), *(*(v0 + 40) + 24));
    v69 = swift_task_alloc();
    *(v0 + 528) = v69;
    *v69 = v0;
    v69[1] = sub_100328F8C;
    v70 = *(v0 + 136);

    return sub_10033C418(v70, v64, v66);
  }

  else
  {
    (*(*(v0 + 384) + 32))(*(v0 + 424), v3, *(v0 + 376));
    *(v0 + 448) = BundleRecord.applicationIdentifier.getter();
    *(v0 + 456) = v29;
    if (!v29)
    {
      (*(*(v0 + 384) + 8))(*(v0 + 424), *(v0 + 376));
      goto LABEL_23;
    }

    v30 = *(v0 + 368);
    v31 = *(v0 + 256);
    v32 = *(v0 + 232);
    v33 = *(v0 + 240);
    v34 = *(v0 + 32);
    defaultLogger()();
    v35 = *(v33 + 16);
    v35(v31, v34, v32);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 368);
    v41 = *(v0 + 264);
    v40 = *(v0 + 272);
    v42 = *(v0 + 256);
    if (v38)
    {
      v133 = v37;
      v44 = *(v0 + 240);
      v43 = *(v0 + 248);
      v141 = *(v0 + 264);
      v45 = *(v0 + 232);
      v137 = *(v0 + 368);
      v46 = swift_slowAlloc();
      v144[0] = swift_slowAlloc();
      *v46 = 136315394;
      *(v46 + 4) = sub_100141FE4(0xD000000000000049, 0x800000010070E420, v144);
      *(v46 + 12) = 2080;
      v35(v43, v42, v45);
      v47 = String.init<A>(describing:)();
      v49 = v48;
      (*(v44 + 8))(v42, v45);
      v50 = sub_100141FE4(v47, v49, v144);

      *(v46 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v36, v133, "MobileDocumentProviderDataSource %s getting request interpretation for partial request %s", v46, 0x16u);
      swift_arrayDestroy();

      v51 = *(v40 + 8);
      v51(v137, v141);
    }

    else
    {
      v54 = *(v0 + 232);
      v55 = *(v0 + 240);

      (*(v55 + 8))(v42, v54);
      v51 = *(v40 + 8);
      v51(v39, v41);
    }

    *(v0 + 464) = v51;
    v56 = *sub_10000BA08((*(v0 + 40) + 96), *(*(v0 + 40) + 120));
    v57 = swift_task_alloc();
    *(v0 + 472) = v57;
    *v57 = v0;
    v57[1] = sub_10032834C;
    v58 = *(v0 + 48);

    return sub_100422860(v58);
  }
}

uint64_t sub_10032834C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 472);
  v6 = *v2;
  *(*v2 + 480) = v1;

  if (v1)
  {
    v7 = sub_10032A064;
  }

  else
  {
    *(v4 + 488) = a1;
    v7 = sub_100328474;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100328474()
{
  v147 = v0;
  v1 = v0[61];
  v2 = [objc_opt_self() standardUserDefaults];
  static DaemonInternalDefaultsKeys.WebPresentment.disableFirstPartyCertificateAuthFiltering.getter();
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 BOOLForKey:v3];

  if (v4)
  {
    v5 = v0[45];
    defaultLogger()();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[58];
    v10 = v0[45];
    v12 = v0[33];
    v11 = v0[34];
    if (!v8)
    {
      goto LABEL_8;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v146[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100141FE4(0xD000000000000049, 0x800000010070E420, v146);
    v15 = "MobileDocumentProviderDataSource %s not performing first party certificate auth filtering due to user defaults settings.";
    goto LABEL_7;
  }

  v16 = sub_10000BA08((v0[5] + 96), *(v0[5] + 120));
  if (*(*sub_10000BA08((*v16 + 112), *(*v16 + 136)) + 16) == 1)
  {
    v17 = v0[44];
    defaultLogger()();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    v18 = os_log_type_enabled(v6, v7);
    v9 = v0[58];
    v10 = v0[44];
    v12 = v0[33];
    v19 = v0[34];
    if (!v18)
    {
      goto LABEL_8;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v146[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100141FE4(0xD000000000000049, 0x800000010070E420, v146);
    v15 = "MobileDocumentProviderDataSource %s not performing first party certificate auth filtering due to developer test mode being enabled.";
LABEL_7:
    _os_log_impl(&_mh_execute_header, v6, v7, v15, v13, 0xCu);
    sub_10000BB78(v14);

LABEL_8:

    v9(v10, v12);
    v20 = v1;
    if (!v1[2])
    {

LABEL_37:
      v82 = v0[57];
      v83 = v0[41];
      defaultLogger()();

      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.debug.getter();

      v86 = os_log_type_enabled(v84, v85);
      v87 = v0[57];
      v88 = v0[58];
      if (v86)
      {
        v89 = v0[56];
        v90 = v0[48];
        v139 = v0[47];
        v143 = v0[53];
        v91 = v0[34];
        v133 = v0[33];
        v136 = v0[41];
        v92 = swift_slowAlloc();
        v146[0] = swift_slowAlloc();
        *v92 = 136315394;
        *(v92 + 4) = sub_100141FE4(0xD000000000000049, 0x800000010070E420, v146);
        *(v92 + 12) = 2080;
        v93 = sub_100141FE4(v89, v87, v146);

        *(v92 + 14) = v93;
        _os_log_impl(&_mh_execute_header, v84, v85, "MobileDocumentProviderDataSource %s. %s does not have registered documents that can handle the request. Returning nil so that it will be skipped.", v92, 0x16u);
        swift_arrayDestroy();

        v88(v136, v133);
        (*(v90 + 8))(v143, v139);
      }

      else
      {
        v94 = v0[53];
        v95 = v0[47];
        v96 = v0[48];
        v97 = v0[41];
        v98 = v0[33];
        v99 = v0[34];

        v88(v97, v98);
        (*(v96 + 8))(v94, v95);
      }

      v81 = 1;
LABEL_41:
      v100 = type metadata accessor for MobileDocumentProviderRecord(0);
      v101 = v0[55];
      v103 = v0[52];
      v102 = v0[53];
      v104 = v0[50];
      v105 = v0[51];
      v106 = v0[49];
      v107 = v0[45];
      v108 = v0[46];
      v110 = v0[44];
      v111 = v0[43];
      v112 = v0[42];
      v113 = v0[41];
      v114 = v0[40];
      v115 = v0[39];
      v116 = v0[38];
      v117 = v0[37];
      v118 = v0[36];
      v119 = v0[35];
      v120 = v0[32];
      v121 = v0[31];
      v122 = v0[28];
      v123 = v0[27];
      v124 = v0[26];
      v125 = v0[24];
      v126 = v0[23];
      v127 = v0[20];
      v128 = v0[19];
      v129 = v0[18];
      v131 = v0[17];
      v134 = v0[14];
      v137 = v0[11];
      v140 = v0[10];
      v144 = v0[7];
      (*(*(v100 - 8) + 56))(v0[2], v81, 1, v100);

      v109 = v0[1];

      return v109();
    }

    goto LABEL_26;
  }

  v21 = v0[43];
  defaultLogger()();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  v24 = os_log_type_enabled(v22, v23);
  v25 = v0[58];
  v26 = v0[43];
  v28 = v0[33];
  v27 = v0[34];
  if (v24)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v146[0] = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_100141FE4(0xD000000000000049, 0x800000010070E420, v146);
    _os_log_impl(&_mh_execute_header, v22, v23, "MobileDocumentProviderDataSource %s filtering eligible proposal data to only include proposals with trusted reader auth certificate data.", v29, 0xCu);
    sub_10000BB78(v30);
  }

  result = v25(v26, v28);
  v32 = v1;
  v33 = v1[2];
  if (!v33)
  {
    v37 = _swiftEmptyArrayStorage;
LABEL_24:

    if (!v37[2])
    {

      goto LABEL_37;
    }

    v20 = v37;
LABEL_26:
    v46 = v0[57];
    v47 = v0[42];

    defaultLogger()();

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();

    v142 = v20;
    if (os_log_type_enabled(v48, v49))
    {
      v135 = v49;
      v138 = v48;
      v50 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v145 = v130;
      v132 = v50;
      *v50 = 136315138;
      v51 = v20[2];
      if (v51)
      {
        v52 = v20;
        v53 = v0[25];
        v54 = v0[26];
        v146[0] = _swiftEmptyArrayStorage;
        sub_100172D4C(0, v51, 0);
        v55 = v146[0];
        v56 = v52 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
        v57 = *(v53 + 72);
        do
        {
          v58 = v0[26];
          sub_10032D0A0(v56, v58, type metadata accessor for DigitalPresentmentEligibleProposalData);
          v59 = *(v54 + 64);
          v60 = *(v54 + 72);

          sub_100177514(v58);
          v146[0] = v55;
          v62 = *(v55 + 16);
          v61 = *(v55 + 24);
          if (v62 >= v61 >> 1)
          {
            sub_100172D4C((v61 > 1), v62 + 1, 1);
            v55 = v146[0];
          }

          *(v55 + 16) = v62 + 1;
          v63 = v55 + 16 * v62;
          *(v63 + 32) = v59;
          *(v63 + 40) = v60;
          v56 += v57;
          --v51;
        }

        while (v51);
      }

      v68 = v0[58];
      v69 = v0[42];
      v71 = v0[33];
      v70 = v0[34];
      v72 = Array.description.getter();
      v74 = v73;

      v75 = sub_100141FE4(v72, v74, &v145);

      *(v132 + 1) = v75;
      _os_log_impl(&_mh_execute_header, v138, v135, "MobileDocumentProviderDataSource Apple Wallet can handle web presentment request with doc types %s", v132, 0xCu);
      sub_10000BB78(v130);

      v68(v69, v71);
    }

    else
    {
      v64 = v0[58];
      v65 = v0[42];
      v67 = v0[33];
      v66 = v0[34];

      v64(v65, v67);
    }

    v76 = v0[52];
    v77 = v0[53];
    v79 = v0[47];
    v78 = v0[48];
    v80 = v0[2];
    (*(v78 + 16))(v76, v77, v79);
    sub_1003300F8(v76, v142, v80);
    (*(v78 + 8))(v77, v79);
    v81 = 0;
    goto LABEL_41;
  }

  v34 = 0;
  v35 = v0[28] + 8;
  v36 = v0[25];
  v37 = _swiftEmptyArrayStorage;
  v141 = v35;
  while (v34 < v32[2])
  {
    v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v39 = *(v36 + 72);
    sub_10032D0A0(v32 + v38 + v39 * v34, v0[28], type metadata accessor for DigitalPresentmentEligibleProposalData);
    v40 = *(v35 + *(type metadata accessor for DigitalPresentmentSessionManager.Proposal() + 52));
    v41 = v0[28];
    if (v40 >> 60 == 15)
    {
      result = sub_100177514(v41);
    }

    else
    {
      sub_10032D108(v41, v0[27]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v146[0] = v37;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100172F18(0, v37[2] + 1, 1);
        v37 = v146[0];
      }

      v44 = v37[2];
      v43 = v37[3];
      if (v44 >= v43 >> 1)
      {
        sub_100172F18(v43 > 1, v44 + 1, 1);
        v37 = v146[0];
      }

      v45 = v0[27];
      v37[2] = v44 + 1;
      result = sub_10032D108(v45, v37 + v38 + v44 * v39);
      v35 = v141;
    }

    if (v33 == ++v34)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100328F8C()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v7 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    v4 = *(v2 + 504);

    v5 = sub_100329E2C;
  }

  else
  {
    v5 = sub_1003290A8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003290A8()
{
  v204 = v0;
  v1 = v0;
  v3 = v0[62];
  v2 = v0[63];
  v4 = v0[17];
  v6 = v0[4];
  v5 = v0[5];
  v7 = MobileDocumentProviderRegisteredApplication.registrations.getter();
  v8 = sub_10032AE50(v7, v6, v3, v2);

  v9 = v8[2];
  if (!v9)
  {

    v11 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_7;
    }

LABEL_20:
    v47 = v1[63];
    v48 = v1[37];

    defaultLogger()();

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();

    v51 = os_log_type_enabled(v49, v50);
    v52 = v1[65];
    v53 = v1[63];
    v199 = v1[64];
    v139 = v1;
    if (v51)
    {
      v54 = v1[62];
      v173 = v1[47];
      v179 = v1[51];
      v164 = v1[37];
      v55 = v1[34];
      v157 = v1[33];
      v56 = v1[22];
      v186 = v1[21];
      v193 = v1[24];
      v168 = v1[17];
      v57 = v1;
      v58 = v1[16];
      v160 = v57[15];
      v59 = swift_slowAlloc();
      v203[0] = swift_slowAlloc();
      *v59 = 136315394;
      *(v59 + 4) = sub_100141FE4(0xD000000000000049, 0x800000010070E420, v203);
      *(v59 + 12) = 2080;
      v60 = sub_100141FE4(v54, v53, v203);

      *(v59 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v49, v50, "MobileDocumentProviderDataSource %s. %s does not have registered documents can handle request. Returning nil so that it will be skipped.", v59, 0x16u);
      swift_arrayDestroy();

LABEL_22:

      (*(v55 + 8))(v164, v157);
      (*(v58 + 8))(v168, v160);
      v199(v179, v173);
      (*(v56 + 8))(v193, v186);
LABEL_27:
      v94 = type metadata accessor for MobileDocumentProviderRecord(0);
      v95 = 1;
      v1 = v139;
LABEL_34:
      v116 = v1[55];
      v118 = v1[52];
      v117 = v1[53];
      v119 = v1[50];
      v120 = v1[51];
      v121 = v1[49];
      v122 = v1;
      v125 = v1 + 45;
      v123 = v1[45];
      v124 = v125[1];
      v126 = v122[44];
      v140 = v122[43];
      v141 = v122[42];
      v142 = v122[41];
      v143 = v122[40];
      v144 = v122[39];
      v145 = v122[38];
      v146 = v122[37];
      v147 = v122[36];
      v148 = v122[35];
      v149 = v122[32];
      v150 = v122[31];
      v151 = v122[28];
      v152 = v122[27];
      loga = v122[26];
      v156 = v122[24];
      v159 = v122[23];
      v163 = v122[20];
      v167 = v122[19];
      v171 = v122[18];
      v177 = v122[17];
      v183 = v122[14];
      v190 = v122[11];
      v197 = v122[10];
      v202 = v122[7];
      (*(*(v94 - 8) + 56))(v122[2], v95, 1);

      v127 = v122[1];

      return v127();
    }

    v175 = v1[47];
    v181 = v1[51];
    v85 = v1[37];
LABEL_26:
    v87 = v1[33];
    v86 = v1[34];
    v88 = v1[24];
    v89 = v1;
    v90 = v1[22];
    v188 = v89[21];
    v195 = v88;
    v91 = v89[16];
    v92 = v89[17];
    v93 = v89[15];

    (*(v86 + 8))(v85, v87);
    (*(v91 + 8))(v92, v93);
    v199(v181, v175);
    (*(v90 + 8))(v195, v188);
    goto LABEL_27;
  }

  v10 = v1[13];
  v203[0] = _swiftEmptyArrayStorage;
  sub_100172D4C(0, v9, 0);
  v11 = _swiftEmptyArrayStorage;
  v12 = *(v10 + 16);
  v10 += 16;
  v13 = v8 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
  v184 = *(v10 + 56);
  v191 = v12;
  v14 = (v10 - 8);
  do
  {
    v15 = v1[14];
    v16 = v1;
    v17 = v1[12];
    v191(v15, v13, v17);
    v18 = MobileDocumentRegistration.documentType.getter();
    v20 = v19;
    (*v14)(v15, v17);
    v203[0] = v11;
    v22 = v11[2];
    v21 = v11[3];
    if (v22 >= v21 >> 1)
    {
      sub_100172D4C((v21 > 1), v22 + 1, 1);
      v11 = v203[0];
    }

    v11[2] = v22 + 1;
    v23 = &v11[2 * v22];
    v23[4] = v18;
    v23[5] = v20;
    v13 += v184;
    --v9;
    v1 = v16;
  }

  while (v9);

  if (!v11[2])
  {
    goto LABEL_20;
  }

LABEL_7:
  v24 = v1[51];
  v25 = v1[18];
  v26 = v1[5];
  BundleRecord.containingBundleRecord.getter();

  v28 = sub_1006973D4(v27);

  LOBYTE(v24) = sub_10032B788(v25, v28);

  sub_10000BE18(v25, &qword_10083ACF8, &qword_1006D8FC0);
  if ((v24 & 1) == 0)
  {
    v61 = v1[63];
    v62 = v1[51];
    v63 = v1[48];
    v64 = v1[49];
    v65 = v1[47];
    v66 = v1[38];

    defaultLogger()();
    (*(v63 + 16))(v64, v62, v65);
    v67 = Logger.logObject.getter();
    v165 = static os_log_type_t.error.getter();
    v68 = os_log_type_enabled(v67, v165);
    v69 = v1[65];
    v70 = v1[64];
    v71 = v1[49];
    v72 = v1[47];
    v73 = v1[34];
    v74 = v1[24];
    v75 = v1[22];
    v194 = v1[51];
    v200 = v1[21];
    v76 = v1[16];
    v180 = v1[38];
    v187 = v1[17];
    v169 = v1[33];
    v174 = v1[15];
    if (v68)
    {
      v161 = v1[22];
      v77 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      v158 = v74;
      v203[0] = v155;
      *v77 = 136315138;
      sub_10032D00C();
      log = v67;
      v78 = v72;
      v79 = v1;
      v80 = dispatch thunk of CustomStringConvertible.description.getter();
      v82 = v81;
      v70(v71, v78);
      v83 = v80;
      v1 = v79;
      v84 = sub_100141FE4(v83, v82, v203);

      *(v77 + 4) = v84;
      _os_log_impl(&_mh_execute_header, log, v165, "Application extension record for %s is missing the appropriate entitlements for the request. Skipping.", v77, 0xCu);
      sub_10000BB78(v155);

      (*(v73 + 8))(v180, v169);
      (*(v76 + 8))(v187, v174);
      v70(v194, v78);
      (*(v161 + 8))(v158, v200);
    }

    else
    {

      v70(v71, v72);
      (*(v73 + 8))(v180, v169);
      (*(v76 + 8))(v187, v174);
      v70(v194, v72);
      (*(v75 + 8))(v74, v200);
    }

    v94 = type metadata accessor for MobileDocumentProviderRecord(0);
    v95 = 1;
    goto LABEL_34;
  }

  v29 = v1[17];
  result = MobileDocumentProviderRegisteredApplication.sceneIdentifiers.getter();
  v31 = result;
  v198 = *(result + 16);
  if (!v198)
  {
    v35 = _swiftEmptyArrayStorage;
LABEL_31:
    v96 = v1[9];
    v97 = v1[10];
    v98 = v1[8];

    v99 = *(v96 + 104);
    v99(v97, enum case for IdentityDocumentRequestSceneIdentifier.iso18013MobileDocumentRequest(_:), v98);
    v100 = sub_10032D9C0(v97, v35);
    v101 = *(v96 + 8);
    v101(v97, v98);
    if (v100 || (v102 = v1[10], v103 = v1[8], v99(v102, enum case for IdentityDocumentRequestSceneIdentifier.iso18013MobileDocumentRawRequest(_:), v103), v104 = sub_10032D9C0(v102, v35), v101(v102, v103), v104))
    {
      v105 = v1[63];
      v176 = v1[64];
      v182 = v1[65];
      v107 = v1[51];
      v106 = v1[52];
      v162 = v107;
      v201 = v35;
      v108 = v1[47];
      v109 = v1[48];
      v110 = v1[24];
      v111 = v1;
      v112 = v1[22];
      v189 = v111[21];
      v196 = v110;
      v113 = v111[16];
      v170 = v111[17];
      v166 = v111[15];
      v114 = v111[2];

      v115 = *(v109 + 16);
      v115(v106, v107, v108);
      LODWORD(v107) = *(sub_100007224(&unk_100844380, &unk_1006DDD60) + 48);
      v115(v114, v106, v108);
      BundleRecord.containingBundleRecord.getter();
      v176(v106, v108);
      (*(v113 + 8))(v170, v166);
      v176(v162, v108);
      (*(v112 + 8))(v196, v189);
      v1 = v111;
      type metadata accessor for MobileDocumentProviderRecord.RecordSource(0);
      swift_storeEnumTagMultiPayload();
      v94 = type metadata accessor for MobileDocumentProviderRecord(0);
      v95 = 0;
      *(v114 + *(v94 + 20)) = v11;
      *(v114 + *(v94 + 24)) = v201;
      goto LABEL_34;
    }

    v128 = v1[63];
    v129 = v1[39];

    defaultLogger()();

    v49 = Logger.logObject.getter();
    v130 = static os_log_type_t.error.getter();

    v131 = os_log_type_enabled(v49, v130);
    v132 = v1[65];
    v133 = v1[63];
    v199 = v1[64];
    v139 = v1;
    if (v131)
    {
      v134 = v1[62];
      v173 = v1[47];
      v179 = v1[51];
      v164 = v1[39];
      v55 = v1[34];
      v157 = v1[33];
      v56 = v1[22];
      v186 = v1[21];
      v193 = v1[24];
      v168 = v1[17];
      v135 = v1;
      v58 = v1[16];
      v160 = v135[15];
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v203[0] = v137;
      *v136 = 136315138;
      v138 = sub_100141FE4(v134, v133, v203);

      *(v136 + 4) = v138;
      _os_log_impl(&_mh_execute_header, v49, v130, "Application %s does not have a scene identifier to respond to a partial mobile document request. Skipping", v136, 0xCu);
      sub_10000BB78(v137);

      goto LABEL_22;
    }

    v175 = v1[47];
    v181 = v1[51];
    v85 = v1[39];
    goto LABEL_26;
  }

  v32 = 0;
  v33 = v1[9];
  v172 = v33;
  v185 = (v33 + 32);
  v192 = (v33 + 48);
  v34 = (result + 40);
  v35 = _swiftEmptyArrayStorage;
  v178 = result;
  while (v32 < *(v31 + 16))
  {
    v36 = v35;
    v38 = v1[7];
    v37 = v1[8];
    v39 = v1;
    v41 = *(v34 - 1);
    v40 = *v34;

    IdentityDocumentRequestSceneIdentifier.init(rawValue:)();
    if ((*v192)(v38, 1, v37) == 1)
    {
      result = sub_10000BE18(v39[7], &qword_1008412A8, &unk_1006DDD50);
      v1 = v39;
      v35 = v36;
    }

    else
    {
      v42 = *v185;
      (*v185)(v39[11], v39[7], v39[8]);
      v35 = v36;
      v1 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1003C60E4(0, v36[2] + 1, 1, v36);
      }

      v44 = v35[2];
      v43 = v35[3];
      if (v44 >= v43 >> 1)
      {
        v35 = sub_1003C60E4(v43 > 1, v44 + 1, 1, v35);
      }

      v45 = v39[11];
      v46 = v39[8];
      v35[2] = v44 + 1;
      result = v42(v35 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v44, v45, v46);
      v31 = v178;
    }

    ++v32;
    v34 += 2;
    if (v198 == v32)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100329E2C()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 440);
  v4 = *(v0 + 416);
  v3 = *(v0 + 424);
  v5 = *(v0 + 400);
  v6 = *(v0 + 392);
  v13 = *(v0 + 368);
  v14 = *(v0 + 360);
  v15 = *(v0 + 352);
  v16 = *(v0 + 344);
  v17 = *(v0 + 336);
  v18 = *(v0 + 328);
  v19 = *(v0 + 320);
  v20 = *(v0 + 312);
  v21 = *(v0 + 304);
  v22 = *(v0 + 296);
  v23 = *(v0 + 288);
  v24 = *(v0 + 280);
  v25 = *(v0 + 256);
  v26 = *(v0 + 248);
  v27 = *(v0 + 224);
  v28 = *(v0 + 216);
  v7 = *(v0 + 192);
  v29 = *(v0 + 208);
  v30 = *(v0 + 184);
  v8 = *(v0 + 168);
  v9 = *(v0 + 176);
  v31 = *(v0 + 160);
  v32 = *(v0 + 152);
  v33 = *(v0 + 144);
  v34 = *(v0 + 136);
  v35 = *(v0 + 112);
  v36 = *(v0 + 88);
  v37 = *(v0 + 80);
  v38 = *(v0 + 56);
  (*(v0 + 512))(*(v0 + 408), *(v0 + 376));
  (*(v9 + 8))(v7, v8);

  v10 = *(v0 + 8);
  v11 = *(v0 + 536);

  return v10();
}

uint64_t sub_10032A064()
{
  v160 = v0;
  v1 = v0[60];
  v2 = v0[35];
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[60];
  v7 = v0[58];
  v9 = v0[34];
  v8 = v0[35];
  v10 = v0[33];
  if (v5)
  {
    v153 = v0[58];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v159[0] = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_100141FE4(0xD000000000000049, 0x800000010070E420, v159);
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    *v12 = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "MobileDocumentProviderDataSource %s. Unable to interpret request, returning an empty proposal. Error: %@", v11, 0x16u);
    sub_10000BE18(v12, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BB78(v13);

    v153(v8, v10);
  }

  else
  {
    v15 = v0[60];

    v7(v8, v10);
  }

  v16 = [objc_opt_self() standardUserDefaults];
  static DaemonInternalDefaultsKeys.WebPresentment.disableFirstPartyCertificateAuthFiltering.getter();
  v17 = String._bridgeToObjectiveC()();

  v18 = [v16 BOOLForKey:v17];

  if (v18)
  {
    v19 = v0[45];
    defaultLogger()();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[58];
    v24 = v0[45];
    v25 = v0[33];
    v26 = v0[34];
    if (!v22)
    {
      goto LABEL_11;
    }

    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v159[0] = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_100141FE4(0xD000000000000049, 0x800000010070E420, v159);
    v29 = "MobileDocumentProviderDataSource %s not performing first party certificate auth filtering due to user defaults settings.";
    goto LABEL_10;
  }

  v30 = sub_10000BA08((v0[5] + 96), *(v0[5] + 120));
  if (*(*sub_10000BA08((*v30 + 112), *(*v30 + 136)) + 16) == 1)
  {
    v31 = v0[44];
    defaultLogger()();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    v32 = os_log_type_enabled(v20, v21);
    v23 = v0[58];
    v24 = v0[44];
    v25 = v0[33];
    v33 = v0[34];
    if (!v32)
    {
      goto LABEL_11;
    }

    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v159[0] = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_100141FE4(0xD000000000000049, 0x800000010070E420, v159);
    v29 = "MobileDocumentProviderDataSource %s not performing first party certificate auth filtering due to developer test mode being enabled.";
LABEL_10:
    _os_log_impl(&_mh_execute_header, v20, v21, v29, v27, 0xCu);
    sub_10000BB78(v28);

LABEL_11:

    v23(v24, v25);
    v34 = _swiftEmptyArrayStorage;
    if (!_swiftEmptyArrayStorage[2])
    {

LABEL_39:
      v94 = v0[57];
      v95 = v0[41];
      defaultLogger()();

      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.debug.getter();

      v98 = os_log_type_enabled(v96, v97);
      v99 = v0[57];
      v100 = v0[58];
      if (v98)
      {
        v101 = v0[56];
        v102 = v0[48];
        v151 = v0[47];
        v156 = v0[53];
        v103 = v0[34];
        v145 = v0[33];
        v148 = v0[41];
        v104 = swift_slowAlloc();
        v159[0] = swift_slowAlloc();
        *v104 = 136315394;
        *(v104 + 4) = sub_100141FE4(0xD000000000000049, 0x800000010070E420, v159);
        *(v104 + 12) = 2080;
        v105 = sub_100141FE4(v101, v99, v159);

        *(v104 + 14) = v105;
        _os_log_impl(&_mh_execute_header, v96, v97, "MobileDocumentProviderDataSource %s. %s does not have registered documents that can handle the request. Returning nil so that it will be skipped.", v104, 0x16u);
        swift_arrayDestroy();

        v100(v148, v145);
        (*(v102 + 8))(v156, v151);
      }

      else
      {
        v106 = v0[53];
        v107 = v0[47];
        v108 = v0[48];
        v109 = v0[41];
        v110 = v0[33];
        v111 = v0[34];

        v100(v109, v110);
        (*(v108 + 8))(v106, v107);
      }

      v93 = 1;
LABEL_43:
      v112 = type metadata accessor for MobileDocumentProviderRecord(0);
      v113 = v0[55];
      v115 = v0[52];
      v114 = v0[53];
      v116 = v0[50];
      v117 = v0[51];
      v118 = v0[49];
      v119 = v0[45];
      v120 = v0[46];
      v122 = v0[44];
      v123 = v0[43];
      v124 = v0[42];
      v125 = v0[41];
      v126 = v0[40];
      v127 = v0[39];
      v128 = v0[38];
      v129 = v0[37];
      v130 = v0[36];
      v131 = v0[35];
      v132 = v0[32];
      v133 = v0[31];
      v134 = v0[28];
      v135 = v0[27];
      v136 = v0[26];
      v137 = v0[24];
      v138 = v0[23];
      v139 = v0[20];
      v140 = v0[19];
      v141 = v0[18];
      v143 = v0[17];
      v146 = v0[14];
      v149 = v0[11];
      v152 = v0[10];
      v157 = v0[7];
      (*(*(v112 - 8) + 56))(v0[2], v93, 1, v112);

      v121 = v0[1];

      return v121();
    }

    goto LABEL_28;
  }

  v35 = v0[43];
  defaultLogger()();
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();
  v38 = os_log_type_enabled(v36, v37);
  v39 = v0[58];
  v40 = v0[43];
  v41 = v0[33];
  v42 = v0[34];
  if (v38)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v159[0] = v44;
    *v43 = 136315138;
    *(v43 + 4) = sub_100141FE4(0xD000000000000049, 0x800000010070E420, v159);
    _os_log_impl(&_mh_execute_header, v36, v37, "MobileDocumentProviderDataSource %s filtering eligible proposal data to only include proposals with trusted reader auth certificate data.", v43, 0xCu);
    sub_10000BB78(v44);
  }

  result = v39(v40, v41);
  v46 = _swiftEmptyArrayStorage[2];
  if (!v46)
  {
    v34 = _swiftEmptyArrayStorage;
LABEL_27:

    if (!v34[2])
    {

      goto LABEL_39;
    }

LABEL_28:
    v58 = v0[57];
    v59 = v0[42];

    defaultLogger()();

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();

    v155 = v34;
    if (os_log_type_enabled(v60, v61))
    {
      v147 = v61;
      v150 = v60;
      v62 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v158 = v142;
      v144 = v62;
      *v62 = 136315138;
      v63 = v34[2];
      if (v63)
      {
        v64 = v34;
        v65 = v0[25];
        v66 = v0[26];
        v159[0] = _swiftEmptyArrayStorage;
        sub_100172D4C(0, v63, 0);
        v67 = v159[0];
        v68 = v64 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
        v69 = *(v65 + 72);
        do
        {
          v70 = v0[26];
          sub_10032D0A0(v68, v70, type metadata accessor for DigitalPresentmentEligibleProposalData);
          v71 = *(v66 + 64);
          v72 = *(v66 + 72);

          sub_100177514(v70);
          v159[0] = v67;
          v74 = *(v67 + 16);
          v73 = *(v67 + 24);
          if (v74 >= v73 >> 1)
          {
            sub_100172D4C((v73 > 1), v74 + 1, 1);
            v67 = v159[0];
          }

          *(v67 + 16) = v74 + 1;
          v75 = v67 + 16 * v74;
          *(v75 + 32) = v71;
          *(v75 + 40) = v72;
          v68 += v69;
          --v63;
        }

        while (v63);
      }

      v80 = v0[58];
      v81 = v0[42];
      v83 = v0[33];
      v82 = v0[34];
      v84 = Array.description.getter();
      v86 = v85;

      v87 = sub_100141FE4(v84, v86, &v158);

      *(v144 + 1) = v87;
      _os_log_impl(&_mh_execute_header, v150, v147, "MobileDocumentProviderDataSource Apple Wallet can handle web presentment request with doc types %s", v144, 0xCu);
      sub_10000BB78(v142);

      v80(v81, v83);
    }

    else
    {
      v76 = v0[58];
      v77 = v0[42];
      v79 = v0[33];
      v78 = v0[34];

      v76(v77, v79);
    }

    v89 = v0[52];
    v88 = v0[53];
    v91 = v0[47];
    v90 = v0[48];
    v92 = v0[2];
    (*(v90 + 16))(v89, v88, v91);
    sub_1003300F8(v89, v155, v92);
    (*(v90 + 8))(v88, v91);
    v93 = 0;
    goto LABEL_43;
  }

  v47 = 0;
  v48 = v0[28] + 8;
  v49 = v0[25];
  v34 = _swiftEmptyArrayStorage;
  v154 = v48;
  while (v47 < _swiftEmptyArrayStorage[2])
  {
    v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v51 = *(v49 + 72);
    sub_10032D0A0(_swiftEmptyArrayStorage + v50 + v51 * v47, v0[28], type metadata accessor for DigitalPresentmentEligibleProposalData);
    v52 = *(v48 + *(type metadata accessor for DigitalPresentmentSessionManager.Proposal() + 52));
    v53 = v0[28];
    if (v52 >> 60 == 15)
    {
      result = sub_100177514(v53);
    }

    else
    {
      sub_10032D108(v53, v0[27]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v159[0] = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100172F18(0, v34[2] + 1, 1);
        v34 = v159[0];
      }

      v56 = v34[2];
      v55 = v34[3];
      if (v56 >= v55 >> 1)
      {
        sub_100172F18(v55 > 1, v56 + 1, 1);
        v34 = v159[0];
      }

      v57 = v0[27];
      v34[2] = v56 + 1;
      result = sub_10032D108(v57, v34 + v50 + v56 * v51);
      v48 = v154;
    }

    if (v46 == ++v47)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}