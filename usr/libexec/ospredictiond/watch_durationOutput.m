@interface watch_durationOutput
- (id)featureValueForName:(id)a3;
- (watch_durationOutput)initWithDuration_pred:(double)a3;
@end

@implementation watch_durationOutput

- (watch_durationOutput)initWithDuration_pred:(double)a3
{
  v5.receiver = self;
  v5.super_class = watch_durationOutput;
  result = [(watch_durationOutput *)&v5 init];
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
    [(watch_durationOutput *)self duration_pred];
    v4 = [MLFeatureValue featureValueWithDouble:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end