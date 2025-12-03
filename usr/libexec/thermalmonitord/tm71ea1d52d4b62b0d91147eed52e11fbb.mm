@interface tm71ea1d52d4b62b0d91147eed52e11fbb
- (id)getGridX;
- (id)getGridY;
- (id)initProduct:(id)product;
- (int)compute2DGridTemps;
- (void)resetVTFilterState;
- (void)updateAllThermalLoad:(BOOL)load;
- (void)updateCoreAnalyticsInfo;
@end

@implementation tm71ea1d52d4b62b0d91147eed52e11fbb

- (id)initProduct:(id)product
{
  v6.receiver = self;
  v6.super_class = tm71ea1d52d4b62b0d91147eed52e11fbb;
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
  self->_filteredTempRearCameraDie = -1;
  self->_filteredTempRearCameraDieWithDefault = -1;
  self->_filteredBacklightCurrentLI2 = -1;
  self->_filteredArcModuleTemperature = -1;
}

- (void)updateAllThermalLoad:(BOOL)load
{
  v4 = qword_1000AB824;
  v5 = qword_1000AB82C;
  v84 = __PAIR64__(HIDWORD(qword_1000AB82C), HIDWORD(qword_1000AB824));
  v6 = qword_1000AB834;
  v7 = dword_1000AB83C;
  v9 = qword_1000AB8F4;
  v8 = HIDWORD(qword_1000AB8F4);
  v86 = HIDWORD(qword_1000AB8E0);
  v87 = HIDWORD(qword_1000AB834);
  if (load)
  {
    [(tm71ea1d52d4b62b0d91147eed52e11fbb *)self resetVTFilterState];
  }

  if (v9 <= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = v10 & ~(v10 >> 31);
  filteredTempRearCameraDie = self->_filteredTempRearCameraDie;
  if ((filteredTempRearCameraDie & 0x80000000) == 0)
  {
    v11 = (filteredTempRearCameraDie + ((v11 - filteredTempRearCameraDie) * 0.25));
  }

  self->_filteredTempRearCameraDie = v11;
  if (v6 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v6;
  }

  if (v13 <= v8)
  {
    v13 = v8;
  }

  filteredTempRearCameraDieWithDefault = self->_filteredTempRearCameraDieWithDefault;
  if ((filteredTempRearCameraDieWithDefault & 0x80000000) == 0)
  {
    v13 = (filteredTempRearCameraDieWithDefault + ((v13 - filteredTempRearCameraDieWithDefault) * 0.25));
  }

  self->_filteredTempRearCameraDieWithDefault = v13;
  v15 = [-[CommonProduct findComponent:](self findComponent:{0, v84), "currentLoadingIndex"}];
  v16 = (v15 * v15) / 100.0;
  filteredBacklightCurrentLI2 = self->_filteredBacklightCurrentLI2;
  if (filteredBacklightCurrentLI2 >= 0)
  {
    v16 = filteredBacklightCurrentLI2 + ((v16 - filteredBacklightCurrentLI2) * 0.14286);
  }

  self->_filteredBacklightCurrentLI2 = v16;
  v18 = qword_1000AB8EC & ~(qword_1000AB8EC >> 31);
  filteredArcModuleTemperature = self->_filteredArcModuleTemperature;
  if ((filteredArcModuleTemperature & 0x80000000) == 0)
  {
    v18 = (filteredArcModuleTemperature + ((v18 - filteredArcModuleTemperature) * 0.16667));
  }

  self->_filteredArcModuleTemperature = v18;
  v20 = [(CommonProduct *)self findComponent:18];
  v21 = [(CommonProduct *)self dieTempMaxAverage]/ 100.0;
  v22 = [(CommonProduct *)self dieTempFilteredMaxAverage]/ 100.0;
  *&v23 = v22;
  *&v22 = v21;
  [v20 calculateControlEffort:v22 trigger:v23];
  sub_10000533C(55, (v4 * 0.44 + -10.62 + v7 * 0.52 + self->_filteredTempRearCameraDie * 0.021));
  sub_10000533C(54, (v5 * 0.61 + 144.25 + v7 * 0.32));
  sub_10000533C(60, (v85 * 1.01 + -106.0 + SHIDWORD(v85) * -0.02));
  sub_10000533C(59, (v86 * 0.59 + -30.85 + self->_filteredBacklightCurrentLI2 * 0.85 + v4 * 0.4));
  sub_10000533C(56, (v85 * 0.37 + -63.16 + v87 * 0.59));
  sub_10000533C(57, (v5 * 0.58 + -74.85 + v87 * 0.4));
  sub_10000533C(58, (v85 * 0.64 + -1.74 + self->_filteredTempRearCameraDieWithDefault * 0.32));
  sub_10000533C(62, (v86 * 0.82 + 330.2 + SHIDWORD(v85) * 0.08 + self->_filteredArcModuleTemperature * 0.05));
  sub_10000533C(63, v4);
  v24 = dword_1000AB8FC;
  v25 = [(CommonProduct *)self findComponent:19];
  v26 = v24 / 100.0;
  *&v27 = v26;
  [v25 calculateControlEffort:v27];
  v28 = [(CommonProduct *)self findComponent:20];
  *&v29 = v26;
  [v28 calculateControlEffort:v29];
  v30 = dword_1000AB900;
  v31 = [(CommonProduct *)self findComponent:21];
  v32 = v30 / 100.0;
  *&v33 = v32;
  [v31 calculateControlEffort:v33];
  v34 = [(CommonProduct *)self findComponent:22];
  *&v35 = v32;
  [v34 calculateControlEffort:v35];
  v36 = xmmword_1000AB908;
  v37 = [(CommonProduct *)self findComponent:23];
  v38 = v36 / 100.0;
  *&v39 = v38;
  [v37 calculateControlEffort:v39];
  v40 = [(CommonProduct *)self findComponent:28];
  *&v41 = v38;
  [v40 calculateControlEffort:v41];
  v42 = unk_1000AB904;
  v43 = [(CommonProduct *)self findComponent:27];
  v44 = v42 / 100.0;
  *&v45 = v44;
  [v43 calculateControlEffort:v45];
  v46 = [(CommonProduct *)self findComponent:29];
  *&v47 = v44;
  [v46 calculateControlEffort:v47];
  v48 = SDWORD1(xmmword_1000AB908);
  v49 = [(CommonProduct *)self findComponent:24];
  *&v50 = v48 / 100.0;
  [v49 calculateControlEffort:v50];
  v51 = dword_1000AB91C;
  v52 = [(CommonProduct *)self findComponent:25];
  *&v53 = v51 / 100.0;
  [v52 calculateControlEffort:v53];
  v54 = SDWORD2(xmmword_1000AB908);
  v55 = [(CommonProduct *)self findComponent:26];
  *&v56 = v54 / 100.0;
  [v55 calculateControlEffort:v56];
  getChargerState = [(CommonProduct *)self getChargerState];
  if (getChargerState - 10 > 0x3C)
  {
    goto LABEL_24;
  }

  if (((1 << (getChargerState - 10)) & 0x1004010000100000) == 0)
  {
    if (getChargerState == 10)
    {
      v68 = xmmword_1000AB908;
      v69 = [(CommonProduct *)self findComponent:32];
      *&v70 = v68 / 100.0;
      [v69 calculateControlEffort:v70];
      v71 = unk_1000AB904;
      v72 = [(CommonProduct *)self findComponent:33];
      *&v73 = v71 / 100.0;
      [v72 calculateControlEffort:v73];
      v74 = [(CommonProduct *)self findComponent:30];
      LODWORD(v75) = 30.0;
      [v74 calculateControlEffort:v75];
      selfCopy2 = self;
      v77 = 31;
LABEL_26:
      v66 = [(CommonProduct *)selfCopy2 findComponent:v77];
      LODWORD(v67) = 30.0;
      goto LABEL_27;
    }

LABEL_24:
    if (getChargerState)
    {
      return;
    }

    v78 = [(CommonProduct *)self findComponent:30];
    LODWORD(v79) = 30.0;
    [v78 calculateControlEffort:v79];
    v80 = [(CommonProduct *)self findComponent:31];
    LODWORD(v81) = 30.0;
    [v80 calculateControlEffort:v81];
    v82 = [(CommonProduct *)self findComponent:32];
    LODWORD(v83) = 30.0;
    [v82 calculateControlEffort:v83];
    selfCopy2 = self;
    v77 = 33;
    goto LABEL_26;
  }

  v58 = [(CommonProduct *)self findComponent:32];
  LODWORD(v59) = 30.0;
  [v58 calculateControlEffort:v59];
  v60 = [(CommonProduct *)self findComponent:33];
  LODWORD(v61) = 30.0;
  [v60 calculateControlEffort:v61];
  v62 = xmmword_1000AB908;
  v63 = [(CommonProduct *)self findComponent:30];
  *&v64 = v62 / 100.0;
  [v63 calculateControlEffort:v64];
  v65 = unk_1000AB904;
  v66 = [(CommonProduct *)self findComponent:31];
  *&v67 = v65 / 100.0;
LABEL_27:

  [v66 calculateControlEffort:v67];
}

- (id)getGridX
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000474A0;
  block[3] = &unk_100085260;
  block[4] = self;
  if (qword_1000AB288 != -1)
  {
    dispatch_once(&qword_1000AB288, block);
  }

  return self->gridX;
}

- (id)getGridY
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004757C;
  block[3] = &unk_100085260;
  block[4] = self;
  if (qword_1000AB290 != -1)
  {
    dispatch_once(&qword_1000AB290, block);
  }

  return self->gridY;
}

- (int)compute2DGridTemps
{
  gasGaugeBatteryTemperature = [(tm71ea1d52d4b62b0d91147eed52e11fbb *)self gasGaugeBatteryTemperature];
  v4 = HIDWORD(qword_1000AB82C);
  v6 = HIDWORD(qword_1000AB834);
  v5 = dword_1000AB83C;
  v7 = qword_1000AB82C;
  v8 = SHIDWORD(qword_1000AB8E0);
  baseVT = self->super.baseVT;
  v10 = vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_1000661D0, xmmword_1000661C0, gasGaugeBatteryTemperature), xmmword_1000661E0, qword_1000AB82C), xmmword_1000661F0, SHIDWORD(qword_1000AB8E0))));
  v11 = vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_100067950, xmmword_100066200, gasGaugeBatteryTemperature), xmmword_100067960, qword_1000AB82C), xmmword_100067970, SHIDWORD(qword_1000AB8E0))));
  *baseVT = v10;
  *(baseVT + 1) = v11;
  baseVT[4] = (v7 * 0.55 + -135.0 + v8 * 0.42);
  *(baseVT + 5) = vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_100067980, xmmword_100066240, gasGaugeBatteryTemperature), xmmword_100067990, v7), xmmword_100066270, v8)));
  *(baseVT + 7) = vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_1000679A0, xmmword_100066280, gasGaugeBatteryTemperature), xmmword_1000679B0, v7), xmmword_1000662B0, v8)));
  baseVT[9] = (v7 * 0.13 + -262.0 + v4 * 0.34 + v8 * 0.59);
  *(baseVT + 5) = vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_1000662C0, vdupq_n_s64(0x3FD1DB22D0E56042uLL), gasGaugeBatteryTemperature), xmmword_1000662D0, v7), xmmword_1000662E0, v8)));
  *(baseVT + 6) = vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_100066300, xmmword_1000662F0, gasGaugeBatteryTemperature), xmmword_1000679C0, v7), xmmword_1000679D0, v8)));
  baseVT[14] = (v7 * 0.1 + -243.0 + v6 * 0.29 + v8 * 0.71);
  *(baseVT + 15) = vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_1000679F0, xmmword_1000679E0, gasGaugeBatteryTemperature), xmmword_100067A00, v8)));
  *(baseVT + 17) = vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_100066370, xmmword_100066360, gasGaugeBatteryTemperature), xmmword_100067A10, v8)));
  baseVT[19] = (gasGaugeBatteryTemperature * 0.13 + -142.0 + v5 * 0.01 + v8 * 0.91);
  baseVT[20] = (gasGaugeBatteryTemperature * -0.148 + 3.0 + v8 * 1.13);
  baseVT[21] = (v6 * -0.02 + -92.1 + v8 * 1.05);
  baseVT[22] = (gasGaugeBatteryTemperature * -0.01 + -21.0 + v8 * 1.05);
  baseVT[23] = (gasGaugeBatteryTemperature * 0.07 + 13.1 + v7 * -0.05 + v8 * 0.99);
  baseVT[24] = (gasGaugeBatteryTemperature * -0.02 + -118.0 + v5 * -0.04 + v8 * 1.13);
  v12 = vdupq_lane_s32(v10, 0);
  v13 = 1;
  v14 = v12;
  do
  {
    v15 = *&baseVT[v13];
    v12 = vminq_s32(v12, v15);
    v14 = vmaxq_s32(v14, v15);
    v13 += 4;
  }

  while (v13 != 25);
  sub_10000533C(61, (vmaxvq_s32(v14) - vminvq_s32(v12)));
  return baseVT;
}

- (void)updateCoreAnalyticsInfo
{
  [(tm71ea1d52d4b62b0d91147eed52e11fbb *)self gasGaugeBatteryTemperature];
  [(CommonProduct *)self dieTempMaxAverage];
  [(CommonProduct *)self dieTempMaxMax];
  [(CommonProduct *)self getChargerState];
  [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager isContextTriggered:"isContextTriggered:", 0];
  [(CommonProduct *)self thermalPressureLevel];
  AnalyticsSendEventLazy();
}

@end