@interface Prev12Next12DrainOutput
- (Prev12Next12DrainOutput)initWith_24hour_only_drain_label_100:(int64_t)a3 classProbability:(id)a4;
- (id)featureValueForName:(id)a3;
@end

@implementation Prev12Next12DrainOutput

- (Prev12Next12DrainOutput)initWith_24hour_only_drain_label_100:(int64_t)a3 classProbability:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = Prev12Next12DrainOutput;
  v8 = [(Prev12Next12DrainOutput *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->__24hour_only_drain_label_100 = a3;
    objc_storeStrong(&v8->_classProbability, a4);
  }

  return v9;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"24hour_only_drain_label_100"])
  {
    v5 = [MLFeatureValue featureValueWithInt64:[(Prev12Next12DrainOutput *)self _24hour_only_drain_label]];
  }

  else if ([v4 isEqualToString:@"classProbability"])
  {
    v6 = [(Prev12Next12DrainOutput *)self classProbability];
    v5 = [MLFeatureValue featureValueWithDictionary:v6 error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end