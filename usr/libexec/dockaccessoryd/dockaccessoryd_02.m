unint64_t sub_1000A4474()
{
  result = qword_1002A9C30;
  if (!qword_1002A9C30)
  {
    sub_10009589C(&unk_1002A7B10, &unk_10023F3A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A9C30);
  }

  return result;
}

unint64_t sub_1000A44D8()
{
  result = qword_1002AA500;
  if (!qword_1002AA500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AA500);
  }

  return result;
}

uint64_t sub_1000A452C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000A0D2C(a1, a2);
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for SetupPayload.Version(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SetupPayload.Version(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000A46B8()
{
  result = qword_1002A7008;
  if (!qword_1002A7008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7008);
  }

  return result;
}

void sub_1000A470C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = [v1 primaryAccessory];
    if (v2)
    {
      v3 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_dataStreamController;
      if (!*(v0 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_dataStreamController))
      {
        v16 = v2;
        v4 = objc_opt_self();
        sub_100095274(&unk_1002A73A0, &qword_10023C670);
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_10023C170;
        *(v5 + 56) = &type metadata for UInt32;
        *(v5 + 64) = &protocol witness table for UInt32;
        *(v5 + 32) = 297;
        String.init(format:_:)();
        v6 = String._bridgeToObjectiveC()();

        v7 = [v4 UUIDWithString:v6];

        v8 = [v7 UUIDString];
        if (!v8)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v8 = String._bridgeToObjectiveC()();
        }

        v9 = [v16 servicesOfType:v8];

        if (v9 && (v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v9, v11 = sub_1000A52A4(v10), , v11))
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return;
            }

            v12 = *(v11 + 32);
          }

          v13 = v12;

          v14 = [objc_allocWithZone(DataStreamController) initWithAccessory:v16 service:v13 workQueue:*(v0 + 40)];
        }

        else
        {
          [*(v0 + v3) deRegisterFromNotifications];
          v15 = *(v0 + v3);
          [v15 invalidate];

          v14 = 0;
        }

        v2 = *(v0 + v3);
        *(v0 + v3) = v14;
      }
    }
  }
}

void sub_1000A49A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_dataStreamController);
  if (v9)
  {
    v10 = v9;
    v21 = String._bridgeToObjectiveC()();
    [v10 addBulkSendListener:a2 fileType:v21];

    v11 = v21;
  }

  else
  {
    (*(v5 + 16))(v8, a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v4);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315138;
      v16 = *(a1 + 24);
      v17 = DockCoreInfo.description.getter();
      v19 = v18;

      v20 = sub_1000952D4(v17, v19, &v22);

      *(v14 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v12, v13, "Cancelling listener registration due to no active data stream %s", v14, 0xCu);
      sub_100095808(v15);
    }

    (*(v5 + 8))(v8, v4);
  }
}

id sub_1000A4C20(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_dataStreamController);
  if (v9)
  {

    return [v9 removeBulkSendListener:a2];
  }

  else
  {
    (*(v5 + 16))(v8, a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v4);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22 = v20;
      *v13 = 136315138;
      v14 = *(a1 + 24);
      v15 = DockCoreInfo.description.getter();
      v21 = a2;
      v17 = v16;

      v18 = sub_1000952D4(v15, v17, &v22);
      a2 = v21;

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "Cancelling listener registration due to no active data stream %s", v13, 0xCu);
      sub_100095808(v20);
    }

    (*(v5 + 8))(v8, v4);
    return [a2 accessoryDidCloseDataStream:a1];
  }
}

id sub_1000A4E88@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = *(a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_dataStreamController);
  if (result)
  {
    result = [result setupRequiresCharactertisticReads];
  }

  *a2 = result;
  return result;
}

void sub_1000A4ED4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, Class isa, uint64_t a8)
{
  v20 = a2;
  v21 = a8;
  v10 = sub_100095274(&qword_1002A7018, &qword_10023C180);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v20 - v13;
  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  (*(v11 + 16))(v14, a1, v10);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v17, v14, v10);
  aBlock[4] = sub_1000A5470;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000A5218;
  aBlock[3] = &unk_100275CE8;
  v19 = _Block_copy(aBlock);

  [v20 openBulkSendSessionForFileType:v15 reason:v16 metadata:isa queue:v21 callback:v19];
  _Block_release(v19);
}

uint64_t sub_1000A5104(void *a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
LABEL_3:
    sub_100095274(&qword_1002A7018, &qword_10023C180);
    return CheckedContinuation.resume(throwing:)();
  }

  if (!a1)
  {
    v4 = type metadata accessor for Errors();
    sub_1000A5514();
    swift_allocError();
    *v5 = 0xD000000000000024;
    v5[1] = 0x800000010022F730;
    (*(*(v4 - 8) + 104))(v5, enum case for Errors.CommunicationFailure(_:), v4);
    goto LABEL_3;
  }

  v3 = a1;
  sub_100095274(&qword_1002A7018, &qword_10023C180);
  return CheckedContinuation.resume(returning:)();
}

void sub_1000A5218(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void *sub_1000A52A4(uint64_t a1)
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
    sub_100095B34(i, v6);
    sub_1000A5390();
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

unint64_t sub_1000A5390()
{
  result = qword_1002A7010;
  if (!qword_1002A7010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002A7010);
  }

  return result;
}

uint64_t sub_1000A53DC()
{
  v1 = sub_100095274(&qword_1002A7018, &qword_10023C180);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000A5470(void *a1, uint64_t a2)
{
  v4 = *(*(sub_100095274(&qword_1002A7018, &qword_10023C180) - 8) + 80);

  return sub_1000A5104(a1, a2);
}

uint64_t sub_1000A54FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000A5514()
{
  result = qword_1002A6F50;
  if (!qword_1002A6F50)
  {
    type metadata accessor for Errors();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A6F50);
  }

  return result;
}

Swift::Int sub_1000A5580()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000A55F4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000A5644(uint64_t a1, unint64_t a2)
{
  v4 = sub_100095274(&qword_1002A7138, &qword_10023C3A8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_7;
    }

    v9 = *(a1 + 16);
  }

  else if (!v8)
  {
    goto LABEL_7;
  }

  sub_1000A0CD8(a1, a2);
LABEL_7:
  Data.Iterator.init(_:at:)();
  type metadata accessor for Data.Iterator();
  sub_1000B5038(&qword_1002A7140, &type metadata accessor for Data.Iterator);
  result = dispatch thunk of IteratorProtocol.next()();
  v11 = 0;
  v12 = 0;
  if (v20)
  {
LABEL_20:
    *&v7[*(v4 + 36)] = v12;
    sub_100095C84(v7, &qword_1002A7138, &qword_10023C3A8);
    return v11;
  }

  else
  {
    v11 = 0;
    v13 = -7;
    v14 = 7;
    while (1)
    {
      v12 = v13 + 8;
      if (__OFADD__(v13 + 7, 1))
      {
        break;
      }

      v15 = v19 << v14;
      if (v14 >= 0x40)
      {
        v15 = 0;
      }

      v16 = v19 >> v13;
      if (v14 <= 0xFFFFFFFFFFFFFFC0)
      {
        v16 = 0;
      }

      if (v13 + 7 >= 8)
      {
        v17 = v16;
      }

      else
      {
        v17 = v15;
      }

      if ((v13 - 65) < 0xFFFFFFFFFFFFFF7FLL)
      {
        v17 = 0;
      }

      v11 |= v17;
      result = dispatch thunk of IteratorProtocol.next()();
      ++v13;
      --v14;
      if (v20 == 1)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000A5820@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B2F20(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000A584C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *&v0[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_clientQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_1000B5350;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100275F88;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  static DispatchQoS.unspecified.getter();
  v16 = &_swiftEmptyArrayStorage;
  sub_1000B5038(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v15);
}

void *sub_1000A5B08(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Starting Pair-setup", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  sub_1000B3CF8(0, 0xF000000000000000);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    if ([result respondsToSelector:"pairSetupSessionDidStart:"])
    {
      [v11 pairSetupSessionDidStart:a1];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000A5D58(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v1[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_clientQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1000B5348;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100275F38;
  v13 = _Block_copy(aBlock);
  v14 = v1;
  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v18 = &_swiftEmptyArrayStorage;
  sub_1000B5038(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v17);
}

void sub_1000A6020(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&qword_1002A7148, &unk_10023C3B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v42 - v6;
  v8 = sub_100095274(&unk_1002A7170, &qword_10023C3C8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v44 = &v42 - v10;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v42 - v17;
  v19 = v12[2];
  v45 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger;
  v46 = v19;
  v19(&v42 - v17, a1 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger, v11);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v43 = v7;
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Stopping Pair-setup", v22, 2u);
    v7 = v43;
  }

  v23 = v12[1];
  v23(v18, v11);
  if (*(a1 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_type) != 3)
  {
    v24 = type metadata accessor for SPAKE2.Prover();
    v25 = v44;
    (*(*(v24 - 8) + 56))(v44, 1, 1, v24);
    v26 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_prover;
    swift_beginAccess();
    sub_1000B51CC(v25, a1 + v26, &unk_1002A7170, &qword_10023C3C8);
    swift_endAccess();
    v27 = type metadata accessor for SymmetricKey();
    (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
    v28 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_sharedSecret;
    swift_beginAccess();
    sub_1000B51CC(v7, a1 + v28, &qword_1002A7148, &unk_10023C3B0);
    swift_endAccess();
  }

  if (a2)
  {
    v46(v16, a1 + v45, v11);
    swift_errorRetain();
    v29 = v16;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v46 = v23;
      v33 = v32;
      v34 = swift_slowAlloc();
      v47 = v34;
      *v33 = 136315138;
      swift_getErrorValue();
      v45 = v29;
      v35 = Error.localizedDescription.getter();
      v37 = a2;
      v38 = sub_1000952D4(v35, v36, &v47);

      *(v33 + 4) = v38;
      a2 = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "Pair-setup failed: %s", v33, 0xCu);
      sub_100095808(v34);

      (v46)(v45, v11);
    }

    else
    {

      v23(v29, v11);
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v40 = Strong;
    if ([Strong respondsToSelector:"pairSetupSession:didStopWithError:"])
    {
      if (a2)
      {
        v41 = _convertErrorToNSError(_:)();
      }

      else
      {
        v41 = 0;
      }

      [v40 pairSetupSession:a1 didStopWithError:v41];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void sub_1000A65B0()
{
  v1 = v0;
  v2 = type metadata accessor for Data.Deallocator();
  v30 = *(v2 - 8);
  v31 = v2;
  v3 = *(v30 + 64);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v1 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger, v6);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Pair-setup: M1", v13, 2u);
  }

  (*(v7 + 8))(v10, v6);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  TLV8BufferInit();
  TLV8BufferAppendUInt64();
  sub_100095274(&unk_1002AC9B0, &qword_10023C3D0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10023C170;
  v15 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_state;
  *(v14 + 32) = *(v1 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_state);
  v16 = sub_100104264(v14);
  v18 = v17;

  v19.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000A0D2C(v16, v18);
  [(objc_class *)v19.super.isa bytes];
  [(objc_class *)v19.super.isa length];
  TLV8BufferAppend();
  LODWORD(v33) = *(v1 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_flags);
  TLV8BufferAppend();
  v32 = 0;
  v33 = 0;
  TLV8BufferDetach();
  v20 = v33;
  if (v33 && (v21 = v32, v32 >= 1))
  {
    (*(v30 + 104))(v5, enum case for Data.Deallocator.free(_:), v31);
    v22 = sub_1000B35D0(v20, v21, v5);
    v24 = v23;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v26 = Strong;
      isa = Data._bridgeToObjectiveC()().super.isa;
      [v26 pairSetupSession:v1 didReceiveSetupExchangeData:isa];
      sub_1000A0D2C(v22, v24);

      swift_unknownObjectRelease();
    }

    else
    {
      sub_1000A0D2C(v22, v24);
    }

    *(v1 + v15) = 2;
    TLV8BufferFree();
  }

  else
  {
    sub_1000B4F34();
    swift_allocError();
    *v28 = 0;
    swift_willThrow();
  }
}

uint64_t sub_1000A69F8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v9 - 8);
  v10 = *(v23 + 64);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v13 = *(v22 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v22);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *&v4[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_clientQueue];
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = v4;
  v17[5] = a3;
  v17[6] = a4;
  aBlock[4] = sub_1000B52F8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100275EE8;
  v18 = _Block_copy(aBlock);
  sub_1000B4F20(a1, a2);
  v19 = v4;
  sub_1000A0CD8(a3, a4);
  static DispatchQoS.unspecified.getter();
  v24 = &_swiftEmptyArrayStorage;
  sub_1000B5038(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v23 + 8))(v12, v9);
  (*(v13 + 8))(v16, v22);
}

void *sub_1000A6CE8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v34 - v16;
  v18 = *(v11 + 16);
  v19 = a3 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger;
  if (a2 >> 60 == 15)
  {
    v18(&v34 - v16, v19, v10);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "M2: Cannot get Setup Code from user!", v22, 2u);
    }

    (*(v11 + 8))(v17, v10);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v24 = result;
      if ([result respondsToSelector:"pairSetupSessionDidReceiveInvalidSetupCode:"])
      {
        [v24 pairSetupSessionDidReceiveInvalidSetupCode:a3];
      }

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v18(v15, v19, v10);
    sub_1000A0CD8(a1, a2);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v35 = a4;
      v28 = v27;
      v29 = swift_slowAlloc();
      v37 = a3;
      v38 = v29;
      v34 = v29;
      *v28 = 136380675;
      v30 = sub_10013B46C(a1, a2);
      v36 = a5;
      v32 = a1;
      v33 = sub_1000952D4(v30, v31, &v38);
      a5 = v36;

      *(v28 + 4) = v33;
      a1 = v32;
      _os_log_impl(&_mh_execute_header, v25, v26, "M2: Got Setup Code from user: %{private}s", v28, 0xCu);
      sub_100095808(v34);

      a4 = v35;
    }

    (*(v11 + 8))(v15, v10);
    sub_1000A75DC(a1, a2, a4, a5);
    return sub_1000A452C(a1, a2);
  }

  return result;
}

void sub_1000A7060(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v57 = a1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v56 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v53 = &v48 - v11;
  __chkstk_darwin(v10);
  v13 = &v48 - v12;
  v14 = v6[2];
  v55 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger;
  v14(&v48 - v12, &v3[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger], v5);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Pair-setup: M2", v17, 2u);
  }

  v18 = v6[1];
  v18(v13, v5);
  if (a2 >> 60 != 15)
  {
    v50 = v18;
    sub_1000B4F20(v57, a2);
    v19 = sub_1000B38B8();
    v21 = v20;
    v54 = v3;
    v22 = &v3[v55];
    v23 = v53;
    v49 = v14;
    v14(v53, v22, v5);
    sub_1000A0CD8(v19, v21);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    sub_1000A0D2C(v19, v21);
    v26 = os_log_type_enabled(v24, v25);
    v51 = v19;
    v52 = v21;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v48 = a2;
      v29 = v28;
      aBlock[0] = v28;
      *v27 = 136380675;
      v30 = sub_10013B46C(v19, v21);
      v32 = sub_1000952D4(v30, v31, aBlock);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v24, v25, "M2: shareV %{private}s", v27, 0xCu);
      sub_100095808(v29);
      a2 = v48;
    }

    v33 = v50;
    v50(v23, v5);
    v34 = a2;
    v35 = Data._bridgeToObjectiveC()().super.isa;
    [(objc_class *)v35 bytes];
    [(objc_class *)v35 length];
    [(objc_class *)v35 bytes];
    UInt64 = TLV8GetUInt64();
    v49(v56, &v54[v55], v5);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 134217984;
      *(v39 + 4) = UInt64;
      _os_log_impl(&_mh_execute_header, v37, v38, "M2: flags %llu", v39, 0xCu);
    }

    v33(v56, v5);
    v40 = v54;
    v54[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_state] = 3;
    Strong = swift_unknownObjectWeakLoadStrong();
    v42 = v51;
    if (Strong)
    {
      v43 = Strong;
      v44 = swift_allocObject();
      v44[2] = v40;
      v44[3] = v42;
      v45 = v52;
      v44[4] = v52;
      aBlock[4] = sub_1000B5274;
      aBlock[5] = v44;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001B2348;
      aBlock[3] = &unk_100275E98;
      v46 = _Block_copy(aBlock);
      sub_1000A0CD8(v42, v45);
      v47 = v40;

      [v43 pairSetupSession:v47 didReceiveSetupCodeRequestWithCompletionHandler:v46];
      sub_1000A0D2C(v42, v45);
      swift_unknownObjectRelease();

      sub_1000A452C(v57, v34);
      _Block_release(v46);
    }

    else
    {
      sub_1000A0D2C(v51, v52);

      sub_1000A452C(v57, a2);
    }
  }
}

uint64_t sub_1000A8ACC(uint64_t a1, unint64_t a2)
{
  v148 = a2;
  v146 = a1;
  v3 = type metadata accessor for String.Encoding();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for SymmetricKey();
  v134 = *(v139 - 8);
  v7 = *(v134 + 64);
  __chkstk_darwin(v139);
  v132 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100095274(&qword_1002A7148, &unk_10023C3B0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v133 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v138 = &v127 - v14;
  __chkstk_darwin(v13);
  v137 = &v127 - v15;
  v16 = sub_100095274(&unk_1002A7170, &qword_10023C3C8);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v127 - v18;
  v20 = type metadata accessor for Logger();
  v21 = *(v20 - 1);
  v22 = v21[8];
  v23 = __chkstk_darwin(v20);
  v135 = &v127 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v140 = &v127 - v26;
  __chkstk_darwin(v25);
  v28 = &v127 - v27;
  v29 = v21[2];
  v149 = v2;
  v141 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger;
  v142 = v29;
  v29(&v127 - v27, &v2[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger], v20);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Pair-setup: M4", v32, 2u);
  }

  v33 = v21[1];
  v144 = (v21 + 1);
  isa = v20;
  v143 = v33;
  v33(v28, v20);
  v34 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_prover;
  v35 = v149;
  swift_beginAccess();
  sub_1000B5150(&v35[v34], v19, &unk_1002A7170, &qword_10023C3C8);
  v36 = type metadata accessor for SPAKE2.Prover();
  v37 = *(v36 - 8);
  v38 = *(v37 + 48);
  v136 = v37 + 48;
  v39 = v38(v19, 1, v36);
  result = sub_100095C84(v19, &unk_1002A7170, &qword_10023C3C8);
  if (v39 != 1)
  {
    v131 = v38;
    v41 = v148;
    if (v148 >> 60 != 15)
    {
      v127 = v6;
      v42 = v146;
      sub_1000A0CD8(v146, v148);
      v43 = Data._bridgeToObjectiveC()().super.isa;
      [(objc_class *)v43 bytes];
      [(objc_class *)v43 length];
      v152 = 0;
      v150 = 0;
      v44 = v43;
      v129 = v43;
      [(objc_class *)v44 bytes];
      TLV8Get();
      if (v152 && *v152 == 2)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v46 = Strong;
          if ([Strong respondsToSelector:"pairSetupSessionDidReceiveInvalidSetupCode:"])
          {
            [v46 pairSetupSessionDidReceiveInvalidSetupCode:v149];
          }

          swift_unknownObjectRelease();
        }

        sub_1000B4F34();
        swift_allocError();
        *v47 = 2;
        swift_willThrow();

        return sub_1000A452C(v42, v41);
      }

      v48 = sub_1000B38B8();
      v50 = v49;
      v51 = v140;
      v142(v140, &v149[v141], isa);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();
      v54 = os_log_type_enabled(v52, v53);
      v128 = v48;
      v130 = v50;
      if (v54)
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v57 = v48;
        v58 = v56;
        v151[0] = v56;
        *v55 = 136380675;
        v59 = sub_10013B46C(v57, v50);
        v61 = sub_1000952D4(v59, v60, v151);
        v62 = v147;

        *(v55 + 4) = v61;
        _os_log_impl(&_mh_execute_header, v52, v53, "M4: confirmV %{private}s", v55, 0xCu);
        sub_100095808(v58);

        v143(v140, isa);
      }

      else
      {

        v143(v51, isa);
        v62 = v147;
      }

      v63 = v138;
      v64 = v137;
      v65 = v149;
      swift_beginAccess();
      result = v131(&v65[v34], 1, v36);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        v66 = v128;
        SPAKE2.Prover.processPeerVerificationTagAndGenerateKey(peerVerificationTag:)();
        v67 = v139;
        if (v62)
        {
          swift_endAccess();
          v68 = v135;
          v69 = isa;
          v142(v135, &v65[v141], isa);
          swift_errorRetain();
          v70 = Logger.logObject.getter();
          v71 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            v151[0] = v73;
            *v72 = 136315138;
            swift_getErrorValue();
            v74 = Error.localizedDescription.getter();
            v76 = sub_1000952D4(v74, v75, v151);

            *(v72 + 4) = v76;
            v66 = v128;
            _os_log_impl(&_mh_execute_header, v70, v71, "Unable to verify confirmV and generate shared secret: %s", v72, 0xCu);
            sub_100095808(v73);
          }

          v143(v68, v69);
          sub_1000B4F34();
          swift_allocError();
          *v81 = 2;
          swift_willThrow();

          sub_1000A452C(v146, v148);

          v82 = v66;
          return sub_1000A0D2C(v82, v130);
        }

        swift_endAccess();
        v77 = v134;
        (*(v134 + 56))(v64, 0, 1, v67);
        v78 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_sharedSecret;
        swift_beginAccess();
        v79 = v65;
        sub_1000B51CC(v64, &v65[v78], &qword_1002A7148, &unk_10023C3B0);
        swift_endAccess();
        sub_1000B5150(&v65[v78], v63, &qword_1002A7148, &unk_10023C3B0);
        v80 = *(v77 + 48);
        if (v80(v63, 1, v67))
        {
          sub_100095C84(v63, &qword_1002A7148, &unk_10023C3B0);
        }

        else
        {
          v83 = v132;
          (*(v77 + 16))(v132, v63, v67);
          v84 = sub_100095C84(v63, &qword_1002A7148, &unk_10023C3B0);
          v85 = __chkstk_darwin(v84);
          *(&v127 - 2) = v65;
          __chkstk_darwin(v85);
          *(&v127 - 2) = sub_1000B51C4;
          *(&v127 - 1) = v86;
          sub_100095274(&qword_1002A7168, &qword_10023C3C0);
          SymmetricKey.withUnsafeBytes<A>(_:)();
          v67 = v139;
          (*(v77 + 8))(v83, v139);
        }

        v87 = sub_100100D58(0xD000000000000017, 0x800000010022F910);
        v89 = v88;
        v90.super.isa = Data._bridgeToObjectiveC()().super.isa;
        sub_1000A0D2C(v87, v89);
        v91 = sub_100100D58(0xD000000000000017, 0x800000010022F930);
        v93 = v92;
        isa = Data._bridgeToObjectiveC()().super.isa;
        sub_1000A0D2C(v91, v93);
        v94 = type metadata accessor for __DataStorage();
        v95 = *(v94 + 48);
        v96 = *(v94 + 52);
        swift_allocObject();
        v97 = __DataStorage.init(length:)() | 0x4000000000000000;
        v98 = &v79[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_sessionKey];
        swift_beginAccess();
        v99 = *v98;
        v100 = v98[1];
        *v98 = 0x2000000000;
        v98[1] = v97;
        sub_1000A452C(v99, v100);
        v101 = v133;
        sub_1000B5150(&v79[v78], v133, &qword_1002A7148, &unk_10023C3B0);
        v102 = v80(v101, 1, v67);
        v144 = v90.super.isa;
        if (v102)
        {
          v147 = 0;
          sub_100095C84(v101, &qword_1002A7148, &unk_10023C3B0);
        }

        else
        {
          v103 = v134;
          v104 = v132;
          (*(v134 + 16))(v132, v101, v67);
          v105 = sub_100095C84(v101, &qword_1002A7148, &unk_10023C3B0);
          v106 = __chkstk_darwin(v105);
          *(&v127 - 4) = v79;
          *(&v127 - 3) = v90.super.isa;
          *(&v127 - 2) = isa;
          __chkstk_darwin(v106);
          *(&v127 - 2) = sub_1000B51B8;
          *(&v127 - 1) = v107;
          sub_100095274(&qword_1002A7168, &qword_10023C3C0);
          SymmetricKey.withUnsafeBytes<A>(_:)();
          v147 = 0;
          (*(v103 + 8))(v104, v67);
        }

        result = sub_1000B38B8();
        v109 = v98[1];
        if (v109 >> 60 != 15)
        {
          v110 = result;
          v111 = v108;
          v112 = *v98;
          sub_1000B4F20(v112, v109);
          v113 = sub_1000B3A90(v110, v111);
          v115 = v114;
          sub_1000A452C(v112, v109);
          v116 = sub_1000B38B8();
          v118 = v116;
          v119 = v117;
          if ((*&v149[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_type] & 0xFFFFFFFFFFFFFFFELL) == 2)
          {
            v149[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_state] = 7;
            sub_1000A5D58(0);

            sub_1000A452C(v146, v148);
            sub_1000A0D2C(v118, v119);
            sub_1000A0D2C(v113, v115);
            sub_1000A0D2C(v110, v111);

            return sub_1000A0D2C(v128, v130);
          }

          v149[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_state] = 5;
          v120 = v117 >> 62;
          if ((v117 >> 62) > 1)
          {
            if (v120 != 2)
            {
              goto LABEL_44;
            }

            v121 = *(v116 + 16);
            v122 = *(v116 + 24);
          }

          else
          {
            if (!v120)
            {
              if ((v117 & 0xFF000000000000) == 0)
              {
                goto LABEL_44;
              }

LABEL_38:
              static String.Encoding.utf8.getter();
              String.init(data:encoding:)();
              if (v123)
              {
                v124 = swift_unknownObjectWeakLoadStrong();
                if (v124)
                {
                  v125 = v124;
                  if ([v124 respondsToSelector:"pairSetupSession:didReceiveProductData:"])
                  {
                    v126 = String._bridgeToObjectiveC()();

                    [v125 pairSetupSession:v149 didReceiveProductData:v126];
                    swift_unknownObjectRelease();
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

              goto LABEL_44;
            }

            v121 = v116;
            v122 = v116 >> 32;
          }

          if (v121 != v122)
          {
            goto LABEL_38;
          }

LABEL_44:
          sub_1000AA754();

          sub_1000A452C(v146, v148);
          sub_1000A0D2C(v118, v119);
          sub_1000A0D2C(v113, v115);
          sub_1000A0D2C(v110, v111);

          v82 = v128;
          return sub_1000A0D2C(v82, v130);
        }
      }

      __break(1u);
    }
  }

  return result;
}

_BYTE *sub_1000A9B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = __chkstk_darwin(a1);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (result)
  {
    v12 = sub_1000B3808(result, a2 - result);
    v14 = v13;
    (*(v7 + 16))(v11, a3 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger, v6);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136380675;
      v19 = sub_10013B46C(v12, v14);
      v22 = v14;
      v21 = sub_1000952D4(v19, v20, &v23);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "M4: Spake2+ Secret %{private}s", v17, 0xCu);
      sub_100095808(v18);

      sub_1000A0D2C(v12, v22);
    }

    else
    {
      sub_1000A0D2C(v12, v14);
    }

    return (*(v7 + 8))(v11, v6);
  }

  return result;
}

void sub_1000A9D14(int a1, int a2, char *a3, void *a4, char *a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &a3[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_sessionKey];
  swift_beginAccess();
  if (v15[1] >> 60 == 15)
  {
    __break(1u);
LABEL_8:

    __break(1u);
    return;
  }

  sub_1000B1128(v15, a1, a2, a4, a5);
  swift_endAccess();
  (*(v11 + 16))(v14, &a3[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger], v10);
  a5 = a3;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v28 = v10;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v29[0] = v19;
    *v18 = 136380675;
    v20 = v15[1];
    if (v20 >> 60 != 15)
    {
      v21 = v19;
      v22 = *v15;
      sub_1000A0CD8(v22, v20);

      v23 = sub_10013B46C(v22, v20);
      v25 = v24;
      sub_1000A452C(v22, v20);
      v26 = sub_1000952D4(v23, v25, v29);

      *(v18 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v16, v17, "M4: SessionKey %{private}s", v18, 0xCu);
      sub_100095808(v21);

      (*(v11 + 8))(v14, v28);
      return;
    }

    goto LABEL_8;
  }

  (*(v11 + 8))(v14, v10);
}

uint64_t sub_1000A9FB8(void *a1, uint64_t a2, unint64_t a3)
{
  v48 = a2;
  v52 = a3;
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v57, 0, sizeof(v57));
  TLV8BufferInit();
  v9 = [a1 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static String.Encoding.utf8.getter();
  v10 = String.data(using:allowLossyConversion:)();
  v12 = v11;

  v50 = *(v5 + 8);
  v51 = v4;
  v50(v8, v4);
  if (v12 >> 60 != 15)
  {
    v13 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v13 != 2)
      {
        memset(v56, 0, 14);
        goto LABEL_15;
      }

      v14 = *(v10 + 16);
      v15 = *(v10 + 24);
      if (__DataStorage._bytes.getter() && __OFSUB__(v14, __DataStorage._offset.getter()))
      {
        goto LABEL_54;
      }

      if (__OFSUB__(v15, v14))
      {
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }
    }

    else
    {
      if (!v13)
      {
        v56[0] = v10;
        LOWORD(v56[1]) = v12;
        BYTE2(v56[1]) = BYTE2(v12);
        BYTE3(v56[1]) = BYTE3(v12);
        BYTE4(v56[1]) = BYTE4(v12);
        BYTE5(v56[1]) = BYTE5(v12);
LABEL_15:
        TLV8BufferAppend();
        sub_1000A452C(v10, v12);
        goto LABEL_16;
      }

      if (v10 >> 32 < v10)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v10, __DataStorage._offset.getter()))
      {
        goto LABEL_55;
      }
    }

    __DataStorage._length.getter();
    goto LABEL_15;
  }

LABEL_16:
  v16 = [a1 publicKey];
  v17 = [v16 data];

  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    if (v21 != 2)
    {
      memset(v56, 0, 14);
      goto LABEL_29;
    }

    v22 = *(v18 + 16);
    v23 = *(v18 + 24);
    if (__DataStorage._bytes.getter() && __OFSUB__(v22, __DataStorage._offset.getter()))
    {
      goto LABEL_49;
    }

    if (!__OFSUB__(v23, v22))
    {
      __DataStorage._length.getter();
      goto LABEL_29;
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (!v21)
  {
    v56[0] = v18;
    LOWORD(v56[1]) = v20;
    BYTE2(v56[1]) = BYTE2(v20);
    BYTE3(v56[1]) = BYTE3(v20);
    BYTE4(v56[1]) = BYTE4(v20);
    BYTE5(v56[1]) = BYTE5(v20);
LABEL_29:
    TLV8BufferAppend();
    sub_1000A0D2C(v18, v20);
    v24 = v52;
    goto LABEL_30;
  }

  if (v18 >> 32 < v18)
  {
    __break(1u);
    goto LABEL_47;
  }

  if (__DataStorage._bytes.getter() && __OFSUB__(v18, __DataStorage._offset.getter()))
  {
    goto LABEL_50;
  }

  v24 = v52;
  __DataStorage._length.getter();
  TLV8BufferAppend();
  sub_1000A0D2C(v18, v20);
LABEL_30:
  v25 = v24 >> 62;
  if ((v24 >> 62) <= 1)
  {
    if (!v25)
    {
      v56[0] = v48;
      LOWORD(v56[1]) = v24;
      BYTE2(v56[1]) = BYTE2(v24);
      BYTE3(v56[1]) = BYTE3(v24);
      BYTE4(v56[1]) = BYTE4(v24);
      BYTE5(v56[1]) = BYTE5(v24);
      goto LABEL_43;
    }

    goto LABEL_38;
  }

  if (v25 == 2)
  {
    v26 = *(v48 + 16);
    if (!__DataStorage._bytes.getter() || !__OFSUB__(v26, __DataStorage._offset.getter()))
    {
      goto LABEL_41;
    }

    __break(1u);
LABEL_38:
    v27 = v48;
    if (v48 <= v48 >> 32)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v27, __DataStorage._offset.getter()))
      {
LABEL_41:
        __DataStorage._length.getter();
        goto LABEL_43;
      }

      goto LABEL_51;
    }

    goto LABEL_48;
  }

  memset(v56, 0, 14);
LABEL_43:
  TLV8BufferAppend();
  static String.Encoding.utf8.getter();
  v28 = String.data(using:allowLossyConversion:)();
  v30 = v29;
  v50(v8, v51);
  if (v30 >> 60 == 15)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
  }

  v31.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000A452C(v28, v30);
  v32 = (v49 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_sessionKey);
  swift_beginAccess();
  v33 = v32[1];
  if (v33 >> 60 == 15)
  {
    goto LABEL_57;
  }

  v34 = *v32;
  sub_1000A0CD8(v34, v33);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000A452C(v34, v33);
  v55[0] = sub_1000B2E80(v57[1]);
  v55[1] = v36;
  v37 = type metadata accessor for __DataStorage();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v40 = __DataStorage.init(length:)();
  v53 = 0x1000000000;
  v54 = v40 | 0x4000000000000000;
  v41 = isa;
  v42 = v31.super.isa;
  sub_1000B0130(v55, &v53, v41, v42, v57);
  v43 = v53;
  v44 = v54;
  Data.append(_:)();
  TLV8BufferFree();

  v45 = v55[0];
  sub_1000A0D2C(v43, v44);
  return v45;
}

uint64_t sub_1000AA754()
{
  v1 = v0;
  v2 = type metadata accessor for Data.Deallocator();
  v118 = *(v2 - 8);
  v119 = v2;
  v3 = *(v118 + 64);
  __chkstk_darwin(v2);
  v117 = v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for SymmetricKey();
  v129 = *(v135 - 1);
  v5 = *(v129 + 64);
  __chkstk_darwin(v135);
  v116 = v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.Encoding();
  isa = *(v7 - 1);
  v126 = v7;
  v8 = *(isa + 8);
  __chkstk_darwin(v7);
  v124 = v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100095274(&qword_1002A7148, &unk_10023C3B0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v123 = v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v114 - v14;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = __chkstk_darwin(v16);
  v21 = v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v127 = v114 - v23;
  v24 = __chkstk_darwin(v22);
  v120 = v114 - v25;
  __chkstk_darwin(v24);
  v27 = v114 - v26;
  v28 = v17[2];
  v130 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger;
  v131 = v28;
  v132 = v17 + 2;
  v28(v114 - v26, &v1[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger], v16);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  v31 = os_log_type_enabled(v29, v30);
  v128 = v21;
  if (v31)
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Pair-setup: M5", v32, 2u);
    v21 = v128;
  }

  v133 = v17[1];
  v134 = v17 + 1;
  v133(v27, v16);
  v33 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_sharedSecret;
  swift_beginAccess();
  v122 = v33;
  sub_1000B5150(&v1[v33], v15, &qword_1002A7148, &unk_10023C3B0);
  v121 = *(v129 + 48);
  LODWORD(v33) = v121(v15, 1, v135);
  sub_100095C84(v15, &qword_1002A7148, &unk_10023C3B0);
  if (v33 == 1)
  {
    v34 = v127;
    v131(v127, &v1[v130], v16);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Unable to retreive shared secret key!", v37, 2u);
    }

    return (v133)(v34, v16);
  }

  v127 = v16;
  v39 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v64 = v120;
    v65 = v127;
    v131(v120, &v1[v130], v127);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v66, v67, "Unable to retrieve pair-setup identifier from accessory server!", v68, 2u);
    }

    v133(v64, v65);
    sub_1000B4F34();
    swift_allocError();
    *v69 = 1;
    swift_willThrow();
    goto LABEL_37;
  }

  v139[0] = 0;
  v41 = [Strong pairSetupSession:v1 didReceiveLocalPairingIdentityRequestWithError:v139];
  swift_unknownObjectRelease();
  v42 = v139[0];
  v115 = v41;
  if (!v41)
  {
    v70 = v139[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v65 = v127;
    goto LABEL_37;
  }

  v114[1] = v39;
  v120 = v1;
  v43 = type metadata accessor for __DataStorage();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  v114[0] = v43;
  swift_allocObject();
  v46 = v42;
  v47 = __DataStorage.init(length:)();
  v140 = 0x2000000000;
  v141 = v47 | 0x4000000000000000;
  v48 = v124;
  static String.Encoding.utf8.getter();
  v49 = String.data(using:allowLossyConversion:)();
  v51 = v50;
  v52 = v126;
  v53 = *(isa + 1);
  result = v53(v48, v126);
  if (v51 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_48;
  }

  v54.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000A452C(v49, v51);
  static String.Encoding.utf8.getter();
  v55 = String.data(using:allowLossyConversion:)();
  v57 = v56;
  result = v53(v48, v52);
  if (v57 >> 60 == 15)
  {
LABEL_48:
    __break(1u);
    return result;
  }

  isa = v54.super.isa;
  v58.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000A452C(v55, v57);
  v59 = v123;
  sub_1000B5150(&v120[v122], v123, &qword_1002A7148, &unk_10023C3B0);
  v60 = v135;
  v61 = v121(v59, 1, v135);
  v62 = v115;
  v126 = v58.super.isa;
  if (v61)
  {
    sub_100095C84(v59, &qword_1002A7148, &unk_10023C3B0);
    v63 = v136;
  }

  else
  {
    v71 = v129;
    v72 = v116;
    (*(v129 + 16))(v116, v59, v60);
    v73 = sub_100095C84(v59, &qword_1002A7148, &unk_10023C3B0);
    v74 = __chkstk_darwin(v73);
    v114[-4] = &v140;
    v114[-3] = isa;
    v114[-2] = v58.super.isa;
    v114[-1] = v62;
    __chkstk_darwin(v74);
    v114[-2] = sub_1000B5144;
    v114[-1] = v75;
    sub_100095274(&qword_1002A7168, &qword_10023C3C0);
    v76 = v136;
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v63 = v76;
    (*(v71 + 8))(v72, v60);
  }

  v77 = *(v114[0] + 48);
  v78 = *(v114[0] + 52);
  swift_allocObject();
  v79 = __DataStorage.init(length:)();
  v80.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v139[0] = 0x4000000000;
  v139[1] = v79;
  v81 = v80.super.isa;
  v82 = v62;
  v135 = v81;
  sub_1000B2CF0(v139, v81, v82);
  v136 = v63;
  v84 = v139[1];
  v83 = v139[0];
  memset(v139, 0, 336);
  TLV8BufferInit();
  v85 = v83;
  v86 = v120;
  v87 = sub_1000A9FB8(v82, v85, v84 | 0x4000000000000000);
  v89 = v88;
  v129 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_state;
  LOBYTE(v138[0]) = v86[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_state];
  TLV8BufferAppend();
  v90 = v89 >> 62;
  if ((v89 >> 62) > 1)
  {
    v91 = isa;
    if (v90 != 2)
    {
      memset(v138, 0, 14);
      goto LABEL_31;
    }

    v124 = v84;
    v92 = *(v87 + 16);
    v93 = *(v87 + 24);
    if (__DataStorage._bytes.getter() && __OFSUB__(v92, __DataStorage._offset.getter()))
    {
      goto LABEL_45;
    }

    if (!__OFSUB__(v93, v92))
    {
      __DataStorage._length.getter();
      TLV8BufferAppend();
      v84 = v124;
      v91 = isa;
      goto LABEL_32;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v91 = isa;
  if (v90)
  {
    if (v87 >> 32 >= v87)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v87, __DataStorage._offset.getter()))
      {
        __DataStorage._length.getter();
        TLV8BufferAppend();
        v91 = isa;
        goto LABEL_32;
      }

LABEL_46:
      __break(1u);
    }

    __break(1u);
    goto LABEL_44;
  }

  v138[0] = v87;
  LOWORD(v138[1]) = v89;
  BYTE2(v138[1]) = BYTE2(v89);
  BYTE3(v138[1]) = BYTE3(v89);
  BYTE4(v138[1]) = BYTE4(v89);
  BYTE5(v138[1]) = BYTE5(v89);
LABEL_31:
  TLV8BufferAppend();
LABEL_32:
  v138[0] = 0;
  v137 = 0;
  TLV8BufferDetach();
  v94 = v138[0];
  if (v138[0])
  {
    v95 = v137;
    if (v137 >= 1)
    {
      v124 = v84;
      v96 = v117;
      (*(v118 + 104))(v117, enum case for Data.Deallocator.free(_:), v119);
      v97 = sub_1000B35D0(v94, v95, v96);
      v99 = v98;
      v100 = v120;
      v101 = swift_unknownObjectWeakLoadStrong();
      if (v101)
      {
        v102 = v101;
        v103 = Data._bridgeToObjectiveC()().super.isa;
        [v102 pairSetupSession:v100 didReceiveSetupExchangeData:v103];
        sub_1000A0D2C(v97, v99);

        swift_unknownObjectRelease();
      }

      else
      {
        sub_1000A0D2C(v97, v99);
      }

      v100[v129] = 6;
      TLV8BufferFree();

      sub_1000A0D2C(v87, v89);

      return sub_1000A0D2C(v140, v141);
    }
  }

  sub_1000B4F34();
  swift_allocError();
  *v104 = 0;
  swift_willThrow();

  sub_1000A0D2C(v87, v89);

  sub_1000A0D2C(v140, v141);
  v65 = v127;
  v21 = v128;
  v1 = v120;
LABEL_37:
  v131(v21, &v1[v130], v65);
  swift_errorRetain();
  v105 = Logger.logObject.getter();
  v106 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    v136 = 0;
    v108 = v107;
    v109 = swift_slowAlloc();
    v139[0] = v109;
    *v108 = 136315138;
    swift_getErrorValue();
    v110 = Error.localizedDescription.getter();
    v112 = sub_1000952D4(v110, v111, v139);

    *(v108 + 4) = v112;
    _os_log_impl(&_mh_execute_header, v105, v106, "Pair-setup: M5: Unable to retrieve pairing identity: %s", v108, 0xCu);
    sub_100095808(v109);

    v113 = v128;
  }

  else
  {

    v113 = v21;
  }

  return (v133)(v113, v65);
}

uint64_t sub_1000AB620(int a1, int a2, uint64_t *a3, void *a4, void *a5, void *a6)
{
  v12 = type metadata accessor for String.Encoding();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000B0AEC(a3, a1, a2, a4, a5);
  v17 = [a6 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static String.Encoding.utf8.getter();
  v18 = String.data(using:allowLossyConversion:)();
  v20 = v19;

  result = (*(v13 + 8))(v16, v12);
  if (v20 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    Data.append(_:)();
    sub_1000A452C(v18, v20);
    v22 = [a6 publicKey];
    v23 = [v22 data];

    v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    Data.append(_:)();
    return sub_1000A0D2C(v24, v26);
  }

  return result;
}

id sub_1000AB818(id result, uint64_t a2, void *a3, void *a4)
{
  if (result)
  {
    result = ccsha512_di();
    if (result)
    {
      [a3 length];
      [a3 bytes];
      v6 = [a4 publicKey];
      result = [v6 data];
      if (result)
      {
        v7 = result;

        [v7 bytes];
        v8 = v7;
        result = [a4 privateKey];
        if (result)
        {
          v9 = result;
          result = [result data];
          if (result)
          {
            v10 = result;

            [v10 bytes];
            v11 = v10;
            return cced25519_sign();
          }

LABEL_11:
          __break(1u);
          return result;
        }

LABEL_10:
        __break(1u);
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1000AB978(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for String.Encoding();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v159 = &v148 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = type metadata accessor for SymmetricKey();
  v165 = *(v166 - 1);
  v8 = v165[8];
  __chkstk_darwin(v166);
  v162 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100095274(&qword_1002A7148, &unk_10023C3B0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v164 = (&v148 - v12);
  v13 = type metadata accessor for Logger();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v170 = (&v148 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __chkstk_darwin(v15);
  v163 = &v148 - v18;
  v19 = __chkstk_darwin(v17);
  v167 = (&v148 - v20);
  v21 = __chkstk_darwin(v19);
  v168 = &v148 - v22;
  __chkstk_darwin(v21);
  v24 = &v148 - v23;
  v26 = v25;
  v27 = v25 + 16;
  v172 = *(v25 + 16);
  v173 = v2;
  v171 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger;
  v172(&v148 - v23, v2 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger, v13);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Pair-setup: M6", v30, 2u);
  }

  v33 = *(v26 + 8);
  v32 = v26 + 8;
  v31 = v33;
  result = (v33)(v24, v13);
  if (a2 >> 60 != 15)
  {
    v160 = v31;
    v161 = v32;
    sub_1000A0CD8(a1, a2);
    v169 = a2;
    v35 = Data._bridgeToObjectiveC()().super.isa;
    [(objc_class *)v35 bytes];
    [(objc_class *)v35 length];
    v180 = 0;
    v175 = 0;
    [(objc_class *)v35 bytes];
    TLV8Get();
    v36 = v180;
    if (v180 && *v180)
    {
      v37 = a1;
      v38 = v168;
      v172(v168, v173 + v171, v13);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 16777472;
        v41[4] = *v36;
        _os_log_impl(&_mh_execute_header, v39, v40, "Pair-setup M6 bad status %hhu", v41, 5u);
      }

      v160(v38, v13);
      sub_1000B4F34();
      v42 = swift_allocError();
      *v43 = 1;
      v174 = v42;
      swift_willThrow();

      return sub_1000A452C(v37, v169);
    }

    v168 = v13;
    v44 = sub_1000B38B8();
    v46 = v44;
    v47 = v45;
    v48 = v45 >> 62;
    if ((v45 >> 62) <= 1)
    {
      v49 = v170;
      if (!v48)
      {
        if (BYTE6(v45) >= 0x10uLL)
        {
LABEL_22:
          v157 = v27;
          v152 = v35;
          v59 = v173 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_sessionKey;
          result = swift_beginAccess();
          v60 = *(v59 + 8);
          if (v60 >> 60 == 15)
          {
            __break(1u);
            goto LABEL_61;
          }

          v61 = *v59;
          sub_1000B4F20(*v59, *(v59 + 8));
          v150 = v47;
          v62 = sub_1000B3A90(v46, v47);
          v64 = v63;
          sub_1000A452C(v61, v60);
          v65 = sub_1000B38B8();
          v154 = v46;
          v66 = v65;
          v68 = v67;
          v69 = sub_1000B38B8();
          v71 = v70;
          v148 = v62;
          v149 = v64;
          v72 = sub_1000B38B8();
          v74 = v73;
          isa = Data._bridgeToObjectiveC()().super.isa;
          v75 = v74;
          v76 = v66;
          sub_1000A0D2C(v72, v75);
          v77 = v167;
          v172(v167, v173 + v171, v168);
          sub_1000A0CD8(v76, v68);
          sub_1000A0CD8(v69, v71);
          v78 = Logger.logObject.getter();
          v79 = static os_log_type_t.default.getter();
          v80 = v68;
          sub_1000A0D2C(v76, v68);
          v81 = v69;
          v82 = v69;
          v83 = v71;
          sub_1000A0D2C(v82, v71);
          v84 = os_log_type_enabled(v78, v79);
          v170 = v71;
          v151 = a1;
          v153 = v81;
          v155 = v80;
          v158 = v76;
          if (v84)
          {
            v85 = swift_slowAlloc();
            v177[0] = swift_slowAlloc();
            *v85 = 136380931;
            v86 = sub_10013B46C(v76, v80);
            v88 = sub_1000952D4(v86, v87, v177);

            *(v85 + 4) = v88;
            *(v85 + 12) = 2081;
            v89 = sub_10013B46C(v81, v83);
            v91 = sub_1000952D4(v89, v90, v177);

            *(v85 + 14) = v91;
            v92 = v173;
            _os_log_impl(&_mh_execute_header, v78, v79, "Pair-setup M6 [identifier= %{private}s publicKey=%{private}s]", v85, 0x16u);
            swift_arrayDestroy();

            v160(v167, v168);
            v46 = v165;
          }

          else
          {

            v160(v77, v168);
            v46 = v165;
            v92 = v173;
          }

          v93 = type metadata accessor for __DataStorage();
          v94 = *(v93 + 48);
          v95 = *(v93 + 52);
          swift_allocObject();
          v96 = __DataStorage.init(length:)();
          v178 = 0x2000000000;
          v179 = v96 | 0x4000000000000000;
          v97 = sub_100100D58(0xD00000000000001ELL, 0x800000010022F890);
          v99 = v98;
          v35 = Data._bridgeToObjectiveC()().super.isa;
          sub_1000A0D2C(v97, v99);
          v100 = sub_100100D58(0xD00000000000001ELL, 0x800000010022F8B0);
          v102 = v101;
          v49 = Data._bridgeToObjectiveC()().super.isa;
          sub_1000A0D2C(v100, v102);
          v103 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_sharedSecret;
          swift_beginAccess();
          v104 = v92 + v103;
          v55 = v164;
          sub_1000B5150(v104, v164, &qword_1002A7148, &unk_10023C3B0);
          v54 = v166;
          v105 = v46[6](v55, 1, v166);
          v47 = isa;
          v167 = v35;
          v165 = v49;
          if (v105)
          {
            sub_100095C84(v55, &qword_1002A7148, &unk_10023C3B0);
            v106 = v153;
            goto LABEL_33;
          }

LABEL_32:
          v109 = v162;
          v46[2](v162, v55, v54);
          v110 = sub_100095C84(v55, &qword_1002A7148, &unk_10023C3B0);
          v111 = __chkstk_darwin(v110);
          *(&v148 - 8) = &v178;
          *(&v148 - 7) = v35;
          v112 = v158;
          *(&v148 - 6) = v49;
          *(&v148 - 5) = v112;
          v106 = v153;
          *(&v148 - 4) = v155;
          *(&v148 - 3) = v106;
          *(&v148 - 2) = v170;
          __chkstk_darwin(v111);
          *(&v148 - 2) = sub_1000B5110;
          *(&v148 - 1) = v113;
          sub_100095274(&qword_1002A7168, &qword_10023C3C0);
          v114 = v174;
          SymmetricKey.withUnsafeBytes<A>(_:)();
          v174 = v114;
          (v46[1])(v109, v54);
LABEL_33:
          v115.super.isa = Data._bridgeToObjectiveC()().super.isa;
          v116.super.isa = Data._bridgeToObjectiveC()().super.isa;
          result = ccsha512_di();
          if (result)
          {
            [(objc_class *)v116.super.isa length];
            [(objc_class *)v116.super.isa bytes];
            [(objc_class *)v47 bytes];
            [(objc_class *)v115.super.isa bytes];
            if (cced25519_verify())
            {
              sub_1000B4F34();
              v117 = swift_allocError();
              *v118 = 2;
              v174 = v117;
              swift_willThrow();

              sub_1000A0D2C(v158, v155);
              sub_1000A0D2C(v106, v170);

              sub_1000A0D2C(v148, v149);
              sub_1000A0D2C(v154, v150);
              sub_1000A452C(v151, v169);
            }

            else
            {
              v166 = v115.super.isa;
              v121 = v163;
              v122 = v168;
              v172(v163, v173 + v171, v168);
              v123 = Logger.logObject.getter();
              v124 = static os_log_type_t.default.getter();
              v125 = os_log_type_enabled(v123, v124);
              v126 = v154;
              v127 = v155;
              if (v125)
              {
                v128 = swift_slowAlloc();
                *v128 = 0;
                _os_log_impl(&_mh_execute_header, v123, v124, "Pair-setup M6 pairing complete!", v128, 2u);
                v121 = v163;
              }

              v160(v121, v122);
              *(v173 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_state) = 7;
              v129 = objc_allocWithZone(HMFPairingKey);
              v130 = v170;
              sub_1000A0CD8(v106, v170);
              v131 = Data._bridgeToObjectiveC()().super.isa;
              v132 = [v129 initWithPairingKeyData:v131];

              sub_1000A0D2C(v106, v130);
              if (v132)
              {
                static String.Encoding.utf8.getter();
                v133 = v158;
                String.init(data:encoding:)();
                if (v134)
                {
                  v135 = objc_allocWithZone(HAPPairingIdentity);
                  v136 = v132;
                  v137 = String._bridgeToObjectiveC()();

                  v138 = [v135 initWithIdentifier:v137 publicKey:v136 privateKey:0];

                  v139 = v173;
                  Strong = swift_unknownObjectWeakLoadStrong();
                  if (Strong)
                  {
                    v176 = 0;
                    v141 = [Strong pairSetupSession:v139 didPairWithPeer:v138 error:&v176];
                    swift_unknownObjectRelease();
                    v142 = v149;
                    if (v141)
                    {
                      v143 = v176;
                    }

                    else
                    {
                      v147 = v176;
                      _convertNSErrorToError(_:)();

                      swift_willThrow();

                      v174 = 0;
                    }

                    v146 = v154;
                  }

                  else
                  {
                    v146 = v154;
                    v142 = v149;
                  }

                  sub_1000A5D58(0);

                  sub_1000A0D2C(v158, v127);
                  sub_1000A0D2C(v106, v170);

                  sub_1000A0D2C(v148, v142);
                  sub_1000A0D2C(v146, v150);
                  sub_1000A452C(v151, v169);
                }

                else
                {

                  sub_1000A0D2C(v133, v127);
                  sub_1000A0D2C(v106, v170);

                  sub_1000A0D2C(v148, v149);
                  sub_1000A0D2C(v126, v150);
                  sub_1000A452C(v151, v169);
                }
              }

              else
              {

                sub_1000A0D2C(v158, v127);
                sub_1000A0D2C(v106, v130);

                sub_1000A0D2C(v148, v149);
                sub_1000A0D2C(v126, v150);
                sub_1000A452C(v151, v169);
              }
            }

            v119 = v178;
            v120 = v179;
            return sub_1000A0D2C(v119, v120);
          }

LABEL_61:
          __break(1u);
          return result;
        }

        goto LABEL_16;
      }

      if (!__OFSUB__(HIDWORD(v44), v44))
      {
        if (HIDWORD(v44) - v44 >= 16)
        {
          goto LABEL_22;
        }

        goto LABEL_16;
      }

LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v49 = v170;
    if (v48 == 2)
    {
      v51 = *(v44 + 16);
      v50 = *(v44 + 24);
      v52 = __OFSUB__(v50, v51);
      v53 = v50 - v51;
      if (v52)
      {
        __break(1u);
        goto LABEL_58;
      }

      if (v53 >= 16)
      {
        goto LABEL_22;
      }
    }

LABEL_16:
    v54 = a1;
    v172(v49, v173 + v171, v168);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v55, v56))
    {
LABEL_48:

      v160(v49, v168);
      sub_1000B4F34();
      v144 = swift_allocError();
      *v145 = 2;
      v174 = v144;
      swift_willThrow();

      sub_1000A452C(v54, v169);
      v119 = v46;
      v120 = v47;
      return sub_1000A0D2C(v119, v120);
    }

    v57 = swift_slowAlloc();
    *v57 = 134217984;
    if (v48 > 1)
    {
      if (v48 == 2)
      {
        v108 = v46[2];
        v107 = v46[3];
        v52 = __OFSUB__(v107, v108);
        v58 = v107 - v108;
        if (v52)
        {
          __break(1u);
          goto LABEL_32;
        }
      }

      else
      {
        v58 = 0;
      }

      goto LABEL_47;
    }

    if (!v48)
    {
      v58 = BYTE6(v47);
LABEL_47:
      *(v57 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v55, v56, "Pair-setup M6 invalid encrypted data length: %ld", v57, 0xCu);

      goto LABEL_48;
    }

    LODWORD(v58) = HIDWORD(v46) - v46;
    if (!__OFSUB__(HIDWORD(v46), v46))
    {
      v58 = v58;
      goto LABEL_47;
    }

LABEL_59:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000ACB98(int a1, int a2, uint64_t *a3, void *a4, void *a5)
{
  sub_1000B0AEC(a3, a1, a2, a4, a5);
  Data.append(_:)();
  return Data.append(_:)();
}

void sub_1000ACC3C(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_state;
  v12 = a1[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_state];
  if (!a1[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_state])
  {
    v12 = 1;
    a1[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_state] = 1;
  }

  if (a3 >> 60 == 15)
  {
    goto LABEL_7;
  }

  v20 = v8;
  v13 = Data._bridgeToObjectiveC()().super.isa;
  [(objc_class *)v13 bytes];
  [(objc_class *)v13 length];
  v22 = 0;
  v21 = 0;
  [(objc_class *)v13 bytes];
  TLV8Get();
  if (!v22 || *v22 == a1[v11])
  {

    v12 = a1[v11];
LABEL_7:
    if (v12 > 3)
    {
      if (v12 == 4)
      {
        sub_1000A8ACC(a2, a3);
      }

      else if (v12 == 6)
      {
        sub_1000AB978(a2, a3);
      }
    }

    else if (v12 == 1)
    {
      sub_1000A65B0();
    }

    else if (v12 == 2)
    {
      sub_1000A7060(a2, a3);
    }

    return;
  }

  v14 = v20;
  (*(v20 + 16))(v10, &a1[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger], v6);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 16777472;
    v18[4] = a1[v11];

    _os_log_impl(&_mh_execute_header, v16, v17, "Exchange data received in invalid state: %hhu", v18, 5u);

    v15 = v13;
  }

  else
  {

    v16 = v13;
  }

  (*(v14 + 8))(v10, v6);
}

uint64_t sub_1000AD028()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v31 = *(v6 - 8);
  v32 = v6;
  v7 = *(v31 + 64);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100095274(&qword_1002A7148, &unk_10023C3B0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v31 - v12;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, &v1[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger], v14);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Split pair setup done.", v21, 2u);
  }

  (*(v15 + 8))(v18, v14);
  v22 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_sharedSecret;
  swift_beginAccess();
  sub_1000B5150(&v1[v22], v13, &qword_1002A7148, &unk_10023C3B0);
  v23 = type metadata accessor for SymmetricKey();
  v24 = (*(*(v23 - 8) + 48))(v13, 1, v23);
  result = sub_100095C84(v13, &qword_1002A7148, &unk_10023C3B0);
  if (v24 != 1)
  {
    v26 = *&v1[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_clientQueue];
    v27 = swift_allocObject();
    *(v27 + 16) = v1;
    aBlock[4] = sub_1000B5018;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100147FC8;
    aBlock[3] = &unk_100275E48;
    v28 = _Block_copy(aBlock);
    v29 = v1;
    static DispatchQoS.unspecified.getter();
    v35 = &_swiftEmptyArrayStorage;
    sub_1000B5038(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
    sub_100095274(&unk_1002A6B60, qword_10023AE10);
    sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
    v30 = v34;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v28);
    (*(v33 + 8))(v5, v30);
    (*(v31 + 8))(v9, v32);
  }

  return result;
}

uint64_t sub_1000AD4EC(uint64_t a1)
{
  v61 = 0;
  v2 = type metadata accessor for SymmetricKey();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v60 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100095274(&qword_1002A7148, &unk_10023C3B0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v59 - v11;
  v13 = sub_100100D58(0x74655374696C7053, 0xEE00746C61537075);
  v15 = v14;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000A0D2C(v13, v15);
  v16 = sub_100100D58(0xD000000000000018, 0x800000010022F850);
  v18 = v17;
  v19.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000A0D2C(v16, v18);
  v20 = sub_100100D58(0xD000000000000019, 0x800000010022F870);
  v22 = v21;
  v62 = Data._bridgeToObjectiveC()().super.isa;
  v23 = v20;
  v24 = v3;
  sub_1000A0D2C(v23, v22);
  v25 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_sharedSecret;
  swift_beginAccess();
  sub_1000B5150(a1 + v25, v12, &qword_1002A7148, &unk_10023C3B0);
  v26 = *(v3 + 48);
  v27 = v26(v12, 1, v2);
  v63 = v19.super.isa;
  if (v27)
  {
    sub_100095C84(v12, &qword_1002A7148, &unk_10023C3B0);
    v28 = v60;
  }

  else
  {
    v29 = *(v3 + 16);
    v59 = a1;
    v30 = v60;
    v29(v60, v12, v2);
    v31 = sub_100095C84(v12, &qword_1002A7148, &unk_10023C3B0);
    v32 = __chkstk_darwin(v31);
    v33 = isa;
    *(&v59 - 4) = v59;
    *(&v59 - 3) = v33;
    *(&v59 - 2) = v19.super.isa;
    __chkstk_darwin(v32);
    *(&v59 - 2) = sub_1000B50E8;
    *(&v59 - 1) = v34;
    sub_100095274(&qword_1002A7168, &qword_10023C3C0);
    v28 = v30;
    SymmetricKey.withUnsafeBytes<A>(_:)();
    (*(v3 + 8))(v30, v2);
    a1 = v59;
  }

  sub_1000B5150(a1 + v25, v10, &qword_1002A7148, &unk_10023C3B0);
  v35 = v26(v10, 1, v2);
  v36 = a1;
  v37 = v62;
  if (v35)
  {
    sub_100095C84(v10, &qword_1002A7148, &unk_10023C3B0);
  }

  else
  {
    (*(v24 + 16))(v28, v10, v2);
    v38 = sub_100095C84(v10, &qword_1002A7148, &unk_10023C3B0);
    v39 = __chkstk_darwin(v38);
    v40 = isa;
    *(&v59 - 4) = v36;
    *(&v59 - 3) = v40;
    *(&v59 - 2) = v37;
    __chkstk_darwin(v39);
    *(&v59 - 2) = sub_1000B5080;
    *(&v59 - 1) = v41;
    sub_100095274(&qword_1002A7168, &qword_10023C3C0);
    SymmetricKey.withUnsafeBytes<A>(_:)();
    (*(v24 + 8))(v28, v2);
  }

  v42 = sub_1001AC9BC(8uLL);
  v44 = v43;
  v45 = HIWORD(v43);
  __s = v42;
  v70 = v43;
  v72 = BYTE6(v43);
  v46 = HIDWORD(v43);
  v71 = WORD2(v43);
  v47 = BYTE6(v43);
  memset_s(&__s, v47, 0, v47);
  v48 = __s;
  v49 = v70 | ((v71 | (v72 << 16)) << 32);
  v50 = (v36 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_readNonce);
  swift_beginAccess();
  v51 = *v50;
  v52 = v50[1];
  *v50 = v48;
  v50[1] = v49;
  sub_1000A0D2C(v51, v52);
  v65 = v42;
  v68 = v45;
  v67 = v46;
  v66 = v44;
  memset_s(&v65, v47, 0, v47);
  v53 = v65;
  v54 = v66 | ((v67 | (v68 << 16)) << 32);

  v55 = (v36 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_writeNonce);
  swift_beginAccess();
  v56 = *v55;
  v57 = v55[1];
  *v55 = v53;
  v55[1] = v54;
  return sub_1000A0D2C(v56, v57);
}

uint64_t sub_1000ADAEC(int a1, int a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v12 = type metadata accessor for __DataStorage();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = __DataStorage.init(length:)() | 0x4000000000000000;
  v16 = (a3 + *a6);
  swift_beginAccess();
  v17 = *v16;
  v18 = v16[1];
  *v16 = 0x2000000000;
  v16[1] = v15;
  result = sub_1000A452C(v17, v18);
  if (v16[1] >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1000B1128(v16, a1, a2, a4, a5);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1000ADC1C@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = a1 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_writeKey;
  result = swift_beginAccess();
  if (*(v4 + 8) >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v7 = a1 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_readKey;
    result = swift_beginAccess();
    v6 = *(v7 + 8) >> 60 != 15;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_1000ADD6C(uint64_t a1, unint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_writeKey;
  v6 = swift_beginAccess();
  if (*(v5 + 8) >> 60 == 15)
  {
    v7 = 3;
LABEL_10:
    sub_1000B346C();
    swift_allocError();
    *v9 = v7;
    return swift_willThrow();
  }

  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_9;
    }
  }

  else if (v8)
  {
    if (a1 == a1 >> 32)
    {
LABEL_9:
      v7 = 2;
      goto LABEL_10;
    }
  }

  else if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_9;
  }

  v11 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_clientQueue);
  __chkstk_darwin(v6);
  OS_dispatch_queue.sync<A>(execute:)();
  return v12;
}

uint64_t sub_1000ADEE0@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v10 = result;
  v11 = a2 >> 62;
  v33 = a6;
  if ((a2 >> 62) <= 1)
  {
    if (!v11)
    {
      result = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v11 != 2)
  {
    result = 0;
    goto LABEL_11;
  }

  v12 = *(result + 16);
  v13 = *(result + 24);
  result = v13 - v12;
  if (__OFSUB__(v13, v12))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v10), v10))
    {
      __break(1u);
      goto LABEL_16;
    }

    result = HIDWORD(v10) - v10;
  }

LABEL_11:
  *&v32 = sub_1000B2E80(result);
  *(&v32 + 1) = v14;
  v15 = type metadata accessor for __DataStorage();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v30 = 0x1000000000;
  v31 = __DataStorage.init(length:)() | 0x4000000000000000;
  v18 = &a3[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_writeKey];
  result = swift_beginAccess();
  v19 = v18[1];
  if (v19 >> 60 == 15)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v20 = *v18;
  sub_1000A0CD8(v20, v19);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000A452C(v20, v19);
  v22 = isa;
  v23 = a3;
  sub_1000B4F20(a4, a5);
  sub_1000A0CD8(v10, a2);
  sub_1000B1790(&v32, &v30, v22, v23, a4, a5, v10, a2);
  v24 = v30;
  v25 = v31;
  Data.append(_:)();
  if (v23[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_enhancedEncryption] == 1)
  {
    v26 = &v23[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_writeNonce];
    swift_beginAccess();
    v28 = *v26;
    v27 = v26[1];
    sub_1000A0CD8(v28, v27);
    Data.append(_:)();
    sub_1000A0D2C(v28, v27);
  }

  v29 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_writeNonce;
  swift_beginAccess();
  sub_1000B1E64(&v23[v29]);
  swift_endAccess();

  *v33 = v32;
  return sub_1000A0D2C(v24, v25);
}

uint64_t sub_1000AE150(uint64_t a1, unint64_t a2)
{
  v6 = v2 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_readKey;
  v7 = swift_beginAccess();
  if (*(v6 + 8) >> 60 == 15)
  {
    sub_1000B346C();
    swift_allocError();
    v9 = 3;
LABEL_13:
    *v8 = v9;
    return swift_willThrow();
  }

  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v10)
  {
    if (a1 == a1 >> 32)
    {
LABEL_12:
      sub_1000B346C();
      swift_allocError();
      v9 = 2;
      goto LABEL_13;
    }
  }

  else if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  v11 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_clientQueue);
  __chkstk_darwin(v7);
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v3)
  {
    return v13;
  }

  return result;
}

void sub_1000AE2E8(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v137 = a5;
  v136 = a4;
  v11 = type metadata accessor for Logger();
  v134 = *(v11 - 8);
  v12 = *(v134 + 64);
  v13 = __chkstk_darwin(v11);
  v133 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_enhancedEncryption;
  if (*(a1 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_enhancedEncryption))
  {
    v16 = 8;
  }

  else
  {
    v16 = 0;
  }

  v17 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    v18 = 0;
    if (v17 != 2)
    {
      goto LABEL_13;
    }

    v20 = *(a2 + 16);
    v19 = *(a2 + 24);
    v21 = __OFSUB__(v19, v20);
    v18 = v19 - v20;
    if (!v21)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  else if (!v17)
  {
    v18 = BYTE6(a3);
    goto LABEL_13;
  }

  LODWORD(v18) = HIDWORD(a2) - a2;
  if (__OFSUB__(HIDWORD(a2), a2))
  {
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v18 = v18;
LABEL_13:
  v21 = __OFSUB__(v18, 16);
  v22 = v18 - 16;
  if (v21)
  {
    __break(1u);
    goto LABEL_111;
  }

  v135 = a6;
  v23 = v22 - v16;
  if (__OFSUB__(v22, v16))
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v132 = v13;
  sub_1000A0CD8(a2, a3);
  sub_10015319C(v23, a2, a3, v144);
  v147 = &type metadata for Data;
  v148 = &protocol witness table for Data;
  v146 = *v144;
  v24 = sub_1000A09E0(&v146, &type metadata for Data);
  v25 = *v24;
  v26 = v24[1];
  v27 = v26 >> 62;
  v139 = v15;
  v140 = a1;
  if ((v26 >> 62) <= 1)
  {
    if (!v27)
    {
      *&v145 = v25;
      WORD4(v145) = v26;
      BYTE10(v145) = BYTE2(v26);
      BYTE11(v145) = BYTE3(v26);
      BYTE12(v145) = BYTE4(v26);
      BYTE13(v145) = BYTE5(v26);
      v28 = (&v145 + BYTE6(v26));
      v29 = &v145;
      goto LABEL_38;
    }

    v37 = v25;
    v38 = v25 >> 32;
    v39 = v38 - v37;
    if (v38 >= v37)
    {
      v32 = __DataStorage._bytes.getter();
      if (v32)
      {
        v40 = __DataStorage._offset.getter();
        if (__OFSUB__(v37, v40))
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        v32 += v37 - v40;
      }

      v41 = __DataStorage._length.getter();
      if (v41 >= v39)
      {
        v36 = v39;
      }

      else
      {
        v36 = v41;
      }

      goto LABEL_33;
    }

    goto LABEL_113;
  }

  if (v27 != 2)
  {
    *(&v145 + 6) = 0;
    *&v145 = 0;
    v29 = &v145;
    v28 = &v145;
    goto LABEL_38;
  }

  v31 = *(v25 + 16);
  v30 = *(v25 + 24);
  v32 = __DataStorage._bytes.getter();
  if (v32)
  {
    v33 = __DataStorage._offset.getter();
    if (__OFSUB__(v31, v33))
    {
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    v32 += v31 - v33;
  }

  v21 = __OFSUB__(v30, v31);
  v34 = v30 - v31;
  if (v21)
  {
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v35 = __DataStorage._length.getter();
  if (v35 >= v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = v35;
  }

LABEL_33:
  v42 = (v36 + v32);
  if (v32)
  {
    v28 = v42;
  }

  else
  {
    v28 = 0;
  }

  v29 = v32;
LABEL_38:
  sub_1001AC450(v29, v28, &v142);
  v43 = *(&v142 + 1);
  v44 = v142;
  sub_100095808(&v146);
  sub_1000A0CD8(a2, a3);
  sub_1000AEF1C(v16, a2, a3, &v146);
  sub_1001A36A0(16, v146, *(&v146 + 1), v144);
  v147 = &type metadata for Data;
  v148 = &protocol witness table for Data;
  v146 = *v144;
  v45 = sub_1000A09E0(&v146, &type metadata for Data);
  v46 = *v45;
  v47 = v45[1];
  v48 = v47 >> 62;
  v49 = v43;
  v141 = v44;
  if ((v47 >> 62) <= 1)
  {
    if (!v48)
    {
      *&v145 = v46;
      WORD4(v145) = v47;
      BYTE10(v145) = BYTE2(v47);
      BYTE11(v145) = BYTE3(v47);
      BYTE12(v145) = BYTE4(v47);
      BYTE13(v145) = BYTE5(v47);
      v50 = (&v145 + BYTE6(v47));
LABEL_61:
      sub_1001AC450(&v145, v50, &v142);
      v65 = v6;
      goto LABEL_62;
    }

    v58 = v46;
    v59 = v46 >> 32;
    v60 = v59 - v58;
    if (v59 >= v58)
    {
      v53 = __DataStorage._bytes.getter();
      if (v53)
      {
        v61 = __DataStorage._offset.getter();
        if (__OFSUB__(v58, v61))
        {
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        v53 += v58 - v61;
      }

      v62 = __DataStorage._length.getter();
      if (v62 >= v60)
      {
        v57 = v60;
      }

      else
      {
        v57 = v62;
      }

      goto LABEL_56;
    }

    goto LABEL_115;
  }

  if (v48 != 2)
  {
    *(&v145 + 6) = 0;
    *&v145 = 0;
    v50 = &v145;
    goto LABEL_61;
  }

  v52 = *(v46 + 16);
  v51 = *(v46 + 24);
  v53 = __DataStorage._bytes.getter();
  if (v53)
  {
    v54 = __DataStorage._offset.getter();
    if (__OFSUB__(v52, v54))
    {
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    v53 += v52 - v54;
  }

  v21 = __OFSUB__(v51, v52);
  v55 = v51 - v52;
  if (v21)
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v56 = __DataStorage._length.getter();
  if (v56 >= v55)
  {
    v57 = v55;
  }

  else
  {
    v57 = v56;
  }

LABEL_56:
  v63 = &v53[v57];
  if (v53)
  {
    v64 = v63;
  }

  else
  {
    v64 = 0;
  }

  sub_1001AC450(v53, v64, &v142);
  v65 = v6;
  v44 = v141;
LABEL_62:
  v66 = *(&v142 + 1);
  v138 = v142;
  sub_100095808(&v146);
  v67 = v43 >> 62;
  v68 = v140;
  if ((v43 >> 62) <= 1)
  {
    if (!v67)
    {
      v69 = BYTE6(v43);
      goto LABEL_72;
    }

LABEL_69:
    if (!__OFSUB__(HIDWORD(v44), v44))
    {
      v69 = HIDWORD(v44) - v44;
      goto LABEL_72;
    }

    goto LABEL_117;
  }

  if (v67 == 2)
  {
    v71 = *(v44 + 16);
    v70 = *(v44 + 24);
    v69 = v70 - v71;
    if (__OFSUB__(v70, v71))
    {
      __break(1u);
      goto LABEL_69;
    }
  }

  else
  {
    v69 = 0;
  }

LABEL_72:
  *&v145 = sub_1000B2E80(v69);
  *(&v145 + 1) = v72;
  if (v68[v139] != 1)
  {
    v139 = v65;
    goto LABEL_105;
  }

  sub_1000A0CD8(a2, a3);
  sub_1001A36A0(8, a2, a3, v144);
  v147 = &type metadata for Data;
  v148 = &protocol witness table for Data;
  v146 = *v144;
  v73 = sub_1000A09E0(&v146, &type metadata for Data);
  v74 = *v73;
  v75 = v73[1];
  v76 = v75 >> 62;
  v131 = v43;
  if ((v75 >> 62) > 1)
  {
    if (v76 != 2)
    {
      *(&v142 + 6) = 0;
      *&v142 = 0;
      v78 = &v142;
      v77 = &v142;
      goto LABEL_96;
    }

    v79 = *(v74 + 16);
    v80 = *(v74 + 24);
    v81 = __DataStorage._bytes.getter();
    if (v81)
    {
      v82 = __DataStorage._offset.getter();
      v74 = v79 - v82;
      if (__OFSUB__(v79, v82))
      {
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      v81 += v74;
    }

    v21 = __OFSUB__(v80, v79);
    v83 = v80 - v79;
    if (!v21)
    {
      goto LABEL_88;
    }

    __break(1u);
    goto LABEL_84;
  }

  if (v76)
  {
LABEL_84:
    v84 = v74;
    v85 = v74 >> 32;
    v83 = v85 - v84;
    if (v85 >= v84)
    {
      v81 = __DataStorage._bytes.getter();
      if (!v81)
      {
LABEL_88:
        v87 = __DataStorage._length.getter();
        if (v87 >= v83)
        {
          v88 = v83;
        }

        else
        {
          v88 = v87;
        }

        v89 = (v88 + v81);
        if (v81)
        {
          v77 = v89;
        }

        else
        {
          v77 = 0;
        }

        v78 = v81;
        goto LABEL_96;
      }

      v86 = __DataStorage._offset.getter();
      if (!__OFSUB__(v84, v86))
      {
        v81 += v84 - v86;
        goto LABEL_88;
      }

LABEL_124:
      __break(1u);
    }

    goto LABEL_122;
  }

  *&v142 = v74;
  WORD4(v142) = v75;
  BYTE10(v142) = BYTE2(v75);
  BYTE11(v142) = BYTE3(v75);
  BYTE12(v142) = BYTE4(v75);
  BYTE13(v142) = BYTE5(v75);
  v77 = (&v143[-1] + BYTE6(v75));
  v78 = &v142;
LABEL_96:
  sub_1001AC450(v78, v77, v143);
  v139 = v65;
  v90 = v143[0];
  v91 = v143[1];
  sub_100095808(&v146);
  sub_1001AC9BC(8uLL);
  sub_10015319C(8, v90, v91, &v142);
  v92 = v142;
  v93 = sub_1000A5644(v142, *(&v142 + 1));
  v94 = &v68[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_readNonce];
  swift_beginAccess();
  v95 = *v94;
  v96 = v94[1];
  sub_1000A0CD8(*v94, v96);
  v97 = sub_1000A5644(v95, v96);
  sub_1000A0D2C(v95, v96);
  if (v93 < v97)
  {
    sub_1000B4F34();
    swift_allocError();
    *v98 = 2;
    swift_willThrow();
    sub_1000A0D2C(v138, v66);
    sub_1000A0D2C(v141, v131);
    v100 = v92 >> 64;
    v99 = v92;
LABEL_108:
    sub_1000A0D2C(v99, v100);
    sub_1000A0D2C(v145, *(&v145 + 1));
    return;
  }

  v101 = sub_1000A5644(v92, *(&v92 + 1));
  v102 = *v94;
  v103 = v94[1];
  sub_1000A0CD8(*v94, v103);
  v104 = sub_1000A5644(v102, v103);
  sub_1000A0D2C(v102, v103);
  if (v104 >= v101)
  {
    sub_1000A0D2C(v92, *(&v92 + 1));
    v68 = v140;
    v44 = v141;
  }

  else
  {
    v68 = v140;
    v105 = v132;
    (*(v134 + 16))(v133, &v140[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger], v132);
    v106 = v68;
    sub_1000A0CD8(v92, *(&v92 + 1));
    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v130 = v108;
      v110 = v109;
      *v109 = 134218240;
      v111 = *v94;
      v112 = v94[1];
      sub_1000A0CD8(*v94, v112);
      v129 = sub_1000A5644(v111, v112);
      v113 = v111;
      v68 = v140;
      v114 = v112;
      v105 = v132;
      sub_1000A0D2C(v113, v114);
      *(v110 + 1) = v129;

      *(v110 + 6) = 2048;
      *(v110 + 14) = sub_1000A5644(v92, *(&v92 + 1));
      sub_1000A0D2C(v92, *(&v92 + 1));
      _os_log_impl(&_mh_execute_header, v107, v130, "Detected potential packet drop while decrypting message: %llu != %llu", v110, 0x16u);
    }

    else
    {
      sub_1000A0D2C(v92, *(&v92 + 1));

      v107 = v106;
    }

    v44 = v141;

    (*(v134 + 8))(v133, v105);
    v115 = *v94;
    v116 = v94[1];
    *v94 = v92;
    sub_1000A0D2C(v115, v116);
  }

  v49 = v131;
LABEL_105:
  v117 = v66;
  v118 = &v68[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_readKey];
  swift_beginAccess();
  v119 = v118[1];
  if (v119 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v120 = *v118;
    sub_1000A0CD8(v120, v119);
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000A452C(v120, v119);
    v122 = v68;
    v123 = isa;
    v124 = v136;
    v125 = v137;
    sub_1000B4F20(v136, v137);
    sub_1000A0CD8(v44, v49);
    v126 = v138;
    sub_1000A0CD8(v138, v117);
    v127 = sub_1000B3FCC(&v145, v123, v122, v124, v125, v44, v49, v126, v117);
    v140 = v117;
    sub_1000A0D2C(v126, v117);
    sub_1000A0D2C(v44, v49);
    sub_1000A452C(v124, v125);

    v128 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_readNonce;
    swift_beginAccess();
    sub_1000B1E64(&v122[v128]);
    swift_endAccess();
    if (v127)
    {
      [objc_allocWithZone(NSError) initWithDomain:@"HAPErrorDomain" code:v127 userInfo:0];
      swift_willThrow();
      sub_1000A0D2C(v126, v140);

      v99 = v141;
      v100 = v49;
      goto LABEL_108;
    }

    sub_1000A0D2C(v126, v140);
    sub_1000A0D2C(v141, v49);

    *v135 = v145;
  }
}

uint64_t sub_1000AEF1C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v5 = a2;
    v7 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v7 == 2)
      {
        a2 = *(a2 + 16);
        v8 = *(v5 + 24);
      }

      else
      {
        a2 = 0;
        v8 = 0;
      }
    }

    else
    {
      if (v7)
      {
        a2 = a2;
      }

      else
      {
        a2 = 0;
      }

      if (v7)
      {
        v8 = v5 >> 32;
      }

      else
      {
        v8 = BYTE6(a3);
      }
    }

    v9 = -result;
    v10 = sub_1001AC908(v8, a2, v5, a3);
    if (v10 > 0 || v10 <= v9)
    {
      v11 = sub_1001AC8A4(v8, v9, v5, a3);
      if (v7 > 1)
      {
        v12 = 0;
        if (v7 == 2)
        {
          v12 = *(v5 + 16);
        }
      }

      else if (v7)
      {
        v12 = v5;
      }

      else
      {
        v12 = 0;
      }

      if (v11 >= v12)
      {
        goto LABEL_26;
      }

      __break(1u);
    }

    else if (v7 <= 1)
    {
LABEL_26:
      v14 = Data._Representation.subscript.getter();
      v16 = v15;
      result = sub_1000A0D2C(v5, a3);
      *a4 = v14;
      a4[1] = v16;
      return result;
    }

    if (v7 == 2)
    {
      v13 = *(v5 + 16);
    }

    goto LABEL_26;
  }

  __break(1u);
  return result;
}

Class sub_1000AF07C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t (*a6)(uint64_t, unint64_t, uint64_t, unint64_t))
{
  v9 = a3;
  v10 = a1;
  v11 = a4;
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (v11)
  {
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xF000000000000000;
  }

  v18 = a6(v12, v14, v15, v17);
  v20 = v19;

  sub_1000A452C(v15, v17);
  sub_1000A0D2C(v12, v14);
  v21.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000A0D2C(v18, v20);

  return v21.super.isa;
}

id sub_1000AF214()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DKPairSetupSession();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DKPairSetupSession()
{
  result = qword_1002A70E0;
  if (!qword_1002A70E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000AF3D0()
{
  v0 = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1000AF570(319, &qword_1002A70F0, &type metadata accessor for SymmetricKey);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1000AF570(319, &qword_1002A70F8, &type metadata accessor for SPAKE2.Prover);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1000AF570(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000AF5C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1000AF618(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DKPairSetupSession.PairSetupState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DKPairSetupSession.PairSetupState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000AF7C8()
{
  result = qword_1002A7100;
  if (!qword_1002A7100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7100);
  }

  return result;
}

void sub_1000B0130(uint64_t *a1, uint64_t *a2, void *a3, void *a4, uint64_t *a5)
{
  v5 = a4;
  v9 = *a1;
  v8 = a1[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 != 2)
    {
      v25 = a4;
      v26 = a3;
      sub_1000B05E0(a2, v26, v25, a5);

      goto LABEL_21;
    }

    v36 = a4;
    v14 = a3;

    sub_1000A0D2C(v9, v8);
    *a1 = xmmword_10023BF90;
    sub_1000A0D2C(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v15 = v8 & 0x3FFFFFFFFFFFFFFFLL;
    v16 = *(v9 + 16);
    v17 = *(v9 + 24);
    if (!__DataStorage._bytes.getter())
    {

      __break(1u);
      goto LABEL_29;
    }

    if (!__OFSUB__(v16, __DataStorage._offset.getter()))
    {
      if (!__OFSUB__(v17, v16))
      {
        __DataStorage._length.getter();
        sub_1000B05E0(a2, v14, v36, a5);

        v18 = v15 | 0x8000000000000000;
        *a1 = v9;
LABEL_20:
        a1[1] = v18;
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v10)
  {
    v33 = a4;
    v11 = a3;
    sub_1000A0D2C(v9, v8);
    v42 = v9;
    LOWORD(v43) = v8;
    BYTE2(v43) = BYTE2(v8);
    HIBYTE(v43) = BYTE3(v8);
    LOBYTE(v44) = BYTE4(v8);
    HIBYTE(v44) = BYTE5(v8);
    v12 = v33;
    v13 = v11;
    sub_1000B05E0(a2, v13, v12, a5);

    *a1 = v42;
    a1[1] = v43 | ((v44 | (BYTE6(v8) << 16)) << 32);
    v5 = a4;
LABEL_21:

    return;
  }

  v19 = v8 & 0x3FFFFFFFFFFFFFFFLL;
  v20 = a4;
  v21 = a3;
  sub_1000A0CD8(v9, v8);
  sub_1000A0D2C(v9, v8);
  *a1 = xmmword_10023BF90;
  sub_1000A0D2C(0, 0xC000000000000000);
  v37 = v20;
  v34 = v21;
  v22 = v9 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v22 < v9)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v9, __DataStorage._offset.getter()))
    {
LABEL_27:
      __break(1u);
    }

    v27 = type metadata accessor for __DataStorage();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    v30 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v19 = v30;
  }

  if (v22 < v9)
  {
    goto LABEL_23;
  }

  if (__DataStorage._bytes.getter())
  {
    if (!__OFSUB__(v9, __DataStorage._offset.getter()))
    {
      __DataStorage._length.getter();
      v31 = v37;
      v32 = v34;
      sub_1000B05E0(a2, v32, v31, a5);

      v18 = v19 | 0x4000000000000000;
      *a1 = v9;
      goto LABEL_20;
    }

    goto LABEL_25;
  }

LABEL_29:
  __break(1u);
}

void sub_1000B05E0(uint64_t *a1, id a2, void *a3, uint64_t *a4)
{
  v4 = a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 != 2)
    {
      v29 = a2;
      v30 = v4;
      [a2 bytes];
      [v30 bytes];
      v31 = *a4;
      v32 = a4[1];
      chacha20_poly1305_encrypt_all_64x64();

      goto LABEL_20;
    }

    v13 = a2;
    v41 = v4;
    v14 = v4;

    sub_1000A0D2C(v7, v6);
    *a1 = xmmword_10023BF90;
    sub_1000A0D2C(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v15 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    v16 = *(v7 + 16);
    if (!__DataStorage._bytes.getter())
    {

      __break(1u);
      goto LABEL_27;
    }

    if (!__OFSUB__(v16, __DataStorage._offset.getter()))
    {
      __DataStorage._length.getter();
      [v13 bytes];
      [v14 bytes];
      v17 = *a4;
      v18 = a4[1];
      chacha20_poly1305_encrypt_all_64x64();

      v19 = v15 | 0x8000000000000000;
      *a1 = v7;
LABEL_19:
      a1[1] = v19;
      v4 = v41;
      goto LABEL_20;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v41 = a3;
  if (!v8)
  {
    v9 = a2;
    v10 = v4;
    sub_1000A0D2C(v7, v6);
    LOWORD(v42) = v6;
    BYTE2(v42) = BYTE2(v6);
    HIBYTE(v42) = BYTE3(v6);
    LOBYTE(v43) = BYTE4(v6);
    HIBYTE(v43) = BYTE5(v6);
    [v9 bytes];
    [v10 bytes];
    v11 = *a4;
    v12 = a4[1];
    chacha20_poly1305_encrypt_all_64x64();

    v4 = v41;
    *a1 = v7;
    a1[1] = v42 | ((v43 | (BYTE6(v6) << 16)) << 32);
LABEL_20:

    return;
  }

  v20 = v6 & 0x3FFFFFFFFFFFFFFFLL;
  v21 = a2;
  v22 = v4;
  sub_1000A0CD8(v7, v6);
  sub_1000A0D2C(v7, v6);
  *a1 = xmmword_10023BF90;
  sub_1000A0D2C(0, 0xC000000000000000);
  v23 = v21;
  v24 = v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = v7 >> 32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    if (v26 < v7)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
    {
LABEL_25:
      __break(1u);
    }

    v33 = type metadata accessor for __DataStorage();
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    v36 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v20 = v36;
    v26 = v7 >> 32;
  }

  if (v26 < v7)
  {
    goto LABEL_22;
  }

  if (__DataStorage._bytes.getter())
  {
    if (!__OFSUB__(v7, __DataStorage._offset.getter()))
    {
      __DataStorage._length.getter();
      [v23 bytes];
      [v24 bytes];
      v37 = *a4;
      v38 = a4[1];
      chacha20_poly1305_encrypt_all_64x64();

      v19 = v20 | 0x4000000000000000;
      *a1 = v7;
      goto LABEL_19;
    }

    goto LABEL_23;
  }

LABEL_27:
  __break(1u);
}

void sub_1000B0AEC(uint64_t *a1, int a2, int a3, id a4, void *a5)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 != 2)
    {
      v24 = a4;
      v25 = a5;
      [a4 bytes];
      [a4 length];
      [v25 bytes];
      [v25 length];
      CryptoHKDF();

      goto LABEL_20;
    }

    v12 = a4;
    v30 = a5;
    v13 = a5;

    sub_1000A0D2C(v7, v8);
    *a1 = xmmword_10023BF90;
    sub_1000A0D2C(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v14 = *(v7 + 16);
    if (!__DataStorage._bytes.getter())
    {

      __break(1u);
      goto LABEL_27;
    }

    if (!__OFSUB__(v14, __DataStorage._offset.getter()))
    {
      __DataStorage._length.getter();
      [v12 bytes];
      [v12 length];
      [v13 bytes];
      [v13 length];
      CryptoHKDF();

      v15 = v8 & 0x3FFFFFFFFFFFFFFFLL | 0x8000000000000000;
      *a1 = v7;
LABEL_19:
      a1[1] = v15;
      a5 = v30;
      goto LABEL_20;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v9)
  {
    v10 = a4;
    v11 = a5;
    sub_1000A0D2C(v7, v8);
    LOWORD(v31) = v8;
    BYTE2(v31) = BYTE2(v8);
    HIBYTE(v31) = BYTE3(v8);
    LOBYTE(v32) = BYTE4(v8);
    HIBYTE(v32) = BYTE5(v8);
    [v10 bytes];
    [v10 length];
    [v11 bytes];
    [v11 length];
    CryptoHKDF();

    *a1 = v7;
    a1[1] = v31 | ((v32 | (BYTE6(v8) << 16)) << 32);
LABEL_20:

    return;
  }

  v16 = v8 & 0x3FFFFFFFFFFFFFFFLL;
  v17 = a4;
  v30 = a5;
  v18 = a5;
  sub_1000A0CD8(v7, v8);
  sub_1000A0D2C(v7, v8);
  *a1 = xmmword_10023BF90;
  sub_1000A0D2C(0, 0xC000000000000000);
  v19 = v17;
  v20 = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v7 >> 32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    if (v22 < v7)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
    {
LABEL_25:
      __break(1u);
    }

    v26 = type metadata accessor for __DataStorage();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    v29 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v16 = v29;
    v22 = v7 >> 32;
  }

  if (v22 < v7)
  {
    goto LABEL_22;
  }

  if (__DataStorage._bytes.getter())
  {
    if (!__OFSUB__(v7, __DataStorage._offset.getter()))
    {
      __DataStorage._length.getter();
      [v19 bytes];
      [v19 length];
      [v20 bytes];
      [v20 length];
      CryptoHKDF();

      v15 = v16 | 0x4000000000000000;
      *a1 = v7;
      goto LABEL_19;
    }

    goto LABEL_23;
  }

LABEL_27:
  __break(1u);
}

void sub_1000B1128(uint64_t *a1, int a2, int a3, id a4, void *a5)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v9 != 2)
    {
      v23 = a4;
      v24 = a5;
      [a4 bytes];
      [a4 length];
      [v24 bytes];
      [v24 length];
      CryptoHKDF();

      goto LABEL_21;
    }

    v12 = a4;
    v30 = a5;
    v13 = a5;

    sub_1000A0D2C(v8, v7);
    *a1 = xmmword_10023BF90;
    sub_1000A0D2C(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v14 = *(v8 + 16);
    v15 = *(v8 + 24);
    if (!__DataStorage._bytes.getter())
    {

      __break(1u);
      goto LABEL_29;
    }

    if (!__OFSUB__(v14, __DataStorage._offset.getter()))
    {
      if (!__OFSUB__(v15, v14))
      {
        __DataStorage._length.getter();
        [v12 bytes];
        [v12 length];
        [v13 bytes];
        [v13 length];
        CryptoHKDF();

        v16 = v7 & 0x3FFFFFFFFFFFFFFFLL | 0x8000000000000000;
        *a1 = v8;
LABEL_20:
        a1[1] = v16;
        a5 = v30;
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v9)
  {
    v10 = a4;
    v11 = a5;
    sub_1000A0D2C(v8, v7);
    LOWORD(v31) = v7;
    BYTE2(v31) = BYTE2(v7);
    HIBYTE(v31) = BYTE3(v7);
    LOBYTE(v32) = BYTE4(v7);
    HIBYTE(v32) = BYTE5(v7);
    [v10 bytes];
    [v10 length];
    [v11 bytes];
    [v11 length];
    CryptoHKDF();

    *a1 = v8;
    a1[1] = v31 | ((v32 | (BYTE6(v7) << 16)) << 32);
LABEL_21:

    return;
  }

  v17 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v18 = a4;
  v30 = a5;
  v19 = a5;
  sub_1000A0CD8(v8, v7);
  sub_1000A0D2C(v8, v7);
  *a1 = xmmword_10023BF90;
  sub_1000A0D2C(0, 0xC000000000000000);
  v20 = v18;
  v29 = v19;
  v21 = v8 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v21 < v8)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v8, __DataStorage._offset.getter()))
    {
LABEL_27:
      __break(1u);
    }

    v25 = type metadata accessor for __DataStorage();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    v28 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v17 = v28;
  }

  if (v21 < v8)
  {
    goto LABEL_23;
  }

  if (__DataStorage._bytes.getter())
  {
    if (!__OFSUB__(v8, __DataStorage._offset.getter()))
    {
      __DataStorage._length.getter();
      [v20 bytes];
      [v20 length];
      [v29 bytes];
      [v29 length];
      CryptoHKDF();

      v16 = v17 | 0x4000000000000000;
      *a1 = v8;
      goto LABEL_20;
    }

    goto LABEL_25;
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_1000B1790(uint64_t *a1, int a2, void *a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v12 = a3;
  v15 = *a1;
  v14 = a1[1];
  v16 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v16 != 2)
    {
      v17 = a4;
      v31 = a4;
      sub_1000B4F20(a5, v10);
      sub_1000A0CD8(v9, v8);
      sub_1000B4F20(a5, v10);
      sub_1000A0CD8(v9, v8);
      sub_1000B2100(a2, v12);
      sub_1000A452C(a5, v10);
      goto LABEL_21;
    }

    v44 = a4;
    v43 = a4;
    sub_1000B4F20(a5, v10);
    v48 = a7;
    sub_1000A0CD8(a7, v8);
    v46 = v12;
    v41 = v12;

    sub_1000A0D2C(v15, v14);
    *a1 = xmmword_10023BF90;
    sub_1000A0D2C(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v21 = *(v15 + 16);
    v22 = *(v15 + 24);
    if (!__DataStorage._bytes.getter())
    {

      sub_1000A452C(a5, v10);
      result = sub_1000A0D2C(v48, v8);
      __break(1u);
      goto LABEL_29;
    }

    if (!__OFSUB__(v21, __DataStorage._offset.getter()))
    {
      if (!__OFSUB__(v22, v21))
      {
        __DataStorage._length.getter();
        sub_1000B4F20(a5, v10);
        sub_1000A0CD8(v48, v8);
        v9 = v48;
        sub_1000B2100(a2, v41);
        sub_1000A452C(a5, v10);
        v23 = v14 & 0x3FFFFFFFFFFFFFFFLL | 0x8000000000000000;
        v24 = a1;
        *a1 = v15;
LABEL_20:
        v24[1] = v23;
        v12 = v46;
        v17 = v44;
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v46 = a3;
  if (!v16)
  {
    v17 = a4;
    v40 = a4;
    sub_1000B4F20(a5, v10);
    sub_1000A0CD8(a7, a8);
    v39 = v46;
    sub_1000A0D2C(v15, v14);
    LOWORD(v52) = v14;
    BYTE2(v52) = BYTE2(v14);
    HIBYTE(v52) = BYTE3(v14);
    LOBYTE(v53) = BYTE4(v14);
    HIBYTE(v53) = BYTE5(v14);
    v54 = BYTE6(v14);
    v18 = v40;
    sub_1000B4F20(a5, v10);
    sub_1000A0CD8(a7, a8);
    v19 = v39;
    sub_1000B2100(a2, v19);

    v9 = a7;
    sub_1000A452C(a5, v10);
    *a1 = v15;
    a1[1] = v52 | ((v53 | (v54 << 16)) << 32);
    v8 = a8;
    v12 = v46;
LABEL_21:
    sub_1000A0D2C(v9, v8);

    sub_1000A452C(a5, v10);
    return sub_1000A0D2C(v9, v8);
  }

  v44 = a4;
  v25 = a4;
  sub_1000B4F20(a5, a6);
  sub_1000A0CD8(v9, v8);
  v26 = v12;
  sub_1000A0CD8(v15, v14);
  sub_1000A0D2C(v15, v14);
  *a1 = xmmword_10023BF90;
  sub_1000A0D2C(0, 0xC000000000000000);
  v27 = v14 & 0x3FFFFFFFFFFFFFFFLL;
  v28 = v25;
  sub_1000B4F20(a5, a6);
  sub_1000A0CD8(v9, v8);
  v42 = v26;
  v29 = v15;
  v30 = v15 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v30 < v15)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v15, __DataStorage._offset.getter()))
    {
LABEL_27:
      __break(1u);
    }

    v32 = type metadata accessor for __DataStorage();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    v29 = v15;
    v27 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
  }

  if (v30 < v29)
  {
    goto LABEL_23;
  }

  result = __DataStorage._bytes.getter();
  if (result)
  {
    if (!__OFSUB__(v29, __DataStorage._offset.getter()))
    {
      v38 = v27;
      __DataStorage._length.getter();
      v36 = v28;
      v10 = a6;
      sub_1000B4F20(a5, a6);
      v8 = a8;
      sub_1000A0CD8(v9, a8);
      v37 = v42;
      sub_1000B2100(a2, v37);

      sub_1000A452C(a5, a6);
      sub_1000A0D2C(v9, a8);

      sub_1000A452C(a5, a6);
      v23 = v38 | 0x4000000000000000;
      v24 = a1;
      *a1 = v15;
      goto LABEL_20;
    }

    goto LABEL_25;
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_1000B1E64(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (v4)
    {

      sub_1000A0D2C(v3, v2);
      v28 = v3;
      v29 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_10023BF90;
      sub_1000A0D2C(0, 0xC000000000000000);
      sub_1000B2DC4(&v28);
      v9 = v28;
      v10 = v29 | 0x4000000000000000;
    }

    else
    {
      sub_1000A0D2C(v3, v2);
      v28 = v3;
      LOWORD(v29) = v2;
      BYTE2(v29) = BYTE2(v2);
      BYTE3(v29) = BYTE3(v2);
      BYTE4(v29) = BYTE4(v2);
      BYTE5(v29) = BYTE5(v2);
      BYTE6(v29) = BYTE6(v2);
      if (BYTE6(v2))
      {
        v5 = BYTE6(v2) - 1;
        v6 = &v28;
        do
        {
          v7 = ++*v6;
          v6 = (v6 + 1);
          if (v7)
          {
            v8 = 1;
          }

          else
          {
            v8 = v5 == 0;
          }

          --v5;
        }

        while (!v8);
      }

      v9 = v28;
      v10 = v29 | ((WORD2(v29) | (BYTE6(v29) << 16)) << 32);
    }

    *a1 = v9;
    a1[1] = v10;
    return;
  }

  if (v4 != 2)
  {
    return;
  }

  v11 = *a1;

  sub_1000A0D2C(v3, v2);
  v28 = v3;
  v29 = v2 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_10023BF90;
  sub_1000A0D2C(0, 0xC000000000000000);
  Data.LargeSlice.ensureUniqueReference()();
  v13 = v28;
  v12 = v29;
  v14 = *(v28 + 16);
  v15 = *(v28 + 24);
  v16 = __DataStorage._bytes.getter();
  if (!v16)
  {
    __break(1u);
    return;
  }

  v17 = v16;
  v18 = __DataStorage._offset.getter();
  v19 = v14 - v18;
  if (__OFSUB__(v14, v18))
  {
    __break(1u);
LABEL_30:
    __break(1u);
  }

  v20 = __OFSUB__(v15, v14);
  v21 = v15 - v14;
  if (v20)
  {
    goto LABEL_30;
  }

  v22 = __DataStorage._length.getter();
  if (v22 >= v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  if (v23)
  {
    v24 = (v17 + v19);
    v25 = v23 - 1;
    do
    {
      if (++*v24++)
      {
        v27 = 1;
      }

      else
      {
        v27 = v25 == 0;
      }

      --v25;
    }

    while (!v27);
  }

  *a1 = v13;
  a1[1] = v12 | 0x8000000000000000;
}

void sub_1000B2CF0(int *a1, void *a2, void *a3)
{
  Data.InlineSlice.ensureUniqueReference()();
  v6 = *a1;
  v7 = a1[1];
  if (v7 < v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = *(a1 + 1);

  v9 = __DataStorage._bytes.getter();
  if (!v9)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = __DataStorage._offset.getter();
  v12 = v6 - v11;
  if (__OFSUB__(v6, v11))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = v7 - v6;
  v14 = __DataStorage._length.getter();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  sub_1000AB818((v10 + v12), v10 + v12 + v15, a2, a3);
}

void sub_1000B2DC4(int *a1)
{
  Data.InlineSlice.ensureUniqueReference()();
  v2 = *a1;
  v3 = a1[1];
  if (v3 < v2)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = *(a1 + 1);

  v5 = __DataStorage._bytes.getter();
  if (!v5)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = __DataStorage._offset.getter();
  v8 = v2 - v7;
  if (__OFSUB__(v2, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v3 - v2;
  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11)
  {
    v12 = (v6 + v8);
    v13 = v11 - 1;
    do
    {
      if (++*v12++)
      {
        v15 = 1;
      }

      else
      {
        v15 = v13 == 0;
      }

      --v13;
    }

    while (!v15);
  }
}

uint64_t sub_1000B2E80(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_1001AC9BC(result);
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

uint64_t sub_1000B2F20(uint64_t result)
{
  if ((result & 0xF8) != 0)
  {
    return 8;
  }

  else
  {
    return result;
  }
}

id sub_1000B2F34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v35 = a2;
  v36 = a4;
  v37 = a3;
  v34 = a1;
  v32 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v32 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v32);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v33 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_delegate;
  swift_unknownObjectWeakInit();
  v28 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_flags;
  *&v4[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_flags] = 0;
  v31 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_clientQueue;
  v14 = sub_1000B3420();
  v29 = "com.apple.bluetooth.discovery";
  v30 = v14;
  static DispatchQoS.unspecified.getter();
  *__s = _swiftEmptyArrayStorage;
  sub_1000B5038(&qword_1002A7110, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100095274(&unk_1002A6830, &unk_10023AB20);
  sub_100095BDC(&qword_1002A7120, &unk_1002A6830, &unk_10023AB20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v6 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v32);
  *&v4[v31] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  Logger.init(subsystem:category:)();
  v4[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_state] = 1;
  *&v4[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_readKey] = xmmword_10023C1B0;
  *&v4[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_writeKey] = xmmword_10023C1B0;
  *&v4[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_sessionKey] = xmmword_10023C1B0;
  v15 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_sharedSecret;
  v16 = type metadata accessor for SymmetricKey();
  (*(*(v16 - 8) + 56))(&v5[v15], 1, 1, v16);
  v17 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_prover;
  v18 = type metadata accessor for SPAKE2.Prover();
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v19 = &v5[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_readNonce];
  memset(__s, 0, sizeof(__s));
  v40 = 8;
  memset_s(__s, 8uLL, 0, 8uLL);
  v20 = *&__s[8] | ((*&__s[12] | (v40 << 16)) << 32);
  *v19 = *__s;
  v19[1] = v20;
  v21 = &v5[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_writeNonce];
  memset(__s, 0, sizeof(__s));
  v40 = 8;
  memset_s(__s, 8uLL, 0, 8uLL);
  v22 = *&__s[8] | ((*&__s[12] | (v40 << 16)) << 32);
  *v21 = *__s;
  v21[1] = v22;
  v23 = v35;
  *&v5[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_role] = v34;
  *&v5[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_type] = v23;
  swift_unknownObjectWeakAssign();
  v5[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_enhancedEncryption] = v37;
  if (v23 == 3)
  {
    v24 = 16810000;
    goto LABEL_5;
  }

  if (v23 == 4)
  {
    v24 = 16809984;
LABEL_5:
    *&v5[v28] = v24;
  }

  v25 = type metadata accessor for DKPairSetupSession();
  v38.receiver = v5;
  v38.super_class = v25;
  return objc_msgSendSuper2(&v38, "init");
}

unint64_t sub_1000B3420()
{
  result = qword_1002A6820;
  if (!qword_1002A6820)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002A6820);
  }

  return result;
}

unint64_t sub_1000B346C()
{
  result = qword_1002A9300;
  if (!qword_1002A9300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A9300);
  }

  return result;
}

uint64_t sub_1000B34EC(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
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

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = __DataStorage._bytes.getter();
  if (v3)
  {
    result = __DataStorage._offset.getter();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = __DataStorage._length.getter();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1001AC9DC(v3, v7);

  return v8;
}

uint64_t sub_1000B35D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Data.Deallocator();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Data.Deallocator._deallocator.getter();
  if (a2)
  {
    v11 = type metadata accessor for __DataStorage();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();

    v14 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
    (*(v7 + 16))(v10, a3, v6);
    if ((*(v7 + 88))(v10, v6) == enum case for Data.Deallocator.none(_:))
    {
      v15 = __DataStorage._capacity.modify();
      *v16 |= 0x8000000000000000;
      v15(v20, 0);
    }

    else
    {
      (*(v7 + 8))(v10, v6);
    }

    v18 = sub_1000B34EC(v14, a2);
  }

  else
  {
    v17 = Data.Deallocator._deallocator.getter();
    v17(a1, 0);

    v18 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v18;
}

uint64_t sub_1000B3808(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1001AC9DC(a1, &a1[a2]);
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

uint64_t sub_1000B38B8()
{
  v0 = type metadata accessor for Data.Deallocator();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = Data._bridgeToObjectiveC()().super.isa;
  [(objc_class *)v5 bytes];
  [(objc_class *)v5 length];
  v12 = 0;
  v13 = 0;
  v11 = 0;
  [(objc_class *)v5 bytes];
  TLV8GetOrCopyCoalesced();
  v6 = v12;
  if (v12)
  {
    v7 = v11;
    (*(v1 + 104))(v4, enum case for Data.Deallocator.free(_:), v0);
    v8 = sub_1000B35D0(v6, v7, v4);
  }

  else
  {
    if (!v13)
    {

      return 0;
    }

    v8 = sub_1000B3808(v13, v11);
  }

  v9 = v8;

  return v9;
}

uint64_t sub_1000B3A90(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.super.isa = Data._bridgeToObjectiveC()().super.isa;
  static String.Encoding.utf8.getter();
  v10 = String.data(using:allowLossyConversion:)();
  v12 = v11;
  result = (*(v5 + 8))(v8, v4);
  if (v12 >> 60 == 15)
  {
    goto LABEL_27;
  }

  Data._bridgeToObjectiveC()();
  result = sub_1000A452C(v10, v12);
  v14 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v14 != 2)
    {
      v15 = 0;
      goto LABEL_12;
    }

    v17 = *(a1 + 16);
    v16 = *(a1 + 24);
    v18 = __OFSUB__(v16, v17);
    v15 = v16 - v17;
    if (!v18)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v14)
  {
    v15 = BYTE6(a2);
    goto LABEL_12;
  }

  LODWORD(v15) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
    goto LABEL_25;
  }

  v15 = v15;
LABEL_12:
  v19 = v15 - 16;
  if (!__OFSUB__(v15, 16))
  {
    sub_1000A0CD8(a1, a2);
    sub_10015319C(v19, a1, a2, &v27);
    v20 = v27;
    v21 = v28;
    sub_1000A0CD8(a1, a2);
    result = sub_1001A36A0(16, a1, a2, &v27);
    v22 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v22 != 2)
      {
        result = 0;
        goto LABEL_23;
      }

      v24 = *(v20 + 16);
      v23 = *(v20 + 24);
      result = v23 - v24;
      if (!__OFSUB__(v23, v24))
      {
        goto LABEL_23;
      }

      __break(1u);
    }

    else if (!v22)
    {
      result = BYTE6(v21);
LABEL_23:
      v27 = sub_1000B2E80(result);
      v28 = v25;
      sub_1000AF81C(&v27, v9.super.isa);
      return v27;
    }

    if (!__OFSUB__(HIDWORD(v20), v20))
    {
      result = HIDWORD(v20) - v20;
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1000B3CF8(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v2[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_clientQueue];
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_1000B53A8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100275FD8;
  v15 = _Block_copy(aBlock);
  v16 = v2;
  sub_1000B4F20(a1, a2);
  static DispatchQoS.unspecified.getter();
  v20 = &_swiftEmptyArrayStorage;
  sub_1000B5038(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v19);
}

uint64_t sub_1000B4F20(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000A0CD8(a1, a2);
  }

  return a1;
}

unint64_t sub_1000B4F34()
{
  result = qword_1002A7130;
  if (!qword_1002A7130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7130);
  }

  return result;
}

uint64_t sub_1000B4FE0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B5020(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000B5038(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000B50A8@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = 0;
  return result;
}

uint64_t sub_1000B5110(int a1, int a2)
{
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  v5 = *(v2 + 56);
  v7 = *(v2 + 64);
  return sub_1000ACB98(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32));
}

uint64_t sub_1000B5150(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100095274(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000B51CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100095274(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000B5234()
{
  sub_1000A0D2C(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B5274(uint64_t a1, unint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[2];
  return sub_1000A69F8(a1, a2, v3, v4);
}

uint64_t sub_1000B52A0()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_1000A0D2C(*(v0 + 16), v1);
  }

  sub_1000A0D2C(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000B5308()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B5358()
{
  v1 = *(v0 + 32);
  if (v1 >> 60 != 15)
  {
    sub_1000A0D2C(*(v0 + 24), v1);
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t getEnumTagSinglePayload for PairSetupError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PairSetupError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000B5554()
{
  result = qword_1002A7180;
  if (!qword_1002A7180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7180);
  }

  return result;
}

uint64_t sub_1000B55F8()
{
  v0 = type metadata accessor for Logger();
  sub_100093D84(v0, qword_1002A71F0);
  sub_100093DE8(v0, qword_1002A71F0);
  return Logger.init(subsystem:category:)();
}

id sub_1000B5678()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC14dockaccessoryd24dockCameraCaptureHandler_logger;
  Logger.init(subsystem:category:)();
  (*(v3 + 16))(v6, &v1[v7], v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "camera capture interface open", v10, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v11 = type metadata accessor for dockCameraCaptureHandler();
  v13.receiver = v1;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, "init");
}

uint64_t sub_1000B5858@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for Logger();
  v31 = *(v2 - 8);
  v3 = *(v31 + 64);
  __chkstk_darwin(v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v29 - v11;
  v13 = type metadata accessor for Errors();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v12, 1, 1, v13);
  v16 = [objc_opt_self() currentConnection];
  if (v16)
  {
    v17 = v16;
    v29[0] = v2;
    v30 = v15;
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v18 = sub_10019B91C(v17);
    if (v19)
    {
      v20 = v18;
      v21 = v19;
      sub_100095C84(v12, &unk_1002A6F30, &unk_10023C4D0);
      v22 = type metadata accessor for DKXPCClientApplication(0);
      result = v30(&a1[*(v22 + 24)], 1, 1, v13);
      *a1 = v17;
      *(a1 + 1) = v20;
      *(a1 + 2) = v21;
      return result;
    }

    (*(v31 + 16))(v5, v29[1] + OBJC_IVAR____TtC14dockaccessoryd24dockCameraCaptureHandler_logger, v29[0]);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Failed fetching App ID from connection", v27, 2u);
    }

    (*(v31 + 8))(v5, v29[0]);
    sub_100095C84(v12, &unk_1002A6F30, &unk_10023C4D0);
    *v10 = 0xD000000000000026;
    *(v10 + 1) = 0x800000010022FA70;
    (*(v14 + 104))(v10, enum case for Errors.NotFound(_:), v13);
    v30(v10, 0, 1, v13);
    sub_1000A089C(v10, v12);
    v28 = type metadata accessor for DKXPCClientApplication(0);
    result = sub_1000A089C(v12, &a1[*(v28 + 24)]);
    *(a1 + 2) = 0;
    *a1 = v17;
  }

  else
  {
    sub_100095C84(v12, &unk_1002A6F30, &unk_10023C4D0);
    *v10 = 0xD000000000000017;
    *(v10 + 1) = 0x800000010022FA50;
    (*(v14 + 104))(v10, enum case for Errors.XPCNil(_:), v13);
    v15(v10, 0, 1, v13);
    sub_1000A089C(v10, v12);
    v24 = type metadata accessor for DKXPCClientApplication(0);
    result = sub_1000A089C(v12, &a1[*(v24 + 24)]);
    *(a1 + 2) = 0;
    *a1 = 0;
  }

  *(a1 + 1) = 0;
  return result;
}

void sub_1000B5DA8(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_1000B5E6C(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(void *, void *, id, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(a3, a4, v13, v10);
  _Block_release(v10);
  _Block_release(v10);
}

void sub_1000B5F48(void *a1, int a2, void *aBlock, void *a4)
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  sub_1000B9C48(v6, a4);
  _Block_release(v6);
  _Block_release(v6);
}

void sub_1000B606C(void *a1, int a2, void *aBlock, void (*a4)(void *))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4(v6);
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t type metadata accessor for dockCameraCaptureHandler()
{
  result = qword_1002A7230;
  if (!qword_1002A7230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B61C4()
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

void sub_1000B6254(int a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v24[1] = a4;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A66B8 != -1)
  {
    swift_once();
  }

  v14 = sub_100093DE8(v9, qword_1002A71F0);
  (*(v10 + 16))(v13, v14, v9);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24[0] = a5;
    v19 = v18;
    v25[0] = v18;
    v25[1] = a2;
    *v17 = 67109378;
    *(v17 + 4) = a1;
    *(v17 + 8) = 2080;
    v25[2] = a3;

    sub_100095274(&unk_1002A6F20, &unk_10023C660);
    v20 = String.init<A>(describing:)();
    v22 = sub_1000952D4(v20, v21, v25);

    *(v17 + 10) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, v24[0], v17, 0x12u);
    sub_100095808(v19);
  }

  (*(v10 + 8))(v13, v9);
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1001A1AA8(Strong);
}

id sub_1000B65BC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000B6618(void *a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  v29 = a2;
  v4 = type metadata accessor for Logger();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v8 = qword_1002B1CF0;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock;
  v13 = *(v8 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock);

  os_unfair_lock_lock(v13 + 4);

  v14 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__appIDsOptedOutOfSystemTracking;
  v15 = swift_beginAccess();
  v16 = *(v8 + v14);
  v32[0] = v9;
  v32[1] = v11;
  __chkstk_darwin(v15);
  *(&v28 - 2) = v32;

  LOBYTE(v9) = sub_10019EE0C(sub_1000BAB94, (&v28 - 4), v16);

  v17 = a1;
  v18 = v9 ^ 1;
  v19 = *(v8 + v12);

  os_unfair_lock_unlock(v19 + 4);

  v20 = v30;
  (*(v30 + 16))(v7, v29 + OBJC_IVAR____TtC14dockaccessoryd24dockCameraCaptureHandler_logger, v4);
  v21 = v17;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412546;
    *(v24 + 4) = v21;
    *v25 = v17;
    *(v24 + 12) = 1024;
    *(v24 + 14) = v18 & 1;
    v26 = v21;
    _os_log_impl(&_mh_execute_header, v22, v23, "app %@ tracking enabled: %{BOOL}d", v24, 0x12u);
    sub_100095C84(v25, &unk_1002A6F60, &unk_10023C4E0);
  }

  (*(v20 + 8))(v7, v4);
  return (*(v31 + 16))(v31, v18 & 1, 0);
}

void sub_1000B6934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Errors();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() currentConnection];
  if (v15)
  {
    if (qword_1002A6780 != -1)
    {
      v26 = v15;
      swift_once();
      v15 = v26;
    }

    v16 = v15;
    [v15 processIdentifier];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
    v28 = v16;
    sub_1001A1870(v17, v19, v16);

    (*(a3 + 16))(a3, 1, 0);
    v20 = v28;
  }

  else
  {
    (*(v11 + 16))(v14, a2 + OBJC_IVAR____TtC14dockaccessoryd24dockCameraCaptureHandler_logger, v10);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed fetching current NSXPCConnection, cannot construct client", v23, 2u);
    }

    (*(v11 + 8))(v14, v10);
    *v9 = 0xD000000000000017;
    v9[1] = 0x800000010022FA50;
    (*(v6 + 104))(v9, enum case for Errors.XPCNil(_:), v5);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v6 + 16))(v24, v9, v5);
    v25 = _convertErrorToNSError(_:)();
    (*(a3 + 16))(a3, 0, v25);

    (*(v6 + 8))(v9, v5);
  }
}

void sub_1000B6D18(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v7 = type metadata accessor for Errors();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_opt_self() currentConnection];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 processIdentifier];
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v20 = qword_1002B1CF0;
    v21 = CameraSessionInformation.appId.getter();
    v23 = v22;
    v24 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v25 = *(v20 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v25 + 4);

    v26 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_appIdMap;
    swift_beginAccess();

    v27 = *(v20 + v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *(v20 + v26);
    *(v20 + v26) = 0x8000000000000000;
    sub_1001EB828(v21, v23, v19, isUniquelyReferenced_nonNull_native);
    *(v20 + v26) = v40;
    swift_endAccess();
    v29 = *(v20 + v24);

    os_unfair_lock_unlock(v29 + 4);

    if (a2)
    {
      sub_10018B174(a1);
      type metadata accessor for CameraSessionInformation();
      isa = Array._bridgeToObjectiveC()().super.isa;
      (*(v39 + 16))(v39, isa, 0);
    }

    else
    {
      type metadata accessor for CameraSessionInformation();
      v37 = Array._bridgeToObjectiveC()().super.isa;
      (*(v39 + 16))(v39, v37, 0);
    }
  }

  else
  {
    (*(v13 + 16))(v16, a3 + OBJC_IVAR____TtC14dockaccessoryd24dockCameraCaptureHandler_logger, v12);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed fetching current NSXPCConnection, cannot construct client", v33, 2u);
    }

    (*(v13 + 8))(v16, v12);
    *v11 = 0xD000000000000017;
    v11[1] = 0x800000010022FA50;
    (*(v8 + 104))(v11, enum case for Errors.XPCNil(_:), v7);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v8 + 16))(v34, v11, v7);
    v35 = _convertErrorToNSError(_:)();
    type metadata accessor for CameraSessionInformation();
    v36 = Array._bridgeToObjectiveC()().super.isa;
    (*(v39 + 16))(v39, v36, v35);

    (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_1000B71E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Errors();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_opt_self() currentConnection];
  if (v16)
  {

    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v17 = qword_1002B1CF0;
    v18 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v19 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v19 + 4);

    v20 = *(v17 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
    v21 = *(v17 + v18);
    v22 = v20;

    os_unfair_lock_unlock(v21 + 4);

    if (v20)
    {
      v23 = dispatch thunk of DockCoreAccessory.info.getter();

      type metadata accessor for TrackingSummaryInternal();
      v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
      v27 = static TrackingSummaryInternal.decode(data:)();
      sub_1000A0D2C(v24, v26);
      if (v27)
      {
        v28 = *(v17 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_idsServer);
        if (v28)
        {
          v29 = v28;
          sub_1001BB39C(v27);
        }

        sub_10018D4B4(v27);
        sub_1000B7698(v23, a1, sub_1000BAAE0, &unk_100276158, &selRef_trackingSummaryDataWithInfo_data_);
        (*(a3 + 16))(a3, 1, 0);
      }

      else
      {
      }
    }

    v36 = *(a3 + 16);

    return v36(a3, 0, 0);
  }

  else
  {
    (*(v12 + 16))(v15, a2 + OBJC_IVAR____TtC14dockaccessoryd24dockCameraCaptureHandler_logger, v11);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Failed fetching current NSXPCConnection, cannot construct client", v32, 2u);
    }

    (*(v12 + 8))(v15, v11);
    *v10 = 0xD000000000000017;
    v10[1] = 0x800000010022FA50;
    (*(v7 + 104))(v10, enum case for Errors.XPCNil(_:), v6);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v7 + 16))(v33, v10, v6);
    v34 = _convertErrorToNSError(_:)();
    (*(a3 + 16))(a3, 0, v34);

    (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_1000B7698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v50 = a5;
  v46 = a4;
  v45 = a3;
  v49 = a2;
  v55 = a1;
  v44 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v44 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v44);
  v51 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v8 = *(v43 - 8);
  v9 = v8[8];
  __chkstk_darwin(v43);
  v52 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A6780 != -1)
  {
LABEL_21:
    swift_once();
  }

  v11 = qword_1002B1CF0;
  sub_1001F1F04(&_swiftEmptyArrayStorage);

  v12 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock;
  v13 = *(v11 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock);

  os_unfair_lock_lock(v13 + 4);

  v14 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrackingSummaryClients;
  swift_beginAccess();
  v15 = *(v11 + v14);
  v54 = v11;
  v16 = *(v11 + v12);

  os_unfair_lock_unlock(v16 + 4);

  v17 = 0;
  v18 = 1 << *(v15 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v15 + 64);
  v53 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__txnLock;
  v48 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_txn;
  v21 = (v18 + 63) >> 6;
  v42 = v57;
  v41 = (v5 + 8);
  v40 = v8 + 1;
  v22 = &stru_10029A000;
  while (v20)
  {
LABEL_11:
    v24 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v25 = *(v15 + 56) + ((v17 << 10) | (16 * v24));
    if (*v25)
    {
      v26 = *(v25 + 8);
      v27 = *v25;
      v5 = v26;
      v8 = [v27 v22[62].attr];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100095274(&qword_1002A9200, &qword_10023C4F0);
      if (swift_dynamicCast())
      {
        v28 = v59;
        v8 = sub_1000BAA94();
        v29 = v5;
        v5 = static NSObject.== infix(_:_:)();

        if (v5)
        {
          v47 = v28;
          v8 = v54;
          v30 = *(v54 + v53);

          os_unfair_lock_lock(v30 + 4);

          v31 = *(v8 + v48);
          if (v31)
          {
            v8 = v31[3];
            if (v8)
            {
              v57[2] = v45;
              v58 = v31;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              v57[0] = sub_100147FC8;
              v57[1] = v46;
              v39 = v31;
              v38 = _Block_copy(aBlock);
              swift_retain_n();
              v37 = v8;
              static DispatchQoS.unspecified.getter();
              v59 = &_swiftEmptyArrayStorage;
              sub_1000BAAE8(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
              sub_100095274(&unk_1002A6B60, qword_10023AE10);
              sub_1000BAB30();
              v32 = v44;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              v33 = v38;
              v34 = v37;
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              _Block_release(v33);

              (*v41)(v51, v32);
              (*v40)(v52, v43);
              v8 = v58;
            }
          }

          v35 = *(v54 + v53);

          os_unfair_lock_unlock(v35 + 4);

          v5 = v47;
          [v47 *v50];
        }

        swift_unknownObjectRelease();

        v22 = &stru_10029A000;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v23 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v23 >= v21)
    {
    }

    v20 = *(v15 + 64 + 8 * v23);
    ++v17;
    if (v20)
    {
      v17 = v23;
      goto LABEL_11;
    }
  }
}

uint64_t sub_1000B7C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Errors();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_opt_self() currentConnection];
  if (v16)
  {

    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v17 = qword_1002B1CF0;
    v18 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v19 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v19 + 4);

    v20 = *(v17 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
    v21 = *(v17 + v18);
    v22 = v20;

    os_unfair_lock_unlock(v21 + 4);

    if (v20)
    {
      v23 = dispatch thunk of DockCoreAccessory.info.getter();

      type metadata accessor for DKIntelligentTrackingState();
      v24 = static DKIntelligentTrackingState.decode(nsdata:)();
      if (v24)
      {
        v25 = v24;
        v26 = *(v17 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_idsServer);
        if (v26)
        {
          v27 = v26;
          sub_1001BA230(v25);
        }

        v28 = *(v17 + v18);

        os_unfair_lock_lock(v28 + 4);

        v29 = *(v17 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastTrackingSummaryDebug);
        *(v17 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastTrackingSummaryDebug) = v25;

        v30 = *(v17 + v18);

        os_unfair_lock_unlock(v30 + 4);

        type metadata accessor for TrackingStand();
        static TrackingStand._trackingSummaryInternalState(from:)();
        v31 = dispatch thunk of TrackingSummaryInternal.encode()();
        if (v32 >> 60 != 15)
        {
          v33 = v31;
          v34 = v32;
          isa = Data._bridgeToObjectiveC()().super.isa;
          sub_1000B7698(v23, isa, sub_1000BAAE0, &unk_100276158, &selRef_trackingSummaryDataWithInfo_data_);

          sub_1000A452C(v33, v34);
        }

        sub_1000B7698(v23, a1, sub_1000BABC4, &unk_100276180, &selRef_trackingSummaryDataDebugWithInfo_data_);
        (*(a3 + 16))(a3, 1, 0);
      }

      else
      {
      }
    }

    v42 = *(a3 + 16);

    return v42(a3, 0, 0);
  }

  else
  {
    (*(v12 + 16))(v15, a2 + OBJC_IVAR____TtC14dockaccessoryd24dockCameraCaptureHandler_logger, v11);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Failed fetching current NSXPCConnection, cannot construct client", v38, 2u);
    }

    (*(v12 + 8))(v15, v11);
    *v10 = 0xD000000000000017;
    v10[1] = 0x800000010022FA50;
    (*(v7 + 104))(v10, enum case for Errors.XPCNil(_:), v6);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v7 + 16))(v39, v10, v6);
    v40 = _convertErrorToNSError(_:)();
    (*(a3 + 16))(a3, 0, v40);

    (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_1000B81D4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v114 = a4;
  v104 = a2;
  v108 = a1;
  v111 = type metadata accessor for Logger();
  v109 = *(v111 - 8);
  v5 = *(v109 + 64);
  v6 = __chkstk_darwin(v111);
  v102 = v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v106 = v100 - v9;
  __chkstk_darwin(v8);
  v103 = (v100 - v10);
  v11 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v105 = (v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v13);
  v17 = (v100 - v16);
  __chkstk_darwin(v15);
  v19 = v100 - v18;
  v20 = type metadata accessor for Errors();
  v115 = *(v20 - 8);
  v21 = *(v115 + 64);
  v22 = __chkstk_darwin(v20);
  v101 = (v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v25 = v100 - v24;
  v26 = type metadata accessor for DKAPIUsageType();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DKXPCClientApplication(0);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v34 = v100 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = a3;
  sub_1000B5858(v34);
  v35 = *(v34 + 2);
  if (v35)
  {
    v110 = *(v34 + 1);
    v113 = v35;
  }

  else
  {
    v113 = 0xE700000000000000;
    v110 = 0x6E776F6E6B6E75;
  }

  (*(v27 + 104))(v30, enum case for DKAPIUsageType.selectSubject(_:), v26);

  v112 = DKAPIUsageType.rawValue.getter();
  (*(v27 + 8))(v30, v26);
  sub_1000A090C(&v34[*(v31 + 24)], v19);
  v36 = v115;
  v37 = v20;
  if ((*(v115 + 48))(v19, 1, v20) == 1)
  {
    sub_100095C84(v19, &unk_1002A6F30, &unk_10023C4D0);
    if (v108)
    {
      v38 = qword_1002A6780;
      v39 = v108;
      if (v38 != -1)
      {
        swift_once();
      }

      v40 = qword_1002B1CF0;
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;
      v44 = v39;
      v45 = sub_100194808(v41, v43);
      v47 = v46;

      if (v45)
      {
        v103 = v45;
        v48 = v47;
        v110 = v34;

        (*(v114 + 16))(v114, 1, 0);
        (*(v109 + 16))(v106, v107 + OBJC_IVAR____TtC14dockaccessoryd24dockCameraCaptureHandler_logger, v111);
        v49 = v104;
        v50 = v104;
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          *v53 = 138412290;
          *(v53 + 4) = v50;
          *v54 = v49;
          v55 = v50;
          _os_log_impl(&_mh_execute_header, v51, v52, "completing original selectSubject with err %@", v53, 0xCu);
          sub_100095C84(v54, &unk_1002A6F60, &unk_10023C4E0);
          v36 = v115;
        }

        (*(v109 + 8))(v106, v111);
        v100[1] = v48;
        v56 = v103;
        (v103)(v49 == 0, v49);
        v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v59 = v58;
        v60 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
        v61 = *(v40 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

        os_unfair_lock_lock(v61 + 4);

        swift_beginAccess();
        v62 = sub_1001E4D18(v57, v59);
        swift_endAccess();
        sub_1000BAA84(v62);
        v63 = *(v40 + v60);

        os_unfair_lock_unlock(v63 + 4);

        v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v66 = v65;

        v67 = v105;
        (*(v36 + 56))(v105, 1, 1, v37);
        sub_10018C604(v64, v66, v112, v67);
        sub_1000BAA84(v56);

        sub_100095C84(v67, &unk_1002A6F30, &unk_10023C4D0);
        return sub_1000BAA28(v110);
      }

      else
      {

        v81 = v109;
        v82 = v102;
        v83 = v44;
        v84 = v111;
        (*(v109 + 16))(v102, v107 + OBJC_IVAR____TtC14dockaccessoryd24dockCameraCaptureHandler_logger, v111);
        v85 = v83;
        v86 = v113;

        v87 = Logger.logObject.getter();
        v88 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v91 = v85;
          v92 = swift_slowAlloc();
          v116[0] = v92;
          *v89 = 136315394;
          v93 = sub_1000952D4(v110, v86, v116);
          v94 = v81;
          v95 = v93;

          *(v89 + 4) = v95;
          *(v89 + 12) = 2112;
          *(v89 + 14) = v91;
          *v90 = v108;
          v96 = v91;
          _os_log_impl(&_mh_execute_header, v87, v88, "Client %s responded but no completion exists for appID %@", v89, 0x16u);
          sub_100095C84(v90, &unk_1002A6F60, &unk_10023C4E0);
          v36 = v115;

          sub_100095808(v92);
          v85 = v91;

          (*(v94 + 8))(v102, v111);
        }

        else
        {

          (*(v81 + 8))(v82, v84);
        }

        v97 = v101;
        *v101 = 0x6C706D6F63206F6ELL;
        v97[1] = 0xED00006E6F697465;
        (*(v36 + 104))(v97, enum case for Errors.NotFound(_:), v37);
        sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
        swift_allocError();
        (*(v36 + 16))(v98, v97, v37);
        v99 = _convertErrorToNSError(_:)();
        (*(v114 + 16))(v114, 0, v99);

        (*(v36 + 8))(v97, v37);
        sub_1000BAA28(v34);
      }
    }

    v71 = v109;
    v72 = v103;
    v73 = v111;
    (*(v109 + 16))(v103, v107 + OBJC_IVAR____TtC14dockaccessoryd24dockCameraCaptureHandler_logger, v111);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v74, v75, "No appID, can't lookup completion", v76, 2u);
    }

    (*(v71 + 8))(v72, v73);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    v69 = swift_allocError();
    strcpy(v77, "missing appID");
    *(v77 + 7) = -4864;
    (*(v36 + 104))(v77, enum case for Errors.InvalidParameter(_:), v37);
    swift_willThrow();
  }

  else
  {
    (*(v36 + 32))(v25, v19, v20);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    v69 = swift_allocError();
    (*(v36 + 16))(v70, v25, v20);
    swift_willThrow();
    (*(v36 + 8))(v25, v20);
  }

  v78 = _convertErrorToNSError(_:)();
  (*(v114 + 16))(v114, 0, v78);

  v79 = v113;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v116[0] = v69;
  swift_errorRetain();
  sub_100095274(&qword_1002A7268, &unk_10023C680);
  v80 = swift_dynamicCast();
  (*(v36 + 56))(v17, v80 ^ 1u, 1, v37);
  sub_10018C604(v110, v79, v112, v17);

  sub_1000BAA28(v34);
  return sub_100095C84(v17, &unk_1002A6F30, &unk_10023C4D0);
}

uint64_t sub_1000B8ED4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v111 = a4;
  v102 = a2;
  v107 = a1;
  v106 = type metadata accessor for Logger();
  v108 = *(v106 - 8);
  v5 = *(v108 + 64);
  v6 = __chkstk_darwin(v106);
  v100 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v103 = &v99 - v9;
  __chkstk_darwin(v8);
  v101 = &v99 - v10;
  v11 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v104 = (&v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v13);
  v109 = (&v99 - v16);
  __chkstk_darwin(v15);
  v18 = &v99 - v17;
  v19 = type metadata accessor for Errors();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DKAPIUsageType();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DKXPCClientApplication(0);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v32 = &v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = a3;
  sub_1000B5858(v32);
  v33 = *(v32 + 2);
  if (v33)
  {
    v110 = *(v32 + 1);
    v113 = v33;
  }

  else
  {
    v113 = 0xE700000000000000;
    v110 = 0x6E776F6E6B6E75;
  }

  (*(v25 + 104))(v28, enum case for DKAPIUsageType.setRegionOfInterest(_:), v24);

  v112 = DKAPIUsageType.rawValue.getter();
  (*(v25 + 8))(v28, v24);
  sub_1000A090C(&v32[*(v29 + 24)], v18);
  v34 = v20;
  v35 = *(v20 + 48);
  v36 = v19;
  p_cb = (&OBJC_PROTOCOL___DKLogging + 64);
  v38 = &unk_1002B1000;
  if (v35(v18, 1, v19) == 1)
  {
    sub_100095C84(v18, &unk_1002A6F30, &unk_10023C4D0);
    v39 = v107;
    if (v107)
    {
      v101 = v32;
      v40 = qword_1002A6780;
      v41 = v107;
      v42 = v106;
      v43 = v108;
      if (v40 != -1)
      {
        swift_once();
      }

      v44 = qword_1002B1CF0;
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;
      v48 = v41;
      v49 = sub_100194938(v45, v47);
      v99 = v50;

      if (v49)
      {
        v109 = v49;
        v110 = v48;

        (*(v111 + 16))(v111, 1, 0);
        v51 = v103;
        (*(v43 + 16))(v103, v105 + OBJC_IVAR____TtC14dockaccessoryd24dockCameraCaptureHandler_logger, v42);
        v52 = v102;
        v53 = v102;
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          *v56 = 138412290;
          *(v56 + 4) = v53;
          *v57 = v52;
          v58 = v53;
          _os_log_impl(&_mh_execute_header, v54, v55, "completing original setRectOfInterest with err %@", v56, 0xCu);
          sub_100095C84(v57, &unk_1002A6F60, &unk_10023C4E0);
          v42 = v106;
        }

        (*(v108 + 8))(v51, v42);
        v59 = v109;
        (v109)(1, 0);
        v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v62 = v61;
        v63 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
        v64 = *(v44 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

        os_unfair_lock_lock(v64 + 4);

        swift_beginAccess();
        v65 = sub_1001E4D18(v60, v62);
        swift_endAccess();
        sub_1000BAA84(v65);
        v66 = *(v44 + v63);

        os_unfair_lock_unlock(v66 + 4);

        v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v69 = v68;
        v70 = v110;

        v71 = v104;
        (*(v34 + 56))(v104, 1, 1, v36);
        sub_10018C604(v67, v69, v112, v71);
        sub_1000BAA84(v59);

        sub_100095C84(v71, &unk_1002A6F30, &unk_10023C4D0);
        return sub_1000BAA28(v101);
      }

      v82 = v100;
      (*(v43 + 16))(v100, v105 + OBJC_IVAR____TtC14dockaccessoryd24dockCameraCaptureHandler_logger, v42);
      v83 = v48;
      v84 = v113;

      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v113 = v84;
        v88 = v87;
        v89 = swift_slowAlloc();
        v90 = v43;
        v91 = swift_slowAlloc();
        v114[0] = v91;
        *v88 = 136315394;
        *(v88 + 4) = sub_1000952D4(v110, v113, v114);
        *(v88 + 12) = 2112;
        *(v88 + 14) = v83;
        *v89 = v39;
        v92 = v83;
        _os_log_impl(&_mh_execute_header, v85, v86, "Client %s responded but no completion exists for appID %@", v88, 0x16u);
        sub_100095C84(v89, &unk_1002A6F60, &unk_10023C4E0);

        sub_100095808(v91);

        (*(v90 + 8))(v100, v106);
      }

      else
      {

        (*(v43 + 8))(v82, v42);
      }

      p_cb = &OBJC_PROTOCOL___DKLogging.cb;
      v93 = v83;
      v32 = v101;
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
      v73 = swift_allocError();
      strcpy(v94, "no completion");
      *(v94 + 7) = -4864;
      (*(v34 + 104))(v94, enum case for Errors.NotFound(_:), v36);
      swift_willThrow();

      v38 = &unk_1002B1000;
    }

    else
    {
      v75 = v108;
      v76 = v106;
      v77 = v101;
      (*(v108 + 16))(v101, v105 + OBJC_IVAR____TtC14dockaccessoryd24dockCameraCaptureHandler_logger, v106);
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&_mh_execute_header, v78, v79, "No appID, can't lookup completion", v80, 2u);
      }

      (*(v75 + 8))(v77, v76);
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
      v73 = swift_allocError();
      strcpy(v81, "missing appID");
      *(v81 + 7) = -4864;
      (*(v34 + 104))(v81, enum case for Errors.InvalidParameter(_:), v36);
      swift_willThrow();
      p_cb = (&OBJC_PROTOCOL___DKLogging + 64);
    }
  }

  else
  {
    (*(v34 + 32))(v23, v18, v19);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    v73 = swift_allocError();
    (*(v34 + 16))(v74, v23, v19);
    swift_willThrow();
    (*(v34 + 8))(v23, v19);
  }

  v95 = _convertErrorToNSError(_:)();
  (*(v111 + 16))(v111, 0, v95);

  if (*(p_cb + 240) != -1)
  {
    swift_once();
  }

  v96 = v38[414];
  v114[0] = v73;
  swift_errorRetain();
  sub_100095274(&qword_1002A7268, &unk_10023C680);
  v97 = v109;
  v98 = swift_dynamicCast();
  (*(v34 + 56))(v97, v98 ^ 1u, 1, v36);
  sub_10018C604(v110, v113, v112, v97);

  sub_1000BAA28(v32);
  return sub_100095C84(v97, &unk_1002A6F30, &unk_10023C4D0);
}

void sub_1000B9B38(uint64_t a1)
{
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v2 = qword_1002B1CF0;
  v3 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v4 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v4 + 4);

  v5 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_accessories;
  swift_beginAccess();
  v6 = *(v2 + v5);
  v7 = *(v2 + v3);

  os_unfair_lock_unlock(v7 + 4);

  type metadata accessor for DockCoreAccessory();
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a1 + 16))(a1, isa, 0);
}

void sub_1000B9C48(uint64_t a1, void *a2)
{
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v4 = qword_1002B1CF0;
  v5 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v6 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v6 + 4);

  v7 = *(v4 + *a2);
  v8 = *(v4 + v5);
  v9 = v7;

  os_unfair_lock_unlock(v8 + 4);

  (*(a1 + 16))(a1, v9, 0);
}

uint64_t sub_1000B9D3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Errors();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1 + OBJC_IVAR____TtC14dockaccessoryd24dockCameraCaptureHandler_logger, v9);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "getAccessoryDiagnostics unsupported on entitled interface", v16, 2u);
  }

  (*(v10 + 8))(v13, v9);
  *v8 = 0xD000000000000021;
  v8[1] = 0x800000010022FAA0;
  (*(v5 + 104))(v8, enum case for Errors.OperationNotSupported(_:), v4);
  sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
  swift_allocError();
  (*(v5 + 16))(v17, v8, v4);
  v18 = _convertErrorToNSError(_:)();
  (*(a2 + 16))(a2, 0, v18);

  (*(v5 + 8))(v8, v4);
}

uint64_t sub_1000BA018(uint64_t a1)
{
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v2 = qword_1002B1CF0;
  v3 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v4 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v4 + 4);

  v5 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonState);
  v6 = *(v2 + v3);

  os_unfair_lock_unlock(v6 + 4);

  v7 = *(a1 + 16);

  return v7(a1, v5, 0);
}

uint64_t sub_1000BA0EC(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v52 - v8;
  v10 = [a1 processIdentifier];
  v11 = String._bridgeToObjectiveC()();
  v12 = [a1 valueForEntitlement:v11];

  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v68 = 0u;
    v69 = 0u;
  }

  aBlock = v68;
  v65 = v69;
  if (*(&v69 + 1))
  {
    v13 = swift_dynamicCast();
    if (v13)
    {
      v14 = v62;
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v15 = v63;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    sub_100095C84(&aBlock, &qword_1002A9210, &unk_10023BE70);
    v14 = 0;
    v15 = 0;
  }

  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v57 = sub_10019B91C(a1);
  v17 = v16;
  if (qword_1002A66B8 != -1)
  {
    swift_once();
  }

  v18 = sub_100093DE8(v2, qword_1002A71F0);
  v19 = v3[2];
  v59 = v18;
  v60 = v3 + 2;
  v58 = v19;
  (v19)(v9);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v61 = v9;
  v22 = v21;

  v23 = os_log_type_enabled(v20, v22);
  v56 = v14;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v55 = v3;
    v25 = v24;
    v52 = swift_slowAlloc();
    *&v68 = v52;
    *v25 = 67109634;
    *(v25 + 4) = v10;
    *(v25 + 8) = 2080;
    *&aBlock = v14;
    *(&aBlock + 1) = v15;

    sub_100095274(&unk_1002A6F20, &unk_10023C660);
    v54 = v7;
    v26 = String.init<A>(describing:)();
    v53 = v15;
    v28 = v2;
    v29 = v10;
    v30 = sub_1000952D4(v26, v27, &v68);

    *(v25 + 10) = v30;
    *(v25 + 18) = 2080;
    *&aBlock = v57;
    *(&aBlock + 1) = v17;
    v7 = v54;
    v31 = String.init<A>(describing:)();
    v33 = sub_1000952D4(v31, v32, &v68);
    v15 = v53;

    *(v25 + 20) = v33;
    v10 = v29;
    v2 = v28;
    _os_log_impl(&_mh_execute_header, v20, v22, "new connection from pid %d, appID entitlement %s, appID %s", v25, 0x1Cu);
    swift_arrayDestroy();

    v34 = v55;

    v35 = v34[1];
    v35(v61, v28);
  }

  else
  {

    v35 = v3[1];
    v35(v61, v2);
  }

  v36 = String._bridgeToObjectiveC()();
  v37 = [a1 valueForEntitlement:v36];

  if (v37)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v68 = 0u;
    v69 = 0u;
  }

  aBlock = v68;
  v65 = v69;
  if (*(&v69 + 1))
  {
    if (swift_dynamicCast() & 1) != 0 && (v62)
    {
      v38 = objc_opt_self();
      v61 = [v38 interfaceWithProtocol:&OBJC_PROTOCOL____TtP11DockKitCore31DockDaemonCameraCaptureProtocol_];
      v39 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v40 = swift_allocObject();
      *(v40 + 16) = v10;
      v41 = v56;
      *(v40 + 24) = v56;
      *(v40 + 32) = v15;
      *(v40 + 40) = v39;
      v66 = sub_1000BA9B8;
      v67 = v40;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v65 = sub_100147FC8;
      *(&v65 + 1) = &unk_1002760E0;
      v42 = _Block_copy(&aBlock);

      [a1 setInvalidationHandler:v42];
      _Block_release(v42);
      v43 = swift_allocObject();
      *(v43 + 16) = v10;
      *(v43 + 24) = v41;
      *(v43 + 32) = v15;
      *(v43 + 40) = v39;
      v66 = sub_1000BA9FC;
      v67 = v43;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v65 = sub_100147FC8;
      *(&v65 + 1) = &unk_100276130;
      v44 = _Block_copy(&aBlock);

      [a1 setInterruptionHandler:v44];
      _Block_release(v44);
      v45 = v61;
      [a1 setExportedInterface:v61];
      v46 = [v38 interfaceWithProtocol:&OBJC_PROTOCOL____TtP11DockKitCore31DockClientCameraCaptureProtocol_];
      [a1 setRemoteObjectInterface:v46];
      v47 = [objc_allocWithZone(type metadata accessor for dockCameraCaptureHandler()) init];
      [a1 setExportedObject:v47];
      [a1 resume];

      return 1;
    }
  }

  else
  {

    sub_100095C84(&aBlock, &qword_1002A9210, &unk_10023BE70);
  }

  v58(v7, v59, v2);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 67109120;
    *(v51 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v49, v50, "process %d is not entitled for cameracapture. Add entitlements and try again", v51, 8u);
  }

  v35(v7, v2);
  [a1 invalidate];
  return 0;
}

uint64_t sub_1000BA97C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BA9E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000BAA28(uint64_t a1)
{
  v2 = type metadata accessor for DKXPCClientApplication(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000BAA84(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1000BAA94()
{
  result = qword_1002A7270;
  if (!qword_1002A7270)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002A7270);
  }

  return result;
}

uint64_t sub_1000BAAE8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000BAB30()
{
  result = qword_1002A7160;
  if (!qword_1002A7160)
  {
    sub_10009589C(&unk_1002A6B60, qword_10023AE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7160);
  }

  return result;
}

char *sub_1000BABD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Logger.init(subsystem:category:)();
  v7 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_txn;
  v8 = type metadata accessor for Transaction();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  *(v11 + 48) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *(v11 + 16) = 0;
  swift_unknownObjectWeakInit();
  *(v11 + 80) = 0;
  *(v11 + 88) = 1;
  Logger.init(subsystem:category:)();
  *(v11 + 64) = 0xD000000000000027;
  *(v11 + 72) = 0x800000010022FFC0;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0x403E000000000000;
  swift_unknownObjectWeakAssign();
  *&v3[v7] = v11;
  v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_busy] = 0;
  *&v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socket] = 0;
  v12 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socketLock;
  sub_100095274(&unk_1002A7370, &qword_10023AB30);
  v13 = swift_allocObject();
  *&v3[v12] = v13;
  v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_dataStreamOpenInProgress] = 0;
  *&v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_maxSocketIdleDuration] = 0x404E000000000000;
  *&v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socketIdleTimer] = 0;
  *(v13 + 16) = 0;
  *&v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_assetID] = 0;
  *&v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_stagedAssetID] = 0;
  v14 = &v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_msgFeedback];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  v15 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_profile;
  *&v3[v15] = [objc_allocWithZone(type metadata accessor for AccessoryFirmwareUpdateProfile()) init];
  v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_reachable] = 0;
  v16 = &v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_startPercent];
  *v16 = 0;
  v16[8] = 1;
  *&v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_endPercent] = 0;
  *&v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_firmwareUpdateInterval] = 0xBFF0000000000000;
  *&v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_accessory] = a1;
  *&v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_uarpAccessory] = a2;
  *&v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_manager] = a3;
  v17 = *(a1 + 40);
  *&v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_workQueue] = v17;
  v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state] = 0;
  v21.receiver = v3;
  v21.super_class = type metadata accessor for AccessoryFirmwareUpdateSession();
  v18 = v17;
  v19 = objc_msgSendSuper2(&v21, "init");
  *(*&v19[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_txn] + 48) = &off_100276238;
  swift_unknownObjectWeakAssign();
  return v19;
}

id sub_1000BAEB4()
{
  v1 = *&v0[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socket];
  if (v1)
  {
    [v1 close];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for AccessoryFirmwareUpdateSession();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for AccessoryFirmwareUpdateSession()
{
  result = qword_1002A72F8;
  if (!qword_1002A72F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000BB108()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v6 = *(v21 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v21);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_msgFeedback;
  swift_beginAccess();
  sub_1000C41E0(&v1[v10], aBlock);
  if (v27)
  {
    sub_1000A097C(aBlock, v23);
    sub_100095C84(aBlock, &unk_1002A7380, &qword_10023E970);
    v11 = v24;
    v12 = v25;
    sub_1000A09E0(v23, v24);
    (*(v12 + 16))(0, v11, v12);
    sub_100095808(v23);
  }

  else
  {
    sub_100095C84(aBlock, &unk_1002A7380, &qword_10023E970);
  }

  v13 = *(*&v1[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_manager] + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_uarpController);
  v14 = *&v1[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_workQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v1;
  v28 = sub_1000C452C;
  v29 = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  v27 = &unk_100276570;
  v16 = _Block_copy(aBlock);
  v17 = v13;
  v18 = v14;
  v1;
  static DispatchQoS.unspecified.getter();
  v23[0] = &_swiftEmptyArrayStorage;
  sub_1000C42FC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000BAB30();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v22 + 8))(v5, v2);
  (*(v6 + 8))(v9, v21);

  sub_1000A1168();
  v19 = swift_allocError();
  *v20 = 0xD000000000000033;
  *(v20 + 8) = 0x8000000100230280;
  *(v20 + 16) = 6;
  sub_1000BBD88(v19);
}

uint64_t sub_1000BB4EC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 accessoryUnreachable:*(a2 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_uarpAccessory)];
  if ((result & 1) == 0)
  {
    (*(v5 + 16))(v8, a2 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger, v4);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "UARP accessoryUnreachable failed", v12, 2u);
    }

    result = (*(v5 + 8))(v8, v4);
  }

  *(a2 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_reachable) = 0;
  if (*(a2 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state))
  {
    *(a2 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state) = 0;
  }

  return result;
}

uint64_t sub_1000BB690(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v9 = *(v20 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v20);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v2[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_profile];
  sub_10013A508(a1);

  v14 = *&v2[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_workQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  aBlock[4] = sub_1000C43F0;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_1002764F8;
  v16 = _Block_copy(aBlock);
  v17 = v14;
  v18 = v2;
  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_1000C42FC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000BAB30();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v20);
}

uint64_t sub_1000BB970(_BYTE *a1)
{
  v2 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v13 - v4;
  result = sub_1000BBC14(0, 2, 0);
  if (result != 5)
  {
    a1[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state] = result;
    if (result > 2u)
    {
      if (result != 3)
      {
        if (result != 4)
        {
          return result;
        }

        goto LABEL_8;
      }

      sub_1000A1168();
      v10 = swift_allocError();
      *v11 = 0xD00000000000002CLL;
      *(v11 + 8) = 0x8000000100230220;
      v12 = 9;
    }

    else
    {
      if (result != 1)
      {
        if (result != 2)
        {
          return result;
        }

LABEL_8:
        v7 = type metadata accessor for TaskPriority();
        (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
        v8 = swift_allocObject();
        v8[2] = 0;
        v8[3] = 0;
        v8[4] = a1;
        v9 = a1;
        sub_1001B6A08(0, 0, v5, &unk_10023C698, v8);
      }

      sub_1000A1168();
      v10 = swift_allocError();
      *v11 = 0xD00000000000002DLL;
      *(v11 + 8) = 0x8000000100230250;
      v12 = 8;
    }

    *(v11 + 16) = v12;
    sub_1000BBD88(v10);
  }

  return result;
}

uint64_t sub_1000BBB84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10009862C;

  return sub_1000BC228();
}

uint64_t sub_1000BBC14(char a1, char a2, char a3)
{
  if (a3)
  {
    goto LABEL_13;
  }

  if (a2 != 2)
  {
    *(v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_reachable) = a2 & 1;
LABEL_13:
    if (*(v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state))
    {
      return 0;
    }

    else
    {
      return 5;
    }
  }

  if ((*(v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_reachable) & 1) == 0)
  {
    goto LABEL_13;
  }

  if (a1 == 2)
  {
    v4 = *(*(v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_profile) + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateProfile_updateNotReadyReasons);
    v9 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state);
    if (v9 == 4)
    {
      v6 = 5;
    }

    else
    {
      v6 = 4;
    }

    if (v9 == 3)
    {
      v7 = 5;
    }

    else
    {
      v7 = 3;
    }

    goto LABEL_22;
  }

  if (a1 == 1)
  {
    v4 = *(*(v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_profile) + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateProfile_stagingNotReadyReasons);
    v5 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state);
    if (v5 == 2)
    {
      v6 = 5;
    }

    else
    {
      v6 = 2;
    }

    if (v5 == 1)
    {
      v7 = 5;
    }

    else
    {
      v7 = 1;
    }

LABEL_22:
    if (v4)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  result = *(v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state);
  if (*(v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state) > 2u)
  {
    if (result == 3 || result == 4)
    {
      v10 = *(*(v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_profile) + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateProfile_updateNotReadyReasons) == 0;
      v11 = 3;
LABEL_32:
      if (v10)
      {
        return v11 + 1;
      }

      else
      {
        return v11;
      }
    }
  }

  else if (result == 1 || result == 2)
  {
    v10 = *(*(v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_profile) + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateProfile_stagingNotReadyReasons) == 0;
    v11 = 1;
    goto LABEL_32;
  }

  return result;
}

uint64_t sub_1000BBD88(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socketLock;
  v4 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socketLock);

  os_unfair_lock_lock(v4 + 4);

  v5 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socket);
  if (v5)
  {
    [v5 close];
  }

  v6 = *(v1 + v3);

  os_unfair_lock_unlock(v6 + 4);

  v8 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_startPercent;
  if (a1 && (*(v1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_startPercent + 8) & 1) == 0)
  {
    swift_errorRetain();
    sub_1000BD3D0(0, 0, a1, 0);

    v8 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_startPercent;
  }

  v9 = v1 + v8;
  *v9 = 0;
  *(v9 + 8) = 1;
  return result;
}

uint64_t sub_1000BBE5C()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[6] = v5;
  *v5 = v1;
  v5[1] = sub_1000BBF48;

  return sub_1000BC228();
}

uint64_t sub_1000BBF48()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (!v0)
  {
    v4 = v3[5];

    v5 = v3[1];

    __asm { BRAA            X1, X16 }
  }

  return (_swift_task_switch)(sub_1000BC084, 0, 0);
}

uint64_t sub_1000BC084()
{
  v1 = v0[7];
  (*(v0[4] + 16))(v0[5], v0[2] + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger, v0[3]);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[7];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Registering accessory failed with error %@", v6, 0xCu);
    sub_100095C84(v7, &unk_1002A6F60, &unk_10023C4E0);
  }

  else
  {
    v9 = v0[7];
  }

  (*(v0[4] + 8))(v0[5], v0[3]);
  v10 = v0[5];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000BC228()
{
  v1[26] = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v1[27] = v2;
  v3 = *(v2 - 8);
  v1[28] = v3;
  v4 = *(v3 + 64) + 15;
  v1[29] = swift_task_alloc();
  v5 = type metadata accessor for DispatchQoS();
  v1[30] = v5;
  v6 = *(v5 - 8);
  v1[31] = v6;
  v7 = *(v6 + 64) + 15;
  v1[32] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v1[33] = v8;
  v9 = *(v8 - 8);
  v1[34] = v9;
  v10 = *(v9 + 64) + 15;
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();

  return (_swift_task_switch)(sub_1000BC3AC, 0, 0);
}

uint64_t sub_1000BC3AC()
{
  v1 = v0[26];
  v2 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socketLock;
  v0[37] = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socketLock;
  v3 = *(v1 + v2);

  os_unfair_lock_lock(v3 + 4);

  v4 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socket;
  v0[38] = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socket;
  v5 = *(v1 + v4);
  v0[39] = v5;
  v6 = *(v1 + v2);
  swift_unknownObjectRetain();

  os_unfair_lock_unlock(v6 + 4);

  if (v5 && ![v5 isClosed])
  {
    swift_unknownObjectRelease();
    v25 = v0[35];
    v24 = v0[36];
    v26 = v0[32];
    v27 = v0[29];

    v28 = v0[1];
  }

  else
  {
    v7 = v0[26];
    v8 = *(*(v7 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_accessory) + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_dataStreamController);
    v0[40] = v8;
    if (v8)
    {
      v9 = v0[36];
      v10 = v0[33];
      v11 = v0[34];
      v12 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger;
      v0[41] = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger;
      v13 = *(v11 + 16);
      v0[42] = v13;
      v0[43] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v13(v9, v7 + v12, v10);
      v14 = v8;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Opening HDS connection to accessory", v17, 2u);
      }

      v18 = v0[36];
      v19 = v0[33];
      v20 = v0[34];

      v21 = *(v20 + 8);
      v0[44] = v21;
      v21(v18, v19);
      v22 = String._bridgeToObjectiveC()();
      v0[45] = v22;
      v0[2] = v0;
      v0[7] = v0 + 24;
      v0[3] = sub_1000BC7E0;
      v23 = swift_continuation_init();
      v0[17] = sub_100095274(&unk_1002A73B0, &qword_10023C678);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_1000BCD44;
      v0[13] = &unk_100276458;
      v0[14] = v23;
      [v14 openStreamSocketWithApplicationProtocol:v22 completion:v0 + 10];

      return _swift_continuation_await(v0 + 2);
    }

    v29 = type metadata accessor for Errors();
    sub_1000C42FC(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    *v30 = 0xD00000000000001DLL;
    v30[1] = 0x80000001002301D0;
    (*(*(v29 - 8) + 104))(v30, enum case for Errors.CommunicationFailure(_:), v29);
    swift_willThrow();
    swift_unknownObjectRelease();
    v32 = v0[35];
    v31 = v0[36];
    v33 = v0[32];
    v34 = v0[29];
    swift_willThrow();

    v28 = v0[1];
  }

  return v28();
}

uint64_t sub_1000BC7E0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 368) = v2;
  if (v2)
  {
    v3 = sub_1000BCC80;
  }

  else
  {
    v3 = sub_1000BC8F0;
  }

  return (_swift_task_switch)(v3, 0, 0);
}

uint64_t sub_1000BC8F0()
{
  v1 = v0[42];
  v39 = v0[43];
  v2 = v0[41];
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[35];
  v6 = v0[33];
  v7 = v0[26];
  v8 = v0[24];

  [v8 setDelegate:v7];
  v9 = *(v7 + v4);
  swift_unknownObjectRetain();

  os_unfair_lock_lock(v9 + 4);

  v10 = *(v7 + v3);
  *(v7 + v3) = v8;
  swift_unknownObjectRelease();
  v11 = *(v7 + v4);

  os_unfair_lock_unlock(v11 + 4);

  v1(v5, v7 + v2, v6);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Opened HDS connection to accessory", v14, 2u);
  }

  v15 = v0[44];
  v16 = v0[34];
  v17 = v0[35];
  v18 = v0[33];
  v34 = v0[32];
  v35 = v0[40];
  v37 = v0[39];
  v38 = v0[31];
  v40 = v0[30];
  v19 = v0[29];
  v36 = v0[28];
  v21 = v0[26];
  v20 = v0[27];

  v15(v17, v18);
  v22 = *&v21[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_workQueue];
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  v0[22] = sub_1000C43E8;
  v0[23] = v23;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_100147FC8;
  v0[21] = &unk_1002764A8;
  v24 = _Block_copy(v0 + 18);
  v25 = v22;
  v26 = v21;
  static DispatchQoS.unspecified.getter();
  v0[25] = _swiftEmptyArrayStorage;
  sub_1000C42FC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000BAB30();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v36 + 8))(v19, v20);
  (*(v38 + 8))(v34, v40);
  v27 = v0[23];

  v29 = v0[35];
  v28 = v0[36];
  v30 = v0[32];
  v31 = v0[29];

  v32 = v0[1];

  return v32();
}

uint64_t sub_1000BCC80()
{
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[39];
  v4 = v0[40];
  swift_willThrow();
  swift_unknownObjectRelease();

  v5 = v0[46];
  v7 = v0[35];
  v6 = v0[36];
  v8 = v0[32];
  v9 = v0[29];
  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000BCD44(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1000A09E0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100095274(&qword_1002A7268, &unk_10023C680);
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
      swift_unknownObjectRetain();
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1000BCE20(_BYTE *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v38 - v9;
  __chkstk_darwin(v8);
  v12 = &v38 - v11;
  sub_1000BD260();
  v13 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_uarpAccessory;
  v14 = *&a1[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_uarpAccessory];
  v15 = *(*&a1[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_manager] + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_uarpController);
  if ([v15 accessoryReachable:v14])
  {
    a1[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_reachable] = 1;
    if (a1[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state])
    {
      a1[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state] = 0;
    }

    v16 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_accessory;
    v17 = (*&a1[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_accessory] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_firmwareVersion);
    if (v17[1])
    {
      v18 = *v17;
      v19 = v17[1];

      v20 = String._bridgeToObjectiveC()();
    }

    else
    {
      v20 = 0;
    }

    v24 = [v15 updateProperty:4 value:v20 forAccessory:*&a1[v13]];

    v25 = *(v3 + 16);
    if (v24)
    {
      v25(v7, &a1[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger], v2);
      v21 = Logger.logObject.getter();
      v26 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v21, v26))
      {
        v12 = v7;
        goto LABEL_15;
      }

      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v21, v26, "Notified UARP accessory is reachable", v27, 2u);
      v12 = v7;
    }

    else
    {
      v25(v10, &a1[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger], v2);
      v28 = a1;
      v21 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v21, v29))
      {
        v12 = v10;
        goto LABEL_15;
      }

      v30 = swift_slowAlloc();
      v39 = v16;
      v31 = v30;
      v32 = swift_slowAlloc();
      *v31 = 138412546;
      v33 = *&a1[v13];
      *(v31 + 4) = v33;
      *v32 = v33;
      *(v31 + 12) = 2112;
      v34 = *(*&a1[v39] + 24);
      *(v31 + 14) = v34;
      v32[1] = v34;
      v35 = v33;
      v36 = v34;
      _os_log_impl(&_mh_execute_header, v21, v29, "Failed to update UARP accessory firmware version property for accessory %@ for dock accessory %@", v31, 0x16u);
      sub_100095274(&unk_1002A6F60, &unk_10023C4E0);
      swift_arrayDestroy();

      v12 = v10;
    }

    goto LABEL_14;
  }

  (*(v3 + 16))(v12, &a1[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger], v2);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "UARP accessoryReachable failed", v23, 2u);
LABEL_14:
  }

LABEL_15:

  return (*(v3 + 8))(v12, v2);
}

id sub_1000BD260()
{
  v1 = [objc_allocWithZone(HMFTimer) initWithTimeInterval:1 options:*(v0 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_maxSocketIdleDuration)];
  v2 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socketIdleTimer;
  v3 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socketIdleTimer);
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socketIdleTimer) = v1;
  v4 = v1;

  if (v4)
  {
    [v4 setDelegate:v0];
  }

  v5 = *(v0 + v2);
  if (v5)
  {
    [v5 setDelegateQueue:*(v0 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_workQueue)];
    v5 = *(v0 + v2);
  }

  return [v5 resume];
}

uint64_t sub_1000BD32C()
{
  v1 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socketIdleTimer;
  [*(v0 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socketIdleTimer) suspend];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  sub_1000A1168();
  v3 = swift_allocError();
  *v4 = 0xD000000000000010;
  *(v4 + 8) = 0x80000001002301B0;
  *(v4 + 16) = 7;
  sub_1000BBD88(v3);
}

void sub_1000BD3D0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v56 = a4;
  v54 = a2;
  v55 = a3;
  v53 = a1;
  updated = type metadata accessor for DKFirmwareUpdateMetric();
  v58 = *(updated - 8);
  v59 = updated;
  v6 = *(v58 + 64);
  __chkstk_darwin(updated);
  v57 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v49 = *(v8 - 8);
  v50 = v8;
  v9 = *(v49 + 64);
  __chkstk_darwin(v8);
  v48 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v52 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v48 - v16;
  v18 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger;
  v19 = v12[2];
  v60 = v4;
  v19(&v48 - v16, &v4[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger], v11);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Sending firmware update metrics...", v22, 2u);
  }

  v51 = v12[1];
  v51(v17, v11);
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v23 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_accessory;
  v24 = v60;
  v25 = *(*(v60 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_accessory) + 24);
  v26 = sub_1001884E4();

  if (v26)
  {
    v27 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_firmwareUpdateInterval;
    v28 = 0.0;
    if (*&v24[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_firmwareUpdateInterval] > 0.0)
    {
      v29 = v48;
      static Date.now.getter();
      Date.timeIntervalSince1970.getter();
      v31 = v30;
      (*(v49 + 8))(v29, v50);
      v32 = v31 - *&v24[v27];
    }

    if (!v24[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_startPercent + 8])
    {
      v28 = *&v24[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_startPercent];
    }

    if ((v24[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_startPercent + 8] & 1) != 0 || (*&v24[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_startPercent] & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      if (v28 > -1.0)
      {
        if (v28 < 1.84467441e19)
        {
          v33 = *&v24[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_endPercent];
          if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v33 > -1.0)
            {
              if (v33 < 1.84467441e19)
              {
                v34 = (*&v24[v23] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_firmwareVersion);
                v35 = v34[1];
                v52 = v27;
                if (v35)
                {
                  v50 = *v34;
                  v51 = v35;
                  v49 = v35;
                }

                else
                {
                  v50 = 0x6E776F6E6B6E55;
                  v51 = 0xE000000000000000;
                  v49 = 0xE700000000000000;
                }

                swift_bridgeObjectRetain_n();

                v46 = dispatch thunk of DockCoreAccessory.info.getter();
                DockCoreInfo.name.getter();

                dispatch thunk of DockCoreAccessory.model.getter();
                if (v55)
                {
                  swift_getErrorValue();
                  Error.localizedDescription.getter();
                }

                v47 = v57;
                DKFirmwareUpdateMetric.init(duration:startPercent:endPercent:fromFirmwareVersion:toFirmwareVersion:hardwareVersion:make:hardwareModel:success:error:)();
                DKFirmwareUpdateMetric.send()();

                (*(v58 + 8))(v47, v59);
                *&v52[v60] = 0xBFF0000000000000;
                return;
              }

LABEL_31:
              __break(1u);
              return;
            }

LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_28;
  }

  v36 = &v24[v18];
  v37 = v52;
  v19(v52, v36, v11);
  v38 = v24;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = v24;
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v42 = 138412290;
    v44 = *(*&v41[v23] + 24);
    *(v42 + 4) = v44;
    *v43 = v44;
    v45 = v44;
    _os_log_impl(&_mh_execute_header, v39, v40, "No DockAccessory found in database with info %@", v42, 0xCu);
    sub_100095C84(v43, &unk_1002A6F60, &unk_10023C4E0);
  }

  v51(v37, v11);
}

uint64_t sub_1000BDA60()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1000BDBA8(void *a1, void *a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v5 - 8);
  v6 = *(v43 + 64);
  __chkstk_darwin(v5);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = *(v40 + 64);
  __chkstk_darwin(v8);
  v39 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0xE000000000000000;
  v17 = *(v12 + 16);
  v38 = v2;
  v17(v15, &v2[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger], v11);
  v18 = a2;
  v19 = a1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = v11;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v37 = v5;
    *v23 = 138412802;
    *(v23 + 4) = v19;
    *(v23 + 12) = 2112;
    *(v23 + 14) = v18;
    *v24 = v19;
    v24[1] = v18;
    *(v23 + 22) = 2048;
    v25 = v19;
    *(v23 + 24) = [v18 updateAvailabilityStatus];

    _os_log_impl(&_mh_execute_header, v20, v21, "assetAvailablityUpdate for %@ %@ status is %ld", v23, 0x20u);
    sub_100095274(&unk_1002A6F60, &unk_10023C4E0);
    swift_arrayDestroy();
    v5 = v37;

    v11 = v22;
  }

  else
  {

    v20 = v18;
  }

  (*(v12 + 8))(v15, v11);
  v26 = v38;
  v27 = *&v38[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_workQueue];
  v28 = swift_allocObject();
  v28[2] = v26;
  v28[3] = v18;
  v28[4] = v16;
  v28[5] = v19;
  aBlock[4] = sub_1000C43B0;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100276430;
  v29 = _Block_copy(aBlock);
  v30 = v18;
  v31 = v19;
  v32 = v27;
  v33 = v26;

  v34 = v39;
  static DispatchQoS.unspecified.getter();
  v44 = _swiftEmptyArrayStorage;
  sub_1000C42FC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000BAB30();
  v35 = v42;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v29);

  (*(v43 + 8))(v35, v5);
  (*(v40 + 8))(v34, v41);
}

void sub_1000BE098(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v187 = a4;
  v186 = type metadata accessor for Date();
  v184 = *(v186 - 1);
  v7 = *(v184 + 64);
  __chkstk_darwin(v186);
  v9 = (&v179 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v188 = type metadata accessor for Logger();
  v189 = *(v188 - 8);
  v10 = *(v189 + 64);
  v11 = __chkstk_darwin(v188);
  v13 = (&v179 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v11);
  v16 = &v179 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v179 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v179 - v21;
  __chkstk_darwin(v20);
  v190 = &v179 - v23;
  v24 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_assetID);
  *(a1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_assetID) = a2;
  v25 = a2;

  v26 = *(*(a1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_manager) + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_uarpController);
  v27 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_profile;
  v28 = *(*(a1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_profile) + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateProfile_stagingNotReadyReasons);
  if (v28)
  {
    v194 = 0;
    v195 = 0xE000000000000000;
    v186 = v26;
    v29 = v28;
    _StringGuts.grow(_:)(29);

    v194 = 0xD00000000000001BLL;
    v195 = 0x80000001002300F0;
    v187 = v29;
    v30 = [v29 description];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34._countAndFlagsBits = v31;
    v34._object = v33;
    String.append(_:)(v34);

    v35 = v194;
    v36 = v195;
    swift_beginAccess();
    v37 = *(a3 + 24);
    *(a3 + 16) = v35;
    *(a3 + 24) = v36;

    v38 = v189;
    v39 = v188;
    (*(v189 + 16))(v190, a1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger, v188);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    v42 = os_log_type_enabled(v40, v41);
    v43 = a1;
    v185 = a3;
    if (v42)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v194 = v45;
      *v44 = 136315138;
      swift_beginAccess();
      v47 = *(a3 + 16);
      v46 = *(a3 + 24);

      v48 = sub_1000952D4(v47, v46, &v194);

      *(v44 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v40, v41, "%s", v44, 0xCu);
      sub_100095808(v45);
    }

    (*(v38 + 8))(v190, v39);
    v49 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_msgFeedback;
    swift_beginAccess();
    sub_1000C41E0(v43 + v49, &v194);
    if (v196)
    {
      sub_1000A097C(&v194, v191);
      sub_100095C84(&v194, &unk_1002A7380, &qword_10023E970);
      v50 = v192;
      v51 = v193;
      sub_1000A09E0(v191, v192);
      v52 = v185;
      swift_beginAccess();
      v54 = *(v52 + 16);
      v53 = *(v52 + 24);
      sub_1000A1168();
      v55 = swift_allocError();
      *v56 = v54;
      *(v56 + 8) = v53;
      *(v56 + 16) = 6;
      v57 = *(v51 + 8);
      swift_bridgeObjectRetain_n();
      v57(v54, v53, 1, v55, v50, v51);

LABEL_6:

      sub_100095808(v191);
      return;
    }

    goto LABEL_13;
  }

  v180 = v16;
  v182 = v13;
  v181 = v9;
  v183 = v19;
  v190 = v26;
  v58 = [v25 updateAvailabilityStatus];
  v59 = a1;
  v60 = a3;
  if (v58 == 1)
  {
LABEL_10:
    v186 = v25;
    swift_beginAccess();
    v61 = *(a3 + 24);
    *(a3 + 16) = 0xD00000000000002BLL;
    *(a3 + 24) = 0x8000000100230140;

    v62 = v189;
    v63 = *(v189 + 16);
    v180 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger;
    v64 = a1;
    v65 = v188;
    v184 = v189 + 16;
    v182 = v63;
    v63(v22, a1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger, v188);

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = v65;
      v70 = swift_slowAlloc();
      v194 = v70;
      *v68 = 136315138;
      swift_beginAccess();
      v72 = *(v60 + 16);
      v71 = *(v60 + 24);

      v73 = sub_1000952D4(v72, v71, &v194);

      *(v68 + 4) = v73;
      _os_log_impl(&_mh_execute_header, v66, v67, "%s", v68, 0xCu);
      sub_100095808(v70);
      v65 = v69;

      v74 = *(v189 + 8);
      v75 = v22;
      v76 = v69;
    }

    else
    {

      v74 = *(v62 + 8);
      v75 = v22;
      v76 = v65;
    }

    v181 = v74;
    v74(v75, v76);
    v81 = v60;
    v82 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_msgFeedback;
    swift_beginAccess();
    sub_1000C41E0(v64 + v82, &v194);
    if (v196)
    {
      sub_1000A097C(&v194, v191);
      sub_100095C84(&v194, &unk_1002A7380, &qword_10023E970);
      v83 = v192;
      v84 = v193;
      sub_1000A09E0(v191, v192);
      swift_beginAccess();
      v85 = *(v60 + 16);
      v86 = *(v60 + 24);
      v87 = v64;
      v88 = *(v84 + 8);

      v88(v85, v86, 0, 0, v83, v84);
      v64 = v87;
      v65 = v188;

      sub_100095808(v191);
    }

    else
    {
      sub_100095C84(&v194, &unk_1002A7380, &qword_10023E970);
    }

    v89 = v187;
    v90 = v186;
    if ([v190 downloadAvailableFirmwareUpdate:v187 assetID:v186 withUserIntent:0])
    {
LABEL_27:

      return;
    }

    v194 = 0;
    v195 = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    v91._countAndFlagsBits = 0xD000000000000035;
    v91._object = 0x8000000100230170;
    String.append(_:)(v91);
    v92 = [v89 description];
    v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v94;

    v96._countAndFlagsBits = v93;
    v96._object = v95;
    String.append(_:)(v96);

    v97._countAndFlagsBits = 0x4449746573736120;
    v97._object = 0xE90000000000003ALL;
    String.append(_:)(v97);
    v98 = [v90 description];
    v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v101 = v100;

    v102._countAndFlagsBits = v99;
    v102._object = v101;
    String.append(_:)(v102);

    v103 = v194;
    v104 = v195;
    swift_beginAccess();
    v105 = *(v81 + 24);
    *(v81 + 16) = v103;
    *(v81 + 24) = v104;

    v106 = v183;
    v182(v183, v64 + v180, v65);

    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v194 = v110;
      *v109 = 136315138;
      swift_beginAccess();
      v111 = *(v81 + 16);
      v112 = *(v81 + 24);

      v113 = sub_1000952D4(v111, v112, &v194);

      *(v109 + 4) = v113;
      _os_log_impl(&_mh_execute_header, v107, v108, "%s", v109, 0xCu);
      sub_100095808(v110);

      v114 = v106;
      v115 = v188;
    }

    else
    {

      v114 = v106;
      v115 = v65;
    }

    v181(v114, v115);
    sub_1000C41E0(v64 + v82, &v194);
    if (v196)
    {
      sub_1000A097C(&v194, v191);
      sub_100095C84(&v194, &unk_1002A7380, &qword_10023E970);
      v121 = v192;
      v122 = v193;
      sub_1000A09E0(v191, v192);
      swift_beginAccess();
      v124 = *(v81 + 16);
      v123 = *(v81 + 24);
      sub_1000A1168();
      v126 = swift_allocError();
      *v125 = v124;
      *(v125 + 8) = v123;
      v127 = 3;
LABEL_48:
      *(v125 + 16) = v127;
      v171 = *(v122 + 8);
      swift_bridgeObjectRetain_n();
      v171(v124, v123, 1, v126, v121, v122);

      goto LABEL_6;
    }

    goto LABEL_49;
  }

  if (v58 == 3)
  {
    if (*(a1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_reachable))
    {
      v77 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state;
      v78 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state);
      v79 = v190;
      if (!*(*(a1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_profile) + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateProfile_stagingNotReadyReasons))
      {
        if (v78 != 2)
        {
          v128 = a1;
          *(a1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state) = 2;
          v129 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_txn);

          sub_100105518();

          swift_beginAccess();
          v130 = *(a3 + 24);
          *(a3 + 16) = 0xD000000000000023;
          *(a3 + 24) = 0x8000000100230110;

          v131 = a3;
          v132 = v189;
          v133 = v180;
          v134 = v188;
          (*(v189 + 16))(v180, a1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger, v188);

          v135 = Logger.logObject.getter();
          v136 = static os_log_type_t.default.getter();

          v137 = os_log_type_enabled(v135, v136);
          v185 = v131;
          if (v137)
          {
            v138 = swift_slowAlloc();
            LODWORD(v183) = v136;
            v139 = v138;
            v140 = swift_slowAlloc();
            v194 = v140;
            *v139 = 136315138;
            swift_beginAccess();
            v142 = *(v131 + 16);
            v141 = *(v131 + 24);

            v143 = sub_1000952D4(v142, v141, &v194);

            *(v139 + 4) = v143;
            _os_log_impl(&_mh_execute_header, v135, v183, "%s", v139, 0xCu);
            sub_100095808(v140);
          }

          (*(v132 + 8))(v133, v134);
          v144 = v186;
          v145 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_msgFeedback;
          swift_beginAccess();
          sub_1000C41E0(v128 + v145, &v194);
          v146 = v187;
          if (v196)
          {
            sub_1000A097C(&v194, v191);
            sub_100095C84(&v194, &unk_1002A7380, &qword_10023E970);
            v147 = v192;
            v148 = v193;
            sub_1000A09E0(v191, v192);
            v149 = v185;
            swift_beginAccess();
            v151 = *(v149 + 16);
            v150 = *(v149 + 24);
            v152 = *(v148 + 8);

            v152(v151, v150, 0, 0, v147, v148);

            sub_100095808(v191);
          }

          else
          {
            sub_100095C84(&v194, &unk_1002A7380, &qword_10023E970);
          }

          v172 = v128 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_startPercent;
          *v172 = 0;
          *(v172 + 8) = 1;
          v173 = v181;
          static Date.now.getter();
          Date.timeIntervalSince1970.getter();
          v175 = v174;
          (*(v184 + 8))(v173, v144);
          *(v128 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_firmwareUpdateInterval) = v175;
          sub_100095274(&qword_1002A7390, &qword_10023BEF0);
          v176 = swift_allocObject();
          *(v176 + 16) = xmmword_10023BDA0;
          *(v176 + 32) = v146;
          sub_1000C42B0();
          v177 = v146;
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v190 stageFirmwareUpdateOnAccessoryList:isa withUserIntent:1];

          goto LABEL_27;
        }

        goto LABEL_22;
      }

      if (v78 == 1)
      {
        goto LABEL_22;
      }

      v80 = 1;
    }

    else
    {
      v77 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state;
      v79 = v190;
      if (!*(a1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state))
      {
        goto LABEL_22;
      }

      v80 = 0;
    }

    v185 = a3;
    *(a1 + v77) = v80;
    v194 = 0;
    v195 = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v194 = 0xD00000000000001BLL;
    v195 = 0x80000001002300F0;
    v116 = *(*(a1 + v27) + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateProfile_stagingNotReadyReasons);
    if (v116)
    {
      v117 = [v116 description];
      v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v120 = v119;
    }

    else
    {
      v120 = 0xE700000000000000;
      v118 = 0x6E776F6E6B6E55;
    }

    v153 = v188;
    v154 = v189;
    v155._countAndFlagsBits = v118;
    v155._object = v120;
    String.append(_:)(v155);

    v156 = v194;
    v157 = v195;
    v158 = v185;
    swift_beginAccess();
    v159 = *(v158 + 24);
    *(v158 + 16) = v156;
    *(v158 + 24) = v157;

    v160 = v182;
    (*(v154 + 16))(v182, v59 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger, v153);

    v161 = Logger.logObject.getter();
    v162 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v161, v162))
    {
      v163 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      v194 = v164;
      *v163 = 136315138;
      swift_beginAccess();
      v165 = v59;
      v166 = *(v158 + 16);
      v167 = *(v158 + 24);

      v168 = sub_1000952D4(v166, v167, &v194);

      *(v163 + 4) = v168;
      _os_log_impl(&_mh_execute_header, v161, v162, "%s", v163, 0xCu);
      sub_100095808(v164);

      (*(v154 + 8))(v182, v153);
    }

    else
    {

      (*(v154 + 8))(v160, v153);
      v165 = v59;
    }

    v169 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_msgFeedback;
    swift_beginAccess();
    sub_1000C41E0(v165 + v169, &v194);
    if (v196)
    {
      sub_1000A097C(&v194, v191);
      sub_100095C84(&v194, &unk_1002A7380, &qword_10023E970);
      v121 = v192;
      v122 = v193;
      sub_1000A09E0(v191, v192);
      v170 = v185;
      swift_beginAccess();
      v124 = *(v170 + 16);
      v123 = *(v170 + 24);
      sub_1000A1168();
      v126 = swift_allocError();
      *v125 = v124;
      *(v125 + 8) = v123;
      v127 = 6;
      goto LABEL_48;
    }

LABEL_49:

LABEL_13:
    sub_100095C84(&v194, &unk_1002A7380, &qword_10023E970);
    return;
  }

  if (v58 == 4)
  {
    goto LABEL_10;
  }

  v79 = v190;
LABEL_22:
}

uint64_t sub_1000BF4E8(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = v3;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = *(v56 + 64);
  __chkstk_darwin(v9);
  v54 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DispatchQoS();
  v53 = *(v55 - 8);
  v12 = *(v53 + 64);
  __chkstk_darwin(v55);
  v52 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v15 + 16);
  v59 = v20;
  v19(v18, &v5[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger]);
  v21 = a1;
  sub_1000A0CD8(a2, a3);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();

  sub_1000A0D2C(a2, a3);
  v24 = os_log_type_enabled(v22, v23);
  v58 = a2;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v51 = v4;
    v26 = v25;
    v27 = swift_slowAlloc();
    v50 = v5;
    v28 = v27;
    v49 = swift_slowAlloc();
    aBlock[0] = v49;
    *v26 = 138412546;
    *(v26 + 4) = v21;
    *v28 = v21;
    *(v26 + 12) = 2080;
    v29 = v21;
    v30 = Data.base64EncodedString(options:)(0);
    v31 = sub_1000952D4(v30._countAndFlagsBits, v30._object, aBlock);

    *(v26 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "sendMessage: %@ msg is %s", v26, 0x16u);
    sub_100095C84(v28, &unk_1002A6F60, &unk_10023C4E0);
    v5 = v50;

    sub_100095808(v49);
  }

  (*(v15 + 8))(v18, v59);
  v32 = *&v5[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socket];
  if (!v32)
  {
    goto LABEL_6;
  }

  v33 = *&v5[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socket];
  if ([swift_unknownObjectRetain() isClosed])
  {
    swift_unknownObjectRelease();
LABEL_6:
    v34 = type metadata accessor for Errors();
    sub_1000C42FC(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    *v35 = 0xD000000000000027;
    v35[1] = 0x80000001002300C0;
    (*(*(v34 - 8) + 104))(v35, enum case for Errors.CommunicationFailure(_:), v34);
    swift_willThrow();
    return swift_willThrow();
  }

  v37 = *&v5[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_workQueue];
  v38 = swift_allocObject();
  v38[2] = v5;
  aBlock[4] = sub_1000C4344;
  aBlock[5] = v38;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_1002763E0;
  v39 = _Block_copy(aBlock);
  v59 = v37;
  v40 = v5;
  v41 = v52;
  static DispatchQoS.unspecified.getter();
  v60 = _swiftEmptyArrayStorage;
  sub_1000C42FC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000BAB30();
  v42 = v54;
  v43 = v57;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v44 = v59;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v39);

  (*(v56 + 8))(v42, v43);
  (*(v53 + 8))(v41, v55);

  isa = Data._bridgeToObjectiveC()().super.isa;
  aBlock[0] = 0;
  LOBYTE(v44) = [v32 writeData:isa error:aBlock];

  if ((v44 & 1) == 0)
  {
    v47 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_unknownObjectRelease();
    return swift_willThrow();
  }

  v46 = aBlock[0];
  return swift_unknownObjectRelease();
}