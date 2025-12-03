@interface GKAppMetadataFetcherRequest
- (GKAppMetadataFetcherRequest)initWithBundleIDs:(id)ds adamIDs:(id)iDs playerID:(id)d language:(id)language environment:(int64_t)environment localDataOnly:(BOOL)only ttlOption:(int64_t)option error:(id *)self0;
@end

@implementation GKAppMetadataFetcherRequest

- (GKAppMetadataFetcherRequest)initWithBundleIDs:(id)ds adamIDs:(id)iDs playerID:(id)d language:(id)language environment:(int64_t)environment localDataOnly:(BOOL)only ttlOption:(int64_t)option error:(id *)self0
{
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return AppMetadataFetcherRequest.init(bundleIDs:adamIDs:playerID:language:environment:localDataOnly:ttlOption:)(v12, v13, v14, v16, v17, v18, environment, only, option);
}

@end