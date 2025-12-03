@interface BatteryModelDataHandler
+ (id)sharedInstance;
- (BOOL)getPPMDebugDict:(const __CFDictionary *)dict;
- (BOOL)setBatteryModelDataToKernel:(id)kernel;
- (BOOL)verifyHashData:(char *)data;
- (BatteryModelDataHandler)init;
- (id)createKextModelFromProtobufModel:(id)model;
- (id)getDeviceType;
- (id)loadProtobufModelWithFileName:(id)name;
- (int)getIntValueForKeyFromBatteryData:(id)data;
- (unsigned)getBatteryChemID;
@end

@implementation BatteryModelDataHandler

- (BatteryModelDataHandler)init
{
  v8.receiver = self;
  v8.super_class = BatteryModelDataHandler;
  v2 = [(BatteryModelDataHandler *)&v8 init];
  if (v2)
  {
    v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.peakpowermanagerd"];
    defaults = v2->_defaults;
    v2->_defaults = v3;

    v5 = os_log_create("com.apple.peakpowermanagerd", "batteryModelDataHandling");
    log = v2->_log;
    v2->_log = v5;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_100022278 != -1)
  {
    sub_10000FAB8();
  }

  v3 = qword_100022270;

  return v3;
}

- (int)getIntValueForKeyFromBatteryData:(id)data
{
  dataCopy = data;
  valuePtr = 0;
  if (!dataCopy)
  {
    sub_10000FC60(self, &v29);
    v10 = v29;
    goto LABEL_12;
  }

  v5 = IOServiceMatching("AppleSmartBattery");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v5);
  if (!MatchingService)
  {
    sleep(0);
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10000FBE8(log, v12, v13, v14, v15, v16, v17, v18);
    }

    goto LABEL_11;
  }

  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"BatteryData", kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    sleep(0);
    v19 = self->_log;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10000FB70(v19, v20, v21, v22, v23, v24, v25, v26);
    }

LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v8 = CFProperty;
  Value = CFDictionaryGetValue(CFProperty, dataCopy);
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  }

  else
  {
    sub_10000FACC(self);
  }

  CFRelease(v8);
  v10 = valuePtr;
LABEL_12:

  return v10;
}

- (unsigned)getBatteryChemID
{
  v3 = [(BatteryModelDataHandler *)self getIntValueForKeyFromBatteryData:@"AlgoChemID"];
  if (v3 == 6439)
  {
    v4 = 8552;
  }

  else
  {
    v4 = v3;
  }

  [(NSUserDefaults *)self->_defaults setInteger:v4 forKey:@"savedChemID"];
  return v4;
}

- (id)getDeviceType
{
  size = 0;
  if (sysctlbyname("hw.targettype", 0, &size, 0, 0))
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10000FCF4();
    }

    v7 = 0;
  }

  else
  {
    v3 = malloc_type_malloc(size, 0x100004077774924uLL);
    if (v3)
    {
      v4 = v3;
      v5 = sysctlbyname("hw.targettype", v3, &size, 0, 0);
      log = self->_log;
      if (v5)
      {
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          sub_10000FD68();
        }

        v7 = 0;
      }

      else
      {
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
        {
          sub_10000FDDC(v4, log);
        }

        v7 = [NSString stringWithUTF8String:v4];
      }

      free(v4);
    }

    else
    {
      sub_10000FE54(self, &v10);
      v7 = v10;
    }
  }

  return v7;
}

- (id)loadProtobufModelWithFileName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_1000101D0(log, v12, v13, v14, v15, v16, v17, v18);
    }

    v9 = 0;
    v5 = 0;
    goto LABEL_9;
  }

  v30 = 0;
  v5 = [PBStreamReader readProtoBuffersOfClass:objc_opt_class() fromFile:nameCopy error:&v30];
  v6 = v30;
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    firstObject = [v5 firstObject];
    if (firstObject)
    {
      v9 = firstObject;
    }

    else
    {
      v22 = self->_log;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1000100AC(v22, v23, v24, v25, v26, v27, v28, v29);
      }

      v9 = 0;
    }

LABEL_9:
    v19 = 0;
    goto LABEL_10;
  }

  v19 = v6;
  v20 = self->_log;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    sub_100010124(v20, v19);
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (id)createKextModelFromProtobufModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v5 = [NSMutableData dataWithLength:39912];
    mutableBytes = [v5 mutableBytes];
    if (mutableBytes)
    {
      v7 = mutableBytes;
      v8 = (mutableBytes + 9205);
      *mutableBytes = [modelCopy chemID];
      [modelCopy maxRdcRatio];
      *(v8 + 513) = v9;
      [modelCopy maxRdcRatioR2Extrap];
      *(v8 + 514) = v10;
      [modelCopy maxRdcR25Ratio];
      *(v8 + 515) = v11;
      [modelCopy baselineWRdc];
      *v8 = v12;
      *(v8 + 516) = [modelCopy mLBConfig];
      bmuResistance = [modelCopy bmuResistance];
      sub_10000DFB0(v7 + 4591, bmuResistance);

      baselineRdcs = [modelCopy baselineRdcs];
      v16 = baselineRdcs[1];
      v15 = baselineRdcs[2];
      v17 = *baselineRdcs;
      *(v7 + 9201) = *(baselineRdcs + 44);
      *(v7 + 9194) = v16;
      *(v7 + 9198) = v15;
      *(v7 + 9190) = v17;
      memcpy(v7 + 9206, [modelCopy gridOCVs], 0x4BCuLL);
      qmaxs = [modelCopy qmaxs];
      v19 = qmaxs[4];
      *(v7 + 9509) = *qmaxs;
      v7[9513] = v19;
      v20 = [modelCopy r0];
      resistance25Cs = [v20 resistance25Cs];
      *(v7 + 1) = *resistance25Cs;
      v22 = resistance25Cs[3];
      v23 = resistance25Cs[4];
      v24 = resistance25Cs[2];
      *(v7 + 5) = resistance25Cs[1];
      *(v7 + 17) = v23;
      *(v7 + 13) = v22;
      *(v7 + 9) = v24;
      v25 = resistance25Cs[7];
      v26 = resistance25Cs[8];
      v27 = resistance25Cs[6];
      *(v7 + 21) = resistance25Cs[5];
      *(v7 + 33) = v26;
      *(v7 + 29) = v25;
      *(v7 + 25) = v27;
      v29 = resistance25Cs[10];
      v28 = resistance25Cs[11];
      v30 = *(resistance25Cs + 188);
      *(v7 + 37) = resistance25Cs[9];
      *(v7 + 12) = v30;
      *(v7 + 45) = v28;
      *(v7 + 41) = v29;
      memcpy(v7 + 52, [v20 temperatureCoeffs], 0x330uLL);

      v31 = [modelCopy r1];
      resistance25Cs2 = [v31 resistance25Cs];
      *(v7 + 64) = *resistance25Cs2;
      v33 = resistance25Cs2[3];
      v34 = resistance25Cs2[4];
      v35 = resistance25Cs2[2];
      *(v7 + 65) = resistance25Cs2[1];
      *(v7 + 68) = v34;
      *(v7 + 67) = v33;
      *(v7 + 66) = v35;
      v36 = resistance25Cs2[7];
      v37 = resistance25Cs2[8];
      v38 = resistance25Cs2[6];
      *(v7 + 69) = resistance25Cs2[5];
      *(v7 + 72) = v37;
      *(v7 + 71) = v36;
      *(v7 + 70) = v38;
      v40 = resistance25Cs2[10];
      v39 = resistance25Cs2[11];
      v41 = *(resistance25Cs2 + 188);
      *(v7 + 73) = resistance25Cs2[9];
      *(v7 + 303) = v41;
      *(v7 + 75) = v39;
      *(v7 + 74) = v40;
      memcpy(v7 + 307, [v31 temperatureCoeffs], 0x330uLL);

      v42 = [modelCopy r2];
      resistance25Cs3 = [v42 resistance25Cs];
      *(v7 + 511) = *resistance25Cs3;
      v44 = resistance25Cs3[4];
      v46 = resistance25Cs3[1];
      v45 = resistance25Cs3[2];
      *(v7 + 523) = resistance25Cs3[3];
      *(v7 + 527) = v44;
      *(v7 + 515) = v46;
      *(v7 + 519) = v45;
      v47 = resistance25Cs3[8];
      v49 = resistance25Cs3[5];
      v48 = resistance25Cs3[6];
      *(v7 + 539) = resistance25Cs3[7];
      *(v7 + 543) = v47;
      *(v7 + 531) = v49;
      *(v7 + 535) = v48;
      v51 = resistance25Cs3[10];
      v50 = resistance25Cs3[11];
      v52 = resistance25Cs3[9];
      *(v7 + 558) = *(resistance25Cs3 + 188);
      *(v7 + 551) = v51;
      *(v7 + 555) = v50;
      *(v7 + 547) = v52;
      memcpy(v7 + 562, [v42 temperatureCoeffs], 0x330uLL);

      v53 = [modelCopy r3];
      resistance25Cs4 = [v53 resistance25Cs];
      *(v7 + 766) = *resistance25Cs4;
      v55 = resistance25Cs4[4];
      v57 = resistance25Cs4[1];
      v56 = resistance25Cs4[2];
      *(v7 + 778) = resistance25Cs4[3];
      *(v7 + 782) = v55;
      *(v7 + 770) = v57;
      *(v7 + 774) = v56;
      v58 = resistance25Cs4[8];
      v60 = resistance25Cs4[5];
      v59 = resistance25Cs4[6];
      *(v7 + 794) = resistance25Cs4[7];
      *(v7 + 798) = v58;
      *(v7 + 786) = v60;
      *(v7 + 790) = v59;
      v62 = resistance25Cs4[10];
      v61 = resistance25Cs4[11];
      v63 = resistance25Cs4[9];
      *(v7 + 813) = *(resistance25Cs4 + 188);
      *(v7 + 806) = v62;
      *(v7 + 810) = v61;
      *(v7 + 802) = v63;
      memcpy(v7 + 817, [v53 temperatureCoeffs], 0x330uLL);

      v64 = [modelCopy rdc];
      resistance25Cs5 = [v64 resistance25Cs];
      *(v7 + 1021) = *resistance25Cs5;
      v66 = resistance25Cs5[4];
      v68 = resistance25Cs5[1];
      v67 = resistance25Cs5[2];
      *(v7 + 1033) = resistance25Cs5[3];
      *(v7 + 1037) = v66;
      *(v7 + 1025) = v68;
      *(v7 + 1029) = v67;
      v69 = resistance25Cs5[8];
      v71 = resistance25Cs5[5];
      v70 = resistance25Cs5[6];
      *(v7 + 1049) = resistance25Cs5[7];
      *(v7 + 1053) = v69;
      *(v7 + 1041) = v71;
      *(v7 + 1045) = v70;
      v73 = resistance25Cs5[10];
      v72 = resistance25Cs5[11];
      v74 = resistance25Cs5[9];
      *(v7 + 267) = *(resistance25Cs5 + 188);
      *(v7 + 1061) = v73;
      *(v7 + 1065) = v72;
      *(v7 + 1057) = v74;
      memcpy(v7 + 1072, [v64 temperatureCoeffs], 0x330uLL);

      baselineR0 = [modelCopy baselineR0];
      resistance25Cs6 = [baselineR0 resistance25Cs];
      *(v7 + 574) = *resistance25Cs6;
      v77 = resistance25Cs6[3];
      v78 = resistance25Cs6[4];
      v79 = resistance25Cs6[2];
      *(v7 + 575) = resistance25Cs6[1];
      *(v7 + 578) = v78;
      *(v7 + 577) = v77;
      *(v7 + 576) = v79;
      v80 = resistance25Cs6[7];
      v81 = resistance25Cs6[8];
      v82 = resistance25Cs6[6];
      *(v7 + 579) = resistance25Cs6[5];
      *(v7 + 582) = v81;
      *(v7 + 581) = v80;
      *(v7 + 580) = v82;
      v84 = resistance25Cs6[10];
      v83 = resistance25Cs6[11];
      v85 = *(resistance25Cs6 + 188);
      *(v7 + 583) = resistance25Cs6[9];
      *(v7 + 2343) = v85;
      *(v7 + 585) = v83;
      *(v7 + 584) = v84;
      memcpy(v7 + 2347, [baselineR0 temperatureCoeffs], 0x330uLL);

      baselineR1 = [modelCopy baselineR1];
      resistance25Cs7 = [baselineR1 resistance25Cs];
      *(v7 + 2551) = *resistance25Cs7;
      v88 = resistance25Cs7[4];
      v90 = resistance25Cs7[1];
      v89 = resistance25Cs7[2];
      *(v7 + 2563) = resistance25Cs7[3];
      *(v7 + 2567) = v88;
      *(v7 + 2555) = v90;
      *(v7 + 2559) = v89;
      v91 = resistance25Cs7[8];
      v93 = resistance25Cs7[5];
      v92 = resistance25Cs7[6];
      *(v7 + 2579) = resistance25Cs7[7];
      *(v7 + 2583) = v91;
      *(v7 + 2571) = v93;
      *(v7 + 2575) = v92;
      v95 = resistance25Cs7[10];
      v94 = resistance25Cs7[11];
      v96 = resistance25Cs7[9];
      *(v7 + 2598) = *(resistance25Cs7 + 188);
      *(v7 + 2591) = v95;
      *(v7 + 2595) = v94;
      *(v7 + 2587) = v96;
      memcpy(v7 + 2602, [baselineR1 temperatureCoeffs], 0x330uLL);

      baselineR2 = [modelCopy baselineR2];
      resistance25Cs8 = [baselineR2 resistance25Cs];
      *(v7 + 2806) = *resistance25Cs8;
      v99 = resistance25Cs8[4];
      v101 = resistance25Cs8[1];
      v100 = resistance25Cs8[2];
      *(v7 + 2818) = resistance25Cs8[3];
      *(v7 + 2822) = v99;
      *(v7 + 2810) = v101;
      *(v7 + 2814) = v100;
      v102 = resistance25Cs8[8];
      v104 = resistance25Cs8[5];
      v103 = resistance25Cs8[6];
      *(v7 + 2834) = resistance25Cs8[7];
      *(v7 + 2838) = v102;
      *(v7 + 2826) = v104;
      *(v7 + 2830) = v103;
      v106 = resistance25Cs8[10];
      v105 = resistance25Cs8[11];
      v107 = resistance25Cs8[9];
      *(v7 + 2853) = *(resistance25Cs8 + 188);
      *(v7 + 2846) = v106;
      *(v7 + 2850) = v105;
      *(v7 + 2842) = v107;
      memcpy(v7 + 2857, [baselineR2 temperatureCoeffs], 0x330uLL);

      baselineR3 = [modelCopy baselineR3];
      resistance25Cs9 = [baselineR3 resistance25Cs];
      *(v7 + 3061) = *resistance25Cs9;
      v110 = resistance25Cs9[4];
      v112 = resistance25Cs9[1];
      v111 = resistance25Cs9[2];
      *(v7 + 3073) = resistance25Cs9[3];
      *(v7 + 3077) = v110;
      *(v7 + 3065) = v112;
      *(v7 + 3069) = v111;
      v113 = resistance25Cs9[8];
      v115 = resistance25Cs9[5];
      v114 = resistance25Cs9[6];
      *(v7 + 3089) = resistance25Cs9[7];
      *(v7 + 3093) = v113;
      *(v7 + 3081) = v115;
      *(v7 + 3085) = v114;
      v117 = resistance25Cs9[10];
      v116 = resistance25Cs9[11];
      v118 = resistance25Cs9[9];
      *(v7 + 777) = *(resistance25Cs9 + 188);
      *(v7 + 3101) = v117;
      *(v7 + 3105) = v116;
      *(v7 + 3097) = v118;
      memcpy(v7 + 3112, [baselineR3 temperatureCoeffs], 0x330uLL);

      baselineR4 = [modelCopy baselineR4];
      resistance25Cs10 = [baselineR4 resistance25Cs];
      *(v7 + 829) = *resistance25Cs10;
      v121 = resistance25Cs10[3];
      v122 = resistance25Cs10[4];
      v123 = resistance25Cs10[2];
      *(v7 + 830) = resistance25Cs10[1];
      *(v7 + 833) = v122;
      *(v7 + 832) = v121;
      *(v7 + 831) = v123;
      v124 = resistance25Cs10[7];
      v125 = resistance25Cs10[8];
      v126 = resistance25Cs10[6];
      *(v7 + 834) = resistance25Cs10[5];
      *(v7 + 837) = v125;
      *(v7 + 836) = v124;
      *(v7 + 835) = v126;
      v128 = resistance25Cs10[10];
      v127 = resistance25Cs10[11];
      v129 = *(resistance25Cs10 + 188);
      *(v7 + 838) = resistance25Cs10[9];
      *(v7 + 3363) = v129;
      *(v7 + 840) = v127;
      *(v7 + 839) = v128;
      memcpy(v7 + 3367, [baselineR4 temperatureCoeffs], 0x330uLL);

      rCFreq1 = [modelCopy rCFreq1];
      resistance25Cs11 = [rCFreq1 resistance25Cs];
      *(v7 + 319) = *resistance25Cs11;
      v132 = resistance25Cs11[3];
      v133 = resistance25Cs11[4];
      v134 = resistance25Cs11[2];
      *(v7 + 320) = resistance25Cs11[1];
      *(v7 + 323) = v133;
      *(v7 + 322) = v132;
      *(v7 + 321) = v134;
      v135 = resistance25Cs11[7];
      v136 = resistance25Cs11[8];
      v137 = resistance25Cs11[6];
      *(v7 + 324) = resistance25Cs11[5];
      *(v7 + 327) = v136;
      *(v7 + 326) = v135;
      *(v7 + 325) = v137;
      v139 = resistance25Cs11[10];
      v138 = resistance25Cs11[11];
      v140 = *(resistance25Cs11 + 188);
      *(v7 + 328) = resistance25Cs11[9];
      *(v7 + 1323) = v140;
      *(v7 + 330) = v138;
      *(v7 + 329) = v139;
      memcpy(v7 + 1327, [rCFreq1 temperatureCoeffs], 0x330uLL);

      rCFreq2 = [modelCopy rCFreq2];
      resistance25Cs12 = [rCFreq2 resistance25Cs];
      *(v7 + 1531) = *resistance25Cs12;
      v143 = resistance25Cs12[4];
      v145 = resistance25Cs12[1];
      v144 = resistance25Cs12[2];
      *(v7 + 1543) = resistance25Cs12[3];
      *(v7 + 1547) = v143;
      *(v7 + 1535) = v145;
      *(v7 + 1539) = v144;
      v146 = resistance25Cs12[8];
      v148 = resistance25Cs12[5];
      v147 = resistance25Cs12[6];
      *(v7 + 1559) = resistance25Cs12[7];
      *(v7 + 1563) = v146;
      *(v7 + 1551) = v148;
      *(v7 + 1555) = v147;
      v150 = resistance25Cs12[10];
      v149 = resistance25Cs12[11];
      v151 = resistance25Cs12[9];
      *(v7 + 1578) = *(resistance25Cs12 + 188);
      *(v7 + 1571) = v150;
      *(v7 + 1575) = v149;
      *(v7 + 1567) = v151;
      memcpy(v7 + 1582, [rCFreq2 temperatureCoeffs], 0x330uLL);

      rCFreq3 = [modelCopy rCFreq3];
      resistance25Cs13 = [rCFreq3 resistance25Cs];
      *(v7 + 1786) = *resistance25Cs13;
      v154 = resistance25Cs13[4];
      v156 = resistance25Cs13[1];
      v155 = resistance25Cs13[2];
      *(v7 + 1798) = resistance25Cs13[3];
      *(v7 + 1802) = v154;
      *(v7 + 1790) = v156;
      *(v7 + 1794) = v155;
      v157 = resistance25Cs13[8];
      v159 = resistance25Cs13[5];
      v158 = resistance25Cs13[6];
      *(v7 + 1814) = resistance25Cs13[7];
      *(v7 + 1818) = v157;
      *(v7 + 1806) = v159;
      *(v7 + 1810) = v158;
      v161 = resistance25Cs13[10];
      v160 = resistance25Cs13[11];
      v162 = resistance25Cs13[9];
      *(v7 + 1833) = *(resistance25Cs13 + 188);
      *(v7 + 1826) = v161;
      *(v7 + 1830) = v160;
      *(v7 + 1822) = v162;
      memcpy(v7 + 1837, [rCFreq3 temperatureCoeffs], 0x330uLL);

      rCFreq4 = [modelCopy rCFreq4];
      resistance25Cs14 = [rCFreq4 resistance25Cs];
      *(v7 + 2041) = *resistance25Cs14;
      v165 = resistance25Cs14[4];
      v167 = resistance25Cs14[1];
      v166 = resistance25Cs14[2];
      *(v7 + 2053) = resistance25Cs14[3];
      *(v7 + 2057) = v165;
      *(v7 + 2045) = v167;
      *(v7 + 2049) = v166;
      v168 = resistance25Cs14[8];
      v170 = resistance25Cs14[5];
      v169 = resistance25Cs14[6];
      *(v7 + 2069) = resistance25Cs14[7];
      *(v7 + 2073) = v168;
      *(v7 + 2061) = v170;
      *(v7 + 2065) = v169;
      v172 = resistance25Cs14[10];
      v171 = resistance25Cs14[11];
      v173 = resistance25Cs14[9];
      *(v7 + 522) = *(resistance25Cs14 + 188);
      *(v7 + 2081) = v172;
      *(v7 + 2085) = v171;
      *(v7 + 2077) = v173;
      memcpy(v7 + 2092, [rCFreq4 temperatureCoeffs], 0x330uLL);

      baselineRCFreq1 = [modelCopy baselineRCFreq1];
      resistance25Cs15 = [baselineRCFreq1 resistance25Cs];
      *(v7 + 3571) = *resistance25Cs15;
      v176 = resistance25Cs15[4];
      v178 = resistance25Cs15[1];
      v177 = resistance25Cs15[2];
      *(v7 + 3583) = resistance25Cs15[3];
      *(v7 + 3587) = v176;
      *(v7 + 3575) = v178;
      *(v7 + 3579) = v177;
      v179 = resistance25Cs15[8];
      v181 = resistance25Cs15[5];
      v180 = resistance25Cs15[6];
      *(v7 + 3599) = resistance25Cs15[7];
      *(v7 + 3603) = v179;
      *(v7 + 3591) = v181;
      *(v7 + 3595) = v180;
      v183 = resistance25Cs15[10];
      v182 = resistance25Cs15[11];
      v184 = resistance25Cs15[9];
      *(v7 + 3618) = *(resistance25Cs15 + 188);
      *(v7 + 3611) = v183;
      *(v7 + 3615) = v182;
      *(v7 + 3607) = v184;
      memcpy(v7 + 3622, [baselineRCFreq1 temperatureCoeffs], 0x330uLL);

      baselineRCFreq2 = [modelCopy baselineRCFreq2];
      resistance25Cs16 = [baselineRCFreq2 resistance25Cs];
      *(v7 + 3826) = *resistance25Cs16;
      v187 = resistance25Cs16[4];
      v189 = resistance25Cs16[1];
      v188 = resistance25Cs16[2];
      *(v7 + 3838) = resistance25Cs16[3];
      *(v7 + 3842) = v187;
      *(v7 + 3830) = v189;
      *(v7 + 3834) = v188;
      v190 = resistance25Cs16[8];
      v192 = resistance25Cs16[5];
      v191 = resistance25Cs16[6];
      *(v7 + 3854) = resistance25Cs16[7];
      *(v7 + 3858) = v190;
      *(v7 + 3846) = v192;
      *(v7 + 3850) = v191;
      v194 = resistance25Cs16[10];
      v193 = resistance25Cs16[11];
      v195 = resistance25Cs16[9];
      *(v7 + 3873) = *(resistance25Cs16 + 188);
      *(v7 + 3866) = v194;
      *(v7 + 3870) = v193;
      *(v7 + 3862) = v195;
      memcpy(v7 + 3877, [baselineRCFreq2 temperatureCoeffs], 0x330uLL);

      baselineRCFreq3 = [modelCopy baselineRCFreq3];
      resistance25Cs17 = [baselineRCFreq3 resistance25Cs];
      *(v7 + 4081) = *resistance25Cs17;
      v198 = resistance25Cs17[4];
      v200 = resistance25Cs17[1];
      v199 = resistance25Cs17[2];
      *(v7 + 4093) = resistance25Cs17[3];
      *(v7 + 4097) = v198;
      *(v7 + 4085) = v200;
      *(v7 + 4089) = v199;
      v201 = resistance25Cs17[8];
      v203 = resistance25Cs17[5];
      v202 = resistance25Cs17[6];
      *(v7 + 4109) = resistance25Cs17[7];
      *(v7 + 4113) = v201;
      *(v7 + 4101) = v203;
      *(v7 + 4105) = v202;
      v205 = resistance25Cs17[10];
      v204 = resistance25Cs17[11];
      v206 = resistance25Cs17[9];
      *(v7 + 1032) = *(resistance25Cs17 + 188);
      *(v7 + 4121) = v205;
      *(v7 + 4125) = v204;
      *(v7 + 4117) = v206;
      memcpy(v7 + 4132, [baselineRCFreq3 temperatureCoeffs], 0x330uLL);

      baselineRCFreq4 = [modelCopy baselineRCFreq4];
      resistance25Cs18 = [baselineRCFreq4 resistance25Cs];
      *(v7 + 1084) = *resistance25Cs18;
      v209 = resistance25Cs18[3];
      v210 = resistance25Cs18[4];
      v211 = resistance25Cs18[2];
      *(v7 + 1085) = resistance25Cs18[1];
      *(v7 + 1088) = v210;
      *(v7 + 1087) = v209;
      *(v7 + 1086) = v211;
      v212 = resistance25Cs18[7];
      v213 = resistance25Cs18[8];
      v214 = resistance25Cs18[6];
      *(v7 + 1089) = resistance25Cs18[5];
      *(v7 + 1092) = v213;
      *(v7 + 1091) = v212;
      *(v7 + 1090) = v214;
      v216 = resistance25Cs18[10];
      v215 = resistance25Cs18[11];
      v217 = *(resistance25Cs18 + 188);
      *(v7 + 1093) = resistance25Cs18[9];
      *(v7 + 4383) = v217;
      *(v7 + 1095) = v215;
      *(v7 + 1094) = v216;
      memcpy(v7 + 4387, [baselineRCFreq4 temperatureCoeffs], 0x330uLL);

      memcpy(v7 + 4600, [modelCopy agingCoeffForR0s], 0x198uLL);
      memcpy(v7 + 4702, [modelCopy agingCoeffForR1s], 0x198uLL);
      memcpy(v7 + 4804, [modelCopy agingCoeffForR2s], 0x198uLL);
      memcpy(v7 + 4906, [modelCopy agingCoeffForR3s], 0x198uLL);
      memcpy(v7 + 5008, [modelCopy agingCoeffForRdcs], 0x198uLL);
      memcpy(v7 + 5110, [modelCopy agingCoeffForR0TemperatureCoeffs], 0x660uLL);
      memcpy(v7 + 5518, [modelCopy agingCoeffForR1TemperatureCoeffs], 0x660uLL);
      memcpy(v7 + 5926, [modelCopy agingCoeffForR2TemperatureCoeffs], 0x660uLL);
      memcpy(v7 + 6334, [modelCopy agingCoeffForR3TemperatureCoeffs], 0x660uLL);
      memcpy(v7 + 6742, [modelCopy agingCoeffForRdcTemperatureCoeffs], 0x660uLL);
      memcpy(v7 + 7150, [modelCopy agingCoeffForRCFreq1s], 0x198uLL);
      memcpy(v7 + 7252, [modelCopy agingCoeffForRCFreq2s], 0x198uLL);
      memcpy(v7 + 7354, [modelCopy agingCoeffForRCFreq3s], 0x198uLL);
      memcpy(v7 + 7456, [modelCopy agingCoeffForRCFreq4s], 0x198uLL);
      memcpy(v7 + 7558, [modelCopy agingCoeffForRCFreq1TemperatureCoeffs], 0x660uLL);
      memcpy(v7 + 7966, [modelCopy agingCoeffForRCFreq2TemperatureCoeffs], 0x660uLL);
      memcpy(v7 + 8374, [modelCopy agingCoeffForRCFreq3TemperatureCoeffs], 0x660uLL);
      memcpy(v7 + 8782, [modelCopy agingCoeffForRCFreq4TemperatureCoeffs], 0x660uLL);
      slopeForR0Extraps = [modelCopy slopeForR0Extraps];
      *(v7 + 9514) = *slopeForR0Extraps;
      v219 = slopeForR0Extraps[4];
      v221 = slopeForR0Extraps[1];
      v220 = slopeForR0Extraps[2];
      *(v7 + 9526) = slopeForR0Extraps[3];
      *(v7 + 9530) = v219;
      *(v7 + 9518) = v221;
      *(v7 + 9522) = v220;
      v222 = slopeForR0Extraps[8];
      v224 = slopeForR0Extraps[5];
      v223 = slopeForR0Extraps[6];
      *(v7 + 9542) = slopeForR0Extraps[7];
      *(v7 + 9546) = v222;
      *(v7 + 9534) = v224;
      *(v7 + 9538) = v223;
      v226 = slopeForR0Extraps[10];
      v225 = slopeForR0Extraps[11];
      v227 = slopeForR0Extraps[9];
      *(v7 + 9561) = *(slopeForR0Extraps + 188);
      *(v7 + 9554) = v226;
      *(v7 + 9558) = v225;
      *(v7 + 9550) = v227;
      slopeForR1Extraps = [modelCopy slopeForR1Extraps];
      *(v7 + 9565) = *slopeForR1Extraps;
      v229 = slopeForR1Extraps[4];
      v231 = slopeForR1Extraps[1];
      v230 = slopeForR1Extraps[2];
      *(v7 + 9577) = slopeForR1Extraps[3];
      *(v7 + 9581) = v229;
      *(v7 + 9569) = v231;
      *(v7 + 9573) = v230;
      v232 = slopeForR1Extraps[8];
      v234 = slopeForR1Extraps[5];
      v233 = slopeForR1Extraps[6];
      *(v7 + 9593) = slopeForR1Extraps[7];
      *(v7 + 9597) = v232;
      *(v7 + 9585) = v234;
      *(v7 + 9589) = v233;
      v236 = slopeForR1Extraps[10];
      v235 = slopeForR1Extraps[11];
      v237 = slopeForR1Extraps[9];
      *(v7 + 2403) = *(slopeForR1Extraps + 188);
      *(v7 + 9605) = v236;
      *(v7 + 9609) = v235;
      *(v7 + 9601) = v237;
      slopeForR2Extraps = [modelCopy slopeForR2Extraps];
      *(v7 + 2404) = *slopeForR2Extraps;
      v239 = slopeForR2Extraps[3];
      v240 = slopeForR2Extraps[4];
      v241 = slopeForR2Extraps[2];
      *(v7 + 2405) = slopeForR2Extraps[1];
      *(v7 + 2408) = v240;
      *(v7 + 2407) = v239;
      *(v7 + 2406) = v241;
      v242 = slopeForR2Extraps[7];
      v243 = slopeForR2Extraps[8];
      v244 = slopeForR2Extraps[6];
      *(v7 + 2409) = slopeForR2Extraps[5];
      *(v7 + 2412) = v243;
      *(v7 + 2411) = v242;
      *(v7 + 2410) = v244;
      v246 = slopeForR2Extraps[10];
      v245 = slopeForR2Extraps[11];
      v247 = *(slopeForR2Extraps + 188);
      *(v7 + 2413) = slopeForR2Extraps[9];
      *(v7 + 9663) = v247;
      *(v7 + 2415) = v245;
      *(v7 + 2414) = v246;
      slopeForR3Extraps = [modelCopy slopeForR3Extraps];
      *(v7 + 9667) = *slopeForR3Extraps;
      v249 = slopeForR3Extraps[4];
      v251 = slopeForR3Extraps[1];
      v250 = slopeForR3Extraps[2];
      *(v7 + 9679) = slopeForR3Extraps[3];
      *(v7 + 9683) = v249;
      *(v7 + 9671) = v251;
      *(v7 + 9675) = v250;
      v252 = slopeForR3Extraps[8];
      v254 = slopeForR3Extraps[5];
      v253 = slopeForR3Extraps[6];
      *(v7 + 9695) = slopeForR3Extraps[7];
      *(v7 + 9699) = v252;
      *(v7 + 9687) = v254;
      *(v7 + 9691) = v253;
      v256 = slopeForR3Extraps[10];
      v255 = slopeForR3Extraps[11];
      v257 = slopeForR3Extraps[9];
      *(v7 + 9714) = *(slopeForR3Extraps + 188);
      *(v7 + 9707) = v256;
      *(v7 + 9711) = v255;
      *(v7 + 9703) = v257;
      [modelCopy wRdcRatioThresh];
      v8[517] = v258;
      if (v258 != 0.0)
      {
        coeffSOCs = [modelCopy coeffSOCs];
        v261 = coeffSOCs[1];
        v260 = coeffSOCs[2];
        *(v7 + 2432) = *coeffSOCs;
        *(v7 + 2433) = v261;
        *(v7 + 2434) = v260;
        v263 = coeffSOCs[4];
        v262 = coeffSOCs[5];
        v264 = *(coeffSOCs + 24);
        *(v7 + 2435) = coeffSOCs[3];
        v7[9752] = v264;
        *(v7 + 2437) = v262;
        *(v7 + 2436) = v263;
        memcpy(v7 + 9753, [modelCopy coeffVs], 0x384uLL);
        v265 = v7 + 9723;
        gridWRdcRatios = [modelCopy gridWRdcRatios];
        v267 = gridWRdcRatios[4];
        *v265 = *gridWRdcRatios;
        v265[4] = v267;
      }
    }

    else
    {
      sub_100010248(self, v5);
      v5 = 0;
    }
  }

  else
  {
    sub_1000102DC(self, &v269);
    v5 = v269;
  }

  return v5;
}

- (BOOL)setBatteryModelDataToKernel:(id)kernel
{
  connect = 0;
  *md = 0u;
  v16 = 0u;
  kernelCopy = kernel;
  bytes = [kernel bytes];
  if (bytes)
  {
    v7 = bytes;
    CC_SHA256_Init(&v12);
    CC_SHA256_Update(&v12, v7, 0x9BE8u);
    CC_SHA256_Final(md, &v12);
    v8 = IOServiceMatching("ApplePPM");
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v8);
    if (MatchingService)
    {
      if (IOServiceOpen(MatchingService, mach_task_self_, 0, &connect))
      {
        sub_10001055C(self);
      }

      else if (IOConnectCallStructMethod(connect, 0x18u, v7, 0x9BE8uLL, 0, 0))
      {
        sub_1000105F8(self);
      }

      else
      {
        if ([(BatteryModelDataHandler *)self verifyHashData:md])
        {
          v10 = 1;
          goto LABEL_7;
        }

        sub_100010694(self);
      }
    }

    else
    {
      sub_100010724(self);
    }
  }

  else
  {
    sub_1000107B4(self);
  }

  v10 = v14;
LABEL_7:
  if (connect)
  {
    IOServiceClose(connect);
  }

  return v10;
}

- (BOOL)getPPMDebugDict:(const __CFDictionary *)dict
{
  v4 = IOServiceMatching("ApplePPM");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v4);
  if (!MatchingService)
  {
    return 0;
  }

  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"PPMVector", kCFAllocatorDefault, 0);
  v7 = CFGetTypeID(CFProperty);
  v8 = v7 == CFDictionaryGetTypeID();
  if (v8)
  {
    *dict = CFDictionaryCreateCopy(kCFAllocatorDefault, CFProperty);
  }

  CFRelease(CFProperty);
  return v8;
}

- (BOOL)verifyHashData:(char *)data
{
  theDict = 0;
  *buffer = 0u;
  v19 = 0u;
  v5 = [(BatteryModelDataHandler *)self getPPMDebugDict:&theDict];
  if (!theDict)
  {
    sub_100010A04(self, v5, &v17);
LABEL_22:
    v12 = v17;
    goto LABEL_16;
  }

  Value = CFDictionaryGetValue(theDict, @"PPMBatteryModel");
  if (!Value)
  {
    sub_100010974(self);
    goto LABEL_22;
  }

  v7 = CFDictionaryGetValue(Value, @"RCParamsHash");
  if (!v7)
  {
    sub_1000108E4(self);
    goto LABEL_22;
  }

  v8 = v7;
  v20.length = CFDataGetLength(v7);
  v20.location = 0;
  CFDataGetBytes(v8, v20, buffer);
  if (*data == *buffer && *(data + 1) == *&buffer[8] && *(data + 2) == v19 && *(data + 3) == *(&v19 + 1))
  {
    v12 = 1;
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_100010844(data, buffer, log);
    }

    v12 = 0;
  }

LABEL_16:
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v12;
}

@end