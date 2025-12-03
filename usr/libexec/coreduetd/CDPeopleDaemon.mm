@interface CDPeopleDaemon
+ (BOOL)writeRepopulationCheckpoint:(id)checkpoint;
+ (id)machServiceName;
+ (id)readRepopulationCheckpoint;
- (BOOL)adjustPosixPermissionsForStorage:(id)storage;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)requestInteractionRepopulation;
- (BOOL)versionCheckAndUpgradeIfNecessaryAndPossible;
- (CDPeopleDaemon)initWithKnowledgeStore:(id)store;
- (CDPeopleDaemon)initWithKnowledgeStore:(id)store interactionStore:(id)interactionStore;
- (CDPeopleDaemon)initWithUserKnowledgeStore:(id)store;
- (int64_t)readVersionNumberFromDefaults;
- (void)_maintainPrivacy;
- (void)adviseInteractionsForDate:(id)date usingSettings:(id)settings reply:(id)reply;
- (void)adviseInteractionsForKeywordsInString:(id)string usingSettings:(id)settings reply:(id)reply;
- (void)adviseInteractionsUsingSettings:(id)settings reply:(id)reply;
- (void)adviseSocialInteractionsForDate:(id)date andSeedContacts:(id)contacts usingSettings:(id)settings reply:(id)reply;
- (void)autocompleteSearchResultsWithPredictionContext:(id)context reply:(id)reply;
- (void)candidatesForShareSheetRanking:(id)ranking;
- (void)contactSuggestionsWithMaxSuggestions:(id)suggestions excludedContactIds:(id)ids reply:(id)reply;
- (void)countContactsUsingPredicate:(id)predicate reply:(id)reply;
- (void)countInteractionsUsingPredicate:(id)predicate reply:(id)reply;
- (void)deleteInteractionsMatchingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit reply:(id)reply;
- (void)deleteInteractionsWithBundleId:(id)id account:(id)account reply:(id)reply;
- (void)deleteInteractionsWithBundleId:(id)id domainIdentifier:(id)identifier reply:(id)reply;
- (void)deleteInteractionsWithBundleId:(id)id domainIdentifiers:(id)identifiers reply:(id)reply;
- (void)deleteInteractionsWithBundleId:(id)id reply:(id)reply;
- (void)familyRecommendedSuggestionsWithPredictionContext:(id)context reply:(id)reply;
- (void)handleError:(id)error;
- (void)interactionFeaturesForHandle:(id)handle reply:(id)reply;
- (void)logSizeOfStorage:(id)storage;
- (void)maintainPrivacy;
- (void)mapsSuggestionsFromContext:(id)context maxSuggestions:(id)suggestions reply:(id)reply;
- (void)photosContactInferencesSuggestionsWithPredictionContext:(id)context reply:(id)reply;
- (void)photosRelationshipSuggestionsWithPredictionContext:(id)context reply:(id)reply;
- (void)populateAppSharesCache;
- (void)populateAppUsageCache;
- (void)populatePeopleSuggesterCaches;
- (void)provideFeedbackForContactsAutocompleteSuggestions:(id)suggestions;
- (void)provideMessagesPinningFeedback:(id)feedback;
- (void)queryContactsUsingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit reply:(id)reply;
- (void)queryInteractionsUsingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit reply:(id)reply;
- (void)rankCandidateContacts:(id)contacts usingSettings:(id)settings reply:(id)reply;
- (void)rankedAutocompleteSuggestionsFromContext:(id)context candidates:(id)candidates reply:(id)reply;
- (void)rankedFamilySuggestionsWithReply:(id)reply;
- (void)rankedHandlesFromCandidateHandles:(id)handles reply:(id)reply;
- (void)rankedMessagesPinsWithMaxSuggestions:(id)suggestions reply:(id)reply;
- (void)rankedNameSuggestionsFromContext:(id)context name:(id)name reply:(id)reply;
- (void)rankedSiriMLCRHandlesFromContext:(id)context handles:(id)handles reply:(id)reply;
- (void)rankedSiriNLContactSuggestionsFromContext:(id)context maxSuggestions:(id)suggestions interactionId:(id)id reply:(id)reply;
- (void)refreshPeopleSuggesterCaches;
- (void)relativeAppUsageProbabilitiesForCandidateBundleIds:(id)ids daysAgo:(id)ago reply:(id)reply;
- (void)reportPeopleStatistics;
- (void)reportShareSheetTimeoutWithReply:(id)reply;
- (void)setupDataProtectionChangeHandler;
- (void)shareExtensionSuggestionsFromContext:(id)context reply:(id)reply;
- (void)suggestInteractionsFromContext:(id)context maxSuggestions:(id)suggestions reply:(id)reply;
- (void)tuneSocialAdvisorUsingSettings:(id)settings heartBeatHandler:(id)handler reply:(id)reply;
- (void)writeVersionNumberToDefaults:(unint64_t)defaults;
- (void)zkwSuggestionsFromContext:(id)context maxSuggestions:(id)suggestions reply:(id)reply;
@end

@implementation CDPeopleDaemon

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____CDInteractionXPCProtocol];
  setClassesForCDInteractionXPCInterface();
  [connectionCopy setExportedInterface:v6];
  [connectionCopy _setQueue:self->_workQueue];
  v7 = [connectionCopy valueForEntitlement:@"com.apple.coreduetd.allow"];
  v8 = [connectionCopy valueForEntitlement:@"com.apple.coreduetd.people"];
  v9 = [connectionCopy valueForEntitlement:@"com.apple.private.contactsui"];
  v10 = [connectionCopy valueForEntitlement:@"com.apple.private.contacts"];
  v11 = v10;
  if (v7)
  {
    v12 = v7;
  }

  else if (v8)
  {
    v12 = v8;
  }

  else
  {
    if (!v9)
    {
      if (v10 && [v10 BOOLValue])
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    v12 = v9;
  }

  if ([v12 BOOLValue])
  {
LABEL_8:
    v13 = objc_alloc_init(CDPeopleDaemonConnection);
    [(CDPeopleDaemonConnection *)v13 setDaemon:self];
    [(CDPeopleDaemonConnection *)v13 setQueryInteractionsOnlyAuthorization:0];
    [connectionCopy setExportedObject:v13];
    v14 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v17[0] = 67109120;
      v17[1] = [connectionCopy processIdentifier];
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Connection from PID %d accepted", v17, 8u);
    }

    [connectionCopy resume];
    v15 = 1;
    goto LABEL_16;
  }

LABEL_13:
  v13 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(&v13->super, OS_LOG_TYPE_ERROR))
  {
    sub_100021F38(connectionCopy, &v13->super);
  }

  v15 = 0;
LABEL_16:

  return v15;
}

- (CDPeopleDaemon)initWithUserKnowledgeStore:(id)store
{
  storeCopy = store;
  v5 = +[CDDPaths peopleDatabaseDirectory];
  v6 = [_CDInteractionStore storeWithDirectory:v5 knowledgeStore:storeCopy readOnly:1];
  v7 = [(CDPeopleDaemon *)self initWithKnowledgeStore:storeCopy interactionStore:v6];

  return v7;
}

- (CDPeopleDaemon)initWithKnowledgeStore:(id)store
{
  storeCopy = store;
  v5 = +[CDDPaths peopleDatabaseDirectory];
  v6 = [_CDInteractionStore storeWithDirectory:v5 knowledgeStore:storeCopy readOnly:0];
  v7 = [(CDPeopleDaemon *)self initWithKnowledgeStore:storeCopy interactionStore:v6];

  return v7;
}

+ (id)machServiceName
{
  isKnowledgeAgent = [self isKnowledgeAgent];
  v3 = &_CDInteractionUserMachServiceName;
  if (!isKnowledgeAgent)
  {
    v3 = &_CDInteractionMachServiceName;
  }

  v4 = *v3;

  return v4;
}

- (CDPeopleDaemon)initWithKnowledgeStore:(id)store interactionStore:(id)interactionStore
{
  storeCopy = store;
  interactionStoreCopy = interactionStore;
  v9 = _os_activity_create(&_mh_execute_header, "CoreDuet: com.apple.coreduet.people.CDPeopleDaemon", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  os_activity_scope_leave(&state);

  LODWORD(v9) = +[CDPeopleDaemon isKnowledgeAgent];
  self->_isKnowledgeAgent = v9;
  v10 = +[CDPeopleDaemon machServiceName];
  if (v9)
  {
    v64.receiver = self;
    v64.super_class = CDPeopleDaemon;
    v11 = [(CDPeopleDaemon *)&v64 initWithMachServiceName:v10];

    if (!v11)
    {
      goto LABEL_9;
    }

    objc_storeStrong(&v11->_store, interactionStore);
    [(CDPeopleDaemon *)v11 setDelegate:v11];
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.coreduet.knowledge-agent.people.work", v12);
    workQueue = v11->_workQueue;
    v11->_workQueue = v13;

    v15 = objc_alloc_init(_DKDataProtectionStateMonitor);
    dataProtection = v11->_dataProtection;
    v11->_dataProtection = v15;

    defaultConfiguration = [sub_100006238() defaultConfiguration];
    v18 = objc_alloc_init(sub_10000633C());
    [(_CDInteractionStore *)v11->_store setReadConcurrently:1];
    [v18 setInteractionStore:v11->_store];
    [v18 setKnowledgeStore:storeCopy];
    ensembleModel = v11->_ensembleModel;
    v11->_ensembleModel = v18;
    v20 = v18;

    [defaultConfiguration setSuggestionModel:v11->_ensembleModel];
    v21 = [[_PSSuggester alloc] initWithConfiguration:defaultConfiguration];
    suggester = v11->_suggester;
    v11->_suggester = v21;

    [(CDPeopleDaemon *)v11 populatePeopleSuggesterCaches];
  }

  else
  {
    v63.receiver = self;
    v63.super_class = CDPeopleDaemon;
    v11 = [(CDPeopleDaemon *)&v63 initWithMachServiceName:v10];

    if (!v11)
    {
      goto LABEL_9;
    }

    v58 = interactionStoreCopy;
    objc_storeStrong(&v11->_store, interactionStore);
    objc_storeStrong(&v11->_knowledgeStore, store);
    v23 = objc_alloc_init(_DKDataProtectionStateMonitor);
    v24 = v11->_dataProtection;
    v11->_dataProtection = v23;

    v25 = [_CDInteractionAdviceEngine interactionAdviceEngineWithStore:v11->_store];
    advisor = v11->_advisor;
    v11->_advisor = v25;

    [(CDPeopleDaemon *)v11 setDelegate:v11];
    v27 = +[_CDInteractionPolicies interactionPolicies];
    policies = v11->_policies;
    v11->_policies = v27;

    v29 = +[_CDSiriLearningSettings sharedInstance];
    [v29 startSanitizingInteractionStore:v11->_store];

    v30 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v31 = dispatch_queue_create("com.apple.coreduetd.people.work", v30);
    v32 = v11->_workQueue;
    v11->_workQueue = v31;

    defaultConfiguration = [sub_100006238() defaultConfiguration];
    v33 = objc_alloc_init(sub_10000633C());
    [(_CDInteractionStore *)v11->_store setReadConcurrently:1];
    [v33 setInteractionStore:v11->_store];
    [v33 setKnowledgeStore:v11->_knowledgeStore];
    [v33 registerWithTrial];
    objc_storeStrong(&v11->_ensembleModel, v33);
    [defaultConfiguration setSuggestionModel:v11->_ensembleModel];
    v34 = [[_PSSuggester alloc] initWithConfiguration:defaultConfiguration feedbackRecording:1];
    v35 = v11->_suggester;
    v11->_suggester = v34;

    v36 = objc_alloc_init(_PSMessagesPinningSuggester);
    [v36 setInteractionStore:v11->_store];
    objc_storeStrong(&v11->_messagesPinningSuggester, v36);
    v69 = 0;
    v70 = &v69;
    v71 = 0x2050000000;
    v37 = qword_100044598;
    v72 = qword_100044598;
    if (!qword_100044598)
    {
      state.opaque[0] = _NSConcreteStackBlock;
      state.opaque[1] = 3221225472;
      v66 = sub_10000CE78;
      v67 = &unk_10003CC00;
      v68 = &v69;
      sub_10000CCE4();
      Class = objc_getClass("_PSFamilyRecommender");
      *(v68[1] + 24) = Class;
      qword_100044598 = *(v68[1] + 24);
      v37 = v70[3];
    }

    v57 = storeCopy;
    v39 = v37;
    _Block_object_dispose(&v69, 8);
    v40 = objc_alloc_init(v37);
    objc_storeStrong(&v11->_familyRecommender, v40);
    v41 = objc_alloc_init(_PSContactSuggester);
    [v41 setInteractionStore:v11->_store];
    objc_storeStrong(&v11->_contactSuggester, v41);
    v42 = objc_alloc_init(_PSContactHandleFeatureProvider);
    objc_storeStrong(&v11->_contactHandleFeatureProvider, v42);
    [(CDPeopleDaemon *)v11 setupDataProtectionChangeHandler];
    [(CDPeopleDaemon *)v11 versionCheckAndUpgradeIfNecessaryAndPossible];
    [v58 migrateIMessageDomainIdentifiers];
    [(CDPeopleDaemon *)v11 populatePeopleSuggesterCaches];
    [(_CDInteractionStore *)v11->_store closeStorage];
    objc_initWeak(&state, v11);
    v43 = _CDInteractionMachServiceName;
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_100006440;
    v61[3] = &unk_10003CAE8;
    objc_copyWeak(&v62, &state);
    v44 = [_CDPeriodicSchedulerJob jobWithPeriod:2 schedulerJobName:v43 handler:v61];
    v45 = +[_CDPeriodicScheduler sharedInstance];
    [v45 registerJob:v44];

    objc_destroyWeak(&v62);
    objc_destroyWeak(&state);

    storeCopy = v57;
    interactionStoreCopy = v58;
  }

LABEL_9:
  if (v11->_isKnowledgeAgent)
  {
    objc_initWeak(&state, v11);
    if (v11->_isKnowledgeAgent)
    {
      v46 = @"com.apple.coreduet.knowledge-agent.people.refresh-cache";
    }

    else
    {
      v46 = @"com.apple.coreduetd.people.refresh-cache";
    }

    v47 = v46;
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_1000064D4;
    v59[3] = &unk_10003CAE8;
    objc_copyWeak(&v60, &state);
    v48 = [_CDPeriodicSchedulerJob jobWithPeriod:1 schedulerJobName:v47 handler:v59];
    v49 = +[_CDPeriodicScheduler sharedInstance];
    [v49 registerJob:v48];

    objc_destroyWeak(&v60);
    objc_destroyWeak(&state);
  }

  v50 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v51 = dispatch_queue_create("com.apple.peopleSuggestionQueue", v50);
  peopleSuggestionQueue = v11->_peopleSuggestionQueue;
  v11->_peopleSuggestionQueue = v51;

  v53 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v54 = dispatch_queue_create("com.apple.appExtensionQueue", v53);
  appExtensionQueue = v11->_appExtensionQueue;
  v11->_appExtensionQueue = v54;

  [(CDPeopleDaemon *)v11 resume];
  return v11;
}

- (void)setupDataProtectionChangeHandler
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100001CF4;
  v3[3] = &unk_10003CB10;
  objc_copyWeak(&v4, &location);
  [(_DKDataProtectionStateMonitor *)self->_dataProtection setChangeHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)populatePeopleSuggesterCaches
{
  if ([(CDPeopleDaemon *)self isClassCLocked])
  {
    v3 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100021FC4();
    }
  }

  else
  {
    v4 = _os_activity_create(&_mh_execute_header, "CoreDuet: com.apple.coreduetd.populatePeopleSuggesterCaches", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v4, &state);
    os_activity_scope_leave(&state);

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v3 = dispatch_queue_create("com.apple.coreduet.PeopleSuggesterAppAndPeopleCache", v5);

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000067BC;
    block[3] = &unk_10003CA78;
    block[4] = self;
    dispatch_async(v3, block);
  }
}

- (void)refreshPeopleSuggesterCaches
{
  if (![(CDPeopleDaemon *)self isClassCLocked])
  {
    ensembleModel = [(CDPeopleDaemon *)self ensembleModel];
    [ensembleModel refreshCaches];
  }
}

- (void)handleError:(id)error
{
  errorCopy = error;
  if (errorCopy && [_CDErrorUtilities isCoreDataFatalError:errorCopy])
  {
    workQueue = self->_workQueue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100006A54;
    v10[3] = &unk_10003CB38;
    v11 = errorCopy;
    selfCopy = self;
    v6 = v10;
    v7 = workQueue;
    v8 = os_transaction_create();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000CEC8;
    block[3] = &unk_10003CAA0;
    v14 = v8;
    v15 = v6;
    v9 = v8;
    dispatch_async(v7, block);
  }
}

- (int64_t)readVersionNumberFromDefaults
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 integerForKey:@"InteractionStoreVersion"];

  return v3;
}

- (void)writeVersionNumberToDefaults:(unint64_t)defaults
{
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setInteger:defaults forKey:@"InteractionStoreVersion"];
  [v4 synchronize];
}

- (BOOL)versionCheckAndUpgradeIfNecessaryAndPossible
{
  if ([(CDPeopleDaemon *)self readVersionNumberFromDefaults]== 1)
  {
    return 1;
  }

  if (![(_DKDataProtectionStateMonitor *)self->_dataProtection isDataAvailableFor:NSFileProtectionCompleteUntilFirstUserAuthentication])
  {
    return 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006D04;
  block[3] = &unk_10003CA78;
  block[4] = self;
  if (qword_100044578 != -1)
  {
    dispatch_once(&qword_100044578, block);
  }

  v4 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100021FF8();
  }

  v3 = 1;
  [(CDPeopleDaemon *)self writeVersionNumberToDefaults:1];
  return v3;
}

- (BOOL)adjustPosixPermissionsForStorage:(id)storage
{
  storageCopy = storage;
  directory = [storageCopy directory];
  v47[0] = directory;
  databaseName = [storageCopy databaseName];
  v47[1] = databaseName;
  v6 = [NSArray arrayWithObjects:v47 count:2];
  v7 = [NSString pathWithComponents:v6];

  v8 = objc_opt_new();
  v9 = [NSString stringWithFormat:@"%@C.db", v7];
  [v8 addObject:v9];

  v10 = [NSString stringWithFormat:@"%@C.db-wal", v7];
  [v8 addObject:v10];

  v11 = [NSString stringWithFormat:@"%@C.db-shm", v7];
  [v8 addObject:v11];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v8;
  v12 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (!v12)
  {
    v14 = 0;
    v32 = 1;
    goto LABEL_30;
  }

  v13 = v12;
  v34 = v7;
  v35 = storageCopy;
  v14 = 0;
  v15 = *v41;
  v16 = &MKBDeviceFormattedForContentProtection_ptr;
  while (2)
  {
    v17 = 0;
    v36 = v13;
    do
    {
      if (*v41 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v40 + 1) + 8 * v17);
      defaultManager = [v16[242] defaultManager];
      v20 = [defaultManager fileExistsAtPath:v18];

      if (v20)
      {
        defaultManager2 = [v16[242] defaultManager];
        v39 = v14;
        v22 = [defaultManager2 attributesOfItemAtPath:v18 error:&v39];
        v23 = v39;

        if (!v22)
        {
          v22 = +[_CDLogging interactionChannel];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_100022284();
          }

          v14 = v23;
          goto LABEL_28;
        }

        if ([v22 filePosixPermissions]== 420)
        {
          v24 = +[_CDLogging interactionChannel];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v45 = v18;
            _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "DB file %@ has correct POSIX permissions.", buf, 0xCu);
          }

          v14 = v23;
          goto LABEL_18;
        }

        v25 = objc_opt_new();
        v26 = [NSNumber numberWithShort:420];
        [v25 setObject:v26 forKeyedSubscript:NSFilePosixPermissions];

        v27 = v16;
        defaultManager3 = [v16[242] defaultManager];
        v38 = v23;
        v29 = [defaultManager3 setAttributes:v25 ofItemAtPath:v18 error:&v38];
        v14 = v38;

        v30 = +[_CDLogging interactionChannel];
        v31 = v30;
        if ((v29 & 1) == 0)
        {
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            sub_10002221C();
          }

LABEL_28:
          v32 = 0;
          goto LABEL_29;
        }

        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v45 = v18;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Changed POSIX permission of %@ to 0644.", buf, 0xCu);
        }

        v13 = v36;
        v16 = v27;
      }

      else
      {
        v22 = +[_CDLogging interactionChannel];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v45 = v18;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "DB file %@ does not exist. Skipping POSIX permissions check.", buf, 0xCu);
        }
      }

LABEL_18:

      v17 = v17 + 1;
    }

    while (v13 != v17);
    v13 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

  v32 = 1;
LABEL_29:
  v7 = v34;
  storageCopy = v35;
LABEL_30:

  return v32;
}

+ (BOOL)writeRepopulationCheckpoint:(id)checkpoint
{
  checkpointCopy = checkpoint;
  v4 = +[NSUserDefaults standardUserDefaults];
  [checkpointCopy timeIntervalSinceReferenceDate];
  v6 = v5;

  [v4 setDouble:@"InteractionRepopluationCheckpoint" forKey:v6];
  [v4 synchronize];
  v7 = +[_CDLogging instrumentationChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1000222EC();
  }

  return 1;
}

+ (id)readRepopulationCheckpoint
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 synchronize];
  v3 = +[_CDLogging instrumentationChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100022320();
  }

  [v2 doubleForKey:@"InteractionRepopluationCheckpoint"];
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  return v5;
}

- (BOOL)requestInteractionRepopulation
{
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 synchronize];
  v4 = +[_CDLogging instrumentationChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100022354();
  }

  v5 = [v3 BOOLForKey:@"EnableInteractionRepopulation"];
  if (v5)
  {
    v6 = +[NSDate date];
    [CDPeopleDaemon writeRepopulationCheckpoint:v6];

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000075D0;
    handler[3] = &unk_10003CB60;
    handler[4] = self;
    xpc_activity_register("com.apple.coreduet.people.repopulate", XPC_ACTIVITY_CHECK_IN, handler);
  }

  else
  {
    v7 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100022388();
    }
  }

  return v5;
}

- (void)queryInteractionsUsingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit reply:(id)reply
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  replyCopy = reply;
  if ([(CDPeopleDaemon *)self isClassCLocked])
  {
    (*(replyCopy + 2))(replyCopy, 0, 0);
  }

  else
  {
    v13 = +[_CDLogging instrumentationChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = _CDCurrentOrXPCProcessName();
      *buf = 138543362;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Querying interactions for client %{public}@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    store = self->_store;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000803C;
    v16[3] = &unk_10003CB88;
    v17 = replyCopy;
    objc_copyWeak(&v18, buf);
    [(_CDInteractionStore *)store queryInteractionsUsingPredicate:predicateCopy sortDescriptors:descriptorsCopy limit:limit completionHandler:v16];
    objc_destroyWeak(&v18);

    objc_destroyWeak(buf);
  }
}

- (void)queryContactsUsingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit reply:(id)reply
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  replyCopy = reply;
  if ([(CDPeopleDaemon *)self isClassCLocked])
  {
    (*(replyCopy + 2))(replyCopy, 0, 0);
  }

  else
  {
    v13 = +[_CDLogging instrumentationChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = _CDCurrentOrXPCProcessName();
      *buf = 138543362;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Querying contacts for client %{public}@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    store = self->_store;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000082E4;
    v16[3] = &unk_10003CB88;
    v17 = replyCopy;
    objc_copyWeak(&v18, buf);
    [(_CDInteractionStore *)store queryContactsUsingPredicate:predicateCopy sortDescriptors:descriptorsCopy limit:limit completionHandler:v16];
    objc_destroyWeak(&v18);

    objc_destroyWeak(buf);
  }
}

- (void)countInteractionsUsingPredicate:(id)predicate reply:(id)reply
{
  predicateCopy = predicate;
  replyCopy = reply;
  if ([(CDPeopleDaemon *)self isClassCLocked])
  {
    (*(replyCopy + 2))(replyCopy, 0, 0);
  }

  else
  {
    v8 = +[_CDLogging instrumentationChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = _CDCurrentOrXPCProcessName();
      *buf = 138543362;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Counting interactions for client %{public}@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    store = self->_store;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100008568;
    v11[3] = &unk_10003CBB0;
    v12 = replyCopy;
    objc_copyWeak(&v13, buf);
    [(_CDInteractionStore *)store countInteractionsUsingPredicate:predicateCopy completionHandler:v11];
    objc_destroyWeak(&v13);

    objc_destroyWeak(buf);
  }
}

- (void)countContactsUsingPredicate:(id)predicate reply:(id)reply
{
  predicateCopy = predicate;
  replyCopy = reply;
  if ([(CDPeopleDaemon *)self isClassCLocked])
  {
    (*(replyCopy + 2))(replyCopy, 0, 0);
  }

  else
  {
    v8 = +[_CDLogging instrumentationChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = _CDCurrentOrXPCProcessName();
      *buf = 138543362;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Counting contacts for client %{public}@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    store = self->_store;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000087E0;
    v11[3] = &unk_10003CBB0;
    v12 = replyCopy;
    objc_copyWeak(&v13, buf);
    [(_CDInteractionStore *)store countContactsUsingPredicate:predicateCopy completionHandler:v11];
    objc_destroyWeak(&v13);

    objc_destroyWeak(buf);
  }
}

- (void)deleteInteractionsMatchingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit reply:(id)reply
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  replyCopy = reply;
  if ([(CDPeopleDaemon *)self isClassCLocked])
  {
    (*(replyCopy + 2))(replyCopy, 0, 0);
  }

  else
  {
    v13 = +[_CDLogging instrumentationChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = _CDCurrentOrXPCProcessName();
      *buf = 138543362;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Deleting interactions matching predicate for client %{public}@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    store = self->_store;
    v16 = [NSString alloc];
    v17 = _CDCurrentOrXPCProcessName();
    v18 = [v16 initWithFormat:@"for client %@", v17];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100008AC4;
    v19[3] = &unk_10003CBB0;
    v20 = replyCopy;
    objc_copyWeak(&v21, buf);
    [(_CDInteractionStore *)store deleteInteractionsMatchingPredicate:predicateCopy sortDescriptors:descriptorsCopy limit:limit debuggingReason:v18 completionHandler:v19];

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }
}

- (void)deleteInteractionsWithBundleId:(id)id reply:(id)reply
{
  idCopy = id;
  replyCopy = reply;
  if ([(CDPeopleDaemon *)self isClassCLocked])
  {
    (*(replyCopy + 2))(replyCopy, 0, 0);
  }

  else
  {
    v8 = +[_CDLogging instrumentationChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = _CDCurrentOrXPCProcessName();
      *buf = 138543362;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Deleting interactions with bundle id for client %{public}@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    store = self->_store;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100008D3C;
    v11[3] = &unk_10003CBB0;
    v12 = replyCopy;
    objc_copyWeak(&v13, buf);
    [(_CDInteractionStore *)store deleteInteractionsWithBundleId:idCopy completionHandler:v11];
    objc_destroyWeak(&v13);

    objc_destroyWeak(buf);
  }
}

- (void)deleteInteractionsWithBundleId:(id)id account:(id)account reply:(id)reply
{
  idCopy = id;
  accountCopy = account;
  replyCopy = reply;
  if ([(CDPeopleDaemon *)self isClassCLocked])
  {
    (*(replyCopy + 2))(replyCopy, 0, 0);
  }

  else
  {
    v11 = +[_CDLogging instrumentationChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = _CDCurrentOrXPCProcessName();
      *buf = 138543362;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Deleting interactions with bundle id and account for client %{public}@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    store = self->_store;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100008FC8;
    v14[3] = &unk_10003CBB0;
    v15 = replyCopy;
    objc_copyWeak(&v16, buf);
    [(_CDInteractionStore *)store deleteInteractionsWithBundleId:idCopy account:accountCopy completionHandler:v14];
    objc_destroyWeak(&v16);

    objc_destroyWeak(buf);
  }
}

- (void)deleteInteractionsWithBundleId:(id)id domainIdentifier:(id)identifier reply:(id)reply
{
  idCopy = id;
  identifierCopy = identifier;
  replyCopy = reply;
  if ([(CDPeopleDaemon *)self isClassCLocked])
  {
    (*(replyCopy + 2))(replyCopy, 0, 0);
  }

  else
  {
    v11 = +[_CDLogging instrumentationChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = _CDCurrentOrXPCProcessName();
      *buf = 138543362;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Deleting interactions with bundle id and domain for client %{public}@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    store = self->_store;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100009254;
    v14[3] = &unk_10003CBB0;
    v15 = replyCopy;
    objc_copyWeak(&v16, buf);
    [(_CDInteractionStore *)store deleteInteractionsWithBundleId:idCopy domainIdentifier:identifierCopy completionHandler:v14];
    objc_destroyWeak(&v16);

    objc_destroyWeak(buf);
  }
}

- (void)deleteInteractionsWithBundleId:(id)id domainIdentifiers:(id)identifiers reply:(id)reply
{
  idCopy = id;
  identifiersCopy = identifiers;
  replyCopy = reply;
  if ([(CDPeopleDaemon *)self isClassCLocked])
  {
    (*(replyCopy + 2))(replyCopy, 0, 0);
  }

  else
  {
    v11 = +[_CDLogging instrumentationChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = _CDCurrentOrXPCProcessName();
      *buf = 138543362;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Deleting interactions with bundle id and domains for client %{public}@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    store = self->_store;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000094E0;
    v14[3] = &unk_10003CBB0;
    v15 = replyCopy;
    objc_copyWeak(&v16, buf);
    [(_CDInteractionStore *)store deleteInteractionsWithBundleId:idCopy domainIdentifiers:identifiersCopy completionHandler:v14];
    objc_destroyWeak(&v16);

    objc_destroyWeak(buf);
  }
}

- (void)suggestInteractionsFromContext:(id)context maxSuggestions:(id)suggestions reply:(id)reply
{
  contextCopy = context;
  suggestionsCopy = suggestions;
  replyCopy = reply;
  isClassCLocked = [(CDPeopleDaemon *)self isClassCLocked];
  v12 = +[_CDLogging instrumentationChannel];
  v13 = v12;
  if (isClassCLocked)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100022524();
    }

    [contextCopy setSuggestionPath:@"suggestionPathClassCLocked"];
    replyCopy[2](replyCopy, &__NSArray0__struct, contextCopy);
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = _CDCurrentOrXPCProcessName();
      *buf = 138543362;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Suggesting interactions for client %{public}@", buf, 0xCu);
    }

    peopleSuggestionQueue = self->_peopleSuggestionQueue;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100009770;
    v16[3] = &unk_10003CBD8;
    v16[4] = self;
    v17 = contextCopy;
    v18 = suggestionsCopy;
    v19 = replyCopy;
    dispatch_async(peopleSuggestionQueue, v16);
  }
}

- (void)reportShareSheetTimeoutWithReply:(id)reply
{
  replyCopy = reply;
  suggester = [(CDPeopleDaemon *)self suggester];
  v8 = 0;
  v6 = [suggester reportShareSheetTimeoutWithError:&v8];
  v7 = v8;

  replyCopy[2](replyCopy, v6, v7);
}

- (void)shareExtensionSuggestionsFromContext:(id)context reply:(id)reply
{
  contextCopy = context;
  replyCopy = reply;
  isClassCLocked = [(CDPeopleDaemon *)self isClassCLocked];
  v9 = +[_CDLogging instrumentationChannel];
  v10 = v9;
  if (isClassCLocked)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100022524();
    }

    replyCopy[2](replyCopy, &__NSArray0__struct);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = _CDCurrentOrXPCProcessName();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Suggesting extensions for client %{public}@", &v14, 0xCu);
    }

    suggester = [(CDPeopleDaemon *)self suggester];
    v13 = [suggester appExtensionSuggestionsFromContext:contextCopy];
    replyCopy[2](replyCopy, v13);

    replyCopy = suggester;
  }
}

- (void)candidatesForShareSheetRanking:(id)ranking
{
  rankingCopy = ranking;
  if ([(CDPeopleDaemon *)self isClassCLocked])
  {
    v9 = objc_opt_new();
    rankingCopy[2](rankingCopy);
  }

  else
  {
    v5 = +[_CDLogging instrumentationChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = _CDCurrentOrXPCProcessName();
      *buf = 138543362;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Fetching candidates for Share Sheet ranking for client %{public}@", buf, 0xCu);
    }

    suggester = [(CDPeopleDaemon *)self suggester];
    candidatesForShareSheetRankingCompute = [suggester candidatesForShareSheetRankingCompute];
    (rankingCopy[2])(rankingCopy, candidatesForShareSheetRankingCompute);
  }
}

- (void)mapsSuggestionsFromContext:(id)context maxSuggestions:(id)suggestions reply:(id)reply
{
  contextCopy = context;
  suggestionsCopy = suggestions;
  replyCopy = reply;
  if ([(CDPeopleDaemon *)self isClassCLocked])
  {
    replyCopy[2](replyCopy, &__NSArray0__struct);
  }

  else
  {
    v11 = +[_CDLogging instrumentationChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = _CDCurrentOrXPCProcessName();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Suggesting maps for client %{public}@", &v15, 0xCu);
    }

    ensembleModel = [(CDPeopleDaemon *)self ensembleModel];
    v14 = [ensembleModel predictWithMapsPredictionContext:contextCopy maxSuggestions:{objc_msgSend(suggestionsCopy, "integerValue")}];
    replyCopy[2](replyCopy, v14);
  }
}

- (void)zkwSuggestionsFromContext:(id)context maxSuggestions:(id)suggestions reply:(id)reply
{
  contextCopy = context;
  suggestionsCopy = suggestions;
  replyCopy = reply;
  if ([(CDPeopleDaemon *)self isClassCLocked])
  {
    replyCopy[2](replyCopy, &__NSArray0__struct);
  }

  else
  {
    v11 = +[_CDLogging instrumentationChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = _CDCurrentOrXPCProcessName();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Suggesting zero keyword for client %{public}@", &v15, 0xCu);
    }

    ensembleModel = [(CDPeopleDaemon *)self ensembleModel];
    v14 = [ensembleModel suggestZKWSuggestionsWithPredictionContext:contextCopy maxSuggestions:{objc_msgSend(suggestionsCopy, "integerValue")}];
    replyCopy[2](replyCopy, v14);
  }
}

- (void)autocompleteSearchResultsWithPredictionContext:(id)context reply:(id)reply
{
  contextCopy = context;
  replyCopy = reply;
  if ([(CDPeopleDaemon *)self isClassCLocked])
  {
    replyCopy[2](replyCopy, &__NSArray0__struct);
  }

  else
  {
    v8 = +[_CDLogging instrumentationChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = _CDCurrentOrXPCProcessName();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Suggesting autocomplete for client %{public}@", &v12, 0xCu);
    }

    ensembleModel = [(CDPeopleDaemon *)self ensembleModel];
    v11 = [ensembleModel autocompleteSearchResultsWithPredictionContext:contextCopy];
    replyCopy[2](replyCopy, v11);
  }
}

- (void)provideFeedbackForContactsAutocompleteSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  v5 = +[_CDLogging instrumentationChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = _CDCurrentOrXPCProcessName();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Writing feedback for client %{public}@", &v8, 0xCu);
  }

  suggester = [(CDPeopleDaemon *)self suggester];
  [suggester writeFeedbackForContactsAutocompleteSuggestions:suggestionsCopy];
}

- (void)rankedNameSuggestionsFromContext:(id)context name:(id)name reply:(id)reply
{
  contextCopy = context;
  nameCopy = name;
  replyCopy = reply;
  if ([(CDPeopleDaemon *)self isClassCLocked])
  {
    replyCopy[2](replyCopy, &__NSArray0__struct);
  }

  else
  {
    v11 = +[_CDLogging instrumentationChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = _CDCurrentOrXPCProcessName();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Suggesting ranked names for client %{public}@", &v15, 0xCu);
    }

    ensembleModel = [(CDPeopleDaemon *)self ensembleModel];
    v14 = [ensembleModel rankedNameSuggestionsWithPredictionContext:contextCopy name:nameCopy];
    replyCopy[2](replyCopy, v14);
  }
}

- (void)rankedSiriNLContactSuggestionsFromContext:(id)context maxSuggestions:(id)suggestions interactionId:(id)id reply:(id)reply
{
  contextCopy = context;
  suggestionsCopy = suggestions;
  idCopy = id;
  replyCopy = reply;
  if ([(CDPeopleDaemon *)self isClassCLocked])
  {
    replyCopy[2](replyCopy, &__NSArray0__struct);
  }

  else
  {
    v14 = +[_CDLogging instrumentationChannel];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = _CDCurrentOrXPCProcessName();
      v18 = 138543362;
      v19 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Suggesting ranked global suggestions for client %{public}@", &v18, 0xCu);
    }

    ensembleModel = [(CDPeopleDaemon *)self ensembleModel];
    v17 = [ensembleModel rankedGlobalSuggestionsForSiriNLWithPredictionContext:contextCopy maxSuggestions:objc_msgSend(suggestionsCopy interactionId:{"integerValue"), idCopy}];
    replyCopy[2](replyCopy, v17);
  }
}

- (void)rankedAutocompleteSuggestionsFromContext:(id)context candidates:(id)candidates reply:(id)reply
{
  contextCopy = context;
  candidatesCopy = candidates;
  replyCopy = reply;
  if ([(CDPeopleDaemon *)self isClassCLocked])
  {
    replyCopy[2](replyCopy, &__NSArray0__struct);
  }

  else
  {
    v11 = +[_CDLogging instrumentationChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = _CDCurrentOrXPCProcessName();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Suggesting ranked autocomplete suggestions for client %{public}@", &v15, 0xCu);
    }

    ensembleModel = [(CDPeopleDaemon *)self ensembleModel];
    v14 = [ensembleModel rankedAutocompleteSuggestionsFromContext:contextCopy candidates:candidatesCopy];
    replyCopy[2](replyCopy, v14);
  }
}

- (void)rankedMessagesPinsWithMaxSuggestions:(id)suggestions reply:(id)reply
{
  suggestionsCopy = suggestions;
  replyCopy = reply;
  if ([(CDPeopleDaemon *)self isClassCLocked])
  {
    replyCopy[2](replyCopy, &__NSArray0__struct);
  }

  else
  {
    v8 = +[_CDLogging instrumentationChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = _CDCurrentOrXPCProcessName();
      v14 = 138543362;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Suggesting message pins for client %{public}@", &v14, 0xCu);
    }

    messagesPinningSuggester = [(CDPeopleDaemon *)self messagesPinningSuggester];
    integerValue = [suggestionsCopy integerValue];
    v12 = +[NSDate date];
    v13 = [messagesPinningSuggester chatGuidsForPinningHeuristicApproachWithMaxSuggestions:integerValue forReferenceDate:v12];
    replyCopy[2](replyCopy, v13);
  }
}

- (void)provideMessagesPinningFeedback:(id)feedback
{
  feedbackCopy = feedback;
  v5 = +[_CDLogging instrumentationChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = _CDCurrentOrXPCProcessName();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Feedback for message pins for client %{public}@", &v8, 0xCu);
  }

  messagesPinningSuggester = [(CDPeopleDaemon *)self messagesPinningSuggester];
  [messagesPinningSuggester submitMessagesPinningFeedback:feedbackCopy];
}

- (void)rankedFamilySuggestionsWithReply:(id)reply
{
  replyCopy = reply;
  if ([(CDPeopleDaemon *)self isClassCLocked])
  {
    replyCopy[2](replyCopy, &__NSArray0__struct);
  }

  else
  {
    v5 = +[_CDLogging instrumentationChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = _CDCurrentOrXPCProcessName();
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Ranked family suggestions for client %{public}@", &v9, 0xCu);
    }

    familyRecommender = [(CDPeopleDaemon *)self familyRecommender];
    familyRecommendations = [familyRecommender familyRecommendations];
    replyCopy[2](replyCopy, familyRecommendations);
  }
}

- (void)familyRecommendedSuggestionsWithPredictionContext:(id)context reply:(id)reply
{
  contextCopy = context;
  replyCopy = reply;
  if ([(CDPeopleDaemon *)self isClassCLocked])
  {
    replyCopy[2](replyCopy, &__NSArray0__struct);
  }

  else
  {
    v8 = +[_CDLogging instrumentationChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = _CDCurrentOrXPCProcessName();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Family recommended suggestions for client %{public}@", &v12, 0xCu);
    }

    familyRecommender = [(CDPeopleDaemon *)self familyRecommender];
    v11 = [familyRecommender familyRecommendationSuggestionsForShareSheetWithPredictionContext:contextCopy];
    replyCopy[2](replyCopy, v11);
  }
}

- (void)photosRelationshipSuggestionsWithPredictionContext:(id)context reply:(id)reply
{
  contextCopy = context;
  replyCopy = reply;
  if ([(CDPeopleDaemon *)self isClassCLocked])
  {
    replyCopy[2](replyCopy, &__NSArray0__struct);
  }

  else
  {
    v8 = +[_CDLogging instrumentationChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = _CDCurrentOrXPCProcessName();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Family recommended suggestions for client %{public}@", &v12, 0xCu);
    }

    familyRecommender = [(CDPeopleDaemon *)self familyRecommender];
    v11 = [familyRecommender suggestionsForPhotosRelationshipsWithPredictionContext:contextCopy];
    replyCopy[2](replyCopy, v11);
  }
}

- (void)photosContactInferencesSuggestionsWithPredictionContext:(id)context reply:(id)reply
{
  contextCopy = context;
  replyCopy = reply;
  if ([(CDPeopleDaemon *)self isClassCLocked])
  {
    replyCopy[2](replyCopy, &__NSArray0__struct);
  }

  else
  {
    v8 = +[_CDLogging instrumentationChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = _CDCurrentOrXPCProcessName();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Family recommended suggestions for client %{public}@", &v12, 0xCu);
    }

    familyRecommender = [(CDPeopleDaemon *)self familyRecommender];
    v11 = [familyRecommender suggestionsForPhotosContactInferencesWithPredictionContext:contextCopy];
    replyCopy[2](replyCopy, v11);
  }
}

- (void)rankedSiriMLCRHandlesFromContext:(id)context handles:(id)handles reply:(id)reply
{
  contextCopy = context;
  handlesCopy = handles;
  replyCopy = reply;
  if ([(CDPeopleDaemon *)self isClassCLocked])
  {
    replyCopy[2](replyCopy, &__NSDictionary0__struct);
  }

  else
  {
    v11 = +[_CDLogging instrumentationChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = _CDCurrentOrXPCProcessName();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Ranked Siri Handle Suggestions for client %{public}@", &v15, 0xCu);
    }

    ensembleModel = [(CDPeopleDaemon *)self ensembleModel];
    v14 = [ensembleModel rankedSiriMLCRHandles:handlesCopy context:contextCopy];
    replyCopy[2](replyCopy, v14);
  }
}

- (void)rankedHandlesFromCandidateHandles:(id)handles reply:(id)reply
{
  handlesCopy = handles;
  replyCopy = reply;
  if ([(CDPeopleDaemon *)self isClassCLocked])
  {
    replyCopy[2](replyCopy, &__NSDictionary0__struct);
  }

  else
  {
    v8 = +[_CDLogging instrumentationChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = _CDCurrentOrXPCProcessName();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Ranked Handle Suggestions for client %{public}@", &v12, 0xCu);
    }

    ensembleModel = [(CDPeopleDaemon *)self ensembleModel];
    v11 = [ensembleModel rankedHandlesFromCandidateHandles:handlesCopy];
    replyCopy[2](replyCopy, v11);
  }
}

- (void)relativeAppUsageProbabilitiesForCandidateBundleIds:(id)ids daysAgo:(id)ago reply:(id)reply
{
  idsCopy = ids;
  agoCopy = ago;
  replyCopy = reply;
  if ([(CDPeopleDaemon *)self isClassCLocked])
  {
    replyCopy[2](replyCopy, &__NSDictionary0__struct);
  }

  else
  {
    v11 = +[_CDLogging instrumentationChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = _CDCurrentOrXPCProcessName();
      v16 = 138543362;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "App Usage Distribution for client %{public}@", &v16, 0xCu);
    }

    integerValue = [agoCopy integerValue];
    knowledgeStore = [(CDPeopleDaemon *)self knowledgeStore];
    v15 = [_PSAppUsageUtilities relativeAppUsageProbabilitiesForCandidateBundleIds:idsCopy daysAgo:integerValue knowledgeStore:knowledgeStore];
    replyCopy[2](replyCopy, v15);
  }
}

- (void)contactSuggestionsWithMaxSuggestions:(id)suggestions excludedContactIds:(id)ids reply:(id)reply
{
  suggestionsCopy = suggestions;
  idsCopy = ids;
  replyCopy = reply;
  if ([(CDPeopleDaemon *)self isClassCLocked])
  {
    replyCopy[2](replyCopy, &__NSArray0__struct);
  }

  else
  {
    v11 = +[_CDLogging instrumentationChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = _CDCurrentOrXPCProcessName();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Contact suggestions for client %{public}@", &v15, 0xCu);
    }

    contactSuggester = [(CDPeopleDaemon *)self contactSuggester];
    v14 = [contactSuggester contactSuggestionsWithMaxSuggestions:objc_msgSend(suggestionsCopy excludeContactsByIdentifiers:{"integerValue"), idsCopy}];
    replyCopy[2](replyCopy, v14);
  }
}

- (void)rankCandidateContacts:(id)contacts usingSettings:(id)settings reply:(id)reply
{
  contactsCopy = contacts;
  settingsCopy = settings;
  replyCopy = reply;
  if ([(CDPeopleDaemon *)self isClassCLocked])
  {
    replyCopy[2](replyCopy, &__NSArray0__struct);
  }

  else
  {
    v11 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = _CDCurrentOrXPCProcessName();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Ranking candidates for client %{public}@", &v14, 0xCu);
    }

    v13 = [(_CDInteractionAdviceEngine *)self->_advisor rankCandidateContacts:contactsCopy usingSettings:settingsCopy];
    replyCopy[2](replyCopy, v13);
  }
}

- (void)adviseInteractionsUsingSettings:(id)settings reply:(id)reply
{
  settingsCopy = settings;
  replyCopy = reply;
  if ([(CDPeopleDaemon *)self isClassCLocked])
  {
    replyCopy[2](replyCopy, &__NSArray0__struct);
  }

  else
  {
    v8 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = _CDCurrentOrXPCProcessName();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Advising interactions with people for client %{public}@", &v11, 0xCu);
    }

    v10 = [(_CDInteractionAdviceEngine *)self->_advisor adviseInteractionsUsingSettings:settingsCopy];
    replyCopy[2](replyCopy, v10);
  }
}

- (void)adviseInteractionsForDate:(id)date usingSettings:(id)settings reply:(id)reply
{
  dateCopy = date;
  settingsCopy = settings;
  replyCopy = reply;
  if ([(CDPeopleDaemon *)self isClassCLocked])
  {
    replyCopy[2](replyCopy, &__NSArray0__struct);
  }

  else
  {
    v11 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = _CDCurrentOrXPCProcessName();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Advising interactions with people using time of day for client %{public}@", &v14, 0xCu);
    }

    v13 = [(_CDInteractionAdviceEngine *)self->_advisor adviseInteractionsForDate:dateCopy usingSettings:settingsCopy];
    replyCopy[2](replyCopy, v13);
  }
}

- (void)adviseInteractionsForKeywordsInString:(id)string usingSettings:(id)settings reply:(id)reply
{
  stringCopy = string;
  settingsCopy = settings;
  replyCopy = reply;
  if ([(CDPeopleDaemon *)self isClassCLocked])
  {
    replyCopy[2](replyCopy, &__NSArray0__struct);
  }

  else
  {
    v11 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = _CDCurrentOrXPCProcessName();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Advising interactions with people using a query for client %{public}@", &v14, 0xCu);
    }

    v13 = [(_CDInteractionAdviceEngine *)self->_advisor adviseInteractionsForKeywordsInString:stringCopy usingSettings:settingsCopy];
    replyCopy[2](replyCopy, v13);
  }
}

- (void)adviseSocialInteractionsForDate:(id)date andSeedContacts:(id)contacts usingSettings:(id)settings reply:(id)reply
{
  dateCopy = date;
  contactsCopy = contacts;
  settingsCopy = settings;
  replyCopy = reply;
  if ([(CDPeopleDaemon *)self isClassCLocked])
  {
    replyCopy[2](replyCopy, &__NSArray0__struct);
  }

  else
  {
    v14 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = _CDCurrentOrXPCProcessName();
      v17 = 138543362;
      v18 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Advising interactions with people using social cues for client %{public}@", &v17, 0xCu);
    }

    v16 = [(_CDInteractionAdviceEngine *)self->_advisor adviseSocialInteractionsForDate:dateCopy andSeedContacts:contactsCopy usingSettings:settingsCopy];
    replyCopy[2](replyCopy, v16);
  }
}

- (void)tuneSocialAdvisorUsingSettings:(id)settings heartBeatHandler:(id)handler reply:(id)reply
{
  replyCopy = reply;
  handlerCopy = handler;
  settingsCopy = settings;
  v11 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = _CDCurrentOrXPCProcessName();
    v13 = 138543362;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Tuning social advisor for client %{public}@", &v13, 0xCu);
  }

  [(_CDInteractionAdviceEngine *)self->_advisor tuneSocialAdvisorUsingSettings:settingsCopy heartBeatHandler:handlerCopy];
  replyCopy[2](replyCopy);
}

- (void)maintainPrivacy
{
  v3 = _os_activity_create(&_mh_execute_header, "CoreDuet: com.apple.coreduetd.maintainPrivacy", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  os_activity_scope_leave(&state);

  workQueue = self->_workQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000C070;
  v9[3] = &unk_10003CA78;
  v9[4] = self;
  v5 = v9;
  v6 = workQueue;
  v7 = os_transaction_create();
  state.opaque[0] = _NSConcreteStackBlock;
  state.opaque[1] = 3221225472;
  v11 = sub_10000CEC8;
  v12 = &unk_10003CAA0;
  v13 = v7;
  v14 = v5;
  v8 = v7;
  dispatch_async(v6, &state);
}

- (void)_maintainPrivacy
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100022558();
  }

  kdebug_trace();
  v4 = +[_CDLogging interactionSignpost];
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MaintainPrivacy", " enableTelemetry=YES ", buf, 2u);
  }

  whitelistedFirstPartyBundleIds = [(_CDInteractionPolicies *)self->_policies whitelistedFirstPartyBundleIds];
  dateOfOldestAllowedInteractionForWhitelistedFirstPartyBundleIds = [(_CDInteractionPolicies *)self->_policies dateOfOldestAllowedInteractionForWhitelistedFirstPartyBundleIds];
  v7 = [NSPredicate predicateWithFormat:@"bundleId IN %@ AND startDate < %@", whitelistedFirstPartyBundleIds, dateOfOldestAllowedInteractionForWhitelistedFirstPartyBundleIds];

  v8 = [(_CDInteractionStore *)self->_store deleteInteractionsMatchingPredicate:v7 sortDescriptors:&__NSArray0__struct limit:[(_CDInteractionPolicies *)self->_policies maxNumberOfInteractionsDeleted] debuggingReason:@"_maintainPrivacy allowlisted first party deletion predicate" error:0];
  v9 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10002258C(&self->_policies);
  }

  whitelistedFirstPartyBundleIds2 = [(_CDInteractionPolicies *)self->_policies whitelistedFirstPartyBundleIds];
  dateOfOldestAllowedInteraction = [(_CDInteractionPolicies *)self->_policies dateOfOldestAllowedInteraction];
  v12 = [NSPredicate predicateWithFormat:@"NOT(bundleId IN %@) AND startDate < %@", whitelistedFirstPartyBundleIds2, dateOfOldestAllowedInteraction];

  v13 = [(_CDInteractionStore *)self->_store deleteInteractionsMatchingPredicate:v12 sortDescriptors:&__NSArray0__struct limit:[(_CDInteractionPolicies *)self->_policies maxNumberOfInteractionsDeleted] debuggingReason:@"_maintainPrivacy denylisted apps deletion predicate" error:0];
  v14 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_100022628(&self->_policies);
  }

  v15 = &v8[v13];

  v16 = [(_CDInteractionStore *)self->_store deleteOldInteractionsIfNeededToLimitTotalNumber:[(_CDInteractionPolicies *)self->_policies maxNumberOfInteractionsStored] limit:[(_CDInteractionPolicies *)self->_policies maxNumberOfInteractionsDeleted]];
  v17 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_1000226C4(&self->_policies);
  }

  [(CDPeopleDaemon *)self reportPeopleStatistics];
  [(_CDInteractionStore *)self->_store closeStorage];
  kdebug_trace();
  v18 = +[_CDLogging interactionSignpost];
  if (os_signpost_enabled(v18))
  {
    *buf = 134349568;
    v20 = v15;
    v21 = 2050;
    v22 = v16;
    v23 = 2050;
    v24 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MaintainPrivacy", "LifespanLimitDeleted=%{signpost.telemetry:number1,public}lu TotalLimitDeleted=%{signpost.telemetry:number2,public}lu UserDoesNotExistDeleted=%{signpost.telemetry:number3,public}lu", buf, 0x20u);
  }
}

- (void)populateAppUsageCache
{
  v3 = _os_activity_create(&_mh_execute_header, "CoreDuet: com.apple.coreduetd.populateAppUsageCache", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v6.opaque[0] = 0;
  v6.opaque[1] = 0;
  os_activity_scope_enter(v3, &v6);
  os_activity_scope_leave(&v6);

  v4 = sub_10000C524();
  knowledgeStore = [(CDPeopleDaemon *)self knowledgeStore];
  [v4 cacheAppUsageDurations:knowledgeStore];
}

- (void)populateAppSharesCache
{
  v2 = _os_activity_create(&_mh_execute_header, "CoreDuet: com.apple.coreduetd.populateAppSharesCache", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v3.opaque[0] = 0;
  v3.opaque[1] = 0;
  os_activity_scope_enter(v2, &v3);
  os_activity_scope_leave(&v3);

  [sub_10000C524() cacheSharesForEachApp];
}

- (void)logSizeOfStorage:(id)storage
{
  storageCopy = storage;
  directory = [storageCopy directory];
  v22[0] = directory;
  databaseName = [storageCopy databaseName];

  v22[1] = databaseName;
  v6 = [NSArray arrayWithObjects:v22 count:2];
  v7 = [NSString pathWithComponents:v6];

  v8 = [NSString stringWithFormat:@"%@C.db", v7];
  v9 = +[NSFileManager defaultManager];
  v10 = [v9 attributesOfItemAtPath:v8 error:0];

  if (v10)
  {
    fileSize = [v10 fileSize];
    v12 = [NSString stringWithFormat:@"%@C.db-wal", v7];
    v13 = +[NSFileManager defaultManager];
    v14 = [v13 attributesOfItemAtPath:v12 error:0];

    if (v14)
    {
      v15 = &fileSize[[v14 fileSize]];
      v16 = +[_CDLogging interactionChannel];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v19 = v8;
        v20 = 2048;
        v21 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "DatabaseSize for %@: %lluB", buf, 0x16u);
      }

      if (v15)
      {
        v17 = +[_CDLogging interactionSignpost];
        if (os_signpost_enabled(v17))
        {
          *buf = 134349056;
          v19 = v15;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DatabaseSize", "Size=%{signpost.telemetry:number1,public}lluB  enableTelemetry=YES ", buf, 0xCu);
        }
      }
    }
  }
}

- (void)reportPeopleStatistics
{
  v3 = _os_activity_create(&_mh_execute_header, "CoreDuet: com.apple.coreduetd.reportPeopleStatistics", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v3, &v5);
  os_activity_scope_leave(&v5);

  storage = [(_CDInteractionStore *)self->_store storage];
  [(CDPeopleDaemon *)self logSizeOfStorage:storage];
}

- (void)interactionFeaturesForHandle:(id)handle reply:(id)reply
{
  handleCopy = handle;
  replyCopy = reply;
  if ([(CDPeopleDaemon *)self isClassCLocked])
  {
    replyCopy[2](replyCopy, &__NSDictionary0__struct);
  }

  else
  {
    v8 = +[_CDLogging instrumentationChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = _CDCurrentOrXPCProcessName();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Interaction features for contact handles %{public}@", &v12, 0xCu);
    }

    contactHandleFeatureProvider = [(CDPeopleDaemon *)self contactHandleFeatureProvider];
    v11 = [contactHandleFeatureProvider _interactionFeaturesForHandle:handleCopy];
    replyCopy[2](replyCopy, v11);
  }
}

@end