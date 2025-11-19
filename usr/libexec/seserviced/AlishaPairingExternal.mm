@interface AlishaPairingExternal
+ (_TtC10seserviced21AlishaPairingExternal)shared;
- (id)readAPDU;
- (id)sendAPDU:(id)a3;
- (void)endSession;
- (void)onPassAddedFor:(id)a3;
- (void)pairingEndedWithError:(id)a3;
- (void)requestOwnerPairingWithSession:(id)a3 delegate:(id)a4;
- (void)startHceEmulation;
- (void)stopHceEmulation;
- (void)stopOwnerPairing;
- (void)stopTransactionEmulation;
@end

@implementation AlishaPairingExternal

+ (_TtC10seserviced21AlishaPairingExternal)shared
{
  if (qword_1005018E0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051B160;

  return v3;
}

- (void)requestOwnerPairingWithSession:(id)a3 delegate:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_1000651E0(v6, a4);

  swift_unknownObjectRelease();
}

- (void)stopOwnerPairing
{
  v2 = self;
  sub_1000673E8(&unk_1004C54C8, sub_10006A41C, &unk_1004C54E0);
}

- (void)startHceEmulation
{
  v2 = self;
  sub_1000673E8(&unk_1004C5478, sub_10006A414, &unk_1004C5490);
}

- (void)stopHceEmulation
{
  v2 = self;
  sub_1000673E8(&unk_1004C5428, sub_10006A40C, &unk_1004C5440);
}

- (void)stopTransactionEmulation
{
  v2 = self;
  sub_1000673E8(&unk_1004C5388, sub_10006A3B8, &unk_1004C53A0);
}

- (void)pairingEndedWithError:(id)a3
{
  v4 = self;
  v5 = a3;
  sub_1000666B4(a3);
}

- (id)sendAPDU:(id)a3
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = a3;
  v11 = self;
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v15 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.notOnQueue(_:), v5);
  v15;
  v16 = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v9, v5);
  if (v16)
  {
    __chkstk_darwin(result);
    v19[-4] = v11;
    v19[-3] = v12;
    v19[-2] = v14;
    sub_100068FC4(&unk_100504740, &qword_100409110);
    OS_dispatch_queue.sync<A>(execute:)();

    sub_10006A178(v12, v14);
    if (v19[1])
    {
      v18 = _convertErrorToNSError(_:)();
    }

    else
    {
      v18 = 0;
    }

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)readAPDU
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = qword_100501D90;
  v9 = self;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.notOnQueue(_:), v3);
  v10;
  v11 = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v7, v3);
  if (v11)
  {
    __chkstk_darwin(result);
    v14[-2] = v9;
    sub_100068FC4(&unk_100504740, &qword_100409110);
    OS_dispatch_queue.sync<A>(execute:)();

    if (v14[1])
    {
      v13 = _convertErrorToNSError(_:)();
    }

    else
    {
      v13 = 0;
    }

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)endSession
{
  v2 = self;
  sub_1000673E8(&unk_1004C52E8, sub_10006A32C, &unk_1004C5300);
}

- (void)onPassAddedFor:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  sub_100069E80(v5, v7);
  sub_10006A178(v5, v7);
}

@end