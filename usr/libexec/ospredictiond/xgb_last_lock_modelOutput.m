@interface xgb_last_lock_modelOutput
- (id)featureValueForName:(id)a3;
- (xgb_last_lock_modelOutput)initWithIs_long:(int64_t)a3 classProbability:(id)a4;
@end

@implementation xgb_last_lock_modelOutput

- (xgb_last_lock_modelOutput)initWithIs_long:(int64_t)a3 classProbability:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = xgb_last_lock_modelOutput;
  v8 = [(xgb_last_lock_modelOutput *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_is_long = a3;
    objc_storeStrong(&v8->_classProbability, a4);
  }

  return v9;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"is_long"])
  {
    v5 = [MLFeatureValue featureValueWithInt64:[(xgb_last_lock_modelOutput *)self is_long]];
  }

  else if ([v4 isEqualToString:@"classProbability"])
  {
    v6 = [(xgb_last_lock_modelOutput *)self classProbability];
    v5 = [MLFeatureValue featureValueWithDictionary:v6 error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end