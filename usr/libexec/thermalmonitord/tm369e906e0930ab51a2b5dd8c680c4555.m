@interface tm369e906e0930ab51a2b5dd8c680c4555
- (void)updateCoreAnalyticsInfo;
@end

@implementation tm369e906e0930ab51a2b5dd8c680c4555

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