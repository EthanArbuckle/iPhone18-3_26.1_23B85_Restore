@interface GKInstallMetadataFetcher
- (GKInstallMetadataFetcher)initWithCodeSigning:(id)signing cache:(id)cache;
@end

@implementation GKInstallMetadataFetcher

- (GKInstallMetadataFetcher)initWithCodeSigning:(id)signing cache:(id)cache
{
  swift_unknownObjectRetain();

  return sub_100250C58(signing, cache);
}

@end