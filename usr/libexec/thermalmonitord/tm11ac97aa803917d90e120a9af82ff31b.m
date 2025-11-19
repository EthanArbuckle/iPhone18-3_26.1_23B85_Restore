@interface tm11ac97aa803917d90e120a9af82ff31b
- (void)updateCoreAnalyticsInfo;
@end

@implementation tm11ac97aa803917d90e120a9af82ff31b

- (void)updateCoreAnalyticsInfo
{
  [(CommonProduct *)self dieTempMaxAverage];
  [(CommonProduct *)self dieTempMaxMax];
  [(CommonProduct *)self getChargerState];
  sub_100006FB4();
  [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager isContextTriggered:"isContextTriggered:", 0];
  [-[CommonProduct findComponent:](self findComponent:{2), "releaseMaxLI"}];
  [-[CommonProduct findComponent:](self findComponent:{3), "releaseMaxLI"}];
  [-[CommonProduct findComponent:](self findComponent:{7), "releaseMaxLI"}];
  [(CommonProduct *)self isBackLightOn];
  AnalyticsSendEventLazy();
}

@end