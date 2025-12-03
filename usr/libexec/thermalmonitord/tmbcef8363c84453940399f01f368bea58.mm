@interface tmbcef8363c84453940399f01f368bea58
- (id)initProduct:(id)product;
- (void)updateAllThermalLoad:(BOOL)load;
- (void)updateCoreAnalyticsInfo;
@end

@implementation tmbcef8363c84453940399f01f368bea58

- (id)initProduct:(id)product
{
  v6.receiver = self;
  v6.super_class = tmbcef8363c84453940399f01f368bea58;
  v3 = [(CommonProduct *)&v6 initProduct:product];
  v4 = v3;
  if (v3)
  {
    [v3 resetVTFilterState];
  }

  return v4;
}

- (void)updateAllThermalLoad:(BOOL)load
{
  v4 = qword_1000AB824;
  v5 = qword_1000AB834;
  v6 = dword_1000AB840;
  v7 = dword_1000AB844;
  v8 = [(CommonProduct *)self findComponent:18];
  v9 = [(CommonProduct *)self dieTempMaxAverage]/ 100.0;
  v10 = [(CommonProduct *)self dieTempFilteredMaxAverage]/ 100.0;
  *&v11 = v10;
  *&v10 = v9;
  [v8 calculateControlEffort:v10 trigger:v11];
  sub_10000533C(52, (v5 * 1.06 + 67.0 + v7 * -0.08));
  sub_10000533C(51, (v4 * 0.88 + -22.0 + v6 * 0.13));
  v12 = SHIDWORD(qword_1000AB8EC);
  v13 = [(CommonProduct *)self findComponent:19];
  v14 = v12 / 100.0;
  *&v15 = v14;
  [v13 calculateControlEffort:v15];
  v16 = [(CommonProduct *)self findComponent:20];
  *&v17 = v14;

  [v16 calculateControlEffort:v17];
}

- (void)updateCoreAnalyticsInfo
{
  [(CommonProduct *)self dieTempMaxAverage];
  [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager isContextTriggered:"isContextTriggered:", 0];
  [(CommonProduct *)self thermalPressureLevel];
  [-[CommonProduct findComponent:](self findComponent:{13), "releaseMaxLI"}];
  AnalyticsSendEventLazy();
}

@end