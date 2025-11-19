@interface BeaconManagerTrampoline
- (_TtC12searchpartyd23BeaconManagerTrampoline)init;
- (void)acceptUTForBeaconUUID:(id)a3;
- (void)allBeaconingKeysForUUID:(id)a3 dateInterval:(id)a4 forceGenerate:(BOOL)a5 completion:(id)a6;
- (void)allBeaconsOfTypes:(id)a3 includeDupes:(BOOL)a4 includeHidden:(BOOL)a5 completion:(id)a6;
- (void)allObservationsForBeacon:(id)a3 completion:(id)a4;
- (void)allPairingErrorsWithCompletion:(id)a3;
- (void)beaconGroupsForUUIDs:(id)a3 completion:(id)a4;
- (void)beaconingKeysForUUID:(id)a3 dateInterval:(id)a4 completion:(id)a5;
- (void)beaconingKeysOfType:(int64_t)a3 withCompletion:(id)a4;
- (void)beaconsInFirmwareUpdateState:(int64_t)a3 dateInterval:(id)a4 completion:(id)a5;
- (void)beaconsToMaintainPersistentConnection:(id)a3;
- (void)bluetoothConnectionKeysFor:(id)a3 completion:(id)a4;
- (void)bluetoothPowerStateUpdated:(int64_t)a3;
- (void)clientConfigurationWithCompletion:(id)a3;
- (void)commandKeysForUUIDs:(id)a3 completion:(id)a4;
- (void)commandKeysForUUIDs:(id)a3 dateInterval:(id)a4 completion:(id)a5;
- (void)connectUsingMACAddress:(id)a3 longTermKey:(id)a4 completion:(id)a5;
- (void)connectedToBeacon:(id)a3 withIndex:(int64_t)a4 completion:(id)a5;
- (void)currentBeaconingKeyWithCompletion:(id)a3;
- (void)delegatedLocationForContext:(id)a3 completion:(id)a4;
- (void)didDetectUnauthorizedTrackingWithCompletion:(id)a3 completion:(id)a4;
- (void)didObserveUnauthorizedTrackingWithCompletion:(id)a3 completion:(id)a4;
- (void)didWithdrawUnauthorizedTrackingWithCompletion:(id)a3 completion:(id)a4;
- (void)disableUTAppAlert:(BOOL)a3 completion:(id)a4;
- (void)disconnectFromMACAddress:(id)a3 completion:(id)a4;
- (void)fetchHawkeyeAIS:(id)a3 metadataType:(unint64_t)a4 completion:(id)a5;
- (void)fetchHawkeyeFirmwareVersion:(id)a3 completion:(id)a4;
- (void)fetchUnauthorizedEncryptedPayload:(id)a3 completion:(id)a4;
- (void)firmwareUpdateCandidateBeaconsWithCompletion:(id)a3;
- (void)firmwareUpdateStateForBeaconUUID:(id)a3 completion:(id)a4;
- (void)forceDistributeKeysWithCompletion:(id)a3;
- (void)forceKeySyncForBeaconUUID:(id)a3 lastObservationDate:(id)a4 lastObservationIndex:(unint64_t)a5 completion:(id)a6;
- (void)forceLOIBasedSafeLocationRefresh:(id)a3;
- (void)forceRePairingWithUUID:(id)a3 partIds:(id)a4 completion:(id)a5;
- (void)forceUpdateKeyMapsForUUID:(id)a3 completion:(id)a4;
- (void)getOfflineFindingInfoWithCurrentData:(id)a3 completion:(id)a4;
- (void)hasAccessoryWithCapabilities:(unint64_t)a3 completion:(id)a4;
- (void)hintBasedIndexSearchForBeacon:(id)a3 baseIndex:(id)a4 hint:(unsigned __int8)a5 completion:(id)a6;
- (void)ignoreBeaconByUUID:(id)a3 until:(unint64_t)a4;
- (void)ignoreBeaconByUUID:(id)a3 untilDate:(id)a4 completion:(id)a5;
- (void)ignoreTrackingFor:(id)a3 until:(unint64_t)a4 completion:(id)a5;
- (void)ignoreTrackingForUUID:(id)a3 until:(unint64_t)a4 completion:(id)a5;
- (void)initiateFirmwareUpdateForAllEligibleBeaconsWithCompletion:(id)a3;
- (void)isLPEMModeSupportedWithCompletion:(id)a3;
- (void)isUTAppAlertDisabled:(id)a3;
- (void)keySyncMetadataWithcompletion:(id)a3;
- (void)latestLocationsForIdentifiers:(id)a3 fetchLimit:(id)a4 sources:(id)a5 completion:(id)a6;
- (void)leechScannerDiscoveredAdvertisementData:(id)a3 rssi:(int)a4 completion:(id)a5;
- (void)locationForContext:(id)a3 completion:(id)a4;
- (void)offlineAdvertisingKeysForReason:(int64_t)a3 completion:(id)a4;
- (void)pairLowEnergyAccessoryWithIdentifier:(id)a3 completion:(id)a4;
- (void)peripheralConnectionMaterialForAccessoryIdentifier:(id)a3 completion:(id)a4;
- (void)playUnauthorizedSoundOnBeaconUUID:(id)a3 completion:(id)a4;
- (void)poisonBeaconIdentifier:(id)a3 completion:(id)a4;
- (void)primaryAccountModified;
- (void)publishSeparationEventForBeacons:(id)a3 eventType:(int64_t)a4 region:(id)a5 completion:(id)a6;
- (void)publishUnificationEventForBeacons:(id)a3;
- (void)publishWildModeRecordsWithCompletion:(id)a3;
- (void)rawSearchResultsForIdentifier:(id)a3 dateInterval:(id)a4 completion:(id)a5;
- (void)removeDuplicateBeaconsWithCompletion:(id)a3;
- (void)removeSafeLocation:(id)a3 completion:(id)a4;
- (void)setAlignmentUncertainty:(double)a3 atIndex:(int64_t)a4 date:(id)a5 forBeacon:(id)a6 completion:(id)a7;
- (void)setFindMyNetworkStatusForMACAddress:(id)a3 status:(BOOL)a4 completion:(id)a5;
- (void)setServiceState:(id)a3 completion:(id)a4;
- (void)setWildKeyBase:(int64_t)a3 interval:(int64_t)a4 fallback:(int64_t)a5 forBeacon:(id)a6 completion:(id)a7;
- (void)simulateAccessoryPairing:(id)a3 name:(id)a4 isAirPods:(BOOL)a5 completion:(id)a6;
- (void)standaloneBeaconsForUUIDs:(NSArray *)a3 completion:(id)a4;
- (void)startUpdatingSimpleBeaconsWithContext:(id)a3 completion:(id)a4;
- (void)stopFetchingUnauthorizedEncryptedPayloadWithCompletion:(id)a3;
- (void)successfulConnectionForUserIdentifier:(id)a3 beaconIdentifier:(id)a4 primaryIndex:(unint64_t)a5 leMAC:(id)a6 ltkIndex:(unint64_t)a7 ltk:(id)a8 completion:(id)a9;
- (void)tagSeparationStateChanged:(id)a3 beaconUUID:(id)a4 location:(id)a5 completion:(id)a6;
- (void)unknownBeaconsForUUIDs:(id)a3 completion:(id)a4;
- (void)unpairLowEnergyAccessoryWithIdentifier:(id)a3 completion:(id)a4;
- (void)unpairUUID:(id)a3 force:(BOOL)a4 completion:(id)a5;
- (void)updateBeaconObservations:(id)a3 completion:(id)a4;
- (void)updateBeaconUUID:(id)a3 firmwareUpdateState:(int64_t)a4 systemVersion:(id)a5 error:(id)a6 completion:(id)a7;
- (void)userHasAcknowledgeFindMyWithCompletion:(id)a3;
- (void)waitForBeaconStoreAvailableWithCompletion:(id)a3;
@end

@implementation BeaconManagerTrampoline

- (void)isUTAppAlertDisabled:(id)a3
{
  v3 = _Block_copy(a3);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v4 = sub_1000034A4();
  v5 = sub_100003518();
  v6 = v4[6];
  v7 = v4[7];
  v8 = String._bridgeToObjectiveC()();
  v9 = [v5 BOOLForKey:v8];

  v3[2](v3, v9);

  _Block_release(v3);
}

- (void)beaconGroupsForUUIDs:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  type metadata accessor for UUID();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = *sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]);
  v9 = self;
  sub_1000042C8(v6, sub_10000A150, v7);
}

- (void)allBeaconsOfTypes:(id)a3 includeDupes:(BOOL)a4 includeHidden:(BOOL)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
  type metadata accessor for SPBeaconType(0);
  sub_100F989D0(&qword_1016C1AA0, type metadata accessor for SPBeaconType);
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = self;
  sub_100F8AB94(v10, a4, a5, sub_100F993DC, v11);
}

- (void)locationForContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_10000B408(v8, v11);
  v10 = *sub_1000035D0((&v9->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&v9->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]);

  sub_10000B83C(v11, v10, sub_1007BEF48, v7);

  sub_1004E2CD8(v11);
}

- (void)startUpdatingSimpleBeaconsWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v8 = a3;
  v7 = self;
  sub_10000F5AC(v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)clientConfigurationWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  *(swift_allocObject() + 16) = v4;
  sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]);
  type metadata accessor for BeaconManagerService();
  v5 = self;
  sub_10000FC9C(sub_1007BF808);
}

- (void)firmwareUpdateCandidateBeaconsWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1002F2B64(sub_1002FDD50, v5);
}

- (void)updateBeaconUUID:(id)a3 firmwareUpdateState:(int64_t)a4 systemVersion:(id)a5 error:(id)a6 completion:(id)a7
{
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(a7);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  if (a5)
  {
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a5 = v19;
  }

  else
  {
    v18 = 0;
  }

  _Block_copy(v17);
  v20 = a6;
  v21 = self;
  sub_1002FA8A0(v16, a4, v18, a5, a6, v21, v17);
  _Block_release(v17);
  _Block_release(v17);

  (*(v13 + 8))(v16, v12);
}

- (void)beaconsInFirmwareUpdateState:(int64_t)a3 dateInterval:(id)a4 completion:(id)a5
{
  v8 = type metadata accessor for DateInterval();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a5);
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v13);
  v14 = self;
  sub_1002FAE34(a3, v12, v14, v13);
  _Block_release(v13);
  _Block_release(v13);

  (*(v9 + 8))(v12, v8);
}

- (void)initiateFirmwareUpdateForAllEligibleBeaconsWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1002FB1D0(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)firmwareUpdateStateForBeaconUUID:(id)a3 completion:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = self;
  sub_1002F3394(v10, sub_1001BC2E0, v12);

  (*(v7 + 8))(v10, v6);
}

- (void)didObserveUnauthorizedTrackingWithCompletion:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  sub_100008BB8(0, qword_1016C9080, SPUnauthorizedTrackingObservation_ptr);
  sub_100009CC8(&qword_10169F038, qword_1016C9080, SPUnauthorizedTrackingObservation_ptr);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = *sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]);
  _Block_copy(v5);
  v8 = self;
  v9 = sub_100A2C208();
  sub_1007A0164(v6, v9, v5);
  _Block_release(v5);

  _Block_release(v5);
}

- (void)standaloneBeaconsForUUIDs:(NSArray *)a3 completion:(id)a4
{
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1013BBA30;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1013F8070;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_101026478(0, 0, v10, &unk_1013BBA40, v15);
}

- (void)connectUsingMACAddress:(id)a3 longTermKey:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = a3;
  v10 = a4;
  v17 = self;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  _Block_copy(v8);
  sub_1007B8530(v11, v13, v14, v16, v8);
  _Block_release(v8);
  _Block_release(v8);
  sub_100016590(v14, v16);
  sub_100016590(v11, v13);
}

- (void)disconnectFromMACAddress:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v11 = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  _Block_copy(v6);
  sub_1007B88FC(v8, v10, v6);
  _Block_release(v6);
  _Block_release(v6);
  sub_100016590(v8, v10);
}

- (void)setFindMyNetworkStatusForMACAddress:(id)a3 status:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = _Block_copy(a5);
  v9 = a3;
  v13 = self;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  _Block_copy(v8);
  sub_1007B8C9C(v10, v12, v5, v13, v8);
  _Block_release(v8);
  _Block_release(v8);
  sub_100016590(v10, v12);
}

- (void)hasAccessoryWithCapabilities:(unint64_t)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  type metadata accessor for Transaction();
  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = a3;
  v8[4] = sub_100011168;
  v8[5] = v7;
  v9 = self;

  static Transaction.asyncTask(name:block:)();
}

- (void)simulateAccessoryPairing:(id)a3 name:(id)a4 isAirPods:(BOOL)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = *sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]);
  _Block_copy(v9);
  v15 = a3;
  v14 = self;
  sub_100705E18(v15, v10, v12, a5, v13, v9);
  _Block_release(v9);

  _Block_release(v9);
}

- (void)fetchUnauthorizedEncryptedPayload:(id)a3 completion:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = self;
  static os_log_type_t.default.getter();
  if (qword_1016950B0 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_101385D80;
  v15 = UUID.uuidString.getter();
  v17 = v16;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_100008C00();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  os_log(_:dso:log:_:_:)();

  v18 = *sub_1000035D0((&v13->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&v13->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]);
  sub_1006A4F18(v10, sub_1007BF38C, v12);

  (*(v7 + 8))(v10, v6);
}

- (void)fetchHawkeyeFirmwareVersion:(id)a3 completion:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1007BF36C;
  *(v13 + 24) = v12;
  v14 = self;

  sub_100706394(v10, sub_1007BF374, v13);

  (*(v7 + 8))(v10, v6);
}

- (void)stopFetchingUnauthorizedEncryptedPayloadWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1007B98CC(sub_10026AE30, v5);
}

- (void)hintBasedIndexSearchForBeacon:(id)a3 baseIndex:(id)a4 hint:(unsigned __int8)a5 completion:(id)a6
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(a6);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  *(swift_allocObject() + 16) = v15;
  v16 = *sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]);
  v17 = a4;
  v18 = self;
  sub_1004E0128(v14, v17, a5, v16, sub_1007BF364);

  (*(v11 + 8))(v14, v10);
}

- (void)forceKeySyncForBeaconUUID:(id)a3 lastObservationDate:(id)a4 lastObservationIndex:(unint64_t)a5 completion:(id)a6
{
  v41 = a5;
  v39 = a4;
  v36 = a3;
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v42 = &v33 - v9;
  v40 = type metadata accessor for Date();
  v10 = *(v40 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v40);
  v37 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v33 - v13;
  v15 = type metadata accessor for UUID();
  v33 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v34 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v33 - v19;
  v21 = _Block_copy(a6);
  v38 = v20;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v14;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v42, 1, 1, v23);
  (*(v16 + 16))(&v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v15);
  v24 = v37;
  v25 = v40;
  (*(v10 + 16))(v37, v14, v40);
  v26 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v27 = (v17 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (*(v10 + 80) + v27 + 8) & ~*(v10 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  v30 = v29 + v26;
  v31 = v33;
  (*(v16 + 32))(v30, v34, v33);
  *(v29 + v27) = v41;
  (*(v10 + 32))(v29 + v28, v24, v25);
  v32 = (v29 + ((v11 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v32 = sub_10026AE30;
  v32[1] = v22;

  sub_10025EDD4(0, 0, v42, &unk_1013BB9F8, v29);

  (*(v10 + 8))(v35, v25);
  (*(v16 + 8))(v38, v31);
}

- (void)forceRePairingWithUUID:(id)a3 partIds:(id)a4 completion:(id)a5
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v12);
  v14 = self;
  sub_1007B9E90(v11, v13, v14, v12);
  _Block_release(v12);
  _Block_release(v12);

  (*(v8 + 8))(v11, v7);
}

- (void)waitForBeaconStoreAvailableWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(*sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]) + 280);
  v7 = self;
  sub_100B1380C(v6, sub_1007BF0CC, v5);
}

- (void)beaconsToMaintainPersistentConnection:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = *sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]);
  _Block_copy(v4);
  v6 = self;
  sub_1004E03F4(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)ignoreBeaconByUUID:(id)a3 until:(unint64_t)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = self;
  sub_1007B3F98(v10, a4);

  (*(v7 + 8))(v10, v6);
}

- (void)unknownBeaconsForUUIDs:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  type metadata accessor for UUID();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = self;
  sub_1007B41DC(v6, sub_1007BF0A0, v7);
}

- (void)didDetectUnauthorizedTrackingWithCompletion:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  sub_100008BB8(0, qword_1016C9080, SPUnauthorizedTrackingObservation_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  v7 = self;
  sub_1007B44E0(v6, v7, v5);
  _Block_release(v5);
}

- (void)didWithdrawUnauthorizedTrackingWithCompletion:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  sub_100008BB8(0, qword_1016C9080, SPUnauthorizedTrackingObservation_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  v7 = self;
  sub_1007BA690(v6, v7, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)acceptUTForBeaconUUID:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_1007B48A8();

  (*(v5 + 8))(v8, v4);
}

- (void)playUnauthorizedSoundOnBeaconUUID:(id)a3 completion:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = self;
  sub_1007B4AD0(v10, sub_10026AE30, v12);

  (*(v7 + 8))(v10, v6);
}

- (void)ignoreTrackingForUUID:(id)a3 until:(unint64_t)a4 completion:(id)a5
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  if (v13)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    v13 = sub_10026AE30;
  }

  else
  {
    v14 = 0;
  }

  v15 = self;
  sub_1007B5270(v12, a4, v13, v14);
  sub_1000BB27C(v13);

  (*(v9 + 8))(v12, v8);
}

- (void)ignoreBeaconByUUID:(id)a3 untilDate:(id)a4 completion:(id)a5
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  if (v17)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    v19 = sub_10026AE30;
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  v20 = self;
  sub_1007B556C(v16, v11, v19, v18);
  sub_1000BB27C(v19);

  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

- (void)ignoreTrackingFor:(id)a3 until:(unint64_t)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_10026AE30;
  }

  else
  {
    v9 = 0;
  }

  v10 = a3;
  v11 = self;
  sub_1007B590C(v10, a4, v8, v9);
  sub_1000BB27C(v8);
}

- (void)disableUTAppAlert:(BOOL)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  if (v5)
  {
    *(swift_allocObject() + 16) = v5;
    v6 = sub_10026AE30;
  }

  else
  {
    v6 = 0;
  }

  if (qword_101694940 != -1)
  {
    swift_once();
  }

  sub_1000034A4();
  sub_100EEAA1C(a3);

  if (v5)
  {
    (v6)(0);

    sub_1000BB27C(v6);
  }
}

- (void)latestLocationsForIdentifiers:(id)a3 fetchLimit:(id)a4 sources:(id)a5 completion:(id)a6
{
  v9 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  v13 = _Block_copy(a6);
  type metadata accessor for UUID();
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = type metadata accessor for Date();
    (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
  }

  else
  {
    v16 = type metadata accessor for Date();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  }

  type metadata accessor for SPBeaconLocationSource(0);
  sub_1007BECAC(&qword_1016964A0, type metadata accessor for SPBeaconLocationSource);
  v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  v19 = self;
  sub_1007B1E14(v17);
  v21 = v20;

  v22 = sub_10112B120(v21);

  v23 = *sub_1000035D0((&v19->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&v19->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]);
  sub_1004ADD04(v14, v12, v22, 1, sub_1007BEF64, v18);

  sub_10000B3A8(v12, &unk_101696900, &unk_10138B1E0);
}

- (void)delegatedLocationForContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  type metadata accessor for Transaction();
  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = a3;
  v8[4] = sub_1007BF8E0;
  v8[5] = v7;
  v9 = a3;
  v11 = self;
  v10 = v9;

  static Transaction.asyncTask(name:block:)();
}

- (void)rawSearchResultsForIdentifier:(id)a3 dateInterval:(id)a4 completion:(id)a5
{
  v7 = type metadata accessor for DateInterval();
  v19 = *(v7 - 8);
  v20 = v7;
  v8 = *(v19 + 64);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UUID();
  v11 = *(v18 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v18);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
  *(swift_allocObject() + 16) = v15;
  sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]);
  type metadata accessor for BeaconManagerService();
  v16 = self;
  sub_1004D39B0();

  (*(v19 + 8))(v10, v20);
  (*(v11 + 8))(v14, v18);
}

- (void)forceDistributeKeysWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  if (*(*sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]) + 40))
  {
    v6 = self;

    sub_10053067C(sub_10026AE30, v5);
  }

  else
  {
    __break(1u);
  }
}

- (void)forceUpdateKeyMapsForUUID:(id)a3 completion:(id)a4
{
  v7 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16 - v9;
  v11 = _Block_copy(a4);
  if (a3)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  v14 = *sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]);
  _Block_copy(v11);
  v15 = self;
  sub_1004DF188(v10, v14, v11);
  _Block_release(v11);
  _Block_release(v11);
  sub_10000B3A8(v10, &qword_1016980D0, &unk_10138F3B0);
}

- (void)allObservationsForBeacon:(id)a3 completion:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v11);
  v12 = self;
  sub_100A492E4(v10, v11);
  _Block_release(v11);
  _Block_release(v11);
  (*(v7 + 8))(v10, v6);
}

- (void)peripheralConnectionMaterialForAccessoryIdentifier:(id)a3 completion:(id)a4
{
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v24 - v14;
  v16 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1001BC108;
  *(v18 + 24) = v17;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  (*(v10 + 16))(v13, v15, v9);
  v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v21 = (v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  (*(v10 + 32))(v22 + v20, v13, v9);
  v23 = (v22 + v21);
  *v23 = sub_1007BEA74;
  v23[1] = v18;

  sub_10025EDD4(0, 0, v8, &unk_1013BB9C0, v22);

  (*(v10 + 8))(v15, v9);
}

- (void)publishWildModeRecordsWithCompletion:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10001E370;
  *(v5 + 24) = v4;
  type metadata accessor for Transaction();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1007B78F8;
  *(v6 + 24) = v5;

  static Transaction.asyncTask(name:block:)();
}

- (void)removeSafeLocation:(id)a3 completion:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v11);
  v12 = self;
  sub_100A151A4(v10, v12, v11);
  _Block_release(v11);
  _Block_release(v11);

  (*(v7 + 8))(v10, v6);
}

- (void)publishSeparationEventForBeacons:(id)a3 eventType:(int64_t)a4 region:(id)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
  type metadata accessor for UUID();
  sub_100003F64(&qword_1016967B0, &type metadata accessor for UUID);
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = *sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]);

  v13 = a5;
  v14 = self;
  sub_100A16FA4(v10, a4, v13, v12, sub_100011168, v11);
}

- (void)publishUnificationEventForBeacons:(id)a3
{
  type metadata accessor for UUID();
  sub_100003F64(&qword_1016967B0, &type metadata accessor for UUID);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]);
  v6 = self;
  sub_1009D5310(v4);
}

- (void)forceLOIBasedSafeLocationRefresh:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1009CC3A4(sub_1002FB454, v5);
}

- (void)primaryAccountModified
{
  v3 = *sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]);
  v4 = self;
  sub_1003DD418();
}

- (void)beaconingKeysOfType:(int64_t)a3 withCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = self;
  sub_100F8AED8(a3, sub_100F99350, v7);
}

- (void)beaconingKeysForUUID:(id)a3 dateInterval:(id)a4 completion:(id)a5
{
  v7 = type metadata accessor for DateInterval();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v17);
  v18 = self;
  sub_100F953F0(v16, v11, v18, v17);
  _Block_release(v17);
  _Block_release(v17);

  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

- (void)setServiceState:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = qword_101694940;
  v7 = a3;
  if (v6 != -1)
  {
    swift_once();
  }

  sub_1000034A4();
  v8 = v7;
  sub_100EE9AB4(v8);

  v5[2](v5, 0);

  _Block_release(v5);
}

- (void)bluetoothPowerStateUpdated:(int64_t)a3
{
  v5 = *(*sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]) + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_theftDeterrenceStateManager);
  v6 = self;
  sub_100EFAC8C(a3);
}

- (void)isLPEMModeSupportedWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = *(*sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]) + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_theftDeterrenceStateManager);
  v7 = self;
  v6 = sub_100EFAE94();
  v4[2](v4, v6 & 1);
  _Block_release(v4);
}

- (void)userHasAcknowledgeFindMyWithCompletion:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = [v4 userHasAcknowledgedFindMy];

  v3[2](v3, v5);

  _Block_release(v3);
}

- (void)offlineAdvertisingKeysForReason:(int64_t)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = *sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]);
  _Block_copy(v6);
  v8 = self;
  sub_10071569C(a3, v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)allPairingErrorsWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = *sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]);
  _Block_copy(v4);
  v6 = self;
  sub_1004052AC(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)commandKeysForUUIDs:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  type metadata accessor for UUID();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = self;
  sub_100F8BAD4(v6, sub_100F993D8, v7);
}

- (void)commandKeysForUUIDs:(id)a3 dateInterval:(id)a4 completion:(id)a5
{
  v7 = type metadata accessor for DateInterval();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a5);
  type metadata accessor for UUID();
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = self;
  sub_100F8BDDC(v13, v11, sub_100F992D4, v14);

  (*(v8 + 8))(v11, v7);
}

- (void)allBeaconingKeysForUUID:(id)a3 dateInterval:(id)a4 forceGenerate:(BOOL)a5 completion:(id)a6
{
  v21 = a5;
  v8 = type metadata accessor for DateInterval();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = _Block_copy(a6);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v18);
  v19 = self;
  sub_100F95948(v17, v12, v21, v19, v18);
  _Block_release(v18);
  _Block_release(v18);

  (*(v9 + 8))(v12, v8);
  (*(v14 + 8))(v17, v13);
}

- (void)setWildKeyBase:(int64_t)a3 interval:(int64_t)a4 fallback:(int64_t)a5 forBeacon:(id)a6 completion:(id)a7
{
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(a7);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v17);
  v18 = self;
  sub_100F96528(a3, a4, a5, v16, v18, v17);
  _Block_release(v17);
  _Block_release(v17);

  (*(v13 + 8))(v16, v12);
}

- (void)setAlignmentUncertainty:(double)a3 atIndex:(int64_t)a4 date:(id)a5 forBeacon:(id)a6 completion:(id)a7
{
  v24 = a4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = _Block_copy(a7);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v22 = self;
  sub_100F8C750(v24, v19, v14, sub_1001BBDE4, v21, a3);

  (*(v11 + 8))(v14, v10);
  (*(v16 + 8))(v19, v15);
}

- (void)connectedToBeacon:(id)a3 withIndex:(int64_t)a4 completion:(id)a5
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v13);
  v14 = self;
  sub_100F96A14(v12, a4, v14, v13);
  _Block_release(v13);
  _Block_release(v13);

  (*(v9 + 8))(v12, v8);
}

- (void)updateBeaconObservations:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  sub_100008BB8(0, &qword_1016B27C0, SPBeaconObservation_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  v7 = self;
  sub_100F96BB4(v6, v7, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)removeDuplicateBeaconsWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100F99208;
  *(v6 + 24) = v5;
  type metadata accessor for BeaconManagerService();
  v7 = self;

  sub_1006DCB4C();
}

- (void)keySyncMetadataWithcompletion:(id)a3
{
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = self;
  v12[5] = sub_100F993C4;
  v12[6] = v10;
  v13 = self;
  sub_10025EDD4(0, 0, v8, &unk_1013F54A8, v12);
}

- (void)unpairUUID:(id)a3 force:(BOOL)a4 completion:(id)a5
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v13);
  v14 = self;
  sub_100F970E0(v12, a4, v14, v13);
  _Block_release(v13);
  _Block_release(v13);

  (*(v9 + 8))(v12, v8);
}

- (void)currentBeaconingKeyWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1001BC2E0;
  *(v7 + 24) = v5;
  v8 = self;

  sub_100697FA8(0, sub_100F98ED8, v7);
}

- (void)getOfflineFindingInfoWithCurrentData:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = self;
  if (a3)
  {
    v7 = a3;
    a3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v9 = 0xF000000000000000;
  }

  *(swift_allocObject() + 16) = v5;
  v10 = sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]);
  sub_100409708(*v10, sub_100F993C4);
  sub_100006654(a3, v9);
}

- (void)poisonBeaconIdentifier:(id)a3 completion:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v11);
  v12 = self;
  sub_100409D10(v10, v11);
  _Block_release(v11);
  (*(v7 + 8))(v10, v6);

  _Block_release(v11);
}

- (_TtC12searchpartyd23BeaconManagerTrampoline)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)bluetoothConnectionKeysFor:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  type metadata accessor for Transaction();
  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = a3;
  v8[4] = sub_1007BF8E0;
  v8[5] = v7;
  v9 = a3;
  v11 = self;
  v10 = v9;

  static Transaction.asyncTask(name:block:)();
}

- (void)successfulConnectionForUserIdentifier:(id)a3 beaconIdentifier:(id)a4 primaryIndex:(unint64_t)a5 leMAC:(id)a6 ltkIndex:(unint64_t)a7 ltk:(id)a8 completion:(id)a9
{
  v67 = a7;
  v68 = a8;
  v66 = a5;
  v63 = self;
  v70 = type metadata accessor for UUID();
  v10 = *(v70 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v70);
  v69 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v55 - v14;
  v56 = &v55 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v55 - v17;
  __chkstk_darwin(v16);
  v20 = &v55 - v19;
  v21 = _Block_copy(a9);
  v65 = v20;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v18;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = a6;
  v23 = v68;
  v68 = v63;
  v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v25;
  v62 = v24;

  v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v27;
  v60 = v26;

  v57 = swift_allocObject();
  *(v57 + 16) = v21;
  v63 = type metadata accessor for Transaction();
  v28 = *(v10 + 16);
  v29 = v15;
  v30 = v70;
  v28(v29, v20, v70);
  v28(v69, v18, v30);
  v31 = *(v10 + 80);
  v32 = v10;
  v58 = v10;
  v33 = (v31 + 24) & ~v31;
  v34 = (v11 + v31 + v33) & ~v31;
  v35 = (v11 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 23) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  *(v40 + 16) = v68;
  v41 = *(v32 + 32);
  v42 = v40 + v33;
  v43 = v70;
  v41(v42, v56, v70);
  v41(v40 + v34, v69, v43);
  *(v40 + v35) = v66;
  v44 = (v40 + v36);
  v46 = v61;
  v45 = v62;
  *v44 = v62;
  v44[1] = v46;
  *(v40 + v37) = v67;
  v47 = (v40 + v38);
  v49 = v59;
  v48 = v60;
  *v47 = v60;
  v47[1] = v49;
  v50 = (v40 + v39);
  v51 = v57;
  *v50 = sub_10026AE30;
  v50[1] = v51;
  v52 = v68;
  sub_100017D5C(v45, v46);
  sub_100017D5C(v48, v49);

  static Transaction.asyncTask(name:block:)();

  sub_100016590(v48, v49);
  sub_100016590(v45, v46);
  v53 = *(v58 + 8);
  v54 = v70;
  v53(v64, v70);
  v53(v65, v54);
}

- (void)leechScannerDiscoveredAdvertisementData:(id)a3 rssi:(int)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  type metadata accessor for Transaction();
  v10 = swift_allocObject();
  *(v10 + 16) = self;
  *(v10 + 24) = v8;
  *(v10 + 32) = a4;
  *(v10 + 40) = sub_10026AE30;
  *(v10 + 48) = v9;
  v11 = self;

  static Transaction.asyncTask(name:block:)();
}

- (void)pairLowEnergyAccessoryWithIdentifier:(id)a3 completion:(id)a4
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

- (void)unpairLowEnergyAccessoryWithIdentifier:(id)a3 completion:(id)a4
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

- (void)fetchHawkeyeAIS:(id)a3 metadataType:(unint64_t)a4 completion:(id)a5
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = self;
  sub_100F97B60(v12, a4, sub_1007BF36C, v14);

  (*(v9 + 8))(v12, v8);
}

- (void)tagSeparationStateChanged:(id)a3 beaconUUID:(id)a4 location:(id)a5 completion:(id)a6
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(a6);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v15);
  v16 = a3;
  v17 = a5;
  v18 = self;
  sub_1011A3758(v16, v14, v18, v15);
  _Block_release(v15);
  _Block_release(v15);

  (*(v11 + 8))(v14, v10);
}

@end