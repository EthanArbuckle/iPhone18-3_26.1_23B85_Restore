@interface engageOnPluginOutput
- (engageOnPluginOutput)initWithEngage:(int64_t)engage classProbability:(id)probability;
- (id)featureValueForName:(id)name;
@end

@implementation engageOnPluginOutput

- (engageOnPluginOutput)initWithEngage:(int64_t)engage classProbability:(id)probability
{
  probabilityCopy = probability;
  v11.receiver = self;
  v11.super_class = engageOnPluginOutput;
  v8 = [(engageOnPluginOutput *)&v11 init];
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
    v5 = [MLFeatureValue featureValueWithInt64:[(engageOnPluginOutput *)self engage]];
  }

  else if ([nameCopy isEqualToString:@"classProbability"])
  {
    classProbability = [(engageOnPluginOutput *)self classProbability];
    v5 = [MLFeatureValue featureValueWithDictionary:classProbability error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end