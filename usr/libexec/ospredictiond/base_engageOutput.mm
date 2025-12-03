@interface base_engageOutput
- (base_engageOutput)initWithEngage:(int64_t)engage classProbability:(id)probability;
- (id)featureValueForName:(id)name;
@end

@implementation base_engageOutput

- (base_engageOutput)initWithEngage:(int64_t)engage classProbability:(id)probability
{
  probabilityCopy = probability;
  v11.receiver = self;
  v11.super_class = base_engageOutput;
  v8 = [(base_engageOutput *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_engage = engage;
    objc_storeStrong(&v8->_classProbability, probability);
  }

  return v9;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"engage"])
  {
    v5 = [MLFeatureValue featureValueWithInt64:[(base_engageOutput *)self engage]];
  }

  else if ([nameCopy isEqualToString:@"classProbability"])
  {
    classProbability = [(base_engageOutput *)self classProbability];
    v5 = [MLFeatureValue featureValueWithDictionary:classProbability error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end