@interface APDiscardReasonDataAdaptor
- (id)_biomeStream;
@end

@implementation APDiscardReasonDataAdaptor

- (id)_biomeStream
{
  v2 = BiomeLibrary();
  adPlatforms = [v2 AdPlatforms];
  marketplaceHealth = [adPlatforms MarketplaceHealth];
  discardReasons = [marketplaceHealth DiscardReasons];

  return discardReasons;
}

@end