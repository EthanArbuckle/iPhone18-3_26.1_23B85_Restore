@interface Transcript
- (void)deleteAllRecordsWithReply:(id)reply;
- (void)donateActionRecordData:(id)data bundleIdentifier:(id)identifier timestamp:(double)timestamp writeImmediately:(BOOL)immediately reply:(id)reply;
- (void)donateActionRecordData:(id)data writeImmediately:(BOOL)immediately reply:(id)reply;
- (void)requestReadAccessForStream:(id)stream reply:(id)reply;
- (void)stopObservingNextActionStreamWithConnectionUUID:(id)d completion:(id)completion;
@end

@implementation Transcript

- (void)requestReadAccessForStream:(id)stream reply:(id)reply
{
  v5 = _Block_copy(reply);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  sub_10000A674(v6, v8, selfCopy, v5);
  _Block_release(v5);
}

- (void)donateActionRecordData:(id)data writeImmediately:(BOOL)immediately reply:(id)reply
{
  v8 = _Block_copy(reply);
  dataCopy = data;
  selfCopy = self;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  sub_1000590F4(v10, v12, immediately, sub_1000610E4, v13);

  sub_100009B18(v10, v12);
}

- (void)deleteAllRecordsWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  *(swift_allocObject() + 16) = v4;
  selfCopy = self;
  sub_10005A738(sub_1000610E4);
}

- (void)donateActionRecordData:(id)data bundleIdentifier:(id)identifier timestamp:(double)timestamp writeImmediately:(BOOL)immediately reply:(id)reply
{
  v12 = _Block_copy(reply);
  dataCopy = data;
  identifierCopy = identifier;
  selfCopy = self;
  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = swift_allocObject();
  *(v21 + 16) = v12;
  sub_10005B648(v15, v17, v18, v20, immediately, sub_100060968, v21, timestamp);

  sub_100009B18(v15, v17);
}

- (void)stopObservingNextActionStreamWithConnectionUUID:(id)d completion:(id)completion
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
  sub_10005D018(v10, selfCopy, v11);
  _Block_release(v11);

  (*(v7 + 8))(v10, v6);
}

@end