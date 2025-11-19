int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (*(*(sub_100002074(&qword_1000B7580, &qword_10008EEC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v15 = aBlock - v14;
  v16 = stdout.getter();
  setlinebuf(v16);
  v17 = objc_allocWithZone(type metadata accessor for Server(0));
  qword_1000B9318 = sub_100026F84(0);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  sub_1000024AC(0, 0, v15, &unk_10008EED0, v19);

  if (qword_1000B6658 != -1)
  {
    swift_once();
  }

  if (qword_1000B7C78)
  {
    LOBYTE(aBlock[0]) = 0;
    v20 = qword_1000B7C78;
    v21 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v22 = String._bridgeToObjectiveC()();
    [v20 setValue:v21 forKey:v22];

    swift_unknownObjectRelease();
  }

  v23 = SIG_IGN.getter();
  signal(15, v23);
  sub_100002B48();
  qword_1000B9320 = static OS_dispatch_source.makeSignalSource(signal:queue:)();
  swift_getObjectType();
  aBlock[4] = sub_100002718;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002874;
  aBlock[3] = &unk_1000AE580;
  v24 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  sub_1000028B8();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v24);
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
  swift_getObjectType();
  OS_dispatch_source.activate()();
  dispatch_main();
}

uint64_t sub_100002074(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000020D8()
{
  v1 = type metadata accessor for BackgroundActivityManager();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  v0[7] = v4;
  swift_defaultActor_initialize();
  v5 = OBJC_IVAR____TtC13frauddefensed25BackgroundActivityManager_logger;
  if (qword_1000B6688 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = sub_100003448(v6, qword_1000B9370);
  (*(*(v6 - 8) + 16))(v4 + v5, v7, v6);
  v8 = type metadata accessor for SignaturesBackgroundActivity();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_1000107C8();
  v0[8] = v11;
  v12 = static os_log_type_t.default.getter();
  sub_10005E11C(v12, 0xD000000000000026, 0x8000000100093C60, 0xD000000000000047, 0x8000000100093C10, 27);
  v0[5] = v8;
  v0[6] = &off_1000AEAE0;
  v0[2] = v11;

  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_1000022B0;

  return sub_10008B068((v0 + 2));
}

uint64_t sub_1000022B0()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v6 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_100002438;
  }

  else
  {
    sub_100003558((v2 + 16));
    v4 = sub_1000023CC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000023CC()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100002438()
{
  v2 = v0[7];
  v1 = v0[8];

  sub_100003558(v0 + 2);
  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_1000024AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(sub_100002074(&qword_1000B7580, &qword_10008EEC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = v23 - v9;
  sub_100003480(a3, v23 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000034F0(v10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_1000034F0(a3);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000034F0(a3);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100002718()
{
  if (qword_1000B6688 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003448(v0, qword_1000B9370);
  v1 = static os_log_type_t.error.getter();
  sub_10005E11C(v1, 0xD000000000000035, 0x8000000100093BD0, 0xD000000000000047, 0x8000000100093C10, 39);
  if (qword_1000B6658 != -1)
  {
    swift_once();
  }

  if (qword_1000B7C78)
  {
    v2 = qword_1000B7C78;
    v3 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v4 = String._bridgeToObjectiveC()();
    [v2 setValue:v3 forKey:v4];

    swift_unknownObjectRelease();
  }

  return xpc_transaction_exit_clean();
}

uint64_t sub_100002874(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1000028B8()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100003650(&qword_1000B6728, &type metadata accessor for DispatchWorkItemFlags);
  sub_100002074(&qword_1000B6730, &qword_10008EF18);
  sub_10000339C();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_100002970()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000029A8()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100002A54;

  return sub_1000020BC();
}

uint64_t sub_100002A54()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_100002B48()
{
  result = qword_1000B6718;
  if (!qword_1000B6718)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B6718);
  }

  return result;
}

uint64_t sub_100002B94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_100002BB0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002BBC(uint64_t a1, int a2)
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

uint64_t sub_100002BDC(uint64_t result, int a2, int a3)
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

BOOL sub_100002C44(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_100002CAC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100002CC8(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100002D40(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100002DC0@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100002E20(uint64_t a1)
{
  v2 = sub_100003650(&qword_1000B67E0, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100002E8C(uint64_t a1)
{
  v2 = sub_100003650(&qword_1000B67E0, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100002EF8(void *a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_1000B67E0, type metadata accessor for CKError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100002FAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_1000B67E0, type metadata accessor for CKError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100003028()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10000308C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1000030B8(uint64_t a1)
{
  v2 = sub_100003650(&qword_1000B67F8, type metadata accessor for NLTagScheme);
  v3 = sub_100003650(&qword_1000B6800, type metadata accessor for NLTagScheme);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003174(uint64_t a1)
{
  v2 = sub_100003650(&qword_1000B67A8, type metadata accessor for CKError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000031E0(uint64_t a1)
{
  v2 = sub_100003650(&qword_1000B67A8, type metadata accessor for CKError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100003250(uint64_t a1)
{
  v2 = sub_100003650(&qword_1000B67E0, type metadata accessor for CKError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000032BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003650(&qword_1000B67E0, type metadata accessor for CKError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100003354@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

unint64_t sub_10000339C()
{
  result = qword_1000B6738;
  if (!qword_1000B6738)
  {
    sub_100003400(&qword_1000B6730, &qword_10008EF18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6738);
  }

  return result;
}

uint64_t sub_100003400(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003448(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003480(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002074(&qword_1000B7580, &qword_10008EEC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000034F0(uint64_t a1)
{
  v2 = sub_100002074(&qword_1000B7580, &qword_10008EEC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003558(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100003650(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100003770(uint64_t a1)
{
  v2 = sub_100003650(&qword_1000B67E8, type metadata accessor for FileAttributeKey);
  v3 = sub_100003650(&qword_1000B67F0, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003830()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100003870()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000038C8()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_100003940(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100003C68()
{
  result = qword_1000B67D0;
  if (!qword_1000B67D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B67D0);
  }

  return result;
}

void sub_100003D60(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100003E10()
{
  if (qword_1000B66D0 != -1)
  {
    swift_once();
  }

  v1 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  if (byte_1000B9448 == 1)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    v3 = sub_100002074(&qword_1000B68E8, &qword_10008F5E8);
    *v2 = v0;
    v2[1] = sub_100003FB8;
    v4 = v0[8];
    v5 = sub_100005AD8;
    v6 = v0 + 5;
  }

  else
  {
    v7 = swift_task_alloc();
    v0[11] = v7;
    v3 = sub_100002074(&qword_1000B68E8, &qword_10008F5E8);
    *v7 = v0;
    v7[1] = sub_1000040FC;
    v4 = v0[8];
    v5 = sub_100005AD0;
    v6 = v0 + 2;
  }

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, 0, 0, 0x29286863746566, 0xE700000000000000, v5, v4, v3);
}

uint64_t sub_100003FB8()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100004210;
  }

  else
  {
    v3 = sub_1000040CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000040FC()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_100004228;
  }

  else
  {
    v3 = sub_100005E30;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_100004240(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002074(&qword_1000B68F0, &qword_10008F5F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = aBlock - v8;
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v5 + 16))(v9, a1, v4);
  v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  (*(v5 + 32))(v12 + v11, v9, v4);
  aBlock[4] = sub_100005AE0;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000476C;
  aBlock[3] = &unk_1000AE7C8;
  v13 = _Block_copy(aBlock);

  DeviceIdentityCreateHostSignatureWithCompletion();
  _Block_release(v13);
}

uint64_t sub_100004414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    swift_errorRetain();
    v4 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(53);
    v5._countAndFlagsBits = 0xD000000000000031;
    v5._object = 0x8000000100093F20;
    String.append(_:)(v5);
    swift_getErrorValue();
    v6._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v6);

    v7._countAndFlagsBits = 32032;
    v7._object = 0xE200000000000000;
    String.append(_:)(v7);
    sub_10005E11C(v4, 0, 0xE000000000000000, 0xD000000000000057, 0x8000000100093E60, 35);

    _StringGuts.grow(_:)(53);
    v8._countAndFlagsBits = 0xD000000000000031;
    v8._object = 0x8000000100093F20;
    String.append(_:)(v8);
    swift_getErrorValue();
    v9._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v9);

    v10._countAndFlagsBits = 32032;
    v10._object = 0xE200000000000000;
    String.append(_:)(v10);
    sub_100002074(&qword_1000B68F0, &qword_10008F5F0);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (!a3 || !sub_100004680(a3))
    {
      v12 = static os_log_type_t.error.getter();
      sub_10005E11C(v12, 0xD000000000000020, 0x8000000100093EF0, 0xD000000000000057, 0x8000000100093E60, 40);
    }

    sub_100002074(&qword_1000B68F0, &qword_10008F5F0);
    return CheckedContinuation.resume(returning:)();
  }
}

void *sub_100004680(uint64_t a1)
{
  v7 = &_swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_100005BBC(i, v6);
    type metadata accessor for SecCertificate(0);
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

uint64_t sub_10000476C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {

    v9 = v6;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = 0xF000000000000000;
  if (a3)
  {
LABEL_3:
    a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  v12 = a4;
  v8(v6, v11, a3, a4);

  sub_100005A14(v6, v11);
}

void sub_100004850(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002074(&qword_1000B68F0, &qword_10008F5F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = aBlock - v8;
  v10 = *(a2 + 16);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (*(v5 + 16))(v9, a1, v4);
  v12 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  (*(v5 + 32))(v13 + v12, v9, v4);
  aBlock[4] = sub_100005CEC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004D58;
  aBlock[3] = &unk_1000AE818;
  v14 = _Block_copy(aBlock);

  DeviceIdentityIssueClientCertificateWithCompletion();
  _Block_release(v14);
}

void sub_100004A38(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_errorRetain();
    v3 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(53);
    v4._object = 0x8000000100093F20;
    v4._countAndFlagsBits = 0xD000000000000031;
    String.append(_:)(v4);
    swift_getErrorValue();
    v5._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v5);

    v6._countAndFlagsBits = 32032;
    v6._object = 0xE200000000000000;
    String.append(_:)(v6);
    sub_10005E11C(v3, 0, 0xE000000000000000, 0xD000000000000057, 0x8000000100093E60, 52);

    _StringGuts.grow(_:)(53);
    v7._object = 0x8000000100093F20;
    v7._countAndFlagsBits = 0xD000000000000031;
    String.append(_:)(v7);
    swift_getErrorValue();
    v8._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v8);

    v9._countAndFlagsBits = 32032;
    v9._object = 0xE200000000000000;
    String.append(_:)(v9);
    sub_100002074(&qword_1000B68F0, &qword_10008F5F0);
    CheckedContinuation.resume(returning:)();

    return;
  }

  if (!a1 || (v11 = a1, v12 = sub_100053E70(), v11, (v12 & 1) == 0))
  {
    v13 = static os_log_type_t.error.getter();
    sub_10005E11C(v13, 0xD00000000000003ALL, 0x8000000100093FC0, 0xD000000000000057, 0x8000000100093E60, 57);
LABEL_9:
    sub_100002074(&qword_1000B68F0, &qword_10008F5F0);
    CheckedContinuation.resume(returning:)();
    return;
  }

  if (a2 && sub_100004680(a2))
  {
    goto LABEL_9;
  }

  v14 = static os_log_type_t.error.getter();
  sub_10005E11C(v14, 0xD000000000000020, 0x8000000100093EF0, 0xD000000000000057, 0x8000000100093E60, 64);
  sub_100002074(&qword_1000B68F0, &qword_10008F5F0);
  CheckedContinuation.resume(returning:)();
}

uint64_t sub_100004D58(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a3)
  {
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = a2;
  v10 = a4;
  v7(a2, v8, a4);
}

uint64_t sub_100004E0C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return _swift_task_switch(sub_100004E30, 0, 0);
}

uint64_t sub_100004E30()
{
  if (qword_1000B66D0 != -1)
  {
    swift_once();
  }

  if (byte_1000B9448 == 1)
  {
    v1 = *(v0 + 56);
    v8 = *(v0 + 40);
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *(v2 + 16) = v8;
    *(v2 + 32) = v1;
    v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    v5 = sub_100002074(&qword_1000B68D8, &qword_10008F5D0);
    *v4 = v0;
    v4[1] = sub_100004FE0;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000013, 0x8000000100093DE0, sub_1000059B4, v2, v5);
  }

  else
  {
    v6 = *(v0 + 8);

    return v6(0xD000000000000015, 0x8000000100093DC0, 256);
  }
}

uint64_t sub_100004FE0()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_10000512C;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_1000050FC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000512C()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

void sub_100005190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100002074(&qword_1000B68E0, &qword_10008F5D8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = aBlock - v10;
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v7 + 16))(v11, a1, v6);
  v13 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  (*(v7 + 32))(v14 + v13, v11, v6);
  aBlock[4] = sub_1000059D4;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000476C;
  aBlock[3] = &unk_1000AE778;
  v15 = _Block_copy(aBlock);

  DeviceIdentityCreateHostSignatureWithCompletion();
  _Block_release(v15);
}

uint64_t sub_10000536C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    swift_errorRetain();
    v4 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(47);

    swift_getErrorValue();
    v5._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v5);

    v6._countAndFlagsBits = 32032;
    v6._object = 0xE200000000000000;
    String.append(_:)(v6);
    sub_10005E11C(v4, 0xD00000000000002BLL, 0x8000000100093EC0, 0xD000000000000057, 0x8000000100093E60, 106);

    _StringGuts.grow(_:)(47);

    swift_getErrorValue();
    v7._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v7);

    v8._countAndFlagsBits = 32032;
    v8._object = 0xE200000000000000;
    String.append(_:)(v8);
    sub_100002074(&qword_1000B68E0, &qword_10008F5D8);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (a2 >> 60 == 15)
    {
      v10 = static os_log_type_t.error.getter();
      sub_10005E11C(v10, 0xD000000000000022, 0x8000000100093E30, 0xD000000000000057, 0x8000000100093E60, 111);
    }

    else
    {
      sub_100005A7C(a1, a2);
    }

    sub_100002074(&qword_1000B68E0, &qword_10008F5D8);
    return CheckedContinuation.resume(returning:)();
  }
}

unint64_t sub_1000055C8()
{
  sub_100002074(&qword_1000B68F8, &qword_10008F5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008F570;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Int;
  *(inited + 72) = 43200;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  *(inited + 240) = &type metadata for String;
  *(inited + 216) = 0x74696B7473757274;
  *(inited + 224) = 0xE800000000000000;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  *(inited + 312) = &type metadata for String;
  *(inited + 288) = 0x74696B7473757274;
  *(inited + 296) = 0xE800000000000000;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  *(inited + 384) = &type metadata for Bool;
  *(inited + 360) = 0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  sub_100002074(&qword_1000B6900, &unk_10008F600);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10008F580;
  *(v1 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 40) = v2;
  *(inited + 456) = sub_100002074(&qword_1000B6908, &qword_10008F700);
  *(inited + 432) = v1;
  v3 = sub_1000115E8(inited);
  swift_setDeallocating();
  sub_100002074(&qword_1000B6910, &qword_10008F610);
  swift_arrayDestroy();
  return v3;
}

uint64_t sub_10000581C()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC13frauddefensed18AttestationManager_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AttestationManager()
{
  result = qword_1000B6848;
  if (!qword_1000B6848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100005914()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_1000059FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005A14(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100005A28(a1, a2);
  }

  return a1;
}

uint64_t sub_100005A28(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100005A7C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100005B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = *(sub_100002074(a5, a6) - 8);
  v13 = *(v7 + 16);
  v14 = v7 + ((*(v12 + 80) + 24) & ~*(v12 + 80));

  return a7(a1, a2, a3, a4, v13, v14);
}

uint64_t sub_100005BBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100005C2C(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_100002074(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v2 + 16);

  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

void sub_100005CEC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*(sub_100002074(&qword_1000B68F0, &qword_10008F5F0) - 8) + 80);
  v8 = *(v3 + 16);

  sub_100004A38(a1, a2, a3);
}

__n128 sub_100005D84(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100005D90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100005DD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_100005E3C(uint64_t a1)
{
  v40 = type metadata accessor for NemesisError();
  v3 = *(v40 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v40, v5);
  v39 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v7)
  {
    v32 = v1;
    v44 = &_swiftEmptyArrayStorage;
    sub_100049F4C(0, v7, 0);
    v43 = v44;
    v9 = a1 + 56;
    v10 = -1 << *(a1 + 32);
    result = _HashTable.startBucket.getter();
    v11 = result;
    v12 = 0;
    v37 = v3 + 8;
    v38 = v3 + 16;
    v33 = a1 + 64;
    v34 = v7;
    v35 = v3;
    v36 = a1 + 56;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v14 = v11 >> 6;
      if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_22;
      }

      v15 = *(a1 + 36);
      v41 = v12;
      v42 = v15;
      v16 = v39;
      v17 = v40;
      (*(v3 + 16))(v39, *(a1 + 48) + *(v3 + 72) * v11, v40);
      sub_10000BC70(&qword_1000B6A60, &type metadata accessor for NemesisError);
      v18 = Error.localizedDescription.getter();
      v20 = v19;
      result = (*(v3 + 8))(v16, v17);
      v21 = v43;
      v44 = v43;
      v23 = v43[2];
      v22 = v43[3];
      if (v23 >= v22 >> 1)
      {
        result = sub_100049F4C((v22 > 1), v23 + 1, 1);
        v21 = v44;
      }

      v21[2] = v23 + 1;
      v24 = &v21[2 * v23];
      *(v24 + 4) = v18;
      *(v24 + 5) = v20;
      v13 = 1 << *(a1 + 32);
      if (v11 >= v13)
      {
        goto LABEL_23;
      }

      v9 = v36;
      v25 = *(v36 + 8 * v14);
      if ((v25 & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      v43 = v21;
      if (v42 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v26 = v25 & (-2 << (v11 & 0x3F));
      if (v26)
      {
        v13 = __clz(__rbit64(v26)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v3 = v35;
      }

      else
      {
        v27 = v14 << 6;
        v28 = v14 + 1;
        v29 = (v33 + 8 * v14);
        v3 = v35;
        while (v28 < (v13 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_10000BAC8(v11, v42, 0);
            v13 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        result = sub_10000BAC8(v11, v42, 0);
      }

LABEL_4:
      v12 = v41 + 1;
      v11 = v13;
      if (v41 + 1 == v34)
      {
        return v43;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100006178(uint64_t a1, uint64_t a2)
{
  v3[86] = v2;
  v3[85] = a2;
  v3[84] = a1;
  v5 = type metadata accessor for Decision();
  v3[87] = v5;
  v6 = *(v5 - 8);
  v3[88] = v6;
  v7 = *(v6 + 64) + 15;
  v3[89] = swift_task_alloc();
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();
  v3[92] = swift_task_alloc();
  v3[93] = swift_task_alloc();
  v8 = swift_task_alloc();
  v3[94] = v8;
  *v8 = v3;
  v8[1] = sub_1000062AC;

  return sub_100007E80(a2);
}

uint64_t sub_1000062AC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 752);
  v6 = *v2;
  *(*v2 + 760) = v1;

  if (v1)
  {
    v7 = sub_10000782C;
  }

  else
  {
    *(v4 + 768) = a1;
    v7 = sub_1000063D4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000063D4()
{
  v19 = v0;
  v1 = v0[96];
  v2 = v0[95];
  v3 = v0[86];
  v4 = v0[85];
  v5 = type metadata accessor for LogicGraphDecisioningComponent.LogicGraphInput(0);
  v0[97] = v5;
  v6 = *(v4 + *(v5 + 24));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = v1;
  sub_10000B390(v6, sub_10000A530, 0, isUniquelyReferenced_nonNull_native, &v18);

  v8 = v18;
  v0[98] = v18;
  v0[83] = v8;
  LOBYTE(v5) = *(v4 + *(v5 + 28));
  v0[99] = OBJC_IVAR____TtC13frauddefensed30LogicGraphDecisioningComponent_logger;
  v9 = static os_log_type_t.default.getter();
  v10 = v0[85];
  if (v5)
  {
    sub_10005E11C(v9, 0xD000000000000022, 0x8000000100094040, 0xD000000000000063, 0x8000000100094070, 129);
    v11 = *(type metadata accessor for SpamDecisioningAsset(0) + 24);
    v12 = async function pointer to LogicGraphAsset.execute(for:)[1];
    v13 = swift_task_alloc();
    v0[103] = v13;
    *v13 = v0;
    v14 = sub_100007464;
  }

  else
  {
    sub_10005E11C(v9, 0xD000000000000020, 0x8000000100094140, 0xD000000000000063, 0x8000000100094070, 81);
    v15 = *(type metadata accessor for SpamDecisioningAsset(0) + 20);
    v16 = async function pointer to LogicGraphAsset.execute(for:)[1];
    v13 = swift_task_alloc();
    v0[100] = v13;
    *v13 = v0;
    v14 = sub_1000065E4;
  }

  v13[1] = v14;

  return LogicGraphAsset.execute(for:)(v8);
}

uint64_t sub_1000065E4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 800);
  v7 = *v2;
  *(v3 + 808) = a1;
  *(v3 + 816) = v1;

  if (v1)
  {
    v5 = sub_1000078D0;
  }

  else
  {
    v5 = sub_1000066FC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000066FC()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 808);

  v4 = sub_10000A57C(v3, v0 + 664);

  v127 = v4;
  v129 = sub_100009264(v4);
  if (!*(v4 + 16))
  {
    goto LABEL_10;
  }

  v5 = sub_100057F68(0xD000000000000013, 0x8000000100094170);
  if ((v6 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_10000B704(*(v4 + 56) + 40 * v5, v0 + 216);
  *(v0 + 288) = *(v0 + 248);
  v7 = *(v0 + 232);
  *(v0 + 256) = *(v0 + 216);
  *(v0 + 272) = v7;
  if (!*(v0 + 280))
  {
    sub_10000BC10(v0 + 256, &qword_1000B6A00, &qword_10008F6B0);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v16 = *(v0 + 808);
    if (*(v16 + 16))
    {
      v17 = *(v0 + 808);
      v18 = sub_100057F68(0xD00000000000001FLL, 0x8000000100094190);
      if (v19)
      {
        sub_10000B704(*(*(v0 + 808) + 56) + 40 * v18, v0 + 136);
        *(v0 + 208) = *(v0 + 168);
        v20 = *(v0 + 152);
        *(v0 + 176) = *(v0 + 136);
        *(v0 + 192) = v20;
        if (*(v0 + 200))
        {
          if (swift_dynamicCast())
          {
            v21 = *(v0 + 728);
            v22 = *(v0 + 704);
            v23 = *(v0 + 696);
            v24 = *(v0 + 584);
            v25 = *(v0 + 592);
            (*(v22 + 104))(v21, enum case for Decision.Accept(_:), v23);
            v26 = Decision.rawValue.getter();
            v28 = v27;
            (*(v22 + 8))(v21, v23);
            if (v28)
            {
              if (v24 == v26 && v28 == v25)
              {

LABEL_29:
                v38 = *(v0 + 808);
                v122 = *(v0 + 792);
                v39 = *(v0 + 784);
                v40 = *(v0 + 688);

                v41 = static os_log_type_t.default.getter();
                _StringGuts.grow(_:)(49);
                *(v0 + 600) = 0;
                *(v0 + 608) = 0xE000000000000000;
                v42._countAndFlagsBits = 0xD00000000000002DLL;
                v42._object = 0x8000000100094200;
                String.append(_:)(v42);
                *(v0 + 416) = v39;
                v125 = 3;
                *(v0 + 424) = 3;
                *(v0 + 432) = v4;
                *(v0 + 440) = v129;
                v43 = 1;
                *(v0 + 448) = 1;
                *(v0 + 450) = 1;
                _print_unlocked<A, B>(_:_:)();
                v44._countAndFlagsBits = 32032;
                v44._object = 0xE200000000000000;
                String.append(_:)(v44);
                sub_10005E11C(v41, *(v0 + 600), *(v0 + 608), 0xD000000000000063, 0x8000000100094070, 111);

                v45 = 0;
LABEL_41:
                v60 = 1;
LABEL_42:
                v61 = *(v0 + 784);
                v62 = *(v0 + 744);
                v63 = *(v0 + 736);
                v64 = *(v0 + 728);
                v65 = *(v0 + 720);
                v66 = *(v0 + 712);
                v67 = *(v0 + 672);

                *v67 = v61;
                *(v67 + 8) = v125;
                *(v67 + 16) = v127;
                *(v67 + 24) = v129;
                *(v67 + 32) = v43;
                *(v67 + 33) = v45;
                *(v67 + 34) = v60;
                v68 = *(v0 + 8);
                goto LABEL_43;
              }

              v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v37)
              {
                goto LABEL_29;
              }
            }

            else
            {
            }
          }
        }

        else
        {
          sub_10000BC10(v0 + 176, &qword_1000B6A00, &qword_10008F6B0);
        }
      }
    }

    v46 = *(v0 + 808);
    if (*(v16 + 16))
    {
      v47 = sub_100057F68(0xD00000000000001CLL, 0x80000001000941B0);
      if (v48)
      {
        sub_10000B704(*(*(v0 + 808) + 56) + 40 * v47, v0 + 56);
        *(v0 + 128) = *(v0 + 88);
        v49 = *(v0 + 72);
        *(v0 + 96) = *(v0 + 56);
        *(v0 + 112) = v49;
        if (*(v0 + 120))
        {
          if ((swift_dynamicCast() & 1) == 0)
          {
LABEL_48:
            v77 = *(v0 + 808);
            goto LABEL_40;
          }

          v50 = *(v0 + 720);
          v51 = *(v0 + 704);
          v52 = *(v0 + 696);
          v53 = *(v0 + 552);
          v54 = *(v0 + 560);
          (*(v51 + 104))(v50, enum case for Decision.Accept(_:), v52);
          v55 = Decision.rawValue.getter();
          v57 = v56;
          (*(v51 + 8))(v50, v52);
          if (v57)
          {
            if (v53 == v55 && v57 == v54)
            {

LABEL_47:
              v71 = *(v0 + 808);
              v123 = *(v0 + 792);
              v72 = *(v0 + 784);
              v73 = *(v0 + 688);

              v74 = static os_log_type_t.default.getter();
              _StringGuts.grow(_:)(45);
              *(v0 + 568) = 0;
              *(v0 + 576) = 0xE000000000000000;
              v75._countAndFlagsBits = 0xD000000000000029;
              v75._object = 0x80000001000941D0;
              String.append(_:)(v75);
              *(v0 + 376) = v72;
              v125 = 3;
              *(v0 + 384) = 3;
              *(v0 + 392) = v4;
              *(v0 + 400) = v129;
              *(v0 + 408) = 256;
              v45 = 1;
              *(v0 + 410) = 1;
              _print_unlocked<A, B>(_:_:)();
              v76._countAndFlagsBits = 32032;
              v76._object = 0xE200000000000000;
              String.append(_:)(v76);
              sub_10005E11C(v74, *(v0 + 568), *(v0 + 576), 0xD000000000000063, 0x8000000100094070, 121);

              v43 = 0;
              goto LABEL_41;
            }

            v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v70)
            {
              goto LABEL_47;
            }

            goto LABEL_48;
          }

          v59 = *(v0 + 808);
        }

        else
        {
          v58 = *(v0 + 808);
          sub_10000BC10(v0 + 96, &qword_1000B6A00, &qword_10008F6B0);
        }
      }
    }

LABEL_40:

    v43 = 1;
    v125 = 3;
    v45 = 1;
    goto LABEL_41;
  }

  v8 = *(v0 + 744);
  v9 = *(v0 + 704);
  v10 = *(v0 + 696);
  v11 = *(v0 + 616);
  v12 = *(v0 + 624);
  v124 = *(v9 + 104);
  v124(v8, enum case for Decision.Accept(_:), v10);
  v13 = Decision.rawValue.getter();
  v15 = v14;
  v121 = *(v9 + 8);
  v121(v8, v10);
  if (v15)
  {
    if (v13 == v11 && v15 == v12)
    {

LABEL_23:
      v30 = 1;
LABEL_52:
      v80 = *(v0 + 808);
      v81 = *(v0 + 792);
      v82 = *(v0 + 784);
      v83 = *(v0 + 688);

      v84 = static os_log_type_t.default.getter();
      _StringGuts.grow(_:)(67);
      *(v0 + 632) = 0;
      *(v0 + 640) = 0xE000000000000000;
      v85._countAndFlagsBits = 0xD00000000000003FLL;
      v85._object = 0x8000000100094260;
      String.append(_:)(v85);
      *(v0 + 336) = v82;
      v125 = v30;
      *(v0 + 344) = v30;
      *(v0 + 352) = v4;
      *(v0 + 360) = v129;
      *(v0 + 368) = 0;
      *(v0 + 370) = 0;
      _print_unlocked<A, B>(_:_:)();
      v86._countAndFlagsBits = 32032;
      v86._object = 0xE200000000000000;
      String.append(_:)(v86);
      sub_10005E11C(v84, *(v0 + 632), *(v0 + 640), 0xD000000000000063, 0x8000000100094070, 102);

      v43 = 0;
      v45 = 0;
      v60 = 0;
      goto LABEL_42;
    }

    v119 = v11;
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v29)
    {
      swift_bridgeObjectRelease_n();
      goto LABEL_23;
    }
  }

  else
  {
    v119 = v11;
  }

  v31 = *(v0 + 736);
  v32 = *(v0 + 696);
  v124(v31, enum case for Decision.Reject(_:), v32);
  v33 = Decision.rawValue.getter();
  v35 = v34;
  v121(v31, v32);
  if (v35)
  {
    v36 = v12;
    if (v33 == v119 && v35 == v12)
    {
      swift_bridgeObjectRelease_n();
LABEL_51:

      v30 = 0;
      goto LABEL_52;
    }

    v78 = v119;
    v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v79)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v36 = v12;

    v78 = v119;
  }

  v126 = *(v0 + 792);
  v87 = *(v0 + 688);

  v88 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(45);

  v89._countAndFlagsBits = v78;
  v89._object = v36;
  String.append(_:)(v89);
  v90._countAndFlagsBits = 32032;
  v90._object = 0xE200000000000000;
  String.append(_:)(v90);
  sub_10005E11C(v88, 0xD000000000000029, 0x8000000100094230, 0xD000000000000063, 0x8000000100094070, 98);

  _StringGuts.grow(_:)(45);

  v91._countAndFlagsBits = v78;
  v91._object = v36;
  String.append(_:)(v91);

  v92._countAndFlagsBits = 32032;
  v92._object = 0xE200000000000000;
  String.append(_:)(v92);
  sub_10000B6B0();
  swift_allocError();
  *v93 = 0xD000000000000029;
  *(v93 + 8) = 0x8000000100094230;
  *(v93 + 16) = 4;
  swift_willThrow();
  v128 = *(v0 + 808);
  v130 = *(v0 + 784);
  v94 = *(v0 + 776);
  v120 = *(v0 + 688);
  v95 = *(v0 + 680);
  v96 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(67);
  *(v0 + 536) = 0;
  *(v0 + 544) = 0xE000000000000000;
  v97._object = 0x80000001000940E0;
  v97._countAndFlagsBits = 0xD000000000000035;
  String.append(_:)(v97);
  swift_getErrorValue();
  v99 = *(v0 + 480);
  v98 = *(v0 + 488);
  v100 = *(v0 + 496);
  v101._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v101);

  v102._countAndFlagsBits = 0x3D7475706E69202CLL;
  v102._object = 0xE800000000000000;
  String.append(_:)(v102);
  _print_unlocked<A, B>(_:_:)();
  v103._countAndFlagsBits = 32032;
  v103._object = 0xE200000000000000;
  String.append(_:)(v103);
  sub_10005E11C(v96, *(v0 + 536), *(v0 + 544), 0xD000000000000063, 0x8000000100094070, 143);

  _StringGuts.grow(_:)(67);
  *(v0 + 520) = 0;
  *(v0 + 528) = 0xE000000000000000;
  v104._object = 0x80000001000940E0;
  v104._countAndFlagsBits = 0xD000000000000035;
  String.append(_:)(v104);
  swift_getErrorValue();
  v106 = *(v0 + 456);
  v105 = *(v0 + 464);
  v107 = *(v0 + 472);
  v108._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v108);

  v109._countAndFlagsBits = 0x3D7475706E69202CLL;
  v109._object = 0xE800000000000000;
  String.append(_:)(v109);
  _print_unlocked<A, B>(_:_:)();
  v110._countAndFlagsBits = 32032;
  v110._object = 0xE200000000000000;
  String.append(_:)(v110);
  v111 = *(v0 + 520);
  v112 = *(v0 + 528);
  swift_allocError();
  *v113 = v111;
  *(v113 + 8) = v112;
  *(v113 + 16) = 5;
  swift_willThrow();

  v114 = *(v0 + 744);
  v115 = *(v0 + 736);
  v116 = *(v0 + 728);
  v117 = *(v0 + 720);
  v118 = *(v0 + 712);

  v68 = *(v0 + 8);
LABEL_43:

  return v68();
}

uint64_t sub_100007464(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 824);
  v7 = *v2;
  *(v3 + 832) = a1;
  *(v3 + 840) = v1;

  if (v1)
  {
    v5 = sub_100007BA8;
  }

  else
  {
    v5 = sub_10000757C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000757C()
{
  v1 = *(v0 + 840);
  v2 = *(v0 + 832);

  v4 = sub_10000A57C(v3, v0 + 664);

  v5 = sub_100009264(v4);
  if (*(v2 + 16))
  {
    v6 = *(v0 + 832);
    v7 = sub_100057F68(0xD000000000000010, 0x8000000100094120);
    if (v8)
    {
      sub_10000B704(*(*(v0 + 832) + 56) + 40 * v7, v0 + 16);
      *(v0 + 328) = *(v0 + 48);
      v9 = *(v0 + 32);
      *(v0 + 296) = *(v0 + 16);
      *(v0 + 312) = v9;
      if (*(v0 + 320))
      {
        if (swift_dynamicCast())
        {
          v11 = *(v0 + 504);
          v10 = *(v0 + 512);
          goto LABEL_8;
        }
      }

      else
      {
        sub_10000BC10(v0 + 296, &qword_1000B6A00, &qword_10008F6B0);
      }
    }
  }

  v11 = 0;
  v10 = 0;
LABEL_8:
  v12 = *(v0 + 712);
  v13 = *(v0 + 704);
  v14 = *(v0 + 696);
  (*(v13 + 104))(v12, enum case for Decision.Reject(_:), v14);
  v15 = Decision.rawValue.getter();
  v17 = v16;
  (*(v13 + 8))(v12, v14);
  if (!v10)
  {
    v19 = *(v0 + 832);

    if (!v17)
    {
      goto LABEL_18;
    }

LABEL_16:

    v21 = 1;
    goto LABEL_19;
  }

  if (!v17)
  {
    v20 = *(v0 + 832);

    goto LABEL_16;
  }

  v18 = *(v0 + 832);
  if (v11 == v15 && v10 == v17)
  {

LABEL_18:
    v21 = 0;
    goto LABEL_19;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v22)
  {
    goto LABEL_18;
  }

  v21 = 1;
LABEL_19:
  v23 = *(v0 + 784);
  v24 = *(v0 + 744);
  v25 = *(v0 + 736);
  v26 = *(v0 + 728);
  v27 = *(v0 + 720);
  v28 = *(v0 + 712);
  v29 = *(v0 + 672);

  *v29 = v23;
  *(v29 + 8) = v21;
  *(v29 + 16) = v4;
  *(v29 + 24) = v5;
  *(v29 + 32) = 0;
  *(v29 + 34) = 0;
  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_10000782C()
{
  v1 = v0[95];
  v2 = v0[93];
  v3 = v0[92];
  v4 = v0[91];
  v5 = v0[90];
  v6 = v0[89];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000078D0()
{
  v1 = v0[102];
  v2 = v0[97];
  v29 = v0[86];
  v30 = v0[98];
  v3 = v0[85];
  v4 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(67);
  v0[67] = 0;
  v0[68] = 0xE000000000000000;
  v5._object = 0x80000001000940E0;
  v5._countAndFlagsBits = 0xD000000000000035;
  String.append(_:)(v5);
  swift_getErrorValue();
  v7 = v0[60];
  v6 = v0[61];
  v8 = v0[62];
  v9._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x3D7475706E69202CLL;
  v10._object = 0xE800000000000000;
  String.append(_:)(v10);
  _print_unlocked<A, B>(_:_:)();
  v11._countAndFlagsBits = 32032;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  sub_10005E11C(v4, v0[67], v0[68], 0xD000000000000063, 0x8000000100094070, 143);

  _StringGuts.grow(_:)(67);
  v0[65] = 0;
  v0[66] = 0xE000000000000000;
  v12._object = 0x80000001000940E0;
  v12._countAndFlagsBits = 0xD000000000000035;
  String.append(_:)(v12);
  swift_getErrorValue();
  v14 = v0[57];
  v13 = v0[58];
  v15 = v0[59];
  v16._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x3D7475706E69202CLL;
  v17._object = 0xE800000000000000;
  String.append(_:)(v17);
  _print_unlocked<A, B>(_:_:)();
  v18._countAndFlagsBits = 32032;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19 = v0[65];
  v20 = v0[66];
  sub_10000B6B0();
  swift_allocError();
  *v21 = v19;
  *(v21 + 8) = v20;
  *(v21 + 16) = 5;
  swift_willThrow();

  v22 = v0[93];
  v23 = v0[92];
  v24 = v0[91];
  v25 = v0[90];
  v26 = v0[89];

  v27 = v0[1];

  return v27();
}

uint64_t sub_100007BA8()
{
  v1 = v0[105];
  v2 = v0[97];
  v29 = v0[86];
  v30 = v0[98];
  v3 = v0[85];
  v4 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(67);
  v0[67] = 0;
  v0[68] = 0xE000000000000000;
  v5._object = 0x80000001000940E0;
  v5._countAndFlagsBits = 0xD000000000000035;
  String.append(_:)(v5);
  swift_getErrorValue();
  v7 = v0[60];
  v6 = v0[61];
  v8 = v0[62];
  v9._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x3D7475706E69202CLL;
  v10._object = 0xE800000000000000;
  String.append(_:)(v10);
  _print_unlocked<A, B>(_:_:)();
  v11._countAndFlagsBits = 32032;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  sub_10005E11C(v4, v0[67], v0[68], 0xD000000000000063, 0x8000000100094070, 143);

  _StringGuts.grow(_:)(67);
  v0[65] = 0;
  v0[66] = 0xE000000000000000;
  v12._object = 0x80000001000940E0;
  v12._countAndFlagsBits = 0xD000000000000035;
  String.append(_:)(v12);
  swift_getErrorValue();
  v14 = v0[57];
  v13 = v0[58];
  v15 = v0[59];
  v16._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x3D7475706E69202CLL;
  v17._object = 0xE800000000000000;
  String.append(_:)(v17);
  _print_unlocked<A, B>(_:_:)();
  v18._countAndFlagsBits = 32032;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19 = v0[65];
  v20 = v0[66];
  sub_10000B6B0();
  swift_allocError();
  *v21 = v19;
  *(v21 + 8) = v20;
  *(v21 + 16) = 5;
  swift_willThrow();

  v22 = v0[93];
  v23 = v0[92];
  v24 = v0[91];
  v25 = v0[90];
  v26 = v0[89];

  v27 = v0[1];

  return v27();
}

uint64_t sub_100007E80(uint64_t a1)
{
  v2[36] = a1;
  v2[37] = v1;
  v3 = type metadata accessor for Date();
  v2[38] = v3;
  v4 = *(v3 - 8);
  v2[39] = v4;
  v5 = *(v4 + 64) + 15;
  v2[40] = swift_task_alloc();
  v6 = *(*(sub_100002074(&qword_1000B6A68, &qword_10008F6F0) - 8) + 64) + 15;
  v2[41] = swift_task_alloc();
  v7 = type metadata accessor for Locale.Language();
  v2[42] = v7;
  v8 = *(v7 - 8);
  v2[43] = v8;
  v9 = *(v8 + 64) + 15;
  v2[44] = swift_task_alloc();
  v10 = type metadata accessor for Locale();
  v2[45] = v10;
  v11 = *(v10 - 8);
  v2[46] = v11;
  v12 = *(v11 + 64) + 15;
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v13 = type metadata accessor for LogicGraphDecisioningComponent.LogicGraphInput(0);
  v2[49] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v2[50] = swift_task_alloc();

  return _swift_task_switch(sub_100008098, 0, 0);
}

uint64_t sub_100008098()
{
  v144 = v0;
  v1 = sub_100011724(&_swiftEmptyArrayStorage);
  v139 = v1;
  v2 = objc_allocWithZone(NSDataDetector);
  v0[33] = 0;
  v3 = [v2 initWithTypes:32 error:v0 + 33];
  v4 = v0[33];
  v138 = v0;
  if (!v3)
  {
    v30 = v0[49];
    v29 = v0[50];
    v31 = v0[36];
    v32 = v0[37];
    v33 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v34 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(28);

    v142 = 0xD000000000000018;
    v143 = 0x80000001000942A0;
    sub_10000BADC(v31, v29);
    v35._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v35);

    v36._countAndFlagsBits = 32032;
    v36._object = 0xE200000000000000;
    String.append(_:)(v36);
    v37 = v0;
    sub_10005E11C(v34, 0xD000000000000018, 0x80000001000942A0, 0xD000000000000063, 0x8000000100094070, 230);

    v38 = v1;
    goto LABEL_22;
  }

  v5 = v3;
  v6 = v0[36] + *(v0[49] + 20);
  v8 = *(v6 + 48);
  v7 = *(v6 + 56);
  v9 = v4;
  v10 = v7;
  v11 = String._bridgeToObjectiveC()();
  v12 = [v5 matchesInString:v11 options:0 range:{0, String.UTF16View.count.getter()}];

  sub_10000BCB8(0, &qword_1000B6AA0, NSTextCheckingResult_ptr);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v13 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
    v131 = v5;
    if (v14)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v131 = v5;
    if (v14)
    {
LABEL_4:
      if (v14 < 1)
      {
        __break(1u);
      }

      v15 = 0;
      v16 = v13 & 0xC000000000000001;
      v17 = &_swiftEmptyArrayStorage;
      p_name = &stru_1000B4FF8.name;
      v134 = v14;
      v136 = v13;
      do
      {
        if (v16)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v19 = *(v13 + 8 * v15 + 32);
        }

        v20 = v19;
        [v19 p_name[281]];
        Range<>.init(_:in:)();
        if (v21)
        {
        }

        else
        {
          v22 = v10;
          String.subscript.getter();
          v23 = static String._fromSubstring(_:)();
          v25 = v24;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_1000495F0(0, *(v17 + 2) + 1, 1, v17);
          }

          v27 = *(v17 + 2);
          v26 = *(v17 + 3);
          if (v27 >= v26 >> 1)
          {
            v17 = sub_1000495F0((v26 > 1), v27 + 1, 1, v17);
          }

          *(v17 + 2) = v27 + 1;
          v28 = &v17[16 * v27];
          *(v28 + 4) = v23;
          *(v28 + 5) = v25;
          v14 = v134;
          v13 = v136;
          v10 = v22;
          p_name = (&stru_1000B4FF8 + 8);
        }

        ++v15;
      }

      while (v14 != v15);
      v1 = v139;
      goto LABEL_21;
    }
  }

  v17 = &_swiftEmptyArrayStorage;
LABEL_21:

  v138[35] = v17;
  v37 = v138;
  sub_100002074(&qword_1000B6908, &qword_10008F700);
  sub_10000BB40();
  AnyHashable.init<A>(_:)();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10005B20C(&v142, 0x6465746365746564, 0xEC000000736C7255, isUniquelyReferenced_nonNull_native);

  v38 = v1;
LABEL_22:
  v40 = (v37[36] + *(v37[49] + 20));
  v42 = v40[6];
  v41 = v40[7];
  *(v37 + 408) = sub_100009FFC(v42, v41) & 1;
  AnyHashable.init<A>(_:)();
  v43 = swift_isUniquelyReferenced_nonNull_native();
  sub_10005B20C(&v142, 0x6465746365746564, 0xED0000696A6F6D45, v43);
  sub_100002074(&qword_1000B6A70, &qword_10008F6F8);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_10008F580;
  *(v44 + 32) = NLTagSchemeLanguage;
  v45 = objc_allocWithZone(NLTagger);
  type metadata accessor for NLTagScheme(0);
  v46 = NLTagSchemeLanguage;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v48 = [v45 initWithTagSchemes:isa];

  v49 = String._bridgeToObjectiveC()();
  [v48 setString:v49];

  v135 = v48;
  v50 = [v48 dominantLanguage];
  v137 = v40;
  if (v50)
  {
    v51 = v50;
    v37[31] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37[32] = v52;
    AnyHashable.init<A>(_:)();
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v141 = v38;
    sub_10005B20C(&v142, 0xD000000000000010, 0x80000001000942F0, v53);
  }

  else
  {
    v54 = v37[49];
    v55 = v37[50];
    v56 = v138[37];
    v57 = v138[36];
    v58 = static os_log_type_t.error.getter();
    v142 = 0;
    v143 = 0xE000000000000000;
    _StringGuts.grow(_:)(47);

    v142 = 0xD00000000000002BLL;
    v143 = 0x80000001000942C0;
    sub_10000BADC(v57, v55);
    v59._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v59);

    v60._countAndFlagsBits = 32032;
    v60._object = 0xE200000000000000;
    String.append(_:)(v60);
    v37 = v138;
    sub_10005E11C(v58, v142, v143, 0xD000000000000063, 0x8000000100094070, 244);

    v138[7] = 0;
    v138[8] = 0xE000000000000000;
    AnyHashable.init<A>(_:)();
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v141 = v38;
    sub_10005B20C(&v142, 0xD000000000000010, 0x80000001000942F0, v61);
  }

  v62 = &_swiftEmptyArrayStorage;
  if (v40[10])
  {
    v62 = v40[10];
  }

  v37[34] = v62;

  sub_100002074(&qword_1000B6908, &qword_10008F700);
  sub_10000BB40();
  AnyHashable.init<A>(_:)();
  v63 = swift_isUniquelyReferenced_nonNull_native();
  sub_10005B20C(&v142, 0xD000000000000013, 0x8000000100094310, v63);
  v37[9] = v42;
  v37[10] = v41;

  AnyHashable.init<A>(_:)();
  v64 = swift_isUniquelyReferenced_nonNull_native();
  sub_10005B20C(&v142, 0x6567617373656DLL, 0xE700000000000000, v64);
  v65 = v40[3];
  v37[11] = v40[2];
  v37[12] = v65;

  AnyHashable.init<A>(_:)();
  v66 = swift_isUniquelyReferenced_nonNull_native();
  sub_10005B20C(&v142, 0x6E696769726FLL, 0xE600000000000000, v66);
  v67 = v40[12];
  if (v67)
  {
    v37[29] = v40[11];
    v37[30] = v67;
  }

  else
  {
    v37[13] = 0;
    v37[14] = 0xE000000000000000;
  }

  AnyHashable.init<A>(_:)();
  v68 = swift_isUniquelyReferenced_nonNull_native();
  sub_10005B20C(&v142, 0x6353656C676F6F67, 0xEB0000000065726FLL, v68);
  v70 = v40[4];
  v69 = v40[5];
  v37[15] = v70;
  v37[16] = v69;

  AnyHashable.init<A>(_:)();
  v71 = swift_isUniquelyReferenced_nonNull_native();
  sub_10005B20C(&v142, 0x7265646E6573, 0xE600000000000000, v71);
  v72._countAndFlagsBits = 980182388;
  v72._object = 0xE400000000000000;
  v73 = String.hasPrefix(_:)(v72);

  if (v73)
  {
    v74 = String.count.getter();
    sub_10000B2E0(v74, v70, v69);

    v70 = static String._fromSubstring(_:)();
    v69 = v75;
  }

  v76._countAndFlagsBits = 0x3A6F746C69616DLL;
  v76._object = 0xE700000000000000;
  if (String.hasPrefix(_:)(v76))
  {
    v77 = String.count.getter();
    sub_10000B2E0(v77, v70, v69);

    static String._fromSubstring(_:)();
  }

  sub_10000BCB8(0, &qword_1000B6A80, NSPredicate_ptr);
  sub_100002074(&qword_1000B6A88, &qword_10008F708);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_10008F580;
  *(v78 + 56) = &type metadata for String;
  *(v78 + 64) = sub_10000BBBC();
  *(v78 + 32) = 0xD000000000000019;
  *(v78 + 40) = 0x8000000100094330;
  v79 = NSPredicate.init(format:_:)();
  v80 = String._bridgeToObjectiveC()();
  v81 = [v79 evaluateWithObject:v80];

  if (v81)
  {
    v82 = String.count.getter();

    *(v37 + 409) = v82 == 5;
    AnyHashable.init<A>(_:)();
    v83 = swift_isUniquelyReferenced_nonNull_native();
    sub_10005B20C(&v142, 0xD000000000000014, 0x8000000100094370, v83);
  }

  else
  {
  }

  v85 = v37[47];
  v84 = v37[48];
  v86 = v138[46];
  v87 = v138[45];
  v88 = v138[44];
  v89 = v138[43];
  v90 = v138[42];
  v132 = v138[41];
  static Locale.current.getter();
  Locale.language.getter();
  v91 = *(v86 + 8);
  v91(v84, v87);
  v92 = Locale.Language.minimalIdentifier.getter();
  v94 = v93;
  (*(v89 + 8))(v88, v90);
  v138[17] = v92;
  v138[18] = v94;
  AnyHashable.init<A>(_:)();
  v95 = swift_isUniquelyReferenced_nonNull_native();
  sub_10005B20C(&v142, 0x614C656369766564, 0xEE0065676175676ELL, v95);
  v140 = v141;
  static Locale.current.getter();
  Locale.region.getter();
  v91(v85, v87);
  v96 = type metadata accessor for Locale.Region();
  v97 = *(v96 - 8);
  v98 = (*(v97 + 48))(v132, 1, v96);
  v99 = v138[41];
  if (v98 == 1)
  {
    sub_10000BC10(v138[41], &qword_1000B6A68, &qword_10008F6F0);
  }

  else
  {
    v100 = Locale.Region.identifier.getter();
    v102 = v101;
    (*(v97 + 8))(v99, v96);
    v138[27] = v100;
    v138[28] = v102;
    AnyHashable.init<A>(_:)();
    v103 = swift_isUniquelyReferenced_nonNull_native();
    sub_10005B20C(&v142, 0x6F43656369766564, 0xED00007972746E75, v103);
    v140 = v141;
  }

  v104 = v40[9];
  if (v104)
  {
    v138[25] = v40[8];
    v138[26] = v104;

    AnyHashable.init<A>(_:)();
    v105 = swift_isUniquelyReferenced_nonNull_native();
    sub_10005B20C(&v142, 0xD000000000000013, 0x8000000100094350, v105);
    v140 = v141;
  }

  else
  {
    sub_100056080(0xD000000000000013, 0x8000000100094350, (v138 + 2));
    sub_10000BC10((v138 + 2), &qword_1000B6A28, &qword_10008F6D8);
  }

  if (qword_1000B66E8 != -1)
  {
    swift_once();
  }

  v106 = qword_1000B9470;
  if (qword_1000B9470)
  {
    v107 = qword_1000B9468;
    if (qword_1000B66F0 != -1)
    {
      v128 = qword_1000B9470;
      swift_once();
      v106 = v128;
    }

    v108 = qword_1000B9480;
    if (qword_1000B9480)
    {
      v109 = qword_1000B9478;
      v142 = v107;
      v143 = v106;

      v110._countAndFlagsBits = 2108704;
      v110._object = 0xE300000000000000;
      String.append(_:)(v110);
      v111._countAndFlagsBits = v109;
      v111._object = v108;
      String.append(_:)(v111);
      v112 = v143;
      v138[23] = v142;
      v138[24] = v112;
      AnyHashable.init<A>(_:)();
      v113 = swift_isUniquelyReferenced_nonNull_native();
      sub_10005B20C(&v142, 0x6F6973726556736FLL, 0xE90000000000006ELL, v113);
    }
  }

  v114 = v138[50];
  v115 = v138[48];
  v129 = v138[47];
  v130 = v138[44];
  v133 = v138[41];
  v116 = v138[40];
  v117 = v138[39];
  v118 = v138[38];
  v119 = 7369839;
  if (*(v137 + 104))
  {
    v119 = 0;
  }

  v120 = 0xE300000000000000;
  if (*(v137 + 104))
  {
    v120 = 0xE000000000000000;
  }

  v138[19] = v119;
  v138[20] = v120;
  AnyHashable.init<A>(_:)();
  v121 = swift_isUniquelyReferenced_nonNull_native();
  sub_10005B20C(&v142, 0x546567617373656DLL, 0xEB00000000657079, v121);
  Date.init()();
  sub_10000BC70(&qword_1000B6A98, &type metadata accessor for Date);
  v122 = dispatch thunk of CustomStringConvertible.description.getter();
  v124 = v123;
  (*(v117 + 8))(v116, v118);
  v138[21] = v122;
  v138[22] = v124;
  AnyHashable.init<A>(_:)();
  v125 = swift_isUniquelyReferenced_nonNull_native();
  sub_10005B20C(&v142, 0x6D617473656D6974, 0xE900000000000070, v125);

  v126 = v138[1];

  return v126(v140);
}

uint64_t sub_100009264(uint64_t a1)
{
  v3 = a1 + 64;
  v2 = *(a1 + 64);
  v18 = a1;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v2;
  v7 = (v4 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v6; result = sub_10000BC10(v16, &qword_1000B6A08, &qword_10008F6B8))
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v10 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    sub_10000B704(*(a1 + 56) + 40 * v12, v17);
    v16[0] = v14;
    v16[1] = v15;

    sub_1000093A4(v14, v15, v17, &v18);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v18;
    }

    v6 = *(v3 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000093A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v105 = a4;
  v7 = sub_100002074(&qword_1000B6A18, &qword_10008F6C8);
  v8 = *(*(v7 - 8) + 64);
  v10 = __chkstk_darwin(v7 - 8, v9);
  v12 = v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = v92 - v14;
  v16 = type metadata accessor for Decision();
  v106 = *(v16 - 8);
  v17 = *(v106 + 8);
  v19 = __chkstk_darwin(v16, v18);
  v21 = v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v22);
  v24 = v92 - v23;
  sub_10000B704(a3, &v114);
  if (v117)
  {
    v25.isa = AnyHashable._bridgeToObjectiveC()().isa;
    sub_10000BA20(&v114);
    objc_opt_self();
    v26 = swift_dynamicCastObjCClass();
    if (v26)
    {
      v27 = v26;
      v28 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:0];
      v100 = v21;
      v102 = v16;
      v29 = v28;
      [v27 encodeWithCoder:v28];
      [v29 finishEncoding];
      v30 = [v29 encodedData];
      v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v104 = v15;
      v32 = v24;
      v33 = a3;
      v34 = v12;
      v35 = v31;
      isa = v25.isa;
      v36 = a1;
      v37 = a2;
      v39 = v38;

      v16 = v102;
      v21 = v100;

      *&v111 = v35;
      *(&v111 + 1) = v39;
      v12 = v34;
      a3 = v33;
      v24 = v32;
      v15 = v104;
      a2 = v37;
      a1 = v36;
      sub_10000BA74();
      AnyHashable.init<A>(_:)();

      sub_10005674C(&v114, v36, a2);
    }

    else
    {
    }
  }

  else
  {
    sub_10000BC10(&v114, &qword_1000B6A00, &qword_10008F6B0);
  }

  sub_10000B704(a3, &v114);
  if (!v117)
  {
    sub_10000BC10(&v114, &qword_1000B6A00, &qword_10008F6B0);
    v104 = *(v106 + 7);
    (v104)(v15, 1, 1, v16);
    goto LABEL_11;
  }

  v40 = swift_dynamicCast();
  v41 = v106;
  v104 = *(v106 + 7);
  (v104)(v15, v40 ^ 1u, 1, v16);
  if ((*(v41 + 6))(v15, 1, v16) == 1)
  {
LABEL_11:
    sub_10000BC10(v15, &qword_1000B6A18, &qword_10008F6C8);
    goto LABEL_14;
  }

  (*(v106 + 4))(v24, v15, v16);
  v42 = Decision.rawValue.getter();
  if (v43)
  {
    *&v111 = v42;
    *(&v111 + 1) = v43;
    AnyHashable.init<A>(_:)();
  }

  else
  {
    v114 = 0;
    v115 = 0;
    v116 = 0;
    v117 = xmmword_10008F650;
  }

  sub_10005674C(&v114, a1, a2);
  (*(v106 + 1))(v24, v16);
LABEL_14:
  sub_10000B704(a3, &v114);
  if (v117)
  {
    sub_100002074(&qword_1000B6A40, &unk_10008F6E0);
    if (swift_dynamicCast())
    {
      v44 = a3;
      v45 = v16;
      v46 = sub_100005E3C(v111);

      v47 = sub_10000B924(v46);
      v16 = v45;
      a3 = v44;

      *&v111 = v47;

      sub_100002074(&qword_1000B6A48, &unk_100093170);
      sub_10000B9BC();
      AnyHashable.init<A>(_:)();
      sub_10005674C(&v114, a1, a2);
    }
  }

  else
  {
    sub_10000BC10(&v114, &qword_1000B6A00, &qword_10008F6B0);
  }

  sub_10000B704(a3, &v114);
  if (!v117)
  {
    return sub_10000BC10(&v114, &qword_1000B6A00, &qword_10008F6B0);
  }

  v48 = sub_100002074(&qword_1000B6A20, &qword_10008F6D0);
  result = swift_dynamicCast();
  if (result)
  {
    v94 = v48;
    v92[1] = 0;
    v95 = a1;
    v96 = a2;
    v50 = v111;
    v51 = v111 + 64;
    v52 = 1 << *(v111 + 32);
    v53 = -1;
    if (v52 < 64)
    {
      v53 = ~(-1 << v52);
    }

    v54 = v53 & *(v111 + 64);
    v55 = (v52 + 63) >> 6;
    v101 = v106 + 56;
    v99 = (v106 + 32);
    v98 = (v106 + 8);
    swift_bridgeObjectRetain_n();
    v56 = 0;
    v93 = xmmword_10008F650;
    v106 = v50;
    isa = v50;
    v97 = v12;
    v102 = v16;
    v100 = v21;
    while (v54)
    {
LABEL_30:
      v58 = __clz(__rbit64(v54)) | (v56 << 6);
      v59 = (*(v106 + 6) + 16 * v58);
      v60 = *v59;
      v61 = v59[1];
      sub_10000B704(*(v106 + 7) + 40 * v58, &v116);
      v114 = v60;
      v115 = v61;
      v113[3] = sub_100002074(&qword_1000B6A00, &qword_10008F6B0);
      v113[0] = swift_allocObject();
      sub_10000B704(&v116, v113[0] + 16);
      sub_100005BBC(v113, &v111);

      if (swift_dynamicCast())
      {
        (v104)(v12, 0, 1, v16);
        (*v99)(v21, v12, v16);
        v62 = Decision.rawValue.getter();
        if (v63)
        {
          *&v108 = v62;
          *(&v108 + 1) = v63;
          AnyHashable.init<A>(_:)();
          v108 = v111;
          v109 = *v112;
          v110 = *&v112[16];

          v64 = isa;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v107 = v64;
          v67 = sub_100057F68(v60, v61);
          v68 = *(v64 + 2);
          v69 = (v66 & 1) == 0;
          v70 = v68 + v69;
          if (__OFADD__(v68, v69))
          {
            goto LABEL_55;
          }

          v71 = v66;
          if (*(v64 + 3) >= v70)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_100059AD4();
            }

            v12 = v97;
          }

          else
          {
            sub_100058508(v70, isUniquelyReferenced_nonNull_native);
            v72 = sub_100057F68(v60, v61);
            if ((v71 & 1) != (v73 & 1))
            {
              goto LABEL_57;
            }

            v67 = v72;
            v12 = v97;
          }

          v83 = v107;
          isa = v107;
          if (v71)
          {
            sub_10000B7B4(&v108, v107[7] + 40 * v67);
          }

          else
          {
            v107[(v67 >> 6) + 8] |= 1 << v67;
            v84 = (v83[6] + 16 * v67);
            *v84 = v60;
            v84[1] = v61;
            v85 = v83[7] + 40 * v67;
            v86 = v108;
            v87 = v109;
            *(v85 + 32) = v110;
            *v85 = v86;
            *(v85 + 16) = v87;
            v88 = v83[2];
            v89 = __OFADD__(v88, 1);
            v90 = v88 + 1;
            if (v89)
            {
              goto LABEL_56;
            }

            v83[2] = v90;
          }

          v16 = v102;
          v21 = v100;
        }

        else
        {

          v74 = isa;
          v75 = sub_100057F68(v60, v61);
          if (v76)
          {
            v77 = v75;
            v78 = swift_isUniquelyReferenced_nonNull_native();
            *&v108 = v74;
            if ((v78 & 1) == 0)
            {
              sub_100059AD4();
              v74 = v108;
            }

            v79 = *(*(v74 + 6) + 16 * v77 + 8);

            v80 = *(v74 + 7) + 40 * v77;
            v81 = *(v80 + 32);
            v82 = *(v80 + 16);
            v111 = *v80;
            *v112 = v82;
            *&v112[16] = v81;
            isa = v74;
            sub_10005A7BC(v77, v74);
          }

          else
          {
            v111 = 0uLL;
            *v112 = 0;
            *&v112[8] = v93;
          }

          sub_10000BC10(&v111, &qword_1000B6A28, &qword_10008F6D8);
          v16 = v102;
        }

        (*v98)(v21, v16);
      }

      else
      {
        (v104)(v12, 1, 1, v16);
        sub_10000BC10(v12, &qword_1000B6A18, &qword_10008F6C8);
      }

      v54 &= v54 - 1;
      sub_100003558(v113);
      sub_10000BC10(&v114, &qword_1000B6A08, &qword_10008F6B8);
    }

    while (1)
    {
      v57 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      if (v57 >= v55)
      {

        *&v111 = isa;
        sub_10000B824();
        v91 = v96;

        AnyHashable.init<A>(_:)();
        sub_10005674C(&v114, v95, v91);
      }

      v54 = *(v51 + 8 * v57);
      ++v56;
      if (v54)
      {
        v56 = v57;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

Swift::Int sub_100009F44()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100009FB8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100009FFC(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Unicode.Scalar.Properties();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v4, v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = v28 - v12;
  v14 = HIBYTE(a2) & 0xF;
  v28[0] = a1;
  v28[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v14 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v28[2] = 0;
  v28[3] = v14;

  v15 = String.Iterator.next()();
  if (v15.value._object)
  {
    countAndFlagsBits = v15.value._countAndFlagsBits;
    object = v15.value._object;
    v18 = (v5 + 8);
    while (1)
    {
      v20 = sub_10000A38C(countAndFlagsBits, object);
      if ((v20 & 0x100000000) == 0)
      {
        v21 = v20;
        Unicode.Scalar.properties.getter();
        v22 = Unicode.Scalar.Properties.isEmoji.getter();
        (*v18)(v13, v4);
        if ((v22 & 1) != 0 && v21 >= 0x238D)
        {
          break;
        }
      }

      v23 = HIBYTE(object) & 0xF;
      if ((object & 0x2000000000000000) == 0)
      {
        v23 = countAndFlagsBits;
      }

      if (((object >> 60) & ((countAndFlagsBits & 0x800000000000000) == 0)) != 0)
      {
        v24 = 11;
      }

      else
      {
        v24 = 7;
      }

      if (sub_10000AC74(0xFuLL, v24 | (v23 << 16), countAndFlagsBits, object) < 2 || (sub_10000A38C(countAndFlagsBits, object) & 0x100000000) != 0)
      {
      }

      else
      {
        Unicode.Scalar.properties.getter();
        v25 = Unicode.Scalar.Properties.isEmoji.getter();

        (*v18)(v10, v4);
        if (v25)
        {
          goto LABEL_21;
        }
      }

      v19 = String.Iterator.next()();
      countAndFlagsBits = v19.value._countAndFlagsBits;
      object = v19.value._object;
      if (!v19.value._object)
      {
        goto LABEL_19;
      }
    }

LABEL_21:
    v26 = 1;
  }

  else
  {
LABEL_19:
    v26 = 0;
  }

  return v26;
}

uint64_t sub_10000A238()
{
  v1 = OBJC_IVAR____TtC13frauddefensed30LogicGraphDecisioningComponent_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10000A2FC()
{
  result = type metadata accessor for Logger();
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

unint64_t sub_10000A38C(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_10000ABDC(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = _StringObject.sharedUTF8.getter();
        }

        v8 = (v7 + v6);
      }

      v9 = *v8;
      if (*v8 < 0)
      {
        v10 = (__clz(v9 ^ 0xFF) - 24);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v11 = v8[1];
            v12 = v8[2];
            v13 = ((v9 & 0xF) << 12) | ((v11 & 0x3F) << 6);
          }

          else
          {
            v14 = v8[1];
            v15 = v8[2];
            v12 = v8[3];
            v13 = ((v9 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
          }

          v9 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
        }

        else if (v10 != 1)
        {
          v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

uint64_t sub_10000A4F8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000A530@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_10000B704((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_10000A57C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = (1 << v6) + 63;
  v9 = v8 >> 6;
  v10 = 8 * (v8 >> 6);
  if (v7 <= 0xD)
  {
    goto LABEL_2;
  }

  v14 = 8 * (v8 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v10 = v14;
LABEL_2:
    __chkstk_darwin(a1, v10);
    v12 = &v18 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v12, v11);
    result = sub_10000A6E8(v12, v9, v5, a2);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v15 = swift_slowAlloc();
  v16 = v3;
  v17 = sub_10000A8F0(v15, v9, v5, a2);

  if (!v16)
  {
    return v17;
  }

  return result;
}

uint64_t sub_10000A6E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = 0;
  v22 = result;
  v4 = 0;
  v28 = a3;
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
    v14 = (*(v28 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10000B704(*(v28 + 56) + 40 * v13, v27);
    v25[0] = v16;
    v25[1] = v15;
    sub_10000B704(v27, &v26);
    v17 = *(*a4 + 16);
    swift_bridgeObjectRetain_n();
    if (v17)
    {

      sub_100057F68(v16, v15);
      v19 = v18;

      sub_10000BC10(v25, &qword_1000B6A08, &qword_10008F6B8);
      sub_10000BC10(v27, &qword_1000B6A00, &qword_10008F6B0);

      if ((v19 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_10000BC10(v25, &qword_1000B6A08, &qword_10008F6B8);
      sub_10000BC10(v27, &qword_1000B6A00, &qword_10008F6B0);

LABEL_15:
      *(v22 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return sub_10000A978(v22, a2, v23, v28);
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
      return sub_10000A978(v22, a2, v23, v28);
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

void *sub_10000A8F0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_10000A6E8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_10000A978(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100002074(&qword_1000B6A10, &qword_10008F6C0);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_10000B704(v17 + 40 * v16, v37);
    v34 = v37[0];
    v35 = v37[1];
    v36 = v38;
    v21 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    v31 = *(v9 + 56) + 40 * v25;
    *v31 = v34;
    *(v31 + 16) = v35;
    *(v31 + 32) = v36;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_10000ABDC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_10000AE84(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_10000AEF8(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_10000AC74(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_10000B088(a1, a3, a4);
  v8 = sub_10000B088(a2, a3, a4);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(after:)();
      }

      else
      {
        v14 = result >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v15 = _StringObject.sharedUTF8.getter();
          }

          v16 = *(v15 + v14);
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(before:)();
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v27 = result;
            v20 = _StringObject.sharedUTF8.getter();
            result = v27;
          }

          v21 = 0;
          v22 = v20 + (result >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result = (result - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result >> 14)
      {
        return v13;
      }
    }

    goto LABEL_36;
  }

  return 0;
}

unint64_t sub_10000AE84(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_10000B00C(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10000AEF8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = _StringObject.sharedUTF8.getter();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return _StringGuts.foreignScalarAlign(_:)();
    }
  }

  return result;
}

uint64_t sub_10000B00C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_10000B088(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_10000B120(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_10000AEF8(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_10000B120(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_10000B00C(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000B194@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v4 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10000B704(*(v4 + 56) + 40 * v13, &v23);
    v21 = v24;
    v22 = v23;
    v17 = v25;
    *v1 = v4;
    v1[1] = v3;
    v1[2] = v6;
    v1[3] = v8;
    v1[4] = v12;

    if (v15)
    {
      v20 = v1[5];
      v19 = v1[6];
      *&v23 = v16;
      *(&v23 + 1) = v15;
      v25 = v21;
      v24 = v22;
      v26 = v17;
      v20(&v23);
      return sub_10000BC10(&v23, &qword_1000B6A08, &qword_10008F6B8);
    }

    else
    {
LABEL_13:
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v1[3] = v11;
        v1[4] = 0;
        goto LABEL_13;
      }

      v7 = *(v3 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_10000B2E0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

unint64_t sub_10000B390(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v56 = a1;
  v57 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v58 = v8;
  v59 = 0;
  v60 = v11 & v9;
  v61 = a2;
  v62 = a3;

  sub_10000B194(&v51);
  v12 = v52;
  if (!v52)
  {
    goto LABEL_25;
  }

  v13 = v51;
  v48 = v53;
  v49 = v54;
  v50 = v55;
  v14 = *a5;
  result = sub_100057F68(v51, v52);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_100058508(v20, a4 & 1);
    v22 = *a5;
    result = sub_100057F68(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_100059AD4();
    result = v26;
    v24 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v24 = *a5;
  if (v21)
  {
LABEL_11:
    v25 = result;

    sub_10000B7B4(&v48, v24[7] + 40 * v25);
    goto LABEL_15;
  }

LABEL_13:
  v24[(result >> 6) + 8] |= 1 << result;
  v27 = (v24[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  v28 = v24[7] + 40 * result;
  v29 = v48;
  v30 = v49;
  *(v28 + 32) = v50;
  *v28 = v29;
  *(v28 + 16) = v30;
  v31 = v24[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (!v19)
  {
    v24[2] = v32;
LABEL_15:
    sub_10000B194(&v51);
    v12 = v52;
    if (v52)
    {
      v21 = 1;
      do
      {
        v13 = v51;
        v48 = v53;
        v49 = v54;
        v50 = v55;
        v34 = *a5;
        result = sub_100057F68(v51, v12);
        v36 = v34[2];
        v37 = (v35 & 1) == 0;
        v19 = __OFADD__(v36, v37);
        v38 = v36 + v37;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v35;
        if (v34[3] < v38)
        {
          sub_100058508(v38, 1);
          v39 = *a5;
          result = sub_100057F68(v13, v12);
          if ((a4 & 1) != (v40 & 1))
          {
            goto LABEL_8;
          }
        }

        v41 = *a5;
        if (a4)
        {
          v33 = result;

          sub_10000B7B4(&v48, v41[7] + 40 * v33);
        }

        else
        {
          v41[(result >> 6) + 8] |= 1 << result;
          v42 = (v41[6] + 16 * result);
          *v42 = v13;
          v42[1] = v12;
          v43 = v41[7] + 40 * result;
          v44 = v48;
          v45 = v49;
          *(v43 + 32) = v50;
          *v43 = v44;
          *(v43 + 16) = v45;
          v46 = v41[2];
          v19 = __OFADD__(v46, 1);
          v47 = v46 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v41[2] = v47;
        }

        sub_10000B194(&v51);
        v12 = v52;
      }

      while (v52);
    }

LABEL_25:
    sub_10000BAD4();
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_10000B6B0()
{
  result = qword_1000B7590;
  if (!qword_1000B7590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7590);
  }

  return result;
}

uint64_t sub_10000B704(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002074(&qword_1000B6A00, &qword_10008F6B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B774()
{
  if (*(v0 + 40))
  {
    sub_100003558((v0 + 16));
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000B7B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002074(&qword_1000B6A00, &qword_10008F6B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000B824()
{
  result = qword_1000B6A30;
  if (!qword_1000B6A30)
  {
    sub_100003400(&qword_1000B6A20, &qword_10008F6D0);
    sub_10000B8A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6A30);
  }

  return result;
}

unint64_t sub_10000B8A8()
{
  result = qword_1000B6A38;
  if (!qword_1000B6A38)
  {
    sub_100003400(&qword_1000B6A00, &qword_10008F6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6A38);
  }

  return result;
}

uint64_t sub_10000B924(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10006BA7C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_10000B9BC()
{
  result = qword_1000B6A50;
  if (!qword_1000B6A50)
  {
    sub_100003400(&qword_1000B6A48, &unk_100093170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6A50);
  }

  return result;
}

unint64_t sub_10000BA74()
{
  result = qword_1000B6A58;
  if (!qword_1000B6A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6A58);
  }

  return result;
}

uint64_t sub_10000BAC8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10000BADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogicGraphDecisioningComponent.LogicGraphInput(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000BB40()
{
  result = qword_1000B6A78;
  if (!qword_1000B6A78)
  {
    sub_100003400(&qword_1000B6908, &qword_10008F700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6A78);
  }

  return result;
}

unint64_t sub_10000BBBC()
{
  result = qword_1000B6A90;
  if (!qword_1000B6A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6A90);
  }

  return result;
}

uint64_t sub_10000BC10(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002074(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000BC70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000BCB8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

__n128 sub_10000BD10(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000BD24(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 35))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000BD6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000BDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SpamDecisioningAsset(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10000BEAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SpamDecisioningAsset(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_10000BF68()
{
  type metadata accessor for SpamDecisioningAsset(319);
  if (v0 <= 0x3F)
  {
    sub_10000BFFC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10000BFFC()
{
  if (!qword_1000B6B10)
  {
    sub_100003400(&qword_1000B6A00, &qword_10008F6B0);
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B6B10);
    }
  }
}

uint64_t getEnumTagSinglePayload for LogicGraphDecisioningComponent.ProcessingType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LogicGraphDecisioningComponent.ProcessingType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10000C1E8()
{
  result = qword_1000B6B48[0];
  if (!qword_1000B6B48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B6B48);
  }

  return result;
}

uint64_t sub_10000C240(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = type metadata accessor for Logger();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10000C310()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(*v0 + 104);
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_10000C3D4()
{
  sub_10000C310();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10000C474()
{
  v1[10] = v0;
  v2 = type metadata accessor for SpamDecisioningAsset(0);
  v1[11] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v4 = *(*(sub_100002074(&qword_1000B6CB8, &unk_10008F9F0) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_10000C558, 0, 0);
}

uint64_t sub_10000C558()
{
  v1 = v0[15];
  v2 = v0[10];
  v3 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  v0[16] = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 56);
  v0[17] = v5;
  v0[18] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 1, 1, v3);
  v0[19] = sub_10000CDA8();
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_10000C650;
  v7 = v0[14];

  return sub_1000505B8(v7);
}

uint64_t sub_10000C650()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_10000CA40;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_10000C76C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000C76C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[14];
  sub_100010C70(v3);
  v2(v5, 0, 1, v4);
  sub_100011D64(v5, v3);
  sub_100011DFC(v0[15], v0[13], &qword_1000B6CB8, &unk_10008F9F0);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_10000C860;
  v7 = v0[12];
  v8 = v0[13];

  return sub_1000122EC(v7, v8);
}

uint64_t sub_10000C860()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_10000CC1C;
  }

  else
  {
    v3 = sub_10000C974;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000C974()
{
  v1 = v0[11];
  v2 = v0[12];
  sub_100010C70(v0[15]);
  v3 = *(v2 + *(v1 + 32));

  sub_100011370(v2, type metadata accessor for SpamDecisioningAsset);
  v4 = *(v3 + 240);

  v6 = v0[14];
  v5 = v0[15];
  v8 = v0[12];
  v7 = v0[13];

  v9 = v0[1];
  v10.n128_u64[0] = v4;

  return v9(v10);
}

uint64_t sub_10000CA40()
{
  v1 = v0[21];
  v2 = v0[19];
  v18 = v0[18];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];
  v6 = v0[10];

  v7 = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(90);
  v8._object = 0x80000001000946F0;
  v8._countAndFlagsBits = 0xD000000000000056;
  String.append(_:)(v8);
  swift_getErrorValue();
  v10 = v0[2];
  v9 = v0[3];
  v11 = v0[4];
  v12._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 32032;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  sub_10005E11C(v7, 0, 0xE000000000000000, 0xD000000000000061, 0x80000001000944F0, 28);

  sub_100010C70(v5);
  v4(v5, 1, 1, v3);
  sub_100011DFC(v0[15], v0[13], &qword_1000B6CB8, &unk_10008F9F0);
  v14 = swift_task_alloc();
  v0[22] = v14;
  *v14 = v0;
  v14[1] = sub_10000C860;
  v15 = v0[12];
  v16 = v0[13];

  return sub_1000122EC(v15, v16);
}

uint64_t sub_10000CC1C()
{
  v1 = v0[23];
  v2 = v0[15];
  v3 = v0[10];
  v4 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(91);
  v5._object = 0x80000001000948F0;
  v5._countAndFlagsBits = 0xD000000000000057;
  String.append(_:)(v5);
  swift_getErrorValue();
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[7];
  v9._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 32032;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  sub_10005E11C(v4, 0, 0xE000000000000000, 0xD000000000000061, 0x80000001000944F0, 38);

  sub_100010C70(v2);
  v12 = v0[14];
  v11 = v0[15];
  v14 = v0[12];
  v13 = v0[13];

  v15 = v0[1];
  v16.n128_u64[0] = 0x40CC200000000000;

  return v15(v16);
}

char *sub_10000CDA8()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    v2 = type metadata accessor for UAFAssetManager(0);
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    v1 = swift_allocObject();
    v5 = OBJC_IVAR____TtC13frauddefensed15UAFAssetManager_logger;
    if (qword_1000B66B8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    v7 = sub_100003448(v6, qword_1000B9400);
    (*(*(v6 - 8) + 16))(&v1[v5], v7, v6);
    *(v1 + 2) = 0xD000000000000019;
    *(v1 + 3) = 0x8000000100094840;
    *(v1 + 4) = 0xD000000000000022;
    *(v1 + 5) = 0x8000000100094860;
    *(v1 + 6) = 0xD000000000000023;
    *(v1 + 7) = 0x8000000100094890;
    *(v1 + 8) = 0x6D6170732E6B74;
    *(v1 + 9) = 0xE700000000000000;
    v8 = *(v0 + 48);
    *(v0 + 48) = v1;
  }

  return v1;
}

uint64_t sub_10000CF0C()
{
  v1[10] = v0;
  v2 = type metadata accessor for SpamDecisioningAsset(0);
  v1[11] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v4 = *(*(sub_100002074(&qword_1000B6CB8, &unk_10008F9F0) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_10000CFF0, 0, 0);
}

uint64_t sub_10000CFF0()
{
  v1 = v0[15];
  v2 = v0[10];
  v3 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  v0[16] = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 56);
  v0[17] = v5;
  v0[18] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 1, 1, v3);
  v0[19] = sub_10000CDA8();
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_10000D0E8;
  v7 = v0[14];

  return sub_1000505B8(v7);
}

uint64_t sub_10000D0E8()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_10000D4D8;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_10000D204;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000D204()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[14];
  sub_100010C70(v3);
  v2(v5, 0, 1, v4);
  sub_100011D64(v5, v3);
  sub_100011DFC(v0[15], v0[13], &qword_1000B6CB8, &unk_10008F9F0);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_10000D2F8;
  v7 = v0[12];
  v8 = v0[13];

  return sub_1000122EC(v7, v8);
}

uint64_t sub_10000D2F8()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_10000D6B4;
  }

  else
  {
    v3 = sub_10000D40C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000D40C()
{
  v1 = v0[11];
  v2 = v0[12];
  sub_100010C70(v0[15]);
  v3 = *(v2 + *(v1 + 32));

  sub_100011370(v2, type metadata accessor for SpamDecisioningAsset);
  v4 = *(v3 + 248);

  v6 = v0[14];
  v5 = v0[15];
  v8 = v0[12];
  v7 = v0[13];

  v9 = v0[1];
  v10.n128_u64[0] = v4;

  return v9(v10);
}

uint64_t sub_10000D4D8()
{
  v1 = v0[21];
  v2 = v0[19];
  v18 = v0[18];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];
  v6 = v0[10];

  v7 = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(90);
  v8._object = 0x80000001000946F0;
  v8._countAndFlagsBits = 0xD000000000000056;
  String.append(_:)(v8);
  swift_getErrorValue();
  v10 = v0[2];
  v9 = v0[3];
  v11 = v0[4];
  v12._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 32032;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  sub_10005E11C(v7, 0, 0xE000000000000000, 0xD000000000000061, 0x80000001000944F0, 51);

  sub_100010C70(v5);
  v4(v5, 1, 1, v3);
  sub_100011DFC(v0[15], v0[13], &qword_1000B6CB8, &unk_10008F9F0);
  v14 = swift_task_alloc();
  v0[22] = v14;
  *v14 = v0;
  v14[1] = sub_10000D2F8;
  v15 = v0[12];
  v16 = v0[13];

  return sub_1000122EC(v15, v16);
}

uint64_t sub_10000D6B4()
{
  v1 = v0[23];
  v2 = v0[15];
  v3 = v0[10];
  v4 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(91);
  v5._object = 0x80000001000948F0;
  v5._countAndFlagsBits = 0xD000000000000057;
  String.append(_:)(v5);
  swift_getErrorValue();
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[7];
  v9._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 32032;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  sub_10005E11C(v4, 0, 0xE000000000000000, 0xD000000000000061, 0x80000001000944F0, 61);

  sub_100010C70(v2);
  v12 = v0[14];
  v11 = v0[15];
  v14 = v0[12];
  v13 = v0[13];

  v15 = v0[1];
  v16.n128_u64[0] = 0x40AC200000000000;

  return v15(v16);
}

uint64_t sub_10000D860()
{
  v1 = v0[2];
  sub_10000CDA8();
  v2 = sub_10005163C();

  if (v2)
  {
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[2];
    v6 = static os_log_type_t.default.getter();
    sub_10005E11C(v6, 0xD00000000000002ALL, 0x80000001000948C0, 0xD000000000000061, 0x80000001000944F0, 72);
    v0[3] = *(v5 + 48);

    v7 = swift_task_alloc();
    v0[4] = v7;
    *v7 = v0;
    v7[1] = sub_10000D9A4;

    return sub_100051B58();
  }
}

uint64_t sub_10000D9A4()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  v3[5] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10000DAE0, 0, 0);
  }

  else
  {
    v4 = v3[3];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_10000DAE0()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_10000DB44(uint64_t a1)
{
  v2[97] = v1;
  v2[96] = a1;
  v3 = type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisSetupInput(0);
  v2[98] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[99] = swift_task_alloc();
  v5 = *(*(type metadata accessor for SpamDecisioningAsset(0) - 8) + 64) + 15;
  v2[100] = swift_task_alloc();
  v2[101] = swift_task_alloc();
  v6 = *(*(sub_100002074(&qword_1000B6CB8, &unk_10008F9F0) - 8) + 64) + 15;
  v2[102] = swift_task_alloc();
  v2[103] = swift_task_alloc();
  v2[104] = swift_task_alloc();

  return _swift_task_switch(sub_10000DC64, 0, 0);
}

uint64_t sub_10000DC64()
{
  v1 = v0[97];
  v0[105] = sub_10000CDA8();
  v2 = swift_task_alloc();
  v0[106] = v2;
  *v2 = v0;
  v2[1] = sub_10000DD08;
  v3 = v0[103];

  return sub_1000505B8(v3);
}

uint64_t sub_10000DD08()
{
  v2 = *v1;
  v3 = *(*v1 + 848);
  v7 = *v1;
  *(*v1 + 856) = v0;

  if (v0)
  {
    v4 = sub_10000EFD0;
  }

  else
  {
    v5 = *(v2 + 840);

    v4 = sub_10000DE24;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000DE24()
{
  v1 = v0[104];
  v2 = v0[103];
  v3 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  sub_100011D64(v2, v1);
  sub_100011DFC(v0[104], v0[102], &qword_1000B6CB8, &unk_10008F9F0);
  v4 = swift_task_alloc();
  v0[108] = v4;
  *v4 = v0;
  v4[1] = sub_10000DF2C;
  v5 = v0[102];
  v6 = v0[100];

  return sub_1000122EC(v6, v5);
}

uint64_t sub_10000DF2C()
{
  v2 = *(*v1 + 864);
  v5 = *v1;
  *(*v1 + 872) = v0;

  if (v0)
  {
    v3 = sub_10000F1CC;
  }

  else
  {
    v3 = sub_10000E040;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000E040()
{
  v1 = v0[109];
  sub_100010CD8(v0[100], v0[101]);
  v2 = sub_100010D3C(0);
  v0[110] = v2;
  v3 = type metadata accessor for SignaturesSQLiteManager();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = sub_10006D3FC(0, 0);
  v0[111] = v6;
  v0[62] = &type metadata for SignatureAnalysisDecisioningComponentProvider;
  v0[63] = &off_1000B0938;
  v0[59] = v2;
  v0[60] = v6;
  v7 = type metadata accessor for SignatureAnalysisDecisioningComponent(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = sub_100010F28((v0 + 59), &type metadata for SignatureAnalysisDecisioningComponentProvider);
  v12 = swift_task_alloc();
  (_swift_cvw_initWithCopy)(v12, v11, &type metadata for SignatureAnalysisDecisioningComponentProvider);
  v13 = *v12;
  v14 = v12[1];

  v15 = sub_100010FC8(v13, v14, v10);
  v0[112] = v15;
  sub_100003558(v0 + 59);

  sub_1000318A4();
  if (v1)
  {
    v16 = v0[97];
    v17 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(77);
    v18._object = 0x80000001000945B0;
    v18._countAndFlagsBits = 0xD000000000000049;
    String.append(_:)(v18);
    swift_getErrorValue();
    v19 = v0[80];
    v20 = v0[81];
    v21 = v0[82];
    v22._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v22);

    v23._countAndFlagsBits = 32032;
    v23._object = 0xE200000000000000;
    String.append(_:)(v23);
    sub_10005E11C(v17, 0, 0xE000000000000000, 0xD000000000000061, 0x80000001000944F0, 116);

    v24 = sub_1000111EC((v15 + 16), *(v15 + 40))[1];
    v25 = qword_1000B6700;

    if (v25 != -1)
    {
      swift_once();
    }

    v26 = qword_1000B89E0;
    v1 = swift_allocObject();
    *(v1 + 16) = sub_100011230;
    *(v1 + 24) = v24;
    v0[45] = sub_100011248;
    v0[46] = v1;
    v0[41] = _NSConcreteStackBlock;
    v0[42] = 1107296256;
    v0[43] = sub_100010FA0;
    v0[44] = &unk_1000AEB48;
    v27 = _Block_copy(v0 + 41);
    v28 = v0[46];

    dispatch_sync(v26, v27);
    _Block_release(v27);
    LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

    if ((v27 & 1) == 0)
    {
      sub_100011370(v0[101], type metadata accessor for SpamDecisioningAsset);
      v29 = v0[103];
      v30 = v0[102];
      v31 = v0[101];
      v32 = v0[100];
      v33 = v0[99];
      v34 = v0[97];
      v35 = v0[96];
      sub_100010C70(v0[104]);
      sub_10000F9E8(v35);

      v36 = v0[1];
LABEL_10:

      return v36();
    }

    __break(1u);
  }

  else
  {
    v37 = qword_1000B6700;

    if (v37 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v38 = qword_1000B89E0;
  v0[113] = qword_1000B89E0;
  OS_dispatch_queue.sync<A>(execute:)();

  if (v1)
  {
    v39 = sub_1000111EC((v15 + 16), *(v15 + 40))[1];
    v40 = swift_allocObject();
    *(v40 + 16) = sub_100011E70;
    *(v40 + 24) = v39;
    v0[51] = sub_100011E7C;
    v0[52] = v40;
    v0[47] = _NSConcreteStackBlock;
    v0[48] = 1107296256;
    v0[49] = sub_100010FA0;
    v0[50] = &unk_1000AEB98;
    v41 = _Block_copy(v0 + 47);
    v42 = v0[52];
    swift_retain_n();

    dispatch_sync(v38, v41);
    _Block_release(v41);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      return result;
    }

    v45 = v0[104];
    v46 = v0[103];
    v47 = v0[102];
    v48 = v0[100];
    v49 = v0[99];
    v50 = v0[97];
    v51 = v0[96];
    sub_100011370(v0[101], type metadata accessor for SpamDecisioningAsset);
    sub_100010C70(v45);
    sub_10000F9E8(v51);

    v36 = v0[1];
    goto LABEL_10;
  }

  v0[114] = v0[92];
  v52 = swift_task_alloc();
  v0[115] = v52;
  *v52 = v0;
  v52[1] = sub_10000E774;
  v53 = v0[97];

  return sub_10000FB20();
}

uint64_t sub_10000E774(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 920);
  v6 = *v2;
  *(v3 + 928) = a1;
  *(v3 + 936) = a2;

  return _swift_task_switch(sub_10000E878, 0, 0);
}

uint64_t sub_10000E878()
{
  v1 = v0[117];
  v2 = v0[116];
  v3 = v0[101];
  v4 = v0[99];
  v5 = v0[98];
  v6 = v0[97];
  v0[118] = OBJC_IVAR____TtC13frauddefensed28SignaturesBackgroundActivity_logger;
  v7 = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(80);
  v8._object = 0x8000000100094600;
  v8._countAndFlagsBits = 0xD00000000000004CLL;
  String.append(_:)(v8);
  v9._countAndFlagsBits = Duration.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 32032;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  sub_10005E11C(v7, 0, 0xE000000000000000, 0xD000000000000061, 0x80000001000944F0, 124);

  sub_100011308(v3, v4, type metadata accessor for SpamDecisioningAsset);
  *(v4 + *(v5 + 20)) = 0;
  v0[67] = v5;
  v0[68] = &off_1000B0920;
  v11 = sub_1000112A4(v0 + 64);
  sub_100011308(v4, v11, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisSetupInput);
  v12 = swift_task_alloc();
  v0[119] = v12;
  *v12 = v0;
  v12[1] = sub_10000EA74;
  v13 = v0[117];
  v14 = v0[116];
  v15 = v0[112];

  return sub_100031B04((v0 + 69), (v0 + 64), v14, v13, 0);
}

uint64_t sub_10000EA74()
{
  v2 = *v1;
  v3 = *(*v1 + 952);
  v6 = *v1;
  *(*v1 + 960) = v0;

  if (v0)
  {
    v4 = sub_10000F388;
  }

  else
  {
    sub_100003558((v2 + 512));
    v4 = sub_10000EB90;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000EB90()
{
  v1 = v0[114];
  v2 = v0[99];
  v3 = v0[97];
  sub_100002074(&qword_1000B6CC8, &unk_10008F950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008F840;
  *(inited + 32) = 0x79745F6863746566;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 48) = String._bridgeToObjectiveC()();
  strcpy((inited + 56), "fetched_count");
  *(inited + 70) = -4864;
  v5 = sub_10005BC54(v0[70]);
  sub_100056BB0(v5);
  v6 = String._bridgeToObjectiveC()();

  *(inited + 72) = v6;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x80000001000946B0;
  v7 = v0[71];
  v8 = v0[72];
  v9 = sub_10005BD48();
  sub_100056D70(v9);
  v10 = String._bridgeToObjectiveC()();

  *(inited + 96) = v10;
  *(inited + 104) = 0xD00000000000001BLL;
  *(inited + 112) = 0x80000001000946D0;
  sub_100011CC4();
  isa = NSNumber.init(BOOLeanLiteral:)(*(v0 + 584)).super.super.isa;
  sub_100011D10((v0 + 69));
  *(inited + 120) = isa;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = 0x8000000100094690;
  v12 = sub_10005BC54(v1);
  sub_100056BB0(v12);
  v13 = String._bridgeToObjectiveC()();

  *(inited + 144) = v13;
  v14 = sub_100011A78(inited);
  swift_setDeallocating();
  sub_100002074(&qword_1000B6CD0, &qword_100092B90);
  swift_arrayDestroy();
  v15 = *(v3 + 56);
  sub_100056EF0(1, v14, 0, 0);

  sub_100011370(v2, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisSetupInput);
  v16 = v0[113];
  v17 = v0[111];
  v18 = v0[110];
  v19 = sub_1000111EC((v0[112] + 16), *(v0[112] + 40))[1];
  v20 = swift_allocObject();
  *(v20 + 16) = sub_100011E70;
  *(v20 + 24) = v19;
  v0[57] = sub_100011E7C;
  v0[58] = v20;
  v0[53] = _NSConcreteStackBlock;
  v0[54] = 1107296256;
  v0[55] = sub_100010FA0;
  v0[56] = &unk_1000AEBE8;
  v21 = _Block_copy(v0 + 53);
  v22 = v0[58];
  swift_retain_n();

  dispatch_sync(v16, v21);
  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  else
  {
    sub_100011370(v0[101], type metadata accessor for SpamDecisioningAsset);
    v24 = v0[103];
    v25 = v0[102];
    v26 = v0[101];
    v27 = v0[100];
    v28 = v0[99];
    v29 = v0[97];
    v30 = v0[96];
    sub_100010C70(v0[104]);
    sub_10000F9E8(v30);

    v31 = v0[1];

    return v31();
  }

  return result;
}

uint64_t sub_10000EFD0()
{
  v1 = v0[107];
  v2 = v0[105];
  v3 = v0[104];
  v4 = v0[97];

  v5 = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(73);
  v6._object = 0x80000001000944A0;
  v6._countAndFlagsBits = 0xD000000000000045;
  String.append(_:)(v6);
  swift_getErrorValue();
  v7 = v0[74];
  v8 = v0[75];
  v9 = v0[76];
  v10._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 32032;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  sub_10005E11C(v5, 0, 0xE000000000000000, 0xD000000000000061, 0x80000001000944F0, 94);

  v12 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  sub_100011DFC(v0[104], v0[102], &qword_1000B6CB8, &unk_10008F9F0);
  v13 = swift_task_alloc();
  v0[108] = v13;
  *v13 = v0;
  v13[1] = sub_10000DF2C;
  v14 = v0[102];
  v15 = v0[100];

  return sub_1000122EC(v15, v14);
}

uint64_t sub_10000F1CC()
{
  v1 = v0[109];
  v2 = v0[97];
  v3 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(74);
  v4._object = 0x8000000100094560;
  v4._countAndFlagsBits = 0xD000000000000046;
  String.append(_:)(v4);
  swift_getErrorValue();
  v5 = v0[77];
  v6 = v0[78];
  v7 = v0[79];
  v8._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 32032;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  sub_10005E11C(v3, 0, 0xE000000000000000, 0xD000000000000061, 0x80000001000944F0, 102);

  v10 = v0[103];
  v11 = v0[102];
  v12 = v0[101];
  v13 = v0[100];
  v14 = v0[99];
  v15 = v0[97];
  v16 = v0[96];
  sub_100010C70(v0[104]);
  sub_10000F9E8(v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10000F388()
{
  v1 = v0[120];
  v2 = v0[118];
  v3 = v0[97];
  sub_100011370(v0[99], type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisSetupInput);
  sub_100003558(v0 + 64);
  v4 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(65);
  v5._countAndFlagsBits = 0xD00000000000003DLL;
  v5._object = 0x8000000100094650;
  String.append(_:)(v5);
  swift_getErrorValue();
  v6 = v0[83];
  v7 = v0[84];
  v8 = v0[85];
  v9._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 32032;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  sub_10005E11C(v4, 0, 0xE000000000000000, 0xD000000000000061, 0x80000001000944F0, 140);

  v0[94] = v1;
  swift_errorRetain();
  sub_100002074(&qword_1000B6CC0, &qword_100091740);
  if (swift_dynamicCast())
  {
    v11 = v0[86];
    v12 = v0[87];
    v13 = *(v0 + 704);
    if (v13 == 9)
    {
      v14 = v0[114];
      v15 = v0[97];
      sub_100002074(&qword_1000B6CC8, &unk_10008F950);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10008F850;
      *(inited + 32) = 0x79745F6863746566;
      *(inited + 40) = 0xEA00000000006570;
      *(inited + 48) = String._bridgeToObjectiveC()();
      *(inited + 56) = 0xD000000000000013;
      *(inited + 64) = 0x8000000100094690;
      v17 = sub_10005BC54(v14);
      sub_100056BB0(v17);
      v18 = String._bridgeToObjectiveC()();

      *(inited + 72) = v18;
      v19 = sub_100011A78(inited);
      swift_setDeallocating();
      sub_100002074(&qword_1000B6CD0, &qword_100092B90);
      swift_arrayDestroy();
      v20 = *(v15 + 56);
      v21 = sub_10004F2E4(v11, v12, 9);
      v23 = v22;
      sub_100011CAC(v11, v12, 9u);
      sub_100056EF0(1, v19, v21, v23);
    }

    else
    {
      sub_100011CAC(v0[86], v0[87], v13);
    }
  }

  v0[95] = v0[120];
  swift_errorRetain();
  v24 = swift_dynamicCast();
  v25 = v0[120];
  if (v24)
  {
    v26 = v0[114];
    v27 = v0[97];
    sub_100002074(&qword_1000B6CC8, &unk_10008F950);
    v28 = swift_initStackObject();
    *(v28 + 16) = xmmword_10008F850;
    *(v28 + 32) = 0x79745F6863746566;
    *(v28 + 40) = 0xEA00000000006570;
    *(v28 + 48) = String._bridgeToObjectiveC()();
    *(v28 + 56) = 0xD000000000000013;
    *(v28 + 64) = 0x8000000100094690;
    v29 = sub_10005BC54(v26);
    sub_100056BB0(v29);
    v30 = String._bridgeToObjectiveC()();

    *(v28 + 72) = v30;
    v31 = sub_100011A78(v28);
    swift_setDeallocating();
    sub_100002074(&qword_1000B6CD0, &qword_100092B90);
    swift_arrayDestroy();
    v32 = *(v27 + 56);
    sub_100056EF0(1, v31, 0x74694B64756F6C63, 0xEF6572756C696146);
  }

  else
  {
    v33 = v0[120];
  }

  v34 = v0[113];
  v35 = v0[111];
  v36 = v0[110];
  v37 = sub_1000111EC((v0[112] + 16), *(v0[112] + 40))[1];
  v38 = swift_allocObject();
  *(v38 + 16) = sub_100011E70;
  *(v38 + 24) = v37;
  v0[57] = sub_100011E7C;
  v0[58] = v38;
  v0[53] = _NSConcreteStackBlock;
  v0[54] = 1107296256;
  v0[55] = sub_100010FA0;
  v0[56] = &unk_1000AEBE8;
  v39 = _Block_copy(v0 + 53);
  v40 = v0[58];
  swift_retain_n();

  dispatch_sync(v34, v39);
  _Block_release(v39);
  LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

  if (v39)
  {
    __break(1u);
  }

  else
  {
    sub_100011370(v0[101], type metadata accessor for SpamDecisioningAsset);
    v42 = v0[103];
    v43 = v0[102];
    v44 = v0[101];
    v45 = v0[100];
    v46 = v0[99];
    v47 = v0[97];
    v48 = v0[96];
    sub_100010C70(v0[104]);
    sub_10000F9E8(v48);

    v49 = v0[1];

    return v49();
  }

  return result;
}

uint64_t sub_10000F9E8(void *a1)
{
  [a1 setTaskCompleted];
  v2 = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(55);
  v3._object = 0x8000000100094800;
  v3._countAndFlagsBits = 0xD000000000000033;
  String.append(_:)(v3);
  v4 = [a1 identifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 32032;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  sub_10005E11C(v2, 0, 0xE000000000000000, 0xD000000000000061, 0x80000001000944F0, 87);
}

uint64_t sub_10000FB20()
{
  v1[10] = v0;
  v2 = type metadata accessor for SpamDecisioningAsset(0);
  v1[11] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v4 = *(*(sub_100002074(&qword_1000B6CB8, &unk_10008F9F0) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_10000FC10, 0, 0);
}

uint64_t sub_10000FC10()
{
  v1 = v0[16];
  v2 = v0[10];
  v3 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  v0[17] = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 56);
  v0[18] = v5;
  v0[19] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 1, 1, v3);
  v0[20] = sub_10000CDA8();
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_10000FD08;
  v7 = v0[15];

  return sub_1000505B8(v7);
}

uint64_t sub_10000FD08()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_100010284;
  }

  else
  {
    v5 = *(v2 + 160);

    v4 = sub_10000FE24;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000FE24()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];
  sub_100010C70(v3);
  v2(v5, 0, 1, v4);
  sub_100011D64(v5, v3);
  sub_100011DFC(v0[16], v0[14], &qword_1000B6CB8, &unk_10008F9F0);
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_10000FF1C;
  v7 = v0[14];
  v8 = v0[12];

  return sub_1000122EC(v8, v7);
}

uint64_t sub_10000FF1C()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_100010464;
  }

  else
  {
    v3 = sub_100010030;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100010030()
{
  v1 = v0[13];
  v2 = v0[11];
  sub_100010CD8(v0[12], v1);
  v3 = *(v1 + *(v2 + 32));
  v4 = *(v3 + 232);
  if (*(v4 + 16))
  {
    v5 = *(v3 + 232);

    v6 = sub_100057F68(0x746C7561666564, 0xE700000000000000);
    if (v7)
    {
      v8 = v0[16];
      v9 = v0[13];
      v10 = *(*(v4 + 56) + 8 * v6);

      goto LABEL_6;
    }
  }

  v8 = v0[16];
  v9 = v0[13];
  v11 = v0[10];
  v12 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(78);
  v13._object = 0x8000000100094790;
  v13._countAndFlagsBits = 0xD00000000000004ALL;
  String.append(_:)(v13);
  v14 = *(v3 + 232);

  v15 = Dictionary.description.getter();
  v17 = v16;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 32032;
  v19._object = 0xE200000000000000;
  String.append(_:)(v19);
  sub_10005E11C(v12, 0, 0xE000000000000000, 0xD000000000000061, 0x80000001000944F0, 197);

LABEL_6:
  v20 = static Duration.seconds(_:)();
  v22 = v21;
  sub_100010C70(v8);
  sub_100011370(v9, type metadata accessor for SpamDecisioningAsset);
  v24 = v0[15];
  v23 = v0[16];
  v26 = v0[13];
  v25 = v0[14];
  v27 = v0[12];

  v28 = v0[1];

  return v28(v20, v22);
}

uint64_t sub_100010284()
{
  v1 = v0[22];
  v2 = v0[20];
  v18 = v0[19];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];
  v6 = v0[10];

  v7 = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(90);
  v8._object = 0x80000001000946F0;
  v8._countAndFlagsBits = 0xD000000000000056;
  String.append(_:)(v8);
  swift_getErrorValue();
  v10 = v0[2];
  v9 = v0[3];
  v11 = v0[4];
  v12._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 32032;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  sub_10005E11C(v7, 0, 0xE000000000000000, 0xD000000000000061, 0x80000001000944F0, 175);

  sub_100010C70(v5);
  v4(v5, 1, 1, v3);
  sub_100011DFC(v0[16], v0[14], &qword_1000B6CB8, &unk_10008F9F0);
  v14 = swift_task_alloc();
  v0[23] = v14;
  *v14 = v0;
  v14[1] = sub_10000FF1C;
  v15 = v0[14];
  v16 = v0[12];

  return sub_1000122EC(v16, v15);
}

uint64_t sub_100010464()
{
  v1 = v0[24];
  v2 = v0[16];
  v3 = v0[10];
  v4 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(56);
  v5._object = 0x8000000100094750;
  v5._countAndFlagsBits = 0xD000000000000034;
  String.append(_:)(v5);
  swift_getErrorValue();
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[7];
  v9._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 32032;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  sub_10005E11C(v4, 0, 0xE000000000000000, 0xD000000000000061, 0x80000001000944F0, 183);

  v11 = static Duration.seconds(_:)();
  v13 = v12;

  sub_100010C70(v2);
  v15 = v0[15];
  v14 = v0[16];
  v17 = v0[13];
  v16 = v0[14];
  v18 = v0[12];

  v19 = v0[1];

  return v19(v11, v13);
}

uint64_t sub_10001060C()
{
  v1 = *(v0 + 6);

  v2 = *(v0 + 7);

  v3 = OBJC_IVAR____TtC13frauddefensed28SignaturesBackgroundActivity_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SignaturesBackgroundActivity()
{
  result = qword_1000B6C00;
  if (!qword_1000B6C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001070C()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_1000107C8()
{
  *(v0 + 16) = xmmword_10008F860;
  *(v0 + 32) = xmmword_10008F870;
  *(v0 + 48) = 0;
  v1 = type metadata accessor for DaemonAnalyticsManager();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC13frauddefensed22DaemonAnalyticsManager_logger;
  if (qword_1000B66A8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = sub_100003448(v6, qword_1000B93D0);
  v8 = *(*(v6 - 8) + 16);
  v8(v4 + v5, v7, v6);
  v9 = OBJC_IVAR____TtC13frauddefensed22DaemonAnalyticsManager_eligibilityManager;
  v10 = type metadata accessor for EligibilityManager();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = OBJC_IVAR____TtC13frauddefensed18EligibilityManager_logger;
  if (qword_1000B6690 != -1)
  {
    swift_once();
  }

  v15 = sub_100003448(v6, qword_1000B9388);
  v8(v13 + v14, v15, v6);
  *(v4 + v9) = v13;
  *(v0 + 56) = v4;
  v16 = OBJC_IVAR____TtC13frauddefensed28SignaturesBackgroundActivity_logger;
  if (qword_1000B6688 != -1)
  {
    swift_once();
  }

  v17 = sub_100003448(v6, qword_1000B9370);
  v8(v0 + v16, v17, v6);
  return v0;
}

uint64_t sub_1000109BC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100010A4C;

  return sub_10000CF0C();
}

uint64_t sub_100010A4C(double a1)
{
  v3 = *(*v1 + 16);
  v7 = *v1;

  v4 = *(v7 + 8);
  v5.n128_f64[0] = a1;

  return v4(v5);
}

uint64_t sub_100010B48()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002A54;

  return sub_10000D840();
}

uint64_t sub_100010BD8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100011E6C;

  return sub_10000DB44(a1);
}

uint64_t sub_100010C70(uint64_t a1)
{
  v2 = sub_100002074(&qword_1000B6CB8, &unk_10008F9F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100010CD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpamDecisioningAsset(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100010D3C(void *a1)
{
  v2 = sub_100002074(&qword_1000B6CF8, &qword_10008F978);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  v6 = qword_1000B7FA8;
  if (qword_1000B66B0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v8 = sub_100003448(v7, qword_1000B93E8);
  v9 = *(*(v7 - 8) + 16);
  v9(v5 + v6, v8, v7);
  *(v5 + qword_1000B7FB0) = 200;
  *(v5 + qword_1000B7FB8) = 1;
  v9(v5 + qword_1000B7FC0, v8, v7);
  if (qword_1000B66E0 != -1)
  {
    swift_once();
  }

  if (byte_1000B9460 != 1)
  {
    goto LABEL_11;
  }

  if (qword_1000B66D8 != -1)
  {
    swift_once();
  }

  if ((qword_1000B9450 != 0xD000000000000014 || 0x80000001000947E0 != *algn_1000B9458) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
LABEL_11:

    a1 = 0;
  }

  *(v5 + 16) = a1;
  return v5;
}

uint64_t sub_100010F28(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_100010FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = &type metadata for SignatureAnalysisDecisioningComponentProvider;
  v25 = &off_1000B0938;
  *&v23 = a1;
  *(&v23 + 1) = a2;
  v4 = OBJC_IVAR____TtC13frauddefensed37SignatureAnalysisDecisioningComponent_changeTokenCache;
  if (qword_1000B66B0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = sub_100003448(v5, qword_1000B93E8);
  v7 = *(*(v5 - 8) + 16);
  v7(a3 + v4, v6, v5);
  v8 = OBJC_IVAR____TtC13frauddefensed37SignatureAnalysisDecisioningComponent_analyticsManager;
  v9 = type metadata accessor for DaemonAnalyticsManager();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtC13frauddefensed22DaemonAnalyticsManager_logger;
  if (qword_1000B66A8 != -1)
  {
    swift_once();
  }

  v14 = sub_100003448(v5, qword_1000B93D0);
  v7(v12 + v13, v14, v5);
  v15 = OBJC_IVAR____TtC13frauddefensed22DaemonAnalyticsManager_eligibilityManager;
  v16 = type metadata accessor for EligibilityManager();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v20 = OBJC_IVAR____TtC13frauddefensed18EligibilityManager_logger;
  if (qword_1000B6690 != -1)
  {
    swift_once();
  }

  v21 = sub_100003448(v5, qword_1000B9388);
  v7(v19 + v20, v21, v5);
  *(v12 + v15) = v19;
  *(a3 + v8) = v12;
  v7(a3 + OBJC_IVAR____TtC13frauddefensed37SignatureAnalysisDecisioningComponent_logger, v6, v5);
  sub_100011DD4(&v23, a3 + 16);
  return a3;
}

void *sub_1000111EC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100011248()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100011270(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *sub_1000112A4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100011308(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100011370(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000113D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002074(&qword_1000B6D08, &qword_10008F990);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100057F68(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1000114E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002074(&qword_1000B6D00, &qword_10008F988);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100057F68(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1000115E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002074(&qword_1000B6D28, &unk_10008F9C8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100011DFC(v4, v13, &qword_1000B6910, &qword_10008F610);
      result = sub_100057FE0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100011DEC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_100011724(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002074(&qword_1000B6A10, &qword_10008F6C0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100011DFC(v4, &v16, &qword_1000B6D20, &qword_10008F9C0);
      v5 = v16;
      v6 = v17;
      result = sub_100057F68(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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

unint64_t sub_10001185C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002074(&qword_1000B6CE8, &qword_100092840);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_100005A7C(v7, v8);
      result = sub_100057F68(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_100011974(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002074(&qword_1000B6CF0, &qword_10008F970);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);
      sub_100005A7C(v5, v6);
      result = sub_100058024(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_100011A78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002074(&qword_1000B6CE0, &unk_10008F960);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100057F68(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_100011B7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002074(&qword_1000B6D10, &qword_10008F9A0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100011DFC(v4, &v13, &qword_1000B6D18, &qword_10008F9A8);
      v5 = v13;
      v6 = v14;
      result = sub_100057F68(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100011DEC(&v15, (v3[7] + 32 * result));
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

uint64_t sub_100011CAC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0x1Cu)
  {
  }

  return result;
}

unint64_t sub_100011CC4()
{
  result = qword_1000B6CD8;
  if (!qword_1000B6CD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B6CD8);
  }

  return result;
}

uint64_t sub_100011D64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002074(&qword_1000B6CB8, &unk_10008F9F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100011DD4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

_OWORD *sub_100011DEC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100011DFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002074(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100011E9C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100002074(&qword_1000B6CB8, &unk_10008F9F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for LogicGraphAsset();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[7]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = type metadata accessor for Logger();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_100012030(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100002074(&qword_1000B6CB8, &unk_10008F9F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for LogicGraphAsset();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v15 = type metadata accessor for Logger();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[10];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_1000121D0()
{
  sub_10001C548(319, &qword_1000B6D98, type metadata accessor for UAFAssetManager.AssetInfo);
  if (v0 <= 0x3F)
  {
    type metadata accessor for LogicGraphAsset();
    if (v1 <= 0x3F)
    {
      type metadata accessor for JavaScriptAsset();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ConfigurationsAsset();
        if (v3 <= 0x3F)
        {
          sub_10001C548(319, &unk_1000B6DA0, type metadata accessor for RecordZonesAsset);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Logger();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1000122EC(uint64_t a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v3 = type metadata accessor for LogicGraphAsset();
  v2[22] = v3;
  v4 = *(v3 - 8);
  v2[23] = v4;
  v5 = *(v4 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v6 = type metadata accessor for URL.DirectoryHint();
  v2[30] = v6;
  v7 = *(v6 - 8);
  v2[31] = v7;
  v8 = *(v7 + 64) + 15;
  v2[32] = swift_task_alloc();
  v9 = *(*(sub_100002074(&qword_1000B6DE8, &qword_10008FA30) - 8) + 64) + 15;
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v10 = *(*(sub_100002074(&qword_1000B6CB8, &unk_10008F9F0) - 8) + 64) + 15;
  v2[47] = swift_task_alloc();
  v11 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  v2[48] = v11;
  v12 = *(v11 - 8);
  v2[49] = v12;
  v13 = *(v12 + 64) + 15;
  v2[50] = swift_task_alloc();
  v14 = type metadata accessor for SpamDecisioningAsset.AssetURLs(0);
  v2[51] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v2[52] = swift_task_alloc();
  v16 = type metadata accessor for URL();
  v2[53] = v16;
  v17 = *(v16 - 8);
  v2[54] = v17;
  v18 = *(v17 + 64) + 15;
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();

  return _swift_task_switch(sub_1000126EC, 0, 0);
}

uint64_t sub_1000126EC()
{
  v1 = *(v0 + 160);
  v2 = type metadata accessor for SpamDecisioningAsset(0);
  *(v0 + 568) = v2;
  v3 = *(v2 + 40);
  *(v0 + 744) = v3;
  if (qword_1000B66B0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  *(v0 + 576) = v4;
  v5 = sub_100003448(v4, qword_1000B93E8);
  v6 = *(v4 - 8);
  *(v0 + 584) = v6;
  (*(v6 + 16))(v1 + v3, v5, v4);
  sub_100054AB0();
  if (v7)
  {
    v8 = *(v0 + 560);
    v9 = *(v0 + 424);
    v10 = *(v0 + 432);
    v11 = *(v0 + 384);
    v12 = *(v0 + 392);
    v13 = *(v0 + 160);
    URL.init(fileURLWithPath:)();

    (*(v10 + 32))(&v13[*(v11 + 20)], v8, v9);
    strcpy(v13, "user-specified");
    v13[15] = -18;
    v14 = &v13[*(v11 + 24)];
    *v14 = 3157553;
    *(v14 + 1) = 0xE300000000000000;
    (*(v12 + 56))(v13, 0, 1, v11);
  }

  else
  {
    sub_100011DFC(*(v0 + 168), *(v0 + 160), &qword_1000B6CB8, &unk_10008F9F0);
  }

  v15 = *(v0 + 424);
  v16 = *(v0 + 432);
  v18 = *(v0 + 408);
  v17 = *(v0 + 416);
  v19 = *(v0 + 384);
  v20 = *(v0 + 392);
  v21 = *(v0 + 376);
  v22 = *(v0 + 168);
  v23 = *(v16 + 56);
  *(v0 + 592) = v23;
  *(v0 + 600) = (v16 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v23(v17, 1, 1, v15);
  v24 = v18[5];
  *(v0 + 748) = v24;
  v109 = v24;
  v23(v17 + v24, 1, 1, v15);
  v25 = v18[6];
  *(v0 + 752) = v25;
  v111 = v25;
  v23(v17 + v25, 1, 1, v15);
  v26 = v18[7];
  *(v0 + 756) = v26;
  v113 = v26;
  v23(v17 + v26, 1, 1, v15);
  v27 = v18[8];
  *(v0 + 760) = v27;
  v23(v17 + v27, 1, 1, v15);
  sub_100011DFC(v22, v21, &qword_1000B6CB8, &unk_10008F9F0);
  if ((*(v20 + 48))(v21, 1, v19) == 1)
  {
    sub_10000BC10(*(v0 + 376), &qword_1000B6CB8, &unk_10008F9F0);
  }

  else
  {
    v28 = *(v0 + 560);
    v137 = *(v0 + 432);
    v130 = *(v0 + 424);
    v105 = *(v0 + 416);
    v107 = v27;
    v29 = *(v0 + 384);
    v30 = *(v0 + 368);
    v31 = *(v0 + 248);
    v32 = *(v0 + 256);
    v33 = *(v0 + 240);
    v119 = *(v0 + 400);
    sub_10001C20C(*(v0 + 376), v119);
    v116 = *(v29 + 20);
    URL.path(percentEncoded:)(1);
    URL.init(fileURLWithPath:)();

    *(v0 + 80) = 0xD00000000000001BLL;
    *(v0 + 88) = 0x8000000100094EE0;
    v135 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v133 = *(v31 + 104);
    v133(v32);
    sub_10001C1B8();
    URL.appending<A>(component:directoryHint:)();
    v34 = *(v31 + 8);
    v34(v32, v33);
    v124 = *(v137 + 8);
    v124(v28, v130);
    v23(v30, 0, 1, v130);
    sub_10001C270(v30, v105);
    URL.path(percentEncoded:)(1);
    URL.init(fileURLWithPath:)();

    *(v0 + 96) = 0xD000000000000019;
    *(v0 + 104) = 0x8000000100094E50;
    (v133)(v32, v135, v33);
    URL.appending<A>(component:directoryHint:)();
    v34(v32, v33);
    v124(v28, v130);
    v23(v30, 0, 1, v130);
    sub_10001C270(v30, v17 + v109);
    URL.path(percentEncoded:)(1);
    URL.init(fileURLWithPath:)();

    *(v0 + 112) = 0xD000000000000010;
    *(v0 + 120) = 0x8000000100094DC0;
    (v133)(v32, v135, v33);
    URL.appending<A>(component:directoryHint:)();
    v34(v32, v33);
    v124(v28, v130);
    v23(v30, 0, 1, v130);
    sub_10001C270(v30, v17 + v111);
    URL.path(percentEncoded:)(1);
    URL.init(fileURLWithPath:)();

    *(v0 + 128) = 0xD000000000000014;
    *(v0 + 136) = 0x8000000100094D30;
    (v133)(v32, v135, v33);
    URL.appending<A>(component:directoryHint:)();
    v34(v32, v33);
    v124(v28, v130);
    v23(v30, 0, 1, v130);
    sub_10001C270(v30, v17 + v113);
    URL.path(percentEncoded:)(1);
    URL.init(fileURLWithPath:)();

    *(v0 + 144) = 0xD000000000000012;
    *(v0 + 152) = 0x8000000100094CA0;
    (v133)(v32, v135, v33);
    URL.appending<A>(component:directoryHint:)();
    v34(v32, v33);
    v124(v28, v130);
    sub_10001C2E0(v119, type metadata accessor for UAFAssetManager.AssetInfo);
    v23(v30, 0, 1, v130);
    sub_10001C270(v30, v17 + v107);
  }

  sub_100054AB0();
  if (v35)
  {
    v36 = *(v0 + 544);
    v37 = *(v0 + 424);
    v38 = *(v0 + 368);
    v40 = *(v0 + 248);
    v39 = *(v0 + 256);
    v41 = *(v0 + 240);
    v42._object = 0x8000000100094EE0;
    v42._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v42);
    v23(v38, 1, 1, v37);
    (*(v40 + 104))(v39, enum case for URL.DirectoryHint.inferFromPath(_:), v41);
    URL.init(filePath:directoryHint:relativeTo:)();
    LOBYTE(v37) = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(53);
    v43._countAndFlagsBits = 0xD000000000000031;
    v43._object = 0x8000000100094F00;
    String.append(_:)(v43);
    v44 = URL.path(percentEncoded:)(1);
    String.append(_:)(v44);

    v45._countAndFlagsBits = 32032;
    v45._object = 0xE200000000000000;
    String.append(_:)(v45);
    sub_10005E11C(v37, 0, 0xE000000000000000, 0xD000000000000059, 0x80000001000949D0, 56);

    v46 = swift_task_alloc();
    *(v0 + 608) = v46;
    *v46 = v0;
    v46[1] = sub_100013900;
    v47 = *(v0 + 544);
    v48 = *(v0 + 232);
LABEL_11:

    return sub_10001B97C(v48, v47);
  }

  v50 = *(v0 + 424);
  v51 = *(v0 + 432);
  v52 = *(v0 + 360);
  sub_100011DFC(*(v0 + 416), v52, &qword_1000B6DE8, &qword_10008FA30);
  v53 = *(v51 + 48);
  if (v53(v52, 1, v50) == 1)
  {
    sub_10000BC10(*(v0 + 360), &qword_1000B6DE8, &qword_10008FA30);
  }

  else
  {
    (*(*(v0 + 432) + 32))(*(v0 + 552), *(v0 + 360), *(v0 + 424));
    v54 = [objc_opt_self() defaultManager];
    URL.path(percentEncoded:)(1);
    v55 = String._bridgeToObjectiveC()();

    v56 = [v54 fileExistsAtPath:v55];

    v57 = *(v0 + 552);
    if (v56)
    {
      v58 = static os_log_type_t.debug.getter();
      _StringGuts.grow(_:)(39);

      v59 = URL.path(percentEncoded:)(1);
      String.append(_:)(v59);

      v60._countAndFlagsBits = 32032;
      v60._object = 0xE200000000000000;
      String.append(_:)(v60);
      sub_10005E11C(v58, 0xD000000000000023, 0x8000000100094EB0, 0xD000000000000059, 0x80000001000949D0, 62);

      v61 = swift_task_alloc();
      *(v0 + 624) = v61;
      *v61 = v0;
      v61[1] = sub_100014494;
      v47 = *(v0 + 552);
      v48 = *(v0 + 224);
      goto LABEL_11;
    }

    (*(*(v0 + 432) + 8))(*(v0 + 552), *(v0 + 424));
  }

  type metadata accessor for SpamDecisioningManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v63 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v64 = [v63 resourceURL];

  if (v64)
  {
    v65 = *(v0 + 344);
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = *(v0 + 424);
  v69 = *(v0 + 344);
  v68 = *(v0 + 352);
  v23(v69, v66, 1, v67);
  sub_10001C148(v69, v68);
  if (v53(v68, 1, v67) != 1)
  {
    v84 = *(v0 + 536);
    v85 = *(v0 + 528);
    v86 = *(v0 + 424);
    v87 = *(v0 + 432);
    v88 = *(v0 + 352);
    v90 = *(v0 + 248);
    v89 = *(v0 + 256);
    v91 = *(v0 + 240);
    *(v0 + 16) = 0xD00000000000002DLL;
    *(v0 + 24) = 0x8000000100094A30;
    (*(v90 + 104))(v89, enum case for URL.DirectoryHint.inferFromPath(_:), v91);
    sub_10001C1B8();
    URL.appending<A>(path:directoryHint:)();
    (*(v90 + 8))(v89, v91);
    v92 = *(v87 + 8);
    *(v0 + 640) = v92;
    *(v0 + 648) = (v87 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v92(v88, v86);
    (*(v87 + 32))(v84, v85, v86);
    LOBYTE(v85) = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(41);

    v93 = URL.path(percentEncoded:)(1);
    String.append(_:)(v93);

    v94._countAndFlagsBits = 32032;
    v94._object = 0xE200000000000000;
    String.append(_:)(v94);
    sub_10005E11C(v85, 0xD000000000000025, 0x8000000100094A60, 0xD000000000000059, 0x80000001000949D0, 70);

    v95 = swift_task_alloc();
    *(v0 + 656) = v95;
    *v95 = v0;
    v95[1] = sub_100015028;
    v47 = *(v0 + 536);
    v48 = *(v0 + 216);
    goto LABEL_11;
  }

  v70 = *(v0 + 168);
  sub_10000BC10(*(v0 + 352), &qword_1000B6DE8, &qword_10008FA30);
  v71 = static os_log_type_t.error.getter();
  sub_10005E11C(v71, 0xD00000000000002ALL, 0x80000001000949A0, 0xD000000000000059, 0x80000001000949D0, 66);
  sub_10000B6B0();
  swift_allocError();
  *v72 = 0xD00000000000002ALL;
  *(v72 + 8) = 0x80000001000949A0;
  *(v72 + 16) = 6;
  swift_willThrow();
  sub_10000BC10(v70, &qword_1000B6CB8, &unk_10008F9F0);
  v73 = *(v0 + 160);
  sub_10001C2E0(*(v0 + 416), type metadata accessor for SpamDecisioningAsset.AssetURLs);
  sub_10000BC10(v73, &qword_1000B6CB8, &unk_10008F9F0);
  v74 = *(v0 + 560);
  v75 = *(v0 + 552);
  v76 = *(v0 + 544);
  v77 = *(v0 + 536);
  v78 = *(v0 + 528);
  v79 = *(v0 + 520);
  v80 = *(v0 + 504);
  v81 = *(v0 + 512);
  v82 = *(v0 + 496);
  v96 = *(v0 + 488);
  v97 = *(v0 + 480);
  v98 = *(v0 + 472);
  v99 = *(v0 + 464);
  v100 = *(v0 + 456);
  v101 = *(v0 + 448);
  v102 = *(v0 + 440);
  v103 = *(v0 + 416);
  v104 = *(v0 + 400);
  v106 = *(v0 + 376);
  v108 = *(v0 + 368);
  v110 = *(v0 + 360);
  v112 = *(v0 + 352);
  v114 = *(v0 + 344);
  v115 = *(v0 + 336);
  v117 = *(v0 + 328);
  v118 = *(v0 + 320);
  v120 = *(v0 + 312);
  v121 = *(v0 + 304);
  v122 = *(v0 + 296);
  v123 = *(v0 + 288);
  v125 = *(v0 + 280);
  v126 = *(v0 + 272);
  v127 = *(v0 + 264);
  v128 = *(v0 + 256);
  v129 = *(v0 + 232);
  v131 = *(v0 + 224);
  v132 = *(v0 + 216);
  v134 = *(v0 + 208);
  v136 = *(v0 + 200);
  v138 = *(v0 + 192);
  (*(*(v0 + 584) + 8))(*(v0 + 160) + *(v0 + 744), *(v0 + 576));

  v83 = *(v0 + 8);

  return v83();
}

uint64_t sub_100013900()
{
  v2 = *(*v1 + 608);
  v5 = *v1;
  *(*v1 + 616) = v0;

  if (v0)
  {
    v3 = sub_10001A6C0;
  }

  else
  {
    v3 = sub_100013A14;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100013A14()
{
  v1 = *(*(v0 + 432) + 8);
  v1(*(v0 + 544), *(v0 + 424));
  v2 = *(v0 + 232);
  *(v0 + 672) = v1;
  v3 = *(v0 + 176);
  v4 = *(v0 + 160);
  v5 = *(*(v0 + 568) + 24);
  v6 = *(*(v0 + 184) + 32);
  *(v0 + 680) = v6;
  v6(v4 + v5, v2, v3);
  sub_100054AB0();
  if (v7)
  {
    v8 = *(v0 + 600);
    v9 = *(v0 + 592);
    v109 = *(v0 + 744);
    v10 = *(v0 + 424);
    v11 = *(v0 + 368);
    v12 = *(v0 + 248);
    v13 = *(v0 + 256);
    v14 = *(v0 + 240);
    v15._countAndFlagsBits = 0xD000000000000019;
    v103 = *(v0 + 512);
    v106 = *(v0 + 160);
    v15._object = 0x8000000100094E50;
    String.append(_:)(v15);
    v9(v11, 1, 1, v10);
    (*(v12 + 104))(v13, enum case for URL.DirectoryHint.inferFromPath(_:), v14);
    URL.init(filePath:directoryHint:relativeTo:)();
    LOBYTE(v10) = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(63);
    v16._countAndFlagsBits = 0xD00000000000003BLL;
    v16._object = 0x8000000100094E70;
    String.append(_:)(v16);
    v17 = URL.path(percentEncoded:)(1);
    String.append(_:)(v17);

    v18._countAndFlagsBits = 32032;
    v18._object = 0xE200000000000000;
    String.append(_:)(v18);
    sub_10005E11C(v10, 0, 0xE000000000000000, 0xD000000000000059, 0x80000001000949D0, 80);

    v19 = swift_task_alloc();
    *(v0 + 688) = v19;
    *v19 = v0;
    v19[1] = sub_100015BBC;
    v20 = *(v0 + 512);
    v21 = *(v0 + 208);
LABEL_3:

    return sub_10001B97C(v21, v20);
  }

  v23 = *(v0 + 424);
  v24 = *(v0 + 432);
  v25 = *(v0 + 336);
  sub_100011DFC(*(v0 + 416) + *(v0 + 748), v25, &qword_1000B6DE8, &qword_10008FA30);
  v26 = *(v24 + 48);
  if (v26(v25, 1, v23) == 1)
  {
    sub_10000BC10(*(v0 + 336), &qword_1000B6DE8, &qword_10008FA30);
  }

  else
  {
    (*(*(v0 + 432) + 32))(*(v0 + 520), *(v0 + 336), *(v0 + 424));
    v27 = [objc_opt_self() defaultManager];
    URL.path(percentEncoded:)(1);
    v28 = String._bridgeToObjectiveC()();

    v29 = [v27 fileExistsAtPath:v28];

    if (v29)
    {
      v30 = *(v0 + 744);
      v31 = *(v0 + 520);
      v32 = *(v0 + 160);
      v33 = static os_log_type_t.debug.getter();
      _StringGuts.grow(_:)(49);

      v34 = URL.path(percentEncoded:)(1);
      String.append(_:)(v34);

      v35._countAndFlagsBits = 32032;
      v35._object = 0xE200000000000000;
      String.append(_:)(v35);
      sub_10005E11C(v33, 0xD00000000000002DLL, 0x8000000100094E20, 0xD000000000000059, 0x80000001000949D0, 86);

      v36 = swift_task_alloc();
      *(v0 + 704) = v36;
      *v36 = v0;
      v36[1] = sub_1000174C0;
      v20 = *(v0 + 520);
      v21 = *(v0 + 200);
      goto LABEL_3;
    }

    v37 = *(v0 + 432) + 8;
    v1(*(v0 + 520), *(v0 + 424));
  }

  type metadata accessor for SpamDecisioningManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v39 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v40 = [v39 resourceURL];

  if (v40)
  {
    v41 = *(v0 + 320);
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  v43 = *(v0 + 600);
  v44 = *(v0 + 424);
  v46 = *(v0 + 320);
  v45 = *(v0 + 328);
  (*(v0 + 592))(v46, v42, 1, v44);
  sub_10001C148(v46, v45);
  if (v26(v45, 1, v44) != 1)
  {
    v63 = *(v0 + 496);
    v105 = *(v0 + 504);
    v64 = *(v0 + 424);
    v65 = *(v0 + 432);
    v66 = *(v0 + 328);
    v67 = *(v0 + 248);
    v68 = *(v0 + 256);
    v69 = *(v0 + 240);
    v108 = *(v0 + 160);
    v110 = *(v0 + 744);
    *(v0 + 32) = 0xD00000000000002BLL;
    *(v0 + 40) = 0x8000000100094AD0;
    (*(v67 + 104))(v68, enum case for URL.DirectoryHint.inferFromPath(_:), v69);
    sub_10001C1B8();
    URL.appending<A>(path:directoryHint:)();
    (*(v67 + 8))(v68, v69);
    *(v0 + 720) = (v65 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v1(v66, v64);
    (*(v65 + 32))(v105, v63, v64);
    LOBYTE(v63) = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(51);
    v70._countAndFlagsBits = 0xD00000000000002FLL;
    v70._object = 0x8000000100094B00;
    String.append(_:)(v70);
    v71 = URL.path(percentEncoded:)(1);
    String.append(_:)(v71);

    v72._countAndFlagsBits = 32032;
    v72._object = 0xE200000000000000;
    String.append(_:)(v72);
    sub_10005E11C(v63, 0, 0xE000000000000000, 0xD000000000000059, 0x80000001000949D0, 94);

    v73 = swift_task_alloc();
    *(v0 + 728) = v73;
    *v73 = v0;
    v73[1] = sub_100018DC4;
    v20 = *(v0 + 504);
    v21 = *(v0 + 192);
    goto LABEL_3;
  }

  v47 = *(v0 + 744);
  v49 = *(v0 + 160);
  v48 = *(v0 + 168);
  sub_10000BC10(*(v0 + 328), &qword_1000B6DE8, &qword_10008FA30);
  v50 = static os_log_type_t.error.getter();
  sub_10005E11C(v50, 0xD000000000000034, 0x8000000100094A90, 0xD000000000000059, 0x80000001000949D0, 90);
  sub_10000B6B0();
  swift_allocError();
  *v51 = 0xD000000000000034;
  *(v51 + 8) = 0x8000000100094A90;
  *(v51 + 16) = 6;
  swift_willThrow();
  sub_10000BC10(v48, &qword_1000B6CB8, &unk_10008F9F0);
  v52 = *(v0 + 160);
  sub_10001C2E0(*(v0 + 416), type metadata accessor for SpamDecisioningAsset.AssetURLs);
  sub_10000BC10(v52, &qword_1000B6CB8, &unk_10008F9F0);
  (*(*(v0 + 184) + 8))(*(v0 + 160) + *(*(v0 + 568) + 24), *(v0 + 176));
  v53 = *(v0 + 560);
  v54 = *(v0 + 552);
  v55 = *(v0 + 544);
  v56 = *(v0 + 536);
  v57 = *(v0 + 528);
  v58 = *(v0 + 520);
  v59 = *(v0 + 504);
  v60 = *(v0 + 512);
  v61 = *(v0 + 496);
  v74 = *(v0 + 488);
  v75 = *(v0 + 480);
  v76 = *(v0 + 472);
  v77 = *(v0 + 464);
  v78 = *(v0 + 456);
  v79 = *(v0 + 448);
  v80 = *(v0 + 440);
  v81 = *(v0 + 416);
  v82 = *(v0 + 400);
  v83 = *(v0 + 376);
  v84 = *(v0 + 368);
  v85 = *(v0 + 360);
  v86 = *(v0 + 352);
  v87 = *(v0 + 344);
  v88 = *(v0 + 336);
  v89 = *(v0 + 328);
  v90 = *(v0 + 320);
  v91 = *(v0 + 312);
  v92 = *(v0 + 304);
  v93 = *(v0 + 296);
  v94 = *(v0 + 288);
  v95 = *(v0 + 280);
  v96 = *(v0 + 272);
  v97 = *(v0 + 264);
  v98 = *(v0 + 256);
  v99 = *(v0 + 232);
  v100 = *(v0 + 224);
  v101 = *(v0 + 216);
  v102 = *(v0 + 208);
  v104 = *(v0 + 200);
  v107 = *(v0 + 192);
  (*(*(v0 + 584) + 8))(*(v0 + 160) + *(v0 + 744), *(v0 + 576));

  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_100014494()
{
  v2 = *(*v1 + 624);
  v5 = *v1;
  *(*v1 + 632) = v0;

  if (v0)
  {
    v3 = sub_10001A9C8;
  }

  else
  {
    v3 = sub_1000145A8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000145A8()
{
  v1 = *(*(v0 + 432) + 8);
  v1(*(v0 + 552), *(v0 + 424));
  v2 = *(v0 + 224);
  *(v0 + 672) = v1;
  v3 = *(v0 + 176);
  v4 = *(v0 + 160);
  v5 = *(*(v0 + 568) + 24);
  v6 = *(*(v0 + 184) + 32);
  *(v0 + 680) = v6;
  v6(v4 + v5, v2, v3);
  sub_100054AB0();
  if (v7)
  {
    v8 = *(v0 + 600);
    v9 = *(v0 + 592);
    v109 = *(v0 + 744);
    v10 = *(v0 + 424);
    v11 = *(v0 + 368);
    v12 = *(v0 + 248);
    v13 = *(v0 + 256);
    v14 = *(v0 + 240);
    v15._countAndFlagsBits = 0xD000000000000019;
    v103 = *(v0 + 512);
    v106 = *(v0 + 160);
    v15._object = 0x8000000100094E50;
    String.append(_:)(v15);
    v9(v11, 1, 1, v10);
    (*(v12 + 104))(v13, enum case for URL.DirectoryHint.inferFromPath(_:), v14);
    URL.init(filePath:directoryHint:relativeTo:)();
    LOBYTE(v10) = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(63);
    v16._countAndFlagsBits = 0xD00000000000003BLL;
    v16._object = 0x8000000100094E70;
    String.append(_:)(v16);
    v17 = URL.path(percentEncoded:)(1);
    String.append(_:)(v17);

    v18._countAndFlagsBits = 32032;
    v18._object = 0xE200000000000000;
    String.append(_:)(v18);
    sub_10005E11C(v10, 0, 0xE000000000000000, 0xD000000000000059, 0x80000001000949D0, 80);

    v19 = swift_task_alloc();
    *(v0 + 688) = v19;
    *v19 = v0;
    v19[1] = sub_100015BBC;
    v20 = *(v0 + 512);
    v21 = *(v0 + 208);
LABEL_3:

    return sub_10001B97C(v21, v20);
  }

  v23 = *(v0 + 424);
  v24 = *(v0 + 432);
  v25 = *(v0 + 336);
  sub_100011DFC(*(v0 + 416) + *(v0 + 748), v25, &qword_1000B6DE8, &qword_10008FA30);
  v26 = *(v24 + 48);
  if (v26(v25, 1, v23) == 1)
  {
    sub_10000BC10(*(v0 + 336), &qword_1000B6DE8, &qword_10008FA30);
  }

  else
  {
    (*(*(v0 + 432) + 32))(*(v0 + 520), *(v0 + 336), *(v0 + 424));
    v27 = [objc_opt_self() defaultManager];
    URL.path(percentEncoded:)(1);
    v28 = String._bridgeToObjectiveC()();

    v29 = [v27 fileExistsAtPath:v28];

    if (v29)
    {
      v30 = *(v0 + 744);
      v31 = *(v0 + 520);
      v32 = *(v0 + 160);
      v33 = static os_log_type_t.debug.getter();
      _StringGuts.grow(_:)(49);

      v34 = URL.path(percentEncoded:)(1);
      String.append(_:)(v34);

      v35._countAndFlagsBits = 32032;
      v35._object = 0xE200000000000000;
      String.append(_:)(v35);
      sub_10005E11C(v33, 0xD00000000000002DLL, 0x8000000100094E20, 0xD000000000000059, 0x80000001000949D0, 86);

      v36 = swift_task_alloc();
      *(v0 + 704) = v36;
      *v36 = v0;
      v36[1] = sub_1000174C0;
      v20 = *(v0 + 520);
      v21 = *(v0 + 200);
      goto LABEL_3;
    }

    v37 = *(v0 + 432) + 8;
    v1(*(v0 + 520), *(v0 + 424));
  }

  type metadata accessor for SpamDecisioningManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v39 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v40 = [v39 resourceURL];

  if (v40)
  {
    v41 = *(v0 + 320);
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  v43 = *(v0 + 600);
  v44 = *(v0 + 424);
  v46 = *(v0 + 320);
  v45 = *(v0 + 328);
  (*(v0 + 592))(v46, v42, 1, v44);
  sub_10001C148(v46, v45);
  if (v26(v45, 1, v44) != 1)
  {
    v63 = *(v0 + 496);
    v105 = *(v0 + 504);
    v64 = *(v0 + 424);
    v65 = *(v0 + 432);
    v66 = *(v0 + 328);
    v67 = *(v0 + 248);
    v68 = *(v0 + 256);
    v69 = *(v0 + 240);
    v108 = *(v0 + 160);
    v110 = *(v0 + 744);
    *(v0 + 32) = 0xD00000000000002BLL;
    *(v0 + 40) = 0x8000000100094AD0;
    (*(v67 + 104))(v68, enum case for URL.DirectoryHint.inferFromPath(_:), v69);
    sub_10001C1B8();
    URL.appending<A>(path:directoryHint:)();
    (*(v67 + 8))(v68, v69);
    *(v0 + 720) = (v65 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v1(v66, v64);
    (*(v65 + 32))(v105, v63, v64);
    LOBYTE(v63) = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(51);
    v70._countAndFlagsBits = 0xD00000000000002FLL;
    v70._object = 0x8000000100094B00;
    String.append(_:)(v70);
    v71 = URL.path(percentEncoded:)(1);
    String.append(_:)(v71);

    v72._countAndFlagsBits = 32032;
    v72._object = 0xE200000000000000;
    String.append(_:)(v72);
    sub_10005E11C(v63, 0, 0xE000000000000000, 0xD000000000000059, 0x80000001000949D0, 94);

    v73 = swift_task_alloc();
    *(v0 + 728) = v73;
    *v73 = v0;
    v73[1] = sub_100018DC4;
    v20 = *(v0 + 504);
    v21 = *(v0 + 192);
    goto LABEL_3;
  }

  v47 = *(v0 + 744);
  v49 = *(v0 + 160);
  v48 = *(v0 + 168);
  sub_10000BC10(*(v0 + 328), &qword_1000B6DE8, &qword_10008FA30);
  v50 = static os_log_type_t.error.getter();
  sub_10005E11C(v50, 0xD000000000000034, 0x8000000100094A90, 0xD000000000000059, 0x80000001000949D0, 90);
  sub_10000B6B0();
  swift_allocError();
  *v51 = 0xD000000000000034;
  *(v51 + 8) = 0x8000000100094A90;
  *(v51 + 16) = 6;
  swift_willThrow();
  sub_10000BC10(v48, &qword_1000B6CB8, &unk_10008F9F0);
  v52 = *(v0 + 160);
  sub_10001C2E0(*(v0 + 416), type metadata accessor for SpamDecisioningAsset.AssetURLs);
  sub_10000BC10(v52, &qword_1000B6CB8, &unk_10008F9F0);
  (*(*(v0 + 184) + 8))(*(v0 + 160) + *(*(v0 + 568) + 24), *(v0 + 176));
  v53 = *(v0 + 560);
  v54 = *(v0 + 552);
  v55 = *(v0 + 544);
  v56 = *(v0 + 536);
  v57 = *(v0 + 528);
  v58 = *(v0 + 520);
  v59 = *(v0 + 504);
  v60 = *(v0 + 512);
  v61 = *(v0 + 496);
  v74 = *(v0 + 488);
  v75 = *(v0 + 480);
  v76 = *(v0 + 472);
  v77 = *(v0 + 464);
  v78 = *(v0 + 456);
  v79 = *(v0 + 448);
  v80 = *(v0 + 440);
  v81 = *(v0 + 416);
  v82 = *(v0 + 400);
  v83 = *(v0 + 376);
  v84 = *(v0 + 368);
  v85 = *(v0 + 360);
  v86 = *(v0 + 352);
  v87 = *(v0 + 344);
  v88 = *(v0 + 336);
  v89 = *(v0 + 328);
  v90 = *(v0 + 320);
  v91 = *(v0 + 312);
  v92 = *(v0 + 304);
  v93 = *(v0 + 296);
  v94 = *(v0 + 288);
  v95 = *(v0 + 280);
  v96 = *(v0 + 272);
  v97 = *(v0 + 264);
  v98 = *(v0 + 256);
  v99 = *(v0 + 232);
  v100 = *(v0 + 224);
  v101 = *(v0 + 216);
  v102 = *(v0 + 208);
  v104 = *(v0 + 200);
  v107 = *(v0 + 192);
  (*(*(v0 + 584) + 8))(*(v0 + 160) + *(v0 + 744), *(v0 + 576));

  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_100015028()
{
  v2 = *(*v1 + 656);
  v5 = *v1;
  *(*v1 + 664) = v0;

  if (v0)
  {
    v3 = sub_10001ACD0;
  }

  else
  {
    v3 = sub_10001513C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001513C()
{
  v1 = *(v0 + 648);
  (*(v0 + 640))(*(v0 + 536), *(v0 + 424));
  v2 = *(v0 + 640);
  v3 = *(v0 + 216);
  *(v0 + 672) = v2;
  v4 = *(v0 + 176);
  v5 = *(v0 + 160);
  v6 = *(*(v0 + 568) + 24);
  v7 = *(*(v0 + 184) + 32);
  *(v0 + 680) = v7;
  v7(v5 + v6, v3, v4);
  sub_100054AB0();
  if (v8)
  {
    v9 = *(v0 + 600);
    v10 = *(v0 + 592);
    v110 = *(v0 + 744);
    v11 = *(v0 + 424);
    v12 = *(v0 + 368);
    v13 = *(v0 + 248);
    v14 = *(v0 + 256);
    v15 = *(v0 + 240);
    v16._countAndFlagsBits = 0xD000000000000019;
    v104 = *(v0 + 512);
    v107 = *(v0 + 160);
    v16._object = 0x8000000100094E50;
    String.append(_:)(v16);
    v10(v12, 1, 1, v11);
    (*(v13 + 104))(v14, enum case for URL.DirectoryHint.inferFromPath(_:), v15);
    URL.init(filePath:directoryHint:relativeTo:)();
    LOBYTE(v11) = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(63);
    v17._countAndFlagsBits = 0xD00000000000003BLL;
    v17._object = 0x8000000100094E70;
    String.append(_:)(v17);
    v18 = URL.path(percentEncoded:)(1);
    String.append(_:)(v18);

    v19._countAndFlagsBits = 32032;
    v19._object = 0xE200000000000000;
    String.append(_:)(v19);
    sub_10005E11C(v11, 0, 0xE000000000000000, 0xD000000000000059, 0x80000001000949D0, 80);

    v20 = swift_task_alloc();
    *(v0 + 688) = v20;
    *v20 = v0;
    v20[1] = sub_100015BBC;
    v21 = *(v0 + 512);
    v22 = *(v0 + 208);
LABEL_3:

    return sub_10001B97C(v22, v21);
  }

  v24 = *(v0 + 424);
  v25 = *(v0 + 432);
  v26 = *(v0 + 336);
  sub_100011DFC(*(v0 + 416) + *(v0 + 748), v26, &qword_1000B6DE8, &qword_10008FA30);
  v27 = *(v25 + 48);
  if (v27(v26, 1, v24) == 1)
  {
    sub_10000BC10(*(v0 + 336), &qword_1000B6DE8, &qword_10008FA30);
  }

  else
  {
    (*(*(v0 + 432) + 32))(*(v0 + 520), *(v0 + 336), *(v0 + 424));
    v28 = [objc_opt_self() defaultManager];
    URL.path(percentEncoded:)(1);
    v29 = String._bridgeToObjectiveC()();

    v30 = [v28 fileExistsAtPath:v29];

    if (v30)
    {
      v31 = *(v0 + 744);
      v32 = *(v0 + 520);
      v33 = *(v0 + 160);
      v34 = static os_log_type_t.debug.getter();
      _StringGuts.grow(_:)(49);

      v35 = URL.path(percentEncoded:)(1);
      String.append(_:)(v35);

      v36._countAndFlagsBits = 32032;
      v36._object = 0xE200000000000000;
      String.append(_:)(v36);
      sub_10005E11C(v34, 0xD00000000000002DLL, 0x8000000100094E20, 0xD000000000000059, 0x80000001000949D0, 86);

      v37 = swift_task_alloc();
      *(v0 + 704) = v37;
      *v37 = v0;
      v37[1] = sub_1000174C0;
      v21 = *(v0 + 520);
      v22 = *(v0 + 200);
      goto LABEL_3;
    }

    v38 = *(v0 + 432) + 8;
    v2(*(v0 + 520), *(v0 + 424));
  }

  type metadata accessor for SpamDecisioningManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v40 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v41 = [v40 resourceURL];

  if (v41)
  {
    v42 = *(v0 + 320);
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  v44 = *(v0 + 600);
  v45 = *(v0 + 424);
  v47 = *(v0 + 320);
  v46 = *(v0 + 328);
  (*(v0 + 592))(v47, v43, 1, v45);
  sub_10001C148(v47, v46);
  if (v27(v46, 1, v45) != 1)
  {
    v64 = *(v0 + 496);
    v106 = *(v0 + 504);
    v65 = *(v0 + 424);
    v66 = *(v0 + 432);
    v67 = *(v0 + 328);
    v68 = *(v0 + 248);
    v69 = *(v0 + 256);
    v70 = *(v0 + 240);
    v109 = *(v0 + 160);
    v111 = *(v0 + 744);
    *(v0 + 32) = 0xD00000000000002BLL;
    *(v0 + 40) = 0x8000000100094AD0;
    (*(v68 + 104))(v69, enum case for URL.DirectoryHint.inferFromPath(_:), v70);
    sub_10001C1B8();
    URL.appending<A>(path:directoryHint:)();
    (*(v68 + 8))(v69, v70);
    *(v0 + 720) = (v66 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v2(v67, v65);
    (*(v66 + 32))(v106, v64, v65);
    LOBYTE(v64) = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(51);
    v71._countAndFlagsBits = 0xD00000000000002FLL;
    v71._object = 0x8000000100094B00;
    String.append(_:)(v71);
    v72 = URL.path(percentEncoded:)(1);
    String.append(_:)(v72);

    v73._countAndFlagsBits = 32032;
    v73._object = 0xE200000000000000;
    String.append(_:)(v73);
    sub_10005E11C(v64, 0, 0xE000000000000000, 0xD000000000000059, 0x80000001000949D0, 94);

    v74 = swift_task_alloc();
    *(v0 + 728) = v74;
    *v74 = v0;
    v74[1] = sub_100018DC4;
    v21 = *(v0 + 504);
    v22 = *(v0 + 192);
    goto LABEL_3;
  }

  v48 = *(v0 + 744);
  v50 = *(v0 + 160);
  v49 = *(v0 + 168);
  sub_10000BC10(*(v0 + 328), &qword_1000B6DE8, &qword_10008FA30);
  v51 = static os_log_type_t.error.getter();
  sub_10005E11C(v51, 0xD000000000000034, 0x8000000100094A90, 0xD000000000000059, 0x80000001000949D0, 90);
  sub_10000B6B0();
  swift_allocError();
  *v52 = 0xD000000000000034;
  *(v52 + 8) = 0x8000000100094A90;
  *(v52 + 16) = 6;
  swift_willThrow();
  sub_10000BC10(v49, &qword_1000B6CB8, &unk_10008F9F0);
  v53 = *(v0 + 160);
  sub_10001C2E0(*(v0 + 416), type metadata accessor for SpamDecisioningAsset.AssetURLs);
  sub_10000BC10(v53, &qword_1000B6CB8, &unk_10008F9F0);
  (*(*(v0 + 184) + 8))(*(v0 + 160) + *(*(v0 + 568) + 24), *(v0 + 176));
  v54 = *(v0 + 560);
  v55 = *(v0 + 552);
  v56 = *(v0 + 544);
  v57 = *(v0 + 536);
  v58 = *(v0 + 528);
  v59 = *(v0 + 520);
  v60 = *(v0 + 504);
  v61 = *(v0 + 512);
  v62 = *(v0 + 496);
  v75 = *(v0 + 488);
  v76 = *(v0 + 480);
  v77 = *(v0 + 472);
  v78 = *(v0 + 464);
  v79 = *(v0 + 456);
  v80 = *(v0 + 448);
  v81 = *(v0 + 440);
  v82 = *(v0 + 416);
  v83 = *(v0 + 400);
  v84 = *(v0 + 376);
  v85 = *(v0 + 368);
  v86 = *(v0 + 360);
  v87 = *(v0 + 352);
  v88 = *(v0 + 344);
  v89 = *(v0 + 336);
  v90 = *(v0 + 328);
  v91 = *(v0 + 320);
  v92 = *(v0 + 312);
  v93 = *(v0 + 304);
  v94 = *(v0 + 296);
  v95 = *(v0 + 288);
  v96 = *(v0 + 280);
  v97 = *(v0 + 272);
  v98 = *(v0 + 264);
  v99 = *(v0 + 256);
  v100 = *(v0 + 232);
  v101 = *(v0 + 224);
  v102 = *(v0 + 216);
  v103 = *(v0 + 208);
  v105 = *(v0 + 200);
  v108 = *(v0 + 192);
  (*(*(v0 + 584) + 8))(*(v0 + 160) + *(v0 + 744), *(v0 + 576));

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_100015BBC()
{
  v2 = *(*v1 + 688);
  v5 = *v1;
  *(*v1 + 696) = v0;

  if (v0)
  {
    v3 = sub_10001AFD4;
  }

  else
  {
    v3 = sub_100015CD0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100015CD0()
{
  v1 = *(v0 + 432) + 8;
  (*(v0 + 672))(*(v0 + 512), *(v0 + 424));
  v2 = *(v0 + 696);
  v3 = *(v0 + 184) + 32;
  (*(v0 + 680))(*(v0 + 160) + *(*(v0 + 568) + 20), *(v0 + 208), *(v0 + 176));
  v4 = sub_100054AB0();
  if (v5)
  {
    v6 = *(v0 + 744);
    v7 = *(v0 + 160);
    v272._countAndFlagsBits = v4;
    v272._object = v5;
    v8._countAndFlagsBits = 0xD000000000000010;
    v8._object = 0x8000000100094DC0;
    String.append(_:)(v8);
    v9 = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(62);
    v10._countAndFlagsBits = 0xD00000000000003ALL;
    v10._object = 0x8000000100094DE0;
    String.append(_:)(v10);
    String.append(_:)(v272);
    v11._countAndFlagsBits = 32032;
    v11._object = 0xE200000000000000;
    String.append(_:)(v11);
    sub_10005E11C(v9, 0, 0xE000000000000000, 0xD000000000000059, 0x80000001000949D0, 103);

    v12 = type metadata accessor for JavaScriptAsset();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_10004FA38(v272._countAndFlagsBits, v272._object);
    if (v2)
    {
      v16 = *(v0 + 168);
LABEL_15:
      sub_10000BC10(v16, &qword_1000B6CB8, &unk_10008F9F0);
      goto LABEL_16;
    }

LABEL_19:
    *(*(v0 + 160) + *(*(v0 + 568) + 28)) = v15;
    v76 = sub_100054AB0();
    if (v77)
    {
      v78 = *(v0 + 744);
      v79 = *(v0 + 160);
      v273._countAndFlagsBits = v76;
      v273._object = v77;
      v80._countAndFlagsBits = 0xD000000000000014;
      v80._object = 0x8000000100094D30;
      String.append(_:)(v80);
      v81 = static os_log_type_t.debug.getter();
      _StringGuts.grow(_:)(61);
      v82._countAndFlagsBits = 0xD000000000000039;
      v82._object = 0x8000000100094D50;
      String.append(_:)(v82);
      String.append(_:)(v273);
      v83._countAndFlagsBits = 32032;
      v83._object = 0xE200000000000000;
      String.append(_:)(v83);
      sub_10005E11C(v81, 0, 0xE000000000000000, 0xD000000000000059, 0x80000001000949D0, 126);

      v84 = type metadata accessor for ConfigurationsAsset();
      v85 = *(v84 + 48);
      v86 = *(v84 + 52);
      swift_allocObject();
      v87 = sub_10001C8A8(v273._countAndFlagsBits, v273._object);
      goto LABEL_39;
    }

    v88 = *(v0 + 424);
    v89 = *(v0 + 432);
    v90 = *(v0 + 288);
    sub_100011DFC(*(v0 + 416) + *(v0 + 756), v90, &qword_1000B6DE8, &qword_10008FA30);
    v91 = *(v89 + 48);
    if (v91(v90, 1, v88) == 1)
    {
      sub_10000BC10(*(v0 + 288), &qword_1000B6DE8, &qword_10008FA30);
    }

    else
    {
      (*(*(v0 + 432) + 32))(*(v0 + 464), *(v0 + 288), *(v0 + 424));
      v92 = [objc_opt_self() defaultManager];
      URL.path(percentEncoded:)(1);
      v93 = String._bridgeToObjectiveC()();

      v94 = [v92 fileExistsAtPath:v93];

      if (v94)
      {
        v95 = *(v0 + 744);
        v96 = *(v0 + 464);
        v97 = *(v0 + 160);
        v98 = static os_log_type_t.debug.getter();
        _StringGuts.grow(_:)(47);

        v99 = URL.path(percentEncoded:)(1);
        String.append(_:)(v99);

        v100._countAndFlagsBits = 32032;
        v100._object = 0xE200000000000000;
        String.append(_:)(v100);
        sub_10005E11C(v98, 0xD00000000000002BLL, 0x8000000100094D00, 0xD000000000000059, 0x80000001000949D0, 132);

        v101 = URL.path.getter();
        v103 = v102;
        v104 = type metadata accessor for ConfigurationsAsset();
        v105 = *(v104 + 48);
        v106 = *(v104 + 52);
        swift_allocObject();
        v107 = sub_10001C8A8(v101, v103);
        v108 = *(v0 + 432);
        v156 = v107;
        (*(v0 + 672))(*(v0 + 464), *(v0 + 424));
        v87 = v156;
        goto LABEL_39;
      }

      v110 = *(v0 + 432) + 8;
      (*(v0 + 672))(*(v0 + 464), *(v0 + 424));
    }

    type metadata accessor for SpamDecisioningManager();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v112 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v113 = [v112 resourceURL];

    if (v113)
    {
      v114 = *(v0 + 272);
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v115 = 0;
    }

    else
    {
      v115 = 1;
    }

    v116 = *(v0 + 600);
    v117 = *(v0 + 424);
    v119 = *(v0 + 272);
    v118 = *(v0 + 280);
    (*(v0 + 592))(v119, v115, 1, v117);
    sub_10001C148(v119, v118);
    if (v91(v118, 1, v117) == 1)
    {
      v120 = *(v0 + 744);
      v122 = *(v0 + 160);
      v121 = *(v0 + 168);
      sub_10000BC10(*(v0 + 280), &qword_1000B6DE8, &qword_10008FA30);
      v123 = static os_log_type_t.error.getter();
      sub_10005E11C(v123, 0xD000000000000032, 0x8000000100094BD0, 0xD000000000000059, 0x80000001000949D0, 136);
      sub_10000B6B0();
      swift_allocError();
      *v124 = 0xD000000000000032;
      *(v124 + 8) = 0x8000000100094BD0;
      *(v124 + 16) = 6;
      swift_willThrow();
      sub_10000BC10(v121, &qword_1000B6CB8, &unk_10008F9F0);
      v56 = 1;
      goto LABEL_32;
    }

    v138 = *(v0 + 672);
    v140 = *(v0 + 448);
    v139 = *(v0 + 456);
    v141 = *(v0 + 424);
    v142 = *(v0 + 432);
    v143 = *(v0 + 280);
    v144 = *(v0 + 248);
    v145 = *(v0 + 256);
    v146 = *(v0 + 240);
    v263 = *(v0 + 160);
    v267 = *(v0 + 744);
    *(v0 + 64) = 0xD000000000000026;
    *(v0 + 72) = 0x8000000100094C10;
    (*(v144 + 104))(v145, enum case for URL.DirectoryHint.inferFromPath(_:), v146);
    sub_10001C1B8();
    URL.appending<A>(path:directoryHint:)();
    (*(v144 + 8))(v145, v146);
    v138(v143, v141);
    (*(v142 + 32))(v139, v140, v141);
    LOBYTE(v140) = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(49);

    v147 = URL.path(percentEncoded:)(1);
    String.append(_:)(v147);

    v148._countAndFlagsBits = 32032;
    v148._object = 0xE200000000000000;
    String.append(_:)(v148);
    sub_10005E11C(v140, 0xD00000000000002DLL, 0x8000000100094C40, 0xD000000000000059, 0x80000001000949D0, 140);

    v149 = URL.path.getter();
    v151 = v150;
    v152 = type metadata accessor for ConfigurationsAsset();
    v153 = *(v152 + 48);
    v154 = *(v152 + 52);
    swift_allocObject();
    v155 = sub_10001C8A8(v149, v151);
    (*(v0 + 672))(*(v0 + 456), *(v0 + 424));
    v87 = v155;
LABEL_39:
    *(*(v0 + 160) + *(*(v0 + 568) + 32)) = v87;
    v157 = sub_100054AB0();
    if (v158)
    {
      v159 = *(v0 + 744);
      v160 = *(v0 + 160);
      v274._countAndFlagsBits = v157;
      v274._object = v158;
      v161._countAndFlagsBits = 0xD000000000000012;
      v161._object = 0x8000000100094CA0;
      String.append(_:)(v161);
      v162 = static os_log_type_t.debug.getter();
      _StringGuts.grow(_:)(59);
      v163._countAndFlagsBits = 0xD000000000000037;
      v163._object = 0x8000000100094CC0;
      String.append(_:)(v163);
      String.append(_:)(v274);
      v164._countAndFlagsBits = 32032;
      v164._object = 0xE200000000000000;
      String.append(_:)(v164);
      sub_10005E11C(v162, 0, 0xE000000000000000, 0xD000000000000059, 0x80000001000949D0, 149);

      v165 = type metadata accessor for RecordZonesAsset();
      v166 = *(v165 + 48);
      v167 = *(v165 + 52);
      swift_allocObject();
      v168 = sub_100072990(v274._countAndFlagsBits, v274._object);
      sub_10000BC10(*(v0 + 168), &qword_1000B6CB8, &unk_10008F9F0);
LABEL_47:
      v196 = *(v0 + 560);
      v197 = *(v0 + 552);
      v198 = *(v0 + 544);
      v199 = *(v0 + 536);
      v200 = *(v0 + 528);
      v201 = *(v0 + 520);
      v202 = *(v0 + 512);
      v205 = *(v0 + 504);
      v207 = *(v0 + 496);
      v209 = *(v0 + 488);
      v211 = *(v0 + 480);
      v213 = *(v0 + 472);
      v215 = *(v0 + 464);
      v217 = *(v0 + 456);
      v219 = *(v0 + 448);
      v221 = *(v0 + 440);
      v203 = *(v0 + 416);
      v223 = *(v0 + 400);
      v225 = *(v0 + 376);
      v227 = *(v0 + 368);
      v229 = *(v0 + 360);
      v231 = *(v0 + 352);
      v233 = *(v0 + 344);
      v235 = *(v0 + 336);
      v239 = *(v0 + 328);
      v243 = *(v0 + 320);
      v247 = *(v0 + 312);
      v251 = *(v0 + 304);
      v237 = *(v0 + 296);
      v241 = *(v0 + 288);
      v245 = *(v0 + 280);
      v249 = *(v0 + 272);
      v253 = *(v0 + 264);
      v255 = *(v0 + 256);
      v257 = *(v0 + 232);
      v260 = *(v0 + 224);
      v264 = *(v0 + 216);
      v268 = *(v0 + 208);
      v270 = *(v0 + 200);
      v271 = *(v0 + 192);
      *(*(v0 + 160) + *(*(v0 + 568) + 36)) = v168;
      sub_10001C2E0(v203, type metadata accessor for SpamDecisioningAsset.AssetURLs);

      v136 = *(v0 + 8);
      goto LABEL_35;
    }

    v169 = *(v0 + 424);
    v170 = *(v0 + 432);
    v171 = *(v0 + 264);
    sub_100011DFC(*(v0 + 416) + *(v0 + 760), v171, &qword_1000B6DE8, &qword_10008FA30);
    if ((*(v170 + 48))(v171, 1, v169) == 1)
    {
      v172 = *(v0 + 264);
      sub_10000BC10(*(v0 + 168), &qword_1000B6CB8, &unk_10008F9F0);
      sub_10000BC10(v172, &qword_1000B6DE8, &qword_10008FA30);
    }

    else
    {
      (*(*(v0 + 432) + 32))(*(v0 + 440), *(v0 + 264), *(v0 + 424));
      v173 = [objc_opt_self() defaultManager];
      URL.path(percentEncoded:)(1);
      v174 = String._bridgeToObjectiveC()();

      v175 = [v173 fileExistsAtPath:v174];

      if (v175)
      {
        v176 = *(v0 + 744);
        v177 = *(v0 + 440);
        v178 = *(v0 + 160);
        v179 = static os_log_type_t.debug.getter();
        _StringGuts.grow(_:)(45);

        v180 = URL.path(percentEncoded:)(1);
        String.append(_:)(v180);

        v181._countAndFlagsBits = 32032;
        v181._object = 0xE200000000000000;
        String.append(_:)(v181);
        sub_10005E11C(v179, 0xD000000000000029, 0x8000000100094C70, 0xD000000000000059, 0x80000001000949D0, 155);

        v182 = URL.path.getter();
        v184 = v183;
        v185 = type metadata accessor for RecordZonesAsset();
        v186 = *(v185 + 48);
        v187 = *(v185 + 52);
        swift_allocObject();
        v168 = sub_100072990(v182, v184);
        v188 = *(v0 + 672);
        v190 = *(v0 + 432);
        v189 = *(v0 + 440);
        v191 = *(v0 + 424);
        sub_10000BC10(*(v0 + 168), &qword_1000B6CB8, &unk_10008F9F0);
        v188(v189, v191);
        goto LABEL_47;
      }

      v192 = *(v0 + 672);
      v194 = *(v0 + 432);
      v193 = *(v0 + 440);
      v195 = *(v0 + 424);
      sub_10000BC10(*(v0 + 168), &qword_1000B6CB8, &unk_10008F9F0);
      v192(v193, v195);
    }

    v168 = 0;
    goto LABEL_47;
  }

  v17 = *(v0 + 424);
  v18 = *(v0 + 432);
  v19 = *(v0 + 312);
  sub_100011DFC(*(v0 + 416) + *(v0 + 752), v19, &qword_1000B6DE8, &qword_10008FA30);
  v20 = *(v18 + 48);
  if (v20(v19, 1, v17) == 1)
  {
    sub_10000BC10(*(v0 + 312), &qword_1000B6DE8, &qword_10008FA30);
    goto LABEL_10;
  }

  (*(*(v0 + 432) + 32))(*(v0 + 488), *(v0 + 312), *(v0 + 424));
  v21 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v22 = String._bridgeToObjectiveC()();

  v23 = [v21 fileExistsAtPath:v22];

  if (!v23)
  {
    v41 = *(v0 + 432) + 8;
    (*(v0 + 672))(*(v0 + 488), *(v0 + 424));
LABEL_10:
    type metadata accessor for SpamDecisioningManager();
    v42 = swift_getObjCClassFromMetadata();
    v43 = [objc_opt_self() bundleForClass:v42];
    v44 = [v43 resourceURL];

    if (v44)
    {
      v45 = *(v0 + 296);
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v46 = 0;
    }

    else
    {
      v46 = 1;
    }

    v47 = *(v0 + 600);
    v48 = *(v0 + 424);
    v50 = *(v0 + 296);
    v49 = *(v0 + 304);
    (*(v0 + 592))(v50, v46, 1, v48);
    sub_10001C148(v50, v49);
    if (v20(v49, 1, v48) == 1)
    {
      v51 = *(v0 + 744);
      v53 = *(v0 + 160);
      v52 = *(v0 + 168);
      sub_10000BC10(*(v0 + 304), &qword_1000B6DE8, &qword_10008FA30);
      v54 = static os_log_type_t.error.getter();
      sub_10005E11C(v54, 0xD000000000000033, 0x8000000100094B30, 0xD000000000000059, 0x80000001000949D0, 113);
      sub_10000B6B0();
      swift_allocError();
      *v55 = 0xD000000000000033;
      *(v55 + 8) = 0x8000000100094B30;
      *(v55 + 16) = 6;
      swift_willThrow();
      v16 = v52;
      goto LABEL_15;
    }

    v57 = *(v0 + 672);
    v261 = *(v0 + 744);
    v265 = v2;
    v59 = *(v0 + 472);
    v58 = *(v0 + 480);
    v60 = *(v0 + 424);
    v61 = *(v0 + 432);
    v62 = *(v0 + 304);
    v63 = *(v0 + 248);
    v64 = *(v0 + 256);
    v65 = *(v0 + 240);
    v258 = *(v0 + 160);
    *(v0 + 48) = 0xD000000000000022;
    *(v0 + 56) = 0x8000000100094B70;
    (*(v63 + 104))(v64, enum case for URL.DirectoryHint.inferFromPath(_:), v65);
    sub_10001C1B8();
    URL.appending<A>(path:directoryHint:)();
    (*(v63 + 8))(v64, v65);
    v57(v62, v60);
    (*(v61 + 32))(v58, v59, v60);
    LOBYTE(v59) = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(50);

    v66 = URL.path(percentEncoded:)(1);
    String.append(_:)(v66);

    v67._countAndFlagsBits = 32032;
    v67._object = 0xE200000000000000;
    String.append(_:)(v67);
    sub_10005E11C(v59, 0xD00000000000002ELL, 0x8000000100094BA0, 0xD000000000000059, 0x80000001000949D0, 117);

    v68 = URL.path.getter();
    v70 = v69;
    v71 = type metadata accessor for JavaScriptAsset();
    v72 = *(v71 + 48);
    v73 = *(v71 + 52);
    swift_allocObject();
    v74 = sub_10004FA38(v68, v70);
    v37 = *(v0 + 672);
    v38 = *(v0 + 480);
    v40 = *(v0 + 424);
    if (!v265)
    {
      v75 = v74;
      v37(*(v0 + 480), *(v0 + 424));
      v15 = v75;
      goto LABEL_19;
    }

    goto LABEL_8;
  }

  v24 = *(v0 + 744);
  v25 = *(v0 + 488);
  v26 = *(v0 + 160);
  v27 = static os_log_type_t.debug.getter();
  _StringGuts.grow(_:)(48);

  v28._countAndFlagsBits = URL.path.getter();
  String.append(_:)(v28);

  v29._countAndFlagsBits = 32032;
  v29._object = 0xE200000000000000;
  String.append(_:)(v29);
  sub_10005E11C(v27, 0xD00000000000002CLL, 0x8000000100094D90, 0xD000000000000059, 0x80000001000949D0, 109);

  v30 = URL.path.getter();
  v32 = v31;
  v33 = type metadata accessor for JavaScriptAsset();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v36 = sub_10004FA38(v30, v32);
  v37 = *(v0 + 672);
  v38 = *(v0 + 488);
  v40 = *(v0 + 424);
  v39 = *(v0 + 432);
  if (!v2)
  {
    v109 = v36;
    v37(*(v0 + 488), *(v0 + 424));
    v15 = v109;
    goto LABEL_19;
  }

LABEL_8:
  sub_10000BC10(*(v0 + 168), &qword_1000B6CB8, &unk_10008F9F0);
  v37(v38, v40);
LABEL_16:
  v56 = 0;
LABEL_32:
  v125 = *(v0 + 160);
  sub_10001C2E0(*(v0 + 416), type metadata accessor for SpamDecisioningAsset.AssetURLs);
  sub_10000BC10(v125, &qword_1000B6CB8, &unk_10008F9F0);
  (*(*(v0 + 184) + 8))(*(v0 + 160) + *(*(v0 + 568) + 20), *(v0 + 176));
  (*(*(v0 + 184) + 8))(*(v0 + 160) + *(*(v0 + 568) + 24), *(v0 + 176));
  if (v56)
  {
    v126 = *(*(v0 + 160) + *(*(v0 + 568) + 28));
  }

  v127 = *(v0 + 560);
  v128 = *(v0 + 552);
  v129 = *(v0 + 544);
  v130 = *(v0 + 536);
  v131 = *(v0 + 528);
  v132 = *(v0 + 520);
  v133 = *(v0 + 504);
  v134 = *(v0 + 512);
  v135 = *(v0 + 496);
  v204 = *(v0 + 488);
  v206 = *(v0 + 480);
  v208 = *(v0 + 472);
  v210 = *(v0 + 464);
  v212 = *(v0 + 456);
  v214 = *(v0 + 448);
  v216 = *(v0 + 440);
  v218 = *(v0 + 416);
  v220 = *(v0 + 400);
  v222 = *(v0 + 376);
  v224 = *(v0 + 368);
  v226 = *(v0 + 360);
  v228 = *(v0 + 352);
  v230 = *(v0 + 344);
  v232 = *(v0 + 336);
  v234 = *(v0 + 328);
  v236 = *(v0 + 320);
  v238 = *(v0 + 312);
  v240 = *(v0 + 304);
  v242 = *(v0 + 296);
  v244 = *(v0 + 288);
  v246 = *(v0 + 280);
  v248 = *(v0 + 272);
  v250 = *(v0 + 264);
  v252 = *(v0 + 256);
  v254 = *(v0 + 232);
  v256 = *(v0 + 224);
  v259 = *(v0 + 216);
  v262 = *(v0 + 208);
  v266 = *(v0 + 200);
  v269 = *(v0 + 192);
  (*(*(v0 + 584) + 8))(*(v0 + 160) + *(v0 + 744), *(v0 + 576));

  v136 = *(v0 + 8);
LABEL_35:

  return v136();
}

uint64_t sub_1000174C0()
{
  v2 = *(*v1 + 704);
  v5 = *v1;
  *(*v1 + 712) = v0;

  if (v0)
  {
    v3 = sub_10001B304;
  }

  else
  {
    v3 = sub_1000175D4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000175D4()
{
  v1 = *(v0 + 432) + 8;
  (*(v0 + 672))(*(v0 + 520), *(v0 + 424));
  v2 = *(v0 + 712);
  v3 = *(v0 + 184) + 32;
  (*(v0 + 680))(*(v0 + 160) + *(*(v0 + 568) + 20), *(v0 + 200), *(v0 + 176));
  v4 = sub_100054AB0();
  if (v5)
  {
    v6 = *(v0 + 744);
    v7 = *(v0 + 160);
    v272._countAndFlagsBits = v4;
    v272._object = v5;
    v8._countAndFlagsBits = 0xD000000000000010;
    v8._object = 0x8000000100094DC0;
    String.append(_:)(v8);
    v9 = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(62);
    v10._countAndFlagsBits = 0xD00000000000003ALL;
    v10._object = 0x8000000100094DE0;
    String.append(_:)(v10);
    String.append(_:)(v272);
    v11._countAndFlagsBits = 32032;
    v11._object = 0xE200000000000000;
    String.append(_:)(v11);
    sub_10005E11C(v9, 0, 0xE000000000000000, 0xD000000000000059, 0x80000001000949D0, 103);

    v12 = type metadata accessor for JavaScriptAsset();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_10004FA38(v272._countAndFlagsBits, v272._object);
    if (v2)
    {
      v16 = *(v0 + 168);
LABEL_15:
      sub_10000BC10(v16, &qword_1000B6CB8, &unk_10008F9F0);
      goto LABEL_16;
    }

LABEL_19:
    *(*(v0 + 160) + *(*(v0 + 568) + 28)) = v15;
    v76 = sub_100054AB0();
    if (v77)
    {
      v78 = *(v0 + 744);
      v79 = *(v0 + 160);
      v273._countAndFlagsBits = v76;
      v273._object = v77;
      v80._countAndFlagsBits = 0xD000000000000014;
      v80._object = 0x8000000100094D30;
      String.append(_:)(v80);
      v81 = static os_log_type_t.debug.getter();
      _StringGuts.grow(_:)(61);
      v82._countAndFlagsBits = 0xD000000000000039;
      v82._object = 0x8000000100094D50;
      String.append(_:)(v82);
      String.append(_:)(v273);
      v83._countAndFlagsBits = 32032;
      v83._object = 0xE200000000000000;
      String.append(_:)(v83);
      sub_10005E11C(v81, 0, 0xE000000000000000, 0xD000000000000059, 0x80000001000949D0, 126);

      v84 = type metadata accessor for ConfigurationsAsset();
      v85 = *(v84 + 48);
      v86 = *(v84 + 52);
      swift_allocObject();
      v87 = sub_10001C8A8(v273._countAndFlagsBits, v273._object);
      goto LABEL_39;
    }

    v88 = *(v0 + 424);
    v89 = *(v0 + 432);
    v90 = *(v0 + 288);
    sub_100011DFC(*(v0 + 416) + *(v0 + 756), v90, &qword_1000B6DE8, &qword_10008FA30);
    v91 = *(v89 + 48);
    if (v91(v90, 1, v88) == 1)
    {
      sub_10000BC10(*(v0 + 288), &qword_1000B6DE8, &qword_10008FA30);
    }

    else
    {
      (*(*(v0 + 432) + 32))(*(v0 + 464), *(v0 + 288), *(v0 + 424));
      v92 = [objc_opt_self() defaultManager];
      URL.path(percentEncoded:)(1);
      v93 = String._bridgeToObjectiveC()();

      v94 = [v92 fileExistsAtPath:v93];

      if (v94)
      {
        v95 = *(v0 + 744);
        v96 = *(v0 + 464);
        v97 = *(v0 + 160);
        v98 = static os_log_type_t.debug.getter();
        _StringGuts.grow(_:)(47);

        v99 = URL.path(percentEncoded:)(1);
        String.append(_:)(v99);

        v100._countAndFlagsBits = 32032;
        v100._object = 0xE200000000000000;
        String.append(_:)(v100);
        sub_10005E11C(v98, 0xD00000000000002BLL, 0x8000000100094D00, 0xD000000000000059, 0x80000001000949D0, 132);

        v101 = URL.path.getter();
        v103 = v102;
        v104 = type metadata accessor for ConfigurationsAsset();
        v105 = *(v104 + 48);
        v106 = *(v104 + 52);
        swift_allocObject();
        v107 = sub_10001C8A8(v101, v103);
        v108 = *(v0 + 432);
        v156 = v107;
        (*(v0 + 672))(*(v0 + 464), *(v0 + 424));
        v87 = v156;
        goto LABEL_39;
      }

      v110 = *(v0 + 432) + 8;
      (*(v0 + 672))(*(v0 + 464), *(v0 + 424));
    }

    type metadata accessor for SpamDecisioningManager();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v112 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v113 = [v112 resourceURL];

    if (v113)
    {
      v114 = *(v0 + 272);
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v115 = 0;
    }

    else
    {
      v115 = 1;
    }

    v116 = *(v0 + 600);
    v117 = *(v0 + 424);
    v119 = *(v0 + 272);
    v118 = *(v0 + 280);
    (*(v0 + 592))(v119, v115, 1, v117);
    sub_10001C148(v119, v118);
    if (v91(v118, 1, v117) == 1)
    {
      v120 = *(v0 + 744);
      v122 = *(v0 + 160);
      v121 = *(v0 + 168);
      sub_10000BC10(*(v0 + 280), &qword_1000B6DE8, &qword_10008FA30);
      v123 = static os_log_type_t.error.getter();
      sub_10005E11C(v123, 0xD000000000000032, 0x8000000100094BD0, 0xD000000000000059, 0x80000001000949D0, 136);
      sub_10000B6B0();
      swift_allocError();
      *v124 = 0xD000000000000032;
      *(v124 + 8) = 0x8000000100094BD0;
      *(v124 + 16) = 6;
      swift_willThrow();
      sub_10000BC10(v121, &qword_1000B6CB8, &unk_10008F9F0);
      v56 = 1;
      goto LABEL_32;
    }

    v138 = *(v0 + 672);
    v140 = *(v0 + 448);
    v139 = *(v0 + 456);
    v141 = *(v0 + 424);
    v142 = *(v0 + 432);
    v143 = *(v0 + 280);
    v144 = *(v0 + 248);
    v145 = *(v0 + 256);
    v146 = *(v0 + 240);
    v263 = *(v0 + 160);
    v267 = *(v0 + 744);
    *(v0 + 64) = 0xD000000000000026;
    *(v0 + 72) = 0x8000000100094C10;
    (*(v144 + 104))(v145, enum case for URL.DirectoryHint.inferFromPath(_:), v146);
    sub_10001C1B8();
    URL.appending<A>(path:directoryHint:)();
    (*(v144 + 8))(v145, v146);
    v138(v143, v141);
    (*(v142 + 32))(v139, v140, v141);
    LOBYTE(v140) = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(49);

    v147 = URL.path(percentEncoded:)(1);
    String.append(_:)(v147);

    v148._countAndFlagsBits = 32032;
    v148._object = 0xE200000000000000;
    String.append(_:)(v148);
    sub_10005E11C(v140, 0xD00000000000002DLL, 0x8000000100094C40, 0xD000000000000059, 0x80000001000949D0, 140);

    v149 = URL.path.getter();
    v151 = v150;
    v152 = type metadata accessor for ConfigurationsAsset();
    v153 = *(v152 + 48);
    v154 = *(v152 + 52);
    swift_allocObject();
    v155 = sub_10001C8A8(v149, v151);
    (*(v0 + 672))(*(v0 + 456), *(v0 + 424));
    v87 = v155;
LABEL_39:
    *(*(v0 + 160) + *(*(v0 + 568) + 32)) = v87;
    v157 = sub_100054AB0();
    if (v158)
    {
      v159 = *(v0 + 744);
      v160 = *(v0 + 160);
      v274._countAndFlagsBits = v157;
      v274._object = v158;
      v161._countAndFlagsBits = 0xD000000000000012;
      v161._object = 0x8000000100094CA0;
      String.append(_:)(v161);
      v162 = static os_log_type_t.debug.getter();
      _StringGuts.grow(_:)(59);
      v163._countAndFlagsBits = 0xD000000000000037;
      v163._object = 0x8000000100094CC0;
      String.append(_:)(v163);
      String.append(_:)(v274);
      v164._countAndFlagsBits = 32032;
      v164._object = 0xE200000000000000;
      String.append(_:)(v164);
      sub_10005E11C(v162, 0, 0xE000000000000000, 0xD000000000000059, 0x80000001000949D0, 149);

      v165 = type metadata accessor for RecordZonesAsset();
      v166 = *(v165 + 48);
      v167 = *(v165 + 52);
      swift_allocObject();
      v168 = sub_100072990(v274._countAndFlagsBits, v274._object);
      sub_10000BC10(*(v0 + 168), &qword_1000B6CB8, &unk_10008F9F0);
LABEL_47:
      v196 = *(v0 + 560);
      v197 = *(v0 + 552);
      v198 = *(v0 + 544);
      v199 = *(v0 + 536);
      v200 = *(v0 + 528);
      v201 = *(v0 + 520);
      v202 = *(v0 + 512);
      v205 = *(v0 + 504);
      v207 = *(v0 + 496);
      v209 = *(v0 + 488);
      v211 = *(v0 + 480);
      v213 = *(v0 + 472);
      v215 = *(v0 + 464);
      v217 = *(v0 + 456);
      v219 = *(v0 + 448);
      v221 = *(v0 + 440);
      v203 = *(v0 + 416);
      v223 = *(v0 + 400);
      v225 = *(v0 + 376);
      v227 = *(v0 + 368);
      v229 = *(v0 + 360);
      v231 = *(v0 + 352);
      v233 = *(v0 + 344);
      v235 = *(v0 + 336);
      v239 = *(v0 + 328);
      v243 = *(v0 + 320);
      v247 = *(v0 + 312);
      v251 = *(v0 + 304);
      v237 = *(v0 + 296);
      v241 = *(v0 + 288);
      v245 = *(v0 + 280);
      v249 = *(v0 + 272);
      v253 = *(v0 + 264);
      v255 = *(v0 + 256);
      v257 = *(v0 + 232);
      v260 = *(v0 + 224);
      v264 = *(v0 + 216);
      v268 = *(v0 + 208);
      v270 = *(v0 + 200);
      v271 = *(v0 + 192);
      *(*(v0 + 160) + *(*(v0 + 568) + 36)) = v168;
      sub_10001C2E0(v203, type metadata accessor for SpamDecisioningAsset.AssetURLs);

      v136 = *(v0 + 8);
      goto LABEL_35;
    }

    v169 = *(v0 + 424);
    v170 = *(v0 + 432);
    v171 = *(v0 + 264);
    sub_100011DFC(*(v0 + 416) + *(v0 + 760), v171, &qword_1000B6DE8, &qword_10008FA30);
    if ((*(v170 + 48))(v171, 1, v169) == 1)
    {
      v172 = *(v0 + 264);
      sub_10000BC10(*(v0 + 168), &qword_1000B6CB8, &unk_10008F9F0);
      sub_10000BC10(v172, &qword_1000B6DE8, &qword_10008FA30);
    }

    else
    {
      (*(*(v0 + 432) + 32))(*(v0 + 440), *(v0 + 264), *(v0 + 424));
      v173 = [objc_opt_self() defaultManager];
      URL.path(percentEncoded:)(1);
      v174 = String._bridgeToObjectiveC()();

      v175 = [v173 fileExistsAtPath:v174];

      if (v175)
      {
        v176 = *(v0 + 744);
        v177 = *(v0 + 440);
        v178 = *(v0 + 160);
        v179 = static os_log_type_t.debug.getter();
        _StringGuts.grow(_:)(45);

        v180 = URL.path(percentEncoded:)(1);
        String.append(_:)(v180);

        v181._countAndFlagsBits = 32032;
        v181._object = 0xE200000000000000;
        String.append(_:)(v181);
        sub_10005E11C(v179, 0xD000000000000029, 0x8000000100094C70, 0xD000000000000059, 0x80000001000949D0, 155);

        v182 = URL.path.getter();
        v184 = v183;
        v185 = type metadata accessor for RecordZonesAsset();
        v186 = *(v185 + 48);
        v187 = *(v185 + 52);
        swift_allocObject();
        v168 = sub_100072990(v182, v184);
        v188 = *(v0 + 672);
        v190 = *(v0 + 432);
        v189 = *(v0 + 440);
        v191 = *(v0 + 424);
        sub_10000BC10(*(v0 + 168), &qword_1000B6CB8, &unk_10008F9F0);
        v188(v189, v191);
        goto LABEL_47;
      }

      v192 = *(v0 + 672);
      v194 = *(v0 + 432);
      v193 = *(v0 + 440);
      v195 = *(v0 + 424);
      sub_10000BC10(*(v0 + 168), &qword_1000B6CB8, &unk_10008F9F0);
      v192(v193, v195);
    }

    v168 = 0;
    goto LABEL_47;
  }

  v17 = *(v0 + 424);
  v18 = *(v0 + 432);
  v19 = *(v0 + 312);
  sub_100011DFC(*(v0 + 416) + *(v0 + 752), v19, &qword_1000B6DE8, &qword_10008FA30);
  v20 = *(v18 + 48);
  if (v20(v19, 1, v17) == 1)
  {
    sub_10000BC10(*(v0 + 312), &qword_1000B6DE8, &qword_10008FA30);
    goto LABEL_10;
  }

  (*(*(v0 + 432) + 32))(*(v0 + 488), *(v0 + 312), *(v0 + 424));
  v21 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v22 = String._bridgeToObjectiveC()();

  v23 = [v21 fileExistsAtPath:v22];

  if (!v23)
  {
    v41 = *(v0 + 432) + 8;
    (*(v0 + 672))(*(v0 + 488), *(v0 + 424));
LABEL_10:
    type metadata accessor for SpamDecisioningManager();
    v42 = swift_getObjCClassFromMetadata();
    v43 = [objc_opt_self() bundleForClass:v42];
    v44 = [v43 resourceURL];

    if (v44)
    {
      v45 = *(v0 + 296);
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v46 = 0;
    }

    else
    {
      v46 = 1;
    }

    v47 = *(v0 + 600);
    v48 = *(v0 + 424);
    v50 = *(v0 + 296);
    v49 = *(v0 + 304);
    (*(v0 + 592))(v50, v46, 1, v48);
    sub_10001C148(v50, v49);
    if (v20(v49, 1, v48) == 1)
    {
      v51 = *(v0 + 744);
      v53 = *(v0 + 160);
      v52 = *(v0 + 168);
      sub_10000BC10(*(v0 + 304), &qword_1000B6DE8, &qword_10008FA30);
      v54 = static os_log_type_t.error.getter();
      sub_10005E11C(v54, 0xD000000000000033, 0x8000000100094B30, 0xD000000000000059, 0x80000001000949D0, 113);
      sub_10000B6B0();
      swift_allocError();
      *v55 = 0xD000000000000033;
      *(v55 + 8) = 0x8000000100094B30;
      *(v55 + 16) = 6;
      swift_willThrow();
      v16 = v52;
      goto LABEL_15;
    }

    v57 = *(v0 + 672);
    v261 = *(v0 + 744);
    v265 = v2;
    v59 = *(v0 + 472);
    v58 = *(v0 + 480);
    v60 = *(v0 + 424);
    v61 = *(v0 + 432);
    v62 = *(v0 + 304);
    v63 = *(v0 + 248);
    v64 = *(v0 + 256);
    v65 = *(v0 + 240);
    v258 = *(v0 + 160);
    *(v0 + 48) = 0xD000000000000022;
    *(v0 + 56) = 0x8000000100094B70;
    (*(v63 + 104))(v64, enum case for URL.DirectoryHint.inferFromPath(_:), v65);
    sub_10001C1B8();
    URL.appending<A>(path:directoryHint:)();
    (*(v63 + 8))(v64, v65);
    v57(v62, v60);
    (*(v61 + 32))(v58, v59, v60);
    LOBYTE(v59) = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(50);

    v66 = URL.path(percentEncoded:)(1);
    String.append(_:)(v66);

    v67._countAndFlagsBits = 32032;
    v67._object = 0xE200000000000000;
    String.append(_:)(v67);
    sub_10005E11C(v59, 0xD00000000000002ELL, 0x8000000100094BA0, 0xD000000000000059, 0x80000001000949D0, 117);

    v68 = URL.path.getter();
    v70 = v69;
    v71 = type metadata accessor for JavaScriptAsset();
    v72 = *(v71 + 48);
    v73 = *(v71 + 52);
    swift_allocObject();
    v74 = sub_10004FA38(v68, v70);
    v37 = *(v0 + 672);
    v38 = *(v0 + 480);
    v40 = *(v0 + 424);
    if (!v265)
    {
      v75 = v74;
      v37(*(v0 + 480), *(v0 + 424));
      v15 = v75;
      goto LABEL_19;
    }

    goto LABEL_8;
  }

  v24 = *(v0 + 744);
  v25 = *(v0 + 488);
  v26 = *(v0 + 160);
  v27 = static os_log_type_t.debug.getter();
  _StringGuts.grow(_:)(48);

  v28._countAndFlagsBits = URL.path.getter();
  String.append(_:)(v28);

  v29._countAndFlagsBits = 32032;
  v29._object = 0xE200000000000000;
  String.append(_:)(v29);
  sub_10005E11C(v27, 0xD00000000000002CLL, 0x8000000100094D90, 0xD000000000000059, 0x80000001000949D0, 109);

  v30 = URL.path.getter();
  v32 = v31;
  v33 = type metadata accessor for JavaScriptAsset();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v36 = sub_10004FA38(v30, v32);
  v37 = *(v0 + 672);
  v38 = *(v0 + 488);
  v40 = *(v0 + 424);
  v39 = *(v0 + 432);
  if (!v2)
  {
    v109 = v36;
    v37(*(v0 + 488), *(v0 + 424));
    v15 = v109;
    goto LABEL_19;
  }

LABEL_8:
  sub_10000BC10(*(v0 + 168), &qword_1000B6CB8, &unk_10008F9F0);
  v37(v38, v40);
LABEL_16:
  v56 = 0;
LABEL_32:
  v125 = *(v0 + 160);
  sub_10001C2E0(*(v0 + 416), type metadata accessor for SpamDecisioningAsset.AssetURLs);
  sub_10000BC10(v125, &qword_1000B6CB8, &unk_10008F9F0);
  (*(*(v0 + 184) + 8))(*(v0 + 160) + *(*(v0 + 568) + 20), *(v0 + 176));
  (*(*(v0 + 184) + 8))(*(v0 + 160) + *(*(v0 + 568) + 24), *(v0 + 176));
  if (v56)
  {
    v126 = *(*(v0 + 160) + *(*(v0 + 568) + 28));
  }

  v127 = *(v0 + 560);
  v128 = *(v0 + 552);
  v129 = *(v0 + 544);
  v130 = *(v0 + 536);
  v131 = *(v0 + 528);
  v132 = *(v0 + 520);
  v133 = *(v0 + 504);
  v134 = *(v0 + 512);
  v135 = *(v0 + 496);
  v204 = *(v0 + 488);
  v206 = *(v0 + 480);
  v208 = *(v0 + 472);
  v210 = *(v0 + 464);
  v212 = *(v0 + 456);
  v214 = *(v0 + 448);
  v216 = *(v0 + 440);
  v218 = *(v0 + 416);
  v220 = *(v0 + 400);
  v222 = *(v0 + 376);
  v224 = *(v0 + 368);
  v226 = *(v0 + 360);
  v228 = *(v0 + 352);
  v230 = *(v0 + 344);
  v232 = *(v0 + 336);
  v234 = *(v0 + 328);
  v236 = *(v0 + 320);
  v238 = *(v0 + 312);
  v240 = *(v0 + 304);
  v242 = *(v0 + 296);
  v244 = *(v0 + 288);
  v246 = *(v0 + 280);
  v248 = *(v0 + 272);
  v250 = *(v0 + 264);
  v252 = *(v0 + 256);
  v254 = *(v0 + 232);
  v256 = *(v0 + 224);
  v259 = *(v0 + 216);
  v262 = *(v0 + 208);
  v266 = *(v0 + 200);
  v269 = *(v0 + 192);
  (*(*(v0 + 584) + 8))(*(v0 + 160) + *(v0 + 744), *(v0 + 576));

  v136 = *(v0 + 8);
LABEL_35:

  return v136();
}

uint64_t sub_100018DC4()
{
  v2 = *(*v1 + 728);
  v5 = *v1;
  *(*v1 + 736) = v0;

  if (v0)
  {
    v3 = sub_10001B634;
  }

  else
  {
    v3 = sub_100018ED8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100018ED8()
{
  v1 = *(v0 + 720);
  (*(v0 + 672))(*(v0 + 504), *(v0 + 424));
  v2 = *(v0 + 736);
  v3 = *(v0 + 184) + 32;
  (*(v0 + 680))(*(v0 + 160) + *(*(v0 + 568) + 20), *(v0 + 192), *(v0 + 176));
  v4 = sub_100054AB0();
  if (v5)
  {
    v6 = *(v0 + 744);
    v7 = *(v0 + 160);
    v272._countAndFlagsBits = v4;
    v272._object = v5;
    v8._countAndFlagsBits = 0xD000000000000010;
    v8._object = 0x8000000100094DC0;
    String.append(_:)(v8);
    v9 = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(62);
    v10._countAndFlagsBits = 0xD00000000000003ALL;
    v10._object = 0x8000000100094DE0;
    String.append(_:)(v10);
    String.append(_:)(v272);
    v11._countAndFlagsBits = 32032;
    v11._object = 0xE200000000000000;
    String.append(_:)(v11);
    sub_10005E11C(v9, 0, 0xE000000000000000, 0xD000000000000059, 0x80000001000949D0, 103);

    v12 = type metadata accessor for JavaScriptAsset();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_10004FA38(v272._countAndFlagsBits, v272._object);
    if (v2)
    {
      v16 = *(v0 + 168);
LABEL_15:
      sub_10000BC10(v16, &qword_1000B6CB8, &unk_10008F9F0);
      goto LABEL_16;
    }

LABEL_19:
    *(*(v0 + 160) + *(*(v0 + 568) + 28)) = v15;
    v76 = sub_100054AB0();
    if (v77)
    {
      v78 = *(v0 + 744);
      v79 = *(v0 + 160);
      v273._countAndFlagsBits = v76;
      v273._object = v77;
      v80._countAndFlagsBits = 0xD000000000000014;
      v80._object = 0x8000000100094D30;
      String.append(_:)(v80);
      v81 = static os_log_type_t.debug.getter();
      _StringGuts.grow(_:)(61);
      v82._countAndFlagsBits = 0xD000000000000039;
      v82._object = 0x8000000100094D50;
      String.append(_:)(v82);
      String.append(_:)(v273);
      v83._countAndFlagsBits = 32032;
      v83._object = 0xE200000000000000;
      String.append(_:)(v83);
      sub_10005E11C(v81, 0, 0xE000000000000000, 0xD000000000000059, 0x80000001000949D0, 126);

      v84 = type metadata accessor for ConfigurationsAsset();
      v85 = *(v84 + 48);
      v86 = *(v84 + 52);
      swift_allocObject();
      v87 = sub_10001C8A8(v273._countAndFlagsBits, v273._object);
      goto LABEL_39;
    }

    v88 = *(v0 + 424);
    v89 = *(v0 + 432);
    v90 = *(v0 + 288);
    sub_100011DFC(*(v0 + 416) + *(v0 + 756), v90, &qword_1000B6DE8, &qword_10008FA30);
    v91 = *(v89 + 48);
    if (v91(v90, 1, v88) == 1)
    {
      sub_10000BC10(*(v0 + 288), &qword_1000B6DE8, &qword_10008FA30);
    }

    else
    {
      (*(*(v0 + 432) + 32))(*(v0 + 464), *(v0 + 288), *(v0 + 424));
      v92 = [objc_opt_self() defaultManager];
      URL.path(percentEncoded:)(1);
      v93 = String._bridgeToObjectiveC()();

      v94 = [v92 fileExistsAtPath:v93];

      if (v94)
      {
        v95 = *(v0 + 744);
        v96 = *(v0 + 464);
        v97 = *(v0 + 160);
        v98 = static os_log_type_t.debug.getter();
        _StringGuts.grow(_:)(47);

        v99 = URL.path(percentEncoded:)(1);
        String.append(_:)(v99);

        v100._countAndFlagsBits = 32032;
        v100._object = 0xE200000000000000;
        String.append(_:)(v100);
        sub_10005E11C(v98, 0xD00000000000002BLL, 0x8000000100094D00, 0xD000000000000059, 0x80000001000949D0, 132);

        v101 = URL.path.getter();
        v103 = v102;
        v104 = type metadata accessor for ConfigurationsAsset();
        v105 = *(v104 + 48);
        v106 = *(v104 + 52);
        swift_allocObject();
        v107 = sub_10001C8A8(v101, v103);
        v108 = *(v0 + 432);
        v156 = v107;
        (*(v0 + 672))(*(v0 + 464), *(v0 + 424));
        v87 = v156;
        goto LABEL_39;
      }

      v110 = *(v0 + 432) + 8;
      (*(v0 + 672))(*(v0 + 464), *(v0 + 424));
    }

    type metadata accessor for SpamDecisioningManager();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v112 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v113 = [v112 resourceURL];

    if (v113)
    {
      v114 = *(v0 + 272);
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v115 = 0;
    }

    else
    {
      v115 = 1;
    }

    v116 = *(v0 + 600);
    v117 = *(v0 + 424);
    v119 = *(v0 + 272);
    v118 = *(v0 + 280);
    (*(v0 + 592))(v119, v115, 1, v117);
    sub_10001C148(v119, v118);
    if (v91(v118, 1, v117) == 1)
    {
      v120 = *(v0 + 744);
      v122 = *(v0 + 160);
      v121 = *(v0 + 168);
      sub_10000BC10(*(v0 + 280), &qword_1000B6DE8, &qword_10008FA30);
      v123 = static os_log_type_t.error.getter();
      sub_10005E11C(v123, 0xD000000000000032, 0x8000000100094BD0, 0xD000000000000059, 0x80000001000949D0, 136);
      sub_10000B6B0();
      swift_allocError();
      *v124 = 0xD000000000000032;
      *(v124 + 8) = 0x8000000100094BD0;
      *(v124 + 16) = 6;
      swift_willThrow();
      sub_10000BC10(v121, &qword_1000B6CB8, &unk_10008F9F0);
      v56 = 1;
      goto LABEL_32;
    }

    v138 = *(v0 + 672);
    v140 = *(v0 + 448);
    v139 = *(v0 + 456);
    v141 = *(v0 + 424);
    v142 = *(v0 + 432);
    v143 = *(v0 + 280);
    v144 = *(v0 + 248);
    v145 = *(v0 + 256);
    v146 = *(v0 + 240);
    v263 = *(v0 + 160);
    v267 = *(v0 + 744);
    *(v0 + 64) = 0xD000000000000026;
    *(v0 + 72) = 0x8000000100094C10;
    (*(v144 + 104))(v145, enum case for URL.DirectoryHint.inferFromPath(_:), v146);
    sub_10001C1B8();
    URL.appending<A>(path:directoryHint:)();
    (*(v144 + 8))(v145, v146);
    v138(v143, v141);
    (*(v142 + 32))(v139, v140, v141);
    LOBYTE(v140) = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(49);

    v147 = URL.path(percentEncoded:)(1);
    String.append(_:)(v147);

    v148._countAndFlagsBits = 32032;
    v148._object = 0xE200000000000000;
    String.append(_:)(v148);
    sub_10005E11C(v140, 0xD00000000000002DLL, 0x8000000100094C40, 0xD000000000000059, 0x80000001000949D0, 140);

    v149 = URL.path.getter();
    v151 = v150;
    v152 = type metadata accessor for ConfigurationsAsset();
    v153 = *(v152 + 48);
    v154 = *(v152 + 52);
    swift_allocObject();
    v155 = sub_10001C8A8(v149, v151);
    (*(v0 + 672))(*(v0 + 456), *(v0 + 424));
    v87 = v155;
LABEL_39:
    *(*(v0 + 160) + *(*(v0 + 568) + 32)) = v87;
    v157 = sub_100054AB0();
    if (v158)
    {
      v159 = *(v0 + 744);
      v160 = *(v0 + 160);
      v274._countAndFlagsBits = v157;
      v274._object = v158;
      v161._countAndFlagsBits = 0xD000000000000012;
      v161._object = 0x8000000100094CA0;
      String.append(_:)(v161);
      v162 = static os_log_type_t.debug.getter();
      _StringGuts.grow(_:)(59);
      v163._countAndFlagsBits = 0xD000000000000037;
      v163._object = 0x8000000100094CC0;
      String.append(_:)(v163);
      String.append(_:)(v274);
      v164._countAndFlagsBits = 32032;
      v164._object = 0xE200000000000000;
      String.append(_:)(v164);
      sub_10005E11C(v162, 0, 0xE000000000000000, 0xD000000000000059, 0x80000001000949D0, 149);

      v165 = type metadata accessor for RecordZonesAsset();
      v166 = *(v165 + 48);
      v167 = *(v165 + 52);
      swift_allocObject();
      v168 = sub_100072990(v274._countAndFlagsBits, v274._object);
      sub_10000BC10(*(v0 + 168), &qword_1000B6CB8, &unk_10008F9F0);
LABEL_47:
      v196 = *(v0 + 560);
      v197 = *(v0 + 552);
      v198 = *(v0 + 544);
      v199 = *(v0 + 536);
      v200 = *(v0 + 528);
      v201 = *(v0 + 520);
      v202 = *(v0 + 512);
      v205 = *(v0 + 504);
      v207 = *(v0 + 496);
      v209 = *(v0 + 488);
      v211 = *(v0 + 480);
      v213 = *(v0 + 472);
      v215 = *(v0 + 464);
      v217 = *(v0 + 456);
      v219 = *(v0 + 448);
      v221 = *(v0 + 440);
      v203 = *(v0 + 416);
      v223 = *(v0 + 400);
      v225 = *(v0 + 376);
      v227 = *(v0 + 368);
      v229 = *(v0 + 360);
      v231 = *(v0 + 352);
      v233 = *(v0 + 344);
      v235 = *(v0 + 336);
      v239 = *(v0 + 328);
      v243 = *(v0 + 320);
      v247 = *(v0 + 312);
      v251 = *(v0 + 304);
      v237 = *(v0 + 296);
      v241 = *(v0 + 288);
      v245 = *(v0 + 280);
      v249 = *(v0 + 272);
      v253 = *(v0 + 264);
      v255 = *(v0 + 256);
      v257 = *(v0 + 232);
      v260 = *(v0 + 224);
      v264 = *(v0 + 216);
      v268 = *(v0 + 208);
      v270 = *(v0 + 200);
      v271 = *(v0 + 192);
      *(*(v0 + 160) + *(*(v0 + 568) + 36)) = v168;
      sub_10001C2E0(v203, type metadata accessor for SpamDecisioningAsset.AssetURLs);

      v136 = *(v0 + 8);
      goto LABEL_35;
    }

    v169 = *(v0 + 424);
    v170 = *(v0 + 432);
    v171 = *(v0 + 264);
    sub_100011DFC(*(v0 + 416) + *(v0 + 760), v171, &qword_1000B6DE8, &qword_10008FA30);
    if ((*(v170 + 48))(v171, 1, v169) == 1)
    {
      v172 = *(v0 + 264);
      sub_10000BC10(*(v0 + 168), &qword_1000B6CB8, &unk_10008F9F0);
      sub_10000BC10(v172, &qword_1000B6DE8, &qword_10008FA30);
    }

    else
    {
      (*(*(v0 + 432) + 32))(*(v0 + 440), *(v0 + 264), *(v0 + 424));
      v173 = [objc_opt_self() defaultManager];
      URL.path(percentEncoded:)(1);
      v174 = String._bridgeToObjectiveC()();

      v175 = [v173 fileExistsAtPath:v174];

      if (v175)
      {
        v176 = *(v0 + 744);
        v177 = *(v0 + 440);
        v178 = *(v0 + 160);
        v179 = static os_log_type_t.debug.getter();
        _StringGuts.grow(_:)(45);

        v180 = URL.path(percentEncoded:)(1);
        String.append(_:)(v180);

        v181._countAndFlagsBits = 32032;
        v181._object = 0xE200000000000000;
        String.append(_:)(v181);
        sub_10005E11C(v179, 0xD000000000000029, 0x8000000100094C70, 0xD000000000000059, 0x80000001000949D0, 155);

        v182 = URL.path.getter();
        v184 = v183;
        v185 = type metadata accessor for RecordZonesAsset();
        v186 = *(v185 + 48);
        v187 = *(v185 + 52);
        swift_allocObject();
        v168 = sub_100072990(v182, v184);
        v188 = *(v0 + 672);
        v190 = *(v0 + 432);
        v189 = *(v0 + 440);
        v191 = *(v0 + 424);
        sub_10000BC10(*(v0 + 168), &qword_1000B6CB8, &unk_10008F9F0);
        v188(v189, v191);
        goto LABEL_47;
      }

      v192 = *(v0 + 672);
      v194 = *(v0 + 432);
      v193 = *(v0 + 440);
      v195 = *(v0 + 424);
      sub_10000BC10(*(v0 + 168), &qword_1000B6CB8, &unk_10008F9F0);
      v192(v193, v195);
    }

    v168 = 0;
    goto LABEL_47;
  }

  v17 = *(v0 + 424);
  v18 = *(v0 + 432);
  v19 = *(v0 + 312);
  sub_100011DFC(*(v0 + 416) + *(v0 + 752), v19, &qword_1000B6DE8, &qword_10008FA30);
  v20 = *(v18 + 48);
  if (v20(v19, 1, v17) == 1)
  {
    sub_10000BC10(*(v0 + 312), &qword_1000B6DE8, &qword_10008FA30);
    goto LABEL_10;
  }

  (*(*(v0 + 432) + 32))(*(v0 + 488), *(v0 + 312), *(v0 + 424));
  v21 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v22 = String._bridgeToObjectiveC()();

  v23 = [v21 fileExistsAtPath:v22];

  if (!v23)
  {
    v41 = *(v0 + 432) + 8;
    (*(v0 + 672))(*(v0 + 488), *(v0 + 424));
LABEL_10:
    type metadata accessor for SpamDecisioningManager();
    v42 = swift_getObjCClassFromMetadata();
    v43 = [objc_opt_self() bundleForClass:v42];
    v44 = [v43 resourceURL];

    if (v44)
    {
      v45 = *(v0 + 296);
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v46 = 0;
    }

    else
    {
      v46 = 1;
    }

    v47 = *(v0 + 600);
    v48 = *(v0 + 424);
    v50 = *(v0 + 296);
    v49 = *(v0 + 304);
    (*(v0 + 592))(v50, v46, 1, v48);
    sub_10001C148(v50, v49);
    if (v20(v49, 1, v48) == 1)
    {
      v51 = *(v0 + 744);
      v53 = *(v0 + 160);
      v52 = *(v0 + 168);
      sub_10000BC10(*(v0 + 304), &qword_1000B6DE8, &qword_10008FA30);
      v54 = static os_log_type_t.error.getter();
      sub_10005E11C(v54, 0xD000000000000033, 0x8000000100094B30, 0xD000000000000059, 0x80000001000949D0, 113);
      sub_10000B6B0();
      swift_allocError();
      *v55 = 0xD000000000000033;
      *(v55 + 8) = 0x8000000100094B30;
      *(v55 + 16) = 6;
      swift_willThrow();
      v16 = v52;
      goto LABEL_15;
    }

    v57 = *(v0 + 672);
    v261 = *(v0 + 744);
    v265 = v2;
    v59 = *(v0 + 472);
    v58 = *(v0 + 480);
    v60 = *(v0 + 424);
    v61 = *(v0 + 432);
    v62 = *(v0 + 304);
    v63 = *(v0 + 248);
    v64 = *(v0 + 256);
    v65 = *(v0 + 240);
    v258 = *(v0 + 160);
    *(v0 + 48) = 0xD000000000000022;
    *(v0 + 56) = 0x8000000100094B70;
    (*(v63 + 104))(v64, enum case for URL.DirectoryHint.inferFromPath(_:), v65);
    sub_10001C1B8();
    URL.appending<A>(path:directoryHint:)();
    (*(v63 + 8))(v64, v65);
    v57(v62, v60);
    (*(v61 + 32))(v58, v59, v60);
    LOBYTE(v59) = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(50);

    v66 = URL.path(percentEncoded:)(1);
    String.append(_:)(v66);

    v67._countAndFlagsBits = 32032;
    v67._object = 0xE200000000000000;
    String.append(_:)(v67);
    sub_10005E11C(v59, 0xD00000000000002ELL, 0x8000000100094BA0, 0xD000000000000059, 0x80000001000949D0, 117);

    v68 = URL.path.getter();
    v70 = v69;
    v71 = type metadata accessor for JavaScriptAsset();
    v72 = *(v71 + 48);
    v73 = *(v71 + 52);
    swift_allocObject();
    v74 = sub_10004FA38(v68, v70);
    v37 = *(v0 + 672);
    v38 = *(v0 + 480);
    v40 = *(v0 + 424);
    if (!v265)
    {
      v75 = v74;
      v37(*(v0 + 480), *(v0 + 424));
      v15 = v75;
      goto LABEL_19;
    }

    goto LABEL_8;
  }

  v24 = *(v0 + 744);
  v25 = *(v0 + 488);
  v26 = *(v0 + 160);
  v27 = static os_log_type_t.debug.getter();
  _StringGuts.grow(_:)(48);

  v28._countAndFlagsBits = URL.path.getter();
  String.append(_:)(v28);

  v29._countAndFlagsBits = 32032;
  v29._object = 0xE200000000000000;
  String.append(_:)(v29);
  sub_10005E11C(v27, 0xD00000000000002CLL, 0x8000000100094D90, 0xD000000000000059, 0x80000001000949D0, 109);

  v30 = URL.path.getter();
  v32 = v31;
  v33 = type metadata accessor for JavaScriptAsset();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v36 = sub_10004FA38(v30, v32);
  v37 = *(v0 + 672);
  v38 = *(v0 + 488);
  v40 = *(v0 + 424);
  v39 = *(v0 + 432);
  if (!v2)
  {
    v109 = v36;
    v37(*(v0 + 488), *(v0 + 424));
    v15 = v109;
    goto LABEL_19;
  }

LABEL_8:
  sub_10000BC10(*(v0 + 168), &qword_1000B6CB8, &unk_10008F9F0);
  v37(v38, v40);
LABEL_16:
  v56 = 0;
LABEL_32:
  v125 = *(v0 + 160);
  sub_10001C2E0(*(v0 + 416), type metadata accessor for SpamDecisioningAsset.AssetURLs);
  sub_10000BC10(v125, &qword_1000B6CB8, &unk_10008F9F0);
  (*(*(v0 + 184) + 8))(*(v0 + 160) + *(*(v0 + 568) + 20), *(v0 + 176));
  (*(*(v0 + 184) + 8))(*(v0 + 160) + *(*(v0 + 568) + 24), *(v0 + 176));
  if (v56)
  {
    v126 = *(*(v0 + 160) + *(*(v0 + 568) + 28));
  }

  v127 = *(v0 + 560);
  v128 = *(v0 + 552);
  v129 = *(v0 + 544);
  v130 = *(v0 + 536);
  v131 = *(v0 + 528);
  v132 = *(v0 + 520);
  v133 = *(v0 + 504);
  v134 = *(v0 + 512);
  v135 = *(v0 + 496);
  v204 = *(v0 + 488);
  v206 = *(v0 + 480);
  v208 = *(v0 + 472);
  v210 = *(v0 + 464);
  v212 = *(v0 + 456);
  v214 = *(v0 + 448);
  v216 = *(v0 + 440);
  v218 = *(v0 + 416);
  v220 = *(v0 + 400);
  v222 = *(v0 + 376);
  v224 = *(v0 + 368);
  v226 = *(v0 + 360);
  v228 = *(v0 + 352);
  v230 = *(v0 + 344);
  v232 = *(v0 + 336);
  v234 = *(v0 + 328);
  v236 = *(v0 + 320);
  v238 = *(v0 + 312);
  v240 = *(v0 + 304);
  v242 = *(v0 + 296);
  v244 = *(v0 + 288);
  v246 = *(v0 + 280);
  v248 = *(v0 + 272);
  v250 = *(v0 + 264);
  v252 = *(v0 + 256);
  v254 = *(v0 + 232);
  v256 = *(v0 + 224);
  v259 = *(v0 + 216);
  v262 = *(v0 + 208);
  v266 = *(v0 + 200);
  v269 = *(v0 + 192);
  (*(*(v0 + 584) + 8))(*(v0 + 160) + *(v0 + 744), *(v0 + 576));

  v136 = *(v0 + 8);
LABEL_35:

  return v136();
}