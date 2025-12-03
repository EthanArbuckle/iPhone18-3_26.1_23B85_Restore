@interface NSPEventsNormalizerOutput
- (NSPEventsNormalizerOutput)initWithIdentity:(id)identity;
- (id)featureValueForName:(id)name;
@end

@implementation NSPEventsNormalizerOutput

- (NSPEventsNormalizerOutput)initWithIdentity:(id)identity
{
  identityCopy = identity;
  v9.receiver = self;
  v9.super_class = NSPEventsNormalizerOutput;
  v6 = [(NSPEventsNormalizerOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_Identity, identity);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"Identity"])
  {
    identity = [(NSPEventsNormalizerOutput *)self Identity];
    v5 = [MLFeatureValue featureValueWithMultiArray:identity];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end