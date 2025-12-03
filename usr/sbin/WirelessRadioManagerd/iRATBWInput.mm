@interface iRATBWInput
- (iRATBWInput)initWithCca:(double)cca weighted_average_phyrate_rx:(double)weighted_average_phyrate_rx weighted_average_rssi:(double)weighted_average_rssi weighted_average_snr:(double)weighted_average_snr maxOfActualLowBandwidth_d:(double)bandwidth_d tcpRTTAvg:(double)avg wifChannelType:(double)type wifiguardinterval:(double)self0 isWfiCaptive:(double)self1 wifinumberOfSpatialStreams:(double)self2;
- (id)featureValueForName:(id)name;
@end

@implementation iRATBWInput

- (iRATBWInput)initWithCca:(double)cca weighted_average_phyrate_rx:(double)weighted_average_phyrate_rx weighted_average_rssi:(double)weighted_average_rssi weighted_average_snr:(double)weighted_average_snr maxOfActualLowBandwidth_d:(double)bandwidth_d tcpRTTAvg:(double)avg wifChannelType:(double)type wifiguardinterval:(double)self0 isWfiCaptive:(double)self1 wifinumberOfSpatialStreams:(double)self2
{
  v21.receiver = self;
  v21.super_class = iRATBWInput;
  result = [(iRATBWInput *)&v21 init];
  if (result)
  {
    result->_cca = cca;
    result->_weighted_average_phyrate_rx = weighted_average_phyrate_rx;
    result->_weighted_average_rssi = weighted_average_rssi;
    result->_weighted_average_snr = weighted_average_snr;
    result->_maxOfActualLowBandwidth_d = bandwidth_d;
    result->_tcpRTTAvg = avg;
    result->_wifChannelType = type;
    result->_wifiguardinterval = wifiguardinterval;
    result->_isWfiCaptive = captive;
    result->_wifinumberOfSpatialStreams = streams;
  }

  return result;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"cca"])
  {
    v5 = 8;
  }

  else if ([name isEqualToString:@"weighted_average_phyrate_rx"])
  {
    v5 = 16;
  }

  else if ([name isEqualToString:@"weighted_average_rssi"])
  {
    v5 = 24;
  }

  else if ([name isEqualToString:@"weighted_average_snr"])
  {
    v5 = 32;
  }

  else if ([name isEqualToString:@"maxOfActualLowBandwidth_d"])
  {
    v5 = 40;
  }

  else if ([name isEqualToString:@"tcpRTTAvg"])
  {
    v5 = 48;
  }

  else if ([name isEqualToString:@"wifChannelType"])
  {
    v5 = 56;
  }

  else if ([name isEqualToString:@"wifiguardinterval"])
  {
    v5 = 64;
  }

  else if ([name isEqualToString:@"isWfiCaptive"])
  {
    v5 = 72;
  }

  else
  {
    if (![name isEqualToString:@"wifinumberOfSpatialStreams"])
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