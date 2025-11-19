@interface tte_v1Output
- (id)featureValueForName:(id)a3;
- (tte_v1Output)initWithTte:(double)a3;
@end

@implementation tte_v1Output

- (tte_v1Output)initWithTte:(double)a3
{
  v5.receiver = self;
  v5.super_class = tte_v1Output;
  result = [(tte_v1Output *)&v5 init];
  if (result)
  {
    result->_tte = a3;
  }

  return result;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"tte"])
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