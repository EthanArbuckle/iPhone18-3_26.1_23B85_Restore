void *sub_101062A04(void *result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v40 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_34;
  }

  v9 = v5[2];
  v8 = v5[3];
  v4 = (v8 >> 1) - v9;
  if (__OFSUB__(v8 >> 1, v9))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v6 = a3;
  v11 = result;
  if ((v8 & 1) == 0)
  {
LABEL_8:
    v17 = v4;
    goto LABEL_10;
  }

  v13 = *v5;
  v12 = v5[1];
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    swift_unknownObjectRelease();
    v14 = _swiftEmptyArrayStorage;
  }

  v15 = *(type metadata accessor for Bit() - 8);
  v16 = v14[2];
  if ((v12 + *(v15 + 72) * v9 + *(v15 + 72) * v4) != (v14 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v16))
  {

    goto LABEL_8;
  }

  v18 = v14[3];

  v19 = (v18 >> 1) - v16;
  v20 = __OFADD__(v4, v19);
  v17 = v4 + v19;
  if (v20)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_10:
  result = (v4 + v7);
  if (__OFADD__(v4, v7))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v17 < result)
  {
    if (v17 + 0x4000000000000000 < 0)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v21 = 2 * v17;
    if (v21 > result)
    {
      result = v21;
    }
  }

  result = sub_1010618B0(result);
  v23 = v5[2];
  v22 = v5[3];
  v4 = (v22 >> 1) - v23;
  if (__OFSUB__(v22 >> 1, v23))
  {
    goto LABEL_36;
  }

  v37 = v11;
  v39 = a2;
  v24 = v5[1];
  result = type metadata accessor for Bit();
  v25 = *(result - 1);
  v26 = *(v25 + 72);
  v27 = (v24 + v26 * v23 + v26 * v4);
  if ((v22 & 1) == 0)
  {
LABEL_37:
    v32 = v4;
    v31 = v6;
    goto LABEL_22;
  }

  v28 = *v5;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v29 = swift_dynamicCastClass();
  if (!v29)
  {
    swift_unknownObjectRelease();
    v29 = _swiftEmptyArrayStorage;
  }

  v30 = v29[2];
  v31 = v6;
  if (v27 == (v29 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + v30 * v26))
  {
    v33 = v29[3];

    v34 = (v33 >> 1) - v30;
    v20 = __OFADD__(v4, v34);
    v32 = v4 + v34;
    if (v20)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }
  }

  else
  {

    v32 = v4;
  }

LABEL_22:
  v35 = v32 - v4;
  v36 = v40;
  if (__OFSUB__(v32, v4))
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v40 == v31)
  {
    if (v7 <= 0)
    {
      v7 = 0;
      v36 = v31;
      goto LABEL_30;
    }

    goto LABEL_39;
  }

  if (v35 < v7)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  result = swift_arrayInitWithCopy();
  if (v7 > 0)
  {
    result = (v4 + v7);
    if (__OFADD__(v4, v7))
    {
LABEL_44:
      __break(1u);
      return result;
    }

    result = sub_101061E58(result);
  }

LABEL_30:
  if (v7 == v35)
  {
    v41[0] = v37;
    v41[1] = v39;
    v41[2] = v31;
    v41[3] = a4;
    v41[4] = v36;
    return sub_10106239C(v41);
  }

  return result;
}

uint64_t sub_101062D20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169F068, &unk_1013A00E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_101062D90(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_10169F068, &unk_1013A00E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for AccessoryIdentityPairingLockCheckEndPoint()
{
  result = qword_1016C4F18;
  if (!qword_1016C4F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_101062E6C()
{
  v1 = type metadata accessor for FMNAccountType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(type metadata accessor for AccessoryIdentityPairingLockCheckEndPoint() + 20)) == 1)
  {
    (*(v2 + 104))(v5, enum case for FMNAccountType.none(_:), v1);
    type metadata accessor for AccountURLComponents();
    swift_allocObject();
    v6 = sub_1010B32C8(v5)[2];
    sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
    OS_dispatch_queue.sync<A>(execute:)();
    URLComponents.init()();
    URLComponents.scheme.setter();
    URLComponents.host.setter();
    URLComponents.path.setter();

    v7 = URLComponents.path.modify();
    v8._countAndFlagsBits = 0xD00000000000002ALL;
    v8._object = 0x8000000101379250;
    String.append(_:)(v8);
    v7(&v18, 0);
  }

  else
  {
    (*(v2 + 16))(v5, v0, v1);
    type metadata accessor for AccountURLComponents();
    swift_allocObject();
    v9 = sub_1010B32C8(v5)[2];
    sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
    OS_dispatch_queue.sync<A>(execute:)();
    URLComponents.init()();
    URLComponents.scheme.setter();
    URLComponents.host.setter();
    URLComponents.path.setter();

    v10 = URLComponents.path.modify();
    v11._countAndFlagsBits = 0xD00000000000001BLL;
    v11._object = 0x8000000101379230;
    String.append(_:)(v11);
    v10(&v18, 0);
    if (qword_101694F58 != -1)
    {
      swift_once();
    }

    v12 = qword_10177C218;
    v13 = [objc_opt_self() sharedInstance];
    v14 = [v13 isInternalBuild];

    if (v14)
    {
      v15 = String._bridgeToObjectiveC()();
      v16 = [v12 stringForKey:v15];

      if (v16)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        URLComponents.host.setter();
      }
    }
  }
}

uint64_t sub_101063248()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v13 - v6;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v8 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v9 = sub_101073524(v13[1]);

  if ((v9 * 60) >> 64 != (60 * v9) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  static Date.trustedNow.getter(v7);
  Date.timeIntervalSinceReferenceDate.getter();
  Date.init(timeIntervalSinceReferenceDate:)();
  Date.timeIntervalSince(_:)();
  static Duration.seconds(_:)();
  v11 = Duration.milliseconds.getter();
  v12 = *(v1 + 8);
  v12(v5, v0);
  result = (v12)(v7, v0);
  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!HIDWORD(v11))
  {
    return v11;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_101063438()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C530);
  sub_1000076D4(v0, qword_10177C530);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1010634B8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016C4F50);
  v1 = sub_1000076D4(v0, qword_1016C4F50);
  if (qword_1016951B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C530);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_101063580(uint64_t a1)
{
  if (a1 > 4)
  {
    if (a1 <= 7)
    {
      if (a1 == 5)
      {
        return 0xD000000000000016;
      }

      if (a1 != 6)
      {
        return 0x676E697373696D2ELL;
      }

      return 0xD000000000000013;
    }

    switch(a1)
    {
      case 8:
        return 0xD000000000000012;
      case 9:
        return 0x64696C61766E692ELL;
      case 10:
        return 0xD000000000000010;
    }

LABEL_24:
    strcpy(v4, ".underlying(");
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v2._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v2);

    v3._countAndFlagsBits = 41;
    v3._object = 0xE100000000000000;
    String.append(_:)(v3);
    return v4[0];
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x6E776F6E6B6E752ELL;
    }

    if (a1 == 1)
    {
      return 0x74756F656D69742ELL;
    }

    goto LABEL_24;
  }

  if (a1 == 2)
  {
    return 0x4E64726F6365722ELL;
  }

  if (a1 != 3)
  {
    return 0x676E697373696D2ELL;
  }

  return 0x6F707075736E752ELL;
}

uint64_t sub_1010637D4()
{
  v1[3] = v0;
  v2 = *(*(sub_1000BC4D4(&unk_1016C1200, &qword_1013B6240) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v3 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v4 = *(*(sub_1000BC4D4(&qword_101698E38, &unk_101395BA0) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1010638D4, 0, 0);
}

uint64_t sub_1010638D4()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  swift_defaultActor_initialize();
  v4[14] = 0xD00000000000001DLL;
  v4[15] = 0x80000001013FD470;
  type metadata accessor for WorkItemQueue();
  v5 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  UUID.init()();
  v4[17] = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  type metadata accessor for CentralManager();
  sub_1000BC4D4(&unk_1016C2250, &unk_1013F6360);
  v6 = type metadata accessor for CentralManager.Options();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_101385D80;
  static CentralManager.Options.needsRestrictedStateOperation.getter();
  v0[2] = v10;
  sub_1010732D8(&unk_1016C1210, 255, &type metadata accessor for CentralManager.Options);
  sub_1000BC4D4(&unk_1016C2260, &unk_101395BB0);
  sub_1000041A4(&qword_1016C1220, &unk_1016C2260, &unk_101395BB0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v7 + 56))(v3, 0, 1, v6);
  v11 = async function pointer to CentralManager.__allocating_init(options:)[1];
  v12 = swift_task_alloc();
  v0[7] = v12;
  *v12 = v0;
  v12[1] = sub_10026B354;
  v13 = v0[4];

  return CentralManager.__allocating_init(options:)(v13);
}

uint64_t sub_101063BA0()
{
  *(v1 + 696) = v0;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 744) = v3;
  *v3 = v1;
  v3[1] = sub_101063C34;

  return daemon.getter();
}

uint64_t sub_101063C34(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 744);
  v12 = *v1;
  *(v3 + 752) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 760) = v6;
  v7 = type metadata accessor for Daemon();
  UnlockService = type metadata accessor for FirstUnlockService();
  v9 = sub_1010732D8(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_1010732D8(&qword_10169BD10, 255, &type metadata accessor for FirstUnlockService);
  *v6 = v12;
  v6[1] = sub_101063E18;

  return ActorServiceDaemon.getService<A>()(v7, UnlockService, v9, v10);
}

uint64_t sub_101063E18(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 760);
  v5 = *v2;
  *(*v2 + 768) = a1;

  v6 = *(v3 + 752);
  v7 = *(v3 + 696);
  if (v1)
  {

    v8 = sub_101064398;
  }

  else
  {

    v8 = sub_101063F7C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_101063F7C()
{
  if (qword_1016951B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[97] = sub_1000076D4(v1, qword_1016C4F50);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Waiting for first unlock", v4, 2u);
  }

  v5 = *(&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + 1);
  v9 = (&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock());
  v6 = swift_task_alloc();
  v0[98] = v6;
  *v6 = v0;
  v6[1] = sub_1010640E0;
  v7 = v0[96];

  return v9();
}

uint64_t sub_1010640E0()
{
  v1 = *(*v0 + 784);
  v2 = *(*v0 + 696);
  v4 = *v0;

  return _swift_task_switch(sub_1010641F0, v2, 0);
}

uint64_t sub_1010641F0()
{
  v1 = *(v0 + 776);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Device is now unlocked", v4, 2u);
  }

  v5 = *(v0 + 696);

  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 16);
}

uint64_t sub_101064334()
{
  v1 = *(v0 + 768);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_101064398()
{
  if (qword_1016951B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016C4F50);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "First unlock service is not available. Bailing", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1010644B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003633C;

  return sub_101064540();
}

uint64_t sub_101064540()
{
  v1[3] = v0;
  v1[4] = *v0;
  v2 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v1[7] = *(v3 + 64);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v4 = type metadata accessor for CentralManager.ConnectedState();
  v1[11] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&unk_1016C21B0, &unk_101395B20) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_10169BCE8, &unk_1013E8AA0);
  v1[15] = v7;
  v8 = *(v7 - 8);
  v1[16] = v8;
  v9 = *(v8 + 64) + 15;
  v1[17] = swift_task_alloc();
  v10 = sub_1000BC4D4(&unk_1016C21C0, &unk_101395B30);
  v1[18] = v10;
  v11 = *(v10 - 8);
  v1[19] = v11;
  v12 = *(v11 + 64) + 15;
  v1[20] = swift_task_alloc();

  return _swift_task_switch(sub_101064798, v0, 0);
}

uint64_t sub_101064798()
{
  v19 = v0;
  if (qword_1016951B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[21] = sub_1000076D4(v1, qword_1016C4F50);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x800000010134F3A0, &v18);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v0[22] = *(v0[3] + 128);
  sub_1000BC4D4(&qword_10169BCF0, &unk_1013E2690);
  v6 = type metadata accessor for CentralManager.State();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  v0[23] = v10;
  *(v10 + 16) = xmmword_10138BBE0;
  v11 = v10 + v9;
  v12 = *(v7 + 104);
  v12(v11, enum case for CentralManager.State.poweredOn(_:), v6);
  v12(v11 + v8, enum case for CentralManager.State.restricted(_:), v6);
  v13 = async function pointer to CentralManagerProtocol.await(states:)[1];
  v14 = swift_task_alloc();
  v0[24] = v14;
  v15 = type metadata accessor for CentralManager();
  v0[25] = v15;
  v16 = sub_1010732D8(&unk_1016C1160, 255, &type metadata accessor for CentralManager);
  *v14 = v0;
  v14[1] = sub_101064A94;

  return CentralManagerProtocol.await(states:)(v10, v15, v16);
}

uint64_t sub_101064A94()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v9 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_101065794;
  }

  else
  {
    v6 = *(v2 + 184);
    v7 = *(v2 + 24);

    v5 = sub_101064BBC;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_101064BBC()
{
  v1 = v0[25];
  v2 = v0[22];
  sub_1000BC4D4(&qword_1016973D8, &qword_10138BF80);
  v3 = *(sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0) - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[27] = v6;
  *(v6 + 16) = xmmword_101385D80;
  type metadata accessor for Service();
  Identifier.init(stringLiteral:)();
  sub_1010732D8(&unk_1016C21D0, 255, &type metadata accessor for CentralManager);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_101064D38, v8, v7);
}

uint64_t sub_101064D38()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[22];
  v4 = v0[20];
  dispatch thunk of CentralManager.connectionEvents(serviceIdentifiers:)();
  v0[28] = v2;
  if (v2)
  {
    v5 = v0[3];
    v6 = sub_1010659AC;
  }

  else
  {
    v7 = v0[27];
    v8 = v0[3];

    v6 = sub_101064DDC;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_101064DDC()
{
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  AsyncStream.makeAsyncIterator()();
  v5 = sub_1010732D8(&qword_1016C5030, v4, type metadata accessor for AccessoryConfigurationService);
  v6 = v0[28];
  v0[29] = v5;
  v0[30] = v6;
  v7 = v0[3];
  v8 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v9 = swift_task_alloc();
  v0[31] = v9;
  *v9 = v0;
  v9[1] = sub_101064ED8;
  v10 = v0[17];
  v11 = v0[14];
  v12 = v0[15];

  return AsyncStream.Iterator.next(isolation:)(v11, v7, v5, v12);
}

uint64_t sub_101064ED8()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_101064FE8, v2, 0);
}

uint64_t sub_101064FE8()
{
  v81 = v0;
  v1 = v0[14];
  v2 = sub_1000BC4D4(&qword_10169BCF8, &unk_101395B40);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[21];
    (*(v0[16] + 8))(v0[17], v0[15]);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    v6 = os_log_type_enabled(v4, v5);
    v8 = v0[19];
    v7 = v0[20];
    v9 = v0[18];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "centralManager.connectionEvents() terminated", v10, 2u);
    }

    (*(v8 + 8))(v7, v9);
    goto LABEL_12;
  }

  v11 = v0[30];
  v12 = *v1;
  sub_101072F44(v1 + *(v2 + 48), v0[13], &type metadata accessor for CentralManager.ConnectedState);
  static Task<>.checkCancellation()();
  if (v11)
  {
    v14 = v0[19];
    v13 = v0[20];
    v16 = v0[17];
    v15 = v0[18];
    v17 = v0[15];
    v18 = v0[16];
    v19 = v0[13];

    sub_101072FAC(v19, &type metadata accessor for CentralManager.ConnectedState);
    (*(v18 + 8))(v16, v17);
    (*(v14 + 8))(v13, v15);
    v20 = v0[21];
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v80[0] = v25;
      *v23 = 136315394;
      *(v23 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x800000010134F3A0, v80);
      *(v23 + 12) = 2114;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v26;
      *v24 = v26;
      _os_log_impl(&_mh_execute_header, v21, v22, "%s error: %{public}@", v23, 0x16u);
      sub_10000B3A8(v24, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v25);
    }

    else
    {
    }

LABEL_12:
    v46 = v0[20];
    v47 = v0[17];
    v49 = v0[13];
    v48 = v0[14];
    v50 = v0[12];
    v52 = v0[9];
    v51 = v0[10];
    v53 = v0[8];

    v54 = v0[1];

    return v54();
  }

  v28 = v0[12];
  v27 = v0[13];
  v29 = v0[11];
  type metadata accessor for Transaction();
  static Transaction.$current.getter();
  v0[2] = v12;
  swift_retain_n();
  sub_1000BC4D4(&qword_10169BD00, &qword_1013FD5B0);
  swift_task_localValuePush();
  sub_1010721A8(v27, v28, &type metadata accessor for CentralManager.ConnectedState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = v0[21];
    v32 = v0[9];
    v31 = v0[10];
    v33 = v0[5];
    v34 = v0[6];
    v79 = *(v34 + 32);
    v79(v31, v0[12], v33);
    v78 = *(v34 + 16);
    v78(v32, v31, v33);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v0[9];
    v40 = v0[5];
    v39 = v0[6];
    if (v37)
    {
      v41 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v80[0] = v75;
      *v41 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v73 = v36;
      v44 = v43;
      v77 = *(v39 + 8);
      v77(v38, v40);
      v45 = sub_1000136BC(v42, v44, v80);

      *(v41 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v35, v73, "Connected to %{public}s", v41, 0xCu);
      sub_100007BAC(v75);
    }

    else
    {

      v77 = *(v39 + 8);
      v77(v38, v40);
    }

    v56 = v0[10];
    v58 = v0[7];
    v57 = v0[8];
    v59 = v0[5];
    v60 = v0[6];
    v62 = v0[3];
    v61 = v0[4];
    v74 = v61;
    v76 = *(v62 + 136);
    v78(v57, v56, v59);
    v63 = (*(v60 + 80) + 24) & ~*(v60 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = v62;
    v79(v64 + v63, v57, v59);
    *(v64 + ((v58 + v63 + 7) & 0xFFFFFFFFFFFFFFF8)) = v74;

    dispatch thunk of WorkItemQueue.enqueue(_:)();

    v77(v56, v59);
  }

  else
  {
    (*(v0[6] + 8))(v0[12], v0[5]);
  }

  v65 = v0[13];
  swift_task_localValuePop();

  sub_101072FAC(v65, &type metadata accessor for CentralManager.ConnectedState);
  v0[30] = 0;
  v66 = v0[29];
  v67 = v0[3];
  v68 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v69 = swift_task_alloc();
  v0[31] = v69;
  *v69 = v0;
  v69[1] = sub_101064ED8;
  v70 = v0[17];
  v71 = v0[14];
  v72 = v0[15];

  return AsyncStream.Iterator.next(isolation:)(v71, v67, v66, v72);
}

uint64_t sub_101065794()
{
  v21 = v0;
  v1 = v0[23];

  v2 = v0[26];
  v3 = v0[21];
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x800000010134F3A0, &v20);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s error: %{public}@", v6, 0x16u);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v8);
  }

  else
  {
  }

  v10 = v0[20];
  v11 = v0[17];
  v13 = v0[13];
  v12 = v0[14];
  v14 = v0[12];
  v16 = v0[9];
  v15 = v0[10];
  v17 = v0[8];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1010659AC()
{
  v21 = v0;
  v1 = v0[27];

  v2 = v0[28];
  v3 = v0[21];
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x800000010134F3A0, &v20);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s error: %{public}@", v6, 0x16u);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v8);
  }

  else
  {
  }

  v10 = v0[20];
  v11 = v0[17];
  v13 = v0[13];
  v12 = v0[14];
  v14 = v0[12];
  v16 = v0[9];
  v15 = v0[10];
  v17 = v0[8];

  v18 = v0[1];

  return v18();
}

uint64_t sub_101065BE8(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for AccessoryConfigurationService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_101065C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for AccessoryConfigurationService();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_101065D54(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for AccessoryConfigurationService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_101065DFC(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.startup()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for AccessoryConfigurationService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.startup()(v6, a2);
}

uint64_t sub_101065EA4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_101063BA0();
}

uint64_t sub_101065F30()
{
  v1 = *v0;
  type metadata accessor for AccessoryConfigurationService();
  sub_1010732D8(&unk_1016B1040, v2, type metadata accessor for AccessoryConfigurationService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_101066028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_10106610C, 0, 0);
}

uint64_t sub_10106610C()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v7 = v0[2];
  v6 = v0[3];
  v8 = *(v3 + 16);
  v0[10] = v8;
  v0[11] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v6, v4);
  v9 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v10 = (v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  v0[12] = v11;
  *(v11 + 16) = v7;
  (*(v3 + 32))(v11 + v9, v1, v4);
  *(v11 + v10) = v5;
  v12 = async function pointer to withTimeout<A>(_:block:)[1];

  v13 = swift_task_alloc();
  v0[13] = v13;
  *v13 = v0;
  v13[1] = sub_101066284;

  return withTimeout<A>(_:block:)(v13, 0x158E460913D00000, 1, &unk_1013FD5D0, v11, &type metadata for () + 8);
}

uint64_t sub_101066284()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_1010663A0;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_10026F2C0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1010663A0()
{
  v30 = v0;
  v1 = v0[12];

  if (qword_1016951B8 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[3];
  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_1016C4F50);
  v4(v5, v7, v6);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[14];
  v13 = v0[8];
  v15 = v0[5];
  v14 = v0[6];
  if (v11)
  {
    v16 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v16 = 136446466;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v14 + 8))(v13, v15);
    v20 = sub_1000136BC(v17, v19, &v29);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2114;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v21;
    *v27 = v21;
    _os_log_impl(&_mh_execute_header, v9, v10, "Error handling connection event for %{public}s: %{public}@", v16, 0x16u);
    sub_10000B3A8(v27, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v28);
  }

  else
  {
    v22 = v0[14];

    (*(v14 + 8))(v13, v15);
  }

  v24 = v0[8];
  v23 = v0[9];

  v25 = v0[1];

  return v25();
}

uint64_t sub_101066668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v4 = *(*(type metadata accessor for String.Encoding() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(type metadata accessor for OwnedBeaconGroup.PairingState(0) - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v7 = *(*(sub_1000BC4D4(&unk_1016BBEA0, &unk_101395A80) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v8 = *(*(sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v9 = type metadata accessor for OwnedBeaconGroup(0);
  v3[12] = v9;
  v10 = *(v9 - 8);
  v3[13] = v10;
  v11 = *(v10 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v12 = type metadata accessor for TransportType();
  v3[16] = v12;
  v13 = *(v12 - 8);
  v3[17] = v13;
  v14 = *(v13 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v15 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[20] = v15;
  v16 = *(v15 - 8);
  v3[21] = v16;
  v17 = *(v16 + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_101066928, 0, 0);
}

uint64_t sub_101066928()
{
  v1 = *(v0[3] + 128);
  v0[25] = v1;
  v2 = async function pointer to withTimeout<A>(_:block:)[1];

  v3 = swift_task_alloc();
  v0[26] = v3;
  *v3 = v0;
  v3[1] = sub_101066A04;

  return withTimeout<A>(_:block:)(v3, 2000000000000000000, 0, &unk_1013FD5E0, v1, &type metadata for () + 8);
}

uint64_t sub_101066A04()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v7 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = sub_101068410;
  }

  else
  {
    v5 = *(v2 + 200);

    v4 = sub_101066B20;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_101066B20()
{
  v1 = v0[20];
  v2 = v0[4];
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[28] = v6;
  *(v6 + 16) = xmmword_101385D80;
  Identifier.id.getter();
  v7 = *(&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + 1);
  v11 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
  v8 = swift_task_alloc();
  v0[29] = v8;
  *v8 = v0;
  v8[1] = sub_101066C78;
  v9 = v0[25];

  return v11(v6);
}

uint64_t sub_101066C78(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 232);
  v8 = *v2;
  v3[30] = a1;
  v3[31] = v1;

  if (v1)
  {
    v5 = sub_101068524;
  }

  else
  {
    v6 = v3[28];

    v5 = sub_101066D94;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_101066D94()
{
  v42 = v0;
  v1 = v0[30];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v5 = v0[30];
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v1 & 0xC000000000000001) != 0)
    {
      v35 = v0[30];
      v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v36 = v0[30];
      goto LABEL_6;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(v0[30] + 32);

LABEL_6:
      v0[32] = v2;

      type metadata accessor for Peripheral();
      sub_1010732D8(&unk_1016C11B0, 255, &type metadata accessor for Peripheral);
      v4 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(sub_101067174, v4, v3);
    }

    __break(1u);
    goto LABEL_21;
  }

  v6 = v0[30];

  if (qword_1016951B8 != -1)
  {
LABEL_21:
    swift_once();
  }

  v7 = v0[24];
  v8 = v0[20];
  v9 = v0[21];
  v10 = v0[4];
  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_1016C4F50);
  (*(v9 + 16))(v7, v10, v8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[24];
  v16 = v0[20];
  v17 = v0[21];
  if (v14)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v41 = v19;
    *v18 = 136446210;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    (*(v17 + 8))(v15, v16);
    v23 = sub_1000136BC(v20, v22, &v41);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v12, v13, "Unable to retrieve a Peripheral for %{public}s", v18, 0xCu);
    sub_100007BAC(v19);
  }

  else
  {

    (*(v17 + 8))(v15, v16);
  }

  v25 = v0[23];
  v24 = v0[24];
  v26 = v0[22];
  v28 = v0[18];
  v27 = v0[19];
  v30 = v0[14];
  v29 = v0[15];
  v32 = v0[10];
  v31 = v0[11];
  v33 = v0[9];
  v38 = v0[8];
  v39 = v0[7];
  v40 = v0[5];

  v34 = v0[1];

  return v34();
}

uint64_t sub_101067174()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 152);
  dispatch thunk of Peripheral.transportType.getter();

  return _swift_task_switch(sub_1010671E0, 0, 0);
}

uint64_t sub_1010671E0()
{
  v46 = v0;
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  (*(v4 + 104))(v2, enum case for TransportType.classic(_:), v3);
  sub_1010732D8(&qword_10169BCD8, 255, &type metadata accessor for TransportType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v5 = *(v4 + 8);
  v5(v2, v3);
  v5(v1, v3);
  if (*(v0 + 344) == *(v0 + 345))
  {
    v6 = swift_task_alloc();
    *(v0 + 264) = v6;
    *v6 = v0;
    v6[1] = sub_10106760C;
    v7 = *(v0 + 256);
    v8 = *(v0 + 88);
    v9 = *(v0 + 24);

    return sub_1010690EC(v8, v7);
  }

  else
  {
    if (qword_1016951B8 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 168);
    v11 = *(v0 + 176);
    v13 = *(v0 + 160);
    v14 = *(v0 + 32);
    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_1016C4F50);
    (*(v12 + 16))(v11, v14, v13);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 256);
    v21 = *(v0 + 168);
    v20 = *(v0 + 176);
    v22 = *(v0 + 160);
    if (v18)
    {
      v43 = *(v0 + 256);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v45 = v24;
      *v23 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v21 + 8))(v20, v22);
      v28 = sub_1000136BC(v25, v27, &v45);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v16, v17, "Ignore non-classic peripheral: %{public}s", v23, 0xCu);
      sub_100007BAC(v24);
    }

    else
    {
      v29 = *(v0 + 256);

      (*(v21 + 8))(v20, v22);
    }

    v31 = *(v0 + 184);
    v30 = *(v0 + 192);
    v32 = *(v0 + 176);
    v34 = *(v0 + 144);
    v33 = *(v0 + 152);
    v36 = *(v0 + 112);
    v35 = *(v0 + 120);
    v38 = *(v0 + 80);
    v37 = *(v0 + 88);
    v39 = *(v0 + 72);
    v41 = *(v0 + 64);
    v42 = *(v0 + 56);
    v44 = *(v0 + 40);

    v40 = *(v0 + 8);

    return v40();
  }
}

uint64_t sub_10106760C()
{
  v2 = *(*v1 + 264);
  v5 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_101068638;
  }

  else
  {
    v3 = sub_101067720;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_101067720()
{
  v84 = v0;
  v1 = *(v0 + 88);
  if ((*(*(v0 + 104) + 48))(v1, 1, *(v0 + 96)) == 1)
  {
    sub_10000B3A8(v1, &unk_1016AF8B0, &unk_1013A0700);
    if (qword_1016951B8 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 184);
    v3 = *(v0 + 160);
    v4 = *(v0 + 168);
    v5 = *(v0 + 32);
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_1016C4F50);
    (*(v4 + 16))(v2, v5, v3);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 256);
    v11 = *(v0 + 184);
    v13 = *(v0 + 160);
    v12 = *(v0 + 168);
    if (v9)
    {
      v81 = *(v0 + 256);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v83 = v15;
      *v14 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v12 + 8))(v11, v13);
      v19 = sub_1000136BC(v16, v18, &v83);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v7, v8, "No beacon group was found for connected peripheral: %{public}s", v14, 0xCu);
      sub_100007BAC(v15);
    }

    else
    {
      v33 = *(v0 + 256);

      (*(v12 + 8))(v11, v13);
    }

    goto LABEL_22;
  }

  sub_101072F44(v1, *(v0 + 120), type metadata accessor for OwnedBeaconGroup);
  if (qword_1016951B8 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 112);
  v21 = *(v0 + 120);
  v22 = type metadata accessor for Logger();
  *(v0 + 280) = sub_1000076D4(v22, qword_1016C4F50);
  sub_1010721A8(v21, v20, type metadata accessor for OwnedBeaconGroup);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v0 + 112);
  if (v25)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v83 = v28;
    *v27 = 136315138;
    v29 = sub_10051F7B0(v28);
    v31 = v30;
    sub_101072FAC(v26, type metadata accessor for OwnedBeaconGroup);
    v32 = sub_1000136BC(v29, v31, &v83);

    *(v27 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v23, v24, "Found beacon group %s", v27, 0xCu);
    sub_100007BAC(v28);
  }

  else
  {

    sub_101072FAC(v26, type metadata accessor for OwnedBeaconGroup);
  }

  v34 = *(v0 + 72);
  v35 = *(*(v0 + 120) + *(*(v0 + 96) + 40));
  v36 = *(v0 + 48);
  *(v0 + 288) = v35;
  v37 = *(v35 + 32);
  *(v0 + 346) = v37;
  v38 = -1;
  v39 = -1 << v37;
  if (-(-1 << v37) < 64)
  {
    v38 = ~(-1 << -v39);
  }

  v40 = v38 & *(v35 + 64);

  if (v40)
  {
    v42 = 0;
LABEL_19:
    v45 = *(v0 + 64);
    v46 = (v40 - 1) & v40;
    v47 = __clz(__rbit64(v40)) | (v42 << 6);
    v48 = (*(v41 + 48) + 16 * v47);
    v49 = *v48;
    v50 = v48[1];
    sub_1010721A8(*(v41 + 56) + *(v36 + 72) * v47, v45, type metadata accessor for OwnedBeaconGroup.PairingState);
    v51 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    v52 = *(v51 + 48);
    *v34 = v49;
    v34[1] = v50;
    sub_101072F44(v45, v34 + v52, type metadata accessor for OwnedBeaconGroup.PairingState);
    (*(*(v51 - 8) + 56))(v34, 0, 1, v51);
    sub_100017D5C(v49, v50);
    v44 = v42;
  }

  else
  {
    v43 = 0;
    v44 = ((63 - v39) >> 6) - 1;
    while (v44 != v43)
    {
      v42 = v43 + 1;
      v40 = *(v41 + 72 + 8 * v43++);
      if (v40)
      {
        goto LABEL_19;
      }
    }

    v78 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    (*(*(v78 - 8) + 56))(v34, 1, 1, v78);
    v46 = 0;
  }

  *(v0 + 296) = v46;
  *(v0 + 304) = v44;
  v53 = *(v0 + 80);
  sub_101072210(*(v0 + 72), v53);
  v54 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  if ((*(*(v54 - 8) + 48))(v53, 1, v54) == 1)
  {
    v55 = *(v0 + 288);
    v56 = *(v0 + 256);
    v57 = *(v0 + 120);

    sub_101072FAC(v57, type metadata accessor for OwnedBeaconGroup);
LABEL_22:
    v59 = *(v0 + 184);
    v58 = *(v0 + 192);
    v60 = *(v0 + 176);
    v62 = *(v0 + 144);
    v61 = *(v0 + 152);
    v64 = *(v0 + 112);
    v63 = *(v0 + 120);
    v66 = *(v0 + 80);
    v65 = *(v0 + 88);
    v67 = *(v0 + 72);
    v79 = *(v0 + 64);
    v80 = *(v0 + 56);
    v82 = *(v0 + 40);

    v68 = *(v0 + 8);

    return v68();
  }

  v70 = *(v0 + 80);
  v71 = *(v0 + 56);
  v72 = *v70;
  *(v0 + 312) = *v70;
  v73 = v70[1];
  *(v0 + 320) = v73;
  sub_101072F44(v70 + *(v54 + 48), v71, type metadata accessor for OwnedBeaconGroup.PairingState);
  v74 = swift_task_alloc();
  *(v0 + 328) = v74;
  *v74 = v0;
  v74[1] = sub_101067EE4;
  v75 = *(v0 + 256);
  v76 = *(v0 + 56);
  v77 = *(v0 + 24);

  return sub_10106A974(v75, v72, v73, v76);
}

uint64_t sub_101067EE4()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_10106874C;
  }

  else
  {
    v3 = sub_101067FF8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_101067FF8()
{
  v1 = *(v0 + 56);
  sub_100016590(*(v0 + 312), *(v0 + 320));
  result = sub_101072FAC(v1, type metadata accessor for OwnedBeaconGroup.PairingState);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  if (v3)
  {
    v5 = *(v0 + 288);
LABEL_11:
    v10 = *(v0 + 64);
    v11 = *(v0 + 72);
    v12 = (v3 - 1) & v3;
    v13 = __clz(__rbit64(v3)) | (v4 << 6);
    v14 = (*(v5 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    sub_1010721A8(*(v5 + 56) + *(*(v0 + 48) + 72) * v13, v10, type metadata accessor for OwnedBeaconGroup.PairingState);
    v17 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    v18 = *(v17 + 48);
    *v11 = v15;
    v11[1] = v16;
    sub_101072F44(v10, v11 + v18, type metadata accessor for OwnedBeaconGroup.PairingState);
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
    sub_100017D5C(v15, v16);
    v8 = v4;
LABEL_12:
    *(v0 + 296) = v12;
    *(v0 + 304) = v8;
    v19 = *(v0 + 80);
    sub_101072210(*(v0 + 72), v19);
    v20 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    if ((*(*(v20 - 8) + 48))(v19, 1, v20) == 1)
    {
      v21 = *(v0 + 288);
      v22 = *(v0 + 256);
      v23 = *(v0 + 120);

      sub_101072FAC(v23, type metadata accessor for OwnedBeaconGroup);
      v25 = *(v0 + 184);
      v24 = *(v0 + 192);
      v26 = *(v0 + 176);
      v28 = *(v0 + 144);
      v27 = *(v0 + 152);
      v30 = *(v0 + 112);
      v29 = *(v0 + 120);
      v32 = *(v0 + 80);
      v31 = *(v0 + 88);
      v33 = *(v0 + 72);
      v45 = *(v0 + 64);
      v46 = *(v0 + 56);
      v47 = *(v0 + 40);

      v34 = *(v0 + 8);

      return v34();
    }

    else
    {
      v35 = *(v0 + 80);
      v36 = *(v0 + 56);
      v37 = *v35;
      *(v0 + 312) = *v35;
      v38 = v35[1];
      *(v0 + 320) = v38;
      sub_101072F44(v35 + *(v20 + 48), v36, type metadata accessor for OwnedBeaconGroup.PairingState);
      v39 = swift_task_alloc();
      *(v0 + 328) = v39;
      *v39 = v0;
      v39[1] = sub_101067EE4;
      v40 = *(v0 + 256);
      v41 = *(v0 + 56);
      v42 = *(v0 + 24);

      return sub_10106A974(v40, v37, v38, v41);
    }
  }

  else
  {
    v6 = ((1 << *(v0 + 346)) + 63) >> 6;
    if (v6 <= (v4 + 1))
    {
      v7 = v4 + 1;
    }

    else
    {
      v7 = ((1 << *(v0 + 346)) + 63) >> 6;
    }

    v8 = v7 - 1;
    while (1)
    {
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v9 >= v6)
      {
        v43 = *(v0 + 72);
        v44 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
        (*(*(v44 - 8) + 56))(v43, 1, 1, v44);
        v12 = 0;
        goto LABEL_12;
      }

      v5 = *(v0 + 288);
      v3 = *(v5 + 8 * v9 + 64);
      ++v4;
      if (v3)
      {
        v4 = v9;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_101068410()
{
  v1 = v0[25];

  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  v6 = v0[18];
  v5 = v0[19];
  v8 = v0[14];
  v7 = v0[15];
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[9];
  v14 = v0[8];
  v15 = v0[7];
  v16 = v0[5];
  v17 = v0[27];

  v12 = v0[1];

  return v12();
}

uint64_t sub_101068524()
{
  v1 = v0[28];

  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  v6 = v0[18];
  v5 = v0[19];
  v8 = v0[14];
  v7 = v0[15];
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[9];
  v14 = v0[8];
  v15 = v0[7];
  v16 = v0[5];
  v17 = v0[31];

  v12 = v0[1];

  return v12();
}

uint64_t sub_101068638()
{
  v1 = v0[32];

  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  v6 = v0[18];
  v5 = v0[19];
  v8 = v0[14];
  v7 = v0[15];
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[9];
  v14 = v0[8];
  v15 = v0[7];
  v16 = v0[5];
  v17 = v0[34];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10106874C()
{
  v1 = *(v0 + 336);
  v3 = *(v0 + 312);
  v2 = *(v0 + 320);
  v4 = *(v0 + 280);
  sub_100017D5C(v3, v2);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  sub_100016590(v3, v2);

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 312);
    v7 = *(v0 + 320);
    v9 = *(v0 + 40);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *(v0 + 16) = v12;
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    sub_100017D5C(v8, v7);
    static String.Encoding.utf8.getter();
    v13 = String.init(data:encoding:)();
    v15 = v14;
    v16 = *(v0 + 312);
    v17 = *(v0 + 320);
    if (!v15)
    {
      v18 = *(v0 + 312);
      v19 = *(v0 + 320);
      v13 = Data.hexString.getter();
      v15 = v20;
      v16 = v18;
      v17 = v19;
    }

    sub_100016590(v16, v17);
    v21 = *(v0 + 336);
    v22 = *(v0 + 312);
    v72 = *(v0 + 320);
    v74 = *(v0 + 56);
    v23 = sub_1000136BC(v13, v15, (v0 + 16));

    *(v10 + 14) = v23;
    *(v10 + 22) = 2114;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v24;
    *v11 = v24;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to configure key alignment for %{private,mask.hash}s error %{public}@", v10, 0x20u);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v12);

    sub_100016590(v22, v72);
    v25 = v74;
  }

  else
  {
    v26 = *(v0 + 336);
    v27 = *(v0 + 56);
    sub_100016590(*(v0 + 312), *(v0 + 320));

    v25 = v27;
  }

  result = sub_101072FAC(v25, type metadata accessor for OwnedBeaconGroup.PairingState);
  v29 = *(v0 + 296);
  v30 = *(v0 + 304);
  if (v29)
  {
    v31 = *(v0 + 288);
LABEL_16:
    v36 = *(v0 + 64);
    v37 = *(v0 + 72);
    v38 = (v29 - 1) & v29;
    v39 = __clz(__rbit64(v29)) | (v30 << 6);
    v40 = (*(v31 + 48) + 16 * v39);
    v41 = *v40;
    v42 = v40[1];
    sub_1010721A8(*(v31 + 56) + *(*(v0 + 48) + 72) * v39, v36, type metadata accessor for OwnedBeaconGroup.PairingState);
    v43 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    v44 = *(v43 + 48);
    *v37 = v41;
    v37[1] = v42;
    sub_101072F44(v36, v37 + v44, type metadata accessor for OwnedBeaconGroup.PairingState);
    (*(*(v43 - 8) + 56))(v37, 0, 1, v43);
    sub_100017D5C(v41, v42);
    v34 = v30;
LABEL_17:
    *(v0 + 296) = v38;
    *(v0 + 304) = v34;
    v45 = *(v0 + 80);
    sub_101072210(*(v0 + 72), v45);
    v46 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    if ((*(*(v46 - 8) + 48))(v45, 1, v46) == 1)
    {
      v47 = *(v0 + 288);
      v48 = *(v0 + 256);
      v49 = *(v0 + 120);

      sub_101072FAC(v49, type metadata accessor for OwnedBeaconGroup);
      v51 = *(v0 + 184);
      v50 = *(v0 + 192);
      v52 = *(v0 + 176);
      v54 = *(v0 + 144);
      v53 = *(v0 + 152);
      v56 = *(v0 + 112);
      v55 = *(v0 + 120);
      v58 = *(v0 + 80);
      v57 = *(v0 + 88);
      v59 = *(v0 + 72);
      v71 = *(v0 + 64);
      v73 = *(v0 + 56);
      v75 = *(v0 + 40);

      v60 = *(v0 + 8);

      return v60();
    }

    else
    {
      v61 = *(v0 + 80);
      v62 = *(v0 + 56);
      v63 = *v61;
      *(v0 + 312) = *v61;
      v64 = v61[1];
      *(v0 + 320) = v64;
      sub_101072F44(v61 + *(v46 + 48), v62, type metadata accessor for OwnedBeaconGroup.PairingState);
      v65 = swift_task_alloc();
      *(v0 + 328) = v65;
      *v65 = v0;
      v65[1] = sub_101067EE4;
      v66 = *(v0 + 256);
      v67 = *(v0 + 56);
      v68 = *(v0 + 24);

      return sub_10106A974(v66, v63, v64, v67);
    }
  }

  else
  {
    v32 = ((1 << *(v0 + 346)) + 63) >> 6;
    if (v32 <= (v30 + 1))
    {
      v33 = v30 + 1;
    }

    else
    {
      v33 = ((1 << *(v0 + 346)) + 63) >> 6;
    }

    v34 = v33 - 1;
    while (1)
    {
      v35 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v35 >= v32)
      {
        v69 = *(v0 + 72);
        v70 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
        (*(*(v70 - 8) + 56))(v69, 1, 1, v70);
        v38 = 0;
        goto LABEL_17;
      }

      v31 = *(v0 + 288);
      v29 = *(v31 + 8 * v35 + 64);
      ++v30;
      if (v29)
      {
        v30 = v35;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_101068D70(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for CentralManager.State();
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_101068E30, 0, 0);
}

uint64_t sub_101068E30()
{
  (*(v0[4] + 104))(v0[5], enum case for CentralManager.State.poweredOn(_:), v0[3]);
  v1 = async function pointer to CentralManagerProtocol.await(state:)[1];
  v2 = swift_task_alloc();
  v0[6] = v2;
  v3 = type metadata accessor for CentralManager();
  v4 = sub_1010732D8(&unk_1016C1160, 255, &type metadata accessor for CentralManager);
  *v2 = v0;
  v2[1] = sub_101068F44;
  v5 = v0[5];
  v6 = v0[2];

  return CentralManagerProtocol.await(state:)(v5, v3, v4);
}

uint64_t sub_101068F44()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *v1;
  v6[7] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return _swift_task_switch(sub_1007809C0, 0, 0);
  }

  else
  {
    v7 = v6[5];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_1010690EC(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v3[7] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v6 = type metadata accessor for OwnedBeaconGroup(0);
  v3[9] = v6;
  v7 = *(v6 - 8);
  v3[10] = v7;
  v8 = *(v7 + 64) + 15;
  v3[11] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v10 = type metadata accessor for MACAddress();
  v3[13] = v10;
  v11 = *(v10 - 8);
  v3[14] = v11;
  v3[15] = *(v11 + 64);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_1010692AC, v2, 0);
}

uint64_t sub_1010692AC()
{
  v1 = *(v0[6] + 128);
  v0[20] = v1;
  v2 = async function pointer to withTimeout<A>(_:block:)[1];

  v3 = swift_task_alloc();
  v0[21] = v3;
  *v3 = v0;
  v3[1] = sub_101069388;

  return withTimeout<A>(_:block:)(v3, 2000000000000000000, 0, &unk_1013FD640, v1, &type metadata for () + 8);
}

uint64_t sub_101069388()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v9 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = *(v2 + 48);
    v5 = sub_10106A7EC;
  }

  else
  {
    v6 = *(v2 + 160);
    v7 = *(v2 + 48);

    v5 = sub_1010694B0;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1010694B0()
{
  v1 = async function pointer to daemon.getter[1];
  v2 = swift_task_alloc();
  *(v0 + 184) = v2;
  *v2 = v0;
  v2[1] = sub_101069540;

  return daemon.getter();
}

uint64_t sub_101069540(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 184);
  v12 = *v1;
  *(v3 + 192) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 200) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1010732D8(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_1010732D8(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_101069724;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_101069724(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v14 = *v2;
  v3[26] = a1;
  v3[27] = v1;

  if (v1)
  {
    v5 = v3[6];
    v6 = sub_10106A8B0;
    v7 = 0;
  }

  else
  {
    v8 = v3[24];
    v9 = v3[5];

    type metadata accessor for Peripheral();
    sub_1010732D8(&unk_1016C11B0, 255, &type metadata accessor for Peripheral);
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
    v6 = sub_1010698A8;
    v5 = v10;
    v7 = v12;
  }

  return _swift_task_switch(v6, v5, v7);
}

uint64_t sub_1010698A8()
{
  v1 = v0[12];
  v3 = v0[5];
  v2 = v0[6];
  dispatch thunk of Peripheral.macAddress.getter();

  return _swift_task_switch(sub_101069914, v2, 0);
}

uint64_t sub_101069914()
{
  v34 = v0;
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016A40D0, &unk_10138BE70);
    if (qword_1016951B8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_1016C4F50);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Looking through all beacon groups", v7, 2u);
    }

    v8 = v0[26];

    v9 = sub_10106A2A8;
    v10 = v8;
  }

  else
  {
    v11 = v0[19];
    v12 = *(v2 + 32);
    v0[28] = v12;
    v0[29] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v12(v11, v3, v1);
    if (qword_1016951B8 != -1)
    {
      swift_once();
    }

    v13 = v0[18];
    v14 = v0[19];
    v15 = v0[13];
    v16 = v0[14];
    v17 = type metadata accessor for Logger();
    v0[30] = sub_1000076D4(v17, qword_1016C4F50);
    v18 = *(v16 + 16);
    v0[31] = v18;
    v0[32] = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v18(v13, v14, v15);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[18];
    v23 = v0[13];
    v24 = v0[14];
    if (v21)
    {
      v25 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = v32;
      *v25 = 136446210;
      sub_1010732D8(&qword_1016A4210, 255, &type metadata accessor for MACAddress);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      v29 = *(v24 + 8);
      v29(v22, v23);
      v30 = sub_1000136BC(v26, v28, &v33);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v19, v20, "Looking for beacon group matching %{public}s", v25, 0xCu);
      sub_100007BAC(v32);
    }

    else
    {

      v29 = *(v24 + 8);
      v29(v22, v23);
    }

    v0[33] = v29;
    v10 = v0[26];
    v9 = sub_101069CA4;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_101069CA4()
{
  v1 = *(v0 + 256);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v5 = *(v0 + 136);
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  v8 = *(v0 + 104);
  (*(v0 + 248))(v5, *(v0 + 152), v8);
  v9 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v0 + 272) = v10;
  *(v10 + 16) = v4;
  v3(v10 + v9, v5, v8);
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 280) = v12;
  *v12 = v0;
  v12[1] = sub_101069DF4;
  v14 = *(v0 + 56);
  v13 = *(v0 + 64);

  return unsafeBlocking<A>(context:_:)(v13, 0xD000000000000010, 0x800000010134A8C0, sub_10107321C, v10, v14);
}

uint64_t sub_101069DF4()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 48);
  v5 = *v0;

  return _swift_task_switch(sub_101069F20, v3, 0);
}

uint64_t sub_101069F20()
{
  v46 = v0;
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[33];
    v5 = v0[26];
    v6 = v0[19];
    v7 = v0[13];
    v8 = v0[14];
    v9 = v0[4];

    v4(v6, v7);
    sub_10000B3A8(v3, &unk_1016AF8B0, &unk_1013A0700);
    (*(v2 + 56))(v9, 1, 1, v1);
  }

  else
  {
    v11 = v0[31];
    v10 = v0[32];
    v12 = v0[30];
    v13 = v0[19];
    v14 = v0[16];
    v15 = v0[13];
    sub_101072F44(v3, v0[11], type metadata accessor for OwnedBeaconGroup);
    v11(v14, v13, v15);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[33];
    v20 = v0[26];
    v21 = v0[19];
    v22 = v0[16];
    v23 = v0[13];
    v24 = v0[14];
    if (v18)
    {
      v44 = v0[33];
      v25 = swift_slowAlloc();
      v43 = v21;
      v26 = swift_slowAlloc();
      v45 = v26;
      *v25 = 136446210;
      sub_1010732D8(&qword_1016A4210, 255, &type metadata accessor for MACAddress);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      v44(v22, v23);
      v30 = sub_1000136BC(v27, v29, &v45);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v16, v17, "Found beacon group matching %{public}s", v25, 0xCu);
      sub_100007BAC(v26);

      v44(v43, v23);
    }

    else
    {

      v19(v22, v23);
      v19(v21, v23);
    }

    v31 = v0[10];
    v32 = v0[9];
    v33 = v0[4];
    sub_101072F44(v0[11], v33, type metadata accessor for OwnedBeaconGroup);
    (*(v31 + 56))(v33, 0, 1, v32);
  }

  v35 = v0[18];
  v34 = v0[19];
  v37 = v0[16];
  v36 = v0[17];
  v39 = v0[11];
  v38 = v0[12];
  v40 = v0[8];

  v41 = v0[1];

  return v41();
}

uint64_t sub_10106A2A8()
{
  v1 = v0[26];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[36] = v3;
  v4 = sub_1000BC4D4(&qword_10169B778, &qword_101395240);
  v0[37] = v4;
  *v3 = v0;
  v3[1] = sub_10106A398;
  v5 = v0[26];

  return unsafeBlocking<A>(context:_:)(v0 + 2, 0xD000000000000010, 0x800000010134A8C0, sub_10025B32C, v5, v4);
}

uint64_t sub_10106A398()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 208);
  v4 = *v0;

  return _swift_task_switch(sub_10106A4B0, v2, 0);
}

uint64_t sub_10106A4B0()
{
  v1 = v0[6];
  v0[38] = v0[2];
  return _swift_task_switch(sub_10106A4D4, v1, 0);
}

uint64_t sub_10106A4D4()
{
  v1 = v0[20];
  v2 = v0[5];
  v0[3] = v0[38];
  v3 = swift_task_alloc();
  v0[39] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to Sequence.asyncFirst(where:)[1];
  v5 = swift_task_alloc();
  v0[40] = v5;
  v6 = sub_1000041A4(&qword_10169BCE0, &qword_10169B778, &qword_101395240);
  *v5 = v0;
  v5[1] = sub_10106A5EC;
  v7 = v0[37];
  v8 = v0[4];

  return Sequence.asyncFirst(where:)(v8, &unk_1013FD658, v3, v7, v6);
}

uint64_t sub_10106A5EC()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = v2[38];
    v7 = v2[39];
    v8 = v2[6];

    return _swift_task_switch(sub_10106A734, v8, 0);
  }
}

uint64_t sub_10106A734()
{
  v1 = v0[26];

  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[8];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10106A7EC()
{
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[8];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10106A8B0()
{
  v1 = v0[27];
  v2 = v0[24];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[8];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10106A974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[55] = a4;
  v5[56] = v4;
  v5[53] = a2;
  v5[54] = a3;
  v5[52] = a1;
  v6 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  v7 = type metadata accessor for AccessoryCommand();
  v5[59] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[60] = swift_task_alloc();
  v9 = *(*(type metadata accessor for String.Encoding() - 8) + 64) + 15;
  v5[61] = swift_task_alloc();
  v10 = type metadata accessor for BeaconIdentifier();
  v5[62] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[63] = swift_task_alloc();
  v12 = *(*(sub_1000BC4D4(&qword_10169E368, &qword_1013D6690) - 8) + 64) + 15;
  v5[64] = swift_task_alloc();
  v13 = type metadata accessor for KeyGenerationBeaconInfo();
  v5[65] = v13;
  v14 = *(v13 - 8);
  v5[66] = v14;
  v15 = *(v14 + 64) + 15;
  v5[67] = swift_task_alloc();
  v16 = *(*(sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0) - 8) + 64) + 15;
  v5[68] = swift_task_alloc();
  v5[69] = swift_task_alloc();
  v17 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v5[70] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v5[71] = swift_task_alloc();
  v5[72] = swift_task_alloc();
  v19 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v5[73] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v5[74] = swift_task_alloc();
  v21 = type metadata accessor for OwnedBeaconRecord();
  v5[75] = v21;
  v22 = *(v21 - 8);
  v5[76] = v22;
  v23 = *(v22 + 64) + 15;
  v5[77] = swift_task_alloc();
  v24 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v5[78] = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  v5[79] = swift_task_alloc();
  v26 = type metadata accessor for UUID();
  v5[80] = v26;
  v27 = *(v26 - 8);
  v5[81] = v27;
  v5[82] = *(v27 + 64);
  v5[83] = swift_task_alloc();
  v5[84] = swift_task_alloc();
  v5[85] = swift_task_alloc();
  v5[86] = swift_task_alloc();
  v5[87] = swift_task_alloc();
  v5[88] = swift_task_alloc();
  v5[89] = swift_task_alloc();
  v5[90] = swift_task_alloc();

  return _swift_task_switch(sub_10106AD50, v4, 0);
}

uint64_t sub_10106AD50()
{
  v50 = v0;
  v1 = v0[78];
  sub_1010721A8(v0[55], v0[79], type metadata accessor for OwnedBeaconGroup.PairingState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = v0[90];
    v3 = v0[81];
    v4 = v0[80];
    v5 = v0[79];
    v6 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
    v7 = *(v6 + 48);
    sub_100006654(*(v5 + *(v6 + 64)), *(v5 + *(v6 + 64) + 8));
    v8 = *(v3 + 32);
    v0[91] = v8;
    v0[92] = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v8(v2, v5, v4);
    sub_10000B3A8(v5 + v7, &qword_1016A40D0, &unk_10138BE70);
    v9 = async function pointer to daemon.getter[1];
    v10 = swift_task_alloc();
    v0[93] = v10;
    *v10 = v0;
    v10[1] = sub_10106B1C4;

    return daemon.getter();
  }

  else
  {
    sub_101072FAC(v0[79], type metadata accessor for OwnedBeaconGroup.PairingState);
    if (qword_1016951B8 != -1)
    {
      swift_once();
    }

    v12 = v0[53];
    v11 = v0[54];
    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_1016C4F50);
    sub_100017D5C(v12, v11);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    sub_100016590(v12, v11);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = v0[61];
      v18 = v0[53];
      v17 = v0[54];
      v19 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v19 = 136315651;
      *(v19 + 4) = sub_1000136BC(0xD00000000000003CLL, 0x80000001013792C0, &v49);
      *(v19 + 12) = 2160;
      *(v19 + 14) = 1752392040;
      *(v19 + 22) = 2081;
      static String.Encoding.utf8.getter();
      v20 = String.init(data:encoding:)();
      if (!v21)
      {
        v22 = v0[53];
        v23 = v0[54];
        v20 = Data.hexString.getter();
      }

      v24 = sub_1000136BC(v20, v21, &v49);

      *(v19 + 24) = v24;
      _os_log_impl(&_mh_execute_header, v14, v15, "%s Skipping .unpaired part %{private,mask.hash}s", v19, 0x20u);
      swift_arrayDestroy();
    }

    v25 = v0[90];
    v26 = v0[89];
    v27 = v0[88];
    v28 = v0[87];
    v29 = v0[86];
    v30 = v0[85];
    v31 = v0[84];
    v32 = v0[83];
    v33 = v0[79];
    v34 = v0[77];
    v37 = v0[74];
    v38 = v0[72];
    v39 = v0[71];
    v40 = v0[69];
    v41 = v0[68];
    v42 = v0[67];
    v43 = v0[64];
    v44 = v0[63];
    v45 = v0[61];
    v46 = v0[60];
    v47 = v0[58];
    v48 = v0[57];

    v35 = v0[1];

    return v35();
  }
}

uint64_t sub_10106B1C4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 744);
  v12 = *v1;
  v3[94] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[95] = v6;
  v7 = type metadata accessor for Daemon();
  v3[96] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1010732D8(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v3[97] = v9;
  v10 = sub_1010732D8(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_10106B3B8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10106B3B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 760);
  v6 = *v2;
  v4[98] = a1;
  v4[99] = v1;

  v7 = v4[94];
  if (v1)
  {
    v8 = v4[56];

    v9 = sub_10106F720;
    v10 = v8;
  }

  else
  {

    v9 = sub_10106B510;
    v10 = a1;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_10106B510()
{
  v1 = *(v0 + 784);
  v2 = *(v0 + 736);
  v3 = *(v0 + 728);
  v4 = *(v0 + 720);
  v5 = *(v0 + 712);
  v6 = *(v0 + 656);
  v7 = *(v0 + 648);
  v8 = *(v0 + 640);
  v9 = *(v7 + 16);
  v7 += 16;
  *(v0 + 800) = v9;
  *(v0 + 808) = v7 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v5, v4, v8);
  v10 = *(v7 + 64);
  *(v0 + 1120) = v10;
  v11 = (v10 + 24) & ~v10;
  v12 = swift_allocObject();
  *(v0 + 816) = v12;
  *(v12 + 16) = v1;
  v3(v12 + v11, v5, v8);
  v13 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v14 = swift_task_alloc();
  *(v0 + 824) = v14;
  *v14 = v0;
  v14[1] = sub_10106B68C;
  v15 = *(v0 + 592);
  v16 = *(v0 + 584);

  return unsafeBlocking<A>(context:_:)(v15, 0xD000000000000010, 0x800000010134A8C0, sub_101072280, v12, v16);
}

uint64_t sub_10106B68C()
{
  v1 = *(*v0 + 824);
  v2 = *(*v0 + 816);
  v3 = *(*v0 + 448);
  v5 = *v0;

  return _swift_task_switch(sub_10106B7B8, v3, 0);
}

uint64_t sub_10106B7B8()
{
  v53 = v0;
  v1 = v0[75];
  v2 = v0[74];
  if ((*(v0[76] + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_1016A9A20, &qword_10138B280);
    if (qword_1016951B8 != -1)
    {
      swift_once();
    }

    v3 = v0[101];
    v4 = v0[100];
    v5 = v0[90];
    v6 = v0[83];
    v7 = v0[80];
    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_1016C4F50);
    v4(v6, v5, v7);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[83];
    v13 = v0[81];
    v14 = v0[80];
    if (v11)
    {
      v50 = v10;
      v15 = swift_slowAlloc();
      v52[0] = swift_slowAlloc();
      *v15 = 136315651;
      *(v15 + 4) = sub_1000136BC(0xD00000000000003CLL, 0x80000001013792C0, v52);
      *(v15 + 12) = 2160;
      *(v15 + 14) = 1752392040;
      *(v15 + 22) = 2081;
      sub_1010732D8(&qword_101696930, 255, &type metadata accessor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      v19 = *(v13 + 8);
      v19(v12, v14);
      v20 = sub_1000136BC(v16, v18, v52);

      *(v15 + 24) = v20;
      _os_log_impl(&_mh_execute_header, v9, v50, "%s Missing beacon record for %{private,mask.hash}s.", v15, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v19 = *(v13 + 8);
      v19(v12, v14);
    }

    v23 = v0[98];
    v24 = v0[90];
    v25 = v0[80];
    sub_1010722AC();
    swift_allocError();
    *v26 = 4;
    swift_willThrow();

    v19(v24, v25);
    v27 = v0[90];
    v28 = v0[89];
    v29 = v0[88];
    v30 = v0[87];
    v31 = v0[86];
    v32 = v0[85];
    v33 = v0[84];
    v34 = v0[83];
    v35 = v0[79];
    v36 = v0[77];
    v39 = v0[74];
    v40 = v0[72];
    v41 = v0[71];
    v42 = v0[69];
    v43 = v0[68];
    v44 = v0[67];
    v45 = v0[64];
    v46 = v0[63];
    v47 = v0[61];
    v48 = v0[60];
    v49 = v0[58];
    v51 = v0[57];

    v37 = v0[1];

    return v37();
  }

  else
  {
    v21 = v0[98];
    v22 = v0[77];
    sub_101072F44(v2, v22, type metadata accessor for OwnedBeaconRecord);
    v0[104] = [objc_opt_self() standardUserDefaults];
    v0[105] = *(v22 + *(v1 + 68));

    return _swift_task_switch(sub_10106BCA8, v21, 0);
  }
}

uint64_t sub_10106BCA8()
{
  v1 = *(v0 + 808);
  v2 = *(v0 + 784);
  v3 = *(v0 + 736);
  v4 = *(v0 + 728);
  v5 = *(v0 + 712);
  v6 = *(v0 + 656);
  v7 = *(v0 + 640);
  v8 = (*(v0 + 1120) + 24) & ~*(v0 + 1120);
  (*(v0 + 800))(v5, *(v0 + 720), v7);
  v9 = swift_allocObject();
  *(v0 + 848) = v9;
  *(v9 + 16) = v2;
  v4(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 856) = v11;
  *v11 = v0;
  v11[1] = sub_10106BE04;
  v12 = *(v0 + 576);
  v13 = *(v0 + 560);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_101072300, v9, v13);
}

uint64_t sub_10106BE04()
{
  v1 = *(*v0 + 856);
  v2 = *(*v0 + 848);
  v3 = *(*v0 + 448);
  v5 = *v0;

  return _swift_task_switch(sub_10106BF30, v3, 0);
}

uint64_t sub_10106BF30()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 isInternalBuild];

  if (v2)
  {
    v3 = v0[104];
    v4 = String._bridgeToObjectiveC()();
    LOBYTE(v3) = [v3 BOOLForKey:v4];

    if (v3)
    {
      goto LABEL_4;
    }
  }

  v5 = v0[105];
  v6 = sub_101129A64(&off_10160D330);
  LOBYTE(v5) = sub_10111F5D4(v5, v6);

  if (v5)
  {
    goto LABEL_4;
  }

  v9 = v0[71];
  sub_1000D2A70(v0[72], v9, &unk_1016AF8C0, &unk_1013A07A0);
  v10 = type metadata accessor for BeaconProductInfoRecord();
  v11 = (*(*(v10 - 8) + 48))(v9, 1, v10);
  v12 = v0[71];
  if (v11 == 1)
  {
    sub_10000B3A8(v12, &unk_1016AF8C0, &unk_1013A07A0);
  }

  else
  {
    v13 = *(v12 + *(v10 + 40));
    sub_101072FAC(v12, type metadata accessor for BeaconProductInfoRecord);
    if (v13 != 2 && (v13 & 1) != 0)
    {
LABEL_4:
      v7 = async function pointer to daemon.getter[1];
      v8 = swift_task_alloc();
      v0[108] = v8;
      *v8 = v0;
      v8[1] = sub_10106C3D0;

      return daemon.getter();
    }
  }

  if (qword_1016951B8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_1016C4F50);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = v0[105];
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = v17;
  }

  v19 = v0[104];
  v20 = v0[98];
  v21 = v0[90];
  v22 = v0[81];
  v23 = v0[80];
  v24 = v0[77];
  v25 = v0[72];

  sub_10000B3A8(v25, &unk_1016AF8C0, &unk_1013A07A0);
  sub_101072FAC(v24, type metadata accessor for OwnedBeaconRecord);
  (*(v22 + 8))(v21, v23);
  v26 = v0[90];
  v27 = v0[89];
  v28 = v0[88];
  v29 = v0[87];
  v30 = v0[86];
  v31 = v0[85];
  v32 = v0[84];
  v33 = v0[83];
  v34 = v0[79];
  v35 = v0[77];
  v38 = v0[74];
  v39 = v0[72];
  v40 = v0[71];
  v41 = v0[69];
  v42 = v0[68];
  v43 = v0[67];
  v44 = v0[64];
  v45 = v0[63];
  v46 = v0[61];
  v47 = v0[60];
  v48 = v0[58];
  v49 = v0[57];

  v36 = v0[1];

  return v36();
}

uint64_t sub_10106C3D0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 864);
  v5 = *v1;
  v3[109] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[110] = v7;
  v8 = type metadata accessor for BeaconKeyService();
  v9 = sub_1010732D8(&unk_1016B1090, 255, type metadata accessor for BeaconKeyService);
  *v7 = v5;
  v7[1] = sub_10106C588;
  v10 = v3[97];
  v11 = v3[96];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_10106C588(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 880);
  v6 = *v2;
  v4[111] = a1;
  v4[112] = v1;

  v7 = v4[109];
  if (v1)
  {
    v8 = v4[56];

    v9 = sub_10106F8D0;
    v10 = v8;
  }

  else
  {

    v9 = sub_10106C6E0;
    v10 = a1;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_10106C6E0()
{
  v1 = *(v0[111] + 128);
  v0[113] = v1;
  v2 = v0[56];
  if (v1)
  {

    v3 = sub_10106C770;
  }

  else
  {
    v3 = sub_10106F42C;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_10106C770()
{
  *(v0 + 1124) = sub_101063248();
  v1 = swift_task_alloc();
  *(v0 + 912) = v1;
  *v1 = v0;
  v1[1] = sub_10106C814;
  v2 = *(v0 + 720);
  v3 = *(v0 + 552);
  v4 = *(v0 + 448);

  return sub_1010706B0(v3, v2);
}

uint64_t sub_10106C814()
{
  v2 = *v1;
  v3 = *(*v1 + 912);
  v4 = *v1;
  *(*v1 + 920) = v0;

  v5 = *(v2 + 448);
  if (v0)
  {
    v6 = sub_10106FAD8;
  }

  else
  {
    v6 = sub_10106C940;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10106C940()
{
  v58 = v0;
  sub_100EB3A04(0xD00000000000001FLL, 0x8000000101379330, *(v0 + 832));
  if (v2)
  {
    v3 = **(v0 + 552);
    goto LABEL_11;
  }

  v4 = v1;
  if (qword_1016951B8 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 552);
  v6 = *(v0 + 544);
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_1016C4F50);
  sub_1000D2A70(v5, v6, &unk_1016C8FC0, &unk_10139D7D0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 544);
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v57 = v13;
    *v12 = 136315394;
    v14 = sub_1009AB5AC();
    v16 = v15;
    sub_10000B3A8(v11, &unk_1016C8FC0, &unk_10139D7D0);
    v17 = sub_1000136BC(v14, v16, &v57);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2048;
    *(v12 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v8, v9, "lastObservedIndex:%s offsetOverride:%ld", v12, 0x16u);
    sub_100007BAC(v13);
  }

  else
  {

    sub_10000B3A8(v11, &unk_1016C8FC0, &unk_10139D7D0);
  }

  v18 = **(v0 + 552);
  if (v18 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v19 = __OFADD__(v18, v4);
  v3 = v18 + v4;
  if (v19)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v3 < 0)
  {
LABEL_20:
    __break(1u);
    return daemon.getter();
  }

LABEL_11:
  *(v0 + 928) = v3;
  v20 = *(v0 + 920);
  *(v0 + 1128) = sub_10107232C();
  if (!v20)
  {
    v43 = async function pointer to daemon.getter[1];
    v44 = swift_task_alloc();
    *(v0 + 936) = v44;
    *v44 = v0;
    v44[1] = sub_10106CDDC;

    return daemon.getter();
  }

  v21 = *(v0 + 904);
  v22 = *(v0 + 888);
  v23 = *(v0 + 832);
  v24 = *(v0 + 784);
  v25 = *(v0 + 720);
  v26 = *(v0 + 648);
  v27 = *(v0 + 640);
  v28 = *(v0 + 616);
  v29 = *(v0 + 576);
  v30 = *(v0 + 552);

  sub_10000B3A8(v30, &unk_1016C8FC0, &unk_10139D7D0);
  sub_10000B3A8(v29, &unk_1016AF8C0, &unk_1013A07A0);
  sub_101072FAC(v28, type metadata accessor for OwnedBeaconRecord);
  (*(v26 + 8))(v25, v27);
  v31 = *(v0 + 720);
  v32 = *(v0 + 712);
  v33 = *(v0 + 704);
  v34 = *(v0 + 696);
  v35 = *(v0 + 688);
  v36 = *(v0 + 680);
  v37 = *(v0 + 672);
  v38 = *(v0 + 664);
  v39 = *(v0 + 632);
  v40 = *(v0 + 616);
  v45 = *(v0 + 592);
  v46 = *(v0 + 576);
  v47 = *(v0 + 568);
  v48 = *(v0 + 552);
  v49 = *(v0 + 544);
  v50 = *(v0 + 536);
  v51 = *(v0 + 512);
  v52 = *(v0 + 504);
  v53 = *(v0 + 488);
  v54 = *(v0 + 480);
  v55 = *(v0 + 464);
  v56 = *(v0 + 456);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_10106CDDC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 936);
  v5 = *v1;
  v3[118] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[119] = v7;
  v8 = type metadata accessor for OwnerCommandService(0);
  v9 = sub_1010732D8(&unk_1016B10E0, 255, type metadata accessor for OwnerCommandService);
  *v7 = v5;
  v7[1] = sub_10106CF94;
  v10 = v3[97];
  v11 = v3[96];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_10106CF94(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 952);
  v6 = *v2;
  *(v4 + 960) = a1;
  *(v4 + 968) = v1;

  v7 = *(v3 + 944);
  v8 = *(v3 + 448);

  if (v1)
  {
    v9 = sub_10106FCF4;
  }

  else
  {
    v9 = sub_10106D0E8;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10106D0E8()
{
  v1 = *(v0 + 808);
  (*(v0 + 800))(*(v0 + 504) + *(*(v0 + 496) + 20), *(v0 + 720), *(v0 + 640));
  v2 = getuid();
  sub_1000294F0(v2);
  v3 = swift_task_alloc();
  *(v0 + 976) = v3;
  *v3 = v0;
  v3[1] = sub_10106D1AC;
  v4 = *(v0 + 960);
  v6 = *(v0 + 504);
  v5 = *(v0 + 512);

  return sub_10094751C(v5, v6);
}

uint64_t sub_10106D1AC()
{
  v2 = *v1;
  v3 = *(*v1 + 976);
  v4 = *v1;
  *(*v1 + 984) = v0;

  v5 = *(v2 + 504);
  v6 = *(v2 + 448);
  sub_101072FAC(v5, type metadata accessor for BeaconIdentifier);
  if (v0)
  {
    v7 = sub_10106FF2C;
  }

  else
  {
    v7 = sub_10106D308;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10106D308()
{
  v74 = v0;
  v1 = v0[65];
  v2 = v0[64];
  if ((*(v0[66] + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &qword_10169E368, &qword_1013D6690);
    if (qword_1016951B8 != -1)
    {
      swift_once();
    }

    v3 = v0[101];
    v4 = v0[100];
    v5 = v0[90];
    v6 = v0[84];
    v7 = v0[80];
    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_1016C4F50);
    v4(v6, v5, v7);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[84];
    v13 = v0[81];
    v14 = v0[80];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v73[0] = swift_slowAlloc();
      *v15 = 136315651;
      *(v15 + 4) = sub_1000136BC(0xD00000000000003CLL, 0x80000001013792C0, v73);
      *(v15 + 12) = 2160;
      *(v15 + 14) = 1752392040;
      *(v15 + 22) = 2081;
      sub_1010732D8(&qword_101696930, 255, &type metadata accessor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      v69 = *(v13 + 8);
      v69(v12, v14);
      v19 = sub_1000136BC(v16, v18, v73);

      *(v15 + 24) = v19;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s Missing beacon info for %{private,mask.hash}s.", v15, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v69 = *(v13 + 8);
      v69(v12, v14);
    }

    v28 = v0[120];
    v29 = v0[113];
    v30 = v0[111];
    v31 = v0[104];
    v32 = v0[98];
    v65 = v0[80];
    v67 = v0[90];
    v63 = v0[77];
    v33 = v0[72];
    v34 = v0[69];
    sub_1010722AC();
    swift_allocError();
    *v35 = 4;
    swift_willThrow();

    sub_10000B3A8(v34, &unk_1016C8FC0, &unk_10139D7D0);
    sub_10000B3A8(v33, &unk_1016AF8C0, &unk_1013A07A0);
    sub_101072FAC(v63, type metadata accessor for OwnedBeaconRecord);
    v69(v67, v65);
    v36 = v0[90];
    v37 = v0[89];
    v38 = v0[88];
    v39 = v0[87];
    v40 = v0[86];
    v41 = v0[85];
    v42 = v0[84];
    v43 = v0[83];
    v44 = v0[79];
    v45 = v0[77];
    v55 = v0[74];
    v56 = v0[72];
    v57 = v0[71];
    v58 = v0[69];
    v59 = v0[68];
    v60 = v0[67];
    v61 = v0[64];
    v62 = v0[63];
    v64 = v0[61];
    v66 = v0[60];
    v68 = v0[58];
    v70 = v0[57];

    v46 = v0[1];

    return v46();
  }

  else
  {
    v20 = v0[67];
    sub_101072F44(v2, v20, type metadata accessor for KeyGenerationBeaconInfo);
    v21 = (v20 + *(v1 + 24));
    v22 = v21[1];
    if (v22 >> 60 == 15)
    {
      v23 = 0;
      v24 = 0;
      v22 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0xF000000000000000;
    }

    else
    {
      v24 = *v21;
      v25 = v21[2];
      v26 = v21[3];
      v48 = v21[4];
      v49 = v21[5];
      sub_100F32E90(*v21, v21[1], v25, v26, v48, v49, sub_100017D5C, sub_1002DBC68);
      sub_100017D5C(v24, v22);
      sub_10002EA98(57, v24, v22, v73);
      sub_100496F68(v73[0], v73[1], &v71);
      v27 = v72;
      if (v72 >> 60 == 15)
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      v23 = v71;
      sub_100017D5C(v24, v22);
      sub_100017D5C(v25, v26);
      sub_100F32E90(v24, v22, v25, v26, v48, v49, sub_100016590, sub_100006654);
    }

    v0[129] = v26;
    v0[128] = v25;
    v0[127] = v22;
    v0[126] = v24;
    v0[125] = v27;
    v0[124] = v23;
    v50 = v0[116];
    v51 = v0[113];
    v52 = v0[67];
    v0[2] = v23;
    v0[3] = v27;
    v0[4] = v24;
    v0[5] = v22;
    v0[6] = v25;
    v0[7] = v26;
    sub_1009B4CEC(v0 + 8);
    v0[40] = &type metadata for PrimaryIndex;
    v0[41] = sub_10002A2B8();
    v0[37] = v50;
    v53 = swift_task_alloc();
    v0[130] = v53;
    *v53 = v0;
    v53[1] = sub_10106DA7C;
    v54 = v0[67];

    return sub_100429258((v0 + 32), v54, (v0 + 2), (v0 + 8), (v0 + 37), v51, 4000);
  }
}

uint64_t sub_10106DA7C()
{
  v2 = *v1;
  v3 = (*v1)[130];
  v19 = *v1;
  (*v1)[131] = v0;

  if (v0)
  {
    v4 = v2[129];
    v5 = v2[128];
    v6 = v2[127];
    v7 = v2[126];
    v8 = v2[125];
    v9 = v2[124];
    v10 = v2[56];
    sub_10000B3A8((v2 + 8), &qword_10169FCA8, &qword_1013A2B88);
    sub_100F32E90(v9, v8, v7, v6, v5, v4, sub_100016590, sub_100016590);
    v11 = sub_101070174;
  }

  else
  {
    v12 = v2[129];
    v13 = v2[128];
    v14 = v2[127];
    v15 = v2[126];
    v16 = v2[125];
    v17 = v2[124];
    v10 = v2[56];
    sub_10000B3A8((v2 + 8), &qword_10169FCA8, &qword_1013A2B88);
    sub_100F32E90(v17, v16, v15, v14, v13, v12, sub_100016590, sub_100016590);
    sub_100007BAC(v2 + 37);
    v11 = sub_10106DCA0;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_10106DCA0()
{
  v148 = v0;
  if (*(v0 + 280))
  {
    sub_1000BC4D4(&qword_1016C5048, &unk_1013FD628);
    if (swift_dynamicCast())
    {
      v141 = *(v0 + 336);
      v144 = *(v0 + 344);
      *(v0 + 1056) = v144;
      v2 = *(v0 + 352);
      v1 = *(v0 + 360);
      *(v0 + 1064) = v2;
      log = v1;
      *(v0 + 1072) = v1;
      v128 = *(v0 + 368);
      *(v0 + 1080) = v128;
      if (qword_1016951B8 != -1)
      {
        swift_once();
      }

      v3 = *(v0 + 808);
      v4 = *(v0 + 800);
      v5 = *(v0 + 720);
      v6 = *(v0 + 704);
      v7 = *(v0 + 640);
      v9 = *(v0 + 424);
      v8 = *(v0 + 432);
      v10 = type metadata accessor for Logger();
      *(v0 + 1088) = sub_1000076D4(v10, qword_1016C4F50);
      v4(v6, v5, v7);
      v11 = v144;
      sub_100017D5C(v144, v2);
      sub_100017D5C(log, v128);
      sub_100017D5C(v9, v8);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      sub_100016590(v9, v8);
      v138 = v2;
      sub_100016590(v144, v2);
      sub_100016590(log, v128);
      v14 = os_log_type_enabled(v12, v13);
      v15 = *(v0 + 704);
      v16 = *(v0 + 648);
      v17 = *(v0 + 640);
      if (v14)
      {
        v129 = v13;
        loga = v12;
        v18 = *(v0 + 488);
        v122 = *(v0 + 424);
        v124 = *(v0 + 432);
        v19 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        *v19 = 136317187;
        *(v19 + 4) = sub_1000136BC(0xD00000000000003CLL, 0x80000001013792C0, &v145);
        *(v19 + 12) = 2160;
        *(v19 + 14) = 1752392040;
        *(v19 + 22) = 2081;
        sub_1010732D8(&qword_101696930, 255, &type metadata accessor for UUID);
        v20 = dispatch thunk of CustomStringConvertible.description.getter();
        v22 = v21;
        v23 = *(v16 + 8);
        v23(v15, v17);
        v24 = sub_1000136BC(v20, v22, &v145);

        *(v19 + 24) = v24;
        *(v19 + 32) = 2160;
        *(v19 + 34) = 1752392040;
        *(v19 + 42) = 2081;
        static String.Encoding.utf8.getter();
        v25 = String.init(data:encoding:)();
        if (!v26)
        {
          v27 = *(v0 + 424);
          v28 = *(v0 + 432);
          v25 = Data.hexString.getter();
        }

        v11 = v144;
        v29 = *(v0 + 1128);
        v30 = *(v0 + 1124);
        v31 = sub_1000136BC(v25, v26, &v145);

        *(v19 + 44) = v31;
        *(v19 + 52) = 2082;
        v146 = 0x7972616D6972702ELL;
        v147 = 0xEA0000000000282FLL;
        *(v0 + 408) = v141;
        v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v32);

        v33._countAndFlagsBits = 41;
        v33._object = 0xE100000000000000;
        String.append(_:)(v33);
        v34 = sub_1000136BC(v146, v147, &v145);

        *(v19 + 54) = v34;
        *(v19 + 62) = 2080;
        sub_100017D5C(v144, v138);
        v35 = Data.hexString.getter();
        v37 = v36;
        sub_100016590(v144, v138);
        v38 = sub_1000136BC(v35, v37, &v145);

        *(v19 + 64) = v38;
        *(v19 + 72) = 1024;
        *(v19 + 74) = v30;
        *(v19 + 78) = 1024;
        *(v19 + 80) = v29;
        _os_log_impl(&_mh_execute_header, loga, v129, "%s beacon:%{private,mask.hash}s serialNumber:%{private,mask.hash}s, primaryIndex:%{public}s primaryKey:%s, nextPrimaryKeyRoll:%ums secondaryKeyEvaluationIndex:%u", v19, 0x54u);
        swift_arrayDestroy();
      }

      else
      {

        v23 = *(v16 + 8);
        v23(v15, v17);
      }

      *(v0 + 1096) = v23;
      v77 = *(v0 + 808);
      v78 = *(v0 + 800);
      v79 = *(v0 + 720);
      v80 = *(v0 + 696);
      v81 = *(v0 + 640);
      v82 = *(v0 + 616);
      v84 = *(v0 + 424);
      v83 = *(v0 + 432);
      logb = 1;
      (*(*(v0 + 648) + 56))(*(v0 + 464), 1, 1, v81);
      v78(v80, v79, v81);
      sub_100017D5C(v84, v83);
      sub_100017D5C(v11, v138);
      v85 = sub_100D60CD0();
      v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v88 = v87;
      if (v86 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v88 != v89)
      {
        logb = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v132 = *(v0 + 1124);
      v90 = *(v0 + 648);
      v91 = *(v0 + 640);
      v93 = *(v0 + 456);
      v92 = *(v0 + 464);
      v94 = *(v0 + 432);

      sub_1000D2A70(v92, v93, &qword_1016980D0, &unk_10138F3B0);
      v95 = *(v90 + 48);
      if (v95(v93, 1, v91) == 1)
      {
        v96 = *(v0 + 688);
        v97 = *(v0 + 640);
        v99 = *(v0 + 456);
        v98 = *(v0 + 464);
        UUID.init()();
        sub_10000B3A8(v98, &qword_1016980D0, &unk_10138F3B0);
        if (v95(v99, 1, v97) != 1)
        {
          sub_10000B3A8(*(v0 + 456), &qword_1016980D0, &unk_10138F3B0);
        }
      }

      else
      {
        v100 = *(v0 + 736);
        v101 = *(v0 + 728);
        v102 = *(v0 + 688);
        v103 = *(v0 + 640);
        v104 = *(v0 + 456);
        sub_10000B3A8(*(v0 + 464), &qword_1016980D0, &unk_10138F3B0);
        v101(v102, v104, v103);
      }

      v105 = v138 | 0x1000000000000000;
      v106 = *(v0 + 736);
      v107 = *(v0 + 728);
      v108 = *(v0 + 696);
      v109 = *(v0 + 640);
      v111 = *(v0 + 472);
      v110 = *(v0 + 480);
      v112 = *(v0 + 424);
      v140 = *(v0 + 416);
      v107(v110, *(v0 + 688), v109);
      v107(v110 + v111[5], v108, v109);
      v113 = (v110 + v111[6]);
      *v113 = v112;
      v113[1] = v94 | 0x2000000000000000;
      v113[2] = v141;
      v113[3] = v144;
      v113[4] = v105;
      v113[5] = v132;
      *(v110 + v111[7]) = logb & 1;
      *(v110 + v111[8]) = 1;
      v114 = swift_task_alloc();
      *(v0 + 1104) = v114;
      *v114 = v0;
      v114[1] = sub_10106E890;
      v115 = *(v0 + 960);
      v116 = *(v0 + 480);

      return sub_10121B780(v0 + 112, v116, v140);
    }
  }

  else
  {
    sub_10000B3A8(v0 + 256, &qword_1016C5040, &qword_1013FD620);
  }

  if (qword_1016951B8 != -1)
  {
    swift_once();
  }

  v39 = *(v0 + 808);
  v40 = *(v0 + 800);
  v41 = *(v0 + 720);
  v42 = *(v0 + 680);
  v43 = *(v0 + 640);
  v44 = type metadata accessor for Logger();
  sub_1000076D4(v44, qword_1016C4F50);
  v40(v42, v41, v43);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();
  v47 = os_log_type_enabled(v45, v46);
  v48 = *(v0 + 680);
  v49 = *(v0 + 648);
  v50 = *(v0 + 640);
  if (v47)
  {
    v51 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    *v51 = 136315651;
    *(v51 + 4) = sub_1000136BC(0xD00000000000003CLL, 0x80000001013792C0, &v146);
    *(v51 + 12) = 2160;
    *(v51 + 14) = 1752392040;
    *(v51 + 22) = 2081;
    sub_1010732D8(&qword_101696930, 255, &type metadata accessor for UUID);
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v53;
    v142 = *(v49 + 8);
    v142(v48, v50);
    v55 = sub_1000136BC(v52, v54, &v146);

    *(v51 + 24) = v55;
    _os_log_impl(&_mh_execute_header, v45, v46, "%s Missing primaryKey for %{private,mask.hash}s.", v51, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v142 = *(v49 + 8);
    v142(v48, v50);
  }

  v56 = *(v0 + 960);
  v57 = *(v0 + 904);
  v58 = *(v0 + 888);
  v59 = *(v0 + 832);
  v60 = *(v0 + 784);
  v130 = *(v0 + 640);
  logc = *(v0 + 720);
  v126 = *(v0 + 616);
  v61 = *(v0 + 576);
  v62 = *(v0 + 552);
  v63 = *(v0 + 536);
  sub_1010722AC();
  swift_allocError();
  *v64 = 8;
  swift_willThrow();

  sub_101072FAC(v63, type metadata accessor for KeyGenerationBeaconInfo);
  sub_10000B3A8(v62, &unk_1016C8FC0, &unk_10139D7D0);
  sub_10000B3A8(v61, &unk_1016AF8C0, &unk_1013A07A0);
  sub_101072FAC(v126, type metadata accessor for OwnedBeaconRecord);
  v142(logc, v130);
  v65 = *(v0 + 720);
  v66 = *(v0 + 712);
  v67 = *(v0 + 704);
  v68 = *(v0 + 696);
  v69 = *(v0 + 688);
  v70 = *(v0 + 680);
  v71 = *(v0 + 672);
  v72 = *(v0 + 664);
  v73 = *(v0 + 632);
  v74 = *(v0 + 616);
  v117 = *(v0 + 592);
  v118 = *(v0 + 576);
  v119 = *(v0 + 568);
  v120 = *(v0 + 552);
  v121 = *(v0 + 544);
  v123 = *(v0 + 536);
  v125 = *(v0 + 512);
  v127 = *(v0 + 504);
  v131 = *(v0 + 488);
  logd = *(v0 + 480);
  v139 = *(v0 + 464);
  v143 = *(v0 + 456);

  v75 = *(v0 + 8);

  return v75();
}

uint64_t sub_10106E890()
{
  v2 = *v1;
  v3 = *(*v1 + 1104);
  v4 = *v1;
  *(*v1 + 1112) = v0;

  v5 = *(v2 + 448);
  if (v0)
  {
    v6 = sub_1010703E8;
  }

  else
  {
    v6 = sub_10106E9BC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10106E9BC()
{
  v108 = v0;
  sub_1000D2A70(v0 + 112, v0 + 160, &qword_1016A24A8, &unk_1013F60E0);
  if (*(v0 + 184))
  {
    sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
    if (swift_dynamicCast())
    {
      v1 = *(v0 + 208);
      v2 = *(v0 + 216);
      v4 = *(v0 + 224);
      v3 = *(v0 + 232);
      v6 = *(v0 + 240);
      v5 = *(v0 + 248);
      if (((v6 >> 58) & 0xC | (v2 >> 60) & 3) == 6)
      {
        v7 = *(v0 + 1088);
        sub_10067F4FC(*(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), sub_100017D5C);
        sub_100017D5C(v1, v2 & 0xCFFFFFFFFFFFFFFFLL);
        v8 = Logger.logObject.getter();
        LOBYTE(v7) = static os_log_type_t.default.getter();
        sub_10067F4FC(v1, v2, v4, v3, v6, v5, sub_100016590);
        log = v8;
        type = v7;
        v9 = os_log_type_enabled(v8, v7);
        v10 = *(v0 + 1096);
        v69 = *(v0 + 1072);
        v73 = *(v0 + 1080);
        v60 = *(v0 + 1056);
        v62 = *(v0 + 1064);
        v57 = *(v0 + 904);
        v58 = *(v0 + 888);
        v11 = *(v0 + 832);
        v65 = *(v0 + 784);
        v101 = *(v0 + 640);
        v105 = *(v0 + 720);
        v93 = *(v0 + 616);
        v97 = *(v0 + 648);
        v85 = *(v0 + 552);
        v89 = *(v0 + 576);
        v12 = *(v0 + 480);
        v77 = v12;
        v81 = *(v0 + 536);
        if (v9)
        {
          v54 = *(v0 + 960);
          v55 = *(v0 + 1096);
          v13 = swift_slowAlloc();
          v107[0] = swift_slowAlloc();
          *v13 = 136315394;
          *(v13 + 4) = sub_1000136BC(0xD00000000000003CLL, 0x80000001013792C0, v107);
          *(v13 + 12) = 2080;
          *(v0 + 376) = v1;
          *(v0 + 384) = v2 & 0xCFFFFFFFFFFFFFFFLL;
          *(v0 + 392) = v4;
          *(v0 + 400) = v3;
          sub_100017D5C(v1, v2 & 0xCFFFFFFFFFFFFFFFLL);
          v14 = String.init<A>(describing:)();
          v53 = v11;
          v16 = sub_1000136BC(v14, v15, v107);

          *(v13 + 14) = v16;
          _os_log_impl(&_mh_execute_header, log, type, "%s Received keyAlignmentResponse: %s", v13, 0x16u);
          swift_arrayDestroy();

          sub_10067F4FC(v1, v2, v4, v3, v6, v5, sub_100016590);
          sub_10067F4FC(v1, v2, v4, v3, v6, v5, sub_100016590);
          sub_100016590(v60, v62);
          sub_100016590(v69, v73);

          sub_10000B3A8(v0 + 112, &qword_1016A24A8, &unk_1013F60E0);
          sub_101072FAC(v77, type metadata accessor for AccessoryCommand);
          sub_101072FAC(v81, type metadata accessor for KeyGenerationBeaconInfo);
          sub_10000B3A8(v85, &unk_1016C8FC0, &unk_10139D7D0);
          sub_10000B3A8(v89, &unk_1016AF8C0, &unk_1013A07A0);
          sub_101072FAC(v93, type metadata accessor for OwnedBeaconRecord);
          v55(v105, v101);
        }

        else
        {

          sub_10067F4FC(v1, v2, v4, v3, v6, v5, sub_100016590);
          sub_10067F4FC(v1, v2, v4, v3, v6, v5, sub_100016590);
          sub_100016590(v60, v62);
          sub_100016590(v69, v73);

          sub_10000B3A8(v0 + 112, &qword_1016A24A8, &unk_1013F60E0);
          sub_101072FAC(v77, type metadata accessor for AccessoryCommand);
          sub_101072FAC(v81, type metadata accessor for KeyGenerationBeaconInfo);
          sub_10000B3A8(v85, &unk_1016C8FC0, &unk_10139D7D0);
          sub_10000B3A8(v89, &unk_1016AF8C0, &unk_1013A07A0);
          sub_101072FAC(v93, type metadata accessor for OwnedBeaconRecord);
          v10(v105, v101);
        }

        v43 = *(v0 + 720);
        v44 = *(v0 + 712);
        v45 = *(v0 + 704);
        v46 = *(v0 + 696);
        v47 = *(v0 + 688);
        v48 = *(v0 + 680);
        v49 = *(v0 + 672);
        v50 = *(v0 + 664);
        v51 = *(v0 + 632);
        v52 = *(v0 + 616);
        v64 = *(v0 + 592);
        v68 = *(v0 + 576);
        v72 = *(v0 + 568);
        v76 = *(v0 + 552);
        v80 = *(v0 + 544);
        v84 = *(v0 + 536);
        v88 = *(v0 + 512);
        v92 = *(v0 + 504);
        v96 = *(v0 + 488);
        v100 = *(v0 + 480);
        v104 = *(v0 + 464);
        v106 = *(v0 + 456);

        v41 = *(v0 + 8);
        goto LABEL_11;
      }

      sub_10067F4FC(*(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), sub_100016590);
    }
  }

  else
  {
    sub_10000B3A8(v0 + 160, &qword_1016A24A8, &unk_1013F60E0);
  }

  v17 = *(v0 + 1088);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v107[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_1000136BC(0xD00000000000003CLL, 0x80000001013792C0, v107);
    _os_log_impl(&_mh_execute_header, v18, v19, "%s Invalid keyAlignmentResponse!", v20, 0xCu);
    sub_100007BAC(v21);
  }

  v102 = *(v0 + 1096);
  v66 = *(v0 + 1080);
  v22 = *(v0 + 1072);
  v23 = *(v0 + 1064);
  v24 = *(v0 + 1056);
  v25 = *(v0 + 960);
  v26 = *(v0 + 904);
  v27 = *(v0 + 888);
  v28 = *(v0 + 832);
  v29 = *(v0 + 784);
  v98 = *(v0 + 720);
  v90 = *(v0 + 648);
  v94 = *(v0 + 640);
  v82 = *(v0 + 576);
  v86 = *(v0 + 616);
  v74 = *(v0 + 536);
  v78 = *(v0 + 552);
  v70 = *(v0 + 480);
  sub_1010722AC();
  swift_allocError();
  *v30 = 10;
  swift_willThrow();

  sub_100016590(v24, v23);
  sub_100016590(v22, v66);

  sub_10000B3A8(v0 + 112, &qword_1016A24A8, &unk_1013F60E0);
  sub_101072FAC(v70, type metadata accessor for AccessoryCommand);
  sub_101072FAC(v74, type metadata accessor for KeyGenerationBeaconInfo);
  sub_10000B3A8(v78, &unk_1016C8FC0, &unk_10139D7D0);
  sub_10000B3A8(v82, &unk_1016AF8C0, &unk_1013A07A0);
  sub_101072FAC(v86, type metadata accessor for OwnedBeaconRecord);
  v102(v98, v94);
  v31 = *(v0 + 720);
  v32 = *(v0 + 712);
  v33 = *(v0 + 704);
  v34 = *(v0 + 696);
  v35 = *(v0 + 688);
  v36 = *(v0 + 680);
  v37 = *(v0 + 672);
  v38 = *(v0 + 664);
  v39 = *(v0 + 632);
  v40 = *(v0 + 616);
  v61 = *(v0 + 592);
  v63 = *(v0 + 576);
  v67 = *(v0 + 568);
  v71 = *(v0 + 552);
  v75 = *(v0 + 544);
  v79 = *(v0 + 536);
  v83 = *(v0 + 512);
  v87 = *(v0 + 504);
  v91 = *(v0 + 488);
  v95 = *(v0 + 480);
  v99 = *(v0 + 464);
  v103 = *(v0 + 456);

  v41 = *(v0 + 8);
LABEL_11:

  return v41();
}

uint64_t sub_10106F42C()
{
  if (qword_1016951B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016C4F50);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing LTKGenerator!", v4, 2u);
  }

  v5 = v0[111];
  v6 = v0[104];
  v7 = v0[98];
  v36 = v0[90];
  v8 = v0[81];
  v9 = v0[80];
  v10 = v0[77];
  v11 = v0[72];

  sub_1010722AC();
  swift_allocError();
  *v12 = 7;
  swift_willThrow();

  sub_10000B3A8(v11, &unk_1016AF8C0, &unk_1013A07A0);
  sub_101072FAC(v10, type metadata accessor for OwnedBeaconRecord);
  (*(v8 + 8))(v36, v9);
  v13 = v0[90];
  v14 = v0[89];
  v15 = v0[88];
  v16 = v0[87];
  v17 = v0[86];
  v18 = v0[85];
  v19 = v0[84];
  v20 = v0[83];
  v21 = v0[79];
  v22 = v0[77];
  v25 = v0[74];
  v26 = v0[72];
  v27 = v0[71];
  v28 = v0[69];
  v29 = v0[68];
  v30 = v0[67];
  v31 = v0[64];
  v32 = v0[63];
  v33 = v0[61];
  v34 = v0[60];
  v35 = v0[58];
  v37 = v0[57];

  v23 = v0[1];

  return v23();
}

uint64_t sub_10106F720()
{
  (*(v0[81] + 8))(v0[90], v0[80]);
  v25 = v0[99];
  v1 = v0[90];
  v2 = v0[89];
  v3 = v0[88];
  v4 = v0[87];
  v5 = v0[86];
  v6 = v0[85];
  v7 = v0[84];
  v8 = v0[83];
  v9 = v0[79];
  v10 = v0[77];
  v13 = v0[74];
  v14 = v0[72];
  v15 = v0[71];
  v16 = v0[69];
  v17 = v0[68];
  v18 = v0[67];
  v19 = v0[64];
  v20 = v0[63];
  v21 = v0[61];
  v22 = v0[60];
  v23 = v0[58];
  v24 = v0[57];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10106F8D0()
{
  v1 = *(v0 + 784);
  v2 = *(v0 + 720);
  v3 = *(v0 + 648);
  v4 = *(v0 + 640);
  v5 = *(v0 + 616);
  v6 = *(v0 + 576);

  sub_10000B3A8(v6, &unk_1016AF8C0, &unk_1013A07A0);
  sub_101072FAC(v5, type metadata accessor for OwnedBeaconRecord);
  (*(v3 + 8))(v2, v4);
  v31 = *(v0 + 896);
  v7 = *(v0 + 720);
  v8 = *(v0 + 712);
  v9 = *(v0 + 704);
  v10 = *(v0 + 696);
  v11 = *(v0 + 688);
  v12 = *(v0 + 680);
  v13 = *(v0 + 672);
  v14 = *(v0 + 664);
  v15 = *(v0 + 632);
  v16 = *(v0 + 616);
  v19 = *(v0 + 592);
  v20 = *(v0 + 576);
  v21 = *(v0 + 568);
  v22 = *(v0 + 552);
  v23 = *(v0 + 544);
  v24 = *(v0 + 536);
  v25 = *(v0 + 512);
  v26 = *(v0 + 504);
  v27 = *(v0 + 488);
  v28 = *(v0 + 480);
  v29 = *(v0 + 464);
  v30 = *(v0 + 456);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10106FAD8()
{
  v1 = v0[113];
  v2 = v0[111];
  v3 = v0[104];
  v4 = v0[98];
  v5 = v0[90];
  v6 = v0[81];
  v7 = v0[80];
  v8 = v0[77];
  v9 = v0[72];

  sub_10000B3A8(v9, &unk_1016AF8C0, &unk_1013A07A0);
  sub_101072FAC(v8, type metadata accessor for OwnedBeaconRecord);
  (*(v6 + 8))(v5, v7);
  v34 = v0[115];
  v10 = v0[90];
  v11 = v0[89];
  v12 = v0[88];
  v13 = v0[87];
  v14 = v0[86];
  v15 = v0[85];
  v16 = v0[84];
  v17 = v0[83];
  v18 = v0[79];
  v19 = v0[77];
  v22 = v0[74];
  v23 = v0[72];
  v24 = v0[71];
  v25 = v0[69];
  v26 = v0[68];
  v27 = v0[67];
  v28 = v0[64];
  v29 = v0[63];
  v30 = v0[61];
  v31 = v0[60];
  v32 = v0[58];
  v33 = v0[57];

  v20 = v0[1];

  return v20();
}

uint64_t sub_10106FCF4()
{
  v1 = v0[113];
  v2 = v0[111];
  v3 = v0[104];
  v4 = v0[98];
  v5 = v0[90];
  v6 = v0[81];
  v7 = v0[80];
  v8 = v0[77];
  v9 = v0[72];
  v10 = v0[69];

  sub_10000B3A8(v10, &unk_1016C8FC0, &unk_10139D7D0);
  sub_10000B3A8(v9, &unk_1016AF8C0, &unk_1013A07A0);
  sub_101072FAC(v8, type metadata accessor for OwnedBeaconRecord);
  (*(v6 + 8))(v5, v7);
  v35 = v0[121];
  v11 = v0[90];
  v12 = v0[89];
  v13 = v0[88];
  v14 = v0[87];
  v15 = v0[86];
  v16 = v0[85];
  v17 = v0[84];
  v18 = v0[83];
  v19 = v0[79];
  v20 = v0[77];
  v23 = v0[74];
  v24 = v0[72];
  v25 = v0[71];
  v26 = v0[69];
  v27 = v0[68];
  v28 = v0[67];
  v29 = v0[64];
  v30 = v0[63];
  v31 = v0[61];
  v32 = v0[60];
  v33 = v0[58];
  v34 = v0[57];

  v21 = v0[1];

  return v21();
}

uint64_t sub_10106FF2C()
{
  v1 = v0[120];
  v2 = v0[113];
  v3 = v0[111];
  v4 = v0[104];
  v5 = v0[98];
  v35 = v0[90];
  v6 = v0[81];
  v7 = v0[80];
  v8 = v0[77];
  v9 = v0[72];
  v10 = v0[69];

  sub_10000B3A8(v10, &unk_1016C8FC0, &unk_10139D7D0);
  sub_10000B3A8(v9, &unk_1016AF8C0, &unk_1013A07A0);
  sub_101072FAC(v8, type metadata accessor for OwnedBeaconRecord);
  (*(v6 + 8))(v35, v7);
  v36 = v0[123];
  v11 = v0[90];
  v12 = v0[89];
  v13 = v0[88];
  v14 = v0[87];
  v15 = v0[86];
  v16 = v0[85];
  v17 = v0[84];
  v18 = v0[83];
  v19 = v0[79];
  v20 = v0[77];
  v23 = v0[74];
  v24 = v0[72];
  v25 = v0[71];
  v26 = v0[69];
  v27 = v0[68];
  v28 = v0[67];
  v29 = v0[64];
  v30 = v0[63];
  v31 = v0[61];
  v32 = v0[60];
  v33 = v0[58];
  v34 = v0[57];

  v21 = v0[1];

  return v21();
}

uint64_t sub_101070174()
{
  v1 = v0[120];
  v2 = v0[113];
  v3 = v0[111];
  v4 = v0[104];
  v5 = v0[98];
  v36 = v0[90];
  v6 = v0[81];
  v34 = v0[80];
  v7 = v0[77];
  v8 = v0[72];
  v9 = v0[69];
  v10 = v0[67];

  sub_101072FAC(v10, type metadata accessor for KeyGenerationBeaconInfo);
  sub_10000B3A8(v9, &unk_1016C8FC0, &unk_10139D7D0);
  sub_10000B3A8(v8, &unk_1016AF8C0, &unk_1013A07A0);
  sub_101072FAC(v7, type metadata accessor for OwnedBeaconRecord);
  (*(v6 + 8))(v36, v34);
  sub_100007BAC(v0 + 37);
  v37 = v0[131];
  v11 = v0[90];
  v12 = v0[89];
  v13 = v0[88];
  v14 = v0[87];
  v15 = v0[86];
  v16 = v0[85];
  v17 = v0[84];
  v18 = v0[83];
  v19 = v0[79];
  v20 = v0[77];
  v23 = v0[74];
  v24 = v0[72];
  v25 = v0[71];
  v26 = v0[69];
  v27 = v0[68];
  v28 = v0[67];
  v29 = v0[64];
  v30 = v0[63];
  v31 = v0[61];
  v32 = v0[60];
  v33 = v0[58];
  v35 = v0[57];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1010703E8()
{
  v42 = v0[137];
  v1 = v0[135];
  v2 = v0[134];
  v3 = v0[133];
  v4 = v0[132];
  v5 = v0[120];
  v6 = v0[113];
  v7 = v0[111];
  v8 = v0[104];
  v9 = v0[98];
  v38 = v0[80];
  v40 = v0[90];
  v34 = v0[77];
  v36 = v0[81];
  v30 = v0[69];
  v32 = v0[72];
  v28 = v0[67];
  v10 = v0[60];

  sub_100016590(v4, v3);
  sub_100016590(v2, v1);

  sub_101072FAC(v10, type metadata accessor for AccessoryCommand);
  sub_101072FAC(v28, type metadata accessor for KeyGenerationBeaconInfo);
  sub_10000B3A8(v30, &unk_1016C8FC0, &unk_10139D7D0);
  sub_10000B3A8(v32, &unk_1016AF8C0, &unk_1013A07A0);
  sub_101072FAC(v34, type metadata accessor for OwnedBeaconRecord);
  v42(v40, v38);
  v43 = v0[139];
  v11 = v0[90];
  v12 = v0[89];
  v13 = v0[88];
  v14 = v0[87];
  v15 = v0[86];
  v16 = v0[85];
  v17 = v0[84];
  v18 = v0[83];
  v19 = v0[79];
  v20 = v0[77];
  v23 = v0[74];
  v24 = v0[72];
  v25 = v0[71];
  v26 = v0[69];
  v27 = v0[68];
  v29 = v0[67];
  v31 = v0[64];
  v33 = v0[63];
  v35 = v0[61];
  v37 = v0[60];
  v39 = v0[58];
  v41 = v0[57];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1010706B0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v6 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v3[10] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v3[12] = v8;
  v9 = *(v8 - 8);
  v3[13] = v9;
  v10 = *(v9 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v11 = async function pointer to daemon.getter[1];
  v12 = swift_task_alloc();
  v3[16] = v12;
  *v12 = v3;
  v12[1] = sub_10107085C;

  return daemon.getter();
}

uint64_t sub_10107085C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  v12 = *v1;
  v3[17] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[18] = v6;
  v7 = type metadata accessor for Daemon();
  v3[19] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1010732D8(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v3[20] = v9;
  v10 = sub_1010732D8(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_101070A50;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_101070A50(uint64_t a1)
{
  v3 = *(*v2 + 144);
  v4 = *v2;
  v4[21] = a1;
  v4[22] = v1;

  if (v1)
  {
    v5 = v4[4];

    return _swift_task_switch(sub_101071770, v5, 0);
  }

  else
  {
    v6 = v4[17];

    v7 = async function pointer to daemon.getter[1];
    v8 = swift_task_alloc();
    v4[23] = v8;
    *v8 = v4;
    v8[1] = sub_101070BC4;

    return daemon.getter();
  }
}

uint64_t sub_101070BC4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 184);
  v5 = *v1;
  v3[24] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[25] = v7;
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_1010732D8(&qword_1016AA450, 255, type metadata accessor for ObservationStoreService);
  *v7 = v5;
  v7[1] = sub_101070D7C;
  v10 = v3[20];
  v11 = v3[19];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_101070D7C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v10 = *v2;
  v3[26] = a1;
  v3[27] = v1;

  if (v1)
  {
    v5 = v3[4];
    v6 = sub_101071814;
  }

  else
  {
    v7 = v3[24];
    v8 = v3[21];

    v6 = sub_101070EA4;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_101070EA4()
{
  v1 = v0[21];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[5];
  v5 = v0[3];
  v6 = *(v3 + 16);
  v0[28] = v6;
  v0[29] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[30] = v8;
  *(v8 + 16) = v1;
  (*(v3 + 32))(v8 + v7, v2, v4);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  v0[31] = v10;
  *v10 = v0;
  v10[1] = sub_101071014;
  v12 = v0[10];
  v11 = v0[11];

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_1010733F0, v8, v12);
}

uint64_t sub_101071014()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return _swift_task_switch(sub_101071140, v3, 0);
}

uint64_t sub_101071140()
{
  v40 = v0;
  v1 = v0[11];
  v2 = type metadata accessor for OwnedBeaconRecord();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    if (qword_1016951B8 != -1)
    {
      swift_once();
    }

    v4 = v0[28];
    v3 = v0[29];
    v5 = v0[8];
    v6 = v0[5];
    v7 = v0[3];
    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_1016C4F50);
    v4(v5, v7, v6);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[8];
    v13 = v0[5];
    v14 = v0[6];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v39[0] = swift_slowAlloc();
      *v15 = 136315651;
      *(v15 + 4) = sub_1000136BC(0xD000000000000017, 0x8000000101379370, v39);
      *(v15 + 12) = 2160;
      *(v15 + 14) = 1752392040;
      *(v15 + 22) = 2081;
      sub_1010732D8(&qword_101696930, 255, &type metadata accessor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v14 + 8))(v12, v13);
      v19 = sub_1000136BC(v16, v18, v39);

      *(v15 + 24) = v19;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s No base date for beacon %{private,mask.hash}s.", v15, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v14 + 8))(v12, v13);
    }

    v30 = v0[26];
    v31 = v0[21];
    sub_1010722AC();
    swift_allocError();
    *v32 = 4;
    swift_willThrow();

    v34 = v0[14];
    v33 = v0[15];
    v35 = v0[11];
    v37 = v0[8];
    v36 = v0[9];

    v38 = v0[1];

    return v38();
  }

  else
  {
    v21 = v0[14];
    v20 = v0[15];
    v22 = v0[12];
    v23 = v0[13];
    (*(v23 + 16))(v21, v1 + *(v2 + 32), v22);
    sub_101072FAC(v1, type metadata accessor for OwnedBeaconRecord);
    (*(v23 + 32))(v20, v21, v22);
    v24 = swift_task_alloc();
    v0[32] = v24;
    *v24 = v0;
    v24[1] = sub_101071588;
    v25 = v0[26];
    v26 = v0[15];
    v27 = v0[2];
    v28 = v0[3];

    return sub_1010CD424(v27, v28, v26);
  }
}

uint64_t sub_101071588()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_101071698, v2, 0);
}

uint64_t sub_101071698()
{
  v1 = v0[26];
  v2 = v0[21];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[11];
  v9 = v0[8];
  v8 = v0[9];

  (*(v6 + 8))(v3, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_101071770()
{
  v1 = v0[17];

  v2 = v0[22];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[11];
  v7 = v0[8];
  v6 = v0[9];

  v8 = v0[1];

  return v8();
}

uint64_t sub_101071814()
{
  v1 = v0[24];
  v2 = v0[21];

  v3 = v0[27];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[11];
  v8 = v0[8];
  v7 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1010718C4(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for CentralManager.State();
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_101071984, 0, 0);
}

uint64_t sub_101071984()
{
  (*(v0[4] + 104))(v0[5], enum case for CentralManager.State.poweredOn(_:), v0[3]);
  v1 = async function pointer to CentralManagerProtocol.await(state:)[1];
  v2 = swift_task_alloc();
  v0[6] = v2;
  v3 = type metadata accessor for CentralManager();
  v4 = sub_1010732D8(&unk_1016C1160, 255, &type metadata accessor for CentralManager);
  *v2 = v0;
  v2[1] = sub_100274D78;
  v5 = v0[5];
  v6 = v0[2];

  return CentralManagerProtocol.await(state:)(v5, v3, v4);
}

uint64_t sub_101071A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[3] = v5;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v8 = *(type metadata accessor for OwnedBeaconGroup(0) + 28);
  v9 = *(&async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:) + 1);
  v12 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:) + async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:));
  v10 = swift_task_alloc();
  v3[7] = v10;
  *v10 = v3;
  v10[1] = sub_101071BD4;

  return v12(a1 + v8);
}

uint64_t sub_101071BD4(uint64_t a1)
{
  v3 = *(*v2 + 56);
  v4 = *v2;
  v4[8] = a1;

  if (v1)
  {

    v6 = v4[5];
    v5 = v4[6];

    v7 = v4[1];

    return v7(0);
  }

  else
  {

    return _swift_task_switch(sub_101071D28, 0, 0);
  }
}

uint64_t sub_101071D28()
{
  if (v0[8])
  {
    v2 = v0[5];
    v1 = v0[6];
    v3 = v0[3];
    v4 = v0[4];
    v5 = v0[2];
    v6 = v0[8];
    Peripheral.id.getter();
    Peripheral.id.getter();
    type metadata accessor for Peripheral();
    v7 = static Identifier.== infix(_:_:)();

    v8 = *(v4 + 8);
    v8(v2, v3);
    v8(v1, v3);
  }

  else
  {
    v7 = 0;
  }

  v10 = v0[5];
  v9 = v0[6];

  v11 = v0[1];

  return v11(v7 & 1);
}

uint64_t sub_101071E34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_1010644B0();
}

uint64_t sub_101071ED0()
{
  v2 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_101066028(v4, v0 + v3, v5);
}

uint64_t sub_101071FE4(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_101066668(a1, v6, v1 + v5);
}

uint64_t sub_10107210C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_101068D70(a1, v1);
}

uint64_t sub_1010721A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_101072210(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016BBEA0, &unk_101395A80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1010722AC()
{
  result = qword_1016C5038;
  if (!qword_1016C5038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5038);
  }

  return result;
}

uint64_t sub_10107232C()
{
  v1 = type metadata accessor for Calendar.SearchDirection();
  v95 = *(v1 - 8);
  v96 = v1;
  v2 = *(v95 + 64);
  __chkstk_darwin(v1);
  v94 = v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v89 = *(v100 - 8);
  v4 = *(v89 + 64);
  __chkstk_darwin(v100);
  v93 = v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Calendar.MatchingPolicy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016A9620, &qword_1013BB5A0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v83 - v13;
  v15 = sub_1000BC4D4(&qword_1016A9628, &unk_1013BB5A8);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v83 - v17;
  v19 = type metadata accessor for DateComponents();
  v91 = *(v19 - 8);
  v92 = v19;
  v20 = *(v91 + 64);
  __chkstk_darwin(v19);
  v22 = v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v90 = v83 - v25;
  v26 = type metadata accessor for Date();
  v98 = *(v26 - 8);
  v99 = v26;
  v27 = *(v98 + 64);
  v28 = __chkstk_darwin(v26);
  v86 = v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v85 = v83 - v31;
  v32 = __chkstk_darwin(v30);
  v97 = v83 - v33;
  __chkstk_darwin(v32);
  v104 = v83 - v34;
  v35 = type metadata accessor for Calendar();
  v101 = *(v35 - 8);
  v102 = v35;
  v36 = *(v101 + 64);
  __chkstk_darwin(v35);
  v103 = v83 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v38 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v39 = sub_101073524(v105);

  if ((v39 * 60) >> 64 != (60 * v39) >> 63)
  {
    __break(1u);
    goto LABEL_20;
  }

  v84 = 60 * v39;
  v83[1] = v0;
  static Calendar.autoupdatingCurrent.getter();
  static Date.trustedNow.getter(v104);
  (*(v101 + 56))(v18, 1, 1, v102);
  static TimeZone.autoupdatingCurrent.getter();
  v40 = type metadata accessor for TimeZone();
  (*(*(v40 - 8) + 56))(v14, 0, 1, v40);
  v87 = v22;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v41 = v7;
  v42 = *(v7 + 104);
  v88 = v6;
  v42(v10, enum case for Calendar.MatchingPolicy.nextTime(_:), v6);
  v43 = v89;
  v44 = v93;
  (*(v89 + 104))(v93, enum case for Calendar.RepeatedTimePolicy.first(_:), v100);
  v46 = v94;
  v45 = v95;
  v47 = v96;
  (*(v95 + 104))(v94, enum case for Calendar.SearchDirection.forward(_:), v96);
  v48 = v90;
  Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
  (*(v45 + 8))(v46, v47);
  (*(v43 + 8))(v44, v100);
  (*(v41 + 8))(v10, v88);
  (*(v91 + 8))(v87, v92);
  v7 = v98;
  v10 = v99;
  if ((*(v98 + 48))(v48, 1, v99) == 1)
  {
    sub_10000B3A8(v48, &unk_101696900, &unk_10138B1E0);
    if (qword_1016951B8 == -1)
    {
LABEL_6:
      v49 = type metadata accessor for Logger();
      sub_1000076D4(v49, qword_1016C4F50);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();
      v52 = os_log_type_enabled(v50, v51);
      v53 = v104;
      if (v52)
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v105 = v55;
        *v54 = 136315138;
        *(v54 + 4) = sub_1000136BC(0xD000000000000019, 0x8000000101379350, &v105);
        _os_log_impl(&_mh_execute_header, v50, v51, "%s Unable to compute next 4am date", v54, 0xCu);
        sub_100007BAC(v55);
      }

      sub_1010722AC();
      swift_allocError();
      *v56 = 9;
      swift_willThrow();
      (*(v7 + 8))(v53, v10);
      return (*(v101 + 8))(v103, v102);
    }

LABEL_21:
    swift_once();
    goto LABEL_6;
  }

  v58 = v97;
  (*(v7 + 32))(v97, v48, v10);
  v59 = v104;
  Date.timeIntervalSince(_:)();
  v61 = v60;
  if (qword_1016951B8 != -1)
  {
    swift_once();
  }

  v62 = v84;
  v63 = type metadata accessor for Logger();
  sub_1000076D4(v63, qword_1016C4F50);
  v64 = *(v7 + 16);
  v65 = v85;
  v64(v85, v59, v10);
  v66 = v86;
  v64(v86, v58, v10);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v105 = v100;
    *v69 = 136315650;
    LODWORD(v96) = v68;
    v70 = Date.localISO8601.getter();
    v72 = v71;
    v74 = *(v7 + 8);
    v7 += 8;
    v73 = v74;
    v74(v65, v10);
    v75 = sub_1000136BC(v70, v72, &v105);

    *(v69 + 4) = v75;
    *(v69 + 12) = 2080;
    v76 = Date.localISO8601.getter();
    v78 = v77;
    v74(v66, v10);
    v79 = sub_1000136BC(v76, v78, &v105);
    v59 = v104;

    *(v69 + 14) = v79;
    *(v69 + 22) = 2048;
    *(v69 + 24) = v61;
    _os_log_impl(&_mh_execute_header, v67, v96, "numberOfKeysBefore4amRoll: now:%s wild4amDate:%s\nremainingTimeInSeconds:%f", v69, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v80 = *(v7 + 8);
    v7 += 8;
    v73 = v80;
    v80(v66, v10);
    v80(v65, v10);
  }

  v81 = ceil(v61 / v62);
  v73(v97, v10);
  v73(v59, v10);
  result = (*(v101 + 8))(v103, v102);
  v82 = 96.0;
  if (v81 < 96.0)
  {
    v82 = v81;
    if ((*&v81 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }

  if (v82 <= -1.0)
  {
    __break(1u);
  }

  else if (v82 < 4294967300.0)
  {
    return v82;
  }

  __break(1u);
  return result;
}

uint64_t sub_101072F44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_101072FAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10107300C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014650;

  return sub_1010718C4(a1, v1);
}

uint64_t sub_1010730A8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1001BA6C8;

  return sub_101071A98(a1, v5, v4);
}

uint64_t sub_101073150(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(v1 + 16);

  (*(v3 + 8))(v1 + v4, v2);

  return _swift_deallocObject(v1, v4 + v5);
}

uint64_t sub_101073248(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t sub_1010732D8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_101073320(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_101073338(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF4 && *(a1 + 8))
  {
    return (*a1 + 2147483637);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 10;
  if (v4 >= 0xC)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101073390(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF5)
  {
    *result = 0;
    *result = a2 - 2147483637;
    if (a3 >= 0x7FFFFFF5)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF5)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 10;
    }
  }

  return result;
}

uint64_t sub_101073428(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  sub_10003E938(KeyPath, a1);
  if ((v3 & 1) == 0)
  {
  }

  _StringGuts.grow(_:)(40);
  v5._object = 0x800000010134CA80;
  v5._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v5);
  sub_1000BC4D4(&unk_101698C60, &qword_1013907B0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *sub_1010735A8(uint64_t a1)
{
  v2 = type metadata accessor for DefaultConfigurationLayer();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v28 = &v27 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v27 - v10;
  __chkstk_darwin(v9);
  v29 = &v27 - v13;
  v30 = v12;
  v14 = *(a1 + 16);
  v31 = a1;
  if (v14)
  {
    v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v16 = a1 + v15;
    v17 = _swiftEmptyArrayStorage;
    v18 = *(v12 + 72);
    while (1)
    {
      sub_100041EB0(v16, v11);
      if (v11[25] <= 1u)
      {
        if (v11[25])
        {
          break;
        }
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
        goto LABEL_10;
      }

      sub_100041F5C(v11);
LABEL_4:
      v16 += v18;
      if (!--v14)
      {
        goto LABEL_16;
      }
    }

LABEL_10:
    sub_1000420BC(v11, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1011243B0(0, v17[2] + 1, 1);
      v17 = v32;
    }

    v22 = v17[2];
    v21 = v17[3];
    if (v22 >= v21 >> 1)
    {
      sub_1011243B0(v21 > 1, v22 + 1, 1);
      v17 = v32;
    }

    v17[2] = v22 + 1;
    sub_1000420BC(v6, v17 + v15 + v22 * v18);
    goto LABEL_4;
  }

  v17 = _swiftEmptyArrayStorage;
LABEL_16:
  if (v17[2])
  {
    v23 = v28;
    sub_100041EB0(v17 + ((*(v30 + 80) + 32) & ~*(v30 + 80)), v28);

    v24 = v29;
    sub_1000420BC(v23, v29);
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    v25 = sub_1010738E0(v24, v31);
    sub_100041F5C(v24);
  }

  else
  {

    v25 = v31;
  }

  return v25;
}

void *sub_1010738E0(uint64_t a1, uint64_t a2)
{
  v10[2] = a1;

  v4 = sub_10013D230(sub_101076668, v10, a2);
  sub_1000BC4D4(&qword_101697DD8, &unk_10138CDD0);
  v5 = *(type metadata accessor for DefaultConfigurationLayer() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_101385D80;
  sub_100041EB0(a1, v8 + v7);
  v11 = v4;
  sub_100398154(v8);

  sub_101078C18(&v11, &off_101607EC0);

  return v11;
}

uint64_t sub_101073A3C(uint64_t a1)
{
  swift_getKeyPath();
  sub_101075428(a1, &v4);
  if (*(&v4 + 1) >> 60 == 15)
  {
    sub_100006654(v4, *(&v4 + 1));
    *&v4 = 0;
    *(&v4 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(40);
    v3._object = 0x800000010134CA80;
    v3._countAndFlagsBits = 0xD000000000000026;
    String.append(_:)(v3);
    sub_1000BC4D4(&qword_1016C5078, &qword_1013FD9F8);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {

    return v4;
  }

  return result;
}

uint64_t sub_101073D40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  KeyPath = swift_getKeyPath();
  v8 = sub_101075BB4(KeyPath, a1);
  if (v8)
  {
    v9 = v8;

    return v9;
  }

  else
  {
    _StringGuts.grow(_:)(40);
    v11._object = 0x800000010134CA80;
    v11._countAndFlagsBits = 0xD000000000000026;
    String.append(_:)(v11);
    sub_1000BC4D4(a3, a4);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10107406C(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v3 = sub_1010755BC(KeyPath, a1);
  if (v3)
  {
    v4 = v3;

    return v4;
  }

  else
  {
    _StringGuts.grow(_:)(40);
    v6._object = 0x800000010134CA80;
    v6._countAndFlagsBits = 0xD000000000000026;
    String.append(_:)(v6);
    sub_1000BC4D4(&qword_1016C5068, &qword_1013FD970);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_101074250(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v3 = sub_10003E938(KeyPath, a1);

  return v3;
}

uint64_t sub_1010742D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_10107575C(KeyPath, a1, a2, a3, a4, a5);
}

uint64_t sub_1010743B8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  swift_getKeyPath();
  sub_1010759C4(a1, &v10);
  if (v13)
  {

    v5 = v15;
    a2[4] = v14;
    a2[5] = v5;
    a2[6] = v16;
    v6 = v11;
    *a2 = v10;
    a2[1] = v6;
    v7 = v13;
    a2[2] = v12;
    a2[3] = v7;
  }

  else
  {
    v9[4] = v14;
    v9[5] = v15;
    v9[6] = v16;
    v9[0] = v10;
    v9[1] = v11;
    v9[2] = v12;
    v9[3] = v13;
    sub_10000B3A8(v9, &qword_1016ADCE8, &qword_1013C53A0);
    _StringGuts.grow(_:)(40);
    v8._object = 0x800000010134CA80;
    v8._countAndFlagsBits = 0xD000000000000026;
    String.append(_:)(v8);
    sub_1000BC4D4(&qword_1016C50E8, &qword_1013FE4E0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_101074C0C(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v3 = sub_101075280(KeyPath, a1);
  if (v4)
  {
    v5 = v3;

    return v5;
  }

  else
  {
    _StringGuts.grow(_:)(40);
    v7._object = 0x800000010134CA80;
    v7._countAndFlagsBits = 0xD000000000000026;
    String.append(_:)(v7);
    sub_1000BC4D4(&qword_1016C5090, &qword_1013FDD80);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_101074D70(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v3 = sub_101075D30(KeyPath, a1);
  if ((v3 & 0x100000000) != 0)
  {
    _StringGuts.grow(_:)(40);
    v6._object = 0x800000010134CA80;
    v6._countAndFlagsBits = 0xD000000000000026;
    String.append(_:)(v6);
    sub_1000BC4D4(&qword_1016C50F8, &qword_1013FED60);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v4 = v3;

    return v4;
  }

  return result;
}

uint64_t sub_101074EE0(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v3 = sub_101075108(KeyPath, a1);
  if (v3 == 2)
  {
    _StringGuts.grow(_:)(40);
    v6._object = 0x800000010134CA80;
    v6._countAndFlagsBits = 0xD000000000000026;
    String.append(_:)(v6);
    sub_1000BC4D4(&qword_1016C5070, &qword_1013FD9A0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v4 = v3;

    return v4 & 1;
  }

  return result;
}

uint64_t sub_101074FFC(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v3 = sub_101075EB8(KeyPath, a1);
  if ((v3 & 0x100) != 0)
  {
    _StringGuts.grow(_:)(40);
    v6._object = 0x800000010134CA80;
    v6._countAndFlagsBits = 0xD000000000000026;
    String.append(_:)(v6);
    sub_1000BC4D4(&qword_1016C5088, &qword_1013FDD50);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v4 = v3;

    return v4;
  }

  return result;
}

uint64_t sub_101075108(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DefaultConfigurationLayer();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(a2 + 16);
  if (!v8)
  {
    return 2;
  }

  v9 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v10 = *(v5 + 72);
  while (1)
  {
    sub_100041EB0(v9, v7);
    v16[3] = v3;
    v16[4] = &off_10163B190;
    v11 = sub_1000280DC(v16);
    sub_100041EB0(v7, v11);
    swift_getAtKeyPath();
    v12 = v15[15];
    sub_100007BAC(v16);
    if (v12 != 2)
    {
      break;
    }

    sub_100041F5C(v7);
    v9 += v10;
    if (!--v8)
    {
      return 2;
    }
  }

  v17[3] = v3;
  v17[4] = &off_10163B190;
  v14 = sub_1000280DC(v17);
  sub_1000420BC(v7, v14);
  swift_getAtKeyPath();
  sub_100007BAC(v17);
  return LOBYTE(v16[0]);
}

uint64_t sub_101075280(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DefaultConfigurationLayer();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(a2 + 16);
  if (!v8)
  {
    return 0;
  }

  v9 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v10 = *(v5 + 72);
  while (1)
  {
    sub_100041EB0(v9, v7);
    v17[3] = v3;
    v17[4] = &off_10163B190;
    v11 = sub_1000280DC(v17);
    sub_100041EB0(v7, v11);
    swift_getAtKeyPath();
    v12 = v16;

    sub_100007BAC(v17);
    if (v12)
    {
      break;
    }

    sub_100041F5C(v7);
    v9 += v10;
    if (!--v8)
    {
      return 0;
    }
  }

  v18[3] = v3;
  v18[4] = &off_10163B190;
  v14 = sub_1000280DC(v18);
  sub_1000420BC(v7, v14);
  swift_getAtKeyPath();
  sub_100007BAC(v18);
  return v17[0];
}

uint64_t sub_101075428@<X0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for DefaultConfigurationLayer();
  v5 = *(*(v4 - 8) + 64);
  result = __chkstk_darwin(v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v12 = *(v7 + 72);
    while (1)
    {
      sub_100041EB0(v11, v9);
      v18[3] = v4;
      v18[4] = &off_10163B190;
      v13 = sub_1000280DC(v18);
      sub_100041EB0(v9, v13);
      swift_getAtKeyPath();
      v14 = v17;
      sub_100006654(v16, v17);
      sub_100007BAC(v18);
      if (v14 >> 60 != 15)
      {
        break;
      }

      result = sub_100041F5C(v9);
      v11 += v12;
      if (!--v10)
      {
        goto LABEL_5;
      }
    }

    v19[3] = v4;
    v19[4] = &off_10163B190;
    v15 = sub_1000280DC(v19);
    sub_1000420BC(v9, v15);
    swift_getAtKeyPath();
    return sub_100007BAC(v19);
  }

  else
  {
LABEL_5:
    *a2 = xmmword_10138BBF0;
  }

  return result;
}

uint64_t sub_1010755BC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DefaultConfigurationLayer();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  if (!v8)
  {
    return 0;
  }

  v9 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v10 = *(v5 + 72);
  while (1)
  {
    sub_100041EB0(v9, v7);
    v17[3] = v3;
    v17[4] = &off_10163B190;
    v11 = sub_1000280DC(v17);
    sub_100041EB0(v7, v11);
    swift_getAtKeyPath();
    v12 = v16;

    sub_100007BAC(v17);
    if (v12)
    {
      break;
    }

    sub_100041F5C(v7);
    v9 += v10;
    if (!--v8)
    {
      return 0;
    }
  }

  v18[3] = v3;
  v18[4] = &off_10163B190;
  v14 = sub_1000280DC(v18);
  sub_1000420BC(v7, v14);
  swift_getAtKeyPath();
  sub_100007BAC(v18);
  return v17[0];
}

uint64_t sub_10107575C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v28[0] = a6;
  v28[1] = a1;
  v10 = sub_1000BC4D4(a3, a4);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v28 - v12;
  v14 = type metadata accessor for DefaultConfigurationLayer();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 16);
  if (v19)
  {
    v20 = a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v21 = *(v16 + 72);
    while (1)
    {
      sub_100041EB0(v20, v18);
      v29[3] = v14;
      v29[4] = &off_10163B190;
      v22 = sub_1000280DC(v29);
      sub_100041EB0(v18, v22);
      swift_getAtKeyPath();
      v23 = a5(0);
      v24 = (*(*(v23 - 8) + 48))(v13, 1, v23);
      sub_10000B3A8(v13, a3, a4);
      sub_100007BAC(v29);
      if (v24 != 1)
      {
        break;
      }

      sub_100041F5C(v18);
      v20 += v21;
      if (!--v19)
      {
        goto LABEL_5;
      }
    }

    v30[3] = v14;
    v30[4] = &off_10163B190;
    v27 = sub_1000280DC(v30);
    sub_1000420BC(v18, v27);
    swift_getAtKeyPath();
    return sub_100007BAC(v30);
  }

  else
  {
LABEL_5:
    v25 = a5(0);
    return (*(*(v25 - 8) + 56))(v28[0], 1, 1, v25);
  }
}

uint64_t sub_1010759C4@<X0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v16 = a2;
  v3 = type metadata accessor for DefaultConfigurationLayer();
  v4 = *(*(v3 - 8) + 64);
  result = __chkstk_darwin(v3);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v11 = *(v6 + 72);
    while (1)
    {
      sub_100041EB0(v10, v8);
      v24[3] = v3;
      v24[4] = &off_10163B190;
      v12 = sub_1000280DC(v24);
      sub_100041EB0(v8, v12);
      swift_getAtKeyPath();
      v13 = v20;
      v25[4] = v21;
      v25[5] = v22;
      v25[6] = v23;
      v25[0] = v17;
      v25[1] = v18;
      v25[2] = v19;
      v25[3] = v20;
      sub_10000B3A8(v25, &qword_1016ADCE8, &qword_1013C53A0);
      sub_100007BAC(v24);
      if (v13)
      {
        break;
      }

      result = sub_100041F5C(v8);
      v10 += v11;
      if (!--v9)
      {
        goto LABEL_5;
      }
    }

    v26[3] = v3;
    v26[4] = &off_10163B190;
    v15 = sub_1000280DC(v26);
    sub_1000420BC(v8, v15);
    swift_getAtKeyPath();
    return sub_100007BAC(v26);
  }

  else
  {
LABEL_5:
    v14 = v16;
    v16[5] = 0u;
    v14[6] = 0u;
    v14[3] = 0u;
    v14[4] = 0u;
    v14[1] = 0u;
    v14[2] = 0u;
    *v14 = 0u;
  }

  return result;
}

uint64_t sub_101075BB4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DefaultConfigurationLayer();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  if (!v8)
  {
    return 0;
  }

  v9 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v10 = *(v5 + 72);
  while (1)
  {
    sub_100041EB0(v9, v7);
    v16[3] = v3;
    v16[4] = &off_10163B190;
    v11 = sub_1000280DC(v16);
    sub_100041EB0(v7, v11);
    swift_getAtKeyPath();
    v12 = v15[1];

    sub_100007BAC(v16);
    if (v12)
    {
      break;
    }

    sub_100041F5C(v7);
    v9 += v10;
    if (!--v8)
    {
      return 0;
    }
  }

  v17[3] = v3;
  v17[4] = &off_10163B190;
  v14 = sub_1000280DC(v17);
  sub_1000420BC(v7, v14);
  swift_getAtKeyPath();
  sub_100007BAC(v17);
  return v16[0];
}

unint64_t sub_101075D30(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DefaultConfigurationLayer();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v10 = *(v5 + 72);
    while (1)
    {
      sub_100041EB0(v9, v7);
      v18[3] = v3;
      v18[4] = &off_10163B190;
      v11 = sub_1000280DC(v18);
      sub_100041EB0(v7, v11);
      swift_getAtKeyPath();
      v12 = v17[12];
      sub_100007BAC(v18);
      if ((v12 & 1) == 0)
      {
        break;
      }

      sub_100041F5C(v7);
      v9 += v10;
      if (!--v8)
      {
        goto LABEL_5;
      }
    }

    v19[3] = v3;
    v19[4] = &off_10163B190;
    v15 = sub_1000280DC(v19);
    sub_1000420BC(v7, v15);
    swift_getAtKeyPath();
    sub_100007BAC(v19);
    v13 = LODWORD(v18[0]);
    v14 = BYTE4(v18[0]);
  }

  else
  {
LABEL_5:
    v13 = 0;
    v14 = 1;
  }

  return v13 | (v14 << 32);
}

uint64_t sub_101075EB8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DefaultConfigurationLayer();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v10 = *(v5 + 72);
    while (1)
    {
      sub_100041EB0(v9, v7);
      v18[3] = v3;
      v18[4] = &off_10163B190;
      v11 = sub_1000280DC(v18);
      sub_100041EB0(v7, v11);
      swift_getAtKeyPath();
      v12 = v17[15];
      sub_100007BAC(v18);
      if ((v12 & 1) == 0)
      {
        break;
      }

      sub_100041F5C(v7);
      v9 += v10;
      if (!--v8)
      {
        goto LABEL_5;
      }
    }

    v19[3] = v3;
    v19[4] = &off_10163B190;
    v15 = sub_1000280DC(v19);
    sub_1000420BC(v7, v15);
    swift_getAtKeyPath();
    sub_100007BAC(v19);
    v13 = LOBYTE(v18[0]);
    v14 = BYTE1(v18[0]);
  }

  else
  {
LABEL_5:
    v13 = 0;
    v14 = 1;
  }

  return v13 | (v14 << 8);
}

uint64_t sub_101076038(uint64_t a1, uint64_t a2)
{
  v2 = 0x746C7561666564;
  v3 = *(a1 + 25);
  v4 = *(a2 + 25);
  v5 = 0xE700000000000000;
  v6 = 0xE500000000000000;
  v7 = 0x73656C6F72;
  v8 = 0x6166654472657375;
  v9 = 0xEC00000073746C75;
  if (v3 != 3)
  {
    v8 = 0x5365636976726573;
    v9 = 0xEF73676E69747465;
  }

  if (v3 != 2)
  {
    v7 = v8;
    v6 = v9;
  }

  v10 = 0x726576726573;
  if (*(a1 + 25))
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v10 = 0x746C7561666564;
  }

  if (*(a1 + 25) <= 1u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  if (v3 <= 1)
  {
    v12 = v5;
  }

  else
  {
    v12 = v6;
  }

  v13 = 0xE700000000000000;
  v14 = 0xE500000000000000;
  v15 = 0x73656C6F72;
  v16 = 0x6166654472657375;
  v17 = 0xEC00000073746C75;
  if (v4 != 3)
  {
    v16 = 0x5365636976726573;
    v17 = 0xEF73676E69747465;
  }

  if (v4 != 2)
  {
    v15 = v16;
    v14 = v17;
  }

  if (*(a2 + 25))
  {
    v2 = 0x726576726573;
    v13 = 0xE600000000000000;
  }

  if (*(a2 + 25) <= 1u)
  {
    v18 = v2;
  }

  else
  {
    v18 = v15;
  }

  if (*(a2 + 25) <= 1u)
  {
    v19 = v13;
  }

  else
  {
    v19 = v14;
  }

  if (v11 == v18 && v12 == v19)
  {

    v20 = 0;
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v20 = v21 ^ 1;
  }

  return v20 & 1;
}

uint64_t sub_1010761F0(void *a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016C50C0, &qword_1013FDEB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_101078EBC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_1000BC4D4(&qword_1016C50A8, &qword_1013FDEA8);
  sub_101078F10(&qword_1016C50C8, &qword_1016C50D0);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_101076398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73726579616CLL && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10107641C(uint64_t a1)
{
  v2 = sub_101078EBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101076458(uint64_t a1)
{
  v2 = sub_101078EBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_101076494@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_101078D00(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1010764E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 104))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_101076548@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 112))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1010765A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1304))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_101076608@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1272))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_101076688(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v91 = a5;
  v96 = a4;
  v89 = type metadata accessor for DefaultConfigurationLayer();
  v8 = *(*(v89 - 8) + 64);
  v9 = __chkstk_darwin(v89);
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v90 = &v84 - v13;
  v14 = __chkstk_darwin(v12);
  v95 = &v84 - v15;
  result = __chkstk_darwin(v14);
  v19 = *(v18 + 72);
  if (!v19)
  {
    goto LABEL_234;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
    return result;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_236;
  }

  v21 = (a2 - a1) / v19;
  v99 = a1;
  v22 = v96;
  v98 = v96;
  v92 = v19;
  if (v21 >= v20 / v19)
  {
    v24 = v20 / v19 * v19;
    if (v96 < a2 || a2 + v24 <= v96)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v96 == a2)
      {
LABEL_126:
        v54 = v22 + v24;
        if (v24 < 1)
        {
          goto LABEL_230;
        }

        v55 = -v19;
        v56 = v91 + 32;
        v57 = v54;
        v92 = -v19;
        v93 = a1;
        v86 = v11;
        while (1)
        {
          v84 = v54;
          v58 = a2;
          v59 = a2 + v55;
          v94 = v59;
          v60 = v90;
          v61 = v54;
          v87 = v58;
          while (2)
          {
            if (v58 <= a1)
            {
              v99 = v58;
              v97 = v84;
              goto LABEL_231;
            }

            v62 = a3;
            v88 = v57;
            v95 = v57 + v92;
            sub_100041EB0(v57 + v92, v60);
            sub_100041EB0(v59, v11);
            v63 = *(v91 + 16);
            v85 = v61;
            if (!v63)
            {
              v74 = 0;
              v64 = 0;
              goto LABEL_217;
            }

            v64 = 0;
            v65 = *(v60 + 25);
            while (1)
            {
              v66 = *(v56 + v64);
              if (v66 <= 1)
              {
                if (*(v56 + v64))
                {
                  v67 = 0x726576726573;
                }

                else
                {
                  v67 = 0x746C7561666564;
                }

                if (*(v56 + v64))
                {
                  v68 = 0xE600000000000000;
                }

                else
                {
                  v68 = 0xE700000000000000;
                }

                if (v65 > 1)
                {
LABEL_152:
                  v69 = 0x6166654472657375;
                  if (v65 != 3)
                  {
                    v69 = 0x5365636976726573;
                  }

                  v70 = 0xEF73676E69747465;
                  if (v65 == 3)
                  {
                    v70 = 0xEC00000073746C75;
                  }

                  if (v65 == 2)
                  {
                    v71 = 0x73656C6F72;
                  }

                  else
                  {
                    v71 = v69;
                  }

                  if (v65 == 2)
                  {
                    v72 = 0xE500000000000000;
                  }

                  else
                  {
                    v72 = v70;
                  }

                  if (v67 != v71)
                  {
                    goto LABEL_170;
                  }

                  goto LABEL_169;
                }
              }

              else if (v66 == 2)
              {
                v68 = 0xE500000000000000;
                v67 = 0x73656C6F72;
                if (v65 > 1)
                {
                  goto LABEL_152;
                }
              }

              else
              {
                if (v66 == 3)
                {
                  v67 = 0x6166654472657375;
                }

                else
                {
                  v67 = 0x5365636976726573;
                }

                if (v66 == 3)
                {
                  v68 = 0xEC00000073746C75;
                }

                else
                {
                  v68 = 0xEF73676E69747465;
                }

                if (v65 > 1)
                {
                  goto LABEL_152;
                }
              }

              if (!v65)
              {
                break;
              }

              v72 = 0xE600000000000000;
              if (v67 == 0x726576726573)
              {
                goto LABEL_169;
              }

LABEL_170:
              v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v73)
              {
                goto LABEL_175;
              }

              if (v63 == ++v64)
              {
                v64 = 0;
                goto LABEL_175;
              }
            }

            v72 = 0xE700000000000000;
            if (v67 != 0x746C7561666564)
            {
              goto LABEL_170;
            }

LABEL_169:
            if (v68 != v72)
            {
              goto LABEL_170;
            }

LABEL_175:
            v74 = 0;
            v75 = v86[25];
            while (2)
            {
              if (v63 == v74)
              {
                goto LABEL_233;
              }

              v76 = *(v56 + v74);
              if (v76 <= 1)
              {
                if (*(v56 + v74))
                {
                  v77 = 0x726576726573;
                }

                else
                {
                  v77 = 0x746C7561666564;
                }

                if (*(v56 + v74))
                {
                  v78 = 0xE600000000000000;
                }

                else
                {
                  v78 = 0xE700000000000000;
                }

                if (v75 > 1)
                {
                  goto LABEL_194;
                }

LABEL_207:
                if (v75)
                {
                  v82 = 0xE600000000000000;
                  if (v77 != 0x726576726573)
                  {
                    goto LABEL_212;
                  }
                }

                else
                {
                  v82 = 0xE700000000000000;
                  if (v77 != 0x746C7561666564)
                  {
                    goto LABEL_212;
                  }
                }
              }

              else
              {
                if (v76 == 2)
                {
                  v78 = 0xE500000000000000;
                  v77 = 0x73656C6F72;
                  if (v75 <= 1)
                  {
                    goto LABEL_207;
                  }
                }

                else
                {
                  if (v76 == 3)
                  {
                    v77 = 0x6166654472657375;
                  }

                  else
                  {
                    v77 = 0x5365636976726573;
                  }

                  if (v76 == 3)
                  {
                    v78 = 0xEC00000073746C75;
                  }

                  else
                  {
                    v78 = 0xEF73676E69747465;
                  }

                  if (v75 <= 1)
                  {
                    goto LABEL_207;
                  }
                }

LABEL_194:
                v79 = 0x6166654472657375;
                if (v75 != 3)
                {
                  v79 = 0x5365636976726573;
                }

                v80 = 0xEF73676E69747465;
                if (v75 == 3)
                {
                  v80 = 0xEC00000073746C75;
                }

                if (v75 == 2)
                {
                  v81 = 0x73656C6F72;
                }

                else
                {
                  v81 = v79;
                }

                if (v75 == 2)
                {
                  v82 = 0xE500000000000000;
                }

                else
                {
                  v82 = v80;
                }

                if (v77 != v81)
                {
LABEL_212:
                  v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v83)
                  {
                    goto LABEL_216;
                  }

                  if (v63 == ++v74)
                  {
                    v74 = 0;
                    goto LABEL_216;
                  }

                  continue;
                }
              }

              break;
            }

            if (v78 != v82)
            {
              goto LABEL_212;
            }

LABEL_216:
            v11 = v86;
LABEL_217:
            a3 = v62 + v92;
            sub_100041F5C(v11);
            sub_100041F5C(v90);
            a1 = v93;
            if (v64 >= v74)
            {
              v59 = v94;
              v61 = v95;
              if (v62 < v88 || a3 >= v88)
              {
                swift_arrayInitWithTakeFrontToBack();
                v60 = v90;
              }

              else
              {
                v60 = v90;
                if (v62 != v88)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v57 = v61;
              v58 = v87;
              if (v95 <= v96)
              {
                v54 = v61;
                a2 = v87;
                goto LABEL_230;
              }

              continue;
            }

            break;
          }

          a2 = v94;
          if (v62 < v87 || a3 >= v87)
          {
            swift_arrayInitWithTakeFrontToBack();
            v55 = v92;
          }

          else
          {
            v55 = v92;
            if (v62 != v87)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v57 = v88;
          v54 = v85;
          if (v88 <= v96)
          {
LABEL_230:
            v99 = a2;
            v97 = v54;
            goto LABEL_231;
          }
        }
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v19 = v92;
    v22 = v96;
    goto LABEL_126;
  }

  v90 = &v84 - v17;
  v23 = v21 * v19;
  if (v96 < a1 || a1 + v23 <= v96)
  {
    swift_arrayInitWithTakeFrontToBack();
    goto LABEL_16;
  }

  if (v96 != a1)
  {
    swift_arrayInitWithTakeBackToFront();
LABEL_16:
    v22 = v96;
  }

  v88 = v22 + v23;
  v97 = v22 + v23;
  if (v23 >= 1 && a2 < a3)
  {
    v26 = v91 + 32;
    v87 = a3;
    while (1)
    {
      v93 = a1;
      v27 = v22;
      v28 = v90;
      sub_100041EB0(a2, v90);
      v96 = v27;
      sub_100041EB0(v27, v95);
      v29 = *(v91 + 16);
      v94 = a2;
      if (v29)
      {
        v30 = 0;
        v31 = *(v28 + 25);
        while (1)
        {
          v32 = *(v26 + v30);
          if (v32 <= 1)
          {
            if (*(v26 + v30))
            {
              v33 = 0x726576726573;
            }

            else
            {
              v33 = 0x746C7561666564;
            }

            if (*(v26 + v30))
            {
              v34 = 0xE600000000000000;
            }

            else
            {
              v34 = 0xE700000000000000;
            }

            if (v31 > 1)
            {
LABEL_41:
              v35 = 0x6166654472657375;
              if (v31 != 3)
              {
                v35 = 0x5365636976726573;
              }

              v36 = 0xEF73676E69747465;
              if (v31 == 3)
              {
                v36 = 0xEC00000073746C75;
              }

              if (v31 == 2)
              {
                v37 = 0x73656C6F72;
              }

              else
              {
                v37 = v35;
              }

              if (v31 == 2)
              {
                v38 = 0xE500000000000000;
              }

              else
              {
                v38 = v36;
              }

              if (v33 != v37)
              {
                goto LABEL_59;
              }

              goto LABEL_58;
            }
          }

          else if (v32 == 2)
          {
            v34 = 0xE500000000000000;
            v33 = 0x73656C6F72;
            if (v31 > 1)
            {
              goto LABEL_41;
            }
          }

          else
          {
            if (v32 == 3)
            {
              v33 = 0x6166654472657375;
            }

            else
            {
              v33 = 0x5365636976726573;
            }

            if (v32 == 3)
            {
              v34 = 0xEC00000073746C75;
            }

            else
            {
              v34 = 0xEF73676E69747465;
            }

            if (v31 > 1)
            {
              goto LABEL_41;
            }
          }

          if (v31)
          {
            v38 = 0xE600000000000000;
            if (v33 != 0x726576726573)
            {
              goto LABEL_59;
            }
          }

          else
          {
            v38 = 0xE700000000000000;
            if (v33 != 0x746C7561666564)
            {
              goto LABEL_59;
            }
          }

LABEL_58:
          if (v34 == v38)
          {

LABEL_64:
            v40 = 0;
            v41 = *(v95 + 25);
            while (2)
            {
              if (v29 == v40)
              {
                __break(1u);
LABEL_233:
                __break(1u);
LABEL_234:
                __break(1u);
                goto LABEL_235;
              }

              v42 = *(v26 + v40);
              if (v42 <= 1)
              {
                if (*(v26 + v40))
                {
                  v43 = 0x726576726573;
                }

                else
                {
                  v43 = 0x746C7561666564;
                }

                if (*(v26 + v40))
                {
                  v44 = 0xE600000000000000;
                }

                else
                {
                  v44 = 0xE700000000000000;
                }

                if (v41 > 1)
                {
                  goto LABEL_83;
                }

LABEL_96:
                if (v41)
                {
                  v48 = 0xE600000000000000;
                  if (v43 != 0x726576726573)
                  {
                    goto LABEL_101;
                  }
                }

                else
                {
                  v48 = 0xE700000000000000;
                  if (v43 != 0x746C7561666564)
                  {
                    goto LABEL_101;
                  }
                }
              }

              else
              {
                if (v42 == 2)
                {
                  v44 = 0xE500000000000000;
                  v43 = 0x73656C6F72;
                  if (v41 <= 1)
                  {
                    goto LABEL_96;
                  }
                }

                else
                {
                  if (v42 == 3)
                  {
                    v43 = 0x6166654472657375;
                  }

                  else
                  {
                    v43 = 0x5365636976726573;
                  }

                  if (v42 == 3)
                  {
                    v44 = 0xEC00000073746C75;
                  }

                  else
                  {
                    v44 = 0xEF73676E69747465;
                  }

                  if (v41 <= 1)
                  {
                    goto LABEL_96;
                  }
                }

LABEL_83:
                v45 = 0x6166654472657375;
                if (v41 != 3)
                {
                  v45 = 0x5365636976726573;
                }

                v46 = 0xEF73676E69747465;
                if (v41 == 3)
                {
                  v46 = 0xEC00000073746C75;
                }

                if (v41 == 2)
                {
                  v47 = 0x73656C6F72;
                }

                else
                {
                  v47 = v45;
                }

                if (v41 == 2)
                {
                  v48 = 0xE500000000000000;
                }

                else
                {
                  v48 = v46;
                }

                if (v43 != v47)
                {
LABEL_101:
                  v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v49)
                  {
                    goto LABEL_105;
                  }

                  if (v29 == ++v40)
                  {
                    v40 = 0;
LABEL_105:
                    v28 = v90;
                    goto LABEL_106;
                  }

                  continue;
                }
              }

              break;
            }

            if (v44 == v48)
            {

              goto LABEL_105;
            }

            goto LABEL_101;
          }

LABEL_59:
          v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v39)
          {
            goto LABEL_64;
          }

          if (v29 == ++v30)
          {
            v30 = 0;
            goto LABEL_64;
          }
        }
      }

      v40 = 0;
      v30 = 0;
LABEL_106:
      sub_100041F5C(v95);
      sub_100041F5C(v28);
      v50 = v93;
      if (v30 < v40)
      {
        v51 = v92;
        a2 = v94 + v92;
        v52 = v87;
        if (v93 < v94 || v93 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_116:
          v51 = v92;
        }

        else if (v93 != v94)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_116;
        }

        v22 = v96;
        goto LABEL_121;
      }

      v51 = v92;
      v53 = v96 + v92;
      a2 = v94;
      v52 = v87;
      if (v93 < v96 || v93 >= v53)
      {
        break;
      }

      if (v93 != v96)
      {
        swift_arrayInitWithTakeBackToFront();
LABEL_119:
        v51 = v92;
      }

      v98 = v53;
      v22 = v53;
LABEL_121:
      a1 = v50 + v51;
      v99 = a1;
      if (v22 >= v88 || a2 >= v52)
      {
        goto LABEL_231;
      }
    }

    swift_arrayInitWithTakeFrontToBack();
    goto LABEL_119;
  }

LABEL_231:
  sub_10060AACC(&v99, &v98, &v97);
  return 1;
}

uint64_t sub_1010772C0(char **a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v27 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_16:
    v27 = sub_100B31E68(v27);
  }

  v22 = v6;
  *v6 = v27;
  v8 = v27 + 16;
  v9 = *(v27 + 2);
  if (v9 < 2)
  {
LABEL_10:

    *v22 = v27;
    return 1;
  }

  else
  {
    v23 = (v27 + 16);
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = &v27[16 * v9];
      v6 = *v11;
      v12 = &v8[16 * v9];
      v13 = *v12;
      v14 = *(v12 + 1);
      v15 = *(*(type metadata accessor for DefaultConfigurationLayer() - 8) + 72);
      v16 = v10 + v15 * v6;
      v17 = v10 + v15 * v13;
      v18 = v10 + v15 * v14;

      sub_101076688(v16, v17, v18, a2, a4);

      if (v5)
      {
        *v22 = v27;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v8 = v27 + 16;
      v19 = *v23;
      if (v9 - 2 >= *v23)
      {
        goto LABEL_14;
      }

      *v11 = v6;
      *(v11 + 1) = v14;
      v20 = v19 - v9;
      if (v19 < v9)
      {
        goto LABEL_15;
      }

      v9 = v19 - 1;
      memmove(v12, v12 + 16, 16 * v20);
      *v23 = v9;
      if (v9 <= 1)
      {
        goto LABEL_10;
      }
    }

    *v22 = v27;
    __break(1u);
  }

  return result;
}

uint64_t sub_101077480(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v171 = a1;
  v172 = a4;
  v186 = type metadata accessor for DefaultConfigurationLayer();
  v175 = *(v186 - 8);
  v9 = *(v175 + 64);
  v10 = __chkstk_darwin(v186);
  v173 = &v166 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v183 = &v166 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v166 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v166 - v18;
  v20 = __chkstk_darwin(v17);
  v182 = &v166 - v21;
  v22 = __chkstk_darwin(v20);
  v179 = &v166 - v23;
  v24 = __chkstk_darwin(v22);
  v168 = &v166 - v25;
  __chkstk_darwin(v24);
  v167 = &v166 - v26;
  v191 = &_swiftEmptyArrayStorage;
  v177 = a3;
  v27 = a3[1];
  v180 = a5;
  if (v27 < 1)
  {
    swift_bridgeObjectRetain_n();
    goto LABEL_270;
  }

  v178 = v5;
  v28 = a5 + 32;
  v29 = v27;
  swift_bridgeObjectRetain_n();
  v30 = v29;
  v31 = 0;
  v32 = &_swiftEmptyArrayStorage;
  v181 = v16;
  v190 = v19;
  v174 = v28;
LABEL_4:
  v33 = v31++;
  if (v31 >= v30)
  {
    v72 = v172;
    goto LABEL_117;
  }

  v169 = v32;
  v34 = v30;
  v35 = *v177;
  v32 = *(v175 + 72);
  v36 = v167;
  sub_100041EB0(*v177 + v32 * v31, v167);
  v185 = v33;
  v176 = v35;
  v37 = v35 + v32 * v33;
  v38 = v168;
  sub_100041EB0(v37, v168);
  v39 = v180;
  v40 = sub_1005E48C0(*(v36 + 25), v180);
  if (v41)
  {
    v42 = 0;
  }

  else
  {
    v42 = v40;
  }

  v188 = v42;
  v43 = sub_1005E48C0(*(v38 + 25), v39);
  if (v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = v43;
  }

  v187 = v45;
  sub_100041F5C(v38);
  sub_100041F5C(v36);
  v170 = v34;
  v184 = v34 - 1;
LABEL_15:
  if (v31 != v184)
  {
    v189 = v31 + 1;
    v49 = v176;
    v50 = v179;
    sub_100041EB0(v176 + (v31 + 1) * v32, v179);
    sub_100041EB0(v49 + v31 * v32, v182);
    v51 = *(v180 + 16);
    if (!v51)
    {
      v62 = 0;
      v52 = 0;
      goto LABEL_14;
    }

    v52 = 0;
    v53 = *(v50 + 25);
    while (1)
    {
      v54 = *(v28 + v52);
      if (v54 <= 1)
      {
        if (*(v28 + v52))
        {
          v55 = 0x726576726573;
        }

        else
        {
          v55 = 0x746C7561666564;
        }

        if (*(v28 + v52))
        {
          v56 = 0xE600000000000000;
        }

        else
        {
          v56 = 0xE700000000000000;
        }

        if (v53 > 1)
        {
LABEL_35:
          v57 = 0x6166654472657375;
          if (v53 != 3)
          {
            v57 = 0x5365636976726573;
          }

          v58 = 0xEF73676E69747465;
          if (v53 == 3)
          {
            v58 = 0xEC00000073746C75;
          }

          if (v53 == 2)
          {
            v59 = 0x73656C6F72;
          }

          else
          {
            v59 = v57;
          }

          if (v53 == 2)
          {
            v60 = 0xE500000000000000;
          }

          else
          {
            v60 = v58;
          }

          if (v55 != v59)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        }
      }

      else if (v54 == 2)
      {
        v56 = 0xE500000000000000;
        v55 = 0x73656C6F72;
        if (v53 > 1)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v54 == 3)
        {
          v55 = 0x6166654472657375;
        }

        else
        {
          v55 = 0x5365636976726573;
        }

        if (v54 == 3)
        {
          v56 = 0xEC00000073746C75;
        }

        else
        {
          v56 = 0xEF73676E69747465;
        }

        if (v53 > 1)
        {
          goto LABEL_35;
        }
      }

      if (v53)
      {
        v60 = 0xE600000000000000;
        if (v55 != 0x726576726573)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v60 = 0xE700000000000000;
        if (v55 != 0x746C7561666564)
        {
          goto LABEL_53;
        }
      }

LABEL_52:
      if (v56 == v60)
      {

LABEL_58:
        v62 = 0;
        v63 = *(v182 + 25);
        while (2)
        {
          if (v51 == v62)
          {
            goto LABEL_278;
          }

          v64 = *(v28 + v62);
          if (v64 <= 1)
          {
            if (*(v28 + v62))
            {
              v65 = 0x726576726573;
            }

            else
            {
              v65 = 0x746C7561666564;
            }

            if (*(v28 + v62))
            {
              v66 = 0xE600000000000000;
            }

            else
            {
              v66 = 0xE700000000000000;
            }

            if (v63 > 1)
            {
              goto LABEL_77;
            }

LABEL_90:
            if (v63)
            {
              v70 = 0xE600000000000000;
              if (v65 != 0x726576726573)
              {
                goto LABEL_95;
              }
            }

            else
            {
              v70 = 0xE700000000000000;
              if (v65 != 0x746C7561666564)
              {
                goto LABEL_95;
              }
            }

LABEL_94:
            if (v66 == v70)
            {

              goto LABEL_13;
            }

            goto LABEL_95;
          }

          if (v64 == 2)
          {
            v66 = 0xE500000000000000;
            v65 = 0x73656C6F72;
            if (v63 <= 1)
            {
              goto LABEL_90;
            }
          }

          else
          {
            if (v64 == 3)
            {
              v65 = 0x6166654472657375;
            }

            else
            {
              v65 = 0x5365636976726573;
            }

            if (v64 == 3)
            {
              v66 = 0xEC00000073746C75;
            }

            else
            {
              v66 = 0xEF73676E69747465;
            }

            if (v63 <= 1)
            {
              goto LABEL_90;
            }
          }

LABEL_77:
          v67 = 0x6166654472657375;
          if (v63 != 3)
          {
            v67 = 0x5365636976726573;
          }

          v68 = 0xEF73676E69747465;
          if (v63 == 3)
          {
            v68 = 0xEC00000073746C75;
          }

          if (v63 == 2)
          {
            v69 = 0x73656C6F72;
          }

          else
          {
            v69 = v67;
          }

          if (v63 == 2)
          {
            v70 = 0xE500000000000000;
          }

          else
          {
            v70 = v68;
          }

          if (v65 == v69)
          {
            goto LABEL_94;
          }

LABEL_95:
          v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v71)
          {
            goto LABEL_13;
          }

          if (v51 != ++v62)
          {
            continue;
          }

          break;
        }

        v62 = 0;
LABEL_13:
        v16 = v181;
LABEL_14:
        v46 = v188 < v187;
        sub_100041F5C(v182);
        sub_100041F5C(v179);
        v47 = v52 >= v62;
        v48 = v189;
        v19 = v190;
        v31 = v189;
        if (((v46 ^ v47) & 1) == 0)
        {
          goto LABEL_100;
        }

        goto LABEL_15;
      }

LABEL_53:
      v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v61)
      {
        goto LABEL_58;
      }

      if (v51 == ++v52)
      {
        v52 = 0;
        goto LABEL_58;
      }
    }
  }

  v48 = v170;
LABEL_100:
  v72 = v172;
  if (v188 >= v187)
  {
    v31 = v48;
    goto LABEL_116;
  }

  v33 = v185;
  if (v48 < v185)
  {
    goto LABEL_300;
  }

  if (v185 >= v48)
  {
    v31 = v48;
    v32 = v169;
  }

  else
  {
    v73 = v32 * (v48 - 1);
    v74 = v48 * v32;
    v189 = v48;
    v75 = v185;
    v76 = v185 * v32;
    do
    {
      if (v75 != --v48)
      {
        v77 = *v177;
        if (!*v177)
        {
          goto LABEL_303;
        }

        sub_1000420BC(v77 + v76, v173);
        if (v76 < v73 || v77 + v76 >= (v77 + v74))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v76 != v73)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        sub_1000420BC(v173, v77 + v73);
        v72 = v172;
      }

      ++v75;
      v73 -= v32;
      v74 -= v32;
      v76 += v32;
    }

    while (v75 < v48);
    v31 = v189;
    v19 = v190;
    v16 = v181;
LABEL_116:
    v32 = v169;
    v33 = v185;
  }

LABEL_117:
  v78 = v177[1];
  if (v31 >= v78)
  {
    goto LABEL_218;
  }

  if (__OFSUB__(v31, v33))
  {
    goto LABEL_297;
  }

  if (v31 - v33 >= v72)
  {
    goto LABEL_218;
  }

  v79 = v33 + v72;
  if (__OFADD__(v33, v72))
  {
    goto LABEL_298;
  }

  if (v79 >= v78)
  {
    v79 = v177[1];
  }

  if (v79 < v33)
  {
LABEL_299:
    __break(1u);
LABEL_300:
    __break(1u);
LABEL_301:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_302:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_303:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_304:
    swift_bridgeObjectRelease_n();
    __break(1u);
    goto LABEL_305;
  }

  if (v31 == v79)
  {
    goto LABEL_218;
  }

  v185 = v33;
  v169 = v32;
  v189 = *v177;
  v80 = *(v180 + 16);
  v184 = *(v175 + 72);
  v170 = v79;
LABEL_128:
  v176 = v31;
  v81 = v31;
  while (1)
  {
    v82 = v81 - 1;
    v83 = v189;
    v32 = v184;
    v84 = v189 + v184 * v81;
    sub_100041EB0(v84, v19);
    v187 = v83 + v82 * v32;
    v188 = v82;
    sub_100041EB0(v187, v16);
    if (!v80)
    {
      v94 = 0;
      v85 = 0;
      goto LABEL_213;
    }

    v85 = 0;
    v86 = v19[25];
    while (1)
    {
      v87 = *(v28 + v85);
      if (v87 <= 1)
      {
        if (*(v28 + v85))
        {
          v88 = 0x726576726573;
        }

        else
        {
          v88 = 0x746C7561666564;
        }

        if (*(v28 + v85))
        {
          v89 = 0xE600000000000000;
        }

        else
        {
          v89 = 0xE700000000000000;
        }

        if (v86 > 1)
        {
LABEL_148:
          v90 = 0x6166654472657375;
          if (v86 != 3)
          {
            v90 = 0x5365636976726573;
          }

          v91 = 0xEF73676E69747465;
          if (v86 == 3)
          {
            v91 = 0xEC00000073746C75;
          }

          if (v86 == 2)
          {
            v92 = 0x73656C6F72;
          }

          else
          {
            v92 = v90;
          }

          if (v86 == 2)
          {
            v93 = 0xE500000000000000;
          }

          else
          {
            v93 = v91;
          }

          if (v88 != v92)
          {
            goto LABEL_166;
          }

          goto LABEL_165;
        }
      }

      else if (v87 == 2)
      {
        v89 = 0xE500000000000000;
        v88 = 0x73656C6F72;
        if (v86 > 1)
        {
          goto LABEL_148;
        }
      }

      else
      {
        if (v87 == 3)
        {
          v88 = 0x6166654472657375;
        }

        else
        {
          v88 = 0x5365636976726573;
        }

        if (v87 == 3)
        {
          v89 = 0xEC00000073746C75;
        }

        else
        {
          v89 = 0xEF73676E69747465;
        }

        if (v86 > 1)
        {
          goto LABEL_148;
        }
      }

      if (!v86)
      {
        break;
      }

      v93 = 0xE600000000000000;
      if (v88 == 0x726576726573)
      {
        goto LABEL_165;
      }

LABEL_166:
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v32)
      {
        goto LABEL_171;
      }

      if (v80 == ++v85)
      {
        v85 = 0;
        goto LABEL_171;
      }
    }

    v93 = 0xE700000000000000;
    if (v88 != 0x746C7561666564)
    {
      goto LABEL_166;
    }

LABEL_165:
    if (v89 != v93)
    {
      goto LABEL_166;
    }

LABEL_171:
    v94 = 0;
    v95 = v16[25];
LABEL_172:
    if (v80 == v94)
    {
      break;
    }

    v96 = *(v28 + v94);
    if (v96 <= 1)
    {
      if (*(v28 + v94))
      {
        v97 = 0x726576726573;
      }

      else
      {
        v97 = 0x746C7561666564;
      }

      if (*(v28 + v94))
      {
        v98 = 0xE600000000000000;
      }

      else
      {
        v98 = 0xE700000000000000;
      }

      if (v95 > 1)
      {
        goto LABEL_190;
      }

LABEL_203:
      if (v95)
      {
        v102 = 0xE600000000000000;
        if (v97 != 0x726576726573)
        {
          goto LABEL_208;
        }
      }

      else
      {
        v102 = 0xE700000000000000;
        if (v97 != 0x746C7561666564)
        {
          goto LABEL_208;
        }
      }
    }

    else
    {
      if (v96 == 2)
      {
        v98 = 0xE500000000000000;
        v97 = 0x73656C6F72;
        if (v95 <= 1)
        {
          goto LABEL_203;
        }
      }

      else
      {
        if (v96 == 3)
        {
          v97 = 0x6166654472657375;
        }

        else
        {
          v97 = 0x5365636976726573;
        }

        if (v96 == 3)
        {
          v98 = 0xEC00000073746C75;
        }

        else
        {
          v98 = 0xEF73676E69747465;
        }

        if (v95 <= 1)
        {
          goto LABEL_203;
        }
      }

LABEL_190:
      v99 = 0x6166654472657375;
      if (v95 != 3)
      {
        v99 = 0x5365636976726573;
      }

      v100 = 0xEF73676E69747465;
      if (v95 == 3)
      {
        v100 = 0xEC00000073746C75;
      }

      if (v95 == 2)
      {
        v101 = 0x73656C6F72;
      }

      else
      {
        v101 = v99;
      }

      if (v95 == 2)
      {
        v102 = 0xE500000000000000;
      }

      else
      {
        v102 = v100;
      }

      if (v97 != v101)
      {
LABEL_208:
        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v32)
        {
          goto LABEL_212;
        }

        if (v80 == ++v94)
        {
          v94 = 0;
          goto LABEL_212;
        }

        goto LABEL_172;
      }
    }

    if (v98 != v102)
    {
      goto LABEL_208;
    }

LABEL_212:
    v16 = v181;
LABEL_213:
    sub_100041F5C(v16);
    sub_100041F5C(v190);
    if (v85 >= v94)
    {
      v19 = v190;
      goto LABEL_127;
    }

    if (!v189)
    {
      goto LABEL_301;
    }

    v103 = v183;
    sub_1000420BC(v84, v183);
    v104 = v187;
    swift_arrayInitWithTakeFrontToBack();
    sub_1000420BC(v103, v104);
    v81 = v188;
    v19 = v190;
    if (v188 == v185)
    {
LABEL_127:
      v31 = v176 + 1;
      if (v176 + 1 != v170)
      {
        goto LABEL_128;
      }

      v31 = v170;
      v32 = v169;
      v33 = v185;
LABEL_218:
      if (v31 < v33)
      {
        goto LABEL_296;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_100A5B430(0, *(v32 + 16) + 1, 1, v32);
      }

      v106 = *(v32 + 16);
      v105 = *(v32 + 24);
      v107 = v106 + 1;
      if (v106 >= v105 >> 1)
      {
        v32 = sub_100A5B430((v105 > 1), v106 + 1, 1, v32);
      }

      *(v32 + 16) = v107;
      v108 = v32 + 32;
      v109 = (v32 + 32 + 16 * v106);
      *v109 = v33;
      v109[1] = v31;
      v189 = *v171;
      if (!v189)
      {
        goto LABEL_304;
      }

      if (v106)
      {
        v176 = v31;
        v188 = v32 + 32;
        while (1)
        {
          v110 = v107 - 1;
          if (v107 >= 4)
          {
            break;
          }

          if (v107 == 3)
          {
            v111 = *(v32 + 32);
            v112 = *(v32 + 40);
            v121 = __OFSUB__(v112, v111);
            v113 = v112 - v111;
            v114 = v121;
LABEL_239:
            if (v114)
            {
              goto LABEL_286;
            }

            v127 = (v32 + 16 * v107);
            v129 = *v127;
            v128 = v127[1];
            v130 = __OFSUB__(v128, v129);
            v131 = v128 - v129;
            v132 = v130;
            if (v130)
            {
              goto LABEL_288;
            }

            v133 = (v108 + 16 * v110);
            v135 = *v133;
            v134 = v133[1];
            v121 = __OFSUB__(v134, v135);
            v136 = v134 - v135;
            if (v121)
            {
              goto LABEL_291;
            }

            if (__OFADD__(v131, v136))
            {
              goto LABEL_293;
            }

            if (v131 + v136 >= v113)
            {
              if (v113 < v136)
              {
                v110 = v107 - 2;
              }

              goto LABEL_261;
            }

            goto LABEL_254;
          }

          if (v107 < 2)
          {
            goto LABEL_294;
          }

          v137 = (v32 + 16 * v107);
          v139 = *v137;
          v138 = v137[1];
          v121 = __OFSUB__(v138, v139);
          v131 = v138 - v139;
          v132 = v121;
LABEL_254:
          if (v132)
          {
            goto LABEL_290;
          }

          v140 = (v108 + 16 * v110);
          v142 = *v140;
          v141 = v140[1];
          v121 = __OFSUB__(v141, v142);
          v143 = v141 - v142;
          if (v121)
          {
            goto LABEL_292;
          }

          if (v143 < v131)
          {
            goto LABEL_3;
          }

LABEL_261:
          if (v110 - 1 >= v107)
          {
            __break(1u);
LABEL_281:
            __break(1u);
LABEL_282:
            __break(1u);
LABEL_283:
            __break(1u);
LABEL_284:
            __break(1u);
LABEL_285:
            __break(1u);
LABEL_286:
            __break(1u);
LABEL_287:
            __break(1u);
LABEL_288:
            __break(1u);
LABEL_289:
            __break(1u);
LABEL_290:
            __break(1u);
LABEL_291:
            __break(1u);
LABEL_292:
            __break(1u);
LABEL_293:
            __break(1u);
LABEL_294:
            __break(1u);
LABEL_295:
            __break(1u);
LABEL_296:
            __break(1u);
LABEL_297:
            __break(1u);
LABEL_298:
            __break(1u);
            goto LABEL_299;
          }

          v148 = *v177;
          if (!*v177)
          {
            goto LABEL_302;
          }

          v149 = v32;
          v150 = (v108 + 16 * (v110 - 1));
          v151 = *v150;
          v152 = v110;
          v153 = (v108 + 16 * v110);
          v154 = v153[1];
          v155 = *(v175 + 72);
          v156 = v148 + v155 * *v150;
          v157 = v148 + v155 * *v153;
          v158 = v148 + v155 * v154;
          v159 = v180;

          v160 = v156;
          v161 = v178;
          sub_101076688(v160, v157, v158, v189, v159);
          v178 = v161;
          if (v161)
          {

            v191 = v149;
            goto LABEL_274;
          }

          if (v154 < v151)
          {
            goto LABEL_281;
          }

          v162 = *(v149 + 16);
          if (v152 > v162)
          {
            goto LABEL_282;
          }

          *v150 = v151;
          v150[1] = v154;
          if (v152 >= v162)
          {
            goto LABEL_283;
          }

          v107 = v162 - 1;
          memmove(v153, v153 + 2, 16 * (v162 - 1 - v152));
          v32 = v149;
          *(v149 + 16) = v162 - 1;
          v31 = v176;
          v108 = v188;
          v28 = v174;
          if (v162 <= 2)
          {
            goto LABEL_3;
          }
        }

        v115 = v108 + 16 * v107;
        v116 = *(v115 - 64);
        v117 = *(v115 - 56);
        v121 = __OFSUB__(v117, v116);
        v118 = v117 - v116;
        if (v121)
        {
          goto LABEL_284;
        }

        v120 = *(v115 - 48);
        v119 = *(v115 - 40);
        v121 = __OFSUB__(v119, v120);
        v113 = v119 - v120;
        v114 = v121;
        if (v121)
        {
          goto LABEL_285;
        }

        v122 = (v32 + 16 * v107);
        v124 = *v122;
        v123 = v122[1];
        v121 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v121)
        {
          goto LABEL_287;
        }

        v121 = __OFADD__(v113, v125);
        v126 = v113 + v125;
        if (v121)
        {
          goto LABEL_289;
        }

        if (v126 >= v118)
        {
          v144 = (v108 + 16 * v110);
          v146 = *v144;
          v145 = v144[1];
          v121 = __OFSUB__(v145, v146);
          v147 = v145 - v146;
          if (v121)
          {
            goto LABEL_295;
          }

          if (v113 < v147)
          {
            v110 = v107 - 2;
          }

          goto LABEL_261;
        }

        goto LABEL_239;
      }

LABEL_3:
      v30 = v177[1];
      v16 = v181;
      v19 = v190;
      if (v31 >= v30)
      {
        goto LABEL_279;
      }

      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_278:
  __break(1u);
LABEL_279:
  v191 = v32;
  v6 = v178;
LABEL_270:
  v163 = *v171;
  if (!*v171)
  {
LABEL_305:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
    return result;
  }

  v164 = v180;

  sub_1010772C0(&v191, v163, v177, v164);
  if (v6)
  {

LABEL_274:
    swift_bridgeObjectRelease_n();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_101078518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v57 = a1;
  v56 = type metadata accessor for DefaultConfigurationLayer();
  v9 = *(*(v56 - 8) + 64);
  v10 = __chkstk_darwin(v56);
  v55 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v51 - v13;
  result = __chkstk_darwin(v12);
  v19 = &v51 - v17;
  v52 = a2;
  if (a3 == a2)
  {
    return result;
  }

  v63 = *a4;
  v20 = *(a5 + 16);
  v21 = *(v16 + 72);
  v58 = &v51 - v17;
  v59 = v21;
  v22 = a5 + 32;
  v54 = v14;
LABEL_5:
  v53 = v18;
  v23 = v18;
  while (1)
  {
    v24 = v23 - 1;
    v25 = v63;
    v26 = v59;
    v60 = v63 + v59 * v23;
    sub_100041EB0(v60, v19);
    v61 = v25 + v24 * v26;
    v62 = v24;
    sub_100041EB0(v61, v14);
    if (v20)
    {
      break;
    }

    v37 = 0;
    v27 = 0;
LABEL_90:
    sub_100041F5C(v14);
    v47 = v58;
    result = sub_100041F5C(v58);
    v48 = v27 < v37;
    v19 = v47;
    if (v48)
    {
      if (!v63)
      {
        goto LABEL_96;
      }

      v49 = v55;
      sub_1000420BC(v60, v55);
      v50 = v61;
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1000420BC(v49, v50);
      v23 = v62;
      if (v62 != v57)
      {
        continue;
      }
    }

    v18 = v53 + 1;
    if (v53 + 1 == v52)
    {
      return result;
    }

    goto LABEL_5;
  }

  v27 = 0;
  v28 = v19[25];
  while (1)
  {
    v29 = *(v22 + v27);
    if (v29 <= 1)
    {
      if (*(v22 + v27))
      {
        v30 = 0x726576726573;
      }

      else
      {
        v30 = 0x746C7561666564;
      }

      if (*(v22 + v27))
      {
        v31 = 0xE600000000000000;
      }

      else
      {
        v31 = 0xE700000000000000;
      }

      if (v28 > 1)
      {
LABEL_25:
        v32 = 0x6166654472657375;
        if (v28 != 3)
        {
          v32 = 0x5365636976726573;
        }

        v33 = 0xEF73676E69747465;
        if (v28 == 3)
        {
          v33 = 0xEC00000073746C75;
        }

        if (v28 == 2)
        {
          v34 = 0x73656C6F72;
        }

        else
        {
          v34 = v32;
        }

        if (v28 == 2)
        {
          v35 = 0xE500000000000000;
        }

        else
        {
          v35 = v33;
        }

        if (v30 != v34)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }
    }

    else if (v29 == 2)
    {
      v31 = 0xE500000000000000;
      v30 = 0x73656C6F72;
      if (v28 > 1)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v29 == 3)
      {
        v30 = 0x6166654472657375;
      }

      else
      {
        v30 = 0x5365636976726573;
      }

      if (v29 == 3)
      {
        v31 = 0xEC00000073746C75;
      }

      else
      {
        v31 = 0xEF73676E69747465;
      }

      if (v28 > 1)
      {
        goto LABEL_25;
      }
    }

    if (!v28)
    {
      break;
    }

    v35 = 0xE600000000000000;
    if (v30 == 0x726576726573)
    {
      goto LABEL_42;
    }

LABEL_43:
    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v36)
    {
      goto LABEL_48;
    }

    if (v20 == ++v27)
    {
      v27 = 0;
      goto LABEL_48;
    }
  }

  v35 = 0xE700000000000000;
  if (v30 != 0x746C7561666564)
  {
    goto LABEL_43;
  }

LABEL_42:
  if (v31 != v35)
  {
    goto LABEL_43;
  }

LABEL_48:
  v37 = 0;
  v38 = v14[25];
  while (2)
  {
    if (v20 != v37)
    {
      v39 = *(v22 + v37);
      if (v39 <= 1)
      {
        if (*(v22 + v37))
        {
          v40 = 0x726576726573;
        }

        else
        {
          v40 = 0x746C7561666564;
        }

        if (*(v22 + v37))
        {
          v41 = 0xE600000000000000;
        }

        else
        {
          v41 = 0xE700000000000000;
        }

        if (v38 > 1)
        {
          goto LABEL_67;
        }

LABEL_80:
        if (v38)
        {
          v45 = 0xE600000000000000;
          if (v40 != 0x726576726573)
          {
            goto LABEL_85;
          }
        }

        else
        {
          v45 = 0xE700000000000000;
          if (v40 != 0x746C7561666564)
          {
            goto LABEL_85;
          }
        }
      }

      else
      {
        if (v39 == 2)
        {
          v41 = 0xE500000000000000;
          v40 = 0x73656C6F72;
          if (v38 <= 1)
          {
            goto LABEL_80;
          }
        }

        else
        {
          if (v39 == 3)
          {
            v40 = 0x6166654472657375;
          }

          else
          {
            v40 = 0x5365636976726573;
          }

          if (v39 == 3)
          {
            v41 = 0xEC00000073746C75;
          }

          else
          {
            v41 = 0xEF73676E69747465;
          }

          if (v38 <= 1)
          {
            goto LABEL_80;
          }
        }

LABEL_67:
        v42 = 0x6166654472657375;
        if (v38 != 3)
        {
          v42 = 0x5365636976726573;
        }

        v43 = 0xEF73676E69747465;
        if (v38 == 3)
        {
          v43 = 0xEC00000073746C75;
        }

        if (v38 == 2)
        {
          v44 = 0x73656C6F72;
        }

        else
        {
          v44 = v42;
        }

        if (v38 == 2)
        {
          v45 = 0xE500000000000000;
        }

        else
        {
          v45 = v43;
        }

        if (v40 != v44)
        {
LABEL_85:
          v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v46)
          {
            goto LABEL_89;
          }

          if (v20 == ++v37)
          {
            v37 = 0;
LABEL_89:
            v14 = v54;
            goto LABEL_90;
          }

          continue;
        }
      }

      if (v41 == v45)
      {

        goto LABEL_89;
      }

      goto LABEL_85;
    }

    break;
  }

  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

Swift::Int sub_101078A94(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for DefaultConfigurationLayer();
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v8[2] = v7;
      }

      v9 = *(type metadata accessor for DefaultConfigurationLayer() - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;

      sub_101077480(v10, v11, a1, v6, a2);

      v8[2] = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_101078518(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_101078C18(void **a1, uint64_t a2)
{
  v4 = *(type metadata accessor for DefaultConfigurationLayer() - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_100B32034(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  sub_101078A94(v8, a2);

  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}

void *sub_101078D00(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016C5098, &qword_1013FDEA0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_1000035D0(a1, a1[3]);
  sub_101078EBC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000BC4D4(&qword_1016C50A8, &qword_1013FDEA8);
    sub_101078F10(&qword_1016C50B0, &qword_1016C50B8);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_100007BAC(a1);
  }

  return v9;
}

unint64_t sub_101078EBC()
{
  result = qword_1016C50A0;
  if (!qword_1016C50A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C50A0);
  }

  return result;
}

uint64_t sub_101078F10(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016C50A8, &qword_1013FDEA8);
    sub_101078F98(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_101078F98(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DefaultConfigurationLayer();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_101078FF0()
{
  result = qword_1016C5108;
  if (!qword_1016C5108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5108);
  }

  return result;
}

unint64_t sub_101079048()
{
  result = qword_1016C5110;
  if (!qword_1016C5110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5110);
  }

  return result;
}

unint64_t sub_1010790A0()
{
  result = qword_1016C5118;
  if (!qword_1016C5118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5118);
  }

  return result;
}

uint64_t sub_1010790F8(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C5128, &qword_1013FF6F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10107999C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v20[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v20[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = v3[4];
  v16 = v3[5];
  v20[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v17 = v3[6];
  v20[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v19 = v3[7];
  v20[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1010792D8()
{
  v1 = *v0;
  v2 = 1684628325;
  v3 = 0x754E6C6169726573;
  v4 = 0x49746375646F7270;
  if (v1 != 3)
  {
    v4 = 0x6449726F646E6576;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x644970696863;
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

uint64_t sub_101079374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_101079B08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10107939C(uint64_t a1)
{
  v2 = sub_10107999C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010793D8(uint64_t a1)
{
  v2 = sub_10107999C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_101079414(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_1010790F8(a1);
}

void sub_101079450(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v51 = v7;
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v9 = v51;
  v10 = [objc_opt_self() currentDevice];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 serverFriendlyDescription];

    if (v12)
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = swift_isUniquelyReferenced_nonNull_native();
      *&v51 = v9;
      sub_100FFACA0(v13, v15, 0xD000000000000011, 0x800000010134EA40, v16);
      v17 = v51;
      Date.init()();
      v18 = Date.epoch.getter();
      (*(v3 + 8))(v6, v2);
      *&v51 = v18;
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      v22 = swift_isUniquelyReferenced_nonNull_native();
      *&v51 = v17;
      sub_100FFACA0(v19, v21, 0xD000000000000015, 0x800000010134EA60, v22);
      v23 = v51;
      *&v51 = 1;
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      v27 = swift_isUniquelyReferenced_nonNull_native();
      *&v51 = v23;
      sub_100FFACA0(v24, v26, 0xD000000000000013, 0x800000010134EA80, v27);
      v28 = v51;
      v29 = sub_1008D9A78();
      v31 = v30;
      v32 = swift_isUniquelyReferenced_nonNull_native();
      *&v51 = v28;
      sub_100FFACA0(v29, v31, 0x6567412D72657355, 0xEA0000000000746ELL, v32);
      v33 = *a1;
      v34 = *(a1 + 8);
      v35 = Data.hexString.getter();
      v37 = v36;
      v38 = *(a1 + 16);
      v39 = *(a1 + 24);
      v40 = Data.hexString.getter();
      v41 = *(a1 + 32);
      v42 = *(a1 + 40);
      *&v51 = v35;
      *(&v51 + 1) = v37;
      *&v52 = v40;
      *(&v52 + 1) = v43;
      *&v53 = v41;
      *(&v53 + 1) = v42;
      v54 = *(a1 + 48);
      v44 = type metadata accessor for JSONEncoder();
      v45 = *(v44 + 48);
      v46 = *(v44 + 52);
      swift_allocObject();

      JSONEncoder.init()();
      v50[1] = v51;
      v50[2] = v52;
      v50[3] = v53;
      v50[4] = v54;
      sub_1010798F8();
      v47 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v49 = v48;

      sub_1004059C4(a1);
      sub_10107994C(&v51);

      sub_100017D5C(v47, v49);

      sub_100016590(v47, v49);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_1010798F8()
{
  result = qword_1016C5120;
  if (!qword_1016C5120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5120);
  }

  return result;
}

unint64_t sub_10107999C()
{
  result = qword_1016C5130;
  if (!qword_1016C5130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5130);
  }

  return result;
}

unint64_t sub_101079A04()
{
  result = qword_1016C5138;
  if (!qword_1016C5138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5138);
  }

  return result;
}

unint64_t sub_101079A5C()
{
  result = qword_1016C5140;
  if (!qword_1016C5140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5140);
  }

  return result;
}

unint64_t sub_101079AB4()
{
  result = qword_1016C5148;
  if (!qword_1016C5148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5148);
  }

  return result;
}

uint64_t sub_101079B08(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684628325 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x644970696863 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_101079CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  *&v29 = a7;
  *(&v29 + 1) = a8;
  *&v28 = a5;
  *(&v28 + 1) = a6;
  v13 = type metadata accessor for PropertyListEncoder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  sub_1000E0A3C();
  v38 = a1;
  v39 = a2;
  *&v46 = 0;
  *(&v46 + 1) = DataProtocol.intValue.getter();
  *&v47 = DataProtocol.intValue.getter();
  *(&v47 + 1) = &off_101608C80;
  v48 = v28;
  *&v49 = a11;
  *(&v49 + 1) = 1;
  v50 = v29;
  v43 = v49;
  v44 = v29;
  v40 = v46;
  v41 = v47;
  v42 = v28;
  v51 = a9;
  v34 = v28;
  v35 = v49;
  v45 = a9;
  v36 = v29;
  v37 = a9;

  sub_100017D5C(v29, *(&v29 + 1));
  sub_100017D5C(a9, *(&a9 + 1));
  sub_10016517C();
  v31 = a10;
  v16 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v32 = v16;
  v33 = v17;
  v18 = v17;
  sub_100017D5C(a10, *(&a10 + 1));
  sub_1001651D0();
  v30 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000076D4(v19, qword_10177C548);
  sub_1001650CC(&v46, &v31);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  sub_100165128(&v46);
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v31 = v23;
    *v22 = 141558275;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2081;
    sub_10107D964();
    v26 = sub_1000136BC(v24, v25, &v31);

    *(v22 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v20, v21, "baaRKProps = %{private,mask.hash}s", v22, 0x16u);
    sub_100007BAC(v23);

    sub_100165128(&v46);
    sub_100016590(a10, *(&a10 + 1));
    sub_100016590(v16, v18);
  }

  else
  {
    sub_100016590(a10, *(&a10 + 1));
    sub_100016590(v16, v18);

    sub_100165128(&v46);
  }

  return v30;
}