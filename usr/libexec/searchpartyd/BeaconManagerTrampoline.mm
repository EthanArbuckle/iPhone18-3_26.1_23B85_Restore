@interface BeaconManagerTrampoline
- (_TtC12searchpartyd23BeaconManagerTrampoline)init;
- (void)acceptUTForBeaconUUID:(id)d;
- (void)allBeaconingKeysForUUID:(id)d dateInterval:(id)interval forceGenerate:(BOOL)generate completion:(id)completion;
- (void)allBeaconsOfTypes:(id)types includeDupes:(BOOL)dupes includeHidden:(BOOL)hidden completion:(id)completion;
- (void)allObservationsForBeacon:(id)beacon completion:(id)completion;
- (void)allPairingErrorsWithCompletion:(id)completion;
- (void)beaconGroupsForUUIDs:(id)ds completion:(id)completion;
- (void)beaconingKeysForUUID:(id)d dateInterval:(id)interval completion:(id)completion;
- (void)beaconingKeysOfType:(int64_t)type withCompletion:(id)completion;
- (void)beaconsInFirmwareUpdateState:(int64_t)state dateInterval:(id)interval completion:(id)completion;
- (void)beaconsToMaintainPersistentConnection:(id)connection;
- (void)bluetoothConnectionKeysFor:(id)for completion:(id)completion;
- (void)bluetoothPowerStateUpdated:(int64_t)updated;
- (void)clientConfigurationWithCompletion:(id)completion;
- (void)commandKeysForUUIDs:(id)ds completion:(id)completion;
- (void)commandKeysForUUIDs:(id)ds dateInterval:(id)interval completion:(id)completion;
- (void)connectUsingMACAddress:(id)address longTermKey:(id)key completion:(id)completion;
- (void)connectedToBeacon:(id)beacon withIndex:(int64_t)index completion:(id)completion;
- (void)currentBeaconingKeyWithCompletion:(id)completion;
- (void)delegatedLocationForContext:(id)context completion:(id)completion;
- (void)didDetectUnauthorizedTrackingWithCompletion:(id)completion completion:(id)a4;
- (void)didObserveUnauthorizedTrackingWithCompletion:(id)completion completion:(id)a4;
- (void)didWithdrawUnauthorizedTrackingWithCompletion:(id)completion completion:(id)a4;
- (void)disableUTAppAlert:(BOOL)alert completion:(id)completion;
- (void)disconnectFromMACAddress:(id)address completion:(id)completion;
- (void)fetchHawkeyeAIS:(id)s metadataType:(unint64_t)type completion:(id)completion;
- (void)fetchHawkeyeFirmwareVersion:(id)version completion:(id)completion;
- (void)fetchUnauthorizedEncryptedPayload:(id)payload completion:(id)completion;
- (void)firmwareUpdateCandidateBeaconsWithCompletion:(id)completion;
- (void)firmwareUpdateStateForBeaconUUID:(id)d completion:(id)completion;
- (void)forceDistributeKeysWithCompletion:(id)completion;
- (void)forceKeySyncForBeaconUUID:(id)d lastObservationDate:(id)date lastObservationIndex:(unint64_t)index completion:(id)completion;
- (void)forceLOIBasedSafeLocationRefresh:(id)refresh;
- (void)forceRePairingWithUUID:(id)d partIds:(id)ids completion:(id)completion;
- (void)forceUpdateKeyMapsForUUID:(id)d completion:(id)completion;
- (void)getOfflineFindingInfoWithCurrentData:(id)data completion:(id)completion;
- (void)hasAccessoryWithCapabilities:(unint64_t)capabilities completion:(id)completion;
- (void)hintBasedIndexSearchForBeacon:(id)beacon baseIndex:(id)index hint:(unsigned __int8)hint completion:(id)completion;
- (void)ignoreBeaconByUUID:(id)d until:(unint64_t)until;
- (void)ignoreBeaconByUUID:(id)d untilDate:(id)date completion:(id)completion;
- (void)ignoreTrackingFor:(id)for until:(unint64_t)until completion:(id)completion;
- (void)ignoreTrackingForUUID:(id)d until:(unint64_t)until completion:(id)completion;
- (void)initiateFirmwareUpdateForAllEligibleBeaconsWithCompletion:(id)completion;
- (void)isLPEMModeSupportedWithCompletion:(id)completion;
- (void)isUTAppAlertDisabled:(id)disabled;
- (void)keySyncMetadataWithcompletion:(id)withcompletion;
- (void)latestLocationsForIdentifiers:(id)identifiers fetchLimit:(id)limit sources:(id)sources completion:(id)completion;
- (void)leechScannerDiscoveredAdvertisementData:(id)data rssi:(int)rssi completion:(id)completion;
- (void)locationForContext:(id)context completion:(id)completion;
- (void)offlineAdvertisingKeysForReason:(int64_t)reason completion:(id)completion;
- (void)pairLowEnergyAccessoryWithIdentifier:(id)identifier completion:(id)completion;
- (void)peripheralConnectionMaterialForAccessoryIdentifier:(id)identifier completion:(id)completion;
- (void)playUnauthorizedSoundOnBeaconUUID:(id)d completion:(id)completion;
- (void)poisonBeaconIdentifier:(id)identifier completion:(id)completion;
- (void)primaryAccountModified;
- (void)publishSeparationEventForBeacons:(id)beacons eventType:(int64_t)type region:(id)region completion:(id)completion;
- (void)publishUnificationEventForBeacons:(id)beacons;
- (void)publishWildModeRecordsWithCompletion:(id)completion;
- (void)rawSearchResultsForIdentifier:(id)identifier dateInterval:(id)interval completion:(id)completion;
- (void)removeDuplicateBeaconsWithCompletion:(id)completion;
- (void)removeSafeLocation:(id)location completion:(id)completion;
- (void)setAlignmentUncertainty:(double)uncertainty atIndex:(int64_t)index date:(id)date forBeacon:(id)beacon completion:(id)completion;
- (void)setFindMyNetworkStatusForMACAddress:(id)address status:(BOOL)status completion:(id)completion;
- (void)setServiceState:(id)state completion:(id)completion;
- (void)setWildKeyBase:(int64_t)base interval:(int64_t)interval fallback:(int64_t)fallback forBeacon:(id)beacon completion:(id)completion;
- (void)simulateAccessoryPairing:(id)pairing name:(id)name isAirPods:(BOOL)pods completion:(id)completion;
- (void)standaloneBeaconsForUUIDs:(NSArray *)ds completion:(id)completion;
- (void)startUpdatingSimpleBeaconsWithContext:(id)context completion:(id)completion;
- (void)stopFetchingUnauthorizedEncryptedPayloadWithCompletion:(id)completion;
- (void)successfulConnectionForUserIdentifier:(id)identifier beaconIdentifier:(id)beaconIdentifier primaryIndex:(unint64_t)index leMAC:(id)c ltkIndex:(unint64_t)ltkIndex ltk:(id)ltk completion:(id)completion;
- (void)tagSeparationStateChanged:(id)changed beaconUUID:(id)d location:(id)location completion:(id)completion;
- (void)unknownBeaconsForUUIDs:(id)ds completion:(id)completion;
- (void)unpairLowEnergyAccessoryWithIdentifier:(id)identifier completion:(id)completion;
- (void)unpairUUID:(id)d force:(BOOL)force completion:(id)completion;
- (void)updateBeaconObservations:(id)observations completion:(id)completion;
- (void)updateBeaconUUID:(id)d firmwareUpdateState:(int64_t)state systemVersion:(id)version error:(id)error completion:(id)completion;
- (void)userHasAcknowledgeFindMyWithCompletion:(id)completion;
- (void)waitForBeaconStoreAvailableWithCompletion:(id)completion;
@end

@implementation BeaconManagerTrampoline

- (void)isUTAppAlertDisabled:(id)disabled
{
  v3 = _Block_copy(disabled);
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

- (void)beaconGroupsForUUIDs:(id)ds completion:(id)completion
{
  v5 = _Block_copy(completion);
  type metadata accessor for UUID();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = *sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]);
  selfCopy = self;
  sub_1000042C8(v6, sub_10000A150, v7);
}

- (void)allBeaconsOfTypes:(id)types includeDupes:(BOOL)dupes includeHidden:(BOOL)hidden completion:(id)completion
{
  v9 = _Block_copy(completion);
  type metadata accessor for SPBeaconType(0);
  sub_100F989D0(&qword_1016C1AA0, type metadata accessor for SPBeaconType);
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  selfCopy = self;
  sub_100F8AB94(v10, dupes, hidden, sub_100F993DC, v11);
}

- (void)locationForContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  contextCopy = context;
  selfCopy = self;
  sub_10000B408(contextCopy, v11);
  v10 = *sub_1000035D0((&selfCopy->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&selfCopy->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]);

  sub_10000B83C(v11, v10, sub_1007BEF48, v7);

  sub_1004E2CD8(v11);
}

- (void)startUpdatingSimpleBeaconsWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  contextCopy = context;
  selfCopy = self;
  sub_10000F5AC(contextCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)clientConfigurationWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v4;
  sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]);
  type metadata accessor for BeaconManagerService();
  selfCopy = self;
  sub_10000FC9C(sub_1007BF808);
}

- (void)firmwareUpdateCandidateBeaconsWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1002F2B64(sub_1002FDD50, v5);
}

- (void)updateBeaconUUID:(id)d firmwareUpdateState:(int64_t)state systemVersion:(id)version error:(id)error completion:(id)completion
{
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  if (version)
  {
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    version = v19;
  }

  else
  {
    v18 = 0;
  }

  _Block_copy(v17);
  errorCopy = error;
  selfCopy = self;
  sub_1002FA8A0(v16, state, v18, version, error, selfCopy, v17);
  _Block_release(v17);
  _Block_release(v17);

  (*(v13 + 8))(v16, v12);
}

- (void)beaconsInFirmwareUpdateState:(int64_t)state dateInterval:(id)interval completion:(id)completion
{
  v8 = type metadata accessor for DateInterval();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(completion);
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v13);
  selfCopy = self;
  sub_1002FAE34(state, v12, selfCopy, v13);
  _Block_release(v13);
  _Block_release(v13);

  (*(v9 + 8))(v12, v8);
}

- (void)initiateFirmwareUpdateForAllEligibleBeaconsWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_1002FB1D0(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)firmwareUpdateStateForBeaconUUID:(id)d completion:(id)completion
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  selfCopy = self;
  sub_1002F3394(v10, sub_1001BC2E0, v12);

  (*(v7 + 8))(v10, v6);
}

- (void)didObserveUnauthorizedTrackingWithCompletion:(id)completion completion:(id)a4
{
  v5 = _Block_copy(a4);
  sub_100008BB8(0, qword_1016C9080, SPUnauthorizedTrackingObservation_ptr);
  sub_100009CC8(&qword_10169F038, qword_1016C9080, SPUnauthorizedTrackingObservation_ptr);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = *sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]);
  _Block_copy(v5);
  selfCopy = self;
  v9 = sub_100A2C208();
  sub_1007A0164(v6, v9, v5);
  _Block_release(v5);

  _Block_release(v5);
}

- (void)standaloneBeaconsForUUIDs:(NSArray *)ds completion:(id)completion
{
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = ds;
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
  dsCopy = ds;
  selfCopy = self;
  sub_101026478(0, 0, v10, &unk_1013BBA40, v15);
}

- (void)connectUsingMACAddress:(id)address longTermKey:(id)key completion:(id)completion
{
  v8 = _Block_copy(completion);
  addressCopy = address;
  keyCopy = key;
  selfCopy = self;
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

- (void)disconnectFromMACAddress:(id)address completion:(id)completion
{
  v6 = _Block_copy(completion);
  addressCopy = address;
  selfCopy = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  _Block_copy(v6);
  sub_1007B88FC(v8, v10, v6);
  _Block_release(v6);
  _Block_release(v6);
  sub_100016590(v8, v10);
}

- (void)setFindMyNetworkStatusForMACAddress:(id)address status:(BOOL)status completion:(id)completion
{
  statusCopy = status;
  v8 = _Block_copy(completion);
  addressCopy = address;
  selfCopy = self;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  _Block_copy(v8);
  sub_1007B8C9C(v10, v12, statusCopy, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
  sub_100016590(v10, v12);
}

- (void)hasAccessoryWithCapabilities:(unint64_t)capabilities completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  type metadata accessor for Transaction();
  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = capabilities;
  v8[4] = sub_100011168;
  v8[5] = v7;
  selfCopy = self;

  static Transaction.asyncTask(name:block:)();
}

- (void)simulateAccessoryPairing:(id)pairing name:(id)name isAirPods:(BOOL)pods completion:(id)completion
{
  v9 = _Block_copy(completion);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = *sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]);
  _Block_copy(v9);
  pairingCopy = pairing;
  selfCopy = self;
  sub_100705E18(pairingCopy, v10, v12, pods, v13, v9);
  _Block_release(v9);

  _Block_release(v9);
}

- (void)fetchUnauthorizedEncryptedPayload:(id)payload completion:(id)completion
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  selfCopy = self;
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

  v18 = *sub_1000035D0((&selfCopy->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&selfCopy->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]);
  sub_1006A4F18(v10, sub_1007BF38C, v12);

  (*(v7 + 8))(v10, v6);
}

- (void)fetchHawkeyeFirmwareVersion:(id)version completion:(id)completion
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1007BF36C;
  *(v13 + 24) = v12;
  selfCopy = self;

  sub_100706394(v10, sub_1007BF374, v13);

  (*(v7 + 8))(v10, v6);
}

- (void)stopFetchingUnauthorizedEncryptedPayloadWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1007B98CC(sub_10026AE30, v5);
}

- (void)hintBasedIndexSearchForBeacon:(id)beacon baseIndex:(id)index hint:(unsigned __int8)hint completion:(id)completion
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  *(swift_allocObject() + 16) = v15;
  v16 = *sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]);
  indexCopy = index;
  selfCopy = self;
  sub_1004E0128(v14, indexCopy, hint, v16, sub_1007BF364);

  (*(v11 + 8))(v14, v10);
}

- (void)forceKeySyncForBeaconUUID:(id)d lastObservationDate:(id)date lastObservationIndex:(unint64_t)index completion:(id)completion
{
  indexCopy = index;
  dateCopy = date;
  dCopy = d;
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
  v21 = _Block_copy(completion);
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
  *(v29 + v27) = indexCopy;
  (*(v10 + 32))(v29 + v28, v24, v25);
  v32 = (v29 + ((v11 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v32 = sub_10026AE30;
  v32[1] = v22;

  sub_10025EDD4(0, 0, v42, &unk_1013BB9F8, v29);

  (*(v10 + 8))(v35, v25);
  (*(v16 + 8))(v38, v31);
}

- (void)forceRePairingWithUUID:(id)d partIds:(id)ids completion:(id)completion
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v12);
  selfCopy = self;
  sub_1007B9E90(v11, v13, selfCopy, v12);
  _Block_release(v12);
  _Block_release(v12);

  (*(v8 + 8))(v11, v7);
}

- (void)waitForBeaconStoreAvailableWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(*sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]) + 280);
  selfCopy = self;
  sub_100B1380C(v6, sub_1007BF0CC, v5);
}

- (void)beaconsToMaintainPersistentConnection:(id)connection
{
  v4 = _Block_copy(connection);
  v5 = *sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]);
  _Block_copy(v4);
  selfCopy = self;
  sub_1004E03F4(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)ignoreBeaconByUUID:(id)d until:(unint64_t)until
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1007B3F98(v10, until);

  (*(v7 + 8))(v10, v6);
}

- (void)unknownBeaconsForUUIDs:(id)ds completion:(id)completion
{
  v5 = _Block_copy(completion);
  type metadata accessor for UUID();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  selfCopy = self;
  sub_1007B41DC(v6, sub_1007BF0A0, v7);
}

- (void)didDetectUnauthorizedTrackingWithCompletion:(id)completion completion:(id)a4
{
  v5 = _Block_copy(a4);
  sub_100008BB8(0, qword_1016C9080, SPUnauthorizedTrackingObservation_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  selfCopy = self;
  sub_1007B44E0(v6, selfCopy, v5);
  _Block_release(v5);
}

- (void)didWithdrawUnauthorizedTrackingWithCompletion:(id)completion completion:(id)a4
{
  v5 = _Block_copy(a4);
  sub_100008BB8(0, qword_1016C9080, SPUnauthorizedTrackingObservation_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  selfCopy = self;
  sub_1007BA690(v6, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)acceptUTForBeaconUUID:(id)d
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1007B48A8();

  (*(v5 + 8))(v8, v4);
}

- (void)playUnauthorizedSoundOnBeaconUUID:(id)d completion:(id)completion
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  selfCopy = self;
  sub_1007B4AD0(v10, sub_10026AE30, v12);

  (*(v7 + 8))(v10, v6);
}

- (void)ignoreTrackingForUUID:(id)d until:(unint64_t)until completion:(id)completion
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(completion);
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

  selfCopy = self;
  sub_1007B5270(v12, until, v13, v14);
  sub_1000BB27C(v13);

  (*(v9 + 8))(v12, v8);
}

- (void)ignoreBeaconByUUID:(id)d untilDate:(id)date completion:(id)completion
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
  v17 = _Block_copy(completion);
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

  selfCopy = self;
  sub_1007B556C(v16, v11, v19, v18);
  sub_1000BB27C(v19);

  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

- (void)ignoreTrackingFor:(id)for until:(unint64_t)until completion:(id)completion
{
  v8 = _Block_copy(completion);
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

  forCopy = for;
  selfCopy = self;
  sub_1007B590C(forCopy, until, v8, v9);
  sub_1000BB27C(v8);
}

- (void)disableUTAppAlert:(BOOL)alert completion:(id)completion
{
  v5 = _Block_copy(completion);
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
  sub_100EEAA1C(alert);

  if (v5)
  {
    (v6)(0);

    sub_1000BB27C(v6);
  }
}

- (void)latestLocationsForIdentifiers:(id)identifiers fetchLimit:(id)limit sources:(id)sources completion:(id)completion
{
  v9 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  v13 = _Block_copy(completion);
  type metadata accessor for UUID();
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (limit)
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
  selfCopy = self;
  sub_1007B1E14(v17);
  v21 = v20;

  v22 = sub_10112B120(v21);

  v23 = *sub_1000035D0((&selfCopy->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&selfCopy->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]);
  sub_1004ADD04(v14, v12, v22, 1, sub_1007BEF64, v18);

  sub_10000B3A8(v12, &unk_101696900, &unk_10138B1E0);
}

- (void)delegatedLocationForContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  type metadata accessor for Transaction();
  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = context;
  v8[4] = sub_1007BF8E0;
  v8[5] = v7;
  contextCopy = context;
  selfCopy = self;
  v10 = contextCopy;

  static Transaction.asyncTask(name:block:)();
}

- (void)rawSearchResultsForIdentifier:(id)identifier dateInterval:(id)interval completion:(id)completion
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
  v15 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
  *(swift_allocObject() + 16) = v15;
  sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]);
  type metadata accessor for BeaconManagerService();
  selfCopy = self;
  sub_1004D39B0();

  (*(v19 + 8))(v10, v20);
  (*(v11 + 8))(v14, v18);
}

- (void)forceDistributeKeysWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  if (*(*sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]) + 40))
  {
    selfCopy = self;

    sub_10053067C(sub_10026AE30, v5);
  }

  else
  {
    __break(1u);
  }
}

- (void)forceUpdateKeyMapsForUUID:(id)d completion:(id)completion
{
  v7 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16 - v9;
  v11 = _Block_copy(completion);
  if (d)
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
  selfCopy = self;
  sub_1004DF188(v10, v14, v11);
  _Block_release(v11);
  _Block_release(v11);
  sub_10000B3A8(v10, &qword_1016980D0, &unk_10138F3B0);
}

- (void)allObservationsForBeacon:(id)beacon completion:(id)completion
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v11);
  selfCopy = self;
  sub_100A492E4(v10, v11);
  _Block_release(v11);
  _Block_release(v11);
  (*(v7 + 8))(v10, v6);
}

- (void)peripheralConnectionMaterialForAccessoryIdentifier:(id)identifier completion:(id)completion
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
  v16 = _Block_copy(completion);
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

- (void)publishWildModeRecordsWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
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

- (void)removeSafeLocation:(id)location completion:(id)completion
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v11);
  selfCopy = self;
  sub_100A151A4(v10, selfCopy, v11);
  _Block_release(v11);
  _Block_release(v11);

  (*(v7 + 8))(v10, v6);
}

- (void)publishSeparationEventForBeacons:(id)beacons eventType:(int64_t)type region:(id)region completion:(id)completion
{
  v9 = _Block_copy(completion);
  type metadata accessor for UUID();
  sub_100003F64(&qword_1016967B0, &type metadata accessor for UUID);
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = *sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]);

  regionCopy = region;
  selfCopy = self;
  sub_100A16FA4(v10, type, regionCopy, v12, sub_100011168, v11);
}

- (void)publishUnificationEventForBeacons:(id)beacons
{
  type metadata accessor for UUID();
  sub_100003F64(&qword_1016967B0, &type metadata accessor for UUID);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]);
  selfCopy = self;
  sub_1009D5310(v4);
}

- (void)forceLOIBasedSafeLocationRefresh:(id)refresh
{
  v4 = _Block_copy(refresh);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1009CC3A4(sub_1002FB454, v5);
}

- (void)primaryAccountModified
{
  v3 = *sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]);
  selfCopy = self;
  sub_1003DD418();
}

- (void)beaconingKeysOfType:(int64_t)type withCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  selfCopy = self;
  sub_100F8AED8(type, sub_100F99350, v7);
}

- (void)beaconingKeysForUUID:(id)d dateInterval:(id)interval completion:(id)completion
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
  v17 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v17);
  selfCopy = self;
  sub_100F953F0(v16, v11, selfCopy, v17);
  _Block_release(v17);
  _Block_release(v17);

  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

- (void)setServiceState:(id)state completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = qword_101694940;
  stateCopy = state;
  if (v6 != -1)
  {
    swift_once();
  }

  sub_1000034A4();
  v8 = stateCopy;
  sub_100EE9AB4(v8);

  v5[2](v5, 0);

  _Block_release(v5);
}

- (void)bluetoothPowerStateUpdated:(int64_t)updated
{
  v5 = *(*sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]) + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_theftDeterrenceStateManager);
  selfCopy = self;
  sub_100EFAC8C(updated);
}

- (void)isLPEMModeSupportedWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = *(*sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]) + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_theftDeterrenceStateManager);
  selfCopy = self;
  v6 = sub_100EFAE94();
  v4[2](v4, v6 & 1);
  _Block_release(v4);
}

- (void)userHasAcknowledgeFindMyWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  userHasAcknowledgedFindMy = [standardUserDefaults userHasAcknowledgedFindMy];

  v3[2](v3, userHasAcknowledgedFindMy);

  _Block_release(v3);
}

- (void)offlineAdvertisingKeysForReason:(int64_t)reason completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = *sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]);
  _Block_copy(v6);
  selfCopy = self;
  sub_10071569C(reason, v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)allPairingErrorsWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = *sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]);
  _Block_copy(v4);
  selfCopy = self;
  sub_1004052AC(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)commandKeysForUUIDs:(id)ds completion:(id)completion
{
  v5 = _Block_copy(completion);
  type metadata accessor for UUID();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  selfCopy = self;
  sub_100F8BAD4(v6, sub_100F993D8, v7);
}

- (void)commandKeysForUUIDs:(id)ds dateInterval:(id)interval completion:(id)completion
{
  v7 = type metadata accessor for DateInterval();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(completion);
  type metadata accessor for UUID();
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  selfCopy = self;
  sub_100F8BDDC(v13, v11, sub_100F992D4, v14);

  (*(v8 + 8))(v11, v7);
}

- (void)allBeaconingKeysForUUID:(id)d dateInterval:(id)interval forceGenerate:(BOOL)generate completion:(id)completion
{
  generateCopy = generate;
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
  v18 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v18);
  selfCopy = self;
  sub_100F95948(v17, v12, generateCopy, selfCopy, v18);
  _Block_release(v18);
  _Block_release(v18);

  (*(v9 + 8))(v12, v8);
  (*(v14 + 8))(v17, v13);
}

- (void)setWildKeyBase:(int64_t)base interval:(int64_t)interval fallback:(int64_t)fallback forBeacon:(id)beacon completion:(id)completion
{
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v17);
  selfCopy = self;
  sub_100F96528(base, interval, fallback, v16, selfCopy, v17);
  _Block_release(v17);
  _Block_release(v17);

  (*(v13 + 8))(v16, v12);
}

- (void)setAlignmentUncertainty:(double)uncertainty atIndex:(int64_t)index date:(id)date forBeacon:(id)beacon completion:(id)completion
{
  indexCopy = index;
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
  v20 = _Block_copy(completion);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  selfCopy = self;
  sub_100F8C750(indexCopy, v19, v14, sub_1001BBDE4, v21, uncertainty);

  (*(v11 + 8))(v14, v10);
  (*(v16 + 8))(v19, v15);
}

- (void)connectedToBeacon:(id)beacon withIndex:(int64_t)index completion:(id)completion
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v13);
  selfCopy = self;
  sub_100F96A14(v12, index, selfCopy, v13);
  _Block_release(v13);
  _Block_release(v13);

  (*(v9 + 8))(v12, v8);
}

- (void)updateBeaconObservations:(id)observations completion:(id)completion
{
  v5 = _Block_copy(completion);
  sub_100008BB8(0, &qword_1016B27C0, SPBeaconObservation_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  selfCopy = self;
  sub_100F96BB4(v6, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)removeDuplicateBeaconsWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100F99208;
  *(v6 + 24) = v5;
  type metadata accessor for BeaconManagerService();
  selfCopy = self;

  sub_1006DCB4C();
}

- (void)keySyncMetadataWithcompletion:(id)withcompletion
{
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(withcompletion);
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
  selfCopy = self;
  sub_10025EDD4(0, 0, v8, &unk_1013F54A8, v12);
}

- (void)unpairUUID:(id)d force:(BOOL)force completion:(id)completion
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v13);
  selfCopy = self;
  sub_100F970E0(v12, force, selfCopy, v13);
  _Block_release(v13);
  _Block_release(v13);

  (*(v9 + 8))(v12, v8);
}

- (void)currentBeaconingKeyWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1001BC2E0;
  *(v7 + 24) = v5;
  selfCopy = self;

  sub_100697FA8(0, sub_100F98ED8, v7);
}

- (void)getOfflineFindingInfoWithCurrentData:(id)data completion:(id)completion
{
  v5 = _Block_copy(completion);
  selfCopy = self;
  if (data)
  {
    dataCopy = data;
    data = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v9 = 0xF000000000000000;
  }

  *(swift_allocObject() + 16) = v5;
  v10 = sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 16]);
  sub_100409708(*v10, sub_100F993C4);
  sub_100006654(data, v9);
}

- (void)poisonBeaconIdentifier:(id)identifier completion:(id)completion
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v11);
  selfCopy = self;
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

- (void)bluetoothConnectionKeysFor:(id)for completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  type metadata accessor for Transaction();
  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = for;
  v8[4] = sub_1007BF8E0;
  v8[5] = v7;
  forCopy = for;
  selfCopy = self;
  v10 = forCopy;

  static Transaction.asyncTask(name:block:)();
}

- (void)successfulConnectionForUserIdentifier:(id)identifier beaconIdentifier:(id)beaconIdentifier primaryIndex:(unint64_t)index leMAC:(id)c ltkIndex:(unint64_t)ltkIndex ltk:(id)ltk completion:(id)completion
{
  ltkIndexCopy = ltkIndex;
  ltkCopy = ltk;
  indexCopy = index;
  selfCopy = self;
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
  v21 = _Block_copy(completion);
  v65 = v20;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v18;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  cCopy = c;
  v23 = ltkCopy;
  ltkCopy = selfCopy;
  v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v25;
  v62 = v24;

  v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v27;
  v60 = v26;

  v57 = swift_allocObject();
  *(v57 + 16) = v21;
  selfCopy = type metadata accessor for Transaction();
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
  *(v40 + 16) = ltkCopy;
  v41 = *(v32 + 32);
  v42 = v40 + v33;
  v43 = v70;
  v41(v42, v56, v70);
  v41(v40 + v34, v69, v43);
  *(v40 + v35) = indexCopy;
  v44 = (v40 + v36);
  v46 = v61;
  v45 = v62;
  *v44 = v62;
  v44[1] = v46;
  *(v40 + v37) = ltkIndexCopy;
  v47 = (v40 + v38);
  v49 = v59;
  v48 = v60;
  *v47 = v60;
  v47[1] = v49;
  v50 = (v40 + v39);
  v51 = v57;
  *v50 = sub_10026AE30;
  v50[1] = v51;
  v52 = ltkCopy;
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

- (void)leechScannerDiscoveredAdvertisementData:(id)data rssi:(int)rssi completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  type metadata accessor for Transaction();
  v10 = swift_allocObject();
  *(v10 + 16) = self;
  *(v10 + 24) = v8;
  *(v10 + 32) = rssi;
  *(v10 + 40) = sub_10026AE30;
  *(v10 + 48) = v9;
  selfCopy = self;

  static Transaction.asyncTask(name:block:)();
}

- (void)pairLowEnergyAccessoryWithIdentifier:(id)identifier completion:(id)completion
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v13 = _Block_copy(completion);
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
  selfCopy = self;

  static Transaction.asyncTask(name:block:)();

  (*(v7 + 8))(v12, v6);
}

- (void)unpairLowEnergyAccessoryWithIdentifier:(id)identifier completion:(id)completion
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v13 = _Block_copy(completion);
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
  selfCopy = self;

  static Transaction.asyncTask(name:block:)();

  (*(v7 + 8))(v12, v6);
}

- (void)fetchHawkeyeAIS:(id)s metadataType:(unint64_t)type completion:(id)completion
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  selfCopy = self;
  sub_100F97B60(v12, type, sub_1007BF36C, v14);

  (*(v9 + 8))(v12, v8);
}

- (void)tagSeparationStateChanged:(id)changed beaconUUID:(id)d location:(id)location completion:(id)completion
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v15);
  changedCopy = changed;
  locationCopy = location;
  selfCopy = self;
  sub_1011A3758(changedCopy, v14, selfCopy, v15);
  _Block_release(v15);
  _Block_release(v15);

  (*(v11 + 8))(v14, v10);
}

@end