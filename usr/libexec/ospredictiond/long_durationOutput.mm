@interface long_durationOutput
- (id)featureValueForName:(id)a3;
- (long_durationOutput)initWithDuration_pred:(double)a3;
@end

@implementation long_durationOutput

- (long_durationOutput)initWithDuration_pred:(double)a3
{
  v5.receiver = self;
  v5.super_class = long_durationOutput;
  result = [(long_durationOutput *)&v5 init];
  if (result)
  {
    result->_duration_pred = a3;
  }

  return result;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"duration_pred"])
  {
    [(long_durationOutput *)self duration_pred];
    v4 = [MLFeatureValue featureValueWithDouble:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end