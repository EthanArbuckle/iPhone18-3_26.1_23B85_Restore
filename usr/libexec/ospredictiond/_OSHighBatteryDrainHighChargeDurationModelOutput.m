@interface _OSHighBatteryDrainHighChargeDurationModelOutput
- (_OSHighBatteryDrainHighChargeDurationModelOutput)initWithLabel:(int64_t)a3 classProbability:(id)a4;
- (id)featureValueForName:(id)a3;
@end

@implementation _OSHighBatteryDrainHighChargeDurationModelOutput

- (_OSHighBatteryDrainHighChargeDurationModelOutput)initWithLabel:(int64_t)a3 classProbability:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _OSHighBatteryDrainHighChargeDurationModelOutput;
  v8 = [(_OSHighBatteryDrainHighChargeDurationModelOutput *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_label = a3;
    objc_storeStrong(&v8->_classProbability, a4);
  }

  return v9;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"label"])
  {
    v5 = [MLFeatureValue featureValueWithInt64:[(_OSHighBatteryDrainHighChargeDurationModelOutput *)self label]];
  }

  else if ([v4 isEqualToString:@"classProbability"])
  {
    v6 = [(_OSHighBatteryDrainHighChargeDurationModelOutput *)self classProbability];
    v5 = [MLFeatureValue featureValueWithDictionary:v6 error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end