@interface iRATBWOutput
- (iRATBWOutput)initWithActualLowBandwidth_d:(double)bandwidth_d;
- (id)featureValueForName:(id)name;
@end

@implementation iRATBWOutput

- (iRATBWOutput)initWithActualLowBandwidth_d:(double)bandwidth_d
{
  v5.receiver = self;
  v5.super_class = iRATBWOutput;
  result = [(iRATBWOutput *)&v5 init];
  if (result)
  {
    result->_actualLowBandwidth_d = bandwidth_d;
  }

  return result;
}

- (id)featureValueForName:(id)name
{
  if (![name isEqualToString:@"actualLowBandwidth_d"])
  {
    return 0;
  }

  v4 = sub_1000D7CC8();
  actualLowBandwidth_d = self->_actualLowBandwidth_d;

  return [v4 featureValueWithDouble:actualLowBandwidth_d];
}

@end