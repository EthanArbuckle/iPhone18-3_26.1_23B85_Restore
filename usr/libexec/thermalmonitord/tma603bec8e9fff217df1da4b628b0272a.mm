@interface tma603bec8e9fff217df1da4b628b0272a
- (void)updateCoreAnalyticsInfo;
@end

@implementation tma603bec8e9fff217df1da4b628b0272a

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