@interface MOSummarizationParameters
- (MOSummarizationParameters)initWithConfigurationManager:(id)manager;
@end

@implementation MOSummarizationParameters

- (MOSummarizationParameters)initWithConfigurationManager:(id)manager
{
  managerCopy = manager;
  if (managerCopy)
  {
    v65.receiver = self;
    v65.super_class = MOSummarizationParameters;
    v7 = [(MOSummarizationParameters *)&v65 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_configurationManager, manager);
      [(MOConfigurationManagerBase *)v8->_configurationManager getDoubleSettingForKey:@"Summarization_DominantBundleOverlappingThreshold" withFallback:0.7];
      *&v9 = v9;
      v8->_dominantBundle_overlappingThreshold = *&v9;
      [(MOConfigurationManagerBase *)v8->_configurationManager getDoubleSettingForKey:@"Summarization_DominantBundleMainActionSelectionThreshold" withFallback:0.6];
      *&v10 = v10;
      v8->_dominantBundle_mainActionSelectionThreshold = *&v10;
      [(MOConfigurationManagerBase *)v8->_configurationManager getDoubleSettingForKey:@"Summarization_DominantBundleMediaPlaySessionDominantFactorThreshold" withFallback:0.8];
      *&v11 = v11;
      v8->_dominantBundle_mediaPlaySessionDominantFactorThreshold = *&v11;
      [(MOConfigurationManagerBase *)v8->_configurationManager getDoubleSettingForKey:@"Summarization_DominantBundleMediaPlaySessionsOverlapsMinimumDistance" withFallback:0.5];
      *&v12 = v12;
      v8->_dominantBundle_mediaPlaySessionsOverlapsMinimumDistance = *&v12;
      [(MOConfigurationManagerBase *)v8->_configurationManager getDoubleSettingForKey:@"Media_FirstPartyAppOverThirdPartyPlayTimePercentageThreshold" withFallback:0.05];
      *&v13 = v13;
      v8->_mediaBundleFirstPartyPlayTimePercentageThreshold = *&v13;
      [(MOConfigurationManagerBase *)v8->_configurationManager getDoubleSettingForKey:@"Summarization_MediaBundleMinimumTotalPlayTimeThreshold" withFallback:60.0];
      *&v14 = v14;
      v8->_mediaBundleMinimumTotalPlayTimeThreshold = *&v14;
      [(MOConfigurationManagerBase *)v8->_configurationManager getDoubleSettingForKey:@"Summarization_DominantBundleSuppressMediaBundleComparedWithActivityBundleThreshold" withFallback:0.8];
      *&v15 = v15;
      v8->_dominantBundle_suppressMediaBundleComparedWithActivityBundleThreshold = *&v15;
      [(MOConfigurationManagerBase *)v8->_configurationManager getDoubleSettingForKey:@"Summarization_DominantBundleSuppressMediaBundleComparedWithHomeBundleThreshold" withFallback:0.8];
      *&v16 = v16;
      v8->_dominantBundle_suppressMediaBundleComparedWithHomeBundleThreshold = *&v16;
      [(MOConfigurationManagerBase *)v8->_configurationManager getDoubleSettingForKey:@"Summarization_FineGranularityOutingBundlesAggregationDistanceThreshold" withFallback:1000.0];
      *&v17 = v17;
      v8->_fineGranularity_outingBundlesAggregationDistanceThreshold = *&v17;
      [(MOConfigurationManagerBase *)v8->_configurationManager getDoubleSettingForKey:@"Summarization_FineGranularityOutingBundlesAggregationTimeIntervalThreshold" withFallback:900.0];
      *&v18 = v18;
      v8->_fineGranularity_outingBundlesAggregationTimeIntervalThreshold = *&v18;
      [(MOConfigurationManagerBase *)v8->_configurationManager getDoubleSettingForKey:@"Summarization_FineGranularityOutingBundlesAggregationDistanceToClusterThreshold" withFallback:1500.0];
      *&v19 = v19;
      v8->_fineGranularity_outingBundlesAggregationDistanceToClusterThreshold = *&v19;
      [(MOConfigurationManagerBase *)v8->_configurationManager getDoubleSettingForKey:@"Summarization_FineGranularityActivityBundlesAggregationTimeIntervalThreshold" withFallback:600.0];
      *&v20 = v20;
      v8->_fineGranularity_activityBundlesAggregationTimeIntervalThreshold = *&v20;
      [(MOConfigurationManagerBase *)v8->_configurationManager getDoubleSettingForKey:@"Summarization_FineGranularityActivityBundlesDropForDurationThreshold" withFallback:0.8];
      *&v21 = v21;
      v8->_fineGranularity_activityBundlesDropForDurationThreshold = *&v21;
      [(MOConfigurationManagerBase *)v8->_configurationManager getDoubleSettingForKey:@"Summarization_CoarseGranularityOutingBundlesAggregationDistanceThreshold" withFallback:5000.0];
      *&v22 = v22;
      v8->_coarseGranularity_outingBundlesAggregationDistanceThreshold = *&v22;
      [(MOConfigurationManagerBase *)v8->_configurationManager getDoubleSettingForKey:@"Summarization_CoarseGranularityOutingBundlesAggregationTimeIntervalThreshold" withFallback:3600.0];
      *&v23 = v23;
      v8->_coarseGranularity_outingBundlesAggregationTimeIntervalThreshold = *&v23;
      [(MOConfigurationManagerBase *)v8->_configurationManager getDoubleSettingForKey:@"Summarization_CoarseGranularityOutingBundlesAggregationDistanceToClusterThreshold" withFallback:8000.0];
      *&v24 = v24;
      v8->_coarseGranularity_outingBundlesAggregationDistanceToClusterThreshold = *&v24;
      [(MOConfigurationManagerBase *)v8->_configurationManager getDoubleSettingForKey:@"Summarization_MegaBundleDurationThresholdForAddingTimePrefix" withFallback:18000.0];
      *&v25 = v25;
      v8->_megaBundleDurationThresholdForAddingTimePrefix = *&v25;
      [(MOConfigurationManagerBase *)v8->_configurationManager getDoubleSettingForKey:@"Summarization_CoarseGranularityContactMegaBundleLookBackDays" withFallback:7.0];
      *&v26 = v26;
      v8->_coarseGranularity_contactMegaBundleLookBackDays = *&v26;
      [(MOConfigurationManagerBase *)v8->_configurationManager getDoubleSettingForKey:@"Summarization_CoarseGranularityContactBundleAggregationCallCountThreshold" withFallback:1.0];
      *&v27 = v27;
      v8->_coarseGranularity_contactBundleAggregationCallCountThreshold = *&v27;
      [(MOConfigurationManagerBase *)v8->_configurationManager getDoubleSettingForKey:@"Summarization_CoarseGranularityContactBundleAggregationCallDurationThreshold" withFallback:300.0];
      *&v28 = v28;
      v8->_coarseGranularity_contactBundleAggregationCallDurationThreshold = *&v28;
      [(MOConfigurationManagerBase *)v8->_configurationManager getDoubleSettingForKey:@"Summarization_CoarseGranularityContactBundleAggregationMessageCountThreshold" withFallback:5.0];
      *&v29 = v29;
      v8->_coarseGranularity_contactBundleAggregationMessageCountThreshold = *&v29;
      [(MOConfigurationManagerBase *)v8->_configurationManager getDoubleSettingForKey:@"Summarization_CoarseGranularityContactBundleAggregationOutGoingMessageCountThreshold" withFallback:3.0];
      *&v30 = v30;
      v8->_coarseGranularity_contactBundleAggregationOutGoingMessageCountThreshold = *&v30;
      [(MOConfigurationManagerBase *)v8->_configurationManager getDoubleSettingForKey:@"Summarization_CoarseGranularityMediaBundleAggregationPodcastPlayTimePercentageThreshold" withFallback:0.7];
      *&v31 = v31;
      v8->_coarseGranularity_mediaBundleAggregationPodcastPlayTimePercentageThreshold = *&v31;
      [(MOConfigurationManagerBase *)v8->_configurationManager getDoubleSettingForKey:@"Summarization_CoarseGranularityMediaBundleAggregationPodcastTotalPlayTimeThreshold" withFallback:600.0];
      *&v32 = v32;
      v8->_coarseGranularity_mediaBundleAggregationPodcastTotalPlayTimeThreshold = *&v32;
      [(MOConfigurationManagerBase *)v8->_configurationManager getDoubleSettingForKey:@"Summarization_MediaBundleMaxResourcesPerBundle" withFallback:26.0];
      v8->_mediaBundleMaxResourcesPerBundle = v33;
      LODWORD(v33) = 1039516303;
      [(MOConfigurationManagerBase *)v8->_configurationManager getFloatSettingForKey:@"Summarization_FineGranularityOutingBundlesExclusionGoodnessScoreThreshold" withFallback:v33];
      v8->_fineGranularity_outingBundlesExclusionGoodnessScoreThreshold = v34;
      LODWORD(v35) = 1036831949;
      [(MOConfigurationManagerBase *)v8->_configurationManager getFloatSettingForKey:@"Summarization_FineGranularityOutingBundlesAggregationGoodnessScoreDeltaThreshold" withFallback:v35];
      v8->_fineGranularity_outingBundlesAggregationGoodnessScoreDeltaThreshold = v36;
      LODWORD(v37) = 1039516303;
      [(MOConfigurationManagerBase *)v8->_configurationManager getFloatSettingForKey:@"Summarization_CoarseGranularityOutingBundlesExclusionGoodnessScoreThreshold" withFallback:v37];
      v8->_coarseGranularity_outingBundlesExclusionGoodnessScoreThreshold = v38;
      LODWORD(v39) = 1036831949;
      [(MOConfigurationManagerBase *)v8->_configurationManager getFloatSettingForKey:@"Summarization_CoarseGranularityOutingBundlesAggregationGoodnessScoreDeltaThreshold" withFallback:v39];
      v8->_coarseGranularity_outingBundlesAggregationGoodnessScoreDeltaThreshold = v40;
      LODWORD(v41) = 1128792064;
      [(MOConfigurationManagerBase *)v8->_configurationManager getFloatSettingForKey:@"Summarization_FineGranularityTransitBundlesDestinationOneWayRouteMinimumDistanceThreshold" withFallback:v41];
      v8->_fineGranularity_transitBundlesDestinationOneWayRouteMinimumDistanceThreshold = v42;
      LODWORD(v43) = 1128792064;
      [(MOConfigurationManagerBase *)v8->_configurationManager getFloatSettingForKey:@"Summarization_FineGranularityTransitBundlesDestinationMaximumDistanceThreshold" withFallback:v43];
      v8->_fineGranularity_transitBundlesDestinationMaximumDistanceThreshold = v44;
      LODWORD(v45) = 1142292480;
      [(MOConfigurationManagerBase *)v8->_configurationManager getFloatSettingForKey:@"Summarization_FineGranularityTransitBundlesDestinationMaximumTimeThresholdPedestrian" withFallback:v45];
      v8->_fineGranularity_transitBundlesDestinationMaximumTimeThresholdPedestrian = v46;
      LODWORD(v47) = 1133903872;
      [(MOConfigurationManagerBase *)v8->_configurationManager getFloatSettingForKey:@"Summarization_FineGranularityTransitBundlesDestinationMaximumTimeThresholdCycle" withFallback:v47];
      v8->_fineGranularity_transitBundlesDestinationMaximumTimeThresholdCycle = v48;
      LODWORD(v49) = 1142292480;
      [(MOConfigurationManagerBase *)v8->_configurationManager getFloatSettingForKey:@"Summarization_FineGranularityTransitBundlesWorkoutMinimumDuration" withFallback:v49];
      v8->_fineGranularity_transitBundlesWorkoutMinimumDuration = v50;
      LODWORD(v51) = 1153138688;
      [(MOConfigurationManagerBase *)v8->_configurationManager getFloatSettingForKey:@"Summarization_MotionActivityWalkBundlesMinimumDurationForNoAssetsOrPlaceLabel" withFallback:v51];
      v8->_motionActivityWalkBundlesMinimumDurationForNoAssetsOrPlaceLabel = v52;
      LODWORD(v53) = 1163984896;
      [(MOConfigurationManagerBase *)v8->_configurationManager getFloatSettingForKey:@"Summarization_MotionActivityWalkBundlesMaximumDurationBetweenWalksAtSamePlace" withFallback:v53];
      v8->_motionActivityWalkBundlesMaximumDurationBetweenWalksAtSamePlace = v54;
      LODWORD(v55) = 1137180672;
      [(MOConfigurationManagerBase *)v8->_configurationManager getFloatSettingForKey:@"Summarization_MotionActivityWalkBundlesMinimumRangeOfLocationForWalkAreaMap" withFallback:v55];
      v8->_motionActivityWalkBundlesMinimumRangeOfLocationForWalkAreaMap = v56;
      LODWORD(v57) = 1041194025;
      [(MOConfigurationManagerBase *)v8->_configurationManager getFloatSettingForKey:@"Summarization_ActivitySummarySuppressionGoodnessScoreThreshold" withFallback:v57];
      v8->_activitySummary_suppressionGoodnessScoreThreshold = v58;
      LODWORD(v59) = 1180762112;
      [(MOConfigurationManagerBase *)v8->_configurationManager getFloatSettingForKey:@"EmotionAttachmentSummaryBundleDurationThreshold" withFallback:v59];
      v8->_emotionAttachmentBundleDurationThreshold = v60;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    v62 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      [MOTimeAtHomeParams initWithConfigurationManager:v62];
    }

    v63 = +[NSAssertionHandler currentHandler];
    [v63 handleFailureInMethod:a2 object:self file:@"MOSummarizationParameters.m" lineNumber:135 description:@"Invalid parameter not satisfying: configurationManager"];

    selfCopy = 0;
  }

  return selfCopy;
}

@end