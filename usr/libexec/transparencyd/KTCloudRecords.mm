@interface KTCloudRecords
- (BOOL)addDevice:(id)device clientData:(id)data error:(id *)error;
- (BOOL)addOptInStateWithURI:(id)i smtTimestamp:(id)timestamp application:(id)application state:(BOOL)state error:(id *)error;
- (BOOL)clearOptInStateForURI:(id)i application:(id)application error:(id *)error;
- (BOOL)cloudDeviceNeedUpdateWithPushToken:(id)token tbsRegistrationData:(id)data;
- (BOOL)disableKTSyncabledKVSStore;
- (BOOL)enforceCKOptInRecords;
- (BOOL)havePendingRecords;
- (BOOL)removeDevice:(id)device clientData:(id)data error:(id *)error;
- (BOOL)updateSelfCloudDeviceWithPushToken:(id)token tbsRegistrationData:(id)data applications:(id)applications;
- (BOOL)updatedRecordWithCkrecord:(id)ckrecord;
- (_TtC13transparencyd14KTCloudRecords)init;
- (_TtC13transparencyd14KTCloudRecords)initWithContext:(id)context zone:(id)zone database:(id)database hostInfo:(id)info delegate:(id)delegate;
- (id)cloudDevices;
- (id)cloudKTDevices;
- (id)cloudKitZones;
- (id)deleteOptInIntentForApplication:(id)application error:(id *)error;
- (id)evaluateKTLogData:(id)data application:(id)application error:(id *)error;
- (id)fetchCloudDeviceWithPushToken:(id)token tbsRegistrationData:(id)data;
- (id)fetchSyncedLoggableDataWithPushToken:(id)token tbsRegistrationData:(id)data;
- (id)getAggregateOptInStateForApplication:(id)application;
- (id)getAllOptInStates;
- (id)getOptInStateWithUri:(id)uri application:(id)application;
- (id)sysdiagnose;
- (id)updateCloudRecordsOperation:(id)operation context:(id)context;
- (void)clearLocalCloudState;
- (void)deleteRecordIDWithCkrecordID:(id)d;
- (void)deleteRecordWithCkrecord:(id)ckrecord;
- (void)recordUpdateCloudStateWithType:(id)type records:(id)records newState:(id)state;
- (void)unknownRecordWithRecordID:(id)d;
@end

@implementation KTCloudRecords

- (_TtC13transparencyd14KTCloudRecords)initWithContext:(id)context zone:(id)zone database:(id)database hostInfo:(id)info delegate:(id)delegate
{
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  contextCopy = context;
  databaseCopy = database;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v16 = sub_1000E2FB0(contextCopy, v11, v13, databaseCopy, info, delegate);

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
  selfCopy = self;
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

- (BOOL)updateSelfCloudDeviceWithPushToken:(id)token tbsRegistrationData:(id)data applications:(id)applications
{
  tokenCopy = token;
  dataCopy = data;
  applicationsCopy = applications;
  selfCopy = self;
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  LOBYTE(dataCopy) = (*(**(&selfCopy->super.isa + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_cloudDevice) + 280))(v12, v14, v15, v17, v18);

  sub_1000956CC(v15, v17);
  sub_1000956CC(v12, v14);

  return dataCopy & 1;
}

- (BOOL)cloudDeviceNeedUpdateWithPushToken:(id)token tbsRegistrationData:(id)data
{
  tokenCopy = token;
  dataCopy = data;
  selfCopy = self;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = *(&selfCopy->super.isa + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_cloudDevice);
  v16 = *(&selfCopy->super.isa + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_hostInfo);
  if (v16)
  {
    osVersion = [v16 osVersion];
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

- (id)fetchSyncedLoggableDataWithPushToken:(id)token tbsRegistrationData:(id)data
{
  tokenCopy = token;
  dataCopy = data;
  selfCopy = self;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = (*(**(&selfCopy->super.isa + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_cloudDevice) + 296))(v9, v11, v12, v14);
  sub_1000956CC(v12, v14);
  sub_1000956CC(v9, v11);

  return v15;
}

- (id)fetchCloudDeviceWithPushToken:(id)token tbsRegistrationData:(id)data
{
  tokenCopy = token;
  dataCopy = data;
  selfCopy = self;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = (*(**(&selfCopy->super.isa + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_cloudDevice) + 304))(v9, v11, v12, v14);
  sub_1000956CC(v12, v14);
  sub_1000956CC(v9, v11);

  return v15;
}

- (id)cloudKTDevices
{
  v2 = *(**(&self->super.isa + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_cloudDevice) + 312);
  selfCopy = self;
  v2();

  sub_10009FDA0(0, &qword_100384DF8, KTLoggableData_ptr);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (id)cloudDevices
{
  v2 = *(**(&self->super.isa + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_cloudDevice) + 320);
  selfCopy = self;
  v2();

  sub_10009FDA0(0, &qword_100384F48, TransparencyCloudDevice_ptr);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (BOOL)addDevice:(id)device clientData:(id)data error:(id *)error
{
  deviceCopy = device;
  dataCopy = data;
  selfCopy = self;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  (*(**(&selfCopy->super.isa + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_cloudDevice) + 328))(v10, v12, v13, v15);
  sub_1000956CC(v13, v15);
  sub_1000956CC(v10, v12);
  return 1;
}

- (BOOL)removeDevice:(id)device clientData:(id)data error:(id *)error
{
  deviceCopy = device;
  dataCopy = data;
  selfCopy = self;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  (*(**(&selfCopy->super.isa + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_cloudDevice) + 336))(v10, v12, v13, v15);
  sub_1000956CC(v13, v15);
  sub_1000956CC(v10, v12);
  return 1;
}

- (BOOL)addOptInStateWithURI:(id)i smtTimestamp:(id)timestamp application:(id)application state:(BOOL)state error:(id *)error
{
  v20[1] = error;
  stateCopy = state;
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
  selfCopy = self;
  v18(v12, v14, v11, v15, v17, stateCopy);
  (*(v8 + 8))(v11, v23);

  return 1;
}

- (id)getOptInStateWithUri:(id)uri application:(id)application
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v6 = KTCloudRecords.getOptInState(withUri:application:)();

  return v6;
}

- (id)getAggregateOptInStateForApplication:(id)application
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v5 = KTCloudRecords.getAggregateOptInState(forApplication:)();

  return v5;
}

- (id)getAllOptInStates
{
  v2 = *(**(&self->super.isa + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_cloudOptIn) + 272);
  selfCopy = self;
  v2();

  sub_10009FDA0(0, &qword_100384AA0, KTOptInState_ptr);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (BOOL)clearOptInStateForURI:(id)i application:(id)application error:(id *)error
{
  if (i)
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
  selfCopy = self;
  v12(v6, v8, v9, v11);

  return 1;
}

- (id)deleteOptInIntentForApplication:(id)application error:(id *)error
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = *(**(&self->super.isa + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_cloudOptIn) + 336);
  selfCopy = self;
  v10 = v8(v5, v7, selfCopy);

  return v10;
}

- (void)clearLocalCloudState
{
  v2 = *((swift_isaMask & self->super.isa) + 0x160);
  selfCopy = self;
  v2(0);
  type metadata accessor for KTCKZone();
  v3 = sub_1000E3B0C(*(&selfCopy->super.isa + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_context));
  zoneName = [*(&selfCopy->super.isa + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_zoneID) zoneName];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  (*((swift_isaMask & *v3) + 0x80))(v5, v7);
}

- (BOOL)havePendingRecords
{
  selfCopy = self;
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

- (BOOL)updatedRecordWithCkrecord:(id)ckrecord
{
  ckrecordCopy = ckrecord;
  selfCopy = self;
  LOBYTE(self) = KTCloudRecords.updatedRecord(withCkrecord:)(ckrecordCopy);

  return self & 1;
}

- (void)deleteRecordWithCkrecord:(id)ckrecord
{
  ckrecordCopy = ckrecord;
  selfCopy = self;
  KTCloudRecords.deleteRecord(withCkrecord:)(ckrecordCopy);
}

- (void)deleteRecordIDWithCkrecordID:(id)d
{
  dCopy = d;
  selfCopy = self;
  KTCloudRecords.deleteRecordID(withCkrecordID:)(dCopy);
}

- (void)unknownRecordWithRecordID:(id)d
{
  dCopy = d;
  selfCopy = self;
  KTCloudRecords.unknownRecord(with:)(dCopy);
}

- (void)recordUpdateCloudStateWithType:(id)type records:(id)records newState:(id)state
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  sub_10009FDA0(0, &unk_100384010, CKRecordID_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = *((swift_isaMask & self->super.isa) + 0x198);
  selfCopy = self;
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

- (id)updateCloudRecordsOperation:(id)operation context:(id)context
{
  type metadata accessor for KTUpdateCloudStorageOperation();
  v7 = KTUpdateCloudStorageOperation.__allocating_init(deps:source:context:)(operation, self, context);

  return v7;
}

- (id)evaluateKTLogData:(id)data application:(id)application error:(id *)error
{
  sub_100095820(&qword_100384DA8, &qword_1002D7660);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  selfCopy = self;
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