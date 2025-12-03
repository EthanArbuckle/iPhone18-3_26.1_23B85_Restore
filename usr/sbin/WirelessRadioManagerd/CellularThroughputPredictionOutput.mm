@interface CellularThroughputPredictionOutput
- (CellularThroughputPredictionOutput)initWithActualLowBandwidth_d:(double)bandwidth_d;
- (id)featureValueForName:(id)name;
@end

@implementation CellularThroughputPredictionOutput

- (CellularThroughputPredictionOutput)initWithActualLowBandwidth_d:(double)bandwidth_d
{
  v5.receiver = self;
  v5.super_class = CellularThroughputPredictionOutput;
  result = [(CellularThroughputPredictionOutput *)&v5 init];
  if (result)
  {
    result->_actualLowBandwidth_d = bandwidth_d;
  }

  return result;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"actualLowBandwidth_d"])
  {
    v4 = [sub_1000AB6BC() featureValueWithDouble:self->_actualLowBandwidth_d];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end