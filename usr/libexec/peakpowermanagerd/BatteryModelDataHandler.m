@interface BatteryModelDataHandler
+ (id)sharedInstance;
- (BOOL)getPPMDebugDict:(const __CFDictionary *)a3;
- (BOOL)setBatteryModelDataToKernel:(id)a3;
- (BOOL)verifyHashData:(char *)a3;
- (BatteryModelDataHandler)init;
- (id)createKextModelFromProtobufModel:(id)a3;
- (id)getDeviceType;
- (id)loadProtobufModelWithFileName:(id)a3;
- (int)getIntValueForKeyFromBatteryData:(id)a3;
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

- (int)getIntValueForKeyFromBatteryData:(id)a3
{
  v4 = a3;
  valuePtr = 0;
  if (!v4)
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
  Value = CFDictionaryGetValue(CFProperty, v4);
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

- (id)loadProtobufModelWithFileName:(id)a3
{
  v4 = a3;
  if (!v4)
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
  v5 = [PBStreamReader readProtoBuffersOfClass:objc_opt_class() fromFile:v4 error:&v30];
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
    v8 = [v5 firstObject];
    if (v8)
    {
      v9 = v8;
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

- (id)createKextModelFromProtobufModel:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [NSMutableData dataWithLength:39912];
    v6 = [v5 mutableBytes];
    if (v6)
    {
      v7 = v6;
      v8 = (v6 + 9205);
      *v6 = [v4 chemID];
      [v4 maxRdcRatio];
      *(v8 + 513) = v9;
      [v4 maxRdcRatioR2Extrap];
      *(v8 + 514) = v10;
      [v4 maxRdcR25Ratio];
      *(v8 + 515) = v11;
      [v4 baselineWRdc];
      *v8 = v12;
      *(v8 + 516) = [v4 mLBConfig];
      v13 = [v4 bmuResistance];
      sub_10000DFB0(v7 + 4591, v13);

      v14 = [v4 baselineRdcs];
      v16 = v14[1];
      v15 = v14[2];
      v17 = *v14;
      *(v7 + 9201) = *(v14 + 44);
      *(v7 + 9194) = v16;
      *(v7 + 9198) = v15;
      *(v7 + 9190) = v17;
      memcpy(v7 + 9206, [v4 gridOCVs], 0x4BCuLL);
      v18 = [v4 qmaxs];
      v19 = v18[4];
      *(v7 + 9509) = *v18;
      v7[9513] = v19;
      v20 = [v4 r0];
      v21 = [v20 resistance25Cs];
      *(v7 + 1) = *v21;
      v22 = v21[3];
      v23 = v21[4];
      v24 = v21[2];
      *(v7 + 5) = v21[1];
      *(v7 + 17) = v23;
      *(v7 + 13) = v22;
      *(v7 + 9) = v24;
      v25 = v21[7];
      v26 = v21[8];
      v27 = v21[6];
      *(v7 + 21) = v21[5];
      *(v7 + 33) = v26;
      *(v7 + 29) = v25;
      *(v7 + 25) = v27;
      v29 = v21[10];
      v28 = v21[11];
      v30 = *(v21 + 188);
      *(v7 + 37) = v21[9];
      *(v7 + 12) = v30;
      *(v7 + 45) = v28;
      *(v7 + 41) = v29;
      memcpy(v7 + 52, [v20 temperatureCoeffs], 0x330uLL);

      v31 = [v4 r1];
      v32 = [v31 resistance25Cs];
      *(v7 + 64) = *v32;
      v33 = v32[3];
      v34 = v32[4];
      v35 = v32[2];
      *(v7 + 65) = v32[1];
      *(v7 + 68) = v34;
      *(v7 + 67) = v33;
      *(v7 + 66) = v35;
      v36 = v32[7];
      v37 = v32[8];
      v38 = v32[6];
      *(v7 + 69) = v32[5];
      *(v7 + 72) = v37;
      *(v7 + 71) = v36;
      *(v7 + 70) = v38;
      v40 = v32[10];
      v39 = v32[11];
      v41 = *(v32 + 188);
      *(v7 + 73) = v32[9];
      *(v7 + 303) = v41;
      *(v7 + 75) = v39;
      *(v7 + 74) = v40;
      memcpy(v7 + 307, [v31 temperatureCoeffs], 0x330uLL);

      v42 = [v4 r2];
      v43 = [v42 resistance25Cs];
      *(v7 + 511) = *v43;
      v44 = v43[4];
      v46 = v43[1];
      v45 = v43[2];
      *(v7 + 523) = v43[3];
      *(v7 + 527) = v44;
      *(v7 + 515) = v46;
      *(v7 + 519) = v45;
      v47 = v43[8];
      v49 = v43[5];
      v48 = v43[6];
      *(v7 + 539) = v43[7];
      *(v7 + 543) = v47;
      *(v7 + 531) = v49;
      *(v7 + 535) = v48;
      v51 = v43[10];
      v50 = v43[11];
      v52 = v43[9];
      *(v7 + 558) = *(v43 + 188);
      *(v7 + 551) = v51;
      *(v7 + 555) = v50;
      *(v7 + 547) = v52;
      memcpy(v7 + 562, [v42 temperatureCoeffs], 0x330uLL);

      v53 = [v4 r3];
      v54 = [v53 resistance25Cs];
      *(v7 + 766) = *v54;
      v55 = v54[4];
      v57 = v54[1];
      v56 = v54[2];
      *(v7 + 778) = v54[3];
      *(v7 + 782) = v55;
      *(v7 + 770) = v57;
      *(v7 + 774) = v56;
      v58 = v54[8];
      v60 = v54[5];
      v59 = v54[6];
      *(v7 + 794) = v54[7];
      *(v7 + 798) = v58;
      *(v7 + 786) = v60;
      *(v7 + 790) = v59;
      v62 = v54[10];
      v61 = v54[11];
      v63 = v54[9];
      *(v7 + 813) = *(v54 + 188);
      *(v7 + 806) = v62;
      *(v7 + 810) = v61;
      *(v7 + 802) = v63;
      memcpy(v7 + 817, [v53 temperatureCoeffs], 0x330uLL);

      v64 = [v4 rdc];
      v65 = [v64 resistance25Cs];
      *(v7 + 1021) = *v65;
      v66 = v65[4];
      v68 = v65[1];
      v67 = v65[2];
      *(v7 + 1033) = v65[3];
      *(v7 + 1037) = v66;
      *(v7 + 1025) = v68;
      *(v7 + 1029) = v67;
      v69 = v65[8];
      v71 = v65[5];
      v70 = v65[6];
      *(v7 + 1049) = v65[7];
      *(v7 + 1053) = v69;
      *(v7 + 1041) = v71;
      *(v7 + 1045) = v70;
      v73 = v65[10];
      v72 = v65[11];
      v74 = v65[9];
      *(v7 + 267) = *(v65 + 188);
      *(v7 + 1061) = v73;
      *(v7 + 1065) = v72;
      *(v7 + 1057) = v74;
      memcpy(v7 + 1072, [v64 temperatureCoeffs], 0x330uLL);

      v75 = [v4 baselineR0];
      v76 = [v75 resistance25Cs];
      *(v7 + 574) = *v76;
      v77 = v76[3];
      v78 = v76[4];
      v79 = v76[2];
      *(v7 + 575) = v76[1];
      *(v7 + 578) = v78;
      *(v7 + 577) = v77;
      *(v7 + 576) = v79;
      v80 = v76[7];
      v81 = v76[8];
      v82 = v76[6];
      *(v7 + 579) = v76[5];
      *(v7 + 582) = v81;
      *(v7 + 581) = v80;
      *(v7 + 580) = v82;
      v84 = v76[10];
      v83 = v76[11];
      v85 = *(v76 + 188);
      *(v7 + 583) = v76[9];
      *(v7 + 2343) = v85;
      *(v7 + 585) = v83;
      *(v7 + 584) = v84;
      memcpy(v7 + 2347, [v75 temperatureCoeffs], 0x330uLL);

      v86 = [v4 baselineR1];
      v87 = [v86 resistance25Cs];
      *(v7 + 2551) = *v87;
      v88 = v87[4];
      v90 = v87[1];
      v89 = v87[2];
      *(v7 + 2563) = v87[3];
      *(v7 + 2567) = v88;
      *(v7 + 2555) = v90;
      *(v7 + 2559) = v89;
      v91 = v87[8];
      v93 = v87[5];
      v92 = v87[6];
      *(v7 + 2579) = v87[7];
      *(v7 + 2583) = v91;
      *(v7 + 2571) = v93;
      *(v7 + 2575) = v92;
      v95 = v87[10];
      v94 = v87[11];
      v96 = v87[9];
      *(v7 + 2598) = *(v87 + 188);
      *(v7 + 2591) = v95;
      *(v7 + 2595) = v94;
      *(v7 + 2587) = v96;
      memcpy(v7 + 2602, [v86 temperatureCoeffs], 0x330uLL);

      v97 = [v4 baselineR2];
      v98 = [v97 resistance25Cs];
      *(v7 + 2806) = *v98;
      v99 = v98[4];
      v101 = v98[1];
      v100 = v98[2];
      *(v7 + 2818) = v98[3];
      *(v7 + 2822) = v99;
      *(v7 + 2810) = v101;
      *(v7 + 2814) = v100;
      v102 = v98[8];
      v104 = v98[5];
      v103 = v98[6];
      *(v7 + 2834) = v98[7];
      *(v7 + 2838) = v102;
      *(v7 + 2826) = v104;
      *(v7 + 2830) = v103;
      v106 = v98[10];
      v105 = v98[11];
      v107 = v98[9];
      *(v7 + 2853) = *(v98 + 188);
      *(v7 + 2846) = v106;
      *(v7 + 2850) = v105;
      *(v7 + 2842) = v107;
      memcpy(v7 + 2857, [v97 temperatureCoeffs], 0x330uLL);

      v108 = [v4 baselineR3];
      v109 = [v108 resistance25Cs];
      *(v7 + 3061) = *v109;
      v110 = v109[4];
      v112 = v109[1];
      v111 = v109[2];
      *(v7 + 3073) = v109[3];
      *(v7 + 3077) = v110;
      *(v7 + 3065) = v112;
      *(v7 + 3069) = v111;
      v113 = v109[8];
      v115 = v109[5];
      v114 = v109[6];
      *(v7 + 3089) = v109[7];
      *(v7 + 3093) = v113;
      *(v7 + 3081) = v115;
      *(v7 + 3085) = v114;
      v117 = v109[10];
      v116 = v109[11];
      v118 = v109[9];
      *(v7 + 777) = *(v109 + 188);
      *(v7 + 3101) = v117;
      *(v7 + 3105) = v116;
      *(v7 + 3097) = v118;
      memcpy(v7 + 3112, [v108 temperatureCoeffs], 0x330uLL);

      v119 = [v4 baselineR4];
      v120 = [v119 resistance25Cs];
      *(v7 + 829) = *v120;
      v121 = v120[3];
      v122 = v120[4];
      v123 = v120[2];
      *(v7 + 830) = v120[1];
      *(v7 + 833) = v122;
      *(v7 + 832) = v121;
      *(v7 + 831) = v123;
      v124 = v120[7];
      v125 = v120[8];
      v126 = v120[6];
      *(v7 + 834) = v120[5];
      *(v7 + 837) = v125;
      *(v7 + 836) = v124;
      *(v7 + 835) = v126;
      v128 = v120[10];
      v127 = v120[11];
      v129 = *(v120 + 188);
      *(v7 + 838) = v120[9];
      *(v7 + 3363) = v129;
      *(v7 + 840) = v127;
      *(v7 + 839) = v128;
      memcpy(v7 + 3367, [v119 temperatureCoeffs], 0x330uLL);

      v130 = [v4 rCFreq1];
      v131 = [v130 resistance25Cs];
      *(v7 + 319) = *v131;
      v132 = v131[3];
      v133 = v131[4];
      v134 = v131[2];
      *(v7 + 320) = v131[1];
      *(v7 + 323) = v133;
      *(v7 + 322) = v132;
      *(v7 + 321) = v134;
      v135 = v131[7];
      v136 = v131[8];
      v137 = v131[6];
      *(v7 + 324) = v131[5];
      *(v7 + 327) = v136;
      *(v7 + 326) = v135;
      *(v7 + 325) = v137;
      v139 = v131[10];
      v138 = v131[11];
      v140 = *(v131 + 188);
      *(v7 + 328) = v131[9];
      *(v7 + 1323) = v140;
      *(v7 + 330) = v138;
      *(v7 + 329) = v139;
      memcpy(v7 + 1327, [v130 temperatureCoeffs], 0x330uLL);

      v141 = [v4 rCFreq2];
      v142 = [v141 resistance25Cs];
      *(v7 + 1531) = *v142;
      v143 = v142[4];
      v145 = v142[1];
      v144 = v142[2];
      *(v7 + 1543) = v142[3];
      *(v7 + 1547) = v143;
      *(v7 + 1535) = v145;
      *(v7 + 1539) = v144;
      v146 = v142[8];
      v148 = v142[5];
      v147 = v142[6];
      *(v7 + 1559) = v142[7];
      *(v7 + 1563) = v146;
      *(v7 + 1551) = v148;
      *(v7 + 1555) = v147;
      v150 = v142[10];
      v149 = v142[11];
      v151 = v142[9];
      *(v7 + 1578) = *(v142 + 188);
      *(v7 + 1571) = v150;
      *(v7 + 1575) = v149;
      *(v7 + 1567) = v151;
      memcpy(v7 + 1582, [v141 temperatureCoeffs], 0x330uLL);

      v152 = [v4 rCFreq3];
      v153 = [v152 resistance25Cs];
      *(v7 + 1786) = *v153;
      v154 = v153[4];
      v156 = v153[1];
      v155 = v153[2];
      *(v7 + 1798) = v153[3];
      *(v7 + 1802) = v154;
      *(v7 + 1790) = v156;
      *(v7 + 1794) = v155;
      v157 = v153[8];
      v159 = v153[5];
      v158 = v153[6];
      *(v7 + 1814) = v153[7];
      *(v7 + 1818) = v157;
      *(v7 + 1806) = v159;
      *(v7 + 1810) = v158;
      v161 = v153[10];
      v160 = v153[11];
      v162 = v153[9];
      *(v7 + 1833) = *(v153 + 188);
      *(v7 + 1826) = v161;
      *(v7 + 1830) = v160;
      *(v7 + 1822) = v162;
      memcpy(v7 + 1837, [v152 temperatureCoeffs], 0x330uLL);

      v163 = [v4 rCFreq4];
      v164 = [v163 resistance25Cs];
      *(v7 + 2041) = *v164;
      v165 = v164[4];
      v167 = v164[1];
      v166 = v164[2];
      *(v7 + 2053) = v164[3];
      *(v7 + 2057) = v165;
      *(v7 + 2045) = v167;
      *(v7 + 2049) = v166;
      v168 = v164[8];
      v170 = v164[5];
      v169 = v164[6];
      *(v7 + 2069) = v164[7];
      *(v7 + 2073) = v168;
      *(v7 + 2061) = v170;
      *(v7 + 2065) = v169;
      v172 = v164[10];
      v171 = v164[11];
      v173 = v164[9];
      *(v7 + 522) = *(v164 + 188);
      *(v7 + 2081) = v172;
      *(v7 + 2085) = v171;
      *(v7 + 2077) = v173;
      memcpy(v7 + 2092, [v163 temperatureCoeffs], 0x330uLL);

      v174 = [v4 baselineRCFreq1];
      v175 = [v174 resistance25Cs];
      *(v7 + 3571) = *v175;
      v176 = v175[4];
      v178 = v175[1];
      v177 = v175[2];
      *(v7 + 3583) = v175[3];
      *(v7 + 3587) = v176;
      *(v7 + 3575) = v178;
      *(v7 + 3579) = v177;
      v179 = v175[8];
      v181 = v175[5];
      v180 = v175[6];
      *(v7 + 3599) = v175[7];
      *(v7 + 3603) = v179;
      *(v7 + 3591) = v181;
      *(v7 + 3595) = v180;
      v183 = v175[10];
      v182 = v175[11];
      v184 = v175[9];
      *(v7 + 3618) = *(v175 + 188);
      *(v7 + 3611) = v183;
      *(v7 + 3615) = v182;
      *(v7 + 3607) = v184;
      memcpy(v7 + 3622, [v174 temperatureCoeffs], 0x330uLL);

      v185 = [v4 baselineRCFreq2];
      v186 = [v185 resistance25Cs];
      *(v7 + 3826) = *v186;
      v187 = v186[4];
      v189 = v186[1];
      v188 = v186[2];
      *(v7 + 3838) = v186[3];
      *(v7 + 3842) = v187;
      *(v7 + 3830) = v189;
      *(v7 + 3834) = v188;
      v190 = v186[8];
      v192 = v186[5];
      v191 = v186[6];
      *(v7 + 3854) = v186[7];
      *(v7 + 3858) = v190;
      *(v7 + 3846) = v192;
      *(v7 + 3850) = v191;
      v194 = v186[10];
      v193 = v186[11];
      v195 = v186[9];
      *(v7 + 3873) = *(v186 + 188);
      *(v7 + 3866) = v194;
      *(v7 + 3870) = v193;
      *(v7 + 3862) = v195;
      memcpy(v7 + 3877, [v185 temperatureCoeffs], 0x330uLL);

      v196 = [v4 baselineRCFreq3];
      v197 = [v196 resistance25Cs];
      *(v7 + 4081) = *v197;
      v198 = v197[4];
      v200 = v197[1];
      v199 = v197[2];
      *(v7 + 4093) = v197[3];
      *(v7 + 4097) = v198;
      *(v7 + 4085) = v200;
      *(v7 + 4089) = v199;
      v201 = v197[8];
      v203 = v197[5];
      v202 = v197[6];
      *(v7 + 4109) = v197[7];
      *(v7 + 4113) = v201;
      *(v7 + 4101) = v203;
      *(v7 + 4105) = v202;
      v205 = v197[10];
      v204 = v197[11];
      v206 = v197[9];
      *(v7 + 1032) = *(v197 + 188);
      *(v7 + 4121) = v205;
      *(v7 + 4125) = v204;
      *(v7 + 4117) = v206;
      memcpy(v7 + 4132, [v196 temperatureCoeffs], 0x330uLL);

      v207 = [v4 baselineRCFreq4];
      v208 = [v207 resistance25Cs];
      *(v7 + 1084) = *v208;
      v209 = v208[3];
      v210 = v208[4];
      v211 = v208[2];
      *(v7 + 1085) = v208[1];
      *(v7 + 1088) = v210;
      *(v7 + 1087) = v209;
      *(v7 + 1086) = v211;
      v212 = v208[7];
      v213 = v208[8];
      v214 = v208[6];
      *(v7 + 1089) = v208[5];
      *(v7 + 1092) = v213;
      *(v7 + 1091) = v212;
      *(v7 + 1090) = v214;
      v216 = v208[10];
      v215 = v208[11];
      v217 = *(v208 + 188);
      *(v7 + 1093) = v208[9];
      *(v7 + 4383) = v217;
      *(v7 + 1095) = v215;
      *(v7 + 1094) = v216;
      memcpy(v7 + 4387, [v207 temperatureCoeffs], 0x330uLL);

      memcpy(v7 + 4600, [v4 agingCoeffForR0s], 0x198uLL);
      memcpy(v7 + 4702, [v4 agingCoeffForR1s], 0x198uLL);
      memcpy(v7 + 4804, [v4 agingCoeffForR2s], 0x198uLL);
      memcpy(v7 + 4906, [v4 agingCoeffForR3s], 0x198uLL);
      memcpy(v7 + 5008, [v4 agingCoeffForRdcs], 0x198uLL);
      memcpy(v7 + 5110, [v4 agingCoeffForR0TemperatureCoeffs], 0x660uLL);
      memcpy(v7 + 5518, [v4 agingCoeffForR1TemperatureCoeffs], 0x660uLL);
      memcpy(v7 + 5926, [v4 agingCoeffForR2TemperatureCoeffs], 0x660uLL);
      memcpy(v7 + 6334, [v4 agingCoeffForR3TemperatureCoeffs], 0x660uLL);
      memcpy(v7 + 6742, [v4 agingCoeffForRdcTemperatureCoeffs], 0x660uLL);
      memcpy(v7 + 7150, [v4 agingCoeffForRCFreq1s], 0x198uLL);
      memcpy(v7 + 7252, [v4 agingCoeffForRCFreq2s], 0x198uLL);
      memcpy(v7 + 7354, [v4 agingCoeffForRCFreq3s], 0x198uLL);
      memcpy(v7 + 7456, [v4 agingCoeffForRCFreq4s], 0x198uLL);
      memcpy(v7 + 7558, [v4 agingCoeffForRCFreq1TemperatureCoeffs], 0x660uLL);
      memcpy(v7 + 7966, [v4 agingCoeffForRCFreq2TemperatureCoeffs], 0x660uLL);
      memcpy(v7 + 8374, [v4 agingCoeffForRCFreq3TemperatureCoeffs], 0x660uLL);
      memcpy(v7 + 8782, [v4 agingCoeffForRCFreq4TemperatureCoeffs], 0x660uLL);
      v218 = [v4 slopeForR0Extraps];
      *(v7 + 9514) = *v218;
      v219 = v218[4];
      v221 = v218[1];
      v220 = v218[2];
      *(v7 + 9526) = v218[3];
      *(v7 + 9530) = v219;
      *(v7 + 9518) = v221;
      *(v7 + 9522) = v220;
      v222 = v218[8];
      v224 = v218[5];
      v223 = v218[6];
      *(v7 + 9542) = v218[7];
      *(v7 + 9546) = v222;
      *(v7 + 9534) = v224;
      *(v7 + 9538) = v223;
      v226 = v218[10];
      v225 = v218[11];
      v227 = v218[9];
      *(v7 + 9561) = *(v218 + 188);
      *(v7 + 9554) = v226;
      *(v7 + 9558) = v225;
      *(v7 + 9550) = v227;
      v228 = [v4 slopeForR1Extraps];
      *(v7 + 9565) = *v228;
      v229 = v228[4];
      v231 = v228[1];
      v230 = v228[2];
      *(v7 + 9577) = v228[3];
      *(v7 + 9581) = v229;
      *(v7 + 9569) = v231;
      *(v7 + 9573) = v230;
      v232 = v228[8];
      v234 = v228[5];
      v233 = v228[6];
      *(v7 + 9593) = v228[7];
      *(v7 + 9597) = v232;
      *(v7 + 9585) = v234;
      *(v7 + 9589) = v233;
      v236 = v228[10];
      v235 = v228[11];
      v237 = v228[9];
      *(v7 + 2403) = *(v228 + 188);
      *(v7 + 9605) = v236;
      *(v7 + 9609) = v235;
      *(v7 + 9601) = v237;
      v238 = [v4 slopeForR2Extraps];
      *(v7 + 2404) = *v238;
      v239 = v238[3];
      v240 = v238[4];
      v241 = v238[2];
      *(v7 + 2405) = v238[1];
      *(v7 + 2408) = v240;
      *(v7 + 2407) = v239;
      *(v7 + 2406) = v241;
      v242 = v238[7];
      v243 = v238[8];
      v244 = v238[6];
      *(v7 + 2409) = v238[5];
      *(v7 + 2412) = v243;
      *(v7 + 2411) = v242;
      *(v7 + 2410) = v244;
      v246 = v238[10];
      v245 = v238[11];
      v247 = *(v238 + 188);
      *(v7 + 2413) = v238[9];
      *(v7 + 9663) = v247;
      *(v7 + 2415) = v245;
      *(v7 + 2414) = v246;
      v248 = [v4 slopeForR3Extraps];
      *(v7 + 9667) = *v248;
      v249 = v248[4];
      v251 = v248[1];
      v250 = v248[2];
      *(v7 + 9679) = v248[3];
      *(v7 + 9683) = v249;
      *(v7 + 9671) = v251;
      *(v7 + 9675) = v250;
      v252 = v248[8];
      v254 = v248[5];
      v253 = v248[6];
      *(v7 + 9695) = v248[7];
      *(v7 + 9699) = v252;
      *(v7 + 9687) = v254;
      *(v7 + 9691) = v253;
      v256 = v248[10];
      v255 = v248[11];
      v257 = v248[9];
      *(v7 + 9714) = *(v248 + 188);
      *(v7 + 9707) = v256;
      *(v7 + 9711) = v255;
      *(v7 + 9703) = v257;
      [v4 wRdcRatioThresh];
      v8[517] = v258;
      if (v258 != 0.0)
      {
        v259 = [v4 coeffSOCs];
        v261 = v259[1];
        v260 = v259[2];
        *(v7 + 2432) = *v259;
        *(v7 + 2433) = v261;
        *(v7 + 2434) = v260;
        v263 = v259[4];
        v262 = v259[5];
        v264 = *(v259 + 24);
        *(v7 + 2435) = v259[3];
        v7[9752] = v264;
        *(v7 + 2437) = v262;
        *(v7 + 2436) = v263;
        memcpy(v7 + 9753, [v4 coeffVs], 0x384uLL);
        v265 = v7 + 9723;
        v266 = [v4 gridWRdcRatios];
        v267 = v266[4];
        *v265 = *v266;
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

- (BOOL)setBatteryModelDataToKernel:(id)a3
{
  connect = 0;
  *md = 0u;
  v16 = 0u;
  v5 = a3;
  v6 = [a3 bytes];
  if (v6)
  {
    v7 = v6;
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

- (BOOL)getPPMDebugDict:(const __CFDictionary *)a3
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
    *a3 = CFDictionaryCreateCopy(kCFAllocatorDefault, CFProperty);
  }

  CFRelease(CFProperty);
  return v8;
}

- (BOOL)verifyHashData:(char *)a3
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
  if (*a3 == *buffer && *(a3 + 1) == *&buffer[8] && *(a3 + 2) == v19 && *(a3 + 3) == *(&v19 + 1))
  {
    v12 = 1;
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_100010844(a3, buffer, log);
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