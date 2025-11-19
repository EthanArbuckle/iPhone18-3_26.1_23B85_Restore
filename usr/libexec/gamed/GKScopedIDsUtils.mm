@interface GKScopedIDsUtils
+ (id)batchRequestWithPlayerIDs:(id)a3 gameBundleIDs:(id)a4 desiredSize:(int64_t)a5;
+ (id)filterUnsupportedGameBundleIDs:(id)a3;
+ (id)incompletePlayerIDs:(id)a3 gameBundleIDs:(id)a4 scopedIDs:(id)a5;
+ (id)mergeWithScopedIDs:(id)a3 with:(id)a4;
@end

@implementation GKScopedIDsUtils

+ (id)filterUnsupportedGameBundleIDs:(id)a3
{
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static ScopedIDsUtils.filterUnsupportedGameBundleIDs(_:)(v3);

  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

+ (id)batchRequestWithPlayerIDs:(id)a3 gameBundleIDs:(id)a4 desiredSize:(int64_t)a5
{
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static ScopedIDsUtils.batchRequest(playerIDs:gameBundleIDs:desiredSize:)(v6, v7, a5);

  type metadata accessor for ScopedIDsBatchRequest();
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

+ (id)incompletePlayerIDs:(id)a3 gameBundleIDs:(id)a4 scopedIDs:(id)a5
{
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001EB630();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static ScopedIDsUtils.incomplete(playerIDs:gameBundleIDs:scopedIDs:)(v5, v6, v7);

  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

+ (id)mergeWithScopedIDs:(id)a3 with:(id)a4
{
  sub_1001EB630();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static ScopedIDsUtils.merge(scopedIDs:with:)(v4, v5);

  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

@end