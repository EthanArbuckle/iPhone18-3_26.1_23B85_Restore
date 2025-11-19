@interface AccessoryDiscoveryTrampoline
- (_TtC12searchpartyd28AccessoryDiscoveryTrampoline)init;
- (void)disableFindMyPairingWithIdentifier:(id)a3;
- (void)finalizePairingWith:(id)a3 configuration:(id)a4 completion:(id)a5;
- (void)finalizeProximityPairingForAccessoryIdentifier:(id)a3 configuration:(id)a4 completion:(id)a5;
- (void)initializeProximityPairingForAccessoryIdentifier:(id)a3 completion:(id)a4;
- (void)initiatePairingAndLocateAccessoryWithIdentifier:(id)a3 completion:(id)a4;
- (void)initiatePairingWith:(id)a3 completion:(id)a4;
- (void)invalidatePairingWith:(id)a3 completion:(id)a4;
- (void)pairingStatusWithRequest:(id)a3 completion:(id)a4;
@end

@implementation AccessoryDiscoveryTrampoline

- (void)initiatePairingWith:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *(&self->super.isa + OBJC_IVAR____TtC12searchpartyd28AccessoryDiscoveryTrampoline_implementation);
  v9 = a3;
  v10 = self;
  sub_100E12360(v9, sub_10026AE30, v7);
}

- (void)disableFindMyPairingWithIdentifier:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_100E1B344(v8);
  (*(v5 + 8))(v8, v4);
}

- (void)initiatePairingAndLocateAccessoryWithIdentifier:(id)a3 completion:(id)a4
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v18 - v10;
  v12 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  type metadata accessor for Transaction();
  (*(v6 + 16))(v9, v11, v5);
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = (v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v6 + 32))(v16 + v14, v9, v5);
  v17 = (v16 + v15);
  *v17 = sub_10072A8B0;
  v17[1] = v13;

  static Transaction.asyncTask(name:block:)();

  (*(v6 + 8))(v11, v5);
}

- (void)pairingStatusWithRequest:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_100729ED8(v8, sub_1001BC108, v7);
}

- (void)finalizePairingWith:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = *(&self->super.isa + OBJC_IVAR____TtC12searchpartyd28AccessoryDiscoveryTrampoline_implementation);
  _Block_copy(v8);
  v10 = a3;
  v12 = a4;
  v11 = self;
  sub_100E1B5D0(v10, v12, v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)invalidatePairingWith:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = *(&self->super.isa + OBJC_IVAR____TtC12searchpartyd28AccessoryDiscoveryTrampoline_implementation);
  _Block_copy(v6);
  v9 = a3;
  v8 = self;
  sub_100E1B7B8(v9, v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)initializeProximityPairingForAccessoryIdentifier:(id)a3 completion:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = *(&self->super.isa + OBJC_IVAR____TtC12searchpartyd28AccessoryDiscoveryTrampoline_implementation);
  _Block_copy(v11);
  v13 = self;
  sub_100E1BDAC(v10, v12, v11);
  _Block_release(v11);
  _Block_release(v11);
  (*(v7 + 8))(v10, v6);
}

- (void)finalizeProximityPairingForAccessoryIdentifier:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v25 = a4;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  v14 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = self;
  v24 = (*(&self->super.isa + OBJC_IVAR____TtC12searchpartyd28AccessoryDiscoveryTrampoline_implementation))[14];
  (*(v8 + 16))(v11, v13, v7);
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v8 + 32))(v19 + v17, v11, v7);
  v20 = v25;
  *(v19 + v18) = v25;
  v21 = (v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_10001E370;
  v21[1] = v15;
  v22 = v20;
  v23 = v16;

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  (*(v8 + 8))(v13, v7);
}

- (_TtC12searchpartyd28AccessoryDiscoveryTrampoline)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end