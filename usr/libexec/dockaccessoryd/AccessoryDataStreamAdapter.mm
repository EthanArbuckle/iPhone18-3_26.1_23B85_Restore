@interface AccessoryDataStreamAdapter
- (_TtC14dockaccessoryd26AccessoryDataStreamAdapter)init;
- (void)accessory:(id)accessory didReceiveBulkSessionCandidate:(id)candidate;
- (void)accessoryDidCloseDataStream:(id)stream;
- (void)accessoryDidStartListening:(id)listening;
@end

@implementation AccessoryDataStreamAdapter

- (_TtC14dockaccessoryd26AccessoryDataStreamAdapter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)accessory:(id)accessory didReceiveBulkSessionCandidate:(id)candidate
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  [candidate rejectBulkSendSessionWithStatus:1];
  swift_unknownObjectRelease();
  sub_100095808(v5);
}

- (void)accessoryDidStartListening:(id)listening
{
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000FDA14(v5);

  sub_100095808(v5);
}

- (void)accessoryDidCloseDataStream:(id)stream
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100095808(v3);
}

@end