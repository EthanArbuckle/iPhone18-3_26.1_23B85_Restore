uint64_t sub_1001B2044()
{
  v1 = v0[12];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001B20D0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(sub_100007224(&qword_10083D4A8, &qword_1006DB1A8) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v7 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  v2[9] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1001B2204, 0, 0);
}

uint64_t sub_1001B2204()
{
  v1 = v0[2];
  v2 = IdentityProofingConfiguration.documentType.getter();
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1001B22AC;
  v4 = v0[10];
  v5 = v0[3];

  return sub_1001AA1E4(v4, v2);
}

uint64_t sub_1001B22AC()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1001B72D0;
  }

  else
  {
    v3 = sub_1001B23C0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001B23C0()
{
  v1 = *(v0[10] + *(v0[9] + 48));
  if (v1 && *(v1 + 16))
  {
    v2 = sub_10003ADCC(0xD000000000000016, 0x8000000100704B90);
    v3 = v0[8];
    if (v4)
    {
      v5 = v2;
      v6 = *(v1 + 56);
      v7 = type metadata accessor for IdentityProofingUnorderedUIElement();
      v8 = *(v7 - 8);
      (*(v8 + 16))(v3, v6 + *(v8 + 72) * v5, v7);
      (*(v8 + 56))(v3, 0, 1, v7);
    }

    else
    {
      v7 = type metadata accessor for IdentityProofingUnorderedUIElement();
      (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    }
  }

  else
  {
    v9 = v0[8];
    v7 = type metadata accessor for IdentityProofingUnorderedUIElement();
    (*(*(v7 - 8) + 56))(v9, 1, 1, v7);
  }

  v10 = v0[7];
  sub_10000BBC4(v0[8], v10, &qword_10083D4A8, &qword_1006DB1A8);
  type metadata accessor for IdentityProofingUnorderedUIElement();
  v11 = *(v7 - 8);
  v12 = (*(v11 + 48))(v10, 1, v7);
  v13 = v0[7];
  if (v12 == 1)
  {
    sub_10000BE18(v0[7], &qword_10083D4A8, &qword_1006DB1A8);
LABEL_15:
    v24 = v0[10];
    v25 = v0[8];
    (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.imageAssetsUnavailable(_:), v0[4]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BE18(v25, &qword_10083D4A8, &qword_1006DB1A8);
    sub_1001A1FAC(v24);
    v26 = v0[10];
    v27 = v0[7];
    v28 = v0[8];
    v29 = v0[6];

    v30 = v0[1];

    return v30();
  }

  v14 = v0[7];
  v15 = IdentityProofingUnorderedUIElement.imageAssets.getter();
  (*(v11 + 8))(v13, v7);
  if (!v15)
  {
    goto LABEL_15;
  }

  if (!v15[2])
  {

    goto LABEL_15;
  }

  v16 = v0[10];
  v18 = v0[7];
  v17 = v0[8];
  v19 = v0[6];
  v20 = v15[4];
  v21 = v15[5];

  sub_10000BE18(v17, &qword_10083D4A8, &qword_1006DB1A8);
  sub_1001A1FAC(v16);

  v22 = v0[1];

  return v22(v20, v21);
}

uint64_t sub_1001B286C(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v42 = a1;
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v44 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v40 - v16;
  defaultLogger()();

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  v20 = os_log_type_enabled(v18, v19);
  v43 = a2;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v41 = v11;
    v23 = v4;
    v24 = v10;
    v25 = v22;
    v45 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_100141FE4(a2, a3, &v45);
    _os_log_impl(&_mh_execute_header, v18, v19, "will attempt to download the terms and conditions for %s", v21, 0xCu);
    sub_10000BB78(v25);
    v10 = v24;
    v4 = v23;
    v11 = v41;
  }

  v26 = *(v12 + 8);
  v26(v17, v11);
  v27 = OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_fetchTermsAndConditionsTask;
  if (*(v4 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_fetchTermsAndConditionsTask))
  {
    v28 = v44;
    defaultLogger()();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Already downloading T&Cs", v31, 2u);
    }

    return (v26)(v28, v11);
  }

  else
  {
    v33 = type metadata accessor for TaskPriority();
    (*(*(v33 - 8) + 56))(v10, 1, 1, v33);
    v34 = swift_allocObject();
    v34[2] = 0;
    v34[3] = 0;
    v36 = v42;
    v35 = v43;
    v34[4] = v4;
    v34[5] = v36;
    v34[6] = v35;
    v34[7] = a3;

    v37 = v36;
    v38 = sub_1003E653C(0, 0, v10, &unk_1006DB1A0, v34);
    v39 = *(v4 + v27);
    *(v4 + v27) = v38;
  }
}

uint64_t sub_1001B2C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[70] = a7;
  v7[69] = a6;
  v7[68] = a5;
  v7[67] = a4;
  v8 = type metadata accessor for Logger();
  v7[71] = v8;
  v9 = *(v8 - 8);
  v7[72] = v9;
  v10 = *(v9 + 64) + 15;
  v7[73] = swift_task_alloc();
  v7[74] = swift_task_alloc();
  v11 = *(*(type metadata accessor for IdentityProofingStaticWorkflow(0) - 8) + 64) + 15;
  v7[75] = swift_task_alloc();

  return _swift_task_switch(sub_1001B2D0C, 0, 0);
}

uint64_t sub_1001B2D0C()
{
  v1 = v0[68];
  v2 = IdentityProofingConfiguration.documentType.getter();
  v3 = swift_task_alloc();
  v0[76] = v3;
  *v3 = v0;
  v3[1] = sub_1001B2DB4;
  v4 = v0[75];
  v5 = v0[67];

  return sub_1001AA1E4(v4, v2);
}

uint64_t sub_1001B2DB4()
{
  v2 = *(*v1 + 608);
  v5 = *v1;
  *(*v1 + 616) = v0;

  if (v0)
  {
    v3 = sub_1001B3970;
  }

  else
  {
    v3 = sub_1001B2EC8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001B2EC8()
{
  v1 = v0[75];
  v2 = v0[68];
  v0[78] = *(v0[67] + 56);
  v3 = *(v1 + 64);

  v4 = IdentityProofingConfiguration.documentType.getter();
  v5 = swift_task_alloc();
  v0[79] = v5;
  *v5 = v0;
  v5[1] = sub_1001B2FA0;

  return sub_1002A8D74((v0 + 2), v3, v4);
}

uint64_t sub_1001B2FA0()
{
  v2 = *(*v1 + 632);
  v3 = *(*v1 + 624);
  v6 = *v1;
  *(*v1 + 640) = v0;

  if (v0)
  {
    v4 = sub_1001B3248;
  }

  else
  {
    v4 = sub_1001B30D0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001B30D0()
{
  v1 = v0[60];
  if (v1 && *(v1 + 16) && (v2 = sub_10003ADCC(v0[69], v0[70]), (v3 & 1) != 0))
  {
    v4 = (*(v1 + 56) + 16 * v2);
    v6 = *v4;
    v5 = v4[1];
    v0[81] = v5;

    sub_1000F2758((v0 + 2));
    v0[82] = sub_10060C218();
    v7 = swift_task_alloc();
    v0[83] = v7;
    *v7 = v0;
    v7[1] = sub_1001B3460;

    return sub_10060C2EC(v6, v5);
  }

  else
  {
    sub_1000F2758((v0 + 2));
    sub_1001A1FAC(v0[75]);
    v9 = v0[75];
    v10 = v0[74];
    v11 = v0[73];
    v12 = v0[67];
    v13 = *(v12 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_fetchTermsAndConditionsTask);
    *(v12 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_fetchTermsAndConditionsTask) = 0;

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1001B3248()
{
  v27 = v0;
  sub_1001A1FAC(v0[75]);
  v1 = v0[80];
  v2 = v0[73];
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v25 = v0[73];
    v5 = v0[72];
    v6 = v0[71];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[63];
    v9 = v0[64];
    v11 = v0[65];
    v12 = Error.localizedDescription.getter();
    v14 = sub_100141FE4(v12, v13, &v26);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "unable to fetch identity proofing terms and conditions %s", v7, 0xCu);
    sub_10000BB78(v8);

    (*(v5 + 8))(v25, v6);
  }

  else
  {
    v15 = v0[73];
    v16 = v0[72];
    v17 = v0[71];

    (*(v16 + 8))(v15, v17);
  }

  v18 = v0[75];
  v19 = v0[74];
  v20 = v0[73];
  v21 = v0[67];
  v22 = *(v21 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_fetchTermsAndConditionsTask);
  *(v21 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_fetchTermsAndConditionsTask) = 0;

  v23 = v0[1];

  return v23();
}

uint64_t sub_1001B3460(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 664);
  v8 = *v3;
  *(*v3 + 672) = v2;

  if (v2)
  {
    v9 = sub_1001B3740;
  }

  else
  {
    v10 = v6[82];
    v11 = v6[81];

    v6[85] = a2;
    v6[86] = a1;
    v9 = sub_1001B35AC;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1001B35AC()
{
  v1 = v0[85];
  v2 = v0[74];
  v3 = (v0[67] + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_termsAndConditions);
  v4 = v3[1];
  *v3 = v0[86];
  v3[1] = v1;

  defaultLogger()();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "terms and conditions successfully downloaded.", v7, 2u);
  }

  v8 = v0[74];
  v9 = v0[72];
  v10 = v0[71];

  (*(v9 + 8))(v8, v10);
  v11._countAndFlagsBits = 0x3131613165643237;
  v12._object = 0x8000000100704AD0;
  v11._object = 0xE800000000000000;
  v12._countAndFlagsBits = 0xD000000000000022;
  logMilestone(tag:description:)(v11, v12);
  sub_1001A1FAC(v0[75]);
  v13 = v0[75];
  v14 = v0[74];
  v15 = v0[73];
  v16 = v0[67];
  v17 = *(v16 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_fetchTermsAndConditionsTask);
  *(v16 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_fetchTermsAndConditionsTask) = 0;

  v18 = v0[1];

  return v18();
}

uint64_t sub_1001B3740()
{
  v30 = v0;
  v1 = v0[82];
  v2 = v0[81];
  v3 = v0[75];

  sub_1001A1FAC(v3);
  v4 = v0[84];
  v5 = v0[73];
  defaultLogger()();
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v28 = v0[73];
    v8 = v0[72];
    v9 = v0[71];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v13 = v0[63];
    v12 = v0[64];
    v14 = v0[65];
    v15 = Error.localizedDescription.getter();
    v17 = sub_100141FE4(v15, v16, &v29);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "unable to fetch identity proofing terms and conditions %s", v10, 0xCu);
    sub_10000BB78(v11);

    (*(v8 + 8))(v28, v9);
  }

  else
  {
    v18 = v0[73];
    v19 = v0[72];
    v20 = v0[71];

    (*(v19 + 8))(v18, v20);
  }

  v21 = v0[75];
  v22 = v0[74];
  v23 = v0[73];
  v24 = v0[67];
  v25 = *(v24 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_fetchTermsAndConditionsTask);
  *(v24 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_fetchTermsAndConditionsTask) = 0;

  v26 = v0[1];

  return v26();
}

uint64_t sub_1001B3970()
{
  v27 = v0;
  v1 = v0[77];
  v2 = v0[73];
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v25 = v0[73];
    v5 = v0[72];
    v6 = v0[71];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[63];
    v9 = v0[64];
    v11 = v0[65];
    v12 = Error.localizedDescription.getter();
    v14 = sub_100141FE4(v12, v13, &v26);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "unable to fetch identity proofing terms and conditions %s", v7, 0xCu);
    sub_10000BB78(v8);

    (*(v5 + 8))(v25, v6);
  }

  else
  {
    v15 = v0[73];
    v16 = v0[72];
    v17 = v0[71];

    (*(v16 + 8))(v15, v17);
  }

  v18 = v0[75];
  v19 = v0[74];
  v20 = v0[73];
  v21 = v0[67];
  v22 = *(v21 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_fetchTermsAndConditionsTask);
  *(v21 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_fetchTermsAndConditionsTask) = 0;

  v23 = v0[1];

  return v23();
}

uint64_t sub_1001B3B80()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_1001B3CA8, 0, 0);
}

uint64_t sub_1001B3CA8()
{
  v1 = v0[9];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetching the terms and conditions", v4, 2u);
  }

  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[2];

  v9 = *(v7 + 8);
  v0[10] = v9;
  v9(v5, v6);
  v10 = *(v8 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_fetchTermsAndConditionsTask);
  v0[11] = v10;
  if (v10)
  {
    v11 = async function pointer to Task<>.value.getter[1];

    v12 = swift_task_alloc();
    v0[12] = v12;
    *v12 = v0;
    v12[1] = sub_1001B40A4;

    return Task<>.value.getter(v12, v10, &type metadata for () + 8);
  }

  else
  {
    v13 = (v0[2] + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_termsAndConditions);
    v14 = v13[1];
    if (v14)
    {
      v15 = *v13;
      v16 = v0[8];
      *v13 = 0;
      v13[1] = 0;
      defaultLogger()();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "terms and conditions available to be shown to the user", v19, 2u);
      }

      v20 = v0[9];
      v21 = v0[10];
      v23 = v0[7];
      v22 = v0[8];
      v25 = v0[5];
      v24 = v0[6];

      v21(v22, v24);

      v26 = v0[1];

      return v26(v15, v14);
    }

    else
    {
      v27 = v0[8];
      v28 = v0[9];
      (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.termsAndConditionsUnavailable(_:), v0[3]);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      v29 = v0[1];

      return v29();
    }
  }
}

uint64_t sub_1001B40A4()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return _swift_task_switch(sub_1001B41BC, 0, 0);
}

uint64_t sub_1001B41BC()
{
  v1 = (v0[2] + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_termsAndConditions);
  v2 = v1[1];
  if (v2)
  {
    v3 = *v1;
    v4 = v0[8];
    *v1 = 0;
    v1[1] = 0;
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "terms and conditions available to be shown to the user", v7, 2u);
    }

    v8 = v0[9];
    v9 = v0[10];
    v11 = v0[7];
    v10 = v0[8];
    v13 = v0[5];
    v12 = v0[6];

    v9(v10, v12);

    v14 = v0[1];

    return v14(v3, v2);
  }

  else
  {
    v16 = v0[8];
    v17 = v0[9];
    (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.termsAndConditionsUnavailable(_:), v0[3]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v18 = v0[1];

    return v18();
  }
}

unint64_t sub_1001B4470()
{
  v1 = type metadata accessor for DIPError.PropertyKey();
  v2 = *(v1 - 8);
  v3 = v2[8];
  __chkstk_darwin(v1);
  v5 = &v30[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10003C9C0(_swiftEmptyArrayStorage);
  swift_beginAccess();
  sub_10000BBC4(v0 + 144, &v32, &qword_10083D0A0, &qword_1006DAFC0);
  if (v33)
  {
    sub_10001F358(&v32, v35);
    v7 = v2[13];
    v7(v5, enum case for DIPError.PropertyKey.inoWorkflowID(_:), v1);
    v8 = sub_10000BA08(v35, v36);
    v9 = *v8;
    v10 = v8[1];
    v33 = &type metadata for String;
    v34 = &protocol witness table for String;
    *&v32 = v9;
    *(&v32 + 1) = v10;
    sub_10001F358(&v32, v30);

    LOBYTE(v10) = swift_isUniquelyReferenced_nonNull_native();
    v29 = v6;
    v11 = v31;
    v12 = sub_10001F370(v30, v31);
    v13 = *(*(v11 - 8) + 64);
    __chkstk_darwin(v12);
    v15 = (&v30[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    sub_100658FF4(*v15, v15[1], v5, v10, &v29);
    v17 = v2[1];
    v17(v5, v1);
    sub_10000BB78(v30);
    v18 = v29;
    v7(v5, enum case for DIPError.PropertyKey.inoProviderID(_:), v1);
    v19 = sub_10000BA08(v35, v36);
    v20 = v19[6];
    v21 = v19[7];
    v33 = &type metadata for String;
    v34 = &protocol witness table for String;
    *&v32 = v20;
    *(&v32 + 1) = v21;
    sub_10001F358(&v32, v30);

    LOBYTE(v21) = swift_isUniquelyReferenced_nonNull_native();
    v29 = v18;
    v22 = v31;
    v23 = sub_10001F370(v30, v31);
    v24 = *(*(v22 - 8) + 64);
    __chkstk_darwin(v23);
    v26 = (&v30[-1] - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v27 + 16))(v26);
    sub_100658FF4(*v26, v26[1], v5, v21, &v29);
    v17(v5, v1);
    sub_10000BB78(v30);
    v6 = v29;
    sub_10000BB78(v35);
  }

  else
  {
    sub_10000BE18(&v32, &qword_10083D0A0, &qword_1006DAFC0);
  }

  return v6;
}

uint64_t sub_1001B4838()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  v7 = *(v0 + 80);

  v8 = *(v0 + 88);

  v9 = *(v0 + 112);

  v10 = *(v0 + 128);

  sub_10000BE18(v0 + 144, &qword_10083D0A0, &qword_1006DAFC0);
  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_staticWorkflow, &qword_10083D4B0, &qword_1006DC940);
  v11 = *(v0 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_supplementalDataFetcher);

  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_identityKeyPair, &qword_10083D4B8, &qword_1006DB470);
  v12 = *(v0 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_termsAndConditions + 8);

  v13 = *(v0 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_fetchTermsAndConditionsTask);

  v14 = *(v0 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_biomeFedStatsFieldsToCollect);

  return v0;
}

uint64_t sub_1001B4954()
{
  sub_1001B4838();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IdentityProofingFetchedAssetManager()
{
  result = qword_10083D0F0;
  if (!qword_10083D0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001B4A00()
{
  sub_1001B4B18();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1001B4B18()
{
  if (!qword_10083D100)
  {
    type metadata accessor for IdentityProofingStaticWorkflow(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10083D100);
    }
  }
}

uint64_t sub_1001B4B70(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  v4 = type metadata accessor for Logger();
  v3[33] = v4;
  v5 = *(v4 - 8);
  v3[34] = v5;
  v6 = *(v5 + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();

  return _swift_task_switch(sub_1001B4C70, 0, 0);
}

uint64_t sub_1001B4C70()
{
  v104 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 248);
  defaultLogger()();
  sub_10000BBC4(v2, v0 + 16, &qword_10083D0A0, &qword_1006DAFC0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 320);
  v7 = *(v0 + 264);
  v8 = *(v0 + 272);
  if (v5)
  {
    v9 = *(v0 + 240);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v103 = v11;
    *v10 = 136315394;
    v12 = IdentityProofingConsentType.debugDescription.getter();
    v14 = sub_100141FE4(v12, v13, &v103);

    *(v10 + 4) = v14;
    *(v10 + 12) = 1024;
    LODWORD(v9) = *(v0 + 40) == 0;
    sub_10000BE18(v0 + 16, &qword_10083D0A0, &qword_1006DAFC0);
    *(v10 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Checking if %s is enabled from dynamicWorkflow. Is dynamic workflow nil: %{BOOL}d", v10, 0x12u);
    sub_10000BB78(v11);
  }

  else
  {
    sub_10000BE18(v0 + 16, &qword_10083D0A0, &qword_1006DAFC0);
  }

  v15 = *(v8 + 8);
  v15(v6, v7);
  v16 = [objc_opt_self() standardUserDefaults];
  v17._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableFedStatsFromDynamicWorkflow.getter();
  v18 = NSUserDefaults.internalBool(forKey:)(v17);

  if (v18)
  {
    v19 = *(v0 + 240);
    v20 = IdentityProofingConsentType.rawValue.getter();
    if (v20 == IdentityProofingConsentType.rawValue.getter())
    {
      v21 = *(v0 + 312);
      defaultLogger()();
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();
      v24 = os_log_type_enabled(v22, v23);
      v25 = *(v0 + 312);
      v26 = *(v0 + 264);
      v27 = *(v0 + 272);
      if (v24)
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "disableFedStatsFromDynamicWorkflow is enabled in the internal settings. Disabling fedstats UI", v28, 2u);
      }

      goto LABEL_25;
    }
  }

  v29 = *(v0 + 256);
  swift_beginAccess();
  sub_10000BBC4(v29 + 144, v0 + 96, &qword_10083D0A0, &qword_1006DAFC0);
  if (!*(v0 + 120))
  {
    v56 = *(v0 + 280);
    sub_10000BE18(v0 + 96, &qword_10083D0A0, &qword_1006DAFC0);
    defaultLogger()();
    v22 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();
    v58 = os_log_type_enabled(v22, v57);
    v59 = *(v0 + 272);
    v25 = *(v0 + 280);
    v26 = *(v0 + 264);
    if (!v58)
    {
LABEL_25:

      v15(v25, v26);
      goto LABEL_26;
    }

    v60 = *(v0 + 240);
    v61 = swift_slowAlloc();
    v102 = v15;
    v103 = swift_slowAlloc();
    v62 = v103;
    *v61 = 136315138;
    v63 = IdentityProofingConsentType.debugDescription.getter();
    v65 = sub_100141FE4(v63, v64, &v103);

    *(v61 + 4) = v65;
    _os_log_impl(&_mh_execute_header, v22, v57, "The dynamic workflow does not exist. Cannot check if the consentType: %s is enabled or not.", v61, 0xCu);
    sub_10000BB78(v62);

    v102(v25, v26);
LABEL_26:
    v78 = 0;
    goto LABEL_36;
  }

  v30 = *(v0 + 304);
  sub_10001F358((v0 + 96), v0 + 56);
  defaultLogger()();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  v33 = os_log_type_enabled(v31, v32);
  v34 = *(v0 + 304);
  v35 = *(v0 + 264);
  v36 = *(v0 + 272);
  if (v33)
  {
    v37 = *(v0 + 240);
    v38 = swift_slowAlloc();
    v101 = v15;
    v103 = swift_slowAlloc();
    v39 = v103;
    *v38 = 136315138;
    v40 = IdentityProofingConsentType.debugDescription.getter();
    v42 = sub_100141FE4(v40, v41, &v103);

    *(v38 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v31, v32, "The dynamic workflow exists, will check if the consentType: %s exists", v38, 0xCu);
    sub_10000BB78(v39);
    v15 = v101;
  }

  v15(v34, v35);
  v43 = *(v0 + 240);
  if (v43 == 1)
  {
    v66 = *(v0 + 288);
    defaultLogger()();
    sub_100020260(v0 + 56, v0 + 136);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = v15;
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v103 = v71;
      *v70 = 136315394;
      v72 = IdentityProofingConsentType.debugDescription.getter();
      v74 = sub_100141FE4(v72, v73, &v103);

      *(v70 + 4) = v74;
      *(v70 + 12) = 1024;
      v75 = sub_10000BA08((v0 + 136), *(v0 + 160));
      v76 = *(v75 + *(type metadata accessor for Workflow() + 152));
      v77 = v76 != 2 && (v76 & 1) != 0;
      v90 = *(v0 + 288);
      v91 = *(v0 + 264);
      v92 = *(v0 + 272);
      sub_10000BB78((v0 + 136));
      *(v70 + 14) = v77;
      _os_log_impl(&_mh_execute_header, v67, v68, "The consentType is %s, and the value is %{BOOL}d", v70, 0x12u);
      sub_10000BB78(v71);

      v69(v90, v91);
    }

    else
    {
      v82 = *(v0 + 288);
      v83 = *(v0 + 264);
      v84 = *(v0 + 272);
      sub_10000BB78((v0 + 136));

      v15(v82, v83);
    }

    v88 = sub_10000BA08((v0 + 56), *(v0 + 80));
    v89 = *(type metadata accessor for Workflow() + 152);
    goto LABEL_35;
  }

  if (v43)
  {
    sub_10000BB78((v0 + 56));
    goto LABEL_26;
  }

  v44 = *(v0 + 296);
  defaultLogger()();
  sub_100020260(v0 + 56, v0 + 176);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = v15;
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v103 = v49;
    *v48 = 136315394;
    v50 = IdentityProofingConsentType.debugDescription.getter();
    v52 = sub_100141FE4(v50, v51, &v103);

    *(v48 + 4) = v52;
    *(v48 + 12) = 1024;
    v53 = sub_10000BA08((v0 + 176), *(v0 + 200));
    v54 = *(v53 + *(type metadata accessor for Workflow() + 148));
    v55 = v54 != 2 && (v54 & 1) != 0;
    v85 = *(v0 + 296);
    v86 = *(v0 + 264);
    v87 = *(v0 + 272);
    sub_10000BB78((v0 + 176));
    *(v48 + 14) = v55;
    _os_log_impl(&_mh_execute_header, v45, v46, "The consentType is %s, and the value is %{BOOL}d", v48, 0x12u);
    sub_10000BB78(v49);

    v47(v85, v86);
  }

  else
  {
    v79 = *(v0 + 296);
    v80 = *(v0 + 264);
    v81 = *(v0 + 272);
    sub_10000BB78((v0 + 176));

    v15(v79, v80);
  }

  v88 = sub_10000BA08((v0 + 56), *(v0 + 80));
  v89 = *(type metadata accessor for Workflow() + 148);
LABEL_35:
  v78 = *(v88 + v89);
  sub_10000BB78((v0 + 56));
LABEL_36:
  v94 = *(v0 + 312);
  v93 = *(v0 + 320);
  v96 = *(v0 + 296);
  v95 = *(v0 + 304);
  v98 = *(v0 + 280);
  v97 = *(v0 + 288);

  v99 = *(v0 + 8);

  return v99(v78 & 1);
}

uint64_t sub_1001B5540(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = type metadata accessor for Logger();
  v2[19] = v3;
  v4 = *(v3 - 8);
  v2[20] = v4;
  v5 = *(v4 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v6 = type metadata accessor for IdentityProofingUnorderedUIElement();
  v2[26] = v6;
  v7 = *(v6 - 8);
  v2[27] = v7;
  v8 = *(v7 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_1001B56A4, 0, 0);
}

uint64_t sub_1001B56A4()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2._countAndFlagsBits = static DaemonInternalDefaultsKeys.injectLivenessOptinConsentSheetContent.getter();
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    v4 = *(v0 + 240);
    v5 = *(v0 + 216);
    v82 = *(v0 + 208);
    sub_10003D21C(&off_1007FB2F0);
    sub_100007224(&qword_100838820, &unk_1006DB6B0);
    swift_arrayDestroy();
    v6 = type metadata accessor for IdentityProofingUnorderedUIElementOption();
    v7 = objc_allocWithZone(v6);

    v8 = IdentityProofingUnorderedUIElementOption.init(title:subtitle:bullets:assessments:accessibility:caption:)();
    v9 = objc_allocWithZone(v6);
    v10 = IdentityProofingUnorderedUIElementOption.init(title:subtitle:bullets:assessments:accessibility:caption:)();
    sub_100007224(&unk_100845FD0, &qword_1006DB190);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1006DAEA0;
    *(v11 + 32) = v8;
    *(v11 + 40) = v10;
    v12 = v8;
    v13 = v10;
    IdentityProofingUnorderedUIElement.init(title:messages:actions:imageAssets:options:learnMoreURL:privacyLinkIdentifier:privacyLinkTitle:)();
    v14 = sub_1002BF01C(v4);

    (*(v5 + 8))(v4, v82);
    goto LABEL_20;
  }

  sub_10000BBC4(*(v0 + 136), v0 + 16, &qword_10083D0A0, &qword_1006DAFC0);
  v15 = *(v0 + 40);
  if (!v15)
  {
    sub_10000BE18(v0 + 16, &qword_10083D0A0, &qword_1006DAFC0);
LABEL_16:
    v49 = *(v0 + 200);
    defaultLogger()();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();
    v52 = os_log_type_enabled(v50, v51);
    v53 = *(v0 + 200);
    v54 = *(v0 + 152);
    v55 = *(v0 + 160);
    if (v52)
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "isLivenessConsentOptinEnabled is not enabled from the dynamic workflow. Will not build the consent UI config", v56, 2u);
    }

    (*(v55 + 8))(v53, v54);
    goto LABEL_19;
  }

  v16 = sub_10000BA08((v0 + 16), v15);
  v17 = type metadata accessor for Workflow();
  v18 = *(v16 + *(v17 + 152));
  sub_10000BB78((v0 + 16));
  if (v18 == 2 || (v18 & 1) == 0)
  {
    goto LABEL_16;
  }

  v19 = *(v0 + 192);
  defaultLogger()();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "prepareLivenessConsentOptinUIConfig: setting up the ui config for liveness consent screen", v22, 2u);
  }

  v23 = *(v0 + 192);
  v24 = *(v0 + 152);
  v25 = *(v0 + 160);
  v26 = *(v0 + 136);

  v27 = *(v25 + 8);
  v27(v23, v24);
  sub_10000BBC4(v26, v0 + 96, &qword_10083D0A0, &qword_1006DAFC0);
  if (!*(v0 + 120))
  {
    v67 = *(v0 + 168);
    sub_10000BE18(v0 + 96, &qword_10083D0A0, &qword_1006DAFC0);
    defaultLogger()();
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.debug.getter();
    v70 = os_log_type_enabled(v68, v69);
    v72 = *(v0 + 160);
    v71 = *(v0 + 168);
    v73 = *(v0 + 152);
    if (v70)
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&_mh_execute_header, v68, v69, "The dynamic workflow is not available. Cannot build liveness consent UI", v74, 2u);
    }

    v27(v71, v73);
    goto LABEL_19;
  }

  sub_10001F358((v0 + 96), v0 + 56);
  v28 = *(sub_10000BA08((v0 + 56), *(v0 + 80)) + *(v17 + 120));
  if (!v28 || !*(v28 + 16))
  {
LABEL_27:
    v75 = *(v0 + 176);
    defaultLogger()();
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&_mh_execute_header, v76, v77, "livenessConsentOptinUnorderedUIElement doesn't exist in livenessConsentOptinUI. Cannot build the consent UI config", v78, 2u);
    }

    v79 = *(v0 + 176);
    v80 = *(v0 + 152);
    v81 = *(v0 + 160);

    v27(v79, v80);
    sub_10000BB78((v0 + 56));
LABEL_19:
    v14 = 0;
    goto LABEL_20;
  }

  v29 = *(v0 + 144);
  v30 = *(v29 + 72);
  v31 = *(v29 + 80);

  v32 = sub_10003ADCC(v30, v31);
  v34 = v33;

  if ((v34 & 1) == 0)
  {

    goto LABEL_27;
  }

  v36 = *(v0 + 224);
  v35 = *(v0 + 232);
  v37 = *(v0 + 208);
  v38 = *(v0 + 216);
  v39 = *(v0 + 184);
  (*(v38 + 16))(v36, *(v28 + 56) + *(v38 + 72) * v32, v37);

  (*(v38 + 32))(v35, v36, v37);
  defaultLogger()();
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "The unorderedUI in the dynamic workflow has livenessConsentOptin. Will prepare the config using dynamic workflow.", v42, 2u);
  }

  v43 = *(v0 + 232);
  v44 = *(v0 + 208);
  v45 = *(v0 + 216);
  v46 = *(v0 + 184);
  v47 = *(v0 + 152);
  v48 = *(v0 + 160);

  v27(v46, v47);
  v14 = sub_1002BF01C(v43);
  (*(v45 + 8))(v43, v44);
  sub_10000BB78((v0 + 56));
LABEL_20:
  v58 = *(v0 + 232);
  v57 = *(v0 + 240);
  v59 = *(v0 + 224);
  v61 = *(v0 + 192);
  v60 = *(v0 + 200);
  v63 = *(v0 + 176);
  v62 = *(v0 + 184);
  v64 = *(v0 + 168);

  v65 = *(v0 + 8);

  return v65(v14);
}

uint64_t sub_1001B5E10()
{
  v1[20] = v0;
  v2 = type metadata accessor for Logger();
  v1[21] = v2;
  v3 = *(v2 - 8);
  v1[22] = v3;
  v4 = *(v3 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();

  return _swift_task_switch(sub_1001B5EE8, 0, 0);
}

uint64_t sub_1001B5EE8()
{
  v1 = *(v0 + 160);
  v2 = *(v1 + 128);
  *(v0 + 208) = v2;
  if (v2)
  {
    v3 = async function pointer to withTaskTimeoutHandler<A>(timeout:operation:)[1];
    swift_retain_n();
    v4 = swift_task_alloc();
    *(v0 + 216) = v4;
    *v4 = v0;
    v4[1] = sub_1001B6238;
    v5.n128_u64[0] = 10.0;

    return withTaskTimeoutHandler<A>(timeout:operation:)(v4, &unk_1006DB180, v2, &type metadata for () + 8, v5);
  }

  else
  {
    swift_beginAccess();
    sub_10000BBC4(v1 + 144, v0 + 56, &qword_10083D0A0, &qword_1006DAFC0);
    if (*(v0 + 80))
    {
      v6 = *(v0 + 200);
      sub_10001F358((v0 + 56), v0 + 16);
      defaultLogger()();
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "Fetch the unorderedUI for liveness consent from the dynamic workflow", v9, 2u);
      }

      v10 = *(v0 + 200);
      v11 = *(v0 + 168);
      v12 = *(v0 + 176);

      (*(v12 + 8))(v10, v11);
      sub_100020260(v0 + 16, v0 + 96);
      v13 = swift_task_alloc();
      *(v0 + 232) = v13;
      *v13 = v0;
      v13[1] = sub_1001B65F8;
      v14 = *(v0 + 160);

      return sub_1001B5540(v0 + 96);
    }

    else
    {
      v15 = *(v0 + 192);
      sub_10000BE18(v0 + 56, &qword_10083D0A0, &qword_1006DAFC0);
      defaultLogger()();
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      v18 = os_log_type_enabled(v16, v17);
      v19 = *(v0 + 192);
      v20 = *(v0 + 168);
      v21 = *(v0 + 176);
      if (v18)
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "Dynamic workflow is nil. Cannot build the consent UI", v22, 2u);
      }

      (*(v21 + 8))(v19, v20);
      v24 = *(v0 + 192);
      v23 = *(v0 + 200);
      v25 = *(v0 + 184);

      v26 = *(v0 + 8);

      return v26(0);
    }
  }
}

uint64_t sub_1001B6238()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v7 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = sub_1001B679C;
  }

  else
  {
    v5 = *(v2 + 208);

    v4 = sub_1001B6354;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001B6354()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 160);
  swift_beginAccess();
  sub_10000BBC4(v2 + 144, v0 + 56, &qword_10083D0A0, &qword_1006DAFC0);
  if (*(v0 + 80))
  {
    v3 = *(v0 + 200);
    sub_10001F358((v0 + 56), v0 + 16);
    defaultLogger()();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Fetch the unorderedUI for liveness consent from the dynamic workflow", v6, 2u);
    }

    v7 = *(v0 + 200);
    v8 = *(v0 + 168);
    v9 = *(v0 + 176);

    (*(v9 + 8))(v7, v8);
    sub_100020260(v0 + 16, v0 + 96);
    v10 = swift_task_alloc();
    *(v0 + 232) = v10;
    *v10 = v0;
    v10[1] = sub_1001B65F8;
    v11 = *(v0 + 160);

    return sub_1001B5540(v0 + 96);
  }

  else
  {
    v13 = *(v0 + 192);
    sub_10000BE18(v0 + 56, &qword_10083D0A0, &qword_1006DAFC0);
    defaultLogger()();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 192);
    v18 = *(v0 + 168);
    v19 = *(v0 + 176);
    if (v16)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Dynamic workflow is nil. Cannot build the consent UI", v20, 2u);
    }

    (*(v19 + 8))(v17, v18);
    v22 = *(v0 + 192);
    v21 = *(v0 + 200);
    v23 = *(v0 + 184);

    v24 = *(v0 + 8);

    return v24(0);
  }
}

uint64_t sub_1001B65F8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v5 = *v1;
  *(v2 + 240) = a1;

  sub_10000BE18(v2 + 96, &qword_10083D0A0, &qword_1006DAFC0);

  return _swift_task_switch(sub_1001B6710, 0, 0);
}

uint64_t sub_1001B6710()
{
  sub_10000BB78(v0 + 2);
  v1 = v0[30];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];

  v5 = v0[1];

  return v5(v1);
}

uint64_t sub_1001B679C()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);

  defaultLogger()();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 224);
  v8 = *(v0 + 176);
  v7 = *(v0 + 184);
  v9 = *(v0 + 168);
  if (v5)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "The dynamic workflow timed out", v10, 2u);
  }

  (*(v8 + 8))(v7, v9);
  v11 = *(v0 + 160);
  swift_beginAccess();
  sub_10000BBC4(v11 + 144, v0 + 56, &qword_10083D0A0, &qword_1006DAFC0);
  if (*(v0 + 80))
  {
    v12 = *(v0 + 200);
    sub_10001F358((v0 + 56), v0 + 16);
    defaultLogger()();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Fetch the unorderedUI for liveness consent from the dynamic workflow", v15, 2u);
    }

    v16 = *(v0 + 200);
    v17 = *(v0 + 168);
    v18 = *(v0 + 176);

    (*(v18 + 8))(v16, v17);
    sub_100020260(v0 + 16, v0 + 96);
    v19 = swift_task_alloc();
    *(v0 + 232) = v19;
    *v19 = v0;
    v19[1] = sub_1001B65F8;
    v20 = *(v0 + 160);

    return sub_1001B5540(v0 + 96);
  }

  else
  {
    v22 = *(v0 + 192);
    sub_10000BE18(v0 + 56, &qword_10083D0A0, &qword_1006DAFC0);
    defaultLogger()();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 192);
    v27 = *(v0 + 168);
    v28 = *(v0 + 176);
    if (v25)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Dynamic workflow is nil. Cannot build the consent UI", v29, 2u);
    }

    (*(v28 + 8))(v26, v27);
    v31 = *(v0 + 192);
    v30 = *(v0 + 200);
    v32 = *(v0 + 184);

    v33 = *(v0 + 8);

    return v33(0);
  }
}

uint64_t sub_1001B6AF4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100041F04;

  return sub_1001AE8D0(a1, v1);
}

uint64_t sub_1001B6B90()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1001B6BE0(uint64_t a1)
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
  v10[1] = sub_100027B9C;

  return sub_1001B2C08(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001B6CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083D4A8, &qword_1006DB1A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B6D24(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100027B9C;

  return sub_1001AFDA4(a1, v1);
}

uint64_t sub_1001B6DC0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001B6DE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B6E48(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1001B6E58(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100041F04;

  return sub_1001AE8D0(a1, v1);
}

uint64_t sub_1001B6F50()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001B6F98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100041F04;

  return sub_1001A70B4(a1, v4, v5, v6, v7);
}

uint64_t sub_1001B7060()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001B70A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_1001A9C18(a1, v4, v5, v6);
}

uint64_t sub_1001B71A8()
{
  v1 = v0[2];

  if (v0[6])
  {
    sub_10000BB78(v0 + 3);
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1001B71FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001B7214(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001B725C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083D0A0, &qword_1006DAFC0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_1001B72D4()
{
  sub_1001C5950(v1);
  xmmword_1008822A8 = v3;
  unk_1008822B8 = v4;
  qword_1008822C8 = v5;
  xmmword_100882268 = v1[0];
  unk_100882278 = v1[1];
  result = *&v2;
  xmmword_100882288 = v1[2];
  unk_100882298 = v2;
  return result;
}

uint64_t sub_1001B732C(uint64_t a1)
{
  v2 = type metadata accessor for ImageQualitySettings();
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  __chkstk_darwin(v2);
  v55 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for MetricsFlags();
  v63 = *(v65 - 8);
  v5 = *(v63 + 64);
  v6 = __chkstk_darwin(v65);
  v7 = __chkstk_darwin(v6);
  __chkstk_darwin(v7);
  v66 = v41 - v8;
  v9 = sub_100007224(&qword_10083D4F8, &qword_1006DC0A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v45 = v41 - v11;
  v52 = type metadata accessor for IQACode();
  v43 = *(v52 - 8);
  v12 = *(v43 + 64);
  __chkstk_darwin(v52);
  v44 = type metadata accessor for IQCType();
  v42 = *(v44 - 8);
  v13 = *(v42 + 64);
  __chkstk_darwin(v44);
  v61 = type metadata accessor for IQComplexSignal();
  v14 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v60 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for Logger();
  v50 = *(v51 - 8);
  v16 = *(v50 + 64);
  __chkstk_darwin(v51);
  v49 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DIPError.Code();
  v46 = *(v47 - 8);
  v18 = *(v46 + 64);
  __chkstk_darwin(v47);
  v48 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for IQImageType();
  v21 = *(v20 - 8);
  v22 = v21[8];
  v23 = __chkstk_darwin(v20);
  v41[1] = v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v59 = v41 - v26;
  __chkstk_darwin(v25);
  v28 = v41 - v27;
  v58 = type metadata accessor for ImageQualityCriteria();
  v54 = *(v58 - 8);
  v29 = *(v54 + 64);
  v30 = __chkstk_darwin(v58);
  v53 = v41 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = v41 - v32;
  v34 = v21[2];
  v64 = a1;
  v34(v28, a1, v20);
  v62 = v21;
  v35 = v21[11];
  v67 = v20;
  v36 = v35(v28, v20);
  if (v36 == enum case for IQImageType.frontScan(_:))
  {
    sub_1001B96D0(v33);
  }

  if (v36 == enum case for IQImageType.backScan(_:))
  {
    sub_1001BA1A8(v33);
  }

  if (v36 == enum case for IQImageType.idFront(_:))
  {
    sub_1001BAB34(v33);
  }

  if (v36 == enum case for IQImageType.idBack(_:))
  {
    sub_1001BC998(v33);
  }

  if (v36 == enum case for IQImageType.selfie(_:))
  {
    sub_1001BE910(v33);
  }

  if (v36 == enum case for IQImageType.liveness(_:))
  {
    sub_1001C09D0(v33);
  }

  if (v36 == enum case for IQImageType.passive(_:))
  {
    sub_1001C2390(v33);
  }

  if (v36 == enum case for IQImageType.passport(_:))
  {
    sub_1001C3D50();
  }

  v68 = 0;
  v69 = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  v38._countAndFlagsBits = 0xD000000000000033;
  v38._object = 0x8000000100704EB0;
  String.append(_:)(v38);
  v39 = v67;
  _print_unlocked<A, B>(_:_:)();
  (*(v46 + 104))(v48, enum case for DIPError.Code.unexpectedDaemonState(_:), v47);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1001C5908(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  v40 = v49;
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  (*(v50 + 8))(v40, v51);

  (v62[1])(v28, v39);
  return 0;
}

void sub_1001B96D0(uint64_t a1@<X8>)
{
  v8[20] = a1;
  v9 = type metadata accessor for MetricsFlags();
  v1 = *(*(v9 - 8) + 64);
  v2 = __chkstk_darwin(v9);
  v8[17] = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v8[16] = v8 - v5;
  v6 = __chkstk_darwin(v4);
  v8[15] = v8 - v7;
  __chkstk_darwin(v6);
  v8[18] = 0x100000000;
  v8[19] = 0x100000000;
  v8[13] = 0x100000000;
  v8[14] = 0x100000000;
  v8[11] = 0x100000000;
  v8[12] = 0x100000000;
  v8[9] = 0x100000000;
  v8[10] = 0x100000000;
  v8[7] = 0x100000000;
  v8[8] = 0x100000000;
  v8[5] = 0x100000000;
  v8[6] = 0x100000000;
  v8[4] = 0x100000000;
  v8[3] = 0x100000000;
  v8[2] = 0x100000000;
  v8[1] = 0x100000000;
  v8[0] = 0x100000000;
  v10 = 1;
  ImageQualityCriteria.init(minBlurriness:maxBlurriness:minLaplaceBlur:maxLaplaceBlur:minExposure:maxExposure:minCardDistortion:maxCardDistortion:minFaceToImageRatio:maxFaceToImageRatio:minHeadPitch:maxHeadPitch:minHeadRoll:maxHeadRoll:minHeadYaw:maxHeadYaw:minBlinkingConfidence:maxBlinkingConfidence:minGlassesConfidence:maxGlassesConfidence:minSunglassesConfidence:maxSunglassesConfidence:minFacemaskConfidence:maxFacemaskConfidence:minHeadgearConfidence:maxHeadgearConfidence:minLensSmudgeConfidence:maxLensSmudgeConfidence:minFaceConfidence:maxFaceConfidence:minFaceCaptureQuality:maxFaceCaptureQuality:minDocumentSize:maxDocumentSize:minDocumentRotation:maxDocumentRotation:minDocumentSkew:maxDocumentSkew:maxLeftDrift:maxRightDrift:maxUpDrift:maxDownDrift:minNumFaces:maxNumFaces:minLuxLevel:maxLuxLevel:pdf417Detected:isAAMVACompliant:disableStableRect:issuerNumber:glareEpsilon:glareMinPoints:glareMinIntensity:glareClusterSize:glareDownscaleFactor:ocrKeywords:ocrMatch:complexSignals:dobRepeatCount:doeRepeatCount:d();
}

void sub_1001BA1A8(uint64_t a1@<X8>)
{
  v7[20] = a1;
  v1 = type metadata accessor for MetricsFlags();
  v8 = *(v1 - 8);
  v2 = *(v8 + 64);
  v3 = __chkstk_darwin(v1);
  v7[18] = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7[17] = v7 - v6;
  __chkstk_darwin(v5);
  v7[19] = 0x100000000;
  v7[15] = 0x100000000;
  v7[16] = 0x100000000;
  v7[13] = 0x100000000;
  v7[14] = 0x100000000;
  v7[11] = 0x100000000;
  v7[12] = 0x100000000;
  v7[9] = 0x100000000;
  v7[10] = 0x100000000;
  v7[7] = 0x100000000;
  v7[8] = 0x100000000;
  v7[5] = 0x100000000;
  v7[6] = 0x100000000;
  v7[4] = 0x100000000;
  v7[3] = 0x100000000;
  v7[2] = 0x100000000;
  v7[1] = 0x100000000;
  v7[0] = 0x100000000;
  v9 = 1;
  ImageQualityCriteria.init(minBlurriness:maxBlurriness:minLaplaceBlur:maxLaplaceBlur:minExposure:maxExposure:minCardDistortion:maxCardDistortion:minFaceToImageRatio:maxFaceToImageRatio:minHeadPitch:maxHeadPitch:minHeadRoll:maxHeadRoll:minHeadYaw:maxHeadYaw:minBlinkingConfidence:maxBlinkingConfidence:minGlassesConfidence:maxGlassesConfidence:minSunglassesConfidence:maxSunglassesConfidence:minFacemaskConfidence:maxFacemaskConfidence:minHeadgearConfidence:maxHeadgearConfidence:minLensSmudgeConfidence:maxLensSmudgeConfidence:minFaceConfidence:maxFaceConfidence:minFaceCaptureQuality:maxFaceCaptureQuality:minDocumentSize:maxDocumentSize:minDocumentRotation:maxDocumentRotation:minDocumentSkew:maxDocumentSkew:maxLeftDrift:maxRightDrift:maxUpDrift:maxDownDrift:minNumFaces:maxNumFaces:minLuxLevel:maxLuxLevel:pdf417Detected:isAAMVACompliant:disableStableRect:issuerNumber:glareEpsilon:glareMinPoints:glareMinIntensity:glareClusterSize:glareDownscaleFactor:ocrKeywords:ocrMatch:complexSignals:dobRepeatCount:doeRepeatCount:d();
}

void sub_1001BAB34(uint64_t a1@<X8>)
{
  v36[35] = a1;
  v1 = type metadata accessor for MetricsFlags();
  v2 = *(v1 - 8);
  v36[33] = v1;
  v36[34] = v2;
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v36[30] = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v36[29] = v36 - v7;
  v8 = __chkstk_darwin(v6);
  v36[28] = v36 - v9;
  v10 = __chkstk_darwin(v8);
  v36[27] = v36 - v11;
  v12 = __chkstk_darwin(v10);
  v36[26] = v36 - v13;
  v14 = __chkstk_darwin(v12);
  v36[25] = v36 - v15;
  v16 = __chkstk_darwin(v14);
  v36[24] = v36 - v17;
  v18 = __chkstk_darwin(v16);
  v36[23] = v36 - v19;
  v20 = __chkstk_darwin(v18);
  v36[22] = v36 - v21;
  v22 = __chkstk_darwin(v20);
  v36[21] = v36 - v23;
  v24 = __chkstk_darwin(v22);
  v36[20] = v36 - v25;
  v26 = __chkstk_darwin(v24);
  v36[19] = v36 - v27;
  v28 = __chkstk_darwin(v26);
  v36[18] = v36 - v29;
  v30 = __chkstk_darwin(v28);
  v36[17] = v36 - v31;
  v32 = __chkstk_darwin(v30);
  v36[16] = v36 - v33;
  v34 = __chkstk_darwin(v32);
  v36[15] = v36 - v35;
  __chkstk_darwin(v34);
  v36[32] = 0x100000000;
  v36[31] = 0x100000000;
  v36[14] = 0x100000000;
  v36[13] = 0x100000000;
  v36[12] = 0x100000000;
  v36[11] = 0x100000000;
  v36[10] = 0x100000000;
  v36[9] = 0x100000000;
  v36[8] = 0x100000000;
  v36[7] = 0x100000000;
  v36[6] = 0x100000000;
  v36[5] = 0x100000000;
  v36[4] = 0x100000000;
  v36[3] = 0x100000000;
  v36[2] = 0x100000000;
  v36[1] = 0x100000000;
  v37 = 1;
  ImageQualityCriteria.init(minBlurriness:maxBlurriness:minLaplaceBlur:maxLaplaceBlur:minExposure:maxExposure:minCardDistortion:maxCardDistortion:minFaceToImageRatio:maxFaceToImageRatio:minHeadPitch:maxHeadPitch:minHeadRoll:maxHeadRoll:minHeadYaw:maxHeadYaw:minBlinkingConfidence:maxBlinkingConfidence:minGlassesConfidence:maxGlassesConfidence:minSunglassesConfidence:maxSunglassesConfidence:minFacemaskConfidence:maxFacemaskConfidence:minHeadgearConfidence:maxHeadgearConfidence:minLensSmudgeConfidence:maxLensSmudgeConfidence:minFaceConfidence:maxFaceConfidence:minFaceCaptureQuality:maxFaceCaptureQuality:minDocumentSize:maxDocumentSize:minDocumentRotation:maxDocumentRotation:minDocumentSkew:maxDocumentSkew:maxLeftDrift:maxRightDrift:maxUpDrift:maxDownDrift:minNumFaces:maxNumFaces:minLuxLevel:maxLuxLevel:pdf417Detected:isAAMVACompliant:disableStableRect:issuerNumber:glareEpsilon:glareMinPoints:glareMinIntensity:glareClusterSize:glareDownscaleFactor:ocrKeywords:ocrMatch:complexSignals:dobRepeatCount:doeRepeatCount:d();
}

void sub_1001BC998(uint64_t a1@<X8>)
{
  v39 = a1;
  v35 = type metadata accessor for MetricsFlags();
  v38 = *(v35 - 8);
  v1 = *(v38 + 64);
  v2 = __chkstk_darwin(v35);
  v34[30] = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v34[29] = v34 - v5;
  v6 = __chkstk_darwin(v4);
  v34[28] = v34 - v7;
  v8 = __chkstk_darwin(v6);
  v34[27] = v34 - v9;
  v10 = __chkstk_darwin(v8);
  v34[26] = v34 - v11;
  v12 = __chkstk_darwin(v10);
  v34[25] = v34 - v13;
  v14 = __chkstk_darwin(v12);
  v34[24] = v34 - v15;
  v16 = __chkstk_darwin(v14);
  v34[23] = v34 - v17;
  v18 = __chkstk_darwin(v16);
  v34[22] = v34 - v19;
  v20 = __chkstk_darwin(v18);
  v34[21] = v34 - v21;
  v22 = __chkstk_darwin(v20);
  v34[20] = v34 - v23;
  v24 = __chkstk_darwin(v22);
  v34[19] = v34 - v25;
  v26 = __chkstk_darwin(v24);
  v34[18] = v34 - v27;
  v28 = __chkstk_darwin(v26);
  v34[17] = v34 - v29;
  v30 = __chkstk_darwin(v28);
  v34[16] = v34 - v31;
  v32 = __chkstk_darwin(v30);
  v36 = v34 - v33;
  __chkstk_darwin(v32);
  v37 = 0x100000000;
  v34[15] = 0x100000000;
  v34[14] = 0x100000000;
  v34[13] = 0x100000000;
  v34[12] = 0x100000000;
  v34[11] = 0x100000000;
  v34[10] = 0x100000000;
  v34[9] = 0x100000000;
  v34[8] = 0x100000000;
  v34[7] = 0x100000000;
  v34[6] = 0x100000000;
  v34[5] = 0x100000000;
  v34[4] = 0x100000000;
  v34[3] = 0x100000000;
  v34[2] = 0x100000000;
  v34[1] = 0x100000000;
  v40 = 1;
  ImageQualityCriteria.init(minBlurriness:maxBlurriness:minLaplaceBlur:maxLaplaceBlur:minExposure:maxExposure:minCardDistortion:maxCardDistortion:minFaceToImageRatio:maxFaceToImageRatio:minHeadPitch:maxHeadPitch:minHeadRoll:maxHeadRoll:minHeadYaw:maxHeadYaw:minBlinkingConfidence:maxBlinkingConfidence:minGlassesConfidence:maxGlassesConfidence:minSunglassesConfidence:maxSunglassesConfidence:minFacemaskConfidence:maxFacemaskConfidence:minHeadgearConfidence:maxHeadgearConfidence:minLensSmudgeConfidence:maxLensSmudgeConfidence:minFaceConfidence:maxFaceConfidence:minFaceCaptureQuality:maxFaceCaptureQuality:minDocumentSize:maxDocumentSize:minDocumentRotation:maxDocumentRotation:minDocumentSkew:maxDocumentSkew:maxLeftDrift:maxRightDrift:maxUpDrift:maxDownDrift:minNumFaces:maxNumFaces:minLuxLevel:maxLuxLevel:pdf417Detected:isAAMVACompliant:disableStableRect:issuerNumber:glareEpsilon:glareMinPoints:glareMinIntensity:glareClusterSize:glareDownscaleFactor:ocrKeywords:ocrMatch:complexSignals:dobRepeatCount:doeRepeatCount:d();
}

void sub_1001BE910(uint64_t a1@<X8>)
{
  v39 = a1;
  v35 = type metadata accessor for MetricsFlags();
  v38 = *(v35 - 8);
  v1 = *(v38 + 64);
  v2 = __chkstk_darwin(v35);
  v34[30] = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v34[29] = v34 - v5;
  v6 = __chkstk_darwin(v4);
  v34[28] = v34 - v7;
  v8 = __chkstk_darwin(v6);
  v34[27] = v34 - v9;
  v10 = __chkstk_darwin(v8);
  v34[26] = v34 - v11;
  v12 = __chkstk_darwin(v10);
  v34[25] = v34 - v13;
  v14 = __chkstk_darwin(v12);
  v34[24] = v34 - v15;
  v16 = __chkstk_darwin(v14);
  v34[23] = v34 - v17;
  v18 = __chkstk_darwin(v16);
  v34[22] = v34 - v19;
  v20 = __chkstk_darwin(v18);
  v34[21] = v34 - v21;
  v22 = __chkstk_darwin(v20);
  v34[20] = v34 - v23;
  v24 = __chkstk_darwin(v22);
  v34[19] = v34 - v25;
  v26 = __chkstk_darwin(v24);
  v34[18] = v34 - v27;
  v28 = __chkstk_darwin(v26);
  v34[17] = v34 - v29;
  v30 = __chkstk_darwin(v28);
  v34[16] = v34 - v31;
  v32 = __chkstk_darwin(v30);
  v34[15] = v34 - v33;
  __chkstk_darwin(v32);
  v37 = 0x100000000;
  v36 = 0x100000000;
  v34[14] = 0x100000000;
  v34[13] = 0x100000000;
  v34[12] = 0x100000000;
  v34[11] = 0x100000000;
  v34[10] = 0x100000000;
  v34[9] = 0x100000000;
  v34[8] = 0x100000000;
  v34[7] = 0x100000000;
  v34[6] = 0x100000000;
  v34[5] = 0x100000000;
  v34[4] = 0x100000000;
  v34[3] = 0x100000000;
  v34[2] = 0x100000000;
  v34[1] = 0x100000000;
  v40 = 1;
  ImageQualityCriteria.init(minBlurriness:maxBlurriness:minLaplaceBlur:maxLaplaceBlur:minExposure:maxExposure:minCardDistortion:maxCardDistortion:minFaceToImageRatio:maxFaceToImageRatio:minHeadPitch:maxHeadPitch:minHeadRoll:maxHeadRoll:minHeadYaw:maxHeadYaw:minBlinkingConfidence:maxBlinkingConfidence:minGlassesConfidence:maxGlassesConfidence:minSunglassesConfidence:maxSunglassesConfidence:minFacemaskConfidence:maxFacemaskConfidence:minHeadgearConfidence:maxHeadgearConfidence:minLensSmudgeConfidence:maxLensSmudgeConfidence:minFaceConfidence:maxFaceConfidence:minFaceCaptureQuality:maxFaceCaptureQuality:minDocumentSize:maxDocumentSize:minDocumentRotation:maxDocumentRotation:minDocumentSkew:maxDocumentSkew:maxLeftDrift:maxRightDrift:maxUpDrift:maxDownDrift:minNumFaces:maxNumFaces:minLuxLevel:maxLuxLevel:pdf417Detected:isAAMVACompliant:disableStableRect:issuerNumber:glareEpsilon:glareMinPoints:glareMinIntensity:glareClusterSize:glareDownscaleFactor:ocrKeywords:ocrMatch:complexSignals:dobRepeatCount:doeRepeatCount:d();
}

void sub_1001C09D0(uint64_t a1@<X8>)
{
  v32[30] = a1;
  v1 = type metadata accessor for MetricsFlags();
  v2 = *(v1 - 8);
  v32[32] = v1;
  v32[33] = v2;
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v32[29] = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v32[28] = v32 - v7;
  v8 = __chkstk_darwin(v6);
  v32[27] = v32 - v9;
  v10 = __chkstk_darwin(v8);
  v32[26] = v32 - v11;
  v12 = __chkstk_darwin(v10);
  v32[25] = v32 - v13;
  v14 = __chkstk_darwin(v12);
  v32[24] = v32 - v15;
  v16 = __chkstk_darwin(v14);
  v32[23] = v32 - v17;
  v18 = __chkstk_darwin(v16);
  v32[22] = v32 - v19;
  v20 = __chkstk_darwin(v18);
  v32[21] = v32 - v21;
  v22 = __chkstk_darwin(v20);
  v32[20] = v32 - v23;
  v24 = __chkstk_darwin(v22);
  v32[19] = v32 - v25;
  v26 = __chkstk_darwin(v24);
  v32[18] = v32 - v27;
  v28 = __chkstk_darwin(v26);
  v32[17] = v32 - v29;
  v30 = __chkstk_darwin(v28);
  v32[16] = v32 - v31;
  __chkstk_darwin(v30);
  v32[31] = 0x100000000;
  v32[15] = 0x100000000;
  v32[14] = 0x100000000;
  v32[13] = 0x100000000;
  v32[12] = 0x100000000;
  v32[11] = 0x100000000;
  v32[10] = 0x100000000;
  v32[9] = 0x100000000;
  v32[8] = 0x100000000;
  v32[7] = 0x100000000;
  v32[6] = 0x100000000;
  v32[5] = 0x100000000;
  v32[4] = 0x100000000;
  v32[3] = 0x100000000;
  v32[2] = 0x100000000;
  v32[1] = 0x100000000;
  v33 = 1;
  ImageQualityCriteria.init(minBlurriness:maxBlurriness:minLaplaceBlur:maxLaplaceBlur:minExposure:maxExposure:minCardDistortion:maxCardDistortion:minFaceToImageRatio:maxFaceToImageRatio:minHeadPitch:maxHeadPitch:minHeadRoll:maxHeadRoll:minHeadYaw:maxHeadYaw:minBlinkingConfidence:maxBlinkingConfidence:minGlassesConfidence:maxGlassesConfidence:minSunglassesConfidence:maxSunglassesConfidence:minFacemaskConfidence:maxFacemaskConfidence:minHeadgearConfidence:maxHeadgearConfidence:minLensSmudgeConfidence:maxLensSmudgeConfidence:minFaceConfidence:maxFaceConfidence:minFaceCaptureQuality:maxFaceCaptureQuality:minDocumentSize:maxDocumentSize:minDocumentRotation:maxDocumentRotation:minDocumentSkew:maxDocumentSkew:maxLeftDrift:maxRightDrift:maxUpDrift:maxDownDrift:minNumFaces:maxNumFaces:minLuxLevel:maxLuxLevel:pdf417Detected:isAAMVACompliant:disableStableRect:issuerNumber:glareEpsilon:glareMinPoints:glareMinIntensity:glareClusterSize:glareDownscaleFactor:ocrKeywords:ocrMatch:complexSignals:dobRepeatCount:doeRepeatCount:d();
}

void sub_1001C2390(uint64_t a1@<X8>)
{
  v32[30] = a1;
  v1 = type metadata accessor for MetricsFlags();
  v2 = *(v1 - 8);
  v32[32] = v1;
  v32[33] = v2;
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v32[29] = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v32[28] = v32 - v7;
  v8 = __chkstk_darwin(v6);
  v32[27] = v32 - v9;
  v10 = __chkstk_darwin(v8);
  v32[26] = v32 - v11;
  v12 = __chkstk_darwin(v10);
  v32[25] = v32 - v13;
  v14 = __chkstk_darwin(v12);
  v32[24] = v32 - v15;
  v16 = __chkstk_darwin(v14);
  v32[23] = v32 - v17;
  v18 = __chkstk_darwin(v16);
  v32[22] = v32 - v19;
  v20 = __chkstk_darwin(v18);
  v32[21] = v32 - v21;
  v22 = __chkstk_darwin(v20);
  v32[20] = v32 - v23;
  v24 = __chkstk_darwin(v22);
  v32[19] = v32 - v25;
  v26 = __chkstk_darwin(v24);
  v32[18] = v32 - v27;
  v28 = __chkstk_darwin(v26);
  v32[17] = v32 - v29;
  v30 = __chkstk_darwin(v28);
  v32[16] = v32 - v31;
  __chkstk_darwin(v30);
  v32[31] = 0x100000000;
  v32[15] = 0x100000000;
  v32[14] = 0x100000000;
  v32[13] = 0x100000000;
  v32[12] = 0x100000000;
  v32[11] = 0x100000000;
  v32[10] = 0x100000000;
  v32[9] = 0x100000000;
  v32[8] = 0x100000000;
  v32[7] = 0x100000000;
  v32[6] = 0x100000000;
  v32[5] = 0x100000000;
  v32[4] = 0x100000000;
  v32[3] = 0x100000000;
  v32[2] = 0x100000000;
  v32[1] = 0x100000000;
  v33 = 1;
  ImageQualityCriteria.init(minBlurriness:maxBlurriness:minLaplaceBlur:maxLaplaceBlur:minExposure:maxExposure:minCardDistortion:maxCardDistortion:minFaceToImageRatio:maxFaceToImageRatio:minHeadPitch:maxHeadPitch:minHeadRoll:maxHeadRoll:minHeadYaw:maxHeadYaw:minBlinkingConfidence:maxBlinkingConfidence:minGlassesConfidence:maxGlassesConfidence:minSunglassesConfidence:maxSunglassesConfidence:minFacemaskConfidence:maxFacemaskConfidence:minHeadgearConfidence:maxHeadgearConfidence:minLensSmudgeConfidence:maxLensSmudgeConfidence:minFaceConfidence:maxFaceConfidence:minFaceCaptureQuality:maxFaceCaptureQuality:minDocumentSize:maxDocumentSize:minDocumentRotation:maxDocumentRotation:minDocumentSkew:maxDocumentSkew:maxLeftDrift:maxRightDrift:maxUpDrift:maxDownDrift:minNumFaces:maxNumFaces:minLuxLevel:maxLuxLevel:pdf417Detected:isAAMVACompliant:disableStableRect:issuerNumber:glareEpsilon:glareMinPoints:glareMinIntensity:glareClusterSize:glareDownscaleFactor:ocrKeywords:ocrMatch:complexSignals:dobRepeatCount:doeRepeatCount:d();
}

uint64_t sub_1001C41D8@<X0>(uint64_t a1@<X8>)
{
  v147 = a1;
  v1 = type metadata accessor for IQACode();
  v145 = *(v1 - 8);
  v146 = v1;
  v2 = *(v145 + 64);
  __chkstk_darwin(v1);
  v144 = (&v123 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for IQComparator();
  v140 = *(v4 - 8);
  v141 = v4;
  v5 = *(v140 + 64);
  v6 = __chkstk_darwin(v4);
  v134 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v137 = &v123 - v9;
  v10 = __chkstk_darwin(v8);
  v135 = &v123 - v11;
  v12 = __chkstk_darwin(v10);
  v129 = &v123 - v13;
  __chkstk_darwin(v12);
  v132 = &v123 - v14;
  v142 = type metadata accessor for IQCType();
  v149 = *(v142 - 8);
  v15 = *(v149 + 64);
  v16 = __chkstk_darwin(v142);
  v139 = (&v123 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __chkstk_darwin(v16);
  v148 = &v123 - v19;
  v20 = __chkstk_darwin(v18);
  v133 = &v123 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = (&v123 - v23);
  __chkstk_darwin(v22);
  v26 = &v123 - v25;
  v138 = type metadata accessor for IQSignal();
  v136 = *(v138 - 8);
  v27 = *(v136 + 64);
  v28 = __chkstk_darwin(v138);
  v126 = &v123 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v124 = &v123 - v31;
  v32 = __chkstk_darwin(v30);
  v125 = &v123 - v33;
  v34 = __chkstk_darwin(v32);
  v131 = &v123 - v35;
  v36 = __chkstk_darwin(v34);
  v123 = &v123 - v37;
  __chkstk_darwin(v36);
  v130 = &v123 - v38;
  v39 = static DaemonInternalDefaultsKeys.complexSignalType1.getter();
  v41 = v40;
  v143 = static DaemonInternalDefaultsKeys.complexComparator1.getter();
  v43 = v42;
  v128 = static DaemonInternalDefaultsKeys.complexThreshold1.getter();
  v45 = v44;
  v46 = objc_opt_self();
  v47 = [v46 standardUserDefaults];
  v48._countAndFlagsBits = v39;
  v48._object = v41;
  v49 = NSUserDefaults.internalString(forKey:)(v48);

  if (!v49.value._object)
  {
    v75 = v142;

    v143 = _swiftEmptyArrayStorage;
    v56 = v46;
    goto LABEL_11;
  }

  v127 = v45;
  sub_1002B1100(v49.value._countAndFlagsBits, v49.value._object, v24);

  v50 = v149;
  v51 = v142;
  (*(v149 + 32))(v26, v24, v142);
  v52 = [v46 standardUserDefaults];
  v53._countAndFlagsBits = v143;
  v53._object = v43;
  v54 = NSUserDefaults.internalString(forKey:)(v53);

  v55 = v50;
  v56 = v46;
  if (!v54.value._object)
  {

    v80 = *(v55 + 8);
    v81 = v26;
LABEL_10:
    v75 = v51;
    v80(v81, v51);
    v143 = _swiftEmptyArrayStorage;
    goto LABEL_11;
  }

  v57 = v26;
  v58 = v129;
  sub_1002B1CF0(v54.value._countAndFlagsBits, v54.value._object, v129);

  v59 = v140;
  v60 = v132;
  v61 = v58;
  v62 = v141;
  (*(v140 + 32))(v132, v61, v141);
  v63 = [v56 standardUserDefaults];
  v64._countAndFlagsBits = v128;
  v64._object = v127;
  NSUserDefaults.internalFloat(forKey:)(&v150, v64);
  v66 = v65;

  if ((v66 & 0x100000000) != 0)
  {
    (*(v59 + 8))(v60, v62);
    v80 = *(v55 + 8);
    v81 = v57;
    goto LABEL_10;
  }

  (*(v55 + 16))(v133, v57, v51);
  (*(v59 + 16))(v135, v60, v62);
  v67 = v123;
  IQSignal.init(type:comparator:threshold:)();
  (*(v59 + 8))(v60, v62);
  (*(v55 + 8))(v57, v51);
  v68 = v136;
  v69 = *(v136 + 32);
  v70 = v130;
  v71 = v138;
  v69(v130, v67, v138);
  (*(v68 + 16))(v131, v70, v71);
  v72 = sub_1003C5A3C(0, 1, 1, _swiftEmptyArrayStorage);
  v74 = v72[2];
  v73 = v72[3];
  v75 = v51;
  if (v74 >= v73 >> 1)
  {
    v76 = sub_1003C5A3C(v73 > 1, v74 + 1, 1, v72);
  }

  else
  {
    v76 = v72;
  }

  v78 = *(v68 + 8);
  v77 = v68 + 8;
  v78(v130, v71);
  *(v76 + 16) = v74 + 1;
  v79 = (*(v77 + 72) + 32) & ~*(v77 + 72);
  v143 = v76;
  v69((v76 + v79 + *(v77 + 64) * v74), v131, v71);
LABEL_11:
  v82 = static DaemonInternalDefaultsKeys.complexSignalType2.getter();
  v84 = v83;
  v85 = static DaemonInternalDefaultsKeys.complexComparator2.getter();
  v87 = v86;
  v142 = static DaemonInternalDefaultsKeys.complexThreshold2.getter();
  v89 = v88;
  v90 = v56;
  v91 = [v56 standardUserDefaults];
  v92._countAndFlagsBits = v82;
  v92._object = v84;
  v93 = NSUserDefaults.internalString(forKey:)(v92);

  if (v93.value._object)
  {
    v132 = v89;
    v94 = v139;
    sub_1002B1100(v93.value._countAndFlagsBits, v93.value._object, v139);

    v95 = v148;
    v96 = v149;
    v97 = v94;
    v98 = v75;
    (*(v149 + 32))(v148, v97, v75);
    v99 = [v90 standardUserDefaults];
    v100._countAndFlagsBits = v85;
    v100._object = v87;
    v101 = NSUserDefaults.internalString(forKey:)(v100);

    if (v101.value._object)
    {
      v102 = v134;
      sub_1002B1CF0(v101.value._countAndFlagsBits, v101.value._object, v134);

      v104 = v140;
      v103 = v141;
      v105 = v137;
      (*(v140 + 32))(v137, v102, v141);
      v106 = [v90 standardUserDefaults];
      v107._countAndFlagsBits = v142;
      v107._object = v132;
      NSUserDefaults.internalFloat(forKey:)(v108, v107);
      v110 = v109;

      if ((v110 & 0x100000000) != 0)
      {
        (*(v104 + 8))(v105, v103);
        (*(v96 + 8))(v148, v98);
      }

      else
      {
        v111 = v148;
        (*(v96 + 16))(v133, v148, v98);
        (*(v104 + 16))(v135, v105, v103);
        v112 = v124;
        IQSignal.init(type:comparator:threshold:)();
        (*(v104 + 8))(v105, v103);
        (*(v96 + 8))(v111, v98);
        v113 = v136;
        v114 = *(v136 + 32);
        v115 = v125;
        v116 = v138;
        v114(v125, v112, v138);
        v117 = v126;
        (*(v113 + 16))(v126, v115, v116);
        v118 = v143;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = sub_1003C5A3C(0, *(v118 + 2) + 1, 1, v118);
        }

        v120 = *(v118 + 2);
        v119 = *(v118 + 3);
        if (v120 >= v119 >> 1)
        {
          v118 = sub_1003C5A3C(v119 > 1, v120 + 1, 1, v118);
        }

        (*(v113 + 8))(v115, v116);
        *(v118 + 2) = v120 + 1;
        v114(&v118[((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v120], v117, v116);
      }
    }

    else
    {

      (*(v96 + 8))(v95, v75);
    }
  }

  else
  {
  }

  v121 = v144;
  *v144 = 0xD000000000000015;
  v121[1] = 0x8000000100704F40;
  (*(v145 + 104))(v121, enum case for IQACode.complex(_:), v146);
  return IQComplexSignal.init(identifier:priority:signals:)();
}

uint64_t sub_1001C4D78()
{
  v2 = type metadata accessor for Logger();
  v77 = *(v2 - 8);
  v78 = v2;
  v3 = *(v77 + 64);
  __chkstk_darwin(v2);
  v76 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DIPError.Code();
  v73 = *(v5 - 8);
  v74 = v5;
  v6 = *(v73 + 64);
  __chkstk_darwin(v5);
  v75 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IQACode();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v72 = (&v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v11);
  v79 = &v72 - v14;
  v15 = __chkstk_darwin(v13);
  v87 = (&v72 - v16);
  __chkstk_darwin(v15);
  v82 = &v72 - v17;
  v18 = sub_100007224(&qword_10083D4D0, &qword_1006DB280);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v89 = (&v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v88 = (&v72 - v22);
  v23 = *(v0 + 96);
  v24 = *(v23 + 64);
  v81 = v23 + 64;
  v25 = 1 << *(v23 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v24;
  v28 = (v25 + 63) >> 6;
  v83 = (v9 + 16);
  v84 = v23;
  v90 = (v9 + 32);
  v85 = v9;
  v86 = (v9 + 8);

  v29 = 0;
  v80 = _swiftEmptyArrayStorage;
LABEL_4:
  v30 = v29;
  if (v27)
  {
    while (1)
    {
      v31 = v8;
      v32 = v30;
LABEL_14:
      v35 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v36 = v35 | (v32 << 6);
      v37 = v85;
      v38 = (*(v84 + 48) + 16 * v36);
      v40 = *v38;
      v39 = v38[1];
      v41 = v82;
      (*(v85 + 16))(v82, *(v84 + 56) + *(v85 + 72) * v36, v31);
      v42 = sub_100007224(&qword_10083D4D8, &qword_1006DB288);
      v43 = *(v42 + 48);
      v44 = v89;
      *v89 = v40;
      v44[1] = v39;
      v34 = v44;
      v45 = *(v37 + 32);
      v8 = v31;
      v45(v34 + v43, v41, v31);
      (*(*(v42 - 8) + 56))(v34, 0, 1, v42);

      v29 = v32;
LABEL_15:
      v46 = v88;
      sub_1001C56EC(v34, v88);
      v47 = sub_100007224(&qword_10083D4D8, &qword_1006DB288);
      if ((*(*(v47 - 8) + 48))(v46, 1, v47) == 1)
      {
        break;
      }

      v49 = *v46;
      v48 = v46[1];
      v50 = *v90;
      v51 = v46 + *(v47 + 48);
      v1 = v87;
      (*v90)(v87, v51, v8);
      v52 = [objc_opt_self() standardUserDefaults];
      v53._countAndFlagsBits = v49;
      v53._object = v48;
      LOBYTE(v49) = NSUserDefaults.internalBool(forKey:)(v53);

      if (v49)
      {
        (*v83)(v79, v1, v8);
        v55 = v80;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_1003C5A64(0, v55[2] + 1, 1, v55);
        }

        v57 = v55[2];
        v56 = v55[3];
        v58 = v87;
        if (v57 >= v56 >> 1)
        {
          v80 = sub_1003C5A64(v56 > 1, v57 + 1, 1, v55);
          v58 = v87;
        }

        else
        {
          v80 = v55;
        }

        v59 = v85;
        (*(v85 + 8))(v58, v8);
        v60 = v79;
        v61 = v80;
        v80[2] = v57 + 1;
        v50(&v61[((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v57], v60, v8);
        goto LABEL_4;
      }

      (*v86)(v1, v8);
      v30 = v29;
      if (!v27)
      {
        goto LABEL_6;
      }
    }

    v62 = [objc_opt_self() standardUserDefaults];
    v63._countAndFlagsBits = static DaemonInternalDefaultsKeys.livenessBlockComplexIdentifier.getter();
    v64 = NSUserDefaults.internalString(forKey:)(v63);

    if (!v64.value._object)
    {
      v8 = v80;
      goto LABEL_32;
    }

    v1 = v72;
    *v72 = v64;
    v32 = v8;
    (*(v85 + 104))(v1, enum case for IQACode.complex(_:), v8);
    v8 = v80;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
LABEL_6:
    if (v28 <= v30 + 1)
    {
      v33 = v30 + 1;
    }

    else
    {
      v33 = v28;
    }

    v29 = v33 - 1;
    v34 = v89;
    while (1)
    {
      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v32 >= v28)
      {
        v54 = sub_100007224(&qword_10083D4D8, &qword_1006DB288);
        (*(*(v54 - 8) + 56))(v34, 1, 1, v54);
        v27 = 0;
        goto LABEL_15;
      }

      v27 = *(v81 + 8 * v32);
      ++v30;
      if (v27)
      {
        v31 = v8;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_34:
    v8 = sub_1003C5A64(0, v8[2] + 1, 1, v8);
  }

  v66 = v8[2];
  v65 = v8[3];
  if (v66 >= v65 >> 1)
  {
    v8 = sub_1003C5A64(v65 > 1, v66 + 1, 1, v8);
  }

  v8[2] = v66 + 1;
  (*(v85 + 32))(v8 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v66, v1, v32);
LABEL_32:
  v67 = type metadata accessor for JSONEncoder();
  v68 = *(v67 + 48);
  v69 = *(v67 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v91 = v8;
  sub_100007224(&qword_10083D4E0, &qword_1006DC790);
  sub_1001C575C();
  v70 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v70;
}

uint64_t sub_1001C56EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083D4D0, &qword_1006DB280);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001C575C()
{
  result = qword_10083D4E8;
  if (!qword_10083D4E8)
  {
    sub_10000B870(&qword_10083D4E0, &qword_1006DC790);
    sub_1001C5908(&qword_10083D4F0, &type metadata accessor for IQACode);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083D4E8);
  }

  return result;
}

BOOL sub_1001C5810(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtof_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_1001C5908(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1001C5950@<D0>(uint64_t a1@<X8>)
{
  sub_100007224(&qword_10083D518, &qword_1006DB290);
  v1 = type metadata accessor for IQCType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_1006DB230;
  v5 = v91 + v4;
  v6 = *(v2 + 104);
  v6(v5, enum case for IQCType.pdf417Detected(_:), v1);
  v6(v5 + v3, enum case for IQCType.isAAMVACompliant(_:), v1);
  v6(v5 + 2 * v3, enum case for IQCType.issuerNumber(_:), v1);
  v6(v5 + 3 * v3, enum case for IQCType.blurriness(_:), v1);
  v6(v5 + 4 * v3, enum case for IQCType.exposure(_:), v1);
  v6(v5 + 5 * v3, enum case for IQCType.documentSize(_:), v1);
  v6(v5 + 6 * v3, enum case for IQCType.documentRotation(_:), v1);
  v6(v5 + 7 * v3, enum case for IQCType.documentSkew(_:), v1);
  v6(v5 + 8 * v3, enum case for IQCType.numFaces(_:), v1);
  v6(v5 + 9 * v3, enum case for IQCType.luxLevel(_:), v1);
  v6(v5 + 10 * v3, enum case for IQCType.faceCenteredRatio(_:), v1);
  v6(v5 + 11 * v3, enum case for IQCType.faceToImageRatio(_:), v1);
  v6(v5 + 12 * v3, enum case for IQCType.leftDrift(_:), v1);
  v6(v5 + 13 * v3, enum case for IQCType.rightDrift(_:), v1);
  v6(v5 + 14 * v3, enum case for IQCType.upDrift(_:), v1);
  v6(v5 + 15 * v3, enum case for IQCType.downDrift(_:), v1);
  v6(v5 + 16 * v3, enum case for IQCType.facemaskConfidence(_:), v1);
  v6(v5 + 17 * v3, enum case for IQCType.headgearConfidence(_:), v1);
  v6(v5 + 18 * v3, enum case for IQCType.sunglassesConfidence(_:), v1);
  v6(v5 + 19 * v3, enum case for IQCType.glassesConfidence(_:), v1);
  v6(v5 + 20 * v3, enum case for IQCType.blinkingConfidence(_:), v1);
  v6(v5 + 21 * v3, enum case for IQCType.faceCaptureQuality(_:), v1);
  v6(v5 + 22 * v3, enum case for IQCType.headPitch(_:), v1);
  v6(v5 + 23 * v3, enum case for IQCType.headRoll(_:), v1);
  v6(v5 + 24 * v3, enum case for IQCType.headYaw(_:), v1);
  v6(v5 + 25 * v3, enum case for IQCType.cardDistortion(_:), v1);
  sub_100007224(&qword_10083D520, &qword_1006DB298);
  v7 = sub_100007224(&qword_100834950, &qword_1006C0140);
  v8 = *(*(v7 - 8) + 72);
  v9 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1006DB240;
  v11 = (v10 + v9);
  v12 = *(v7 + 48);
  *v11 = static DaemonInternalDefaultsKeys.livenessBlockBlurrinessHigh.getter();
  v11[1] = v13;
  v14 = enum case for IQACode.blurrinessHigh(_:);
  v15 = type metadata accessor for IQACode();
  v16 = *(*(v15 - 8) + 104);
  v16(v11 + v12, v14, v15);
  v17 = (v11 + v8);
  v18 = *(v7 + 48);
  *v17 = static DaemonInternalDefaultsKeys.livenessBlockExposureLow.getter();
  v17[1] = v19;
  v16(v11 + v8 + v18, enum case for IQACode.exposureLow(_:), v15);
  v20 = (v11 + 2 * v8);
  v21 = *(v7 + 48);
  *v20 = static DaemonInternalDefaultsKeys.livenessBlockExposureHigh.getter();
  v20[1] = v22;
  v16(v20 + v21, enum case for IQACode.exposureHigh(_:), v15);
  v23 = (v11 + 3 * v8);
  v24 = *(v7 + 48);
  *v23 = static DaemonInternalDefaultsKeys.livenessBlockFaceToImageRatioLow.getter();
  v23[1] = v25;
  v16(v23 + v24, enum case for IQACode.faceToImageRatioLow(_:), v15);
  v26 = (v11 + 4 * v8);
  v27 = *(v7 + 48);
  *v26 = static DaemonInternalDefaultsKeys.livenessBlockFaceToImageRatioHigh.getter();
  v26[1] = v28;
  v16(v26 + v27, enum case for IQACode.faceToImageRatioHigh(_:), v15);
  v29 = (v11 + 5 * v8);
  v30 = *(v7 + 48);
  *v29 = static DaemonInternalDefaultsKeys.livenessBlockHeadPitchLow.getter();
  v29[1] = v31;
  v16(v29 + v30, enum case for IQACode.headPitchLow(_:), v15);
  v32 = (v11 + 6 * v8);
  v33 = *(v7 + 48);
  *v32 = static DaemonInternalDefaultsKeys.livenessBlockHeadPitchHigh.getter();
  v32[1] = v34;
  v16(v32 + v33, enum case for IQACode.headPitchHigh(_:), v15);
  v35 = (v11 + 7 * v8);
  v36 = *(v7 + 48);
  *v35 = static DaemonInternalDefaultsKeys.livenessBlockHeadRollLow.getter();
  v35[1] = v37;
  v16(v35 + v36, enum case for IQACode.headRollLow(_:), v15);
  v38 = &v11[v8];
  v39 = *(v7 + 48);
  *v38 = static DaemonInternalDefaultsKeys.livenessBlockHeadRollHigh.getter();
  v38[1] = v40;
  v16(v38 + v39, enum case for IQACode.headRollHigh(_:), v15);
  v41 = (v11 + 9 * v8);
  v42 = *(v7 + 48);
  *v41 = static DaemonInternalDefaultsKeys.livenessBlockHeadYawLow.getter();
  v41[1] = v43;
  v16(v41 + v42, enum case for IQACode.headYawLow(_:), v15);
  v44 = (v11 + 10 * v8);
  v45 = *(v7 + 48);
  *v44 = static DaemonInternalDefaultsKeys.livenessBlockHeadYawHigh.getter();
  v44[1] = v46;
  v16(v44 + v45, enum case for IQACode.headYawHigh(_:), v15);
  v47 = (v11 + 11 * v8);
  v48 = *(v7 + 48);
  *v47 = static DaemonInternalDefaultsKeys.livenessBlockBlinkingConfidenceHigh.getter();
  v47[1] = v49;
  v16(v47 + v48, enum case for IQACode.blinkingConfidenceHigh(_:), v15);
  v50 = (v11 + 12 * v8);
  v51 = *(v7 + 48);
  *v50 = static DaemonInternalDefaultsKeys.livenessBlockGlassesConfidenceHigh.getter();
  v50[1] = v52;
  v16(v50 + v51, enum case for IQACode.glassesConfidenceHigh(_:), v15);
  v53 = (v11 + 13 * v8);
  v54 = *(v7 + 48);
  *v53 = static DaemonInternalDefaultsKeys.livenessBlockSunglassesConfidenceHigh.getter();
  v53[1] = v55;
  v16(v53 + v54, enum case for IQACode.sunglassesConfidenceHigh(_:), v15);
  v56 = (v11 + 14 * v8);
  v57 = *(v7 + 48);
  *v56 = static DaemonInternalDefaultsKeys.livenessBlockFacemaskConfidenceHigh.getter();
  v56[1] = v58;
  v16(v56 + v57, enum case for IQACode.facemaskConfidenceHigh(_:), v15);
  v59 = (v11 + 15 * v8);
  v60 = *(v7 + 48);
  *v59 = static DaemonInternalDefaultsKeys.livenessBlockHeadgearConfidenceHigh.getter();
  v59[1] = v61;
  v16(v59 + v60, enum case for IQACode.headgearConfidenceHigh(_:), v15);
  v62 = &v11[2 * v8];
  v63 = *(v7 + 48);
  *v62 = static DaemonInternalDefaultsKeys.livenessBlockFaceCaptureQualityLow.getter();
  v62[1] = v64;
  v16(v62 + v63, enum case for IQACode.faceCaptureQualityLow(_:), v15);
  v65 = (v11 + 17 * v8);
  v66 = *(v7 + 48);
  *v65 = static DaemonInternalDefaultsKeys.livenessBlockTargetTooFarLeft.getter();
  v65[1] = v67;
  v16(v65 + v66, enum case for IQACode.targetTooFarLeft(_:), v15);
  v68 = (v11 + 18 * v8);
  v69 = *(v7 + 48);
  *v68 = static DaemonInternalDefaultsKeys.livenessBlockTargetTooFarRight.getter();
  v68[1] = v70;
  v16(v68 + v69, enum case for IQACode.targetTooFarRight(_:), v15);
  v71 = (v11 + 19 * v8);
  v72 = *(v7 + 48);
  *v71 = static DaemonInternalDefaultsKeys.livenessBlockTargetTooFarUp.getter();
  v71[1] = v73;
  v16(v71 + v72, enum case for IQACode.targetTooFarUp(_:), v15);
  v74 = (v11 + 20 * v8);
  v75 = *(v7 + 48);
  *v74 = static DaemonInternalDefaultsKeys.livenessBlockTargetTooFarDown.getter();
  v74[1] = v76;
  v16(v74 + v75, enum case for IQACode.targetTooFarDown(_:), v15);
  v77 = (v11 + 21 * v8);
  v78 = *(v7 + 48);
  *v77 = static DaemonInternalDefaultsKeys.livenessBlockNumFacesLow.getter();
  v77[1] = v79;
  v16(v77 + v78, enum case for IQACode.numFacesLow(_:), v15);
  v80 = (v11 + 22 * v8);
  v81 = *(v7 + 48);
  *v80 = static DaemonInternalDefaultsKeys.livenessBlockNumFacesHigh.getter();
  v80[1] = v82;
  v16(v80 + v81, enum case for IQACode.numFacesHigh(_:), v15);
  v83 = (v11 + 23 * v8);
  v84 = *(v7 + 48);
  *v83 = static DaemonInternalDefaultsKeys.livenessBlockLuxLevelLow.getter();
  v83[1] = v85;
  v16(v83 + v84, enum case for IQACode.luxLevelLow(_:), v15);
  v86 = &v11[3 * v8];
  v87 = *(v7 + 48);
  *v86 = static DaemonInternalDefaultsKeys.livenessBlockLuxLevelHigh.getter();
  v86[1] = v88;
  v16(v86 + v87, enum case for IQACode.luxLevelHigh(_:), v15);
  v89 = sub_10003F064(v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *a1 = v91;
  *(a1 + 8) = xmmword_1006DB250;
  *(a1 + 24) = vdupq_n_s64(5uLL);
  *(a1 + 40) = 1097859072;
  *(a1 + 48) = xmmword_1006DB260;
  *(a1 + 64) = xmmword_1006DB270;
  *&result = 3;
  *(a1 + 80) = xmmword_1006DAFF0;
  *(a1 + 96) = v89;
  return result;
}

double sub_1001C6430()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1._countAndFlagsBits = static DaemonInternalDefaultsKeys.explorationPercent.getter();
  v2 = NSUserDefaults.internalString(forKey:)(v1);

  if (!v2.value._object)
  {
    return 0.0;
  }

  v3 = sub_1001C5810(v2.value._countAndFlagsBits, v2.value._object);

  if (!v3)
  {
    return 0.0;
  }

  LODWORD(result) = 0;
  if (0.0 > 1.0)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1001C64EC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 2;
  }

  if (a1 == 116 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 102 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

_BYTE *sub_1001C6588@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtof_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

Swift::Int sub_1001C6608(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1003BD1D4(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 6;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v2[2 * i + 5];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 1))
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 2;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_100007224(&qword_10083C1A0, &qword_1006DA738);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_1001C6764(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1001C6764(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1003BBEA4(v8);
      v8 = result;
    }

    v81 = v8 + 2;
    v82 = v8[2];
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = &v8[2 * v82];
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_1001C6CF0((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = (v10 < v13) ^ (v17 >= v16);
        ++v14;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v7 = v14 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = v22[1];
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1003BC0AC(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v35 = v8[3];
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_1003BC0AC((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v36;
    v37 = v8 + 4;
    v38 = &v8[2 * v5 + 4];
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = v8[4];
          v40 = v8[5];
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = &v8[2 * v36];
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = &v37[2 * v5];
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = &v8[2 * v36];
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = &v37[2 * v5];
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v36)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = &v37[2 * v5 - 2];
        v77 = *v76;
        v78 = &v37[2 * v5];
        v79 = v78[1];
        sub_1001C6CF0((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = v8[2];
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        result = memmove(&v37[2 * v5], v78 + 2, 16 * (v80 - 1 - v5));
        v8[2] = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = &v37[2 * v36];
      v44 = *(v43 - 8);
      v45 = *(v43 - 7);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 6);
      v47 = *(v43 - 5);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = &v8[2 * v36];
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = &v37[2 * v5];
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (v30 >= *(v32 - 1))
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 2) = v33;
    v32 -= 2;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1001C6CF0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*(v6 + 1) < *(v4 + 1))
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 16;
    do
    {
      v17 = v5 + 16;
      if (*(v14 - 1) < *(v6 - 1))
      {
        v19 = v6 - 16;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 16, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 16;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 -= 16;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v20 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

void *sub_1001C6EF4()
{
  v59 = sub_10003DA34(_swiftEmptyArrayStorage);
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2._countAndFlagsBits = static DaemonInternalDefaultsKeys.turnRightOrder.getter();
  v60 = NSUserDefaults.internalInt(forKey:)(v2);
  value = v60.value;
  is_nil = v60.is_nil;

  if (!is_nil)
  {
    v5 = objc_allocWithZone(type metadata accessor for IdentityGesture());
    v6 = IdentityGesture.init(gesture:type:)();
    sub_10014C004(value, 0, v6);
  }

  v7 = [v0 standardUserDefaults];
  v8._countAndFlagsBits = static DaemonInternalDefaultsKeys.turnLeftOrder.getter();
  v61 = NSUserDefaults.internalInt(forKey:)(v8);
  v9 = v61.value;
  v10 = v61.is_nil;

  if (!v10)
  {
    v11 = objc_allocWithZone(type metadata accessor for IdentityGesture());
    v12 = IdentityGesture.init(gesture:type:)();
    sub_10014C004(v9, 0, v12);
  }

  v13 = [v0 standardUserDefaults];
  v14._countAndFlagsBits = static DaemonInternalDefaultsKeys.lookUpOrder.getter();
  v62 = NSUserDefaults.internalInt(forKey:)(v14);
  v15 = v62.value;
  v16 = v62.is_nil;

  if (!v16)
  {
    v17 = objc_allocWithZone(type metadata accessor for IdentityGesture());
    v18 = IdentityGesture.init(gesture:type:)();
    sub_10014C004(v15, 0, v18);
  }

  v19 = [v0 standardUserDefaults];
  v20._countAndFlagsBits = static DaemonInternalDefaultsKeys.lookDownOrder.getter();
  v63 = NSUserDefaults.internalInt(forKey:)(v20);
  v21 = v63.value;
  v22 = v63.is_nil;

  if (!v22)
  {
    v23 = objc_allocWithZone(type metadata accessor for IdentityGesture());
    v24 = IdentityGesture.init(gesture:type:)();
    sub_10014C004(v21, 0, v24);
  }

  v25 = [v0 standardUserDefaults];
  v26._countAndFlagsBits = static DaemonInternalDefaultsKeys.blinkOrder.getter();
  v64 = NSUserDefaults.internalInt(forKey:)(v26);
  v27 = v64.value;
  v28 = v64.is_nil;

  if (!v28)
  {
    v29 = objc_allocWithZone(type metadata accessor for IdentityGesture());
    v30 = IdentityGesture.init(gesture:type:)();
    sub_10014C004(v27, 0, v30);
  }

  v31 = [v0 standardUserDefaults];
  v32._countAndFlagsBits = static DaemonInternalDefaultsKeys.smileOrder.getter();
  v65 = NSUserDefaults.internalInt(forKey:)(v32);
  v33 = v65.value;
  v34 = v65.is_nil;

  if (!v34)
  {
    v35 = objc_allocWithZone(type metadata accessor for IdentityGesture());
    v36 = IdentityGesture.init(gesture:type:)();
    sub_10014C004(v33, 0, v36);
  }

  v37 = [v0 standardUserDefaults];
  v38._countAndFlagsBits = static DaemonInternalDefaultsKeys.openMouthOrder.getter();
  v66 = NSUserDefaults.internalInt(forKey:)(v38);
  v39 = v66.value;
  v40 = v66.is_nil;

  if (!v40)
  {
    v41 = objc_allocWithZone(type metadata accessor for IdentityGesture());
    v42 = IdentityGesture.init(gesture:type:)();
    sub_10014C004(v39, 0, v42);
  }

  v43 = [v0 standardUserDefaults];
  v44._countAndFlagsBits = static DaemonInternalDefaultsKeys.raiseEyebrowsOrder.getter();
  v67 = NSUserDefaults.internalInt(forKey:)(v44);
  v45 = v67.value;
  v46 = v67.is_nil;

  if (!v46)
  {
    v47 = objc_allocWithZone(type metadata accessor for IdentityGesture());
    v48 = IdentityGesture.init(gesture:type:)();
    sub_10014C004(v45, 0, v48);
  }

  v49 = *(v59 + 16);
  if (v49)
  {
    v50 = sub_1003BA078(*(v59 + 16), 0);
    v51 = sub_1003BC5B4(&v58, v50 + 4, v49, v59);

    sub_10001FA6C();
    if (v51 == v49)
    {
      goto LABEL_21;
    }

    __break(1u);
  }

  v50 = _swiftEmptyArrayStorage;
LABEL_21:
  v58 = v50;
  sub_1001C6608(&v58);
  v52 = v58;
  v53 = v58[2];
  if (v53)
  {
    v58 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v54 = 4;
    do
    {
      v55 = v52[v54];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v56 = v58[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v54 += 2;
      --v53;
    }

    while (v53);

    return v58;
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }
}

uint64_t sub_1001C73F4()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2._countAndFlagsBits = static DaemonInternalDefaultsKeys.overrideActiveLivenessConfig.getter();
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    sub_1001C6EF4();
    v4 = [v0 standardUserDefaults];
    v5._countAndFlagsBits = static DaemonInternalDefaultsKeys.minMatches.getter();
    NSUserDefaults.internalInt(forKey:)(v5);

    v6 = [v0 standardUserDefaults];
    v7._countAndFlagsBits = static DaemonInternalDefaultsKeys.timeToSkipOption.getter();
    NSUserDefaults.internalInt(forKey:)(v7);

    v8 = [v0 standardUserDefaults];
    v9._countAndFlagsBits = static DaemonInternalDefaultsKeys.timeToSkipAX.getter();
    NSUserDefaults.internalInt(forKey:)(v9);

    v10 = [v0 standardUserDefaults];
    v11._countAndFlagsBits = static DaemonInternalDefaultsKeys.timeToAlert.getter();
    NSUserDefaults.internalInt(forKey:)(v11);

    v12 = [v0 standardUserDefaults];
    v13._countAndFlagsBits = static DaemonInternalDefaultsKeys.timeToAlertAX.getter();
    NSUserDefaults.internalInt(forKey:)(v13);

    v14 = [v0 standardUserDefaults];
    v15._countAndFlagsBits = static DaemonInternalDefaultsKeys.activeRetakeCount.getter();
    NSUserDefaults.internalInt(forKey:)(v15);

    v16 = [v0 standardUserDefaults];
    v17._countAndFlagsBits = static DaemonInternalDefaultsKeys.activeTimeout.getter();
    NSUserDefaults.internalInt(forKey:)(v17);

    v18 = [v0 standardUserDefaults];
    v19._countAndFlagsBits = static DaemonInternalDefaultsKeys.activeFaceOutOfBounds.getter();
    v107 = NSUserDefaults.internalInt(forKey:)(v19);
    value = v107.value;
    is_nil = v107.is_nil;

    v22 = 30;
    if (!is_nil)
    {
      v22 = value;
    }

    v106 = v22;
    v23 = [v0 standardUserDefaults];
    v24._countAndFlagsBits = static DaemonInternalDefaultsKeys.gestureCompleteDelay.getter();
    v108 = NSUserDefaults.internalInt(forKey:)(v24);
    v25 = v108.value;
    v26 = v108.is_nil;

    if (v26)
    {
      v27 = 300;
    }

    else
    {
      v27 = v25;
    }

    v105 = v27;
    v28 = [v0 standardUserDefaults];
    v29._countAndFlagsBits = static DaemonInternalDefaultsKeys.tutorialVideoDelay.getter();
    v109 = NSUserDefaults.internalInt(forKey:)(v29);
    v30 = v109.value;
    v31 = v109.is_nil;

    if (v31)
    {
      v32 = 2000;
    }

    else
    {
      v32 = v30;
    }

    v104 = v32;
    v33 = [v0 standardUserDefaults];
    v34._countAndFlagsBits = static DaemonInternalDefaultsKeys.tutorialVideoDuration.getter();
    v110 = NSUserDefaults.internalInt(forKey:)(v34);
    v35 = v110.value;
    v36 = v110.is_nil;

    if (v36)
    {
      v37 = 2000;
    }

    else
    {
      v37 = v35;
    }

    v103 = v37;
    v38 = [v0 standardUserDefaults];
    v39._countAndFlagsBits = static DaemonInternalDefaultsKeys.tutorialResumeDelay.getter();
    v111 = NSUserDefaults.internalInt(forKey:)(v39);
    v40 = v111.value;
    v41 = v111.is_nil;

    if (v41)
    {
      v42 = 1000;
    }

    else
    {
      v42 = v40;
    }

    v102 = v42;
    v43 = [v0 standardUserDefaults];
    v44._countAndFlagsBits = static DaemonInternalDefaultsKeys.gestureDetectedSuccessDuration.getter();
    v112 = NSUserDefaults.internalInt(forKey:)(v44);
    v45 = v112.value;
    v46 = v112.is_nil;

    v47 = 3000;
    if (!v46)
    {
      v47 = v45;
    }

    v101 = v47;
    v48 = [v0 standardUserDefaults];
    v49._countAndFlagsBits = static DaemonInternalDefaultsKeys.lastGestureExtraFrameDuration.getter();
    v113 = NSUserDefaults.internalInt(forKey:)(v49);
    v50 = v113.value;
    v51 = v113.is_nil;

    if (v51)
    {
      v52 = 1000;
    }

    else
    {
      v52 = v50;
    }

    v53 = [v0 standardUserDefaults];
    v54._countAndFlagsBits = static DaemonInternalDefaultsKeys.activeGoodLux.getter();
    v55 = NSUserDefaults.internalBool(forKey:)(v54);

    v56 = [v0 standardUserDefaults];
    v57._countAndFlagsBits = static DaemonInternalDefaultsKeys.activeEnablePRD.getter();
    v58 = NSUserDefaults.internalBool(forKey:)(v57);

    v59 = [v0 standardUserDefaults];
    v60._countAndFlagsBits = static DaemonInternalDefaultsKeys.enableIDMatching.getter();
    v61 = NSUserDefaults.internalBool(forKey:)(v60);

    v62 = [v0 standardUserDefaults];
    v63._countAndFlagsBits = static DaemonInternalDefaultsKeys.requireSelfie.getter();
    v64 = NSUserDefaults.internalBool(forKey:)(v63);

    v65 = [v0 standardUserDefaults];
    v66._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableAutoFlash.getter();
    v67 = NSUserDefaults.internalBool(forKey:)(v66);

    v68 = objc_allocWithZone(type metadata accessor for IdentityActiveLivenessConfig());
    BYTE4(v100) = !v67;
    BYTE3(v100) = v64;
    BYTE2(v100) = v61;
    BYTE1(v100) = v58;
    LOBYTE(v100) = v55;
    v98 = v101;
    v99 = v52;
    v96 = v103;
    v97 = v102;
    v94 = v105;
    v95 = v104;
    v93 = v106;
    IdentityActiveLivenessConfig.init(gestureSequence:minRequiredGestureCount:timeToSkipOption:timeToSkipAccessible:timeToAlert:timeToAlertAccessible:maxRetakeCount:sessionTimeout:faceOutOfBoundFrames:gestureCompletionDelay:tutorialVideoDelay:tutorialVideoDuration:tutorialResumeDelay:gestureDetectedSuccessDuration:lastGestureExtraFrameDuration:requiresGoodLux:enablePrintReplay:enableIDMatching:requireSelfie:enableAutoFlash:)();
  }

  v69 = [v0 standardUserDefaults];
  v70._countAndFlagsBits = static DaemonInternalDefaultsKeys.overridePassiveLivenessConfig.getter();
  v71 = NSUserDefaults.internalBool(forKey:)(v70);

  if (v71)
  {
    v72 = [v0 standardUserDefaults];
    v73._countAndFlagsBits = static DaemonInternalDefaultsKeys.passiveRetakeCount.getter();
    NSUserDefaults.internalInt(forKey:)(v73);

    v74 = [v0 standardUserDefaults];
    v75._countAndFlagsBits = static DaemonInternalDefaultsKeys.passiveTimeout.getter();
    NSUserDefaults.internalInt(forKey:)(v75);

    v76 = [v0 standardUserDefaults];
    v77._countAndFlagsBits = static DaemonInternalDefaultsKeys.passiveFaceOutOfBounds.getter();
    NSUserDefaults.internalInt(forKey:)(v77);

    v78 = [v0 standardUserDefaults];
    v79._countAndFlagsBits = static DaemonInternalDefaultsKeys.passiveTotalFrameCount.getter();
    NSUserDefaults.internalInt(forKey:)(v79);

    v80 = [v0 standardUserDefaults];
    v81._countAndFlagsBits = static DaemonInternalDefaultsKeys.passiveMinValidFrameCount.getter();
    NSUserDefaults.internalInt(forKey:)(v81);

    v82 = [v0 standardUserDefaults];
    v83._countAndFlagsBits = static DaemonInternalDefaultsKeys.passiveGoodLux.getter();
    NSUserDefaults.internalBool(forKey:)(v83);

    v84 = [v0 standardUserDefaults];
    v85._countAndFlagsBits = static DaemonInternalDefaultsKeys.passiveEnablePRD.getter();
    NSUserDefaults.internalBool(forKey:)(v85);

    v86 = [v0 standardUserDefaults];
    v87._countAndFlagsBits = static DaemonInternalDefaultsKeys.passiveDisableStitch.getter();
    NSUserDefaults.internalBool(forKey:)(v87);

    v88 = [v0 standardUserDefaults];
    v89._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableAutoFlash.getter();
    NSUserDefaults.internalBool(forKey:)(v89);

    v90 = objc_allocWithZone(type metadata accessor for IdentityPassiveLivenessConfig());
    IdentityPassiveLivenessConfig.init(maxRetakeCount:sessionTimeout:faceOutOfBoundFrames:totalFrameCount:minimumValidFrameCount:requiresGoodLux:enablePrintReplay:disableStitchDetection:enableAutoFlash:useAuxiliaryURL:)();
  }

  v91 = objc_allocWithZone(type metadata accessor for IdentityLivenessConfig());
  return IdentityLivenessConfig.init(active:passive:)();
}

uint64_t sub_1001C7CB4()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_1001C7E0C, 0, 0);
}

uint64_t sub_1001C7E0C()
{
  v1 = v0[2];
  if (*(v1 + 96) != 1)
  {
    v22 = v0[9];
    defaultLogger()();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[7];
    if (v25)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "IdentityProofingProducedAssetManager not set to retry liveness video upload; skipping", v27, 2u);
    }

    v28 = v0[12];
    v29 = v0[13];
    v31 = v0[10];
    v30 = v0[11];
    v32 = v0[8];
    v33 = v0[5];
    (*(v26 + 8))(v0[9], v0[6]);

    v34 = v0[1];
    goto LABEL_19;
  }

  v2 = v0[13];
  defaultLogger()();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "IdentityProofingProducedAssetManager will re-attempt to upload liveness video", v5, 2u);
  }

  v6 = v0[13];
  v7 = v0[6];
  v8 = v0[7];

  v9 = *(v8 + 8);
  v0[14] = v9;
  v9(v6, v7);
  v10 = [objc_opt_self() standardUserDefaults];
  v11._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceLivenessVideoUploadFailure.getter();
  LOBYTE(v7) = NSUserDefaults.internalBool(forKey:)(v11);

  if (v7)
  {
    v12 = v0[12];
    defaultLogger()();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "IdentityProofingProducedAssetManager will throw an error as the internal settings to force liveness video upload is enabled", v15, 2u);
    }

    v16 = v0[12];
    v17 = v0[6];
    v18 = v0[7];
    v20 = v0[4];
    v19 = v0[5];
    v21 = v0[3];

    v9(v16, v17);
    (*(v20 + 104))(v19, enum case for DIPError.Code.livenessFileURLDoesntExist(_:), v21);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001D26F4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
LABEL_18:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v53 = v0[12];
    v52 = v0[13];
    v55 = v0[10];
    v54 = v0[11];
    v57 = v0[8];
    v56 = v0[9];
    v58 = v0[5];

    v34 = v0[1];
LABEL_19:

    return v34();
  }

  v35 = v0[2];
  v36 = *(v35 + 40);
  v0[15] = v36;
  if (!v36)
  {
    v42 = v0[10];
    defaultLogger()();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "IdentityProofingProducedAssetManager liveness video URL doesn't exist. Cannot upload video", v45, 2u);
    }

    v46 = v0[10];
    v47 = v0[6];
    v48 = v0[7];
    v50 = v0[4];
    v49 = v0[5];
    v51 = v0[3];

    v9(v46, v47);
    (*(v50 + 104))(v49, enum case for DIPError.Code.livenessFileURLDoesntExist(_:), v51);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001D26F4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    goto LABEL_18;
  }

  *(v1 + 96) = 0;
  v37 = *(v35 + 48);
  v38 = v36;
  v39 = swift_task_alloc();
  v0[16] = v39;
  *v39 = v0;
  v39[1] = sub_1001C8450;
  v40 = v0[2];

  return sub_1001CD638(v38, v37);
}

uint64_t sub_1001C8450()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_1001C86C8;
  }

  else
  {
    v3 = sub_1001C8564;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001C8564()
{
  v1 = *(v0 + 88);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 120);
  v6 = *(v0 + 56);
  if (v4)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "IdentityProofingProducedAssetManager successfully uploaded liveness video after workflow refetch", v7, 2u);
  }

  else
  {

    v2 = v5;
  }

  v8 = *(v0 + 104);
  v9 = *(v0 + 96);
  v11 = *(v0 + 72);
  v10 = *(v0 + 80);
  v12 = *(v0 + 64);
  v13 = *(v0 + 40);
  (*(v0 + 112))(*(v0 + 88), *(v0 + 48));

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1001C86C8()
{
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v3(v4, v6);
  swift_willThrow();

  v7 = v0[17];
  v9 = v0[12];
  v8 = v0[13];
  v11 = v0[10];
  v10 = v0[11];
  v13 = v0[8];
  v12 = v0[9];
  v14 = v0[5];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1001C87CC()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "ProducedAssetManager warmup end", v7, 2u);
  }

  return (*(v1 + 8))(v4, v0);
}

void sub_1001C8900(uint64_t a1, void *a2)
{
  v54 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v52 = *(v54 - 8);
  v4 = *(v52 + 64);
  __chkstk_darwin(v54);
  v53 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v50 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v49 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v55 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_100141FE4(0x61746E6567616DLL, 0xE700000000000000, &v55);
    _os_log_impl(&_mh_execute_header, v16, v17, "ProducedAssetManager warmup ODNator for %s", v18, 0xCu);
    sub_10000BB78(v19);
  }

  (*(v12 + 8))(v15, v11);
  v20 = *(a1 + 32) + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation;
  v21 = *(v20 + 8);
  v48 = *v20;
  v45 = v21;
  v22 = sub_10000BA08(a2, a2[3]);
  v23 = v22[1];
  v47 = *v22;
  v44 = v23;
  v24 = type metadata accessor for AssessDuringProofingODNator(0);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v27 = swift_allocObject();
  *(v27 + OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_odnNatorState) = 0;
  v28 = v27;
  v43 = v27;
  v29 = OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_assessmentResult;
  v30 = type metadata accessor for ODNAssessmentResult(0);
  (*(*(v30 - 8) + 56))(v28 + v29, 1, 1, v30);
  v46 = a1;
  v42 = OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_workQueue;
  sub_10017ABC8();
  v41 = "com.crimson.did.passport";

  static DispatchQoS.unspecified.getter();
  v55 = _swiftEmptyArrayStorage;
  v40[1] = sub_1001D26F4(&qword_1008465A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  v40[0] = sub_100007224(&unk_1008458B0, &qword_1006BF8A0);
  v40[2] = sub_10001F484(&qword_1008465B0, &unk_1008458B0, &qword_1006BF8A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v31 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v32 = v53;
  v52 = *(v52 + 104);
  v33 = v54;
  (v52)(v53, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v54);
  v34 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v35 = v43;
  *(v43 + v42) = v34;
  v41 = "com.apple.coreidvd.odnator";
  v42 = OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_recomputeQueue;
  static DispatchQoS.userInitiated.getter();
  v55 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (v52)(v32, v31, v33);
  *(v35 + v42) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v36 = sub_10051CE1C(v48, v45, 0x61746E6567616DLL, 0xE700000000000000, v47, v44, 0, 0, 3u, 1u);
  *(v36 + OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_odnNatorState) = 0;
  v37 = v46;
  v38 = *(v46 + 144);
  *(v46 + 144) = v36;
  v39 = v37;

  dispatch_group_leave(*(v39 + 104));
}

void sub_1001C8EB8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_100007224(&qword_10083D6A0, &unk_1006DB700);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v35 - v9;
  v11 = sub_100007224(&unk_10084A140, &unk_1006DB430);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v35 - v13;
  v15 = sub_100007224(&qword_10083D6A8, &qword_1006DB710);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v35 - v20;
  v22 = IdentityProofingDocuments.backID.getter();
  if (v22)
  {
    v23 = v22;
    v24 = IdentityDocument.pdf417Data.getter();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0xF000000000000000;
  }

  sub_1001C9270(v24, v26, v21);
  sub_10000BD94(v24, v26);
  v27 = OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_pdf417Data;
  swift_beginAccess();
  sub_1001D212C(v21, a1 + v27);
  swift_endAccess();
  if (*(a1 + 144))
  {
    v35 = a4;
    sub_10000BBC4(v21, v19, &qword_10083D6A8, &qword_1006DB710);
    v28 = type metadata accessor for PDF417Data();
    v29 = *(v28 - 8);
    v30 = (*(v29 + 48))(v19, 1, v28);

    if (v30 == 1)
    {
      sub_10000BE18(v19, &qword_10083D6A8, &qword_1006DB710);
      v31 = type metadata accessor for PDF417ParsedData();
      (*(*(v31 - 8) + 56))(v10, 1, 1, v31);
    }

    else
    {
      PDF417Data.parsedData.getter();
      (*(v29 + 8))(v19, v28);
    }

    v33 = *(a1 + 176);

    sub_100531168(v10, a3, v35, v33, v14);

    sub_10000BE18(v10, &qword_10083D6A0, &unk_1006DB700);
    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  sub_10000BE18(v21, &qword_10083D6A8, &qword_1006DB710);
  v34 = type metadata accessor for ODNAssessmentResult(0);
  (*(*(v34 - 8) + 56))(v14, v32, 1, v34);
  sub_10000BE18(v14, &unk_10084A140, &unk_1006DB430);
  dispatch_group_leave(*(a1 + 104));
}

uint64_t sub_1001C9270@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Logger();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  __chkstk_darwin(v8);
  if (a2 >> 60 == 15)
  {
    v9 = type metadata accessor for PDF417Data();
    v10 = *(*(v9 - 8) + 56);

    return v10(a3, 1, 1, v9);
  }

  else
  {
    v12 = type metadata accessor for JSONDecoder();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    sub_10000B8B8(a1, a2);
    JSONDecoder.init()();
    v15 = type metadata accessor for PDF417Data();
    sub_1001D26F4(&qword_10083D6B0, &type metadata accessor for PDF417Data);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    (*(*(v15 - 8) + 56))(a3, 0, 1, v15);

    return sub_10000BD94(a1, a2);
  }
}

void sub_1001C95F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v50 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v54 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v11;
  if (a2)
  {
    v51 = v8;
    v52 = v7;
    v53 = a1;
    v12 = sub_1001D2420(a2, &off_1007FB3E0);
    swift_arrayDestroy();
    v13 = sub_10003F278(_swiftEmptyArrayStorage);
    v14 = v12 + 8;
    v15 = 1 << *(v12 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & v12[8];
    v18 = (v15 + 63) >> 6;
    v58 = v12;

    v19 = 0;
    v56 = v18;
    v57 = v12 + 8;
    while (v17)
    {
      v22 = v19;
LABEL_12:
      v23 = (v22 << 10) | (16 * __clz(__rbit64(v17)));
      v24 = (v58[6] + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (v58[7] + v23);
      v28 = v27[1];
      v59 = *v27;

      v29 = String._bridgeToObjectiveC()();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = v13;
      v32 = sub_10004062C(v29);
      v33 = v13[2];
      v34 = (v31 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        goto LABEL_29;
      }

      v36 = v31;
      if (v13[3] >= v35)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100171520();
        }
      }

      else
      {
        sub_100169A70(v35, isUniquelyReferenced_nonNull_native);
        v37 = sub_10004062C(v29);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_31;
        }

        v32 = v37;
      }

      v17 &= v17 - 1;
      v13 = v60;
      if (v36)
      {
        v20 = (v60[7] + 16 * v32);
        v21 = v20[1];
        *v20 = v59;
        v20[1] = v28;
      }

      else
      {
        v60[(v32 >> 6) + 8] |= 1 << v32;
        *(v13[6] + 8 * v32) = v29;
        v39 = (v13[7] + 16 * v32);
        *v39 = v59;
        v39[1] = v28;

        v40 = v13[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_30;
        }

        v13[2] = v42;
      }

      v19 = v22;
      v18 = v56;
      v14 = v57;
    }

    while (1)
    {
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v22 >= v18)
      {

        v7 = v52;
        a1 = v53;
        v8 = v51;
        goto LABEL_23;
      }

      v17 = v14[v22];
      ++v19;
      if (v17)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    type metadata accessor for ODIAttributeKey(0);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    swift_arrayDestroy();
    v13 = 0;
LABEL_23:
    v43 = [objc_allocWithZone(ODIAdditionalAttributes) init];
    if (v13)
    {
      v44 = v54;
      v45 = defaultLogger()();
      __chkstk_darwin(v45);
      *(&v50 - 2) = v13;
      Logger.sensitive(_:)();
      (*(v55 + 8))(v44, v8);
      sub_10054C98C(v13);

      type metadata accessor for ODIAttributeKey(0);
      sub_1001D26F4(&qword_1008331A8, type metadata accessor for ODIAttributeKey);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v43 setAttributes:isa];
    }

    v47 = *(a1 + 152);
    if (v47)
    {
      [v47 updateWithAdditionalAttributes:v43];
    }

    v48 = type metadata accessor for TaskPriority();
    (*(*(v48 - 8) + 56))(v7, 1, 1, v48);
    v49 = swift_allocObject();
    v49[2] = 0;
    v49[3] = 0;
    v49[4] = a1;

    sub_1003E653C(0, 0, v7, &unk_1006DB448, v49);

    dispatch_group_leave(*(a1 + 104));
  }
}

unint64_t sub_1001C9B64()
{
  _StringGuts.grow(_:)(32);

  type metadata accessor for ODIAttributeKey(0);
  sub_1001D26F4(&qword_1008331A8, type metadata accessor for ODIAttributeKey);
  v0._countAndFlagsBits = Dictionary.description.getter();
  String.append(_:)(v0);

  return 0xD00000000000001ELL;
}

uint64_t sub_1001C9C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for TimeoutError();
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
  v11 = type metadata accessor for Logger();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_1001C9DDC, 0, 0);
}

uint64_t sub_1001C9DDC()
{
  v1 = v0[18];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Kicking off ODI", v4, 2u);
  }

  v5 = v0[18];
  v6 = v0[12];
  v7 = v0[13];
  v8 = v0[5];

  v9 = *(v7 + 8);
  v0[19] = v9;
  v9(v5, v6);
  v10 = async function pointer to withTaskTimeoutHandler<A>(timeout:operation:)[1];

  v11 = swift_task_alloc();
  v0[20] = v11;
  v12 = sub_100007224(&qword_10084A1D0, &qword_1006DB410);
  *v11 = v0;
  v11[1] = sub_1001C9F64;
  v13 = v0[5];
  v14.n128_u64[0] = 4.0;

  return withTaskTimeoutHandler<A>(timeout:operation:)(v0 + 2, &unk_1006DB458, v13, v12, v14);
}

uint64_t sub_1001C9F64()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_1001CA344;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_1001CA080;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001CA080()
{
  v37 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 40);
  v3 = *(v2 + 168);
  *(v2 + 160) = *(v0 + 16);

  defaultLogger()();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v36 = v7;
    *v6 = 136315138;
    v8 = *(v2 + 168);
    if (v8)
    {
      v9 = *(v2 + 160);
      v10 = v8;
    }

    else
    {
      v9 = 0;
      v10 = 0xE000000000000000;
    }

    v34 = *(v0 + 152);
    v15 = *(v0 + 136);
    v16 = *(v0 + 96);
    v17 = *(v0 + 104);

    v18 = sub_100141FE4(v9, v10, &v36);

    *(v6 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "ODI payload = %s", v6, 0xCu);
    sub_10000BB78(v7);

    v34(v15, v16);
  }

  else
  {
    v11 = *(v0 + 152);
    v12 = *(v0 + 136);
    v13 = *(v0 + 96);
    v14 = *(v0 + 104);

    v11(v12, v13);
  }

  v19 = *(v0 + 128);
  defaultLogger()();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Finished ODI", v22, 2u);
  }

  v23 = *(v0 + 144);
  v24 = *(v0 + 152);
  v26 = *(v0 + 128);
  v25 = *(v0 + 136);
  v28 = *(v0 + 112);
  v27 = *(v0 + 120);
  v29 = *(v0 + 96);
  v30 = *(v0 + 104);
  v33 = *(v0 + 88);
  v35 = *(v0 + 64);

  v24(v26, v29);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1001CA344()
{
  v1 = v0[21];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];

  v0[4] = v1;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  v5 = swift_dynamicCast();
  v6 = v0[21];
  if (v5)
  {
    v7 = v0[15];
    v8 = v0[21];

    defaultLogger()();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = 0x4010000000000000;
      _os_log_impl(&_mh_execute_header, v9, v10, "ODI timed out after %f seconds", v11, 0xCu);
    }

    v12 = v0[19];
    v13 = v0[14];
    v14 = v0[15];
    v15 = v0[12];
    v16 = v0[10];
    v17 = v0[11];
    v18 = v0[9];
    v41 = v0[7];
    v42 = v0[6];
    v44 = v0[8];

    v12(v14, v15);
    (*(v16 + 104))(v17, enum case for DIPError.Code.odiTimeout(_:), v18);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001D26F4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v12(v13, v15);

    (*(v41 + 8))(v44, v42);
    v19 = v0[4];
  }

  else
  {
    v45 = v0[19];
    v21 = v0[13];
    v20 = v0[14];
    v23 = v0[11];
    v22 = v0[12];
    v24 = v0[9];
    v25 = v0[10];
    v26 = v0[4];

    (*(v25 + 104))(v23, enum case for DIPError.Code.odiGeneralError(_:), v24);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001D26F4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v45(v20, v22);
  }

  v27 = v0[16];
  defaultLogger()();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Finished ODI", v30, 2u);
  }

  v31 = v0[18];
  v32 = v0[19];
  v34 = v0[16];
  v33 = v0[17];
  v36 = v0[14];
  v35 = v0[15];
  v37 = v0[12];
  v38 = v0[13];
  v43 = v0[11];
  v46 = v0[8];

  v32(v34, v37);

  v39 = v0[1];

  return v39();
}

uint64_t sub_1001CA888(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return _swift_task_switch(sub_1001CA8A8, 0, 0);
}

uint64_t sub_1001CA8A8()
{
  v1 = *(v0[21] + 152);
  v0[22] = v1;
  if (v1)
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1001CAA0C;
    v2 = swift_continuation_init();
    v0[17] = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100672A4C;
    v0[13] = &unk_10080A728;
    v0[14] = v2;
    [v1 getAssessment:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v3 = v0[20];
    *v3 = 0;
    v3[1] = 0;
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1001CAA0C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_1001CAB8C;
  }

  else
  {
    v3 = sub_1001CAB1C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001CAB1C()
{
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  *v2 = v0[18];
  v2[1] = v3;

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001CAB8C()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

uint64_t sub_1001CABFC(uint64_t a1, uint64_t a2, int a3)
{
  v104 = a2;
  v98 = a3;
  v4 = type metadata accessor for DIPError.Code();
  v100 = *(v4 - 8);
  v101 = v4;
  v5 = *(v100 + 64);
  __chkstk_darwin(v4);
  v102 = v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v97 = v95 - v9;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v106 = v10;
  v107 = v11;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v96 = v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v99 = v95 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = v95 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = v95 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = v95 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = v95 - v27;
  __chkstk_darwin(v26);
  v30 = v95 - v29;
  v31 = [objc_opt_self() standardUserDefaults];
  v32._countAndFlagsBits = static DaemonInternalDefaultsKeys.skipCloudKitUpload.getter();
  v33 = NSUserDefaults.internalBool(forKey:)(v32);

  if (!v33)
  {
    v109 = _swiftEmptyArrayStorage;
    v38 = IdentityProofingDocuments.selfie.getter();
    v95[1] = a1;
    if (v38)
    {
      v39 = v38;
      defaultLogger()();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "create upload asset for selfie", v42, 2u);
      }

      v43 = *(v107 + 8);
      v43(v28, v106);
      v44 = v103;
      v45 = *(v103 + 16);
      v46 = v105;
      v47 = sub_100182440(v39, 2, v104);
      v48 = v46;
      if (v46)
      {

LABEL_33:
        (*(v100 + 104))(v102, enum case for DIPError.Code.internalError(_:), v101);
        swift_errorRetain();
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_1001D26F4(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }

      v52 = v47;
      v53 = OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_cloudKitUploadAssets;
      swift_beginAccess();

      v54 = *(v44 + v53);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v108 = *(v44 + v53);
      *(v44 + v53) = 0x8000000000000000;
      sub_10016C328(v52, 0x6569666C6573, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
      *(v44 + v53) = v108;
      swift_endAccess();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v92 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v95[0] = v109;
    }

    else
    {
      defaultLogger()();
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "reset upload asset for selfie", v51, 2u);
      }

      v43 = *(v107 + 8);
      v43(v25, v106);
      v44 = v103;
      swift_beginAccess();
      sub_10014B6BC(0, 0x6569666C6573, 0xE600000000000000);
      swift_endAccess();
      v95[0] = _swiftEmptyArrayStorage;
      v48 = v105;
    }

    v56 = IdentityProofingDocuments.frontID.getter();
    if (v56)
    {
      v57 = v56;
      defaultLogger()();
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&_mh_execute_header, v58, v59, "create upload asset for ID front", v60, 2u);
      }

      v61 = v22;
      v62 = v106;
      v43(v61, v106);
      v63 = *(v44 + 16);
      v64 = sub_100182440(v57, 0, v104);
      if (v48)
      {

LABEL_32:

        goto LABEL_33;
      }

      v68 = v64;
      v69 = OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_cloudKitUploadAssets;
      swift_beginAccess();

      v70 = *(v44 + v69);
      v71 = swift_isUniquelyReferenced_nonNull_native();
      v108 = *(v44 + v69);
      *(v44 + v69) = 0x8000000000000000;
      sub_10016C328(v68, 0xD00000000000001ALL, 0x80000001006FAE90, v71);
      *(v44 + v69) = v108;
      swift_endAccess();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v93 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v95[0] = v109;
    }

    else
    {
      defaultLogger()();
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&_mh_execute_header, v65, v66, "reset upload asset for frontID", v67, 2u);
      }

      v62 = v106;
      v43(v19, v106);
      swift_beginAccess();
      sub_10014B6BC(0, 0xD00000000000001ALL, 0x80000001006FAE90);
      swift_endAccess();
    }

    v72 = v104;
    v73 = IdentityProofingDocuments.backID.getter();
    if (v73)
    {
      v74 = v73;
      defaultLogger()();
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&_mh_execute_header, v75, v76, "create upload asset for ID back", v77, 2u);
      }

      v43(v99, v62);
      v78 = *(v44 + 16);
      v79 = sub_100182440(v74, 1, v72);
      if (v48)
      {

        goto LABEL_32;
      }

      v85 = v79;
      v86 = OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_cloudKitUploadAssets;
      swift_beginAccess();

      v87 = *(v44 + v86);
      v88 = swift_isUniquelyReferenced_nonNull_native();
      v108 = *(v44 + v86);
      *(v44 + v86) = 0x8000000000000000;
      sub_10016C328(v85, 0xD000000000000019, 0x80000001006FAE70, v88);
      *(v44 + v86) = v108;
      swift_endAccess();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v94 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v84 = v109;
    }

    else
    {
      v80 = v96;
      defaultLogger()();
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&_mh_execute_header, v81, v82, "reset upload asset for backID", v83, 2u);
      }

      v43(v80, v62);
      swift_beginAccess();
      sub_10014B6BC(0, 0xD000000000000019, 0x80000001006FAE70);
      swift_endAccess();
      v84 = v95[0];
    }

    v89 = type metadata accessor for TaskPriority();
    v90 = v97;
    (*(*(v89 - 8) + 56))(v97, 1, 1, v89);
    v91 = swift_allocObject();
    *(v91 + 16) = 0;
    *(v91 + 24) = 0;
    *(v91 + 32) = v44;
    *(v91 + 40) = v84;
    *(v91 + 48) = v98 & 1;

    sub_1003E653C(0, 0, v90, &unk_1006DB4C8, v91);
  }

  defaultLogger()();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "SKIPPING CloudKit upload", v36, 2u);
  }

  return (*(v107 + 8))(v30, v106);
}

uint64_t sub_1001CB8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 112) = a6;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  v7 = type metadata accessor for Logger();
  *(v6 + 64) = v7;
  v8 = *(v7 - 8);
  *(v6 + 72) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_1001CB988, 0, 0);
}

uint64_t sub_1001CB988()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 48);
  v3 = *(v2 + 16);
  v4 = *(v2 + 120);
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_1001CBA44;
  v6 = *(v0 + 112);
  v7 = *(v0 + 56);

  return sub_10018689C(v7, (v1 & 1) == 0, v6, v4);
}

uint64_t sub_1001CBA44()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_1001CBC68;
  }

  else
  {
    v3 = sub_1001CBB58;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001CBB58()
{
  v1 = v0[11];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Assets uploaded to cloudkit successfully", v8, 2u);
  }

  (*(v7 + 8))(v5, v6);
  v10 = v0[10];
  v9 = v0[11];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1001CBC68()
{
  v26 = v0;
  v1 = v0[13];
  v2 = v0[10];
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[13];
    v6 = v0[9];
    v24 = v0[10];
    v7 = v0[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[2];
    v10 = v0[3];
    v12 = v0[4];
    v13 = Error.localizedDescription.getter();
    v15 = sub_100141FE4(v13, v14, &v25);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "received an error from uploads %s", v8, 0xCu);
    sub_10000BB78(v9);

    (*(v6 + 8))(v24, v7);
  }

  else
  {
    v16 = v0[13];
    v18 = v0[9];
    v17 = v0[10];
    v19 = v0[8];

    (*(v18 + 8))(v17, v19);
  }

  v21 = v0[10];
  v20 = v0[11];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1001CBE48(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 240) = a3;
  *(v4 + 248) = v3;
  *(v4 + 392) = a2;
  *(v4 + 232) = a1;
  v5 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  *(v4 + 256) = swift_task_alloc();
  v6 = type metadata accessor for DIPError.Code();
  *(v4 + 264) = v6;
  v7 = *(v6 - 8);
  *(v4 + 272) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 280) = swift_task_alloc();
  v9 = type metadata accessor for IdentityDocumentType.Category();
  *(v4 + 288) = v9;
  v10 = *(v9 - 8);
  *(v4 + 296) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 304) = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  *(v4 + 312) = v12;
  v13 = *(v12 - 8);
  *(v4 + 320) = v13;
  v14 = *(v13 + 64) + 15;
  *(v4 + 328) = swift_task_alloc();

  return _swift_task_switch(sub_1001CC000, 0, 0);
}

uint64_t sub_1001CC000()
{
  v1 = *(v0 + 328);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting opportunistic uploads flow", v4, 2u);
  }

  v6 = *(v0 + 320);
  v5 = *(v0 + 328);
  v7 = *(v0 + 312);

  (*(v6 + 8))(v5, v7);
  if (qword_100832B50 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 232);
  sub_10002ADA0(3);
  if (!v8)
  {
    (*(*(v0 + 272) + 104))(*(v0 + 280), enum case for DIPError.Code.proofingConfigurationUnavailable(_:), *(v0 + 264));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001D26F4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_21:
    v33 = *(v0 + 328);
    v34 = *(v0 + 304);
    v35 = *(v0 + 280);
    v36 = *(v0 + 256);

    v37 = *(v0 + 8);

    return v37();
  }

  v10 = *(v0 + 296);
  v9 = *(v0 + 304);
  v11 = *(v0 + 288);
  v12 = *(v0 + 232);
  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.category.getter();
  v13 = (*(v10 + 88))(v9, v11);
  if (v13 == enum case for IdentityDocumentType.Category.mDL(_:))
  {
    v14 = IdentityProofingConfiguration.state.getter();
    if (!v15)
    {
      (*(*(v0 + 272) + 104))(*(v0 + 280), enum case for DIPError.Code.idStateUnavailable(_:), *(v0 + 264));
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1001D26F4(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
LABEL_20:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      goto LABEL_21;
    }

    goto LABEL_12;
  }

  if (v13 != enum case for IdentityDocumentType.Category.passport(_:))
  {
    v20 = *(v0 + 296);
    v19 = *(v0 + 304);
    v21 = *(v0 + 288);
    (*(*(v0 + 272) + 104))(*(v0 + 280), enum case for DIPError.Code.idTypeUnavailable(_:), *(v0 + 264));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001D26F4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v20 + 8))(v19, v21);
    goto LABEL_21;
  }

  v14 = IdentityProofingConfiguration.country.getter();
  if (!v15)
  {
    (*(*(v0 + 272) + 104))(*(v0 + 280), enum case for DIPError.Code.idCountryUnavailable(_:), *(v0 + 264));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001D26F4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    goto LABEL_20;
  }

LABEL_12:
  v16 = v14;
  v17 = v15;
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v18 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v18 + 54);
  sub_1000318FC(&v18[4], v0 + 16);
  os_unfair_lock_unlock(v18 + 54);
  v23 = *(v0 + 240);
  v22 = *(v0 + 248);
  v24 = *(v0 + 392);
  v25 = *(v0 + 72);
  *(v0 + 336) = v25;

  sub_100031918(v0 + 16);
  v26 = swift_allocObject();
  *(v0 + 344) = v26;
  *(v26 + 16) = v12;
  *(v26 + 24) = v16;
  *(v26 + 32) = v17;
  *(v26 + 40) = v23;
  *(v26 + 48) = v22;
  *(v26 + 56) = v24;
  v27 = *(v25 + 16);
  v28 = swift_allocObject();
  *(v0 + 352) = v28;
  *(v28 + 16) = sub_1001D0948;
  *(v28 + 24) = v26;
  v29 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];
  v30 = v12;

  v31 = swift_task_alloc();
  *(v0 + 360) = v31;
  v32 = sub_100007224(&qword_10084A1D0, &qword_1006DB410);
  *v31 = v0;
  v31[1] = sub_1001CC7EC;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v0 + 216, sub_1001D09A8, v28, v32);
}

uint64_t sub_1001CC7EC()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v9 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v4 = sub_1001CCA94;
  }

  else
  {
    v5 = *(v2 + 344);
    v6 = *(v2 + 352);
    v7 = *(v2 + 336);

    *(v2 + 376) = *(v2 + 216);
    v4 = sub_1001CC930;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001CC930()
{
  v1 = *(v0 + 384);
  if (v1)
  {
    v2 = *(v0 + 376);
    v3 = *(v0 + 248);
    v4 = *(v0 + 256);
    v5 = *(v0 + 392);
    v7 = *(v0 + 232);
    v6 = *(v0 + 240);
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    *(v9 + 32) = v3;
    *(v9 + 40) = v2;
    *(v9 + 48) = v1;
    *(v9 + 56) = v7;
    *(v9 + 64) = v6;
    *(v9 + 72) = v5;

    sub_1003E653C(0, 0, v4, &unk_1006DB420, v9);
  }

  else
  {
  }

  v10 = *(v0 + 328);
  v11 = *(v0 + 304);
  v12 = *(v0 + 280);
  v13 = *(v0 + 256);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1001CCA94()
{
  v1 = v0[46];
  v2 = v0[43];
  v3 = v0[44];
  v4 = v0[42];
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[33];
  v8 = v0[29];

  (*(v6 + 104))(v5, enum case for DIPError.Code.internalError(_:), v7);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1001D26F4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v9 = v0[41];
  v10 = v0[38];
  v11 = v0[35];
  v12 = v0[32];

  v13 = v0[1];

  return v13();
}

void *sub_1001CCC70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X5>, int a5@<W6>, uint64_t *a6@<X8>)
{
  LODWORD(v46) = a5;
  v47 = a6;
  v48 = a4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = IdentityProofingConfiguration.documentType.getter();
  result = sub_10057847C(v15, a2, a3);
  if (!v6)
  {
    v17 = result;
    v44 = a1;
    v45 = 0;
    v18 = v48;
    if (result)
    {
      v19 = [result proofingSessionID];
      if (v19)
      {
        v20 = v19;
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v24 = IdentityProofingActionStatus.rawValue.getter();
        sub_10057F148(v24, 0);
        sub_10057F2D0(v46 & 1);
        v25 = v45;
        sub_1005783D4();
        if (v25)
        {
        }

        else
        {
          v39 = type metadata accessor for IdentityManagementSessionDelegate();
          v40 = [objc_opt_self() defaultCenter];
          v41 = String._bridgeToObjectiveC()();
          v49 = v39;
          sub_100007224(&qword_10083D698, &unk_1006DB6F0);
          [v40 postNotificationName:v41 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

          result = swift_unknownObjectRelease();
          v42 = v47;
          *v47 = v21;
          v42[1] = v23;
        }

        return result;
      }
    }

    defaultLogger()();

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v46 = v10;
      v28 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v49 = v44;
      *v28 = 136315650;
      v29 = *(v18 + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_documentType + 8);
      v43 = v11;
      if (v29)
      {
        v30 = 0xE300000000000000;
        v31 = 4999502;
      }

      else
      {
        v32 = *(v18 + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_documentType);
        v31 = IdentityDocumentType.description.getter();
        v30 = v33;
      }

      v34 = sub_100141FE4(v31, v30, &v49);

      *(v28 + 4) = v34;
      *(v28 + 12) = 2082;
      *(v28 + 14) = sub_100141FE4(a2, a3, &v49);
      *(v28 + 22) = 2082;
      v35 = IdentityTarget.debugDescription.getter();
      v37 = sub_100141FE4(v35, v36, &v49);

      *(v28 + 24) = v37;
      _os_log_impl(&_mh_execute_header, v26, v27, "proofing session for document type: %s, identifier %{public}s and %{public}s doesn't exist ", v28, 0x20u);
      swift_arrayDestroy();

      result = (*(v43 + 8))(v14, v46);
    }

    else
    {

      result = (*(v11 + 8))(v14, v10);
    }

    v38 = v47;
    *v47 = 0;
    v38[1] = 0;
  }

  return result;
}

uint64_t sub_1001CD074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v14;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 48) = a4;
  v9 = type metadata accessor for Logger();
  *(v8 + 88) = v9;
  v10 = *(v9 - 8);
  *(v8 + 96) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_1001CD154, 0, 0);
}

uint64_t sub_1001CD154()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(*(v0 + 48) + 24);
  v5 = IdentityProofingConfiguration.documentType.getter();
  if (v2 == 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  *v7 = v0;
  v7[1] = sub_1001CD234;
  v8 = *(v0 + 136);
  v9 = *(v0 + 56);

  return sub_100316898(v9, v3, 0, 0, v5, v6, 1, v8);
}

uint64_t sub_1001CD234()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1001CD458;
  }

  else
  {
    v3 = sub_1001CD348;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001CD348()
{
  v1 = v0[14];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[12];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Opportunistic Uploads complete", v8, 2u);
  }

  (*(v7 + 8))(v5, v6);
  v10 = v0[13];
  v9 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1001CD458()
{
  v26 = v0;
  v1 = v0[16];
  v2 = v0[13];
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[16];
    v6 = v0[12];
    v24 = v0[13];
    v7 = v0[11];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[2];
    v10 = v0[3];
    v12 = v0[4];
    v13 = Error.localizedDescription.getter();
    v15 = sub_100141FE4(v13, v14, &v25);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received an error during opportunistic uploads %s", v8, 0xCu);
    sub_10000BB78(v9);

    (*(v6 + 8))(v24, v7);
  }

  else
  {
    v16 = v0[16];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[11];

    (*(v18 + 8))(v17, v19);
  }

  v21 = v0[13];
  v20 = v0[14];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1001CD638(uint64_t a1, char a2)
{
  *(v3 + 552) = a2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v2;
  v4 = type metadata accessor for DIPError();
  *(v3 + 344) = v4;
  v5 = *(v4 - 8);
  *(v3 + 352) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 360) = swift_task_alloc();
  v7 = type metadata accessor for DIPError.Code();
  *(v3 + 368) = v7;
  v8 = *(v7 - 8);
  *(v3 + 376) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 384) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v3 + 392) = v10;
  v11 = *(v10 - 8);
  *(v3 + 400) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 408) = swift_task_alloc();
  *(v3 + 416) = swift_task_alloc();
  *(v3 + 424) = swift_task_alloc();
  *(v3 + 432) = swift_task_alloc();
  *(v3 + 440) = swift_task_alloc();
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();
  *(v3 + 464) = swift_task_alloc();

  return _swift_task_switch(sub_1001CD808, 0, 0);
}

uint64_t sub_1001CD808()
{
  v71 = v0;
  v1 = *(v0 + 464);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 464);
  v6 = *(v0 + 392);
  v7 = *(v0 + 400);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v70 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD00000000000003CLL, 0x8000000100705300, &v70);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s start", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  *(v0 + 472) = v10;
  v11 = *(v0 + 552);
  v12 = *(v0 + 328);
  v13 = *(v0 + 336);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  *(v13 + 48) = v11;
  v15 = *(v13 + 120);
  *(v0 + 480) = v15;
  v16 = v12;
  dispatch_group_enter(v15);
  v17 = *(v13 + 128);
  *(v0 + 488) = v17;
  dispatch_group_enter(v17);
  if (*(v13 + 184))
  {
    v18 = *(v0 + 448);
    defaultLogger()();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 448);
    v23 = *(v0 + 392);
    v24 = *(v0 + 400);
    if (v21)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "LivenessStepUp upload video called", v25, 2u);
    }

    v10(v22, v23);
LABEL_16:
    v32 = *(v0 + 336);
    *(v0 + 312) = _swiftEmptyArrayStorage;
    v33 = *(v32 + 104);
    v34 = async function pointer to OS_dispatch_group.wait()[1];
    v35 = swift_task_alloc();
    *(v0 + 496) = v35;
    *v35 = v0;
    v35[1] = sub_1001CDE78;

    return OS_dispatch_group.wait()();
  }

  else
  {
    v26 = *(v0 + 336);
    swift_beginAccess();
    sub_10000BBC4(v26 + 56, v0 + 152, &qword_10083D0A0, &qword_1006DAFC0);
    if (*(v0 + 176))
    {
      sub_10001F358((v0 + 152), v0 + 112);
      v27 = sub_10000BA08((v0 + 112), *(v0 + 136));
      v28 = *(v27 + *(type metadata accessor for Workflow() + 80));
      v29 = (v28 + 40);
      v30 = *(v28 + 16) + 1;
      while (--v30)
      {
        if (*(v29 - 1) != 0x69566569666C6573 || *v29 != 0xEB000000006F6564)
        {
          v29 += 19;
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            continue;
          }
        }

        sub_10000BB78((v0 + 112));
        goto LABEL_16;
      }

      v51 = *(v0 + 456);
      defaultLogger()();
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&_mh_execute_header, v52, v53, "skipped video upload based on workflow settings", v54, 2u);
      }

      v55 = *(v0 + 456);
      v56 = *(v0 + 392);
      v57 = *(v0 + 400);

      v10(v55, v56);
      dispatch_group_leave(v15);
      dispatch_group_leave(v17);
      sub_10000BB78((v0 + 112));
      v58 = *(v0 + 456);
      v59 = *(v0 + 464);
      v61 = *(v0 + 440);
      v60 = *(v0 + 448);
      v63 = *(v0 + 424);
      v62 = *(v0 + 432);
      v65 = *(v0 + 408);
      v64 = *(v0 + 416);
      v66 = *(v0 + 384);
      v69 = *(v0 + 360);
      sub_1001CF4EC();

      v50 = *(v0 + 8);
    }

    else
    {
      v37 = *(v0 + 376);
      v36 = *(v0 + 384);
      v38 = *(v0 + 368);
      v40 = *(v0 + 336);
      v39 = *(v0 + 344);
      sub_10000BE18(v0 + 152, &qword_10083D0A0, &qword_1006DAFC0);
      dispatch_group_leave(v17);
      dispatch_group_leave(v15);
      *(v40 + 96) = 1;
      (*(v37 + 104))(v36, enum case for DIPError.Code.missingIdentityWorkFlow(_:), v38);
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_1001D26F4(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      v42 = *(v0 + 456);
      v41 = *(v0 + 464);
      v44 = *(v0 + 440);
      v43 = *(v0 + 448);
      v46 = *(v0 + 424);
      v45 = *(v0 + 432);
      v48 = *(v0 + 408);
      v47 = *(v0 + 416);
      v49 = *(v0 + 384);
      v68 = *(v0 + 360);
      sub_1001CF4EC();

      v50 = *(v0 + 8);
    }

    return v50();
  }
}

uint64_t sub_1001CDE78()
{
  v1 = *(*v0 + 496);
  v3 = *v0;

  return _swift_task_switch(sub_1001CDF74, 0, 0);
}

uint64_t sub_1001CDF74()
{
  v1 = *(v0 + 336);
  swift_beginAccess();
  sub_10000BBC4(v1 + 192, v0 + 64, &qword_10083D4B8, &qword_1006DB470);
  if (*(v0 + 88))
  {
    v3 = *(v0 + 328);
    v2 = *(v0 + 336);
    v4 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v4;
    *(v0 + 48) = *(v0 + 96);
    v5 = *(v2 + 16);
    v6 = IdentityProofingLivenessVideoURL.fileHandle.getter();
    v7 = sub_100184250(v6, 3, v0 + 16);
    *(v0 + 504) = v7;
    v31 = v7;
    v32 = *(v0 + 336);

    v33 = OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_cloudKitUploadAssets;
    swift_beginAccess();

    v34 = *(v32 + v33);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = *(v32 + v33);
    *(v32 + v33) = 0x8000000000000000;
    sub_10016C328(v31, 0xD000000000000011, 0x80000001006FAE50, isUniquelyReferenced_nonNull_native);
    *(v32 + v33) = v81;
    swift_endAccess();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v0 + 312) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 312) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v69 = *((*(v0 + 312) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v36 = *(v0 + 328);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v37 = *(v0 + 312);
    v38 = IdentityProofingLivenessVideoURL.auxiliaryFileHandle.getter();
    if (v38)
    {
      v39 = v38;
      v40 = [objc_opt_self() standardUserDefaults];
      v41._countAndFlagsBits = static DaemonInternalDefaultsKeys.skipUploadAuxVideo.getter();
      v42 = NSUserDefaults.internalBool(forKey:)(v41);

      if (v42)
      {
        v43 = *(v0 + 440);
        defaultLogger()();
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.debug.getter();
        v46 = os_log_type_enabled(v44, v45);
        v47 = *(v0 + 472);
        v80 = *(v0 + 440);
        v49 = *(v0 + 392);
        v48 = *(v0 + 400);
        if (v46)
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&_mh_execute_header, v44, v45, "Internal setting enabled, will skip uploading ILSU auxiliary video to cloudkit", v50, 2u);
        }

        else
        {
        }

        v47(v80, v49);
      }

      else
      {
        v51 = v39;
        v52 = sub_100184250(v39, 4, v0 + 16);

        swift_beginAccess();

        v53 = *(v32 + v33);
        v54 = swift_isUniquelyReferenced_nonNull_native();
        v82 = *(v32 + v33);
        *(v32 + v33) = 0x8000000000000000;
        sub_10016C328(v52, 0xD000000000000014, 0x80000001006FAE30, v54);
        *(v32 + v33) = v82;
        swift_endAccess();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v0 + 312) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 312) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v70 = *((*(v0 + 312) & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v37 = *(v0 + 312);
      }
    }

    *(v0 + 512) = v37;
    if (*(v0 + 552))
    {
      v55 = *(v0 + 432);
      defaultLogger()();
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v56, v57, "User has opted out of uploading liveness video on cellular network. Will attempt to upload in the background when the device connects to WIFI.", v58, 2u);
      }

      v59 = *(v0 + 472);
      v60 = *(v0 + 432);
      v61 = *(v0 + 392);
      v62 = *(v0 + 400);

      v59(v60, v61);
      v63 = swift_task_alloc();
      *(v0 + 536) = v63;
      *v63 = v0;
      v63[1] = sub_1001CEAF0;
      v64 = v37;
      v65 = 0;
      v66 = 1;
    }

    else
    {
      v67 = *(v0 + 488);
      sub_1001B7154(v0 + 16);

      dispatch_group_leave(v67);
      v68 = swift_task_alloc();
      *(v0 + 520) = v68;
      *v68 = v0;
      v68[1] = sub_1001CE8E0;
      v64 = v37;
      v65 = 1;
      v66 = 0;
    }

    return sub_10018689C(v64, v65, v66, 0);
  }

  else
  {
    v9 = *(v0 + 376);
    v8 = *(v0 + 384);
    v10 = *(v0 + 368);
    v11 = *(v0 + 344);
    sub_10000BE18(v0 + 64, &qword_10083D4B8, &qword_1006DB470);
    (*(v9 + 104))(v8, enum case for DIPError.Code.baaCertificateDoesntExist(_:), v10);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1001D26F4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    group = *(v0 + 480);
    v79 = *(v0 + 488);
    v73 = *(v0 + 416);
    v74 = *(v0 + 400);
    v75 = *(v0 + 392);
    v76 = *(v0 + 472);
    v12 = *(v0 + 376);
    v13 = *(v0 + 384);
    v14 = *(v0 + 368);
    v15 = *(v0 + 344);
    v71 = *(v0 + 360);
    v72 = *(v0 + 352);
    v16 = *(v0 + 336);
    swift_errorRetain();
    swift_errorRetain();
    sub_1001CF684();
    (*(v12 + 104))(v13, enum case for DIPError.Code.internalError(_:), v14);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1001D26F4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    v17 = *(v72 + 16);
    v17(v18, v71, v15);
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v76(v73, v75);

    dispatch_group_leave(group);
    dispatch_group_leave(v79);
    swift_allocError();
    v17(v19, v71, v15);
    swift_willThrow();

    (*(v72 + 8))(v71, v15);
    v21 = *(v0 + 456);
    v20 = *(v0 + 464);
    v23 = *(v0 + 440);
    v22 = *(v0 + 448);
    v25 = *(v0 + 424);
    v24 = *(v0 + 432);
    v27 = *(v0 + 408);
    v26 = *(v0 + 416);
    v28 = *(v0 + 384);
    groupa = *(v0 + 360);
    sub_1001CF4EC();

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_1001CE8E0()
{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v7 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    v4 = sub_1001CF21C;
  }

  else
  {
    v5 = *(v2 + 512);

    v4 = sub_1001CE9FC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001CE9FC()
{
  dispatch_group_leave(*(v0 + 480));
  v1 = *(v0 + 456);
  v2 = *(v0 + 464);
  v4 = *(v0 + 440);
  v3 = *(v0 + 448);
  v6 = *(v0 + 424);
  v5 = *(v0 + 432);
  v8 = *(v0 + 408);
  v7 = *(v0 + 416);
  v9 = *(v0 + 384);
  v12 = *(v0 + 360);
  sub_1001CF4EC();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1001CEAF0()
{
  v2 = *v1;
  v3 = *(*v1 + 536);
  v7 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {
    v4 = sub_1001CEDBC;
  }

  else
  {
    v5 = *(v2 + 512);

    v4 = sub_1001CEC0C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001CEC0C()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 424);
  dispatch_group_leave(*(v0 + 488));
  dispatch_group_leave(v1);
  defaultLogger()();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Upload assets saved to disk for scheduled upload to CloudKit", v5, 2u);
  }

  v6 = *(v0 + 504);
  v7 = *(v0 + 472);
  v8 = *(v0 + 424);
  v9 = *(v0 + 392);
  v10 = *(v0 + 400);

  v7(v8, v9);
  sub_1001B7154(v0 + 16);
  v11 = *(v0 + 456);
  v12 = *(v0 + 464);
  v14 = *(v0 + 440);
  v13 = *(v0 + 448);
  v16 = *(v0 + 424);
  v15 = *(v0 + 432);
  v18 = *(v0 + 408);
  v17 = *(v0 + 416);
  v19 = *(v0 + 384);
  v22 = *(v0 + 360);
  sub_1001CF4EC();

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1001CEDBC()
{
  v55 = v0;
  v1 = v0[68];
  v2 = v0[64];
  v3 = v0[51];

  defaultLogger()();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[68];
    v52 = v0[59];
    v8 = v0[50];
    v7 = v0[51];
    v9 = v0[49];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v54 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v13 = v0[33];
    v12 = v0[34];
    v14 = v0[35];
    v15 = Error.localizedDescription.getter();
    v17 = sub_100141FE4(v15, v16, &v54);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received an error during saving the uploads to disk for scheduled upload to CloudKit %s", v10, 0xCu);
    sub_10000BB78(v11);

    (v52)(v7, v9);
  }

  else
  {
    v18 = v0[59];
    v20 = v0[50];
    v19 = v0[51];
    v21 = v0[49];

    v18(v19, v21);
  }

  v22 = v0[68];
  v23 = v0[63];
  swift_willThrow();

  sub_1001B7154((v0 + 2));
  v24 = v0[68];
  group = v0[60];
  v53 = v0[61];
  v25 = v0[52];
  v48 = v0[49];
  v49 = v0[59];
  v26 = v0[47];
  v27 = v0[48];
  v28 = v0[46];
  v45 = v0[45];
  v29 = v0[43];
  v46 = v0[44];
  v47 = v0[50];
  v30 = v0[42];
  swift_errorRetain();
  swift_errorRetain();
  sub_1001CF684();
  (*(v26 + 104))(v27, enum case for DIPError.Code.internalError(_:), v28);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1001D26F4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v31 = *(v46 + 16);
  v31(v32, v45, v29);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v49(v25, v48);

  dispatch_group_leave(group);
  dispatch_group_leave(v53);
  swift_allocError();
  v31(v33, v45, v29);
  swift_willThrow();

  (*(v46 + 8))(v45, v29);
  v35 = v0[57];
  v34 = v0[58];
  v37 = v0[55];
  v36 = v0[56];
  v39 = v0[53];
  v38 = v0[54];
  v41 = v0[51];
  v40 = v0[52];
  v42 = v0[48];
  groupa = v0[45];
  sub_1001CF4EC();

  v43 = v0[1];

  return v43();
}

uint64_t sub_1001CF21C()
{
  v1 = v0[66];
  v2 = v0[64];
  v27 = v0[59];
  group = v0[60];
  v24 = v0[52];
  v25 = v0[50];
  v26 = v0[49];
  v3 = v0[47];
  v4 = v0[48];
  v5 = v0[45];
  v6 = v0[46];
  v8 = v0[43];
  v7 = v0[44];
  v9 = v0[42];

  swift_errorRetain();
  sub_1001CF684();
  (*(v3 + 104))(v4, enum case for DIPError.Code.internalError(_:), v6);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1001D26F4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v10 = *(v7 + 16);
  v10(v11, v5, v8);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v27(v24, v26);

  swift_allocError();
  v10(v12, v5, v8);
  swift_willThrow();

  (*(v7 + 8))(v5, v8);
  dispatch_group_leave(group);
  v14 = v0[57];
  v13 = v0[58];
  v16 = v0[55];
  v15 = v0[56];
  v18 = v0[53];
  v17 = v0[54];
  v20 = v0[51];
  v19 = v0[52];
  v21 = v0[48];
  groupa = v0[45];
  sub_1001CF4EC();

  v22 = v0[1];

  return v22();
}

uint64_t sub_1001CF4EC()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100141FE4(0xD00000000000003CLL, 0x8000000100705300, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s end", v7, 0xCu);
    sub_10000BB78(v8);
  }

  return (*(v1 + 8))(v4, v0);
}

unint64_t sub_1001CF684()
{
  v1 = type metadata accessor for DIPError.PropertyKey();
  v2 = *(v1 - 8);
  v3 = v2[8];
  __chkstk_darwin(v1);
  v5 = &v30[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10003C9C0(_swiftEmptyArrayStorage);
  swift_beginAccess();
  sub_10000BBC4(v0 + 56, &v32, &qword_10083D0A0, &qword_1006DAFC0);
  if (v33)
  {
    sub_10001F358(&v32, v35);
    v7 = v2[13];
    v7(v5, enum case for DIPError.PropertyKey.inoWorkflowID(_:), v1);
    v8 = sub_10000BA08(v35, v36);
    v9 = *v8;
    v10 = v8[1];
    v33 = &type metadata for String;
    v34 = &protocol witness table for String;
    *&v32 = v9;
    *(&v32 + 1) = v10;
    sub_10001F358(&v32, v30);

    LOBYTE(v10) = swift_isUniquelyReferenced_nonNull_native();
    v29 = v6;
    v11 = v31;
    v12 = sub_10001F370(v30, v31);
    v13 = *(*(v11 - 8) + 64);
    __chkstk_darwin(v12);
    v15 = (&v30[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    sub_100658FF4(*v15, v15[1], v5, v10, &v29);
    v17 = v2[1];
    v17(v5, v1);
    sub_10000BB78(v30);
    v18 = v29;
    v7(v5, enum case for DIPError.PropertyKey.inoProviderID(_:), v1);
    v19 = sub_10000BA08(v35, v36);
    v20 = v19[6];
    v21 = v19[7];
    v33 = &type metadata for String;
    v34 = &protocol witness table for String;
    *&v32 = v20;
    *(&v32 + 1) = v21;
    sub_10001F358(&v32, v30);

    LOBYTE(v21) = swift_isUniquelyReferenced_nonNull_native();
    v29 = v18;
    v22 = v31;
    v23 = sub_10001F370(v30, v31);
    v24 = *(*(v22 - 8) + 64);
    __chkstk_darwin(v23);
    v26 = (&v30[-1] - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v27 + 16))(v26);
    sub_100658FF4(*v26, v26[1], v5, v21, &v29);
    v17(v5, v1);
    sub_10000BB78(v30);
    v6 = v29;
    sub_10000BB78(v35);
  }

  else
  {
    sub_10000BE18(&v32, &qword_10083D0A0, &qword_1006DAFC0);
  }

  return v6;
}

uint64_t sub_1001CFA4C()
{
  v1[2] = v0;
  v2 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_1001CFB50, 0, 0);
}

uint64_t sub_1001CFB50()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2._countAndFlagsBits = static DaemonInternalDefaultsKeys.skipODIAssessment.getter();
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    v4 = v0[7];
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "skipping ODI payload", v7, 2u);
    }

    v8 = v0[7];
    v9 = v0[4];
    v10 = v0[5];
    v12 = v0[2];
    v11 = v0[3];

    (*(v10 + 8))(v8, v9);
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v12;

    sub_1003E653C(0, 0, v11, &unk_1006DB4B8, v14);
  }

  else
  {
    v15 = v0[2];
    v17 = *(v15 + 160);
    v16 = *(v15 + 168);
    if (v16)
    {
      v18 = v0[3];
      v19 = type metadata accessor for TaskPriority();
      (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
      v20 = swift_allocObject();
      v20[2] = 0;
      v20[3] = 0;
      v20[4] = v15;

      sub_1003E653C(0, 0, v18, &unk_1006DB4A8, v20);

      goto LABEL_11;
    }

    v21 = v0[6];
    v22 = v0[3];
    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v15;

    sub_1003E653C(v17, 0, v22, &unk_1006DB498, v24);

    defaultLogger()();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    v27 = os_log_type_enabled(v25, v26);
    v29 = v0[5];
    v28 = v0[6];
    v30 = v0[4];
    if (v27)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "ODI payload missing", v31, 2u);
    }

    (*(v29 + 8))(v28, v30);
  }

  v17 = 0;
  v16 = 0xE000000000000000;
LABEL_11:
  v33 = v0[6];
  v32 = v0[7];
  v34 = v0[3];

  v35 = v0[1];

  return v35(v17, v16);
}

uint64_t sub_1001CFF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_1001D0004, 0, 0);
}

uint64_t sub_1001D0004()
{
  v1 = v0[5];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "providing ODI feedback discarded", v4, 2u);
  }

  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[2];
  v7 = v0[3];

  (*(v6 + 8))(v5, v7);
  v9 = *(v8 + 152);
  if (v9)
  {
    [v9 provideFeedbackOnPayloadOutcome:1];
  }

  v10 = v0[5];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1001D0124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_1001D01E4, 0, 0);
}

uint64_t sub_1001D01E4()
{
  v1 = v0[5];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "providing ODI feedback timedout or error", v4, 2u);
  }

  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[2];
  v7 = v0[3];

  (*(v6 + 8))(v5, v7);
  v9 = *(v8 + 152);
  if (v9)
  {
    [v9 provideFeedbackOnPayloadOutcome:2];
  }

  v10 = v0[5];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1001D0304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_1001D03C4, 0, 0);
}

uint64_t sub_1001D03C4()
{
  v1 = v0[5];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "providing ODI feedback ingested", v4, 2u);
  }

  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[2];
  v7 = v0[3];

  (*(v6 + 8))(v5, v7);
  v9 = *(v8 + 152);
  if (v9)
  {
    [v9 provideFeedbackOnPayloadOutcome:0];
  }

  v10 = v0[5];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1001D04E4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_10000BE18(v0 + 56, &qword_10083D0A0, &qword_1006DAFC0);
  v3 = *(v0 + 144);

  v4 = *(v0 + 168);

  v5 = *(v0 + 176);

  sub_10000BE18(v0 + 192, &qword_10083D4B8, &qword_1006DB470);
  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_pdf417Data, &qword_10083D6A8, &qword_1006DB710);
  v6 = *(v0 + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_cloudKitUploadAssets);

  v7 = *(v0 + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportMRZ + 8);

  v8 = *(v0 + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportNFC);

  sub_10000BD94(*(v0 + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportHash), *(v0 + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportHash + 8));
  return v0;
}

uint64_t sub_1001D05FC()
{
  sub_1001D04E4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IdentityProofingProducedAssetManager()
{
  result = qword_10083D550;
  if (!qword_10083D550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001D06A8()
{
  sub_1001D07C4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1001D07C4()
{
  if (!qword_10083D560)
  {
    type metadata accessor for PDF417Data();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10083D560);
    }
  }
}

unint64_t *sub_1001D081C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_1001D225C(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

double sub_1001D08B8@<D0>(void *a1@<X0>, void (*a2)(__int128 *__return_ptr, void)@<X1>, _OWORD *a3@<X8>)
{
  a2(&v6, *a1);
  if (!v3)
  {
    result = *&v6;
    *a3 = v6;
  }

  return result;
}

uint64_t sub_1001D0900()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 57, 7);
}

void *sub_1001D0948@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 40);
  return sub_1001CCC70(a1, *(v2 + 24), *(v2 + 32), *(v2 + 48), *(v2 + 56), a2);
}

uint64_t sub_1001D0970()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1001D09A8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v5(&v8, *a1);
  if (!v3)
  {
    result = *&v8;
    *a2 = v8;
  }

  return result;
}

uint64_t sub_1001D09F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_1001D0A40(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100041F04;

  return sub_1001CD074(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1001D0B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[44] = a4;
  v5[45] = v4;
  v5[42] = a2;
  v5[43] = a3;
  v5[41] = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v5[46] = v6;
  v7 = *(v6 - 8);
  v5[47] = v7;
  v8 = *(v7 + 64) + 15;
  v5[48] = swift_task_alloc();
  v9 = type metadata accessor for DispatchQoS();
  v5[49] = v9;
  v10 = *(v9 - 8);
  v5[50] = v10;
  v11 = *(v10 + 64) + 15;
  v5[51] = swift_task_alloc();
  v12 = type metadata accessor for IdentityDocumentType.Category();
  v5[52] = v12;
  v13 = *(v12 - 8);
  v5[53] = v13;
  v14 = *(v13 + 64) + 15;
  v5[54] = swift_task_alloc();
  v15 = type metadata accessor for Logger();
  v5[55] = v15;
  v16 = *(v15 - 8);
  v5[56] = v16;
  v17 = *(v16 + 64) + 15;
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();

  return _swift_task_switch(sub_1001D0D30, 0, 0);
}

id sub_1001D0D30()
{
  v87 = v0;
  v1 = v0[60];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "ProducedAssetManager warmup start", v4, 2u);
  }

  v5 = v0[60];
  v7 = v0[55];
  v6 = v0[56];
  v8 = v0[53];
  v80 = v0[54];
  v82 = v0[52];
  v10 = v0[44];
  v9 = v0[45];
  v12 = v0[42];
  v11 = v0[43];
  v78 = v0[41];

  v13 = v7;
  v14 = *(v6 + 8);
  v14(v5, v13);
  sub_100020260(v12, (v0 + 14));
  swift_beginAccess();
  sub_1000B2764((v0 + 14), v9 + 56, &qword_10083D0A0, &qword_1006DAFC0);
  swift_endAccess();
  sub_1001B6EF4(v11, (v0 + 2));
  swift_beginAccess();
  sub_1000B2764((v0 + 2), v9 + 192, &qword_10083D4B8, &qword_1006DB470);
  swift_endAccess();
  v15 = *(v9 + 176);
  *(v9 + 176) = v10;

  v16 = v9 + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_documentType;
  *v16 = v78;
  *(v16 + 8) = 0;
  IdentityDocumentType.category.getter();
  v17 = (*(v8 + 88))(v80, v82);
  if (v17 == enum case for IdentityDocumentType.Category.mDL(_:))
  {
    v18 = v0[51];
    v19 = v0[48];
    v81 = v0[50];
    v83 = v0[49];
    v20 = v0[46];
    v21 = v0[47];
    v22 = v0[45];
    v23 = v0[42];
    dispatch_group_enter(*(v22 + 104));
    v79 = *(v22 + 112);
    sub_100020260(v23, (v0 + 29));
    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    sub_10001F358((v0 + 29), v24 + 24);
    v0[12] = sub_1001D26E8;
    v0[13] = v24;
    v0[8] = _NSConcreteStackBlock;
    v0[9] = 1107296256;
    v0[10] = sub_100503A7C;
    v0[11] = &unk_10080A778;
    v25 = _Block_copy(v0 + 8);

    static DispatchQoS.unspecified.getter();
    v0[40] = _swiftEmptyArrayStorage;
    sub_1001D26F4(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100007224(&qword_100848A40, &unk_1006BF8C0);
    sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v25);
    (*(v21 + 8))(v19, v20);
    (*(v81 + 8))(v18, v83);
    v26 = v0[13];
  }

  else if (v17 == enum case for IdentityDocumentType.Category.passport(_:))
  {
    v27 = [objc_opt_self() standardUserDefaults];
    v28._countAndFlagsBits = static DaemonInternalDefaultsKeys.skipODIAssessment.getter();
    v29 = NSUserDefaults.internalBool(forKey:)(v28);

    if (v29)
    {
      v30 = v0[59];
      defaultLogger()();
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      v33 = os_log_type_enabled(v31, v32);
      v34 = v0[59];
      v35 = v0[55];
      v36 = v0[56];
      if (v33)
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "ProducedAssetManager skipping ODI warmup", v37, 2u);
      }

      v14(v34, v35);
    }

    else
    {
      v52 = v0[58];
      v53 = v0[42];
      defaultLogger()();
      sub_100020260(v53, (v0 + 24));
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.debug.getter();
      v56 = os_log_type_enabled(v54, v55);
      v57 = v0[58];
      v58 = v0[55];
      v59 = v0[56];
      if (v56)
      {
        v60 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        *v60 = 136315650;
        *(v60 + 4) = sub_100141FE4(0x6E6F736D697263, 0xE700000000000000, &v86);
        *(v60 + 12) = 2080;
        v61 = sub_10000BA08(v0 + 24, v0[27]);
        v85 = v14;
        v62 = *v61;
        v63 = v61[1];

        sub_10000BB78(v0 + 24);
        v64 = sub_100141FE4(v62, v63, &v86);

        *(v60 + 14) = v64;
        *(v60 + 22) = 2080;
        *(v60 + 24) = sub_100141FE4(0xD000000000000018, 0x8000000100705380, &v86);
        _os_log_impl(&_mh_execute_header, v54, v55, "ProducedAssetManager warmup ODI for %s - %s or %s", v60, 0x20u);
        swift_arrayDestroy();

        v85(v57, v58);
      }

      else
      {

        v14(v57, v58);
        sub_10000BB78(v0 + 24);
      }

      result = PKPassKitCoreBundle();
      if (!result)
      {
        __break(1u);
        return result;
      }

      v66 = result;
      v67 = v0[45];
      v68 = [objc_allocWithZone(ODISession) initWithServiceIdentifier:ODIServiceProviderIdIDVAir forDSIDType:1 andLocationBundle:result];

      v69 = *(v67 + 152);
      *(v67 + 152) = v68;
    }
  }

  else
  {
    v38 = v0[57];
    v39 = v0[42];
    defaultLogger()();
    sub_100020260(v39, (v0 + 19));
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    v42 = os_log_type_enabled(v40, v41);
    v44 = v0[56];
    v43 = v0[57];
    v45 = v0[55];
    if (v42)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v86 = v47;
      *v46 = 136315138;
      v48 = sub_10000BA08(v0 + 19, v0[22]);
      v84 = v14;
      v49 = *v48;
      v50 = v48[1];

      sub_10000BB78(v0 + 19);
      v51 = sub_100141FE4(v49, v50, &v86);

      *(v46 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v40, v41, "ProducedAssetManager warmup unknown documentType skipping for - %s", v46, 0xCu);
      sub_10000BB78(v47);

      v84(v43, v45);
    }

    else
    {

      v14(v43, v45);
      sub_10000BB78(v0 + 19);
    }

    (*(v0[53] + 8))(v0[54], v0[52]);
  }

  v70 = v0[59];
  v71 = v0[60];
  v73 = v0[57];
  v72 = v0[58];
  v74 = v0[54];
  v75 = v0[51];
  v76 = v0[48];
  sub_1001C87CC();

  v77 = v0[1];

  return v77();
}

uint64_t sub_1001D15CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v86 = a3;
  v87 = a4;
  v88 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v93 = *(v6 - 8);
  v94 = v6;
  v7 = v93[8];
  __chkstk_darwin(v6);
  v90 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v91 = *(v9 - 8);
  v92 = v9;
  v10 = v91[8];
  __chkstk_darwin(v9);
  v89 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for IdentityDocumentType.Category();
  v97 = *(v95 - 8);
  v12 = *(v97 + 64);
  __chkstk_darwin(v95);
  v14 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for Logger();
  v15 = *(v96 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v96);
  v85 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v84 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v84 - v23;
  __chkstk_darwin(v22);
  v26 = &v84 - v25;
  defaultLogger()();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "prepareForProofingIdentity: performing proofing preparation", v29, 2u);
  }

  v30 = *(v15 + 8);
  v31 = v96;
  v30(v26, v96);
  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.category.getter();
  v32 = v95;
  v33 = (*(v97 + 88))(v14, v95);
  if (v33 == enum case for IdentityDocumentType.Category.mDL(_:))
  {
    defaultLogger()();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "documentWarmup for mdl or default", v36, 2u);
    }

    v30(v24, v31);
    dispatch_group_enter(*(v5 + 104));
    v37 = *(v5 + 112);
    v38 = swift_allocObject();
    v40 = v87;
    v39 = v88;
    v38[2] = v5;
    v38[3] = v39;
    v38[4] = v86;
    v38[5] = v40;
    v102 = sub_1001D2120;
    v103 = v38;
    aBlock = _NSConcreteStackBlock;
    v99 = 1107296256;
    v100 = sub_100503A7C;
    v101 = &unk_10080A6D8;
    v41 = _Block_copy(&aBlock);

    v42 = v39;
    v43 = v89;
    static DispatchQoS.unspecified.getter();
    v104 = _swiftEmptyArrayStorage;
    sub_1001D26F4(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100007224(&qword_100848A40, &unk_1006BF8C0);
    sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
    v44 = v90;
    v45 = v94;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v41);
    (v93[1])(v44, v45);
    (v91[1])(v43, v92);
  }

  if (v33 == enum case for IdentityDocumentType.Category.passport(_:))
  {
    defaultLogger()();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "documentWarmup for passport", v48, 2u);
    }

    v30(v21, v31);
    v49 = IdentityProofingDocuments.nfc.getter();
    if (v49)
    {
      v50 = v49;
      v51 = IdentityDocument.nfcData.getter();
    }

    else
    {
      v51 = 0;
    }

    v67 = IdentityProofingDocuments.nfc.getter();
    if (v67)
    {
      v68 = v67;
      v69 = IdentityDocument.nfcHash.getter();
      v71 = v70;
    }

    else
    {
      v69 = 0;
      v71 = 0xF000000000000000;
    }

    v72 = *(v5 + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportNFC);
    *(v5 + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportNFC) = v51;

    v73 = (v5 + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportHash);
    v74 = *(v5 + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportHash);
    v75 = *(v5 + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportHash + 8);
    *v73 = v69;
    v73[1] = v71;
    sub_1000363B4(v69, v71);
    sub_10000BD94(v74, v75);
    dispatch_group_enter(*(v5 + 104));
    v76 = *(v5 + 112);
    v77 = swift_allocObject();
    *(v77 + 16) = v5;
    *(v77 + 24) = v51;
    v102 = sub_1001D20B8;
    v103 = v77;
    aBlock = _NSConcreteStackBlock;
    v99 = 1107296256;
    v100 = sub_100503A7C;
    v101 = &unk_10080A688;
    v78 = _Block_copy(&aBlock);

    v79 = v89;
    static DispatchQoS.unspecified.getter();
    v104 = _swiftEmptyArrayStorage;
    sub_1001D26F4(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100007224(&qword_100848A40, &unk_1006BF8C0);
    sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
    v80 = v90;
    v81 = v94;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v78);
    sub_10000BD94(v69, v71);
    (v93[1])(v80, v81);
    (v91[1])(v79, v92);
  }

  v52 = v85;
  defaultLogger()();

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();

  LODWORD(v94) = v54;
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v104 = v93;
    *v55 = 136315138;
    swift_beginAccess();
    v56 = *(v5 + 80);
    if (v56)
    {
      v57 = sub_10000BA08((v5 + 56), *(v5 + 80));
      v91 = &v84;
      v92 = v55;
      v58 = *(v56 - 8);
      v59 = *(v58 + 64);
      __chkstk_darwin(v57);
      v61 = (&v84 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v58 + 16))(v61);
      v62 = *v61;
      v63 = v61[1];
      v64 = *(v58 + 8);

      v65 = v61;
      v31 = v96;
      v64(v65, v56);
      v55 = v92;
      v32 = v95;
    }

    else
    {
      v63 = 0xE300000000000000;
      v62 = 7104878;
    }

    v83 = sub_100141FE4(v62, v63, &v104);

    *(v55 + 4) = v83;
    _os_log_impl(&_mh_execute_header, v53, v94, "ProducedAssetManager document warmup unknown documentType skipping for - %s", v55, 0xCu);
    sub_10000BB78(v93);

    v66 = v85;
  }

  else
  {

    v66 = v52;
  }

  v30(v66, v31);
  return (*(v97 + 8))(v14, v32);
}

uint64_t sub_1001D2078()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001D20C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001D20D8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001D212C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083D6A8, &qword_1006DB710);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D21A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027B9C;

  return sub_1001C9C34(a1, v4, v5, v6);
}

unint64_t *sub_1001D225C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = 0;
  v24 = a4;
  v21 = a2;
  v22 = result;
  v4 = 0;
  v25 = a3;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v25 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(v25 + 56) + 16 * v13 + 8);
    v26[0] = *v14;
    v26[1] = v15;
    __chkstk_darwin(result);
    v20[2] = v26;

    v17 = v27;
    v18 = sub_10035C8E4(sub_1000307C0, v20, v24);
    v27 = v17;

    if (v18)
    {
      *(v22 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return sub_1003D3DCC(v22, v21, v23, v25);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_1003D3DCC(v22, v21, v23, v25);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1001D2420(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_1001D081C(v12, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  __chkstk_darwin(v9);
  bzero(&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_1001D225C((&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_1001D25E0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100027B9C;

  return sub_1001CA888(a1, v1);
}

uint64_t sub_1001D26A8()
{
  v1 = *(v0 + 16);

  sub_10000BB78((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1001D26F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001D273C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_1001D0124(a1, v4, v5, v6);
}

uint64_t sub_1001D27F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_1001D0304(a1, v4, v5, v6);
}

uint64_t sub_1001D28A4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001D28E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_1001CFF44(a1, v4, v5, v6);
}

uint64_t sub_1001D2998()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_1001D29E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100041F04;

  return sub_1001CB8B8(a1, v4, v5, v6, v7, v8);
}

void *sub_1001D2AC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100172D4C(0, v1, 0);
    v3 = (a1 + 56);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v7 = _swiftEmptyArrayStorage[2];
      v6 = _swiftEmptyArrayStorage[3];

      if (v7 >= v6 >> 1)
      {
        sub_100172D4C((v6 > 1), v7 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v7 + 1;
      v8 = &_swiftEmptyArrayStorage[2 * v7];
      v8[4] = v5;
      v8[5] = v4;
      v3 += 4;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1001D2B9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 624) = v5;
  *(v6 + 616) = a5;
  *(v6 + 1209) = a4;
  *(v6 + 608) = a3;
  *(v6 + 600) = a2;
  *(v6 + 592) = a1;
  v7 = type metadata accessor for DIPError();
  *(v6 + 632) = v7;
  v8 = *(v7 - 8);
  *(v6 + 640) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 648) = swift_task_alloc();
  v10 = type metadata accessor for IdentityProofingAttributeConfiguration();
  *(v6 + 656) = v10;
  v11 = *(v10 - 8);
  *(v6 + 664) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 672) = swift_task_alloc();
  v13 = *(*(type metadata accessor for IdentityProofingStaticWorkflow(0) - 8) + 64) + 15;
  *(v6 + 680) = swift_task_alloc();
  v14 = type metadata accessor for DIPError.Code();
  *(v6 + 688) = v14;
  v15 = *(v14 - 8);
  *(v6 + 696) = v15;
  v16 = *(v15 + 64) + 15;
  *(v6 + 704) = swift_task_alloc();
  v17 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  *(v6 + 712) = swift_task_alloc();
  v18 = sub_100007224(&qword_10083DC00, &qword_1006DB6E0);
  *(v6 + 720) = v18;
  v19 = *(v18 - 8);
  *(v6 + 728) = v19;
  v20 = *(v19 + 64) + 15;
  *(v6 + 736) = swift_task_alloc();
  v21 = type metadata accessor for UUID();
  *(v6 + 744) = v21;
  v22 = *(v21 - 8);
  *(v6 + 752) = v22;
  v23 = *(v22 + 64) + 15;
  *(v6 + 760) = swift_task_alloc();
  v24 = type metadata accessor for Logger();
  *(v6 + 768) = v24;
  v25 = *(v24 - 8);
  *(v6 + 776) = v25;
  v26 = *(v25 + 64) + 15;
  *(v6 + 784) = swift_task_alloc();
  *(v6 + 792) = swift_task_alloc();
  *(v6 + 800) = swift_task_alloc();
  *(v6 + 808) = swift_task_alloc();
  *(v6 + 816) = swift_task_alloc();
  *(v6 + 824) = swift_task_alloc();
  *(v6 + 832) = swift_task_alloc();
  *(v6 + 840) = swift_task_alloc();
  *(v6 + 848) = swift_task_alloc();
  *(v6 + 856) = swift_task_alloc();
  *(v6 + 864) = swift_task_alloc();
  *(v6 + 872) = swift_task_alloc();
  *(v6 + 880) = swift_task_alloc();

  return _swift_task_switch(sub_1001D2F3C, 0, 0);
}

uint64_t sub_1001D2F3C()
{
  v1 = *(v0 + 592);
  IdentityProofingConfiguration.documentType.getter();
  v2 = IdentityDocumentType.rawValue.getter();
  v3 = IdentityDocumentType.rawValue.getter();
  v4 = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_clientCreatedProofingSessionID;
  if (v2 == v3)
  {
    v5 = (*(v0 + 624) + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_clientCreatedProofingSessionID);
    if (!v5[1])
    {
      v6 = *(v0 + 880);
      defaultLogger()();
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "Expecting proofing session id but proofing session id doesnt exist. Creating new proofing session id", v9, 2u);
      }

      v10 = *(v0 + 880);
      v11 = *(v0 + 776);
      v12 = *(v0 + 768);
      v13 = *(v0 + 760);
      v14 = *(v0 + 752);
      v15 = *(v0 + 744);

      (*(v11 + 8))(v10, v12);
      UUID.init()();
      v16 = UUID.uuidString.getter();
      v18 = v17;
      (*(v14 + 8))(v13, v15);
      v19 = v5[1];
      *v5 = v16;
      v5[1] = v18;

      v4 = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_clientCreatedProofingSessionID;
    }
  }

  v20 = *(v0 + 592);
  v21 = (*(v0 + 624) + v4);
  v22 = *v21;
  v23 = v21[1];
  *(v0 + 888) = v23;

  v24 = swift_task_alloc();
  *(v0 + 896) = v24;
  *v24 = v0;
  v24[1] = sub_1001D314C;
  v25 = *(v0 + 736);
  v26 = *(v0 + 624);
  v27 = *(v0 + 1209);
  v28 = *(v0 + 608);
  v29 = *(v0 + 600);

  return sub_1001DF838(v25, v20, v29, v28, v27, v22, v23);
}

uint64_t sub_1001D314C()
{
  v2 = *v1;
  v3 = *(*v1 + 896);
  v7 = *v1;
  *(*v1 + 904) = v0;

  if (v0)
  {
    v4 = sub_1001D81F8;
  }

  else
  {
    v5 = *(v2 + 888);

    v4 = sub_1001D3268;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001D3268()
{
  v76 = v0;
  v1 = *(*(v0 + 624) + 112);
  swift_beginAccess();
  sub_10000BBC4(v1 + 144, v0 + 440, &qword_10083D0A0, &qword_1006DAFC0);
  if (!*(v0 + 464))
  {
    v6 = *(v0 + 728);
    v72 = *(v0 + 720);
    v73 = *(v0 + 736);
    v7 = *(v0 + 704);
    v8 = *(v0 + 696);
    v9 = *(v0 + 688);
    v10 = *(v0 + 632);
    sub_10000BE18(v0 + 440, &qword_10083D0A0, &qword_1006DAFC0);
    (*(v8 + 104))(v7, enum case for DIPError.Code.missingIdentityWorkFlow(_:), v9);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    v5 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v6 + 8))(v73, v72);
    goto LABEL_5;
  }

  v2 = *(v0 + 904);
  v3 = *(v0 + 592);
  sub_10001F358((v0 + 440), v0 + 400);
  IdentityProofingConfiguration.documentType.getter();
  v4 = sub_10058BF20();
  if (v2)
  {
    v5 = v2;
    (*(*(v0 + 728) + 8))(*(v0 + 736), *(v0 + 720));
    sub_10000BB78((v0 + 400));
LABEL_5:
    v11._object = 0x8000000100707000;
    v11._countAndFlagsBits = 0xD000000000000010;
    debugLogFootprint(_:)(v11);
    *(v0 + 1112) = v5;
    v12 = *(v0 + 808);
    defaultLogger()();
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 808);
    v17 = *(v0 + 776);
    v18 = *(v0 + 768);
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v75[0] = v20;
      *v19 = 136315138;
      swift_getErrorValue();
      v22 = *(v0 + 480);
      v21 = *(v0 + 488);
      v23 = *(v0 + 496);
      v24 = Error.localizedDescription.getter();
      v26 = sub_100141FE4(v24, v25, v75);

      *(v19 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v13, v14, "Received an error during the proofing flow %s", v19, 0xCu);
      sub_10000BB78(v20);
    }

    v27 = *(v17 + 8);
    v27(v16, v18);
    *(v0 + 1120) = v27;
    v28 = *(v0 + 792);
    defaultLogger()();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Cleaning up orphaned credentials after proofing", v31, 2u);
    }

    v32 = *(v0 + 792);
    v33 = *(v0 + 776);
    v34 = *(v0 + 768);
    v35 = *(v0 + 624);

    v27(v32, v34);
    *(v0 + 1128) = *(v35 + 48);
    v36 = *(v35 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier);
    v37 = *(v35 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier + 8);
    *(v0 + 1136) = v37;
    v38 = *(v35 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_watchCredentialIdentifier);
    v39 = *(v35 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_watchCredentialIdentifier + 8);
    *(v0 + 1144) = v39;

    v40 = swift_task_alloc();
    *(v0 + 1152) = v40;
    *v40 = v0;
    v40[1] = sub_1001D705C;
    v41 = *(v0 + 608);

    return sub_10028B1CC(v41, v36, v37, v38, v39);
  }

  v43 = v4;
  v44 = *(v0 + 872);
  v45 = *(v0 + 592);
  defaultLogger()();
  v46 = v45;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = *(v0 + 592);
    v50 = swift_slowAlloc();
    v75[0] = swift_slowAlloc();
    *v50 = 136315394;
    IdentityProofingConfiguration.documentType.getter();
    v51 = IdentityDocumentType.description.getter();
    v53 = sub_100141FE4(v51, v52, v75);

    *(v50 + 4) = v53;
    *(v50 + 12) = 2080;
    if (v43)
    {
      if (v43 == 1)
      {
        v54 = 0xEB00000000305F32;
      }

      else
      {
        v54 = 0xEB00000000305F33;
      }
    }

    else
    {
      v54 = 0xEB00000000315F31;
    }

    v74 = *(v0 + 872);
    v59 = *(v0 + 776);
    v60 = *(v0 + 768);
    v61 = sub_100141FE4(0x5F6E6F6973726576, v54, v75);

    *(v50 + 14) = v61;
    _os_log_impl(&_mh_execute_header, v47, v48, "PROOF-IDENTITY ==> DOCUMENT TYPE <==> %s <==> API VERSION == %s", v50, 0x16u);
    swift_arrayDestroy();

    v58 = *(v59 + 8);
    v58(v74, v60);
  }

  else
  {
    v55 = *(v0 + 872);
    v56 = *(v0 + 776);
    v57 = *(v0 + 768);

    v58 = *(v56 + 8);
    v58(v55, v57);
  }

  *(v0 + 912) = v58;
  v62 = sub_10000BA08((v0 + 400), *(v0 + 424));
  v64 = *v62;
  v63 = v62[1];
  *(v0 + 920) = v63;
  v65 = sub_10000BA08((v0 + 400), *(v0 + 424));
  v66 = v65[6];
  v67 = v65[7];
  *(v0 + 928) = v67;

  v68 = swift_task_alloc();
  *(v0 + 936) = v68;
  *v68 = v0;
  v68[1] = sub_1001D39A8;
  v69 = *(v0 + 736);
  v70 = *(v0 + 624);
  v71 = *(v0 + 608);

  return sub_1001FF1C8(v0 + 216, v64, v63, v69, v43, v71, v66, v67);
}

uint64_t sub_1001D39A8()
{
  v2 = *v1;
  v3 = *(*v1 + 936);
  v4 = *v1;
  *(*v1 + 944) = v0;

  v5 = *(v2 + 928);
  v6 = *(v2 + 920);

  if (v0)
  {
    v7 = sub_1001D851C;
  }

  else
  {
    v7 = sub_1001D3AF8;
  }

  return _swift_task_switch(v7, 0, 0);
}

void sub_1001D3AF8()
{
  v136 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  *(v0 + 952) = v1;
  *(v0 + 960) = v2;
  if (!v2)
  {
    v132 = *(v0 + 736);
    v134 = 0;
    v22 = *(v0 + 728);
    v131 = *(v0 + 720);
    v23 = *(v0 + 704);
    v24 = *(v0 + 696);
    v25 = *(v0 + 688);
    v26 = *(v0 + 632);
    sub_1000B1F44(v0 + 216);
    (*(v24 + 104))(v23, enum case for DIPError.Code.proofingSessionIDUnavailable(_:), v25);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    v27 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v22 + 8))(v132, v131);
LABEL_5:
    sub_10000BB78((v0 + 400));
    v28._object = 0x8000000100707000;
    v28._countAndFlagsBits = 0xD000000000000010;
    debugLogFootprint(_:)(v28);
    *(v0 + 1112) = v27;
    v29 = *(v0 + 808);
    defaultLogger()();
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();

    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 808);
    v34 = *(v0 + 776);
    v35 = *(v0 + 768);
    if (v32)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v135 = v37;
      *v36 = 136315138;
      swift_getErrorValue();
      v39 = *(v0 + 480);
      v38 = *(v0 + 488);
      v40 = *(v0 + 496);
      v41 = Error.localizedDescription.getter();
      v43 = sub_100141FE4(v41, v42, &v135);

      *(v36 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v30, v31, "Received an error during the proofing flow %s", v36, 0xCu);
      sub_10000BB78(v37);
    }

    v44 = *(v34 + 8);
    v44(v33, v35);
    *(v0 + 1120) = v44;
    if (v134)
    {
      v45 = *(v0 + 800);
      defaultLogger()();
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "Calling proofing cancelled to cleanup state due to failure during proofing", v48, 2u);
      }

      v49 = *(v0 + 800);
      v50 = *(v0 + 776);
      v51 = *(v0 + 768);
      v52 = *(v0 + 712);
      v53 = *(v0 + 624);
      v54 = *(v0 + 608);
      v55 = *(v0 + 592);

      v44(v49, v51);
      v56 = type metadata accessor for TaskPriority();
      (*(*(v56 - 8) + 56))(v52, 1, 1, v56);
      v57 = swift_allocObject();
      v57[2] = 0;
      v57[3] = 0;
      v57[4] = v53;
      v57[5] = v55;
      v57[6] = v54;
      v58 = v55;

      sub_1003E653C(0, 0, v52, &unk_1006DB7E8, v57);

      v59 = *(v0 + 592);
      *(v0 + 1160) = *(*(v0 + 624) + 112);

      v60 = IdentityProofingConfiguration.documentType.getter();
      v61 = swift_task_alloc();
      *(v0 + 1168) = v61;
      *v61 = v0;
      v61[1] = sub_1001D7270;
      v62 = *(v0 + 680);

      sub_1001AA1E4(v62, v60);
    }

    else
    {
      v92 = *(v0 + 792);
      defaultLogger()();
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        _os_log_impl(&_mh_execute_header, v93, v94, "Cleaning up orphaned credentials after proofing", v95, 2u);
      }

      v96 = *(v0 + 792);
      v97 = *(v0 + 776);
      v98 = *(v0 + 768);
      v99 = *(v0 + 624);

      v44(v96, v98);
      *(v0 + 1128) = *(v99 + 48);
      v100 = *(v99 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier);
      v101 = *(v99 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier + 8);
      *(v0 + 1136) = v101;
      v102 = *(v99 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_watchCredentialIdentifier);
      v103 = *(v99 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_watchCredentialIdentifier + 8);
      *(v0 + 1144) = v103;

      v104 = swift_task_alloc();
      *(v0 + 1152) = v104;
      *v104 = v0;
      v104[1] = sub_1001D705C;
      v105 = *(v0 + 608);

      sub_10028B1CC(v105, v100, v101, v102, v103);
    }

    return;
  }

  v3 = *(v0 + 864);
  v4 = *(v0 + 624);
  type metadata accessor for IdentityProofingDatabaseProvider();
  v5 = swift_allocObject();
  v6 = type metadata accessor for IdentitySelfHealer();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC8coreidvd18IdentitySelfHealer_proofingSessionID];
  *v8 = v1;
  v8[1] = v2;
  *&v7[OBJC_IVAR____TtC8coreidvd18IdentitySelfHealer_databaseProvider] = v5;
  *(v0 + 552) = v7;
  *(v0 + 560) = v6;
  swift_bridgeObjectRetain_n();
  v9 = objc_msgSendSuper2((v0 + 552), "init");
  v10 = *(v4 + 24);
  *(v4 + 24) = v9;

  defaultLogger()();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 912);
  v15 = *(v0 + 864);
  v16 = *(v0 + 776);
  v17 = *(v0 + 768);
  if (v13)
  {
    v18 = swift_slowAlloc();
    v133 = v14;
    v135 = swift_slowAlloc();
    v19 = v1;
    v20 = v2;
    v21 = v135;
    *v18 = 136315138;
    *(v18 + 4) = sub_100141FE4(v19, v20, &v135);
    _os_log_impl(&_mh_execute_header, v11, v12, "Proofing request successful with proofing session id %s", v18, 0xCu);
    sub_10000BB78(v21);
    v2 = v20;
    v1 = v19;

    v133(v15, v17);
  }

  else
  {

    v14(v15, v17);
  }

  v63._countAndFlagsBits = 0x3731363966616631;
  v64._countAndFlagsBits = 0xD00000000000001CLL;
  v64._object = 0x80000001007070B0;
  v63._object = 0xE800000000000000;
  logMilestone(tag:description:)(v63, v64);
  if ((*(v0 + 336) & 1) == 0)
  {
    v65 = *(v0 + 328);
    v66 = *(v0 + 856);
    v67 = *(v0 + 624) + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_manualCheckInterval;
    *v67 = v65;
    *(v67 + 8) = 0;
    defaultLogger()();
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 134217984;
      *(v70 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v68, v69, "Proofing finished, manual check commands instructed at %ld seconds", v70, 0xCu);
    }

    v71 = *(v0 + 912);
    v72 = *(v0 + 856);
    v73 = *(v0 + 776);
    v74 = *(v0 + 768);

    v71(v72, v74);
  }

  if (*(*(*(v0 + 624) + 120) + 184))
  {
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v75 = *(v0 + 944);
    v76 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v76 + 54);
    sub_100031B5C(&v76[4], v0 + 16);
    os_unfair_lock_unlock(v76 + 54);
    if (!v75)
    {
      v115 = *(v0 + 624);
      v116 = *(v0 + 608);
      v117 = *(v0 + 592);
      sub_1000B1F44(v0 + 216);
      v118 = *(v0 + 72);
      *(v0 + 1048) = v118;

      sub_100031918(v0 + 16);
      v119 = swift_allocObject();
      *(v0 + 1056) = v119;
      v119[2] = v116;
      v119[3] = v117;
      v119[4] = v115;
      v120 = *(v118 + 16);
      v121 = swift_allocObject();
      *(v0 + 1064) = v121;
      *(v121 + 16) = sub_10021F1D0;
      *(v121 + 24) = v119;
      v122 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];
      v123 = v117;

      v124 = swift_task_alloc();
      *(v0 + 1072) = v124;
      *v124 = v0;
      v124[1] = sub_1001D5FBC;

      AsyncCoreDataContainer.performWrite<A>(_:)(v0 + 1208, sub_10017F7F4, v121, &type metadata for Bool);
    }

    return;
  }

  v77 = *(v0 + 608);
  sub_1000B1F44(v0 + 216);
  if (v77)
  {
    v106 = (v77 >> 1) & 1;
    v107 = (*(v0 + 624) + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier);
    v109 = *v107;
    v108 = v107[1];
    *(v0 + 968) = v108;

    v110 = swift_task_alloc();
    *(v0 + 976) = v110;
    *v110 = v0;
    v110[1] = sub_1001D491C;
    v111 = *(v0 + 624);
    v112 = *(v0 + 616);
    v113 = *(v0 + 1209);
    v114 = *(v0 + 592);
    v140 = v106;
    v139 = v112;
    v138 = v113;

    sub_1001FFA50(v114, 1, v1, v2, v109, v108, 0, 0);
  }

  else
  {
    v78 = *(v0 + 944);
    *(v0 + 1210) = 0;
    *(v0 + 992) = v78;
    if ((*(v0 + 608) & 2) != 0 && (v79 = *(v0 + 624), !*(v79 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_comboProofingWatchFailure)))
    {
      v129 = *(*(v79 + 40) + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService);
      v130 = swift_task_alloc();
      *(v0 + 1000) = v130;
      *v130 = v0;
      v130[1] = sub_1001D50F4;

      sub_1006738C8();
    }

    else
    {
      v80 = type metadata accessor for IdentityManagementSessionDelegate();
      v81 = [objc_opt_self() defaultCenter];
      v82 = String._bridgeToObjectiveC()();
      *(v0 + 576) = v80;
      sub_100007224(&qword_10083D698, &unk_1006DB6F0);
      [v81 postNotificationName:v82 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();

      v83 = *(v0 + 960);
      v84 = *(v0 + 952);
      v85 = *(v0 + 624);
      v86 = *(v0 + 608);
      v87 = *(v85 + 56);
      v88 = *(v85 + 120);
      v89 = OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_cloudKitUploadAssets;
      swift_beginAccess();
      v90 = *(v88 + v89);

      sub_1002E31A0(v86, v84, v83, v90);
      if (v78)
      {
        v27 = v78;
        v134 = v2;
        v91 = *(v0 + 960);
        (*(*(v0 + 728) + 8))(*(v0 + 736), *(v0 + 720));

        goto LABEL_5;
      }

      v125 = swift_task_alloc();
      *(v0 + 1088) = v125;
      *v125 = v0;
      v125[1] = sub_1001D6BC8;
      v126 = *(v0 + 624);
      v127 = *(v0 + 1209);
      v128 = *(v0 + 592);

      sub_100203A18(v128, v127);
    }
  }
}

uint64_t sub_1001D491C()
{
  v2 = *v1;
  v3 = *(*v1 + 976);
  v4 = *v1;
  v2[123] = v0;

  v5 = v2[121];
  if (v0)
  {
    v6 = v2[120];

    v7 = sub_1001D885C;
  }

  else
  {

    v7 = sub_1001D4A60;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001D4A60()
{
  v68 = v0;
  v1 = *(v0 + 848);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Proofing session for phone information successfully saved", v4, 2u);
  }

  v5 = *(v0 + 912);
  v6 = *(v0 + 848);
  v7 = *(v0 + 776);
  v8 = *(v0 + 768);

  v5(v6, v8);
  v9 = *(v0 + 984);
  v10 = *(v0 + 608);
  *(v0 + 1210) = (v10 & 2) != 0;
  *(v0 + 992) = v9;
  if ((v10 & 2) != 0 && (v11 = *(v0 + 624), !*(v11 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_comboProofingWatchFailure)))
  {
    v65 = *(*(v11 + 40) + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService);
    v66 = swift_task_alloc();
    *(v0 + 1000) = v66;
    *v66 = v0;
    v66[1] = sub_1001D50F4;

    return sub_1006738C8();
  }

  else
  {
    v12 = type metadata accessor for IdentityManagementSessionDelegate();
    v13 = [objc_opt_self() defaultCenter];
    v14 = String._bridgeToObjectiveC()();
    *(v0 + 576) = v12;
    sub_100007224(&qword_10083D698, &unk_1006DB6F0);
    [v13 postNotificationName:v14 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();

    v15 = *(v0 + 960);
    v16 = *(v0 + 952);
    v17 = *(v0 + 624);
    v18 = *(v0 + 608);
    v19 = *(v17 + 56);
    v20 = *(v17 + 120);
    v21 = OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_cloudKitUploadAssets;
    swift_beginAccess();
    v22 = *(v20 + v21);

    sub_1002E31A0(v18, v16, v15, v22);
    if (v9)
    {
      v23 = v9;
      v24 = *(v0 + 960);
      (*(*(v0 + 728) + 8))(*(v0 + 736), *(v0 + 720));

      sub_10000BB78((v0 + 400));
      v25._object = 0x8000000100707000;
      v25._countAndFlagsBits = 0xD000000000000010;
      debugLogFootprint(_:)(v25);
      *(v0 + 1112) = v23;
      v26 = *(v0 + 808);
      defaultLogger()();
      swift_errorRetain();
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();

      v29 = os_log_type_enabled(v27, v28);
      v30 = *(v0 + 808);
      v31 = *(v0 + 776);
      v32 = *(v0 + 768);
      if (v29)
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v67 = v34;
        *v33 = 136315138;
        swift_getErrorValue();
        v36 = *(v0 + 480);
        v35 = *(v0 + 488);
        v37 = *(v0 + 496);
        v38 = Error.localizedDescription.getter();
        v40 = sub_100141FE4(v38, v39, &v67);

        *(v33 + 4) = v40;
        _os_log_impl(&_mh_execute_header, v27, v28, "Received an error during the proofing flow %s", v33, 0xCu);
        sub_10000BB78(v34);
      }

      v41 = *(v31 + 8);
      v41(v30, v32);
      *(v0 + 1120) = v41;
      v42 = *(v0 + 800);
      defaultLogger()();
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "Calling proofing cancelled to cleanup state due to failure during proofing", v45, 2u);
      }

      v46 = *(v0 + 800);
      v47 = *(v0 + 776);
      v48 = *(v0 + 768);
      v49 = *(v0 + 712);
      v50 = *(v0 + 624);
      v51 = *(v0 + 608);
      v52 = *(v0 + 592);

      v41(v46, v48);
      v53 = type metadata accessor for TaskPriority();
      (*(*(v53 - 8) + 56))(v49, 1, 1, v53);
      v54 = swift_allocObject();
      v54[2] = 0;
      v54[3] = 0;
      v54[4] = v50;
      v54[5] = v52;
      v54[6] = v51;
      v55 = v52;

      sub_1003E653C(0, 0, v49, &unk_1006DB7E8, v54);

      v56 = *(v0 + 592);
      *(v0 + 1160) = *(*(v0 + 624) + 112);

      v57 = IdentityProofingConfiguration.documentType.getter();
      v58 = swift_task_alloc();
      *(v0 + 1168) = v58;
      *v58 = v0;
      v58[1] = sub_1001D7270;
      v59 = *(v0 + 680);

      return sub_1001AA1E4(v59, v57);
    }

    else
    {

      v61 = swift_task_alloc();
      *(v0 + 1088) = v61;
      *v61 = v0;
      v61[1] = sub_1001D6BC8;
      v62 = *(v0 + 624);
      v63 = *(v0 + 1209);
      v64 = *(v0 + 592);

      return sub_100203A18(v64, v63);
    }
  }
}

uint64_t sub_1001D50F4(uint64_t a1)
{
  v2 = *(*v1 + 1000);
  v4 = *v1;
  *(*v1 + 1008) = a1;

  return _swift_task_switch(sub_1001D51F4, 0, 0);
}

uint64_t sub_1001D51F4()
{
  v72 = v0;
  v1 = *(v0 + 1008);
  if (v1)
  {
    v2 = *(v0 + 624);
    v3 = [*(v0 + 1008) deviceID];

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    *(v0 + 1016) = v6;
    v7 = (v2 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_watchCredentialIdentifier);
    v8 = *(v2 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_watchCredentialIdentifier + 8);
    *(v0 + 1024) = v8;
    if (v8)
    {
      v9 = *(v0 + 960);
      v10 = *v7;

      v11 = swift_task_alloc();
      *(v0 + 1032) = v11;
      *v11 = v0;
      v11[1] = sub_1001D5868;
      v12 = *(v0 + 952);
      v13 = *(v0 + 624);
      v14 = *(v0 + 616);
      v15 = *(v0 + 1209);
      v16 = *(v0 + 592);
      v76 = *(v0 + 1210);
      v75 = v14;
      v74 = v15;

      return sub_1001FFA50(v16, 2, v12, v9, v10, v8, v4, v6);
    }
  }

  v18 = *(v0 + 992);
  v19 = type metadata accessor for IdentityManagementSessionDelegate();
  v20 = [objc_opt_self() defaultCenter];
  v21 = String._bridgeToObjectiveC()();
  *(v0 + 576) = v19;
  sub_100007224(&qword_10083D698, &unk_1006DB6F0);
  [v20 postNotificationName:v21 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  v22 = *(v0 + 960);
  v23 = *(v0 + 952);
  v24 = *(v0 + 624);
  v25 = *(v0 + 608);
  v26 = *(v24 + 56);
  v27 = *(v24 + 120);
  v28 = OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_cloudKitUploadAssets;
  swift_beginAccess();
  v29 = *(v27 + v28);

  sub_1002E31A0(v25, v23, v22, v29);
  if (v18)
  {
    v30 = v18;
    v31 = *(v0 + 960);
    (*(*(v0 + 728) + 8))(*(v0 + 736), *(v0 + 720));

    sub_10000BB78((v0 + 400));
    v32._object = 0x8000000100707000;
    v32._countAndFlagsBits = 0xD000000000000010;
    debugLogFootprint(_:)(v32);
    *(v0 + 1112) = v30;
    v33 = *(v0 + 808);
    defaultLogger()();
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();

    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 808);
    v38 = *(v0 + 776);
    v39 = *(v0 + 768);
    if (v36)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v71 = v41;
      *v40 = 136315138;
      swift_getErrorValue();
      v43 = *(v0 + 480);
      v42 = *(v0 + 488);
      v44 = *(v0 + 496);
      v45 = Error.localizedDescription.getter();
      v47 = sub_100141FE4(v45, v46, &v71);

      *(v40 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v34, v35, "Received an error during the proofing flow %s", v40, 0xCu);
      sub_10000BB78(v41);
    }

    v48 = *(v38 + 8);
    v48(v37, v39);
    *(v0 + 1120) = v48;
    v49 = *(v0 + 800);
    defaultLogger()();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Calling proofing cancelled to cleanup state due to failure during proofing", v52, 2u);
    }

    v53 = *(v0 + 800);
    v54 = *(v0 + 776);
    v55 = *(v0 + 768);
    v56 = *(v0 + 712);
    v57 = *(v0 + 624);
    v58 = *(v0 + 608);
    v59 = *(v0 + 592);

    v48(v53, v55);
    v60 = type metadata accessor for TaskPriority();
    (*(*(v60 - 8) + 56))(v56, 1, 1, v60);
    v61 = swift_allocObject();
    v61[2] = 0;
    v61[3] = 0;
    v61[4] = v57;
    v61[5] = v59;
    v61[6] = v58;
    v62 = v59;

    sub_1003E653C(0, 0, v56, &unk_1006DB7E8, v61);

    v63 = *(v0 + 592);
    *(v0 + 1160) = *(*(v0 + 624) + 112);

    v64 = IdentityProofingConfiguration.documentType.getter();
    v65 = swift_task_alloc();
    *(v0 + 1168) = v65;
    *v65 = v0;
    v65[1] = sub_1001D7270;
    v66 = *(v0 + 680);

    return sub_1001AA1E4(v66, v64);
  }

  else
  {

    v67 = swift_task_alloc();
    *(v0 + 1088) = v67;
    *v67 = v0;
    v67[1] = sub_1001D6BC8;
    v68 = *(v0 + 624);
    v69 = *(v0 + 1209);
    v70 = *(v0 + 592);

    return sub_100203A18(v70, v69);
  }
}

uint64_t sub_1001D5868()
{
  v2 = *v1;
  v3 = *(*v1 + 1032);
  v4 = *v1;
  v2[130] = v0;

  v5 = v2[128];
  v6 = v2[127];
  if (v0)
  {
    v7 = v2[120];

    v8 = sub_1001D8C10;
  }

  else
  {

    v8 = sub_1001D59D8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1001D59D8()
{
  v65 = v0;
  v1 = *(v0 + 840);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 912);
  v6 = *(v0 + 840);
  v7 = *(v0 + 776);
  v8 = *(v0 + 768);
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Proofing session for watch successfully saved", v9, 2u);
  }

  v5(v6, v8);
  v10 = *(v0 + 1040);
  v11 = type metadata accessor for IdentityManagementSessionDelegate();
  v12 = [objc_opt_self() defaultCenter];
  v13 = String._bridgeToObjectiveC()();
  *(v0 + 576) = v11;
  sub_100007224(&qword_10083D698, &unk_1006DB6F0);
  [v12 postNotificationName:v13 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  v14 = *(v0 + 960);
  v15 = *(v0 + 952);
  v16 = *(v0 + 624);
  v17 = *(v0 + 608);
  v18 = *(v16 + 56);
  v19 = *(v16 + 120);
  v20 = OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_cloudKitUploadAssets;
  swift_beginAccess();
  v21 = *(v19 + v20);

  sub_1002E31A0(v17, v15, v14, v21);
  if (v10)
  {
    v22 = v10;
    v23 = *(v0 + 960);
    (*(*(v0 + 728) + 8))(*(v0 + 736), *(v0 + 720));

    sub_10000BB78((v0 + 400));
    v24._object = 0x8000000100707000;
    v24._countAndFlagsBits = 0xD000000000000010;
    debugLogFootprint(_:)(v24);
    *(v0 + 1112) = v22;
    v25 = *(v0 + 808);
    defaultLogger()();
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 808);
    v30 = *(v0 + 776);
    v31 = *(v0 + 768);
    if (v28)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v64 = v33;
      *v32 = 136315138;
      swift_getErrorValue();
      v35 = *(v0 + 480);
      v34 = *(v0 + 488);
      v36 = *(v0 + 496);
      v37 = Error.localizedDescription.getter();
      v39 = sub_100141FE4(v37, v38, &v64);

      *(v32 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v26, v27, "Received an error during the proofing flow %s", v32, 0xCu);
      sub_10000BB78(v33);
    }

    v40 = *(v30 + 8);
    v40(v29, v31);
    *(v0 + 1120) = v40;
    v41 = *(v0 + 800);
    defaultLogger()();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Calling proofing cancelled to cleanup state due to failure during proofing", v44, 2u);
    }

    v45 = *(v0 + 800);
    v46 = *(v0 + 776);
    v47 = *(v0 + 768);
    v48 = *(v0 + 712);
    v49 = *(v0 + 624);
    v50 = *(v0 + 608);
    v51 = *(v0 + 592);

    v40(v45, v47);
    v52 = type metadata accessor for TaskPriority();
    (*(*(v52 - 8) + 56))(v48, 1, 1, v52);
    v53 = swift_allocObject();
    v53[2] = 0;
    v53[3] = 0;
    v53[4] = v49;
    v53[5] = v51;
    v53[6] = v50;
    v54 = v51;

    sub_1003E653C(0, 0, v48, &unk_1006DB7E8, v53);

    v55 = *(v0 + 592);
    *(v0 + 1160) = *(*(v0 + 624) + 112);

    v56 = IdentityProofingConfiguration.documentType.getter();
    v57 = swift_task_alloc();
    *(v0 + 1168) = v57;
    *v57 = v0;
    v57[1] = sub_1001D7270;
    v58 = *(v0 + 680);

    return sub_1001AA1E4(v58, v56);
  }

  else
  {

    v60 = swift_task_alloc();
    *(v0 + 1088) = v60;
    *v60 = v0;
    v60[1] = sub_1001D6BC8;
    v61 = *(v0 + 624);
    v62 = *(v0 + 1209);
    v63 = *(v0 + 592);

    return sub_100203A18(v63, v62);
  }
}

uint64_t sub_1001D5FBC()
{
  v2 = *v1;
  v3 = *(*v1 + 1072);
  v11 = *v1;
  *(*v1 + 1080) = v0;

  if (v0)
  {
    v4 = *(v2 + 1064);
    v5 = *(v2 + 960);

    v6 = sub_1001D67F8;
  }

  else
  {
    v7 = *(v2 + 1064);
    v8 = *(v2 + 1056);
    v9 = *(v2 + 1048);

    *(v2 + 1211) = *(v2 + 1208);
    v6 = sub_1001D6114;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001D6114()
{
  v74 = v0;
  if (*(v0 + 1211) == 1)
  {
    v1 = *(v0 + 832);
    v2 = type metadata accessor for IdentityManagementSessionDelegate();
    v3 = [objc_opt_self() defaultCenter];
    v4 = String._bridgeToObjectiveC()();
    *(v0 + 584) = v2;
    sub_100007224(&qword_10083D698, &unk_1006DB6F0);
    [v3 postNotificationName:v4 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();

    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "livenessStepUp triggered notification for Wallet status update", v7, 2u);
    }

    v8 = *(v0 + 912);
    v9 = *(v0 + 832);
    v10 = *(v0 + 776);
    v11 = *(v0 + 768);

    v8(v9, v11);
  }

  v12 = *(v0 + 824);
  defaultLogger()();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 912);
  v17 = *(v0 + 824);
  v18 = *(v0 + 776);
  v19 = *(v0 + 768);
  if (v15)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v73[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100141FE4(0xD00000000000006ELL, 0x8000000100707020, v73);
    _os_log_impl(&_mh_execute_header, v13, v14, "%s livenessStepUp finished. Don't need to save proofing session", v20, 0xCu);
    sub_10000BB78(v21);
  }

  v16(v17, v19);
  v22 = *(v0 + 1080);
  v23 = *(v0 + 960);
  v24 = *(v0 + 952);
  v25 = *(v0 + 624);
  v26 = *(v0 + 608);
  v27 = *(v25 + 56);
  v28 = *(v25 + 120);
  v29 = OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_cloudKitUploadAssets;
  swift_beginAccess();
  v30 = *(v28 + v29);

  sub_1002E31A0(v26, v24, v23, v30);
  if (v22)
  {
    v31 = v22;
    v32 = *(v0 + 960);
    (*(*(v0 + 728) + 8))(*(v0 + 736), *(v0 + 720));

    sub_10000BB78((v0 + 400));
    v33._object = 0x8000000100707000;
    v33._countAndFlagsBits = 0xD000000000000010;
    debugLogFootprint(_:)(v33);
    *(v0 + 1112) = v31;
    v34 = *(v0 + 808);
    defaultLogger()();
    swift_errorRetain();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();

    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 808);
    v39 = *(v0 + 776);
    v40 = *(v0 + 768);
    if (v37)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v73[0] = v42;
      *v41 = 136315138;
      swift_getErrorValue();
      v44 = *(v0 + 480);
      v43 = *(v0 + 488);
      v45 = *(v0 + 496);
      v46 = Error.localizedDescription.getter();
      v48 = sub_100141FE4(v46, v47, v73);

      *(v41 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v35, v36, "Received an error during the proofing flow %s", v41, 0xCu);
      sub_10000BB78(v42);
    }

    v49 = *(v39 + 8);
    v49(v38, v40);
    *(v0 + 1120) = v49;
    v50 = *(v0 + 800);
    defaultLogger()();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "Calling proofing cancelled to cleanup state due to failure during proofing", v53, 2u);
    }

    v54 = *(v0 + 800);
    v55 = *(v0 + 776);
    v56 = *(v0 + 768);
    v57 = *(v0 + 712);
    v58 = *(v0 + 624);
    v59 = *(v0 + 608);
    v60 = *(v0 + 592);

    v49(v54, v56);
    v61 = type metadata accessor for TaskPriority();
    (*(*(v61 - 8) + 56))(v57, 1, 1, v61);
    v62 = swift_allocObject();
    v62[2] = 0;
    v62[3] = 0;
    v62[4] = v58;
    v62[5] = v60;
    v62[6] = v59;
    v63 = v60;

    sub_1003E653C(0, 0, v57, &unk_1006DB7E8, v62);

    v64 = *(v0 + 592);
    *(v0 + 1160) = *(*(v0 + 624) + 112);

    v65 = IdentityProofingConfiguration.documentType.getter();
    v66 = swift_task_alloc();
    *(v0 + 1168) = v66;
    *v66 = v0;
    v66[1] = sub_1001D7270;
    v67 = *(v0 + 680);

    return sub_1001AA1E4(v67, v65);
  }

  else
  {

    v69 = swift_task_alloc();
    *(v0 + 1088) = v69;
    *v69 = v0;
    v69[1] = sub_1001D6BC8;
    v70 = *(v0 + 624);
    v71 = *(v0 + 1209);
    v72 = *(v0 + 592);

    return sub_100203A18(v72, v71);
  }
}

uint64_t sub_1001D67F8()
{
  v45 = v0;
  v1 = v0[132];
  v2 = v0[131];
  v3 = v0[92];
  v4 = v0[91];
  v5 = v0[90];

  (*(v4 + 8))(v3, v5);
  sub_10000BB78(v0 + 50);
  v6._object = 0x8000000100707000;
  v6._countAndFlagsBits = 0xD000000000000010;
  debugLogFootprint(_:)(v6);
  v0[139] = v0[135];
  v7 = v0[101];
  defaultLogger()();
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[101];
    v11 = v0[97];
    v12 = v0[96];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v44 = v14;
    *v13 = 136315138;
    swift_getErrorValue();
    v16 = v0[60];
    v15 = v0[61];
    v17 = v0[62];
    v18 = Error.localizedDescription.getter();
    v20 = sub_100141FE4(v18, v19, &v44);

    *(v13 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "Received an error during the proofing flow %s", v13, 0xCu);
    sub_10000BB78(v14);

    v21 = *(v11 + 8);
    v21(v10, v12);
  }

  else
  {
    v22 = v0[101];
    v23 = v0[97];
    v24 = v0[96];

    v21 = *(v23 + 8);
    v21(v22, v24);
  }

  v0[140] = v21;
  v25 = v0[100];
  defaultLogger()();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Calling proofing cancelled to cleanup state due to failure during proofing", v28, 2u);
  }

  v29 = v0[100];
  v30 = v0[97];
  v31 = v0[96];
  v32 = v0[89];
  v33 = v0[78];
  v34 = v0[76];
  v35 = v0[74];

  v21(v29, v31);
  v36 = type metadata accessor for TaskPriority();
  (*(*(v36 - 8) + 56))(v32, 1, 1, v36);
  v37 = swift_allocObject();
  v37[2] = 0;
  v37[3] = 0;
  v37[4] = v33;
  v37[5] = v35;
  v37[6] = v34;
  v38 = v35;

  sub_1003E653C(0, 0, v32, &unk_1006DB7E8, v37);

  v39 = v0[74];
  v0[145] = *(v0[78] + 112);

  v40 = IdentityProofingConfiguration.documentType.getter();
  v41 = swift_task_alloc();
  v0[146] = v41;
  *v41 = v0;
  v41[1] = sub_1001D7270;
  v42 = v0[85];

  return sub_1001AA1E4(v42, v40);
}

uint64_t sub_1001D6BC8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1088);
  v8 = *v2;
  v3[137] = a1;
  v3[138] = v1;

  if (v1)
  {
    v5 = v3[120];

    v6 = sub_1001D8FC4;
  }

  else
  {
    v6 = sub_1001D6CE8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001D6CE8()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 624);
  v3 = *(v0 + 600);
  v4 = *(v2 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_proofingDocuments);
  *(v2 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_proofingDocuments) = v3;
  v5 = v3;

  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Pending state UI shown. Will listen to uploads completion and perform action notification request in the background", v8, 2u);
  }

  v43 = *(v0 + 952);
  v9 = *(v0 + 912);
  v10 = *(v0 + 816);
  v11 = *(v0 + 776);
  v12 = *(v0 + 768);
  v46 = *(v0 + 736);
  v13 = *(v0 + 728);
  v44 = *(v0 + 720);
  v14 = *(v0 + 712);
  v15 = *(v0 + 624);
  v39 = *(v0 + 1209);
  v41 = *(v0 + 608);
  v16 = *(v0 + 592);

  v9(v10, v12);
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v39;
  *(v18 + 40) = v15;
  *(v18 + 48) = v43;
  *(v18 + 64) = v41;
  *(v18 + 72) = v16;
  v19 = v16;

  sub_100130390(0, 0, v14, &unk_1006DB7F8, v18);

  (*(v13 + 8))(v46, v44);
  sub_10000BB78((v0 + 400));
  v20._object = 0x8000000100707000;
  v20._countAndFlagsBits = 0xD000000000000010;
  debugLogFootprint(_:)(v20);
  v47 = *(v0 + 1096);
  v21 = *(v0 + 880);
  v22 = *(v0 + 872);
  v23 = *(v0 + 864);
  v24 = *(v0 + 856);
  v25 = *(v0 + 848);
  v26 = *(v0 + 840);
  v27 = *(v0 + 832);
  v28 = *(v0 + 824);
  v29 = *(v0 + 816);
  v30 = *(v0 + 808);
  v33 = *(v0 + 800);
  v34 = *(v0 + 792);
  v35 = *(v0 + 784);
  v36 = *(v0 + 760);
  v37 = *(v0 + 736);
  v38 = *(v0 + 712);
  v40 = *(v0 + 704);
  v42 = *(v0 + 680);
  *&v43 = *(v0 + 672);
  v45 = *(v0 + 648);

  v31 = *(v0 + 8);

  return v31(v47);
}