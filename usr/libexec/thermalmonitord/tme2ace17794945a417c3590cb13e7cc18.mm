@interface tme2ace17794945a417c3590cb13e7cc18
- (id)initProduct:(id)product;
- (int)compute2DGridTemps;
- (void)resetVTFilterState;
- (void)updateAllThermalLoad:(BOOL)load;
- (void)updateCoreAnalyticsInfo;
@end

@implementation tme2ace17794945a417c3590cb13e7cc18

- (id)initProduct:(id)product
{
  v6.receiver = self;
  v6.super_class = tme2ace17794945a417c3590cb13e7cc18;
  v3 = [(CommonProduct *)&v6 initProduct:product];
  v4 = v3;
  if (v3)
  {
    [v3 resetVTFilterState];
  }

  return v4;
}

- (void)resetVTFilterState
{
  self->_filteredBacklightCurrentLI2 = -1;
  self->_filteredMaxRadioTemp = -1;
  self->_filteredMaxCameraTemp = -1;
  self->_tsrrTransitionStepCount = 0;
}

- (void)updateAllThermalLoad:(BOOL)load
{
  loadCopy = load;
  gasGaugeBatteryTemperature = [(tme2ace17794945a417c3590cb13e7cc18 *)self gasGaugeBatteryTemperature];
  v6 = HIDWORD(qword_1000AB72C);
  v7 = dword_1000AB734;
  v61 = dword_1000AB738;
  v62 = qword_1000AB72C;
  v60 = qword_1000AB73C;
  v8 = dword_1000AB7B8;
  v63 = dword_1000AB7BC;
  getChargerState = [(CommonProduct *)self getChargerState];
  if (loadCopy)
  {
    [(tme2ace17794945a417c3590cb13e7cc18 *)self resetVTFilterState];
  }

  v9 = [-[CommonProduct findComponent:](self findComponent:{0), "currentLoadingIndex"}];
  v10 = (v9 * v9) / 100.0;
  filteredBacklightCurrentLI2 = self->_filteredBacklightCurrentLI2;
  if (filteredBacklightCurrentLI2 >= 0)
  {
    v10 = filteredBacklightCurrentLI2 + ((v10 - filteredBacklightCurrentLI2) * 0.14286);
  }

  self->_filteredBacklightCurrentLI2 = v10;
  v12 = qword_1000AB8E0;
  if (qword_1000AB8E0 <= SHIDWORD(qword_1000AB8E0))
  {
    v12 = HIDWORD(qword_1000AB8E0);
  }

  v13 = v12 & ~(v12 >> 31);
  filteredMaxRadioTemp = self->_filteredMaxRadioTemp;
  if ((filteredMaxRadioTemp & 0x80000000) == 0)
  {
    v13 = (filteredMaxRadioTemp + ((v13 - filteredMaxRadioTemp) * 0.25));
  }

  self->_filteredMaxRadioTemp = v13;
  v15 = dword_1000AB8D0;
  v16 = dword_1000AB8D4;
  if (dword_1000AB8D4 <= dword_1000AB8D8)
  {
    v16 = dword_1000AB8D8;
  }

  if (dword_1000AB8D0 <= v16)
  {
    v15 = v16;
  }

  v17 = v15 & ~(v15 >> 31);
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
  sub_10000533C(51, (gasGaugeBatteryTemperature * 0.14 + -58.0 + v6 * 0.03 + v7 * 0.64 + v8 * 0.16 + self->_filteredMaxRadioTemp * -0.11));
  sub_10000533C(49, (gasGaugeBatteryTemperature * 0.39 + -10.0 + v6 * 0.55 + v7 * 0.38 + v60 * -0.33 + self->_filteredMaxRadioTemp * -0.07));
  sub_10000533C(50, (gasGaugeBatteryTemperature * 0.53 + -114.0 + v7 * 0.46 + v61 * 0.31 + v60 * -0.29));
  sub_10000533C(53, (v62 * 1.89 + 71.0 + v7 * -1.09 + v60 * 0.16 + self->_filteredMaxCameraTemp * -0.06));
  sub_10000533C(58, (gasGaugeBatteryTemperature * 0.76 + 156.0 + v7 * 0.59 + v60 * -0.43 + self->_filteredBacklightCurrentLI2 * 0.01 + self->_filteredMaxRadioTemp * -0.11));
  sub_10000533C(57, (v61 * 0.18 + -40.0 + v60 * -0.26 + v8 * 1.13 + self->_filteredBacklightCurrentLI2 * 0.02 + (v63 & ~(v63 >> 31)) * -0.04));
  sub_10000533C(60, (v8 * 0.89 + -29.0 + v7 * 0.04 + v61 * -0.09 + v60 * 0.14));
  sub_10000533C(52, (v7 * 0.57 + -391.0 + v61 * -0.47 + v60 * 0.88 + self->_filteredMaxRadioTemp * -0.09));
  sub_10000533C(56, (v62 * 2.51 + -131.0 + v7 * -1.97 + v8 * 0.41 + self->_filteredBacklightCurrentLI2 * 0.02));
  sub_10000533C(54, 3000);
  sub_10000533C(55, 3000);
  tsrrTransitionStepCount = self->_tsrrTransitionStepCount;
  if (getChargerState == 10)
  {
    if (tsrrTransitionStepCount >= 10)
    {
      LODWORD(v25) = qword_1000AB8F4;
      goto LABEL_23;
    }

    v24 = 1;
  }

  else
  {
    if (tsrrTransitionStepCount <= 0)
    {
      v25 = qword_1000AB8F4;
      goto LABEL_25;
    }

    v24 = -1;
  }

  tsrrTransitionStepCount += v24;
  self->_tsrrTransitionStepCount = tsrrTransitionStepCount;
  v25 = qword_1000AB8F4;
  if (tsrrTransitionStepCount >= 1)
  {
LABEL_23:
    v25 = ((HIDWORD(qword_1000AB8EC) - v25) * tsrrTransitionStepCount / 10 + v25);
  }

LABEL_25:
  sub_10000533C(52, v25);
  v26 = SHIDWORD(qword_1000AB8EC);
  v27 = [(CommonProduct *)self findComponent:19];
  v28 = v26 / 100.0;
  *&v29 = v28;
  [v27 calculateControlEffort:v29];
  v30 = [(CommonProduct *)self findComponent:20];
  *&v31 = v28;
  [v30 calculateControlEffort:v31];
  v32 = xmmword_1000AB908;
  v33 = [(CommonProduct *)self findComponent:21];
  v34 = v32 / 100.0;
  *&v35 = v34;
  [v33 calculateControlEffort:v35];
  v36 = [(CommonProduct *)self findComponent:23];
  *&v37 = v34;
  [v36 calculateControlEffort:v37];
  v38 = SHIDWORD(xmmword_1000AB908);
  v39 = [(CommonProduct *)self findComponent:22];
  *&v40 = v38 / 100.0;
  [v39 calculateControlEffort:v40];
  v41 = qword_1000AB8F4;
  v42 = [(CommonProduct *)self findComponent:24];
  *&v43 = v41 / 100.0;
  [v42 calculateControlEffort:v43];
  v44 = SHIDWORD(qword_1000AB8F4);
  v45 = [(CommonProduct *)self findComponent:25];
  *&v46 = v44 / 100.0;
  [v45 calculateControlEffort:v46];
  v47 = dword_1000AB8FC;
  v48 = [(CommonProduct *)self findComponent:26];
  *&v49 = v47 / 100.0;
  [v48 calculateControlEffort:v49];
  v50 = dword_1000AB900;
  v51 = [(CommonProduct *)self findComponent:27];
  *&v52 = v50 / 100.0;
  [v51 calculateControlEffort:v52];
  if (!getChargerState)
  {
    v54 = [(CommonProduct *)self findComponent:28];
    LODWORD(v55) = 30.0;
    goto LABEL_29;
  }

  v53 = qword_1000AB8EC;
  if (getChargerState == 10)
  {
    v54 = [(CommonProduct *)self findComponent:28];
    *&v55 = v53 / 100.0;
LABEL_29:
    [v54 calculateControlEffort:{v55, 0x3FC1EB851EB851ECLL}];
    v56 = [(CommonProduct *)self findComponent:29];
    LODWORD(v57) = 30.0;
    goto LABEL_33;
  }

  if (getChargerState - 30 > 0x28 || ((1 << (getChargerState - 30)) & 0x10040100001) == 0)
  {
    return;
  }

  v58 = [(CommonProduct *)self findComponent:28];
  LODWORD(v59) = 30.0;
  [v58 calculateControlEffort:v59];
  v56 = [(CommonProduct *)self findComponent:29];
  *&v57 = v53 / 100.0;
LABEL_33:

  [v56 calculateControlEffort:v57];
}

- (int)compute2DGridTemps
{
  gasGaugeBatteryTemperature = [(tme2ace17794945a417c3590cb13e7cc18 *)self gasGaugeBatteryTemperature];
  v4 = dword_1000AB734;
  v5 = dword_1000AB7BC;
  v6 = qword_1000AB72C;
  v7 = SHIDWORD(qword_1000AB72C);
  v8 = dword_1000AB738;
  v9 = qword_1000AB73C;
  v10 = dword_1000AB7B8;
  v11 = vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_100067790, xmmword_100067780, qword_1000AB72C), xmmword_1000677A0, SHIDWORD(qword_1000AB72C)), xmmword_1000677B0, dword_1000AB738), xmmword_1000677C0, qword_1000AB73C), xmmword_1000677D0, dword_1000AB7B8)));
  *self->super.baseVT = v11;
  self->super.baseVT[2] = (gasGaugeBatteryTemperature * 0.54 + -4.5 + v6 * 0.81 + v8 * 0.17 + v9 * -0.56 + self->_filteredBacklightCurrentLI2 * 0.01);
  self->super.baseVT[3] = (v6 * 2.0 + -138.6 + v7 * -0.29 + v4 * -1.16 + self->_filteredBacklightCurrentLI2 * 0.02 + v10 * 0.39);
  self->super.baseVT[4] = (v6 * 2.11 + -97.8 + v4 * -1.45 + v9 * -0.2 + self->_filteredBacklightCurrentLI2 * 0.01 + v10 * 0.47);
  self->super.baseVT[5] = (gasGaugeBatteryTemperature * 0.42 + 58.0 + v4 * 0.88 + v9 * -0.33 + self->_filteredMaxRadioTemp * -0.16);
  self->super.baseVT[6] = (gasGaugeBatteryTemperature * 0.48 + -61.0 + v4 * 0.62 + v9 * -0.13 + self->_filteredBacklightCurrentLI2 * 0.02);
  self->super.baseVT[7] = (gasGaugeBatteryTemperature * 0.56 + -53.4 + v6 * 0.57 + v9 * -0.15 + self->_filteredBacklightCurrentLI2 * 0.01);
  self->super.baseVT[8] = (gasGaugeBatteryTemperature * 0.69 + -44.9 + v6 * 0.61 + v9 * -0.34 + self->_filteredBacklightCurrentLI2 * 0.02);
  self->super.baseVT[9] = (gasGaugeBatteryTemperature * 0.72 + 23.2 + v6 * 0.58 + v9 * -0.37 + self->_filteredBacklightCurrentLI2 * 0.01);
  self->super.baseVT[10] = (gasGaugeBatteryTemperature * 0.37 + 28.6 + v4 * 0.3 + self->_filteredBacklightCurrentLI2 * 0.01 + v10 * 0.28);
  self->super.baseVT[11] = (gasGaugeBatteryTemperature * 0.77 + -83.3 + v4 * 0.43 + v9 * -0.22 + self->_filteredBacklightCurrentLI2 * 0.01);
  self->super.baseVT[12] = (gasGaugeBatteryTemperature * 0.76 + 156.0 + v4 * 0.59 + v9 * -0.43 + self->_filteredBacklightCurrentLI2 * 0.01 + self->_filteredMaxRadioTemp * -0.11);
  self->super.baseVT[13] = (gasGaugeBatteryTemperature * 0.89 + -42.0 + v4 * 0.42 + v9 * -0.34 + self->_filteredBacklightCurrentLI2 * 0.02);
  self->super.baseVT[14] = (gasGaugeBatteryTemperature * 1.02 + -45.6 + v7 * 0.46 + v4 * 0.27 + v9 * -0.76);
  self->super.baseVT[15] = (gasGaugeBatteryTemperature * 0.47 + -53.8 + v4 * 0.21 + v9 * -0.18 + self->_filteredBacklightCurrentLI2 * 0.02 + v10 * 0.48);
  self->super.baseVT[16] = (gasGaugeBatteryTemperature * 0.45 + -47.0 + v4 * 0.2 + v9 * -0.17 + self->_filteredBacklightCurrentLI2 * 0.02 + v10 * 0.5);
  self->super.baseVT[17] = (gasGaugeBatteryTemperature * 1.1 + -4.8 + v7 * 0.69 + v8 * -0.13 + v9 * -0.67 + self->_filteredBacklightCurrentLI2 * 0.02);
  self->super.baseVT[18] = (gasGaugeBatteryTemperature * 1.1 + 10.9 + v7 * 0.69 + v8 * -0.12 + v9 * -0.69 + self->_filteredBacklightCurrentLI2 * 0.02);
  self->super.baseVT[19] = (gasGaugeBatteryTemperature * 1.11 + -1.5 + v7 * 0.45 + v4 * 0.15 + v9 * -0.73 + self->_filteredBacklightCurrentLI2 * 0.01);
  self->super.baseVT[20] = (gasGaugeBatteryTemperature * 0.41 + -75.0 + v7 * 0.27 + v9 * -0.43 + self->_filteredBacklightCurrentLI2 * 0.02 + v10 * 0.74);
  self->super.baseVT[21] = (v6 * -0.28 + 90.4 + v4 * 0.34 + v9 * -0.11 + self->_filteredBacklightCurrentLI2 * 0.02 + v10 * 1.03);
  self->super.baseVT[22] = (v8 * 0.18 + -40.0 + v9 * -0.26 + v10 * 1.13 + self->_filteredBacklightCurrentLI2 * 0.02 + (v5 & ~(v5 >> 31)) * -0.04);
  self->super.baseVT[23] = (v7 * -0.65 + 166.5 + v4 * 0.37 + v8 * 0.28 + self->_filteredBacklightCurrentLI2 * 0.02 + v10 * 0.96);
  self->super.baseVT[24] = (gasGaugeBatteryTemperature * 0.53 + -21.4 + v4 * 0.24 + v9 * -0.37 + self->_filteredBacklightCurrentLI2 * 0.02 + v10 * 0.58);
  v12 = vdupq_lane_s32(v11, 0);
  v13 = 1;
  v14 = v12;
  do
  {
    v15 = *&self->super.baseVT[v13];
    v12 = vminq_s32(v12, v15);
    v14 = vmaxq_s32(v14, v15);
    v13 += 4;
  }

  while (v13 != 25);
  sub_10000533C(59, (vmaxvq_s32(v14) - vminvq_s32(v12)));
  return self->super.baseVT;
}

- (void)updateCoreAnalyticsInfo
{
  [(tme2ace17794945a417c3590cb13e7cc18 *)self gasGaugeBatteryTemperature];
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