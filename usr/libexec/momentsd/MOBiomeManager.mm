@interface MOBiomeManager
- (MOBiomeManager)initWithEventManager:(id)a3 setDefaultValues:(BOOL)a4;
- (id)generateBiomeEventsFromBundle:(id)a3 andOnboardingStatus:(id)a4;
- (id)generateBiomeEventsFromEvent:(id)a3 andOnboardingStatus:(id)a4;
- (id)generateBiomeEventsFromMomentsEventDataBundle:(id)a3 withBundleEngagement:(id)a4;
- (void)_fetchAndSetDemographicsWithCompletionHandler:(id)a3;
- (void)_updateDataStreamWithEngagement;
- (void)donateEvents:(id)a3 andBundles:(id)a4 andOnboardingStatus:(id)a5;
- (void)fetchMomentsEngagementForBundles:(id)a3 CompletionHandler:(id)a4;
- (void)fetchMomentsEventDataBetweenStartDate:(id)a3 EndDate:(id)a4 CompletionHandler:(id)a5;
@end

@implementation MOBiomeManager

- (MOBiomeManager)initWithEventManager:(id)a3 setDefaultValues:(BOOL)a4
{
  v8 = a3;
  if (v8)
  {
    if (initWithEventManager_setDefaultValues__onceToken != -1)
    {
      [MOBiomeManager initWithEventManager:setDefaultValues:];
    }

    v31.receiver = self;
    v31.super_class = MOBiomeManager;
    v9 = [(MOBiomeManager *)&v31 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_queue, initWithEventManager_setDefaultValues__sharedQueue);
      v11 = BiomeLibrary();
      v12 = [v11 Moments];
      v13 = [v12 Stats];
      v14 = [v13 EventData];
      stream = v10->_stream;
      v10->_stream = v14;

      v16 = BiomeLibrary();
      v17 = [v16 Moments];
      v18 = [v17 Events];
      v19 = [v18 Engagement];
      engagementStream = v10->_engagementStream;
      v10->_engagementStream = v19;

      objc_storeStrong(&v10->_eventManager, a3);
      stateIHA = v10->_stateIHA;
      v10->_stateIHA = &__kCFBooleanFalse;

      age = v10->_age;
      v10->_age = &off_10036B3E0;

      ageBucketed = v10->_ageBucketed;
      v10->_ageBucketed = &off_10036B3E0;

      biologicalSex = v10->_biologicalSex;
      v10->_biologicalSex = &off_10036B3E0;

      v10->_setDefault = a4;
      v25 = objc_alloc_init(MOBiomeDonationUtility);
      biomeDonationUtility = v10->_biomeDonationUtility;
      v10->_biomeDonationUtility = v25;
    }

    self = v10;
    v27 = self;
  }

  else
  {
    v28 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [MOBiomeManager initWithEventManager:v28 setDefaultValues:?];
    }

    v29 = +[NSAssertionHandler currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"MOBiomeManager.m" lineNumber:144 description:@"Invalid parameter not satisfying: eventManager"];

    v27 = 0;
  }

  return v27;
}

void __56__MOBiomeManager_initWithEventManager_setDefaultValues___block_invoke(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("MOBiomeManager", v3);
  v2 = initWithEventManager_setDefaultValues__sharedQueue;
  initWithEventManager_setDefaultValues__sharedQueue = v1;
}

- (id)generateBiomeEventsFromEvent:(id)a3 andOnboardingStatus:(id)a4
{
  v6 = a4;
  biomeDonationUtility = self->_biomeDonationUtility;
  v8 = a3;
  v33 = [(MOBiomeDonationUtility *)biomeDonationUtility convertEvent:v8];
  v9 = [v6 objectForKeyedSubscript:@"onboardingStatus"];

  if (v9)
  {
    v10 = [v6 objectForKeyedSubscript:@"onboardingStatus"];
    v31 = +[MOBiomeDonationUtility mapOnboardingFlowCompletion:](MOBiomeDonationUtility, "mapOnboardingFlowCompletion:", [v10 intValue]);
  }

  else
  {
    v31 = 0;
  }

  v11 = [BMMomentsEventData alloc];
  stateIHA = self->_stateIHA;
  v28 = v11;
  age = self->_age;
  v27 = [(NSNumber *)self->_ageBucketed intValue];
  v26 = [(NSNumber *)self->_biologicalSex intValue];
  v37 = [v8 startDate];
  v25 = [v8 endDate];
  v24 = [v8 describeCategory];

  v36 = [v6 objectForKeyedSubscript:@"journalIsInstalled"];
  v35 = [v6 objectForKeyedSubscript:@"journalConfigLockJournal"];
  v34 = [v6 objectForKeyedSubscript:@"journalConfigSkipSuggestions"];
  v23 = [v6 objectForKeyedSubscript:@"settingSwitchActivity"];
  v12 = [v6 objectForKeyedSubscript:@"settingSwitchCommunication"];
  v22 = [v6 objectForKeyedSubscript:@"settingSwitchLocation"];
  v13 = [v6 objectForKeyedSubscript:@"settingSwitchMedia"];
  v21 = [v6 objectForKeyedSubscript:@"settingSwitchPeople"];
  v14 = [v6 objectForKeyedSubscript:@"settingSwitchPhoto"];
  v15 = [v6 objectForKeyedSubscript:@"settingSwitchStateOfMind"];
  v16 = [v6 objectForKeyedSubscript:@"settingSwitchReflection"];
  v17 = [v6 objectForKeyedSubscript:@"settingBroaderSwitchLocation"];
  LODWORD(v20) = v31;
  LODWORD(v19) = v26;
  v32 = [v28 initWithEvent:v33 bundle:0 isBundle:&__kCFBooleanFalse IHAState:stateIHA age:age ageRange:v27 biologicalSex:v19 startDate:v37 endDate:v25 categoryOfEvent:v24 bundleInterface:0 bundleEvergreenType:0 sugSeetEngType:0 appEntryEngType:0 megaSignalTypeUsed:0 viewVisibleSuggestionsCount:0 viewTotalSuggestionsCount:0 onboardingFlowCompletionState:v20 isJournalAppInstalled:v36 isJournalAppLocked:v35 isJournalSuggestionSkipped:v34 isActivitySettingsSwitchEnabled:v23 isCommunicationSettingsSwitchEnabled:v12 isSignificantLocationSettingsSwitchEnabled:v22 isMediaSettingsSwitchEnabled:v13 isNearbyPeopleSettingsSwitchEnabled:v21 isPhotoSettingsSwitchEnabled:v14 isStateOfMindSettingsSwitchEnabled:v15 isReflectionSettingsSwitchEnabled:v16 isBroadSystemLocationSettingsSwitchEnabled:v17];

  return v32;
}

- (id)generateBiomeEventsFromBundle:(id)a3 andOnboardingStatus:(id)a4
{
  v6 = a3;
  v7 = a4;
  v44 = [(MOBiomeDonationUtility *)self->_biomeDonationUtility convertEventBundle:v6];
  v49[0] = @"shopping";
  v49[1] = @"eating out";
  v49[2] = @"flight";
  v8 = [NSArray arrayWithObjects:v49 count:3];
  v9 = v6;
  v10 = [v6 action];
  v11 = [v10 actionName];
  v43 = v8;
  LODWORD(v8) = [v8 containsObject:v11];

  if (v8)
  {
    v12 = [v9 action];
    v42 = [v12 actionName];
  }

  else
  {
    v42 = 0;
  }

  v41 = [v9 getBundleType];
  if ([v9 interfaceType] == 11 && (objc_msgSend(v9, "resources"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, v14))
  {
    v15 = [v9 resources];
    v16 = [v15 objectAtIndexedSubscript:0];
    v40 = [v16 name];
  }

  else
  {
    v40 = 0;
  }

  v17 = [v7 objectForKeyedSubscript:@"onboardingStatus"];

  if (v17)
  {
    v18 = [v7 objectForKeyedSubscript:@"onboardingStatus"];
    v38 = +[MOBiomeDonationUtility mapOnboardingFlowCompletion:](MOBiomeDonationUtility, "mapOnboardingFlowCompletion:", [v18 intValue]);
  }

  else
  {
    v38 = 0;
  }

  v19 = [BMMomentsEventData alloc];
  stateIHA = self->_stateIHA;
  v35 = v19;
  age = self->_age;
  v34 = [(NSNumber *)self->_ageBucketed intValue];
  v33 = [(NSNumber *)self->_biologicalSex intValue];
  v32 = [v9 startDate];
  v48 = [v9 endDate];
  v47 = [v7 objectForKeyedSubscript:@"journalIsInstalled"];
  v46 = [v7 objectForKeyedSubscript:@"journalConfigLockJournal"];
  v45 = [v7 objectForKeyedSubscript:@"journalConfigSkipSuggestions"];
  v31 = [v7 objectForKeyedSubscript:@"settingSwitchActivity"];
  v30 = [v7 objectForKeyedSubscript:@"settingSwitchCommunication"];
  v29 = [v7 objectForKeyedSubscript:@"settingSwitchLocation"];
  v28 = [v7 objectForKeyedSubscript:@"settingSwitchMedia"];
  v27 = [v7 objectForKeyedSubscript:@"settingSwitchPeople"];
  v20 = [v7 objectForKeyedSubscript:@"settingSwitchPhoto"];
  v21 = [v7 objectForKeyedSubscript:@"settingSwitchStateOfMind"];
  v22 = [v7 objectForKeyedSubscript:@"settingSwitchReflection"];
  v23 = [v7 objectForKeyedSubscript:@"settingBroaderSwitchLocation"];
  LODWORD(v26) = v38;
  LODWORD(v25) = v33;
  v39 = [v35 initWithEvent:0 bundle:v44 isBundle:&__kCFBooleanTrue IHAState:stateIHA age:age ageRange:v34 biologicalSex:v25 startDate:v32 endDate:v48 categoryOfEvent:0 bundleInterface:v41 bundleEvergreenType:v40 sugSeetEngType:0 appEntryEngType:0 megaSignalTypeUsed:v42 viewVisibleSuggestionsCount:0 viewTotalSuggestionsCount:0 onboardingFlowCompletionState:v26 isJournalAppInstalled:v47 isJournalAppLocked:v46 isJournalSuggestionSkipped:v45 isActivitySettingsSwitchEnabled:v31 isCommunicationSettingsSwitchEnabled:v30 isSignificantLocationSettingsSwitchEnabled:v29 isMediaSettingsSwitchEnabled:v28 isNearbyPeopleSettingsSwitchEnabled:v27 isPhotoSettingsSwitchEnabled:v20 isStateOfMindSettingsSwitchEnabled:v21 isReflectionSettingsSwitchEnabled:v22 isBroadSystemLocationSettingsSwitchEnabled:v23];

  return v39;
}

- (void)donateEvents:(id)a3 andBundles:(id)a4 andOnboardingStatus:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __62__MOBiomeManager_donateEvents_andBundles_andOnboardingStatus___block_invoke;
  v11[3] = &unk_10033DE88;
  v12 = a3;
  v13 = a4;
  v14 = self;
  v15 = a5;
  v8 = v15;
  v9 = v13;
  v10 = v12;
  [(MOBiomeManager *)self _fetchAndSetDemographicsWithCompletionHandler:v11];
}

void __62__MOBiomeManager_donateEvents_andBundles_andOnboardingStatus___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityBiomeManager);
  v8 = v7;
  if (v5 | v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __62__MOBiomeManager_donateEvents_andBundles_andOnboardingStatus___block_invoke_cold_1();
    }
  }

  else
  {
    v37 = v5;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "moving onto biome donation", buf, 2u);
    }

    v8 = +[NSDate distantFuture];
    v9 = +[NSDate distantPast];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v10 = *(a1 + 32);
    v11 = [v10 countByEnumeratingWithState:&v45 objects:v51 count:16];
    v36 = v6;
    if (v11)
    {
      v12 = v11;
      v13 = *v46;
      do
      {
        v14 = 0;
        v15 = v9;
        v16 = v8;
        do
        {
          if (*v46 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v17 = *(*(&v45 + 1) + 8 * v14);
          v18 = [v17 startDate];
          v8 = [v18 earlierDate:v16];

          v19 = [v17 endDate];
          v9 = [v19 laterDate:v15];

          v14 = v14 + 1;
          v15 = v9;
          v16 = v8;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v12);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v20 = *(a1 + 40);
    v21 = [v20 countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v42;
      do
      {
        v24 = 0;
        v25 = v9;
        v26 = v8;
        do
        {
          if (*v42 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v27 = *(*(&v41 + 1) + 8 * v24);
          v28 = [v27 startDate];
          v8 = [v28 earlierDate:v26];

          v29 = [v27 endDate];
          v9 = [v29 laterDate:v25];

          v24 = v24 + 1;
          v25 = v9;
          v26 = v8;
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v41 objects:v50 count:16];
      }

      while (v22);
    }

    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = __62__MOBiomeManager_donateEvents_andBundles_andOnboardingStatus___block_invoke_652;
    v38[3] = &unk_10033DE60;
    v30 = *(a1 + 48);
    v31 = *(a1 + 32);
    v32 = *(a1 + 56);
    v33 = *(a1 + 40);
    *&v34 = v32;
    *(&v34 + 1) = v33;
    *&v35 = v30;
    *(&v35 + 1) = v31;
    v39 = v35;
    v40 = v34;
    [v30 fetchMomentsEventDataBetweenStartDate:v8 EndDate:v9 CompletionHandler:v38];

    v6 = v36;
    v5 = v37;
  }
}

void __62__MOBiomeManager_donateEvents_andBundles_andOnboardingStatus___block_invoke_652(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        if ([v10 isBundle])
        {
          v11 = [v10 bundle];

          if (v11)
          {
            v12 = [v10 bundle];
            v13 = [v12 bundleIdentifier];
LABEL_12:
            v15 = v13;
            [v4 addObject:v13];

            continue;
          }
        }

        if (([v10 isBundle] & 1) == 0)
        {
          v14 = [v10 event];

          if (v14)
          {
            v12 = [v10 event];
            v13 = [v12 eventIdentifier];
            goto LABEL_12;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }

  v16 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __62__MOBiomeManager_donateEvents_andBundles_andOnboardingStatus___block_invoke_2;
  block[3] = &unk_10033DE38;
  v17 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v20 = v17;
  v21 = v4;
  v22 = *(a1 + 48);
  v23 = *(a1 + 56);
  v18 = v4;
  dispatch_async(v16, block);
}

void __62__MOBiomeManager_donateEvents_andBundles_andOnboardingStatus___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) stream];
  v27 = [v2 source];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v4)
  {
    v5 = v4;
    v26 = 0;
    v6 = *v33;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v32 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v10 = *(a1 + 48);
        v11 = [v8 eventIdentifier];
        v12 = [v11 UUIDString];
        LOBYTE(v10) = [v10 containsObject:v12];

        if ((v10 & 1) == 0)
        {
          v13 = [*(a1 + 32) generateBiomeEventsFromEvent:v8 andOnboardingStatus:*(a1 + 56)];
          [v27 sendEvent:v13];
          ++v26;
        }

        objc_autoreleasePoolPop(v9);
      }

      v5 = [v3 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v5);
  }

  else
  {
    v26 = 0;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = *(a1 + 64);
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v29;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v28 + 1) + 8 * j);
        v21 = *(a1 + 48);
        v22 = [v20 bundleIdentifier];
        v23 = [v22 UUIDString];
        LOBYTE(v21) = [v21 containsObject:v23];

        if ((v21 & 1) == 0)
        {
          v24 = [*(a1 + 32) generateBiomeEventsFromBundle:v20 andOnboardingStatus:*(a1 + 56)];
          [v27 sendEvent:v24];
          ++v17;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  v25 = _mo_log_facility_get_os_log(&MOLogFacilityBiomeManager);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v37 = v26;
    v38 = 2048;
    v39 = v17;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "biome donation, event count: %lu, bundle count: %lu", buf, 0x16u);
  }
}

- (id)generateBiomeEventsFromMomentsEventDataBundle:(id)a3 withBundleEngagement:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 bundle];
  v82 = [BMMomentsEventDataEventBundle alloc];
  v117 = [v7 bundleIdentifier];
  v113 = [v7 bundleStartDate];
  v115 = [v7 bundleEndDate];
  v107 = [v7 bundleCreationDate];
  v101 = [v7 bundleExpirationDate];
  v58 = [v7 bundleInterfaceType];
  v111 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 bundleSourceHealthExists]);
  v109 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 bundleSourcePhotoExists]);
  v105 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 bundleSourceProactiveExists]);
  v90 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 bundleSourceRoutineExists]);
  v103 = [v7 bundlePromptLanguageFormat];
  v57 = [v7 bundlePlaceType];
  v56 = [v7 bundlePlaceUserType];
  v55 = [v7 bundleBaseEventCateory];
  v99 = [v7 bundleEventIDs];
  v88 = [v7 bundleActionType];
  v97 = [v7 backgroundActions];
  v54 = [v7 bundleTimeTag];
  v53 = [v5 type];
  v95 = [v5 timestamp];
  v93 = [v5 clientIdentifier];
  v84 = [v5 viewContainerName];
  [v5 viewVisibleTime];
  v89 = [NSNumber numberWithDouble:?];
  v52 = [v5 typeAppEntry];
  v86 = [v5 clientIdentifierAppEntry];
  v79 = [v5 timestampAppEntry];
  v81 = [v5 startTimeAppEntry];
  v77 = [v5 endTimeAppEntry];
  v71 = [v5 totalCharactersAppEntry];
  v75 = [v5 addedCharactersAppEntry];
  v69 = [v7 suggestionIdentifier];
  v51 = [v7 photoSourceType];
  v73 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 bundleSourcePostAnalyticsExists]);
  v68 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 bundleSourcePDExists]);
  v50 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 bundleSourceMotionExists]);
  v67 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 bundleSourceBooksExists]);
  v49 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 bundleSourceScreenTimeExists]);
  v66 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 bundlePCount]);
  v48 = [v7 labelConfidenceScore];
  v47 = [v7 timeCorrelationScore];
  v45 = [v7 callDuration];
  v46 = [v7 interactionCount];
  v44 = [v7 interactionType];
  LODWORD(v43) = [v7 callPlace];
  HIDWORD(v43) = [v7 distanceFromHome];
  v42 = [v7 homeAvailability];
  v41 = [v7 workAvailability];
  v40 = [v7 bundleVisitMapItemSource];
  v39 = [v7 bundleVisitPlaceType];
  v38 = [v7 bundleVisitPlaceLabelGranularity];
  v37 = [v7 bundleIncludesAnomalousEvent];
  v65 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 isFiltered]);
  [v7 bundleSuperType];
  [v7 bundleSubType];
  v64 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 isAggregatedAndSuppressed]);
  [v7 summarizationGranularity];
  v63 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 includedInSummaryBundleOnly]);
  v62 = [v7 subBundleIDs];
  v61 = [v7 subSuggestionIDs];
  v36 = [v7 firstCreationDate];
  v60 = [v7 resources];
  v35 = [v7 persons];
  v31 = [v7 mainPlace];
  v34 = [v7 otherPlaces];
  v30 = [v7 photoTraits];
  v33 = [v7 clusterMetadata];
  v29 = [v7 outlierMetadata];
  [v7 bundleGoodnessScore];
  v32 = [NSNumber numberWithDouble:?];
  [v7 distinctnessScore];
  v28 = [NSNumber numberWithDouble:?];
  [v7 richnessScore];
  v27 = [NSNumber numberWithDouble:?];
  [v7 engagementScore];
  v26 = [NSNumber numberWithDouble:?];
  [v7 heuristicsScore];
  v8 = [NSNumber numberWithDouble:?];
  [v7 metadataForRank];
  HIDWORD(v24) = v48;
  v25 = LODWORD(v22) = v52;
  LODWORD(v24) = 0;
  LODWORD(v23) = 0;
  LODWORD(v21) = v53;
  LODWORD(v20) = 0;
  LODWORD(v19) = v54;
  LODWORD(v17) = v55;
  v83 = [v82 initWithBundleIdentifier:v117 bundleStartDate:v113 bundleEndDate:v115 bundleCreationDate:v107 bundleExpirationDate:v101 bundleInterfaceType:v58 bundleSourceHealthExists:v111 bundleSourcePhotoExists:v109 bundleSourceProactiveExists:v105 bundleSourceRoutineExists:v90 bundlePromptLanguageFormat:v103 bundlePromptToneID:0 bundlePromptParametersAvailability:0 bundlePlaceType:__PAIR64__(v56 bundlePlaceUserType:v57) bundleBaseEventCateory:v17 bundleEventIDs:v99 bundleActionType:v88 backgroundActions:v97 bundleIsFamilyIncluded:0 bundleTimeTag:v19 isBundleResourceTypeUnknown:0 isBundleResourceTypeValueIncluded:0 isBundleResourceTypePhotoAssetsIncluded:0 isBundleResourceTypeMediaIncluded:0 isBundleResourceTypeWebLinkIncluded:0 isBundleResourceTypeInterenceTagIncluded:0 bundlEngagement:v20 bundleVersion:0 rankingVersion:0 suggestionType:v21 suggestionTimestamp:v95 suggestionClientIdentifier:v93 suggestionViewContainerName:v84 suggestionViewVisibleTime:v89 appEntryEventType:v22 appEntryEventClientIdentifier:v86 appEntryEventTimestamp:v79 appEntryEventStartTime:v81 appEntryEventEndTime:v77 appEntryEventTotalCharacters:v71 appEntryEventAddedCharacters:v75 clientActivityEventType:v23 clientActivityEventClientIdentifier:0 clientActivityEventTimestamp:0 suggestionIdentifier:v69 photoSourceType:v51 photoLibraryType:v73 bundleSourcePostAnalyticsExists:v68 bundleSourcePDExists:v50 bundleSourceMotionExists:v67 bundleSourceBooksExists:v49 bundleSourceScreenTimeExists:&__NSArray0__struct gaPRArray:v66 bundlePCount:v24 ranking:__PAIR64__(v45 labelConfidenceScore:v47) timeCorrelationScore:__PAIR64__(v44 callDuration:v46) interactionCount:v43 interactionType:__PAIR64__(v41 callPlace:v42) distanceFromHome:__PAIR64__(v39 homeAvailability:v40) workAvailability:__PAIR64__(v37 bundleVisitMapItemSource:v38) bundleVisitPlaceType:v65 bundleVisitPlaceLabelGranularity:? bundleIncludesAnomalousEvent:? isFiltered:? bundleSuperType:? bundleSubType:? isAggregatedAndSuppressed:? summarizationGranularity:? includedInSummaryBundleOnly:? subBundleIDs:? subSuggestionIDs:? firstCreationDate:? resources:? persons:? mainPlace:? otherPlaces:? photoTraits:? clusterMetadata:? outlierMetadata:? bundleGoodnessScore:? distinctnessScore:? richnessScore:? engagementScore:? heuristicsScore:? metadataForRank:?];

  v91 = [BMMomentsEventData alloc];
  v118 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 IHAState]);
  v116 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 age]);
  LODWORD(v89) = [v6 ageRange];
  LODWORD(v88) = [v6 biologicalSex];
  v96 = [v6 bundle];
  v112 = [v96 bundleStartDate];
  v94 = [v6 bundle];
  v114 = [v94 bundleEndDate];
  v110 = [v6 bundleInterface];
  v108 = [v6 bundleEvergreenType];
  v106 = -[MOBiomeManager suggestionTypeToString:](self, "suggestionTypeToString:", [v5 type]);
  v9 = [v5 typeAppEntry];

  v104 = [(MOBiomeManager *)self appEntryTypeToString:v9];
  v87 = [v6 megaSignalTypeUsed];
  v85 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 viewVisibleSuggestionsCount]);
  v102 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 viewTotalSuggestionsCount]);
  LODWORD(v81) = [v6 onboardingFlowCompletionState];
  v80 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 isJournalAppInstalled]);
  v100 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 isJournalAppLocked]);
  v78 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 isJournalSuggestionSkipped]);
  v98 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 isActivitySettingsSwitchEnabled]);
  v74 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 isCommunicationSettingsSwitchEnabled]);
  v72 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 isSignificantLocationSettingsSwitchEnabled]);
  v76 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 isMediaSettingsSwitchEnabled]);
  v70 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 isNearbyPeopleSettingsSwitchEnabled]);
  v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 isPhotoSettingsSwitchEnabled]);
  v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 isStateOfMindSettingsSwitchEnabled]);
  v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 isReflectionSettingsSwitchEnabled]);
  v13 = [v6 isBroadSystemLocationSettingsSwitchEnabled];

  v14 = [NSNumber numberWithBool:v13];
  LODWORD(v18) = v81;
  LODWORD(v16) = v88;
  v92 = [v91 initWithEvent:0 bundle:v83 isBundle:&__kCFBooleanTrue IHAState:v118 age:v116 ageRange:v89 biologicalSex:v16 startDate:v112 endDate:v114 categoryOfEvent:0 bundleInterface:v110 bundleEvergreenType:v108 sugSeetEngType:v106 appEntryEngType:v104 megaSignalTypeUsed:v87 viewVisibleSuggestionsCount:v85 viewTotalSuggestionsCount:v102 onboardingFlowCompletionState:v18 isJournalAppInstalled:v80 isJournalAppLocked:v100 isJournalSuggestionSkipped:v78 isActivitySettingsSwitchEnabled:v98 isCommunicationSettingsSwitchEnabled:v74 isSignificantLocationSettingsSwitchEnabled:v72 isMediaSettingsSwitchEnabled:v76 isNearbyPeopleSettingsSwitchEnabled:v70 isPhotoSettingsSwitchEnabled:v10 isStateOfMindSettingsSwitchEnabled:v11 isReflectionSettingsSwitchEnabled:v12 isBroadSystemLocationSettingsSwitchEnabled:v14];

  return v92;
}

- (void)_updateDataStreamWithEngagement
{
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityBiomeManager);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "update biome data stream with latest engagement.", buf, 2u);
  }

  v4 = [(MOBiomeManager *)self stream];
  v5 = [v4 source];

  v6 = [(MOBiomeManager *)self stream];
  v7 = [v6 pruner];

  v8 = +[NSDate distantPast];
  v9 = +[NSDate distantFuture];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __49__MOBiomeManager__updateDataStreamWithEngagement__block_invoke;
  v12[3] = &unk_10033DF00;
  v12[4] = self;
  v13 = v7;
  v14 = v5;
  v10 = v5;
  v11 = v7;
  [(MOBiomeManager *)self fetchMomentsEventDataBetweenStartDate:v8 EndDate:v9 CompletionHandler:v12];
}

void __49__MOBiomeManager__updateDataStreamWithEngagement__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        if ([v10 isBundle])
        {
          v11 = [v10 bundle];
          v12 = [v11 bundleIdentifier];
          [v4 setValue:v10 forKey:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }

  v13 = [v4 allKeys];
  v14 = [NSSet setWithArray:v13];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __49__MOBiomeManager__updateDataStreamWithEngagement__block_invoke_2;
  v19[3] = &unk_10033DED8;
  v20 = v4;
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = *(a1 + 32);
  v21 = v16;
  v22 = v17;
  v23 = *(a1 + 48);
  v18 = v4;
  [v15 fetchMomentsEngagementForBundles:v14 CompletionHandler:v19];
}

void __49__MOBiomeManager__updateDataStreamWithEngagement__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityBiomeManager);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [v2 count];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "number of engagement biome events %lu.", &buf, 0xCu);
  }

  v50 = objc_opt_new();
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = v2;
  v52 = [obj countByEnumeratingWithState:&v79 objects:v91 count:16];
  if (v52)
  {
    v51 = *v80;
    do
    {
      for (i = 0; i != v52; i = i + 1)
      {
        if (*v80 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v69 = *(*(&v79 + 1) + 8 * i);
        v70 = [*(a1 + 32) objectForKeyedSubscript:?];
        v66 = [NSPredicate predicateWithFormat:@"engagementSource == %lu", 1];
        v4 = [obj objectForKeyedSubscript:v69];
        v65 = [v4 filteredArrayUsingPredicate:v66];

        v5 = [NSSortDescriptor sortDescriptorWithKey:@"timestamp" ascending:0];
        v90 = v5;
        v6 = [NSArray arrayWithObjects:&v90 count:1];
        v64 = [v65 sortedArrayUsingDescriptors:v6];

        v71 = [v64 firstObject];
        v63 = [NSPredicate predicateWithFormat:@"engagementSource == %lu", 2];
        v7 = [obj objectForKeyedSubscript:v69];
        v62 = [v7 filteredArrayUsingPredicate:v63];

        v8 = [NSSortDescriptor sortDescriptorWithKey:@"timestamp" ascending:0];
        v89 = v8;
        v9 = [NSArray arrayWithObjects:&v89 count:1];
        v61 = [v62 sortedArrayUsingDescriptors:v9];

        v10 = [v61 firstObject];
        v11 = [v70 bundle];
        LODWORD(v8) = [v11 suggestionType];
        if (v8 == [v71 type])
        {
          v12 = [v70 bundle];
          v13 = [v12 suggestionTimestamp];
          v14 = [v71 timestamp];
          v15 = [v13 isEqualToDate:v14];
        }

        else
        {
          v15 = 0;
        }

        v16 = [v70 bundle];
        v17 = [v16 appEntryEventType];
        if (v17 != [v10 typeAppEntry])
        {

LABEL_15:
          v54 = [MOBundleEngagement alloc];
          v53 = [v71 type];
          v59 = [v71 timestamp];
          v58 = [v71 clientIdentifier];
          v57 = [v71 viewContainerName];
          [v71 viewVisibleTime];
          v23 = v22;
          v56 = [v71 suggestionType];
          v55 = [v71 viewVisibleSuggestionsCount];
          v24 = [v71 viewTotalSuggestionsCount];
          v25 = [v10 typeAppEntry];
          v26 = [v10 typeAppEntryStr];
          v27 = [v10 timestampAppEntry];
          v28 = [v10 startTimeAppEntry];
          v29 = [v10 endTimeAppEntry];
          v30 = [v10 clientIdentifierAppEntry];
          v31 = [v10 totalCharactersAppEntry];
          v32 = [v10 addedCharactersAppEntry];
          LODWORD(v49) = v25;
          v33 = [(MOBundleEngagement *)v54 initWithType:v53 timestamp:v59 clientIdentifier:v58 viewContainerName:v57 viewVisibleTime:v56 suggestionType:v55 viewVisibleSuggestionsCount:v23 viewTotalSuggestionsCount:v24 typeAppEntry:v49 typeAppEntryStr:v26 timestampAppEntry:v27 startTimeAppEntry:v28 endTimeAppEntry:v29 clientIdentifierAppEntry:v30 totalCharactersAppEntry:v31 addedCharactersAppEntry:v32 engagementSource:0];

          [v50 setValue:v33 forKey:v69];
          goto LABEL_16;
        }

        v18 = [v70 bundle];
        v19 = [v18 appEntryEventTimestamp];
        v20 = [v10 timestampAppEntry];
        v21 = [v19 isEqualToDate:v20];

        if ((v15 & v21 & 1) == 0)
        {
          goto LABEL_15;
        }

LABEL_16:
      }

      v52 = [obj countByEnumeratingWithState:&v79 objects:v91 count:16];
    }

    while (v52);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v87 = 0x2020000000;
  v88 = 0;
  v34 = *(a1 + 40);
  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = __49__MOBiomeManager__updateDataStreamWithEngagement__block_invoke_668;
  v76[3] = &unk_10033DEB0;
  v35 = v50;
  v77 = v35;
  p_buf = &buf;
  [v34 deleteEventsPassingTest:v76];
  v36 = _mo_log_facility_get_os_log(&MOLogFacilityBiomeManager);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    v37 = *(*(&buf + 1) + 24);
    *v84 = 134217984;
    v85 = v37;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "deleted %lu obsolete data events from biome.", v84, 0xCu);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v38 = v35;
  v39 = 0;
  v40 = [v38 countByEnumeratingWithState:&v72 objects:v83 count:16];
  if (v40)
  {
    v41 = *v73;
    do
    {
      v42 = 0;
      v39 += v40;
      do
      {
        if (*v73 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = *(*(&v72 + 1) + 8 * v42);
        v44 = [*(a1 + 32) objectForKeyedSubscript:v43];
        v45 = [v38 objectForKeyedSubscript:v43];
        v46 = [*(a1 + 48) generateBiomeEventsFromMomentsEventDataBundle:v44 withBundleEngagement:v45];
        [*(a1 + 56) sendEvent:v46];

        v42 = v42 + 1;
      }

      while (v40 != v42);
      v40 = [v38 countByEnumeratingWithState:&v72 objects:v83 count:16];
    }

    while (v40);
  }

  v47 = _mo_log_facility_get_os_log(&MOLogFacilityBiomeManager);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
  {
    *v84 = 134217984;
    v85 = v39;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "recreate %lu biome events with updated engagement.", v84, 0xCu);
  }

  v48 = _mo_log_facility_get_os_log(&MOLogFacilityBiomeManager);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
  {
    *v84 = 0;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "update biome stream with latest engagement done.", v84, 2u);
  }

  _Block_object_dispose(&buf, 8);
}

uint64_t __49__MOBiomeManager__updateDataStreamWithEngagement__block_invoke_668(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  if (![v3 isBundle])
  {
    goto LABEL_4;
  }

  v4 = [*(a1 + 32) allKeys];
  v5 = [v3 bundle];
  v6 = [v5 bundleIdentifier];
  v7 = [v4 containsObject:v6];

  if (v7)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
    v8 = 1;
  }

  else
  {
LABEL_4:
    v8 = 0;
  }

  return v8;
}

- (void)fetchMomentsEngagementForBundles:(id)a3 CompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 count])
  {
    v8 = [(MOBiomeManager *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __69__MOBiomeManager_fetchMomentsEngagementForBundles_CompletionHandler___block_invoke;
    block[3] = &unk_10033BF58;
    block[4] = self;
    v12 = v7;
    v11 = v6;
    dispatch_async(v8, block);
  }

  else
  {
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityBiomeManager);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "No bundle identifier is passed in to return any engagements.", buf, 2u);
    }

    (*(v7 + 2))(v7, 0);
  }
}

void __69__MOBiomeManager_fetchMomentsEngagementForBundles_CompletionHandler___block_invoke(id *a1)
{
  v2 = objc_opt_new();
  v3 = [a1[4] engagementStream];
  v4 = [v3 publisher];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __69__MOBiomeManager_fetchMomentsEngagementForBundles_CompletionHandler___block_invoke_2;
  v10[3] = &unk_10033DF28;
  v11 = v2;
  v12 = a1[6];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __69__MOBiomeManager_fetchMomentsEngagementForBundles_CompletionHandler___block_invoke_672;
  v7[3] = &unk_10033DF50;
  v8 = a1[5];
  v9 = v11;
  v5 = v11;
  v6 = [v4 sinkWithCompletion:v10 receiveInput:v7];
}

void __69__MOBiomeManager_fetchMomentsEngagementForBundles_CompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    if ([v3 state] == 1)
    {
      v4 = _mo_log_facility_get_os_log(&MOLogFacilityBiomeManager);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __69__MOBiomeManager_fetchMomentsEngagementForBundles_CompletionHandler___block_invoke_2_cold_1(v3);
      }

      [*(a1 + 32) removeAllObjects];
    }
  }

  else
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityBiomeManager);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) count];
      v8 = 134217984;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Successfully fetched %ld engagement from MomentsEngagement.", &v8, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

void __69__MOBiomeManager_fetchMomentsEngagementForBundles_CompletionHandler___block_invoke_672(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [MOBundleEngagement alloc];
  v66 = [v3 suggestionEvent];
  v5 = [v66 type];
  v64 = [v3 suggestionEvent];
  v6 = [v64 timestamp];
  v62 = [v3 suggestionEvent];
  v54 = [v62 clientIdentifier];
  v60 = [v3 suggestionEvent];
  v7 = [v60 viewContainerName];
  v58 = [v3 suggestionEvent];
  [v58 viewVisibleTime];
  v9 = v8;
  v56 = [v3 suggestionEvent];
  v50 = [v56 suggestionType];
  v52 = [v3 suggestionEvent];
  v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v52 viewVisibleSuggestionsCount]);
  v11 = [v3 suggestionEvent];
  v12 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v11 viewTotalSuggestionsCount]);
  LODWORD(v45) = 0;
  v13 = [(MOBundleEngagement *)v4 initWithType:v5 timestamp:v6 clientIdentifier:v54 viewContainerName:v7 viewVisibleTime:v50 suggestionType:v10 viewVisibleSuggestionsCount:v9 viewTotalSuggestionsCount:v12 typeAppEntry:v45 typeAppEntryStr:0 timestampAppEntry:0 startTimeAppEntry:0 endTimeAppEntry:0 clientIdentifierAppEntry:0 totalCharactersAppEntry:0 addedCharactersAppEntry:0 engagementSource:1];

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v14 = [v3 suggestionEvent];
  v15 = [v14 fullBundleOrderedSet];

  v16 = [v15 countByEnumeratingWithState:&v73 objects:v78 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v74;
    do
    {
      v19 = 0;
      do
      {
        if (*v74 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v73 + 1) + 8 * v19) identifier];
        v21 = [v20 bundleId];

        if ([*(a1 + 32) containsObject:v21])
        {
          v22 = [*(a1 + 40) allKeys];
          v23 = [v22 containsObject:v21];

          if ((v23 & 1) == 0)
          {
            v24 = *(a1 + 40);
            v25 = objc_opt_new();
            [v24 setObject:v25 forKey:v21];
          }

          v26 = [*(a1 + 40) objectForKeyedSubscript:v21];
          [v26 addObject:v13];
        }

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v73 objects:v78 count:16];
    }

    while (v17);
  }

  v57 = [MOBundleEngagement alloc];
  v65 = [v3 entryEvent];
  v53 = [v65 type];
  v63 = [v3 entryEvent];
  v51 = [v63 appEntryEventType];
  v61 = [v3 entryEvent];
  v67 = [v61 timestamp];
  v59 = [v3 entryEvent];
  v27 = [v59 startTime];
  v55 = [v3 entryEvent];
  v47 = [v55 endTime];
  v49 = [v3 entryEvent];
  v28 = [v49 clientIdentifier];
  v48 = [v3 entryEvent];
  v29 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v48 totalCharacters]);
  v30 = [v3 entryEvent];
  v31 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v30 addedCharacters]);
  LODWORD(v46) = v53;
  v32 = [(MOBundleEngagement *)v57 initWithType:0 timestamp:0 clientIdentifier:0 viewContainerName:0 viewVisibleTime:0 suggestionType:0 viewVisibleSuggestionsCount:0.0 viewTotalSuggestionsCount:0 typeAppEntry:v46 typeAppEntryStr:v51 timestampAppEntry:v67 startTimeAppEntry:v27 endTimeAppEntry:v47 clientIdentifierAppEntry:v28 totalCharactersAppEntry:v29 addedCharactersAppEntry:v31 engagementSource:2];

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v68 = v3;
  v33 = [v3 entryEvent];
  v34 = [v33 identifier];

  v35 = [v34 countByEnumeratingWithState:&v69 objects:v77 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v70;
    do
    {
      v38 = 0;
      do
      {
        if (*v70 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = [*(*(&v69 + 1) + 8 * v38) bundleId];
        if ([*(a1 + 32) containsObject:v39])
        {
          v40 = [*(a1 + 40) allKeys];
          v41 = [v40 containsObject:v39];

          if ((v41 & 1) == 0)
          {
            v42 = *(a1 + 40);
            v43 = objc_opt_new();
            [v42 setObject:v43 forKey:v39];
          }

          v44 = [*(a1 + 40) objectForKeyedSubscript:v39];
          [v44 addObject:v32];
        }

        v38 = v38 + 1;
      }

      while (v36 != v38);
      v36 = [v34 countByEnumeratingWithState:&v69 objects:v77 count:16];
    }

    while (v36);
  }
}

- (void)fetchMomentsEventDataBetweenStartDate:(id)a3 EndDate:(id)a4 CompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 earlierDate:v9];
  v12 = [v11 isEqualToDate:v9];

  if (v12)
  {
    v13 = _mo_log_facility_get_os_log(&MOLogFacilityBiomeManager);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MOBiomeManager fetchMomentsEventDataBetweenStartDate:EndDate:CompletionHandler:];
    }

    v10[2](v10, 0);
  }

  else
  {
    v14 = [(MOBiomeManager *)self queue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __82__MOBiomeManager_fetchMomentsEventDataBetweenStartDate_EndDate_CompletionHandler___block_invoke;
    v15[3] = &unk_10033DFC8;
    v15[4] = self;
    v18 = v10;
    v16 = v9;
    v17 = v8;
    dispatch_async(v14, v15);
  }
}

void __82__MOBiomeManager_fetchMomentsEventDataBetweenStartDate_EndDate_CompletionHandler___block_invoke(id *a1)
{
  v2 = objc_opt_new();
  v3 = [a1[4] stream];
  v4 = [v3 publisher];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __82__MOBiomeManager_fetchMomentsEventDataBetweenStartDate_EndDate_CompletionHandler___block_invoke_2;
  v13[3] = &unk_10033DF78;
  v5 = v2;
  v6 = a1[4];
  v14 = v5;
  v15 = v6;
  v16 = a1[7];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __82__MOBiomeManager_fetchMomentsEventDataBetweenStartDate_EndDate_CompletionHandler___block_invoke_2_676;
  v9[3] = &unk_10033DFA0;
  v10 = a1[5];
  v11 = a1[6];
  v12 = v5;
  v7 = v5;
  v8 = [v4 sinkWithCompletion:v13 receiveInput:v9];
}

void __82__MOBiomeManager_fetchMomentsEventDataBetweenStartDate_EndDate_CompletionHandler___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    if ([v3 state] == 1)
    {
      v4 = _mo_log_facility_get_os_log(&MOLogFacilityBiomeManager);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __82__MOBiomeManager_fetchMomentsEventDataBetweenStartDate_EndDate_CompletionHandler___block_invoke_2_cold_1(v3);
      }

      [a1[4] removeAllObjects];
    }
  }

  else
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityBiomeManager);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [a1[4] count];
      *buf = 134217984;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Successfully fetched %ld MomentsEventData from Biome", buf, 0xCu);
    }
  }

  v7 = [a1[5] queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __82__MOBiomeManager_fetchMomentsEventDataBetweenStartDate_EndDate_CompletionHandler___block_invoke_675;
  v8[3] = &unk_10033B9D8;
  v10 = a1[6];
  v9 = a1[4];
  dispatch_async(v7, v8);
}

void __82__MOBiomeManager_fetchMomentsEventDataBetweenStartDate_EndDate_CompletionHandler___block_invoke_2_676(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  if (v3)
  {
    v11 = v3;
    if ([v3 isBundle])
    {
      v4 = [v11 bundle];
      [v4 bundleStartDate];
    }

    else
    {
      v4 = [v11 event];
      [v4 startDate];
    }
    v5 = ;

    if ([v11 isBundle])
    {
      v6 = [v11 bundle];
      [v6 bundleEndDate];
    }

    else
    {
      v6 = [v11 event];
      [v6 endDate];
    }
    v7 = ;

    v8 = [v5 earlierDate:*(a1 + 32)];
    if ([v8 isEqualToDate:*(a1 + 32)])
    {
    }

    else
    {
      v9 = [v7 laterDate:*(a1 + 40)];
      v10 = [v9 isEqualToDate:*(a1 + 40)];

      if ((v10 & 1) == 0)
      {
        [*(a1 + 48) addObject:v11];
      }
    }

    v3 = v11;
  }
}

- (void)_fetchAndSetDemographicsWithCompletionHandler:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MOBiomeManager _fetchAndSetDemographicsWithCompletionHandler:v6];
    }

    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MOBiomeManager.m" lineNumber:715 description:{@"Invalid parameter not satisfying: completion (in %s:%d)", "-[MOBiomeManager _fetchAndSetDemographicsWithCompletionHandler:]", 715}];
  }

  if (self->_eventManager && objc_opt_class() && +[MOPlatformInfo isIHAEnabled])
  {
    v8 = [(MOBiomeManager *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __64__MOBiomeManager__fetchAndSetDemographicsWithCompletionHandler___block_invoke;
    block[3] = &unk_100337B48;
    block[4] = self;
    v12 = v5;
    dispatch_async(v8, block);
  }

  else
  {
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityBiomeManager);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "no IHA permission", buf, 2u);
    }

    (*(v5 + 2))(v5, 0, 0);
  }
}

void __64__MOBiomeManager__fetchAndSetDemographicsWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setStateIHA:&__kCFBooleanTrue];
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityBiomeManager);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Fetching age/biologicalSex with IHA permission.", buf, 2u);
  }

  *buf = 0;
  v68 = buf;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__32;
  v71 = __Block_byref_object_dispose__32;
  v72 = 0;
  v64 = 0;
  v65[0] = &v64;
  v65[1] = 0x3032000000;
  v65[2] = __Block_byref_object_copy__32;
  v65[3] = __Block_byref_object_dispose__32;
  v66 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = [*(a1 + 32) eventManager];
  v5 = [v4 getHealthKitManager];

  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = __64__MOBiomeManager__fetchAndSetDemographicsWithCompletionHandler___block_invoke_682;
  v60[3] = &unk_10033A510;
  v6 = v3;
  v61 = v6;
  v62 = buf;
  v63 = &v64;
  [v5 fetchUserBiologicalSexWithHandler:v60];
  v7 = [NSString stringWithFormat:@"%@ - [%s] - %d - %s", @"MOSemaphoreWait", "/Library/Caches/com.apple.xbs/Sources/Moments/momentsd/PromptEngine/Biome/MOBiomeManager.m", 737, "[MOBiomeManager _fetchAndSetDemographicsWithCompletionHandler:]_block_invoke_2"];
  v59 = 0;
  v8 = MOSemaphoreWaitAndFaultIfTimeoutDefaultTimeout_Internal(v6, &v59, v7);
  v9 = v59;
  v10 = v59;
  if (!v8)
  {
    v11 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __50__MOUserData__fetchUserDataWithCompletionHandler___block_invoke_cold_1();
    }
  }

  if (*(v65[0] + 40))
  {
    v12 = _mo_log_facility_get_os_log(&MOLogFacilityBiomeManager);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __64__MOBiomeManager__fetchAndSetDemographicsWithCompletionHandler___block_invoke_cold_2(v65, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  if (v10)
  {
    v19 = _mo_log_facility_get_os_log(&MOLogFacilityBiomeManager);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __50__MOUserData__fetchUserDataWithCompletionHandler___block_invoke_cold_3();
    }

    objc_storeStrong((v65[0] + 40), v9);
  }

  v20 = *(v68 + 5);
  if (v20)
  {
    v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v20 biologicalSex]);
    [*(a1 + 32) setBiologicalSex:v21];
  }

  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__32;
  v57 = __Block_byref_object_dispose__32;
  v58 = 0;
  v50 = 0;
  v51[0] = &v50;
  v51[1] = 0x3032000000;
  v51[2] = __Block_byref_object_copy__32;
  v51[3] = __Block_byref_object_dispose__32;
  v52 = 0;
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = __64__MOBiomeManager__fetchAndSetDemographicsWithCompletionHandler___block_invoke_692;
  v46[3] = &unk_10033A538;
  v22 = dispatch_semaphore_create(0);
  v47 = v22;
  v48 = &v53;
  v49 = &v50;
  [v5 fetchUserAgeWithHandler:v46];
  v23 = [NSString stringWithFormat:@"%@ - [%s] - %d - %s", @"MOSemaphoreWait", "/Library/Caches/com.apple.xbs/Sources/Moments/momentsd/PromptEngine/Biome/MOBiomeManager.m", 766, "[MOBiomeManager _fetchAndSetDemographicsWithCompletionHandler:]_block_invoke_2"];
  v45 = 0;
  v24 = MOSemaphoreWaitAndFaultIfTimeoutDefaultTimeout_Internal(v22, &v45, v23);
  v25 = v45;
  v26 = v45;
  if (!v24)
  {
    v27 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      __50__MOUserData__fetchUserDataWithCompletionHandler___block_invoke_cold_1();
    }
  }

  if (*(v51[0] + 40))
  {
    v28 = _mo_log_facility_get_os_log(&MOLogFacilityBiomeManager);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      __64__MOBiomeManager__fetchAndSetDemographicsWithCompletionHandler___block_invoke_cold_5(v51, v28, v29, v30, v31, v32, v33, v34);
    }
  }

  if (v26)
  {
    v35 = _mo_log_facility_get_os_log(&MOLogFacilityBiomeManager);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      __50__MOUserData__fetchUserDataWithCompletionHandler___block_invoke_cold_6();
    }

    objc_storeStrong((v51[0] + 40), v25);
  }

  v36 = v54[5];
  if (v36)
  {
    v37 = [v36 copy];
    [*(a1 + 32) setAge:v37];
  }

  v38 = [*(a1 + 32) age];
  v39 = [MOMetric binForNumber:v38 bins:&off_10036E010];
  [*(a1 + 32) setAgeBucketed:v39];

  v40 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __64__MOBiomeManager__fetchAndSetDemographicsWithCompletionHandler___block_invoke_707;
  block[3] = &unk_10033DFF0;
  v42 = *(a1 + 40);
  v43 = &v64;
  v44 = &v50;
  dispatch_async(v40, block);

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v53, 8);

  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(buf, 8);
}

void __64__MOBiomeManager__fetchAndSetDemographicsWithCompletionHandler___block_invoke_682(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (!a3)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __64__MOBiomeManager__fetchAndSetDemographicsWithCompletionHandler___block_invoke_692(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (!a3)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __69__MOBiomeManager_fetchMomentsEngagementForBundles_CompletionHandler___block_invoke_2_cold_1(void *a1)
{
  v1 = [a1 error];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_13(&_mh_execute_header, v2, v3, "returning no engagement due to biome query error: %@", v4, v5, v6, v7, v8);
}

void __82__MOBiomeManager_fetchMomentsEventDataBetweenStartDate_EndDate_CompletionHandler___block_invoke_2_cold_1(void *a1)
{
  v1 = [a1 error];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_13(&_mh_execute_header, v2, v3, "completionHandler not called due to biome query error: %@", v4, v5, v6, v7, v8);
}

- (void)_fetchAndSetDemographicsWithCompletionHandler:(os_log_t)log .cold.1(os_log_t log)
{
  v1 = 136315394;
  v2 = "[MOBiomeManager _fetchAndSetDemographicsWithCompletionHandler:]";
  v3 = 1024;
  v4 = 715;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion (in %s:%d)", &v1, 0x12u);
}

@end