@interface NRAnalyticsPhoneCallRelay
- (void)submit;
@end

@implementation NRAnalyticsPhoneCallRelay

- (void)submit
{
  if (self)
  {
    phoneCallRelayStart = self->_phoneCallRelayStart;
    phoneCallRelayEnd = self->_phoneCallRelayEnd;
  }

  NRDiffMachTimeInSeconds();
  v6 = [NSNumber numberWithDouble:round(v5 * 1000.0) * 0.001];
  if (self)
  {
    eventDictionary = self->super._eventDictionary;
  }

  else
  {
    eventDictionary = 0;
  }

  [(NSMutableDictionary *)eventDictionary setObject:v6 forKeyedSubscript:@"phoneCallRelayDurationInSec"];

  sub_1001557BC(self, @"com.apple.networkrelay.analytics.phoneCallRelay");
}

@end