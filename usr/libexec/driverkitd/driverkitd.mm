uint64_t sub_1000015F8(void *a1)
{
  qword_100139890 = objc_retainBlock(a1);

  return _objc_release_x1();
}

uint64_t sub_10000162C()
{
  if (!qword_100139890)
  {
    return 3758097112;
  }

  (*(qword_100139890 + 16))();
  return 0;
}

uint64_t sub_10000168C(void *a1, _DWORD *a2)
{
  v3 = a1;
  v4 = [OSLaunchdJob alloc];
  v5 = +[OSLaunchdDomain systemDomain];
  v6 = [v4 initWithPlist:v3 domain:v5];

  v11 = 0;
  v7 = [v6 submitAndStart:&v11];
  v8 = v11;
  if (v7)
  {
    if ([v7 state] == 2)
    {
      v9 = 0;
      if (a2)
      {
        *a2 = [v7 pid];
      }
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000F0594(v7);
      }

      v9 = 8;
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000F0618(v8);
    }

    v9 = 72;
  }

  return v9;
}

_DWORD *(*sub_1000017E4(uint64_t a1))(_DWORD *result, uint64_t a2)
{
  if (*(a1 + 20) == 77000)
  {
    return sub_100001804;
  }

  else
  {
    return 0;
  }
}

_DWORD *sub_100001804(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = result[3];
    result = sub_10000162C();
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t sub_100001860(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  if (a1[5] == 77000)
  {
    if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
    {
      *(a2 + 32) = -304;
      *(a2 + 24) = NDR_record;
    }

    else
    {
      v4 = a1[3];
      *(a2 + 32) = sub_10000162C();
    }

    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 32) = -303;
  }

  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  os_transaction_create();
  sub_100001944();
  swift_unknownObjectRelease();
  dispatch_main();
}

uint64_t sub_100002450(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002470(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_1000024C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = os_log_copy_decorated_message();
  if (v4)
  {
    v5 = v4;
    v6 = String.init(cString:)();
    v8 = v7;
    v9 = a3[3];
    v10 = a3[4];
    sub_100003C4C(a3, v9);
    sub_1000EBF18(v6, v8, v9, v10);

    free(v5);
  }
}

uint64_t sub_100002568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

uint64_t sub_1000025C8(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  *(a1 + 16) = v2;

  sub_100002D14();
  swift_beginAccess();
  v5 = *(v2 + 56);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 56) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1000311E4(0, v5[2] + 1, 1, v5);
    *(v2 + 56) = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1000311E4((v7 > 1), v8 + 1, 1, v5);
  }

  v11 = sub_100003CDC(&qword_100133C60, &qword_1000F32B8);
  v12 = &off_100129608;
  *&v10 = a1;
  v5[2] = v8 + 1;
  sub_100009F34(&v10, &v5[5 * v8 + 4]);
  *(v2 + 56) = v5;
  return swift_endAccess();
}

uint64_t sub_1000026EC(uint64_t a1)
{
  v3 = *(a1 + 16);
  *(a1 + 16) = v1;

  swift_beginAccess();
  v4 = *(v1 + 56);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 56) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1000311E4(0, v4[2] + 1, 1, v4);
    *(v1 + 56) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1000311E4((v6 > 1), v7 + 1, 1, v4);
  }

  v10 = type metadata accessor for ApplicationRequestSource();
  v11 = &off_100129CC0;
  *&v9 = a1;
  v4[2] = v7 + 1;
  sub_100009F34(&v9, &v4[5 * v7 + 4]);
  *(v1 + 56) = v4;
  return swift_endAccess();
}

uint64_t sub_1000027FC(void *a1)
{
  v3 = *((swift_isaMask & *a1) + 0x60);
  v4 = *(a1 + v3);
  *(a1 + v3) = v1;

  swift_beginAccess();
  v5 = *(v1 + 56);
  v6 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 56) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1000311E4(0, v5[2] + 1, 1, v5);
    *(v1 + 56) = v5;
  }

  v9 = v5[2];
  v8 = v5[3];
  if (v9 >= v8 >> 1)
  {
    v5 = sub_1000311E4((v8 > 1), v9 + 1, 1, v5);
  }

  v12 = sub_100003CDC(&qword_100133C68, &unk_1000F32C0);
  v13 = &off_1001295F8;
  *&v11 = v6;
  v5[2] = v9 + 1;
  sub_100009F34(&v11, &v5[5 * v9 + 4]);
  *(v1 + 56) = v5;
  return swift_endAccess();
}

uint64_t sub_10000293C(uint64_t a1)
{
  v3 = *(a1 + 64);
  *(a1 + 64) = v1;

  swift_beginAccess();
  v4 = *(v1 + 56);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 56) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1000311E4(0, v4[2] + 1, 1, v4);
    *(v1 + 56) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1000311E4((v6 > 1), v7 + 1, 1, v4);
  }

  v10 = type metadata accessor for RealApprovalsXPCPublisher();
  v11 = &off_10012E4E8;
  *&v9 = a1;
  v4[2] = v7 + 1;
  sub_100009F34(&v9, &v4[5 * v7 + 4]);
  *(v1 + 56) = v4;
  return swift_endAccess();
}

uint64_t sub_100002A4C(int a1)
{
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v13 = *(v3 - 8);
  v14 = v3;
  v4 = *(v13 + 64);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  if (a1)
  {
    *(v1 + 40) = a1;
    v12 = sub_100009FEC(0, &qword_100133C58, OS_dispatch_queue_ptr);
    static DispatchQoS.userInitiated.getter();
    v15 = _swiftEmptyArrayStorage;
    sub_10000A060(&qword_100133C80, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_100003CDC(&qword_100133C88, &qword_1000F88C0);
    sub_10000A0A8(&qword_100133C90, &qword_100133C88, &qword_1000F88C0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v13 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v14);
    *(v1 + 32) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    return v1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_100002D14()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v7 = *(v24 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v24);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009FEC(0, &qword_100133C98, OS_dispatch_source_ptr);
  v11 = *(v0 + 40);
  v12 = *(v0 + 32);
  v13 = static OS_dispatch_source.makeMachReceiveSource(port:queue:)();
  v14 = *(v1 + 24);
  *(v1 + 24) = v13;
  swift_unknownObjectRelease();
  swift_getObjectType();
  v29 = sub_10000A034;
  v30 = v1;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v22[2] = &v27;
  v27 = sub_10006CCB0;
  v28 = &unk_100126C98;
  v15 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  static DispatchQoS.unspecified.getter();
  sub_100003174();
  OS_dispatch_source.setCancelHandler(qos:flags:handler:)();
  _Block_release(v15);
  swift_unknownObjectRelease();
  v16 = *(v3 + 8);
  v22[3] = v3 + 8;
  v23 = v2;
  v16(v6, v2);
  v17 = v24;
  v18 = *(v7 + 8);
  v22[1] = v7 + 8;
  v18(v10, v24);

  if (*(v1 + 24))
  {
    v19 = *(v1 + 24);
    swift_getObjectType();
    v29 = sub_10000A050;
    v30 = v1;
    aBlock = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_10006CCB0;
    v28 = &unk_100126CC0;
    v20 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();
    static DispatchQoS.unspecified.getter();
    sub_100003174();
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v20);
    swift_unknownObjectRelease();
    v16(v6, v23);
    v18(v10, v17);

    v29 = sub_10000A058;
    v30 = v1;
    aBlock = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_10006CCB0;
    v28 = &unk_100126CE8;
    v21 = _Block_copy(&aBlock);

    sub_1000015F8(v21);
    _Block_release(v21);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000030F8(uint64_t a1, uint64_t a2, uint64_t (*a3)())
{
  if (*(a1 + 24))
  {
    objc_opt_self();
    a1 = swift_dynamicCastObjCClassUnconditional();
    a3 = sub_10006CCAC;
    a2 = 36;
  }

  else
  {
    __break(1u);
  }

  return _dispatch_mig_server(a1, a2, a3);
}

uint64_t sub_100003174()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_10000A060(&unk_100133CA0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003CDC(&unk_100137370, &unk_1000F32E0);
  sub_10000A0A8(&qword_100133CB0, &unk_100137370, &unk_1000F32E0);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10000324C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v4 = type metadata accessor for DriverKitDaemon();
    v5 = &off_10012A0B8;
    *&v3 = v1;
    sub_100009F34(&v3, v6);
    v2 = *sub_100003C4C(v6, v6[3]);

    sub_1000907D8();
    return sub_100003C90(v6);
  }

  return result;
}

void *sub_1000032C0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = a2;
  v25 = a3;
  v26 = a1;
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + *((swift_isaMask & *v3) + 0x60)) = 0;
  sub_100009FEC(0, &qword_100133C58, OS_dispatch_queue_ptr);
  (*(v10 + 104))(v13, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v9);
  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_10000A060(&qword_100133C80, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100003CDC(&qword_100133C88, &qword_1000F88C0);
  sub_10000A0A8(&qword_100133C90, &qword_100133C88, &qword_1000F88C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v3 + *((swift_isaMask & *v3) + 0x70)) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v14 = v26;
  *(v4 + *((swift_isaMask & *v4) + 0x68)) = v26;
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 interfaceWithProtocol:{&OBJC_PROTOCOL____TtP10driverkitd29DriverKitDaemonClientProtocol_, v24, v25}];
  *(v4 + *((swift_isaMask & *v4) + 0x78)) = v17;
  v18 = sub_100003CDC(&qword_100133C68, &unk_1000F32C0);
  v27.receiver = v4;
  v27.super_class = v18;
  v19 = objc_msgSendSuper2(&v27, "init");
  v20 = *((swift_isaMask & *v19) + 0x68);
  v21 = *(v19 + v20);
  v22 = v19;
  [v21 setDelegate:v22];
  [*(v19 + v20) _setQueue:*(v22 + *((swift_isaMask & *v22) + 0x70))];

  return v22;
}

uint64_t sub_100003690(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10000370C(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100003790@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000037E4()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100003824()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10000387C()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_1000038F0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t sub_10000393C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

Swift::Int sub_100003994()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

_DWORD *sub_100003A10@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_100003A24(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003AAC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_100003B18(uint64_t a1)
{
  v2 = sub_10000A060(&qword_100133D78, type metadata accessor for FileAttributeKey);
  v3 = sub_10000A060(&unk_100133D80, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003BD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100003C20@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

void *sub_100003C4C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100003C90(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100003CDC(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100003D24()
{
  result = qword_100135FD0;
  if (!qword_100135FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135FD0);
  }

  return result;
}

double sub_100003D78(_OWORD *a1)
{
  result = 0.0;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_100003DA0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_100003DF0(uint64_t a1)
{
  v2 = sub_10000A060(&qword_100133D68, type metadata accessor for URLResourceKey);
  v3 = sub_10000A060(&qword_100133D70, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v33[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DriverKitDaemonSideEffects();
  v36[3] = v13;
  v36[4] = &off_10012A108;
  v36[0] = a3;
  *(a4 + 64) = _swiftEmptyArrayStorage;
  *(a4 + 72) = 0;
  *(a4 + 88) = 0;
  *(a4 + 96) = 514;
  *(a4 + 56) = a1;
  sub_10000A990(v36, a4 + 16);
  (*(v9 + 16))(v12, a2, v8);
  sub_10000A990(v36, v34);
  v14 = v35;
  v15 = sub_100003DA0(v34, v35);
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v33[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v18;
  v33[3] = v13;
  v33[4] = &off_10012A108;
  v33[0] = v20;
  v21 = type metadata accessor for ApplicationCache(0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  v25 = sub_100003DA0(v33, v13);
  v26 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = (&v33[-1] - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = *v28;
  v24[5] = v13;
  v24[6] = &off_10012A108;
  v24[2] = v30;
  *(v24 + OBJC_IVAR____TtC10driverkitd16ApplicationCache__cached) = 0;
  (*(v9 + 32))(v24 + OBJC_IVAR____TtC10driverkitd16ApplicationCache_applicationCachePath, v12, v8);
  sub_100003C90(v33);
  (*(v9 + 8))(a2, v8);
  sub_100003C90(v36);
  sub_100003C90(v34);
  *(a4 + 80) = v24;
  return a4;
}

uint64_t sub_1000041B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DriverKitDaemonSideEffects();
  v18 = &off_10012A108;
  *(a4 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_applicationManager) = 0;
  *(a4 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_activeDriversStateManager) = 0;
  v17 = v8;
  *&v16 = a3;
  *(a4 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_subscribers) = _swiftEmptyArrayStorage;
  v9 = OBJC_IVAR____TtC10driverkitd16DriverBinManager_recursiveLock;
  *(a4 + v9) = [objc_allocWithZone(NSRecursiveLock) init];
  v10 = OBJC_IVAR____TtC10driverkitd16DriverBinManager____lazy_storage___infoLocation;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v13(a4 + v10, 1, 1, v11);
  v13(a4 + OBJC_IVAR____TtC10driverkitd16DriverBinManager____lazy_storage___nextInfoLocation, 1, 1, v11);
  v14 = (a4 + OBJC_IVAR____TtC10driverkitd16DriverBinManager__driverBinInfo);
  *v14 = 0;
  v14[1] = 0;
  v14[2] = 0;
  *(a4 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_stateManagerQueue) = a1;
  sub_100009F34(&v16, a4 + 16);
  (*(v12 + 32))(a4 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_directory, a2, v11);
  return a4;
}

uint64_t sub_100004354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DriverKitDaemonSideEffects();
  v14[4] = &off_10012A108;
  *(a4 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_driverBinManager) = 0;
  *(a4 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_kernelStateManager) = 0;
  v14[3] = v8;
  v14[0] = a3;
  *(a4 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_applicationManager) = 0;
  *(a4 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_subscribers) = _swiftEmptyArrayStorage;
  v9 = (a4 + OBJC_IVAR____TtC10driverkitd15ApprovalManager__approvalDB);
  *v9 = 0;
  v9[1] = 0;
  *(a4 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_stateManagerQueue) = a1;
  v10 = OBJC_IVAR____TtC10driverkitd15ApprovalManager_databasePath;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  (*(v12 + 16))(a4 + v10, a2, v11);
  sub_10000A990(v14, a4 + 16);
  (*(v12 + 8))(a2, v11);
  sub_100003C90(v14);
  *(a4 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_requests) = _swiftEmptyArrayStorage;
  return a4;
}

uint64_t sub_1000044BC(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = a2[8];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 32);
    while (*v6 != a1)
    {
      v6 += 2;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRetain();
    _StringGuts.grow(_:)(33);

    v25 = *a1;
    sub_100003CDC(&qword_100133CD8, &qword_1000F3308);
    v26._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v26);

    v27._countAndFlagsBits = 544175136;
    v27._object = 0xE400000000000000;
    String.append(_:)(v27);
    v35 = *a2;
    sub_100003CDC(&qword_100133D00, &qword_1000F3330);
    v28._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v28);

    while (1)
    {
LABEL_14:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

LABEL_5:
  if (a1 == a2)
  {
    goto LABEL_14;
  }

  v7 = a1[7];
  v8 = a2[7];
  sub_100009FEC(0, &qword_100133C58, OS_dispatch_queue_ptr);
  v9 = v7;
  v10 = v8;
  v11 = static NSObject.== infix(_:_:)();

  if ((v11 & 1) == 0)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v12 = a2[8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a2[8] = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_1000310B0(0, v12[2] + 1, 1, v12);
    a2[8] = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_1000310B0((v14 > 1), v15 + 1, 1, v12);
  }

  v12[2] = v15 + 1;
  v16 = &v12[2 * v15];
  v16[4] = a1;
  v16[5] = &off_1001271C8;
  a2[8] = v12;
  swift_endAccess();
  v17 = swift_allocObject();
  *(v17 + 16) = _swiftEmptyArrayStorage;
  v18 = swift_allocObject();
  *(v18 + 16) = &_swiftEmptySetSingleton;
  v19 = swift_allocObject();
  *(v19 + 16) = &_swiftEmptySetSingleton;
  type metadata accessor for StateManagerWrapper();
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = &off_10012A4F0;

  v21 = sub_1000C5A64(v20, v18, v19, v17);

  if ((v21 & 1) == 0)
  {

    _StringGuts.grow(_:)(69);
    v29._countAndFlagsBits = 0xD00000000000002FLL;
    v29._object = 0x8000000100103D00;
    String.append(_:)(v29);
    v30 = *a1;
    sub_100003CDC(&qword_100133CD8, &qword_1000F3308);
    v31._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v31);

    v32._countAndFlagsBits = 544175136;
    v32._object = 0xE400000000000000;
    String.append(_:)(v32);
    v36 = *a2;
    sub_100003CDC(&qword_100133D00, &qword_1000F3330);
    v33._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v33);

    v34._countAndFlagsBits = 0x6373627573207327;
    v34._object = 0xEE00737265626972;
    String.append(_:)(v34);
    goto LABEL_14;
  }

  swift_beginAccess();
  v22 = *(v17 + 16);

  sub_10008DD24(v23);
}

uint64_t sub_100004A44(uint64_t *a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  v12 = a2[8];
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = (v12 + 32);
    while (*v14 != a1)
    {
      v14 += 2;
      if (!--v13)
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRetain();
    _StringGuts.grow(_:)(33);

    v33 = *a1;
    sub_100003CDC(a5, a6);
    v34._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v34);

    v35._countAndFlagsBits = 544175136;
    v35._object = 0xE400000000000000;
    String.append(_:)(v35);
    v43 = *a2;
    sub_100003CDC(&qword_100133CD8, &qword_1000F3308);
    v36._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v36);

    while (1)
    {
LABEL_14:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

LABEL_5:
  if (a1 == a2)
  {
    goto LABEL_14;
  }

  v15 = *(a1 + *a3);
  v16 = a2[7];
  sub_100009FEC(0, &qword_100133C58, OS_dispatch_queue_ptr);
  v17 = v15;
  v18 = v16;
  v19 = static NSObject.== infix(_:_:)();

  if ((v19 & 1) == 0)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v20 = a2[8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a2[8] = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_1000310B0(0, v20[2] + 1, 1, v20);
    a2[8] = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = sub_1000310B0((v22 > 1), v23 + 1, 1, v20);
  }

  v20[2] = v23 + 1;
  v24 = &v20[2 * v23];
  v24[4] = a1;
  v24[5] = a4;
  a2[8] = v20;
  swift_endAccess();
  v25 = swift_allocObject();
  *(v25 + 16) = _swiftEmptyArrayStorage;
  v26 = swift_allocObject();
  *(v26 + 16) = &_swiftEmptySetSingleton;
  v27 = swift_allocObject();
  *(v27 + 16) = &_swiftEmptySetSingleton;
  type metadata accessor for StateManagerWrapper();
  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  *(v28 + 24) = &off_1001271C8;

  v29 = sub_1000C5A64(v28, v26, v27, v25);

  if ((v29 & 1) == 0)
  {

    _StringGuts.grow(_:)(69);
    v37._countAndFlagsBits = 0xD00000000000002FLL;
    v37._object = 0x8000000100103D00;
    String.append(_:)(v37);
    v38 = *a1;
    sub_100003CDC(a5, a6);
    v39._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v39);

    v40._countAndFlagsBits = 544175136;
    v40._object = 0xE400000000000000;
    String.append(_:)(v40);
    v44 = *a2;
    sub_100003CDC(&qword_100133CD8, &qword_1000F3308);
    v41._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v41);

    v42._countAndFlagsBits = 0x6373627573207327;
    v42._object = 0xEE00737265626972;
    String.append(_:)(v42);
    goto LABEL_14;
  }

  swift_beginAccess();
  v30 = *(v25 + 16);

  sub_10008DD24(v31);
}

uint64_t sub_100004FD0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  swift_beginAccess();
  v10 = a2[8];
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = (v10 + 32);
    while (*v12 != a1)
    {
      v12 += 2;
      if (!--v11)
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRetain();
    _StringGuts.grow(_:)(33);

    v31 = *a1;
    sub_100003CDC(&qword_100133CE0, &qword_1000F3310);
    v32._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v32);

    v33._countAndFlagsBits = 544175136;
    v33._object = 0xE400000000000000;
    String.append(_:)(v33);
    v41 = *a2;
    sub_100003CDC(a4, a5);
    v34._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v34);

    while (1)
    {
LABEL_14:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

LABEL_5:
  if (a1 == a2)
  {
    goto LABEL_14;
  }

  v13 = a1[13];
  v14 = a2[7];
  sub_100009FEC(0, &qword_100133C58, OS_dispatch_queue_ptr);
  v15 = v13;
  v16 = v14;
  v17 = static NSObject.== infix(_:_:)();

  if ((v17 & 1) == 0)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v18 = a2[8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a2[8] = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_1000310B0(0, v18[2] + 1, 1, v18);
    a2[8] = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = sub_1000310B0((v20 > 1), v21 + 1, 1, v18);
  }

  v18[2] = v21 + 1;
  v22 = &v18[2 * v21];
  v22[4] = a1;
  v22[5] = &off_100126EF0;
  a2[8] = v18;
  swift_endAccess();
  v23 = swift_allocObject();
  *(v23 + 16) = _swiftEmptyArrayStorage;
  v24 = swift_allocObject();
  *(v24 + 16) = &_swiftEmptySetSingleton;
  v25 = swift_allocObject();
  *(v25 + 16) = &_swiftEmptySetSingleton;
  type metadata accessor for StateManagerWrapper();
  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = a3;

  v27 = sub_1000C5A64(v26, v24, v25, v23);

  if ((v27 & 1) == 0)
  {

    _StringGuts.grow(_:)(69);
    v35._countAndFlagsBits = 0xD00000000000002FLL;
    v35._object = 0x8000000100103D00;
    String.append(_:)(v35);
    v36 = *a1;
    sub_100003CDC(&qword_100133CE0, &qword_1000F3310);
    v37._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v37);

    v38._countAndFlagsBits = 544175136;
    v38._object = 0xE400000000000000;
    String.append(_:)(v38);
    v42 = *a2;
    sub_100003CDC(a4, a5);
    v39._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v39);

    v40._countAndFlagsBits = 0x6373627573207327;
    v40._object = 0xEE00737265626972;
    String.append(_:)(v40);
    goto LABEL_14;
  }

  swift_beginAccess();
  v28 = *(v23 + 16);

  sub_10008DD24(v29);
}

uint64_t sub_100005554(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = a2[8];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 32);
    while (*v6 != a1)
    {
      v6 += 2;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRetain();
    _StringGuts.grow(_:)(33);

    v25 = *a1;
    sub_100003CDC(&qword_100133CD0, &qword_1000F3300);
    v26._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v26);

    v27._countAndFlagsBits = 544175136;
    v27._object = 0xE400000000000000;
    String.append(_:)(v27);
    v35 = *a2;
    sub_100003CDC(&qword_100133CD8, &qword_1000F3308);
    v28._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v28);

    while (1)
    {
LABEL_14:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

LABEL_5:
  if (a1 == a2)
  {
    goto LABEL_14;
  }

  v7 = a1[9];
  v8 = a2[7];
  sub_100009FEC(0, &qword_100133C58, OS_dispatch_queue_ptr);
  v9 = v7;
  v10 = v8;
  v11 = static NSObject.== infix(_:_:)();

  if ((v11 & 1) == 0)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v12 = a2[8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a2[8] = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_1000310B0(0, v12[2] + 1, 1, v12);
    a2[8] = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_1000310B0((v14 > 1), v15 + 1, 1, v12);
  }

  v12[2] = v15 + 1;
  v16 = &v12[2 * v15];
  v16[4] = a1;
  v16[5] = &off_10012E178;
  a2[8] = v12;
  swift_endAccess();
  v17 = swift_allocObject();
  *(v17 + 16) = _swiftEmptyArrayStorage;
  v18 = swift_allocObject();
  *(v18 + 16) = &_swiftEmptySetSingleton;
  v19 = swift_allocObject();
  *(v19 + 16) = &_swiftEmptySetSingleton;
  type metadata accessor for StateManagerWrapper();
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = &off_1001271C8;

  v21 = sub_1000C5A64(v20, v18, v19, v17);

  if ((v21 & 1) == 0)
  {

    _StringGuts.grow(_:)(69);
    v29._countAndFlagsBits = 0xD00000000000002FLL;
    v29._object = 0x8000000100103D00;
    String.append(_:)(v29);
    v30 = *a1;
    sub_100003CDC(&qword_100133CD0, &qword_1000F3300);
    v31._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v31);

    v32._countAndFlagsBits = 544175136;
    v32._object = 0xE400000000000000;
    String.append(_:)(v32);
    v36 = *a2;
    sub_100003CDC(&qword_100133CD8, &qword_1000F3308);
    v33._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v33);

    v34._countAndFlagsBits = 0x6373627573207327;
    v34._object = 0xEE00737265626972;
    String.append(_:)(v34);
    goto LABEL_14;
  }

  swift_beginAccess();
  v22 = *(v17 + 16);

  sub_10008DD24(v23);
}

uint64_t sub_100005ADC(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = a2[2];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 32);
    while (*v6 != a1)
    {
      v6 += 2;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRetain();
    _StringGuts.grow(_:)(33);

    v25 = *a1;
    sub_100003CDC(&qword_100133CF0, &qword_1000F3320);
    v26._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v26);

    v27._countAndFlagsBits = 544175136;
    v27._object = 0xE400000000000000;
    String.append(_:)(v27);
    v35 = *a2;
    sub_100003CDC(&qword_100133CF8, &qword_1000F3328);
    v28._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v28);

    while (1)
    {
LABEL_14:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

LABEL_5:
  if (a1 == a2)
  {
    goto LABEL_14;
  }

  v7 = *(a1 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_stateManagerQueue);
  v8 = a2[8];
  sub_100009FEC(0, &qword_100133C58, OS_dispatch_queue_ptr);
  v9 = v7;
  v10 = v8;
  v11 = static NSObject.== infix(_:_:)();

  if ((v11 & 1) == 0)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v12 = a2[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a2[2] = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_1000310B0(0, v12[2] + 1, 1, v12);
    a2[2] = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_1000310B0((v14 > 1), v15 + 1, 1, v12);
  }

  v12[2] = v15 + 1;
  v16 = &v12[2 * v15];
  v16[4] = a1;
  v16[5] = &off_100127AD8;
  a2[2] = v12;
  swift_endAccess();
  v17 = swift_allocObject();
  *(v17 + 16) = _swiftEmptyArrayStorage;
  v18 = swift_allocObject();
  *(v18 + 16) = &_swiftEmptySetSingleton;
  v19 = swift_allocObject();
  *(v19 + 16) = &_swiftEmptySetSingleton;
  type metadata accessor for StateManagerWrapper();
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = &off_1001273C8;

  v21 = sub_1000C5A64(v20, v18, v19, v17);

  if ((v21 & 1) == 0)
  {

    _StringGuts.grow(_:)(69);
    v29._countAndFlagsBits = 0xD00000000000002FLL;
    v29._object = 0x8000000100103D00;
    String.append(_:)(v29);
    v30 = *a1;
    sub_100003CDC(&qword_100133CF0, &qword_1000F3320);
    v31._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v31);

    v32._countAndFlagsBits = 544175136;
    v32._object = 0xE400000000000000;
    String.append(_:)(v32);
    v36 = *a2;
    sub_100003CDC(&qword_100133CF8, &qword_1000F3328);
    v33._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v33);

    v34._countAndFlagsBits = 0x6373627573207327;
    v34._object = 0xEE00737265626972;
    String.append(_:)(v34);
    goto LABEL_14;
  }

  swift_beginAccess();
  v22 = *(v17 + 16);

  sub_10008DD24(v23);
}

uint64_t sub_100006070(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = a2[2];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 32);
    while (*v6 != a1)
    {
      v6 += 2;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRetain();
    _StringGuts.grow(_:)(33);

    v25 = *a1;
    sub_100003CDC(&qword_100133CE0, &qword_1000F3310);
    v26._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v26);

    v27._countAndFlagsBits = 544175136;
    v27._object = 0xE400000000000000;
    String.append(_:)(v27);
    v35 = *a2;
    sub_100003CDC(&qword_100133CF8, &qword_1000F3328);
    v28._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v28);

    while (1)
    {
LABEL_14:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

LABEL_5:
  if (a1 == a2)
  {
    goto LABEL_14;
  }

  v7 = a1[13];
  v8 = a2[8];
  sub_100009FEC(0, &qword_100133C58, OS_dispatch_queue_ptr);
  v9 = v7;
  v10 = v8;
  v11 = static NSObject.== infix(_:_:)();

  if ((v11 & 1) == 0)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v12 = a2[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a2[2] = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_1000310B0(0, v12[2] + 1, 1, v12);
    a2[2] = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_1000310B0((v14 > 1), v15 + 1, 1, v12);
  }

  v12[2] = v15 + 1;
  v16 = &v12[2 * v15];
  v16[4] = a1;
  v16[5] = &off_100126EF0;
  a2[2] = v12;
  swift_endAccess();
  v17 = swift_allocObject();
  *(v17 + 16) = _swiftEmptyArrayStorage;
  v18 = swift_allocObject();
  *(v18 + 16) = &_swiftEmptySetSingleton;
  v19 = swift_allocObject();
  *(v19 + 16) = &_swiftEmptySetSingleton;
  type metadata accessor for StateManagerWrapper();
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = &off_1001273C8;

  v21 = sub_1000C5A64(v20, v18, v19, v17);

  if ((v21 & 1) == 0)
  {

    _StringGuts.grow(_:)(69);
    v29._countAndFlagsBits = 0xD00000000000002FLL;
    v29._object = 0x8000000100103D00;
    String.append(_:)(v29);
    v30 = *a1;
    sub_100003CDC(&qword_100133CE0, &qword_1000F3310);
    v31._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v31);

    v32._countAndFlagsBits = 544175136;
    v32._object = 0xE400000000000000;
    String.append(_:)(v32);
    v36 = *a2;
    sub_100003CDC(&qword_100133CF8, &qword_1000F3328);
    v33._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v33);

    v34._countAndFlagsBits = 0x6373627573207327;
    v34._object = 0xEE00737265626972;
    String.append(_:)(v34);
    goto LABEL_14;
  }

  swift_beginAccess();
  v22 = *(v17 + 16);

  sub_10008DD24(v23);
}

uint64_t sub_1000065F8(uint64_t *a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC10driverkitd16DriverBinManager_subscribers;
  swift_beginAccess();
  v5 = *(a2 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32);
    while (*v7 != a1)
    {
      v7 += 2;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRetain();
    _StringGuts.grow(_:)(33);

    v26 = *a1;
    sub_100003CDC(&qword_100133CE8, &qword_1000F3318);
    v27._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v27);

    v28._countAndFlagsBits = 544175136;
    v28._object = 0xE400000000000000;
    String.append(_:)(v28);
    v36 = *a2;
    sub_100003CDC(&qword_100133CF0, &qword_1000F3320);
    v29._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v29);

    while (1)
    {
LABEL_14:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

LABEL_5:
  if (a1 == a2)
  {
    goto LABEL_14;
  }

  v8 = *(a1 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_stateManagerQueue);
  v9 = *(a2 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_stateManagerQueue);
  sub_100009FEC(0, &qword_100133C58, OS_dispatch_queue_ptr);
  v10 = v8;
  v11 = v9;
  v12 = static NSObject.== infix(_:_:)();

  if ((v12 & 1) == 0)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v13 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v4) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_1000310B0(0, v13[2] + 1, 1, v13);
    *(a2 + v4) = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1000310B0((v15 > 1), v16 + 1, 1, v13);
  }

  v13[2] = v16 + 1;
  v17 = &v13[2 * v16];
  v17[4] = a1;
  v17[5] = &off_100129F40;
  *(a2 + v4) = v13;
  swift_endAccess();
  v18 = swift_allocObject();
  *(v18 + 16) = _swiftEmptyArrayStorage;
  v19 = swift_allocObject();
  *(v19 + 16) = &_swiftEmptySetSingleton;
  v20 = swift_allocObject();
  *(v20 + 16) = &_swiftEmptySetSingleton;
  type metadata accessor for StateManagerWrapper();
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = &off_100127AD8;

  v22 = sub_1000C5A64(v21, v19, v20, v18);

  if ((v22 & 1) == 0)
  {

    _StringGuts.grow(_:)(69);
    v30._countAndFlagsBits = 0xD00000000000002FLL;
    v30._object = 0x8000000100103D00;
    String.append(_:)(v30);
    v31 = *a1;
    sub_100003CDC(&qword_100133CE8, &qword_1000F3318);
    v32._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v32);

    v33._countAndFlagsBits = 544175136;
    v33._object = 0xE400000000000000;
    String.append(_:)(v33);
    v37 = *a2;
    sub_100003CDC(&qword_100133CF0, &qword_1000F3320);
    v34._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v34);

    v35._countAndFlagsBits = 0x6373627573207327;
    v35._object = 0xEE00737265626972;
    String.append(_:)(v35);
    goto LABEL_14;
  }

  swift_beginAccess();
  v23 = *(v18 + 16);

  sub_10008DD24(v24);
}

uint64_t sub_100006BA4(uint64_t *a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC10driverkitd16DriverBinManager_subscribers;
  swift_beginAccess();
  v5 = *(a2 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32);
    while (*v7 != a1)
    {
      v7 += 2;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRetain();
    _StringGuts.grow(_:)(33);

    v26 = *a1;
    sub_100003CDC(&qword_100133CE0, &qword_1000F3310);
    v27._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v27);

    v28._countAndFlagsBits = 544175136;
    v28._object = 0xE400000000000000;
    String.append(_:)(v28);
    v36 = *a2;
    sub_100003CDC(&qword_100133CF0, &qword_1000F3320);
    v29._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v29);

    while (1)
    {
LABEL_14:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

LABEL_5:
  if (a1 == a2)
  {
    goto LABEL_14;
  }

  v8 = a1[13];
  v9 = *(a2 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_stateManagerQueue);
  sub_100009FEC(0, &qword_100133C58, OS_dispatch_queue_ptr);
  v10 = v8;
  v11 = v9;
  v12 = static NSObject.== infix(_:_:)();

  if ((v12 & 1) == 0)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v13 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v4) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_1000310B0(0, v13[2] + 1, 1, v13);
    *(a2 + v4) = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1000310B0((v15 > 1), v16 + 1, 1, v13);
  }

  v13[2] = v16 + 1;
  v17 = &v13[2 * v16];
  v17[4] = a1;
  v17[5] = &off_100126EF0;
  *(a2 + v4) = v13;
  swift_endAccess();
  v18 = swift_allocObject();
  *(v18 + 16) = _swiftEmptyArrayStorage;
  v19 = swift_allocObject();
  *(v19 + 16) = &_swiftEmptySetSingleton;
  v20 = swift_allocObject();
  *(v20 + 16) = &_swiftEmptySetSingleton;
  type metadata accessor for StateManagerWrapper();
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = &off_100127AD8;

  v22 = sub_1000C5A64(v21, v19, v20, v18);

  if ((v22 & 1) == 0)
  {

    _StringGuts.grow(_:)(69);
    v30._countAndFlagsBits = 0xD00000000000002FLL;
    v30._object = 0x8000000100103D00;
    String.append(_:)(v30);
    v31 = *a1;
    sub_100003CDC(&qword_100133CE0, &qword_1000F3310);
    v32._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v32);

    v33._countAndFlagsBits = 544175136;
    v33._object = 0xE400000000000000;
    String.append(_:)(v33);
    v37 = *a2;
    sub_100003CDC(&qword_100133CF0, &qword_1000F3320);
    v34._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v34);

    v35._countAndFlagsBits = 0x6373627573207327;
    v35._object = 0xEE00737265626972;
    String.append(_:)(v35);
    goto LABEL_14;
  }

  swift_beginAccess();
  v23 = *(v18 + 16);

  sub_10008DD24(v24);
}

uint64_t sub_100007144(uint64_t *a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC10driverkitd16DriverBinManager_subscribers;
  swift_beginAccess();
  v5 = *(a2 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32);
    while (*v7 != a1)
    {
      v7 += 2;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRetain();
    _StringGuts.grow(_:)(33);

    v26 = *a1;
    sub_100003CDC(&qword_100133CD0, &qword_1000F3300);
    v27._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v27);

    v28._countAndFlagsBits = 544175136;
    v28._object = 0xE400000000000000;
    String.append(_:)(v28);
    v36 = *a2;
    sub_100003CDC(&qword_100133CF0, &qword_1000F3320);
    v29._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v29);

    while (1)
    {
LABEL_14:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

LABEL_5:
  if (a1 == a2)
  {
    goto LABEL_14;
  }

  v8 = a1[9];
  v9 = *(a2 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_stateManagerQueue);
  sub_100009FEC(0, &qword_100133C58, OS_dispatch_queue_ptr);
  v10 = v8;
  v11 = v9;
  v12 = static NSObject.== infix(_:_:)();

  if ((v12 & 1) == 0)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v13 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v4) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_1000310B0(0, v13[2] + 1, 1, v13);
    *(a2 + v4) = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1000310B0((v15 > 1), v16 + 1, 1, v13);
  }

  v13[2] = v16 + 1;
  v17 = &v13[2 * v16];
  v17[4] = a1;
  v17[5] = &off_10012E178;
  *(a2 + v4) = v13;
  swift_endAccess();
  v18 = swift_allocObject();
  *(v18 + 16) = _swiftEmptyArrayStorage;
  v19 = swift_allocObject();
  *(v19 + 16) = &_swiftEmptySetSingleton;
  v20 = swift_allocObject();
  *(v20 + 16) = &_swiftEmptySetSingleton;
  type metadata accessor for StateManagerWrapper();
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = &off_100127AD8;

  v22 = sub_1000C5A64(v21, v19, v20, v18);

  if ((v22 & 1) == 0)
  {

    _StringGuts.grow(_:)(69);
    v30._countAndFlagsBits = 0xD00000000000002FLL;
    v30._object = 0x8000000100103D00;
    String.append(_:)(v30);
    v31 = *a1;
    sub_100003CDC(&qword_100133CD0, &qword_1000F3300);
    v32._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v32);

    v33._countAndFlagsBits = 544175136;
    v33._object = 0xE400000000000000;
    String.append(_:)(v33);
    v37 = *a2;
    sub_100003CDC(&qword_100133CF0, &qword_1000F3320);
    v34._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v34);

    v35._countAndFlagsBits = 0x6373627573207327;
    v35._object = 0xEE00737265626972;
    String.append(_:)(v35);
    goto LABEL_14;
  }

  swift_beginAccess();
  v23 = *(v18 + 16);

  sub_10008DD24(v24);
}

uint64_t sub_1000076E4(uint64_t *a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC10driverkitd15ApprovalManager_subscribers;
  swift_beginAccess();
  v5 = *(a2 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32);
    while (*v7 != a1)
    {
      v7 += 2;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRetain();
    _StringGuts.grow(_:)(33);

    v26 = *a1;
    sub_100003CDC(&qword_100133CE0, &qword_1000F3310);
    v27._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v27);

    v28._countAndFlagsBits = 544175136;
    v28._object = 0xE400000000000000;
    String.append(_:)(v28);
    v36 = *a2;
    sub_100003CDC(&qword_100133CE8, &qword_1000F3318);
    v29._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v29);

    while (1)
    {
LABEL_14:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

LABEL_5:
  if (a1 == a2)
  {
    goto LABEL_14;
  }

  v8 = a1[13];
  v9 = *(a2 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_stateManagerQueue);
  sub_100009FEC(0, &qword_100133C58, OS_dispatch_queue_ptr);
  v10 = v8;
  v11 = v9;
  v12 = static NSObject.== infix(_:_:)();

  if ((v12 & 1) == 0)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v13 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v4) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_1000310B0(0, v13[2] + 1, 1, v13);
    *(a2 + v4) = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1000310B0((v15 > 1), v16 + 1, 1, v13);
  }

  v13[2] = v16 + 1;
  v17 = &v13[2 * v16];
  v17[4] = a1;
  v17[5] = &off_100126EF0;
  *(a2 + v4) = v13;
  swift_endAccess();
  v18 = swift_allocObject();
  *(v18 + 16) = _swiftEmptyArrayStorage;
  v19 = swift_allocObject();
  *(v19 + 16) = &_swiftEmptySetSingleton;
  v20 = swift_allocObject();
  *(v20 + 16) = &_swiftEmptySetSingleton;
  type metadata accessor for StateManagerWrapper();
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = &off_100129F40;

  v22 = sub_1000C5A64(v21, v19, v20, v18);

  if ((v22 & 1) == 0)
  {

    _StringGuts.grow(_:)(69);
    v30._countAndFlagsBits = 0xD00000000000002FLL;
    v30._object = 0x8000000100103D00;
    String.append(_:)(v30);
    v31 = *a1;
    sub_100003CDC(&qword_100133CE0, &qword_1000F3310);
    v32._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v32);

    v33._countAndFlagsBits = 544175136;
    v33._object = 0xE400000000000000;
    String.append(_:)(v33);
    v37 = *a2;
    sub_100003CDC(&qword_100133CE8, &qword_1000F3318);
    v34._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v34);

    v35._countAndFlagsBits = 0x6373627573207327;
    v35._object = 0xEE00737265626972;
    String.append(_:)(v35);
    goto LABEL_14;
  }

  swift_beginAccess();
  v23 = *(v18 + 16);

  sub_10008DD24(v24);
}

uint64_t sub_100007C84(uint64_t *a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC10driverkitd15ApprovalManager_subscribers;
  swift_beginAccess();
  v5 = *(a2 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32);
    while (*v7 != a1)
    {
      v7 += 2;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRetain();
    _StringGuts.grow(_:)(33);

    v26 = *a1;
    sub_100003CDC(&qword_100133CD0, &qword_1000F3300);
    v27._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v27);

    v28._countAndFlagsBits = 544175136;
    v28._object = 0xE400000000000000;
    String.append(_:)(v28);
    v36 = *a2;
    sub_100003CDC(&qword_100133CE8, &qword_1000F3318);
    v29._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v29);

    while (1)
    {
LABEL_14:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

LABEL_5:
  if (a1 == a2)
  {
    goto LABEL_14;
  }

  v8 = a1[9];
  v9 = *(a2 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_stateManagerQueue);
  sub_100009FEC(0, &qword_100133C58, OS_dispatch_queue_ptr);
  v10 = v8;
  v11 = v9;
  v12 = static NSObject.== infix(_:_:)();

  if ((v12 & 1) == 0)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v13 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v4) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_1000310B0(0, v13[2] + 1, 1, v13);
    *(a2 + v4) = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1000310B0((v15 > 1), v16 + 1, 1, v13);
  }

  v13[2] = v16 + 1;
  v17 = &v13[2 * v16];
  v17[4] = a1;
  v17[5] = &off_10012E178;
  *(a2 + v4) = v13;
  swift_endAccess();
  v18 = swift_allocObject();
  *(v18 + 16) = _swiftEmptyArrayStorage;
  v19 = swift_allocObject();
  *(v19 + 16) = &_swiftEmptySetSingleton;
  v20 = swift_allocObject();
  *(v20 + 16) = &_swiftEmptySetSingleton;
  type metadata accessor for StateManagerWrapper();
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = &off_100129F40;

  v22 = sub_1000C5A64(v21, v19, v20, v18);

  if ((v22 & 1) == 0)
  {

    _StringGuts.grow(_:)(69);
    v30._countAndFlagsBits = 0xD00000000000002FLL;
    v30._object = 0x8000000100103D00;
    String.append(_:)(v30);
    v31 = *a1;
    sub_100003CDC(&qword_100133CD0, &qword_1000F3300);
    v32._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v32);

    v33._countAndFlagsBits = 544175136;
    v33._object = 0xE400000000000000;
    String.append(_:)(v33);
    v37 = *a2;
    sub_100003CDC(&qword_100133CE8, &qword_1000F3318);
    v34._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v34);

    v35._countAndFlagsBits = 0x6373627573207327;
    v35._object = 0xEE00737265626972;
    String.append(_:)(v35);
    goto LABEL_14;
  }

  swift_beginAccess();
  v23 = *(v18 + 16);

  sub_10008DD24(v24);
}

uint64_t sub_100008224(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = a2[19];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 32);
    while (*v6 != a1)
    {
      v6 += 2;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRetain();
    _StringGuts.grow(_:)(33);

    v25 = *a1;
    sub_100003CDC(&qword_100133CD0, &qword_1000F3300);
    v26._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v26);

    v27._countAndFlagsBits = 544175136;
    v27._object = 0xE400000000000000;
    String.append(_:)(v27);
    v35 = *a2;
    sub_100003CDC(&qword_100133CE0, &qword_1000F3310);
    v28._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v28);

    while (1)
    {
LABEL_14:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

LABEL_5:
  if (a1 == a2)
  {
    goto LABEL_14;
  }

  v7 = a1[9];
  v8 = a2[13];
  sub_100009FEC(0, &qword_100133C58, OS_dispatch_queue_ptr);
  v9 = v7;
  v10 = v8;
  v11 = static NSObject.== infix(_:_:)();

  if ((v11 & 1) == 0)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v12 = a2[19];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a2[19] = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_1000310B0(0, v12[2] + 1, 1, v12);
    a2[19] = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_1000310B0((v14 > 1), v15 + 1, 1, v12);
  }

  v12[2] = v15 + 1;
  v16 = &v12[2 * v15];
  v16[4] = a1;
  v16[5] = &off_10012E178;
  a2[19] = v12;
  swift_endAccess();
  v17 = swift_allocObject();
  *(v17 + 16) = _swiftEmptyArrayStorage;
  v18 = swift_allocObject();
  *(v18 + 16) = &_swiftEmptySetSingleton;
  v19 = swift_allocObject();
  *(v19 + 16) = &_swiftEmptySetSingleton;
  type metadata accessor for StateManagerWrapper();
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = &off_100126EF0;

  v21 = sub_1000C5A64(v20, v18, v19, v17);

  if ((v21 & 1) == 0)
  {

    _StringGuts.grow(_:)(69);
    v29._countAndFlagsBits = 0xD00000000000002FLL;
    v29._object = 0x8000000100103D00;
    String.append(_:)(v29);
    v30 = *a1;
    sub_100003CDC(&qword_100133CD0, &qword_1000F3300);
    v31._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v31);

    v32._countAndFlagsBits = 544175136;
    v32._object = 0xE400000000000000;
    String.append(_:)(v32);
    v36 = *a2;
    sub_100003CDC(&qword_100133CE0, &qword_1000F3310);
    v33._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v33);

    v34._countAndFlagsBits = 0x6373627573207327;
    v34._object = 0xEE00737265626972;
    String.append(_:)(v34);
    goto LABEL_14;
  }

  swift_beginAccess();
  v22 = *(v17 + 16);

  sub_10008DD24(v23);
}

uint64_t sub_1000087AC(uint64_t a1, void *a2, __int128 *a3, uint64_t a4)
{
  v8 = *a4;
  v9 = type metadata accessor for URL();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v204 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DriverKitDaemonSideEffects();
  v239[4] = &off_10012A108;
  v217 = v13;
  v239[3] = v13;
  v239[0] = a1;
  *(a4 + 56) = _swiftEmptyArrayStorage;
  sub_10000A990(v239, a4 + 16);
  *(a4 + 64) = a2;
  v14 = a3[13];
  v270[1] = a3[12];
  v270[2] = v14;
  v15 = a3[15];
  v270[3] = a3[14];
  v270[4] = v15;
  v16 = a3[9];
  v268[2] = a3[8];
  v268[3] = v16;
  v17 = a3[11];
  v269 = a3[10];
  v270[0] = v17;
  v18 = a3[5];
  v266 = a3[4];
  v267 = v18;
  v19 = a3[7];
  v268[0] = a3[6];
  v268[1] = v19;
  v20 = a3[1];
  v262 = *a3;
  v263 = v20;
  v21 = a3[3];
  v264 = a3[2];
  v265 = v21;
  v22 = sub_10000A0FC(&v262);
  v218 = v8;
  v219 = a2;
  v220 = v12;
  if (v22 == 1)
  {
    v23 = a2;
    sub_1000703B4(v239, v240);
    v24 = v240[0];
    v25 = v240[1];
    v223 = v241;
    v26 = v242;
    v27 = v243;
    v28 = v244;
    v29 = v245;
    v30 = v246;
    v31 = v247;
    v32 = v248;
    v33 = v250;
    v34 = v251;
    v35 = v252;
    v36 = v249;
    v37 = v253;
    v38 = v254;
    v39 = v255;
    v40 = v257;
    v41 = v258;
    v42 = v259;
    v43 = v260;
    v44 = v256;
    v45 = v261;
  }

  else
  {
    v222 = v262;
    v215 = v263;
    v221 = *(&v264 + 1);
    v223 = v264;
    v216 = v265;
    v213 = v266;
    v214 = *(&v265 + 1);
    v211 = v267;
    v212 = *(&v266 + 1);
    v46 = *(&v267 + 1);
    v209 = *(&v268[1] + 8);
    v210 = *(v268 + 8);
    v36 = *&v268[0];
    v37 = *(&v268[3] + 1);
    v39 = *(&v269 + 1);
    v47 = v269;
    v207 = *(v270 + 8);
    v208 = *(&v268[2] + 8);
    v205 = *(&v270[2] + 8);
    v206 = *(&v270[1] + 8);
    v204 = *(&v270[3] + 8);
    v44 = *&v270[0];
    v45 = *(&v270[4] + 1);
    v48 = a2;
    v43 = v204;
    v42 = v205;
    v41 = v206;
    v40 = v207;
    v38 = v47;
    v35 = v208;
    v34 = v209;
    v33 = v210;
    v32 = v46;
    v31 = v211;
    v30 = v212;
    v29 = v213;
    v28 = v214;
    v25 = v215;
    v27 = v216;
    v26 = v221;
    v24 = v222;
  }

  v49 = 0x8000000100103BD0;
  v50 = v40;
  v224 = v24;
  v225 = v25;
  *&v210 = *(&v40 + 1);
  if (*(&v40 + 1))
  {
    v49 = *(&v40 + 1);
  }

  else
  {
    v50 = 0xD000000000000036;
  }

  v213 = v49;
  v214 = v50;
  *&v226 = v223;
  *(&v226 + 1) = v26;
  v51 = 0x8000000100103C10;
  *&v227 = v27;
  *(&v227 + 1) = v28;
  *&v209 = *(&v41 + 1);
  v52 = v41;
  if (!*(&v41 + 1))
  {
    v52 = 0xD00000000000003CLL;
  }

  v216 = v52;
  *&v228 = v29;
  *(&v228 + 1) = v30;
  if (*(&v41 + 1))
  {
    v51 = *(&v41 + 1);
  }

  *&v215 = v51;
  *&v229 = v31;
  *(&v229 + 1) = v32;
  v53 = 0x8000000100103C50;
  v54 = v42;
  *&v230[0] = v36;
  *(v230 + 8) = v33;
  if (*(&v42 + 1))
  {
    v53 = *(&v42 + 1);
  }

  else
  {
    v54 = 0xD000000000000038;
  }

  v211 = v53;
  v212 = v54;
  *(&v230[1] + 8) = v34;
  *(&v230[2] + 8) = v35;
  *(&v230[3] + 1) = v37;
  *&v231 = v38;
  *(&v231 + 1) = v39;
  *&v232[0] = v44;
  *(v232 + 8) = v40;
  *(&v232[1] + 8) = v41;
  *(&v232[2] + 8) = v42;
  *(&v232[3] + 8) = v43;
  *(&v232[4] + 1) = v45;
  v271[3] = v227;
  v271[2] = v226;
  v271[1] = v225;
  v271[0] = v224;
  v271[7] = v230[1];
  v271[6] = v230[0];
  v271[5] = v229;
  v271[4] = v228;
  v271[11] = v232[0];
  v271[10] = v231;
  v271[9] = v230[3];
  v271[8] = v230[2];
  v271[15] = v232[4];
  v271[14] = v232[3];
  v271[13] = v232[2];
  v271[12] = v232[1];
  v55 = *(a4 + 64);
  sub_10000A990(v239, v236);
  v56 = v237;
  v57 = sub_100003DA0(v236, v237);
  v58 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v57);
  v60 = (&v204 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v61 + 16))(v60);
  v62 = *v60;
  v235 = &off_10012A108;
  v63 = v217;
  v234 = v217;
  v233[0] = v62;
  type metadata accessor for ActivationStateManager();
  v64 = swift_allocObject();
  v65 = sub_100003DA0(v233, v63);
  v223 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v65);
  v67 = (&v204 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = *(v68 + 16);
  *&v208 = v68 + 16;
  v221 = v69;
  *&v222 = (v66 + 15) & 0xFFFFFFFFFFFFFFF0;
  v69(v67);
  v70 = *v67;
  *(v64 + 40) = v63;
  *(v64 + 48) = &off_10012A108;
  *(v64 + 16) = v70;
  *(v64 + 72) = 2;
  *(v64 + 56) = v55;
  *(v64 + 64) = _swiftEmptyArrayStorage;

  v71 = v55;

  sub_100003C90(v233);
  sub_100003C90(v236);
  *(a4 + 120) = v64;
  *&v210 = *(a4 + 64);
  v72 = v220;
  URL.init(fileURLWithPath:)();

  sub_10000A990(v239, v236);
  v73 = v237;
  v74 = sub_100003DA0(v236, v237);
  v212 = &v204;
  v75 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v74);
  v77 = (&v204 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v78 + 16))(v77);
  v79 = *v77;
  v235 = &off_10012A108;
  v234 = v63;
  v233[0] = v79;
  type metadata accessor for ApplicationManager();
  v80 = swift_allocObject();
  v81 = sub_100003DA0(v233, v63);
  __chkstk_darwin(v81);
  v82 = v221;
  v83 = v222;
  v221(&v204 - v222);
  v84 = sub_100003EAC(v210, v72, *(&v204 - v83), v80);
  sub_100003C90(v233);
  sub_100003C90(v236);
  *(a4 + 72) = v84;
  sub_10000A990(v239, v236);
  v85 = *(a4 + 64);
  v86 = v237;
  v87 = sub_100003DA0(v236, v237);
  v212 = &v204;
  v88 = *(*(v86 - 8) + 64);
  __chkstk_darwin(v87);
  v90 = (&v204 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v91 + 16))(v90);
  v92 = *v90;
  v235 = &off_10012A108;
  v234 = v63;
  v233[0] = v92;
  type metadata accessor for KernelStateManager();
  v93 = swift_allocObject();
  v94 = sub_100003DA0(v233, v63);
  __chkstk_darwin(v94);
  v95 = (&v204 - v83);
  v96 = &v204 - v83;
  v97 = v82;
  v82(v96);
  v98 = *v95;
  v99 = v85;
  v100 = sub_10000A594(v271, v98, v99, v93);

  sub_10000A680(&v224);
  sub_100003C90(v233);
  sub_100003C90(v236);
  *(a4 + 80) = v100;
  v212 = *(a4 + 64);
  v101 = v220;
  URL.init(fileURLWithPath:)();

  sub_10000A990(v239, v236);
  v102 = v237;
  v103 = sub_100003DA0(v236, v237);
  v214 = &v204;
  v104 = *(*(v102 - 8) + 64);
  __chkstk_darwin(v103);
  v106 = (&v204 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v107 + 16))(v106);
  v108 = *v106;
  v235 = &off_10012A108;
  v234 = v63;
  v233[0] = v108;
  v109 = type metadata accessor for DriverBinManager();
  v110 = *(v109 + 48);
  v111 = *(v109 + 52);
  v112 = swift_allocObject();
  v113 = sub_100003DA0(v233, v63);
  __chkstk_darwin(v113);
  v114 = v222;
  v97(&v204 - v222);
  v115 = v101;
  v116 = sub_1000041B0(v212, v101, *(&v204 - v114), v112);
  sub_100003C90(v233);
  sub_100003C90(v236);
  *(a4 + 88) = v116;
  v214 = *(a4 + 64);
  v117 = v115;
  URL.init(fileURLWithPath:)();

  sub_10000A990(v239, v236);
  v118 = v237;
  v119 = sub_100003DA0(v236, v237);
  v216 = &v204;
  v120 = *(*(v118 - 8) + 64);
  __chkstk_darwin(v119);
  v122 = (&v204 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v123 + 16))(v122);
  v124 = *v122;
  v235 = &off_10012A108;
  v234 = v63;
  v233[0] = v124;
  v125 = type metadata accessor for ApprovalManager();
  v126 = *(v125 + 48);
  v127 = *(v125 + 52);
  v128 = swift_allocObject();
  v129 = sub_100003DA0(v233, v63);
  __chkstk_darwin(v129);
  v130 = v221;
  v221(&v204 - v114);
  v131 = sub_100004354(v214, v117, *(&v204 - v114), v128);
  sub_100003C90(v233);
  sub_100003C90(v236);
  *(a4 + 96) = v131;
  v132 = *(a4 + 64);
  sub_10000A990(v239, v236);
  v133 = v237;
  v134 = sub_100003DA0(v236, v237);
  v220 = &v204;
  v135 = *(*(v133 - 8) + 64);
  __chkstk_darwin(v134);
  v137 = (&v204 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v138 + 16))(v137);
  v139 = *v137;
  v235 = &off_10012A108;
  v234 = v63;
  v233[0] = v139;
  type metadata accessor for ApprovalSettingsStateManager();
  v140 = swift_allocObject();
  v141 = sub_100003DA0(v233, v63);
  __chkstk_darwin(v141);
  v130(&v204 - v114);
  v142 = *(&v204 - v114);
  v143 = v132;
  v144 = sub_10000A6D4(v143, v142, v140);

  sub_100003C90(v233);
  sub_100003C90(v236);
  *(a4 + 104) = v144;
  v145 = *(a4 + 64);
  sub_10000A990(v239, v236);
  v146 = v237;
  v147 = sub_100003DA0(v236, v237);
  v148 = *(*(v146 - 8) + 64);
  __chkstk_darwin(v147);
  v150 = (&v204 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v151 + 16))(v150);
  v152 = *v150;
  v235 = &off_10012A108;
  v234 = v63;
  v233[0] = v152;
  type metadata accessor for ActiveDriversStateManager();
  v153 = swift_allocObject();
  v154 = sub_100003DA0(v233, v63);
  __chkstk_darwin(v154);
  v155 = (&v204 - v222);
  v221(&v204 - v222);
  v156 = *v155;
  v153[6] = v63;
  v153[7] = &off_10012A108;
  v153[3] = v156;
  v153[2] = _swiftEmptyArrayStorage;
  v153[8] = v145;
  v153[9] = 0;
  v157 = v145;
  sub_100003C90(v233);
  sub_100003C90(v236);
  *(a4 + 112) = v153;
  v158 = *(a4 + 80);
  v238 = &off_10012A090;
  v237 = v218;
  v236[0] = a4;
  sub_10000A990(v236, v233);
  swift_beginAccess();

  sub_10000A9F4(v233, v158 + 64);
  swift_endAccess();
  sub_100003C90(v236);
  v159 = *(a4 + 72);
  v160 = *(a4 + 120);
  v161 = v159[9];
  v159[9] = v160;
  swift_retain_n();
  swift_retain_n();

  sub_1000044BC(v159, v160);

  v162 = *(a4 + 88);
  v163 = *(a4 + 72);
  v164 = *(v162 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_applicationManager);
  *(v162 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_applicationManager) = v163;
  swift_retain_n();
  swift_retain_n();

  sub_100004A44(v162, v163, &OBJC_IVAR____TtC10driverkitd16DriverBinManager_stateManagerQueue, &off_100127AD8, &qword_100133CF0, &qword_1000F3320);

  v165 = *(a4 + 88);
  v166 = *(a4 + 112);
  v167 = *(v165 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_activeDriversStateManager);
  *(v165 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_activeDriversStateManager) = v166;
  swift_retain_n();
  swift_retain_n();

  sub_100005ADC(v165, v166);

  v169 = *(a4 + 88);
  v168 = *(a4 + 96);
  v170 = *(v168 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_driverBinManager);
  *(v168 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_driverBinManager) = v169;
  swift_retain_n();
  swift_retain_n();

  sub_1000065F8(v168, v169);

  v171 = *(a4 + 96);
  v172 = *(v171 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_kernelStateManager);
  *(v171 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_kernelStateManager) = *(a4 + 80);
  swift_retain_n();

  v173 = *(a4 + 96);
  v174 = *(a4 + 72);
  v175 = *(v173 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_applicationManager);
  *(v173 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_applicationManager) = v174;
  swift_retain_n();
  swift_retain_n();

  sub_100004A44(v173, v174, &OBJC_IVAR____TtC10driverkitd15ApprovalManager_stateManagerQueue, &off_100129F40, &qword_100133CE8, &qword_1000F3318);

  v176 = *(a4 + 80);
  v177 = *(a4 + 120);
  v178 = v176[18];
  v176[18] = v177;
  swift_retain_n();
  swift_retain_n();

  sub_100004FD0(v176, v177, &off_10012A4F0, &qword_100133D00, &qword_1000F3330);

  v180 = *(a4 + 72);
  v179 = *(a4 + 80);
  v181 = v179[16];
  v179[16] = v180;
  swift_retain_n();
  swift_retain_n();

  sub_100004FD0(v179, v180, &off_1001271C8, &qword_100133CD8, &qword_1000F3308);

  v182 = *(a4 + 80);
  v183 = *(a4 + 96);
  v184 = v182[14];
  v182[14] = v183;
  swift_retain_n();
  swift_retain_n();

  sub_1000076E4(v182, v183);

  v185 = *(a4 + 80);
  v186 = *(a4 + 88);
  v187 = v185[15];
  v185[15] = v186;
  swift_retain_n();
  swift_retain_n();

  sub_100006BA4(v185, v186);

  v188 = *(a4 + 80);
  v189 = *(a4 + 112);
  v190 = v188[17];
  v188[17] = v189;
  swift_retain_n();
  swift_retain_n();

  sub_100006070(v188, v189);

  v191 = *(a4 + 104);
  v192 = *(a4 + 88);
  v193 = v191[10];
  v191[10] = v192;
  swift_retain_n();
  swift_retain_n();

  sub_100007144(v191, v192);

  v195 = *(a4 + 96);
  v194 = *(a4 + 104);
  v196 = v194[12];
  v194[12] = v195;
  swift_retain_n();
  swift_retain_n();

  sub_100007C84(v194, v195);

  v197 = *(a4 + 104);
  v198 = *(a4 + 80);
  v199 = v197[11];
  v197[11] = v198;
  swift_retain_n();
  swift_retain_n();

  sub_100008224(v197, v198);

  v200 = *(a4 + 104);
  v201 = *(a4 + 72);
  v202 = v200[13];
  v200[13] = v201;
  swift_retain_n();
  swift_retain_n();

  sub_100005554(v200, v201);

  sub_100003C90(v239);
  return a4;
}

uint64_t sub_100009F34(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100009F4C()
{
  sub_100003C90((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100009F8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009FA4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100009FEC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_10000A060(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A0A8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100009FA4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000A0FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10000A114(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003CDC(&qword_100133CC0, &qword_1000F32F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A184(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003CDC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000A1E4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t))
{
  v10[3] = type metadata accessor for DriverKitDaemonSideEffects();
  v10[4] = &off_10012A108;
  v10[0] = a1;

  a4(&v9, v6);

  v7 = v9;
  sub_100003C90(v10);
  return v7;
}

uint64_t sub_10000A594(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v11 = type metadata accessor for DriverKitDaemonSideEffects();
  v12 = &off_10012A108;
  v10[0] = a2;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 144) = 0;
  *(a4 + 152) = _swiftEmptyArrayStorage;
  sub_10000A990(v10, a4 + 16);
  *(a4 + 104) = a3;
  v7 = *sub_100003C4C(v10, v11);
  v8 = a3;
  *(a4 + 56) = sub_10000A1E4(v7, 0xD000000000000025, 0x8000000100103DA0, sub_10000AA9C);
  sub_100003C90(v10);
  return a4;
}

uint64_t sub_10000A6D4(void *a1, uint64_t a2, uint64_t a3)
{
  v19 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v19 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v19);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v21[3] = type metadata accessor for DriverKitDaemonSideEffects();
  v21[4] = &off_10012A108;
  v21[0] = a2;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = _swiftEmptyArrayStorage;
  sub_10000A990(v21, a3 + 16);
  *(a3 + 72) = a1;
  *(a3 + 56) = &_swiftEmptySetSingleton;
  v14 = sub_100009FEC(0, &qword_100133C58, OS_dispatch_queue_ptr);
  v18[1] = "Already added subscriber ";
  v18[2] = v14;
  v15 = a1;
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10000A060(&qword_100133C80, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100003CDC(&qword_100133C88, &qword_1000F88C0);
  sub_10000A0A8(&qword_100133C90, &qword_100133C88, &qword_1000F88C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v6 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v19);
  v16 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_100003C90(v21);
  *(a3 + 64) = v16;
  return a3;
}

uint64_t sub_10000A990(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000A9F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003CDC(&qword_100133CC8, &qword_1000F32F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000AA64()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10000AB08(uint64_t a1, unint64_t *a2)
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

uint64_t sub_10000ADE0(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_100003C4C(a1, v1);
  v3 = (*(v2 + 16))(v1, v2);
  sub_10000AE48(v3);
  v5 = v4;

  return v5;
}

void sub_10000AE48(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003CDC(qword_100133F88, &qword_1000F3818);
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

  do
  {
LABEL_10:
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v13 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v14 = __clz(__rbit64(v5)) | (v13 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    sub_10000B430(*(a1 + 56) + 32 * v14, v28);
    *&v27 = v16;
    *(&v27 + 1) = v17;
    v25[2] = v27;
    v26[0] = v28[0];
    v26[1] = v28[1];
    v18 = v27;
    sub_10000B48C(v26, v25);
    sub_100009FEC(0, &qword_100133F80, NSObject_ptr);

    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    v19 = sub_100061588(v18, *(&v18 + 1));
    if (v20)
    {
      v8 = v2[6] + 16 * v19;
      v9 = *(v8 + 8);
      *v8 = v18;
      v10 = v19;

      v11 = v2[7];
      v12 = *(v11 + 8 * v10);
      *(v11 + 8 * v10) = v24;

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
        goto LABEL_22;
      }

      *(v2 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v19;
      *(v2[6] + 16 * v19) = v18;
      *(v2[7] + 8 * v19) = v24;
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_23;
      }

      v2[2] = v23;
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

Class sub_10000B0BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_100009FEC(0, &qword_100133F80, NSObject_ptr);
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

void sub_10000B1B4()
{
  static os_log_type_t.error.getter();
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000F3160;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 64) = sub_100003D24();
  strcpy((v0 + 32), "send(event:)");
  *(v0 + 45) = 0;
  *(v0 + 46) = -5120;
  sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
  v1 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();
}

void sub_10000B2B4(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  sub_100003C4C(a1, v2);
  (*(v3 + 8))(v2, v3);
  v4 = String._bridgeToObjectiveC()();

  sub_10000A990(a1, v8);
  v5 = swift_allocObject();
  sub_100009F34(v8, v5 + 16);
  aBlock[4] = sub_10000B410;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000B0BC;
  aBlock[3] = &unk_100126E58;
  v6 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v6);
}

uint64_t sub_10000B3D8()
{
  sub_100003C90((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000B418(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000B430(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_10000B48C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

Swift::Int KMAllocatedUnfairLock.Ownership.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_10000B53C()
{
  Hasher.init(_seed:)();
  KMAllocatedUnfairLock.Ownership.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

uint64_t sub_10000B598()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for KextsOutOfOSImageFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KextsOutOfOSImageFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10000B7AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10000A990(a1, v19);
  sub_10000A990(a1, v17);
  v7 = v18;
  v8 = sub_100003DA0(v17, v18);
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = *v11;
  sub_100014838(a2, &v16);
  sub_100013060(v13, a2, 2150449, v20);
  sub_100003C90(v17);
  type metadata accessor for ExtensionManager();
  swift_allocObject();
  result = sub_1000A059C(v19, v20);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void *sub_10000B908()
{
  v1 = v0;
  v2 = type metadata accessor for LookupSpec();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 120))
  {

    v6 = sub_100048948();
    v8 = v7;

    v9 = *(*(v0 + 56) + 656);

    os_unfair_lock_lock((v9 + 72));
    v10 = *(v9 + 32);
    v32[0] = *(v9 + 16);
    v32[1] = v10;
    v32[2] = *(v9 + 48);
    v33 = *(v9 + 64);
    sub_100013848(v32, &v31);
    os_unfair_lock_unlock((v9 + 72));

    swift_storeEnumTagMultiPayload();
    v11 = sub_100054F6C(v5, 0, 0);
    sub_1000138A4(v32);
    sub_100014780(v5, type metadata accessor for LookupSpec);
    if (v11)
    {
      v31 = _swiftEmptyArrayStorage;
      v12 = v11 & 0xFFFFFFFFFFFFFF8;
      v27 = v8;
      if (v11 >> 62)
      {
        goto LABEL_18;
      }

      v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
        while (1)
        {
          v14 = 0;
          v15 = v11 & 0xC000000000000001;
          v28 = v11 & 0xC000000000000001;
          v29 = v11;
          while (v15)
          {
            v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v17 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
LABEL_15:
              __break(1u);
              goto LABEL_16;
            }

LABEL_11:
            v30 = v16;
            if (sub_1000139A8(&v30, v6, v1))
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              v18 = v13;
              v19 = v12;
              v20 = v6;
              v21 = v1;
              v22 = v31[2];
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              v1 = v21;
              v6 = v20;
              v12 = v19;
              v13 = v18;
              v15 = v28;
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v11 = v29;
            }

            else
            {
            }

            ++v14;
            if (v17 == v13)
            {
              goto LABEL_19;
            }
          }

          if (v14 < *(v12 + 16))
          {
            break;
          }

          __break(1u);
LABEL_18:
          v13 = _CocoaArrayWrapper.endIndex.getter();
          if (!v13)
          {
            goto LABEL_19;
          }
        }

        v16 = *(v11 + 8 * v14 + 32);

        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_15;
        }

        goto LABEL_11;
      }

LABEL_19:

      v24 = v31;
      KeyPath = swift_getKeyPath();
      v23 = sub_1000C64C8(KeyPath, v24);
    }

    else
    {
LABEL_16:

      return _swiftEmptyArrayStorage;
    }

    return v23;
  }

  else
  {
    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t sub_10000BC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[0] = a2;
  v22[1] = a3;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v22 - v15;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v16, a1, v17);
  sub_100014718(v22[0], &v16[*(v10 + 56)], type metadata accessor for DriverBinEntry);
  sub_100014894(v16, v14, &unk_1001373B0, &unk_1000F3A40);
  v19 = &v14[*(v10 + 56)];
  v20 = type metadata accessor for DriverBinEntry();
  (*(v5 + 16))(v8, v19 + *(v20 + 28), v4);
  sub_100014780(v19, type metadata accessor for DriverBinEntry);
  LOBYTE(v19) = static URL.== infix(_:_:)();
  (*(v5 + 8))(v8, v4);
  sub_10000A184(v16, &unk_1001373B0, &unk_1000F3A40);
  (*(v18 + 8))(v14, v17);
  return v19 & 1;
}

uint64_t sub_10000BE84()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v190 = &v184 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v189 = *(v5 - 8);
  v6 = *(v189 + 64);
  __chkstk_darwin(v5);
  v188 = &v184 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for ActiveDriverInfo();
  v206 = *(active - 8);
  v8 = *(v206 + 64);
  v9 = __chkstk_darwin(active);
  v197 = &v184 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v200 = &v184 - v12;
  v13 = __chkstk_darwin(v11);
  v198 = &v184 - v14;
  v15 = __chkstk_darwin(v13);
  v207 = &v184 - v16;
  __chkstk_darwin(v15);
  v214 = (&v184 - v17);
  v18 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v184 - v20;
  v22 = type metadata accessor for URL();
  v199 = *(v22 - 8);
  v23 = *(v199 + 64);
  v24 = __chkstk_darwin(v22);
  *&v212 = &v184 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v209 = (&v184 - v26);
  v27 = type metadata accessor for LookupSpec();
  v28 = *(*(v27 - 8) + 64);
  result = __chkstk_darwin(v27);
  v31 = &v184 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v0[15])
  {
    __break(1u);
    goto LABEL_126;
  }

  v187 = v5;

  v195 = sub_100048948();
  v33 = v32;
  v194 = v34;

  if (!v0[14])
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v35 = v0[14];

  v193 = sub_100089030();
  v213 = v36;

  v201 = v0;
  v37 = v0[16];
  if (!v37)
  {
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v38 = *(v37 + 88);
  v186 = v1;
  v185 = v2;
  v211 = v27;
  v210 = v33;
  if (v38)
  {
    v39 = v38;
  }

  else
  {

    sub_10001B0B4();
    v39 = v40;
    v41 = *(v37 + 88);
    *(v37 + 88) = v40;
  }

  v42 = sub_10000DA8C(v39);

  v43 = sub_1000EB6CC(v42);

  v45 = v201;
  v46 = v201[7];
  v47 = *(v46 + 656);
  __chkstk_darwin(v44);
  v48 = v210;
  *(&v184 - 8) = v195;
  *(&v184 - 7) = v48;
  v49 = v193;
  *(&v184 - 6) = v194;
  *(&v184 - 5) = v49;
  *(&v184 - 4) = v213;
  *(&v184 - 3) = v43;
  v191 = v43;
  *(&v184 - 2) = v45;

  os_unfair_lock_lock(v47 + 18);
  sub_100013820(&v47[4]);
  v205 = 0;
  os_unfair_lock_unlock(v47 + 18);
  v192 = *&v225[0];

  v50 = *(v46 + 656);

  os_unfair_lock_lock((v50 + 72));
  v51 = *(v50 + 32);
  v225[0] = *(v50 + 16);
  v225[1] = v51;
  v225[2] = *(v50 + 48);
  v226 = *(v50 + 64);
  sub_100013848(v225, &aBlock);
  os_unfair_lock_unlock((v50 + 72));

  swift_storeEnumTagMultiPayload();
  v52 = sub_100054F6C(v31, 0, 0);
  sub_1000138A4(v225);
  result = sub_100014780(v31, type metadata accessor for LookupSpec);
  if (!v52)
  {
    goto LABEL_75;
  }

  if (v45[17])
  {
    v53 = v45[17];

    v54 = sub_10001E490();
    v55 = v54;
    v56 = *(v54 + 16);
    if (v56)
    {
      v57 = sub_100032594(*(v54 + 16), 0);
      v58 = sub_1000591AC(&aBlock, v57 + ((*(v206 + 80) + 32) & ~*(v206 + 80)), v56, v55);
      sub_1000145A4();
      if (v58 != v56)
      {
        __break(1u);
        goto LABEL_124;
      }
    }

    else
    {

      v57 = _swiftEmptyArrayStorage;
    }

    v59 = v52 & 0xFFFFFFFFFFFFFF8;
    if (v52 >> 62)
    {
      v60 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v60 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v204 = v57;
    if (v60)
    {
      v61 = 0;
      v213 = v52 & 0xC000000000000001;
      v211 = (v199 + 56);
      v203 = (v199 + 48);
      v196 = (v199 + 32);
      v210 = _swiftEmptyArrayStorage;
      v208 = v52 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v213)
        {
          v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v62 = v61 + 1;
          if (__OFADD__(v61, 1))
          {
            goto LABEL_118;
          }
        }

        else
        {
          if (v61 >= *(v59 + 16))
          {
            goto LABEL_119;
          }

          v56 = *(v52 + 8 * v61 + 32);

          v62 = v61 + 1;
          if (__OFADD__(v61, 1))
          {
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            v142 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_77;
          }
        }

        sub_1000138F8(*(v56 + 24) + 24, &aBlock);
        if (v224)
        {
          sub_100013954(&aBlock);

          (*v211)(v21, 1, 1, v22);
        }

        else
        {
          sub_100009F34(&aBlock, &v216);
          sub_100009F34(&v216, &v217);
          v63 = v60;
          v64 = v52;
          v65 = *(&v218 + 1);
          v66 = v219;
          sub_100003C4C(&v217, *(&v218 + 1));
          v67 = *(v66 + 64);
          v68 = v65;
          v60 = v63;
          v69 = v66;
          v52 = v64;
          v59 = v208;
          v67(v68, v69);

          (*v211)(v21, 0, 1, v22);
          sub_100003C90(&v217);
          if ((*v203)(v21, 1, v22) != 1)
          {
            v56 = *v196;
            (*v196)(v209, v21, v22);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v210 = sub_100031468(0, v210[2] + 1, 1, v210);
            }

            v71 = v210[2];
            v70 = v210[3];
            if (v71 >= v70 >> 1)
            {
              v210 = sub_100031468(v70 > 1, v71 + 1, 1, v210);
            }

            v72 = v210;
            v210[2] = v71 + 1;
            (v56)(v72 + ((*(v199 + 80) + 32) & ~*(v199 + 80)) + *(v199 + 72) * v71, v209, v22);
            goto LABEL_20;
          }
        }

        sub_10000A184(v21, &unk_1001389D0, &qword_1000F4F60);
LABEL_20:
        ++v61;
        if (v62 == v60)
        {
          goto LABEL_35;
        }
      }
    }

    v210 = _swiftEmptyArrayStorage;
LABEL_35:

    v73 = sub_1000EB530(v210);

    v74 = v204;
    v45 = _swiftEmptyArrayStorage;
    v203 = v204[2];
    if (v203)
    {
      v75 = 0;
      v213 = v73 + 56;
      v211 = (v199 + 16);
      v76 = (v199 + 8);
      while (v75 < v74[2])
      {
        v210 = v45;
        v77 = *(v206 + 72);
        v209 = ((*(v206 + 80) + 32) & ~*(v206 + 80));
        v208 = v77;
        sub_100014718(v209 + v74 + v77 * v75, v214, type metadata accessor for ActiveDriverInfo);
        if (*(v73 + 16) && (v78 = *(v73 + 40), sub_100014614(&qword_1001342B0, &type metadata accessor for URL), v79 = dispatch thunk of Hashable._rawHashValue(seed:)(), v80 = -1 << *(v73 + 32), v52 = v79 & ~v80, ((*(v213 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) != 0))
        {
          v81 = ~v80;
          v82 = *(v199 + 72);
          v83 = *(v199 + 16);
          while (1)
          {
            v56 = v212;
            v83(v212, *(v73 + 48) + v82 * v52, v22);
            sub_100014614(&qword_1001342B8, &type metadata accessor for URL);
            v84 = dispatch thunk of static Equatable.== infix(_:_:)();
            (*v76)(v56, v22);
            if (v84)
            {
              break;
            }

            v52 = (v52 + 1) & v81;
            if (((*(v213 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
            {
              goto LABEL_45;
            }
          }

          sub_100014780(v214, type metadata accessor for ActiveDriverInfo);
          v45 = v210;
        }

        else
        {
LABEL_45:
          sub_1000145AC(v214, v207, type metadata accessor for ActiveDriverInfo);
          v45 = v210;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&aBlock = v45;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100063648(0, v45[2] + 1, 1);
            v45 = aBlock;
          }

          v87 = v45[2];
          v86 = v45[3];
          v52 = v87 + 1;
          if (v87 >= v86 >> 1)
          {
            sub_100063648(v86 > 1, v87 + 1, 1);
            v45 = aBlock;
          }

          v45[2] = v52;
          sub_1000145AC(v207, v209 + v45 + v87 * v208, type metadata accessor for ActiveDriverInfo);
        }

        v75 = (v75 + 1);
        v74 = v204;
        if (v75 == v203)
        {
          goto LABEL_50;
        }
      }

      goto LABEL_120;
    }

LABEL_50:

    v58 = v45[2];
    if (!v58)
    {
LABEL_74:

LABEL_75:
      v141 = sub_10000B908();
      v56 = v141;
      v52 = v141 & 0xFFFFFFFFFFFFFF8;
      if (v141 >> 62)
      {
        goto LABEL_121;
      }

      v142 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_77:
      v143 = _swiftEmptyArrayStorage;
      if (v142)
      {
        v144 = 0;
        do
        {
          v145 = v144;
          while (1)
          {
            if ((v56 & 0xC000000000000001) != 0)
            {
              v146 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v144 = v145 + 1;
              if (__OFADD__(v145, 1))
              {
                goto LABEL_116;
              }
            }

            else
            {
              if (v145 >= *(v52 + 16))
              {
                goto LABEL_117;
              }

              v146 = *(v56 + 8 * v145 + 32);

              v144 = v145 + 1;
              if (__OFADD__(v145, 1))
              {
LABEL_116:
                __break(1u);
LABEL_117:
                __break(1u);
                goto LABEL_118;
              }
            }

            sub_1000138F8(*(v146 + 24) + 24, &aBlock);
            if (!v224)
            {
              break;
            }

            sub_100013954(&aBlock);
            v217 = 0u;
            v218 = 0u;
            v219 = 0;

            sub_10000A184(&v217, &qword_1001342A8, &unk_1000F39C0);
            ++v145;
            if (v144 == v142)
            {
              goto LABEL_94;
            }
          }

          sub_100009F34(&aBlock, &v216);
          sub_100009F34(&v216, &v217);
          sub_10000A184(&v217, &qword_1001342A8, &unk_1000F39C0);
          v147 = sub_100023AFC(0, 0, 0);
          v148 = swift_isUniquelyReferenced_nonNull_native();
          v214 = v147;
          if ((v148 & 1) == 0)
          {
            v143 = sub_100031664(0, v143[2] + 1, 1, v143);
          }

          v150 = v143[2];
          v149 = v143[3];
          v213 = v150 + 1;
          if (v150 >= v149 >> 1)
          {
            v143 = sub_100031664((v149 > 1), v150 + 1, 1, v143);
          }

          v143[2] = v213;
          v143[v150 + 4] = v214;
        }

        while (v144 != v142);
      }

LABEL_94:

      v151 = v201;
      v152 = v201[18];
      if (v152)
      {
        v153 = v201[18];

        v154 = *(v152 + 72);
        v155 = v192;
        if (v154 == 2)
        {
          v156 = sub_10009E624();
          *(v152 + 72) = v156 & 1;

          if (v156)
          {
            goto LABEL_97;
          }
        }

        else
        {

          if (v154)
          {
LABEL_97:
            if (*(v155 + 2))
            {
LABEL_98:
              v157 = sub_10006BE08(0, 0, 0, 0, v143);
              v158 = *sub_100003C4C(v151 + 2, v151[5]);
              sub_1000DF65C(&aBlock);
              v159 = *sub_100003C4C(&aBlock, v222);
              v160 = sub_10002055C(v157);

              *(&v218 + 1) = sub_100003CDC(&unk_1001389A0, &qword_1000F96A0);
              *&v217 = v160;
              v161 = sub_10009C698(&v217);
              v163 = v162;
              sub_100003C90(&v217);
              if (v163 >> 60 == 15)
              {
                sub_10001449C();
                v164 = swift_allocError();
                *v165 = 0u;
                *(v165 + 16) = 0u;
                *(v165 + 32) = 0u;
                *(v165 + 48) = 0u;
                *(v165 + 64) = 0;
                *(v165 + 72) = 75;
                swift_willThrow();
LABEL_109:
                sub_100003C90(&aBlock);
                if (qword_100133AD0 != -1)
                {
                  swift_once();
                }

                v170 = type metadata accessor for Logger();
                sub_1000144F0(v170, qword_10014E9B0);
                swift_errorRetain();
                v171 = Logger.logObject.getter();
                v172 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v171, v172))
                {
                  v173 = swift_slowAlloc();
                  v174 = swift_slowAlloc();
                  *&aBlock = v174;
                  *v173 = 136315138;
                  *&v217 = v164;
                  swift_errorRetain();
                  sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
                  v175 = String.init<A>(describing:)();
                  v177 = sub_1000E3AF8(v175, v176, &aBlock);

                  *(v173 + 4) = v177;
                  _os_log_impl(&_mh_execute_header, v171, v172, "An error occurred while loading dext personalities: %s", v173, 0xCu);
                  sub_100003C90(v174);
                }

                else
                {
                }

                return v155;
              }

              v169 = v205;
              sub_10009C774(v161, v163);
              if (v169)
              {
                v164 = v169;
                sub_100014528(v161, v163);
                goto LABEL_109;
              }

              sub_100014528(v161, v163);
              sub_100003C90(&aBlock);
              v178 = v151[13];
              v223 = sub_10001453C;
              v224 = v151;
              *&aBlock = _NSConcreteStackBlock;
              *(&aBlock + 1) = 1107296256;
              v221 = sub_10006CCB0;
              v222 = &unk_100126F28;
              v179 = _Block_copy(&aBlock);
              v180 = v178;

              v181 = v188;
              static DispatchQoS.unspecified.getter();
              *&v217 = _swiftEmptyArrayStorage;
              sub_100014614(&unk_100133CA0, &type metadata accessor for DispatchWorkItemFlags);
              sub_100003CDC(&unk_100137370, &unk_1000F32E0);
              sub_10001455C(&qword_100133CB0, &unk_100137370, &unk_1000F32E0);
              v182 = v190;
              v183 = v186;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              _Block_release(v179);

              (*(v185 + 8))(v182, v183);
              (*(v189 + 8))(v181, v187);

              return v155;
            }

LABEL_106:

            return 0;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v155 = sub_100030EA0(0, *(v155 + 2) + 1, 1, v155);
        }

        v167 = *(v155 + 2);
        v166 = *(v155 + 3);
        if (v167 >= v166 >> 1)
        {
          v155 = sub_100030EA0((v166 > 1), v167 + 1, 1, v155);
        }

        *(v155 + 2) = v167 + 1;
        v168 = &v155[16 * v167];
        *(v168 + 4) = 0xD00000000000001BLL;
        *(v168 + 5) = 0x8000000100104180;
        if (*(v155 + 2))
        {
          goto LABEL_98;
        }

        goto LABEL_106;
      }

      goto LABEL_128;
    }

    if (qword_100133AD0 == -1)
    {
LABEL_52:
      v88 = type metadata accessor for Logger();
      v89 = sub_1000144F0(v88, qword_10014E9B0);

      v213 = v89;
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.default.getter();

      v92 = os_log_type_enabled(v90, v91);
      v210 = v45;
      if (v92)
      {
        LODWORD(v212) = v91;
        v214 = v90;
        v93 = swift_slowAlloc();
        v209 = swift_slowAlloc();
        *&v217 = v209;
        v211 = v93;
        *v93 = 136315138;
        *&v216 = _swiftEmptyArrayStorage;
        sub_1000635A4(0, v58, 0);
        v94 = v45;
        v95 = v216;
        v96 = v94 + ((*(v206 + 80) + 32) & ~*(v206 + 80));
        v97 = *(v206 + 72);
        do
        {
          v98 = v198;
          sub_100014718(v96, v198, type metadata accessor for ActiveDriverInfo);
          *&aBlock = 8224;
          *(&aBlock + 1) = 0xE200000000000000;
          v99._countAndFlagsBits = URL.path.getter();
          String.append(_:)(v99);

          v100 = aBlock;
          sub_100014780(v98, type metadata accessor for ActiveDriverInfo);
          *&v216 = v95;
          v102 = *(v95 + 16);
          v101 = *(v95 + 24);
          if (v102 >= v101 >> 1)
          {
            sub_1000635A4((v101 > 1), v102 + 1, 1);
            v95 = v216;
          }

          *(v95 + 16) = v102 + 1;
          *(v95 + 16 * v102 + 32) = v100;
          v96 += v97;
          --v58;
        }

        while (v58);
        *&aBlock = v95;
        sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
        sub_10001455C(&qword_100134288, &qword_100136C80, &qword_1000F39B0);
        v103 = BidirectionalCollection<>.joined(separator:)();
        v105 = v104;

        v106 = sub_1000E3AF8(v103, v105, &v217);

        v107 = v211;
        *(v211 + 1) = v106;
        v108 = v214;
        _os_log_impl(&_mh_execute_header, v214, v212, "Drivers that should be unloaded:\n%s", v107, 0xCu);
        sub_100003C90(v209);

        v45 = v210;
      }

      else
      {
      }

      v110 = v45[2];
      v111 = v200;
      if (v110)
      {
        v112 = v45 + ((*(v206 + 80) + 32) & ~*(v206 + 80));
        v214 = *(v206 + 72);
        *&v109 = 136315394;
        v212 = v109;
        while (1)
        {
          sub_100014718(v112, v111, type metadata accessor for ActiveDriverInfo);
          v113 = (v111 + *(active + 20));
          v114 = *v113;
          v115 = v113[1];

          v116 = sub_10006BD14(v114, v115);
          v117 = *sub_100003C4C(v201 + 2, v201[5]);
          sub_1000DF65C(&aBlock);
          v118 = *sub_100003C4C(&aBlock, v222);
          v119 = sub_1000206B8(v116);

          *(&v218 + 1) = sub_100003CDC(&unk_1001389A0, &qword_1000F96A0);
          *&v217 = v119;
          sub_10000B430(&v217, &v216);
          type metadata accessor for CFDictionary(0);
          v120 = swift_dynamicCast() ? v215 : 0;
          v215 = v120;
          sub_100003CDC(&qword_1001342C0, &qword_1000F39E0);
          v121 = Optional._bridgeToObjectiveC()();

          v122 = IOCFSerialize(v121, 0);
          swift_unknownObjectRelease();
          if (!v122)
          {
            break;
          }

          v123 = v122;
          v124 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v126 = v125;

          sub_100003C90(&v217);
          v127 = v205;
          sub_10009C774(v124, v126);
          if (v127)
          {
            sub_1000128D8(v124, v126);
            v128 = v127;
            v205 = 0;
            v111 = v200;
LABEL_71:
            sub_100003C90(&aBlock);
            v130 = v197;
            sub_100014718(v111, v197, type metadata accessor for ActiveDriverInfo);
            swift_errorRetain();
            v131 = Logger.logObject.getter();
            v132 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v131, v132))
            {
              v133 = swift_slowAlloc();
              *&aBlock = swift_slowAlloc();
              *v133 = v212;
              v134 = (v130 + *(active + 20));
              v136 = *v134;
              v135 = v134[1];

              sub_100014780(v130, type metadata accessor for ActiveDriverInfo);
              v137 = sub_1000E3AF8(v136, v135, &aBlock);

              *(v133 + 4) = v137;
              *(v133 + 12) = 2080;
              *&v217 = v128;
              swift_errorRetain();
              sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
              v138 = String.init<A>(describing:)();
              v140 = sub_1000E3AF8(v138, v139, &aBlock);

              *(v133 + 14) = v140;
              _os_log_impl(&_mh_execute_header, v131, v132, "Failed to unload driver %s: %s", v133, 0x16u);
              swift_arrayDestroy();

              v111 = v200;
            }

            else
            {

              sub_100014780(v130, type metadata accessor for ActiveDriverInfo);
            }

            sub_100014780(v111, type metadata accessor for ActiveDriverInfo);
            goto LABEL_63;
          }

          v205 = 0;
          sub_1000128D8(v124, v126);
          v111 = v200;
          sub_100014780(v200, type metadata accessor for ActiveDriverInfo);
          sub_100003C90(&aBlock);
LABEL_63:
          v112 += v214;
          if (!--v110)
          {
            goto LABEL_74;
          }
        }

        sub_100003C90(&v217);
        sub_10001449C();
        v128 = swift_allocError();
        *v129 = 0u;
        *(v129 + 16) = 0u;
        *(v129 + 32) = 0u;
        *(v129 + 48) = 0u;
        *(v129 + 64) = 0;
        *(v129 + 72) = 75;
        swift_willThrow();
        v205 = 0;
        goto LABEL_71;
      }

      goto LABEL_74;
    }

LABEL_124:
    swift_once();
    goto LABEL_52;
  }

LABEL_129:
  __break(1u);
  return result;
}

uint64_t sub_10000DA8C(uint64_t a1)
{
  v3 = type metadata accessor for ApplicationRecord(0);
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  __chkstk_darwin(v3);
  v34 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v30[1] = v1;
  v39 = _swiftEmptyArrayStorage;
  sub_10006368C(0, v6, 0);
  v7 = v39;
  v8 = a1 + 64;
  v9 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v11 = result;
  v12 = 0;
  v31 = a1 + 72;
  v32 = v6;
  v33 = a1 + 64;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v14 = v11 >> 6;
    if ((*(v8 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_21;
    }

    v15 = *(a1 + 36);
    v37 = v12;
    v38 = v15;
    v16 = v34;
    sub_100014718(*(a1 + 56) + *(v35 + 72) * v11, v34, type metadata accessor for ApplicationRecord);
    v17 = (v16 + *(v36 + 28));
    v19 = *v17;
    v18 = v17[1];
    sub_1000146C4(*v17, v18);
    result = sub_100014780(v16, type metadata accessor for ApplicationRecord);
    v39 = v7;
    v21 = v7[2];
    v20 = v7[3];
    if (v21 >= v20 >> 1)
    {
      result = sub_10006368C((v20 > 1), v21 + 1, 1);
      v7 = v39;
    }

    v7[2] = v21 + 1;
    v22 = &v7[2 * v21];
    v22[4] = v19;
    v22[5] = v18;
    v13 = 1 << *(a1 + 32);
    if (v11 >= v13)
    {
      goto LABEL_22;
    }

    v8 = v33;
    v23 = *(v33 + 8 * v14);
    if ((v23 & (1 << v11)) == 0)
    {
      goto LABEL_23;
    }

    if (v38 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v24 = v23 & (-2 << (v11 & 0x3F));
    if (v24)
    {
      v13 = __clz(__rbit64(v24)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = v14 << 6;
      v26 = v14 + 1;
      v27 = (v31 + 8 * v14);
      while (v26 < (v13 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          result = sub_1000147E0(v11, v38, 0);
          v13 = __clz(__rbit64(v28)) + v25;
          goto LABEL_4;
        }
      }

      result = sub_1000147E0(v11, v38, 0);
    }

LABEL_4:
    v12 = v37 + 1;
    v11 = v13;
    if (v37 + 1 == v32)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1000110DC(uint64_t result)
{
  if (*(result + 136))
  {
    v1 = *(result + 136);

    sub_100083E80(0xD000000000000010, 0x80000001001041A0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100012708()
{
  sub_100003C90((v0 + 16));
  v1 = *(v0 + 56);

  sub_10000A184(v0 + 64, &qword_100133CC8, &qword_1000F32F8);

  v2 = *(v0 + 112);

  v3 = *(v0 + 120);

  v4 = *(v0 + 128);

  v5 = *(v0 + 136);

  v6 = *(v0 + 144);

  v7 = *(v0 + 152);

  return v0;
}

uint64_t sub_100012780()
{
  sub_100012708();

  return swift_deallocClassInstance();
}

uint64_t sub_1000127D8()
{
  swift_beginAccess();
  v1 = *(v0 + 152);
}

unint64_t sub_100012814()
{
  result = qword_100134290;
  if (!qword_100134290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134290);
  }

  return result;
}

uint64_t sub_100012868(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003CDC(&qword_100134280, &qword_1000F39A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000128D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10001292C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v47 = &v44 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v44 - v18;
  __chkstk_darwin(v17);
  v21 = &v44 - v20;
  v65 = type metadata accessor for DriverKitDaemonSideEffects();
  v66 = &off_10012A108;
  v64[0] = a4;
  v22 = a3[13];
  v60 = a3[12];
  v61 = v22;
  v23 = a3[15];
  v62 = a3[14];
  v63 = v23;
  v24 = a3[9];
  v56 = a3[8];
  v57 = v24;
  v25 = a3[11];
  v58 = a3[10];
  v59 = v25;
  v26 = a3[5];
  v52 = a3[4];
  v53 = v26;
  v27 = a3[7];
  v54 = a3[6];
  v55 = v27;
  v28 = a3[1];
  v48 = *a3;
  v49 = v28;
  v29 = a3[3];
  v50 = a3[2];
  v51 = v29;
  v45 = a4;

  sub_100014838(a3, v67);
  v44 = a2;
  swift_getAtKeyPath();
  v67[12] = v60;
  v67[13] = v61;
  v67[14] = v62;
  v67[15] = v63;
  v67[8] = v56;
  v67[9] = v57;
  v67[10] = v58;
  v67[11] = v59;
  v67[4] = v52;
  v67[5] = v53;
  v67[6] = v54;
  v67[7] = v55;
  v67[0] = v48;
  v67[1] = v49;
  v67[2] = v50;
  v67[3] = v51;
  sub_10000A680(v67);
  if (a1 < 5)
  {
    URL.init(fileURLWithPath:)();

    if (a1 <= 1)
    {
      v30 = v47;
      if (!a1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v30 = v47;
    }

    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      URL.appendingPathExtension(_:)();

      (*(v10 + 8))(v14, v9);
      goto LABEL_12;
    }

LABEL_10:

    (*(v10 + 32))(v30, v14, v9);
LABEL_12:
    v35 = URL.path.getter();
    (*(v10 + 8))(v30, v9);
    goto LABEL_13;
  }

  v31 = *(a1 + 16);
  v32 = *(a1 + 24);
  v33 = *(a1 + 32);
  v47 = v31;
  sub_100014968(v31);

  URL.init(fileURLWithPath:)();

  URL.appendingPathExtension(_:)();

  v34 = *(v10 + 8);
  v34(v19, v9);
  v35 = URL.path.getter();
  v37 = v36;
  v34(v21, v9);
  v38 = *sub_100003C4C(v64, v65);
  sub_1000DF9D4(&v48);
  v39 = *(&v49 + 1);
  v40 = v50;
  sub_100003C4C(&v48, *(&v49 + 1));
  LOBYTE(v38) = (*(v40 + 136))(v35, v37, 0, v39, v40);
  sub_100003C90(&v48);
  if (v38)
  {
    v41 = v47;
  }

  else
  {

    v42 = v47;
    v35 = sub_10001292C(v47, v44, a3, v45, v46);
    v41 = v42;
  }

  sub_100014978(v41);
LABEL_13:
  sub_100003C90(v64);
  return v35;
}

uint64_t sub_100012DB4(uint64_t a1)
{
  v22[3] = type metadata accessor for DriverKitDaemonSideEffects();
  v22[4] = &off_10012A108;
  v22[0] = a1;
  v20 = v22;

  v2 = sub_10007B08C(sub_1000148FC, v19, &off_100126190);
  if (*(v2 + 16) == 1)
  {
    v3 = *(v2 + 32);

    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1000F3160;
    v21 = v3;
    sub_100003CDC(&qword_1001342F8, &qword_1000F3AF8);
    v5 = String.init<A>(describing:)();
    v7 = v6;
    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = sub_100003D24();
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    sub_10001491C();
    v8 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000F3160;
    v10 = Array.description.getter();
    v12 = v11;

    *(v9 + 56) = &type metadata for String;
    v13 = sub_100003D24();
    *(v9 + 64) = v13;
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    sub_10001491C();
    v14 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1000F3160;
    v16 = StaticString.description.getter();
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = v13;
    *(v15 + 32) = v16;
    *(v15 + 40) = v17;
    v8 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    v3 = 0;
  }

  sub_100003C90(v22);
  return v3;
}

uint64_t sub_100013060@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 13);
  v120 = *(a2 + 12);
  v121 = v8;
  v9 = *(a2 + 15);
  v122 = *(a2 + 14);
  v123 = v9;
  v10 = *(a2 + 9);
  v116 = *(a2 + 8);
  v117 = v10;
  v11 = *(a2 + 11);
  v118 = *(a2 + 10);
  v119 = v11;
  v12 = *(a2 + 5);
  v112 = *(a2 + 4);
  v113 = v12;
  v13 = *(a2 + 7);
  v114 = *(a2 + 6);
  v115 = v13;
  v14 = *(a2 + 1);
  v108 = *a2;
  v109 = v14;
  v15 = *(a2 + 3);
  v110 = *(a2 + 2);
  v111 = v15;
  v106 = type metadata accessor for DriverKitDaemonSideEffects();
  v107 = &off_10012A108;
  v105[0] = a1;
  v16 = *sub_100003C4C(v105, v106);
  sub_1000DF65C(v102);
  v17 = *sub_100003C4C(v102, v103);
  v18 = sub_10006AB90();
  v20 = v19;
  sub_100003C90(v102);
  v21 = *sub_100003C4C(v105, v106);
  sub_1000DF65C(v102);
  v22 = sub_10006B514();
  v24 = v23;
  sub_100003C90(v102);

  v25 = sub_100080C1C(v22, v24, v18, v20);
  if (v25 == 5)
  {
    v26 = 0;
  }

  else
  {
    v26 = v25;
  }

  KeyPath = swift_getKeyPath();
  v28 = sub_100003C4C(v105, v106);
  v29 = sub_10001292C(v26, KeyPath, a2, *v28, v26);
  v96 = v30;
  v97 = v29;

  v31 = swift_getKeyPath();
  v32 = sub_100003C4C(v105, v106);
  v33 = sub_10001292C(v26, v31, a2, *v32, v26);
  v94 = v34;
  v95 = v33;

  v35 = *sub_100003C4C(v105, v106);
  sub_1000DF65C(v102);
  v36 = *sub_100003C4C(v102, v103);
  if (sub_10006A9B0())
  {
    sub_100003C90(v102);
  }

  else
  {
    v37 = *sub_100003C4C(v105, v106);
    sub_1000DF65C(v100);
    v38 = *sub_100003C4C(v100, v101);
    LOBYTE(v38) = sub_10006A9CC();
    sub_100003C90(v100);
    sub_100003C90(v102);
    if ((v38 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v39 = *sub_100003C4C(v105, v106);
  sub_1000DF65C(v102);
  v40 = *sub_100003C4C(v102, v103);
  sub_10006A9E8();
  sub_100003C90(v102);
LABEL_8:
  v41 = swift_getKeyPath();
  v42 = sub_100003C4C(v105, v106);
  v98 = v26;
  v43 = sub_10001292C(v26, v41, a2, *v42, v26);
  v92 = v44;
  v93 = v43;

  v45 = *sub_100003C4C(v105, v106);
  sub_1000E05F8(v102);
  sub_100003C90(v102);
  v46 = *sub_100003C4C(v105, v106);
  sub_1000DF65C(v102);
  v47 = *sub_100003C4C(v102, v103);
  LOBYTE(v47) = sub_10006AA04();
  sub_100003C90(v102);
  if (v47)
  {
    v48 = 1645;
  }

  else
  {
    v48 = 1632;
  }

  v49 = v48 | a3;
  v50 = *sub_100003C4C(v105, v106);
  sub_1000DF65C(v102);
  v51 = *sub_100003C4C(v102, v103);
  if (sub_10006A9B0())
  {
    sub_100003C90(v102);
  }

  else
  {
    v52 = *sub_100003C4C(v105, v106);
    sub_1000DF65C(v100);
    v53 = *sub_100003C4C(v100, v101);
    LOBYTE(v53) = sub_10006A9CC();
    sub_100003C90(v100);
    sub_100003C90(v102);
    if ((v53 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v49 |= 0x4000Cu;
LABEL_15:
  if (qword_100133B38 != -1)
  {
    swift_once();
  }

  v54 = byte_100138870;
  v100[0] = a2[14];
  v99 = v100[0];
  v55 = a2[18];
  sub_100014894(v100, v102, &qword_100136C80, &qword_1000F39B0);

  sub_100030728(v56);
  sub_100003CDC(&qword_1001342F0, &qword_1000F3AB0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1000F3160;
  v58 = a2[22];
  *(v57 + 32) = a2[21];
  *(v57 + 40) = v58;

  sub_100030728(v57);
  v59 = *sub_100003C4C(v105, v106);
  sub_1000DF65C(v102);
  v60 = sub_10006C000();
  v62 = v61;
  sub_100003C90(v102);
  if (v62 < 2 || (v63 = *sub_100003C4C(v105, v106), sub_1000DF65C(v102), v91 = sub_10006C000(), v65 = v64, sub_100003C90(v102), v90 = v65, v65 < 2))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {

    if (v60 == 0x34365F363878 && v62 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_10009C570(&off_100126140);
    }

    v66 = v49 & 0xFFDFFFFF;
    if (!v54)
    {
      v66 = v49;
    }

    v89 = v66;
    v67 = *sub_100003C4C(v105, v106);
    sub_1000E043C(v102);
    v68 = v103;
    v69 = v104;
    sub_100003C4C(v102, v103);
    v70 = (*(v69 + 8))(47, 0xE100000000000000, v68, v69);
    v72 = v71;
    sub_100003C90(v102);
    v73 = sub_100003C4C(v105, v106);
    v88 = sub_100012DB4(*v73);
    v74 = *a2;
    v76 = a2[8];
    v75 = a2[9];
    v77 = a2[17];
    v78 = a2[29];

    result = sub_100003C90(v105);
    *a4 = v74;
    *(a4 + 8) = v97;
    *(a4 + 16) = v96;
    *(a4 + 24) = v93;
    *(a4 + 32) = v92;
    *(a4 + 40) = v95;
    *(a4 + 48) = v94;
    *(a4 + 56) = v76;
    *(a4 + 64) = v75;
    *(a4 + 72) = v99;
    *(a4 + 80) = &_swiftEmptySetSingleton;
    *(a4 + 88) = &_swiftEmptySetSingleton;
    *(a4 + 96) = v77;
    *(a4 + 104) = v60;
    *(a4 + 112) = v62;
    *(a4 + 120) = v91;
    *(a4 + 128) = v90;
    *(a4 + 136) = v98;
    *(a4 + 144) = 47;
    *(a4 + 152) = 0xE100000000000000;
    *(a4 + 160) = _swiftEmptyArrayStorage;
    *(a4 + 168) = _swiftEmptyArrayStorage;
    *(a4 + 176) = v70;
    *(a4 + 184) = v72;
    v80 = v121;
    *(a4 + 384) = v120;
    *(a4 + 400) = v80;
    v81 = v123;
    *(a4 + 416) = v122;
    *(a4 + 432) = v81;
    v82 = v117;
    *(a4 + 320) = v116;
    *(a4 + 336) = v82;
    v83 = v119;
    *(a4 + 352) = v118;
    *(a4 + 368) = v83;
    v84 = v113;
    *(a4 + 256) = v112;
    *(a4 + 272) = v84;
    v85 = v115;
    *(a4 + 288) = v114;
    *(a4 + 304) = v85;
    v86 = v109;
    *(a4 + 192) = v108;
    *(a4 + 208) = v86;
    v87 = v111;
    *(a4 + 224) = v110;
    *(a4 + 240) = v87;
    *(a4 + 448) = v78;
    *(a4 + 456) = 0u;
    *(a4 + 472) = 0u;
    *(a4 + 488) = 0u;
    *(a4 + 504) = 0u;
    *(a4 + 520) = 0u;
    *(a4 + 536) = 0u;
    *(a4 + 552) = 0u;
    *(a4 + 568) = 0u;
    *(a4 + 584) = 0;
    *(a4 + 592) = v89;
    *(a4 + 596) = v88;
  }

  return result;
}

uint64_t sub_1000139A8(void *a1, uint64_t a2, uint64_t a3)
{
  v97 = a3;
  v98 = a2;
  v100 = a1;
  v3 = sub_100003CDC(&qword_1001342D8, &unk_100101820);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v96 = &v89 - v5;
  v6 = sub_100003CDC(&qword_1001342E0, &unk_1000F3A30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v99 = &v89 - v8;
  v9 = sub_100003CDC(&qword_1001342E8, &qword_1000F4F50);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v89 - v11;
  v13 = type metadata accessor for DriverBinEntry();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v89 - v18;
  v20 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v89 - v22;
  v24 = type metadata accessor for URL();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = *v100;
  sub_1000138F8(v100[3] + 24, v101);
  if (!v102)
  {
    v91 = v12;
    v92 = v13;
    v90 = v17;
    v93 = v19;
    v94 = v28;
    sub_100009F34(v101, v103);
    v29 = v104;
    v30 = v105;
    v95 = v25;
    sub_100003C4C(v103, v104);
    v31 = *(v30 + 64);
    v32 = v30;
    v33 = v106;
    v34 = v95;
    v31(v29, v32);
    (*(v34 + 56))(v23, 0, 1, v24);
    sub_100003C90(v103);
    if ((*(v34 + 48))(v23, 1, v24) == 1)
    {
      goto LABEL_4;
    }

    v46 = v94;
    v47 = (*(v34 + 32))();
    __chkstk_darwin(v47);
    *(&v89 - 2) = v46;
    v48 = sub_10004C8C4(sub_100014818, (&v89 - 4), v98);
    v49 = v99;
    sub_10005B834(v48, v99);
    v50 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
    if ((*(*(v50 - 8) + 48))(v49, 1, v50) == 1)
    {

      sub_10000A184(v49, &qword_1001342E0, &unk_1000F3A30);
      (*(v34 + 8))(v46, v24);
      return 1;
    }

    v106 = v33;
    v98 = *(v50 + 48);
    v89 = *(v9 + 48);
    v51 = type metadata accessor for UUID();
    v52 = *(v51 - 8);
    v53 = v91;
    (*(v52 + 32))(v91, v49, v51);
    sub_1000145AC(v49 + v98, &v53[v89], type metadata accessor for DriverBinEntry);
    sub_1000145AC(&v53[*(v9 + 48)], v93, type metadata accessor for DriverBinEntry);
    result = (*(v52 + 8))(v53, v51);
    v54 = *(v97 + 128);
    if (!v54)
    {
      __break(1u);
      return result;
    }

    v55 = *(v97 + 128);

    v56 = *(v54 + 88);
    v57 = v90;
    v58 = v92;
    v59 = v96;
    if (v56)
    {
      v60 = *(v54 + 88);
    }

    else
    {
      sub_10001B0B4();
      v56 = v61;
      v62 = *(v54 + 88);
      *(v54 + 88) = v61;

      v34 = v95;
    }

    v63 = v93;
    v64 = type metadata accessor for ApplicationRecord(0);
    v65 = v64;
    if (*(v56 + 16) && (v66 = (v63 + *(v58 + 20) + *(v64 + 32)), v67 = sub_1000618A8(*v66, v66[1]), (v68 & 1) != 0))
    {
      v69 = *(v65 - 8);
      sub_100014718(*(v56 + 56) + *(v69 + 72) * v67, v59, type metadata accessor for ApplicationRecord);

      v70 = 1;
      (*(v69 + 56))(v59, 0, 1, v65);
      v34 = v95;
      sub_10000A184(v59, &qword_1001342D8, &unk_100101820);
      sub_100014780(v63, type metadata accessor for DriverBinEntry);
    }

    else
    {

      (*(*(v65 - 8) + 56))(v59, 1, 1, v65);
      sub_10000A184(v59, &qword_1001342D8, &unk_100101820);
      if (qword_100133AD0 != -1)
      {
        swift_once();
      }

      v71 = type metadata accessor for Logger();
      sub_1000144F0(v71, qword_10014E9B0);
      sub_100014718(v63, v57, type metadata accessor for DriverBinEntry);
      v72 = v100;

      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v106 = v76;
        *&v101[0] = v76;
        *v75 = 136315394;
        v77 = v72[3];
        v78 = sub_1000D77B8(v76);
        v80 = v57;
        v81 = sub_1000E3AF8(v78, v79, v101);

        *(v75 + 4) = v81;
        *(v75 + 12) = 2080;
        v82 = *(v92 + 28);
        sub_100014614(&qword_1001342A0, &type metadata accessor for URL);
        v83 = dispatch thunk of CustomStringConvertible.description.getter();
        v85 = v84;
        sub_100014780(v80, type metadata accessor for DriverBinEntry);
        v86 = sub_1000E3AF8(v83, v85, v101);
        v87 = v94;

        *(v75 + 14) = v86;
        _os_log_impl(&_mh_execute_header, v73, v74, "Omitting third party driver %s at %s: app is not installed", v75, 0x16u);
        swift_arrayDestroy();

        v34 = v95;

        sub_100014780(v93, type metadata accessor for DriverBinEntry);
        v88 = v87;
        v70 = 0;
LABEL_24:
        (*(v34 + 8))(v88, v24);
        return v70;
      }

      sub_100014780(v57, type metadata accessor for DriverBinEntry);
      sub_100014780(v63, type metadata accessor for DriverBinEntry);
      v70 = 0;
    }

    v88 = v94;
    goto LABEL_24;
  }

  sub_100013954(v101);
  (*(v25 + 56))(v23, 1, 1, v24);
LABEL_4:
  sub_10000A184(v23, &unk_1001389D0, &qword_1000F4F60);
  if (qword_100133AD0 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_1000144F0(v35, qword_10014E9B0);
  v36 = v100;

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *&v101[0] = v40;
    *v39 = 136315138;
    v41 = v36[3];
    v42 = sub_1000D77B8(v40);
    v44 = sub_1000E3AF8(v42, v43, v101);

    *(v39 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v37, v38, "Omitting driver %s: does not have a bundle", v39, 0xCu);
    sub_100003C90(v40);
  }

  return 0;
}

unint64_t sub_10001449C()
{
  result = qword_1001372E0;
  if (!qword_1001372E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001372E0);
  }

  return result;
}

uint64_t sub_1000144F0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100014528(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000128D8(a1, a2);
  }

  return a1;
}

uint64_t sub_100014544(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001455C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100009FA4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000145AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100014614(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000146B0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000146C4(a1, a2);
  }

  return a1;
}

uint64_t sub_1000146C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100014718(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100014780(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000147E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1000147EC@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1000D7374();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_100014894(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003CDC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_10001491C()
{
  result = qword_100133C50;
  if (!qword_100133C50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100133C50);
  }

  return result;
}

unint64_t sub_100014968(unint64_t result)
{
  if (result >= 5)
  {
  }

  return result;
}

unint64_t sub_100014978(unint64_t result)
{
  if (result >= 5)
  {
  }

  return result;
}

void sub_1000149AC(uint64_t a1)
{
  v2 = *v1;
  if (a1)
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v2 setArguments:isa];
}

void sub_100014A24(uint64_t a1)
{
  v2 = *v1;
  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v2 _setAdditionalEnvironment:isa];
}

void sub_100014AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = *v5;
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  [v7 *a5];
}

id sub_100014B6C()
{
  v3 = 0;
  if ([v0 execute:&v3])
  {
    return v3;
  }

  v2 = v3;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_100014C14@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v3 identityForDextWithServerName:v4 tagString:v5 containingAppBundleID:v6];

  result = sub_100009FEC(0, &qword_1001343B8, RBSProcessIdentity_ptr);
  a1[3] = result;
  a1[4] = &off_100126F50;
  *a1 = v7;
  return result;
}

uint64_t sub_100014CEC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_10000A990(a1, v6);
  sub_100003CDC(&qword_1001343B0, &unk_1000F3C60);
  sub_100009FEC(0, &qword_1001343B8, RBSProcessIdentity_ptr);
  swift_dynamicCast();
  v3 = v7;
  v4 = [objc_opt_self() contextWithIdentity:v7];

  result = sub_100009FEC(0, &qword_1001343A0, RBSLaunchContext_ptr);
  a2[3] = result;
  a2[4] = &off_100126F58;
  *a2 = v4;
  return result;
}

uint64_t sub_100014DD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_10000A990(a1, v6);
  sub_100003CDC(&qword_100134398, &qword_1000F3C58);
  sub_100009FEC(0, &qword_1001343A0, RBSLaunchContext_ptr);
  swift_dynamicCast();
  v3 = v7;
  v4 = [objc_allocWithZone(RBSLaunchRequest) initWithContext:v7];

  result = sub_100009FEC(0, &qword_1001343A8, RBSLaunchRequest_ptr);
  a2[3] = result;
  a2[4] = &off_100126FF0;
  *a2 = v4;
  return result;
}

uint64_t sub_100014ED8()
{
  sub_10001449C();
  swift_allocError();
  *v0 = 0xD00000000000004ELL;
  *(v0 + 8) = 0x8000000100104550;
  *(v0 + 16) = v2;
  *(v0 + 32) = v3;
  *(v0 + 48) = v4;
  *(v0 + 64) = v5;
  *(v0 + 72) = 50;
  return swift_willThrow();
}

uint64_t sub_100014F68()
{
  sub_10001449C();
  swift_allocError();
  *v0 = 0xD000000000000031;
  *(v0 + 8) = 0x8000000100104510;
  *(v0 + 16) = v2;
  *(v0 + 32) = v3;
  *(v0 + 48) = v4;
  *(v0 + 64) = v5;
  *(v0 + 72) = 50;
  return swift_willThrow();
}

uint64_t sub_100014FF8()
{
  sub_10001449C();
  swift_allocError();
  *v0 = 0xD000000000000030;
  *(v0 + 8) = 0x80000001001044D0;
  *(v0 + 16) = v2;
  *(v0 + 32) = v3;
  *(v0 + 48) = v4;
  *(v0 + 64) = v5;
  *(v0 + 72) = 50;
  return swift_willThrow();
}

uint64_t sub_100015088(uint64_t a1, unint64_t a2)
{

  if ((a2 & 0x1000000000000000) != 0)
  {
    a1 = sub_100076E30();
    v8 = v7;

    a2 = v8;
    if ((v8 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a2 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v5 = a1 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
LABEL_66:
      v4 = _StringObject.sharedUTF8.getter();
    }

    sub_1000155A8(v4, v5, v48);

    return v48[0];
  }

  v48[0] = a1;
  v48[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if ((a2 & 0x100000000000000) != 0)
  {
    goto LABEL_57;
  }

  v9 = HIBYTE(a2) & 0xF;
  v6 = sub_100015AB0(v9 >> 1);
  v11 = v10;
  if (v9)
  {
    v12 = 0;
    do
    {
      if (__OFADD__(v12, 2))
      {
        v13 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12 + 2;
      }

      v14 = *(v48 + v12);
      if ((v14 - 58) > 0xF5u)
      {
        v15 = -48;
      }

      else if ((v14 - 103) > 0xF9u)
      {
        v15 = -87;
      }

      else
      {
        if ((v14 - 71) < 0xFAu)
        {
          goto LABEL_56;
        }

        v15 = -55;
      }

      v16 = *(v48 + v12 + 1);
      if ((v16 - 58) > 0xF5u)
      {
        v17 = -48;
      }

      else if ((v16 - 103) > 0xF9u)
      {
        v17 = -87;
      }

      else
      {
        if ((v16 - 71) < 0xFAu)
        {
          goto LABEL_56;
        }

        v17 = -55;
      }

      v18 = v12 / 2;
      v19 = (v16 + v17) | (16 * (v14 + v15));
      v20 = v11 >> 62;
      if ((v11 >> 62) > 1)
      {
        if (v20 != 2)
        {
          goto LABEL_69;
        }

        if (v18 < *(v6 + 16))
        {
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        if (v18 >= *(v6 + 24))
        {
          goto LABEL_63;
        }

        v21 = v11 & 0x3FFFFFFFFFFFFFFFLL;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = *(v6 + 16);
          v23 = *(v6 + 24);
          if (__DataStorage._bytes.getter())
          {
            if (__OFSUB__(v22, __DataStorage._offset.getter()))
            {
              goto LABEL_68;
            }

            if (__OFSUB__(v23, v22))
            {
              goto LABEL_65;
            }
          }

          else if (__OFSUB__(v23, v22))
          {
            goto LABEL_65;
          }

          v32 = type metadata accessor for __DataStorage();
          v33 = *(v32 + 48);
          v34 = *(v32 + 52);
          swift_allocObject();
          v35 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v21 = v35;
          v9 = HIBYTE(a2) & 0xF;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = *(v6 + 16);
          v37 = *(v6 + 24);
          type metadata accessor for Data.RangeReference();
          v38 = swift_allocObject();
          *(v38 + 16) = v36;
          *(v38 + 24) = v37;
          v9 = HIBYTE(a2) & 0xF;

          v6 = v38;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v39 = __DataStorage._bytes.getter();
        if (!v39)
        {
          goto LABEL_71;
        }

        v40 = v39;
        v11 = v21;
        v41 = __DataStorage._offset.getter();
        if (__OFSUB__(v18, v41))
        {
          __break(1u);
LABEL_56:
          sub_1000128D8(v6, v11);
LABEL_57:
          v6 = 0;
          break;
        }

        *(v40 + v18 - v41) = v19;
        v11 = v21 | 0x8000000000000000;
      }

      else if (v20)
      {
        if (v18 >= v6 >> 32 || v18 < v6)
        {
          goto LABEL_62;
        }

        v24 = v11 & 0x3FFFFFFFFFFFFFFFLL;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
          {
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
          }

          v25 = type metadata accessor for __DataStorage();
          v26 = *(v25 + 48);
          v27 = *(v25 + 52);
          swift_allocObject();
          v28 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v24 = v28;
          v9 = HIBYTE(a2) & 0xF;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v29 = __DataStorage._bytes.getter();
        if (!v29)
        {
          goto LABEL_70;
        }

        v30 = v29;
        v31 = __DataStorage._offset.getter();
        if (__OFSUB__(v18, v31))
        {
          goto LABEL_64;
        }

        *(v30 + v18 - v31) = v19;
        v11 = v24 | 0x4000000000000000;
      }

      else
      {
        v44 = v6;
        LOWORD(v45) = v11;
        BYTE2(v45) = BYTE2(v11);
        HIBYTE(v45) = BYTE3(v11);
        LOBYTE(v46) = BYTE4(v11);
        HIBYTE(v46) = BYTE5(v11);
        v47 = BYTE6(v11);
        if (v18 >= BYTE6(v11))
        {
          goto LABEL_61;
        }

        *(&v44 + v18) = v19;
        v6 = v44;
        v11 = v43 & 0xF00000000000000 | v45 | ((v46 | (v47 << 16)) << 32);
        v43 = v11;
      }

      v12 = v13;
    }

    while (v13 < v9);
  }

  return v6;
}

unint64_t sub_1000155A8@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v43 = result;
  if (a2)
  {
    goto LABEL_58;
  }

  if (!a2)
  {
    v9 = 0;
    v10 = 0xC000000000000000;
    goto LABEL_59;
  }

  v4 = a2 >> 1;
  if (a2 >> 1 <= 14)
  {
    result = sub_1000D5744(a2 >> 1);
    v9 = result;
    v10 = v11 & 0xFFFFFFFFFFFFFFLL;
    if (v3 <= 0)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v5 = type metadata accessor for __DataStorage();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    result = __DataStorage.init(length:)();
    v8 = result;
    if (v4 > 0x7FFFFFFE)
    {
      type metadata accessor for Data.RangeReference();
      result = swift_allocObject();
      v9 = result;
      *(result + 16) = 0;
      *(result + 24) = v4;
      v10 = v8 | 0x8000000000000000;
    }

    else
    {
      v9 = v3 << 31;
      v10 = result | 0x4000000000000000;
    }
  }

  v12 = 0;
  v41 = v3;
  while (1)
  {
    v13 = __OFADD__(v12, 2) ? 0x7FFFFFFFFFFFFFFFLL : v12 + 2;
    v14 = *(v43 + v12);
    if ((v14 - 58) > 0xF5u)
    {
      v15 = -48;
    }

    else if ((v14 - 103) > 0xF9u)
    {
      v15 = -87;
    }

    else
    {
      if ((v14 - 71) < 0xFAu)
      {
        goto LABEL_57;
      }

      v15 = -55;
    }

    v16 = *(v43 + 1 + v12);
    if ((v16 - 58) > 0xF5u)
    {
      v17 = -48;
    }

    else if ((v16 - 103) > 0xF9u)
    {
      v17 = -87;
    }

    else
    {
      if ((v16 - 71) < 0xFAu)
      {
        goto LABEL_57;
      }

      v17 = -55;
    }

    v18 = v12 / 2;
    v19 = (v16 + v17) | (16 * (v14 + v15));
    v20 = v10 >> 62;
    if ((v10 >> 62) > 1)
    {
      break;
    }

    if (v20)
    {
      if (v18 >= v9 >> 32 || v18 < v9)
      {
        goto LABEL_62;
      }

      v24 = v10 & 0x3FFFFFFFFFFFFFFFLL;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {

        if (__DataStorage._bytes.getter() && __OFSUB__(v9, __DataStorage._offset.getter()))
        {
          goto LABEL_66;
        }

        v25 = type metadata accessor for __DataStorage();
        v26 = *(v25 + 48);
        v27 = *(v25 + 52);
        swift_allocObject();
        v28 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

        v24 = v28;
        v3 = v41;
      }

      __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
      v29 = __DataStorage._bytes.getter();
      if (!v29)
      {
        goto LABEL_69;
      }

      v30 = v29;
      result = __DataStorage._offset.getter();
      if (__OFSUB__(v18, result))
      {
        goto LABEL_64;
      }

      *(v30 + v18 - result) = v19;
      v10 = v24 | 0x4000000000000000;
    }

    else
    {
      v44 = v9;
      LOWORD(v45) = v10;
      BYTE2(v45) = BYTE2(v10);
      HIBYTE(v45) = BYTE3(v10);
      LOBYTE(v46) = BYTE4(v10);
      HIBYTE(v46) = BYTE5(v10);
      v47 = BYTE6(v10);
      if (v18 >= BYTE6(v10))
      {
        goto LABEL_61;
      }

      *(&v44 + v18) = v19;
      v9 = v44;
      v10 = v42 & 0xF00000000000000 | v45 | ((v46 | (v47 << 16)) << 32);
      v42 = v10;
    }

LABEL_11:
    v12 = v13;
    if (v13 >= v3)
    {
      goto LABEL_59;
    }
  }

  if (v20 != 2)
  {
    goto LABEL_68;
  }

  if (v18 < *(v9 + 16))
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
  }

  if (v18 >= *(v9 + 24))
  {
    goto LABEL_63;
  }

  v21 = v10 & 0x3FFFFFFFFFFFFFFFLL;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = *(v9 + 16);
    v22 = *(v9 + 24);
    if (__DataStorage._bytes.getter())
    {
      if (__OFSUB__(v23, __DataStorage._offset.getter()))
      {
        goto LABEL_67;
      }

      if (__OFSUB__(v22, v23))
      {
        goto LABEL_65;
      }
    }

    else if (__OFSUB__(v22, v23))
    {
      goto LABEL_65;
    }

    v31 = type metadata accessor for __DataStorage();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    v34 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v21 = v34;
    v3 = v41;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v35 = *(v9 + 16);
    v36 = *(v9 + 24);
    type metadata accessor for Data.RangeReference();
    v37 = swift_allocObject();
    *(v37 + 16) = v35;
    *(v37 + 24) = v36;

    v9 = v37;
  }

  __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
  v38 = __DataStorage._bytes.getter();
  if (!v38)
  {
    goto LABEL_70;
  }

  v39 = v38;
  result = __DataStorage._offset.getter();
  if (!__OFSUB__(v18, result))
  {
    *(v39 + v18 - result) = v19;
    v10 = v21 | 0x8000000000000000;
    goto LABEL_11;
  }

  __break(1u);
LABEL_57:
  result = sub_1000128D8(v9, v10);
LABEL_58:
  v9 = 0;
  v10 = 0xF000000000000000;
LABEL_59:
  *a3 = v9;
  a3[1] = v10;
  return result;
}

uint64_t sub_100015AB0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_1000D5744(result);
    }

    else
    {
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_100015B50(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for TelemetryReportExtension(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v19[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_10001610C(a1, a2, a3, v13);
  v14 = type metadata accessor for DriverApprovalEvent(0);
  v19[3] = v14;
  v19[4] = &off_100127108;
  v15 = sub_1000193A4(v19);
  sub_100018328(v13, v15);
  v16 = (v15 + *(v14 + 20));
  *v16 = 0xD00000000000001FLL;
  v16[1] = 0x80000001001045C0;
  (*(a5 + 8))(v19, a4, a5);
  sub_10001838C(v13);
  return sub_100003C90(v19);
}

unint64_t sub_100015C8C(char a1)
{
  result = 0xD00000000000001ALL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000019;
      break;
    case 4:
    case 13:
      result = 0xD00000000000001ELL;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0xD00000000000001BLL;
      break;
    case 10:
      result = 0xD00000000000001DLL;
      break;
    case 11:
      result = 0xD00000000000001FLL;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0xD000000000000022;
      break;
    case 15:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100015E3C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100015C8C(*a1);
  v5 = v4;
  if (v3 == sub_100015C8C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100015EC4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100015C8C(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100015F28()
{
  sub_100015C8C(*v0);
  String.hash(into:)();
}

Swift::Int sub_100015F7C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100015C8C(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100015FDC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001976C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10001600C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100015C8C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100016054@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10001976C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100016094(uint64_t a1)
{
  v2 = sub_100019408();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000160D0(uint64_t a1)
{
  v2 = sub_100019408();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001610C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v84 = a2;
  v7 = sub_100003CDC(&qword_1001343C0, &unk_1000F3C90);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v82 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 24);

  v17 = sub_1000D7374();
  v19 = v18;

  *a4 = v17;
  *(a4 + 8) = v19;
  v20 = *(a1 + 24);

  v21 = sub_1000D7614();
  v23 = v22;

  *(a4 + 16) = v21;
  *(a4 + 24) = v23;
  sub_1000138F8(*(a1 + 24) + 24, &v86);
  if (v88)
  {
    sub_100013954(&v86);
    v24 = 0;
    v25 = 0;
  }

  else
  {
    sub_100009F34(&v86, v89);
    v26 = v90;
    v27 = v91;
    sub_100003C4C(v89, v90);
    (*(v27 + 64))(v26, v27);
    v24 = URL.lastPathComponent.getter();
    v25 = v28;
    (*(v12 + 8))(v15, v11);
    sub_100003C90(v89);
  }

  *(a4 + 32) = v24;
  *(a4 + 40) = v25;
  sub_1000138F8(*(a1 + 24) + 24, &v86);
  if (v88)
  {
    sub_100013954(&v86);
    v29 = 0;
    v30 = 0;
  }

  else
  {
    sub_100009F34(&v86, v89);
    v31 = v90;
    v32 = v91;
    sub_100003C4C(v89, v90);
    (*(v32 + 64))(v31, v32);
    v29 = URL.path.getter();
    v30 = v33;
    (*(v12 + 8))(v15, v11);
    sub_100003C90(v89);
  }

  *(a4 + 48) = v29;
  *(a4 + 56) = v30;
  sub_1000138F8(*(a1 + 24) + 24, &v86);
  if (v88)
  {
    sub_100013954(&v86);
    v34 = 0;
    v35 = 0;
  }

  else
  {
    sub_100009F34(&v86, v89);
    v36 = v90;
    v37 = v91;
    sub_100003C4C(v89, v90);
    v34 = (*(v37 + 56))(v36, v37);
    v35 = v38;
    sub_100003C90(v89);
  }

  v85 = v12;
  v83 = v11;
  *(a4 + 64) = v34;
  *(a4 + 72) = v35;
  v39 = *(a1 + 24);

  v40 = sub_1000D790C();

  *(a4 + 80) = v40 & 1;
  sub_100014894(a1 + 32, &v86, &unk_100137390, &unk_1000F4E70);
  if (v87)
  {
    v41 = sub_100003C4C(&v86, v87);
    v43 = *(*v41 + 40);
    v42 = *(*v41 + 48);
    sub_1000146C4(v43, v42);
    v89[0] = sub_10005BD44(v43, v42);
    sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
    sub_100018594();
    v44 = BidirectionalCollection<>.joined(separator:)();
    v46 = v45;
    sub_1000128D8(v43, v42);

    sub_100003C90(&v86);
  }

  else
  {
    sub_10000A184(&v86, &unk_100137390, &unk_1000F4E70);
    v44 = 0;
    v46 = 0;
  }

  *(a4 + 88) = v44;
  *(a4 + 96) = v46;
  sub_100014894(a1 + 32, &v86, &unk_100137390, &unk_1000F4E70);
  if (v87)
  {
    v47 = sub_100003C4C(&v86, v87);
    v48 = *(*v47 + 32);
    if (v48 >= 2)
    {
      v49 = *(*v47 + 24);
      v51 = *(*v47 + 32);
    }

    else
    {
      v49 = 0;
      v48 = 0;
    }

    v50 = v85;
    sub_100003C90(&v86);
  }

  else
  {
    sub_10000A184(&v86, &unk_100137390, &unk_1000F4E70);
    v49 = 0;
    v48 = 0;
    v50 = v85;
  }

  *(a4 + 104) = v49;
  *(a4 + 112) = v48;
  sub_100014894(a1 + 32, &v86, &unk_100137390, &unk_1000F4E70);
  if (v87)
  {
    v52 = sub_100003C4C(&v86, v87);
    v54 = *(*v52 + 72);
    v53 = *(*v52 + 80);

    sub_100003C90(&v86);
  }

  else
  {
    sub_10000A184(&v86, &unk_100137390, &unk_1000F4E70);
    v54 = 0;
    v53 = 0;
  }

  *(a4 + 120) = v54;
  *(a4 + 128) = v53;
  sub_100014894(a1 + 32, &v86, &unk_100137390, &unk_1000F4E70);
  if (v87)
  {
    v55 = sub_100003C4C(&v86, v87);
    v57 = *(*v55 + 88);
    v56 = *(*v55 + 96);

    sub_100003C90(&v86);
  }

  else
  {
    sub_10000A184(&v86, &unk_100137390, &unk_1000F4E70);
    v57 = 0;
    v56 = 0;
  }

  *(a4 + 136) = v57;
  *(a4 + 144) = v56;
  sub_100014894(a1 + 32, &v86, &unk_100137390, &unk_1000F4E70);
  if (v87)
  {
    v58 = sub_100003C4C(&v86, v87);
    sub_100014894(*v58 + OBJC_IVAR____TtC10driverkitd19RealCodeSigningInfo_signingTime, v10, &qword_1001343C0, &unk_1000F3C90);
    sub_100003C90(&v86);
  }

  else
  {
    sub_10000A184(&v86, &unk_100137390, &unk_1000F4E70);
    v59 = type metadata accessor for Date();
    (*(*(v59 - 8) + 56))(v10, 1, 1, v59);
  }

  v60 = type metadata accessor for TelemetryReportExtension(0);
  sub_100018524(v10, a4 + v60[14]);
  v61 = *(a1 + 72);
  if (v61 > 2)
  {
    if (v61 == 3)
    {
      v62 = 0x8000000100104650;
      v63 = (a4 + v60[15]);
      v64 = 0xD000000000000021;
    }

    else if (v61 == 4)
    {
      v62 = 0x8000000100104630;
      v63 = (a4 + v60[15]);
      v64 = 0xD00000000000001ELL;
    }

    else
    {
      v62 = 0x80000001001045E0;
      v63 = (a4 + v60[15]);
      v64 = 0xD000000000000026;
    }
  }

  else
  {
    if (!*(a1 + 72))
    {
      v65 = (a4 + v60[15]);
      *v65 = 0;
      v65[1] = 0;
      goto LABEL_40;
    }

    if (v61 != 1)
    {
      *(a4 + v60[15]) = xmmword_1000F3C70;
      goto LABEL_40;
    }

    v62 = 0x8000000100104680;
    v63 = (a4 + v60[15]);
    v64 = 0xD00000000000001ALL;
  }

  *v63 = v64;
  v63[1] = v62;
LABEL_40:
  v66 = *(a1 + OBJC_IVAR____TtC10driverkitd12RealizedInfo_bundleArches);
  if (v66)
  {
    *(a4 + v60[16]) = *(v66 + 16) > 1uLL;
    *&v86 = v66;

    sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
    sub_100018594();
    v67 = BidirectionalCollection<>.joined(separator:)();
    v69 = v68;

    v70 = (a4 + v60[17]);
    *v70 = v67;
    v70[1] = v69;
  }

  else
  {
    *(a4 + v60[16]) = 2;
    v71 = (a4 + v60[17]);
    *v71 = 0;
    v71[1] = 0;
  }

  sub_100024FF4(v84, a3, 0xD000000000000012, 0x8000000100104610, &v86);

  if (!v87)
  {
    goto LABEL_48;
  }

  sub_100003CDC(&unk_1001389A0, &qword_1000F96A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_49:
    v73 = 0;
    goto LABEL_52;
  }

  v50 = v89[0];
  v72 = *(v89[0] + 16);
  if (v72 < 2)
  {

    v73 = 0;
  }

  else
  {
    v73 = sub_10003245C(*(v89[0] + 16), 0);
    v74 = sub_100059848(&v86, v73 + 4, v72, v50);
    sub_1000145A4();
    if (v74 != v72)
    {
      __break(1u);
LABEL_48:
      sub_10000A184(&v86, &qword_1001343C8, &unk_1000F3CA0);
      goto LABEL_49;
    }
  }

  v50 = v85;
LABEL_52:
  *(a4 + v60[18]) = v73;
  sub_1000138F8(*(a1 + 24) + 24, &v86);
  if (v88)
  {
    sub_100013954(&v86);

    v76 = 0;
    v77 = 0;
  }

  else
  {
    sub_100009F34(&v86, v89);
    v78 = v90;
    v79 = v91;
    sub_100003C4C(v89, v90);
    (*(v79 + 64))(v78, v79);
    v76 = URL.path.getter();
    v77 = v80;

    (*(v50 + 8))(v15, v83);
    result = sub_100003C90(v89);
  }

  v81 = (a4 + v60[19]);
  *v81 = v76;
  v81[1] = v77;
  return result;
}

unint64_t sub_100016A9C()
{
  v1 = v0;
  v2 = sub_100003CDC(&qword_1001343C0, &unk_1000F3C90);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v58 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10003E208(_swiftEmptyArrayStorage);
  v12 = *v1;
  v13 = v1[1];
  v62 = &type metadata for String;
  *&v61 = v12;
  *(&v61 + 1) = v13;
  sub_10000B48C(&v61, v60);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v59 = v11;
  sub_100038954(v60, 0xD00000000000001ALL, 0x80000001001034D0, isUniquelyReferenced_nonNull_native);
  v15 = v59;
  v16 = v1[3];
  if (v16)
  {
    v17 = v1[2];
    v62 = &type metadata for String;
    *&v61 = v17;
    *(&v61 + 1) = v16;
    sub_10000B48C(&v61, v60);

    v18 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v15;
    sub_100038954(v60, 0xD000000000000019, 0x80000001001034F0, v18);
    v15 = v59;
  }

  v19 = v1[5];
  if (v19)
  {
    v20 = v1[4];
    v62 = &type metadata for String;
    *&v61 = v20;
    *(&v61 + 1) = v19;
    sub_10000B48C(&v61, v60);

    v21 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v15;
    sub_100038954(v60, 0xD00000000000001ALL, 0x8000000100103510, v21);
    v15 = v59;
  }

  v22 = v1[7];
  if (v22)
  {
    v23 = v1[6];
    v62 = &type metadata for String;
    *&v61 = v23;
    *(&v61 + 1) = v22;
    sub_10000B48C(&v61, v60);

    v24 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v15;
    sub_100038954(v60, 0xD00000000000001ALL, 0x8000000100103530, v24);
    v15 = v59;
  }

  v25 = v1[9];
  if (v25)
  {
    v26 = v1[8];
    v62 = &type metadata for String;
    *&v61 = v26;
    *(&v61 + 1) = v25;
    sub_10000B48C(&v61, v60);

    v27 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v15;
    sub_100038954(v60, 0xD00000000000001ELL, 0x8000000100103550, v27);
    v15 = v59;
  }

  v28 = *(v1 + 80);
  if (v28 != 2)
  {
    v62 = &type metadata for Bool;
    LOBYTE(v61) = v28 & 1;
    sub_10000B48C(&v61, v60);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v15;
    sub_100038954(v60, 0xD00000000000001ALL, 0x8000000100103570, v30);
    v15 = v59;
    v29 = v1[12];
    if (!v29)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v29 = v1[12];
  if (v29)
  {
LABEL_13:
    v31 = v1[11];
    v62 = &type metadata for String;
    *&v61 = v31;
    *(&v61 + 1) = v29;
    sub_10000B48C(&v61, v60);

    v32 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v15;
    sub_100038954(v60, 0xD000000000000016, 0x8000000100103590, v32);
    v15 = v59;
  }

LABEL_14:
  v33 = v1[14];
  if (v33)
  {
    v34 = v1[13];
    v62 = &type metadata for String;
    *&v61 = v34;
    *(&v61 + 1) = v33;
    sub_10000B48C(&v61, v60);

    v35 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v15;
    sub_100038954(v60, 0xD000000000000018, 0x80000001001035B0, v35);
    v15 = v59;
  }

  v36 = v1[16];
  if (v36)
  {
    v37 = v1[15];
    v62 = &type metadata for String;
    *&v61 = v37;
    *(&v61 + 1) = v36;
    sub_10000B48C(&v61, v60);

    v38 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v15;
    sub_100038954(v60, 0xD00000000000001BLL, 0x80000001001035D0, v38);
    v15 = v59;
  }

  v39 = v1[18];
  if (v39)
  {
    v40 = v1[17];
    v62 = &type metadata for String;
    *&v61 = v40;
    *(&v61 + 1) = v39;
    sub_10000B48C(&v61, v60);

    v41 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v15;
    sub_100038954(v60, 0xD00000000000001ALL, 0x80000001001035F0, v41);
    v15 = v59;
  }

  v42 = type metadata accessor for TelemetryReportExtension(0);
  sub_100014894(v1 + v42[14], v5, &qword_1001343C0, &unk_1000F3C90);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000A184(v5, &qword_1001343C0, &unk_1000F3C90);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v62 = v6;
    v43 = sub_1000193A4(&v61);
    (*(v7 + 16))(v43, v10, v6);
    sub_10000B48C(&v61, v60);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v15;
    sub_100038954(v60, 0xD00000000000001DLL, 0x8000000100103610, v44);
    (*(v7 + 8))(v10, v6);
    v15 = v59;
  }

  v45 = (v1 + v42[15]);
  v46 = v45[1];
  if (v46)
  {
    v47 = *v45;
    v62 = &type metadata for String;
    *&v61 = v47;
    *(&v61 + 1) = v46;
    sub_10000B48C(&v61, v60);

    v48 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v15;
    sub_100038954(v60, 0xD00000000000001FLL, 0x8000000100103630, v48);
    v15 = v59;
  }

  v49 = *(v1 + v42[16]);
  if (v49 != 2)
  {
    v62 = &type metadata for Bool;
    LOBYTE(v61) = v49 & 1;
    sub_10000B48C(&v61, v60);
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v15;
    sub_100038954(v60, 0xD000000000000015, 0x8000000100103650, v50);
    v15 = v59;
  }

  v51 = (v1 + v42[17]);
  v52 = v51[1];
  if (v52)
  {
    v53 = *v51;
    v62 = &type metadata for String;
    *&v61 = v53;
    *(&v61 + 1) = v52;
    sub_10000B48C(&v61, v60);

    v54 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v15;
    sub_100038954(v60, 0xD00000000000001ELL, 0x8000000100103670, v54);
    v15 = v59;
  }

  v55 = *(v1 + v42[18]);
  if (v55)
  {
    v62 = sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
    *&v61 = v55;
    sub_10000B48C(&v61, v60);

    v56 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v15;
    sub_100038954(v60, 0xD000000000000022, 0x8000000100103690, v56);
    return v59;
  }

  return v15;
}

uint64_t sub_100017268(void *a1)
{
  v3 = v1;
  v5 = sub_100003CDC(&qword_100134600, &qword_1000F3E18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v43[-v8];
  v10 = a1[4];
  sub_100003C4C(a1, a1[3]);
  sub_100019408();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v44) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v44) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v44) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = v3[6];
    v18 = v3[7];
    LOBYTE(v44) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = v3[8];
    v20 = v3[9];
    LOBYTE(v44) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = *(v3 + 80);
    LOBYTE(v44) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = v3[11];
    v23 = v3[12];
    LOBYTE(v44) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = v3[13];
    v25 = v3[14];
    LOBYTE(v44) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v26 = v3[15];
    v27 = v3[16];
    LOBYTE(v44) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v28 = v3[17];
    v29 = v3[18];
    LOBYTE(v44) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v30 = type metadata accessor for TelemetryReportExtension(0);
    v31 = v30[14];
    LOBYTE(v44) = 10;
    type metadata accessor for Date();
    sub_1000194C8(&qword_100134608);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v32 = (v3 + v30[15]);
    v33 = *v32;
    v34 = v32[1];
    LOBYTE(v44) = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v35 = *(v3 + v30[16]);
    LOBYTE(v44) = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v36 = (v3 + v30[17]);
    v37 = *v36;
    v38 = v36[1];
    LOBYTE(v44) = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v44 = *(v3 + v30[18]);
    v43[7] = 14;
    sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
    sub_10001945C(&qword_100134610);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v39 = (v3 + v30[19]);
    v40 = *v39;
    v41 = v39[1];
    LOBYTE(v44) = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10001768C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v4 = sub_100003CDC(&qword_1001343C0, &unk_1000F3C90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v78 - v6;
  v85 = sub_100003CDC(&qword_1001345E0, &qword_1000F3E10);
  v8 = *(v85 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v85);
  v11 = &v78 - v10;
  v12 = type metadata accessor for TelemetryReportExtension(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[3];
  v16 = a1[4];
  v86 = a1;
  sub_100003C4C(a1, v17);
  sub_100019408();
  v84 = v11;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C90(v86);
  }

  v81 = v12;
  v82 = v15;
  LOBYTE(v88) = 0;
  v18 = v83;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v82;
  *v82 = v19;
  v21[1] = v22;
  LOBYTE(v88) = 1;
  v21[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v21[3] = v23;
  LOBYTE(v88) = 2;
  v79 = 0;
  v21[4] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v21[5] = v24;
  LOBYTE(v88) = 3;
  v21[6] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v21[7] = v25;
  LOBYTE(v88) = 4;
  v21[8] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v21[9] = v26;
  LOBYTE(v88) = 5;
  *(v21 + 80) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v88) = 6;
  v21[11] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v21[12] = v39;
  LOBYTE(v88) = 7;
  v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v41 = v82;
  v82[13] = v40;
  v41[14] = v42;
  LOBYTE(v88) = 8;
  v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v80 = 0;
  v45 = v82;
  v82[15] = v43;
  v45[16] = v44;
  LOBYTE(v88) = 9;
  v46 = v80;
  v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v80 = v46;
  if (v46)
  {
    (*(v8 + 8))(v84, v85);
    v49 = 0;
    LODWORD(v85) = 0;
  }

  else
  {
    v50 = v82;
    v82[17] = v47;
    v50[18] = v48;
    type metadata accessor for Date();
    LOBYTE(v88) = 10;
    sub_1000194C8(&qword_1001345F0);
    v51 = v80;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v80 = v51;
    if (v51)
    {
      (*(v8 + 8))(v84, v85);
      LODWORD(v85) = 0;
      v49 = 1;
    }

    else
    {
      sub_100018524(v7, v82 + v81[14]);
      LOBYTE(v88) = 11;
      v52 = v80;
      v53 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v80 = v52;
      if (!v52)
      {
        v55 = (v82 + v81[15]);
        *v55 = v53;
        v55[1] = v54;
        LOBYTE(v88) = 12;
        v56 = v80;
        v57 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        if (v56)
        {
          (*(v8 + 8))(v84, v85);
          sub_100003C90(v86);
          v59 = v82;
          v60 = v82[1];

          v61 = v59[3];

          v62 = v59[5];

          v63 = v59[7];

          v64 = v59[9];

          v65 = v59[12];

          v66 = v59[14];

          v67 = v59[16];

          v68 = v59[18];

          v69 = v81;
          sub_10000A184(v59 + v81[14], &qword_1001343C0, &unk_1000F3C90);
          v70 = *(v59 + v69[15] + 8);
        }

        else
        {
          *(v82 + v81[16]) = v57;
          LOBYTE(v88) = 13;
          v58 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v71 = (v82 + v81[17]);
          *v71 = v58;
          v71[1] = v72;
          sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
          v87 = 14;
          sub_10001945C(&qword_1001345F8);
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          *(v82 + v81[18]) = v88;
          LOBYTE(v88) = 15;
          v73 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v75 = v74;
          (*(v8 + 8))(v84, v85);
          v76 = v82;
          v77 = (v82 + v81[19]);
          *v77 = v73;
          v77[1] = v75;
          sub_100018328(v76, v18);
          sub_100003C90(v86);
          return sub_10001838C(v76);
        }
      }

      (*(v8 + 8))(v84, v85);
      v49 = 1;
      LODWORD(v85) = 1;
    }
  }

  v27 = v79;
  sub_100003C90(v86);
  v28 = v82;
  v29 = v82[1];

  if (!v27)
  {
    v35 = v28[3];
  }

  v30 = v28[5];

  v36 = v28[7];

  v31 = v28[9];

  v37 = v28[12];

  v32 = v28[14];

  v38 = v28[16];

  if (v49)
  {
    v33 = v28[18];

    v34 = v81;
    if ((v85 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    v34 = v81;
    if (!v85)
    {
      return result;
    }
  }

  return sub_10000A184(v28 + v34[14], &qword_1001343C0, &unk_1000F3C90);
}

uint64_t ApprovalSettingsStateEntry.usageText.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

unint64_t sub_100018080()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_100003CDC(&qword_1001345D8, &unk_1000F3E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F3C80;
  *(inited + 32) = 0xD00000000000001ALL;
  *(inited + 40) = 0x80000001001034D0;
  *(inited + 48) = v2;
  *(inited + 56) = v1;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0xD00000000000001ALL;
  *(inited + 120) = &type metadata for String;
  *(inited + 88) = 0x8000000100103530;
  *(inited + 96) = v4;
  *(inited + 104) = v3;

  v6 = sub_10003E208(inited);
  swift_setDeallocating();
  sub_100003CDC(&unk_1001372D0, &unk_1000F4500);
  swift_arrayDestroy();
  return v6;
}

uint64_t sub_100018188(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1000181C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[3] = &type metadata for DriverInstallEvent;
  v15[4] = &off_100127120;
  v12 = swift_allocObject();
  v15[0] = v12;
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = 0xD00000000000001ELL;
  v12[7] = 0x80000001001045A0;
  v13 = *(a6 + 8);

  v13(v15, a5, a6);
  return sub_100003C90(v15);
}

uint64_t sub_1000182A0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100018328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TelemetryReportExtension(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001838C(uint64_t a1)
{
  v2 = type metadata accessor for TelemetryReportExtension(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000183E8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for TelemetryReportExtension(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v19[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_10001610C(a1, a2, a3, v13);
  v14 = type metadata accessor for DriverLaunchEvent(0);
  v19[3] = v14;
  v19[4] = &off_1001270F0;
  v15 = sub_1000193A4(v19);
  sub_100018328(v13, v15);
  v16 = (v15 + *(v14 + 20));
  *v16 = 0xD00000000000001DLL;
  v16[1] = 0x80000001001046A0;
  (*(a5 + 8))(v19, a4, a5);
  sub_10001838C(v13);
  return sub_100003C90(v19);
}

uint64_t sub_100018524(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003CDC(&qword_1001343C0, &unk_1000F3C90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100018594()
{
  result = qword_100134288;
  if (!qword_100134288)
  {
    sub_100009FA4(&qword_100136C80, &qword_1000F39B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134288);
  }

  return result;
}

uint64_t sub_100018618(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100018698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TelemetryReportExtension(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10001876C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TelemetryReportExtension(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100018828()
{
  result = type metadata accessor for TelemetryReportExtension(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000188B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100003CDC(&qword_1001343C0, &unk_1000F3C90);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100018980(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100003CDC(&qword_1001343C0, &unk_1000F3C90);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100018A30()
{
  sub_100018B3C(319, &qword_100134558);
  if (v0 <= 0x3F)
  {
    sub_100018B3C(319, &qword_100134560);
    if (v1 <= 0x3F)
    {
      sub_100018B88();
      if (v2 <= 0x3F)
      {
        sub_100018BE0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100018B3C(uint64_t a1, unint64_t *a2)
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

void sub_100018B88()
{
  if (!qword_100134568)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100134568);
    }
  }
}

void sub_100018BE0()
{
  if (!qword_100134570)
  {
    sub_100009FA4(&qword_100136C80, &qword_1000F39B0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100134570);
    }
  }
}

__n128 sub_100018C44(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100018C58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100018CA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_100018CFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003CDC(&qword_1001343C0, &unk_1000F3C90);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v62 - v11;
  v13 = sub_100003CDC(&qword_100134618, &qword_1000F3E20);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v62 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v17 = *(a1 + 24);
  v18 = *(a2 + 24);
  if (v17)
  {
    if (!v18 || (*(a1 + 16) != *(a2 + 16) || v17 != v18) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v19 = *(a1 + 40);
  v20 = *(a2 + 40);
  if (v19)
  {
    if (!v20 || (*(a1 + 32) != *(a2 + 32) || v19 != v20) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v21 = *(a1 + 56);
  v22 = *(a2 + 56);
  if (v21)
  {
    if (!v22 || (*(a1 + 48) != *(a2 + 48) || v21 != v22) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  v23 = *(a1 + 72);
  v24 = *(a2 + 72);
  if (v23)
  {
    if (!v24 || (*(a1 + 64) != *(a2 + 64) || v23 != v24) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v25 = *(a1 + 80);
  v26 = *(a2 + 80);
  if (v25 == 2)
  {
    if (v26 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v26 == 2 || ((v26 ^ v25) & 1) != 0)
    {
      return result;
    }
  }

  v28 = *(a1 + 96);
  v29 = *(a2 + 96);
  if (v28)
  {
    if (!v29 || (*(a1 + 88) != *(a2 + 88) || v28 != v29) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v29)
  {
    return 0;
  }

  v30 = *(a1 + 112);
  v31 = *(a2 + 112);
  if (v30)
  {
    if (!v31 || (*(a1 + 104) != *(a2 + 104) || v30 != v31) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  v32 = *(a1 + 128);
  v33 = *(a2 + 128);
  if (v32)
  {
    if (!v33 || (*(a1 + 120) != *(a2 + 120) || v32 != v33) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  v34 = *(a1 + 144);
  v35 = *(a2 + 144);
  if (v34)
  {
    if (!v35 || (*(a1 + 136) != *(a2 + 136) || v34 != v35) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v35)
  {
    return 0;
  }

  v63 = type metadata accessor for TelemetryReportExtension(0);
  v36 = v63[14];
  v37 = *(v13 + 48);
  sub_100014894(a1 + v36, v16, &qword_1001343C0, &unk_1000F3C90);
  sub_100014894(a2 + v36, &v16[v37], &qword_1001343C0, &unk_1000F3C90);
  v38 = *(v5 + 48);
  if (v38(v16, 1, v4) != 1)
  {
    sub_100014894(v16, v12, &qword_1001343C0, &unk_1000F3C90);
    if (v38(&v16[v37], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v37], v4);
      sub_1000194C8(&qword_100134620);
      v39 = dispatch thunk of static Equatable.== infix(_:_:)();
      v40 = *(v5 + 8);
      v40(v8, v4);
      v40(v12, v4);
      sub_10000A184(v16, &qword_1001343C0, &unk_1000F3C90);
      if ((v39 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_74;
    }

    (*(v5 + 8))(v12, v4);
LABEL_70:
    sub_10000A184(v16, &qword_100134618, &qword_1000F3E20);
    return 0;
  }

  if (v38(&v16[v37], 1, v4) != 1)
  {
    goto LABEL_70;
  }

  sub_10000A184(v16, &qword_1001343C0, &unk_1000F3C90);
LABEL_74:
  v41 = v63[15];
  v42 = (a1 + v41);
  v43 = *(a1 + v41 + 8);
  v44 = (a2 + v41);
  v45 = v44[1];
  if (v43)
  {
    if (!v45 || (*v42 != *v44 || v43 != v45) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v45)
  {
    return 0;
  }

  v46 = v63[16];
  v47 = *(a1 + v46);
  v48 = *(a2 + v46);
  if (v47 == 2)
  {
    if (v48 != 2)
    {
      return 0;
    }

    goto LABEL_86;
  }

  result = 0;
  if (v48 != 2 && ((v48 ^ v47) & 1) == 0)
  {
LABEL_86:
    v49 = v63[17];
    v50 = (a1 + v49);
    v51 = *(a1 + v49 + 8);
    v52 = (a2 + v49);
    v53 = v52[1];
    if (v51)
    {
      if (!v53 || (*v50 != *v52 || v51 != v53) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v53)
    {
      return 0;
    }

    v54 = v63[18];
    v55 = *(a1 + v54);
    v56 = *(a2 + v54);
    if (v55)
    {
      if (!v56 || (sub_10001A6CC(v55, v56) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v56)
    {
      return 0;
    }

    v57 = v63[19];
    v58 = (a1 + v57);
    v59 = *(a1 + v57 + 8);
    v60 = (a2 + v57);
    v61 = v60[1];
    if (v59)
    {
      return v61 && (*v58 == *v60 && v59 == v61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
    }

    return !v61;
  }

  return result;
}

uint64_t *sub_1000193A4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_100019408()
{
  result = qword_1001345E8;
  if (!qword_1001345E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001345E8);
  }

  return result;
}

uint64_t sub_10001945C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100009FA4(&qword_100136C80, &qword_1000F39B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000194C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TelemetryReportExtension.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TelemetryReportExtension.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100019668()
{
  result = qword_100134628;
  if (!qword_100134628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134628);
  }

  return result;
}

unint64_t sub_1000196C0()
{
  result = qword_100134630;
  if (!qword_100134630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134630);
  }

  return result;
}

unint64_t sub_100019718()
{
  result = qword_100134638;
  if (!qword_100134638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134638);
  }

  return result;
}

unint64_t sub_10001976C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100126618, v2);

  if (v3 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v3;
  }
}

Swift::Int sub_1000197E0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100019854()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_100019898()
{
  v1 = *v0;
  v2 = 7107189;
  v3 = 0xD000000000000017;
  if (v1 == 3)
  {
    v3 = 0xD000000000000018;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000014;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100019938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10001D7D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10001996C(uint64_t a1)
{
  v2 = sub_10001D4F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000199A8(uint64_t a1)
{
  v2 = sub_10001D4F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000199E4()
{
  v1 = v0;
  v29 = *v0;
  v30 = v0[1];

  v2._countAndFlagsBits = 10;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3 = type metadata accessor for ApplicationRecord(0);
  v4 = v3[5];
  type metadata accessor for URL();
  sub_10001D548(&qword_1001342A0, &type metadata accessor for URL);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 10;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0x3A4C525520202020;
  v7._object = 0xE900000000000020;
  String.append(_:)(v7);

  v8._object = 0x80000001001047D0;
  v8._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v8);
  v9 = *(v1 + v3[6]);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;

      v14._countAndFlagsBits = v12;
      v14._object = v13;
      String.append(_:)(v14);

      v15._countAndFlagsBits = 10;
      v15._object = 0xE100000000000000;
      String.append(_:)(v15);
      v16._countAndFlagsBits = 0x2020202020202020;
      v16._object = 0xE800000000000000;
      String.append(_:)(v16);

      v11 += 2;
      --v10;
    }

    while (v10);
  }

  _StringGuts.grow(_:)(33);

  sub_10005BD44(*(v1 + v3[7]), *(v1 + v3[7] + 8));
  sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
  sub_100018594();
  v17 = BidirectionalCollection<>.joined(separator:)();
  v19 = v18;

  v20._countAndFlagsBits = v17;
  v20._object = v19;
  String.append(_:)(v20);

  v21._countAndFlagsBits = 10;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0xD000000000000020;
  v22._object = 0x80000001001047F0;
  String.append(_:)(v22);

  _StringGuts.grow(_:)(23);

  sub_10005BD44(*(v1 + v3[8]), *(v1 + v3[8] + 8));
  v23 = BidirectionalCollection<>.joined(separator:)();
  v25 = v24;

  v26._countAndFlagsBits = v23;
  v26._object = v25;
  String.append(_:)(v26);

  v27._countAndFlagsBits = 0xD000000000000017;
  v27._object = 0x8000000100104820;
  String.append(_:)(v27);

  return v29;
}

uint64_t sub_100019D24()
{
  v1 = v0;
  _StringGuts.grow(_:)(24);
  v3 = *v0;
  v2 = v0[1];

  v4._countAndFlagsBits = 2108704;
  v4._object = 0xE300000000000000;
  String.append(_:)(v4);
  v5 = type metadata accessor for ApplicationRecord(0);
  v6 = v5[5];
  type metadata accessor for URL();
  sub_10001D548(&qword_1001342A0, &type metadata accessor for URL);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 10272;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  v9 = (v1 + v5[7]);
  v10 = *v9;
  v11 = v9[1];
  v12._countAndFlagsBits = Data.description.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 2112041;
  v13._object = 0xE300000000000000;
  String.append(_:)(v13);
  v17 = *(*(v1 + v5[6]) + 16);
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0x7372657669726420;
  v15._object = 0xE800000000000000;
  String.append(_:)(v15);
  return v3;
}

uint64_t sub_100019EBC(void *a1)
{
  v3 = v1;
  v5 = sub_100003CDC(&qword_100134988, &qword_1000F4180);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_100003C4C(a1, a1[3]);
  sub_10001D4F4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v21) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = type metadata accessor for ApplicationRecord(0);
    v14 = v13[5];
    LOBYTE(v21) = 1;
    type metadata accessor for URL();
    sub_10001D548(&qword_100134990, &type metadata accessor for URL);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = *(v3 + v13[6]);
    v23 = 2;
    sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
    sub_10001945C(&qword_100134610);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = (v3 + v13[7]);
    v16 = v15[1];
    v21 = *v15;
    v22 = v16;
    v23 = 3;
    sub_1000146C4(v21, v16);
    sub_10001D6A4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000128D8(v21, v22);
    v17 = (v3 + v13[8]);
    v18 = v17[1];
    v21 = *v17;
    v22 = v18;
    v23 = 4;
    sub_1000146C4(v21, v18);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000128D8(v21, v22);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10001A19C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for URL();
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100003CDC(&qword_100134968, &qword_1000F4178);
  v23 = *(v25 - 8);
  v7 = *(v23 + 64);
  __chkstk_darwin(v25);
  v9 = v20 - v8;
  v10 = type metadata accessor for ApplicationRecord(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  sub_100003C4C(a1, a1[3]);
  sub_10001D4F4();
  v24 = v9;
  v15 = v26;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    return sub_100003C90(a1);
  }

  v16 = v22;
  LOBYTE(v27) = 0;
  *v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v13[1] = v17;
  v26 = v17;
  LOBYTE(v27) = 1;
  sub_10001D548(&qword_100134978, &type metadata accessor for URL);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20[0] = v10;
  (*(v16 + 32))(v13 + *(v10 + 20), v6, v3);
  sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
  v28 = 2;
  sub_10001945C(&qword_1001345F8);
  v20[1] = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = v20[0];
  *(v13 + *(v20[0] + 24)) = v27;
  v28 = 3;
  sub_10001D590();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v13 + *(v18 + 28)) = v27;
  v28 = 4;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v23 + 8))(v24, v25);
  *(v13 + *(v18 + 32)) = v27;
  sub_10001D5E4(v13, v21);
  sub_100003C90(a1);
  return sub_10001D648(v13);
}

uint64_t sub_10001A6CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10001A75C(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (v5 == result)
    {
      goto LABEL_5;
    }

    return 0;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    return 0;
  }

LABEL_5:
  if (!v5)
  {
    return 1;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
    return 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v4 = *(a1 + 8 * v12);

        if (v11)
        {
LABEL_20:
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v15 = *(a2 + 8 * v12);

LABEL_25:
      v16 = sub_10003D670(v4, v15);

      if (v16)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001A918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = (*(a2 + 8))();
  if (!v7)
  {
    v13 = 0x8000000100104890;
    sub_10001449C();
    swift_allocError();
    v15 = 0xD000000000000028;
    goto LABEL_7;
  }

  v8 = v7;
  v34 = v6;
  v9 = (*(a2 + 32))(a1, a2);
  if (!v9)
  {

    v13 = 0x80000001001048C0;
    sub_10001449C();
    swift_allocError();
    v15 = 0xD000000000000034;
    goto LABEL_7;
  }

  v10 = v9;
  v11 = (*(a2 + 40))(a1, a2);
  if (v12 >> 60 == 15)
  {

    v13 = 0x8000000100104900;
    sub_10001449C();
    swift_allocError();
    v15 = 0xD000000000000038;
LABEL_7:
    *v14 = v15;
    *(v14 + 8) = v13;
    *(v14 + 16) = v30;
    *(v14 + 32) = v31;
    *(v14 + 48) = v32;
    *(v14 + 64) = v33;
    *(v14 + 72) = 10;
    return swift_willThrow();
  }

  v17 = v11;
  v18 = v12;
  v19 = (*(a2 + 24))(a1, a2);
  if (v20 >> 60 == 15)
  {

    sub_10001449C();
    swift_allocError();
    *v21 = 0xD000000000000037;
    *(v21 + 8) = 0x8000000100104940;
    *(v21 + 16) = v30;
    *(v21 + 32) = v31;
    *(v21 + 48) = v32;
    *(v21 + 64) = v33;
    *(v21 + 72) = 10;
    swift_willThrow();
    return sub_100014988();
  }

  else
  {
    v29 = v19;
    v26 = *(a2 + 16);
    v28 = v20;
    v27 = v18;
    v22 = type metadata accessor for ApplicationRecord(0);
    v23 = a3 + v22[5];
    result = v26(a1, a2);
    *a3 = v34;
    a3[1] = v8;
    *(a3 + v22[6]) = v10;
    v24 = (a3 + v22[7]);
    *v24 = v17;
    v24[1] = v27;
    v25 = (a3 + v22[8]);
    *v25 = v29;
    v25[1] = v28;
  }

  return result;
}

uint64_t sub_10001AC14()
{
  v1 = *(v0 + 96);
  if (v1 == 2)
  {
    LOBYTE(v1) = sub_10001AC48(v0);
    *(v0 + 96) = v1 & 1;
  }

  return v1 & 1;
}

BOOL sub_10001AC48(uint64_t a1)
{
  v1 = *sub_100003C4C((a1 + 16), *(a1 + 40));
  sub_1000DFB90(v16);
  v2 = sub_100003C4C(v16, v16[3]);
  v15[3] = &type metadata for SupportsThirdPartyDriversDeviceProperty;
  v15[4] = &off_10012D9F8;
  v3 = swift_allocObject();
  v15[0] = v3;
  v3[2] = 0xD000000000000015;
  v3[3] = 0x80000001001049A0;
  v3[4] = 0xD00000000000001CLL;
  v3[5] = 0x80000001001049C0;
  v4 = *v2;
  sub_1000EBACC(v15, &v17);
  sub_100003C90(v15);
  sub_100003C90(v16);
  v5 = *(&v18 + 1) != 0;
  sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
  if (qword_100133AC8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000144F0(v6, qword_10014E998);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16[0] = v10;
    *v9 = 136315138;
    if (v5)
    {
      v11 = 0x7374726F70707573;
    }

    else
    {
      v11 = 0xD000000000000010;
    }

    if (v5)
    {
      v12 = 0xE800000000000000;
    }

    else
    {
      v12 = 0x80000001001049E0;
    }

    v13 = sub_1000E3AF8(v11, v12, v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Hardware %s third party drivers", v9, 0xCu);
    sub_100003C90(v10);
  }

  return v5;
}

uint64_t sub_10001AEC0()
{
  v1 = *(v0 + 97);
  if (v1 == 2)
  {
    LOBYTE(v1) = sub_10001AEF4(v0);
    *(v0 + 97) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t sub_10001AEF4(uint64_t a1)
{
  v1 = *sub_100003C4C((a1 + 16), *(a1 + 40));
  sub_1000DF65C(v15);
  v2 = *sub_100003C4C(v15, v15[3]);
  v3 = sub_100068DB8(0xD000000000000014, 0x8000000100104980) == 1;
  v5 = v3 & ~v4;
  sub_100003C90(v15);
  if (qword_100133AC8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000144F0(v6, qword_10014E998);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15[0] = v10;
    *v9 = 136315138;
    if (v5)
    {
      v11 = 29545;
    }

    else
    {
      v11 = 0x746F6E207369;
    }

    if (v5)
    {
      v12 = 0xE200000000000000;
    }

    else
    {
      v12 = 0xE600000000000000;
    }

    v13 = sub_1000E3AF8(v11, v12, v15);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Third party driver boot arg %s enabled", v9, 0xCu);
    sub_100003C90(v10);
  }

  return v5;
}

void sub_10001B0B4()
{
  v1 = v0;
  v2 = v0[9];
  if (v2)
  {
    v3 = *(v2 + 72);
    if (v3 == 2)
    {

      v4 = sub_10009E624();
      *(v2 + 72) = v4 & 1;

      if ((v4 & 1) == 0)
      {
LABEL_4:
        if (qword_100133AC8 != -1)
        {
          swift_once();
        }

        v5 = type metadata accessor for Logger();
        sub_1000144F0(v5, qword_10014E998);
        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v6, v7, "Using cached application list", v8, 2u);
        }

        v9 = v1[10];
        v10 = OBJC_IVAR____TtC10driverkitd16ApplicationCache__cached;
        if (*(v9 + OBJC_IVAR____TtC10driverkitd16ApplicationCache__cached))
        {
          v11 = *(v9 + OBJC_IVAR____TtC10driverkitd16ApplicationCache__cached);

          return;
        }

        v20 = sub_10001CB28();
        v21 = *(v9 + v10);
        *(v9 + v10) = v20;

        goto LABEL_25;
      }
    }

    else if ((v3 & 1) == 0)
    {
      goto LABEL_4;
    }

    v12 = sub_10003E650(_swiftEmptyArrayStorage);
    v28 = v12;
    if (sub_10001AC14() & 1) != 0 || (sub_10001AEC0())
    {
      if (qword_100133AC8 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_1000144F0(v13, qword_10014E998);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Retrieving applications from LaunchServices", v16, 2u);
      }

      v17 = *sub_100003C4C(v1 + 2, v1[5]);
      sub_1000DFD4C(v27);
      v18 = v27[4];
      v19 = sub_100003C4C(v27, v27[3]);
      __chkstk_darwin(v19);
      (*(v18 + 16))(sub_10001DED4);
      sub_100003C90(v27);
      v12 = v28;
    }

    else
    {
      if (qword_100133AC8 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_1000144F0(v22, qword_10014E998);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "Third party drivers are disabled", v25, 2u);
      }
    }

    v26 = v1[10];
    swift_bridgeObjectRetain_n();
    sub_10001C2F4(v12);
LABEL_25:

    return;
  }

  __break(1u);
}

uint64_t sub_10001B474(void *a1, uint64_t *a2)
{
  v72 = a2;
  v3 = sub_100003CDC(&qword_1001342D8, &unk_100101820);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v71 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = (&v67 - v7);
  v75 = type metadata accessor for ApplicationRecord(0);
  v73 = *(v75 - 8);
  v9 = *(v73 + 64);
  v10 = __chkstk_darwin(v75);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v67 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v67 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v67 - v20;
  __chkstk_darwin(v19);
  v23 = &v67 - v22;
  v25 = a1[3];
  v24 = a1[4];
  sub_100003C4C(a1, v25);
  v26 = v74;
  sub_10001A918(v25, v24, v8);
  if (v26)
  {

    (*(v73 + 56))(v8, 1, 1, v75);
    return sub_10000A184(v8, &qword_1001342D8, &unk_100101820);
  }

  else
  {
    v29 = v71;
    v28 = v72;
    v67 = v18;
    v68 = v15;
    v69 = v12;
    v30 = v21;
    v74 = 0;
    v31 = v73;
    v32 = *(v73 + 56);
    v33 = v75;
    v32(v8, 0, 1, v75);
    sub_10001DE00(v8, v23);
    v34 = v23;
    if (*(*&v23[*(v33 + 24)] + 16))
    {
      v35 = *(v33 + 32);
      v70 = v23;
      v36 = &v23[v35];
      v37 = *v28;
      if (*(v37 + 16) && (v38 = sub_1000618A8(*v36, v36[1]), (v39 & 1) != 0))
      {
        v40 = v30;
        sub_10001D5E4(*(v37 + 56) + *(v31 + 72) * v38, v30);
        if (qword_100133AC8 != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        sub_1000144F0(v41, qword_10014E998);
        v42 = v70;
        v43 = v67;
        sub_10001D5E4(v70, v67);
        v44 = v68;
        sub_10001D5E4(v42, v68);
        v45 = v69;
        sub_10001D5E4(v40, v69);
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v77 = v73;
          *v48 = 136315650;
          v49 = v74;
          v50 = sub_10005BD44(*(v43 + *(v33 + 32)), *(v43 + *(v33 + 32) + 8));
          v74 = v49;
          v76 = v50;
          sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
          LODWORD(v75) = v47;
          sub_100018594();
          v51 = BidirectionalCollection<>.joined(separator:)();
          v53 = v52;

          sub_10001D648(v43);
          v54 = sub_1000E3AF8(v51, v53, &v77);

          *(v48 + 4) = v54;
          *(v48 + 12) = 2080;
          v55 = sub_100019D24();
          v57 = v56;
          sub_10001D648(v44);
          v58 = sub_1000E3AF8(v55, v57, &v77);

          *(v48 + 14) = v58;
          *(v48 + 22) = 2080;
          v59 = sub_100019D24();
          v61 = v60;
          sub_10001D648(v45);
          v62 = sub_1000E3AF8(v59, v61, &v77);

          *(v48 + 24) = v62;
          _os_log_impl(&_mh_execute_header, v46, v75, "Found two applications with the same unique identifier %s:\n%s\n%s", v48, 0x20u);
          swift_arrayDestroy();

          v63 = v40;
        }

        else
        {

          sub_10001D648(v45);
          sub_10001D648(v44);
          sub_10001D648(v40);
          v63 = v43;
        }

        sub_10001D648(v63);
        v34 = v70;
      }

      else
      {
        v64 = *v36;
        v65 = v36[1];
        v66 = v70;
        sub_10001D5E4(v70, v29);
        v32(v29, 0, 1, v33);
        sub_1000146C4(v64, v65);
        sub_100048438(v29, v64, v65);
        v34 = v66;
      }
    }

    return sub_10001D648(v34);
  }
}

_UNKNOWN **sub_10001BA20()
{
  sub_10001B0B4();
  v2 = v1;
  v3 = *(v0 + 88);
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = sub_1000451F8(v2, v3);

  if ((v4 & 1) == 0)
  {
    v6 = *(v0 + 88);
LABEL_6:
    *(v0 + 88) = v2;
    v5 = &off_100126050;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

uint64_t sub_10001BAB8()
{
  v1 = type metadata accessor for ApplicationRecord(0);
  v46 = *(v1 - 8);
  v2 = *(v46 + 64);
  __chkstk_darwin(v1 - 8);
  v48 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003CDC(&qword_1001349F0, &unk_1000F56C0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v43 - v9;
  v50 = 0xD000000000000017;
  v51 = 0x8000000100104870;
  if (*(v0 + 88))
  {
    v11 = *(v0 + 88);
  }

  else
  {
    sub_10001B0B4();
    v11 = v12;
    v13 = *(v0 + 88);
    *(v0 + 88) = v12;
  }

  v47 = v11;
  v16 = *(v11 + 64);
  v15 = v11 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;

  v22 = 0;
  v44 = v10;
  v45 = v8;
  v23 = &qword_1001349F8;
  if (v19)
  {
    while (1)
    {
      v24 = v22;
LABEL_15:
      v27 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v28 = v27 | (v24 << 6);
      v29 = v48;
      v30 = (*(v47 + 48) + 16 * v28);
      v31 = *v30;
      v32 = v30[1];
      sub_10001D5E4(*(v47 + 56) + *(v46 + 72) * v28, v48);
      v33 = sub_100003CDC(v23, &qword_1000F41A0);
      v34 = *(v33 + 48);
      v35 = v45;
      *v45 = v31;
      v35[1] = v32;
      v36 = v29;
      v8 = v35;
      sub_10001DE00(v36, v35 + v34);
      (*(*(v33 - 8) + 56))(v8, 0, 1, v33);
      sub_1000146C4(v31, v32);
      v26 = v24;
      v37 = v23;
      v10 = v44;
LABEL_16:
      sub_10001DE64(v8, v10);
      v38 = sub_100003CDC(v37, &qword_1000F41A0);
      if ((*(*(v38 - 8) + 48))(v10, 1, v38) == 1)
      {
        break;
      }

      sub_1000128D8(*v10, *(v10 + 1));
      v39 = v48;
      sub_10001DE00(&v10[*(v38 + 48)], v48);
      v49._countAndFlagsBits = sub_1000199E4();
      v49._object = v40;
      v41._countAndFlagsBits = 10;
      v41._object = 0xE100000000000000;
      String.append(_:)(v41);
      String.append(_:)(v49);

      result = sub_10001D648(v39);
      v22 = v26;
      v23 = v37;
      if (!v19)
      {
        goto LABEL_8;
      }
    }

    return v50;
  }

  else
  {
LABEL_8:
    if (v20 <= v22 + 1)
    {
      v25 = v22 + 1;
    }

    else
    {
      v25 = v20;
    }

    v26 = v25 - 1;
    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v24 >= v20)
      {
        v37 = v23;
        v42 = sub_100003CDC(v23, &qword_1000F41A0);
        (*(*(v42 - 8) + 56))(v8, 1, 1, v42);
        v19 = 0;
        goto LABEL_16;
      }

      v19 = *(v15 + 8 * v24);
      ++v22;
      if (v19)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10001BE94()
{
  sub_100003C90((v0 + 16));

  v1 = *(v0 + 64);

  v2 = *(v0 + 72);

  v3 = *(v0 + 80);

  v4 = *(v0 + 88);

  return swift_deallocClassInstance();
}

uint64_t sub_10001BF18()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
}

uint64_t sub_10001BF54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = sub_100003CDC(&qword_1001349C8, &qword_1000F4198);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  v11 = a1[4];
  sub_100003C4C(a1, a1[3]);
  sub_10001DB8C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    sub_100003CDC(&qword_1001349B0, &qword_1000F4190);
    sub_10001DC9C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_10001C110()
{
  if (*v0)
  {
    result = 1635017060;
  }

  else
  {
    result = 0x6E6F6973726576;
  }

  *v0;
  return result;
}

uint64_t sub_10001C144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10001C22C(uint64_t a1)
{
  v2 = sub_10001DB8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001C268(uint64_t a1)
{
  v2 = sub_10001DB8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001C2A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10001D988(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void sub_10001C2F4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC10driverkitd16ApplicationCache__cached;
  v10 = *(v1 + OBJC_IVAR____TtC10driverkitd16ApplicationCache__cached);
  if (v10)
  {
    swift_bridgeObjectRetain_n();

    v11 = sub_1000451F8(a1, v10);

    if (v11)
    {
      swift_bridgeObjectRelease_n();
      return;
    }
  }

  else
  {
  }

  v74 = v9;
  v12 = type metadata accessor for PropertyListEncoder();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  *&v75 = 0xD000000000000024;
  *(&v75 + 1) = 0x80000001001038C0;
  *&v76 = a1;
  sub_10001DDAC();

  v15 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v17 = v16;
  v18 = v15;

  if (qword_100133B00 != -1)
  {
    swift_once();
  }

  v72 = v5;
  v73 = v4;
  v19 = type metadata accessor for Logger();
  v68 = sub_1000144F0(v19, qword_10014EA40);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Writing new application cache contents", v22, 2u);
  }

  v69 = OBJC_IVAR____TtC10driverkitd16ApplicationCache_applicationCachePath;
  URL.appendingPathExtension(_:)();
  v23 = *(v2 + 40);
  v70 = v2;
  v24 = *sub_100003C4C((v2 + 16), v23);
  sub_1000DF9D4(&v75);
  v25 = *(&v76 + 1);
  v26 = v77;
  sub_100003C4C(&v75, *(&v76 + 1));
  v71 = v8;
  v27 = URL.path.getter();
  v29 = v28;
  v30 = v18;
  sub_1000146C4(v18, v17);
  v31 = sub_10003E834(_swiftEmptyArrayStorage);
  LOBYTE(v27) = (*(v26 + 40))(v27, v29, v18, v17, v31, v25, v26);

  sub_1000128D8(v18, v17);

  sub_100003C90(&v75);

  if (v27)
  {
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Replacing old application cache contents", v34, 2u);
    }

    v35 = v70;
    v36 = *sub_100003C4C((v70 + 16), *(v70 + 40));
    sub_1000DF9D4(&v75);
    v37 = *(&v76 + 1);
    v38 = v77;
    sub_100003C4C(&v75, *(&v76 + 1));
    v39 = v71;
    (*(v38 + 88))(v35 + v69, v71, 0, 0, 0, 0, v37, v38);
    sub_100003C90(&v75);
    v63 = *sub_100003C4C((v35 + 16), *(v35 + 40));
    sub_1000DF9D4(&v75);
    v64 = *(&v76 + 1);
    v65 = v77;
    sub_100003C4C(&v75, *(&v76 + 1));
    (*(v65 + 104))(v39, v64, v65);
    (*(v72 + 8))(v39, v73);
    sub_1000128D8(v30, v17);
    v66 = v74;
    sub_100003C90(&v75);
    v67 = *(v35 + v66);
    *(v35 + v66) = a1;
  }

  else
  {
    v40 = errno.getter();
    if (strerror(v40))
    {

      v41 = String.init(cString:)();
      v43 = v42;
      *&v75 = 0;
      *(&v75 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(30);

      *&v75 = 0x6946657461657263;
      *(&v75 + 1) = 0xEB0000000020656CLL;
      sub_10001D548(&qword_1001342A0, &type metadata accessor for URL);
      v44 = v71;
      v45 = v73;
      v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v46);

      v47._countAndFlagsBits = 0x3A64656C69616620;
      v47._object = 0xEF206F6E72726520;
      String.append(_:)(v47);
      v48._countAndFlagsBits = v41;
      v48._object = v43;
      String.append(_:)(v48);

      v49 = v75;
      sub_10001449C();
      v50 = swift_allocError();
      *v51 = v49;
      v52 = v78;
      v53 = v77;
      v54 = v76;
      *(v51 + 16) = v75;
      *(v51 + 32) = v54;
      *(v51 + 48) = v53;
      *(v51 + 64) = v52;
      *(v51 + 72) = 19;
      swift_willThrow();
      sub_1000128D8(v30, v17);
      (*(v72 + 8))(v44, v45);
      if (qword_100133B00 != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for Logger();
      sub_1000144F0(v55, qword_10014EA40);
      swift_errorRetain();
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *&v75 = v59;
        *v58 = 136315138;
        v79 = v50;
        swift_errorRetain();
        sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
        v60 = String.init<A>(describing:)();
        v62 = sub_1000E3AF8(v60, v61, &v75);

        *(v58 + 4) = v62;
        _os_log_impl(&_mh_execute_header, v56, v57, "Failed to write application cache: %s", v58, 0xCu);
        sub_100003C90(v59);
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}