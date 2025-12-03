@interface base_durationOutput
- (base_durationOutput)initWithDuration_pred:(double)duration_pred;
- (id)featureValueForName:(id)name;
@end

@implementation base_durationOutput

- (base_durationOutput)initWithDuration_pred:(double)duration_pred
{
  v5.receiver = self;
  v5.super_class = base_durationOutput;
  result = [(base_durationOutput *)&v5 init];
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
    [(base_durationOutput *)self duration_pred];
    v4 = [MLFeatureValue featureValueWithDouble:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end