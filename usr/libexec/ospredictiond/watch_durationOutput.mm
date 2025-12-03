@interface watch_durationOutput
- (id)featureValueForName:(id)name;
- (watch_durationOutput)initWithDuration_pred:(double)duration_pred;
@end

@implementation watch_durationOutput

- (watch_durationOutput)initWithDuration_pred:(double)duration_pred
{
  v5.receiver = self;
  v5.super_class = watch_durationOutput;
  result = [(watch_durationOutput *)&v5 init];
  if (result)
  {
    result->_duration_pred = duration_pred;
  }

  return result;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"duration_pred"])
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