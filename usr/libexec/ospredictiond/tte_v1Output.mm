@interface tte_v1Output
- (id)featureValueForName:(id)name;
- (tte_v1Output)initWithTte:(double)tte;
@end

@implementation tte_v1Output

- (tte_v1Output)initWithTte:(double)tte
{
  v5.receiver = self;
  v5.super_class = tte_v1Output;
  result = [(tte_v1Output *)&v5 init];
  if (result)
  {
    result->_tte = tte;
  }

  return result;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"tte"])
  {
    [(tte_v1Output *)self tte];
    v4 = [MLFeatureValue featureValueWithDouble:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end