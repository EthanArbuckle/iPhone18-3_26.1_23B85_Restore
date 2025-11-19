@interface KTCloudRecordDeviceStatus
- (BOOL)stateReady;
- (NSDate)uploadedToCKAt;
- (NSString)description;
- (NSString)state;
- (_TtC13transparencyd25KTCloudRecordDeviceStatus)init;
- (void)setState:(id)a3;
- (void)setStateReady:(BOOL)a3;
- (void)setUploadedToCKAt:(id)a3;
@end

@implementation KTCloudRecordDeviceStatus

- (BOOL)stateReady
{
  v3 = OBJC_IVAR____TtC13transparencyd25KTCloudRecordDeviceStatus_stateReady;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setStateReady:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC13transparencyd25KTCloudRecordDeviceStatus_stateReady;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSString)state
{
  v2 = (self + OBJC_IVAR____TtC13transparencyd25KTCloudRecordDeviceStatus_state);
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;

    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setState:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC13transparencyd25KTCloudRecordDeviceStatus_state);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (NSDate)uploadedToCKAt
{
  v3 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR____TtC13transparencyd25KTCloudRecordDeviceStatus_uploadedToCKAt;
  swift_beginAccess();
  sub_1000AB050(self + v7, v6, &qword_100383FB0, &unk_1002D6690);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v6, v8);
    v11 = isa;
  }

  return v11;
}

- (void)setUploadedToCKAt:(id)a3
{
  v5 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  if (a3)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for Date();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = OBJC_IVAR____TtC13transparencyd25KTCloudRecordDeviceStatus_uploadedToCKAt;
  swift_beginAccess();
  v12 = self;
  sub_1000BECD4(v8, self + v11);
  swift_endAccess();
}

- (NSString)description
{
  v2 = self;
  sub_1000DF96C();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (_TtC13transparencyd25KTCloudRecordDeviceStatus)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end