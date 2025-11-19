@interface MOAvailabilityPredictionManager
+ (double)calculateOverlapPercentageForPredictionWindowStartHour:(double)a3 predictionWindowEndHour:(double)a4 eventStartHour:(double)a5 eventEndHour:(double)a6;
+ (double)getWeekday:(id)a3;
- (MOAvailabilityPredictionManager)initWithUniverse:(id)a3;
- (double)countOccurenceOfEvents:(id)a3 forWindow:(id)a4 windowSize:(int)a5 checkTime:(BOOL)a6 checkWeekday:(BOOL)a7 addBuffer:(BOOL)a8 checkOverlapPercentage:(BOOL)a9 forFeature:(id)a10;
- (id)checkNonzeroMedianScreentimeUsagePerHour:(id)a3;
- (id)copyAndTrim:(id)a3 toWindowStartDate:(id)a4 returnAsMOEvent:(BOOL)a5;
- (id)extractFeaturesWithEvents:(id)a3 andBundles:(id)a4 andHourlyEngagement:(id)a5 andHourlyWritingEngagement:(id)a6 forWindow:(id)a7 withDowntimeWindowStartHour:(double)a8 andDowntimeWindowEndHour:(double)a9;
- (id)filterHourlyOccurrenceCounts:(id)a3 withThreshold:(int64_t)a4;
- (id)filterScreentimeEvents:(id)a3;
- (id)findConsecutiveAvailabilityEndDateFrom:(id)a3 inPredictionArray:(id)a4 withThreshold:(double)a5;
- (id)findOptimalDateWithPrediction:(id)a3 withPredictionProbabilityThreshold:(double)a4;
- (id)findOverlappingEngagament:(id)a3 forEvents:(id)a4;
- (id)getCallStartDates:(id)a3;
- (id)getEngagementTimeArray:(id)a3 withKey:(id)a4 checkWriting:(BOOL)a5;
- (id)getHourlyOccurrenceCounts:(id)a3;
- (id)getMediaPlaySessionStartDates:(id)a3;
- (id)mergeHourlyOccurrenceCounts:(id)a3 withDict:(id)a4;
- (id)reformatHourlyOccurrenceCounts:(id)a3;
- (id)runMLmodelWithFeatures:(id)a3 andModel:(id)a4;
- (id)selectBestWindowFromCandidates:(id)a3;
- (id)selectWindowWithHighestProbabilityFrom:(id)a3;
- (void)_predictUserAvailabilityWithEvents:(id)a3 andBundles:(id)a4 andSuggestionEngagementEvents:(id)a5 andAppEntryEngagementEvents:(id)a6 handler:(id)a7;
- (void)predictUserAvailabilityWithEvents:(id)a3 andBundles:(id)a4 andSuggestionEngagementEvents:(id)a5 andAppEntryEngagementEvents:(id)a6 availabilityWithDowntimeHandler:(id)a7;
- (void)saveEligiblePOICategories:(id)a3;
@end

@implementation MOAvailabilityPredictionManager

- (MOAvailabilityPredictionManager)initWithUniverse:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 getService:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v4 getService:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v4 getService:v12];

  v204.receiver = self;
  v204.super_class = MOAvailabilityPredictionManager;
  v14 = [(MOAvailabilityPredictionManager *)&v204 init];
  if (v14)
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v16 UTF8String];
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create(v17, v18);
    queue = v14->_queue;
    v14->_queue = v19;

    objc_storeStrong(&v14->_configurationManager, v7);
    objc_storeStrong(&v14->_defaultsManager, v10);
    objc_storeStrong(&v14->_categoryStore, v13);
    v21 = [NSSet setWithArray:&off_10036DFB0];
    allowedScreentimeCategories = v14->_allowedScreentimeCategories;
    v14->_allowedScreentimeCategories = v21;

    LODWORD(v23) = 2.0;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"AvailabilityPredictionHourlyViewCountThresholdKey" withFallback:v23];
    v25 = v24;
    v14->_availabilityPredictionHourlyViewCountThreshold = v25;
    LODWORD(v25) = 1163984896;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"AvailabilityPredictionWindowSizeKey" withFallback:v25];
    v27 = v26;
    v14->_availabilityPredictionWindowSize = v27;
    LODWORD(v27) = 1060320051;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"AvailabilityPredictionProbabilityThresholdKey" withFallback:v27];
    v29 = v28;
    v14->_availabilityPredictionProbabilityThreshold = v29;
    LODWORD(v29) = 1053609165;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"AvailabilityPredictionProbabilityInsufficientScreentimeThresholdKey" withFallback:v29];
    v31 = v30;
    v14->_availabilityPredictionProbabilityInsufficientScreentimeThreshold = v31;
    LODWORD(v31) = 0.5;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"AvailabilityPredictionLocationThresholdKey" withFallback:v31];
    v33 = v32;
    v14->_availabilityPredictionLocationThreshold = v33;
    LODWORD(v33) = 0.5;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"AvailabilityPredictionScreentimeThresholdKey" withFallback:v33];
    v14->_availabilityPredictionScreentimeThreshold = v34;
    v14->_availabilityPredictionRetryHourCount = [(MOConfigurationManagerBase *)v14->_configurationManager getIntegerSettingForKey:@"AvailabilityPredictionRetryHourCount" withFallback:3];
    LODWORD(v35) = 22.0;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"DowntimeDetectionDefaultSleepStartHourKey" withFallback:v35];
    v37 = v36;
    v14->_downtimeDetectionDefaultSleepStartHour = v37;
    LODWORD(v37) = 8.0;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"DowntimeDetectionDefaultSleepEndHourKey" withFallback:v37];
    v39 = v38;
    v14->_downtimeDetectionDefaultSleepEndHour = v39;
    LODWORD(v39) = 6.0;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"DowntimeDetectionWinLengthMinDefaultKey" withFallback:v39];
    v41 = v40;
    v14->_downtimeDetectionWinLengthMin = v41;
    LODWORD(v41) = 12.0;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"DowntimeDetectionWinLengthMaxDefaultKey" withFallback:v41];
    v43 = v42;
    v14->_downtimeDetectionWinLengthMax = v43;
    LODWORD(v43) = 0.75;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"DowntimeDetectionWinActivityRatioMaxDefaultKey" withFallback:v43];
    v45 = v44;
    v14->_downtimeDetectionWinActivityRatioMax = v45;
    LODWORD(v45) = 1050253722;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"DowntimeDetectionTrimFractionKey" withFallback:v45];
    v47 = v46;
    v14->_downtimeDetectionTrimFraction = v47;
    LODWORD(v47) = 15.0;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"DowntimeDetectionMinNumDaysWithScreentimeThresholdKey" withFallback:v47];
    v49 = v48;
    v14->_downtimeDetectionMinNumDaysWithScreentimeThreshold = v49;
    LODWORD(v49) = 3.0;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"DowntimeDetectionMinNumObservationsThresholdKey" withFallback:v49];
    v51 = v50;
    v14->_downtimeDetectionMinNumObservationsThreshold = v51;
    LODWORD(v51) = 4.0;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"DowntimeDetectionMinActiveHoursThresholdKey" withFallback:v51];
    v53 = v52;
    v14->_downtimeDetectionMinActiveHoursThreshold = v53;
    LODWORD(v53) = 1036831949;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"DowntimeDetectionOverallActivityThresholdKey" withFallback:v53];
    v55 = v54;
    v14->_downtimeDetectionOverallActivityThreshold = v55;
    LODWORD(v55) = 2.0;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"DowntimeDetectionRecentDaysMinNumDaysWithScreentimeThresholdKey" withFallback:v55];
    v57 = v56;
    v14->_downtimeDetectionRecentDaysMinNumDaysWithScreentimeThreshold = v57;
    LODWORD(v57) = 2.0;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"DowntimeDetectionRecentDaysMinNumObservationsThresholdKey" withFallback:v57];
    v59 = v58;
    v14->_downtimeDetectionRecentDaysMinNumObservationsThreshold = v59;
    LODWORD(v59) = 4.0;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"DowntimeDetectionRecentDaysMinActiveHoursThresholdKey" withFallback:v59];
    v61 = v60;
    v14->_downtimeDetectionRecentDaysMinActiveHoursThreshold = v61;
    LODWORD(v61) = 0.5;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"DowntimeDetectionRecentDaysOverallActivityThresholdKey" withFallback:v61];
    v63 = v62;
    v14->_downtimeDetectionRecentDaysOverallActivityThreshold = v63;
    LODWORD(v63) = 1099241561;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMDowntimeStartHourFeatureScaleMeanKey" withFallback:v63];
    v65 = v64;
    v14->_downtimeStartHourFeatureScaleMean = v65;
    LODWORD(v65) = 1091583425;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMDowntimeStartHourFeatureScaleStdKey" withFallback:v65];
    v67 = v66;
    v14->_downtimeStartHourFeatureScaleStd = v67;
    LODWORD(v67) = 1090618761;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMDowntimeEndHourFeatureScaleMeanKey" withFallback:v67];
    v69 = v68;
    v14->_downtimeEndHourFeatureScaleMean = v69;
    LODWORD(v69) = 1064249913;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMDowntimeEndHourFeatureScaleStdKey" withFallback:v69];
    v71 = v70;
    v14->_downtimeEndHourFeatureScaleStd = v71;
    LODWORD(v71) = 11.5;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMHourFeatureScaleMeanKey" withFallback:v71];
    v73 = v72;
    v14->_hourFeatureScaleMean = v73;
    LODWORD(v73) = 1088258702;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMHourFeatureScaleStdKey" withFallback:v73];
    v75 = v74;
    v14->_hourFeatureScaleStd = v75;
    LODWORD(v75) = 3.0;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMWeekdayFeatureScaleMeanKey" withFallback:v75];
    v77 = v76;
    v14->_weekdayFeatureScaleMean = v77;
    LODWORD(v77) = 2.0;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMWeekdayFeatureScaleStdKey" withFallback:v77];
    v79 = v78;
    v14->_weekdayFeatureScaleStd = v79;
    LODWORD(v79) = 1055980792;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMMotionActivityCountFeatureScaleMeanKey" withFallback:v79];
    v81 = v80;
    v14->_motionActivityCountFeatureScaleMean = v81;
    LODWORD(v81) = 1066513226;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMMotionActivityCountFeatureScaleStdKey" withFallback:v81];
    v83 = v82;
    v14->_motionActivityCountFeatureScaleStd = v83;
    LODWORD(v83) = 1025368950;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMMotionActivityCountShortLookbackFeatureScaleMeanKey" withFallback:v83];
    v85 = v84;
    v14->_motionActivityCountShortLookbackFeatureScaleMean = v85;
    LODWORD(v85) = 1045654348;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMMotionActivityCountShortLookbackFeatureScaleStdKey" withFallback:v85];
    v87 = v86;
    v14->_motionActivityCountShortLookbackFeatureScaleStd = v87;
    LODWORD(v87) = 1016298247;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMMotionActivityOverlapCountShortLookbackFeatureScaleMeanKey" withFallback:v87];
    v89 = v88;
    v14->_motionActivityOverlapCountShortLookbackFeatureScaleMean = v89;
    LODWORD(v89) = 1041148726;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMMotionActivityOverlapCountShortLookbackFeatureScaleStdKey" withFallback:v89];
    v91 = v90;
    v14->_motionActivityOverlapCountShortLookbackFeatureScaleStd = v91;
    LODWORD(v91) = 1025813210;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMEngagementCountFeatureScaleMeanKey" withFallback:v91];
    v93 = v92;
    v14->_engagementCountFeatureScaleMean = v93;
    LODWORD(v93) = 1052848922;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMEngagementCountFeatureScaleStdKey" withFallback:v93];
    v95 = v94;
    v14->_engagementCountFeatureScaleStd = v95;
    LODWORD(v95) = 1014756354;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMEngagementCountMidLookbackFeatureScaleMeanKey" withFallback:v95];
    v97 = v96;
    v14->_engagementCountMidLookbackFeatureScaleMean = v97;
    LODWORD(v97) = 1042399837;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMEngagementCountMidLookbackFeatureScaleStdKey" withFallback:v97];
    v99 = v98;
    v14->_engagementCountMidLookbackFeatureScaleStd = v99;
    LODWORD(v99) = 1000496525;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMEngagementCountBin1MidLookbackFeatureScaleMeanKey" withFallback:v99];
    v101 = v100;
    v14->_engagementCountBin1MidLookbackFeatureScaleMean = v101;
    LODWORD(v101) = 1035820887;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMEngagementCountBin1MidLookbackFeatureScaleStdKey" withFallback:v101];
    v103 = v102;
    v14->_engagementCountBin1MidLookbackFeatureScaleStd = v103;
    LODWORD(v103) = 1053669194;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMHealthandfitnessScreentimeCountFeatureScaleMeanKey" withFallback:v103];
    v105 = v104;
    v14->_healthandfitnessScreentimeCountFeatureScaleMean = v105;
    LODWORD(v105) = 1066837614;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMHealthandfitnessScreentimeCountFeatureScaleStdKey" withFallback:v105];
    v107 = v106;
    v14->_healthandfitnessScreentimeCountFeatureScaleStd = v107;
    LODWORD(v107) = 1040848549;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMHealthandfitnessScreentimeCountMidLookbackFeatureScaleMeanKey" withFallback:v107];
    v109 = v108;
    v14->_healthandfitnessScreentimeCountMidLookbackFeatureScaleMean = v109;
    LODWORD(v109) = 1056758114;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMHealthandfitnessScreentimeCountMidLookbackFeatureScaleStdKey" withFallback:v109];
    v111 = v110;
    v14->_healthandfitnessScreentimeCountMidLookbackFeatureScaleStd = v111;
    LODWORD(v111) = 1025253254;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMHealthandfitnessScreentimeCountShortLookbackFeatureScaleMeanKey" withFallback:v111];
    v113 = v112;
    v14->_healthandfitnessScreentimeCountShortLookbackFeatureScaleMean = v113;
    LODWORD(v113) = 1045819571;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMHealthandfitnessScreentimeCountShortLookbackFeatureScaleStdKey" withFallback:v113];
    v115 = v114;
    v14->_healthandfitnessScreentimeCountShortLookbackFeatureScaleStd = v115;
    LODWORD(v115) = 1082307337;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMScreentimeCountFeatureScaleMeanKey" withFallback:v115];
    v117 = v116;
    v14->_screentimeCountFeatureScaleMean = v117;
    LODWORD(v117) = 1084060095;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMScreentimeCountFeatureScaleStdKey" withFallback:v117];
    v119 = v118;
    v14->_screentimeCountFeatureScaleStd = v119;
    LODWORD(v119) = 1040394893;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMScreentimeSameWeekdayProbabilityFeatureScaleMeanKey" withFallback:v119];
    v121 = v120;
    v14->_screentimeSameWeekdayProbabilityFeatureScaleMean = v121;
    LODWORD(v121) = 1045848360;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMScreentimeSameWeekdayProbabilityFeatureScaleStdKey" withFallback:v121];
    v123 = v122;
    v14->_screentimeSameWeekdayProbabilityFeatureScaleStd = v123;
    LODWORD(v123) = 1055343560;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMScreentimeCountShortLookbackFeatureScaleMeanKey" withFallback:v123];
    v125 = v124;
    v14->_screentimeCountShortLookbackFeatureScaleMean = v125;
    LODWORD(v125) = 1060343623;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMScreentimeCountShortLookbackFeatureScaleStdKey" withFallback:v125];
    v127 = v126;
    v14->_screentimeCountShortLookbackFeatureScaleStd = v127;
    LODWORD(v127) = 1032182244;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMOverMedianScreentimeSameWeekdayProbabilityFeatureScaleMeanKey" withFallback:v127];
    v129 = v128;
    v14->_overMedianScreentimeSameWeekdayProbabilityFeatureScaleMean = v129;
    LODWORD(v129) = 1041414746;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMOverMedianScreentimeSameWeekdayProbabilityFeatureScaleStdKey" withFallback:v129];
    v131 = v130;
    v14->_overMedianScreentimeSameWeekdayProbabilityFeatureScaleStd = v131;
    LODWORD(v131) = 1047284557;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMOverMedianScreentimeSameWeekdayProbabilityShortLookbackFeatureScaleMeanKey" withFallback:v131];
    v133 = v132;
    v14->_overMedianScreentimeSameWeekdayProbabilityShortLookbackFeatureScaleMean = v133;
    LODWORD(v133) = 1056896090;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMOverMedianScreentimeSameWeekdayProbabilityShortLookbackFeatureScaleStdKey" withFallback:v133];
    v135 = v134;
    v14->_overMedianScreentimeSameWeekdayProbabilityShortLookbackFeatureScaleStd = v135;
    LODWORD(v135) = 1025234195;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMOver20MinScreentimeSameWeekdayProbabilityFeatureScaleMeanKey" withFallback:v135];
    v137 = v136;
    v14->_over20MinScreentimeSameWeekdayProbabilityFeatureScaleMean = v137;
    LODWORD(v137) = 1038292103;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMOver20MinScreentimeSameWeekdayProbabilityFeatureScaleStdKey" withFallback:v137];
    v139 = v138;
    v14->_over20MinScreentimeSameWeekdayProbabilityFeatureScaleStd = v139;
    LODWORD(v139) = 1055419091;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMOver20MinScreentimeCountMidLookbackFeatureScaleMeanKey" withFallback:v139];
    v141 = v140;
    v14->_over20MinScreentimeCountMidLookbackFeatureScaleMean = v141;
    LODWORD(v141) = 1064177217;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMOver20MinScreentimeCountMidLookbackFeatureScaleStdKey" withFallback:v141];
    v143 = v142;
    v14->_over20MinScreentimeCountMidLookbackFeatureScaleStd = v143;
    LODWORD(v143) = 1089294603;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMCallCountFeatureScaleMeanKey" withFallback:v143];
    v145 = v144;
    v14->_callCountFeatureScaleMean = v145;
    LODWORD(v145) = 1089371327;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMCallCountFeatureScaleStdKey" withFallback:v145];
    v147 = v146;
    v14->_callCountFeatureScaleStd = v147;
    LODWORD(v147) = 1074675677;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMMusicCountFeatureScaleMeanKey" withFallback:v147];
    v149 = v148;
    v14->_musicCountFeatureScaleMean = v149;
    LODWORD(v149) = 1079737737;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMMusicCountFeatureScaleStdKey" withFallback:v149];
    v151 = v150;
    v14->_musicCountFeatureScaleStd = v151;
    LODWORD(v151) = 1046188468;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMMusicCountShortLookbackFeatureScaleMeanKey" withFallback:v151];
    v153 = v152;
    v14->_musicCountShortLookbackFeatureScaleMean = v153;
    LODWORD(v153) = 1056947462;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMMusicCountShortLookbackFeatureScaleStdKey" withFallback:v153];
    v155 = v154;
    v14->_musicCountShortLookbackFeatureScaleStd = v155;
    LODWORD(v155) = 1091860835;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMAtHomeCountFeatureScaleMeanKey" withFallback:v155];
    v157 = v156;
    v14->_atHomeCountFeatureScaleMean = v157;
    LODWORD(v157) = 1088019348;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMAtHomeCountFeatureScaleStdKey" withFallback:v157];
    v159 = v158;
    v14->_atHomeCountFeatureScaleStd = v159;
    LODWORD(v159) = 1064400404;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMAtHomeCountShortLookbackFeatureScaleMeanKey" withFallback:v159];
    v161 = v160;
    v14->_atHomeCountShortLookbackFeatureScaleMean = v161;
    LODWORD(v161) = 1063041500;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMAtHomeCountShortLookbackFeatureScaleStdKey" withFallback:v161];
    v163 = v162;
    v14->_atHomeCountShortLookbackFeatureScaleStd = v163;
    LODWORD(v163) = 1069583012;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMAtWorkCountFeatureScaleMeanKey" withFallback:v163];
    v165 = v164;
    v14->_atWorkCountFeatureScaleMean = v165;
    LODWORD(v165) = 1077519839;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMAtWorkCountFeatureScaleStdKey" withFallback:v165];
    v167 = v166;
    v14->_atWorkCountFeatureScaleStd = v167;
    LODWORD(v167) = 1028177053;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMAtWorkSameWeekdayProbabilityFeatureScaleMeanKey" withFallback:v167];
    v169 = v168;
    v14->_atWorkSameWeekdayProbabilityFeatureScaleMean = v169;
    LODWORD(v169) = 1041997855;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMAtWorkSameWeekdayProbabilityFeatureScaleStdKey" withFallback:v169];
    v171 = v170;
    v14->_atWorkSameWeekdayProbabilityFeatureScaleStd = v171;
    LODWORD(v171) = 1041522724;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMAtWorkCountShortLookbackFeatureScaleMeanKey" withFallback:v171];
    v173 = v172;
    v14->_atWorkCountShortLookbackFeatureScaleMean = v173;
    LODWORD(v173) = 1054944094;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMAtWorkCountShortLookbackFeatureScaleStdKey" withFallback:v173];
    v175 = v174;
    v14->_atWorkCountShortLookbackFeatureScaleStd = v175;
    LODWORD(v175) = 1091042802;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMWeekdayPrevScreentimeCountFeatureScaleMeanKey" withFallback:v175];
    v177 = v176;
    v14->_weekdayPrevScreentimeCountFeatureScaleMean = v177;
    LODWORD(v177) = 1096082695;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMWeekdayPrevScreentimeCountFeatureScaleStdKey" withFallback:v177];
    v179 = v178;
    v14->_weekdayPrevScreentimeCountFeatureScaleStd = v179;
    LODWORD(v179) = 1026141238;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMFirstScreentimeOfDayFeatureScaleMeanKey" withFallback:v179];
    v181 = v180;
    v14->_firstScreentimeOfDayFeatureScaleMean = v181;
    LODWORD(v181) = 1045171567;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMFirstScreentimeOfDayFeatureScaleStdKey" withFallback:v181];
    v183 = v182;
    v14->_firstScreentimeOfDayFeatureScaleStd = v183;
    LODWORD(v183) = 1026216669;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMLastScreentimeOfDayFeatureScaleMeanKey" withFallback:v183];
    v185 = v184;
    v14->_lastScreentimeOfDayFeatureScaleMean = v185;
    LODWORD(v185) = 1045214853;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMLastScreentimeOfDayFeatureScaleStdKey" withFallback:v185];
    v187 = v186;
    v14->_lastScreentimeOfDayFeatureScaleStd = v187;
    LODWORD(v187) = 1045779775;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMIsAfternoonFeatureScaleMeanKey" withFallback:v187];
    v189 = v188;
    v14->_isAfternoonFeatureScaleMean = v189;
    LODWORD(v189) = 1053814384;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMIsAfternoonFeatureScaleStdKey" withFallback:v189];
    v191 = v190;
    v14->_isAfternoonFeatureScaleStd = v191;
    LODWORD(v191) = 1042983617;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMIsEveningFeatureScaleMeanKey" withFallback:v191];
    v193 = v192;
    v14->_isEveningFeatureScaleMean = v193;
    LODWORD(v193) = 1052692391;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMIsEveningFeatureScaleStdKey" withFallback:v193];
    v195 = v194;
    v14->_isEveningFeatureScaleStd = v195;
    LODWORD(v195) = 1049974113;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMIsMorningFeatureScaleMeanKey" withFallback:v195];
    v197 = v196;
    v14->_isMorningFeatureScaleMean = v197;
    LODWORD(v197) = 1055438888;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMIsMorningFeatureScaleStdKey" withFallback:v197];
    v199 = v198;
    v14->_isMorningFeatureScaleStd = v199;
    LODWORD(v199) = 1051372191;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMIsNightFeatureScaleMeanKey" withFallback:v199];
    v201 = v200;
    v14->_isNightFeatureScaleMean = v201;
    LODWORD(v201) = 1056005119;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMIsNightFeatureScaleStdKey" withFallback:v201];
    v14->_isNightFeatureScaleStd = v202;
  }

  return v14;
}

- (void)predictUserAvailabilityWithEvents:(id)a3 andBundles:(id)a4 andSuggestionEngagementEvents:(id)a5 andAppEntryEngagementEvents:(id)a6 availabilityWithDowntimeHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  objc_initWeak(&location, self);
  v17 = [(MOAvailabilityPredictionManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __170__MOAvailabilityPredictionManager_predictUserAvailabilityWithEvents_andBundles_andSuggestionEngagementEvents_andAppEntryEngagementEvents_availabilityWithDowntimeHandler___block_invoke;
  block[3] = &unk_10033DC88;
  objc_copyWeak(&v29, &location);
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  dispatch_async(v17, block);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

void __170__MOAvailabilityPredictionManager_predictUserAvailabilityWithEvents_andBundles_andSuggestionEngagementEvents_andAppEntryEngagementEvents_availabilityWithDowntimeHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [WeakRetained _predictUserAvailabilityWithEvents:*(a1 + 32) andBundles:*(a1 + 40) andSuggestionEngagementEvents:*(a1 + 48) andAppEntryEngagementEvents:*(a1 + 56) handler:*(a1 + 64)];
}

- (void)_predictUserAvailabilityWithEvents:(id)a3 andBundles:(id)a4 andSuggestionEngagementEvents:(id)a5 andAppEntryEngagementEvents:(id)a6 handler:(id)a7
{
  v12 = a5;
  v255 = a6;
  v254 = a7;
  v13 = a4;
  v14 = a3;
  v15 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
  v420 = v15;
  v16 = [NSArray arrayWithObjects:&v420 count:1];
  v17 = [v14 sortedArrayUsingDescriptors:v16];

  v18 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
  v419 = v18;
  v19 = [NSArray arrayWithObjects:&v419 count:1];
  v309 = [v13 sortedArrayUsingDescriptors:v19];

  v20 = +[NSBundle mainBundle];
  v21 = [v20 URLForResource:@"availabilityPredict061725" withExtension:@"mlmodelc"];

  v22 = objc_alloc_init(MLModelConfiguration);
  v342 = 0;
  v308 = [MLModel modelWithContentsOfURL:v21 configuration:v22 error:&v342];
  v23 = v342;
  v310 = v17;
  v253 = v15;
  if (v23)
  {
    v25 = v254;
    v24 = v255;
    v26 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [MOAvailabilityPredictionManager _predictUserAvailabilityWithEvents:v23 andBundles:? andSuggestionEngagementEvents:? andAppEntryEngagementEvents:? handler:?];
    }

    (*(v254 + 2))(v254, 0, 0, v23);
    v27 = v309;
    goto LABEL_70;
  }

  v245 = v22;
  v246 = v21;
  v247 = v18;
  v244 = [NSPredicate predicateWithFormat:@"suggestionEvent.type IN %@", &off_10036DFC8];
  v28 = [v12 filteredArrayUsingPredicate:?];
  [NSPredicate predicateWithFormat:@"suggestionEvent.type == %@", &off_10036B218];
  v242 = v248 = v12;
  v241 = [v12 filteredArrayUsingPredicate:?];
  v29 = [MOAvailabilityPredictionManager getEngagementTimeArray:"getEngagementTimeArray:withKey:checkWriting:" withKey:? checkWriting:?];
  v30 = [(MOAvailabilityPredictionManager *)self getEngagementTimeArray:v255 withKey:@"entryEvent" checkWriting:0];
  v31 = [(MOAvailabilityPredictionManager *)self getEngagementTimeArray:v255 withKey:@"entryEvent" checkWriting:1];
  v243 = v28;
  [(MOAvailabilityPredictionManager *)self getEngagementTimeArray:v28 withKey:@"suggestionEvent" checkWriting:0];
  v237 = v239 = v30;
  v32 = [v30 arrayByAddingObjectsFromArray:?];
  v240 = v29;
  v33 = [(MOAvailabilityPredictionManager *)self getHourlyOccurrenceCounts:v29];
  availabilityPredictionHourlyViewCountThreshold = self->_availabilityPredictionHourlyViewCountThreshold;
  v235 = v33;
  v35 = [MOAvailabilityPredictionManager filterHourlyOccurrenceCounts:"filterHourlyOccurrenceCounts:withThreshold:" withThreshold:?];
  v36 = [(MOAvailabilityPredictionManager *)self getHourlyOccurrenceCounts:v32];
  v238 = v31;
  v37 = [(MOAvailabilityPredictionManager *)self getHourlyOccurrenceCounts:v31];
  v233 = v36;
  v234 = v35;
  v231 = [(MOAvailabilityPredictionManager *)self mergeHourlyOccurrenceCounts:v35 withDict:v36];
  v307 = [(MOAvailabilityPredictionManager *)self reformatHourlyOccurrenceCounts:?];
  v232 = v37;
  v304 = [(MOAvailabilityPredictionManager *)self reformatHourlyOccurrenceCounts:v37];
  v236 = v32;
  v38 = [(MOAvailabilityPredictionManager *)self findOverlappingEngagament:v32 forEvents:v17];
  v39 = [(MOAvailabilityPredictionManager *)self defaultsManager];
  [v39 deleteObjectForKey:@"AvailabilityPredictionEngagementPOICategories"];

  v230 = v38;
  v229 = [NSSet setWithArray:v38];
  v40 = [v229 allObjects];
  [(MOAvailabilityPredictionManager *)self saveEligiblePOICategories:v40];

  v41 = +[NSDate date];
  v42 = +[NSCalendar currentCalendar];
  v303 = v41;
  v43 = [v42 components:60 fromDate:v41];
  [v43 setMinute:0];
  [v43 setSecond:0];
  v306 = v42;
  v228 = v43;
  v302 = [v42 dateFromComponents:v43];
  v252 = objc_opt_new();
  v417[0] = @"DowntimeDetectionTrimFractionKey";
  v337 = [NSNumber numberWithDouble:self->_downtimeDetectionTrimFraction];
  v418[0] = v337;
  v417[1] = @"DowntimeDetectionWinLengthMinDefaultKey";
  v334 = [NSNumber numberWithDouble:self->_downtimeDetectionWinLengthMin];
  v418[1] = v334;
  v417[2] = @"DowntimeDetectionWinLengthMaxDefaultKey";
  v331 = [NSNumber numberWithDouble:self->_downtimeDetectionWinLengthMax];
  v418[2] = v331;
  v417[3] = @"DowntimeDetectionWinActivityRatioMaxDefaultKey";
  v328 = [NSNumber numberWithDouble:self->_downtimeDetectionWinActivityRatioMax];
  v418[3] = v328;
  v417[4] = @"DowntimeDetectionMinNumDaysWithScreentimeThresholdKey";
  v44 = [NSNumber numberWithDouble:self->_downtimeDetectionMinNumDaysWithScreentimeThreshold];
  v418[4] = v44;
  v417[5] = @"DowntimeDetectionMinNumObservationsThresholdKey";
  v45 = [NSNumber numberWithDouble:self->_downtimeDetectionMinNumObservationsThreshold];
  v418[5] = v45;
  v417[6] = @"DowntimeDetectionMinActiveHoursThresholdKey";
  v46 = [NSNumber numberWithDouble:self->_downtimeDetectionMinActiveHoursThreshold];
  v418[6] = v46;
  v417[7] = @"DowntimeDetectionOverallActivityThresholdKey";
  v47 = [NSNumber numberWithDouble:self->_downtimeDetectionOverallActivityThreshold];
  v418[7] = v47;
  v417[8] = @"DowntimeDetectionRecentDaysMinNumDaysWithScreentimeThresholdKey";
  v48 = [NSNumber numberWithDouble:self->_downtimeDetectionRecentDaysMinNumDaysWithScreentimeThreshold];
  v418[8] = v48;
  v417[9] = @"DowntimeDetectionRecentDaysMinNumObservationsThresholdKey";
  v49 = [NSNumber numberWithDouble:self->_downtimeDetectionRecentDaysMinNumObservationsThreshold];
  v418[9] = v49;
  v417[10] = @"DowntimeDetectionRecentDaysMinActiveHoursThresholdKey";
  v50 = [NSNumber numberWithDouble:self->_downtimeDetectionRecentDaysMinActiveHoursThreshold];
  v418[10] = v50;
  v417[11] = @"DowntimeDetectionRecentDaysOverallActivityThresholdKey";
  v51 = [NSNumber numberWithDouble:self->_downtimeDetectionRecentDaysOverallActivityThreshold];
  v418[11] = v51;
  v52 = [NSDictionary dictionaryWithObjects:v418 forKeys:v417 count:12];

  v53 = v309;
  v311 = self;
  allowedScreentimeCategories = self->_allowedScreentimeCategories;
  v341 = 0;
  v55 = v310;
  v251 = v52;
  v56 = [MODowntimeDetectionUtilities downtimeDetectionPipeline:v310 withBundles:v309 withEngagement:v307 withDefaults:v52 withAllowedScreentimeCategories:allowedScreentimeCategories forRecentDays:1 error:&v341];
  v57 = v341;
  v58 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
  if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
  {
    v59 = [v56 objectForKeyedSubscript:@"downtimeWindowStartHour"];
    v60 = [v56 objectForKeyedSubscript:@"downtimeWindowEndHour"];
    v61 = [v56 objectForKeyedSubscript:@"downtimeWindowLength"];
    *buf = 138412802;
    v346 = v59;
    v347 = 2112;
    v348 = v60;
    v349 = 2112;
    v350 = v61;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "[APM] Downtime detection for recent days, window start hour: %@, window end hour: %@, window length: %@", buf, 0x20u);

    v53 = v309;
  }

  v226 = v57;
  if (v57)
  {
    v62 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v57 code]);
    v63 = @"downtimeDetectionErrorRecent";
    v64 = v252;
LABEL_9:
    [v64 setObject:v62 forKeyedSubscript:v63];

    goto LABEL_10;
  }

  v95 = [v56 objectForKeyedSubscript:@"downtimeWindowStartHour"];
  v64 = v252;
  if (v95)
  {
    v96 = v95;
    v97 = [v56 objectForKeyedSubscript:@"downtimeWindowLength"];

    if (v97)
    {
      v98 = [v56 objectForKeyedSubscript:@"downtimeWindowStartHour"];
      [v252 setObject:v98 forKeyedSubscript:@"downtimeWindowStartHourRecent"];

      v62 = [v56 objectForKeyedSubscript:@"downtimeWindowLength"];
      v63 = @"downtimeWindowLengthRecent";
      goto LABEL_9;
    }
  }

LABEL_10:
  v65 = v311->_allowedScreentimeCategories;
  v340 = 0;
  v66 = [MODowntimeDetectionUtilities downtimeDetectionPipeline:v310 withBundles:v53 withEngagement:v307 withDefaults:v251 withAllowedScreentimeCategories:v65 forRecentDays:0 error:&v340];
  v67 = v340;
  v68 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
  if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
  {
    v69 = [v66 objectForKeyedSubscript:@"downtimeWindowStartHour"];
    v70 = [v66 objectForKeyedSubscript:@"downtimeWindowEndHour"];
    v71 = [v66 objectForKeyedSubscript:@"downtimeWindowLength"];
    *buf = 138412802;
    v346 = v69;
    v347 = 2112;
    v348 = v70;
    v349 = 2112;
    v350 = v71;
    _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, "[APM] Downtime detection across all days, window start hour: %@, window end hour: %@, window length: %@", buf, 0x20u);
  }

  if (v67)
  {
    v72 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v67 code]);
    [v64 setObject:v72 forKeyedSubscript:@"downtimeDetectionErrorAllDays"];
    v73 = v311;
LABEL_14:

    goto LABEL_15;
  }

  v99 = [v66 objectForKeyedSubscript:@"downtimeWindowStartHour"];
  v73 = v311;
  if (v99)
  {
    v100 = v99;
    v101 = [v66 objectForKeyedSubscript:@"downtimeWindowLength"];

    if (v101)
    {
      v102 = [v66 objectForKeyedSubscript:@"downtimeWindowStartHour"];
      [v64 setObject:v102 forKeyedSubscript:@"downtimeWindowStartHourAllDays"];

      v72 = [v66 objectForKeyedSubscript:@"downtimeWindowLength"];
      [v64 setObject:v72 forKeyedSubscript:@"downtimeWindowLengthAllDays"];
      goto LABEL_14;
    }
  }

LABEL_15:
  v74 = [v66 objectForKeyedSubscript:@"downtimeWindowStartHour"];
  v75 = [v56 objectForKeyedSubscript:@"downtimeWindowStartHour"];
  v76 = [(MOAvailabilityPredictionManager *)v73 defaultsManager];
  v250 = [v76 objectForKey:@"DowntimeDetectionWindowStartHourUserHistoricalDefault"];

  v77 = [(MOAvailabilityPredictionManager *)v73 defaultsManager];
  [v77 deleteObjectForKey:@"downtimeWindowStartHour"];

  v224 = v67;
  v222 = v75;
  if (v74 && v75)
  {
    [v75 doubleValue];
    v79 = v78;
    [v74 doubleValue];
    if ([MODowntimeDetectionUtilities isBeforeHour:v79 comparedTo:v80])
    {
      v81 = v75;
    }

    else
    {
      v81 = v74;
    }

    [v81 doubleValue];
    downtimeDetectionDefaultSleepStartHour = v82;
    v84 = [(MOAvailabilityPredictionManager *)v311 defaultsManager];
    v85 = [NSNumber numberWithDouble:downtimeDetectionDefaultSleepStartHour];
    [v84 setObject:v85 forKey:@"DowntimeDetectionWindowStartHour"];

    v86 = [(MOAvailabilityPredictionManager *)v311 defaultsManager];
    v87 = [NSNumber numberWithDouble:downtimeDetectionDefaultSleepStartHour];
    [v86 setObject:v87 forKey:@"DowntimeDetectionWindowStartHourUserHistoricalDefault"];

    v88 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
    if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v346 = *&downtimeDetectionDefaultSleepStartHour;
      _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_INFO, "[APM] Downtime detection reconciled window start hour: %f", buf, 0xCu);
    }

    v89 = &off_10036B230;
  }

  else if (v74)
  {
    [v74 doubleValue];
    downtimeDetectionDefaultSleepStartHour = v90;
    v91 = [(MOAvailabilityPredictionManager *)v311 defaultsManager];
    v92 = [NSNumber numberWithDouble:downtimeDetectionDefaultSleepStartHour];
    [v91 setObject:v92 forKey:@"DowntimeDetectionWindowStartHour"];

    v93 = [(MOAvailabilityPredictionManager *)v311 defaultsManager];
    v94 = [NSNumber numberWithDouble:downtimeDetectionDefaultSleepStartHour];
    [v93 setObject:v94 forKey:@"DowntimeDetectionWindowStartHourUserHistoricalDefault"];

    v88 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
    if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v346 = *&downtimeDetectionDefaultSleepStartHour;
      _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_INFO, "[APM] Downtime detection using overall start hour only: %f", buf, 0xCu);
    }

    v89 = &off_10036B248;
  }

  else if (v250)
  {
    [v250 doubleValue];
    downtimeDetectionDefaultSleepStartHour = v103;
    v88 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
    if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v346 = *&downtimeDetectionDefaultSleepStartHour;
      _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_INFO, "[APM] Downtime detection using personalized default start hour: %f", buf, 0xCu);
    }

    v89 = &off_10036B260;
  }

  else
  {
    downtimeDetectionDefaultSleepStartHour = v311->_downtimeDetectionDefaultSleepStartHour;
    v88 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
    if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v346 = *&downtimeDetectionDefaultSleepStartHour;
      _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_INFO, "[APM] Downtime detection using population default start hour: %f", buf, 0xCu);
    }

    v89 = &off_10036B278;
  }

  v104 = [NSNumber numberWithDouble:downtimeDetectionDefaultSleepStartHour];
  [v64 setObject:v104 forKeyedSubscript:@"downtimeWindowStartHourSelected"];

  [v64 setObject:v89 forKeyedSubscript:@"downtimeSelectionMechanism"];
  v105 = [v66 objectForKeyedSubscript:@"downtimeWindowEndHour"];
  v106 = [v56 objectForKeyedSubscript:@"downtimeWindowEndHour"];
  v107 = [(MOAvailabilityPredictionManager *)v311 defaultsManager];
  v249 = [v107 objectForKey:@"DowntimeDetectionWindowEndHourUserHistoricalDefault"];

  v108 = [(MOAvailabilityPredictionManager *)v311 defaultsManager];
  [v108 deleteObjectForKey:@"downtimeWindowEndHour"];

  v227 = v56;
  v225 = v66;
  v220 = v106;
  v221 = v105;
  if (!v105 || !v106)
  {
    if (v105)
    {
      [v105 doubleValue];
      downtimeDetectionDefaultSleepEndHour = v121;
      v122 = [(MOAvailabilityPredictionManager *)v311 defaultsManager];
      v123 = [NSNumber numberWithDouble:downtimeDetectionDefaultSleepEndHour];
      [v122 setObject:v123 forKey:@"DowntimeDetectionWindowEndHour"];

      v124 = [(MOAvailabilityPredictionManager *)v311 defaultsManager];
      v125 = [NSNumber numberWithDouble:downtimeDetectionDefaultSleepEndHour];
      [v124 setObject:v125 forKey:@"DowntimeDetectionWindowEndHourUserHistoricalDefault"];

      v119 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
      if (!os_log_type_enabled(v119, OS_LOG_TYPE_INFO))
      {
        goto LABEL_56;
      }

      *buf = 134217984;
      v346 = *&downtimeDetectionDefaultSleepEndHour;
      v120 = "[APM] Downtime detection using overall end hour only: %f";
    }

    else if (v249)
    {
      [v249 doubleValue];
      downtimeDetectionDefaultSleepEndHour = v126;
      v119 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
      if (!os_log_type_enabled(v119, OS_LOG_TYPE_INFO))
      {
        goto LABEL_56;
      }

      *buf = 134217984;
      v346 = *&downtimeDetectionDefaultSleepEndHour;
      v120 = "[APM] Downtime detection using personalized default end hour: %f";
    }

    else
    {
      downtimeDetectionDefaultSleepEndHour = v311->_downtimeDetectionDefaultSleepEndHour;
      v119 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
      if (!os_log_type_enabled(v119, OS_LOG_TYPE_INFO))
      {
        goto LABEL_56;
      }

      *buf = 134217984;
      v346 = *&downtimeDetectionDefaultSleepEndHour;
      v120 = "[APM] Downtime detection using population default end hour: %f";
    }

    goto LABEL_55;
  }

  [v105 doubleValue];
  v110 = v109;
  [v106 doubleValue];
  if ([MODowntimeDetectionUtilities isBeforeHour:v110 comparedTo:v111])
  {
    v112 = v106;
  }

  else
  {
    v112 = v105;
  }

  [v112 doubleValue];
  downtimeDetectionDefaultSleepEndHour = v113;
  v115 = [(MOAvailabilityPredictionManager *)v311 defaultsManager];
  v116 = [NSNumber numberWithDouble:downtimeDetectionDefaultSleepEndHour];
  [v115 setObject:v116 forKey:@"DowntimeDetectionWindowEndHour"];

  v117 = [(MOAvailabilityPredictionManager *)v311 defaultsManager];
  v118 = [NSNumber numberWithDouble:downtimeDetectionDefaultSleepEndHour];
  [v117 setObject:v118 forKey:@"DowntimeDetectionWindowEndHourUserHistoricalDefault"];

  v119 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
  if (os_log_type_enabled(v119, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v346 = *&downtimeDetectionDefaultSleepEndHour;
    v120 = "[APM] Downtime detection reconciled window end hour: %f";
LABEL_55:
    _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_INFO, v120, buf, 0xCu);
  }

LABEL_56:
  v223 = v74;

  v127 = [NSNumber numberWithDouble:downtimeDetectionDefaultSleepEndHour];
  [v64 setObject:v127 forKeyedSubscript:@"downtimeWindowEndHourSelected"];

  v305 = +[NSMutableArray array];
  v128 = 1.0;
  v129 = 24;
  v130 = 0.25;
  v131 = 1.0;
  v132 = v311;
  do
  {
    v335 = v129;
    v338 = [v302 dateByAddingTimeInterval:v132->_availabilityPredictionWindowSize * v131];
    v133 = [(MOAvailabilityPredictionManager *)v132 extractFeaturesWithEvents:v55 andBundles:v309 andHourlyEngagement:v307 andHourlyWritingEngagement:v304 forWindow:downtimeDetectionDefaultSleepStartHour withDowntimeWindowStartHour:downtimeDetectionDefaultSleepEndHour andDowntimeWindowEndHour:?];
    v134 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
    if (os_log_type_enabled(v134, OS_LOG_TYPE_INFO))
    {
      v332 = [v133 objectForKeyedSubscript:@"downtimeStartHour"];
      [v332 doubleValue];
      v295 = v135;
      v329 = [v133 objectForKeyedSubscript:@"downtimeEndHour"];
      [v329 doubleValue];
      v293 = v136;
      v326 = [v133 objectForKeyedSubscript:@"hour"];
      [v326 doubleValue];
      v292 = v137;
      v324 = [v133 objectForKeyedSubscript:@"weekday"];
      [v324 doubleValue];
      v290 = v138;
      v322 = [v133 objectForKeyedSubscript:@"motionActivityCount"];
      [v322 doubleValue];
      v289 = v139;
      v320 = [v133 objectForKeyedSubscript:@"motionActivityCountShortLookback"];
      [v320 doubleValue];
      v288 = v140;
      v318 = [v133 objectForKeyedSubscript:@"motionActivityOverlapCountShortLookback"];
      [v318 doubleValue];
      v286 = v141;
      v316 = [v133 objectForKeyedSubscript:@"engagementCount"];
      [v316 doubleValue];
      v284 = v142;
      v314 = [v133 objectForKeyedSubscript:@"engagementCountMidLookback"];
      [v314 doubleValue];
      v283 = v143;
      v312 = [v133 objectForKeyedSubscript:@"engagementCountBin1MidLookback"];
      [v312 doubleValue];
      v281 = v144;
      v301 = [v133 objectForKeyedSubscript:@"healthandfitnessScreentimeCount"];
      [v301 doubleValue];
      v280 = v145;
      v300 = [v133 objectForKeyedSubscript:@"healthandfitnessScreentimeCountMidLookback"];
      [v300 doubleValue];
      v278 = v146;
      v299 = [v133 objectForKeyedSubscript:@"healthandfitnessScreentimeCountShortLookback"];
      [v299 doubleValue];
      v276 = v147;
      v298 = [v133 objectForKeyedSubscript:@"screentimeCount"];
      [v298 doubleValue];
      v275 = v148;
      v297 = [v133 objectForKeyedSubscript:@"screentimeSameWeekdayProbability"];
      [v297 doubleValue];
      v273 = v149;
      v296 = [v133 objectForKeyedSubscript:@"screentimeCountShortLookback"];
      [v296 doubleValue];
      v272 = v150;
      v294 = [v133 objectForKeyedSubscript:@"overMedianScreentimeSameWeekdayProbability"];
      [v294 doubleValue];
      v270 = v151;
      v291 = [v133 objectForKeyedSubscript:@"overMedianScreentimeSameWeekdayProbabilityShortLookback"];
      [v291 doubleValue];
      v268 = v152;
      v287 = [v133 objectForKeyedSubscript:@"over20MinScreentimeSameWeekdayProbability"];
      [v287 doubleValue];
      v267 = v153;
      v285 = [v133 objectForKeyedSubscript:@"over20MinScreentimeCountMidLookback"];
      [v285 doubleValue];
      v265 = v154;
      v282 = [v133 objectForKeyedSubscript:@"callCount"];
      [v282 doubleValue];
      v264 = v155;
      v279 = [v133 objectForKeyedSubscript:@"musicCount"];
      [v279 doubleValue];
      v263 = v156;
      v277 = [v133 objectForKeyedSubscript:@"musicCountShortLookback"];
      [v277 doubleValue];
      v262 = v157;
      v274 = [v133 objectForKeyedSubscript:@"atHomeCount"];
      [v274 doubleValue];
      v261 = v158;
      v271 = [v133 objectForKeyedSubscript:@"atHomeCountShortLookback"];
      [v271 doubleValue];
      v260 = v159;
      v269 = [v133 objectForKeyedSubscript:@"atWorkCount"];
      [v269 doubleValue];
      v259 = v160;
      v266 = [v133 objectForKeyedSubscript:@"atWorkSameWeekdayProbability"];
      [v266 doubleValue];
      v258 = v161;
      v162 = [v133 objectForKeyedSubscript:@"atWorkCountShortLookback"];
      [v162 doubleValue];
      v257 = v163;
      v164 = [v133 objectForKeyedSubscript:@"weekdayPrevScreentimeCount"];
      [v164 doubleValue];
      v256 = v165;
      v166 = [v133 objectForKeyedSubscript:@"firstScreentimeOfDay"];
      [v166 doubleValue];
      v168 = v167;
      v169 = [v133 objectForKeyedSubscript:@"lastScreentimeOfDay"];
      [v169 doubleValue];
      v170 = downtimeDetectionDefaultSleepEndHour;
      v172 = v171;
      v173 = [v133 objectForKeyedSubscript:@"isAfternoon"];
      [v173 doubleValue];
      v175 = v174;
      v176 = [v133 objectForKeyedSubscript:@"isEvening"];
      [v176 doubleValue];
      v178 = v177;
      v179 = [v133 objectForKeyedSubscript:@"isMorning"];
      [v179 doubleValue];
      v181 = v180;
      v182 = [v133 objectForKeyedSubscript:@"isNight"];
      [v182 doubleValue];
      v346 = v295;
      v348 = v293;
      v350 = v292;
      v352 = v290;
      *buf = 134226946;
      v347 = 2048;
      v349 = 2048;
      v351 = 2048;
      v353 = 2048;
      v354 = v289;
      v355 = 2048;
      v356 = v288;
      v357 = 2048;
      v358 = v286;
      v359 = 2048;
      v360 = v284;
      v361 = 2048;
      v362 = v283;
      v363 = 2048;
      v364 = v281;
      v365 = 2048;
      v366 = v280;
      v367 = 2048;
      v368 = v278;
      v369 = 2048;
      v370 = v276;
      v371 = 2048;
      v372 = v275;
      v373 = 2048;
      v374 = v273;
      v375 = 2048;
      v376 = v272;
      v377 = 2048;
      v378 = v270;
      v379 = 2048;
      v380 = v268;
      v381 = 2048;
      v382 = v267;
      v383 = 2048;
      v384 = v265;
      v385 = 2048;
      v386 = v264;
      v387 = 2048;
      v388 = v263;
      v389 = 2048;
      v390 = v262;
      v391 = 2048;
      v392 = v261;
      v393 = 2048;
      v394 = v260;
      v395 = 2048;
      v396 = v259;
      v397 = 2048;
      v398 = v258;
      v399 = 2048;
      v400 = v257;
      v401 = 2048;
      v402 = v256;
      v403 = 2048;
      v404 = v168;
      v405 = 2048;
      v406 = v172;
      downtimeDetectionDefaultSleepEndHour = v170;
      v407 = 2048;
      v408 = v175;
      v409 = 2048;
      v410 = v178;
      v128 = 1.0;
      v411 = 2048;
      v412 = v181;
      v130 = 0.25;
      v413 = 2048;
      v414 = v183;
      v415 = 2112;
      v416 = v338;
      _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_INFO, "[APM] Extracted feature array after scaling: [downtimeStartHour:%.5f, downtimeEndHour:%.5f, hour:%.5f, weekday:%.5f, motionActivityCount:%.5f, motionActivityCountShortLookback:%.5f, motionActivityOverlapCountShortLookback:%.5f, engagementCount:%.5f, engagementCountMidLookback:%.5f, engagementCountBin1MidLookback:%.5f, healthandfitnessScreentimeCount:%.5f, healthandfitnessScreentimeCountMidLookback:%.5f, healthandfitnessScreentimeCountShortLookback:%.5f, screentimeCount:%.5f, screentimeSameWeekdayProbability:%.5f, screentimeCountShortLookback:%.5f, overMedianScreentimeSameWeekdayProbability:%.5f, overMedianScreentimeSameWeekdayProbabilityShortLookback:%.5f, over20MinScreentimeSameWeekdayProbability:%.5f, over20MinScreentimeCountMidLookback:%.5f, callCount:%.5f, musicCount:%.5f, musicCountShortLookback:%.5f, atHomeCount:%.5f, atHomeCountShortLookback:%.5f, atWorkCount:%.5f, atWorkSameWeekdayProbability:%.5f, atWorkCountShortLookback:%.5f, weekdayPrevScreentimeCount:%.5f, firstScreentimeOfDay:%.5f, lastScreentimeOfDay:%.5f, isAfternoon:%.5f, isEvening:%.5f, isMorning:%.5f, isNight:%.5f] for window %@", buf, 0x16Au);

      v132 = v311;
      v55 = v310;
    }

    v313 = [(MOAvailabilityPredictionManager *)v132 runMLmodelWithFeatures:v133 andModel:v308];
    v184 = objc_alloc_init(NSDateComponents);
    [v184 setDay:-28];
    v333 = v184;
    v185 = [v306 dateByAddingComponents:v184 toDate:v303 options:0];
    v327 = [NSPredicate predicateWithFormat:@"(category == %d) AND (placeUserType == %d) AND (provider == %d)", 1, 1, 4];
    v325 = [v55 filteredArrayUsingPredicate:?];
    v330 = v185;
    v186 = [MOAvailabilityPredictionManager copyAndTrim:v132 toWindowStartDate:"copyAndTrim:toWindowStartDate:returnAsMOEvent:" returnAsMOEvent:?];
    availabilityPredictionWindowSize = v132->_availabilityPredictionWindowSize;
    LOBYTE(v218) = 0;
    v323 = v186;
    [MOAvailabilityPredictionManager countOccurenceOfEvents:v132 forWindow:"countOccurenceOfEvents:forWindow:windowSize:checkTime:checkWeekday:addBuffer:checkOverlapPercentage:forFeature:" windowSize:v218 checkTime:@"locationFilter" checkWeekday:? addBuffer:? checkOverlapPercentage:? forFeature:?];
    v189 = [NSNumber numberWithDouble:v188 * v130];
    v321 = [NSPredicate predicateWithFormat:@"category == %d", 20];
    v319 = [v55 filteredArrayUsingPredicate:?];
    v190 = [(MOAvailabilityPredictionManager *)v132 filterScreentimeEvents:?];
    v191 = v132->_allowedScreentimeCategories;
    v317 = v190;
    v315 = [MODowntimeDetectionUtilities getTotalScreentimeDurations:"getTotalScreentimeDurations:withAllowedScreentimeCategories:" withAllowedScreentimeCategories:?];
    v192 = [v315 objectForKeyedSubscript:@"durationArray"];
    v193 = [NSPredicate predicateWithFormat:@"overMedian == YES"];
    v194 = [v192 filteredArrayUsingPredicate:v193];
    LOBYTE(v219) = 0;
    [(MOAvailabilityPredictionManager *)v132 countOccurenceOfEvents:v194 forWindow:v338 windowSize:v132->_availabilityPredictionWindowSize checkTime:1 checkWeekday:1 addBuffer:0 checkOverlapPercentage:v219 forFeature:@"screentimeFilter"];
    v196 = [NSNumber numberWithDouble:v195 * v130];
    v197 = [v338 dateByAddingTimeInterval:v132->_availabilityPredictionWindowSize];
    v198 = [MOTime simpleTimetagFromStartDate:v338 endDate:v197];

    v199 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
    if (os_log_type_enabled(v199, OS_LOG_TYPE_INFO))
    {
      *buf = 138414082;
      v346 = @"predictionDate";
      v347 = 2112;
      v348 = v338;
      v349 = 2112;
      v350 = @"availabilityProbability";
      v351 = 2112;
      v352 = v313;
      v353 = 2112;
      v354 = @"locationFilterProbability";
      v355 = 2112;
      v356 = v189;
      v357 = 2112;
      v358 = @"screentimeFilterProbability";
      v359 = 2112;
      v360 = v196;
      _os_log_impl(&_mh_execute_header, v199, OS_LOG_TYPE_INFO, "[APM] %@ %@: %@ %@, %@ %@, %@ %@", buf, 0x52u);
    }

    v344[0] = v338;
    v343[0] = @"predictionDate";
    v343[1] = @"predictionDateTimeTag";
    v200 = [NSNumber numberWithUnsignedInteger:v198];
    v344[1] = v200;
    v344[2] = v313;
    v343[2] = @"availabilityProbability";
    v343[3] = @"locationFilterProbability";
    v343[4] = @"screentimeFilterProbability";
    v344[3] = v189;
    v344[4] = v196;
    v201 = [NSDictionary dictionaryWithObjects:v344 forKeys:v343 count:5];
    [v305 addObject:v201];

    v202 = v335;
    v132 = v311;
    if (v335 == 1)
    {
      v203 = [(MOAvailabilityPredictionManager *)v311 defaultsManager];
      [v203 setObject:v338 forKey:@"AvailabilityPredictionLastWindowConsidered"];

      v202 = 1;
    }

    v131 = v131 + v128;
    v129 = v202 - 1;
    v55 = v310;
  }

  while (v129);
  v339 = [NSPredicate predicateWithFormat:@"category == %d", 20];
  v336 = [v310 filteredArrayUsingPredicate:?];
  v204 = [MODowntimeDetectionUtilities getUniqueDays:"getUniqueDays:withCalendar:" withCalendar:?];
  v205 = objc_alloc_init(NSDictionary);
  v206 = [v204 count];
  v207 = 88;
  if (v311->_downtimeDetectionMinNumDaysWithScreentimeThreshold > v206)
  {
    v207 = 96;
  }

  v208 = [(MOAvailabilityPredictionManager *)v311 findOptimalDateWithPrediction:v305 withPredictionProbabilityThreshold:*(&v311->super.isa + v207)];

  v209 = [(MOAvailabilityPredictionManager *)v311 defaultsManager];
  v210 = v209;
  if (v208)
  {
    v211 = [v208 objectForKeyedSubscript:@"predictionDate"];
    [v210 setObject:v211 forKey:@"AvailabilityPredictionOptimalDate"];

    v212 = [(MOAvailabilityPredictionManager *)v311 defaultsManager];
    v213 = [v208 objectForKeyedSubscript:@"consecutiveEndDate"];
    [v212 setObject:v213 forKey:@"AvailabilityPredictionOptimalEndDate"];

    v214 = [(MOAvailabilityPredictionManager *)v311 defaultsManager];
    v215 = [v208 objectForKeyedSubscript:@"availabilityProbability"];
    [v214 setObject:v215 forKey:@"AvailabilityPredictionOptimalDateProbability"];
  }

  else
  {
    [v209 deleteObjectForKey:@"AvailabilityPredictionOptimalDate"];

    v214 = [(MOAvailabilityPredictionManager *)v311 defaultsManager];
    [v214 deleteObjectForKey:@"AvailabilityPredictionOptimalEndDate"];
  }

  v12 = v248;
  v25 = v254;
  v24 = v255;
  v23 = 0;

  v216 = [(MOAvailabilityPredictionManager *)v311 defaultsManager];
  [v216 setObject:v303 forKey:@"AvailabilityPredictionLastRunStartDate"];

  v217 = [v305 copy];
  (v25)[2](v25, v217, v252, 0);

  v27 = v309;
  v21 = v246;
  v18 = v247;
  v22 = v245;
LABEL_70:
}

- (id)extractFeaturesWithEvents:(id)a3 andBundles:(id)a4 andHourlyEngagement:(id)a5 andHourlyWritingEngagement:(id)a6 forWindow:(id)a7 withDowntimeWindowStartHour:(double)a8 andDowntimeWindowEndHour:(double)a9
{
  v301 = a3;
  v298 = a4;
  v15 = a5;
  v297 = a6;
  v16 = a7;
  v17 = +[NSCalendar currentCalendar];
  v18 = +[NSDate date];
  v19 = objc_alloc_init(NSDateComponents);
  [v19 setDay:-2];
  v234 = v19;
  v300 = [v17 dateByAddingComponents:v19 toDate:v18 options:0];
  v20 = &GEOPOICategoryGasStation_ptr;
  v299 = [NSPredicate predicateWithFormat:@"endDate >= %@", v300];
  v21 = objc_alloc_init(NSDateComponents);
  [v21 setDay:-7];
  v233 = v21;
  v22 = [v17 dateByAddingComponents:v21 toDate:v18 options:0];
  v23 = [NSPredicate predicateWithFormat:@"%K >= %@", @"startDate", v22];
  v24 = [NSPredicate predicateWithFormat:@"endDate >= %@", v22];
  v25 = objc_alloc_init(NSDateComponents);
  [v25 setDay:-28];
  v229 = v25;
  v235 = v18;
  v296 = [v17 dateByAddingComponents:v25 toDate:v18 options:0];
  v228 = [v17 components:32 fromDate:v16];
  v26 = [v228 hour];
  [MOAvailabilityPredictionManager getWeekday:v16];
  v28 = v27;
  v29 = 0.0;
  if ((v26 - 5) >= 7)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = 1.0;
  }

  if ((v26 - 12) >= 5)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = 1.0;
  }

  if ((v26 - 17) >= 4)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = 1.0;
  }

  v292 = v26;
  if ((v26 - 21) >= 0xFFFFFFFFFFFFFFF0)
  {
    v33 = 0.0;
  }

  else
  {
    v33 = 1.0;
  }

  LOBYTE(v153) = 0;
  [(MOAvailabilityPredictionManager *)self countOccurenceOfEvents:v15 forWindow:v16 windowSize:self->_availabilityPredictionWindowSize checkTime:1 checkWeekday:0 addBuffer:0 checkOverlapPercentage:v153 forFeature:@"engagementCount"];
  v216 = v34;
  v236 = v15;
  v35 = [v15 filteredArrayUsingPredicate:v23];
  availabilityPredictionWindowSize = self->_availabilityPredictionWindowSize;
  LOBYTE(v154) = 0;
  v227 = v35;
  [MOAvailabilityPredictionManager countOccurenceOfEvents:"countOccurenceOfEvents:forWindow:windowSize:checkTime:checkWeekday:addBuffer:checkOverlapPercentage:forFeature:" forWindow:v154 windowSize:@"engagementCountMidLookback" checkTime:? checkWeekday:? addBuffer:? checkOverlapPercentage:? forFeature:?];
  v214 = v37;
  v231 = v23;
  v38 = [v297 filteredArrayUsingPredicate:v23];
  v39 = self->_availabilityPredictionWindowSize;
  LOBYTE(v155) = 0;
  v226 = v38;
  [MOAvailabilityPredictionManager countOccurenceOfEvents:"countOccurenceOfEvents:forWindow:windowSize:checkTime:checkWeekday:addBuffer:checkOverlapPercentage:forFeature:" forWindow:v155 windowSize:@"engagementCountBin1MidLookback" checkTime:? checkWeekday:? addBuffer:? checkOverlapPercentage:? forFeature:?];
  v286 = v40;
  v225 = [NSPredicate predicateWithFormat:@"category == %d", 20];
  v41 = [v301 filteredArrayUsingPredicate:?];
  v42 = [(MOAvailabilityPredictionManager *)self filterScreentimeEvents:v41];
  v230 = v24;
  v222 = [v42 filteredArrayUsingPredicate:v24];
  v232 = v22;
  v294 = [MOAvailabilityPredictionManager copyAndTrim:"copyAndTrim:toWindowStartDate:returnAsMOEvent:" toWindowStartDate:? returnAsMOEvent:?];
  v221 = [v42 filteredArrayUsingPredicate:v299];
  v43 = [MOAvailabilityPredictionManager copyAndTrim:"copyAndTrim:toWindowStartDate:returnAsMOEvent:" toWindowStartDate:? returnAsMOEvent:?];
  v224 = v41;
  v295 = v16;
  v223 = v42;
  v220 = v43;
  v291 = v33;
  v290 = v30;
  v289 = v32;
  v288 = v31;
  if ([v41 count])
  {
    v266 = v28;
    LOBYTE(v156) = 0;
    [(MOAvailabilityPredictionManager *)self countOccurenceOfEvents:v42 forWindow:v16 windowSize:self->_availabilityPredictionWindowSize checkTime:1 checkWeekday:0 addBuffer:0 checkOverlapPercentage:v156 forFeature:@"screentimeCount"];
    v282 = v44;
    LOBYTE(v157) = 0;
    [(MOAvailabilityPredictionManager *)self countOccurenceOfEvents:v43 forWindow:v16 windowSize:self->_availabilityPredictionWindowSize checkTime:1 checkWeekday:0 addBuffer:0 checkOverlapPercentage:v157 forFeature:@"screentimeCountShortLookback"];
    v284 = v45;
    LOBYTE(v158) = 0;
    [(MOAvailabilityPredictionManager *)self countOccurenceOfEvents:v42 forWindow:v16 windowSize:self->_availabilityPredictionWindowSize checkTime:1 checkWeekday:1 addBuffer:0 checkOverlapPercentage:v158 forFeature:@"screentimeSameWeekdayProbability"];
    v47 = v46;
    v263 = [MODowntimeDetectionUtilities getTotalScreentimeDurations:v42 withAllowedScreentimeCategories:self->_allowedScreentimeCategories];
    v48 = [v263 objectForKeyedSubscript:@"durationArray"];
    v49 = [NSPredicate predicateWithFormat:@"overMedian == YES"];
    v50 = [v48 filteredArrayUsingPredicate:v49];
    v51 = self->_availabilityPredictionWindowSize;
    LOBYTE(v159) = 0;
    v257 = v50;
    [MOAvailabilityPredictionManager countOccurenceOfEvents:"countOccurenceOfEvents:forWindow:windowSize:checkTime:checkWeekday:addBuffer:checkOverlapPercentage:forFeature:" forWindow:v159 windowSize:@"overMedianScreentimeSameWeekdayProbability" checkTime:? checkWeekday:? addBuffer:? checkOverlapPercentage:? forFeature:?];
    v53 = v52;
    v254 = [MODowntimeDetectionUtilities getTotalScreentimeDurations:v43 withAllowedScreentimeCategories:self->_allowedScreentimeCategories];
    v251 = [v254 objectForKeyedSubscript:@"durationArray"];
    v260 = v49;
    v54 = [v251 filteredArrayUsingPredicate:v49];
    v55 = self->_availabilityPredictionWindowSize;
    LOBYTE(v160) = 0;
    v248 = v54;
    [MOAvailabilityPredictionManager countOccurenceOfEvents:"countOccurenceOfEvents:forWindow:windowSize:checkTime:checkWeekday:addBuffer:checkOverlapPercentage:forFeature:" forWindow:v160 windowSize:@"overMedianScreentimeSameWeekdayProbabilityShortLookback" checkTime:? checkWeekday:? addBuffer:? checkOverlapPercentage:? forFeature:?];
    v280 = v56;
    v246 = [MODowntimeDetectionUtilities getTotalScreentimeDurations:v294 withAllowedScreentimeCategories:self->_allowedScreentimeCategories];
    v57 = [v246 objectForKeyedSubscript:@"durationArray"];
    v58 = [NSPredicate predicateWithFormat:@"over20Min == YES"];
    v243 = v57;
    v59 = [v57 filteredArrayUsingPredicate:v58];
    v60 = self->_availabilityPredictionWindowSize;
    LOBYTE(v161) = 0;
    v237 = v59;
    [MOAvailabilityPredictionManager countOccurenceOfEvents:"countOccurenceOfEvents:forWindow:windowSize:checkTime:checkWeekday:addBuffer:checkOverlapPercentage:forFeature:" forWindow:v161 windowSize:@"over20MinScreentimeCountMidLookback" checkTime:? checkWeekday:? addBuffer:? checkOverlapPercentage:? forFeature:?];
    v278 = v61;
    v270 = v48;
    v240 = v58;
    v62 = [v48 filteredArrayUsingPredicate:v58];
    v63 = self->_availabilityPredictionWindowSize;
    LOBYTE(v162) = 0;
    v212 = v62;
    [MOAvailabilityPredictionManager countOccurenceOfEvents:"countOccurenceOfEvents:forWindow:windowSize:checkTime:checkWeekday:addBuffer:checkOverlapPercentage:forFeature:" forWindow:v162 windowSize:@"over20MinScreentimeSameWeekdayProbability" checkTime:? checkWeekday:? addBuffer:? checkOverlapPercentage:? forFeature:?];
    v65 = v64;
    v66 = [NSPredicate predicateWithFormat:@"ANY screenTimeEvent.appCategoryUsages.appCategory == %d", 13];
    v67 = [v42 filteredArrayUsingPredicate:v66];
    v68 = self->_availabilityPredictionWindowSize;
    LOBYTE(v163) = 0;
    v208 = v67;
    [MOAvailabilityPredictionManager countOccurenceOfEvents:"countOccurenceOfEvents:forWindow:windowSize:checkTime:checkWeekday:addBuffer:checkOverlapPercentage:forFeature:" forWindow:v163 windowSize:@"healthandfitnessScreentimeCount" checkTime:? checkWeekday:? addBuffer:? checkOverlapPercentage:? forFeature:?];
    v276 = v69;
    v70 = [v294 filteredArrayUsingPredicate:v66];
    v71 = self->_availabilityPredictionWindowSize;
    LOBYTE(v164) = 0;
    v206 = v70;
    [MOAvailabilityPredictionManager countOccurenceOfEvents:"countOccurenceOfEvents:forWindow:windowSize:checkTime:checkWeekday:addBuffer:checkOverlapPercentage:forFeature:" forWindow:v164 windowSize:@"healthandfitnessScreentimeCountMidLookback" checkTime:? checkWeekday:? addBuffer:? checkOverlapPercentage:? forFeature:?];
    v274 = v72;
    v210 = v66;
    v73 = [v43 filteredArrayUsingPredicate:v66];
    v74 = self->_availabilityPredictionWindowSize;
    LOBYTE(v165) = 0;
    v204 = v73;
    [MOAvailabilityPredictionManager countOccurenceOfEvents:"countOccurenceOfEvents:forWindow:windowSize:checkTime:checkWeekday:addBuffer:checkOverlapPercentage:forFeature:" forWindow:v165 windowSize:@"healthandfitnessScreentimeCountShortLookback" checkTime:? checkWeekday:? addBuffer:? checkOverlapPercentage:? forFeature:?];
    v272 = v75;
    v76 = [v17 component:512 fromDate:v16];
    v310 = 0u;
    v311 = 0u;
    v312 = 0u;
    v313 = 0u;
    v77 = v42;
    v78 = [v77 countByEnumeratingWithState:&v310 objects:v390 count:16];
    if (v78)
    {
      v79 = v78;
      v80 = *v311;
      do
      {
        for (i = 0; i != v79; i = i + 1)
        {
          if (*v311 != v80)
          {
            objc_enumerationMutation(v77);
          }

          v82 = [*(*(&v310 + 1) + 8 * i) startDate];
          v83 = [v17 component:512 fromDate:v82];

          if (v83 == v76)
          {
            v29 = v29 + 1.0;
          }
        }

        v79 = [v77 countByEnumeratingWithState:&v310 objects:v390 count:16];
      }

      while (v79);
    }

    v84 = [(MOAvailabilityPredictionManager *)self checkNonzeroMedianScreentimeUsagePerHour:v270];
    v85 = [NSPredicate predicateWithFormat:@"nonzeroMedianCheck == YES"];
    v86 = [v84 filteredArrayUsingPredicate:v85];
    v87 = [v86 valueForKeyPath:@"@distinctUnionOfObjects.hour"];
    v88 = [v87 sortedArrayUsingSelector:"compare:"];

    v308 = 0u;
    v309 = 0u;
    v306 = 0u;
    v307 = 0u;
    v89 = v88;
    v90 = [v89 countByEnumeratingWithState:&v306 objects:v389 count:16];
    if (v90)
    {
      v91 = v90;
      v92 = *v307;
      while (2)
      {
        for (j = 0; j != v91; j = j + 1)
        {
          if (*v307 != v92)
          {
            objc_enumerationMutation(v89);
          }

          v94 = *(*(&v306 + 1) + 8 * j);
          if ([v94 integerValue] >= 6)
          {
            v95 = [v94 integerValue];
            goto LABEL_33;
          }
        }

        v91 = [v89 countByEnumeratingWithState:&v306 objects:v389 count:16];
        if (v91)
        {
          continue;
        }

        break;
      }
    }

    v95 = 0;
LABEL_33:

    v304 = 0u;
    v305 = 0u;
    v302 = 0u;
    v303 = 0u;
    v96 = [v89 reverseObjectEnumerator];
    v97 = [v96 allObjects];

    v98 = [v97 countByEnumeratingWithState:&v302 objects:v388 count:16];
    if (v98)
    {
      v200 = v95;
      v202 = v86;
      v99 = v85;
      v100 = v84;
      v101 = *v303;
      while (2)
      {
        for (k = 0; k != v98; k = k + 1)
        {
          if (*v303 != v101)
          {
            objc_enumerationMutation(v97);
          }

          v103 = *(*(&v302 + 1) + 8 * k);
          if ([v103 integerValue] <= 23)
          {
            v98 = [v103 integerValue];
            goto LABEL_43;
          }
        }

        v98 = [v97 countByEnumeratingWithState:&v302 objects:v388 count:16];
        if (v98)
        {
          continue;
        }

        break;
      }

LABEL_43:
      v84 = v100;
      v85 = v99;
      v95 = v200;
      v86 = v202;
    }

    v104 = v47 * 0.25;
    v105 = v53 * 0.25;
    v106 = v65 * 0.25;

    if (v292 == v95)
    {
      v107 = 1.0;
    }

    else
    {
      v107 = 0.0;
    }

    if (v292 == v98)
    {
      v108 = 1.0;
    }

    else
    {
      v108 = 0.0;
    }

    v16 = v295;
    v28 = v266;
    v20 = &GEOPOICategoryGasStation_ptr;
  }

  else
  {
    v108 = NAN;
    v107 = NAN;
    v29 = NAN;
    v272 = NAN;
    v274 = NAN;
    v276 = NAN;
    v106 = NAN;
    v278 = NAN;
    v280 = NAN;
    v105 = NAN;
    v104 = NAN;
    v284 = NAN;
    v282 = NAN;
  }

  v261 = v104;
  v264 = v105;
  v267 = v106;
  v269 = v107;
  v271 = v108;
  v213 = [v20[193] predicateWithFormat:@"(category == %d) AND (placeUserType == %d) AND (provider == %d)", 1, 1, 4];
  v109 = [v301 filteredArrayUsingPredicate:?];
  v110 = [(MOAvailabilityPredictionManager *)self copyAndTrim:v109 toWindowStartDate:v296 returnAsMOEvent:0];
  v111 = [v17 dateByAddingUnit:64 value:30 toDate:v16 options:0];
  LOBYTE(v166) = 0;
  v209 = v110;
  [(MOAvailabilityPredictionManager *)self countOccurenceOfEvents:v110 forWindow:v111 windowSize:60 checkTime:1 checkWeekday:0 addBuffer:0 checkOverlapPercentage:v166 forFeature:@"atHomeCount"];
  v258 = v112;
  v211 = v109;
  v205 = [v109 filteredArrayUsingPredicate:v299];
  LOBYTE(v167) = 0;
  v203 = [MOAvailabilityPredictionManager copyAndTrim:"copyAndTrim:toWindowStartDate:returnAsMOEvent:" toWindowStartDate:? returnAsMOEvent:?];
  [MOAvailabilityPredictionManager countOccurenceOfEvents:"countOccurenceOfEvents:forWindow:windowSize:checkTime:checkWeekday:addBuffer:checkOverlapPercentage:forFeature:" forWindow:v167 windowSize:@"atHomeCountShortLookback" checkTime:? checkWeekday:? addBuffer:? checkOverlapPercentage:? forFeature:?];
  v255 = v113;
  v201 = [v20[193] predicateWithFormat:@"(category == %d) AND (placeUserType == %d) AND (provider == %d)", 1, 2, 4];
  v114 = [v301 filteredArrayUsingPredicate:?];
  LOBYTE(v168) = 0;
  [(MOAvailabilityPredictionManager *)self countOccurenceOfEvents:v114 forWindow:v111 windowSize:60 checkTime:1 checkWeekday:0 addBuffer:0 checkOverlapPercentage:v168 forFeature:@"atWorkCount"];
  v252 = v115;
  LOBYTE(v169) = 0;
  [(MOAvailabilityPredictionManager *)self countOccurenceOfEvents:v114 forWindow:v111 windowSize:60 checkTime:1 checkWeekday:1 addBuffer:0 checkOverlapPercentage:v169 forFeature:@"atWorkSameWeekdayProbability"];
  v249 = v116 * 0.25;
  v199 = v114;
  v198 = [v114 filteredArrayUsingPredicate:v299];
  LOBYTE(v170) = 0;
  v197 = [MOAvailabilityPredictionManager copyAndTrim:"copyAndTrim:toWindowStartDate:returnAsMOEvent:" toWindowStartDate:? returnAsMOEvent:?];
  v207 = v111;
  [MOAvailabilityPredictionManager countOccurenceOfEvents:"countOccurenceOfEvents:forWindow:windowSize:checkTime:checkWeekday:addBuffer:checkOverlapPercentage:forFeature:" forWindow:v170 windowSize:@"atWorkCountShortLookback" checkTime:? checkWeekday:? addBuffer:? checkOverlapPercentage:? forFeature:?];
  v247 = v117;
  v196 = [v20[193] predicateWithFormat:@"category == %d", 10];
  v195 = [v301 filteredArrayUsingPredicate:?];
  v118 = [(MOAvailabilityPredictionManager *)self getCallStartDates:?];
  v119 = self->_availabilityPredictionWindowSize;
  LOBYTE(v171) = 0;
  v194 = v118;
  [MOAvailabilityPredictionManager countOccurenceOfEvents:"countOccurenceOfEvents:forWindow:windowSize:checkTime:checkWeekday:addBuffer:checkOverlapPercentage:forFeature:" forWindow:v171 windowSize:@"callCount" checkTime:? checkWeekday:? addBuffer:? checkOverlapPercentage:? forFeature:?];
  v244 = v120;
  v193 = [v20[193] predicateWithFormat:@"category == %d", 6];
  v121 = [v301 filteredArrayUsingPredicate:?];
  v122 = [(MOAvailabilityPredictionManager *)self getMediaPlaySessionStartDates:v121];
  v123 = self->_availabilityPredictionWindowSize;
  LOBYTE(v172) = 0;
  v191 = v122;
  [MOAvailabilityPredictionManager countOccurenceOfEvents:"countOccurenceOfEvents:forWindow:windowSize:checkTime:checkWeekday:addBuffer:checkOverlapPercentage:forFeature:" forWindow:v172 windowSize:@"musicCount" checkTime:? checkWeekday:? addBuffer:? checkOverlapPercentage:? forFeature:?];
  v241 = v124;
  v192 = v121;
  v190 = [v121 filteredArrayUsingPredicate:v299];
  v189 = [(MOAvailabilityPredictionManager *)self getMediaPlaySessionStartDates:?];
  v125 = [MOAvailabilityPredictionManager copyAndTrim:"copyAndTrim:toWindowStartDate:returnAsMOEvent:" toWindowStartDate:? returnAsMOEvent:?];
  v126 = self->_availabilityPredictionWindowSize;
  LOBYTE(v173) = 0;
  v188 = v125;
  [MOAvailabilityPredictionManager countOccurenceOfEvents:"countOccurenceOfEvents:forWindow:windowSize:checkTime:checkWeekday:addBuffer:checkOverlapPercentage:forFeature:" forWindow:v173 windowSize:@"musicCountShortLookback" checkTime:? checkWeekday:? addBuffer:? checkOverlapPercentage:? forFeature:?];
  v238 = v127;
  v187 = [v20[193] predicateWithFormat:@"bundleSubType IN %@", &off_10036DFE0];
  v128 = [v298 filteredArrayUsingPredicate:?];
  LOBYTE(v174) = 0;
  [(MOAvailabilityPredictionManager *)self countOccurenceOfEvents:v128 forWindow:v16 windowSize:self->_availabilityPredictionWindowSize checkTime:1 checkWeekday:0 addBuffer:0 checkOverlapPercentage:v174 forFeature:@"motionActivityCount"];
  v130 = v129;
  v186 = v128;
  v131 = [v128 filteredArrayUsingPredicate:v299];
  v132 = [(MOAvailabilityPredictionManager *)self copyAndTrim:v131 toWindowStartDate:v300 returnAsMOEvent:0];
  v133 = self->_availabilityPredictionWindowSize;
  LOBYTE(v175) = 0;
  v184 = v132;
  [MOAvailabilityPredictionManager countOccurenceOfEvents:"countOccurenceOfEvents:forWindow:windowSize:checkTime:checkWeekday:addBuffer:checkOverlapPercentage:forFeature:" forWindow:v175 windowSize:@"motionActivityCountShortLookback" checkTime:? checkWeekday:? addBuffer:? checkOverlapPercentage:? forFeature:?];
  v135 = v134;
  LOBYTE(v176) = 1;
  v185 = v131;
  [(MOAvailabilityPredictionManager *)self countOccurenceOfEvents:v131 forWindow:v16 windowSize:self->_availabilityPredictionWindowSize checkTime:1 checkWeekday:0 addBuffer:0 checkOverlapPercentage:v176 forFeature:@"motionActivityOverlapCountShortLookback"];
  v137 = v136;
  v138 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
  v179 = v137;
  v181 = v135;
  if (os_log_type_enabled(v138, OS_LOG_TYPE_INFO))
  {
    *buf = 134226946;
    v139 = v292;
    v140 = a8;
    v317 = a8;
    v318 = 2048;
    v319 = a9;
    v320 = 2048;
    v321 = v292;
    v322 = 2048;
    v323 = v28;
    v324 = 2048;
    v325 = v130;
    v326 = 2048;
    v327 = v135;
    v328 = 2048;
    v329 = v137;
    v330 = 2048;
    v141 = v214;
    v142 = v216;
    v331 = v216;
    v332 = 2048;
    v333 = v214;
    v334 = 2048;
    v335 = v286;
    v336 = 2048;
    v337 = v276;
    v338 = 2048;
    v339 = v274;
    v340 = 2048;
    v341 = v272;
    v342 = 2048;
    v343 = v282;
    v344 = 2048;
    v345 = v261;
    v346 = 2048;
    v347 = v284;
    v348 = 2048;
    v349 = v264;
    v350 = 2048;
    v351 = v280;
    v352 = 2048;
    v353 = v267;
    v354 = 2048;
    v355 = v278;
    v356 = 2048;
    v357 = v244;
    v358 = 2048;
    v359 = v241;
    v360 = 2048;
    v361 = v238;
    v362 = 2048;
    v363 = v258;
    v364 = 2048;
    v365 = v255;
    v366 = 2048;
    v367 = v252;
    v368 = 2048;
    v369 = v249;
    v370 = 2048;
    v371 = v247;
    v372 = 2048;
    v373 = v29;
    v374 = 2048;
    v375 = v269;
    v376 = 2048;
    v377 = v271;
    v378 = 2048;
    v379 = v288;
    v380 = 2048;
    v381 = v289;
    v382 = 2048;
    v383 = v290;
    v384 = 2048;
    v385 = v291;
    v386 = 2112;
    v387 = v16;
    _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_INFO, "[APM] Extracted feature array before scaling: [downtimeStartHour:%.5f, downtimeEndHour:%.5f, hour:%.5f, weekday:%.5f, motionActivityCount:%.5f, motionActivityCountShortLookback:%.5f, motionActivityOverlapCountShortLookback:%.5f, engagementCount:%.5f, engagementCountMidLookback:%.5f, engagementCountBin1MidLookback:%.5f, healthandfitnessScreentimeCount:%.5f, healthandfitnessScreentimeCountMidLookback:%.5f, healthandfitnessScreentimeCountShortLookback:%.5f, screentimeCount:%.5f, screentimeSameWeekdayProbability:%.5f, screentimeCountShortLookback:%.5f, overMedianScreentimeSameWeekdayProbability:%.5f, overMedianScreentimeSameWeekdayProbabilityShortLookback:%.5f, over20MinScreentimeSameWeekdayProbability:%.5f, over20MinScreentimeCountMidLookback:%.5f, callCount:%.5f, musicCount:%.5f, musicCountShortLookback:%.5f, atHomeCount:%.5f, atHomeCountShortLookback:%.5f, atWorkCount:%.5f, atWorkSameWeekdayProbability:%.5f, atWorkCountShortLookback:%.5f, weekdayPrevScreentimeCount:%.5f, firstScreentimeOfDay:%.5f, lastScreentimeOfDay:%.5f, isAfternoon:%.5f, isEvening:%.5f, isMorning:%.5f, isNight:%.5f] for window %@", buf, 0x16Au);
  }

  else
  {
    v139 = v292;
    v142 = v216;
    v140 = a8;
    v141 = v214;
  }

  v314[0] = @"downtimeStartHour";
  v293 = [MLFeatureValue featureValueWithDouble:(v140 - self->_downtimeStartHourFeatureScaleMean) / self->_downtimeStartHourFeatureScaleStd];
  v315[0] = v293;
  v314[1] = @"downtimeEndHour";
  v219 = [MLFeatureValue featureValueWithDouble:(a9 - self->_downtimeEndHourFeatureScaleMean) / self->_downtimeEndHourFeatureScaleStd];
  v315[1] = v219;
  v314[2] = @"hour";
  v217 = [MLFeatureValue featureValueWithDouble:(v139 - self->_hourFeatureScaleMean) / self->_hourFeatureScaleStd];
  v315[2] = v217;
  v314[3] = @"weekday";
  v215 = [MLFeatureValue featureValueWithDouble:(v28 - self->_weekdayFeatureScaleMean) / self->_weekdayFeatureScaleStd];
  v315[3] = v215;
  v314[4] = @"motionActivityCount";
  v183 = [MLFeatureValue featureValueWithDouble:(v130 - self->_motionActivityCountFeatureScaleMean) / self->_motionActivityCountFeatureScaleStd];
  v315[4] = v183;
  v314[5] = @"motionActivityCountShortLookback";
  v182 = [MLFeatureValue featureValueWithDouble:(v181 - self->_motionActivityCountShortLookbackFeatureScaleMean) / self->_motionActivityCountShortLookbackFeatureScaleStd];
  v315[5] = v182;
  v314[6] = @"motionActivityOverlapCountShortLookback";
  v180 = [MLFeatureValue featureValueWithDouble:(v179 - self->_motionActivityOverlapCountShortLookbackFeatureScaleMean) / self->_motionActivityOverlapCountShortLookbackFeatureScaleStd];
  v315[6] = v180;
  v314[7] = @"engagementCount";
  v178 = [MLFeatureValue featureValueWithDouble:(v142 - self->_engagementCountFeatureScaleMean) / self->_engagementCountFeatureScaleStd];
  v315[7] = v178;
  v314[8] = @"engagementCountMidLookback";
  v177 = [MLFeatureValue featureValueWithDouble:(v141 - self->_engagementCountMidLookbackFeatureScaleMean) / self->_engagementCountMidLookbackFeatureScaleStd];
  v315[8] = v177;
  v314[9] = @"engagementCountBin1MidLookback";
  v287 = [MLFeatureValue featureValueWithDouble:(v286 - self->_engagementCountBin1MidLookbackFeatureScaleMean) / self->_engagementCountBin1MidLookbackFeatureScaleStd];
  v315[9] = v287;
  v314[10] = @"healthandfitnessScreentimeCount";
  v277 = [MLFeatureValue featureValueWithDouble:(v276 - self->_healthandfitnessScreentimeCountFeatureScaleMean) / self->_healthandfitnessScreentimeCountFeatureScaleStd];
  v315[10] = v277;
  v314[11] = @"healthandfitnessScreentimeCountMidLookback";
  v275 = [MLFeatureValue featureValueWithDouble:(v274 - self->_healthandfitnessScreentimeCountMidLookbackFeatureScaleMean) / self->_healthandfitnessScreentimeCountMidLookbackFeatureScaleStd];
  v315[11] = v275;
  v314[12] = @"healthandfitnessScreentimeCountShortLookback";
  v273 = [MLFeatureValue featureValueWithDouble:(v272 - self->_healthandfitnessScreentimeCountShortLookbackFeatureScaleMean) / self->_healthandfitnessScreentimeCountShortLookbackFeatureScaleStd];
  v315[12] = v273;
  v314[13] = @"screentimeCount";
  v283 = [MLFeatureValue featureValueWithDouble:(v282 - self->_screentimeCountFeatureScaleMean) / self->_screentimeCountFeatureScaleStd];
  v315[13] = v283;
  v314[14] = @"screentimeSameWeekdayProbability";
  v262 = [MLFeatureValue featureValueWithDouble:(v261 - self->_screentimeSameWeekdayProbabilityFeatureScaleMean) / self->_screentimeSameWeekdayProbabilityFeatureScaleStd];
  v315[14] = v262;
  v314[15] = @"screentimeCountShortLookback";
  v285 = [MLFeatureValue featureValueWithDouble:(v284 - self->_screentimeCountShortLookbackFeatureScaleMean) / self->_screentimeCountShortLookbackFeatureScaleStd];
  v315[15] = v285;
  v314[16] = @"overMedianScreentimeSameWeekdayProbability";
  v265 = [MLFeatureValue featureValueWithDouble:(v264 - self->_overMedianScreentimeSameWeekdayProbabilityFeatureScaleMean) / self->_overMedianScreentimeSameWeekdayProbabilityFeatureScaleStd];
  v315[16] = v265;
  v314[17] = @"overMedianScreentimeSameWeekdayProbabilityShortLookback";
  v281 = [MLFeatureValue featureValueWithDouble:(v280 - self->_overMedianScreentimeSameWeekdayProbabilityShortLookbackFeatureScaleMean) / self->_overMedianScreentimeSameWeekdayProbabilityShortLookbackFeatureScaleStd];
  v315[17] = v281;
  v314[18] = @"over20MinScreentimeSameWeekdayProbability";
  v268 = [MLFeatureValue featureValueWithDouble:(v267 - self->_over20MinScreentimeSameWeekdayProbabilityFeatureScaleMean) / self->_over20MinScreentimeSameWeekdayProbabilityFeatureScaleStd];
  v315[18] = v268;
  v314[19] = @"over20MinScreentimeCountMidLookback";
  v279 = [MLFeatureValue featureValueWithDouble:(v278 - self->_over20MinScreentimeCountMidLookbackFeatureScaleMean) / self->_over20MinScreentimeCountMidLookbackFeatureScaleStd];
  v315[19] = v279;
  v314[20] = @"callCount";
  v245 = [MLFeatureValue featureValueWithDouble:(v244 - self->_callCountFeatureScaleMean) / self->_callCountFeatureScaleStd];
  v315[20] = v245;
  v314[21] = @"musicCount";
  v242 = [MLFeatureValue featureValueWithDouble:(v241 - self->_musicCountFeatureScaleMean) / self->_musicCountFeatureScaleStd];
  v315[21] = v242;
  v314[22] = @"musicCountShortLookback";
  v239 = [MLFeatureValue featureValueWithDouble:(v238 - self->_musicCountShortLookbackFeatureScaleMean) / self->_musicCountShortLookbackFeatureScaleStd];
  v315[22] = v239;
  v314[23] = @"atHomeCount";
  v259 = [MLFeatureValue featureValueWithDouble:(v258 - self->_atHomeCountFeatureScaleMean) / self->_atHomeCountFeatureScaleStd];
  v315[23] = v259;
  v314[24] = @"atHomeCountShortLookback";
  v256 = [MLFeatureValue featureValueWithDouble:(v255 - self->_atHomeCountShortLookbackFeatureScaleMean) / self->_atHomeCountShortLookbackFeatureScaleStd];
  v315[24] = v256;
  v314[25] = @"atWorkCount";
  v253 = [MLFeatureValue featureValueWithDouble:(v252 - self->_atWorkCountFeatureScaleMean) / self->_atWorkCountFeatureScaleStd];
  v315[25] = v253;
  v314[26] = @"atWorkSameWeekdayProbability";
  v250 = [MLFeatureValue featureValueWithDouble:(v249 - self->_atWorkSameWeekdayProbabilityFeatureScaleMean) / self->_atWorkSameWeekdayProbabilityFeatureScaleStd];
  v315[26] = v250;
  v314[27] = @"atWorkCountShortLookback";
  v143 = [MLFeatureValue featureValueWithDouble:(v247 - self->_atWorkCountShortLookbackFeatureScaleMean) / self->_atWorkCountShortLookbackFeatureScaleStd];
  v315[27] = v143;
  v314[28] = @"weekdayPrevScreentimeCount";
  v144 = [MLFeatureValue featureValueWithDouble:(v29 - self->_weekdayPrevScreentimeCountFeatureScaleMean) / self->_weekdayPrevScreentimeCountFeatureScaleStd];
  v315[28] = v144;
  v314[29] = @"firstScreentimeOfDay";
  v145 = [MLFeatureValue featureValueWithDouble:(v269 - self->_firstScreentimeOfDayFeatureScaleMean) / self->_firstScreentimeOfDayFeatureScaleStd];
  v315[29] = v145;
  v314[30] = @"lastScreentimeOfDay";
  v146 = [MLFeatureValue featureValueWithDouble:(v271 - self->_lastScreentimeOfDayFeatureScaleMean) / self->_lastScreentimeOfDayFeatureScaleStd];
  v315[30] = v146;
  v314[31] = @"isAfternoon";
  v147 = [MLFeatureValue featureValueWithDouble:(v288 - self->_isAfternoonFeatureScaleMean) / self->_isAfternoonFeatureScaleStd];
  v315[31] = v147;
  v314[32] = @"isEvening";
  v148 = [MLFeatureValue featureValueWithDouble:(v289 - self->_isEveningFeatureScaleMean) / self->_isEveningFeatureScaleStd];
  v315[32] = v148;
  v314[33] = @"isMorning";
  v149 = [MLFeatureValue featureValueWithDouble:(v290 - self->_isMorningFeatureScaleMean) / self->_isMorningFeatureScaleStd];
  v315[33] = v149;
  v314[34] = @"isNight";
  v150 = [MLFeatureValue featureValueWithDouble:(v291 - self->_isNightFeatureScaleMean) / self->_isNightFeatureScaleStd];
  v315[34] = v150;
  v151 = [NSDictionary dictionaryWithObjects:v315 forKeys:v314 count:35];

  return v151;
}

+ (double)getWeekday:(id)a3
{
  v3 = a3;
  v4 = +[NSCalendar currentCalendar];
  v5 = [v4 components:512 fromDate:v3];

  v6 = (([v5 weekday] + 5) % 7);
  return v6;
}

- (id)getEngagementTimeArray:(id)a3 withKey:(id)a4 checkWriting:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v22 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v23 + 1) + 8 * i) objectForKeyedSubscript:v8];
        v15 = v14;
        if (v14)
        {
          v16 = [v14 objectForKeyedSubscript:@"timestamp"];

          if (v16)
          {
            if (!v5 || ([v15 objectForKeyedSubscript:@"totalCharacters"], v17 = objc_claimAutoreleasedReturnValue(), v17, v17))
            {
              v18 = [v15 objectForKeyedSubscript:@"timestamp"];
              [v18 doubleValue];
              v19 = [NSDate dateWithTimeIntervalSince1970:?];
              [v22 addObject:v19];
            }
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  v20 = [v22 copy];

  return v20;
}

- (id)getHourlyOccurrenceCounts:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v5 = objc_alloc_init(NSDateFormatter);
  [v5 setDateFormat:@"yyyy-MM-dd HH:00"];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [v5 stringFromDate:{*(*(&v17 + 1) + 8 * i), v17}];
        v12 = [v4 objectForKeyedSubscript:v11];

        if (v12)
        {
          v13 = [v4 objectForKeyedSubscript:v11];
          v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v13 integerValue] + 1);
          [v4 setObject:v14 forKeyedSubscript:v11];
        }

        else
        {
          [v4 setObject:&off_10036B290 forKeyedSubscript:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = [v4 copy];

  return v15;
}

- (id)filterHourlyOccurrenceCounts:(id)a3 withThreshold:(int64_t)a4
{
  v5 = a3;
  v6 = +[NSMutableDictionary dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:{v12, v16}];
        if ([v13 integerValue] >= a4)
        {
          [v6 setObject:v13 forKeyedSubscript:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = [v6 copy];

  return v14;
}

- (id)mergeHourlyOccurrenceCounts:(id)a3 withDict:(id)a4
{
  v5 = a4;
  v6 = [a3 mutableCopy];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:{v12, v19}];
        v14 = [v6 objectForKeyedSubscript:v12];
        v15 = v14;
        if (v14)
        {
          v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v14 integerValue] + objc_msgSend(v13, "integerValue"));
          [v6 setObject:v16 forKeyedSubscript:v12];
        }

        else
        {
          [v6 setObject:v13 forKeyedSubscript:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v17 = [v6 copy];

  return v17;
}

- (id)reformatHourlyOccurrenceCounts:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSDateFormatter);
  [v4 setDateFormat:@"yyyy-MM-dd HH:00"];
  v5 = +[NSMutableArray array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v17 = v3;
  obj = [v3 allKeys];
  v6 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = +[NSCalendar currentCalendar];
        v12 = [v4 dateFromString:v10];
        v13 = [v11 dateByAddingUnit:32 value:1 toDate:v12 options:0];
        v23[0] = @"startDate";
        v23[1] = @"endDate";
        v24[0] = v12;
        v24[1] = v13;
        v14 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
        [v5 addObject:v14];
      }

      v7 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v7);
  }

  v15 = [v5 copy];

  return v15;
}

- (id)getCallStartDates:(id)a3
{
  v3 = a3;
  v4 = [[NSSet alloc] initWithObjects:{&off_10036B230, &off_10036B2A8, &off_10036B2C0, &off_10036B2D8, &off_10036B2F0, &off_10036B308, &off_10036B320, 0}];
  v29 = +[NSMutableArray array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v3;
  v27 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v27)
  {
    v26 = *v35;
    do
    {
      v5 = 0;
      do
      {
        if (*v35 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v5;
        v6 = [*(*(&v34 + 1) + 8 * v5) significantContactEvent];
        v7 = [v6 interactions];
        v8 = [NSSortDescriptor sortDescriptorWithKey:@"startDate" ascending:1];
        v41 = v8;
        v9 = [NSArray arrayWithObjects:&v41 count:1];
        v10 = [v7 sortedArrayUsingDescriptors:v9];

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v30 objects:v40 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v31;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v31 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v30 + 1) + 8 * i);
              v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v16 mechanism]);
              if ([v4 containsObject:v17])
              {
                v18 = [v16 startDate];
                if (v18)
                {
                  v19 = v18;
                  v20 = [v16 endDate];

                  if (!v20)
                  {
                    continue;
                  }

                  v38[0] = @"startDate";
                  v17 = [v16 startDate];
                  v38[1] = @"endDate";
                  v39[0] = v17;
                  v21 = [v16 endDate];
                  v39[1] = v21;
                  v22 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];
                  [v29 addObject:v22];
                }
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v30 objects:v40 count:16];
          }

          while (v13);
        }

        v5 = v28 + 1;
      }

      while ((v28 + 1) != v27);
      v27 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v27);
  }

  v23 = [v29 copy];

  return v23;
}

- (id)getMediaPlaySessionStartDates:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v3;
  v27 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v27)
  {
    v26 = *v34;
    do
    {
      v5 = 0;
      do
      {
        if (*v34 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v5;
        v6 = [*(*(&v33 + 1) + 8 * v5) mediaEvent];
        v7 = [v6 mediaPlaySessions];
        v8 = [NSSortDescriptor sortDescriptorWithKey:@"startDate" ascending:1];
        v40 = v8;
        v9 = [NSArray arrayWithObjects:&v40 count:1];
        v10 = [v7 sortedArrayUsingDescriptors:v9];

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v29 objects:v39 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v30;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v30 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v29 + 1) + 8 * i);
              v17 = [v16 startDate];
              if (v17)
              {
                v18 = v17;
                v19 = [v16 endDate];

                if (v19)
                {
                  v37[0] = @"startDate";
                  v20 = [v16 startDate];
                  v37[1] = @"endDate";
                  v38[0] = v20;
                  v21 = [v16 endDate];
                  v38[1] = v21;
                  v22 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:2];
                  [v4 addObject:v22];
                }
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v29 objects:v39 count:16];
          }

          while (v13);
        }

        v5 = v28 + 1;
      }

      while ((v28 + 1) != v27);
      v27 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v27);
  }

  v23 = [v4 copy];

  return v23;
}

- (id)findOverlappingEngagament:(id)a3 forEvents:(id)a4
{
  v25 = a3;
  v5 = a4;
  v6 = +[NSMutableArray array];
  v21 = [NSPredicate predicateWithFormat:@"category == %d", 1];
  v22 = v5;
  [v5 filteredArrayUsingPredicate:?];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v35 = 0u;
  v26 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v26)
  {
    v24 = *v33;
    do
    {
      v7 = 0;
      do
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v7;
        v8 = *(*(&v32 + 1) + 8 * v7);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v9 = v25;
        v10 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v29;
          do
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v29 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v28 + 1) + 8 * i);
              v15 = [v8 startDate];
              if ([v14 isOnOrAfter:v15])
              {
                v16 = [v8 endDate];
                if ([v14 isOnOrBefore:v16])
                {
                  v17 = [v8 routineEvent];
                  v18 = [v17 poiCategory];

                  if (!v18)
                  {
                    continue;
                  }

                  v15 = [v8 routineEvent];
                  v16 = [v15 poiCategory];
                  [v6 addObject:v16];
                }
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v11);
        }

        v7 = v27 + 1;
      }

      while ((v27 + 1) != v26);
      v26 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v26);
  }

  v19 = [v6 copy];

  return v19;
}

- (void)saveEligiblePOICategories:(id)a3
{
  v4 = a3;
  v5 = [(MOAvailabilityPredictionManager *)self categoryStore];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __61__MOAvailabilityPredictionManager_saveEligiblePOICategories___block_invoke;
  v7[3] = &unk_10033DCD0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 removeExistingPOICategoriesWithCompletionHandler:v7];
}

void __61__MOAvailabilityPredictionManager_saveEligiblePOICategories___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __61__MOAvailabilityPredictionManager_saveEligiblePOICategories___block_invoke_cold_1(v3);
    }
  }

  else
  {
    v5 = [*(a1 + 32) categoryStore];
    [v5 storeEligiblePOICategories:*(a1 + 40) completionHandler:&__block_literal_global_43];
  }
}

void __61__MOAvailabilityPredictionManager_saveEligiblePOICategories___block_invoke_2149(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __61__MOAvailabilityPredictionManager_saveEligiblePOICategories___block_invoke_2149_cold_1(v2);
    }
  }
}

- (id)filterScreentimeEvents:(id)a3
{
  v4 = a3;
  v15 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 valueForKeyPath:@"screenTimeEvent.appCategoryUsages"];
        v11 = [NSPredicate predicateWithFormat:@"%K IN %@", @"appCategory", self->_allowedScreentimeCategories];
        v12 = [v10 filteredArrayUsingPredicate:v11];
        if ([v12 count])
        {
          [v15 addObject:v9];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return v15;
}

- (double)countOccurenceOfEvents:(id)a3 forWindow:(id)a4 windowSize:(int)a5 checkTime:(BOOL)a6 checkWeekday:(BOOL)a7 addBuffer:(BOOL)a8 checkOverlapPercentage:(BOOL)a9 forFeature:(id)a10
{
  v59 = a8;
  v60 = a6;
  v10 = a7;
  v13 = a3;
  v14 = a4;
  v53 = a10;
  v15 = +[NSCalendar currentCalendar];
  v16 = +[NSMutableArray array];
  v17 = objc_alloc_init(NSDateFormatter);
  [v17 setDateFormat:@"yyyy-MM-dd"];
  v18 = [v15 component:512 fromDate:v14];
  v19 = [v15 component:32 fromDate:v14];
  v54 = v14;
  v20 = [v15 component:64 fromDate:v14];
  v21 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [MOAvailabilityPredictionManager countOccurenceOfEvents:forWindow:windowSize:checkTime:checkWeekday:addBuffer:checkOverlapPercentage:forFeature:];
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v13;
  v57 = [obj countByEnumeratingWithState:&v62 objects:v80 count:16];
  if (!v57)
  {
    v50 = 0.0;
    goto LABEL_55;
  }

  v61 = 0;
  v23 = v20 / 60.0 + v19;
  v24 = (a5 / 3600) + v23;
  v56 = *v63;
  *&v22 = 138413826;
  v52 = v22;
  do
  {
    v25 = 0;
    do
    {
      if (*v63 != v56)
      {
        objc_enumerationMutation(obj);
      }

      v58 = v25;
      v26 = *(*(&v62 + 1) + 8 * v25);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = v26;
        v28 = [v27 objectForKeyedSubscript:@"startDate"];
        v29 = [v27 objectForKeyedSubscript:@"endDate"];
LABEL_13:
        v31 = v29;

        goto LABEL_14;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v30 = v26;
        v28 = [v30 startDate];
        v29 = [v30 endDate];
        goto LABEL_13;
      }

      v31 = 0;
      v28 = 0;
LABEL_14:
      v32 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        *buf = v52;
        v67 = v53;
        v68 = 2112;
        v69 = v28;
        v70 = 2112;
        v71 = v31;
        v72 = 2112;
        v73 = v54;
        v74 = 1024;
        v75 = v60;
        v76 = 1024;
        v77 = v10;
        v78 = 1024;
        v79 = v59;
        _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "[APM] %@: looking at event with startDate %@ endDate %@ for window %@; checkHour %d, checkWeekday %d, addBuffer %d", buf, 0x3Cu);
      }

      v33 = v28;
      if ([v33 isOnOrBefore:v31])
      {
        v34 = v33;
        while (1)
        {
          v35 = [v15 component:512 fromDate:{v34, v52}];
          v36 = [v17 stringFromDate:v34];
          if (v10 && v35 == v18 && ![v16 containsObject:v36] || !v10 && (objc_msgSend(v16, "containsObject:", v36) & 1) == 0)
          {
            if (!v60)
            {
              [v16 addObject:v36];
              v44 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
              {
                *buf = v52;
                v67 = v53;
                v68 = 2112;
                v69 = v33;
                v70 = 2112;
                v71 = v31;
                v72 = 2112;
                v73 = v54;
                v74 = 1024;
                v75 = 0;
                v76 = 1024;
                v77 = v10;
                v78 = 1024;
                v79 = v59;
                v45 = v44;
                v46 = "[APM] %@: found day overlap with event with startDate %@ endDate %@ for window %@; checkHour %d, checkWeekday %d, addBuffer %d";
LABEL_47:
                _os_log_debug_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, v46, buf, 0x3Cu);
              }

LABEL_39:
              ++v61;

              goto LABEL_40;
            }

            v37 = 0.0;
            if ([v34 isOnOrBefore:v33])
            {
              v38 = [v15 component:32 fromDate:v33];
              v37 = [v15 component:64 fromDate:v33] / 60.0 + v38;
            }

            v39 = [v15 isDate:v34 inSameDayAsDate:v31];
            LODWORD(v40) = 1103049523;
            if (v39)
            {
              v41 = [v15 component:32 fromDate:{v31, v40}];
              *&v40 = [v15 component:64 fromDate:v31] / 60.0 + v41;
            }

            if (v59)
            {
              v42 = v37 + -1.0;
              if (v42 < 0.0)
              {
                v42 = 0.0;
              }

              v37 = v42;
              *&v40 = fmin(*&v40 + 1.0, 23.9);
            }

            if (*&v40 <= v23 || v37 >= v24)
            {
              goto LABEL_40;
            }

            if (!a9)
            {
              [v16 addObject:v36];
              v44 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
              {
                *buf = v52;
                v67 = v53;
                v68 = 2112;
                v69 = v33;
                v70 = 2112;
                v71 = v31;
                v72 = 2112;
                v73 = v54;
                v74 = 1024;
                v75 = 1;
                v76 = 1024;
                v77 = v10;
                v78 = 1024;
                v79 = v59;
                v45 = v44;
                v46 = "[APM] %@: found time overlap with event with startDate %@ endDate %@ for window %@; checkHour %d, checkWeekday %d, addBuffer %d";
                goto LABEL_47;
              }

              goto LABEL_39;
            }

            [MOAvailabilityPredictionManager calculateOverlapPercentageForPredictionWindowStartHour:v23 predictionWindowEndHour:v24 eventStartHour:v37 eventEndHour:*&v40];
            if (v43 > 50.0)
            {
              [v16 addObject:v36];
              v44 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
              {
                *buf = v52;
                v67 = v53;
                v68 = 2112;
                v69 = v33;
                v70 = 2112;
                v71 = v31;
                v72 = 2112;
                v73 = v54;
                v74 = 1024;
                v75 = 1;
                v76 = 1024;
                v77 = v10;
                v78 = 1024;
                v79 = v59;
                v45 = v44;
                v46 = "[APM] %@: found significant time overlap (above 50%% threshold) with event with startDate %@ endDate %@ for window %@; checkHour %d, checkWeekday %d, addBuffer %d";
                goto LABEL_47;
              }

              goto LABEL_39;
            }
          }

LABEL_40:
          v47 = [v15 dateByAddingUnit:16 value:1 toDate:v34 options:0];

          if ([v15 isDate:v47 inSameDayAsDate:v31])
          {
            v48 = v31;

            v47 = v48;
          }

          v34 = v47;
          if (([v47 isOnOrBefore:v31] & 1) == 0)
          {
            goto LABEL_49;
          }
        }
      }

      v47 = v33;
LABEL_49:

      v25 = v58 + 1;
    }

    while ((v58 + 1) != v57);
    v49 = [obj countByEnumeratingWithState:&v62 objects:v80 count:16];
    v57 = v49;
  }

  while (v49);
  v50 = v61;
LABEL_55:

  return v50;
}

+ (double)calculateOverlapPercentageForPredictionWindowStartHour:(double)a3 predictionWindowEndHour:(double)a4 eventStartHour:(double)a5 eventEndHour:(double)a6
{
  if (a5 < a3)
  {
    a5 = a3;
  }

  if (a6 >= a4)
  {
    a6 = a4;
  }

  if (a6 <= a5)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = a6 - a5;
  }

  v7 = v6 / (a4 - a3) * 100.0;
  if (v7 > 100.0)
  {
    v7 = 100.0;
  }

  return fmax(v7, 0.0);
}

- (id)checkNonzeroMedianScreentimeUsagePerHour:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v35;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v34 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:@"hour"];
        v11 = [v9 objectForKeyedSubscript:@"duration"];
        v12 = [v4 objectForKeyedSubscript:v10];
        if (!v12)
        {
          v12 = +[NSMutableArray array];
          [v4 setObject:v12 forKeyedSubscript:v10];
        }

        [v12 addObject:v11];
      }

      v6 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
    }

    while (v6);
  }

  v29 = +[NSMutableArray array];
  v13 = +[NSMutableString string];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v14 = v4;
  v15 = [v14 countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v31;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v30 + 1) + 8 * j);
        v20 = [v14 objectForKeyedSubscript:v19];
        v21 = [v20 count];
        v38[0] = @"hour";
        v38[1] = @"nonzeroMedianCheck";
        v39[0] = v19;
        if (v21 <= 0xE)
        {
          v22 = @"NO";
        }

        else
        {
          v22 = @"YES";
        }

        v23 = [NSNumber numberWithBool:v21 > 0xE];
        v39[1] = v23;
        v24 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];

        [v13 appendFormat:@" hour %@: %@", v19, v22];
        [v29 addObject:v24];
      }

      v16 = [v14 countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v16);
  }

  v25 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    [MOAvailabilityPredictionManager checkNonzeroMedianScreentimeUsagePerHour:];
  }

  v26 = [v29 copy];

  return v26;
}

- (id)copyAndTrim:(id)a3 toWindowStartDate:(id)a4 returnAsMOEvent:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v7;
  v42 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v42)
  {
    v10 = *v44;
    v40 = v8;
    v39 = v5;
    v38 = *v44;
    do
    {
      v11 = 0;
      do
      {
        if (*v44 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v43 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
          v14 = [v13 objectForKeyedSubscript:@"startDate"];
          v15 = [v13 objectForKeyedSubscript:@"endDate"];
LABEL_11:
          v17 = v15;

          goto LABEL_12;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v16 = v12;
          v14 = [v16 startDate];
          v15 = [v16 endDate];
          goto LABEL_11;
        }

        v17 = 0;
        v14 = 0;
LABEL_12:
        if ([v14 isBeforeDate:v8] && (v18 = objc_msgSend(v17, "isAfterDate:", v8), v19 = v8, (v18 & 1) != 0) || (v20 = objc_msgSend(v14, "isBeforeDate:", v8), v19 = v14, !v20) || (v21 = objc_msgSend(v17, "isBeforeDate:", v8), v19 = v14, (v21 & 1) == 0))
        {
          v22 = v19;
          v23 = v22;
          if (v5)
          {
            v24 = v12;
            v25 = [MOEvent alloc];
            v26 = +[NSUUID UUID];
            v27 = [v24 creationDate];
            v28 = v9;
            v29 = [v24 provider];
            v30 = [v24 category];
            v31 = v29;
            v9 = v28;
            v32 = [(MOEvent *)v25 initWithEventIdentifier:v26 startDate:v23 endDate:v17 creationDate:v27 provider:v31 category:v30];

            v10 = v38;
            v33 = [v24 expirationDate];
            [(MOEvent *)v32 setExpirationDate:v33];

            v34 = [v24 screenTimeEvent];

            [(MOEvent *)v32 setScreenTimeEvent:v34];
            v5 = v39;
            v8 = v40;
          }

          else
          {
            v47[0] = @"startDate";
            v47[1] = @"endDate";
            v48[0] = v22;
            v48[1] = v17;
            v32 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:2];
          }

          [v9 addObject:v32];
        }

        v11 = v11 + 1;
      }

      while (v42 != v11);
      v35 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
      v42 = v35;
    }

    while (v35);
  }

  v36 = [v9 copy];
  return v36;
}

- (id)runMLmodelWithFeatures:(id)a3 andModel:(id)a4
{
  v5 = a4;
  v6 = a3;
  v21 = 0;
  v7 = [[MLDictionaryFeatureProvider alloc] initWithDictionary:v6 error:&v21];

  v8 = v21;
  if (v8)
  {
    v9 = v8;
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MOAvailabilityPredictionManager runMLmodelWithFeatures:v9 andModel:?];
    }

    goto LABEL_16;
  }

  v20 = 0;
  v10 = [v5 predictionFromFeatures:v7 error:&v20];
  v9 = v20;
  if (v9)
  {
    v11 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MOAvailabilityPredictionManager runMLmodelWithFeatures:v9 andModel:?];
    }

LABEL_15:

LABEL_16:
    v15 = 0;
    goto LABEL_17;
  }

  v12 = [v10 featureValueForName:@"classProbability"];
  v11 = v12;
  if (!v12 || ([v12 dictionaryValue], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    v18 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [MOAvailabilityPredictionManager runMLmodelWithFeatures:v18 andModel:?];
    }

    goto LABEL_15;
  }

  v14 = [v11 dictionaryValue];
  v15 = [v14 objectForKeyedSubscript:&off_10036B290];
  v16 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    [v15 doubleValue];
    *buf = 134217984;
    v23 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[APM] Predicted availability probability: %f", buf, 0xCu);
  }

LABEL_17:

  return v15;
}

- (id)findOptimalDateWithPrediction:(id)a3 withPredictionProbabilityThreshold:(double)a4
{
  v6 = a3;
  v7 = [NSString stringWithFormat:@"@max.%@", @"availabilityProbability"];
  v30 = [v6 valueForKeyPath:v7];
  v8 = [NSPredicate predicateWithFormat:@"%K == %@", @"availabilityProbability", v30];
  v9 = [v6 filteredArrayUsingPredicate:v8];
  if ([v9 count])
  {
    v10 = [(MOAvailabilityPredictionManager *)self defaultsManager];
    v11 = [v9 firstObject];
    v12 = [v11 objectForKeyedSubscript:@"availabilityProbability"];
    [v10 setObject:v12 forKey:@"AvailabilityPredictionMaxProbability"];

    v13 = [(MOAvailabilityPredictionManager *)self defaultsManager];
    v14 = [v9 firstObject];
    v15 = [v14 objectForKeyedSubscript:@"predictionDate"];
    [v13 setObject:v15 forKey:@"AvailabilityPredictionMaxProbabilityStartDate"];
  }

  v16 = [NSPredicate predicateWithFormat:@"%K > %f", @"availabilityProbability", *&a4];
  v17 = [v6 filteredArrayUsingPredicate:v16];
  if ([v17 count])
  {
    v29 = v7;
    v18 = [(MOAvailabilityPredictionManager *)self selectBestWindowFromCandidates:v17];
    v19 = v18;
    if (v18)
    {
      v20 = [v18 objectForKeyedSubscript:@"predictionDate"];
      v21 = [(MOAvailabilityPredictionManager *)self findConsecutiveAvailabilityEndDateFrom:v20 inPredictionArray:v6 withThreshold:a4];
      v22 = [v19 mutableCopy];
      [v22 setObject:v21 forKeyedSubscript:@"consecutiveEndDate"];
      [v21 timeIntervalSinceDate:v20];
      v24 = v23;
      availabilityPredictionWindowSize = self->_availabilityPredictionWindowSize;
      v26 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v32 = v20;
        v33 = 2112;
        v34 = v21;
        v35 = 2048;
        v36 = (v24 / availabilityPredictionWindowSize);
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "[APM] Optimal availability range: %@ to %@ (%ld consecutive hours above threshold)", buf, 0x20u);
      }

      v27 = [v22 copy];
    }

    else
    {
      v20 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[APM] Optimal availability not found", buf, 2u);
      }

      v27 = 0;
    }

    v7 = v29;
  }

  else
  {
    v19 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[APM] Optimal availability not found due to probability threshold condition", buf, 2u);
    }

    v27 = 0;
  }

  return v27;
}

- (id)selectBestWindowFromCandidates:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    if ([v4 count] == 1)
    {
      v5 = [v4 firstObject];
    }

    else
    {
      v6 = [NSPredicate predicateWithFormat:@"%K > %f", @"locationFilterProbability", *&self->_availabilityPredictionLocationThreshold];
      v7 = [v4 filteredArrayUsingPredicate:v6];
      v8 = [NSPredicate predicateWithFormat:@"%K >= %f", @"screentimeFilterProbability", *&self->_availabilityPredictionScreentimeThreshold];
      v9 = [v4 filteredArrayUsingPredicate:v8];
      v10 = [NSPredicate predicateWithFormat:@"%K > %f AND %K > %f", @"locationFilterProbability", *&self->_availabilityPredictionLocationThreshold, @"screentimeFilterProbability", *&self->_availabilityPredictionScreentimeThreshold];
      v11 = [v4 filteredArrayUsingPredicate:v10];
      v12 = [v11 count];
      v13 = v11;
      if (!v12)
      {
        v14 = [v7 count];
        v13 = v7;
        if (!v14)
        {
          if ([v9 count])
          {
            v13 = v9;
          }

          else
          {
            v13 = v4;
          }
        }
      }

      v5 = [(MOAvailabilityPredictionManager *)self selectWindowWithHighestProbabilityFrom:v13];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)selectWindowWithHighestProbabilityFrom:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [NSString stringWithFormat:@"@max.%@", @"availabilityProbability"];
    v5 = [v3 valueForKeyPath:v4];
    v6 = [NSPredicate predicateWithFormat:@"%K == %@", @"availabilityProbability", v5];
    v7 = [v3 filteredArrayUsingPredicate:v6];
    v8 = [v7 firstObject];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)findConsecutiveAvailabilityEndDateFrom:(id)a3 inPredictionArray:(id)a4 withThreshold:(double)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 dateByAddingTimeInterval:self->_availabilityPredictionWindowSize];
  v25 = v8;
  v11 = [v8 dateByAddingTimeInterval:self->_availabilityPredictionWindowSize];
  if ([(MOAvailabilityPredictionManager *)self availabilityPredictionRetryHourCount]>= 2)
  {
    v12 = 1;
    while (1)
    {
      v13 = [NSPredicate predicateWithFormat:@"%K == %@", @"predictionDate", v11];
      v14 = [v9 filteredArrayUsingPredicate:v13];
      if (![v14 count])
      {
        break;
      }

      v15 = [v14 firstObject];
      v16 = [v15 objectForKeyedSubscript:@"availabilityProbability"];
      [v16 doubleValue];
      if (v17 <= a5)
      {
        v22 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [v16 doubleValue];
          *buf = 138413058;
          v27 = v11;
          v28 = 2048;
          v29 = v24;
          v30 = 2048;
          v31 = a5;
          v32 = 2112;
          v33 = v10;
          _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "[APM] Hour %@ breaks streak with probability %.3f (below threshold %.3f), stopping at end date %@", buf, 0x2Au);
        }

        goto LABEL_14;
      }

      v18 = [v11 dateByAddingTimeInterval:self->_availabilityPredictionWindowSize];

      v19 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [v16 doubleValue];
        *buf = 138412802;
        v27 = v11;
        v28 = 2048;
        v29 = v21;
        v30 = 2112;
        v31 = *&v18;
        _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "[APM] Hour %@ also passes threshold with probability %.3f, extending end date to %@", buf, 0x20u);
      }

      v20 = [v11 dateByAddingTimeInterval:self->_availabilityPredictionWindowSize];

      ++v12;
      v10 = v18;
      v11 = v20;
      if (v12 >= [(MOAvailabilityPredictionManager *)self availabilityPredictionRetryHourCount])
      {
        goto LABEL_16;
      }
    }

    v15 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [MOAvailabilityPredictionManager findConsecutiveAvailabilityEndDateFrom:inPredictionArray:withThreshold:];
    }

LABEL_14:
  }

  v20 = v11;
  v18 = v10;
LABEL_16:

  return v18;
}

- (void)_predictUserAvailabilityWithEvents:(void *)a1 andBundles:andSuggestionEngagementEvents:andAppEntryEngagementEvents:handler:.cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_13(&_mh_execute_header, v2, v3, "[APM] Error loading the ML model: %@", v4, v5, v6, v7, v8);
}

void __61__MOAvailabilityPredictionManager_saveEligiblePOICategories___block_invoke_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_13(&_mh_execute_header, v2, v3, "Remove existing categories hit error: %@", v4, v5, v6, v7, v8);
}

void __61__MOAvailabilityPredictionManager_saveEligiblePOICategories___block_invoke_2149_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_13(&_mh_execute_header, v2, v3, "Store categories hit error: %@", v4, v5, v6, v7, v8);
}

- (void)runMLmodelWithFeatures:(void *)a1 andModel:.cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_13(&_mh_execute_header, v2, v3, "[APM] Error creating input features: %@", v4, v5, v6, v7, v8);
}

- (void)runMLmodelWithFeatures:(void *)a1 andModel:.cold.2(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_13(&_mh_execute_header, v2, v3, "[APM] Error during prediction: %@", v4, v5, v6, v7, v8);
}

@end