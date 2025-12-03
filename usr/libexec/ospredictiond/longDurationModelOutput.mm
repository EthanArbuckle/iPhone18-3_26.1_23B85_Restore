@interface longDurationModelOutput
- (id)featureValueForName:(id)name;
- (longDurationModelOutput)initWithDuration_pred:(double)duration_pred;
@end

@implementation longDurationModelOutput

- (longDurationModelOutput)initWithDuration_pred:(double)duration_pred
{
  v5.receiver = self;
  v5.super_class = longDurationModelOutput;
  result = [(longDurationModelOutput *)&v5 init];
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
    [(longDurationModelOutput *)self duration_pred];
    v4 = [MLFeatureValue featureValueWithDouble:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end