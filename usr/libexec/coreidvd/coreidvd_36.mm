uint64_t sub_10039ACD4()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[18];
  v6 = v0[14];
  v5 = v0[15];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[9];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10039AD9C(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v8 = type metadata accessor for MobileDocumentReaderDeviceEngagementType();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v4[11] = *(v9 + 64);
  v4[12] = swift_task_alloc();
  v10 = type metadata accessor for MobileDocumentReaderRequest();
  v4[13] = v10;
  v11 = *(v10 - 8);
  v4[14] = v11;
  v4[15] = *(v11 + 64);
  v4[16] = swift_task_alloc();
  v12 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v13 = type metadata accessor for Milestone();
  v4[18] = v13;
  v14 = *(v13 - 8);
  v4[19] = v14;
  v15 = *(v14 + 64) + 15;
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_10039AFBC, v3, 0);
}

uint64_t sub_10039AFBC()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[5];
  static MobileDocumentReaderMilestone.readDocumentCalled.getter();
  Milestone.log()();
  v5 = *(v2 + 8);
  v5(v1, v3);
  if (*(v4 + 144))
  {
    v6 = v0[20];
    v7 = v0[18];
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[6];
    static MobileDocumentReaderMilestone.readDocumentInProgress.getter();
    Milestone.log()();
    v5(v6, v7);
    (*(v9 + 104))(v8, enum case for DIPError.Code.documentReadingAlreadyInProgress(_:), v10);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003A1158(&qword_100834130, 255, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v11 = v0[20];
    v13 = v0[16];
    v12 = v0[17];
    v14 = v0[12];
    v15 = v0[8];

    v16 = v0[1];

    return v16();
  }

  else
  {
    v18 = v0[16];
    v19 = v0[17];
    v20 = v0[14];
    v21 = v0[12];
    v22 = v0[13];
    v42 = v18;
    v43 = v21;
    v23 = v0[10];
    v44 = v0[15];
    v45 = v0[11];
    v24 = v0[9];
    v46 = v0[5];
    v47 = v19;
    v41 = v0[4];
    v25 = v0[3];
    v26 = type metadata accessor for TaskPriority();
    (*(*(v26 - 8) + 56))(v19, 1, 1, v26);
    v27 = v18;
    v28 = v22;
    (*(v20 + 16))(v27, v25, v22);
    (*(v23 + 16))(v21, v41, v24);
    v30 = sub_1003A1158(&qword_100842568, v29, type metadata accessor for MobileDocumentReaderFlow);
    v31 = (*(v20 + 80) + 40) & ~*(v20 + 80);
    v32 = (v44 + *(v23 + 80) + v31) & ~*(v23 + 80);
    v33 = swift_allocObject();
    *(v33 + 2) = v46;
    *(v33 + 3) = v30;
    *(v33 + 4) = v46;
    (*(v20 + 32))(&v33[v31], v42, v28);
    (*(v23 + 32))(&v33[v32], v43, v24);
    swift_retain_n();
    v34 = sub_100130660(0, 0, v47, &unk_1006DF600, v33);
    v0[21] = v34;
    v35 = *(v4 + 144);
    *(v4 + 144) = v34;

    v36 = async function pointer to Task.value.getter[1];
    v37 = swift_task_alloc();
    v0[22] = v37;
    v38 = type metadata accessor for MobileDocumentReaderResponse();
    v39 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
    *v37 = v0;
    v37[1] = sub_10039B448;
    v40 = v0[2];

    return Task.value.getter(v40, v34, v38, v39, &protocol self-conformance witness table for Error);
  }
}

uint64_t sub_10039B448()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_10039B62C;
  }

  else
  {
    v6 = sub_10039B574;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10039B574()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[12];
  v6 = v0[8];
  v7 = v0[5];

  v8 = *(v7 + 144);
  *(v7 + 144) = 0;

  v9 = v0[1];

  return v9();
}

uint64_t sub_10039B62C()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[5];
  (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.internalError(_:), v0[6]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1003A1158(&qword_100834130, 255, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = *(v3 + 144);
  *(v3 + 144) = 0;

  v5 = v0[20];
  v6 = v0[16];
  v7 = v0[17];
  v8 = v0[12];
  v9 = v0[8];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10039B800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = type metadata accessor for Milestone();
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v9 = *(v8 + 64) + 15;
  v6[8] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[9] = v10;
  *v10 = v6;
  v10[1] = sub_10039B910;

  return sub_10039C498(0xD000000000000022, 0x80000001007120E0, 248);
}

uint64_t sub_10039B910()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[8];

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = swift_task_alloc();
    v2[10] = v8;
    *v8 = v4;
    v8[1] = sub_10039BA8C;
    v9 = v2[3];
    v10 = v2[4];

    return sub_10039DEC4(v10);
  }
}

uint64_t sub_10039BA8C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 64);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = *(v2 + 24);

    return _swift_task_switch(sub_10039BBD8, v8, 0);
  }
}

uint64_t sub_10039BBD8()
{
  v1 = v0[3];
  v3 = *(v1 + 152);
  v2 = *(v1 + 160);
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 40);
  v12 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_10039BD08;
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[2];

  return v12(v10, v8, v9, ObjectType, v2);
}

uint64_t sub_10039BD08()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 64);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = *(v2 + 24);

    return _swift_task_switch(sub_10039BE54, v8, 0);
  }
}

uint64_t sub_10039BE54()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  static MobileDocumentReaderMilestone.readDocumentReturningResponse.getter();
  Milestone.log()();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10039BEEC()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for Milestone();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_10039C008, v0, 0);
}

uint64_t sub_10039C008()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  static MobileDocumentReaderMilestone.cancelReadCalled.getter();
  Milestone.log()();
  v4 = *(v2 + 8);
  v0[9] = v4;
  v0[10] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v3);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_10039C0FC;
  v6 = v0[2];

  return sub_10039C498(0x65526C65636E6163, 0xEC00000029286461, 271);
}

uint64_t sub_10039C0FC()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[8];
    v6 = v2[5];

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {
    v9 = v2[2];

    return _swift_task_switch(sub_10039C254, v9, 0);
  }
}

uint64_t sub_10039C254()
{
  v1 = v0[2];
  if (*(v1 + 144))
  {
    v2 = v0[8];
    v3 = v0[5];
    type metadata accessor for MobileDocumentReaderResponse();

    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    Task.cancel()();

    v4 = *(v1 + 144);
    *(v1 + 144) = 0;
  }

  else
  {
    v7 = v0[9];
    v6 = v0[10];
    v8 = v0[8];
    v9 = v0[5];
    v10 = v0[6];
    v11 = v0[3];
    v12 = v0[4];
    static MobileDocumentReaderMilestone.noReadInProgressToCancel.getter();
    Milestone.log()();
    v7(v8, v10);
    (*(v12 + 104))(v9, enum case for DIPError.Code.unexpectedDaemonState(_:), v11);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003A1158(&qword_100834130, 255, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v13 = v0[8];
    v14 = v0[5];
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_10039C498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[100] = v3;
  v4[99] = a3;
  v4[98] = a2;
  v4[97] = a1;
  v5 = type metadata accessor for Logger();
  v4[101] = v5;
  v6 = *(v5 - 8);
  v4[102] = v6;
  v7 = *(v6 + 64) + 15;
  v4[103] = swift_task_alloc();
  v4[104] = swift_task_alloc();
  v8 = type metadata accessor for DIPError.Code();
  v4[105] = v8;
  v9 = *(v8 - 8);
  v4[106] = v9;
  v10 = *(v9 + 64) + 15;
  v4[107] = swift_task_alloc();
  v11 = *(*(sub_100007224(&qword_10083B020, &unk_1006D8ED0) - 8) + 64) + 15;
  v4[108] = swift_task_alloc();
  v12 = type metadata accessor for Locale();
  v4[109] = v12;
  v13 = *(v12 - 8);
  v4[110] = v13;
  v14 = *(v13 + 64) + 15;
  v4[111] = swift_task_alloc();

  return _swift_task_switch(sub_10039C660, v3, 0);
}

uint64_t sub_10039C660()
{
  v29 = v0;
  v1 = *(v0[100] + 408);
  v2 = UserDefaultsConfiguration.userDefaults.getter();
  v3._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.disableRegionCheck.getter();
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4)
  {
    v5 = v0[104];
    v6 = v0[98];
    defaultLogger()();

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[104];
    v11 = v0[102];
    v12 = v0[101];
    if (v9)
    {
      v13 = v0[98];
      v14 = v0[97];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v28 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_100141FE4(v14, v13, &v28);
      _os_log_impl(&_mh_execute_header, v7, v8, "MobileDocumentReaderFlow %s region check disabled.", v15, 0xCu);
      sub_10000BB78(v16);
    }

    (*(v11 + 8))(v10, v12);
    v17 = v0[111];
    v18 = v0[108];
    v19 = v0[107];
    v20 = v0[104];
    v21 = v0[103];

    v22 = v0[1];

    return v22();
  }

  else
  {
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v24 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v24 + 54);
    sub_100031B5C(&v24[4], (v0 + 63));
    os_unfair_lock_unlock(v24 + 54);
    v25 = v0[111];
    sub_100020260((v0 + 63), (v0 + 88));
    sub_100031918((v0 + 63));
    v26 = sub_10000BA08(v0 + 88, v0[91]);
    static Locale.current.getter();
    v0[112] = *v26;
    v27 = swift_task_alloc();
    v0[113] = v27;
    *v27 = v0;
    v27[1] = sub_10039C978;

    return sub_10050886C((v0 + 2));
  }
}

uint64_t sub_10039C978()
{
  v2 = *v1;
  v3 = *(*v1 + 904);
  v7 = *v1;
  *(*v1 + 912) = v0;

  if (v0)
  {
    v4 = v2[100];
    (*(v2[110] + 8))(v2[111], v2[109]);
    v5 = sub_10039CD9C;
  }

  else
  {
    v4 = v2[112];
    sub_1000F2758((v2 + 2));
    v5 = sub_10039CAB8;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10039CAB8()
{
  v1 = *(v0 + 896);
  v2 = *(v0 + 888);
  v3 = *(v0 + 880);
  v4 = *(v0 + 872);
  v5 = *(v0 + 800);
  v6 = v1[18];
  sub_10000BA08(v1 + 14, v1[17]);
  *(v0 + 920) = dispatch thunk of MobileDocumentReaderSupportChecking.isLocaleSupported(_:)() & 1;
  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10039CB88, v5, 0);
}

uint64_t sub_10039CB88()
{
  v1 = *(v0 + 920);
  sub_10000BB78((v0 + 704));
  if (v1)
  {
    v2 = *(v0 + 888);
    v3 = *(v0 + 864);
    v4 = *(v0 + 856);
    v5 = *(v0 + 832);
    v6 = *(v0 + 824);
  }

  else
  {
    v8 = *(v0 + 792);
    v9 = *(v0 + 784);
    v10 = *(v0 + 776);
    (*(*(v0 + 848) + 104))(*(v0 + 856), enum case for DIPError.Code.regionNotSupported(_:), *(v0 + 840));

    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003A1158(&qword_100834130, 255, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v11 = *(v0 + 888);
    v12 = *(v0 + 864);
    v13 = *(v0 + 856);
    v14 = *(v0 + 832);
    v15 = *(v0 + 824);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10039CD9C()
{
  v1 = v0[114];
  v2 = v0[108];
  v3 = v0[106];
  v4 = v0[105];
  sub_10000BB78(v0 + 88);
  swift_getErrorValue();
  v5 = v0[93];
  v6 = v0[94];
  v7 = v0[95];
  Error.dipErrorCode.getter();
  v8 = (*(v3 + 48))(v2, 1, v4);
  v9 = v0[108];
  if (v8 == 1)
  {
    sub_10000BE18(v0[108], &qword_10083B020, &unk_1006D8ED0);
  }

  else
  {
    v10 = v0[106];
    v11 = v0[105];
    v12 = (*(v10 + 88))(v0[108], v11);
    v13 = enum case for DIPError.Code.networkTimeOut(_:);
    (*(v10 + 8))(v9, v11);
    if (v12 == v13)
    {
      v14 = v0[114];
      v15 = v0[99];
      v16 = v0[98];
      v17 = v0[97];
      (*(v0[106] + 104))(v0[107], enum case for DIPError.Code.internalError(_:), v0[105]);

      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1003A1158(&qword_100834130, 255, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_6;
    }
  }

  v18 = v0[114];
  v19 = v0[107];
  v20 = v0[106];
  v21 = v0[105];
  v22 = v0[103];
  v23 = v0[102];
  v24 = v0[101];
  v25 = v0[98];
  v33 = v0[99];
  v34 = v0[97];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  (*(v23 + 8))(v22, v24);
  (*(v20 + 104))(v19, enum case for DIPError.Code.documentReaderUnableToCheckRegionSupport(_:), v21);

  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1003A1158(&qword_100834130, 255, &type metadata accessor for DIPError);
  swift_allocError();
LABEL_6:
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v26 = v0[111];
  v27 = v0[108];
  v28 = v0[107];
  v29 = v0[104];
  v30 = v0[103];

  v31 = v0[1];

  return v31();
}

uint64_t sub_10039D198(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for Logger();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = type metadata accessor for DIPError.Code();
  v3[11] = v7;
  v8 = *(v7 - 8);
  v3[12] = v8;
  v9 = *(v8 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v10 = type metadata accessor for DIPError();
  v3[15] = v10;
  v11 = *(v10 - 8);
  v3[16] = v11;
  v12 = *(v11 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_10039D32C, v2, 0);
}

uint64_t sub_10039D32C()
{
  v1 = *sub_10000BA08((v0[7] + 168), *(v0[7] + 192));
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_10039D3D4;
  v3 = v0[5];
  v4 = v0[6];

  return sub_100384B20(v3, v4);
}

uint64_t sub_10039D3D4()
{
  v2 = *(*v1 + 152);
  v3 = *v1;
  v3[20] = v0;

  if (v0)
  {
    v4 = v3[7];

    return _swift_task_switch(sub_10039D548, v4, 0);
  }

  else
  {
    v6 = v3[17];
    v5 = v3[18];
    v8 = v3[13];
    v7 = v3[14];
    v9 = v3[10];

    v10 = v3[1];

    return v10();
  }
}

uint64_t sub_10039D548()
{
  v0[2] = v0[20];
  v1 = v0[18];
  v2 = v0[15];
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {
    v4 = v0[13];
    v3 = v0[14];
    v5 = v0[11];
    v6 = v0[12];
    (*(v0[16] + 32))(v0[17], v0[18], v0[15]);
    DIPError.code.getter();
    v7 = enum case for DIPError.Code.topekaMobileDocumentReaderTermsAndConditionsAcceptanceRequired(_:);
    v8 = *(v6 + 104);
    v0[21] = v8;
    v0[22] = (v6 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v8(v4, v7, v5);
    sub_1003A1158(&qword_10083B4D0, 255, &type metadata accessor for DIPError.Code);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v9 = *(v6 + 8);
    v9(v4, v5);
    v9(v3, v5);
    if (v0[3] == v0[4])
    {
      v10 = v0[20];
      v11 = v0[10];

      defaultLogger()();
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "MobileDocumentReaderFlow terms and conditions acceptance required", v14, 2u);
      }

      v16 = v0[9];
      v15 = v0[10];
      v18 = v0[7];
      v17 = v0[8];

      (*(v16 + 8))(v15, v17);
      v19 = *sub_10000BA08((v18 + 288), *(v18 + 312));
      v20 = swift_task_alloc();
      v0[23] = v20;
      *v20 = v0;
      v20[1] = sub_10039D994;

      return sub_1003CB138();
    }

    (*(v0[16] + 8))(v0[17], v0[15]);
  }

  v22 = v0[20];
  v23 = v0[14];
  v24 = v0[15];
  v25 = v0[11];
  v26 = v0[12];
  v27 = v0[2];

  (*(v26 + 104))(v23, enum case for DIPError.Code.internalError(_:), v25);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  sub_1003A1158(&qword_100834130, 255, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v29 = v0[17];
  v28 = v0[18];
  v31 = v0[13];
  v30 = v0[14];
  v32 = v0[10];

  v33 = v0[1];

  return v33();
}

uint64_t sub_10039D994(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 184);
  v8 = *v3;
  v6[24] = v2;

  v9 = v6[7];
  if (v2)
  {
    v10 = sub_10039DAD4;
  }

  else
  {
    v6[25] = a2;
    v6[26] = a1;
    v10 = sub_10039DB90;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_10039DAD4()
{
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[2];

  v2 = v0[24];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[10];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10039DB90()
{
  v25 = v0[25];
  v26 = v0[26];
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[16];
  v4 = v0[17];
  v27 = v4;
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[11];
  sub_1003A1158(&qword_100834130, 255, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v3 + 16))(v8, v4, v5);
  v2(v6, enum case for DIPError.Code.documentReaderTermsAndConditionsAcceptanceRequired(_:), v7);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v9 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v10 = *(*v9 + 72);
  v11 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1006BF520;
  v13 = v12 + v11;
  v14 = (v13 + v9[14]);
  v15 = enum case for DIPError.PropertyKey.termsAndConditions(_:);
  v16 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v16 - 8) + 104))(v13, v15, v16);
  v14[3] = &type metadata for MobileDocumentReaderTermsAndConditions;
  v14[4] = sub_1003A1104();
  *v14 = v26;
  v14[1] = v25;
  sub_10003C9C0(v12);
  swift_setDeallocating();
  sub_10000BE18(v13, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  (*(v3 + 8))(v27, v5);
  v17 = v0[2];

  v19 = v0[17];
  v18 = v0[18];
  v21 = v0[13];
  v20 = v0[14];
  v22 = v0[10];

  v23 = v0[1];

  return v23();
}

uint64_t sub_10039DEC4(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for DaemonAnalytics.MobileDocumentReaderSessionStatus();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = *(*(sub_100007224(&qword_1008419D8, &qword_1006DEAB0) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v7 = type metadata accessor for MobileDocumentReaderAuthenticationSession();
  v2[14] = v7;
  v8 = *(v7 - 8);
  v2[15] = v8;
  v9 = *(v8 + 64) + 15;
  v2[16] = swift_task_alloc();
  v10 = type metadata accessor for DIPError.Code();
  v2[17] = v10;
  v11 = *(v10 - 8);
  v2[18] = v11;
  v12 = *(v11 + 64) + 15;
  v2[19] = swift_task_alloc();
  v13 = type metadata accessor for MobileDocumentReaderRequest();
  v2[20] = v13;
  v14 = *(v13 - 8);
  v2[21] = v14;
  v15 = *(v14 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  v2[24] = v16;
  v17 = *(v16 - 8);
  v2[25] = v17;
  v18 = *(v17 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v19 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v20 = type metadata accessor for DIPSignpost();
  v2[29] = v20;
  v21 = *(v20 - 8);
  v2[30] = v21;
  v22 = *(v21 + 64) + 15;
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_10039E1CC, v1, 0);
}

uint64_t sub_10039E1CC()
{
  v71 = v0;
  v1 = v0[31];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[23];
  v5 = v0[20];
  v6 = v0[21];
  v8 = v0[8];
  v7 = v0[9];
  static DaemonSignposts.MobileDocumentReader.canReadDocument.getter();
  DIPSignpost.init(_:)();
  defaultLogger()();
  v9 = *(v6 + 16);
  v9(v4, v8, v5);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v65 = v0[25];
    v66 = v0[24];
    v68 = v0[27];
    v12 = v0[22];
    v60 = v9;
    v62 = v0[23];
    v14 = v0[20];
    v13 = v0[21];
    v15 = v0[9];
    v16 = swift_slowAlloc();
    v70[0] = swift_slowAlloc();
    *v16 = 136315650;
    v0[7] = v15;
    v17 = String.init<A>(describing:)();
    v19 = sub_100141FE4(v17, v18, v70);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100141FE4(0xD000000000000017, 0x8000000100711FD0, v70);
    *(v16 + 22) = 2080;
    v60(v12, v62, v14);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    (*(v13 + 8))(v62, v14);
    v23 = sub_100141FE4(v20, v22, v70);

    *(v16 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v10, v11, "MobileDocumentReaderFlow %s %s Request: %s", v16, 0x20u);
    swift_arrayDestroy();

    v24 = *(v65 + 8);
    v24(v68, v66);
  }

  else
  {
    v25 = v0[27];
    v26 = v0[24];
    v27 = v0[25];
    v28 = v0[23];
    v29 = v0[20];
    v30 = v0[21];

    (*(v30 + 8))(v28, v29);
    v24 = *(v27 + 8);
    v24(v25, v26);
  }

  v31 = v0[9];
  v32 = v31[30];
  sub_10000BA08(v31 + 26, v31[29]);
  if (dispatch thunk of LocalAuthenticationManaging.isPasscodeSet.getter())
  {
LABEL_9:
    v44 = v0[9];
    sub_10039FC28();
    v50 = v0[9];
    v52 = *(v50 + 152);
    v51 = *(v50 + 160);
    ObjectType = swift_getObjectType();
    v54 = *(v51 + 32);
    v69 = (v54 + *v54);
    v55 = v54[1];
    v56 = swift_task_alloc();
    v0[32] = v56;
    *v56 = v0;
    v56[1] = sub_10039E970;

    return v69(ObjectType, v51);
  }

  v33 = *(v0[9] + 408);
  v34 = UserDefaultsConfiguration.userDefaults.getter();
  v35._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.disablePasscodeCheck.getter();
  v36 = NSUserDefaults.internalBool(forKey:)(v35);

  if (v36)
  {
    v37 = v0[26];
    defaultLogger()();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "MobileDocumentReaderFlow passcode is not set. Bypassing this check due to internal setting.", v40, 2u);
    }

    v42 = v0[25];
    v41 = v0[26];
    v43 = v0[24];

    v24(v41, v43);
    goto LABEL_9;
  }

  (*(v0[18] + 104))(v0[19], enum case for DIPError.Code.documentReaderPasscodeNotSet(_:), v0[17]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1003A1158(&qword_100834130, 255, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v46 = v0[30];
  v45 = v0[31];
  v57 = v0[29];
  v58 = v0[28];
  v59 = v0[27];
  v61 = v0[26];
  v63 = v0[23];
  v64 = v0[22];
  v47 = v0[13];
  v67 = v0[16];
  (*(v0[18] + 104))(v0[19], enum case for DIPError.Code.internalError(_:), v0[17]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1003A1158(&qword_100834130, 255, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v46 + 8))(v45, v57);

  v48 = v0[1];

  return v48();
}

uint64_t sub_10039E970()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_10039F9F4;
  }

  else
  {
    v6 = sub_10039EA9C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10039EA9C()
{
  v1 = v0[8];
  v2 = sub_10000BA08((v0[9] + 168), *(v0[9] + 192));
  v3 = MobileDocumentReaderRequest.sessionIdentifier.getter();
  v5 = v4;
  v0[34] = v4;
  v6 = *v2;
  v7 = swift_task_alloc();
  v0[35] = v7;
  *v7 = v0;
  v7[1] = sub_10039EB68;
  v8 = v0[13];

  return sub_100389664(v8, v3, v5);
}

uint64_t sub_10039EB68()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  v5 = *(v2 + 272);
  v6 = *(v2 + 72);

  if (v0)
  {
    v7 = sub_10039F2EC;
  }

  else
  {
    v7 = sub_10039ECB0;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10039ECB0()
{
  v1 = v0[14];
  v2 = v0[13];
  if ((*(v0[15] + 48))(v2, 1, v1) == 1)
  {
    sub_10000BE18(v2, &qword_1008419D8, &qword_1006DEAB0);
LABEL_20:
    v20 = v0[18];
    v19 = v0[19];
    v21 = v0[17];
    v23 = v0[11];
    v22 = v0[12];
    v24 = v0[10];
    type metadata accessor for DaemonAnalytics();
    v25 = enum case for DaemonAnalytics.MobileDocumentReaderInvalidSessionReason.sessionMissing(_:);
    v26 = type metadata accessor for DaemonAnalytics.MobileDocumentReaderInvalidSessionReason();
    (*(*(v26 - 8) + 104))(v22, v25, v26);
    (*(v23 + 104))(v22, enum case for DaemonAnalytics.MobileDocumentReaderSessionStatus.invalid(_:), v24);
    static DaemonAnalytics.sendReadDocumentSessionStatus(status:)();
    (*(v23 + 8))(v22, v24);
    (*(v20 + 104))(v19, enum case for DIPError.Code.documentReaderMissingSession(_:), v21);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003A1158(&qword_100834130, 255, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_21;
  }

  v3 = v0[16];
  sub_1003A103C(v2, v3, type metadata accessor for MobileDocumentReaderAuthenticationSession);
  v4 = *(v3 + *(v1 + 28));
  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_19:
    sub_1003A10A4(v0[16], type metadata accessor for MobileDocumentReaderAuthenticationSession);
    goto LABEL_20;
  }

  if (v4 < 0)
  {
    v18 = *(v3 + *(v1 + 28));
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_5:
  if ((v4 & 0xC000000000000001) != 0)
  {

    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v6 = *(v4 + 32);
  }

  v0[37] = v6;
  v7 = v0[16];
  v8 = v0[14];
  sub_10000BA08((v0[9] + 248), *(v0[9] + 272));
  type metadata accessor for SecCertificate(0);
  v0[5] = v9;
  v0[6] = &protocol witness table for SecCertificateRef;
  v0[2] = v6;
  if (*(v7 + *(v8 + 44) + 8))
  {
    v10 = 0;
  }

  else
  {
    v10 = *(v0[16] + *(v0[14] + 40) + 8) >> 60 == 15;
  }

  v11 = v0[36];
  v12 = v0[8];
  v13 = v6;
  sub_1003AB08C(v12, v0 + 2, v10);
  if (v11)
  {
    sub_1003A10A4(v0[16], type metadata accessor for MobileDocumentReaderAuthenticationSession);

    sub_10000BB78(v0 + 2);
LABEL_21:
    v28 = v0[30];
    v27 = v0[31];
    v31 = v0[29];
    v32 = v0[28];
    v33 = v0[27];
    v34 = v0[26];
    v35 = v0[23];
    v36 = v0[22];
    v29 = v0[16];
    v37 = v0[13];
    v38 = v0[12];
    (*(v0[18] + 104))(v0[19], enum case for DIPError.Code.internalError(_:), v0[17]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003A1158(&qword_100834130, 255, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v28 + 8))(v27, v31);

    v30 = v0[1];

    return v30();
  }

  v14 = v0[9];
  sub_10000BB78(v0 + 2);
  v15 = *sub_10000BA08((v14 + 368), *(v14 + 392));
  v16 = swift_task_alloc();
  v0[38] = v16;
  *v16 = v0;
  v16[1] = sub_10039F520;
  v17 = v0[8];

  return sub_1003484CC(v17);
}

uint64_t sub_10039F2EC()
{
  v1 = v0[36];
  v3 = v0[30];
  v2 = v0[31];
  v6 = v0[29];
  v7 = v0[28];
  v8 = v0[27];
  v9 = v0[26];
  v10 = v0[23];
  v11 = v0[22];
  v12 = v0[13];
  v13 = v0[16];
  v14 = v0[12];
  (*(v0[18] + 104))(v0[19], enum case for DIPError.Code.internalError(_:), v0[17]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1003A1158(&qword_100834130, 255, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v3 + 8))(v2, v6);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10039F520()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_10039F798;
  }

  else
  {

    v6 = sub_10039F65C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10039F65C()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v6 = *(v0 + 208);
  v5 = *(v0 + 216);
  v7 = *(v0 + 176);
  v8 = *(v0 + 184);
  v9 = *(v0 + 128);
  v12 = *(v0 + 152);
  v13 = *(v0 + 104);
  v14 = *(v0 + 96);

  sub_1003A10A4(v9, type metadata accessor for MobileDocumentReaderAuthenticationSession);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10039F798()
{
  v1 = *(v0 + 128);

  sub_1003A10A4(v1, type metadata accessor for MobileDocumentReaderAuthenticationSession);
  v2 = *(v0 + 312);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v7 = *(v0 + 232);
  v8 = *(v0 + 224);
  v9 = *(v0 + 216);
  v10 = *(v0 + 208);
  v11 = *(v0 + 184);
  v12 = *(v0 + 176);
  v13 = *(v0 + 104);
  v14 = *(v0 + 128);
  v15 = *(v0 + 96);
  (*(*(v0 + 144) + 104))(*(v0 + 152), enum case for DIPError.Code.internalError(_:), *(v0 + 136));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1003A1158(&qword_100834130, 255, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v4 + 8))(v3, v7);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10039F9F4()
{
  v1 = v0[33];
  v3 = v0[30];
  v2 = v0[31];
  v6 = v0[29];
  v7 = v0[28];
  v8 = v0[27];
  v9 = v0[26];
  v10 = v0[23];
  v11 = v0[22];
  v12 = v0[13];
  v13 = v0[16];
  v14 = v0[12];
  (*(v0[18] + 104))(v0[19], enum case for DIPError.Code.internalError(_:), v0[17]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1003A1158(&qword_100834130, 255, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v3 + 8))(v2, v6);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10039FC28()
{
  v2 = v1;
  v3 = v0;
  v55 = type metadata accessor for DIPError.Code();
  v52 = *(v55 - 8);
  v4 = *(v52 + 64);
  v5 = __chkstk_darwin(v55);
  v51 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v53 = &v48 - v7;
  v60 = type metadata accessor for DIPError();
  v57 = *(v60 - 8);
  v8 = *(v57 + 64);
  v9 = __chkstk_darwin(v60);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v56 = &v48 - v12;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v54 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v50 = &v48 - v19;
  __chkstk_darwin(v18);
  v21 = &v48 - v20;
  defaultLogger()();

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  v61 = v3;

  v24 = os_log_type_enabled(v22, v23);
  v58 = v14;
  v59 = v13;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v25 = 136315394;
    v63 = v61;
    v26 = String.init<A>(describing:)();
    v28 = sub_100141FE4(v26, v27, &v64);

    *(v25 + 4) = v28;
    v2 = v1;
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_100141FE4(0x4153486B63656863, 0xEB00000000292832, &v64);
    _os_log_impl(&_mh_execute_header, v22, v23, "MobileDocumentReaderFlow %s %s)", v25, 0x16u);
    swift_arrayDestroy();

    v29 = *(v58 + 8);
    v29(v21, v59);
  }

  else
  {

    v29 = *(v14 + 8);
    v29(v21, v13);
  }

  v30 = *(v61 + 45);
  sub_10000BA08(v61 + 41, *(v61 + 44));
  result = dispatch thunk of DIPAccountManagerProtocol.verifyAccountStatus(requireHSA2:)();
  if (!v2)
  {
    return result;
  }

  v64 = v2;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  v32 = v56;
  if (swift_dynamicCast())
  {
    v49 = v29;
    (*(v57 + 32))(v11, v32, v60);
    v33 = v53;
    DIPError.code.getter();
    v34 = v52;
    v61 = v11;
    v35 = *(v52 + 104);
    v36 = v51;
    v37 = v55;
    v35(v51, enum case for DIPError.Code.hsa2NotEnabled(_:), v55);
    sub_1003A1158(&qword_10083B4D0, 255, &type metadata accessor for DIPError.Code);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v38 = *(v34 + 8);
    v38(v36, v37);
    v38(v33, v37);
    if (v63 == v62)
    {

      v39 = v50;
      defaultLogger()();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "MobileDocumentReaderFlow account is signed in, but HSA2 is disabled", v42, 2u);
      }

      v49(v39, v59);
      v35(v53, enum case for DIPError.Code.documentReaderHSA2NotEnabled(_:), v55);
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_1003A1158(&qword_100834130, 255, &type metadata accessor for DIPError);
      v43 = v60;
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v57 + 8))(v61, v43);
    }

    (*(v57 + 8))(v61, v60);
    v29 = v49;
  }

  v44 = v54;
  defaultLogger()();
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "MobileDocumentReaderFlow ignoring account not signed in", v47, 2u);
  }

  return (v29)(v44, v59);
}

void *sub_1003A040C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for MobileDocumentReaderFlow();
  v10 = swift_allocObject();
  result = sub_100396660(a1, a2, a3, a4);
  *a5 = v10;
  return result;
}

uint64_t sub_1003A047C(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = *v2;
  v3[4] = *v2;
  return _swift_task_switch(sub_1003A04A0, v4, 0);
}

uint64_t sub_1003A04A0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = *(v1 + 152);
  v5 = *(v1 + 160);
  ObjectType = swift_getObjectType();
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v2;
  v8 = *(v5 + 16);

  v8(sub_1003A06A4, v7, ObjectType, v5);
  v9 = v0[1];

  return v9();
}

uint64_t sub_1003A0584()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_1003A05A4, v2, 0);
}

uint64_t sub_1003A05A4()
{
  v1 = *(v0 + 16);
  if (*(v1 + 144))
  {
    type metadata accessor for MobileDocumentReaderResponse();

    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    Task.cancel()();

    v2 = *(v1 + 144);
  }

  *(v1 + 144) = 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1003A066C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1003A06AC()
{
  sub_10000BB78((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1003A0748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v5 = type metadata accessor for DIPHTTPSession.Configuration(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v35 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for KRLTrustValidator();
  v53 = &off_1008094F0;
  *&v51 = a2;
  v17 = type metadata accessor for DateProvider();
  v49 = v17;
  v50 = &protocol witness table for DateProvider;
  v18 = sub_100032DBC(&v48);
  (*(*(v17 - 8) + 32))(v18, a3, v17);
  v47[3] = &type metadata for KRLConfigurationProvider;
  v47[4] = &off_1008094C8;
  type metadata accessor for PresentmentKeyRevocationValidator();
  v19 = swift_allocObject();
  sub_10001F370(v47, &type metadata for KRLConfigurationProvider);
  v45 = &type metadata for KRLConfigurationProvider;
  v46 = &off_1008094C8;
  v20 = v36;
  swift_defaultActor_initialize();
  sub_10000BBC4(v20, &v39, &qword_100842548, &unk_1006DF5D0);
  if (v40)
  {
    sub_10000BE18(v20, &qword_100842548, &unk_1006DF5D0);
    sub_10001F358(&v39, &v41);
  }

  else
  {
    v35 = v9;
    UUID.init()();
    v21 = UUID.uuidString.getter();
    v23 = v22;
    (*(v13 + 8))(v16, v12);
    if (qword_100832C10 != -1)
    {
      swift_once();
    }

    v24 = sub_10003170C(v5, qword_10083ABA0);
    v25 = v11;
    sub_1002BEB48(v24, v11);
    type metadata accessor for DIPAccountManager();
    static DIPAccountManager.sharedInstance.getter();
    v26 = type metadata accessor for DIPWebService();
    v27 = objc_allocWithZone(v26);
    v28 = &v27[OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation];
    *v28 = v21;
    v28[1] = v23;
    sub_100020260(&v41, v38);
    v29 = v35;
    sub_1002BEB48(v25, v35);
    v30 = type metadata accessor for DIPHTTPSession(0);
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();
    *&v27[OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession] = sub_1005BE690(v38, v29);
    v37.receiver = v27;
    v37.super_class = v26;
    v33 = objc_msgSendSuper2(&v37, "init");
    sub_10000BB78(&v41);
    sub_1003A10A4(v25, type metadata accessor for DIPHTTPSession.Configuration);
    v42 = v26;
    v43 = &off_1008181D8;
    *&v41 = v33;
    sub_10000BE18(v20, &qword_100842548, &unk_1006DF5D0);
    if (v40)
    {
      sub_10000BE18(&v39, &qword_100842548, &unk_1006DF5D0);
    }
  }

  sub_10001F358(&v41, v19 + 112);
  sub_10001F358(&v44, v19 + 152);
  sub_10001F358(&v51, v19 + 192);
  sub_10001F358(&v48, v19 + 232);
  sub_10000BB78(v47);
  return v19;
}

uint64_t sub_1003A0B44(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DIPHTTPSession.Configuration(0);
  v12 = *(*(v11 - 1) + 64);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = &type metadata for FairPlayProvisioner;
  v43 = &off_100817E20;
  v15 = swift_allocObject();
  *&v41 = v15;
  v16 = a2[1];
  v15[1] = *a2;
  v15[2] = v16;
  v15[3] = a2[2];
  sub_10000BBC4(a1, &v36, &qword_100842558, &unk_1006DF5E8);
  if (v37)
  {
    sub_10000BE18(a1, &qword_100842558, &unk_1006DF5E8);
    sub_10001F358(&v36, &v38);
    *(a3 + 96) = 0;
  }

  else
  {
    sub_10000BE18(&v36, &qword_100842558, &unk_1006DF5E8);
    type metadata accessor for IdentityProofingDatabaseProvider();
    v17 = swift_allocObject();
    v18 = type metadata accessor for IdentitySelfHealer();
    v19 = objc_allocWithZone(v18);
    v20 = &v19[OBJC_IVAR____TtC8coreidvd18IdentitySelfHealer_proofingSessionID];
    *v20 = 0;
    *(v20 + 1) = 0;
    *&v19[OBJC_IVAR____TtC8coreidvd18IdentitySelfHealer_databaseProvider] = v17;
    v35.receiver = v19;
    v35.super_class = v18;
    *(a3 + 96) = objc_msgSendSuper2(&v35, "init");
    v21 = v11[6];
    v22 = enum case for DIPBackoffStrategy.noBackoff(_:);
    v23 = type metadata accessor for DIPBackoffStrategy();
    (*(*(v23 - 8) + 104))(&v14[v21], v22, v23);
    *v14 = 0x403E000000000000;
    *(v14 + 1) = 0;
    v14[v11[7]] = 0;
    v14[v11[8]] = 1;
    v14[v11[9]] = 0;
    v24 = &v14[v11[10]];
    *v24 = 0;
    *(v24 + 1) = 0;
    UUID.init()();
    v25 = UUID.uuidString.getter();
    v27 = v26;
    (*(v7 + 8))(v10, v6);
    type metadata accessor for DIPAccountManager();
    static DIPAccountManager.sharedInstance.getter();
    v28 = type metadata accessor for DIPTopekaWebService();
    v29 = objc_allocWithZone(v28);
    v30 = sub_1005D7D88(v25, v27, &v38, v14);
    v31 = v30;
    v32 = &off_10080DB50;
    if (!*(a3 + 96))
    {
      v32 = 0;
    }

    *&v30[OBJC_IVAR____TtC8coreidvd19DIPTopekaWebService_selfHealer + 8] = v32;
    swift_unknownObjectWeakAssign();
    v39 = v28;
    v40 = &off_10080E468;
    *&v38 = v31;
    sub_10000BE18(a1, &qword_100842558, &unk_1006DF5E8);
  }

  sub_10001F358(&v38, a3 + 16);
  sub_10001F358(&v41, a3 + 56);
  return a3;
}

uint64_t sub_1003A0F0C()
{
  sub_10000BB78((v0 + 16));
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1003A0FFC()
{
  sub_10000BB78((v0 + 48));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1003A103C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003A10A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1003A1104()
{
  result = qword_100842560;
  if (!qword_100842560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100842560);
  }

  return result;
}

uint64_t sub_1003A1158(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1003A11A0()
{
  v1 = type metadata accessor for MobileDocumentReaderRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for MobileDocumentReaderDeviceEngagementType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_1003A12F8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MobileDocumentReaderRequest() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for MobileDocumentReaderDeviceEngagementType() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100027B9C;

  return sub_10039B800(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_1003A1458(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100041F04;

  return sub_100399C4C(a1, v1);
}

uint64_t sub_1003A1518(uint64_t a1)
{
  v1[97] = a1;
  v2 = type metadata accessor for DIPError.Code();
  v1[98] = v2;
  v3 = *(v2 - 8);
  v1[99] = v3;
  v4 = *(v3 + 64) + 15;
  v1[100] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v1[101] = v5;
  v6 = *(v5 - 8);
  v1[102] = v6;
  v7 = *(v6 + 64) + 15;
  v1[103] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v1[104] = v8;
  v9 = *(v8 - 8);
  v1[105] = v9;
  v10 = *(v9 + 64) + 15;
  v1[106] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v1[107] = v11;
  v12 = *(v11 - 8);
  v1[108] = v12;
  v13 = *(v12 + 64) + 15;
  v1[109] = swift_task_alloc();

  return _swift_task_switch(sub_1003A16EC, 0, 0);
}

uint64_t sub_1003A16EC()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_1000318FC(&v1[4], (v0 + 63));
  os_unfair_lock_unlock(v1 + 54);
  sub_100020260((v0 + 63), (v0 + 88));
  sub_100031918((v0 + 63));
  v2 = *sub_10000BA08(v0 + 88, v0[91]);
  v3 = swift_task_alloc();
  v0[110] = v3;
  *v3 = v0;
  v3[1] = sub_1003A1820;

  return sub_10050886C((v0 + 2));
}

uint64_t sub_1003A1820()
{
  v2 = *v1;
  v3 = *(*v1 + 880);
  v6 = *v1;
  *(*v1 + 888) = v0;

  if (v0)
  {
    v4 = sub_1003A1F4C;
  }

  else
  {
    sub_1000F2758(v2 + 16);
    v4 = sub_1003A193C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003A193C()
{
  v1 = v0[109];
  v2 = v0[108];
  v3 = v0[107];
  sub_10000BB78(v0 + 88);
  UUID.init()();
  UUID.uuidString.getter();
  v0[112] = v4;
  (*(v2 + 8))(v1, v3);
  v5 = swift_task_alloc();
  v0[113] = v5;
  *v5 = v0;
  v5[1] = sub_1003A1A24;

  return sub_1005D7070(1);
}

uint64_t sub_1003A1A24(uint64_t a1)
{
  v2 = *(*v1 + 904);
  v3 = *(*v1 + 896);
  v5 = *v1;
  *(*v1 + 912) = a1;

  return _swift_task_switch(sub_1003A1B44, 0, 0);
}

uint64_t sub_1003A1B44()
{
  if (v0[114])
  {
    v1 = swift_task_alloc();
    v0[115] = v1;
    *v1 = v0;
    v1[1] = sub_1003A1E28;
    v2 = v0[97];

    return sub_1005CACEC(v2);
  }

  else
  {
    (*(v0[99] + 104))(v0[100], enum case for DIPError.Code.unexpectedDaemonState(_:), v0[98]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v5 = v0[109];
    v6 = v0[106];
    v7 = v0[103];
    (*(v0[99] + 104))(v0[100], enum case for DIPError.Code.internalError(_:), v0[98]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1003A1E28(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[93] = v3;
  v5[94] = a1;
  v5[95] = a2;
  v5[96] = v2;
  v6 = v4[115];
  v9 = *v3;
  v5[116] = v2;

  if (v2)
  {
    v7 = sub_1003A23A0;
  }

  else
  {
    v7 = sub_1003A2114;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003A1F4C()
{
  sub_10000BB78(v0 + 88);
  v1 = v0[111];
  v2 = v0[109];
  v3 = v0[106];
  v6 = v0[103];
  (*(v0[99] + 104))(v0[100], enum case for DIPError.Code.internalError(_:), v0[98]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003A2114()
{
  v34 = v0;
  v1 = v0[106];
  v2 = v0[103];
  v3 = v0[102];
  v4 = v0[101];
  v5 = v0[97];
  defaultLogger()();
  (*(v3 + 16))(v2, v5, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[106];
  v10 = v0[105];
  v11 = v0[104];
  v12 = v0[103];
  v13 = v0[102];
  v14 = v0[101];
  if (v8)
  {
    v32 = v0[114];
    v15 = swift_slowAlloc();
    v29 = v7;
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136315138;
    sub_1002A7708(&qword_1008418B0, &type metadata accessor for URL);
    v30 = v11;
    v31 = v9;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v13 + 8))(v12, v14);
    v20 = sub_100141FE4(v17, v19, &v33);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v6, v29, "MobileDocumentReaderLogoFetcher received logo from URL %s", v15, 0xCu);
    sub_10000BB78(v16);

    (*(v10 + 8))(v31, v30);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
    (*(v10 + 8))(v9, v11);
  }

  v21 = v0[94];
  v22 = v0[95];
  v23 = v0[109];
  v24 = v0[106];
  v25 = v0[103];
  v26 = v0[100];

  v27 = v0[1];

  return v27(v21, v22);
}

uint64_t sub_1003A23A0()
{
  v1 = v0[114];

  v2 = v0[116];
  v3 = v0[109];
  v4 = v0[106];
  v7 = v0[103];
  (*(v0[99] + 104))(v0[100], enum case for DIPError.Code.internalError(_:), v0[98]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1003A2568()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v8 = swift_task_alloc();
  v1[10] = v8;
  *v8 = v1;
  v8[1] = sub_1003A26D0;

  return sub_100504E08();
}

uint64_t sub_1003A26D0(char a1)
{
  v2 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_1003A27D0, 0, 0);
}

uint64_t sub_1003A27D0()
{
  if (*(v0 + 96))
  {
LABEL_6:
    v11 = *sub_10000BA08((*(v0 + 16) + 56), *(*(v0 + 16) + 80));
    v12 = swift_task_alloc();
    *(v0 + 88) = v12;
    *v12 = v0;
    v12[1] = sub_1003A2B90;

    return sub_1003A8A80();
  }

  v1 = [objc_opt_self() standardUserDefaults];
  v2._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.disableRadioChecks.getter();
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    v4 = *(v0 + 48);
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Bluetooth is not enabled. Bypassing this check due to internal setting.", v7, 2u);
    }

    v8 = *(v0 + 48);
    v9 = *(v0 + 24);
    v10 = *(v0 + 32);

    (*(v10 + 8))(v8, v9);
    goto LABEL_6;
  }

  v14 = *(v0 + 72);
  v17 = *(v0 + 56);
  v18 = *(v0 + 48);
  v19 = *(v0 + 40);
  v15 = *(*(v0 + 64) + 104);
  v15(v14, enum case for DIPError.Code.documentReaderRequiresBluetooth(_:));
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1003A8A1C(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  (v15)(v14, enum case for DIPError.Code.internalError(_:), v17);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1003A2B90(char a1)
{
  v2 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 97) = a1;

  return _swift_task_switch(sub_1003A2C90, 0, 0);
}

uint64_t sub_1003A2C90()
{
  if (*(v0 + 97))
  {
LABEL_6:
    v11 = *(v0 + 72);
    v12 = *(v0 + 40);
    v13 = *(v0 + 48);

    v14 = *(v0 + 8);
    goto LABEL_8;
  }

  v1 = [objc_opt_self() standardUserDefaults];
  v2._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.disableRadioChecks.getter();
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    v4 = *(v0 + 40);
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "NFC is not enabled. Bypassing this check due to internal setting.", v7, 2u);
    }

    v9 = *(v0 + 32);
    v8 = *(v0 + 40);
    v10 = *(v0 + 24);

    (*(v9 + 8))(v8, v10);
    goto LABEL_6;
  }

  v15 = *(v0 + 72);
  v18 = *(v0 + 56);
  v19 = *(v0 + 48);
  v20 = *(v0 + 40);
  v16 = *(*(v0 + 64) + 104);
  v16(v15, enum case for DIPError.Code.documentReaderRequiresNFC(_:));
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1003A8A1C(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  (v16)(v15, enum case for DIPError.Code.internalError(_:), v18);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v14 = *(v0 + 8);
LABEL_8:

  return v14();
}

uint64_t sub_1003A3000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  v5 = *(*(sub_100007224(&qword_10083B020, &unk_1006D8ED0) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v6 = type metadata accessor for DIPError.Code();
  v4[22] = v6;
  v7 = *(v6 - 8);
  v4[23] = v7;
  v8 = *(v7 + 64) + 15;
  v4[24] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v4[25] = v9;
  v10 = *(v9 - 8);
  v4[26] = v10;
  v11 = *(v10 + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v12 = type metadata accessor for ISO18013SessionCryptarch.PrivateKey();
  v4[29] = v12;
  v13 = *(v12 - 8);
  v4[30] = v13;
  v14 = *(v13 + 64) + 15;
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v15 = type metadata accessor for DaemonAnalytics.MobileDocumentReaderSessionStatus();
  v4[33] = v15;
  v16 = *(v15 - 8);
  v4[34] = v16;
  v17 = *(v16 + 64) + 15;
  v4[35] = swift_task_alloc();
  v18 = type metadata accessor for Milestone();
  v4[36] = v18;
  v19 = *(v18 - 8);
  v4[37] = v19;
  v20 = *(v19 + 64) + 15;
  v4[38] = swift_task_alloc();
  v21 = *(*(sub_100007224(&qword_100835D88, &qword_1006DE890) - 8) + 64) + 15;
  v4[39] = swift_task_alloc();
  v22 = type metadata accessor for ISO18013SessionTranscript();
  v4[40] = v22;
  v23 = *(v22 - 8);
  v4[41] = v23;
  v24 = *(v23 + 64) + 15;
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v25 = type metadata accessor for ISO18013ReaderRequest();
  v4[44] = v25;
  v26 = *(v25 - 8);
  v4[45] = v26;
  v27 = *(v26 + 64) + 15;
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v28 = sub_100007224(&qword_100841BE0, &qword_1006DEB08);
  v4[48] = v28;
  v29 = *(v28 - 8);
  v4[49] = v29;
  v30 = *(v29 + 64) + 15;
  v4[50] = swift_task_alloc();
  v31 = *(*(sub_100007224(&qword_1008419D8, &qword_1006DEAB0) - 8) + 64) + 15;
  v4[51] = swift_task_alloc();
  v32 = type metadata accessor for MobileDocumentReaderAuthenticationSession();
  v4[52] = v32;
  v33 = *(v32 - 8);
  v4[53] = v33;
  v34 = *(v33 + 64) + 15;
  v4[54] = swift_task_alloc();

  return _swift_task_switch(sub_1003A3494, 0, 0);
}

uint64_t sub_1003A3494()
{
  v1 = v0[17];
  v2 = sub_10000BA08((v0[19] + 240), *(v0[19] + 264));
  v3 = MobileDocumentReaderRequest.sessionIdentifier.getter();
  v5 = v4;
  v0[55] = v4;
  v6 = *v2;
  v7 = swift_task_alloc();
  v0[56] = v7;
  *v7 = v0;
  v7[1] = sub_1003A3564;
  v8 = v0[51];

  return sub_100389664(v8, v3, v5);
}

uint64_t sub_1003A3564()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v4 = *v1;
  *(*v1 + 456) = v0;

  v5 = *(v2 + 440);

  if (v0)
  {
    v6 = sub_1003A39C8;
  }

  else
  {
    v6 = sub_1003A3698;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1003A3698()
{
  v1 = v0[51];
  if ((*(v0[53] + 48))(v1, 1, v0[52]) == 1)
  {
    v3 = v0[34];
    v2 = v0[35];
    v4 = v0[33];
    v6 = v0[23];
    v5 = v0[24];
    v7 = v0[22];
    sub_10000BE18(v1, &qword_1008419D8, &qword_1006DEAB0);
    type metadata accessor for DaemonAnalytics();
    v8 = enum case for DaemonAnalytics.MobileDocumentReaderInvalidSessionReason.sessionMissing(_:);
    v9 = type metadata accessor for DaemonAnalytics.MobileDocumentReaderInvalidSessionReason();
    (*(*(v9 - 8) + 104))(v2, v8, v9);
    (*(v3 + 104))(v2, enum case for DaemonAnalytics.MobileDocumentReaderSessionStatus.invalid(_:), v4);
    static DaemonAnalytics.sendReadDocumentSessionStatus(status:)();
    (*(v3 + 8))(v2, v4);
    (*(v6 + 104))(v5, enum case for DIPError.Code.documentReaderMissingSession(_:), v7);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003A8A1C(&qword_100834130, &type metadata accessor for DIPError);
    v10 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v0[80] = v10;
    v11 = *(v0[19] + 96);
    v0[81] = v11;

    return _swift_task_switch(sub_1003A4AB8, v11, 0);
  }

  else
  {
    v12 = v0[19];
    sub_100355438(v1, v0[54]);
    v0[58] = v12[12];
    v0[59] = v12[13];
    v13 = v12[14];
    v0[60] = v13;
    ObjectType = swift_getObjectType();
    v0[61] = ObjectType;
    v15 = swift_task_alloc();
    v0[62] = v15;
    *v15 = v0;
    v15[1] = sub_1003A39F4;
    v16 = v0[50];
    v17 = v0[18];

    return sub_1003D5518(v16, v17, ObjectType, v13);
  }
}

uint64_t sub_1003A39C8()
{
  v0[80] = v0[57];
  v1 = *(v0[19] + 96);
  v0[81] = v1;
  return _swift_task_switch(sub_1003A4AB8, v1, 0);
}

uint64_t sub_1003A39F4()
{
  v2 = *(*v1 + 496);
  v5 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v3 = sub_1003A53A4;
  }

  else
  {
    v3 = sub_1003A3B08;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003A3B08()
{
  v1 = v0[50];
  v2 = v0[48];
  v3 = v0[43];
  v4 = v0[19];
  sub_100020260(v4 + 120, (v0 + 2));
  v0[64] = sub_10000BA08(v0 + 2, v0[5]);
  CBOREncodedCBOR.value.getter();
  v5 = *sub_10000BA08((v4 + 280), *(v4 + 304));
  v6 = swift_task_alloc();
  v0[65] = v6;
  *v6 = v0;
  v6[1] = sub_1003A3BEC;
  v7 = v0[17];

  return sub_1003484CC(v7);
}

uint64_t sub_1003A3BEC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 520);
  v7 = *v2;
  v3[66] = a1;
  v3[67] = v1;

  if (v1)
  {
    (*(v3[41] + 8))(v3[43], v3[40]);
    v5 = sub_1003A4064;
  }

  else
  {
    v5 = sub_1003A3D1C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003A3D1C()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 416);
  v3 = *(v0 + 312);
  v4 = (v1 + *(v2 + 40));
  v5 = *v4;
  v6 = v4[1];
  sub_10000BBC4(v1 + *(v2 + 56), v3, &qword_100835D88, &qword_1006DE890);
  v7 = sub_100007224(&unk_100835E00, &qword_1006C46A0);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v3, 1, v7);
  v10 = *(v0 + 312);
  if (v9 == 1)
  {
    sub_10000BE18(*(v0 + 312), &qword_100835D88, &qword_1006DE890);
    v11 = 0;
    v12 = 0xF000000000000000;
  }

  else
  {
    v11 = CBOREncodedCBOR.dataValue.getter();
    v12 = v13;
    (*(v8 + 8))(v10, v7);
  }

  v14 = *(v0 + 536);
  v15 = *(v0 + 512);
  sub_100366FA8(*(v0 + 136), *(v0 + 344), *(v0 + 528), v5, v6, v11, v12, *(v0 + 376));
  if (v14)
  {
    v16 = *(v0 + 528);
    v41 = *(v0 + 432);
    v18 = *(v0 + 392);
    v17 = *(v0 + 400);
    v19 = *(v0 + 384);
    v20 = *(v0 + 344);
    v22 = *(v0 + 320);
    v21 = *(v0 + 328);

    sub_10000BD94(v11, v12);
    (*(v21 + 8))(v20, v22);
    (*(v18 + 8))(v17, v19);
    sub_10035C718(v41);
    sub_10000BB78((v0 + 16));
    *(v0 + 640) = v14;
    v23 = *(*(v0 + 152) + 96);
    *(v0 + 648) = v23;

    return _swift_task_switch(sub_1003A4AB8, v23, 0);
  }

  else
  {
    v24 = *(v0 + 528);
    v25 = *(v0 + 464);
    v40 = *(v0 + 472);
    v42 = *(v0 + 488);
    v39 = *(v0 + 400);
    v26 = *(v0 + 384);
    v28 = *(v0 + 336);
    v27 = *(v0 + 344);
    v29 = *(v0 + 320);
    v30 = *(v0 + 328);
    v31 = *(v0 + 152);

    sub_10000BD94(v11, v12);
    v32 = *(v30 + 8);
    *(v0 + 544) = v32;
    *(v0 + 552) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v32(v27, v29);
    sub_10000BB78((v0 + 16));
    sub_10000BA08((v31 + 120), *(v31 + 144));
    CBOREncodedCBOR.value.getter();
    *(v0 + 80) = v42;
    *(v0 + 88) = v40;
    *(v0 + 56) = v25;
    swift_unknownObjectRetain();
    v33 = swift_task_alloc();
    *(v0 + 560) = v33;
    *v33 = v0;
    v33[1] = sub_1003A4100;
    v34 = *(v0 + 432);
    v35 = *(v0 + 368);
    v36 = *(v0 + 376);
    v37 = *(v0 + 336);

    return sub_100369558(v35, v36, v37, v34, v0 + 56);
  }
}

uint64_t sub_1003A4064()
{
  v1 = v0[54];
  (*(v0[49] + 8))(v0[50], v0[48]);
  sub_10035C718(v1);
  sub_10000BB78(v0 + 2);
  v0[80] = v0[67];
  v2 = *(v0[19] + 96);
  v0[81] = v2;

  return _swift_task_switch(sub_1003A4AB8, v2, 0);
}

uint64_t sub_1003A4100()
{
  v2 = *v1;
  v3 = *(*v1 + 560);
  v7 = *v1;
  *(*v1 + 568) = v0;

  v4 = *(v2 + 552);
  (*(v2 + 544))(*(v2 + 336), *(v2 + 320));
  if (v0)
  {
    v5 = sub_1003A44A4;
  }

  else
  {
    sub_10000BB78((v2 + 56));
    v5 = sub_1003A4244;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003A4244()
{
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[33];
  v6 = v0[34];
  static MobileDocumentReaderMilestone.readRequestBuilt.getter();
  Milestone.log()();
  v7 = *(v2 + 8);
  v0[72] = v7;
  v0[73] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v3);
  type metadata accessor for DaemonAnalytics();
  (*(v6 + 104))(v4, enum case for DaemonAnalytics.MobileDocumentReaderSessionStatus.valid(_:), v5);
  static DaemonAnalytics.sendReadDocumentSessionStatus(status:)();
  (*(v6 + 8))(v4, v5);
  v8 = swift_task_alloc();
  v0[74] = v8;
  *v8 = v0;
  v8[1] = sub_1003A4388;
  v10 = v0[60];
  v9 = v0[61];
  v11 = v0[58];
  v12 = v0[46];
  v13 = v0[31];

  return sub_1003D5C48(v13, v12, v9, v10);
}

uint64_t sub_1003A4388(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 592);
  v8 = *v3;
  v4[75] = a1;
  v4[76] = a2;
  v4[77] = v2;

  if (v2)
  {
    v6 = sub_1003A541C;
  }

  else
  {
    v6 = sub_1003A4564;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1003A44A4()
{
  v1 = v0[54];
  v3 = v0[49];
  v2 = v0[50];
  v4 = v0[48];
  (*(v0[45] + 8))(v0[47], v0[44]);
  (*(v3 + 8))(v2, v4);
  sub_10035C718(v1);
  sub_10000BB78(v0 + 7);
  v0[80] = v0[71];
  v5 = *(v0[19] + 96);
  v0[81] = v5;

  return _swift_task_switch(sub_1003A4AB8, v5, 0);
}

uint64_t sub_1003A4564()
{
  v34 = v0;
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[28];
  (*(v0[30] + 32))(v0[32], v0[31], v0[29]);
  defaultLogger()();
  sub_10000B8B8(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  sub_10000B90C(v2, v1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[76];
    v7 = v0[75];
    v8 = v0[26];
    v31 = v0[25];
    v32 = v0[28];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33 = v10;
    *v9 = 136315138;
    sub_10000B8B8(v7, v6);
    v11 = Data.description.getter();
    v13 = v12;
    sub_10000B90C(v7, v6);
    v14 = sub_100141FE4(v11, v13, &v33);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "MobileDocumentReaderManager: Mobile document response received: %s", v9, 0xCu);
    sub_10000BB78(v10);

    (*(v8 + 8))(v32, v31);
  }

  else
  {
    v15 = v0[28];
    v16 = v0[25];
    v17 = v0[26];

    (*(v17 + 8))(v15, v16);
  }

  v18 = v0[73];
  v19 = v0[72];
  v20 = v0[38];
  v21 = v0[36];
  static MobileDocumentReaderMilestone.readDocumentResponseReceived.getter();
  Milestone.log()();
  v19(v20, v21);
  v22 = swift_task_alloc();
  v0[78] = v22;
  *v22 = v0;
  v22[1] = sub_1003A47D4;
  v23 = v0[76];
  v24 = v0[75];
  v25 = v0[50];
  v26 = v0[32];
  v27 = v0[19];
  v28 = v0[16];
  v29 = v0[17];

  return sub_1003A5620(v28, v24, v23, v29, v25, v26);
}

uint64_t sub_1003A47D4()
{
  v2 = *(*v1 + 624);
  v5 = *v1;
  *(*v1 + 632) = v0;

  if (v0)
  {
    v3 = sub_1003A5500;
  }

  else
  {
    v3 = sub_1003A48E8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003A48E8()
{
  v1 = v0[54];
  v2 = v0[50];
  v3 = v0[49];
  v14 = v0[48];
  v15 = v0[51];
  v4 = v0[46];
  v13 = v0[47];
  v5 = v0[44];
  v6 = v0[45];
  v16 = v0[43];
  v17 = v0[42];
  v18 = v0[39];
  v19 = v0[38];
  v7 = v0[32];
  v20 = v0[35];
  v21 = v0[31];
  v9 = v0[29];
  v8 = v0[30];
  v22 = v0[28];
  v23 = v0[27];
  v24 = v0[24];
  v25 = v0[21];
  v26 = v0[20];
  sub_10000B90C(v0[75], v0[76]);
  (*(v8 + 8))(v7, v9);
  v10 = *(v6 + 8);
  v10(v4, v5);
  v10(v13, v5);
  (*(v3 + 8))(v2, v14);
  sub_10035C718(v1);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003A4AB8()
{
  v1 = *(v0 + 648);
  [*(v1 + 120) invalidate];
  v2 = *(v1 + 120);
  *(v1 + 120) = 0;

  *(v1 + 112) = 0;

  return _swift_task_switch(sub_1003A4B3C, 0, 0);
}

uint64_t sub_1003A4B3C()
{
  v1 = v0[80];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[21];
  swift_getErrorValue();
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[14];
  Error.dipErrorCode.getter();
  if ((*(v3 + 48))(v4, 1, v2) != 1)
  {
    v8 = v0[22];
    v9 = v0[23];
    v10 = v0[20];
    sub_10000BBC4(v0[21], v10, &qword_10083B020, &unk_1006D8ED0);
    if ((*(v9 + 88))(v10, v8) == enum case for DIPError.Code.sesKeySignError(_:))
    {
      v11 = v0[27];
      defaultLogger()();
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "MobileDocumentReaderManager encountered error while signing with underlying SE key. Session is no longer valid, deleting from local storage and throwing a session expired error.", v14, 2u);
      }

      v16 = v0[26];
      v15 = v0[27];
      v17 = v0[25];
      v18 = v0[19];
      v19 = v0[17];

      (*(v16 + 8))(v15, v17);
      v20 = sub_10000BA08((v18 + 240), *(v18 + 264));
      v21 = MobileDocumentReaderRequest.sessionIdentifier.getter();
      v23 = v22;
      v0[82] = v22;
      v24 = *v20;
      v25 = swift_task_alloc();
      v0[83] = v25;
      *v25 = v0;
      v25[1] = sub_1003A4F88;

      return sub_1003916E8(v21, v23);
    }

    (*(v0[23] + 8))(v0[20], v0[22]);
  }

  v27 = v0[80];
  (*(v0[23] + 104))(v0[24], enum case for DIPError.Code.internalError(_:), v0[22]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1003A8A1C(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v28 = v0[80];
  v29 = v0[54];
  v30 = v0[50];
  v31 = v0[51];
  v33 = v0[46];
  v32 = v0[47];
  v35 = v0[42];
  v34 = v0[43];
  v36 = v0[39];
  v39 = v0[38];
  v40 = v0[35];
  v41 = v0[32];
  v42 = v0[31];
  v43 = v0[28];
  v44 = v0[27];
  v37 = v0[21];
  v45 = v0[24];
  v46 = v0[20];

  sub_10000BE18(v37, &qword_10083B020, &unk_1006D8ED0);

  v38 = v0[1];

  return v38();
}

uint64_t sub_1003A4F88()
{
  v1 = *(*v0 + 664);
  v2 = *(*v0 + 656);
  v4 = *v0;

  return _swift_task_switch(sub_1003A50A0, 0, 0);
}

uint64_t sub_1003A50A0()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];
  type metadata accessor for DaemonAnalytics();
  v7 = enum case for DaemonAnalytics.MobileDocumentReaderInvalidSessionReason.seKeyMissing(_:);
  v8 = type metadata accessor for DaemonAnalytics.MobileDocumentReaderInvalidSessionReason();
  (*(*(v8 - 8) + 104))(v1, v7, v8);
  (*(v2 + 104))(v1, enum case for DaemonAnalytics.MobileDocumentReaderSessionStatus.invalid(_:), v3);
  static DaemonAnalytics.sendReadDocumentSessionStatus(status:)();
  (*(v2 + 8))(v1, v3);
  (*(v5 + 104))(v4, enum case for DIPError.Code.documentReaderSessionExpired(_:), v6);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1003A8A1C(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v9 = v0[80];
  v10 = v0[54];
  v11 = v0[50];
  v12 = v0[51];
  v14 = v0[46];
  v13 = v0[47];
  v16 = v0[42];
  v15 = v0[43];
  v17 = v0[39];
  v21 = v0[38];
  v22 = v0[35];
  v23 = v0[32];
  v24 = v0[31];
  v25 = v0[28];
  v26 = v0[27];
  v18 = v0[21];
  v27 = v0[24];
  v28 = v0[20];

  sub_10000BE18(v18, &qword_10083B020, &unk_1006D8ED0);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1003A53A4()
{
  sub_10035C718(v0[54]);
  v0[80] = v0[63];
  v1 = *(v0[19] + 96);
  v0[81] = v1;

  return _swift_task_switch(sub_1003A4AB8, v1, 0);
}

uint64_t sub_1003A541C()
{
  v1 = v0[54];
  v3 = v0[49];
  v2 = v0[50];
  v5 = v0[47];
  v4 = v0[48];
  v6 = v0[44];
  v7 = *(v0[45] + 8);
  v7(v0[46], v6);
  v7(v5, v6);
  (*(v3 + 8))(v2, v4);
  sub_10035C718(v1);
  v0[80] = v0[77];
  v8 = *(v0[19] + 96);
  v0[81] = v8;

  return _swift_task_switch(sub_1003A4AB8, v8, 0);
}

uint64_t sub_1003A5500()
{
  v1 = v0[49];
  v13 = v0[50];
  v14 = v0[54];
  v3 = v0[47];
  v2 = v0[48];
  v4 = v0[45];
  v5 = v0[46];
  v6 = v0[44];
  v7 = v0[32];
  v9 = v0[29];
  v8 = v0[30];
  sub_10000B90C(v0[75], v0[76]);
  (*(v8 + 8))(v7, v9);
  v10 = *(v4 + 8);
  v10(v5, v6);
  v10(v3, v6);
  (*(v1 + 8))(v13, v2);
  sub_10035C718(v14);
  v0[80] = v0[79];
  v11 = *(v0[19] + 96);
  v0[81] = v11;

  return _swift_task_switch(sub_1003A4AB8, v11, 0);
}

uint64_t sub_1003A5620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = type metadata accessor for DIPError.Code();
  v7[9] = v8;
  v9 = *(v8 - 8);
  v7[10] = v9;
  v10 = *(v9 + 64) + 15;
  v7[11] = swift_task_alloc();
  v11 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements();
  v7[12] = v11;
  v12 = *(v11 - 8);
  v7[13] = v12;
  v13 = *(v12 + 64) + 15;
  v7[14] = swift_task_alloc();
  v14 = type metadata accessor for VICALDocument();
  v7[15] = v14;
  v15 = *(v14 - 8);
  v7[16] = v15;
  v16 = *(v15 + 64) + 15;
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v17 = *(*(sub_100007224(&qword_1008426E8, &qword_1006DF768) - 8) + 64) + 15;
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v18 = *(*(sub_100007224(&qword_1008426F0, &qword_1006DF770) - 8) + 64) + 15;
  v7[22] = swift_task_alloc();
  v19 = type metadata accessor for MobileDocumentRequestType.Storage();
  v7[23] = v19;
  v20 = *(v19 - 8);
  v7[24] = v20;
  v21 = *(v20 + 64) + 15;
  v7[25] = swift_task_alloc();
  v22 = type metadata accessor for MobileDocumentRequestType();
  v7[26] = v22;
  v23 = *(v22 - 8);
  v7[27] = v23;
  v24 = *(v23 + 64) + 15;
  v7[28] = swift_task_alloc();
  v25 = type metadata accessor for ISO18013Response.Status();
  v7[29] = v25;
  v26 = *(v25 - 8);
  v7[30] = v26;
  v27 = *(v26 + 64) + 15;
  v7[31] = swift_task_alloc();
  v28 = type metadata accessor for Logger();
  v7[32] = v28;
  v29 = *(v28 - 8);
  v7[33] = v29;
  v30 = *(v29 + 64) + 15;
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  v31 = type metadata accessor for ISO18013Response();
  v7[39] = v31;
  v32 = *(v31 - 8);
  v7[40] = v32;
  v33 = *(v32 + 64) + 15;
  v7[41] = swift_task_alloc();
  v7[42] = swift_task_alloc();

  return _swift_task_switch(sub_1003A5A40, 0, 0);
}

uint64_t sub_1003A5A40()
{
  v1 = v0[42];
  v2 = v0[8];
  v3 = v0[3];
  v4 = v0[4];
  sub_1003A7B64();
  v5 = v0[41];
  v6 = v0[42];
  v7 = v0[39];
  v8 = v0[40];
  v9 = v0[38];
  defaultLogger()();
  (*(v8 + 16))(v5, v6, v7);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[40];
  v13 = v0[41];
  v15 = v0[39];
  if (v12)
  {
    v17 = v0[30];
    v16 = v0[31];
    v48 = v0[29];
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    ISO18013Response.status.getter();
    v19 = ISO18013Response.Status.rawValue.getter();
    (*(v17 + 8))(v16, v48);
    v20 = *(v14 + 8);
    v20(v13, v15);
    *(v18 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "MobileDocumentReaderManager: Valid ISO18013 response received with status: %lu", v18, 0xCu);
  }

  else
  {
    v20 = *(v14 + 8);
    v20(v0[41], v0[39]);
  }

  v21 = v10;
  v0[43] = v20;
  v22 = v0[38];
  v23 = v0[32];
  v24 = v0[33];
  v25 = v0[27];
  v26 = v0[28];
  v27 = v0[25];
  v49 = v0[26];
  v29 = v0[23];
  v28 = v0[24];
  v30 = v0[5];

  v31 = *(v24 + 8);
  v0[44] = v31;
  v0[45] = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v32 = v22;
  v33 = v31;
  v31(v32, v23);
  MobileDocumentReaderRequest.documentRequestType.getter();
  MobileDocumentRequestType.storage.getter();
  (*(v25 + 8))(v26, v49);
  LODWORD(v30) = (*(v28 + 88))(v27, v29);
  LODWORD(v25) = enum case for MobileDocumentRequestType.Storage.rawDataRequest(_:);
  (*(v28 + 8))(v27, v29);
  if (v30 == v25)
  {
    v34 = v0[37];
    defaultLogger()();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "MobileDocumentReaderManager data transfer request, validating key revocation", v37, 2u);
    }

    v38 = v0[37];
    v39 = v0[32];
    v40 = v0[8];

    v33(v38, v39);
    v41 = *sub_10000BA08((v40 + 160), *(v40 + 184));
    v42 = swift_task_alloc();
    v0[46] = v42;
    *v42 = v0;
    v42[1] = sub_1003A6060;
    v43 = v0[42];

    return sub_1003733A8(v43);
  }

  else
  {
    v45 = *sub_10000BA08((v0[8] + 280), *(v0[8] + 304));
    v46 = swift_task_alloc();
    v0[48] = v46;
    *v46 = v0;
    v46[1] = sub_1003A6928;
    v47 = v0[5];

    return sub_1003484CC(v47);
  }
}

uint64_t sub_1003A6060()
{
  v2 = *(*v1 + 368);
  v5 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = sub_1003A66A0;
  }

  else
  {
    v3 = sub_1003A6174;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003A6174()
{
  v1 = *(v0 + 288);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderManager data transfer request, returning data blob.", v4, 2u);
  }

  v5 = *(v0 + 376);
  v7 = *(v0 + 352);
  v6 = *(v0 + 360);
  v8 = *(v0 + 288);
  v9 = *(v0 + 256);
  v10 = *(v0 + 48);

  v7(v8, v9);
  v11 = type metadata accessor for CBOREncoder();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  CBOREncoder.init()();
  sub_100007224(&qword_100841BE0, &qword_1006DEB08);
  sub_1003A89B8();
  dispatch thunk of CBOREncoder.encode<A>(_:)();
  if (v5)
  {
    v14 = *(v0 + 320) + 8;
    (*(v0 + 344))(*(v0 + 336), *(v0 + 312));

    v15 = *(v0 + 328);
    v16 = *(v0 + 336);
    v35 = *(v0 + 304);
    v36 = *(v0 + 296);
    v37 = *(v0 + 288);
    v38 = *(v0 + 280);
    v39 = *(v0 + 272);
    v40 = *(v0 + 248);
    v41 = *(v0 + 224);
    v43 = *(v0 + 200);
    v45 = *(v0 + 176);
    v47 = *(v0 + 168);
    v49 = *(v0 + 160);
    v51 = *(v0 + 152);
    v53 = *(v0 + 144);
    v55 = *(v0 + 136);
    v57 = *(v0 + 112);
    (*(*(v0 + 80) + 104))(*(v0 + 88), enum case for DIPError.Code.internalError(_:), *(v0 + 72));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003A8A1C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v19 = *(v0 + 168);
    v18 = *(v0 + 176);
    v20 = *(v0 + 96);
    v21 = *(v0 + 104);
    v23 = *(v0 + 24);
    v22 = *(v0 + 32);
    v58 = *(v0 + 16);

    (*(v21 + 56))(v18, 1, 1, v20);
    v24 = type metadata accessor for MobileDocumentIssuer();
    (*(*(v24 - 8) + 56))(v19, 1, 1, v24);
    sub_10000B8B8(v23, v22);
    MobileDocumentReaderResponse.init(responseData:sessionTranscript:mobileIdentityDocumentElements:issuer:)();
    v25 = *(v0 + 328);
    v26 = *(v0 + 304);
    v28 = *(v0 + 288);
    v27 = *(v0 + 296);
    v30 = *(v0 + 272);
    v29 = *(v0 + 280);
    v31 = *(v0 + 248);
    v32 = *(v0 + 224);
    v42 = *(v0 + 200);
    v44 = *(v0 + 176);
    v46 = *(v0 + 168);
    v48 = *(v0 + 160);
    v50 = *(v0 + 152);
    v52 = *(v0 + 144);
    v54 = *(v0 + 136);
    v56 = *(v0 + 112);
    v59 = *(v0 + 88);
    v33 = (*(v0 + 320) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (*(v0 + 344))(*(v0 + 336), *(v0 + 312));
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1003A66A0()
{
  v1 = *(v0 + 320) + 8;
  (*(v0 + 344))(*(v0 + 336), *(v0 + 312));
  v2 = *(v0 + 376);
  v3 = *(v0 + 328);
  v4 = *(v0 + 336);
  v7 = *(v0 + 304);
  v8 = *(v0 + 296);
  v9 = *(v0 + 288);
  v10 = *(v0 + 280);
  v11 = *(v0 + 272);
  v12 = *(v0 + 248);
  v13 = *(v0 + 224);
  v14 = *(v0 + 200);
  v15 = *(v0 + 176);
  v16 = *(v0 + 168);
  v17 = *(v0 + 160);
  v18 = *(v0 + 152);
  v19 = *(v0 + 144);
  v20 = *(v0 + 136);
  v21 = *(v0 + 112);
  (*(*(v0 + 80) + 104))(*(v0 + 88), enum case for DIPError.Code.internalError(_:), *(v0 + 72));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1003A8A1C(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1003A6928(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 384);
  v7 = *v2;
  *(v3 + 392) = a1;
  *(v3 + 400) = v1;

  if (v1)
  {
    v5 = sub_1003A6BF8;
  }

  else
  {
    v5 = sub_1003A6A3C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003A6A3C()
{
  v1 = *sub_10000BA08((v0[8] + 280), *(v0[8] + 304));
  v2 = swift_task_alloc();
  v0[51] = v2;
  *v2 = v0;
  v2[1] = sub_1003A6AE4;
  v3 = v0[18];

  return sub_100346D68(v3);
}

uint64_t sub_1003A6AE4()
{
  v2 = *(*v1 + 408);
  v5 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v3 = sub_1003A6F8C;
  }

  else
  {
    v3 = sub_1003A6E80;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003A6BF8()
{
  v1 = *(v0 + 320) + 8;
  (*(v0 + 344))(*(v0 + 336), *(v0 + 312));
  v2 = *(v0 + 400);
  v3 = *(v0 + 328);
  v4 = *(v0 + 336);
  v7 = *(v0 + 304);
  v8 = *(v0 + 296);
  v9 = *(v0 + 288);
  v10 = *(v0 + 280);
  v11 = *(v0 + 272);
  v12 = *(v0 + 248);
  v13 = *(v0 + 224);
  v14 = *(v0 + 200);
  v15 = *(v0 + 176);
  v16 = *(v0 + 168);
  v17 = *(v0 + 160);
  v18 = *(v0 + 152);
  v19 = *(v0 + 144);
  v20 = *(v0 + 136);
  v21 = *(v0 + 112);
  (*(*(v0 + 80) + 104))(*(v0 + 88), enum case for DIPError.Code.internalError(_:), *(v0 + 72));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1003A8A1C(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1003A6E80()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  (*(v4 + 16))(v1, v2, v3);
  v5 = sub_10034C5B4(v1);
  (*(v4 + 8))(v2, v3);
  v0[53] = v5;
  v6 = *sub_10000BA08((v0[8] + 160), *(v0[8] + 184));
  v7 = swift_task_alloc();
  v0[54] = v7;
  *v7 = v0;
  v7[1] = sub_1003A704C;
  v8 = v0[49];
  v9 = v0[42];
  v11 = v0[6];
  v10 = v0[7];

  return sub_10036E664(v9, v10, v11, v8, v5);
}

uint64_t sub_1003A6F8C()
{
  v1 = v0[52];

  v0[53] = 0;
  v2 = *sub_10000BA08((v0[8] + 160), *(v0[8] + 184));
  v3 = swift_task_alloc();
  v0[54] = v3;
  *v3 = v0;
  v3[1] = sub_1003A704C;
  v4 = v0[49];
  v5 = v0[42];
  v7 = v0[6];
  v6 = v0[7];

  return sub_10036E664(v5, v6, v7, v4, 0);
}

uint64_t sub_1003A704C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 432);
  v5 = *(*v2 + 424);
  v6 = *(*v2 + 392);
  v9 = *v2;
  *(v3 + 440) = a1;
  *(v3 + 448) = v1;

  if (v1)
  {
    v7 = sub_1003A78DC;
  }

  else
  {
    v7 = sub_1003A71A4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003A71A4()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 336);
  v3 = *(v0 + 112);
  v4 = *(v0 + 40);
  sub_10000BA08((*(v0 + 64) + 200), *(*(v0 + 64) + 224));
  sub_1003C4424(v2, v3);
  v5 = *(v0 + 440);
  if (!v1)
  {
    v10 = *(v0 + 440);
    if (*(v5 + 16) == 1)
    {
      v11 = *(v5 + 32);
      if (v11 >> 62)
      {
        if (v11 < 0)
        {
          v30 = *(v5 + 32);
        }

        v31 = _CocoaArrayWrapper.endIndex.getter();
        v32 = *(v0 + 440);
        if (v31)
        {
LABEL_6:

          if ((v11 & 0xC000000000000001) != 0)
          {
            v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v14 = *(v11 + 32);
          }

          v15 = v14;

          v16 = SecCertificateRef.stateOrProvinceName.getter();
          if (v17)
          {
            v18 = v16;
            v19 = v17;
          }

          else
          {
            v18 = SecCertificateRef.countryName.getter();
            v19 = v20;
            if (!v20)
            {
              v22 = 1;
              goto LABEL_13;
            }
          }

          v21 = *(v0 + 152);

          MobileDocumentIssuer.init(jurisdictionCode:)();
          v22 = 0;
LABEL_13:
          v23 = *(v0 + 352);
          v83 = *(v0 + 360);
          v24 = *(v0 + 280);
          v25 = *(v0 + 256);
          v27 = *(v0 + 152);
          v26 = *(v0 + 160);
          v28 = type metadata accessor for MobileDocumentIssuer();
          (*(*(v28 - 8) + 56))(v27, v22, 1, v28);
          sub_1003A8940(v27, v26);
          defaultLogger()();
          v29 = swift_task_alloc();
          *(v29 + 16) = v18;
          *(v29 + 24) = v19;
          Logger.sensitive(_:)();

          v23(v24, v25);
LABEL_22:
          v44 = *(v0 + 168);
          v45 = *(v0 + 176);
          v46 = *(v0 + 160);
          v48 = *(v0 + 104);
          v47 = *(v0 + 112);
          v49 = *(v0 + 96);
          v50 = *(v0 + 16);
          (*(v48 + 16))(v45, v47, v49);
          (*(v48 + 56))(v45, 0, 1, v49);
          sub_10000BBC4(v46, v44, &qword_1008426E8, &qword_1006DF768);
          MobileDocumentReaderResponse.init(responseData:sessionTranscript:mobileIdentityDocumentElements:issuer:)();
          sub_10000BE18(v46, &qword_1008426E8, &qword_1006DF768);
          (*(v48 + 8))(v47, v49);
          v51 = *(v0 + 328);
          v52 = *(v0 + 304);
          v54 = *(v0 + 288);
          v53 = *(v0 + 296);
          v56 = *(v0 + 272);
          v55 = *(v0 + 280);
          v57 = *(v0 + 248);
          v58 = *(v0 + 224);
          v67 = *(v0 + 200);
          v69 = *(v0 + 176);
          v71 = *(v0 + 168);
          v73 = *(v0 + 160);
          v75 = *(v0 + 152);
          v77 = *(v0 + 144);
          v79 = *(v0 + 136);
          v81 = *(v0 + 112);
          v84 = *(v0 + 88);
          v59 = (*(v0 + 320) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          (*(v0 + 344))(*(v0 + 336), *(v0 + 312));

          v9 = *(v0 + 8);
          goto LABEL_23;
        }
      }

      else
      {
        v12 = *(v0 + 440);
        if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_6;
        }
      }
    }

    v33 = *(v0 + 272);
    defaultLogger()();

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 440);
    if (v36)
    {
      v38 = swift_slowAlloc();
      *v38 = 134217984;
      v39 = *(v5 + 16);

      *(v38 + 4) = v39;

      _os_log_impl(&_mh_execute_header, v34, v35, "Issuer certificate chains count != 1, was %ld, not returning issuer", v38, 0xCu);
    }

    else
    {
      v40 = *(v0 + 440);
      swift_bridgeObjectRelease_n();
    }

    v41 = *(v0 + 360);
    v42 = *(v0 + 160);
    (*(v0 + 352))(*(v0 + 272), *(v0 + 256));
    v43 = type metadata accessor for MobileDocumentIssuer();
    (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
    goto LABEL_22;
  }

  v6 = *(v0 + 320) + 8;
  (*(v0 + 344))(*(v0 + 336), *(v0 + 312));

  v7 = *(v0 + 328);
  v8 = *(v0 + 336);
  v60 = *(v0 + 304);
  v61 = *(v0 + 296);
  v62 = *(v0 + 288);
  v63 = *(v0 + 280);
  v64 = *(v0 + 272);
  v65 = *(v0 + 248);
  v66 = *(v0 + 224);
  v68 = *(v0 + 200);
  v70 = *(v0 + 176);
  v72 = *(v0 + 168);
  v74 = *(v0 + 160);
  v76 = *(v0 + 152);
  v78 = *(v0 + 144);
  v80 = *(v0 + 136);
  v82 = *(v0 + 112);
  (*(*(v0 + 80) + 104))(*(v0 + 88), enum case for DIPError.Code.internalError(_:), *(v0 + 72));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1003A8A1C(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v9 = *(v0 + 8);
LABEL_23:

  return v9();
}

uint64_t sub_1003A78DC()
{
  v1 = *(v0 + 320) + 8;
  (*(v0 + 344))(*(v0 + 336), *(v0 + 312));
  v2 = *(v0 + 448);
  v3 = *(v0 + 328);
  v4 = *(v0 + 336);
  v7 = *(v0 + 304);
  v8 = *(v0 + 296);
  v9 = *(v0 + 288);
  v10 = *(v0 + 280);
  v11 = *(v0 + 272);
  v12 = *(v0 + 248);
  v13 = *(v0 + 224);
  v14 = *(v0 + 200);
  v15 = *(v0 + 176);
  v16 = *(v0 + 168);
  v17 = *(v0 + 160);
  v18 = *(v0 + 152);
  v19 = *(v0 + 144);
  v20 = *(v0 + 136);
  v21 = *(v0 + 112);
  (*(*(v0 + 80) + 104))(*(v0 + 88), enum case for DIPError.Code.internalError(_:), *(v0 + 72));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1003A8A1C(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1003A7B64()
{
  v1 = type metadata accessor for DIPError.Code();
  v57 = *(v1 - 8);
  v58 = v1;
  v2 = *(v57 + 64);
  __chkstk_darwin(v1);
  v61 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for ISO18013SessionData.Status();
  v53 = *(v50 - 8);
  v4 = *(v53 + 64);
  __chkstk_darwin(v50);
  v47 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_100007224(&qword_100842700, &qword_1006DF778);
  v6 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v54 = &v45 - v7;
  v8 = sub_100007224(&qword_100842708, &qword_1006DF780);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v48 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v51 = &v45 - v13;
  __chkstk_darwin(v12);
  v52 = &v45 - v14;
  v15 = type metadata accessor for ISO18013SessionData();
  v55 = *(v15 - 8);
  v16 = *(v55 + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v56 = &v45 - v20;
  v21 = type metadata accessor for CBORDecoder();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  CBORDecoder.init()();
  type metadata accessor for ISO18013Response();
  sub_1003A8A1C(&qword_100842710, &type metadata accessor for ISO18013Response);
  dispatch thunk of CBORDecoder.decode<A>(_:from:)();
  if (!v0)
  {
  }

  v24 = *(v21 + 48);
  v25 = *(v21 + 52);
  swift_allocObject();
  swift_errorRetain();
  CBORDecoder.init()();
  sub_1003A8A1C(&qword_100842718, &type metadata accessor for ISO18013SessionData);
  dispatch thunk of CBORDecoder.decode<A>(_:from:)();

  v27 = *(v55 + 32);
  v46 = v15;
  v27(v56, v19, v15);
  v28 = v52;
  ISO18013SessionData.status.getter();
  v29 = v53;
  v30 = v50;
  v31 = v51;
  (*(v53 + 104))(v51, enum case for ISO18013SessionData.Status.sessionTerminationError(_:), v50);
  (*(v29 + 56))(v31, 0, 1, v30);
  v32 = *(v49 + 48);
  v33 = v54;
  sub_10000BBC4(v28, v54, &qword_100842708, &qword_1006DF780);
  sub_10000BBC4(v31, v33 + v32, &qword_100842708, &qword_1006DF780);
  v34 = *(v29 + 48);
  if (v34(v33, 1, v30) != 1)
  {
    v36 = v48;
    sub_10000BBC4(v33, v48, &qword_100842708, &qword_1006DF780);
    v37 = v34(v33 + v32, 1, v30);
    v38 = v30;
    if (v37 != 1)
    {
      v40 = v53;
      v41 = v33 + v32;
      v42 = v47;
      (*(v53 + 32))(v47, v41, v38);
      sub_1003A8A1C(&qword_100842720, &type metadata accessor for ISO18013SessionData.Status);
      v43 = dispatch thunk of static Equatable.== infix(_:_:)();
      v44 = *(v40 + 8);
      v44(v42, v38);
      sub_10000BE18(v51, &qword_100842708, &qword_1006DF780);
      sub_10000BE18(v52, &qword_100842708, &qword_1006DF780);
      v44(v48, v38);
      sub_10000BE18(v33, &qword_100842708, &qword_1006DF780);
      if (v43)
      {
        goto LABEL_12;
      }

LABEL_10:
      v59 = 0;
      v60 = 0xE000000000000000;
      _StringGuts.grow(_:)(56);
      v39._countAndFlagsBits = 0xD000000000000036;
      v39._object = 0x8000000100712520;
      String.append(_:)(v39);
      _print_unlocked<A, B>(_:_:)();
      (*(v57 + 104))(v61, enum case for DIPError.Code.documentReaderInvalidResponse(_:), v58);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1003A8A1C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      return (*(v55 + 8))(v56, v46);
    }

    sub_10000BE18(v51, &qword_100842708, &qword_1006DF780);
    v35 = v54;
    sub_10000BE18(v52, &qword_100842708, &qword_1006DF780);
    (*(v53 + 8))(v36, v30);
LABEL_9:
    sub_10000BE18(v35, &qword_100842700, &qword_1006DF778);
    goto LABEL_10;
  }

  sub_10000BE18(v31, &qword_100842708, &qword_1006DF780);
  v35 = v54;
  sub_10000BE18(v28, &qword_100842708, &qword_1006DF780);
  if (v34(v35 + v32, 1, v30) != 1)
  {
    goto LABEL_9;
  }

  sub_10000BE18(v35, &qword_100842708, &qword_1006DF780);
LABEL_12:
  (*(v57 + 104))(v61, enum case for DIPError.Code.documentReaderHolderCancelled(_:), v58);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1003A8A1C(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  return (*(v55 + 8))(v56, v46);
}

uint64_t sub_1003A8650(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(61);
  v4._object = 0x8000000100712470;
  v4._countAndFlagsBits = 0xD00000000000003ALL;
  String.append(_:)(v4);
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    a1 = 7104878;
    v5 = 0xE300000000000000;
  }

  v6._countAndFlagsBits = a1;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 34;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 0;
}

uint64_t sub_1003A870C()
{
  sub_10000BB78(v0 + 2);
  sub_10000BB78(v0 + 7);
  v1 = v0[12];
  swift_unknownObjectRelease();
  sub_10000BB78(v0 + 15);
  sub_10000BB78(v0 + 20);
  sub_10000BB78(v0 + 25);
  sub_10000BB78(v0 + 30);
  sub_10000BB78(v0 + 35);

  return swift_deallocClassInstance();
}

uint64_t sub_1003A87A0()
{
  v1 = *(*(v0 + 96) + 128);
  os_unfair_lock_lock((v1 + 32));
  sub_1003A8A64((v1 + 16));
  os_unfair_lock_unlock((v1 + 32));
}

uint64_t sub_1003A8804()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100027B9C;

  return sub_1003A2568();
}

uint64_t sub_1003A8890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100041F04;

  return sub_1003A3000(a1, a2, a3);
}

uint64_t sub_1003A8940(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_1008426E8, &qword_1006DF768);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003A89B8()
{
  result = qword_1008426F8;
  if (!qword_1008426F8)
  {
    sub_10000B870(&qword_100841BE0, &qword_1006DEB08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008426F8);
  }

  return result;
}

uint64_t sub_1003A8A1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003A8A80()
{
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1003A8B7C, v0, 0);
}

uint64_t sub_1003A8B7C()
{
  v29 = v0;
  v1 = v0[6];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0x656C62616E457369, 0xE900000000000064, &v28);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderNFCManager %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v11 = v0[5];
  v0[2] = 0;
  v12 = [objc_opt_self() sharedHardwareManager];
  v13 = [v12 getRadioEnabledState:v0 + 2];

  v14 = v0[2];
  defaultLogger()();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[4];
  v19 = v0[5];
  v20 = v0[3];
  if (v17)
  {
    v27 = v10;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28 = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_100141FE4(0x656C62616E457369, 0xE900000000000064, &v28);
    *(v21 + 12) = 1024;
    *(v21 + 14) = v14 == 1;
    _os_log_impl(&_mh_execute_header, v15, v16, "BluetoothManager %s NFC on: %{BOOL}d", v21, 0x12u);
    sub_10000BB78(v22);

    v27(v19, v20);
  }

  else
  {

    v10(v19, v20);
  }

  v24 = v0[5];
  v23 = v0[6];

  v25 = v0[1];

  return v25(v14 == 1);
}

uint64_t sub_1003A8EAC()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1003A8F00()
{
  v0 = sub_1003AA228(&off_1007FBB78);
  result = swift_arrayDestroy();
  qword_100882328 = v0;
  return result;
}

void sub_1003A8F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3 + 56;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 56);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_9:
    v11 = (*(a3 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v7)))));
    v12 = *v11;
    v13 = v11[1];
    v48[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48[1] = v14;
    v50 = &type metadata for Bool;
    v49 = 1;
    v51[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51[1] = v15;
    v51[5] = &type metadata for String;
    v51[2] = v12;
    v51[3] = v13;
    v52[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52[1] = v16;
    v54 = &type metadata for Bool;
    v53 = 1;
    sub_100007224(&qword_1008346F8, &qword_1006DA530);
    v17 = static _DictionaryStorage.allocate(capacity:)();

    sub_10017643C(v48, &v45);
    v19 = v45;
    v18 = v46;
    v20 = sub_10003ADCC(v45, v46);
    if (v21)
    {
      goto LABEL_21;
    }

    v22 = v17 + 8;
    *(v17 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
    v23 = (v17[6] + 16 * v20);
    *v23 = v19;
    v23[1] = v18;
    sub_10001F348(v47, (v17[7] + 32 * v20));
    v24 = v17[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_22;
    }

    v17[2] = v26;
    sub_10017643C(v51, &v45);
    v27 = v45;
    v28 = v46;
    v29 = sub_10003ADCC(v45, v46);
    if (v30)
    {
      goto LABEL_21;
    }

    *(v22 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v31 = (v17[6] + 16 * v29);
    *v31 = v27;
    v31[1] = v28;
    sub_10001F348(v47, (v17[7] + 32 * v29));
    v32 = v17[2];
    v25 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v25)
    {
      goto LABEL_22;
    }

    v17[2] = v33;
    sub_10017643C(v52, &v45);
    v34 = v45;
    v35 = v46;
    v36 = sub_10003ADCC(v45, v46);
    if (v37)
    {
      goto LABEL_21;
    }

    *(v22 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    v38 = (v17[6] + 16 * v36);
    *v38 = v34;
    v38[1] = v35;
    sub_10001F348(v47, (v17[7] + 32 * v36));
    v39 = v17[2];
    v25 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v25)
    {
      goto LABEL_22;
    }

    v7 &= v7 - 1;
    v17[2] = v40;
    sub_100007224(&qword_100834450, &unk_1006BFED0);
    swift_arrayDestroy();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v42 = Dictionary._bridgeToObjectiveC()().super.isa;

    v43 = CGImageSourceCreateWithData(isa, v42);

    if (v43)
    {
      Status = CGImageSourceGetStatus(v43);

      if (Status == kCGImageStatusComplete)
      {

        return;
      }
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

void *sub_1003A92C4(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_100007224(&qword_1008427D0, &qword_1006DF830);
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1003AA390(&qword_1008427D8);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1003AA390(&qword_1008427E0);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_1003A95BC(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_100007224(&qword_10083BD40, &qword_1006DA258);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for StoredMobileDocumentReaderSigningKey();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for StoredMobileDocumentReaderSigningKey();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void *sub_1003A9888(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_1008427E8, &qword_1006DF838);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v84 = v1;
    v85 = a1 + 32;
    v87 = v3;
    v90 = v3 + 56;
    while (1)
    {
      v8 = (v85 + 16 * v4);
      v10 = *v8;
      v9 = v8[1];
      v11 = *(v3 + 40);
      Hasher.init(_seed:)();
      sub_10000B8B8(v10, v9);
      Data.hash(into:)();
      v12 = Hasher._finalize()();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v5 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) == 0)
      {
        goto LABEL_145;
      }

      v86 = v4;
      v18 = ~v13;
      v19 = v9 >> 62;
      if (v10)
      {
        v20 = 0;
      }

      else
      {
        v20 = v9 == 0xC000000000000000;
      }

      v21 = !v20;
      v93 = v21;
      v22 = __OFSUB__(HIDWORD(v10), v10);
      v91 = v22;
      v88 = (v10 >> 32) - v10;
      v89 = v10 >> 32;
      v92 = ~v13;
      while (1)
      {
        v23 = (*(v3 + 48) + 16 * v14);
        v25 = *v23;
        v24 = v23[1];
        v26 = v24 >> 62;
        if (v24 >> 62 == 3)
        {
          break;
        }

        if (v26 > 1)
        {
          if (v26 != 2)
          {
            goto LABEL_41;
          }

          v32 = *(v25 + 16);
          v31 = *(v25 + 24);
          v33 = __OFSUB__(v31, v32);
          v30 = v31 - v32;
          if (v33)
          {
            goto LABEL_152;
          }

          if (v19 <= 1)
          {
            goto LABEL_38;
          }
        }

        else if (v26)
        {
          LODWORD(v30) = HIDWORD(v25) - v25;
          if (__OFSUB__(HIDWORD(v25), v25))
          {
            goto LABEL_151;
          }

          v30 = v30;
          if (v19 <= 1)
          {
LABEL_38:
            v34 = BYTE6(v9);
            if (v19)
            {
              v34 = HIDWORD(v10) - v10;
              if (v91)
              {
                __break(1u);
LABEL_150:
                __break(1u);
LABEL_151:
                __break(1u);
LABEL_152:
                __break(1u);
LABEL_153:
                __break(1u);
                goto LABEL_154;
              }
            }

            goto LABEL_44;
          }
        }

        else
        {
          v30 = BYTE6(v24);
          if (v19 <= 1)
          {
            goto LABEL_38;
          }
        }

LABEL_42:
        if (v19 != 2)
        {
          if (!v30)
          {
            goto LABEL_3;
          }

          goto LABEL_18;
        }

        v36 = *(v10 + 16);
        v35 = *(v10 + 24);
        v33 = __OFSUB__(v35, v36);
        v34 = v35 - v36;
        if (v33)
        {
          goto LABEL_150;
        }

LABEL_44:
        if (v30 == v34)
        {
          if (v30 < 1)
          {
            goto LABEL_3;
          }

          if (v26 > 1)
          {
            if (v26 == 2)
            {
              v42 = *(v25 + 16);
              sub_10000B8B8(v25, v24);
              v43 = __DataStorage._bytes.getter();
              if (v43)
              {
                v44 = __DataStorage._offset.getter();
                if (__OFSUB__(v42, v44))
                {
                  goto LABEL_155;
                }

                v43 += v42 - v44;
              }

              __DataStorage._length.getter();
              if (v19 == 2)
              {
                v70 = *(v10 + 16);
                v82 = *(v10 + 24);
                v45 = __DataStorage._bytes.getter();
                if (v45)
                {
                  v71 = __DataStorage._offset.getter();
                  if (__OFSUB__(v70, v71))
                  {
                    goto LABEL_169;
                  }

                  v45 += v70 - v71;
                }

                v33 = __OFSUB__(v82, v70);
                v72 = v82 - v70;
                if (v33)
                {
                  goto LABEL_164;
                }

                v73 = __DataStorage._length.getter();
                if (v73 >= v72)
                {
                  v48 = v72;
                }

                else
                {
                  v48 = v73;
                }

                if (!v43)
                {
                  goto LABEL_188;
                }

                if (!v45)
                {
                  goto LABEL_187;
                }

                goto LABEL_136;
              }

              if (v19 == 1)
              {
                if (v89 < v10)
                {
                  goto LABEL_161;
                }

                v45 = __DataStorage._bytes.getter();
                if (v45)
                {
                  v46 = __DataStorage._offset.getter();
                  if (__OFSUB__(v10, v46))
                  {
                    goto LABEL_170;
                  }

                  v45 += v10 - v46;
                }

                v47 = __DataStorage._length.getter();
                v48 = (v10 >> 32) - v10;
                if (v47 < v88)
                {
                  v48 = v47;
                }

                if (!v43)
                {
                  goto LABEL_184;
                }

                if (!v45)
                {
                  goto LABEL_183;
                }

LABEL_136:
                if (v43 == v45)
                {
                  sub_10000B90C(v25, v24);
                  sub_10000B90C(v10, v9);
                  v1 = v84;
                  v4 = v86;
                  v3 = v87;
                  v5 = v90;
                  goto LABEL_5;
                }

                v63 = memcmp(v43, v45, v48);
                sub_10000B90C(v25, v24);
                v3 = v87;
                goto LABEL_141;
              }

              *__s1 = v10;
              *&__s1[8] = v9;
              __s1[10] = BYTE2(v9);
              __s1[11] = BYTE3(v9);
              __s1[12] = BYTE4(v9);
              __s1[13] = BYTE5(v9);
              if (!v43)
              {
                goto LABEL_175;
              }

LABEL_139:
              v69 = __s1;
              v68 = v43;
              v67 = BYTE6(v9);
              goto LABEL_140;
            }

            *&__s1[6] = 0;
            *__s1 = 0;
            if (v19)
            {
              if (v19 == 2)
              {
                v53 = *(v10 + 16);
                v52 = *(v10 + 24);
                sub_10000B8B8(v25, v24);
                v54 = __DataStorage._bytes.getter();
                if (v54)
                {
                  v55 = __DataStorage._offset.getter();
                  if (__OFSUB__(v53, v55))
                  {
                    goto LABEL_168;
                  }

                  v54 += v53 - v55;
                }

                v33 = __OFSUB__(v52, v53);
                v56 = v52 - v53;
                if (v33)
                {
                  goto LABEL_160;
                }

                v57 = __DataStorage._length.getter();
                if (!v54)
                {
                  goto LABEL_179;
                }

                goto LABEL_103;
              }

              if (v89 < v10)
              {
                goto LABEL_157;
              }

              sub_10000B8B8(v25, v24);
              v64 = __DataStorage._bytes.getter();
              if (!v64)
              {
                goto LABEL_173;
              }

              v65 = v64;
              v66 = __DataStorage._offset.getter();
              if (__OFSUB__(v10, v66))
              {
                goto LABEL_163;
              }

              v40 = (v10 - v66 + v65);
              v41 = __DataStorage._length.getter();
              if (!v40)
              {
                goto LABEL_174;
              }

LABEL_111:
              if (v41 >= v88)
              {
                v67 = (v10 >> 32) - v10;
              }

              else
              {
                v67 = v41;
              }

              v68 = __s1;
              v69 = v40;
LABEL_140:
              v63 = memcmp(v68, v69, v67);
              sub_10000B90C(v25, v24);
LABEL_141:
              v5 = v90;
LABEL_142:
              v18 = v92;
              if (!v63)
              {
LABEL_3:
                v6 = v10;
                v7 = v9;
                goto LABEL_4;
              }

              goto LABEL_18;
            }
          }

          else
          {
            if (v26)
            {
              if (v25 > v25 >> 32)
              {
                goto LABEL_153;
              }

              sub_10000B8B8(v25, v24);
              v43 = __DataStorage._bytes.getter();
              if (v43)
              {
                v49 = __DataStorage._offset.getter();
                if (__OFSUB__(v25, v49))
                {
                  goto LABEL_156;
                }

                v43 += v25 - v49;
              }

              __DataStorage._length.getter();
              if (v19 == 2)
              {
                v74 = *(v10 + 16);
                v83 = *(v10 + 24);
                v45 = __DataStorage._bytes.getter();
                if (v45)
                {
                  v75 = __DataStorage._offset.getter();
                  if (__OFSUB__(v74, v75))
                  {
                    goto LABEL_171;
                  }

                  v45 += v74 - v75;
                }

                v33 = __OFSUB__(v83, v74);
                v76 = v83 - v74;
                if (v33)
                {
                  goto LABEL_166;
                }

                v77 = __DataStorage._length.getter();
                if (v77 >= v76)
                {
                  v48 = v76;
                }

                else
                {
                  v48 = v77;
                }

                if (!v43)
                {
                  goto LABEL_182;
                }

                if (!v45)
                {
                  goto LABEL_181;
                }

                goto LABEL_136;
              }

              if (v19 == 1)
              {
                if (v89 < v10)
                {
                  goto LABEL_165;
                }

                v45 = __DataStorage._bytes.getter();
                if (v45)
                {
                  v50 = __DataStorage._offset.getter();
                  if (__OFSUB__(v10, v50))
                  {
                    goto LABEL_172;
                  }

                  v45 += v10 - v50;
                }

                v51 = __DataStorage._length.getter();
                v48 = (v10 >> 32) - v10;
                if (v51 < v88)
                {
                  v48 = v51;
                }

                if (!v43)
                {
                  goto LABEL_186;
                }

                if (!v45)
                {
                  goto LABEL_185;
                }

                goto LABEL_136;
              }

              *__s1 = v10;
              *&__s1[8] = v9;
              __s1[10] = BYTE2(v9);
              __s1[11] = BYTE3(v9);
              __s1[12] = BYTE4(v9);
              __s1[13] = BYTE5(v9);
              if (!v43)
              {
                goto LABEL_177;
              }

              goto LABEL_139;
            }

            *__s1 = v25;
            *&__s1[8] = v24;
            __s1[10] = BYTE2(v24);
            __s1[11] = BYTE3(v24);
            __s1[12] = BYTE4(v24);
            __s1[13] = BYTE5(v24);
            if (v19)
            {
              if (v19 == 1)
              {
                if (v89 < v10)
                {
                  goto LABEL_158;
                }

                sub_10000B8B8(v25, v24);
                v37 = __DataStorage._bytes.getter();
                if (!v37)
                {
                  goto LABEL_180;
                }

                v38 = v37;
                v39 = __DataStorage._offset.getter();
                if (__OFSUB__(v10, v39))
                {
                  goto LABEL_162;
                }

                v40 = (v10 - v39 + v38);
                v41 = __DataStorage._length.getter();
                if (!v40)
                {
                  goto LABEL_178;
                }

                goto LABEL_111;
              }

              v60 = *(v10 + 16);
              v59 = *(v10 + 24);
              sub_10000B8B8(v25, v24);
              v54 = __DataStorage._bytes.getter();
              if (v54)
              {
                v61 = __DataStorage._offset.getter();
                if (__OFSUB__(v60, v61))
                {
                  goto LABEL_167;
                }

                v54 += v60 - v61;
              }

              v33 = __OFSUB__(v59, v60);
              v56 = v59 - v60;
              if (v33)
              {
                goto LABEL_159;
              }

              v57 = __DataStorage._length.getter();
              if (!v54)
              {
                goto LABEL_176;
              }

LABEL_103:
              if (v57 >= v56)
              {
                v62 = v56;
              }

              else
              {
                v62 = v57;
              }

              v63 = memcmp(__s1, v54, v62);
              sub_10000B90C(v25, v24);
              v3 = v87;
              v5 = v90;
              goto LABEL_142;
            }
          }

          __s2 = v10;
          v95 = v9;
          v96 = BYTE2(v9);
          v97 = BYTE3(v9);
          v98 = BYTE4(v9);
          v99 = BYTE5(v9);
          v58 = memcmp(__s1, &__s2, BYTE6(v9));
          v18 = v92;
          if (!v58)
          {
            goto LABEL_3;
          }
        }

LABEL_18:
        v14 = (v14 + 1) & v18;
        v15 = v14 >> 6;
        v16 = *(v5 + 8 * (v14 >> 6));
        v17 = 1 << v14;
        if ((v16 & (1 << v14)) == 0)
        {
          v1 = v84;
          v4 = v86;
LABEL_145:
          *(v5 + 8 * v15) = v16 | v17;
          v78 = (*(v3 + 48) + 16 * v14);
          *v78 = v10;
          v78[1] = v9;
          v79 = *(v3 + 16);
          v33 = __OFADD__(v79, 1);
          v80 = v79 + 1;
          if (!v33)
          {
            *(v3 + 16) = v80;
            goto LABEL_5;
          }

LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __DataStorage._length.getter();
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __DataStorage._length.getter();
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
        }
      }

      if (v25)
      {
        v27 = 0;
      }

      else
      {
        v27 = v24 == 0xC000000000000000;
      }

      v29 = !v27 || v9 >> 62 != 3;
      if ((v29 | v93))
      {
LABEL_41:
        v30 = 0;
        if (v19 <= 1)
        {
          goto LABEL_38;
        }

        goto LABEL_42;
      }

      v6 = 0;
      v7 = 0xC000000000000000;
LABEL_4:
      sub_10000B90C(v6, v7);
      v1 = v84;
      v4 = v86;
LABEL_5:
      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

Swift::Int sub_1003AA228(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_10083BC70, &unk_1006E0140);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_1003AA390(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Calendar.Component();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1003AA3D4(uint64_t a1)
{
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MobileDocumentType.Identifier();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for MobileDocumentType();
  v13 = *(v61 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v61);
  v60 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v16)
  {
    v39 = v4;
    v40 = v3;
    v41 = v7;
    v42 = v1;
    v62 = _swiftEmptyArrayStorage;
    v48 = v16;
    sub_100172D4C(0, v16, 0);
    v18 = -1 << *(a1 + 32);
    v58 = a1 + 56;
    v59 = v62;
    result = _HashTable.startBucket.getter();
    v19 = result;
    v20 = 0;
    v55 = (v9 + 88);
    v56 = v13 + 16;
    v54 = enum case for MobileDocumentType.Identifier.nationalIDCard(_:);
    v46 = enum case for MobileDocumentType.Identifier.driversLicense(_:);
    v43 = enum case for MobileDocumentType.Identifier.photoID(_:);
    v47 = (v9 + 8);
    v52 = v12;
    v53 = (v13 + 8);
    v44 = a1 + 64;
    v45 = 0x8000000100712DD0;
    v50 = v8;
    v51 = a1;
    v21 = a1;
    v22 = v13;
    v49 = v13;
    while ((v19 & 0x8000000000000000) == 0 && v19 < 1 << *(v21 + 32))
    {
      v24 = v19 >> 6;
      if ((*(v58 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
      {
        goto LABEL_29;
      }

      v57 = *(v21 + 36);
      (*(v22 + 16))(v60, *(v21 + 48) + *(v22 + 72) * v19, v61);
      MobileDocumentType.storage.getter();
      v25 = (*v55)(v12, v8);
      if (v25 == v54)
      {
        (*v47)(v12, v8);
        v26 = 0xD000000000000010;
        v27 = v45;
      }

      else if (v25 == v46)
      {
        v26 = 0x2D73726576697264;
        v27 = 0xEF65736E6563696CLL;
      }

      else
      {
        if (v25 != v43)
        {
          (*(v39 + 104))(v41, enum case for DIPError.Code.documentReaderInvalidRequest(_:), v40);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_100037214();
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          (*v47)(v52, v8);
          (*v53)(v60, v61);
        }

        v27 = 0xE800000000000000;
        v26 = 0x64692D6F746F6870;
      }

      result = (*v53)(v60, v61);
      v28 = v59;
      v62 = v59;
      v30 = v59[2];
      v29 = v59[3];
      if (v30 >= v29 >> 1)
      {
        result = sub_100172D4C((v29 > 1), v30 + 1, 1);
        v28 = v62;
      }

      v28[2] = v30 + 1;
      v31 = &v28[2 * v30];
      v31[4] = v26;
      v31[5] = v27;
      v21 = v51;
      v23 = 1 << *(v51 + 32);
      if (v19 >= v23)
      {
        goto LABEL_30;
      }

      v32 = *(v58 + 8 * v24);
      if ((v32 & (1 << v19)) == 0)
      {
        goto LABEL_31;
      }

      v59 = v28;
      if (v57 != *(v51 + 36))
      {
        goto LABEL_32;
      }

      v33 = v32 & (-2 << (v19 & 0x3F));
      if (v33)
      {
        v23 = __clz(__rbit64(v33)) | v19 & 0x7FFFFFFFFFFFFFC0;
        v8 = v50;
      }

      else
      {
        v34 = v24 << 6;
        v35 = v24 + 1;
        v36 = (v44 + 8 * v24);
        v8 = v50;
        while (v35 < (v23 + 63) >> 6)
        {
          v38 = *v36++;
          v37 = v38;
          v34 += 64;
          ++v35;
          if (v38)
          {
            result = sub_100316220(v19, v57, 0);
            v23 = __clz(__rbit64(v37)) + v34;
            goto LABEL_4;
          }
        }

        result = sub_100316220(v19, v57, 0);
      }

LABEL_4:
      ++v20;
      v19 = v23;
      v22 = v49;
      v12 = v52;
      if (v20 == v48)
      {
        return v59;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  return result;
}

void *sub_1003AA9F4(uint64_t a1)
{
  v3 = type metadata accessor for MobileDocumentType();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v8)
  {
    v44 = v1;
    v45 = _swiftEmptyArrayStorage;
    sub_100172D4C(0, v8, 0);
    v10 = -1 << *(a1 + 32);
    v42 = a1 + 56;
    v43 = v45;
    result = _HashTable.startBucket.getter();
    v11 = result;
    v12 = 0;
    v39 = v4 + 16;
    v40 = (v4 + 8);
    v33 = a1 + 64;
    v34 = v8;
    v36 = v7;
    v37 = v3;
    v35 = v4;
    v38 = a1;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v42 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_25;
      }

      v41 = v12;
      v16 = *(a1 + 36);
      (*(v4 + 16))(v7, *(a1 + 48) + *(v4 + 72) * v11, v3);
      v17 = v44;
      v19 = MobileDocumentType.iso18013Identifier.getter();
      v20 = v7;
      if (v17)
      {
        (*v40)(v7, v3);
      }

      v21 = v18;
      v44 = 0;
      result = (*v40)(v20, v3);
      v22 = v43;
      v45 = v43;
      v24 = v43[2];
      v23 = v43[3];
      if (v24 >= v23 >> 1)
      {
        result = sub_100172D4C((v23 > 1), v24 + 1, 1);
        v22 = v45;
      }

      v22[2] = v24 + 1;
      v25 = &v22[2 * v24];
      v25[4] = v19;
      v25[5] = v21;
      a1 = v38;
      v13 = 1 << *(v38 + 32);
      if (v11 >= v13)
      {
        goto LABEL_26;
      }

      v26 = *(v42 + 8 * v15);
      if ((v26 & (1 << v11)) == 0)
      {
        goto LABEL_27;
      }

      v43 = v22;
      if (v16 != *(v38 + 36))
      {
        goto LABEL_28;
      }

      v27 = v26 & (-2 << (v11 & 0x3F));
      if (v27)
      {
        v13 = __clz(__rbit64(v27)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v7 = v36;
        v3 = v37;
        v14 = v41;
      }

      else
      {
        v28 = v15 << 6;
        v29 = v15 + 1;
        v30 = (v33 + 8 * v15);
        v7 = v36;
        v3 = v37;
        while (v29 < (v13 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_100316220(v11, v16, 0);
            v13 = __clz(__rbit64(v31)) + v28;
            goto LABEL_20;
          }
        }

        result = sub_100316220(v11, v16, 0);
LABEL_20:
        v14 = v41;
      }

      v12 = v14 + 1;
      v11 = v13;
      v4 = v35;
      if (v12 == v34)
      {
        return v43;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  return result;
}

void *sub_1003AAD40(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MobileDocumentElement();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v10)
  {
    v48 = _swiftEmptyArrayStorage;
    v12 = v7;
    sub_100172D4C(0, v10, 0);
    v13 = -1 << *(a1 + 32);
    v46 = a1 + 56;
    v47 = v48;
    result = _HashTable.startBucket.getter();
    v14 = v12;
    v15 = result;
    v16 = 0;
    v42 = v5 + 16;
    v43 = (v5 + 8);
    v36 = a1 + 64;
    v37 = v10;
    v39 = v9;
    v40 = v12;
    v38 = v5;
    v41 = a1;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
    {
      v19 = v15 >> 6;
      if ((*(v46 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_25;
      }

      v45 = v16;
      v20 = *(a1 + 36);
      (*(v5 + 16))(v9, *(a1 + 48) + *(v5 + 72) * v15, v14);
      v22 = sub_1003B0B04();
      v23 = v9;
      if (v2)
      {
        (*v43)(v9, v14);
      }

      v24 = v21;
      v44 = 0;
      result = (*v43)(v23, v14);
      v25 = v47;
      v48 = v47;
      v27 = v47[2];
      v26 = v47[3];
      if (v27 >= v26 >> 1)
      {
        result = sub_100172D4C((v26 > 1), v27 + 1, 1);
        v25 = v48;
      }

      v25[2] = v27 + 1;
      v28 = &v25[2 * v27];
      v28[4] = v22;
      v28[5] = v24;
      a1 = v41;
      v17 = 1 << *(v41 + 32);
      if (v15 >= v17)
      {
        goto LABEL_26;
      }

      v29 = *(v46 + 8 * v19);
      if ((v29 & (1 << v15)) == 0)
      {
        goto LABEL_27;
      }

      if (v20 != *(v41 + 36))
      {
        goto LABEL_28;
      }

      v47 = v25;
      v30 = v29 & (-2 << (v15 & 0x3F));
      if (v30)
      {
        v17 = __clz(__rbit64(v30)) | v15 & 0x7FFFFFFFFFFFFFC0;
        v2 = v44;
        v18 = v45;
        v9 = v39;
        v14 = v40;
      }

      else
      {
        v31 = v19 << 6;
        v32 = v19 + 1;
        v33 = (v36 + 8 * v19);
        v2 = v44;
        v9 = v39;
        v14 = v40;
        while (v32 < (v17 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            result = sub_100316220(v15, v20, 0);
            v17 = __clz(__rbit64(v34)) + v31;
            goto LABEL_20;
          }
        }

        result = sub_100316220(v15, v20, 0);
LABEL_20:
        v18 = v45;
      }

      v16 = v18 + 1;
      v15 = v17;
      v5 = v38;
      if (v16 == v37)
      {
        return v47;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003AB08C(uint64_t a1, void *a2, int a3)
{
  v34 = a3;
  v35 = a2;
  v4 = type metadata accessor for DIPError.Code();
  v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  __chkstk_darwin(v4);
  v38 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for MobileDocumentReaderRequest();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v36 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v13 = &v30[-v12];
  v14 = type metadata accessor for Logger();
  v39 = *(v14 - 8);
  v40 = v14;
  v15 = *(v39 + 64);
  __chkstk_darwin(v14);
  v17 = &v30[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  defaultLogger()();
  v18 = *(v8 + 16);
  v42 = a1;
  v18(v13, a1, v7);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v33 = v4;
    v22 = v21;
    v32 = swift_slowAlloc();
    v43 = v32;
    *v22 = 136315138;
    v31 = v20;
    v18(v36, v13, v7);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    (*(v8 + 8))(v13, v7);
    v26 = sub_100141FE4(v23, v25, &v43);

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v19, v31, "Validating request: %s", v22, 0xCu);
    sub_10000BB78(v32);

    v4 = v33;
  }

  else
  {

    (*(v8 + 8))(v13, v7);
  }

  (*(v39 + 8))(v17, v40);
  v27 = v42;
  v28 = v41;
  sub_1003AB538(v42);
  if (v28)
  {
    (*(v37 + 104))(v38, enum case for DIPError.Code.documentReaderInvalidRequest(_:), v4);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    sub_1003AC958(v27);
    return sub_1003ADE40(v27, v35, v34 & 1);
  }
}

uint64_t sub_1003AB538(uint64_t a1)
{
  v3 = v1;
  v101 = a1;
  v112 = type metadata accessor for Logger();
  v4 = *(v112 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v112);
  v7 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_100007224(&qword_10083C0D0, &unk_1006DF880);
  v8 = *(*(v97 - 8) + 64);
  v9 = __chkstk_darwin(v97);
  v96 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v95 = &v93 - v11;
  v12 = type metadata accessor for DIPError.Code();
  v13 = *(v12 - 8);
  v104 = v12;
  v105 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v106 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for MobileDocumentRequestType();
  v16 = *(v100 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v100);
  v94 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v98 = &v93 - v21;
  __chkstk_darwin(v20);
  v23 = &v93 - v22;
  v103 = type metadata accessor for BundleRecord();
  v102 = *(v103 - 8);
  v24 = *(v102 + 64);
  v25 = __chkstk_darwin(v103);
  v27 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v99 = &v93 - v28;
  v29 = v1[9];
  v30._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.disableEntitlementChecks.getter();
  LOBYTE(v29) = NSUserDefaults.internalBool(forKey:)(v30);

  if ((v29 & 1) == 0)
  {
    v35 = v3[8];
    sub_10000BA08(v3 + 4, v3[7]);
    v36 = *v3;
    v37 = v3[1];
    v38 = v3[2];
    v39 = v3[3];
    dispatch thunk of BundleRecordFetching.record(withAuditToken:)();
    if (v2)
    {
      *&v109 = 0;
      *(&v109 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(57);
      *v111 = v109;
      v40._countAndFlagsBits = 0xD000000000000037;
      v40._object = 0x8000000100712B50;
      String.append(_:)(v40);
      v41 = *(v3 + 1);
      v109 = *v3;
      v110 = v41;
      type metadata accessor for audit_token_t(0);
      _print_unlocked<A, B>(_:_:)();
      (*(v105 + 104))(v106, enum case for DIPError.Code.internalError(_:), v104);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    v42 = v102;
    v43 = v99;
    v44 = v103;
    (*(v102 + 32))(v99, v27, v103);
    MobileDocumentReaderRequest.documentRequestType.getter();
    v45 = MobileDocumentRequestType.isDisplayOnly.getter();
    v46 = *(v16 + 8);
    v46(v23, v100);
    if (v45)
    {
      static MobileDocumentReaderEntitlementChecker.Constant.displayOnlyEntitlementKey.getter();
      BundleRecord.value(forEntitlement:)();

      if (*(&v110 + 1))
      {
        if (swift_dynamicCast() && (v111[0] & 1) != 0)
        {
          return (*(v42 + 8))(v43, v44);
        }
      }

      else
      {
        sub_10000BE18(&v109, &unk_100845ED0, &qword_1006DA1D0);
      }

      (*(v105 + 104))(v106, enum case for DIPError.Code.missingEntitlement(_:), v104);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return (*(v42 + 8))(v43, v44);
    }

    static MobileDocumentReaderEntitlementChecker.Constant.dataTransferEntitlementKey.getter();
    BundleRecord.value(forEntitlement:)();

    if (*(&v110 + 1))
    {
      sub_100007224(&qword_100842808, &unk_1006DF8A0);
      if (swift_dynamicCast())
      {
        v47 = v111[0];
        strcpy(v108, "document-types");
        HIBYTE(v108[0]) = -18;
        AnyHashable.init<A>(_:)();
        if (!*(v47 + 16) || (v48 = sub_10003AECC(&v109), (v49 & 1) == 0))
        {

          sub_1000279C8(&v109);
          (*(v105 + 104))(v106, enum case for DIPError.Code.missingEntitlement(_:), v104);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_100037214();
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          return (*(v42 + 8))(v43, v103);
        }

        sub_10001F2EC(*(v47 + 56) + 32 * v48, v108);
        sub_1000279C8(&v109);
        sub_10001F348(v108, v111);
        sub_10001F2EC(v111, &v109);
        sub_100007224(&qword_100834EA0, &qword_1006C06B0);
        if (!swift_dynamicCast())
        {

          (*(v105 + 104))(v106, enum case for DIPError.Code.missingEntitlement(_:), v104);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_100037214();
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          sub_10000BB78(v111);
          return (*(v102 + 8))(v43, v103);
        }

        v50 = *&v108[0];
        v51 = v98;
        MobileDocumentReaderRequest.documentRequestType.getter();
        v52 = MobileDocumentRequestType.documentTypes.getter();
        v46(v51, v100);
        v53 = sub_1003AA3D4(v52);
        v112 = v2;
        v55 = v53;

        v56 = sub_1006973D4(v55);

        v57 = sub_1003B0474(v50, v56);

        if (v57[2])
        {

          *&v109 = 0;
          *(&v109 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(42);

          *&v109 = 0xD000000000000028;
          *(&v109 + 1) = 0x8000000100712C20;
          v58 = Set.description.getter();
          v60 = v59;

          v61._countAndFlagsBits = v58;
          v61._object = v60;
          String.append(_:)(v61);

          (*(v105 + 104))(v106, enum case for DIPError.Code.missingEntitlement(_:), v104);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_100037214();
          swift_allocError();
        }

        else
        {

          *&v107[0] = 0xD000000000000011;
          *(&v107[0] + 1) = 0x8000000100712C50;
          AnyHashable.init<A>(_:)();
          if (*(v47 + 16))
          {
            v62 = sub_10003AECC(&v109);
            if (v63)
            {
              sub_10001F2EC(*(v47 + 56) + 32 * v62, v107);
              sub_1000279C8(&v109);

              sub_10001F348(v107, v108);
              sub_10001F2EC(v108, &v109);
              if (swift_dynamicCast())
              {
                v98 = *&v107[0];
                v64 = v94;
                MobileDocumentReaderRequest.documentRequestType.getter();
                v65 = MobileDocumentRequestType.requestedElements.getter();
                v46(v64, v100);
                *&v109 = _swiftEmptyArrayStorage;
                v66 = v65 + 64;
                v67 = 1 << *(v65 + 32);
                v68 = -1;
                if (v67 < 64)
                {
                  v68 = ~(-1 << v67);
                }

                v69 = v68 & *(v65 + 64);
                v70 = (v67 + 63) >> 6;
                v101 = v65;

                v71 = 0;
                v100 = v65 + 64;
                if (v69)
                {
                  while (1)
                  {
                    v72 = v71;
LABEL_39:
                    v73 = __clz(__rbit64(v69));
                    v69 &= v69 - 1;
                    v74 = v73 | (v72 << 6);
                    v75 = v101;
                    v76 = *(v101 + 48);
                    v77 = type metadata accessor for MobileDocumentType();
                    v78 = *(v77 - 8);
                    v79 = v95;
                    (*(v78 + 16))(v95, v76 + *(v78 + 72) * v74, v77);
                    v80 = v97;
                    *(v79 + *(v97 + 48)) = *(*(v75 + 56) + 8 * v74);
                    v81 = v96;
                    sub_10000BBC4(v79, v96, &qword_10083C0D0, &unk_1006DF880);
                    v82 = *(v81 + *(v80 + 48));

                    sub_10031CC88(v82);
                    sub_10000BE18(v79, &qword_10083C0D0, &unk_1006DF880);
                    result = (*(v78 + 8))(v81, v77);
                    v66 = v100;
                    if (!v69)
                    {
                      goto LABEL_35;
                    }
                  }
                }

                while (1)
                {
LABEL_35:
                  v72 = v71 + 1;
                  if (__OFADD__(v71, 1))
                  {
                    __break(1u);
                    return result;
                  }

                  if (v72 >= v70)
                  {
                    break;
                  }

                  v69 = *(v66 + 8 * v72);
                  ++v71;
                  if (v69)
                  {
                    v71 = v72;
                    goto LABEL_39;
                  }
                }

                v83 = sub_1006977A8(v109);

                v84 = v112;
                v85 = sub_1003AAD40(v83);
                if (v84)
                {

                  goto LABEL_48;
                }

                v86 = v85;

                v87 = sub_1006973D4(v86);

                v88 = sub_1003B0474(v98, v87);

                if (v88[2])
                {
                  *&v109 = 0;
                  *(&v109 + 1) = 0xE000000000000000;
                  _StringGuts.grow(_:)(45);

                  *&v109 = 0xD00000000000002BLL;
                  *(&v109 + 1) = 0x8000000100712CC0;
                  v89 = Set.description.getter();
                  v91 = v90;

                  v92._countAndFlagsBits = v89;
                  v92._object = v91;
                  String.append(_:)(v92);

                  (*(v105 + 104))(v106, enum case for DIPError.Code.missingEntitlement(_:), v104);
                  sub_1000402AC(_swiftEmptyArrayStorage);
                  type metadata accessor for DIPError();
                  sub_100037214();
                  swift_allocError();
                  goto LABEL_45;
                }
              }

              else
              {
                (*(v105 + 104))(v106, enum case for DIPError.Code.missingEntitlement(_:), v104);
                sub_1000402AC(_swiftEmptyArrayStorage);
                type metadata accessor for DIPError();
                sub_100037214();
                swift_allocError();
LABEL_45:
                DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
                swift_willThrow();
              }

LABEL_48:
              sub_10000BB78(v108);
              goto LABEL_43;
            }
          }

          sub_1000279C8(&v109);
          (*(v105 + 104))(v106, enum case for DIPError.Code.missingEntitlement(_:), v104);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_100037214();
          swift_allocError();
        }

        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
LABEL_43:
        sub_10000BB78(v111);
        return (*(v102 + 8))(v99, v103);
      }

      v54 = v43;
    }

    else
    {
      v54 = v43;
      sub_10000BE18(&v109, &unk_100845ED0, &qword_1006DA1D0);
    }

    (*(v105 + 104))(v106, enum case for DIPError.Code.missingEntitlement(_:), v104);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return (*(v42 + 8))(v54, v44);
  }

  defaultLogger()();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Bypassing entitlement checks", v33, 2u);
  }

  return (*(v4 + 8))(v7, v112);
}

uint64_t sub_1003AC958(uint64_t a1)
{
  v143 = a1;
  v2 = type metadata accessor for Logger();
  v134 = *(v2 - 8);
  v135 = v2;
  v3 = *(v134 + 64);
  __chkstk_darwin(v2);
  v5 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for MobileDocumentElement();
  v120 = *(v121 - 8);
  v6 = *(v120 + 64);
  __chkstk_darwin(v121);
  v119 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MobileDocumentType.Identifier();
  v123 = *(v8 - 8);
  v9 = *(v123 + 64);
  __chkstk_darwin(v8);
  v129 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MobileDocumentRequestType.Storage();
  v126 = *(v11 - 8);
  v127 = v11;
  v12 = *(v126 + 64);
  __chkstk_darwin(v11);
  v125 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DIPError.Code();
  v15 = *(v14 - 8);
  v131 = v14;
  v132 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v133 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MobileDocumentType();
  v139 = *(v18 - 8);
  v140 = v18;
  v19 = *(v139 + 64);
  v20 = __chkstk_darwin(v18);
  v130 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v128 = &v110 - v23;
  __chkstk_darwin(v22);
  v136 = &v110 - v24;
  v25 = sub_100007224(&qword_100842800, &unk_1006DF890);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v137 = &v110 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v110 - v29;
  v31 = type metadata accessor for MobileDocumentRequestType();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v31);
  v124 = &v110 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v38 = &v110 - v37;
  __chkstk_darwin(v36);
  v40 = &v110 - v39;
  v41 = *(v1 + 72);
  v42._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.disableRequestValidation.getter();
  LOBYTE(v41) = NSUserDefaults.internalBool(forKey:)(v42);

  if ((v41 & 1) == 0)
  {
    v135 = v30;
    v115 = v8;
    MobileDocumentReaderRequest.documentRequestType.getter();
    v47 = MobileDocumentRequestType.requestedElements.getter();
    v50 = *(v32 + 8);
    v48 = v32 + 8;
    v49 = v50;
    v50(v40, v31);
    MobileDocumentReaderRequest.documentRequestType.getter();
    v51 = MobileDocumentRequestType.requestedElements.getter();
    v50(v40, v31);
    v52 = *(v51 + 16);

    if (v52)
    {
      MobileDocumentReaderRequest.documentRequestType.getter();
      v53 = v138;
      sub_1003AF54C();
      if (v53)
      {
        v49(v38, v31);
      }

      v138 = 0;
      v112 = v31;
      v111 = v49;
      v49(v38, v31);
      v54 = 0;
      v118 = v47;
      v122 = v48;
      v55 = *(v47 + 64);
      v114 = v47 + 64;
      v56 = 1 << *(v47 + 32);
      v57 = -1;
      if (v56 < 64)
      {
        v57 = ~(-1 << v56);
      }

      v58 = v57 & v55;
      v113 = (v56 + 63) >> 6;
      v117 = v139 + 16;
      v116 = v139 + 32;
      v134 = v139 + 8;
      v59 = v140;
      v60 = v135;
      v61 = v137;
      if ((v57 & v55) != 0)
      {
        while (1)
        {
          v62 = v54;
LABEL_21:
          v65 = __clz(__rbit64(v58));
          v58 &= v58 - 1;
          v66 = v65 | (v62 << 6);
          v67 = v118;
          v68 = v139;
          v69 = v136;
          (*(v139 + 16))(v136, *(v118 + 48) + *(v139 + 72) * v66, v59);
          v70 = *(v67 + 56);
          v71 = v59;
          v72 = *(v70 + 8 * v66);
          v73 = sub_100007224(&qword_10083C0D0, &unk_1006DF880);
          v74 = *(v73 + 48);
          v75 = *(v68 + 32);
          v61 = v137;
          v75(v137, v69, v71);
          *(v61 + v74) = v72;
          (*(*(v73 - 8) + 56))(v61, 0, 1, v73);

          v64 = v62;
          v60 = v135;
LABEL_22:
          sub_1003B1134(v61, v60);
          v76 = sub_100007224(&qword_10083C0D0, &unk_1006DF880);
          if ((*(*(v76 - 8) + 48))(v60, 1, v76) == 1)
          {
            break;
          }

          v77 = *(v60 + *(v76 + 48));
          if (!*(v77 + 16))
          {

            (*(v132 + 104))(v133, enum case for DIPError.Code.documentReaderEmptyRequest(_:), v131);
            sub_1000402AC(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_100037214();
            swift_allocError();
LABEL_49:
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();

            return (*v134)(v60, v140);
          }

          if (sub_1003AFB20(v77))
          {

            (*(v132 + 104))(v133, enum case for DIPError.Code.documentReaderInvalidAgeAtLeastElement(_:), v131);
            sub_1000402AC(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_100037214();
            swift_allocError();
            goto LABEL_49;
          }

          v78 = sub_1003C40F4(v77);

          v79 = *(v78 + 16);

          if (v79 > 2)
          {
            (*(v132 + 104))(v133, enum case for DIPError.Code.documentReaderTooManyAgeAtLeastElements(_:), v131);
            sub_1000402AC(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_100037214();
            swift_allocError();
            goto LABEL_49;
          }

          v59 = v140;
          (*v134)(v60, v140);
          v54 = v64;
          if (!v58)
          {
            goto LABEL_14;
          }
        }

        v81 = v124;
        MobileDocumentReaderRequest.documentRequestType.getter();
        v82 = v125;
        MobileDocumentRequestType.storage.getter();
        v111(v81, v112);
        v84 = v126;
        v83 = v127;
        if ((*(v126 + 88))(v82, v127) != enum case for MobileDocumentRequestType.Storage.displayOnly(_:))
        {
          return (*(v84 + 8))(v82, v83);
        }

        result = (*(v84 + 96))(v82, v83);
        v85 = 0;
        v86 = *v82;
        v126 = v82[1];
        v88 = v86 + 56;
        v87 = *(v86 + 56);
        v143 = v86;
        v89 = 1 << *(v86 + 32);
        v90 = -1;
        if (v89 < 64)
        {
          v90 = ~(-1 << v89);
        }

        v91 = v90 & v87;
        v92 = (v89 + 63) >> 6;
        v93 = (v123 + 88);
        LODWORD(v137) = enum case for MobileDocumentType.Identifier.nationalIDCard(_:);
        LODWORD(v135) = enum case for MobileDocumentType.Identifier.driversLicense(_:);
        LODWORD(v127) = enum case for MobileDocumentType.Identifier.photoID(_:);
        v136 = (v123 + 8);
        v94 = v140;
        while (v91)
        {
          v95 = v85;
          v96 = v129;
LABEL_41:
          v97 = __clz(__rbit64(v91));
          v91 &= v91 - 1;
          v98 = v139;
          v99 = v128;
          (*(v139 + 16))(v128, *(v143 + 48) + *(v139 + 72) * (v97 | (v95 << 6)), v94);
          v100 = *(v98 + 32);
          v101 = v130;
          v100(v130, v99, v94);
          MobileDocumentType.storage.getter();
          v102 = v115;
          v103 = (*v93)(v96, v115);
          if (v103 == v137)
          {
            (*v134)(v101, v94);
            result = (*v136)(v96, v102);
          }

          else
          {
            if (v103 != v135)
            {
              v104 = v130;
              if (v103 != v127)
              {

                v141 = 0;
                v142 = 0xE000000000000000;
                _StringGuts.grow(_:)(65);
                v108._countAndFlagsBits = 0xD00000000000003FLL;
                v108._object = 0x8000000100712900;
                String.append(_:)(v108);
                v109 = v140;
                _print_unlocked<A, B>(_:_:)();
                (*(v132 + 104))(v133, enum case for DIPError.Code.documentReaderInvalidRequest(_:), v131);
                sub_1000402AC(_swiftEmptyArrayStorage);
                type metadata accessor for DIPError();
                sub_100037214();
                swift_allocError();
                DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
                swift_willThrow();

                (*v134)(v104, v109);
                return (*v136)(v129, v115);
              }
            }

            result = (*v134)(v130, v140);
          }

          v85 = v95;
        }

        v96 = v129;
        while (1)
        {
          v95 = v85 + 1;
          if (__OFADD__(v85, 1))
          {
            __break(1u);
            return result;
          }

          if (v95 >= v92)
          {
            break;
          }

          v91 = *(v88 + 8 * v95);
          ++v85;
          if (v91)
          {
            goto LABEL_41;
          }
        }

        v64 = v126;
        if (!*(v126 + 16))
        {
          goto LABEL_8;
        }

        v105 = v119;
        static MobileDocumentElement.portrait.getter();
        v106 = sub_100693BD4(v105, v64);
        (*(v120 + 8))(v105, v121);
        if (v106 & 1) == 0 || (sub_1003AFDE0(v64))
        {

          (*(v132 + 104))(v133, enum case for DIPError.Code.documentReaderInvalidRequest(_:), v131);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_100037214();
          swift_allocError();
          goto LABEL_9;
        }
      }

      else
      {
LABEL_14:
        if (v113 <= v54 + 1)
        {
          v63 = v54 + 1;
        }

        else
        {
          v63 = v113;
        }

        v64 = v63 - 1;
        while (1)
        {
          v62 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            break;
          }

          if (v62 >= v113)
          {
            v80 = sub_100007224(&qword_10083C0D0, &unk_1006DF880);
            (*(*(v80 - 8) + 56))(v61, 1, 1, v80);
            v58 = 0;
            goto LABEL_22;
          }

          v58 = *(v114 + 8 * v62);
          ++v54;
          if (v58)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
      }

      if (*(v64 + 16) < 2uLL)
      {

        (*(v132 + 104))(v133, enum case for DIPError.Code.documentReaderRequestOnlyContainsPortrait(_:), v131);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100037214();
        swift_allocError();
      }

      else
      {
        v107 = sub_1003B00BC(v64);

        if ((v107 & 1) == 0)
        {
          return result;
        }

        (*(v132 + 104))(v133, enum case for DIPError.Code.documentReaderTooManyAgeAtLeastElements(_:), v131);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100037214();
        swift_allocError();
      }
    }

    else
    {
LABEL_8:

      (*(v132 + 104))(v133, enum case for DIPError.Code.documentReaderEmptyRequest(_:), v131);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
    }

LABEL_9:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  defaultLogger()();
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "Bypassing request validation", v45, 2u);
  }

  return (*(v134 + 8))(v5, v135);
}

uint64_t sub_1003ADE40(uint64_t a1, void *a2, int a3)
{
  v71 = a3;
  v77 = a1;
  v6 = type metadata accessor for DIPError.Code();
  v73 = *(v6 - 8);
  v74 = v6;
  v7 = *(v73 + 64);
  __chkstk_darwin(v6);
  v76 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for Logger();
  v83 = *(v84 - 8);
  v9 = *(v83 + 64);
  v10 = __chkstk_darwin(v84);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v70 = &v66 - v14;
  __chkstk_darwin(v13);
  v69 = &v66 - v15;
  v81 = type metadata accessor for ReaderAuthenticationAllowableElements();
  v78 = *(v81 - 8);
  v16 = *(v78 + 64);
  __chkstk_darwin(v81);
  v75 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MobileDocumentRequestType();
  v80 = *(v18 - 8);
  v19 = *(v80 + 64);
  __chkstk_darwin(v18);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100007224(&qword_1008427F0, &qword_1006DF870);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v26 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v79 = &v66 - v28;
  v29 = __chkstk_darwin(v27);
  v82 = &v66 - v30;
  __chkstk_darwin(v29);
  v32 = &v66 - v31;
  v72 = v3;
  v33 = *(v3 + 72);
  v34._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.disableAllowedElementsValidation.getter();
  LOBYTE(v33) = NSUserDefaults.internalBool(forKey:)(v34);

  if (v33)
  {
    defaultLogger()();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Bypassing TAC allowed request checks", v37, 2u);
    }

    return (*(v83 + 8))(v12, v84);
  }

  else
  {
    v39 = a2[4];
    sub_10000BA08(a2, a2[3]);
    result = dispatch thunk of ReaderAuthenticationAllowableElementsProviding.allowableElementsForDisplayOnly.getter();
    if (!v4)
    {
      v68 = v32;
      v40 = a2[4];
      sub_10000BA08(a2, a2[3]);
      v41 = v82;
      dispatch thunk of ReaderAuthenticationAllowableElementsProviding.allowableElementsForDataTransfer.getter();
      v67 = 0;
      v42 = *(v78 + 48);
      v43 = v81;
      if (v42(v68, 1, v81) == 1 && v42(v41, 1, v43) == 1)
      {
        v44 = v70;
        defaultLogger()();
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&_mh_execute_header, v45, v46, "TAC is missing allowable elements for both request types, bypassing allowable elements check.", v47, 2u);
          v41 = v82;
        }

        (*(v83 + 8))(v44, v84);
        sub_10000BE18(v68, &qword_1008427F0, &qword_1006DF870);
        return sub_10000BE18(v41, &qword_1008427F0, &qword_1006DF870);
      }

      else
      {
        v48 = v77;
        MobileDocumentReaderRequest.documentRequestType.getter();
        v49 = MobileDocumentRequestType.isDisplayOnly.getter();
        v50 = *(v80 + 8);
        v80 += 8;
        v70 = v50;
        (v50)(v21, v18);
        if (v49)
        {
          v51 = v68;
        }

        else
        {
          v51 = v41;
        }

        v52 = v79;
        sub_10000BBC4(v51, v79, &qword_1008427F0, &qword_1006DF870);
        v53 = v52;
        v54 = v81;
        sub_10000BBC4(v53, v26, &qword_1008427F0, &qword_1006DF870);
        if (v42(v26, 1, v54) == 1)
        {
          sub_10000BE18(v26, &qword_1008427F0, &qword_1006DF870);
          if (v71 & 1) != 0 && (MobileDocumentReaderRequest.documentRequestType.getter(), v55 = MobileDocumentRequestType.requiresReaderToken.getter(), (v70)(v21, v18), (v55))
          {
            (*(v73 + 104))(v76, enum case for DIPError.Code.documentReaderTokenRequiredForRequest(_:), v74);
            sub_1000402AC(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_100037214();
            swift_allocError();
          }

          else
          {
            (*(v73 + 104))(v76, enum case for DIPError.Code.documentReaderAuthenticationCertificateNotAllowedToPerformRequest(_:), v74);
            sub_1000402AC(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_100037214();
            swift_allocError();
          }

          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          sub_10000BE18(v79, &qword_1008427F0, &qword_1006DF870);
          sub_10000BE18(v68, &qword_1008427F0, &qword_1006DF870);
          return sub_10000BE18(v82, &qword_1008427F0, &qword_1006DF870);
        }

        else
        {
          v56 = v78;
          v57 = v75;
          (*(v78 + 32))(v75, v26, v54);
          v58 = ReaderAuthenticationAllowableElements.documentTypes.getter();
          v59 = v67;
          sub_1003AE898(v48, v58);
          if (v59)
          {

            (*(v56 + 8))(v57, v54);
            sub_10000BE18(v79, &qword_1008427F0, &qword_1006DF870);
            sub_10000BE18(v68, &qword_1008427F0, &qword_1006DF870);
            return sub_10000BE18(v82, &qword_1008427F0, &qword_1006DF870);
          }

          else
          {

            v60 = ReaderAuthenticationAllowableElements.elements.getter();
            sub_1003AEB9C(v48, v60);
            v61 = v68;

            v62 = v69;
            defaultLogger()();
            v63 = Logger.logObject.getter();
            v64 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v63, v64))
            {
              v65 = swift_slowAlloc();
              *v65 = 0;
              _os_log_impl(&_mh_execute_header, v63, v64, "TAC contains requisite allowed document types and elements to perform the request", v65, 2u);
            }

            (*(v83 + 8))(v62, v84);
            (*(v56 + 8))(v57, v54);
            sub_10000BE18(v79, &qword_1008427F0, &qword_1006DF870);
            sub_10000BE18(v61, &qword_1008427F0, &qword_1006DF870);
            return sub_10000BE18(v82, &qword_1008427F0, &qword_1006DF870);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1003AE898(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MobileDocumentRequestType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MobileDocumentReaderRequest.documentRequestType.getter();
  v13 = MobileDocumentRequestType.documentTypes.getter();
  (*(v9 + 8))(v12, v8);
  v14 = sub_1003AA9F4(v13);

  if (!v2)
  {
    v16 = sub_1006973D4(v14);

    if (sub_1003B0474(v23, v16)[2])
    {
      v21 = 0;
      v22 = 0xE000000000000000;
      _StringGuts.grow(_:)(46);

      v21 = 0xD00000000000002CLL;
      v22 = 0x8000000100712880;
      v17 = Set.description.getter();
      v19 = v18;

      v20._countAndFlagsBits = v17;
      v20._object = v19;
      String.append(_:)(v20);

      (*(v4 + 104))(v7, enum case for DIPError.Code.documentReaderAuthenticationCertificateNotAllowedToPerformRequest(_:), v3);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1003AEB9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MobileDocumentRequestType();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MobileDocumentReaderRequest.documentRequestType.getter();
  v14 = sub_1003AEEA0();
  if (v2)
  {
    return (*(v10 + 8))(v13, v9);
  }

  v16 = v14;
  (*(v10 + 8))(v13, v9);
  v17 = sub_1006973D4(v16);

  if (!sub_1003B0474(a2, v17)[2])
  {
  }

  v22 = 0;
  v23 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  v22 = 0xD000000000000026;
  v23 = 0x80000001007127F0;
  v18 = Set.description.getter();
  v20 = v19;

  v21._countAndFlagsBits = v18;
  v21._object = v20;
  String.append(_:)(v21);

  (*(v5 + 104))(v8, enum case for DIPError.Code.documentReaderAuthenticationCertificateNotAllowedToPerformRequest(_:), v4);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  return swift_willThrow();
}

uint64_t sub_1003AEEA0()
{
  v1 = v0;
  v2 = sub_100007224(&qword_1008427F8, &qword_1006DF878);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v71 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v67 - v6;
  v8 = &qword_10083C0D0;
  v74 = sub_100007224(&qword_10083C0D0, &unk_1006DF880);
  v9 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v73 = &v67 - v10;
  v11 = MobileDocumentRequestType.requestedElements.getter();
  v12 = *(v11 + 64);
  v69 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v68 = (v13 + 63) >> 6;
  v76 = v11;

  v17 = 0;
  v18 = _swiftEmptyArrayStorage;
  v72 = v7;
  while (1)
  {
    v75 = v18;
    if (v15)
    {
      goto LABEL_10;
    }

    do
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return result;
      }

      if (v20 >= v68)
      {

        v45 = v75[2];
        if (!v45)
        {

          return _swiftEmptyArrayStorage;
        }

        v79 = _swiftEmptyArrayStorage;
        sub_100172D4C(0, v45, 0);
        result = v75;
        v46 = 0;
        v27 = v79;
        LODWORD(v69) = enum case for ISO18013KnownNamespaces.iso18013_5_1(_:);
        LODWORD(v68) = enum case for ISO18013KnownNamespaces.iso23220_1(_:);
        v47 = (v75 + 7);
        v74 = v45;
        while (2)
        {
          if (v46 >= *(result + 16))
          {
            goto LABEL_43;
          }

          v76 = v27;
          v49 = *(v47 - 3);
          v48 = *(v47 - 2);
          v51 = *(v47 - 1);
          v50 = *v47;
          swift_bridgeObjectRetain_n();

          ISO18013KnownNamespaces.init(rawValue:)();
          v52 = type metadata accessor for ISO18013KnownNamespaces();
          v53 = v7;
          v54 = *(v52 - 8);
          if ((*(v54 + 48))(v53, 1, v52) == 1)
          {
LABEL_34:
            v77 = v49;
            v78 = v48;

            v62._countAndFlagsBits = 58;
            v62._object = 0xE100000000000000;
            String.append(_:)(v62);
            v63._countAndFlagsBits = v51;
            v63._object = v50;
            String.append(_:)(v63);
            v60 = v77;
            v61 = v78;
            sub_10000BE18(v53, &qword_1008427F8, &qword_1006DF878);
          }

          else
          {
            v73 = v51;
            v55 = v71;
            sub_10000BBC4(v53, v71, &qword_1008427F8, &qword_1006DF878);
            v56 = (*(v54 + 88))(v55, v52);
            if (v56 == v69)
            {
              v51 = v73;
              v57 = static ISO18013_5_1_ElementIdentifier.isAgeOverElement(_:)();
              v53 = v72;
              if ((v57 & 1) == 0)
              {
                goto LABEL_34;
              }
            }

            else
            {
              v51 = v73;
              if (v56 != v68)
              {
                (*(v54 + 8))(v71, v52);
                v53 = v72;
                goto LABEL_34;
              }

              v58 = static ISO23220_1_ElementIdentifier.isAgeOverElement(_:)();
              v53 = v72;
              if ((v58 & 1) == 0)
              {
                goto LABEL_34;
              }
            }

            sub_10000BE18(v53, &qword_1008427F8, &qword_1006DF878);
            v77 = v49;
            v78 = v48;

            v59._countAndFlagsBits = 0x65766F5F6567613ALL;
            v59._object = 0xEC0000004E4E5F72;
            String.append(_:)(v59);

            v60 = v77;
            v61 = v78;
          }

          v7 = v53;
          result = v75;
          v27 = v76;
          v79 = v76;
          v65 = v76[2];
          v64 = v76[3];
          if (v65 >= v64 >> 1)
          {
            sub_100172D4C((v64 > 1), v65 + 1, 1);
            result = v75;
            v27 = v79;
          }

          ++v46;
          *(v27 + 16) = v65 + 1;
          v66 = v27 + 16 * v65;
          *(v66 + 32) = v60;
          *(v66 + 40) = v61;
          v47 += 4;
          if (v74 == v46)
          {

            return v27;
          }

          continue;
        }
      }

      v15 = *(v69 + 8 * v20);
      ++v17;
    }

    while (!v15);
    v17 = v20;
LABEL_10:
    v21 = __clz(__rbit64(v15)) | (v17 << 6);
    v22 = v76;
    v23 = v76[6];
    v24 = type metadata accessor for MobileDocumentType();
    v25 = *(v24 - 8);
    v26 = v23 + *(v25 + 72) * v21;
    v27 = v73;
    v28 = (*(v25 + 16))(v73, v26, v24);
    v29 = *(v22[7] + 8 * v21);
    *(v27 + *(v74 + 48)) = v29;
    __chkstk_darwin(v28);
    *(&v67 - 2) = v27;
    *(&v67 - 1) = v1;

    v30 = v29;
    v31 = v70;
    v32 = sub_1003CE4C8(sub_1003B10D8, (&v67 - 4), v30);
    v70 = v31;
    if (v31)
    {
      break;
    }

    v33 = v32;
    sub_10000BE18(v27, v8, &unk_1006DF880);
    v34 = v33[2];
    result = v75;
    v35 = v75[2];
    v36 = v35 + v34;
    if (__OFADD__(v35, v34))
    {
      goto LABEL_44;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v37 = v75;
    if ((result & 1) == 0 || v36 > v75[3] >> 1)
    {
      if (v35 <= v36)
      {
        v38 = v35 + v34;
      }

      else
      {
        v38 = v35;
      }

      result = sub_1003C63D0(result, v38, 1, v75);
      v37 = result;
    }

    v7 = v72;
    v15 &= v15 - 1;
    if (v33[2])
    {
      if ((v37[3] >> 1) - v37[2] < v34)
      {
        goto LABEL_46;
      }

      v39 = v8;
      v40 = v1;
      v41 = v37;
      sub_100007224(&qword_10083C0A0, &unk_1006DA5C0);
      swift_arrayInitWithCopy();

      v18 = v41;
      v1 = v40;
      v8 = v39;
      if (v34)
      {
        v42 = v18[2];
        v43 = __OFADD__(v42, v34);
        v44 = v42 + v34;
        if (v43)
        {
          goto LABEL_47;
        }

        v18[2] = v44;
      }
    }

    else
    {
      v19 = v37;

      v18 = v19;
      if (v34)
      {
        goto LABEL_45;
      }
    }
  }

  sub_10000BE18(v27, &qword_10083C0D0, &unk_1006DF880);

  return v27;
}

uint64_t sub_1003AF54C()
{
  v60 = type metadata accessor for MobileDocumentElement();
  v1 = *(v60 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v60 - 8);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MobileDocumentType();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v70 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v54 = &v51 - v10;
  v11 = sub_100007224(&qword_100842800, &unk_1006DF890);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v62 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v61 = &v51 - v15;
  v69 = v0;
  result = MobileDocumentRequestType.requestedElements.getter();
  v17 = 0;
  v18 = *(result + 64);
  v52 = result + 64;
  v57 = result;
  v19 = 1 << *(result + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v53 = v6 + 16;
  v64 = (v6 + 32);
  v65 = v1 + 16;
  v67 = v4;
  v68 = v1;
  v66 = (v1 + 8);
  v55 = v6;
  v56 = v22;
  v58 = (v6 + 8);
  v59 = v5;
LABEL_6:
  if (!v21)
  {
    if (v22 <= v17 + 1)
    {
      v24 = v17 + 1;
    }

    else
    {
      v24 = v22;
    }

    v25 = v24 - 1;
    v26 = v62;
    while (1)
    {
      v23 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_32;
      }

      if (v23 >= v22)
      {
        v50 = sub_100007224(&qword_10083C0D0, &unk_1006DF880);
        (*(*(v50 - 8) + 56))(v26, 1, 1, v50);
        v21 = 0;
        goto LABEL_16;
      }

      v21 = *(v52 + 8 * v23);
      ++v17;
      if (v21)
      {
        goto LABEL_15;
      }
    }
  }

  v23 = v17;
LABEL_15:
  v27 = __clz(__rbit64(v21));
  v21 &= v21 - 1;
  v28 = v27 | (v23 << 6);
  v29 = v57;
  v31 = v54;
  v30 = v55;
  (*(v55 + 16))(v54, *(v57 + 48) + *(v55 + 72) * v28, v5);
  v32 = *(*(v29 + 56) + 8 * v28);
  v33 = sub_100007224(&qword_10083C0D0, &unk_1006DF880);
  v34 = *(v33 + 48);
  v35 = *(v30 + 32);
  v36 = v62;
  v35(v62, v31, v5);
  *&v36[v34] = v32;
  v26 = v36;
  (*(*(v33 - 8) + 56))(v36, 0, 1, v33);

  v25 = v23;
LABEL_16:
  v37 = v61;
  sub_1003B1134(v26, v61);
  v38 = sub_100007224(&qword_10083C0D0, &unk_1006DF880);
  if ((*(*(v38 - 8) + 48))(v37, 1, v38) == 1)
  {
  }

  v63 = v25;
  v39 = *(v37 + *(v38 + 48));
  result = (*v64)(v70, v37, v5);
  v40 = 0;
  v41 = 1 << *(v39 + 32);
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  else
  {
    v42 = -1;
  }

  v43 = v42 & *(v39 + 56);
  v44 = (v41 + 63) >> 6;
  v45 = v60;
  if (!v43)
  {
LABEL_22:
    while (1)
    {
      v46 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v46 >= v44)
      {

        v5 = v59;
        result = (*v58)(v70, v59);
        v17 = v63;
        v22 = v56;
        goto LABEL_6;
      }

      v43 = *(v39 + 56 + 8 * v46);
      ++v40;
      if (v43)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  while (1)
  {
    v46 = v40;
LABEL_25:
    v47 = v67;
    (*(v68 + 16))(v67, *(v39 + 48) + *(v68 + 72) * (__clz(__rbit64(v43)) | (v46 << 6)), v45);
    v48 = MobileDocumentRequestType.isRawDataRequest.getter();
    v49 = v71;
    sub_10037A314(v70, v48 & 1);
    if (v49)
    {
      break;
    }

    v71 = 0;
    v43 &= v43 - 1;

    result = (*v66)(v47, v45);
    v40 = v46;
    if (!v43)
    {
      goto LABEL_22;
    }
  }

  (*v66)(v47, v45);

  return (*v58)(v70, v59);
}

uint64_t sub_1003AFB20(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentElement.Element();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for MobileDocumentElement();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1 + 56;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 56);
  v16 = (v13 + 63) >> 6;
  v27 = v8 + 8;
  v28 = v8 + 16;
  v17 = v3;
  v18 = (v3 + 88);
  v26 = enum case for MobileDocumentElement.Element.ageAtLeast(_:);
  v24 = (v17 + 96);
  v25 = (v17 + 8);
  v29 = a1;

  v20 = 0;
  while (v15)
  {
LABEL_10:
    v22 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    (*(v8 + 16))(v11, *(v29 + 48) + *(v8 + 72) * (v22 | (v20 << 6)), v7);
    MobileDocumentElement.storage.getter();
    (*(v8 + 8))(v11, v7);
    v23 = (*v18)(v6, v2);
    if (v23 == v26)
    {
      result = (*v24)(v6, v2);
      if ((*v6 & 0x8000000000000000) != 0 || *v6 >= 0x64uLL)
      {

        return 1;
      }
    }

    else
    {
      result = (*v25)(v6, v2);
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v16)
    {

      return 0;
    }

    v15 = *(v12 + 8 * v21);
    ++v20;
    if (v15)
    {
      v20 = v21;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003AFDE0(uint64_t a1)
{
  v33 = type metadata accessor for MobileDocumentElement.Element();
  v2 = *(v33 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v33);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MobileDocumentElement();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 56);
  v14 = (v11 + 63) >> 6;
  v31 = v7 + 8;
  v32 = v7 + 16;
  v25 = v2;
  v15 = (v2 + 88);
  v30 = enum case for MobileDocumentElement.Element.ageAtLeast(_:);
  v29 = enum case for MobileDocumentElement.Element.givenName(_:);
  v28 = enum case for MobileDocumentElement.Element.familyName(_:);
  v27 = enum case for MobileDocumentElement.Element.portrait(_:);
  v26 = enum case for MobileDocumentElement.Element.age(_:);

  v17 = 0;
  while (v13)
  {
    v18 = v17;
LABEL_10:
    v19 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    (*(v7 + 16))(v10, *(a1 + 48) + *(v7 + 72) * (v19 | (v18 << 6)), v6);
    MobileDocumentElement.storage.getter();
    (*(v7 + 8))(v10, v6);
    result = (*v15)(v5, v33);
    if (result != v30 && result != v29 && result != v28 && result != v27 && result != v26)
    {

      (*(v25 + 8))(v5, v33);
      return 1;
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v14)
    {

      return 0;
    }

    v13 = *(a1 + 56 + 8 * v18);
    ++v17;
    if (v13)
    {
      v17 = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003B00BC(uint64_t a1)
{
  v46 = type metadata accessor for MobileDocumentElement.Element();
  v2 = *(v46 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v46 - 8);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MobileDocumentElement();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v38 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v34 - v11;
  v13 = a1 + 56;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 56);
  v17 = (v14 + 63) >> 6;
  v44 = (v2 + 88);
  v45 = v7 + 16;
  v43 = enum case for MobileDocumentElement.Element.ageAtLeast(_:);
  v42 = enum case for MobileDocumentElement.Element.age(_:);
  v40 = (v7 + 8);
  v41 = (v2 + 8);
  v37 = (v7 + 32);
  v47 = a1;

  v19 = 0;
  v39 = _swiftEmptyArrayStorage;
  while (1)
  {
    v20 = v19;
    if (!v16)
    {
      break;
    }

LABEL_8:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v22 = *(v7 + 72);
    (*(v7 + 16))(v12, *(v47 + 48) + v22 * (v21 | (v19 << 6)), v6);
    MobileDocumentElement.storage.getter();
    v23 = v46;
    v24 = (*v44)(v5, v46);
    if (v24 == v43 || v24 == v42)
    {
      v36 = *v37;
      v36(v38, v12, v6);
      v26 = v39;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1001733C8(0, v26[2] + 1, 1);
        v26 = v48;
      }

      v29 = v26[2];
      v28 = v26[3];
      v30 = (v29 + 1);
      if (v29 >= v28 >> 1)
      {
        v35 = v6;
        v39 = (v29 + 1);
        v32 = v29;
        sub_1001733C8(v28 > 1, v29 + 1, 1);
        v29 = v32;
        v6 = v35;
        v30 = v39;
        v26 = v48;
      }

      v26[2] = v30;
      v31 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v39 = v26;
      result = (v36)(v26 + v31 + v29 * v22, v38, v6);
    }

    else
    {
      (*v41)(v5, v23);
      result = (*v40)(v12, v6);
    }
  }

  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v19 >= v17)
    {

      v33 = v39[2];

      return v33 > 1;
    }

    v16 = *(v13 + 8 * v19);
    ++v20;
    if (v16)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1003B0474(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!*(a2 + 16))
  {

    return &_swiftEmptySetSingleton;
  }

  v59[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v50 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v55 = v4;
  v56 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v53 = v5 + 1;
    v11 = *(v2 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v12 = Hasher._finalize()();
    v13 = -1 << *(v2 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    v16 = 1 << v14;
    if (((1 << v14) & v7[v14 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v53;
    if (v53 == v3)
    {
      goto LABEL_42;
    }
  }

  v17 = (*(v2 + 48) + 16 * v14);
  if (*v17 != v10 || v17[1] != v9)
  {
    v19 = ~v13;
    while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v14 = (v14 + 1) & v19;
      v15 = v14 >> 6;
      v16 = 1 << v14;
      if (((1 << v14) & v7[v14 >> 6]) == 0)
      {
        v6 = v56;
        goto LABEL_6;
      }

      v20 = (*(v2 + 48) + 16 * v14);
      if (*v20 == v10 && v20[1] == v9)
      {
        break;
      }
    }
  }

  v59[1] = v53;

  v22 = *(v2 + 32);
  v51 = ((1 << v22) + 63) >> 6;
  v23 = 8 * v51;
  v24 = v56;
  if ((v22 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v44 = v23;

  v45 = v44;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v52 = &v49;
    __chkstk_darwin(v21);
    v14 = &v49 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0);
    v58 = v7;
    memcpy(v14, v7, v25);
    v57 = v2;
    v26 = *(v2 + 16);
    v27 = *(v14 + 8 * v15) & ~v16;
    v54 = v14;
    *(v14 + 8 * v15) = v27;
    v28 = v26 - 1;
    v29 = v55;
    v7 = *(v55 + 16);
    v30 = v53;
    while (1)
    {
      v53 = v28;
      if (v30 == v7)
      {
LABEL_41:
        v2 = sub_1003D4904(v54, v51, v53, v57);
LABEL_42:

        return v2;
      }

      v15 = v30;
      while (1)
      {
        if (v30 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v15 >= *(v29 + 16))
        {
          goto LABEL_45;
        }

        v32 = (v24 + 16 * v15);
        v33 = *v32;
        v16 = v32[1];
        ++v15;
        v2 = v57;
        v34 = *(v57 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v35 = Hasher._finalize()();
        v36 = -1 << *(v2 + 32);
        v37 = v35 & ~v36;
        v14 = v37 >> 6;
        v38 = 1 << v37;
        if (((1 << v37) & v58[v37 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v24 = v56;
        if (v15 == v7)
        {
          goto LABEL_41;
        }
      }

      v39 = (*(v2 + 48) + 16 * v37);
      if (*v39 != v33 || v39[1] != v16)
      {
        v41 = ~v36;
        v2 = 1;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v37 = (v37 + 1) & v41;
          v14 = v37 >> 6;
          v38 = 1 << v37;
          if (((1 << v37) & v58[v37 >> 6]) == 0)
          {
            v29 = v55;
            goto LABEL_37;
          }

          v42 = (*(v57 + 48) + 16 * v37);
          if (*v42 == v33 && v42[1] == v16)
          {
            break;
          }
        }
      }

      v29 = v55;
      v31 = v54[v14];
      v54[v14] = v31 & ~v38;
      if ((v31 & v38) == 0)
      {
        goto LABEL_22;
      }

      v28 = v53 - 1;
      v24 = v56;
      if (__OFSUB__(v53, 1))
      {
        __break(1u);
      }

      v30 = v15;
      if (v53 == 1)
      {

        v2 = &_swiftEmptySetSingleton;
        goto LABEL_42;
      }
    }
  }

  v46 = swift_slowAlloc();
  memcpy(v46, v7, v45);
  v47 = v50;
  v48 = sub_1003B0920(v46, v51, v2, v14, v59);

  if (!v47)
  {

    return v48;
  }

  __break(1u);
  return result;
}

unint64_t *sub_1003B0920(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v27 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_1003D4904(v28, a2, v27, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        v16 = *(a3 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v17 = Hasher._finalize()();
        v18 = -1 << *(a3 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 != v15 || v22[1] != v14)
      {
        v24 = ~v18;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v19 = (v19 + 1) & v24;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v25 = (*(a3 + 48) + 16 * v19);
          if (*v25 == v15 && v25[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v28[v20];
      v28[v20] = v10 & ~v21;
    }

    while ((v10 & v21) == 0);
    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v27 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

uint64_t sub_1003B0B04()
{
  v0 = 6645601;
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MobileDocumentElement.Element();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MobileDocumentElement.storage.getter();
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 != enum case for MobileDocumentElement.Element.ageAtLeast(_:))
  {
    if (v11 == enum case for MobileDocumentElement.Element.givenName(_:))
    {
      return 0x616E2D6E65766967;
    }

    else if (v11 == enum case for MobileDocumentElement.Element.familyName(_:))
    {
      return 0x6E2D796C696D6166;
    }

    else if (v11 == enum case for MobileDocumentElement.Element.sex(_:))
    {
      return 7890291;
    }

    else if (v11 == enum case for MobileDocumentElement.Element.portrait(_:))
    {
      return 0x7469617274726F70;
    }

    else if (v11 != enum case for MobileDocumentElement.Element.age(_:))
    {
      if (v11 == enum case for MobileDocumentElement.Element.dateOfBirth(_:))
      {
        return 0x2D666F2D65746164;
      }

      else if (v11 == enum case for MobileDocumentElement.Element.address(_:))
      {
        return 0x73736572646461;
      }

      else
      {
        v0 = 0x746867696568;
        if (v11 != enum case for MobileDocumentElement.Element.height(_:))
        {
          if (v11 == enum case for MobileDocumentElement.Element.weight(_:))
          {
            return 0x746867696577;
          }

          else if (v11 == enum case for MobileDocumentElement.Element.eyeColor(_:))
          {
            return 0x6F6C6F632D657965;
          }

          else if (v11 == enum case for MobileDocumentElement.Element.hairColor(_:))
          {
            return 0x6C6F632D72696168;
          }

          else if (v11 == enum case for MobileDocumentElement.Element.organDonorStatus(_:))
          {
            return 0xD000000000000012;
          }

          else if (v11 == enum case for MobileDocumentElement.Element.veteranStatus(_:))
          {
            return 0x2D6E617265746576;
          }

          else if (v11 == enum case for MobileDocumentElement.Element.issuingAuthority(_:))
          {
            return 0xD000000000000011;
          }

          else if (v11 == enum case for MobileDocumentElement.Element.drivingPrivileges(_:))
          {
            return 0xD000000000000012;
          }

          else if (v11 == enum case for MobileDocumentElement.Element.documentDHSComplianceStatus(_:))
          {
            return 0xD00000000000001ELL;
          }

          else if (v11 == enum case for MobileDocumentElement.Element.documentNumber(_:))
          {
            return 0x746E656D75636F64;
          }

          else
          {
            v0 = 0xD000000000000012;
            if (v11 == enum case for MobileDocumentElement.Element.documentIssueDate(_:))
            {
              return 0xD000000000000013;
            }

            else if (v11 == enum case for MobileDocumentElement.Element.documentExpirationDate(_:))
            {
              return 0xD000000000000018;
            }

            else
            {
              v13[1] = "itlement required";
              (*(v2 + 104))(v5, enum case for DIPError.Code.missingEntitlement(_:), v1);
              sub_1000402AC(_swiftEmptyArrayStorage);
              type metadata accessor for DIPError();
              sub_100037214();
              swift_allocError();
              DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
              swift_willThrow();
              (*(v7 + 8))(v10, v6);
            }
          }
        }
      }
    }
  }

  return v0;
}

char *sub_1003B10D8@<X0>(char **a1@<X8>)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = MobileDocumentRequestType.isRawDataRequest.getter();
  result = sub_10037A314(v5, v6 & 1);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1003B1134(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100842800, &unk_1006DF890);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B11A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003B11EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003B1250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a3;
  v86 = type metadata accessor for Locale.Region();
  v83 = *(v86 - 8);
  v5 = *(v83 + 64);
  v6 = __chkstk_darwin(v86);
  v84 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v82 = &v75 - v8;
  v9 = type metadata accessor for DIPError.Code();
  v89 = *(v9 - 8);
  v90 = v9;
  v10 = *(v89 + 64);
  __chkstk_darwin(v9);
  v91 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MobileDocumentType.Identifier();
  v13 = *(v12 - 8);
  v87 = v12;
  v88 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MobileDocumentType();
  v92 = *(v17 - 8);
  v18 = *(v92 + 64);
  __chkstk_darwin(v17);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ISO18013Response.IssuerSigned();
  v93 = *(v21 - 8);
  v22 = *(v93 + 64);
  v23 = __chkstk_darwin(v21);
  v25 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v75 - v26;

  v29 = sub_1006940B0(v28);
  v30 = v96;
  sub_1003B1F48(v27, v20, v29);
  v96 = v30;
  if (v30)
  {
    v31 = type metadata accessor for ISO18013Response();
    (*(*(v31 - 8) + 8))(a1, v31);
  }

  v77 = v25;
  v78 = v17;
  v80 = a1;
  v81 = v27;
  v79 = v21;

  v33 = v20;
  if (*(a2 + 16) && (v34 = sub_10003B970(v20), (v35 & 1) != 0))
  {
    v36 = *(*(a2 + 56) + 8 * v34);

    v37 = v16;
    MobileDocumentType.storage.getter();
    v38 = v87;
    v39 = v88;
    v40 = v88[11](v16, v87);
    v41 = v93;
    if (v40 != enum case for MobileDocumentType.Identifier.nationalIDCard(_:))
    {
      v60 = v81;
      v61 = v91;
      if (v40 == enum case for MobileDocumentType.Identifier.driversLicense(_:))
      {
        v62 = v79;
        v63 = v77;
        (*(v93 + 16))(v77, v81, v79);
        sub_1003B2658(v63, v36, v85);
        v64 = type metadata accessor for ISO18013Response();
        (*(*(v64 - 8) + 8))(v80, v64);
        (*(v92 + 8))(v33, v78);
      }

      else
      {
        v69 = v78;
        v70 = v85;
        if (v40 != enum case for MobileDocumentType.Identifier.photoID(_:))
        {

          v94 = 0;
          v95 = 0xE000000000000000;
          _StringGuts.grow(_:)(28);
          v73._countAndFlagsBits = 0xD00000000000001ALL;
          v73._object = 0x8000000100710680;
          String.append(_:)(v73);
          _print_unlocked<A, B>(_:_:)();
          v86 = v94;
          (*(v89 + 104))(v61, enum case for DIPError.Code.documentReaderUnknownDocumentType(_:), v90);
          sub_1000402AC(_swiftEmptyArrayStorage);
          v96 = v33;
          type metadata accessor for DIPError();
          sub_1003BD24C(&qword_100834130, &type metadata accessor for DIPError);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          v74 = type metadata accessor for ISO18013Response();
          (*(*(v74 - 8) + 8))(v80, v74);
          (*(v92 + 8))(v96, v69);
          (*(v41 + 8))(v81, v79);
          return v88[1](v37, v87);
        }

        v62 = v79;
        v71 = v77;
        (*(v93 + 16))(v77, v81, v79);
        sub_1003B6EA4(v71, v36, v70);
        v72 = type metadata accessor for ISO18013Response();
        (*(*(v72 - 8) + 8))(v80, v72);
        (*(v92 + 8))(v33, v69);
      }

      return (*(v41 + 8))(v60, v62);
    }

    v76 = v36;
    v39[12](v16, v38);
    v42 = v82;
    v43 = v83;
    v44 = v16;
    v45 = v86;
    (*(v83 + 16))(v82, v44, v86);
    v46 = v84;
    Locale.Region.init(stringLiteral:)();
    sub_1003BD24C(&qword_100834780, &type metadata accessor for Locale.Region);
    v47 = v46;
    v48 = v37;
    v49 = dispatch thunk of static Equatable.== infix(_:_:)();
    v50 = *(v43 + 8);
    (v50)(v47, v45);
    v88 = v50;
    (v50)(v42, v45);
    v51 = v91;
    if (v49)
    {
      v52 = v93;
      v53 = v77;
      v54 = v81;
      v55 = v79;
      (*(v93 + 16))(v77, v81, v79);
      sub_1003B5690(v53, v76, v85);
      v56 = type metadata accessor for ISO18013Response();
      (*(*(v56 - 8) + 8))(v80, v56);
      (*(v92 + 8))(v33, v78);
      (*(v52 + 8))(v54, v55);
      return (v88)(v48, v45);
    }

    (*(v43 + 32))(v47, v48, v45);
    v94 = 0;
    v95 = 0xE000000000000000;
    _StringGuts.grow(_:)(59);
    v65._countAndFlagsBits = 0xD000000000000026;
    v65._object = 0x80000001007110A0;
    String.append(_:)(v65);
    v66._countAndFlagsBits = Locale.Region.identifier.getter();
    String.append(_:)(v66);

    v67._countAndFlagsBits = 0xD000000000000013;
    v67._object = 0x80000001007110D0;
    String.append(_:)(v67);
    v87 = v94;
    v96 = v33;
    (*(v89 + 104))(v51, enum case for DIPError.Code.documentReaderUnsupportedNationalIDCardRegion(_:), v90);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003BD24C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v68 = type metadata accessor for ISO18013Response();
    (*(*(v68 - 8) + 8))(v80, v68);
    (v88)(v47, v86);
    (*(v92 + 8))(v96, v78);
  }

  else
  {

    v94 = 0;
    v95 = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    v57._countAndFlagsBits = 0xD000000000000035;
    v57._object = 0x8000000100712DF0;
    String.append(_:)(v57);
    v58 = v78;
    _print_unlocked<A, B>(_:_:)();
    (*(v89 + 104))(v91, enum case for DIPError.Code.badLogic(_:), v90);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003BD24C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v59 = type metadata accessor for ISO18013Response();
    (*(*(v59 - 8) + 8))(v80, v59);
    (*(v92 + 8))(v20, v58);
  }

  return (*(v93 + 8))(v81, v79);
}

uint64_t sub_1003B1F48(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = v3;
  v45 = a1;
  v46 = a2;
  v6 = type metadata accessor for DIPError.Code();
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  __chkstk_darwin(v6);
  v49 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007224(&qword_100842888, &qword_1006DF978);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v44 - v11;
  v13 = sub_100007224(&qword_100842890, &qword_1006DF980);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v56 = &v44 - v15;
  v50 = type metadata accessor for MobileDocumentType();
  v16 = *(v50 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v50);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a3 + 16);
  if (v20)
  {
    v57 = v3;
    v51 = v12;
    v21 = sub_1003BA1DC(v20, 0, &qword_10083C058, &qword_1006DA558, &type metadata accessor for MobileDocumentType);
    v22 = sub_1003BCC6C(&v58, &v21[(*(v16 + 80) + 32) & ~*(v16 + 80)], v20, a3, &type metadata accessor for MobileDocumentType);

    result = sub_10001FA6C();
    if (v22 != v20)
    {
      goto LABEL_19;
    }

    v12 = v51;
    v4 = v57;
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

  v59 = v21;
  result = sub_1003BA3FC(&v59);
  v24 = v59;
  if (v4)
  {
  }

  v25 = v50;
  v54 = v59[2];
  if (!v54)
  {
LABEL_15:

    (*(v47 + 104))(v49, enum case for DIPError.Code.documentReaderInvalidResponse(_:), v48);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003BD24C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  v57 = 0;
  v26 = 0;
  v27 = *(v16 + 80);
  v51 = v12;
  v52 = v59 + ((v27 + 32) & ~v27);
  v55 = v16 + 16;
  v53 = (v16 + 8);
  while (v26 < v24[2])
  {
    v30 = *(v16 + 16);
    v30(v19, &v52[*(v16 + 72) * v26], v25);
    v31 = ISO18013Response.documents.getter();
    if (v31)
    {
      v32 = v31;
      v33 = v24;
      __chkstk_darwin(v31);
      v35 = v34;
      v36 = v51;
      v37 = v57;
      sub_100162130(sub_1003BE148, v32, v51);
      v57 = v37;
      if (v37)
      {

        return (*v53)(v35, v25);
      }

      v38 = type metadata accessor for ISO18013Response.Document();
      v39 = *(v38 - 8);
      if ((*(v39 + 48))(v36, 1, v38) != 1)
      {

        v40 = v56;
        ISO18013Response.Document.issuerSigned.getter();
        (*(v39 + 8))(v36, v38);
        v41 = type metadata accessor for ISO18013Response.IssuerSigned();
        v42 = *(v41 - 8);
        (*(v42 + 56))(v40, 0, 1, v41);
        (*(v42 + 32))(v45, v40, v41);
        v43 = v50;
        v30(v46, v35, v50);
        return (*v53)(v35, v43);
      }

      sub_10000BE18(v36, &qword_100842888, &qword_1006DF978);
      v25 = v50;
      v24 = v33;
      v19 = v35;
    }

    ++v26;
    v28 = type metadata accessor for ISO18013Response.IssuerSigned();
    v29 = v56;
    (*(*(v28 - 8) + 56))(v56, 1, 1, v28);
    sub_10000BE18(v29, &qword_100842890, &qword_1006DF980);
    result = (*v53)(v19, v25);
    if (v54 == v26)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1003B2658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v357 = a3;
  v5 = type metadata accessor for MobileDocumentType();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v369 = &v332 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007224(&qword_100842810, &qword_1006DF918);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v356 = &v332 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v378 = &v332 - v12;
  v13 = sub_100007224(&qword_100842818, &qword_1006DF920);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v355 = &v332 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v341 = &v332 - v18;
  __chkstk_darwin(v17);
  v384 = &v332 - v19;
  v20 = sub_100007224(&qword_100842820, &qword_1006DF928);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v354 = &v332 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v342 = &v332 - v25;
  __chkstk_darwin(v24);
  v383 = &v332 - v26;
  v27 = sub_100007224(&qword_100842828, &qword_1006DF930);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v353 = &v332 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v338 = &v332 - v32;
  __chkstk_darwin(v31);
  v382 = &v332 - v33;
  v34 = sub_100007224(&qword_100842830, &qword_1006DF938);
  v35 = *(*(v34 - 8) + 64);
  v36 = __chkstk_darwin(v34 - 8);
  v368 = &v332 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v343 = &v332 - v39;
  __chkstk_darwin(v38);
  v381 = &v332 - v40;
  v41 = sub_100007224(&qword_100842838, &qword_1006DF940);
  v42 = *(*(v41 - 8) + 64);
  v43 = __chkstk_darwin(v41 - 8);
  v367 = &v332 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v43);
  v337 = &v332 - v46;
  __chkstk_darwin(v45);
  v379 = &v332 - v47;
  v48 = sub_100007224(&qword_100842840, &qword_1006DF948);
  v49 = *(*(v48 - 8) + 64);
  v50 = __chkstk_darwin(v48 - 8);
  v366 = &v332 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v50);
  v336 = &v332 - v53;
  __chkstk_darwin(v52);
  v55 = &v332 - v54;
  v56 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v57 = *(*(v56 - 8) + 64);
  v58 = __chkstk_darwin(v56 - 8);
  v340 = &v332 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __chkstk_darwin(v58);
  v350 = &v332 - v61;
  __chkstk_darwin(v60);
  v335 = &v332 - v62;
  v63 = sub_100007224(&qword_100842848, &qword_1006DF950);
  v64 = *(*(v63 - 8) + 64);
  v65 = __chkstk_darwin(v63 - 8);
  v352 = &v332 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __chkstk_darwin(v65);
  v351 = &v332 - v68;
  v69 = __chkstk_darwin(v67);
  v365 = &v332 - v70;
  v71 = __chkstk_darwin(v69);
  v349 = &v332 - v72;
  v73 = __chkstk_darwin(v71);
  v358 = &v332 - v74;
  v75 = __chkstk_darwin(v73);
  v339 = &v332 - v76;
  v77 = __chkstk_darwin(v75);
  v373 = &v332 - v78;
  v79 = __chkstk_darwin(v77);
  v334 = &v332 - v80;
  __chkstk_darwin(v79);
  v377 = &v332 - v81;
  v82 = type metadata accessor for ISO18013KnownNamespaces();
  v387 = *(v82 - 8);
  v388 = v82;
  v83 = *(v387 + 64);
  __chkstk_darwin(v82);
  v386 = &v332 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_100007224(&qword_100842850, &qword_1006DF958);
  v86 = *(*(v85 - 8) + 64);
  v87 = __chkstk_darwin(v85 - 8);
  v364 = &v332 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __chkstk_darwin(v87);
  v375 = (&v332 - v90);
  __chkstk_darwin(v89);
  v385 = &v332 - v91;
  v372 = type metadata accessor for ISO18013_AAMVA_ElementIdentifier();
  v371 = *(v372 - 8);
  v92 = *(v371 + 64);
  __chkstk_darwin(v372);
  v370 = &v332 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
  v95 = *(v94 - 8);
  v390 = v94;
  v391 = v95;
  v96 = *(v95 + 64);
  __chkstk_darwin(v94);
  v98 = &v332 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for MobileDocumentElement();
  v100 = *(v99 - 8);
  v101 = *(v100 + 64);
  __chkstk_darwin(v99);
  v103 = &v332 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  v363 = type metadata accessor for PersonNameComponents();
  v362 = *(v363 - 8);
  v104 = *(v362 + 64);
  v105 = __chkstk_darwin(v363);
  v360 = &v332 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v105);
  v108 = &v332 - v107;
  PersonNameComponents.init()();
  static MobileDocumentElement.givenName.getter();
  v394 = a2;
  LOBYTE(a2) = sub_100693BD4(v103, a2);
  v109 = *(v100 + 8);
  v392 = v100 + 8;
  v393 = v99;
  (v109)(v103, v99);
  v376 = v109;
  v380 = v55;
  if (a2)
  {
    v111 = v390;
    v110 = v391;
    (*(v391 + 104))(v98, enum case for ISO18013_5_1_ElementIdentifier.givenName(_:), v390);
    v112 = sub_10037448C(v98);
    v114 = v113;
    (*(v110 + 8))(v98, v111);
    v115 = a1;
    if (v114)
    {
      *&v398 = v112;
      *(&v398 + 1) = v114;
      sub_1000ACCA0();
      Collection.nilIfEmpty.getter();
    }

    PersonNameComponents.givenName.setter();
    v116 = v371;
    v117 = v370;
    v118 = v372;
    (*(v371 + 104))(v370, enum case for ISO18013_AAMVA_ElementIdentifier.nameSuffix(_:), v372);
    v119 = sub_100374FC4(v117);
    v121 = v120;
    (*(v116 + 8))(v117, v118);
    v109 = v376;
    if (v121)
    {
      *&v398 = v119;
      *(&v398 + 1) = v121;
      sub_1000ACCA0();
      Collection.nilIfEmpty.getter();
    }

    PersonNameComponents.nameSuffix.setter();
    a1 = v115;
  }

  static MobileDocumentElement.familyName.getter();
  v122 = sub_100693BD4(v103, v394);
  (v109)(v103, v393);
  if (v122)
  {
    v124 = v390;
    v123 = v391;
    (*(v391 + 104))(v98, enum case for ISO18013_5_1_ElementIdentifier.familyName(_:), v390);
    v125 = sub_10037448C(v98);
    v127 = v126;
    (*(v123 + 8))(v98, v124);
    if (v127)
    {
      *&v398 = v125;
      *(&v398 + 1) = v127;
      sub_1000ACCA0();
      Collection.nilIfEmpty.getter();
    }

    PersonNameComponents.familyName.setter();
    v109 = v376;
  }

  v361 = v108;
  v389 = a1;
  v128 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.Sex();
  v129 = *(v128 - 8);
  v130 = v129;
  v131 = *(v129 + 56);
  v132 = v129 + 56;
  v131(v385, 1, 1, v128);
  static MobileDocumentElement.sex.getter();
  v133 = sub_100693BD4(v103, v394);
  (v109)(v103, v393);
  if (v133)
  {
    v348 = v130;
    v359 = v132;
    v374 = v131;
    v134 = v391;
    v135 = v371;
    v136 = v370;
    v137 = v372;
    (*(v371 + 104))(v370, enum case for ISO18013_AAMVA_ElementIdentifier.sex(_:), v372);
    v138 = sub_10037552C(v136);
    v140 = v139;
    (*(v135 + 8))(v136, v137);
    if (v140)
    {
      v141 = v390;
      (*(v134 + 104))(v98, enum case for ISO18013_5_1_ElementIdentifier.sex(_:), v390);
      v142 = sub_100375A98(v98);
      v144 = v143;
      (*(v134 + 8))(v98, v141);
      sub_10000BE18(v385, &qword_100842850, &qword_1006DF958);
      if (v144)
      {
        v145 = v375;
        v374(v375, 1, 1, v128);
      }

      else
      {
        v145 = v375;
        sub_1003B91C0(v142, v375);
      }

      v109 = v376;
      sub_1000B1FC8(v145, v385, &qword_100842850, &qword_1006DF958);
      goto LABEL_27;
    }

    if (v138 > 1)
    {
      v109 = v376;
      v146 = v374;
      v147 = v348;
      if (v138 == 2)
      {
        v148 = v385;
        sub_10000BE18(v385, &qword_100842850, &qword_1006DF958);
        v149 = &enum case for MobileDocumentReaderResponse.MobileIdentityDocumentElements.Sex.female(_:);
      }

      else
      {
        if (v138 != 9)
        {
          goto LABEL_27;
        }

        v148 = v385;
        sub_10000BE18(v385, &qword_100842850, &qword_1006DF958);
        v149 = &enum case for MobileDocumentReaderResponse.MobileIdentityDocumentElements.Sex.notSpecified(_:);
      }
    }

    else
    {
      v109 = v376;
      v146 = v374;
      v147 = v348;
      if (v138)
      {
        if (v138 != 1)
        {
          goto LABEL_27;
        }

        v148 = v385;
        sub_10000BE18(v385, &qword_100842850, &qword_1006DF958);
        v149 = &enum case for MobileDocumentReaderResponse.MobileIdentityDocumentElements.Sex.male(_:);
      }

      else
      {
        v148 = v385;
        sub_10000BE18(v385, &qword_100842850, &qword_1006DF958);
        v149 = &enum case for MobileDocumentReaderResponse.MobileIdentityDocumentElements.Sex.unknown(_:);
      }
    }

    (*(v147 + 104))(v148, *v149, v128);
    v146(v148, 0, 1, v128);
  }

LABEL_27:
  static MobileDocumentElement.portrait.getter();
  v150 = sub_100693BD4(v103, v394);
  (v109)(v103, v393);
  if (v150)
  {
    v151 = v390;
    v152 = v391;
    (*(v391 + 104))(v98, enum case for ISO18013_5_1_ElementIdentifier.portrait(_:), v390);
    v153 = sub_100376004(v98, &v398);
    (*(v152 + 8))(v98, v151, v153);
    v154 = *(&v398 + 1);
    if (*(&v398 + 1) >> 60 == 15)
    {
      v348 = 0;
      v155 = 0xF000000000000000;
    }

    else
    {
      v156 = v398;
      v397 = v398;
      sub_1003BD294();
      Collection.nilIfEmpty.getter();
      sub_10000BD94(v156, v154);
      v155 = v396;
      v348 = v395;
    }

    v347 = v155;
  }

  else
  {
    v348 = 0;
    v347 = 0xF000000000000000;
  }

  static MobileDocumentElement.age.getter();
  v157 = sub_100693BD4(v103, v394);
  (v109)(v103, v393);
  if (v157)
  {
    v158 = v390;
    v159 = v391;
    (*(v391 + 104))(v98, enum case for ISO18013_5_1_ElementIdentifier.ageInYears(_:), v390);
    v346 = sub_100375A98(v98);
    v345 = v160;
    (*(v159 + 8))(v98, v158);
  }

  else
  {
    v346 = 0;
    v345 = 1;
  }

  v161 = ISO18013Response.IssuerSigned.namespaces.getter();
  if (v161)
  {
    v162 = v161;
    v163 = v386;
    v164 = v387;
    v165 = v388;
    (*(v387 + 104))(v386, enum case for ISO18013KnownNamespaces.iso18013_5_1(_:), v388);
    v166 = ISO18013KnownNamespaces.rawValue.getter();
    v168 = v167;
    (*(v164 + 8))(v163, v165);
    if (*(v162 + 16))
    {
      v169 = sub_10003ADCC(v166, v168);
      v171 = v170;

      if (v171)
      {
        v172 = *(*(v162 + 56) + 8 * v169);
      }

      else
      {

        v172 = 0;
      }
    }

    else
    {

      v172 = 0;
    }
  }

  else
  {
    v172 = 0;
  }

  v173 = v390;
  v174 = v391;
  v387 = *(v391 + 104);
  v388 = v391 + 104;
  (v387)(v98, enum case for ISO18013_5_1_ElementIdentifier.ageInYears(_:), v390);
  v175 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v177 = v176;
  v178 = *(v174 + 8);
  v391 = v174 + 8;
  v386 = v178;
  (v178)(v98, v173);
  v179 = v175;
  v180 = v394;
  v344 = sub_1003BD308(v172, v179, v177, v394, sub_1003BD2E8, &static ISO18013_5_1_ElementIdentifier.parseAgeOverElement(_:), sub_1003BD300, sub_1003BD2F8, sub_1003BD2F0);

  v181 = type metadata accessor for DateComponents();
  v182 = *(v181 - 8);
  v183 = *(v182 + 56);
  v184 = v377;
  v359 = v181;
  v375 = v183;
  v374 = (v182 + 56);
  (v183)(v377, 1, 1);
  static MobileDocumentElement.dateOfBirth.getter();
  v185 = sub_100693BD4(v103, v180);
  (v109)(v103, v393);
  if (v185)
  {
    v186 = v390;
    (v387)(v98, enum case for ISO18013_5_1_ElementIdentifier.birthDate(_:), v390);
    v187 = v335;
    sub_100376574(v98, v335);
    (v386)(v98, v186);
    v188 = type metadata accessor for Date();
    v189 = *(v188 - 8);
    if ((*(v189 + 48))(v187, 1, v188) == 1)
    {
      sub_10000BE18(v184, &qword_100842848, &qword_1006DF950);
      sub_10000BE18(v187, &unk_100849400, &unk_1006BFBB0);
      v190 = v334;
      (v375)(v334, 1, 1, v359);
    }

    else
    {
      v190 = v334;
      Date.utcDayRepresentation.getter();
      sub_10000BE18(v184, &qword_100842848, &qword_1006DF950);
      (*(v189 + 8))(v187, v188);
    }

    sub_1000B1FC8(v190, v184, &qword_100842848, &qword_1006DF950);
  }

  v191 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.Address();
  (*(*(v191 - 8) + 56))(v380, 1, 1, v191);
  static MobileDocumentElement.address.getter();
  v192 = sub_100693BD4(v103, v394);
  (v109)(v103, v393);
  if (v192)
  {
    v193 = v390;
    (v387)(v98, enum case for ISO18013_5_1_ElementIdentifier.residentAddress(_:), v390);
    v194 = sub_10037448C(v98);
    v196 = v195;
    (v386)(v98, v193);
    if (v196)
    {
      *&v398 = v194;
      *(&v398 + 1) = v196;
      sub_1000ACCA0();
      Collection.nilIfEmpty.getter();

      v334 = *(&v397 + 1);
      v335 = v397;
    }

    else
    {
      v335 = v194;
      v334 = 0;
    }

    v197 = v390;
    (v387)(v98, enum case for ISO18013_5_1_ElementIdentifier.residentCity(_:), v390);
    v198 = sub_10037448C(v98);
    v200 = v199;
    (v386)(v98, v197);
    if (v200)
    {
      *&v398 = v198;
      *(&v398 + 1) = v200;
      sub_1000ACCA0();
      Collection.nilIfEmpty.getter();

      v333 = *(&v397 + 1);
    }

    else
    {
      v333 = 0;
    }

    v201 = v390;
    (v387)(v98, enum case for ISO18013_5_1_ElementIdentifier.residentState(_:), v390);
    v202 = sub_10037448C(v98);
    v204 = v203;
    (v386)(v98, v201);
    if (v204)
    {
      *&v398 = v202;
      *(&v398 + 1) = v204;
      sub_1000ACCA0();
      Collection.nilIfEmpty.getter();

      v332 = *(&v397 + 1);
    }

    else
    {
      v332 = 0;
    }

    v205 = v390;
    (v387)(v98, enum case for ISO18013_5_1_ElementIdentifier.residentPostalCode(_:), v390);
    v206 = sub_10037448C(v98);
    v208 = v207;
    (v386)(v98, v205);
    if (v208)
    {
      *&v398 = v206;
      *(&v398 + 1) = v208;
      sub_1000ACCA0();
      Collection.nilIfEmpty.getter();
    }

    v209 = v390;
    (v387)(v98, enum case for ISO18013_5_1_ElementIdentifier.residentCountry(_:), v390);
    v210 = sub_10037448C(v98);
    v212 = v211;
    (v386)(v98, v209);
    if (v212)
    {
      *&v398 = v210;
      *(&v398 + 1) = v212;
      sub_1000ACCA0();
      Collection.nilIfEmpty.getter();
    }

    v213 = v336;
    MobileDocumentReaderResponse.MobileIdentityDocumentElements.Address.init(street:city:state:postalCode:isoCountryCode:)();
    v214 = v380;
    sub_10000BE18(v380, &qword_100842840, &qword_1006DF948);
    sub_1000B1FC8(v213, v214, &qword_100842840, &qword_1006DF948);
  }

  v215 = sub_100007224(&qword_100842858, &qword_1006DF960);
  v216 = *(*(v215 - 8) + 56);
  v216(v379, 1, 1, v215);
  static MobileDocumentElement.height.getter();
  v217 = sub_100693BD4(v103, v394);
  (v109)(v103, v393);
  if (v217)
  {
    v218 = v390;
    (v387)(v98, enum case for ISO18013_5_1_ElementIdentifier.height(_:), v390);
    sub_100375A98(v98);
    v220 = v219;
    (v386)(v98, v218);
    if (v220)
    {
      v221 = 1;
      v222 = v337;
    }

    else
    {
      v223 = [objc_opt_self() centimeters];
      sub_10001F8D4(0, &qword_100842870, NSUnitLength_ptr);
      v222 = v337;
      Measurement.init(value:unit:)();
      v221 = 0;
    }

    v224 = v379;
    sub_10000BE18(v379, &qword_100842838, &qword_1006DF940);
    v216(v222, v221, 1, v215);
    sub_1000B1FC8(v222, v224, &qword_100842838, &qword_1006DF940);
    v109 = v376;
  }

  v225 = sub_100007224(&qword_100842860, &qword_1006DF968);
  v226 = *(*(v225 - 8) + 56);
  v226(v381, 1, 1, v225);
  static MobileDocumentElement.height.getter();
  v227 = sub_100693BD4(v103, v394);
  (v109)(v103, v393);
  v228 = v343;
  if (v227)
  {
    v229 = v390;
    (v387)(v98, enum case for ISO18013_5_1_ElementIdentifier.weight(_:), v390);
    sub_100375A98(v98);
    v231 = v230;
    (v386)(v98, v229);
    if (v231)
    {
      v232 = 1;
    }

    else
    {
      v233 = [objc_opt_self() kilograms];
      sub_10001F8D4(0, &qword_100842868, NSUnitMass_ptr);
      Measurement.init(value:unit:)();
      v232 = 0;
    }

    v234 = v381;
    sub_10000BE18(v381, &qword_100842830, &qword_1006DF938);
    v226(v228, v232, 1, v225);
    sub_1000B1FC8(v228, v234, &qword_100842830, &qword_1006DF938);
    v109 = v376;
  }

  v235 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.EyeColor();
  v236 = *(*(v235 - 8) + 56);
  v236(v382, 1, 1, v235);
  static MobileDocumentElement.eyeColor.getter();
  v237 = sub_100693BD4(v103, v394);
  (v109)(v103, v393);
  if (v237)
  {
    v238 = v390;
    (v387)(v98, enum case for ISO18013_5_1_ElementIdentifier.eyeColor(_:), v390);
    v239 = sub_10037448C(v98);
    v241 = v240;
    (v386)(v98, v238);
    if (v241)
    {
      v242 = v241;
      v243 = v338;
      sub_1003B9334(v239, v242, v338);
      v244 = v382;
      sub_10000BE18(v382, &qword_100842828, &qword_1006DF930);
    }

    else
    {
      v244 = v382;
      sub_10000BE18(v382, &qword_100842828, &qword_1006DF930);
      v243 = v338;
      v236(v338, 1, 1, v235);
    }

    sub_1000B1FC8(v243, v244, &qword_100842828, &qword_1006DF930);
  }

  v245 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.HairColor();
  v246 = *(*(v245 - 8) + 56);
  v246(v383, 1, 1, v245);
  static MobileDocumentElement.hairColor.getter();
  v247 = sub_100693BD4(v103, v394);
  (v109)(v103, v393);
  if (v247)
  {
    v248 = v390;
    (v387)(v98, enum case for ISO18013_5_1_ElementIdentifier.hairColor(_:), v390);
    v249 = sub_10037448C(v98);
    v251 = v250;
    (v386)(v98, v248);
    if (v251)
    {
      v252 = v251;
      v253 = v342;
      sub_1003B97B8(v249, v252, v342);
      v254 = v383;
      sub_10000BE18(v383, &qword_100842820, &qword_1006DF928);
    }

    else
    {
      v254 = v383;
      sub_10000BE18(v383, &qword_100842820, &qword_1006DF928);
      v253 = v342;
      v246(v342, 1, 1, v245);
    }

    sub_1000B1FC8(v253, v254, &qword_100842820, &qword_1006DF928);
  }

  static MobileDocumentElement.organDonorStatus.getter();
  v255 = sub_100693BD4(v103, v394);
  (v109)(v103, v393);
  if ((v255 & 1) != 0 && (v256 = v371, v257 = v370, v258 = v372, (*(v371 + 104))(v370, enum case for ISO18013_AAMVA_ElementIdentifier.organDonorStatus(_:), v372), v259 = sub_10037552C(v257), v261 = v260, (*(v256 + 8))(v257, v258), (v261 & 1) == 0))
  {
    if (v259 == 1)
    {
      v262 = 1;
    }

    else
    {
      v262 = 2 * (v259 != 0);
    }
  }

  else
  {
    v262 = 2;
  }

  LODWORD(v343) = v262;
  static MobileDocumentElement.veteranStatus.getter();
  v263 = sub_100693BD4(v103, v394);
  (v109)(v103, v393);
  if ((v263 & 1) != 0 && (v264 = v371, v265 = v370, v266 = v372, (*(v371 + 104))(v370, enum case for ISO18013_AAMVA_ElementIdentifier.veteranStatus(_:), v372), v267 = sub_10037552C(v265), v269 = v268, (*(v264 + 8))(v265, v266), (v269 & 1) == 0))
  {
    if (v267 == 1)
    {
      v270 = 1;
    }

    else
    {
      v270 = 2 * (v267 != 0);
    }
  }

  else
  {
    v270 = 2;
  }

  LODWORD(v342) = v270;
  v271 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.IssuingAuthority();
  (*(*(v271 - 8) + 56))(v384, 1, 1, v271);
  static MobileDocumentElement.issuingAuthority.getter();
  v272 = sub_100693BD4(v103, v394);
  (v109)(v103, v393);
  if (v272)
  {
    v273 = v390;
    (v387)(v98, enum case for ISO18013_5_1_ElementIdentifier.issuingAuthority(_:), v390);
    v274 = sub_10037448C(v98);
    v276 = v275;
    (v386)(v98, v273);
    if (v276)
    {
      *&v398 = v274;
      *(&v398 + 1) = v276;
      sub_1000ACCA0();
      Collection.nilIfEmpty.getter();
    }

    v277 = v390;
    (v387)(v98, enum case for ISO18013_5_1_ElementIdentifier.issuingJurisdiction(_:), v390);
    v278 = sub_10037448C(v98);
    v280 = v279;
    (v386)(v98, v277);
    if (v280)
    {
      *&v398 = v278;
      *(&v398 + 1) = v280;
      sub_1000ACCA0();
      Collection.nilIfEmpty.getter();
    }

    v281 = v390;
    (v387)(v98, enum case for ISO18013_5_1_ElementIdentifier.issuingCountry(_:), v390);
    v282 = sub_10037448C(v98);
    v284 = v283;
    (v386)(v98, v281);
    if (v284)
    {
      *&v398 = v282;
      *(&v398 + 1) = v284;
      sub_1000ACCA0();
      Collection.nilIfEmpty.getter();
    }

    v285 = v341;
    MobileDocumentReaderResponse.MobileIdentityDocumentElements.IssuingAuthority.init(name:jurisdiction:isoCountryCode:)();
    v286 = v384;
    sub_10000BE18(v384, &qword_100842818, &qword_1006DF920);
    sub_1000B1FC8(v285, v286, &qword_100842818, &qword_1006DF920);
    v109 = v376;
  }

  static MobileDocumentElement.drivingPrivileges.getter();
  v287 = sub_100693BD4(v103, v394);
  (v109)(v103, v393);
  if (v287)
  {
    v376 = sub_1003C1D8C();
    v341 = sub_1003BE17C();
  }

  else
  {
    v341 = _swiftEmptyArrayStorage;
    v376 = _swiftEmptyArrayStorage;
  }

  v288 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DHSComplianceStatus();
  v289 = *(v288 - 8);
  v290 = *(v289 + 7);
  v290(v378, 1, 1, v288);
  static MobileDocumentElement.documentDHSComplianceStatus.getter();
  v291 = sub_100693BD4(v103, v394);
  (v109)(v103, v393);
  if (v291)
  {
    v338 = v103;
    v337 = v289;
    v292 = v371;
    v293 = v109;
    v294 = v370;
    v295 = v372;
    (*(v371 + 104))(v370, enum case for ISO18013_AAMVA_ElementIdentifier.dhsCompliance(_:), v372);
    v296 = sub_100374FC4(v294);
    v298 = v297;
    v299 = v294;
    v109 = v293;
    (*(v292 + 8))(v299, v295);
    v300 = v337;
    v103 = v338;
    if (v298)
    {
      if (v296 == 70 && v298 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v301 = &enum case for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DHSComplianceStatus.compliant(_:);
LABEL_110:

LABEL_111:
        v302 = v378;
        sub_10000BE18(v378, &qword_100842810, &qword_1006DF918);
        (*(v300 + 13))(v302, *v301, v288);
        v290(v302, 0, 1, v288);
        goto LABEL_112;
      }

      if (v296 == 78 && v298 == 0xE100000000000000)
      {
        v301 = &enum case for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DHSComplianceStatus.noncompliant(_:);
        goto LABEL_110;
      }

      v331 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v331)
      {
        v301 = &enum case for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DHSComplianceStatus.noncompliant(_:);
        goto LABEL_111;
      }
    }
  }

LABEL_112:
  static MobileDocumentElement.documentNumber.getter();
  v303 = sub_100693BD4(v103, v394);
  (v109)(v103, v393);
  if (v303)
  {
    v304 = v390;
    (v387)(v98, enum case for ISO18013_5_1_ElementIdentifier.documentNumber(_:), v390);
    v305 = sub_10037448C(v98);
    v307 = v306;
    (v386)(v98, v304);
    v308 = v377;
    v309 = v358;
    v310 = v350;
    v311 = v359;
    if (v307)
    {
      *&v398 = v305;
      *(&v398 + 1) = v307;
      sub_1000ACCA0();
      Collection.nilIfEmpty.getter();

      v371 = *(&v397 + 1);
      v372 = v397;
    }

    else
    {
      v372 = 0;
      v371 = 0;
    }
  }

  else
  {
    v372 = 0;
    v371 = 0;
    v308 = v377;
    v309 = v358;
    v310 = v350;
    v311 = v359;
  }

  (v375)(v373, 1, 1, v311);
  static MobileDocumentElement.documentIssueDate.getter();
  v312 = sub_100693BD4(v103, v394);
  (v109)(v103, v393);
  if (v312)
  {
    v313 = v390;
    (v387)(v98, enum case for ISO18013_5_1_ElementIdentifier.issueDate(_:), v390);
    sub_100376574(v98, v310);
    (v386)(v98, v313);
    v314 = type metadata accessor for Date();
    v315 = v310;
    v316 = *(v314 - 8);
    if ((*(v316 + 48))(v315, 1, v314) == 1)
    {
      v317 = v373;
      sub_10000BE18(v373, &qword_100842848, &qword_1006DF950);
      sub_10000BE18(v315, &unk_100849400, &unk_1006BFBB0);
      v318 = v339;
      (v375)(v339, 1, 1, v311);
    }

    else
    {
      v319 = v308;
      v320 = v339;
      Date.utcDayRepresentation.getter();
      v321 = v373;
      sub_10000BE18(v373, &qword_100842848, &qword_1006DF950);
      v322 = v314;
      v318 = v320;
      v308 = v319;
      v309 = v358;
      (*(v316 + 8))(v315, v322);
      v317 = v321;
      v311 = v359;
    }

    sub_1000B1FC8(v318, v317, &qword_100842848, &qword_1006DF950);
  }

  (v375)(v309, 1, 1, v311);
  static MobileDocumentElement.documentExpirationDate.getter();
  v323 = sub_100693BD4(v103, v394);

  (v109)(v103, v393);
  if (v323)
  {
    v324 = v390;
    (v387)(v98, enum case for ISO18013_5_1_ElementIdentifier.expiryDate(_:), v390);
    v325 = v340;
    sub_100376574(v98, v340);
    (v386)(v98, v324);
    v326 = type metadata accessor for Date();
    v327 = *(v326 - 8);
    if ((*(v327 + 48))(v325, 1, v326) == 1)
    {
      sub_10000BE18(v309, &qword_100842848, &qword_1006DF950);
      sub_10000BE18(v325, &unk_100849400, &unk_1006BFBB0);
      (v375)(v349, 1, 1, v311);
    }

    else
    {
      Date.utcDayRepresentation.getter();
      sub_10000BE18(v309, &qword_100842848, &qword_1006DF950);
      (*(v327 + 8))(v325, v326);
    }

    sub_1000B1FC8(v349, v309, &qword_100842848, &qword_1006DF950);
  }

  static MobileDocumentType.driversLicense.getter();
  (*(v362 + 16))(v360, v361, v363);
  sub_10000BBC4(v385, v364, &qword_100842850, &qword_1006DF958);
  sub_10000BBC4(v308, v365, &qword_100842848, &qword_1006DF950);
  sub_10000BBC4(v380, v366, &qword_100842840, &qword_1006DF948);
  sub_10000BBC4(v379, v367, &qword_100842838, &qword_1006DF940);
  sub_10000BBC4(v381, v368, &qword_100842830, &qword_1006DF938);
  sub_10000BBC4(v382, v353, &qword_100842828, &qword_1006DF930);
  sub_10000BBC4(v383, v354, &qword_100842820, &qword_1006DF928);
  sub_10000BBC4(v384, v355, &qword_100842818, &qword_1006DF920);
  sub_10000BBC4(v378, v356, &qword_100842810, &qword_1006DF918);
  v328 = v373;
  sub_10000BBC4(v373, v351, &qword_100842848, &qword_1006DF950);
  sub_10000BBC4(v309, v352, &qword_100842848, &qword_1006DF950);
  MobileDocumentReaderResponse.MobileIdentityDocumentElements.init(documentType:nameComponents:sex:portraitData:age:ageAtLeastElements:dateOfBirth:address:height:weight:eyeColor:hairColor:isOrganDonor:isVeteran:issuingAuthority:drivingPrivileges:aamvaDrivingPrivileges:documentDHSComplianceStatus:documentNumber:documentIssueDate:documentExpirationDate:)();
  v329 = type metadata accessor for ISO18013Response.IssuerSigned();
  (*(*(v329 - 8) + 8))(v389, v329);
  sub_10000BE18(v309, &qword_100842848, &qword_1006DF950);
  sub_10000BE18(v328, &qword_100842848, &qword_1006DF950);
  sub_10000BE18(v378, &qword_100842810, &qword_1006DF918);
  sub_10000BE18(v384, &qword_100842818, &qword_1006DF920);
  sub_10000BE18(v383, &qword_100842820, &qword_1006DF928);
  sub_10000BE18(v382, &qword_100842828, &qword_1006DF930);
  sub_10000BE18(v381, &qword_100842830, &qword_1006DF938);
  sub_10000BE18(v379, &qword_100842838, &qword_1006DF940);
  sub_10000BE18(v380, &qword_100842840, &qword_1006DF948);
  sub_10000BE18(v377, &qword_100842848, &qword_1006DF950);
  sub_10000BE18(v385, &qword_100842850, &qword_1006DF958);
  return (*(v362 + 8))(v361, v363);
}