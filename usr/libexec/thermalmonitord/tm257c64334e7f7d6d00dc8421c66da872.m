@interface tm257c64334e7f7d6d00dc8421c66da872
- (void)updateCoreAnalyticsInfo;
@end

@implementation tm257c64334e7f7d6d00dc8421c66da872

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