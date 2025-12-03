@interface shortDurationModelOutput
- (id)featureValueForName:(id)name;
- (shortDurationModelOutput)initWithDuration_pred:(double)duration_pred;
@end

@implementation shortDurationModelOutput

- (shortDurationModelOutput)initWithDuration_pred:(double)duration_pred
{
  v5.receiver = self;
  v5.super_class = shortDurationModelOutput;
  result = [(shortDurationModelOutput *)&v5 init];
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
    [(shortDurationModelOutput *)self duration_pred];
    v4 = [MLFeatureValue featureValueWithDouble:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end