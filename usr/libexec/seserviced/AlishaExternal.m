@interface AlishaExternal
+ (_TtC10seserviced14AlishaExternal)shared;
- (BOOL)isPassiveEntryAvailableFor:(id)a3;
- (BOOL)isPeerConnectedWithClientUUID:(id)a3;
- (_TtC10seserviced14AlishaExternal)init;
- (id)cancelRKERequestWithFunctionIdentifier:(unsigned __int16)a3 keyIdentifier:(id)a4;
- (id)continueExecutingRKERequestWithFunctionIdentifier:(unsigned __int16)a3 actionIdentifier:(unsigned __int8)a4 arbitraryData:(id)a5 keyIdentifier:(id)a6;
- (id)getAllEndpoints;
- (id)getEnduringRKERequestsInProgress;
- (id)getReportsWithIsInternalClient:(BOOL)a3;
- (id)sendPassthroughWithMessage:(id)a3 clientUUID:(id)a4;
- (void)sendRKERequestWithFunctionIdentifier:(unsigned __int16)a3 actionIdentifier:(unsigned __int8)a4 keyIdentifier:(id)a5 requestType:(unint64_t)a6 actionType:(unint64_t)a7 arbitraryData:(id)a8 enduringRequestHandler:(id)aBlock authorization:(id)a10 completion:(id)a11;
- (void)subscribeToVehicleFunctionStatusEventsWithRange:(_NSRange)a3 peerUUID:(id)a4;
- (void)triggerHeadUnitPairingWith:(id)a3 keyIdentifier:(id)a4;
@end

@implementation AlishaExternal

+ (_TtC10seserviced14AlishaExternal)shared
{
  if (qword_100501C88 != -1)
  {
    swift_once();
  }

  v3 = qword_10051B6F0;

  return v3;
}

- (id)getAllEndpoints
{
  if (qword_1005019E8 != -1)
  {
    swift_once();
  }

  sub_1000CAA04();
  sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
  sub_10023EFC4();
  v2.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (BOOL)isPassiveEntryAvailableFor:(id)a3
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = a3;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.notOnQueue(_:), v4);
  v13;
  v14 = _dispatchPreconditionTest(_:)();
  v15 = (*(v5 + 8))(v8, v4);
  if (v14)
  {
    __chkstk_darwin(v15);
    *&v17[-16] = v10;
    *&v17[-8] = v12;
    OS_dispatch_queue.sync<A>(execute:)();
    sub_10006A178(v10, v12);
    LOBYTE(v15) = v17[15];
  }

  else
  {
    __break(1u);
  }

  return v15;
}

- (BOOL)isPeerConnectedWithClientUUID:(id)a3
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.notOnQueue(_:), v3);
  v13;
  v14 = _dispatchPreconditionTest(_:)();
  v15 = (*(v4 + 8))(v7, v3);
  if (v14)
  {
    __chkstk_darwin(v15);
    *&v18[-16] = v12;
    OS_dispatch_queue.sync<A>(execute:)();
    v16 = v18[15];
    (*(v9 + 8))(v12, v8);
    LOBYTE(v15) = v16;
  }

  else
  {
    __break(1u);
  }

  return v15;
}

- (id)cancelRKERequestWithFunctionIdentifier:(unsigned __int16)a3 keyIdentifier:(id)a4
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = a4;
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v15 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.notOnQueue(_:), v6);
  v15;
  v16 = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v10, v6);
  if (v16)
  {
    __chkstk_darwin(result);
    LOWORD(v19[-4]) = a3;
    v19[-3] = v12;
    v19[-2] = v14;
    sub_100068FC4(&qword_100509E98, &qword_100414A88);
    OS_dispatch_queue.sync<A>(execute:)();
    sub_10006A178(v12, v14);
    v18 = v19[1];

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)continueExecutingRKERequestWithFunctionIdentifier:(unsigned __int16)a3 actionIdentifier:(unsigned __int8)a4 arbitraryData:(id)a5 keyIdentifier:(id)a6
{
  v26 = a4;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = a6;
  if (a5)
  {
    v15 = a5;
    a5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v17 = 0xF000000000000000;
  }

  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v21 = qword_10051B7F0;
  *v13 = qword_10051B7F0;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.notOnQueue(_:), v9);
  v21;
  v22 = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v13, v9);
  if (v22)
  {
    __chkstk_darwin(result);
    *&v25[-48] = a3;
    v25[-46] = v26;
    *&v25[-40] = v18;
    *&v25[-32] = v20;
    *&v25[-24] = a5;
    *&v25[-16] = v17;
    sub_100068FC4(&qword_100509E98, &qword_100414A88);
    OS_dispatch_queue.sync<A>(execute:)();
    sub_10006A178(v18, v20);
    sub_10006A2D0(a5, v17);
    v24 = v27;

    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)getReportsWithIsInternalClient:(BOOL)a3
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.notOnQueue(_:), v4);
  v9;
  v10 = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v10)
  {
    __chkstk_darwin(result);
    *(&v13 - 16) = a3;
    sub_100068FC4(&qword_100509EA0, qword_100414A90);
    OS_dispatch_queue.sync<A>(execute:)();
    sub_10009393C(0, &qword_100509EA8, SESVehicleReport_ptr);
    v12.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    return v12.super.isa;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)sendPassthroughWithMessage:(id)a3 clientUUID:(id)a4
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a3;
  v17 = a4;
  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v21 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.notOnQueue(_:), v6);
  v21;
  v22 = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v10, v6);
  if (v22)
  {
    __chkstk_darwin(result);
    v25[-4] = v15;
    v25[-3] = v18;
    v25[-2] = v20;
    sub_100068FC4(&qword_100509E98, &qword_100414A88);
    OS_dispatch_queue.sync<A>(execute:)();
    sub_10006A178(v18, v20);
    v24 = v25[1];
    (*(v12 + 8))(v15, v11);

    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)getEnduringRKERequestsInProgress
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.notOnQueue(_:), v2);
  v7;
  v8 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v6, v2);
  if (v8)
  {
    sub_100068FC4(&qword_100509E90, &qword_100414A80);
    OS_dispatch_queue.sync<A>(execute:)();
    type metadata accessor for AlishaExternal.RequestInProgress();
    v10.super.isa = Array._bridgeToObjectiveC()().super.isa;

    return v10.super.isa;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)sendRKERequestWithFunctionIdentifier:(unsigned __int16)a3 actionIdentifier:(unsigned __int8)a4 keyIdentifier:(id)a5 requestType:(unint64_t)a6 actionType:(unint64_t)a7 arbitraryData:(id)a8 enduringRequestHandler:(id)aBlock authorization:(id)a10 completion:(id)a11
{
  v14 = _Block_copy(aBlock);
  v15 = _Block_copy(a11);
  v16 = a5;
  v33 = self;
  v17 = a8;
  v18 = a10;
  v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (v17)
  {
    v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (v14)
    {
      goto LABEL_3;
    }

LABEL_6:
    v25 = 0;
    if (v18)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v22 = 0;
  v24 = 0xF000000000000000;
  if (!v14)
  {
    goto LABEL_6;
  }

LABEL_3:
  v25 = swift_allocObject();
  *(v25 + 16) = v14;
  v14 = sub_1002E782C;
  if (v18)
  {
LABEL_4:
    v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    goto LABEL_8;
  }

LABEL_7:
  v26 = 0;
  v28 = 0xF000000000000000;
LABEL_8:
  v29 = swift_allocObject();
  *(v29 + 16) = v15;
  sub_1002E5D90(a3, a4, v19, v21, a6, a7, v22, v24, v14, v25, v26, v28, sub_10021AC84, v29);

  sub_10006A2D0(v26, v28);
  sub_1000B2A4C(v14);
  sub_10006A2D0(v22, v24);
  sub_10006A178(v19, v21);
}

- (void)subscribeToVehicleFunctionStatusEventsWithRange:(_NSRange)a3 peerUUID:(id)a4
{
  length = a3.length;
  location = a3.location;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1002E66E4(location, length, v10);
  (*(v7 + 8))(v10, v6);
}

- (void)triggerHeadUnitPairingWith:(id)a3 keyIdentifier:(id)a4
{
  v5 = a3;
  if (a3)
  {
    v6 = a4;
    v7 = self;
    v8 = v5;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v11 = a4;
    v12 = self;
    v10 = 0xF000000000000000;
  }

  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  sub_1002E6DD0(v5, v10, v13, v15);
  sub_10006A178(v13, v15);
  sub_10006A2D0(v5, v10);
}

- (_TtC10seserviced14AlishaExternal)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(AlishaExternal *)&v3 init];
}

@end