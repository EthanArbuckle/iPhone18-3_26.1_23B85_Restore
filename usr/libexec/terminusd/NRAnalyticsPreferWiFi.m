@interface NRAnalyticsPreferWiFi
- (void)submit;
@end

@implementation NRAnalyticsPreferWiFi

- (void)submit
{
  if (self)
  {
    preferWiFiRequestStart = self->_preferWiFiRequestStart;
    preferWiFiRequestEnd = self->_preferWiFiRequestEnd;
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

  [(NSMutableDictionary *)eventDictionary setObject:v6 forKeyedSubscript:@"requestDurationInSec"];

  if (self)
  {
    v8 = [NSNumber numberWithUnsignedLongLong:self->_preferWiFiRequestTimedOut];
    v9 = self->super._eventDictionary;
  }

  else
  {
    v8 = [NSNumber numberWithUnsignedLongLong:0];
    v9 = 0;
  }

  [(NSMutableDictionary *)v9 setObject:v8 forKeyedSubscript:@"requestTimedOut"];

  if (self)
  {
    v10 = [NSNumber numberWithUnsignedLongLong:self->_preferWiFiRequestSuccessful];
    v11 = self->super._eventDictionary;
  }

  else
  {
    v10 = [NSNumber numberWithUnsignedLongLong:0];
    v11 = 0;
  }

  [(NSMutableDictionary *)v11 setObject:v10 forKeyedSubscript:@"requestSuccessful"];

  if (self)
  {
    v12 = [NSNumber numberWithUnsignedLongLong:self->_linkTransitionsWhileRequestActive];
    v13 = self->super._eventDictionary;
  }

  else
  {
    v12 = [NSNumber numberWithUnsignedLongLong:0];
    v13 = 0;
  }

  [(NSMutableDictionary *)v13 setObject:v12 forKeyedSubscript:@"linkTransitionsWhileRequestActive"];

  sub_1001557BC(self, @"com.apple.networkrelay.analytics.preferWiFi");
}

@end