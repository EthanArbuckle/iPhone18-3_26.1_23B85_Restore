@interface UARPAnalyticsEventActiveFirmware
- (void)send;
@end

@implementation UARPAnalyticsEventActiveFirmware

- (void)send
{
  if (objc_opt_class())
  {
    v3 = +[GEOCountryConfiguration sharedConfiguration];
    v4 = [v3 countryCode];
    v5 = [v4 copy];
    countryCode = self->_countryCode;
    self->_countryCode = v5;
  }

  AnalyticsSendEventLazy();
}

@end