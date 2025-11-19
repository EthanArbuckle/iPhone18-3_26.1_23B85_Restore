uint64_t sub_10006F448()
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

  return _swift_task_switch(sub_10006F570, 0, 0);
}

uint64_t sub_10006F570()
{
  v1 = v0[9];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy boundAppletPresentmentACL", v4, 2u);
  }

  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[2];

  v9 = *(v7 + 8);
  v0[10] = v9;
  v9(v5, v6);
  sub_1000710B4();
  v18 = *(v0[2] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  v0[11] = v18;
  if (v18)
  {

    v19 = swift_task_alloc();
    v0[12] = v19;
    *v19 = v0;
    v19[1] = sub_10006F8B4;

    return sub_10012D44C();
  }

  else
  {
    (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.badLogic(_:), v0[3]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v11 = v0[9];
    v10 = v0[10];
    v13 = v0[7];
    v12 = v0[8];
    v15 = v0[5];
    v14 = v0[6];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v10(v12, v14);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_10006F8B4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 96);
  v8 = *v3;
  *(*v3 + 104) = v2;

  if (v2)
  {
    v9 = sub_100064AB4;
  }

  else
  {
    *(v6 + 112) = a2;
    *(v6 + 120) = a1;
    v9 = sub_10006F9E8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10006F9E8()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[5];

  v5 = v0[1];
  v7 = v0[14];
  v6 = v0[15];

  return v5(v6, v7);
}

uint64_t sub_10006FBEC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100072D6C;

  return sub_10006F448();
}

uint64_t sub_10006FC94(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 128) = a3;
  *(v4 + 16) = a1;
  v5 = type metadata accessor for DIPError.Code();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  *(v4 + 64) = v8;
  v9 = *(v8 - 8);
  *(v4 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_10006FDC4, 0, 0);
}

uint64_t sub_10006FDC4()
{
  v1 = *(v0 + 88);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy refreshProgenitorKeyDesignations", v4, 2u);
  }

  v5 = *(v0 + 88);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 32);

  v9 = *(v7 + 8);
  *(v0 + 96) = v9;
  v9(v5, v6);
  sub_1000710B4();
  v18 = *(*(v0 + 32) + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  *(v0 + 104) = v18;
  if (v18)
  {

    v19 = swift_task_alloc();
    *(v0 + 112) = v19;
    *v19 = v0;
    v19[1] = sub_10007011C;
    v20 = *(v0 + 128);
    v22 = *(v0 + 16);
    v21 = *(v0 + 24);

    return sub_10012E30C(v22, v21, v20);
  }

  else
  {
    (*(*(v0 + 48) + 104))(*(v0 + 56), enum case for DIPError.Code.badLogic(_:), *(v0 + 40));
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v11 = *(v0 + 88);
    v10 = *(v0 + 96);
    v13 = *(v0 + 72);
    v12 = *(v0 + 80);
    v15 = *(v0 + 56);
    v14 = *(v0 + 64);
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v10(v12, v14);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_10007011C()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_100069160;
  }

  else
  {
    v3 = sub_100070230;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100070230()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10007044C(void *a1, char a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  if (a1)
  {
    v8 = a1;
    v9 = a4;
    a1 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v12 = a4;
    v11 = 0xF000000000000000;
  }

  v4[4] = a1;
  v4[5] = v11;
  v13 = swift_task_alloc();
  v4[6] = v13;
  *v13 = v4;
  v13[1] = sub_100070544;

  return sub_10006FC94(a1, v11, a2 & 1);
}

uint64_t sub_100070544()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 16);
  v9 = *v1;

  sub_10001C120(v7, v6);
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

uint64_t sub_100070704()
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

  return _swift_task_switch(sub_10007082C, 0, 0);
}

uint64_t sub_10007082C()
{
  v1 = v0[9];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy clearProgenitorKeyDesignations", v4, 2u);
  }

  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[2];

  v9 = *(v7 + 8);
  v0[10] = v9;
  v9(v5, v6);
  sub_1000710B4();
  v18 = *(v0[2] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  v0[11] = v18;
  if (v18)
  {

    v19 = swift_task_alloc();
    v0[12] = v19;
    *v19 = v0;
    v19[1] = sub_100070B74;

    return sub_10012E804();
  }

  else
  {
    (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.badLogic(_:), v0[3]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v11 = v0[9];
    v10 = v0[10];
    v13 = v0[7];
    v12 = v0[8];
    v15 = v0[5];
    v14 = v0[6];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v10(v12, v14);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_100070B74()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_100064AB4;
  }

  else
  {
    v3 = sub_100070C88;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100070C88()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[5];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100070E88(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100070F30;

  return sub_100070704();
}

uint64_t sub_100070F30()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

void sub_1000710B4()
{
  v0 = type metadata accessor for DIPError.Code();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7._countAndFlagsBits = 0xD000000000000022;
    v7._object = 0x80000001001B59D0;
    if (!NSXPCConnection.isEntitled(_:)(v7))
    {
      (*(v1 + 104))(v4, enum case for DIPError.Code.missingEntitlement(_:), v0);
      sub_10002688C(&_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }

  else
  {
    (*(v1 + 104))(v4, enum case for DIPError.Code.missingEntitlement(_:), v0);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }
}

unint64_t sub_100071394()
{
  result = qword_100201BD0;
  if (!qword_100201BD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100201BD0);
  }

  return result;
}

unint64_t sub_1000713E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10006D7FC();
}

unint64_t sub_1000713E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10013A000();
}

unint64_t sub_1000713F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100139F0C();
}

uint64_t sub_1000713FC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000105C8;

  return sub_100070E88(v2, v3);
}

uint64_t sub_1000714A8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000105C8;

  return sub_100093A84(v2, v3, v5);
}

uint64_t sub_100071568()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000105C8;

  return sub_10007044C(v2, v3, v5, v4);
}

uint64_t sub_10007162C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000105C8;

  return sub_100093B6C(a1, v4, v5, v7);
}

uint64_t sub_1000716F8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000105C8;

  return sub_10006FBEC(v2, v3);
}

uint64_t sub_1000717A4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000105C8;

  return sub_10006F3A0(v2, v3);
}

uint64_t sub_100071854()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000105C8;

  return sub_10006E848(v2, v3);
}

uint64_t sub_100071900()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000105C8;

  return sub_10006DA04(v2, v3);
}

uint64_t sub_1000719AC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000105C8;

  return sub_10006D0D4(v2, v3);
}

uint64_t sub_100071A5C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_10006C7C0(v2, v3, v4);
}

uint64_t sub_100071B10()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000105C8;

  return sub_10006BE40(v2, v3);
}

uint64_t sub_100071BBC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000105C8;

  return sub_10006B7D0(v2, v3);
}

uint64_t sub_100071C68()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_10006AEEC(v2, v3, v4);
}

uint64_t sub_100071D20()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000105C8;

  return sub_10006A078(v2, v3, v4, v5, v6);
}

uint64_t sub_100071DE8()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100071E30()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_100069424(v2, v3, v4);
}

uint64_t sub_100071EE4()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100071F3C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000105C8;

  return sub_10006876C(v2, v3, v4, v5, v6);
}

uint64_t sub_100072008()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000105C8;

  return sub_1000674B8(v2, v3, v5, v4);
}

uint64_t sub_1000720C8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000105C8;

  return sub_100066290(v2, v3);
}

uint64_t sub_100072174()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000105C8;

  return sub_10006588C(v2, v3);
}

uint64_t sub_100072220()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000104D4;

  return sub_100064D64(v2, v3);
}

uint64_t sub_1000722CC()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10007231C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000105C8;

  return sub_100064148(v2, v3, v5, v4);
}

uint64_t sub_1000723E0()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100072428()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000105C8;

  return sub_100063110(v2, v3, v5, v4);
}

uint64_t sub_1000724E8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000105C8;

  return sub_1000626DC(v2, v3);
}

uint64_t sub_100072594()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000725D4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000105C8;

  return sub_100061FB8(v2, v3);
}

uint64_t sub_100072680()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

id sub_1000726C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage;
  *&v3[OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage] = 0;
  defaultLogger()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23 = v10;
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Creating BiometricStoreSessionProxy", v13, 2u);
    v10 = v23;
  }

  (*(v6 + 8))(v9, v5);
  result = os_transaction_create();
  if (result)
  {
    *&v3[OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_jetsamTransaction] = result;
    swift_unknownObjectWeakAssign();

    v15 = sub_10009AE54();
    v16 = type metadata accessor for BiometricsHelper();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    v19 = BiometricsHelper.init()();
    v26 = type metadata accessor for DeviceInformationProvider();
    v27 = &protocol witness table for DeviceInformationProvider;
    sub_10001A9A4(&v25);
    DeviceInformationProvider.init()();
    type metadata accessor for BiometricStorage();
    v20 = swift_allocObject();
    v20[2] = a2;
    v20[8] = v15;
    type metadata accessor for AppleIDVManager();
    sub_1000215BC(v20 + 3);
    v20[9] = v19;
    sub_10001AA08(&v25, (v20 + 10));
    v21 = *&v3[v10];
    *&v3[v10] = v20;

    v22 = type metadata accessor for BiometricStoreSessionProxy();
    v24.receiver = v3;
    v24.super_class = v22;
    return objc_msgSendSuper2(&v24, "init");
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100072934(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = [v9 processIdentifier];

    _os_log_impl(&_mh_execute_header, v10, v11, "Biometric store listener connection received from %d", v12, 8u);
  }

  else
  {

    v10 = v9;
  }

  (*(v5 + 8))(v8, v4);
  v13 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___DCBiometricStoreXPCProtocol];
  [v9 setExportedInterface:v13];

  v14 = *(v2 + OBJC_IVAR____TtC7idcredd22BiometricStoreListener_dataContainer);
  v15 = objc_allocWithZone(type metadata accessor for BiometricStoreSessionProxy());
  v16 = v9;

  v17 = sub_1000726C0(v16, v14);

  [v16 setExportedObject:v17];

  v25 = sub_100061554;
  v26 = 0;
  aBlock = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_10008E148;
  v24 = &unk_1001F5D08;
  v18 = _Block_copy(&aBlock);
  [v16 setInvalidationHandler:v18];
  _Block_release(v18);
  v25 = sub_100061560;
  v26 = 0;
  aBlock = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_10008E148;
  v24 = &unk_1001F5D30;
  v19 = _Block_copy(&aBlock);
  [v16 setInterruptionHandler:v19];
  _Block_release(v19);
  [v16 resume];
  return 1;
}

uint64_t sub_100072C60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

NSObject *sub_100072D80(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(NSXPCListener);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithMachServiceName:v9];

  *&v1[OBJC_IVAR____TtC7idcredd23CredentialStoreListener_xpcListener] = v10;
  *&v1[OBJC_IVAR____TtC7idcredd23CredentialStoreListener_dataContainer] = a1;
  v11 = type metadata accessor for CredentialStoreListener();
  v20.receiver = v1;
  v20.super_class = v11;

  v12 = objc_msgSendSuper2(&v20, "init");
  v13 = OBJC_IVAR____TtC7idcredd23CredentialStoreListener_xpcListener;
  v14 = *&v12[OBJC_IVAR____TtC7idcredd23CredentialStoreListener_xpcListener];
  v15 = v12;
  [v14 setDelegate:v15];
  [*&v12[v13] resume];
  defaultLogger()();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Credential store listener is started", v18, 2u);
  }

  else
  {

    v16 = v15;
  }

  (*(v4 + 8))(v7, v3);
  return v15;
}

id sub_100072FAC()
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
    _os_log_impl(&_mh_execute_header, v7, v8, "Credential store listener is tearing down", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  [*&v1[OBJC_IVAR____TtC7idcredd23CredentialStoreListener_xpcListener] invalidate];
  v10 = type metadata accessor for CredentialStoreListener();
  v12.receiver = v1;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, "dealloc");
}

uint64_t sub_1000731AC(const char *a1)
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

id sub_10007339C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Destroying CredentialStoreSessionProxy", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = type metadata accessor for CredentialStoreSessionProxy();
  v12.receiver = v1;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, "dealloc");
}

uint64_t sub_100073630(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v8 = type metadata accessor for Logger();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_100073768, 0, 0);
}

uint64_t sub_100073768()
{
  v48 = v0;
  v1 = v0[13];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStoreSessionProxy createCredential", v4, 2u);
  }

  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[9];
  v8 = v0[10];
  v9 = v0[3];
  v10 = v0[4];

  v11 = *(v8 + 8);
  v0[14] = v11;
  v11(v5, v7);
  defaultLogger()();
  v12 = v10;

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = v0[3];
    v16 = v0[4];
    v17 = v0[2];
    v18 = swift_slowAlloc();
    v47[0] = swift_slowAlloc();
    *v18 = 136315394;
    *(v18 + 4) = sub_10010150C(v17, v15, v47);
    *(v18 + 12) = 2080;
    if (v16)
    {
      v19 = [v12 description];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;
    }

    else
    {
      v22 = 0xE500000000000000;
      v20 = 0x3E6C696E3CLL;
    }

    v46 = v0[12];
    v29 = v0[9];
    v28 = v0[10];
    v30 = sub_10010150C(v20, v22, v47);

    *(v18 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v13, v14, "create credential options: partition = %s, options = (%s)", v18, 0x16u);
    swift_arrayDestroy();

    v26 = v46;
    v27 = v29;
  }

  else
  {
    v23 = v0[12];
    v24 = v0[9];
    v25 = v0[10];

    v26 = v23;
    v27 = v24;
  }

  v11(v26, v27);
  v31 = v0[5];
  sub_100086094();
  v41 = *(v0[5] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v0[15] = v41;
  if (v41)
  {

    v42 = swift_task_alloc();
    v0[16] = v42;
    *v42 = v0;
    v42[1] = sub_100073C8C;
    v43 = v0[3];
    v44 = v0[4];
    v45 = v0[2];

    return sub_10014687C(v45, v43, v44);
  }

  else
  {
    (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.badLogic(_:), v0[6]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v33 = v0[13];
    v32 = v0[14];
    v34 = v0[11];
    v35 = v0[12];
    v36 = v0[9];
    v37 = v0[10];
    v38 = v0[8];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v32(v34, v36);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v39 = v0[1];

    return v39();
  }
}

uint64_t sub_100073C8C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 128);
  v8 = *v3;
  *(*v3 + 136) = v2;

  if (v2)
  {
    v9 = sub_100073E5C;
  }

  else
  {
    *(v6 + 144) = a2;
    *(v6 + 152) = a1;
    v9 = sub_100073DC0;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100073DC0()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];
  v5 = v0[8];

  v6 = v0[1];
  v8 = v0[18];
  v7 = v0[19];

  return v6(v7, v8);
}

uint64_t sub_100073E5C()
{
  v1 = v0[15];

  v2 = v0[17];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[10];
  v9 = v0[8];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v3(v5, v7);
  sub_10005684C(0, &qword_100201BD0, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_10007414C(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[5] = v8;
  v10 = a2;
  a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_100074238;

  return sub_100073630(v7, v9, a2);
}

uint64_t sub_100074238()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    v10 = v9;
    v11 = 0;
  }

  else
  {
    v12 = String._bridgeToObjectiveC()();

    v11 = v12;
    v10 = 0;
    v9 = v12;
  }

  v13 = *(v3 + 32);
  (v13)[2](v13, v11, v10);

  _Block_release(v13);
  v14 = *(v8 + 8);

  return v14();
}

uint64_t sub_100074404(uint64_t a1, uint64_t a2)
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
  v7 = type metadata accessor for Logger();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100074530, 0, 0);
}

uint64_t sub_100074530()
{
  v28 = v0;
  v1 = v0[11];
  v2 = v0[3];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  if (v5)
  {
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10010150C(v10, v9, &v27);
    _os_log_impl(&_mh_execute_header, v3, v4, "CredentialStoreSessionProxy generateKeySigningKey for credential identifier %s", v11, 0xCu);
    sub_100005090(v12);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  v0[12] = v13;
  v14 = v0[4];
  sub_100086094();
  v23 = *(v0[4] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v0[13] = v23;
  if (v23)
  {

    v24 = swift_task_alloc();
    v0[14] = v24;
    *v24 = v0;
    v24[1] = sub_1000748FC;
    v26 = v0[2];
    v25 = v0[3];

    return sub_10016C268(v26, v25);
  }

  else
  {
    (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.badLogic(_:), v0[5]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v16 = v0[11];
    v15 = v0[12];
    v18 = v0[9];
    v17 = v0[10];
    v20 = v0[7];
    v19 = v0[8];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v15(v17, v19);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_1000748FC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v7 = sub_100074AB4;
  }

  else
  {
    *(v4 + 128) = a1;
    v7 = sub_100074A24;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100074A24()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[7];

  v5 = v0[1];
  v6 = v0[16];

  return v5(v6);
}

uint64_t sub_100074AB4()
{
  v1 = v0[13];

  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[7];
  v8 = v0[8];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v3(v5, v8);
  sub_10005684C(0, &qword_100201BD0, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_100074D88(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_100074E5C;

  return sub_100074404(v5, v7);
}

uint64_t sub_100074E5C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (v10)[2](v10, 0, v11);

    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 24), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_100075018(uint64_t a1, uint64_t a2)
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
  v7 = type metadata accessor for Logger();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100075144, 0, 0);
}

uint64_t sub_100075144()
{
  v33 = v0;
  v1 = v0[11];
  v2 = v0[3];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  if (v5)
  {
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v32 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10010150C(v10, v9, &v32);
    _os_log_impl(&_mh_execute_header, v3, v4, "CredentialStoreSessionProxy isAccountKeySigningKeyAvailable for accountKeyIdentifier %s", v11, 0xCu);
    sub_100005090(v12);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  v14 = v0[4];
  sub_100086094();
  v20 = v0[4];
  v21 = *(v20 + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  if (v21)
  {
    v23 = v0[10];
    v22 = v0[11];
    v24 = v0[7];
    v25 = v0[2];
    v26 = v0[3];
    v27 = *(v21 + 112);
    v28 = *(v20 + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);

    LOBYTE(v27) = sub_100030494(v25, v26);

    v29 = v0[1];
    v30 = v27 & 1;
  }

  else
  {
    (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.badLogic(_:), v0[5]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v15 = v0[10];
    v16 = v0[11];
    v17 = v0[8];
    v18 = v0[9];
    v19 = v0[7];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v13(v15, v17);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v29 = v0[1];
    v30 = 0;
  }

  return v29(v30);
}

uint64_t sub_10007566C(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_100075740;

  return sub_100075018(v5, v7);
}

uint64_t sub_100075740(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 32);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 24);
  if (v3)
  {
    v12 = _convertErrorToNSError(_:)();

    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    (*(v11 + 16))(*(v5 + 24), a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v13 = *(v10 + 8);

  return v13();
}

uint64_t sub_1000758F4(uint64_t a1, uint64_t a2)
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
  v7 = type metadata accessor for Logger();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100075A20, 0, 0);
}

uint64_t sub_100075A20()
{
  v39 = v0;
  v1 = v0[11];
  v2 = v0[3];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  if (v5)
  {
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v38 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10010150C(v10, v9, &v38);
    _os_log_impl(&_mh_execute_header, v3, v4, "CredentialStoreSessionProxy createAccountKeySigningKey for accountKeyIdentifier: %s", v11, 0xCu);
    sub_100005090(v12);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  v14 = v0[4];
  sub_100086094();
  v22 = v0[4];
  v23 = *(v22 + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  if (v23)
  {
    v24 = v0[2];
    v25 = v0[3];
    v26 = *(v23 + 112);
    v27 = *(v22 + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);

    v28 = sub_10002F210(v24, v25);
    v30 = v28;
    v31 = v29;
    v32 = sub_100156958(v28, v29);
    v33 = v0[10];
    v34 = v0[11];
    v35 = v0[7];
    v36 = v32;
    sub_1000092BC(v30, v31);

    v37 = v0[1];

    return v37(v36);
  }

  else
  {
    (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.badLogic(_:), v0[5]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v15 = v0[10];
    v16 = v0[11];
    v17 = v0[8];
    v18 = v0[9];
    v19 = v0[7];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v13(v15, v17);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_100075FD0(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10008E128;

  return sub_1000758F4(v5, v7);
}

uint64_t sub_1000760A4(uint64_t a1, uint64_t a2)
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
  v7 = type metadata accessor for Logger();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000761D0, 0, 0);
}

uint64_t sub_1000761D0()
{
  v38 = v0;
  v1 = v0[11];
  v2 = v0[3];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  if (v5)
  {
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v37 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10010150C(v10, v9, &v37);
    _os_log_impl(&_mh_execute_header, v3, v4, "retrieveAccountKeySigningKey for label: %s", v11, 0xCu);
    sub_100005090(v12);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  v14 = v0[4];
  sub_100086094();
  v15 = v0[4];
  v16 = *(v15 + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  if (!v16)
  {
    (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.badLogic(_:), v0[5]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_9;
  }

  v17 = v0[2];
  v18 = v0[3];
  v19 = *(v16 + 112);
  v20 = *(v15 + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);

  v21 = sub_10002F8D8(v17, v18);
  if (v22 >> 60 == 15)
  {
    (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.accountKeySigningKeyDoesntExist(_:), v0[5]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

LABEL_9:
    v23 = v0[10];
    v24 = v0[11];
    v25 = v0[8];
    v26 = v0[9];
    v27 = v0[7];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v13(v23, v25);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v28 = v0[1];

    return v28();
  }

  v30 = v21;
  v31 = v22;
  v32 = sub_100156958(v21, v22);

  sub_10001C120(v30, v31);
  v34 = v0[10];
  v33 = v0[11];
  v35 = v0[7];

  v36 = v0[1];

  return v36(v32);
}

uint64_t sub_100076844(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10008E128;

  return sub_1000760A4(v5, v7);
}

uint64_t sub_100076918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_100076A48, 0, 0);
}

uint64_t sub_100076A48()
{
  v30 = v0;
  v1 = v0[13];
  v2 = v0[3];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[11];
  if (v5)
  {
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10010150C(v10, v9, &v29);
    _os_log_impl(&_mh_execute_header, v3, v4, "CredentialStoreSessionProxy generateAccountKeyAuthorization for credential identifier %s", v11, 0xCu);
    sub_100005090(v12);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  v0[14] = v13;
  v14 = v0[6];
  sub_100086094();
  v23 = *(v0[6] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v0[15] = v23;
  if (v23)
  {

    v24 = swift_task_alloc();
    v0[16] = v24;
    *v24 = v0;
    v24[1] = sub_100076E1C;
    v26 = v0[4];
    v25 = v0[5];
    v27 = v0[2];
    v28 = v0[3];

    return sub_100154238(v26, v25, v27, v28);
  }

  else
  {
    (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.badLogic(_:), v0[7]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v16 = v0[13];
    v15 = v0[14];
    v18 = v0[11];
    v17 = v0[12];
    v20 = v0[9];
    v19 = v0[10];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v15(v17, v19);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_100076E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *(*v5 + 128);
  v12 = *v5;
  *(*v5 + 136) = v4;

  if (v4)
  {
    v13 = sub_100076FF8;
  }

  else
  {
    v10[18] = a4;
    v10[19] = a3;
    v10[20] = a2;
    v10[21] = a1;
    v13 = sub_100076F64;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_100076F64()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[9];

  v5 = v0[1];
  v7 = v0[20];
  v6 = v0[21];
  v9 = v0[18];
  v8 = v0[19];

  return v5(v6, v7, v8, v9);
}

uint64_t sub_100076FF8()
{
  v1 = v0[15];

  v2 = v0[17];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[9];
  v8 = v0[10];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v3(v5, v8);
  sub_10005684C(0, &qword_100201BD0, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000772D4(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v4[4] = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_1000773D0;

  return sub_100076918(v6, v8, v9, v11);
}

uint64_t sub_1000773D0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v4;
  v10 = *v5;
  v11 = *(*v5 + 48);
  v12 = *(*v5 + 40);
  v13 = *(*v5 + 32);
  v14 = *(*v5 + 16);
  v15 = *v5;

  v16 = *(v10 + 24);
  if (v6)
  {
    v17 = _convertErrorToNSError(_:)();

    (v16)[2](v16, 0, 0, v17);

    _Block_release(v16);
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    v19 = Data._bridgeToObjectiveC()().super.isa;
    (v16)[2](v16, isa, v19, 0);

    _Block_release(v16);
    sub_1000092BC(a1, a2);
    sub_1000092BC(a3, a4);
  }

  v20 = *(v15 + 8);

  return v20();
}

uint64_t sub_10007760C(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v8 = type metadata accessor for Logger();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_100077738, 0, 0);
}

uint64_t sub_100077738()
{
  v35 = v0;
  v1 = v0[12];
  v2 = v0[3];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  v8 = v0[9];
  v7 = v0[10];
  if (v5)
  {
    v10 = v0[3];
    v9 = v0[4];
    v11 = v0[2];
    v33 = v0[12];
    v12 = swift_slowAlloc();
    v34[0] = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_10010150C(v11, v10, v34);
    *(v12 + 12) = 2080;
    v13 = DCCredentialDeviceEncryptionKeyTypeToString();
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_10010150C(v14, v16, v34);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "CredentialStoreSessionProxy generateDeviceEncryptionKey for credential identifier %s, keyType = %s", v12, 0x16u);
    swift_arrayDestroy();

    v18 = *(v7 + 8);
    v18(v33, v8);
  }

  else
  {

    v18 = *(v7 + 8);
    v18(v6, v8);
  }

  v0[13] = v18;
  v19 = v0[5];
  sub_100086094();
  v28 = *(v0[5] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v0[14] = v28;
  if (v28)
  {

    v29 = swift_task_alloc();
    v0[15] = v29;
    *v29 = v0;
    v29[1] = sub_100077B80;
    v30 = v0[3];
    v31 = v0[4];
    v32 = v0[2];

    return sub_100166410(v32, v30, v31);
  }

  else
  {
    (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.badLogic(_:), v0[6]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v21 = v0[12];
    v20 = v0[13];
    v23 = v0[10];
    v22 = v0[11];
    v25 = v0[8];
    v24 = v0[9];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v20(v22, v24);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_100077B80(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = sub_10008DF64;
  }

  else
  {
    *(v4 + 136) = a1;
    v7 = sub_10008E134;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100077E34(int a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[4] = v8;
  a4;
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_10008E128;

  return sub_10007760C(v7, v9, a2);
}

uint64_t sub_100077F18(uint64_t a1, uint64_t a2)
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
  v7 = type metadata accessor for Logger();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100078044, 0, 0);
}

uint64_t sub_100078044()
{
  v28 = v0;
  v1 = v0[11];
  v2 = v0[3];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  if (v5)
  {
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10010150C(v10, v9, &v27);
    _os_log_impl(&_mh_execute_header, v3, v4, "CredentialStoreSessionProxy generatePresentmentKey for credential identifier %s", v11, 0xCu);
    sub_100005090(v12);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  v0[12] = v13;
  v14 = v0[4];
  sub_100086094();
  v23 = *(v0[4] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v0[13] = v23;
  if (v23)
  {

    v24 = swift_task_alloc();
    v0[14] = v24;
    *v24 = v0;
    v24[1] = sub_100078414;
    v26 = v0[2];
    v25 = v0[3];

    return sub_10019057C(v26, v25);
  }

  else
  {
    (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.badLogic(_:), v0[5]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v16 = v0[11];
    v15 = v0[12];
    v18 = v0[9];
    v17 = v0[10];
    v20 = v0[7];
    v19 = v0[8];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v15(v17, v19);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_100078414(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v7 = sub_10008DF60;
  }

  else
  {
    *(v4 + 128) = a1;
    v7 = sub_10008E130;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000786C4(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10008E128;

  return sub_100077F18(v5, v7);
}

uint64_t sub_100078798(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v8 = type metadata accessor for Logger();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000788C4, 0, 0);
}

uint64_t sub_1000788C4()
{
  v31 = v0;
  v1 = v0[12];
  v2 = v0[3];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[10];
  if (v5)
  {
    v29 = v0[12];
    v10 = v0[3];
    v9 = v0[4];
    v11 = v0[2];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v13;
    *v12 = 134218242;
    *(v12 + 4) = v9;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_10010150C(v11, v10, &v30);
    _os_log_impl(&_mh_execute_header, v3, v4, "CredentialStoreSessionProxy generatePresentmentKeys numKeys=%ld for credential identifier %s", v12, 0x16u);
    sub_100005090(v13);

    v14 = *(v8 + 8);
    v14(v29, v7);
  }

  else
  {

    v14 = *(v8 + 8);
    v14(v6, v7);
  }

  v0[13] = v14;
  v15 = v0[5];
  sub_100086094();
  v24 = *(v0[5] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v0[14] = v24;
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_100077B80;
    v26 = v0[3];
    v27 = v0[4];
    v28 = v0[2];

    return sub_100190C18(v28, v26, v27);
  }

  else
  {
    (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.badLogic(_:), v0[6]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v17 = v0[12];
    v16 = v0[13];
    v19 = v0[10];
    v18 = v0[11];
    v21 = v0[8];
    v20 = v0[9];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v16(v18, v20);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_100078E4C(int a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[4] = v8;
  a4;
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_100078F30;

  return sub_100078798(v7, v9, a2);
}

uint64_t sub_100078F30()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    sub_10005684C(0, &qword_100201D08, DCCredentialCryptoKey_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = isa;
    v9 = 0;
    v8 = isa;
  }

  v12 = *(v3 + 24);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t sub_1000790F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_100079220, 0, 0);
}

uint64_t sub_100079220()
{
  v30 = v0;
  v1 = v0[13];
  v2 = v0[3];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[11];
  if (v5)
  {
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10010150C(v10, v9, &v29);
    _os_log_impl(&_mh_execute_header, v3, v4, "CredentialStoreSessionProxy authorizeDeviceKeySigningKey with credential identifier %s", v11, 0xCu);
    sub_100005090(v12);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  v0[14] = v13;
  v14 = v0[6];
  sub_100086094();
  v23 = *(v0[6] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v0[15] = v23;
  if (v23)
  {

    v24 = swift_task_alloc();
    v0[16] = v24;
    *v24 = v0;
    v24[1] = sub_1000795F4;
    v25 = v0[4];
    v26 = v0[5];
    v28 = v0[2];
    v27 = v0[3];

    return sub_100155B24(v28, v27, v25, v26);
  }

  else
  {
    (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.badLogic(_:), v0[7]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v16 = v0[13];
    v15 = v0[14];
    v18 = v0[11];
    v17 = v0[12];
    v20 = v0[9];
    v19 = v0[10];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v15(v17, v19);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_1000795F4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 128);
  v8 = *v3;
  *(*v3 + 136) = v2;

  if (v2)
  {
    v9 = sub_100076FF8;
  }

  else
  {
    *(v6 + 144) = a2;
    *(v6 + 152) = a1;
    v9 = sub_100079728;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100079728()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[9];

  v5 = v0[1];
  v7 = v0[18];
  v6 = v0[19];

  return v5(v6, v7);
}

uint64_t sub_100079948(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v4[4] = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_100079A44;

  return sub_1000790F0(v6, v8, v9, v11);
}

uint64_t sub_100079A44(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 48);
  v9 = *(*v3 + 40);
  v10 = *(*v3 + 32);
  v11 = *(*v3 + 16);
  v12 = *v3;

  if (v4)
  {
    v13 = _convertErrorToNSError(_:)();

    v14 = v13;
    v15 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000092BC(a1, a2);
    v15 = isa;
    v14 = 0;
    v13 = isa;
  }

  v17 = *(v7 + 24);
  (v17)[2](v17, v15, v14);

  _Block_release(v17);
  v18 = *(v12 + 8);

  return v18();
}

uint64_t sub_100079C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_100079D48, 0, 0);
}

uint64_t sub_100079D48()
{
  v30 = v0;
  v1 = v0[13];
  v2 = v0[3];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[11];
  if (v5)
  {
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10010150C(v10, v9, &v29);
    _os_log_impl(&_mh_execute_header, v3, v4, "CredentialStoreSessionProxy authorizeRemoteKeySigningKey with credential identifier %s", v11, 0xCu);
    sub_100005090(v12);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  v0[14] = v13;
  v14 = v0[6];
  sub_100086094();
  v23 = *(v0[6] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v0[15] = v23;
  if (v23)
  {

    v24 = swift_task_alloc();
    v0[16] = v24;
    *v24 = v0;
    v24[1] = sub_10007A120;
    v25 = v0[4];
    v26 = v0[5];
    v28 = v0[2];
    v27 = v0[3];

    return sub_10016DB98(v28, v27, v25, v26);
  }

  else
  {
    (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.badLogic(_:), v0[7]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v16 = v0[13];
    v15 = v0[14];
    v18 = v0[11];
    v17 = v0[12];
    v20 = v0[9];
    v19 = v0[10];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v15(v17, v19);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_10007A120(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 128);
  v8 = *v3;
  *(*v3 + 136) = v2;

  if (v2)
  {
    v9 = sub_10008DF68;
  }

  else
  {
    *(v6 + 144) = a2;
    *(v6 + 152) = a1;
    v9 = sub_10008E140;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10007A3E4(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[4] = v8;
  v10 = a2;
  a4;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v4[5] = v11;
  v4[6] = v13;
  v14 = swift_task_alloc();
  v4[7] = v14;
  *v14 = v4;
  v14[1] = sub_10007A4E8;

  return sub_100079C18(v7, v9, v11, v13);
}

uint64_t sub_10007A4E8(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v8 = *v3;
  v7 = *v3;
  v9 = *(*v3 + 56);
  v10 = *(*v3 + 16);
  v11 = *v3;

  v12 = v7[4];
  sub_1000092BC(v7[5], v7[6]);

  if (v4)
  {
    isa = _convertErrorToNSError(_:)();

    v14 = isa;
    v15 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000092BC(a1, a2);
    v15 = isa;
    v14 = 0;
  }

  v16 = v8[3];
  (v16)[2](v16, v15, v14);

  _Block_release(v16);
  v17 = *(v11 + 8);

  return v17();
}

uint64_t sub_10007A6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_10007A7F8, 0, 0);
}

uint64_t sub_10007A7F8()
{
  v37 = v0;
  v1 = v0[13];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  defaultLogger()();

  sub_100009708(v3, v2);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  sub_1000092BC(v3, v2);
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[13];
  v10 = v0[10];
  v9 = v0[11];
  if (v7)
  {
    v12 = v0[4];
    v11 = v0[5];
    v35 = v0[13];
    v13 = v0[2];
    v14 = v0[3];
    v34 = v0[10];
    v15 = swift_slowAlloc();
    v36[0] = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_10010150C(v13, v14, v36);
    *(v15 + 12) = 2080;
    v16 = Data.base16EncodedString()();
    v17 = sub_10010150C(v16._countAndFlagsBits, v16._object, v36);

    *(v15 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "CredentialStoreSessionProxy associateExternalPresentmentKey with credential identifier %s public key identifier %s", v15, 0x16u);
    swift_arrayDestroy();

    v18 = *(v9 + 8);
    v18(v35, v34);
  }

  else
  {

    v18 = *(v9 + 8);
    v18(v8, v10);
  }

  v0[14] = v18;
  v19 = v0[6];
  sub_100086094();
  v28 = *(v0[6] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v0[15] = v28;
  if (v28)
  {

    v29 = swift_task_alloc();
    v0[16] = v29;
    *v29 = v0;
    v29[1] = sub_10007AC44;
    v30 = v0[4];
    v31 = v0[5];
    v33 = v0[2];
    v32 = v0[3];

    return sub_100193E2C(v33, v32, v30, v31);
  }

  else
  {
    (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.badLogic(_:), v0[7]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v21 = v0[13];
    v20 = v0[14];
    v23 = v0[11];
    v22 = v0[12];
    v25 = v0[9];
    v24 = v0[10];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v20(v22, v24);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_10007AC44()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_10008DF68;
  }

  else
  {
    v3 = sub_10008DF70;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10007AEE8(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[4] = v8;
  v10 = a2;
  a4;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v4[5] = v11;
  v4[6] = v13;
  v14 = swift_task_alloc();
  v4[7] = v14;
  *v14 = v4;
  v14[1] = sub_10008E144;

  return sub_10007A6C8(v7, v9, v11, v13);
}

uint64_t sub_10007AFEC(uint64_t a1, uint64_t a2)
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
  v7 = type metadata accessor for Logger();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_10007B118, 0, 0);
}

uint64_t sub_10007B118()
{
  v31 = v0;
  v1 = v0[11];
  v3 = v0[2];
  v2 = v0[3];
  defaultLogger()();
  sub_100009708(v3, v2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  sub_1000092BC(v3, v2);
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  v8 = v0[8];
  v9 = v0[9];
  if (v6)
  {
    v11 = v0[2];
    v10 = v0[3];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v13;
    *v12 = 136315138;
    v14 = Data.base16EncodedString()();
    v15 = sub_10010150C(v14._countAndFlagsBits, v14._object, &v30);

    *(v12 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "CredentialStoreSessionProxy credentialIdentifiersForPublicKeyIdentifier with public key identifier %s", v12, 0xCu);
    sub_100005090(v13);
  }

  v16 = *(v9 + 8);
  v16(v7, v8);
  v0[12] = v16;
  v17 = v0[4];
  sub_100086094();
  v26 = *(v0[4] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v0[13] = v26;
  if (v26)
  {

    v27 = swift_task_alloc();
    v0[14] = v27;
    *v27 = v0;
    v27[1] = sub_100078414;
    v29 = v0[2];
    v28 = v0[3];

    return sub_100194314(v29, v28);
  }

  else
  {
    (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.badLogic(_:), v0[5]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v19 = v0[11];
    v18 = v0[12];
    v21 = v0[9];
    v20 = v0[10];
    v23 = v0[7];
    v22 = v0[8];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v18(v20, v22);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_10007B68C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v3[4] = v7;
  v3[5] = v9;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_10007B768;

  return sub_10007AFEC(v7, v9);
}

uint64_t sub_10007B768()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 16);
  v7 = *v1;

  sub_1000092BC(*(v3 + 32), *(v3 + 40));
  if (v2)
  {
    isa = _convertErrorToNSError(_:)();

    v9 = isa;
    v10 = 0;
  }

  else
  {
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = isa;
    v9 = 0;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v10, v9);

  _Block_release(v11);
  v12 = *(v7 + 8);

  return v12();
}

uint64_t sub_10007B920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();

  return _swift_task_switch(sub_10007BA50, 0, 0);
}

uint64_t sub_10007BA50()
{
  v37 = v0;
  v1 = v0[14];
  v2 = v0[3];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  if (v5)
  {
    v9 = v0[6];
    v11 = v0[2];
    v10 = v0[3];
    v35 = v0[14];
    v12 = swift_slowAlloc();
    v36[0] = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_10010150C(v11, v10, v36);
    *(v12 + 12) = 2080;
    v13 = DCCredentialPayloadFormatToString();
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_10010150C(v14, v16, v36);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "CredentialStoreSessionProxy replacePayload for credential identifier %s (format = %s)", v12, 0x16u);
    swift_arrayDestroy();

    v18 = *(v7 + 8);
    v18(v35, v8);
  }

  else
  {

    v18 = *(v7 + 8);
    v18(v6, v8);
  }

  v0[15] = v18;
  v19 = v0[7];
  sub_100086094();
  v28 = *(v0[7] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v0[16] = v28;
  if (v28)
  {

    v29 = swift_task_alloc();
    v0[17] = v29;
    *v29 = v0;
    v29[1] = sub_10007BE9C;
    v30 = v0[5];
    v31 = v0[6];
    v32 = v0[3];
    v33 = v0[4];
    v34 = v0[2];

    return sub_100175394(v34, v32, v33, v30, v31);
  }

  else
  {
    (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.badLogic(_:), v0[8]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v21 = v0[14];
    v20 = v0[15];
    v23 = v0[12];
    v22 = v0[13];
    v25 = v0[10];
    v24 = v0[11];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v20(v22, v24);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_10007BE9C()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_10008DF6C;
  }

  else
  {
    v3 = sub_10008DF74;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10007C150(int a1, void *a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v5[4] = v10;
  v12 = a2;
  a5;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v5[5] = v13;
  v5[6] = v15;
  v16 = swift_task_alloc();
  v5[7] = v16;
  *v16 = v5;
  v16[1] = sub_10008E144;

  return sub_10007B920(v9, v11, v13, v15, a3);
}

uint64_t sub_10007C268(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_10007C390, 0, 0);
}

uint64_t sub_10007C390()
{
  v29 = v0;
  v1 = v0[10];
  v2 = v0[2];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  v7 = v0[7];
  v8 = v0[8];
  if (v5)
  {
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v10 = 136446210;
    v12 = Array.description.getter();
    v14 = sub_10010150C(v12, v13, &v28);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "CredentialStoreSessionProxy credentialIdentifiers, partitions = %{public}s", v10, 0xCu);
    sub_100005090(v11);
  }

  v15 = *(v8 + 8);
  v15(v6, v7);
  v0[11] = v15;
  v16 = v0[3];
  sub_100086094();
  v25 = *(v0[3] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v0[12] = v25;
  if (v25)
  {

    v26 = swift_task_alloc();
    v0[13] = v26;
    *v26 = v0;
    v26[1] = sub_10007C770;
    v27 = v0[2];

    return sub_100145A04(v27);
  }

  else
  {
    (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.badLogic(_:), v0[4]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v18 = v0[10];
    v17 = v0[11];
    v20 = v0[8];
    v19 = v0[9];
    v22 = v0[6];
    v21 = v0[7];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v17(v19, v21);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_10007C770(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = sub_10007C928;
  }

  else
  {
    *(v4 + 120) = a1;
    v7 = sub_10007C898;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10007C898()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[6];

  v5 = v0[1];
  v6 = v0[15];

  return v5(v6);
}

uint64_t sub_10007C928()
{
  v1 = v0[12];

  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  v8 = v0[7];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v3(v5, v8);
  sub_10005684C(0, &qword_100201BD0, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_10007CBFC(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_10007CCD0;

  return sub_10007C268(v5);
}

uint64_t sub_10007CCD0()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    sub_100004E70(&qword_100201580, &qword_1001AB980);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v10 = isa;
    v9 = 0;
    v8 = isa;
  }

  v12 = *(v3 + 24);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t sub_10007CE9C(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v8 = type metadata accessor for Logger();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_10007CFC8, 0, 0);
}

uint64_t sub_10007CFC8()
{
  v31 = v0;
  v1 = v0[12];
  v2 = v0[2];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[10];
  if (v5)
  {
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 136446210;
    v12 = Array.description.getter();
    v14 = sub_10010150C(v12, v13, &v30);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "CredentialStoreSessionProxy credentialIdentifiersDocType, partitions = %{public}s", v10, 0xCu);
    sub_100005090(v11);
  }

  v15 = *(v8 + 8);
  v15(v6, v7);
  v0[13] = v15;
  v16 = v0[5];
  sub_100086094();
  v25 = *(v0[5] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v0[14] = v25;
  if (v25)
  {

    v26 = swift_task_alloc();
    v0[15] = v26;
    *v26 = v0;
    v26[1] = sub_10007D3B4;
    v27 = v0[3];
    v28 = v0[4];
    v29 = v0[2];

    return sub_1001472A8(v29, v27, v28);
  }

  else
  {
    (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.badLogic(_:), v0[6]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v18 = v0[12];
    v17 = v0[13];
    v20 = v0[10];
    v19 = v0[11];
    v22 = v0[8];
    v21 = v0[9];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v17(v19, v21);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_10007D3B4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = sub_10007D56C;
  }

  else
  {
    *(v4 + 136) = a1;
    v7 = sub_10007D4DC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10007D4DC()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[8];

  v5 = v0[1];
  v6 = v0[17];

  return v5(v6);
}

uint64_t sub_10007D56C()
{
  v1 = v0[14];

  v2 = v0[16];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v3(v5, v8);
  sub_10005684C(0, &qword_100201BD0, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_10007D848(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4[4] = v6;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[5] = v8;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_10007D944;

  return sub_10007CE9C(v6, v7, v9);
}

uint64_t sub_10007D944()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 16);
  v8 = *v1;

  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    v10 = v9;
    v11 = 0;
  }

  else
  {
    sub_100004E70(&qword_100201580, &qword_1001AB980);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v11 = isa;
    v10 = 0;
    v9 = isa;
  }

  v13 = *(v3 + 24);
  (v13)[2](v13, v11, v10);

  _Block_release(v13);
  v14 = *(v8 + 8);

  return v14();
}

uint64_t sub_10007DB2C(uint64_t a1, uint64_t a2)
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
  v7 = type metadata accessor for Logger();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_10007DC58, 0, 0);
}

uint64_t sub_10007DC58()
{
  v30 = v0;
  v1 = v0[11];
  v2 = v0[2];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  if (v5)
  {
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29 = v11;
    *v10 = 136446210;
    v12 = Array.description.getter();
    v14 = sub_10010150C(v12, v13, &v29);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "CredentialStoreSessionProxy activeRegionsInPartitions, partitions = %{public}s", v10, 0xCu);
    sub_100005090(v11);
  }

  v15 = *(v8 + 8);
  v15(v6, v7);
  v0[12] = v15;
  v16 = v0[4];
  sub_100086094();
  v25 = *(v0[4] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v0[13] = v25;
  if (v25)
  {

    v26 = swift_task_alloc();
    v0[14] = v26;
    *v26 = v0;
    v26[1] = sub_100078414;
    v28 = v0[2];
    v27 = v0[3];

    return sub_100147B4C(v28, v27);
  }

  else
  {
    (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.badLogic(_:), v0[5]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v18 = v0[11];
    v17 = v0[12];
    v20 = v0[9];
    v19 = v0[10];
    v22 = v0[7];
    v21 = v0[8];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v17(v19, v21);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_10007E1CC(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4[4] = v6;
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v4[5] = v7;
  a4;
  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = sub_10007E2C8;

  return sub_10007DB2C(v6, v7);
}

uint64_t sub_10007E2C8()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 16);
  v8 = *v1;

  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    v10 = v9;
    v11 = 0;
  }

  else
  {
    sub_100004E70(&qword_100201D00, &unk_1001ACF10);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v11 = isa;
    v10 = 0;
    v9 = isa;
  }

  v13 = *(v3 + 24);
  (v13)[2](v13, v11, v10);

  _Block_release(v13);
  v14 = *(v8 + 8);

  return v14();
}

uint64_t sub_10007E4B0(uint64_t a1, uint64_t a2)
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
  v7 = type metadata accessor for Logger();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_10007E5DC, 0, 0);
}

uint64_t sub_10007E5DC()
{
  v28 = v0;
  v1 = v0[11];
  v2 = v0[3];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  if (v5)
  {
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10010150C(v10, v9, &v27);
    _os_log_impl(&_mh_execute_header, v3, v4, "CredentialStoreSessionProxy deleteCredential, credential identifier = %s", v11, 0xCu);
    sub_100005090(v12);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  v0[12] = v13;
  v14 = v0[4];
  sub_100086094();
  v23 = *(v0[4] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v0[13] = v23;
  if (v23)
  {

    v24 = swift_task_alloc();
    v0[14] = v24;
    *v24 = v0;
    v24[1] = sub_10007E9A4;
    v26 = v0[2];
    v25 = v0[3];

    return sub_1001452FC(v26, v25);
  }

  else
  {
    (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.badLogic(_:), v0[5]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v16 = v0[11];
    v15 = v0[12];
    v18 = v0[9];
    v17 = v0[10];
    v20 = v0[7];
    v19 = v0[8];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v15(v17, v19);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_10007E9A4()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_100074AB4;
  }

  else
  {
    v3 = sub_100070230;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10007EC40(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10008DF5C;

  return sub_10007E4B0(v5, v7);
}

uint64_t sub_10007ED14(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = *(*(sub_100004E70(&qword_100201488, &qword_1001ACFD0) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  v3[11] = v5;
  v6 = *(v5 - 8);
  v3[12] = v6;
  v7 = *(v6 + 64) + 15;
  v3[13] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v3[14] = v8;
  v9 = *(v8 - 8);
  v3[15] = v9;
  v10 = *(v9 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_10007EE84, 0, 0);
}

uint64_t sub_10007EE84()
{
  v39 = v0;
  v1 = v0[17];
  v2 = v0[7];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[17];
  v7 = v0[14];
  v8 = v0[15];
  if (v5)
  {
    v10 = v0[6];
    v9 = v0[7];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v38 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10010150C(v10, v9, &v38);
    _os_log_impl(&_mh_execute_header, v3, v4, "CredentialStoreSessionProxy properties, credential identifier = %s", v11, 0xCu);
    sub_100005090(v12);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  v0[18] = v13;
  v14 = v0[8];
  sub_100086094();
  v34 = *(v0[8] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v0[19] = v34;
  if (v34)
  {

    v35 = swift_task_alloc();
    v0[20] = v35;
    *v35 = v0;
    v35[1] = sub_10007F310;
    v37 = v0[6];
    v36 = v0[7];

    return sub_100146280(v37, v36);
  }

  (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.badLogic(_:), v0[11]);
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v15 = v0[11];
  v16 = v0[12];
  v17 = v0[10];
  swift_getErrorValue();
  v19 = v0[2];
  v18 = v0[3];
  v20 = v0[4];
  Error.dipErrorCode.getter();
  if ((*(v16 + 48))(v17, 1, v15) == 1)
  {
    goto LABEL_7;
  }

  v21 = v0[11];
  v22 = v0[12];
  v23 = v0[9];
  sub_10008C1F4(v0[10], v23);
  if ((*(v22 + 88))(v23, v21) != enum case for DIPError.Code.idcsUnknownCredential(_:))
  {
    (*(v0[12] + 8))(v0[9], v0[11]);
LABEL_7:
    v24 = v0[18];
    v26 = v0[15];
    v25 = v0[16];
    v27 = v0[14];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v24(v25, v27);
  }

  v29 = v0[16];
  v28 = v0[17];
  v30 = v0[13];
  v31 = v0[9];
  sub_10008C18C(v0[10]);
  sub_10005684C(0, &qword_100201BD0, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v32 = v0[1];

  return v32();
}

uint64_t sub_10007F310(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v7 = sub_10007F4E4;
  }

  else
  {
    *(v4 + 176) = a1;
    v7 = sub_10007F438;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10007F438()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[13];
  v6 = v0[9];
  v5 = v0[10];

  v7 = v0[1];
  v8 = v0[22];

  return v7(v8);
}

uint64_t sub_10007F4E4()
{
  v1 = v0[19];

  v2 = v0[21];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  swift_getErrorValue();
  v7 = v0[2];
  v6 = v0[3];
  v8 = v0[4];
  Error.dipErrorCode.getter();
  if ((*(v4 + 48))(v5, 1, v3) != 1)
  {
    v9 = v0[11];
    v10 = v0[12];
    v11 = v0[9];
    sub_10008C1F4(v0[10], v11);
    if ((*(v10 + 88))(v11, v9) == enum case for DIPError.Code.idcsUnknownCredential(_:))
    {
      goto LABEL_5;
    }

    (*(v0[12] + 8))(v0[9], v0[11]);
  }

  v12 = v0[18];
  v14 = v0[15];
  v13 = v0[16];
  v15 = v0[14];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v12(v13, v15);
LABEL_5:
  v17 = v0[16];
  v16 = v0[17];
  v18 = v0[13];
  v19 = v0[9];
  sub_10008C18C(v0[10]);
  sub_10005684C(0, &qword_100201BD0, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t sub_10007F884(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10008E128;

  return sub_10007ED14(v5, v7);
}

uint64_t sub_10007F958(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v8 = type metadata accessor for Logger();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_10007FA84, 0, 0);
}

uint64_t sub_10007FA84()
{
  v29 = v0;
  v1 = v0[12];
  v2 = v0[3];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[10];
  if (v5)
  {
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10010150C(v10, v9, &v28);
    _os_log_impl(&_mh_execute_header, v3, v4, "CredentialStoreSessionProxy setState, credential identifier = %s", v11, 0xCu);
    sub_100005090(v12);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  v0[13] = v13;
  v14 = v0[5];
  sub_100086094();
  v23 = *(v0[5] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v0[14] = v23;
  if (v23)
  {

    v24 = swift_task_alloc();
    v0[15] = v24;
    *v24 = v0;
    v24[1] = sub_10007FE50;
    v25 = v0[3];
    v26 = v0[4];
    v27 = v0[2];

    return sub_1001483E8(v27, v25, v26);
  }

  else
  {
    (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.badLogic(_:), v0[6]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v16 = v0[12];
    v15 = v0[13];
    v18 = v0[10];
    v17 = v0[11];
    v20 = v0[8];
    v19 = v0[9];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v15(v17, v19);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_10007FE50()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_10007D56C;
  }

  else
  {
    v3 = sub_100062DBC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000800F0(int a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[4] = v8;
  a4;
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_1000801D4;

  return sub_10007F958(v7, v9, a2);
}

uint64_t sub_1000801D4()
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

uint64_t sub_100080374(uint64_t a1, uint64_t a2)
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
  v7 = type metadata accessor for DIPError.Code();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100080494, 0, 0);
}

uint64_t sub_100080494()
{
  v1 = v0[4];
  sub_100086094();
  v8 = *(v0[4] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v0[11] = v8;
  if (v8)
  {

    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v9[1] = sub_10008074C;
    v11 = v0[2];
    v10 = v0[3];

    return sub_100148AF0(v11, v10);
  }

  else
  {
    (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.badLogic(_:), v0[8]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v2 = v0[10];
    v3 = v0[6];
    v4 = v0[7];
    v5 = v0[5];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v3 + 8))(v4, v5);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10008074C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 96);
  v8 = *v3;
  *(*v3 + 104) = v2;

  if (v2)
  {
    v9 = sub_1000808FC;
  }

  else
  {
    *(v6 + 112) = a2;
    *(v6 + 120) = a1;
    v9 = sub_100080880;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100080880()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[7];

  v4 = v0[1];
  v6 = v0[14];
  v5 = v0[15];

  return v4(v5, v6);
}

uint64_t sub_1000808FC()
{
  v1 = v0[11];

  v2 = v0[13];
  v3 = v0[10];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  (*(v5 + 8))(v4, v6);
  sub_10005684C(0, &qword_100201BD0, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_100080BC0(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_100080C94;

  return sub_100080374(v5, v7);
}

uint64_t sub_100080C94(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 40);
  v9 = *(*v3 + 32);
  v10 = *(*v3 + 16);
  v11 = *v3;

  if (v4)
  {
    v12 = _convertErrorToNSError(_:)();

    v13 = v12;
    v14 = 0;
  }

  else if (a2 >> 60 == 15)
  {
    v13 = 0;
    v14 = 0;
    v12 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001C120(a1, a2);
    v14 = isa;
    v13 = 0;
    v12 = isa;
  }

  v16 = *(v7 + 24);
  (v16)[2](v16, v14, v13);

  _Block_release(v16);
  v17 = *(v11 + 8);

  return v17();
}

uint64_t sub_100080E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v10 = type metadata accessor for DIPError.Code();
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();

  return _swift_task_switch(sub_100080F84, 0, 0);
}

uint64_t sub_100080F84()
{
  v1 = v0[7];
  sub_100086094();
  v8 = *(v0[7] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v0[14] = v8;
  if (v8)
  {
    v9 = v0[4];

    v10 = swift_task_alloc();
    v0[15] = v10;
    *v10 = v0;
    v10[1] = sub_100081250;
    v11 = v0[5];
    v12 = v0[6];
    v14 = v0[2];
    v13 = v0[3];

    return sub_1001490A4(v14, v13, v9, v11, v12);
  }

  else
  {
    (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.badLogic(_:), v0[11]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v2 = v0[13];
    v3 = v0[9];
    v4 = v0[10];
    v5 = v0[8];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v3 + 8))(v4, v5);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100081250(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = sub_1000813F4;
  }

  else
  {
    *(v4 + 136) = a1;
    v7 = sub_100081378;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100081378()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[10];

  v4 = v0[1];
  v5 = v0[17];

  return v4(v5);
}

uint64_t sub_1000813F4()
{
  v1 = v0[14];

  v2 = v0[16];
  v3 = v0[13];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  (*(v5 + 8))(v4, v6);
  sub_10005684C(0, &qword_100201BD0, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000816D4(int a1, int a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v5[4] = v9;
  sub_100004E70(&qword_100201580, &qword_1001AB980);
  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5[5] = v11;
  if (a3)
  {
    v12 = a3;
    v13 = a5;
    a3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v16 = a5;
    v15 = 0xF000000000000000;
  }

  v5[6] = a3;
  v5[7] = v15;
  v17 = swift_task_alloc();
  v5[8] = v17;
  *v17 = v5;
  v17[1] = sub_10008182C;

  return sub_100080E60(v8, v10, v11, a3, v15);
}

uint64_t sub_10008182C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = v3[5];
  v9 = v3[4];
  sub_10001C120(v3[6], v3[7]);

  if (v2)
  {
    isa = _convertErrorToNSError(_:)();

    v11 = isa;
    v12 = 0;
  }

  else
  {
    sub_100004E70(&qword_100201CE8, &qword_1001AC6F8);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v12 = isa;
    v11 = 0;
  }

  v13 = v4[3];
  (v13)[2](v13, v12, v11);

  _Block_release(v13);
  v14 = *(v7 + 8);

  return v14();
}

uint64_t sub_100081A3C(uint64_t a1, uint64_t a2)
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
  v7 = type metadata accessor for DIPError.Code();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100081B5C, 0, 0);
}

uint64_t sub_100081B5C()
{
  v1 = v0[4];
  sub_100086094();
  v8 = *(v0[4] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v0[11] = v8;
  if (v8)
  {

    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v9[1] = sub_100081E1C;
    v11 = v0[2];
    v10 = v0[3];

    return sub_100157FA8(v11, v10);
  }

  else
  {
    (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.badLogic(_:), v0[8]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v2 = v0[10];
    v3 = v0[6];
    v4 = v0[7];
    v5 = v0[5];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v3 + 8))(v4, v5);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100081E1C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_1000808FC;
  }

  else
  {
    *(v4 + 112) = a1;
    v7 = sub_100081F44;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100081F44()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[14];

  return v4(v5);
}

uint64_t sub_100082148(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10008221C;

  return sub_100081A3C(v5, v7);
}

uint64_t sub_10008221C(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 32);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 24);
  if (v3)
  {
    v12 = _convertErrorToNSError(_:)();

    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    (*(v11 + 16))(*(v5 + 24), a1, 0);
  }

  _Block_release(*(v6 + 24));
  v13 = *(v10 + 8);

  return v13();
}

uint64_t sub_1000823D0(uint64_t a1, uint64_t a2)
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
  v7 = type metadata accessor for Logger();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000824FC, 0, 0);
}

uint64_t sub_1000824FC()
{
  v29 = v0;
  v1 = v0[11];
  v2 = v0[3];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  if (v5)
  {
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10010150C(v10, v9, &v28);
    _os_log_impl(&_mh_execute_header, v3, v4, "CredentialStoreSessionProxy payloads (debug), credential identifier = %s", v11, 0xCu);
    sub_100005090(v12);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  v0[12] = v13;
  v14 = v0[4];
  sub_100086094();
  v15 = v0[4];
  sub_1000865D4();
  v24 = *(v0[4] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v0[13] = v24;
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[14] = v25;
    *v25 = v0;
    v25[1] = sub_100078414;
    v27 = v0[2];
    v26 = v0[3];

    return sub_1001603A0(v27, v26);
  }

  else
  {
    (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.badLogic(_:), v0[5]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v17 = v0[11];
    v16 = v0[12];
    v19 = v0[9];
    v18 = v0[10];
    v21 = v0[7];
    v20 = v0[8];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v16(v18, v20);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_100082A60(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_100082B34;

  return sub_1000823D0(v5, v7);
}

uint64_t sub_100082B34()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    sub_10005684C(0, &unk_100201CF0, DCCredentialPayload_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = isa;
    v9 = 0;
    v8 = isa;
  }

  v12 = *(v3 + 24);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t sub_100082CF4(uint64_t a1, uint64_t a2)
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
  v7 = type metadata accessor for Logger();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100082E20, 0, 0);
}

uint64_t sub_100082E20()
{
  v32 = v0;
  v1 = v0[11];
  v2 = v0[3];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  if (v5)
  {
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10010150C(v10, v9, &v31);
    _os_log_impl(&_mh_execute_header, v3, v4, "CredentialStoreSessionProxy deleteAccountKeySigningKey for accountKeyIdentifier: %s", v11, 0xCu);
    sub_100005090(v12);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  v14 = v0[4];
  sub_100086094();
  v22 = v0[4];
  v23 = *(v22 + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  if (v23)
  {
    v24 = v0[2];
    v25 = v0[3];
    v26 = *(v23 + 112);
    v27 = *(v22 + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);

    sub_100030108(v24, v25);

    v29 = v0[10];
    v28 = v0[11];
    v30 = v0[7];

    v20 = v0[1];
  }

  else
  {
    (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.badLogic(_:), v0[5]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v15 = v0[10];
    v16 = v0[11];
    v17 = v0[8];
    v18 = v0[9];
    v19 = v0[7];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v13(v15, v17);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v20 = v0[1];
  }

  return v20();
}

uint64_t sub_100083344(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10008DF5C;

  return sub_100082CF4(v5, v7);
}

uint64_t sub_100083418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Logger();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = type metadata accessor for DIPError.Code();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_10008353C, 0, 0);
}

uint64_t sub_10008353C()
{
  v1 = v0[6];
  sub_100086094();
  v2 = v0[6];
  sub_1000865D4();
  v9 = *(v0[6] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v0[13] = v9;
  if (v9)
  {

    v10 = swift_task_alloc();
    v0[14] = v10;
    *v10 = v0;
    v10[1] = sub_100083810;
    v11 = v0[4];
    v12 = v0[5];
    v14 = v0[2];
    v13 = v0[3];

    return sub_1001490A4(v14, v13, 0, v11, v12);
  }

  else
  {
    (*(v0[11] + 104))(v0[12], enum case for DIPError.Code.badLogic(_:), v0[10]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v3 = v0[12];
    v4 = v0[8];
    v5 = v0[9];
    v6 = v0[7];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v4 + 8))(v5, v6);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_100083810(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v7 = sub_1000839B4;
  }

  else
  {
    *(v4 + 128) = a1;
    v7 = sub_100083938;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100083938()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[9];

  v4 = v0[1];
  v5 = v0[16];

  return v4(v5);
}

uint64_t sub_1000839B4()
{
  v1 = v0[13];

  v2 = v0[15];
  v3 = v0[12];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  (*(v5 + 8))(v4, v6);
  sub_10005684C(0, &qword_100201BD0, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_100083C80(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[4] = v8;
  if (a2)
  {
    v10 = a2;
    v11 = a4;
    a2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v14 = a4;
    v13 = 0xF000000000000000;
  }

  v4[5] = a2;
  v4[6] = v13;
  v15 = swift_task_alloc();
  v4[7] = v15;
  *v15 = v4;
  v15[1] = sub_100083D90;

  return sub_100083418(v7, v9, a2, v13);
}

uint64_t sub_100083D90()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = v3[4];
  sub_10001C120(v3[5], v3[6]);

  if (v2)
  {
    isa = _convertErrorToNSError(_:)();

    v10 = isa;
    v11 = 0;
  }

  else
  {
    sub_100004E70(&qword_100201CE8, &qword_1001AC6F8);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v11 = isa;
    v10 = 0;
  }

  v12 = v4[3];
  (v12)[2](v12, v11, v10);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t sub_100083F84()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000840A0, 0, 0);
}

uint64_t sub_1000840A0()
{
  v1 = v0[2];
  sub_1000865D4();
  v8 = *(v0[2] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v0[9] = v8;
  if (v8)
  {

    v9 = swift_task_alloc();
    v0[10] = v9;
    *v9 = v0;
    v9[1] = sub_100084350;

    return sub_100160888();
  }

  else
  {
    (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.badLogic(_:), v0[6]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v2 = v0[8];
    v3 = v0[4];
    v4 = v0[5];
    v5 = v0[3];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v3 + 8))(v4, v5);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100084350(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = sub_1000844F4;
  }

  else
  {
    *(v4 + 96) = a1;
    v7 = sub_100084478;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100084478()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[5];

  v4 = v0[1];
  v5 = v0[12];

  return v4(v5);
}

uint64_t sub_1000844F4()
{
  v1 = v0[9];

  v2 = v0[11];
  v3 = v0[8];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  (*(v5 + 8))(v4, v6);
  sub_10005684C(0, &qword_100201BD0, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000847A4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10008484C;

  return sub_100083F84();
}

uint64_t sub_10008484C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v2)
  {
    v7 = _convertErrorToNSError(_:)();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    sub_10005684C(0, &qword_100201CE0, DCLegacySESlotInfo_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = isa;
    v8 = 0;
    v7 = isa;
  }

  v11 = *(v3 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_1000849E8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for DIPError.Code();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_100084B04, 0, 0);
}

uint64_t sub_100084B04()
{
  v1 = v0[3];
  sub_1000865D4();
  if (*(v0[3] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage))
  {
    sub_100166084(v0[2]);
    v7 = v0[9];
    v8 = v0[6];
  }

  else
  {
    (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.badLogic(_:), v0[7]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v2 = v0[9];
    v3 = v0[5];
    v4 = v0[6];
    v5 = v0[4];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v3 + 8))(v4, v5);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100084EF4(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_100070F30;

  return sub_1000849E8(a1);
}

uint64_t sub_100084FB0(uint64_t a1, uint64_t a2)
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
  v7 = type metadata accessor for DIPError.Code();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000850D0, 0, 0);
}

uint64_t sub_1000850D0()
{
  v1 = v0[4];
  sub_1000865D4();
  v8 = *(v0[4] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v0[11] = v8;
  if (v8)
  {

    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v9[1] = sub_100085390;
    v11 = v0[2];
    v10 = v0[3];

    return sub_1001615F8(v11, v10);
  }

  else
  {
    (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.badLogic(_:), v0[8]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v2 = v0[10];
    v3 = v0[6];
    v4 = v0[7];
    v5 = v0[5];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v3 + 8))(v4, v5);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100085390()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_1000808FC;
  }

  else
  {
    v3 = sub_1000854A4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000854A4()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000856A4(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10008DF5C;

  return sub_100084FB0(v5, v7);
}

uint64_t sub_100085778(uint64_t a1, uint64_t a2)
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
  v7 = type metadata accessor for DIPError.Code();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100085898, 0, 0);
}

uint64_t sub_100085898()
{
  v1 = v0[4];
  sub_1000865D4();
  v8 = *(v0[4] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v0[11] = v8;
  if (v8)
  {

    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v9[1] = sub_100085B50;
    v11 = v0[2];
    v10 = v0[3];

    return sub_100161D8C(v11, v10);
  }

  else
  {
    (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.badLogic(_:), v0[8]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v2 = v0[10];
    v3 = v0[6];
    v4 = v0[7];
    v5 = v0[5];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v3 + 8))(v4, v5);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100085B50(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_10008DF7C;
  }

  else
  {
    *(v4 + 112) = a1;
    v7 = sub_100081F44;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100085E00(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_100085ED4;

  return sub_100085778(v5, v7);
}

uint64_t sub_100085ED4()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    sub_10005684C(0, &qword_100201CD8, DCCredentialCryptoKeyInfo_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = isa;
    v9 = 0;
    v8 = isa;
  }

  v12 = *(v3 + 24);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

void sub_100086094()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_partitions;
  v7 = *(v0 + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_partitions);
  if (!*(v7 + 16))
  {
    (*(v2 + 104))(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for DIPError.Code.missingEntitlement(_:), v1);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    v21 = 0x80000001001B6980;
    v22 = 629;
    v20 = 0xD000000000000013;
LABEL_11:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  v8 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 42;
  v24 = 0xE100000000000000;
  __chkstk_darwin(v4);
  v22 = &v23;

  v9 = sub_100120CF8(sub_10000ED28, &v20, v7);

  if ((v9 & 1) != 0 && (_isInternalBuild.getter() & 1) == 0)
  {
    (*(v2 + 104))(v8, enum case for DIPError.Code.missingEntitlement(_:), v1);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    v21 = 0x80000001001B6980;
    v22 = 634;
    v20 = 0xD000000000000013;
    goto LABEL_11;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v2 + 104))(v8, enum case for DIPError.Code.missingEntitlement(_:), v1);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    v21 = 0x80000001001B6980;
    v22 = 639;
    v20 = 0xD000000000000013;
    goto LABEL_11;
  }

  v11 = Strong;
  v25 = v0;
  v12._rawValue = *(v0 + v6);

  v13._object = 0x80000001001B69A0;
  v13._countAndFlagsBits = 0xD00000000000001FLL;
  v14 = NSXPCConnection.hasArrayEntitlement(name:values:)(v13, v12);

  if (!v14)
  {
    v23 = 0;
    v24 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v23 = 0xD00000000000001FLL;
    v24 = 0x80000001001B69C0;
    v15 = *(v25 + v6);

    v16 = Array.description.getter();
    v18 = v17;

    v19._countAndFlagsBits = v16;
    v19._object = v18;
    String.append(_:)(v19);

    (*(v2 + 104))(v8, enum case for DIPError.Code.missingEntitlement(_:), v1);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    v21 = 0x80000001001B6980;
    v22 = 643;
    v20 = 0xD000000000000013;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }
}

void sub_1000865D4()
{
  v0 = type metadata accessor for DIPError.Code();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((_isInternalBuild.getter() & 1) != 0 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
  {
    v6 = Strong;
    v7._countAndFlagsBits = 0xD00000000000001DLL;
    v7._object = 0x80000001001B6930;
    if (!NSXPCConnection.isEntitled(_:)(v7))
    {
      (*(v1 + 104))(v4, enum case for DIPError.Code.missingEntitlement(_:), v0);
      sub_10002688C(&_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }

  else
  {
    (*(v1 + 104))(v4, enum case for DIPError.Code.missingEntitlement(_:), v0);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }
}

uint64_t sub_100086908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  v11 = type metadata accessor for Logger();
  v7[12] = v11;
  v12 = *(v11 - 8);
  v7[13] = v12;
  v13 = *(v12 + 64) + 15;
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();

  return _swift_task_switch(sub_100086A3C, 0, 0);
}

uint64_t sub_100086A3C()
{
  v36 = v0;
  v1 = v0[15];
  v2 = v0[3];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[15];
  v7 = v0[12];
  v8 = v0[13];
  if (v5)
  {
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v34 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10010150C(v10, v9, &v34);
    _os_log_impl(&_mh_execute_header, v3, v4, "CredentialStoreSessionProxy storePIITokenInSyncableKeyStore for tokenIdentifier: %s", v11, 0xCu);
    sub_100005090(v12);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  v14 = v0[8];
  sub_100086094();
  v15 = v0[8];
  v16 = *(v15 + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  if (v16)
  {
    v18 = v0[6];
    v17 = v0[7];
    v20 = v0[2];
    v19 = v0[3];
    v21 = *(v15 + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);

    v34 = v20;
    v35 = v19;

    v22._countAndFlagsBits = 0x746E65646572632DLL;
    v22._object = 0xEC000000736C6169;
    String.append(_:)(v22);
    sub_1001740BC(v34, v35, v18, v17);

    v23 = *(v16 + 112);
    sub_100030C50(v0[2], v0[3], v0[4], v0[5]);
    v30 = v0[14];
    v31 = v0[15];
    v32 = v0[11];
  }

  else
  {
    (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.syncableStoreNotInitializedStoreDataInSyncableKeyStore(_:), v0[9]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v24 = v0[14];
    v25 = v0[15];
    v26 = v0[12];
    v27 = v0[13];
    v28 = v0[11];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v13(v24, v26);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();
  }

  v33 = v0[1];

  return v33();
}

uint64_t sub_100086FE8(int a1, void *a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v5[4] = v10;
  v12 = a2;
  v13 = a3;
  a5;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v5[5] = v14;
  v5[6] = v16;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v5[7] = v19;
  v20 = swift_task_alloc();
  v5[8] = v20;
  *v20 = v5;
  v20[1] = sub_100087124;

  return sub_100086908(v9, v11, v14, v16, v17, v19);
}

uint64_t sub_100087124()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 48);
  v8 = *(*v1 + 40);
  v9 = *(*v1 + 32);
  v10 = *(*v1 + 16);
  v11 = *v1;

  sub_1000092BC(v8, v7);

  v12 = *(v3 + 24);
  if (v2)
  {
    v13 = _convertErrorToNSError(_:)();

    (*(v12 + 16))(v12, v13);
  }

  else
  {
    (*(v12 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v14 = *(v11 + 8);

  return v14();
}

uint64_t sub_100087324(uint64_t a1, uint64_t a2)
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
  v7 = type metadata accessor for Logger();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100087450, 0, 0);
}

uint64_t sub_100087450()
{
  v36 = v0;
  v1 = v0[11];
  v2 = v0[3];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  if (v5)
  {
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v35 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10010150C(v10, v9, &v35);
    _os_log_impl(&_mh_execute_header, v3, v4, "CredentialStoreSessionProxy retrievePIITokenFromSyncableKeyStore for identifier: %s", v11, 0xCu);
    sub_100005090(v12);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  v14 = v0[4];
  sub_100086094();
  v22 = v0[4];
  v23 = *(v22 + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  if (v23)
  {
    v24 = v0[2];
    v25 = v0[3];
    v26 = *(v23 + 112);
    v27 = *(v22 + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);

    v28 = sub_100030C74(v24, v25);
    v30 = v29;

    v32 = v0[10];
    v31 = v0[11];
    v33 = v0[7];

    v34 = v0[1];

    return v34(v28, v30);
  }

  else
  {
    (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.syncableStoreNotInitializedRetrieveDataFromSyncableKeyStore(_:), v0[5]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v15 = v0[10];
    v16 = v0[11];
    v17 = v0[8];
    v18 = v0[9];
    v19 = v0[7];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v13(v15, v17);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_1000879B8(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10008E12C;

  return sub_100087324(v5, v7);
}

uint64_t sub_100087A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_100087BBC, 0, 0);
}

uint64_t sub_100087BBC()
{
  v30 = v0;
  v1 = v0[13];
  v2 = v0[3];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[11];
  if (v5)
  {
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10010150C(v10, v9, &v29);
    _os_log_impl(&_mh_execute_header, v3, v4, "CredentialStoreSessionProxy deletePIITokenFromSyncableKeyStore for identifier: %s", v11, 0xCu);
    sub_100005090(v12);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  v0[14] = v13;
  v14 = v0[6];
  sub_100086094();
  v23 = *(v0[6] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v0[15] = v23;
  if (v23)
  {

    v24 = swift_task_alloc();
    v0[16] = v24;
    *v24 = v0;
    v24[1] = sub_100087F90;
    v25 = v0[4];
    v26 = v0[5];
    v28 = v0[2];
    v27 = v0[3];

    return sub_100170CB0(v28, v27, v25, v26);
  }

  else
  {
    (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.syncableStoreNotInitializedDeleteDataFromSyncableKeyStore(_:), v0[7]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v16 = v0[13];
    v15 = v0[14];
    v18 = v0[11];
    v17 = v0[12];
    v20 = v0[9];
    v19 = v0[10];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v15(v17, v19);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_100087F90()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_100076FF8;
  }

  else
  {
    v3 = sub_1000880A4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000880A4()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000882C0(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v4[4] = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_1000883BC;

  return sub_100087A8C(v6, v8, v9, v11);
}

uint64_t sub_1000883BC()
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

uint64_t sub_100088580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000886B0, 0, 0);
}

uint64_t sub_1000886B0()
{
  v36 = v0;
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
    v34 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10010150C(v10, v9, &v34);
    _os_log_impl(&_mh_execute_header, v3, v4, "CredentialStoreSessionProxy updatePIITokenInSyncableKeyStore for tokenIdentifier: %s", v11, 0xCu);
    sub_100005090(v12);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  v14 = v0[7];
  sub_100086094();
  v21 = *(v0[7] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  if (v21)
  {
    v23 = v0[5];
    v22 = v0[6];
    v24 = v0[3];
    v34 = v0[2];
    v35 = v24;

    v25._countAndFlagsBits = 0x746E65646572632DLL;
    v25._object = 0xEC000000736C6169;
    String.append(_:)(v25);
    sub_1001740BC(v34, v35, v23, v22);
    v26 = v0[3];
    v27 = v0[4];
    v28 = v0[2];

    v29 = *(v21 + 112);
    sub_100031020(v28, v26, v27);

    v31 = v0[13];
    v30 = v0[14];
    v32 = v0[10];
  }

  else
  {
    (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.syncableStoreNotInitializedStoreDataInSyncableKeyStore(_:), v0[8]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v15 = v0[13];
    v16 = v0[14];
    v17 = v0[11];
    v18 = v0[12];
    v19 = v0[10];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v13(v15, v17);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();
  }

  v33 = v0[1];

  return v33();
}

uint64_t sub_100088C6C(int a1, int a2, int a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v5[4] = v8;
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5[5] = v10;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v5[6] = v12;
  a5;
  v14 = swift_task_alloc();
  v5[7] = v14;
  *v14 = v5;
  v14[1] = sub_100088DA4;

  return sub_100088580(v7, v9, v10, v11, v13);
}

uint64_t sub_100088DA4()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 32);
  v9 = *(*v1 + 16);
  v10 = *v1;

  v11 = *(v3 + 24);
  if (v2)
  {
    v12 = _convertErrorToNSError(_:)();

    (*(v11 + 16))(v11, v12);
  }

  else
  {
    (*(v11 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v13 = *(v10 + 8);

  return v13();
}

uint64_t sub_100088F84(uint64_t a1, uint64_t a2)
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
  v7 = type metadata accessor for Logger();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000890B0, 0, 0);
}

uint64_t sub_1000890B0()
{
  v33 = v0;
  v1 = v0[11];
  v2 = v0[3];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  if (v5)
  {
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v32 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10010150C(v10, v9, &v32);
    _os_log_impl(&_mh_execute_header, v3, v4, "CredentialStoreSessionProxy isPIITokenAvailable for identifier: %s", v11, 0xCu);
    sub_100005090(v12);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  v14 = v0[4];
  sub_100086094();
  v20 = v0[4];
  v21 = *(v20 + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  if (v21)
  {
    v23 = v0[10];
    v22 = v0[11];
    v24 = v0[7];
    v25 = v0[2];
    v26 = v0[3];
    v27 = *(v21 + 112);
    v28 = *(v20 + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);

    LOBYTE(v27) = sub_100031A60(v25, v26);

    v29 = v0[1];
    v30 = v27 & 1;
  }

  else
  {
    (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.syncableStoreNotInitializedRetrieveDataFromSyncableKeyStore(_:), v0[5]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v15 = v0[10];
    v16 = v0[11];
    v17 = v0[8];
    v18 = v0[9];
    v19 = v0[7];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v13(v15, v17);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v29 = v0[1];
    v30 = 0;
  }

  return v29(v30);
}

uint64_t sub_1000895D0(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10008E13C;

  return sub_100088F84(v5, v7);
}

uint64_t sub_1000896A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000897D4, 0, 0);
}

uint64_t sub_1000897D4()
{
  v31 = v0;
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
    v30 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10010150C(v10, v9, &v30);
    _os_log_impl(&_mh_execute_header, v3, v4, "CredentialStoreSessionProxy storePIIHashInSyncableKeyStore for tokenIdentifier: %s", v11, 0xCu);
    sub_100005090(v12);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  v0[15] = v13;
  v14 = v0[7];
  sub_100086094();
  v23 = *(v0[7] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v0[16] = v23;
  if (v23)
  {

    v24 = swift_task_alloc();
    v0[17] = v24;
    *v24 = v0;
    v24[1] = sub_100089BAC;
    v25 = v0[5];
    v26 = v0[6];
    v27 = v0[3];
    v28 = v0[4];
    v29 = v0[2];

    return sub_100172B90(v29, v27, v28, v25, v26);
  }

  else
  {
    (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.syncableStoreNotInitializedStoreDataInSyncableKeyStore(_:), v0[8]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v20 = v0[10];
    v19 = v0[11];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v15(v17, v19);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_100089BAC()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_100089D4C;
  }

  else
  {
    v3 = sub_100089CC0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100089CC0()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100089D4C()
{
  v1 = v0[16];

  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[10];
  v8 = v0[11];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v3(v5, v8);
  sub_10005684C(0, &qword_100201BD0, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_10008A038(int a1, void *a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v5[4] = v10;
  v12 = a2;
  a5;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v5[5] = v13;
  v5[6] = v15;
  v16 = swift_task_alloc();
  v5[7] = v16;
  *v16 = v5;
  v16[1] = sub_10008A150;

  return sub_1000896A4(v9, v11, v13, v15, a3);
}

uint64_t sub_10008A150()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 32);
  v9 = *(*v1 + 16);
  v10 = *v1;

  sub_1000092BC(v7, v6);

  v11 = *(v3 + 24);
  if (v2)
  {
    v12 = _convertErrorToNSError(_:)();

    (*(v11 + 16))(v11, v12);
  }

  else
  {
    (*(v11 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v13 = *(v10 + 8);

  return v13();
}

uint64_t sub_10008A32C(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v8 = type metadata accessor for Logger();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_10008A458, 0, 0);
}

uint64_t sub_10008A458()
{
  v29 = v0;
  v1 = v0[12];
  v2 = v0[3];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[10];
  if (v5)
  {
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10010150C(v10, v9, &v28);
    _os_log_impl(&_mh_execute_header, v3, v4, "CredentialStoreSessionProxy retrievePIIHashFromSyncableKeyStore for identifier: %s", v11, 0xCu);
    sub_100005090(v12);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  v0[13] = v13;
  v14 = v0[5];
  sub_100086094();
  v23 = *(v0[5] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v0[14] = v23;
  if (v23)
  {

    v24 = swift_task_alloc();
    v0[15] = v24;
    *v24 = v0;
    v24[1] = sub_10008A82C;
    v25 = v0[3];
    v26 = v0[4];
    v27 = v0[2];

    return sub_10017325C(v27, v25, v26);
  }

  else
  {
    (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.syncableStoreNotInitializedRetrieveDataFromSyncableKeyStore(_:), v0[6]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v16 = v0[12];
    v15 = v0[13];
    v18 = v0[10];
    v17 = v0[11];
    v20 = v0[8];
    v19 = v0[9];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v15(v17, v19);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_10008A82C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 120);
  v8 = *v3;
  *(*v3 + 128) = v2;

  if (v2)
  {
    v9 = sub_10007D56C;
  }

  else
  {
    *(v6 + 136) = a2;
    *(v6 + 144) = a1;
    v9 = sub_10008A960;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10008A960()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[8];

  v5 = v0[1];
  v7 = v0[17];
  v6 = v0[18];

  return v5(v6, v7);
}

uint64_t sub_10008AB7C(int a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[4] = v8;
  a4;
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_10008AC60;

  return sub_10008A32C(v7, v9, a2);
}

uint64_t sub_10008AC60()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    v11 = String._bridgeToObjectiveC()();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v3 + 24);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t sub_10008AE0C(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v8 = type metadata accessor for Logger();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_10008AF38, 0, 0);
}

uint64_t sub_10008AF38()
{
  v29 = v0;
  v1 = v0[12];
  v2 = v0[3];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[10];
  if (v5)
  {
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10010150C(v10, v9, &v28);
    _os_log_impl(&_mh_execute_header, v3, v4, "CredentialStoreSessionProxy deletePIIHashFromSyncableKeyStore for identifier: %s", v11, 0xCu);
    sub_100005090(v12);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  v0[13] = v13;
  v14 = v0[5];
  sub_100086094();
  v23 = *(v0[5] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v0[14] = v23;
  if (v23)
  {

    v24 = swift_task_alloc();
    v0[15] = v24;
    *v24 = v0;
    v24[1] = sub_10008B30C;
    v25 = v0[3];
    v26 = v0[4];
    v27 = v0[2];

    return sub_100173A0C(v27, v25, v26);
  }

  else
  {
    (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.syncableStoreNotInitializedDeleteDataFromSyncableKeyStore(_:), v0[6]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v16 = v0[12];
    v15 = v0[13];
    v18 = v0[10];
    v17 = v0[11];
    v20 = v0[8];
    v19 = v0[9];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v15(v17, v19);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_10008B30C()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_10008DF64;
  }

  else
  {
    v3 = sub_10008DF78;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10008B5AC(int a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[4] = v8;
  a4;
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_10008DF5C;

  return sub_10008AE0C(v7, v9, a2);
}

id sub_10008B6E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage;
  *&v3[OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage] = 0;
  defaultLogger()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v18 = a2;
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Creating CredentialStoreSessionProxy", v13, 2u);
    a2 = v18;
  }

  (*(v6 + 8))(v9, v5);
  result = os_transaction_create();
  if (result)
  {
    *&v3[OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_jetsamTransaction] = result;
    swift_unknownObjectWeakAssign();
    *&v3[OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_dataContainer] = a2;
    *&v3[OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_partitions] = &_swiftEmptyArrayStorage;
    v15 = *&v3[v10];
    *&v3[v10] = 0;

    v16 = type metadata accessor for CredentialStoreSessionProxy();
    v19.receiver = v3;
    v19.super_class = v16;
    return objc_msgSendSuper2(&v19, "init");
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10008B8E4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = [v9 processIdentifier];

    _os_log_impl(&_mh_execute_header, v10, v11, "credential store listener connection received from %d", v12, 8u);
  }

  else
  {

    v10 = v9;
  }

  (*(v5 + 8))(v8, v4);
  v13 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___DCCredentialStoreXPCProtocol];
  [v9 setExportedInterface:v13];

  v14 = *(v2 + OBJC_IVAR____TtC7idcredd23CredentialStoreListener_dataContainer);
  v15 = objc_allocWithZone(type metadata accessor for CredentialStoreSessionProxy());
  v16 = v9;

  v17 = sub_10008B6E4(v16, v14);

  [v16 setExportedObject:v17];

  v25 = sub_100073194;
  v26 = 0;
  aBlock = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_10008E148;
  v24 = &unk_1001F6F50;
  v18 = _Block_copy(&aBlock);
  [v16 setInvalidationHandler:v18];
  _Block_release(v18);
  v25 = sub_1000731A0;
  v26 = 0;
  aBlock = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_10008E148;
  v24 = &unk_1001F6F78;
  v19 = _Block_copy(&aBlock);
  [v16 setInterruptionHandler:v19];
  _Block_release(v19);
  [v16 resume];
  return 1;
}

uint64_t sub_10008BC10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v45 = a2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v54[0] = v12;
    *v11 = 136315138;
    v13 = Array.description.getter();
    v15 = sub_10010150C(v13, v14, v54);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "CredentialStoreSessionProxy configure with partitions %s", v11, 0xCu);
    sub_100005090(v12);
  }

  (*(v5 + 8))(v8, v4);
  v16 = v45;
  v17 = *(v45 + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_partitions);
  *(v45 + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_partitions) = a1;

  v18 = *(v16 + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_dataContainer);
  v54[3] = &type metadata for CredentialDecryptionKeyIdentifierProvider;
  v54[4] = &off_1001F4D30;
  v19 = type metadata accessor for PayloadProcessorBuilder();
  v20 = swift_allocObject();

  v21 = sub_10001C16C();
  v53[3] = &type metadata for CredentialDecryptionKeyFinder;
  v53[4] = &off_1001F4D20;
  v53[0] = swift_allocObject();
  sub_100012950(v54, v53[0] + 16);
  v52[3] = v19;
  v52[4] = &off_1001F78E8;
  v52[0] = v20;
  type metadata accessor for CredentialStorage();
  v22 = swift_allocObject();
  v23 = sub_1000129AC(v53, &type metadata for CredentialDecryptionKeyFinder);
  v44[2] = v44;
  __chkstk_darwin(v23);
  v25 = v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25);
  v27 = sub_1000129AC(v52, v19);
  v44[1] = v44;
  v28 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v27);
  v30 = (v44 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30);
  v32 = *v30;
  v51[3] = &type metadata for CredentialDecryptionKeyFinder;
  v51[4] = &off_1001F4D20;
  v33 = swift_allocObject();
  v50[4] = &off_1001F78E8;
  v51[0] = v33;
  v34 = *(v25 + 1);
  *(v33 + 16) = *v25;
  *(v33 + 32) = v34;
  *(v33 + 48) = *(v25 + 4);
  v50[3] = v19;
  v50[0] = v32;

  v36 = sub_10010D640(v35);

  v22[2] = v36;
  v22[15] = v18;
  sub_10001A940(v51, (v22 + 4));
  sub_10001A940(v50, (v22 + 9));
  v22[14] = v21;
  v37 = type metadata accessor for BiometricsHelper();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();

  v40 = BiometricsHelper.init()();
  v48 = type metadata accessor for DeviceInformationProvider();
  v49 = &protocol witness table for DeviceInformationProvider;
  sub_10001A9A4(&v47);
  DeviceInformationProvider.init()();
  type metadata accessor for BiometricStorage();
  v41 = swift_allocObject();
  v41[2] = v18;
  v41[8] = v21;
  type metadata accessor for AppleIDVManager();
  sub_1000215BC(v41 + 3);
  sub_100005090(v50);
  sub_100005090(v51);
  v41[9] = v40;
  sub_10001AA08(&v47, (v41 + 10));
  v22[3] = v41;
  sub_100005090(v52);
  sub_100005090(v53);
  sub_10001AA20(v54);
  v42 = *(v16 + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  *(v16 + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage) = v22;

  return (*(v46 + 16))(v46, 0);
}

uint64_t sub_10008C18C(uint64_t a1)
{
  v2 = sub_100004E70(&qword_100201488, &qword_1001ACFD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008C1F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E70(&qword_100201488, &qword_1001ACFD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008C268()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000105C8;

  return sub_10008B5AC(v2, v3, v5, v4);
}

uint64_t sub_10008C328()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000105C8;

  return sub_10008AB7C(v2, v3, v5, v4);
}

uint64_t sub_10008C3F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000105C8;

  return sub_10008A038(v2, v3, v4, v5, v6);
}

uint64_t sub_10008C4BC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_1000895D0(v2, v3, v4);
}

uint64_t sub_10008C574()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000105C8;

  return sub_100088C6C(v2, v3, v4, v5, v6);
}

uint64_t sub_10008C640()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000105C8;

  return sub_1000882C0(v2, v3, v5, v4);
}

uint64_t sub_10008C700()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_1000879B8(v2, v3, v4);
}

uint64_t sub_10008C7B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000105C8;

  return sub_100086FE8(v2, v3, v4, v5, v6);
}

uint64_t sub_10008C87C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_100085E00(v2, v3, v4);
}

uint64_t sub_10008C930()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_1000856A4(v2, v3, v4);
}

uint64_t sub_10008C9E4()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10008CA24()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_100084EF4(v2, v3, v4);
}

uint64_t sub_10008CAD8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008CB18()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000105C8;

  return sub_1000847A4(v2, v3);
}

uint64_t sub_10008CBC4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000105C8;

  return sub_100083C80(v2, v3, v5, v4);
}

uint64_t sub_10008CC84()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_100083344(v2, v3, v4);
}

uint64_t sub_10008CD38()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_100082A60(v2, v3, v4);
}

uint64_t sub_10008CDEC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_100082148(v2, v3, v4);
}

uint64_t sub_10008CEA0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000105C8;

  return sub_1000816D4(v2, v3, v4, v5, v6);
}

uint64_t sub_10008CF68()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_100080BC0(v2, v3, v4);
}

uint64_t sub_10008D01C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000104D4;

  return sub_1000800F0(v2, v3, v5, v4);
}

uint64_t sub_10008D0DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_10007F884(v2, v3, v4);
}

uint64_t sub_10008D190()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_10007EC40(v2, v3, v4);
}

uint64_t sub_10008D244()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000105C8;

  return sub_10007E1CC(v2, v3, v5, v4);
}

uint64_t sub_10008D304()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000105C8;

  return sub_10007D848(v2, v3, v5, v4);
}

uint64_t sub_10008D3C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_10007CBFC(v2, v3, v4);
}

uint64_t sub_10008D478()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10008D4C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000105C8;

  return sub_10007C150(v2, v3, v4, v5, v6);
}

uint64_t sub_10008D590()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_10007B68C(v2, v3, v4);
}

uint64_t sub_10008D644()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000105C8;

  return sub_10007AEE8(v2, v3, v5, v4);
}

uint64_t sub_10008D704()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000105C8;

  return sub_10007A3E4(v2, v3, v5, v4);
}

uint64_t sub_10008D7C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000105C8;

  return sub_100079948(v2, v3, v5, v4);
}

uint64_t sub_10008D884()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000105C8;

  return sub_100078E4C(v2, v3, v5, v4);
}

uint64_t sub_10008D944()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_1000786C4(v2, v3, v4);
}

uint64_t sub_10008D9F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000105C8;

  return sub_100077E34(v2, v3, v5, v4);
}

uint64_t sub_10008DAB8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000105C8;

  return sub_1000772D4(v2, v3, v5, v4);
}

uint64_t sub_10008DB78()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_100076844(v2, v3, v4);
}

uint64_t sub_10008DC2C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_100075FD0(v2, v3, v4);
}

uint64_t sub_10008DCE0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_10007566C(v2, v3, v4);
}

uint64_t sub_10008DD94()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_100074D88(v2, v3, v4);
}

uint64_t sub_10008DE48()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000105C8;

  return sub_10007414C(v2, v3, v5, v4);
}

uint64_t sub_10008DF08()
{
  sub_100005090((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10008DF40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008E148(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

NSObject *sub_10008E18C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DCPresentmentSession();
  static DCPresentmentSession.machServiceName.getter();
  v9 = objc_allocWithZone(NSXPCListener);
  v10 = String._bridgeToObjectiveC()();

  v11 = [v9 initWithMachServiceName:v10];

  *&v2[OBJC_IVAR____TtC7idcredd19PresentmentListener_xpcListener] = v11;
  *&v2[OBJC_IVAR____TtC7idcredd19PresentmentListener_dataContainer] = a1;
  v12 = type metadata accessor for PresentmentListener();
  v21.receiver = v2;
  v21.super_class = v12;

  v13 = objc_msgSendSuper2(&v21, "init");
  v14 = OBJC_IVAR____TtC7idcredd19PresentmentListener_xpcListener;
  v15 = *&v13[OBJC_IVAR____TtC7idcredd19PresentmentListener_xpcListener];
  v16 = v13;
  [v15 setDelegate:v16];
  [*&v13[v14] resume];
  defaultLogger()();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Presentment listener is started", v19, 2u);
  }

  else
  {

    v17 = v16;
  }

  (*(v5 + 8))(v8, v4);
  return v16;
}

id sub_10008E3CC()
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
    _os_log_impl(&_mh_execute_header, v7, v8, "Presentment listener is tearing down", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  [*&v1[OBJC_IVAR____TtC7idcredd19PresentmentListener_xpcListener] invalidate];
  v10 = type metadata accessor for PresentmentListener();
  v12.receiver = v1;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, "dealloc");
}

uint64_t sub_10008E5CC(const char *a1)
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

id sub_10008E7BC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Destroying PresentmentSessionProxy", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = type metadata accessor for PresentmentSessionProxy();
  v12.receiver = v1;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, "dealloc");
}

uint64_t sub_10008E9BC(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return _swift_task_switch(sub_10008EA80, 0, 0);
}

uint64_t sub_10008EA80()
{
  v42 = v0;
  v1 = v0[8];
  v2 = v0[2];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[6];
  if (v5)
  {
    v10 = v0[2];
    v9 = v0[3];
    v39 = v0[8];
    v11 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v11 = 136446466;
    v12 = Array.description.getter();
    v14 = sub_10010150C(v12, v13, &v41);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    v15 = DCPresentmentTypeToString();
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = sub_10010150C(v16, v18, &v41);

    *(v11 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v3, v4, "PresentmentSessionProxy configure with partitions %{public}s, presentment type %{public}s", v11, 0x16u);
    swift_arrayDestroy();

    (*(v6 + 8))(v39, v8);
  }

  else
  {

    (*(v6 + 8))(v7, v8);
  }

  v40 = v0[8];
  v21 = v0[4];
  v20 = v0[5];
  v23 = v0[2];
  v22 = v0[3];
  v24 = *(v20 + OBJC_IVAR____TtC7idcredd23PresentmentSessionProxy_partitions);
  *(v20 + OBJC_IVAR____TtC7idcredd23PresentmentSessionProxy_partitions) = v23;

  v25 = *(v20 + OBJC_IVAR____TtC7idcredd23PresentmentSessionProxy_dataContainer);
  type metadata accessor for PayloadProcessorBuilder();
  v26 = swift_allocObject();
  v27 = type metadata accessor for SESKeystore();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  swift_bridgeObjectRetain_n();

  v30 = SESKeystore.init()();
  v31 = type metadata accessor for PresentmentFlow();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = v21;
  v35 = sub_10009E028(v23, v22, v21, v25, 0, v26, v30);

  v36 = *(v20 + OBJC_IVAR____TtC7idcredd23PresentmentSessionProxy_flow);
  *(v20 + OBJC_IVAR____TtC7idcredd23PresentmentSessionProxy_flow) = v35;

  v37 = v0[1];

  return v37();
}

uint64_t sub_10008EF08(int a1, uint64_t a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5[5] = v9;
  v10 = a3;
  a5;
  v11 = swift_task_alloc();
  v5[6] = v11;
  *v11 = v5;
  v11[1] = sub_10008EFFC;

  return sub_10008E9BC(v9, a2, a3);
}

uint64_t sub_10008EFFC()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;

  v10 = *(v3 + 32);
  if (v2)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_10008F340(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_100072D6C;

  return sub_100094E7C();
}

uint64_t sub_10008F404(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_10008F52C, 0, 0);
}

uint64_t sub_10008F52C()
{
  v1 = v0[10];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentSessionProxy interpretRequest", v4, 2u);
  }

  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[3];

  v9 = *(v7 + 8);
  v0[11] = v9;
  v9(v5, v6);
  sub_1000934EC();
  v18 = *(v0[3] + OBJC_IVAR____TtC7idcredd23PresentmentSessionProxy_flow);
  v0[12] = v18;
  if (v18)
  {

    v19 = swift_task_alloc();
    v0[13] = v19;
    *v19 = v0;
    v19[1] = sub_10008F898;
    v20 = v0[2];

    return sub_10009B0AC(v20);
  }

  else
  {
    (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.badLogic(_:), v0[4]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v11 = v0[10];
    v10 = v0[11];
    v13 = v0[8];
    v12 = v0[9];
    v15 = v0[6];
    v14 = v0[7];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v10(v12, v14);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_10008F898(uint64_t a1)
{
  v4 = *(*v2 + 104);
  v5 = *v2;
  v5[14] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10008FA0C, 0, 0);
  }

  else
  {
    v6 = v5[12];
    v8 = v5[9];
    v7 = v5[10];
    v9 = v5[6];

    v10 = v5[1];

    return v10(a1);
  }
}

uint64_t sub_10008FA0C()
{
  v1 = v0[12];

  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  v8 = v0[7];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v3(v5, v8);
  sub_10005684C(0, &qword_100201BD0, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_10008FCE0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10008FDA4;

  return sub_10008F404(v6);
}

uint64_t sub_10008FDA4()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    sub_10005684C(0, &qword_100201DA0, DCPresentmentProposal_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = isa;
    v9 = 0;
    v8 = isa;
  }

  v12 = *(v3 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t sub_10008FF60(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for CredentialPresentmentRequest();
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

  return _swift_task_switch(sub_1000900E4, 0, 0);
}

uint64_t sub_1000900E4()
{
  v1 = v0[13];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentSessionProxy interpretCredentialRequest", v4, 2u);
  }

  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[3];

  v9 = *(v7 + 8);
  v0[14] = v9;
  v9(v5, v6);
  sub_1000934EC();
  v19 = *(v0[3] + OBJC_IVAR____TtC7idcredd23PresentmentSessionProxy_flow);
  v0[15] = v19;
  if (v19)
  {
    v20 = v0[9];
    v21 = v0[2];

    XPCCredentialPresentmentRequest.value.getter();
    v22 = swift_task_alloc();
    v0[16] = v22;
    *v22 = v0;
    v22[1] = sub_100090478;
    v23 = v0[9];

    return sub_10009BB10(v23);
  }

  else
  {
    (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.badLogic(_:), v0[4]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v11 = v0[13];
    v10 = v0[14];
    v13 = v0[11];
    v12 = v0[12];
    v15 = v0[9];
    v14 = v0[10];
    v16 = v0[6];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v10(v12, v14);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_100090478(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  v4[17] = v1;

  v7 = v4[15];
  if (v1)
  {
    (*(v4[8] + 8))(v4[9], v4[7]);

    return _swift_task_switch(sub_100090650, 0, 0);
  }

  else
  {
    v9 = v4[12];
    v8 = v4[13];
    v10 = v4[8];
    v11 = v4[9];
    v13 = v4 + 6;
    v12 = v4[6];
    (*(v10 + 8))(v11, v13[1]);

    v14 = *(v6 + 8);

    return v14(a1);
  }
}

uint64_t sub_100090650()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[6];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v2(v4, v6);
  sub_10005684C(0, &qword_100201BD0, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_100090930(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100095794;

  return sub_10008FF60(v6);
}

uint64_t sub_1000909F4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100090AB4, 0, 0);
}

uint64_t sub_100090AB4()
{
  v1 = v0[6];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentSessionProxy buildResponse", v4, 2u);
  }

  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];

  (*(v6 + 8))(v5, v7);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_100090BE8;
  v9 = v0[2];
  v10 = v0[3];

  return sub_1000911E8(v9);
}

uint64_t sub_100090BE8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 48);

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v4 + 64) = a1;

    return _swift_task_switch(sub_100090D3C, 0, 0);
  }
}

uint64_t sub_100090D3C()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = [v1 responseData];
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = v0[1];

  return v7(v4, v6);
}

uint64_t sub_100090F78(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10009103C;

  return sub_1000909F4(v6);
}

uint64_t sub_10009103C(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 40);
  v9 = *(*v3 + 24);
  v10 = *(*v3 + 16);
  v11 = *v3;

  if (v4)
  {
    v12 = _convertErrorToNSError(_:)();

    v13 = v12;
    v14 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000092BC(a1, a2);
    v14 = isa;
    v13 = 0;
    v12 = isa;
  }

  v16 = *(v7 + 32);
  (v16)[2](v16, v14, v13);

  _Block_release(v16);
  v17 = *(v11 + 8);

  return v17();
}

uint64_t sub_1000911E8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100091310, 0, 0);
}

uint64_t sub_100091310()
{
  v1 = v0[10];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentSessionProxy buildCredentialResponse", v4, 2u);
  }

  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[3];

  v9 = *(v7 + 8);
  v0[11] = v9;
  v9(v5, v6);
  sub_1000934EC();
  v18 = *(v0[3] + OBJC_IVAR____TtC7idcredd23PresentmentSessionProxy_flow);
  v0[12] = v18;
  if (v18)
  {

    v19 = swift_task_alloc();
    v0[13] = v19;
    *v19 = v0;
    v19[1] = sub_10009167C;
    v20 = v0[2];

    return sub_10009C240(v20);
  }

  else
  {
    (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.badLogic(_:), v0[4]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v11 = v0[10];
    v10 = v0[11];
    v13 = v0[8];
    v12 = v0[9];
    v15 = v0[6];
    v14 = v0[7];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v10(v12, v14);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_10009167C(uint64_t a1)
{
  v4 = *(*v2 + 104);
  v5 = *v2;
  v5[14] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100095730, 0, 0);
  }

  else
  {
    v6 = v5[12];
    v8 = v5[9];
    v7 = v5[10];
    v9 = v5[6];

    v10 = v5[1];

    return v10(a1);
  }
}

uint64_t sub_100091978(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10006AFB0;

  return sub_1000911E8(v6);
}

uint64_t sub_100091A3C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100091B64, 0, 0);
}

uint64_t sub_100091B64()
{
  v1 = v0[10];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentSessionProxy buildErrorResponse", v4, 2u);
  }

  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[3];

  v9 = *(v7 + 8);
  v0[11] = v9;
  v9(v5, v6);
  sub_1000934EC();
  v18 = *(v0[3] + OBJC_IVAR____TtC7idcredd23PresentmentSessionProxy_flow);
  v0[12] = v18;
  if (v18)
  {

    v19 = swift_task_alloc();
    v0[13] = v19;
    *v19 = v0;
    v19[1] = sub_100091ED0;
    v20 = v0[2];

    return sub_10009CB78(v20);
  }

  else
  {
    (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.badLogic(_:), v0[4]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v11 = v0[10];
    v10 = v0[11];
    v13 = v0[8];
    v12 = v0[9];
    v15 = v0[6];
    v14 = v0[7];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v10(v12, v14);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_100091ED0(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 104);
  v7 = *v3;
  v7[14] = v2;

  if (v2)
  {

    return _swift_task_switch(sub_10008FA0C, 0, 0);
  }

  else
  {
    v8 = v7[12];
    v10 = v7[9];
    v9 = v7[10];
    v11 = v7[6];

    v12 = v7[1];

    return v12(a1, a2);
  }
}

uint64_t sub_1000921DC(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_10006DAAC;

  return sub_100091A3C(a1);
}

uint64_t sub_100092298(uint64_t a1, uint64_t a2)
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
  v7 = type metadata accessor for Logger();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000923C4, 0, 0);
}

uint64_t sub_1000923C4()
{
  v1 = v0[11];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentSessionProxy interpretGenericDataRequest", v4, 2u);
  }

  v5 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[4];

  v9 = *(v7 + 8);
  v0[12] = v9;
  v9(v5, v6);
  sub_1000934EC();
  v18 = *(v0[4] + OBJC_IVAR____TtC7idcredd23PresentmentSessionProxy_flow);
  v0[13] = v18;
  if (v18)
  {

    v19 = swift_task_alloc();
    v0[14] = v19;
    *v19 = v0;
    v19[1] = sub_100092730;
    v21 = v0[2];
    v20 = v0[3];

    return sub_10009D0BC(v21, v20);
  }

  else
  {
    (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.badLogic(_:), v0[5]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v11 = v0[11];
    v10 = v0[12];
    v13 = v0[9];
    v12 = v0[10];
    v15 = v0[7];
    v14 = v0[8];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v10(v12, v14);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_100092730(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 112);
  v7 = *v3;
  v7[15] = v2;

  if (v2)
  {

    return _swift_task_switch(sub_100095734, 0, 0);
  }

  else
  {
    v8 = v7[13];
    v10 = v7[10];
    v9 = v7[11];
    v11 = v7[7];

    v12 = v7[1];

    return v12(a1, a2);
  }
}

uint64_t sub_100092A40(void *a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v3[4] = v7;
  v3[5] = v9;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_100095798;

  return sub_100092298(v7, v9);
}

uint64_t sub_100092B1C(uint64_t a1, uint64_t a2)
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
  v7 = type metadata accessor for Logger();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100092C48, 0, 0);
}

uint64_t sub_100092C48()
{
  v1 = v0[11];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentSessionProxy buildGenericDataResponse", v4, 2u);
  }

  v5 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[4];

  v9 = *(v7 + 8);
  v0[12] = v9;
  v9(v5, v6);
  sub_1000934EC();
  v18 = *(v0[4] + OBJC_IVAR____TtC7idcredd23PresentmentSessionProxy_flow);
  v0[13] = v18;
  if (v18)
  {

    v19 = swift_task_alloc();
    v0[14] = v19;
    *v19 = v0;
    v19[1] = sub_100092FB4;
    v21 = v0[2];
    v20 = v0[3];

    return sub_10009D60C(v21, v20);
  }

  else
  {
    (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.badLogic(_:), v0[5]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v11 = v0[11];
    v10 = v0[12];
    v13 = v0[9];
    v12 = v0[10];
    v15 = v0[7];
    v14 = v0[8];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v10(v12, v14);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_100092FB4(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 112);
  v7 = *v3;
  v7[15] = v2;

  if (v2)
  {

    return _swift_task_switch(sub_10009313C, 0, 0);
  }

  else
  {
    v8 = v7[13];
    v10 = v7[10];
    v9 = v7[11];
    v11 = v7[7];

    v12 = v7[1];

    return v12(a1, a2);
  }
}

uint64_t sub_10009313C()
{
  v1 = v0[13];

  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[7];
  v8 = v0[8];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v3(v5, v8);
  sub_10005684C(0, &qword_100201BD0, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_100093410(void *a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v3[4] = v7;
  v3[5] = v9;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_100069500;

  return sub_100092B1C(v7, v9);
}

void sub_1000934EC()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = OBJC_IVAR____TtC7idcredd23PresentmentSessionProxy_partitions;
  v7 = *(v0 + OBJC_IVAR____TtC7idcredd23PresentmentSessionProxy_partitions);
  if (!*(v7 + 16))
  {
    (*(v2 + 104))(&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for DIPError.Code.missingEntitlement(_:), v1);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    v22 = 0x80000001001B6980;
    v23 = 213;
    v21 = 0xD000000000000013;
LABEL_11:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  v8 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 42;
  v25 = 0xE100000000000000;
  __chkstk_darwin(v4);
  v23 = &v24;

  v9 = sub_100120CF8(sub_10000ED28, &v21, v7);

  if ((v9 & 1) != 0 && (_isInternalBuild.getter() & 1) == 0)
  {
    (*(v2 + 104))(v8, enum case for DIPError.Code.missingEntitlement(_:), v1);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    v22 = 0x80000001001B6980;
    v23 = 218;
    v21 = 0xD000000000000013;
    goto LABEL_11;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v2 + 104))(v8, enum case for DIPError.Code.missingEntitlement(_:), v1);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    v22 = 0x80000001001B6980;
    v23 = 223;
    v21 = 0xD000000000000013;
    goto LABEL_11;
  }

  v11 = Strong;
  v12 = v0;
  v13._rawValue = *(v0 + v6);

  v14._countAndFlagsBits = 0xD000000000000023;
  v14._object = 0x80000001001B7340;
  v15 = NSXPCConnection.hasArrayEntitlement(name:values:)(v14, v13);

  if (!v15)
  {
    v24 = 0;
    v25 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v24 = 0xD00000000000001FLL;
    v25 = 0x80000001001B69C0;
    v16 = *(v12 + v6);

    v17 = Array.description.getter();
    v19 = v18;

    v20._countAndFlagsBits = v17;
    v20._object = v19;
    String.append(_:)(v20);

    (*(v2 + 104))(v8, enum case for DIPError.Code.missingEntitlement(_:), v1);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    v22 = 0x80000001001B6980;
    v23 = 226;
    v21 = 0xD000000000000013;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }
}

uint64_t sub_100093A84(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1000105C8;

  return v7();
}

uint64_t sub_100093B6C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1000104D4;

  return v8();
}

uint64_t sub_100093C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_1000946C8(a3, v25 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100094738(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = String.utf8CString.getter() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_100094738(a3);

    return v23;
  }

LABEL_8:
  sub_100094738(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}