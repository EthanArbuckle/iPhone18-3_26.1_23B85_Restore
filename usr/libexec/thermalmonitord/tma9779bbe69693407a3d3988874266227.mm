@interface tma9779bbe69693407a3d3988874266227
- (id)initProduct:(id)a3;
- (int)compute2DGridTemps;
- (void)resetVTFilterState;
- (void)updateAllThermalLoad:(BOOL)a3;
- (void)updateCoreAnalyticsInfo;
@end

@implementation tma9779bbe69693407a3d3988874266227

- (id)initProduct:(id)a3
{
  v6.receiver = self;
  v6.super_class = tma9779bbe69693407a3d3988874266227;
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
  self->_filteredBacklightCurrentLI2 = -1;
  self->_filteredMaxRadioTemp = -1;
  self->_filteredMaxCameraTemp = -1;
}

- (void)updateAllThermalLoad:(BOOL)a3
{
  v3 = a3;
  v5 = [(tma9779bbe69693407a3d3988874266227 *)self gasGaugeBatteryTemperature];
  v6 = qword_1000AB72C;
  v7 = HIDWORD(qword_1000AB72C);
  v58 = dword_1000AB738;
  v59 = qword_1000AB73C;
  v60 = dword_1000AB734;
  v61 = dword_1000AB7B8;
  v62 = dword_1000AB7BC;
  if (v3)
  {
    [(tma9779bbe69693407a3d3988874266227 *)self resetVTFilterState];
  }

  v8 = [-[CommonProduct findComponent:](self findComponent:{0), "currentLoadingIndex"}];
  v9 = (v8 * v8) / 100.0;
  filteredBacklightCurrentLI2 = self->_filteredBacklightCurrentLI2;
  if (filteredBacklightCurrentLI2 >= 0)
  {
    v9 = filteredBacklightCurrentLI2 + ((v9 - filteredBacklightCurrentLI2) * 0.14286);
  }

  self->_filteredBacklightCurrentLI2 = v9;
  v11 = qword_1000AB8E0;
  if (qword_1000AB8E0 <= SHIDWORD(qword_1000AB8E0))
  {
    v11 = HIDWORD(qword_1000AB8E0);
  }

  v12 = v11 & ~(v11 >> 31);
  filteredMaxRadioTemp = self->_filteredMaxRadioTemp;
  if ((filteredMaxRadioTemp & 0x80000000) != 0)
  {
    v14 = v12;
  }

  else
  {
    v14 = (filteredMaxRadioTemp + ((v12 - filteredMaxRadioTemp) * 0.25));
  }

  self->_filteredMaxRadioTemp = v14;
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
  sub_10000533C(51, (v5 * 0.29 + 6.0 + v6 * 0.44 + v7 * 0.24 + self->_filteredMaxRadioTemp * -0.06 + self->_filteredMaxCameraTemp * -0.03));
  sub_10000533C(49, (v5 * 0.16 + 8.0 + v6 * 0.62 + v7 * 0.19 + self->_filteredMaxRadioTemp * -0.05 + self->_filteredMaxCameraTemp * -0.02));
  sub_10000533C(50, (v5 * 0.3 + 389.0 + v7 * 0.94 + v58 * -0.58 + v59 * 0.28));
  sub_10000533C(58, (v5 * 0.71 + 204.0 + v60 * 0.25 + v58 * -0.07 + self->_filteredBacklightCurrentLI2 * 0.02));
  sub_10000533C(54, 3000);
  sub_10000533C(57, (v5 * 0.98 + 329.0 + v58 * -0.11 + self->_filteredBacklightCurrentLI2 * 0.04));
  sub_10000533C(60, (v61 * 0.95 + -67.0 + v60 * 0.1 + (v62 & ~(v62 >> 31)) * -0.03));
  sub_10000533C(55, 3000);
  sub_10000533C(56, (v5 * 0.26 + -65.0 + v6 * 3.03 + v7 * -0.39 + v60 * -1.95 + self->_filteredBacklightCurrentLI2 * 0.02));
  sub_10000533C(52, (v6 * 0.3 + -70.0 + v58 * 0.15 + v59 * 0.12 + v61 * 0.43 + self->_filteredMaxRadioTemp * -0.04));
  sub_10000533C(53, (v5 * 0.33 + 93.0 + v7 * 0.34 + v60 * 0.27 + v12 * -0.01));
  v23 = SHIDWORD(qword_1000AB8EC);
  v24 = [(CommonProduct *)self findComponent:19];
  v25 = v23 / 100.0;
  *&v26 = v25;
  [v24 calculateControlEffort:v26];
  v27 = [(CommonProduct *)self findComponent:20];
  *&v28 = v25;
  [v27 calculateControlEffort:v28];
  v29 = SHIDWORD(qword_1000AB904);
  v30 = [(CommonProduct *)self findComponent:21];
  v31 = v29 / 100.0;
  *&v32 = v31;
  [v30 calculateControlEffort:v32];
  v33 = [(CommonProduct *)self findComponent:23];
  *&v34 = v31;
  [v33 calculateControlEffort:v34];
  v35 = dword_1000AB914;
  v36 = [(CommonProduct *)self findComponent:22];
  *&v37 = v35 / 100.0;
  [v36 calculateControlEffort:v37];
  v38 = qword_1000AB8F4;
  v39 = [(CommonProduct *)self findComponent:24];
  *&v40 = v38 / 100.0;
  [v39 calculateControlEffort:v40];
  v41 = SHIDWORD(qword_1000AB8F4);
  v42 = [(CommonProduct *)self findComponent:25];
  *&v43 = v41 / 100.0;
  [v42 calculateControlEffort:v43];
  v44 = dword_1000AB8FC;
  v45 = [(CommonProduct *)self findComponent:26];
  *&v46 = v44 / 100.0;
  [v45 calculateControlEffort:v46];
  v47 = dword_1000AB900;
  v48 = [(CommonProduct *)self findComponent:27];
  *&v49 = v47 / 100.0;
  [v48 calculateControlEffort:v49];
  v50 = [(CommonProduct *)self getChargerState];
  if (v50 - 10 > 0x3C)
  {
    goto LABEL_21;
  }

  v51 = qword_1000AB8EC;
  if (((1 << (v50 - 10)) & 0x1004010000100000) == 0)
  {
    if (v50 == 10)
    {
      v56 = [(CommonProduct *)self findComponent:28];
      *&v57 = v51 / 100.0;
LABEL_23:
      [v56 calculateControlEffort:v57];
      v54 = [(CommonProduct *)self findComponent:29];
      LODWORD(v55) = 30.0;
      goto LABEL_24;
    }

LABEL_21:
    if (v50)
    {
      return;
    }

    v56 = [(CommonProduct *)self findComponent:28];
    LODWORD(v57) = 30.0;
    goto LABEL_23;
  }

  v52 = [(CommonProduct *)self findComponent:28];
  LODWORD(v53) = 30.0;
  [v52 calculateControlEffort:v53];
  v54 = [(CommonProduct *)self findComponent:29];
  *&v55 = v51 / 100.0;
LABEL_24:

  [v54 calculateControlEffort:v55];
}

- (int)compute2DGridTemps
{
  v3 = [(tma9779bbe69693407a3d3988874266227 *)self gasGaugeBatteryTemperature];
  v4 = qword_1000AB72C;
  v5 = qword_1000AB73C;
  v6 = dword_1000AB734;
  v7 = dword_1000AB738;
  v8 = dword_1000AB7B8;
  v9 = (dword_1000AB734 * 1.01 + -116.6 + dword_1000AB738 * -0.31 + self->_filteredBacklightCurrentLI2 * 0.01 + dword_1000AB7B8 * 0.27);
  self->super.baseVT[0] = v9;
  self->super.baseVT[1] = (SHIDWORD(v4) * -0.69 + -117.3 + v6 * 1.44 + self->_filteredBacklightCurrentLI2 * 0.01 + v8 * 0.24);
  self->super.baseVT[2] = (v4 * 1.3 + -110.5 + SHIDWORD(v4) * -0.55 + self->_filteredBacklightCurrentLI2 * 0.01 + v8 * 0.24);
  self->super.baseVT[3] = (v4 * 1.35 + -46.7 + SHIDWORD(v4) * -0.63 + self->_filteredBacklightCurrentLI2 * 0.01 + v8 * 0.24);
  self->super.baseVT[4] = (v4 * 1.43 + -129.5 + SHIDWORD(v4) * -0.75 + self->_filteredBacklightCurrentLI2 * 0.01 + v8 * 0.27);
  self->super.baseVT[5] = (v3 * 0.22 + -17.3 + v4 * 0.66 + self->_filteredBacklightCurrentLI2 * 0.01 + v8 * 0.08);
  self->super.baseVT[6] = (SHIDWORD(v4) * -0.29 + -85.6 + v6 * 0.95 + self->_filteredBacklightCurrentLI2 * 0.02 + v8 * 0.32);
  self->super.baseVT[7] = (v4 * 0.83 + -54.0 + SHIDWORD(v4) * -0.25 + self->_filteredBacklightCurrentLI2 * 0.02 + v8 * 0.4);
  self->super.baseVT[8] = (v4 * 0.86 + -31.4 + SHIDWORD(v4) * -0.33 + self->_filteredBacklightCurrentLI2 * 0.02 + v8 * 0.44);
  self->super.baseVT[9] = (SHIDWORD(v4) * -0.6 + -3.6 + v6 * 1.15 + self->_filteredBacklightCurrentLI2 * 0.01 + v8 * 0.41);
  self->super.baseVT[10] = (v3 * 0.44 + 121.8 + SHIDWORD(v4) * 0.13 + v6 * 0.15 + v5 * 0.2 + self->_filteredBacklightCurrentLI2 * 0.01);
  self->super.baseVT[11] = (v3 * 0.26 + -117.6 + SHIDWORD(v4) * -0.18 + v6 * 0.61 + self->_filteredBacklightCurrentLI2 * 0.02 + v8 * 0.31);
  self->super.baseVT[12] = (v3 * 0.71 + 204.0 + v6 * 0.25 + v7 * -0.07 + self->_filteredBacklightCurrentLI2 * 0.02);
  self->super.baseVT[13] = (v3 * 0.3 + -65.2 + SHIDWORD(v4) * -0.39 + v6 * 0.71 + self->_filteredBacklightCurrentLI2 * 0.02 + v8 * 0.35);
  self->super.baseVT[14] = (v3 * 0.32 + -33.5 + SHIDWORD(v4) * -0.41 + v6 * 0.7 + self->_filteredBacklightCurrentLI2 * 0.02 + v8 * 0.34);
  self->super.baseVT[15] = (v3 * 0.22 + -39.4 + SHIDWORD(v4) * -0.14 + v6 * 0.31 + self->_filteredBacklightCurrentLI2 * 0.02 + v8 * 0.59);
  self->super.baseVT[16] = (v3 * 0.25 + -5.8 + SHIDWORD(v4) * -0.26 + v6 * 0.43 + self->_filteredBacklightCurrentLI2 * 0.03 + v8 * 0.56);
  self->super.baseVT[17] = (v3 * 0.29 + 10.3 + SHIDWORD(v4) * -0.34 + v6 * 0.52 + self->_filteredBacklightCurrentLI2 * 0.03 + v8 * 0.52);
  self->super.baseVT[18] = (v3 * 0.3 + 27.9 + SHIDWORD(v4) * -0.38 + v6 * 0.56 + self->_filteredBacklightCurrentLI2 * 0.03 + v8 * 0.49);
  self->super.baseVT[19] = (v3 * 0.31 + 27.6 + SHIDWORD(v4) * -0.42 + v6 * 0.58 + self->_filteredBacklightCurrentLI2 * 0.03 + v8 * 0.49);
  self->super.baseVT[20] = (v3 * 0.26 + -86.4 + v6 * 0.2 + v5 * -0.41 + self->_filteredBacklightCurrentLI2 * 0.02 + v8 * 0.95);
  self->super.baseVT[21] = (v4 * -0.73 + 76.4 + SHIDWORD(v4) * -0.4 + v6 * 1.19 + self->_filteredBacklightCurrentLI2 * 0.03 + v8 * 0.92);
  self->super.baseVT[22] = (v8 * 0.15 + 84.0 + v7 * -0.85 + v5 * 1.64 + self->_filteredBacklightCurrentLI2 * 0.03);
  self->super.baseVT[23] = (v3 * 0.26 + 141.7 + SHIDWORD(v4) * -0.47 + v6 * 0.57 + self->_filteredBacklightCurrentLI2 * 0.02 + v8 * 0.59);
  self->super.baseVT[24] = (v3 * 0.27 + 20.3 + SHIDWORD(v4) * -0.72 + v6 * 0.85 + self->_filteredBacklightCurrentLI2 * 0.02 + v8 * 0.56);
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
  [(tma9779bbe69693407a3d3988874266227 *)self gasGaugeBatteryTemperature];
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