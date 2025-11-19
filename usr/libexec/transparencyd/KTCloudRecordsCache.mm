@interface KTCloudRecordsCache
- (_TtC13transparencyd19KTCloudRecordsCache)init;
- (_TtC13transparencyd19KTCloudRecordsCache)initWithRecords:(id)a3;
- (id)fetchSyncedLoggableDataByDeviceIdHash:(id)a3;
- (id)fetchSyncedLoggableDataByPushToken:(id)a3 registrationData:(id)a4;
- (void)setWithUriVRFHash:(id)a3;
@end

@implementation KTCloudRecordsCache

- (_TtC13transparencyd19KTCloudRecordsCache)initWithRecords:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC13transparencyd19KTCloudRecordsCache_cachedAllEntries) = 0;
  v4 = (self + OBJC_IVAR____TtC13transparencyd19KTCloudRecordsCache_uriVRFHash);
  *(&self->super.isa + OBJC_IVAR____TtC13transparencyd19KTCloudRecordsCache_uriVRFHash) = xmmword_1002D7620;
  *(&self->super.isa + OBJC_IVAR____TtC13transparencyd19KTCloudRecordsCache_records) = a3;
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = xmmword_1002D7620;
  swift_unknownObjectRetain_n();
  sub_10009A9D4(v5, v6);
  *(&self->super.isa + OBJC_IVAR____TtC13transparencyd19KTCloudRecordsCache_deviceIDHash) = sub_1000E2E80(_swiftEmptyArrayStorage);
  v9.receiver = self;
  v9.super_class = type metadata accessor for KTCloudRecordsCache();
  v7 = [(KTCloudRecordsCache *)&v9 init];
  swift_unknownObjectRelease();
  return v7;
}

- (void)setWithUriVRFHash:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = *((swift_isaMask & v5->super.isa) + 0x90);
  sub_100002D78(v6, v8);
  v9(v6, v8);
  v10 = sub_1000E2E80(_swiftEmptyArrayStorage);
  (*((swift_isaMask & v5->super.isa) + 0xA8))(v10);

  sub_1000956CC(v6, v8);
}

- (id)fetchSyncedLoggableDataByPushToken:(id)a3 registrationData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = *(&v8->super.isa + OBJC_IVAR____TtC13transparencyd19KTCloudRecordsCache_records);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v17 = Data._bridgeToObjectiveC()().super.isa;
  v18 = [v15 fetchSyncedLoggableDataWithPushToken:isa tbsRegistrationData:v17];

  sub_1000956CC(v12, v14);
  sub_1000956CC(v9, v11);

  return v18;
}

- (id)fetchSyncedLoggableDataByDeviceIdHash:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = KTCloudRecordsCache.fetchSyncedLoggableData(byDeviceIdHash:)(v6, v8);
  sub_1000956CC(v6, v8);

  if (v9)
  {
    sub_10009FDA0(0, &qword_100384DF8, KTLoggableData_ptr);
    v10.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v10.super.isa = 0;
  }

  return v10.super.isa;
}

- (_TtC13transparencyd19KTCloudRecordsCache)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end