@interface tm02cd0d89343c2a73d6860abb70b388bd
- (id)initProduct:(id)product;
- (void)updateAllThermalLoad:(BOOL)load;
- (void)updateCoreAnalyticsInfo;
@end

@implementation tm02cd0d89343c2a73d6860abb70b388bd

- (id)initProduct:(id)product
{
  v6.receiver = self;
  v6.super_class = tm02cd0d89343c2a73d6860abb70b388bd;
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
  gasGaugeBatteryTemperature = [(tm02cd0d89343c2a73d6860abb70b388bd *)self gasGaugeBatteryTemperature];
  v6 = HIDWORD(qword_1000AB824);
  v73 = qword_1000AB82C;
  v8 = HIDWORD(qword_1000AB82C);
  v7 = qword_1000AB834;
  v9 = HIDWORD(qword_1000AB834);
  arcModuleTemperature = [(tm02cd0d89343c2a73d6860abb70b388bd *)self arcModuleTemperature];
  if (loadCopy)
  {
    [(tm02cd0d89343c2a73d6860abb70b388bd *)self resetVTFilterState];
  }

  v11 = [-[CommonProduct findComponent:](self findComponent:{0), "currentLoadingIndex"}];
  v12 = (v11 * v11) / 100.0;
  filteredBacklightCurrentLI2 = self->_filteredBacklightCurrentLI2;
  if (filteredBacklightCurrentLI2 >= 0)
  {
    v12 = filteredBacklightCurrentLI2 + ((v12 - filteredBacklightCurrentLI2) * 0.076923);
  }

  self->_filteredBacklightCurrentLI2 = v12;
  filteredArcModuleTemperature = self->_filteredArcModuleTemperature;
  if ((filteredArcModuleTemperature & 0x80000000) == 0)
  {
    arcModuleTemperature = (filteredArcModuleTemperature + ((arcModuleTemperature - filteredArcModuleTemperature) * 0.14286));
  }

  self->_filteredArcModuleTemperature = arcModuleTemperature;
  v15 = [(CommonProduct *)self findComponent:18];
  v16 = [(CommonProduct *)self dieTempMaxAverage]/ 100.0;
  v17 = [(CommonProduct *)self dieTempFilteredMaxAverage]/ 100.0;
  *&v18 = v17;
  *&v17 = v16;
  [v15 calculateControlEffort:v17 trigger:v18];
  sub_10000533C(53, (gasGaugeBatteryTemperature * 0.5 + 146.1 + v9 * 0.42));
  sub_10000533C(52, (gasGaugeBatteryTemperature * 0.46 + 152.1 + v8 * 0.51));
  sub_10000533C(60, (self->_filteredBacklightCurrentLI2 * -0.76 + 37.1 + v6 * 0.96));
  sub_10000533C(57, (self->_filteredBacklightCurrentLI2 * 9.57 + 635.0 + v6 * 0.74));
  sub_10000533C(54, (gasGaugeBatteryTemperature * 0.85 + -233.1 + v8 * 0.05 + v7 * 0.15));
  sub_10000533C(55, (gasGaugeBatteryTemperature * 0.71 + 177.4 + v8 * 0.1 + v7 * 0.15));
  sub_10000533C(56, (gasGaugeBatteryTemperature * 0.64 + 45.16 + v8 * 0.32));
  sub_10000533C(58, (v6 * 1.11 + -192.0 + v73 * -0.09 + self->_filteredArcModuleTemperature * 0.019));
  sub_10000533C(59, gasGaugeBatteryTemperature);
  v19 = qword_1000AB8F4;
  v20 = [(CommonProduct *)self findComponent:19];
  v21 = v19 / 100.0;
  *&v22 = v21;
  [v20 calculateControlEffort:v22];
  v23 = [(CommonProduct *)self findComponent:20];
  *&v24 = v21;
  [v23 calculateControlEffort:v24];
  v25 = SHIDWORD(qword_1000AB8F4);
  v26 = [(CommonProduct *)self findComponent:21];
  v27 = v25 / 100.0;
  *&v28 = v27;
  [v26 calculateControlEffort:v28];
  v29 = [(CommonProduct *)self findComponent:22];
  *&v30 = v27;
  [v29 calculateControlEffort:v30];
  v31 = dword_1000AB900;
  v32 = [(CommonProduct *)self findComponent:23];
  v33 = v31 / 100.0;
  *&v34 = v33;
  [v32 calculateControlEffort:v34];
  v35 = [(CommonProduct *)self findComponent:32];
  *&v36 = v33;
  [v35 calculateControlEffort:v36];
  v37 = dword_1000AB8FC;
  v38 = [(CommonProduct *)self findComponent:27];
  v39 = v37 / 100.0;
  *&v40 = v39;
  [v38 calculateControlEffort:v40];
  v41 = [(CommonProduct *)self findComponent:33];
  *&v42 = v39;
  [v41 calculateControlEffort:v42];
  v43 = unk_1000AB904;
  v44 = [(CommonProduct *)self findComponent:24];
  *&v45 = v43 / 100.0;
  [v44 calculateControlEffort:v45];
  v46 = SDWORD1(xmmword_1000AB908);
  v47 = [(CommonProduct *)self findComponent:25];
  *&v48 = v46 / 100.0;
  [v47 calculateControlEffort:v48];
  v49 = xmmword_1000AB908;
  v50 = [(CommonProduct *)self findComponent:26];
  *&v51 = v49 / 100.0;
  [v50 calculateControlEffort:v51];
  getChargerState = [(CommonProduct *)self getChargerState];
  if (getChargerState - 10 > 0x3C)
  {
    goto LABEL_12;
  }

  if (((1 << (getChargerState - 10)) & 0x1004010000100000) == 0)
  {
    if (getChargerState == 10)
    {
      v63 = dword_1000AB900;
      v64 = [(CommonProduct *)self findComponent:28];
      *&v65 = v63 / 100.0;
      [v64 calculateControlEffort:v65];
      v66 = dword_1000AB8FC;
      v67 = [(CommonProduct *)self findComponent:29];
      *&v68 = v66 / 100.0;
LABEL_14:
      [v67 calculateControlEffort:v68];
      v71 = [(CommonProduct *)self findComponent:30];
      LODWORD(v72) = 30.0;
      [v71 calculateControlEffort:v72];
      v61 = [(CommonProduct *)self findComponent:31];
      LODWORD(v62) = 30.0;
      goto LABEL_15;
    }

LABEL_12:
    if (getChargerState)
    {
      return;
    }

    v69 = [(CommonProduct *)self findComponent:28];
    LODWORD(v70) = 30.0;
    [v69 calculateControlEffort:v70];
    v67 = [(CommonProduct *)self findComponent:29];
    LODWORD(v68) = 30.0;
    goto LABEL_14;
  }

  v53 = [(CommonProduct *)self findComponent:28];
  LODWORD(v54) = 30.0;
  [v53 calculateControlEffort:v54];
  v55 = [(CommonProduct *)self findComponent:29];
  LODWORD(v56) = 30.0;
  [v55 calculateControlEffort:v56];
  v57 = dword_1000AB900;
  v58 = [(CommonProduct *)self findComponent:30];
  *&v59 = v57 / 100.0;
  [v58 calculateControlEffort:v59];
  v60 = dword_1000AB8FC;
  v61 = [(CommonProduct *)self findComponent:31];
  *&v62 = v60 / 100.0;
LABEL_15:

  [v61 calculateControlEffort:v62];
}

- (void)updateCoreAnalyticsInfo
{
  [(tm02cd0d89343c2a73d6860abb70b388bd *)self gasGaugeBatteryTemperature];
  [(CommonProduct *)self dieTempMaxAverage];
  [(CommonProduct *)self dieTempMaxMax];
  [(CommonProduct *)self getChargerState];
  [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager isContextTriggered:"isContextTriggered:", 0];
  [(CommonProduct *)self thermalPressureLevel];
  AnalyticsSendEventLazy();
}

@end