@interface tm8781978eb55d0bd57cba1d7f3875e199
- (void)updateCoreAnalyticsInfo;
@end

@implementation tm8781978eb55d0bd57cba1d7f3875e199

- (void)updateCoreAnalyticsInfo
{
  sub_100006FB4();
  [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager isContextTriggered:"isContextTriggered:", 0];
  [(CommonProduct *)self dieTempMaxAverage];
  [(CommonProduct *)self dieTempMaxMax];
  [(CommonProduct *)self getChargerState];
  [-[CommonProduct findComponent:](self findComponent:{2), "releaseMaxLI"}];
  [-[CommonProduct findComponent:](self findComponent:{3), "releaseMaxLI"}];
  AnalyticsSendEventLazy();
}

@end