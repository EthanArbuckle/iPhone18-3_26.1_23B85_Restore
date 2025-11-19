@interface iRATBWInput
- (iRATBWInput)initWithCca:(double)a3 weighted_average_phyrate_rx:(double)a4 weighted_average_rssi:(double)a5 weighted_average_snr:(double)a6 maxOfActualLowBandwidth_d:(double)a7 tcpRTTAvg:(double)a8 wifChannelType:(double)a9 wifiguardinterval:(double)a10 isWfiCaptive:(double)a11 wifinumberOfSpatialStreams:(double)a12;
- (id)featureValueForName:(id)a3;
@end

@implementation iRATBWInput

- (iRATBWInput)initWithCca:(double)a3 weighted_average_phyrate_rx:(double)a4 weighted_average_rssi:(double)a5 weighted_average_snr:(double)a6 maxOfActualLowBandwidth_d:(double)a7 tcpRTTAvg:(double)a8 wifChannelType:(double)a9 wifiguardinterval:(double)a10 isWfiCaptive:(double)a11 wifinumberOfSpatialStreams:(double)a12
{
  v21.receiver = self;
  v21.super_class = iRATBWInput;
  result = [(iRATBWInput *)&v21 init];
  if (result)
  {
    result->_cca = a3;
    result->_weighted_average_phyrate_rx = a4;
    result->_weighted_average_rssi = a5;
    result->_weighted_average_snr = a6;
    result->_maxOfActualLowBandwidth_d = a7;
    result->_tcpRTTAvg = a8;
    result->_wifChannelType = a9;
    result->_wifiguardinterval = a10;
    result->_isWfiCaptive = a11;
    result->_wifinumberOfSpatialStreams = a12;
  }

  return result;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"cca"])
  {
    v5 = 8;
  }

  else if ([a3 isEqualToString:@"weighted_average_phyrate_rx"])
  {
    v5 = 16;
  }

  else if ([a3 isEqualToString:@"weighted_average_rssi"])
  {
    v5 = 24;
  }

  else if ([a3 isEqualToString:@"weighted_average_snr"])
  {
    v5 = 32;
  }

  else if ([a3 isEqualToString:@"maxOfActualLowBandwidth_d"])
  {
    v5 = 40;
  }

  else if ([a3 isEqualToString:@"tcpRTTAvg"])
  {
    v5 = 48;
  }

  else if ([a3 isEqualToString:@"wifChannelType"])
  {
    v5 = 56;
  }

  else if ([a3 isEqualToString:@"wifiguardinterval"])
  {
    v5 = 64;
  }

  else if ([a3 isEqualToString:@"isWfiCaptive"])
  {
    v5 = 72;
  }

  else
  {
    if (![a3 isEqualToString:@"wifinumberOfSpatialStreams"])
    {
      return 0;
    }

    v5 = 80;
  }

  v6 = sub_1000D7CC8();
  v7 = *(&self->super.isa + v5);

  return [v6 featureValueWithDouble:v7];
}

@end