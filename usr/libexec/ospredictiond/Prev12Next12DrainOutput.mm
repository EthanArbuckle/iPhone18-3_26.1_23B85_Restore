@interface Prev12Next12DrainOutput
- (Prev12Next12DrainOutput)initWith_24hour_only_drain_label_100:(int64_t)with_24hour_only_drain_label_100 classProbability:(id)probability;
- (id)featureValueForName:(id)name;
@end

@implementation Prev12Next12DrainOutput

- (Prev12Next12DrainOutput)initWith_24hour_only_drain_label_100:(int64_t)with_24hour_only_drain_label_100 classProbability:(id)probability
{
  probabilityCopy = probability;
  v11.receiver = self;
  v11.super_class = Prev12Next12DrainOutput;
  v8 = [(Prev12Next12DrainOutput *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->__24hour_only_drain_label_100 = with_24hour_only_drain_label_100;
    objc_storeStrong(&v8->_classProbability, probability);
  }

  return v9;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"24hour_only_drain_label_100"])
  {
    v5 = [MLFeatureValue featureValueWithInt64:[(Prev12Next12DrainOutput *)self _24hour_only_drain_label]];
  }

  else if ([nameCopy isEqualToString:@"classProbability"])
  {
    classProbability = [(Prev12Next12DrainOutput *)self classProbability];
    v5 = [MLFeatureValue featureValueWithDictionary:classProbability error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end