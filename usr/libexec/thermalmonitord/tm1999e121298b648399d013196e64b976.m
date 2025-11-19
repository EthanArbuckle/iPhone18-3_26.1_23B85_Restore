@interface tm1999e121298b648399d013196e64b976
- (void)updateAllThermalLoad:(BOOL)a3;
- (void)updateCoreAnalyticsInfo;
@end

@implementation tm1999e121298b648399d013196e64b976

- (void)updateAllThermalLoad:(BOOL)a3
{
  v4 = qword_1000AB824;
  v5 = qword_1000AB834;
  v6 = dword_1000AB840;
  v7 = dword_1000AB844;
  v8 = [(CommonProduct *)self findComponent:18];
  v9 = [(CommonProduct *)self dieTempMaxAverage]/ 100.0;
  *&v9 = v9;
  [v8 calculateControlEffort:v9];
  sub_10000533C(31, (v5 * 1.06 + 67.0 + v7 * -0.08));
  sub_10000533C(32, (v4 * 0.88 + -22.0 + v6 * 0.13));
  v10 = dword_1000AB8A4;
  v11 = [(CommonProduct *)self findComponent:19];
  v12 = v10 / 100.0;
  *&v13 = v12;
  [v11 calculateControlEffort:v13];
  v14 = [(CommonProduct *)self findComponent:20];
  *&v15 = v12;
  [v14 calculateControlEffort:v15];
  v16 = [(CommonProduct *)self findComponent:21];
  *&v17 = v12;

  [v16 calculateControlEffort:v17];
}

- (void)updateCoreAnalyticsInfo
{
  [(CommonProduct *)self dieTempMaxAverage];
  [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager isContextTriggered:"isContextTriggered:", 0];
  [(CommonProduct *)self thermalPressureLevel];
  AnalyticsSendEventLazy();
}

@end