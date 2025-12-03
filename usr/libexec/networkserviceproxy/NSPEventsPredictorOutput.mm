@interface NSPEventsPredictorOutput
- (NSPEventsPredictorOutput)initWithIdentity:(id)identity;
- (id)featureValueForName:(id)name;
@end

@implementation NSPEventsPredictorOutput

- (NSPEventsPredictorOutput)initWithIdentity:(id)identity
{
  identityCopy = identity;
  v9.receiver = self;
  v9.super_class = NSPEventsPredictorOutput;
  v6 = [(NSPEventsPredictorOutput *)&v9 init];
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
    identity = [(NSPEventsPredictorOutput *)self Identity];
    v5 = [MLFeatureValue featureValueWithMultiArray:identity];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end