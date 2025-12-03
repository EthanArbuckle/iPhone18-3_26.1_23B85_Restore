@interface xgb_last_lock_modelOutput
- (id)featureValueForName:(id)name;
- (xgb_last_lock_modelOutput)initWithIs_long:(int64_t)is_long classProbability:(id)probability;
@end

@implementation xgb_last_lock_modelOutput

- (xgb_last_lock_modelOutput)initWithIs_long:(int64_t)is_long classProbability:(id)probability
{
  probabilityCopy = probability;
  v11.receiver = self;
  v11.super_class = xgb_last_lock_modelOutput;
  v8 = [(xgb_last_lock_modelOutput *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_is_long = is_long;
    objc_storeStrong(&v8->_classProbability, probability);
  }

  return v9;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"is_long"])
  {
    v5 = [MLFeatureValue featureValueWithInt64:[(xgb_last_lock_modelOutput *)self is_long]];
  }

  else if ([nameCopy isEqualToString:@"classProbability"])
  {
    classProbability = [(xgb_last_lock_modelOutput *)self classProbability];
    v5 = [MLFeatureValue featureValueWithDictionary:classProbability error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end