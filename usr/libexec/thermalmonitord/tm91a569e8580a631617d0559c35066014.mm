@interface tm91a569e8580a631617d0559c35066014
- (id)initProduct:(id)product;
- (int)computeMaxCGTemp;
- (void)updateAllThermalLoad:(BOOL)load;
- (void)updateCoreAnalyticsInfo;
@end

@implementation tm91a569e8580a631617d0559c35066014

- (id)initProduct:(id)product
{
  v6.receiver = self;
  v6.super_class = tm91a569e8580a631617d0559c35066014;
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
  if (load)
  {
    [(tm91a569e8580a631617d0559c35066014 *)self resetVTFilterState];
  }

  v4 = qword_1000AB824;
  v5 = HIDWORD(qword_1000AB82C);
  v6 = HIDWORD(qword_1000AB834);
  v7 = dword_1000AB83C;
  v8 = dword_1000AB840;
  v9 = dword_1000AB844;
  v10 = dword_1000AB848;
  v11 = [(CommonProduct *)self findComponent:18];
  v12 = [(CommonProduct *)self dieTempMaxAverage]/ 100.0;
  v13 = [(CommonProduct *)self dieTempFilteredMaxAverage]/ 100.0;
  *&v14 = v13;
  *&v13 = v12;
  [v11 calculateControlEffort:v13 trigger:v14];
  v15 = v4;
  sub_10000533C(55, (v4 * 0.71 + 110.45 + v9 * 0.35));
  v16 = dword_1000AB900;
  v17 = [(CommonProduct *)self findComponent:19];
  v18 = v16 / 100.0;
  *&v19 = v18;
  [v17 calculateControlEffort:v19];
  v20 = [(CommonProduct *)self findComponent:20];
  *&v21 = v18;
  [v20 calculateControlEffort:v21];
  v22 = [-[CommonProduct findComponent:](self findComponent:{0), "currentLoadingIndex"}];
  v23 = (v22 * v22) / 100.0;
  filteredBacklightCurrentLI2 = self->_filteredBacklightCurrentLI2;
  if (filteredBacklightCurrentLI2 >= 0.0)
  {
    v23 = filteredBacklightCurrentLI2 + ((v23 - filteredBacklightCurrentLI2) * 0.125);
  }

  self->_filteredBacklightCurrentLI2 = v23;
  sub_10000533C(57, (v10 * 0.91 + 396.03 + v23 * 7.41));
  sub_10000533C(56, (v15 * 0.6 + -161.14 + v7 * 0.35 + v9 * 0.1));
  sub_10000533C(59, (v15 * 0.63 + 168.86 + v10 * 0.3));
  v25 = xmmword_1000AB908;
  v26 = [(CommonProduct *)self findComponent:21];
  *&v27 = v25 / 100.0;
  [v26 calculateControlEffort:v27];
  sub_10000533C(60, (v6 * 0.74 + 26.19 + v7 * 0.25));
  sub_10000533C(58, (v5 * 0.8 + 35.11 + v8 * 0.2));
  v28 = SDWORD1(xmmword_1000AB908);
  v29 = [(CommonProduct *)self findComponent:22];

  *&v30 = v28 / 100.0;
  [v29 calculateControlEffort:v30];
}

- (int)computeMaxCGTemp
{
  if (qword_1000AB904 <= SHIDWORD(qword_1000AB904))
  {
    return HIDWORD(qword_1000AB904);
  }

  else
  {
    return qword_1000AB904;
  }
}

- (void)updateCoreAnalyticsInfo
{
  [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager isContextTriggered:"isContextTriggered:", 0];
  [(CommonProduct *)self dieTempMaxAverage];
  [(CommonProduct *)self getChargerState];
  [(CommonProduct *)self dieTempMaxMax];
  [(CommonProduct *)self thermalPressureLevel];
  AnalyticsSendEventLazy();
}

@end