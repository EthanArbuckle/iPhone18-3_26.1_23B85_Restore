@interface GKAppMetadataCache
- (GKAppMetadataCache)initWithPlayerID:(id)a3 language:(id)a4 error:(id *)a5;
- (void)deleteAllWithCompletionHandler:(id)a3;
@end

@implementation GKAppMetadataCache

- (GKAppMetadataCache)initWithPlayerID:(id)a3 language:(id)a4 error:(id *)a5
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10026B828();
  return result;
}

- (void)deleteAllWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;

  sub_10028022C(&unk_1002C96A0, v5);
}

@end