@interface APDiscardReasonDataAdaptor
- (id)_biomeStream;
@end

@implementation APDiscardReasonDataAdaptor

- (id)_biomeStream
{
  v2 = BiomeLibrary();
  v3 = [v2 AdPlatforms];
  v4 = [v3 MarketplaceHealth];
  v5 = [v4 DiscardReasons];

  return v5;
}

@end