@interface tmb16d8e8edc0f89afd1f7fe25529ab7fa
- (id)initProduct:(id)product;
- (int)computeMaxCGTemp;
- (void)updateAllThermalLoad:(BOOL)load;
- (void)updateCoreAnalyticsInfo;
@end

@implementation tmb16d8e8edc0f89afd1f7fe25529ab7fa

- (id)initProduct:(id)product
{
  v6.receiver = self;
  v6.super_class = tmb16d8e8edc0f89afd1f7fe25529ab7fa;
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
  gasGaugeBatteryTemperature = [(tmb16d8e8edc0f89afd1f7fe25529ab7fa *)self gasGaugeBatteryTemperature];
  v6 = HIDWORD(qword_1000AB824);
  v5 = qword_1000AB82C;
  v7 = HIDWORD(qword_1000AB82C);
  v8 = dword_1000AB8D4;
  v9 = HIDWORD(qword_1000AB8E0);
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

  if (loadCopy)
  {
    [(tmb16d8e8edc0f89afd1f7fe25529ab7fa *)self resetVTFilterState];
  }

  v12 = v9 & ~(v9 >> 31);
  filteredTempRearCameraDie = self->_filteredTempRearCameraDie;
  if ((filteredTempRearCameraDie & 0x80000000) == 0)
  {
    v12 = (filteredTempRearCameraDie + ((v12 - filteredTempRearCameraDie) * 0.25));
  }

  self->_filteredTempRearCameraDie = v12;
  v14 = [-[CommonProduct findComponent:](self findComponent:{0), "currentLoadingIndex"}];
  v15 = (v14 * v14) / 100.0;
  filteredBacklightCurrentLI2 = self->_filteredBacklightCurrentLI2;
  if (filteredBacklightCurrentLI2 >= 0)
  {
    v15 = filteredBacklightCurrentLI2 + ((v15 - filteredBacklightCurrentLI2) * 0.33333);
  }

  self->_filteredBacklightCurrentLI2 = v15;
  v17 = [(CommonProduct *)self findComponent:18];
  v18 = [(CommonProduct *)self dieTempMaxAverage]/ 100.0;
  v19 = [(CommonProduct *)self dieTempFilteredMaxAverage]/ 100.0;
  *&v20 = v19;
  *&v19 = v18;
  [v17 calculateControlEffort:v19 trigger:v20];
  sub_10000533C(51, (v5 * 0.55 + -33.0 + v7 * 0.11 + v8 * 0.33));
  sub_10000533C(49, (v5 * 0.57 + -30.0 + v7 * 0.09 + v8 * 0.33));
  sub_10000533C(55, (v6 * 0.11 + -54.0 + v7 * 0.24 + v8 * 0.63));
  sub_10000533C(56, (gasGaugeBatteryTemperature * 1.27 + -108.08 + v5 * -0.23));
  sub_10000533C(53, (gasGaugeBatteryTemperature * -0.79 + 199.0 + v5 * 0.6 + v8 * 1.14 + self->_filteredTempRearCameraDie * 0.06));
  sub_10000533C(52, (v5 * 0.26 + -87.0 + v7 * 0.51 + v8 * 0.23));
  sub_10000533C(54, (v6 * -0.02 + 61.0 + v8 * 1.03 + self->_filteredBacklightCurrentLI2 * 7.56));
  sub_10000533C(50, v10);
  v21 = SHIDWORD(qword_1000AB8EC);
  v22 = [(CommonProduct *)self findComponent:19];
  v23 = v21 / 100.0;
  *&v24 = v23;
  [v22 calculateControlEffort:v24];
  v25 = [(CommonProduct *)self findComponent:20];
  *&v26 = v23;
  [v25 calculateControlEffort:v26];
  v27 = dword_1000AB8FC;
  v28 = [(CommonProduct *)self findComponent:21];
  *&v29 = v27 / 100.0;
  [v28 calculateControlEffort:v29];
  v30 = SHIDWORD(qword_1000AB8F4);
  v31 = [(CommonProduct *)self findComponent:22];
  *&v32 = v30 / 100.0;
  [v31 calculateControlEffort:v32];
  v33 = qword_1000AB904;
  v34 = [(CommonProduct *)self findComponent:23];
  *&v35 = v33 / 100.0;
  [v34 calculateControlEffort:v35];
  v36 = qword_1000AB8F4;
  v37 = [(CommonProduct *)self findComponent:24];
  v38 = v36 / 100.0;
  *&v39 = v38;
  [v37 calculateControlEffort:v39];
  v40 = [(CommonProduct *)self findComponent:25];
  *&v41 = v38;
  [v40 calculateControlEffort:v41];
  if ([(CommonProduct *)self getChargerState])
  {
    v42 = qword_1000AB8EC;
    v43 = [(CommonProduct *)self findComponent:26];
    *&v44 = v42 / 100.0;
  }

  else
  {
    v43 = [(CommonProduct *)self findComponent:26];
    LODWORD(v44) = 30.0;
  }

  [v43 calculateControlEffort:v44];
}

- (int)computeMaxCGTemp
{
  if (dword_1000AB900 <= dword_1000AB8FC)
  {
    return dword_1000AB8FC;
  }

  else
  {
    return dword_1000AB900;
  }
}

- (void)updateCoreAnalyticsInfo
{
  [(tmb16d8e8edc0f89afd1f7fe25529ab7fa *)self gasGaugeBatteryTemperature];
  [(CommonProduct *)self dieTempMaxAverage];
  [(CommonProduct *)self dieTempMaxMax];
  [(CommonProduct *)self getChargerState];
  [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager isContextTriggered:"isContextTriggered:", 0];
  [(CommonProduct *)self thermalPressureLevel];
  AnalyticsSendEventLazy();
}

@end