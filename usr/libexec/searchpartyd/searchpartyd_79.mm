uint64_t sub_100850B44(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  v4[7] = a1;
  v4[8] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100850E80, 0, 0);
  }

  else
  {
    v7 = v4[5];

    v8 = swift_task_alloc();
    v4[9] = v8;
    *v8 = v6;
    v8[1] = sub_100850CD0;

    return sub_1008EDF50(0);
  }
}

uint64_t sub_100850CD0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = sub_100850F18;
  }

  else
  {
    *(v4 + 88) = a1;
    v7 = sub_100850DF8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100850DF8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
  (*(v0 + 16))(v1, 0);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100850E80()
{
  v1 = v0[8];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  swift_errorRetain();
  v4(0, v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100850F18()
{
  v1 = v0[10];
  v2 = v0[7];
  v4 = v0[2];
  v3 = v0[3];

  swift_errorRetain();
  v4(0, v1);

  v5 = v0[1];

  return v5();
}

id sub_10085112C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SchedulerTrampoline();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100851188()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for SchedulerTrampoline()) init];
    v4 = *(v0 + 48);
    *(v0 + 48) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1008511F4()
{
  v1 = *v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v2 - 8);
  v3 = *(v16 + 64);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v15);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = PressuredExitTransactionManager.begin(_:)();
  v14 = v0[4];
  v11 = swift_allocObject();
  v11[2] = v0;
  v11[3] = v10;
  v11[4] = v1;
  aBlock[4] = sub_100851E10;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101636D18;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_100851E1C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v16 + 8))(v5, v2);
  (*(v6 + 8))(v9, v15);
}

uint64_t sub_100851514(uint64_t a1)
{
  v2 = type metadata accessor for MachServiceName();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for XPCServiceDescription();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MachServiceName.init(_:)();
  sub_100851188();
  if (qword_1016949F8 != -1)
  {
    swift_once();
  }

  v9 = qword_1016AB5B0;

  XPCServiceDescription.init(name:options:exportedObject:exportedInterface:shouldAccept:interruptionHandler:invalidationHandler:)();
  v10 = *(a1 + 40);
  XPCSessionManager.register(service:)();
  Transaction.end()();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1008516EC()
{
  v0 = objc_opt_self();
  v1 = &OBJC_PROTOCOL___SPSchedulerXPCProtocol;
  v2 = [v0 interfaceWithProtocol:v1];

  v3 = sub_100A47234();
  v4 = *(v3 + 52);
  v5 = (*(v3 + 48) + 7) & 0x1FFFFFFF8;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  *(v6 + 32) = sub_100008BB8(0, &unk_1016AB6F0, SPSchedulerInformation_ptr);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  qword_1016AB5B0 = v2;
  return result;
}

uint64_t sub_1008517CC(void *a1)
{
  static os_log_type_t.default.getter();
  if (qword_101695060 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10138BBE0;
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_100008C00();
  *(v3 + 32) = v5;
  *(v3 + 40) = v4;
  *(v3 + 96) = sub_100008BB8(0, &qword_10169BAD0, NSXPCConnection_ptr);
  *(v3 + 104) = sub_10026982C();
  *(v3 + 72) = a1;

  v6 = a1;
  os_log(_:dso:log:_:_:)();

  sub_100851DBC();
  return NSXPCConnection.hasEntitlement<A>(_:)() & 1;
}

uint64_t sub_100851908()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = OBJC_IVAR____TtC12searchpartyd16SchedulerService_transactionManager;
  v4 = type metadata accessor for PressuredExitTransactionManager();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SchedulerService()
{
  result = qword_1016AB610;
  if (!qword_1016AB610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100851A18()
{
  result = type metadata accessor for PressuredExitTransactionManager();
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

void *sub_100851AD8()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[2] = 0xD000000000000010;
  v0[3] = 0x80000001013BF530;
  v10 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v15[1] = ".searchpartyd.scheduler";
  v15[2] = v10;
  (*(v6 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
  static DispatchQoS.unspecified.getter();
  v15[3] = _swiftEmptyArrayStorage;
  sub_100851E1C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v0[4] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = type metadata accessor for XPCSessionManager();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v0[5] = XPCSessionManager.init(name:)();
  v0[6] = 0;
  PressuredExitTransactionManager.init()();
  return v0;
}

unint64_t sub_100851DBC()
{
  result = qword_1016AB6E0;
  if (!qword_1016AB6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AB6E0);
  }

  return result;
}

uint64_t sub_100851E10()
{
  v1 = v0[3];
  v2 = v0[4];
  return sub_100851514(v0[2]);
}

uint64_t sub_100851E1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100851E68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014650;

  return sub_1008508D4(a1, v4, v5, v7, v6);
}

unint64_t sub_100851F28()
{
  result = qword_1016AB700;
  if (!qword_1016AB700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AB700);
  }

  return result;
}

unint64_t sub_100851FA0()
{
  result = qword_1016AB708;
  if (!qword_1016AB708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AB708);
  }

  return result;
}

unint64_t sub_100851FF8()
{
  result = qword_1016AB710;
  if (!qword_1016AB710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AB710);
  }

  return result;
}

unint64_t sub_100852050()
{
  result = qword_1016AB718;
  if (!qword_1016AB718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AB718);
  }

  return result;
}

uint64_t sub_1008520C4()
{
  v1 = *(v0 + 136);

  v2 = sub_100A5DF44(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100A5DF44((v3 > 1), v4 + 1, 1, v2);
  }

  *(v0 + 144) = v2;
  v5 = *(v0 + 136);
  *(v0 + 40) = type metadata accessor for DeviceBeaconPayloadPublisher();
  *(v0 + 48) = &off_101636EB0;
  *(v0 + 16) = v5;
  v2[2] = v4 + 1;
  sub_10000A748((v0 + 16), &v2[5 * v4 + 4]);
  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  *v7 = v0;
  v7[1] = sub_1008521E4;

  return daemon.getter();
}

uint64_t sub_1008521E4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 152);
  v12 = *v1;
  v3[20] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[21] = v6;
  v7 = type metadata accessor for Daemon();
  v3[22] = v7;
  v8 = type metadata accessor for PencilPairingService(0);
  v3[23] = v8;
  v9 = sub_100045918(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v3[24] = v9;
  v10 = sub_100045918(&qword_10169A090, 255, type metadata accessor for PencilPairingService);
  *v6 = v12;
  v6[1] = sub_1008523DC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1008523DC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  *(*v2 + 200) = a1;

  v7 = v3[20];
  if (v1)
  {

    v4[26] = v4[18];
    v8 = async function pointer to daemon.getter[1];
    v9 = swift_task_alloc();
    v4[27] = v9;
    *v9 = v6;
    v9[1] = sub_100852694;

    return daemon.getter();
  }

  else
  {
    v10 = v4[17];

    return _swift_task_switch(sub_100852594, v10, 0);
  }
}

uint64_t sub_100852594()
{
  v1 = *(v0 + 144);
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_100A5DF44((v2 > 1), v3 + 1, 1, *(v0 + 144));
  }

  v4 = *(v0 + 200);
  *(v0 + 120) = *(v0 + 184);
  *(v0 + 128) = &off_101650AE0;
  *(v0 + 96) = v4;
  v1[2] = v3 + 1;
  sub_10000A748((v0 + 96), &v1[5 * v3 + 4]);
  *(v0 + 208) = v1;
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v0 + 216) = v6;
  *v6 = v0;
  v6[1] = sub_100852694;

  return daemon.getter();
}

uint64_t sub_100852694(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 216);
  v5 = *v1;
  v3[28] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[29] = v7;
  v8 = type metadata accessor for DelegatedBeaconPayloadPublisher();
  v3[30] = v8;
  v9 = sub_100045918(&unk_1016B10C0, 255, type metadata accessor for DelegatedBeaconPayloadPublisher);
  *v7 = v5;
  v7[1] = sub_100852850;
  v10 = v3[24];
  v11 = v3[22];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100852850(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 232);
  v6 = *v2;
  *(*v2 + 248) = a1;

  v7 = *(v3 + 224);
  if (v1)
  {

    v8 = *(v4 + 208);
    v9 = *(v6 + 8);

    return v9(v8);
  }

  else
  {
    v11 = *(v4 + 136);

    return _swift_task_switch(sub_1008529D4, v11, 0);
  }
}

uint64_t sub_1008529D4()
{
  v1 = *(v0 + 208);
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_100A5DF44((v2 > 1), v3 + 1, 1, *(v0 + 208));
  }

  v4 = *(v0 + 248);
  *(v0 + 80) = *(v0 + 240);
  *(v0 + 88) = &off_10160E6F0;
  *(v0 + 56) = v4;
  v1[2] = v3 + 1;
  sub_10000A748((v0 + 56), &v1[5 * v3 + 4]);
  v5 = *(v0 + 8);

  return v5(v1);
}

uint64_t sub_100852A9C@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = type metadata accessor for Date();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10000B3A8(v11, &unk_1016A0B10, &qword_10139BF40);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_100852C20()
{
  v1[2] = v0;
  v2 = type metadata accessor for ClientOrigin();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(type metadata accessor for RequestOrigin() - 8) + 64) + 15;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100852D0C, v0, 0);
}

uint64_t sub_100852D0C()
{
  v1 = v0[6];
  (*(v0[4] + 104))(v0[5], enum case for ClientOrigin.other(_:), v0[3]);
  RequestOrigin.init(_:)();
  v2 = type metadata accessor for Session();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v0[7] = Session.init(_:)();
  v5 = async function pointer to Session.isMyLocationEnabled(cached:)[1];
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_100852E00;

  return Session.isMyLocationEnabled(cached:)(1);
}

uint64_t sub_100852E00(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v10 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v5 = *(v3 + 16);
    v6 = sub_100853068;
  }

  else
  {
    v7 = *(v3 + 56);
    v8 = *(v3 + 16);

    v6 = sub_100852F2C;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100852F2C()
{
  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177CE28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 80);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Result of SML returning %{BOOL}d.", v5, 8u);
  }

  v6 = *(v0 + 80);
  v8 = *(v0 + 40);
  v7 = *(v0 + 48);

  v9 = *(v0 + 8);

  return v9(v6);
}

uint64_t sub_100853068()
{
  v1 = v0[7];

  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177CE28);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Result of SML unknown, returning false due to error %{public}@.", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v12 = v0[5];
  v11 = v0[6];

  v13 = v0[1];

  return v13(0);
}

void *sub_100853228(uint64_t a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  v1[14] = 0xD00000000000001CLL;
  v1[15] = 0x80000001013BF790;
  sub_1000BC4D4(&qword_1016B1270, &qword_101390A00);
  v1[17] = AsyncKeyedThrottle.__allocating_init(throttleInterval:)();
  v3 = type metadata accessor for DeviceIdentityUtility();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  v7 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v8 = type metadata accessor for Date();
  v9 = *(*(v8 - 8) + 56);
  v9(v6 + v7, 1, 1, v8);
  *(v6 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v6 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v6 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 6;
  v2[18] = v6;
  v10 = *(v3 + 48);
  v11 = *(v3 + 52);
  v12 = swift_allocObject();
  swift_defaultActor_initialize();
  v9(v12 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate, 1, 1, v8);
  *(v12 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v12 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v12 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 7;
  v2[19] = v12;
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v13 = qword_10177B2E8;
  v19 = &off_101632E88;
  v20 = &off_101613BE0;
  v18 = type metadata accessor for BeaconObservationStore();
  *&v17 = v13;
  type metadata accessor for MemberCircleRevokeManager();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_1000BB3F0(&v17, (v14 + 32));
  v2[20] = v14;
  type metadata accessor for MemberCircleRevokeAssistant();
  v2[21] = swift_allocObject();
  v2[16] = a1;
  *(v14 + 24) = &off_1016634D8;
  swift_unknownObjectWeakAssign();

  return v2;
}

uint64_t sub_100853494()
{
  v2 = *(*v1 + 16);
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(v0 == 0);
}

void sub_100853598()
{
  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177CE28);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Skipped publishing own device beacons due to throttle.", v3, 2u);
  }
}

uint64_t sub_100853678()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = *(v2 + 160);
  if (v0)
  {
    v6 = sub_1008557D4;
  }

  else
  {
    v6 = sub_1008537A4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1008537A4()
{
  v1 = v0[29];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Local disk fetch completed.", v4, 2u);
  }

  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[22];

  sub_100852A9C(v7);
  v8 = *(v6 + 48);
  if (v8(v7, 1, v5) == 1)
  {
    v9 = v0[22];
    v10 = v0[23];
    v11 = v0[27];
    static Date.distantPast.getter();
    if (v8(v9, 1, v10) != 1)
    {
      sub_10000B3A8(v0[22], &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    (*(v0[24] + 32))(v0[27], v0[22], v0[23]);
  }

  v12 = swift_task_alloc();
  v0[32] = v12;
  *v12 = v0;
  v12[1] = sub_100853950;
  v13 = v0[20];

  return sub_1008520A4();
}

uint64_t sub_100853950(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 256);
  v6 = *v2;
  *(v4 + 264) = a1;
  *(v4 + 272) = v1;

  v7 = *(v3 + 160);
  if (v1)
  {
    v8 = sub_100855888;
  }

  else
  {
    v8 = sub_100853A84;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100853A84()
{
  result = v0[33];
  v0[18] = _swiftEmptyArrayStorage;
  v0[19] = _swiftEmptyArrayStorage;
  v2 = *(result + 16);
  v0[35] = v2;
  if (v2)
  {
    v0[36] = 0;
    if (*(result + 16))
    {
      sub_10001F280(result + 32, (v0 + 8));
      v3 = v0[11];
      v4 = v0[12];
      sub_1000035D0(v0 + 8, v3);
      v5 = *(v4 + 8);
      v22 = (v5 + *v5);
      v6 = v5[1];
      v7 = swift_task_alloc();
      v0[37] = v7;
      *v7 = v0;
      v7[1] = sub_100853E00;
      v8 = v0[27];

      return v22(v8, v3, v4);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v9 = v0[29];

    v10 = v0[19];
    v0[40] = v10;

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = *(v10 + 16);

      _os_log_impl(&_mh_execute_header, v11, v12, "Got %ld payloads to publish for own devices.", v13, 0xCu);
    }

    else
    {
    }

    if (*(v10 + 16))
    {
      v14 = swift_task_alloc();
      v0[41] = v14;
      *v14 = v0;
      v14[1] = sub_100854410;
      v15 = v0[20];

      return sub_100856750(v10);
    }

    else
    {
      v16 = v0[29];

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "No observations to publish for owned devices.", v19, 2u);
      }

      v0[43] = 0;
      v20 = swift_task_alloc();
      v0[44] = v20;
      *v20 = v0;
      v20[1] = sub_100854688;
      v21 = v0[20];

      return sub_100852C20();
    }
  }

  return result;
}

uint64_t sub_100853E00(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 296);
  v13 = *v2;
  *(*v2 + 304) = v1;

  if (v1)
  {
    v6 = v4[33];
    v7 = v4[20];
    v8 = v4[18];

    v9 = v4[19];

    v10 = sub_100855954;
    v11 = v7;
  }

  else
  {
    v11 = v4[20];
    v4[39] = a1;
    v10 = sub_100853F4C;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_100853F4C()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 280);
  v3 = *(v0 + 224);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v6 = *(v0 + 184);
  v7 = *(v0 + 192);
  v8 = *(v0 + 288) + 1;

  sub_100397E8C(v9);
  sub_10001F280(v0 + 64, v0 + 104);
  (*(v7 + 16))(v4, v3, v6);
  v10 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_10000A748((v0 + 104), v11 + 16);
  *(v11 + 56) = v1;
  (*(v7 + 32))(v11 + v10, v4, v6);
  sub_1000BC4D4(&qword_1016AB890, &qword_1013BF950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  v13 = swift_allocObject();
  *(v13 + 16) = &unk_1013BF948;
  *(v13 + 24) = v11;
  *(inited + 32) = &unk_1013BF960;
  *(inited + 40) = v13;
  sub_10039A7F0(inited);
  result = sub_100007BAC((v0 + 64));
  if (v8 == v2)
  {
    v15 = *(v0 + 264);
    v16 = *(v0 + 232);

    v17 = *(v0 + 152);
    *(v0 + 320) = v17;

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = *(v17 + 16);

      _os_log_impl(&_mh_execute_header, v18, v19, "Got %ld payloads to publish for own devices.", v20, 0xCu);
    }

    else
    {
    }

    if (*(v17 + 16))
    {
      v29 = swift_task_alloc();
      *(v0 + 328) = v29;
      *v29 = v0;
      v29[1] = sub_100854410;
      v30 = *(v0 + 160);

      return sub_100856750(v17);
    }

    else
    {
      v31 = *(v0 + 232);

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "No observations to publish for owned devices.", v34, 2u);
      }

      *(v0 + 344) = 0;
      v35 = swift_task_alloc();
      *(v0 + 352) = v35;
      *v35 = v0;
      v35[1] = sub_100854688;
      v36 = *(v0 + 160);

      return sub_100852C20();
    }
  }

  else
  {
    v21 = *(v0 + 288) + 1;
    *(v0 + 288) = v21;
    v22 = *(v0 + 264);
    if (v21 >= *(v22 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_10001F280(v22 + 40 * v21 + 32, v0 + 64);
      v23 = *(v0 + 88);
      v24 = *(v0 + 96);
      sub_1000035D0((v0 + 64), v23);
      v25 = *(v24 + 8);
      v37 = (v25 + *v25);
      v26 = v25[1];
      v27 = swift_task_alloc();
      *(v0 + 296) = v27;
      *v27 = v0;
      v27[1] = sub_100853E00;
      v28 = *(v0 + 216);

      return v37(v28, v23, v24);
    }
  }

  return result;
}

uint64_t sub_100854410()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v9 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v4 = *(v2 + 320);
    v5 = *(v2 + 160);

    v6 = sub_100855A28;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 160);
    v6 = sub_100854538;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100854538()
{
  v1 = v0[40];
  v2 = v0[29];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[40];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    v8 = *(v6 + 16);

    *(v7 + 4) = v8;

    _os_log_impl(&_mh_execute_header, v3, v4, "Completed publish of %ld own device payloads.", v7, 0xCu);
  }

  else
  {
    v9 = v0[40];
    swift_bridgeObjectRelease_n();
  }

  v0[43] = 0;
  v10 = swift_task_alloc();
  v0[44] = v10;
  *v10 = v0;
  v10[1] = sub_100854688;
  v11 = v0[20];

  return sub_100852C20();
}

uint64_t sub_100854688(char a1)
{
  v2 = *(*v1 + 352);
  v3 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 480) = a1;

  return _swift_task_switch(sub_1008547A0, v3, 0);
}

uint64_t sub_1008547A0()
{
  if (*(v0 + 480))
  {
    if (*(v0 + 344))
    {
      v2 = *(v0 + 216);
      v1 = *(v0 + 224);
      v3 = *(v0 + 184);
      v4 = *(v0 + 192);
      v5 = *(v0 + 144);

      swift_willThrow();
      v6 = *(v4 + 8);
      v6(v2, v3);
      v6(v1, v3);
      v8 = *(v0 + 216);
      v7 = *(v0 + 224);
      v9 = *(v0 + 208);
      v11 = *(v0 + 168);
      v10 = *(v0 + 176);

      v12 = *(v0 + 8);
LABEL_4:

      return v12();
    }

    v17 = *(v0 + 144);
    *(v0 + 440) = v17;
    v18 = v17[2];
    *(v0 + 448) = v18;
    if (!v18)
    {

      v22 = *(v0 + 224);
      v23 = *(v0 + 208);
      v24 = *(v0 + 184);
      v26 = *(v0 + 168);
      v25 = *(v0 + 176);
      v27 = *(*(v0 + 192) + 8);
      v27(*(v0 + 216), v24);
      v27(v22, v24);

      v12 = *(v0 + 8);
      goto LABEL_4;
    }

    *(v0 + 456) = 0;
    v19 = v17[4];
    *(v0 + 464) = v17[5];

    v28 = (v19 + *v19);
    v20 = v19[1];
    v21 = swift_task_alloc();
    *(v0 + 472) = v21;
    *v21 = v0;
    v21[1] = sub_1008554C0;

    return v28();
  }

  else
  {
    v14 = swift_task_alloc();
    *(v0 + 360) = v14;
    *v14 = v0;
    v14[1] = sub_100854A8C;
    v15 = *(v0 + 216);
    v16 = *(v0 + 160);

    return sub_10085C9A8(v15);
  }
}

uint64_t sub_100854A8C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 360);
  v6 = *v2;
  *(v4 + 368) = a1;
  *(v4 + 376) = v1;

  v7 = *(v3 + 160);
  if (v1)
  {
    v8 = sub_100855C90;
  }

  else
  {
    v8 = sub_100854BC0;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100854BC0()
{
  v1 = v0[46];
  v2 = v0[29];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[46];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "Got %ld anonymous shared device payloads to publish.", v7, 0xCu);
  }

  else
  {
    v8 = v0[46];
  }

  v9 = async function pointer to daemon.getter[1];
  v10 = swift_task_alloc();
  v0[48] = v10;
  *v10 = v0;
  v10[1] = sub_100854CF8;

  return daemon.getter();
}

uint64_t sub_100854CF8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 384);
  v12 = *v1;
  *(v3 + 392) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 400) = v6;
  v7 = type metadata accessor for Daemon();
  MyNetworkPublisherService = type metadata accessor for FindMyNetworkPublisherService();
  v9 = sub_100045918(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100045918(&unk_10169BA60, 255, type metadata accessor for FindMyNetworkPublisherService);
  *v6 = v12;
  v6[1] = sub_100854EDC;

  return ActorServiceDaemon.getService<A>()(v7, MyNetworkPublisherService, v9, v10);
}

uint64_t sub_100854EDC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 400);
  v6 = *v2;
  v4[51] = a1;
  v4[52] = v1;

  if (v1)
  {
    v7 = v4[20];

    return _swift_task_switch(sub_100855E60, v7, 0);
  }

  else
  {
    v8 = v4[49];

    v9 = swift_task_alloc();
    v4[53] = v9;
    *v9 = v6;
    v9[1] = sub_10085506C;
    v10 = v4[46];

    return sub_1008EFF7C(v10);
  }
}

uint64_t sub_10085506C(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 424);
  v6 = *v2;
  *(*v2 + 432) = v1;

  if (v1)
  {
    v7 = *(v4 + 368);
    v8 = *(v4 + 160);

    v9 = sub_100856044;
  }

  else
  {
    v8 = *(v4 + 160);

    v9 = sub_1008551A4;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1008551A4()
{
  v1 = v0[46];
  v2 = v0[29];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[51];
  v7 = v0[46];
  if (v5)
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    v9 = *(v7 + 16);

    *(v8 + 4) = v9;

    _os_log_impl(&_mh_execute_header, v3, v4, "Published %ld anonymous shared device payloads.", v8, 0xCu);
  }

  else
  {
    v10 = v0[46];
    swift_bridgeObjectRelease_n();
  }

  if (v0[43])
  {
    v12 = v0[27];
    v11 = v0[28];
    v13 = v0[23];
    v14 = v0[24];
    v15 = v0[18];

    swift_willThrow();
    v16 = *(v14 + 8);
    v16(v12, v13);
    v16(v11, v13);
    v18 = v0[27];
    v17 = v0[28];
    v19 = v0[26];
    v21 = v0[21];
    v20 = v0[22];

    v22 = v0[1];
LABEL_6:

    return v22();
  }

  v24 = v0[18];
  v0[55] = v24;
  v25 = v24[2];
  v0[56] = v25;
  if (!v25)
  {

    v29 = v0[28];
    v30 = v0[26];
    v31 = v0[23];
    v33 = v0[21];
    v32 = v0[22];
    v34 = *(v0[24] + 8);
    v34(v0[27], v31);
    v34(v29, v31);

    v22 = v0[1];
    goto LABEL_6;
  }

  v0[57] = 0;
  v26 = v24[4];
  v0[58] = v24[5];

  v35 = (v26 + *v26);
  v27 = v26[1];
  v28 = swift_task_alloc();
  v0[59] = v28;
  *v28 = v0;
  v28[1] = sub_1008554C0;

  return v35();
}

uint64_t sub_1008554C0()
{
  v1 = *(*v0 + 472);
  v2 = *(*v0 + 464);
  v3 = *(*v0 + 160);
  v5 = *v0;

  return _swift_task_switch(sub_1008555EC, v3, 0);
}

uint64_t sub_1008555EC()
{
  v1 = v0[57] + 1;
  if (v1 == v0[56])
  {
    v2 = v0[55];

    v3 = v0[28];
    v4 = v0[26];
    v5 = v0[23];
    v7 = v0[21];
    v6 = v0[22];
    v8 = *(v0[24] + 8);
    v8(v0[27], v5);
    v8(v3, v5);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v0[57] = v1;
    v11 = v0[55] + 16 * v1;
    v12 = *(v11 + 32);
    v0[58] = *(v11 + 40);

    v15 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    v0[59] = v14;
    *v14 = v0;
    v14[1] = sub_1008554C0;

    return v15();
  }
}

uint64_t sub_1008557D4()
{
  (*(v0[24] + 8))(v0[28], v0[23]);
  v1 = v0[31];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];
  v6 = v0[21];
  v5 = v0[22];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100855888()
{
  v1 = v0[28];
  v2 = v0[23];
  v3 = *(v0[24] + 8);
  v3(v0[27], v2);
  v3(v1, v2);
  v4 = v0[34];
  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[26];
  v9 = v0[21];
  v8 = v0[22];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100855954()
{
  v1 = v0[28];
  v2 = v0[23];
  v3 = *(v0[24] + 8);
  v3(v0[27], v2);
  v3(v1, v2);
  sub_100007BAC(v0 + 8);
  v4 = v0[38];
  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[26];
  v9 = v0[21];
  v8 = v0[22];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100855A28()
{
  v1 = v0[42];
  v2 = v0[29];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[42];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error publishing owned devices. Error: %{public}@.", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  v9 = v0[42];
  v11 = v0[20];
  v10 = v0[21];

  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v14 = sub_100045918(&qword_1016AB860, v13, type metadata accessor for DeviceBeaconPayloadPublisher);
  v15 = swift_allocObject();
  v15[2] = v11;
  v15[3] = v14;
  v15[4] = v11;
  v15[5] = v9;

  swift_errorRetain();

  sub_10025EDD4(0, 0, v10, &unk_1013BF970, v15);

  v0[43] = v9;
  v16 = swift_task_alloc();
  v0[44] = v16;
  *v16 = v0;
  v16[1] = sub_100854688;
  v17 = v0[20];

  return sub_100852C20();
}

uint64_t sub_100855C90()
{
  v1 = v0[47];
  v2 = v0[29];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[43];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error publishing owned devices anonymously. Error: %{public}@.", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  v11 = v0[27];
  v10 = v0[28];
  v12 = v0[23];
  v13 = v0[24];
  v14 = v0[18];

  swift_willThrow();
  v15 = *(v13 + 8);
  v15(v11, v12);
  v15(v10, v12);
  v17 = v0[27];
  v16 = v0[28];
  v18 = v0[26];
  v20 = v0[21];
  v19 = v0[22];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100855E60()
{
  v1 = v0[49];
  v2 = v0[46];

  v3 = v0[52];
  v4 = v0[29];
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[43];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error publishing owned devices anonymously. Error: %{public}@.", v9, 0xCu);
    sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);
  }

  v13 = v0[27];
  v12 = v0[28];
  v14 = v0[23];
  v15 = v0[24];
  v16 = v0[18];

  swift_willThrow();
  v17 = *(v15 + 8);
  v17(v13, v14);
  v17(v12, v14);
  v19 = v0[27];
  v18 = v0[28];
  v20 = v0[26];
  v22 = v0[21];
  v21 = v0[22];

  v23 = v0[1];

  return v23();
}

uint64_t sub_100856044()
{
  v1 = v0[51];

  v2 = v0[54];
  v3 = v0[29];
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[43];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error publishing owned devices anonymously. Error: %{public}@.", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
  }

  v12 = v0[27];
  v11 = v0[28];
  v13 = v0[23];
  v14 = v0[24];
  v15 = v0[18];

  swift_willThrow();
  v16 = *(v14 + 8);
  v16(v12, v13);
  v16(v11, v13);
  v18 = v0[27];
  v17 = v0[28];
  v19 = v0[26];
  v21 = v0[21];
  v20 = v0[22];

  v22 = v0[1];

  return v22();
}

uint64_t sub_10085621C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return _swift_task_switch(sub_1008562BC, 0, 0);
}

uint64_t sub_1008562BC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v3[3];
  v5 = v3[4];
  sub_1000035D0(v3, v4);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v1, v2, v6);
  (*(v7 + 56))(v1, 0, 1, v6);
  v8 = *(v5 + 16);
  v14 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[6] = v10;
  *v10 = v0;
  v10[1] = sub_100856474;
  v11 = v0[5];
  v12 = v0[3];

  return v14(v12, v11, v4, v5);
}

uint64_t sub_100856474()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 48);
  v5 = *v1;

  v6 = *(v2 + 40);
  if (v0)
  {

    sub_10000B3A8(v6, &unk_101696900, &unk_10138B1E0);

    return _swift_task_switch(sub_100856608, 0, 0);
  }

  else
  {
    sub_10000B3A8(v6, &unk_101696900, &unk_10138B1E0);
    v7 = *(v3 + 40);

    v8 = *(v5 + 8);

    return v8();
  }
}

uint64_t sub_100856608()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100856668(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return v6();
}

uint64_t sub_100856750(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v3 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v2[34] = v3;
  v4 = *(v3 - 8);
  v2[35] = v4;
  v5 = *(v4 + 64) + 15;
  v2[36] = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&qword_1016985F0, &unk_10139D780) - 8) + 64) + 15;
  v2[37] = swift_task_alloc();
  v7 = type metadata accessor for OwnedDeviceSubmitEndpoint();
  v2[38] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();

  return _swift_task_switch(sub_100856884, v1, 0);
}

uint64_t sub_100856884()
{
  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 256);
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177CE28);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 256);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "Publishing location for %ld devices.", v7, 0xCu);
  }

  else
  {
    v8 = *(v0 + 256);
  }

  v9 = [objc_opt_self() currentDevice];
  if (!v9 || (v10 = v9, v11 = [v9 uniqueDeviceIdentifier], v10, !v11))
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Unable to get device identifier for publishing ownedDevice payloads", v25, 2u);
    }

    sub_10116BC54(0x6548656369766564, 0xEF74616562747261, 0xD00000000000001ALL, 0x8000000101361860);
    type metadata accessor for DeviceBeaconPayloadPublisher.PublishError();
    sub_100045918(&qword_1016AB878, 255, type metadata accessor for DeviceBeaconPayloadPublisher.PublishError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v27 = *(v0 + 312);
    v26 = *(v0 + 320);
    v29 = *(v0 + 288);
    v28 = *(v0 + 296);

    v30 = *(v0 + 8);

    return v30();
  }

  v12 = *(v0 + 256);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = *(v12 + 16);
  if (!v16)
  {
LABEL_43:
    v37 = 0x6548656369766564;
    v38 = (*(v0 + 264) + 144);
    v39 = 0xEF74616562747261;
    goto LABEL_44;
  }

  v17 = *(v0 + 256) + 32;
  v18 = *(v12 + 16);
  while (1)
  {
    sub_10001F280(v17, v0 + 64);
    v20 = *(v0 + 88);
    v21 = *(v0 + 96);
    sub_1000035D0((v0 + 64), v20);
    v22 = (*(v21 + 80))(v20, v21);
    if (v22 <= 2)
    {
      goto LABEL_10;
    }

    if (v22 <= 4)
    {
      break;
    }

    if (v22 != 5)
    {
      sub_100007BAC((v0 + 64));
      goto LABEL_11;
    }

LABEL_10:
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    sub_100007BAC((v0 + 64));
    if (v19)
    {
      goto LABEL_26;
    }

LABEL_11:
    v17 += 40;
    if (!--v18)
    {
      goto LABEL_27;
    }
  }

  if (v22 == 3)
  {
    goto LABEL_10;
  }

  sub_100007BAC((v0 + 64));
LABEL_26:
  LOBYTE(v18) = 1;
LABEL_27:
  v32 = *(v0 + 256) + 32;
  while (2)
  {
    sub_10001F280(v32, v0 + 104);
    v34 = *(v0 + 128);
    v35 = *(v0 + 136);
    sub_1000035D0((v0 + 104), v34);
    v36 = (*(v35 + 80))(v34, v35);
    if (v36 <= 2)
    {
LABEL_28:
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_100007BAC((v0 + 104));
      if ((v33 & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_29;
    }

    if (v36 <= 4)
    {
      if (v36 == 3)
      {
        goto LABEL_28;
      }

      sub_100007BAC((v0 + 104));
LABEL_29:
      v32 += 40;
      if (!--v16)
      {
        if ((v18 & 1) == 0)
        {
          goto LABEL_43;
        }

        v37 = 0xD000000000000012;
        v38 = (*(v0 + 264) + 152);
        v39 = 0x80000001013569E0;
        goto LABEL_44;
      }

      continue;
    }

    break;
  }

  if (v36 == 5)
  {
    goto LABEL_28;
  }

  sub_100007BAC((v0 + 104));
LABEL_41:
  if ((v18 & 1) == 0)
  {
    goto LABEL_43;
  }

  v38 = (*(v0 + 264) + 152);
  v39 = 0x80000001013618D0;
  v37 = 0xD000000000000024;
LABEL_44:
  v40 = *(v0 + 256);
  v41 = *v38;
  *(v0 + 328) = *v38;
  strcpy((v0 + 16), "searchpartyd");
  *(v0 + 29) = 0;
  *(v0 + 30) = -5120;
  *(v0 + 32) = v37;
  *(v0 + 40) = v39;
  *(v0 + 48) = v13;
  *(v0 + 56) = v15;
  swift_retain_n();

  v42 = swift_task_alloc();
  *(v0 + 336) = v42;
  *v42 = v0;
  v42[1] = sub_100856F78;
  v43 = *(v0 + 256);

  return sub_100D50ADC(v0 + 16, v43, v41);
}

uint64_t sub_100856F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 336);
  v6 = *(*v3 + 264);
  v8 = *v3;
  v4[43] = a1;
  v4[44] = a2;
  v4[45] = a3;

  return _swift_task_switch(sub_100857094, v6, 0);
}

uint64_t sub_100857094()
{
  v1 = v0[43];
  if (v1)
  {
    v3 = v0[44];
    v2 = v0[45];
    v5 = v0[39];
    v4 = v0[40];
    v6 = v0[37];
    v7 = v0[38];
    v8 = enum case for FMNAccountType.searchParty(_:);
    v9 = type metadata accessor for FMNAccountType();
    (*(*(v9 - 8) + 104))(v4, v8, v9);
    sub_100394BDC(v4 + *(v7 + 20));
    v10 = type metadata accessor for SearchPartyURLSessionFactory(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = type metadata accessor for FMNMockingPreferences();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    v14 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
    v15 = type metadata accessor for ServerInteractionController(0);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    v18 = swift_allocObject();
    sub_10086478C(v4, v5, type metadata accessor for OwnedDeviceSubmitEndpoint);
    v0[46] = sub_10061F4AC(v5, v14, v18);
    sub_1008647F4(v4, type metadata accessor for OwnedDeviceSubmitEndpoint);
    v0[21] = &type metadata for OwnSubmitRequest;
    v0[22] = sub_100864318();
    v0[18] = v1;
    v0[19] = v3;
    v0[20] = v2;

    sub_100017D5C(v3, v2);
    v19 = swift_task_alloc();
    v0[47] = v19;
    *v19 = v0;
    v19[1] = sub_1008573E8;
    v20 = v0[36];

    return sub_1004E682C(v20, (v0 + 18));
  }

  else
  {
    v22 = v0[41];
    sub_10116BC54(0x6548656369766564, 0xEF74616562747261, 0xD000000000000022, 0x8000000101361880);
    type metadata accessor for DeviceBeaconPayloadPublisher.PublishError();
    sub_100045918(&qword_1016AB878, 255, type metadata accessor for DeviceBeaconPayloadPublisher.PublishError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v24 = v0[39];
    v23 = v0[40];
    v26 = v0[36];
    v25 = v0[37];

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_1008573E8()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v8 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v4 = *(v2 + 264);
    v5 = sub_100857798;
  }

  else
  {
    v6 = *(v2 + 264);
    sub_100007BAC((v2 + 144));
    v5 = sub_100857510;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100857510()
{
  v1 = v0[48];
  v2 = v0[36];
  sub_101259EC4();
  if (v1)
  {
    v3 = v0[46];
    (*(v0[35] + 8))(v0[36], v0[34]);

    v5 = v0[44];
    v4 = v0[45];
    v6 = v0[43];
    v7 = v0[41];
    _StringGuts.grow(_:)(41);

    swift_getErrorValue();
    v9 = v0[23];
    v8 = v0[24];
    v10 = v0[25];
    v0[30] = Error.code.getter();
    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v11);

    v12._countAndFlagsBits = 0x6F44726F72726520;
    v12._object = 0xED00003A6E69616DLL;
    String.append(_:)(v12);
    swift_getErrorValue();
    v14 = v0[26];
    v13 = v0[27];
    v15 = v0[28];
    v16._countAndFlagsBits = Error.domain.getter();
    String.append(_:)(v16);

    sub_10116BC54(0x6548656369766564, 0xEF74616562747261, 0xD000000000000018, 0x80000001013618B0);

    swift_willThrow();

    sub_100165328(v6, v5, v4);
    v18 = v0[39];
    v17 = v0[40];
    v20 = v0[36];
    v19 = v0[37];
  }

  else
  {
    v22 = v0[45];
    v23 = v0[46];
    v25 = v0[43];
    v24 = v0[44];
    v27 = v0[40];
    v26 = v0[41];
    v28 = v0[39];
    v29 = v0[37];
    (*(v0[35] + 8))(v0[36], v0[34]);

    sub_100165328(v25, v24, v22);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_100857798()
{
  v1 = v0[46];

  sub_100007BAC(v0 + 18);
  v2 = v0[48];
  v4 = v0[44];
  v3 = v0[45];
  v5 = v0[43];
  v6 = v0[41];
  _StringGuts.grow(_:)(41);

  swift_getErrorValue();
  v8 = v0[23];
  v7 = v0[24];
  v9 = v0[25];
  v0[30] = Error.code.getter();
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0x6F44726F72726520;
  v11._object = 0xED00003A6E69616DLL;
  String.append(_:)(v11);
  swift_getErrorValue();
  v13 = v0[26];
  v12 = v0[27];
  v14 = v0[28];
  v15._countAndFlagsBits = Error.domain.getter();
  String.append(_:)(v15);

  sub_10116BC54(0x6548656369766564, 0xEF74616562747261, 0xD000000000000018, 0x80000001013618B0);

  swift_willThrow();

  sub_100165328(v5, v4, v3);
  v17 = v0[39];
  v16 = v0[40];
  v19 = v0[36];
  v18 = v0[37];

  v20 = v0[1];

  return v20();
}

uint64_t sub_100857980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();

  return _swift_task_switch(sub_100857A20, a4, 0);
}

uint64_t sub_100857A20()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_1000BC4D4(&qword_1016AB898, &qword_1013BF978);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  *(v4 + 32) = v1;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v7 = sub_100045918(&qword_1016AB860, v6, type metadata accessor for DeviceBeaconPayloadPublisher);
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = v7;
  v8[4] = v4;
  v8[5] = v3;
  swift_retain_n();
  swift_errorRetain();
  sub_10025EDD4(0, 0, v2, &unk_1013BF988, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100857BA4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  v2[9] = v7;
  *v7 = v2;
  v7[1] = sub_100857CAC;

  return daemon.getter();
}

uint64_t sub_100857CAC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v12 = *v1;
  *(v3 + 80) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 88) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DelegatedBeaconPayloadPublisher();
  v9 = sub_100045918(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100045918(&unk_1016B10C0, 255, type metadata accessor for DelegatedBeaconPayloadPublisher);
  *v6 = v12;
  v6[1] = sub_100857E90;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100857E90(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = a1;

  if (v1)
  {
    v7 = v4[10];
    v8 = v4[3];

    return _swift_task_switch(sub_100858B8C, v8, 0);
  }

  else
  {
    v9 = v4[10];

    v10 = swift_task_alloc();
    v4[13] = v10;
    *v10 = v6;
    v10[1] = sub_100858038;
    v11 = v4[2];

    return sub_1000D0378(v11);
  }
}

uint64_t sub_100858038(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v5 = *(*v2 + 24);
  v8 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v6 = sub_100858CBC;
  }

  else
  {
    v6 = sub_100858164;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100858164()
{
  v30 = v0;
  if (*(v0[14] + 16))
  {
    v1 = swift_task_alloc();
    v0[16] = v1;
    *v1 = v0;
    v1[1] = sub_100858474;
    v2 = v0[14];
    v3 = v0[3];

    return sub_100856750(v2);
  }

  else
  {

    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    v5 = v0[7];
    v6 = v0[4];
    v7 = v0[5];
    v8 = v0[2];
    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177CE28);
    (*(v7 + 16))(v5, v8, v6);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[12];
    v14 = v0[7];
    v16 = v0[4];
    v15 = v0[5];
    if (v12)
    {
      v28 = v0[12];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v29 = v18;
      *v17 = 141558275;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2081;
      sub_100045918(&qword_101696930, 255, &type metadata accessor for UUID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      (*(v15 + 8))(v14, v16);
      v22 = sub_1000136BC(v19, v21, &v29);

      *(v17 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v10, v11, "No observations to publish for delegated beacon %{private,mask.hash}s.", v17, 0x16u);
      sub_100007BAC(v18);
    }

    else
    {
      v23 = v0[12];

      (*(v15 + 8))(v14, v16);
    }

    v25 = v0[7];
    v24 = v0[8];
    v26 = v0[6];

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_100858474()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_100858FC0;
  }

  else
  {
    v6 = sub_1008585A0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1008585A0()
{
  v26 = v0;
  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[8];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177CE28);
  (*(v4 + 16))(v2, v5, v3);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[14];
  v11 = v0[8];
  v12 = v0[4];
  v13 = v0[5];
  if (v9)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 134218499;
    *(v14 + 4) = *(v10 + 16);

    *(v14 + 12) = 2160;
    *(v14 + 14) = 1752392040;
    *(v14 + 22) = 2081;
    sub_100045918(&qword_101696930, 255, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v13 + 8))(v11, v12);
    v19 = sub_1000136BC(v16, v18, &v25);

    *(v14 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "Completed initial publish of delegated %ld payloads for beacon %{private,mask.hash}s.", v14, 0x20u);
    sub_100007BAC(v15);
  }

  else
  {
    v20 = v0[14];

    (*(v13 + 8))(v11, v12);
  }

  v21 = swift_task_alloc();
  v0[18] = v21;
  *v21 = v0;
  v21[1] = sub_10085885C;
  v22 = v0[14];
  v23 = v0[12];

  return sub_1000C73BC(v22);
}

uint64_t sub_10085885C()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[19] = v4;
  *v4 = v3;
  v4[1] = sub_1008589B4;
  v5 = v1[14];
  v6 = v1[12];

  return sub_1000CB8EC(v5);
}

uint64_t sub_1008589B4()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;

  v5 = *(v2 + 112);
  v6 = *(v2 + 24);
  if (v0)
  {

    v7 = sub_1008649C8;
  }

  else
  {

    v7 = sub_100858B10;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100858B10()
{
  v1 = v0[12];

  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100858B8C()
{
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AE28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing DelegatedBeaconPayloadPublisher!", v4, 2u);
  }

  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100858CBC()
{
  v30 = v0;
  v1 = v0[15];
  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = v0[2];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177CE28);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[12];
  v12 = v0[5];
  v11 = v0[6];
  v13 = v0[4];
  if (v9)
  {
    v28 = v0[12];
    v14 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = v27;
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    sub_100045918(&qword_101696930, 255, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_1000136BC(v15, v17, &v29);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v19;
    *v26 = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "Error publishing initial delegated location for beacon %{private,mask.hash}s: %{public}@.", v14, 0x20u);
    sub_10000B3A8(v26, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v27);
  }

  else
  {
    v20 = v0[12];

    (*(v12 + 8))(v11, v13);
  }

  v22 = v0[7];
  v21 = v0[8];
  v23 = v0[6];

  v24 = v0[1];

  return v24();
}

uint64_t sub_100858FC0()
{
  v31 = v0;
  v1 = v0[14];

  v2 = v0[17];
  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  v6 = v0[2];
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177CE28);
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[12];
  v13 = v0[5];
  v12 = v0[6];
  v14 = v0[4];
  if (v10)
  {
    v29 = v0[12];
    v15 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v15 = 141558531;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    sub_100045918(&qword_101696930, 255, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    v19 = sub_1000136BC(v16, v18, &v30);

    *(v15 + 14) = v19;
    *(v15 + 22) = 2114;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v20;
    *v27 = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "Error publishing initial delegated location for beacon %{private,mask.hash}s: %{public}@.", v15, 0x20u);
    sub_10000B3A8(v27, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v28);
  }

  else
  {
    v21 = v0[12];

    (*(v13 + 8))(v12, v14);
  }

  v23 = v0[7];
  v22 = v0[8];
  v24 = v0[6];

  v25 = v0[1];

  return v25();
}

uint64_t sub_1008592CC()
{
  v1[15] = v0;
  v2 = type metadata accessor for UUID();
  v1[16] = v2;
  v3 = *(v2 - 8);
  v1[17] = v3;
  v4 = *(v3 + 64) + 15;
  v1[18] = swift_task_alloc();
  v5 = *(*(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v6 = type metadata accessor for SharedBeaconRecord(0);
  v1[20] = v6;
  v7 = *(v6 - 8);
  v1[21] = v7;
  v8 = *(v7 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v9 = type metadata accessor for StableIdentifier();
  v1[24] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v11 = type metadata accessor for OwnedBeaconRecord();
  v1[27] = v11;
  v12 = *(v11 - 8);
  v1[28] = v12;
  v13 = *(v12 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();

  return _swift_task_switch(sub_1008594D0, v0, 0);
}

uint64_t sub_1008594D0()
{
  v1 = v0[15];
  v0[12] = _swiftEmptyArrayStorage;
  v2 = *(v1 + 128);
  v0[31] = v2;
  return _swift_task_switch(sub_100859500, v2, 0);
}

uint64_t sub_100859500()
{
  v1 = *(v0 + 248);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 256) = v3;
  v4 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  *v3 = v0;
  v3[1] = sub_1008595EC;
  v5 = *(v0 + 248);

  return unsafeBlocking<A>(context:_:)(v0 + 104, 0xD000000000000010, 0x800000010134A8C0, sub_10012B078, v5, v4);
}

uint64_t sub_1008595EC()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v4 = *v0;

  return _swift_task_switch(sub_100859704, v2, 0);
}

uint64_t sub_100859704()
{
  v1 = v0[15];
  v0[33] = v0[13];
  return _swift_task_switch(sub_100859728, v1, 0);
}

uint64_t sub_100859728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[33];
  v37 = *(v4 + 16);
  if (v37)
  {
    v5 = 0;
    v33 = (v3[17] + 8);
    v34 = v3[25] + 8;
    v35 = v3[27];
    v36 = v3[28];
    while (1)
    {
      if (v5 >= *(v4 + 16))
      {
        __break(1u);
        return _swift_task_switch(a1, a2, a3);
      }

      v7 = v3[30];
      v8 = v3[26];
      v9 = v3[24];
      v10 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v11 = *(v36 + 72);
      sub_10086478C(v3[33] + v10 + v11 * v5, v7, type metadata accessor for OwnedBeaconRecord);
      v12 = *(v35 + 24);
      sub_10086478C(v7 + v12, v8, type metadata accessor for StableIdentifier);
      LODWORD(v9) = swift_getEnumCaseMultiPayload();
      sub_1008647F4(v8, type metadata accessor for StableIdentifier);
      if (v9 == 1)
      {
        goto LABEL_12;
      }

      v13 = v3[24];
      sub_10086478C(v7 + v12, v3[25], type metadata accessor for StableIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 3)
      {
        break;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v15 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
        v16 = v34;
        v17 = *(v34 + v15[12]);

        v18 = *(v34 + v15[16]);

        v19 = *(v34 + v15[20]);

        v20 = v15[28];
LABEL_11:
        v24 = *(v16 + v20);
        v25 = v3[25];
        v26 = v3[16];

        (*v33)(v25, v26);
LABEL_12:
        sub_100863808(v3[30], v3[29], type metadata accessor for OwnedBeaconRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10112434C(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v28 = _swiftEmptyArrayStorage[2];
        v27 = _swiftEmptyArrayStorage[3];
        if (v28 >= v27 >> 1)
        {
          sub_10112434C(v27 > 1, v28 + 1, 1);
        }

        v29 = v3[29];
        _swiftEmptyArrayStorage[2] = v28 + 1;
        a1 = sub_100863808(v29, _swiftEmptyArrayStorage + v10 + v28 * v11, type metadata accessor for OwnedBeaconRecord);
        goto LABEL_4;
      }

      v6 = v3[25];
      sub_1008647F4(v3[30], type metadata accessor for OwnedBeaconRecord);
      a1 = sub_1008647F4(v6, type metadata accessor for StableIdentifier);
LABEL_4:
      if (v37 == ++v5)
      {
        v30 = v3[33];
        goto LABEL_18;
      }
    }

    v21 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
    v16 = v34;
    v22 = *(v34 + v21[12]);

    v23 = *(v34 + v21[16]);

    v20 = v21[20];
    goto LABEL_11;
  }

LABEL_18:
  v31 = v3[31];

  v3[34] = sub_1000257D0(_swiftEmptyArrayStorage);

  a1 = sub_100859AA4;
  a2 = v31;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100859AA4()
{
  v1 = *(v0 + 248);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 280) = v3;
  v4 = sub_1000BC4D4(&qword_101697720, &unk_101392640);
  *v3 = v0;
  v3[1] = sub_100859B90;
  v5 = *(v0 + 248);

  return unsafeBlocking<A>(context:_:)(v0 + 112, 0xD000000000000010, 0x800000010134A8C0, sub_10012B4AC, v5, v4);
}

uint64_t sub_100859B90()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 248);
  v4 = *v0;

  return _swift_task_switch(sub_100859CA8, v2, 0);
}

uint64_t sub_100859CA8()
{
  v1 = v0[15];
  v0[36] = v0[14];
  return _swift_task_switch(sub_100859CC8, v1, 0);
}

uint64_t sub_100859CC8()
{
  v1 = v0[36];
  v2 = v1[2];
  if (v2)
  {
    v3 = 0;
    v5 = v0[20];
    v4 = v0[21];
    while (v3 < v1[2])
    {
      v6 = v0[23];
      v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v8 = *(v4 + 72);
      sub_10086478C(v0[36] + v7 + v8 * v3, v6, type metadata accessor for SharedBeaconRecord);
      v9 = *(v6 + v5[16]);
      v10 = v9 == 1 || v9 == 4;
      if (v10 || (v11 = v0[23], *(v11 + v5[11]) == -1) || *(v11 + v5[12]) == -1)
      {
        sub_1008647F4(v0[23], type metadata accessor for SharedBeaconRecord);
      }

      else
      {
        sub_100863808(v11, v0[22], type metadata accessor for SharedBeaconRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10112421C(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v13 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];
        v14 = v13 + 1;
        if (v13 >= v12 >> 1)
        {
          sub_10112421C(v12 > 1, v13 + 1, 1);
          v14 = v13 + 1;
        }

        v15 = v0[22];
        _swiftEmptyArrayStorage[2] = v14;
        sub_100863808(v15, _swiftEmptyArrayStorage + v7 + v13 * v8, type metadata accessor for SharedBeaconRecord);
      }

      if (v2 == ++v3)
      {
        v16 = v0[36];
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    v1 = sub_1000309B4(_swiftEmptyArrayStorage);

    if (qword_1016954F0 == -1)
    {
      goto LABEL_19;
    }
  }

  swift_once();
LABEL_19:
  v17 = v0[34];
  v18 = type metadata accessor for Logger();
  v0[37] = sub_1000076D4(v18, qword_10177CE28);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v22 = v0[34];
  if (v21)
  {
    v23 = swift_slowAlloc();
    *v23 = 134218240;
    *(v23 + 4) = *(v22 + 16);

    *(v23 + 12) = 2048;
    *(v23 + 14) = v1[2];

    _os_log_impl(&_mh_execute_header, v19, v20, "Finding unpublished payloads for %ld owned beacons and %ld shared beacons.", v23, 0x16u);
  }

  else
  {
  }

  v40 = v0[34];
  sub_100008484(v1);
  v0[38] = v40;
  v24 = *(v40 + 16);
  v0[39] = v24;
  if (v24)
  {
    v0[40] = 0;
    v25 = v0[19];
    sub_10001F280(v40 + 32, (v0 + 2));
    sub_100852A9C(v25);
    v26 = swift_task_alloc();
    v0[41] = v26;
    *v26 = v0;
    v26[1] = sub_10085A134;
    v27 = v0[19];
    v28 = v0[15];

    return sub_10085A850((v0 + 2), v27);
  }

  else
  {

    v30 = v0[29];
    v31 = v0[30];
    v33 = v0[25];
    v32 = v0[26];
    v35 = v0[22];
    v34 = v0[23];
    v37 = v0[18];
    v36 = v0[19];
    v39 = sub_10039D068(v0[12]);

    v38 = v0[1];

    return v38(v39);
  }
}

uint64_t sub_10085A134(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 328);
  v6 = *v2;
  v4[42] = v1;

  v7 = v4[19];
  v8 = v4[15];
  if (v1)
  {
    sub_10000B3A8(v7, &unk_101696900, &unk_10138B1E0);
    v9 = sub_10085A470;
  }

  else
  {
    v4[43] = a1;
    sub_10000B3A8(v7, &unk_101696900, &unk_10138B1E0);
    v9 = sub_10085A2B0;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10085A2B0()
{
  sub_10039A6F8(v0[43]);
  sub_100007BAC(v0 + 2);
  v1 = v0[40] + 1;
  if (v1 == v0[39])
  {
    v2 = v0[38];

    v3 = v0[29];
    v4 = v0[30];
    v6 = v0[25];
    v5 = v0[26];
    v8 = v0[22];
    v7 = v0[23];
    v10 = v0[18];
    v9 = v0[19];
    v17 = sub_10039D068(v0[12]);

    v11 = v0[1];

    return v11(v17);
  }

  else
  {
    v0[40] = v1;
    v13 = v0[19];
    sub_10001F280(v0[38] + 40 * v1 + 32, (v0 + 2));
    sub_100852A9C(v13);
    v14 = swift_task_alloc();
    v0[41] = v14;
    *v14 = v0;
    v14[1] = sub_10085A134;
    v15 = v0[19];
    v16 = v0[15];

    return sub_10085A850((v0 + 2), v15);
  }
}

uint64_t sub_10085A470()
{
  v40 = v0;
  v1 = v0[42];
  v2 = v0[37];
  sub_10001F280((v0 + 2), (v0 + 7));
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[42];
  if (v5)
  {
    v7 = v0[17];
    v8 = v0[18];
    v9 = v0[16];
    v10 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v39 = v37;
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v12 = v0[10];
    v11 = v0[11];
    sub_1000035D0(v0 + 7, v12);
    (*(*(*(v11 + 8) + 8) + 32))(v12);
    sub_100045918(&qword_101696930, 255, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v7 + 8))(v8, v9);
    sub_100007BAC(v0 + 7);
    v16 = sub_1000136BC(v13, v15, &v39);

    *(v10 + 14) = v16;
    *(v10 + 22) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v17;
    *v36 = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error gathering owned device payloads for %{private,mask.hash}s: %{public}@.", v10, 0x20u);
    sub_10000B3A8(v36, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v37);

    v18 = v0 + 2;
  }

  else
  {
    v19 = v0[42];

    sub_100007BAC(v0 + 2);
    v18 = v0 + 7;
  }

  sub_100007BAC(v18);
  v20 = v0[40] + 1;
  if (v20 == v0[39])
  {
    v21 = v0[38];

    v22 = v0[29];
    v23 = v0[30];
    v25 = v0[25];
    v24 = v0[26];
    v27 = v0[22];
    v26 = v0[23];
    v29 = v0[18];
    v28 = v0[19];
    v38 = sub_10039D068(v0[12]);

    v30 = v0[1];

    return v30(v38);
  }

  else
  {
    v0[40] = v20;
    v32 = v0[19];
    sub_10001F280(v0[38] + 40 * v20 + 32, (v0 + 2));
    sub_100852A9C(v32);
    v33 = swift_task_alloc();
    v0[41] = v33;
    *v33 = v0;
    v33[1] = sub_10085A134;
    v34 = v0[19];
    v35 = v0[15];

    return sub_10085A850((v0 + 2), v34);
  }
}

uint64_t sub_10085A850(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  v4 = type metadata accessor for OwnedBeaconRecord();
  v3[28] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&unk_101696940, &unk_10138B210) - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v7 = type metadata accessor for BeaconEstimatedLocation();
  v3[31] = v7;
  v8 = *(v7 - 8);
  v3[32] = v8;
  v9 = *(v8 + 64) + 15;
  v3[33] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v3[34] = v10;
  v11 = *(v10 - 8);
  v3[35] = v11;
  v3[36] = *(v11 + 64);
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();

  return _swift_task_switch(sub_10085AA04, v2, 0);
}

uint64_t sub_10085AA04()
{
  v1 = v0[40];
  v2 = v0[25];
  v0[23] = _swiftEmptyArrayStorage;
  v3 = v2[3];
  v4 = v2[4];
  sub_1000035D0(v2, v3);
  (*(*(*(v4 + 8) + 8) + 32))(v3);
  v5 = swift_task_alloc();
  v0[41] = v5;
  *v5 = v0;
  v5[1] = sub_10085AAF0;
  v6 = v0[40];
  v7 = v0[30];
  v8 = v0[26];
  v9 = v0[27];

  return sub_10085FBFC(v7, v6, v8);
}

uint64_t sub_10085AAF0()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 216);
  v4 = *v0;

  return _swift_task_switch(sub_10085AC00, v2, 0);
}

uint64_t sub_10085AC00()
{
  v37 = v0;
  v1 = *(v0 + 240);
  if ((*(*(v0 + 256) + 48))(v1, 1, *(v0 + 248)) == 1)
  {
    sub_10000B3A8(v1, &unk_101696940, &unk_10138B210);
    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 320);
    v3 = *(v0 + 304);
    v4 = *(v0 + 272);
    v5 = *(v0 + 280);
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177CE28);
    (*(v5 + 16))(v3, v2, v4);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 304);
    v11 = *(v0 + 272);
    v12 = *(v0 + 280);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = v35;
      *v13 = 141558275;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      sub_100045918(&qword_101696930, 255, &type metadata accessor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      v34 = v8;
      v17 = *(v12 + 8);
      v17(v10, v11);
      v18 = v17;
      v19 = sub_1000136BC(v14, v16, &v36);

      *(v13 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v7, v34, "No new location available for publish for : %{private,mask.hash}s", v13, 0x16u);
      sub_100007BAC(v35);
    }

    else
    {

      v25 = *(v12 + 8);
      v25(v10, v11);
      v18 = v25;
    }

    v26 = *(v0 + 312);
    v28 = *(v0 + 296);
    v27 = *(v0 + 304);
    v29 = *(v0 + 264);
    v31 = *(v0 + 232);
    v30 = *(v0 + 240);
    v18(*(v0 + 320), *(v0 + 272));

    v32 = *(v0 + 8);

    return v32(_swiftEmptyArrayStorage);
  }

  else
  {
    v21 = *(v0 + 224);
    v20 = *(v0 + 232);
    v22 = *(v0 + 200);
    sub_100863808(v1, *(v0 + 264), type metadata accessor for BeaconEstimatedLocation);
    sub_10001F280(v22, v0 + 72);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v23 = swift_dynamicCast();
    *(v0 + 472) = v23;
    if (v23)
    {
      sub_1008647F4(*(v0 + 232), type metadata accessor for OwnedBeaconRecord);
    }

    v24 = *(*(v0 + 216) + 128);
    *(v0 + 336) = v24;

    return _swift_task_switch(sub_10085AFDC, v24, 0);
  }
}

uint64_t sub_10085AFDC()
{
  v1 = *(v0 + 336);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 344) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_10085B0BC;
  v5 = *(v0 + 336);

  return unsafeBlocking<A>(context:_:)(v0 + 192, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_10085B0BC()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 336);
  v4 = *v0;

  return _swift_task_switch(sub_10085B1D4, v2, 0);
}

uint64_t sub_10085B1D4()
{
  v1 = v0[27];
  v0[44] = v0[24];
  return _swift_task_switch(sub_10085B1F8, v1, 0);
}

uint64_t sub_10085B1F8()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 472);
  v4 = *(v0 + 312);
  v3 = *(v0 + 320);
  v6 = *(v0 + 280);
  v5 = *(v0 + 288);
  v7 = *(v0 + 272);
  v8 = *(v6 + 16);
  *(v0 + 360) = v8;
  *(v0 + 368) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v4, v3, v7);
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = v9 + v5;
  v11 = swift_allocObject();
  *(v0 + 376) = v11;
  *(v11 + 16) = v1;
  (*(v6 + 32))(v11 + v9, v4, v7);
  *(v11 + v10) = v2;
  v12 = async function pointer to unsafeBlocking<A>(_:)[1];

  v13 = swift_task_alloc();
  *(v0 + 384) = v13;
  v14 = sub_1000BC4D4(&qword_10169C9B0, &qword_10139FC00);
  *v13 = v0;
  v13[1] = sub_10085B370;

  return unsafeBlocking<A>(_:)(v0 + 152, sub_100862C80, v11, v14);
}

uint64_t sub_10085B370()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v9 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v4 = *(v2 + 216);
    v5 = sub_10085C36C;
  }

  else
  {
    v6 = *(v2 + 376);
    v7 = *(v2 + 216);

    v5 = sub_10085B498;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10085B498()
{
  v50 = v0;
  v1 = *(v0 + 392);
  v2 = *(v0 + 320);
  v3 = *(v0 + 264);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  sub_100016590(*(v0 + 168), *(v0 + 176));
  v6 = PublicKey.advertisement.getter(v5, v4);
  v8 = v7;
  sub_100862D44(v2, v3, v6, v7, (v0 + 16));
  sub_100016590(v6, v8);
  if (v1)
  {
    sub_100016590(v5, v4);
    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 360);
    v9 = *(v0 + 368);
    v11 = *(v0 + 320);
    v12 = *(v0 + 296);
    v13 = *(v0 + 272);
    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177CE28);
    v10(v12, v11, v13);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 296);
    v20 = *(v0 + 272);
    v19 = *(v0 + 280);
    if (v17)
    {
      v21 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = v48;
      *v21 = 141558275;
      *(v21 + 4) = 1752392040;
      *(v21 + 12) = 2081;
      sub_100045918(&qword_101696930, 255, &type metadata accessor for UUID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v19 + 8))(v18, v20);
      v25 = sub_1000136BC(v22, v24, &v49);

      *(v21 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "No owned device key for shared item: %{private,mask.hash}s", v21, 0x16u);
      sub_100007BAC(v48);
    }

    else
    {

      (*(v19 + 8))(v18, v20);
    }

    v26 = _swiftEmptyArrayStorage;
  }

  else
  {
    v26 = sub_100A5DF68(0, 1, 1, _swiftEmptyArrayStorage);
    v28 = *(v26 + 2);
    v27 = *(v26 + 3);
    if (v28 >= v27 >> 1)
    {
      v26 = sub_100A5DF68((v27 > 1), v28 + 1, 1, v26);
    }

    sub_100016590(v5, v4);
    *(v26 + 2) = v28 + 1;
    v29 = &v26[56 * v28];
    v30 = *(v0 + 16);
    v31 = *(v0 + 32);
    v32 = *(v0 + 48);
    *(v29 + 10) = *(v0 + 64);
    *(v29 + 3) = v31;
    *(v29 + 4) = v32;
    *(v29 + 2) = v30;
    *(v0 + 184) = v26;
  }

  *(v0 + 400) = v26;
  My = type metadata accessor for Feature.FindMy();
  *(v0 + 136) = My;
  *(v0 + 144) = sub_100045918(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy);
  v34 = sub_1000280DC((v0 + 112));
  (*(*(My - 8) + 104))(v34, enum case for Feature.FindMy.itemSharing(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC((v0 + 112));
  if (My)
  {
    v35 = swift_task_alloc();
    *(v0 + 408) = v35;
    *v35 = v0;
    v35[1] = sub_10085B988;
    v36 = *(v0 + 216);

    return sub_100852C20();
  }

  else
  {
    v38 = *(v0 + 352);

    v39 = *(v0 + 280);
    v40 = *(v0 + 184);
    sub_1008647F4(*(v0 + 264), type metadata accessor for BeaconEstimatedLocation);
    v41 = *(v0 + 312);
    v43 = *(v0 + 296);
    v42 = *(v0 + 304);
    v44 = *(v0 + 264);
    v46 = *(v0 + 232);
    v45 = *(v0 + 240);
    (*(v39 + 8))(*(v0 + 320), *(v0 + 272));

    v47 = *(v0 + 8);

    return v47(v40);
  }
}

uint64_t sub_10085B988(char a1)
{
  v2 = *(*v1 + 408);
  v3 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 473) = a1;

  return _swift_task_switch(sub_10085BAA0, v3, 0);
}

uint64_t sub_10085BAA0()
{
  if (*(v0 + 473) == 1)
  {
    v1 = async function pointer to daemon.getter[1];
    v2 = swift_task_alloc();
    *(v0 + 416) = v2;
    *v2 = v0;
    v2[1] = sub_10085BC2C;

    return daemon.getter();
  }

  else
  {
    v3 = *(v0 + 352);

    v4 = *(v0 + 280);
    v5 = *(v0 + 184);
    sub_1008647F4(*(v0 + 264), type metadata accessor for BeaconEstimatedLocation);
    v6 = *(v0 + 312);
    v8 = *(v0 + 296);
    v7 = *(v0 + 304);
    v9 = *(v0 + 264);
    v11 = *(v0 + 232);
    v10 = *(v0 + 240);
    (*(v4 + 8))(*(v0 + 320), *(v0 + 272));

    v12 = *(v0 + 8);

    return v12(v5);
  }
}

uint64_t sub_10085BC2C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 416);
  v12 = *v1;
  *(v3 + 424) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 432) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconSharingService(0);
  v9 = sub_100045918(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100045918(&unk_101696950, 255, type metadata accessor for BeaconSharingService);
  *v6 = v12;
  v6[1] = sub_10085BE10;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10085BE10(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 432);
  v6 = *v2;
  v4[55] = a1;

  v7 = v4[53];
  if (v1)
  {
    v8 = v4[27];

    return _swift_task_switch(sub_10085C788, v8, 0);
  }

  else
  {

    v9 = swift_task_alloc();
    v4[56] = v9;
    *v9 = v6;
    v9[1] = sub_10085BFD0;
    v10 = v4[40];

    return sub_1001957C4(v10);
  }
}

uint64_t sub_10085BFD0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 448);
  v10 = *v2;
  v3[57] = a1;
  v3[58] = v1;

  if (v1)
  {
    v5 = v3[50];
    v6 = v3[27];

    v7 = sub_10085C890;
    v8 = v6;
  }

  else
  {
    v8 = v3[27];
    v7 = sub_10085C0F8;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_10085C0F8()
{
  v1 = v0[57];
  v2 = v0[58];
  v3 = v0[40];
  v4 = v0[33];
  v5 = v0[27];
  v6 = swift_task_alloc();
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = v4;
  v7 = sub_1005C82E0(sub_100862D24, v6, v1);
  v8 = v0[57];
  v9 = v0[55];
  if (v2)
  {
    v10 = v0[50];
    v11 = v0[44];

    v12 = v0[39];
    v13 = v0[40];
    v15 = v0[37];
    v14 = v0[38];
    v16 = v0[34];
    v17 = v0[35];
    v18 = v0[30];
    v31 = v0[29];
    sub_1008647F4(v0[33], type metadata accessor for BeaconEstimatedLocation);
    (*(v17 + 8))(v13, v16);

    v19 = v0[1];

    return v19();
  }

  else
  {
    v21 = v0[44];

    sub_10039A6F8(v7);

    v22 = v0[35];
    v23 = v0[23];
    sub_1008647F4(v0[33], type metadata accessor for BeaconEstimatedLocation);
    v24 = v0[39];
    v26 = v0[37];
    v25 = v0[38];
    v27 = v0[33];
    v29 = v0[29];
    v28 = v0[30];
    (*(v22 + 8))(v0[40], v0[34]);

    v30 = v0[1];

    return v30(v23);
  }
}

uint64_t sub_10085C36C()
{
  v37 = v0;
  v1 = v0[47];

  v2 = v0[49];
  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v4 = v0[45];
  v3 = v0[46];
  v5 = v0[40];
  v6 = v0[37];
  v7 = v0[34];
  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177CE28);
  v4(v6, v5, v7);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[37];
  v14 = v0[34];
  v13 = v0[35];
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v36 = v16;
    *v15 = 141558275;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    sub_100045918(&qword_101696930, 255, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v13 + 8))(v12, v14);
    v20 = sub_1000136BC(v17, v19, &v36);

    *(v15 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "No owned device key for shared item: %{private,mask.hash}s", v15, 0x16u);
    sub_100007BAC(v16);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v0[50] = _swiftEmptyArrayStorage;
  My = type metadata accessor for Feature.FindMy();
  v0[17] = My;
  v0[18] = sub_100045918(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy);
  v22 = sub_1000280DC(v0 + 14);
  (*(*(My - 8) + 104))(v22, enum case for Feature.FindMy.itemSharing(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v0 + 14);
  if (My)
  {
    v23 = swift_task_alloc();
    v0[51] = v23;
    *v23 = v0;
    v23[1] = sub_10085B988;
    v24 = v0[27];

    return sub_100852C20();
  }

  else
  {
    v26 = v0[44];

    v27 = v0[35];
    v28 = v0[23];
    sub_1008647F4(v0[33], type metadata accessor for BeaconEstimatedLocation);
    v29 = v0[39];
    v31 = v0[37];
    v30 = v0[38];
    v32 = v0[33];
    v34 = v0[29];
    v33 = v0[30];
    (*(v27 + 8))(v0[40], v0[34]);

    v35 = v0[1];

    return v35(v28);
  }
}

uint64_t sub_10085C788()
{
  v1 = v0[44];

  v2 = v0[35];
  v3 = v0[23];
  sub_1008647F4(v0[33], type metadata accessor for BeaconEstimatedLocation);
  v4 = v0[39];
  v6 = v0[37];
  v5 = v0[38];
  v7 = v0[33];
  v9 = v0[29];
  v8 = v0[30];
  (*(v2 + 8))(v0[40], v0[34]);

  v10 = v0[1];

  return v10(v3);
}

uint64_t sub_10085C890()
{
  v1 = v0[55];
  v2 = v0[44];

  v13 = v0[58];
  v4 = v0[39];
  v3 = v0[40];
  v6 = v0[37];
  v5 = v0[38];
  v7 = v0[34];
  v8 = v0[35];
  v9 = v0[29];
  v10 = v0[30];
  sub_1008647F4(v0[33], type metadata accessor for BeaconEstimatedLocation);
  (*(v8 + 8))(v3, v7);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10085C9A8(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v3 = *(type metadata accessor for ObservedAdvertisement(0) - 8);
  v2[22] = v3;
  v4 = *(v3 + 64) + 15;
  v2[23] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_10169DBD8, &qword_1013BF910);
  v2[24] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v7 = type metadata accessor for BeaconStatus(0);
  v2[26] = v7;
  v8 = *(v7 - 8);
  v2[27] = v8;
  v9 = *(v8 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&qword_10169BA30, &unk_101395620) - 8) + 64) + 15;
  v2[30] = swift_task_alloc();
  v11 = *(*(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8) + 64) + 15;
  v2[31] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v2[32] = v12;
  v13 = *(v12 - 8);
  v2[33] = v13;
  v2[34] = *(v13 + 64);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v14 = *(*(sub_1000BC4D4(&unk_101696940, &unk_10138B210) - 8) + 64) + 15;
  v2[39] = swift_task_alloc();
  v15 = type metadata accessor for BeaconEstimatedLocation();
  v2[40] = v15;
  v16 = *(v15 - 8);
  v2[41] = v16;
  v17 = *(v16 + 64) + 15;
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v18 = type metadata accessor for SharedBeaconRecord(0);
  v2[44] = v18;
  v19 = *(v18 - 8);
  v2[45] = v19;
  v20 = *(v19 + 64) + 15;
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v21 = async function pointer to daemon.getter[1];
  v22 = swift_task_alloc();
  v2[48] = v22;
  *v22 = v2;
  v22[1] = sub_10085CD38;

  return daemon.getter();
}

uint64_t sub_10085CD38(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 384);
  v12 = *v1;
  *(v3 + 392) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 400) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconSharingService(0);
  v9 = sub_100045918(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100045918(&unk_101696950, 255, type metadata accessor for BeaconSharingService);
  *v6 = v12;
  v6[1] = sub_10085CF1C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10085CF1C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 400);
  v10 = *v2;
  v3[51] = a1;
  v3[52] = v1;

  if (v1)
  {
    v5 = v3[21];
    v6 = sub_10085F9E4;
  }

  else
  {
    v7 = v3[49];
    v8 = v3[21];

    v6 = sub_10085D044;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10085D044()
{
  v1 = *(*(v0 + 168) + 128);
  *(v0 + 424) = v1;
  return _swift_task_switch(sub_10085D068, v1, 0);
}

uint64_t sub_10085D068()
{
  v1 = *(v0 + 424);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 432) = v3;
  v4 = sub_1000BC4D4(&qword_101697720, &unk_101392640);
  *v3 = v0;
  v3[1] = sub_10085D154;
  v5 = *(v0 + 424);

  return unsafeBlocking<A>(context:_:)(v0 + 136, 0xD000000000000010, 0x800000010134A8C0, sub_100129E44, v5, v4);
}

uint64_t sub_10085D154()
{
  v1 = *(*v0 + 432);
  v2 = *(*v0 + 424);
  v4 = *v0;

  return _swift_task_switch(sub_10085D26C, v2, 0);
}

uint64_t sub_10085D26C()
{
  v1 = v0[21];
  v0[55] = v0[17];
  return _swift_task_switch(sub_10085D290, v1, 0);
}

uint64_t sub_10085D290()
{
  v1 = v0[55];
  v2 = *(v1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = 0;
    v6 = v0[44];
    v5 = v0[45];
    while (v4 < *(v1 + 16))
    {
      v3 = v0[47];
      v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v8 = *(v5 + 72);
      sub_10086478C(v0[55] + v7 + v8 * v4, v3, type metadata accessor for SharedBeaconRecord);
      v9 = *(v3 + v6[16]);
      v10 = v9 == 1 || v9 == 4;
      if (v10 || (v11 = v0[47], *(v11 + v6[11]) == -1) || *(v11 + v6[12]) == -1)
      {
        sub_1008647F4(v0[47], type metadata accessor for SharedBeaconRecord);
      }

      else
      {
        sub_100863808(v11, v0[46], type metadata accessor for SharedBeaconRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10112421C(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v3 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];
        v13 = v3 + 1;
        if (v3 >= v12 >> 1)
        {
          sub_10112421C(v12 > 1, v3 + 1, 1);
          v13 = v3 + 1;
        }

        v14 = v0[46];
        _swiftEmptyArrayStorage[2] = v13;
        sub_100863808(v14, _swiftEmptyArrayStorage + v7 + v3 * v8, type metadata accessor for SharedBeaconRecord);
      }

      if (v2 == ++v4)
      {
        v15 = v0[55];
        v3 = _swiftEmptyArrayStorage;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_30:
    swift_once();
    goto LABEL_23;
  }

LABEL_18:

  v16 = sub_1000309B4(_swiftEmptyArrayStorage);
  v0[56] = v16;

  v17 = v16[2];
  v0[57] = v17;
  if (v17)
  {
    v0[59] = 0;
    v0[60] = _swiftEmptyArrayStorage;
    v18 = v0[53];
    v0[58] = v0[52];
    v19 = v0[38];
    v20 = v0[31];
    v21 = v0[20];
    sub_10001F280(v0[56] + 32, (v0 + 2));
    v22 = v0[5];
    v23 = v0[6];
    sub_1000035D0(v0 + 2, v22);
    (*(*(*(v23 + 8) + 8) + 32))(v22);
    v24 = type metadata accessor for Date();
    v25 = *(v24 - 8);
    (*(v25 + 16))(v20, v21, v24);
    (*(v25 + 56))(v20, 0, 1, v24);

    return _swift_task_switch(sub_10085D7D8, v18, 0);
  }

  if (qword_1016954F0 != -1)
  {
    goto LABEL_30;
  }

LABEL_23:
  v26 = v0[56];
  v27 = type metadata accessor for Logger();
  sub_1000076D4(v27, qword_10177CE28);
  swift_bridgeObjectRetain_n();

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = os_log_type_enabled(v28, v29);
  v31 = v0[56];
  v32 = v0[51];
  if (v30)
  {
    v33 = swift_slowAlloc();
    *v33 = 134218240;
    v34 = *(v31 + 16);

    *(v33 + 4) = v34;

    *(v33 + 12) = 2048;
    *(v33 + 14) = *(v3 + 16);
    swift_bridgeObjectRelease_n();
    _os_log_impl(&_mh_execute_header, v28, v29, "Unpublished anonymous payloads for %ld shared beacons found %ld to publish.", v33, 0x16u);
  }

  else
  {
    v35 = v0[56];
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v37 = v0[46];
  v36 = v0[47];
  v39 = v0[42];
  v38 = v0[43];
  v41 = v0[38];
  v40 = v0[39];
  v43 = v0[36];
  v42 = v0[37];
  v44 = v0[35];
  v45 = v0[31];
  v48 = v0[30];
  v49 = v0[29];
  v50 = v0[28];
  v51 = v0[25];
  v52 = v0[23];

  v46 = v0[1];

  return v46(_swiftEmptyArrayStorage);
}

uint64_t sub_10085D7D8()
{
  v1 = *(v0 + 424);
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = *(v0 + 264);
  v5 = *(v0 + 256);
  v6 = *(v4 + 16);
  *(v0 + 488) = v6;
  *(v0 + 496) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v3, v2, v5);
  v7 = *(v4 + 80);
  *(v0 + 672) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 504) = v9;
  *(v9 + 16) = v1;
  v10 = *(v4 + 32);
  *(v0 + 512) = v10;
  *(v0 + 520) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v3, v5);
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 528) = v12;
  v13 = sub_1000BC4D4(&qword_101696970, &qword_10138C490);
  *v12 = v0;
  v12[1] = sub_10085D96C;

  return unsafeBlocking<A>(context:_:)(v0 + 144, 0xD000000000000010, 0x800000010134A8C0, sub_100862BD4, v9, v13);
}

uint64_t sub_10085D96C()
{
  v1 = *(*v0 + 528);
  v2 = *(*v0 + 504);
  v3 = *(*v0 + 424);
  v5 = *v0;

  return _swift_task_switch(sub_10085DA98, v3, 0);
}

uint64_t sub_10085DA98()
{
  v1 = v0[21];
  v0[67] = v0[18];
  return _swift_task_switch(sub_10085DABC, v1, 0);
}

uint64_t sub_10085DABC()
{
  v1 = v0[67];
  v2 = v0[58];
  v3 = v0[41];
  v53 = v0[40];
  v5 = v0[38];
  v4 = v0[39];
  v7 = v0[32];
  v6 = v0[33];
  v8 = v0[31];
  v9 = swift_task_alloc();
  *(v9 + 16) = &off_10160A2F8;
  *(v9 + 24) = v8;
  v10 = sub_10013D74C(sub_100862BEC, v9, v1);

  sub_1012BAB18(v10, v4);

  v11 = *(v6 + 8);
  v0[68] = v11;
  v0[69] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v5, v7);
  sub_10000B3A8(v8, &unk_101696900, &unk_10138B1E0);
  if ((*(v3 + 48))(v4, 1, v53) == 1)
  {
    sub_10000B3A8(v0[39], &unk_101696940, &unk_10138B210);
    v12 = v0[60];
    v13 = v0[57];
    v14 = v0[59] + 1;
    sub_100007BAC(v0 + 2);
    if (v14 == v13)
    {
      if (qword_1016954F0 != -1)
      {
        swift_once();
      }

      v15 = v0[56];
      v16 = type metadata accessor for Logger();
      sub_1000076D4(v16, qword_10177CE28);
      swift_bridgeObjectRetain_n();

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      v19 = os_log_type_enabled(v17, v18);
      v20 = v0[56];
      v21 = v0[51];
      v54 = v12;
      if (v19)
      {
        v22 = swift_slowAlloc();
        *v22 = 134218240;
        v23 = *(v20 + 16);

        *(v22 + 4) = v23;

        *(v22 + 12) = 2048;
        *(v22 + 14) = *(v12 + 16);
        swift_bridgeObjectRelease_n();
        _os_log_impl(&_mh_execute_header, v17, v18, "Unpublished anonymous payloads for %ld shared beacons found %ld to publish.", v22, 0x16u);
      }

      else
      {
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      v37 = v0[46];
      v36 = v0[47];
      v39 = v0[42];
      v38 = v0[43];
      v41 = v0[38];
      v40 = v0[39];
      v43 = v0[36];
      v42 = v0[37];
      v44 = v0[35];
      v45 = v0[31];
      v48 = v0[30];
      v49 = v0[29];
      v50 = v0[28];
      v51 = v0[25];
      v52 = v0[23];

      v46 = v0[1];

      return v46(v54);
    }

    v27 = v0[59];
    v0[59] = v27 + 1;
    v0[60] = v12;
    v0[58] = v2;
    v28 = v0[53];
    v29 = v0[38];
    v30 = v0[31];
    v31 = v0[20];
    sub_10001F280(v0[56] + 40 * v27 + 72, (v0 + 2));
    v32 = v0[5];
    v33 = v0[6];
    sub_1000035D0(v0 + 2, v32);
    (*(*(*(v33 + 8) + 8) + 32))(v32);
    v34 = type metadata accessor for Date();
    v35 = *(v34 - 8);
    (*(v35 + 16))(v30, v31, v34);
    (*(v35 + 56))(v30, 0, 1, v34);
    v25 = sub_10085D7D8;
    v26 = v28;
  }

  else
  {
    v24 = v0[53];
    sub_100863808(v0[39], v0[43], type metadata accessor for BeaconEstimatedLocation);
    v25 = sub_10085DF9C;
    v26 = v24;
  }

  return _swift_task_switch(v25, v26, 0);
}

uint64_t sub_10085DF9C()
{
  v1 = *(v0 + 424);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 560) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_10085E07C;
  v5 = *(v0 + 424);

  return unsafeBlocking<A>(context:_:)(v0 + 152, 0xD000000000000010, 0x800000010134A8C0, sub_1000D27E4, v5, v4);
}

uint64_t sub_10085E07C()
{
  v1 = *(*v0 + 560);
  v2 = *(*v0 + 424);
  v4 = *v0;

  return _swift_task_switch(sub_10085E194, v2, 0);
}

uint64_t sub_10085E194()
{
  v1 = v0[21];
  v0[71] = v0[19];
  return _swift_task_switch(sub_10085E1B8, v1, 0);
}

uint64_t sub_10085E1B8()
{
  v2 = v0[35];
  v1 = v0[36];
  v0[72] = *(v0[71] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);

  v4 = v0[5];
  v3 = v0[6];
  sub_1000035D0(v0 + 2, v4);
  (*(*(*(v3 + 8) + 8) + 32))(v4);
  v5 = getuid();
  sub_1000294F0(v5);
  v6 = swift_task_alloc();
  v0[73] = v6;
  *v6 = v0;
  v6[1] = sub_10085E2D4;
  v8 = v0[35];
  v7 = v0[36];

  return sub_100686048(v8, v7, 1);
}

uint64_t sub_10085E2D4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 584);
  v17 = *v3;
  v4[74] = v2;

  v6 = v4[72];
  v7 = v4[69];
  v8 = v4[68];
  v9 = v4[36];
  v10 = v4[35];
  v11 = v4[32];
  v12 = v4[21];
  if (v2)
  {

    v8(v10, v11);
    v8(v9, v11);
    v13 = sub_10085FB10;
  }

  else
  {

    v4[75] = a2;
    v4[76] = a1;
    v8(v10, v11);
    v8(v9, v11);
    v13 = sub_10085E4EC;
  }

  return _swift_task_switch(v13, v12, 0);
}

uint64_t sub_10085E4EC()
{
  v1 = v0[75];
  if (v1 >> 60 == 15)
  {
    v0[77] = v0[74];
    v2 = v0[38];
    v3 = *(v0[51] + 128);
    v4 = v0[5];
    v5 = v0[6];
    sub_1000035D0(v0 + 2, v4);
    (*(*(*(v5 + 8) + 8) + 32))(v4);
    v6 = swift_task_alloc();
    v0[78] = v6;
    *v6 = v0;
    v6[1] = sub_10085E67C;
    v7 = v0[38];
    v8 = v0[30];

    return sub_100CFC71C(v8, v7);
  }

  else
  {
    v10 = v0[76];
    v11 = v0[74];
    v0[81] = v1;
    v0[80] = v10;
    v0[79] = v11;
    v12 = v0[53];
    v13 = v0[38];
    v14 = v0[5];
    v15 = v0[6];
    sub_1000035D0(v0 + 2, v14);
    (*(*(*(v15 + 8) + 8) + 32))(v14);

    return _swift_task_switch(sub_10085EF30, v12, 0);
  }
}

uint64_t sub_10085E67C()
{
  v1 = *(*v0 + 624);
  v2 = *(*v0 + 552);
  v3 = *(*v0 + 544);
  v4 = *(*v0 + 304);
  v5 = *(*v0 + 256);
  v6 = *(*v0 + 168);
  v8 = *v0;

  v3(v4, v5);

  return _swift_task_switch(sub_10085E7F8, v6, 0);
}

uint64_t sub_10085E7F8()
{
  v76 = v0;
  v1 = v0[30];
  v2 = type metadata accessor for TimeBasedKey();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &qword_10169BA30, &unk_101395620);
    v3 = &qword_101695000;
    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177CE28);
    sub_10001F280((v0 + 2), (v0 + 7));
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v69 = v0[68];
      v71 = v0[69];
      v73 = v0[43];
      v7 = v0[38];
      v8 = v0[32];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v75 = v10;
      *v9 = 141558275;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2081;
      v12 = v0[10];
      v11 = v0[11];
      sub_1000035D0(v0 + 7, v12);
      (*(*(*(v11 + 8) + 8) + 32))(v12);
      sub_100045918(&qword_101696930, 255, &type metadata accessor for UUID);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      v69(v7, v8);
      sub_100007BAC(v0 + 7);
      v16 = sub_1000136BC(v13, v15, &v75);

      *(v9 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v5, v6, "No secondary advertisement found for %{private,mask.hash}s to publish anonymously.", v9, 0x16u);
      sub_100007BAC(v10);

      v3 = &qword_101695000;

      sub_1008647F4(v73, type metadata accessor for BeaconEstimatedLocation);
    }

    else
    {
      v33 = v0[43];

      sub_1008647F4(v33, type metadata accessor for BeaconEstimatedLocation);
      sub_100007BAC(v0 + 7);
    }

    v34 = v0[77];
    v35 = v0[60];
    v36 = v0[57];
    v37 = v0[59] + 1;
    sub_100007BAC(v0 + 2);
    if (v37 == v36)
    {
      if (v3[158] != -1)
      {
        swift_once();
      }

      v38 = v0[56];
      sub_1000076D4(v4, qword_10177CE28);
      swift_bridgeObjectRetain_n();

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      v41 = os_log_type_enabled(v39, v40);
      v42 = v0[56];
      v43 = v0[51];
      v74 = v35;
      if (v41)
      {
        v44 = swift_slowAlloc();
        *v44 = 134218240;
        v45 = *(v42 + 16);

        *(v44 + 4) = v45;

        *(v44 + 12) = 2048;
        *(v44 + 14) = *(v35 + 16);
        swift_bridgeObjectRelease_n();
        _os_log_impl(&_mh_execute_header, v39, v40, "Unpublished anonymous payloads for %ld shared beacons found %ld to publish.", v44, 0x16u);
      }

      else
      {
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      v55 = v0[46];
      v54 = v0[47];
      v57 = v0[42];
      v56 = v0[43];
      v59 = v0[38];
      v58 = v0[39];
      v61 = v0[36];
      v60 = v0[37];
      v62 = v0[35];
      v63 = v0[31];
      v66 = v0[30];
      v67 = v0[29];
      v68 = v0[28];
      v70 = v0[25];
      v72 = v0[23];

      v64 = v0[1];

      return v64(v74);
    }

    v46 = v0[59];
    v0[59] = v46 + 1;
    v0[60] = v35;
    v0[58] = v34;
    v28 = v0[53];
    v47 = v0[38];
    v48 = v0[31];
    v49 = v0[20];
    sub_10001F280(v0[56] + 40 * v46 + 72, (v0 + 2));
    v50 = v0[5];
    v51 = v0[6];
    sub_1000035D0(v0 + 2, v50);
    (*(*(*(v51 + 8) + 8) + 32))(v50);
    v52 = type metadata accessor for Date();
    v53 = *(v52 - 8);
    (*(v53 + 16))(v48, v49, v52);
    (*(v53 + 56))(v48, 0, 1, v52);
    v32 = sub_10085D7D8;
  }

  else
  {
    v17 = (v1 + *(v2 + 24));
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = v17[3];
    v22 = v17[4];
    v23 = v17[5];
    sub_10002E98C(*v17, v19);
    sub_100017D5C(v20, v21);
    sub_10002E98C(v22, v23);
    sub_1008647F4(v1, type metadata accessor for TimeBasedKey);
    v24 = PublicKey.advertisement.getter(v20, v21);
    v26 = v25;
    sub_100006654(v18, v19);
    sub_100016590(v20, v21);
    sub_100006654(v22, v23);
    v27 = v0[77];
    v0[81] = v26;
    v0[80] = v24;
    v0[79] = v27;
    v28 = v0[53];
    v29 = v0[38];
    v30 = v0[5];
    v31 = v0[6];
    sub_1000035D0(v0 + 2, v30);
    (*(*(*(v31 + 8) + 8) + 32))(v30);
    v32 = sub_10085EF30;
  }

  return _swift_task_switch(v32, v28, 0);
}

uint64_t sub_10085EF30()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 512);
  v3 = *(v0 + 496);
  v4 = *(v0 + 424);
  v5 = *(v0 + 296);
  v6 = *(v0 + 272);
  v7 = *(v0 + 256);
  v8 = (*(v0 + 672) + 24) & ~*(v0 + 672);
  (*(v0 + 488))(v5, *(v0 + 304), v7);
  v9 = swift_allocObject();
  *(v0 + 656) = v9;
  *(v9 + 16) = v4;
  v2(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 664) = v11;
  *v11 = v0;
  v11[1] = sub_10085F080;
  v13 = *(v0 + 192);
  v12 = *(v0 + 200);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100862C0C, v9, v13);
}

uint64_t sub_10085F080()
{
  v1 = *(*v0 + 664);
  v2 = *(*v0 + 656);
  v3 = *(*v0 + 552);
  v4 = *(*v0 + 544);
  v5 = *(*v0 + 304);
  v6 = *(*v0 + 256);
  v7 = *(*v0 + 168);
  v9 = *v0;

  v4(v5, v6);

  return _swift_task_switch(sub_10085F218, v7, 0);
}

uint64_t sub_10085F218()
{
  v78 = v0;
  v1 = v0[25];
  if ((*(v0[27] + 48))(v1, 1, v0[26]) == 1)
  {
    sub_10000B3A8(v1, &qword_10169DBD8, &qword_1013BF910);
    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_10177CE28);
    sub_10001F280((v0 + 2), (v0 + 12));
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[80];
    if (v5)
    {
      v69 = v0[68];
      v71 = v0[69];
      v73 = v0[81];
      v75 = v0[43];
      v7 = v0[38];
      v8 = v0[32];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v77 = v10;
      *v9 = 141558275;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2081;
      v12 = v0[15];
      v11 = v0[16];
      sub_1000035D0(v0 + 12, v12);
      (*(*(*(v11 + 8) + 8) + 32))(v12);
      sub_100045918(&qword_101696930, 255, &type metadata accessor for UUID);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      v69(v7, v8);
      sub_100007BAC(v0 + 12);
      v16 = sub_1000136BC(v13, v15, &v77);

      *(v9 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v3, v4, "No current advertisement status found for %{private,mask.hash}s to publish anonymously.", v9, 0x16u);
      sub_100007BAC(v10);

      sub_100016590(v6, v73);
      sub_1008647F4(v75, type metadata accessor for BeaconEstimatedLocation);
    }

    else
    {
      v33 = v0[43];
      sub_100016590(v0[80], v0[81]);

      sub_1008647F4(v33, type metadata accessor for BeaconEstimatedLocation);
      sub_100007BAC(v0 + 12);
    }

    v26 = v0[60];
  }

  else
  {
    v17 = v0[81];
    v18 = v0[80];
    v19 = v0[60];
    v21 = v0[42];
    v20 = v0[43];
    v23 = v0[28];
    v22 = v0[29];
    v24 = v0[23];
    sub_100863808(v1, v22, type metadata accessor for BeaconStatus);
    sub_10086478C(v22, v23, type metadata accessor for BeaconStatus);
    sub_10086478C(v20, v21, type metadata accessor for BeaconEstimatedLocation);
    sub_100017D5C(v18, v17);
    sub_100860090(v18, v17, v23, v21, v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v0[60];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = sub_100A5C3FC(0, v26[2] + 1, 1, v0[60]);
    }

    v28 = v26[2];
    v27 = v26[3];
    if (v28 >= v27 >> 1)
    {
      v26 = sub_100A5C3FC(v27 > 1, v28 + 1, 1, v26);
    }

    v29 = v0[43];
    v30 = v0[29];
    v32 = v0[22];
    v31 = v0[23];
    sub_100016590(v0[80], v0[81]);
    sub_1008647F4(v30, type metadata accessor for BeaconStatus);
    sub_1008647F4(v29, type metadata accessor for BeaconEstimatedLocation);
    v26[2] = v28 + 1;
    sub_100863808(v31, v26 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v28, type metadata accessor for ObservedAdvertisement);
  }

  v34 = v0[79];
  v35 = v0[57];
  v36 = v0[59] + 1;
  sub_100007BAC(v0 + 2);
  if (v36 == v35)
  {
    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    v37 = v0[56];
    v38 = type metadata accessor for Logger();
    sub_1000076D4(v38, qword_10177CE28);
    swift_bridgeObjectRetain_n();

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    v41 = os_log_type_enabled(v39, v40);
    v42 = v0[56];
    v43 = v0[51];
    if (v41)
    {
      v44 = swift_slowAlloc();
      *v44 = 134218240;
      v45 = *(v42 + 16);

      *(v44 + 4) = v45;

      *(v44 + 12) = 2048;
      *(v44 + 14) = v26[2];
      swift_bridgeObjectRelease_n();
      _os_log_impl(&_mh_execute_header, v39, v40, "Unpublished anonymous payloads for %ld shared beacons found %ld to publish.", v44, 0x16u);
    }

    else
    {
      v55 = v0[56];
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    v57 = v0[46];
    v56 = v0[47];
    v59 = v0[42];
    v58 = v0[43];
    v61 = v0[38];
    v60 = v0[39];
    v63 = v0[36];
    v62 = v0[37];
    v64 = v0[35];
    v67 = v0[31];
    v68 = v0[30];
    v70 = v0[29];
    v72 = v0[28];
    v74 = v0[25];
    v76 = v0[23];

    v65 = v0[1];

    return v65(v26);
  }

  else
  {
    v46 = v0[59];
    v0[59] = v46 + 1;
    v0[60] = v26;
    v0[58] = v34;
    v47 = v0[53];
    v48 = v0[38];
    v49 = v0[31];
    v50 = v0[20];
    sub_10001F280(v0[56] + 40 * v46 + 72, (v0 + 2));
    v51 = v0[5];
    v52 = v0[6];
    sub_1000035D0(v0 + 2, v51);
    (*(*(*(v52 + 8) + 8) + 32))(v51);
    v53 = type metadata accessor for Date();
    v54 = *(v53 - 8);
    (*(v54 + 16))(v49, v50, v53);
    (*(v54 + 56))(v49, 0, 1, v53);

    return _swift_task_switch(sub_10085D7D8, v47, 0);
  }
}

uint64_t sub_10085F9E4()
{
  v1 = v0[49];
  v3 = v0[46];
  v2 = v0[47];
  v5 = v0[42];
  v4 = v0[43];
  v7 = v0[38];
  v6 = v0[39];
  v8 = v0[36];
  v9 = v0[37];
  v10 = v0[35];
  v14 = v0[31];
  v15 = v0[30];
  v16 = v0[29];
  v17 = v0[28];
  v18 = v0[25];
  v19 = v0[23];

  v11 = v0[1];
  v12 = v0[52];

  return v11();
}

uint64_t sub_10085FB10()
{
  v0[77] = 0;
  v1 = v0[38];
  v2 = *(v0[51] + 128);
  v3 = v0[5];
  v4 = v0[6];
  sub_1000035D0(v0 + 2, v3);
  (*(*(*(v4 + 8) + 8) + 32))(v3);
  v5 = swift_task_alloc();
  v0[78] = v5;
  *v5 = v0;
  v5[1] = sub_10085E67C;
  v6 = v0[38];
  v7 = v0[30];

  return sub_100CFC71C(v7, v6);
}

uint64_t sub_10085FBFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for UUID();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_10085FCC8, v3, 0);
}

uint64_t sub_10085FCC8()
{
  v1 = *(*(v0 + 48) + 128);
  *(v0 + 88) = v1;
  return _swift_task_switch(sub_10085FCEC, v1, 0);
}

uint64_t sub_10085FCEC()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[7];
  (*(v3 + 16))(v1, v0[4], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[12] = v6;
  *(v6 + 16) = v2;
  (*(v3 + 32))(v6 + v5, v1, v4);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[13] = v8;
  v9 = sub_1000BC4D4(&qword_101696970, &qword_10138C490);
  *v8 = v0;
  v8[1] = sub_10085FE64;

  return unsafeBlocking<A>(context:_:)(v0 + 2, 0xD000000000000010, 0x800000010134A8C0, sub_1008649CC, v6, v9);
}

uint64_t sub_10085FE64()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v5 = *v0;

  return _swift_task_switch(sub_10085FF90, v3, 0);
}

uint64_t sub_10085FF90()
{
  v1 = v0[6];
  v0[14] = v0[2];
  return _swift_task_switch(sub_10085FFB4, v1, 0);
}

uint64_t sub_10085FFB4()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[5];
  v4 = v0[3];
  v5 = swift_task_alloc();
  *(v5 + 16) = &off_10160A2D0;
  *(v5 + 24) = v3;
  v6 = sub_10013D74C(sub_1008649AC, v5, v1);

  sub_1012BAB18(v6, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100860090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a1;
  v32 = a2;
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a3 + *(type metadata accessor for BeaconStatus(0) + 20));
  sub_1008647F4(a3, type metadata accessor for BeaconStatus);
  v18 = type metadata accessor for BeaconEstimatedLocation();
  sub_1000D3410(a4 + v18[12], v11);
  v19 = *(v13 + 48);
  if (v19(v11, 1, v12) == 1)
  {
    (*(v13 + 16))(v16, a4 + v18[10], v12);
    if (v19(v11, 1, v12) != 1)
    {
      sub_10000B3A8(v11, &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
  }

  v20 = type metadata accessor for ObservedAdvertisement(0);
  v21 = (a5 + v20[12]);
  v22 = *(a4 + v18[7]);
  v23 = *(a4 + v18[8]);
  v24 = v18[10];
  v25 = *(a4 + v18[9]);
  v26 = type metadata accessor for ObservedAdvertisement.Location(0);
  (*(v13 + 16))(&v21[*(v26 + 28)], a4 + v24, v12);
  sub_1008647F4(a4, type metadata accessor for BeaconEstimatedLocation);
  *v21 = v22;
  *(v21 + 1) = v23;
  *(v21 + 2) = v25;
  (*(*(v26 - 8) + 56))(v21, 0, 1, v26);
  v27 = v20[13];
  v28 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  (*(*(v28 - 8) + 56))(a5 + v27, 1, 1, v28);
  *a5 = 0;
  *(a5 + 8) = 1;
  v29 = v32;
  *(a5 + 16) = v31;
  *(a5 + 24) = v29;
  *(a5 + 32) = v17 & 0xF0;
  *(a5 + 33) = 0;
  *(a5 + 35) = 1;
  *(a5 + 36) = -1;
  result = (*(v13 + 32))(a5 + v20[11], v16, v12);
  *(a5 + v20[14]) = 0;
  return result;
}

uint64_t sub_1008603F4()
{
  v1 = *(v0 + 232);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 304) = v3;
  v4 = sub_1000BC4D4(&unk_1016AA410, &unk_101395200);
  *v3 = v0;
  v3[1] = sub_1008604E0;
  v5 = *(v0 + 232);

  return unsafeBlocking<A>(context:_:)(v0 + 112, 0xD000000000000010, 0x800000010134A8C0, sub_100259A64, v5, v4);
}

uint64_t sub_1008604E0()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 232);
  v4 = *v0;

  return _swift_task_switch(sub_1008605F8, v2, 0);
}

uint64_t sub_1008605F8()
{
  v1 = v0[15];
  v0[39] = v0[14];
  return _swift_task_switch(sub_100860618, v1, 0);
}

uint64_t sub_100860618(uint64_t a1, uint64_t a2)
{
  v3 = v2[39];
  v4 = v2[23];
  v5 = v2[15];
  v6 = sub_100045918(&qword_1016AB860, a2, type metadata accessor for DeviceBeaconPayloadPublisher);
  v7 = swift_task_alloc();
  v2[40] = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v3;
  v8 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  v2[41] = v9;
  *v9 = v2;
  v9[1] = sub_100860754;

  return withCheckedContinuation<A>(isolation:function:_:)(v9, v5, v6, 0xD000000000000018, 0x80000001013617E0, sub_100862B50, v7, &type metadata for () + 8);
}

uint64_t sub_100860754()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 320);
  v3 = *(*v0 + 312);
  v4 = *(*v0 + 120);
  v6 = *v0;

  return _swift_task_switch(sub_1008608A4, v4, 0);
}

uint64_t sub_1008608A4()
{
  v1 = v0[29];
  v2 = v0[23];
  v3 = v0[21];
  v5 = v0[17];
  v4 = v0[18];

  sub_1008647F4(v2, type metadata accessor for LocationFetcher);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100860958()
{
  v1 = v0[34];
  v2 = v0[32];

  v0[42] = v0[37];
  v3 = v0[15];

  return _swift_task_switch(sub_1008609D4, v3, 0);
}

uint64_t sub_1008609D4()
{
  v1 = v0[42];
  v2 = v0[29];
  v3 = v0[23];
  v4 = v0[21];
  v6 = v0[17];
  v5 = v0[18];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100860A74()
{
  v1 = v0[30];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[21];
  v6 = v0[17];
  v5 = v0[18];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100860B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v5 = type metadata accessor for LocationFetcher();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v18 - v11;
  (*(v9 + 16))(&v18 - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  type metadata accessor for Transaction();
  sub_10086478C(v19, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationFetcher);
  v15 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v16 = swift_allocObject();
  v16[2] = sub_100862B58;
  v16[3] = v14;
  v16[4] = a3;
  sub_100863808(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for LocationFetcher);

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100860D90()
{
  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177CE28);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Done fetching own device locations from disk before publishing own devices.", v3, 2u);
  }

  sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);
  return CheckedContinuation.resume(returning:)();
}

void *sub_100860E8C()
{
  v1 = v0[15];

  v2 = v0[16];

  v3 = v0[17];

  v4 = v0[18];

  v5 = v0[19];

  v6 = v0[20];

  v7 = v0[21];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100860EE4()
{
  sub_100860E8C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100860F34(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for DeviceBeaconPayloadPublisher();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_100860FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DeviceBeaconPayloadPublisher();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_1008610A0(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for DeviceBeaconPayloadPublisher();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_100861148(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.startup()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for DeviceBeaconPayloadPublisher();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.startup()(v6, a2);
}

uint64_t sub_1008611F0(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for DeviceBeaconPayloadPublisher();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.run()(v6, a2);
}

uint64_t sub_100861298()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000D2118;

  return sub_1008592CC();
}

uint64_t sub_100861328(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  v4 = *(*(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8) + 64) + 15;
  *(v3 + 24) = swift_task_alloc();
  v5 = *v2;

  return _swift_task_switch(sub_1008613C4, v5, 0);
}

uint64_t sub_1008613C4()
{
  v1 = v0[3];
  sub_1000D3410(v0[2], v1);
  sub_1008629C0(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10086143C()
{
  v1 = *v0;
  type metadata accessor for DeviceBeaconPayloadPublisher();
  sub_100045918(&qword_101698D50, v2, type metadata accessor for DeviceBeaconPayloadPublisher);
  return ActorServiceProtocol.description.getter();
}

double sub_100861534@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = sub_1000BC4D4(&qword_101698CC0, &unk_101390890);
  sub_100863870(a2, a3, v9, v10, a1 + *(v11 + 48), *(a1 + *(v11 + 64)), v15);
  if (!v4)
  {
    v13 = v17;
    v14 = v15[1];
    *a4 = v15[0];
    *(a4 + 16) = v14;
    result = *&v16;
    *(a4 + 32) = v16;
    *(a4 + 48) = v13;
  }

  return result;
}

uint64_t sub_1008615E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a3;
  v5 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v29 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v29 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v29 - v17;
  v19 = type metadata accessor for BeaconEstimatedLocation();
  if (sub_10062CFC0(*(a1 + *(v19 + 44)), a2))
  {
    sub_1000D3410(v30, v11);
    v30 = v13;
    v20 = *(v13 + 48);
    if (v20(v11, 1, v12) == 1)
    {
      v21 = v11;
    }

    else
    {
      v23 = v11;
      v24 = *(v30 + 32);
      v24(v18, v23, v12);
      sub_1000D3410(a1 + *(v19 + 48), v9);
      if (v20(v9, 1, v12) != 1)
      {
        v25 = v29;
        v24(v29, v9, v12);
        sub_100045918(&qword_1016C9070, 255, &type metadata accessor for Date);
        v26 = dispatch thunk of static Comparable.< infix(_:_:)();
        v27 = *(v30 + 8);
        v27(v25, v12);
        v27(v18, v12);
        v22 = v26 ^ 1;
        return v22 & 1;
      }

      (*(v30 + 8))(v18, v12);
      v21 = v9;
    }

    sub_10000B3A8(v21, &unk_101696900, &unk_10138B1E0);
    v22 = 1;
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t sub_1008618F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v7 = *(type metadata accessor for MemberSharingCircle() - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&qword_1016AB8A0, &unk_1013BF990) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v5[12] = v10;
  v11 = *(v10 - 8);
  v5[13] = v11;
  v5[14] = *(v11 + 64);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_100861A60, a5, 0);
}

uint64_t sub_100861A60()
{
  v1 = *(v0[7] + 16);
  v0[17] = v1;
  if (!v1)
  {
LABEL_8:
    v10 = v0[15];
    v9 = v0[16];
    v12 = v0[10];
    v11 = v0[11];

    v13 = v0[1];

    return v13();
  }

  v2 = 0;
  while (1)
  {
    v0[18] = v2;
    v3 = v0[11];
    v4 = *(v0[7] + 8 * v2 + 32);
    v0[19] = v4;
    v0[4] = v4;
    swift_errorRetain();
    swift_errorRetain();
    v0[20] = sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v5 = type metadata accessor for DeviceBeaconPayloadPublisher.PublishError();
    v6 = swift_dynamicCast();
    v7 = v0[11];
    if (v6)
    {
      break;
    }

    (*(*(v5 - 8) + 56))(v7, 1, 1, v5);
    sub_10000B3A8(v7, &qword_1016AB8A0, &unk_1013BF990);
LABEL_4:
    v2 = v0[18] + 1;
    if (v2 == v0[17])
    {
      goto LABEL_8;
    }
  }

  (*(*(v5 - 8) + 56))(v0[11], 0, 1, v5);
  if (swift_getEnumCaseMultiPayload())
  {
    v8 = v0[11];

    sub_1008647F4(v8, type metadata accessor for DeviceBeaconPayloadPublisher.PublishError);
    goto LABEL_4;
  }

  v15 = v0[16];
  v16 = v0[12];
  v17 = v0[13];
  v18 = v0[11];
  v19 = v0[8];
  v0[21] = *(v18 + *(sub_1000BC4D4(&qword_1016AB8A8, &unk_1013BF9A0) + 48));
  v20 = *(v17 + 32);
  v0[22] = v20;
  v0[23] = (v17 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v20(v15, v18, v16);
  swift_errorRetain();
  v21 = *(v19 + 128);
  v0[24] = v21;

  return _swift_task_switch(sub_100861D14, v21, 0);
}

uint64_t sub_100861D14()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[15];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  (*(v6 + 16))(v4, v0[16], v7);
  v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = swift_allocObject();
  v0[25] = v9;
  *(v9 + 16) = v1;
  v3(v9 + v8, v4, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  v0[26] = v11;
  v12 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v11 = v0;
  v11[1] = sub_100861E80;

  return unsafeBlocking<A>(context:_:)(v0 + 5, 0xD000000000000010, 0x800000010134A8C0, sub_1008646EC, v9, v12);
}

uint64_t sub_100861E80()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v5 = *v0;

  return _swift_task_switch(sub_100861FAC, v3, 0);
}

uint64_t sub_100861FAC()
{
  v1 = v0[8];
  v0[27] = v0[5];
  return _swift_task_switch(sub_100861FD0, v1, 0);
}

uint64_t sub_100861FD0()
{
  v1 = *(v0 + 216);
  v2 = *(v1 + 16);
  *(v0 + 224) = v2;
  if (!v2)
  {
    goto LABEL_13;
  }

  *(v0 + 28) = *(*(v0 + 72) + 80);
  *(v0 + 232) = 0;
  if (!*(v1 + 16))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    v9 = *(v0 + 216);
LABEL_13:
    v10 = *(v0 + 168);
    v11 = *(v0 + 152);
    v12 = *(v0 + 128);
    v13 = *(v0 + 96);
    v14 = *(v0 + 104);

    (*(v14 + 8))(v12, v13);
    v15 = *(v0 + 144) + 1;
    if (v15 == *(v0 + 136))
    {
LABEL_14:
      v17 = *(v0 + 120);
      v16 = *(v0 + 128);
      v19 = *(v0 + 80);
      v18 = *(v0 + 88);

      v20 = *(v0 + 8);

      return v20();
    }

    while (1)
    {
      *(v0 + 144) = v15;
      v22 = *(v0 + 88);
      v23 = *(*(v0 + 56) + 8 * v15 + 32);
      *(v0 + 152) = v23;
      *(v0 + 32) = v23;
      swift_errorRetain();
      swift_errorRetain();
      *(v0 + 160) = sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v24 = type metadata accessor for DeviceBeaconPayloadPublisher.PublishError();
      v25 = swift_dynamicCast();
      v26 = *(v0 + 88);
      if (v25)
      {
        (*(*(v24 - 8) + 56))(*(v0 + 88), 0, 1, v24);
        if (!swift_getEnumCaseMultiPayload())
        {
          v31 = *(v0 + 128);
          v32 = *(v0 + 96);
          v33 = *(v0 + 104);
          v34 = *(v0 + 88);
          v35 = *(v0 + 64);
          *(v0 + 168) = *(v34 + *(sub_1000BC4D4(&qword_1016AB8A8, &unk_1013BF9A0) + 48));
          v36 = *(v33 + 32);
          *(v0 + 176) = v36;
          *(v0 + 184) = (v33 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
          v36(v31, v34, v32);
          swift_errorRetain();
          v37 = *(v35 + 128);
          *(v0 + 192) = v37;

          return _swift_task_switch(sub_100861D14, v37, 0);
        }

        v27 = *(v0 + 88);

        sub_1008647F4(v27, type metadata accessor for DeviceBeaconPayloadPublisher.PublishError);
      }

      else
      {

        (*(*(v24 - 8) + 56))(v26, 1, 1, v24);
        sub_10000B3A8(v26, &qword_1016AB8A0, &unk_1013BF990);
      }

      v15 = *(v0 + 144) + 1;
      if (v15 == *(v0 + 136))
      {
        goto LABEL_14;
      }
    }
  }

  v3 = 0;
  while (1)
  {
    v5 = *(v0 + 160);
    v4 = *(v0 + 168);
    sub_10086478C(v1 + ((*(v0 + 28) + 32) & ~*(v0 + 28)) + *(*(v0 + 72) + 72) * v3, *(v0 + 80), type metadata accessor for MemberSharingCircle);
    *(v0 + 48) = v4;
    swift_errorRetain();
    if (swift_dynamicCast())
    {
      if (*(v0 + 24) == 1 && *(v0 + 16) > 5uLL)
      {
        break;
      }
    }

    v7 = *(v0 + 224);
    v8 = *(v0 + 232) + 1;
    sub_1008647F4(*(v0 + 80), type metadata accessor for MemberSharingCircle);
    if (v8 == v7)
    {
      goto LABEL_12;
    }

    v3 = *(v0 + 232) + 1;
    *(v0 + 232) = v3;
    v1 = *(v0 + 216);
    if (v3 >= *(v1 + 16))
    {
      goto LABEL_11;
    }
  }

  v28 = *(*(v0 + 64) + 160);
  v29 = swift_task_alloc();
  *(v0 + 240) = v29;
  *v29 = v0;
  v29[1] = sub_10086243C;
  v30 = *(v0 + 80);

  return sub_10107F924(v30);
}

uint64_t sub_10086243C()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_10086254C, v2, 0);
}

uint64_t sub_10086254C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232) + 1;
  v3 = sub_1008647F4(*(v0 + 80), type metadata accessor for MemberSharingCircle);
  if (v2 != v1)
  {
    do
    {
      v21 = *(v0 + 232) + 1;
      *(v0 + 232) = v21;
      v22 = *(v0 + 216);
      if (v21 >= *(v22 + 16))
      {
        __break(1u);
        return _swift_task_switch(v3, v4, v5);
      }

      v24 = *(v0 + 160);
      v23 = *(v0 + 168);
      sub_10086478C(v22 + ((*(v0 + 28) + 32) & ~*(v0 + 28)) + *(*(v0 + 72) + 72) * v21, *(v0 + 80), type metadata accessor for MemberSharingCircle);
      *(v0 + 48) = v23;
      swift_errorRetain();
      if (swift_dynamicCast() && *(v0 + 24) == 1 && *(v0 + 16) > 5uLL)
      {
        v25 = *(*(v0 + 64) + 160);
        v26 = swift_task_alloc();
        *(v0 + 240) = v26;
        *v26 = v0;
        v26[1] = sub_10086243C;
        v27 = *(v0 + 80);

        return sub_10107F924(v27);
      }

      v19 = *(v0 + 224);
      v20 = *(v0 + 232) + 1;
      v3 = sub_1008647F4(*(v0 + 80), type metadata accessor for MemberSharingCircle);
    }

    while (v20 != v19);
  }

  v6 = *(v0 + 216);
  v7 = *(v0 + 168);
  v8 = *(v0 + 152);
  v9 = *(v0 + 128);
  v10 = *(v0 + 96);
  v11 = *(v0 + 104);

  (*(v11 + 8))(v9, v10);
  v12 = *(v0 + 144) + 1;
  if (v12 == *(v0 + 136))
  {
LABEL_3:
    v14 = *(v0 + 120);
    v13 = *(v0 + 128);
    v16 = *(v0 + 80);
    v15 = *(v0 + 88);

    v17 = *(v0 + 8);

    return v17();
  }

  while (1)
  {
    *(v0 + 144) = v12;
    v28 = *(v0 + 88);
    v29 = *(*(v0 + 56) + 8 * v12 + 32);
    *(v0 + 152) = v29;
    *(v0 + 32) = v29;
    swift_errorRetain();
    swift_errorRetain();
    *(v0 + 160) = sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v30 = type metadata accessor for DeviceBeaconPayloadPublisher.PublishError();
    v31 = swift_dynamicCast();
    v32 = *(v0 + 88);
    if (v31)
    {
      break;
    }

    (*(*(v30 - 8) + 56))(v32, 1, 1, v30);
    sub_10000B3A8(v32, &qword_1016AB8A0, &unk_1013BF990);
LABEL_17:
    v12 = *(v0 + 144) + 1;
    if (v12 == *(v0 + 136))
    {
      goto LABEL_3;
    }
  }

  (*(*(v30 - 8) + 56))(*(v0 + 88), 0, 1, v30);
  if (swift_getEnumCaseMultiPayload())
  {
    v33 = *(v0 + 88);

    sub_1008647F4(v33, type metadata accessor for DeviceBeaconPayloadPublisher.PublishError);
    goto LABEL_17;
  }

  v34 = *(v0 + 128);
  v35 = *(v0 + 96);
  v36 = *(v0 + 104);
  v37 = *(v0 + 88);
  v38 = *(v0 + 64);
  *(v0 + 168) = *(v37 + *(sub_1000BC4D4(&qword_1016AB8A8, &unk_1013BF9A0) + 48));
  v39 = *(v36 + 32);
  *(v0 + 176) = v39;
  *(v0 + 184) = (v36 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v39(v34, v37, v35);
  swift_errorRetain();
  v4 = *(v38 + 128);
  *(v0 + 192) = v4;
  v3 = sub_100861D14;
  v5 = 0;

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1008629C0(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v12 - v4;
  v6 = [objc_opt_self() standardUserDefaults];
  sub_1000D3410(a1, v5);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  isa = 0;
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v5, v7);
  }

  v10 = String._bridgeToObjectiveC()();
  [v6 setObject:isa forKey:v10];

  swift_unknownObjectRelease();
  return sub_10000B3A8(a1, &unk_101696900, &unk_10138B1E0);
}

uint64_t sub_100862B58()
{
  v0 = *(*(sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60) - 8) + 80);

  return sub_100860D90();
}

uint64_t sub_100862C0C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100E71E90(v4, v5, a1);
}

void sub_100862C80(void *a1@<X8>)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));
  v6 = *(v1 + 16);
  sub_1012DFD84(v5, *(v5 + *(v4 + 64)));
  if (!v2)
  {
    *a1 = v7;
    a1[1] = v8;
    a1[2] = v9;
    a1[3] = v10;
  }
}

uint64_t sub_100862D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void (*a4)(char *, unint64_t)@<X3>, void *a5@<X8>)
{
  v91 = a3;
  v92 = a4;
  v84 = a1;
  v85 = a5;
  v6 = type metadata accessor for UUID();
  v87 = *(v6 - 8);
  v88 = v6;
  v7 = *(v87 + 64);
  __chkstk_darwin(v6);
  v86 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OwnSubmitLocationInfo();
  v10 = *(v9 - 8);
  v81 = v9;
  v82 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v83 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v89 = &v78 - v15;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v80 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v78 - v21;
  v23 = type metadata accessor for BeaconPayloadv1();
  v24 = *(*(v23 - 1) + 64);
  v25 = __chkstk_darwin(v23);
  v27 = (&v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v25);
  v93 = (&v78 - v28);
  v29 = type metadata accessor for BeaconEstimatedLocation();
  v30 = *(a2 + v29[9]);
  v31 = sub_10030B660(v30);
  v32 = *(v17 + 16);
  v33 = (a2 + v29[10]);
  v94 = v16;
  v79 = v32;
  v32(v22, v33, v16);
  v34 = *(a2 + v29[7]);
  v35 = *(a2 + v29[8]);
  Date.timeIntervalSinceReferenceDate.getter();
  if (v36 < 0.0 || v36 > 4294967300.0)
  {
    static os_log_type_t.error.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v38 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
    v39 = 1;
LABEL_24:

    sub_100863768();
    swift_allocError();
    *v68 = v39;
    swift_willThrow();
    return (*(v17 + 8))(v22, v94);
  }

  if (fabs(v34) > 90.0 || fabs(v35) > 180.0)
  {
    static os_log_type_t.error.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v38 = static OS_os_log.default.getter();
    v39 = 2;
    os_log(_:dso:log:_:_:)();
    goto LABEL_24;
  }

  v40 = v91;
  v41 = v92;
  *v27 = v91;
  v27[1] = v41;
  sub_100017D5C(v40, v41);
  Date.timeIntervalSinceReferenceDate.getter();
  if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v42 <= -1.0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v42 >= 4294967300.0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v43 = v23[5];
  Date.init(timeIntervalSinceReferenceDate:)();
  v44 = v22;
  v45 = v94;
  v92 = *(v17 + 8);
  v92(v44, v94);
  *(v27 + v23[6]) = v31;
  v46 = v34 * 10000000.0;
  if (COERCE__INT64(fabs(v34 * 10000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v46 <= -2147483650.0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v46 >= 2147483650.0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  *(v27 + v23[7]) = v46 / 10000000.0;
  v47 = v35 * 10000000.0;
  if (COERCE__INT64(fabs(v35 * 10000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v47 <= -2147483650.0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v47 >= 2147483650.0)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
LABEL_21:
    v56 = type metadata accessor for Logger();
    sub_1000076D4(v56, qword_10177CE28);
    v58 = v86;
    v57 = v87;
    v59 = v88;
    (*(v87 + 16))(v86, v84, v88);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v97 = v63;
      *v62 = 141558275;
      *(v62 + 4) = 1752392040;
      *(v62 + 12) = 2081;
      sub_100045918(&qword_101696930, 255, &type metadata accessor for UUID);
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v65;
      (*(v57 + 8))(v58, v59);
      v67 = sub_1000136BC(v64, v66, &v97);
      v23 = v93;

      *(v62 + 14) = v67;
      _os_log_impl(&_mh_execute_header, v60, v61, "location does not contain a scanDate %{private,mask.hash}s", v62, 0x16u);
      sub_100007BAC(v63);
    }

    else
    {

      (*(v57 + 8))(v58, v59);
    }

    type metadata accessor for DeviceBeaconPayloadPublisher.PublishError();
    sub_100045918(&qword_1016AB878, 255, type metadata accessor for DeviceBeaconPayloadPublisher.PublishError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_100016590(v90, v91);
    sub_100016590(v78, v94);
    return sub_1008647F4(v23, type metadata accessor for BeaconPayloadv1);
  }

  *(v27 + v23[8]) = v47 / 10000000.0;
  *(v27 + v23[9]) = v30;
  *(v27 + v23[10]) = 0;
  v23 = v93;
  sub_100863808(v27, v93, type metadata accessor for BeaconPayloadv1);
  v48 = v90;
  v49 = BeaconPayloadv1.encode()();
  if (!v48)
  {
    v78 = v51;
    v53 = v52;
    v90 = v49;
    v91 = v50;
    v54 = a2 + v29[12];
    v55 = v89;
    sub_1000D3410(v54, v89);
    if ((*(v17 + 48))(v55, 1, v45) != 1)
    {
      v70 = v80;
      (*(v17 + 32))(v80, v55, v45);
      v71 = v83;
      v79(&v83[*(v81 + 20)], v70, v45);
      *v71 = v78;
      v71[1] = v53;
      sub_1000BC4D4(&qword_1016AB880, &unk_1013E3620);
      v72 = *(v82 + 72);
      v73 = v45;
      v74 = (*(v82 + 80) + 32) & ~*(v82 + 80);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_101385D80;
      sub_100863808(v71, v75 + v74, type metadata accessor for OwnSubmitLocationInfo);
      v92(v70, v73);
      result = sub_1008647F4(v23, type metadata accessor for BeaconPayloadv1);
      v76 = v91;
      v77 = v85;
      *v85 = v90;
      v77[1] = v76;
      *(v77 + 16) = 1;
      *(v77 + 17) = v97;
      *(v77 + 5) = *(&v97 + 3);
      v77[3] = 0;
      v77[4] = 0;
      *(v77 + 20) = 6;
      *(v77 + 42) = v95;
      *(v77 + 23) = v96;
      v77[6] = v75;
      return result;
    }

    v94 = v53;
    sub_10000B3A8(v55, &unk_101696900, &unk_10138B1E0);
    if (qword_1016954F0 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_38;
  }

  return sub_1008647F4(v23, type metadata accessor for BeaconPayloadv1);
}

unint64_t sub_100863768()
{
  result = qword_1016AB870;
  if (!qword_1016AB870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AB870);
  }

  return result;
}

uint64_t type metadata accessor for DeviceBeaconPayloadPublisher.PublishError()
{
  result = qword_1016AB920;
  if (!qword_1016AB920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100863808(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100863870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t *a7@<X8>)
{
  v97 = a6;
  v94 = a5;
  v95 = a1;
  v105 = a3;
  v106 = a4;
  v98 = a7;
  v8 = type metadata accessor for UUID();
  v99 = *(v8 - 8);
  v100 = v8;
  v9 = *(v99 + 64);
  __chkstk_darwin(v8);
  v96 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OwnSubmitLocationInfo();
  v12 = *(v11 - 8);
  v91 = v11;
  v92 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v93 = (&v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v101 = &v87 - v17;
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v102 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v87 - v23;
  v25 = type metadata accessor for BeaconPayloadv1();
  v26 = *(*(v25 - 1) + 64);
  v27 = __chkstk_darwin(v25);
  v29 = (&v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v27);
  v104 = &v87 - v30;
  v31 = type metadata accessor for BeaconEstimatedLocation();
  v32 = *(a2 + v31[9]);
  v33 = sub_10030B660(v32);
  v34 = *(v19 + 16);
  v35 = (a2 + v31[10]);
  v107 = v18;
  v90 = v34;
  v34(v24, v35, v18);
  v36 = *(a2 + v31[7]);
  v37 = *(a2 + v31[8]);
  Date.timeIntervalSinceReferenceDate.getter();
  if (v38 < 0.0 || v38 > 4294967300.0)
  {
    static os_log_type_t.error.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v40 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
    v41 = 1;
LABEL_24:

    sub_100863768();
    swift_allocError();
    *v71 = v41;
    swift_willThrow();
    return (*(v19 + 8))(v24, v107);
  }

  if (fabs(v36) > 90.0 || fabs(v37) > 180.0)
  {
    static os_log_type_t.error.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v40 = static OS_os_log.default.getter();
    v41 = 2;
    os_log(_:dso:log:_:_:)();
    goto LABEL_24;
  }

  v42 = v105;
  v43 = v106;
  *v29 = v105;
  v29[1] = v43;
  sub_100017D5C(v42, v43);
  Date.timeIntervalSinceReferenceDate.getter();
  if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v44 <= -1.0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v44 >= 4294967300.0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v45 = v25[5];
  Date.init(timeIntervalSinceReferenceDate:)();
  v105 = *(v19 + 8);
  v105(v24, v107);
  *(v29 + v25[6]) = v33;
  v46 = v36 * 10000000.0;
  if (COERCE__INT64(fabs(v36 * 10000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v46 <= -2147483650.0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v46 >= 2147483650.0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  *(v29 + v25[7]) = v46 / 10000000.0;
  v47 = v37 * 10000000.0;
  if (COERCE__INT64(fabs(v37 * 10000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v47 <= -2147483650.0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v47 >= 2147483650.0)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
LABEL_21:
    v57 = type metadata accessor for Logger();
    sub_1000076D4(v57, qword_10177CE28);
    v59 = v99;
    v58 = v100;
    v60 = v96;
    (*(v99 + 16))(v96, v95, v100);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v88 = v33;
      v64 = v63;
      v65 = swift_slowAlloc();
      v110 = v65;
      *v64 = 141558275;
      *(v64 + 4) = 1752392040;
      *(v64 + 12) = 2081;
      sub_100045918(&qword_101696930, 255, &type metadata accessor for UUID);
      v66 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v60;
      v69 = v68;
      (*(v59 + 8))(v67, v58);
      v70 = sub_1000136BC(v66, v69, &v110);

      *(v64 + 14) = v70;
      _os_log_impl(&_mh_execute_header, v61, v62, "location does not contain a scanDate %{private,mask.hash}s", v64, 0x16u);
      sub_100007BAC(v65);

      v33 = v88;
    }

    else
    {

      (*(v59 + 8))(v60, v58);
    }

    type metadata accessor for DeviceBeaconPayloadPublisher.PublishError();
    sub_100045918(&qword_1016AB878, 255, type metadata accessor for DeviceBeaconPayloadPublisher.PublishError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_100016590(v107, v106);
    sub_100016590(v33, v103);
    return sub_1008647F4(v24, type metadata accessor for BeaconPayloadv1);
  }

  v89 = v19 + 8;
  *(v29 + v25[8]) = v47 / 10000000.0;
  *(v29 + v25[9]) = v32;
  *(v29 + v25[10]) = 0;
  v24 = v104;
  sub_100863808(v29, v104, type metadata accessor for BeaconPayloadv1);
  v48 = v103;
  v49 = BeaconPayloadv1.encode()();
  v106 = v52;
  if (!v48)
  {
    v33 = v50;
    v103 = v51;
    v53 = v49;
    v54 = a2 + v31[12];
    v55 = v101;
    sub_1000D3410(v54, v101);
    v56 = v107;
    if ((*(v19 + 48))(v55, 1, v107) != 1)
    {
      v73 = v102;
      (*(v19 + 32))(v102, v55, v56);
      v74 = v93;
      v90(v93 + *(v91 + 20), v73, v56);
      *v74 = v33;
      v75 = v33;
      v88 = v33;
      v76 = v103;
      v74[1] = v103;
      sub_100017D5C(v75, v76);
      v77 = v53;
      v78 = v106;
      sub_100017D5C(v53, v106);
      v79 = UUID.uuidString.getter();
      v100 = v80;
      v101 = v79;
      v81 = v78;
      sub_1000BC4D4(&qword_1016AB880, &unk_1013E3620);
      v82 = *(v92 + 72);
      v83 = (*(v92 + 80) + 32) & ~*(v92 + 80);
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_101385D80;
      sub_100863808(v74, v84 + v83, type metadata accessor for OwnSubmitLocationInfo);
      sub_100016590(v77, v81);
      sub_100016590(v88, v76);
      v105(v102, v56);
      result = sub_1008647F4(v24, type metadata accessor for BeaconPayloadv1);
      v85 = v98;
      *v98 = v77;
      v85[1] = v81;
      *(v85 + 16) = 2;
      *(v85 + 17) = v110;
      *(v85 + 5) = *(&v110 + 3);
      v86 = v100;
      v85[3] = v101;
      v85[4] = v86;
      *(v85 + 40) = v97;
      *(v85 + 41) = 1;
      *(v85 + 42) = v108;
      *(v85 + 23) = v109;
      v85[6] = v84;
      return result;
    }

    v107 = v53;
    sub_10000B3A8(v55, &unk_101696900, &unk_10138B1E0);
    if (qword_1016954F0 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_38;
  }

  return sub_1008647F4(v24, type metadata accessor for BeaconPayloadv1);
}

unint64_t sub_100864318()
{
  result = qword_1016AB888;
  if (!qword_1016AB888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AB888);
  }

  return result;
}

uint64_t sub_10086436C()
{
  v2 = *(type metadata accessor for Date() - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v0 + 56);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_10085621C(v0 + 16, v4, v0 + v3);
}

uint64_t sub_10086444C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100856668(a1, v5);
}

uint64_t sub_100864504(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_100857980(a1, v4, v5, v7, v6);
}

uint64_t sub_1008645C4(void (*a1)(void), void (*a2)(void))
{
  v5 = v2[2];
  swift_unknownObjectRelease();
  a1(v2[4]);
  a2(v2[5]);

  return _swift_deallocObject(v2, 48);
}

uint64_t sub_10086462C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_1008618F8(a1, v4, v5, v7, v6);
}

uint64_t sub_100864704(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_10086478C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1008647F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100864854()
{
  sub_1008648C8();
  if (v0 <= 0x3F)
  {
    sub_100864948();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1008648C8()
{
  if (!qword_1016AB930)
  {
    type metadata accessor for UUID();
    sub_1000BC580(&qword_101696960, &unk_10138B220);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1016AB930);
    }
  }
}

void sub_100864948()
{
  if (!qword_1016AB938)
  {
    sub_1000BC580(&qword_101696960, &unk_10138B220);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1016AB938);
    }
  }
}

uint64_t sub_1008649D0()
{
  v1 = *(v0 + 2);
  swift_unknownObjectRelease();
  v2 = *(v0 + 5);
  sub_1000BB27C(*(v0 + 4));
  v3 = *(v0 + 6);

  v4 = OBJC_IVAR____TtC12searchpartyd40SelfLocatingBeaconPayloadCacheSubscriber_lastPublishedDate;
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SelfLocatingBeaconPayloadCacheSubscriber()
{
  result = qword_1016AB9A0;
  if (!qword_1016AB9A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100864AE8()
{
  result = type metadata accessor for Date();
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

uint64_t sub_100864B9C(uint64_t a1, uint64_t a2)
{
  *(v3 + 256) = a1;
  *(v3 + 264) = v2;
  if (a2)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  return _swift_task_switch(sub_100864C2C, v4, v6);
}

uint64_t sub_100864C2C()
{
  v73 = v0;
  if (static Task<>.isCancelled.getter())
  {
    v7 = 0;
    v6 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v8 = 0xF000000000000000;
  }

  else
  {
    v1 = *(v0 + 264);
    v3 = *(v1 + 16);
    v2 = *(v1 + 32);
    v4 = *(v1 + 48);
    *(v0 + 80) = *(v1 + 64);
    *(v0 + 48) = v2;
    *(v0 + 64) = v4;
    *(v0 + 32) = v3;
    *(v0 + 16) = *v1;
    v69 = *v1;
    v70 = *(v1 + 8);
    v65 = *(v1 + 24);
    v67 = *(v1 + 16);
    v5 = *(v1 + 56);
    v7 = *(v0 + 64);
    v6 = *(v0 + 72);
    v8 = *(v0 + 80);
    v9 = *(v1 + 64);
    sub_100429C24(v0 + 16, v0 + 88);
    sub_100017D5C(v6, v8);
    sub_100017D5C(v5, v9);
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    *(v0 + 88) = 0x7365547265646E75;
    *(v0 + 96) = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    v10 = sub_100A7563C(v5, v9, 1);
    v12 = v11;
    v63 = v9;
    v64 = v5;
    v13 = v10;
    v14 = String.utf8Data.getter();
    v16 = v15;
    v17 = sub_100A79CBC(v13, v12, v14, v15, 72);
    v62 = v13;
    sub_100495DF4(v17, v18, &v71);
    sub_100016590(v14, v16);
    v28 = v72;
    v61 = v71;
    if (v70 >> 60 == 15)
    {
      sub_100017D5C(v71, v72);
      v29 = sub_100A7A194(v67, v65);
      v66 = v12;
      v31 = v28;
      v32 = sub_100A7A73C(v29, 0, v61, v28);
      CCECCryptorRelease();
      sub_100016590(v61, v31);
      v35 = sub_100A7829C(v32, 0);
      v68 = v31;
      v37 = v36;
      sub_100017D5C(v35, v36);
      v38 = v37;
      v39 = sub_10049C0AC(v35, v37);
      v42 = v41;
      v43 = v39;
      CCECCryptorRelease();
      sub_100016590(v35, v38);
      v45 = v69;
      v44 = v70;
    }

    else
    {
      sub_10002E98C(v69, v70);
      v68 = v28;
      sub_100017D5C(v61, v28);
      v30 = sub_100A7A194(v69, v70);
      v66 = v12;
      v33 = sub_100A7A73C(v30, 1, v61, v28);
      CCECCryptorRelease();
      sub_100016590(v61, v28);
      v34 = sub_100A7829C(v33, 1);
      v59 = v40;
      v60 = v34;
      v55 = sub_100A7829C(v33, 0);
      v56 = v46;
      sub_100017D5C(v60, v59);
      v53 = sub_10049BD68(v60, v59);
      v54 = v47;
      sub_100017D5C(v55, v56);
      v52 = sub_10049C0AC(v55, v56);
      v58 = v50;
      CCECCryptorRelease();
      sub_100016590(v55, v56);
      sub_100016590(v60, v59);
      sub_100006654(v69, v70);
      v43 = v52;
      v45 = v53;
      v42 = v58;
      v44 = v54;
    }

    v57 = v42;
    *(v0 + 160) = v45;
    *(v0 + 168) = v44;
    *(v0 + 176) = v43;
    *(v0 + 184) = v42;
    *(v0 + 192) = v62;
    *(v0 + 200) = v66;
    sub_10099B218(v0 + 160, (v1 + 48), (v1 + 56), v0 + 208);
    v51 = v43;
    v19 = *(v0 + 208);
    v20 = *(v0 + 216);
    v48 = v44;
    v49 = v45;
    v21 = *(v0 + 224);
    v22 = *(v0 + 232);
    v23 = *(v0 + 240);
    v24 = *(v0 + 248);
    sub_100006654(v49, v48);
    sub_100016590(v51, v57);
    sub_100016590(v62, v66);
    sub_100016590(v61, v68);
    sub_100429C80(v0 + 16);
    sub_100016590(v64, v63);
  }

  v25 = *(v0 + 256);
  *v25 = v7;
  v25[1] = v6;
  v25[2] = v8;
  v25[3] = v19;
  v25[4] = v20;
  v25[5] = v21;
  v25[6] = v22;
  v25[7] = v23;
  v25[8] = v24;
  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1008653D0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (!*(*v1 + 16))
  {
    v14 = type metadata accessor for BeaconKeyServiceBuilder.WorkItem(0);
    v10 = *(*(v14 - 8) + 56);
    v13 = v14;
    v11 = a1;
    v12 = 1;
    goto LABEL_6;
  }

  v4 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1006073C4(v3);
    v3 = result;
    v6 = *(result + 16);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_10:
    __break(1u);
    return result;
  }

  v6 = v3[2];
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_4:
  v7 = v6 - 1;
  v8 = type metadata accessor for BeaconKeyServiceBuilder.WorkItem(0);
  v15 = *(v8 - 8);
  v9 = v3 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v7;
  v3[2] = v7;
  *v1 = v3;
  sub_10087EE70(v9, a1, type metadata accessor for BeaconKeyServiceBuilder.WorkItem);
  v10 = *(v15 + 56);
  v11 = a1;
  v12 = 0;
  v13 = v8;
LABEL_6:

  return v10(v11, v12, 1, v13);
}

Swift::Int sub_10086558C(void **a1)
{
  v2 = *(type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B321C4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10087B4D0(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_100865634(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100B321D8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_10087B5FC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1008656AC()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v22 = 0x7365547265646E75;
  v23 = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v24 == 1)
  {
    v10 = NSTemporaryDirectory();
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v22 = v11;
    v23 = v13;
    v14._countAndFlagsBits = 0x2F7370614D79654BLL;
    v14._object = 0xE800000000000000;
    String.append(_:)(v14);
    UUID.init()();
    v15 = UUID.uuidString.getter();
    v17 = v16;
    (*(v6 + 8))(v9, v5);
    v18._countAndFlagsBits = v15;
    v18._object = v17;
    String.append(_:)(v18);

    URL.init(fileURLWithPath:)();
  }

  else
  {
    if (qword_101694C10 != -1)
    {
      swift_once();
    }

    v20 = sub_1000076D4(v0, qword_10177BA58);
    (*(v1 + 16))(v4, v20, v0);
    URL.appendingPathComponent(_:isDirectory:)();
    return (*(v1 + 8))(v4, v0);
  }
}

uint64_t sub_1008659A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_defaultActor_initialize();
  *(v2 + 112) = 0x7972616D697250;
  *(v2 + 120) = 0xE700000000000000;
  *(v2 + 128) = 0x7261646E6F636553;
  *(v2 + 136) = 0xE900000000000079;
  *(v2 + 152) = _swiftEmptyDictionarySingleton;
  *(v2 + 160) = _swiftEmptyDictionarySingleton;
  *(v2 + 168) = 4000;
  *(v2 + 176) = 0u;
  v6 = v2 + 176;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0;
  sub_1008656AC();
  *(v2 + 144) = a1;
  v7 = qword_101694FA8;

  if (v7 != -1)
  {
    swift_once();
  }

  *&v10[0] = 0x7365547265646E75;
  *(&v10[0] + 1) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();

  if (v9 == 1)
  {
    swift_beginAccess();
    sub_100884624(a2, v6);
  }

  else
  {
    sub_10000B3A8(a2, &qword_1016ABF48, &qword_1013BFE28);
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    swift_beginAccess();
    sub_100884624(v10, v6);
  }

  swift_endAccess();
  return v3;
}

uint64_t sub_100865B90()
{
  v1 = *(v0 + 120);
  swift_beginAccess();
  sub_1000D2A70(v1 + 176, v0 + 56, &qword_1016ABF48, &qword_1013BFE28);
  if (*(v0 + 80))
  {
    v2 = *(v0 + 120);
    sub_10000A748((v0 + 56), v0 + 16);
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v3);
    (*(v4 + 8))(v2 + OBJC_IVAR____TtC12searchpartyd23BeaconKeyServiceBuilder_keyMapDirectory, v3, v4);
    sub_100007BAC((v0 + 16));
  }

  else
  {
    sub_10000B3A8(v0 + 56, &qword_1016ABF48, &qword_1013BFE28);
  }

  v5 = *(v0 + 120);
  sub_100866870();
  v6 = swift_task_alloc();
  *(v0 + 128) = v6;
  *v6 = v0;
  v6[1] = sub_100865E18;
  v7 = *(v0 + 120);

  return sub_100865F0C();
}

uint64_t sub_100865E18()
{
  v1 = *(*v0 + 128);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100865F0C()
{
  v1[8] = v0;
  v2 = type metadata accessor for BeaconKeyServiceBuilder.FileKey(0);
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v5 = *(*(type metadata accessor for BeaconIdentifier() - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v6 = type metadata accessor for KeyGenerationBeaconInfo();
  v1[13] = v6;
  v7 = *(v6 - 8);
  v1[14] = v7;
  v8 = *(v7 + 64) + 15;
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_100866054, v0, 0);
}

uint64_t sub_100866054()
{
  v1 = v0;
  v2 = sub_1009BFDBC(*(v0[8] + 144));
  v65 = *(v2 + 16);
  if (!v65)
  {
LABEL_49:

    if (qword_101694A00 != -1)
    {
      swift_once();
    }

    v52 = v1[8];
    v53 = type metadata accessor for Logger();
    v54 = v1;
    sub_1000076D4(v53, qword_1016ABAA8);

    v4 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    v56 = os_log_type_enabled(v4, v55);
    v57 = v54[8];
    if (v56)
    {
      v58 = swift_slowAlloc();
      *v58 = 134217984;
      v11 = v54;
      swift_beginAccess();
      *(v58 + 4) = *(*(v57 + 160) + 16);

      _os_log_impl(&_mh_execute_header, v4, v55, "opened all keymaps, keymaps.count = %ld", v58, 0xCu);
    }

    else
    {
      v11 = v54;
      v59 = v54[8];
    }

    goto LABEL_54;
  }

  v9 = 0;
  v67 = v0[13];
  v68 = v0[14];
  v10 = v0[9];
  v70 = v0[10];
  v11 = v0[8];
  v66 = v2 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
  v64 = v2;
  while (1)
  {
    if (v9 >= *(v2 + 16))
    {
LABEL_62:
      __break(1u);
      swift_once();
      v3 = type metadata accessor for Logger();
      sub_1000076D4(v3, qword_1016ABAA8);
      swift_errorRetain();
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v4, v5))
      {

LABEL_55:
        v60 = v11[15];
        v61 = v11[11];
        v62 = v11[12];

        v63 = v11[1];

        return v63();
      }

      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = _convertErrorToNSError(_:)();
      *(v6 + 4) = v8;
      *v7 = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "Error in openAllKeyMaps(): %@", v6, 0xCu);
      sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);

LABEL_54:

      goto LABEL_55;
    }

    v13 = v1[15];
    v14 = v1[12];
    sub_1000295D4(v66 + *(v68 + 72) * v9, v13, type metadata accessor for KeyGenerationBeaconInfo);
    sub_1000295D4(v13, v14, type metadata accessor for BeaconIdentifier);
    v15 = v13 + *(v67 + 24);
    v16 = *(v15 + 8) >> 60 != 15 && *(v15 + 40) >> 60 != 15;
    v17 = v1[8];
    v69 = v9;
    if (!sub_100874B00(v1[12], 0))
    {
      if (!v16)
      {
        goto LABEL_21;
      }

LABEL_17:
      v18 = v1[8];
      if (sub_100874B00(v1[12], 1))
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v49 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      goto LABEL_21;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v48 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    if (v16)
    {
      goto LABEL_17;
    }

LABEL_21:
    sub_10001F1B0(v1[12], type metadata accessor for BeaconIdentifier);
    if (_swiftEmptyArrayStorage >> 62)
    {
      break;
    }

    v19 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_23;
    }

LABEL_6:
    v9 = v69 + 1;
    v12 = v1[15];

    sub_10001F1B0(v12, type metadata accessor for KeyGenerationBeaconInfo);
    v2 = v64;
    if (v69 + 1 == v65)
    {
      goto LABEL_49;
    }
  }

  v19 = _CocoaArrayWrapper.endIndex.getter();
  if (!v19)
  {
    goto LABEL_6;
  }

LABEL_23:
  v20 = 0;
  v21 = _swiftEmptyArrayStorage & 0xC000000000000001;
  while (2)
  {
    if (v21)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v26 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (v20 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      v25 = _swiftEmptyArrayStorage[v20 + 4];

      v26 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }
    }

    v72 = v26;
    v27 = v1[11];
    sub_1000295D4(v1[15], v27, type metadata accessor for BeaconIdentifier);
    *(v27 + *(v10 + 20)) = *(v25 + OBJC_IVAR____TtC12searchpartyd17BeaconKeyIndexMap_sequence);
    swift_beginAccess();
    v73 = v25;

    v28 = v11[20];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v11[20];
    v11[20] = 0x8000000000000000;
    v31 = sub_100772890(v27);
    v33 = v30[2];
    v34 = (v32 & 1) == 0;
    v35 = __OFADD__(v33, v34);
    v36 = v33 + v34;
    if (v35)
    {
      goto LABEL_59;
    }

    v37 = v32;
    if (v30[3] >= v36)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v43 = v1[11];
        if ((v32 & 1) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      v47 = v31;
      sub_10100B17C();
      v31 = v47;
      v43 = v1[11];
      if (v37)
      {
        goto LABEL_24;
      }

LABEL_39:
      v30[(v31 >> 6) + 8] |= 1 << v31;
      v44 = v31;
      sub_1000295D4(v43, v30[6] + *(v70 + 72) * v31, type metadata accessor for BeaconKeyServiceBuilder.FileKey);
      *(v30[7] + 8 * v44) = v73;
      sub_10001F1B0(v43, type metadata accessor for BeaconKeyServiceBuilder.FileKey);
      v45 = v30[2];
      v35 = __OFADD__(v45, 1);
      v46 = v45 + 1;
      if (v35)
      {
        goto LABEL_60;
      }

      v30[2] = v46;
LABEL_25:
      v24 = v11[20];
      v11[20] = v30;

      swift_endAccess();

      ++v20;
      if (v72 == v19)
      {
        goto LABEL_6;
      }

      continue;
    }

    break;
  }

  v71 = v20;
  v38 = v21;
  v39 = v19;
  v40 = v1;
  v41 = v1[11];
  sub_100FF207C(v36, isUniquelyReferenced_nonNull_native);
  v31 = sub_100772890(v41);
  if ((v37 & 1) == (v42 & 1))
  {
    v1 = v40;
    v19 = v39;
    v21 = v38;
    v20 = v71;
    v43 = v1[11];
    if ((v37 & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_24:
    v22 = v30[7];
    v23 = *(v22 + 8 * v31);
    *(v22 + 8 * v31) = v73;

    sub_10001F1B0(v43, type metadata accessor for BeaconKeyServiceBuilder.FileKey);
    goto LABEL_25;
  }

  v50 = v40[9];

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

void sub_100866870()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = __chkstk_darwin(v1);
  v6 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v51 - v7;
  v9 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v51 - v11;
  v54 = type metadata accessor for DirectorySequence();
  v53 = *(v54 - 8);
  v13 = *(v53 + 64);
  __chkstk_darwin(v54);
  v15 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = [objc_opt_self() defaultManager];
  sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
  v16 = OBJC_IVAR____TtC12searchpartyd23BeaconKeyServiceBuilder_keyMapDirectory;
  static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
  swift_beginAccess();
  sub_1000D2A70(v0 + 176, &v67, &qword_1016ABF48, &qword_1013BFE28);
  v62 = v12;
  v55 = v16;
  if (v68)
  {
    sub_10000A748(&v67, v69);
    v17 = v70;
    v18 = v71;
    sub_1000035D0(v69, v70);
    v19 = *(v18 + 8);
    v20 = v18;
    v12 = v62;
    v19(v0 + v55, v17, v20);
    sub_100007BAC(v69);
  }

  else
  {
    sub_10000B3A8(&v67, &qword_1016ABF48, &qword_1013BFE28);
  }

  v52 = v0;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();
  DirectorySequence.next()();
  v65 = v2[6];
  v66 = v2 + 6;
  if (v65(v12, 1, v1) != 1)
  {
    v26 = v2[4];
    v25 = v2 + 4;
    v64 = v26;
    v27 = (v25 - 3);
    v59 = (v25 - 2);
    *&v21 = 136315138;
    v56 = v21;
    v60 = (v25 - 3);
    v58 = v25;
    v57 = v8;
    v61 = v15;
    v26(v8, v12, v1);
    while (1)
    {
      URL.lastPathComponent.getter();
      v30._countAndFlagsBits = 46;
      v30._object = 0xE100000000000000;
      v31 = String.hasPrefix(_:)(v30);

      if (v31)
      {
        if (qword_101694A00 != -1)
        {
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        sub_1000076D4(v32, qword_1016ABAA8);
        (*v59)(v6, v8, v1);
        v33 = v6;
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v69[0] = v37;
          *v36 = v56;
          sub_10087E3E8(&qword_1016B14E0, &type metadata accessor for URL);
          v38 = dispatch thunk of CustomStringConvertible.description.getter();
          v40 = v39;
          v29 = *v27;
          v29(v33, v1);
          v41 = sub_1000136BC(v38, v40, v69);
          v8 = v57;

          *(v36 + 4) = v41;
          _os_log_impl(&_mh_execute_header, v34, v35, "cleanup removing %s", v36, 0xCu);
          sub_100007BAC(v37);
        }

        else
        {

          v29 = *v27;
          v29(v33, v1);
        }

        v6 = v33;
        URL._bridgeToObjectiveC()(v42);
        v44 = v43;
        v69[0] = 0;
        v45 = [v63 removeItemAtURL:v43 error:v69];

        v46 = v69[0];
        v15 = v61;
        v12 = v62;
        if ((v45 & 1) == 0)
        {
          v50 = v46;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v29(v8, v1);
          (*(v53 + 8))(v15, v54);
          return;
        }

        v28 = v60;
      }

      else
      {
        v28 = v27;
        v29 = *v27;
      }

      v29(v8, v1);
      DirectorySequence.next()();
      v27 = v28;
      if (v65(v12, 1, v1) == 1)
      {
        break;
      }

      v64(v8, v12, v1);
    }
  }

  (*(v53 + 8))(v15, v54);
  v22 = v52;
  v23 = v55;
  v24 = v51[1];
  NSFileManager.removeEmptyDirectoriesRecursively(baseURL:)();
  if (v24)
  {
  }

  else
  {
    sub_1000D2A70(v22 + 176, &v67, &qword_1016ABF48, &qword_1013BFE28);
    if (v68)
    {
      sub_10000A748(&v67, v69);
      v47 = v23;
      v48 = v70;
      v49 = v71;
      sub_1000035D0(v69, v70);
      (*(v49 + 16))(v22 + v47, v48, v49);

      sub_100007BAC(v69);
    }

    else
    {

      sub_10000B3A8(&v67, &qword_1016ABF48, &qword_1013BFE28);
    }
  }
}

uint64_t sub_10086700C()
{
  v1 = *(v0 + 15);

  v2 = *(v0 + 17);

  v3 = *(v0 + 18);

  v4 = *(v0 + 19);

  v5 = *(v0 + 20);

  sub_10000B3A8((v0 + 176), &qword_1016ABF48, &qword_1013BFE28);
  v6 = OBJC_IVAR____TtC12searchpartyd23BeaconKeyServiceBuilder_keyMapDirectory;
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1008670EC()
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

uint64_t sub_1008671C8()
{
  v1[3] = v0;
  v1[4] = *v0;
  v2 = type metadata accessor for UUID();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v1[10] = *(v6 + 64);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v7 = *(type metadata accessor for KeyGenerationBeaconInfo() - 8);
  v1[13] = v7;
  v8 = *(v7 + 64) + 15;
  v1[14] = swift_task_alloc();
  v9 = *(type metadata accessor for BeaconIdentifier() - 8);
  v1[15] = v9;
  v1[16] = *(v9 + 64);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return _swift_task_switch(sub_1008673FC, 0, 0);
}

uint64_t sub_1008673FC()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = qword_10177B348;
  *(v0 + 168) = qword_10177B348;
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 176) = v3;
  *v3 = v0;
  v3[1] = sub_1008674FC;

  return unsafeBlocking<A>(_:)(v0 + 16, sub_1000D2BE0, v1, &type metadata for Configuration);
}

uint64_t sub_1008674FC()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return _swift_task_switch(sub_100867614, 0, 0);
}

uint64_t sub_100867614()
{
  v1 = *(v0 + 16);
  v2 = sub_10107477C(v1);
  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  *(v0 + 184) = 96 * v2;
  if (!is_mul_ok(v2, 0x60uLL))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v2 = sub_101074798(v1);
  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *(v0 + 192) = 96 * v2;
  if (!is_mul_ok(v2, 0x60uLL))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v2 = sub_1010747EC(v1);
  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  *(v0 + 200) = 96 * v2;
  if (!is_mul_ok(v2, 0x60uLL))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v10 = sub_1010747B4(v1);

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  *(v0 + 208) = 96 * v10;
  if (!is_mul_ok(v10, 0x60uLL))
  {
LABEL_44:
    __break(1u);
    return withTaskGroup<A, B>(of:returning:isolation:body:)(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v11 = *(v0 + 24);
  *(v0 + 216) = mach_continuous_time();
  *(v0 + 224) = sub_1008687F4();
  v12 = sub_1009BF810(*(*(v0 + 24) + 144));
  *(v0 + 232) = v12;
  v13 = v12;

  v15 = sub_10111E888(v14);
  v16 = *(v13 + 16);
  if (v16)
  {
    v17 = *(v0 + 120);
    v18 = *(v0 + 104);
    sub_101124760(0, v16, 0);
    v19 = v13 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v20 = *(v18 + 72);
    do
    {
      v21 = *(v0 + 160);
      v22 = *(v0 + 112);
      sub_1000295D4(v19, v22, type metadata accessor for KeyGenerationBeaconInfo);
      sub_1000295D4(v22, v21, type metadata accessor for BeaconIdentifier);
      sub_10001F1B0(v22, type metadata accessor for KeyGenerationBeaconInfo);
      v24 = _swiftEmptyArrayStorage[2];
      v23 = _swiftEmptyArrayStorage[3];
      if (v24 >= v23 >> 1)
      {
        sub_101124760(v23 > 1, v24 + 1, 1);
      }

      v25 = *(v0 + 160);
      _swiftEmptyArrayStorage[2] = v24 + 1;
      sub_10087EE70(v25, _swiftEmptyArrayStorage + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v24, type metadata accessor for BeaconIdentifier);
      v19 += v20;
      --v16;
    }

    while (v16);
  }

  v26 = sub_10112B154(_swiftEmptyArrayStorage);

  if (*(v26 + 16) <= v15[2] >> 3)
  {
    sub_10087DCC8(v26);

    v27 = v15;
  }

  else
  {
    v27 = sub_10061642C(v26, v15);
  }

  v28 = 0;
  *(v0 + 240) = v27;
  v29 = *(v27 + 32);
  *(v0 + 312) = v29;
  v30 = 1 << v29;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  else
  {
    v31 = -1;
  }

  v32 = v31 & v27[7];
  while (v32)
  {
    v33 = *(v0 + 240);
LABEL_28:
    *(v0 + 248) = v32;
    *(v0 + 256) = v28;
    v35 = *(v0 + 224);
    v37 = *(v0 + 144);
    v36 = *(v0 + 152);
    sub_1000295D4(*(v33 + 48) + *(*(v0 + 120) + 72) * (__clz(__rbit64(v32)) | (v28 << 6)), v36, type metadata accessor for BeaconIdentifier);
    sub_10087EE70(v36, v37, type metadata accessor for BeaconIdentifier);
    if (*(v35 + 16))
    {
      v38 = *(v0 + 224);
      v39 = sub_100038994(*(v0 + 144));
      if (v40)
      {
        v42 = *(v0 + 136);
        v41 = *(v0 + 144);
        v64 = *(v0 + 128);
        v65 = v41;
        v63 = *(v0 + 120);
        v43 = *(v0 + 88);
        v44 = *(v0 + 96);
        v45 = *(v0 + 72);
        v46 = *(v0 + 80);
        v47 = *(v0 + 64);
        v48 = *(v0 + 32);
        v66 = v48;
        v67 = *(v0 + 56);
        v68 = *(v0 + 24);
        v49 = *(v45 + 16);
        v49(v44, *(*(v0 + 224) + 56) + *(v45 + 72) * v39, v47);
        v49(v43, v44, v47);
        sub_1000295D4(v41, v42, type metadata accessor for BeaconIdentifier);
        v50 = (*(v45 + 80) + 16) & ~*(v45 + 80);
        v51 = (v46 + *(v63 + 80) + v50) & ~*(v63 + 80);
        v52 = swift_allocObject();
        *(v0 + 264) = v52;
        (*(v45 + 32))(v52 + v50, v43, v47);
        sub_10087EE70(v42, v52 + v51, type metadata accessor for BeaconIdentifier);
        *(v52 + ((v64 + v51 + 7) & 0xFFFFFFFFFFFFFFF8)) = v66;
        UUID.init()();
        v53 = swift_task_alloc();
        *(v0 + 272) = v53;
        v53[2] = v67;
        v53[3] = &unk_1013BFC50;
        v53[4] = v52;
        v53[5] = v68;
        v53[6] = v65;
        v54 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
        v55 = swift_task_alloc();
        *(v0 + 280) = v55;
        *v55 = v0;
        v55[1] = sub_100867DB0;

        return withCheckedContinuation<A>(isolation:function:_:)(v55, 0, 0, 0xD000000000000027, 0x8000000101361B00, sub_10087E2F4, v53, &type metadata for () + 8);
      }
    }

    v32 &= v32 - 1;
    v2 = sub_10001F1B0(*(v0 + 144), type metadata accessor for BeaconIdentifier);
  }

  while (1)
  {
    v34 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    v33 = *(v0 + 240);
    if (v34 >= (((1 << *(v0 + 312)) + 63) >> 6))
    {
      break;
    }

    v32 = *(v33 + 8 * v34 + 56);
    ++v28;
    if (v32)
    {
      v28 = v34;
      goto LABEL_28;
    }
  }

  v56 = *(v0 + 224);
  v57 = *(v0 + 232);
  v59 = *(v0 + 24);
  v58 = *(v0 + 32);
  v69 = *(v0 + 184);
  v70 = *(v0 + 200);

  v60 = swift_task_alloc();
  *(v0 + 288) = v60;
  *(v60 + 16) = v57;
  *(v60 + 24) = v59;
  *(v60 + 32) = v69;
  *(v60 + 48) = v70;
  *(v60 + 64) = v58;
  v61 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v2 = swift_task_alloc();
  *(v0 + 296) = v2;
  *v2 = v0;
  *(v2 + 8) = sub_100868374;
  v3 = &type metadata for () + 8;
  v7 = &unk_1013BFC60;
  v4 = &type metadata for () + 8;
  v5 = 0;
  v6 = 0;
  v8 = v60;
  v9 = &type metadata for () + 8;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100867DB0()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);
  v4 = *v0;

  return _swift_task_switch(sub_100867EC8, 0, 0);
}

uint64_t sub_100867EC8()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 144);
  v3 = *(v0 + 96);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = *(v0 + 40);

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v3, v4);
  v9 = sub_10001F1B0(v2, type metadata accessor for BeaconIdentifier);
  v17 = *(v0 + 256);
  v18 = (*(v0 + 248) - 1) & *(v0 + 248);
  while (v18)
  {
    v19 = *(v0 + 240);
LABEL_9:
    *(v0 + 248) = v18;
    *(v0 + 256) = v17;
    v21 = *(v0 + 224);
    v23 = *(v0 + 144);
    v22 = *(v0 + 152);
    sub_1000295D4(*(v19 + 48) + *(*(v0 + 120) + 72) * (__clz(__rbit64(v18)) | (v17 << 6)), v22, type metadata accessor for BeaconIdentifier);
    sub_10087EE70(v22, v23, type metadata accessor for BeaconIdentifier);
    if (*(v21 + 16))
    {
      v24 = *(v0 + 224);
      v25 = sub_100038994(*(v0 + 144));
      if (v26)
      {
        v28 = *(v0 + 136);
        v27 = *(v0 + 144);
        v49 = *(v0 + 120);
        v50 = *(v0 + 128);
        v29 = *(v0 + 88);
        v30 = *(v0 + 96);
        v31 = *(v0 + 72);
        v32 = *(v0 + 80);
        v33 = *(v0 + 64);
        v51 = *(v0 + 56);
        v56 = *(v0 + 32);
        v53 = *(v0 + 24);
        v34 = *(v31 + 16);
        v34(v30, *(*(v0 + 224) + 56) + *(v31 + 72) * v25, v33);
        v34(v29, v30, v33);
        v35 = v27;
        sub_1000295D4(v27, v28, type metadata accessor for BeaconIdentifier);
        v36 = (*(v31 + 80) + 16) & ~*(v31 + 80);
        v37 = (v32 + *(v49 + 80) + v36) & ~*(v49 + 80);
        v38 = swift_allocObject();
        *(v0 + 264) = v38;
        (*(v31 + 32))(v38 + v36, v29, v33);
        sub_10087EE70(v28, v38 + v37, type metadata accessor for BeaconIdentifier);
        *(v38 + ((v50 + v37 + 7) & 0xFFFFFFFFFFFFFFF8)) = v56;
        UUID.init()();
        v39 = swift_task_alloc();
        *(v0 + 272) = v39;
        v39[2] = v51;
        v39[3] = &unk_1013BFC50;
        v39[4] = v38;
        v39[5] = v53;
        v39[6] = v35;
        v40 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
        v41 = swift_task_alloc();
        *(v0 + 280) = v41;
        *v41 = v0;
        v41[1] = sub_100867DB0;

        return withCheckedContinuation<A>(isolation:function:_:)(v41, 0, 0, 0xD000000000000027, 0x8000000101361B00, sub_10087E2F4, v39, &type metadata for () + 8);
      }
    }

    v18 &= v18 - 1;
    v9 = sub_10001F1B0(*(v0 + 144), type metadata accessor for BeaconIdentifier);
  }

  while (1)
  {
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      return withTaskGroup<A, B>(of:returning:isolation:body:)(v9, v10, v11, v12, v13, v14, v15, v16);
    }

    v19 = *(v0 + 240);
    if (v20 >= (((1 << *(v0 + 312)) + 63) >> 6))
    {
      break;
    }

    v18 = *(v19 + 8 * v20 + 56);
    ++v17;
    if (v18)
    {
      v17 = v20;
      goto LABEL_9;
    }
  }

  v42 = *(v0 + 224);
  v43 = *(v0 + 232);
  v45 = *(v0 + 24);
  v44 = *(v0 + 32);
  v52 = *(v0 + 184);
  v54 = *(v0 + 200);

  v46 = swift_task_alloc();
  *(v0 + 288) = v46;
  *(v46 + 16) = v43;
  *(v46 + 24) = v45;
  *(v46 + 32) = v52;
  *(v46 + 48) = v54;
  *(v46 + 64) = v44;
  v47 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v9 = swift_task_alloc();
  *(v0 + 296) = v9;
  *v9 = v0;
  v9[1] = sub_100868374;
  v10 = &type metadata for () + 8;
  v14 = &unk_1013BFC60;
  v11 = &type metadata for () + 8;
  v12 = 0;
  v13 = 0;
  v15 = v46;
  v16 = &type metadata for () + 8;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_100868374()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 288);
  v3 = *(*v0 + 232);
  v5 = *v0;

  return _swift_task_switch(sub_1008684A8, 0, 0);
}

uint64_t sub_1008684A8()
{
  v1 = swift_task_alloc();
  *(v0 + 304) = v1;
  *v1 = v0;
  v1[1] = sub_100868538;
  v2 = *(v0 + 24);

  return sub_100865F0C();
}

uint64_t sub_100868538()
{
  v1 = *(*v0 + 304);
  v3 = *v0;

  return _swift_task_switch(sub_100868634, 0, 0);
}

uint64_t sub_100868634()
{
  v2 = v1[27];
  v3 = mach_continuous_time();
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (v4)
  {
    v0 = convertToNanoseconds(_:)(v5);
    if (qword_101694A00 == -1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_4:
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_1016ABAA8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = v0 / 1000000.0;
    _os_log_impl(&_mh_execute_header, v7, v8, "validateKeys duration: %f ms", v9, 0xCu);
  }

  v11 = v1[19];
  v10 = v1[20];
  v13 = v1[17];
  v12 = v1[18];
  v14 = v1[14];
  v16 = v1[11];
  v15 = v1[12];
  v17 = v1[7];

  v18 = v1[1];

  return v18();
}

uint64_t sub_1008687F4()
{
  v116 = type metadata accessor for BeaconIdentifier();
  v113 = *(v116 - 8);
  v0 = *(v113 + 64);
  v1 = __chkstk_darwin(v116);
  v120 = &v109 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v119 = &v109 - v3;
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v135 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v109 - v8;
  v148 = type metadata accessor for UUID();
  v145 = *(v148 - 8);
  v10 = *(v145 + 64);
  v11 = __chkstk_darwin(v148);
  v118 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v123 = &v109 - v13;
  v14 = type metadata accessor for URL();
  v124 = *(v14 - 8);
  v15 = *(v124 + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v134 = &v109 - v20;
  v21 = __chkstk_darwin(v19);
  v117 = &v109 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v109 - v24;
  __chkstk_darwin(v23);
  v27 = &v109 - v26;
  v28 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v130 = &v109 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v109 - v32;
  v125 = type metadata accessor for DirectorySequence();
  v34 = *(v125 - 8);
  v35 = *(v34 + 64);
  v36 = __chkstk_darwin(v125);
  v131 = &v109 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v39 = &v109 - v38;
  v126 = [objc_opt_self() defaultManager];
  NSFileManager.flatSequence(at:includingPropertiesForKeys:)();
  v137 = v39;
  DirectorySequence.next()();
  v40 = v124;
  v41 = *(v124 + 48);
  v136 = v33;
  v122 = v14;
  v146 = v41;
  v147 = v124 + 48;
  if (v41(v33, 1, v14) == 1)
  {
    v43 = _swiftEmptyDictionarySingleton;
    v44 = v34;
LABEL_38:
    (*(v44 + 8))(v137, v125);

    return v43;
  }

  v46 = *(v40 + 32);
  v45 = v40 + 32;
  v143 = (v145 + 48);
  v144 = v46;
  v141 = (v45 - 16);
  v142 = (v45 - 24);
  v115 = (v145 + 32);
  v111 = (v145 + 16);
  v114 = (v145 + 8);
  v145 = v45;
  v109 = v45 + 8;
  v112 = (v34 + 8);
  v43 = _swiftEmptyDictionarySingleton;
  *&v42 = 136315138;
  v132 = v42;
  v121 = _swiftEmptyDictionarySingleton;
  v129 = v9;
  v139 = v18;
  v47 = v122;
  v44 = v34;
  v140 = v34;
  v48 = v136;
  v138 = v25;
  v133 = v27;
  while (1)
  {
    v127 = v43;
    while (1)
    {
      v144(v27, v48, v47);
      URL.lastPathComponent.getter();
      UUID.init(uuidString:)();

      v51 = *v143;
      if ((*v143)(v9, 1, v148) != 1)
      {
        break;
      }

      sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
      if (qword_101694A00 != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      sub_1000076D4(v52, qword_1016ABAA8);
      (*v141)(v18, v27, v47);
      v53 = Logger.logObject.getter();
      v54 = v27;
      v55 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v53, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v149 = v57;
        *v56 = v132;
        sub_10087E3E8(&qword_1016B14E0, &type metadata accessor for URL);
        v58 = dispatch thunk of CustomStringConvertible.description.getter();
        v60 = v59;
        v61 = *v142;
        (*v142)(v139, v47);
        v62 = sub_1000136BC(v58, v60, &v149);
        v18 = v139;

        *(v56 + 4) = v62;
        _os_log_impl(&_mh_execute_header, v53, v55, "Skipping unexpected folder: %s", v56, 0xCu);
        sub_100007BAC(v57);
        v9 = v129;

        v27 = v133;
        v61(v133, v47);
      }

      else
      {

        v49 = *v142;
        (*v142)(v18, v47);
        v49(v54, v47);
        v27 = v54;
      }

      v48 = v136;
      DirectorySequence.next()();
      v50 = v146(v48, 1, v47);
      v25 = v138;
      v44 = v140;
      if (v50 == 1)
      {
        v43 = v127;
        goto LABEL_38;
      }
    }

    v128 = v51;
    v110 = *v115;
    v110(v123, v9, v148);
    NSFileManager.flatSequence(at:includingPropertiesForKeys:)();
    v63 = v130;
    DirectorySequence.next()();
    if (v146(v63, 1, v47) != 1)
    {
      break;
    }

LABEL_13:
    v64 = v121;
LABEL_14:
    (*v112)(v131, v125);
    (*v114)(v123, v148);
    (*v142)(v27, v47);
    v48 = v136;
    DirectorySequence.next()();
    v65 = v146(v48, 1, v47);
    v121 = v64;
    v9 = v129;
    v43 = v127;
    if (v65 == 1)
    {
      goto LABEL_38;
    }
  }

  v64 = v127;
  while (1)
  {
    v127 = v64;
    v66 = v134;
    while (1)
    {
      v144(v25, v63, v47);
      URL.lastPathComponent.getter();
      v69 = v135;
      UUID.init(uuidString:)();

      if (v128(v69, 1, v148) != 1)
      {
        break;
      }

      sub_10000B3A8(v135, &qword_1016980D0, &unk_10138F3B0);
      if (qword_101694A00 != -1)
      {
        swift_once();
      }

      v70 = type metadata accessor for Logger();
      sub_1000076D4(v70, qword_1016ABAA8);
      (*v141)(v66, v25, v47);
      v71 = v25;
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v149 = v75;
        *v74 = v132;
        sub_10087E3E8(&qword_1016B14E0, &type metadata accessor for URL);
        v76 = dispatch thunk of CustomStringConvertible.description.getter();
        v78 = v77;
        v79 = *v142;
        (*v142)(v134, v47);
        v80 = sub_1000136BC(v76, v78, &v149);
        v18 = v139;

        *(v74 + 4) = v80;
        _os_log_impl(&_mh_execute_header, v72, v73, "Skipping unexpected folder: %s", v74, 0xCu);
        sub_100007BAC(v75);
        v66 = v134;

        v25 = v138;
        v79(v138, v47);
        v27 = v133;
      }

      else
      {

        v67 = *v142;
        (*v142)(v66, v47);
        v67(v71, v47);
        v25 = v71;
      }

      v63 = v130;
      DirectorySequence.next()();
      v68 = v146(v63, 1, v47);
      v44 = v140;
      if (v68 == 1)
      {
        goto LABEL_13;
      }
    }

    v81 = v118;
    v82 = v148;
    v110(v118, v135, v148);
    v83 = *v111;
    v84 = v119;
    (*v111)(v119, v123, v82);
    v83(v84 + *(v116 + 20), v81, v82);
    v85 = v120;
    sub_1000295D4(v84, v120, type metadata accessor for BeaconIdentifier);
    (*v141)(v117, v25, v122);
    v86 = v121;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v149 = v86;
    v88 = sub_100038994(v85);
    v90 = *(v86 + 16);
    v91 = (v89 & 1) == 0;
    v92 = __OFADD__(v90, v91);
    v93 = v90 + v91;
    if (v92)
    {
      break;
    }

    v94 = v89;
    if (*(v86 + 24) < v93)
    {
      sub_100FF24CC(v93, isUniquelyReferenced_nonNull_native);
      v88 = sub_100038994(v120);
      if ((v94 & 1) != (v95 & 1))
      {
        goto LABEL_41;
      }

LABEL_30:
      v64 = v149;
      if (v94)
      {
        goto LABEL_31;
      }

      goto LABEL_33;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_30;
    }

    v99 = v88;
    sub_10100B1B8();
    v88 = v99;
    v64 = v149;
    if (v94)
    {
LABEL_31:
      v96 = v124;
      v97 = v122;
      (*(v124 + 40))(v64[7] + *(v124 + 72) * v88, v117, v122);
      sub_10001F1B0(v120, type metadata accessor for BeaconIdentifier);
      sub_10001F1B0(v119, type metadata accessor for BeaconIdentifier);
      (*v114)(v118, v148);
      v98 = *(v96 + 8);
      v47 = v97;
      v98(v25, v97);
      goto LABEL_35;
    }

LABEL_33:
    v64[(v88 >> 6) + 8] |= 1 << v88;
    v100 = v88;
    v101 = v120;
    sub_1000295D4(v120, v64[6] + *(v113 + 72) * v88, type metadata accessor for BeaconIdentifier);
    v102 = v124;
    v103 = v122;
    v144((v64[7] + *(v124 + 72) * v100), v117, v122);
    v104 = v101;
    v47 = v103;
    sub_10001F1B0(v104, type metadata accessor for BeaconIdentifier);
    sub_10001F1B0(v119, type metadata accessor for BeaconIdentifier);
    (*v114)(v118, v148);
    (*(v102 + 8))(v25, v103);
    v105 = v64[2];
    v92 = __OFADD__(v105, 1);
    v106 = v105 + 1;
    if (v92)
    {
      goto LABEL_40;
    }

    v64[2] = v106;
    v18 = v139;
LABEL_35:
    DirectorySequence.next()();
    v63 = v130;
    v107 = v146(v130, 1, v47);
    v121 = v64;
    v127 = v64;
    if (v107 == 1)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100869810(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for BeaconIdentifier();
  v2[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_10086990C, 0, 0);
}

uint64_t sub_10086990C()
{
  v46 = v0;
  v1 = v0[2];
  v2 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v3 = String._bridgeToObjectiveC()();

  LODWORD(v1) = [v2 fileExistsAtPath:v3];

  if (v1)
  {
    if (qword_101694A00 != -1)
    {
      swift_once();
    }

    v5 = v0[8];
    v4 = v0[9];
    v6 = v0[5];
    v7 = v0[6];
    v9 = v0[3];
    v8 = v0[4];
    v10 = v0[2];
    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_1016ABAA8);
    sub_1000295D4(v9, v4, type metadata accessor for BeaconIdentifier);
    sub_1000295D4(v9, v5, type metadata accessor for BeaconIdentifier);
    (*(v6 + 16))(v7, v10, v8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    v14 = os_log_type_enabled(v12, v13);
    v16 = v0[8];
    v15 = v0[9];
    if (v14)
    {
      v43 = v0[6];
      v44 = v0[5];
      v40 = v0[7];
      v41 = v0[4];
      v17 = swift_slowAlloc();
      v45[0] = swift_slowAlloc();
      *v17 = 141559043;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2081;
      type metadata accessor for UUID();
      v42 = v13;
      sub_10087E3E8(&qword_101696930, &type metadata accessor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      sub_10001F1B0(v15, type metadata accessor for BeaconIdentifier);
      v21 = sub_1000136BC(v18, v20, v45);

      *(v17 + 14) = v21;
      *(v17 + 22) = 2160;
      *(v17 + 24) = 1752392040;
      *(v17 + 32) = 2081;
      v22 = v16 + *(v40 + 20);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      sub_10001F1B0(v16, type metadata accessor for BeaconIdentifier);
      v26 = sub_1000136BC(v23, v25, v45);

      *(v17 + 34) = v26;
      *(v17 + 42) = 2080;
      sub_10087E3E8(&qword_1016B14E0, &type metadata accessor for URL);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      (*(v44 + 8))(v43, v41);
      v30 = sub_1000136BC(v27, v29, v45);

      *(v17 + 44) = v30;
      _os_log_impl(&_mh_execute_header, v12, v42, "Purging KeyMaps for %{private,mask.hash}s/%{private,mask.hash}s: %s", v17, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v32 = v0[5];
      v31 = v0[6];
      v33 = v0[4];

      (*(v32 + 8))(v31, v33);
      sub_10001F1B0(v16, type metadata accessor for BeaconIdentifier);
      sub_10001F1B0(v15, type metadata accessor for BeaconIdentifier);
    }

    v34 = v0[2];
    sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
    static NSFileManager.removeDirectory(url:)();
  }

  v36 = v0[8];
  v35 = v0[9];
  v37 = v0[6];

  v38 = v0[1];

  return v38();
}

uint64_t sub_100869EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a8;
  v8[16] = v13;
  v8[13] = a6;
  v8[14] = a7;
  v8[11] = a4;
  v8[12] = a5;
  v8[9] = a2;
  v8[10] = a3;
  v9 = *(type metadata accessor for KeyGenerationBeaconInfo() - 8);
  v8[17] = v9;
  v8[18] = *(v9 + 64);
  v8[19] = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();

  return _swift_task_switch(sub_100869FBC, 0, 0);
}

uint64_t sub_100869FBC()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 136);
    v37 = **(v0 + 72);
    v4 = *(v3 + 80);
    v5 = v1 + ((v4 + 32) & ~v4);
    v36 = *(v3 + 72);
    v35 = (v4 + 40) & ~v4;
    v34 = (*(v0 + 144) + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
    v32 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
    v31 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
    v6 = type metadata accessor for TaskPriority();
    v7 = *(v6 - 8);
    v30 = *(v7 + 56);
    v29 = (v7 + 48);
    v28 = (v7 + 8);
    do
    {
      v43 = v2;
      v10 = *(v0 + 160);
      v11 = *(v0 + 168);
      v12 = *(v0 + 152);
      v40 = *(v0 + 120);
      v41 = *(v0 + 128);
      v39 = *(v0 + 112);
      v38 = *(v0 + 104);
      v14 = *(v0 + 88);
      v13 = *(v0 + 96);
      v30(v11, 1, 1, v6);
      v42 = v5;
      sub_1000295D4(v5, v12, type metadata accessor for KeyGenerationBeaconInfo);
      v15 = swift_allocObject();
      v15[2] = 0;
      v16 = v15 + 2;
      v15[3] = 0;
      v15[4] = v14;
      sub_10087EE70(v12, v15 + v35, type metadata accessor for KeyGenerationBeaconInfo);
      *(v15 + v34) = v13;
      *(v15 + v33) = v38;
      *(v15 + v32) = v39;
      *(v15 + v31) = v40;
      *(v15 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8)) = v41;
      sub_1000D2A70(v11, v10, &qword_101698C00, &qword_10138B570);
      LODWORD(v11) = (*v29)(v10, 1, v6);

      v17 = *(v0 + 160);
      if (v11 == 1)
      {
        sub_10000B3A8(*(v0 + 160), &qword_101698C00, &qword_10138B570);
        if (*v16)
        {
          goto LABEL_9;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v28)(v17, v6);
        if (*v16)
        {
LABEL_9:
          v20 = v15[3];
          swift_getObjectType();
          swift_unknownObjectRetain();
          v18 = dispatch thunk of Actor.unownedExecutor.getter();
          v19 = v21;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v18 = 0;
      v19 = 0;
LABEL_10:
      v22 = swift_allocObject();
      *(v22 + 16) = &unk_1013BFC90;
      *(v22 + 24) = v15;

      if (v19 | v18)
      {
        v8 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v18;
        *(v0 + 40) = v19;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 168);
      *(v0 + 48) = 1;
      *(v0 + 56) = v8;
      *(v0 + 64) = v37;
      swift_task_create();

      sub_10000B3A8(v9, &qword_101698C00, &qword_10138B570);
      v5 = v42 + v36;
      v2 = v43 - 1;
    }

    while (v43 != 1);
  }

  v24 = *(v0 + 160);
  v23 = *(v0 + 168);
  v25 = *(v0 + 152);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_10086A3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v15;
  v8[8] = v16;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = type metadata accessor for UUID();
  v8[9] = v9;
  v10 = *(v9 - 8);
  v8[10] = v10;
  v11 = *(v10 + 64) + 15;
  v8[11] = swift_task_alloc();
  v12 = *(type metadata accessor for KeyGenerationBeaconInfo() - 8);
  v8[12] = v12;
  v8[13] = *(v12 + 64);
  v8[14] = swift_task_alloc();

  return _swift_task_switch(sub_10086A4E4, 0, 0);
}

uint64_t sub_10086A4E4()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v19 = v0[8];
  v20 = v0[11];
  v17 = v0[6];
  v18 = v0[7];
  v15 = v0[4];
  v16 = v0[5];
  v21 = v0[3];
  v4 = v0[2];
  sub_1000295D4(v21, v1, type metadata accessor for KeyGenerationBeaconInfo);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = (v2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v0[15] = v10;
  *(v10 + 16) = v4;
  sub_10087EE70(v1, v10 + v5, type metadata accessor for KeyGenerationBeaconInfo);
  *(v10 + v6) = v15;
  *(v10 + v7) = v16;
  *(v10 + v8) = v17;
  *(v10 + v9) = v18;
  *(v10 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;

  UUID.init()();
  v11 = swift_task_alloc();
  v0[16] = v11;
  v11[2] = v20;
  v11[3] = &unk_1013BFCA8;
  v11[4] = v10;
  v11[5] = v4;
  v11[6] = v21;
  v12 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v13 = swift_task_alloc();
  v0[17] = v13;
  *v13 = v0;
  v13[1] = sub_10086A6F8;

  return withCheckedContinuation<A>(isolation:function:_:)(v13, 0, 0, 0xD000000000000027, 0x8000000101361B00, sub_1008849E4, v11, &type metadata for () + 8);
}

uint64_t sub_10086A6F8()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return _swift_task_switch(sub_10086A810, 0, 0);
}

uint64_t sub_10086A810()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10086A8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  v8 = *(type metadata accessor for KeyGenerationBeaconInfo() - 8);
  v6[11] = v8;
  v6[12] = *(v8 + 64);
  v6[13] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[15] = v10;
  *v10 = v6;
  v10[1] = sub_10086A9E4;

  return sub_10086B5C8(a2);
}

uint64_t sub_10086A9E4()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_10086B420;
  }

  else
  {
    v3 = sub_10086AAF8;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_10086AAF8()
{
  if (v0[8])
  {
    v2 = v0[7] == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v3 = swift_task_alloc();
    v0[17] = v3;
    *v3 = v0;
    v3[1] = sub_10086ABA8;
    v5 = v0[6];
    v4 = v0[7];
    v6 = v0[5];

    sub_100882478(v5, 1, v4);
  }
}

uint64_t sub_10086ABA8(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v7 = *v2;
  *(v3 + 25) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v5 = sub_10086B278;
  }

  else
  {
    v5 = sub_10086ACC0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10086ACC0()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[5];
  v8 = v0[6];
  static TaskPriority.background.getter();
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v1, 0, 1, v9);
  sub_1000295D4(v8, v2, type metadata accessor for KeyGenerationBeaconInfo);
  v10 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v7;
  sub_10087EE70(v2, v12 + v10, type metadata accessor for KeyGenerationBeaconInfo);
  *(v12 + v11) = v6;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v5;

  v13 = sub_100A83B9C(0, 0, v1, &unk_1013BFCC8, v12);
  v0[19] = v13;
  v14 = async function pointer to Task.result.getter[1];
  v15 = swift_task_alloc();
  v0[20] = v15;
  v16 = sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v0[21] = v16;
  *v15 = v0;
  v15[1] = sub_10086AEC0;

  return Task.result.getter(v0 + 2, v13, &type metadata for Bool, v16, &protocol self-conformance witness table for Error);
}

uint64_t sub_10086AEC0()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return _swift_task_switch(sub_10086AFD8, 0, 0);
}

uint64_t sub_10086AFD8()
{
  v1 = *(v0 + 16);
  if ((*(v0 + 24) & 1) == 0)
  {
    if (qword_101694A00 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_1016ABAA8);
    v4 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v10))
    {
      v11 = *(v0 + 25);
      v12 = swift_slowAlloc();
      *v12 = 67109376;
      *(v12 + 4) = v11;
      *(v12 + 8) = 1024;
      *(v12 + 10) = v1 & 1;
      _os_log_impl(&_mh_execute_header, v4, v10, "lowPriorityModified: %{BOOL}d highPriorityModified: %{BOOL}d", v12, 0xEu);
    }

    goto LABEL_10;
  }

  v2 = *(v0 + 168);
  *(v0 + 32) = v1;
  swift_willThrowTypedImpl();
  if (qword_101694A00 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_1016ABAA8);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = _convertErrorToNSError(_:)();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error during perform: %@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);

LABEL_10:

    goto LABEL_12;
  }

LABEL_12:
  v14 = *(v0 + 104);
  v13 = *(v0 + 112);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10086B278()
{
  v1 = v0[18];
  if (qword_101694A00 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_1016ABAA8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = _convertErrorToNSError(_:)();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error during perform: %@", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = v0[13];
  v8 = v0[14];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10086B420()
{
  v1 = v0[16];
  if (qword_101694A00 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_1016ABAA8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = _convertErrorToNSError(_:)();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error during perform: %@", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = v0[13];
  v8 = v0[14];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10086B5C8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for KeyGenerationBeaconInfo();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v5 = *(*(sub_1000BC4D4(&unk_101696AC0, &qword_101390A60) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_10086B72C, 0, 0);
}

uint64_t sub_10086B72C()
{
  v38 = v0;
  v2 = v0[13];
  v1 = v0[14];
  v36 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[2];
  v6 = v0[3];
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  v7 = type metadata accessor for BeaconIdentifier();
  v8 = v5 + *(v7 + 20);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  v9 = *(v4 + 8);
  v0[15] = v9;
  v0[16] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v2, v3);
  URL.appendingPathComponent(_:)();
  if (qword_101694A00 != -1)
  {
    swift_once();
  }

  v11 = v0[5];
  v10 = v0[6];
  v12 = v0[2];
  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_1016ABAA8);
  sub_1000295D4(v12, v10, type metadata accessor for KeyGenerationBeaconInfo);
  sub_1000295D4(v12, v11, type metadata accessor for KeyGenerationBeaconInfo);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v18 = v0[5];
  v17 = v0[6];
  if (v16)
  {
    v35 = v15;
    v19 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v19 = 141558787;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2081;
    type metadata accessor for UUID();
    sub_10087E3E8(&qword_101696930, &type metadata accessor for UUID);
    log = v14;
    v20 = v7;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_10001F1B0(v17, type metadata accessor for KeyGenerationBeaconInfo);
    v24 = sub_1000136BC(v21, v23, &v37);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2160;
    *(v19 + 24) = 1752392040;
    *(v19 + 32) = 2081;
    v25 = v18 + *(v20 + 20);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    sub_10001F1B0(v18, type metadata accessor for KeyGenerationBeaconInfo);
    v29 = sub_1000136BC(v26, v28, &v37);

    *(v19 + 34) = v29;
    _os_log_impl(&_mh_execute_header, log, v35, "Verify file integrity for %{private,mask.hash}s/%{private,mask.hash}s", v19, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    sub_10001F1B0(v18, type metadata accessor for KeyGenerationBeaconInfo);
    sub_10001F1B0(v17, type metadata accessor for KeyGenerationBeaconInfo);
  }

  v30 = v0[12];
  v0[17] = sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
  static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
  v31 = swift_task_alloc();
  v0[18] = v31;
  *v31 = v0;
  v31[1] = sub_10086BB58;
  v32 = v0[12];

  return sub_10087F1BC(v32);
}

uint64_t sub_10086BB58()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_10086BEF4;
  }

  else
  {
    v3 = sub_10086BC6C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10086BC6C()
{
  v1 = v0[2] + *(v0[4] + 24);
  if (*(v1 + 8) >> 60 == 15 || *(v1 + 40) >> 60 == 15)
  {
    v2 = 1;
  }

  else
  {
    v3 = v0[14];
    v4 = v0[8];
    URL.appendingPathComponent(_:)();
    v2 = 0;
  }

  v5 = v0[9];
  v6 = v0[10];
  v8 = v0[7];
  v7 = v0[8];
  (*(v6 + 56))(v7, v2, 1, v5);
  sub_1000D2A70(v7, v8, &unk_101696AC0, &qword_101390A60);
  if ((*(v6 + 48))(v8, 1, v5) == 1)
  {
    v10 = v0[15];
    v9 = v0[16];
    v11 = v0[14];
    v12 = v0[12];
    v13 = v0[9];
    v14 = v0[7];
    sub_10000B3A8(v0[8], &unk_101696AC0, &qword_101390A60);
    v10(v12, v13);
    v10(v11, v13);
    sub_10000B3A8(v14, &unk_101696AC0, &qword_101390A60);
    v16 = v0[13];
    v15 = v0[14];
    v18 = v0[11];
    v17 = v0[12];
    v20 = v0[7];
    v19 = v0[8];
    v22 = v0[5];
    v21 = v0[6];

    v23 = v0[1];

    return v23();
  }

  else
  {
    v25 = v0[17];
    (*(v0[10] + 32))(v0[11], v0[7], v0[9]);
    static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
    v26 = swift_task_alloc();
    v0[20] = v26;
    *v26 = v0;
    v26[1] = sub_10086BFEC;
    v27 = v0[11];

    return sub_10087F1BC(v27);
  }
}

uint64_t sub_10086BEF4()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[9];
  v7 = v0[7];
  v11 = v0[6];
  v8 = v0[5];
  v12 = v0[19];
  v2(v0[12], v6);
  v2(v3, v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10086BFEC()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_10086C208;
  }

  else
  {
    v3 = sub_10086C100;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10086C100()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v0[12];
  v6 = v0[8];
  v5 = v0[9];
  v2(v0[11], v5);
  sub_10000B3A8(v6, &unk_101696AC0, &qword_101390A60);
  v2(v4, v5);
  v2(v3, v5);
  v8 = v0[13];
  v7 = v0[14];
  v10 = v0[11];
  v9 = v0[12];
  v12 = v0[7];
  v11 = v0[8];
  v14 = v0[5];
  v13 = v0[6];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10086C208()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 64);
  (*(v0 + 120))(*(v0 + 88), *(v0 + 72));
  sub_10000B3A8(v2, &unk_101696AC0, &qword_101390A60);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 88);
  v8 = *(v0 + 72);
  v9 = *(v0 + 56);
  v13 = *(v0 + 48);
  v10 = *(v0 + 40);
  v14 = *(v0 + 168);
  v4(*(v0 + 96), v8);
  v4(v5, v8);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10086C328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return _swift_task_switch(sub_10086C350, 0, 0);
}

void sub_10086C350()
{
  if (v0[6])
  {
    v2 = v0[5] == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_10086C400;
    v5 = v0[4];
    v4 = v0[5];
    v6 = v0[3];

    sub_100882478(v5, 1, v4);
  }
}

uint64_t sub_10086C400(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 64) = a1 & 1;

    return _swift_task_switch(sub_10086C550, 0, 0);
  }
}

uint64_t sub_10086C574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[22] = a1;
  v6[23] = a4;
  v7 = type metadata accessor for UUID();
  v6[26] = v7;
  v8 = *(v7 - 8);
  v6[27] = v8;
  v9 = *(v8 + 64) + 15;
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();

  return _swift_task_switch(sub_10086C644, 0, 0);
}

uint64_t sub_10086C644()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  if ((v1 & 0x2000000000000000) != 0)
  {
    v15 = sub_1000356D8(v3, v1 & 0xDFFFFFFFFFFFFFFFLL);
    if ((v15 & 0x100000000) == 0)
    {
      v16 = v15;
      v18 = *(v0 + 216);
      v17 = *(v0 + 224);
      v20 = *(v0 + 200);
      v19 = *(v0 + 208);
      v21 = OBJC_IVAR____TtC12searchpartyd17BeaconKeyIndexMap_beaconIdentifier;
      v22 = type metadata accessor for BeaconIdentifier();
      (*(v18 + 16))(v17, v20 + *(v22 + 20) + v21, v19);
      v23 = v16;
      if (*(v20 + OBJC_IVAR____TtC12searchpartyd17BeaconKeyIndexMap_sequence))
      {
        v24 = &type metadata for SecondaryIndex;
        v25 = sub_10022A4D4();
      }

      else
      {
        v24 = &type metadata for PrimaryIndex;
        v25 = sub_10002A2B8();
      }

      v36 = *(v0 + 216);
      v35 = *(v0 + 224);
      v37 = *(v0 + 208);
      v31 = *(v0 + 176);
      *(v0 + 80) = v24;
      *(v0 + 88) = v25;
      *(v0 + 56) = v23;
      sub_10000A748((v0 + 56), v0 + 16);
      (*(v36 + 32))(v31, v35, v37);
      v32 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
      v33 = *(v32 + 20);
      v34 = (v0 + 16);
      goto LABEL_13;
    }

LABEL_8:
    v26 = *(v0 + 176);
    v27 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
    (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
    goto LABEL_14;
  }

  v4 = sub_101198A2C(v3, v1);
  if ((v4 & 0x100000000) != 0)
  {
    goto LABEL_8;
  }

  v5 = v4;
  v6 = *(v0 + 232);
  v7 = *(v0 + 208);
  v8 = *(v0 + 216);
  v9 = *(v0 + 200);
  v10 = OBJC_IVAR____TtC12searchpartyd17BeaconKeyIndexMap_beaconIdentifier;
  v11 = type metadata accessor for BeaconIdentifier();
  (*(v8 + 16))(v6, v9 + *(v11 + 20) + v10, v7);
  v12 = v5;
  if (*(v9 + OBJC_IVAR____TtC12searchpartyd17BeaconKeyIndexMap_sequence))
  {
    v13 = &type metadata for SecondaryIndex;
    v14 = sub_10022A4D4();
  }

  else
  {
    v13 = &type metadata for PrimaryIndex;
    v14 = sub_10002A2B8();
  }

  v28 = *(v0 + 232);
  v29 = *(v0 + 208);
  v30 = *(v0 + 216);
  v31 = *(v0 + 176);
  *(v0 + 160) = v13;
  *(v0 + 168) = v14;
  *(v0 + 136) = v12;
  sub_10000A748((v0 + 136), v0 + 96);
  (*(v30 + 32))(v31, v28, v29);
  v32 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v33 = *(v32 + 20);
  v34 = (v0 + 96);
LABEL_13:
  sub_10000A748(v34, v31 + v33);
  (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
LABEL_14:
  v39 = *(v0 + 224);
  v38 = *(v0 + 232);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_10086C8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a2;
  v37 = a6;
  v42 = a4;
  v43 = a5;
  v41 = a3;
  v38 = a1;
  v6 = type metadata accessor for BeaconIdentifier();
  v39 = *(v6 - 8);
  v40 = *(v39 + 64);
  __chkstk_darwin(v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v8;
  v9 = sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);
  v32 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  v33 = &v32 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v32 - v20;
  v35 = &v32 - v20;
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  (*(v15 + 16))(v17, v36, v14);
  (*(v10 + 16))(v13, v38, v9);
  sub_1000295D4(v37, v8, type metadata accessor for BeaconIdentifier);
  v23 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v24 = (v16 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (*(v10 + 80) + v24 + 16) & ~*(v10 + 80);
  v26 = (v11 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (*(v39 + 80) + v26 + 8) & ~*(v39 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  (*(v15 + 32))(v28 + v23, v17, v14);
  v29 = (v28 + v24);
  v30 = v42;
  *v29 = v41;
  v29[1] = v30;
  (*(v10 + 32))(v28 + v25, v33, v32);
  *(v28 + v26) = v43;
  sub_10087EE70(v34, v28 + v27, type metadata accessor for BeaconIdentifier);

  sub_10025EDD4(0, 0, v35, &unk_1013BFD58, v28);
}

uint64_t sub_10086CCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v15;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);
  v8[8] = v9;
  v10 = *(v9 - 8);
  v8[9] = v10;
  v8[10] = *(v10 + 64);
  v8[11] = swift_task_alloc();
  v11 = type metadata accessor for BeaconKeyServiceBuilder.WorkItem(0);
  v8[12] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v8[13] = swift_task_alloc();

  return _swift_task_switch(sub_10086CDD8, 0, 0);
}

uint64_t sub_10086CDD8()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];
  v21 = v0[3];
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 16))(v1, v9, v10);
  (*(v6 + 16))(v3, v8, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, v3, v5);
  v13 = swift_allocObject();
  *(v13 + 16) = v21;
  *(v13 + 24) = v7;
  v14 = (v1 + *(v2 + 20));
  *v14 = &unk_1013BFD78;
  v14[1] = v13;
  v15 = (v1 + *(v2 + 24));
  *v15 = &unk_1013BFD68;
  v15[1] = v12;

  v16 = swift_task_alloc();
  v0[14] = v16;
  *v16 = v0;
  v16[1] = sub_10086CFA4;
  v17 = v0[13];
  v19 = v0[6];
  v18 = v0[7];

  return sub_10086D1C4(v18, v17);
}