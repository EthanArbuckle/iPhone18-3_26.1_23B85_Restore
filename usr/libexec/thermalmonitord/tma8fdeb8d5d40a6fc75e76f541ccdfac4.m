@interface tma8fdeb8d5d40a6fc75e76f541ccdfac4
- (void)updateCoreAnalyticsInfo;
@end

@implementation tma8fdeb8d5d40a6fc75e76f541ccdfac4

- (void)updateCoreAnalyticsInfo
{
  [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager isContextTriggered:"isContextTriggered:", 0];
  [(CommonProduct *)self dieTempMaxAverage];
  [(CommonProduct *)self getChargerState];
  [-[CommonProduct findComponent:](self findComponent:{13), "releaseMaxLI"}];
  AnalyticsSendEventLazy();
}

@end