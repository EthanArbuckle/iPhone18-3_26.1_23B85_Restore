@interface tm94e2445bba4a565b83e88425e97b1ef1
- (void)updateCoreAnalyticsInfo;
@end

@implementation tm94e2445bba4a565b83e88425e97b1ef1

- (void)updateCoreAnalyticsInfo
{
  [(CommonProduct *)self dieTempMaxAverage];
  [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager isContextTriggered:"isContextTriggered:", 0];
  [(CommonProduct *)self thermalPressureLevel];
  AnalyticsSendEventLazy();
}

@end