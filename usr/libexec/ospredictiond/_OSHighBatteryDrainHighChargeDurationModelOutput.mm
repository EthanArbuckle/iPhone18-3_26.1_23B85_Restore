@interface _OSHighBatteryDrainHighChargeDurationModelOutput
- (_OSHighBatteryDrainHighChargeDurationModelOutput)initWithLabel:(int64_t)label classProbability:(id)probability;
- (id)featureValueForName:(id)name;
@end

@implementation _OSHighBatteryDrainHighChargeDurationModelOutput

- (_OSHighBatteryDrainHighChargeDurationModelOutput)initWithLabel:(int64_t)label classProbability:(id)probability
{
  probabilityCopy = probability;
  v11.receiver = self;
  v11.super_class = _OSHighBatteryDrainHighChargeDurationModelOutput;
  v8 = [(_OSHighBatteryDrainHighChargeDurationModelOutput *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_label = label;
    objc_storeStrong(&v8->_classProbability, probability);
  }

  return v9;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"label"])
  {
    v5 = [MLFeatureValue featureValueWithInt64:[(_OSHighBatteryDrainHighChargeDurationModelOutput *)self label]];
  }

  else if ([nameCopy isEqualToString:@"classProbability"])
  {
    classProbability = [(_OSHighBatteryDrainHighChargeDurationModelOutput *)self classProbability];
    v5 = [MLFeatureValue featureValueWithDictionary:classProbability error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end