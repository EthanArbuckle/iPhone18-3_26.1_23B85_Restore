@interface tm62a6a44d269463582cca62859fbfb389
- (id)initProduct:(id)product;
- (int)computeMaxCGTemp;
- (void)updateAllThermalLoad:(BOOL)load;
- (void)updateCoreAnalyticsInfo;
@end

@implementation tm62a6a44d269463582cca62859fbfb389

- (id)initProduct:(id)product
{
  v6.receiver = self;
  v6.super_class = tm62a6a44d269463582cca62859fbfb389;
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
  gasGaugeBatteryTemperature = [(tm62a6a44d269463582cca62859fbfb389 *)self gasGaugeBatteryTemperature];
  v7 = qword_1000AB834;
  v6 = HIDWORD(qword_1000AB834);
  v9 = dword_1000AB83C;
  v8 = dword_1000AB840;
  v11 = dword_1000AB844;
  v10 = dword_1000AB848;
  if (loadCopy)
  {
    [(tm62a6a44d269463582cca62859fbfb389 *)self resetVTFilterState];
  }

  v12 = [(CommonProduct *)self findComponent:18];
  v13 = [(CommonProduct *)self dieTempMaxAverage]/ 100.0;
  v14 = [(CommonProduct *)self dieTempFilteredMaxAverage]/ 100.0;
  *&v15 = v14;
  *&v14 = v13;
  [v12 calculateControlEffort:v14 trigger:v15];
  v16 = gasGaugeBatteryTemperature;
  v33 = v7;
  v17 = v6;
  sub_10000533C(47, (gasGaugeBatteryTemperature * 0.56 + -109.0 + v7 * 0.53 + v6 * -0.07));
  v18 = qword_1000AB8E0;
  v19 = [(CommonProduct *)self findComponent:19];
  v20 = v18 / 100.0;
  *&v21 = v20;
  [v19 calculateControlEffort:v21];
  v22 = [(CommonProduct *)self findComponent:20];
  *&v23 = v20;
  [v22 calculateControlEffort:v23];
  v24 = [-[CommonProduct findComponent:](self findComponent:{0), "currentLoadingIndex"}];
  v25 = (v24 * v24) / 100.0;
  filteredBacklightCurrentLI2 = self->_filteredBacklightCurrentLI2;
  if (filteredBacklightCurrentLI2 >= 0.0)
  {
    v25 = filteredBacklightCurrentLI2 + ((v25 - filteredBacklightCurrentLI2) * 0.14286);
  }

  self->_filteredBacklightCurrentLI2 = v25;
  sub_10000533C(49, (v17 * -0.69 + -39.0 + v11 * -0.33 + v10 * 2.0 + v25 * 7.2));
  sub_10000533C(48, (v17 * -0.38 + -148.0 + v9 * 0.73 + v8 * -0.42 + v10 * 1.09));
  sub_10000533C(51, (v9 * 1.25 + 30.0 + v8 * -0.28));
  v27 = unk_1000AB8E8;
  v28 = [(CommonProduct *)self findComponent:21];
  *&v29 = v27 / 100.0;
  [v28 calculateControlEffort:v29];
  sub_10000533C(52, (v16 * 1.44 + 91.0 + v33 * -0.16 + v17 * -0.25));
  sub_10000533C(53, (v16 * 1.08 + -152.0 + v17 * -0.28 + v9 * 0.24));
  sub_10000533C(54, (v16 * 1.28 + -183.0 + v33 * -0.31 + v17 * -0.38 + v9 * 0.48));
  sub_10000533C(50, (v16 * 0.52 + -33.0 + v10 * 0.48));
  v30 = qword_1000AB8EC;
  v31 = [(CommonProduct *)self findComponent:22];

  *&v32 = v30 / 100.0;
  [v31 calculateControlEffort:v32];
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
  [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager isContextTriggered:"isContextTriggered:", 0];
  [(CommonProduct *)self dieTempMaxAverage];
  [(CommonProduct *)self getChargerState];
  [-[CommonProduct findComponent:](self findComponent:{13), "releaseMaxLI"}];
  AnalyticsSendEventLazy();
}

@end