@interface AccessoryDataStreamAdapter
- (_TtC14dockaccessoryd26AccessoryDataStreamAdapter)init;
- (void)accessory:(id)a3 didReceiveBulkSessionCandidate:(id)a4;
- (void)accessoryDidCloseDataStream:(id)a3;
- (void)accessoryDidStartListening:(id)a3;
@end

@implementation AccessoryDataStreamAdapter

- (_TtC14dockaccessoryd26AccessoryDataStreamAdapter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)accessory:(id)a3 didReceiveBulkSessionCandidate:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  [a4 rejectBulkSendSessionWithStatus:1];
  swift_unknownObjectRelease();
  sub_100095808(v5);
}

- (void)accessoryDidStartListening:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000FDA14(v5);

  sub_100095808(v5);
}

- (void)accessoryDidCloseDataStream:(id)a3
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100095808(v3);
}

@end