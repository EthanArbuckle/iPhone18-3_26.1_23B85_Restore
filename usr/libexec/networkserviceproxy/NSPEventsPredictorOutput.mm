@interface NSPEventsPredictorOutput
- (NSPEventsPredictorOutput)initWithIdentity:(id)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation NSPEventsPredictorOutput

- (NSPEventsPredictorOutput)initWithIdentity:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NSPEventsPredictorOutput;
  v6 = [(NSPEventsPredictorOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_Identity, a3);
  }

  return v7;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"Identity"])
  {
    v4 = [(NSPEventsPredictorOutput *)self Identity];
    v5 = [MLFeatureValue featureValueWithMultiArray:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end