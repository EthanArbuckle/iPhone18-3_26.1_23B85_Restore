@interface CLFallModelSelector
- (BOOL)fillFallThresholds:(FallThresholds *)a3;
- (BOOL)fillOtherFallModel:(FallModel *)a3;
- (BOOL)fillSlipFallModel:(FallModel *)a3;
- (BOOL)fillTripFallModel:(FallModel *)a3;
- (BOOL)selectModels;
- (CLFallModelSelector)init;
- (void)dealloc;
@end

@implementation CLFallModelSelector

- (CLFallModelSelector)init
{
  v4.receiver = self;
  v4.super_class = CLFallModelSelector;
  [(CLFallModelSelector *)&v4 init];
  if (self)
  {
    self->fSelectionFeatures = objc_opt_new();
  }

  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLFallModelSelector;
  [(CLFallModelSelector *)&v3 dealloc];
}

- (BOOL)selectModels
{
  *self->fTripFallModel.fRatioMaxAbsX = xmmword_102632ED8;
  LODWORD(self->fTripFallModel.fRatioMaxAbsX[16]) = dword_102632F18;
  v3 = unk_102632F08;
  *&self->fTripFallModel.fRatioMaxAbsX[8] = xmmword_102632EF8;
  *&self->fTripFallModel.fRatioMaxAbsX[12] = v3;
  *&self->fTripFallModel.fRatioMaxAbsX[4] = xmmword_102632EE8;
  LODWORD(self->fTripFallModel.fRatioMaxAbsY[16]) = dword_102632F5C;
  *&self->fTripFallModel.fRatioMaxAbsY[12] = unk_102632F4C;
  *&self->fTripFallModel.fRatioMaxAbsY[8] = unk_102632F3C;
  *&self->fTripFallModel.fRatioMaxAbsY[4] = unk_102632F2C;
  *self->fTripFallModel.fRatioMaxAbsY = *algn_102632F1C;
  *self->fTripFallModel.fRatioMaxAbsZ = unk_102632F60;
  v4 = unk_102632F70;
  v5 = unk_102632F80;
  v6 = unk_102632F90;
  LODWORD(self->fTripFallModel.fRatioMaxAbsZ[16]) = dword_102632FA0;
  *&self->fTripFallModel.fRatioMaxAbsZ[12] = v6;
  *&self->fTripFallModel.fRatioMaxAbsZ[8] = v5;
  *&self->fTripFallModel.fRatioMaxAbsZ[4] = v4;
  memcpy(self->fTripFallModel.fRatioMaxJerkVM, &unk_102632FA4, sizeof(self->fTripFallModel.fRatioMaxJerkVM));
  v7 = unk_1026330C0;
  *self->fTripFallModel.fRatioMinInertialZ = xmmword_1026330B0;
  *&self->fTripFallModel.fRatioMinInertialZ[4] = v7;
  LODWORD(self->fTripFallModel.fRatioMinInertialZ[20]) = dword_102633100;
  v8 = unk_1026330F0;
  *&self->fTripFallModel.fRatioMinInertialZ[12] = xmmword_1026330E0;
  *&self->fTripFallModel.fRatioMinInertialZ[16] = v8;
  *&self->fTripFallModel.fRatioMinInertialZ[8] = xmmword_1026330D0;
  v9 = qword_102633124;
  v10 = unk_102633114;
  *self->fTripFallModel.fRatioAccelPathLength = xmmword_102633104;
  *&self->fTripFallModel.fRatioAccelPathLength[4] = v10;
  *&self->fTripFallModel.fRatioAccelPathLength[8] = v9;
  v11 = xmmword_10263312C;
  v12 = *algn_10263313C;
  v13 = unk_10263315C;
  *&self->fTripFallModel.fRatioMaxAngleChangePreimpact[8] = xmmword_10263314C;
  *&self->fTripFallModel.fRatioMaxAngleChangePreimpact[12] = v13;
  *self->fTripFallModel.fRatioMaxAngleChangePreimpact = v11;
  *&self->fTripFallModel.fRatioMaxAngleChangePreimpact[4] = v12;
  v14 = xmmword_10263316C;
  v15 = *algn_10263317C;
  v16 = unk_10263319C;
  *&self->fTripFallModel.fRatioMaxAngleChangePostimpact[8] = xmmword_10263318C;
  *&self->fTripFallModel.fRatioMaxAngleChangePostimpact[12] = v16;
  *self->fTripFallModel.fRatioMaxAngleChangePostimpact = v14;
  *&self->fTripFallModel.fRatioMaxAngleChangePostimpact[4] = v15;
  *&self->fTripFallModel.fLikelihoodRatioInfo[0].firstBinEdge = xmmword_1026331AC;
  v17 = xmmword_1026331BC;
  v18 = unk_1026331CC;
  v19 = xmmword_1026331DC;
  *&self->fTripFallModel.fLikelihoodRatioInfo[5].binSize = qword_1026331EC;
  *&self->fTripFallModel.fLikelihoodRatioInfo[2].binNum = v18;
  *&self->fTripFallModel.fLikelihoodRatioInfo[4].firstBinEdge = v19;
  *&self->fTripFallModel.fLikelihoodRatioInfo[1].binSize = v17;
  v20 = xmmword_1026331F4;
  v21 = unk_102633204;
  v22 = xmmword_102633214;
  v23 = unk_102633224;
  LODWORD(self->fSlipFallModel.fRatioMaxAbsX[10]) = dword_102633234;
  *&self->fSlipFallModel.fRatioMaxAbsX[2] = v22;
  *&self->fSlipFallModel.fRatioMaxAbsX[6] = v23;
  *&self->fTripFallModel.fLikelihoodRatioInfo[6].firstBinEdge = v20;
  *&self->fTripFallModel.fLikelihoodRatioInfo[7].binSize = v21;
  v24 = unk_102633238;
  v25 = unk_102633248;
  v26 = unk_102633258;
  v27 = unk_102633268;
  LODWORD(self->fSlipFallModel.fRatioMaxAbsY[10]) = dword_102633278;
  *&self->fSlipFallModel.fRatioMaxAbsY[2] = v26;
  *&self->fSlipFallModel.fRatioMaxAbsY[6] = v27;
  *&self->fSlipFallModel.fRatioMaxAbsX[11] = v24;
  *&self->fSlipFallModel.fRatioMaxAbsX[15] = v25;
  v28 = *algn_10263327C;
  v29 = unk_10263328C;
  v30 = unk_10263329C;
  v31 = unk_1026332AC;
  LODWORD(self->fSlipFallModel.fRatioMaxAbsZ[10]) = dword_1026332BC;
  *&self->fSlipFallModel.fRatioMaxAbsZ[2] = v30;
  *&self->fSlipFallModel.fRatioMaxAbsZ[6] = v31;
  *&self->fSlipFallModel.fRatioMaxAbsY[11] = v28;
  *&self->fSlipFallModel.fRatioMaxAbsY[15] = v29;
  memcpy(&self->fSlipFallModel.fRatioMaxAbsZ[11], &unk_1026332C0, 0x10CuLL);
  v32 = unk_1026333FC;
  *&self->fSlipFallModel.fRatioMinInertialZ[2] = xmmword_1026333EC;
  *&self->fSlipFallModel.fRatioMinInertialZ[6] = v32;
  *&self->fSlipFallModel.fRatioMinInertialZ[10] = xmmword_10263340C;
  LODWORD(self->fSlipFallModel.fRatioMinInertialZ[14]) = dword_10263341C;
  v33 = unk_1026333DC;
  *&self->fSlipFallModel.fRatioMaxJerkVM[61] = xmmword_1026333CC;
  *&self->fSlipFallModel.fRatioMaxJerkVM[65] = v33;
  v34 = unk_102633430;
  *&self->fSlipFallModel.fRatioMinInertialZ[15] = xmmword_102633420;
  *&self->fSlipFallModel.fRatioMinInertialZ[19] = v34;
  *&self->fSlipFallModel.fRatioAccelPathLength[2] = qword_102633440;
  v35 = xmmword_102633468;
  *&self->fSlipFallModel.fRatioMaxAngleChangePreimpact[6] = unk_102633478;
  *&self->fSlipFallModel.fRatioMaxAngleChangePreimpact[2] = v35;
  v36 = xmmword_102633448;
  *&self->fSlipFallModel.fRatioAccelPathLength[8] = unk_102633458;
  *&self->fSlipFallModel.fRatioAccelPathLength[4] = v36;
  v37 = xmmword_1026334A8;
  *&self->fSlipFallModel.fRatioMaxAngleChangePostimpact[6] = unk_1026334B8;
  *&self->fSlipFallModel.fRatioMaxAngleChangePostimpact[2] = v37;
  v38 = xmmword_102633488;
  *&self->fSlipFallModel.fRatioMaxAngleChangePreimpact[14] = unk_102633498;
  *&self->fSlipFallModel.fRatioMaxAngleChangePreimpact[10] = v38;
  v39 = unk_1026334D8;
  *&self->fSlipFallModel.fRatioMaxAngleChangePostimpact[10] = xmmword_1026334C8;
  v40 = xmmword_1026334E8;
  v41 = unk_1026334F8;
  *&self->fSlipFallModel.fLikelihoodRatioInfo[3].binSize = qword_102633508;
  *&self->fSlipFallModel.fLikelihoodRatioInfo[2].firstBinEdge = v41;
  *&self->fSlipFallModel.fLikelihoodRatioInfo[0].binNum = v40;
  *&self->fSlipFallModel.fRatioMaxAngleChangePostimpact[14] = v39;
  v42 = xmmword_102633510;
  v43 = unk_102633520;
  v44 = xmmword_102633530;
  v45 = unk_102633540;
  LODWORD(self->fOtherFallModel.fRatioMaxAbsX[4]) = dword_102633550;
  *&self->fSlipFallModel.fLikelihoodRatioInfo[6].binNum = v44;
  *self->fOtherFallModel.fRatioMaxAbsX = v45;
  *&self->fSlipFallModel.fLikelihoodRatioInfo[4].firstBinEdge = v42;
  *&self->fSlipFallModel.fLikelihoodRatioInfo[5].binSize = v43;
  v46 = unk_102633554;
  v47 = unk_102633564;
  v48 = unk_102633574;
  v49 = unk_102633584;
  LODWORD(self->fOtherFallModel.fRatioMaxAbsY[4]) = dword_102633594;
  *&self->fOtherFallModel.fRatioMaxAbsX[13] = v48;
  *self->fOtherFallModel.fRatioMaxAbsY = v49;
  *&self->fOtherFallModel.fRatioMaxAbsX[5] = v46;
  *&self->fOtherFallModel.fRatioMaxAbsX[9] = v47;
  *&self->fOtherFallModel.fRatioMaxAbsY[5] = unk_102633598;
  v50 = unk_1026335A8;
  v51 = unk_1026335B8;
  v52 = unk_1026335C8;
  LODWORD(self->fOtherFallModel.fRatioMaxAbsZ[4]) = dword_1026335D8;
  *self->fOtherFallModel.fRatioMaxAbsZ = v52;
  *&self->fOtherFallModel.fRatioMaxAbsY[13] = v51;
  *&self->fOtherFallModel.fRatioMaxAbsY[9] = v50;
  memcpy(&self->fOtherFallModel.fRatioMaxAbsZ[5], &unk_1026335DC, 0x10CuLL);
  v53 = unk_102633718;
  *&self->fOtherFallModel.fRatioMaxJerkVM[63] = xmmword_102633708;
  *self->fOtherFallModel.fRatioMinInertialZ = v53;
  *&self->fOtherFallModel.fRatioMinInertialZ[4] = xmmword_102633728;
  LODWORD(self->fOtherFallModel.fRatioMinInertialZ[8]) = dword_102633738;
  v54 = unk_1026336F8;
  *&self->fOtherFallModel.fRatioMaxJerkVM[55] = xmmword_1026336E8;
  *&self->fOtherFallModel.fRatioMaxJerkVM[59] = v54;
  v55 = unk_10263374C;
  *&self->fOtherFallModel.fRatioMinInertialZ[9] = xmmword_10263373C;
  *&self->fOtherFallModel.fRatioMinInertialZ[13] = v55;
  *&self->fOtherFallModel.fRatioMinInertialZ[17] = qword_10263375C;
  v56 = unk_102633794;
  *&self->fOtherFallModel.fRatioAccelPathLength[6] = xmmword_102633784;
  *self->fOtherFallModel.fRatioMaxAngleChangePreimpact = v56;
  v57 = *algn_102633774;
  *&self->fOtherFallModel.fRatioMinInertialZ[19] = xmmword_102633764;
  *&self->fOtherFallModel.fRatioAccelPathLength[2] = v57;
  v58 = unk_1026337D4;
  *&self->fOtherFallModel.fRatioMaxAngleChangePreimpact[12] = xmmword_1026337C4;
  *self->fOtherFallModel.fRatioMaxAngleChangePostimpact = v58;
  v59 = *algn_1026337B4;
  *&self->fOtherFallModel.fRatioMaxAngleChangePreimpact[4] = xmmword_1026337A4;
  *&self->fOtherFallModel.fRatioMaxAngleChangePreimpact[8] = v59;
  v60 = xmmword_1026337E4;
  v61 = unk_1026337F4;
  v62 = xmmword_102633804;
  v63 = unk_102633814;
  *&self->fOtherFallModel.fLikelihoodRatioInfo[1].binSize = qword_102633824;
  *&self->fOtherFallModel.fRatioMaxAngleChangePostimpact[12] = v62;
  *&self->fOtherFallModel.fLikelihoodRatioInfo[0].firstBinEdge = v63;
  *&self->fOtherFallModel.fRatioMaxAngleChangePostimpact[4] = v60;
  *&self->fOtherFallModel.fRatioMaxAngleChangePostimpact[8] = v61;
  v64 = [(NSMutableDictionary *)self->fSelectionFeatures objectForKey:@"Age"];
  v65 = [(NSMutableDictionary *)self->fSelectionFeatures objectForKey:@"Gender"];
  v66 = [(NSMutableDictionary *)self->fSelectionFeatures objectForKey:@"Height"];
  v67 = [(NSMutableDictionary *)self->fSelectionFeatures objectForKey:@"Weight"];
  v68 = [(NSMutableDictionary *)self->fSelectionFeatures objectForKey:@"Pal"];
  v69 = [(NSMutableDictionary *)self->fSelectionFeatures objectForKey:@"Vo2max"];
  v70 = [(NSMutableDictionary *)self->fSelectionFeatures objectForKey:@"MetMinPercentile"];
  v180 = [(NSMutableDictionary *)self->fSelectionFeatures objectForKey:@"MetMinCount"];
  v71 = [(NSMutableDictionary *)self->fSelectionFeatures objectForKey:@"Workout"];
  v72 = [(NSMutableDictionary *)self->fSelectionFeatures objectForKey:@"HKWorkout"];
  v181 = [(NSMutableDictionary *)self->fSelectionFeatures objectForKey:@"BackgroundAWDLoggingEnabled"];
  if (v64)
  {
    [v64 floatValue];
  }

  else
  {
    *&v73 = NAN;
  }

  v193 = *&v73;
  v192 = [v65 intValue];
  if (v66)
  {
    [v66 floatValue];
  }

  else
  {
    *&v74 = NAN;
  }

  v191 = *&v74;
  if (v67)
  {
    [v67 floatValue];
  }

  else
  {
    *&v75 = NAN;
  }

  v190 = *&v75;
  if (v68)
  {
    [v68 floatValue];
  }

  else
  {
    *&v76 = NAN;
  }

  v189 = *&v76;
  if (v69)
  {
    [v69 floatValue];
  }

  else
  {
    *&v77 = NAN;
  }

  v188 = *&v77;
  if (v70)
  {
    [v70 doubleValue];
  }

  else
  {
    *&v78 = NAN;
  }

  v187 = *&v78;
  if (v180)
  {
    v79 = [v70 integerValue];
  }

  else
  {
    v79 = 0;
  }

  v186 = v79;
  if (v71)
  {
    v80 = [v71 integerValue];
  }

  else
  {
    v80 = 0;
  }

  v185 = v80;
  if (v72)
  {
    v81 = [v72 integerValue];
  }

  else
  {
    v81 = 0;
  }

  v184 = v81;
  if (v181)
  {
    v82 = [v181 BOOLValue];
  }

  else
  {
    v82 = 0;
  }

  sub_10051515C("BehaviorOverrideAge", &v193);
  sub_1005152A0("BehaviorOverrideGender", &v192);
  sub_10051515C("BehaviorOverrideHeight", &v191);
  sub_10051515C("BehaviorOverrideWeight", &v190);
  sub_10051515C("BehaviorOverridePal", &v189);
  sub_10051515C("BehaviorOverrideVO2Max", &v188);
  sub_10001CAF4(buf);
  v83 = sub_1000B9370(*buf, "BehaviorOverrideMetMinPercentile", &v187);
  if (*v195)
  {
    sub_100008080(*v195);
  }

  if (v83)
  {
    if (qword_1025D4330 != -1)
    {
      sub_1018B1424();
    }

    v84 = qword_1025D4338;
    if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_INFO))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      *v195 = 2082;
      *&v195[2] = "";
      v196 = 2082;
      v197 = COERCE_DOUBLE("BehaviorOverrideMetMinPercentile");
      v198 = 1026;
      *v199 = v187;
      _os_log_impl(dword_100000000, v84, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Overriding behavior feature, key:%{public, location:escape_only}s, value:%{public}d}", buf, 0x22u);
    }
  }

  sub_1005153E0("BehaviorOverrideMetMinCount", &v186);
  sub_1005153E0("BehaviorOverrideWorkout", &v185);
  sub_1005153E0("BehaviorOverrideHKWorkout", &v184);
  if (qword_1025D4330 != -1)
  {
    sub_1018B1424();
  }

  v85 = qword_1025D4338;
  if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68291587;
    *&buf[4] = 0;
    *v195 = 2082;
    *&v195[2] = "";
    v196 = 2049;
    v197 = v193;
    v198 = 1025;
    *v199 = v192;
    *&v199[4] = 2049;
    *&v199[6] = v191;
    *&v199[14] = 2049;
    *&v199[16] = v190;
    *&v199[24] = 2049;
    *&v199[26] = v189;
    *&v199[34] = 2049;
    *&v199[36] = v188;
    *&v199[44] = 2049;
    *&v199[46] = v187;
    *&v199[54] = 2049;
    *&v199[56] = v186;
    *v200 = 2049;
    *&v200[2] = v185;
    *v201 = 2049;
    *&v201[2] = v184;
    _os_log_impl(dword_100000000, v85, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Selecting models, age:%{private}f, gender:%{private}d, height:%{private}f, weight:%{private}f, pal:%{private}f, vo2max:%{private}f, metminpercentile:%{private}f, metminCount:%{private}ld, workout:%{private}ld, hkWorkout:%{private}ld}", buf, 0x72u);
  }

  v86 = &self->fOtherFallModel.fLikelihoodRatioInfo[2];
  *&self->fOtherFallModel.fLikelihoodRatioInfo[4].binSize = 0x41A0000041033333;
  self->fOtherFallModel.fLikelihoodRatioInfo[5].firstBinEdge = 8.0;
  v87 = v193;
  if ((LODWORD(v193) & 0x7FFFFFFFu) > 0x7F7FFFFF || v193 < 65.0)
  {
    *&v86->firstBinEdge = xmmword_101C7CFD0;
    self->fOtherFallModel.fLikelihoodRatioInfo[3].binSize = 4.5;
    *&self->fOtherFallModel.fLikelihoodRatioInfo[3].binNum = 0x4089999A420A6666;
    *&self->fOtherFallModel.fLikelihoodRatioInfo[5].binSize = 0xA00000023;
    self->fOtherFallModel.fLikelihoodRatioInfo[6].firstBinEdge = 0.05;
    self->fOtherFallModel.fLikelihoodRatioInfo[7].firstBinEdge = 7.0;
    *&self->fThresholds.fImpactMaxAccelNormAlertThreshold = 0x1400000014;
    LODWORD(self->fThresholds.fImpactMaxAccelNormLoggingHeartRateThreshold) = 30;
    LOWORD(self->fThresholds.fImpactMaxAccelNormLoggingHighResolutionSensorDataThreshold) = 257;
    BYTE2(self->fThresholds.fImpactMaxAccelNormLoggingHighResolutionSensorDataThreshold) = 1;
    if (qword_1025D4330 != -1)
    {
      sub_1018B1424();
    }

    v90 = qword_1025D4338;
    if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_DEBUG))
    {
      firstBinEdge = self->fOtherFallModel.fLikelihoodRatioInfo[2].firstBinEdge;
      binSize = self->fOtherFallModel.fLikelihoodRatioInfo[5].binSize;
      v93 = *&self->fOtherFallModel.fLikelihoodRatioInfo[5].binNum;
      v94 = self->fOtherFallModel.fLikelihoodRatioInfo[6].firstBinEdge;
      v95 = self->fOtherFallModel.fLikelihoodRatioInfo[7].firstBinEdge;
      fImpactMaxAccelNormAlertThreshold = self->fThresholds.fImpactMaxAccelNormAlertThreshold;
      fImpactMaxAccelNormLoggingStatsThreshold = self->fThresholds.fImpactMaxAccelNormLoggingStatsThreshold;
      fImpactMaxAccelNormLoggingHeartRateThreshold = self->fThresholds.fImpactMaxAccelNormLoggingHeartRateThreshold;
      fImpactMaxAccelNormLoggingHighResolutionSensorDataThreshold_low = LOBYTE(self->fThresholds.fImpactMaxAccelNormLoggingHighResolutionSensorDataThreshold);
      v100 = BYTE1(self->fThresholds.fImpactMaxAccelNormLoggingHighResolutionSensorDataThreshold);
      v101 = BYTE2(self->fThresholds.fImpactMaxAccelNormLoggingHighResolutionSensorDataThreshold);
      *buf = 68292355;
      *&buf[4] = 0;
      *v195 = 2082;
      *&v195[2] = "";
      v196 = 2050;
      v197 = firstBinEdge;
      v198 = 2049;
      *v199 = v193;
      *&v199[8] = 1025;
      *&v199[10] = binSize;
      *&v199[14] = 1025;
      *&v199[16] = v93;
      *&v199[20] = 2049;
      *&v199[22] = v187;
      *&v199[30] = 2049;
      *&v199[32] = v94;
      *&v199[40] = 2049;
      *&v199[42] = v95;
      *&v199[50] = 1025;
      *&v199[52] = fImpactMaxAccelNormAlertThreshold;
      *&v199[56] = 1025;
      *&v199[58] = fImpactMaxAccelNormLoggingStatsThreshold;
      *&v199[62] = 1025;
      *v200 = fImpactMaxAccelNormLoggingHeartRateThreshold;
      *&v200[4] = 1025;
      *&v200[6] = fImpactMaxAccelNormLoggingHighResolutionSensorDataThreshold_low;
      *v201 = 1025;
      *&v201[2] = v100;
      *&v201[6] = 1025;
      *&v201[8] = v101;
      _os_log_impl(dword_100000000, v90, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Model Selector - Picked thresholds based on features, impactMaxAccelNormAlertThreshold:%{public}f, age:%{private}f, totalLongLieThreshold:%{private}d, consecutiveLongLieThreshold:%{private}d, metminpercentile:%{private}f, alertGatingMotionThreshold:%{private}f, cyclingImpactMaxAbsYThreshold:%{private}f, otherWorkoutQuiescenceThresholdLow:%{private}d, otherWorkoutQuiescenceThresholdHigh:%{private}d, otherWorkoutConsecutiveLongLieThreshold:%{private}d, otherWorkoutShouldCancelAlertOnStepsThreshold:%{private}hhd, otherWorkoutShouldCancelAlertOnStandThreshold:%{private}hhd, otherWorkoutShouldCancelAlertOnActiveThreshold:%{private}hhd}", buf, 0x74u);
    }

    if (v82)
    {
      *buf = -1;
      v102 = sub_1000206B4();
      sub_1000052CC(v102, @"FallRandomBucket", buf);
      v103 = *buf;
      if (*buf >= 6u)
      {
        v103 = arc4random_uniform(6u);
        *buf = v103;
        v104 = sub_1000206B4();
        sub_1000F2D48(v104, @"FallRandomBucket", buf);
        v105 = sub_1000206B4();
        (*(*v105 + 944))(v105);
      }

      LODWORD(v86->firstBinEdge) = dword_101D06E4C[v103];
      if (qword_1025D4330 != -1)
      {
        sub_1018B1424();
      }

      v106 = qword_1025D4338;
      if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_DEBUG))
      {
        v107 = v86->firstBinEdge;
        *buf = 68289795;
        *&buf[4] = 0;
        *v195 = 2082;
        *&v195[2] = "";
        v196 = 2050;
        v197 = v107;
        v198 = 2049;
        *v199 = v193;
        *&v199[8] = 2049;
        *&v199[10] = v187;
        _os_log_impl(dword_100000000, v106, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Model Selector - Revised thresholds based on background analytics requirements, impactMaxAccelNormAlertThreshold:%{public}f, age:%{private}f, metminpercentile:%{private}f}", buf, 0x30u);
      }
    }
  }

  else
  {
    *&v86->firstBinEdge = xmmword_101C7CFE0;
    *&self->fOtherFallModel.fLikelihoodRatioInfo[3].binSize = 0x420A666640900000;
    self->fOtherFallModel.fLikelihoodRatioInfo[4].firstBinEdge = 4.3;
    *&self->fOtherFallModel.fLikelihoodRatioInfo[5].binSize = 0xA00000018;
    self->fOtherFallModel.fLikelihoodRatioInfo[6].firstBinEdge = 0.05;
    self->fOtherFallModel.fLikelihoodRatioInfo[7].firstBinEdge = 10.0;
    v88 = 0x600000006;
    if (((v184 - 3) > 0x3E || ((1 << (v184 - 3)) & 0x402931C2835080BFLL) == 0) && v184 != 1)
    {
      v88 = 0x300000002;
    }

    *&self->fThresholds.fImpactMaxAccelNormAlertThreshold = v88;
    LODWORD(self->fThresholds.fImpactMaxAccelNormLoggingHeartRateThreshold) = 10;
    LOWORD(self->fThresholds.fImpactMaxAccelNormLoggingHighResolutionSensorDataThreshold) = 0;
    BYTE2(self->fThresholds.fImpactMaxAccelNormLoggingHighResolutionSensorDataThreshold) = 0;
    if ((*&v187 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v108 = v187;
      if (v108 >= 2.4)
      {
        if (v108 <= 5.1)
        {
          v109 = 0;
          v89 = -1;
          v110 = NAN;
          do
          {
            v111 = vabds_f32(v108, dword_101D0658C[v109]);
            if (v111 < v110 || (LODWORD(v110) & 0x7FFFFFFFu) > 0x7F7FFFFF)
            {
              v89 = v109;
              v110 = v111;
            }

            ++v109;
          }

          while (v109 != 28);
        }

        else
        {
          v89 = 27;
        }
      }

      else
      {
        v89 = 0;
      }
    }

    else
    {
      v89 = -1;
    }

    if (v87 < 68.0)
    {
      v114 = 0;
      goto LABEL_88;
    }

    if (v87 > 86.0)
    {
      v114 = 18;
      goto LABEL_88;
    }

    v115 = 0;
    v114 = -1;
    v116 = NAN;
    do
    {
      v117 = vabds_f32(v87, dword_101D06540[v115]);
      if (v117 < v116 || (LODWORD(v116) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        v114 = v115;
        v116 = v117;
      }

      ++v115;
    }

    while (v115 != 19);
    if ((v114 & 0x80000000) == 0)
    {
LABEL_88:
      v120 = *(&unk_101D065FC + v114 + 266);
      if (v89 < 0)
      {
        v86->firstBinEdge = v120;
        if (qword_1025D4330 != -1)
        {
          sub_1018B1424();
        }

        v125 = qword_1025D4338;
        if (!os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_103;
        }

        v127 = self->fOtherFallModel.fLikelihoodRatioInfo[2].firstBinEdge;
        v128 = self->fOtherFallModel.fLikelihoodRatioInfo[5].binSize;
        v129 = *&self->fOtherFallModel.fLikelihoodRatioInfo[5].binNum;
        v130 = self->fOtherFallModel.fLikelihoodRatioInfo[6].firstBinEdge;
        v131 = self->fOtherFallModel.fLikelihoodRatioInfo[7].firstBinEdge;
        v132 = self->fThresholds.fImpactMaxAccelNormAlertThreshold;
        v133 = self->fThresholds.fImpactMaxAccelNormLoggingStatsThreshold;
        v134 = self->fThresholds.fImpactMaxAccelNormLoggingHeartRateThreshold;
        v135 = LOBYTE(self->fThresholds.fImpactMaxAccelNormLoggingHighResolutionSensorDataThreshold);
        v136 = BYTE1(self->fThresholds.fImpactMaxAccelNormLoggingHighResolutionSensorDataThreshold);
        v137 = BYTE2(self->fThresholds.fImpactMaxAccelNormLoggingHighResolutionSensorDataThreshold);
        *buf = 68292355;
        *&buf[4] = 0;
        *v195 = 2082;
        *&v195[2] = "";
        v196 = 2050;
        v197 = v127;
        v198 = 1025;
        *v199 = v128;
        *&v199[4] = 1025;
        *&v199[6] = v129;
        *&v199[10] = 2049;
        *&v199[12] = v193;
        *&v199[20] = 2049;
        *&v199[22] = v187;
        *&v199[30] = 2049;
        *&v199[32] = v130;
        *&v199[40] = 2049;
        *&v199[42] = v131;
        *&v199[50] = 1025;
        *&v199[52] = v132;
        *&v199[56] = 1025;
        *&v199[58] = v133;
        *&v199[62] = 1025;
        *v200 = v134;
        *&v200[4] = 1025;
        *&v200[6] = v135;
        *v201 = 1025;
        *&v201[2] = v136;
        *&v201[6] = 1025;
        *&v201[8] = v137;
        v138 = "{msg%{public}.0s:Model Selector - Picked thresholds based on age only, impactMaxAccelNormAlertThreshold:%{public}f, totalLongLieThreshold:%{private}d, consecutiveLongLieThreshold:%{private}d, age:%{private}f, metminpercentile:%{private}f, alertGatingMotionThreshold:%{private}f, cyclingImpactMaxAbsYThreshold:%{private}f, otherWorkoutQuiescenceThresholdLow:%{private}d, otherWorkoutQuiescenceThresholdHigh:%{private}d, otherWorkoutConsecutiveLongLieThreshold:%{private}d, otherWorkoutShouldCancelAlertOnStepsThreshold:%{private}hhd, otherWorkoutShouldCancelAlertOnStandThreshold:%{private}hhd, otherWorkoutShouldCancelAlertOnActiveThreshold:%{private}hhd}";
        v139 = v125;
        v140 = 116;
      }

      else
      {
        v182 = 14;
        v183 = 7;
        sub_1005152A0("BehaviorOverrideThresholdConvergenceMinimumDayCount", &v183);
        sub_1005152A0("BehaviorOverrideThresholdConvergenceMaximumDayCount", &v182);
        v121 = 48 * v183;
        v122 = 48 * v182;
        v123 = (v186 - 48 * v183) / (48 * v182 - 48 * v183);
        if (v123 >= 0.0)
        {
          v141 = *(&unk_101D065FC + 19 * v89 + v114);
          if (v123 >= 1.0)
          {
            v86->firstBinEdge = v141;
            v124 = 1.0;
          }

          else
          {
            v86->firstBinEdge = (v120 * (1.0 - v123)) + (v123 * v141);
            v124 = v123;
          }
        }

        else
        {
          v86->firstBinEdge = v120;
          v124 = 0.0;
        }

        if (qword_1025D4330 != -1)
        {
          sub_1018B1424();
        }

        v142 = qword_1025D4338;
        if (!os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_103;
        }

        v143 = self->fOtherFallModel.fLikelihoodRatioInfo[2].firstBinEdge;
        v144 = self->fOtherFallModel.fLikelihoodRatioInfo[5].binSize;
        v145 = *&self->fOtherFallModel.fLikelihoodRatioInfo[5].binNum;
        v146 = self->fOtherFallModel.fLikelihoodRatioInfo[6].firstBinEdge;
        v147 = self->fOtherFallModel.fLikelihoodRatioInfo[7].firstBinEdge;
        v148 = self->fThresholds.fImpactMaxAccelNormAlertThreshold;
        v149 = self->fThresholds.fImpactMaxAccelNormLoggingStatsThreshold;
        v150 = self->fThresholds.fImpactMaxAccelNormLoggingHeartRateThreshold;
        v151 = LOBYTE(self->fThresholds.fImpactMaxAccelNormLoggingHighResolutionSensorDataThreshold);
        v152 = BYTE1(self->fThresholds.fImpactMaxAccelNormLoggingHighResolutionSensorDataThreshold);
        v153 = BYTE2(self->fThresholds.fImpactMaxAccelNormLoggingHighResolutionSensorDataThreshold);
        *buf = 68293379;
        *&buf[4] = 0;
        *v195 = 2082;
        *&v195[2] = "";
        v196 = 2050;
        v197 = v143;
        v198 = 1025;
        *v199 = v144;
        *&v199[4] = 1025;
        *&v199[6] = v145;
        *&v199[10] = 1026;
        *&v199[12] = v121;
        *&v199[16] = 1026;
        *&v199[18] = v122;
        *&v199[22] = 2050;
        *&v199[24] = v186;
        *&v199[32] = 2050;
        *&v199[34] = v124;
        *&v199[42] = 2049;
        *&v199[44] = v193;
        *&v199[52] = 2049;
        *&v199[54] = v187;
        *&v199[62] = 2049;
        *v200 = v146;
        *&v200[8] = 2049;
        *v201 = v147;
        *&v201[8] = 1025;
        *&v201[10] = v148;
        v202 = 1025;
        v203 = v149;
        v204 = 1025;
        v205 = v150;
        v206 = 1025;
        v207 = v151;
        v208 = 1025;
        v209 = v152;
        v210 = 1025;
        v211 = v153;
        v138 = "{msg%{public}.0s:Model Selector - Picked thresholds based on features, impactMaxAccelNormAlertThreshold:%{public}f, totalLongLieThreshold:%{private}d, consecutiveLongLieThreshold:%{private}d, minMetminCount:%{public}d, maxMetminCount:%{public}d, metminCount:%{public}ld, alpha:%{public}f, age:%{private}f, metminpercentile:%{private}f, alertGatingMotionThreshold:%{private}f, cyclingImpactMaxAbsYThreshold:%{private}f, otherWorkoutQuiescenceThresholdLow:%{private}d, otherWorkoutQuiescenceThresholdHigh:%{private}d, otherWorkoutConsecutiveLongLieThreshold:%{private}d, otherWorkoutShouldCancelAlertOnStepsThreshold:%{private}hhd, otherWorkoutShouldCancelAlertOnStandThreshold:%{private}hhd, otherWorkoutShouldCancelAlertOnActiveThreshold:%{private}hhd}";
        v139 = v142;
        v140 = 148;
      }

      _os_log_impl(dword_100000000, v139, OS_LOG_TYPE_DEFAULT, v138, buf, v140);
LABEL_103:
      v126.i32[0] = LODWORD(self->fOtherFallModel.fLikelihoodRatioInfo[2].firstBinEdge);
      v154 = vdup_lane_s32(v126, 0);
      *&self->fOtherFallModel.fLikelihoodRatioInfo[2].binSize = vbsl_s8(vcgt_f32(v154, *&self->fOtherFallModel.fLikelihoodRatioInfo[2].binSize), *&self->fOtherFallModel.fLikelihoodRatioInfo[2].binSize, v154);
      if (self->fOtherFallModel.fLikelihoodRatioInfo[3].firstBinEdge < *v126.i32)
      {
        v126.i32[0] = LODWORD(self->fOtherFallModel.fLikelihoodRatioInfo[3].firstBinEdge);
      }

      LODWORD(self->fOtherFallModel.fLikelihoodRatioInfo[3].firstBinEdge) = v126.i32[0];
      return 1;
    }

    if (qword_1025D4330 != -1)
    {
      sub_1018B1424();
    }

    v156 = qword_1025D4338;
    if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_FAULT))
    {
      v157 = self->fOtherFallModel.fLikelihoodRatioInfo[2].firstBinEdge;
      v158 = self->fOtherFallModel.fLikelihoodRatioInfo[5].binSize;
      v159 = *&self->fOtherFallModel.fLikelihoodRatioInfo[5].binNum;
      v160 = self->fOtherFallModel.fLikelihoodRatioInfo[6].firstBinEdge;
      v161 = self->fOtherFallModel.fLikelihoodRatioInfo[7].firstBinEdge;
      v162 = self->fThresholds.fImpactMaxAccelNormAlertThreshold;
      v163 = self->fThresholds.fImpactMaxAccelNormLoggingStatsThreshold;
      v164 = self->fThresholds.fImpactMaxAccelNormLoggingHeartRateThreshold;
      v165 = LOBYTE(self->fThresholds.fImpactMaxAccelNormLoggingHighResolutionSensorDataThreshold);
      v166 = BYTE1(self->fThresholds.fImpactMaxAccelNormLoggingHighResolutionSensorDataThreshold);
      v167 = BYTE2(self->fThresholds.fImpactMaxAccelNormLoggingHighResolutionSensorDataThreshold);
      *buf = 68292355;
      *&buf[4] = 0;
      *v195 = 2082;
      *&v195[2] = "";
      v196 = 2050;
      v197 = v157;
      v198 = 1025;
      *v199 = v158;
      *&v199[4] = 1025;
      *&v199[6] = v159;
      *&v199[10] = 2049;
      *&v199[12] = v193;
      *&v199[20] = 2049;
      *&v199[22] = v187;
      *&v199[30] = 2049;
      *&v199[32] = v160;
      *&v199[40] = 2049;
      *&v199[42] = v161;
      *&v199[50] = 1025;
      *&v199[52] = v162;
      *&v199[56] = 1025;
      *&v199[58] = v163;
      *&v199[62] = 1025;
      *v200 = v164;
      *&v200[4] = 1025;
      *&v200[6] = v165;
      *v201 = 1025;
      *&v201[2] = v166;
      *&v201[6] = 1025;
      *&v201[8] = v167;
      _os_log_impl(dword_100000000, v156, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Model Selector - Could not pick thresholds based on available features - Falling back to defaults, impactMaxAccelNormAlertThreshold:%{public}f, totalLongLieThreshold:%{private}d, consecutiveLongLieThreshold:%{private}d, age:%{private}f, metminpercentile:%{private}f, alertGatingMotionThreshold:%{private}f, cyclingImpactMaxAbsYThreshold:%{private}f, otherWorkoutQuiescenceThresholdLow:%{private}d, otherWorkoutQuiescenceThresholdHigh:%{private}d, otherWorkoutConsecutiveLongLieThreshold:%{private}d, otherWorkoutShouldCancelAlertOnStepsThreshold:%{private}hhd, otherWorkoutShouldCancelAlertOnStandThreshold:%{private}hhd, otherWorkoutShouldCancelAlertOnActiveThreshold:%{private}hhd}", buf, 0x74u);
      if (qword_1025D4330 != -1)
      {
        sub_1018B1424();
      }
    }

    v168 = qword_1025D4338;
    if (os_signpost_enabled(qword_1025D4338))
    {
      v169 = self->fOtherFallModel.fLikelihoodRatioInfo[2].firstBinEdge;
      v170 = self->fOtherFallModel.fLikelihoodRatioInfo[5].binSize;
      v171 = *&self->fOtherFallModel.fLikelihoodRatioInfo[5].binNum;
      v172 = self->fOtherFallModel.fLikelihoodRatioInfo[6].firstBinEdge;
      v173 = self->fOtherFallModel.fLikelihoodRatioInfo[7].firstBinEdge;
      v174 = self->fThresholds.fImpactMaxAccelNormAlertThreshold;
      v175 = self->fThresholds.fImpactMaxAccelNormLoggingStatsThreshold;
      v176 = self->fThresholds.fImpactMaxAccelNormLoggingHeartRateThreshold;
      v177 = LOBYTE(self->fThresholds.fImpactMaxAccelNormLoggingHighResolutionSensorDataThreshold);
      v178 = BYTE1(self->fThresholds.fImpactMaxAccelNormLoggingHighResolutionSensorDataThreshold);
      v179 = BYTE2(self->fThresholds.fImpactMaxAccelNormLoggingHighResolutionSensorDataThreshold);
      *buf = 68292355;
      *&buf[4] = 0;
      *v195 = 2082;
      *&v195[2] = "";
      v196 = 2050;
      v197 = v169;
      v198 = 1025;
      *v199 = v170;
      *&v199[4] = 1025;
      *&v199[6] = v171;
      *&v199[10] = 2049;
      *&v199[12] = v193;
      *&v199[20] = 2049;
      *&v199[22] = v187;
      *&v199[30] = 2049;
      *&v199[32] = v172;
      *&v199[40] = 2049;
      *&v199[42] = v173;
      *&v199[50] = 1025;
      *&v199[52] = v174;
      *&v199[56] = 1025;
      *&v199[58] = v175;
      *&v199[62] = 1025;
      *v200 = v176;
      *&v200[4] = 1025;
      *&v200[6] = v177;
      *v201 = 1025;
      *&v201[2] = v178;
      *&v201[6] = 1025;
      *&v201[8] = v179;
      _os_signpost_emit_with_name_impl(dword_100000000, v168, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Model Selector - Could not pick thresholds based on available features - Falling back to defaults", "{msg%{public}.0s:Model Selector - Could not pick thresholds based on available features - Falling back to defaults, impactMaxAccelNormAlertThreshold:%{public}f, totalLongLieThreshold:%{private}d, consecutiveLongLieThreshold:%{private}d, age:%{private}f, metminpercentile:%{private}f, alertGatingMotionThreshold:%{private}f, cyclingImpactMaxAbsYThreshold:%{private}f, otherWorkoutQuiescenceThresholdLow:%{private}d, otherWorkoutQuiescenceThresholdHigh:%{private}d, otherWorkoutConsecutiveLongLieThreshold:%{private}d, otherWorkoutShouldCancelAlertOnStepsThreshold:%{private}hhd, otherWorkoutShouldCancelAlertOnStandThreshold:%{private}hhd, otherWorkoutShouldCancelAlertOnActiveThreshold:%{private}hhd}", buf, 0x74u);
    }
  }

  return 1;
}

- (BOOL)fillTripFallModel:(FallModel *)a3
{
  if (a3)
  {
    *a3->fRatioMaxAbsX = *self->fTripFallModel.fRatioMaxAbsX;
    v5 = *&self->fTripFallModel.fRatioMaxAbsX[4];
    v6 = *&self->fTripFallModel.fRatioMaxAbsX[8];
    v7 = *&self->fTripFallModel.fRatioMaxAbsX[12];
    a3->fRatioMaxAbsX[16] = self->fTripFallModel.fRatioMaxAbsX[16];
    *&a3->fRatioMaxAbsX[8] = v6;
    *&a3->fRatioMaxAbsX[12] = v7;
    *&a3->fRatioMaxAbsX[4] = v5;
    v8 = *&self->fTripFallModel.fRatioMaxAbsY[8];
    v9 = *&self->fTripFallModel.fRatioMaxAbsY[12];
    v10 = self->fTripFallModel.fRatioMaxAbsY[16];
    *&a3->fRatioMaxAbsY[4] = *&self->fTripFallModel.fRatioMaxAbsY[4];
    a3->fRatioMaxAbsY[16] = v10;
    *&a3->fRatioMaxAbsY[12] = v9;
    *&a3->fRatioMaxAbsY[8] = v8;
    *a3->fRatioMaxAbsY = *self->fTripFallModel.fRatioMaxAbsY;
    v11 = *&self->fTripFallModel.fRatioMaxAbsZ[8];
    v12 = *&self->fTripFallModel.fRatioMaxAbsZ[12];
    v13 = self->fTripFallModel.fRatioMaxAbsZ[16];
    *&a3->fRatioMaxAbsZ[4] = *&self->fTripFallModel.fRatioMaxAbsZ[4];
    a3->fRatioMaxAbsZ[16] = v13;
    *&a3->fRatioMaxAbsZ[12] = v12;
    *&a3->fRatioMaxAbsZ[8] = v11;
    *a3->fRatioMaxAbsZ = *self->fTripFallModel.fRatioMaxAbsZ;
    memcpy(a3->fRatioMaxJerkVM, self->fTripFallModel.fRatioMaxJerkVM, sizeof(a3->fRatioMaxJerkVM));
    v14 = *&self->fTripFallModel.fRatioMinInertialZ[4];
    *a3->fRatioMinInertialZ = *self->fTripFallModel.fRatioMinInertialZ;
    *&a3->fRatioMinInertialZ[4] = v14;
    v16 = *&self->fTripFallModel.fRatioMinInertialZ[12];
    v15 = *&self->fTripFallModel.fRatioMinInertialZ[16];
    v17 = *&self->fTripFallModel.fRatioMinInertialZ[8];
    a3->fRatioMinInertialZ[20] = self->fTripFallModel.fRatioMinInertialZ[20];
    *&a3->fRatioMinInertialZ[12] = v16;
    *&a3->fRatioMinInertialZ[16] = v15;
    *&a3->fRatioMinInertialZ[8] = v17;
    v18 = *self->fTripFallModel.fRatioAccelPathLength;
    v19 = *&self->fTripFallModel.fRatioAccelPathLength[4];
    *&a3->fRatioAccelPathLength[8] = *&self->fTripFallModel.fRatioAccelPathLength[8];
    *a3->fRatioAccelPathLength = v18;
    *&a3->fRatioAccelPathLength[4] = v19;
    v20 = *&self->fTripFallModel.fRatioMaxAngleChangePreimpact[4];
    v21 = *&self->fTripFallModel.fRatioMaxAngleChangePreimpact[8];
    v22 = *&self->fTripFallModel.fRatioMaxAngleChangePreimpact[12];
    *a3->fRatioMaxAngleChangePreimpact = *self->fTripFallModel.fRatioMaxAngleChangePreimpact;
    *&a3->fRatioMaxAngleChangePreimpact[4] = v20;
    *&a3->fRatioMaxAngleChangePreimpact[8] = v21;
    *&a3->fRatioMaxAngleChangePreimpact[12] = v22;
    v24 = *&self->fTripFallModel.fRatioMaxAngleChangePostimpact[8];
    v23 = *&self->fTripFallModel.fRatioMaxAngleChangePostimpact[12];
    v25 = *&self->fTripFallModel.fRatioMaxAngleChangePostimpact[4];
    *a3->fRatioMaxAngleChangePostimpact = *self->fTripFallModel.fRatioMaxAngleChangePostimpact;
    *&a3->fRatioMaxAngleChangePostimpact[4] = v25;
    *&a3->fRatioMaxAngleChangePostimpact[8] = v24;
    *&a3->fRatioMaxAngleChangePostimpact[12] = v23;
    *&a3->fLikelihoodRatioInfo[0].firstBinEdge = *&self->fTripFallModel.fLikelihoodRatioInfo[0].firstBinEdge;
    v27 = *&self->fTripFallModel.fLikelihoodRatioInfo[2].binNum;
    v26 = *&self->fTripFallModel.fLikelihoodRatioInfo[4].firstBinEdge;
    v28 = *&self->fTripFallModel.fLikelihoodRatioInfo[1].binSize;
    *&a3->fLikelihoodRatioInfo[5].binSize = *&self->fTripFallModel.fLikelihoodRatioInfo[5].binSize;
    *&a3->fLikelihoodRatioInfo[2].binNum = v27;
    *&a3->fLikelihoodRatioInfo[4].firstBinEdge = v26;
    *&a3->fLikelihoodRatioInfo[1].binSize = v28;
  }

  return a3 != 0;
}

- (BOOL)fillSlipFallModel:(FallModel *)a3
{
  if (a3)
  {
    *a3->fRatioMaxAbsX = *&self->fTripFallModel.fLikelihoodRatioInfo[6].firstBinEdge;
    v5 = *&self->fTripFallModel.fLikelihoodRatioInfo[7].binSize;
    v6 = *&self->fSlipFallModel.fRatioMaxAbsX[2];
    v7 = *&self->fSlipFallModel.fRatioMaxAbsX[6];
    a3->fRatioMaxAbsX[16] = self->fSlipFallModel.fRatioMaxAbsX[10];
    *&a3->fRatioMaxAbsX[8] = v6;
    *&a3->fRatioMaxAbsX[12] = v7;
    *&a3->fRatioMaxAbsX[4] = v5;
    v9 = *&self->fSlipFallModel.fRatioMaxAbsY[2];
    v8 = *&self->fSlipFallModel.fRatioMaxAbsY[6];
    v10 = self->fSlipFallModel.fRatioMaxAbsY[10];
    *&a3->fRatioMaxAbsY[4] = *&self->fSlipFallModel.fRatioMaxAbsX[15];
    a3->fRatioMaxAbsY[16] = v10;
    *&a3->fRatioMaxAbsY[12] = v8;
    *&a3->fRatioMaxAbsY[8] = v9;
    *a3->fRatioMaxAbsY = *&self->fSlipFallModel.fRatioMaxAbsX[11];
    v12 = *&self->fSlipFallModel.fRatioMaxAbsZ[2];
    v11 = *&self->fSlipFallModel.fRatioMaxAbsZ[6];
    v13 = self->fSlipFallModel.fRatioMaxAbsZ[10];
    *&a3->fRatioMaxAbsZ[4] = *&self->fSlipFallModel.fRatioMaxAbsY[15];
    a3->fRatioMaxAbsZ[16] = v13;
    *&a3->fRatioMaxAbsZ[12] = v11;
    *&a3->fRatioMaxAbsZ[8] = v12;
    *a3->fRatioMaxAbsZ = *&self->fSlipFallModel.fRatioMaxAbsY[11];
    memcpy(a3->fRatioMaxJerkVM, &self->fSlipFallModel.fRatioMaxAbsZ[11], sizeof(a3->fRatioMaxJerkVM));
    v14 = *&self->fSlipFallModel.fRatioMaxJerkVM[65];
    *a3->fRatioMinInertialZ = *&self->fSlipFallModel.fRatioMaxJerkVM[61];
    *&a3->fRatioMinInertialZ[4] = v14;
    v16 = *&self->fSlipFallModel.fRatioMinInertialZ[6];
    v15 = *&self->fSlipFallModel.fRatioMinInertialZ[10];
    v17 = *&self->fSlipFallModel.fRatioMinInertialZ[2];
    a3->fRatioMinInertialZ[20] = self->fSlipFallModel.fRatioMinInertialZ[14];
    *&a3->fRatioMinInertialZ[12] = v16;
    *&a3->fRatioMinInertialZ[16] = v15;
    *&a3->fRatioMinInertialZ[8] = v17;
    v18 = *&self->fSlipFallModel.fRatioMinInertialZ[15];
    v19 = *&self->fSlipFallModel.fRatioMinInertialZ[19];
    *&a3->fRatioAccelPathLength[8] = *&self->fSlipFallModel.fRatioAccelPathLength[2];
    *a3->fRatioAccelPathLength = v18;
    *&a3->fRatioAccelPathLength[4] = v19;
    v20 = *&self->fSlipFallModel.fRatioMaxAngleChangePreimpact[2];
    v21 = *&self->fSlipFallModel.fRatioAccelPathLength[8];
    v22 = *&self->fSlipFallModel.fRatioMaxAngleChangePreimpact[6];
    *a3->fRatioMaxAngleChangePreimpact = *&self->fSlipFallModel.fRatioAccelPathLength[4];
    *&a3->fRatioMaxAngleChangePreimpact[4] = v21;
    *&a3->fRatioMaxAngleChangePreimpact[8] = v20;
    *&a3->fRatioMaxAngleChangePreimpact[12] = v22;
    v23 = *&self->fSlipFallModel.fRatioMaxAngleChangePostimpact[6];
    v24 = *&self->fSlipFallModel.fRatioMaxAngleChangePostimpact[2];
    v25 = *&self->fSlipFallModel.fRatioMaxAngleChangePreimpact[14];
    *a3->fRatioMaxAngleChangePostimpact = *&self->fSlipFallModel.fRatioMaxAngleChangePreimpact[10];
    *&a3->fRatioMaxAngleChangePostimpact[4] = v25;
    *&a3->fRatioMaxAngleChangePostimpact[8] = v24;
    *&a3->fRatioMaxAngleChangePostimpact[12] = v23;
    *&a3->fLikelihoodRatioInfo[0].firstBinEdge = *&self->fSlipFallModel.fRatioMaxAngleChangePostimpact[10];
    v26 = *&self->fSlipFallModel.fLikelihoodRatioInfo[0].binNum;
    v27 = *&self->fSlipFallModel.fLikelihoodRatioInfo[2].firstBinEdge;
    v28 = *&self->fSlipFallModel.fRatioMaxAngleChangePostimpact[14];
    *&a3->fLikelihoodRatioInfo[5].binSize = *&self->fSlipFallModel.fLikelihoodRatioInfo[3].binSize;
    *&a3->fLikelihoodRatioInfo[2].binNum = v26;
    *&a3->fLikelihoodRatioInfo[4].firstBinEdge = v27;
    *&a3->fLikelihoodRatioInfo[1].binSize = v28;
  }

  return a3 != 0;
}

- (BOOL)fillOtherFallModel:(FallModel *)a3
{
  if (a3)
  {
    *a3->fRatioMaxAbsX = *&self->fSlipFallModel.fLikelihoodRatioInfo[4].firstBinEdge;
    v5 = *&self->fSlipFallModel.fLikelihoodRatioInfo[5].binSize;
    v6 = *&self->fSlipFallModel.fLikelihoodRatioInfo[6].binNum;
    v7 = *self->fOtherFallModel.fRatioMaxAbsX;
    a3->fRatioMaxAbsX[16] = self->fOtherFallModel.fRatioMaxAbsX[4];
    *&a3->fRatioMaxAbsX[8] = v6;
    *&a3->fRatioMaxAbsX[12] = v7;
    *&a3->fRatioMaxAbsX[4] = v5;
    v9 = *&self->fOtherFallModel.fRatioMaxAbsX[13];
    v8 = *self->fOtherFallModel.fRatioMaxAbsY;
    v10 = self->fOtherFallModel.fRatioMaxAbsY[4];
    *&a3->fRatioMaxAbsY[4] = *&self->fOtherFallModel.fRatioMaxAbsX[9];
    a3->fRatioMaxAbsY[16] = v10;
    *&a3->fRatioMaxAbsY[12] = v8;
    *&a3->fRatioMaxAbsY[8] = v9;
    *a3->fRatioMaxAbsY = *&self->fOtherFallModel.fRatioMaxAbsX[5];
    v11 = *&self->fOtherFallModel.fRatioMaxAbsY[13];
    v12 = *self->fOtherFallModel.fRatioMaxAbsZ;
    v13 = self->fOtherFallModel.fRatioMaxAbsZ[4];
    *&a3->fRatioMaxAbsZ[4] = *&self->fOtherFallModel.fRatioMaxAbsY[9];
    a3->fRatioMaxAbsZ[16] = v13;
    *&a3->fRatioMaxAbsZ[12] = v12;
    *&a3->fRatioMaxAbsZ[8] = v11;
    *a3->fRatioMaxAbsZ = *&self->fOtherFallModel.fRatioMaxAbsY[5];
    memcpy(a3->fRatioMaxJerkVM, &self->fOtherFallModel.fRatioMaxAbsZ[5], sizeof(a3->fRatioMaxJerkVM));
    v14 = *&self->fOtherFallModel.fRatioMaxJerkVM[59];
    *a3->fRatioMinInertialZ = *&self->fOtherFallModel.fRatioMaxJerkVM[55];
    *&a3->fRatioMinInertialZ[4] = v14;
    v15 = *self->fOtherFallModel.fRatioMinInertialZ;
    v16 = *&self->fOtherFallModel.fRatioMinInertialZ[4];
    v17 = *&self->fOtherFallModel.fRatioMaxJerkVM[63];
    a3->fRatioMinInertialZ[20] = self->fOtherFallModel.fRatioMinInertialZ[8];
    *&a3->fRatioMinInertialZ[12] = v15;
    *&a3->fRatioMinInertialZ[16] = v16;
    *&a3->fRatioMinInertialZ[8] = v17;
    v18 = *&self->fOtherFallModel.fRatioMinInertialZ[9];
    v19 = *&self->fOtherFallModel.fRatioMinInertialZ[13];
    *&a3->fRatioAccelPathLength[8] = *&self->fOtherFallModel.fRatioMinInertialZ[17];
    *a3->fRatioAccelPathLength = v18;
    *&a3->fRatioAccelPathLength[4] = v19;
    v20 = *&self->fOtherFallModel.fRatioAccelPathLength[2];
    v21 = *&self->fOtherFallModel.fRatioAccelPathLength[6];
    v22 = *self->fOtherFallModel.fRatioMaxAngleChangePreimpact;
    *a3->fRatioMaxAngleChangePreimpact = *&self->fOtherFallModel.fRatioMinInertialZ[19];
    *&a3->fRatioMaxAngleChangePreimpact[4] = v20;
    *&a3->fRatioMaxAngleChangePreimpact[8] = v21;
    *&a3->fRatioMaxAngleChangePreimpact[12] = v22;
    v24 = *&self->fOtherFallModel.fRatioMaxAngleChangePreimpact[12];
    v23 = *self->fOtherFallModel.fRatioMaxAngleChangePostimpact;
    v25 = *&self->fOtherFallModel.fRatioMaxAngleChangePreimpact[8];
    *a3->fRatioMaxAngleChangePostimpact = *&self->fOtherFallModel.fRatioMaxAngleChangePreimpact[4];
    *&a3->fRatioMaxAngleChangePostimpact[4] = v25;
    *&a3->fRatioMaxAngleChangePostimpact[8] = v24;
    *&a3->fRatioMaxAngleChangePostimpact[12] = v23;
    *&a3->fLikelihoodRatioInfo[0].firstBinEdge = *&self->fOtherFallModel.fRatioMaxAngleChangePostimpact[4];
    v27 = *&self->fOtherFallModel.fRatioMaxAngleChangePostimpact[12];
    v26 = *&self->fOtherFallModel.fLikelihoodRatioInfo[0].firstBinEdge;
    v28 = *&self->fOtherFallModel.fRatioMaxAngleChangePostimpact[8];
    *&a3->fLikelihoodRatioInfo[5].binSize = *&self->fOtherFallModel.fLikelihoodRatioInfo[1].binSize;
    *&a3->fLikelihoodRatioInfo[2].binNum = v27;
    *&a3->fLikelihoodRatioInfo[4].firstBinEdge = v26;
    *&a3->fLikelihoodRatioInfo[1].binSize = v28;
  }

  return a3 != 0;
}

- (BOOL)fillFallThresholds:(FallThresholds *)a3
{
  if (a3)
  {
    sub_100515940(a3, &self->fOtherFallModel.fLikelihoodRatioInfo[2]);
  }

  return a3 != 0;
}

@end