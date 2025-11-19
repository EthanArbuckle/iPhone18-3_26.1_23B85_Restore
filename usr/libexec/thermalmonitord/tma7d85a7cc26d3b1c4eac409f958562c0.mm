@interface tma7d85a7cc26d3b1c4eac409f958562c0
- (id)initProduct:(id)a3;
- (int)compute2DGridTemps;
- (void)resetVTFilterState;
- (void)updateAllThermalLoad:(BOOL)a3;
- (void)updateCoreAnalyticsInfo;
@end

@implementation tma7d85a7cc26d3b1c4eac409f958562c0

- (id)initProduct:(id)a3
{
  v6.receiver = self;
  v6.super_class = tma7d85a7cc26d3b1c4eac409f958562c0;
  v3 = [(CommonProduct *)&v6 initProduct:a3];
  v4 = v3;
  if (v3)
  {
    [v3 resetVTFilterState];
  }

  return v4;
}

- (void)resetVTFilterState
{
  self->_filteredBacklightCurrentLI2 = 1;
  self->_filteredMaxRadioTemp = -1;
  self->_filteredMaxCameraTemp = -1;
}

- (void)updateAllThermalLoad:(BOOL)a3
{
  v3 = a3;
  v5 = [(tma7d85a7cc26d3b1c4eac409f958562c0 *)self gasGaugeBatteryTemperature];
  v6 = qword_1000AB72C;
  LODWORD(v63) = HIDWORD(qword_1000AB72C);
  v8 = dword_1000AB734;
  v7 = dword_1000AB738;
  v9 = dword_1000AB7B8;
  v66 = qword_1000AB73C;
  v67 = dword_1000AB7BC;
  if (v3)
  {
    [(tma7d85a7cc26d3b1c4eac409f958562c0 *)self resetVTFilterState];
  }

  v10 = [-[CommonProduct findComponent:](self findComponent:{0, v63), "currentLoadingIndex"}];
  v11 = (v10 * v10) / 100.0;
  filteredBacklightCurrentLI2 = self->_filteredBacklightCurrentLI2;
  if (filteredBacklightCurrentLI2 >= 0)
  {
    v11 = filteredBacklightCurrentLI2 + ((v11 - filteredBacklightCurrentLI2) * 0.14286);
  }

  self->_filteredBacklightCurrentLI2 = v11;
  v13 = qword_1000AB8E0;
  if (qword_1000AB8E0 <= SHIDWORD(qword_1000AB8E0))
  {
    v13 = HIDWORD(qword_1000AB8E0);
  }

  v14 = v13 & ~(v13 >> 31);
  filteredMaxRadioTemp = self->_filteredMaxRadioTemp;
  if ((filteredMaxRadioTemp & 0x80000000) == 0)
  {
    v14 = (filteredMaxRadioTemp + ((v14 - filteredMaxRadioTemp) * 0.25));
  }

  self->_filteredMaxRadioTemp = v14;
  v16 = dword_1000AB8D0;
  if (dword_1000AB8D0 <= dword_1000AB8D8)
  {
    v16 = dword_1000AB8D8;
  }

  v17 = v16 & ~(v16 >> 31);
  filteredMaxCameraTemp = self->_filteredMaxCameraTemp;
  if ((filteredMaxCameraTemp & 0x80000000) == 0)
  {
    v17 = (filteredMaxCameraTemp + ((v17 - filteredMaxCameraTemp) * 0.25));
  }

  self->_filteredMaxCameraTemp = v17;
  v19 = [(CommonProduct *)self findComponent:18];
  v20 = [(CommonProduct *)self dieTempMaxAverage]/ 100.0;
  v21 = [(CommonProduct *)self dieTempFilteredMaxAverage]/ 100.0;
  *&v22 = v21;
  *&v21 = v20;
  [v19 calculateControlEffort:v21 trigger:v22];
  sub_10000533C(51, (v6 * 0.24 + -80.0 + v8 * 0.18 + v7 * 0.14 + v9 * 0.45));
  v23 = v64;
  v65 = v5 * 0.47 + -70.0 + v6 * -0.38 + v64 * 0.14 + v8 * 0.79;
  sub_10000533C(49, (v65 + self->_filteredMaxRadioTemp * -0.05));
  sub_10000533C(50, (v5 * 0.91 + 71.0 + v6 * -0.21 + v23 * 0.09 + v8 * 0.23));
  sub_10000533C(57, (v5 * 1.07 + 55.0 + v23 * -0.16 + v8 * 0.16 + v7 * 0.34 + v66 * -0.42));
  sub_10000533C(56, (v5 * 1.13 + 94.0 + v8 * 0.29 + v7 * 0.24 + v66 * -0.7 + self->_filteredMaxCameraTemp * 0.07));
  sub_10000533C(58, (v5 + 65.0 + v8 * 0.19 + v7 * 0.15 + v66 * -0.36 + self->_filteredMaxRadioTemp * -0.04));
  v24 = (v67 & ~(v67 >> 31));
  sub_10000533C(60, (v9 * 0.92 + -52.0 + v23 * -0.05 + v8 * 0.13 + v24 * -0.06));
  sub_10000533C(52, (v8 * 0.12 + 138.0 + v66 * 0.22 + v9 * 0.69 + self->_filteredMaxRadioTemp * -0.12 + self->_filteredMaxCameraTemp * -0.12 + v24 * -0.09));
  sub_10000533C(53, (v65 + self->_filteredMaxRadioTemp * -0.05));
  sub_10000533C(54, 3000);
  sub_10000533C(55, 3000);
  v25 = unk_1000AB8E8;
  v26 = [(CommonProduct *)self findComponent:19];
  v27 = v25 / 100.0;
  *&v28 = v27;
  [v26 calculateControlEffort:v28];
  v29 = [(CommonProduct *)self findComponent:20];
  *&v30 = v27;
  [v29 calculateControlEffort:v30];
  v31 = xmmword_1000AB908;
  v32 = [(CommonProduct *)self findComponent:21];
  v33 = v31 / 100.0;
  *&v34 = v33;
  [v32 calculateControlEffort:v34];
  v35 = [(CommonProduct *)self findComponent:23];
  *&v36 = v33;
  [v35 calculateControlEffort:v36];
  v37 = SHIDWORD(xmmword_1000AB908);
  v38 = [(CommonProduct *)self findComponent:22];
  *&v39 = v37 / 100.0;
  [v38 calculateControlEffort:v39];
  v40 = qword_1000AB8F4;
  v41 = [(CommonProduct *)self findComponent:24];
  *&v42 = v40 / 100.0;
  [v41 calculateControlEffort:v42];
  v43 = SHIDWORD(qword_1000AB8F4);
  v44 = [(CommonProduct *)self findComponent:25];
  *&v45 = v43 / 100.0;
  [v44 calculateControlEffort:v45];
  v46 = dword_1000AB8FC;
  v47 = [(CommonProduct *)self findComponent:26];
  *&v48 = v46 / 100.0;
  [v47 calculateControlEffort:v48];
  v49 = dword_1000AB900;
  v50 = [(CommonProduct *)self findComponent:27];
  *&v51 = v49 / 100.0;
  [v50 calculateControlEffort:v51];
  v52 = [(CommonProduct *)self getChargerState];
  if (v52 - 10 > 0x3C)
  {
    goto LABEL_18;
  }

  v53 = qword_1000AB8EC;
  if (((1 << (v52 - 10)) & 0x1004010000100000) == 0)
  {
    if (v52 == 10)
    {
      v58 = [(CommonProduct *)self findComponent:28];
      *&v59 = v53 / 100.0;
LABEL_20:
      [v58 calculateControlEffort:{v59, *&v65}];
      v56 = [(CommonProduct *)self findComponent:29];
      LODWORD(v57) = 30.0;
      goto LABEL_21;
    }

LABEL_18:
    if (v52)
    {
      goto LABEL_22;
    }

    v58 = [(CommonProduct *)self findComponent:28];
    LODWORD(v59) = 30.0;
    goto LABEL_20;
  }

  v54 = [(CommonProduct *)self findComponent:28];
  LODWORD(v55) = 30.0;
  [v54 calculateControlEffort:v55];
  v56 = [(CommonProduct *)self findComponent:29];
  *&v57 = v53 / 100.0;
LABEL_21:
  [v56 calculateControlEffort:{v57, *&v65}];
LABEL_22:
  v60 = SHIDWORD(qword_1000AB8EC);
  v61 = [(CommonProduct *)self findComponent:30, *&v65];

  *&v62 = v60 / 100.0;
  [v61 calculateControlEffort:v62];
}

- (int)compute2DGridTemps
{
  v3 = [(tma7d85a7cc26d3b1c4eac409f958562c0 *)self gasGaugeBatteryTemperature];
  v4 = qword_1000AB72C;
  v6 = dword_1000AB734;
  v5 = dword_1000AB738;
  v7 = qword_1000AB73C;
  v8 = dword_1000AB7B8;
  v9 = (v3 * 0.53 + 130.8 + qword_1000AB73C * -0.24 + self->_filteredBacklightCurrentLI2 * 0.01 + dword_1000AB7B8 * 0.65);
  self->super.baseVT[0] = v9;
  self->super.baseVT[1] = (v3 * 0.54 + 282.1 + v7 * -0.22 + self->_filteredBacklightCurrentLI2 * 0.01 + v8 * 0.61);
  self->super.baseVT[2] = (v3 * 0.83 + 364.2 + v7 * -0.29 + self->_filteredBacklightCurrentLI2 * 0.01 + v8 * 0.39);
  self->super.baseVT[3] = (v3 + 334.9 + v7 * -0.35 + self->_filteredBacklightCurrentLI2 * 0.01 + v8 * 0.27);
  self->super.baseVT[4] = (v3 * 1.1 + 291.9 + v6 * 0.07 + v7 * -0.43 + v8 * 0.17);
  self->super.baseVT[5] = (v3 * 0.48 + -5.4 + v6 * 0.14 + v7 * -0.04 + self->_filteredBacklightCurrentLI2 * 0.01 + v8 * 0.4);
  self->super.baseVT[6] = (v3 * 0.63 + 80.9 + v6 * 0.14 + v7 * -0.12 + self->_filteredBacklightCurrentLI2 * 0.01 + v8 * 0.32);
  self->super.baseVT[7] = (v3 * 0.76 + 135.7 + v6 * 0.15 + v7 * -0.19 + self->_filteredBacklightCurrentLI2 * 0.01 + v8 * 0.23);
  self->super.baseVT[8] = (v3 * 0.84 + 179.1 + v6 * 0.17 + v7 * -0.25 + self->_filteredBacklightCurrentLI2 * 0.01 + v8 * 0.17);
  self->super.baseVT[9] = (v3 * 1.14 + 100.9 + v4 * -0.39 + v6 * 0.54 + v7 * -0.41 + v8 * 0.1);
  self->super.baseVT[10] = (v3 * 0.44 + -96.5 + v6 * 0.35 + self->_filteredBacklightCurrentLI2 * 0.01 + v8 * 0.2);
  self->super.baseVT[11] = (v3 * 0.52 + -10.6 + v6 * 0.29 + self->_filteredBacklightCurrentLI2 * 0.01 + v8 * 0.15);
  self->super.baseVT[12] = (v3 + 65.0 + v6 * 0.19 + v5 * 0.15 + v7 * -0.36 + self->_filteredMaxRadioTemp * -0.04);
  self->super.baseVT[13] = (v3 * 1.07 + 220.4 + SHIDWORD(v4) * 0.35 + v7 * -0.5 + self->_filteredBacklightCurrentLI2 * 0.0);
  self->super.baseVT[14] = (v3 * 0.93 + 170.0 + v6 * 0.27 + v7 * -0.28 + self->_filteredBacklightCurrentLI2 * 0.01);
  self->super.baseVT[15] = (v3 * 0.74 + 10.9 + v6 * 0.39 + v5 * 0.25 + v7 * -0.41 + self->_filteredBacklightCurrentLI2 * 0.0);
  self->super.baseVT[16] = (v3 * 0.7 + -37.1 + v6 * 0.48 + v7 * -0.21 + self->_filteredBacklightCurrentLI2 * 0.02);
  self->super.baseVT[17] = (v3 * 0.77 + -2.1 + v6 * 0.47 + v7 * -0.28 + self->_filteredBacklightCurrentLI2 * 0.01);
  self->super.baseVT[18] = (v3 * 0.85 + 30.5 + v6 * 0.39 + v7 * -0.28 + self->_filteredBacklightCurrentLI2 * 0.01);
  self->super.baseVT[19] = (v3 * 0.98 + 112.4 + v6 * 0.31 + v5 * 0.12 + v7 * -0.48 + self->_filteredBacklightCurrentLI2 * 0.0);
  self->super.baseVT[20] = (v3 * 0.86 + 122.7 + v4 * 0.21 + v6 * 0.32 + v5 * 0.29 + v7 * -0.73);
  self->super.baseVT[21] = (v3 * 0.75 + 96.4 + v4 * 0.51 + v5 * 0.24 + v7 * -0.56 + self->_filteredBacklightCurrentLI2 * 0.0);
  self->super.baseVT[22] = (v3 * 1.07 + 55.0 + SHIDWORD(v4) * -0.16 + v6 * 0.16 + v5 * 0.34 + v7 * -0.42);
  self->super.baseVT[23] = (v3 * 0.82 + 122.3 + v4 * 0.53 + v5 * 0.17 + v7 * -0.59 + self->_filteredBacklightCurrentLI2 * 0.01);
  self->super.baseVT[24] = (v3 * 0.92 + 124.8 + v4 * 0.48 + v5 * 0.16 + v7 * -0.65 + self->_filteredBacklightCurrentLI2 * 0.01);
  v10 = vdupq_n_s32(v9);
  v11 = 1;
  v12 = v10;
  do
  {
    v13 = *&self->super.baseVT[v11];
    v10 = vminq_s32(v10, v13);
    v12 = vmaxq_s32(v12, v13);
    v11 += 4;
  }

  while (v11 != 25);
  sub_10000533C(59, (vmaxvq_s32(v12) - vminvq_s32(v10)));
  return self->super.baseVT;
}

- (void)updateCoreAnalyticsInfo
{
  [(tma7d85a7cc26d3b1c4eac409f958562c0 *)self gasGaugeBatteryTemperature];
  [(CommonProduct *)self dieTempMaxAverage];
  [(CommonProduct *)self dieTempMaxMax];
  [(CommonProduct *)self getChargerState];
  [qword_1000ABCB0 getCurrentPackagePower];
  [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager isContextTriggered:"isContextTriggered:", 0];
  [(CommonProduct *)self thermalPressureLevel];
  [(AccessoryHelper *)self->super.accessoryHelper isAccessoryAttached];
  AnalyticsSendEventLazy();
}

@end