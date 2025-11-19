@interface MOPreOnboardedVisitAnnotationManager
+ (void)scoreVisitBundleAssets:(id)a3;
- (MOPreOnboardedVisitAnnotationManager)initWithUniverse:(id)a3;
- (id)actionFromBaseEvents:(id)a3;
- (id)annotateBaseEvents:(id)a3 contextEvents:(id)a4;
- (id)buildPromptDescriptionForEventBundle:(id)a3;
- (id)getBaseEvents:(id)a3;
- (id)groupBaseEvents:(id)a3;
- (id)placeFromBaseEvents:(id)a3 action:(id)a4;
- (id)resourcesFromBaseEvents:(id)a3;
@end

@implementation MOPreOnboardedVisitAnnotationManager

- (MOPreOnboardedVisitAnnotationManager)initWithUniverse:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = MOPreOnboardedVisitAnnotationManager;
  v5 = [(MOTimeContextAnnotationManager *)&v41 initWithUniverse:v4];
  if (v5)
  {
    v44[0] = GEOPOICategoryATM;
    v44[1] = GEOPOICategoryEVCharger;
    v44[2] = GEOPOICategoryParking;
    v44[3] = GEOPOICategoryPublicTransport;
    v44[4] = GEOPOICategoryRestroom;
    v6 = [NSArray arrayWithObjects:v44 count:5];
    v7 = [NSSet setWithArray:v6];
    lessInterestingPoiCategories = v5->_lessInterestingPoiCategories;
    v5->_lessInterestingPoiCategories = v7;

    v43[0] = GEOPOICategoryAirport;
    v43[1] = GEOPOICategoryAirportGate;
    v43[2] = GEOPOICategoryAirportTerminal;
    v9 = [NSArray arrayWithObjects:v43 count:3];
    v10 = [NSSet setWithArray:v9];
    flightPoiCategories = v5->_flightPoiCategories;
    v5->_flightPoiCategories = v10;

    v42[0] = GEOPOICategoryAmusementPark;
    v42[1] = GEOPOICategoryAquarium;
    v42[2] = GEOPOICategoryBakery;
    v42[3] = GEOPOICategoryBeach;
    v42[4] = GEOPOICategoryBrewery;
    v42[5] = GEOPOICategoryCafe;
    v42[6] = GEOPOICategoryMarina;
    v42[7] = GEOPOICategoryMovieTheater;
    v42[8] = GEOPOICategoryMuseum;
    v42[9] = GEOPOICategoryNationalPark;
    v42[10] = GEOPOICategoryNightlife;
    v42[11] = GEOPOICategoryPark;
    v42[12] = GEOPOICategoryPlayground;
    v42[13] = GEOPOICategoryRestaurant;
    v42[14] = GEOPOICategoryStadium;
    v42[15] = GEOPOICategoryTheater;
    v42[16] = GEOPOICategoryWinery;
    v42[17] = GEOPOICategoryZoo;
    v12 = [NSArray arrayWithObjects:v42 count:18];
    v13 = [NSSet setWithArray:v12];
    outingEligiblePoiCategories = v5->_outingEligiblePoiCategories;
    v5->_outingEligiblePoiCategories = v13;

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v4 getService:v16];

    v18 = [v17 routineManager];
    routineManager = v5->_routineManager;
    v5->_routineManager = v18;

    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = [v4 getService:v21];
    configurationManager = v5->_configurationManager;
    v5->_configurationManager = v22;

    HIDWORD(v24) = 1072168960;
    *&v24 = 0.75;
    [(MOConfigurationManagerBase *)v5->_configurationManager getFloatSettingForKey:@"VA_VisitLabelMediumConfidenceThreshold" withFallback:v24];
    v5->_visitLabelMediumConfidenceThreshold = v25;
    HIDWORD(v26) = 1072483532;
    *&v26 = 0.9;
    [(MOConfigurationManagerBase *)v5->_configurationManager getFloatSettingForKey:@"VA_VisitLabelHighConfidenceThreshold" withFallback:v26];
    v5->_visitLabelHighConfidenceThreshold = v27;
    HIDWORD(v28) = 1071644672;
    *&v28 = 0.5;
    [(MOConfigurationManagerBase *)v5->_configurationManager getFloatSettingForKey:@"VA_AOIVisitLabelConfidentThreshold" withFallback:v28];
    v30 = v29;
    v5->_aoiVisitLabelConfidentThreshold = v30;
    LODWORD(v30) = 1133903872;
    [(MOConfigurationManagerBase *)v5->_configurationManager getFloatSettingForKey:@"VA_AdjacentVisitEventInterval" withFallback:v30];
    v32 = v31;
    v5->_timeIntervalThresholdDefault = v32;
    LODWORD(v32) = 1109393408;
    [(MOConfigurationManagerBase *)v5->_configurationManager getFloatSettingForKey:@"VA_AdjacentVisitEventMaximumDistanceKeyword" withFallback:v32];
    v34 = v33;
    v5->_distanceThresholdDefault = v34;
    LODWORD(v34) = 1163984896;
    [(MOConfigurationManagerBase *)v5->_configurationManager getFloatSettingForKey:@"VA_AdjacentVisitEventWithTheSamePlaceNameInterval" withFallback:v34];
    v36 = v35;
    v5->_timeIntervalThresholdWithSamePlaceName = v36;
    LODWORD(v36) = -1.0;
    [(MOConfigurationManagerBase *)v5->_configurationManager getFloatSettingForKey:@"VA_AdjacentVisitEventWithTheSamePlaceNameMaximumDistance" withFallback:v36];
    v5->_distanceThresholdWithSamePlaceName = v37;
    HIDWORD(v38) = 1072483532;
    *&v38 = 0.9;
    [(MOConfigurationManagerBase *)v5->_configurationManager getFloatSettingForKey:@"VA_RecommendedTabVisitFIThreshold" withFallback:v38];
    v5->_recommendedTabVisitFIThreshold = v39;
  }

  return v5;
}

- (id)getBaseEvents:(id)a3
{
  v3 = a3;
  v4 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 1];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  return v5;
}

- (id)groupBaseEvents:(id)a3
{
  v4 = a3;
  if (![v4 count])
  {
    v55 = &__NSArray0__struct;
    goto LABEL_49;
  }

  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v57 = v4;
  obj = v4;
  v63 = [obj countByEnumeratingWithState:&v64 objects:v80 count:16];
  v7 = 0;
  if (!v63)
  {
    goto LABEL_45;
  }

  v8 = *v65;
  v61 = *v65;
  v58 = self;
  v59 = v5;
  do
  {
    for (i = 0; i != v63; i = i + 1)
    {
      if (*v65 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v64 + 1) + 8 * i);
      if ([v10 placeUserType] == 1)
      {
        if ([v6 count])
        {
          v11 = [v6 copy];
          [v5 addObject:v11];

          v12 = objc_opt_new();
          v13 = v7;
          v6 = v12;
        }

        else
        {
          v13 = v7;
        }

        v7 = 0;
        goto LABEL_43;
      }

      if (v7)
      {
        [(MOPreOnboardedVisitAnnotationManager *)self timeIntervalThresholdDefault];
        v15 = v14;
        [(MOPreOnboardedVisitAnnotationManager *)self distanceThresholdDefault];
        v17 = v16;
        v18 = [v7 placeName];
        if (!v18)
        {
          v60 = [v10 placeName];
          if (!v60)
          {
            v60 = 0;
            goto LABEL_27;
          }
        }

        v19 = [v7 placeName];
        if (v19)
        {
          v20 = v19;
          v21 = [v10 placeName];
          if (v21)
          {
            v22 = v21;
            v23 = [v7 placeName];
            v24 = [v10 placeName];
            v25 = [v23 isEqualToString:v24];

            if (v18)
            {

              self = v58;
              v5 = v59;
              if (!v25)
              {
LABEL_30:
                v31 = [v10 startDate];
                v32 = [v7 endDate];
                [v31 timeIntervalSinceDate:v32];
                v34 = v33;

                v35 = [v7 location];
                v36 = 0.0;
                if (v35)
                {
                  v37 = v35;
                  v38 = [v10 location];

                  if (v38)
                  {
                    v39 = [v7 location];
                    v40 = [v10 location];
                    [v39 distanceFromLocation:v40];
                    v36 = v41;
                  }
                }

                v8 = v61;
                if (v34 > v15 || v36 > v17)
                {
                  if ([v6 count])
                  {
                    v42 = [v6 copy];
                    [v5 addObject:v42];

                    v43 = objc_opt_new();
                    v6 = v43;
                  }

                  v44 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
                  {
                    v49 = objc_opt_class();
                    v50 = NSStringFromClass(v49);
                    *buf = 138413314;
                    v69 = v50;
                    v70 = 2048;
                    v71 = v34;
                    v72 = 2048;
                    v73 = v36;
                    v74 = 2048;
                    v75 = v15;
                    v76 = 2048;
                    v77 = v17;
                    _os_log_debug_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "%@: Grouping the base events, new group (distance/interval check), interval, %f, distacne, %f, intervalThreshold, %f, distanceThreshold, %f", buf, 0x34u);
                  }
                }

                [v6 addObject:v10];
                v45 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
                if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
                {
                  v46 = objc_opt_class();
                  v47 = NSStringFromClass(v46);
                  v48 = [v10 eventIdentifier];
                  *buf = 138413570;
                  v69 = v47;
                  v70 = 2112;
                  v71 = *&v48;
                  v72 = 2048;
                  v73 = v34;
                  v74 = 2048;
                  v75 = v36;
                  v76 = 2048;
                  v77 = v15;
                  v78 = 2048;
                  v79 = v17;
                  _os_log_debug_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "%@: Grouping the base events, add event, %@, interval, %f, distacne, %f, intervalThreshold, %f, distanceThreshold, %f", buf, 0x3Eu);
                }

                v13 = v7;
                v7 = v10;
                goto LABEL_43;
              }
            }

            else
            {

              self = v58;
              v5 = v59;
              if ((v25 & 1) == 0)
              {
                goto LABEL_30;
              }
            }

LABEL_27:
            [(MOPreOnboardedVisitAnnotationManager *)self timeIntervalThresholdWithSamePlaceName];
            v15 = v29;
            [(MOPreOnboardedVisitAnnotationManager *)self distanceThresholdWithSamePlaceName];
            v17 = v30;
            v18 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              v51 = objc_opt_class();
              v52 = NSStringFromClass(v51);
              v53 = [v10 eventIdentifier];
              *buf = 138412546;
              v69 = v52;
              v70 = 2112;
              v71 = *&v53;
              _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%@: Grouping the base events, the same place name, %@", buf, 0x16u);
            }

LABEL_29:

            goto LABEL_30;
          }
        }

        if (!v18)
        {
        }

        goto LABEL_29;
      }

      [v6 addObject:v10];
      v7 = v10;
      v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        v28 = [v7 eventIdentifier];
        *buf = 138412546;
        v69 = v27;
        v70 = 2112;
        v71 = *&v28;
        _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%@: Grouping the base events, add event, %@", buf, 0x16u);
      }

LABEL_43:
    }

    v63 = [obj countByEnumeratingWithState:&v64 objects:v80 count:16];
  }

  while (v63);
LABEL_45:

  if ([v6 count])
  {
    v54 = [v6 copy];
    [v5 addObject:v54];
  }

  v55 = [v5 copy];

  v4 = v57;
LABEL_49:

  return v55;
}

- (id)annotateBaseEvents:(id)a3 contextEvents:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 count])
  {
    v11 = 0;
    goto LABEL_17;
  }

  v8 = [MOEventBundle alloc];
  v9 = +[NSUUID UUID];
  v10 = +[NSDate date];
  v11 = [(MOEventBundle *)v8 initWithBundleIdentifier:v9 creationDate:v10];

  [(MOEventBundle *)v11 setInterfaceType:2];
  [(MOEventBundle *)v11 setBundleSuperType:1];
  [(MOEventBundle *)v11 setBundleSubType:106];
  v12 = [v6 lastObject];
  v13 = [v12 endDate];
  v14 = [(MOAnnotationManager *)self timeZoneManager];
  v15 = [MOTime timeForDate:v13 timeZoneManager:v14];
  [(MOEventBundle *)v11 setTime:v15];

  [(MOEventBundle *)v11 setPropertiesBasedOnEvents];
  v16 = [v6 firstObject];
  v17 = [v16 startDate];
  [(MOEventBundle *)v11 setStartDate:v17];

  v18 = [v6 lastObject];
  v19 = [v18 endDate];
  [(MOEventBundle *)v11 setEndDate:v19];

  v20 = [(MOPreOnboardedVisitAnnotationManager *)self resourcesFromBaseEvents:v6];
  [(MOEventBundle *)v11 setResources:v20];

  v21 = [v6 copy];
  [(MOEventBundle *)v11 setEvents:v21];

  v22 = [(MOPreOnboardedVisitAnnotationManager *)self actionFromBaseEvents:v6];
  [(MOEventBundle *)v11 setAction:v22];

  v23 = [(MOEventBundle *)v11 action];
  v24 = [(MOPreOnboardedVisitAnnotationManager *)self placeFromBaseEvents:v6 action:v23];
  [(MOEventBundle *)v11 setPlace:v24];

  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__40;
  v67 = __Block_byref_object_dispose__40;
  v68 = objc_opt_new();
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__40;
  v57 = __Block_byref_object_dispose__40;
  v58 = objc_opt_new();
  v52.receiver = self;
  v52.super_class = MOPreOnboardedVisitAnnotationManager;
  v25 = [(MOAnnotationManager *)&v52 fUniverse];
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = __73__MOPreOnboardedVisitAnnotationManager_annotateBaseEvents_contextEvents___block_invoke;
  v51[3] = &unk_100336118;
  v51[4] = &v63;
  v51[5] = &v59;
  v51[6] = &v53;
  [MOContextAnnotationUtilities addPhotoResources:v11 universe:v25 handler:v51];

  v26 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = objc_opt_class();
    v25 = NSStringFromClass(v27);
    v28 = v60[3];
    *buf = 138412546;
    v70 = v25;
    v71 = 2048;
    v72 = v28;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%@: visit, photoSource, %lu", buf, 0x16u);
  }

  [(MOEventBundle *)v11 setResources:v64[5]];
  [(MOEventBundle *)v11 setPhotoSource:v60[3]];
  v29 = [v54[5] copy];
  [(MOEventBundle *)v11 setPhotoTraits:v29];

  if ([v64[5] count])
  {
    v30 = [(MOEventBundle *)v11 place];
    [v30 placeNameConfidence];
    v25 = v31 < 0.0;

    if (v25)
    {
      v32 = [(MOEventBundle *)v11 place];
      [v32 setPlaceNameConfidence:0.0];
    }
  }

  v33 = [(MOEventBundle *)v11 place];
  v34 = [v33 placeUserType];
  if (v34 != 2)
  {
    v25 = [(MOEventBundle *)v11 place];
    [v25 familiarityIndexLOI];
    if (v35 <= self->_recommendedTabVisitFIThreshold)
    {

      goto LABEL_16;
    }
  }

  v36 = [(MOEventBundle *)v11 photoSource];
  if (v34 == 2)
  {
    v37 = v36 == 0;

    if (v37)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v38 = v36 == 0;

    if (v38)
    {
LABEL_14:
      [(MOEventBundle *)v11 setSummarizationGranularity:1];
    }
  }

LABEL_16:
  v39 = [(MOEventBundle *)v11 place];
  [v39 distanceToHomeInMiles];
  v40 = [NSNumber numberWithDouble:?];
  [(MOEventBundle *)v11 addMetaDataForRankForKey:@"DistanceToHome" value:v40];

  v41 = [(MOEventBundle *)v11 place];
  v42 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v41 locationMode] == 2);
  [(MOEventBundle *)v11 addMetaDataForRankForKey:@"LocationModeTourist" value:v42];

  v43 = [(MOEventBundle *)v11 endDate];
  v44 = [(MOEventBundle *)v11 startDate];
  [v43 timeIntervalSinceDate:v44];
  v46 = v45;

  v47 = [NSNumber numberWithDouble:v46];
  [(MOEventBundle *)v11 addMetaDataForRankForKey:@"VisitDuration" value:v47];

  v48 = [(MOEventBundle *)v11 place];
  [v48 familiarityIndexLOI];
  v49 = [NSNumber numberWithDouble:?];
  [(MOEventBundle *)v11 addMetaDataForRankForKey:@"FamiliarityIndex" value:v49];

  [MOPreOnboardedVisitAnnotationManager scoreVisitBundleAssets:v11];
  _Block_object_dispose(&v53, 8);

  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v63, 8);

LABEL_17:

  return v11;
}

void __73__MOPreOnboardedVisitAnnotationManager_annotateBaseEvents_contextEvents___block_invoke(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(a1[4] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v13 = v7;

  *(*(a1[5] + 8) + 24) = a3;
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
}

+ (void)scoreVisitBundleAssets:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = [v3 resources];
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        if ([v12 type] == 2)
        {
          v13 = [v12 copy];
          [v5 addObject:v13];
        }

        else if ([v12 type] == 6)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v9);
  }

  if ([v5 count])
  {
    if ([v5 count])
    {
      v14 = [v5 firstObject];
      [v14 setPriorityScore:100.0];

      v15 = [v3 place];
      [v15 setPriorityScore:200.0];

      v16 = [v5 firstObject];
      [v4 addObject:v16];

      [v5 removeObjectAtIndex:0];
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v17 = v5;
      v18 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = 0;
        v21 = *v26;
        do
        {
          v22 = 0;
          v23 = v20;
          do
          {
            if (*v26 != v21)
            {
              objc_enumerationMutation(v17);
            }

            v20 = v23 + 1;
            [*(*(&v25 + 1) + 8 * v22) setPriorityScore:{(v23 + 300), v25}];
            v22 = v22 + 1;
            ++v23;
          }

          while (v19 != v22);
          v19 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
        }

        while (v19);
      }

      [v4 addObjectsFromArray:v17];
      [v4 addObjectsFromArray:v6];
    }

    [v3 setResources:{v4, v25}];
  }

  else
  {
    v24 = [v3 place];
    [v24 setPriorityScore:100.0];
  }
}

- (id)actionFromBaseEvents:(id)a3
{
  v3 = a3;
  v4 = [[MOAction alloc] initWithActionName:@"visit" actionType:2];
  v5 = [v3 firstObject];

  v6 = [v5 eventIdentifier];
  [(MOAction *)v4 setSourceEventIdentifier:v6];

  return v4;
}

- (id)placeFromBaseEvents:(id)a3 action:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MOContextAnnotationUtilities majorityGroupFromEvents:v6 propertyPath:@"placeName" valuePath:@"duration"];
  if (v7 && [v7 actionType] == 11)
  {
    v9 = self->_flightPoiCategories;
  }

  else
  {
    v9 = 0;
  }

  lessInterestingPoiCategories = self->_lessInterestingPoiCategories;
  [(MOPreOnboardedVisitAnnotationManager *)self visitLabelMediumConfidenceThreshold];
  v12 = v11;
  [(MOPreOnboardedVisitAnnotationManager *)self visitLabelHighConfidenceThreshold];
  v14 = v13;
  [(MOPreOnboardedVisitAnnotationManager *)self aoiVisitLabelConfidentThreshold];
  v16 = v15;
  v17 = [(MOAnnotationManager *)self fUniverse];
  v18 = [MOContextAnnotationUtilities placeFromVisitEvents:v8 preferredCategories:v9 poiCategoryBlocklist:lessInterestingPoiCategories mediumConfidenceThreshold:v17 highConfidenceThreshold:v12 aoiConfidenceThreshold:v14 universe:v16];

  if ([v18 placeUserType] == 2 || objc_msgSend(v18, "placeUserType") == 1)
  {
    [v18 setPlaceNameConfidence:-1.0];
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v19 = v6;
  v20 = [v19 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (!v20)
  {

LABEL_18:
    [v18 setPlaceNameConfidence:-1.0];
    goto LABEL_19;
  }

  v21 = v20;
  v35 = v7;
  v22 = v9;
  v23 = v8;
  v24 = *v37;
  v25 = 0.0;
  do
  {
    for (i = 0; i != v21; i = i + 1)
    {
      if (*v37 != v24)
      {
        objc_enumerationMutation(v19);
      }

      v27 = *(*(&v36 + 1) + 8 * i);
      v28 = [v27 endDate];
      v29 = [v27 startDate];
      [v28 timeIntervalSinceDate:v29];
      v25 = v25 + v30;
    }

    v21 = [v19 countByEnumeratingWithState:&v36 objects:v40 count:16];
  }

  while (v21);

  v8 = v23;
  v9 = v22;
  v7 = v35;
  if (v25 < 480.0)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (![v18 placeUserType])
  {
    outingEligiblePoiCategories = self->_outingEligiblePoiCategories;
    v32 = [v18 poiCategory];
    LODWORD(outingEligiblePoiCategories) = [(NSSet *)outingEligiblePoiCategories containsObject:v32];

    if (outingEligiblePoiCategories)
    {
      [v18 setPlaceUserType:100];
    }

    v33 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [MOVisitAnnotationManager placeFromBaseEvents:v18 action:v33];
    }
  }

  return v18;
}

- (id)resourcesFromBaseEvents:(id)a3
{
  p_superclass = MOBundleQualityManager.superclass;
  v5 = [MOContextAnnotationUtilities majorityGroupFromEvents:a3 propertyPath:@"placeName" valuePath:@"duration"];
  v39 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v42;
    v10 = &OBJC_IVAR___MOBiomeManager__setDefault;
    *&v7 = 138412802;
    v37 = v7;
    do
    {
      v11 = 0;
      do
      {
        if (*v42 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v41 + 1) + 8 * v11);
        v13 = *(&self->super.super.super.isa + v10[143]);
        [(MOPreOnboardedVisitAnnotationManager *)self visitLabelMediumConfidenceThreshold];
        v15 = v14;
        [(MOPreOnboardedVisitAnnotationManager *)self visitLabelHighConfidenceThreshold];
        v17 = v16;
        [(MOPreOnboardedVisitAnnotationManager *)self aoiVisitLabelConfidentThreshold];
        v19 = v18;
        v20 = [(MOAnnotationManager *)self fUniverse];
        v21 = [p_superclass + 309 placeFromVisitEvent:v12 preferredCategories:0 poiCategoryBlocklist:v13 mediumConfidenceThreshold:v20 highConfidenceThreshold:v15 aoiConfidenceThreshold:v17 universe:v19];

        v22 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          v38 = [v21 placeName];
          v32 = [v38 mask];
          v33 = [v12 placeMapItem];
          v34 = [v33 length];
          *buf = v37;
          v46 = v31;
          v47 = 2112;
          v48 = v32;
          v49 = 2048;
          v50 = v34;
          _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%@: resourcesFromBaseEvents, place, %@, mapItem.length, %lu", buf, 0x20u);

          v10 = &OBJC_IVAR___MOBiomeManager__setDefault;
          p_superclass = (MOBundleQualityManager + 8);
        }

        if ([v21 placeType] == 3 && (objc_msgSend(v21, "placeNameConfidence"), v23 >= 0.75) || objc_msgSend(v21, "placeType") == 2 && (objc_msgSend(v21, "placeNameConfidence"), v24 >= 0.5))
        {
          v25 = [MOResource alloc];
          v26 = [v21 placeName];
          v27 = [v12 placeMapItem];
          v28 = [(MOResource *)v25 initWithName:v26 mapItemHandle:v27 priorityScore:-1.0];

          v29 = [v12 eventIdentifier];
          [(MOResource *)v28 setSourceEventIdentifier:v29];

          v10 = &OBJC_IVAR___MOBiomeManager__setDefault;
          [v39 addObject:v28];

          p_superclass = (MOBundleQualityManager + 8);
        }

        v11 = v11 + 1;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v8);
  }

  if ([v39 count])
  {
    v35 = [v39 copy];
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (id)buildPromptDescriptionForEventBundle:(id)a3
{
  v3 = a3;
  v4 = [v3 action];
  v5 = [v4 actionName];

  v6 = [v3 actions];
  if (v6 && (v7 = v6, [v3 actions], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v7, v9))
  {
    v10 = [NSPredicate predicateWithFormat:@"%K = %lu", @"actionType", 2];
    v11 = [v3 actions];
    v12 = [v11 filteredArrayUsingPredicate:v10];

    v13 = [v12 count];
    v14 = v13 != 0;
    if (v13)
    {
      v15 = [v12 firstObject];
      v16 = [v15 actionName];

      v5 = v16;
    }
  }

  else
  {
    v14 = 0;
  }

  v17 = [v3 place];
  if (v17)
  {
    v18 = [v3 place];
    v19 = [v18 placeName];

    if (!v19)
    {
      v17 = 0;
      if (v14)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }

    v20 = [v3 place];
    v21 = [v20 promptDescription];
    v17 = [NSString stringWithFormat:@" %@", v21];
  }

  if (v14)
  {
    goto LABEL_21;
  }

LABEL_11:
  if (!v17)
  {
    v31 = @"Outing";
LABEL_20:

    v5 = v31;
    goto LABEL_21;
  }

  v22 = [v3 actions];
  if (v22)
  {
    v23 = v22;
    v24 = [v3 actions];
    v25 = [v24 count];

    if (v25)
    {
      v26 = [NSPredicate predicateWithFormat:@"%K = %lu", @"actionType", 3];
      v27 = [v3 actions];
      v28 = [v27 filteredArrayUsingPredicate:v26];

      if ([v28 count])
      {
        v29 = [v28 firstObject];
        v30 = [v29 actionName];

        v5 = v30;
      }

      v31 = v5;

      v5 = v26;
      goto LABEL_20;
    }
  }

LABEL_21:
  v32 = objc_opt_new();
  [v32 appendString:v5];
  if (v17)
  {
    [v32 appendString:v17];
  }

  v33 = [v32 copy];

  return v33;
}

@end