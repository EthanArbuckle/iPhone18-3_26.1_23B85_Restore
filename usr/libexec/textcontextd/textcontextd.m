int main(int argc, const char **argv, const char **envp)
{
  if (qword_100010AE0 != -1)
  {
    swift_once();
  }

  qword_100010CC0 = qword_100010CD0;
  v3 = qword_100010AE8;
  v4 = qword_100010CD0;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = qword_100010CD8;
  qword_100010CC8 = qword_100010CD8;
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 mainRunLoop];
  [v8 run];

  return 0;
}

void type metadata accessor for CFBoolean()
{
  if (!qword_100010AF0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100010AF0);
    }
  }
}

id sub_10000178C()
{
  result = [objc_allocWithZone(type metadata accessor for ATRawAssortmentServer()) init];
  qword_100010CD0 = result;
  return result;
}

char *sub_1000017BC()
{
  v1 = v0;
  v19 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v7 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  v8 = OBJC_IVAR____TtC12textcontextd21ATRawAssortmentServer_serviceHandler;
  *&v0[v8] = [objc_allocWithZone(type metadata accessor for ATRawAssortmentServiceHandler()) init];
  v9 = OBJC_IVAR____TtC12textcontextd21ATRawAssortmentServer_interface;
  *&v0[v9] = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP9Archetype30ATRawAssortmentServiceProtocol_];
  sub_100001F90();
  static DispatchQoS.default.getter();
  v21 = &_swiftEmptyArrayStorage;
  sub_100001FDC();
  sub_100002034(&qword_100010B58, "*\v");
  sub_10000207C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v19);
  *&v0[OBJC_IVAR____TtC12textcontextd21ATRawAssortmentServer_dispatchQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  ATRawAssortmentServiceName.getter();
  v10 = objc_allocWithZone(NSXPCListener);
  v11 = String._bridgeToObjectiveC()();

  v12 = [v10 initWithMachServiceName:v11];

  *&v1[OBJC_IVAR____TtC12textcontextd21ATRawAssortmentServer_listener] = v12;
  v13 = type metadata accessor for ATRawAssortmentServer();
  v20.receiver = v1;
  v20.super_class = v13;
  v14 = objc_msgSendSuper2(&v20, "init");
  v15 = OBJC_IVAR____TtC12textcontextd21ATRawAssortmentServer_listener;
  v16 = *&v14[OBJC_IVAR____TtC12textcontextd21ATRawAssortmentServer_listener];
  v17 = v14;
  [v16 setDelegate:v17];
  [*&v14[v15] _setQueue:*&v17[OBJC_IVAR____TtC12textcontextd21ATRawAssortmentServer_dispatchQueue]];
  [*&v14[v15] resume];

  return v17;
}

id sub_100001B18()
{
  v1 = OBJC_IVAR____TtC12textcontextd21ATRawAssortmentServer_listener;
  [*&v0[OBJC_IVAR____TtC12textcontextd21ATRawAssortmentServer_listener] setDelegate:0];
  [*&v0[v1] invalidate];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ATRawAssortmentServer();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100001CF0(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &token - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 auditToken];
  v8 = SecTaskCreateWithAuditToken(0, &token);
  if (v8)
  {
    v9 = v8;
    v10 = String._bridgeToObjectiveC()();
    v11 = SecTaskCopyValueForEntitlement(v9, v10, 0);

    if (v11)
    {
      v12 = CFGetTypeID(v11);
      if (v12 == CFBooleanGetTypeID())
      {
        type metadata accessor for CFBoolean();
        swift_unknownObjectRetain();
        v13 = swift_dynamicCastUnknownClassUnconditional();
        Value = CFBooleanGetValue(v13);

        swift_unknownObjectRelease();
        if (Value)
        {
          [a1 setExportedInterface:*(v1 + OBJC_IVAR____TtC12textcontextd21ATRawAssortmentServer_interface)];
          [a1 setExportedObject:*(v1 + OBJC_IVAR____TtC12textcontextd21ATRawAssortmentServer_serviceHandler)];
          [a1 _setQueue:*(v1 + OBJC_IVAR____TtC12textcontextd21ATRawAssortmentServer_dispatchQueue)];
          [a1 resume];
          return 1;
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  Logger.init()();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "ATRawAssortmentServer is denying connection because client is missing entitlement", v18, 2u);
  }

  (*(v4 + 8))(v7, v3);
  return 0;
}

unint64_t sub_100001F90()
{
  result = qword_100010B48;
  if (!qword_100010B48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100010B48);
  }

  return result;
}

unint64_t sub_100001FDC()
{
  result = qword_100010B50;
  if (!qword_100010B50)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010B50);
  }

  return result;
}

uint64_t sub_100002034(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_10000207C()
{
  result = qword_100010B60;
  if (!qword_100010B60)
  {
    sub_1000020E0(&qword_100010B58, "*\v");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010B60);
  }

  return result;
}

uint64_t sub_1000020E0(uint64_t *a1, uint64_t *a2)
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

id ATRawAssortmentServiceHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_100002160(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_100002258(uint64_t a1, NSString a2, uint64_t a3)
{
  if (a2)
  {
    a2 = String._bridgeToObjectiveC()();
  }

  v4 = a2;
  (*(a3 + 16))(a3);
}

uint64_t sub_1000022B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v8 - 8);
  v9 = *(v29 + 64);
  __chkstk_darwin();
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v27 = *(v12 - 8);
  v28 = v12;
  v13 = *(v27 + 64);
  __chkstk_darwin();
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = a1;
  sub_100002034(&qword_100010C10, qword_100006B48);
  sub_1000031A4(&qword_100010C18, &qword_100010C10, qword_100006B48);
  v16 = BidirectionalCollection<>.joined(separator:)();
  v18 = v17;
  sub_100001F90();
  v19 = static OS_dispatch_queue.main.getter();
  v20 = swift_allocObject();
  v20[2] = a2;
  v21 = v25;
  v20[3] = v24;
  v20[4] = v16;
  v20[5] = v18;
  aBlock[4] = v21;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002160;
  aBlock[3] = v26;
  v22 = _Block_copy(aBlock);
  sub_1000030F8(a2);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100003108();
  sub_100002034(&qword_100010C00, &qword_100006B40);
  sub_1000031A4(&qword_100010C08, &qword_100010C00, &qword_100006B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v29 + 8))(v11, v8);
  return (*(v27 + 8))(v15, v28);
}

uint64_t sub_1000026A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v6 = result;

    v6(a3, a4);

    return sub_10000308C(v6);
  }

  return result;
}

id ATRawAssortmentServiceHandler.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ATRawAssortmentServiceHandler();
  return objc_msgSendSuper2(&v2, "init");
}

id ATRawAssortmentServiceHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ATRawAssortmentServiceHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _s12textcontextd29ATRawAssortmentServiceHandlerC19spotlightItemTitles_010completionE0ySi_ySSSgcSgtF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Retrieving item titles from spotlight", v13, 2u);
  }

  (*(v7 + 8))(v10, v6);
  v14 = [objc_allocWithZone(type metadata accessor for ArchetypeRawAssortment()) init];
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v16 = *((swift_isaMask & *v14) + 0x58);
  sub_1000030F8(a2);
  v16(a1, sub_10000322C, v15);
}

uint64_t _s12textcontextd29ATRawAssortmentServiceHandlerC24spotlightEmailAttributes_010completionE0ySi_ySSSgcSgtF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Retrieving email attributes from spotlight", v13, 2u);
  }

  (*(v7 + 8))(v10, v6);
  v14 = [objc_allocWithZone(type metadata accessor for ArchetypeRawAssortment()) init];
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v16 = *((swift_isaMask & *v14) + 0x60);
  sub_1000030F8(a2);
  v16(a1, sub_100003164, v15);
}

uint64_t _s12textcontextd29ATRawAssortmentServiceHandlerC4text10onScreenAXyySSSgcSg_tF_0(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  __chkstk_darwin();
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  __chkstk_darwin();
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init()();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Retrieving text on-screen using accessibility", v18, 2u);
  }

  (*(v12 + 8))(v15, v11);
  v19 = [objc_allocWithZone(type metadata accessor for ArchetypeRawAssortment()) init];
  v20 = (*((swift_isaMask & *v19) + 0x68))();
  v22 = v21;
  sub_100001F90();
  v23 = static OS_dispatch_queue.main.getter();
  v24 = swift_allocObject();
  v25 = v28;
  v24[2] = a1;
  v24[3] = v25;
  v24[4] = v20;
  v24[5] = v22;
  aBlock[4] = sub_1000032FC;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002160;
  aBlock[3] = &unk_10000C628;
  v26 = _Block_copy(aBlock);
  sub_1000030F8(a1);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100003108();
  sub_100002034(&qword_100010C00, &qword_100006B40);
  sub_1000031A4(&qword_100010C08, &qword_100010C00, &qword_100006B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v31 + 8))(v6, v3);
  return (*(v29 + 8))(v10, v30);
}

uint64_t sub_10000308C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000309C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000030E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000030F8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_100003108()
{
  result = qword_100010BF8;
  if (!qword_100010BF8)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010BF8);
  }

  return result;
}

uint64_t sub_1000031A4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000020E0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000031EC()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000326C()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

id sub_100003300()
{
  result = [objc_allocWithZone(type metadata accessor for ATPersonalizationServer()) init];
  qword_100010CD8 = result;
  return result;
}

char *sub_100003330()
{
  ATPersonalizationServiceName.getter();
  v1 = objc_allocWithZone(NSXPCListener);
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 initWithMachServiceName:v2];

  *&v0[OBJC_IVAR____TtC12textcontextd23ATPersonalizationServer_listener] = v3;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for ATPersonalizationServer();
  v4 = objc_msgSendSuper2(&v9, "init");
  v5 = OBJC_IVAR____TtC12textcontextd23ATPersonalizationServer_listener;
  v6 = *&v4[OBJC_IVAR____TtC12textcontextd23ATPersonalizationServer_listener];
  v7 = v4;
  [v6 setDelegate:v7];
  [*&v4[v5] resume];

  return v7;
}

uint64_t sub_100003618(char a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1000036CC;

  return sub_100004FDC(a1);
}

uint64_t sub_1000036CC(void *a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  (v4)[2](v4, a1);
  _Block_release(v4);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_100003998(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *aBlock, void *a6)
{
  v6[2] = a6;
  v6[3] = _Block_copy(aBlock);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v6[4] = v12;
  v14 = a6;
  v15 = swift_task_alloc();
  v6[5] = v15;
  *v15 = v6;
  v15[1] = sub_100003AA4;

  return sub_100005590(a1, a2, a3, v11, v13);
}

uint64_t sub_100003AA4(void *a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  (v5)[2](v5, a1);
  _Block_release(v5);

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_100003D94(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  v8 = a3;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_100003E7C;

  return (sub_100005B84)(v5, v7);
}

uint64_t sub_100003E7C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 32);
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

  v10 = *(v4 + 24);
  (v10)[2](v10, v9);

  _Block_release(v10);
  v11 = *(v8 + 8);

  return v11();
}

id sub_100004004()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ATPersonalizationServer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000406C()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000040B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000061E8;

  return sub_100003D94(v2, v3, v4);
}

uint64_t sub_100004168(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1000041B4(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1000061E8;

  return v7();
}

uint64_t sub_10000429C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000061E8;

  return sub_1000041B4(v2, v3, v5);
}

uint64_t sub_10000435C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100004444;

  return v8();
}

uint64_t sub_100004444()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000453C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000061E8;

  return sub_10000435C(a1, v4, v5, v7);
}

uint64_t sub_100004608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100002034(&unk_100010CB0, &qword_100006B78) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v24 - v10;
  sub_1000048C4(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100004934(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = String.utf8CString.getter() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_100004934(a3);

    return v22;
  }

LABEL_8:
  sub_100004934(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1000048C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002034(&unk_100010CB0, &qword_100006B78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004934(uint64_t a1)
{
  v2 = sub_100002034(&unk_100010CB0, &qword_100006B78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000499C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100004A94;

  return v7(a1);
}

uint64_t sub_100004A94()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100004B8C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100004BC4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000061E8;

  return sub_10000499C(a1, v5);
}

uint64_t sub_100004C7C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100004444;

  return sub_10000499C(a1, v5);
}

uint64_t sub_100004D34(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &token - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 auditToken];
  v8 = SecTaskCreateWithAuditToken(0, &token);
  if (v8)
  {
    v9 = v8;
    v10 = String._bridgeToObjectiveC()();
    v11 = SecTaskCopyValueForEntitlement(v9, v10, 0);

    if (v11)
    {
      v12 = CFGetTypeID(v11);
      if (v12 == CFBooleanGetTypeID())
      {
        type metadata accessor for CFBoolean();
        swift_unknownObjectRetain();
        v13 = swift_dynamicCastUnknownClassUnconditional();
        Value = CFBooleanGetValue(v13);

        swift_unknownObjectRelease();
        if (Value)
        {
          v15 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP9Archetype24ATPersonalizationService_];
          [a1 setExportedInterface:v15];

          [a1 setExportedObject:v1];
          [a1 resume];
          return 1;
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  Logger.init()();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "ATPersonalizationServer is denying connection because client is missing entitlement", v19, 2u);
  }

  (*(v4 + 8))(v7, v3);
  return 0;
}

uint64_t sub_100004FDC(char a1)
{
  *(v1 + 88) = a1;
  v2 = type metadata accessor for ATSpotlightDataRecord();
  *(v1 + 16) = v2;
  v3 = *(v2 - 8);
  *(v1 + 24) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 32) = swift_task_alloc();
  v5 = type metadata accessor for Date();
  *(v1 + 40) = v5;
  v6 = *(v5 - 8);
  *(v1 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v1 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_1000050F8, 0, 0);
}

uint64_t sub_1000050F8()
{
  v1 = *(v0 + 56);
  v2 = type metadata accessor for ATSpotlightCalendarRetriever();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = ATSpotlightCalendarRetriever.init()();
  *(v0 + 64) = v5;
  Date.init()();
  v6 = *(*v5 + 216);
  v12 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_100005250;
  v9 = *(v0 + 56);
  v10 = *(v0 + 88);

  return v12(v9, v10, 100);
}

uint64_t sub_100005250(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 80) = a1;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_1000053B0, 0, 0);
}

uint64_t sub_1000053B0()
{
  v1 = v0[10];
  v2 = *(v1 + 16);
  if (v2)
  {
    v4 = v0[2];
    v3 = v0[3];
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v3 + 72);
    do
    {
      v11 = v0[4];
      sub_100006110(v5, v11);
      v12 = (v11 + *(v4 + 84));
      if (v12[1])
      {
        v7 = *v12;
        v8 = v12[1];
      }

      v9 = v0[4];
      objc_allocWithZone(type metadata accessor for ATCalendarEvent());

      ATCalendarEvent.init(eventTitle:)();
      sub_100006174(v9);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v10 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v5 += v6;
      --v2;
    }

    while (v2);
  }

  v13 = v0[10];

  v15 = v0[7];
  v14 = v0[8];
  v16 = v0[4];
  v17 = objc_allocWithZone(type metadata accessor for ATArrayOfCalendarEvents());
  v18 = ATArrayOfCalendarEvents.init(calendarEvents:)();

  v19 = v0[1];

  return v19(v18);
}

uint64_t sub_100005590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return _swift_task_switch(sub_1000055B8, 0, 0);
}

uint64_t sub_1000055B8()
{
  v2 = v0[7];
  v1 = v0[8];
  type metadata accessor for ATBiomeDataRetriever();
  v0[9] = swift_initStackObject();
  v3 = v2 == 1735290739 && v1 == 0xE400000000000000;
  if (v3 || (v4 = v0[7], v5 = v0[8], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v6 = &off_10000C490;
  }

  else if (v0[7] == 0x74736163646F70 && v0[8] == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v6 = &off_10000C4B8;
  }

  else if (v0[7] == 0x6F6F626F69647561 && v0[8] == 0xE90000000000006BLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v6 = &off_10000C4E0;
  }

  else
  {
    v6 = &off_10000C508;
    if ((v0[7] != 0x54724F6569766F6DLL || v0[8] != 0xED0000776F685356) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v6 = &off_10000C530;
    }
  }

  v0[10] = v6;
  v7 = async function pointer to ATBiomeDataRetriever.getTopPlayedMedia(k:start:end:mediaTypesOfInterest:maxNumRecordsToFetch:)[1];
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_1000057A8;
  v9 = v0[5];
  v10 = v0[6];
  v11 = v0[4];

  return ATBiomeDataRetriever.getTopPlayedMedia(k:start:end:mediaTypesOfInterest:maxNumRecordsToFetch:)(v11, v9, v10, v6, 1000);
}

uint64_t sub_1000057A8(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_1000058C8, 0, 0);
}

uint64_t sub_1000058C8()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 16);
  if (v2)
  {
    result = specialized ContiguousArray.reserveCapacity(_:)();
    v4 = 0;
    v5 = (v1 + 72);
    v24 = v1;
    while (v4 < *(v1 + 16))
    {
      if (*(v5 - 4))
      {
        v11 = *(v5 - 5);
        v12 = *(v5 - 4);
      }

      v13 = *(v5 - 1);
      v14 = v5[3];
      if (*(v5 - 2))
      {
        v15 = *(v5 - 3);
        v16 = *(v5 - 2);
      }

      if (*v5)
      {
        v17 = *v5;
      }

      if (v5[4])
      {
        v18 = v5[4];
      }

      *(v5 + 56);
      ++v4;
      v6 = v5[5];
      v7 = v5[6];
      v8 = v5[8];
      v9 = objc_allocWithZone(type metadata accessor for ATPlayedMediaItem());

      ATPlayedMediaItem.init(title:artist:album:link:bundleID:mediaType:playTime:)();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v10 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v5 += 14;
      v1 = v24;
      if (v2 == v4)
      {
        v0 = v23;
        v19 = *(v23 + 96);

        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v20 = *(v0 + 96);

LABEL_16:
    objc_allocWithZone(type metadata accessor for ATArrayOfPlayedMediaItems());
    v21 = ATArrayOfPlayedMediaItems.init(playedMediaItems:)();
    v22 = *(v0 + 8);

    return v22(v21);
  }

  return result;
}

uint64_t sub_100005B84(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_100005BA4, 0, 0);
}

uint64_t sub_100005BA4()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = objc_allocWithZone(type metadata accessor for ATLocationRetriever());

  v4 = ATLocationRetriever.init(effectiveBundleIdentifier:)();
  v0[7] = v4;
  (*((swift_isaMask & *v4) + 0x80))();
  v5 = *((swift_isaMask & *v4) + 0x98);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_100005D2C;

  return v9();
}

uint64_t sub_100005D2C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a2;
  v5 = v3[8];
  v7 = *v2;
  v4[9] = a2;

  return _swift_task_switch(sub_100005E34, 0, 0);
}

uint64_t sub_100005E34()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xD00000000000018FLL;
  }

  if (v1)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0x8000000100007360;
  }

  v5 = *(v0 + 8);

  return v5(v3, v4);
}

uint64_t sub_100005EC0()
{
  _Block_release(*(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100005F08()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100004444;

  return sub_100003998(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_100005FDC()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000601C()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000061E8;

  return sub_100003618(v2, v4);
}

uint64_t sub_1000060D0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100006110(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ATSpotlightDataRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006174(uint64_t a1)
{
  v2 = type metadata accessor for ATSpotlightDataRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}