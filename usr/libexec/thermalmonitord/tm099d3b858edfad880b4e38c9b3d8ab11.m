@interface tm099d3b858edfad880b4e38c9b3d8ab11
- (id)getGridX;
- (id)getGridY;
- (id)initProduct:(id)a3;
- (int)compute2DGridTemps;
- (void)updateAllThermalLoad:(BOOL)a3;
- (void)updateCoreAnalyticsInfo;
@end

@implementation tm099d3b858edfad880b4e38c9b3d8ab11

- (id)initProduct:(id)a3
{
  v6.receiver = self;
  v6.super_class = tm099d3b858edfad880b4e38c9b3d8ab11;
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
  v49 = [(tm099d3b858edfad880b4e38c9b3d8ab11 *)self gasGaugeBatteryTemperature];
  v5 = dword_1000AB83C;
  v6 = dword_1000AB8DC;
  v50 = HIDWORD(qword_1000AB82C);
  v51 = qword_1000AB8E0;
  v52 = unk_1000AB8E8;
  v8 = HIDWORD(qword_1000AB8EC);
  v7 = qword_1000AB8F4;
  v9 = HIDWORD(qword_1000AB8F4);
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
    [(tm099d3b858edfad880b4e38c9b3d8ab11 *)self resetVTFilterState];
  }

  v12 = [-[CommonProduct findComponent:](self findComponent:{0), "currentLoadingIndex"}];
  v13 = (v12 * v12) / 100.0;
  filteredBacklightCurrentLI2 = self->_filteredBacklightCurrentLI2;
  if (filteredBacklightCurrentLI2 >= 0)
  {
    v13 = filteredBacklightCurrentLI2 + ((v13 - filteredBacklightCurrentLI2) * 0.076923);
  }

  self->_filteredBacklightCurrentLI2 = v13;
  if (v8 <= v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = v8;
  }

  if (v15 <= v9)
  {
    v15 = v9;
  }

  v16 = v15 & ~(v15 >> 31);
  filteredTempRearCameraDieWithDefault = self->_filteredTempRearCameraDieWithDefault;
  if ((filteredTempRearCameraDieWithDefault & 0x80000000) == 0)
  {
    v16 = (filteredTempRearCameraDieWithDefault + ((v16 - filteredTempRearCameraDieWithDefault) * 0.16667));
  }

  self->_filteredTempRearCameraDieWithDefault = v16;
  v18 = [(CommonProduct *)self findComponent:18];
  v19 = [(CommonProduct *)self dieTempMaxAverage]/ 100.0;
  v20 = [(CommonProduct *)self dieTempFilteredMaxAverage]/ 100.0;
  *&v21 = v20;
  *&v20 = v19;
  [v18 calculateControlEffort:v20 trigger:v21];
  sub_10000533C(56, (v5 * 0.299 + 6.19 + v6 * 0.686 + self->_filteredTempRearCameraDieWithDefault * -0.0193));
  sub_10000533C(54, (v49 * 0.29 + 11.0 + v50 * 0.67));
  sub_10000533C(55, v10);
  sub_10000533C(61, (v5 * 0.22 + 284.0 + v6 * 0.2 + v51 * 0.48 + self->_filteredBacklightCurrentLI2 * 1.73));
  sub_10000533C(63, (v5 * 0.07 + 214.5 + v51 * 0.893 + (v52 & ~(v52 >> 31)) * 0.0046));
  sub_10000533C(59, (v5 * -0.68 + -184.0 + v6 * 1.73));
  sub_10000533C(57, (v49 * 0.52 + 16.0 + v50 * 0.45));
  sub_10000533C(58, (v49 * 0.37 + 28.0 + v50 * 0.59));
  sub_10000533C(60, (self->_filteredBacklightCurrentLI2 * 0.655 + 274.0 + v49 * 0.00135 + v51 * 0.949));
  v22 = unk_1000AB904;
  v23 = [(CommonProduct *)self findComponent:19];
  v24 = v22 / 100.0;
  *&v25 = v24;
  [v23 calculateControlEffort:v25];
  v26 = [(CommonProduct *)self findComponent:20];
  *&v27 = v24;
  [v26 calculateControlEffort:v27];
  v28 = SHIDWORD(xmmword_1000AB908);
  v29 = [(CommonProduct *)self findComponent:21];
  v30 = v28 / 100.0;
  *&v31 = v30;
  [v29 calculateControlEffort:v31];
  v32 = [(CommonProduct *)self findComponent:26];
  *&v33 = v30;
  [v32 calculateControlEffort:v33];
  v34 = SDWORD2(xmmword_1000AB908);
  v35 = [(CommonProduct *)self findComponent:22];
  *&v36 = v34 / 100.0;
  [v35 calculateControlEffort:v36];
  v37 = dword_1000AB920;
  v38 = [(CommonProduct *)self findComponent:23];
  *&v39 = v37 / 100.0;
  [v38 calculateControlEffort:v39];
  v40 = xmmword_1000AB908;
  v41 = [(CommonProduct *)self findComponent:24];
  v42 = v40 / 100.0;
  *&v43 = v42;
  [v41 calculateControlEffort:v43];
  v44 = [(CommonProduct *)self findComponent:25];
  *&v45 = v42;
  [v44 calculateControlEffort:v45];
  if ([(CommonProduct *)self getChargerState])
  {
    v46 = dword_1000AB900;
    v47 = [(CommonProduct *)self findComponent:27];
    *&v48 = v46 / 100.0;
  }

  else
  {
    v47 = [(CommonProduct *)self findComponent:27];
    LODWORD(v48) = 30.0;
  }

  [v47 calculateControlEffort:v48];
}

- (id)getGridX
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100034CBC;
  block[3] = &unk_100085260;
  block[4] = self;
  if (qword_1000AB258 != -1)
  {
    dispatch_once(&qword_1000AB258, block);
  }

  return self->gridX;
}

- (id)getGridY
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100034D98;
  block[3] = &unk_100085260;
  block[4] = self;
  if (qword_1000AB260 != -1)
  {
    dispatch_once(&qword_1000AB260, block);
  }

  return self->gridY;
}

- (int)compute2DGridTemps
{
  v3 = [(tm099d3b858edfad880b4e38c9b3d8ab11 *)self gasGaugeBatteryTemperature];
  v4 = dword_1000AB8DC;
  v5 = qword_1000AB8E0;
  v6 = SHIDWORD(qword_1000AB834);
  v8 = HIDWORD(qword_1000AB82C);
  v7 = qword_1000AB82C;
  v9 = vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_100067630, xmmword_100067620, dword_1000AB8DC), xmmword_100067640, qword_1000AB8E0), vdupq_n_s64(0xBFCC28F5C28F5C29), SHIDWORD(qword_1000AB834))));
  v10 = (dword_1000AB8DC * 1.12 + 89.0 + qword_1000AB8E0 * 0.05 + SHIDWORD(qword_1000AB834) * -0.21);
  *self->super.baseVT = v9;
  self->super.baseVT[2] = v10;
  *&self->super.baseVT[3] = vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_100067660, xmmword_100067650, v4), vdupq_n_s64(0xBFCD70A3D70A3D71), v6)));
  self->super.baseVT[5] = (self->_filteredBacklightCurrentLI2 * 0.76 + 148.0 + v4 * 0.78 + v5 * 0.22 + v6 * -0.08);
  self->super.baseVT[6] = (self->_filteredBacklightCurrentLI2 * 0.795 + 130.5 + v4 * 0.815 + v5 * 0.185 + v6 * -0.08);
  self->super.baseVT[7] = (self->_filteredBacklightCurrentLI2 * 0.625 + 89.0 + v4 * 0.865 + v5 * 0.135 + v6 * -0.065);
  self->super.baseVT[8] = (self->_filteredBacklightCurrentLI2 * 0.546 + -11.4 + v3 * 0.256 + self->_filteredTempRearCameraDieWithDefault * 0.136 + v4 * 0.498 + v5 * 0.078);
  self->super.baseVT[9] = (self->_filteredBacklightCurrentLI2 * 0.25 + -45.5 + v4 * 1.17 + v5 * 0.035 + v8 * -0.22);
  self->super.baseVT[10] = (self->_filteredBacklightCurrentLI2 * 1.53 + 106.0 + v3 * 0.14 + v4 * 0.45 + v5 * 0.3);
  self->super.baseVT[11] = (self->_filteredBacklightCurrentLI2 * 1.66 + 93.0 + v3 * 0.19 + v4 * 0.47 + v5 * 0.24);
  self->super.baseVT[12] = (self->_filteredBacklightCurrentLI2 * 1.11 + 176.0 + v4 * 0.61 + v5 * 0.3);
  self->super.baseVT[13] = (self->_filteredBacklightCurrentLI2 * 1.45 + 90.0 + v6 * 0.06 + v4 * 0.63 + v5 * 0.23);
  self->super.baseVT[14] = (self->_filteredBacklightCurrentLI2 * 0.86 + 25.0 + v3 * 0.33 + v6 * 0.08 + v4 * 0.53);
  self->super.baseVT[15] = (self->_filteredBacklightCurrentLI2 * 1.8 + 132.0 + v3 * 0.18 + v4 * 0.24 + v5 * 0.48);
  self->super.baseVT[16] = (self->_filteredBacklightCurrentLI2 * 2.04 + 128.0 + v3 * 0.24 + v4 * 0.23 + v5 * 0.42);
  self->super.baseVT[17] = (self->_filteredBacklightCurrentLI2 * 1.98 + 136.0 + v3 * 0.33 + v4 * 0.22 + v5 * 0.35);
  self->super.baseVT[18] = (self->_filteredBacklightCurrentLI2 * 1.9 + 134.0 + v3 * 0.41 + v4 * 0.2 + v5 * 0.3);
  self->super.baseVT[19] = (self->_filteredBacklightCurrentLI2 * 1.11 + 110.0 + v3 * 0.42 + v4 * 0.26 + v5 * 0.23);
  self->super.baseVT[20] = (self->_filteredBacklightCurrentLI2 * 1.42 + 161.0 + v7 * -0.12 + v4 * 0.28 + v5 * 0.77);
  self->super.baseVT[21] = (self->_filteredBacklightCurrentLI2 * 1.63 + 133.0 + v3 * 0.68 + v6 * -0.09 + v5 * 0.35);
  self->super.baseVT[22] = (self->_filteredBacklightCurrentLI2 * 1.27 + 309.0 + v4 * 0.2 + v5 * 0.7);
  self->super.baseVT[23] = (self->_filteredBacklightCurrentLI2 * 1.64 + 141.0 + v3 * 0.83 + v6 * -0.11 + v5 * 0.21);
  self->super.baseVT[24] = (v3 * 0.64 + 6.0 + v6 * -0.28 + v4 * 0.44 + v5 * 0.18);
  v11 = vdupq_lane_s32(v9, 0);
  v12 = 1;
  v13 = v11;
  do
  {
    v14 = *&self->super.baseVT[v12];
    v11 = vminq_s32(v11, v14);
    v13 = vmaxq_s32(v13, v14);
    v12 += 4;
  }

  while (v12 != 25);
  sub_10000533C(62, (vmaxvq_s32(v13) - vminvq_s32(v11)));
  return self->super.baseVT;
}

- (void)updateCoreAnalyticsInfo
{
  [(tm099d3b858edfad880b4e38c9b3d8ab11 *)self gasGaugeBatteryTemperature];
  [(CommonProduct *)self dieTempMaxAverage];
  [(CommonProduct *)self dieTempMaxMax];
  [qword_1000ABCB0 getCurrentPackagePower];
  [(CommonProduct *)self getChargerState];
  [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager isContextTriggered:"isContextTriggered:", 0];
  [(CommonProduct *)self thermalPressureLevel];
  if (![+[_CDClientContext userContext](_CDClientContext "userContext")])
  {
    [NSNumber numberWithInt:0xFFFFFFFFLL];
  }

  AnalyticsSendEventLazy();
}

@end