@interface GKAppMetadataCache
- (GKAppMetadataCache)initWithPlayerID:(id)d language:(id)language error:(id *)error;
- (void)deleteAllWithCompletionHandler:(id)handler;
@end

@implementation GKAppMetadataCache

- (GKAppMetadataCache)initWithPlayerID:(id)d language:(id)language error:(id *)error
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10026B828();
  return result;
}

- (void)deleteAllWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;

  sub_10028022C(&unk_1002C96A0, v5);
}

@end