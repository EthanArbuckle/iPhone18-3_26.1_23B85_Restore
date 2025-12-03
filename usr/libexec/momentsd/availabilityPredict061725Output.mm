@interface availabilityPredict061725Output
- (availabilityPredict061725Output)initWithTarget:(int64_t)target classProbability:(id)probability;
- (id)featureValueForName:(id)name;
@end

@implementation availabilityPredict061725Output

- (availabilityPredict061725Output)initWithTarget:(int64_t)target classProbability:(id)probability
{
  probabilityCopy = probability;
  v11.receiver = self;
  v11.super_class = availabilityPredict061725Output;
  v8 = [(availabilityPredict061725Output *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_target = target;
    objc_storeStrong(&v8->_classProbability, probability);
  }

  return v9;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"target"])
  {
    v5 = [MLFeatureValue featureValueWithInt64:[(availabilityPredict061725Output *)self target]];
  }

  else if ([nameCopy isEqualToString:@"classProbability"])
  {
    classProbability = [(availabilityPredict061725Output *)self classProbability];
    v5 = [MLFeatureValue featureValueWithDictionary:classProbability error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end