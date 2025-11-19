uint64_t sub_10049E108(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 152);
  v7 = *v1;
  *(v3 + 160) = a1;

  v5 = swift_task_alloc();
  *(v3 + 168) = v5;
  *v5 = v7;
  v5[1] = sub_10049E238;

  return sub_10030A7A8();
}

uint64_t sub_10049E238(uint64_t a1)
{
  v4 = *(*v2 + 168);
  v5 = *v2;
  v5[22] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10049E3C4, 0, 0);
  }

  else
  {
    v6 = v5[20];
    v8 = v5[16];
    v7 = v5[17];
    v9 = v5[13];
    v10 = v5[10];

    v11 = v5[1];

    return v11(a1);
  }
}

uint64_t sub_10049E3C4()
{
  v1 = v0[20];

  v2 = v0[22];
  v14 = v0[18];
  v15 = v0[17];
  v3 = v0[16];
  v4 = v0[13];
  v12 = v0[15];
  v13 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v7 = *(v5 + 16);
  v7(v8, v4, v6);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v14(v3, v13);

  swift_allocError();
  v7(v9, v4, v6);
  swift_willThrow();

  (*(v5 + 8))(v4, v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10049E79C(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1003F8F88;

  return sub_10049DBC0();
}

uint64_t sub_10049E844(uint64_t a1, char a2)
{
  *(v3 + 192) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  v4 = type metadata accessor for DIPError.Code();
  *(v3 + 72) = v4;
  v5 = *(v4 - 8);
  *(v3 + 80) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  v7 = type metadata accessor for DIPError();
  *(v3 + 96) = v7;
  v8 = *(v7 - 8);
  *(v3 + 104) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v3 + 120) = v10;
  v11 = *(v10 - 8);
  *(v3 + 128) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();

  return _swift_task_switch(sub_10049E9CC, 0, 0);
}

uint64_t sub_10049E9CC()
{
  v1 = v0[18];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Uploading liveness video", v4, 2u);
  }

  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[16];
  v8 = v0[8];

  v9 = *(v7 + 8);
  v0[19] = v9;
  v9(v5, v6);
  sub_1004A14E4();
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  v10 = v0[6];
  sub_10000BA08(v0 + 2, v0[5]);
  dispatch thunk of DIPAccountManagerProtocol.verifyAccountStatus(requireHSA2:)();
  sub_10000BB78(v0 + 2);
  v11 = swift_task_alloc();
  v0[20] = v11;
  *v11 = v0;
  v11[1] = sub_10049ED98;
  v12 = v0[8];

  return sub_100488518();
}

uint64_t sub_10049ED98(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 160);
  v5 = *v1;
  *(v3 + 168) = a1;

  v6 = swift_task_alloc();
  *(v3 + 176) = v6;
  *v6 = v5;
  v6[1] = sub_10049EEE8;
  v7 = *(v3 + 192);
  v8 = *(v3 + 56);

  return sub_10030BD9C(v8, v7);
}

uint64_t sub_10049EEE8()
{
  v2 = *(*v1 + 176);
  v3 = *v1;
  v3[23] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10049F060, 0, 0);
  }

  else
  {
    v4 = v3[21];
    v6 = v3[17];
    v5 = v3[18];
    v7 = v3[14];
    v8 = v3[11];

    v9 = v3[1];

    return v9();
  }
}

uint64_t sub_10049F060()
{
  v1 = v0[21];

  v2 = v0[23];
  v14 = v0[19];
  v15 = v0[18];
  v3 = v0[17];
  v4 = v0[14];
  v12 = v0[16];
  v13 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.internalError(_:), v0[9]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v7 = *(v5 + 16);
  v7(v8, v4, v6);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v14(v3, v13);

  swift_allocError();
  v7(v9, v4, v6);
  swift_willThrow();

  (*(v5 + 8))(v4, v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10049F45C(void *a1, char a2, void *aBlock, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a1;

  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_1004A857C;

  return sub_10049E844(v7, a2);
}

uint64_t sub_10049F6DC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, void *aBlock, uint64_t a7)
{
  v7[2] = a7;
  v7[3] = _Block_copy(aBlock);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7[4] = v11;

  v12 = swift_task_alloc();
  v7[5] = v12;
  *v12 = v7;
  v12[1] = sub_10049F7E8;

  return sub_1004A5D64(a1, v11, a3, a4);
}

uint64_t sub_10049F7E8()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 24);
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_10049F98C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for DIPError();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_10049FB10, 0, 0);
}

uint64_t sub_10049FB10()
{
  v1 = v0[13];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting fetchBiomeFedStatsUI", v4, 2u);
  }

  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[3];

  (*(v7 + 8))(v5, v6);
  sub_1004A14E4();
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_10049FE88;
  v10 = v0[3];

  return sub_100488518();
}

uint64_t sub_10049FE88(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  v5 = *v1;
  v3[15] = a1;

  v6 = swift_task_alloc();
  v3[16] = v6;
  *v6 = v5;
  v6[1] = sub_10049FFD4;
  v7 = v3[2];

  return sub_10030B2D8(v7);
}

uint64_t sub_10049FFD4(uint64_t a1)
{
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 104);
  v6 = *(*v1 + 96);
  v7 = *(*v1 + 72);
  v8 = *(*v1 + 48);
  v11 = *v1;

  v9 = *(v11 + 8);

  return v9(a1);
}

uint64_t sub_1004A02FC(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100481C58;

  return sub_10049F98C(v5);
}

uint64_t sub_1004A054C(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1004A8580;

  return sub_1004A67E4();
}

uint64_t sub_1004A061C(uint64_t a1, uint64_t a2)
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
  v7 = type metadata accessor for DIPError();
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

  return _swift_task_switch(sub_1004A07A4, 0, 0);
}

uint64_t sub_1004A07A4()
{
  v1 = v0[14];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting clearDataAfterTerminalProofingState", v4, 2u);
  }

  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[4];

  v9 = *(v7 + 8);
  v0[15] = v9;
  v9(v5, v6);
  sub_1004A14E4();
  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = sub_1004A0B28;
  v11 = v0[4];

  return sub_100488518();
}

uint64_t sub_1004A0B28(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  v5 = *v1;
  v3[17] = a1;

  v6 = swift_task_alloc();
  v3[18] = v6;
  *v6 = v5;
  v6[1] = sub_1004A0C88;
  v7 = v3[3];
  v8 = v3[2];

  return sub_10030DBCC(v8, v7);
}

uint64_t sub_1004A0C88()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_1004A0E60;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_1004A0DA4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004A0DA4()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[7];
  v5 = *(v0[4] + 40);
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);

  *(v5 + 16) = 0;
  os_unfair_lock_unlock((v5 + 24));

  v7 = v0[1];

  return v7();
}

uint64_t sub_1004A0E60()
{
  v1 = v0[17];

  v2 = v0[19];
  v14 = v0[15];
  v15 = v0[14];
  v3 = v0[13];
  v4 = v0[10];
  v12 = v0[12];
  v13 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v7 = *(v5 + 16);
  v7(v8, v4, v6);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v14(v3, v13);

  swift_allocError();
  v7(v9, v4, v6);
  swift_willThrow();

  (*(v5 + 8))(v4, v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1004A1258(void *a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a1;

  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_1004A857C;

  return sub_1004A061C(v7, a2);
}

uint64_t sub_1004A1324()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Destroying IdentityManagementSessionProxy", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  swift_unknownObjectWeakDestroy();
  v10 = *(v1 + 32);
  swift_unknownObjectRelease();
  v11 = *(v1 + 40);

  v12 = *(v1 + 48);

  v13 = *(v1 + 56);

  v14 = *(v1 + 64);

  v15 = *(v1 + 80);
  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_1004A14B0()
{
  sub_1004A1324();

  return swift_deallocClassInstance();
}

void sub_1004A14E4()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v28 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v29 = *(v5 - 8);
  v6 = *(v29 + 64);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v26 = v1;
    v12 = v11;
    v25 = swift_slowAlloc();
    v31 = v25;
    *v12 = 136315138;
    Strong = swift_unknownObjectWeakLoadStrong();
    v27 = v0;
    v14 = Strong;
    v30 = Strong;
    sub_100007224(&unk_100845850, &qword_1006E5A50);
    v15 = Optional.debugDescription.getter();
    v24 = v5;
    v16 = v2;
    v18 = v17;

    v19 = sub_100141FE4(v15, v18, &v31);
    v2 = v16;

    *(v12 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "IdentityManagementSessionProxy Checking connection %s", v12, 0xCu);
    sub_10000BB78(v25);

    v1 = v26;

    (*(v29 + 8))(v8, v24);
  }

  else
  {

    (*(v29 + 8))(v8, v5);
  }

  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    v22._countAndFlagsBits = 0xD000000000000027;
    v22._object = 0x8000000100719DC0;
    if (!NSXPCConnection.isEntitled(_:)(v22))
    {
      (*(v2 + 104))(v28, enum case for DIPError.Code.missingEntitlement(_:), v1);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100485E38(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }

  else
  {
    (*(v2 + 104))(v28, enum case for DIPError.Code.missingEntitlement(_:), v1);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100485E38(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }
}

uint64_t sub_1004A19D0()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for DIPError();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_1004A1B54, 0, 0);
}

uint64_t sub_1004A1B54()
{
  v1 = v0[12];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "globalAuthACLInfo", v4, 2u);
  }

  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[2];

  v9 = *(v7 + 8);
  v0[13] = v9;
  v9(v5, v6);
  sub_1004A14E4();
  v10 = *(v0[2] + 64);
  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_1004A1ED4;

  return sub_10058F428();
}

uint64_t sub_1004A1ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v4 + 112);
  v9 = *v4;
  v9[15] = v3;

  if (v3)
  {

    return _swift_task_switch(sub_1004A2064, 0, 0);
  }

  else
  {
    v11 = v9[11];
    v10 = v9[12];
    v12 = v9[8];
    v13 = v9[5];

    v14 = v9[1];

    return v14(a1, a2, a3);
  }
}

uint64_t sub_1004A2064()
{
  v1 = v0[15];
  v13 = v0[13];
  v14 = v0[12];
  v2 = v0[11];
  v3 = v0[8];
  v11 = v0[10];
  v12 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.internalError(_:), v0[3]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v6 = *(v4 + 16);
  v6(v7, v3, v5);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v13(v2, v12);

  swift_allocError();
  v6(v8, v3, v5);
  swift_willThrow();

  (*(v4 + 8))(v3, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004A2434(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1004A24DC;

  return sub_1004A19D0();
}

uint64_t sub_1004A24DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *(*v4 + 32);
  v9 = *(*v4 + 16);
  v10 = *v4;

  v11 = *(v7 + 24);
  if (v3)
  {
    v12 = _convertErrorToNSError(_:)();

    (v11)[2](v11, 0, 0, 0, v12);

    _Block_release(v11);
  }

  else
  {
    type metadata accessor for UUID();
    isa = Array._bridgeToObjectiveC()().super.isa;
    (v11)[2](v11, isa, a2, a3, 0);

    _Block_release(v11);
  }

  v14 = *(v10 + 8);

  return v14();
}

uint64_t sub_1004A26C0(uint64_t a1, uint64_t a2)
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
  v7 = type metadata accessor for DIPError();
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

  return _swift_task_switch(sub_1004A2848, 0, 0);
}

uint64_t sub_1004A2848()
{
  v1 = v0[14];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetchAnalyticsSessionID", v4, 2u);
  }

  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[4];

  (*(v7 + 8))(v5, v6);
  sub_1004A14E4();
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_1004A2B84;
  v10 = v0[4];

  return sub_100488518();
}

uint64_t sub_1004A2B84(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = a1;

  return _swift_task_switch(sub_1004A2C84, 0, 0);
}

uint64_t sub_1004A2C84()
{
  v0[17] = *(v0[16] + 248);

  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_1004A2D38;
  v3 = v0[2];
  v2 = v0[3];

  return sub_100204A00(v3, v2);
}

uint64_t sub_1004A2D38(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 144);
  v7 = *(*v2 + 136);
  v14 = *v2;

  v8 = v5[14];
  v9 = v5[13];
  v10 = v5[10];
  v11 = v5[7];

  v12 = *(v14 + 8);

  return v12(a1, a2);
}

uint64_t sub_1004A308C(void *a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a1;

  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_1004A3158;

  return sub_1004A26C0(v7, a2);
}

uint64_t sub_1004A3158(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  if (a2)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v4 + 32);
  (v10)[2](v10, v9);

  _Block_release(v10);
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1004A3310(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_100498F00(a1, v4, v5, v6);
}

uint64_t sub_1004A33C4(void *a1, uint64_t a2)
{
  v3 = v2;
  v33[0] = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  *(v2 + 24) = 1;
  sub_100007224(&qword_1008458C0, &unk_1006E5ED0);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 16) = 0;
  *(v2 + 40) = v15;
  if (qword_100832C18 != -1)
  {
    swift_once();
  }

  v16 = qword_100882220;
  *(v2 + 56) = qword_100882220;
  *(v2 + 80) = 0;
  sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
  (*(v11 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v10);
  swift_retain_n();
  v17 = static OS_dispatch_queue.global(qos:)();
  (*(v11 + 8))(v14, v10);
  v3[11] = v17;
  defaultLogger()();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Creating IdentityManagementSessionProxy", v20, 2u);
  }

  (*(v6 + 8))(v9, v5);
  swift_unknownObjectWeakAssign();
  v21 = a1;
  result = os_transaction_create();
  if (result)
  {
    v3[4] = result;
    v23 = v33[0];
    v3[9] = v33[0];
    v24 = v23;
    v25 = sub_10048A4CC();
    type metadata accessor for DIPACLCleanerUpper();
    v26 = swift_allocObject();
    v26[2] = v16;
    v26[3] = v24;
    v26[4] = v25;
    v3[8] = v26;
    aBlock[4] = sub_10048A728;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1004DB3EC;
    aBlock[3] = &unk_100813780;
    v27 = _Block_copy(aBlock);
    v28 = [v21 remoteObjectProxyWithErrorHandler:v27];
    _Block_release(v27);
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100007224(&qword_1008458C8, qword_1006E5F20);
    v29 = swift_dynamicCast();
    v30 = v33[1];
    if (!v29)
    {
      v30 = 0;
    }

    v31 = v3[10];
    v3[10] = v30;
    swift_unknownObjectRelease();
    v3[6] = sub_1004A8FFC(v21);

    sub_1004A88C8(0);

    v32 = v3[6];

    sub_1004A88C8(1);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004A3824(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v35 = v5;
    v13 = v12;
    v34 = swift_slowAlloc();
    aBlock = v34;
    *v13 = 136315394;
    v14 = v9;
    v15 = [v14 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v4;
    v17 = v16;
    v19 = v18;

    v20 = sub_100141FE4(v17, v19, &aBlock);

    *(v13 + 4) = v20;
    *(v13 + 12) = 1024;
    LODWORD(v20) = [v14 processIdentifier];

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, "coreidvd (%s:%d): identity management connection received", v13, 0x12u);
    sub_10000BB78(v34);

    (*(v35 + 8))(v8, v33);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  type metadata accessor for IdentityManagementDaemonToClientUIInterface();
  v21 = static IdentityManagementDaemonToClientUIInterface.interface()();
  [v9 setRemoteObjectInterface:v21];

  type metadata accessor for IdentityManagementInterface();
  v22 = static IdentityManagementInterface.interface()();
  [v9 setExportedInterface:v22];

  v23 = *(v2 + OBJC_IVAR____TtC8coreidvd26IdentityManagementListener_watchSessionManager);
  type metadata accessor for IdentityManagementSessionProxy();
  swift_allocObject();
  v24 = v9;
  v25 = v23;
  v26 = sub_1004A33C4(v24, v25);

  [v24 setExportedObject:v26];

  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = sub_1004A84F8;
  v41 = v27;
  aBlock = _NSConcreteStackBlock;
  v37 = 1107296256;
  v38 = sub_100503A7C;
  v39 = &unk_100813730;
  v28 = _Block_copy(&aBlock);

  [v24 setInvalidationHandler:v28];
  _Block_release(v28);
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = sub_1004A853C;
  v41 = v29;
  aBlock = _NSConcreteStackBlock;
  v37 = 1107296256;
  v38 = sub_100503A7C;
  v39 = &unk_100813758;
  v30 = _Block_copy(&aBlock);

  [v24 setInterruptionHandler:v30];
  _Block_release(v30);
  [v24 resume];
  return 1;
}

uint64_t sub_1004A3C88(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = type metadata accessor for DIPError();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_1004A3E10, 0, 0);
}

uint64_t sub_1004A3E10()
{
  v1 = v0[19];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting prepareForProofingIdentity", v4, 2u);
  }

  v5 = v0[19];
  v6 = v0[16];
  v7 = v0[17];
  v8 = v0[9];

  (*(v7 + 8))(v5, v6);
  sub_1004A14E4();
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  v9 = v0[6];
  sub_10000BA08(v0 + 2, v0[5]);
  dispatch thunk of DIPAccountManagerProtocol.verifyAccountStatus(requireHSA2:)();
  sub_10000BB78(v0 + 2);
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_1004A41D4;
  v11 = v0[9];

  return sub_100488518();
}

uint64_t sub_1004A41D4(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = a1;

  return _swift_task_switch(sub_1004A42D4, 0, 0);
}

uint64_t sub_1004A42D4()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[15];
  v4 = v0[12];
  v5 = v0[7];
  v6 = v0[8];
  v7 = *(v0[21] + 264);
  v8 = IdentityProofingConfiguration.country.getter();
  sub_1001D15CC(v5, v6, v8, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1004A43B8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for DIPError();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1004A453C, 0, 0);
}

uint64_t sub_1004A453C()
{
  v1 = v0[13];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting fetchExtendedReviewDisplayInfo", v4, 2u);
  }

  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[3];

  v9 = *(v7 + 8);
  v0[14] = v9;
  v9(v5, v6);
  sub_1004A14E4();
  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = sub_1004A48C0;
  v11 = v0[3];

  return sub_100488518();
}

uint64_t sub_1004A48C0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  v5 = *v1;
  v3[16] = a1;

  v6 = swift_task_alloc();
  v3[17] = v6;
  *v6 = v5;
  v6[1] = sub_1004A4A24;
  v7 = v3[2];

  return sub_100311564(v7);
}

uint64_t sub_1004A4A24(uint64_t a1)
{
  v4 = *(*v2 + 136);
  v5 = *v2;
  v5[18] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004A4BB0, 0, 0);
  }

  else
  {
    v6 = v5[16];
    v8 = v5[12];
    v7 = v5[13];
    v9 = v5[9];
    v10 = v5[6];

    v11 = v5[1];

    return v11(a1);
  }
}

uint64_t sub_1004A4BB0()
{
  v1 = v0[16];

  v2 = v0[18];
  v14 = v0[14];
  v15 = v0[13];
  v3 = v0[12];
  v4 = v0[9];
  v12 = v0[11];
  v13 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.internalError(_:), v0[4]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v7 = *(v5 + 16);
  v7(v8, v4, v6);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v14(v3, v13);

  swift_allocError();
  v7(v9, v4, v6);
  swift_willThrow();

  (*(v5 + 8))(v4, v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1004A4E18(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = type metadata accessor for DIPError();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v2[15] = v9;
  v10 = *(v9 - 8);
  v2[16] = v10;
  v11 = *(v10 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_1004A4F9C, 0, 0);
}

uint64_t sub_1004A4F9C()
{
  v1 = v0[18];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting Proofing cancellation flow", v4, 2u);
  }

  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[16];
  v8 = v0[8];

  v9 = *(v7 + 8);
  v0[19] = v9;
  v9(v5, v6);
  sub_1004A14E4();
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  v10 = v0[6];
  sub_10000BA08(v0 + 2, v0[5]);
  dispatch thunk of DIPAccountManagerProtocol.verifyAccountStatus(requireHSA2:)();
  sub_10000BB78(v0 + 2);
  v11 = swift_task_alloc();
  v0[20] = v11;
  *v11 = v0;
  v11[1] = sub_1004A5368;
  v12 = v0[8];

  return sub_100488518();
}

uint64_t sub_1004A5368(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 160);
  v5 = *v1;
  v3[21] = a1;

  v6 = swift_task_alloc();
  v3[22] = v6;
  *v6 = v5;
  v6[1] = sub_1004A54CC;
  v7 = v3[7];

  return sub_100311160(v7);
}

uint64_t sub_1004A54CC()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v7 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = sub_1004A56A4;
  }

  else
  {
    v5 = *(v2 + 168);

    v4 = sub_1004A55E8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004A55E8()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[14];
  v4 = v0[11];
  v5 = *(v0[8] + 40);
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);

  *(v5 + 16) = 0;
  os_unfair_lock_unlock((v5 + 24));

  v7 = v0[1];

  return v7();
}

uint64_t sub_1004A56A4()
{
  v1 = v0[21];

  v2 = v0[23];
  v14 = v0[19];
  v15 = v0[18];
  v3 = v0[17];
  v4 = v0[14];
  v12 = v0[16];
  v13 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.internalError(_:), v0[9]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v7 = *(v5 + 16);
  v7(v8, v4, v6);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v14(v3, v13);

  swift_allocError();
  v7(v9, v4, v6);
  swift_willThrow();

  (*(v5 + 8))(v4, v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1004A590C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_10048C0A8(a1, v4, v5, v6);
}

uint64_t sub_1004A59C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_1004888A0(a1, v4, v5, v6);
}

uint64_t sub_1004A5A78()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100027B9C;

  return sub_1004A308C(v2, v3, v5, v4);
}

uint64_t sub_1004A5B40()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_1004A2434(v2, v3);
}

uint64_t sub_1004A5BEC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100041F04;

  return sub_1004A1258(v2, v3, v5, v4);
}

uint64_t sub_1004A5CB0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1004A054C(v2, v3, v4);
}

uint64_t sub_1004A5D64(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 168) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = type metadata accessor for DIPError.Code();
  *(v5 + 48) = v6;
  v7 = *(v6 - 8);
  *(v5 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  v9 = type metadata accessor for DIPError();
  *(v5 + 72) = v9;
  v10 = *(v9 - 8);
  *(v5 + 80) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  *(v5 + 96) = v12;
  v13 = *(v12 - 8);
  *(v5 + 104) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_1004A5EF0, 0, 0);
}

uint64_t sub_1004A5EF0()
{
  v1 = v0[15];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting saveIdentityProofingDataSharingUserConsent", v4, 2u);
  }

  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[13];
  v8 = v0[5];

  v9 = *(v7 + 8);
  v0[16] = v9;
  v9(v5, v6);
  sub_1004A14E4();
  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = sub_1004A6274;
  v11 = v0[5];

  return sub_100488518();
}

uint64_t sub_1004A6274(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 136);
  v5 = *v1;
  *(v3 + 144) = a1;

  v6 = swift_task_alloc();
  *(v3 + 152) = v6;
  *v6 = v5;
  v6[1] = sub_1004A6404;
  v7 = *(v3 + 32);
  v8 = *(v3 + 168);
  v9 = *(v3 + 24);
  v10 = *(v3 + 16);

  return sub_1003133A8(v10, v9, v8, v7);
}

uint64_t sub_1004A6404()
{
  v2 = *(*v1 + 152);
  v3 = *v1;
  v3[20] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1004A657C, 0, 0);
  }

  else
  {
    v4 = v3[18];
    v6 = v3[14];
    v5 = v3[15];
    v7 = v3[11];
    v8 = v3[8];

    v9 = v3[1];

    return v9();
  }
}

uint64_t sub_1004A657C()
{
  v1 = v0[18];

  v2 = v0[20];
  v14 = v0[16];
  v15 = v0[15];
  v3 = v0[14];
  v4 = v0[11];
  v12 = v0[13];
  v13 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.internalError(_:), v0[6]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v7 = *(v5 + 16);
  v7(v8, v4, v6);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v14(v3, v13);

  swift_allocError();
  v7(v9, v4, v6);
  swift_willThrow();

  (*(v5 + 8))(v4, v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1004A67E4()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for DIPError();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_1004A6968, 0, 0);
}

uint64_t sub_1004A6968()
{
  v1 = v0[12];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting livenessConsentOptin", v4, 2u);
  }

  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[2];

  (*(v7 + 8))(v5, v6);
  sub_1004A14E4();
  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_1004A6CE8;
  v10 = v0[2];

  return sub_100488518();
}

uint64_t sub_1004A6CE8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  v7 = *v1;
  *(v3 + 112) = a1;

  v5 = swift_task_alloc();
  *(v3 + 120) = v5;
  *v5 = v7;
  v5[1] = sub_1004A8584;

  return sub_100310F54();
}

uint64_t sub_1004A6E30()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1004A02FC(v2, v3, v4);
}

uint64_t sub_1004A6EE4()
{
  _Block_release(*(v0 + 56));
  v1 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1004A6F2C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100041F04;

  return sub_10049F6DC(v2, v3, v4, v5, v6, v8, v7);
}

uint64_t sub_1004A7008()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100041F04;

  return sub_10049F45C(v2, v3, v5, v4);
}

uint64_t sub_1004A70CC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_10049E79C(v2, v3);
}

uint64_t sub_1004A7178()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_10049DB18(v2, v3);
}

uint64_t sub_1004A7224()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_10049CEA0(v2, v3);
}

uint64_t sub_1004A72D0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_10049C49C(v2, v3);
}

uint64_t sub_1004A737C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_10049BA18(v2, v3);
}

uint64_t sub_1004A7428()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_10049AF80(v2, v3);
}

uint64_t sub_1004A74D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100041F04;

  return sub_10049A1F0(v2, v3, v5, v4);
}

uint64_t sub_1004A7598()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100041F04;

  return sub_1004994B8(v2, v3, v5, v4);
}

uint64_t sub_1004A7658()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_1004982AC(v2, v3);
}

uint64_t sub_1004A7704()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_100497744(v2, v3, v4);
}

uint64_t sub_1004A77B8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_100496D78(v2, v3);
}

uint64_t sub_1004A7864()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1004A78B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100041F04;

  return sub_100495F04(v2, v3, v5, v4);
}

uint64_t sub_1004A7974()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100041F04;

  return sub_100494B64(v2, v3, v5, v4);
}

uint64_t sub_1004A7A38()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100041F04;

  return sub_100494700(v2, v3, v4, v5, v6);
}

uint64_t sub_1004A7B00()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_10049384C(v2, v3);
}

uint64_t sub_1004A7BAC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_100492BA8(v2, v3, v4);
}

uint64_t sub_1004A7C60()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_100491FC4(v2, v3);
}

uint64_t sub_1004A7D10()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100041F04;

  return sub_1004911AC(v2, v3, v4, v5, v6);
}

uint64_t sub_1004A7DD8()
{
  _Block_release(*(v0 + 56));
  v1 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1004A7E28()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100041F04;

  return sub_100490374(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1004A7F08()
{
  _Block_release(*(v0 + 40));
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1004A7F58()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100041F04;

  return sub_10048F40C(v2, v3, v4, v5, v6);
}

uint64_t sub_1004A8020()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100041F04;

  return sub_10048E6D0(v2, v3, v5, v4);
}

uint64_t sub_1004A80E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_10048E47C(v2, v3, v4);
}

uint64_t sub_1004A8194()
{
  _Block_release(*(v0 + 40));
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1004A81EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100041F04;

  return sub_10048D580(v2, v3, v4, v5, v6);
}

uint64_t sub_1004A82B4()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1004A82FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100041F04;

  return sub_10048D30C(v2, v3, v5, v4);
}

uint64_t sub_1004A83BC()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1004A83FC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100041F04;

  return sub_10048B464(v2, v3, v5, v4);
}

uint64_t sub_1004A84C0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004A8524(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004A86FC()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_100141FE4(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "error received while fetching proxy for the exported client %s", v7, 0xCu);
    sub_10000BB78(v8);
  }

  return (*(v1 + 8))(v4, v0);
}

void sub_1004A88C8(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v24 = v2;
    v12 = v11;
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    if (a1)
    {
      v14 = 0xD00000000000001DLL;
    }

    else
    {
      v14 = 0xD000000000000015;
    }

    if (a1)
    {
      v15 = "v16@?0@NSNotification8";
    }

    else
    {
      v15 = "extendReviewNotificationShown";
    }

    v16 = sub_100141FE4(v14, v15 | 0x8000000000000000, aBlock);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "Add Observer called for %s", v12, 0xCu);
    sub_10000BB78(v13);

    v2 = v24;
  }

  (*(v5 + 8))(v8, v4);
  v17 = [objc_opt_self() defaultCenter];
  v18 = a1 & 1;
  v19 = String._bridgeToObjectiveC()();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = v2;
  aBlock[4] = sub_1004A8FB0;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004A8BDC;
  aBlock[3] = &unk_1008137D0;
  v21 = _Block_copy(aBlock);

  v22 = [v17 addObserverForName:v19 object:0 queue:0 usingBlock:v21];
  _Block_release(v21);
  swift_unknownObjectRelease();
}

uint64_t sub_1004A8BDC(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1004A8CF8(const char *a1, SEL *a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v13 = *(v2 + 16);
  if (v13)
  {
    v14 = *(v2 + 16);
    swift_unknownObjectRetain();
    defaultLogger()();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, a1, v17, 2u);
    }

    (*(v6 + 8))(v12, v5);
    [v13 *a2];
    return swift_unknownObjectRelease();
  }

  else
  {
    defaultLogger()();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "cannot connect to client proxy", v21, 2u);
    }

    return (*(v6 + 8))(v10, v5);
  }
}

uint64_t sub_1004A8F1C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1004A8F78()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1004A8FB0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1)
  {
    return sub_1004A8CE4();
  }

  else
  {
    return sub_1004A8CD0();
  }
}

uint64_t sub_1004A8FE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004A8FFC(void *a1)
{
  type metadata accessor for IdentityManagementSessionDelegate();
  result = swift_allocObject();
  if (a1)
  {
    aBlock[4] = sub_1004A86FC;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1004DB3EC;
    aBlock[3] = &unk_1008137F8;
    v3 = result;
    v4 = _Block_copy(aBlock);
    v5 = a1;
    v6 = [v5 remoteObjectProxyWithErrorHandler:v4];
    _Block_release(v4);

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100007224(&qword_1008458C8, qword_1006E5F20);
    v7 = swift_dynamicCast();
    result = v3;
    if (v7)
    {
      v8 = v9;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  *(result + 16) = v8;
  return result;
}

uint64_t sub_1004A914C()
{
  v0 = type metadata accessor for IdentityBMUserProofingStreamWrapper();
  v1 = swift_allocObject();
  v2 = [BiomeLibrary() WalletPaymentsCommerce];
  swift_unknownObjectRelease();
  v3 = [v2 UserProofing];
  swift_unknownObjectRelease();
  v4 = [v3 Result];
  swift_unknownObjectRelease();
  *(v1 + 16) = v4;
  v5 = objc_allocWithZone(IdentityProofingBiomeDataDeletionManager);

  v6 = [v5 init];
  v18[3] = v0;
  v18[4] = &off_10080D6B8;
  v18[0] = v1;
  type metadata accessor for IdentityProofingBiomeManager();
  v7 = swift_allocObject();
  v8 = sub_10001F370(v18, v0);
  v9 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = *v11;
  v16 = v0;
  v17 = &off_10080D6B8;
  *&v15 = v13;
  *(v7 + 64) = 90;
  sub_10001F358(&v15, v7 + 16);
  *(v7 + 56) = v6;
  sub_10000BB78(v18);

  return v7;
}

NSObject *sub_1004A9338()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  machServiceIdentityProofingDataSharing.getter();
  v6 = objc_allocWithZone(NSXPCListener);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 initWithMachServiceName:v7];

  *&v0[OBJC_IVAR____TtC8coreidvd35IdentityProofingDataSharingListener_xpcListener] = v8;
  v9 = type metadata accessor for IdentityProofingDataSharingListener();
  v19.receiver = v0;
  v19.super_class = v9;
  v10 = objc_msgSendSuper2(&v19, "init");
  v11 = OBJC_IVAR____TtC8coreidvd35IdentityProofingDataSharingListener_xpcListener;
  v12 = *&v10[OBJC_IVAR____TtC8coreidvd35IdentityProofingDataSharingListener_xpcListener];
  v13 = v10;
  [v12 setDelegate:v13];
  [*&v10[v11] resume];
  defaultLogger()();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "IdentityProofingDataSharingListener has started", v16, 2u);

    v17 = v13;
  }

  else
  {
    v17 = v14;
    v14 = v13;
  }

  (*(v2 + 8))(v5, v1);
  return v13;
}

id sub_1004A9564()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "IdentityProofingDataSharingListener is tearing down", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  [*&v1[OBJC_IVAR____TtC8coreidvd35IdentityProofingDataSharingListener_xpcListener] invalidate];
  v10 = type metadata accessor for IdentityProofingDataSharingListener();
  v12.receiver = v1;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, "dealloc");
}

uint64_t sub_1004A9728(const char *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 2u);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1004A98E8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  defaultLogger()();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Creating IdentityProofingDataSharingSessionProxy", v12, 2u);
  }

  (*(v6 + 8))(v9, v5);
  a3[3] = &protocol witness table for NSXPCConnection;
  swift_unknownObjectWeakAssign();
  a3[4] = a2;

  result = os_transaction_create();
  if (result)
  {
    a3[5] = result;
    return a3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004A9A88(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v41 - v8;
  defaultLogger()();
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = [v10 processIdentifier];

    _os_log_impl(&_mh_execute_header, v11, v12, "IdentityProofingDataSharingListener connection received from %d", v13, 8u);
  }

  else
  {

    v11 = v10;
  }

  v16 = *(v3 + 8);
  v15 = v3 + 8;
  v14 = v16;
  v16(v9, v2);
  defaultLogger()();
  v17 = v10;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v42 = v14;
    v21 = v20;
    v22 = swift_slowAlloc();
    aBlock = v22;
    *v21 = 136315394;
    v23 = v17;
    v41[1] = v15;
    v24 = v23;
    v25 = [v23 description];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41[0] = v2;
    v28 = v27;

    v29 = sub_100141FE4(v26, v28, &aBlock);

    *(v21 + 4) = v29;
    *(v21 + 12) = 1024;
    LODWORD(v28) = [v24 processIdentifier];

    *(v21 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v18, v19, "coreidvd (%s:%d): IdentityProofingDataSharingListener connection received", v21, 0x12u);
    sub_10000BB78(v22);

    v42(v7, v41[0]);
  }

  else
  {

    v14(v7, v2);
  }

  type metadata accessor for IdentityProofingDataSharingInterface();
  v30 = static IdentityProofingDataSharingInterface.interface()();
  [v17 setExportedInterface:v30];

  v31 = sub_1004A914C();
  type metadata accessor for IdentityProofingDataRetentionHelper();
  v32 = swift_allocObject();
  *(v32 + 16) = 90;
  v46 = &type metadata for IdentityProofingPassManager;
  v47 = &off_10080DA50;
  type metadata accessor for IdentityProofingBiomeDataSharingManager();
  v33 = swift_allocObject();
  sub_10001F370(&aBlock, &type metadata for IdentityProofingPassManager);
  v50 = &type metadata for IdentityProofingPassManager;
  v51 = &off_10080DA50;
  *(v33 + 16) = v31;
  sub_10001F358(&v49, v33 + 24);
  *(v33 + 64) = v32;
  sub_10000BB78(&aBlock);
  type metadata accessor for IdentityProofingDataSharingManager();
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  type metadata accessor for IdentityProofingDataSharingSessionProxy();
  v35 = swift_allocObject();
  v36 = v17;
  v37 = sub_1004A98E8(v36, v34, v35);

  [v36 setExportedObject:v37];

  v47 = sub_1004A9710;
  v48 = 0;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_100503A7C;
  v46 = &unk_100813820;
  v38 = _Block_copy(&aBlock);
  [v36 setInvalidationHandler:v38];
  _Block_release(v38);
  v47 = sub_1004A971C;
  v48 = 0;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_100503A7C;
  v46 = &unk_100813848;
  v39 = _Block_copy(&aBlock);
  [v36 setInterruptionHandler:v39];
  _Block_release(v39);
  [v36 resume];
  return 1;
}

uint64_t sub_1004A9FD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004A9FF0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Destroying IdentityProofingDataSharingSessionProxy", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  sub_100485E80(v1 + 16);
  v10 = *(v1 + 32);

  v11 = *(v1 + 40);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1004AA14C()
{
  sub_1004A9FF0();

  return swift_deallocClassInstance();
}

uint64_t sub_1004AA180()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for DIPError();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_1004AA304, 0, 0);
}

uint64_t sub_1004AA304()
{
  v1 = v0[12];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting fetchUserConsent event", v4, 2u);
  }

  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[2];

  v9 = *(v7 + 8);
  v0[13] = v9;
  v9(v5, v6);
  sub_1004AC3C4();
  v0[14] = *(*(v0[2] + 32) + 16);

  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = sub_1004AA66C;

  return sub_10017C2F0();
}

uint64_t sub_1004AA66C(uint64_t a1)
{
  v4 = *(*v2 + 120);
  v5 = *v2;
  v5[16] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004AA7F8, 0, 0);
  }

  else
  {
    v6 = v5[14];
    v8 = v5[11];
    v7 = v5[12];
    v9 = v5[8];
    v10 = v5[5];

    v11 = v5[1];

    return v11(a1);
  }
}

uint64_t sub_1004AA7F8()
{
  v1 = v0[14];

  v2 = v0[16];
  v14 = v0[13];
  v15 = v0[12];
  v3 = v0[11];
  v4 = v0[8];
  v12 = v0[10];
  v13 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.internalError(_:), v0[3]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100037214();
  swift_allocError();
  v7 = *(v5 + 16);
  v7(v8, v4, v6);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v14(v3, v13);

  swift_allocError();
  v7(v9, v4, v6);
  swift_willThrow();

  (*(v5 + 8))(v4, v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1004AABA4(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100498354;

  return sub_1004AA180();
}

uint64_t sub_1004AAC4C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for DIPError();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1004AADD0, 0, 0);
}

uint64_t sub_1004AADD0()
{
  v1 = v0[13];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting didChangeUserConsent event", v4, 2u);
  }

  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[3];

  v9 = *(v7 + 8);
  v0[14] = v9;
  v9(v5, v6);
  sub_1004AC3C4();
  v0[15] = *(*(v0[3] + 32) + 16);

  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = sub_1004AB14C;
  v11 = v0[2];

  return sub_10017EF7C(v11);
}

uint64_t sub_1004AB14C()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  v3[17] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1004AB2C4, 0, 0);
  }

  else
  {
    v4 = v3[15];
    v6 = v3[12];
    v5 = v3[13];
    v7 = v3[9];
    v8 = v3[6];

    v9 = v3[1];

    return v9();
  }
}

uint64_t sub_1004AB2C4()
{
  v1 = v0[15];

  v2 = v0[17];
  v14 = v0[14];
  v15 = v0[13];
  v3 = v0[12];
  v4 = v0[9];
  v12 = v0[11];
  v13 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.internalError(_:), v0[4]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100037214();
  swift_allocError();
  v7 = *(v5 + 16);
  v7(v8, v4, v6);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v14(v3, v13);

  swift_allocError();
  v7(v9, v4, v6);
  swift_willThrow();

  (*(v5 + 8))(v4, v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1004AB67C(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);

  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_10049CF48;

  return sub_1004AAC4C(a1);
}

uint64_t sub_1004AB738()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for DIPError();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_1004AB8BC, 0, 0);
}

uint64_t sub_1004AB8BC()
{
  v1 = v0[12];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting checkUserConsent event", v4, 2u);
  }

  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[2];

  v9 = *(v7 + 8);
  v0[13] = v9;
  v9(v5, v6);
  sub_1004AC3C4();
  v0[14] = *(*(v0[2] + 32) + 16);

  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = sub_1004ABC28;

  return sub_10017B1E4();
}

uint64_t sub_1004ABC28(char a1)
{
  v4 = *(*v2 + 120);
  v5 = *v2;
  v5[16] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004ABDB4, 0, 0);
  }

  else
  {
    v6 = v5[14];
    v8 = v5[11];
    v7 = v5[12];
    v9 = v5[8];
    v10 = v5[5];

    v11 = v5[1];

    return v11(a1 & 1);
  }
}

uint64_t sub_1004ABDB4()
{
  v1 = v0[14];

  v2 = v0[16];
  v14 = v0[13];
  v15 = v0[12];
  v3 = v0[11];
  v4 = v0[8];
  v12 = v0[10];
  v13 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.internalError(_:), v0[3]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100037214();
  swift_allocError();
  v7 = *(v5 + 16);
  v7(v8, v4, v6);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v14(v3, v13);

  swift_allocError();
  v7(v9, v4, v6);
  swift_willThrow();

  (*(v5 + 8))(v4, v6);

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_1004AC188(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1004AC230;

  return sub_1004AB738();
}

uint64_t sub_1004AC230(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(v10, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_1004AC3C4()
{
  v2 = v0;
  v3 = type metadata accessor for DIPError.Code();
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  __chkstk_darwin(v3);
  v29 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  defaultLogger()();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = v6;
    v14 = v13;
    v25 = swift_slowAlloc();
    v32 = v25;
    *v14 = 136315138;
    Strong = swift_unknownObjectWeakLoadStrong();
    v27 = v1;
    v16 = *(v2 + 24);
    v30 = Strong;
    v31 = v16;
    sub_100007224(&unk_100845AC0, &unk_1006E5FF8);
    v24 = v12;
    v17 = Optional.debugDescription.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    v20 = sub_100141FE4(v17, v19, &v32);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v24, "Checking connection %s", v14, 0xCu);
    sub_10000BB78(v25);

    (*(v7 + 8))(v10, v26);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v21 = *(v2 + 24);
    swift_getObjectType();
    if ((dispatch thunk of NSXPCConnectionProtocol.isEntitled(_:)() & 1) == 0)
    {
      (*(v28 + 104))(v29, enum case for DIPError.Code.missingEntitlement(_:), v3);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v28 + 104))(v29, enum case for DIPError.Code.missingEntitlement(_:), v3);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }
}

uint64_t sub_1004AC858()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100027B9C;

  return sub_1004AC188(v2, v3);
}

uint64_t sub_1004AC908()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1004AC948()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1004AB67C(v2, v3, v4);
}

uint64_t sub_1004AC9FC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_1004AABA4(v2, v3);
}

NSObject *sub_1004ACAC0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  machServiceIdentityProofingXPC.getter();
  v6 = objc_allocWithZone(NSXPCListener);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 initWithMachServiceName:v7];

  *&v0[OBJC_IVAR____TtC8coreidvd24IdentityProofingListener_xpcListener] = v8;
  v9 = type metadata accessor for IdentityProofingListener();
  v19.receiver = v0;
  v19.super_class = v9;
  v10 = objc_msgSendSuper2(&v19, "init");
  v11 = OBJC_IVAR____TtC8coreidvd24IdentityProofingListener_xpcListener;
  v12 = *&v10[OBJC_IVAR____TtC8coreidvd24IdentityProofingListener_xpcListener];
  v13 = v10;
  [v12 setDelegate:v13];
  [*&v10[v11] resume];
  defaultLogger()();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Identity Proofing XPC listener has started", v16, 2u);

    v17 = v13;
  }

  else
  {
    v17 = v14;
    v14 = v13;
  }

  (*(v2 + 8))(v5, v1);
  return v13;
}

id sub_1004ACCEC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Identity Proofing XPC listener is tearing down", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  [*&v1[OBJC_IVAR____TtC8coreidvd24IdentityProofingListener_xpcListener] invalidate];
  v10 = type metadata accessor for IdentityProofingListener();
  v12.receiver = v1;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, "dealloc");
}

uint64_t sub_1004ACEB0(const char *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 2u);
  }

  return (*(v3 + 8))(v6, v2);
}

void sub_1004AD070()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v28 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v29 = *(v5 - 8);
  v6 = *(v29 + 64);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v26 = v1;
    v12 = v11;
    v25 = swift_slowAlloc();
    v31 = v25;
    *v12 = 136315138;
    Strong = swift_unknownObjectWeakLoadStrong();
    v27 = v0;
    v14 = Strong;
    v30 = Strong;
    sub_100007224(&unk_100845850, &qword_1006E5A50);
    v15 = Optional.debugDescription.getter();
    v24 = v5;
    v16 = v2;
    v18 = v17;

    v19 = sub_100141FE4(v15, v18, &v31);
    v2 = v16;

    *(v12 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "IdentityProofingSessionProxy Checking connection %s", v12, 0xCu);
    sub_10000BB78(v25);

    v1 = v26;

    (*(v29 + 8))(v8, v24);
  }

  else
  {

    (*(v29 + 8))(v8, v5);
  }

  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    v22._countAndFlagsBits = 0xD000000000000024;
    v22._object = 0x800000010071A660;
    if (!NSXPCConnection.isEntitled(_:)(v22))
    {
      (*(v2 + 104))(v28, enum case for DIPError.Code.missingEntitlement(_:), v1);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }

  else
  {
    (*(v2 + 104))(v28, enum case for DIPError.Code.missingEntitlement(_:), v1);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }
}

uint64_t sub_1004AD4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[17] = v6;
  v7 = *(v6 - 8);
  v5[18] = v7;
  v8 = *(v7 + 64) + 15;
  v5[19] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v5[20] = v9;
  v10 = *(v9 - 8);
  v5[21] = v10;
  v11 = *(v10 + 64) + 15;
  v5[22] = swift_task_alloc();
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v5[23] = v12;
  v13 = *(v12 - 8);
  v5[24] = v13;
  v14 = *(v13 + 64) + 15;
  v5[25] = swift_task_alloc();

  return _swift_task_switch(sub_1004AD67C, 0, 0);
}

uint64_t sub_1004AD67C()
{
  v1 = v0[16];
  sub_1004AD070();
  if (qword_1008824A8)
  {
    v28 = *(qword_1008824A8 + 152);
    v2 = v28;
  }

  else
  {
    v28 = 0;
  }

  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  v6 = type metadata accessor for IdentityProofingActionNotificationFlow();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  sub_10017ABC8();
  (*(v4 + 104))(v3, enum case for DispatchQoS.QoSClass.default(_:), v5);
  v8 = static OS_dispatch_queue.global(qos:)();
  (*(v4 + 8))(v3, v5);
  v0[5] = v6;
  v0[6] = &off_10080ADD0;
  v0[2] = v7;
  type metadata accessor for IdentityProofingCleanupProvider();
  v9 = swift_allocObject();
  v10 = sub_10001F370((v0 + 2), v6);
  v11 = *(v6 - 8);
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v14 = *(v11 + 16);
  v14(v13, v10, v6);
  v29 = sub_1004AE4BC(v28, *v13, v8, v9);
  v0[26] = v29;
  sub_10000BB78(v0 + 2);

  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v0[10] = v6;
  v0[11] = &off_10080ADD0;
  v0[7] = v15;
  type metadata accessor for IdentityProofingActionNotificationProvider();
  v16 = swift_allocObject();
  v0[27] = v16;
  v17 = sub_10001F370((v0 + 7), v6);
  v18 = swift_task_alloc();
  v14(v18, v17, v6);
  v19 = *v18;
  v16[5] = v6;
  v16[6] = &off_10080ADD0;
  v16[2] = v19;
  type metadata accessor for IdentityProofingDatabaseProvider();
  v20 = swift_allocObject();
  v16[8] = 0;
  v16[9] = v20;
  v16[7] = 0;
  sub_10000BB78(v0 + 7);

  type metadata accessor for IdentityProofingCancellationProvider();
  v21 = swift_allocObject();
  v0[28] = v21;
  *(v21 + 16) = v29;
  *(v21 + 24) = v16;

  v22 = swift_task_alloc();
  v0[29] = v22;
  *v22 = v0;
  v22[1] = sub_1004ADBC8;
  v23 = v0[14];
  v24 = v0[15];
  v26 = v0[12];
  v25 = v0[13];

  return sub_100285A38(v26, v25, v23, v24);
}

uint64_t sub_1004ADBC8()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_1004ADD84;
  }

  else
  {
    v3 = sub_1004ADCDC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004ADCDC()
{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[22];
  v6 = v0[19];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1004ADD84()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];

  v4 = v0[30];
  v5 = v0[22];
  defaultLogger()();
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "IdentityProofingSessionProxy failed to cancel proofing session: %@", v8, 0xCu);
    sub_1004385F4(v9);
  }

  v19 = v0[25];
  v12 = v0[21];
  v11 = v0[22];
  v13 = v0[19];
  v14 = v0[20];
  v15 = v0[17];
  v16 = v0[18];

  (*(v12 + 8))(v11, v14);
  (*(v16 + 104))(v13, enum case for DIPError.Code.internalError(_:), v15);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_1004AE194(int a1, int a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v4[4] = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v4[5] = v9;

  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_1004AE290;

  return sub_1004AD4FC(v5, v7, v8, v10);
}

uint64_t sub_1004AE290()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 16);
  v9 = *v1;

  v10 = *(v3 + 24);
  if (v2)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_1004AE458()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1004AE4BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = type metadata accessor for IdentityProofingActionNotificationFlow();
  v12 = &off_10080ADD0;
  *&v10 = a2;
  swift_unknownObjectWeakInit();
  if (!a1)
  {
    if (qword_1008824A8)
    {
      a1 = *(qword_1008824A8 + 152);
      v8 = a1;
    }

    else
    {
      a1 = 0;
    }
  }

  swift_unknownObjectWeakAssign();

  sub_10001F358(&v10, a4 + 24);
  *(a4 + 64) = a3;
  return a4;
}

uint64_t sub_1004AE560()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1004AE5B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100027B9C;

  return sub_1004AE194(v2, v3, v5, v4);
}

uint64_t sub_1004AE674()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Creating IdentityProofingSessionProxy", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  swift_unknownObjectWeakAssign();
  result = os_transaction_create();
  if (result)
  {
    *(v1 + 24) = result;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004AE7EC(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = [v7 processIdentifier];

    _os_log_impl(&_mh_execute_header, v8, v9, "IdentityProofingListener connection received from %d", v10, 8u);
  }

  else
  {

    v8 = v7;
  }

  (*(v3 + 8))(v6, v2);
  type metadata accessor for DIIdentityProofingXPCInterface();
  v11 = static DIIdentityProofingXPCInterface.interface()();
  [v7 setExportedInterface:v11];

  type metadata accessor for IdentityProofingSessionProxy();
  swift_allocObject();
  v12 = v7;
  v13 = sub_1004AE674();

  [v12 setExportedObject:v13];

  v21 = sub_1004ACE98;
  v22 = 0;
  aBlock = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_100503A7C;
  v20 = &unk_100813A50;
  v14 = _Block_copy(&aBlock);
  [v12 setInvalidationHandler:v14];
  _Block_release(v14);
  v21 = sub_1004ACEA4;
  v22 = 0;
  aBlock = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_100503A7C;
  v20 = &unk_100813A78;
  v15 = _Block_copy(&aBlock);
  [v12 setInterruptionHandler:v15];
  _Block_release(v15);
  [v12 resume];
  return 1;
}

uint64_t sub_1004AEAE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

NSObject *sub_1004AEB04()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  machServiceIdentityProvisioningXPC.getter();
  v6 = objc_allocWithZone(NSXPCListener);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 initWithMachServiceName:v7];

  *&v0[OBJC_IVAR____TtC8coreidvd28IdentityProvisioningListener_xpcListener] = v8;
  v9 = type metadata accessor for IdentityProvisioningListener();
  v19.receiver = v0;
  v19.super_class = v9;
  v10 = objc_msgSendSuper2(&v19, "init");
  v11 = OBJC_IVAR____TtC8coreidvd28IdentityProvisioningListener_xpcListener;
  v12 = *&v10[OBJC_IVAR____TtC8coreidvd28IdentityProvisioningListener_xpcListener];
  v13 = v10;
  [v12 setDelegate:v13];
  [*&v10[v11] resume];
  defaultLogger()();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Identity Provisioning XPC listener has started", v16, 2u);

    v17 = v13;
  }

  else
  {
    v17 = v14;
    v14 = v13;
  }

  (*(v2 + 8))(v5, v1);
  return v13;
}

id sub_1004AED30()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Identity Provisioning XPC listener is tearing down", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  [*&v1[OBJC_IVAR____TtC8coreidvd28IdentityProvisioningListener_xpcListener] invalidate];
  v10 = type metadata accessor for IdentityProvisioningListener();
  v12.receiver = v1;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, "dealloc");
}

uint64_t sub_1004AEEF4(const char *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 2u);
  }

  return (*(v3 + 8))(v6, v2);
}

void sub_1004AF0B4()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v28 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v29 = *(v5 - 8);
  v6 = *(v29 + 64);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v26 = v1;
    v12 = v11;
    v25 = swift_slowAlloc();
    v31 = v25;
    *v12 = 136315138;
    Strong = swift_unknownObjectWeakLoadStrong();
    v27 = v0;
    v14 = Strong;
    v30 = Strong;
    sub_100007224(&unk_100845850, &qword_1006E5A50);
    v15 = Optional.debugDescription.getter();
    v24 = v5;
    v16 = v2;
    v18 = v17;

    v19 = sub_100141FE4(v15, v18, &v31);
    v2 = v16;

    *(v12 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "Checking connection %s", v12, 0xCu);
    sub_10000BB78(v25);

    v1 = v26;

    (*(v29 + 8))(v8, v24);
  }

  else
  {

    (*(v29 + 8))(v8, v5);
  }

  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    v22._countAndFlagsBits = 0xD000000000000028;
    v22._object = 0x800000010071A7F0;
    if (!NSXPCConnection.isEntitled(_:)(v22))
    {
      (*(v2 + 104))(v28, enum case for DIPError.Code.missingEntitlement(_:), v1);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }

  else
  {
    (*(v2 + 104))(v28, enum case for DIPError.Code.missingEntitlement(_:), v1);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }
}

uint64_t sub_1004AF6D4(int a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v4[4] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4[5] = v6;
  if (a2)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v4[6] = v7;
  v4[7] = v8;

  return _swift_task_switch(sub_1004AF78C, 0, 0);
}

uint64_t sub_1004AF78C()
{
  v1 = v0[2];
  sub_1004AF0B4();
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1004AF8E0;
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v5 = v0[5];

  return sub_1002F245C(v6, v5, v3, v4);
}

uint64_t sub_1004AF8E0(void *a1)
{
  v4 = *(*v2 + 64);
  v5 = *(*v2 + 40);
  v6 = *v2;
  v6[9] = v1;

  if (v1)
  {
    v7 = v6[7];

    return _swift_task_switch(sub_1004AFA80, 0, 0);
  }

  else
  {
    v8 = v6[7];
    v9 = v6[2];
    v10 = v6[3];

    (v10)[2](v10, a1, 0);
    _Block_release(v10);

    v11 = v6[1];

    return v11();
  }
}

uint64_t sub_1004AFA80()
{
  v1 = v0[2];

  v2 = v0[9];
  v3 = v0[3];
  v4 = _convertErrorToNSError(_:)();

  (v3)[2](v3, 0, v4);

  _Block_release(v3);
  v5 = v0[1];

  return v5();
}

uint64_t sub_1004AFB28()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1004AFB94()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1004AFBE4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100027B9C;

  return sub_1004AF6D4(v2, v3, v5, v4);
}

uint64_t sub_1004AFCA8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Creating IdentityProvisioningSessionProxy", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  swift_unknownObjectWeakAssign();
  result = os_transaction_create();
  if (result)
  {
    *(v1 + 24) = result;
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    type metadata accessor for IdentityProvisioningManager();
    memset(v11, 0, sizeof(v11));
    v12 = 0;
    swift_allocObject();
    *(v1 + 32) = sub_1002EA490(v13, v11, 0, 0);
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004AFE6C(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = [v7 processIdentifier];

    _os_log_impl(&_mh_execute_header, v8, v9, "IdentityProvisioningListener connection received from %d", v10, 8u);
  }

  else
  {

    v8 = v7;
  }

  (*(v3 + 8))(v6, v2);
  type metadata accessor for DIIdentityProvisioningXPCInterface();
  v11 = static DIIdentityProvisioningXPCInterface.interface()();
  [v7 setExportedInterface:v11];

  type metadata accessor for IdentityProvisioningSessionProxy();
  swift_allocObject();
  v12 = v7;
  v13 = sub_1004AFCA8();

  [v12 setExportedObject:v13];

  v21 = sub_1004AEEDC;
  v22 = 0;
  aBlock = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_100503A7C;
  v20 = &unk_100813B18;
  v14 = _Block_copy(&aBlock);
  [v12 setInvalidationHandler:v14];
  _Block_release(v14);
  v21 = sub_1004AEEE8;
  v22 = 0;
  aBlock = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_100503A7C;
  v20 = &unk_100813B40;
  v15 = _Block_copy(&aBlock);
  [v12 setInterruptionHandler:v15];
  _Block_release(v15);
  [v12 resume];
  return 1;
}

uint64_t sub_1004B0160(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1004B0184(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Setting up IdentityProvisioningStreamListener", v15, 2u);
  }

  (*(v9 + 8))(v12, v8);
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  aBlock[4] = sub_1004B099C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003E854C;
  aBlock[3] = &unk_100813B90;
  v17 = _Block_copy(aBlock);

  v18 = String.utf8CString.getter();
  xpc_set_event_stream_handler((v18 + 32), a1, v17);

  _Block_release(v17);
}

uint64_t sub_1004B03A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a3;
  v61 = a4;
  v59 = a2;
  v5 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v58 = &v56 - v7;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v57 = &v56 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v56 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v56 - v20;
  __chkstk_darwin(v19);
  v23 = &v56 - v22;
  defaultLogger()();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Received an event for IdentityProvisioningStreamListener", v26, 2u);
  }

  v27 = *(v9 + 8);
  v27(v23, v8);
  v28 = XPC_EVENT_KEY_NAME.getter();
  string = xpc_dictionary_get_string(a1, v28);
  if (!string)
  {
    defaultLogger()();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "provisioning event doesn't exist", v38, 2u);
    }

    v35 = v21;
    return (v27)(v35, v8);
  }

  v30 = string;
  v31 = String.utf8CString.getter();
  LODWORD(v30) = strcmp(v30, (v31 + 32));

  if (v30)
  {
    defaultLogger()();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Invalid event name. Cannot perform Post Provisioning Cleanup", v34, 2u);
    }

    v35 = v13;
    return (v27)(v35, v8);
  }

  v39 = sub_1004B0D80(a1);
  if (v40 >> 60 == 15)
  {
    defaultLogger()();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Unable to retrieve the data from the xpc event. Cannot perform Post Provisioning Cleanup", v43, 2u);
    }

    goto LABEL_19;
  }

  v44 = v39;
  v45 = v40;
  v46 = [objc_opt_self() standardUserDefaults];
  v47._countAndFlagsBits = static DaemonInternalDefaultsKeys.ignoreProvisioningCompletion.getter();
  v48 = NSUserDefaults.internalBool(forKey:)(v47);

  if (!v48)
  {
    v51 = type metadata accessor for TaskPriority();
    v52 = v58;
    (*(*(v51 - 8) + 56))(v58, 1, 1, v51);
    v53 = swift_allocObject();
    v53[2] = 0;
    v53[3] = 0;
    v53[4] = v59;
    v54 = v61;
    v53[5] = v60;
    v53[6] = v54;
    v53[7] = v44;
    v53[8] = v45;

    sub_1003E653C(0, 0, v52, &unk_1006E6160, v53);
  }

  v18 = v57;
  defaultLogger()();
  v41 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v41, v49))
  {
    sub_10000BD94(v44, v45);
LABEL_19:

    goto LABEL_20;
  }

  v50 = swift_slowAlloc();
  *v50 = 0;
  _os_log_impl(&_mh_execute_header, v41, v49, "Internal Setting to ignore provisioning completion has been enabled. Will ignore the incoming provisioning stream", v50, 2u);

  sub_10000BD94(v44, v45);
LABEL_20:
  v35 = v18;
  return (v27)(v35, v8);
}

uint64_t sub_1004B095C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1004B09A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004B09C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return _swift_task_switch(sub_1004B09E8, 0, 0);
}

uint64_t sub_1004B09E8()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  type metadata accessor for OSTransaction();
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = *(v0 + 32);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;
  v6 = _s13CoreIDVShared13OSTransactionC5namedyq_SS_q_yYaYbxYKXEtYaxYKs5ErrorRzRi__r0_lFZTu[1];
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_1004B0B14;
  v8 = *(v0 + 16);

  return __s13CoreIDVShared13OSTransactionC5namedyq_SS_q_yYaYbxYKXEtYaxYKs5ErrorRzRi__r0_lFZ(v8, 0xD00000000000001ELL, 0x800000010071A8B0, &unk_1006E6170, v4, &type metadata for Never, &type metadata for () + 8, &protocol witness table for Never);
}

uint64_t sub_1004B0B14()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  if (!v0)
  {
    v6 = *(v2 + 64);

    v7 = *(v4 + 8);

    return v7();
  }

  return result;
}

uint64_t sub_1004B0C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_1001AFE54;

  return sub_1002E52B4(a5, a6);
}

uint64_t sub_1004B0CD0(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_10034BFA0(a1, &a1[a2]);
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1004B0D80(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &length - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &length - v8;
  type = xpc_get_type(a1);
  if (type != XPC_TYPE_DICTIONARY.getter())
  {
    defaultLogger()();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Event Identity Provisioning Complete is not of type dictionary. Cannot perform Post Provisioning Cleanup", v13, 2u);
    }

    (*(v3 + 8))(v7, v2);
    return 0;
  }

  length = 0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = String.utf8CString.getter();

  data = xpc_dictionary_get_data(a1, (v15 + 32), &length);

  if (!data)
  {
    defaultLogger()();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Unable to get the receipt data for the key PKPassLibraryPendingProvisioningFinishedReceiptKey. Cannot perform Post Provisioning Cleanup", v19, 2u);
    }

    (*(v3 + 8))(v9, v2);
    return 0;
  }

  return sub_1004B0CD0(data, length);
}

uint64_t sub_1004B1004()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  sub_10000B90C(v0[7], v0[8]);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1004B1054(uint64_t a1)
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
  v11[1] = sub_100027B9C;

  return sub_1004B09C0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1004B1130(uint64_t a1)
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

  return sub_1004B0C24(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1004B1218(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_10000BA08((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    v9 = a2;
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return _swift_continuation_throwingResume(v5);
  }
}

char *sub_1004B1300(uint64_t a1)
{
  v2 = v1;
  v55 = a1;
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v53 = *(v3 - 8);
  v54 = v3;
  v4 = *(v53 + 64);
  __chkstk_darwin(v3);
  v52 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = *(v50 + 64);
  __chkstk_darwin(v6);
  v49 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionTimeout] = 0x403E000000000000;
  v18 = OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_rangingSessionID;
  v19 = type metadata accessor for UUID();
  (*(*(v19 - 8) + 56))(&v2[v18], 1, 1, v19);
  defaultLogger()();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "IdentityWatchSessionManagementListener init called", v22, 2u);
  }

  (*(v14 + 8))(v17, v13);
  if (qword_100832C18 != -1)
  {
    swift_once();
  }

  v23 = *(qword_100882220 + 16);
  *&v2[OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_biometricStore] = v23;
  sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
  v24 = v23;
  static DispatchQoS.unspecified.getter();
  v60[0] = _swiftEmptyArrayStorage;
  sub_1004CF2E4(&qword_1008465A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100007224(&unk_1008458B0, &qword_1006BF8A0);
  sub_10031ABF4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v50 + 104))(v49, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v51);
  v25 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v2[OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_rangingQueue] = v25;
  v26 = [objc_allocWithZone(SFAuthenticationManager) initWithQueue:v25];
  *&v2[OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_rangingManager] = v26;
  *&v2[OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_deviceLockStateMonitor] = [objc_allocWithZone(type metadata accessor for DIPLockStateMonitor()) init];
  *&v2[OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService] = [objc_allocWithZone(type metadata accessor for DIPWatch()) init];
  v27 = type metadata accessor for IdentityProofingActionNotificationFlow();
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v29 = v52;
  v30 = v53;
  v31 = v54;
  (*(v53 + 104))(v52, enum case for DispatchQoS.QoSClass.default(_:), v54);
  v32 = static OS_dispatch_queue.global(qos:)();
  (*(v30 + 8))(v29, v31);
  v60[3] = v27;
  v60[4] = &off_10080ADD0;
  v60[0] = v28;
  type metadata accessor for IdentityProofingCleanupProvider();
  v33 = swift_allocObject();
  v34 = sub_10001F370(v60, v27);
  v35 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v34);
  v37 = (&v49 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v38 + 16))(v37);
  v39 = *v37;
  v58 = v27;
  v59 = &off_10080ADD0;
  *&v57 = v39;
  swift_unknownObjectWeakInit();
  if (qword_1008824A8)
  {
    v40 = *(qword_1008824A8 + 152);
  }

  else
  {
    v40 = 0;
  }

  swift_unknownObjectWeakAssign();

  sub_10001F358(&v57, v33 + 24);
  *(v33 + 64) = v32;
  sub_10000BB78(v60);
  *&v2[OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_proofingCleanUpProvider] = v33;
  v41 = v55;
  sub_10026C540(v55, &v2[OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_localizationHelper]);
  v42 = type metadata accessor for IdentityWatchSessionManagementListener();
  v56.receiver = v2;
  v56.super_class = v42;
  v43 = objc_msgSendSuper2(&v56, "init");
  v44 = *&v43[OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_rangingManager];
  v45 = v43;
  [v44 setDelegate:v45];
  sub_10026C59C(v41);
  v46 = *&v45[OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_deviceLockStateMonitor];
  swift_unknownObjectWeakAssign();
  *(*&v45[OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService] + OBJC_IVAR____TtC8coreidvd8DIPWatch_delegate + 8) = &off_100813C60;
  swift_unknownObjectWeakAssign();
  v47 = *&v45[OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_proofingCleanUpProvider];
  swift_unknownObjectWeakAssign();

  return v45;
}

uint64_t sub_1004B1A80()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1004B1B1C;

  return sub_1006738C8();
}

uint64_t sub_1004B1B1C(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_1004B1C1C, 0, 0);
}

uint64_t sub_1004B1C1C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = [*(v0 + 32) deviceID];

    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v0 + 8);

  return v5(v1, v4);
}

uint64_t sub_1004B1CE8()
{
  v1 = *(*(v0 + 152) + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService);
  v2 = swift_task_alloc();
  *(v0 + 160) = v2;
  *v2 = v0;
  v2[1] = sub_1004B1D84;

  return sub_1006738C8();
}

uint64_t sub_1004B1D84(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = a1;

  return _swift_task_switch(sub_1004B1E84, 0, 0);
}

uint64_t sub_1004B1E84()
{
  v1 = v0[21];
  if (v1)
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1004B1FE0;
    v2 = swift_continuation_init();
    v0[17] = sub_100007224(&unk_10084A490, &qword_1006DC480);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10067FE58;
    v0[13] = &unk_100814468;
    v0[14] = v2;
    [v1 provisionedCredentialCountForType:1 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v3 = v0[1];

    return v3(0, 1);
  }
}

uint64_t sub_1004B1FE0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1004B2164;
  }

  else
  {
    v3 = sub_1004B20F0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004B20F0()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 176) != 0;
  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_1004B2164()
{
  v1 = *(v0 + 176);
  swift_willThrow();

  v2 = *(v0 + 176) != 0;
  v3 = *(v0 + 8);

  return v3(0, v2);
}

void sub_1004B21F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v37 - v13;
  v15 = sub_10057A388(2, 0, 1);
  if (!v3)
  {
    v16 = v15;
    v41 = a1;
    v42 = a2;
    v43 = a3;
    if (v15)
    {
      v40 = v7;
      v37 = 0;
      v17 = v15 & 0xFFFFFFFFFFFFFF8;
      if (v15 >> 62)
      {
        goto LABEL_32;
      }

      for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v38 = v17;
        v17 = 0;
        v44 = v16 & 0xC000000000000001;
        v39 = (v8 + 8);
        while (1)
        {
          if (v44)
          {
            v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v17 >= *(v38 + 16))
            {
              goto LABEL_31;
            }

            v19 = *(v16 + 8 * v17 + 32);
          }

          v20 = v19;
          v8 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          v21 = [v19 pairingID];
          if (!v21)
          {
            goto LABEL_6;
          }

          v22 = v21;
          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;

          if (v23 == v42 && v25 == v43)
          {
          }

          else
          {
            v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v27 & 1) == 0)
            {
LABEL_6:

              goto LABEL_7;
            }
          }

          v28 = *(v41 + 16);
          [v28 deleteObject:{v20, v37}];
          v45 = 0;
          if (![v28 save:&v45])
          {
            v36 = v45;

            _convertNSErrorToError(_:)();

            swift_willThrow();
            return;
          }

          v29 = v45;
          defaultLogger()();
          v30 = Logger.logObject.getter();
          v31 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            *v32 = 0;
            _os_log_impl(&_mh_execute_header, v30, v31, "Successfully deleted proofing session for watch", v32, 2u);
          }

          else
          {
          }

          (*v39)(v12, v40);
LABEL_7:
          ++v17;
          if (v8 == i)
          {
            goto LABEL_33;
          }
        }

        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        ;
      }

LABEL_33:
    }

    else
    {
      defaultLogger()();
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "Error occurred in retrieving proofing sessions for watch", v35, 2u);
      }

      (*(v8 + 8))(v14, v7);
    }
  }
}

uint64_t sub_1004B2600(uint64_t a1, uint64_t a2)
{
  v3[42] = a2;
  v3[43] = v2;
  v3[41] = a1;
  v4 = type metadata accessor for Logger();
  v3[44] = v4;
  v5 = *(v4 - 8);
  v3[45] = v5;
  v6 = *(v5 + 64) + 15;
  v3[46] = swift_task_alloc();

  return _swift_task_switch(sub_1004B26C4, 0, 0);
}

uint64_t sub_1004B26C4()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_100031B5C(&v1[4], (v0 + 2));
  os_unfair_lock_unlock(v1 + 54);
  v2 = v0[43];
  v0[47] = v0[9];

  sub_100031918((v0 + 2));
  v0[48] = *(*(v2 + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService) + OBJC_IVAR____TtC8coreidvd8DIPWatch_currentSession);

  v3 = swift_task_alloc();
  v0[49] = v3;
  *v3 = v0;
  v3[1] = sub_1004B282C;
  v4 = v0[41];
  v5 = v0[42];

  return sub_1004C9820((v0 + 27), v4, v5);
}

uint64_t sub_1004B282C()
{
  v1 = *(*v0 + 392);
  v3 = *v0;

  return _swift_task_switch(sub_1004B2928, 0, 0);
}

uint64_t sub_1004B2928()
{
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v4 = *(v0 + 328);
  v3 = *(v0 + 336);
  v5 = swift_allocObject();
  *(v0 + 400) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(v0 + 232);
  *(v5 + 32) = *(v0 + 216);
  *(v5 + 48) = v6;
  *(v5 + 64) = *(v0 + 248);
  *(v5 + 79) = *(v0 + 263);
  *(v5 + 88) = v1;
  *(v5 + 96) = 0x403E000000000000;

  sub_10000BBC4(v0 + 216, v0 + 272, &qword_100845E10, &qword_1006DCDA8);
  v7 = *(v2 + 16);
  v8 = swift_allocObject();
  *(v0 + 408) = v8;
  *(v8 + 16) = &unk_1006E6450;
  *(v8 + 24) = v5;
  v9 = async function pointer to AsyncCoreDataContainer.write<A>(_:)[1];

  v10 = swift_task_alloc();
  *(v0 + 416) = v10;
  *v10 = v0;
  v10[1] = sub_1004B2AA8;

  return AsyncCoreDataContainer.write<A>(_:)();
}

uint64_t sub_1004B2AA8()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v8 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v4 = sub_1004B2C5C;
  }

  else
  {
    v6 = *(v2 + 400);
    v5 = *(v2 + 408);

    v4 = sub_1004B2BCC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004B2BCC()
{
  v1 = v0[47];
  v2 = v0[48];
  sub_10000BE18((v0 + 27), &qword_100845E10, &qword_1006DCDA8);

  v3 = v0[46];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1004B2C5C()
{
  v1 = v0[53];
  v2 = v0[50];
  v3 = v0[51];
  v5 = v0[47];
  v4 = v0[48];
  v7 = v0[45];
  v6 = v0[46];
  v8 = v0[44];

  sub_10000BE18((v0 + 27), &qword_100845E10, &qword_1006DCDA8);

  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v7 + 8))(v6, v8);
  v9 = v0[46];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1004B2D6C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 256) = a1;
  *(v7 + 240) = a6;
  *(v7 + 248) = a7;
  *(v7 + 224) = a4;
  *(v7 + 232) = a5;
  *(v7 + 216) = a3;
  v8 = *(a6 + 16);
  *(v7 + 264) = *a6;
  *(v7 + 280) = v8;
  *(v7 + 296) = *(a6 + 32);
  v9 = *(a6 + 48);
  *(v7 + 70) = *(a6 + 50);
  *(v7 + 68) = v9;
  v10 = type metadata accessor for DIPError.Code();
  *(v7 + 312) = v10;
  v11 = *(v10 - 8);
  *(v7 + 320) = v11;
  v12 = *(v11 + 64) + 15;
  *(v7 + 328) = swift_task_alloc();
  v13 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v7 + 336) = v13;
  v14 = *(v13 - 8);
  *(v7 + 344) = v14;
  v15 = *(v14 + 64) + 15;
  *(v7 + 352) = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  *(v7 + 360) = v16;
  v17 = *(v16 - 8);
  *(v7 + 368) = v17;
  v18 = *(v17 + 64) + 15;
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = swift_task_alloc();
  *(v7 + 392) = swift_task_alloc();

  return _swift_task_switch(sub_1004B2F2C, 0, 0);
}

uint64_t sub_1004B2F2C()
{
  v48 = v0;
  v1 = *(v0 + 392);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  defaultLogger()();

  sub_10000BBC4(v2, v0 + 16, &qword_100845E10, &qword_1006DCDA8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  sub_10000BE18(v2, &qword_100845E10, &qword_1006DCDA8);
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 392);
  v9 = *(v0 + 360);
  v8 = *(v0 + 368);
  if (v6)
  {
    v10 = *(v0 + 232);
    v11 = *(v0 + 240);
    v12 = *(v0 + 224);
    v45 = *(v0 + 392);
    v13 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_100141FE4(v12, v10, &v47);
    *(v13 + 12) = 2080;
    if (*(v11 + 40))
    {
      v14 = 0x746E6573657270;
    }

    else
    {
      v14 = 7104878;
    }

    if (*(v11 + 40))
    {
      v15 = 0xE700000000000000;
    }

    else
    {
      v15 = 0xE300000000000000;
    }

    v16 = sub_100141FE4(v14, v15, &v47);

    *(v13 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Trying to validate prearm trust for watch with pairingID: %s, prearmtrust is %s", v13, 0x16u);
    swift_arrayDestroy();

    v17 = *(v8 + 8);
    v17(v45, v9);
  }

  else
  {

    v17 = *(v8 + 8);
    v17(v7, v9);
  }

  *(v0 + 400) = v17;
  v18 = *(v0 + 240);
  if (*(v18 + 40) && (*(v18 + 50) & 1) != 0)
  {
    v19 = *(v0 + 384);
    v20 = *(v0 + 68);
    v21 = *(v0 + 70);
    v22 = *(v0 + 232);
    v23 = *(v0 + 280);
    *(v0 + 72) = *(v0 + 264);
    *(v0 + 88) = v23;
    *(v0 + 104) = *(v0 + 296);
    *(v0 + 122) = v21;
    *(v0 + 120) = v20;
    sub_1004CDE10(v0 + 72, v0 + 128);
    defaultLogger()();

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 384);
    v29 = *(v0 + 360);
    v28 = *(v0 + 368);
    if (v26)
    {
      v46 = *(v0 + 384);
      v31 = *(v0 + 224);
      v30 = *(v0 + 232);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v47 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_100141FE4(v31, v30, &v47);
      _os_log_impl(&_mh_execute_header, v24, v25, "Trying to delete acl for watch with pairingID: %s", v32, 0xCu);
      sub_10000BB78(v33);

      v34 = v46;
    }

    else
    {

      v34 = v27;
    }

    v17(v34, v29);
    v42 = swift_task_alloc();
    *(v0 + 408) = v42;
    *v42 = v0;
    v42[1] = sub_1004B3358;
    v43 = *(v0 + 256);
    v44 = *(v0 + 248);

    return sub_100672D6C(v43);
  }

  else
  {
    v36 = *(v0 + 384);
    v35 = *(v0 + 392);
    v37 = *(v0 + 376);
    v38 = *(v0 + 352);
    v39 = *(v0 + 328);

    v40 = *(v0 + 8);

    return v40();
  }
}

uint64_t sub_1004B3358()
{
  v2 = *(*v1 + 408);
  v5 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v3 = sub_1004B3BA8;
  }

  else
  {
    v3 = sub_1004B346C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004B346C()
{
  v31 = v0;
  v1 = v0[47];
  v2 = v0[29];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[50];
  v8 = v0[46];
  v7 = v0[47];
  v9 = v0[45];
  if (v5)
  {
    v28 = v0[50];
    v11 = v0[28];
    v10 = v0[29];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100141FE4(v11, v10, &v30);
    _os_log_impl(&_mh_execute_header, v3, v4, "Successfully deleted acl for watch with pairingID: %s", v12, 0xCu);
    sub_10000BB78(v13);

    v28(v7, v9);
  }

  else
  {

    v6(v7, v9);
  }

  v14 = v0[43];
  v29 = v0[44];
  v15 = v0[42];
  v16 = v0[28];
  v17 = v0[29];
  v18 = v0[27];
  v19 = swift_allocObject();
  v0[53] = v19;
  v19[2] = v18;
  v19[3] = v16;
  v19[4] = v17;
  v20 = *(v18 + 16);
  v21 = swift_allocObject();
  v0[54] = v21;
  *(v21 + 16) = sub_1004CEDDC;
  *(v21 + 24) = v19;
  v22 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v23 = *(v14 + 104);

  v23(v29, v22, v15);
  v24 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v25 = swift_task_alloc();
  v0[55] = v25;
  *v25 = v0;
  v25[1] = sub_1004B3718;
  v26 = v0[44];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v25, v26, sub_1004CF3BC, v21, &type metadata for () + 8);
}

uint64_t sub_1004B3718()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v4 = *v1;
  v2[56] = v0;

  v5 = v2[54];
  if (v0)
  {
    (*(v2[43] + 8))(v2[44], v2[42]);

    v6 = sub_1004B3954;
  }

  else
  {
    v7 = v2[53];
    v9 = v2[43];
    v8 = v2[44];
    v10 = v2[42];

    (*(v9 + 8))(v8, v10);
    v6 = sub_1004B38A4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1004B38A4()
{
  sub_10000BE18(v0[30], &qword_100845E10, &qword_1006DCDA8);
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[47];
  v4 = v0[44];
  v5 = v0[41];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1004B3954()
{
  v1 = v0[53];

  v2 = v0[56];
  v14 = v0[49];
  v15 = v0[48];
  v16 = v0[47];
  v17 = v0[44];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[39];
  v13 = v0[30];
  _StringGuts.grow(_:)(44);

  swift_getErrorValue();
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[25];
  v9._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 46;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  (*(v4 + 104))(v3, enum case for DIPError.Code.unableToDeleteACLInWatch(_:), v5);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_10000BE18(v13, &qword_100845E10, &qword_1006DCDA8);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1004B3BA8()
{
  v1 = v0[52];
  v13 = v0[49];
  v14 = v0[48];
  v15 = v0[47];
  v16 = v0[44];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[39];
  v12 = v0[30];
  _StringGuts.grow(_:)(44);

  swift_getErrorValue();
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[25];
  v8._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 46;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  (*(v3 + 104))(v2, enum case for DIPError.Code.unableToDeleteACLInWatch(_:), v4);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_10000BE18(v12, &qword_100845E10, &qword_1006DCDA8);

  v10 = v0[1];

  return v10();
}

void sub_1004B3DF4(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10057ADE4(a2, a3);
  if (!v3)
  {
    if (v12)
    {
      v13 = v12;
      [*(a1 + 16) deleteObject:v12];
      sub_1005783D4();
    }

    v18[1] = 0;
    defaultLogger()();

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_100141FE4(a2, a3, &v19);
      _os_log_impl(&_mh_execute_header, v14, v15, "Successfully deleted prearm trust with watch with pairingID: %s", v16, 0xCu);
      sub_10000BB78(v17);
    }

    (*(v8 + 8))(v11, v7);
  }
}

unint64_t sub_1004B4000@<X0>(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v7 = type metadata accessor for ProofingSession();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10057A388(2, 0, 1);
  if (!v3)
  {
    v13 = result;
    v44 = a2;
    v45 = a1;
    v41 = v11;
    v42 = v7;
    v14 = _swiftEmptyArrayStorage;
    if (!result)
    {
LABEL_40:
      *a3 = v14;
      return result;
    }

    v39 = 0;
    v47 = _swiftEmptyArrayStorage;
    v15 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
      goto LABEL_26;
    }

    v16 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = a3; v16; i = a3)
    {
      v17 = 0;
      v46 = v13 & 0xC000000000000001;
      v43 = v8;
      while (1)
      {
        if (v46)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v17 >= *(v15 + 16))
          {
            goto LABEL_25;
          }

          v18 = *(v13 + 8 * v17 + 32);
        }

        a3 = v18;
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        v20 = [v18 pairingID];
        if (v20)
        {
          v21 = v20;
          v22 = v13;
          v23 = v16;
          v24 = v15;
          v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v14 = v26;

          if (v25 == v45 && v14 == v44)
          {
          }

          else
          {
            v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v28 & 1) == 0)
            {

LABEL_21:
              v15 = v24;
              v16 = v23;
              v13 = v22;
              v8 = v43;
              goto LABEL_7;
            }
          }

          v14 = &v47;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v29 = v47[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          goto LABEL_21;
        }

LABEL_7:
        ++v17;
        if (v19 == v16)
        {
          v30 = v47;
          v14 = _swiftEmptyArrayStorage;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v16 = _CocoaArrayWrapper.endIndex.getter();
    }

    v30 = v14;
LABEL_28:

    v31 = v42;
    if ((v30 & 0x8000000000000000) != 0 || (v30 & 0x4000000000000000) != 0)
    {
      v32 = _CocoaArrayWrapper.endIndex.getter();
      if (v32)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v32 = *(v30 + 16);
      if (v32)
      {
LABEL_31:
        v47 = v14;
        result = sub_100173040(0, v32 & ~(v32 >> 63), 0);
        if (v32 < 0)
        {
          __break(1u);
          return result;
        }

        v33 = 0;
        v14 = v47;
        v34 = v30;
        v45 = v8 + 32;
        v46 = v30 & 0xC000000000000001;
        v35 = v41;
        do
        {
          if (v46)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v36 = *(v34 + 8 * v33 + 32);
          }

          ProofingSession.init(_:)();
          v47 = v14;
          v38 = v14[2];
          v37 = v14[3];
          if (v38 >= v37 >> 1)
          {
            sub_100173040(v37 > 1, v38 + 1, 1);
            v14 = v47;
          }

          ++v33;
          v14[2] = v38 + 1;
          (*(v8 + 32))(v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v38, v35, v31);
          v34 = v30;
        }

        while (v32 != v33);
      }
    }

    a3 = i;
    goto LABEL_40;
  }

  return result;
}

uint64_t sub_1004B4398(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = *(*(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v4 = type metadata accessor for DIPError.Code();
  v2[26] = v4;
  v5 = *(v4 - 8);
  v2[27] = v5;
  v6 = *(v5 + 64) + 15;
  v2[28] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v2[29] = v7;
  v8 = *(v7 - 8);
  v2[30] = v8;
  v9 = *(v8 + 64) + 15;
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v10 = type metadata accessor for ProofingDisplayMessage();
  v2[39] = v10;
  v11 = *(v10 - 8);
  v2[40] = v11;
  v12 = *(v11 + 64) + 15;
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v13 = *(*(sub_100007224(&unk_100845E90, &qword_1006E6440) - 8) + 64) + 15;
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v14 = type metadata accessor for ProofingSession();
  v2[45] = v14;
  v15 = *(v14 - 8);
  v2[46] = v15;
  v16 = *(v15 + 64) + 15;
  v2[47] = swift_task_alloc();

  return _swift_task_switch(sub_1004B4648, 0, 0);
}

uint64_t sub_1004B4648()
{
  v1 = *(v0 + 184);
  v2 = *(v1 + 16);
  *(v0 + 384) = v2;
  if (!v2)
  {
LABEL_21:
    v44 = *(v0 + 376);
    v45 = *(v0 + 344);
    v46 = *(v0 + 352);
    v48 = *(v0 + 328);
    v47 = *(v0 + 336);
    v50 = *(v0 + 296);
    v49 = *(v0 + 304);
    v52 = *(v0 + 280);
    v51 = *(v0 + 288);
    v53 = *(v0 + 272);
    v72 = *(v0 + 264);
    v73 = *(v0 + 256);
    v74 = *(v0 + 248);
    v75 = *(v0 + 224);
    v76 = *(v0 + 200);

    v54 = *(v0 + 8);

    return v54();
  }

  v3 = 0;
  v4 = *(v0 + 368);
  v5 = *(v4 + 80);
  *(v0 + 600) = v5;
  v6 = OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_localizationHelper;
  *(v0 + 392) = OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService;
  *(v0 + 400) = v6;
  v7 = *(v4 + 72);
  *(v0 + 408) = v7;
  v8 = *(v4 + 16);
  *(v0 + 416) = v8;
  while (1)
  {
    *(v0 + 424) = v3;
    v8(*(v0 + 376), v1 + ((v5 + 32) & ~v5) + v7 * v3, *(v0 + 360));
    *(v0 + 432) = ProofingSession.state.getter();
    *(v0 + 440) = v9;
    if (!v9)
    {
      v29 = *(v0 + 248);
      defaultLogger()();
      v19 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      v31 = os_log_type_enabled(v19, v30);
      v23 = *(v0 + 240);
      v22 = *(v0 + 248);
      v24 = *(v0 + 232);
      if (!v31)
      {
        goto LABEL_19;
      }

      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = v30;
      v27 = v19;
      v28 = "IdentityWatchSessionManagementListener failed to update proofing sessions on Watch: missing state";
      goto LABEL_18;
    }

    v10 = *(v0 + 376);
    *(v0 + 448) = ProofingSession.country.getter();
    *(v0 + 456) = v11;
    if (!v11)
    {
      v32 = *(v0 + 256);

      defaultLogger()();
      v19 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      v34 = os_log_type_enabled(v19, v33);
      v22 = *(v0 + 256);
      v24 = *(v0 + 232);
      v23 = *(v0 + 240);
      if (!v34)
      {
        goto LABEL_19;
      }

      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = v33;
      v27 = v19;
      v28 = "IdentityWatchSessionManagementListener failed to update proofing sessions on Watch: missing country";
      goto LABEL_18;
    }

    v12 = *(v0 + 376);
    ProofingSession.documentType.getter();
    if (!v13)
    {
      v35 = *(v0 + 264);

      defaultLogger()();
      v19 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      v37 = os_log_type_enabled(v19, v36);
      v22 = *(v0 + 264);
      v24 = *(v0 + 232);
      v23 = *(v0 + 240);
      if (!v37)
      {
        goto LABEL_19;
      }

      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = v36;
      v27 = v19;
      v28 = "IdentityWatchSessionManagementListener failed to update proofing sessions on Watch: missing documentType";
      goto LABEL_18;
    }

    v14 = *(v0 + 376);
    *(v0 + 464) = IdentityDocumentType.init(documentTypeString:)();
    *(v0 + 472) = ProofingSession.credentialIdentifier.getter();
    *(v0 + 480) = v15;
    if (v15)
    {
      break;
    }

    v38 = *(v0 + 272);

    defaultLogger()();
    v19 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    v40 = os_log_type_enabled(v19, v39);
    v22 = *(v0 + 272);
    v24 = *(v0 + 232);
    v23 = *(v0 + 240);
    if (!v40)
    {
      goto LABEL_19;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = v39;
    v27 = v19;
    v28 = "IdentityWatchSessionManagementListener failed to update proofing sessions on Watch: missing credentialIdentifier";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v27, v26, v28, v25, 2u);

LABEL_19:

    (*(v23 + 8))(v22, v24);
    v41 = *(v0 + 384);
    v42 = *(v0 + 424) + 1;
    (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));
    if (v42 == v41)
    {
      goto LABEL_21;
    }

    v8 = *(v0 + 416);
    v3 = *(v0 + 424) + 1;
    v7 = *(v0 + 408);
    LOBYTE(v5) = *(v0 + 600);
    v43 = *(v0 + 368);
    v1 = *(v0 + 184);
  }

  v16 = *(v0 + 376);
  ProofingSession.proofingActionStatus.getter();
  *(v0 + 488) = IdentityProofingActionStatus.init(rawValue:)();
  if (v17)
  {
    v18 = *(v0 + 280);

    defaultLogger()();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 280);
    v24 = *(v0 + 232);
    v23 = *(v0 + 240);
    if (!v21)
    {
      goto LABEL_19;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = v20;
    v27 = v19;
    v28 = "IdentityWatchSessionManagementListener failed to update proofing sessions on Watch: invalid action status";
    goto LABEL_18;
  }

  v56 = *(v0 + 376);
  v58 = *(v0 + 344);
  v57 = *(v0 + 352);
  v59 = *(v0 + 312);
  v60 = *(v0 + 320);
  v61 = ProofingSession.productIdentifier.getter();
  *(v0 + 496) = v62;
  *(v0 + 504) = v61;
  ProofingSession.proofingErrorMessage.getter();
  sub_10000BBC4(v57, v58, &unk_100845E90, &qword_1006E6440);
  if ((*(v60 + 48))(v58, 1, v59) == 1)
  {
    v63 = 0;
  }

  else
  {
    v64 = *(v0 + 336);
    v66 = *(v0 + 320);
    v65 = *(v0 + 328);
    v67 = *(v0 + 312);
    (*(v66 + 32))(v64, *(v0 + 344), v67);
    type metadata accessor for IdentityProofingPrecursorPassMessage();
    (*(v66 + 16))(v65, v64, v67);
    v63 = sub_10058CE3C(v65);
    (*(v66 + 8))(v64, v67);
  }

  *(v0 + 512) = v63;
  v68 = *(v0 + 392);
  v69 = *(v0 + 192);
  sub_10000BE18(*(v0 + 352), &unk_100845E90, &qword_1006E6440);
  v70 = *(v69 + v68);
  v71 = swift_task_alloc();
  *(v0 + 520) = v71;
  *v71 = v0;
  v71[1] = sub_1004B4C60;

  return sub_1006738C8();
}

uint64_t sub_1004B4C60(uint64_t a1)
{
  v2 = *(*v1 + 520);
  v4 = *v1;
  *(*v1 + 528) = a1;

  return _swift_task_switch(sub_1004B4D60, 0, 0);
}

uint64_t sub_1004B4D60()
{
  v86 = v0;
  if (v0[66])
  {
    v1 = v0[57];
    v2 = v0[55];
    v3 = v0[38];
    defaultLogger()();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[56];
      v6 = v0[57];
      v9 = v0[54];
      v8 = v0[55];
      v10 = v0[30];
      v79 = v0[29];
      v82 = v0[38];
      v11 = swift_slowAlloc();
      v85[0] = swift_slowAlloc();
      *v11 = 136315394;
      *(v11 + 4) = sub_100141FE4(v9, v8, v85);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_100141FE4(v7, v6, v85);
      _os_log_impl(&_mh_execute_header, v4, v5, "IdentityWatchSessionManagementListener saving initial watch proofing session for state: '%s', country: '%s'", v11, 0x16u);
      swift_arrayDestroy();

      v12 = *(v10 + 8);
      v12(v82, v79);
    }

    else
    {
      v28 = v0[38];
      v29 = v0[29];
      v30 = v0[30];

      v12 = *(v30 + 8);
      v12(v28, v29);
    }

    v0[67] = v12;
    v31 = v0[58];
    if (v31 > 3)
    {
      v32 = 0;
    }

    else
    {
      v32 = qword_1006E64A0[v31];
    }

    v0[68] = v32;
    v33 = v0[64];
    if (v33)
    {
      v34 = v0[57];
      v35 = v0[55];
      sub_10026C540(v0[24] + v0[50], (v0 + 18));
      v36 = v33;
      v37 = swift_task_alloc();
      v0[69] = v37;
      *v37 = v0;
      v37[1] = sub_1004B5614;
      v38 = v0[56];
      v39 = v0[54];

      return sub_10059DF4C(v36, v39, v35, v38, v34);
    }

    else
    {
      v0[72] = 0;
      v41 = v0[61];
      v43 = v0[56];
      v42 = v0[57];
      v44 = v0[54];
      v45 = v0[55];
      v46 = v0[25];
      String.lowercased()();
      String.lowercased()();
      v83 = sub_10058D658(v41);
      v47 = type metadata accessor for URL();
      v48 = *(v47 - 8);
      (*(v48 + 56))(v46, 1, 1, v47);
      v50 = v0[62];
      v49 = v0[63];
      v51 = v0[59];
      v52 = v0[60];
      v74 = v0[25];
      v80 = String._bridgeToObjectiveC()();

      v77 = String._bridgeToObjectiveC()();

      v53 = String._bridgeToObjectiveC()();
      v54 = String._bridgeToObjectiveC()();
      v55 = String._bridgeToObjectiveC()();
      v57 = 0;
      if ((*(v48 + 48))(v74, 1, v47) != 1)
      {
        v58 = v0[25];
        URL._bridgeToObjectiveC()(v56);
        v57 = v59;
        (*(v48 + 8))(v58, v47);
      }

      v75 = v0[66];
      v60 = [objc_allocWithZone(PKIdentityProofingConfiguration) initWithState:v80 country:v77 target:2 credentialIdentifier:v53 status:v83 productIdentifier:v54 accountKeyIdentifier:v55 idType:v0[68] learnMoreURL:v57 proofingErrorMessage:0];
      v0[73] = v60;

      v0[2] = v0;
      v0[3] = sub_1004B5D1C;
      v61 = swift_continuation_init();
      v0[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
      v0[14] = v61;
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_100429100;
      v0[13] = &unk_1008143A0;
      [v75 updateProofingConfiguration:v60 completion:v0 + 10];

      return _swift_continuation_await(v0 + 2);
    }
  }

  else
  {
    v13 = v0[64];
    v14 = v0[60];
    v15 = v0[28];
    if (v0[62])
    {
      v16 = v0[62];
    }

    (*(v0[27] + 104))(v0[28], enum case for DIPError.Code.unableToEstablishSessionWithWatch(_:), v0[26]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v17 = v0[57];
    v18 = v0[55];
    v20 = v0[46];
    v19 = v0[47];
    v21 = v0[45];
    v22 = v0[36];

    (*(v20 + 8))(v19, v21);
    defaultLogger()();
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, "IdentityWatchSessionManagementListener failed to update proofing sessions on Watch: %@", v25, 0xCu);
      sub_10000BE18(v26, &unk_100833B50, &unk_1006D8FB0);
    }

    else
    {
    }

    (*(v0[30] + 8))(v0[36], v0[29]);
    v62 = v0[47];
    v63 = v0[43];
    v64 = v0[44];
    v66 = v0[41];
    v65 = v0[42];
    v68 = v0[37];
    v67 = v0[38];
    v70 = v0[35];
    v69 = v0[36];
    v71 = v0[34];
    v73 = v0[33];
    v76 = v0[32];
    v78 = v0[31];
    v81 = v0[28];
    v84 = v0[25];

    v72 = v0[1];

    return v72();
  }
}

uint64_t sub_1004B5614(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 552);
  v6 = *v2;
  *(*v2 + 560) = v1;

  if (v1)
  {
    sub_10026C59C(v4 + 144);
    v7 = sub_1004B5A80;
  }

  else
  {
    *(v4 + 568) = a1;
    sub_10026C59C(v4 + 144);
    v7 = sub_1004B574C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1004B574C()
{
  v1 = *(v0 + 568);

  *(v0 + 576) = v1;
  v2 = *(v0 + 488);
  v4 = *(v0 + 448);
  v3 = *(v0 + 456);
  v5 = *(v0 + 432);
  v6 = *(v0 + 440);
  v7 = *(v0 + 200);
  String.lowercased()();
  String.lowercased()();
  v30 = sub_10058D658(v2);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v7, 1, 1, v8);
  if (v1)
  {
    v28 = sub_10058D9B4();
  }

  else
  {
    v28 = 0;
  }

  v11 = *(v0 + 472);
  v10 = *(v0 + 480);
  v12 = *(v0 + 200);
  if (*(v0 + 496))
  {
    v13 = *(v0 + 504);
    v14 = *(v0 + 496);
  }

  v29 = String._bridgeToObjectiveC()();

  v27 = String._bridgeToObjectiveC()();

  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  v17 = String._bridgeToObjectiveC()();
  v18 = (*(v9 + 48))(v12, 1, v8);
  v20 = 0;
  if (v18 != 1)
  {
    v21 = *(v0 + 200);
    URL._bridgeToObjectiveC()(v19);
    v20 = v22;
    (*(v9 + 8))(v21, v8);
  }

  v26 = *(v0 + 528);
  v23 = [objc_allocWithZone(PKIdentityProofingConfiguration) initWithState:v29 country:v27 target:2 credentialIdentifier:v15 status:v30 productIdentifier:v16 accountKeyIdentifier:v17 idType:*(v0 + 544) learnMoreURL:v20 proofingErrorMessage:v28];
  *(v0 + 584) = v23;

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1004B5D1C;
  v24 = swift_continuation_init();
  *(v0 + 136) = sub_100007224(&unk_100843590, &qword_1006D8B10);
  *(v0 + 112) = v24;
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100429100;
  *(v0 + 104) = &unk_1008143A0;
  [v26 updateProofingConfiguration:v23 completion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1004B5A80()
{
  v1 = v0[66];
  v2 = v0[64];
  v3 = v0[62];
  v4 = v0[60];

  v5 = v0[70];
  v6 = v0[57];
  v7 = v0[55];
  v9 = v0[46];
  v8 = v0[47];
  v10 = v0[45];
  v11 = v0[36];

  (*(v9 + 8))(v8, v10);
  defaultLogger()();
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
    _os_log_impl(&_mh_execute_header, v12, v13, "IdentityWatchSessionManagementListener failed to update proofing sessions on Watch: %@", v14, 0xCu);
    sub_10000BE18(v15, &unk_100833B50, &unk_1006D8FB0);
  }

  else
  {
  }

  (*(v0[30] + 8))(v0[36], v0[29]);
  v17 = v0[47];
  v18 = v0[43];
  v19 = v0[44];
  v21 = v0[41];
  v20 = v0[42];
  v23 = v0[37];
  v22 = v0[38];
  v25 = v0[35];
  v24 = v0[36];
  v26 = v0[34];
  v29 = v0[33];
  v30 = v0[32];
  v31 = v0[31];
  v32 = v0[28];
  v33 = v0[25];

  v27 = v0[1];

  return v27();
}

uint64_t sub_1004B5D1C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 592) = v2;
  if (v2)
  {
    v3 = sub_1004B6608;
  }

  else
  {
    v3 = sub_1004B5E2C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004B5E2C()
{
  v96 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 296);

  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 584);
  v7 = *(v0 + 576);
  v8 = *(v0 + 536);
  v9 = *(v0 + 528);
  v89 = v8;
  v91 = *(v0 + 480);
  v93 = *(v0 + 456);
  v10 = *(v0 + 440);
  if (v5)
  {
    v11 = *(v0 + 432);
    v12 = *(v0 + 240);
    if (*(v0 + 496))
    {
      v13 = *(v0 + 496);
    }

    v87 = *(v0 + 296);
    v85 = *(v0 + 232);
    v14 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_100141FE4(v11, v10, &v95);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_100141FE4(v11, v10, &v95);
    _os_log_impl(&_mh_execute_header, v3, v4, "IdentityWatchSessionManagementListener saved watch proofing session for state: '%s', country: '%s'", v14, 0x16u);
    swift_arrayDestroy();

    v89(v87, v85);
  }

  else
  {
    v15 = *(v0 + 296);
    v16 = *(v0 + 232);
    v17 = *(v0 + 240);

    v89(v15, v16);
  }

  v18 = *(v0 + 384);
  v19 = *(v0 + 424) + 1;
  (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));
  if (v19 == v18)
  {
LABEL_7:
    v20 = *(v0 + 376);
    v21 = *(v0 + 344);
    v22 = *(v0 + 352);
    v24 = *(v0 + 328);
    v23 = *(v0 + 336);
    v26 = *(v0 + 296);
    v25 = *(v0 + 304);
    v28 = *(v0 + 280);
    v27 = *(v0 + 288);
    v29 = *(v0 + 272);
    v86 = *(v0 + 264);
    v88 = *(v0 + 256);
    v90 = *(v0 + 248);
    v92 = *(v0 + 224);
    v94 = *(v0 + 200);

    v30 = *(v0 + 8);

    return v30();
  }

  while (1)
  {
    v34 = *(v0 + 416);
    v35 = *(v0 + 424) + 1;
    *(v0 + 424) = v35;
    v36 = *(v0 + 368) + 16;
    v34(*(v0 + 376), *(v0 + 184) + ((*(v0 + 600) + 32) & ~*(v0 + 600)) + *(v0 + 408) * v35, *(v0 + 360));
    *(v0 + 432) = ProofingSession.state.getter();
    *(v0 + 440) = v37;
    if (!v37)
    {
      v57 = *(v0 + 248);
      defaultLogger()();
      v47 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();
      v59 = os_log_type_enabled(v47, v58);
      v51 = *(v0 + 240);
      v50 = *(v0 + 248);
      v52 = *(v0 + 232);
      if (!v59)
      {
        goto LABEL_12;
      }

      v53 = swift_slowAlloc();
      *v53 = 0;
      v54 = v58;
      v55 = v47;
      v56 = "IdentityWatchSessionManagementListener failed to update proofing sessions on Watch: missing state";
      goto LABEL_11;
    }

    v38 = *(v0 + 376);
    *(v0 + 448) = ProofingSession.country.getter();
    *(v0 + 456) = v39;
    if (!v39)
    {
      v60 = *(v0 + 256);

      defaultLogger()();
      v47 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();
      v62 = os_log_type_enabled(v47, v61);
      v50 = *(v0 + 256);
      v52 = *(v0 + 232);
      v51 = *(v0 + 240);
      if (!v62)
      {
        goto LABEL_12;
      }

      v53 = swift_slowAlloc();
      *v53 = 0;
      v54 = v61;
      v55 = v47;
      v56 = "IdentityWatchSessionManagementListener failed to update proofing sessions on Watch: missing country";
      goto LABEL_11;
    }

    v40 = *(v0 + 376);
    ProofingSession.documentType.getter();
    if (!v41)
    {
      v63 = *(v0 + 264);

      defaultLogger()();
      v47 = Logger.logObject.getter();
      v64 = static os_log_type_t.error.getter();
      v65 = os_log_type_enabled(v47, v64);
      v50 = *(v0 + 264);
      v52 = *(v0 + 232);
      v51 = *(v0 + 240);
      if (!v65)
      {
        goto LABEL_12;
      }

      v53 = swift_slowAlloc();
      *v53 = 0;
      v54 = v64;
      v55 = v47;
      v56 = "IdentityWatchSessionManagementListener failed to update proofing sessions on Watch: missing documentType";
      goto LABEL_11;
    }

    v42 = *(v0 + 376);
    *(v0 + 464) = IdentityDocumentType.init(documentTypeString:)();
    *(v0 + 472) = ProofingSession.credentialIdentifier.getter();
    *(v0 + 480) = v43;
    if (!v43)
    {
      v66 = *(v0 + 272);

      defaultLogger()();
      v47 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();
      v68 = os_log_type_enabled(v47, v67);
      v50 = *(v0 + 272);
      v52 = *(v0 + 232);
      v51 = *(v0 + 240);
      if (!v68)
      {
        goto LABEL_12;
      }

      v53 = swift_slowAlloc();
      *v53 = 0;
      v54 = v67;
      v55 = v47;
      v56 = "IdentityWatchSessionManagementListener failed to update proofing sessions on Watch: missing credentialIdentifier";
      goto LABEL_11;
    }

    v44 = *(v0 + 376);
    ProofingSession.proofingActionStatus.getter();
    *(v0 + 488) = IdentityProofingActionStatus.init(rawValue:)();
    if ((v45 & 1) == 0)
    {
      break;
    }

    v46 = *(v0 + 280);

    defaultLogger()();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    v49 = os_log_type_enabled(v47, v48);
    v50 = *(v0 + 280);
    v52 = *(v0 + 232);
    v51 = *(v0 + 240);
    if (!v49)
    {
      goto LABEL_12;
    }

    v53 = swift_slowAlloc();
    *v53 = 0;
    v54 = v48;
    v55 = v47;
    v56 = "IdentityWatchSessionManagementListener failed to update proofing sessions on Watch: invalid action status";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v55, v54, v56, v53, 2u);

LABEL_12:

    (*(v51 + 8))(v50, v52);
    v32 = *(v0 + 384);
    v33 = *(v0 + 424) + 1;
    (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));
    if (v33 == v32)
    {
      goto LABEL_7;
    }
  }

  v69 = *(v0 + 376);
  v71 = *(v0 + 344);
  v70 = *(v0 + 352);
  v72 = *(v0 + 312);
  v73 = *(v0 + 320);
  v74 = ProofingSession.productIdentifier.getter();
  *(v0 + 496) = v75;
  *(v0 + 504) = v74;
  ProofingSession.proofingErrorMessage.getter();
  sub_10000BBC4(v70, v71, &unk_100845E90, &qword_1006E6440);
  if ((*(v73 + 48))(v71, 1, v72) == 1)
  {
    v76 = 0;
  }

  else
  {
    v77 = *(v0 + 336);
    v79 = *(v0 + 320);
    v78 = *(v0 + 328);
    v80 = *(v0 + 312);
    (*(v79 + 32))(v77, *(v0 + 344), v80);
    type metadata accessor for IdentityProofingPrecursorPassMessage();
    (*(v79 + 16))(v78, v77, v80);
    v76 = sub_10058CE3C(v78);
    (*(v79 + 8))(v77, v80);
  }

  *(v0 + 512) = v76;
  v81 = *(v0 + 392);
  v82 = *(v0 + 192);
  sub_10000BE18(*(v0 + 352), &unk_100845E90, &qword_1006E6440);
  v83 = *(v82 + v81);
  v84 = swift_task_alloc();
  *(v0 + 520) = v84;
  *v84 = v0;
  v84[1] = sub_1004B4C60;

  return sub_1006738C8();
}

uint64_t sub_1004B6608()
{
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[66];
  v5 = v0[64];
  v6 = v0[60];
  if (v0[62])
  {
    v7 = v0[62];
  }

  swift_willThrow();

  v8 = v0[74];
  v9 = v0[57];
  v10 = v0[55];
  v12 = v0[46];
  v11 = v0[47];
  v13 = v0[45];
  v14 = v0[36];

  (*(v12 + 8))(v11, v13);
  defaultLogger()();
  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v19;
    *v18 = v19;
    _os_log_impl(&_mh_execute_header, v15, v16, "IdentityWatchSessionManagementListener failed to update proofing sessions on Watch: %@", v17, 0xCu);
    sub_10000BE18(v18, &unk_100833B50, &unk_1006D8FB0);
  }

  else
  {
  }

  (*(v0[30] + 8))(v0[36], v0[29]);
  v20 = v0[47];
  v21 = v0[43];
  v22 = v0[44];
  v24 = v0[41];
  v23 = v0[42];
  v26 = v0[37];
  v25 = v0[38];
  v28 = v0[35];
  v27 = v0[36];
  v29 = v0[34];
  v32 = v0[33];
  v33 = v0[32];
  v34 = v0[31];
  v35 = v0[28];
  v36 = v0[25];

  v30 = v0[1];

  return v30();
}

uint64_t sub_1004B68C0(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  v3 = type metadata accessor for Logger();
  v2[27] = v3;
  v4 = *(v3 - 8);
  v2[28] = v4;
  v5 = *(v4 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v6 = type metadata accessor for ProofingSession();
  v2[31] = v6;
  v7 = *(v6 - 8);
  v2[32] = v7;
  v8 = *(v7 + 64) + 15;
  v2[33] = swift_task_alloc();

  return _swift_task_switch(sub_1004B69E8, 0, 0);
}

uint64_t sub_1004B69E8()
{
  v61 = v0;
  v1 = *(v0 + 208);
  v2 = type metadata accessor for IdentityWatchSessionManagementListener();
  *(v0 + 16) = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = &off_10080C438;
  v3 = objc_allocWithZone(PKPaymentService);
  v4 = v1;
  v5 = [v3 init];
  v6 = sub_10001F8D4(0, &unk_1008458A0, PKPaymentService_ptr);
  *(v0 + 56) = v5;
  *(v0 + 80) = v6;
  *(v0 + 88) = &off_10080C410;
  type metadata accessor for IdentityProofingConfigProvider();
  v7 = swift_allocObject();
  v8 = type metadata accessor for IdentityProofingTextReplacementProvider();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = IdentityProofingTextReplacementProvider.init()();
  type metadata accessor for IdentityProofingDeviceMigrationManagerFactory();
  v12 = swift_allocObject();
  type metadata accessor for IdentityProofingWorkflowProvider();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = type metadata accessor for IdentityProofingUserNotificationProvider();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  *(v0 + 272) = v17;
  *(v17 + 56) = 0u;
  *(v17 + 72) = 0u;
  *(v17 + 88) = 0;
  v18 = OBJC_IVAR____TtC8coreidvd40IdentityProofingUserNotificationProvider_staticWorkflow;
  v19 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  (*(*(v19 - 8) + 56))(v17 + v18, 1, 1, v19);
  sub_100020260(v0 + 56, v17 + 16);
  sub_10000BBC4(v0 + 16, v0 + 136, &unk_100845E80, &qword_1006DAD90);
  if (!*(v0 + 160))
  {
    if (qword_1008824A8 && (v20 = *(qword_1008824A8 + 152)) != 0)
    {
      *(v0 + 120) = v2;
      *(v0 + 128) = &off_10080C438;
      *(v0 + 96) = v20;
      v21 = v20;
      sub_10000BE18(v0 + 16, &unk_100845E80, &qword_1006DAD90);
      sub_10000BB78((v0 + 56));
      if (!*(v0 + 160))
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_10000BE18(v0 + 16, &unk_100845E80, &qword_1006DAD90);
      sub_10000BB78((v0 + 56));
      *(v0 + 128) = 0;
      *(v0 + 112) = 0u;
      *(v0 + 96) = 0u;
      if (!*(v0 + 160))
      {
        goto LABEL_9;
      }
    }

    sub_10000BE18(v0 + 136, &unk_100845E80, &qword_1006DAD90);
    goto LABEL_9;
  }

  sub_10000BE18(v0 + 16, &unk_100845E80, &qword_1006DAD90);
  sub_10000BB78((v0 + 56));
  sub_10001F358((v0 + 136), v0 + 96);
LABEL_9:
  v22 = *(v0 + 200);
  swift_beginAccess();
  sub_1000B2764(v0 + 96, v17 + 56, &unk_100845E80, &qword_1006DAD90);
  swift_endAccess();
  *(v17 + 96) = v7;
  *(v17 + 104) = v11;
  *(v17 + 112) = v13;
  v23 = *(v22 + 16);
  *(v0 + 280) = v23;
  if (!v23)
  {
LABEL_19:

    v44 = *(v0 + 264);
    v45 = *(v0 + 232);
    v46 = *(v0 + 240);

    v47 = *(v0 + 8);

    return v47();
  }

  v24 = 0;
  v25 = *(v0 + 256);
  *(v0 + 328) = *(v25 + 80);
  *(v0 + 288) = *(v25 + 72);
  *(v0 + 296) = *(v25 + 16);
  while (1)
  {
    *(v0 + 304) = v24;
    v26 = *(v0 + 256) + 16;
    (*(v0 + 296))(*(v0 + 264), *(v0 + 200) + ((*(v0 + 328) + 32) & ~*(v0 + 328)) + *(v0 + 288) * v24, *(v0 + 248));
    v27 = ProofingSession.proofingSessionID.getter();
    *(v0 + 312) = v28;
    if (!v28)
    {
      v32 = *(v0 + 232);
      defaultLogger()();
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      v35 = os_log_type_enabled(v33, v34);
      v37 = *(v0 + 256);
      v36 = *(v0 + 264);
      v38 = *(v0 + 248);
      v39 = *(v0 + 224);
      v40 = *(v0 + 232);
      v41 = *(v0 + 216);
      if (v35)
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "IdentityWatchSessionManagementListener missing proofing session ID, skipping to check to notify", v42, 2u);
      }

      (*(v39 + 8))(v40, v41);
      (*(v37 + 8))(v36, v38);
      goto LABEL_12;
    }

    v29 = v28;
    v30 = v27;
    v31 = *(v0 + 264);
    if (ProofingSession.shouldShowNotificationOnWatch.getter())
    {
      break;
    }

    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));

LABEL_12:
    v24 = *(v0 + 304) + 1;
    if (v24 == *(v0 + 280))
    {
      v43 = *(v0 + 272);
      goto LABEL_19;
    }
  }

  v49 = *(v0 + 240);
  defaultLogger()();

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.debug.getter();

  v52 = os_log_type_enabled(v50, v51);
  v53 = *(v0 + 240);
  v54 = *(v0 + 216);
  v55 = *(v0 + 224);
  if (v52)
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v60 = v57;
    *v56 = 136315138;
    *(v56 + 4) = sub_100141FE4(v30, v29, &v60);
    _os_log_impl(&_mh_execute_header, v50, v51, "IdentityWatchSessionManagementListener Found pending Watch notification for %s. Will send the notification to the Watch", v56, 0xCu);
    sub_10000BB78(v57);
  }

  (*(v55 + 8))(v53, v54);
  v58 = swift_task_alloc();
  *(v0 + 320) = v58;
  *v58 = v0;
  v58[1] = sub_1004B7034;
  v59 = *(v0 + 272);

  return sub_1002CD7D4(0, 0, 0, 0, v30, v29, 0);
}

uint64_t sub_1004B7034()
{
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 312);
  v4 = *v0;

  return _swift_task_switch(sub_1004B714C, 0, 0);
}

uint64_t sub_1004B714C()
{
  v37 = v0;
  (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
  while (1)
  {
    v1 = *(v0 + 304) + 1;
    if (v1 == *(v0 + 280))
    {
      break;
    }

    *(v0 + 304) = v1;
    v2 = *(v0 + 256) + 16;
    (*(v0 + 296))(*(v0 + 264), *(v0 + 200) + ((*(v0 + 328) + 32) & ~*(v0 + 328)) + *(v0 + 288) * v1, *(v0 + 248));
    v3 = ProofingSession.proofingSessionID.getter();
    *(v0 + 312) = v4;
    if (v4)
    {
      v5 = v4;
      v6 = v3;
      v7 = *(v0 + 264);
      if (ProofingSession.shouldShowNotificationOnWatch.getter())
      {
        v25 = *(v0 + 240);
        defaultLogger()();

        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.debug.getter();

        v28 = os_log_type_enabled(v26, v27);
        v29 = *(v0 + 240);
        v30 = *(v0 + 216);
        v31 = *(v0 + 224);
        if (v28)
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v36 = v33;
          *v32 = 136315138;
          *(v32 + 4) = sub_100141FE4(v6, v5, &v36);
          _os_log_impl(&_mh_execute_header, v26, v27, "IdentityWatchSessionManagementListener Found pending Watch notification for %s. Will send the notification to the Watch", v32, 0xCu);
          sub_10000BB78(v33);
        }

        (*(v31 + 8))(v29, v30);
        v34 = swift_task_alloc();
        *(v0 + 320) = v34;
        *v34 = v0;
        v34[1] = sub_1004B7034;
        v35 = *(v0 + 272);

        return sub_1002CD7D4(0, 0, 0, 0, v6, v5, 0);
      }

      (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
    }

    else
    {
      v8 = *(v0 + 232);
      defaultLogger()();
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();
      v11 = os_log_type_enabled(v9, v10);
      v13 = *(v0 + 256);
      v12 = *(v0 + 264);
      v14 = *(v0 + 248);
      v15 = *(v0 + 224);
      v16 = *(v0 + 232);
      v17 = *(v0 + 216);
      if (v11)
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "IdentityWatchSessionManagementListener missing proofing session ID, skipping to check to notify", v18, 2u);
      }

      (*(v15 + 8))(v16, v17);
      (*(v13 + 8))(v12, v14);
    }
  }

  v19 = *(v0 + 272);

  v20 = *(v0 + 264);
  v21 = *(v0 + 232);
  v22 = *(v0 + 240);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1004B74D8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1004B7598, 0, 0);
}

uint64_t sub_1004B7598()
{
  v0[8] = *(v0[4] + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService);
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1004B7638;

  return sub_1006738C8();
}

uint64_t sub_1004B7638(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_1004B7738, 0, 0);
}

uint64_t sub_1004B7738()
{
  v1 = v0[10];
  if (v1)
  {
    v2 = *(v0[8] + OBJC_IVAR____TtC8coreidvd8DIPWatch_service);
    v0[11] = v2;
    if (v2)
    {
      v3 = v0[3];
      v4 = swift_allocObject();
      v0[12] = v4;
      v4[2] = v2;
      v4[3] = v3;
      v4[4] = v1;
      v5 = async function pointer to withTaskTimeoutHandler<A>(timeout:operation:)[1];
      v6 = v2;

      v7 = v1;
      v8 = swift_task_alloc();
      v0[13] = v8;
      v9 = sub_100007224(&qword_100834EA0, &qword_1006C06B0);
      *v8 = v0;
      v8[1] = sub_1004B7AC4;
      v10.n128_u64[0] = 30.0;

      return withTaskTimeoutHandler<A>(timeout:operation:)(v0 + 2, &unk_1006E6438, v4, v9, v10);
    }

    (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.failedToRegisterForWatchEvents(_:), v0[5]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.unableToEstablishSessionWithWatch(_:), v0[5]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v11 = v0[7];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1004B7AC4()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_1004B7C5C;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_1004B7BE0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004B7BE0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);

  v3 = *(v0 + 16);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1004B7C5C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  v4 = v0[14];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1004B7CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  return _swift_task_switch(sub_1004B7CF8, 0, 0);
}

uint64_t sub_1004B7CF8()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  isa = Array._bridgeToObjectiveC()().super.isa;
  v5 = NPKIDVRemoteDeviceServiceEventsFromStringsArray();

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1004B7E4C;
  v6 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100845E70, &qword_1006E6428);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10067FE58;
  v0[13] = &unk_100814378;
  v0[14] = v6;
  [v3 registerForEvents:v5 withSession:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004B7E4C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_1004B7FEC;
  }

  else
  {
    v3 = sub_1004B7F5C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004B7F5C()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *v2 = v4;
  v5 = v0[1];

  return v5();
}

uint64_t sub_1004B7FEC()
{
  v1 = *(v0 + 184);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 184);

  return v2();
}

uint64_t sub_1004B8058(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1004B8174, 0, 0);
}

uint64_t sub_1004B8174()
{
  v0[11] = *(v0[4] + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService);
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_1004B8214;

  return sub_1006738C8();
}

uint64_t sub_1004B8214(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_1004B8314, 0, 0);
}

uint64_t sub_1004B8314()
{
  v1 = v0[13];
  if (v1)
  {
    v2 = *(v0[11] + OBJC_IVAR____TtC8coreidvd8DIPWatch_service);
    v0[14] = v2;
    if (v2)
    {
      v3 = v0[10];
      v4 = v2;
      defaultLogger()();
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "IdentityWatchSessionManagementListener unregisterFromEvents called", v7, 2u);
      }

      v9 = v0[9];
      v8 = v0[10];
      v10 = v0[8];
      v11 = v0[3];

      (*(v9 + 8))(v8, v10);
      v12 = swift_allocObject();
      v0[15] = v12;
      v12[2] = v4;
      v12[3] = v11;
      v12[4] = v1;
      v13 = async function pointer to withTaskTimeoutHandler<A>(timeout:operation:)[1];
      v14 = v4;

      v15 = v1;
      v16 = swift_task_alloc();
      v0[16] = v16;
      v17 = sub_100007224(&qword_100834EA0, &qword_1006C06B0);
      *v16 = v0;
      v16[1] = sub_1004B8748;
      v18.n128_u64[0] = 30.0;

      return withTaskTimeoutHandler<A>(timeout:operation:)(v0 + 2, &unk_1006E6418, v12, v17, v18);
    }

    (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.failedToUnregisterForWatchEvents(_:), v0[5]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.unableToEstablishSessionWithWatch(_:), v0[5]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v19 = v0[10];
  v20 = v0[7];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1004B8748()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_1004B88F4;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_1004B8864;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004B8864()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);

  v4 = *(v0 + 16);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_1004B88F4()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];

  v4 = v0[17];
  v5 = v0[10];
  v6 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1004B8978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  return _swift_task_switch(sub_1004B899C, 0, 0);
}

uint64_t sub_1004B899C()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  isa = Array._bridgeToObjectiveC()().super.isa;
  v5 = NPKIDVRemoteDeviceServiceEventsFromStringsArray();

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1004B8AF0;
  v6 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100845E70, &qword_1006E6428);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10067FE58;
  v0[13] = &unk_100814328;
  v0[14] = v6;
  [v3 unregisterFromEvents:v5 withSession:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004B8AF0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_1004CF418;
  }

  else
  {
    v3 = sub_1004CF3B8;
  }

  return _swift_task_switch(v3, 0, 0);
}

void *sub_1004B8C00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v45 = a3;
  v7 = type metadata accessor for DIPError.Code();
  v40 = *(v7 - 8);
  v41 = v7;
  v8 = *(v40 + 64);
  __chkstk_darwin(v7);
  v43 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v42 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v48 = &v39 - v16;
  __chkstk_darwin(v15);
  v18 = &v39 - v17;
  defaultLogger()();

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v44 = v11;
    v22 = v10;
    v23 = v21;
    v24 = swift_slowAlloc();
    v47[0] = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_100141FE4(a1, a2, v47);
    _os_log_impl(&_mh_execute_header, v19, v20, "Trying to retrieve prearm trust key and certificate for watch with pairingID: %s", v23, 0xCu);
    sub_10000BB78(v24);

    v10 = v22;
    v11 = v44;
  }

  v25 = *(v11 + 8);
  v25(v18, v10);
  v26 = v46;
  result = sub_10057DC18(a1, a2);
  v28 = v48;
  if (!v26)
  {
    v46 = 0;
    if (result)
    {

      defaultLogger()();

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v44 = v11;
        v32 = v31;
        v33 = swift_slowAlloc();
        v47[0] = v33;
        *v32 = 136315138;
        *(v32 + 4) = sub_100141FE4(a1, a2, v47);
        _os_log_impl(&_mh_execute_header, v29, v30, "Successfully retrieved prearm trust key and certificate for watch with pairingID: %s", v32, 0xCu);
        sub_10000BB78(v33);

        v34 = v48;
      }

      else
      {

        v34 = v28;
      }

      v25(v34, v10);
      v38 = *(a4 + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_deviceLockStateMonitor);
      return sub_100484DB8(a1, a2);
    }

    else
    {
      v47[0] = 0;
      v47[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(115);
      v35._countAndFlagsBits = 0xD000000000000071;
      v35._object = 0x800000010071AA50;
      String.append(_:)(v35);
      v36._countAndFlagsBits = a1;
      v36._object = a2;
      String.append(_:)(v36);
      (*(v40 + 104))(v43, enum case for DIPError.Code.watchPrearmTrustDoesNotExist(_:), v41);
      v48 = v10;
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v37 = v42;
      defaultLogger()();
      DIPRecordError(_:message:log:)();
      v25(v37, v48);
    }
  }

  return result;
}

uint64_t sub_1004B9158(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v57 = a4;
  v58 = a5;
  v56 = a3;
  v54 = a2;
  v6 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v55 = &v53 - v8;
  v9 = type metadata accessor for Logger();
  v60 = *(v9 - 8);
  v61 = v9;
  v10 = *(v60 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v53 - v15;
  __chkstk_darwin(v14);
  v59 = &v53 - v17;
  v18 = sub_100007224(&unk_100849F90, &qword_1006DEAA0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v53 - v20;
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v27 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v53 - v28;
  sub_10000BBC4(a1, v21, &unk_100849F90, &qword_1006DEAA0);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_10000BE18(v21, &unk_100849F90, &qword_1006DEAA0);
    v31 = v60;
    v30 = v61;
    if (v54)
    {
      swift_errorRetain();
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      (*(v31 + 8))(v16, v30);
    }

    defaultLogger()();
    v32 = v57;

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();

    v35 = os_log_type_enabled(v33, v34);
    v36 = v56;
    if (v35)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v62 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_100141FE4(v36, v32, &v62);
      _os_log_impl(&_mh_execute_header, v33, v34, "Secure ranging is not supported for watch with pairingID: %s, will continue to prearm the watch without it.", v37, 0xCu);
      sub_10000BB78(v38);
    }

    (*(v31 + 8))(v13, v30);
    v39 = type metadata accessor for TaskPriority();
    v40 = v55;
    (*(*(v39 - 8) + 56))(v55, 1, 1, v39);
    v41 = swift_allocObject();
    v41[2] = 0;
    v41[3] = 0;
    v42 = v58;
    v41[4] = v58;
    v41[5] = v36;
    v41[6] = v32;

    v43 = v42;
    sub_1003E653C(0, 0, v40, &unk_1006E6498, v41);
  }

  else
  {
    (*(v23 + 32))(v29, v21, v22);
    defaultLogger()();
    (*(v23 + 16))(v27, v29, v22);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v62 = v48;
      *v47 = 136315138;
      v58 = UUID.uuidString.getter();
      v50 = v49;
      v51 = *(v23 + 8);
      v51(v27, v22);
      v52 = sub_100141FE4(v58, v50, &v62);

      *(v47 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v45, v46, "Secure ranging session established with watch, sessionID: %s", v47, 0xCu);
      sub_10000BB78(v48);
    }

    else
    {

      v51 = *(v23 + 8);
      v51(v27, v22);
    }

    (*(v60 + 8))(v59, v61);
    return (v51)(v29, v22);
  }
}

uint64_t sub_1004B97D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for Logger();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  v10 = type metadata accessor for DIPError.Code();
  v6[8] = v10;
  v11 = *(v10 - 8);
  v6[9] = v11;
  v12 = *(v11 + 64) + 15;
  v6[10] = swift_task_alloc();

  return _swift_task_switch(sub_1004B98F0, 0, 0);
}

uint64_t sub_1004B98F0()
{
  v1 = objc_opt_self();
  v0[11] = v1;
  v2 = [v1 standardUserDefaults];
  static DaemonDefaultsKeys.watchPrearmAttempts.getter();
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 integerForKey:v3];
  v0[12] = v4;

  if (v4 > 4)
  {
    v11 = v0[9];
    v10 = v0[10];
    v12 = v0[7];
    v13 = v0[8];
    v14 = v0[5];
    v15 = v0[6];
    v16 = *(v0[2] + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_deviceLockStateMonitor);
    sub_1004857EC(v0[3], v0[4]);
    (*(v11 + 104))(v10, enum case for DIPError.Code.watchPrearmRateLimited(_:), v13);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v15 + 8))(v12, v14);

    v17 = v0[10];
    v18 = v0[7];

    v19 = v0[1];

    return v19();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_1004B9BC4;
    v7 = v0[3];
    v6 = v0[4];
    v8 = v0[2];

    return sub_1004C0330(v7, v6);
  }
}

uint64_t sub_1004B9BC4()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1004B9DDC;
  }

  else
  {
    v3 = sub_1004B9CD8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004B9CD8()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = *(v0[2] + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_deviceLockStateMonitor);
  sub_1004857EC(v0[3], v0[4]);
  v4 = [v1 standardUserDefaults];
  static DaemonDefaultsKeys.watchPrearmAttempts.getter();
  v5 = String._bridgeToObjectiveC()();

  [v4 removeObjectForKey:v5];

  if (v2 >= 1)
  {
    v6 = v0[12];
    type metadata accessor for DaemonAnalytics();
    static DaemonAnalytics.sendWatchPrearmSuccessEvent(attempts:)();
  }

  v7 = v0[10];
  v8 = v0[7];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004B9DDC()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  (*(v5 + 8))(v4, v6);
  v7 = [v2 standardUserDefaults];
  static DaemonDefaultsKeys.watchPrearmAttempts.getter();
  v8 = String._bridgeToObjectiveC()();

  [v7 setInteger:v3 + 1 forKey:v8];

  v9 = v0[10];
  v10 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1004B9EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[26] = v5;
  v6 = *(v5 - 8);
  v4[27] = v6;
  v7 = *(v6 + 64) + 15;
  v4[28] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[29] = v8;
  v9 = *(v8 - 8);
  v4[30] = v9;
  v10 = *(v9 + 64) + 15;
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_1004BA030, 0, 0);
}

uint64_t sub_1004BA030()
{
  v18 = v0;
  v1 = v0[33];
  v2 = v0[23];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[33];
  v7 = v0[29];
  v8 = v0[30];
  if (v5)
  {
    v10 = v0[22];
    v9 = v0[23];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100141FE4(v10, v9, &v17);
    _os_log_impl(&_mh_execute_header, v3, v4, "Trying to regenerate watch attestation with pairingID: %s", v11, 0xCu);
    sub_10000BB78(v12);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  v0[34] = v13;
  v14 = *(v0[25] + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService);
  v15 = swift_task_alloc();
  v0[35] = v15;
  *v15 = v0;
  v15[1] = sub_1004BA1E8;

  return sub_1006738C8();
}

uint64_t sub_1004BA1E8(uint64_t a1)
{
  v2 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = a1;

  return _swift_task_switch(sub_1004BA2E8, 0, 0);
}

uint64_t sub_1004BA2E8()
{
  v1 = v0[36];
  if (v1)
  {
    v0[37] = *(v0[25] + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_biometricStore);
    v2 = swift_allocObject();
    v0[38] = v2;
    *(v2 + 16) = v1;
    v3 = async function pointer to withTaskTimeoutHandler<A>(timeout:operation:)[1];
    v4 = v1;
    v5 = swift_task_alloc();
    v0[39] = v5;
    v6 = sub_10001F8D4(0, &qword_100845E18, DCCredentialNonce_ptr);
    *v5 = v0;
    v5[1] = sub_1004BA57C;
    v7.n128_u64[0] = 30.0;

    return withTaskTimeoutHandler<A>(timeout:operation:)(v0 + 19, &unk_1006E63E8, v2, v6, v7);
  }

  else
  {
    (*(v0[27] + 104))(v0[28], enum case for DIPError.Code.unableToEstablishSessionWithWatch(_:), v0[26]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v9 = v0[32];
    v8 = v0[33];
    v10 = v0[31];
    v11 = v0[28];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1004BA57C()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v7 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = sub_1004BB478;
  }

  else
  {
    v5 = *(v2 + 304);

    v4 = sub_1004BA698;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004BA698()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[24];
  v4 = v0[19];
  v0[41] = v4;
  v5 = swift_allocObject();
  v0[42] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v6 = *v3;
  v7 = *(v3 + 16);
  v8 = *(v3 + 32);
  *(v5 + 79) = *(v3 + 47);
  *(v5 + 48) = v7;
  *(v5 + 64) = v8;
  *(v5 + 32) = v6;
  *(v5 + 88) = v4;
  v9 = v2;
  v10 = v1;
  sub_1004CDE10(v3, (v0 + 12));
  v11 = async function pointer to withTaskTimeoutHandler<A>(timeout:operation:)[1];
  v12 = v4;
  v13 = swift_task_alloc();
  v0[43] = v13;
  v14 = sub_10001F8D4(0, &qword_100845E38, DCCredentialTrust_ptr);
  *v13 = v0;
  v13[1] = sub_1004BA7E0;
  v15.n128_u64[0] = 30.0;

  return withTaskTimeoutHandler<A>(timeout:operation:)(v0 + 20, &unk_1006E63F8, v5, v14, v15);
}

uint64_t sub_1004BA7E0()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v7 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = sub_1004BB514;
  }

  else
  {
    v5 = *(v2 + 336);

    v4 = sub_1004BA8FC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004BA8FC()
{
  v1 = v0[36];
  v2 = v0[20];
  v0[45] = v2;
  v3 = swift_allocObject();
  v0[46] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withTaskTimeoutHandler<A>(timeout:operation:)[1];
  v5 = v1;
  v6 = v2;
  v7 = swift_task_alloc();
  v0[47] = v7;
  v8 = sub_100007224(&qword_100845E40, &qword_1006E6390);
  *v7 = v0;
  v7[1] = sub_1004BAA08;
  v9.n128_u64[0] = 30.0;

  return withTaskTimeoutHandler<A>(timeout:operation:)(v0 + 21, &unk_1006E6408, v3, v8, v9);
}

uint64_t sub_1004BAA08()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v7 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v4 = sub_1004BB5B8;
  }

  else
  {
    v5 = *(v2 + 368);

    v4 = sub_1004BAB24;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004BAB24()
{
  v47 = v0;
  v1 = v0[32];
  v2 = v0[21];
  v0[49] = v2;
  defaultLogger()();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[34];
  v7 = v0[32];
  v8 = v0[29];
  v9 = v0[30];
  if (v5)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v46 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(0xD000000000000030, 0x800000010071B1E0, &v46);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s - Skipping on saving prearm trust, only the attestation is updated", v10, 0xCu);
    sub_10000BB78(v11);
  }

  v6(v7, v8);
  v12 = v0[36];
  if (v2)
  {
    v13 = [v2 attestationData];
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v0[50] = v14;
    v0[51] = v16;
    v17 = swift_task_alloc();
    v0[52] = v17;
    *v17 = v0;
    v17[1] = sub_1004BAF50;

    return sub_1004CA174(v12);
  }

  else
  {
    v19 = v0[31];
    defaultLogger()();
    v20 = v12;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[49];
    v45 = v0[45];
    v25 = v0[41];
    v26 = v0[36];
    v27 = v0[34];
    v29 = v0[30];
    v28 = v0[31];
    v30 = v0[29];
    if (v23)
    {
      v44 = v0[49];
      v31 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v31 = 136315394;
      *(v31 + 4) = sub_100141FE4(0xD000000000000030, 0x800000010071B1E0, &v46);
      *(v31 + 12) = 2080;
      v43 = v30;
      v32 = [v26 deviceID];
      v42 = v27;
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36 = sub_100141FE4(v33, v35, &v46);

      *(v31 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v21, v22, "%s - Successfully generated watch attestation with pairingID: %s", v31, 0x16u);
      swift_arrayDestroy();

      v42(v28, v43);
    }

    else
    {

      v27(v28, v30);
    }

    v38 = v0[32];
    v37 = v0[33];
    v39 = v0[31];
    v40 = v0[28];

    v41 = v0[1];

    return v41(0);
  }
}

uint64_t sub_1004BAF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *(*v5 + 416);
  v12 = *v5;
  *(*v5 + 424) = v4;

  if (v4)
  {
    v13 = sub_1004BB3B4;
  }

  else
  {
    v10[54] = a4;
    v10[55] = a3;
    v10[56] = a2;
    v10[57] = a1;
    v13 = sub_1004BB098;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_1004BB098()
{
  v42 = v0;
  v2 = v0[56];
  v1 = v0[57];
  v4 = v0[54];
  v3 = v0[55];
  v6 = v0[50];
  v5 = v0[51];
  sub_100007224(&qword_100845E48, &qword_1006E63A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006BF520;
  *(inited + 32) = v3;
  *(inited + 40) = v4;
  v8 = Data.base16EncodedString()();
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  *(inited + 64) = v8;
  v9 = sub_10003F6B4(inited);
  swift_setDeallocating();
  sub_10000BE18(inited + 32, &qword_100845E50, &qword_1006E63A8);
  sub_10000B90C(v6, v5);
  v10 = v0[36];
  v11 = v0[31];
  defaultLogger()();
  v12 = v10;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[49];
  v17 = v0[45];
  v18 = v0[41];
  v19 = v0[36];
  v20 = v0[34];
  v21 = v0[31];
  v39 = v17;
  v40 = v0[30];
  v22 = v0[29];
  if (v15)
  {
    v38 = v9;
    v23 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v23 = 136315394;
    *(v23 + 4) = sub_100141FE4(0xD000000000000030, 0x800000010071B1E0, &v41);
    *(v23 + 12) = 2080;
    v37 = v22;
    v24 = [v19 deviceID];
    v35 = v16;
    v36 = v20;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = sub_100141FE4(v25, v27, &v41);

    *(v23 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s - Successfully generated watch attestation with pairingID: %s", v23, 0x16u);
    swift_arrayDestroy();

    v9 = v38;

    v36(v21, v37);
  }

  else
  {

    v20(v21, v22);
  }

  v30 = v0[32];
  v29 = v0[33];
  v31 = v0[31];
  v32 = v0[28];

  v33 = v0[1];

  return v33(v9);
}

uint64_t sub_1004BB3B4()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  v3 = *(v0 + 392);
  v4 = *(v0 + 360);
  v5 = *(v0 + 288);

  sub_10000B90C(v1, v2);
  v6 = *(v0 + 424);
  v8 = *(v0 + 256);
  v7 = *(v0 + 264);
  v9 = *(v0 + 248);
  v10 = *(v0 + 224);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1004BB478()
{
  v1 = v0[38];
  v2 = v0[36];

  v3 = v0[40];
  v5 = v0[32];
  v4 = v0[33];
  v6 = v0[31];
  v7 = v0[28];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1004BB514()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 288);

  v3 = *(v0 + 352);
  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  v6 = *(v0 + 248);
  v7 = *(v0 + 224);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1004BB5B8()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 288);

  v4 = *(v0 + 384);
  v6 = *(v0 + 256);
  v5 = *(v0 + 264);
  v7 = *(v0 + 248);
  v8 = *(v0 + 224);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1004BB664(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  v3 = type metadata accessor for DIPError.Code();
  v2[24] = v3;
  v4 = *(v3 - 8);
  v2[25] = v4;
  v5 = *(v4 + 64) + 15;
  v2[26] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[27] = v6;
  v7 = *(v6 - 8);
  v2[28] = v7;
  v8 = *(v7 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_1004BB78C, 0, 0);
}

uint64_t sub_1004BB78C()
{
  v23 = v0;
  v1 = v0[30];
  v2 = v0[23];
  defaultLogger()();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[30];
  v9 = v0[27];
  v8 = v0[28];
  if (v6)
  {
    v10 = v0[23];
    v21 = v0[30];
    v11 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100141FE4(0xD000000000000030, 0x800000010071B1E0, &v22);
    *(v11 + 12) = 2080;
    v12 = [v10 deviceID];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_100141FE4(v13, v15, &v22);

    *(v11 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s - Getting watch nonce with pairingID: %s", v11, 0x16u);
    swift_arrayDestroy();

    v17 = *(v8 + 8);
    v17(v21, v9);
  }

  else
  {

    v17 = *(v8 + 8);
    v17(v7, v9);
  }

  v0[31] = v17;
  v18 = v0[23];
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1004BBA3C;
  v19 = swift_continuation_init();
  v0[17] = sub_100007224(&qword_100845E30, &qword_1006E6358);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1004CF424;
  v0[13] = &unk_1008142D8;
  v0[14] = v19;
  [v18 nonceForAuthorizationTokenWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004BBA3C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = sub_1004BBE10;
  }

  else
  {
    v3 = sub_1004BBB4C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004BBB4C()
{
  v37 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
  defaultLogger()();
  v4 = v2;
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 248);
  v11 = *(v0 + 224);
  v10 = *(v0 + 232);
  v12 = *(v0 + 216);
  if (v8)
  {
    v32 = *(v0 + 184);
    v35 = *(v0 + 216);
    v13 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v13 = 136315650;
    *(v13 + 4) = sub_100141FE4(0xD000000000000030, 0x800000010071B1E0, &v36);
    *(v13 + 12) = 2080;
    v14 = [v5 credentialNonce];
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v9;
    v17 = v16;

    v18 = Data.description.getter();
    v33 = v10;
    v20 = v19;
    sub_10000B90C(v15, v17);
    v21 = sub_100141FE4(v18, v20, &v36);

    *(v13 + 14) = v21;
    *(v13 + 22) = 2080;
    v22 = [v32 deviceID];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = sub_100141FE4(v23, v25, &v36);

    *(v13 + 24) = v26;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s - Successfully generated nonce in watch: %s with pairingID: %s", v13, 0x20u);
    swift_arrayDestroy();

    v34(v33, v35);
  }

  else
  {

    v9(v10, v12);
  }

  v28 = *(v0 + 232);
  v27 = *(v0 + 240);
  v29 = *(v0 + 208);
  **(v0 + 176) = v5;

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1004BBE10()
{
  v1 = v0[32];
  v10 = v0[30];
  v11 = v0[29];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  swift_willThrow();
  _StringGuts.grow(_:)(47);
  v0[18] = 0;
  v0[19] = 0xE000000000000000;
  v5._object = 0x800000010071B1B0;
  v5._countAndFlagsBits = 0xD00000000000002DLL;
  String.append(_:)(v5);
  v0[21] = v1;
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  _print_unlocked<A, B>(_:_:)();
  v6 = v0[18];
  v7 = v0[19];
  (*(v3 + 104))(v2, enum case for DIPError.Code.unableToGenerateNonceOnWatch(_:), v4);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1004BC040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[24] = v6;
  v7 = *(v6 - 8);
  v5[25] = v7;
  v8 = *(v7 + 64) + 15;
  v5[26] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v5[27] = v9;
  v10 = *(v9 - 8);
  v5[28] = v10;
  v11 = *(v10 + 64) + 15;
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();

  return _swift_task_switch(sub_1004BC170, 0, 0);
}

uint64_t sub_1004BC170()
{
  v36 = v0;
  v1 = &v0[18];
  isa = v0[30].super.isa;
  v3 = v0[20].super.isa;
  defaultLogger()();
  v4 = v3;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[30].super.isa;
  v10 = v0[27].super.isa;
  v9 = v0[28].super.isa;
  if (v7)
  {
    v11 = v0[20].super.isa;
    v34 = v0[27].super.isa;
    v12 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_100141FE4(0xD000000000000030, 0x800000010071B1E0, &v35);
    *(v12 + 12) = 2080;
    v13 = [(objc_class *)v11 deviceID];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_100141FE4(v14, v16, &v35);

    *(v12 + 14) = v17;
    v1 = &v0[18];
    _os_log_impl(&_mh_execute_header, v5, v6, "%s - Trying to get a new certificate re-using trust key for pairingID: %s", v12, 0x16u);
    swift_arrayDestroy();

    v18 = *(v9 + 1);
    (v18)(v8, v34);
  }

  else
  {

    v18 = *(v9 + 1);
    (v18)(v8, v10);
  }

  v0[31].super.isa = v18;
  v19 = v0[22].super.isa;
  v20 = v0[23].super.isa;
  v21 = v0[20].super.isa;
  v22 = *v19;
  v23 = v19[1];
  v24.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v0[32].super.isa = v24.super.isa;
  v25 = [(objc_class *)v20 credentialNonce];
  v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v0[33].super.isa = v29.super.isa;
  sub_10000B90C(v26, v28);
  v30 = [(objc_class *)v21 deviceID];
  if (!v30)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = String._bridgeToObjectiveC()();
  }

  v0[34].super.isa = v30;
  v31 = v0[21].super.isa;
  v0[2].super.isa = v0;
  v0[7].super.isa = v1;
  v0[3].super.isa = sub_1004BC4DC;
  v32 = swift_continuation_init();
  v0[17].super.isa = sub_100007224(&unk_100845E60, &qword_1006E63D8);
  v0[10].super.isa = _NSConcreteStackBlock;
  v0[11].super.isa = 1107296256;
  v0[12].super.isa = sub_1004CF424;
  v0[13].super.isa = &unk_1008142B0;
  v0[14].super.isa = v32;
  [(objc_class *)v31 generatePrearmTrustCertificateFromKeyBlob:v24.super.isa nonce:v29.super.isa pairingID:v30 completion:&v0[10]];

  return _swift_continuation_await(&v0[2]);
}

uint64_t sub_1004BC4DC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 280) = v2;
  if (v2)
  {
    v3 = sub_1004BC940;
  }

  else
  {
    v3 = sub_1004BC5EC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004BC5EC()
{
  v43 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 256);
  v3 = *(v0 + 232);
  v4 = *(v0 + 160);
  v5 = *(v0 + 144);

  defaultLogger()();
  v6 = v4;
  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 248);
  v13 = *(v0 + 224);
  v12 = *(v0 + 232);
  v14 = *(v0 + 216);
  if (v10)
  {
    v38 = *(v0 + 160);
    v41 = *(v0 + 216);
    v15 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v15 = 136315906;
    *(v15 + 4) = sub_100141FE4(0xD000000000000030, 0x800000010071B1E0, &v42);
    *(v15 + 12) = 2080;
    v16 = [v7 credentialKeyBlob];
    v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v11;
    v19 = v18;

    v20 = Data.base64EncodedString(options:)(0);
    v39 = v12;
    sub_10000B90C(v17, v19);
    v21 = sub_100141FE4(v20._countAndFlagsBits, v20._object, &v42);

    *(v15 + 14) = v21;
    *(v15 + 22) = 2080;
    v22 = [v7 credentialBAACertificate];
    v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = Data.base64EncodedString(options:)(0);
    sub_10000B90C(v23, v25);
    v27 = sub_100141FE4(v26._countAndFlagsBits, v26._object, &v42);

    *(v15 + 24) = v27;
    *(v15 + 32) = 2080;
    v28 = [v38 deviceID];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = sub_100141FE4(v29, v31, &v42);

    *(v15 + 34) = v32;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s - Successfully resigned prearm trust key: %s and certificate: %s on phone for watch with pairingID: %s", v15, 0x2Au);
    swift_arrayDestroy();

    v40(v39, v41);
  }

  else
  {

    v11(v12, v14);
  }

  v34 = *(v0 + 232);
  v33 = *(v0 + 240);
  v35 = *(v0 + 208);
  **(v0 + 152) = v7;

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1004BC940()
{
  v2 = v0[34];
  v1 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[30];
  v11 = v0[29];
  v6 = v0[25];
  v7 = v0[26];
  v8 = v0[24];
  swift_willThrow();

  (*(v6 + 104))(v7, enum case for DIPError.Code.unableToRegeneratePrearmTrustKeyOnPhone(_:), v8);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004BCB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return _swift_task_switch(sub_1004BCB28, 0, 0);
}

uint64_t sub_1004BCB28()
{
  v2 = v0[20];
  v1 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1004BCC50;
  v3 = swift_continuation_init();
  v0[17] = sub_100007224(&qword_100845E58, &qword_1006E63D0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1004CF424;
  v0[13] = &unk_100814288;
  v0[14] = v3;
  [v2 establishPrearmTrustV2:v1 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004BCC50()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1004BCD80;
  }

  else
  {
    v3 = sub_1004BCD60;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004BCD80()
{
  v1 = *(v0 + 176);
  swift_willThrow();

  **(v0 + 152) = 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004BCE00(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[18] = v4;
  v5 = *(v4 - 8);
  v3[19] = v5;
  v6 = *(v5 + 64) + 15;
  v3[20] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[21] = v7;
  v8 = *(v7 - 8);
  v3[22] = v8;
  v9 = *(v8 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_1004BCF2C, 0, 0);
}

uint64_t sub_1004BCF2C()
{
  v18 = v0;
  v1 = v0[24];
  v2 = v0[16];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[24];
  v7 = v0[21];
  v8 = v0[22];
  if (v5)
  {
    v10 = v0[15];
    v9 = v0[16];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100141FE4(v10, v9, &v17);
    _os_log_impl(&_mh_execute_header, v3, v4, "Trying to establish prearm trust with watch with pairingID: %s", v11, 0xCu);
    sub_10000BB78(v12);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  v0[25] = v13;
  v14 = *(v0[17] + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService);
  v15 = swift_task_alloc();
  v0[26] = v15;
  *v15 = v0;
  v15[1] = sub_1004BD0E4;

  return sub_1006738C8();
}

uint64_t sub_1004BD0E4(uint64_t a1)
{
  v2 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = a1;

  return _swift_task_switch(sub_1004BD1E4, 0, 0);
}

uint64_t sub_1004BD1E4()
{
  v1 = v0[27];
  if (v1)
  {
    v0[28] = *(v0[17] + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_biometricStore);
    v2 = swift_allocObject();
    v0[29] = v2;
    *(v2 + 16) = v1;
    v3 = async function pointer to withTaskTimeoutHandler<A>(timeout:operation:)[1];
    v4 = v1;
    v5 = swift_task_alloc();
    v0[30] = v5;
    v6 = sub_10001F8D4(0, &qword_100845E18, DCCredentialNonce_ptr);
    *v5 = v0;
    v5[1] = sub_1004BD468;
    v7.n128_u64[0] = 30.0;

    return withTaskTimeoutHandler<A>(timeout:operation:)(v0 + 12, &unk_1006E6368, v2, v6, v7);
  }

  else
  {
    (*(v0[19] + 104))(v0[20], enum case for DIPError.Code.unableToEstablishSessionWithWatch(_:), v0[18]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v9 = v0[23];
    v8 = v0[24];
    v10 = v0[20];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1004BD468()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = *(v2 + 232);

  if (v0)
  {
    v6 = sub_1004BE1CC;
  }

  else
  {
    v6 = sub_1004BD59C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1004BD59C()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[12];
  v0[32] = v3;
  v4 = swift_allocObject();
  v0[33] = v4;
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;
  v5 = async function pointer to withTaskTimeoutHandler<A>(timeout:operation:)[1];
  v6 = v2;
  v7 = v1;
  v8 = v3;
  v9 = swift_task_alloc();
  v0[34] = v9;
  v10 = sub_10001F8D4(0, &qword_100845E38, DCCredentialTrust_ptr);
  *v9 = v0;
  v9[1] = sub_1004BD6BC;
  v11.n128_u64[0] = 30.0;

  return withTaskTimeoutHandler<A>(timeout:operation:)(v0 + 13, &unk_1006E6378, v4, v10, v11);
}

uint64_t sub_1004BD6BC()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 264);

  if (v0)
  {
    v6 = sub_1004BE254;
  }

  else
  {
    v6 = sub_1004BD7F0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1004BD7F0()
{
  v1 = v0[27];
  v2 = v0[13];
  v0[36] = v2;
  v3 = swift_allocObject();
  v0[37] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withTaskTimeoutHandler<A>(timeout:operation:)[1];
  v5 = v1;
  v6 = v2;
  v7 = swift_task_alloc();
  v0[38] = v7;
  v8 = sub_100007224(&qword_100845E40, &qword_1006E6390);
  *v7 = v0;
  v7[1] = sub_1004BD8FC;
  v9.n128_u64[0] = 30.0;

  return withTaskTimeoutHandler<A>(timeout:operation:)(v0 + 14, &unk_1006E6388, v3, v8, v9);
}

uint64_t sub_1004BD8FC()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = v0;

  v5 = *(v2 + 296);

  if (v0)
  {
    v6 = sub_1004BE2E4;
  }

  else
  {
    v6 = sub_1004BDA30;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1004BDA30()
{
  v38 = v0;
  v1 = v0[14];
  v0[40] = v1;
  v2 = v0[27];
  if (v1)
  {
    v3 = [v1 attestationData];
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v0[41] = v4;
    v0[42] = v6;
    v7 = swift_task_alloc();
    v0[43] = v7;
    *v7 = v0;
    v7[1] = sub_1004BDD08;

    return sub_1004CA174(v2);
  }

  else
  {
    v9 = v0[23];
    defaultLogger()();
    v10 = v2;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[40];
    v15 = v0[32];
    v16 = v0[27];
    v17 = v0[25];
    v19 = v0[22];
    v18 = v0[23];
    v20 = v0[21];
    if (v13)
    {
      v36 = v0[40];
      v21 = swift_slowAlloc();
      v35 = v18;
      v22 = swift_slowAlloc();
      v37 = v22;
      *v21 = 136315138;
      v34 = v20;
      v23 = [v16 deviceID];
      v33 = v17;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = sub_100141FE4(v24, v26, &v37);

      *(v21 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v11, v12, "Successfully established prearm trust with watch with pairingID: %s", v21, 0xCu);
      sub_10000BB78(v22);

      v33(v35, v34);
    }

    else
    {

      v17(v18, v20);
    }

    v29 = v0[23];
    v28 = v0[24];
    v30 = v0[20];

    v31 = v0[1];
    v32 = v0[36];

    return v31(v32, 0);
  }
}

uint64_t sub_1004BDD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *(*v5 + 344);
  v12 = *v5;
  *(*v5 + 352) = v4;

  if (v4)
  {
    v13 = sub_1004BE114;
  }

  else
  {
    v10[45] = a4;
    v10[46] = a3;
    v10[47] = a2;
    v10[48] = a1;
    v13 = sub_1004BDE50;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_1004BDE50()
{
  v42 = v0;
  v2 = v0[47];
  v1 = v0[48];
  v4 = v0[45];
  v3 = v0[46];
  v6 = v0[41];
  v5 = v0[42];
  sub_100007224(&qword_100845E48, &qword_1006E63A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006BF520;
  *(inited + 32) = v3;
  *(inited + 40) = v4;
  v8 = Data.base16EncodedString()();
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  *(inited + 64) = v8;
  v9 = sub_10003F6B4(inited);
  swift_setDeallocating();
  sub_10000BE18(inited + 32, &qword_100845E50, &qword_1006E63A8);
  sub_10000B90C(v6, v5);
  v10 = v0[27];
  v11 = v0[23];
  defaultLogger()();
  v12 = v10;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[40];
  v17 = v0[32];
  v18 = v0[27];
  v19 = v0[25];
  v20 = v0[23];
  v40 = v0[22];
  v21 = v0[21];
  if (v15)
  {
    v39 = v9;
    v22 = swift_slowAlloc();
    v38 = v20;
    v23 = swift_slowAlloc();
    v41 = v23;
    *v22 = 136315138;
    v37 = v21;
    v24 = [v18 deviceID];
    v35 = v16;
    v36 = v19;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = sub_100141FE4(v25, v27, &v41);

    *(v22 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v13, v14, "Successfully established prearm trust with watch with pairingID: %s", v22, 0xCu);
    sub_10000BB78(v23);

    v9 = v39;

    v36(v38, v37);
  }

  else
  {

    v19(v20, v21);
  }

  v30 = v0[23];
  v29 = v0[24];
  v31 = v0[20];

  v32 = v0[1];
  v33 = v0[36];

  return v32(v33, v9);
}

uint64_t sub_1004BE114()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v3 = *(v0 + 320);
  v4 = *(v0 + 288);
  v5 = *(v0 + 256);

  sub_10000B90C(v1, v2);
  v6 = *(v0 + 352);
  v8 = *(v0 + 184);
  v7 = *(v0 + 192);
  v9 = *(v0 + 160);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1004BE1CC()
{
  v1 = *(v0 + 248);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 160);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1004BE254()
{
  v1 = *(v0 + 216);

  v2 = *(v0 + 280);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 160);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1004BE2E4()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 216);

  v3 = *(v0 + 312);
  v5 = *(v0 + 184);
  v4 = *(v0 + 192);
  v6 = *(v0 + 160);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1004BE37C(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  v3 = type metadata accessor for DIPError.Code();
  v2[24] = v3;
  v4 = *(v3 - 8);
  v2[25] = v4;
  v5 = *(v4 + 64) + 15;
  v2[26] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[27] = v6;
  v7 = *(v6 - 8);
  v2[28] = v7;
  v8 = *(v7 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_1004BE4A4, 0, 0);
}

uint64_t sub_1004BE4A4()
{
  v24 = v0;
  v1 = v0[30];
  v2 = v0[23];
  defaultLogger()();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[30];
  v9 = v0[27];
  v8 = v0[28];
  if (v6)
  {
    v10 = v0[23];
    v22 = v0[30];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315138;
    v13 = [v10 deviceID];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_100141FE4(v14, v16, &v23);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Trying to generate nonce in watch with pairingID: %s", v11, 0xCu);
    sub_10000BB78(v12);

    v18 = *(v8 + 8);
    v18(v22, v9);
  }

  else
  {

    v18 = *(v8 + 8);
    v18(v7, v9);
  }

  v0[31] = v18;
  v19 = v0[23];
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1004BE718;
  v20 = swift_continuation_init();
  v0[17] = sub_100007224(&qword_100845E30, &qword_1006E6358);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1004CF424;
  v0[13] = &unk_1008141E8;
  v0[14] = v20;
  [v19 nonceForAuthorizationTokenWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004BE718()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = sub_1004BEAC0;
  }

  else
  {
    v3 = sub_1004BE828;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004BE828()
{
  v37 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
  defaultLogger()();
  v4 = v2;
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 248);
  v11 = *(v0 + 224);
  v10 = *(v0 + 232);
  v12 = *(v0 + 216);
  if (v8)
  {
    v32 = *(v0 + 184);
    v35 = *(v0 + 216);
    v13 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v13 = 136315394;
    v14 = [v5 credentialNonce];
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v9;
    v17 = v16;

    v18 = Data.description.getter();
    v33 = v10;
    v20 = v19;
    sub_10000B90C(v15, v17);
    v21 = sub_100141FE4(v18, v20, &v36);

    *(v13 + 4) = v21;
    *(v13 + 12) = 2080;
    v22 = [v32 deviceID];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = sub_100141FE4(v23, v25, &v36);

    *(v13 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v6, v7, "Successfully generated nonce in watch: %s with pairingID: %s", v13, 0x16u);
    swift_arrayDestroy();

    v34(v33, v35);
  }

  else
  {

    v9(v10, v12);
  }

  v28 = *(v0 + 232);
  v27 = *(v0 + 240);
  v29 = *(v0 + 208);
  **(v0 + 176) = v5;

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1004BEAC0()
{
  v1 = v0[32];
  v10 = v0[30];
  v11 = v0[29];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  swift_willThrow();
  _StringGuts.grow(_:)(47);
  v0[18] = 0;
  v0[19] = 0xE000000000000000;
  v5._countAndFlagsBits = 0xD00000000000002DLL;
  v5._object = 0x800000010071B1B0;
  String.append(_:)(v5);
  v0[21] = v1;
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  _print_unlocked<A, B>(_:_:)();
  v6 = v0[18];
  v7 = v0[19];
  (*(v3 + 104))(v2, enum case for DIPError.Code.unableToGenerateNonceOnWatch(_:), v4);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1004BECE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[23] = v5;
  v6 = *(v5 - 8);
  v4[24] = v6;
  v7 = *(v6 + 64) + 15;
  v4[25] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[26] = v8;
  v9 = *(v8 - 8);
  v4[27] = v9;
  v10 = *(v9 + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();

  return _swift_task_switch(sub_1004BEE10, 0, 0);
}

uint64_t sub_1004BEE10()
{
  v34 = v0;
  v1 = &v0[18];
  isa = v0[29].super.isa;
  v3 = v0[20].super.isa;
  defaultLogger()();
  v4 = v3;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[29].super.isa;
  v9 = &selRef_setSupportedEncoding_;
  v11 = v0[26].super.isa;
  v10 = v0[27].super.isa;
  if (v7)
  {
    v12 = v0[20].super.isa;
    v32 = v0[29].super.isa;
    v13 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v14 = v33;
    *v13 = 136315138;
    v15 = [(objc_class *)v12 deviceID];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = v16;
    v9 = &selRef_setSupportedEncoding_;
    v20 = sub_100141FE4(v19, v18, &v33);

    *(v13 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v5, v6, "Trying to generate prearm trust key and certificate on phone for watch with pairingID: %s", v13, 0xCu);
    sub_10000BB78(v14);
    v1 = &v0[18];

    v21 = *(v10 + 1);
    (v21)(v32, v11);
  }

  else
  {

    v21 = *(v10 + 1);
    (v21)(v8, v11);
  }

  v0[30].super.isa = v21;
  v22 = v0[20].super.isa;
  v23 = [(objc_class *)v0[22].super.isa credentialNonce];
  v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v0[31].super.isa = v27.super.isa;
  sub_10000B90C(v24, v26);
  v28 = [v22 v9[152]];
  if (!v28)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = String._bridgeToObjectiveC()();
  }

  v0[32].super.isa = v28;
  v29 = v0[21].super.isa;
  v0[2].super.isa = v0;
  v0[7].super.isa = v1;
  v0[3].super.isa = sub_1004BF11C;
  v30 = swift_continuation_init();
  v0[17].super.isa = sub_100007224(&unk_100845E60, &qword_1006E63D8);
  v0[10].super.isa = _NSConcreteStackBlock;
  v0[11].super.isa = 1107296256;
  v0[12].super.isa = sub_1004CF424;
  v0[13].super.isa = &unk_1008141C0;
  v0[14].super.isa = v30;
  [(objc_class *)v29 generatePrearmTrustCertificateWithNonce:v27.super.isa pairingID:v28 completion:&v0[10]];

  return _swift_continuation_await(&v0[2]);
}

uint64_t sub_1004BF11C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  if (v2)
  {
    v3 = sub_1004BF54C;
  }

  else
  {
    v3 = sub_1004BF22C;
  }

  return _swift_task_switch(v3, 0, 0);
}