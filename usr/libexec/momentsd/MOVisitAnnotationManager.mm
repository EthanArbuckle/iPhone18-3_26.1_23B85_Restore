@interface MOVisitAnnotationManager
+ (void)scoreVisitBundleAssets:(id)a3;
- (BOOL)containTargetAOIInGroup:(id)a3;
- (BOOL)isGroupingEligibleForEvent:(id)a3;
- (BOOL)likelySamePlaceCheckForEvent:(id)a3 otherEvent:(id)a4;
- (BOOL)likelySamePlaceCheckForEvent:(id)a3 otherEvents:(id)a4;
- (BOOL)samePlaceCheckForEvent:(id)a3 otherEvent:(id)a4;
- (BOOL)snapableEvent:(id)a3;
- (MOVisitAnnotationManager)initWithUniverse:(id)a3;
- (id)actionFromBaseEvents:(id)a3;
- (id)annotateBaseEvents:(id)a3 contextEvents:(id)a4;
- (id)applyAOIBasedGroupingOnEvents:(id)a3;
- (id)applyNameBasedGroupingOnEvents:(id)a3;
- (id)buildPromptDescriptionForEventBundle:(id)a3;
- (id)getBaseEvents:(id)a3;
- (id)getContextEventsForBaseEvents:(id)a3 events:(id)a4 withPatternEvents:(id)a5;
- (id)groupBaseEvents:(id)a3;
- (id)placeFromBaseEvents:(id)a3 action:(id)a4;
- (id)postprocessGroupedEvents:(id)a3;
- (id)predominantWeatherFromBaseEvents:(id)a3;
- (id)preprocessEvents:(id)a3;
- (id)resourcesFromBaseEvents:(id)a3;
- (void)printGroupedEvents:(id)a3 tag:(id)a4;
- (void)readParametersWithConfigurationManager:(id)a3;
- (void)transferPlaceForEvent:(id)a3 landmarkEvent:(id)a4;
- (void)updateActionWithBaseEvents:(id)a3 contextEvents:(id)a4 eventBundle:(id)a5;
@end

@implementation MOVisitAnnotationManager

- (MOVisitAnnotationManager)initWithUniverse:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = MOVisitAnnotationManager;
  v5 = [(MOTimeContextAnnotationManager *)&v38 initWithUniverse:v4];
  if (v5)
  {
    v43[0] = GEOPOICategoryATM;
    v43[1] = GEOPOICategoryEVCharger;
    v43[2] = GEOPOICategoryParking;
    v43[3] = GEOPOICategoryPublicTransport;
    v43[4] = GEOPOICategoryRestroom;
    v6 = [NSArray arrayWithObjects:v43 count:5];
    v7 = [NSSet setWithArray:v6];
    lessInterestingPoiCategories = v5->_lessInterestingPoiCategories;
    v5->_lessInterestingPoiCategories = v7;

    v37 = GEOPOICategoryAirport;
    v42[0] = GEOPOICategoryAirport;
    v42[1] = GEOPOICategoryAirportGate;
    v42[2] = GEOPOICategoryAirportTerminal;
    v9 = [NSArray arrayWithObjects:v42 count:3];
    v10 = [NSSet setWithArray:v9];
    flightPoiCategories = v5->_flightPoiCategories;
    v5->_flightPoiCategories = v10;

    v12 = GEOPOICategoryAmusementPark;
    v13 = GEOPOICategoryAquarium;
    v41[0] = GEOPOICategoryAmusementPark;
    v41[1] = GEOPOICategoryAquarium;
    v14 = GEOPOICategoryBeach;
    v41[2] = GEOPOICategoryBakery;
    v41[3] = GEOPOICategoryBeach;
    v41[4] = GEOPOICategoryBrewery;
    v41[5] = GEOPOICategoryCafe;
    v41[6] = GEOPOICategoryMarina;
    v41[7] = GEOPOICategoryMovieTheater;
    v41[8] = GEOPOICategoryMuseum;
    v41[9] = GEOPOICategoryNationalPark;
    v15 = GEOPOICategoryPark;
    v41[10] = GEOPOICategoryNightlife;
    v41[11] = GEOPOICategoryPark;
    v41[12] = GEOPOICategoryPlayground;
    v41[13] = GEOPOICategoryRestaurant;
    v41[14] = GEOPOICategoryStadium;
    v41[15] = GEOPOICategoryTheater;
    v16 = GEOPOICategoryWinery;
    v17 = GEOPOICategoryZoo;
    v41[16] = GEOPOICategoryWinery;
    v41[17] = GEOPOICategoryZoo;
    v18 = [NSArray arrayWithObjects:v41 count:18];
    v19 = [NSSet setWithArray:v18];
    outingEligiblePoiCategories = v5->_outingEligiblePoiCategories;
    v5->_outingEligiblePoiCategories = v19;

    v40[0] = v37;
    v40[1] = v12;
    v40[2] = v13;
    v40[3] = v14;
    v40[4] = GEOPOICategoryGolf;
    v40[5] = v15;
    v40[6] = GEOPOICategorySkiing;
    v40[7] = v16;
    v40[8] = v17;
    v21 = [NSArray arrayWithObjects:v40 count:9];
    v22 = [NSSet setWithArray:v21];
    AOIGroupingEligiblePoiCategories = v5->_AOIGroupingEligiblePoiCategories;
    v5->_AOIGroupingEligiblePoiCategories = v22;

    v39 = v14;
    v24 = [NSArray arrayWithObjects:&v39 count:1];
    v25 = [NSSet setWithArray:v24];
    largeAOICategories = v5->_largeAOICategories;
    v5->_largeAOICategories = v25;

    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v29 = [v4 getService:v28];

    v30 = [v29 routineManager];
    routineManager = v5->_routineManager;
    v5->_routineManager = v30;

    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    v34 = [v4 getService:v33];
    configurationManager = v5->_configurationManager;
    v5->_configurationManager = v34;

    [(MOVisitAnnotationManager *)v5 readParametersWithConfigurationManager:v5->_configurationManager];
  }

  return v5;
}

- (void)readParametersWithConfigurationManager:(id)a3
{
  v4 = a3;
  *&v5 = 0.75;
  [v4 getFloatSettingForKey:@"VA_VisitLabelMediumConfidenceThreshold" withFallback:v5];
  self->_visitLabelMediumConfidenceThreshold = v6;
  HIDWORD(v7) = 1072483532;
  *&v7 = 0.9;
  [v4 getFloatSettingForKey:@"VA_VisitLabelHighConfidenceThreshold" withFallback:v7];
  self->_visitLabelHighConfidenceThreshold = v8;
  HIDWORD(v9) = 1071644672;
  *&v9 = 0.5;
  [v4 getFloatSettingForKey:@"VA_AOIVisitLabelConfidentThreshold" withFallback:v9];
  v11 = v10;
  self->_aoiVisitLabelConfidentThreshold = v11;
  LODWORD(v11) = 1133903872;
  [v4 getFloatSettingForKey:@"VA_AdjacentVisitEventInterval" withFallback:v11];
  v13 = v12;
  self->_timeIntervalThresholdDefault = v13;
  LODWORD(v13) = 1109393408;
  [v4 getFloatSettingForKey:@"VA_AdjacentVisitEventMaximumDistanceKeyword" withFallback:v13];
  v15 = v14;
  self->_distanceThresholdDefault = v15;
  LODWORD(v15) = 1163984896;
  [v4 getFloatSettingForKey:@"VA_AdjacentVisitEventWithTheSamePlaceNameInterval" withFallback:v15];
  v17 = v16;
  self->_timeIntervalThresholdWithSamePlaceName = v17;
  LODWORD(v17) = -1.0;
  [v4 getFloatSettingForKey:@"VA_AdjacentVisitEventWithTheSamePlaceNameMaximumDistance" withFallback:v17];
  v19 = v18;
  self->_distanceThresholdWithSamePlaceName = v19;
  LODWORD(v19) = 1177075712;
  [v4 getFloatSettingForKey:@"VA_kMOCoarseGroupingTimeIntervalKeyword" withFallback:v19];
  v21 = v20;
  self->_timeIntervalThresholdForCoarseGroup = v21;
  LODWORD(v21) = 1161527296;
  [v4 getFloatSettingForKey:@"VA_kMOCoarseGroupingDistanceKeyword" withFallback:v21];
  v23 = v22;
  self->_distanceThresholdForCoarseGroup = v23;
  LODWORD(v23) = 1.5;
  [v4 getFloatSettingForKey:@"VA_kMOAOIRangeWeightKeyword" withFallback:v23];
  v25 = v24;
  self->_aoiRangeWeight = v25;
  LODWORD(v25) = 1142292480;
  [v4 getFloatSettingForKey:@"VA_kMOAOIMergingRangeMinimumThresholdKeyword" withFallback:v25];
  v27 = v26;
  self->_aoiMergingRangeMinimumThreshold = v27;
  LODWORD(v27) = 1150681088;
  [v4 getFloatSettingForKey:@"VA_kMOLargeAOIMergingRangeMinimumThresholdKeyword" withFallback:v27];
  self->_largeAoiMergingRangeMinimumThreshold = v28;
  HIDWORD(v29) = 1072483532;
  *&v29 = 0.9;
  [v4 getFloatSettingForKey:@"VA_RecommendedTabVisitFIThreshold" withFallback:v29];
  v31 = v30;
  self->_recommendedTabVisitFIThreshold = v31;
  LODWORD(v31) = 1180762112;
  [v4 getFloatSettingForKey:@"EmotionAttachmentOutingBundleDurationThreshold" withFallback:v31];
  v33 = v32;

  self->_emotionAttachmentBundleDurationThreshold = v33;
  [(MOConfigurationManagerBase *)self->_configurationManager getDoubleSettingForKey:@"outingInviteEventTimeOverlapWithVisitsThreshold" withFallback:1800.0];
  self->_outingInviteEventTimeOverlapWithVisitsThreshold = v34;
  LODWORD(v34) = 1128792064;
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"outingInviteEventDistanceFromVisitEventsThreshold" withFallback:v34];
  self->_outingInviteEventDistanceFromVisitEventsThreshold = v35;
  [(MOConfigurationManagerBase *)self->_configurationManager getDoubleSettingForKey:@"outingInviteEventPhotoTimeThreshold" withFallback:3600.0];
  self->_outingInviteEventPhotoTimeThreshold = v36;
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
  if ([v4 count])
  {
    v5 = [(MOVisitAnnotationManager *)self preprocessEvents:v4];
    v6 = [(MOVisitAnnotationManager *)self postprocessGroupedEvents:v5];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

- (id)preprocessEvents:(id)a3
{
  v4 = a3;
  if (![v4 count])
  {
    v55 = &__NSArray0__struct;
    goto LABEL_41;
  }

  v5 = [(MOAnnotationManager *)self fUniverse];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 getService:v7];

  v84 = v4;
  v9 = [NSArray arrayWithObjects:&v84 count:1];
  [(MOVisitAnnotationManager *)self printGroupedEvents:v9 tag:@"input events"];

  v63 = objc_opt_new();
  v10 = objc_opt_new();
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v61 = v4;
  obj = v4;
  v66 = [obj countByEnumeratingWithState:&v67 objects:v83 count:16];
  v11 = 0;
  if (!v66)
  {
    goto LABEL_35;
  }

  v65 = *v68;
  v62 = v8;
  do
  {
    v12 = 0;
    do
    {
      if (*v68 != v65)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v67 + 1) + 8 * v12);
      [(MOVisitAnnotationManager *)self timeIntervalThresholdForCoarseGroup];
      v15 = v14;
      [(MOVisitAnnotationManager *)self distanceThresholdForCoarseGroup];
      v17 = v16;
      v18 = [v11 endDate];
      v19 = 0.0;
      v20 = 0.0;
      if (v18)
      {
        v21 = v18;
        v22 = [v13 startDate];

        if (v22)
        {
          v23 = [v13 startDate];
          v24 = [v11 endDate];
          [v23 timeIntervalSinceDate:v24];
          v20 = v25;

          if (v20 < 0.0)
          {
            v20 = -v20;
          }
        }
      }

      v26 = [v11 routineEvent];
      v27 = [v26 location];
      if (!v27)
      {
        goto LABEL_14;
      }

      v28 = v27;
      v29 = [v13 routineEvent];
      v30 = [v29 location];

      if (v30)
      {
        v26 = [v11 routineEvent];
        v31 = [v26 location];
        v32 = [v13 routineEvent];
        v33 = [v32 location];
        [v31 distanceFromLocation:v33];
        v19 = v34;

LABEL_14:
      }

      if (v20 > v15 || v19 > v17)
      {
        if ([v10 count])
        {
          [v63 addObject:v10];
        }

        v47 = objc_opt_new();

        [v47 addObject:v13];
        v39 = v11;
        v11 = v13;
        v10 = v47;
      }

      else
      {
        v35 = [v11 endDate];
        if (!v35)
        {
          goto LABEL_23;
        }

        v36 = v35;
        v37 = [v13 startDate];

        if (!v37 || !v8)
        {
          goto LABEL_23;
        }

        v38 = [v11 endDate];
        v39 = [v8 timeZoneAtDate:v38];

        v40 = [v13 startDate];
        v41 = [v8 timeZoneAtDate:v40];

        v42 = [v39 secondsFromGMT];
        if (v42 == [v41 secondsFromGMT])
        {
          v43 = [v13 startDate];
          v44 = [v11 endDate];
          v45 = [v43 isSameDayWithDate:v44 timeZone:v39];

          if (v45)
          {

            v8 = v62;
LABEL_23:
            [v10 addObject:v13];
            v46 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
            {
              v50 = objc_opt_class();
              v51 = NSStringFromClass(v50);
              v52 = [v13 eventIdentifier];
              *buf = 138413570;
              v72 = v51;
              v73 = 2112;
              v74 = v52;
              v75 = 2048;
              v76 = v20;
              v77 = 2048;
              v78 = v19;
              v79 = 2048;
              v80 = v15;
              v81 = 2048;
              v82 = v17;
              _os_log_debug_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "%@: Coarse grouping the base events, add event, %@, interval, %f, distacne, %f, intervalThreshold, %f, distanceThreshold, %f", buf, 0x3Eu);
            }

            v39 = v11;
            v11 = v13;
            goto LABEL_29;
          }
        }

        if ([v10 count])
        {
          [v63 addObject:v10];
        }

        v48 = [NSMutableArray arrayWithObject:v13];
        [v63 addObject:v48];

        v49 = objc_opt_new();
        v11 = 0;
        v10 = v49;
        v8 = v62;
      }

LABEL_29:

      v12 = v12 + 1;
    }

    while (v66 != v12);
    v53 = [obj countByEnumeratingWithState:&v67 objects:v83 count:16];
    v66 = v53;
  }

  while (v53);
LABEL_35:

  if ([v10 count])
  {
    [v63 addObject:v10];
  }

  v54 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
  {
    v57 = objc_opt_class();
    v58 = NSStringFromClass(v57);
    v59 = [obj count];
    v60 = [v63 count];
    *buf = 138412802;
    v72 = v58;
    v73 = 2048;
    v74 = v59;
    v75 = 2048;
    v76 = *&v60;
    _os_log_debug_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEBUG, "%@: preprocessEvents, input events, %lu, output groups, %lu", buf, 0x20u);
  }

  [(MOVisitAnnotationManager *)self printGroupedEvents:v63 tag:@"preprocessed events"];
  v55 = v63;

  v4 = v61;
LABEL_41:

  return v55;
}

- (void)printGroupedEvents:(id)a3 tag:(id)a4
{
  v5 = a3;
  v28 = a4;
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(MOVisitAnnotationManager *)v28 printGroupedEvents:v5 tag:v6];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v5;
  v25 = [obj countByEnumeratingWithState:&v33 objects:v48 count:16];
  if (v25)
  {
    v24 = *v34;
    v7 = 1;
    do
    {
      v8 = 0;
      do
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v8;
        v9 = *(*(&v33 + 1) + 8 * v8);
        v10 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v22 = [v9 count];
          *buf = 138413058;
          v38 = v28;
          v39 = 2112;
          v40 = &stru_1003416B0;
          v41 = 2048;
          v42 = v7;
          v43 = 2048;
          v44 = v22;
          _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%@: %@ group-%lu, count, %lu", buf, 0x2Au);
        }

        v27 = v7;

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v11 = v9;
        v12 = [v11 countByEnumeratingWithState:&v29 objects:v47 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v30;
          do
          {
            v15 = 0;
            do
            {
              if (*v30 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v29 + 1) + 8 * v15);
              v17 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                v18 = [v16 routineEvent];
                v19 = [v18 placeName];
                v20 = [v16 startDate];
                v21 = [v16 endDate];
                *buf = 138413314;
                v38 = v28;
                v39 = 2112;
                v40 = @"   ";
                v41 = 2112;
                v42 = v19;
                v43 = 2112;
                v44 = v20;
                v45 = 2112;
                v46 = v21;
                _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%@: %@ placeName, %@, start, %@, end, %@, ", buf, 0x34u);
              }

              v15 = v15 + 1;
            }

            while (v13 != v15);
            v13 = [v11 countByEnumeratingWithState:&v29 objects:v47 count:16];
          }

          while (v13);
        }

        v7 = v27 + 1;
        v8 = v26 + 1;
      }

      while ((v26 + 1) != v25);
      v25 = [obj countByEnumeratingWithState:&v33 objects:v48 count:16];
    }

    while (v25);
  }
}

- (id)postprocessGroupedEvents:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_opt_new();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v33 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v40 objects:v52 count:16];
    if (!v7)
    {
      goto LABEL_25;
    }

    v8 = v7;
    v9 = *v41;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v40 + 1) + 8 * v10);
        if ([v11 count])
        {
          if ([(MOVisitAnnotationManager *)self containTargetAOIInGroup:v11])
          {
            v12 = [(MOVisitAnnotationManager *)self applyAOIBasedGroupingOnEvents:v11];
            if ([v12 count])
            {
              [v5 addObjectsFromArray:v12];
              v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
              {
                v14 = objc_opt_class();
                v38 = NSStringFromClass(v14);
                v36 = [v11 count];
                v34 = [v12 count];
                v15 = [v12 count];
                v16 = [v11 count];
                *buf = 138413058;
                v17 = @"NO";
                if (v15 < v16)
                {
                  v17 = @"YES";
                }

                v18 = v38;
                v45 = v38;
                v46 = 2048;
                v47 = v36;
                v48 = 2048;
                v49 = v34;
                v50 = 2112;
                v51 = v17;
                v19 = v13;
                v20 = "%@: applyAOIBasedGroupingOnEvents: input events, %lu, output groups, %lu, isGrouped, %@";
                goto LABEL_23;
              }

              goto LABEL_16;
            }
          }

          else
          {
            v12 = [(MOVisitAnnotationManager *)self applyNameBasedGroupingOnEvents:v11];
            if ([v12 count])
            {
              [v5 addObjectsFromArray:v12];
              v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
              {
                v21 = objc_opt_class();
                v39 = NSStringFromClass(v21);
                v37 = [v11 count];
                v35 = [v12 count];
                v22 = [v12 count];
                v23 = [v11 count];
                *buf = 138413058;
                v24 = @"NO";
                if (v22 < v23)
                {
                  v24 = @"YES";
                }

                v18 = v39;
                v45 = v39;
                v46 = 2048;
                v47 = v37;
                v48 = 2048;
                v49 = v35;
                v50 = 2112;
                v51 = v24;
                v19 = v13;
                v20 = "%@: applyNameBasedGroupingOnEvents: input events, %lu, output groups, %lu, isGrouped, %@";
LABEL_23:
                _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, v20, buf, 0x2Au);
              }

LABEL_16:
            }
          }
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v25 = [v6 countByEnumeratingWithState:&v40 objects:v52 count:16];
      v8 = v25;
      if (!v25)
      {
LABEL_25:

        v26 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          v31 = [v6 count];
          v32 = [v5 count];
          *buf = 138412802;
          v45 = v30;
          v46 = 2048;
          v47 = v31;
          v48 = 2048;
          v49 = v32;
          _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "%@: input groups, %lu, output groups, %lu", buf, 0x20u);
        }

        v4 = v33;
        goto LABEL_31;
      }
    }
  }

  v27 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    [(MOVisitAnnotationManager *)self postprocessGroupedEvents:v4, v27];
  }

  [(MOVisitAnnotationManager *)self printGroupedEvents:v4 tag:@"postprocessed events"];
  v5 = &__NSArray0__struct;
LABEL_31:

  return v5;
}

- (BOOL)isGroupingEligibleForEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 routineEvent];
  v6 = [v5 placeName];

  if (!v6)
  {
    goto LABEL_6;
  }

  AOIGroupingEligiblePoiCategories = self->_AOIGroupingEligiblePoiCategories;
  v8 = [v4 routineEvent];
  v9 = [v8 poiCategory];
  v10 = [(NSSet *)AOIGroupingEligiblePoiCategories containsObject:v9];

  v11 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v18 = objc_opt_class();
    v30 = NSStringFromClass(v18);
    v33 = [v4 routineEvent];
    v32 = [v33 placeName];
    v19 = [v32 mask];
    if (v10)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    v29 = v20;
    if ([(MOVisitAnnotationManager *)self snapableEvent:v4])
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v31 = [v4 routineEvent];
    v22 = [v31 poiCategory];
    v23 = [v4 routineEvent];
    v24 = [v23 mapItemLocation];
    v25 = [v4 routineEvent];
    v26 = [v25 mapItemLocation];
    [v26 horizontalUncertainty];
    *buf = 138414083;
    v35 = v30;
    v36 = 2112;
    v37 = v19;
    v38 = 2112;
    v39 = v29;
    v40 = 2112;
    v41 = v28;
    v42 = 2112;
    v43 = v22;
    v44 = 2117;
    v45 = v24;
    v46 = 2048;
    v47 = v27;
    v48 = 2112;
    v49 = v4;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%@: placeName, %@, isAOIGroupingEligible, %@, isSnappable, %@, category, %@, location, %{sensitive}@, mapItem.range, %f, event, %@", buf, 0x52u);
  }

  if (!v10)
  {
    goto LABEL_6;
  }

  v12 = [v4 routineEvent];
  v13 = [v12 mapItemLocation];
  [v13 horizontalUncertainty];
  v15 = v14;

  if (v15 > 100.0)
  {
    v16 = 1;
  }

  else
  {
LABEL_6:
    v16 = 0;
  }

  return v16;
}

- (BOOL)containTargetAOIInGroup:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([(MOVisitAnnotationManager *)self isGroupingEligibleForEvent:*(*(&v11 + 1) + 8 * i), v11])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (BOOL)samePlaceCheckForEvent:(id)a3 otherEvent:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 routineEvent];
  if (![v7 mapItemID])
  {
    goto LABEL_6;
  }

  v8 = [v6 routineEvent];
  if (![v8 mapItemID])
  {

LABEL_6:
    goto LABEL_7;
  }

  v9 = [v5 routineEvent];
  v10 = [v9 mapItemID];
  v11 = [v6 routineEvent];
  v12 = [v11 mapItemID];

  if (v10 == v12)
  {
    goto LABEL_15;
  }

LABEL_7:
  v13 = [v5 routineEvent];
  v14 = [v13 location];
  if (v14)
  {
    v15 = v14;
    v16 = [v6 routineEvent];
    v17 = [v16 location];

    if (v17)
    {
      v18 = [v5 routineEvent];
      v19 = [v18 location];
      v20 = [v6 routineEvent];
      v21 = [v20 location];
      [v19 distanceFromLocation:v21];
      v23 = v22;

      if (v23 < 1.0)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
  }

  v24 = [v5 routineEvent];
  v25 = [v24 placeName];
  if (!v25)
  {
    goto LABEL_17;
  }

  v26 = v25;
  v27 = [v6 routineEvent];
  v28 = [v27 placeName];
  if (!v28)
  {

LABEL_17:
    goto LABEL_18;
  }

  v29 = v28;
  v30 = [v5 routineEvent];
  v31 = [v30 placeName];
  [v6 routineEvent];
  v32 = v5;
  v34 = v33 = v6;
  v35 = [v34 placeName];
  v78 = [v31 isEqualToString:v35];

  v6 = v33;
  v5 = v32;

  if (v78)
  {
LABEL_15:
    v36 = 1;
    goto LABEL_40;
  }

LABEL_18:
  v37 = [v5 routineEvent];
  v38 = [v37 geoAddressObject];
  if (v38)
  {
    v39 = [v6 routineEvent];
    v40 = [v39 geoAddressObject];
    if (v40)
    {
      v41 = v6;
      v79 = [v5 routineEvent];
      v42 = [v79 geoAddressObject];
      v43 = [v42 address];
      v44 = [v43 structuredAddress];
      if ([v44 hasLocality])
      {
        v77 = [v5 routineEvent];
        v76 = [v77 geoAddressObject];
        v75 = [v76 address];
        v74 = [v75 structuredAddress];
        if ([v74 hasThoroughfare])
        {
          v73 = [v41 routineEvent];
          v72 = [v73 geoAddressObject];
          v71 = [v72 address];
          v70 = [v71 structuredAddress];
          if ([v70 hasLocality])
          {
            v69 = [v41 routineEvent];
            v68 = [v69 geoAddressObject];
            v67 = [v68 address];
            v66 = [v67 structuredAddress];
            if ([v66 hasThoroughfare])
            {
              v64 = [v5 routineEvent];
              v63 = [v64 geoAddressObject];
              v62 = [v63 address];
              v61 = [v62 structuredAddress];
              v65 = [v61 locality];
              v60 = [v41 routineEvent];
              v59 = [v60 geoAddressObject];
              v58 = [v59 address];
              v57 = [v58 structuredAddress];
              v56 = [v57 locality];
              if ([v65 isEqualToString:?])
              {
                v54 = [v5 routineEvent];
                v53 = [v54 geoAddressObject];
                v52 = [v53 address];
                v51 = [v52 structuredAddress];
                v55 = [v51 thoroughfare];
                v50 = [v41 routineEvent];
                v49 = [v50 geoAddressObject];
                v48 = [v49 address];
                v47 = [v48 structuredAddress];
                v46 = [v47 thoroughfare];
                v36 = [v55 isEqualToString:v46];
              }

              else
              {
                v36 = 0;
              }
            }

            else
            {
              v36 = 0;
            }
          }

          else
          {
            v36 = 0;
          }
        }

        else
        {
          v36 = 0;
        }
      }

      else
      {
        v36 = 0;
      }

      v6 = v41;
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    v36 = 0;
  }

LABEL_40:
  return v36;
}

- (BOOL)snapableEvent:(id)a3
{
  v5 = a3;
  v6 = [v5 routineEvent];
  v7 = [v6 placeUserType];

  if (!v7)
  {
    v9 = [v5 routineEvent];
    if ([v9 placeType] == 4)
    {
      v8 = 1;
LABEL_17:

      goto LABEL_18;
    }

    v10 = [v5 routineEvent];
    if ([v10 placeType] == 5)
    {
      v8 = 1;
LABEL_16:

      goto LABEL_17;
    }

    v11 = [v5 routineEvent];
    v12 = [v11 placeType];
    if (v12 == 3 && ([v5 routineEvent], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "placeNameConfidence"), v14 = v13, -[MOVisitAnnotationManager visitLabelMediumConfidenceThreshold](self, "visitLabelMediumConfidenceThreshold"), v14 < v15))
    {
      v8 = 1;
    }

    else
    {
      v16 = [v5 routineEvent];
      if ([v16 placeType] == 2)
      {
        v17 = [v5 routineEvent];
        [v17 placeNameConfidence];
        v19 = v18;
        [(MOVisitAnnotationManager *)self aoiVisitLabelConfidentThreshold];
        v8 = v19 < v20;
      }

      else
      {

        v8 = 0;
      }

      if (v12 != 3)
      {
        goto LABEL_15;
      }
    }

LABEL_15:
    goto LABEL_16;
  }

  v8 = 0;
LABEL_18:

  return v8;
}

- (BOOL)likelySamePlaceCheckForEvent:(id)a3 otherEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(MOVisitAnnotationManager *)self samePlaceCheckForEvent:v6 otherEvent:v7])
  {
    if (![(MOVisitAnnotationManager *)self snapableEvent:v6])
    {
      goto LABEL_20;
    }

    v9 = [v6 routineEvent];
    v10 = [v9 location];
    if (v10)
    {
      v11 = v10;
      v12 = [v7 routineEvent];
      v13 = [v12 location];

      if (v13)
      {
        v14 = [v6 routineEvent];
        v15 = [v14 location];
        v16 = [v7 routineEvent];
        v17 = [v16 location];
        [v15 distanceFromLocation:v17];
        v19 = v18;

        v20 = [v7 routineEvent];
        v21 = [v20 mapItemLocation];

        if (v21)
        {
          v22 = [v6 routineEvent];
          v23 = [v22 location];
          v24 = [v7 routineEvent];
          v25 = [v24 mapItemLocation];
          [v23 distanceFromLocation:v25];
          v27 = v26;

          if (v19 >= v27)
          {
            v19 = v27;
          }
        }

LABEL_12:
        v28 = [v7 routineEvent];
        v29 = [v28 mapItemLocation];
        [v29 horizontalUncertainty];
        v31 = v30;
        [(MOVisitAnnotationManager *)self aoiRangeWeight];
        v33 = v31 * v32;

        [(MOVisitAnnotationManager *)self aoiMergingRangeMinimumThreshold];
        if (v33 >= v34)
        {
          v35 = v33;
        }

        else
        {
          v35 = v34;
        }

        largeAOICategories = self->_largeAOICategories;
        v37 = [v7 routineEvent];
        v38 = [v37 poiCategory];
        LODWORD(largeAOICategories) = [(NSSet *)largeAOICategories containsObject:v38];

        if (largeAOICategories)
        {
          [(MOVisitAnnotationManager *)self largeAoiMergingRangeMinimumThreshold];
          if (v35 < v39)
          {
            v35 = v39;
          }
        }

        v40 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          v42 = objc_opt_class();
          v43 = NSStringFromClass(v42);
          v44 = [v7 routineEvent];
          v45 = [v44 mapItemLocation];
          [v45 horizontalUncertainty];
          v47 = v46;
          if (v19 >= v35)
          {
            v48 = @"NO";
          }

          else
          {
            v48 = @"YES";
          }

          v49 = [v7 routineEvent];
          v50 = [v49 placeName];
          v51 = 138413570;
          v52 = v43;
          v53 = 2048;
          v54 = v47;
          v55 = 2048;
          v56 = v19;
          v57 = 2048;
          v58 = v35;
          v59 = 2112;
          v60 = v48;
          v61 = 2112;
          v62 = v50;
          _os_log_debug_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "%@: visit vs. landmark, landmark.size, %f, distance, %f, threshold, %f, results, %@, place name, %@", &v51, 0x3Eu);
        }

        if (v19 < v35)
        {
          goto LABEL_2;
        }

LABEL_20:
        v8 = 0;
        goto LABEL_21;
      }
    }

    else
    {
    }

    v19 = 0.0;
    goto LABEL_12;
  }

LABEL_2:
  v8 = 1;
LABEL_21:

  return v8;
}

- (BOOL)likelySamePlaceCheckForEvent:(id)a3 otherEvents:(id)a4
{
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = a4;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if ([(MOVisitAnnotationManager *)self likelySamePlaceCheckForEvent:v6 otherEvent:*(*(&v14 + 1) + 8 * i), v14])
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (void)transferPlaceForEvent:(id)a3 landmarkEvent:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v29 = [v5 eventIdentifier];
    v30 = [v6 eventIdentifier];
    v36 = [v5 routineEvent];
    v35 = [v36 placeName];
    v31 = [v35 mask];
    v32 = [v6 routineEvent];
    v33 = [v32 placeName];
    v34 = [v33 mask];
    *buf = 138413314;
    v38 = v28;
    v39 = 2112;
    v40 = v29;
    v41 = 2112;
    v42 = v30;
    v43 = 2112;
    v44 = v31;
    v45 = 2112;
    v46 = v34;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%@: merge (transfer) a visit (%@) to other (%@), %@ -> %@", buf, 0x34u);
  }

  v8 = [v6 routineEvent];
  v9 = [v8 placeName];
  v10 = [v5 routineEvent];
  [v10 setPlaceName:v9];

  v11 = [v6 routineEvent];
  [v11 placeNameConfidence];
  v13 = v12;
  v14 = [v5 routineEvent];
  [v14 setPlaceNameConfidence:v13];

  v15 = [v6 routineEvent];
  v16 = [v15 mapItemID];
  v17 = [v5 routineEvent];
  [v17 setMapItemID:v16];

  v18 = [v6 routineEvent];
  v19 = [v18 mapItemLocation];
  v20 = [v5 routineEvent];
  [v20 setMapItemLocation:v19];

  v21 = [v6 routineEvent];
  v22 = [v21 mapItemPlaceType];
  v23 = [v5 routineEvent];
  [v23 setMapItemPlaceType:v22];

  v24 = [v6 routineEvent];
  v25 = [v24 placeMapItem];
  v26 = [v5 routineEvent];
  [v26 setPlaceMapItem:v25];
}

- (id)applyAOIBasedGroupingOnEvents:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v128 = objc_opt_new();
  v6 = objc_opt_new();
  v125 = objc_opt_new();
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v7 = v4;
  v127 = [v7 countByEnumeratingWithState:&v147 objects:v161 count:16];
  if (!v127)
  {
    v35 = 0;
    v9 = 0;
    goto LABEL_83;
  }

  v8 = 0;
  v9 = 0;
  v126 = *v148;
  v130 = v5;
  v124 = v7;
  v134 = self;
  do
  {
    v10 = 0;
    do
    {
      if (*v148 != v126)
      {
        objc_enumerationMutation(v7);
      }

      v129 = v10;
      v11 = *(*(&v147 + 1) + 8 * v10);
      v131 = v6;
      if (v8 == 2)
      {
        v152 = v11;
        v36 = [NSArray arrayWithObjects:&v152 count:1];
        v37 = [(MOVisitAnnotationManager *)self containTargetAOIInGroup:v36];

        if (v37)
        {
          [v128 addObject:v11];
          if (![(MOVisitAnnotationManager *)self samePlaceCheckForEvent:v9 otherEvent:v11])
          {
            v38 = v11;

            v9 = v38;
          }

          v6 = v131;
          [v131 addObject:v11];
          log = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
          {
            v39 = objc_opt_class();
            v40 = NSStringFromClass(v39);
            v41 = [v11 routineEvent];
            v42 = [v41 placeName];
            v43 = [v42 mask];
            *buf = 138412546;
            v157 = v40;
            v158 = 2112;
            v159 = v43;
            v44 = log;
            v45 = "%@: Merging, place name, %@, AOI";
            goto LABEL_73;
          }

          goto LABEL_41;
        }

        v6 = v131;
        if ([(MOVisitAnnotationManager *)self likelySamePlaceCheckForEvent:v11 otherEvents:v131])
        {
          [(MOVisitAnnotationManager *)self transferPlaceForEvent:v11 landmarkEvent:v9];
          [v128 addObject:v11];
          log = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
          {
            v105 = objc_opt_class();
            v40 = NSStringFromClass(v105);
            v41 = [v11 routineEvent];
            v42 = [v41 placeName];
            v43 = [v42 mask];
            *buf = 138412546;
            v157 = v40;
            v158 = 2112;
            v159 = v43;
            v44 = log;
            v45 = "%@: Merging, place name, %@, Merging";
LABEL_73:
            _os_log_debug_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, v45, buf, 0x16u);

            v6 = v131;
          }

LABEL_41:
          v35 = 1;
          v8 = 2;
          goto LABEL_69;
        }

        [v5 addObject:v128];
        v71 = [v11 routineEvent];
        v72 = [v71 placeUserType];

        if (v72 == 1)
        {
          v73 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
          {
            v74 = objc_opt_class();
            v75 = NSStringFromClass(v74);
            v76 = [v11 routineEvent];
            v77 = [v76 placeName];
            v78 = [v77 mask];
            *buf = 138412546;
            v157 = v75;
            v158 = 2112;
            v159 = v78;
            v79 = v73;
            v80 = "%@: drop, place name, %@, Reset";
            goto LABEL_77;
          }
        }

        else
        {
          v92 = [NSMutableArray arrayWithObject:v11];
          [v5 addObject:v92];

          v73 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
          {
            v112 = objc_opt_class();
            v75 = NSStringFromClass(v112);
            v76 = [v11 routineEvent];
            v77 = [v76 placeName];
            v78 = [v77 mask];
            *buf = 138412546;
            v157 = v75;
            v158 = 2112;
            v159 = v78;
            v79 = v73;
            v80 = "%@: Merging, place name, %@, Reset";
LABEL_77:
            _os_log_debug_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEBUG, v80, buf, 0x16u);

            v5 = v130;
          }
        }

        v91 = v129;

        v93 = objc_opt_new();
        v35 = 0;
        v8 = 0;
        v9 = 0;
        v6 = objc_opt_new();
        v128 = v93;

        goto LABEL_70;
      }

      if (v8 == 1)
      {
        v155 = v11;
        v12 = [NSArray arrayWithObjects:&v155 count:1];
        v13 = [(MOVisitAnnotationManager *)self containTargetAOIInGroup:v12];

        if (v13)
        {
          v14 = v11;

          [v6 addObject:v14];
          log = objc_opt_new();
          v143 = 0u;
          v144 = 0u;
          v145 = 0u;
          v146 = 0u;
          v15 = v125;
          v16 = [v15 countByEnumeratingWithState:&v143 objects:v154 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = 0;
            v19 = *v144;
            do
            {
              for (i = 0; i != v17; i = i + 1)
              {
                if (*v144 != v19)
                {
                  objc_enumerationMutation(v15);
                }

                v21 = *(*(&v143 + 1) + 8 * i);
                if ((v18 & 1) != 0 || [(MOVisitAnnotationManager *)self likelySamePlaceCheckForEvent:*(*(&v143 + 1) + 8 * i) otherEvents:v6])
                {
                  [(MOVisitAnnotationManager *)self transferPlaceForEvent:v21 landmarkEvent:v14];
                  v22 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
                  {
                    v24 = objc_opt_class();
                    v25 = NSStringFromClass(v24);
                    v26 = [v21 routineEvent];
                    v27 = [v26 placeName];
                    v28 = [v27 mask];
                    *buf = 138412546;
                    v157 = v25;
                    v158 = 2112;
                    v159 = v28;
                    _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%@: Merging, place name, %@, Merging the cached visit", buf, 0x16u);

                    v6 = v131;
                    v5 = v130;
                  }

                  v18 = 1;
                }

                else
                {
                  [log addObject:v21];
                  v23 = [NSMutableArray arrayWithObject:v21];
                  [v5 addObject:v23];

                  v22 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
                  {
                    v29 = objc_opt_class();
                    v30 = NSStringFromClass(v29);
                    v31 = [v21 routineEvent];
                    v32 = [v31 placeName];
                    v33 = [v32 mask];
                    *buf = 138412546;
                    v157 = v30;
                    v158 = 2112;
                    v159 = v33;
                    _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%@: Merging, place name, %@, Split the cached visit", buf, 0x16u);

                    v5 = v130;
                    v6 = v131;
                  }

                  v18 = 0;
                }

                self = v134;
              }

              v17 = [v15 countByEnumeratingWithState:&v143 objects:v154 count:16];
            }

            while (v17);
          }

          [v128 removeObjectsInArray:log];
          v125 = objc_opt_new();

          [v128 addObject:v14];
          v34 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            v95 = objc_opt_class();
            v96 = NSStringFromClass(v95);
            v97 = [v14 routineEvent];
            v98 = [v97 placeName];
            v99 = [v98 mask];
            *buf = 138412546;
            v157 = v96;
            v158 = 2112;
            v159 = v99;
            _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "%@: Merging, place name, %@, AOI", buf, 0x16u);

            v5 = v130;
            v6 = v131;
          }

          v35 = 1;
          v8 = 2;
          v9 = v14;
          v7 = v124;
          goto LABEL_69;
        }

        if (![(MOVisitAnnotationManager *)self snapableEvent:v11])
        {
          v141 = 0u;
          v142 = 0u;
          v139 = 0u;
          v140 = 0u;
          v54 = v128;
          v55 = [v54 countByEnumeratingWithState:&v139 objects:v153 count:16];
          if (v55)
          {
            v56 = v55;
            v57 = *v140;
            do
            {
              for (j = 0; j != v56; j = j + 1)
              {
                if (*v140 != v57)
                {
                  objc_enumerationMutation(v54);
                }

                v59 = [NSMutableArray arrayWithObject:*(*(&v139 + 1) + 8 * j)];
                [v5 addObject:v59];
              }

              v56 = [v54 countByEnumeratingWithState:&v139 objects:v153 count:16];
            }

            while (v56);
          }

          v60 = [v11 routineEvent];
          v61 = [v60 placeUserType];

          if (v61 == 1)
          {
            v62 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
            v63 = v131;
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
            {
              v64 = objc_opt_class();
              v65 = NSStringFromClass(v64);
              v66 = [v11 routineEvent];
              v67 = [v66 placeName];
              v68 = [v67 mask];
              *buf = 138412546;
              v157 = v65;
              v158 = 2112;
              v159 = v68;
              v69 = v62;
              v70 = "%@: drop, place name, %@, Reset";
              goto LABEL_75;
            }
          }

          else
          {
            v90 = [NSMutableArray arrayWithObject:v11];
            [v5 addObject:v90];

            v62 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
            {
              v111 = objc_opt_class();
              v65 = NSStringFromClass(v111);
              v66 = [v11 routineEvent];
              v67 = [v66 placeName];
              v68 = [v67 mask];
              *buf = 138412546;
              v157 = v65;
              v158 = 2112;
              v159 = v68;
              v69 = v62;
              v70 = "%@: Merging, place name, %@, Reset";
LABEL_75:
              _os_log_debug_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEBUG, v70, buf, 0x16u);

              v5 = v130;
            }

            v63 = v131;
          }

          v91 = v129;

          v128 = objc_opt_new();
          v35 = 0;
          v8 = 0;
          v9 = 0;
          loga = v63;
          v6 = objc_opt_new();
          self = v134;

          goto LABEL_70;
        }

        [v125 addObject:v11];
        [v128 addObject:v11];
        log = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
        {
          v49 = objc_opt_class();
          v50 = NSStringFromClass(v49);
          v51 = [v11 routineEvent];
          v52 = [v51 placeName];
          v53 = [v52 mask];
          *buf = 138412546;
          v157 = v50;
          v158 = 2112;
          v159 = v53;
          _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%@: Merging, place name, %@, Caching", buf, 0x16u);

          v6 = v131;
        }
      }

      else
      {
        v160 = v11;
        v46 = [NSArray arrayWithObjects:&v160 count:1];
        v47 = [(MOVisitAnnotationManager *)self containTargetAOIInGroup:v46];

        if (v47)
        {
          v48 = v11;

          [v6 addObject:v48];
          [v128 addObject:v48];
          log = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
          {
            v100 = objc_opt_class();
            v101 = NSStringFromClass(v100);
            v102 = [v48 routineEvent];
            v103 = [v102 placeName];
            v104 = [v103 mask];
            *buf = 138412546;
            v157 = v101;
            v158 = 2112;
            v159 = v104;
            _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%@: Merging, place name, %@, AOI", buf, 0x16u);

            v7 = v124;
            self = v134;
          }

          v35 = 1;
          v8 = 2;
          v9 = v48;
          goto LABEL_69;
        }

        if (![(MOVisitAnnotationManager *)self snapableEvent:v11])
        {
          v81 = [v11 routineEvent];
          v82 = [v81 placeUserType];

          if (v82 == 1)
          {
            log = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
            if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
            {
              v83 = objc_opt_class();
              v84 = NSStringFromClass(v83);
              v85 = [v11 routineEvent];
              v86 = [v85 placeName];
              v87 = [v86 mask];
              *buf = 138412546;
              v157 = v84;
              v158 = 2112;
              v159 = v87;
              v88 = log;
              v89 = "%@: drop, place name, %@, Passing";
              goto LABEL_79;
            }
          }

          else
          {
            v94 = [NSMutableArray arrayWithObject:v11];
            [v5 addObject:v94];

            log = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
            if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
            {
              v113 = objc_opt_class();
              v84 = NSStringFromClass(v113);
              v85 = [v11 routineEvent];
              v86 = [v85 placeName];
              v87 = [v86 mask];
              *buf = 138412546;
              v157 = v84;
              v158 = 2112;
              v159 = v87;
              v88 = log;
              v89 = "%@: Merging, place name, %@, Passing";
LABEL_79:
              _os_log_debug_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEBUG, v89, buf, 0x16u);

              v7 = v124;
              self = v134;
            }
          }

          v35 = 0;
          v8 = 0;
          goto LABEL_69;
        }

        [v125 addObject:v11];
        [v128 addObject:v11];
        log = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
        {
          v106 = objc_opt_class();
          v107 = NSStringFromClass(v106);
          v108 = [v11 routineEvent];
          v109 = [v108 placeName];
          v110 = [v109 mask];
          *buf = 138412546;
          v157 = v107;
          v158 = 2112;
          v159 = v110;
          _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%@: Merging, place name, %@, Caching", buf, 0x16u);

          v7 = v124;
          self = v134;
        }
      }

      v35 = 0;
      v8 = 1;
LABEL_69:
      v91 = v129;

LABEL_70:
      v10 = v91 + 1;
    }

    while (v10 != v127);
    v114 = [v7 countByEnumeratingWithState:&v147 objects:v161 count:16];
    v127 = v114;
  }

  while (v114);
LABEL_83:

  if ([v128 count])
  {
    if (v35)
    {
      [v5 addObject:v128];
    }

    else
    {
      v115 = v6;
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v116 = v128;
      v117 = [v116 countByEnumeratingWithState:&v135 objects:v151 count:16];
      if (v117)
      {
        v118 = v117;
        v119 = *v136;
        do
        {
          for (k = 0; k != v118; k = k + 1)
          {
            if (*v136 != v119)
            {
              objc_enumerationMutation(v116);
            }

            v121 = [NSMutableArray arrayWithObject:*(*(&v135 + 1) + 8 * k)];
            [v5 addObject:v121];
          }

          v118 = [v116 countByEnumeratingWithState:&v135 objects:v151 count:16];
        }

        while (v118);
      }

      v6 = v115;
    }
  }

  v122 = v5;

  return v5;
}

- (id)applyNameBasedGroupingOnEvents:(id)a3
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
        [(MOVisitAnnotationManager *)self timeIntervalThresholdDefault];
        v15 = v14;
        [(MOVisitAnnotationManager *)self distanceThresholdDefault];
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
            [(MOVisitAnnotationManager *)self timeIntervalThresholdWithSamePlaceName];
            v15 = v29;
            [(MOVisitAnnotationManager *)self distanceThresholdWithSamePlaceName];
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

- (id)getContextEventsForBaseEvents:(id)a3 events:(id)a4 withPatternEvents:(id)a5
{
  v7 = a3;
  v102 = a4;
  v105 = a5;
  v100 = [[NSSortDescriptor alloc] initWithKey:@"endDate" ascending:1];
  v98 = [NSString stringWithFormat:@"%@%@", @"%K = %lu", @" AND %K != %lu"];
  v8 = [NSPredicate predicateWithFormat:@"category", 22, @"lifeEventCategory", 4];
  v9 = [v7 firstObject];
  v10 = [v9 startDate];
  v11 = [v7 lastObject];
  v12 = [v11 endDate];
  v13 = [MOContextAnnotationUtilities predicateWithStartDate:v10 endDate:v12];

  v96 = v13;
  v97 = v8;
  v140[0] = v8;
  v140[1] = v13;
  v14 = [NSArray arrayWithObjects:v140 count:2];
  v99 = [NSCompoundPredicate andPredicateWithSubpredicates:v14];

  v15 = [v7 firstObject];
  v16 = [v15 startDate];
  v17 = [v7 lastObject];
  v18 = [v17 endDate];
  v19 = [MOContextAnnotationUtilities predicateOfSocialContextEventWithStartDate:v16 endData:v18];

  v20 = [v7 firstObject];
  v21 = [v20 startDate];
  v22 = [v7 lastObject];
  v23 = [v22 endDate];
  v24 = [MOContextAnnotationUtilities predicateOfEventsWithPlaySessionsWithStartDate:v21 endData:v23];

  v25 = [v7 firstObject];
  v26 = [v25 startDate];
  v27 = [v7 lastObject];
  v28 = [v27 endDate];
  v29 = [MOContextAnnotationUtilities predicateOfEmotionLogsWithStartDate:v26 endDate:v28];

  v30 = [v7 firstObject];
  v31 = [v30 startDate];
  v32 = [v7 lastObject];
  v33 = [v32 endDate];
  v34 = [MOContextAnnotationUtilities predicateOfInviteEventsWithStartDate:v31 endDate:v33];

  v139[0] = v99;
  v139[1] = v19;
  v94 = v24;
  v95 = v19;
  v139[2] = v24;
  v139[3] = v29;
  v92 = v34;
  v93 = v29;
  v139[4] = v34;
  v35 = [NSArray arrayWithObjects:v139 count:5];
  v36 = [NSCompoundPredicate orPredicateWithSubpredicates:v35];

  v91 = v36;
  v37 = [v102 filteredArrayUsingPredicate:v36];
  v38 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    v39 = objc_opt_class();
    v40 = NSStringFromClass(v39);
    v41 = [v37 count];
    v42 = [v7 firstObject];
    v43 = [v42 startDate];
    v44 = [v7 lastObject];
    v45 = [v44 endDate];
    *buf = 138413058;
    v132 = v40;
    v133 = 2048;
    v134 = v41;
    v135 = 2112;
    v136 = v43;
    v137 = 2112;
    v138 = v45;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "%@: filtered context event count, %lu, startDate, %@, endDate, %@", buf, 0x2Au);
  }

  v108 = v37;
  v46 = v108;
  v101 = v7;
  if ([v105 count])
  {
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    obj = v7;
    v109 = v108;
    v106 = [obj countByEnumeratingWithState:&v122 objects:v130 count:16];
    if (!v106)
    {
      goto LABEL_25;
    }

    v104 = *v123;
    v109 = v108;
    while (1)
    {
      v47 = 0;
      do
      {
        if (*v123 != v104)
        {
          objc_enumerationMutation(obj);
        }

        v107 = v47;
        v112 = *(*(&v122 + 1) + 8 * v47);
        v118 = 0u;
        v119 = 0u;
        v120 = 0u;
        v121 = 0u;
        v116 = v105;
        v48 = [v116 countByEnumeratingWithState:&v118 objects:v129 count:16];
        if (v48)
        {
          v49 = v48;
          v50 = *v119;
          v110 = *v119;
          do
          {
            v51 = 0;
            v114 = v49;
            do
            {
              if (*v119 != v50)
              {
                objc_enumerationMutation(v116);
              }

              v52 = *(*(&v118 + 1) + 8 * v51);
              v53 = [v52 patterns];
              v54 = [v53 objectForKeyedSubscript:@"kEventPatternType"];
              if ([v54 intValue])
              {

LABEL_18:
                goto LABEL_19;
              }

              v55 = [v112 eventIdentifier];
              v56 = [v55 UUIDString];
              v57 = [v52 patterns];
              v58 = [v57 objectForKeyedSubscript:@"kEventPatternAnomalousEventIdentifier"];
              v59 = [v56 isEqualToString:v58];

              if (v59)
              {
                [v108 arrayByAddingObject:v52];
                v53 = v109;
                v109 = v50 = v110;
                v49 = v114;
                goto LABEL_18;
              }

              v50 = v110;
              v49 = v114;
LABEL_19:
              v51 = v51 + 1;
            }

            while (v49 != v51);
            v60 = [v116 countByEnumeratingWithState:&v118 objects:v129 count:16];
            v49 = v60;
          }

          while (v60);
        }

        v47 = v107 + 1;
      }

      while ((v107 + 1) != v106);
      v106 = [obj countByEnumeratingWithState:&v122 objects:v130 count:16];
      if (!v106)
      {
LABEL_25:

        v7 = v101;
        v46 = v109;
        break;
      }
    }
  }

  v115 = [NSString stringWithFormat:@"%@%@", @"%K = %lu", @" AND %K = %lu"];
  v61 = [NSPredicate predicateWithFormat:@"category", 22, @"lifeEventCategory", 4];
  v62 = [v7 firstObject];
  v63 = [v62 startDate];
  v64 = [v63 dateByAddingTimeInterval:-300.0];

  v65 = [v7 lastObject];
  v66 = [v65 endDate];

  v117 = v64;
  v111 = [MOContextAnnotationUtilities predicateWithStartDate:v64 endDate:v66];
  v113 = v61;
  v128[0] = v61;
  v128[1] = v111;
  v67 = [NSArray arrayWithObjects:v128 count:2];
  v68 = [NSCompoundPredicate andPredicateWithSubpredicates:v67];

  v69 = v102;
  v70 = [v102 filteredArrayUsingPredicate:v68];
  v127 = v100;
  v71 = [NSArray arrayWithObjects:&v127 count:1];
  v72 = [v70 sortedArrayUsingDescriptors:v71];

  v73 = v46;
  v74 = [v72 lastObject];

  v75 = v73;
  if (v74)
  {
    v76 = [v72 lastObject];
    v77 = [v76 endDate];

    v75 = v73;
    if (v77)
    {
      v78 = [v76 endDate];
      v79 = [v101 firstObject];
      v80 = [v79 startDate];
      [v78 timeIntervalSinceDate:v80];
      v82 = fabs(v81);

      v69 = v102;
      v75 = v73;
      if (v82 < 300.0)
      {
        v83 = [v72 lastObject];
        v75 = [v73 arrayByAddingObject:v83];
      }
    }
  }

  v84 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
  {
    v85 = objc_opt_class();
    v86 = NSStringFromClass(v85);
    v87 = [v70 count];
    *buf = 138413058;
    v132 = v86;
    v133 = 2048;
    v134 = v87;
    v135 = 2112;
    v136 = v117;
    v137 = 2112;
    v138 = v66;
    _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_INFO, "%@: flightEvents count, %lu, startDate, %@, endDate, %@", buf, 0x2Au);
  }

  v126 = v100;
  v88 = [NSArray arrayWithObjects:&v126 count:1];
  v89 = [v75 sortedArrayUsingDescriptors:v88];

  return v89;
}

- (id)annotateBaseEvents:(id)a3 contextEvents:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (![v7 count])
  {
    v12 = 0;
    goto LABEL_35;
  }

  v9 = [MOEventBundle alloc];
  v10 = +[NSUUID UUID];
  v11 = +[NSDate date];
  v12 = [(MOEventBundle *)v9 initWithBundleIdentifier:v10 creationDate:v11];

  [(MOEventBundle *)v12 setInterfaceType:2];
  [(MOEventBundle *)v12 setBundleSuperType:1];
  [(MOEventBundle *)v12 setBundleSubType:101];
  v13 = [v7 lastObject];
  v14 = [v13 endDate];
  v15 = [(MOAnnotationManager *)self timeZoneManager];
  v16 = [MOTime timeForDate:v14 timeZoneManager:v15];
  [(MOEventBundle *)v12 setTime:v16];

  v17 = [(MOVisitAnnotationManager *)self predominantWeatherFromBaseEvents:v7];
  [(MOEventBundle *)v12 setPredominantWeather:v17];

  [(MOEventBundle *)v12 setPropertiesBasedOnEvents];
  v18 = [v7 firstObject];
  v19 = [v18 startDate];
  [(MOEventBundle *)v12 setStartDate:v19];

  v20 = [v7 lastObject];
  v21 = [v20 endDate];
  [(MOEventBundle *)v12 setEndDate:v21];

  v22 = [(MOVisitAnnotationManager *)self resourcesFromBaseEvents:v7];
  [(MOEventBundle *)v12 setResources:v22];

  v23 = [(MOEventBundle *)v12 events];
  v72 = [NSMutableArray arrayWithArray:v23];

  v73 = [NSPredicate predicateWithFormat:@"%K = %lu", @"provider", 5];
  v74 = [v8 filteredArrayUsingPredicate:v73];
  if ([v74 count])
  {
    [v72 addObjectsFromArray:v74];
  }

  v24 = [v72 copy];
  [(MOEventBundle *)v12 setEvents:v24];

  [(MOVisitAnnotationManager *)self updateActionWithBaseEvents:v7 contextEvents:v8 eventBundle:v12];
  v25 = [(MOEventBundle *)v12 action];
  v26 = [(MOVisitAnnotationManager *)self placeFromBaseEvents:v7 action:v25];
  [(MOEventBundle *)v12 setPlace:v26];

  v27 = [(MOEventBundle *)v12 action];
  if ([v27 actionType] == 10)
  {

LABEL_8:
    v30 = [(MOEventBundle *)v12 place];
    v31 = [v30 placeType];
    if (v31 == 3 && (-[MOEventBundle place](v12, "place"), v4 = objc_claimAutoreleasedReturnValue(), [v4 placeNameConfidence], v32 < 0.9))
    {
    }

    else
    {
      v33 = [(MOEventBundle *)v12 place];
      if ([v33 placeType] != 2)
      {

        if (v31 == 3)
        {
        }

        goto LABEL_18;
      }

      v34 = [(MOEventBundle *)v12 place];
      [v34 placeNameConfidence];
      v36 = v35;

      if (v31 == 3)
      {
      }

      if (v36 >= 0.9)
      {
        goto LABEL_19;
      }
    }

    v30 = [(MOVisitAnnotationManager *)self actionFromBaseEvents:v7];
    [(MOEventBundle *)v12 setAction:v30];
LABEL_18:

    goto LABEL_19;
  }

  v28 = [(MOEventBundle *)v12 action];
  v29 = [v28 actionType];

  if (v29 == 9)
  {
    goto LABEL_8;
  }

LABEL_19:
  v87 = 0;
  v88 = &v87;
  v89 = 0x3032000000;
  v90 = __Block_byref_object_copy__0;
  v91 = __Block_byref_object_dispose__0;
  v92 = objc_opt_new();
  v83 = 0;
  v84 = &v83;
  v85 = 0x2020000000;
  v86 = 0;
  v77 = 0;
  v78 = &v77;
  v79 = 0x3032000000;
  v80 = __Block_byref_object_copy__0;
  v81 = __Block_byref_object_dispose__0;
  v82 = objc_opt_new();
  v76.receiver = self;
  v76.super_class = MOVisitAnnotationManager;
  v37 = [(MOAnnotationManager *)&v76 fUniverse];
  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3221225472;
  v75[2] = __61__MOVisitAnnotationManager_annotateBaseEvents_contextEvents___block_invoke;
  v75[3] = &unk_100336118;
  v75[4] = &v87;
  v75[5] = &v83;
  v75[6] = &v77;
  [MOContextAnnotationUtilities addPhotoResources:v12 universe:v37 handler:v75];

  v38 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    v39 = objc_opt_class();
    v40 = NSStringFromClass(v39);
    v41 = v84[3];
    *buf = 138412546;
    v94 = v40;
    v95 = 2048;
    v96 = v41;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "%@: visit, photoSource, %lu", buf, 0x16u);
  }

  [(MOEventBundle *)v12 setResources:v88[5]];
  [(MOEventBundle *)v12 setPhotoSource:v84[3]];
  v42 = [v78[5] copy];
  [(MOEventBundle *)v12 setPhotoTraits:v42];

  if ([v88[5] count])
  {
    v43 = [(MOEventBundle *)v12 place];
    [v43 placeNameConfidence];
    v45 = v44 < 0.0;

    if (v45)
    {
      v46 = [(MOEventBundle *)v12 place];
      [v46 setPlaceNameConfidence:0.0];
    }
  }

  v47 = [(MOEventBundle *)v12 place];
  v48 = [v47 placeUserType];
  if (v48 != 2)
  {
    v37 = [(MOEventBundle *)v12 place];
    [v37 familiarityIndexLOI];
    if (v49 <= self->_recommendedTabVisitFIThreshold)
    {
      goto LABEL_28;
    }
  }

  if (![(MOEventBundle *)v12 photoSource])
  {
    v69 = [v74 count];
    if (v48 == 2)
    {
      v70 = v69 == 0;

      if (!v70)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v71 = v69 == 0;

      if (!v71)
      {
        goto LABEL_30;
      }
    }

    [(MOEventBundle *)v12 setSummarizationGranularity:1];
    goto LABEL_30;
  }

  if (v48 != 2)
  {
LABEL_28:
  }

LABEL_30:
  v50 = [(MOEventBundle *)v12 place];
  [v50 distanceToHomeInMiles];
  v51 = [NSNumber numberWithDouble:?];
  [(MOEventBundle *)v12 addMetaDataForRankForKey:@"DistanceToHome" value:v51];

  v52 = [(MOEventBundle *)v12 place];
  v53 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v52 locationMode] == 2);
  [(MOEventBundle *)v12 addMetaDataForRankForKey:@"LocationModeTourist" value:v53];

  v54 = [(MOEventBundle *)v12 endDate];
  v55 = [(MOEventBundle *)v12 startDate];
  [v54 timeIntervalSinceDate:v55];
  v57 = v56;

  v58 = [NSNumber numberWithDouble:v57];
  [(MOEventBundle *)v12 addMetaDataForRankForKey:@"VisitDuration" value:v58];

  v59 = [(MOEventBundle *)v12 place];
  [v59 familiarityIndexLOI];
  v60 = [NSNumber numberWithDouble:?];
  [(MOEventBundle *)v12 addMetaDataForRankForKey:@"FamiliarityIndex" value:v60];

  v61 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 24];
  v62 = [(MOEventBundle *)v12 events];
  v63 = [v62 filteredArrayUsingPredicate:v61];

  if ([v63 count])
  {
    [MOContextAnnotationUtilities addStateOfMindResourceForBundle:v12 withEmotionEvents:v63];
    [MOContextAnnotationUtilities addStateOfMindMetaDataForRankForBundle:v12 withEmotionEvents:v63];
  }

  v64 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 25];
  v65 = [(MOEventBundle *)v12 events];
  v66 = [v65 filteredArrayUsingPredicate:v64];

  if ([v66 count])
  {
    v67 = [v66 firstObject];
    [MOContextAnnotationUtilities addInviteResourceForBundle:v12 withInviteEvent:v67];
  }

  [MOVisitAnnotationManager scoreVisitBundleAssets:v12];

  _Block_object_dispose(&v77, 8);
  _Block_object_dispose(&v83, 8);
  _Block_object_dispose(&v87, 8);

LABEL_35:

  return v12;
}

void __61__MOVisitAnnotationManager_annotateBaseEvents_contextEvents___block_invoke(void *a1, void *a2, uint64_t a3, void *a4)
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
  v66 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v76 = objc_opt_new();
  v74 = objc_opt_new();
  v72 = objc_opt_new();
  v97[0] = GEOPOICategoryAirport;
  v97[1] = GEOPOICategoryAirportGate;
  v97[2] = GEOPOICategoryAirportTerminal;
  v6 = [NSArray arrayWithObjects:v97 count:3];
  v68 = [NSSet setWithArray:v6];

  v7 = v4;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v8 = [v3 resources];
  v9 = [v8 countByEnumeratingWithState:&v89 objects:v96 count:16];
  v69 = v4;
  v75 = v5;
  if (v9)
  {
    v10 = v9;
    v11 = *v90;
    v67 = v3;
    do
    {
      v12 = 0;
      do
      {
        if (*v90 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v89 + 1) + 8 * v12);
        if ([v13 type] == 2)
        {
          v14 = [v13 copy];
          v15 = v7;
LABEL_10:
          [v15 addObject:v14];

          goto LABEL_11;
        }

        if ([v13 type] == 3)
        {
          v14 = [v13 copy];
          v15 = v5;
          goto LABEL_10;
        }

        if ([v13 type] == 6)
        {
          v16 = [v3 action];
          if (!v16)
          {
            goto LABEL_26;
          }

          v17 = v16;
          v18 = [v3 action];
          if ([v18 actionType] != 11)
          {
            goto LABEL_25;
          }

          v19 = [v3 place];
          if (!v19)
          {
            goto LABEL_25;
          }

          v20 = v19;
          v73 = [v3 place];
          v21 = [v73 poiCategory];
          if (!v21)
          {

            v7 = v69;
LABEL_25:

            v5 = v75;
LABEL_26:
            [v76 addObject:v13];
            goto LABEL_11;
          }

          v70 = [v3 place];
          v22 = [v70 poiCategory];
          v71 = [v68 containsObject:v22];

          v3 = v67;
          v7 = v69;
          v5 = v75;
          if (v71)
          {
            goto LABEL_26;
          }
        }

        if ([v13 type] == 16)
        {
          v23 = [v13 copy];
          v24 = v74;
        }

        else
        {
          if ([v13 type] != 17)
          {
            goto LABEL_11;
          }

          v23 = [v13 copy];
          v24 = v72;
        }

        [v24 addObject:v23];

LABEL_11:
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v25 = [v8 countByEnumeratingWithState:&v89 objects:v96 count:16];
      v10 = v25;
    }

    while (v25);
  }

  if (![v7 count] && !v5)
  {
    v26 = [v3 place];
    [v26 setPriorityScore:100.0];

    v27 = v66;
    v28 = v76;
    v29 = v74;
    v30 = v72;
    goto LABEL_65;
  }

  if ([v7 count] && objc_msgSend(v5, "count"))
  {
    v31 = [v7 firstObject];
    [v31 setPriorityScore:100.0];

    v32 = [v3 place];
    [v32 setPriorityScore:200.0];

    v33 = [v5 firstObject];
    [v33 setPriorityScore:201.0];

    v34 = [v7 firstObject];
    [v66 addObject:v34];

    v35 = [v5 firstObject];
    [v66 addObject:v35];

    [v7 removeObjectAtIndex:0];
    [v5 removeObjectAtIndex:0];
    if ([v74 count])
    {
      v36 = [v74 firstObject];
      [v36 setPriorityScore:202.0];

LABEL_40:
      v44 = [v74 firstObject];
      [v66 addObject:v44];

      [v74 removeObjectAtIndex:0];
    }
  }

  else
  {
    if ([v7 count])
    {
      v37 = [v7 firstObject];
      [v37 setPriorityScore:100.0];

      v38 = [v3 place];
      [v38 setPriorityScore:200.0];

      v39 = [v7 firstObject];
      [v66 addObject:v39];

      v40 = v7;
    }

    else
    {
      if (![v5 count])
      {
        goto LABEL_41;
      }

      v41 = [v3 place];
      [v41 setPriorityScore:100.0];

      v42 = [v5 firstObject];
      [v42 setPriorityScore:200.0];

      v43 = [v5 firstObject];
      [v66 addObject:v43];

      v40 = v5;
    }

    [v40 removeObjectAtIndex:0];
    if ([v74 count])
    {
      goto LABEL_40;
    }
  }

LABEL_41:
  v45 = v3;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v46 = v7;
  v47 = [v46 countByEnumeratingWithState:&v85 objects:v95 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = 0;
    v50 = *v86;
    do
    {
      v51 = 0;
      v52 = v49;
      do
      {
        if (*v86 != v50)
        {
          objc_enumerationMutation(v46);
        }

        v49 = v52 + 1;
        [*(*(&v85 + 1) + 8 * v51) setPriorityScore:(v52 + 300)];
        v51 = v51 + 1;
        ++v52;
      }

      while (v48 != v51);
      v48 = [v46 countByEnumeratingWithState:&v85 objects:v95 count:16];
    }

    while (v48);
  }

  else
  {
    v49 = 0;
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v53 = v75;
  v54 = [v53 countByEnumeratingWithState:&v81 objects:v94 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v82;
    do
    {
      v57 = 0;
      v58 = v49;
      do
      {
        if (*v82 != v56)
        {
          objc_enumerationMutation(v53);
        }

        v49 = v58 + 1;
        [*(*(&v81 + 1) + 8 * v57) setPriorityScore:(v58 + 300)];
        v57 = v57 + 1;
        ++v58;
      }

      while (v55 != v57);
      v55 = [v53 countByEnumeratingWithState:&v81 objects:v94 count:16];
    }

    while (v55);
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v59 = v74;
  v60 = [v59 countByEnumeratingWithState:&v77 objects:v93 count:16];
  v27 = v66;
  v28 = v76;
  if (v60)
  {
    v61 = v60;
    v62 = *v78;
    v63 = 401.0;
    do
    {
      v64 = 0;
      v65 = v63;
      do
      {
        if (*v78 != v62)
        {
          objc_enumerationMutation(v59);
        }

        v63 = v65 + 1.0;
        [*(*(&v77 + 1) + 8 * v64) setPriorityScore:v65];
        v64 = v64 + 1;
        v65 = v65 + 1.0;
      }

      while (v61 != v64);
      v61 = [v59 countByEnumeratingWithState:&v77 objects:v93 count:16];
    }

    while (v61);
  }

  [v66 addObjectsFromArray:v46];
  [v66 addObjectsFromArray:v53];
  [v66 addObjectsFromArray:v76];
  [v66 addObjectsFromArray:v59];
  v30 = v72;
  [v66 addObjectsFromArray:v72];
  v3 = v45;
  v29 = v74;
  v5 = v75;
LABEL_65:
  [v3 setResources:v27];
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

- (void)updateActionWithBaseEvents:(id)a3 contextEvents:(id)a4 eventBundle:(id)a5
{
  v8 = a3;
  v9 = a4;
  v72 = a5;
  v10 = [v8 firstObject];
  v11 = [v10 poiCategory];

  v12 = [v8 firstObject];
  [v12 confidenceScore];
  v14 = v13;
  [(MOVisitAnnotationManager *)self visitLabelMediumConfidenceThreshold];
  v16 = v15;

  v74 = objc_opt_new();
  v71 = v8;
  [v74 addObjectsFromArray:v8];
  v77 = [NSSet setWithObjects:GEOPOICategoryFoodMarket, GEOPOICategoryStore, 0];
  v76 = [NSSet setWithObjects:GEOPOICategoryRestaurant, GEOPOICategoryCafe, GEOPOICategoryBakery, 0];
  v75 = [NSSet setWithObjects:GEOPOICategoryAirport, GEOPOICategoryAirportGate, GEOPOICategoryAirportTerminal, 0];
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v17 = v9;
  v18 = [v17 countByEnumeratingWithState:&v82 objects:v88 count:16];
  obj = v17;
  if (!v18)
  {
    v78 = 0;
    v34 = 0;
    v35 = v17;
LABEL_33:

    goto LABEL_35;
  }

  v19 = v18;
  v78 = 0;
  v79 = 0;
  v20 = *v83;
  do
  {
    for (i = 0; i != v19; i = i + 1)
    {
      if (*v83 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v82 + 1) + 8 * i);
      v23 = objc_autoreleasePoolPush();
      v24 = [(MOVisitAnnotationManager *)self configurationManager];

      if (v24)
      {
        v25 = [(MOVisitAnnotationManager *)self configurationManager];
        v26 = [v25 getBoolSettingForKey:@"EventBundleManagerOverrideEnableLifeEvent" withFallback:1];
      }

      else
      {
        v26 = 1;
      }

      v27 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v87 = v26;
        _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "eventBundle enable life events (visit annotation manager), %lu", buf, 0xCu);
      }

      if (v26 && [v22 category] == 22 && objc_msgSend(v22, "lifeEventCategory") != 3)
      {
        [v74 addObject:v22];
        if (v14 >= v16)
        {
          goto LABEL_28;
        }

        v33 = [v22 lifeEventCategory];
        if (v33 != 4 && v33 != 2 && v33 != 1)
        {
          goto LABEL_28;
        }

LABEL_22:
        [v22 confidenceScore];
        if (v30 > v79)
        {
          v31 = v22;

          [v31 confidenceScore];
          v78 = v31;
          v79 = v32;
        }

        goto LABEL_28;
      }

      if (!v11)
      {
        goto LABEL_28;
      }

      v28 = [v22 lifeEventCategory];
      if (v28 == 4)
      {
        v29 = v75;
      }

      else if (v28 == 2)
      {
        v29 = v76;
      }

      else
      {
        if (v28 != 1)
        {
          goto LABEL_28;
        }

        v29 = v77;
      }

      if ([v29 containsObject:v11])
      {
        goto LABEL_22;
      }

LABEL_28:
      objc_autoreleasePoolPop(v23);
    }

    v17 = obj;
    v19 = [obj countByEnumeratingWithState:&v82 objects:v88 count:16];
  }

  while (v19);

  if (v78)
  {
    v34 = [[MOAction alloc] initWithLifeEvent:v78];
    v35 = [v78 eventIdentifier];
    [(MOAction *)v34 setSourceEventIdentifier:v35];
    goto LABEL_33;
  }

  v78 = 0;
  v34 = 0;
LABEL_35:
  v80 = v34;
  v73 = +[MOContextAnnotationUtilities predicateOfEventsWithPlaySessions];
  v36 = [v17 filteredArrayUsingPredicate:?];
  v37 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    v38 = [v36 count];
    *buf = 134217984;
    v87 = v38;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "annotateEventBundle Media Events (Playback), %lu", buf, 0xCu);
  }

  v39 = [NSNumber numberWithUnsignedInt:2];
  v40 = [NSArray arrayWithObject:v39];

  v69 = v40;
  v70 = v36;
  v68 = [MOContextAnnotationUtilities annotateEventBundle:v72 playbackMediaEvents:v36 lessSignificantPlaySessionMediaTypes:v40];
  [v74 addObjectsFromArray:?];
  v41 = [v72 startDate];
  v42 = [v72 endDate];
  v43 = [MOContextAnnotationUtilities predicateOfEmotionLogsWithStartDate:v41 endDate:v42];

  v67 = v43;
  v44 = [obj filteredArrayUsingPredicate:v43];
  [(MOVisitAnnotationManager *)self emotionAttachmentBundleDurationThreshold];
  *&v45 = v45;
  v46 = [MOContextAnnotationUtilities annotateEventBundle:v72 dateIntervalEvents:v71 emotionEvents:v44 bundleDurationThreshold:v45];
  [v74 addObjectsFromArray:v46];
  v47 = [v72 startDate];
  v48 = [v72 endDate];
  v49 = [MOContextAnnotationUtilities predicateOfInviteEventsWithStartDate:v47 endDate:v48];

  v50 = [obj filteredArrayUsingPredicate:v49];
  v51 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
  {
    v52 = [v50 count];
    *buf = 134217984;
    v87 = v52;
    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "annotateEventBundle filtered invite events count, %lu", buf, 0xCu);
  }

  *&v53 = self->_outingInviteEventDistanceFromVisitEventsThreshold;
  v54 = [MOContextAnnotationUtilities annotateEventBundle:v72 visitEvents:v71 inviteEvents:v50 withTimeThreshold:self->_outingInviteEventTimeOverlapWithVisitsThreshold withDistanceThreshold:v53 withPhotoTimeThreshold:self->_outingInviteEventPhotoTimeThreshold];
  v55 = v80;
  if (v54)
  {
    v56 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v87 = v54;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "annotateEventBundle used invite event, %@", buf, 0xCu);
    }

    [v74 addObject:v54];
  }

  if (v80)
  {
    v57 = v72;
    [v72 setAction:v80];
    v58 = [v72 action];
    v59 = [v58 actionType];

    if (v59 == 9)
    {
      v60 = 104;
      goto LABEL_49;
    }

    v62 = [v72 action];
    v63 = [v62 actionType];

    if (v63 == 10)
    {
      v60 = 103;
LABEL_49:
      v55 = v80;
LABEL_50:
      [v72 setBundleSubType:v60];
    }

    else
    {
      v64 = [v72 action];
      v65 = [v64 actionType];

      v66 = v65 == 11;
      v55 = v80;
      if (v66)
      {
        v60 = 102;
        goto LABEL_50;
      }
    }

    v61 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      [MOVisitAnnotationManager updateActionWithBaseEvents:v72 contextEvents:v61 eventBundle:?];
    }
  }

  else
  {
    v61 = [(MOVisitAnnotationManager *)self actionFromBaseEvents:v71];
    v57 = v72;
    [v72 setAction:v61];
  }

  [v57 addEvents:v74];
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
  [(MOVisitAnnotationManager *)self visitLabelMediumConfidenceThreshold];
  v12 = v11;
  [(MOVisitAnnotationManager *)self visitLabelHighConfidenceThreshold];
  v14 = v13;
  [(MOVisitAnnotationManager *)self aoiVisitLabelConfidentThreshold];
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
  v4 = [MOContextAnnotationUtilities majorityGroupFromEvents:a3 propertyPath:@"placeName" valuePath:@"duration"];
  v5 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v6)
  {
    v8 = v6;
    v36 = *v38;
    *&v7 = 138412802;
    v33 = v7;
    do
    {
      v9 = 0;
      do
      {
        if (*v38 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v37 + 1) + 8 * v9);
        lessInterestingPoiCategories = self->_lessInterestingPoiCategories;
        [(MOVisitAnnotationManager *)self visitLabelMediumConfidenceThreshold];
        v13 = v12;
        [(MOVisitAnnotationManager *)self visitLabelHighConfidenceThreshold];
        v15 = v14;
        [(MOVisitAnnotationManager *)self aoiVisitLabelConfidentThreshold];
        v17 = v16;
        v18 = [(MOAnnotationManager *)self fUniverse];
        v19 = [MOContextAnnotationUtilities placeFromVisitEvent:v10 preferredCategories:0 poiCategoryBlocklist:lessInterestingPoiCategories mediumConfidenceThreshold:v18 highConfidenceThreshold:v13 aoiConfidenceThreshold:v15 universe:v17];

        v20 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v26 = objc_opt_class();
          v27 = NSStringFromClass(v26);
          v34 = [v19 placeName];
          v28 = [v34 mask];
          v29 = [v10 placeMapItem];
          v30 = [v29 length];
          *buf = v33;
          v42 = v27;
          v43 = 2112;
          v44 = v28;
          v45 = 2048;
          v46 = v30;
          _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%@: resourcesFromBaseEvents, place, %@, mapItem.length, %lu", buf, 0x20u);
        }

        v21 = [MOResource alloc];
        v22 = [v19 placeName];
        v23 = [v10 placeMapItem];
        v24 = [(MOResource *)v21 initWithName:v22 mapItemHandle:v23 priorityScore:-1.0];

        v25 = [v10 eventIdentifier];
        [(MOResource *)v24 setSourceEventIdentifier:v25];

        [v5 addObject:v24];
        v9 = v9 + 1;
      }

      while (v8 != v9);
      v8 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v31 = [v5 copy];
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (id)predominantWeatherFromBaseEvents:(id)a3
{
  v3 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v18;
    v8 = -1.79769313e308;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 endDate];
        v12 = [v10 startDate];
        [v11 timeIntervalSinceDate:v12];
        v14 = v13;

        if (v14 > v8)
        {
          v15 = [v10 predominantWeather];

          v6 = v15;
          v8 = v14;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
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

    if (v19)
    {
      v20 = [v3 place];
      v21 = [v20 promptDescription];
      v17 = [NSString stringWithFormat:@" %@", v21];
    }

    else
    {
      v17 = 0;
    }
  }

  v22 = [v3 persons];
  if (v22)
  {
    v23 = [v3 persons];
    v24 = [v23 count];

    if (!v24)
    {
      v22 = 0;
      if (v14)
      {
        goto LABEL_34;
      }

      goto LABEL_24;
    }

    v25 = [v3 persons];
    v22 = [MOContextAnnotationUtilities andStringFromArray:v25 propertyPath:@"name" maxCount:3];

    if (v22)
    {
      v26 = 1;
    }

    else
    {
      v26 = v14;
    }

    if (v22)
    {
      v27 = v14;
    }

    else
    {
      v27 = 1;
    }

    if (v27 != 1)
    {
      v37 = [v3 persons];
      v38 = [v37 count];

      if (v38 <= 3)
      {
        goto LABEL_34;
      }

      v34 = v5;
      v5 = @"Social Time";
      v32 = v22;
      v22 = 0;
      goto LABEL_31;
    }

    LOBYTE(v14) = v26;
  }

  if (v14)
  {
    goto LABEL_34;
  }

LABEL_24:
  if (!v17)
  {
    v39 = @"Outing";
    goto LABEL_33;
  }

  v28 = [v3 actions];
  if (v28)
  {
    v29 = v28;
    v30 = [v3 actions];
    v31 = [v30 count];

    if (v31)
    {
      v32 = [NSPredicate predicateWithFormat:@"%K = %lu", @"actionType", 3];
      v33 = [v3 actions];
      v34 = [v33 filteredArrayUsingPredicate:v32];

      if ([v34 count])
      {
        v35 = [v34 firstObject];
        v36 = [v35 actionName];

        v5 = v36;
      }

LABEL_31:
      v39 = v5;

      v5 = v32;
LABEL_33:

      v5 = v39;
    }
  }

LABEL_34:
  v40 = objc_opt_new();
  [v40 appendString:v5];
  if (v17)
  {
    [v40 appendString:v17];
  }

  if (v22)
  {
    [v40 appendString:v22];
  }

  v41 = [v40 copy];

  return v41;
}

- (void)printGroupedEvents:(NSObject *)a3 tag:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v4 = 138412802;
  v5 = a1;
  v6 = 2112;
  v7 = &stru_1003416B0;
  v8 = 2048;
  v9 = [a2 count];
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "%@: %@ groupedEvents, total count, %lu", &v4, 0x20u);
}

- (void)postprocessGroupedEvents:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = 138412546;
  v8 = v6;
  v9 = 2048;
  v10 = [a2 count];
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%@: input groups, %lu, output groups, 0", &v7, 0x16u);
}

- (void)updateActionWithBaseEvents:(void *)a1 contextEvents:(NSObject *)a2 eventBundle:.cold.1(void *a1, NSObject *a2)
{
  v3 = [a1 action];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "eventBundle life event action, %@", &v4, 0xCu);
}

- (void)placeFromBaseEvents:(uint64_t)a1 action:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "eventBundle place is an outing worth place, %@", &v2, 0xCu);
}

@end