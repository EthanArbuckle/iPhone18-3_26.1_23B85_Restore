@interface GKScopedIDsUtils
+ (id)batchRequestWithPlayerIDs:(id)ds gameBundleIDs:(id)iDs desiredSize:(int64_t)size;
+ (id)filterUnsupportedGameBundleIDs:(id)ds;
+ (id)incompletePlayerIDs:(id)ds gameBundleIDs:(id)iDs scopedIDs:(id)scopedIDs;
+ (id)mergeWithScopedIDs:(id)ds with:(id)with;
@end

@implementation GKScopedIDsUtils

+ (id)filterUnsupportedGameBundleIDs:(id)ds
{
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static ScopedIDsUtils.filterUnsupportedGameBundleIDs(_:)(v3);

  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

+ (id)batchRequestWithPlayerIDs:(id)ds gameBundleIDs:(id)iDs desiredSize:(int64_t)size
{
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static ScopedIDsUtils.batchRequest(playerIDs:gameBundleIDs:desiredSize:)(v6, v7, size);

  type metadata accessor for ScopedIDsBatchRequest();
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

+ (id)incompletePlayerIDs:(id)ds gameBundleIDs:(id)iDs scopedIDs:(id)scopedIDs
{
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001EB630();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static ScopedIDsUtils.incomplete(playerIDs:gameBundleIDs:scopedIDs:)(v5, v6, v7);

  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

+ (id)mergeWithScopedIDs:(id)ds with:(id)with
{
  sub_1001EB630();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static ScopedIDsUtils.merge(scopedIDs:with:)(v4, v5);

  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

@end