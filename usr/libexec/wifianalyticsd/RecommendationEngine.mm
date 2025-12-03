@interface RecommendationEngine
- (BOOL)canCaptureforDPS;
- (BOOL)canWDforDPS;
- (RecommendationEngine)init;
- (float)medianCCA:(id)a;
- (unsigned)medianRSSI:(id)i;
- (void)addNumRecommendedCapture;
- (void)addNumRecommendedWD;
- (void)addNumSuppressedCapture;
- (void)addNumSuppressedWD;
- (void)isDatapathStudyShowingDPS:(id)s andReply:(id)reply;
- (void)recommendActionFromData:(id)data driverType:(int64_t)type andReply:(id)reply;
@end

@implementation RecommendationEngine

- (RecommendationEngine)init
{
  v9.receiver = self;
  v9.super_class = RecommendationEngine;
  v2 = [(RecommendationEngine *)&v9 init];
  if (!v2)
  {
    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v11 = "[RecommendationEngine init]";
      v12 = 1024;
      v13 = 35;
      v8 = "%{public}s::%d:Error super init";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, v8, buf, 0x12u);
    }

LABEL_10:

    v5 = 0;
    goto LABEL_4;
  }

  v3 = +[RecommendationPreferences sharedObject];
  preferences = v2->_preferences;
  v2->_preferences = v3;

  if (!v2->_preferences)
  {
    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v11 = "[RecommendationEngine init]";
      v12 = 1024;
      v13 = 38;
      v8 = "%{public}s::%d:Error RecommendationPreferences init";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v5 = v2;
LABEL_4:

  return v5;
}

- (BOOL)canWDforDPS
{
  v3 = +[NSDate date];
  v4 = [(NSMutableDictionary *)self->_dpsWDBudgetDict valueForKey:@"dps_lastWD"];

  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_dpsWDBudgetDict valueForKey:@"dps_lastWD"];
    [v3 timeIntervalSinceDate:v5];
    v7 = v6;
    v8 = (60 * [(RecommendationPreferences *)self->_preferences minutes_between_dps_wd]);
    v9 = WALogCategoryDefaultHandle();
    v10 = v9;
    v11 = v7 > v8;
    if (v7 <= v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136446978;
        v17 = "[RecommendationEngine canWDforDPS]";
        v18 = 1024;
        v19 = 61;
        v20 = 2048;
        v21 = v7;
        v22 = 2112;
        v23 = v5;
        v12 = "%{public}s::%d:DPS Not Allowed - Last DPS WD was %f seconds ago at %@";
        v13 = v10;
        v14 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_10;
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = 136446978;
      v17 = "[RecommendationEngine canWDforDPS]";
      v18 = 1024;
      v19 = 58;
      v20 = 2048;
      v21 = v7;
      v22 = 2112;
      v23 = v5;
      v12 = "%{public}s::%d:DPS Allowed - Last DPS WD was %f seconds ago at %@";
      v13 = v10;
      v14 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v13, v14, v12, &v16, 0x26u);
    }

    goto LABEL_12;
  }

  v5 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136446466;
    v17 = "[RecommendationEngine canWDforDPS]";
    v18 = 1024;
    v19 = 52;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:kDPSLastWD not yet populated", &v16, 0x12u);
  }

  v11 = 1;
LABEL_12:

  return v11;
}

- (BOOL)canCaptureforDPS
{
  v3 = +[NSDate date];
  v4 = [(NSMutableDictionary *)self->_dpsWDBudgetDict valueForKey:@"dps_lastCapture"];

  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_dpsWDBudgetDict valueForKey:@"dps_lastCapture"];
    [v3 timeIntervalSinceDate:v5];
    v7 = v6;
    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446978;
      v11 = "[RecommendationEngine canCaptureforDPS]";
      v12 = 1024;
      v13 = 76;
      v14 = 2048;
      v15 = v7;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:Capture Allowed - Last DPS WD was %f seconds ago at %@", &v10, 0x26u);
    }
  }

  else
  {
    v5 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136446466;
      v11 = "[RecommendationEngine canCaptureforDPS]";
      v12 = 1024;
      v13 = 71;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:kDPSLastCapture not yet populated", &v10, 0x12u);
    }
  }

  return 1;
}

- (float)medianCCA:(id)a
{
  aCopy = a;
  v4 = [aCopy fieldForKey:@"DPSR_dpsCounterSamples"];
  repeatableValues = [v4 repeatableValues];
  v6 = [repeatableValues count];

  if (v6 > 1)
  {
    v52 = 0;
    v53 = v6 - 1;
    v13 = 0;
    v51 = 0;
    for (i = aCopy; ; aCopy = i)
    {
      v14 = [aCopy fieldForKey:@"DPSR_dpsCounterSamples"];
      repeatableValues2 = [v14 repeatableValues];
      v16 = [repeatableValues2 objectAtIndex:0];
      v17 = [v16 fieldForKey:@"DPSCS_peerStats"];
      subMessageValue = [v17 subMessageValue];
      v19 = [subMessageValue fieldForKey:@"NWAPS_ccas"];
      repeatableValues3 = [v19 repeatableValues];
      v21 = [repeatableValues3 count];

      if (v21 <= v13)
      {
        break;
      }

      v22 = v13;
      v63 = [aCopy fieldForKey:@"DPSR_dpsCounterSamples"];
      repeatableValues4 = [v63 repeatableValues];
      v61 = [repeatableValues4 objectAtIndex:v53];
      v60 = [v61 fieldForKey:@"DPSCS_peerStats"];
      subMessageValue2 = [v60 subMessageValue];
      v58 = [subMessageValue2 fieldForKey:@"NWAPS_ccas"];
      repeatableValues5 = [v58 repeatableValues];
      v56 = [repeatableValues5 objectAtIndex:v13];
      v55 = [v56 fieldForKey:@"NWASB_residentTime"];
      uint64Value = [v55 uint64Value];
      v24 = [aCopy fieldForKey:@"DPSR_dpsCounterSamples"];
      repeatableValues6 = [v24 repeatableValues];
      v26 = [repeatableValues6 objectAtIndex:0];
      v27 = [v26 fieldForKey:@"DPSCS_peerStats"];
      subMessageValue3 = [v27 subMessageValue];
      v29 = [subMessageValue3 fieldForKey:@"NWAPS_ccas"];
      repeatableValues7 = [v29 repeatableValues];
      v65 = v22;
      v31 = [repeatableValues7 objectAtIndex:v22];
      v32 = [v31 fieldForKey:@"NWASB_residentTime"];
      v33 = uint64Value - [v32 uint64Value];

      if (v33 > v52)
      {
        v34 = [i fieldForKey:@"DPSR_dpsCounterSamples"];
        repeatableValues8 = [v34 repeatableValues];
        v36 = [repeatableValues8 objectAtIndex:v53];
        v37 = [v36 fieldForKey:@"DPSCS_peerStats"];
        subMessageValue4 = [v37 subMessageValue];
        v39 = [subMessageValue4 fieldForKey:@"NWAPS_ccas"];
        [v39 repeatableValues];
        v40 = v64 = v33;
        v41 = [v40 objectAtIndex:v65];
        v42 = [v41 fieldForKey:@"NWASB_state"];
        stringValue = [v42 stringValue];

        v51 = stringValue;
        v52 = v64;
      }

      v13 = v65 + 1;
    }

    v8 = v51;
    if (v51)
    {
      v44 = [NSScanner scannerWithString:v51];
      v45 = +[NSCharacterSet decimalDigitCharacterSet];
      [v44 scanUpToCharactersFromSet:v45 intoString:0];

      v46 = +[NSCharacterSet decimalDigitCharacterSet];
      v66 = 0;
      [v44 scanCharactersFromSet:v46 intoString:&v66];
      v47 = v66;

      [v47 floatValue];
      v9 = v48;
      v49 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446978;
        v68 = "[RecommendationEngine medianCCA:]";
        v69 = 1024;
        v70 = 121;
        v71 = 2112;
        v72 = v51;
        v73 = 2048;
        v74 = v9;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:CCA %@ floatCCA %f", buf, 0x26u);
      }
    }

    else
    {
      v8 = WALogCategoryDefaultHandle();
      v9 = 65535.0;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v10 = "Instances populated with the same values, CCA not found (slowDPS)";
        v11 = v8;
        v12 = 2;
        goto LABEL_18;
      }
    }
  }

  else
  {
    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v68 = "[RecommendationEngine medianCCA:]";
      v69 = 1024;
      v70 = 90;
      v71 = 2048;
      v72 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:Not enough DPSR_dpsCounterSamples %lu", buf, 0x1Cu);
    }

    v8 = WALogCategoryDefaultHandle();
    v9 = 0.0;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v68 = v6;
      v10 = "Not enough DPSR_dpsCounterSamples %lu";
      v11 = v8;
      v12 = 12;
LABEL_18:
      _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, v10, buf, v12);
    }
  }

  return v9;
}

- (unsigned)medianRSSI:(id)i
{
  iCopy = i;
  v4 = [iCopy fieldForKey:@"DPSR_dpsCounterSamples"];
  repeatableValues = [v4 repeatableValues];
  v6 = [repeatableValues count];

  v7 = [iCopy fieldForKey:@"DPSR_dpsCounterSamples"];
  repeatableValues2 = [v7 repeatableValues];
  v9 = [repeatableValues2 objectAtIndex:0];
  v10 = [v9 fieldForKey:@"DPSCS_peerStats"];
  subMessageValue = [v10 subMessageValue];
  v12 = [subMessageValue fieldForKey:@"NWAPS_rssis"];
  repeatableValues3 = [v12 repeatableValues];
  v41 = [repeatableValues3 count];

  v56 = iCopy;
  if (v6)
  {
    v14 = 0;
    v15 = 1;
    do
    {
      v16 = [iCopy fieldForKey:@"DPSR_dpsCounterSamples"];
      repeatableValues4 = [v16 repeatableValues];
      v18 = [repeatableValues4 objectAtIndex:v14];
      v19 = [v18 fieldForKey:@"DPSCS_peerStats"];
      subMessageValue2 = [v19 subMessageValue];
      v21 = [subMessageValue2 fieldForKey:@"NWAPS_rssiValue"];
      int32Value = [v21 int32Value];

      v22 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446978;
        v58 = "[RecommendationEngine medianRSSI:]";
        v59 = 1024;
        v60 = 140;
        v61 = 1024;
        *v62 = v15 - 1;
        *&v62[4] = 1024;
        *&v62[6] = int32Value;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:SlowDPS: RSSI in sample %d: %d", buf, 0x1Eu);
      }

      v14 = v15;
      v23 = v6 > v15++;
      iCopy = v56;
    }

    while (v23);
  }

  else
  {
    int32Value = 0;
  }

  v24 = v41;
  if (v41)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v40 = v6 - 1;
    v28 = 1;
    do
    {
      v54 = v26;
      v55 = v27;
      v53 = [iCopy fieldForKey:{@"DPSR_dpsCounterSamples", v40}];
      repeatableValues5 = [v53 repeatableValues];
      v51 = [repeatableValues5 objectAtIndex:v40];
      v50 = [v51 fieldForKey:@"DPSCS_peerStats"];
      subMessageValue3 = [v50 subMessageValue];
      v48 = [subMessageValue3 fieldForKey:@"NWAPS_rssis"];
      repeatableValues6 = [v48 repeatableValues];
      v46 = [repeatableValues6 objectAtIndex:v25];
      v45 = [v46 fieldForKey:@"NWASB_residentTime"];
      uint64Value = [v45 uint64Value];
      v44 = [iCopy fieldForKey:@"DPSR_dpsCounterSamples"];
      repeatableValues7 = [v44 repeatableValues];
      v30 = [repeatableValues7 objectAtIndex:0];
      v31 = [v30 fieldForKey:@"DPSCS_peerStats"];
      subMessageValue4 = [v31 subMessageValue];
      v33 = [subMessageValue4 fieldForKey:@"NWAPS_rssis"];
      repeatableValues8 = [v33 repeatableValues];
      v35 = [repeatableValues8 objectAtIndex:v25];
      v36 = [v35 fieldForKey:@"NWASB_residentTime"];
      v37 = uint64Value - [v36 uint64Value];

      iCopy = v56;
      v24 = v41;

      v26 = v54;
      if (v37 >= v54)
      {
        v27 = v28 - 1;
      }

      else
      {
        v27 = v55;
      }

      if (v37 > v54)
      {
        v26 = v37;
      }

      v25 = v28;
      v23 = v41 > v28++;
    }

    while (v23);
  }

  else
  {
    v27 = 0;
  }

  v38 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447234;
    v58 = "[RecommendationEngine medianRSSI:]";
    v59 = 1024;
    v60 = 150;
    v61 = 2048;
    *v62 = v24;
    *&v62[8] = 1024;
    v63 = v27;
    v64 = 1024;
    v65 = int32Value;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:SlowDPS: rssiBinCount:%llu rssiBin(Based on residency):%d currentRSSI:%d", buf, 0x28u);
  }

  return v27;
}

- (void)isDatapathStudyShowingDPS:(id)s andReply:(id)reply
{
  sCopy = s;
  replyCopy = reply;
  v114 = 0;
  v129 = 0;
  v130 = 0;
  v127 = 0;
  v128 = 0;
  v8 = [sCopy fieldForKey:@"DPSR_dpsCounterSamples"];
  repeatableValues = [v8 repeatableValues];
  v10 = [repeatableValues count];

  v11 = WALogCategoryDefaultHandle();
  v12 = v11;
  v13 = v10 - 1;
  if (v10 <= 1)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v116 = "[RecommendationEngine isDatapathStudyShowingDPS:andReply:]";
      v117 = 1024;
      v118 = 171;
      v119 = 2048;
      *v120 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s::%d:Not enough samples %lu", buf, 0x1Cu);
    }

    replyCopy[2](replyCopy, 0, &stru_1000F04E0);
    goto LABEL_64;
  }

  v102 = replyCopy;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v116 = "[RecommendationEngine isDatapathStudyShowingDPS:andReply:]";
    v117 = 1024;
    v118 = 176;
    v119 = 2048;
    *v120 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Called with countOfSamples %lu", buf, 0x1Cu);
  }

  v100 = v10;

  v112 = sCopy;
  v14 = [sCopy fieldForKey:@"DPSR_dpsCounterSamples"];
  repeatableValues2 = [v14 repeatableValues];
  v16 = [repeatableValues2 objectAtIndex:0];
  v17 = [v16 fieldForKey:@"DPSCS_peerStats"];
  subMessageValue = [v17 subMessageValue];
  v19 = [subMessageValue fieldForKey:@"NWAPS_acCompletions"];
  repeatableValues3 = [v19 repeatableValues];
  v21 = [repeatableValues3 count];

  selfCopy = self;
  if (v21 < 5)
  {
    v23 = v112;
    if (!v21)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v22 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v116 = v21;
      _os_log_fault_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "Out of range acCount found in NWAPS_acCompletions: %lu", buf, 0xCu);
    }

    v21 = 4;
    v23 = v112;
  }

  v24 = 0;
  v111 = v13;
  v103 = v21;
  do
  {
    v113 = v24;
    v25 = [v23 fieldForKey:{@"DPSR_dpsCounterSamples", v100}];
    repeatableValues4 = [v25 repeatableValues];
    v27 = [repeatableValues4 objectAtIndex:v13];
    v28 = [v27 fieldForKey:@"DPSCS_peerStats"];
    subMessageValue2 = [v28 subMessageValue];
    v30 = [subMessageValue2 fieldForKey:@"NWAPS_acCompletions"];
    repeatableValues5 = [v30 repeatableValues];
    v32 = [repeatableValues5 objectAtIndex:v24];
    v33 = [v32 fieldForKey:@"NWAPACTC_success"];
    uint32Value = [v33 uint32Value];

    v34 = [v23 fieldForKey:@"DPSR_dpsCounterSamples"];
    repeatableValues6 = [v34 repeatableValues];
    v36 = [repeatableValues6 objectAtIndex:0];
    v37 = [v36 fieldForKey:@"DPSCS_peerStats"];
    subMessageValue3 = [v37 subMessageValue];
    v39 = [subMessageValue3 fieldForKey:@"NWAPS_acCompletions"];
    repeatableValues7 = [v39 repeatableValues];
    v41 = [repeatableValues7 objectAtIndex:v113];
    v42 = [v41 fieldForKey:@"NWAPACTC_success"];
    uint32Value2 = [v42 uint32Value];

    v44 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447234;
      v116 = "[RecommendationEngine isDatapathStudyShowingDPS:andReply:]";
      v117 = 1024;
      v118 = 193;
      v119 = 2048;
      *v120 = v111;
      *&v120[8] = 1024;
      *v121 = uint32Value;
      *&v121[4] = 1024;
      *v122 = uint32Value2;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:NWAPACTC_success[%lu] %u NWAPACTC_success[0] %u ", buf, 0x28u);
    }

    *(&v129 + v113) = uint32Value - uint32Value2;
    v45 = [v112 fieldForKey:@"DPSR_dpsCounterSamples"];
    repeatableValues8 = [v45 repeatableValues];
    v47 = [repeatableValues8 objectAtIndex:v111];
    v48 = [v47 fieldForKey:@"DPSCS_peerStats"];
    subMessageValue4 = [v48 subMessageValue];
    v50 = [subMessageValue4 fieldForKey:@"NWAPS_acCompletions"];
    repeatableValues9 = [v50 repeatableValues];
    v52 = [repeatableValues9 objectAtIndex:v113];
    v53 = [v52 fieldForKey:@"NWAPACTC_qeuedPackets"];
    uint32Value3 = [v53 uint32Value];

    v54 = [v112 fieldForKey:@"DPSR_dpsCounterSamples"];
    repeatableValues10 = [v54 repeatableValues];
    v56 = [repeatableValues10 objectAtIndex:0];
    v57 = [v56 fieldForKey:@"DPSCS_peerStats"];
    subMessageValue5 = [v57 subMessageValue];
    v59 = [subMessageValue5 fieldForKey:@"NWAPS_acCompletions"];
    repeatableValues11 = [v59 repeatableValues];
    v61 = [repeatableValues11 objectAtIndex:v113];
    v62 = [v61 fieldForKey:@"NWAPACTC_qeuedPackets"];
    uint32Value4 = [v62 uint32Value];

    v64 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447234;
      v116 = "[RecommendationEngine isDatapathStudyShowingDPS:andReply:]";
      v117 = 1024;
      v118 = 201;
      v119 = 2048;
      *v120 = v111;
      *&v120[8] = 1024;
      *v121 = uint32Value3;
      *&v121[4] = 1024;
      *v122 = uint32Value4;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:NWAPACTC_qeuedPackets[%lu] %u NWAPACTC_qeuedPackets[0] %u ", buf, 0x28u);
    }

    if (uint32Value3)
    {
      v65 = uint32Value4 == 0;
    }

    else
    {
      v65 = 1;
    }

    v66 = !v65;
    buf[v113 - 4] = v66;
    v108 = [v112 fieldForKey:@"DPSR_dpsCounterSamples"];
    repeatableValues12 = [v108 repeatableValues];
    v68 = [repeatableValues12 objectAtIndex:v111];
    v69 = [v68 fieldForKey:@"DPSCS_peerStats"];
    subMessageValue6 = [v69 subMessageValue];
    v71 = [subMessageValue6 fieldForKey:@"NWAPS_acCompletions"];
    repeatableValues13 = [v71 repeatableValues];
    v73 = [repeatableValues13 objectAtIndex:v113];
    v74 = [v73 fieldForKey:@"NWAPACTC_durSinceLastEnqueueAtLastCheck"];
    uint32Value5 = [v74 uint32Value];
    *(&v127 + v113) = uint32Value5;

    v13 = v111;
    v76 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446978;
      v116 = "[RecommendationEngine isDatapathStudyShowingDPS:andReply:]";
      v117 = 1024;
      v118 = 207;
      v119 = 2048;
      *v120 = v111;
      *&v120[8] = 1024;
      *v121 = uint32Value5;
      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:NWAPACTC_durSinceLastEnqueueAtLastCheck[%lu] %u", buf, 0x22u);
    }

    v23 = v112;
    v24 = v113 + 1;
  }

  while (v103 != v113 + 1);
LABEL_26:
  v77 = 0;
  v78 = 0;
  v79 = 0;
  do
  {
    v104 = v78;
    v109 = v79;
    v80 = v77;
    while (1)
    {
      v81 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        v82 = *(&v129 + v80);
        v83 = buf[v80 - 4];
        v84 = *(&v127 + v80);
        *buf = 136448002;
        v116 = "[RecommendationEngine isDatapathStudyShowingDPS:andReply:]";
        v117 = 1024;
        v118 = 212;
        v119 = 1024;
        *v120 = v80;
        *&v120[4] = 1024;
        *&v120[6] = v82;
        *v121 = 1024;
        *&v121[2] = v80;
        *v122 = 1024;
        *&v122[2] = v83;
        v123 = 1024;
        v124 = v80;
        v125 = 1024;
        v126 = v84;
        _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Evaluating deltaSuccessPerAC[%d] %d queuedPendingAtBeginningAndEnd[%d] %d durSinceLastEnqueueAtLastCheck[%d] %d", buf, 0x36u);
      }

      if ([(RecommendationPreferences *)selfCopy->_preferences force_dps_recommend_always])
      {
        v85 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v116 = "[RecommendationEngine isDatapathStudyShowingDPS:andReply:]";
          v117 = 1024;
          v118 = 215;
          _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_ERROR, "%{public}s::%d:force_dps_recommend_always is true, faking 0 success, pending data, and a a long stall", buf, 0x12u);
        }

        LODWORD(v130) = 0;
        BYTE2(v114) = 1;
        LODWORD(v128) = 4000 * [(RecommendationPreferences *)selfCopy->_preferences dps_stall_dur_for_wd];
      }

      if (!*(&v129 + v80) && buf[v80 - 4] == 1)
      {
        v86 = *(&v127 + v80);
        if (1000 * [(RecommendationPreferences *)selfCopy->_preferences dps_stall_dur_for_wd]<= v86)
        {
          break;
        }
      }

      if (++v80 == 4)
      {
        if (v104)
        {
          v79 = v109;
          goto LABEL_51;
        }

        v96 = WALogCategoryDefaultHandle();
        sCopy = v112;
        replyCopy = v102;
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v116 = "[RecommendationEngine isDatapathStudyShowingDPS:andReply:]";
          v117 = 1024;
          v118 = 251;
          _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:sDPS: Recommending WARecommendNull", buf, 0x12u);
        }

        v93 = v102[2];
        v94 = v102;
        v95 = 0;
        v79 = v109;
LABEL_62:
        v93(v94, v95, v79);
        goto LABEL_63;
      }
    }

    [(RecommendationEngine *)selfCopy medianCCA:v112];
    if (v87 >= 35.0)
    {
      [(RecommendationEngine *)selfCopy medianCCA:v112];
      if (v89 >= [(RecommendationPreferences *)selfCopy->_preferences dps_wd_cca])
      {
        v88 = @"Data Path Stuck~High CCA";
      }

      else
      {
        v88 = @"Data Path Stuck~Med CCA";
      }
    }

    else
    {
      v88 = @"Data Path Stuck~Low CCA";
    }

    v100 = [NSString stringWithFormat:v88, v100];

    v90 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v116 = "[RecommendationEngine isDatapathStudyShowingDPS:andReply:]";
      v117 = 1024;
      v118 = 234;
      v119 = 2112;
      *v120 = v100;
      _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%@", buf, 0x1Cu);
    }

    v77 = v80 + 1;
    v78 = 1;
    v65 = v80 == 3;
    v79 = v100;
  }

  while (!v65);
LABEL_51:
  dps_capture_evaluated_at_sample = [(RecommendationPreferences *)selfCopy->_preferences dps_capture_evaluated_at_sample];
  if (v101 == dps_capture_evaluated_at_sample)
  {
    v92 = WALogCategoryDefaultHandle();
    sCopy = v112;
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v116 = "[RecommendationEngine isDatapathStudyShowingDPS:andReply:]";
      v117 = 1024;
      v118 = 242;
      _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:sDPS: Recommending WARecommendFullCapture", buf, 0x12u);
    }

    replyCopy = v102;
    v93 = v102[2];
    v94 = v102;
    v95 = 1;
    goto LABEL_62;
  }

  dps_trap_evaluated_at_sample = [(RecommendationPreferences *)selfCopy->_preferences dps_trap_evaluated_at_sample];
  v98 = WALogCategoryDefaultHandle();
  v99 = v98;
  sCopy = v112;
  if (v101 == dps_trap_evaluated_at_sample)
  {
    if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v116 = "[RecommendationEngine isDatapathStudyShowingDPS:andReply:]";
      v117 = 1024;
      v118 = 246;
      _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:sDPS: Recommending WARecommendTrapWatchdog", buf, 0x12u);
    }

    replyCopy = v102;
    v93 = v102[2];
    v94 = v102;
    v95 = 2;
    goto LABEL_62;
  }

  if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v116 = "[RecommendationEngine isDatapathStudyShowingDPS:andReply:]";
    v117 = 1024;
    v118 = 256;
    _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Returning", buf, 0x12u);
  }

  replyCopy = v102;
  (v102[2])(v102, 0, &stru_1000F04E0);
LABEL_63:

LABEL_64:
}

- (void)addNumRecommendedWD
{
  v3 = [(NSMutableDictionary *)self->_dpsWDBudgetDict valueForKey:@"dps_numRecommendedWD"];

  if (v3)
  {
    v4 = [(NSMutableDictionary *)self->_dpsWDBudgetDict valueForKey:@"dps_numRecommendedWD"];
    v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 intValue] + 1);
  }

  else
  {
    v5 = [NSNumber numberWithInt:1];
  }

  [(NSMutableDictionary *)self->_dpsWDBudgetDict setObject:v5 forKey:@"dps_numRecommendedWD"];
}

- (void)addNumSuppressedWD
{
  v3 = [(NSMutableDictionary *)self->_dpsWDBudgetDict valueForKey:@"dps_numSuppressedWD"];

  if (v3)
  {
    v4 = [(NSMutableDictionary *)self->_dpsWDBudgetDict valueForKey:@"dps_numSuppressedWD"];
    v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 intValue] + 1);
  }

  else
  {
    v5 = [NSNumber numberWithInt:1];
  }

  [(NSMutableDictionary *)self->_dpsWDBudgetDict setObject:v5 forKey:@"dps_numSuppressedWD"];
}

- (void)addNumRecommendedCapture
{
  v3 = [(NSMutableDictionary *)self->_dpsWDBudgetDict valueForKey:@"dps_numRecommendedCapture"];

  if (v3)
  {
    v4 = [(NSMutableDictionary *)self->_dpsWDBudgetDict valueForKey:@"dps_numRecommendedCapture"];
    v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 intValue] + 1);
  }

  else
  {
    v5 = [NSNumber numberWithInt:1];
  }

  [(NSMutableDictionary *)self->_dpsWDBudgetDict setObject:v5 forKey:@"dps_numRecommendedCapture"];
}

- (void)addNumSuppressedCapture
{
  v3 = [(NSMutableDictionary *)self->_dpsWDBudgetDict valueForKey:@"dps_numSuppressedCapture"];

  if (v3)
  {
    v4 = [(NSMutableDictionary *)self->_dpsWDBudgetDict valueForKey:@"dps_numSuppressedCapture"];
    v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 intValue] + 1);
  }

  else
  {
    v5 = [NSNumber numberWithInt:1];
  }

  [(NSMutableDictionary *)self->_dpsWDBudgetDict setObject:v5 forKey:@"dps_numSuppressedCapture"];
}

- (void)recommendActionFromData:(id)data driverType:(int64_t)type andReply:(id)reply
{
  dataCopy = data;
  replyCopy = reply;
  if (![(RecommendationPreferences *)self->_preferences disable_dps_wd])
  {
    v11 = [dataCopy fieldForKey:@"DPSR_dpsCounterSamples"];
    repeatableValues = [v11 repeatableValues];
    v13 = [repeatableValues count];
    if (v13 == [(RecommendationPreferences *)self->_preferences dps_capture_evaluated_at_sample])
    {
    }

    else
    {
      v14 = [dataCopy fieldForKey:@"DPSR_dpsCounterSamples"];
      repeatableValues2 = [v14 repeatableValues];
      v16 = [repeatableValues2 count];
      dps_trap_evaluated_at_sample = [(RecommendationPreferences *)self->_preferences dps_trap_evaluated_at_sample];

      if (v16 != dps_trap_evaluated_at_sample)
      {
        goto LABEL_9;
      }
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000539A8;
    v18[3] = &unk_1000EDDA8;
    v18[4] = self;
    v20 = replyCopy;
    v19 = dataCopy;
    typeCopy = type;
    [(RecommendationEngine *)self isDatapathStudyShowingDPS:v19 andReply:v18];

    goto LABEL_9;
  }

  v10 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v23 = "[RecommendationEngine recommendActionFromData:driverType:andReply:]";
    v24 = 1024;
    v25 = 314;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%{public}s::%d:WARecommendNull disable_dps_wd", buf, 0x12u);
  }

  (*(replyCopy + 2))(replyCopy, 0, @"disable_dps_wd");
LABEL_9:
}

@end