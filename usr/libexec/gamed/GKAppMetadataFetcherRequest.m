@interface GKAppMetadataFetcherRequest
- (GKAppMetadataFetcherRequest)initWithBundleIDs:(id)a3 adamIDs:(id)a4 playerID:(id)a5 language:(id)a6 environment:(int64_t)a7 localDataOnly:(BOOL)a8 ttlOption:(int64_t)a9 error:(id *)a10;
@end

@implementation GKAppMetadataFetcherRequest

- (GKAppMetadataFetcherRequest)initWithBundleIDs:(id)a3 adamIDs:(id)a4 playerID:(id)a5 language:(id)a6 environment:(int64_t)a7 localDataOnly:(BOOL)a8 ttlOption:(int64_t)a9 error:(id *)a10
{
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return AppMetadataFetcherRequest.init(bundleIDs:adamIDs:playerID:language:environment:localDataOnly:ttlOption:)(v12, v13, v14, v16, v17, v18, a7, a8, a9);
}

@end