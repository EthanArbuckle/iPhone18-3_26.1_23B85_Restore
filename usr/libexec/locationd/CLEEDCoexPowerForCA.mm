@interface CLEEDCoexPowerForCA
- (CLEEDCoexPowerForCA)initWithCoexMetricDict:(id)dict;
@end

@implementation CLEEDCoexPowerForCA

- (CLEEDCoexPowerForCA)initWithCoexMetricDict:(id)dict
{
  v13.receiver = self;
  v13.super_class = CLEEDCoexPowerForCA;
  v4 = [(CLEEDCoexPowerForCA *)&v13 init];
  v5 = v4;
  if (v4)
  {
    if (dict)
    {
      [objc_msgSend(dict valueForKey:{@"peakPowerNominalDuration", "doubleValue"}];
      v5->_peakPowerNominalDuration = v6;
      [objc_msgSend(dict valueForKey:{@"peakPowerLightDuration", "doubleValue"}];
      v5->_peakPowerLightDuration = v7;
      [objc_msgSend(dict valueForKey:{@"peakPowerModerateDuration", "doubleValue"}];
      v5->_peakPowerModerateDuration = v8;
      [objc_msgSend(dict valueForKey:{@"peakPowerHeavyDuration", "doubleValue"}];
      v5->_peakPowerHeavyDuration = v9;
      [objc_msgSend(dict valueForKey:{@"peakPowerCriticalDuration", "doubleValue"}];
      v5->_peakPowerCriticalDuration = v10;
      v5->_peakPowerAtStartOfCall = [objc_msgSend(dict valueForKey:{@"peakPowerAtStartOfCall", "intValue"}];
      v5->_maxPeakPowerInCall = [objc_msgSend(dict valueForKey:{@"maxPeakPowerInCall", "intValue"}];
      v5->_peakPowerAtEndOfCall = [objc_msgSend(dict valueForKey:{@"peakPowerAtEndOfCall", "intValue"}];
      [objc_msgSend(dict valueForKey:{@"currentpeakPowerStartTime", "doubleValue"}];
      v5->_currentpeakPowerStartTime = v11;
    }

    else
    {
      *(v4 + 1) = 0;
      *(v4 + 4) = 0;
      *(v4 + 24) = 0u;
      *(v4 + 40) = 0u;
      *(v4 + 56) = 0u;
    }
  }

  return v5;
}

@end