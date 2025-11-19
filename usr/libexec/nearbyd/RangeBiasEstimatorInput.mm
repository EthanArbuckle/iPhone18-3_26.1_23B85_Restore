@interface RangeBiasEstimatorInput
- (RangeBiasEstimatorInput)initWithData:(id)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation RangeBiasEstimatorInput

- (RangeBiasEstimatorInput)initWithData:(id)a3
{
  v5 = a3;
  if (self)
  {
    objc_storeStrong(&self->_data, a3);
  }

  return self;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"input"])
  {
    v5 = [MLFeatureValue featureValueWithMultiArray:self->_data];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end