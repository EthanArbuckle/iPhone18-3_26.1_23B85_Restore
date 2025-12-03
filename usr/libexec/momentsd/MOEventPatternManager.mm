@interface MOEventPatternManager
- (MOEventPatternManager)initWithUniverse:(id)universe;
- (id)_initializeBatchedTypeDetector;
- (id)_initializeStreamingTypeDetector;
- (id)_processEvents:(id)events forDetector:(id)detector;
- (id)processEvents:(id)events withRefreshVariant:(unint64_t)variant forDateInterval:(id)interval;
@end

@implementation MOEventPatternManager

- (MOEventPatternManager)initWithUniverse:(id)universe
{
  universeCopy = universe;
  v22.receiver = self;
  v22.super_class = MOEventPatternManager;
  v6 = [(MOEventPatternManager *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_universe, universe);
    universe = v7->_universe;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [(MODaemonUniverse *)universe getService:v10];
    configurationManager = v7->_configurationManager;
    v7->_configurationManager = v11;

    v13 = v7->_universe;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [(MODaemonUniverse *)v13 getService:v15];
    eventStore = v7->_eventStore;
    v7->_eventStore = v16;

    v18 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create("MOEventPatternManager", v18);
    queue = v7->_queue;
    v7->_queue = v19;
  }

  return v7;
}

- (id)_initializeBatchedTypeDetector
{
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityBatchedPatternDetection);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Constructing batched pattern detectors", buf, 2u);
  }

  v124 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v118 = objc_opt_new();
  [v4 setPredicate:?];
  v119 = v7;
  [v4 setFeatureExtractor:v7];
  v120 = v6;
  [v4 setFeatureTransformer:v6];
  v121 = v5;
  [v4 setTrendDetector:v5];
  v137[0] = @"MinimumFeatureNumberForTrend";
  LODWORD(v8) = 5.0;
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"PD_WDT_MinimumFeatureNumberForTrend" withFallback:v8];
  v9 = [NSNumber numberWithFloat:?];
  v138[0] = v9;
  v137[1] = @"MinimumValueOfFeatureMaximum";
  LODWORD(v10) = 1133903872;
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"PD_WDT_MinimumValueOfFeatureMaximum" withFallback:v10];
  v11 = [NSNumber numberWithFloat:?];
  v138[1] = v11;
  v137[2] = @"MinimumFeatureSlopeForTrend";
  LODWORD(v12) = 25.0;
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"PD_WDT_MinimumFeatureSlopeForTrend" withFallback:v12];
  v13 = [NSNumber numberWithFloat:?];
  v138[2] = v13;
  v137[3] = @"AggregationWindow";
  v14 = [NSNumber numberWithInt:[(MOConfigurationManagerBase *)self->_configurationManager getIntegerSettingForKey:@"PD_WDT_AggregationWindow" withFallback:16]];
  v138[3] = v14;
  v137[4] = @"AggregationType";
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"PD_WDT_AggregationType" withFallback:0.0];
  v15 = [NSNumber numberWithFloat:?];
  v137[5] = @"TrendFeatureType";
  v138[4] = v15;
  v138[5] = &off_100369178;
  v16 = [NSDictionary dictionaryWithObjects:v138 forKeys:v137 count:6];
  [v4 configure:v16];

  [v4 setPatternDetectorName:@"durationWorkoutTrend"];
  v122 = v4;
  [v124 addObject:v4];
  v123 = objc_opt_new();
  v17 = objc_opt_new();
  v18 = objc_opt_new();
  v19 = objc_opt_new();
  v117 = v17;
  [v123 setPredicate:v17];
  v116 = v18;
  [v123 setFeatureExtractor:v18];
  v115 = v19;
  [v123 setRoutineDetector:v19];
  v135[0] = @"RoutineConsistencyThreshold";
  v113 = [NSNumber numberWithInt:[(MOConfigurationManagerBase *)self->_configurationManager getIntegerSettingForKey:@"PD_TODWR_ConsistencyThreshold" withFallback:2]];
  v136[0] = v113;
  v135[1] = @"IntraWeekFreqThreshold";
  v111 = [NSNumber numberWithInt:[(MOConfigurationManagerBase *)self->_configurationManager getIntegerSettingForKey:@"PD_TODWR_IntraWeekFreqThreshold" withFallback:3]];
  v136[1] = v111;
  v135[2] = @"RoutineStdThreshold";
  LODWORD(v20) = 1042983595;
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"PD_TODWR_RoutineStdThreshold" withFallback:v20];
  v109 = [NSNumber numberWithFloat:?];
  v136[2] = v109;
  v135[3] = @"RoutineStdFilterMultiplier";
  LODWORD(v21) = 1.5;
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"PD_TODWR_RoutineStdFilterMultiplier" withFallback:v21];
  v22 = [NSNumber numberWithFloat:?];
  v136[3] = v22;
  v135[4] = @"RoutineEnvelope";
  LODWORD(v23) = 0.75;
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"PD_TODWR_RoutineEnvelope" withFallback:v23];
  v24 = [NSNumber numberWithFloat:?];
  v136[4] = v24;
  v135[5] = @"RoutineDetectionSlidingWinSize";
  LODWORD(v25) = 3.0;
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"PD_TODWR_SlidingWinSize" withFallback:v25];
  v26 = [NSNumber numberWithFloat:?];
  v136[5] = v26;
  v135[6] = @"RoutineDetectionSlidingWinStepSize";
  LODWORD(v27) = 1.0;
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"PD_TODWR_SlidingWinStepSize" withFallback:v27];
  v28 = [NSNumber numberWithFloat:?];
  v136[6] = v28;
  v135[7] = @"MaxNumDailyDetections";
  v29 = [NSNumber numberWithInt:[(MOConfigurationManagerBase *)self->_configurationManager getIntegerSettingForKey:@"PD_TODWR_MaxNumDailyDetections" withFallback:3]];
  v136[7] = v29;
  v135[8] = @"LastWindowEnd";
  LODWORD(v30) = 1103495168;
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"PD_TODWR_LastWindowEnd" withFallback:v30];
  v31 = [NSNumber numberWithFloat:?];
  v136[8] = v31;
  v135[9] = @"LastWindowStartThreshold";
  LODWORD(v32) = 1101135872;
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"PD_TODWR_LastWindowStartThreshold" withFallback:v32];
  v33 = [NSNumber numberWithFloat:?];
  v135[10] = @"RoutineFeatureType";
  v136[9] = v33;
  v136[10] = &off_100369190;
  v34 = [NSDictionary dictionaryWithObjects:v136 forKeys:v135 count:11];
  [v123 configure:v34];

  [v123 setPatternDetectorName:@"timeOfDayWorkoutRoutine"];
  [v124 addObject:v123];
  v35 = objc_opt_new();
  v36 = objc_opt_new();
  v37 = objc_opt_new();
  v38 = objc_opt_new();
  v112 = v36;
  [v35 setPredicate:v36];
  v110 = v37;
  [v35 setFeatureExtractor:v37];
  v108 = v38;
  [v35 setTrendDetector:v38];
  v133[0] = @"ExcludeTextOnlyConversations";
  v39 = [NSNumber numberWithBool:[(MOConfigurationManagerBase *)self->_configurationManager getBoolSettingForKey:@"PD_SCDT_ExcludeTextOnlyConversations" withFallback:1]];
  v134[0] = v39;
  v133[1] = @"MinimumTextCount";
  LODWORD(v40) = 1.0;
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"PD_SCDT_MinimumTextCount" withFallback:v40];
  v41 = [NSNumber numberWithFloat:?];
  v134[1] = v41;
  v133[2] = @"MinimumTotalCallDuration";
  LODWORD(v42) = 1114636288;
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"PD_SCDT_MinimumTotalCallDuration" withFallback:v42];
  v43 = [NSNumber numberWithFloat:?];
  v134[2] = v43;
  v133[3] = @"MaximumNumberOfContacts";
  LODWORD(v44) = 1.0;
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"PD_SCDT_MaximumNumberOfContacts" withFallback:v44];
  v45 = [NSNumber numberWithFloat:?];
  v134[3] = v45;
  v133[4] = @"MinimumFeatureNumberForTrend";
  LODWORD(v46) = 5.0;
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"PD_SCDT_MinimumFeatureNumberForTrend" withFallback:v46];
  v47 = [NSNumber numberWithFloat:?];
  v134[4] = v47;
  v133[5] = @"MinimumValueOfFeatureMaximum";
  LODWORD(v48) = 1133903872;
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"PD_SCDT_MinimumValueOfFeatureMaximum" withFallback:v48];
  v49 = [NSNumber numberWithFloat:?];
  v134[5] = v49;
  v133[6] = @"MinimumFeatureSlopeForTrend";
  LODWORD(v50) = 25.0;
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"PD_SCDT_MinimumFeatureSlopeForTrend" withFallback:v50];
  v51 = [NSNumber numberWithFloat:?];
  v133[7] = @"TrendFeatureType";
  v134[6] = v51;
  v134[7] = &off_100369178;
  v52 = [NSDictionary dictionaryWithObjects:v134 forKeys:v133 count:8];
  [v35 configure:v52];

  [v35 setPatternDetectorName:@"durationSigContactTrend"];
  v114 = v35;
  [v124 addObject:v35];
  v53 = objc_opt_new();
  v54 = objc_opt_new();
  v55 = objc_opt_new();
  v56 = objc_opt_new();
  v106 = v54;
  [v53 setPredicate:v54];
  v105 = v55;
  [v53 setFeatureExtractor:v55];
  v104 = v56;
  [v53 setTrendDetector:v56];
  v131[0] = @"ExcludeTextOnlyConversations";
  v57 = [NSNumber numberWithBool:[(MOConfigurationManagerBase *)self->_configurationManager getBoolSettingForKey:@"PD_SCFT_ExcludeTextOnlyConversations" withFallback:0]];
  v132[0] = v57;
  v131[1] = @"MinimumTextCount";
  LODWORD(v58) = 5.0;
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"PD_SCFT_MinimumTextCount" withFallback:v58];
  v59 = [NSNumber numberWithFloat:?];
  v132[1] = v59;
  v131[2] = @"MinimumTotalCallDuration";
  LODWORD(v60) = 1114636288;
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"PD_SCFT_MinimumTotalCallDuration" withFallback:v60];
  v61 = [NSNumber numberWithFloat:?];
  v132[2] = v61;
  v131[3] = @"MaximumNumberOfContacts";
  LODWORD(v62) = 1.0;
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"PD_SCFT_MaximumNumberOfContacts" withFallback:v62];
  v63 = [NSNumber numberWithFloat:?];
  v132[3] = v63;
  v131[4] = @"MinimumFeatureNumberForTrend";
  LODWORD(v64) = 5.0;
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"PD_SCFT_MinimumFeatureNumberForTrend" withFallback:v64];
  v65 = [NSNumber numberWithFloat:?];
  v132[4] = v65;
  v131[5] = @"MinimumValueOfFeatureMaximum";
  LODWORD(v66) = 10.0;
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"PD_SCFT_MinimumValueOfFeatureMaximum" withFallback:v66];
  v67 = [NSNumber numberWithFloat:?];
  v132[5] = v67;
  v131[6] = @"MinimumFeatureSlopeForTrend";
  LODWORD(v68) = 1.0;
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"PD_SCFT_MinimumFeatureSlopeForTrend" withFallback:v68];
  v69 = [NSNumber numberWithFloat:?];
  v131[7] = @"TrendFeatureType";
  v132[6] = v69;
  v132[7] = &off_1003691A8;
  v70 = [NSDictionary dictionaryWithObjects:v132 forKeys:v131 count:8];
  [v53 configure:v70];

  [v53 setPatternDetectorName:@"frequencySigContactTrend"];
  v107 = v53;
  [v124 addObject:v53];
  v71 = objc_opt_new();
  v72 = objc_opt_new();
  v73 = objc_opt_new();
  v74 = objc_opt_new();
  v103 = v72;
  [v71 setPredicate:v72];
  v102 = v73;
  [v71 setFeatureExtractor:v73];
  v101 = v74;
  [v71 setAnomalyDetector:v74];
  v129[0] = @"TukeyFactorForExponentialDistributionOutlier";
  LODWORD(v75) = 3.0;
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"PD_VS_TukeyFactorForExponentialDistributionOutlier" withFallback:v75];
  v76 = [NSNumber numberWithFloat:?];
  v130[0] = v76;
  v129[1] = @"MinimumFeatureNumberForPersonalizedThreshold";
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"PD_VS_MinimumFeatureNumberForPersonalizedThreshold" withFallback:0.0];
  v77 = [NSNumber numberWithFloat:?];
  v130[1] = v77;
  v129[2] = @"MinimumFeatureSizeForPersonalizedThreshold";
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"PD_VS_MinimumFeatureSizeForPersonalizedThreshold" withFallback:0.0];
  v78 = [NSNumber numberWithFloat:?];
  v130[2] = v78;
  v129[3] = @"MaximumThreshold";
  LODWORD(v79) = 1.0;
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"PD_VS_MaximumThreshold" withFallback:v79];
  v80 = [NSNumber numberWithFloat:?];
  v130[3] = v80;
  v129[4] = @"MinimumThreshold";
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"PD_VS_MinimumThreshold" withFallback:0.0];
  v81 = [NSNumber numberWithFloat:?];
  v129[5] = @"AnomalyFeatureType";
  v130[4] = v81;
  v130[5] = &off_1003691C0;
  v82 = [NSDictionary dictionaryWithObjects:v130 forKeys:v129 count:6];
  [v71 configure:v82];

  [v71 setPatternDetectorName:@"scheduleVisitAnomaly"];
  [v124 addObject:v71];
  v83 = objc_opt_new();
  v84 = objc_opt_new();
  v85 = objc_opt_new();
  v86 = objc_opt_new();
  v100 = v84;
  [v83 setPredicate:v84];
  [v83 setFeatureExtractor:v85];
  [v83 setAnomalyDetector:v86];
  v127[0] = @"TukeyFactorForExponentialDistributionOutlier";
  LODWORD(v87) = *"U0B@";
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"PD_TSLSM_TukeyFactorForExponentialDistributionOutlier" withFallback:v87];
  v88 = [NSNumber numberWithFloat:?];
  v128[0] = v88;
  v127[1] = @"MinimumFeatureNumberForPersonalizedThreshold";
  LODWORD(v89) = 1.0;
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"PD_TSLSM_MinimumFeatureNumberForPersonalizedThreshold" withFallback:v89];
  v90 = [NSNumber numberWithFloat:?];
  v128[1] = v90;
  v127[2] = @"MinimumFeatureSizeForPersonalizedThreshold";
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"PD_TSLSM_MinimumFeatureSizeForPersonalizedThreshold" withFallback:0.0];
  v91 = [NSNumber numberWithFloat:?];
  v128[2] = v91;
  v127[3] = @"MaximumThreshold";
  LODWORD(v92) = *"";
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"PD_TSLSM_MaximumThreshold" withFallback:v92];
  v93 = [NSNumber numberWithFloat:?];
  v128[3] = v93;
  v127[4] = @"MinimumThreshold";
  LODWORD(v94) = 1221783552;
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"PD_TSLSM_MinimumThreshold" withFallback:v94];
  v95 = [NSNumber numberWithFloat:?];
  v127[5] = @"AnomalyFeatureType";
  v128[4] = v95;
  v128[5] = &off_1003691D8;
  v96 = [NSDictionary dictionaryWithObjects:v128 forKeys:v127 count:6];
  [v83 configure:v96];

  [v83 setPatternDetectorName:@"timeSinceStateOfMindAnomaly"];
  [v124 addObject:v83];
  v97 = _mo_log_facility_get_os_log(&MOLogFacilityBatchedPatternDetection);
  if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
  {
    v98 = [v124 count];
    *buf = 67109120;
    v126 = v98;
    _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "Done constructing batched detectors [%i constructed]", buf, 8u);
  }

  return v124;
}

- (id)_initializeStreamingTypeDetector
{
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityStreamingPatternDetection);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Constructing streaming pattern detectors", buf, 2u);
  }

  v234 = objc_opt_new();
  getEWAPlistFileURL = [(MOEventStore *)self->_eventStore getEWAPlistFileURL];
  if (getEWAPlistFileURL && ([(MOEventStore *)self->_eventStore readEWAPlistFile:getEWAPlistFileURL], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    selfCopy = self;
    v184 = v5;
    v185 = getEWAPlistFileURL;
    v6 = [v5 mutableCopy];
    allKeys = [v6 allKeys];
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityStreamingPatternDetection);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Constructing streaming pattern detectors", buf, 2u);
    }

    v231 = objc_opt_new();
    v230 = objc_opt_new();
    v229 = objc_opt_new();
    v228 = objc_opt_new();
    v9 = objc_opt_new();
    v271 = 0u;
    v272 = 0u;
    v273 = 0u;
    v274 = 0u;
    v10 = allKeys;
    v11 = [v10 countByEnumeratingWithState:&v271 objects:v300 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v272;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v272 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v271 + 1) + 8 * i);
          if ([v15 hasPrefix:@"MOEventCategoryWorkout"] && objc_msgSend(v15, "hasSuffix:", @"TimeBetweenEvents"))
          {
            v16 = [v6 objectForKey:v15];
            [v9 setObject:v16 forKeyedSubscript:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v271 objects:v300 count:16];
      }

      while (v12);
    }

    v227 = v9;
    [v231 setPredicate:v230];
    [v231 setFeatureExtractor:v229];
    [v231 setAnomalyDetector:v228];
    v298[0] = @"TukeyFactorForExponentialDistributionOutlier";
    LODWORD(v17) = *"U0B@";
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_TSLW_TukeyFactorForExponentialDistributionOutlier" withFallback:v17];
    v18 = [NSNumber numberWithFloat:?];
    v299[0] = v18;
    v298[1] = @"MinimumFeatureNumberForPersonalizedThreshold";
    LODWORD(v19) = 2.0;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_TSLW_MinimumFeatureNumberForPersonalizedThreshold" withFallback:v19];
    v20 = [NSNumber numberWithFloat:?];
    v299[1] = v20;
    v298[2] = @"MinimumFeatureSizeForPersonalizedThreshold";
    LODWORD(v21) = 1185464320;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_TSLW_MinimumFeatureSizeForPersonalizedThreshold" withFallback:v21];
    v22 = [NSNumber numberWithFloat:?];
    v299[2] = v22;
    v298[3] = @"MaximumThreshold";
    LODWORD(v23) = 1242802176;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_TSLW_MaximumThreshold" withFallback:v23];
    v24 = [NSNumber numberWithFloat:?];
    v299[3] = v24;
    v298[4] = @"MinimumThreshold";
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_TSLW_MinimumThreshold" withFallback:0.0];
    v25 = [NSNumber numberWithFloat:?];
    v299[4] = v25;
    v298[5] = @"BetaForEWAUpdate";
    LODWORD(v26) = 1064198944;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_TSLW_BetaForEWAUpdate" withFallback:v26];
    v27 = [NSNumber numberWithFloat:?];
    v299[5] = v27;
    v299[6] = &off_1003691D8;
    v298[6] = @"AnomalyFeatureType";
    v298[7] = @"AnomalyEWADictionariesForDetector";
    v299[7] = v9;
    v28 = [NSDictionary dictionaryWithObjects:v299 forKeys:v298 count:8];
    [v231 configure:v28];

    [v231 setPatternDetectorName:@"timeSinceWorkoutAnomaly"];
    [v234 addObject:v231];
    v29 = objc_opt_new();
    v226 = objc_opt_new();
    v225 = objc_opt_new();
    v224 = objc_opt_new();
    v238 = objc_opt_new();
    v267 = 0u;
    v268 = 0u;
    v269 = 0u;
    v270 = 0u;
    v30 = v10;
    v31 = [v30 countByEnumeratingWithState:&v267 objects:v297 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v268;
      do
      {
        for (j = 0; j != v32; j = j + 1)
        {
          if (*v268 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v267 + 1) + 8 * j);
          if ([v35 hasPrefix:@"MOEventCategoryWorkout"] && objc_msgSend(v35, "hasSuffix:", @"EventDuration"))
          {
            v36 = [v6 objectForKey:v35];
            [v238 setObject:v36 forKeyedSubscript:v35];
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v267 objects:v297 count:16];
      }

      while (v32);
    }

    [v29 setPredicate:v226];
    [v29 setFeatureExtractor:v225];
    [v29 setAnomalyDetector:v224];
    v295[0] = @"TukeyFactorForExponentialDistributionOutlier";
    LODWORD(v37) = *"U0B@";
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_WD_TukeyFactorForExponentialDistributionOutlier" withFallback:v37];
    v38 = [NSNumber numberWithFloat:?];
    v296[0] = v38;
    v295[1] = @"MinimumFeatureNumberForPersonalizedThreshold";
    LODWORD(v39) = 2.0;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_WD_MinimumFeatureNumberForPersonalizedThreshold" withFallback:v39];
    v40 = [NSNumber numberWithFloat:?];
    v296[1] = v40;
    v295[2] = @"MinimumFeatureSizeForPersonalizedThreshold";
    LODWORD(v41) = 1114636288;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_WD_MinimumFeatureSizeForPersonalizedThreshold" withFallback:v41];
    v42 = [NSNumber numberWithFloat:?];
    v296[2] = v42;
    v295[3] = @"MaximumThreshold";
    LODWORD(v43) = 1172373504;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_WD_MaximumThreshold" withFallback:v43];
    v44 = [NSNumber numberWithFloat:?];
    v296[3] = v44;
    v295[4] = @"MinimumThreshold";
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_WD_MinimumThreshold" withFallback:0.0];
    v45 = [NSNumber numberWithFloat:?];
    v296[4] = v45;
    v295[5] = @"BetaForEWAUpdate";
    LODWORD(v46) = 1064198944;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_WD_BetaForEWAUpdate" withFallback:v46];
    v47 = [NSNumber numberWithFloat:?];
    v296[5] = v47;
    v296[6] = &off_100369178;
    v295[6] = @"AnomalyFeatureType";
    v295[7] = @"AnomalyEWADictionariesForDetector";
    v296[7] = v238;
    v48 = [NSDictionary dictionaryWithObjects:v296 forKeys:v295 count:8];
    [v29 configure:v48];

    [v29 setPatternDetectorName:@"durationWorkoutAnomaly"];
    v183 = v29;
    [v234 addObject:v29];
    v223 = objc_opt_new();
    v222 = objc_opt_new();
    v221 = objc_opt_new();
    v220 = objc_opt_new();
    v49 = objc_opt_new();
    v263 = 0u;
    v264 = 0u;
    v265 = 0u;
    v266 = 0u;
    v50 = v30;
    v51 = [v50 countByEnumeratingWithState:&v263 objects:v294 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v264;
      do
      {
        for (k = 0; k != v52; k = k + 1)
        {
          if (*v264 != v53)
          {
            objc_enumerationMutation(v50);
          }

          v55 = *(*(&v263 + 1) + 8 * k);
          if ([v55 hasPrefix:@"MOEventCategoryMotionActivity"] && objc_msgSend(v55, "hasSuffix:", @"EventDuration"))
          {
            v56 = [v6 objectForKey:v55];
            [v49 setObject:v56 forKeyedSubscript:v55];
          }
        }

        v52 = [v50 countByEnumeratingWithState:&v263 objects:v294 count:16];
      }

      while (v52);
    }

    v219 = v49;
    [v223 setPredicate:v222];
    [v223 setFeatureExtractor:v221];
    [v223 setAnomalyDetector:v220];
    v292[0] = @"TukeyFactorForExponentialDistributionOutlier";
    LODWORD(v57) = *"U0B@";
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_PAD_TukeyFactorForExponentialDistributionOutlier" withFallback:v57];
    v58 = [NSNumber numberWithFloat:?];
    v293[0] = v58;
    v292[1] = @"MinimumFeatureNumberForPersonalizedThreshold";
    LODWORD(v59) = 2.0;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_PAD_MinimumFeatureNumberForPersonalizedThreshold" withFallback:v59];
    v60 = [NSNumber numberWithFloat:?];
    v293[1] = v60;
    v292[2] = @"MinimumFeatureSizeForPersonalizedThreshold";
    LODWORD(v61) = 1114636288;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_PAD_MinimumFeatureSizeForPersonalizedThreshold" withFallback:v61];
    v62 = [NSNumber numberWithFloat:?];
    v293[2] = v62;
    v292[3] = @"MaximumThreshold";
    LODWORD(v63) = 1172373504;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_PAD_MaximumThreshold" withFallback:v63];
    v64 = [NSNumber numberWithFloat:?];
    v293[3] = v64;
    v292[4] = @"MinimumThreshold";
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_PAD_MinimumThreshold" withFallback:0.0];
    v65 = [NSNumber numberWithFloat:?];
    v293[4] = v65;
    v292[5] = @"BetaForEWAUpdate";
    LODWORD(v66) = 1064198944;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_PAD_BetaForEWAUpdate" withFallback:v66];
    v67 = [NSNumber numberWithFloat:?];
    v293[5] = v67;
    v293[6] = &off_100369178;
    v292[6] = @"AnomalyFeatureType";
    v292[7] = @"AnomalyEWADictionariesForDetector";
    v293[7] = v49;
    v68 = [NSDictionary dictionaryWithObjects:v293 forKeys:v292 count:8];
    [v223 configure:v68];

    [v223 setPatternDetectorName:@"durationPhoneActivityAnomaly"];
    [v234 addObject:v223];
    v232 = objc_opt_new();
    v69 = objc_opt_new();
    v218 = objc_opt_new();
    v217 = objc_opt_new();
    v237 = objc_opt_new();
    v259 = 0u;
    v260 = 0u;
    v261 = 0u;
    v262 = 0u;
    v70 = v50;
    v71 = [v70 countByEnumeratingWithState:&v259 objects:v291 count:16];
    if (v71)
    {
      v72 = v71;
      v73 = *v260;
      do
      {
        for (m = 0; m != v72; m = m + 1)
        {
          if (*v260 != v73)
          {
            objc_enumerationMutation(v70);
          }

          v75 = *(*(&v259 + 1) + 8 * m);
          if ([v75 hasPrefix:@"MOEventCategorySignificantContact"] && objc_msgSend(v75, "hasSuffix:", @"TimeBetweenEvents"))
          {
            v76 = [v6 objectForKey:v75];
            [v237 setObject:v76 forKeyedSubscript:v75];
          }
        }

        v72 = [v70 countByEnumeratingWithState:&v259 objects:v291 count:16];
      }

      while (v72);
    }

    v182 = v69;
    [v232 setPredicate:v69];
    [v232 setFeatureExtractor:v218];
    [v232 setAnomalyDetector:v217];
    v289[0] = @"ExcludeTextOnlyConversations";
    v239 = [NSNumber numberWithBool:[(MOConfigurationManagerBase *)selfCopy->_configurationManager getBoolSettingForKey:@"PD_TSLSC_ExcludeTextOnlyConversations" withFallback:0]];
    v290[0] = v239;
    v289[1] = @"MinimumTextCount";
    LODWORD(v77) = 1.0;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_TSLSC_MinimumTextCount" withFallback:v77];
    v235 = [NSNumber numberWithFloat:?];
    v290[1] = v235;
    v289[2] = @"MinimumTotalCallDuration";
    LODWORD(v78) = 1133903872;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_TSLSC_MinimumTotalCallDuration" withFallback:v78];
    v215 = [NSNumber numberWithFloat:?];
    v290[2] = v215;
    v289[3] = @"MaximumNumberOfContacts";
    LODWORD(v79) = 1.0;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_TSLSC_MaximumNumberOfContacts" withFallback:v79];
    v213 = [NSNumber numberWithFloat:?];
    v290[3] = v213;
    v289[4] = @"TukeyFactorForExponentialDistributionOutlier";
    LODWORD(v80) = *"U0B@";
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_TSLSC_TukeyFactorForExponentialDistributionOutlier" withFallback:v80];
    v81 = [NSNumber numberWithFloat:?];
    v290[4] = v81;
    v289[5] = @"MinimumFeatureNumberForPersonalizedThreshold";
    LODWORD(v82) = 1.0;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_TSLSC_MinimumFeatureNumberForPersonalizedThreshold" withFallback:v82];
    v83 = [NSNumber numberWithFloat:?];
    v290[5] = v83;
    v289[6] = @"MinimumFeatureSizeForPersonalizedThreshold";
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_TSLSC_MinimumFeatureSizeForPersonalizedThreshold" withFallback:0.0];
    v84 = [NSNumber numberWithFloat:?];
    v290[6] = v84;
    v289[7] = @"MaximumThreshold";
    LODWORD(v85) = 1242802176;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_TSLSC_MaximumThreshold" withFallback:v85];
    v86 = [NSNumber numberWithFloat:?];
    v290[7] = v86;
    v289[8] = @"MinimumThreshold";
    LODWORD(v87) = 1221783552;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_TSLSC_MinimumThreshold" withFallback:v87];
    v88 = [NSNumber numberWithFloat:?];
    v290[8] = v88;
    v289[9] = @"BetaForEWAUpdate";
    LODWORD(v89) = 1064198944;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_TSLSC_BetaForEWAUpdate" withFallback:v89];
    v90 = [NSNumber numberWithFloat:?];
    v290[9] = v90;
    v290[10] = &off_1003691D8;
    v289[10] = @"AnomalyFeatureType";
    v289[11] = @"AnomalyEWADictionariesForDetector";
    v290[11] = v237;
    v91 = [NSDictionary dictionaryWithObjects:v290 forKeys:v289 count:12];
    [v232 configure:v91];

    [v232 setPatternDetectorName:@"timeSinceSigContactAnomaly"];
    [v234 addObject:v232];
    v216 = objc_opt_new();
    v92 = objc_opt_new();
    v214 = objc_opt_new();
    v212 = objc_opt_new();
    v236 = objc_opt_new();
    v255 = 0u;
    v256 = 0u;
    v257 = 0u;
    v258 = 0u;
    v93 = v70;
    v94 = [v93 countByEnumeratingWithState:&v255 objects:v288 count:16];
    if (v94)
    {
      v95 = v94;
      v96 = *v256;
      do
      {
        for (n = 0; n != v95; n = n + 1)
        {
          if (*v256 != v96)
          {
            objc_enumerationMutation(v93);
          }

          v98 = *(*(&v255 + 1) + 8 * n);
          if ([v98 hasPrefix:@"MOEventCategorySignificantContact"] && objc_msgSend(v98, "hasSuffix:", @"EventDuration"))
          {
            v99 = [v6 objectForKey:v98];
            [v236 setObject:v99 forKeyedSubscript:v98];
          }
        }

        v95 = [v93 countByEnumeratingWithState:&v255 objects:v288 count:16];
      }

      while (v95);
    }

    v181 = v92;
    [v216 setPredicate:v92];
    [v216 setFeatureExtractor:v214];
    [v216 setAnomalyDetector:v212];
    v286[0] = @"ExcludeTextOnlyConversations";
    v240 = [NSNumber numberWithBool:[(MOConfigurationManagerBase *)selfCopy->_configurationManager getBoolSettingForKey:@"PD_SCD_ExcludeTextOnlyConversations" withFallback:1]];
    v287[0] = v240;
    v286[1] = @"MinimumTextCount";
    LODWORD(v100) = 1.0;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_SCD_MinimumTextCount" withFallback:v100];
    v210 = [NSNumber numberWithFloat:?];
    v287[1] = v210;
    v286[2] = @"MinimumTotalCallDuration";
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_SCD_MinimumTotalCallDuration" withFallback:0.0];
    v208 = [NSNumber numberWithFloat:?];
    v287[2] = v208;
    v286[3] = @"MaximumNumberOfContacts";
    LODWORD(v101) = 1.0;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_SCD_MaximumNumberOfContacts" withFallback:v101];
    v206 = [NSNumber numberWithFloat:?];
    v287[3] = v206;
    v286[4] = @"TukeyFactorForExponentialDistributionOutlier";
    LODWORD(v102) = 2.0;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_SCD_TukeyFactorForExponentialDistributionOutlier" withFallback:v102];
    v204 = [NSNumber numberWithFloat:?];
    v287[4] = v204;
    v286[5] = @"MinimumFeatureNumberForPersonalizedThreshold";
    LODWORD(v103) = 1.0;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_SCD_MinimumFeatureNumberForPersonalizedThreshold" withFallback:v103];
    v104 = [NSNumber numberWithFloat:?];
    v287[5] = v104;
    v286[6] = @"MinimumFeatureSizeForPersonalizedThreshold";
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_SCD_MinimumFeatureSizeForPersonalizedThreshold" withFallback:0.0];
    v105 = [NSNumber numberWithFloat:?];
    v287[6] = v105;
    v286[7] = @"MaximumThreshold";
    LODWORD(v106) = 1172373504;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_SCD_MaximumThreshold" withFallback:v106];
    v107 = [NSNumber numberWithFloat:?];
    v287[7] = v107;
    v286[8] = @"MinimumThreshold";
    LODWORD(v108) = 1147207680;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_SCD_MinimumThreshold" withFallback:v108];
    v109 = [NSNumber numberWithFloat:?];
    v287[8] = v109;
    v286[9] = @"BetaForEWAUpdate";
    LODWORD(v110) = 1064198944;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_SCD_BetaForEWAUpdate" withFallback:v110];
    v111 = [NSNumber numberWithFloat:?];
    v287[9] = v111;
    v287[10] = &off_100369178;
    v286[10] = @"AnomalyFeatureType";
    v286[11] = @"AnomalyEWADictionariesForDetector";
    v287[11] = v236;
    v112 = [NSDictionary dictionaryWithObjects:v287 forKeys:v286 count:12];
    [v216 configure:v112];

    [v216 setPatternDetectorName:@"durationSigContactAnomaly"];
    [v234 addObject:v216];
    v211 = objc_opt_new();
    v209 = objc_opt_new();
    v207 = objc_opt_new();
    v205 = objc_opt_new();
    v113 = objc_opt_new();
    v251 = 0u;
    v252 = 0u;
    v253 = 0u;
    v254 = 0u;
    v114 = v93;
    v115 = [v114 countByEnumeratingWithState:&v251 objects:v285 count:16];
    if (v115)
    {
      v116 = v115;
      v117 = *v252;
      do
      {
        for (ii = 0; ii != v116; ii = ii + 1)
        {
          if (*v252 != v117)
          {
            objc_enumerationMutation(v114);
          }

          v119 = *(*(&v251 + 1) + 8 * ii);
          if ([v119 hasPrefix:@"MOEventCategorySignificantContact"] && objc_msgSend(v119, "hasSuffix:", @"ContactFrequency"))
          {
            v120 = [v6 objectForKey:v119];
            [v113 setObject:v120 forKeyedSubscript:v119];
          }
        }

        v116 = [v114 countByEnumeratingWithState:&v251 objects:v285 count:16];
      }

      while (v116);
    }

    [v211 setPredicate:v209];
    [v211 setFeatureExtractor:v207];
    [v211 setAnomalyDetector:v205];
    v283[0] = @"ExcludeTextOnlyConversations";
    v241 = [NSNumber numberWithBool:[(MOConfigurationManagerBase *)selfCopy->_configurationManager getBoolSettingForKey:@"PD_SCF_ExcludeTextOnlyConversations" withFallback:0]];
    v284[0] = v241;
    v283[1] = @"MinimumTextCount";
    LODWORD(v121) = 1.0;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_SCF_MinimumTextCount" withFallback:v121];
    v202 = [NSNumber numberWithFloat:?];
    v284[1] = v202;
    v283[2] = @"MinimumTotalCallDuration";
    LODWORD(v122) = 1133903872;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_SCF_MinimumTotalCallDuration" withFallback:v122];
    v200 = [NSNumber numberWithFloat:?];
    v284[2] = v200;
    v283[3] = @"MaximumNumberOfContacts";
    LODWORD(v123) = 1.0;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_SCF_MaximumNumberOfContacts" withFallback:v123];
    v198 = [NSNumber numberWithFloat:?];
    v284[3] = v198;
    v283[4] = @"TukeyFactorForExponentialDistributionOutlier";
    LODWORD(v124) = *"U0B@";
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_SCF_TukeyFactorForExponentialDistributionOutlier" withFallback:v124];
    v196 = [NSNumber numberWithFloat:?];
    v284[4] = v196;
    v283[5] = @"MinimumFeatureNumberForPersonalizedThreshold";
    LODWORD(v125) = 1.0;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_SCF_MinimumFeatureNumberForPersonalizedThreshold" withFallback:v125];
    v194 = [NSNumber numberWithFloat:?];
    v284[5] = v194;
    v283[6] = @"MinimumFeatureSizeForPersonalizedThreshold";
    LODWORD(v126) = 2.0;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_SCF_MinimumFeatureSizeForPersonalizedThreshold" withFallback:v126];
    v127 = [NSNumber numberWithFloat:?];
    v284[6] = v127;
    v283[7] = @"MaximumThreshold";
    LODWORD(v128) = 1125515264;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_SCF_MaximumThreshold" withFallback:v128];
    v129 = [NSNumber numberWithFloat:?];
    v284[7] = v129;
    v283[8] = @"MinimumThreshold";
    LODWORD(v130) = 5.0;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_SCF_MinimumThreshold" withFallback:v130];
    v131 = [NSNumber numberWithFloat:?];
    v284[8] = v131;
    v283[9] = @"BetaForEWAUpdate";
    LODWORD(v132) = 1064198944;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_SCF_BetaForEWAUpdate" withFallback:v132];
    v133 = [NSNumber numberWithFloat:?];
    v284[9] = v133;
    v284[10] = &off_1003691A8;
    v283[10] = @"AnomalyFeatureType";
    v283[11] = @"AnomalyEWADictionariesForDetector";
    v180 = v113;
    v284[11] = v113;
    v134 = [NSDictionary dictionaryWithObjects:v284 forKeys:v283 count:12];
    [v211 configure:v134];

    [v211 setPatternDetectorName:@"frequencySigContactAnomaly"];
    [v234 addObject:v211];
    v203 = objc_opt_new();
    v201 = objc_opt_new();
    v199 = objc_opt_new();
    v197 = objc_opt_new();
    v195 = objc_opt_new();
    v242 = objc_opt_new();
    v247 = 0u;
    v248 = 0u;
    v249 = 0u;
    v250 = 0u;
    v135 = v114;
    v136 = [v135 countByEnumeratingWithState:&v247 objects:v282 count:16];
    if (v136)
    {
      v137 = v136;
      v138 = *v248;
      do
      {
        for (jj = 0; jj != v137; jj = jj + 1)
        {
          if (*v248 != v138)
          {
            objc_enumerationMutation(v135);
          }

          v140 = *(*(&v247 + 1) + 8 * jj);
          if ([v140 hasPrefix:@"MOEventCategorySocialContextEvent"] && (objc_msgSend(v140, "hasSuffix:", @"HostingAtHomeAnomaly") & 1) != 0 || objc_msgSend(v140, "hasPrefix:", @"MOEventCategoryPeopleDensityEvent") && objc_msgSend(v140, "hasSuffix:", @"HostingAtHomeAnomaly"))
          {
            v141 = [v6 objectForKey:v140];
            [v242 setObject:v141 forKeyedSubscript:v140];
          }
        }

        v137 = [v135 countByEnumeratingWithState:&v247 objects:v282 count:16];
      }

      while (v137);
    }

    [v203 setPredicate:v201];
    [v203 setFeatureExtractor:v199];
    [v203 setFeatureTransformer:v197];
    [v203 setAnomalyDetector:v195];
    v280[0] = @"TukeyFactorForExponentialDistributionOutlier";
    LODWORD(v142) = 2.0;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_HAH_TukeyFactorForExponentialDistributionOutlier" withFallback:v142];
    v192 = [NSNumber numberWithFloat:?];
    v281[0] = v192;
    v280[1] = @"MinimumFeatureNumberForPersonalizedThreshold";
    LODWORD(v143) = 5.0;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_HAH_MinimumFeatureNumberForPersonalizedThreshold" withFallback:v143];
    v190 = [NSNumber numberWithFloat:?];
    v281[1] = v190;
    v280[2] = @"MinimumFeatureSizeForPersonalizedThreshold";
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_HAH_MinimumFeatureSizeForPersonalizedThreshold" withFallback:0.0];
    v188 = [NSNumber numberWithFloat:?];
    v281[2] = v188;
    v280[3] = @"MaximumThreshold";
    LODWORD(v144) = 20.0;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_HAH_MaximumThreshold" withFallback:v144];
    v186 = [NSNumber numberWithFloat:?];
    v281[3] = v186;
    v280[4] = @"MinimumThreshold";
    LODWORD(v145) = 3.0;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_HAH_MinimumThreshold" withFallback:v145];
    v146 = [NSNumber numberWithFloat:?];
    v281[4] = v146;
    v280[5] = @"BetaForEWAUpdate";
    LODWORD(v147) = 1064198944;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_HAH_BetaForEWAUpdate" withFallback:v147];
    v148 = [NSNumber numberWithFloat:?];
    v281[5] = v148;
    v280[6] = @"AggregationType";
    LODWORD(v149) = 1.0;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_HAH_AggregationType" withFallback:v149];
    v150 = [NSNumber numberWithFloat:?];
    v281[6] = v150;
    v280[7] = @"AggregationWindow";
    v151 = [NSNumber numberWithInt:[(MOConfigurationManagerBase *)selfCopy->_configurationManager getIntegerSettingForKey:@"PD_HAH_AggregationWindow" withFallback:16]];
    v281[7] = v151;
    v281[8] = &off_1003691F0;
    v280[8] = @"AnomalyFeatureType";
    v280[9] = @"AnomalyEWADictionariesForDetector";
    v281[9] = v242;
    v152 = [NSDictionary dictionaryWithObjects:v281 forKeys:v280 count:10];
    [v203 configure:v152];

    [v203 setPatternDetectorName:@"hostingAtHomeAnomaly"];
    [v234 addObject:v203];
    v179 = objc_opt_new();
    v193 = objc_opt_new();
    v191 = objc_opt_new();
    v189 = objc_opt_new();
    v187 = objc_opt_new();
    v153 = objc_opt_new();
    v243 = 0u;
    v244 = 0u;
    v245 = 0u;
    v246 = 0u;
    v154 = v135;
    v155 = [v154 countByEnumeratingWithState:&v243 objects:v279 count:16];
    if (v155)
    {
      v156 = v155;
      v157 = *v244;
      do
      {
        for (kk = 0; kk != v156; kk = kk + 1)
        {
          if (*v244 != v157)
          {
            objc_enumerationMutation(v154);
          }

          v159 = *(*(&v243 + 1) + 8 * kk);
          if ([v159 hasPrefix:@"MOEventTimeAtHomeAnomaly"] && objc_msgSend(v159, "hasSuffix:", @"TimeAtHomeAnomaly"))
          {
            v160 = [v6 objectForKey:v159];
            [v153 setObject:v160 forKeyedSubscript:v159];
          }
        }

        v156 = [v154 countByEnumeratingWithState:&v243 objects:v279 count:16];
      }

      while (v156);
    }

    [v179 setPredicate:v193];
    [v179 setFeatureExtractor:v191];
    [v179 setFeatureTransformer:v189];
    [v179 setAnomalyDetector:v187];
    v277[0] = @"TukeyFactorForExponentialDistributionOutlier";
    LODWORD(v161) = 1068708659;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_TAH_TukeyFactorForExponentialDistributionOutlier" withFallback:v161];
    v178 = [NSNumber numberWithFloat:?];
    v278[0] = v178;
    v277[1] = @"MinimumFeatureNumberForPersonalizedThreshold";
    LODWORD(v162) = 3.0;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_TAH_MinimumFeatureNumberForPersonalizedThreshold" withFallback:v162];
    v177 = [NSNumber numberWithFloat:?];
    v278[1] = v177;
    v277[2] = @"MinimumFeatureSizeForPersonalizedThreshold";
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_TAH_MinimumFeatureSizeForPersonalizedThreshold" withFallback:0.0];
    v176 = [NSNumber numberWithFloat:?];
    v278[2] = v176;
    v277[3] = @"MaximumThreshold";
    LODWORD(v163) = 1200398336;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_TAH_MaximumThreshold" withFallback:v163];
    v175 = [NSNumber numberWithFloat:?];
    v278[3] = v175;
    v277[4] = @"MinimumThreshold";
    LODWORD(v164) = 1193852928;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_TAH_MinimumThreshold" withFallback:v164];
    v174 = [NSNumber numberWithFloat:?];
    v278[4] = v174;
    v277[5] = @"BetaForEWAUpdate";
    LODWORD(v165) = 1064198944;
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_TAH_BetaForEWAUpdate" withFallback:v165];
    v166 = [NSNumber numberWithFloat:?];
    v278[5] = v166;
    v277[6] = @"AggregationType";
    [(MOConfigurationManagerBase *)selfCopy->_configurationManager getFloatSettingForKey:@"PD_TAH_AggregationType" withFallback:0.0];
    v167 = [NSNumber numberWithFloat:?];
    v278[6] = v167;
    v277[7] = @"AggregationWindow";
    v168 = [NSNumber numberWithInt:[(MOConfigurationManagerBase *)selfCopy->_configurationManager getIntegerSettingForKey:@"PD_TAH_AggregationWindow" withFallback:16]];
    v278[7] = v168;
    v278[8] = &off_100369208;
    v277[8] = @"AnomalyFeatureType";
    v277[9] = @"AnomalyEWADictionariesForDetector";
    v278[9] = v153;
    v169 = [NSDictionary dictionaryWithObjects:v278 forKeys:v277 count:10];
    [v179 configure:v169];

    [v179 setPatternDetectorName:@"tahAnomaly"];
    [v234 addObject:v179];
    v170 = _mo_log_facility_get_os_log(&MOLogFacilityStreamingPatternDetection);
    if (os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT))
    {
      v171 = [v234 count];
      *buf = 67109120;
      v276 = v171;
      _os_log_impl(&_mh_execute_header, v170, OS_LOG_TYPE_DEFAULT, "Done constructing streaming detectors [%i constructed]", buf, 8u);
    }

    v172 = v184;
    getEWAPlistFileURL = v185;
  }

  else
  {
    v172 = _mo_log_facility_get_os_log(&MOLogFacilityStreamingPatternDetection);
    if (os_log_type_enabled(v172, OS_LOG_TYPE_ERROR))
    {
      [(MOEventPatternManager *)v172 _initializeStreamingTypeDetector];
    }
  }

  return v234;
}

- (id)_processEvents:(id)events forDetector:(id)detector
{
  eventsCopy = events;
  detectorCopy = detector;
  v8 = objc_opt_new();
  if ([detectorCopy count])
  {
    v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [detectorCopy count]);
    if ([detectorCopy count])
    {
      v10 = 0;
      do
      {
        v11 = +[NSNull null];
        [v9 addObject:v11];

        ++v10;
      }

      while (v10 < [detectorCopy count]);
    }

    v12 = [[MOPerformanceMeasurement alloc] initWithName:@"MOEventPatternManager" measureRecentPeak:1];
    [(MOPerformanceMeasurement *)v12 startSession];
    v13 = [detectorCopy count];
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __52__MOEventPatternManager__processEvents_forDetector___block_invoke;
    block[3] = &unk_100337310;
    v42 = detectorCopy;
    v15 = detectorCopy;
    v53 = v15;
    v54 = eventsCopy;
    v16 = v9;
    v55 = v16;
    dispatch_apply(v13, queue, block);
    v40 = v12;
    [(MOPerformanceMeasurement *)v12 endSession];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v48 objects:v59 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v49;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v49 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v48 + 1) + 8 * i);
          if (v22 && [*(*(&v48 + 1) + 8 * i) count])
          {
            [v8 addObjectsFromArray:v22];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v48 objects:v59 count:16];
      }

      while (v19);
    }

    selfCopy = self;
    v43 = eventsCopy;

    v23 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [v8 count];
      *buf = 134217984;
      v58 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Finished running pattern detectors and generated %lu results", buf, 0xCu);
    }

    v25 = objc_opt_new();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v26 = v15;
    v27 = [v26 countByEnumeratingWithState:&v44 objects:v56 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v45;
      do
      {
        for (j = 0; j != v28; j = j + 1)
        {
          if (*v45 != v29)
          {
            objc_enumerationMutation(v26);
          }

          getAnomalyDetector = [*(*(&v44 + 1) + 8 * j) getAnomalyDetector];
          if (getAnomalyDetector)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              getAnomalyDetectorDict = [getAnomalyDetector getAnomalyDetectorDict];
              v33 = getAnomalyDetectorDict;
              if (getAnomalyDetectorDict && [getAnomalyDetectorDict count])
              {
                [v25 addEntriesFromDictionary:v33];
              }
            }
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v44 objects:v56 count:16];
      }

      while (v28);
    }

    getEWAPlistFileURL = [(MOEventStore *)selfCopy->_eventStore getEWAPlistFileURL];
    eventsCopy = v43;
    if (!getEWAPlistFileURL)
    {
      goto LABEL_38;
    }

    v35 = [(MOEventStore *)selfCopy->_eventStore persistEWAMetrics:getEWAPlistFileURL withData:v25];
    v36 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_INFO);
    if (v35)
    {
      if (v37)
      {
        *buf = 0;
        v38 = "Writing to EWA pList successful";
LABEL_36:
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, v38, buf, 2u);
      }
    }

    else if (v37)
    {
      *buf = 0;
      v38 = "Writing to EWA pList failed";
      goto LABEL_36;
    }

LABEL_38:
    detectorCopy = v42;
  }

  return v8;
}

void __52__MOEventPatternManager__processEvents_forDetector___block_invoke(uint64_t a1, uint64_t a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v6 = [v5 processEvents:*(a1 + 40)];
  if (v6)
  {
    [*(a1 + 48) setObject:v6 atIndexedSubscript:a2];
  }

  v7 = CFAbsoluteTimeGetCurrent();
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v5 patternDetectorName];
    v10 = 138412546;
    v11 = v9;
    v12 = 2048;
    v13 = v7 - Current;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "PatternDetector for %@ took %f secs to complete", &v10, 0x16u);
  }
}

- (id)processEvents:(id)events withRefreshVariant:(unint64_t)variant forDateInterval:(id)interval
{
  eventsCopy = events;
  intervalCopy = interval;
  v10 = intervalCopy;
  v11 = __ROR8__(variant, 8);
  v12 = &__NSArray0__struct;
  if (v11 <= 6)
  {
    if (((1 << v11) & 0x2A) != 0)
    {
      [intervalCopy duration];
      if (v15 >= 2419200.0)
      {
        _initializeStreamingTypeDetector2 = objc_opt_new();
        _initializeBatchedTypeDetector = [(MOEventPatternManager *)self _initializeBatchedTypeDetector];
        _initializeStreamingTypeDetector = [(MOEventPatternManager *)self _initializeStreamingTypeDetector];
        [_initializeStreamingTypeDetector2 addObjectsFromArray:_initializeStreamingTypeDetector];
        [_initializeStreamingTypeDetector2 addObjectsFromArray:_initializeBatchedTypeDetector];
        v19 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          LOWORD(v21) = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Running streaming and batched pattern detectors", &v21, 2u);
        }

        v12 = [(MOEventPatternManager *)self _processEvents:eventsCopy forDetector:_initializeStreamingTypeDetector2];
      }

      else
      {
        _initializeStreamingTypeDetector2 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
        if (os_log_type_enabled(_initializeStreamingTypeDetector2, OS_LOG_TYPE_INFO))
        {
          [v10 duration];
          v21 = 134218240;
          v22 = v16;
          v23 = 2048;
          variantCopy = variant;
          _os_log_impl(&_mh_execute_header, _initializeStreamingTypeDetector2, OS_LOG_TYPE_INFO, "Have only %f days of data, not running batched detectors for variant %lu", &v21, 0x16u);
        }
      }
    }

    else if (((1 << v11) & 0x44) != 0)
    {
      _initializeStreamingTypeDetector2 = [(MOEventPatternManager *)self _initializeStreamingTypeDetector];
      v14 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Running streaming pattern detectors", &v21, 2u);
      }

      v12 = [(MOEventPatternManager *)self _processEvents:eventsCopy forDetector:_initializeStreamingTypeDetector2];
    }

    else
    {
      if (v11)
      {
        goto LABEL_17;
      }

      _initializeStreamingTypeDetector2 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
      if (os_log_type_enabled(_initializeStreamingTypeDetector2, OS_LOG_TYPE_ERROR))
      {
        [MOEventPatternManager processEvents:_initializeStreamingTypeDetector2 withRefreshVariant:? forDateInterval:?];
      }
    }
  }

LABEL_17:

  return v12;
}

@end