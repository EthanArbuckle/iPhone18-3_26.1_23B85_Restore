@interface dynamic_schedulingOutput
- (dynamic_schedulingOutput)initWithCharge_duration:(double)charge_duration;
- (id)featureValueForName:(id)name;
@end

@implementation dynamic_schedulingOutput

- (dynamic_schedulingOutput)initWithCharge_duration:(double)charge_duration
{
  v5.receiver = self;
  v5.super_class = dynamic_schedulingOutput;
  result = [(dynamic_schedulingOutput *)&v5 init];
  if (result)
  {
    result->_charge_duration = charge_duration;
  }

  return result;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"charge_duration"])
  {
    [(dynamic_schedulingOutput *)self charge_duration];
    v4 = [MLFeatureValue featureValueWithDouble:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end