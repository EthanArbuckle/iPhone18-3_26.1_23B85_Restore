@interface DMDAppMetadata
- (DMDAppLifeCycle)lifeCycle;
@end

@implementation DMDAppMetadata

- (DMDAppLifeCycle)lifeCycle
{
  v2 = [(DMDAppMetadata *)self bundleIdentifier];
  v3 = [DMDAppLifeCycle lifeCycleForBundleIdentifier:v2];

  return v3;
}

@end