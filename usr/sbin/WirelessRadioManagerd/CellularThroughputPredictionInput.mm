@interface CellularThroughputPredictionInput
- (CellularThroughputPredictionInput)initWithMaxOfActualLowBandwidth_d:(double)bandwidth_d cellSinr:(double)sinr cellNrRSRQ:(double)q cellLteRSRQ:(double)rQ cellNrRSRP:(double)p lqmScorecellular:(double)scorecellular cellChannelBW:(double)w cellNrSNR:(double)self0 cellRsrp:(double)self1 ratType:(double)self2 cellEstimatedBW:(double)self3 cellNsaEnabled:(double)self4 cellBandInfo:(double)self5 pActualLowBandwidth:(double)self6 NRType:(double)self7;
- (id)featureValueForName:(id)name;
@end

@implementation CellularThroughputPredictionInput

- (CellularThroughputPredictionInput)initWithMaxOfActualLowBandwidth_d:(double)bandwidth_d cellSinr:(double)sinr cellNrRSRQ:(double)q cellLteRSRQ:(double)rQ cellNrRSRP:(double)p lqmScorecellular:(double)scorecellular cellChannelBW:(double)w cellNrSNR:(double)self0 cellRsrp:(double)self1 ratType:(double)self2 cellEstimatedBW:(double)self3 cellNsaEnabled:(double)self4 cellBandInfo:(double)self5 pActualLowBandwidth:(double)self6 NRType:(double)self7
{
  v26.receiver = self;
  v26.super_class = CellularThroughputPredictionInput;
  result = [(CellularThroughputPredictionInput *)&v26 init];
  if (result)
  {
    result->_maxOfActualLowBandwidth_d = bandwidth_d;
    result->_cellSinr = sinr;
    result->_cellNrRSRQ = q;
    result->_cellLteRSRQ = rQ;
    result->_cellNrRSRP = p;
    result->_lqmScorecellular = scorecellular;
    result->_cellChannelBW = w;
    result->_cellNrSNR = r;
    result->_cellRsrp = rsrp;
    result->_ratType = type;
    result->_cellEstimatedBW = bW;
    result->_cellNsaEnabled = enabled;
    result->_cellBandInfo = info;
    result->_pActualLowBandwidth = bandwidth;
    result->_NRType = rType;
  }

  return result;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"maxOfActualLowBandwidth_d"])
  {
    v5 = 8;
LABEL_31:
    v6 = [sub_1000AB6BC() featureValueWithDouble:*(&self->super.isa + v5)];
    goto LABEL_32;
  }

  if ([nameCopy isEqualToString:@"cellSinr"])
  {
    v5 = 16;
    goto LABEL_31;
  }

  if ([nameCopy isEqualToString:@"cellNrRSRQ"])
  {
    v5 = 24;
    goto LABEL_31;
  }

  if ([nameCopy isEqualToString:@"cellLteRSRQ"])
  {
    v5 = 32;
    goto LABEL_31;
  }

  if ([nameCopy isEqualToString:@"cellNrRSRP"])
  {
    v5 = 40;
    goto LABEL_31;
  }

  if ([nameCopy isEqualToString:@"lqmScorecellular"])
  {
    v5 = 48;
    goto LABEL_31;
  }

  if ([nameCopy isEqualToString:@"cellChannelBW"])
  {
    v5 = 56;
    goto LABEL_31;
  }

  if ([nameCopy isEqualToString:@"cellNrSNR"])
  {
    v5 = 64;
    goto LABEL_31;
  }

  if ([nameCopy isEqualToString:@"cellRsrp"])
  {
    v5 = 72;
    goto LABEL_31;
  }

  if ([nameCopy isEqualToString:@"ratType"])
  {
    v5 = 80;
    goto LABEL_31;
  }

  if ([nameCopy isEqualToString:@"cellEstimatedBW"])
  {
    v5 = 88;
    goto LABEL_31;
  }

  if ([nameCopy isEqualToString:@"cellNsaEnabled"])
  {
    v5 = 96;
    goto LABEL_31;
  }

  if ([nameCopy isEqualToString:@"cellBandInfo"])
  {
    v5 = 104;
    goto LABEL_31;
  }

  if ([nameCopy isEqualToString:@"pActualLowBandwidth"])
  {
    v5 = 112;
    goto LABEL_31;
  }

  if ([nameCopy isEqualToString:@"NRType"])
  {
    v5 = 120;
    goto LABEL_31;
  }

  v6 = 0;
LABEL_32:

  return v6;
}

@end