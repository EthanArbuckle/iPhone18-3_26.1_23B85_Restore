@interface tma6b2eecc4252564f599b9a979e4e0602
- (id)getGridX;
- (id)getGridY;
- (id)initProduct:(id)product;
- (int)compute2DGridTemps;
- (void)resetVTFilterState;
- (void)updateAllThermalLoad:(BOOL)load;
- (void)updateCoreAnalyticsInfo;
@end

@implementation tma6b2eecc4252564f599b9a979e4e0602

- (id)initProduct:(id)product
{
  v6.receiver = self;
  v6.super_class = tma6b2eecc4252564f599b9a979e4e0602;
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
  self->_filteredTempArc = -1;
  self->_filteredBacklightCurrentLI2 = -1;
  self->_filteredTP3R = -1;
  self->_filteredTP3R_2DGrid = -1;
}

- (void)updateAllThermalLoad:(BOOL)load
{
  loadCopy = load;
  gasGaugeBatteryTemperature = [(tma6b2eecc4252564f599b9a979e4e0602 *)self gasGaugeBatteryTemperature];
  v81 = __PAIR64__(HIDWORD(qword_1000AB8E0), HIDWORD(qword_1000AB824));
  v7 = HIDWORD(qword_1000AB82C);
  v6 = qword_1000AB834;
  v79 = __PAIR64__(qword_1000AB82C, HIDWORD(qword_1000AB834));
  v9 = qword_1000AB8F4;
  v8 = HIDWORD(qword_1000AB8F4);
  if (loadCopy)
  {
    [(tma6b2eecc4252564f599b9a979e4e0602 *)self resetVTFilterState:__PAIR64__(qword_1000AB82C];
  }

  v10 = [-[CommonProduct findComponent:](self findComponent:{0, v79), "currentLoadingIndex"}];
  filteredBacklightCurrentLI2 = self->_filteredBacklightCurrentLI2;
  v12 = (v10 * v10) / 100.0;
  if (filteredBacklightCurrentLI2 >= 0)
  {
    v12 = filteredBacklightCurrentLI2 + ((v12 - filteredBacklightCurrentLI2) * 0.11111);
  }

  self->_filteredBacklightCurrentLI2 = v12;
  if (v9 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = v9;
  }

  v14 = v13 & ~(v13 >> 31);
  filteredTempRearCameraDie = self->_filteredTempRearCameraDie;
  if ((filteredTempRearCameraDie & 0x80000000) == 0)
  {
    v14 = (filteredTempRearCameraDie + ((v14 - filteredTempRearCameraDie) * 0.25));
  }

  self->_filteredTempRearCameraDie = v14;
  if (v7 <= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = v7;
  }

  if (v16 <= v8)
  {
    v16 = v8;
  }

  filteredTempRearCameraDieWithDefault = self->_filteredTempRearCameraDieWithDefault;
  if ((filteredTempRearCameraDieWithDefault & 0x80000000) == 0)
  {
    v16 = (filteredTempRearCameraDieWithDefault + ((v16 - filteredTempRearCameraDieWithDefault) * 0.25));
  }

  self->_filteredTempRearCameraDieWithDefault = v16;
  v18 = qword_1000AB8EC;
  filteredTempArc = self->_filteredTempArc;
  if ((filteredTempArc & 0x80000000) == 0)
  {
    v18 = (filteredTempArc + ((qword_1000AB8EC - filteredTempArc) * 0.16667));
  }

  self->_filteredTempArc = v18;
  filteredTP3R = self->_filteredTP3R;
  if ((filteredTP3R & 0x80000000) == 0)
  {
    v6 = (filteredTP3R + ((v6 - filteredTP3R) * 0.14286));
  }

  self->_filteredTP3R = v6;
  v21 = [(CommonProduct *)self findComponent:18];
  v22 = [(CommonProduct *)self dieTempMaxAverage]/ 100.0;
  v23 = [(CommonProduct *)self dieTempFilteredMaxAverage]/ 100.0;
  *&v24 = v23;
  *&v23 = v22;
  [v21 calculateControlEffort:v23 trigger:v24];
  sub_10000533C(55, (gasGaugeBatteryTemperature * 0.5 + -80.17 + v80 * 0.49 + self->_filteredTempRearCameraDie * 0.01));
  sub_10000533C(54, (gasGaugeBatteryTemperature * 0.45 + 222.2 + SHIDWORD(v80) * 0.48));
  sub_10000533C(57, (gasGaugeBatteryTemperature * 0.3 + -31.18 + self->_filteredTP3R * 0.7));
  sub_10000533C(60, (gasGaugeBatteryTemperature * 0.7 + 109.92 + v81 * 0.22));
  sub_10000533C(59, (gasGaugeBatteryTemperature * 0.14 + 146.3 + self->_filteredBacklightCurrentLI2 * 1.19 + SHIDWORD(v81) * 0.83));
  sub_10000533C(56, (gasGaugeBatteryTemperature * 0.61 + -49.44 + self->_filteredTP3R * 0.38));
  sub_10000533C(58, (gasGaugeBatteryTemperature * 0.64 + -15.28 + self->_filteredTempRearCameraDieWithDefault * 0.32));
  sub_10000533C(62, (SHIDWORD(v81) * 0.88 + 330.2 + SHIDWORD(v80) * 0.08 + self->_filteredTempArc * 0.02));
  sub_10000533C(63, gasGaugeBatteryTemperature);
  v25 = dword_1000AB8FC;
  v26 = [(CommonProduct *)self findComponent:19];
  v27 = v25 / 100.0;
  *&v28 = v27;
  [v26 calculateControlEffort:v28];
  v29 = [(CommonProduct *)self findComponent:20];
  *&v30 = v27;
  [v29 calculateControlEffort:v30];
  v31 = dword_1000AB900;
  v32 = [(CommonProduct *)self findComponent:21];
  v33 = v31 / 100.0;
  *&v34 = v33;
  [v32 calculateControlEffort:v34];
  v35 = [(CommonProduct *)self findComponent:22];
  *&v36 = v33;
  [v35 calculateControlEffort:v36];
  v37 = SHIDWORD(qword_1000AB904);
  v38 = [(CommonProduct *)self findComponent:23];
  v39 = v37 / 100.0;
  *&v40 = v39;
  [v38 calculateControlEffort:v40];
  v41 = [(CommonProduct *)self findComponent:32];
  *&v42 = v39;
  [v41 calculateControlEffort:v42];
  v43 = qword_1000AB904;
  v44 = [(CommonProduct *)self findComponent:27];
  v45 = v43 / 100.0;
  *&v46 = v45;
  [v44 calculateControlEffort:v46];
  v47 = [(CommonProduct *)self findComponent:33];
  *&v48 = v45;
  [v47 calculateControlEffort:v48];
  v49 = qword_1000AB90C;
  v50 = [(CommonProduct *)self findComponent:24];
  *&v51 = v49 / 100.0;
  [v50 calculateControlEffort:v51];
  v52 = dword_1000AB91C;
  v53 = [(CommonProduct *)self findComponent:25];
  *&v54 = v52 / 100.0;
  [v53 calculateControlEffort:v54];
  v55 = SHIDWORD(qword_1000AB90C);
  v56 = [(CommonProduct *)self findComponent:26];
  *&v57 = v55 / 100.0;
  [v56 calculateControlEffort:v57];
  getChargerState = [(CommonProduct *)self getChargerState];
  if (getChargerState - 10 > 0x3C)
  {
    goto LABEL_26;
  }

  if (((1 << (getChargerState - 10)) & 0x1004010000100000) == 0)
  {
    if (getChargerState == 10)
    {
      v69 = SHIDWORD(qword_1000AB904);
      v70 = [(CommonProduct *)self findComponent:28];
      *&v71 = v69 / 100.0;
      [v70 calculateControlEffort:v71];
      v72 = qword_1000AB904;
      v73 = [(CommonProduct *)self findComponent:29];
      *&v74 = v72 / 100.0;
LABEL_28:
      [v73 calculateControlEffort:v74];
      v77 = [(CommonProduct *)self findComponent:30];
      LODWORD(v78) = 30.0;
      [v77 calculateControlEffort:v78];
      v67 = [(CommonProduct *)self findComponent:31];
      LODWORD(v68) = 30.0;
      goto LABEL_29;
    }

LABEL_26:
    if (getChargerState)
    {
      return;
    }

    v75 = [(CommonProduct *)self findComponent:28];
    LODWORD(v76) = 30.0;
    [v75 calculateControlEffort:v76];
    v73 = [(CommonProduct *)self findComponent:29];
    LODWORD(v74) = 30.0;
    goto LABEL_28;
  }

  v59 = [(CommonProduct *)self findComponent:28];
  LODWORD(v60) = 30.0;
  [v59 calculateControlEffort:v60];
  v61 = [(CommonProduct *)self findComponent:29];
  LODWORD(v62) = 30.0;
  [v61 calculateControlEffort:v62];
  v63 = SHIDWORD(qword_1000AB904);
  v64 = [(CommonProduct *)self findComponent:30];
  *&v65 = v63 / 100.0;
  [v64 calculateControlEffort:v65];
  v66 = qword_1000AB904;
  v67 = [(CommonProduct *)self findComponent:31];
  *&v68 = v66 / 100.0;
LABEL_29:

  [v67 calculateControlEffort:v68];
}

- (id)getGridX
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F5D0;
  block[3] = &unk_100085260;
  block[4] = self;
  if (qword_1000A24A0 != -1)
  {
    dispatch_once(&qword_1000A24A0, block);
  }

  return self->gridX;
}

- (id)getGridY
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F6AC;
  block[3] = &unk_100085260;
  block[4] = self;
  if (qword_1000A24A8 != -1)
  {
    dispatch_once(&qword_1000A24A8, block);
  }

  return self->gridY;
}

- (int)compute2DGridTemps
{
  gasGaugeBatteryTemperature = [(tma6b2eecc4252564f599b9a979e4e0602 *)self gasGaugeBatteryTemperature];
  v5 = HIDWORD(qword_1000AB824);
  v4 = qword_1000AB82C;
  v6 = qword_1000AB834;
  v7 = dword_1000AB83C;
  v8 = HIDWORD(qword_1000AB8E0);
  filteredTP3R_2DGrid = self->_filteredTP3R_2DGrid;
  if ((filteredTP3R_2DGrid & 0x80000000) == 0)
  {
    v6 = (filteredTP3R_2DGrid + ((qword_1000AB834 - filteredTP3R_2DGrid) * 0.33333));
  }

  self->_filteredTP3R_2DGrid = v6;
  v10 = vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_1000661D0, xmmword_1000661C0, gasGaugeBatteryTemperature), xmmword_1000661E0, v5), xmmword_1000661F0, v8)));
  *self->super.baseVT = v10;
  *&self->super.baseVT[2] = vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_100066210, xmmword_100066200, gasGaugeBatteryTemperature), xmmword_100066220, v5), xmmword_100066230, v8)));
  self->super.baseVT[4] = (v5 * 0.55 + -165.0 + v8 * 0.48);
  *&self->super.baseVT[5] = vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_100066250, xmmword_100066240, gasGaugeBatteryTemperature), xmmword_100066260, v5), xmmword_100066270, v8)));
  *&self->super.baseVT[7] = vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_100066290, xmmword_100066280, gasGaugeBatteryTemperature), xmmword_1000662A0, v5), xmmword_1000662B0, v8)));
  self->super.baseVT[9] = (v5 * 0.13 + -262.0 + v4 * 0.34 + v8 * 0.59);
  *&self->super.baseVT[10] = vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_1000662C0, vdupq_n_s64(0x3FD1DB22D0E56042uLL), gasGaugeBatteryTemperature), xmmword_1000662D0, v5), xmmword_1000662E0, v8)));
  *&self->super.baseVT[12] = vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_100066300, xmmword_1000662F0, gasGaugeBatteryTemperature), xmmword_100066310, v5), xmmword_100066320, v8)));
  self->super.baseVT[14] = (v5 * 0.09 + -293.0 + self->_filteredTP3R_2DGrid * 0.29 + v8 * 0.71);
  *&self->super.baseVT[15] = vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_100066340, xmmword_100066330, gasGaugeBatteryTemperature), xmmword_100066350, v8)));
  *&self->super.baseVT[17] = vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_100066370, xmmword_100066360, gasGaugeBatteryTemperature), xmmword_100066380, v8)));
  self->super.baseVT[19] = (gasGaugeBatteryTemperature * 0.13 + -142.0 + v7 * 0.01 + v8 * 0.91);
  self->super.baseVT[20] = (gasGaugeBatteryTemperature * -0.148 + -208.0 + v8 * 1.23);
  self->super.baseVT[21] = (self->_filteredTP3R_2DGrid * -0.02 + -92.1 + v8 * 1.07);
  self->super.baseVT[22] = (gasGaugeBatteryTemperature * -0.01 + -21.0 + v8 * 1.05);
  self->super.baseVT[23] = (gasGaugeBatteryTemperature * 0.07 + 13.1 + v5 * -0.05 + v8 * 1.02);
  self->super.baseVT[24] = (gasGaugeBatteryTemperature * -0.02 + -118.0 + v7 * -0.04 + v8 * 1.13);
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
  sub_10000533C(61, (vmaxvq_s32(v13) - vminvq_s32(v11)));
  return self->super.baseVT;
}

- (void)updateCoreAnalyticsInfo
{
  [(tma6b2eecc4252564f599b9a979e4e0602 *)self gasGaugeBatteryTemperature];
  [(CommonProduct *)self dieTempMaxAverage];
  [(CommonProduct *)self dieTempMaxMax];
  [(CommonProduct *)self getChargerState];
  [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager isContextTriggered:"isContextTriggered:", 0];
  [(CommonProduct *)self thermalPressureLevel];
  AnalyticsSendEventLazy();
}

@end