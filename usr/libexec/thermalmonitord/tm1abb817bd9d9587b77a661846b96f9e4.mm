@interface tm1abb817bd9d9587b77a661846b96f9e4
- (void)updateCoreAnalyticsInfo;
@end

@implementation tm1abb817bd9d9587b77a661846b96f9e4

- (void)updateCoreAnalyticsInfo
{
  [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager isContextTriggered:"isContextTriggered:", 0];
  [(CommonProduct *)self dieTempMaxAverage];
  [(CommonProduct *)self getChargerState];
  [(CommonProduct *)self dieTempMaxMax];
  [(CommonProduct *)self thermalPressureLevel];
  AnalyticsSendEventLazy();
}

@end