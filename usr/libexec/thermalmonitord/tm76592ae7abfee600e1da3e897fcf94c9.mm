@interface tm76592ae7abfee600e1da3e897fcf94c9
- (id)initProduct:(id)a3;
- (int)computeMaxCGTemp;
- (void)updateAllThermalLoad:(BOOL)a3;
- (void)updateCoreAnalyticsInfo;
@end

@implementation tm76592ae7abfee600e1da3e897fcf94c9

- (id)initProduct:(id)a3
{
  v6.receiver = self;
  v6.super_class = tm76592ae7abfee600e1da3e897fcf94c9;
  v3 = [(CommonProduct *)&v6 initProduct:a3];
  v4 = v3;
  if (v3)
  {
    [v3 resetVTFilterState];
  }

  return v4;
}

- (void)updateAllThermalLoad:(BOOL)a3
{
  v3 = a3;
  v6 = qword_1000AB82C;
  v5 = HIDWORD(qword_1000AB82C);
  v7 = HIDWORD(qword_1000AB834);
  v40 = dword_1000AB83C;
  v41 = qword_1000AB834;
  v8 = dword_1000AB8DC;
  v9 = qword_1000AB8E0;
  v10 = [+[SensorDispatcherHelper sharedInstance](SensorDispatcherHelper getTemperatureFromSMCForKey:"getTemperatureFromSMCForKey:", @"TV0s"];
  if (v10 <= -2501)
  {
    v11 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_1000524CC(v11);
    }

    v10 = 4294967196;
  }

  if (v3)
  {
    [(tm76592ae7abfee600e1da3e897fcf94c9 *)self resetVTFilterState];
  }

  v12 = [-[CommonProduct findComponent:](self findComponent:{0), "currentLoadingIndex"}];
  v13 = (v12 * v12) / 100.0;
  filteredBacklightCurrentLI2 = self->_filteredBacklightCurrentLI2;
  if (filteredBacklightCurrentLI2 >= 0)
  {
    v13 = filteredBacklightCurrentLI2 + ((v13 - filteredBacklightCurrentLI2) * 0.076923);
  }

  self->_filteredBacklightCurrentLI2 = v13;
  v15 = [(CommonProduct *)self findComponent:18];
  v16 = [(CommonProduct *)self dieTempMaxAverage]/ 100.0;
  v17 = [(CommonProduct *)self dieTempFilteredMaxAverage]/ 100.0;
  *&v18 = v17;
  *&v17 = v16;
  [v15 calculateControlEffort:v17 trigger:v18];
  sub_10000533C(54, (v6 * 0.48 + 110.0 + v5 * 0.45));
  sub_10000533C(53, (v6 * 0.36 + 157.0 + v5 * 0.57));
  sub_10000533C(59, (v6 * 0.65 + 78.0 + v7 * -0.13 + v9 * 0.44 + self->_filteredBacklightCurrentLI2 * -1.99));
  sub_10000533C(55, (v6 * 0.67 + 262.0 + v5 * 0.23));
  sub_10000533C(56, (v6 * 0.867 + -108.0 + v8 * 0.0532 + v9 * 0.0811));
  sub_10000533C(58, (v6 * 0.6 + 107.0 + v7 * -0.26 + v9 * 0.63 + self->_filteredBacklightCurrentLI2 * 4.67));
  sub_10000533C(57, (v5 * 1.29 + -99.0 + v7 * -0.65 + v40 * -0.14 + v8 * 0.49));
  sub_10000533C(60, (v6 * 1.23 + -12.7 - v41 + v40 * 0.372 + v9 * 0.374));
  sub_10000533C(61, v10);
  v19 = dword_1000AB8FC;
  v20 = [(CommonProduct *)self findComponent:19];
  v21 = v19 / 100.0;
  *&v22 = v21;
  [v20 calculateControlEffort:v22];
  v23 = [(CommonProduct *)self findComponent:20];
  *&v24 = v21;
  [v23 calculateControlEffort:v24];
  v25 = SDWORD1(xmmword_1000AB908);
  v26 = [(CommonProduct *)self findComponent:21];
  *&v27 = v25 / 100.0;
  [v26 calculateControlEffort:v27];
  v28 = xmmword_1000AB908;
  v29 = [(CommonProduct *)self findComponent:22];
  *&v30 = v28 / 100.0;
  [v29 calculateControlEffort:v30];
  v31 = SHIDWORD(xmmword_1000AB908);
  v32 = [(CommonProduct *)self findComponent:23];
  *&v33 = v31 / 100.0;
  [v32 calculateControlEffort:v33];
  v34 = dword_1000AB900;
  v35 = [(CommonProduct *)self findComponent:24];
  v36 = v34 / 100.0;
  *&v37 = v36;
  [v35 calculateControlEffort:v37];
  v38 = [(CommonProduct *)self findComponent:25];
  *&v39 = v36;
  [v38 calculateControlEffort:v39];
}

- (int)computeMaxCGTemp
{
  if (SHIDWORD(qword_1000AB90C) <= qword_1000AB90C)
  {
    return qword_1000AB90C;
  }

  else
  {
    return HIDWORD(qword_1000AB90C);
  }
}

- (void)updateCoreAnalyticsInfo
{
  [(tm76592ae7abfee600e1da3e897fcf94c9 *)self gasGaugeBatteryTemperature];
  [(CommonProduct *)self dieTempMaxAverage];
  [(CommonProduct *)self dieTempMaxMax];
  [(CommonProduct *)self getChargerState];
  [qword_1000ABCB0 getCurrentPackagePower];
  [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager isContextTriggered:"isContextTriggered:", 0];
  [(CommonProduct *)self thermalPressureLevel];
  if (![+[_CDClientContext userContext](_CDClientContext "userContext")])
  {
    [NSNumber numberWithInt:0xFFFFFFFFLL];
  }

  AnalyticsSendEventLazy();
}

@end