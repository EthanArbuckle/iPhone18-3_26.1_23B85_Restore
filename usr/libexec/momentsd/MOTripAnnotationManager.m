@interface MOTripAnnotationManager
- (BOOL)inSameCityOfEvent:(id)a3 trip:(id)a4;
- (BOOL)isSameDayOfEvent:(id)a3 trip:(id)a4;
- (MOTripAnnotationManager)initWithUniverse:(id)a3;
- (double)distanceFromEvent:(id)a3 trip:(id)a4;
- (double)distanceFromLocation:(id)a3 hometownReferenceLocations:(id)a4;
- (double)durationOfTrip:(id)a3;
- (double)dwellTimeOfEvents:(id)a3;
- (double)interestingPOIDurationInTrip:(id)a3;
- (double)maxDistanceFromEvent:(id)a3 events:(id)a4;
- (double)nonInterestingPOIDurationInTrip:(id)a3;
- (id)_assignPriorityScoreForPlace:(id)a3 placeInfoArray:(id)a4;
- (id)_filterPlaceUsingPredicates:(id)a3;
- (id)buildPromptDescriptionForEventBundle:(id)a3;
- (id)createTripWithVisitEvent:(id)a3;
- (id)dominantInterestingPOIFromEvents:(id)a3 timeZone:(id)a4;
- (id)dominantPOIFormEvents:(id)a3 timeZone:(id)a4;
- (id)dominantPlaceFromEvents:(id)a3 timeZone:(id)a4;
- (id)dominantPlaceNamesFromEvents:(id)a3 countryMode:(BOOL)a4 timeZone:(id)a5;
- (id)generateDailyTripsFromBaseEvents:(id)a3 contextEvents:(id)a4 pregeneratedTripBundles:(id)a5 hometownReferenceLocations:(id)a6;
- (id)generateSummaryTripsFromBaseEvents:(id)a3 hometownReferenceLocations:(id)a4;
- (id)getBaseEvents:(id)a3;
- (id)getContextEvents:(id)a3;
- (id)getTripEventBundles:(id)a3;
- (id)hometownReferenceLocations;
- (id)loadSummaryTripMonitorFromStore:(id)a3;
- (id)placeNameOfEvent:(id)a3 addressFormatOption:(id)a4 countryMode:(BOOL)a5;
- (id)resourceFromWorkoutEvent:(id)a3;
- (id)transformTripPlan:(id)a3;
- (unint64_t)dayCountInTrip:(id)a3;
- (unint64_t)visitCountInTrip:(id)a3;
- (void)_assignPriorityScoreForPhotoResources:(id)a3;
- (void)_performAnnotationWithEvents:(id)a3 withPatternEvents:(id)a4 eventBundles:(id)a5 handler:(id)a6;
- (void)_updateMOPlacePriorityScore:(id)a3 priorityScore:(unint64_t)a4 handler:(id)a5;
- (void)addVisitEvent:(id)a3 toTripBundle:(id)a4;
- (void)closeTrip:(id)a3 hometownReferenceLocations:(id)a4 contextEvents:(id)a5;
- (void)materializeTripBundle:(id)a3 contextEvents:(id)a4 updateWithFilteredEvents:(BOOL)a5;
- (void)performAnnotationWithEvents:(id)a3 withPatternEvents:(id)a4 eventBundles:(id)a5 handler:(id)a6;
- (void)resourcesFromEvents:(id)a3 handler:(id)a4;
- (void)setupSummaryTripMonitorWithHomeLOI:(id)a3;
- (void)updateSummaryTripMonitor:(id)a3;
@end

@implementation MOTripAnnotationManager

- (MOTripAnnotationManager)initWithUniverse:(id)a3
{
  v4 = a3;
  v69.receiver = self;
  v69.super_class = MOTripAnnotationManager;
  v5 = [(MOAnnotationManager *)&v69 initWithUniverse:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v7 UTF8String];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create(v8, v9);
    queue = v5->_queue;
    v5->_queue = v10;

    v74[0] = GEOPOICategoryATM;
    v74[1] = GEOPOICategoryBank;
    v74[2] = GEOPOICategoryCarRental;
    v74[3] = GEOPOICategoryEVCharger;
    v74[4] = GEOPOICategoryFireStation;
    v74[5] = GEOPOICategoryGasStation;
    v74[6] = GEOPOICategoryHospital;
    v74[7] = GEOPOICategoryHotel;
    v74[8] = GEOPOICategoryLaundry;
    v74[9] = GEOPOICategoryParking;
    v74[10] = GEOPOICategoryPharmacy;
    v74[11] = GEOPOICategoryPolice;
    v74[12] = GEOPOICategoryPostOffice;
    v74[13] = GEOPOICategoryPublicTransport;
    v74[14] = GEOPOICategoryRestroom;
    v12 = [NSArray arrayWithObjects:v74 count:15];
    v13 = [NSSet setWithArray:v12];
    lessInterestingPoiCategories = v5->_lessInterestingPoiCategories;
    v5->_lessInterestingPoiCategories = v13;

    v73[0] = GEOPOICategoryAirport;
    v73[1] = GEOPOICategoryAirportGate;
    v73[2] = GEOPOICategoryAirportTerminal;
    v15 = [NSArray arrayWithObjects:v73 count:3];
    v16 = [NSSet setWithArray:v15];
    airportCategories = v5->_airportCategories;
    v5->_airportCategories = v16;

    v72[0] = GEOPOICategoryAmusementPark;
    v72[1] = GEOPOICategoryAquarium;
    v72[2] = GEOPOICategoryBeach;
    v72[3] = GEOPOICategoryCampground;
    v72[4] = GEOPOICategoryNationalPark;
    v72[5] = GEOPOICategoryZoo;
    v18 = [NSArray arrayWithObjects:v72 count:6];
    v19 = [NSSet setWithArray:v18];
    interestingPoiCategories = v5->_interestingPoiCategories;
    v5->_interestingPoiCategories = v19;

    v21 = [NSSet setWithArray:&off_10036DA58];
    stateStateTripEligibleCountries = v5->_stateStateTripEligibleCountries;
    v5->_stateStateTripEligibleCountries = v21;

    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = [v4 getService:v24];
    fsmStore = v5->_fsmStore;
    v5->_fsmStore = v25;

    v27 = [(MOTripAnnotationManager *)v5 loadSummaryTripMonitorFromStore:v5->_fsmStore];
    summaryTripMonitor = v5->_summaryTripMonitor;
    v5->_summaryTripMonitor = v27;

    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v31 = [v4 getService:v30];

    v32 = [v31 routineManager];
    routineManager = v5->_routineManager;
    v5->_routineManager = v32;

    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    v36 = [v4 getService:v35];
    configurationManager = v5->_configurationManager;
    v5->_configurationManager = v36;

    v5->_significantLOIMinimumVisitsThreshold = [(MOConfigurationManagerBase *)v5->_configurationManager getIntegerSettingForKey:@"kMOTripAnnotationManagerSignificantLOIMinimumVisits" withFallback:12];
    HIDWORD(v38) = 1072168960;
    *&v38 = 0.75;
    [(MOConfigurationManagerBase *)v5->_configurationManager getFloatSettingForKey:@"VA_VisitLabelMediumConfidenceThreshold" withFallback:v38];
    v5->_visitLabelMediumConfidenceThreshold = v39;
    HIDWORD(v40) = 1072483532;
    *&v40 = 0.9;
    [(MOConfigurationManagerBase *)v5->_configurationManager getFloatSettingForKey:@"VA_VisitLabelHighConfidenceThreshold" withFallback:v40];
    v5->_visitLabelHighConfidenceThreshold = v41;
    HIDWORD(v42) = 1071644672;
    *&v42 = 0.5;
    [(MOConfigurationManagerBase *)v5->_configurationManager getFloatSettingForKey:@"VA_AOIVisitLabelConfidentThreshold" withFallback:v42];
    v44 = v43;
    v5->_aoiVisitLabelConfidentThreshold = v44;
    LODWORD(v44) = 1150681088;
    [(MOConfigurationManagerBase *)v5->_configurationManager getFloatSettingForKey:@"kMOTripAnnotationManagerMinimumDwellTimeDefault" withFallback:v44];
    v46 = v45;
    v5->_minimumDwellTime = v46;
    LODWORD(v46) = 1198153728;
    [(MOConfigurationManagerBase *)v5->_configurationManager getFloatSettingForKey:@"kMOTripAnnotationManagerMinimumHometownDistance" withFallback:v46];
    v48 = v47;
    v5->_minimumHometownDistanceThreshold = v48;
    LODWORD(v48) = 1198153728;
    [(MOConfigurationManagerBase *)v5->_configurationManager getFloatSettingForKey:@"kMOTripAnnotationManagerMinimumHometownDistanceForTrip" withFallback:v48];
    v50 = v49;
    v5->_minimumHometownDistanceForTripThreshold = v50;
    LODWORD(v50) = 1206542336;
    [(MOConfigurationManagerBase *)v5->_configurationManager getFloatSettingForKey:@"kMOTripAnnotationManagerMaximumCommuteDistanceForTrip" withFallback:v50];
    v52 = v51;
    v5->_maximumCommuteDistanceForTripThreshold = v52;
    LODWORD(v52) = 1198153728;
    [(MOConfigurationManagerBase *)v5->_configurationManager getFloatSettingForKey:@"kMOTripAnnotationManagerMinimumDistanceBetweenTrips" withFallback:v52];
    v54 = v53;
    v5->_minimumDistanceBetweenTripsThreshold = v54;
    LODWORD(v54) = 1172373504;
    [(MOConfigurationManagerBase *)v5->_configurationManager getFloatSettingForKey:@"kMOTripAnnotationManagerMinimumDuration" withFallback:v54];
    v5->_minimumDurationThreshold = v55;
    v5->_minimumDayCountThreshold = [(MOConfigurationManagerBase *)v5->_configurationManager getIntegerSettingForKey:@"kMOTripAnnotationManagerMinimumDayCount" withFallback:2];
    v5->_maximumDayCountThreashold = [(MOConfigurationManagerBase *)v5->_configurationManager getIntegerSettingForKey:@"kMOTripAnnotationManagerMaximumDayCount" withFallback:7];
    v5->_minimumVisitCountThreshold = [(MOConfigurationManagerBase *)v5->_configurationManager getIntegerSettingForKey:@"kMOTripAnnotationManagerMinimumVisitCount" withFallback:1];
    [(MOConfigurationManagerBase *)v5->_configurationManager getDoubleSettingForKey:@"kMOTripAnnotationManagerMinimumDominancyRatioForSinglePOITrip" withFallback:0.8];
    v5->_minimumDominancyRatioForSinglePOITripThreshold = v56;
    [(MOConfigurationManagerBase *)v5->_configurationManager getDoubleSettingForKey:@"kMOTripAnnotationManagerMinimumDominancyRatioForInterestingPOITrip" withFallback:0.4];
    v5->_minimumDominancyRatioForInterestingPOITripThreshold = v57;
    v58 = v5->_configurationManager;
    v59 = [NSString stringWithFormat:@"%@_%@", @"addressFormatting", @"formatOption"];
    v60 = [(MOConfigurationManagerBase *)v58 getStringSettingForKey:v59 withFallback:@"aboveDoorShortAddress"];
    addressFormatOption = v5->_addressFormatOption;
    v5->_addressFormatOption = v60;

    [(MOConfigurationManagerBase *)v5->_configurationManager getDoubleSettingForKey:@"kMOTripAnnotationManagerOverNightStartDateHour" withFallback:0.0];
    v5->_overnightStartDateHour = v62;
    [(MOConfigurationManagerBase *)v5->_configurationManager getDoubleSettingForKey:@"kMOTripAnnotationManagerOverNightDurationHours" withFallback:6.0];
    v5->_overnightDurationHours = v63;
    [(MOConfigurationManagerBase *)v5->_configurationManager getDoubleSettingForKey:@"kMOTripAnnotationManagerOverNightDurationWeight" withFallback:0.1];
    v5->_overnightDurationWeight = v64;
    v65 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      v66 = objc_opt_class();
      v67 = NSStringFromClass(v66);
      *buf = 138412290;
      v71 = v67;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_INFO, "%@: Initialized", buf, 0xCu);
    }
  }

  return v5;
}

- (void)performAnnotationWithEvents:(id)a3 withPatternEvents:(id)a4 eventBundles:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(MOTripAnnotationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __94__MOTripAnnotationManager_performAnnotationWithEvents_withPatternEvents_eventBundles_handler___block_invoke;
  block[3] = &unk_100336C98;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, block);
}

void __94__MOTripAnnotationManager_performAnnotationWithEvents_withPatternEvents_eventBundles_handler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __94__MOTripAnnotationManager_performAnnotationWithEvents_withPatternEvents_eventBundles_handler___block_invoke_2;
  v5[3] = &unk_1003369E0;
  v6 = *(a1 + 64);
  [v1 _performAnnotationWithEvents:v2 withPatternEvents:v3 eventBundles:v4 handler:v5];
}

uint64_t __94__MOTripAnnotationManager_performAnnotationWithEvents_withPatternEvents_eventBundles_handler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_performAnnotationWithEvents:(id)a3 withPatternEvents:(id)a4 eventBundles:(id)a5 handler:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = v9;
  v59 = v11;
  v13 = [(MOTripAnnotationManager *)self getBaseEvents:v9];
  v14 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
  v58 = v10;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v13 count];
    v18 = [v13 firstObject];
    [v18 startDate];
    v20 = v19 = v13;
    v21 = [v19 lastObject];
    v22 = [v21 endDate];
    *buf = 138413058;
    v64 = v16;
    v65 = 2048;
    v66 = v17;
    v67 = 2112;
    v68 = v20;
    v69 = 2112;
    v70 = v22;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%@: Base Events, %lu, startDate, %@, endDate, %@", buf, 0x2Au);

    v13 = v19;
    v10 = v58;
  }

  if ([v13 count])
  {
    v23 = [(MOTripAnnotationManager *)self getContextEvents:v12];
    v24 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = [v23 count];
      *buf = 138412546;
      v64 = v26;
      v65 = 2048;
      v66 = v27;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%@: Context Events, %lu", buf, 0x16u);
    }

    v57 = v12;

    v28 = [(MOTripAnnotationManager *)self getTripEventBundles:v10];
    v29 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      v32 = [v28 count];
      [v28 firstObject];
      v33 = v55 = v13;
      v34 = [v33 startDate];
      [v28 lastObject];
      v35 = v28;
      v37 = v36 = v23;
      v38 = [v37 endDate];
      *buf = 138413058;
      v64 = v31;
      v65 = 2048;
      v66 = v32;
      v67 = 2112;
      v68 = v34;
      v69 = 2112;
      v70 = v38;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%@: pre-generated Trip Bundles, %lu, startDate, %@, endDate, %@", buf, 0x2Au);

      v23 = v36;
      v28 = v35;

      v13 = v55;
    }

    v39 = [(MOTripAnnotationManager *)self hometownReferenceLocations];
    v40 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      v43 = [v39 count];
      *buf = 138412546;
      v64 = v42;
      v65 = 2048;
      v66 = v43;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "%@: trip manager hometown location count, %lu", buf, 0x16u);
    }

    if ([v39 count])
    {
      v44 = objc_opt_new();
      [(MOTripAnnotationManager *)self generateDailyTripsFromBaseEvents:v13 contextEvents:v23 pregeneratedTripBundles:v28 hometownReferenceLocations:v39];
      v56 = v28;
      v45 = v23;
      v47 = v46 = v13;
      [v44 addObjectsFromArray:v47];
      v48 = [(MOTripAnnotationManager *)self generateSummaryTripsFromBaseEvents:v46 hometownReferenceLocations:v39];
      [v44 addObjectsFromArray:v48];
      v49 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
      v60 = v49;
      v50 = [NSArray arrayWithObjects:&v60 count:1];
      v51 = [v44 sortedArrayUsingDescriptors:v50];

      v59[2](v59, v51, 0);
      v13 = v46;
      v23 = v45;
      v28 = v56;
    }

    else
    {
      v52 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        [MOTripAnnotationManager _performAnnotationWithEvents:withPatternEvents:eventBundles:handler:];
      }

      v53 = [NSError alloc];
      v61 = NSLocalizedDescriptionKey;
      v62 = @"The hometown location is empty.";
      v54 = [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
      v44 = [v53 initWithDomain:@"MOBundleAnnotationManager" code:0 userInfo:v54];

      (v59)[2](v59, &__NSArray0__struct, v44);
    }

    v12 = v57;

    v10 = v58;
  }

  else
  {
    v59[2](v59, &__NSArray0__struct, 0);
  }
}

- (id)generateSummaryTripsFromBaseEvents:(id)a3 hometownReferenceLocations:(id)a4
{
  v5 = a3;
  v6 = [(MOTripAnnotationManager *)self summaryTripMonitor];

  if (v6)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [(MOTripAnnotationManager *)self summaryTripMonitor];
      *buf = 138412546;
      v44 = v9;
      v45 = 2112;
      v46 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%@: fsm model, %@", buf, 0x16u);
    }

    v11 = objc_opt_new();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v36 = v5;
    v12 = v5;
    v13 = [v12 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v39;
      v16 = &MOLogFacilityTripAnnotationManager;
      v37 = self;
      do
      {
        v17 = 0;
        do
        {
          if (*v39 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v38 + 1) + 8 * v17);
          v19 = [(MOTripAnnotationManager *)self summaryTripMonitor];
          v20 = [v19 processVisitEvent:v18];

          if (v20)
          {
            v21 = [v20 startDate];

            if (!v21)
            {
              v22 = _mo_log_facility_get_os_log(v16);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                v32 = objc_opt_class();
                v33 = NSStringFromClass(v32);
                *buf = 138412546;
                v44 = v33;
                v45 = 2112;
                v46 = v20;
                _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@: plan, %@", buf, 0x16u);
              }
            }

            v23 = [(MOTripAnnotationManager *)self transformTripPlan:v20];
            if (v23)
            {
              [v11 addObject:v23];
              v24 = _mo_log_facility_get_os_log(v16);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
              {
                v25 = objc_opt_class();
                NSStringFromClass(v25);
                v26 = v14;
                v27 = v15;
                v28 = v12;
                v29 = v16;
                v31 = v30 = v11;
                *buf = 138412546;
                v44 = v31;
                v45 = 2112;
                v46 = v23;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%@: Trip Summary Detected: %@", buf, 0x16u);

                v11 = v30;
                v16 = v29;
                v12 = v28;
                v15 = v27;
                v14 = v26;
                self = v37;
              }
            }
          }

          v17 = v17 + 1;
        }

        while (v14 != v17);
        v14 = [v12 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v14);
    }

    v34 = [(MOTripAnnotationManager *)self summaryTripMonitor];
    [(MOTripAnnotationManager *)self updateSummaryTripMonitor:v34];

    v5 = v36;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)transformTripPlan:(id)a3
{
  v4 = a3;
  v5 = [MOEventBundle alloc];
  v6 = +[NSUUID UUID];
  v7 = +[NSDate date];
  v8 = [(MOEventBundle *)v5 initWithBundleIdentifier:v6 creationDate:v7];

  [(MOEventBundle *)v8 setInterfaceType:13];
  [(MOEventBundle *)v8 setBundleSuperType:1];
  [(MOEventBundle *)v8 setBundleSubType:105];
  [(MOEventBundle *)v8 setSummarizationGranularity:2];
  v9 = [[MOAction alloc] initWithActionName:@"Trip" actionType:2];
  [(MOEventBundle *)v8 setAction:v9];

  v10 = [v4 startDate];
  v11 = [(MOAnnotationManager *)self timeZoneManager];
  v12 = [MOTime timeForDate:v10 timeZoneManager:v11];
  [(MOEventBundle *)v8 setTime:v12];

  [(MOEventBundle *)v8 setEvents:&__NSArray0__struct];
  v13 = [v4 startDate];
  [(MOEventBundle *)v8 setStartDate:v13];

  v14 = [v4 endDate];
  [(MOEventBundle *)v8 setEndDate:v14];

  v15 = [v4 endDate];
  v16 = [v15 dateByAddingTimeInterval:2419200.0];
  [(MOEventBundle *)v8 setExpirationDate:v16];

  [(MOEventBundle *)v8 setIsAggregatedAndSuppressed:0];
  v17 = [v4 destination];
  [(MOEventBundle *)v8 setPromptLanguage:v17];

  v18 = [v4 destinationType];
  if (v18 > 3)
  {
    v19 = 100;
  }

  else
  {
    v19 = qword_100322BD8[v18];
  }

  v20 = [MOPlace alloc];
  v21 = +[NSUUID UUID];
  v22 = [v4 destination];
  v23 = [v4 destination];
  v24 = [v4 startDate];
  v25 = [v4 endDate];
  v26 = [(MOPlace *)v20 initWithIdentifier:v21 placeName:v22 enclosingArea:v23 placeType:v19 placeUserType:0 location:0 locationMode:0.0 poiCategory:0.99 categoryMuid:0.0 distanceToHomeInMiles:-1.0 placeNameConfidence:2 familiarityIndexLOI:0 priorityScore:0 startDate:v24 endDate:v25];
  [(MOEventBundle *)v8 setPlace:v26];

  return v8;
}

- (id)generateDailyTripsFromBaseEvents:(id)a3 contextEvents:(id)a4 pregeneratedTripBundles:(id)a5 hometownReferenceLocations:(id)a6
{
  v10 = a3;
  v114 = a4;
  v11 = a5;
  v120 = a6;
  v115 = objc_opt_new();
  v116 = v11;
  v12 = [v11 lastObject];
  v13 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v12 state];
    v17 = [v12 startDate];
    v18 = [v12 endDate];
    v19 = [v12 promptLanguage];
    v20 = [v19 mask];
    *buf = 138413314;
    v141 = v15;
    v142 = 2048;
    v143 = *&v16;
    v144 = 2112;
    v145 = *&v17;
    v146 = 2112;
    v147 = *&v18;
    v148 = 2112;
    v149 = v20;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%@: current trip, state, %lu, startDate, %@, endDate, %@, string, %@", buf, 0x34u);
  }

  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  obj = v10;
  v21 = [obj countByEnumeratingWithState:&v132 objects:v139 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v133;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v133 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v132 + 1) + 8 * i);
        if (v12)
        {
          v26 = [*(*(&v132 + 1) + 8 * i) startDate];
          v27 = [v12 endDate];
          v28 = [v26 isBeforeDate:v27];

          if (v28)
          {
            continue;
          }
        }

        v29 = v12;
        v30 = [v25 routineEvent];
        v31 = [v30 location];
        [(MOTripAnnotationManager *)self distanceFromLocation:v31 hometownReferenceLocations:v120];
        v33 = v32;

        minimumHometownDistanceThreshold = self->_minimumHometownDistanceThreshold;
        v35 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = objc_opt_class();
          v37 = NSStringFromClass(v36);
          v38 = v37;
          v39 = self->_minimumHometownDistanceThreshold;
          *buf = 138413314;
          v40 = @"Away";
          if (v33 < minimumHometownDistanceThreshold)
          {
            v40 = @"Home";
          }

          v141 = v37;
          v142 = 2112;
          v143 = *&v40;
          v144 = 2048;
          v145 = v33;
          v146 = 2048;
          v147 = v39;
          v148 = 2112;
          v149 = v25;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "%@: new visit (%@), distance, %f, threshold, %f, %@", buf, 0x34u);
        }

        if (v33 < minimumHometownDistanceThreshold)
        {
          if (v12)
          {
            if ([v12 state]== 1)
            {
              [(MOTripAnnotationManager *)self closeTrip:v12 hometownReferenceLocations:v120 contextEvents:v114];
              v56 = [v12 suggestionID];
              [v115 setObject:v12 forKey:v56];

              v57 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
              if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
              {
                v58 = objc_opt_class();
                v59 = NSStringFromClass(v58);
                *buf = 138412546;
                v141 = v59;
                v142 = 2112;
                v143 = *&v12;
                _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "%@: hometown visit, close the previous trip, %@", buf, 0x16u);
              }
            }
          }

          else
          {
            v29 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              [MOTripAnnotationManager generateDailyTripsFromBaseEvents:v138 contextEvents:self pregeneratedTripBundles:? hometownReferenceLocations:?];
            }
          }

          v48 = 0;
          goto LABEL_48;
        }

        if (v12)
        {
          [(MOTripAnnotationManager *)self distanceFromEvent:v25 trip:v12];
          v42 = v41;
          v43 = [(MOTripAnnotationManager *)self inSameCityOfEvent:v25 trip:v12];
          if (v42 <= self->_minimumDistanceBetweenTripsThreshold || (v43 & 1) != 0)
          {
            v60 = [(MOTripAnnotationManager *)self isSameDayOfEvent:v25 trip:v12];
            v61 = [(MOTripAnnotationManager *)self dayCountInTrip:v12];
            if (v61 < self->_maximumDayCountThreashold || (v60 & 1) != 0)
            {
              [(MOTripAnnotationManager *)self addVisitEvent:v25 toTripBundle:v12];
              v69 = [v12 suggestionID];
              [v115 setObject:v12 forKey:v69];

              v29 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
              {
                v70 = objc_opt_class();
                v71 = NSStringFromClass(v70);
                v72 = v71;
                *buf = 138412802;
                v73 = @"Continue";
                if (v60)
                {
                  v73 = @"SameDay";
                }

                v141 = v71;
                v142 = 2112;
                v143 = *&v73;
                v144 = 2112;
                v145 = *&v12;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%@: add to previous trip (%@), %@", buf, 0x20u);
              }

              v48 = v12;
              goto LABEL_48;
            }

            v62 = v61;
            if ([v12 state]== 1)
            {
              [(MOTripAnnotationManager *)self closeTrip:v12 hometownReferenceLocations:v120 contextEvents:v114];
              v63 = [v12 suggestionID];
              [v115 setObject:v12 forKey:v63];

              v64 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
              if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
              {
                v65 = objc_opt_class();
                v66 = NSStringFromClass(v65);
                *buf = 138412546;
                v141 = v66;
                v142 = 2112;
                v143 = *&v12;
                _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_INFO, "%@: activate the new trip, %@", buf, 0x16u);
              }
            }

            v48 = [(MOTripAnnotationManager *)self createTripWithVisitEvent:v25];

            v67 = [v48 suggestionID];
            [v115 setObject:v48 forKey:v67];

            v29 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              v68 = objc_opt_class();
              v51 = NSStringFromClass(v68);
              *buf = 138412802;
              v141 = v51;
              v142 = 2048;
              v143 = *&v62;
              v144 = 2112;
              v145 = *&v48;
              v52 = v29;
              v53 = "%@: long trip, %lu, start the new trip, %@";
              goto LABEL_42;
            }
          }

          else
          {
            if ([v12 state]== 1)
            {
              [(MOTripAnnotationManager *)self closeTrip:v12 hometownReferenceLocations:v120 contextEvents:v114];
              v44 = [v12 suggestionID];
              [v115 setObject:v12 forKey:v44];

              v45 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
              if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
              {
                v46 = objc_opt_class();
                v47 = NSStringFromClass(v46);
                *buf = 138412546;
                v141 = v47;
                v142 = 2112;
                v143 = *&v12;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "%@: activate the new trip, %@", buf, 0x16u);
              }
            }

            v48 = [(MOTripAnnotationManager *)self createTripWithVisitEvent:v25];

            v49 = [v48 suggestionID];
            [v115 setObject:v48 forKey:v49];

            v29 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
            if (!os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              goto LABEL_48;
            }

            v50 = objc_opt_class();
            v51 = NSStringFromClass(v50);
            *buf = 138412802;
            v141 = v51;
            v142 = 2048;
            v143 = v42;
            v144 = 2112;
            v145 = *&v48;
            v52 = v29;
            v53 = "%@: long distance stride, %f, open new trip, %@";
LABEL_42:
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, v53, buf, 0x20u);
          }
        }

        else
        {
          v48 = [(MOTripAnnotationManager *)self createTripWithVisitEvent:v25];
          v54 = [v48 suggestionID];
          [v115 setObject:v48 forKey:v54];

          v29 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v55 = objc_opt_class();
            v51 = NSStringFromClass(v55);
            *buf = 138412802;
            v141 = v51;
            v142 = 2048;
            v143 = v33;
            v144 = 2112;
            v145 = *&v48;
            v52 = v29;
            v53 = "%@: long distance from hometown, %f, open new trip, %@";
            goto LABEL_42;
          }
        }

LABEL_48:

        v12 = v48;
        continue;
      }

      v22 = [obj countByEnumeratingWithState:&v132 objects:v139 count:16];
    }

    while (v22);
  }

  v113 = v12;

  v74 = objc_opt_new();
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v118 = v116;
  v75 = [v118 countByEnumeratingWithState:&v128 objects:v137 count:16];
  v123 = v74;
  if (v75)
  {
    v76 = v75;
    v121 = *v129;
    do
    {
      for (j = 0; j != v76; j = j + 1)
      {
        if (*v129 != v121)
        {
          objc_enumerationMutation(v118);
        }

        v78 = *(*(&v128 + 1) + 8 * j);
        v79 = [v78 suggestionID];
        [v74 setObject:v78 forKey:v79];

        v80 = [v78 events];
        v81 = [(MOTripAnnotationManager *)self getBaseEvents:v80];

        v82 = [v81 count];
        v83 = [v78 events];
        v84 = [(MOTripAnnotationManager *)self getContextEvents:v83];

        v85 = [v84 count];
        v86 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
        if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
        {
          v87 = objc_opt_class();
          v88 = NSStringFromClass(v87);
          v89 = [v78 state];
          *buf = 138413314;
          v141 = v88;
          v142 = 2048;
          v143 = *&v89;
          v144 = 2048;
          v145 = *&v82;
          v146 = 2048;
          v147 = *&v85;
          v148 = 2112;
          v149 = v78;
          _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_INFO, "%@: finalize bundles. pregenerated trip biundle, state, %lu, base events, %lu, context events, %lu, bundle, %@", buf, 0x34u);

          v74 = v123;
        }
      }

      v76 = [v118 countByEnumeratingWithState:&v128 objects:v137 count:16];
    }

    while (v76);
  }

  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v117 = [v115 allValues];
  v90 = [v117 countByEnumeratingWithState:&v124 objects:v136 count:16];
  if (v90)
  {
    v91 = v90;
    v122 = *v125;
    do
    {
      for (k = 0; k != v91; k = k + 1)
      {
        if (*v125 != v122)
        {
          objc_enumerationMutation(v117);
        }

        v93 = *(*(&v124 + 1) + 8 * k);
        v94 = [v93 suggestionID];
        [v74 setObject:v93 forKey:v94];

        v95 = [v93 events];
        v96 = [(MOTripAnnotationManager *)self getBaseEvents:v95];

        v97 = [v96 count];
        v98 = [v93 events];
        v99 = [(MOTripAnnotationManager *)self getContextEvents:v98];

        v100 = [v99 count];
        v101 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
        if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
        {
          v102 = objc_opt_class();
          v103 = NSStringFromClass(v102);
          v104 = [v93 state];
          *buf = 138413314;
          v141 = v103;
          v142 = 2048;
          v143 = *&v104;
          v144 = 2048;
          v145 = *&v97;
          v146 = 2048;
          v147 = *&v100;
          v148 = 2112;
          v149 = v93;
          _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_INFO, "%@: finalize bundles. new/updated trip biundle, state, %lu, base events, %lu, context events, %lu, bundle, %@", buf, 0x34u);

          v74 = v123;
        }
      }

      v91 = [v117 countByEnumeratingWithState:&v124 objects:v136 count:16];
    }

    while (v91);
  }

  v105 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
  if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
  {
    v106 = objc_opt_class();
    v107 = NSStringFromClass(v106);
    v108 = [v74 count];
    v109 = [v115 count];
    v110 = [v74 count];
    *buf = 138413058;
    v141 = v107;
    v142 = 2048;
    v143 = *&v108;
    v144 = 2048;
    v145 = *&v109;
    v146 = 2048;
    v147 = *&v110;
    _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_INFO, "%@: previous trips, %lu, new trips, %lu, total trips, %lu", buf, 0x2Au);
  }

  v111 = [v74 allValues];

  return v111;
}

- (void)closeTrip:(id)a3 hometownReferenceLocations:(id)a4 contextEvents:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 action];

  if (!v11)
  {
    v12 = [v8 startDate];
    v13 = [NSPredicate predicateWithFormat:@"startDate >= %@", v12];
    v77[0] = v13;
    v14 = [v8 endDate];
    v15 = [NSPredicate predicateWithFormat:@"startDate <= %@", v14];
    v77[1] = v15;
    v16 = [NSArray arrayWithObjects:v77 count:2];
    v17 = [NSCompoundPredicate andPredicateWithSubpredicates:v16];

    v54 = v17;
    v18 = [v10 filteredArrayUsingPredicate:v17];

    v53 = v18;
    [(MOTripAnnotationManager *)self materializeTripBundle:v8 contextEvents:v18 updateWithFilteredEvents:0];
    [(MOTripAnnotationManager *)self durationOfTrip:v8];
    v20 = v19;
    v21 = [(MOTripAnnotationManager *)self dayCountInTrip:v8];
    v22 = [(MOTripAnnotationManager *)self visitCountInTrip:v8];
    v23 = [v8 events];
    v24 = [v23 firstObject];
    v25 = [v24 location];
    [(MOTripAnnotationManager *)self distanceFromLocation:v25 hometownReferenceLocations:v9];
    v27 = v26;

    v28 = [(MOTripAnnotationManager *)self containInterestingCategoryInTrip:v8];
    v29 = v28;
    v30 = v20 < self->_minimumDurationThreshold || v22 < self->_minimumVisitCountThreshold || v27 < self->_minimumHometownDistanceForTripThreshold;
    if (v21 >= self->_minimumDayCountThreshold)
    {
      v30 = 0;
    }

    v31 = (v28 ^ 1) & v30;
    minimumHometownDistanceThreshold = self->_minimumHometownDistanceThreshold;
    v33 = [v8 place];

    v35 = v27 < minimumHometownDistanceThreshold || v33 == 0;
    v52 = v21;
    v36 = v35 | v31;
    [v8 setIsAggregatedAndSuppressed:(v35 | v31) & 1];
    v37 = [v8 place];
    v38 = [v37 placeName];
    [v8 setPromptLanguage:v38];

    v39 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = objc_opt_class();
      NSStringFromClass(v40);
      v41 = v51 = v9;
      v42 = [v8 suggestionID];
      if (v36)
      {
        v43 = @"suppressed";
      }

      else
      {
        v43 = @"created";
      }

      v50 = [v8 promptLanguage];
      v44 = [v50 mask];
      minimumDurationThreshold = self->_minimumDurationThreshold;
      minimumDayCountThreshold = self->_minimumDayCountThreshold;
      minimumHometownDistanceForTripThreshold = self->_minimumHometownDistanceForTripThreshold;
      v48 = v29;
      *buf = 138414850;
      v49 = v41;
      v56 = v41;
      v57 = 2112;
      v58 = v42;
      v59 = 2112;
      v60 = v43;
      v61 = 2112;
      v62 = v44;
      v63 = 2048;
      v64 = v20;
      v65 = 2048;
      v66 = minimumDurationThreshold;
      v67 = 2048;
      v9 = v51;
      v68 = v52;
      v69 = 2048;
      v70 = minimumDayCountThreshold;
      v71 = 2048;
      v72 = v27;
      v73 = 2048;
      v74 = minimumHometownDistanceForTripThreshold;
      v75 = 2048;
      v76 = v48;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "%@: trip, suggestionId : %@ is %@, label, %@, durationOfTrip, %f (>= %f), dayCount, %lu (>= %lu), distanceToHome, %f (>= %f), containsInterestingPOI, %lu", buf, 0x70u);
    }

    v10 = v53;
  }
}

- (id)createTripWithVisitEvent:(id)a3
{
  v3 = a3;
  v4 = [MOEventBundle alloc];
  v5 = +[NSUUID UUID];
  v6 = +[NSDate date];
  v7 = [(MOEventBundle *)v4 initWithBundleIdentifier:v5 creationDate:v6];

  [(MOEventBundle *)v7 setInterfaceType:13];
  [(MOEventBundle *)v7 setBundleSuperType:1];
  [(MOEventBundle *)v7 setBundleSubType:105];
  [(MOEventBundle *)v7 setSummarizationGranularity:2];
  v14 = v3;
  v8 = [NSArray arrayWithObjects:&v14 count:1];
  [(MOEventBundle *)v7 setEvents:v8];

  v9 = [v3 startDate];
  [(MOEventBundle *)v7 setStartDate:v9];

  v10 = [v3 endDate];
  [(MOEventBundle *)v7 setEndDate:v10];

  v11 = [v3 endDate];

  v12 = [v11 dateByAddingTimeInterval:2419200.0];
  [(MOEventBundle *)v7 setExpirationDate:v12];

  [(MOEventBundle *)v7 setIsAggregatedAndSuppressed:1];
  [(MOEventBundle *)v7 setPromptLanguage:@"A place holder for a trip"];

  return v7;
}

- (void)addVisitEvent:(id)a3 toTripBundle:(id)a4
{
  v5 = a3;
  v6 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [v6 events];
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v22 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v21 + 1) + 8 * v11);
      v13 = [v5 eventIdentifier];
      v14 = [v12 eventIdentifier];
      v15 = [v13 isEqual:v14];

      if (v15)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v16 = [v6 events];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v18 = [v6 events];
    v7 = v18;
    if ((isKindOfClass & 1) == 0)
    {
      v19 = [v18 mutableCopy];

      v7 = v19;
    }

    [v7 addObject:v5];
    [v6 setEvents:v7];
    v20 = [v5 endDate];
    [v6 setEndDate:v20];
  }
}

- (id)getBaseEvents:(id)a3
{
  v3 = a3;
  v4 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 1];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  v6 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
  v10 = v6;
  v7 = [NSArray arrayWithObjects:&v10 count:1];
  v8 = [v5 sortedArrayUsingDescriptors:v7];

  return v8;
}

- (id)getTripEventBundles:(id)a3
{
  v3 = a3;
  v4 = [NSPredicate predicateWithFormat:@"%K = %lu", @"interfaceType", 13];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  v6 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
  v10 = v6;
  v7 = [NSArray arrayWithObjects:&v10 count:1];
  v8 = [v5 sortedArrayUsingDescriptors:v7];

  return v8;
}

- (id)getContextEvents:(id)a3
{
  v3 = a3;
  v4 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 2];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  v6 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
  v10 = v6;
  v7 = [NSArray arrayWithObjects:&v10 count:1];
  v8 = [v5 sortedArrayUsingDescriptors:v7];

  return v8;
}

- (id)resourceFromWorkoutEvent:(id)a3
{
  v3 = a3;
  if ([v3 provider] == 1 && (objc_msgSend(v3, "workoutType"), v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = objc_opt_new();
    v6 = [v3 startDate];
    [v6 timeIntervalSince1970];
    v7 = [NSNumber numberWithDouble:?];
    [v5 setObject:v7 forKey:@"MOWorkoutMetaDataKeyStartDate"];

    v8 = [v3 endDate];
    [v8 timeIntervalSince1970];
    v9 = [NSNumber numberWithDouble:?];
    [v5 setObject:v9 forKey:@"MOWorkoutMetaDataKeyEndDate"];

    v10 = [v3 workoutType];
    [v5 setObject:v10 forKey:@"MOWorkoutMetaDataKeyActivityType"];

    v11 = [v3 workoutEvent];
    v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v11 isIndoors]);
    [v5 setObject:v12 forKey:@"MOWorkoutMetaDataKeyIsIndoors"];

    v13 = [v3 identifierFromProvider];

    if (v13)
    {
      v14 = [v3 identifierFromProvider];
      [v5 setObject:v14 forKey:@"MOWorkoutMetaDataKeyWorkoutID"];
    }

    v15 = [[MOResource alloc] initWithName:@"Workout" type:10 dict:v5 value:0.0];
    v16 = [v3 eventIdentifier];
    [(MOResource *)v15 setSourceEventIdentifier:v16];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)hometownReferenceLocations
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__6;
  v20 = __Block_byref_object_dispose__6;
  v21 = objc_opt_new();
  v3 = dispatch_semaphore_create(0);
  v4 = [(MOTripAnnotationManager *)self routineManager];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __53__MOTripAnnotationManager_hometownReferenceLocations__block_invoke;
  v13[3] = &unk_100336CE8;
  v15 = &v16;
  v13[4] = self;
  v5 = v3;
  v14 = v5;
  [v4 fetchLocationsOfInterestOfType:0 withHandler:v13];

  v6 = [NSString stringWithFormat:@"%@ - [%s] - %d - %s", @"MOSemaphoreWait", "/Library/Caches/com.apple.xbs/Sources/Moments/momentsd/PromptEngine/PromptProvider/MOTripAnnotationManager.m", 715, "[MOTripAnnotationManager hometownReferenceLocations]"];
  v12 = 0;
  v7 = MOSemaphoreWaitAndFaultIfTimeout_Internal(v5, &v12, v6, 30.0);
  v8 = v12;
  if (!v7)
  {
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [MOTripAnnotationManager hometownReferenceLocations];
    }
  }

  v10 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v10;
}

void __53__MOTripAnnotationManager_hometownReferenceLocations__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v21;
    *&v5 = 138739971;
    v16 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = *(*(*(a1 + 48) + 8) + 40);
        v11 = [v9 location];
        [v10 addObject:v11];

        v12 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = v16;
          v25 = v9;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "trip manager howmtown reference location, %{sensitive}@", buf, 0xCu);
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v6);
  }

  v13 = [*(a1 + 32) routineManager];
  v14 = +[NSDate distantPast];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = __53__MOTripAnnotationManager_hometownReferenceLocations__block_invoke_305;
  v18[3] = &unk_100336CC0;
  v18[4] = *(a1 + 32);
  v17 = *(a1 + 40);
  v15 = v17;
  v19 = v17;
  [v13 fetchLocationsOfInterestVisitedSinceDate:v14 withHandler:v18];
}

void __53__MOTripAnnotationManager_hometownReferenceLocations__block_invoke_305(uint64_t a1, void *a2)
{
  v3 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v20;
    *&v5 = 138739971;
    v18 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        if ([v9 type] == 1)
        {
          v10 = *(a1 + 32);
          v11 = [v9 location];
          [v10 distanceFromLocation:v11 hometownReferenceLocations:*(*(*(a1 + 48) + 8) + 40)];
          v13 = v12;

          [*(a1 + 32) maximumCommuteDistanceForTripThreshold];
          if (v13 < v14)
          {
            v15 = *(*(*(a1 + 48) + 8) + 40);
            v16 = [v9 location];
            [v15 addObject:v16];
          }

          v17 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = v18;
            v24 = v9;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "trip manager howmtown reference location, %{sensitive}@", buf, 0xCu);
          }
        }

        if (![v9 type])
        {
          [*(a1 + 32) setupSummaryTripMonitorWithHomeLOI:v9];
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v6);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (double)distanceFromLocation:(id)a3 hometownReferenceLocations:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && (v17 = 0u, v18 = 0u, v15 = 0u, v16 = 0u, (v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16]) != 0))
  {
    v9 = v8;
    v10 = *v16;
    v11 = 1.79769313e308;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v5 distanceFromLocation:*(*(&v15 + 1) + 8 * i)];
        if (v13 < v11)
        {
          v11 = v13;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 1.79769313e308;
  }

  return v11;
}

- (double)maxDistanceFromEvent:(id)a3 events:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 location];

  if (v7 && [v6 count])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      v12 = 0.0;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = [v5 location];
          v16 = [v14 location];
          [v15 distanceFromLocation:v16];
          v18 = v17;

          if (v18 > v12)
          {
            v12 = v18;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    else
    {
      v12 = 0.0;
    }
  }

  else
  {
    v12 = 1.79769313e308;
  }

  return v12;
}

- (double)distanceFromEvent:(id)a3 trip:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 location];

  v8 = 1.79769313e308;
  if (v6 && v7)
  {
    v9 = [v6 events];
    if ([v9 count])
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v22;
        v8 = 1.79769313e308;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v21 + 1) + 8 * i);
            v16 = [v5 location];
            v17 = [v15 location];
            [v16 distanceFromLocation:v17];
            v19 = v18;

            if (v19 < v8)
            {
              v8 = v19;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v12);
      }

      else
      {
        v8 = 1.79769313e308;
      }
    }

    else
    {
      v8 = 1.79769313e308;
    }
  }

  return v8;
}

- (BOOL)inSameCityOfEvent:(id)a3 trip:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = @"aboveDoorShortAddress";
  configurationManager = self->_configurationManager;
  if (configurationManager)
  {
    v10 = [NSString stringWithFormat:@"%@_%@", @"addressFormatting", @"formatOption"];
    v11 = [(MOConfigurationManagerBase *)configurationManager getStringSettingForKey:v10 withFallback:v8];

    v8 = v11;
  }

  v12 = [v6 formatLocalityWithFormatOption:v8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = [v7 events];
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = *v22;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        if ([v17 category] == 1)
        {
          v18 = [v17 formatLocalityWithFormatOption:v8];
          v19 = [v12 isEqualToString:v18];

          if (v19)
          {
            LOBYTE(v14) = 1;
            goto LABEL_14;
          }
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v14;
}

- (BOOL)isSameDayOfEvent:(id)a3 trip:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 dateInterval];
  v8 = [v5 startDate];
  v9 = [v7 endDate];
  if ([v8 isBeforeDate:v9])
  {
    v10 = [v5 endDate];
    v11 = [v7 startDate];
    v12 = [v10 isAfterDate:v11];

    if (v12)
    {
      v13 = 1;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v14 = [v6 events];
  v15 = [v14 lastObject];

  v16 = [v6 time];
  v17 = [v16 timeZone];

  if (v17)
  {
    v18 = [NSTimeZone alloc];
    v19 = [v6 time];
    v20 = [v19 timeZone];
    v21 = [v18 initWithName:v20];
  }

  else
  {
    v21 = 0;
  }

  v22 = [v5 startDate];
  v23 = [v15 endDate];
  v13 = [v22 isSameDayWithDate:v23 timeZone:v21];

LABEL_9:
  return v13;
}

- (double)durationOfTrip:(id)a3
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [a3 events];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ([v10 category] == 1)
        {
          lessInterestingPoiCategories = self->_lessInterestingPoiCategories;
          v12 = [v10 poiCategory];
          LOBYTE(lessInterestingPoiCategories) = [(NSSet *)lessInterestingPoiCategories containsObject:v12];

          if ((lessInterestingPoiCategories & 1) == 0)
          {
            airportCategories = self->_airportCategories;
            v14 = [v10 poiCategory];
            LOBYTE(airportCategories) = [(NSSet *)airportCategories containsObject:v14];

            if ((airportCategories & 1) == 0)
            {
              [v10 duration];
              v8 = v8 + v15;
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (unint64_t)visitCountInTrip:(id)a3
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [a3 events];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 category] == 1)
        {
          lessInterestingPoiCategories = self->_lessInterestingPoiCategories;
          v12 = [v10 poiCategory];
          LOBYTE(lessInterestingPoiCategories) = [(NSSet *)lessInterestingPoiCategories containsObject:v12];

          if ((lessInterestingPoiCategories & 1) == 0)
          {
            airportCategories = self->_airportCategories;
            v14 = [v10 poiCategory];
            LODWORD(airportCategories) = [(NSSet *)airportCategories containsObject:v14];

            v7 += airportCategories ^ 1;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (double)interestingPOIDurationInTrip:(id)a3
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [a3 events];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 category] == 1)
        {
          interestingPoiCategories = self->_interestingPoiCategories;
          v12 = [v10 poiCategory];
          LODWORD(interestingPoiCategories) = [(NSSet *)interestingPoiCategories containsObject:v12];

          if (interestingPoiCategories)
          {
            [v10 duration];
            v8 = v8 + v13;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (double)nonInterestingPOIDurationInTrip:(id)a3
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [a3 events];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ([v10 category] == 1)
        {
          lessInterestingPoiCategories = self->_lessInterestingPoiCategories;
          v12 = [v10 poiCategory];
          LOBYTE(lessInterestingPoiCategories) = [(NSSet *)lessInterestingPoiCategories containsObject:v12];

          if ((lessInterestingPoiCategories & 1) == 0)
          {
            airportCategories = self->_airportCategories;
            v14 = [v10 poiCategory];
            LOBYTE(airportCategories) = [(NSSet *)airportCategories containsObject:v14];

            if ((airportCategories & 1) == 0)
            {
              [v10 duration];
              v8 = v8 + v15;
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (double)dwellTimeOfEvents:(id)a3
{
  v3 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 category] == 1)
        {
          [v9 duration];
          v7 = v7 + v10;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (unint64_t)dayCountInTrip:(id)a3
{
  v3 = a3;
  v4 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v5 = [v3 time];
  v6 = [v5 timeZone];

  if (v6)
  {
    v7 = [NSTimeZone alloc];
    v8 = [v3 time];
    v9 = [v8 timeZone];
    v10 = [v7 initWithName:v9];

    [v4 setTimeZone:v10];
  }

  v22 = 0;
  v11 = [v3 startDate];
  [v4 rangeOfUnit:16 startDate:&v22 interval:0 forDate:v11];
  v12 = v22;

  v21 = 0;
  v13 = [v3 endDate];
  [v4 rangeOfUnit:16 startDate:&v21 interval:0 forDate:v13];
  v14 = v21;

  v15 = [v4 components:16 fromDate:v12 toDate:v14 options:0];
  v16 = [v15 day] + 1;
  v17 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [v3 startDate];
    v19 = [v3 endDate];
    *buf = 138413570;
    v24 = v18;
    v25 = 2112;
    v26 = v19;
    v27 = 2112;
    v28 = v12;
    v29 = 2112;
    v30 = v14;
    v31 = 2112;
    v32 = v15;
    v33 = 2048;
    v34 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "trip manager (annotateBaseEvents) startDate, %@, endDate, %@, day in startDate, %@, day in endDate, %@, diff, %@, dayCount, %lu", buf, 0x3Eu);
  }

  return v16;
}

- (void)materializeTripBundle:(id)a3 contextEvents:(id)a4 updateWithFilteredEvents:(BOOL)a5
{
  v77 = a5;
  v6 = a3;
  v7 = a4;
  v79 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
  v87 = v6;
  v8 = [v6 events];
  v9 = [(MOTripAnnotationManager *)self getBaseEvents:v8];

  v145 = v79;
  v10 = [NSArray arrayWithObjects:&v145 count:1];
  v83 = [v9 sortedArrayUsingDescriptors:v10];

  v80 = [(MOTripAnnotationManager *)self getContextEvents:v7];

  v11 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v80 count];
    v15 = @"NO";
    *buf = 138412802;
    *&buf[4] = v13;
    if (v77)
    {
      v15 = @"YES";
    }

    *&buf[12] = 2048;
    *&buf[14] = v14;
    *&buf[22] = 2112;
    v141 = v15;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%@: Context Events, %lu, updateWithFilteredEvents, %@", buf, 0x20u);
  }

  v16 = [v87 time];
  v17 = [v16 timeZone];

  if (v17)
  {
    v18 = [v87 time];
    v19 = [v18 timeZone];
    v82 = [NSTimeZone timeZoneWithName:v19];
  }

  else
  {
    v82 = 0;
  }

  v90 = [[NSMutableString alloc] initWithString:@"Trip to"];
  v20 = [(MOTripAnnotationManager *)self dominantPlaceFromEvents:v83 timeZone:v82];
  v78 = v20;
  if (v20)
  {
    v81 = v20;
    v21 = [v81 placeName];
    v22 = [v21 mask];
    [v90 appendString:v22];

    obj = &__NSArray0__struct;
  }

  else
  {
    v23 = [(MOTripAnnotationManager *)self dominantPlacesFromEvents:v83 timeZone:v82];
    v81 = [v23 firstObject];
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    obj = v23;
    v24 = [obj countByEnumeratingWithState:&v130 objects:v144 count:16];
    if (v24)
    {
      v25 = *v131;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v131 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = [*(*(&v130 + 1) + 8 * i) placeName];
          v28 = [v27 mask];
          [v90 appendFormat:@"%@, ", v28];
        }

        v24 = [obj countByEnumeratingWithState:&v130 objects:v144 count:16];
      }

      while (v24);
    }

    if (!v81)
    {
      v76 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        [MOTripAnnotationManager materializeTripBundle:contextEvents:updateWithFilteredEvents:];
      }

      v81 = 0;
      goto LABEL_53;
    }
  }

  if (!v77)
  {
    v29 = [v83 firstObject];
    v30 = [v29 startDate];

    v31 = [v83 lastObject];
    v32 = [v31 endDate];

    v33 = [[MOAction alloc] initWithActionName:@"Visit" actionType:2];
    [v87 setAction:v33];

    v34 = [v83 firstObject];
    v35 = [v34 eventIdentifier];
    v36 = [v87 action];
    [v36 setSourceEventIdentifier:v35];

    v37 = [v83 firstObject];
    v38 = [v37 startDate];
    v39 = [(MOAnnotationManager *)self timeZoneManager];
    v40 = [MOTime timeForDate:v38 timeZoneManager:v39];
    [v87 setTime:v40];

    [v87 setEvents:v83];
    [v87 setPropertiesBasedOnEvents];
    [v87 setStartDate:v30];
    [v87 setEndDate:v32];
    v41 = [v32 dateByAddingTimeInterval:2419200.0];
    [v87 setExpirationDate:v41];
  }

  v42 = [v90 copy];
  [v87 setPromptLanguage:v42];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v141 = __Block_byref_object_copy__6;
  v142 = __Block_byref_object_dispose__6;
  v143 = 0;
  v124 = 0;
  v125 = &v124;
  v126 = 0x3032000000;
  v127 = __Block_byref_object_copy__6;
  v128 = __Block_byref_object_dispose__6;
  v129 = 0;
  v118 = 0;
  v119 = &v118;
  v120 = 0x3032000000;
  v121 = __Block_byref_object_copy__6;
  v122 = __Block_byref_object_dispose__6;
  v123 = 0;
  v117[0] = _NSConcreteStackBlock;
  v117[1] = 3221225472;
  v117[2] = __88__MOTripAnnotationManager_materializeTripBundle_contextEvents_updateWithFilteredEvents___block_invoke;
  v117[3] = &unk_100336D10;
  v117[4] = &v118;
  v117[5] = buf;
  v117[6] = &v124;
  [(MOTripAnnotationManager *)self resourcesFromEvents:v83 handler:v117];
  [v87 setResources:v119[5]];
  v85 = objc_opt_new();
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v86 = v80;
  v43 = [v86 countByEnumeratingWithState:&v113 objects:v139 count:16];
  if (v43)
  {
    v88 = *v114;
    v44 = 201.0;
    do
    {
      for (j = 0; j != v43; j = j + 1)
      {
        if (*v114 != v88)
        {
          objc_enumerationMutation(v86);
        }

        v46 = *(*(&v113 + 1) + 8 * j);
        if ([v46 category] == 2)
        {
          v47 = [v46 workoutType];
          v48 = v47 == 0;

          if (!v48)
          {
            v49 = [v46 endDate];
            v50 = [v87 startDate];
            v51 = [v49 isBeforeDate:v50];

            if ((v51 & 1) == 0)
            {
              v52 = [v46 startDate];
              v53 = [v87 endDate];
              v54 = [v52 isAfterDate:v53];

              if (v54)
              {
                goto LABEL_47;
              }

              v111 = 0u;
              v112 = 0u;
              v109 = 0u;
              v110 = 0u;
              v55 = [v87 events];
              v56 = [v55 countByEnumeratingWithState:&v109 objects:v138 count:16];
              if (v56)
              {
                v57 = *v110;
                while (2)
                {
                  for (k = 0; k != v56; k = k + 1)
                  {
                    if (*v110 != v57)
                    {
                      objc_enumerationMutation(v55);
                    }

                    v59 = *(*(&v109 + 1) + 8 * k);
                    v60 = [v46 eventIdentifier];
                    v61 = [v59 eventIdentifier];
                    v62 = [v60 isEqual:v61];

                    if (v62)
                    {

                      goto LABEL_39;
                    }
                  }

                  v56 = [v55 countByEnumeratingWithState:&v109 objects:v138 count:16];
                  if (v56)
                  {
                    continue;
                  }

                  break;
                }
              }

              [v87 addEvent:v46];
LABEL_39:
              v63 = [v46 eventIdentifier];
              v64 = [v85 containsObject:v63];

              if ((v64 & 1) == 0)
              {
                v65 = [(MOTripAnnotationManager *)self resourceFromWorkoutEvent:v46];
                v66 = v65;
                if (v65)
                {
                  [v65 setPriorityScore:v44];
                  [v87 addResource:v66];
                  v67 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
                  if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
                  {
                    v68 = objc_opt_class();
                    v69 = NSStringFromClass(v68);
                    *v134 = 138412802;
                    *&v134[4] = v69;
                    *&v134[12] = 2112;
                    *&v134[14] = v46;
                    *&v134[22] = 2112;
                    v135 = v87;
                    _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "%@: add to context event %@ to trip, %@", v134, 0x20u);
                  }

                  v70 = [v46 eventIdentifier];
                  [v85 addObject:v70];

                  v44 = v44 + 1.0;
                }
              }
            }
          }
        }
      }

      v43 = [v86 countByEnumeratingWithState:&v113 objects:v139 count:16];
    }

    while (v43);
  }

LABEL_47:

  *v134 = 0;
  *&v134[8] = v134;
  *&v134[16] = 0x3032000000;
  v135 = __Block_byref_object_copy__6;
  v136 = __Block_byref_object_dispose__6;
  v137 = objc_opt_new();
  v105 = 0;
  v106 = &v105;
  v107 = 0x2020000000;
  v108 = 0;
  v99 = 0;
  v100 = &v99;
  v101 = 0x3032000000;
  v102 = __Block_byref_object_copy__6;
  v103 = __Block_byref_object_dispose__6;
  v104 = objc_opt_new();
  v93 = 0;
  v94 = &v93;
  v95 = 0x3032000000;
  v96 = __Block_byref_object_copy__6;
  v97 = __Block_byref_object_dispose__6;
  v98 = objc_opt_new();
  v92.receiver = self;
  v92.super_class = MOTripAnnotationManager;
  v71 = [(MOAnnotationManager *)&v92 fUniverse];
  v91[0] = _NSConcreteStackBlock;
  v91[1] = 3221225472;
  v91[2] = __88__MOTripAnnotationManager_materializeTripBundle_contextEvents_updateWithFilteredEvents___block_invoke_336;
  v91[3] = &unk_100336D38;
  v91[4] = v134;
  v91[5] = &v105;
  v91[6] = &v99;
  v91[7] = buf;
  v91[8] = &v93;
  [MOContextAnnotationUtilities addPhotoResourcesWithDateArray:v87 universe:v71 handler:v91];

  v72 = [(MOTripAnnotationManager *)self _assignPriorityScoreForPlace:v125[5] placeInfoArray:v94[5]];
  [(MOTripAnnotationManager *)self _assignPriorityScoreForPhotoResources:*(*&v134[8] + 40)];
  [v87 setPlace:v81];
  if (v125[5])
  {
    v73 = [obj arrayByAddingObjectsFromArray:?];
    [v87 setPlaces:v73];
  }

  else
  {
    [v87 setPlaces:obj];
  }

  [v87 setResources:*(*&v134[8] + 40)];
  [v87 setPhotoSource:v106[3]];
  v74 = [v100[5] copy];
  [v87 setPhotoTraits:v74];

  v75 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
  {
    [MOTripAnnotationManager materializeTripBundle:contextEvents:updateWithFilteredEvents:];
  }

  _Block_object_dispose(&v93, 8);
  _Block_object_dispose(&v99, 8);

  _Block_object_dispose(&v105, 8);
  _Block_object_dispose(v134, 8);

  _Block_object_dispose(&v118, 8);
  _Block_object_dispose(&v124, 8);

  _Block_object_dispose(buf, 8);
LABEL_53:
}

void __88__MOTripAnnotationManager_materializeTripBundle_contextEvents_updateWithFilteredEvents___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v8 = a3;
  v9 = a4;
  if ([v10 count])
  {
    objc_storeStrong((*(a1[4] + 8) + 40), a2);
    objc_storeStrong((*(a1[5] + 8) + 40), a4);
  }

  if ([v8 count])
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a3);
  }
}

void __88__MOTripAnnotationManager_materializeTripBundle_contextEvents_updateWithFilteredEvents___block_invoke_336(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v49 = a2;
  v44 = a4;
  v46 = a7;
  objc_storeStrong((*(a1[4] + 8) + 40), a2);
  *(*(a1[5] + 8) + 24) = a3;
  objc_storeStrong((*(a1[6] + 8) + 40), a4);
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v48 = a1;
  obj = *(*(a1[7] + 8) + 40);
  v50 = [obj countByEnumeratingWithState:&v60 objects:v65 count:16];
  if (v50)
  {
    v47 = *v61;
    v12 = @"kMOPlaceStartDate";
    do
    {
      for (i = 0; i != v50; i = i + 1)
      {
        if (*v61 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [*(*(&v60 + 1) + 8 * i) mutableCopy];
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v15 = v49;
        v16 = [v15 countByEnumeratingWithState:&v56 objects:v64 count:16];
        if (!v16)
        {

          v20 = 0.0;
          goto LABEL_28;
        }

        v17 = v16;
        v51 = i;
        v18 = 0;
        v53 = v15;
        v54 = 0;
        v19 = *v57;
        v20 = 0.0;
        v21 = v46;
        v52 = *v57;
        do
        {
          v22 = 0;
          v55 = v17;
          do
          {
            if (*v57 != v19)
            {
              objc_enumerationMutation(v15);
            }

            v23 = *(*(&v56 + 1) + 8 * v22);
            if ([v23 type] == 2)
            {
              v24 = v18;
              v25 = [v21 objectAtIndex:v18];
              v26 = v12;
              [v14 objectForKeyedSubscript:v12];
              v28 = v27 = v21;
              if ([v25 isOnOrAfter:v28])
              {
                v29 = v14;
                v30 = [v14 objectForKeyedSubscript:@"kMOPlaceEndDate"];
                v31 = [v25 isOnOrBefore:v30];

                if (v31)
                {
                  v32 = [v23 photoCurationScore];
                  v33 = v24;
                  if (v32)
                  {
                    v34 = [v23 photoCurationScore];
                    [v34 floatValue];
                    v20 = v20 + v35;
                  }

                  else
                  {
                    v20 = v20 + 0.5;
                  }

                  v36 = v27;
                  v14 = v29;

                  v15 = v53;
                  ++v54;
                  v12 = @"kMOPlaceStartDate";
                  v19 = v52;
                  v21 = v36;
                  goto LABEL_21;
                }

                v21 = v27;
                v12 = @"kMOPlaceStartDate";
                v14 = v29;
                v19 = v52;
                v15 = v53;
              }

              else
              {

                v21 = v27;
                v12 = v26;
              }

              v33 = v24;
LABEL_21:
              v18 = v33 + 1;

              v17 = v55;
            }

            v22 = v22 + 1;
          }

          while (v17 != v22);
          v17 = [v15 countByEnumeratingWithState:&v56 objects:v64 count:16];
        }

        while (v17);

        if (v54)
        {
          v20 = v20 / v54;
        }

        i = v51;
LABEL_28:
        *&v37 = v20;
        v38 = [NSNumber numberWithFloat:v37];
        [v14 setObject:v38 forKey:@"kPhotoCurationScore"];

        v39 = [v14 objectForKeyedSubscript:@"kMOPlaceEndDate"];
        v40 = [v14 objectForKeyedSubscript:v12];
        [v39 timeIntervalSinceDate:v40];
        v42 = v41;

        v43 = [NSNumber numberWithDouble:v42];
        [v14 setObject:v43 forKey:@"kEventDwellDuration"];

        [v14 removeObjectForKey:v12];
        [v14 removeObjectForKey:@"kMOPlaceEndDate"];
        [*(*(v48[8] + 8) + 40) addObject:v14];
      }

      v50 = [obj countByEnumeratingWithState:&v60 objects:v65 count:16];
    }

    while (v50);
  }
}

- (id)_assignPriorityScoreForPlace:(id)a3 placeInfoArray:(id)a4
{
  v6 = a3;
  v43 = [(MOTripAnnotationManager *)self _filterPlaceUsingPredicates:a4];
  v40 = v6;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = [v6 mutableCopy];
  v44 = [obj countByEnumeratingWithState:&v55 objects:v71 count:16];
  if (v44)
  {
    v42 = *v56;
    do
    {
      v7 = 0;
      do
      {
        if (*v56 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v45 = v7;
        v8 = *(*(&v55 + 1) + 8 * v7);
        [v8 setPriorityScore:20000.0];
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v9 = v43;
        v10 = [v9 countByEnumeratingWithState:&v51 objects:v70 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v52;
          while (2)
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v52 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v51 + 1) + 8 * i);
              v15 = [v14 allKeys];
              v16 = [v15 objectAtIndexedSubscript:0];

              v17 = [v8 identifier];
              v18 = [v17 UUIDString];
              v19 = [v18 isEqualToString:v16];

              if (v19)
              {
                v20 = [v14 objectForKeyedSubscript:v16];
                [v8 setPriorityScore:{objc_msgSend(v20, "unsignedIntValue")}];

                goto LABEL_16;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v51 objects:v70 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:

        v7 = v45 + 1;
      }

      while ((v45 + 1) != v44);
      v44 = [obj countByEnumeratingWithState:&v55 objects:v71 count:16];
    }

    while (v44);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v21 = obj;
  v22 = [v21 countByEnumeratingWithState:&v47 objects:v69 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v48;
    v25 = &MOLogFacilityTripAnnotationManager;
    do
    {
      v26 = 0;
      v46 = v23;
      do
      {
        if (*v48 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v27 = *(*(&v47 + 1) + 8 * v26);
        v28 = _mo_log_facility_get_os_log(v25);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = [v27 identifier];
          v30 = [v29 UUIDString];
          [v27 placeName];
          v31 = v24;
          v32 = v25;
          v34 = v33 = v21;
          [v27 priorityScore];
          v36 = v35;
          v37 = [v27 startDate];
          v38 = [v27 endDate];
          *buf = 138413314;
          v60 = v30;
          v61 = 2112;
          v62 = v34;
          v63 = 2048;
          v64 = v36;
          v65 = 2112;
          v66 = v37;
          v67 = 2112;
          v68 = v38;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "_assignPriorityScoreForPlace:MOPlace id is:%@, name is %@, priorityscore:%f, startdate:%@ enddate:%@", buf, 0x34u);

          v21 = v33;
          v25 = v32;
          v24 = v31;
          v23 = v46;
        }

        v26 = v26 + 1;
      }

      while (v23 != v26);
      v23 = [v21 countByEnumeratingWithState:&v47 objects:v69 count:16];
    }

    while (v23);
  }

  return v21;
}

- (void)_assignPriorityScoreForPhotoResources:(id)a3
{
  v3 = a3;
  v4 = [NSPredicate predicateWithFormat:@"type = %lu", 2];
  v5 = [v3 filteredArrayUsingPredicate:v4];
  if ([v5 count])
  {
    v6 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:0];
    v21 = v6;
    v7 = [NSArray arrayWithObjects:&v21 count:1];
    v8 = [v5 sortedArrayUsingDescriptors:v7];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v17;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = (v12 + 300);
          if (!v12)
          {
            v15 = 100.0;
          }

          [*(*(&v16 + 1) + 8 * i) setPriorityScore:v15];
          ++v12;
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }
}

- (id)_filterPlaceUsingPredicates:(id)a3
{
  v5 = a3;
  if (![interestingPOIcategories count])
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MOTripAnnotationManager _filterPlaceUsingPredicates:];
    }

    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MOTripAnnotationManager.m" lineNumber:1129 description:{@"_filterPlaceUsingPredicates: interestingPOIcategories is empty (in %s:%d)", "-[MOTripAnnotationManager _filterPlaceUsingPredicates:]", 1129}];
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__6;
  v31 = __Block_byref_object_dispose__6;
  v8 = 0;
  v32 = objc_opt_new();
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  do
  {
    minimumDwellTime = self->_minimumDwellTime;
    if (v8 > 3)
    {
      if (v8 > 5)
      {
        if (v8 == 6)
        {
          v10 = [NSPredicate predicateWithFormat:@"kPhotoCurationScore == 0 AND (kEventDwellDuration >= %f) AND NOT (kMOPlacePOICategory IN %@)", *&minimumDwellTime, interestingPOIcategories];
          v11 = [[NSSortDescriptor alloc] initWithKey:@"kEventDwellDuration" ascending:0];
          v12 = 300;
        }

        else
        {
          v10 = [NSPredicate predicateWithFormat:@"kPhotoCurationScore == 0 AND (kEventDwellDuration < %f) AND NOT (kMOPlacePOICategory IN %@)", *&minimumDwellTime, interestingPOIcategories];
          v11 = [[NSSortDescriptor alloc] initWithKey:@"kPhotoCurationScore" ascending:0];
          v12 = 20000;
        }

        goto LABEL_23;
      }

      if (v8 != 4)
      {
        v10 = [NSPredicate predicateWithFormat:@"kPhotoCurationScore != 0 AND (kEventDwellDuration < %f) AND NOT (kMOPlacePOICategory IN %@)", *&minimumDwellTime, interestingPOIcategories];
        v13 = [[NSSortDescriptor alloc] initWithKey:@"kPhotoCurationScore" ascending:0];
        goto LABEL_21;
      }

      v10 = [NSPredicate predicateWithFormat:@"kPhotoCurationScore != 0 AND (kEventDwellDuration >= %f) AND NOT (kMOPlacePOICategory IN %@)", *&minimumDwellTime, interestingPOIcategories];
      v11 = [[NSSortDescriptor alloc] initWithKey:@"kPhotoCurationScore" ascending:0];
      v12 = 202;
    }

    else
    {
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          [NSPredicate predicateWithFormat:@"kPhotoCurationScore == 0 AND (kEventDwellDuration >= %f) AND kMOPlacePOICategory IN %@", *&minimumDwellTime, interestingPOIcategories];
        }

        else
        {
          [NSPredicate predicateWithFormat:@"kPhotoCurationScore == 0 AND (kEventDwellDuration < %f) AND kMOPlacePOICategory IN %@", *&minimumDwellTime, interestingPOIcategories];
        }
        v10 = ;
        v13 = [[NSSortDescriptor alloc] initWithKey:@"kEventDwellDuration" ascending:0];
        goto LABEL_21;
      }

      if (v8)
      {
        v10 = [NSPredicate predicateWithFormat:@"kPhotoCurationScore != 0 AND (kEventDwellDuration < %f) AND kMOPlacePOICategory IN %@", *&minimumDwellTime, interestingPOIcategories];
        v13 = [[NSSortDescriptor alloc] initWithKey:@"kPhotoCurationScore" ascending:0];
LABEL_21:
        v11 = v13;
        goto LABEL_24;
      }

      v10 = [NSPredicate predicateWithFormat:@"kPhotoCurationScore != 0 AND (kEventDwellDuration >= %f) AND kMOPlacePOICategory IN %@", *&minimumDwellTime, interestingPOIcategories];
      v11 = [[NSSortDescriptor alloc] initWithKey:@"kPhotoCurationScore" ascending:0];
      v12 = 200;
    }

LABEL_23:
    v24[3] = v12;
LABEL_24:
    v14 = [v5 filteredArrayUsingPredicate:v10];
    v37 = v11;
    v15 = [NSArray arrayWithObjects:&v37 count:1];
    v16 = [v14 sortedArrayUsingDescriptors:v15];

    if ([v16 count])
    {
      v17 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = v24[3];
        *buf = 138412546;
        v34 = v16;
        v35 = 2048;
        v36 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "_filterPlaceUsingPredicates:sorted array is %@ and start priority score is %lu", buf, 0x16u);
      }

      v19 = v24[3];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = __55__MOTripAnnotationManager__filterPlaceUsingPredicates___block_invoke;
      v22[3] = &unk_100336D60;
      v22[4] = &v27;
      v22[5] = &v23;
      [(MOTripAnnotationManager *)self _updateMOPlacePriorityScore:v16 priorityScore:v19 handler:v22];
    }

    ++v8;
  }

  while (v8 != 8);
  v20 = [v28[5] copy];
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);

  return v20;
}

id __55__MOTripAnnotationManager__filterPlaceUsingPredicates___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(*(*(a1 + 32) + 8) + 40) addObjectsFromArray:a2];
  *(*(*(a1 + 40) + 8) + 24) = a3;
  return result;
}

- (void)_updateMOPlacePriorityScore:(id)a3 priorityScore:(unint64_t)a4 handler:(id)a5
{
  v7 = a3;
  v18 = a5;
  v8 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        v14 = objc_opt_new();
        v15 = [NSNumber numberWithUnsignedInteger:a4];
        v16 = [v13 objectForKeyedSubscript:@"kMOPlaceUUID"];
        [v14 setObject:v15 forKey:v16];

        [v8 addObject:v14];
        ++a4;

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v17 = [v8 copy];
  v18[2](v18, v17, a4);
}

- (id)placeNameOfEvent:(id)a3 addressFormatOption:(id)a4 countryMode:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  if (v5)
  {
    [v7 formatCountryWithFormatOption:v8];
  }

  else
  {
    [v7 formatLocalityWithFormatOption:v8];
  }
  v9 = ;
  if (!v9)
  {
    v9 = [v7 formatAdministrativeAreaWithFormatOption:v8];
    if (!v9)
    {
      v9 = [v7 placeName];
    }
  }

  return v9;
}

- (id)dominantPlaceFromEvents:(id)a3 timeZone:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MOTripAnnotationManager *)self dominantInterestingPOIFromEvents:v6 timeZone:v7];
  if (!v8)
  {
    v8 = [(MOTripAnnotationManager *)self dominantPOIFormEvents:v6 timeZone:v7];
  }

  return v8;
}

- (id)dominantInterestingPOIFromEvents:(id)a3 timeZone:(id)a4
{
  v6 = a3;
  v85 = a4;
  v86 = objc_opt_new();
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v96 objects:v116 count:16];
  if (v8)
  {
    v9 = v8;
    v84 = 0;
    v10 = *v97;
    v11 = 0.0;
    v12 = &OBJC_IVAR___MOEvent__lifeEventsEvent;
    v83 = v7;
    v87 = self;
    do
    {
      v13 = 0;
      do
      {
        if (*v97 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v96 + 1) + 8 * v13);
        v15 = [v14 placeName];
        if (v15)
        {
          v16 = *(&self->super.super.isa + v12[61]);
          v17 = [v14 poiCategory];
          LOBYTE(v16) = [v16 containsObject:v17];

          if ((v16 & 1) == 0)
          {
            airportCategories = self->_airportCategories;
            v19 = [v14 poiCategory];
            LOBYTE(airportCategories) = [(NSSet *)airportCategories containsObject:v19];

            if ((airportCategories & 1) == 0)
            {
              v20 = self;
              v21 = v12;
              [v14 weightedDurationWithTimeZone:v85 overnightStartDateHour:v20->_overnightStartDateHour overnightDurationHours:v20->_overnightDurationHours overnightDurationWeight:v20->_overnightDurationWeight];
              v23 = v22;
              interestingPoiCategories = v20->_interestingPoiCategories;
              v25 = [v14 poiCategory];
              v26 = [(NSSet *)interestingPoiCategories containsObject:v25];

              v27 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
              {
                *&v32 = COERCE_DOUBLE(@"NO");
                if (v26)
                {
                  *&v32 = COERCE_DOUBLE(@"YES");
                }

                v81 = v32;
                [v14 duration];
                v34 = v33;
                v80 = [v14 poiCategory];
                v82 = [v14 routineEvent];
                v35 = [v82 poiCategory];
                v36 = [(MOTripAnnotationManager *)v87 addressFormatOption];
                v79 = [v14 formatLocalityWithFormatOption:v36];
                *buf = 138413826;
                v103 = v15;
                v104 = 2112;
                v105 = *&v81;
                v106 = 2048;
                v107 = v34;
                v108 = 2048;
                v109 = v23;
                v110 = 2112;
                v111 = v80;
                v112 = 2112;
                v113 = v35;
                v114 = 2112;
                v115 = v79;
                _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "trip manager (dominantInterestingPOIFromEvents), the dominant name, %@, interesting, %@, duration, %f, weighted duration, %f, category, %@ -%@, city, %@", buf, 0x48u);
              }

              v11 = v11 + v23;

              if (v26)
              {
                v28 = [v86 objectForKey:v15];
                v29 = v28;
                v12 = v21;
                if (v28)
                {
                  [v28 doubleValue];
                  v23 = v23 + v30;
                }

                ++v84;
                v31 = [NSNumber numberWithDouble:v23];
                [v86 setObject:v31 forKey:v15];

                v7 = v83;
              }

              else
              {
                v7 = v83;
                v12 = v21;
              }

              self = v87;
            }
          }
        }

        v13 = v13 + 1;
      }

      while (v9 != v13);
      v37 = [v7 countByEnumeratingWithState:&v96 objects:v116 count:16];
      v9 = v37;
    }

    while (v37);

    if (!v84)
    {
      v50 = 0;
      goto LABEL_65;
    }

    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v38 = v86;
    v39 = [v38 countByEnumeratingWithState:&v92 objects:v101 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = 0;
      v42 = *v93;
      v43 = -1.0;
      do
      {
        for (i = 0; i != v40; i = i + 1)
        {
          if (*v93 != v42)
          {
            objc_enumerationMutation(v38);
          }

          v45 = *(*(&v92 + 1) + 8 * i);
          v46 = [v38 objectForKey:v45];
          [v46 doubleValue];
          v48 = v47;

          if (v48 > v43)
          {
            v49 = v45;

            v41 = v49;
            v43 = v48;
          }
        }

        v40 = [v38 countByEnumeratingWithState:&v92 objects:v101 count:16];
      }

      while (v40);
    }

    else
    {
      v41 = 0;
      v43 = -1.0;
    }

    if (v11 <= 0.0)
    {
      v51 = 0.0;
    }

    else
    {
      v51 = v43 / v11;
    }

    v52 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      v77 = [v41 mask];
      minimumDominancyRatioForInterestingPOITripThreshold = self->_minimumDominancyRatioForInterestingPOITripThreshold;
      *buf = 138412802;
      v103 = v77;
      v104 = 2048;
      v105 = v51;
      v106 = 2048;
      v107 = minimumDominancyRatioForInterestingPOITripThreshold;
      _os_log_debug_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "trip manager (dominantInterestingPOIFromEvents), the dominant name, %@, ratio, %f, threshold, %f", buf, 0x20u);
    }

    v7 = v83;
    if (v51 <= self->_minimumDominancyRatioForInterestingPOITripThreshold)
    {
      v50 = 0;
    }

    else
    {
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v53 = v83;
      v54 = [v53 countByEnumeratingWithState:&v88 objects:v100 count:16];
      if (v54)
      {
        v55 = v54;
        v56 = *v89;
LABEL_44:
        v57 = 0;
        while (1)
        {
          if (*v89 != v56)
          {
            objc_enumerationMutation(v53);
          }

          v58 = *(*(&v88 + 1) + 8 * v57);
          v59 = [v58 placeName];
          v60 = [v41 isEqualToString:v59];

          if (v60)
          {
            break;
          }

          if (v55 == ++v57)
          {
            v55 = [v53 countByEnumeratingWithState:&v88 objects:v100 count:16];
            if (v55)
            {
              goto LABEL_44;
            }

            goto LABEL_50;
          }
        }

        v62 = v58;

        if (v62)
        {
          v64 = [(MOTripAnnotationManager *)self addressFormatOption];
          v61 = [v62 formatLocalityWithFormatOption:v64];
          v63 = 0;
          goto LABEL_54;
        }

        v61 = 0;
        v63 = 1;
      }

      else
      {
LABEL_50:
        v61 = 0;
        v62 = 0;
        v63 = 1;
        v64 = v53;
LABEL_54:
      }

      v65 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
      {
        v66 = [v41 mask];
        [v61 mask];
        v67 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 138412546;
        v103 = v66;
        v104 = 2112;
        v105 = v67;
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_INFO, "trip manager (dominantInterestingPOIFromEvents), place name, %@, city name, %@", buf, 0x16u);
      }

      v68 = [MOPlace alloc];
      v69 = +[NSUUID UUID];
      if (v63)
      {
        v50 = [(MOPlace *)v68 initWithIdentifier:v69 placeName:v41 enclosingArea:0 placeType:3 placeUserType:0 location:0 locationMode:0.0 poiCategory:v51 categoryMuid:0.0 distanceToHomeInMiles:-1.0 placeNameConfidence:2 familiarityIndexLOI:0 priorityScore:0 startDate:0 endDate:0];

        v70 = [v53 firstObject];
      }

      else
      {
        v71 = [(MOTripAnnotationManager *)self addressFormatOption];
        v72 = [v62 formatLocalityWithFormatOption:v71];
        v73 = [v62 location];
        [v62 familiarityIndexLOI];
        v50 = [(MOPlace *)v68 initWithIdentifier:v69 placeName:v41 enclosingArea:v72 placeType:3 placeUserType:0 location:v73 locationMode:0.0 poiCategory:v51 categoryMuid:v74 distanceToHomeInMiles:-1.0 placeNameConfidence:2 familiarityIndexLOI:0 priorityScore:0 startDate:0 endDate:0];

        v70 = v62;
      }

      v75 = [v70 eventIdentifier];
      [(MOPlace *)v50 setSourceEventIdentifier:v75];

      if (v63)
      {
      }

      v7 = v83;
    }
  }

  else
  {
    v50 = 0;
    v41 = v7;
  }

LABEL_65:

  return v50;
}

- (id)dominantPOIFormEvents:(id)a3 timeZone:(id)a4
{
  v6 = a3;
  v67 = a4;
  v7 = objc_opt_new();
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v77 objects:v93 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v78;
    v11 = 0.0;
    v12 = &OBJC_IVAR___MOEvent__lifeEventsEvent;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v78 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v77 + 1) + 8 * i);
        v15 = [v14 placeName];
        if (v15)
        {
          v16 = *(&self->super.super.isa + v12[61]);
          v17 = [v14 poiCategory];
          LOBYTE(v16) = [v16 containsObject:v17];

          if ((v16 & 1) == 0)
          {
            [v14 weightedDurationWithTimeZone:v67 overnightStartDateHour:self->_overnightStartDateHour overnightDurationHours:self->_overnightDurationHours overnightDurationWeight:self->_overnightDurationWeight];
            v19 = v18;
            v11 = v11 + v18;
            if ([v14 placeType] == 2 || objc_msgSend(v14, "placeType") == 3)
            {
              v20 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
              {
                [v14 duration];
                v26 = v25;
                v27 = [v14 poiCategory];
                v28 = [v14 routineEvent];
                v29 = [v28 poiCategory];
                *buf = 138413314;
                v84 = v15;
                v85 = 2048;
                v86 = v26;
                v87 = 2048;
                v88 = v19;
                v89 = 2112;
                v90 = v27;
                v91 = 2112;
                v92 = v29;
                _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "trip manager (dominantPOIFormEvents), the dominant name, %@, duration, %f, weighted duration, %f, category, %@ -%@", buf, 0x34u);
              }

              v21 = [v7 objectForKey:v15];
              v22 = v21;
              if (v21)
              {
                [v21 doubleValue];
                v19 = v19 + v23;
              }

              v24 = [NSNumber numberWithDouble:v19];
              [v7 setObject:v24 forKey:v15];

              v12 = &OBJC_IVAR___MOEvent__lifeEventsEvent;
            }
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v77 objects:v93 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 0.0;
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v30 = v7;
  v31 = [v30 countByEnumeratingWithState:&v73 objects:v82 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = 0;
    v34 = *v74;
    v35 = -1.0;
    do
    {
      for (j = 0; j != v32; j = j + 1)
      {
        if (*v74 != v34)
        {
          objc_enumerationMutation(v30);
        }

        v37 = *(*(&v73 + 1) + 8 * j);
        v38 = [v30 objectForKey:v37];
        [v38 doubleValue];
        v40 = v39;

        if (v40 > v35)
        {
          v41 = v37;

          v33 = v41;
          v35 = v40;
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v73 objects:v82 count:16];
    }

    while (v32);
  }

  else
  {
    v33 = 0;
    v35 = -1.0;
  }

  if (v11 <= 0.0)
  {
    v42 = 0.0;
  }

  else
  {
    v42 = v35 / v11;
  }

  v43 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    v64 = [v33 mask];
    minimumDominancyRatioForSinglePOITripThreshold = self->_minimumDominancyRatioForSinglePOITripThreshold;
    *buf = 138412802;
    v84 = v64;
    v85 = 2048;
    v86 = v42;
    v87 = 2048;
    v88 = minimumDominancyRatioForSinglePOITripThreshold;
    _os_log_debug_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "trip manager (dominantPOIFormEvents), the dominant name, %@, ratio, %f, threshold, %f", buf, 0x20u);
  }

  if (v33 && v42 > self->_minimumDominancyRatioForSinglePOITripThreshold)
  {
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v44 = obj;
    v45 = [v44 countByEnumeratingWithState:&v69 objects:v81 count:16];
    if (v45)
    {
      v46 = *v70;
      while (2)
      {
        for (k = 0; k != v45; k = k + 1)
        {
          if (*v70 != v46)
          {
            objc_enumerationMutation(v44);
          }

          v48 = *(*(&v69 + 1) + 8 * k);
          v49 = [v48 placeName];
          v50 = [v33 isEqualToString:v49];

          if (v50)
          {
            v45 = v48;
            goto LABEL_48;
          }
        }

        v45 = [v44 countByEnumeratingWithState:&v69 objects:v81 count:16];
        if (v45)
        {
          continue;
        }

        break;
      }
    }

LABEL_48:

    v52 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      v53 = [v33 mask];
      *buf = 138412290;
      v84 = v53;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "trip manager (dominantPOIFormEvents), place name, %@", buf, 0xCu);
    }

    v54 = [MOPlace alloc];
    v55 = +[NSUUID UUID];
    if (v45)
    {
      v66 = [(MOTripAnnotationManager *)self addressFormatOption];
      v56 = [v45 formatLocalityWithFormatOption:v66];
      v57 = [v45 location];
      v58 = [v45 poiCategory];
      v59 = [v45 categoryMuid];
      [v45 familiarityIndexLOI];
      v51 = [(MOPlace *)v54 initWithIdentifier:v55 placeName:v33 enclosingArea:v56 placeType:3 placeUserType:0 location:v57 locationMode:0.0 poiCategory:v42 categoryMuid:v60 distanceToHomeInMiles:-1.0 placeNameConfidence:2 familiarityIndexLOI:v58 priorityScore:v59 startDate:0 endDate:0];

      v61 = v45;
    }

    else
    {
      v51 = [(MOPlace *)v54 initWithIdentifier:v55 placeName:v33 enclosingArea:0 placeType:3 placeUserType:0 location:0 locationMode:0.0 poiCategory:v42 categoryMuid:0.0 distanceToHomeInMiles:-1.0 placeNameConfidence:2 familiarityIndexLOI:0 priorityScore:0 startDate:0 endDate:0];

      v61 = [v44 firstObject];
    }

    v62 = [v61 eventIdentifier];
    [(MOPlace *)v51 setSourceEventIdentifier:v62];

    if (!v45)
    {
    }
  }

  else
  {
    v51 = 0;
  }

  return v51;
}

- (id)dominantPlaceNamesFromEvents:(id)a3 countryMode:(BOOL)a4 timeZone:(id)a5
{
  v84 = a4;
  v7 = a3;
  v79 = a5;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v96 = [v7 count];
    v97 = 2048;
    *&v98 = v84;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "trip manager (dominantPlaceNameFromEvents), events, %lu, country mode, %lu", buf, 0x16u);
  }

  v9 = @"aboveDoorShortAddress";
  configurationManager = self->_configurationManager;
  if (configurationManager)
  {
    v11 = [NSString stringWithFormat:@"%@_%@", @"addressFormatting", @"formatOption"];
    v12 = [(MOConfigurationManagerBase *)configurationManager getStringSettingForKey:v11 withFallback:v9];

    v9 = v12;
  }

  v86 = objc_opt_new();
  v80 = objc_opt_new();
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v91 objects:v105 count:16];
  v81 = v9;
  obj = v13;
  if (v14)
  {
    v15 = v14;
    v16 = &OBJC_IVAR___MOEvent__lifeEventsEvent;
    v17 = *v92;
    do
    {
      v18 = 0;
      v82 = v15;
      do
      {
        if (*v92 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v91 + 1) + 8 * v18);
        v20 = v16[62];
        v21 = *(&self->super.super.isa + v20);
        v22 = [v19 poiCategory];
        LOBYTE(v21) = [v21 containsObject:v22];

        if ((v21 & 1) == 0)
        {
          v23 = [(MOTripAnnotationManager *)self placeNameOfEvent:v19 addressFormatOption:v9 countryMode:v84];
          if (v23)
          {
            v24 = v16;
            v25 = [v86 objectForKey:v23];
            lessInterestingPoiCategories = self->_lessInterestingPoiCategories;
            v27 = [v19 poiCategory];
            if ([(NSSet *)lessInterestingPoiCategories containsObject:v27])
            {

              goto LABEL_17;
            }

            v28 = *(&self->super.super.isa + v20);
            v29 = [v19 poiCategory];
            LODWORD(v28) = [v28 containsObject:v29];

            if (v28)
            {
LABEL_17:
              [v19 duration];
              v31 = v30 * self->_overnightDurationWeight;
              if (v25)
              {
                goto LABEL_18;
              }

LABEL_20:
              v36 = [NSNumber numberWithDouble:v31];
              [v86 setObject:v36 forKey:v23];

              v16 = v24;
              v33 = [v19 location];
              v34 = v80;
            }

            else
            {
              [v19 weightedDurationWithTimeZone:v79 overnightStartDateHour:self->_overnightStartDateHour overnightDurationHours:self->_overnightDurationHours overnightDurationWeight:self->_overnightDurationWeight];
              v31 = v35;
              if (!v25)
              {
                goto LABEL_20;
              }

LABEL_18:
              v16 = v24;
              [v25 doubleValue];
              v33 = [NSNumber numberWithDouble:v31 + v32];
              v34 = v86;
            }

            [v34 setObject:v33 forKey:v23];
            v15 = v82;

            v9 = v81;
          }

          else
          {
            v25 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              [MOTripAnnotationManager dominantPlaceNamesFromEvents:v104 countryMode:v19 timeZone:?];
            }
          }
        }

        v18 = v18 + 1;
      }

      while (v15 != v18);
      v13 = obj;
      v15 = [obj countByEnumeratingWithState:&v91 objects:v105 count:16];
    }

    while (v15);
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v37 = v86;
  v38 = [v37 countByEnumeratingWithState:&v87 objects:v103 count:16];
  if (!v38)
  {

    v40 = 0;
    v56 = v80;
    goto LABEL_50;
  }

  v39 = v38;
  v40 = 0;
  v41 = 0;
  v42 = *v88;
  v43 = 0.0;
  v44 = -1.0;
  v45 = -1.0;
  do
  {
    for (i = 0; i != v39; i = i + 1)
    {
      if (*v88 != v42)
      {
        objc_enumerationMutation(v37);
      }

      v47 = *(*(&v87 + 1) + 8 * i);
      v48 = [v37 objectForKey:v47];
      [v48 doubleValue];
      v50 = v49;

      if (v50 <= v45)
      {
        v51 = v47;
        v52 = v50;
        if (v50 <= v44)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v51 = v41;

        v40 = v51;
        v52 = v45;
        v41 = v47;
        v45 = v50;
      }

      v53 = v47;

      v40 = v51;
      v44 = v52;
LABEL_34:
      v54 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        v55 = [v47 mask];
        *buf = 138412546;
        v96 = v55;
        v97 = 2048;
        v98 = v50;
        _os_log_debug_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEBUG, "trip manager (dominantPlaceNameFromEvents), place, %@, dwell, %f", buf, 0x16u);
      }

      v43 = v43 + v50;
    }

    v39 = [v37 countByEnumeratingWithState:&v87 objects:v103 count:16];
  }

  while (v39);

  v56 = v80;
  if (v41)
  {
    v57 = v43 <= 0.0;
    v58 = v44 / v43;
    if (v43 > 0.0)
    {
      v59 = v45 / v43;
    }

    else
    {
      v59 = 0.0;
    }

    if (v57)
    {
      v60 = 0.0;
    }

    else
    {
      v60 = v58;
    }

    v61 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
    {
      v62 = [v41 mask];
      v63 = [v40 mask];
      *buf = 138413058;
      v96 = v62;
      v97 = 2048;
      v98 = v59;
      v99 = 2112;
      v100 = v63;
      v101 = 2048;
      v102 = v60;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "trip manager (dominantPlaceNameFromEvents), the dominant name, %@, ratio, %f, the second name, %@, ratio, %f", buf, 0x2Au);
    }

    v64 = [v80 objectForKey:v41];
    if (v40)
    {
      v65 = [v80 objectForKey:v40];
    }

    else
    {
      v65 = 0;
    }

    v83 = v65;
    [MOContextAnnotationUtilities weightedAverageForObjects:obj weightPath:@"duration" valuePath:@"familiarityIndexLOI"];
    v68 = v67;
    v69 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
    {
      v70 = [v41 mask];
      *buf = 138412546;
      v96 = v70;
      v97 = 2048;
      *&v98 = v84;
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "trip manager (dominantPlaceNameFromEvents), place name, %@, country mode, %lu", buf, 0x16u);
    }

    v71 = objc_opt_new();
    v72 = [[MOPlace alloc] initWithPlaceName:v41 placeType:100 placeUserType:0 location:v64 locationMode:2 poiCategory:0 categoryMuid:0.0 distanceToHomeInMiles:v59 placeNameConfidence:v68 familiarityIndexLOI:0];
    [(MOPlace *)v72 setPriorityScore:20000.0];
    [(MOPlace *)v72 setEnclosingArea:v41];
    v73 = [obj firstObject];
    v74 = [v73 eventIdentifier];
    [(MOPlace *)v72 setSourceEventIdentifier:v74];

    [v71 addObject:v72];
    if (v40)
    {
      v75 = [[MOPlace alloc] initWithPlaceName:v40 placeType:100 placeUserType:0 location:v83 locationMode:2 poiCategory:0 categoryMuid:0.0 distanceToHomeInMiles:v60 placeNameConfidence:v68 familiarityIndexLOI:0];

      [(MOPlace *)v75 setPriorityScore:20000.0];
      [(MOPlace *)v75 setEnclosingArea:v41];
      v76 = [obj firstObject];
      v77 = [v76 eventIdentifier];
      [(MOPlace *)v75 setSourceEventIdentifier:v77];

      [v71 addObject:v75];
      v72 = v75;
    }

    v66 = [v71 copy];

    v56 = v80;
    goto LABEL_59;
  }

LABEL_50:
  v64 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
  if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
  {
    [MOTripAnnotationManager dominantPlaceNamesFromEvents:countryMode:timeZone:];
  }

  v41 = 0;
  v66 = &__NSArray0__struct;
LABEL_59:

  return v66;
}

- (void)resourcesFromEvents:(id)a3 handler:(id)a4
{
  v6 = a3;
  v59 = a4;
  v7 = [(NSSet *)self->_airportCategories setByAddingObjectsFromSet:self->_lessInterestingPoiCategories];
  v64 = objc_opt_new();
  v61 = objc_opt_new();
  v60 = objc_opt_new();
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v66 objects:v78 count:16];
  if (v9)
  {
    v10 = v9;
    v65 = *v67;
    v62 = v8;
    v63 = self;
    do
    {
      v11 = 0;
      do
      {
        if (*v67 != v65)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v66 + 1) + 8 * v11);
        v13 = [v12 routineEvent];
        v14 = [v13 poiCategory];
        if ([v7 containsObject:v14])
        {

LABEL_9:
          v17 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v40 = objc_opt_class();
            v41 = NSStringFromClass(v40);
            v42 = [v12 placeName];
            v43 = [v42 mask];
            v44 = [v12 poiCategory];
            v45 = [v12 routineEvent];
            v46 = [v45 poiCategory];
            *buf = 138413058;
            v71 = v41;
            v72 = 2112;
            v73 = v43;
            v74 = 2112;
            v75 = v44;
            v76 = 2112;
            v77 = v46;
            _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%@: supress resource, place, %@, category, %@ (%@)", buf, 0x2Au);

            self = v63;
            v8 = v62;
          }

          goto LABEL_11;
        }

        v15 = [v12 poiCategory];
        v16 = [v7 containsObject:v15];

        if (v16)
        {
          goto LABEL_9;
        }

        [(MOTripAnnotationManager *)self visitLabelMediumConfidenceThreshold];
        v19 = v18;
        [(MOTripAnnotationManager *)self visitLabelHighConfidenceThreshold];
        v21 = v20;
        [(MOTripAnnotationManager *)self aoiVisitLabelConfidentThreshold];
        v23 = v22;
        v24 = [(MOAnnotationManager *)self fUniverse];
        v17 = [MOContextAnnotationUtilities placeFromVisitEvent:v12 preferredCategories:0 poiCategoryBlocklist:v7 mediumConfidenceThreshold:v24 highConfidenceThreshold:v19 aoiConfidenceThreshold:v21 universe:v23];

        if (!v17)
        {
          v32 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v38 = objc_opt_class();
            v39 = NSStringFromClass(v38);
            *buf = 138412546;
            v71 = v39;
            v72 = 2112;
            v73 = v12;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "%@: resourcesFromBaseEvents, place is null, event, %@", buf, 0x16u);
          }

          goto LABEL_26;
        }

        [v64 addObject:v17];
        v25 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v52 = objc_opt_class();
          v53 = NSStringFromClass(v52);
          v54 = [v17 placeName];
          v55 = [v54 mask];
          v56 = [v12 placeMapItem];
          v57 = [v56 length];
          *buf = 138412802;
          v71 = v53;
          v72 = 2112;
          v73 = v55;
          v74 = 2048;
          v75 = v57;
          _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "%@: resourcesFromBaseEvents, place, %@, mapItem.length, %lu", buf, 0x20u);

          v8 = v62;
          self = v63;
        }

        v26 = [v12 placeMapItem];
        if (v26)
        {
          v27 = v26;
          v28 = [v17 placeUserType];

          if (v28 != 2)
          {
            v29 = [MOResource alloc];
            v30 = [v17 placeName];
            v31 = [v12 placeMapItem];
            v32 = [(MOResource *)v29 initWithName:v30 mapItemHandle:v31 priorityScore:-1.0];

            v33 = [v12 eventIdentifier];
            [v32 setSourceEventIdentifier:v33];

            [v60 addObject:v32];
            v34 = objc_opt_new();
            v35 = [v17 identifier];
            v36 = [v35 UUIDString];
            [v34 setObject:v36 forKey:@"kMOPlaceUUID"];

            v37 = [v17 poiCategory];
            if (v37)
            {
              [v17 poiCategory];
            }

            else
            {
              +[NSString string];
            }
            v47 = ;
            self = v63;

            [v34 setObject:v47 forKey:@"kMOPlacePOICategory"];
            v48 = [v17 categoryMuid];

            if (v48)
            {
              v49 = [v17 categoryMuid];
              [v34 setObject:v49 forKey:@"kMOPlaceCategoryMuid"];
            }

            v50 = [v12 startDate];
            [v34 setObject:v50 forKey:@"kMOPlaceStartDate"];

            v51 = [v12 endDate];
            [v34 setObject:v51 forKey:@"kMOPlaceEndDate"];

            [v61 addObject:v34];
            v8 = v62;
LABEL_26:
          }
        }

LABEL_11:

        v11 = v11 + 1;
      }

      while (v10 != v11);
      v58 = [v8 countByEnumeratingWithState:&v66 objects:v78 count:16];
      v10 = v58;
    }

    while (v58);
  }

  v59[2](v59, v60, v64, v61);
}

- (id)buildPromptDescriptionForEventBundle:(id)a3
{
  v3 = a3;
  v4 = [v3 place];
  v5 = [v4 placeName];

  if (v5)
  {
    v6 = [v3 place];
    v7 = [v6 placeName];
    v8 = [NSString stringWithFormat:@"Trip to %@", v7];
  }

  else
  {
    v8 = @"Trip";
  }

  return v8;
}

- (id)loadSummaryTripMonitorFromStore:(id)a3
{
  v4 = a3;
  v5 = v4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__6;
  v17 = __Block_byref_object_dispose__6;
  v18 = 0;
  if (v4 && (v12[0] = _NSConcreteStackBlock, v12[1] = 3221225472, v12[2] = __59__MOTripAnnotationManager_loadSummaryTripMonitorFromStore___block_invoke, v12[3] = &unk_100336D88, v12[4] = self, v12[5] = &v13, [v4 fetchFSMWithName:@"SummaryTripMonitor" CompletionHandler:v12], v14[5]))
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = v14[5];
      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "load fsm model, %@", buf, 0xCu);
    }

    v8 = v14[5];
  }

  else
  {
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "No existing fsm. Return newmodel.", buf, 2u);
    }

    v8 = [[MOFSM alloc] initWithName:@"SummaryTripMonitor"];
  }

  v10 = v8;
  _Block_object_dispose(&v13, 8);

  return v10;
}

void __59__MOTripAnnotationManager_loadSummaryTripMonitorFromStore___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  if (v7)
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __59__MOTripAnnotationManager_loadSummaryTripMonitorFromStore___block_invoke_cold_1(a1, v7, v8);
    }
  }
}

- (void)updateSummaryTripMonitor:(id)a3
{
  v4 = a3;
  v5 = [(MOTripAnnotationManager *)self fsmStore];

  v6 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "saving fsm model, %@", buf, 0xCu);
    }

    v8 = [v4 copy];
    [v8 cleanUpBeforeUpdate];
    v9 = [(MOTripAnnotationManager *)self fsmStore];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __52__MOTripAnnotationManager_updateSummaryTripMonitor___block_invoke;
    v10[3] = &unk_100336DB0;
    v11 = v8;
    v7 = v8;
    [v9 updateFSM:v7 completionHandler:v10];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MOTripAnnotationManager updateSummaryTripMonitor:];
  }
}

void __52__MOTripAnnotationManager_updateSummaryTripMonitor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __52__MOTripAnnotationManager_updateSummaryTripMonitor___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "saved fsm model, %@", &v7, 0xCu);
  }
}

- (void)setupSummaryTripMonitorWithHomeLOI:(id)a3
{
  v22 = a3;
  v4 = [v22 mapItem];
  v5 = [v4 address];
  v6 = [v5 countryCode];

  if (v6)
  {
    v7 = [v22 mapItem];
    v8 = [v7 address];
    v9 = [MOFSM countryFromAddress:v8];

    v10 = [v22 mapItem];
    v11 = [v10 address];
    v12 = [MOFSM countryCodeFromAddress:v11];

    v13 = [v22 mapItem];
    v14 = [v13 address];
    v15 = [MOFSM stateFromAddress:v14];

    v16 = [v22 mapItem];
    v17 = [v16 address];
    v18 = [MOFSM stateCodeFromAddress:v17];

    if ([(NSSet *)self->_stateStateTripEligibleCountries containsObject:v12]&& v18 != 0)
    {
      v19 = 2;
    }

    else
    {
      v19 = 1;
    }

    v20 = [(MOTripAnnotationManager *)self summaryTripMonitor];
    [v20 setMode:v19];

    v21 = [(MOTripAnnotationManager *)self summaryTripMonitor];
    [v21 setReferenceDataWithCountry:v9 countryCode:v12 state:v15 stateCode:v18];
  }
}

- (void)generateDailyTripsFromBaseEvents:(uint64_t)a1 contextEvents:(uint64_t)a2 pregeneratedTripBundles:hometownReferenceLocations:.cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_1(a1, a2);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  *v4 = 138412290;
  *v3 = v6;
  _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%@: hometown visit, no open trip session", v4, 0xCu);
}

- (void)dominantPlaceNamesFromEvents:(uint64_t)a1 countryMode:(uint64_t)a2 timeZone:.cold.1(uint64_t a1, uint64_t a2)
{
  v5 = [OUTLINED_FUNCTION_2_1(a1 a2)];
  v6 = [v5 description];
  v7 = [v6 mask];
  *v4 = 138739971;
  *v3 = v7;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "trip manager (dominantPlaceNameFromEvents), address is not available, address, %{sensitive}@", v4, 0xCu);
}

void __59__MOTripAnnotationManager_loadSummaryTripMonitorFromStore___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = *(a1 + 32);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = 138412802;
  v9 = v7;
  v10 = 2112;
  v11 = @"SummaryTripMonitor";
  v12 = 2112;
  v13 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%@: fetchFSMWithName, %@, error, %@", &v8, 0x20u);
}

@end