@interface tm828a342ad9cfe9c0b3cf1b7aa4d65404
- (id)initProduct:(id)product;
- (int)computeMaxCGTemp;
- (void)updateAllThermalLoad:(BOOL)load;
- (void)updateCoreAnalyticsInfo;
@end

@implementation tm828a342ad9cfe9c0b3cf1b7aa4d65404

- (id)initProduct:(id)product
{
  v6.receiver = self;
  v6.super_class = tm828a342ad9cfe9c0b3cf1b7aa4d65404;
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
  gasGaugeBatteryTemperature = [(tm828a342ad9cfe9c0b3cf1b7aa4d65404 *)self gasGaugeBatteryTemperature];
  v6 = HIDWORD(qword_1000AB824);
  v7 = qword_1000AB82C;
  v8 = HIDWORD(qword_1000AB82C);
  v9 = [+[SensorDispatcherHelper sharedInstance](SensorDispatcherHelper getTemperatureFromSMCForKey:"getTemperatureFromSMCForKey:", @"TV0s"];
  if (v9 <= -2501)
  {
    v10 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_1000524CC(v10);
    }

    v9 = 4294967196;
  }

  if (loadCopy)
  {
    [(tm828a342ad9cfe9c0b3cf1b7aa4d65404 *)self resetVTFilterState];
  }

  v11 = [-[CommonProduct findComponent:](self findComponent:{0), "currentLoadingIndex"}];
  v12 = (v11 * v11) / 100.0;
  filteredBacklightCurrentLI2 = self->_filteredBacklightCurrentLI2;
  if (filteredBacklightCurrentLI2 >= 0)
  {
    v12 = filteredBacklightCurrentLI2 + ((v12 - filteredBacklightCurrentLI2) * 0.33333);
  }

  self->_filteredBacklightCurrentLI2 = v12;
  v14 = [(CommonProduct *)self findComponent:18];
  v15 = [(CommonProduct *)self dieTempMaxAverage]/ 100.0;
  v16 = [(CommonProduct *)self dieTempFilteredMaxAverage]/ 100.0;
  *&v17 = v16;
  *&v16 = v15;
  [v14 calculateControlEffort:v16 trigger:v17];
  sub_10000533C(46, (v7 * 0.55 + -33.0 + v8 * 0.11));
  sub_10000533C(44, (v7 * 0.57 + -30.0 + v8 * 0.09));
  sub_10000533C(50, (v6 * 0.11 + -54.0 + v8 * 0.24));
  sub_10000533C(51, (gasGaugeBatteryTemperature * 1.27 + -108.08 + v7 * -0.23));
  sub_10000533C(48, (gasGaugeBatteryTemperature * -0.79 + 199.0 + v7 * 0.6));
  sub_10000533C(47, (v7 * 0.26 + -87.0 + v8 * 0.51));
  sub_10000533C(49, (v6 * -0.02 + 61.0 + self->_filteredBacklightCurrentLI2 * 7.56));
  sub_10000533C(45, v9);
  v18 = dword_1000AB8DC;
  v19 = [(CommonProduct *)self findComponent:19];
  v20 = v18 / 100.0;
  *&v21 = v20;
  [v19 calculateControlEffort:v21];
  v22 = [(CommonProduct *)self findComponent:20];
  *&v23 = v20;
  [v22 calculateControlEffort:v23];
  v24 = unk_1000AB8E8;
  v25 = [(CommonProduct *)self findComponent:21];
  *&v26 = v24 / 100.0;
  [v25 calculateControlEffort:v26];
  v27 = SHIDWORD(qword_1000AB8E0);
  v28 = [(CommonProduct *)self findComponent:22];
  *&v29 = v27 / 100.0;
  [v28 calculateControlEffort:v29];
  v30 = SHIDWORD(qword_1000AB8EC);
  v31 = [(CommonProduct *)self findComponent:23];
  *&v32 = v30 / 100.0;
  [v31 calculateControlEffort:v32];
  v33 = qword_1000AB8E0;
  v34 = [(CommonProduct *)self findComponent:24];
  v35 = v33 / 100.0;
  *&v36 = v35;
  [v34 calculateControlEffort:v36];
  v37 = [(CommonProduct *)self findComponent:25];
  *&v38 = v35;
  [v37 calculateControlEffort:v38];
  if ([(CommonProduct *)self getChargerState])
  {
    v39 = dword_1000AB8D8;
    v40 = [(CommonProduct *)self findComponent:26];
    *&v41 = v39 / 100.0;
  }

  else
  {
    v40 = [(CommonProduct *)self findComponent:26];
    LODWORD(v41) = 30.0;
  }

  [v40 calculateControlEffort:v41];
}

- (int)computeMaxCGTemp
{
  if (qword_1000AB8EC <= SHIDWORD(qword_1000AB8E4))
  {
    return HIDWORD(qword_1000AB8E4);
  }

  else
  {
    return qword_1000AB8EC;
  }
}

- (void)updateCoreAnalyticsInfo
{
  [(tm828a342ad9cfe9c0b3cf1b7aa4d65404 *)self gasGaugeBatteryTemperature];
  [(CommonProduct *)self dieTempMaxAverage];
  [(CommonProduct *)self dieTempMaxMax];
  [(CommonProduct *)self getChargerState];
  [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager isContextTriggered:"isContextTriggered:", 0];
  [(CommonProduct *)self thermalPressureLevel];
  AnalyticsSendEventLazy();
}

@end