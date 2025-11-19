@interface CellularThroughputPredictionOutput
- (CellularThroughputPredictionOutput)initWithActualLowBandwidth_d:(double)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation CellularThroughputPredictionOutput

- (CellularThroughputPredictionOutput)initWithActualLowBandwidth_d:(double)a3
{
  v5.receiver = self;
  v5.super_class = CellularThroughputPredictionOutput;
  result = [(CellularThroughputPredictionOutput *)&v5 init];
  if (result)
  {
    result->_actualLowBandwidth_d = a3;
  }

  return result;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"actualLowBandwidth_d"])
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