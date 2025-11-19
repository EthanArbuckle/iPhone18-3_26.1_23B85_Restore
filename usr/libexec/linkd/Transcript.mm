@interface Transcript
- (void)deleteAllRecordsWithReply:(id)a3;
- (void)donateActionRecordData:(id)a3 bundleIdentifier:(id)a4 timestamp:(double)a5 writeImmediately:(BOOL)a6 reply:(id)a7;
- (void)donateActionRecordData:(id)a3 writeImmediately:(BOOL)a4 reply:(id)a5;
- (void)requestReadAccessForStream:(id)a3 reply:(id)a4;
- (void)stopObservingNextActionStreamWithConnectionUUID:(id)a3 completion:(id)a4;
@end

@implementation Transcript

- (void)requestReadAccessForStream:(id)a3 reply:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  sub_10000A674(v6, v8, v9, v5);
  _Block_release(v5);
}

- (void)donateActionRecordData:(id)a3 writeImmediately:(BOOL)a4 reply:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = a3;
  v14 = self;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  sub_1000590F4(v10, v12, a4, sub_1000610E4, v13);

  sub_100009B18(v10, v12);
}

- (void)deleteAllRecordsWithReply:(id)a3
{
  v4 = _Block_copy(a3);
  *(swift_allocObject() + 16) = v4;
  v5 = self;
  sub_10005A738(sub_1000610E4);
}

- (void)donateActionRecordData:(id)a3 bundleIdentifier:(id)a4 timestamp:(double)a5 writeImmediately:(BOOL)a6 reply:(id)a7
{
  v12 = _Block_copy(a7);
  v13 = a3;
  v14 = a4;
  v22 = self;
  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = swift_allocObject();
  *(v21 + 16) = v12;
  sub_10005B648(v15, v17, v18, v20, a6, sub_100060968, v21, a5);

  sub_100009B18(v15, v17);
}

- (void)stopObservingNextActionStreamWithConnectionUUID:(id)a3 completion:(id)a4
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
  sub_10005D018(v10, v12, v11);
  _Block_release(v11);

  (*(v7 + 8))(v10, v6);
}

@end