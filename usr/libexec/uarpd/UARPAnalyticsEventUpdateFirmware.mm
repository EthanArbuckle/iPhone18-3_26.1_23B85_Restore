@interface UARPAnalyticsEventUpdateFirmware
- (void)send;
@end

@implementation UARPAnalyticsEventUpdateFirmware

- (void)send
{
  if (objc_opt_class())
  {
    v3 = +[GEOCountryConfiguration sharedConfiguration];
    countryCode = [v3 countryCode];
    v5 = [countryCode copy];
    countryCode = self->_countryCode;
    self->_countryCode = v5;
  }

  AnalyticsSendEventLazy();
}

@end