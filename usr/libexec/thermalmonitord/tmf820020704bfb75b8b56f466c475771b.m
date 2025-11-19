@interface tmf820020704bfb75b8b56f466c475771b
- (void)updateCoreAnalyticsInfo;
@end

@implementation tmf820020704bfb75b8b56f466c475771b

- (void)updateCoreAnalyticsInfo
{
  [(CommonProduct *)self dieTempMaxAverage];
  [(CommonProduct *)self dieTempMaxMax];
  sub_100006FB4();
  [(CommonProduct *)self getChargerState];
  [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager isContextTriggered:"isContextTriggered:", 0];
  [(CommonProduct *)self thermalPressureLevel];
  [-[CommonProduct findComponent:](self findComponent:{13), "releaseMaxLI"}];
  [-[CommonProduct findComponent:](self findComponent:{12), "releaseMaxLI"}];
  [-[CommonProduct findComponent:](self findComponent:{0), "releaseMaxLI"}];
  [qword_1000ABCB0 getCurrentPackagePower];
  AnalyticsSendEventLazy();
}

@end