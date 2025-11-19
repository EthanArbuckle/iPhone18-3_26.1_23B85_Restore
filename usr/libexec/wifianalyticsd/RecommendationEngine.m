@interface RecommendationEngine
- (BOOL)canCaptureforDPS;
- (BOOL)canWDforDPS;
- (RecommendationEngine)init;
- (float)medianCCA:(id)a3;
- (unsigned)medianRSSI:(id)a3;
- (void)addNumRecommendedCapture;
- (void)addNumRecommendedWD;
- (void)addNumSuppressedCapture;
- (void)addNumSuppressedWD;
- (void)isDatapathStudyShowingDPS:(id)a3 andReply:(id)a4;
- (void)recommendActionFromData:(id)a3 driverType:(int64_t)a4 andReply:(id)a5;
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

- (float)medianCCA:(id)a3
{
  v3 = a3;
  v4 = [v3 fieldForKey:@"DPSR_dpsCounterSamples"];
  v5 = [v4 repeatableValues];
  v6 = [v5 count];

  if (v6 > 1)
  {
    v52 = 0;
    v53 = v6 - 1;
    v13 = 0;
    v51 = 0;
    for (i = v3; ; v3 = i)
    {
      v14 = [v3 fieldForKey:@"DPSR_dpsCounterSamples"];
      v15 = [v14 repeatableValues];
      v16 = [v15 objectAtIndex:0];
      v17 = [v16 fieldForKey:@"DPSCS_peerStats"];
      v18 = [v17 subMessageValue];
      v19 = [v18 fieldForKey:@"NWAPS_ccas"];
      v20 = [v19 repeatableValues];
      v21 = [v20 count];

      if (v21 <= v13)
      {
        break;
      }

      v22 = v13;
      v63 = [v3 fieldForKey:@"DPSR_dpsCounterSamples"];
      v62 = [v63 repeatableValues];
      v61 = [v62 objectAtIndex:v53];
      v60 = [v61 fieldForKey:@"DPSCS_peerStats"];
      v59 = [v60 subMessageValue];
      v58 = [v59 fieldForKey:@"NWAPS_ccas"];
      v57 = [v58 repeatableValues];
      v56 = [v57 objectAtIndex:v13];
      v55 = [v56 fieldForKey:@"NWASB_residentTime"];
      v23 = [v55 uint64Value];
      v24 = [v3 fieldForKey:@"DPSR_dpsCounterSamples"];
      v25 = [v24 repeatableValues];
      v26 = [v25 objectAtIndex:0];
      v27 = [v26 fieldForKey:@"DPSCS_peerStats"];
      v28 = [v27 subMessageValue];
      v29 = [v28 fieldForKey:@"NWAPS_ccas"];
      v30 = [v29 repeatableValues];
      v65 = v22;
      v31 = [v30 objectAtIndex:v22];
      v32 = [v31 fieldForKey:@"NWASB_residentTime"];
      v33 = v23 - [v32 uint64Value];

      if (v33 > v52)
      {
        v34 = [i fieldForKey:@"DPSR_dpsCounterSamples"];
        v35 = [v34 repeatableValues];
        v36 = [v35 objectAtIndex:v53];
        v37 = [v36 fieldForKey:@"DPSCS_peerStats"];
        v38 = [v37 subMessageValue];
        v39 = [v38 fieldForKey:@"NWAPS_ccas"];
        [v39 repeatableValues];
        v40 = v64 = v33;
        v41 = [v40 objectAtIndex:v65];
        v42 = [v41 fieldForKey:@"NWASB_state"];
        v43 = [v42 stringValue];

        v51 = v43;
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

- (unsigned)medianRSSI:(id)a3
{
  v3 = a3;
  v4 = [v3 fieldForKey:@"DPSR_dpsCounterSamples"];
  v5 = [v4 repeatableValues];
  v6 = [v5 count];

  v7 = [v3 fieldForKey:@"DPSR_dpsCounterSamples"];
  v8 = [v7 repeatableValues];
  v9 = [v8 objectAtIndex:0];
  v10 = [v9 fieldForKey:@"DPSCS_peerStats"];
  v11 = [v10 subMessageValue];
  v12 = [v11 fieldForKey:@"NWAPS_rssis"];
  v13 = [v12 repeatableValues];
  v41 = [v13 count];

  v56 = v3;
  if (v6)
  {
    v14 = 0;
    v15 = 1;
    do
    {
      v16 = [v3 fieldForKey:@"DPSR_dpsCounterSamples"];
      v17 = [v16 repeatableValues];
      v18 = [v17 objectAtIndex:v14];
      v19 = [v18 fieldForKey:@"DPSCS_peerStats"];
      v20 = [v19 subMessageValue];
      v21 = [v20 fieldForKey:@"NWAPS_rssiValue"];
      v42 = [v21 int32Value];

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
        *&v62[6] = v42;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:SlowDPS: RSSI in sample %d: %d", buf, 0x1Eu);
      }

      v14 = v15;
      v23 = v6 > v15++;
      v3 = v56;
    }

    while (v23);
  }

  else
  {
    v42 = 0;
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
      v53 = [v3 fieldForKey:{@"DPSR_dpsCounterSamples", v40}];
      v52 = [v53 repeatableValues];
      v51 = [v52 objectAtIndex:v40];
      v50 = [v51 fieldForKey:@"DPSCS_peerStats"];
      v49 = [v50 subMessageValue];
      v48 = [v49 fieldForKey:@"NWAPS_rssis"];
      v47 = [v48 repeatableValues];
      v46 = [v47 objectAtIndex:v25];
      v45 = [v46 fieldForKey:@"NWASB_residentTime"];
      v43 = [v45 uint64Value];
      v44 = [v3 fieldForKey:@"DPSR_dpsCounterSamples"];
      v29 = [v44 repeatableValues];
      v30 = [v29 objectAtIndex:0];
      v31 = [v30 fieldForKey:@"DPSCS_peerStats"];
      v32 = [v31 subMessageValue];
      v33 = [v32 fieldForKey:@"NWAPS_rssis"];
      v34 = [v33 repeatableValues];
      v35 = [v34 objectAtIndex:v25];
      v36 = [v35 fieldForKey:@"NWASB_residentTime"];
      v37 = v43 - [v36 uint64Value];

      v3 = v56;
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
    v65 = v42;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:SlowDPS: rssiBinCount:%llu rssiBin(Based on residency):%d currentRSSI:%d", buf, 0x28u);
  }

  return v27;
}

- (void)isDatapathStudyShowingDPS:(id)a3 andReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v114 = 0;
  v129 = 0;
  v130 = 0;
  v127 = 0;
  v128 = 0;
  v8 = [v6 fieldForKey:@"DPSR_dpsCounterSamples"];
  v9 = [v8 repeatableValues];
  v10 = [v9 count];

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

    v7[2](v7, 0, &stru_1000F04E0);
    goto LABEL_64;
  }

  v102 = v7;
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

  v112 = v6;
  v14 = [v6 fieldForKey:@"DPSR_dpsCounterSamples"];
  v15 = [v14 repeatableValues];
  v16 = [v15 objectAtIndex:0];
  v17 = [v16 fieldForKey:@"DPSCS_peerStats"];
  v18 = [v17 subMessageValue];
  v19 = [v18 fieldForKey:@"NWAPS_acCompletions"];
  v20 = [v19 repeatableValues];
  v21 = [v20 count];

  v110 = self;
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
    v26 = [v25 repeatableValues];
    v27 = [v26 objectAtIndex:v13];
    v28 = [v27 fieldForKey:@"DPSCS_peerStats"];
    v29 = [v28 subMessageValue];
    v30 = [v29 fieldForKey:@"NWAPS_acCompletions"];
    v31 = [v30 repeatableValues];
    v32 = [v31 objectAtIndex:v24];
    v33 = [v32 fieldForKey:@"NWAPACTC_success"];
    v106 = [v33 uint32Value];

    v34 = [v23 fieldForKey:@"DPSR_dpsCounterSamples"];
    v35 = [v34 repeatableValues];
    v36 = [v35 objectAtIndex:0];
    v37 = [v36 fieldForKey:@"DPSCS_peerStats"];
    v38 = [v37 subMessageValue];
    v39 = [v38 fieldForKey:@"NWAPS_acCompletions"];
    v40 = [v39 repeatableValues];
    v41 = [v40 objectAtIndex:v113];
    v42 = [v41 fieldForKey:@"NWAPACTC_success"];
    v43 = [v42 uint32Value];

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
      *v121 = v106;
      *&v121[4] = 1024;
      *v122 = v43;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:NWAPACTC_success[%lu] %u NWAPACTC_success[0] %u ", buf, 0x28u);
    }

    *(&v129 + v113) = v106 - v43;
    v45 = [v112 fieldForKey:@"DPSR_dpsCounterSamples"];
    v46 = [v45 repeatableValues];
    v47 = [v46 objectAtIndex:v111];
    v48 = [v47 fieldForKey:@"DPSCS_peerStats"];
    v49 = [v48 subMessageValue];
    v50 = [v49 fieldForKey:@"NWAPS_acCompletions"];
    v51 = [v50 repeatableValues];
    v52 = [v51 objectAtIndex:v113];
    v53 = [v52 fieldForKey:@"NWAPACTC_qeuedPackets"];
    v107 = [v53 uint32Value];

    v54 = [v112 fieldForKey:@"DPSR_dpsCounterSamples"];
    v55 = [v54 repeatableValues];
    v56 = [v55 objectAtIndex:0];
    v57 = [v56 fieldForKey:@"DPSCS_peerStats"];
    v58 = [v57 subMessageValue];
    v59 = [v58 fieldForKey:@"NWAPS_acCompletions"];
    v60 = [v59 repeatableValues];
    v61 = [v60 objectAtIndex:v113];
    v62 = [v61 fieldForKey:@"NWAPACTC_qeuedPackets"];
    v63 = [v62 uint32Value];

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
      *v121 = v107;
      *&v121[4] = 1024;
      *v122 = v63;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:NWAPACTC_qeuedPackets[%lu] %u NWAPACTC_qeuedPackets[0] %u ", buf, 0x28u);
    }

    if (v107)
    {
      v65 = v63 == 0;
    }

    else
    {
      v65 = 1;
    }

    v66 = !v65;
    buf[v113 - 4] = v66;
    v108 = [v112 fieldForKey:@"DPSR_dpsCounterSamples"];
    v67 = [v108 repeatableValues];
    v68 = [v67 objectAtIndex:v111];
    v69 = [v68 fieldForKey:@"DPSCS_peerStats"];
    v70 = [v69 subMessageValue];
    v71 = [v70 fieldForKey:@"NWAPS_acCompletions"];
    v72 = [v71 repeatableValues];
    v73 = [v72 objectAtIndex:v113];
    v74 = [v73 fieldForKey:@"NWAPACTC_durSinceLastEnqueueAtLastCheck"];
    v75 = [v74 uint32Value];
    *(&v127 + v113) = v75;

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
      *v121 = v75;
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

      if ([(RecommendationPreferences *)v110->_preferences force_dps_recommend_always])
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
        LODWORD(v128) = 4000 * [(RecommendationPreferences *)v110->_preferences dps_stall_dur_for_wd];
      }

      if (!*(&v129 + v80) && buf[v80 - 4] == 1)
      {
        v86 = *(&v127 + v80);
        if (1000 * [(RecommendationPreferences *)v110->_preferences dps_stall_dur_for_wd]<= v86)
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
        v6 = v112;
        v7 = v102;
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

    [(RecommendationEngine *)v110 medianCCA:v112];
    if (v87 >= 35.0)
    {
      [(RecommendationEngine *)v110 medianCCA:v112];
      if (v89 >= [(RecommendationPreferences *)v110->_preferences dps_wd_cca])
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

    v105 = [NSString stringWithFormat:v88, v100];

    v90 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v116 = "[RecommendationEngine isDatapathStudyShowingDPS:andReply:]";
      v117 = 1024;
      v118 = 234;
      v119 = 2112;
      *v120 = v105;
      _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%@", buf, 0x1Cu);
    }

    v77 = v80 + 1;
    v78 = 1;
    v65 = v80 == 3;
    v79 = v105;
  }

  while (!v65);
LABEL_51:
  v91 = [(RecommendationPreferences *)v110->_preferences dps_capture_evaluated_at_sample];
  if (v101 == v91)
  {
    v92 = WALogCategoryDefaultHandle();
    v6 = v112;
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v116 = "[RecommendationEngine isDatapathStudyShowingDPS:andReply:]";
      v117 = 1024;
      v118 = 242;
      _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:sDPS: Recommending WARecommendFullCapture", buf, 0x12u);
    }

    v7 = v102;
    v93 = v102[2];
    v94 = v102;
    v95 = 1;
    goto LABEL_62;
  }

  v97 = [(RecommendationPreferences *)v110->_preferences dps_trap_evaluated_at_sample];
  v98 = WALogCategoryDefaultHandle();
  v99 = v98;
  v6 = v112;
  if (v101 == v97)
  {
    if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v116 = "[RecommendationEngine isDatapathStudyShowingDPS:andReply:]";
      v117 = 1024;
      v118 = 246;
      _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:sDPS: Recommending WARecommendTrapWatchdog", buf, 0x12u);
    }

    v7 = v102;
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

  v7 = v102;
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

- (void)recommendActionFromData:(id)a3 driverType:(int64_t)a4 andReply:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (![(RecommendationPreferences *)self->_preferences disable_dps_wd])
  {
    v11 = [v8 fieldForKey:@"DPSR_dpsCounterSamples"];
    v12 = [v11 repeatableValues];
    v13 = [v12 count];
    if (v13 == [(RecommendationPreferences *)self->_preferences dps_capture_evaluated_at_sample])
    {
    }

    else
    {
      v14 = [v8 fieldForKey:@"DPSR_dpsCounterSamples"];
      v15 = [v14 repeatableValues];
      v16 = [v15 count];
      v17 = [(RecommendationPreferences *)self->_preferences dps_trap_evaluated_at_sample];

      if (v16 != v17)
      {
        goto LABEL_9;
      }
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000539A8;
    v18[3] = &unk_1000EDDA8;
    v18[4] = self;
    v20 = v9;
    v19 = v8;
    v21 = a4;
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

  (*(v9 + 2))(v9, 0, @"disable_dps_wd");
LABEL_9:
}

@end