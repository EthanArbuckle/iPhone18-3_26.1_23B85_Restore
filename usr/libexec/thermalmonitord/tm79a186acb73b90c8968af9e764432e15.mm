@interface tm79a186acb73b90c8968af9e764432e15
- (id)initProduct:(id)product;
- (int)computeMaxCGTemp;
- (void)updateAllThermalLoad:(BOOL)load;
- (void)updateCoreAnalyticsInfo;
@end

@implementation tm79a186acb73b90c8968af9e764432e15

- (id)initProduct:(id)product
{
  v6.receiver = self;
  v6.super_class = tm79a186acb73b90c8968af9e764432e15;
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
  loadCopy = load;
  gasGaugeBatteryTemperature = [(tm79a186acb73b90c8968af9e764432e15 *)self gasGaugeBatteryTemperature];
  v6 = HIDWORD(qword_1000AB72C);
  v8 = dword_1000AB738;
  v7 = qword_1000AB73C;
  v9 = xmmword_1000AB744;
  if (loadCopy)
  {
    [(tm79a186acb73b90c8968af9e764432e15 *)self resetVTFilterState];
  }

  v10 = [(CommonProduct *)self findComponent:18];
  v11 = [(CommonProduct *)self dieTempMaxAverage]/ 100.0;
  v12 = [(CommonProduct *)self dieTempFilteredMaxAverage]/ 100.0;
  *&v13 = v12;
  *&v12 = v11;
  [v10 calculateControlEffort:v12 trigger:v13];
  v14 = gasGaugeBatteryTemperature;
  sub_10000533C(47, (gasGaugeBatteryTemperature * 0.7 + -70.0 + v6 * 0.24 + v8 * 0.09));
  v15 = qword_1000AB8E0;
  v16 = [(CommonProduct *)self findComponent:19];
  v17 = v15 / 100.0;
  *&v18 = v17;
  [v16 calculateControlEffort:v18];
  v19 = [(CommonProduct *)self findComponent:20];
  *&v20 = v17;
  [v19 calculateControlEffort:v20];
  v21 = [-[CommonProduct findComponent:](self findComponent:{0), "currentLoadingIndex"}];
  filteredBacklightCurrentLI2 = self->_filteredBacklightCurrentLI2;
  v23 = (v21 * v21) / 100.0;
  if (filteredBacklightCurrentLI2 >= 0.0)
  {
    v23 = filteredBacklightCurrentLI2 + ((v23 - filteredBacklightCurrentLI2) * 0.14286);
  }

  self->_filteredBacklightCurrentLI2 = v23;
  sub_10000533C(49, (v14 * 1.64 + 210.0 + v6 * -0.42 + v9 * -0.27));
  sub_10000533C(48, (v14 * 1.34 + 83.0 + v7 * -0.22 + v9 * -0.18));
  sub_10000533C(50, (v14 + 60.0));
  v24 = qword_1000AB8EC;
  v25 = [(CommonProduct *)self findComponent:21];

  *&v26 = v24 / 100.0;
  [v25 calculateControlEffort:v26];
}

- (int)computeMaxCGTemp
{
  if (qword_1000AB8E4 <= SHIDWORD(qword_1000AB8E4))
  {
    return HIDWORD(qword_1000AB8E4);
  }

  else
  {
    return qword_1000AB8E4;
  }
}

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