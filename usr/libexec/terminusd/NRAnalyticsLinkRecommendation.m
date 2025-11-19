@interface NRAnalyticsLinkRecommendation
- (void)submit;
@end

@implementation NRAnalyticsLinkRecommendation

- (void)submit
{
  if (self)
  {
    btNotRecommendedStart = self->_btNotRecommendedStart;
    btNotRecommendedEnd = self->_btNotRecommendedEnd;
    NRDiffMachTimeInSeconds();
    v6 = v5;
    cmpWiFiNotRecommendedStart = self->_cmpWiFiNotRecommendedStart;
    cmpWiFiNotRecommendedEnd = self->_cmpWiFiNotRecommendedEnd;
  }

  else
  {
    NRDiffMachTimeInSeconds();
    v6 = v15;
  }

  NRDiffMachTimeInSeconds();
  v10 = v9;
  if (v6 > 0.0)
  {
    v11 = [NSNumber numberWithDouble:round(v6 * 1000.0) * 0.001];
    if (self)
    {
      eventDictionary = self->super._eventDictionary;
    }

    else
    {
      eventDictionary = 0;
    }

    [(NSMutableDictionary *)eventDictionary setObject:v11 forKeyedSubscript:@"btNotRecommendedDurationInSec"];
  }

  if (v10 > 0.0)
  {
    v13 = [NSNumber numberWithDouble:round(v10 * 1000.0) * 0.001];
    if (self)
    {
      v14 = self->super._eventDictionary;
    }

    else
    {
      v14 = 0;
    }

    [(NSMutableDictionary *)v14 setObject:v13 forKeyedSubscript:@"cmpWiFiNotRecommendedDurationInSec"];
  }

  sub_1001557BC(self, @"com.apple.networkrelay.analytics.linkRecommendation");
}

@end