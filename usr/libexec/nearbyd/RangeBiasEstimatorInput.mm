@interface RangeBiasEstimatorInput
- (RangeBiasEstimatorInput)initWithData:(id)data;
- (id)featureValueForName:(id)name;
@end

@implementation RangeBiasEstimatorInput

- (RangeBiasEstimatorInput)initWithData:(id)data
{
  dataCopy = data;
  if (self)
  {
    objc_storeStrong(&self->_data, data);
  }

  return self;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"input"])
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