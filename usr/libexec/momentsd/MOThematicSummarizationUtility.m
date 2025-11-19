@interface MOThematicSummarizationUtility
+ (id)HKWorkoutActivityTypesNotEligibleForThematicSummary;
+ (id)POICategoriesEligibleForThematicSummary;
- (MOThematicSummarizationUtility)initWithUniverse:(id)a3;
- (id)clusteringParamsFor:(unint64_t)a3;
- (id)getClusteringParamsForCommonActivityThematicSummary;
- (id)getClusteringParamsForCommonPlaceThematicSummary;
- (id)getClusteringParamsForHolidayThematicSummary;
- (id)getClusteringParamsForNotablePhotoSubjectThematicSummary;
- (id)getClusteringParamsForSocialThematicSummary;
- (id)getClusteringParamsForStateOfMindThematicSummary;
- (id)inputPredicateFor:(unint64_t)a3;
- (id)thematicSummarizationStringKeyFor:(unint64_t)a3;
- (unint64_t)bundleSubtypeFor:(unint64_t)a3;
@end

@implementation MOThematicSummarizationUtility

- (MOThematicSummarizationUtility)initWithUniverse:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 getService:v6];

  v25.receiver = self;
  v25.super_class = MOThematicSummarizationUtility;
  v8 = [(MOThematicSummarizationUtility *)&v25 init];
  if (v8)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v10 UTF8String];
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create(v11, v12);
    queue = v8->_queue;
    v8->_queue = v13;

    objc_storeStrong(&v8->_configurationManager, v7);
    v15 = objc_opt_new();
    v16 = [(MOThematicSummarizationUtility *)v8 getClusteringParamsForStateOfMindThematicSummary];
    [v15 setObject:v16 forKeyedSubscript:@"thematicSummary_stateOfMind"];

    v17 = [(MOThematicSummarizationUtility *)v8 getClusteringParamsForHolidayThematicSummary];
    [v15 setObject:v17 forKeyedSubscript:@"thematicSummary_holiday"];

    v18 = [(MOThematicSummarizationUtility *)v8 getClusteringParamsForNotablePhotoSubjectThematicSummary];
    [v15 setObject:v18 forKeyedSubscript:@"thematicSummary_notablePhotoSubject"];

    v19 = [(MOThematicSummarizationUtility *)v8 getClusteringParamsForSocialThematicSummary];
    [v15 setObject:v19 forKeyedSubscript:@"thematicSummary_social"];

    v20 = [(MOThematicSummarizationUtility *)v8 getClusteringParamsForCommonActivityThematicSummary];
    [v15 setObject:v20 forKeyedSubscript:@"thematicSummary_commonActivity"];

    v21 = [(MOThematicSummarizationUtility *)v8 getClusteringParamsForCommonPlaceThematicSummary];
    [v15 setObject:v21 forKeyedSubscript:@"thematicSummary_commonPlace"];

    objc_storeStrong(&v8->_clusteringParamsDict, v15);
    v22 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      clusteringParamsDict = v8->_clusteringParamsDict;
      *buf = 138412290;
      v27 = clusteringParamsDict;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Clustering params for all thematic summary types were set. paramsdict=%@", buf, 0xCu);
    }
  }

  return v8;
}

- (id)getClusteringParamsForStateOfMindThematicSummary
{
  v3 = objc_opt_new();
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_activityContext"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_timeContext"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_locationContext"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_socialContext"];
  [v3 setObject:&off_10036E390 forKeyedSubscript:@"embeddingDistWeight_stateOfMindContext"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_extraContext"];
  [v3 setObject:&off_10036E3A0 forKeyedSubscript:@"embeddingDistWeight_stateOfMindValence"];
  [v3 setObject:&off_10036E3B0 forKeyedSubscript:@"embeddingDistWeight_stateOfMindDomains"];
  [v3 setObject:&off_10036E3B0 forKeyedSubscript:@"embeddingDistWeight_stateOfMindLabels"];
  [v3 setObject:&off_10036E3C0 forKeyedSubscript:@"embeddingDistWeight_topLevelActivityType"];
  [v3 setObject:&off_10036E3D0 forKeyedSubscript:@"embeddingDistWeight_secondLevelActivityType"];
  [v3 setObject:&off_10036E3E0 forKeyedSubscript:@"embeddingDistWeight_activityTypeFromPhotoTraits"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_normalizedDuration"];
  [v3 setObject:&off_10036E3C0 forKeyedSubscript:@"embeddingDistWeight_timeOfDay"];
  [v3 setObject:&off_10036E3F0 forKeyedSubscript:@"embeddingDistWeight_dayOfWeek"];
  [v3 setObject:&off_10036E400 forKeyedSubscript:@"embeddingDistWeight_isWeekend"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_holiday"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_celebration"];
  [v3 setObject:&off_10036E3F0 forKeyedSubscript:@"embeddingDistWeight_placeName"];
  [v3 setObject:&off_10036E3C0 forKeyedSubscript:@"embeddingDistWeight_placeType"];
  [v3 setObject:&off_10036E3B0 forKeyedSubscript:@"embeddingDistWeight_geoProximity"];
  [v3 setObject:&off_10036E410 forKeyedSubscript:@"embeddingDistWeight_placeTypeFromPhotoTraits"];
  [v3 setObject:&off_10036E3E0 forKeyedSubscript:@"embeddingDistWeight_contactNames"];
  [v3 setObject:&off_10036E420 forKeyedSubscript:@"embeddingDistWeight_IsWithContact"];
  [v3 setObject:&off_10036E3B0 forKeyedSubscript:@"embeddingDistWeight_isWithFamily"];
  [v3 setObject:&off_10036E410 forKeyedSubscript:@"embeddingDistWeight_isWithCoworker"];
  [v3 setObject:&off_10036E3B0 forKeyedSubscript:@"embeddingDistWeight_isWithFriend"];
  [v3 setObject:&off_10036E3E0 forKeyedSubscript:@"embeddingDistWeight_isWithChild"];
  [v3 setObject:&off_10036E3B0 forKeyedSubscript:@"embeddingDistWeight_isWithMyPet"];
  [v3 setObject:&off_10036E410 forKeyedSubscript:@"embeddingDistWeight_SocialEventFromPhotoTraits "];
  [v3 setObject:&off_10036E390 forKeyedSubscript:@"embeddingDistWeight_otherSubjectFromPhotoTraits"];
  configurationManager = self->_configurationManager;
  if (configurationManager)
  {
    v5 = [(MOConfigurationManagerBase *)configurationManager getIntegerSettingForKey:@"MOClusteringParams_minPoints" withFallback:2];
    v6 = [(MOConfigurationManagerBase *)self->_configurationManager getIntegerSettingForKey:@"MOClusteringParams_minClusterSize" withFallback:2];
    v7 = self->_configurationManager;
  }

  else
  {
    v7 = 0;
    v6 = 2;
    v5 = 2;
  }

  v8 = [MOBundleClusteringManager setEmbeddingWeightsWithConfigurationManager:v3 configurationManager:v7];
  v9 = [[MOClusteringParams alloc] initWithembeddingDistanceWeights:v8 minPoints:v5 minClusterSize:v6];

  return v9;
}

- (id)getClusteringParamsForHolidayThematicSummary
{
  v3 = objc_opt_new();
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_activityContext"];
  [v3 setObject:&off_10036E430 forKeyedSubscript:@"embeddingDistWeight_timeContext"];
  [v3 setObject:&off_10036E3E0 forKeyedSubscript:@"embeddingDistWeight_locationContext"];
  [v3 setObject:&off_10036E3E0 forKeyedSubscript:@"embeddingDistWeight_socialContext"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_stateOfMindContext"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_extraContext"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_normalizedDuration"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_timeOfDay"];
  [v3 setObject:&off_10036E410 forKeyedSubscript:@"embeddingDistWeight_dayOfWeek"];
  [v3 setObject:&off_10036E410 forKeyedSubscript:@"embeddingDistWeight_isWeekend"];
  [v3 setObject:&off_10036E440 forKeyedSubscript:@"embeddingDistWeight_holiday"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_celebration"];
  [v3 setObject:&off_10036E3C0 forKeyedSubscript:@"embeddingDistWeight_topLevelActivityType"];
  [v3 setObject:&off_10036E3D0 forKeyedSubscript:@"embeddingDistWeight_secondLevelActivityType"];
  [v3 setObject:&off_10036E3E0 forKeyedSubscript:@"embeddingDistWeight_activityTypeFromPhotoTraits"];
  [v3 setObject:&off_10036E3F0 forKeyedSubscript:@"embeddingDistWeight_placeName"];
  [v3 setObject:&off_10036E3C0 forKeyedSubscript:@"embeddingDistWeight_placeType"];
  [v3 setObject:&off_10036E3B0 forKeyedSubscript:@"embeddingDistWeight_geoProximity"];
  [v3 setObject:&off_10036E410 forKeyedSubscript:@"embeddingDistWeight_placeTypeFromPhotoTraits"];
  [v3 setObject:&off_10036E3E0 forKeyedSubscript:@"embeddingDistWeight_contactNames"];
  [v3 setObject:&off_10036E420 forKeyedSubscript:@"embeddingDistWeight_IsWithContact"];
  [v3 setObject:&off_10036E3B0 forKeyedSubscript:@"embeddingDistWeight_isWithFamily"];
  [v3 setObject:&off_10036E410 forKeyedSubscript:@"embeddingDistWeight_isWithCoworker"];
  [v3 setObject:&off_10036E3B0 forKeyedSubscript:@"embeddingDistWeight_isWithFriend"];
  [v3 setObject:&off_10036E3E0 forKeyedSubscript:@"embeddingDistWeight_isWithChild"];
  [v3 setObject:&off_10036E3B0 forKeyedSubscript:@"embeddingDistWeight_isWithMyPet"];
  [v3 setObject:&off_10036E410 forKeyedSubscript:@"embeddingDistWeight_SocialEventFromPhotoTraits "];
  [v3 setObject:&off_10036E3A0 forKeyedSubscript:@"embeddingDistWeight_stateOfMindValence"];
  [v3 setObject:&off_10036E3B0 forKeyedSubscript:@"embeddingDistWeight_stateOfMindDomains"];
  [v3 setObject:&off_10036E3B0 forKeyedSubscript:@"embeddingDistWeight_stateOfMindLabels"];
  [v3 setObject:&off_10036E390 forKeyedSubscript:@"embeddingDistWeight_otherSubjectFromPhotoTraits"];
  configurationManager = self->_configurationManager;
  if (configurationManager)
  {
    v5 = [(MOConfigurationManagerBase *)configurationManager getIntegerSettingForKey:@"MOClusteringParams_minPoints" withFallback:2];
    v6 = [(MOConfigurationManagerBase *)self->_configurationManager getIntegerSettingForKey:@"MOClusteringParams_minClusterSize" withFallback:2];
    v7 = self->_configurationManager;
  }

  else
  {
    v7 = 0;
    v6 = 2;
    v5 = 2;
  }

  v8 = [MOBundleClusteringManager setEmbeddingWeightsWithConfigurationManager:v3 configurationManager:v7];
  v9 = [[MOClusteringParams alloc] initWithembeddingDistanceWeights:v8 minPoints:v5 minClusterSize:v6];

  return v9;
}

- (id)getClusteringParamsForNotablePhotoSubjectThematicSummary
{
  v3 = objc_opt_new();
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_activityContext"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_timeContext"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_locationContext"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_socialContext"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_stateOfMindContext"];
  [v3 setObject:&off_10036E390 forKeyedSubscript:@"embeddingDistWeight_extraContext"];
  [v3 setObject:&off_10036E390 forKeyedSubscript:@"embeddingDistWeight_otherSubjectFromPhotoTraits"];
  [v3 setObject:&off_10036E3C0 forKeyedSubscript:@"embeddingDistWeight_topLevelActivityType"];
  [v3 setObject:&off_10036E3D0 forKeyedSubscript:@"embeddingDistWeight_secondLevelActivityType"];
  [v3 setObject:&off_10036E3E0 forKeyedSubscript:@"embeddingDistWeight_activityTypeFromPhotoTraits"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_normalizedDuration"];
  [v3 setObject:&off_10036E3C0 forKeyedSubscript:@"embeddingDistWeight_timeOfDay"];
  [v3 setObject:&off_10036E3F0 forKeyedSubscript:@"embeddingDistWeight_dayOfWeek"];
  [v3 setObject:&off_10036E400 forKeyedSubscript:@"embeddingDistWeight_isWeekend"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_holiday"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_celebration"];
  [v3 setObject:&off_10036E3F0 forKeyedSubscript:@"embeddingDistWeight_placeName"];
  [v3 setObject:&off_10036E3C0 forKeyedSubscript:@"embeddingDistWeight_placeType"];
  [v3 setObject:&off_10036E3B0 forKeyedSubscript:@"embeddingDistWeight_geoProximity"];
  [v3 setObject:&off_10036E410 forKeyedSubscript:@"embeddingDistWeight_placeTypeFromPhotoTraits"];
  [v3 setObject:&off_10036E3E0 forKeyedSubscript:@"embeddingDistWeight_contactNames"];
  [v3 setObject:&off_10036E420 forKeyedSubscript:@"embeddingDistWeight_IsWithContact"];
  [v3 setObject:&off_10036E3B0 forKeyedSubscript:@"embeddingDistWeight_isWithFamily"];
  [v3 setObject:&off_10036E410 forKeyedSubscript:@"embeddingDistWeight_isWithCoworker"];
  [v3 setObject:&off_10036E3B0 forKeyedSubscript:@"embeddingDistWeight_isWithFriend"];
  [v3 setObject:&off_10036E3E0 forKeyedSubscript:@"embeddingDistWeight_isWithChild"];
  [v3 setObject:&off_10036E3B0 forKeyedSubscript:@"embeddingDistWeight_isWithMyPet"];
  [v3 setObject:&off_10036E410 forKeyedSubscript:@"embeddingDistWeight_SocialEventFromPhotoTraits "];
  [v3 setObject:&off_10036E3A0 forKeyedSubscript:@"embeddingDistWeight_stateOfMindValence"];
  [v3 setObject:&off_10036E3B0 forKeyedSubscript:@"embeddingDistWeight_stateOfMindDomains"];
  [v3 setObject:&off_10036E3B0 forKeyedSubscript:@"embeddingDistWeight_stateOfMindLabels"];
  configurationManager = self->_configurationManager;
  if (configurationManager)
  {
    v5 = [(MOConfigurationManagerBase *)configurationManager getIntegerSettingForKey:@"MOClusteringParams_minPoints" withFallback:2];
    v6 = [(MOConfigurationManagerBase *)self->_configurationManager getIntegerSettingForKey:@"MOClusteringParams_minClusterSize" withFallback:2];
    v7 = self->_configurationManager;
  }

  else
  {
    v7 = 0;
    v6 = 2;
    v5 = 2;
  }

  v8 = [MOBundleClusteringManager setEmbeddingWeightsWithConfigurationManager:v3 configurationManager:v7];
  v9 = [[MOClusteringParams alloc] initWithembeddingDistanceWeights:v8 minPoints:v5 minClusterSize:v6];

  return v9;
}

- (id)getClusteringParamsForSocialThematicSummary
{
  v3 = objc_opt_new();
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_activityContext"];
  [v3 setObject:&off_10036E3E0 forKeyedSubscript:@"embeddingDistWeight_timeContext"];
  [v3 setObject:&off_10036E3E0 forKeyedSubscript:@"embeddingDistWeight_locationContext"];
  [v3 setObject:&off_10036E430 forKeyedSubscript:@"embeddingDistWeight_socialContext"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_stateOfMindContext"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_extraContext"];
  [v3 setObject:&off_10036E3E0 forKeyedSubscript:@"embeddingDistWeight_IsWithContact"];
  [v3 setObject:&off_10036E450 forKeyedSubscript:@"embeddingDistWeight_contactNames"];
  [v3 setObject:&off_10036E3B0 forKeyedSubscript:@"embeddingDistWeight_isWithFamily"];
  [v3 setObject:&off_10036E3B0 forKeyedSubscript:@"embeddingDistWeight_isWithFriend"];
  [v3 setObject:&off_10036E3E0 forKeyedSubscript:@"embeddingDistWeight_isWithChild"];
  [v3 setObject:&off_10036E3B0 forKeyedSubscript:@"embeddingDistWeight_isWithMyPet"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_isWithCoworker"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_SocialEventFromPhotoTraits "];
  [v3 setObject:&off_10036E3C0 forKeyedSubscript:@"embeddingDistWeight_topLevelActivityType"];
  [v3 setObject:&off_10036E3D0 forKeyedSubscript:@"embeddingDistWeight_secondLevelActivityType"];
  [v3 setObject:&off_10036E3E0 forKeyedSubscript:@"embeddingDistWeight_activityTypeFromPhotoTraits"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_normalizedDuration"];
  [v3 setObject:&off_10036E3C0 forKeyedSubscript:@"embeddingDistWeight_timeOfDay"];
  [v3 setObject:&off_10036E3F0 forKeyedSubscript:@"embeddingDistWeight_dayOfWeek"];
  [v3 setObject:&off_10036E400 forKeyedSubscript:@"embeddingDistWeight_isWeekend"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_holiday"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_celebration"];
  [v3 setObject:&off_10036E3F0 forKeyedSubscript:@"embeddingDistWeight_placeName"];
  [v3 setObject:&off_10036E3C0 forKeyedSubscript:@"embeddingDistWeight_placeType"];
  [v3 setObject:&off_10036E3B0 forKeyedSubscript:@"embeddingDistWeight_geoProximity"];
  [v3 setObject:&off_10036E410 forKeyedSubscript:@"embeddingDistWeight_placeTypeFromPhotoTraits"];
  [v3 setObject:&off_10036E3A0 forKeyedSubscript:@"embeddingDistWeight_stateOfMindValence"];
  [v3 setObject:&off_10036E3B0 forKeyedSubscript:@"embeddingDistWeight_stateOfMindDomains"];
  [v3 setObject:&off_10036E3B0 forKeyedSubscript:@"embeddingDistWeight_stateOfMindLabels"];
  [v3 setObject:&off_10036E390 forKeyedSubscript:@"embeddingDistWeight_otherSubjectFromPhotoTraits"];
  configurationManager = self->_configurationManager;
  if (configurationManager)
  {
    v5 = [(MOConfigurationManagerBase *)configurationManager getIntegerSettingForKey:@"MOClusteringParams_minPoints" withFallback:2];
    v6 = [(MOConfigurationManagerBase *)self->_configurationManager getIntegerSettingForKey:@"MOClusteringParams_minClusterSize" withFallback:2];
    v7 = self->_configurationManager;
  }

  else
  {
    v7 = 0;
    v6 = 2;
    v5 = 2;
  }

  v8 = [MOBundleClusteringManager setEmbeddingWeightsWithConfigurationManager:v3 configurationManager:v7];
  v9 = [[MOClusteringParams alloc] initWithembeddingDistanceWeights:v8 minPoints:v5 minClusterSize:v6];

  return v9;
}

- (id)getClusteringParamsForCommonActivityThematicSummary
{
  v3 = objc_opt_new();
  [v3 setObject:&off_10036E430 forKeyedSubscript:@"embeddingDistWeight_activityContext"];
  [v3 setObject:&off_10036E3E0 forKeyedSubscript:@"embeddingDistWeight_timeContext"];
  [v3 setObject:&off_10036E3E0 forKeyedSubscript:@"embeddingDistWeight_locationContext"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_socialContext"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_stateOfMindContext"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_extraContext"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_topLevelActivityType"];
  [v3 setObject:&off_10036E430 forKeyedSubscript:@"embeddingDistWeight_secondLevelActivityType"];
  [v3 setObject:&off_10036E400 forKeyedSubscript:@"embeddingDistWeight_activityTypeFromPhotoTraits"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_normalizedDuration"];
  [v3 setObject:&off_10036E3C0 forKeyedSubscript:@"embeddingDistWeight_timeOfDay"];
  [v3 setObject:&off_10036E3F0 forKeyedSubscript:@"embeddingDistWeight_dayOfWeek"];
  [v3 setObject:&off_10036E400 forKeyedSubscript:@"embeddingDistWeight_isWeekend"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_holiday"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_celebration"];
  [v3 setObject:&off_10036E3F0 forKeyedSubscript:@"embeddingDistWeight_placeName"];
  [v3 setObject:&off_10036E3C0 forKeyedSubscript:@"embeddingDistWeight_placeType"];
  [v3 setObject:&off_10036E3B0 forKeyedSubscript:@"embeddingDistWeight_geoProximity"];
  [v3 setObject:&off_10036E410 forKeyedSubscript:@"embeddingDistWeight_placeTypeFromPhotoTraits"];
  [v3 setObject:&off_10036E3E0 forKeyedSubscript:@"embeddingDistWeight_contactNames"];
  [v3 setObject:&off_10036E420 forKeyedSubscript:@"embeddingDistWeight_IsWithContact"];
  [v3 setObject:&off_10036E3B0 forKeyedSubscript:@"embeddingDistWeight_isWithFamily"];
  [v3 setObject:&off_10036E410 forKeyedSubscript:@"embeddingDistWeight_isWithCoworker"];
  [v3 setObject:&off_10036E3B0 forKeyedSubscript:@"embeddingDistWeight_isWithFriend"];
  [v3 setObject:&off_10036E3E0 forKeyedSubscript:@"embeddingDistWeight_isWithChild"];
  [v3 setObject:&off_10036E3B0 forKeyedSubscript:@"embeddingDistWeight_isWithMyPet"];
  [v3 setObject:&off_10036E410 forKeyedSubscript:@"embeddingDistWeight_SocialEventFromPhotoTraits "];
  [v3 setObject:&off_10036E3A0 forKeyedSubscript:@"embeddingDistWeight_stateOfMindValence"];
  [v3 setObject:&off_10036E3B0 forKeyedSubscript:@"embeddingDistWeight_stateOfMindDomains"];
  [v3 setObject:&off_10036E3B0 forKeyedSubscript:@"embeddingDistWeight_stateOfMindLabels"];
  [v3 setObject:&off_10036E390 forKeyedSubscript:@"embeddingDistWeight_otherSubjectFromPhotoTraits"];
  configurationManager = self->_configurationManager;
  if (configurationManager)
  {
    v5 = [(MOConfigurationManagerBase *)configurationManager getIntegerSettingForKey:@"MOClusteringParams_minPoints" withFallback:2];
    v6 = [(MOConfigurationManagerBase *)self->_configurationManager getIntegerSettingForKey:@"MOClusteringParams_minClusterSize" withFallback:2];
    v7 = self->_configurationManager;
  }

  else
  {
    v7 = 0;
    v6 = 2;
    v5 = 2;
  }

  v8 = [MOBundleClusteringManager setEmbeddingWeightsWithConfigurationManager:v3 configurationManager:v7];
  v9 = [[MOClusteringParams alloc] initWithembeddingDistanceWeights:v8 minPoints:v5 minClusterSize:v6];

  return v9;
}

- (id)getClusteringParamsForCommonPlaceThematicSummary
{
  v3 = objc_opt_new();
  [v3 setObject:&off_10036E3E0 forKeyedSubscript:@"embeddingDistWeight_activityContext"];
  [v3 setObject:&off_10036E3E0 forKeyedSubscript:@"embeddingDistWeight_timeContext"];
  [v3 setObject:&off_10036E430 forKeyedSubscript:@"embeddingDistWeight_locationContext"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_socialContext"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_stateOfMindContext"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_extraContext"];
  [v3 setObject:&off_10036E3C0 forKeyedSubscript:@"embeddingDistWeight_placeName"];
  [v3 setObject:&off_10036E460 forKeyedSubscript:@"embeddingDistWeight_placeType"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_geoProximity"];
  [v3 setObject:&off_10036E3C0 forKeyedSubscript:@"embeddingDistWeight_placeTypeFromPhotoTraits"];
  [v3 setObject:&off_10036E3C0 forKeyedSubscript:@"embeddingDistWeight_topLevelActivityType"];
  [v3 setObject:&off_10036E3D0 forKeyedSubscript:@"embeddingDistWeight_secondLevelActivityType"];
  [v3 setObject:&off_10036E3E0 forKeyedSubscript:@"embeddingDistWeight_activityTypeFromPhotoTraits"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_normalizedDuration"];
  [v3 setObject:&off_10036E3C0 forKeyedSubscript:@"embeddingDistWeight_timeOfDay"];
  [v3 setObject:&off_10036E3F0 forKeyedSubscript:@"embeddingDistWeight_dayOfWeek"];
  [v3 setObject:&off_10036E400 forKeyedSubscript:@"embeddingDistWeight_isWeekend"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_holiday"];
  [v3 setObject:&off_10036E380 forKeyedSubscript:@"embeddingDistWeight_celebration"];
  [v3 setObject:&off_10036E3E0 forKeyedSubscript:@"embeddingDistWeight_contactNames"];
  [v3 setObject:&off_10036E420 forKeyedSubscript:@"embeddingDistWeight_IsWithContact"];
  [v3 setObject:&off_10036E3B0 forKeyedSubscript:@"embeddingDistWeight_isWithFamily"];
  [v3 setObject:&off_10036E410 forKeyedSubscript:@"embeddingDistWeight_isWithCoworker"];
  [v3 setObject:&off_10036E3B0 forKeyedSubscript:@"embeddingDistWeight_isWithFriend"];
  [v3 setObject:&off_10036E3E0 forKeyedSubscript:@"embeddingDistWeight_isWithChild"];
  [v3 setObject:&off_10036E3B0 forKeyedSubscript:@"embeddingDistWeight_isWithMyPet"];
  [v3 setObject:&off_10036E410 forKeyedSubscript:@"embeddingDistWeight_SocialEventFromPhotoTraits "];
  [v3 setObject:&off_10036E3A0 forKeyedSubscript:@"embeddingDistWeight_stateOfMindValence"];
  [v3 setObject:&off_10036E3B0 forKeyedSubscript:@"embeddingDistWeight_stateOfMindDomains"];
  [v3 setObject:&off_10036E3B0 forKeyedSubscript:@"embeddingDistWeight_stateOfMindLabels"];
  [v3 setObject:&off_10036E390 forKeyedSubscript:@"embeddingDistWeight_otherSubjectFromPhotoTraits"];
  configurationManager = self->_configurationManager;
  if (configurationManager)
  {
    v5 = [(MOConfigurationManagerBase *)configurationManager getIntegerSettingForKey:@"MOClusteringParams_minPoints" withFallback:2];
    v6 = [(MOConfigurationManagerBase *)self->_configurationManager getIntegerSettingForKey:@"MOClusteringParams_minClusterSize" withFallback:2];
    v7 = self->_configurationManager;
  }

  else
  {
    v7 = 0;
    v6 = 2;
    v5 = 2;
  }

  v8 = [MOBundleClusteringManager setEmbeddingWeightsWithConfigurationManager:v3 configurationManager:v7];
  v9 = [[MOClusteringParams alloc] initWithembeddingDistanceWeights:v8 minPoints:v5 minClusterSize:v6];

  return v9;
}

- (id)thematicSummarizationStringKeyFor:(unint64_t)a3
{
  if (a3 - 1 > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = *off_100336978[a3 - 1];
  }

  return v4;
}

- (unint64_t)bundleSubtypeFor:(unint64_t)a3
{
  if (a3 - 1 >= 6)
  {
    return 0;
  }

  else
  {
    return a3 + 1000;
  }
}

- (id)clusteringParamsFor:(unint64_t)a3
{
  if (a3 - 1 > 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSDictionary *)self->_clusteringParamsDict objectForKeyedSubscript:*off_100336978[a3 - 1], v3];
  }

  return v5;
}

- (id)inputPredicateFor:(unint64_t)a3
{
  v4 = objc_opt_new();
  if (a3 - 1 > 5)
  {
    v6 = 0;
  }

  else
  {
    v5 = [NSPredicate predicateWithBlock:off_1003369A8[a3 - 1]];

    v6 = v5;
    v4 = v6;
  }

  return v6;
}

BOOL __52__MOThematicSummarizationUtility_inputPredicateFor___block_invoke(id a1, MOEmbedding *a2, NSDictionary *a3)
{
  v3 = [(MOEmbedding *)a2 extraContextEmbedding];
  v4 = [v3 objectForKeyedSubscript:@"photoCount"];
  v5 = [v4 intValue] > 0;

  return v5;
}

BOOL __52__MOThematicSummarizationUtility_inputPredicateFor___block_invoke_2(id a1, MOEmbedding *a2, NSDictionary *a3)
{
  v3 = [(MOEmbedding *)a2 socialContextEmbedding];
  v4 = [v3 objectForKeyedSubscript:@"withContact"];
  v5 = v4 != 0;

  return v5;
}

BOOL __52__MOThematicSummarizationUtility_inputPredicateFor___block_invoke_3(id a1, MOEmbedding *a2, NSDictionary *a3)
{
  v3 = a2;
  v4 = [(MOEmbedding *)v3 activityContextEmbedding];
  v5 = [v4 objectForKeyedSubscript:@"topLevelActivityType"];
  if (v5 == @"outing")
  {
    v8 = 1;
  }

  else
  {
    v6 = [(MOEmbedding *)v3 activityContextEmbedding];
    v7 = [v6 objectForKeyedSubscript:@"topLevelActivityType"];
    v8 = v7 == @"activity";
  }

  return v8;
}

BOOL __52__MOThematicSummarizationUtility_inputPredicateFor___block_invoke_4(id a1, MOEmbedding *a2, NSDictionary *a3)
{
  v3 = a2;
  v4 = [(MOEmbedding *)v3 activityContextEmbedding];
  v5 = [v4 objectForKeyedSubscript:@"topLevelActivityType"];
  if (v5 == @"outing")
  {
    v8 = 1;
  }

  else
  {
    v6 = [(MOEmbedding *)v3 activityContextEmbedding];
    v7 = [v6 objectForKeyedSubscript:@"topLevelActivityType"];
    v8 = v7 == @"activity";
  }

  return v8;
}

BOOL __52__MOThematicSummarizationUtility_inputPredicateFor___block_invoke_5(id a1, MOEmbedding *a2, NSDictionary *a3)
{
  v3 = [(MOEmbedding *)a2 extraContextEmbedding];
  v4 = [v3 objectForKeyedSubscript:@"photoCount"];
  v5 = [v4 intValue] > 0;

  return v5;
}

BOOL __52__MOThematicSummarizationUtility_inputPredicateFor___block_invoke_6(id a1, MOEmbedding *a2, NSDictionary *a3)
{
  v3 = [(MOEmbedding *)a2 stateOfMindContextEmbedding];
  v4 = [v3 objectForKeyedSubscript:kMOStateOfMindContextEmbeddingValenceValues];
  v5 = v4 != 0;

  return v5;
}

+ (id)POICategoriesEligibleForThematicSummary
{
  v4[0] = GEOPOICategoryAmusementPark;
  v4[1] = GEOPOICategoryAquarium;
  v4[2] = GEOPOICategoryBaseball;
  v4[3] = GEOPOICategoryBasketball;
  v4[4] = GEOPOICategoryBeach;
  v4[5] = GEOPOICategoryBeauty;
  v4[6] = GEOPOICategoryBowling;
  v4[7] = GEOPOICategoryBrewery;
  v4[8] = GEOPOICategoryCafe;
  v4[9] = GEOPOICategoryCampground;
  v4[10] = GEOPOICategoryCastle;
  v4[11] = GEOPOICategoryConventionCenter;
  v4[12] = GEOPOICategoryFairground;
  v4[13] = GEOPOICategoryFitnessCenter;
  v4[14] = GEOPOICategoryFishing;
  v4[15] = GEOPOICategoryGolf;
  v4[16] = GEOPOICategoryGoKart;
  v4[17] = GEOPOICategoryHiking;
  v4[18] = GEOPOICategoryKayaking;
  v4[19] = GEOPOICategoryLibrary;
  v4[20] = GEOPOICategoryMarina;
  v4[21] = GEOPOICategoryMiniGolf;
  v4[22] = GEOPOICategoryMovieTheater;
  v4[23] = GEOPOICategoryMuseum;
  v4[24] = GEOPOICategoryMusicVenue;
  v4[25] = GEOPOICategoryNationalPark;
  v4[26] = GEOPOICategoryNightlife;
  v4[27] = GEOPOICategoryPark;
  v4[28] = GEOPOICategoryPlayground;
  v4[29] = GEOPOICategoryRestaurant;
  v4[30] = GEOPOICategoryRockClimbing;
  v4[31] = GEOPOICategoryStadium;
  v4[32] = GEOPOICategoryTheater;
  v4[33] = GEOPOICategoryWinery;
  v4[34] = GEOPOICategoryZoo;
  v4[35] = GEOPOICategoryCampground;
  v4[36] = GEOPOICategoryCastle;
  v4[37] = GEOPOICategoryConventionCenter;
  v4[38] = GEOPOICategoryDistillery;
  v4[39] = GEOPOICategoryFairground;
  v4[40] = GEOPOICategoryFortress;
  v4[41] = GEOPOICategoryLandmark;
  v4[42] = GEOPOICategoryNationalMonument;
  v4[43] = GEOPOICategoryPlanetarium;
  v4[44] = GEOPOICategoryRVPark;
  v4[45] = GEOPOICategorySkatePark;
  v4[46] = GEOPOICategorySkating;
  v4[47] = GEOPOICategorySkiing;
  v4[48] = GEOPOICategorySoccer;
  v4[49] = GEOPOICategorySpa;
  v4[50] = GEOPOICategorySurfing;
  v4[51] = GEOPOICategorySwimming;
  v4[52] = GEOPOICategoryTennis;
  v4[53] = GEOPOICategoryVolleyball;
  v2 = [NSArray arrayWithObjects:v4 count:54];

  return v2;
}

+ (id)HKWorkoutActivityTypesNotEligibleForThematicSummary
{
  v2 = _HKWorkoutActivityNameForActivityType();
  v8[0] = v2;
  v3 = _HKWorkoutActivityNameForActivityType();
  v8[1] = v3;
  v4 = _HKWorkoutActivityNameForActivityType();
  v8[2] = v4;
  v5 = _HKWorkoutActivityNameForActivityType();
  v8[3] = v5;
  v6 = [NSArray arrayWithObjects:v8 count:4];

  return v6;
}

@end