@interface CellularThroughputPredictionInput
- (CellularThroughputPredictionInput)initWithMaxOfActualLowBandwidth_d:(double)a3 cellSinr:(double)a4 cellNrRSRQ:(double)a5 cellLteRSRQ:(double)a6 cellNrRSRP:(double)a7 lqmScorecellular:(double)a8 cellChannelBW:(double)a9 cellNrSNR:(double)a10 cellRsrp:(double)a11 ratType:(double)a12 cellEstimatedBW:(double)a13 cellNsaEnabled:(double)a14 cellBandInfo:(double)a15 pActualLowBandwidth:(double)a16 NRType:(double)a17;
- (id)featureValueForName:(id)a3;
@end

@implementation CellularThroughputPredictionInput

- (CellularThroughputPredictionInput)initWithMaxOfActualLowBandwidth_d:(double)a3 cellSinr:(double)a4 cellNrRSRQ:(double)a5 cellLteRSRQ:(double)a6 cellNrRSRP:(double)a7 lqmScorecellular:(double)a8 cellChannelBW:(double)a9 cellNrSNR:(double)a10 cellRsrp:(double)a11 ratType:(double)a12 cellEstimatedBW:(double)a13 cellNsaEnabled:(double)a14 cellBandInfo:(double)a15 pActualLowBandwidth:(double)a16 NRType:(double)a17
{
  v26.receiver = self;
  v26.super_class = CellularThroughputPredictionInput;
  result = [(CellularThroughputPredictionInput *)&v26 init];
  if (result)
  {
    result->_maxOfActualLowBandwidth_d = a3;
    result->_cellSinr = a4;
    result->_cellNrRSRQ = a5;
    result->_cellLteRSRQ = a6;
    result->_cellNrRSRP = a7;
    result->_lqmScorecellular = a8;
    result->_cellChannelBW = a9;
    result->_cellNrSNR = a10;
    result->_cellRsrp = a11;
    result->_ratType = a12;
    result->_cellEstimatedBW = a13;
    result->_cellNsaEnabled = a14;
    result->_cellBandInfo = a15;
    result->_pActualLowBandwidth = a16;
    result->_NRType = a17;
  }

  return result;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"maxOfActualLowBandwidth_d"])
  {
    v5 = 8;
LABEL_31:
    v6 = [sub_1000AB6BC() featureValueWithDouble:*(&self->super.isa + v5)];
    goto LABEL_32;
  }

  if ([v4 isEqualToString:@"cellSinr"])
  {
    v5 = 16;
    goto LABEL_31;
  }

  if ([v4 isEqualToString:@"cellNrRSRQ"])
  {
    v5 = 24;
    goto LABEL_31;
  }

  if ([v4 isEqualToString:@"cellLteRSRQ"])
  {
    v5 = 32;
    goto LABEL_31;
  }

  if ([v4 isEqualToString:@"cellNrRSRP"])
  {
    v5 = 40;
    goto LABEL_31;
  }

  if ([v4 isEqualToString:@"lqmScorecellular"])
  {
    v5 = 48;
    goto LABEL_31;
  }

  if ([v4 isEqualToString:@"cellChannelBW"])
  {
    v5 = 56;
    goto LABEL_31;
  }

  if ([v4 isEqualToString:@"cellNrSNR"])
  {
    v5 = 64;
    goto LABEL_31;
  }

  if ([v4 isEqualToString:@"cellRsrp"])
  {
    v5 = 72;
    goto LABEL_31;
  }

  if ([v4 isEqualToString:@"ratType"])
  {
    v5 = 80;
    goto LABEL_31;
  }

  if ([v4 isEqualToString:@"cellEstimatedBW"])
  {
    v5 = 88;
    goto LABEL_31;
  }

  if ([v4 isEqualToString:@"cellNsaEnabled"])
  {
    v5 = 96;
    goto LABEL_31;
  }

  if ([v4 isEqualToString:@"cellBandInfo"])
  {
    v5 = 104;
    goto LABEL_31;
  }

  if ([v4 isEqualToString:@"pActualLowBandwidth"])
  {
    v5 = 112;
    goto LABEL_31;
  }

  if ([v4 isEqualToString:@"NRType"])
  {
    v5 = 120;
    goto LABEL_31;
  }

  v6 = 0;
LABEL_32:

  return v6;
}

@end