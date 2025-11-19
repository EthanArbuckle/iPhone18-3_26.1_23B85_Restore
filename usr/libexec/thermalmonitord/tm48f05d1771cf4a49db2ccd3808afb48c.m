@interface tm48f05d1771cf4a49db2ccd3808afb48c
- (id)getGridX;
- (id)getGridY;
- (id)initProduct:(id)a3;
- (int)compute2DGridTemps;
- (void)updateAllThermalLoad:(BOOL)a3;
- (void)updateCoreAnalyticsInfo;
@end

@implementation tm48f05d1771cf4a49db2ccd3808afb48c

- (id)initProduct:(id)a3
{
  v6.receiver = self;
  v6.super_class = tm48f05d1771cf4a49db2ccd3808afb48c;
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
  v5 = [(tm48f05d1771cf4a49db2ccd3808afb48c *)self gasGaugeBatteryTemperature];
  v6 = HIDWORD(qword_1000AB82C);
  v49 = dword_1000AB83C;
  v7 = dword_1000AB8DC;
  v50 = qword_1000AB8E0;
  v51 = qword_1000AB82C;
  v8 = HIDWORD(qword_1000AB8EC);
  v9 = qword_1000AB8F4;
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
    [(tm48f05d1771cf4a49db2ccd3808afb48c *)self resetVTFilterState];
  }

  v12 = [-[CommonProduct findComponent:](self findComponent:{0), "currentLoadingIndex"}];
  filteredBacklightCurrentLI2 = self->_filteredBacklightCurrentLI2;
  v14 = (v12 * v12) / 100.0;
  if (filteredBacklightCurrentLI2 >= 0)
  {
    v14 = filteredBacklightCurrentLI2 + ((v14 - filteredBacklightCurrentLI2) * 0.14286);
  }

  self->_filteredBacklightCurrentLI2 = v14;
  if (v8 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v8;
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
  sub_10000533C(56, (v6 * 0.2962 + 35.0 + v7 * 0.6829 + self->_filteredTempRearCameraDieWithDefault * -0.005));
  sub_10000533C(54, (v5 * 0.102 + 100.0 + v49 * 0.513 + v7 * 0.35));
  sub_10000533C(55, v10);
  sub_10000533C(61, (self->_filteredBacklightCurrentLI2 * 0.366 + 129.7 + v7 * 0.589 + v50 * 0.338));
  sub_10000533C(60, (self->_filteredBacklightCurrentLI2 * 5.5 + 120.0 + v5 * -0.175 + v7 * 0.16 + v50 * 0.927));
  sub_10000533C(57, (v5 * 0.19 + 300.0 + v6 * 0.68));
  sub_10000533C(58, (v5 * 0.59 + 33.0 + v49 * 0.41));
  sub_10000533C(59, (self->_filteredBacklightCurrentLI2 * 0.437 + 152.3 + v6 * -0.493 + v7 * 1.479 + self->_filteredTempRearCameraDieWithDefault * 0.0223));
  sub_10000533C(63, (v5 * -0.132 + 130.0 + v51 * 0.089 + v50 * 1.021));
  v22 = qword_1000AB904;
  v23 = [(CommonProduct *)self findComponent:19];
  v24 = v22 / 100.0;
  *&v25 = v24;
  [v23 calculateControlEffort:v25];
  v26 = [(CommonProduct *)self findComponent:20];
  *&v27 = v24;
  [v26 calculateControlEffort:v27];
  v28 = dword_1000AB914;
  v29 = [(CommonProduct *)self findComponent:21];
  v30 = v28 / 100.0;
  *&v31 = v30;
  [v29 calculateControlEffort:v31];
  v32 = [(CommonProduct *)self findComponent:26];
  *&v33 = v30;
  [v32 calculateControlEffort:v33];
  v34 = SHIDWORD(qword_1000AB90C);
  v35 = [(CommonProduct *)self findComponent:22];
  *&v36 = v34 / 100.0;
  [v35 calculateControlEffort:v36];
  v37 = dword_1000AB920;
  v38 = [(CommonProduct *)self findComponent:23];
  *&v39 = v37 / 100.0;
  [v38 calculateControlEffort:v39];
  v40 = SHIDWORD(qword_1000AB904);
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
  block[2] = sub_10001B918;
  block[3] = &unk_100085260;
  block[4] = self;
  if (qword_1000AABB8 != -1)
  {
    dispatch_once(&qword_1000AABB8, block);
  }

  return self->gridX;
}

- (id)getGridY
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B9F4;
  block[3] = &unk_100085260;
  block[4] = self;
  if (qword_1000AABC0 != -1)
  {
    dispatch_once(&qword_1000AABC0, block);
  }

  return self->gridY;
}

- (int)compute2DGridTemps
{
  v3 = [(tm48f05d1771cf4a49db2ccd3808afb48c *)self gasGaugeBatteryTemperature];
  v5 = HIDWORD(qword_1000AB82C);
  v4 = qword_1000AB82C;
  v6 = dword_1000AB83C;
  v7 = SHIDWORD(qword_1000AB834);
  v8 = dword_1000AB8DC;
  v9 = qword_1000AB8E0;
  v10 = vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_100066DC0, xmmword_100066DB0, SHIDWORD(qword_1000AB834)), xmmword_100066DD0, dword_1000AB8DC), xmmword_100066DE0, qword_1000AB8E0)));
  *self->super.baseVT = v10;
  self->super.baseVT[2] = (v7 * -0.205 + 12.2 + v8 * 1.06 + v9 * 0.106);
  *&self->super.baseVT[3] = vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_100066E00, xmmword_100066DF0, v7), xmmword_100066E10, v8)));
  self->super.baseVT[5] = (self->_filteredBacklightCurrentLI2 * 0.236 + 135.4 + v8 * 0.7335 + v9 * 0.268 + v7 * -0.0835);
  self->super.baseVT[6] = (self->_filteredBacklightCurrentLI2 * 0.46 + 117.6 + v8 * 0.7605 + v9 * 0.2455 + v7 * -0.079);
  self->super.baseVT[7] = (self->_filteredBacklightCurrentLI2 * 0.352 + 73.1 + v8 * 0.815 + v9 * 0.1985 + v7 * -0.0685);
  self->super.baseVT[8] = (self->_filteredBacklightCurrentLI2 * 0.105 + -4.713 + v5 * -0.065 + v7 * -0.026 + v8 * 0.944 + v9 * 0.126);
  self->super.baseVT[9] = (self->_filteredBacklightCurrentLI2 * -0.0745 + -48.05 + v8 * 1.12 + v9 * 0.051 + v5 * -0.1715);
  self->super.baseVT[10] = (self->_filteredBacklightCurrentLI2 * 0.544 + 202.0 + v8 * 0.485 + v9 * 0.408);
  self->super.baseVT[11] = (self->_filteredBacklightCurrentLI2 * 0.825 + 200.0 + v8 * 0.505 + v9 * 0.392);
  self->super.baseVT[12] = (self->_filteredBacklightCurrentLI2 * 0.366 + 129.7 + v8 * 0.589 + v9 * 0.338);
  self->super.baseVT[13] = (self->_filteredBacklightCurrentLI2 * 0.85 + 102.0 + v8 * 0.664 + v9 * 0.285);
  self->super.baseVT[14] = (self->_filteredBacklightCurrentLI2 * 0.562 + 69.1 + v6 * 0.177 + v8 * 0.521 + v9 * 0.252);
  self->super.baseVT[15] = (self->_filteredBacklightCurrentLI2 * 0.917 + 215.7 + v8 * 0.298 + v9 * 0.603);
  self->super.baseVT[16] = (self->_filteredBacklightCurrentLI2 * 1.112 + 214.4 + v8 * 0.308 + v9 * 0.599);
  self->super.baseVT[17] = (self->_filteredBacklightCurrentLI2 * 1.075 + 236.0 + v8 * 0.328 + v9 * 0.579);
  self->super.baseVT[18] = (self->_filteredBacklightCurrentLI2 * 1.12 + 241.0 + v3 * 0.086 + v8 * 0.317 + v9 * 0.5);
  self->super.baseVT[19] = (self->_filteredBacklightCurrentLI2 * 0.8 + 255.0 + v3 * 0.11 + v8 * 0.33 + v9 * 0.46);
  self->super.baseVT[20] = (self->_filteredBacklightCurrentLI2 * 0.791 + 201.0 + v3 * -0.175 + v8 * 0.16 + v9 * 0.927);
  self->super.baseVT[21] = (self->_filteredBacklightCurrentLI2 * 1.25 + 189.0 + v8 * 0.106 + v9 * 0.832);
  self->super.baseVT[22] = (self->_filteredBacklightCurrentLI2 * 0.366 + 129.0 + v8 * 0.589 + v9 * 0.338);
  *&self->super.baseVT[23] = vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_100066E30, xmmword_100066E20, v3), xmmword_100066E40, v4), xmmword_100066E50, v8), xmmword_100066E60, v9)));
  v11 = vdupq_lane_s32(v10, 0);
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
  [(tm48f05d1771cf4a49db2ccd3808afb48c *)self gasGaugeBatteryTemperature];
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