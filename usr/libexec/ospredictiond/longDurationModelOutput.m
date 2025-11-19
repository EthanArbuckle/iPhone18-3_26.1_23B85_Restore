@interface longDurationModelOutput
- (id)featureValueForName:(id)a3;
- (longDurationModelOutput)initWithDuration_pred:(double)a3;
@end

@implementation longDurationModelOutput

- (longDurationModelOutput)initWithDuration_pred:(double)a3
{
  v5.receiver = self;
  v5.super_class = longDurationModelOutput;
  result = [(longDurationModelOutput *)&v5 init];
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