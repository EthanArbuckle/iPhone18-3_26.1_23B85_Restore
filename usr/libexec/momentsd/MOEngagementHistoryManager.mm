@interface MOEngagementHistoryManager
+ (id)appEntryEventToString:(id)string;
+ (id)suggestionEventToLabel:(unint64_t)label;
+ (unint64_t)appEntryEventToEnum:(id)enum;
+ (unint64_t)clientEventToEnum:(id)enum;
+ (unint64_t)getEngagmentTypeForEvent:(id)event;
+ (unint64_t)suggestionEventToEnum:(id)enum;
- (BOOL)streamEngagementEventsFromSource:(id)source storedBookmarks:(id)bookmarks error:(id *)error updatedBookmark:(id *)bookmark processEvent:(id)event;
- (MOEngagementHistoryManager)initWithUniverse:(id)universe;
- (id)_convertStringArrayIntoCombinedHashedString:(id)string;
- (id)convertBookmark:(id)bookmark;
- (id)engagementLightFromEngagement:(id)engagement fromDevice:(id)device;
- (id)fetchAppEntryEngagementEventsFromAllDevicesWithTypes:(id)types fromStartDate:(id)date toEndDate:(id)endDate withError:(id *)error;
- (id)fetchAppEntryEngagementEventsFromStartDate:(id)date toEndDate:(id)endDate withError:(id *)error;
- (id)fetchAppEntryEngagementEventsWithTypes:(id)types fromStartDate:(id)date toEndDate:(id)endDate withError:(id *)error;
- (id)fetchAppEntryEngagementLightEventsWithTypes:(id)types fromStartDate:(id)date toEndDate:(id)endDate withError:(id *)error;
- (id)fetchSuggestionEngagementEventsFromAllDevicesWithTypes:(id)types fromStartDate:(id)date toEndDate:(id)endDate withError:(id *)error;
- (id)fetchSuggestionEngagementEventsFromStartDate:(id)date toEndDate:(id)endDate withError:(id *)error;
- (id)fetchSuggestionEngagementEventsWithTypes:(id)types fromStartDate:(id)date toEndDate:(id)endDate withError:(id *)error;
- (id)fetchSuggestionEngagementLightEventsWithTypes:(id)types fromStartDate:(id)date toEndDate:(id)endDate withError:(id *)error;
- (id)getBMBundleSumaryForBundle:(id)bundle;
- (id)getEngagementBundleSumarySetForBundles:(id)bundles;
- (id)getEngagementStreamAsJson;
- (id)getEvergreenCountForSuggestionsSelectedOnlyFromStartDate:(id)date toEndDate:(id)endDate;
- (id)getEvergreenTypeCountForAppEntryEvent:(id)event withMinAddedCharacterCount:(int64_t)count andMaxAddedCharacterCount:(int64_t)characterCount fromStartDate:(id)date toEndDate:(id)endDate onceForEachBundle:(BOOL)bundle skipForEvents:(id)events;
- (id)getEvergreenTypeCountForAppEntryEvent:(id)event withMinimumAddedCharacters:(int64_t)characters;
- (id)getEvergreenTypeCountForSuggestionEngagmentEvent:(id)event;
- (id)getEvergreenTypeCountForSuggestionEngagmentEvent:(id)event from:(id)from to:(id)to onceForEachBundle:(BOOL)bundle skipForEvents:(id)events;
- (id)getEvergreenTypeCountForSuggestionsQuickAddEntryFromStartDate:(id)date toEndDate:(id)endDate;
- (id)getEvergreenTypeCountForSuggestionsWithJournalCreatedButNoWritingFromStartDate:(id)date toEndDate:(id)endDate;
- (id)getEvergreenTypeCountForSuggestionsWithJournalCreatedFromStartDate:(id)date toEndDate:(id)endDate withMinimumAddedCharacters:(int64_t)characters;
- (id)getInterfaceTypeCountForAppEntryEvent:(id)event withMinAddedCharacterCount:(int64_t)count andMaxAddedCharacterCount:(int64_t)characterCount fromStartDate:(id)date toEndDate:(id)endDate onceForEachBundle:(BOOL)bundle skipForEvents:(id)events;
- (id)getInterfaceTypeCountForAppEntryEvent:(id)event withMinimumAddedCharacters:(int64_t)characters;
- (id)getInterfaceTypeCountForSuggestionEngagmentEvent:(id)event;
- (id)getInterfaceTypeCountForSuggestionEngagmentEvent:(id)event from:(id)from to:(id)to onceForEachBundle:(BOOL)bundle skipForEvents:(id)events;
- (id)getInterfaceTypeCountForUniqueSuggestionsQuickAddEntryFromStartDate:(id)date toEndDate:(id)endDate;
- (id)getInterfaceTypeCountForUniqueSuggestionsSelectedOnlyFromStartDate:(id)date toEndDate:(id)endDate;
- (id)getInterfaceTypeCountForUniqueSuggestionsViewedButNotEngagedFromStartDate:(id)date toEndDate:(id)endDate;
- (id)getInterfaceTypeCountForUniqueSuggestionsWithJournalCreatedButNoWritingFromStartDate:(id)date toEndDate:(id)endDate;
- (id)getInterfaceTypeCountForUniqueSuggestionsWithJournalCreatedFromStartDate:(id)date toEndDate:(id)endDate withMinimumAddedCharacters:(int64_t)characters;
- (id)getPriorBookmarkWithDeviceID:(id)d storedBookmarks:(id)bookmarks;
- (id)getStoreBookmarksForDeviceIDs:(id)ds;
- (id)momentsEngagmentDataFromLocalDeviceWithError:(id *)error;
- (id)momentsEngagmentLightDataFromLocalDeviceWithError:(id *)error;
- (id)updatedBookmarkWithNewBookMark:(id)mark deviceID:(id)d;
- (unint64_t)determineAddedCharacterBinRange:(int64_t)range;
- (void)didAppEntryEventPosted:(unint64_t)posted withBundles:(id)bundles timestamp:(id)timestamp duringInterval:(id)interval withInfo:(id)info withTrialExperimentIDs:(id)ds withOnboardingStatus:(id)status;
- (void)didEngagementEventPosted:(id)posted withBundles:(id)bundles timestamp:(id)timestamp withContext:(id)context withTrialExperimentIDs:(id)ds withOnboardingStatus:(id)status;
- (void)eventBundleStore:(id)store needsEngagementInfoForBundles:(id)bundles;
- (void)submitAppEntryEngagementEventAnalyticsFor:(id)for appEntryEngagementType:(unint64_t)type timestamp:(id)timestamp withEntryInfo:(id)info onboardingStatus:(id)status andTrialExperimentIDs:(id)ds;
- (void)submitSuggestionEngagementEventAnalyticsFor:(id)for suggestionEngagementType:(unint64_t)type timestamp:(id)timestamp withContext:(id)context onboardingStatus:(id)status AndTrialExperimentIDs:(id)ds;
- (void)updateBundle:(id)bundle forAppEntryEvent:(id)event;
- (void)updateBundle:(id)bundle forSuggestionEvent:(id)event withSummary:(id)summary;
- (void)updateEngagementLightStreamWithRefreshVariant:(unint64_t)variant handler:(id)handler;
- (void)writeEngagementLightDataBasedEngagementData:(id)data fromDevice:(id)device;
- (void)writeEngagementLightStreamForDevice:(id)device storedBookmarks:(id)bookmarks handler:(id)handler;
- (void)writeEngagementLightStreamForDevices:(id)devices storedBookmarks:(id)bookmarks completionHandler:(id)handler;
- (void)writeEngagementLightStreamForLocalDevicesWithHandler:(id)handler;
- (void)writeEngagementLightStreamForRemoteDevicesWithHandler:(id)handler;
@end

@implementation MOEngagementHistoryManager

- (MOEngagementHistoryManager)initWithUniverse:(id)universe
{
  universeCopy = universe;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [universeCopy getService:v7];

  if (v8)
  {
    v65.receiver = self;
    v65.super_class = MOEngagementHistoryManager;
    v9 = [(MOEngagementHistoryManager *)&v65 init];
    if (v9)
    {
      v10 = BiomeLibrary();
      moments = [v10 Moments];
      events = [moments Events];
      engagement = [events Engagement];

      v64 = 0;
      v14 = [engagement remoteDevicesWithError:&v64];
      v15 = v64;
      v16 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
      v17 = v16;
      if (v15)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [MOEngagementHistoryManager initWithUniverse:v15];
        }

        mergedStreamPublisher = v9->_mergedStreamPublisher;
        v9->_mergedStreamPublisher = 0;
      }

      else
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v22 = [v14 count];
          *buf = 134217984;
          v67 = v22;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[MOEngagementHistoryManager.initWithUniverse] found %lu sync device for engagement stream", buf, 0xCu);
        }

        v23 = +[NSDate distantPast];
        [v23 timeIntervalSinceReferenceDate];
        mergedStreamPublisher = [engagement publishersForDevices:v14 withUseCase:@"Moments" startTime:1 includeLocal:&__block_literal_global_47 pipeline:?];

        merge = [mergedStreamPublisher merge];
        v25 = v9->_mergedStreamPublisher;
        v9->_mergedStreamPublisher = merge;

        v26 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "[MOEngagementHistoryManager.initWithUniverse] mergedStreamPublisher was set", buf, 2u);
        }
      }

      v27 = BiomeLibrary();
      moments2 = [v27 Moments];
      events2 = [moments2 Events];
      engagement2 = [events2 Engagement];
      source = [engagement2 source];
      stream_source = v9->_stream_source;
      v9->_stream_source = source;

      v33 = BiomeLibrary();
      moments3 = [v33 Moments];
      events3 = [moments3 Events];
      engagementLight = [events3 EngagementLight];
      source2 = [engagementLight source];
      stream_source_light = v9->_stream_source_light;
      v9->_stream_source_light = source2;

      v39 = BiomeLibrary();
      moments4 = [v39 Moments];
      events4 = [moments4 Events];
      engagement3 = [events4 Engagement];
      publisher = [engagement3 publisher];
      stream_publisher = v9->_stream_publisher;
      v9->_stream_publisher = publisher;

      v45 = BiomeLibrary();
      moments5 = [v45 Moments];
      events5 = [moments5 Events];
      engagementLight2 = [events5 EngagementLight];
      publisher2 = [engagementLight2 publisher];
      stream_publisher_light = v9->_stream_publisher_light;
      v9->_stream_publisher_light = publisher2;

      v9->_isInternalBuild = +[MOPlatformInfo isInternalBuild];
      suggestionEngagementTypesEligibleForRawExternalAnalytics = v9->_suggestionEngagementTypesEligibleForRawExternalAnalytics;
      v9->_suggestionEngagementTypesEligibleForRawExternalAnalytics = &off_10036E028;

      v52 = objc_opt_class();
      v53 = NSStringFromClass(v52);
      v54 = [universeCopy getService:v53];
      bookmarkStore = v9->_bookmarkStore;
      v9->_bookmarkStore = v54;

      v56 = objc_opt_class();
      v57 = NSStringFromClass(v56);
      v58 = [universeCopy getService:v57];
      configurationManager = v9->_configurationManager;
      v9->_configurationManager = v58;

      v60 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v61 = dispatch_queue_create("MOEngagementHistoryManager", v60);
      queue = v9->_queue;
      v9->_queue = v61;

      [v8 setEngagementDelegate:v9];
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    v19 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [MOEngagementHistoryManager initWithUniverse:];
    }

    v20 = +[NSAssertionHandler currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"MOEngagementHistoryManager.m" lineNumber:77 description:@"Invalid parameter not satisfying: bundleStore"];

    selfCopy = 0;
  }

  return selfCopy;
}

+ (unint64_t)suggestionEventToEnum:(id)enum
{
  enumCopy = enum;
  if (suggestionEventToEnum__onceToken != -1)
  {
    +[MOEngagementHistoryManager suggestionEventToEnum:];
  }

  v4 = [suggestionEventToEnum__eventMapping objectForKeyedSubscript:enumCopy];
  v5 = v4;
  if (v4)
  {
    unsignedIntValue = [v4 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

void __52__MOEngagementHistoryManager_suggestionEventToEnum___block_invoke(id a1)
{
  v27[0] = @"suggestionsUnknown";
  v26 = [NSNumber numberWithUnsignedInt:0];
  v28[0] = v26;
  v27[1] = @"suggestionsSelected";
  v25 = [NSNumber numberWithUnsignedInt:1];
  v28[1] = v25;
  v27[2] = @"suggestionsShared";
  v24 = [NSNumber numberWithUnsignedInt:2];
  v28[2] = v24;
  v27[3] = @"suggestionsLiked";
  v23 = [NSNumber numberWithUnsignedInt:3];
  v28[3] = v23;
  v27[4] = @"suggestionsDisliked";
  v22 = [NSNumber numberWithUnsignedInt:4];
  v28[4] = v22;
  v27[5] = @"suggestionsDismissed";
  v21 = [NSNumber numberWithUnsignedInt:5];
  v28[5] = v21;
  v27[6] = @"suggestionsDeleted";
  v20 = [NSNumber numberWithUnsignedInt:6];
  v28[6] = v20;
  v27[7] = @"suggestionsHidden";
  v19 = [NSNumber numberWithUnsignedInt:7];
  v28[7] = v19;
  v27[8] = @"suggestionsQuickAddEntry";
  v18 = [NSNumber numberWithUnsignedInt:8];
  v28[8] = v18;
  v27[9] = @"suggestionsFavorite";
  v17 = [NSNumber numberWithUnsignedInt:11];
  v28[9] = v17;
  v27[10] = @"suggestionEntryCreated";
  v16 = [NSNumber numberWithUnsignedInt:13];
  v28[10] = v16;
  v27[11] = @"suggestionEntryEdited";
  v15 = [NSNumber numberWithUnsignedInt:14];
  v28[11] = v15;
  v27[12] = @"suggestionEntryDeleted";
  v14 = [NSNumber numberWithUnsignedInt:15];
  v28[12] = v14;
  v27[13] = @"suggestionEntryCancelled";
  v13 = [NSNumber numberWithUnsignedInt:16];
  v28[13] = v13;
  v27[14] = @"suggestionEntryCreatedWithUpdates";
  v1 = [NSNumber numberWithUnsignedInt:25];
  v28[14] = v1;
  v27[15] = @"suggestionsViewed";
  v2 = [NSNumber numberWithUnsignedInt:9];
  v28[15] = v2;
  v27[16] = @"suggestionsThumbsUp";
  v3 = [NSNumber numberWithUnsignedInt:12];
  v28[16] = v3;
  v27[17] = @"suggestionsAnnotated";
  v4 = [NSNumber numberWithUnsignedInt:17];
  v28[17] = v4;
  v27[18] = @"suggestionNotificationQueued";
  v5 = [NSNumber numberWithUnsignedInt:26];
  v28[18] = v5;
  v27[19] = @"suggestionNotificationDequeued";
  v6 = [NSNumber numberWithUnsignedInt:27];
  v28[19] = v6;
  v27[20] = @"suggestionNotificationTapped";
  v7 = [NSNumber numberWithUnsignedInt:28];
  v28[20] = v7;
  v27[21] = @"suggestionNotificationDismissed";
  v8 = [NSNumber numberWithUnsignedInt:29];
  v28[21] = v8;
  v27[22] = @"suggestionNotificationPosted";
  v9 = [NSNumber numberWithUnsignedInt:30];
  v28[22] = v9;
  v27[23] = @"suggestionNotificationOverriden";
  v10 = [NSNumber numberWithUnsignedInt:31];
  v28[23] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:24];
  v12 = suggestionEventToEnum__eventMapping;
  suggestionEventToEnum__eventMapping = v11;
}

+ (id)suggestionEventToLabel:(unint64_t)label
{
  if (suggestionEventToLabel__onceToken != -1)
  {
    +[MOEngagementHistoryManager suggestionEventToLabel:];
  }

  v4 = suggestionEventToLabel__eventMapping;
  v5 = [NSNumber numberWithUnsignedInt:label];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v6 = @"suggestionsUnknown";
  }

  return v6;
}

void __53__MOEngagementHistoryManager_suggestionEventToLabel___block_invoke(id a1)
{
  v26 = [NSNumber numberWithUnsignedInt:0];
  v27[0] = v26;
  v28[0] = @"suggestionsUnknown";
  v25 = [NSNumber numberWithUnsignedInt:1];
  v27[1] = v25;
  v28[1] = @"suggestionsSelected";
  v24 = [NSNumber numberWithUnsignedInt:2];
  v27[2] = v24;
  v28[2] = @"suggestionsShared";
  v23 = [NSNumber numberWithUnsignedInt:3];
  v27[3] = v23;
  v28[3] = @"suggestionsLiked";
  v22 = [NSNumber numberWithUnsignedInt:4];
  v27[4] = v22;
  v28[4] = @"suggestionsDisliked";
  v21 = [NSNumber numberWithUnsignedInt:5];
  v27[5] = v21;
  v28[5] = @"suggestionsDismissed";
  v20 = [NSNumber numberWithUnsignedInt:6];
  v27[6] = v20;
  v28[6] = @"suggestionsDeleted";
  v19 = [NSNumber numberWithUnsignedInt:7];
  v27[7] = v19;
  v28[7] = @"suggestionsHidden";
  v18 = [NSNumber numberWithUnsignedInt:8];
  v27[8] = v18;
  v28[8] = @"suggestionsQuickAddEntry";
  v17 = [NSNumber numberWithUnsignedInt:11];
  v27[9] = v17;
  v28[9] = @"suggestionsFavorite";
  v16 = [NSNumber numberWithUnsignedInt:13];
  v27[10] = v16;
  v28[10] = @"suggestionEntryCreated";
  v15 = [NSNumber numberWithUnsignedInt:14];
  v27[11] = v15;
  v28[11] = @"suggestionEntryEdited";
  v14 = [NSNumber numberWithUnsignedInt:15];
  v27[12] = v14;
  v28[12] = @"suggestionEntryDeleted";
  v13 = [NSNumber numberWithUnsignedInt:16];
  v27[13] = v13;
  v28[13] = @"suggestionEntryCancelled";
  v1 = [NSNumber numberWithUnsignedInt:25];
  v27[14] = v1;
  v28[14] = @"suggestionEntryCreatedWithUpdates";
  v2 = [NSNumber numberWithUnsignedInt:9];
  v27[15] = v2;
  v28[15] = @"suggestionsViewed";
  v3 = [NSNumber numberWithUnsignedInt:12];
  v27[16] = v3;
  v28[16] = @"suggestionsThumbsUp";
  v4 = [NSNumber numberWithUnsignedInt:17];
  v27[17] = v4;
  v28[17] = @"suggestionsAnnotated";
  v5 = [NSNumber numberWithUnsignedInt:26];
  v27[18] = v5;
  v28[18] = @"suggestionNotificationQueued";
  v6 = [NSNumber numberWithUnsignedInt:27];
  v27[19] = v6;
  v28[19] = @"suggestionNotificationDequeued";
  v7 = [NSNumber numberWithUnsignedInt:28];
  v27[20] = v7;
  v28[20] = @"suggestionNotificationTapped";
  v8 = [NSNumber numberWithUnsignedInt:29];
  v27[21] = v8;
  v28[21] = @"suggestionNotificationDismissed";
  v9 = [NSNumber numberWithUnsignedInt:30];
  v27[22] = v9;
  v28[22] = @"suggestionNotificationPosted";
  v10 = [NSNumber numberWithUnsignedInt:31];
  v27[23] = v10;
  v28[23] = @"suggestionNotificationOverriden";
  v11 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:24];
  v12 = suggestionEventToLabel__eventMapping;
  suggestionEventToLabel__eventMapping = v11;
}

+ (unint64_t)appEntryEventToEnum:(id)enum
{
  enumCopy = enum;
  if (appEntryEventToEnum__onceToken != -1)
  {
    +[MOEngagementHistoryManager appEntryEventToEnum:];
  }

  v4 = [appEntryEventToEnum__eventMapping objectForKeyedSubscript:enumCopy];
  v5 = v4;
  if (v4)
  {
    unsignedIntValue = [v4 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

void __50__MOEngagementHistoryManager_appEntryEventToEnum___block_invoke(id a1)
{
  v8[0] = @"appUnknown";
  v1 = [NSNumber numberWithUnsignedInt:0];
  v9[0] = v1;
  v8[1] = @"appEntryCreated";
  v2 = [NSNumber numberWithUnsignedInt:1];
  v9[1] = v2;
  v8[2] = @"appEntryEdited";
  v3 = [NSNumber numberWithUnsignedInt:2];
  v9[2] = v3;
  v8[3] = @"appEntryDeleted";
  v4 = [NSNumber numberWithUnsignedInt:3];
  v9[3] = v4;
  v8[4] = @"appEntryCancelled";
  v5 = [NSNumber numberWithUnsignedInt:4];
  v9[4] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:5];
  v7 = appEntryEventToEnum__eventMapping;
  appEntryEventToEnum__eventMapping = v6;
}

+ (id)appEntryEventToString:(id)string
{
  stringCopy = string;
  if (@"appUnknown" == stringCopy)
  {
    v4 = @"unknown";
  }

  else if (@"appEntryCreated" == stringCopy)
  {
    v4 = @"entryCreated";
  }

  else if (@"appEntryEdited" == stringCopy)
  {
    v4 = @"entryEdited";
  }

  else if (@"appEntryDeleted" == stringCopy)
  {
    v4 = @"entryDeleted";
  }

  else if (@"appEntryCancelled" == stringCopy)
  {
    v4 = @"entryCancelled";
  }

  else
  {
    v4 = @"other";
  }

  return v4;
}

+ (unint64_t)clientEventToEnum:(id)enum
{
  enumCopy = enum;
  if (clientEventToEnum__onceToken != -1)
  {
    +[MOEngagementHistoryManager clientEventToEnum:];
  }

  v4 = [clientEventToEnum__eventMapping objectForKeyedSubscript:enumCopy];
  v5 = v4;
  if (v4)
  {
    unsignedIntValue = [v4 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

void __48__MOEngagementHistoryManager_clientEventToEnum___block_invoke(id a1)
{
  v8[0] = @"clientUnknown";
  v1 = [NSNumber numberWithUnsignedInt:0];
  v9[0] = v1;
  v8[1] = @"clientAppVisible";
  v2 = [NSNumber numberWithUnsignedInt:1];
  v9[1] = v2;
  v8[2] = @"clientAppDismissed";
  v3 = [NSNumber numberWithUnsignedInt:2];
  v9[2] = v3;
  v8[3] = @"clientSheetVisible";
  v4 = [NSNumber numberWithUnsignedInt:3];
  v9[3] = v4;
  v8[4] = @"clientSheetDismissed";
  v5 = [NSNumber numberWithUnsignedInt:4];
  v9[4] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:5];
  v7 = clientEventToEnum__eventMapping;
  clientEventToEnum__eventMapping = v6;
}

+ (unint64_t)getEngagmentTypeForEvent:(id)event
{
  eventCopy = event;
  if ([MOEngagementHistoryManager suggestionEventToEnum:eventCopy])
  {
    v4 = 1;
  }

  else if ([MOEngagementHistoryManager appEntryEventToEnum:eventCopy])
  {
    v4 = 2;
  }

  else if ([MOEngagementHistoryManager clientEventToEnum:eventCopy])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)determineAddedCharacterBinRange:(int64_t)range
{
  v3 = 1;
  v4 = 2;
  if ((range - 201) >= 0x190)
  {
    v4 = 3;
  }

  if (range >= 0xC9)
  {
    v3 = v4;
  }

  if (range)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (id)getEngagementBundleSumarySetForBundles:(id)bundles
{
  bundlesCopy = bundles;
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = bundlesCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(MOEngagementHistoryManager *)self getBMBundleSumaryForBundle:*(*(&v13 + 1) + 8 * i), v13];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)getBMBundleSumaryForBundle:(id)bundle
{
  bundleCopy = bundle;
  bundleIdentifier = [bundleCopy bundleIdentifier];
  if (bundleIdentifier)
  {
    v6 = bundleIdentifier;
    suggestionID = [bundleCopy suggestionID];

    if (suggestionID)
    {
      v8 = [BMMomentsEngagementSuggestionIdentifier alloc];
      bundleIdentifier2 = [bundleCopy bundleIdentifier];
      uUIDString = [bundleIdentifier2 UUIDString];
      suggestionID2 = [bundleCopy suggestionID];
      uUIDString2 = [suggestionID2 UUIDString];
      v51 = [v8 initWithBundleId:uUIDString suggestionId:uUIDString2];

      rankingDictionary = [bundleCopy rankingDictionary];

      if (rankingDictionary)
      {
        rankingDictionary2 = [bundleCopy rankingDictionary];
        v15 = [rankingDictionary2 objectForKeyedSubscript:@"rankingScore"];

        if (v15)
        {
          rankingDictionary3 = [bundleCopy rankingDictionary];
          v49 = [rankingDictionary3 objectForKeyedSubscript:@"rankingScore"];
        }

        else
        {
          v49 = 0;
        }

        rankingDictionary4 = [bundleCopy rankingDictionary];
        v20 = [rankingDictionary4 objectForKeyedSubscript:@"bundleGoodnessScore"];

        if (v20)
        {
          rankingDictionary5 = [bundleCopy rankingDictionary];
          v50 = [rankingDictionary5 objectForKeyedSubscript:@"bundleGoodnessScore"];
        }

        else
        {
          v50 = 0;
        }

        rankingDictionary6 = [bundleCopy rankingDictionary];
        v23 = [rankingDictionary6 objectForKeyedSubscript:@"ordinalRankInRecommendedTab"];

        if (v23)
        {
          rankingDictionary7 = [bundleCopy rankingDictionary];
          v48 = [rankingDictionary7 objectForKeyedSubscript:@"ordinalRankInRecommendedTab"];
        }

        else
        {
          v48 = 0;
        }

        rankingDictionary8 = [bundleCopy rankingDictionary];
        v26 = [rankingDictionary8 objectForKeyedSubscript:@"visibilityCategoryForUI"];

        if (v26)
        {
          rankingDictionary9 = [bundleCopy rankingDictionary];
          v28 = [rankingDictionary9 objectForKeyedSubscript:@"visibilityCategoryForUI"];
          intValue = [v28 intValue];

          goto LABEL_20;
        }
      }

      else
      {
        v49 = 0;
        v50 = 0;
        v48 = 0;
      }

      intValue = 0;
LABEL_20:
      getBundleType = [bundleCopy getBundleType];
      if ([bundleCopy interfaceType] == 11 && (objc_msgSend(bundleCopy, "resources"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "count"), v30, v31))
      {
        resources = [bundleCopy resources];
        [resources objectAtIndexedSubscript:0];
        v34 = v33 = intValue;
        name = [v34 name];

        intValue = v33;
      }

      else
      {
        name = 0;
      }

      v45 = [BMMomentsEngagementBundleSummary alloc];
      startDate = [bundleCopy startDate];
      endDate = [bundleCopy endDate];
      interfaceType = [bundleCopy interfaceType];
      v38 = [(MOEngagementHistoryManager *)self getPhotoAssetsForBundle:bundleCopy];
      selfCopy = self;
      bundleSubType = [bundleCopy bundleSubType];
      bundleSuperType = [bundleCopy bundleSuperType];
      v42 = [(MOEngagementHistoryManager *)selfCopy getSuggestionAssetsForBundle:bundleCopy];
      LODWORD(v44) = intValue;
      v18 = [v45 initWithIdentifier:v51 startDate:startDate endDate:endDate interfaceType:interfaceType rankingScore:v49 attachedPhotoAssets:v38 bundleInterfaceType:getBundleType bundleEvergreenType:name bundleSubType:__PAIR64__(bundleSuperType bundleSuperType:bundleSubType) bundleGoodnessScore:v50 ordinalRankInRecommendedTab:v48 visibilityCategoryForUI:v44 assets:v42];

      goto LABEL_25;
    }
  }

  v17 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [MOEngagementHistoryManager getBMBundleSumaryForBundle:];
  }

  v18 = 0;
LABEL_25:

  return v18;
}

- (void)didEngagementEventPosted:(id)posted withBundles:(id)bundles timestamp:(id)timestamp withContext:(id)context withTrialExperimentIDs:(id)ds withOnboardingStatus:(id)status
{
  postedCopy = posted;
  bundlesCopy = bundles;
  timestampCopy = timestamp;
  contextCopy = context;
  dsCopy = ds;
  statusCopy = status;
  v20 = [contextCopy objectForKeyedSubscript:@"clientIdentifier"];
  if (v20)
  {
    v21 = [(MOEngagementHistoryManager *)self getEngagementBundleSumarySetForBundles:bundlesCopy];
    v91 = dsCopy;
    v101 = statusCopy;
    v87 = v20;
    if ([v20 isEqualToString:@"com.apple.momentsd.MOUserNotifications"])
    {
      v22 = [BMMomentsEngagementNotificationInfo alloc];
      v23 = [contextCopy objectForKeyedSubscript:@"postingDate"];
      v24 = [contextCopy objectForKeyedSubscript:@"numSuggestionInNotification"];
      v89 = [v22 initWithNotificationEventTimestamp:timestampCopy notificationPostingTimestamp:v23 notificationSuggestionCount:v24];
    }

    else
    {
      v89 = 0;
    }

    v26 = [MOEngagementHistoryManager getEngagmentTypeForEvent:postedCopy];
    v93 = postedCopy;
    v94 = contextCopy;
    selfCopy = self;
    v88 = bundlesCopy;
    v92 = timestampCopy;
    v86 = v21;
    switch(v26)
    {
      case 3uLL:
        v56 = [BMMomentsEngagementClientActivityEvent alloc];
        v57 = [MOEngagementHistoryManager clientEventToEnum:postedCopy];
        v58 = [contextCopy objectForKeyedSubscript:@"clientIdentifier"];
        v34 = [v56 initWithType:v57 clientIdentifier:v58 timestamp:timestampCopy];

        break;
      case 2uLL:
        v36 = objc_opt_new();
        v37 = objc_opt_new();
        v38 = objc_opt_new();
        v102 = 0u;
        v103 = 0u;
        v104 = 0u;
        v105 = 0u;
        v39 = v21;
        v40 = [v39 countByEnumeratingWithState:&v102 objects:v106 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v103;
          do
          {
            for (i = 0; i != v41; i = i + 1)
            {
              if (*v103 != v42)
              {
                objc_enumerationMutation(v39);
              }

              v44 = *(*(&v102 + 1) + 8 * i);
              identifier = [v44 identifier];

              if (identifier)
              {
                identifier2 = [v44 identifier];
                [v36 addObject:identifier2];
              }

              bundleInterfaceType = [v44 bundleInterfaceType];

              if (bundleInterfaceType)
              {
                bundleInterfaceType2 = [v44 bundleInterfaceType];
                [v37 addObject:bundleInterfaceType2];
              }

              bundleEvergreenType = [v44 bundleEvergreenType];

              if (bundleEvergreenType)
              {
                bundleEvergreenType2 = [v44 bundleEvergreenType];
                [v38 addObject:bundleEvergreenType2];
              }
            }

            v41 = [v39 countByEnumeratingWithState:&v102 objects:v106 count:16];
          }

          while (v41);
        }

        v99 = [v39 objectAtIndexedSubscript:0];
        v51 = [v94 objectForKeyedSubscript:@"entryPhotoAssets"];
        if (v51)
        {
          v52 = v51;
          v53 = [v94 objectForKeyedSubscript:@"entryPhotoAssets"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          v55 = v93;
          if (isKindOfClass)
          {
            v98 = [v94 objectForKeyedSubscript:@"entryPhotoAssets"];
          }

          else
          {
            v98 = &__NSArray0__struct;
          }
        }

        else
        {
          v98 = &__NSArray0__struct;
          v55 = v93;
        }

        v83 = [BMMomentsEngagementAppEntryEvent alloc];
        v81 = [MOEngagementHistoryManager appEntryEventToEnum:v55];
        v79 = [v94 objectForKeyedSubscript:@"clientIdentifier"];
        v95 = [v94 objectForKeyedSubscript:@"entryStartTime"];
        v60 = [v94 objectForKeyedSubscript:@"entryStartTime"];
        v77 = [v94 objectForKeyedSubscript:@"entryTotalCharacters"];
        v61 = [v94 objectForKeyedSubscript:@"entryPhotoAssets"];
        v62 = [MOEngagementHistoryManager appEntryEventToString:v55];
        v35 = [v83 initWithType:v81 clientIdentifier:v79 timestamp:v92 identifier:v36 startTime:v95 endTime:v60 totalCharacters:v77 addedCharacters:v61 usedPhotoAssets:v98 appEntryEventType:v62 bundleInterfaceTypes:v37 bundleEvergreenTypes:v38 bundleSummary:v99 assets:&__NSArray0__struct];

        v34 = 0;
        goto LABEL_35;
      case 1uLL:
        v27 = [MOEngagementHistoryManager suggestionEventToEnum:postedCopy];
        v28 = [BMMomentsEngagementSuggestionEvent alloc];
        v29 = [contextCopy objectForKeyedSubscript:@"clientIdentifier"];
        [contextCopy objectForKeyedSubscript:@"viewContainerName"];
        v31 = v30 = v21;
        v32 = [contextCopy objectForKeyedSubscript:@"viewVisibleTime"];
        v97 = [v28 initWithType:v27 timestamp:timestampCopy fullBundleOrderedSet:v30 clientIdentifier:v29 viewContainerName:v31 viewVisibleTime:v32 suggestionType:0 viewVisibleSuggestionsCount:0 viewTotalSuggestionsCount:0 notificationInfo:v89];

        v33 = v101;
        [(MOEngagementHistoryManager *)selfCopy submitSuggestionEngagementEventAnalyticsFor:bundlesCopy suggestionEngagementType:v27 timestamp:timestampCopy withContext:contextCopy onboardingStatus:v101 AndTrialExperimentIDs:v91];
        v34 = 0;
        v35 = 0;
LABEL_36:
        v63 = [v33 objectForKeyedSubscript:@"onboardingStatus"];

        v100 = v35;
        v96 = v34;
        if (v63)
        {
          v64 = [v33 objectForKeyedSubscript:@"onboardingStatus"];
          v84 = +[MOBiomeDonationUtility mapOnboardingFlowCompletion:](MOBiomeDonationUtility, "mapOnboardingFlowCompletion:", [v64 intValue]);
        }

        else
        {
          v84 = 0;
        }

        v82 = [BMMomentsEngagement alloc];
        v80 = [v33 objectForKeyedSubscript:@"journalIsInstalled"];
        v78 = [v33 objectForKeyedSubscript:@"journalConfigLockJournal"];
        v76 = [v33 objectForKeyedSubscript:@"journalConfigSkipSuggestions"];
        v65 = [v33 objectForKeyedSubscript:@"settingSwitchActivity"];
        v75 = [v33 objectForKeyedSubscript:@"settingSwitchCommunication"];
        v66 = [v33 objectForKeyedSubscript:@"settingSwitchLocation"];
        v67 = [v33 objectForKeyedSubscript:@"settingSwitchMedia"];
        v68 = [v33 objectForKeyedSubscript:@"settingSwitchPeople"];
        v69 = [v33 objectForKeyedSubscript:@"settingSwitchPhoto"];
        v70 = [v33 objectForKeyedSubscript:@"settingSwitchStateOfMind"];
        v71 = [v33 objectForKeyedSubscript:@"settingSwitchReflection"];
        v72 = [v33 objectForKeyedSubscript:@"settingBroaderSwitchLocation"];
        v85 = [v82 initWithSuggestionEvent:v97 entryEvent:v100 clientActivityEvent:v96 onboardingFlowCompletionState:v84 isJournalAppInstalled:v80 isJournalAppLocked:v78 isJournalSuggestionSkipped:v76 isActivitySettingsSwitchEnabled:v65 isCommunicationSettingsSwitchEnabled:v75 isSignificantLocationSettingsSwitchEnabled:v66 isMediaSettingsSwitchEnabled:v67 isNearbyPeopleSettingsSwitchEnabled:v68 isPhotoSettingsSwitchEnabled:v69 isStateOfMindSettingsSwitchEnabled:v70 isReflectionSettingsSwitchEnabled:v71 isBroadSystemLocationSettingsSwitchEnabled:v72];

        stream_source = [(MOEngagementHistoryManager *)selfCopy stream_source];
        [stream_source sendEvent:v85];

        v74 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
        postedCopy = v93;
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
        {
          [MOEngagementHistoryManager didEngagementEventPosted:withBundles:timestamp:withContext:withTrialExperimentIDs:withOnboardingStatus:];
        }

        v20 = v87;
        bundlesCopy = v88;
        dsCopy = v91;
        timestampCopy = v92;
        contextCopy = v94;
        statusCopy = v101;
        v25 = v97;
        goto LABEL_42;
      default:
        v59 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          [MOEngagementHistoryManager didEngagementEventPosted:withBundles:timestamp:withContext:withTrialExperimentIDs:withOnboardingStatus:];
        }

        v34 = 0;
        break;
    }

    v35 = 0;
LABEL_35:
    v97 = 0;
    v33 = v101;
    goto LABEL_36;
  }

  v25 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    [MOEngagementHistoryManager didEngagementEventPosted:withBundles:timestamp:withContext:withTrialExperimentIDs:withOnboardingStatus:];
  }

LABEL_42:
}

- (void)didAppEntryEventPosted:(unint64_t)posted withBundles:(id)bundles timestamp:(id)timestamp duringInterval:(id)interval withInfo:(id)info withTrialExperimentIDs:(id)ds withOnboardingStatus:(id)status
{
  bundlesCopy = bundles;
  timestampCopy = timestamp;
  intervalCopy = interval;
  infoCopy = info;
  dsCopy = ds;
  statusCopy = status;
  v14 = objc_opt_new();
  v84 = objc_opt_new();
  v83 = objc_opt_new();
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = bundlesCopy;
  v15 = [obj countByEnumeratingWithState:&v91 objects:v95 count:16];
  v86 = v14;
  if (v15)
  {
    v16 = v15;
    v87 = 0;
    v17 = *v92;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v92 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v91 + 1) + 8 * i);
        bundleIdentifier = [v19 bundleIdentifier];
        if (bundleIdentifier && (v21 = bundleIdentifier, [v19 suggestionID], v22 = objc_claimAutoreleasedReturnValue(), v22, v21, v22))
        {
          v23 = [BMMomentsEngagementSuggestionIdentifier alloc];
          bundleIdentifier2 = [v19 bundleIdentifier];
          uUIDString = [bundleIdentifier2 UUIDString];
          suggestionID = [v19 suggestionID];
          uUIDString2 = [suggestionID UUIDString];
          v28 = [v23 initWithBundleId:uUIDString suggestionId:uUIDString2];

          if (v28)
          {
            [v86 addObject:v28];
            v29 = [(MOEngagementHistoryManager *)self getBMBundleSumaryForBundle:v19];

            getBundleType = [v19 getBundleType];

            if (getBundleType)
            {
              getBundleType2 = [v19 getBundleType];
              [v84 addObject:getBundleType2];
            }

            if ([v19 interfaceType] == 11)
            {
              resources = [v19 resources];
              v33 = [resources objectAtIndexedSubscript:0];
              name = [v33 name];

              if (name)
              {
                [v83 addObject:name];
              }
            }

            v87 = v29;
          }
        }

        else
        {
          v28 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            [MOEngagementHistoryManager didAppEntryEventPosted:v90 withBundles:v28 timestamp:? duringInterval:? withInfo:? withTrialExperimentIDs:? withOnboardingStatus:?];
          }
        }
      }

      v16 = [obj countByEnumeratingWithState:&v91 objects:v95 count:16];
    }

    while (v16);
  }

  else
  {
    v87 = 0;
  }

  v35 = [BMMomentsEngagementAppEntryEvent alloc];
  startDate = [intervalCopy startDate];
  endDate = [intervalCopy endDate];
  v38 = [infoCopy objectForKeyedSubscript:@"entryTotalCharacters"];
  v39 = [infoCopy objectForKeyedSubscript:?];
  v76 = [v35 initWithType:posted clientIdentifier:0 timestamp:timestampCopy identifier:v86 startTime:startDate endTime:endDate totalCharacters:v38 addedCharacters:v39 usedPhotoAssets:&__NSArray0__struct appEntryEventType:0 bundleInterfaceTypes:v84 bundleEvergreenTypes:v83 bundleSummary:v87 assets:&__NSArray0__struct];

  v40 = [statusCopy objectForKeyedSubscript:@"onboardingStatus"];

  if (v40)
  {
    v41 = [statusCopy objectForKeyedSubscript:@"onboardingStatus"];
    v73 = +[MOBiomeDonationUtility mapOnboardingFlowCompletion:](MOBiomeDonationUtility, "mapOnboardingFlowCompletion:", [v41 intValue]);
  }

  else
  {
    v73 = 0;
  }

  v72 = [BMMomentsEngagement alloc];
  v75 = [statusCopy objectForKeyedSubscript:@"journalIsInstalled"];
  v71 = [statusCopy objectForKeyedSubscript:@"journalConfigLockJournal"];
  v74 = [statusCopy objectForKeyedSubscript:@"journalConfigSkipSuggestions"];
  v70 = [statusCopy objectForKeyedSubscript:@"settingSwitchActivity"];
  v42 = [statusCopy objectForKeyedSubscript:@"settingSwitchCommunication"];
  v43 = [statusCopy objectForKeyedSubscript:@"settingSwitchLocation"];
  v69 = [statusCopy objectForKeyedSubscript:@"settingSwitchMedia"];
  v44 = [statusCopy objectForKeyedSubscript:@"settingSwitchPeople"];
  v45 = [statusCopy objectForKeyedSubscript:@"settingSwitchPhoto"];
  v46 = [statusCopy objectForKeyedSubscript:@"settingSwitchStateOfMind"];
  v47 = [statusCopy objectForKeyedSubscript:@"settingSwitchReflection"];
  v48 = [statusCopy objectForKeyedSubscript:@"settingBroaderSwitchLocation"];
  v49 = [v72 initWithSuggestionEvent:0 entryEvent:v76 clientActivityEvent:0 onboardingFlowCompletionState:v73 isJournalAppInstalled:v75 isJournalAppLocked:v71 isJournalSuggestionSkipped:v74 isActivitySettingsSwitchEnabled:v70 isCommunicationSettingsSwitchEnabled:v42 isSignificantLocationSettingsSwitchEnabled:v43 isMediaSettingsSwitchEnabled:v69 isNearbyPeopleSettingsSwitchEnabled:v44 isPhotoSettingsSwitchEnabled:v45 isStateOfMindSettingsSwitchEnabled:v46 isReflectionSettingsSwitchEnabled:v47 isBroadSystemLocationSettingsSwitchEnabled:v48];

  stream_source = [(MOEngagementHistoryManager *)self stream_source];
  [stream_source sendEvent:v49];

  v51 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
  {
    [MOEngagementHistoryManager didAppEntryEventPosted:withBundles:timestamp:duringInterval:withInfo:withTrialExperimentIDs:withOnboardingStatus:];
  }

  [(MOEngagementHistoryManager *)self submitAppEntryEngagementEventAnalyticsFor:obj appEntryEngagementType:posted timestamp:timestampCopy withEntryInfo:infoCopy onboardingStatus:statusCopy andTrialExperimentIDs:dsCopy];
  v52 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v52 userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    v54 = +[UIDevice currentDevice];
    userInterfaceIdiom2 = [v54 userInterfaceIdiom];

    if (userInterfaceIdiom2 == 1)
    {
      v56 = 2;
    }

    else
    {
      v57 = +[UIDevice currentDevice];
      userInterfaceIdiom3 = [v57 userInterfaceIdiom];

      if (userInterfaceIdiom3 == 5)
      {
        v56 = 3;
      }

      else
      {
        v59 = +[UIDevice currentDevice];
        v60 = [v59 userInterfaceIdiom] == 6;

        v56 = (4 * v60);
      }
    }
  }

  else
  {
    v56 = 1;
  }

  v61 = [BMMomentsEngagementLightAppEntryEvent alloc];
  v62 = [v86 copy];
  v63 = [infoCopy objectForKeyedSubscript:@"entryAddedCharacters"];
  v64 = [NSNumber numberWithInt:v63 != 0];
  v65 = [v61 initWithType:posted clientIdentifier:0 timestamp:timestampCopy identifier:v62 deviceType:v56 hasText:v64];

  v66 = [[BMMomentsEngagementLight alloc] initWithSuggestionEvent:0 entryEvent:v65];
  stream_source_light = [(MOEngagementHistoryManager *)self stream_source_light];
  [stream_source_light sendEvent:v66];

  v68 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
  {
    [MOEngagementHistoryManager didAppEntryEventPosted:withBundles:timestamp:duringInterval:withInfo:withTrialExperimentIDs:withOnboardingStatus:];
  }
}

- (void)submitSuggestionEngagementEventAnalyticsFor:(id)for suggestionEngagementType:(unint64_t)type timestamp:(id)timestamp withContext:(id)context onboardingStatus:(id)status AndTrialExperimentIDs:(id)ds
{
  forCopy = for;
  timestampCopy = timestamp;
  contextCopy = context;
  statusCopy = status;
  dsCopy = ds;
  if (self->_isInternalBuild || (suggestionEngagementTypesEligibleForRawExternalAnalytics = self->_suggestionEngagementTypesEligibleForRawExternalAnalytics, [NSNumber numberWithUnsignedInteger:type], v16 = objc_claimAutoreleasedReturnValue(), LODWORD(suggestionEngagementTypesEligibleForRawExternalAnalytics) = [(NSArray *)suggestionEngagementTypesEligibleForRawExternalAnalytics containsObject:v16], v16, suggestionEngagementTypesEligibleForRawExternalAnalytics))
  {
    v17 = +[NSDate now];
    v67 = +[NSCalendar currentCalendar];
    v80 = v17;
    v72 = [v67 components:764 fromDate:v17];
    v79 = [MOMetric binsFromStart:&off_10036B7D0 toEnd:&off_10036E730 gap:&off_10036E740];
    v78 = [contextCopy objectForKeyedSubscript:@"rankingDictionaries"];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v68 = forCopy;
    obj = forCopy;
    v77 = [obj countByEnumeratingWithState:&v81 objects:v87 count:16];
    if (v77)
    {
      v70 = *v82;
      v71 = dsCopy;
      do
      {
        v18 = 0;
        do
        {
          if (*v82 != v70)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v81 + 1) + 8 * v18);
          v20 = [MOEngagementAndSuggestionAnalyticsManager generateDefaultAnalyticsPayloadWithOnboardingStatus:statusCopy];
          v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v72 year]);
          [v20 setObject:v21 forKeyedSubscript:@"submissionTimeYear"];

          v22 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v72 month]);
          [v20 setObject:v22 forKeyedSubscript:@"submissionTimeMonth"];

          v23 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v72 day]);
          [v20 setObject:v23 forKeyedSubscript:@"submissionTimeDay"];

          v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v72 hour]);
          [v20 setObject:v24 forKeyedSubscript:@"submissionTimeHour"];

          v25 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v72 minute]);
          [v20 setObject:v25 forKeyedSubscript:@"submissionTimeMinute"];

          [v20 setObject:&off_10036E8B0 forKeyedSubscript:@"scalingFactorForAnalytics"];
          if (dsCopy)
          {
            experimentId = [dsCopy experimentId];
            [v20 setObject:experimentId forKeyedSubscript:@"trialExperimentId"];

            v27 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [dsCopy deploymentId]);
            stringValue = [v27 stringValue];
            [v20 setObject:stringValue forKeyedSubscript:@"trialDeploymentId"];

            treatmentId = [dsCopy treatmentId];
            [v20 setObject:treatmentId forKeyedSubscript:@"trialTreatmentId"];
          }

          [v80 timeIntervalSinceDate:timestampCopy];
          v30 = [NSNumber numberWithDouble:?];
          v31 = [MOMetric binForNumber:v30 bins:v79];
          [v20 setObject:v31 forKeyedSubscript:@"engagementTimeBucketed"];

          [v20 setObject:&off_10036B788 forKeyedSubscript:@"engagementType"];
          v32 = [NSNumber numberWithUnsignedInteger:type];
          [v20 setObject:v32 forKeyedSubscript:@"suggestionEngagementSubType"];

          bundleIdentifier = [v19 bundleIdentifier];
          v34 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [bundleIdentifier hash]);
          [v20 setObject:v34 forKeyedSubscript:@"bundleId"];

          suggestionID = [v19 suggestionID];
          v36 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [suggestionID hash]);
          [v20 setObject:v36 forKeyedSubscript:@"suggestionId"];

          if (type != 9)
          {
            subSuggestionIDs = [v19 subSuggestionIDs];
            v38 = [(MOEngagementHistoryManager *)self _convertStringArrayIntoCombinedHashedString:subSuggestionIDs];

            if (v38)
            {
              [v20 setObject:v38 forKeyedSubscript:@"subSuggestionIds"];
            }

            subBundleIDs = [v19 subBundleIDs];
            v40 = [(MOEngagementHistoryManager *)self _convertStringArrayIntoCombinedHashedString:subBundleIDs];

            if (v40)
            {
              [v20 setObject:v40 forKeyedSubscript:@"subBundleIds"];
            }
          }

          v41 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v19 interfaceType]);
          [v20 setObject:v41 forKeyedSubscript:@"interfaceType"];

          v42 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v19 bundleSubType]);
          [v20 setObject:v42 forKeyedSubscript:@"bundleSubType"];

          v43 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v19 bundleSuperType]);
          [v20 setObject:v43 forKeyedSubscript:@"bundleSuperType"];

          startDate = [v19 startDate];
          [v80 timeIntervalSinceDate:startDate];
          v45 = [NSNumber numberWithDouble:?];
          v46 = [MOMetric binForNumber:v45 bins:v79];
          [v20 setObject:v46 forKeyedSubscript:@"bundleStartTimeBucketed"];

          endDate = [v19 endDate];
          [v80 timeIntervalSinceDate:endDate];
          v48 = [NSNumber numberWithDouble:?];
          v49 = [MOMetric binForNumber:v48 bins:v79];
          [v20 setObject:v49 forKeyedSubscript:@"bundleEndTimeBucketed"];

          if ([v19 interfaceType] == 11)
          {
            v50 = &off_10036B7E8;
          }

          else
          {
            v50 = &off_10036B800;
          }

          [v20 setObject:v50 forKeyedSubscript:@"engagementEntryType"];
          if (v78)
          {
            bundleIdentifier2 = [v19 bundleIdentifier];
            v52 = [v78 objectForKeyedSubscript:bundleIdentifier2];

            if (v52)
            {
              v53 = [v52 objectForKeyedSubscript:@"ordinalRankInRecommendedTab"];
              [v20 setObject:v53 forKeyedSubscript:@"ordinalRank"];

              v54 = [v52 objectForKeyedSubscript:@"rankingScore"];
              [v54 floatValue];
              *&v56 = v55 * 10000.0;
              v57 = [NSNumber numberWithFloat:v56];
              [v20 setObject:v57 forKeyedSubscript:@"rankingScore"];

              v58 = [v52 objectForKeyedSubscript:@"bundleGoodnessScore"];
              [v58 floatValue];
              *&v60 = v59 * 10000.0;
              v61 = [NSNumber numberWithFloat:v60];
              [v20 setObject:v61 forKeyedSubscript:@"bundleGoodnessScore"];

              v62 = [v52 objectForKeyedSubscript:@"visibilityCategoryForUI"];
              v63 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v62 intValue]);
              [v20 setObject:v63 forKeyedSubscript:@"visibilityStateForUI"];
            }
          }

          v64 = [contextCopy objectForKeyedSubscript:@"viewContainerName"];
          [v20 setObject:v64 forKeyedSubscript:@"viewContainerName"];

          v65 = [contextCopy objectForKeyedSubscript:@"viewVisibleTime"];
          [v20 setObject:v65 forKeyedSubscript:@"viewVisibleTime"];

          AnalyticsSendEvent();
          v66 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138477827;
            v86 = v20;
            _os_log_debug_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEBUG, "Suggestion engagement signal analytics submitted: %{private}@", buf, 0xCu);
          }

          v18 = v18 + 1;
          dsCopy = v71;
        }

        while (v77 != v18);
        v77 = [obj countByEnumeratingWithState:&v81 objects:v87 count:16];
      }

      while (v77);
    }

    forCopy = v68;
  }

  else
  {
    v80 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
    {
      [MOEngagementHistoryManager submitSuggestionEngagementEventAnalyticsFor:type suggestionEngagementType:? timestamp:? withContext:? onboardingStatus:? AndTrialExperimentIDs:?];
    }
  }
}

- (void)submitAppEntryEngagementEventAnalyticsFor:(id)for appEntryEngagementType:(unint64_t)type timestamp:(id)timestamp withEntryInfo:(id)info onboardingStatus:(id)status andTrialExperimentIDs:(id)ds
{
  forCopy = for;
  timestampCopy = timestamp;
  infoCopy = info;
  statusCopy = status;
  dsCopy = ds;
  v15 = +[NSDate now];
  v16 = +[NSCalendar currentCalendar];
  v94 = v15;
  v88 = [v16 components:764 fromDate:v15];
  v93 = [MOMetric binsFromStart:&off_10036B7D0 toEnd:&off_10036E730 gap:&off_10036E750];
  if (forCopy && [forCopy count])
  {
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v17 = forCopy;
    v91 = [v17 countByEnumeratingWithState:&v96 objects:v102 count:16];
    if (v91)
    {
      v81 = v16;
      v82 = forCopy;
      v84 = *v97;
      v85 = infoCopy;
      v86 = dsCopy;
      obj = v17;
      do
      {
        for (i = 0; i != v91; i = i + 1)
        {
          if (*v97 != v84)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v96 + 1) + 8 * i);
          v20 = [MOEngagementAndSuggestionAnalyticsManager generateDefaultAnalyticsPayloadWithOnboardingStatus:statusCopy, v81, v82];
          v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v88 year]);
          [v20 setObject:v21 forKeyedSubscript:@"submissionTimeYear"];

          v22 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v88 month]);
          [v20 setObject:v22 forKeyedSubscript:@"submissionTimeMonth"];

          v23 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v88 day]);
          [v20 setObject:v23 forKeyedSubscript:@"submissionTimeDay"];

          v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v88 hour]);
          [v20 setObject:v24 forKeyedSubscript:@"submissionTimeHour"];

          v25 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v88 minute]);
          [v20 setObject:v25 forKeyedSubscript:@"submissionTimeMinute"];

          [v20 setObject:&off_10036E8B0 forKeyedSubscript:@"scalingFactorForAnalytics"];
          if (dsCopy)
          {
            experimentId = [dsCopy experimentId];
            [v20 setObject:experimentId forKeyedSubscript:@"trialExperimentId"];

            v27 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [dsCopy deploymentId]);
            stringValue = [v27 stringValue];
            [v20 setObject:stringValue forKeyedSubscript:@"trialDeploymentId"];

            treatmentId = [dsCopy treatmentId];
            [v20 setObject:treatmentId forKeyedSubscript:@"trialTreatmentId"];
          }

          [v94 timeIntervalSinceDate:timestampCopy];
          v30 = [NSNumber numberWithDouble:?];
          v31 = [MOMetric binForNumber:v30 bins:v93];
          [v20 setObject:v31 forKeyedSubscript:@"engagementTimeBucketed"];

          [v20 setObject:&off_10036B7E8 forKeyedSubscript:@"engagementType"];
          v32 = [NSNumber numberWithUnsignedInteger:type];
          [v20 setObject:v32 forKeyedSubscript:@"appEntryEngagementSubType"];

          bundleIdentifier = [v19 bundleIdentifier];
          v34 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [bundleIdentifier hash]);
          [v20 setObject:v34 forKeyedSubscript:@"bundleId"];

          suggestionID = [v19 suggestionID];
          v36 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [suggestionID hash]);
          [v20 setObject:v36 forKeyedSubscript:@"suggestionId"];

          subSuggestionIDs = [v19 subSuggestionIDs];
          v38 = [(MOEngagementHistoryManager *)self _convertStringArrayIntoCombinedHashedString:subSuggestionIDs];

          if (v38)
          {
            [v20 setObject:v38 forKeyedSubscript:@"subSuggestionIds"];
          }

          v92 = v38;
          subBundleIDs = [v19 subBundleIDs];
          v40 = [(MOEngagementHistoryManager *)self _convertStringArrayIntoCombinedHashedString:subBundleIDs];

          if (v40)
          {
            [v20 setObject:v40 forKeyedSubscript:@"subBundleIds"];
          }

          v41 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v19 interfaceType]);
          [v20 setObject:v41 forKeyedSubscript:@"interfaceType"];

          v42 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v19 bundleSubType]);
          [v20 setObject:v42 forKeyedSubscript:@"bundleSubType"];

          v43 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v19 bundleSuperType]);
          [v20 setObject:v43 forKeyedSubscript:@"bundleSuperType"];

          startDate = [v19 startDate];
          [v94 timeIntervalSinceDate:startDate];
          v45 = [NSNumber numberWithDouble:?];
          v46 = [MOMetric binForNumber:v45 bins:v93];
          [v20 setObject:v46 forKeyedSubscript:@"bundleStartTimeBucketed"];

          endDate = [v19 endDate];
          [v94 timeIntervalSinceDate:endDate];
          v48 = [NSNumber numberWithDouble:?];
          v49 = [MOMetric binForNumber:v48 bins:v93];
          [v20 setObject:v49 forKeyedSubscript:@"bundleEndTimeBucketed"];

          if ([v19 interfaceType] == 11)
          {
            v50 = &off_10036B7E8;
          }

          else
          {
            v50 = &off_10036B800;
          }

          [v20 setObject:v50 forKeyedSubscript:@"engagementEntryType"];
          infoCopy = v85;
          v51 = [v85 objectForKeyedSubscript:@"entryTotalCharacters"];

          if (v51)
          {
            v52 = [v85 objectForKeyedSubscript:@"entryTotalCharacters"];
            [v20 setObject:v52 forKeyedSubscript:@"totalCharacters"];
          }

          v53 = [v85 objectForKeyedSubscript:@"entryAddedCharacters"];

          dsCopy = v86;
          if (v53)
          {
            v54 = [v85 objectForKeyedSubscript:@"entryAddedCharacters"];
            [v20 setObject:v54 forKeyedSubscript:@"addedCharacters"];
          }

          v55 = [v85 objectForKeyedSubscript:@"entryAddedCharacters"];

          if (v55)
          {
            v56 = [v85 objectForKeyedSubscript:@"entryAddedCharacters"];
            intValue = [v56 intValue];

            v58 = [NSNumber numberWithUnsignedInteger:[(MOEngagementHistoryManager *)self determineAddedCharacterBinRange:intValue]];
            [v20 setObject:v58 forKeyedSubscript:@"addedCharactersBinned"];
          }

          AnalyticsSendEvent();
          v59 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138477827;
            v101 = v20;
            _os_log_debug_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEBUG, "App entry engagement signal analytics submitted: %{private}@", buf, 0xCu);
          }
        }

        v17 = obj;
        v91 = [obj countByEnumeratingWithState:&v96 objects:v102 count:16];
      }

      while (v91);
      v16 = v81;
      forCopy = v82;
    }
  }

  else
  {
    v17 = [MOEngagementAndSuggestionAnalyticsManager generateDefaultAnalyticsPayloadWithOnboardingStatus:statusCopy];
    v60 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v88 year]);
    [v17 setObject:v60 forKeyedSubscript:@"submissionTimeYear"];

    v61 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v88 month]);
    [v17 setObject:v61 forKeyedSubscript:@"submissionTimeMonth"];

    v62 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v88 day]);
    [v17 setObject:v62 forKeyedSubscript:@"submissionTimeDay"];

    v63 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v88 hour]);
    [v17 setObject:v63 forKeyedSubscript:@"submissionTimeHour"];

    v64 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v88 minute]);
    [v17 setObject:v64 forKeyedSubscript:@"submissionTimeMinute"];

    [v17 setObject:&off_10036E8B0 forKeyedSubscript:@"scalingFactorForAnalytics"];
    if (dsCopy)
    {
      experimentId2 = [dsCopy experimentId];
      [v17 setObject:experimentId2 forKeyedSubscript:@"trialExperimentId"];

      v66 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [dsCopy deploymentId]);
      stringValue2 = [v66 stringValue];
      [v17 setObject:stringValue2 forKeyedSubscript:@"trialDeploymentId"];

      treatmentId2 = [dsCopy treatmentId];
      [v17 setObject:treatmentId2 forKeyedSubscript:@"trialTreatmentId"];
    }

    [v94 timeIntervalSinceDate:timestampCopy];
    v69 = [NSNumber numberWithDouble:?];
    v70 = [MOMetric binForNumber:v69 bins:v93];
    [v17 setObject:v70 forKeyedSubscript:@"engagementTimeBucketed"];

    [v17 setObject:&off_10036B7E8 forKeyedSubscript:@"engagementType"];
    v71 = [NSNumber numberWithUnsignedInteger:type];
    [v17 setObject:v71 forKeyedSubscript:@"appEntryEngagementSubType"];

    v72 = [infoCopy objectForKeyedSubscript:@"entryTotalCharacters"];

    if (v72)
    {
      v73 = [infoCopy objectForKeyedSubscript:@"entryTotalCharacters"];
      [v17 setObject:v73 forKeyedSubscript:@"totalCharacters"];
    }

    v74 = [infoCopy objectForKeyedSubscript:@"entryAddedCharacters"];

    if (v74)
    {
      v75 = [infoCopy objectForKeyedSubscript:@"entryAddedCharacters"];
      [v17 setObject:v75 forKeyedSubscript:@"addedCharacters"];
    }

    v76 = [infoCopy objectForKeyedSubscript:@"entryAddedCharacters"];

    if (v76)
    {
      v77 = [infoCopy objectForKeyedSubscript:@"entryAddedCharacters"];
      intValue2 = [v77 intValue];

      v79 = [NSNumber numberWithUnsignedInteger:[(MOEngagementHistoryManager *)self determineAddedCharacterBinRange:intValue2]];
      [v17 setObject:v79 forKeyedSubscript:@"addedCharactersBinned"];
    }

    [v17 setObject:&off_10036B788 forKeyedSubscript:@"engagementEntryType"];
    AnalyticsSendEvent();
    v80 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
    {
      [MOEngagementHistoryManager submitAppEntryEngagementEventAnalyticsFor:appEntryEngagementType:timestamp:withEntryInfo:onboardingStatus:andTrialExperimentIDs:];
    }
  }
}

- (void)updateBundle:(id)bundle forSuggestionEvent:(id)event withSummary:(id)summary
{
  bundleCopy = bundle;
  eventCopy = event;
  if ([eventCopy type] == 9)
  {
    [bundleCopy setSuggestionEngagementViewCount:{objc_msgSend(bundleCopy, "suggestionEngagementViewCount") + 1}];
  }

  switch([eventCopy type])
  {
    case 0u:
      if (([bundleCopy hasSuggestionEngagementEvent:@"suggestionsUnknown"] & 1) == 0)
      {
        [bundleCopy setSuggestionEngagementEvent:@"suggestionsUnknown"];
        v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_78;
        }

        goto LABEL_75;
      }

      break;
    case 1u:
      if (([bundleCopy hasSuggestionEngagementEvent:@"suggestionsSelected"] & 1) == 0)
      {
        [bundleCopy setSuggestionEngagementEvent:@"suggestionsSelected"];
        v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_78;
        }

        goto LABEL_75;
      }

      break;
    case 2u:
      if (([bundleCopy hasSuggestionEngagementEvent:@"suggestionsShared"] & 1) == 0)
      {
        [bundleCopy setSuggestionEngagementEvent:@"suggestionsShared"];
        v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_78;
        }

        goto LABEL_75;
      }

      break;
    case 3u:
      if (([bundleCopy hasSuggestionEngagementEvent:@"suggestionsLiked"] & 1) == 0)
      {
        [bundleCopy setSuggestionEngagementEvent:@"suggestionsLiked"];
        v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_78;
        }

        goto LABEL_75;
      }

      break;
    case 4u:
      if (([bundleCopy hasSuggestionEngagementEvent:@"suggestionsDisliked"] & 1) == 0)
      {
        [bundleCopy setSuggestionEngagementEvent:@"suggestionsDisliked"];
        v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_78;
        }

        goto LABEL_75;
      }

      break;
    case 5u:
      if (([bundleCopy hasSuggestionEngagementEvent:@"suggestionsDismissed"] & 1) == 0)
      {
        [bundleCopy setSuggestionEngagementEvent:@"suggestionsDismissed"];
        v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_78;
        }

        goto LABEL_75;
      }

      break;
    case 6u:
      if (([bundleCopy hasSuggestionEngagementEvent:@"suggestionsDeleted"] & 1) == 0)
      {
        [bundleCopy setSuggestionEngagementEvent:@"suggestionsDeleted"];
        v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_78;
        }

        goto LABEL_75;
      }

      break;
    case 7u:
      if (([bundleCopy hasSuggestionEngagementEvent:@"suggestionsHidden"] & 1) == 0)
      {
        [bundleCopy setSuggestionEngagementEvent:@"suggestionsHidden"];
        v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_78;
        }

        goto LABEL_75;
      }

      break;
    case 8u:
      if (([bundleCopy hasSuggestionEngagementEvent:@"suggestionsQuickAddEntry"] & 1) == 0)
      {
        [bundleCopy setSuggestionEngagementEvent:@"suggestionsQuickAddEntry"];
        v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_78;
        }

        goto LABEL_75;
      }

      break;
    case 9u:
      if (([bundleCopy hasSuggestionEngagementEvent:@"suggestionsViewed"] & 1) == 0)
      {
        [bundleCopy setSuggestionEngagementEvent:@"suggestionsViewed"];
        v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_78;
        }

        goto LABEL_75;
      }

      break;
    case 0xBu:
      if (([bundleCopy hasSuggestionEngagementEvent:@"suggestionsFavorite"] & 1) == 0)
      {
        [bundleCopy setSuggestionEngagementEvent:@"suggestionsFavorite"];
        v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_78;
        }

        goto LABEL_75;
      }

      break;
    case 0xCu:
      if (([bundleCopy hasSuggestionEngagementEvent:@"suggestionsThumbsUp"] & 1) == 0)
      {
        [bundleCopy setSuggestionEngagementEvent:@"suggestionsThumbsUp"];
        v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_78;
        }

        goto LABEL_75;
      }

      break;
    case 0xDu:
      if (([bundleCopy hasSuggestionEngagementEvent:@"suggestionEntryCreated"] & 1) == 0)
      {
        [bundleCopy setSuggestionEngagementEvent:@"suggestionEntryCreated"];
        v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_78;
        }

        goto LABEL_75;
      }

      break;
    case 0xEu:
      if (([bundleCopy hasSuggestionEngagementEvent:@"suggestionEntryEdited"] & 1) == 0)
      {
        [bundleCopy setSuggestionEngagementEvent:@"suggestionEntryEdited"];
        v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_78;
        }

        goto LABEL_75;
      }

      break;
    case 0xFu:
      if (([bundleCopy hasSuggestionEngagementEvent:@"suggestionEntryDeleted"] & 1) == 0)
      {
        [bundleCopy setSuggestionEngagementEvent:@"suggestionEntryDeleted"];
        v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_78;
        }

        goto LABEL_75;
      }

      break;
    case 0x10u:
      if (([bundleCopy hasSuggestionEngagementEvent:@"suggestionEntryCancelled"] & 1) == 0)
      {
        [bundleCopy setSuggestionEngagementEvent:@"suggestionEntryCancelled"];
        v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_78;
        }

        goto LABEL_75;
      }

      break;
    case 0x11u:
      if (([bundleCopy hasSuggestionEngagementEvent:@"suggestionsAnnotated"] & 1) == 0)
      {
        [bundleCopy setSuggestionEngagementEvent:@"suggestionsAnnotated"];
        v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_78;
        }

        goto LABEL_75;
      }

      break;
    case 0x19u:
      if (([bundleCopy hasSuggestionEngagementEvent:@"suggestionEntryCreatedWithUpdates"] & 1) == 0)
      {
        [bundleCopy setSuggestionEngagementEvent:@"suggestionEntryCreatedWithUpdates"];
        v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_78;
        }

        goto LABEL_75;
      }

      break;
    case 0x1Au:
      if (([bundleCopy hasSuggestionEngagementEvent:@"suggestionNotificationQueued"] & 1) == 0)
      {
        [bundleCopy setSuggestionEngagementEvent:@"suggestionNotificationQueued"];
        v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_78;
        }

        goto LABEL_75;
      }

      break;
    case 0x1Bu:
      if (([bundleCopy hasSuggestionEngagementEvent:@"suggestionNotificationDequeued"] & 1) == 0)
      {
        [bundleCopy setSuggestionEngagementEvent:@"suggestionNotificationDequeued"];
        v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_78;
        }

        goto LABEL_75;
      }

      break;
    case 0x1Cu:
      if (([bundleCopy hasSuggestionEngagementEvent:@"suggestionNotificationTapped"] & 1) == 0)
      {
        [bundleCopy setSuggestionEngagementEvent:@"suggestionNotificationTapped"];
        v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_78;
        }

        goto LABEL_75;
      }

      break;
    case 0x1Du:
      if (([bundleCopy hasSuggestionEngagementEvent:@"suggestionNotificationDismissed"] & 1) == 0)
      {
        [bundleCopy setSuggestionEngagementEvent:@"suggestionNotificationDismissed"];
        v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_78;
        }

        goto LABEL_75;
      }

      break;
    case 0x1Eu:
      if (([bundleCopy hasSuggestionEngagementEvent:@"suggestionNotificationPosted"] & 1) == 0)
      {
        [bundleCopy setSuggestionEngagementEvent:@"suggestionNotificationPosted"];
        v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_78;
        }

        goto LABEL_75;
      }

      break;
    case 0x1Fu:
      if (([bundleCopy hasSuggestionEngagementEvent:@"suggestionNotificationOverriden"] & 1) == 0)
      {
        [bundleCopy setSuggestionEngagementEvent:@"suggestionNotificationOverriden"];
        v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
LABEL_75:
          [MOEngagementHistoryManager updateBundle:forSuggestionEvent:withSummary:];
        }

        goto LABEL_78;
      }

      break;
    default:
      v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [MOEngagementHistoryManager updateBundle:eventCopy forSuggestionEvent:? withSummary:?];
      }

LABEL_78:

      break;
  }
}

- (void)updateBundle:(id)bundle forAppEntryEvent:(id)event
{
  bundleCopy = bundle;
  eventCopy = event;
  type = [eventCopy type];
  if (type > 1)
  {
    switch(type)
    {
      case 2:
        if (([bundleCopy hasAppEntryEngagementEvent:@"appEntryEdited"] & 1) == 0)
        {
          [bundleCopy setAppEntryEngagementEvent:@"appEntryEdited"];
          v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_21;
          }

          goto LABEL_24;
        }

        goto LABEL_25;
      case 3:
        if (([bundleCopy hasAppEntryEngagementEvent:@"appEntryDeleted"] & 1) == 0)
        {
          [bundleCopy setAppEntryEngagementEvent:@"appEntryDeleted"];
          v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_21;
          }

          goto LABEL_24;
        }

        goto LABEL_25;
      case 4:
        if (([bundleCopy hasAppEntryEngagementEvent:@"appEntryCancelled"] & 1) == 0)
        {
          [bundleCopy setAppEntryEngagementEvent:@"appEntryCancelled"];
          v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_21;
          }

          goto LABEL_24;
        }

        goto LABEL_25;
    }

LABEL_22:
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [MOEngagementHistoryManager updateBundle:eventCopy forAppEntryEvent:?];
    }

    goto LABEL_24;
  }

  if (type)
  {
    if (type == 1)
    {
      if (([bundleCopy hasAppEntryEngagementEvent:@"appEntryCreated"] & 1) == 0)
      {
        [bundleCopy setAppEntryEngagementEvent:@"appEntryCreated"];
        v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_21;
        }

        goto LABEL_24;
      }

      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (([bundleCopy hasAppEntryEngagementEvent:@"appUnknown"] & 1) == 0)
  {
    [bundleCopy setAppEntryEngagementEvent:@"appUnknown"];
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
LABEL_21:
      [MOEngagementHistoryManager updateBundle:forAppEntryEvent:];
    }

LABEL_24:
  }

LABEL_25:
}

- (id)getInterfaceTypeCountForSuggestionEngagmentEvent:(id)event from:(id)from to:(id)to onceForEachBundle:(BOOL)bundle skipForEvents:(id)events
{
  bundleCopy = bundle;
  eventCopy = event;
  fromCopy = from;
  toCopy = to;
  eventsCopy = events;
  v46 = objc_opt_new();
  if (bundleCopy)
  {
    v16 = objc_opt_new();
  }

  else
  {
    v16 = 0;
  }

  v45 = [MOEngagementHistoryManager suggestionEventToEnum:eventCopy];
  if ([eventsCopy count])
  {
    selfCopy = self;
    v43 = v16;
    v44 = eventCopy;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v17 = eventsCopy;
    v18 = [v17 countByEnumeratingWithState:&v66 objects:v70 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v67;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v67 != v20)
          {
            objc_enumerationMutation(v17);
          }

          if ([MOEngagementHistoryManager suggestionEventToEnum:*(*(&v66 + 1) + 8 * i), selfCopy, v43, v44])
          {
            v22 = [NSNumber numberWithInt:?];
            [0 addObject:v22];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v66 objects:v70 count:16];
      }

      while (v19);
    }

    v16 = v43;
    eventCopy = v44;
    self = selfCopy;
  }

  if ([0 count])
  {
    stream_publisher = [(MOEngagementHistoryManager *)self stream_publisher];
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = __119__MOEngagementHistoryManager_getInterfaceTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke;
    v62[3] = &unk_10033E0F8;
    v63 = 0;
    v64 = fromCopy;
    v65 = toCopy;
    v24 = [stream_publisher filterWithIsIncluded:v62];

    v25 = objc_opt_new();
    v26 = [v24 reduceWithInitial:v25 nextPartialResult:&__block_literal_global_435_0];

    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = __119__MOEngagementHistoryManager_getInterfaceTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke_3;
    v60[3] = &unk_10033E160;
    v61 = eventsCopy;
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = __119__MOEngagementHistoryManager_getInterfaceTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke_437;
    v58[3] = &unk_10033E188;
    v59 = v16;
    v27 = [v26 sinkWithCompletion:v60 receiveInput:v58];
  }

  stream_publisher2 = [(MOEngagementHistoryManager *)self stream_publisher];
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = __119__MOEngagementHistoryManager_getInterfaceTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke_2_439;
  v54[3] = &unk_10033E1B0;
  v57 = v45;
  v55 = fromCopy;
  v56 = toCopy;
  v29 = toCopy;
  v30 = fromCopy;
  v31 = [stream_publisher2 filterWithIsIncluded:v54];

  v32 = objc_opt_new();
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = __119__MOEngagementHistoryManager_getInterfaceTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke_3_441;
  v51[3] = &unk_10033E1D8;
  v52 = v16;
  v53 = bundleCopy;
  v33 = v16;
  v34 = [v31 reduceWithInitial:v32 nextPartialResult:v51];

  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = __119__MOEngagementHistoryManager_getInterfaceTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke_4;
  v49[3] = &unk_10033E160;
  v50 = eventCopy;
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = __119__MOEngagementHistoryManager_getInterfaceTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke_443;
  v47[3] = &unk_10033E200;
  v35 = v46;
  v48 = v35;
  v36 = eventCopy;
  v37 = [v34 sinkWithCompletion:v49 receiveInput:v47];
  v38 = eventsCopy;
  v39 = v48;
  v40 = v35;

  return v35;
}

id __119__MOEngagementHistoryManager_getInterfaceTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke(void *a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 suggestionEvent];

  if (v4)
  {
    v5 = a1[4];
    v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 type]);
    if ([v5 containsObject:v6])
    {
      v7 = [v4 timestamp];
      if ([v7 isOnOrAfter:a1[5]])
      {
        v8 = [v4 timestamp];
        v9 = [v8 isOnOrBefore:a1[6]];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

NSMutableSet *__cdecl __119__MOEngagementHistoryManager_getInterfaceTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke_2(id a1, NSMutableSet *a2, BMStoreEvent *a3)
{
  v4 = a2;
  v5 = [(BMStoreEvent *)a3 eventBody];
  v6 = [v5 suggestionEvent];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 fullBundleOrderedSet];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) identifier];
        v13 = [v12 suggestionId];

        if (v13)
        {
          [(NSMutableSet *)v4 addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v4;
}

void __119__MOEngagementHistoryManager_getInterfaceTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 error];

  if (v3)
  {
    v4 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __119__MOEngagementHistoryManager_getInterfaceTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke_3_cold_1(a1);
    }
  }
}

void __119__MOEngagementHistoryManager_getInterfaceTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke_437(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 count])
  {
    v3 = *(a1 + 32);
    v4 = [v5 allObjects];
    [v3 addObjectsFromArray:v4];
  }
}

id __119__MOEngagementHistoryManager_getInterfaceTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke_2_439(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 suggestionEvent];

  if (v4 && [v4 type] == *(a1 + 48))
  {
    v5 = [v4 timestamp];
    if ([v5 isOnOrAfter:*(a1 + 32)])
    {
      v6 = [v4 timestamp];
      v7 = [v6 isOnOrBefore:*(a1 + 40)];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __119__MOEngagementHistoryManager_getInterfaceTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke_3_441(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 eventBody];
  v7 = [v6 suggestionEvent];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = v7;
  v8 = [v7 fullBundleOrderedSet];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 identifier];
        v15 = [v14 suggestionId];

        if (([*(a1 + 32) containsObject:v15] & 1) == 0)
        {
          if (*(a1 + 40) == 1 && v15)
          {
            [*(a1 + 32) addObject:v15];
          }

          v16 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v13 interfaceType]);
          [v5 addObject:v16];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  return v5;
}

void __119__MOEngagementHistoryManager_getInterfaceTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 error];

  if (v3)
  {
    v4 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __119__MOEngagementHistoryManager_getInterfaceTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke_4_cold_1(a1);
    }
  }
}

void __119__MOEngagementHistoryManager_getInterfaceTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke_443(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v3 countForObject:v8]);
        [*(a1 + 32) setObject:v9 forKeyedSubscript:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (id)getInterfaceTypeCountForSuggestionEngagmentEvent:(id)event
{
  eventCopy = event;
  v5 = +[NSDate distantPast];
  v6 = +[NSDate distantFuture];
  v7 = [(MOEngagementHistoryManager *)self getInterfaceTypeCountForSuggestionEngagmentEvent:eventCopy from:v5 to:v6 onceForEachBundle:1 skipForEvents:0];

  return v7;
}

- (id)getInterfaceTypeCountForUniqueSuggestionsViewedButNotEngagedFromStartDate:(id)date toEndDate:(id)endDate
{
  v11 = @"suggestionsSelected";
  v12 = @"suggestionsQuickAddEntry";
  v13 = @"suggestionsDeleted";
  endDateCopy = endDate;
  dateCopy = date;
  v8 = [NSArray arrayWithObjects:&v11 count:3];
  v9 = [(MOEngagementHistoryManager *)self getInterfaceTypeCountForSuggestionEngagmentEvent:@"suggestionsViewed" from:dateCopy to:endDateCopy onceForEachBundle:1 skipForEvents:v8, v11, v12, v13];

  return v9;
}

- (id)getInterfaceTypeCountForUniqueSuggestionsSelectedOnlyFromStartDate:(id)date toEndDate:(id)endDate
{
  v11[0] = @"suggestionsQuickAddEntry";
  v11[1] = @"suggestionsDeleted";
  endDateCopy = endDate;
  dateCopy = date;
  v8 = [NSArray arrayWithObjects:v11 count:2];
  v9 = [(MOEngagementHistoryManager *)self getInterfaceTypeCountForSuggestionEngagmentEvent:@"suggestionsSelected" from:dateCopy to:endDateCopy onceForEachBundle:1 skipForEvents:v8];

  return v9;
}

- (id)getInterfaceTypeCountForUniqueSuggestionsQuickAddEntryFromStartDate:(id)date toEndDate:(id)endDate
{
  v11 = @"suggestionsDeleted";
  endDateCopy = endDate;
  dateCopy = date;
  v8 = [NSArray arrayWithObjects:&v11 count:1];
  v9 = [(MOEngagementHistoryManager *)self getInterfaceTypeCountForSuggestionEngagmentEvent:@"suggestionsQuickAddEntry" from:dateCopy to:endDateCopy onceForEachBundle:1 skipForEvents:v8, v11];

  return v9;
}

- (id)getEngagementStreamAsJson
{
  v3 = objc_opt_new();
  stream_publisher = [(MOEngagementHistoryManager *)self stream_publisher];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __55__MOEngagementHistoryManager_getEngagementStreamAsJson__block_invoke_2;
  v9[3] = &unk_10033E268;
  v5 = v3;
  v10 = v5;
  v6 = [stream_publisher sinkWithCompletion:&__block_literal_global_446 receiveInput:v9];

  if ([NSJSONSerialization isValidJSONObject:v5])
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __55__MOEngagementHistoryManager_getEngagementStreamAsJson__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v5 = [v3 jsonDictionary];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
    v4 = v5;
  }
}

- (id)getEvergreenTypeCountForSuggestionEngagmentEvent:(id)event from:(id)from to:(id)to onceForEachBundle:(BOOL)bundle skipForEvents:(id)events
{
  bundleCopy = bundle;
  eventCopy = event;
  fromCopy = from;
  toCopy = to;
  eventsCopy = events;
  v48 = objc_opt_new();
  v47 = bundleCopy;
  if (bundleCopy)
  {
    v16 = objc_opt_new();
  }

  else
  {
    v16 = 0;
  }

  v46 = [MOEngagementHistoryManager suggestionEventToEnum:eventCopy];
  if ([eventsCopy count])
  {
    selfCopy = self;
    v44 = fromCopy;
    v45 = v16;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v17 = eventsCopy;
    v18 = eventsCopy;
    v19 = [v18 countByEnumeratingWithState:&v68 objects:v72 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v69;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v69 != v21)
          {
            objc_enumerationMutation(v18);
          }

          if ([MOEngagementHistoryManager suggestionEventToEnum:*(*(&v68 + 1) + 8 * i), selfCopy, v44, v45])
          {
            v23 = [NSNumber numberWithInt:?];
            [0 addObject:v23];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v68 objects:v72 count:16];
      }

      while (v20);
    }

    eventsCopy = v17;
    fromCopy = v44;
    v16 = v45;
    self = selfCopy;
  }

  if ([0 count])
  {
    stream_publisher = [(MOEngagementHistoryManager *)self stream_publisher];
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = __119__MOEngagementHistoryManager_getEvergreenTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke;
    v64[3] = &unk_10033E0F8;
    v65 = 0;
    v66 = fromCopy;
    v67 = toCopy;
    [stream_publisher filterWithIsIncluded:v64];
    v26 = v25 = eventsCopy;

    v27 = objc_opt_new();
    v28 = [v26 reduceWithInitial:v27 nextPartialResult:&__block_literal_global_450];

    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = __119__MOEngagementHistoryManager_getEvergreenTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke_3;
    v62[3] = &unk_10033E160;
    v63 = eventCopy;
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = __119__MOEngagementHistoryManager_getEvergreenTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke_451;
    v60[3] = &unk_10033E188;
    v61 = v16;
    v29 = [v28 sinkWithCompletion:v62 receiveInput:v60];

    eventsCopy = v25;
  }

  stream_publisher2 = [(MOEngagementHistoryManager *)self stream_publisher];
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = __119__MOEngagementHistoryManager_getEvergreenTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke_2_452;
  v56[3] = &unk_10033E1B0;
  v59 = v46;
  v57 = fromCopy;
  v58 = toCopy;
  v31 = toCopy;
  v32 = fromCopy;
  v33 = [stream_publisher2 filterWithIsIncluded:v56];

  v34 = objc_opt_new();
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = __119__MOEngagementHistoryManager_getEvergreenTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke_3_453;
  v53[3] = &unk_10033E1D8;
  v54 = v16;
  v55 = v47;
  v35 = v16;
  v36 = [v33 reduceWithInitial:v34 nextPartialResult:v53];

  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = __119__MOEngagementHistoryManager_getEvergreenTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke_4;
  v51[3] = &unk_10033E160;
  v52 = eventCopy;
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = __119__MOEngagementHistoryManager_getEvergreenTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke_454;
  v49[3] = &unk_10033E200;
  v37 = v48;
  v50 = v37;
  v38 = eventCopy;
  v39 = [v36 sinkWithCompletion:v51 receiveInput:v49];
  v40 = v50;
  v41 = v37;

  return v37;
}

id __119__MOEngagementHistoryManager_getEvergreenTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke(void *a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 suggestionEvent];

  if (v4)
  {
    v5 = a1[4];
    v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 type]);
    if ([v5 containsObject:v6])
    {
      v7 = [v4 timestamp];
      if ([v7 isOnOrAfter:a1[5]])
      {
        v8 = [v4 timestamp];
        v9 = [v8 isOnOrBefore:a1[6]];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

NSMutableSet *__cdecl __119__MOEngagementHistoryManager_getEvergreenTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke_2(id a1, NSMutableSet *a2, BMStoreEvent *a3)
{
  v4 = a2;
  v5 = [(BMStoreEvent *)a3 eventBody];
  v6 = [v5 suggestionEvent];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 fullBundleOrderedSet];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) identifier];
        v13 = [v12 bundleId];

        if (v13)
        {
          [(NSMutableSet *)v4 addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v4;
}

void __119__MOEngagementHistoryManager_getEvergreenTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 error];

  if (v3)
  {
    v4 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __119__MOEngagementHistoryManager_getEvergreenTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke_3_cold_1(a1);
    }
  }
}

void __119__MOEngagementHistoryManager_getEvergreenTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke_451(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 count])
  {
    v3 = *(a1 + 32);
    v4 = [v5 allObjects];
    [v3 addObjectsFromArray:v4];
  }
}

id __119__MOEngagementHistoryManager_getEvergreenTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke_2_452(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 suggestionEvent];

  if (v4 && [v4 type] == *(a1 + 48))
  {
    v5 = [v4 timestamp];
    if ([v5 isOnOrAfter:*(a1 + 32)])
    {
      v6 = [v4 timestamp];
      v7 = [v6 isOnOrBefore:*(a1 + 40)];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __119__MOEngagementHistoryManager_getEvergreenTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke_3_453(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 eventBody];
  v7 = [v6 suggestionEvent];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v7 fullBundleOrderedSet];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v13 identifier];
        v15 = [v14 bundleId];

        if (([*(a1 + 32) containsObject:v15] & 1) == 0)
        {
          if (*(a1 + 40) == 1 && v15)
          {
            [*(a1 + 32) addObject:v15];
          }

          v16 = [v13 bundleEvergreenType];
          if (v16)
          {
            [v5 addObject:v16];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  return v5;
}

void __119__MOEngagementHistoryManager_getEvergreenTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 error];

  if (v3)
  {
    v4 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __119__MOEngagementHistoryManager_getEvergreenTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke_4_cold_1(a1);
    }
  }
}

void __119__MOEngagementHistoryManager_getEvergreenTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke_454(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v3 countForObject:v8]);
        [*(a1 + 32) setObject:v9 forKeyedSubscript:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (id)getEvergreenTypeCountForSuggestionEngagmentEvent:(id)event
{
  eventCopy = event;
  v5 = +[NSDate distantPast];
  v6 = +[NSDate distantFuture];
  v7 = [(MOEngagementHistoryManager *)self getEvergreenTypeCountForSuggestionEngagmentEvent:eventCopy from:v5 to:v6 onceForEachBundle:1 skipForEvents:0];

  return v7;
}

- (id)getEvergreenCountForSuggestionsSelectedOnlyFromStartDate:(id)date toEndDate:(id)endDate
{
  v11[0] = @"suggestionsQuickAddEntry";
  v11[1] = @"suggestionsDeleted";
  endDateCopy = endDate;
  dateCopy = date;
  v8 = [NSArray arrayWithObjects:v11 count:2];
  v9 = [(MOEngagementHistoryManager *)self getEvergreenTypeCountForSuggestionEngagmentEvent:@"suggestionsSelected" from:dateCopy to:endDateCopy onceForEachBundle:0 skipForEvents:v8];

  return v9;
}

- (id)getEvergreenTypeCountForSuggestionsQuickAddEntryFromStartDate:(id)date toEndDate:(id)endDate
{
  v11 = @"suggestionsDeleted";
  endDateCopy = endDate;
  dateCopy = date;
  v8 = [NSArray arrayWithObjects:&v11 count:1];
  v9 = [(MOEngagementHistoryManager *)self getEvergreenTypeCountForSuggestionEngagmentEvent:@"suggestionsQuickAddEntry" from:dateCopy to:endDateCopy onceForEachBundle:0 skipForEvents:v8, v11];

  return v9;
}

- (id)getInterfaceTypeCountForAppEntryEvent:(id)event withMinAddedCharacterCount:(int64_t)count andMaxAddedCharacterCount:(int64_t)characterCount fromStartDate:(id)date toEndDate:(id)endDate onceForEachBundle:(BOOL)bundle skipForEvents:(id)events
{
  bundleCopy = bundle;
  eventCopy = event;
  dateCopy = date;
  endDateCopy = endDate;
  eventsCopy = events;
  v16 = objc_opt_new();
  v52 = bundleCopy;
  if (bundleCopy)
  {
    v17 = objc_opt_new();
  }

  else
  {
    v17 = 0;
  }

  v48 = [MOEngagementHistoryManager appEntryEventToEnum:eventCopy];
  if ([eventsCopy count])
  {
    v46 = v17;
    v47 = v16;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v18 = eventsCopy;
    v19 = [v18 countByEnumeratingWithState:&v75 objects:v79 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v76;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v76 != v21)
          {
            objc_enumerationMutation(v18);
          }

          if ([MOEngagementHistoryManager appEntryEventToEnum:*(*(&v75 + 1) + 8 * i)])
          {
            v23 = [NSNumber numberWithInt:?];
            [0 addObject:v23];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v75 objects:v79 count:16];
      }

      while (v20);
    }

    v16 = v47;
    v17 = v46;
  }

  if ([0 count])
  {
    stream_publisher = [(MOEngagementHistoryManager *)self stream_publisher];
    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = __177__MOEngagementHistoryManager_getInterfaceTypeCountForAppEntryEvent_withMinAddedCharacterCount_andMaxAddedCharacterCount_fromStartDate_toEndDate_onceForEachBundle_skipForEvents___block_invoke;
    v71[3] = &unk_10033E0F8;
    v72 = 0;
    v73 = dateCopy;
    v74 = endDateCopy;
    v25 = [stream_publisher filterWithIsIncluded:v71];

    v26 = objc_opt_new();
    v27 = [v25 reduceWithInitial:v26 nextPartialResult:&__block_literal_global_456];

    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = __177__MOEngagementHistoryManager_getInterfaceTypeCountForAppEntryEvent_withMinAddedCharacterCount_andMaxAddedCharacterCount_fromStartDate_toEndDate_onceForEachBundle_skipForEvents___block_invoke_3;
    v69[3] = &unk_10033E160;
    v70 = eventCopy;
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = __177__MOEngagementHistoryManager_getInterfaceTypeCountForAppEntryEvent_withMinAddedCharacterCount_andMaxAddedCharacterCount_fromStartDate_toEndDate_onceForEachBundle_skipForEvents___block_invoke_457;
    v67[3] = &unk_10033E188;
    v68 = v17;
    v28 = [v27 sinkWithCompletion:v69 receiveInput:v67];
  }

  [(MOEngagementHistoryManager *)self stream_publisher];
  v30 = v29 = v17;
  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = __177__MOEngagementHistoryManager_getInterfaceTypeCountForAppEntryEvent_withMinAddedCharacterCount_andMaxAddedCharacterCount_fromStartDate_toEndDate_onceForEachBundle_skipForEvents___block_invoke_2_458;
  v61[3] = &unk_10033E2D0;
  v66 = v48;
  v62 = dateCopy;
  v63 = endDateCopy;
  countCopy = count;
  characterCountCopy = characterCount;
  v31 = endDateCopy;
  v32 = dateCopy;
  v33 = [v30 filterWithIsIncluded:v61];

  v34 = objc_opt_new();
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = __177__MOEngagementHistoryManager_getInterfaceTypeCountForAppEntryEvent_withMinAddedCharacterCount_andMaxAddedCharacterCount_fromStartDate_toEndDate_onceForEachBundle_skipForEvents___block_invoke_3_459;
  v58[3] = &unk_10033E1D8;
  v59 = v29;
  v60 = v52;
  v35 = v29;
  v36 = [v33 reduceWithInitial:v34 nextPartialResult:v58];

  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = __177__MOEngagementHistoryManager_getInterfaceTypeCountForAppEntryEvent_withMinAddedCharacterCount_andMaxAddedCharacterCount_fromStartDate_toEndDate_onceForEachBundle_skipForEvents___block_invoke_4;
  v55[3] = &unk_10033E2F8;
  v56 = eventCopy;
  v57 = eventsCopy;
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = __177__MOEngagementHistoryManager_getInterfaceTypeCountForAppEntryEvent_withMinAddedCharacterCount_andMaxAddedCharacterCount_fromStartDate_toEndDate_onceForEachBundle_skipForEvents___block_invoke_460;
  v53[3] = &unk_10033E200;
  v37 = v16;
  v38 = eventCopy;
  v39 = v37;
  v54 = v37;
  v40 = eventsCopy;
  v41 = v38;
  v42 = [v36 sinkWithCompletion:v55 receiveInput:v53];
  v43 = v54;
  v44 = v39;

  return v39;
}

id __177__MOEngagementHistoryManager_getInterfaceTypeCountForAppEntryEvent_withMinAddedCharacterCount_andMaxAddedCharacterCount_fromStartDate_toEndDate_onceForEachBundle_skipForEvents___block_invoke(void *a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 entryEvent];

  if (v4)
  {
    v5 = a1[4];
    v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 type]);
    if ([v5 containsObject:v6])
    {
      v7 = [v4 timestamp];
      if ([v7 isOnOrAfter:a1[5]])
      {
        v8 = [v4 timestamp];
        v9 = [v8 isOnOrBefore:a1[6]];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

NSMutableSet *__cdecl __177__MOEngagementHistoryManager_getInterfaceTypeCountForAppEntryEvent_withMinAddedCharacterCount_andMaxAddedCharacterCount_fromStartDate_toEndDate_onceForEachBundle_skipForEvents___block_invoke_2(id a1, NSMutableSet *a2, BMStoreEvent *a3)
{
  v4 = a2;
  v5 = [(BMStoreEvent *)a3 eventBody];
  v6 = [v5 entryEvent];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 identifier];
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
        v13 = [v12 suggestionId];

        if (v13)
        {
          v14 = [v12 suggestionId];
          [(NSMutableSet *)v4 addObject:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v4;
}

void __177__MOEngagementHistoryManager_getInterfaceTypeCountForAppEntryEvent_withMinAddedCharacterCount_andMaxAddedCharacterCount_fromStartDate_toEndDate_onceForEachBundle_skipForEvents___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 error];

  if (v3)
  {
    v4 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __119__MOEngagementHistoryManager_getEvergreenTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke_3_cold_1(a1);
    }
  }
}

void __177__MOEngagementHistoryManager_getInterfaceTypeCountForAppEntryEvent_withMinAddedCharacterCount_andMaxAddedCharacterCount_fromStartDate_toEndDate_onceForEachBundle_skipForEvents___block_invoke_457(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 count])
  {
    v3 = *(a1 + 32);
    v4 = [v5 allObjects];
    [v3 addObjectsFromArray:v4];
  }
}

BOOL __177__MOEngagementHistoryManager_getInterfaceTypeCountForAppEntryEvent_withMinAddedCharacterCount_andMaxAddedCharacterCount_fromStartDate_toEndDate_onceForEachBundle_skipForEvents___block_invoke_2_458(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 entryEvent];

  if (v4 && [v4 type] == *(a1 + 64))
  {
    v5 = [v4 timestamp];
    if ([v5 isOnOrAfter:*(a1 + 32)])
    {
      v6 = [v4 timestamp];
      v7 = [v6 isOnOrBefore:*(a1 + 40)] && *(a1 + 48) <= objc_msgSend(v4, "addedCharacters") && *(a1 + 56) >= objc_msgSend(v4, "addedCharacters");
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __177__MOEngagementHistoryManager_getInterfaceTypeCountForAppEntryEvent_withMinAddedCharacterCount_andMaxAddedCharacterCount_fromStartDate_toEndDate_onceForEachBundle_skipForEvents___block_invoke_3_459(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 eventBody];
  v7 = [v6 entryEvent];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v25 = v7;
  obj = [v7 identifier];
  v8 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        v13 = *(a1 + 32);
        v14 = [v12 suggestionId];
        LOBYTE(v13) = [v13 containsObject:v14];

        if ((v13 & 1) == 0)
        {
          if (*(a1 + 40) == 1)
          {
            v15 = [v12 suggestionId];

            if (v15)
            {
              v16 = *(a1 + 32);
              v17 = [v12 suggestionId];
              [v16 addObject:v17];
            }
          }

          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v18 = [v25 bundleInterfaceTypes];
          v19 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v28;
            do
            {
              for (j = 0; j != v20; j = j + 1)
              {
                if (*v28 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v27 + 1) + 8 * j);
                if ([v23 length])
                {
                  [v5 addObject:v23];
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v20);
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v9);
  }

  return v5;
}

void __177__MOEngagementHistoryManager_getInterfaceTypeCountForAppEntryEvent_withMinAddedCharacterCount_andMaxAddedCharacterCount_fromStartDate_toEndDate_onceForEachBundle_skipForEvents___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 error];

  if (v3)
  {
    v4 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __177__MOEngagementHistoryManager_getInterfaceTypeCountForAppEntryEvent_withMinAddedCharacterCount_andMaxAddedCharacterCount_fromStartDate_toEndDate_onceForEachBundle_skipForEvents___block_invoke_4_cold_1(a1);
    }
  }
}

void __177__MOEngagementHistoryManager_getInterfaceTypeCountForAppEntryEvent_withMinAddedCharacterCount_andMaxAddedCharacterCount_fromStartDate_toEndDate_onceForEachBundle_skipForEvents___block_invoke_460(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = [MOEventBundle alloc];
        v10 = [(MOEventBundle *)v9 getInterfaceTypeEnum:v8];

        v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 countForObject:v8]);
        v12 = *(a1 + 32);
        v13 = [NSNumber numberWithUnsignedInteger:v10];
        [v12 setObject:v11 forKeyedSubscript:v13];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }
}

- (id)getInterfaceTypeCountForAppEntryEvent:(id)event withMinimumAddedCharacters:(int64_t)characters
{
  eventCopy = event;
  v7 = +[NSDate distantPast];
  v8 = +[NSDate distantFuture];
  v9 = [(MOEngagementHistoryManager *)self getInterfaceTypeCountForAppEntryEvent:eventCopy withMinAddedCharacterCount:characters andMaxAddedCharacterCount:0x7FFFFFFFFFFFFFFFLL fromStartDate:v7 toEndDate:v8 onceForEachBundle:1 skipForEvents:0];

  return v9;
}

- (id)getInterfaceTypeCountForUniqueSuggestionsWithJournalCreatedFromStartDate:(id)date toEndDate:(id)endDate withMinimumAddedCharacters:(int64_t)characters
{
  v13 = @"appEntryDeleted";
  endDateCopy = endDate;
  dateCopy = date;
  v10 = [NSArray arrayWithObjects:&v13 count:1];
  v11 = [(MOEngagementHistoryManager *)self getInterfaceTypeCountForAppEntryEvent:@"appEntryCreated" withMinAddedCharacterCount:characters andMaxAddedCharacterCount:0x7FFFFFFFFFFFFFFFLL fromStartDate:dateCopy toEndDate:endDateCopy onceForEachBundle:1 skipForEvents:v10];

  return v11;
}

- (id)getInterfaceTypeCountForUniqueSuggestionsWithJournalCreatedButNoWritingFromStartDate:(id)date toEndDate:(id)endDate
{
  v11 = @"appEntryDeleted";
  v12 = @"appEntryEdited";
  endDateCopy = endDate;
  dateCopy = date;
  v8 = [NSArray arrayWithObjects:&v11 count:2];
  v9 = [(MOEngagementHistoryManager *)self getInterfaceTypeCountForAppEntryEvent:@"appEntryCreated" withMinAddedCharacterCount:0 andMaxAddedCharacterCount:0 fromStartDate:dateCopy toEndDate:endDateCopy onceForEachBundle:1 skipForEvents:v8, v11, v12];

  return v9;
}

- (id)getEvergreenTypeCountForAppEntryEvent:(id)event withMinAddedCharacterCount:(int64_t)count andMaxAddedCharacterCount:(int64_t)characterCount fromStartDate:(id)date toEndDate:(id)endDate onceForEachBundle:(BOOL)bundle skipForEvents:(id)events
{
  bundleCopy = bundle;
  eventCopy = event;
  dateCopy = date;
  endDateCopy = endDate;
  eventsCopy = events;
  v16 = objc_opt_new();
  v52 = bundleCopy;
  if (bundleCopy)
  {
    v17 = objc_opt_new();
  }

  else
  {
    v17 = 0;
  }

  v48 = [MOEngagementHistoryManager appEntryEventToEnum:eventCopy];
  if ([eventsCopy count])
  {
    v46 = v17;
    v47 = v16;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v18 = eventsCopy;
    v19 = [v18 countByEnumeratingWithState:&v75 objects:v79 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v76;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v76 != v21)
          {
            objc_enumerationMutation(v18);
          }

          if ([MOEngagementHistoryManager appEntryEventToEnum:*(*(&v75 + 1) + 8 * i)])
          {
            v23 = [NSNumber numberWithInt:?];
            [0 addObject:v23];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v75 objects:v79 count:16];
      }

      while (v20);
    }

    v16 = v47;
    v17 = v46;
  }

  if ([0 count])
  {
    stream_publisher = [(MOEngagementHistoryManager *)self stream_publisher];
    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = __177__MOEngagementHistoryManager_getEvergreenTypeCountForAppEntryEvent_withMinAddedCharacterCount_andMaxAddedCharacterCount_fromStartDate_toEndDate_onceForEachBundle_skipForEvents___block_invoke;
    v71[3] = &unk_10033E0F8;
    v72 = 0;
    v73 = dateCopy;
    v74 = endDateCopy;
    v25 = [stream_publisher filterWithIsIncluded:v71];

    v26 = objc_opt_new();
    v27 = [v25 reduceWithInitial:v26 nextPartialResult:&__block_literal_global_463];

    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = __177__MOEngagementHistoryManager_getEvergreenTypeCountForAppEntryEvent_withMinAddedCharacterCount_andMaxAddedCharacterCount_fromStartDate_toEndDate_onceForEachBundle_skipForEvents___block_invoke_3;
    v69[3] = &unk_10033E160;
    v70 = eventCopy;
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = __177__MOEngagementHistoryManager_getEvergreenTypeCountForAppEntryEvent_withMinAddedCharacterCount_andMaxAddedCharacterCount_fromStartDate_toEndDate_onceForEachBundle_skipForEvents___block_invoke_464;
    v67[3] = &unk_10033E188;
    v68 = v17;
    v28 = [v27 sinkWithCompletion:v69 receiveInput:v67];
  }

  [(MOEngagementHistoryManager *)self stream_publisher];
  v30 = v29 = v17;
  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = __177__MOEngagementHistoryManager_getEvergreenTypeCountForAppEntryEvent_withMinAddedCharacterCount_andMaxAddedCharacterCount_fromStartDate_toEndDate_onceForEachBundle_skipForEvents___block_invoke_2_465;
  v61[3] = &unk_10033E2D0;
  v66 = v48;
  v62 = dateCopy;
  v63 = endDateCopy;
  countCopy = count;
  characterCountCopy = characterCount;
  v31 = endDateCopy;
  v32 = dateCopy;
  v33 = [v30 filterWithIsIncluded:v61];

  v34 = objc_opt_new();
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = __177__MOEngagementHistoryManager_getEvergreenTypeCountForAppEntryEvent_withMinAddedCharacterCount_andMaxAddedCharacterCount_fromStartDate_toEndDate_onceForEachBundle_skipForEvents___block_invoke_3_466;
  v58[3] = &unk_10033E1D8;
  v59 = v29;
  v60 = v52;
  v35 = v29;
  v36 = [v33 reduceWithInitial:v34 nextPartialResult:v58];

  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = __177__MOEngagementHistoryManager_getEvergreenTypeCountForAppEntryEvent_withMinAddedCharacterCount_andMaxAddedCharacterCount_fromStartDate_toEndDate_onceForEachBundle_skipForEvents___block_invoke_4;
  v55[3] = &unk_10033E2F8;
  v56 = eventCopy;
  v57 = eventsCopy;
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = __177__MOEngagementHistoryManager_getEvergreenTypeCountForAppEntryEvent_withMinAddedCharacterCount_andMaxAddedCharacterCount_fromStartDate_toEndDate_onceForEachBundle_skipForEvents___block_invoke_467;
  v53[3] = &unk_10033E200;
  v37 = v16;
  v38 = eventCopy;
  v39 = v37;
  v54 = v37;
  v40 = eventsCopy;
  v41 = v38;
  v42 = [v36 sinkWithCompletion:v55 receiveInput:v53];
  v43 = v54;
  v44 = v39;

  return v39;
}

id __177__MOEngagementHistoryManager_getEvergreenTypeCountForAppEntryEvent_withMinAddedCharacterCount_andMaxAddedCharacterCount_fromStartDate_toEndDate_onceForEachBundle_skipForEvents___block_invoke(void *a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 entryEvent];

  if (v4)
  {
    v5 = a1[4];
    v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 type]);
    if ([v5 containsObject:v6])
    {
      v7 = [v4 timestamp];
      if ([v7 isOnOrAfter:a1[5]])
      {
        v8 = [v4 timestamp];
        v9 = [v8 isOnOrBefore:a1[6]];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

NSMutableSet *__cdecl __177__MOEngagementHistoryManager_getEvergreenTypeCountForAppEntryEvent_withMinAddedCharacterCount_andMaxAddedCharacterCount_fromStartDate_toEndDate_onceForEachBundle_skipForEvents___block_invoke_2(id a1, NSMutableSet *a2, BMStoreEvent *a3)
{
  v4 = a2;
  v5 = [(BMStoreEvent *)a3 eventBody];
  v6 = [v5 entryEvent];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 identifier];
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
        v13 = [v12 suggestionId];

        if (v13)
        {
          v14 = [v12 suggestionId];
          [(NSMutableSet *)v4 addObject:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v4;
}

void __177__MOEngagementHistoryManager_getEvergreenTypeCountForAppEntryEvent_withMinAddedCharacterCount_andMaxAddedCharacterCount_fromStartDate_toEndDate_onceForEachBundle_skipForEvents___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 error];

  if (v3)
  {
    v4 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __177__MOEngagementHistoryManager_getEvergreenTypeCountForAppEntryEvent_withMinAddedCharacterCount_andMaxAddedCharacterCount_fromStartDate_toEndDate_onceForEachBundle_skipForEvents___block_invoke_3_cold_1(a1);
    }
  }
}

void __177__MOEngagementHistoryManager_getEvergreenTypeCountForAppEntryEvent_withMinAddedCharacterCount_andMaxAddedCharacterCount_fromStartDate_toEndDate_onceForEachBundle_skipForEvents___block_invoke_464(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 count])
  {
    v3 = *(a1 + 32);
    v4 = [v5 allObjects];
    [v3 addObjectsFromArray:v4];
  }
}

BOOL __177__MOEngagementHistoryManager_getEvergreenTypeCountForAppEntryEvent_withMinAddedCharacterCount_andMaxAddedCharacterCount_fromStartDate_toEndDate_onceForEachBundle_skipForEvents___block_invoke_2_465(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 entryEvent];

  if (v4 && [v4 type] == *(a1 + 64))
  {
    v5 = [v4 timestamp];
    if ([v5 isOnOrAfter:*(a1 + 32)])
    {
      v6 = [v4 timestamp];
      v7 = [v6 isOnOrBefore:*(a1 + 40)] && *(a1 + 48) <= objc_msgSend(v4, "addedCharacters") && *(a1 + 56) >= objc_msgSend(v4, "addedCharacters");
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __177__MOEngagementHistoryManager_getEvergreenTypeCountForAppEntryEvent_withMinAddedCharacterCount_andMaxAddedCharacterCount_fromStartDate_toEndDate_onceForEachBundle_skipForEvents___block_invoke_3_466(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 eventBody];
  v7 = [v6 entryEvent];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v25 = v7;
  obj = [v7 identifier];
  v8 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        v13 = *(a1 + 32);
        v14 = [v12 suggestionId];
        LOBYTE(v13) = [v13 containsObject:v14];

        if ((v13 & 1) == 0)
        {
          if (*(a1 + 40) == 1)
          {
            v15 = [v12 suggestionId];

            if (v15)
            {
              v16 = *(a1 + 32);
              v17 = [v12 suggestionId];
              [v16 addObject:v17];
            }
          }

          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v18 = [v25 bundleEvergreenTypes];
          v19 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v28;
            do
            {
              for (j = 0; j != v20; j = j + 1)
              {
                if (*v28 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v27 + 1) + 8 * j);
                if ([v23 length])
                {
                  [v5 addObject:v23];
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v20);
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v9);
  }

  return v5;
}

void __177__MOEngagementHistoryManager_getEvergreenTypeCountForAppEntryEvent_withMinAddedCharacterCount_andMaxAddedCharacterCount_fromStartDate_toEndDate_onceForEachBundle_skipForEvents___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 error];

  if (v3)
  {
    v4 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __177__MOEngagementHistoryManager_getEvergreenTypeCountForAppEntryEvent_withMinAddedCharacterCount_andMaxAddedCharacterCount_fromStartDate_toEndDate_onceForEachBundle_skipForEvents___block_invoke_4_cold_1(a1);
    }
  }
}

void __177__MOEngagementHistoryManager_getEvergreenTypeCountForAppEntryEvent_withMinAddedCharacterCount_andMaxAddedCharacterCount_fromStartDate_toEndDate_onceForEachBundle_skipForEvents___block_invoke_467(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 countForObject:v8]);
        [*(a1 + 32) setObject:v9 forKeyedSubscript:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (id)getEvergreenTypeCountForAppEntryEvent:(id)event withMinimumAddedCharacters:(int64_t)characters
{
  eventCopy = event;
  v7 = +[NSDate distantPast];
  v8 = +[NSDate distantFuture];
  v9 = [(MOEngagementHistoryManager *)self getEvergreenTypeCountForAppEntryEvent:eventCopy withMinAddedCharacterCount:characters andMaxAddedCharacterCount:0x7FFFFFFFFFFFFFFFLL fromStartDate:v7 toEndDate:v8 onceForEachBundle:0 skipForEvents:0];

  return v9;
}

- (id)getEvergreenTypeCountForSuggestionsWithJournalCreatedFromStartDate:(id)date toEndDate:(id)endDate withMinimumAddedCharacters:(int64_t)characters
{
  v13 = @"appEntryDeleted";
  endDateCopy = endDate;
  dateCopy = date;
  v10 = [NSArray arrayWithObjects:&v13 count:1];
  v11 = [(MOEngagementHistoryManager *)self getEvergreenTypeCountForAppEntryEvent:@"appEntryCreated" withMinAddedCharacterCount:characters andMaxAddedCharacterCount:0x7FFFFFFFFFFFFFFFLL fromStartDate:dateCopy toEndDate:endDateCopy onceForEachBundle:0 skipForEvents:v10];

  return v11;
}

- (id)getEvergreenTypeCountForSuggestionsWithJournalCreatedButNoWritingFromStartDate:(id)date toEndDate:(id)endDate
{
  v11 = @"appEntryDeleted";
  v12 = @"appEntryEdited";
  endDateCopy = endDate;
  dateCopy = date;
  v8 = [NSArray arrayWithObjects:&v11 count:2];
  v9 = [(MOEngagementHistoryManager *)self getEvergreenTypeCountForAppEntryEvent:@"appEntryCreated" withMinAddedCharacterCount:0 andMaxAddedCharacterCount:0 fromStartDate:dateCopy toEndDate:endDateCopy onceForEachBundle:0 skipForEvents:v8, v11, v12];

  return v9;
}

- (void)eventBundleStore:(id)store needsEngagementInfoForBundles:(id)bundles
{
  selfCopy = self;
  bundlesCopy = bundles;
  v5 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = bundlesCopy;
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    do
    {
      v10 = 0;
      v28 = v8;
      do
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v35 + 1) + 8 * v10);
        suggestionID = [v11 suggestionID];
        v13 = suggestionID;
        if (suggestionID)
        {
          uUIDString = [suggestionID UUIDString];
          if (uUIDString)
          {
            v15 = [v5 objectForKeyedSubscript:uUIDString];

            if (v15)
            {
              v16 = [v5 objectForKeyedSubscript:uUIDString];
              [v16 addObject:v11];
            }

            else
            {
              v40 = v11;
              v16 = [NSArray arrayWithObjects:&v40 count:1];
              v8 = v28;
              v17 = [NSMutableArray arrayWithArray:v16];
              [v5 setObject:v17 forKeyedSubscript:uUIDString];
            }
          }

          else
          {
            v16 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              [MOEngagementHistoryManager eventBundleStore:v39 needsEngagementInfoForBundles:v11];
            }
          }
        }

        else
        {
          uUIDString = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
          if (os_log_type_enabled(uUIDString, OS_LOG_TYPE_ERROR))
          {
            [MOEngagementHistoryManager eventBundleStore:v41 needsEngagementInfoForBundles:v11];
          }
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v8);
  }

  mergedStreamPublisher = [(MOEngagementHistoryManager *)selfCopy mergedStreamPublisher];

  if (mergedStreamPublisher)
  {
    mergedStreamPublisher2 = [(MOEngagementHistoryManager *)selfCopy mergedStreamPublisher];
    v20 = [mergedStreamPublisher2 filterWithIsIncluded:&__block_literal_global_469];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = __77__MOEngagementHistoryManager_eventBundleStore_needsEngagementInfoForBundles___block_invoke_472;
    v32[3] = &unk_10033DF50;
    v21 = v5;
    v33 = v21;
    v34 = selfCopy;
    v22 = [v20 sinkWithCompletion:&__block_literal_global_471 receiveInput:v32];

    mergedStreamPublisher3 = [(MOEngagementHistoryManager *)selfCopy mergedStreamPublisher];
    v24 = [mergedStreamPublisher3 filterWithIsIncluded:&__block_literal_global_475];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = __77__MOEngagementHistoryManager_eventBundleStore_needsEngagementInfoForBundles___block_invoke_478;
    v29[3] = &unk_10033DF50;
    v30 = v21;
    v31 = selfCopy;
    v25 = [v24 sinkWithCompletion:&__block_literal_global_477 receiveInput:v29];

    v26 = v33;
  }

  else
  {
    v26 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [MOEngagementHistoryManager eventBundleStore:needsEngagementInfoForBundles:];
    }
  }
}

BOOL __77__MOEngagementHistoryManager_eventBundleStore_needsEngagementInfoForBundles___block_invoke(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];
  v3 = [v2 suggestionEvent];
  v4 = [v3 clientIdentifier];
  v5 = v4 != 0;

  return v5;
}

void __77__MOEngagementHistoryManager_eventBundleStore_needsEngagementInfoForBundles___block_invoke_2(id a1, BPSCompletion *a2)
{
  v2 = [(BPSCompletion *)a2 error];

  if (v2)
  {
    v3 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __77__MOEngagementHistoryManager_eventBundleStore_needsEngagementInfoForBundles___block_invoke_2_cold_1();
    }
  }
}

void __77__MOEngagementHistoryManager_eventBundleStore_needsEngagementInfoForBundles___block_invoke_472(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 suggestionEvent];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [v4 fullBundleOrderedSet];
  v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v17 = *v23;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = [v8 identifier];
        v10 = [v9 suggestionId];

        if (v10)
        {
          v20 = 0u;
          v21 = 0u;
          v18 = 0u;
          v19 = 0u;
          v11 = [*(a1 + 32) objectForKeyedSubscript:v10];
          v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v19;
            do
            {
              for (j = 0; j != v13; j = j + 1)
              {
                if (*v19 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                [*(a1 + 40) updateBundle:*(*(&v18 + 1) + 8 * j) forSuggestionEvent:v4 withSummary:v8];
              }

              v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
            }

            while (v13);
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }
}

BOOL __77__MOEngagementHistoryManager_eventBundleStore_needsEngagementInfoForBundles___block_invoke_2_473(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];
  v3 = [v2 entryEvent];
  v4 = v3 != 0;

  return v4;
}

void __77__MOEngagementHistoryManager_eventBundleStore_needsEngagementInfoForBundles___block_invoke_3(id a1, BPSCompletion *a2)
{
  v2 = [(BPSCompletion *)a2 error];

  if (v2)
  {
    v3 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __77__MOEngagementHistoryManager_eventBundleStore_needsEngagementInfoForBundles___block_invoke_3_cold_1();
    }
  }
}

void __77__MOEngagementHistoryManager_eventBundleStore_needsEngagementInfoForBundles___block_invoke_478(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 entryEvent];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [v4 identifier];
  v5 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v20 + 1) + 8 * v8) suggestionId];
        if (v9)
        {
          v18 = 0u;
          v19 = 0u;
          v16 = 0u;
          v17 = 0u;
          v10 = [*(a1 + 32) objectForKeyedSubscript:v9];
          v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v17;
            do
            {
              v14 = 0;
              do
              {
                if (*v17 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                [*(a1 + 40) updateBundle:*(*(&v16 + 1) + 8 * v14) forAppEntryEvent:v4];
                v14 = v14 + 1;
              }

              while (v12 != v14);
              v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
            }

            while (v12);
          }
        }

        v8 = v8 + 1;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }
}

- (id)_convertStringArrayIntoCombinedHashedString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy && [stringCopy count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = v4;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      stringValue = 0;
      v9 = 0;
      v10 = *v20;
      do
      {
        v11 = 0;
        v12 = stringValue;
        do
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v5);
          }

          v13 = *(*(&v19 + 1) + 8 * v11);
          v14 = objc_autoreleasePoolPush();
          v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v13 hash]);
          stringValue = [v15 stringValue];

          if (v9)
          {
            v16 = [v9 stringByAppendingFormat:@"%@", stringValue];;

            v9 = v16;
          }

          else
          {
            v9 = stringValue;
          }

          objc_autoreleasePoolPop(v14);
          v11 = v11 + 1;
          v12 = stringValue;
        }

        while (v7 != v11);
        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    else
    {
      stringValue = 0;
      v9 = 0;
    }

    v4 = v18;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)fetchSuggestionEngagementEventsFromStartDate:(id)date toEndDate:(id)endDate withError:(id *)error
{
  dateCopy = date;
  endDateCopy = endDate;
  v10 = objc_opt_new();
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__33;
  v30 = __Block_byref_object_dispose__33;
  v31 = 0;
  stream_publisher = [(MOEngagementHistoryManager *)self stream_publisher];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __95__MOEngagementHistoryManager_fetchSuggestionEngagementEventsFromStartDate_toEndDate_withError___block_invoke;
  v23[3] = &unk_100338AB8;
  v12 = dateCopy;
  v24 = v12;
  v13 = endDateCopy;
  v25 = v13;
  v14 = [stream_publisher filterWithIsIncluded:v23];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __95__MOEngagementHistoryManager_fetchSuggestionEngagementEventsFromStartDate_toEndDate_withError___block_invoke_2;
  v22[3] = &unk_100338B60;
  v22[4] = &v26;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = __95__MOEngagementHistoryManager_fetchSuggestionEngagementEventsFromStartDate_toEndDate_withError___block_invoke_482;
  v20[3] = &unk_10033E268;
  v15 = v10;
  v21 = v15;
  v16 = [v14 sinkWithCompletion:v22 receiveInput:v20];
  if (error)
  {
    *error = v27[5];
  }

  v17 = v21;
  v18 = v15;

  _Block_object_dispose(&v26, 8);

  return v18;
}

id __95__MOEngagementHistoryManager_fetchSuggestionEngagementEventsFromStartDate_toEndDate_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 suggestionEvent];

  if (v4)
  {
    v5 = [v4 timestamp];
    if ([v5 isOnOrAfter:*(a1 + 32)])
    {
      v6 = [v4 timestamp];
      v7 = [v6 isOnOrBefore:*(a1 + 40)];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __95__MOEngagementHistoryManager_fetchSuggestionEngagementEventsFromStartDate_toEndDate_withError___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [v3 error];

  if (v7)
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __95__MOEngagementHistoryManager_fetchSuggestionEngagementEventsFromStartDate_toEndDate_withError___block_invoke_2_cold_1();
    }
  }
}

void __95__MOEngagementHistoryManager_fetchSuggestionEngagementEventsFromStartDate_toEndDate_withError___block_invoke_482(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v5 = [v3 jsonDictionary];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
    v4 = v5;
  }
}

- (id)fetchAppEntryEngagementEventsFromStartDate:(id)date toEndDate:(id)endDate withError:(id *)error
{
  dateCopy = date;
  endDateCopy = endDate;
  v10 = objc_opt_new();
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__33;
  v30 = __Block_byref_object_dispose__33;
  v31 = 0;
  stream_publisher = [(MOEngagementHistoryManager *)self stream_publisher];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __93__MOEngagementHistoryManager_fetchAppEntryEngagementEventsFromStartDate_toEndDate_withError___block_invoke;
  v23[3] = &unk_100338AB8;
  v12 = dateCopy;
  v24 = v12;
  v13 = endDateCopy;
  v25 = v13;
  v14 = [stream_publisher filterWithIsIncluded:v23];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __93__MOEngagementHistoryManager_fetchAppEntryEngagementEventsFromStartDate_toEndDate_withError___block_invoke_2;
  v22[3] = &unk_100338B60;
  v22[4] = &v26;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = __93__MOEngagementHistoryManager_fetchAppEntryEngagementEventsFromStartDate_toEndDate_withError___block_invoke_483;
  v20[3] = &unk_10033E268;
  v15 = v10;
  v21 = v15;
  v16 = [v14 sinkWithCompletion:v22 receiveInput:v20];
  if (error)
  {
    *error = v27[5];
  }

  v17 = v21;
  v18 = v15;

  _Block_object_dispose(&v26, 8);

  return v18;
}

id __93__MOEngagementHistoryManager_fetchAppEntryEngagementEventsFromStartDate_toEndDate_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 entryEvent];

  if (v4)
  {
    v5 = [v4 timestamp];
    if ([v5 isOnOrAfter:*(a1 + 32)])
    {
      v6 = [v4 timestamp];
      v7 = [v6 isOnOrBefore:*(a1 + 40)];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __93__MOEngagementHistoryManager_fetchAppEntryEngagementEventsFromStartDate_toEndDate_withError___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [v3 error];

  if (v7)
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __93__MOEngagementHistoryManager_fetchAppEntryEngagementEventsFromStartDate_toEndDate_withError___block_invoke_2_cold_1();
    }
  }
}

void __93__MOEngagementHistoryManager_fetchAppEntryEngagementEventsFromStartDate_toEndDate_withError___block_invoke_483(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v5 = [v3 jsonDictionary];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
    v4 = v5;
  }
}

- (id)fetchSuggestionEngagementEventsWithTypes:(id)types fromStartDate:(id)date toEndDate:(id)endDate withError:(id *)error
{
  typesCopy = types;
  dateCopy = date;
  endDateCopy = endDate;
  v13 = objc_opt_new();
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__33;
  v35 = __Block_byref_object_dispose__33;
  v36 = 0;
  stream_publisher = [(MOEngagementHistoryManager *)self stream_publisher];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = __105__MOEngagementHistoryManager_fetchSuggestionEngagementEventsWithTypes_fromStartDate_toEndDate_withError___block_invoke;
  v27[3] = &unk_10033E0F8;
  v15 = typesCopy;
  v28 = v15;
  v16 = dateCopy;
  v29 = v16;
  v17 = endDateCopy;
  v30 = v17;
  v18 = [stream_publisher filterWithIsIncluded:v27];

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = __105__MOEngagementHistoryManager_fetchSuggestionEngagementEventsWithTypes_fromStartDate_toEndDate_withError___block_invoke_2;
  v26[3] = &unk_100338B60;
  v26[4] = &v31;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = __105__MOEngagementHistoryManager_fetchSuggestionEngagementEventsWithTypes_fromStartDate_toEndDate_withError___block_invoke_484;
  v24[3] = &unk_10033E268;
  v19 = v13;
  v25 = v19;
  v20 = [v18 sinkWithCompletion:v26 receiveInput:v24];
  if (error)
  {
    *error = v32[5];
  }

  v21 = v25;
  v22 = v19;

  _Block_object_dispose(&v31, 8);

  return v22;
}

id __105__MOEngagementHistoryManager_fetchSuggestionEngagementEventsWithTypes_fromStartDate_toEndDate_withError___block_invoke(void *a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 suggestionEvent];

  if (v4)
  {
    v5 = a1[4];
    v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 type]);
    if ([v5 containsObject:v6])
    {
      v7 = [v4 timestamp];
      if ([v7 isOnOrAfter:a1[5]])
      {
        v8 = [v4 timestamp];
        v9 = [v8 isOnOrBefore:a1[6]];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __105__MOEngagementHistoryManager_fetchSuggestionEngagementEventsWithTypes_fromStartDate_toEndDate_withError___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [v3 error];

  if (v7)
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __105__MOEngagementHistoryManager_fetchSuggestionEngagementEventsWithTypes_fromStartDate_toEndDate_withError___block_invoke_2_cold_1();
    }
  }
}

void __105__MOEngagementHistoryManager_fetchSuggestionEngagementEventsWithTypes_fromStartDate_toEndDate_withError___block_invoke_484(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v5 = [v3 jsonDictionary];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
    v4 = v5;
  }
}

- (id)fetchSuggestionEngagementEventsFromAllDevicesWithTypes:(id)types fromStartDate:(id)date toEndDate:(id)endDate withError:(id *)error
{
  typesCopy = types;
  dateCopy = date;
  endDateCopy = endDate;
  v13 = objc_opt_new();
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__33;
  v39 = __Block_byref_object_dispose__33;
  v40 = 0;
  mergedStreamPublisher = [(MOEngagementHistoryManager *)self mergedStreamPublisher];

  if (mergedStreamPublisher)
  {
    mergedStreamPublisher2 = [(MOEngagementHistoryManager *)self mergedStreamPublisher];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = __119__MOEngagementHistoryManager_fetchSuggestionEngagementEventsFromAllDevicesWithTypes_fromStartDate_toEndDate_withError___block_invoke;
    v31[3] = &unk_10033E0F8;
    v32 = typesCopy;
    v33 = dateCopy;
    v34 = endDateCopy;
    v16 = [mergedStreamPublisher2 filterWithIsIncluded:v31];

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = __119__MOEngagementHistoryManager_fetchSuggestionEngagementEventsFromAllDevicesWithTypes_fromStartDate_toEndDate_withError___block_invoke_2;
    v30[3] = &unk_100338B60;
    v30[4] = &v35;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = __119__MOEngagementHistoryManager_fetchSuggestionEngagementEventsFromAllDevicesWithTypes_fromStartDate_toEndDate_withError___block_invoke_485;
    v28[3] = &unk_10033E268;
    v17 = v13;
    v29 = v17;
    v18 = [v16 sinkWithCompletion:v30 receiveInput:v28];
    v19 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      -[MOEngagementHistoryManager fetchSuggestionEngagementEventsFromAllDevicesWithTypes:fromStartDate:toEndDate:withError:].cold.1(buf, [v17 count], v19);
    }

    v20 = v32;
  }

  else
  {
    v21 = [NSError alloc];
    v41 = NSLocalizedDescriptionKey;
    v42 = @"Publisher is nil";
    v22 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v20 = [v21 initWithDomain:@"MOEngagementHistoryManager" code:0 userInfo:v22];

    v23 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [MOEngagementHistoryManager fetchSuggestionEngagementEventsFromAllDevicesWithTypes:fromStartDate:toEndDate:withError:];
    }

    if (error)
    {
      v24 = v20;
      *error = v20;
    }
  }

  if (error)
  {
    v25 = v36[5];
    if (v25)
    {
      *error = v25;
    }
  }

  v26 = v13;
  _Block_object_dispose(&v35, 8);

  return v26;
}

id __119__MOEngagementHistoryManager_fetchSuggestionEngagementEventsFromAllDevicesWithTypes_fromStartDate_toEndDate_withError___block_invoke(void *a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 suggestionEvent];

  if (v4)
  {
    v5 = a1[4];
    v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 type]);
    if ([v5 containsObject:v6])
    {
      v7 = [v4 timestamp];
      if ([v7 isOnOrAfter:a1[5]])
      {
        v8 = [v4 timestamp];
        v9 = [v8 isOnOrBefore:a1[6]];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __119__MOEngagementHistoryManager_fetchSuggestionEngagementEventsFromAllDevicesWithTypes_fromStartDate_toEndDate_withError___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [v3 error];

  if (v7)
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __119__MOEngagementHistoryManager_fetchSuggestionEngagementEventsFromAllDevicesWithTypes_fromStartDate_toEndDate_withError___block_invoke_2_cold_1();
    }
  }
}

void __119__MOEngagementHistoryManager_fetchSuggestionEngagementEventsFromAllDevicesWithTypes_fromStartDate_toEndDate_withError___block_invoke_485(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v5 = [v3 jsonDictionary];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
    v4 = v5;
  }
}

- (id)fetchAppEntryEngagementEventsWithTypes:(id)types fromStartDate:(id)date toEndDate:(id)endDate withError:(id *)error
{
  typesCopy = types;
  dateCopy = date;
  endDateCopy = endDate;
  v13 = objc_opt_new();
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__33;
  v35 = __Block_byref_object_dispose__33;
  v36 = 0;
  stream_publisher = [(MOEngagementHistoryManager *)self stream_publisher];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = __103__MOEngagementHistoryManager_fetchAppEntryEngagementEventsWithTypes_fromStartDate_toEndDate_withError___block_invoke;
  v27[3] = &unk_10033E0F8;
  v15 = typesCopy;
  v28 = v15;
  v16 = dateCopy;
  v29 = v16;
  v17 = endDateCopy;
  v30 = v17;
  v18 = [stream_publisher filterWithIsIncluded:v27];

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = __103__MOEngagementHistoryManager_fetchAppEntryEngagementEventsWithTypes_fromStartDate_toEndDate_withError___block_invoke_2;
  v26[3] = &unk_100338B60;
  v26[4] = &v31;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = __103__MOEngagementHistoryManager_fetchAppEntryEngagementEventsWithTypes_fromStartDate_toEndDate_withError___block_invoke_493;
  v24[3] = &unk_10033E268;
  v19 = v13;
  v25 = v19;
  v20 = [v18 sinkWithCompletion:v26 receiveInput:v24];
  if (error)
  {
    *error = v32[5];
  }

  v21 = v25;
  v22 = v19;

  _Block_object_dispose(&v31, 8);

  return v22;
}

id __103__MOEngagementHistoryManager_fetchAppEntryEngagementEventsWithTypes_fromStartDate_toEndDate_withError___block_invoke(void *a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 entryEvent];

  if (v4)
  {
    v5 = a1[4];
    v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 type]);
    if ([v5 containsObject:v6])
    {
      v7 = [v4 timestamp];
      if ([v7 isOnOrAfter:a1[5]])
      {
        v8 = [v4 timestamp];
        v9 = [v8 isOnOrBefore:a1[6]];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __103__MOEngagementHistoryManager_fetchAppEntryEngagementEventsWithTypes_fromStartDate_toEndDate_withError___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [v3 error];

  if (v7)
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __103__MOEngagementHistoryManager_fetchAppEntryEngagementEventsWithTypes_fromStartDate_toEndDate_withError___block_invoke_2_cold_1();
    }
  }
}

void __103__MOEngagementHistoryManager_fetchAppEntryEngagementEventsWithTypes_fromStartDate_toEndDate_withError___block_invoke_493(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v5 = [v3 jsonDictionary];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
    v4 = v5;
  }
}

- (id)fetchAppEntryEngagementEventsFromAllDevicesWithTypes:(id)types fromStartDate:(id)date toEndDate:(id)endDate withError:(id *)error
{
  typesCopy = types;
  dateCopy = date;
  endDateCopy = endDate;
  v13 = objc_opt_new();
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__33;
  v37 = __Block_byref_object_dispose__33;
  v38 = 0;
  mergedStreamPublisher = [(MOEngagementHistoryManager *)self mergedStreamPublisher];

  if (mergedStreamPublisher)
  {
    mergedStreamPublisher2 = [(MOEngagementHistoryManager *)self mergedStreamPublisher];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = __117__MOEngagementHistoryManager_fetchAppEntryEngagementEventsFromAllDevicesWithTypes_fromStartDate_toEndDate_withError___block_invoke;
    v29[3] = &unk_10033E0F8;
    v30 = typesCopy;
    v31 = dateCopy;
    v32 = endDateCopy;
    v16 = [mergedStreamPublisher2 filterWithIsIncluded:v29];

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = __117__MOEngagementHistoryManager_fetchAppEntryEngagementEventsFromAllDevicesWithTypes_fromStartDate_toEndDate_withError___block_invoke_2;
    v28[3] = &unk_100338B60;
    v28[4] = &v33;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = __117__MOEngagementHistoryManager_fetchAppEntryEngagementEventsFromAllDevicesWithTypes_fromStartDate_toEndDate_withError___block_invoke_494;
    v26[3] = &unk_10033E268;
    v27 = v13;
    v17 = [v16 sinkWithCompletion:v28 receiveInput:v26];

    v18 = v30;
  }

  else
  {
    v19 = [NSError alloc];
    v39 = NSLocalizedDescriptionKey;
    v40 = @"Publisher is nil";
    v20 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v18 = [v19 initWithDomain:@"MOEngagementHistoryManager" code:0 userInfo:v20];

    v21 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [MOEngagementHistoryManager fetchSuggestionEngagementEventsFromAllDevicesWithTypes:fromStartDate:toEndDate:withError:];
    }

    if (error)
    {
      v22 = v18;
      *error = v18;
    }
  }

  if (error)
  {
    v23 = v34[5];
    if (v23)
    {
      *error = v23;
    }
  }

  v24 = v13;
  _Block_object_dispose(&v33, 8);

  return v24;
}

id __117__MOEngagementHistoryManager_fetchAppEntryEngagementEventsFromAllDevicesWithTypes_fromStartDate_toEndDate_withError___block_invoke(void *a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 entryEvent];

  if (v4)
  {
    v5 = a1[4];
    v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 type]);
    if ([v5 containsObject:v6])
    {
      v7 = [v4 timestamp];
      if ([v7 isOnOrAfter:a1[5]])
      {
        v8 = [v4 timestamp];
        v9 = [v8 isOnOrBefore:a1[6]];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __117__MOEngagementHistoryManager_fetchAppEntryEngagementEventsFromAllDevicesWithTypes_fromStartDate_toEndDate_withError___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [v3 error];

  if (v7)
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __117__MOEngagementHistoryManager_fetchAppEntryEngagementEventsFromAllDevicesWithTypes_fromStartDate_toEndDate_withError___block_invoke_2_cold_1();
    }
  }
}

void __117__MOEngagementHistoryManager_fetchAppEntryEngagementEventsFromAllDevicesWithTypes_fromStartDate_toEndDate_withError___block_invoke_494(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v5 = [v3 jsonDictionary];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
    v4 = v5;
  }
}

- (void)writeEngagementLightStreamForRemoteDevicesWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Start writing engagement light data for remote devices", buf, 2u);
  }

  persistenceManager = [(MOBookmarkStore *)self->_bookmarkStore persistenceManager];
  availability = [persistenceManager availability];

  if (availability == 2)
  {
    bookmarkStore = self->_bookmarkStore;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __84__MOEngagementHistoryManager_writeEngagementLightStreamForRemoteDevicesWithHandler___block_invoke;
    v12[3] = &unk_10033B210;
    v12[4] = self;
    v13 = handlerCopy;
    [(MOBookmarkStore *)bookmarkStore removeExpiredBookmarkWithCompletionHandler:v12];
    v9 = v13;
LABEL_9:

    goto LABEL_10;
  }

  v10 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [MOEngagementHistoryManager writeEngagementLightStreamForRemoteDevicesWithHandler:];
  }

  if (handlerCopy)
  {
    v15 = NSLocalizedDescriptionKey;
    v16 = @"bookmark database is not available";
    v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v9 = [NSError errorWithDomain:@"MOErrorDomain" code:16 userInfo:v11];

    (*(handlerCopy + 2))(handlerCopy, v9);
    goto LABEL_9;
  }

LABEL_10:
}

void __84__MOEngagementHistoryManager_writeEngagementLightStreamForRemoteDevicesWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 40) + 16))();
    v4 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __84__MOEngagementHistoryManager_writeEngagementLightStreamForRemoteDevicesWithHandler___block_invoke_cold_1();
    }
  }

  else
  {
    v4 = objc_opt_new();
    v26 = 0;
    v5 = [v4 remoteDevicesWithError:&v26];
    v6 = v26;
    if (v6)
    {
      (*(*(a1 + 40) + 16))();
      v7 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __84__MOEngagementHistoryManager_writeEngagementLightStreamForRemoteDevicesWithHandler___block_invoke_cold_2();
      }
    }

    else if ([v5 count])
    {
      v8 = objc_opt_new();
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v18 = v5;
      v9 = v5;
      v10 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v23;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v23 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [*(*(&v22 + 1) + 8 * i) deviceIdentifier];
            [v8 addObject:v14];
          }

          v11 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v11);
      }

      v15 = *(a1 + 32);
      v16 = *(v15 + 64);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = __84__MOEngagementHistoryManager_writeEngagementLightStreamForRemoteDevicesWithHandler___block_invoke_496;
      v19[3] = &unk_1003377E0;
      v19[4] = v15;
      v20 = v9;
      v21 = *(a1 + 40);
      [v16 fetchBookmarksWithDeviceIDs:v8 CompletionHandler:v19];

      v5 = v18;
    }

    else
    {
      v17 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __84__MOEngagementHistoryManager_writeEngagementLightStreamForRemoteDevicesWithHandler___block_invoke_cold_3();
      }

      (*(*(a1 + 40) + 16))();
    }
  }
}

void __84__MOEngagementHistoryManager_writeEngagementLightStreamForRemoteDevicesWithHandler___block_invoke_496(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __84__MOEngagementHistoryManager_writeEngagementLightStreamForRemoteDevicesWithHandler___block_invoke_496_cold_1();
    }
  }

  else
  {
    v7 = a1[4];
    v8 = a1[5];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __84__MOEngagementHistoryManager_writeEngagementLightStreamForRemoteDevicesWithHandler___block_invoke_497;
    v9[3] = &unk_10033E400;
    v9[4] = v7;
    [v7 writeEngagementLightStreamForDevices:v8 storedBookmarks:a2 completionHandler:v9];
  }

  (*(a1[6] + 16))();
}

void __84__MOEngagementHistoryManager_writeEngagementLightStreamForRemoteDevicesWithHandler___block_invoke_2(id a1, NSError *a2, NSDictionary *a3)
{
  v3 = a2;
  if (v3)
  {
    v4 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __84__MOEngagementHistoryManager_writeEngagementLightStreamForRemoteDevicesWithHandler___block_invoke_2_cold_1();
    }
  }
}

- (void)writeEngagementLightStreamForDevices:(id)devices storedBookmarks:(id)bookmarks completionHandler:(id)handler
{
  devicesCopy = devices;
  bookmarksCopy = bookmarks;
  handlerCopy = handler;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__33;
  v36[4] = __Block_byref_object_dispose__33;
  v37 = objc_opt_new();
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__33;
  v34[4] = __Block_byref_object_dispose__33;
  v35 = 0;
  v8 = dispatch_group_create();
  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_create("com.apple.bookmark.update", v9);

  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v30 = 0u;
  obj = devicesCopy;
  v11 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v11)
  {
    v12 = *v31;
    do
    {
      v13 = 0;
      do
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v30 + 1) + 8 * v13);
        dispatch_group_enter(v8);
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = __101__MOEngagementHistoryManager_writeEngagementLightStreamForDevices_storedBookmarks_completionHandler___block_invoke;
        v25[3] = &unk_10033E450;
        v26 = v10;
        v28 = v36;
        v29 = v34;
        v27 = v8;
        [(MOEngagementHistoryManager *)self writeEngagementLightStreamForDevice:v14 storedBookmarks:bookmarksCopy handler:v25];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v11);
  }

  queue = [(MOEngagementHistoryManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __101__MOEngagementHistoryManager_writeEngagementLightStreamForDevices_storedBookmarks_completionHandler___block_invoke_508;
  block[3] = &unk_10033E478;
  v22 = handlerCopy;
  v23 = v36;
  v24 = v34;
  v16 = handlerCopy;
  dispatch_group_notify(v8, queue, block);

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v36, 8);
}

void __101__MOEngagementHistoryManager_writeEngagementLightStreamForDevices_storedBookmarks_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __101__MOEngagementHistoryManager_writeEngagementLightStreamForDevices_storedBookmarks_completionHandler___block_invoke_2;
  v10[3] = &unk_10033E428;
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 48);
  v8 = v6;
  v9 = v5;
  dispatch_sync(v7, v10);
  dispatch_group_leave(*(a1 + 40));
}

void __101__MOEngagementHistoryManager_writeEngagementLightStreamForDevices_storedBookmarks_completionHandler___block_invoke_2(void *a1)
{
  if (a1[4])
  {
    [*(*(a1[6] + 8) + 40) addObject:?];
  }

  if (a1[5])
  {
    v2 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __101__MOEngagementHistoryManager_writeEngagementLightStreamForDevices_storedBookmarks_completionHandler___block_invoke_2_cold_1(a1 + 5);
    }

    v3 = a1[5];
    v4 = (*(a1[7] + 8) + 40);

    objc_storeStrong(v4, v3);
  }
}

uint64_t __101__MOEngagementHistoryManager_writeEngagementLightStreamForDevices_storedBookmarks_completionHandler___block_invoke_508(void *a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(*(a1[5] + 8) + 40) count];
    v7 = 134217984;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Updated bookmarks count %lu", &v7, 0xCu);
  }

  v4 = *(*(a1[5] + 8) + 40);
  v5 = *(*(a1[6] + 8) + 40);
  return (*(a1[4] + 16))();
}

- (void)writeEngagementLightStreamForDevice:(id)device storedBookmarks:(id)bookmarks handler:(id)handler
{
  deviceCopy = device;
  bookmarksCopy = bookmarks;
  handlerCopy = handler;
  v11 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    deviceIdentifier = [deviceCopy deviceIdentifier];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = deviceIdentifier;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Write engagment light data for device: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__33;
  v33 = __Block_byref_object_dispose__33;
  v34 = objc_opt_new();
  v27 = 0;
  v28 = 0;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = __90__MOEngagementHistoryManager_writeEngagementLightStreamForDevice_storedBookmarks_handler___block_invoke;
  v26[3] = &unk_10033E4A0;
  v26[4] = &buf;
  v13 = [(MOEngagementHistoryManager *)self streamEngagementEventsFromSource:deviceCopy storedBookmarks:bookmarksCopy error:&v28 updatedBookmark:&v27 processEvent:v26];
  v14 = v28;
  v15 = v27;
  if (v13)
  {
    if ([*(*(&buf + 1) + 40) count])
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v16 = *(*(&buf + 1) + 40);
      v17 = [v16 countByEnumeratingWithState:&v22 objects:v29 count:16];
      if (v17)
      {
        v18 = *v23;
        do
        {
          v19 = 0;
          do
          {
            if (*v23 != v18)
            {
              objc_enumerationMutation(v16);
            }

            [(MOEngagementHistoryManager *)self writeEngagementLightDataBasedEngagementData:*(*(&v22 + 1) + 8 * v19) fromDevice:deviceCopy, v22];
            v19 = v19 + 1;
          }

          while (v17 != v19);
          v17 = [v16 countByEnumeratingWithState:&v22 objects:v29 count:16];
        }

        while (v17);
      }
    }

    v20 = 0;
    v21 = v15;
  }

  else
  {
    v21 = 0;
    v20 = v14;
  }

  handlerCopy[2](handlerCopy, v21, v20);

  _Block_object_dispose(&buf, 8);
}

void *__90__MOEngagementHistoryManager_writeEngagementLightStreamForDevice_storedBookmarks_handler___block_invoke(void *result, uint64_t a2)
{
  if (a2)
  {
    return [*(*(result[4] + 8) + 40) addObject:a2];
  }

  return result;
}

- (BOOL)streamEngagementEventsFromSource:(id)source storedBookmarks:(id)bookmarks error:(id *)error updatedBookmark:(id *)bookmark processEvent:(id)event
{
  sourceCopy = source;
  bookmarksCopy = bookmarks;
  eventCopy = event;
  v14 = BiomeLibrary();
  moments = [v14 Moments];
  events = [moments Events];
  engagement = [events Engagement];

  v18 = [engagement publisherForDevice:sourceCopy withUseCase:@"Moments"];
  deviceIdentifier = [sourceCopy deviceIdentifier];
  v20 = [(MOEngagementHistoryManager *)self getPriorBookmarkWithDeviceID:deviceIdentifier storedBookmarks:bookmarksCopy];

  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__33;
  v44 = __Block_byref_object_dispose__33;
  v45 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__33;
  v38 = __Block_byref_object_dispose__33;
  v21 = v20;
  v39 = v21;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = __114__MOEngagementHistoryManager_streamEngagementEventsFromSource_storedBookmarks_error_updatedBookmark_processEvent___block_invoke;
  v33[3] = &unk_10033E4C8;
  v33[4] = &v46;
  v33[5] = &v34;
  v33[6] = &v40;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = __114__MOEngagementHistoryManager_streamEngagementEventsFromSource_storedBookmarks_error_updatedBookmark_processEvent___block_invoke_2;
  v31[3] = &unk_10033E4F0;
  v22 = eventCopy;
  v32 = v22;
  v23 = [v18 sinkWithBookmark:v21 completion:v33 receiveInput:v31];
  if (error)
  {
    *error = v41[5];
  }

  v24 = *(v47 + 24);
  if (bookmark && (v47[3] & 1) != 0)
  {
    v25 = v35[5];
    deviceIdentifier2 = [sourceCopy deviceIdentifier];
    v27 = [(MOEngagementHistoryManager *)self updatedBookmarkWithNewBookMark:v25 deviceID:deviceIdentifier2];

    if (v27)
    {
      v28 = v27;
      *bookmark = v27;
    }

    v24 = *(v47 + 24);
  }

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);

  _Block_object_dispose(&v46, 8);
  return v24 & 1;
}

void __114__MOEngagementHistoryManager_streamEngagementEventsFromSource_storedBookmarks_error_updatedBookmark_processEvent___block_invoke(void *a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if ([v11 state])
  {
    if ([v11 state] != 1)
    {
      goto LABEL_6;
    }

    *(*(a1[4] + 8) + 24) = 0;
    v6 = [v11 error];
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    *(*(a1[4] + 8) + 24) = 1;
    v9 = *(a1[5] + 8);
    v10 = v5;
    v8 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

LABEL_6:
}

uint64_t __114__MOEngagementHistoryManager_streamEngagementEventsFromSource_storedBookmarks_error_updatedBookmark_processEvent___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = (*(*(a1 + 32) + 16))();
    v4 = v6;
  }

  return _objc_release_x1(v3, v4);
}

- (id)getPriorBookmarkWithDeviceID:(id)d storedBookmarks:(id)bookmarks
{
  dCopy = d;
  bookmarksCopy = bookmarks;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [bookmarksCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v20;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v20 != v11)
      {
        objc_enumerationMutation(bookmarksCopy);
      }

      v13 = *(*(&v19 + 1) + 8 * i);
      deviceIdentifier = [v13 deviceIdentifier];
      v15 = [deviceIdentifier compare:dCopy];

      if (!v15)
      {
        v16 = v13;

        v10 = v16;
      }
    }

    v9 = [bookmarksCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v9);
  if (v10)
  {
    v17 = [(MOEngagementHistoryManager *)self convertBookmark:v10];
  }

  else
  {
LABEL_12:
    v17 = 0;
  }

  return v17;
}

- (id)getStoreBookmarksForDeviceIDs:(id)ds
{
  dsCopy = ds;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__33;
  v19 = __Block_byref_object_dispose__33;
  v20 = objc_opt_new();
  v5 = dispatch_semaphore_create(0);
  bookmarkStore = self->_bookmarkStore;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __60__MOEngagementHistoryManager_getStoreBookmarksForDeviceIDs___block_invoke;
  v14[3] = &unk_100337E98;
  v14[4] = &v15;
  [(MOBookmarkStore *)bookmarkStore fetchBookmarksWithDeviceIDs:dsCopy CompletionHandler:v14];
  v7 = [NSString stringWithFormat:@"%@ - [%s] - %d - %s", @"MOSemaphoreWait", "/Library/Caches/com.apple.xbs/Sources/Moments/momentsd/EngagementMetrics/MOEngagementHistoryManager.m", 1858, "[MOEngagementHistoryManager getStoreBookmarksForDeviceIDs:]"];
  v13 = 0;
  v8 = MOSemaphoreWaitAndFaultIfTimeout_Internal(v5, &v13, v7, 30.0);
  v9 = v13;
  if (!v8)
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __50__MOUserData__fetchUserDataWithCompletionHandler___block_invoke_cold_1();
    }
  }

  v11 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v11;
}

void __60__MOEngagementHistoryManager_getStoreBookmarksForDeviceIDs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __60__MOEngagementHistoryManager_getStoreBookmarksForDeviceIDs___block_invoke_cold_1();
    }
  }

  else if ([v5 count])
  {
    [*(*(*(a1 + 32) + 8) + 40) addObjectsFromArray:v5];
  }
}

- (id)updatedBookmarkWithNewBookMark:(id)mark deviceID:(id)d
{
  dCopy = d;
  v14 = 0;
  v6 = [NSKeyedArchiver archivedDataWithRootObject:mark requiringSecureCoding:0 error:&v14];
  v7 = v14;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (v8)
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MOEngagementHistoryManager updatedBookmarkWithNewBookMark:v7 deviceID:?];
    }

    v12 = 0;
  }

  else
  {
    v9 = [MOBookmarkForBiomeStream alloc];
    v10 = +[NSUUID UUID];
    v11 = +[NSDate now];
    v12 = [(MOBookmarkForBiomeStream *)v9 initWithIdentifier:v10 creationDate:v11 deviceIdentifier:dCopy data:v6];
  }

  return v12;
}

- (id)convertBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  v4 = +[NSCoder bm_allowedClassesForSecureCodingBMBookmark];
  data = [bookmarkCopy data];

  v12 = 0;
  v6 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v4 fromData:data error:&v12];
  v7 = v12;

  v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
  v9 = v8;
  if (v7 || !v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MOEngagementHistoryManager convertBookmark:v7];
    }

    v10 = 0;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [MOEngagementHistoryManager convertBookmark:];
    }

    v10 = v6;
  }

  return v10;
}

- (void)writeEngagementLightDataBasedEngagementData:(id)data fromDevice:(id)device
{
  v5 = [(MOEngagementHistoryManager *)self engagementLightFromEngagement:data fromDevice:device];
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [MOEngagementHistoryManager writeEngagementLightDataBasedEngagementData:fromDevice:];
  }

  if (v5)
  {
    stream_source_light = [(MOEngagementHistoryManager *)self stream_source_light];
    [stream_source_light sendEvent:v5];
  }
}

- (id)engagementLightFromEngagement:(id)engagement fromDevice:(id)device
{
  engagementCopy = engagement;
  deviceCopy = device;
  if (deviceCopy)
  {
    v7 = 0;
  }

  else
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Write engagment light data for local device", buf, 2u);
    }

    v7 = 1;
  }

  if ([deviceCopy platform] == 2)
  {
    v9 = 1;
  }

  else if ([deviceCopy platform] == 1)
  {
    v9 = 2;
  }

  else if ([deviceCopy platform] == 3 || objc_msgSend(deviceCopy, "platform") == 4)
  {
    v9 = 3;
  }

  else if ([deviceCopy platform] == 8)
  {
    v9 = 4;
  }

  else if ([deviceCopy platform] == 6)
  {
    v9 = 5;
  }

  else
  {
    v9 = v7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    suggestionEvent = [engagementCopy suggestionEvent];

    if (suggestionEvent)
    {
      suggestionEvent2 = [engagementCopy suggestionEvent];
      fullBundleOrderedSet = [suggestionEvent2 fullBundleOrderedSet];
      firstObject = [fullBundleOrderedSet firstObject];

      if (firstObject)
      {
        v14 = [BMMomentsEngagementLightSuggestionIdentifier alloc];
        identifier = [firstObject identifier];
        bundleId = [identifier bundleId];
        identifier2 = [firstObject identifier];
        [identifier2 suggestionId];
        v18 = v56 = engagementCopy;
        v19 = [v14 initWithBundleId:bundleId suggestionId:v18];

        v20 = [BMMomentsEngagementLightBundleSummary alloc];
        bundleInterfaceType = [firstObject bundleInterfaceType];
        bundleEvergreenType = [firstObject bundleEvergreenType];
        [firstObject bundleGoodnessScore];
        v23 = [NSNumber numberWithDouble:?];
        v24 = [v20 initWithIdentifier:v19 bundleInterfaceType:bundleInterfaceType bundleEvergreenType:bundleEvergreenType bundleGoodnessScore:v23];

        type = [suggestionEvent2 type];
        v25 = [BMMomentsEngagementLightSuggestionEvent alloc];
        timestamp = [suggestionEvent2 timestamp];
        v64 = v24;
        [NSArray arrayWithObjects:&v64 count:1];
        v28 = v27 = v9;
        [suggestionEvent2 clientIdentifier];
        v29 = v54 = firstObject;
        viewContainerName = [suggestionEvent2 viewContainerName];
        v31 = [v25 initWithType:type timestamp:timestamp fullBundleOrderedSet:v28 clientIdentifier:v29 viewContainerName:viewContainerName deviceType:v27];

        engagementCopy = v56;
        v32 = [[BMMomentsEngagementLight alloc] initWithSuggestionEvent:v31 entryEvent:0];

        identifier3 = v54;
LABEL_32:

        goto LABEL_34;
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    entryEvent = [engagementCopy entryEvent];

    if (entryEvent)
    {
      v53 = v9;
      suggestionEvent2 = [engagementCopy entryEvent];
      type2 = [suggestionEvent2 type];
      identifier3 = [suggestionEvent2 identifier];
      v19 = objc_opt_new();
      if ([identifier3 count])
      {
        v50 = suggestionEvent2;
        v55 = identifier3;
        v57 = engagementCopy;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v35 = identifier3;
        v36 = [v35 countByEnumeratingWithState:&v58 objects:v63 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v59;
          do
          {
            for (i = 0; i != v37; i = i + 1)
            {
              if (*v59 != v38)
              {
                objc_enumerationMutation(v35);
              }

              v40 = *(*(&v58 + 1) + 8 * i);
              v41 = [BMMomentsEngagementLightSuggestionIdentifier alloc];
              bundleId2 = [v40 bundleId];
              suggestionId = [v40 suggestionId];
              v44 = [v41 initWithBundleId:bundleId2 suggestionId:suggestionId];

              if (v44)
              {
                [v19 addObject:v44];
              }
            }

            v37 = [v35 countByEnumeratingWithState:&v58 objects:v63 count:16];
          }

          while (v37);
        }

        identifier3 = v55;
        engagementCopy = v57;
        suggestionEvent2 = v50;
      }

      v45 = [BMMomentsEngagementLightAppEntryEvent alloc];
      clientIdentifier = [suggestionEvent2 clientIdentifier];
      timestamp2 = [suggestionEvent2 timestamp];
      v48 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [suggestionEvent2 addedCharacters] > 0);
      v24 = [v45 initWithType:type2 clientIdentifier:clientIdentifier timestamp:timestamp2 identifier:v19 deviceType:v53 hasText:v48];

      v32 = [[BMMomentsEngagementLight alloc] initWithSuggestionEvent:0 entryEvent:v24];
      goto LABEL_32;
    }
  }

  v32 = 0;
LABEL_34:

  return v32;
}

- (void)writeEngagementLightStreamForLocalDevicesWithHandler:(id)handler
{
  handlerCopy = handler;
  v50 = 0;
  v5 = [(MOEngagementHistoryManager *)self momentsEngagmentDataFromLocalDeviceWithError:&v50];
  v6 = v50;
  v49 = 0;
  v7 = [(MOEngagementHistoryManager *)self momentsEngagmentLightDataFromLocalDeviceWithError:&v49];
  v8 = v49;
  v9 = v8;
  if (v6 | v8)
  {
    if (v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = v8;
    }

    v11 = v10;
    v12 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [MOEngagementHistoryManager writeEngagementLightStreamForLocalDevicesWithHandler:];
    }

    v13 = v11;
LABEL_40:

    goto LABEL_41;
  }

  v13 = objc_opt_new();
  allKeys = [v7 allKeys];
  if (![allKeys count])
  {
    allKeys2 = [v5 allKeys];
    v16 = [allKeys2 count];

    if (!v16)
    {
      goto LABEL_14;
    }

    v17 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "There is no engagement light data", buf, 2u);
    }

    allKeys = [v5 allKeys];
    [v13 addObjectsFromArray:allKeys];
  }

LABEL_14:
  allKeys3 = [v7 allKeys];
  if ([allKeys3 count])
  {
    allKeys4 = [v5 allKeys];
    v20 = [allKeys4 count];

    if (!v20)
    {
      goto LABEL_20;
    }

    v21 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "There is some engagement light data", buf, 2u);
    }

    allKeys5 = [v7 allKeys];
    allKeys3 = [NSSet setWithArray:allKeys5];

    v23 = objc_opt_new();
    allKeys6 = [v5 allKeys];
    [v23 addObjectsFromArray:allKeys6];

    [v23 minusSet:allKeys3];
    allObjects = [v23 allObjects];
    [v13 addObjectsFromArray:allObjects];
  }

LABEL_20:
  if ([v13 count])
  {
    v26 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Start to copy engagement data to engagementlight data for local device", buf, 2u);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v12 = v13;
    v27 = [v12 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v27)
    {
      v28 = v27;
      v36 = v7;
      v37 = v9;
      v38 = v6;
      v39 = handlerCopy;
      v29 = *v45;
      do
      {
        v30 = 0;
        do
        {
          if (*v45 != v29)
          {
            objc_enumerationMutation(v12);
          }

          v31 = [v5 objectForKey:{*(*(&v44 + 1) + 8 * v30), v36, v37, v38, v39}];
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v32 = [v31 countByEnumeratingWithState:&v40 objects:v51 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v41;
            do
            {
              v35 = 0;
              do
              {
                if (*v41 != v34)
                {
                  objc_enumerationMutation(v31);
                }

                [(MOEngagementHistoryManager *)self writeEngagementLightDataBasedEngagementData:*(*(&v40 + 1) + 8 * v35) fromDevice:0];
                v35 = v35 + 1;
              }

              while (v33 != v35);
              v33 = [v31 countByEnumeratingWithState:&v40 objects:v51 count:16];
            }

            while (v33);
          }

          v30 = v30 + 1;
        }

        while (v30 != v28);
        v28 = [v12 countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v28);
      v11 = 0;
      v13 = v12;
      v6 = v38;
      handlerCopy = v39;
      v7 = v36;
      v9 = v37;
    }

    else
    {
      v11 = 0;
      v13 = v12;
    }

    goto LABEL_40;
  }

  v11 = 0;
LABEL_41:
  handlerCopy[2](handlerCopy, v11);
}

- (id)momentsEngagmentDataFromLocalDeviceWithError:(id *)error
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__33;
  v25 = __Block_byref_object_dispose__33;
  v26 = objc_opt_new();
  v5 = [(BMBookmarkablePublisher *)self->_stream_publisher filterWithIsIncluded:&__block_literal_global_529];
  v6 = objc_opt_new();
  v7 = [v5 reduceWithInitial:v6 nextPartialResult:&__block_literal_global_532];

  v18 = 0;
  v19[0] = &v18;
  v19[1] = 0x3032000000;
  v19[2] = __Block_byref_object_copy__33;
  v19[3] = __Block_byref_object_dispose__33;
  v20 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = __75__MOEngagementHistoryManager_momentsEngagmentDataFromLocalDeviceWithError___block_invoke_3;
  v17[3] = &unk_100338B60;
  v17[4] = &v18;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __75__MOEngagementHistoryManager_momentsEngagmentDataFromLocalDeviceWithError___block_invoke_4;
  v16[3] = &unk_100338B88;
  v16[4] = &v21;
  v8 = [v7 sinkWithCompletion:v17 receiveInput:v16];
  v9 = *(v19[0] + 40);
  if (v9)
  {
    *error = v9;
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MOEngagementHistoryManager momentsEngagmentDataFromLocalDeviceWithError:v19];
    }
  }

  v11 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    allKeys = [v22[5] allKeys];
    v13 = [allKeys count];
    *buf = 134217984;
    v28 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "fetch engagement data from local device, data count %lu", buf, 0xCu);
  }

  v14 = v22[5];
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v21, 8);

  return v14;
}

BOOL __75__MOEngagementHistoryManager_momentsEngagmentDataFromLocalDeviceWithError___block_invoke(id a1, BMStoreEvent *a2)
{
  v2 = a2;
  v3 = [(BMStoreEvent *)v2 eventBody];
  v4 = [v3 suggestionEvent];

  v5 = [(BMStoreEvent *)v2 eventBody];

  v6 = [v5 entryEvent];

  v7 = [v4 timestamp];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v9 = [v6 timestamp];
    v8 = v9 != 0;
  }

  return v8;
}

NSMutableDictionary *__cdecl __75__MOEngagementHistoryManager_momentsEngagmentDataFromLocalDeviceWithError___block_invoke_2(id a1, NSMutableDictionary *a2, BMStoreEvent *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(BMStoreEvent *)v5 eventBody];
  v7 = [v6 suggestionEvent];

  v8 = [(BMStoreEvent *)v5 eventBody];
  v9 = [v8 entryEvent];

  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v10 timestamp];
  v12 = [(NSMutableDictionary *)v4 objectForKeyedSubscript:v11];

  if (v12)
  {
    v13 = [(NSMutableDictionary *)v4 objectForKeyedSubscript:v11];
    v14 = [(BMStoreEvent *)v5 eventBody];
    [v13 addObject:v14];
  }

  else
  {
    v15 = [NSMutableArray alloc];
    v13 = [(BMStoreEvent *)v5 eventBody];
    v14 = [v15 initWithObjects:{v13, 0}];
    [(NSMutableDictionary *)v4 setObject:v14 forKeyedSubscript:v11];
  }

  return v4;
}

uint64_t __75__MOEngagementHistoryManager_momentsEngagmentDataFromLocalDeviceWithError___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1(v3, v5);
}

- (id)momentsEngagmentLightDataFromLocalDeviceWithError:(id *)error
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__33;
  v25 = __Block_byref_object_dispose__33;
  v26 = objc_opt_new();
  v5 = [(BMBookmarkablePublisher *)self->_stream_publisher_light filterWithIsIncluded:&__block_literal_global_535];
  v6 = objc_opt_new();
  v7 = [v5 reduceWithInitial:v6 nextPartialResult:&__block_literal_global_537];

  v18 = 0;
  v19[0] = &v18;
  v19[1] = 0x3032000000;
  v19[2] = __Block_byref_object_copy__33;
  v19[3] = __Block_byref_object_dispose__33;
  v20 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = __80__MOEngagementHistoryManager_momentsEngagmentLightDataFromLocalDeviceWithError___block_invoke_3;
  v17[3] = &unk_100338B60;
  v17[4] = &v18;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __80__MOEngagementHistoryManager_momentsEngagmentLightDataFromLocalDeviceWithError___block_invoke_4;
  v16[3] = &unk_100338B88;
  v16[4] = &v21;
  v8 = [v7 sinkWithCompletion:v17 receiveInput:v16];
  v9 = *(v19[0] + 40);
  if (v9)
  {
    *error = v9;
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MOEngagementHistoryManager momentsEngagmentLightDataFromLocalDeviceWithError:v19];
    }
  }

  v11 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    allKeys = [v22[5] allKeys];
    v13 = [allKeys count];
    *buf = 134217984;
    v28 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "fetch engagement light data from local device, data count %lu", buf, 0xCu);
  }

  v14 = v22[5];
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v21, 8);

  return v14;
}

BOOL __80__MOEngagementHistoryManager_momentsEngagmentLightDataFromLocalDeviceWithError___block_invoke(id a1, BMStoreEvent *a2)
{
  v2 = a2;
  v3 = [(BMStoreEvent *)v2 eventBody];
  v4 = [v3 suggestionEvent];

  v5 = [(BMStoreEvent *)v2 eventBody];

  v6 = [v5 entryEvent];

  v7 = [v4 timestamp];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v9 = [v6 timestamp];
    v8 = v9 != 0;
  }

  return v8;
}

NSMutableDictionary *__cdecl __80__MOEngagementHistoryManager_momentsEngagmentLightDataFromLocalDeviceWithError___block_invoke_2(id a1, NSMutableDictionary *a2, BMStoreEvent *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(BMStoreEvent *)v5 eventBody];
  v7 = [v6 suggestionEvent];

  v8 = [(BMStoreEvent *)v5 eventBody];
  v9 = [v8 entryEvent];

  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v10 timestamp];
  v12 = [(NSMutableDictionary *)v4 objectForKeyedSubscript:v11];

  if (v12)
  {
    v13 = [(NSMutableDictionary *)v4 objectForKeyedSubscript:v11];
    v14 = [(BMStoreEvent *)v5 eventBody];
    [v13 addObject:v14];
  }

  else
  {
    v15 = [NSMutableArray alloc];
    v13 = [(BMStoreEvent *)v5 eventBody];
    v14 = [v15 initWithObjects:{v13, 0}];
    [(NSMutableDictionary *)v4 setObject:v14 forKeyedSubscript:v11];
  }

  return v4;
}

uint64_t __80__MOEngagementHistoryManager_momentsEngagmentLightDataFromLocalDeviceWithError___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1(v3, v5);
}

- (void)updateEngagementLightStreamWithRefreshVariant:(unint64_t)variant handler:(id)handler
{
  handlerCopy = handler;
  configurationManager = [(MOEngagementHistoryManager *)self configurationManager];
  v8 = [configurationManager getBoolSettingForKey:@"EngagementBiomeStreamMigrationComplete" withFallback:0];

  if (variant == 512 || variant == 1280 || variant == 768)
  {
    if ((v8 & 1) == 0)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = __84__MOEngagementHistoryManager_updateEngagementLightStreamWithRefreshVariant_handler___block_invoke;
      v15[3] = &unk_10033B560;
      v15[4] = self;
      v16 = handlerCopy;
      [(MOEngagementHistoryManager *)self writeEngagementLightStreamForRemoteDevicesWithHandler:v15];
      v9 = v16;
LABEL_11:

      goto LABEL_15;
    }
  }

  else if (!v8)
  {
    goto LABEL_12;
  }

  if ((variant | 0x100) == 0x300)
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Skip Engagement data migration as it is complete", buf, 2u);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __84__MOEngagementHistoryManager_updateEngagementLightStreamWithRefreshVariant_handler___block_invoke_541;
    v12[3] = &unk_10033B2D8;
    v13 = handlerCopy;
    [(MOEngagementHistoryManager *)self writeEngagementLightStreamForRemoteDevicesWithHandler:v12];
    v9 = v13;
    goto LABEL_11;
  }

LABEL_12:
  v11 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Skip Engagement data migration and update as conditions are not met", buf, 2u);
  }

  (*(handlerCopy + 2))(handlerCopy, 0);
LABEL_15:
}

void __84__MOEngagementHistoryManager_updateEngagementLightStreamWithRefreshVariant_handler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __84__MOEngagementHistoryManager_updateEngagementLightStreamWithRefreshVariant_handler___block_invoke_2;
  v2[3] = &unk_10033B560;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 writeEngagementLightStreamForLocalDevicesWithHandler:v2];
}

void __84__MOEngagementHistoryManager_updateEngagementLightStreamWithRefreshVariant_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __84__MOEngagementHistoryManager_updateEngagementLightStreamWithRefreshVariant_handler___block_invoke_2_cold_1();
    }
  }

  else
  {
    v5 = [*(a1 + 32) configurationManager];
    v6 = [v5 fDefaultsManager];
    [v6 setObject:&__kCFBooleanTrue forKey:@"EngagementBiomeStreamMigrationComplete"];

    v4 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Engagement data migration is complete", v7, 2u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (id)fetchSuggestionEngagementLightEventsWithTypes:(id)types fromStartDate:(id)date toEndDate:(id)endDate withError:(id *)error
{
  typesCopy = types;
  dateCopy = date;
  endDateCopy = endDate;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__33;
  v39 = __Block_byref_object_dispose__33;
  v40 = objc_opt_new();
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__33;
  v33 = __Block_byref_object_dispose__33;
  v34 = 0;
  stream_publisher_light = [(MOEngagementHistoryManager *)self stream_publisher_light];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = __110__MOEngagementHistoryManager_fetchSuggestionEngagementLightEventsWithTypes_fromStartDate_toEndDate_withError___block_invoke;
  v25[3] = &unk_10033E0F8;
  v14 = typesCopy;
  v26 = v14;
  v15 = dateCopy;
  v27 = v15;
  v16 = endDateCopy;
  v28 = v16;
  v17 = [stream_publisher_light filterWithIsIncluded:v25];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = __110__MOEngagementHistoryManager_fetchSuggestionEngagementLightEventsWithTypes_fromStartDate_toEndDate_withError___block_invoke_2;
  v24[3] = &unk_100338B60;
  v24[4] = &v29;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __110__MOEngagementHistoryManager_fetchSuggestionEngagementLightEventsWithTypes_fromStartDate_toEndDate_withError___block_invoke_3;
  v23[3] = &unk_10033D548;
  v23[4] = &v35;
  v18 = [v17 sinkWithCompletion:v24 receiveInput:v23];
  if (error)
  {
    *error = v30[5];
  }

  v19 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [v36[5] count];
    *buf = 134217984;
    v42 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "fetched %lu suggestion event from engagement light stream", buf, 0xCu);
  }

  v21 = v36[5];
  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v35, 8);

  return v21;
}

BOOL __110__MOEngagementHistoryManager_fetchSuggestionEngagementLightEventsWithTypes_fromStartDate_toEndDate_withError___block_invoke(void *a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 suggestionEvent];

  if (v4)
  {
    v5 = a1[4];
    v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 type]);
    if ([v5 containsObject:v6])
    {
      v7 = [v4 timestamp];
      [v7 timeIntervalSinceDate:a1[5]];
      if (v8 >= 0.0)
      {
        v10 = [v4 timestamp];
        [v10 timeIntervalSinceDate:a1[6]];
        v9 = v11 < 0.0;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __110__MOEngagementHistoryManager_fetchSuggestionEngagementLightEventsWithTypes_fromStartDate_toEndDate_withError___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1(v3, v5);
}

void __110__MOEngagementHistoryManager_fetchSuggestionEngagementLightEventsWithTypes_fromStartDate_toEndDate_withError___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v5 = [v3 jsonDictionary];

  v4 = v5;
  if (v5)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
    v4 = v5;
  }
}

- (id)fetchAppEntryEngagementLightEventsWithTypes:(id)types fromStartDate:(id)date toEndDate:(id)endDate withError:(id *)error
{
  typesCopy = types;
  dateCopy = date;
  endDateCopy = endDate;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__33;
  v39 = __Block_byref_object_dispose__33;
  v40 = objc_opt_new();
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__33;
  v33 = __Block_byref_object_dispose__33;
  v34 = 0;
  stream_publisher_light = [(MOEngagementHistoryManager *)self stream_publisher_light];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = __108__MOEngagementHistoryManager_fetchAppEntryEngagementLightEventsWithTypes_fromStartDate_toEndDate_withError___block_invoke;
  v25[3] = &unk_10033E0F8;
  v14 = typesCopy;
  v26 = v14;
  v15 = dateCopy;
  v27 = v15;
  v16 = endDateCopy;
  v28 = v16;
  v17 = [stream_publisher_light filterWithIsIncluded:v25];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = __108__MOEngagementHistoryManager_fetchAppEntryEngagementLightEventsWithTypes_fromStartDate_toEndDate_withError___block_invoke_2;
  v24[3] = &unk_100338B60;
  v24[4] = &v29;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __108__MOEngagementHistoryManager_fetchAppEntryEngagementLightEventsWithTypes_fromStartDate_toEndDate_withError___block_invoke_3;
  v23[3] = &unk_10033D548;
  v23[4] = &v35;
  v18 = [v17 sinkWithCompletion:v24 receiveInput:v23];
  if (error)
  {
    *error = v30[5];
  }

  v19 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [v36[5] count];
    *buf = 134217984;
    v42 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "fetched %lu entry event from engagement light stream", buf, 0xCu);
  }

  v21 = v36[5];
  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v35, 8);

  return v21;
}

BOOL __108__MOEngagementHistoryManager_fetchAppEntryEngagementLightEventsWithTypes_fromStartDate_toEndDate_withError___block_invoke(void *a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 entryEvent];

  if (v4)
  {
    v5 = a1[4];
    v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 type]);
    if ([v5 containsObject:v6])
    {
      v7 = [v4 timestamp];
      [v7 timeIntervalSinceDate:a1[5]];
      if (v8 >= 0.0)
      {
        v10 = [v4 timestamp];
        [v10 timeIntervalSinceDate:a1[6]];
        v9 = v11 < 0.0;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __108__MOEngagementHistoryManager_fetchAppEntryEngagementLightEventsWithTypes_fromStartDate_toEndDate_withError___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1(v3, v5);
}

void __108__MOEngagementHistoryManager_fetchAppEntryEngagementLightEventsWithTypes_fromStartDate_toEndDate_withError___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v5 = [v3 jsonDictionary];

  v4 = v5;
  if (v5)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
    v4 = v5;
  }
}

- (void)initWithUniverse:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_13(&_mh_execute_header, v2, v3, "[MOEngagementHistoryManager.initWithUniverse] Can't fetch remote devices for Engagement stream(error= %@). Setting mergedStreamPublisher to nil.", v4, v5, v6, v7, v8);
}

- (void)initWithUniverse:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getBMBundleSumaryForBundle:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)didAppEntryEventPosted:(os_log_t)log withBundles:timestamp:duringInterval:withInfo:withTrialExperimentIDs:withOnboardingStatus:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "didAppEntryEventPosted: Ignoring invalid bundle (no id)", buf, 2u);
}

- (void)submitSuggestionEngagementEventAnalyticsFor:(unsigned __int8 *)a1 suggestionEngagementType:(uint64_t)a2 timestamp:withContext:onboardingStatus:AndTrialExperimentIDs:.cold.1(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v8 = [NSNumber numberWithUnsignedInteger:a2];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

- (void)updateBundle:forSuggestionEvent:withSummary:.cold.1()
{
  OUTLINED_FUNCTION_2_3();
  [OUTLINED_FUNCTION_6_1(v1 v2)];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_5_2() bundleIdentifier];
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)updateBundle:(void *)a1 forSuggestionEvent:withSummary:.cold.25(void *a1)
{
  [a1 type];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

- (void)updateBundle:forAppEntryEvent:.cold.1()
{
  OUTLINED_FUNCTION_2_3();
  [OUTLINED_FUNCTION_6_1(v1 v2)];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_5_2() bundleIdentifier];
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)updateBundle:(void *)a1 forAppEntryEvent:.cold.6(void *a1)
{
  [a1 type];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void __119__MOEngagementHistoryManager_getInterfaceTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke_3_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v1, v2, "Couldn't sink suggestionIDs for suggestion sheet events %@'", v3, v4, v5, v6, v7);
}

void __119__MOEngagementHistoryManager_getInterfaceTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke_4_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v1, v2, "Couldn't count engagement by inteface type for '%@'", v3, v4, v5, v6, v7);
}

void __119__MOEngagementHistoryManager_getEvergreenTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke_3_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v1, v2, "Couldn't count engagement for inteface type for '%@'", v3, v4, v5, v6, v7);
}

void __119__MOEngagementHistoryManager_getEvergreenTypeCountForSuggestionEngagmentEvent_from_to_onceForEachBundle_skipForEvents___block_invoke_4_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v1, v2, "Couldn't count engagement by evergreen type for '%@'", v3, v4, v5, v6, v7);
}

void __177__MOEngagementHistoryManager_getInterfaceTypeCountForAppEntryEvent_withMinAddedCharacterCount_andMaxAddedCharacterCount_fromStartDate_toEndDate_onceForEachBundle_skipForEvents___block_invoke_4_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __177__MOEngagementHistoryManager_getEvergreenTypeCountForAppEntryEvent_withMinAddedCharacterCount_andMaxAddedCharacterCount_fromStartDate_toEndDate_onceForEachBundle_skipForEvents___block_invoke_3_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v1, v2, "Couldn't count evergreen type for app entry engagement type '%@'", v3, v4, v5, v6, v7);
}

void __177__MOEngagementHistoryManager_getEvergreenTypeCountForAppEntryEvent_withMinAddedCharacterCount_andMaxAddedCharacterCount_fromStartDate_toEndDate_onceForEachBundle_skipForEvents___block_invoke_4_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)eventBundleStore:(uint64_t)a1 needsEngagementInfoForBundles:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_2_1(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_1_13(&_mh_execute_header, v5, v6, "Invalid suggestionID for bundleIdentifier '%@'");
}

- (void)eventBundleStore:(uint64_t)a1 needsEngagementInfoForBundles:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_2_1(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_1_13(&_mh_execute_header, v5, v6, "No suggestionID for bundleIdentifier '%@'");
}

- (void)eventBundleStore:needsEngagementInfoForBundles:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __77__MOEngagementHistoryManager_eventBundleStore_needsEngagementInfoForBundles___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __77__MOEngagementHistoryManager_eventBundleStore_needsEngagementInfoForBundles___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fetchSuggestionEngagementEventsFromAllDevicesWithTypes:(os_log_t)log fromStartDate:toEndDate:withError:.cold.1(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[fetchSuggestionEngagementEventsFromAllDevicesWithTypes] fetched %lu engagement events", buf, 0xCu);
}

- (void)fetchSuggestionEngagementEventsFromAllDevicesWithTypes:fromStartDate:toEndDate:withError:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)writeEngagementLightStreamForRemoteDevicesWithHandler:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __84__MOEngagementHistoryManager_writeEngagementLightStreamForRemoteDevicesWithHandler___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __101__MOEngagementHistoryManager_writeEngagementLightStreamForDevices_storedBookmarks_completionHandler___block_invoke_2_cold_1(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v2, v3, "write engagement light stream hit error %@", v4, v5, v6, v7, v8);
}

- (void)updatedBookmarkWithNewBookMark:(void *)a1 deviceID:.cold.1(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_13(&_mh_execute_header, v2, v3, "Failed to serialize bookmark, error: %@", v4, v5, v6, v7, v8);
}

- (void)convertBookmark:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_13(&_mh_execute_header, v2, v3, "Failed to deserialize bookmark, error: %@", v4, v5, v6, v7, v8);
}

- (void)momentsEngagmentDataFromLocalDeviceWithError:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = *(*a1 + 40);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v2, v3, "fetch engagement data hit error %@", v4, v5, v6, v7, v8);
}

- (void)momentsEngagmentLightDataFromLocalDeviceWithError:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = *(*a1 + 40);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v2, v3, "fetch engagement light data hit error %@", v4, v5, v6, v7, v8);
}

@end