@interface ObservationStoreBackendServiceTrampoline
- (_TtC12searchpartyd40ObservationStoreBackendServiceTrampoline)init;
- (void)anonymousObservationCountWithCompletion:(id)a3;
- (void)attachedEventsWithIdentifierData:(id)a3 attachedDevice:(id)a4 completion:(id)a5;
- (void)decimateLowValueObservationsWithCompletion:(id)a3;
- (void)deleteAllAnonymousObservedAdvertisementsWithCompletion:(id)a3;
- (void)deleteMetadataWithBeaconIdentifier:(id)a3 completion:(id)a4;
- (void)deleteObservedAdvertisementsWithAdvertisementsData:(id)a3 completion:(id)a4;
- (void)deleteRedundantReconciledAdvertisementsWithCompletion:(id)a3;
- (void)insertWithAdvertisementData:(id)a3 completion:(id)a4;
- (void)latestAnonymousObservationsWithLimit:(int64_t)a3 completion:(id)a4;
- (void)latestDeviceEventWithIdentifierData:(id)a3 source:(id)a4 attachedDevice:(id)a5 completion:(id)a6;
- (void)latestObservedAdvertisementWithIdentifierData:(id)a3 completion:(id)a4;
- (void)latestStatusWithIdentifierData:(id)a3 completion:(id)a4;
- (void)locationsWithAdvertisementsData:(id)a3 completion:(id)a4;
- (void)markObservedAdvertisementsPublishedWithAdvertisementsData:(id)a3 completion:(id)a4;
- (void)metadataWithBeaconIdentifier:(id)a3 completion:(id)a4;
- (void)metadataWithBeaconIdentifier:(id)a3 typesData:(id)a4 completion:(id)a5;
- (void)nearbyBeaconsWithSeconds:(double)a3 completion:(id)a4;
- (void)observationsWithAdvertisementsData:(id)a3 completion:(id)a4;
- (void)removeOrphanedKeySyncMetaDataWithCompletion:(id)a3;
- (void)reverseChronologicalObservationsWithIdentifierData:(id)a3 limit:(int64_t)a4 isPublished:(BOOL)a5 completion:(id)a6;
- (void)storeDeviceEventWithDeviceEvent:(id)a3 completion:(id)a4;
- (void)storeWithKeySyncMetadataData:(id)a3 completion:(id)a4;
@end

@implementation ObservationStoreBackendServiceTrampoline

- (_TtC12searchpartyd40ObservationStoreBackendServiceTrampoline)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)insertWithAdvertisementData:(id)a3 completion:(id)a4
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
  v13[5] = sub_10026AE30;
  v13[6] = v12;
  v14 = v8;
  sub_100017D5C(v9, v11);

  static Transaction.asyncTask(name:block:)();

  sub_100016590(v9, v11);
}

- (void)deleteObservedAdvertisementsWithAdvertisementsData:(id)a3 completion:(id)a4
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
  v13[5] = sub_100F993C4;
  v13[6] = v12;
  v14 = v8;
  sub_100017D5C(v9, v11);

  static Transaction.asyncTask(name:block:)();

  sub_100016590(v9, v11);
}

- (void)markObservedAdvertisementsPublishedWithAdvertisementsData:(id)a3 completion:(id)a4
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
  v13[5] = sub_100F993C4;
  v13[6] = v12;
  v14 = v8;
  sub_100017D5C(v9, v11);

  static Transaction.asyncTask(name:block:)();

  sub_100016590(v9, v11);
}

- (void)deleteAllAnonymousObservedAdvertisementsWithCompletion:(id)a3
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

- (void)reverseChronologicalObservationsWithIdentifierData:(id)a3 limit:(int64_t)a4 isPublished:(BOOL)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = a3;
  v12 = self;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = swift_allocObject();
  *(v16 + 16) = v10;
  type metadata accessor for Transaction();
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  *(v17 + 24) = v15;
  *(v17 + 32) = v12;
  *(v17 + 40) = a4;
  *(v17 + 48) = a5;
  *(v17 + 56) = sub_100F993C4;
  *(v17 + 64) = v16;
  v18 = v12;
  sub_100017D5C(v13, v15);

  static Transaction.asyncTask(name:block:)();

  sub_100016590(v13, v15);
}

- (void)observationsWithAdvertisementsData:(id)a3 completion:(id)a4
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
  v13[5] = sub_100F993C4;
  v13[6] = v12;
  v14 = v8;
  sub_100017D5C(v9, v11);

  static Transaction.asyncTask(name:block:)();

  sub_100016590(v9, v11);
}

- (void)nearbyBeaconsWithSeconds:(double)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  type metadata accessor for Transaction();
  v8 = swift_allocObject();
  *(v8 + 16) = self;
  *(v8 + 24) = a3;
  *(v8 + 32) = sub_100F993C4;
  *(v8 + 40) = v7;
  v9 = self;

  static Transaction.asyncTask(name:block:)();
}

- (void)locationsWithAdvertisementsData:(id)a3 completion:(id)a4
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
  v13[5] = sub_100F993C4;
  v13[6] = v12;
  v14 = v8;
  sub_100017D5C(v9, v11);

  static Transaction.asyncTask(name:block:)();

  sub_100016590(v9, v11);
}

- (void)latestStatusWithIdentifierData:(id)a3 completion:(id)a4
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
  v13[5] = sub_100F993C4;
  v13[6] = v12;
  v14 = v8;
  sub_100017D5C(v9, v11);

  static Transaction.asyncTask(name:block:)();

  sub_100016590(v9, v11);
}

- (void)latestObservedAdvertisementWithIdentifierData:(id)a3 completion:(id)a4
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
  v13[5] = sub_100F993C4;
  v13[6] = v12;
  v14 = v8;
  sub_100017D5C(v9, v11);

  static Transaction.asyncTask(name:block:)();

  sub_100016590(v9, v11);
}

- (void)latestAnonymousObservationsWithLimit:(int64_t)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  type metadata accessor for Transaction();
  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = a3;
  v8[4] = sub_100F993C4;
  v8[5] = v7;
  v9 = self;

  static Transaction.asyncTask(name:block:)();
}

- (void)latestDeviceEventWithIdentifierData:(id)a3 source:(id)a4 attachedDevice:(id)a5 completion:(id)a6
{
  v11 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v38 = *(v11 - 8);
  v12 = *(v38 + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v14 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = v36 - v15;
  v17 = _Block_copy(a6);
  v18 = a3;
  v37 = self;
  v19 = a4;
  v20 = a5;
  v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (v20)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = type metadata accessor for UUID();
    (*(*(v24 - 8) + 56))(v16, 0, 1, v24);
  }

  else
  {
    v25 = type metadata accessor for UUID();
    (*(*(v25 - 8) + 56))(v16, 1, 1, v25);
  }

  v26 = swift_allocObject();
  *(v26 + 16) = v17;
  v36[1] = type metadata accessor for Transaction();
  sub_100015794(v16, v14);
  v27 = (*(v38 + 80) + 48) & ~*(v38 + 80);
  v28 = swift_allocObject();
  v28[2] = v21;
  v28[3] = v23;
  v28[4] = v19;
  v29 = v23;
  v30 = v21;
  v31 = v19;
  v32 = v37;
  v28[5] = v37;
  sub_10012C154(v14, v28 + v27);
  v33 = (v28 + ((v12 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v33 = sub_100F993C4;
  v33[1] = v26;
  v34 = v32;
  v35 = v31;
  sub_100017D5C(v30, v29);

  static Transaction.asyncTask(name:block:)();

  sub_100016590(v30, v29);
  sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
}

- (void)attachedEventsWithIdentifierData:(id)a3 attachedDevice:(id)a4 completion:(id)a5
{
  v9 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9 - 8);
  v13 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v30 - v14;
  v16 = _Block_copy(a5);
  v17 = a3;
  v18 = self;
  v19 = a4;
  v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  if (v19)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = type metadata accessor for UUID();
    (*(*(v23 - 8) + 56))(v15, 0, 1, v23);
  }

  else
  {
    v24 = type metadata accessor for UUID();
    (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
  }

  v25 = swift_allocObject();
  *(v25 + 16) = v16;
  type metadata accessor for Transaction();
  sub_100015794(v15, v13);
  v26 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v27 = swift_allocObject();
  v27[2] = v20;
  v27[3] = v22;
  v27[4] = v18;
  sub_10012C154(v13, v27 + v26);
  v28 = (v27 + ((v11 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v28 = sub_100F993C4;
  v28[1] = v25;
  v29 = v18;
  sub_100017D5C(v20, v22);

  static Transaction.asyncTask(name:block:)();

  sub_100016590(v20, v22);
  sub_10000B3A8(v15, &qword_1016980D0, &unk_10138F3B0);
}

- (void)storeDeviceEventWithDeviceEvent:(id)a3 completion:(id)a4
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
  v13[5] = sub_10026AE30;
  v13[6] = v12;
  v14 = v8;
  sub_100017D5C(v9, v11);

  static Transaction.asyncTask(name:block:)();

  sub_100016590(v9, v11);
}

- (void)anonymousObservationCountWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  type metadata accessor for Transaction();
  v6 = swift_allocObject();
  v6[2] = self;
  v6[3] = sub_1011FC368;
  v6[4] = v5;
  v7 = self;

  static Transaction.asyncTask(name:block:)();
}

- (void)decimateLowValueObservationsWithCompletion:(id)a3
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

- (void)deleteRedundantReconciledAdvertisementsWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  type metadata accessor for Transaction();
  v6 = swift_allocObject();
  v6[2] = self;
  v6[3] = sub_1001BC108;
  v6[4] = v5;
  v7 = self;

  static Transaction.asyncTask(name:block:)();
}

- (void)storeWithKeySyncMetadataData:(id)a3 completion:(id)a4
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
  v13[5] = sub_10026AE30;
  v13[6] = v12;
  v14 = v8;
  sub_100017D5C(v9, v11);

  static Transaction.asyncTask(name:block:)();

  sub_100016590(v9, v11);
}

- (void)metadataWithBeaconIdentifier:(id)a3 completion:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v13 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  type metadata accessor for Transaction();
  (*(v7 + 16))(v10, v12, v6);
  v15 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = self;
  (*(v7 + 32))(v17 + v15, v10, v6);
  v18 = (v17 + v16);
  *v18 = sub_100F993C4;
  v18[1] = v14;
  v19 = self;

  static Transaction.asyncTask(name:block:)();

  (*(v7 + 8))(v12, v6);
}

- (void)metadataWithBeaconIdentifier:(id)a3 typesData:(id)a4 completion:(id)a5
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
  *v25 = sub_1007BF36C;
  v25[1] = v21;
  v26 = v17;
  sub_100017D5C(v18, v20);

  static Transaction.asyncTask(name:block:)();

  sub_100016590(v18, v20);
  (*(v9 + 8))(v28, v8);
}

- (void)deleteMetadataWithBeaconIdentifier:(id)a3 completion:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v13 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  type metadata accessor for Transaction();
  (*(v7 + 16))(v10, v12, v6);
  v15 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = self;
  (*(v7 + 32))(v17 + v15, v10, v6);
  v18 = (v17 + v16);
  *v18 = sub_10026AE30;
  v18[1] = v14;
  v19 = self;

  static Transaction.asyncTask(name:block:)();

  (*(v7 + 8))(v12, v6);
}

- (void)removeOrphanedKeySyncMetaDataWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  type metadata accessor for Transaction();
  v6 = swift_allocObject();
  v6[2] = self;
  v6[3] = sub_10001E370;
  v6[4] = v5;
  v7 = self;

  static Transaction.asyncTask(name:block:)();
}

@end