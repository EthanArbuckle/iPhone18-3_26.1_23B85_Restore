@interface GKInstallMetadataFetchRequestResult
- (NSDictionary)metadatas;
- (NSSet)cachedBundleIDs;
@end

@implementation GKInstallMetadataFetchRequestResult

- (NSDictionary)metadatas
{
  InstallMetadataFetchResult.metadatas.getter();
  sub_1001A7B44(0, &unk_1003B6D90);
  v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (NSSet)cachedBundleIDs
{
  InstallMetadataFetchResult.cachedBundleIDs.getter();
  v2.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

@end