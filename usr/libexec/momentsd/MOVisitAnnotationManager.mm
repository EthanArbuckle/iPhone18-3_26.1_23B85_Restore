@interface MOVisitAnnotationManager
+ (void)scoreVisitBundleAssets:(id)assets;
- (BOOL)containTargetAOIInGroup:(id)group;
- (BOOL)isGroupingEligibleForEvent:(id)event;
- (BOOL)likelySamePlaceCheckForEvent:(id)event otherEvent:(id)otherEvent;
- (BOOL)likelySamePlaceCheckForEvent:(id)event otherEvents:(id)events;
- (BOOL)samePlaceCheckForEvent:(id)event otherEvent:(id)otherEvent;
- (BOOL)snapableEvent:(id)event;
- (MOVisitAnnotationManager)initWithUniverse:(id)universe;
- (id)actionFromBaseEvents:(id)events;
- (id)annotateBaseEvents:(id)events contextEvents:(id)contextEvents;
- (id)applyAOIBasedGroupingOnEvents:(id)events;
- (id)applyNameBasedGroupingOnEvents:(id)events;
- (id)buildPromptDescriptionForEventBundle:(id)bundle;
- (id)getBaseEvents:(id)events;
- (id)getContextEventsForBaseEvents:(id)events events:(id)a4 withPatternEvents:(id)patternEvents;
- (id)groupBaseEvents:(id)events;
- (id)placeFromBaseEvents:(id)events action:(id)action;
- (id)postprocessGroupedEvents:(id)events;
- (id)predominantWeatherFromBaseEvents:(id)events;
- (id)preprocessEvents:(id)events;
- (id)resourcesFromBaseEvents:(id)events;
- (void)printGroupedEvents:(id)events tag:(id)tag;
- (void)readParametersWithConfigurationManager:(id)manager;
- (void)transferPlaceForEvent:(id)event landmarkEvent:(id)landmarkEvent;
- (void)updateActionWithBaseEvents:(id)events contextEvents:(id)contextEvents eventBundle:(id)bundle;
@end

@implementation MOVisitAnnotationManager

- (MOVisitAnnotationManager)initWithUniverse:(id)universe
{
  universeCopy = universe;
  v38.receiver = self;
  v38.super_class = MOVisitAnnotationManager;
  v5 = [(MOTimeContextAnnotationManager *)&v38 initWithUniverse:universeCopy];
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
    v29 = [universeCopy getService:v28];

    routineManager = [v29 routineManager];
    routineManager = v5->_routineManager;
    v5->_routineManager = routineManager;

    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    v34 = [universeCopy getService:v33];
    configurationManager = v5->_configurationManager;
    v5->_configurationManager = v34;

    [(MOVisitAnnotationManager *)v5 readParametersWithConfigurationManager:v5->_configurationManager];
  }

  return v5;
}

- (void)readParametersWithConfigurationManager:(id)manager
{
  managerCopy = manager;
  *&v5 = 0.75;
  [managerCopy getFloatSettingForKey:@"VA_VisitLabelMediumConfidenceThreshold" withFallback:v5];
  self->_visitLabelMediumConfidenceThreshold = v6;
  HIDWORD(v7) = 1072483532;
  *&v7 = 0.9;
  [managerCopy getFloatSettingForKey:@"VA_VisitLabelHighConfidenceThreshold" withFallback:v7];
  self->_visitLabelHighConfidenceThreshold = v8;
  HIDWORD(v9) = 1071644672;
  *&v9 = 0.5;
  [managerCopy getFloatSettingForKey:@"VA_AOIVisitLabelConfidentThreshold" withFallback:v9];
  v11 = v10;
  self->_aoiVisitLabelConfidentThreshold = v11;
  LODWORD(v11) = 1133903872;
  [managerCopy getFloatSettingForKey:@"VA_AdjacentVisitEventInterval" withFallback:v11];
  v13 = v12;
  self->_timeIntervalThresholdDefault = v13;
  LODWORD(v13) = 1109393408;
  [managerCopy getFloatSettingForKey:@"VA_AdjacentVisitEventMaximumDistanceKeyword" withFallback:v13];
  v15 = v14;
  self->_distanceThresholdDefault = v15;
  LODWORD(v15) = 1163984896;
  [managerCopy getFloatSettingForKey:@"VA_AdjacentVisitEventWithTheSamePlaceNameInterval" withFallback:v15];
  v17 = v16;
  self->_timeIntervalThresholdWithSamePlaceName = v17;
  LODWORD(v17) = -1.0;
  [managerCopy getFloatSettingForKey:@"VA_AdjacentVisitEventWithTheSamePlaceNameMaximumDistance" withFallback:v17];
  v19 = v18;
  self->_distanceThresholdWithSamePlaceName = v19;
  LODWORD(v19) = 1177075712;
  [managerCopy getFloatSettingForKey:@"VA_kMOCoarseGroupingTimeIntervalKeyword" withFallback:v19];
  v21 = v20;
  self->_timeIntervalThresholdForCoarseGroup = v21;
  LODWORD(v21) = 1161527296;
  [managerCopy getFloatSettingForKey:@"VA_kMOCoarseGroupingDistanceKeyword" withFallback:v21];
  v23 = v22;
  self->_distanceThresholdForCoarseGroup = v23;
  LODWORD(v23) = 1.5;
  [managerCopy getFloatSettingForKey:@"VA_kMOAOIRangeWeightKeyword" withFallback:v23];
  v25 = v24;
  self->_aoiRangeWeight = v25;
  LODWORD(v25) = 1142292480;
  [managerCopy getFloatSettingForKey:@"VA_kMOAOIMergingRangeMinimumThresholdKeyword" withFallback:v25];
  v27 = v26;
  self->_aoiMergingRangeMinimumThreshold = v27;
  LODWORD(v27) = 1150681088;
  [managerCopy getFloatSettingForKey:@"VA_kMOLargeAOIMergingRangeMinimumThresholdKeyword" withFallback:v27];
  self->_largeAoiMergingRangeMinimumThreshold = v28;
  HIDWORD(v29) = 1072483532;
  *&v29 = 0.9;
  [managerCopy getFloatSettingForKey:@"VA_RecommendedTabVisitFIThreshold" withFallback:v29];
  v31 = v30;
  self->_recommendedTabVisitFIThreshold = v31;
  LODWORD(v31) = 1180762112;
  [managerCopy getFloatSettingForKey:@"EmotionAttachmentOutingBundleDurationThreshold" withFallback:v31];
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

- (id)getBaseEvents:(id)events
{
  eventsCopy = events;
  v4 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 1];
  v5 = [eventsCopy filteredArrayUsingPredicate:v4];

  return v5;
}

- (id)groupBaseEvents:(id)events
{
  eventsCopy = events;
  if ([eventsCopy count])
  {
    v5 = [(MOVisitAnnotationManager *)self preprocessEvents:eventsCopy];
    v6 = [(MOVisitAnnotationManager *)self postprocessGroupedEvents:v5];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

- (id)preprocessEvents:(id)events
{
  eventsCopy = events;
  if (![eventsCopy count])
  {
    v55 = &__NSArray0__struct;
    goto LABEL_41;
  }

  fUniverse = [(MOAnnotationManager *)self fUniverse];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [fUniverse getService:v7];

  v84 = eventsCopy;
  v9 = [NSArray arrayWithObjects:&v84 count:1];
  [(MOVisitAnnotationManager *)self printGroupedEvents:v9 tag:@"input events"];

  v63 = objc_opt_new();
  v10 = objc_opt_new();
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v61 = eventsCopy;
  obj = eventsCopy;
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
      endDate = [v11 endDate];
      v19 = 0.0;
      v20 = 0.0;
      if (endDate)
      {
        v21 = endDate;
        startDate = [v13 startDate];

        if (startDate)
        {
          startDate2 = [v13 startDate];
          endDate2 = [v11 endDate];
          [startDate2 timeIntervalSinceDate:endDate2];
          v20 = v25;

          if (v20 < 0.0)
          {
            v20 = -v20;
          }
        }
      }

      routineEvent = [v11 routineEvent];
      location = [routineEvent location];
      if (!location)
      {
        goto LABEL_14;
      }

      v28 = location;
      routineEvent2 = [v13 routineEvent];
      location2 = [routineEvent2 location];

      if (location2)
      {
        routineEvent = [v11 routineEvent];
        location3 = [routineEvent location];
        routineEvent3 = [v13 routineEvent];
        location4 = [routineEvent3 location];
        [location3 distanceFromLocation:location4];
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
        endDate3 = [v11 endDate];
        if (!endDate3)
        {
          goto LABEL_23;
        }

        v36 = endDate3;
        startDate3 = [v13 startDate];

        if (!startDate3 || !v8)
        {
          goto LABEL_23;
        }

        endDate4 = [v11 endDate];
        v39 = [v8 timeZoneAtDate:endDate4];

        startDate4 = [v13 startDate];
        v41 = [v8 timeZoneAtDate:startDate4];

        secondsFromGMT = [v39 secondsFromGMT];
        if (secondsFromGMT == [v41 secondsFromGMT])
        {
          startDate5 = [v13 startDate];
          endDate5 = [v11 endDate];
          v45 = [startDate5 isSameDayWithDate:endDate5 timeZone:v39];

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
              eventIdentifier = [v13 eventIdentifier];
              *buf = 138413570;
              v72 = v51;
              v73 = 2112;
              v74 = eventIdentifier;
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

  eventsCopy = v61;
LABEL_41:

  return v55;
}

- (void)printGroupedEvents:(id)events tag:(id)tag
{
  eventsCopy = events;
  tagCopy = tag;
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(MOVisitAnnotationManager *)tagCopy printGroupedEvents:eventsCopy tag:v6];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = eventsCopy;
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
          v38 = tagCopy;
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
                routineEvent = [v16 routineEvent];
                placeName = [routineEvent placeName];
                startDate = [v16 startDate];
                endDate = [v16 endDate];
                *buf = 138413314;
                v38 = tagCopy;
                v39 = 2112;
                v40 = @"   ";
                v41 = 2112;
                v42 = placeName;
                v43 = 2112;
                v44 = startDate;
                v45 = 2112;
                v46 = endDate;
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

- (id)postprocessGroupedEvents:(id)events
{
  eventsCopy = events;
  if ([eventsCopy count])
  {
    v5 = objc_opt_new();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v33 = eventsCopy;
    v6 = eventsCopy;
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

        eventsCopy = v33;
        goto LABEL_31;
      }
    }
  }

  v27 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    [(MOVisitAnnotationManager *)self postprocessGroupedEvents:eventsCopy, v27];
  }

  [(MOVisitAnnotationManager *)self printGroupedEvents:eventsCopy tag:@"postprocessed events"];
  v5 = &__NSArray0__struct;
LABEL_31:

  return v5;
}

- (BOOL)isGroupingEligibleForEvent:(id)event
{
  eventCopy = event;
  routineEvent = [eventCopy routineEvent];
  placeName = [routineEvent placeName];

  if (!placeName)
  {
    goto LABEL_6;
  }

  AOIGroupingEligiblePoiCategories = self->_AOIGroupingEligiblePoiCategories;
  routineEvent2 = [eventCopy routineEvent];
  poiCategory = [routineEvent2 poiCategory];
  v10 = [(NSSet *)AOIGroupingEligiblePoiCategories containsObject:poiCategory];

  v11 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v18 = objc_opt_class();
    v30 = NSStringFromClass(v18);
    routineEvent3 = [eventCopy routineEvent];
    placeName2 = [routineEvent3 placeName];
    mask = [placeName2 mask];
    if (v10)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    v29 = v20;
    if ([(MOVisitAnnotationManager *)self snapableEvent:eventCopy])
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    routineEvent4 = [eventCopy routineEvent];
    poiCategory2 = [routineEvent4 poiCategory];
    routineEvent5 = [eventCopy routineEvent];
    mapItemLocation = [routineEvent5 mapItemLocation];
    routineEvent6 = [eventCopy routineEvent];
    mapItemLocation2 = [routineEvent6 mapItemLocation];
    [mapItemLocation2 horizontalUncertainty];
    *buf = 138414083;
    v35 = v30;
    v36 = 2112;
    v37 = mask;
    v38 = 2112;
    v39 = v29;
    v40 = 2112;
    v41 = v28;
    v42 = 2112;
    v43 = poiCategory2;
    v44 = 2117;
    v45 = mapItemLocation;
    v46 = 2048;
    v47 = v27;
    v48 = 2112;
    v49 = eventCopy;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%@: placeName, %@, isAOIGroupingEligible, %@, isSnappable, %@, category, %@, location, %{sensitive}@, mapItem.range, %f, event, %@", buf, 0x52u);
  }

  if (!v10)
  {
    goto LABEL_6;
  }

  routineEvent7 = [eventCopy routineEvent];
  mapItemLocation3 = [routineEvent7 mapItemLocation];
  [mapItemLocation3 horizontalUncertainty];
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

- (BOOL)containTargetAOIInGroup:(id)group
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  groupCopy = group;
  v5 = [groupCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(groupCopy);
        }

        if ([(MOVisitAnnotationManager *)self isGroupingEligibleForEvent:*(*(&v11 + 1) + 8 * i), v11])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [groupCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (BOOL)samePlaceCheckForEvent:(id)event otherEvent:(id)otherEvent
{
  eventCopy = event;
  otherEventCopy = otherEvent;
  routineEvent = [eventCopy routineEvent];
  if (![routineEvent mapItemID])
  {
    goto LABEL_6;
  }

  routineEvent2 = [otherEventCopy routineEvent];
  if (![routineEvent2 mapItemID])
  {

LABEL_6:
    goto LABEL_7;
  }

  routineEvent3 = [eventCopy routineEvent];
  mapItemID = [routineEvent3 mapItemID];
  routineEvent4 = [otherEventCopy routineEvent];
  mapItemID2 = [routineEvent4 mapItemID];

  if (mapItemID == mapItemID2)
  {
    goto LABEL_15;
  }

LABEL_7:
  routineEvent5 = [eventCopy routineEvent];
  location = [routineEvent5 location];
  if (location)
  {
    v15 = location;
    routineEvent6 = [otherEventCopy routineEvent];
    location2 = [routineEvent6 location];

    if (location2)
    {
      routineEvent7 = [eventCopy routineEvent];
      location3 = [routineEvent7 location];
      routineEvent8 = [otherEventCopy routineEvent];
      location4 = [routineEvent8 location];
      [location3 distanceFromLocation:location4];
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

  routineEvent9 = [eventCopy routineEvent];
  placeName = [routineEvent9 placeName];
  if (!placeName)
  {
    goto LABEL_17;
  }

  v26 = placeName;
  routineEvent10 = [otherEventCopy routineEvent];
  placeName2 = [routineEvent10 placeName];
  if (!placeName2)
  {

LABEL_17:
    goto LABEL_18;
  }

  v29 = placeName2;
  routineEvent11 = [eventCopy routineEvent];
  placeName3 = [routineEvent11 placeName];
  [otherEventCopy routineEvent];
  v32 = eventCopy;
  v34 = v33 = otherEventCopy;
  placeName4 = [v34 placeName];
  v78 = [placeName3 isEqualToString:placeName4];

  otherEventCopy = v33;
  eventCopy = v32;

  if (v78)
  {
LABEL_15:
    v36 = 1;
    goto LABEL_40;
  }

LABEL_18:
  routineEvent12 = [eventCopy routineEvent];
  geoAddressObject = [routineEvent12 geoAddressObject];
  if (geoAddressObject)
  {
    routineEvent13 = [otherEventCopy routineEvent];
    geoAddressObject2 = [routineEvent13 geoAddressObject];
    if (geoAddressObject2)
    {
      v41 = otherEventCopy;
      routineEvent14 = [eventCopy routineEvent];
      geoAddressObject3 = [routineEvent14 geoAddressObject];
      address = [geoAddressObject3 address];
      structuredAddress = [address structuredAddress];
      if ([structuredAddress hasLocality])
      {
        routineEvent15 = [eventCopy routineEvent];
        geoAddressObject4 = [routineEvent15 geoAddressObject];
        address2 = [geoAddressObject4 address];
        structuredAddress2 = [address2 structuredAddress];
        if ([structuredAddress2 hasThoroughfare])
        {
          routineEvent16 = [v41 routineEvent];
          geoAddressObject5 = [routineEvent16 geoAddressObject];
          address3 = [geoAddressObject5 address];
          structuredAddress3 = [address3 structuredAddress];
          if ([structuredAddress3 hasLocality])
          {
            routineEvent17 = [v41 routineEvent];
            geoAddressObject6 = [routineEvent17 geoAddressObject];
            address4 = [geoAddressObject6 address];
            structuredAddress4 = [address4 structuredAddress];
            if ([structuredAddress4 hasThoroughfare])
            {
              routineEvent18 = [eventCopy routineEvent];
              geoAddressObject7 = [routineEvent18 geoAddressObject];
              address5 = [geoAddressObject7 address];
              structuredAddress5 = [address5 structuredAddress];
              locality = [structuredAddress5 locality];
              routineEvent19 = [v41 routineEvent];
              geoAddressObject8 = [routineEvent19 geoAddressObject];
              address6 = [geoAddressObject8 address];
              structuredAddress6 = [address6 structuredAddress];
              locality2 = [structuredAddress6 locality];
              if ([locality isEqualToString:?])
              {
                routineEvent20 = [eventCopy routineEvent];
                geoAddressObject9 = [routineEvent20 geoAddressObject];
                address7 = [geoAddressObject9 address];
                structuredAddress7 = [address7 structuredAddress];
                thoroughfare = [structuredAddress7 thoroughfare];
                routineEvent21 = [v41 routineEvent];
                geoAddressObject10 = [routineEvent21 geoAddressObject];
                address8 = [geoAddressObject10 address];
                structuredAddress8 = [address8 structuredAddress];
                thoroughfare2 = [structuredAddress8 thoroughfare];
                v36 = [thoroughfare isEqualToString:thoroughfare2];
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

      otherEventCopy = v41;
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

- (BOOL)snapableEvent:(id)event
{
  eventCopy = event;
  routineEvent = [eventCopy routineEvent];
  placeUserType = [routineEvent placeUserType];

  if (!placeUserType)
  {
    routineEvent2 = [eventCopy routineEvent];
    if ([routineEvent2 placeType] == 4)
    {
      v8 = 1;
LABEL_17:

      goto LABEL_18;
    }

    routineEvent3 = [eventCopy routineEvent];
    if ([routineEvent3 placeType] == 5)
    {
      v8 = 1;
LABEL_16:

      goto LABEL_17;
    }

    routineEvent4 = [eventCopy routineEvent];
    placeType = [routineEvent4 placeType];
    if (placeType == 3 && ([eventCopy routineEvent], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "placeNameConfidence"), v14 = v13, -[MOVisitAnnotationManager visitLabelMediumConfidenceThreshold](self, "visitLabelMediumConfidenceThreshold"), v14 < v15))
    {
      v8 = 1;
    }

    else
    {
      routineEvent5 = [eventCopy routineEvent];
      if ([routineEvent5 placeType] == 2)
      {
        routineEvent6 = [eventCopy routineEvent];
        [routineEvent6 placeNameConfidence];
        v19 = v18;
        [(MOVisitAnnotationManager *)self aoiVisitLabelConfidentThreshold];
        v8 = v19 < v20;
      }

      else
      {

        v8 = 0;
      }

      if (placeType != 3)
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

- (BOOL)likelySamePlaceCheckForEvent:(id)event otherEvent:(id)otherEvent
{
  eventCopy = event;
  otherEventCopy = otherEvent;
  if (![(MOVisitAnnotationManager *)self samePlaceCheckForEvent:eventCopy otherEvent:otherEventCopy])
  {
    if (![(MOVisitAnnotationManager *)self snapableEvent:eventCopy])
    {
      goto LABEL_20;
    }

    routineEvent = [eventCopy routineEvent];
    location = [routineEvent location];
    if (location)
    {
      v11 = location;
      routineEvent2 = [otherEventCopy routineEvent];
      location2 = [routineEvent2 location];

      if (location2)
      {
        routineEvent3 = [eventCopy routineEvent];
        location3 = [routineEvent3 location];
        routineEvent4 = [otherEventCopy routineEvent];
        location4 = [routineEvent4 location];
        [location3 distanceFromLocation:location4];
        v19 = v18;

        routineEvent5 = [otherEventCopy routineEvent];
        mapItemLocation = [routineEvent5 mapItemLocation];

        if (mapItemLocation)
        {
          routineEvent6 = [eventCopy routineEvent];
          location5 = [routineEvent6 location];
          routineEvent7 = [otherEventCopy routineEvent];
          mapItemLocation2 = [routineEvent7 mapItemLocation];
          [location5 distanceFromLocation:mapItemLocation2];
          v27 = v26;

          if (v19 >= v27)
          {
            v19 = v27;
          }
        }

LABEL_12:
        routineEvent8 = [otherEventCopy routineEvent];
        mapItemLocation3 = [routineEvent8 mapItemLocation];
        [mapItemLocation3 horizontalUncertainty];
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
        routineEvent9 = [otherEventCopy routineEvent];
        poiCategory = [routineEvent9 poiCategory];
        LODWORD(largeAOICategories) = [(NSSet *)largeAOICategories containsObject:poiCategory];

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
          routineEvent10 = [otherEventCopy routineEvent];
          mapItemLocation4 = [routineEvent10 mapItemLocation];
          [mapItemLocation4 horizontalUncertainty];
          v47 = v46;
          if (v19 >= v35)
          {
            v48 = @"NO";
          }

          else
          {
            v48 = @"YES";
          }

          routineEvent11 = [otherEventCopy routineEvent];
          placeName = [routineEvent11 placeName];
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
          v62 = placeName;
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

- (BOOL)likelySamePlaceCheckForEvent:(id)event otherEvents:(id)events
{
  eventCopy = event;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  eventsCopy = events;
  v8 = [eventsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(eventsCopy);
        }

        if ([(MOVisitAnnotationManager *)self likelySamePlaceCheckForEvent:eventCopy otherEvent:*(*(&v14 + 1) + 8 * i), v14])
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v9 = [eventsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)transferPlaceForEvent:(id)event landmarkEvent:(id)landmarkEvent
{
  eventCopy = event;
  landmarkEventCopy = landmarkEvent;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    eventIdentifier = [eventCopy eventIdentifier];
    eventIdentifier2 = [landmarkEventCopy eventIdentifier];
    routineEvent = [eventCopy routineEvent];
    placeName = [routineEvent placeName];
    mask = [placeName mask];
    routineEvent2 = [landmarkEventCopy routineEvent];
    placeName2 = [routineEvent2 placeName];
    mask2 = [placeName2 mask];
    *buf = 138413314;
    v38 = v28;
    v39 = 2112;
    v40 = eventIdentifier;
    v41 = 2112;
    v42 = eventIdentifier2;
    v43 = 2112;
    v44 = mask;
    v45 = 2112;
    v46 = mask2;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%@: merge (transfer) a visit (%@) to other (%@), %@ -> %@", buf, 0x34u);
  }

  routineEvent3 = [landmarkEventCopy routineEvent];
  placeName3 = [routineEvent3 placeName];
  routineEvent4 = [eventCopy routineEvent];
  [routineEvent4 setPlaceName:placeName3];

  routineEvent5 = [landmarkEventCopy routineEvent];
  [routineEvent5 placeNameConfidence];
  v13 = v12;
  routineEvent6 = [eventCopy routineEvent];
  [routineEvent6 setPlaceNameConfidence:v13];

  routineEvent7 = [landmarkEventCopy routineEvent];
  mapItemID = [routineEvent7 mapItemID];
  routineEvent8 = [eventCopy routineEvent];
  [routineEvent8 setMapItemID:mapItemID];

  routineEvent9 = [landmarkEventCopy routineEvent];
  mapItemLocation = [routineEvent9 mapItemLocation];
  routineEvent10 = [eventCopy routineEvent];
  [routineEvent10 setMapItemLocation:mapItemLocation];

  routineEvent11 = [landmarkEventCopy routineEvent];
  mapItemPlaceType = [routineEvent11 mapItemPlaceType];
  routineEvent12 = [eventCopy routineEvent];
  [routineEvent12 setMapItemPlaceType:mapItemPlaceType];

  routineEvent13 = [landmarkEventCopy routineEvent];
  placeMapItem = [routineEvent13 placeMapItem];
  routineEvent14 = [eventCopy routineEvent];
  [routineEvent14 setPlaceMapItem:placeMapItem];
}

- (id)applyAOIBasedGroupingOnEvents:(id)events
{
  eventsCopy = events;
  v5 = objc_opt_new();
  v128 = objc_opt_new();
  v6 = objc_opt_new();
  v125 = objc_opt_new();
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v7 = eventsCopy;
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
  selfCopy = self;
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
            routineEvent = [v11 routineEvent];
            placeName = [routineEvent placeName];
            mask = [placeName mask];
            *buf = 138412546;
            v157 = v40;
            v158 = 2112;
            v159 = mask;
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
            routineEvent = [v11 routineEvent];
            placeName = [routineEvent placeName];
            mask = [placeName mask];
            *buf = 138412546;
            v157 = v40;
            v158 = 2112;
            v159 = mask;
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
        routineEvent2 = [v11 routineEvent];
        placeUserType = [routineEvent2 placeUserType];

        if (placeUserType == 1)
        {
          v73 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
          {
            v74 = objc_opt_class();
            v75 = NSStringFromClass(v74);
            routineEvent3 = [v11 routineEvent];
            placeName2 = [routineEvent3 placeName];
            mask2 = [placeName2 mask];
            *buf = 138412546;
            v157 = v75;
            v158 = 2112;
            v159 = mask2;
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
            routineEvent3 = [v11 routineEvent];
            placeName2 = [routineEvent3 placeName];
            mask2 = [placeName2 mask];
            *buf = 138412546;
            v157 = v75;
            v158 = 2112;
            v159 = mask2;
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
                    routineEvent4 = [v21 routineEvent];
                    placeName3 = [routineEvent4 placeName];
                    mask3 = [placeName3 mask];
                    *buf = 138412546;
                    v157 = v25;
                    v158 = 2112;
                    v159 = mask3;
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
                    routineEvent5 = [v21 routineEvent];
                    placeName4 = [routineEvent5 placeName];
                    mask4 = [placeName4 mask];
                    *buf = 138412546;
                    v157 = v30;
                    v158 = 2112;
                    v159 = mask4;
                    _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%@: Merging, place name, %@, Split the cached visit", buf, 0x16u);

                    v5 = v130;
                    v6 = v131;
                  }

                  v18 = 0;
                }

                self = selfCopy;
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
            routineEvent6 = [v14 routineEvent];
            placeName5 = [routineEvent6 placeName];
            mask5 = [placeName5 mask];
            *buf = 138412546;
            v157 = v96;
            v158 = 2112;
            v159 = mask5;
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

          routineEvent7 = [v11 routineEvent];
          placeUserType2 = [routineEvent7 placeUserType];

          if (placeUserType2 == 1)
          {
            v62 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
            v63 = v131;
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
            {
              v64 = objc_opt_class();
              v65 = NSStringFromClass(v64);
              routineEvent8 = [v11 routineEvent];
              placeName6 = [routineEvent8 placeName];
              mask6 = [placeName6 mask];
              *buf = 138412546;
              v157 = v65;
              v158 = 2112;
              v159 = mask6;
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
              routineEvent8 = [v11 routineEvent];
              placeName6 = [routineEvent8 placeName];
              mask6 = [placeName6 mask];
              *buf = 138412546;
              v157 = v65;
              v158 = 2112;
              v159 = mask6;
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
          self = selfCopy;

          goto LABEL_70;
        }

        [v125 addObject:v11];
        [v128 addObject:v11];
        log = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
        {
          v49 = objc_opt_class();
          v50 = NSStringFromClass(v49);
          routineEvent9 = [v11 routineEvent];
          placeName7 = [routineEvent9 placeName];
          mask7 = [placeName7 mask];
          *buf = 138412546;
          v157 = v50;
          v158 = 2112;
          v159 = mask7;
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
            routineEvent10 = [v48 routineEvent];
            placeName8 = [routineEvent10 placeName];
            mask8 = [placeName8 mask];
            *buf = 138412546;
            v157 = v101;
            v158 = 2112;
            v159 = mask8;
            _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%@: Merging, place name, %@, AOI", buf, 0x16u);

            v7 = v124;
            self = selfCopy;
          }

          v35 = 1;
          v8 = 2;
          v9 = v48;
          goto LABEL_69;
        }

        if (![(MOVisitAnnotationManager *)self snapableEvent:v11])
        {
          routineEvent11 = [v11 routineEvent];
          placeUserType3 = [routineEvent11 placeUserType];

          if (placeUserType3 == 1)
          {
            log = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
            if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
            {
              v83 = objc_opt_class();
              v84 = NSStringFromClass(v83);
              routineEvent12 = [v11 routineEvent];
              placeName9 = [routineEvent12 placeName];
              mask9 = [placeName9 mask];
              *buf = 138412546;
              v157 = v84;
              v158 = 2112;
              v159 = mask9;
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
              routineEvent12 = [v11 routineEvent];
              placeName9 = [routineEvent12 placeName];
              mask9 = [placeName9 mask];
              *buf = 138412546;
              v157 = v84;
              v158 = 2112;
              v159 = mask9;
              v88 = log;
              v89 = "%@: Merging, place name, %@, Passing";
LABEL_79:
              _os_log_debug_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEBUG, v89, buf, 0x16u);

              v7 = v124;
              self = selfCopy;
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
          routineEvent13 = [v11 routineEvent];
          placeName10 = [routineEvent13 placeName];
          mask10 = [placeName10 mask];
          *buf = 138412546;
          v157 = v107;
          v158 = 2112;
          v159 = mask10;
          _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%@: Merging, place name, %@, Caching", buf, 0x16u);

          v7 = v124;
          self = selfCopy;
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

- (id)applyNameBasedGroupingOnEvents:(id)events
{
  eventsCopy = events;
  if (![eventsCopy count])
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
  v57 = eventsCopy;
  obj = eventsCopy;
  v63 = [obj countByEnumeratingWithState:&v64 objects:v80 count:16];
  v7 = 0;
  if (!v63)
  {
    goto LABEL_45;
  }

  v8 = *v65;
  v61 = *v65;
  selfCopy = self;
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
        placeName = [v7 placeName];
        if (!placeName)
        {
          placeName2 = [v10 placeName];
          if (!placeName2)
          {
            placeName2 = 0;
            goto LABEL_27;
          }
        }

        placeName3 = [v7 placeName];
        if (placeName3)
        {
          v20 = placeName3;
          placeName4 = [v10 placeName];
          if (placeName4)
          {
            v22 = placeName4;
            placeName5 = [v7 placeName];
            placeName6 = [v10 placeName];
            v25 = [placeName5 isEqualToString:placeName6];

            if (placeName)
            {

              self = selfCopy;
              v5 = v59;
              if (!v25)
              {
LABEL_30:
                startDate = [v10 startDate];
                endDate = [v7 endDate];
                [startDate timeIntervalSinceDate:endDate];
                v34 = v33;

                location = [v7 location];
                v36 = 0.0;
                if (location)
                {
                  v37 = location;
                  location2 = [v10 location];

                  if (location2)
                  {
                    location3 = [v7 location];
                    location4 = [v10 location];
                    [location3 distanceFromLocation:location4];
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
                  eventIdentifier = [v10 eventIdentifier];
                  *buf = 138413570;
                  v69 = v47;
                  v70 = 2112;
                  v71 = *&eventIdentifier;
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

              self = selfCopy;
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
            placeName = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
            if (os_log_type_enabled(placeName, OS_LOG_TYPE_DEBUG))
            {
              v51 = objc_opt_class();
              v52 = NSStringFromClass(v51);
              eventIdentifier2 = [v10 eventIdentifier];
              *buf = 138412546;
              v69 = v52;
              v70 = 2112;
              v71 = *&eventIdentifier2;
              _os_log_debug_impl(&_mh_execute_header, placeName, OS_LOG_TYPE_DEBUG, "%@: Grouping the base events, the same place name, %@", buf, 0x16u);
            }

LABEL_29:

            goto LABEL_30;
          }
        }

        if (!placeName)
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
        eventIdentifier3 = [v7 eventIdentifier];
        *buf = 138412546;
        v69 = v27;
        v70 = 2112;
        v71 = *&eventIdentifier3;
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

  eventsCopy = v57;
LABEL_49:

  return v55;
}

- (id)getContextEventsForBaseEvents:(id)events events:(id)a4 withPatternEvents:(id)patternEvents
{
  eventsCopy = events;
  v102 = a4;
  patternEventsCopy = patternEvents;
  v100 = [[NSSortDescriptor alloc] initWithKey:@"endDate" ascending:1];
  v98 = [NSString stringWithFormat:@"%@%@", @"%K = %lu", @" AND %K != %lu"];
  v8 = [NSPredicate predicateWithFormat:@"category", 22, @"lifeEventCategory", 4];
  firstObject = [eventsCopy firstObject];
  startDate = [firstObject startDate];
  lastObject = [eventsCopy lastObject];
  endDate = [lastObject endDate];
  v13 = [MOContextAnnotationUtilities predicateWithStartDate:startDate endDate:endDate];

  v96 = v13;
  v97 = v8;
  v140[0] = v8;
  v140[1] = v13;
  v14 = [NSArray arrayWithObjects:v140 count:2];
  v99 = [NSCompoundPredicate andPredicateWithSubpredicates:v14];

  firstObject2 = [eventsCopy firstObject];
  startDate2 = [firstObject2 startDate];
  lastObject2 = [eventsCopy lastObject];
  endDate2 = [lastObject2 endDate];
  v19 = [MOContextAnnotationUtilities predicateOfSocialContextEventWithStartDate:startDate2 endData:endDate2];

  firstObject3 = [eventsCopy firstObject];
  startDate3 = [firstObject3 startDate];
  lastObject3 = [eventsCopy lastObject];
  endDate3 = [lastObject3 endDate];
  v24 = [MOContextAnnotationUtilities predicateOfEventsWithPlaySessionsWithStartDate:startDate3 endData:endDate3];

  firstObject4 = [eventsCopy firstObject];
  startDate4 = [firstObject4 startDate];
  lastObject4 = [eventsCopy lastObject];
  endDate4 = [lastObject4 endDate];
  v29 = [MOContextAnnotationUtilities predicateOfEmotionLogsWithStartDate:startDate4 endDate:endDate4];

  firstObject5 = [eventsCopy firstObject];
  startDate5 = [firstObject5 startDate];
  lastObject5 = [eventsCopy lastObject];
  endDate5 = [lastObject5 endDate];
  v34 = [MOContextAnnotationUtilities predicateOfInviteEventsWithStartDate:startDate5 endDate:endDate5];

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
    firstObject6 = [eventsCopy firstObject];
    startDate6 = [firstObject6 startDate];
    lastObject6 = [eventsCopy lastObject];
    endDate6 = [lastObject6 endDate];
    *buf = 138413058;
    v132 = v40;
    v133 = 2048;
    v134 = v41;
    v135 = 2112;
    v136 = startDate6;
    v137 = 2112;
    v138 = endDate6;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "%@: filtered context event count, %lu, startDate, %@, endDate, %@", buf, 0x2Au);
  }

  v108 = v37;
  v46 = v108;
  v101 = eventsCopy;
  if ([patternEventsCopy count])
  {
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    obj = eventsCopy;
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
        v116 = patternEventsCopy;
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
              patterns = [v52 patterns];
              v54 = [patterns objectForKeyedSubscript:@"kEventPatternType"];
              if ([v54 intValue])
              {

LABEL_18:
                goto LABEL_19;
              }

              eventIdentifier = [v112 eventIdentifier];
              uUIDString = [eventIdentifier UUIDString];
              patterns2 = [v52 patterns];
              v58 = [patterns2 objectForKeyedSubscript:@"kEventPatternAnomalousEventIdentifier"];
              v59 = [uUIDString isEqualToString:v58];

              if (v59)
              {
                [v108 arrayByAddingObject:v52];
                patterns = v109;
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

        eventsCopy = v101;
        v46 = v109;
        break;
      }
    }
  }

  v115 = [NSString stringWithFormat:@"%@%@", @"%K = %lu", @" AND %K = %lu"];
  v61 = [NSPredicate predicateWithFormat:@"category", 22, @"lifeEventCategory", 4];
  firstObject7 = [eventsCopy firstObject];
  startDate7 = [firstObject7 startDate];
  v64 = [startDate7 dateByAddingTimeInterval:-300.0];

  lastObject7 = [eventsCopy lastObject];
  endDate7 = [lastObject7 endDate];

  v117 = v64;
  v111 = [MOContextAnnotationUtilities predicateWithStartDate:v64 endDate:endDate7];
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
  lastObject8 = [v72 lastObject];

  v75 = v73;
  if (lastObject8)
  {
    lastObject9 = [v72 lastObject];
    endDate8 = [lastObject9 endDate];

    v75 = v73;
    if (endDate8)
    {
      endDate9 = [lastObject9 endDate];
      firstObject8 = [v101 firstObject];
      startDate8 = [firstObject8 startDate];
      [endDate9 timeIntervalSinceDate:startDate8];
      v82 = fabs(v81);

      v69 = v102;
      v75 = v73;
      if (v82 < 300.0)
      {
        lastObject10 = [v72 lastObject];
        v75 = [v73 arrayByAddingObject:lastObject10];
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
    v138 = endDate7;
    _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_INFO, "%@: flightEvents count, %lu, startDate, %@, endDate, %@", buf, 0x2Au);
  }

  v126 = v100;
  v88 = [NSArray arrayWithObjects:&v126 count:1];
  v89 = [v75 sortedArrayUsingDescriptors:v88];

  return v89;
}

- (id)annotateBaseEvents:(id)events contextEvents:(id)contextEvents
{
  eventsCopy = events;
  contextEventsCopy = contextEvents;
  if (![eventsCopy count])
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
  lastObject = [eventsCopy lastObject];
  endDate = [lastObject endDate];
  timeZoneManager = [(MOAnnotationManager *)self timeZoneManager];
  v16 = [MOTime timeForDate:endDate timeZoneManager:timeZoneManager];
  [(MOEventBundle *)v12 setTime:v16];

  v17 = [(MOVisitAnnotationManager *)self predominantWeatherFromBaseEvents:eventsCopy];
  [(MOEventBundle *)v12 setPredominantWeather:v17];

  [(MOEventBundle *)v12 setPropertiesBasedOnEvents];
  firstObject = [eventsCopy firstObject];
  startDate = [firstObject startDate];
  [(MOEventBundle *)v12 setStartDate:startDate];

  lastObject2 = [eventsCopy lastObject];
  endDate2 = [lastObject2 endDate];
  [(MOEventBundle *)v12 setEndDate:endDate2];

  v22 = [(MOVisitAnnotationManager *)self resourcesFromBaseEvents:eventsCopy];
  [(MOEventBundle *)v12 setResources:v22];

  events = [(MOEventBundle *)v12 events];
  v72 = [NSMutableArray arrayWithArray:events];

  v73 = [NSPredicate predicateWithFormat:@"%K = %lu", @"provider", 5];
  v74 = [contextEventsCopy filteredArrayUsingPredicate:v73];
  if ([v74 count])
  {
    [v72 addObjectsFromArray:v74];
  }

  v24 = [v72 copy];
  [(MOEventBundle *)v12 setEvents:v24];

  [(MOVisitAnnotationManager *)self updateActionWithBaseEvents:eventsCopy contextEvents:contextEventsCopy eventBundle:v12];
  action = [(MOEventBundle *)v12 action];
  v26 = [(MOVisitAnnotationManager *)self placeFromBaseEvents:eventsCopy action:action];
  [(MOEventBundle *)v12 setPlace:v26];

  action2 = [(MOEventBundle *)v12 action];
  if ([action2 actionType] == 10)
  {

LABEL_8:
    place = [(MOEventBundle *)v12 place];
    placeType = [place placeType];
    if (placeType == 3 && (-[MOEventBundle place](v12, "place"), v4 = objc_claimAutoreleasedReturnValue(), [v4 placeNameConfidence], v32 < 0.9))
    {
    }

    else
    {
      place2 = [(MOEventBundle *)v12 place];
      if ([place2 placeType] != 2)
      {

        if (placeType == 3)
        {
        }

        goto LABEL_18;
      }

      place3 = [(MOEventBundle *)v12 place];
      [place3 placeNameConfidence];
      v36 = v35;

      if (placeType == 3)
      {
      }

      if (v36 >= 0.9)
      {
        goto LABEL_19;
      }
    }

    place = [(MOVisitAnnotationManager *)self actionFromBaseEvents:eventsCopy];
    [(MOEventBundle *)v12 setAction:place];
LABEL_18:

    goto LABEL_19;
  }

  action3 = [(MOEventBundle *)v12 action];
  actionType = [action3 actionType];

  if (actionType == 9)
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
  fUniverse = [(MOAnnotationManager *)&v76 fUniverse];
  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3221225472;
  v75[2] = __61__MOVisitAnnotationManager_annotateBaseEvents_contextEvents___block_invoke;
  v75[3] = &unk_100336118;
  v75[4] = &v87;
  v75[5] = &v83;
  v75[6] = &v77;
  [MOContextAnnotationUtilities addPhotoResources:v12 universe:fUniverse handler:v75];

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
    place4 = [(MOEventBundle *)v12 place];
    [place4 placeNameConfidence];
    v45 = v44 < 0.0;

    if (v45)
    {
      place5 = [(MOEventBundle *)v12 place];
      [place5 setPlaceNameConfidence:0.0];
    }
  }

  place6 = [(MOEventBundle *)v12 place];
  placeUserType = [place6 placeUserType];
  if (placeUserType != 2)
  {
    fUniverse = [(MOEventBundle *)v12 place];
    [fUniverse familiarityIndexLOI];
    if (v49 <= self->_recommendedTabVisitFIThreshold)
    {
      goto LABEL_28;
    }
  }

  if (![(MOEventBundle *)v12 photoSource])
  {
    v69 = [v74 count];
    if (placeUserType == 2)
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

  if (placeUserType != 2)
  {
LABEL_28:
  }

LABEL_30:
  place7 = [(MOEventBundle *)v12 place];
  [place7 distanceToHomeInMiles];
  v51 = [NSNumber numberWithDouble:?];
  [(MOEventBundle *)v12 addMetaDataForRankForKey:@"DistanceToHome" value:v51];

  place8 = [(MOEventBundle *)v12 place];
  v53 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [place8 locationMode] == 2);
  [(MOEventBundle *)v12 addMetaDataForRankForKey:@"LocationModeTourist" value:v53];

  endDate3 = [(MOEventBundle *)v12 endDate];
  startDate2 = [(MOEventBundle *)v12 startDate];
  [endDate3 timeIntervalSinceDate:startDate2];
  v57 = v56;

  v58 = [NSNumber numberWithDouble:v57];
  [(MOEventBundle *)v12 addMetaDataForRankForKey:@"VisitDuration" value:v58];

  place9 = [(MOEventBundle *)v12 place];
  [place9 familiarityIndexLOI];
  v60 = [NSNumber numberWithDouble:?];
  [(MOEventBundle *)v12 addMetaDataForRankForKey:@"FamiliarityIndex" value:v60];

  v61 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 24];
  events2 = [(MOEventBundle *)v12 events];
  v63 = [events2 filteredArrayUsingPredicate:v61];

  if ([v63 count])
  {
    [MOContextAnnotationUtilities addStateOfMindResourceForBundle:v12 withEmotionEvents:v63];
    [MOContextAnnotationUtilities addStateOfMindMetaDataForRankForBundle:v12 withEmotionEvents:v63];
  }

  v64 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 25];
  events3 = [(MOEventBundle *)v12 events];
  v66 = [events3 filteredArrayUsingPredicate:v64];

  if ([v66 count])
  {
    firstObject2 = [v66 firstObject];
    [MOContextAnnotationUtilities addInviteResourceForBundle:v12 withInviteEvent:firstObject2];
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

+ (void)scoreVisitBundleAssets:(id)assets
{
  assetsCopy = assets;
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
  resources = [assetsCopy resources];
  v9 = [resources countByEnumeratingWithState:&v89 objects:v96 count:16];
  v69 = v4;
  v75 = v5;
  if (v9)
  {
    v10 = v9;
    v11 = *v90;
    v67 = assetsCopy;
    do
    {
      v12 = 0;
      do
      {
        if (*v90 != v11)
        {
          objc_enumerationMutation(resources);
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
          action = [assetsCopy action];
          if (!action)
          {
            goto LABEL_26;
          }

          v17 = action;
          action2 = [assetsCopy action];
          if ([action2 actionType] != 11)
          {
            goto LABEL_25;
          }

          place = [assetsCopy place];
          if (!place)
          {
            goto LABEL_25;
          }

          v20 = place;
          place2 = [assetsCopy place];
          poiCategory = [place2 poiCategory];
          if (!poiCategory)
          {

            v7 = v69;
LABEL_25:

            v5 = v75;
LABEL_26:
            [v76 addObject:v13];
            goto LABEL_11;
          }

          place3 = [assetsCopy place];
          poiCategory2 = [place3 poiCategory];
          v71 = [v68 containsObject:poiCategory2];

          assetsCopy = v67;
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
      v25 = [resources countByEnumeratingWithState:&v89 objects:v96 count:16];
      v10 = v25;
    }

    while (v25);
  }

  if (![v7 count] && !v5)
  {
    place4 = [assetsCopy place];
    [place4 setPriorityScore:100.0];

    v27 = v66;
    v28 = v76;
    v29 = v74;
    v30 = v72;
    goto LABEL_65;
  }

  if ([v7 count] && objc_msgSend(v5, "count"))
  {
    firstObject = [v7 firstObject];
    [firstObject setPriorityScore:100.0];

    place5 = [assetsCopy place];
    [place5 setPriorityScore:200.0];

    firstObject2 = [v5 firstObject];
    [firstObject2 setPriorityScore:201.0];

    firstObject3 = [v7 firstObject];
    [v66 addObject:firstObject3];

    firstObject4 = [v5 firstObject];
    [v66 addObject:firstObject4];

    [v7 removeObjectAtIndex:0];
    [v5 removeObjectAtIndex:0];
    if ([v74 count])
    {
      firstObject5 = [v74 firstObject];
      [firstObject5 setPriorityScore:202.0];

LABEL_40:
      firstObject6 = [v74 firstObject];
      [v66 addObject:firstObject6];

      [v74 removeObjectAtIndex:0];
    }
  }

  else
  {
    if ([v7 count])
    {
      firstObject7 = [v7 firstObject];
      [firstObject7 setPriorityScore:100.0];

      place6 = [assetsCopy place];
      [place6 setPriorityScore:200.0];

      firstObject8 = [v7 firstObject];
      [v66 addObject:firstObject8];

      v40 = v7;
    }

    else
    {
      if (![v5 count])
      {
        goto LABEL_41;
      }

      place7 = [assetsCopy place];
      [place7 setPriorityScore:100.0];

      firstObject9 = [v5 firstObject];
      [firstObject9 setPriorityScore:200.0];

      firstObject10 = [v5 firstObject];
      [v66 addObject:firstObject10];

      v40 = v5;
    }

    [v40 removeObjectAtIndex:0];
    if ([v74 count])
    {
      goto LABEL_40;
    }
  }

LABEL_41:
  v45 = assetsCopy;
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
  assetsCopy = v45;
  v29 = v74;
  v5 = v75;
LABEL_65:
  [assetsCopy setResources:v27];
}

- (id)actionFromBaseEvents:(id)events
{
  eventsCopy = events;
  v4 = [[MOAction alloc] initWithActionName:@"visit" actionType:2];
  firstObject = [eventsCopy firstObject];

  eventIdentifier = [firstObject eventIdentifier];
  [(MOAction *)v4 setSourceEventIdentifier:eventIdentifier];

  return v4;
}

- (void)updateActionWithBaseEvents:(id)events contextEvents:(id)contextEvents eventBundle:(id)bundle
{
  eventsCopy = events;
  contextEventsCopy = contextEvents;
  bundleCopy = bundle;
  firstObject = [eventsCopy firstObject];
  poiCategory = [firstObject poiCategory];

  firstObject2 = [eventsCopy firstObject];
  [firstObject2 confidenceScore];
  v14 = v13;
  [(MOVisitAnnotationManager *)self visitLabelMediumConfidenceThreshold];
  v16 = v15;

  v74 = objc_opt_new();
  v71 = eventsCopy;
  [v74 addObjectsFromArray:eventsCopy];
  v77 = [NSSet setWithObjects:GEOPOICategoryFoodMarket, GEOPOICategoryStore, 0];
  v76 = [NSSet setWithObjects:GEOPOICategoryRestaurant, GEOPOICategoryCafe, GEOPOICategoryBakery, 0];
  v75 = [NSSet setWithObjects:GEOPOICategoryAirport, GEOPOICategoryAirportGate, GEOPOICategoryAirportTerminal, 0];
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v17 = contextEventsCopy;
  v18 = [v17 countByEnumeratingWithState:&v82 objects:v88 count:16];
  obj = v17;
  if (!v18)
  {
    v78 = 0;
    v34 = 0;
    eventIdentifier = v17;
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
      configurationManager = [(MOVisitAnnotationManager *)self configurationManager];

      if (configurationManager)
      {
        configurationManager2 = [(MOVisitAnnotationManager *)self configurationManager];
        v26 = [configurationManager2 getBoolSettingForKey:@"EventBundleManagerOverrideEnableLifeEvent" withFallback:1];
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

        lifeEventCategory = [v22 lifeEventCategory];
        if (lifeEventCategory != 4 && lifeEventCategory != 2 && lifeEventCategory != 1)
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

      if (!poiCategory)
      {
        goto LABEL_28;
      }

      lifeEventCategory2 = [v22 lifeEventCategory];
      if (lifeEventCategory2 == 4)
      {
        v29 = v75;
      }

      else if (lifeEventCategory2 == 2)
      {
        v29 = v76;
      }

      else
      {
        if (lifeEventCategory2 != 1)
        {
          goto LABEL_28;
        }

        v29 = v77;
      }

      if ([v29 containsObject:poiCategory])
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
    eventIdentifier = [v78 eventIdentifier];
    [(MOAction *)v34 setSourceEventIdentifier:eventIdentifier];
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
  v68 = [MOContextAnnotationUtilities annotateEventBundle:bundleCopy playbackMediaEvents:v36 lessSignificantPlaySessionMediaTypes:v40];
  [v74 addObjectsFromArray:?];
  startDate = [bundleCopy startDate];
  endDate = [bundleCopy endDate];
  v43 = [MOContextAnnotationUtilities predicateOfEmotionLogsWithStartDate:startDate endDate:endDate];

  v67 = v43;
  v44 = [obj filteredArrayUsingPredicate:v43];
  [(MOVisitAnnotationManager *)self emotionAttachmentBundleDurationThreshold];
  *&v45 = v45;
  v46 = [MOContextAnnotationUtilities annotateEventBundle:bundleCopy dateIntervalEvents:v71 emotionEvents:v44 bundleDurationThreshold:v45];
  [v74 addObjectsFromArray:v46];
  startDate2 = [bundleCopy startDate];
  endDate2 = [bundleCopy endDate];
  v49 = [MOContextAnnotationUtilities predicateOfInviteEventsWithStartDate:startDate2 endDate:endDate2];

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
  v54 = [MOContextAnnotationUtilities annotateEventBundle:bundleCopy visitEvents:v71 inviteEvents:v50 withTimeThreshold:self->_outingInviteEventTimeOverlapWithVisitsThreshold withDistanceThreshold:v53 withPhotoTimeThreshold:self->_outingInviteEventPhotoTimeThreshold];
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
    v57 = bundleCopy;
    [bundleCopy setAction:v80];
    action = [bundleCopy action];
    actionType = [action actionType];

    if (actionType == 9)
    {
      v60 = 104;
      goto LABEL_49;
    }

    action2 = [bundleCopy action];
    actionType2 = [action2 actionType];

    if (actionType2 == 10)
    {
      v60 = 103;
LABEL_49:
      v55 = v80;
LABEL_50:
      [bundleCopy setBundleSubType:v60];
    }

    else
    {
      action3 = [bundleCopy action];
      actionType3 = [action3 actionType];

      v66 = actionType3 == 11;
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
      [MOVisitAnnotationManager updateActionWithBaseEvents:bundleCopy contextEvents:v61 eventBundle:?];
    }
  }

  else
  {
    v61 = [(MOVisitAnnotationManager *)self actionFromBaseEvents:v71];
    v57 = bundleCopy;
    [bundleCopy setAction:v61];
  }

  [v57 addEvents:v74];
}

- (id)placeFromBaseEvents:(id)events action:(id)action
{
  eventsCopy = events;
  actionCopy = action;
  v8 = [MOContextAnnotationUtilities majorityGroupFromEvents:eventsCopy propertyPath:@"placeName" valuePath:@"duration"];
  if (actionCopy && [actionCopy actionType] == 11)
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
  fUniverse = [(MOAnnotationManager *)self fUniverse];
  v18 = [MOContextAnnotationUtilities placeFromVisitEvents:v8 preferredCategories:v9 poiCategoryBlocklist:lessInterestingPoiCategories mediumConfidenceThreshold:fUniverse highConfidenceThreshold:v12 aoiConfidenceThreshold:v14 universe:v16];

  if ([v18 placeUserType] == 2 || objc_msgSend(v18, "placeUserType") == 1)
  {
    [v18 setPlaceNameConfidence:-1.0];
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v19 = eventsCopy;
  v20 = [v19 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (!v20)
  {

LABEL_18:
    [v18 setPlaceNameConfidence:-1.0];
    goto LABEL_19;
  }

  v21 = v20;
  v35 = actionCopy;
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
      endDate = [v27 endDate];
      startDate = [v27 startDate];
      [endDate timeIntervalSinceDate:startDate];
      v25 = v25 + v30;
    }

    v21 = [v19 countByEnumeratingWithState:&v36 objects:v40 count:16];
  }

  while (v21);

  v8 = v23;
  v9 = v22;
  actionCopy = v35;
  if (v25 < 480.0)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (![v18 placeUserType])
  {
    outingEligiblePoiCategories = self->_outingEligiblePoiCategories;
    poiCategory = [v18 poiCategory];
    LODWORD(outingEligiblePoiCategories) = [(NSSet *)outingEligiblePoiCategories containsObject:poiCategory];

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

- (id)resourcesFromBaseEvents:(id)events
{
  v4 = [MOContextAnnotationUtilities majorityGroupFromEvents:events propertyPath:@"placeName" valuePath:@"duration"];
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
        fUniverse = [(MOAnnotationManager *)self fUniverse];
        v19 = [MOContextAnnotationUtilities placeFromVisitEvent:v10 preferredCategories:0 poiCategoryBlocklist:lessInterestingPoiCategories mediumConfidenceThreshold:fUniverse highConfidenceThreshold:v13 aoiConfidenceThreshold:v15 universe:v17];

        v20 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v26 = objc_opt_class();
          v27 = NSStringFromClass(v26);
          placeName = [v19 placeName];
          mask = [placeName mask];
          placeMapItem = [v10 placeMapItem];
          v30 = [placeMapItem length];
          *buf = v33;
          v42 = v27;
          v43 = 2112;
          v44 = mask;
          v45 = 2048;
          v46 = v30;
          _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%@: resourcesFromBaseEvents, place, %@, mapItem.length, %lu", buf, 0x20u);
        }

        v21 = [MOResource alloc];
        placeName2 = [v19 placeName];
        placeMapItem2 = [v10 placeMapItem];
        v24 = [(MOResource *)v21 initWithName:placeName2 mapItemHandle:placeMapItem2 priorityScore:-1.0];

        eventIdentifier = [v10 eventIdentifier];
        [(MOResource *)v24 setSourceEventIdentifier:eventIdentifier];

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

- (id)predominantWeatherFromBaseEvents:(id)events
{
  eventsCopy = events;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [eventsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(eventsCopy);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        endDate = [v10 endDate];
        startDate = [v10 startDate];
        [endDate timeIntervalSinceDate:startDate];
        v14 = v13;

        if (v14 > v8)
        {
          predominantWeather = [v10 predominantWeather];

          v6 = predominantWeather;
          v8 = v14;
        }
      }

      v5 = [eventsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)buildPromptDescriptionForEventBundle:(id)bundle
{
  bundleCopy = bundle;
  action = [bundleCopy action];
  actionName = [action actionName];

  actions = [bundleCopy actions];
  if (actions && (v7 = actions, [bundleCopy actions], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v7, v9))
  {
    v10 = [NSPredicate predicateWithFormat:@"%K = %lu", @"actionType", 2];
    actions2 = [bundleCopy actions];
    v12 = [actions2 filteredArrayUsingPredicate:v10];

    v13 = [v12 count];
    v14 = v13 != 0;
    if (v13)
    {
      firstObject = [v12 firstObject];
      actionName2 = [firstObject actionName];

      actionName = actionName2;
    }
  }

  else
  {
    v14 = 0;
  }

  place = [bundleCopy place];
  if (place)
  {
    place2 = [bundleCopy place];
    placeName = [place2 placeName];

    if (placeName)
    {
      place3 = [bundleCopy place];
      promptDescription = [place3 promptDescription];
      place = [NSString stringWithFormat:@" %@", promptDescription];
    }

    else
    {
      place = 0;
    }
  }

  persons = [bundleCopy persons];
  if (persons)
  {
    persons2 = [bundleCopy persons];
    v24 = [persons2 count];

    if (!v24)
    {
      persons = 0;
      if (v14)
      {
        goto LABEL_34;
      }

      goto LABEL_24;
    }

    persons3 = [bundleCopy persons];
    persons = [MOContextAnnotationUtilities andStringFromArray:persons3 propertyPath:@"name" maxCount:3];

    if (persons)
    {
      v26 = 1;
    }

    else
    {
      v26 = v14;
    }

    if (persons)
    {
      v27 = v14;
    }

    else
    {
      v27 = 1;
    }

    if (v27 != 1)
    {
      persons4 = [bundleCopy persons];
      v38 = [persons4 count];

      if (v38 <= 3)
      {
        goto LABEL_34;
      }

      v34 = actionName;
      actionName = @"Social Time";
      v32 = persons;
      persons = 0;
      goto LABEL_31;
    }

    LOBYTE(v14) = v26;
  }

  if (v14)
  {
    goto LABEL_34;
  }

LABEL_24:
  if (!place)
  {
    v39 = @"Outing";
    goto LABEL_33;
  }

  actions3 = [bundleCopy actions];
  if (actions3)
  {
    v29 = actions3;
    actions4 = [bundleCopy actions];
    v31 = [actions4 count];

    if (v31)
    {
      v32 = [NSPredicate predicateWithFormat:@"%K = %lu", @"actionType", 3];
      actions5 = [bundleCopy actions];
      v34 = [actions5 filteredArrayUsingPredicate:v32];

      if ([v34 count])
      {
        firstObject2 = [v34 firstObject];
        actionName3 = [firstObject2 actionName];

        actionName = actionName3;
      }

LABEL_31:
      v39 = actionName;

      actionName = v32;
LABEL_33:

      actionName = v39;
    }
  }

LABEL_34:
  v40 = objc_opt_new();
  [v40 appendString:actionName];
  if (place)
  {
    [v40 appendString:place];
  }

  if (persons)
  {
    [v40 appendString:persons];
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