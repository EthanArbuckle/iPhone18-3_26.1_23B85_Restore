@interface iRATBWOutput
- (iRATBWOutput)initWithActualLowBandwidth_d:(double)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation iRATBWOutput

- (iRATBWOutput)initWithActualLowBandwidth_d:(double)a3
{
  v5.receiver = self;
  v5.super_class = iRATBWOutput;
  result = [(iRATBWOutput *)&v5 init];
  if (result)
  {
    result->_actualLowBandwidth_d = a3;
  }

  return result;
}

- (id)featureValueForName:(id)a3
{
  if (![a3 isEqualToString:@"actualLowBandwidth_d"])
  {
    return 0;
  }

  v4 = sub_1000D7CC8();
  actualLowBandwidth_d = self->_actualLowBandwidth_d;

  return [v4 featureValueWithDouble:actualLowBandwidth_d];
}

@end