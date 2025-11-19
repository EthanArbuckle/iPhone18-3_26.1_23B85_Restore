@interface tm99cbb6a8c39b59c1e8203b1c2ab4ecf8
- (void)updateCoreAnalyticsInfo;
@end

@implementation tm99cbb6a8c39b59c1e8203b1c2ab4ecf8

- (void)updateCoreAnalyticsInfo
{
  [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager isContextTriggered:"isContextTriggered:", 0];
  [(CommonProduct *)self dieTempMaxAverage];
  [(CommonProduct *)self dieTempMaxMax];
  [qword_1000ABCB0 getCurrentPackagePower];
  [(CommonProduct *)self getChargerState];
  sub_100006FB4();
  AnalyticsSendEventLazy();
}

@end