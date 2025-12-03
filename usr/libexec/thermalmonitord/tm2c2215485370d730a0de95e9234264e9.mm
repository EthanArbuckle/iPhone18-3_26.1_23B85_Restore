@interface tm2c2215485370d730a0de95e9234264e9
- (void)updateAllThermalLoad:(BOOL)load;
- (void)updateCoreAnalyticsInfo;
@end

@implementation tm2c2215485370d730a0de95e9234264e9

- (void)updateAllThermalLoad:(BOOL)load
{
  v4 = qword_1000AB824;
  v5 = qword_1000AB82C;
  v6 = dword_1000AB844;
  v7 = [(CommonProduct *)self findComponent:18];
  v8 = [(CommonProduct *)self dieTempMaxAverage]/ 100.0;
  *&v8 = v8;
  [v7 calculateControlEffort:v8];
  sub_10000533C(40, (v4 * 0.57 + 68.76 + v6 * 0.42));
  sub_10000533C(41, (v5 * 1.14 + 155.88 + v6 * -0.29));
  sub_10000533C(42, v4);
  v9 = dword_1000AB8C4;
  v10 = [(CommonProduct *)self findComponent:19];
  v11 = v9 / 100.0;
  *&v12 = v11;
  [v10 calculateControlEffort:v12];
  v13 = [(CommonProduct *)self findComponent:20];
  *&v14 = v11;

  [v13 calculateControlEffort:v14];
}

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
  AnalyticsSendEventLazy();
}

@end