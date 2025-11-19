@interface BeaconKeyBackendServiceTrampoline
- (_TtC12searchpartyd33BeaconKeyBackendServiceTrampoline)init;
- (void)beaconInfoWithBeaconIdentifierData:(id)a3 completion:(id)a4;
- (void)beaconInfoWithCompletion:(id)a3;
- (void)setWithUserIdentifier:(id)a3 beaconsData:(id)a4 completion:(id)a5;
@end

@implementation BeaconKeyBackendServiceTrampoline

- (_TtC12searchpartyd33BeaconKeyBackendServiceTrampoline)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)setWithUserIdentifier:(id)a3 beaconsData:(id)a4 completion:(id)a5
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v27 - v13;
  v15 = _Block_copy(a5);
  v28 = v14;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = a4;
  v17 = self;
  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = swift_allocObject();
  *(v21 + 16) = v15;
  v27 = type metadata accessor for Transaction();
  (*(v9 + 16))(v12, v14, v8);
  v22 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v23 = (v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 2) = v18;
  *(v24 + 3) = v20;
  *(v24 + 4) = v17;
  (*(v9 + 32))(&v24[v22], v12, v8);
  v25 = &v24[v23];
  *v25 = sub_10001E370;
  v25[1] = v21;
  v26 = v17;
  sub_100017D5C(v18, v20);

  static Transaction.asyncTask(name:block:)();

  sub_100016590(v18, v20);
  (*(v9 + 8))(v28, v8);
}

- (void)beaconInfoWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  type metadata accessor for Transaction();
  v6 = swift_allocObject();
  v6[2] = self;
  v6[3] = sub_100F993C4;
  v6[4] = v5;
  v7 = self;

  static Transaction.asyncTask(name:block:)();
}

- (void)beaconInfoWithBeaconIdentifierData:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v8 = self;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  type metadata accessor for Transaction();
  v13 = swift_allocObject();
  v13[2] = v9;
  v13[3] = v11;
  v13[4] = v8;
  v13[5] = sub_1007BF36C;
  v13[6] = v12;
  v14 = v8;
  sub_100017D5C(v9, v11);

  static Transaction.asyncTask(name:block:)();

  sub_100016590(v9, v11);
}

@end