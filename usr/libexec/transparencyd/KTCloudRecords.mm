@interface KTCloudRecords
- (BOOL)addDevice:(id)a3 clientData:(id)a4 error:(id *)a5;
- (BOOL)addOptInStateWithURI:(id)a3 smtTimestamp:(id)a4 application:(id)a5 state:(BOOL)a6 error:(id *)a7;
- (BOOL)clearOptInStateForURI:(id)a3 application:(id)a4 error:(id *)a5;
- (BOOL)cloudDeviceNeedUpdateWithPushToken:(id)a3 tbsRegistrationData:(id)a4;
- (BOOL)disableKTSyncabledKVSStore;
- (BOOL)enforceCKOptInRecords;
- (BOOL)havePendingRecords;
- (BOOL)removeDevice:(id)a3 clientData:(id)a4 error:(id *)a5;
- (BOOL)updateSelfCloudDeviceWithPushToken:(id)a3 tbsRegistrationData:(id)a4 applications:(id)a5;
- (BOOL)updatedRecordWithCkrecord:(id)a3;
- (_TtC13transparencyd14KTCloudRecords)init;
- (_TtC13transparencyd14KTCloudRecords)initWithContext:(id)a3 zone:(id)a4 database:(id)a5 hostInfo:(id)a6 delegate:(id)a7;
- (id)cloudDevices;
- (id)cloudKTDevices;
- (id)cloudKitZones;
- (id)deleteOptInIntentForApplication:(id)a3 error:(id *)a4;
- (id)evaluateKTLogData:(id)a3 application:(id)a4 error:(id *)a5;
- (id)fetchCloudDeviceWithPushToken:(id)a3 tbsRegistrationData:(id)a4;
- (id)fetchSyncedLoggableDataWithPushToken:(id)a3 tbsRegistrationData:(id)a4;
- (id)getAggregateOptInStateForApplication:(id)a3;
- (id)getAllOptInStates;
- (id)getOptInStateWithUri:(id)a3 application:(id)a4;
- (id)sysdiagnose;
- (id)updateCloudRecordsOperation:(id)a3 context:(id)a4;
- (void)clearLocalCloudState;
- (void)deleteRecordIDWithCkrecordID:(id)a3;
- (void)deleteRecordWithCkrecord:(id)a3;
- (void)recordUpdateCloudStateWithType:(id)a3 records:(id)a4 newState:(id)a5;
- (void)unknownRecordWithRecordID:(id)a3;
@end

@implementation KTCloudRecords

- (_TtC13transparencyd14KTCloudRecords)initWithContext:(id)a3 zone:(id)a4 database:(id)a5 hostInfo:(id)a6 delegate:(id)a7
{
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = a3;
  v15 = a5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v16 = sub_1000E2FB0(v14, v11, v13, v15, a6, a7);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v16;
}

- (BOOL)disableKTSyncabledKVSStore
{
  v4[3] = &type metadata for TransparencyFeatureFlags;
  v4[4] = sub_1000E3338();
  LOBYTE(v4[0]) = 0;
  v2 = isFeatureEnabled(_:)();
  sub_10009A9E8(v4);
  return v2 & 1;
}

- (id)sysdiagnose
{
  v2 = *(**(&self->super.isa + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_cloudOptIn) + 280);
  v3 = self;
  v4 = v2();
  sub_100095820(&unk_100387750, &unk_1002D7630);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002D47B0;
  *(inited + 32) = 0x6E4974706FLL;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 72) = sub_100095820(&unk_100384D80, &qword_1002D6E48);
  *(inited + 48) = v4;
  sub_1000BEA10(inited);
  swift_setDeallocating();
  sub_1000057C4(inited + 32, &qword_100384660, &qword_1002D7640);

  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (BOOL)updateSelfCloudDeviceWithPushToken:(id)a3 tbsRegistrationData:(id)a4 applications:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  LOBYTE(v9) = (*(**(&v11->super.isa + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_cloudDevice) + 280))(v12, v14, v15, v17, v18);

  sub_1000956CC(v15, v17);
  sub_1000956CC(v12, v14);

  return v9 & 1;
}

- (BOOL)cloudDeviceNeedUpdateWithPushToken:(id)a3 tbsRegistrationData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = *(&v8->super.isa + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_cloudDevice);
  v16 = *(&v8->super.isa + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_hostInfo);
  if (v16)
  {
    v17 = [v16 osVersion];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = (*(*v15 + 288))(v9, v11, v12, v14, v18, v20);

  sub_1000956CC(v12, v14);
  sub_1000956CC(v9, v11);

  return v21 & 1;
}

- (id)fetchSyncedLoggableDataWithPushToken:(id)a3 tbsRegistrationData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = (*(**(&v8->super.isa + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_cloudDevice) + 296))(v9, v11, v12, v14);
  sub_1000956CC(v12, v14);
  sub_1000956CC(v9, v11);

  return v15;
}

- (id)fetchCloudDeviceWithPushToken:(id)a3 tbsRegistrationData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = (*(**(&v8->super.isa + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_cloudDevice) + 304))(v9, v11, v12, v14);
  sub_1000956CC(v12, v14);
  sub_1000956CC(v9, v11);

  return v15;
}

- (id)cloudKTDevices
{
  v2 = *(**(&self->super.isa + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_cloudDevice) + 312);
  v3 = self;
  v2();

  sub_10009FDA0(0, &qword_100384DF8, KTLoggableData_ptr);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (id)cloudDevices
{
  v2 = *(**(&self->super.isa + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_cloudDevice) + 320);
  v3 = self;
  v2();

  sub_10009FDA0(0, &qword_100384F48, TransparencyCloudDevice_ptr);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (BOOL)addDevice:(id)a3 clientData:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  (*(**(&v9->super.isa + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_cloudDevice) + 328))(v10, v12, v13, v15);
  sub_1000956CC(v13, v15);
  sub_1000956CC(v10, v12);
  return 1;
}

- (BOOL)removeDevice:(id)a3 clientData:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  (*(**(&v9->super.isa + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_cloudDevice) + 336))(v10, v12, v13, v15);
  sub_1000956CC(v13, v15);
  sub_1000956CC(v10, v12);
  return 1;
}

- (BOOL)addOptInStateWithURI:(id)a3 smtTimestamp:(id)a4 application:(id)a5 state:(BOOL)a6 error:(id *)a7
{
  v20[1] = a7;
  v22 = a6;
  v23 = type metadata accessor for Date();
  v8 = *(v23 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v23);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v18 = *(**(&self->super.isa + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_cloudOptIn) + 360);
  v21 = self;
  v18(v12, v14, v11, v15, v17, v22);
  (*(v8 + 8))(v11, v23);

  return 1;
}

- (id)getOptInStateWithUri:(id)a3 application:(id)a4
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  v6 = KTCloudRecords.getOptInState(withUri:application:)();

  return v6;
}

- (id)getAggregateOptInStateForApplication:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;
  v5 = KTCloudRecords.getAggregateOptInState(forApplication:)();

  return v5;
}

- (id)getAllOptInStates
{
  v2 = *(**(&self->super.isa + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_cloudOptIn) + 272);
  v3 = self;
  v2();

  sub_10009FDA0(0, &qword_100384AA0, KTOptInState_ptr);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (BOOL)clearOptInStateForURI:(id)a3 application:(id)a4 error:(id *)a5
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = *(**(&self->super.isa + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_cloudOptIn) + 288);
  v13 = self;
  v12(v6, v8, v9, v11);

  return 1;
}

- (id)deleteOptInIntentForApplication:(id)a3 error:(id *)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = *(**(&self->super.isa + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_cloudOptIn) + 336);
  v9 = self;
  v10 = v8(v5, v7, v9);

  return v10;
}

- (void)clearLocalCloudState
{
  v2 = *((swift_isaMask & self->super.isa) + 0x160);
  v8 = self;
  v2(0);
  type metadata accessor for KTCKZone();
  v3 = sub_1000E3B0C(*(&v8->super.isa + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_context));
  v4 = [*(&v8->super.isa + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_zoneID) zoneName];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  (*((swift_isaMask & *v3) + 0x80))(v5, v7);
}

- (BOOL)havePendingRecords
{
  v2 = self;
  v3 = KTCloudRecords.havePendingRecords()();

  return v3;
}

- (id)cloudKitZones
{
  sub_100095820(&qword_100384A50, &qword_1002D7650);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1002D6360;
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_zoneID);
  *(v3 + 32) = v4;
  sub_10009FDA0(0, &qword_100383210, CKRecordZoneID_ptr);
  v5 = v4;
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (BOOL)updatedRecordWithCkrecord:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = KTCloudRecords.updatedRecord(withCkrecord:)(v4);

  return self & 1;
}

- (void)deleteRecordWithCkrecord:(id)a3
{
  v4 = a3;
  v5 = self;
  KTCloudRecords.deleteRecord(withCkrecord:)(v4);
}

- (void)deleteRecordIDWithCkrecordID:(id)a3
{
  v4 = a3;
  v5 = self;
  KTCloudRecords.deleteRecordID(withCkrecordID:)(v4);
}

- (void)unknownRecordWithRecordID:(id)a3
{
  v4 = a3;
  v5 = self;
  KTCloudRecords.unknownRecord(with:)(v4);
}

- (void)recordUpdateCloudStateWithType:(id)a3 records:(id)a4 newState:(id)a5
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  sub_10009FDA0(0, &unk_100384010, CKRecordID_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = *((swift_isaMask & self->super.isa) + 0x198);
  v14 = self;
  v13(&v17, v6, v8);

  if (v18)
  {
    sub_1000AB038(&v17, v19);
    v15 = v20;
    v16 = v21;
    sub_1000A0E50(v19, v20);
    (*(v16 + 64))(v9, v10, v12, v15, v16);

    sub_10009A9E8(v19);
  }

  else
  {

    sub_1000057C4(&v17, &qword_100384D98, &qword_1002D7658);
  }
}

- (id)updateCloudRecordsOperation:(id)a3 context:(id)a4
{
  type metadata accessor for KTUpdateCloudStorageOperation();
  v7 = KTUpdateCloudStorageOperation.__allocating_init(deps:source:context:)(a3, self, a4);

  return v7;
}

- (id)evaluateKTLogData:(id)a3 application:(id)a4 error:(id *)a5
{
  sub_100095820(&qword_100384DA8, &qword_1002D7660);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = self;
  v11 = KTCloudRecords.evaluateKTLogData(_:application:)(v6, v7, v9);

  return v11;
}

- (BOOL)enforceCKOptInRecords
{
  v4[3] = &type metadata for TransparencyFeatureFlags;
  v4[4] = sub_1000E3338();
  LOBYTE(v4[0]) = 1;
  v2 = isFeatureEnabled(_:)();
  sub_10009A9E8(v4);
  return (v2 & 1) == 0;
}

- (_TtC13transparencyd14KTCloudRecords)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end