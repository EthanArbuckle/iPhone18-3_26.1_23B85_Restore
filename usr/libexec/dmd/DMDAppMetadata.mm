@interface DMDAppMetadata
- (DMDAppLifeCycle)lifeCycle;
@end

@implementation DMDAppMetadata

- (DMDAppLifeCycle)lifeCycle
{
  bundleIdentifier = [(DMDAppMetadata *)self bundleIdentifier];
  v3 = [DMDAppLifeCycle lifeCycleForBundleIdentifier:bundleIdentifier];

  return v3;
}

@end