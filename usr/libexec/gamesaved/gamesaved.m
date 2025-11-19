int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v8 = sub_100001F70(v3, static Logger.daemon);
  (*(v4 + 16))(v7, v8, v3);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109376;
    *(v11 + 4) = getpid();
    *(v11 + 8) = 1024;
    *(v11 + 10) = geteuid();
    _os_log_impl(&_mh_execute_header, v9, v10, "Starting up, welcome, pid:%d, euid:%u", v11, 0xEu);
  }

  (*(v4 + 8))(v7, v3);
  setiopolicy_np(3, 0, 2);
  qword_10003AAC0 = [objc_allocWithZone(type metadata accessor for ServiceDelegate()) init];
  if (_set_user_dir_suffix())
  {

    v12 = objc_allocWithZone(NSXPCListener);
    v13 = String._bridgeToObjectiveC()();
    v14 = [v12 initWithMachServiceName:v13];

    qword_10003AAC8 = v14;
    [v14 setDelegate:qword_10003AAC0];
    [qword_10003AAC8 resume];
    dispatch_main();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_100001B80()
{
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100001F70(v0, static Logger.daemon);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Connection got interupted", v3, 2u);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong invalidate];
}

void sub_100001C90(uint64_t a1, uint64_t a2)
{
  v3 = (*(*(sub_10000281C(&qword_100039D28, &qword_10002B900) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v16 - v4;
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100001F70(v6, static Logger.daemon);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Connection got invalidated", v9, 2u);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    [Strong setExportedObject:0];
  }

  v12 = dispatch_group_create();
  dispatch_group_enter(v12);
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a2;
  v14[5] = v12;

  v15 = v12;
  sub_100012918(0, 0, v5, &unk_10002B190, v14);

  OS_dispatch_group.wait()();
}

id sub_100001F3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100001F70(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100001FCC()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100002008()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10000205C()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_1000020D8(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100002150(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000021D0@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100002214(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_10000229C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_1000022E4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100002310(uint64_t a1)
{
  v2 = sub_100002B3C(&qword_100039D58);
  v3 = sub_100002B3C(&unk_100039D60);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000023A8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1000023F4@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_100002424(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

_BYTE **sub_100002444(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

__n128 sub_100002458(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002464(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002484(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

BOOL sub_1000024C4(void *a1)
{
  type metadata accessor for GameSaveContainerProvider();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = sub_100010798(&_swiftEmptyArrayStorage);
  type metadata accessor for GameSyncedDirectoryLoader();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  [a1 auditToken];
  type metadata accessor for GameSaveXPCClient();
  swift_allocObject();

  v4 = sub_100015328(v12, v13, v14, v15, v3);
  if (v4)
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = sub_1000027B4;
    v17 = v5;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_100002BBC;
    v15 = &unk_100034E58;
    v6 = _Block_copy(&v12);

    [a1 setInterruptionHandler:v6];
    _Block_release(v6);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v4;
    v16 = sub_100002814;
    v17 = v8;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_100002BBC;
    v15 = &unk_100034EA8;
    v9 = _Block_copy(&v12);

    [a1 setInvalidationHandler:v9];
    _Block_release(v9);
    v10 = sub_10000EE50();
    [a1 setExportedInterface:v10];

    [a1 setExportedObject:v4];
    [a1 resume];
  }

  return v4 != 0;
}

uint64_t sub_10000277C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000027BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000027D4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000281C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002864()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000028AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000296C;

  return sub_100015674(a1, v4, v5, v7, v6);
}

uint64_t sub_10000296C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_100002A88(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100002B3C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NSFileProviderServiceName(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100002BBC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100002C00()
{
  v1 = type metadata accessor for POSIXError();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v6 + 16) = 32;
  *(v6 + 32) = 0;
  *(v6 + 49) = 0;
  *(v6 + 41) = 0;
  *(v6 + 56) = 0;
  *(v6 + 40) = 32;

  v8 = sub_10000C598(v7);
  v10 = v9;

  v15 = v0;
  v11 = sub_100002E94(sub_10000E880, v14, v8, v10);

  if ((v11 & 0x80000000) != 0)
  {
    errno.getter();
    v12 = POSIXErrorCode.init(rawValue:)();
    if ((v12 & 0x100000000) != 0)
    {
      v16 = 22;
    }

    else
    {
      v16 = v12;
    }

    sub_100026FA8(_swiftEmptyArrayStorage);
    sub_10000E8F0(&qword_100039F20, &type metadata accessor for POSIXError);
    _BridgedStoredNSError.init(_:userInfo:)();
    POSIXError._nsError.getter();
    (*(v2 + 8))(v5, v1);
    swift_willThrow();
  }

  return sub_10000E89C(v8, v10);
}

uint64_t sub_100002DF8@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, int *a3@<X8>)
{
  URL.path(percentEncoded:)(0);
  if (a1)
  {
    v6 = a2 - a1;
  }

  else
  {
    v6 = 0;
  }

  v7 = String.utf8CString.getter();

  v8 = setxattr((v7 + 32), "com.apple.FinderInfo", a1, v6, 0, 0);

  *a3 = v8;
  return result;
}

void *sub_100002E94(void *(*a1)(uint64_t *__return_ptr, void *, char *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v6)
    {
      v12[0] = a3;
      LOWORD(v12[1]) = a4;
      BYTE2(v12[1]) = BYTE2(a4);
      BYTE3(v12[1]) = BYTE3(a4);
      BYTE4(v12[1]) = BYTE4(a4);
      BYTE5(v12[1]) = BYTE5(a4);
      v7 = v12 + BYTE6(a4);
      goto LABEL_9;
    }

    v8 = a3;
    v9 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

    return sub_10000C330(v8, v9, a1);
  }

  if (v6 == 2)
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    return sub_10000C330(v8, v9, a1);
  }

  memset(v12, 0, 14);
  v7 = v12;
LABEL_9:
  result = a1(&v11, v12, v7);
  if (!v4)
  {
    return v11;
  }

  return result;
}

uint64_t sub_100002FE4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10000E9E4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10000281C(&qword_100039ED0, &unk_10002B940);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    type metadata accessor for NSFileProviderServiceName(0);
    sub_10000E838(0, &unk_100039F10, NSFileProviderService_ptr);
    sub_10000E8F0(&qword_100039D58, type metadata accessor for NSFileProviderServiceName);
    **(*(v4 + 64) + 40) = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

void sub_100003124()
{
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100001F70(v0, static Logger.daemon);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "service connection interrupted. Terminating.", v2, 2u);
  }
}

uint64_t sub_10000320C(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_10000E9E4((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_10000281C(&qword_100039ED0, &unk_10002B940);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1000032E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[76] = v5;
  v6[75] = a5;
  v6[74] = a4;
  v6[73] = a3;
  v6[72] = a2;
  v6[71] = a1;
  v7 = *(*(type metadata accessor for CocoaError.Code() - 8) + 64) + 15;
  v6[77] = swift_task_alloc();
  v8 = type metadata accessor for CocoaError();
  v6[78] = v8;
  v9 = *(v8 - 8);
  v6[79] = v9;
  v10 = *(v9 + 64) + 15;
  v6[80] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v6[81] = v11;
  v12 = *(v11 - 8);
  v6[82] = v12;
  v13 = *(v12 + 64) + 15;
  v6[83] = swift_task_alloc();
  v14 = type metadata accessor for URL();
  v6[84] = v14;
  v15 = *(v14 - 8);
  v6[85] = v15;
  v6[86] = *(v15 + 64);
  v6[87] = swift_task_alloc();
  v6[88] = swift_task_alloc();
  v6[89] = swift_task_alloc();
  v6[90] = swift_task_alloc();
  v6[91] = swift_task_alloc();
  v6[92] = swift_task_alloc();
  v16 = *(*(sub_10000281C(&qword_100039D28, &qword_10002B900) - 8) + 64) + 15;
  v6[93] = swift_task_alloc();

  return _swift_task_switch(sub_100003544, 0, 0);
}

uint64_t sub_100003544()
{
  v30 = v0;
  v1 = v0[74];
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v2 = v0[73];
  v3 = type metadata accessor for Logger();
  v0[94] = sub_100001F70(v3, static Logger.daemon);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[73];
    v7 = v0[72];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100020014(v7, v6, &v29);
    _os_log_impl(&_mh_execute_header, v4, v5, "Syncing Container %s", v8, 0xCu);
    sub_10000EA28(v9);
  }

  v10 = v0[93];
  v11 = v0[75];
  type metadata accessor for DeviceListFetcher();
  v12 = swift_allocObject();
  v0[95] = v12;
  *(v12 + 16) = v11;
  *(v12 + 24) = 0;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v12;
  v14[5] = v11;
  v15 = v11;

  v16 = sub_100012C18(0, 0, v10, &unk_10002B3D0, v14);
  v17 = *(v12 + 24);
  *(v12 + 24) = v16;

  if (v1 == 255)
  {
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Cleaning up existing directory", v20, 2u);
    }
  }

  v21 = v0[76];
  v22 = v0[75];
  v23 = [objc_opt_self() progressWithTotalUnitCount:100];
  v0[96] = v23;
  v24 = String._bridgeToObjectiveC()();
  [v22 setLocalizedDescription:v24];

  v25 = String._bridgeToObjectiveC()();
  v0[97] = _NSProgressRemoteLocalizedDescriptionKey;
  [v22 setUserInfoObject:v25 forKey:?];

  [v22 addChild:v23 withPendingUnitCount:20];
  v26 = *(v21 + 16);
  v27 = swift_task_alloc();
  v0[98] = v27;
  *v27 = v0;
  v27[1] = sub_100003960;

  return sub_10002901C();
}

uint64_t sub_100003960(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 784);
  v5 = *v1;
  v3[99] = a1;

  v6 = swift_task_alloc();
  v3[100] = v6;
  *v6 = v5;
  v6[1] = sub_100003B08;
  v7 = v3[75];
  v8 = v3[73];
  v9 = v3[72];

  return sub_100013544(v9, v8, v7);
}

uint64_t sub_100003B08(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 800);
  v7 = *v2;
  *(v3 + 808) = a1;
  *(v3 + 816) = v1;

  if (v1)
  {
    v5 = sub_10000A194;
  }

  else
  {
    v5 = sub_100003C4C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100003C4C()
{
  v1 = v0[101];
  if (v1)
  {
    v2 = v0[101];

    return _swift_task_switch(sub_100003ECC, v1, 0);
  }

  else
  {
    v3 = v0[94];
    v4 = objc_allocWithZone(NSError);
    v5 = String._bridgeToObjectiveC()();
    [v4 initWithDomain:v5 code:1 userInfo:0];

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Got nil container", v8, 2u);
    }

    v9 = v0[99];
    v10 = v0[96];
    v11 = v0[95];

    swift_willThrow();

    v12 = v0[93];
    v13 = v0[92];
    v14 = v0[91];
    v15 = v0[90];
    v16 = v0[89];
    v17 = v0[88];
    v18 = v0[87];
    v19 = v0[83];
    v20 = v0[80];
    v21 = v0[77];

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_100003ECC()
{
  v1 = v0[101];
  v2 = v0[91];
  v3 = v0[85];
  v4 = v0[84];
  v5 = OBJC_IVAR____TtC9gamesaved19UbiquitousContainer_url;
  v6 = *(v3 + 16);
  v0[103] = v6;
  v0[104] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v1 + v5, v4);

  return _swift_task_switch(sub_100003F98, 0, 0);
}

uint64_t sub_100003F98()
{
  v1 = *(v0 + 736);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v4 = *(v0 + 680);
  v5 = *(v0 + 672);
  URL.appendingPathComponent(_:)();
  v6 = *(v4 + 8);
  *(v0 + 840) = v6;
  *(v0 + 848) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v5);
  URL.appendingPathComponent(_:isDirectory:)();
  URL.appendingPathExtension(_:)();
  v6(v2, v5);
  v7 = objc_opt_self();
  *(v0 + 856) = v7;
  v8 = [v7 defaultManager];
  URL.path(percentEncoded:)(0);
  v9 = String._bridgeToObjectiveC()();

  v10 = [v8 fileExistsAtPath:v9];

  if (v10)
  {
    v11 = *(v0 + 816);
    if (*(v0 + 592) == 255)
    {
      v12 = *(v0 + 720);
      v13 = [*(v0 + 856) defaultManager];
      URL.path(percentEncoded:)(0);
      v14 = String._bridgeToObjectiveC()();

      LODWORD(v12) = [v13 fileExistsAtPath:v14];

      if (v12)
      {
        v15 = *(v0 + 752);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&_mh_execute_header, v16, v17, "Cleaning game directory", v18, 2u);
        }

        v19 = *(v0 + 808);
        v20 = sub_100006230;
        goto LABEL_33;
      }
    }

    v41 = *(v0 + 752);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Syncing game directory", v44, 2u);
    }

    v45 = *(v0 + 856);
    v46 = *(v0 + 768);
    v47 = *(v0 + 720);

    [v46 setCompletedUnitCount:85];
    v48 = [v45 defaultManager];
    URL.path(percentEncoded:)(0);
    v49 = String._bridgeToObjectiveC()();

    LOBYTE(v47) = [v48 fileExistsAtPath:v49];
    *(v0 + 1128) = v47;

    if ((v47 & 1) == 0)
    {
      v181 = v11;
      v66 = *(v0 + 752);
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&_mh_execute_header, v67, v68, "Creating Bundle...", v69, 2u);
      }

      v70 = *(v0 + 856);
      v71 = *(v0 + 776);
      v72 = *(v0 + 768);
      v73 = *(v0 + 736);
      v74 = *(v0 + 600);

      v75 = String._bridgeToObjectiveC()();
      [v74 setLocalizedDescription:v75];

      v76 = String._bridgeToObjectiveC()();
      [v74 setUserInfoObject:v76 forKey:v71];

      [v72 setCompletedUnitCount:86];
      v77 = [v70 defaultManager];
      URL._bridgeToObjectiveC()(v78);
      v80 = v79;
      *(v0 + 520) = 0;
      LODWORD(v76) = [v77 createDirectoryAtURL:v79 withIntermediateDirectories:1 attributes:0 error:v0 + 520];

      v81 = *(v0 + 520);
      if (v76)
      {
        v174 = *(v0 + 840);
        v175 = *(v0 + 848);
        v82 = *(v0 + 728);
        v176 = *(v0 + 712);
        v178 = *(v0 + 856);
        v83 = *(v0 + 704);
        v84 = *(v0 + 672);
        v85 = *(v0 + 664);
        v86 = *(v0 + 656);
        v87 = *(v0 + 648);
        v88 = v81;
        v89 = NSTemporaryDirectory();
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        URL.init(fileURLWithPath:)();

        UUID.init()();
        UUID.uuidString.getter();
        (*(v86 + 8))(v85, v87);
        URL.appendingPathComponent(_:)();

        v174(v83, v84);
        URL.appendingPathExtension(_:)();
        v174(v82, v84);
        v90 = [v178 defaultManager];
        URL._bridgeToObjectiveC()(v91);
        v93 = v92;
        *(v0 + 528) = 0;
        LODWORD(v87) = [v90 createDirectoryAtURL:v92 withIntermediateDirectories:1 attributes:0 error:v0 + 528];

        v94 = *(v0 + 528);
        if (v87)
        {
          v95 = *(v0 + 712);
          v96 = v94;
          sub_100002C00();
          if (v181)
          {
            v97 = *(v0 + 848);
            (*(v0 + 840))(*(v0 + 712), *(v0 + 672));
          }

          else
          {
            v157 = *(v0 + 720);
            v158 = [*(v0 + 856) defaultManager];
            URL._bridgeToObjectiveC()(v159);
            v161 = v160;
            URL._bridgeToObjectiveC()(v162);
            v164 = v163;
            *(v0 + 536) = 0;
            v165 = [v158 moveItemAtURL:v161 toURL:v163 error:v0 + 536];

            v166 = *(v0 + 536);
            v167 = *(v0 + 848);
            v168 = *(v0 + 840);
            v169 = *(v0 + 712);
            v170 = *(v0 + 672);
            if (v165)
            {
              v171 = v166;
              v168(v169, v170);
              v19 = *(v0 + 808);
              v20 = sub_1000075B8;
LABEL_33:

              return _swift_task_switch(v20, v19, 0);
            }

            v172 = v166;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            v168(v169, v170);
          }
        }

        else
        {
          v103 = *(v0 + 848);
          v104 = *(v0 + 840);
          v105 = *(v0 + 712);
          v106 = *(v0 + 672);
          v107 = v94;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v104(v105, v106);
        }
      }

      else
      {
        v98 = v81;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      v108 = *(v0 + 752);
      swift_errorRetain();
      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        *v111 = 138412290;
        swift_errorRetain();
        v113 = _swift_stdlib_bridgeErrorToNSError();
        *(v111 + 4) = v113;
        *v112 = v113;
        _os_log_impl(&_mh_execute_header, v109, v110, "Error creating Bundle: %@", v111, 0xCu);
        sub_10000C148(v112);
      }

      v114 = *(v0 + 848);
      v115 = v109;
      v116 = *(v0 + 840);
      v117 = *(v0 + 808);
      v118 = *(v0 + 792);
      v119 = *(v0 + 768);
      v120 = *(v0 + 760);
      v179 = *(v0 + 736);
      v121 = *(v0 + 720);
      v122 = *(v0 + 672);

      swift_willThrow();

      v116(v121, v122);
      v116(v179, v122);
LABEL_40:
      v123 = *(v0 + 744);
      v124 = *(v0 + 736);
      v125 = *(v0 + 728);
      v126 = *(v0 + 720);
      v127 = *(v0 + 712);
      v128 = *(v0 + 704);
      v129 = *(v0 + 696);
      v130 = *(v0 + 664);
      v131 = *(v0 + 640);
      v132 = *(v0 + 616);

      v133 = *(v0 + 8);

      return v133();
    }

    v50 = *(v0 + 720);
    v51 = *(v0 + 592);
    [*(v0 + 768) setCompletedUnitCount:100];
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    URL.path(percentEncoded:)(0);
    v52 = String.utf8CString.getter();

    LODWORD(v50) = lstat((v52 + 32), (v0 + 160));

    if ((v50 & 0x80000000) != 0 || (*(v0 + 279) & 0x40) == 0)
    {
      if (v51 != 2)
      {
LABEL_18:
        *(v0 + 1129) = 1;
        v53 = *(v0 + 856);
        v54 = *(v0 + 720);
        v55 = *(v0 + 696);
        URL.appendingPathComponent(_:isDirectory:)();
        v56 = [v53 defaultManager];
        URL._bridgeToObjectiveC()(v57);
        v59 = v58;
        *(v0 + 544) = 0;
        LODWORD(v55) = [v56 createDirectoryAtURL:v58 withIntermediateDirectories:1 attributes:0 error:v0 + 544];

        v60 = *(v0 + 544);
        if (v55)
        {
          v61 = v60;
          v62 = swift_task_alloc();
          *(v0 + 1088) = v62;
          *v62 = v0;
          v62[1] = sub_100009DF0;
          v63 = *(v0 + 760);
          v64 = *(v0 + 720);
          v65 = *(v0 + 600);

          return sub_10000D3E4(v0 + 448, v64, v65, v63);
        }

        v134 = *(v0 + 752);
        v135 = v60;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        swift_errorRetain();
        v136 = Logger.logObject.getter();
        v137 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v136, v137))
        {
          v138 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          *v138 = 138412290;
          swift_errorRetain();
          v140 = _swift_stdlib_bridgeErrorToNSError();
          *(v138 + 4) = v140;
          *v139 = v140;
          _os_log_impl(&_mh_execute_header, v136, v137, "Error creating Bundle Data Folder: %@", v138, 0xCu);
          sub_10000C148(v139);
        }

        v141 = *(v0 + 848);
        v142 = *(v0 + 840);
        v143 = *(v0 + 808);
        v144 = *(v0 + 792);
        v145 = *(v0 + 768);
        v146 = *(v0 + 760);
        v177 = *(v0 + 720);
        v180 = *(v0 + 736);
        v147 = *(v0 + 696);
        v148 = v136;
        v149 = *(v0 + 672);

        swift_willThrow();

        v142(v147, v149);
        v142(v177, v149);
        v142(v180, v149);
        goto LABEL_40;
      }

LABEL_30:
      v99 = *(v0 + 752);
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        *v102 = 0;
        _os_log_impl(&_mh_execute_header, v100, v101, "Fetching latest revision...", v102, 2u);
      }

      v19 = *(v0 + 808);
      v20 = sub_100007E5C;
      goto LABEL_33;
    }

    if (v51 == 2)
    {
      goto LABEL_30;
    }

    v150 = *(v0 + 752);
    v151 = Logger.logObject.getter();
    v152 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v151, v152))
    {
      v153 = swift_slowAlloc();
      *v153 = 0;
      _os_log_impl(&_mh_execute_header, v151, v152, "Bundle is dataless, fetching latest revision...", v153, 2u);
    }

    if (*(v0 + 1128) != 1 || *(v0 + 592) == 1)
    {
      goto LABEL_18;
    }

    v154 = swift_task_alloc();
    *(v0 + 1000) = v154;
    *v154 = v0;
    v154[1] = sub_100008530;
    v155 = *(v0 + 720);
    v156 = *(v0 + 600);

    return sub_10000C648(v155, v156);
  }

  else
  {
    v21 = *(v0 + 752);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "The game directory does not exist, making sure we are in sync with the server", v24, 2u);
    }

    v25 = *(v0 + 808);
    v26 = *(v0 + 600);
    v27 = *(v0 + 592);

    v28 = v27 == 1;
    v29 = sub_10000281C(&qword_100039E48, &unk_10002B3E0);
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    v32 = swift_allocObject();
    *(v0 + 864) = v32;
    *(v32 + 3) = [objc_allocWithZone(NSRecursiveLock) init];
    v33 = *(*v32 + 104);
    v34 = sub_10000281C(&qword_100039E50, &qword_10002BE90);
    (*(*(v34 - 8) + 56))(&v32[v33], 1, 1, v34);
    v35 = &v32[*(*v32 + 112)];
    *v35 = 0;
    *(v35 + 1) = 0;
    *(v32 + 2) = v26;
    v36 = swift_allocObject();
    *(v0 + 872) = v36;
    *(v36 + 16) = v28;
    *(v36 + 24) = v25;
    v37 = v26;

    v38 = swift_task_alloc();
    *(v0 + 880) = v38;
    *(v38 + 16) = v32;
    *(v38 + 24) = &unk_10002B3F8;
    *(v38 + 32) = v36;
    *(v38 + 40) = 0;
    *(v38 + 48) = 0;
    *(v38 + 56) = 1;
    v39 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v40 = swift_task_alloc();
    *(v0 + 888) = v40;
    *v40 = v0;
    v40[1] = sub_1000050C4;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v40, 0, 0, 0xD000000000000021, 0x800000010002CBA0, sub_10000C298, v38, &type metadata for () + 8);
  }
}

uint64_t sub_1000050C4()
{
  v2 = *v1;
  v3 = *(*v1 + 888);
  v8 = *v1;
  *(*v1 + 896) = v0;

  if (v0)
  {
    v4 = sub_100005F98;
  }

  else
  {
    v5 = *(v2 + 880);
    v6 = *(v2 + 872);

    v4 = sub_100005220;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100005220()
{
  v1 = *(v0 + 864);

  v2 = *(v0 + 896);
  if (*(v0 + 592) == 255)
  {
    v3 = *(v0 + 720);
    v4 = [*(v0 + 856) defaultManager];
    URL.path(percentEncoded:)(0);
    v5 = String._bridgeToObjectiveC()();

    LODWORD(v3) = [v4 fileExistsAtPath:v5];

    if (v3)
    {
      v6 = *(v0 + 752);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "Cleaning game directory", v9, 2u);
      }

      v10 = *(v0 + 808);
      v11 = sub_100006230;
      goto LABEL_27;
    }
  }

  v12 = *(v0 + 752);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Syncing game directory", v15, 2u);
  }

  v16 = *(v0 + 856);
  v17 = *(v0 + 768);
  v18 = *(v0 + 720);

  [v17 setCompletedUnitCount:85];
  v19 = [v16 defaultManager];
  URL.path(percentEncoded:)(0);
  v20 = String._bridgeToObjectiveC()();

  LOBYTE(v18) = [v19 fileExistsAtPath:v20];
  *(v0 + 1128) = v18;

  if ((v18 & 1) == 0)
  {
    v152 = v2;
    v38 = *(v0 + 752);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Creating Bundle...", v41, 2u);
    }

    v42 = *(v0 + 856);
    v43 = *(v0 + 776);
    v44 = *(v0 + 768);
    v45 = *(v0 + 736);
    v46 = *(v0 + 600);

    v47 = String._bridgeToObjectiveC()();
    [v46 setLocalizedDescription:v47];

    v48 = String._bridgeToObjectiveC()();
    [v46 setUserInfoObject:v48 forKey:v43];

    [v44 setCompletedUnitCount:86];
    v49 = [v42 defaultManager];
    URL._bridgeToObjectiveC()(v50);
    v52 = v51;
    *(v0 + 520) = 0;
    LODWORD(v48) = [v49 createDirectoryAtURL:v51 withIntermediateDirectories:1 attributes:0 error:v0 + 520];

    v53 = *(v0 + 520);
    if (v48)
    {
      v145 = *(v0 + 840);
      v146 = *(v0 + 848);
      v54 = *(v0 + 728);
      v147 = *(v0 + 712);
      v149 = *(v0 + 856);
      v55 = *(v0 + 704);
      v56 = *(v0 + 672);
      v57 = *(v0 + 664);
      v58 = *(v0 + 656);
      v59 = *(v0 + 648);
      v60 = v53;
      v61 = NSTemporaryDirectory();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      URL.init(fileURLWithPath:)();

      UUID.init()();
      UUID.uuidString.getter();
      (*(v58 + 8))(v57, v59);
      URL.appendingPathComponent(_:)();

      v145(v55, v56);
      URL.appendingPathExtension(_:)();
      v145(v54, v56);
      v62 = [v149 defaultManager];
      URL._bridgeToObjectiveC()(v63);
      v65 = v64;
      *(v0 + 528) = 0;
      LODWORD(v58) = [v62 createDirectoryAtURL:v64 withIntermediateDirectories:1 attributes:0 error:v0 + 528];

      v66 = *(v0 + 528);
      if (v58)
      {
        v67 = *(v0 + 712);
        v68 = v66;
        sub_100002C00();
        if (v152)
        {
          v69 = *(v0 + 848);
          (*(v0 + 840))(*(v0 + 712), *(v0 + 672));
        }

        else
        {
          v129 = *(v0 + 720);
          v130 = [*(v0 + 856) defaultManager];
          URL._bridgeToObjectiveC()(v131);
          v133 = v132;
          URL._bridgeToObjectiveC()(v134);
          v136 = v135;
          *(v0 + 536) = 0;
          v137 = [v130 moveItemAtURL:v133 toURL:v135 error:v0 + 536];

          v138 = *(v0 + 536);
          v139 = *(v0 + 848);
          v140 = *(v0 + 840);
          v141 = *(v0 + 712);
          v142 = *(v0 + 672);
          if (v137)
          {
            v143 = v138;
            v140(v141, v142);
            v10 = *(v0 + 808);
            v11 = sub_1000075B8;
LABEL_27:

            return _swift_task_switch(v11, v10, 0);
          }

          v144 = v138;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v140(v141, v142);
        }
      }

      else
      {
        v75 = *(v0 + 848);
        v76 = *(v0 + 840);
        v77 = *(v0 + 712);
        v78 = *(v0 + 672);
        v79 = v66;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v76(v77, v78);
      }
    }

    else
    {
      v70 = v53;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v80 = *(v0 + 752);
    swift_errorRetain();
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *v83 = 138412290;
      swift_errorRetain();
      v85 = _swift_stdlib_bridgeErrorToNSError();
      *(v83 + 4) = v85;
      *v84 = v85;
      _os_log_impl(&_mh_execute_header, v81, v82, "Error creating Bundle: %@", v83, 0xCu);
      sub_10000C148(v84);
    }

    v86 = *(v0 + 848);
    v87 = v81;
    v88 = *(v0 + 840);
    v89 = *(v0 + 808);
    v90 = *(v0 + 792);
    v91 = *(v0 + 768);
    v92 = *(v0 + 760);
    v150 = *(v0 + 736);
    v93 = *(v0 + 720);
    v94 = *(v0 + 672);

    swift_willThrow();

    v88(v93, v94);
    v88(v150, v94);
LABEL_34:
    v95 = *(v0 + 744);
    v96 = *(v0 + 736);
    v97 = *(v0 + 728);
    v98 = *(v0 + 720);
    v99 = *(v0 + 712);
    v100 = *(v0 + 704);
    v101 = *(v0 + 696);
    v102 = *(v0 + 664);
    v103 = *(v0 + 640);
    v104 = *(v0 + 616);

    v105 = *(v0 + 8);

    return v105();
  }

  v21 = *(v0 + 720);
  v22 = *(v0 + 592);
  [*(v0 + 768) setCompletedUnitCount:100];
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  URL.path(percentEncoded:)(0);
  v23 = String.utf8CString.getter();

  LODWORD(v21) = lstat((v23 + 32), (v0 + 160));

  if ((v21 & 0x80000000) != 0 || (*(v0 + 279) & 0x40) == 0)
  {
    if (v22 != 2)
    {
LABEL_12:
      *(v0 + 1129) = 1;
      v24 = *(v0 + 856);
      v25 = *(v0 + 720);
      v26 = *(v0 + 696);
      URL.appendingPathComponent(_:isDirectory:)();
      v27 = [v24 defaultManager];
      URL._bridgeToObjectiveC()(v28);
      v30 = v29;
      *(v0 + 544) = 0;
      LODWORD(v26) = [v27 createDirectoryAtURL:v29 withIntermediateDirectories:1 attributes:0 error:v0 + 544];

      v31 = *(v0 + 544);
      if (v26)
      {
        v32 = v31;
        v33 = swift_task_alloc();
        *(v0 + 1088) = v33;
        *v33 = v0;
        v33[1] = sub_100009DF0;
        v34 = *(v0 + 760);
        v35 = *(v0 + 720);
        v36 = *(v0 + 600);

        return sub_10000D3E4(v0 + 448, v35, v36, v34);
      }

      v106 = *(v0 + 752);
      v107 = v31;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v108 = Logger.logObject.getter();
      v109 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        *v110 = 138412290;
        swift_errorRetain();
        v112 = _swift_stdlib_bridgeErrorToNSError();
        *(v110 + 4) = v112;
        *v111 = v112;
        _os_log_impl(&_mh_execute_header, v108, v109, "Error creating Bundle Data Folder: %@", v110, 0xCu);
        sub_10000C148(v111);
      }

      v113 = *(v0 + 848);
      v114 = *(v0 + 840);
      v115 = *(v0 + 808);
      v116 = *(v0 + 792);
      v117 = *(v0 + 768);
      v118 = *(v0 + 760);
      v148 = *(v0 + 720);
      v151 = *(v0 + 736);
      v119 = *(v0 + 696);
      v120 = v108;
      v121 = *(v0 + 672);

      swift_willThrow();

      v114(v119, v121);
      v114(v148, v121);
      v114(v151, v121);
      goto LABEL_34;
    }

LABEL_24:
    v71 = *(v0 + 752);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&_mh_execute_header, v72, v73, "Fetching latest revision...", v74, 2u);
    }

    v10 = *(v0 + 808);
    v11 = sub_100007E5C;
    goto LABEL_27;
  }

  if (v22 == 2)
  {
    goto LABEL_24;
  }

  v122 = *(v0 + 752);
  v123 = Logger.logObject.getter();
  v124 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v123, v124))
  {
    v125 = swift_slowAlloc();
    *v125 = 0;
    _os_log_impl(&_mh_execute_header, v123, v124, "Bundle is dataless, fetching latest revision...", v125, 2u);
  }

  if (*(v0 + 1128) != 1 || *(v0 + 592) == 1)
  {
    goto LABEL_12;
  }

  v126 = swift_task_alloc();
  *(v0 + 1000) = v126;
  *v126 = v0;
  v126[1] = sub_100008530;
  v127 = *(v0 + 720);
  v128 = *(v0 + 600);

  return sub_10000C648(v127, v128);
}

uint64_t sub_100005F98()
{
  v1 = v0[112];
  v2 = v0[110];
  v3 = v0[109];
  v4 = v0[108];
  v5 = v0[94];

  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[112];
    if (v0[74] == 1)
    {
      v9 = "Error waiting for initial sync: %@";
    }

    else
    {
      v9 = "Error refreshing container: %@";
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, v9, v10, 0xCu);
    sub_10000C148(v11);
  }

  v13 = v0[112];
  v14 = v0[106];
  v15 = v6;
  v16 = v0[105];
  v17 = v0[101];
  v18 = v0[99];
  v19 = v0[96];
  v20 = v0[95];
  v35 = v0[92];
  v21 = v0[90];
  v22 = v0[84];

  swift_willThrow();

  v16(v21, v22);
  v16(v35, v22);
  v36 = v0[112];
  v23 = v0[93];
  v24 = v0[92];
  v25 = v0[91];
  v26 = v0[90];
  v27 = v0[89];
  v28 = v0[88];
  v29 = v0[87];
  v30 = v0[83];
  v31 = v0[80];
  v32 = v0[77];

  v33 = v0[1];

  return v33();
}

uint64_t sub_100006230()
{
  v1 = v0[101];
  v2 = OBJC_IVAR____TtC9gamesaved19UbiquitousContainer_containerObserver;
  v0[113] = OBJC_IVAR____TtC9gamesaved19UbiquitousContainer_containerObserver;
  v0[114] = *(v1 + v2);

  v3 = swift_task_alloc();
  v0[115] = v3;
  *v3 = v0;
  v3[1] = sub_100006324;
  v4 = v0[90];
  v5 = v0[75];

  return sub_100019330(v4, v5);
}

uint64_t sub_100006324()
{
  v2 = *v1;
  v3 = *(*v1 + 920);
  v4 = *v1;
  *(*v1 + 928) = v0;

  v5 = *(v2 + 912);

  if (v0)
  {
    v6 = sub_10000A3B0;
  }

  else
  {
    v6 = sub_100006484;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100006484()
{
  v1 = *(v0 + 720);
  v2 = [*(v0 + 856) defaultManager];
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  *(v0 + 560) = 0;
  v6 = [v2 removeItemAtURL:v4 error:v0 + 560];

  v7 = *(v0 + 560);
  if (v6)
  {
    v8 = *(v0 + 808);
    v9 = v7;

    return _swift_task_switch(sub_1000066E8, v8, 0);
  }

  else
  {
    v10 = *(v0 + 848);
    v11 = *(v0 + 840);
    v12 = *(v0 + 808);
    v13 = *(v0 + 792);
    v14 = *(v0 + 768);
    v15 = *(v0 + 760);
    v30 = *(v0 + 720);
    v31 = *(v0 + 736);
    v16 = *(v0 + 672);
    v17 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v11(v30, v16);
    v11(v31, v16);
    v18 = *(v0 + 744);
    v19 = *(v0 + 736);
    v20 = *(v0 + 728);
    v21 = *(v0 + 720);
    v22 = *(v0 + 712);
    v23 = *(v0 + 704);
    v24 = *(v0 + 696);
    v25 = *(v0 + 664);
    v26 = *(v0 + 640);
    v27 = *(v0 + 616);

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_1000066E8()
{
  v0[117] = *(v0[101] + v0[113]);

  v1 = swift_task_alloc();
  v0[118] = v1;
  *v1 = v0;
  v1[1] = sub_1000067D0;
  v2 = v0[90];
  v3 = v0[75];

  return sub_10001A57C(v2, v3);
}

uint64_t sub_1000067D0()
{
  v2 = *v1;
  v3 = *(*v1 + 944);
  v4 = *v1;
  *(*v1 + 952) = v0;

  v5 = *(v2 + 936);

  if (v0)
  {
    v6 = sub_10000A530;
  }

  else
  {
    v6 = sub_100006930;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100006930()
{
  v1 = *(v0 + 952);
  v2 = *(v0 + 752);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Syncing game directory", v5, 2u);
  }

  v6 = *(v0 + 856);
  v7 = *(v0 + 768);
  v8 = *(v0 + 720);

  [v7 setCompletedUnitCount:85];
  v9 = [v6 defaultManager];
  URL.path(percentEncoded:)(0);
  v10 = String._bridgeToObjectiveC()();

  LOBYTE(v8) = [v9 fileExistsAtPath:v10];
  *(v0 + 1128) = v8;

  if ((v8 & 1) == 0)
  {
    v144 = v1;
    v28 = *(v0 + 752);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Creating Bundle...", v31, 2u);
    }

    v32 = *(v0 + 856);
    v33 = *(v0 + 776);
    v34 = *(v0 + 768);
    v35 = *(v0 + 736);
    v36 = *(v0 + 600);

    v37 = String._bridgeToObjectiveC()();
    [v36 setLocalizedDescription:v37];

    v38 = String._bridgeToObjectiveC()();
    [v36 setUserInfoObject:v38 forKey:v33];

    [v34 setCompletedUnitCount:86];
    v39 = [v32 defaultManager];
    URL._bridgeToObjectiveC()(v40);
    v42 = v41;
    *(v0 + 520) = 0;
    LODWORD(v38) = [v39 createDirectoryAtURL:v41 withIntermediateDirectories:1 attributes:0 error:v0 + 520];

    v43 = *(v0 + 520);
    if (v38)
    {
      v137 = *(v0 + 840);
      v138 = *(v0 + 848);
      v44 = *(v0 + 728);
      v139 = *(v0 + 712);
      v141 = *(v0 + 856);
      v45 = *(v0 + 704);
      v46 = *(v0 + 672);
      v47 = *(v0 + 664);
      v48 = *(v0 + 656);
      v49 = *(v0 + 648);
      v50 = v43;
      v51 = NSTemporaryDirectory();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      URL.init(fileURLWithPath:)();

      UUID.init()();
      UUID.uuidString.getter();
      (*(v48 + 8))(v47, v49);
      URL.appendingPathComponent(_:)();

      v137(v45, v46);
      URL.appendingPathExtension(_:)();
      v137(v44, v46);
      v52 = [v141 defaultManager];
      URL._bridgeToObjectiveC()(v53);
      v55 = v54;
      *(v0 + 528) = 0;
      LODWORD(v48) = [v52 createDirectoryAtURL:v54 withIntermediateDirectories:1 attributes:0 error:v0 + 528];

      v56 = *(v0 + 528);
      if (v48)
      {
        v57 = *(v0 + 712);
        v58 = v56;
        sub_100002C00();
        if (v144)
        {
          v59 = *(v0 + 848);
          (*(v0 + 840))(*(v0 + 712), *(v0 + 672));
        }

        else
        {
          v121 = *(v0 + 720);
          v122 = [*(v0 + 856) defaultManager];
          URL._bridgeToObjectiveC()(v123);
          v125 = v124;
          URL._bridgeToObjectiveC()(v126);
          v128 = v127;
          *(v0 + 536) = 0;
          v129 = [v122 moveItemAtURL:v125 toURL:v127 error:v0 + 536];

          v130 = *(v0 + 536);
          v131 = *(v0 + 848);
          v132 = *(v0 + 840);
          v133 = *(v0 + 712);
          v134 = *(v0 + 672);
          if (v129)
          {
            v135 = v130;
            v132(v133, v134);
            v65 = *(v0 + 808);
            v66 = sub_1000075B8;
LABEL_22:

            return _swift_task_switch(v66, v65, 0);
          }

          v136 = v130;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v132(v133, v134);
        }
      }

      else
      {
        v67 = *(v0 + 848);
        v68 = *(v0 + 840);
        v69 = *(v0 + 712);
        v70 = *(v0 + 672);
        v71 = v56;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v68(v69, v70);
      }
    }

    else
    {
      v60 = v43;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v72 = *(v0 + 752);
    swift_errorRetain();
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v75 = 138412290;
      swift_errorRetain();
      v77 = _swift_stdlib_bridgeErrorToNSError();
      *(v75 + 4) = v77;
      *v76 = v77;
      _os_log_impl(&_mh_execute_header, v73, v74, "Error creating Bundle: %@", v75, 0xCu);
      sub_10000C148(v76);
    }

    v78 = *(v0 + 848);
    v79 = v73;
    v80 = *(v0 + 840);
    v81 = *(v0 + 808);
    v82 = *(v0 + 792);
    v83 = *(v0 + 768);
    v84 = *(v0 + 760);
    v142 = *(v0 + 736);
    v85 = *(v0 + 720);
    v86 = *(v0 + 672);

    swift_willThrow();

    v80(v85, v86);
    v80(v142, v86);
LABEL_29:
    v87 = *(v0 + 744);
    v88 = *(v0 + 736);
    v89 = *(v0 + 728);
    v90 = *(v0 + 720);
    v91 = *(v0 + 712);
    v92 = *(v0 + 704);
    v93 = *(v0 + 696);
    v94 = *(v0 + 664);
    v95 = *(v0 + 640);
    v96 = *(v0 + 616);

    v97 = *(v0 + 8);

    return v97();
  }

  v11 = *(v0 + 720);
  v12 = *(v0 + 592);
  [*(v0 + 768) setCompletedUnitCount:100];
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  URL.path(percentEncoded:)(0);
  v13 = String.utf8CString.getter();

  LODWORD(v11) = lstat((v13 + 32), (v0 + 160));

  if ((v11 & 0x80000000) != 0 || (*(v0 + 279) & 0x40) == 0)
  {
    if (v12 != 2)
    {
LABEL_7:
      *(v0 + 1129) = 1;
      v14 = *(v0 + 856);
      v15 = *(v0 + 720);
      v16 = *(v0 + 696);
      URL.appendingPathComponent(_:isDirectory:)();
      v17 = [v14 defaultManager];
      URL._bridgeToObjectiveC()(v18);
      v20 = v19;
      *(v0 + 544) = 0;
      LODWORD(v16) = [v17 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:0 error:v0 + 544];

      v21 = *(v0 + 544);
      if (v16)
      {
        v22 = v21;
        v23 = swift_task_alloc();
        *(v0 + 1088) = v23;
        *v23 = v0;
        v23[1] = sub_100009DF0;
        v24 = *(v0 + 760);
        v25 = *(v0 + 720);
        v26 = *(v0 + 600);

        return sub_10000D3E4(v0 + 448, v25, v26, v24);
      }

      v98 = *(v0 + 752);
      v99 = v21;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        *v102 = 138412290;
        swift_errorRetain();
        v104 = _swift_stdlib_bridgeErrorToNSError();
        *(v102 + 4) = v104;
        *v103 = v104;
        _os_log_impl(&_mh_execute_header, v100, v101, "Error creating Bundle Data Folder: %@", v102, 0xCu);
        sub_10000C148(v103);
      }

      v105 = *(v0 + 848);
      v106 = *(v0 + 840);
      v107 = *(v0 + 808);
      v108 = *(v0 + 792);
      v109 = *(v0 + 768);
      v110 = *(v0 + 760);
      v140 = *(v0 + 720);
      v143 = *(v0 + 736);
      v111 = *(v0 + 696);
      v112 = v100;
      v113 = *(v0 + 672);

      swift_willThrow();

      v106(v111, v113);
      v106(v140, v113);
      v106(v143, v113);
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  if (v12 == 2)
  {
LABEL_19:
    v61 = *(v0 + 752);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "Fetching latest revision...", v64, 2u);
    }

    v65 = *(v0 + 808);
    v66 = sub_100007E5C;
    goto LABEL_22;
  }

  v114 = *(v0 + 752);
  v115 = Logger.logObject.getter();
  v116 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    *v117 = 0;
    _os_log_impl(&_mh_execute_header, v115, v116, "Bundle is dataless, fetching latest revision...", v117, 2u);
  }

  if (*(v0 + 1128) != 1 || *(v0 + 592) == 1)
  {
    goto LABEL_7;
  }

  v118 = swift_task_alloc();
  *(v0 + 1000) = v118;
  *v118 = v0;
  v118[1] = sub_100008530;
  v119 = *(v0 + 720);
  v120 = *(v0 + 600);

  return sub_10000C648(v119, v120);
}

uint64_t sub_1000075B8()
{
  v0[120] = *(v0[101] + OBJC_IVAR____TtC9gamesaved19UbiquitousContainer_containerObserver);

  v1 = swift_task_alloc();
  v0[121] = v1;
  *v1 = v0;
  v1[1] = sub_1000076A8;
  v2 = v0[90];
  v3 = v0[75];

  return sub_100019330(v2, v3);
}

uint64_t sub_1000076A8()
{
  v2 = *v1;
  v3 = *(*v1 + 968);
  v4 = *v1;
  *(*v1 + 976) = v0;

  v5 = *(v2 + 960);

  if (v0)
  {
    v6 = sub_10000A6B0;
  }

  else
  {
    v6 = sub_100007808;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100007808()
{
  v1 = *(v0 + 720);
  v2 = *(v0 + 592);
  [*(v0 + 768) setCompletedUnitCount:100];
  *(v0 + 16) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  URL.path(percentEncoded:)(0);
  v3 = String.utf8CString.getter();

  LODWORD(v1) = lstat((v3 + 32), (v0 + 160));

  if ((v1 & 0x80000000) != 0 || (*(v0 + 279) & 0x40) == 0)
  {
    if (v2 != 2)
    {
LABEL_4:
      *(v0 + 1129) = 1;
      v4 = *(v0 + 856);
      v5 = *(v0 + 720);
      v6 = *(v0 + 696);
      URL.appendingPathComponent(_:isDirectory:)();
      v7 = [v4 defaultManager];
      URL._bridgeToObjectiveC()(v8);
      v10 = v9;
      *(v0 + 544) = 0;
      LODWORD(v6) = [v7 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:v0 + 544];

      v11 = *(v0 + 544);
      if (v6)
      {
        v12 = v11;
        v13 = swift_task_alloc();
        *(v0 + 1088) = v13;
        *v13 = v0;
        v13[1] = sub_100009DF0;
        v14 = *(v0 + 760);
        v15 = *(v0 + 720);
        v16 = *(v0 + 600);

        return sub_10000D3E4(v0 + 448, v15, v16, v14);
      }

      else
      {
        v23 = *(v0 + 752);
        v24 = v11;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        swift_errorRetain();
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          *v27 = 138412290;
          swift_errorRetain();
          v29 = _swift_stdlib_bridgeErrorToNSError();
          *(v27 + 4) = v29;
          *v28 = v29;
          _os_log_impl(&_mh_execute_header, v25, v26, "Error creating Bundle Data Folder: %@", v27, 0xCu);
          sub_10000C148(v28);
        }

        v30 = *(v0 + 848);
        v31 = *(v0 + 840);
        v32 = *(v0 + 808);
        v33 = *(v0 + 792);
        v34 = *(v0 + 768);
        v35 = v25;
        v36 = *(v0 + 760);
        v57 = *(v0 + 720);
        v58 = *(v0 + 736);
        v37 = *(v0 + 696);
        v38 = *(v0 + 672);

        swift_willThrow();

        v31(v37, v38);
        v31(v57, v38);
        v31(v58, v38);
        v39 = *(v0 + 744);
        v40 = *(v0 + 736);
        v41 = *(v0 + 728);
        v42 = *(v0 + 720);
        v43 = *(v0 + 712);
        v44 = *(v0 + 704);
        v45 = *(v0 + 696);
        v46 = *(v0 + 664);
        v47 = *(v0 + 640);
        v48 = *(v0 + 616);

        v49 = *(v0 + 8);

        return v49();
      }
    }

    goto LABEL_9;
  }

  if (v2 == 2)
  {
LABEL_9:
    v18 = *(v0 + 752);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Fetching latest revision...", v21, 2u);
    }

    v22 = *(v0 + 808);

    return _swift_task_switch(sub_100007E5C, v22, 0);
  }

  v50 = *(v0 + 752);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "Bundle is dataless, fetching latest revision...", v53, 2u);
  }

  if (*(v0 + 1128) != 1 || *(v0 + 592) == 1)
  {
    goto LABEL_4;
  }

  v54 = swift_task_alloc();
  *(v0 + 1000) = v54;
  *v54 = v0;
  v54[1] = sub_100008530;
  v55 = *(v0 + 720);
  v56 = *(v0 + 600);

  return sub_10000C648(v55, v56);
}

uint64_t sub_100007E5C()
{
  v0[123] = *(v0[101] + OBJC_IVAR____TtC9gamesaved19UbiquitousContainer_containerObserver);

  v1 = swift_task_alloc();
  v0[124] = v1;
  *v1 = v0;
  v1[1] = sub_100007F4C;
  v2 = v0[90];
  v3 = v0[75];

  return sub_10001B5E4(v2, v3);
}

uint64_t sub_100007F4C()
{
  v2 = *v1;
  v3 = *(*v1 + 992);
  v4 = *v1;

  v5 = *(v2 + 984);
  if (v0)
  {

    v6 = sub_10000EDC4;
  }

  else
  {

    v6 = sub_1000080C0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000080C0()
{
  if (*(v0 + 1128) != 1 || *(v0 + 592) == 1)
  {
    *(v0 + 1129) = 1;
    v2 = *(v0 + 856);
    v3 = *(v0 + 720);
    v4 = *(v0 + 696);
    URL.appendingPathComponent(_:isDirectory:)();
    v5 = [v2 defaultManager];
    URL._bridgeToObjectiveC()(v6);
    v8 = v7;
    *(v0 + 544) = 0;
    LODWORD(v4) = [v5 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:v0 + 544];

    v9 = *(v0 + 544);
    if (v4)
    {
      v10 = v9;
      v11 = swift_task_alloc();
      *(v0 + 1088) = v11;
      *v11 = v0;
      v11[1] = sub_100009DF0;
      v12 = *(v0 + 760);
      v13 = *(v0 + 720);
      v14 = *(v0 + 600);

      return sub_10000D3E4(v0 + 448, v13, v14, v12);
    }

    else
    {
      v19 = *(v0 + 752);
      v20 = v9;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        swift_errorRetain();
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 4) = v25;
        *v24 = v25;
        _os_log_impl(&_mh_execute_header, v21, v22, "Error creating Bundle Data Folder: %@", v23, 0xCu);
        sub_10000C148(v24);
      }

      v26 = *(v0 + 848);
      v27 = *(v0 + 840);
      v28 = *(v0 + 808);
      v29 = *(v0 + 792);
      v30 = *(v0 + 768);
      v31 = v21;
      v32 = *(v0 + 760);
      v46 = *(v0 + 720);
      v47 = *(v0 + 736);
      v33 = *(v0 + 696);
      v34 = *(v0 + 672);

      swift_willThrow();

      v27(v33, v34);
      v27(v46, v34);
      v27(v47, v34);
      v35 = *(v0 + 744);
      v36 = *(v0 + 736);
      v37 = *(v0 + 728);
      v38 = *(v0 + 720);
      v39 = *(v0 + 712);
      v40 = *(v0 + 704);
      v41 = *(v0 + 696);
      v42 = *(v0 + 664);
      v43 = *(v0 + 640);
      v44 = *(v0 + 616);

      v45 = *(v0 + 8);

      return v45();
    }
  }

  else
  {
    v16 = swift_task_alloc();
    *(v0 + 1000) = v16;
    *v16 = v0;
    v16[1] = sub_100008530;
    v17 = *(v0 + 720);
    v18 = *(v0 + 600);

    return sub_10000C648(v17, v18);
  }
}

uint64_t sub_100008530(uint64_t a1)
{
  v2 = *(*v1 + 1000);
  v4 = *v1;
  *(*v1 + 1008) = a1;

  return _swift_task_switch(sub_10000865C, 0, 0);
}

uint64_t sub_10000865C()
{
  v1 = *(v0 + 1008);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10000281C(&qword_100039EC0, &qword_10002B418);
    v4 = swift_dynamicCast();

    if (v4)
    {
      v5 = *(v0 + 752);
      v99 = *(v0 + 552);
      *(v0 + 1016) = v99;
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Fetching latest revision...", v8, 2u);
      }

      v91 = *(v0 + 824);
      v93 = *(v0 + 832);
      v9 = *(v0 + 808);
      v10 = *(v0 + 728);
      v11 = *(v0 + 720);
      v96 = *(v0 + 688);
      v12 = *(v0 + 680);
      v13 = *(v0 + 672);
      v14 = *(v0 + 600);

      v15 = sub_10000281C(&qword_100039E48, &unk_10002B3E0);
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      v18 = swift_allocObject();
      *(v0 + 1024) = v18;
      *(v18 + 3) = [objc_allocWithZone(NSRecursiveLock) init];
      v19 = *(*v18 + 104);
      v20 = sub_10000281C(&qword_100039E50, &qword_10002BE90);
      (*(*(v20 - 8) + 56))(&v18[v19], 1, 1, v20);
      v21 = &v18[*(*v18 + 112)];
      *v21 = 0;
      *(v21 + 1) = 0;
      *(v18 + 2) = v14;
      v91(v10, v11, v13);
      v22 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v23 = swift_allocObject();
      *(v0 + 1032) = v23;
      *(v23 + 16) = v99;
      *(v23 + 24) = v9;
      (*(v12 + 32))(v23 + v22, v10, v13);
      *(v23 + ((v96 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
      v24 = v14;

      swift_unknownObjectRetain();
      v25 = swift_task_alloc();
      *(v0 + 1040) = v25;
      *(v25 + 16) = v18;
      *(v25 + 24) = &unk_10002B428;
      *(v25 + 32) = v23;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 1;
      v26 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
      v27 = swift_task_alloc();
      *(v0 + 1048) = v27;
      *v27 = v0;
      v27[1] = sub_100008F8C;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v27, 0, 0, 0xD000000000000021, 0x800000010002CBA0, sub_10000EE48, v25, &type metadata for () + 8);
    }
  }

  v28 = *(v0 + 752);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  v31 = os_log_type_enabled(v29, v30);
  v32 = *(v0 + 1008);
  if (v31)
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Error connecting to DocServerlessInterface", v33, 2u);
  }

  v34 = *(v0 + 720);
  v35 = *(v0 + 128);
  *(v0 + 400) = *(v0 + 112);
  *(v0 + 416) = v35;
  *(v0 + 432) = *(v0 + 144);
  v36 = *(v0 + 64);
  *(v0 + 336) = *(v0 + 48);
  *(v0 + 352) = v36;
  v37 = *(v0 + 96);
  *(v0 + 368) = *(v0 + 80);
  *(v0 + 384) = v37;
  v38 = *(v0 + 32);
  *(v0 + 304) = *(v0 + 16);
  *(v0 + 320) = v38;
  URL.path(percentEncoded:)(0);
  v39 = String.utf8CString.getter();

  LODWORD(v34) = lstat((v39 + 32), (v0 + 304));

  if ((v34 & 0x80000000) == 0 && (*(v0 + 423) & 0x40) != 0)
  {
    v69 = *(v0 + 848);
    v70 = *(v0 + 840);
    v71 = *(v0 + 808);
    v89 = *(v0 + 768);
    v90 = *(v0 + 792);
    v98 = *(v0 + 736);
    v92 = *(v0 + 760);
    v95 = *(v0 + 720);
    v72 = *(v0 + 672);
    v73 = *(v0 + 640);
    v74 = *(v0 + 632);
    v75 = *(v0 + 624);
    v76 = *(v0 + 616);
    static CocoaError.Code.ubiquitousFileUbiquityServerNotAvailable.getter();
    sub_100026FA8(_swiftEmptyArrayStorage);
    sub_10000E8F0(&qword_100039E58, &type metadata accessor for CocoaError);
    _BridgedStoredNSError.init(_:userInfo:)();
    CocoaError._nsError.getter();
    (*(v74 + 8))(v73, v75);
    swift_willThrow();

    v70(v95, v72);
    v70(v98, v72);
  }

  else
  {
    *(v0 + 1129) = 0;
    v40 = *(v0 + 856);
    v41 = *(v0 + 720);
    v42 = *(v0 + 696);
    URL.appendingPathComponent(_:isDirectory:)();
    v43 = [v40 defaultManager];
    URL._bridgeToObjectiveC()(v44);
    v46 = v45;
    *(v0 + 544) = 0;
    LODWORD(v42) = [v43 createDirectoryAtURL:v45 withIntermediateDirectories:1 attributes:0 error:v0 + 544];

    v47 = *(v0 + 544);
    if (v42)
    {
      v48 = v47;
      v49 = swift_task_alloc();
      *(v0 + 1088) = v49;
      *v49 = v0;
      v49[1] = sub_100009DF0;
      v50 = *(v0 + 760);
      v51 = *(v0 + 720);
      v52 = *(v0 + 600);

      return sub_10000D3E4(v0 + 448, v51, v52, v50);
    }

    v53 = *(v0 + 752);
    v54 = v47;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v57 = 138412290;
      swift_errorRetain();
      v59 = _swift_stdlib_bridgeErrorToNSError();
      *(v57 + 4) = v59;
      *v58 = v59;
      _os_log_impl(&_mh_execute_header, v55, v56, "Error creating Bundle Data Folder: %@", v57, 0xCu);
      sub_10000C148(v58);
    }

    v60 = *(v0 + 848);
    v61 = *(v0 + 840);
    v62 = *(v0 + 808);
    v63 = *(v0 + 792);
    v64 = *(v0 + 768);
    v65 = *(v0 + 760);
    v94 = *(v0 + 720);
    v97 = *(v0 + 736);
    v66 = *(v0 + 696);
    v67 = v55;
    v68 = *(v0 + 672);

    swift_willThrow();

    v61(v66, v68);
    v61(v94, v68);
    v61(v97, v68);
  }

  v77 = *(v0 + 744);
  v78 = *(v0 + 736);
  v79 = *(v0 + 728);
  v80 = *(v0 + 720);
  v81 = *(v0 + 712);
  v82 = *(v0 + 704);
  v83 = *(v0 + 696);
  v84 = *(v0 + 664);
  v85 = *(v0 + 640);
  v86 = *(v0 + 616);

  v87 = *(v0 + 8);

  return v87();
}

uint64_t sub_100008F8C()
{
  v2 = *v1;
  v3 = *(*v1 + 1048);
  v8 = *v1;
  *(*v1 + 1056) = v0;

  if (v0)
  {
    v4 = sub_1000093C4;
  }

  else
  {
    v5 = *(v2 + 1040);
    v6 = *(v2 + 1032);

    v4 = sub_1000090E8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000090E8()
{
  [*(v0 + 1008) invalidate];
  v1 = *(v0 + 808);

  return _swift_task_switch(sub_100009184, v1, 0);
}

uint64_t sub_100009184()
{
  v0[133] = *(v0[101] + OBJC_IVAR____TtC9gamesaved19UbiquitousContainer_containerObserver);

  v1 = swift_task_alloc();
  v0[134] = v1;
  *v1 = v0;
  v1[1] = sub_100009274;
  v2 = v0[90];
  v3 = v0[75];

  return sub_10001D710(v2, v3);
}

uint64_t sub_100009274()
{
  v2 = *v1;
  v3 = *(*v1 + 1072);
  v7 = *v1;
  *(*v1 + 1080) = v0;

  if (v0)
  {
    v4 = sub_10000A830;
  }

  else
  {
    v5 = *(v2 + 1064);

    v4 = sub_100009A1C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000093C4()
{
  v1 = *(v0 + 1040);
  v2 = *(v0 + 1032);
  v3 = *(v0 + 1024);

  v4 = *(v0 + 1056);
  v5 = *(v0 + 752);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1016);
  v10 = *(v0 + 1008);
  if (v8)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "got error while fetching latest revision: %@", v11, 0xCu);
    sub_10000C148(v12);

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = *(v0 + 1016);
    swift_unknownObjectRelease();
  }

  v15 = *(v0 + 720);
  v16 = *(v0 + 128);
  *(v0 + 400) = *(v0 + 112);
  *(v0 + 416) = v16;
  *(v0 + 432) = *(v0 + 144);
  v17 = *(v0 + 64);
  *(v0 + 336) = *(v0 + 48);
  *(v0 + 352) = v17;
  v18 = *(v0 + 96);
  *(v0 + 368) = *(v0 + 80);
  *(v0 + 384) = v18;
  v19 = *(v0 + 32);
  *(v0 + 304) = *(v0 + 16);
  *(v0 + 320) = v19;
  URL.path(percentEncoded:)(0);
  v20 = String.utf8CString.getter();

  LODWORD(v15) = lstat((v20 + 32), (v0 + 304));

  if ((v15 & 0x80000000) == 0 && (*(v0 + 423) & 0x40) != 0)
  {
    v51 = *(v0 + 848);
    v52 = *(v0 + 840);
    v53 = *(v0 + 808);
    v70 = *(v0 + 768);
    v71 = *(v0 + 792);
    v76 = *(v0 + 736);
    v72 = *(v0 + 760);
    v74 = *(v0 + 720);
    v54 = *(v0 + 672);
    v55 = *(v0 + 640);
    v56 = *(v0 + 632);
    v57 = *(v0 + 624);
    v58 = *(v0 + 616);
    static CocoaError.Code.ubiquitousFileUbiquityServerNotAvailable.getter();
    sub_100026FA8(_swiftEmptyArrayStorage);
    sub_10000E8F0(&qword_100039E58, &type metadata accessor for CocoaError);
    _BridgedStoredNSError.init(_:userInfo:)();
    CocoaError._nsError.getter();
    (*(v56 + 8))(v55, v57);
    swift_willThrow();

    v52(v74, v54);
    v52(v76, v54);
  }

  else
  {
    *(v0 + 1129) = 0;
    v21 = *(v0 + 856);
    v22 = *(v0 + 720);
    v23 = *(v0 + 696);
    URL.appendingPathComponent(_:isDirectory:)();
    v24 = [v21 defaultManager];
    URL._bridgeToObjectiveC()(v25);
    v27 = v26;
    *(v0 + 544) = 0;
    LODWORD(v23) = [v24 createDirectoryAtURL:v26 withIntermediateDirectories:1 attributes:0 error:v0 + 544];

    v28 = *(v0 + 544);
    if (v23)
    {
      v29 = v28;
      v30 = swift_task_alloc();
      *(v0 + 1088) = v30;
      *v30 = v0;
      v30[1] = sub_100009DF0;
      v31 = *(v0 + 760);
      v32 = *(v0 + 720);
      v33 = *(v0 + 600);

      return sub_10000D3E4(v0 + 448, v32, v33, v31);
    }

    v35 = *(v0 + 752);
    v36 = v28;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      swift_errorRetain();
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 4) = v41;
      *v40 = v41;
      _os_log_impl(&_mh_execute_header, v37, v38, "Error creating Bundle Data Folder: %@", v39, 0xCu);
      sub_10000C148(v40);
    }

    v42 = *(v0 + 848);
    v43 = *(v0 + 840);
    v44 = *(v0 + 808);
    v45 = *(v0 + 792);
    v46 = *(v0 + 768);
    v47 = *(v0 + 760);
    v73 = *(v0 + 720);
    v75 = *(v0 + 736);
    v48 = *(v0 + 696);
    v49 = v37;
    v50 = *(v0 + 672);

    swift_willThrow();

    v43(v48, v50);
    v43(v73, v50);
    v43(v75, v50);
  }

  v59 = *(v0 + 744);
  v60 = *(v0 + 736);
  v61 = *(v0 + 728);
  v62 = *(v0 + 720);
  v63 = *(v0 + 712);
  v64 = *(v0 + 704);
  v65 = *(v0 + 696);
  v66 = *(v0 + 664);
  v67 = *(v0 + 640);
  v68 = *(v0 + 616);

  v69 = *(v0 + 8);

  return v69();
}

uint64_t sub_100009A1C()
{
  v1 = *(v0 + 1024);
  v2 = *(v0 + 1016);
  v3 = *(v0 + 1008);
  swift_unknownObjectRelease();

  *(v0 + 1129) = 1;
  v4 = *(v0 + 856);
  v5 = *(v0 + 720);
  v6 = *(v0 + 696);
  URL.appendingPathComponent(_:isDirectory:)();
  v7 = [v4 defaultManager];
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  *(v0 + 544) = 0;
  LODWORD(v6) = [v7 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:v0 + 544];

  v11 = *(v0 + 544);
  if (v6)
  {
    v12 = v11;
    v13 = swift_task_alloc();
    *(v0 + 1088) = v13;
    *v13 = v0;
    v13[1] = sub_100009DF0;
    v14 = *(v0 + 760);
    v15 = *(v0 + 720);
    v16 = *(v0 + 600);

    return sub_10000D3E4(v0 + 448, v15, v16, v14);
  }

  else
  {
    v18 = *(v0 + 752);
    v19 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&_mh_execute_header, v20, v21, "Error creating Bundle Data Folder: %@", v22, 0xCu);
      sub_10000C148(v23);
    }

    v25 = *(v0 + 848);
    v26 = *(v0 + 840);
    v27 = *(v0 + 808);
    v28 = *(v0 + 792);
    v29 = *(v0 + 768);
    v30 = v20;
    v31 = *(v0 + 760);
    v45 = *(v0 + 720);
    v46 = *(v0 + 736);
    v32 = *(v0 + 696);
    v33 = *(v0 + 672);

    swift_willThrow();

    v26(v32, v33);
    v26(v45, v33);
    v26(v46, v33);
    v34 = *(v0 + 744);
    v35 = *(v0 + 736);
    v36 = *(v0 + 728);
    v37 = *(v0 + 720);
    v38 = *(v0 + 712);
    v39 = *(v0 + 704);
    v40 = *(v0 + 696);
    v41 = *(v0 + 664);
    v42 = *(v0 + 640);
    v43 = *(v0 + 616);

    v44 = *(v0 + 8);

    return v44();
  }
}

uint64_t sub_100009DF0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 1088);
  v5 = *v0;
  *(v2 + 1096) = *(*v0 + 448);
  *(v2 + 1130) = *(v2 + 456);
  *(v2 + 1104) = *(v2 + 464);
  *(v2 + 1120) = *(v1 + 480);

  return _swift_task_switch(sub_100009F58, 0, 0);
}

uint64_t sub_100009F58()
{
  v24 = *(v0 + 1112);
  v25 = *(v0 + 1120);
  v21 = *(v0 + 1130);
  v18 = *(v0 + 1129);
  v16 = *(v0 + 848);
  v1 = *(v0 + 840);
  v2 = *(v0 + 808);
  v3 = *(v0 + 792);
  v4 = *(v0 + 760);
  v19 = *(v0 + 1096);
  v20 = *(v0 + 744);
  v5 = *(v0 + 736);
  v22 = *(v0 + 1104);
  v23 = *(v0 + 728);
  v6 = *(v0 + 720);
  v26 = *(v0 + 712);
  v27 = *(v0 + 704);
  v17 = *(v0 + 696);
  v7 = *(v0 + 680);
  v8 = *(v0 + 672);
  v28 = *(v0 + 664);
  v29 = *(v0 + 640);
  v30 = *(v0 + 616);
  v9 = *(v0 + 568);

  v1(v5, v8);
  v10 = *(v7 + 32);
  v10(v9, v6, v8);
  v11 = type metadata accessor for GameSyncedDirectoryLoadResult();
  v10(v9 + v11[5], v17, v8);
  *(v9 + v11[6]) = v18;
  v12 = v9 + v11[7];
  *v12 = v19;
  *(v12 + 8) = v21;
  v13 = (v9 + v11[8]);
  *v13 = v22;
  v13[1] = v24;
  *(v9 + v11[9]) = v25;

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10000A194()
{
  v1 = v0[102];
  v2 = v0[94];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[102];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error getting container: %@", v6, 0xCu);
    sub_10000C148(v7);
  }

  v9 = v0[102];
  v10 = v0[99];
  v11 = v0[96];
  v12 = v0[95];

  swift_willThrow();

  v25 = v0[102];
  v13 = v0[93];
  v14 = v0[92];
  v15 = v0[91];
  v16 = v0[90];
  v17 = v0[89];
  v18 = v0[88];
  v19 = v0[87];
  v20 = v0[83];
  v21 = v0[80];
  v22 = v0[77];

  v23 = v0[1];

  return v23();
}

uint64_t sub_10000A3B0()
{
  v1 = *(v0 + 848);
  v2 = *(v0 + 840);
  v3 = *(v0 + 808);
  v4 = *(v0 + 792);
  v5 = *(v0 + 760);
  v6 = *(v0 + 736);
  v7 = *(v0 + 720);
  v8 = *(v0 + 672);

  v2(v7, v8);
  v2(v6, v8);
  v21 = *(v0 + 928);
  v9 = *(v0 + 744);
  v10 = *(v0 + 736);
  v11 = *(v0 + 728);
  v12 = *(v0 + 720);
  v13 = *(v0 + 712);
  v14 = *(v0 + 704);
  v15 = *(v0 + 696);
  v16 = *(v0 + 664);
  v17 = *(v0 + 640);
  v18 = *(v0 + 616);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_10000A530()
{
  v1 = *(v0 + 848);
  v2 = *(v0 + 840);
  v3 = *(v0 + 808);
  v4 = *(v0 + 792);
  v5 = *(v0 + 760);
  v6 = *(v0 + 736);
  v7 = *(v0 + 720);
  v8 = *(v0 + 672);

  v2(v7, v8);
  v2(v6, v8);
  v21 = *(v0 + 952);
  v9 = *(v0 + 744);
  v10 = *(v0 + 736);
  v11 = *(v0 + 728);
  v12 = *(v0 + 720);
  v13 = *(v0 + 712);
  v14 = *(v0 + 704);
  v15 = *(v0 + 696);
  v16 = *(v0 + 664);
  v17 = *(v0 + 640);
  v18 = *(v0 + 616);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_10000A6B0()
{
  v1 = *(v0 + 848);
  v2 = *(v0 + 840);
  v3 = *(v0 + 808);
  v4 = *(v0 + 792);
  v5 = *(v0 + 760);
  v6 = *(v0 + 736);
  v7 = *(v0 + 720);
  v8 = *(v0 + 672);

  v2(v7, v8);
  v2(v6, v8);
  v21 = *(v0 + 976);
  v9 = *(v0 + 744);
  v10 = *(v0 + 736);
  v11 = *(v0 + 728);
  v12 = *(v0 + 720);
  v13 = *(v0 + 712);
  v14 = *(v0 + 704);
  v15 = *(v0 + 696);
  v16 = *(v0 + 664);
  v17 = *(v0 + 640);
  v18 = *(v0 + 616);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_10000A830()
{
  v1 = *(v0 + 1064);
  v2 = *(v0 + 1024);

  v3 = *(v0 + 1080);
  v4 = *(v0 + 752);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 1016);
  v9 = *(v0 + 1008);
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "got error while fetching latest revision: %@", v10, 0xCu);
    sub_10000C148(v11);

    swift_unknownObjectRelease();
  }

  else
  {
    v13 = *(v0 + 1016);
    swift_unknownObjectRelease();
  }

  v14 = *(v0 + 720);
  v15 = *(v0 + 128);
  *(v0 + 400) = *(v0 + 112);
  *(v0 + 416) = v15;
  *(v0 + 432) = *(v0 + 144);
  v16 = *(v0 + 64);
  *(v0 + 336) = *(v0 + 48);
  *(v0 + 352) = v16;
  v17 = *(v0 + 96);
  *(v0 + 368) = *(v0 + 80);
  *(v0 + 384) = v17;
  v18 = *(v0 + 32);
  *(v0 + 304) = *(v0 + 16);
  *(v0 + 320) = v18;
  URL.path(percentEncoded:)(0);
  v19 = String.utf8CString.getter();

  LODWORD(v14) = lstat((v19 + 32), (v0 + 304));

  if ((v14 & 0x80000000) == 0 && (*(v0 + 423) & 0x40) != 0)
  {
    v50 = *(v0 + 848);
    v51 = *(v0 + 840);
    v52 = *(v0 + 808);
    v69 = *(v0 + 768);
    v70 = *(v0 + 792);
    v75 = *(v0 + 736);
    v71 = *(v0 + 760);
    v73 = *(v0 + 720);
    v53 = *(v0 + 672);
    v54 = *(v0 + 640);
    v55 = *(v0 + 632);
    v56 = *(v0 + 624);
    v57 = *(v0 + 616);
    static CocoaError.Code.ubiquitousFileUbiquityServerNotAvailable.getter();
    sub_100026FA8(_swiftEmptyArrayStorage);
    sub_10000E8F0(&qword_100039E58, &type metadata accessor for CocoaError);
    _BridgedStoredNSError.init(_:userInfo:)();
    CocoaError._nsError.getter();
    (*(v55 + 8))(v54, v56);
    swift_willThrow();

    v51(v73, v53);
    v51(v75, v53);
  }

  else
  {
    *(v0 + 1129) = 0;
    v20 = *(v0 + 856);
    v21 = *(v0 + 720);
    v22 = *(v0 + 696);
    URL.appendingPathComponent(_:isDirectory:)();
    v23 = [v20 defaultManager];
    URL._bridgeToObjectiveC()(v24);
    v26 = v25;
    *(v0 + 544) = 0;
    LODWORD(v22) = [v23 createDirectoryAtURL:v25 withIntermediateDirectories:1 attributes:0 error:v0 + 544];

    v27 = *(v0 + 544);
    if (v22)
    {
      v28 = v27;
      v29 = swift_task_alloc();
      *(v0 + 1088) = v29;
      *v29 = v0;
      v29[1] = sub_100009DF0;
      v30 = *(v0 + 760);
      v31 = *(v0 + 720);
      v32 = *(v0 + 600);

      return sub_10000D3E4(v0 + 448, v31, v32, v30);
    }

    v34 = *(v0 + 752);
    v35 = v27;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      swift_errorRetain();
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v40;
      *v39 = v40;
      _os_log_impl(&_mh_execute_header, v36, v37, "Error creating Bundle Data Folder: %@", v38, 0xCu);
      sub_10000C148(v39);
    }

    v41 = *(v0 + 848);
    v42 = *(v0 + 840);
    v43 = *(v0 + 808);
    v44 = *(v0 + 792);
    v45 = *(v0 + 768);
    v46 = *(v0 + 760);
    v72 = *(v0 + 720);
    v74 = *(v0 + 736);
    v47 = *(v0 + 696);
    v48 = v36;
    v49 = *(v0 + 672);

    swift_willThrow();

    v42(v47, v49);
    v42(v72, v49);
    v42(v74, v49);
  }

  v58 = *(v0 + 744);
  v59 = *(v0 + 736);
  v60 = *(v0 + 728);
  v61 = *(v0 + 720);
  v62 = *(v0 + 712);
  v63 = *(v0 + 704);
  v64 = *(v0 + 696);
  v65 = *(v0 + 664);
  v66 = *(v0 + 640);
  v67 = *(v0 + 616);

  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_10000AE7C(uint64_t a1, char a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = type metadata accessor for ContinuousClock();
  v3[3] = v5;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v3[5] = swift_task_alloc();
  if (a2)
  {
    v8 = swift_task_alloc();
    v3[6] = v8;
    *v8 = v3;
    v8[1] = sub_10000AFD8;

    return sub_100011898();
  }

  else
  {
    v10 = swift_task_alloc();
    v3[11] = v10;
    *v10 = v3;
    v10[1] = sub_10000B42C;

    return sub_100011340();
  }
}

uint64_t sub_10000AFD8()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10000B544, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_10000B114()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {
    (*(v3[4] + 8))(v3[5], v3[3]);

    return _swift_task_switch(sub_10000B3C8, 0, 0);
  }

  else
  {
    (*(v3[4] + 8))(v3[5], v3[3]);
    v4 = swift_task_alloc();
    v3[10] = v4;
    *v4 = v3;
    v4[1] = sub_10000B2B0;
    v5 = v3[2];

    return sub_100011898();
  }
}

uint64_t sub_10000B2B0()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 40);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10000B3C8()
{
  v1 = v0[9];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10000B42C()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v6 = *v0;

  v3 = *(v1 + 40);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10000B544()
{
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = type metadata accessor for Logger();
  sub_100001F70(v2, static Logger.daemon);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[7];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error waiting for initial sync, retrying: %@", v7, 0xCu);
    sub_10000C148(v8);
  }

  else
  {
  }

  v10 = v0[5];
  static Clock<>.continuous.getter();
  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_10000B114;
  v12 = v0[5];

  return sub_100026AF0(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_10000B74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  v5[22] = a2;
  v5[23] = a3;
  return _swift_task_switch(sub_10000B770, 0, 0);
}

uint64_t sub_10000B770()
{
  v1 = v0[22];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10000B88C;
  v2 = swift_continuation_init();
  v0[17] = sub_10000281C(&qword_100039EC8, &unk_10002B430);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000BF0C;
  v0[13] = &unk_100034FC8;
  v0[14] = v2;
  [v1 fetchLatestRevisionWithReply:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000B88C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_10000BBFC;
  }

  else
  {
    v3 = sub_10000B99C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000B99C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000BA08()
{
  v0[27] = *(v0[23] + OBJC_IVAR____TtC9gamesaved19UbiquitousContainer_containerObserver);

  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v1[1] = sub_10000BAC0;
  v3 = v0[24];
  v2 = v0[25];

  return sub_10001B5E4(v3, v2);
}

uint64_t sub_10000BAC0()
{
  v2 = *(*v1 + 224);
  v3 = *v1;
  v3[29] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10000BEA8, 0, 0);
  }

  else
  {
    v4 = v3[27];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_10000BBFC()
{
  v1 = v0[26];
  swift_willThrow();
  v0[20] = v1;
  swift_errorRetain();
  sub_10000281C(&qword_100039ED0, &unk_10002B940);
  sub_10000E838(0, &qword_100039ED8, NSError_ptr);
  if (!swift_dynamicCast())
  {
    v11 = v0[20];

    v12 = v0[26];
LABEL_19:
    v20 = v0[1];

    return v20();
  }

  v2 = v0[26];

  v3 = v0[21];
  v4 = [v3 domain];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if ([v3 code] != 40)
  {
LABEL_18:
    swift_willThrow();
    v19 = v0[20];

    goto LABEL_19;
  }

  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100001F70(v13, static Logger.daemon);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Ignoring item changed error while fetching latest revision...", v16, 2u);
  }

  v17 = v0[23];

  v18 = v0[20];

  return _swift_task_switch(sub_10000BA08, v17, 0);
}

uint64_t sub_10000BEA8()
{
  v1 = v0[27];

  v2 = v0[29];
  v3 = v0[1];

  return v3();
}

uint64_t sub_10000BF0C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *sub_10000E9E4((a1 + 32), *(a1 + 56));
  if (a4)
  {
    sub_10000281C(&qword_100039ED0, &unk_10002B940);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return _swift_continuation_throwingResumeWithError(v7, v8);
  }

  else
  {
    v11 = *(*(v7 + 64) + 40);
    *v11 = a2;
    v11[1] = a3;
    v12 = a2;
    v13 = a3;

    return _swift_continuation_throwingResume(v7);
  }
}

uint64_t sub_10000BFE4()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_10000C040()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000C088(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000296C;

  return sub_100025D24(a1);
}

uint64_t sub_10000C148(uint64_t a1)
{
  v2 = sub_10000281C(&qword_100039E40, &unk_10002BAC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000C1B0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C1E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000EE44;

  return sub_10000AE7C(a1, v4, v5);
}

_BYTE *sub_10000C29C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_10000C3E0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_10000C498(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_10000C514(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_10000C330(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, char *))
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v8 = (v8 + a1 - result);
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = __DataStorage._length.getter();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v8 + v12;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  result = a3(&v15, v8, v14);
  if (!v3)
  {
    return v15;
  }

  return result;
}

uint64_t sub_10000C3E0(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_10000C498(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_10000C514(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_10000C598(uint64_t a1)
{
  v9 = sub_10000281C(&qword_100039F28, &unk_10002B460);
  v10 = sub_10000E938();
  v8[0] = a1;
  v2 = sub_10000E9E4(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_10000C29C(v3, &v3[v4], &v7);
  v5 = v7;
  sub_10000EA28(v8);
  return v5;
}

uint64_t sub_10000C648(uint64_t a1, uint64_t a2)
{
  *(v2 + 216) = a1;
  *(v2 + 224) = a2;
  return _swift_task_switch(sub_10000C668, 0, 0);
}

uint64_t sub_10000C668()
{
  *(v0 + 232) = 0;
  if ([*(v0 + 224) isCancelled])
  {
    v1 = *(v0 + 8);

    return v1(0);
  }

  else
  {
    v3 = *(v0 + 216);
    v4 = [objc_opt_self() defaultManager];
    *(v0 + 240) = v4;
    URL._bridgeToObjectiveC()(v5);
    v7 = v6;
    *(v0 + 248) = v6;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 208;
    *(v0 + 24) = sub_10000C820;
    v8 = swift_continuation_init();
    *(v0 + 200) = sub_10000281C(&qword_100039F00, &qword_10002B450);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_100002FE4;
    *(v0 + 168) = &unk_100035018;
    *(v0 + 176) = v8;
    [v4 getFileProviderServicesForItemAtURL:v7 completionHandler:v0 + 144];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_10000C820()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = sub_10000C930;
  }

  else
  {
    v3 = sub_10000CB1C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000C930()
{
  v1 = v0[31];
  v2 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  swift_willThrow();

  sleep(1u);

  if (v4 == 5 || (v5 = v0[28], ++v0[29], ([v5 isCancelled] & 1) != 0))
  {
    v6 = v0[1];

    return v6(0);
  }

  else
  {
    v8 = v0[27];
    v9 = [objc_opt_self() defaultManager];
    v0[30] = v9;
    URL._bridgeToObjectiveC()(v10);
    v12 = v11;
    v0[31] = v11;
    v0[2] = v0;
    v0[7] = v0 + 26;
    v0[3] = sub_10000C820;
    v13 = swift_continuation_init();
    v0[25] = sub_10000281C(&qword_100039F00, &qword_10002B450);
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_100002FE4;
    v0[21] = &unk_100035018;
    v0[22] = v13;
    [v9 getFileProviderServicesForItemAtURL:v12 completionHandler:v0 + 18];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_10000CB1C()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 248);

  v3 = String._bridgeToObjectiveC()();
  v4 = v3;
  if (*(v1 + 16) && (v5 = sub_100010548(v3), (v6 & 1) != 0))
  {
    v7 = *(*(v1 + 56) + 8 * v5);
    *(v0 + 264) = v7;
    v8 = v7;

    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 208;
    *(v0 + 88) = sub_10000CCE8;
    v9 = swift_continuation_init();
    *(v0 + 200) = sub_10000281C(&qword_100039F08, &qword_10002B458);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_10000EE4C;
    *(v0 + 168) = &unk_100035040;
    *(v0 + 176) = v9;
    [v8 getFileProviderConnectionWithCompletionHandler:v0 + 144];

    return _swift_continuation_await(v0 + 80);
  }

  else
  {

    v10 = *(v0 + 8);

    return v10(0);
  }
}

uint64_t sub_10000CCE8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 272) = v3;
  if (v3)
  {

    v4 = sub_10000CF4C;
  }

  else
  {
    v4 = sub_10000CE00;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000CE00()
{
  v1 = v0[33];
  v2 = v0[26];
  v3 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___ICDFileProviderClientSideCollaborationProtocol];
  [v2 setRemoteObjectInterface:v3];

  v0[22] = sub_100003124;
  v0[23] = 0;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_100002BBC;
  v0[21] = &unk_100035068;
  v4 = _Block_copy(v0 + 18);
  [v2 setInterruptionHandler:v4];
  _Block_release(v4);
  [v2 resume];

  v5 = v0[1];

  return v5(v2);
}

uint64_t sub_10000CF4C()
{
  v1 = v0[33];
  v2 = v0[34];
  swift_willThrow();

  v3 = v0[1];

  return v3(0);
}

uint64_t sub_10000CFC8(uint64_t *a1, void *a2, unint64_t *a3)
{
  v4 = *a1;
  v5 = a2[1];
  if (v5)
  {
    v6 = *(v4 + OBJC_IVAR___DeviceInfo_name) == *a2 && v5 == *(v4 + OBJC_IVAR___DeviceInfo_name + 8);
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return 1;
    }
  }

  v8 = [objc_opt_self() currentDevice];
  v9 = [v8 name];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = (v4 + OBJC_IVAR___DeviceInfo_name);
  if (*(v4 + OBJC_IVAR___DeviceInfo_name) == v10 && *(v4 + OBJC_IVAR___DeviceInfo_name + 8) == v12)
  {
LABEL_31:

    return 1;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
    return 1;
  }

  v16 = *a3;
  if (v16 >> 62)
  {
    goto LABEL_37;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v18 = 0;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v19 = *(v16 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v22 = [v19 localizedNameOfSavingComputer];
      if (v22)
      {
        v23 = v22;
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;

        if (v24 == *v13 && v26 == v13[1])
        {

          return 1;
        }

        v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v28)
        {
          goto LABEL_31;
        }
      }

      else
      {
      }

      ++v18;
      if (v21 == i)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }

LABEL_33:

  return 0;
}

unint64_t *sub_10000D23C(unint64_t a1, void *a2, unint64_t *a3)
{
  v6 = a1;
  v21 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    v9 = v6 & 0xC000000000000001;
    v18 = v6;
    v19 = v6 & 0xFFFFFFFFFFFFFF8;
    v17 = i;
    while (1)
    {
      if (v9)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v19 + 16))
        {
          goto LABEL_17;
        }

        v10 = *(v6 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v20 = v10;
      v13 = sub_10000CFC8(&v20, a2, a3);
      if (v3)
      {

        return a3;
      }

      if (v13)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v14 = v9;
        v15 = v21[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v9 = v14;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        i = v17;
        v6 = v18;
      }

      else
      {
      }

      ++v8;
      if (v12 == i)
      {
        a3 = v21;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a3 = _swiftEmptyArrayStorage;
LABEL_20:

  return a3;
}

uint64_t sub_10000D3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[25] = a3;
  v4[26] = a4;
  v4[23] = a1;
  v4[24] = a2;
  return _swift_task_switch(sub_10000D408, 0, 0);
}

uint64_t sub_10000D408()
{
  v1 = v0[25];
  v0[18] = 0;
  v0[19] = 0;
  v3 = 0;
  v4 = 0;
  if (([v1 isCancelled] & 1) == 0)
  {
    v5 = v0[24];
    URL._bridgeToObjectiveC()(v2);
    v7 = v6;
    v8 = [v6 br_lastEditorDeviceName];
    if (v8)
    {
      v9 = v8;
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = v10;
    }

    else
    {

      v3 = 0;
      v4 = 0;
    }

    v0[18] = v3;
    v0[19] = v4;
  }

  v0[27] = v3;
  v0[28] = v4;
  v11 = objc_opt_self();
  v0[30] = 0;
  v0[31] = _swiftEmptyArrayStorage;
  v0[29] = v11;
  v12 = v0[24];
  v13 = [v11 defaultManager];
  v0[32] = v13;
  URL._bridgeToObjectiveC()(v14);
  v16 = v15;
  v0[33] = v15;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_10000D5EC;
  v17 = swift_continuation_init();
  v0[17] = sub_10000281C(&qword_100039EE0, &qword_10002B440);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000EE4C;
  v0[13] = &unk_100034FF0;
  v0[14] = v17;
  [v13 fetchItemForURL:v16 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000D5EC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 272) = v3;
  if (v3)
  {
    *(v1 + 160) = *(v1 + 248);
    v4 = sub_10000E124;
  }

  else
  {
    v4 = sub_10000D704;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000D704()
{
  v38 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 168);

  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100001F70(v3, static Logger.daemon);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "Got FPItem: %@", v7, 0xCu);
    sub_10000C148(v8);
  }

  v10 = [v4 conflictingVersions];
  if (!v10)
  {

LABEL_12:
    v19 = *(v0 + 248);
LABEL_20:
    *(v0 + 160) = v19;
    v28 = *(v0 + 240);
    *(v0 + 320) = v10;
    *(v0 + 328) = v19;
    *(v0 + 312) = v28;
    v29 = swift_task_alloc();
    *(v0 + 336) = v29;
    *v29 = v0;
    v29[1] = sub_10000DF64;
    v30 = *(v0 + 208);

    return sub_100025ED4(1000000000000000000, 0, 0);
  }

  sub_10000E838(0, &qword_100039EF8, NSFileProviderItemVersion_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 280) = v10;

  if (v10 < 1)
  {
    goto LABEL_12;
  }

  v12 = *(v0 + 192);
  v13 = objc_opt_self();
  URL._bridgeToObjectiveC()(v14);
  v16 = v15;
  v17 = [v13 unresolvedConflictVersionsOfItemAtURL:v15];

  if (v17)
  {
    sub_10000E838(0, &qword_100039EF0, NSFileVersion_ptr);
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v18 = 0;
  }

  *(v0 + 288) = v18;

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v37 = v23;
    *v22 = 136315138;
    *(v0 + 176) = v18;

    sub_10000281C(&qword_100039EE8, &qword_10002B448);
    v24 = String.init<A>(describing:)();
    v26 = sub_100020014(v24, v25, &v37);

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v20, v21, "Got %s", v22, 0xCu);
    sub_10000EA28(v23);
  }

  v19 = *(v0 + 248);
  if (!v18)
  {
    goto LABEL_20;
  }

  v27 = v18 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);

  v19 = v18;
  if (v27)
  {
    goto LABEL_20;
  }

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Waiting for conflicting version to be populated...", v34, 2u);
  }

  v35 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v36 = swift_task_alloc();
  *(v0 + 296) = v36;
  *v36 = v0;
  v36[1] = sub_10000DC34;

  return static Task<>.sleep(nanoseconds:)(100);
}

uint64_t sub_10000DC34()
{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {

    v3 = sub_10000E328;
  }

  else
  {
    v3 = sub_10000DD50;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000DD50()
{
  v1 = *(v0 + 304);
  if ([*(v0 + 200) isCancelled])
  {
    v3 = *(v0 + 280);
    v2 = *(v0 + 288);
    *(v0 + 160) = v2;
    *(v0 + 320) = v3;
    *(v0 + 328) = v2;
    *(v0 + 312) = v1;
    v4 = swift_task_alloc();
    *(v0 + 336) = v4;
    *v4 = v0;
    v4[1] = sub_10000DF64;
    v5 = *(v0 + 208);

    return sub_100025ED4(1000000000000000000, 0, 0);
  }

  else
  {
    v7 = *(v0 + 288);
    *(v0 + 240) = v1;
    *(v0 + 248) = v7;
    v8 = *(v0 + 192);
    v9 = [*(v0 + 232) defaultManager];
    *(v0 + 256) = v9;
    URL._bridgeToObjectiveC()(v10);
    v12 = v11;
    *(v0 + 264) = v11;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 168;
    *(v0 + 24) = sub_10000D5EC;
    v13 = swift_continuation_init();
    *(v0 + 136) = sub_10000281C(&qword_100039EE0, &qword_10002B440);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10000EE4C;
    *(v0 + 104) = &unk_100034FF0;
    *(v0 + 112) = v13;
    [v9 fetchItemForURL:v12 completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_10000DF64(uint64_t a1)
{
  v2 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = a1;

  return _swift_task_switch(sub_10000E064, 0, 0);
}

uint64_t sub_10000E064()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[39];
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[23];
  v7 = v0[34] != 0;
  v8 = sub_10000D23C(v0[43], v0 + 18, v0 + 20);

  *v6 = v2;
  *(v6 + 8) = v7;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *(v6 + 32) = v8;
  v9 = v0[1];

  return v9();
}

uint64_t sub_10000E124()
{
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[32];
  swift_willThrow();

  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v4 = v0[34];
  v5 = type metadata accessor for Logger();
  sub_100001F70(v5, static Logger.daemon);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[34];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error getting FPItem: %@", v10, 0xCu);
    sub_10000C148(v11);
  }

  else
  {
  }

  v13 = v0[31];
  v0[40] = 0;
  v0[41] = v13;
  v0[39] = 0;
  v14 = swift_task_alloc();
  v0[42] = v14;
  *v14 = v0;
  v14[1] = sub_10000DF64;
  v15 = v0[26];

  return sub_100025ED4(1000000000000000000, 0, 0);
}

uint64_t sub_10000E328()
{
  if ([*(v0 + 200) isCancelled])
  {
    v2 = *(v0 + 280);
    v1 = *(v0 + 288);
    *(v0 + 160) = v1;
    *(v0 + 320) = v2;
    *(v0 + 328) = v1;
    *(v0 + 312) = 0;
    v3 = swift_task_alloc();
    *(v0 + 336) = v3;
    *v3 = v0;
    v3[1] = sub_10000DF64;
    v4 = *(v0 + 208);

    return sub_100025ED4(1000000000000000000, 0, 0);
  }

  else
  {
    v6 = *(v0 + 288);
    *(v0 + 240) = 0;
    *(v0 + 248) = v6;
    v7 = *(v0 + 192);
    v8 = [*(v0 + 232) defaultManager];
    *(v0 + 256) = v8;
    URL._bridgeToObjectiveC()(v9);
    v11 = v10;
    *(v0 + 264) = v10;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 168;
    *(v0 + 24) = sub_10000D5EC;
    v12 = swift_continuation_init();
    *(v0 + 136) = sub_10000281C(&qword_100039EE0, &qword_10002B440);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10000EE4C;
    *(v0 + 104) = &unk_100034FF0;
    *(v0 + 112) = v12;
    [v8 fetchItemForURL:v11 completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t type metadata accessor for GameSyncedDirectoryLoadResult()
{
  result = qword_100039F90;
  if (!qword_100039F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000E584()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000E664(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000296C;

  return sub_10000B74C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10000E7A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000E820(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E838(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000E89C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000E8F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10000E938()
{
  result = qword_100039F30;
  if (!qword_100039F30)
  {
    sub_10000E99C(&qword_100039F28, &unk_10002B460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039F30);
  }

  return result;
}

uint64_t sub_10000E99C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *sub_10000E9E4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000EA28(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000EA88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10000EB68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = a2;
  }

  return result;
}

void sub_10000EC24()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_10000ED08(319, &qword_100039FA0);
    if (v1 <= 0x3F)
    {
      sub_10000ED08(319, &qword_100039FA8);
      if (v2 <= 0x3F)
      {
        sub_10000ED54();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10000ED08(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_10000ED54()
{
  if (!qword_100039FB0)
  {
    sub_10000E99C(&unk_100039FB8, &unk_10002B490);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100039FB0);
    }
  }
}

uint64_t sub_10000EDC4()
{

  return sub_1000080C0();
}

uint64_t sub_10000EE50()
{
  [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP9gamesaved22GameSaveDaemonProtocol_];
  sub_10000281C(&qword_10003A180, &qword_10002BC40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10002B4A0;
  v1 = type metadata accessor for GameSyncedDirectoryRequest();
  *(v0 + 56) = sub_10000281C(&qword_10003A188, &qword_10002B700);
  *(v0 + 32) = v1;
  v2 = objc_allocWithZone(NSSet);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 initWithArray:isa];

  result = static Set._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
  __break(1u);
  return result;
}

Swift::Int sub_10000F120()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_10000F198()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

_BYTE *sub_10000F1DC@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result >= 4u)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2010003u >> (8 * *result);
  }

  *a2 = v2;
  return result;
}

uint64_t sub_10000F214(uint64_t a1)
{
  v2 = sub_1000103D4();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000F250(uint64_t a1)
{
  v2 = sub_1000103D4();
  v3 = sub_100010428();
  v4 = sub_10001047C();

  return Error<>._code.getter(a1, v2, v3, v4);
}

Swift::Int sub_10000F308()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000F37C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_10000F3C0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100010A4C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_10000F408(void *a1)
{
  v2 = v1;
  URL._bridgeToObjectiveC()(OBJC_IVAR___GameSyncedDirectoryResponse_directoryURL);
  v5 = v4;
  v6 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v2 + OBJC_IVAR___GameSyncedDirectoryResponse_gameSavedDataFolderURL);
  v8 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v7 forKey:v8];

  v9 = *(v2 + OBJC_IVAR___GameSyncedDirectoryResponse_isOnline);
  v10 = String._bridgeToObjectiveC()();
  [a1 encodeBool:v9 forKey:v10];

  if (*(v2 + OBJC_IVAR___GameSyncedDirectoryResponse_lastEditorDeviceName + 8))
  {
    v11 = *(v2 + OBJC_IVAR___GameSyncedDirectoryResponse_lastEditorDeviceName);
    v12 = String._bridgeToObjectiveC()();
    v13 = String._bridgeToObjectiveC()();
    [a1 encodeObject:v12 forKey:v13];
  }

  if ((*(v2 + OBJC_IVAR___GameSyncedDirectoryResponse_numberOfConflicts + 8) & 1) == 0)
  {
    v14 = *(v2 + OBJC_IVAR___GameSyncedDirectoryResponse_numberOfConflicts);
    v15 = String._bridgeToObjectiveC()();
    [a1 encodeInteger:v14 forKey:v15];
  }

  v16 = *(v2 + OBJC_IVAR___GameSyncedDirectoryResponse_directorySandboxExtension);
  v17 = *(v2 + OBJC_IVAR___GameSyncedDirectoryResponse_directorySandboxExtension + 8);
  v18 = String._bridgeToObjectiveC()();
  v19 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v18 forKey:v19];

  if (*(v2 + OBJC_IVAR___GameSyncedDirectoryResponse_devices))
  {
    type metadata accessor for DeviceInfo();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v21 = String._bridgeToObjectiveC()();
    [a1 encodeObject:isa forKey:v21];
  }
}

uint64_t type metadata accessor for GameSyncedDirectoryResponse()
{
  result = qword_10003A088;
  if (!qword_10003A088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000FB6C()
{
  result = type metadata accessor for URL();
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

void sub_10000FC44(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___GameSyncedDirectoryRequest_mode);
  v4 = String._bridgeToObjectiveC()();
  [a1 encodeInteger:v3 forKey:v4];

  v5 = v1 + OBJC_IVAR___GameSyncedDirectoryRequest_containerIdentifier;
  v6 = *(v1 + OBJC_IVAR___GameSyncedDirectoryRequest_containerIdentifier);
  v7 = *(v5 + 8);

  v8 = String._bridgeToObjectiveC()();

  v9 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v8 forKey:v9];
}

uint64_t sub_10000FDE8()
{
  _StringGuts.grow(_:)(33);

  v7 = *(v0 + OBJC_IVAR___GameSyncedDirectoryRequest_mode);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._object = 0x800000010002CEF0;
  v2._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v2);
  v3 = *(v0 + OBJC_IVAR___GameSyncedDirectoryRequest_containerIdentifier);
  v4 = *(v0 + OBJC_IVAR___GameSyncedDirectoryRequest_containerIdentifier + 8);

  v5._countAndFlagsBits = v3;
  v5._object = v4;
  String.append(_:)(v5);

  return 0x203A65646F4DLL;
}

id sub_10000FF08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GameSyncedDirectoryRequest();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10000FF7C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___DeviceInfo_name);
  v4 = *(v1 + OBJC_IVAR___DeviceInfo_name + 8);
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR___DeviceInfo_symbol);
  v8 = *(v1 + OBJC_IVAR___DeviceInfo_symbol + 8);
  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v9 forKey:v10];
}

id sub_100010114(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t sub_100010184()
{
  _StringGuts.grow(_:)(27);

  String.append(_:)(*(v0 + OBJC_IVAR___DeviceInfo_name));
  v1._object = 0x800000010002CEA0;
  v1._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v1);
  String.append(_:)(*(v0 + OBJC_IVAR___DeviceInfo_symbol));
  return 0x203A656D614ELL;
}

id sub_100010264()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100010328()
{
  result = qword_10003A108;
  if (!qword_10003A108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A108);
  }

  return result;
}

unint64_t sub_100010380()
{
  result = qword_10003A110;
  if (!qword_10003A110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A110);
  }

  return result;
}

unint64_t sub_1000103D4()
{
  result = qword_10003A118;
  if (!qword_10003A118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A118);
  }

  return result;
}

unint64_t sub_100010428()
{
  result = qword_10003A120;
  if (!qword_10003A120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A120);
  }

  return result;
}

unint64_t sub_10001047C()
{
  result = qword_10003A128;
  if (!qword_10003A128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A128);
  }

  return result;
}

unint64_t sub_1000104D0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_1000105DC(a1, a2, v6);
}

unint64_t sub_100010548(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100010694(a1, v4);
}

unint64_t sub_1000105DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100010694(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1000107C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10000281C(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1000104D0(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000108BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000281C(&qword_10003A130, &qword_10002BE80);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000109CC(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1000104D0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100010A3C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000109CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000281C(&qword_10003A138, &unk_10002B6D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100010A3C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_100010A4C(unint64_t result)
{
  if (result == 255)
  {
    v1 = 255;
  }

  else
  {
    v1 = 0;
  }

  if (result >= 3)
  {
    return v1;
  }

  return result;
}

id sub_100010A6C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E838(0, &qword_10003A170, NSURL_ptr);
  result = NSCoder.decodeObject<A>(of:forKey:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = result;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v6 + 32))(&v2[OBJC_IVAR___GameSyncedDirectoryResponse_directoryURL], v9, v5);
  sub_10000E838(0, &qword_10003A178, NSSecurityScopedURLWrapper_ptr);
  result = NSCoder.decodeObject<A>(of:forKey:)();
  if (!result)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  *&v2[OBJC_IVAR___GameSyncedDirectoryResponse_gameSavedDataFolderURL] = result;
  v12 = String._bridgeToObjectiveC()();
  v13 = [a1 decodeBoolForKey:v12];

  v2[OBJC_IVAR___GameSyncedDirectoryResponse_isOnline] = v13;
  v14 = String._bridgeToObjectiveC()();
  v15 = [a1 containsValueForKey:v14];

  if (v15)
  {
    sub_10000E838(0, &qword_10003A148, NSString_ptr);
    v16 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v16)
    {
      v34 = 0;
      v35 = 0;
      v17 = v16;
      static String._conditionallyBridgeFromObjectiveC(_:result:)();

      v19 = v34;
      v18 = v35;
      if (!v35)
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
      v18 = 0;
    }

    v21 = &v2[OBJC_IVAR___GameSyncedDirectoryResponse_lastEditorDeviceName];
    *v21 = v19;
    v21[1] = v18;
  }

  else
  {
    v20 = &v2[OBJC_IVAR___GameSyncedDirectoryResponse_lastEditorDeviceName];
    *v20 = 0;
    v20[1] = 0;
  }

  v22 = String._bridgeToObjectiveC()();
  v23 = [a1 containsValueForKey:v22];

  if (v23)
  {
    v24 = String._bridgeToObjectiveC()();
    v25 = [a1 decodeIntegerForKey:v24];
  }

  else
  {
    v25 = 0;
  }

  v26 = &v2[OBJC_IVAR___GameSyncedDirectoryResponse_numberOfConflicts];
  *v26 = v25;
  v26[8] = v23 ^ 1;
  sub_10000E838(0, &qword_10003A148, NSString_ptr);
  result = NSCoder.decodeObject<A>(of:forKey:)();
  if (!result)
  {
    goto LABEL_21;
  }

  v27 = result;
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v31 = &v2[OBJC_IVAR___GameSyncedDirectoryResponse_directorySandboxExtension];
  *v31 = v28;
  v31[1] = v30;
  v32 = String._bridgeToObjectiveC()();
  LODWORD(v28) = [a1 containsValueForKey:v32];

  if (v28)
  {
    type metadata accessor for DeviceInfo();
    v33 = NSCoder.decodeArrayOfObjects<A>(ofClass:forKey:)();
  }

  else
  {
    v33 = 0;
  }

  *&v2[OBJC_IVAR___GameSyncedDirectoryResponse_devices] = v33;
  v36.receiver = v2;
  v36.super_class = ObjectType;
  return objc_msgSendSuper2(&v36, "init");
}

id sub_100010E5C(void *a1)
{
  v2 = v1;
  v4 = String._bridgeToObjectiveC()();
  v5 = [a1 decodeIntegerForKey:v4];

  if (v5 == 255)
  {
    v6 = 255;
  }

  else
  {
    v6 = 0;
  }

  if (v5 < 3)
  {
    v6 = v5;
  }

  *&v2[OBJC_IVAR___GameSyncedDirectoryRequest_mode] = v6;
  sub_10000E838(0, &qword_10003A148, NSString_ptr);
  result = NSCoder.decodeObject<A>(of:forKey:)();
  if (result)
  {
    v8 = result;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = &v2[OBJC_IVAR___GameSyncedDirectoryRequest_containerIdentifier];
    *v12 = v9;
    v12[1] = v11;
    v13.receiver = v2;
    v13.super_class = type metadata accessor for GameSyncedDirectoryRequest();
    return objc_msgSendSuper2(&v13, "init");
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100010F58()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_10000E838(0, &qword_10003A148, NSString_ptr);
  result = NSCoder.decodeObject<A>(of:forKey:)();
  if (result)
  {
    v4 = result;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = &v0[OBJC_IVAR___DeviceInfo_name];
    *v8 = v5;
    v8[1] = v7;
    result = NSCoder.decodeObject<A>(of:forKey:)();
    if (result)
    {
      v9 = result;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = &v1[OBJC_IVAR___DeviceInfo_symbol];
      *v13 = v10;
      v13[1] = v12;
      v14.receiver = v1;
      v14.super_class = ObjectType;
      return objc_msgSendSuper2(&v14, "init");
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100011060()
{
  result = qword_10003A150;
  if (!qword_10003A150)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A150);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GameSaveError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GameSaveError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001122C()
{
  result = qword_10003A1A8;
  if (!qword_10003A1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A1A8);
  }

  return result;
}

Swift::Int sub_10001128C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1000112F8()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100011340()
{
  v1[19] = v0;
  v2 = type metadata accessor for URL();
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_100011400, v0, 0);
}

uint64_t sub_100011400()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  (*(v2 + 16))(v1, v0[19] + OBJC_IVAR____TtC9gamesaved19UbiquitousContainer_url, v3);
  URL._bridgeToObjectiveC()(v4);
  v6 = v5;
  v0[23] = v5;
  (*(v2 + 8))(v1, v3);
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100001F70(v7, static Logger.daemon);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Forcing refresh of container", v10, 2u);
  }

  v11 = [v6 br_cloudDocsContainer];
  v0[24] = v11;
  if (v11)
  {
    v12 = v11;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1000116B4;
    v13 = swift_continuation_init();
    v0[17] = sub_10000281C(&qword_10003A450, &qword_10002B950);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100011834;
    v0[13] = &unk_1000352B8;
    v0[14] = v13;
    [v12 forceRefreshWithCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    sub_100014FE8();
    swift_allocError();
    swift_willThrow();

    v14 = v0[22];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1000116B4()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return _swift_task_switch(sub_1000117A8, v1, 0);
}

uint64_t sub_1000117A8()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[18];
  swift_willThrow();

  v4 = v0[22];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100011834(uint64_t a1, void *a2)
{
  v3 = sub_10000E9E4((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_1000118B8()
{
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100001F70(v1, static Logger.daemon);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Waiting for initial sync for container", v4, 2u);
  }

  v5 = *(v0 + 16);

  sub_100014E78();
  v6 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v7[1] = sub_100011A54;
  v8 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100011A54()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_100011B98;
  }

  else
  {
    v6 = sub_100011B80;
  }

  return _swift_task_switch(v6, v5, 0);
}

void sub_100011BB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000281C(&qword_100039E50, &qword_10002BE90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  v9 = *(a2 + 112);
  v10 = *(a2 + 120);

  v11 = String._bridgeToObjectiveC()();

  (*(v5 + 16))(v8, a1, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v8, v4);
  aBlock[4] = sub_100014F6C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011DF4;
  aBlock[3] = &unk_100035290;
  v14 = _Block_copy(aBlock);

  BRRegisterInitialSyncHandlerForContainer();
  _Block_release(v14);
}

uint64_t sub_100011D80(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    sub_10000281C(&qword_100039E50, &qword_10002BE90);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_10000281C(&qword_100039E50, &qword_10002BE90);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_100011DF4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_100011E60(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100011E80, v1, 0);
}

uint64_t sub_100011E80()
{
  v1 = *(v0 + 24);
  v2 = OBJC_IVAR____TtC9gamesaved19UbiquitousContainer_containerObserver;
  v3 = *(v1 + OBJC_IVAR____TtC9gamesaved19UbiquitousContainer_containerObserver);

  sub_10001702C();

  *(v0 + 32) = *(v1 + v2);

  return _swift_task_switch(sub_100011F1C, 0, 0);
}

uint64_t sub_100011F1C()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[5] = v3;
  v3[2] = v1;
  v3[3] = v2;
  v3[4] = 0x405E000000000000;
  v4 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_100012020;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 7, 0, 0, 0xD00000000000002ELL, 0x800000010002D160, sub_100014E18, v3, &type metadata for Bool);
}

uint64_t sub_100012020()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_100012138, 0, 0);
}

uint64_t sub_100012138()
{
  v1 = *(v0 + 32);
  if (*(v0 + 56) == 1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    sub_100014E24();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000121FC()
{
  v1 = *(v0 + 120);

  v2 = OBJC_IVAR____TtC9gamesaved19UbiquitousContainer_url;
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC9gamesaved19UbiquitousContainer_containerObserver);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for UbiquitousContainer()
{
  result = qword_10003A238;
  if (!qword_10003A238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000122E0()
{
  result = type metadata accessor for URL();
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

uint64_t sub_1000123BC()
{
  v1 = *(v0 + 64);
  swift_defaultActor_initialize();
  *(v1 + 112) = sub_1000107AC(_swiftEmptyArrayStorage);
  *(v1 + 120) = 0;

  return _swift_task_switch(sub_100012438, v1, 0);
}

uint64_t sub_100012438()
{
  v1 = v0[8];
  v2 = [objc_opt_self() defaultCenter];
  v3 = BRAccountTokenDidChangeNotification;
  v0[6] = sub_100014A10;
  v0[7] = v1;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100012F2C;
  v0[5] = &unk_100035150;
  v4 = _Block_copy(v0 + 2);
  v5 = v0[7];

  v6 = [v2 addObserverForName:v3 object:0 queue:0 usingBlock:v4];
  _Block_release(v4);

  v7 = *(v1 + 120);
  *(v1 + 120) = v6;
  swift_unknownObjectRelease();
  [objc_opt_self() startAccountTokenChangeObserverIfNeeded];
  v8 = v0[1];
  v9 = v0[8];

  return v8(v9);
}

uint64_t sub_1000125AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000281C(&qword_100039D28, &qword_10002B900);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a2;

  sub_100012918(0, 0, v6, &unk_10002B910, v8);
}

uint64_t sub_1000126D8()
{
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100001F70(v1, static Logger.daemon);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Handling BRAccount Token Did Change notification", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_100012824;
  v6 = *(v0 + 16);

  return sub_100013020();
}

uint64_t sub_100012824()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100012918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_10000281C(&qword_100039D28, &qword_10002B900) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_100014C94(a3, v26 - v10, &qword_100039D28, &qword_10002B900);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100014CFC(v11, &qword_100039D28, &qword_10002B900);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_100014CFC(a3, &qword_100039D28, &qword_10002B900);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100014CFC(a3, &qword_100039D28, &qword_10002B900);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100012C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000281C(&qword_100039D28, &qword_10002B900);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100014C94(a3, v27 - v11, &qword_100039D28, &qword_10002B900);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100014CFC(v12, &qword_100039D28, &qword_10002B900);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      sub_10000281C(&unk_100039FB8, &unk_10002B490);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_100014CFC(a3, &qword_100039D28, &qword_10002B900);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100014CFC(a3, &qword_100039D28, &qword_10002B900);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_10000281C(&unk_100039FB8, &unk_10002B490);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100012F2C(uint64_t a1)
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

uint64_t sub_100013040()
{
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 24) = sub_100001F70(v1, static Logger.daemon);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Invalidating container handlers", v4, 2u);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + 112);
  *(v0 + 32) = v6;
  v7 = *(v6 + 32);
  *(v0 + 64) = v7;
  v8 = -1;
  v9 = -1 << v7;
  if (-(-1 << v7) < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v10 = v8 & *(v6 + 64);

  if (v10)
  {
    v12 = 0;
LABEL_12:
    *(v0 + 40) = v10;
    *(v0 + 48) = v12;
    v14 = *(*(v11 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v10)))));
    *(v0 + 56) = v14;

    return _swift_task_switch(sub_100013250, v14, 0);
  }

  else
  {
    v13 = 0;
    while (((63 - v9) >> 6) - 1 != v13)
    {
      v12 = v13 + 1;
      v10 = *(v11 + 8 * v13++ + 72);
      if (v10)
      {
        goto LABEL_12;
      }
    }

    v15 = *(v0 + 16);

    v16 = *(v15 + 112);

    *(v15 + 112) = &_swiftEmptyDictionarySingleton;
    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_100013250()
{
  v20 = v0;
  v1 = v0[7];
  v2 = *(v1 + OBJC_IVAR____TtC9gamesaved19UbiquitousContainer_containerObserver);
  v3 = v2[4];
  if (v3)
  {
    v4 = v0[3];
    v5 = *(v1 + OBJC_IVAR____TtC9gamesaved19UbiquitousContainer_containerObserver);

    v6 = v3;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v9 = 136315138;
      v11 = v2[2];
      v12 = v2[3];

      v13 = sub_100020014(v11, v12, &v19);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Stopping metadata query for %s", v9, 0xCu);
      sub_10000EA28(v10);
    }

    v14 = v0[2];
    [v6 stopQuery];

    v15 = v2[4];
    v2[4] = 0;

    v16 = sub_10001340C;
    v17 = v14;
  }

  else
  {
    v17 = v0[2];
    v16 = sub_10001531C;
  }

  return _swift_task_switch(v16, v17, 0);
}

uint64_t sub_10001340C()
{
  v1 = *(v0 + 56);

  v5 = *(v0 + 48);
  v6 = (*(v0 + 40) - 1) & *(v0 + 40);
  if (v6)
  {
    v7 = *(v0 + 32);
LABEL_7:
    *(v0 + 40) = v6;
    *(v0 + 48) = v5;
    v9 = *(*(v7 + 56) + ((v5 << 9) | (8 * __clz(__rbit64(v6)))));
    *(v0 + 56) = v9;

    v2 = sub_100013250;
    v3 = v9;
    v4 = 0;

    return _swift_task_switch(v2, v3, v4);
  }

  else
  {
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        return _swift_task_switch(v2, v3, v4);
      }

      if (v8 >= (((1 << *(v0 + 64)) + 63) >> 6))
      {
        break;
      }

      v7 = *(v0 + 32);
      v6 = *(v7 + 8 * v8 + 64);
      ++v5;
      if (v6)
      {
        v5 = v8;
        goto LABEL_7;
      }
    }

    v10 = *(v0 + 32);
    v11 = *(v0 + 16);

    v12 = *(v11 + 112);

    *(v11 + 112) = &_swiftEmptyDictionarySingleton;
    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_100013544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v5 = type metadata accessor for URL();
  v4[14] = v5;
  v6 = *(v5 - 8);
  v4[15] = v6;
  v7 = *(v6 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v8 = sub_10000281C(&qword_10003A430, &unk_10002B930);
  v4[18] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_10001365C, v3, 0);
}

uint64_t sub_10001365C()
{
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 168) = sub_100001F70(v1, static Logger.daemon);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Getting Container", v4, 2u);
  }

  v5 = *(v0 + 104);

  v6 = *(v5 + 112);
  if (*(v6 + 16))
  {
    v8 = *(v0 + 80);
    v7 = *(v0 + 88);

    v9 = sub_1000104D0(v8, v7);
    if (v10)
    {
      v11 = *(*(v6 + 56) + 8 * v9);

      goto LABEL_33;
    }
  }

  v12 = *(v0 + 144);
  v14 = *(v0 + 112);
  v13 = *(v0 + 120);
  v15 = swift_allocBox();
  *(v0 + 176) = v15;
  v84 = v16;
  (*(v13 + 56))(v16, 1, 1, v14);
  v17 = (v13 + 48);
  if ([*(v0 + 96) isCancelled])
  {
LABEL_29:
    v43 = *(v0 + 152);
    v44 = *(v0 + 112);
    sub_100014C94(v84, v43, &qword_10003A430, &unk_10002B930);
    v45 = (*v17)(v43, 1, v44);
    v46 = *(v0 + 152);
    if (v45 != 1)
    {
      v56 = *(v0 + 128);
      v57 = *(v0 + 136);
      v58 = *(v0 + 112);
      v59 = *(v0 + 120);
      v61 = *(v0 + 80);
      v60 = *(v0 + 88);
      (*(v59 + 32))(v57, *(v0 + 152), v58);
      v62 = *(v59 + 16);
      v62(v56, v57, v58);
      v63 = type metadata accessor for UbiquitousContainer();
      v64 = *(v63 + 48);
      v65 = *(v63 + 52);
      v66 = swift_allocObject();
      *(v0 + 184) = v66;
      swift_defaultActor_initialize();
      v62(v66 + OBJC_IVAR____TtC9gamesaved19UbiquitousContainer_url, v56, v58);
      *(v66 + 112) = v61;
      *(v66 + 120) = v60;
      v67 = type metadata accessor for ContainerObserver();
      v68 = *(v67 + 48);
      v69 = *(v67 + 52);
      swift_allocObject();
      swift_bridgeObjectRetain_n();
      v70 = sub_100017414(v61, v60);
      v71 = *(v59 + 8);
      *(v0 + 192) = v71;
      *(v0 + 200) = (v59 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v71(v56, v58);
      *(v66 + OBJC_IVAR____TtC9gamesaved19UbiquitousContainer_containerObserver) = v70;
      v72 = swift_task_alloc();
      *(v0 + 208) = v72;
      *v72 = v0;
      v72[1] = sub_100013F74;
      v73 = *(v0 + 96);

      return sub_100011E60(v73);
    }

    sub_100014CFC(*(v0 + 152), &qword_10003A430, &unk_10002B930);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Couldn't get container URL", v49, 2u);
    }

    v11 = 0;
LABEL_33:
    v51 = *(v0 + 152);
    v50 = *(v0 + 160);
    v53 = *(v0 + 128);
    v52 = *(v0 + 136);

    v54 = *(v0 + 8);

    return v54(v11);
  }

  v18 = 6;
  v83 = v15;
  while (1)
  {
    v20 = *(v0 + 80);
    v19 = *(v0 + 88);
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    v22 = String._bridgeToObjectiveC()();
    v23 = swift_allocObject();
    *(v23 + 16) = v15;
    *(v23 + 24) = v21;
    *(v0 + 48) = sub_100014C8C;
    *(v0 + 56) = v23;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1000143E4;
    *(v0 + 40) = &unk_100035240;
    v24 = _Block_copy((v0 + 16));
    v25 = *(v0 + 56);

    BRGetProcessMobileContainerForID();
    _Block_release(v24);

    v26 = *(v21 + 16);
    if (v26)
    {
      *(v0 + 64) = v26;
      swift_errorRetain();
      sub_10000281C(&qword_100039ED0, &unk_10002B940);
      sub_100014D5C();
      if (swift_dynamicCast())
      {
        break;
      }
    }

LABEL_19:
    v34 = *(v0 + 160);
    v35 = *(v0 + 112);
    sub_100014C94(v84, v34, &qword_10003A430, &unk_10002B930);
    LODWORD(v34) = (*v17)(v34, 1, v35);
    sub_100014CFC(*(v0 + 160), &qword_10003A430, &unk_10002B930);
    if (v34 != 1)
    {

      goto LABEL_29;
    }

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      if (*(v21 + 16))
      {
        v40 = *(v21 + 16);
        swift_errorRetain();
        v41 = _swift_stdlib_bridgeErrorToNSError();
        v42 = v41;
      }

      else
      {
        v41 = 0;
        v42 = 0;
      }

      *(v38 + 4) = v41;
      *v39 = v42;
      _os_log_impl(&_mh_execute_header, v36, v37, "Retrying to get the container URL with error: %@", v38, 0xCu);
      sub_100014CFC(v39, &qword_100039E40, &unk_10002BAC0);

      v15 = v83;
    }

    sleep(1u);

    if (!--v18 || ([*(v0 + 96) isCancelled] & 1) != 0)
    {
      goto LABEL_29;
    }
  }

  v27 = *(v0 + 72);
  v28 = [v27 domain];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32)
  {
  }

  else
  {
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v33 & 1) == 0)
    {
LABEL_18:

      goto LABEL_19;
    }
  }

  if ([v27 code] != 2)
  {
    goto LABEL_18;
  }

  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&_mh_execute_header, v74, v75, "iCloud Drive signed out", v76, 2u);
  }

  v78 = *(v0 + 152);
  v77 = *(v0 + 160);
  v80 = *(v0 + 128);
  v79 = *(v0 + 136);

  sub_100010380();
  swift_allocError();
  *v81 = 0;
  swift_willThrow();

  v82 = *(v0 + 8);

  return v82();
}

uint64_t sub_100013F74()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 104);
  if (v0)
  {
    v6 = sub_1000141C0;
  }

  else
  {
    v6 = sub_1000140A0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000140A0()
{
  v1 = v0[24];
  v17 = v0[25];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[17];
  v6 = v0[13];
  v5 = v0[14];
  v8 = v0[10];
  v7 = v0[11];

  v9 = *(v6 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v6 + 112);
  *(v6 + 112) = 0x8000000000000000;
  sub_100029AE0(v2, v8, v7, isUniquelyReferenced_nonNull_native);

  *(v6 + 112) = v18;
  v1(v4, v5);

  v12 = v0[19];
  v11 = v0[20];
  v14 = v0[16];
  v13 = v0[17];

  v15 = v0[1];

  return v15(v2);
}

uint64_t sub_1000141C0()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 168);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 216);
  v7 = *(v0 + 184);
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error initializing metadata query: %@", v8, 0xCu);
    sub_100014CFC(v9, &qword_100039E40, &unk_10002BAC0);
  }

  else
  {
    v11 = *(v0 + 184);
  }

  v12 = *(v0 + 200);
  v13 = *(v0 + 176);
  (*(v0 + 192))(*(v0 + 136), *(v0 + 112));

  v15 = *(v0 + 152);
  v14 = *(v0 + 160);
  v17 = *(v0 + 128);
  v16 = *(v0 + 136);

  v18 = *(v0 + 8);

  return v18(0);
}

uint64_t sub_10001437C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_projectBox();
  sub_100014DA8(a1, v7);
  v8 = *(a4 + 16);
  *(a4 + 16) = a2;
  swift_errorRetain();
}

uint64_t sub_1000143E4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_10000281C(&qword_10003A430, &unk_10002B930);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for URL();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = a3;
  v11(v9, a3);

  return sub_100014CFC(v9, &qword_10003A430, &unk_10002B930);
}

uint64_t sub_100014538()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10001459C(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_1000145FC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000146F4;

  return v7(a1);
}

uint64_t sub_1000146F4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000147EC(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_1000148E0;

  return v6(v2 + 16);
}

uint64_t sub_1000148E0()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100014A18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100014A30()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100014A70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000296C;

  return sub_1000126B8(a1, v4, v5, v6);
}

uint64_t sub_100014B24()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100014B5C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000EE44;

  return sub_1000145FC(a1, v5);
}

uint64_t sub_100014C14()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100014C4C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100014C94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000281C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100014CFC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000281C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100014D5C()
{
  result = qword_100039ED8;
  if (!qword_100039ED8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100039ED8);
  }

  return result;
}

uint64_t sub_100014DA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000281C(&qword_10003A430, &unk_10002B930);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_100014E24()
{
  result = qword_10003A438;
  if (!qword_10003A438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A438);
  }

  return result;
}

unint64_t sub_100014E78()
{
  result = qword_10003A440;
  if (!qword_10003A440)
  {
    type metadata accessor for UbiquitousContainer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A440);
  }

  return result;
}

uint64_t sub_100014ED8()
{
  v1 = sub_10000281C(&qword_100039E50, &qword_10002BE90);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100014F6C(uint64_t a1)
{
  v2 = *(*(sub_10000281C(&qword_100039E50, &qword_10002BE90) - 8) + 80);

  return sub_100011D80(a1);
}

unint64_t sub_100014FE8()
{
  result = qword_10003A448;
  if (!qword_10003A448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A448);
  }

  return result;
}

uint64_t sub_100015054(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000EE44;

  return sub_1000147EC(a1, v5);
}

uint64_t sub_10001510C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000296C;

  return sub_1000147EC(a1, v5);
}

uint64_t getEnumTagSinglePayload for UbiquitousContainerError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for UbiquitousContainerError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1000152B0()
{
  result = qword_10003A458;
  if (!qword_10003A458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A458);
  }

  return result;
}

void *sub_100015328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  v12 = SecTaskCreateWithAuditToken(0, &token);
  if (!v12)
  {
    if (qword_100039C20 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100001F70(v25, static Logger.daemon);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Failed to create SecTask", v28, 2u);
    }

    goto LABEL_15;
  }

  v13 = v12;
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100001F70(v14, static Logger.daemon);
  v15 = sub_100022100(v13);
  if (!v15)
  {
    v26 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v26, v29, "Failed getting application identifier", v30, 2u);
    }

LABEL_15:

    type metadata accessor for GameSaveXPCClient();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v6[4] = v15;
  v6[2] = sub_1000228A8(v13);
  v6[3] = v16;
  v6[7] = a2;
  v6[8] = a3;
  v6[9] = a4;
  v6[5] = a5;
  v6[6] = a1;

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v32 = v20;
    *v19 = 136315138;
    v21 = v6[3];
    *token.val = v6[2];
    *&token.val[2] = v21;

    sub_10000281C(&qword_10003A158, &qword_10002B6E0);
    v22 = String.init<A>(describing:)();
    v24 = sub_100020014(v22, v23, &v32);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "[%s] Welcome to GameSaveDaemon!", v19, 0xCu);
    sub_10000EA28(v20);
  }

  return v6;
}

uint64_t sub_100015674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100015694, 0, 0);
}

uint64_t sub_100015694()
{
  v1 = *(*(*(v0 + 16) + 40) + 16);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_10001572C;

  return sub_10002940C();
}

uint64_t sub_10001572C()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return _swift_task_switch(sub_100015828, 0, 0);
}

uint64_t sub_100015828()
{
  dispatch_group_leave(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

id sub_100015888(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10000281C(&qword_100039D28, &qword_10002B900);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v27 - v10;
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100001F70(v12, static Logger.daemon);
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
    _os_log_impl(&_mh_execute_header, v14, v15, "getSyncedDirectory called with: %@", v16, 0xCu);
    sub_100014CFC(v17, &qword_100039E40, &unk_10002BAC0);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v20 = objc_opt_self();

  v21 = [v20 progressWithTotalUnitCount:100];
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v4;
  v23[5] = v13;
  v23[6] = v21;
  v23[7] = sub_100016810;
  v23[8] = v19;
  v24 = v13;

  v25 = v21;
  sub_100012918(0, 0, v11, &unk_10002BAB8, v23);

  return v25;
}

uint64_t sub_100015B44(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100001F70(v6, static Logger.daemon);
  v7 = a1;
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v7;
    *v11 = a1;
    *(v10 + 12) = 2112;
    v12 = v7;
    if (a2)
    {
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      v14 = v13;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    *(v10 + 14) = v13;
    v11[1] = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "getSyncedDirectory reply: %@ %@", v10, 0x16u);
    sub_10000281C(&qword_100039E40, &unk_10002BAC0);
    swift_arrayDestroy();
  }

  return a3(a1, a2);
}

uint64_t sub_100015D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  v9 = type metadata accessor for URL();
  v8[9] = v9;
  v10 = *(v9 - 8);
  v8[10] = v10;
  v11 = *(v10 + 64) + 15;
  v8[11] = swift_task_alloc();
  v12 = type metadata accessor for GameSyncedDirectoryLoadResult();
  v8[12] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v8[13] = swift_task_alloc();

  return _swift_task_switch(sub_100015DF8, 0, 0);
}

void sub_100015DF8()
{
  v1 = kTCCServiceUbiquity;
  if (kTCCServiceUbiquity)
  {
    v2 = *(v0 + 32);
    v3 = *(v2 + 64);
    *(v0 + 136) = *(v2 + 48);
    *(v0 + 152) = v3;
    v4 = TCCAccessCheckAuditToken();

    if (v4)
    {
      v5 = (*(v0 + 40) + OBJC_IVAR___GameSyncedDirectoryRequest_containerIdentifier);
      v6 = *v5;
      v7 = v5[1];
      v8 = *(*(v0 + 32) + 32);
      v9 = (v8 + 40);
      v10 = *(v8 + 16) + 1;
      while (1)
      {
        if (!--v10)
        {
          v14 = 2;
          goto LABEL_13;
        }

        v11 = *(v9 - 1);
        v12 = *v9;
        *(v0 + 112) = *v9;
        if (v11 == v6 && v12 == v7)
        {
          break;
        }

        v9 += 2;
        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          goto LABEL_17;
        }
      }

      v11 = v6;
LABEL_17:
      v22 = *(*(v0 + 32) + 40);
      v23 = *(*(v0 + 40) + OBJC_IVAR___GameSyncedDirectoryRequest_mode);

      v24 = swift_task_alloc();
      *(v0 + 120) = v24;
      *v24 = v0;
      v24[1] = sub_100016038;
      v25 = *(v0 + 104);
      v26 = *(v0 + 48);

      sub_1000032E4(v25, v11, v12, v23, v26);
    }

    else
    {
      v14 = 1;
LABEL_13:
      sub_100010380();
      v15 = swift_allocError();
      *v16 = v14;
      swift_willThrow();
      v18 = *(v0 + 56);
      v17 = *(v0 + 64);
      swift_errorRetain();
      v18(0, v15);

      v19 = *(v0 + 104);
      v20 = *(v0 + 88);

      v21 = *(v0 + 8);

      v21();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100016038()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  v4 = *(v2 + 112);

  if (v0)
  {
    v5 = sub_1000165A4;
  }

  else
  {
    v5 = sub_10001615C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10001615C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 32);
  URL.path(percentEncoded:)(0);
  v3 = *(v2 + 64);
  *(v0 + 168) = *(v2 + 48);
  *(v0 + 184) = v3;
  String.utf8CString.getter();

  *(v0 + 200) = *(v0 + 168);
  *(v0 + 216) = *(v0 + 184);
  v4 = sandbox_extension_issue_file_to_process();

  if (v4)
  {
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);
    v7 = *(v0 + 80);
    v8 = *(v0 + 88);
    v9 = *(v0 + 72);
    v50 = *(v0 + 56);
    v51 = *(v0 + 64);
    v10 = String.init(cString:)();
    v48 = v11;
    v49 = v10;
    v12 = v6[5];
    v13 = objc_allocWithZone(NSSecurityScopedURLWrapper);
    URL._bridgeToObjectiveC()(v14);
    v16 = v15;
    v47 = [v13 initWithURL:v15 readonly:0];

    v17 = *(v7 + 16);
    v18 = v9;
    v17(v8, v5, v9);
    v46 = *(v5 + v6[6]);
    v19 = (v5 + v6[8]);
    v20 = v19[1];
    v43 = *v19;
    v21 = v5 + v6[7];
    v45 = *v21;
    v44 = *(v21 + 8);
    v22 = *(v5 + v6[9]);
    v23 = type metadata accessor for GameSyncedDirectoryResponse();
    v24 = objc_allocWithZone(v23);
    v17(&v24[OBJC_IVAR___GameSyncedDirectoryResponse_directoryURL], v8, v18);
    *&v24[OBJC_IVAR___GameSyncedDirectoryResponse_gameSavedDataFolderURL] = v47;
    v24[OBJC_IVAR___GameSyncedDirectoryResponse_isOnline] = v46;
    v25 = &v24[OBJC_IVAR___GameSyncedDirectoryResponse_lastEditorDeviceName];
    *v25 = v43;
    v25[1] = v20;
    v26 = &v24[OBJC_IVAR___GameSyncedDirectoryResponse_numberOfConflicts];
    *v26 = v45;
    v26[8] = v44;
    v27 = &v24[OBJC_IVAR___GameSyncedDirectoryResponse_directorySandboxExtension];
    *v27 = v49;
    v27[1] = v48;
    *&v24[OBJC_IVAR___GameSyncedDirectoryResponse_devices] = v22;
    *(v0 + 16) = v24;
    *(v0 + 24) = v23;
    v28 = v47;

    v29 = objc_msgSendSuper2((v0 + 16), "init");
    (*(v7 + 8))(v8, v18);
    v50(v29, 0);

    sub_10001697C(v5);
  }

  else
  {
    if (qword_100039C20 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100001F70(v30, static Logger.daemon);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 67109120;
      *(v33 + 4) = errno.getter();
      _os_log_impl(&_mh_execute_header, v31, v32, "Error issuing sandbox extension: %d", v33, 8u);
    }

    v34 = *(v0 + 104);

    v35 = NSPOSIXErrorDomain;
    v36 = [objc_allocWithZone(NSError) initWithDomain:v35 code:errno.getter() userInfo:0];

    swift_willThrow();
    sub_10001697C(v34);
    v37 = *(v0 + 56);
    v38 = *(v0 + 64);
    swift_errorRetain();
    v37(0, v36);
  }

  v39 = *(v0 + 104);
  v40 = *(v0 + 88);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_1000165A4()
{
  v1 = v0[16];
  v3 = v0[7];
  v2 = v0[8];
  swift_errorRetain();
  v3(0, v1);

  v4 = v0[13];
  v5 = v0[11];

  v6 = v0[1];

  return v6();
}

void sub_1000166F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_10001676C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocClassInstance(v0, 80, 7);
}

uint64_t sub_1000167D8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100016818()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100016870(uint64_t a1)
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
  v11[1] = sub_10000296C;

  return sub_100015D00(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10001694C(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

uint64_t sub_10001697C(uint64_t a1)
{
  v2 = type metadata accessor for GameSyncedDirectoryLoadResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100016C80(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000281C(&qword_10003A430, &unk_10002B930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100016CF0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100016D30(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10000E838(0, &qword_10003A748, NSMetadataItem_ptr);
    sub_100021854();
    Set.Iterator.init(_cocoa:)();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        v18 = a1(&v26);
        if (v4)
        {
          break;
        }

        if (v18)
        {
          goto LABEL_23;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          sub_10000E838(0, &qword_10003A748, NSMetadataItem_ptr);
          swift_dynamicCast();
          v17 = v26;
          v15 = v8;
          v16 = v9;
          if (v26)
          {
            continue;
          }
        }

        goto LABEL_23;
      }
    }

LABEL_23:
    sub_1000218BC();
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_23;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

Swift::Int sub_100016F74()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100016FE8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_10001702C()
{
  v1 = v0;
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100001F70(v2, static Logger.daemon);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v28 = v6;
    *v5 = 136315138;
    v7 = v1[2];
    v8 = v1[3];

    v9 = sub_100020014(v7, v8, &v28);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Initializing metadata query for %s", v5, 0xCu);
    sub_10000EA28(v6);
  }

  v10 = [objc_allocWithZone(NSMetadataQuery) init];
  v11 = v1[4];
  v1[4] = v10;
  v27 = v10;

  if (v27)
  {
    sub_10000281C(&qword_10003A180, &qword_10002BC40);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_10002B4B0;
    v13 = v1[2];
    v14 = v1[3];
    *(v12 + 56) = &type metadata for String;
    *(v12 + 32) = v13;
    *(v12 + 40) = v14;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v12 + 88) = &type metadata for String;
    *(v12 + 64) = v15;
    *(v12 + 72) = v16;

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v27 setSearchScopes:isa];

    sub_10000E838(0, &qword_10003A768, NSPredicate_ptr);
    sub_10000281C(&qword_10003A770, &qword_10002BC48);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10002B4B0;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
    *(v18 + 56) = &type metadata for String;
    v22 = sub_100021CF4();
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    *(v18 + 96) = &type metadata for String;
    *(v18 + 104) = v22;
    *(v18 + 64) = v22;
    *(v18 + 72) = 0xD000000000000019;
    *(v18 + 80) = 0x800000010002D320;
    v23 = NSPredicate.init(format:_:)();
    [v27 setPredicate:v23];

    [v27 setOperationQueue:v1[5]];
    v24 = objc_opt_self();
    v25 = [v24 defaultCenter];
    [v25 addObserver:v1 selector:"finishedGatheringWithNotification:" name:NSMetadataQueryDidFinishGatheringNotification object:v27];

    v26 = [v24 defaultCenter];
    [v26 addObserver:v1 selector:"recievedUpdatesWithNotification:" name:NSMetadataQueryDidUpdateNotification object:v27];

    [v27 startQuery];
  }
}

uint64_t sub_100017414(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_1000218C4(_swiftEmptyArrayStorage);
  }

  else
  {
    v5 = &_swiftEmptySetSingleton;
  }

  *(v2 + 56) = v5;
  *(v2 + 64) = [objc_allocWithZone(NSRecursiveLock) init];
  v6 = OBJC_IVAR____TtC9gamesaved17ContainerObserver_continuation;
  v7 = sub_10000281C(&unk_10003A578, &unk_10002BBB0);
  (*(*(v7 - 8) + 56))(v2 + v6, 1, 1, v7);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v8 = [objc_allocWithZone(NSOperationQueue) init];
  *(v2 + 40) = v8;
  v9 = v8;
  v10 = String._bridgeToObjectiveC()();
  [v9 setName:v10];

  [*(v2 + 40) setMaxConcurrentOperationCount:1];
  return v2;
}

void sub_100017574()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v0;
    v3 = qword_100039C20;
    v4 = v1;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100001F70(v5, static Logger.daemon);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315138;
      v10 = v2[2];
      v11 = v2[3];

      v12 = sub_100020014(v10, v11, &v14);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "Stopping metadata query for %s", v8, 0xCu);
      sub_10000EA28(v9);
    }

    [v4 stopQuery];
    v13 = v2[4];
    v2[4] = 0;
  }
}

uint64_t sub_100017730()
{
  sub_100017574();
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  sub_100014CFC(v0 + OBJC_IVAR____TtC9gamesaved17ContainerObserver_continuation, &qword_10003A760, &qword_10002BC38);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for ContainerObserver()
{
  result = qword_10003A560;
  if (!qword_10003A560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100017824(uint64_t a1)
{
  v2 = sub_10000281C(&unk_10003A578, &unk_10002BBB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = sub_10000281C(&qword_10003A760, &qword_10002BC38);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v21 - v9;
  *(a1 + 48) = 1;
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100001F70(v11, static Logger.daemon);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = v6;
    v15 = v14;
    v22 = swift_slowAlloc();
    v24 = v22;
    *v15 = 136315138;
    v25 = v13;
    v17 = *(a1 + 16);
    v16 = *(a1 + 24);

    v18 = sub_100020014(v17, v16, &v24);

    *(v15 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v25, "Finished gathering %s", v15, 0xCu);
    sub_10000EA28(v22);

    v6 = v23;
  }

  v19 = OBJC_IVAR____TtC9gamesaved17ContainerObserver_continuation;
  sub_100014C94(a1 + OBJC_IVAR____TtC9gamesaved17ContainerObserver_continuation, v10, &qword_10003A760, &qword_10002BC38);
  if ((*(v3 + 48))(v10, 1, v2))
  {
    sub_100014CFC(v10, &qword_10003A760, &qword_10002BC38);
  }

  else
  {
    (*(v3 + 16))(v6, v10, v2);
    sub_100014CFC(v10, &qword_10003A760, &qword_10002BC38);
    v26 = *(a1 + 48);
    CheckedContinuation.resume(returning:)();
    (*(v3 + 8))(v6, v2);
  }

  sub_100014CFC(a1 + v19, &qword_10003A760, &qword_10002BC38);
  return (*(v3 + 56))(a1 + v19, 1, 1, v2);
}

void sub_100017BA8()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v8 = v1;
    [v8 disableUpdates];
    v2 = [v8 results];
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = sub_100017CF8(v3);

    if (!v4)
    {
      v4 = _swiftEmptyArrayStorage;
    }

    v5 = sub_100021BB4(v4);

    v6 = *(v0 + 56);
    *(v0 + 56) = v5;

    [v8 enableUpdates];
    v7 = *(v0 + 64);
    [v7 lock];
    sub_100017824(v0);
    [v7 unlock];
  }
}

id *sub_100017CF8(uint64_t a1)
{
  v7 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_10000E7A8(i, v6);
    sub_10000E838(0, &qword_10003A748, NSMetadataItem_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v4 = v7[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

void sub_100017E1C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v7 = v1;
    [v7 disableUpdates];
    v2 = [v7 results];
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = sub_100017CF8(v3);

    if (!v4)
    {
      v4 = _swiftEmptyArrayStorage;
    }

    v5 = sub_100021BB4(v4);

    v6 = *(v0 + 56);
    *(v0 + 56) = v5;

    [v7 enableUpdates];
  }
}

uint64_t sub_100017F2C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = type metadata accessor for Notification();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  a4(v10);

  return (*(v6 + 8))(v9, v5);
}

void sub_100018020()
{
  sub_10001DE60();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000180EC(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v8 = sub_10000281C(&qword_100039D28, &qword_10002B900);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = aBlock - v10;
  v12 = *(a2 + 64);
  [v12 lock];
  if (*(a2 + 48) == 1)
  {
    LOBYTE(aBlock[0]) = 1;
    sub_10000281C(&unk_10003A578, &unk_10002BBB0);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    v13 = OBJC_IVAR____TtC9gamesaved17ContainerObserver_continuation;
    sub_100014CFC(a2 + OBJC_IVAR____TtC9gamesaved17ContainerObserver_continuation, &qword_10003A760, &qword_10002BC38);
    v14 = sub_10000281C(&unk_10003A578, &unk_10002BBB0);
    v15 = *(v14 - 8);
    (*(v15 + 16))(a2 + v13, a1, v14);
    (*(v15 + 56))(a2 + v13, 0, 1, v14);
  }

  [v12 unlock];

  aBlock[4] = sub_100021D48;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002BBC;
  aBlock[3] = &unk_100035550;
  v16 = _Block_copy(aBlock);

  [a3 setCancellationHandler:v16];
  _Block_release(v16);
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = a4;
  *(v18 + 40) = a2;
  *(v18 + 48) = a3;

  v19 = a3;
  sub_100012918(0, 0, v11, &unk_10002BC58, v18);
}

void sub_1000183BC(uint64_t a1)
{
  v2 = *(a1 + 64);
  [v2 lock];
  sub_100017824(a1);
  [v2 unlock];
}

uint64_t sub_100018454(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a5;
  *(v6 + 32) = a6;
  *(v6 + 16) = a1;
  v7 = type metadata accessor for ContinuousClock();
  *(v6 + 40) = v7;
  v8 = *(v7 - 8);
  *(v6 + 48) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_100018518, 0, 0);
}

uint64_t sub_100018518()
{
  v1 = v0[7];
  v2 = v0[2];
  v3 = static Duration.seconds(_:)();
  v5 = v4;
  static Clock<>.continuous.getter();
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1000185F4;
  v7 = v0[7];

  return sub_100026AF0(v3, v5, 0, 0, 1);
}

uint64_t sub_1000185F4()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = v2[7];
  v6 = v2[6];
  v7 = v2[5];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = sub_100018888;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_10001878C;
  }

  return _swift_task_switch(v8, 0, 0);
}

id sub_10001878C()
{
  v1 = v0[9];
  v2 = v0[3];
  v3 = *(v2 + 64);
  [v3 lock];
  sub_100018984(v2);
  if (v1)
  {

    return [v3 unlock];
  }

  else
  {
    v5 = v0[7];
    v6 = v0[4];
    [v3 unlock];

    [v6 setCancellationHandler:0];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_100018888()
{
  v1 = v0[3];
  v2 = *(v1 + 64);
  [v2 lock];
  sub_100018984(v1);
  v3 = v0[7];
  v4 = v0[4];
  [v2 unlock];

  [v4 setCancellationHandler:0];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100018984(uint64_t a1)
{
  v2 = sub_10000281C(&unk_10003A578, &unk_10002BBB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - v5;
  v7 = sub_10000281C(&qword_10003A760, &qword_10002BC38);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v13 - v9;
  v11 = OBJC_IVAR____TtC9gamesaved17ContainerObserver_continuation;
  sub_100014C94(a1 + OBJC_IVAR____TtC9gamesaved17ContainerObserver_continuation, &v13 - v9, &qword_10003A760, &qword_10002BC38);
  if ((*(v3 + 48))(v10, 1, v2))
  {
    sub_100014CFC(v10, &qword_10003A760, &qword_10002BC38);
  }

  else
  {
    (*(v3 + 16))(v6, v10, v2);
    sub_100014CFC(v10, &qword_10003A760, &qword_10002BC38);
    v14 = *(a1 + 48);
    CheckedContinuation.resume(returning:)();
    (*(v3 + 8))(v6, v2);
  }

  sub_100014CFC(a1 + v11, &qword_10003A760, &qword_10002BC38);
  return (*(v3 + 56))(a1 + v11, 1, 1, v2);
}

uint64_t sub_100018BA0(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v30 = a2;
  v34 = a1;
  v33 = type metadata accessor for URL();
  v37 = *(v33 - 8);
  v5 = *(v37 + 64);
  __chkstk_darwin(v33);
  v31 = v3;
  v32 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v3 + 32))
  {
LABEL_12:
    sub_100014E24();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
    return a3;
  }

  result = swift_allocObject();
  *(result + 16) = 0u;
  v35 = result + 16;
  v36 = result;
  *(result + 32) = 0u;
  if (!a3)
  {
    __break(1u);
    return result;
  }

  v7 = *(v37 + 16);
  v27 = v5 + 7;
  v28 = v7;
  v29 = v37 + 16;
  v25 = &v41;
  v26 = v37 + 32;
  v8 = 1;
  v9 = &qword_10003A740;
  v24 = a3;
  v10 = v37;
  while (1)
  {
    v11 = v31;
    v12 = v32;
    v38 = *(v31 + 40);
    v13 = v33;
    v28(v32, v34, v33);
    v14 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v15 = v9;
    v16 = (v27 + v14) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    *(v17 + 16) = v11;
    (*(v10 + 32))(v17 + v14, v12, v13);
    *(v17 + v16) = v36;
    v9 = v15;
    v43 = sub_10002171C;
    v44 = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    v41 = sub_100002BBC;
    v42 = &unk_100035528;
    v18 = _Block_copy(aBlock);
    v19 = v38;

    [v19 addOperationWithBlock:v18];
    _Block_release(v18);

    sub_100014C94(v35, aBlock, v9, &unk_10002BC20);
    if (v42)
    {
      break;
    }

    sub_100014CFC(aBlock, v9, &unk_10002BC20);
    a3 = v24;
LABEL_8:
    sleep(v30);
    if (a3 == v8)
    {
      goto LABEL_13;
    }

    if (__CFADD__(v8++, 1))
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  sub_10000E838(0, &qword_10003A748, NSMetadataItem_ptr);
  v20 = swift_dynamicCast();
  a3 = v24;
  if ((v20 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_13:
  sub_100014C94(v35, aBlock, &qword_10003A740, &unk_10002BC20);
  if (v42)
  {
    sub_10000E838(0, &qword_10003A748, NSMetadataItem_ptr);
    if (swift_dynamicCast())
    {
      a3 = v39;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    sub_100014CFC(aBlock, &qword_10003A740, &unk_10002BC20);

    return 0;
  }

  return a3;
}

uint64_t sub_100018FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 56);
  v8[2] = a2;

  sub_100016D30(sub_1000217C4, v8, v4);
  v6 = v5;

  if (v6)
  {
    v9[3] = sub_10000E838(0, &qword_10003A748, NSMetadataItem_ptr);
    v9[0] = v6;
    return sub_1000217E4(v9, a3 + 16);
  }

  return result;
}

uint64_t sub_100019060(id *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000281C(&qword_10003A430, &unk_10002B930);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  if ([*a1 valueForAttribute:NSMetadataItemURLKey])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (*(&v19 + 1))
  {
    v14 = swift_dynamicCast();
    (*(v3 + 56))(v13, v14 ^ 1u, 1, v2);
  }

  else
  {
    sub_100014CFC(v20, &qword_10003A740, &unk_10002BC20);
    (*(v3 + 56))(v13, 1, 1, v2);
  }

  sub_100014C94(v13, v11, &qword_10003A430, &unk_10002B930);
  if ((*(v3 + 48))(v11, 1, v2) == 1)
  {
    sub_100014CFC(v11, &qword_10003A430, &unk_10002B930);
LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  (*(v3 + 32))(v6, v11, v2);
  v15 = static URL.== infix(_:_:)();
  (*(v3 + 8))(v6, v2);
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

  v16 = 1;
LABEL_12:
  sub_100014CFC(v13, &qword_10003A430, &unk_10002B930);
  return v16;
}

uint64_t sub_100019330(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_10000281C(&qword_100039D28, &qword_10002B900) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v3[8] = *(v6 + 64);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_10001944C, 0, 0);
}

uint64_t sub_10001944C()
{
  v46 = v0;
  if (*(v0[4] + 32))
  {
    if (qword_100039C20 != -1)
    {
      swift_once();
    }

    v1 = v0[11];
    v2 = v0[6];
    v3 = v0[7];
    v4 = v0[2];
    v5 = type metadata accessor for Logger();
    v0[12] = sub_100001F70(v5, static Logger.daemon);
    v6 = *(v3 + 16);
    v0[13] = v6;
    v0[14] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v44 = v6;
    v6(v1, v4, v2);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[11];
    v12 = v0[6];
    v11 = v0[7];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v45 = v43;
      *v13 = 136315138;
      sub_1000211DC(&qword_10003A150, &type metadata accessor for URL);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      v42 = v8;
      v17 = *(v11 + 8);
      v17(v10, v12);
      v18 = sub_100020014(v14, v16, &v45);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v7, v42, "Wait for item at %s", v13, 0xCu);
      sub_10000EA28(v43);
    }

    else
    {

      v17 = *(v11 + 8);
      v17(v10, v12);
    }

    v0[15] = v17;
    v26 = v0[10];
    v27 = v0[7];
    v28 = v0[8];
    v29 = v0[5];
    v30 = v0[6];
    v32 = v0[3];
    v31 = v0[4];
    v33 = v0[2];
    v34 = type metadata accessor for TaskPriority();
    (*(*(v34 - 8) + 56))(v29, 1, 1, v34);
    v44(v26, v33, v30);
    v35 = (*(v27 + 80) + 48) & ~*(v27 + 80);
    v36 = swift_allocObject();
    *(v36 + 2) = 0;
    *(v36 + 3) = 0;
    *(v36 + 4) = v32;
    *(v36 + 5) = v31;
    (*(v27 + 32))(&v36[v35], v26, v30);
    v37 = v32;

    v38 = sub_100022EC4(0, 0, v29, &unk_10002BC18, v36);
    v0[16] = v38;
    v39 = async function pointer to Task.value.getter[1];
    v40 = swift_task_alloc();
    v0[17] = v40;
    v41 = sub_10000281C(&qword_100039ED0, &unk_10002B940);
    *v40 = v0;
    v40[1] = sub_1000198A4;

    return Task.value.getter(v41, v38, &type metadata for () + 8, v41, &protocol self-conformance witness table for Error);
  }

  else
  {
    sub_100014E24();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
    v21 = v0[10];
    v20 = v0[11];
    v22 = v0[9];
    v23 = v0[5];

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_1000198A4()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_100019BDC;
  }

  else
  {
    v3 = sub_1000199B8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000199B8()
{
  v27 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  (*(v0 + 104))(*(v0 + 72), *(v0 + 16), *(v0 + 48));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  v8 = *(v0 + 72);
  v10 = *(v0 + 48);
  v9 = *(v0 + 56);
  if (v5)
  {
    v25 = *(v0 + 128);
    v24 = *(v0 + 120);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315138;
    sub_1000211DC(&qword_10003A150, &type metadata accessor for URL);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v24(v8, v10);
    v16 = sub_100020014(v13, v15, &v26);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "Found item at %s", v11, 0xCu);
    sub_10000EA28(v12);
  }

  else
  {
    v17 = *(v0 + 128);

    v7(v8, v10);
  }

  v19 = *(v0 + 80);
  v18 = *(v0 + 88);
  v20 = *(v0 + 72);
  v21 = *(v0 + 40);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_100019BDC()
{
  v1 = v0[16];

  v2 = v0[18];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v6 = v0[5];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100019C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for ContinuousClock();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  v10 = *(*(type metadata accessor for CocoaError.Code() - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v11 = type metadata accessor for CocoaError();
  v6[9] = v11;
  v12 = *(v11 - 8);
  v6[10] = v12;
  v13 = *(v12 + 64) + 15;
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_100019DBC, 0, 0);
}

uint64_t sub_100019DBC()
{
  if ([*(v0 + 16) isCancelled])
  {
    if (qword_100039C20 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100001F70(v1, static Logger.daemon);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Progress cancelled, stop waiting for item", v4, 2u);
    }

    v6 = *(v0 + 80);
    v5 = *(v0 + 88);
    v8 = *(v0 + 64);
    v7 = *(v0 + 72);

    static CocoaError.Code.userCancelled.getter();
    sub_100026FA8(_swiftEmptyArrayStorage);
    sub_1000211DC(&qword_100039E58, &type metadata accessor for CocoaError);
    _BridgedStoredNSError.init(_:userInfo:)();
    CocoaError._nsError.getter();
    (*(v6 + 8))(v5, v7);
    swift_willThrow();
    v11 = *(v0 + 88);
    v13 = *(v0 + 56);
    v12 = *(v0 + 64);

    v14 = *(v0 + 8);
    goto LABEL_8;
  }

  v9 = *(v0 + 24);
  v10 = sub_100018BA0(*(v0 + 32), 1u, 1uLL);
  if (v10)
  {
    v16 = *(v0 + 88);
    v18 = *(v0 + 56);
    v17 = *(v0 + 64);

    v14 = *(v0 + 8);
LABEL_8:

    return v14();
  }

  v19 = *(v0 + 56);
  static Clock<>.continuous.getter();
  v20 = swift_task_alloc();
  *(v0 + 96) = v20;
  *v20 = v0;
  v20[1] = sub_10001A0A8;
  v21 = *(v0 + 56);

  return sub_100026AF0(100000000000000000, 0, 0, 0, 1);
}

uint64_t sub_10001A0A8()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  (*(v2[6] + 8))(v2[7], v2[5]);
  if (v0)
  {
    v5 = sub_10001A4FC;
  }

  else
  {
    v5 = sub_10001A210;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10001A210()
{
  if ([*(v0 + 16) isCancelled])
  {
    if (qword_100039C20 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100001F70(v1, static Logger.daemon);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Progress cancelled, stop waiting for item", v4, 2u);
    }

    v6 = *(v0 + 80);
    v5 = *(v0 + 88);
    v8 = *(v0 + 64);
    v7 = *(v0 + 72);

    static CocoaError.Code.userCancelled.getter();
    sub_100026FA8(_swiftEmptyArrayStorage);
    sub_1000211DC(&qword_100039E58, &type metadata accessor for CocoaError);
    _BridgedStoredNSError.init(_:userInfo:)();
    CocoaError._nsError.getter();
    (*(v6 + 8))(v5, v7);
    swift_willThrow();
    goto LABEL_8;
  }

  v9 = *(v0 + 104);
  v10 = *(v0 + 24);
  v11 = sub_100018BA0(*(v0 + 32), 1u, 1uLL);
  if (v9)
  {
LABEL_8:
    v12 = *(v0 + 88);
    v14 = *(v0 + 56);
    v13 = *(v0 + 64);

    v15 = *(v0 + 8);
LABEL_9:

    return v15();
  }

  if (v11)
  {
    v17 = *(v0 + 88);
    v19 = *(v0 + 56);
    v18 = *(v0 + 64);

    v15 = *(v0 + 8);
    goto LABEL_9;
  }

  v20 = *(v0 + 56);
  static Clock<>.continuous.getter();
  v21 = swift_task_alloc();
  *(v0 + 96) = v21;
  *v21 = v0;
  v21[1] = sub_10001A0A8;
  v22 = *(v0 + 56);

  return sub_100026AF0(100000000000000000, 0, 0, 0, 1);
}

uint64_t sub_10001A4FC()
{
  v1 = v0[13];
  v2 = v0[11];
  v4 = v0[7];
  v3 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10001A57C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_10000281C(&qword_100039D28, &qword_10002B900) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v3[8] = *(v6 + 64);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_10001A68C, 0, 0);
}

uint64_t sub_10001A68C()
{
  v42 = v0;
  if (*(v0[4] + 32))
  {
    if (qword_100039C20 != -1)
    {
      swift_once();
    }

    v1 = v0[10];
    v2 = v0[6];
    v3 = v0[7];
    v4 = v0[2];
    v5 = type metadata accessor for Logger();
    v0[11] = sub_100001F70(v5, static Logger.daemon);
    v40 = *(v3 + 16);
    v40(v1, v4, v2);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[10];
    v11 = v0[6];
    v10 = v0[7];
    if (v8)
    {
      v12 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v41 = v39;
      *v12 = 136315138;
      sub_1000211DC(&qword_10003A150, &type metadata accessor for URL);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      (*(v10 + 8))(v9, v11);
      v16 = sub_100020014(v13, v15, &v41);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v6, v7, "Wait for deletion to complete %s", v12, 0xCu);
      sub_10000EA28(v39);
    }

    else
    {

      (*(v10 + 8))(v9, v11);
    }

    v24 = v0[8];
    v23 = v0[9];
    v25 = v0[6];
    v26 = v0[7];
    v28 = v0[4];
    v27 = v0[5];
    v29 = v0[2];
    v30 = v0[3];
    v31 = type metadata accessor for TaskPriority();
    (*(*(v31 - 8) + 56))(v27, 1, 1, v31);
    v40(v23, v29, v25);
    v32 = (*(v26 + 80) + 48) & ~*(v26 + 80);
    v33 = swift_allocObject();
    *(v33 + 2) = 0;
    *(v33 + 3) = 0;
    *(v33 + 4) = v30;
    *(v33 + 5) = v28;
    (*(v26 + 32))(&v33[v32], v23, v25);
    v34 = v30;

    v35 = sub_100022EC4(0, 0, v27, &unk_10002BC08, v33);
    v0[12] = v35;
    v36 = async function pointer to Task.value.getter[1];
    v37 = swift_task_alloc();
    v0[13] = v37;
    v38 = sub_10000281C(&qword_100039ED0, &unk_10002B940);
    *v37 = v0;
    v37[1] = sub_10001AABC;

    return Task.value.getter(v38, v35, &type metadata for () + 8, v38, &protocol self-conformance witness table for Error);
  }

  else
  {
    sub_100014E24();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
    v19 = v0[9];
    v18 = v0[10];
    v20 = v0[5];

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_10001AABC()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_100022018;
  }

  else
  {
    v3 = sub_10001ABD0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001ABD0()
{
  v1 = v0[11];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Bundle deletion complete", v4, 2u);
  }

  v5 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[5];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10001ACCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for ContinuousClock();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  v10 = *(*(type metadata accessor for CocoaError.Code() - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v11 = type metadata accessor for CocoaError();
  v6[9] = v11;
  v12 = *(v11 - 8);
  v6[10] = v12;
  v13 = *(v12 + 64) + 15;
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_10001AE18, 0, 0);
}