@interface GKContactsIntegrationController
+ (id)sharedController;
- (BOOL)contactsSyncInProgress;
- (BOOL)idsSyncInProgress;
- (BOOL)isAlreadyWaitingOnLimitTimer;
- (BOOL)isEligibleAllowingIneligibility:(unint64_t)ineligibility usingSettings:(id)settings;
- (BOOL)isEligibleAllowingIneligibility:(unint64_t)ineligibility usingSettings:(id)settings withContext:(id)context;
- (GKContactsIntegrationController)init;
- (GKContactsIntegrationController)initWithNotificationCenter:(id)center connectionManager:(id)manager playerProvider:(id)provider eligibilityChecker:(id)checker metricsHandler:(id)handler contactStore:(id)store migrator:(id)migrator;
- (id)contactAssociationIDMapForContactAssociationIDs:(id)ds withContext:(id)context;
- (id)contactAssociationIDMapForHandles:(id)handles withContext:(id)context;
- (id)contactInfosForHandles:(id)handles withContext:(id)context;
- (id)createFriendAssociationIDMapWithIDs:(id)ds withContext:(id)context;
- (id)createRelationshipWithHandle:(id)handle contactAssociationID:(id)d usingFriendMap:(id)map withContext:(id)context;
- (id)expirationPredicateForCohort:(int)cohort matchingHandles:(id)handles usingSettings:(id)settings;
- (id)expiredIDSEntriesWithFetchLimit:(int64_t)limit matchingHandles:(id)handles usingSettings:(id)settings withContext:(id)context;
- (id)filterForContactIDsSupportingFriendingViaPushFromContactIDs:(id)ds withContext:(id)context;
- (id)getContactsForContactAssociationIDs:(id)ds withContext:(id)context;
- (id)handleMapForContactAssociationIDs:(id)ds withContext:(id)context;
- (id)handlesExcludingNoneExpiredFromHandles:(id)handles isAlreadyWaitingOnLimitTimer:(BOOL)timer settings:(id)settings moc:(id)moc error:(id *)error;
- (id)relationshipForMeContact;
- (id)relationshipsForHandles:(id)handles contactAssociationIDMap:(id)map withContext:(id)context;
- (unint64_t)calculateRemainingIDSHandleQueryCountUsingSettings:(id)settings withContext:(id)context;
- (unint64_t)syncState;
- (void)clearCachesWithCompletionHandler:(id)handler;
- (void)connectionManagerReady:(id)ready;
- (void)contactsChanged:(id)changed;
- (void)fetchIDSDataAndUpdateCacheForHandles:(id)handles allowingIneligibility:(unint64_t)ineligibility usingSettings:(id)settings withDelay:(BOOL)delay completion:(id)completion;
- (void)fetchIDSDataAndUpdateCacheForHandles:(id)handles rangeToFetch:(_NSRange)fetch maxBatchSize:(unint64_t)size numberOfHandlesLeft:(int64_t)left allowingIneligibility:(unint64_t)ineligibility settings:(id)settings withDelay:(BOOL)delay completion:(id)self0;
- (void)fetchMessageTransportV2AvailabilityForUnprefixedHandles:(id)handles completion:(id)completion;
- (void)getRelationshipsForContacts:(id)contacts updateExistingContactEntries:(BOOL)entries completionHandler:(id)handler;
- (void)handleIDSFetchResult:(id)result handlesToQuery:(id)query rangeToFetch:(_NSRange)fetch maxBatchSize:(unint64_t)size numberOfHandlesLeft:(int64_t)left allowingIneligibility:(unint64_t)ineligibility settings:(id)settings withDelay:(BOOL)self0 completion:(id)self1;
- (void)handleReachabilityChanged;
- (void)logStateWithMoc:(id)moc syncState:(unint64_t)state;
- (void)playerAuthenticated:(id)authenticated;
- (void)populateContactInfoForProfiles:(id)profiles playerIdToContactAssociationIdMap:(id)map withContext:(id)context;
- (void)populateContactInfoForProfiles:(id)profiles replyOnQueue:(id)queue withCompletionHandler:(id)handler;
- (void)populateContactInfoForProfiles:(id)profiles withContext:(id)context;
- (void)reachabilityChanged:(id)changed;
- (void)refetchIDSHandlesInPriorityOrderWithCompletion:(id)completion;
- (void)relationshipsForContacts:(id)contacts updateExistingContactEntries:(BOOL)entries allowingIneligibility:(unint64_t)ineligibility usingSettings:(id)settings meContactID:(id)d completionHandler:(id)handler;
- (void)setupIDSCacheUpdateTimerWithStartTime:(double)time;
- (void)startContactsSyncAllowingChangeHistory:(BOOL)history completion:(id)completion;
- (void)startIDSSyncWithCompletion:(id)completion;
- (void)startWithOptions:(unint64_t)options completion:(id)completion;
- (void)stateWithCompletionHandler:(id)handler;
- (void)stop;
- (void)stopCacheUpdates;
- (void)storeBagUpdated:(id)updated;
- (void)syncIDSDataForHandles:(id)handles forcefully:(BOOL)forcefully completion:(id)completion;
- (void)updateIDSEntriesFromOldFriendEntries:(id)entries againstServerRepresentation:(id)representation withContext:(id)context;
- (void)updateIntervalHasFinishedExceedingIDSLimit:(BOOL)limit allowingIneligibility:(unint64_t)ineligibility usingSettings:(id)settings;
@end

@implementation GKContactsIntegrationController

+ (id)sharedController
{
  if (qword_1003B9400 != -1)
  {
    sub_100293910();
  }

  v3 = qword_1003B93F8;

  return v3;
}

- (GKContactsIntegrationController)init
{
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = +[GKIDSConnectionManager sharedManager];
  v5 = objc_alloc_init(GKPlayerInternalProvider);
  v6 = objc_alloc_init(GKContactsIntegrationEligibilityChecker);
  v7 = objc_alloc_init(GKContactsIntegrationMetricsHandler);
  v8 = objc_alloc_init(CNContactStore);
  v9 = [GKContactsIntegrationMigrator alloc];
  v10 = +[NSUserDefaults standardUserDefaults];
  v11 = [(GKContactsIntegrationMigrator *)v9 initWithUserDefaults:v10];
  v12 = [(GKContactsIntegrationController *)self initWithNotificationCenter:v3 connectionManager:v4 playerProvider:v5 eligibilityChecker:v6 metricsHandler:v7 contactStore:v8 migrator:v11];

  return v12;
}

- (GKContactsIntegrationController)initWithNotificationCenter:(id)center connectionManager:(id)manager playerProvider:(id)provider eligibilityChecker:(id)checker metricsHandler:(id)handler contactStore:(id)store migrator:(id)migrator
{
  centerCopy = center;
  managerCopy = manager;
  providerCopy = provider;
  checkerCopy = checker;
  handlerCopy = handler;
  storeCopy = store;
  migratorCopy = migrator;
  v31.receiver = self;
  v31.super_class = GKContactsIntegrationController;
  v18 = [(GKContactsIntegrationController *)&v31 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_migrator, migrator);
    objc_storeStrong(&v19->_metricsHandler, handler);
    objc_storeStrong(&v19->_eligibilityChecker, checker);
    objc_storeStrong(&v19->_playerProvider, provider);
    objc_storeStrong(&v19->_contactStore, store);
    v20 = dispatch_queue_create("com.apple.GameKit.contactsIntegration.serialQueue", 0);
    serialQueue = v19->_serialQueue;
    v19->_serialQueue = v20;

    v22 = dispatch_queue_create("com.apple.GameKit.contactsIntegration.idsBatchQueue", 0);
    idsBatchQueue = v19->_idsBatchQueue;
    v19->_idsBatchQueue = v22;

    v24 = dispatch_queue_create("com.apple.GameKit.contactsIntegration.contactsBatchQueue", 0);
    contactsBatchQueue = v19->_contactsBatchQueue;
    v19->_contactsBatchQueue = v24;

    objc_storeStrong(&v19->_connectionManager, manager);
    [(GKIDSConnectionManager *)v19->_connectionManager setDelegate:v19, handlerCopy, checkerCopy, providerCopy, managerCopy];
    [centerCopy addObserver:v19 selector:"playerAuthenticated:" name:GKPrimaryCredentialDidChangeNotification object:0];
    [centerCopy addObserver:v19 selector:"storeBagUpdated:" name:@"GKStoreBagUpdatedNotification" object:0];
    [centerCopy addObserver:v19 selector:"contactsChanged:" name:CNContactStoreDidChangeNotification object:0];
    [centerCopy addObserver:v19 selector:"reachabilityChanged:" name:@"GKNetworkReachabilityChangedNotification" object:0];
  }

  return v19;
}

- (BOOL)isEligibleAllowingIneligibility:(unint64_t)ineligibility usingSettings:(id)settings withContext:(id)context
{
  contextCopy = context;
  settingsCopy = settings;
  eligibilityChecker = [(GKContactsIntegrationController *)self eligibilityChecker];
  playerProvider = [(GKContactsIntegrationController *)self playerProvider];
  localPlayer = [playerProvider localPlayer];
  connectionManager = [(GKContactsIntegrationController *)self connectionManager];
  LOBYTE(ineligibility) = [eligibilityChecker isEligibleAllowingIneligibility:ineligibility usingSettings:settingsCopy localPlayerInternal:localPlayer isConnectionManagerReady:objc_msgSend(connectionManager withContext:{"isReady"), contextCopy}];

  return ineligibility;
}

- (BOOL)isEligibleAllowingIneligibility:(unint64_t)ineligibility usingSettings:(id)settings
{
  settingsCopy = settings;
  playerProvider = [(GKContactsIntegrationController *)self playerProvider];
  localPlayerCacheGroup = [playerProvider localPlayerCacheGroup];

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  context = [localPlayerCacheGroup context];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10016C680;
  v13[3] = &unk_100369A00;
  v16 = &v18;
  ineligibilityCopy = ineligibility;
  v13[4] = self;
  v10 = settingsCopy;
  v14 = v10;
  v11 = localPlayerCacheGroup;
  v15 = v11;
  [context performBlockAndWait:v13];

  LOBYTE(settingsCopy) = *(v19 + 24);
  _Block_object_dispose(&v18, 8);

  return settingsCopy;
}

- (void)startWithOptions:(unint64_t)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  v7 = [NSString stringWithFormat:@"%s:%d %s", "GKContactsIntegrationController.m", 173, "[GKContactsIntegrationController startWithOptions:completion:]"];
  v8 = [GKDispatchGroup dispatchGroupWithName:v7];

  if (optionsCopy)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10016C86C;
    v11[3] = &unk_100361620;
    v11[4] = self;
    [v8 perform:v11];
  }

  if ((optionsCopy & 2) != 0)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10016C934;
    v10[3] = &unk_100361620;
    v10[4] = self;
    [v8 perform:v10];
  }

  serialQueue = [(GKContactsIntegrationController *)self serialQueue];
  [v8 notifyOnQueue:serialQueue block:completionCopy];
}

- (void)startContactsSyncAllowingChangeHistory:(BOOL)history completion:(id)completion
{
  completionCopy = completion;
  v6 = dispatch_get_current_queue();
  serialQueue = [(GKContactsIntegrationController *)self serialQueue];

  if (v6 != serialQueue)
  {
    label = dispatch_queue_get_label(v6);
    serialQueue2 = [(GKContactsIntegrationController *)self serialQueue];
    v10 = dispatch_queue_get_label(serialQueue2);
    v11 = +[NSThread callStackSymbols];
    v12 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKContactsIntegrationController startContactsSyncAllowingChangeHistory:completion:]", label, v10, v11];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKContactsIntegrationController.m"];
    lastPathComponent = [v13 lastPathComponent];
    v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == self.serialQueue)\n[%s (%s:%d)]", v12, "-[GKContactsIntegrationController startContactsSyncAllowingChangeHistory:completion:]", [lastPathComponent UTF8String], 193);

    [NSException raise:@"GameKit Exception" format:@"%@", v15];
  }

  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_10016D070;
  v65[3] = &unk_100360FA0;
  v16 = completionCopy;
  v66 = v16;
  v17 = objc_retainBlock(v65);
  contactsUpdateGroup = [(GKContactsIntegrationController *)self contactsUpdateGroup];

  if (!contactsUpdateGroup)
  {
    settings = [(GKContactsIntegrationController *)self settings];
    v61 = 0;
    v62 = &v61;
    v63 = 0x2020000000;
    v64 = 0;
    *buf = 0;
    v56 = buf;
    v57 = 0x3032000000;
    v58 = sub_10016D088;
    v59 = sub_10016D098;
    v60 = 0;
    v54[0] = 0;
    v54[1] = v54;
    v54[2] = 0x2020000000;
    v54[3] = 0;
    v22 = objc_autoreleasePoolPush();
    playerProvider = [(GKContactsIntegrationController *)self playerProvider];
    localPlayerCacheGroup = [playerProvider localPlayerCacheGroup];

    context = [localPlayerCacheGroup context];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_10016D0A0;
    v49[3] = &unk_100369A28;
    v52 = &v61;
    v49[4] = self;
    v26 = settings;
    v50 = v26;
    v27 = localPlayerCacheGroup;
    v51 = v27;
    v53 = buf;
    [context performBlockAndWait:v49];

    objc_autoreleasePoolPop(v22);
    if (v62[3])
    {
      if (history || !*(v56 + 5))
      {
        if (!os_log_GKGeneral)
        {
          v32 = GKOSLoggers();
        }

        v33 = os_log_GKContacts;
        if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
        {
          LOWORD(v48) = 0;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Syncing contacts", &v48, 2u);
        }

        objc_initWeak(&v48, self);
        v34 = [NSString stringWithFormat:@"%s:%d %s", "GKContactsIntegrationController.m", 248, "[GKContactsIntegrationController startContactsSyncAllowingChangeHistory:completion:]"];
        v35 = [GKDispatchGroup dispatchGroupWithName:v34];
        [(GKContactsIntegrationController *)self setContactsUpdateGroup:v35];

        contactsUpdateGroup2 = [(GKContactsIntegrationController *)self contactsUpdateGroup];
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_10016D1CC;
        v43[3] = &unk_100369A78;
        objc_copyWeak(&v47, &v48);
        v45 = buf;
        v44 = v26;
        v46 = v54;
        [contactsUpdateGroup2 perform:v43];

        contactsUpdateGroup3 = [(GKContactsIntegrationController *)self contactsUpdateGroup];
        serialQueue3 = [(GKContactsIntegrationController *)self serialQueue];
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_10016D394;
        v40[3] = &unk_100368028;
        objc_copyWeak(&v42, &v48);
        v41 = v17;
        [contactsUpdateGroup3 notifyOnQueue:serialQueue3 block:v40];

        objc_destroyWeak(&v42);
        objc_destroyWeak(&v47);
        objc_destroyWeak(&v48);
        goto LABEL_27;
      }

      if (!os_log_GKGeneral)
      {
        v28 = GKOSLoggers();
      }

      v29 = os_log_GKContacts;
      if (!os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
      {
LABEL_21:
        (v17[2])(v17);
LABEL_27:
        _Block_object_dispose(v54, 8);
        _Block_object_dispose(buf, 8);

        _Block_object_dispose(&v61, 8);
        goto LABEL_28;
      }

      LOWORD(v48) = 0;
      v30 = "Will not perform contacts sync since a change history token exists";
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v31 = GKOSLoggers();
      }

      v29 = os_log_GKContacts;
      if (!os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
      {
        goto LABEL_21;
      }

      LOWORD(v48) = 0;
      v30 = "Will not perform contacts sync due to eligibility state";
    }

    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, v30, &v48, 2u);
    goto LABEL_21;
  }

  if (!os_log_GKGeneral)
  {
    v19 = GKOSLoggers();
  }

  v20 = os_log_GKContacts;
  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Contacts sync already in progress, skipping.", buf, 2u);
  }

  (v17[2])(v17);
LABEL_28:
}

- (unint64_t)calculateRemainingIDSHandleQueryCountUsingSettings:(id)settings withContext:(id)context
{
  settingsCopy = settings;
  v6 = [GKCDIDSInfoList _gkPrimaryListWithContext:context];
  updateIntervalStartTimeStamp = [v6 updateIntervalStartTimeStamp];
  [settingsCopy idsUpdateInterval];
  v8 = [updateIntervalStartTimeStamp dateByAddingTimeInterval:?];

  v9 = +[NSDate date];
  if (!v8 || [v8 compare:v9] == -1)
  {
    [v6 _gkReset];
  }

  updateIntervalHandlesCount = [v6 updateIntervalHandlesCount];
  intValue = [updateIntervalHandlesCount intValue];

  idsV2FetchSize = [settingsCopy idsV2FetchSize];
  v13 = (idsV2FetchSize - intValue) & ~((idsV2FetchSize - intValue) >> 63);

  return v13;
}

- (void)stateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  serialQueue = [(GKContactsIntegrationController *)self serialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10016D594;
  v7[3] = &unk_100361270;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(serialQueue, v7);
}

- (void)logStateWithMoc:(id)moc syncState:(unint64_t)state
{
  mocCopy = moc;
  v7 = [GKContactsIntegrationState alloc];
  settings = [(GKContactsIntegrationController *)self settings];
  v9 = [v7 initWithMoc:mocCopy settings:settings controllerState:state];

  v10 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
    v10 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Current contacts integration state: %@", &v12, 0xCu);
  }
}

- (void)refetchIDSHandlesInPriorityOrderWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_current_queue();
  serialQueue = [(GKContactsIntegrationController *)self serialQueue];

  if (v5 != serialQueue)
  {
    label = dispatch_queue_get_label(v5);
    serialQueue2 = [(GKContactsIntegrationController *)self serialQueue];
    v9 = dispatch_queue_get_label(serialQueue2);
    v10 = +[NSThread callStackSymbols];
    v11 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKContactsIntegrationController refetchIDSHandlesInPriorityOrderWithCompletion:]", label, v9, v10];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKContactsIntegrationController.m"];
    lastPathComponent = [v12 lastPathComponent];
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == self.serialQueue)\n[%s (%s:%d)]", v11, "-[GKContactsIntegrationController refetchIDSHandlesInPriorityOrderWithCompletion:]", [lastPathComponent UTF8String], 321);

    [NSException raise:@"GameKit Exception" format:@"%@", v14];
  }

  if (!os_log_GKGeneral)
  {
    v15 = GKOSLoggers();
  }

  v16 = os_log_GKContacts;
  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "IDS refetch beginning", buf, 2u);
  }

  settings = [(GKContactsIntegrationController *)self settings];
  syncState = [(GKContactsIntegrationController *)self syncState];
  playerProvider = [(GKContactsIntegrationController *)self playerProvider];
  localPlayerCacheGroup = [playerProvider localPlayerCacheGroup];

  context = [localPlayerCacheGroup context];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10016DAF4;
  v25[3] = &unk_100364128;
  v26 = localPlayerCacheGroup;
  selfCopy = self;
  v30 = syncState;
  v31 = 0;
  v28 = settings;
  v29 = completionCopy;
  v22 = completionCopy;
  v23 = settings;
  v24 = localPlayerCacheGroup;
  [context performBlock:v25];
}

- (void)updateIntervalHasFinishedExceedingIDSLimit:(BOOL)limit allowingIneligibility:(unint64_t)ineligibility usingSettings:(id)settings
{
  settingsCopy = settings;
  if (limit)
  {
    playerProvider = [(GKContactsIntegrationController *)self playerProvider];
    localPlayerCacheGroup = [playerProvider localPlayerCacheGroup];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10016E11C;
    v19[3] = &unk_100363F28;
    v11 = localPlayerCacheGroup;
    v20 = v11;
    selfCopy = self;
    ineligibilityCopy = ineligibility;
    v22 = settingsCopy;
    [v11 performOnManagedObjectContext:v19];
    serialQueue = [(GKContactsIntegrationController *)self serialQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10016E224;
    v16[3] = &unk_1003610B8;
    v17 = v11;
    selfCopy2 = self;
    v13 = v11;
    [v13 notifyOnQueue:serialQueue block:v16];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v14 = GKOSLoggers();
    }

    v15 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "No additional IDS handles to query. Stopping any existing timers.", buf, 2u);
    }

    [(GKContactsIntegrationController *)self stop];
  }
}

- (id)handlesExcludingNoneExpiredFromHandles:(id)handles isAlreadyWaitingOnLimitTimer:(BOOL)timer settings:(id)settings moc:(id)moc error:(id *)error
{
  timerCopy = timer;
  handlesCopy = handles;
  settingsCopy = settings;
  mocCopy = moc;
  v15 = [handlesCopy mutableCopy];
  v16 = [(GKContactsIntegrationController *)self calculateRemainingIDSHandleQueryCountUsingSettings:settingsCopy withContext:mocCopy];
  v53 = mocCopy;
  v54 = handlesCopy;
  if (!v16 || timerCopy)
  {
    if (!os_log_GKGeneral)
    {
      v47 = GKOSLoggers();
    }

    v48 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "Will not fetch handles for contact since cache updates are busy or IDS limit breached.", buf, 2u);
    }

    v49 = GKContactsIntegrationErrorDomain;
    v62 = @"reason";
    v17 = [NSNumber numberWithUnsignedInteger:v16];
    v24 = [NSNumber numberWithBool:timerCopy];
    v50 = [NSString stringWithFormat:@"remainingHandlesToUpdate: %@, isAlreadyWaitingOnLimitTimer: %@", v17, v24];
    v63 = v50;
    v51 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    *error = [NSError errorWithDomain:v49 code:4 userInfo:v51];

    v46 = 0;
    v37 = v53;
    v36 = handlesCopy;
  }

  else
  {
    v17 = +[GKCDIDSInfo _gkFetchRequest];
    handlesCopy = [NSPredicate predicateWithFormat:@"handle IN %@", handlesCopy];
    [v17 setPredicate:handlesCopy];

    v19 = [GKCDIDSInfo _gkObjectsFromFetchRequest:v17 withContext:mocCopy];
    if (!os_log_GKGeneral)
    {
      v20 = GKOSLoggers();
    }

    v21 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
    {
      v22 = v21;
      v23 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v19 count]);
      *buf = 138412290;
      v61 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Existing matching entries count: %@", buf, 0xCu);
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v24 = v19;
    v25 = [v24 countByEnumeratingWithState:&v55 objects:v59 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v56;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v56 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v55 + 1) + 8 * i);
          if (([v29 isExpiredForSettings:settingsCopy] & 1) == 0)
          {
            handle = [v29 handle];

            if (handle)
            {
              handle2 = [v29 handle];
              [v15 removeObject:handle2];
            }
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v55 objects:v59 count:16];
      }

      while (v26);
    }

    if (!os_log_GKGeneral)
    {
      v32 = GKOSLoggers();
    }

    v33 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
    {
      v34 = v33;
      v35 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v15 count]);
      *buf = 138412290;
      v61 = v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "None expired handles excluded, fetch count: %@", buf, 0xCu);
    }

    v37 = v53;
    v36 = v54;
    if (v16 < [v15 count])
    {
      if (!os_log_GKGeneral)
      {
        v38 = GKOSLoggers();
      }

      v39 = os_log_GKContacts;
      if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
      {
        v40 = v39;
        v41 = [NSNumber numberWithUnsignedInteger:v16];
        *buf = 138412290;
        v61 = v41;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "IDS limit reached, limiting fetch size to: %@", buf, 0xCu);
      }

      allObjects = [v15 allObjects];
      v43 = [allObjects subarrayWithRange:{0, v16}];
      v44 = [NSSet setWithArray:v43];
      v45 = [v44 mutableCopy];

      v15 = v45;
    }

    v15 = v15;
    v46 = v15;
  }

  return v46;
}

- (void)syncIDSDataForHandles:(id)handles forcefully:(BOOL)forcefully completion:(id)completion
{
  handlesCopy = handles;
  completionCopy = completion;
  serialQueue = [(GKContactsIntegrationController *)self serialQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10016EA34;
  v13[3] = &unk_100362750;
  forcefullyCopy = forcefully;
  v13[4] = self;
  v14 = handlesCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = handlesCopy;
  dispatch_async(serialQueue, v13);
}

- (void)fetchIDSDataAndUpdateCacheForHandles:(id)handles allowingIneligibility:(unint64_t)ineligibility usingSettings:(id)settings withDelay:(BOOL)delay completion:(id)completion
{
  handlesCopy = handles;
  settingsCopy = settings;
  completionCopy = completion;
  if (!os_log_GKGeneral)
  {
    v15 = GKOSLoggers();
  }

  v16 = os_log_GKContacts;
  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
  {
    v17 = v16;
    v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [handlesCopy count]);
    *buf = 138412290;
    v38 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Beginning fetches with IDS with a handle count of: %@", buf, 0xCu);
  }

  idsV2BatchFetchSize = [settingsCopy idsV2BatchFetchSize];
  if (idsV2BatchFetchSize)
  {
    v20 = idsV2BatchFetchSize;
    allObjects = [handlesCopy allObjects];
    v22 = [allObjects count];
    idsBatchQueue = [(GKContactsIntegrationController *)self idsBatchQueue];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10016F328;
    v27[3] = &unk_100369B18;
    v27[4] = self;
    v28 = allObjects;
    v31 = 0;
    v32 = v20;
    v33 = v20;
    v34 = v22;
    ineligibilityCopy = ineligibility;
    v29 = settingsCopy;
    delayCopy = delay;
    v30 = completionCopy;
    v24 = allObjects;
    dispatch_async(idsBatchQueue, v27);
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v25 = GKOSLoggers();
    }

    v26 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Will not fetch handles with IDS since batch size is currently 0", buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)fetchIDSDataAndUpdateCacheForHandles:(id)handles rangeToFetch:(_NSRange)fetch maxBatchSize:(unint64_t)size numberOfHandlesLeft:(int64_t)left allowingIneligibility:(unint64_t)ineligibility settings:(id)settings withDelay:(BOOL)delay completion:(id)self0
{
  length = fetch.length;
  location = fetch.location;
  handlesCopy = handles;
  settingsCopy = settings;
  completionCopy = completion;
  v12 = dispatch_get_current_queue();
  val = self;
  idsBatchQueue = [(GKContactsIntegrationController *)self idsBatchQueue];

  if (v12 != idsBatchQueue)
  {
    label = dispatch_queue_get_label(v12);
    idsBatchQueue2 = [(GKContactsIntegrationController *)val idsBatchQueue];
    v16 = dispatch_queue_get_label(idsBatchQueue2);
    v17 = +[NSThread callStackSymbols];
    v18 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKContactsIntegrationController fetchIDSDataAndUpdateCacheForHandles:rangeToFetch:maxBatchSize:numberOfHandlesLeft:allowingIneligibility:settings:withDelay:completion:]", label, v16, v17];
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKContactsIntegrationController.m"];
    lastPathComponent = [v19 lastPathComponent];
    v21 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == self.idsBatchQueue)\n[%s (%s:%d)]", v18, "-[GKContactsIntegrationController fetchIDSDataAndUpdateCacheForHandles:rangeToFetch:maxBatchSize:numberOfHandlesLeft:allowingIneligibility:settings:withDelay:completion:]", [lastPathComponent UTF8String], 647);

    [NSException raise:@"GameKit Exception" format:@"%@", v21];
  }

  v22 = [handlesCopy count];
  if (left >= 1 && length)
  {
    if (&length[location] > v22)
    {
      length = &v22[-location];
    }

    if (!os_log_GKGeneral)
    {
      v23 = GKOSLoggers();
    }

    v24 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
    {
      v25 = v24;
      v26 = [NSNumber numberWithUnsignedInteger:location];
      v27 = [NSNumber numberWithUnsignedInteger:length];
      v28 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [handlesCopy count]);
      *buf = 138412802;
      v48 = v26;
      v49 = 2112;
      v50 = v27;
      v51 = 2112;
      v52 = v28;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Fetching range: (%@, %@) of total count: %@", buf, 0x20u);
    }

    v29 = [handlesCopy subarrayWithRange:{location, length}];
    connectionManager = [(GKContactsIntegrationController *)val connectionManager];
    objc_initWeak(buf, val);
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_10016F810;
    v41[3] = &unk_100369B40;
    objc_copyWeak(v45, buf);
    v42 = handlesCopy;
    v45[1] = location;
    v45[2] = length;
    v45[3] = size;
    v45[4] = left;
    v45[5] = ineligibility;
    v43 = settingsCopy;
    delayCopy = delay;
    v44 = completionCopy;
    [connectionManager fetchIDSDataForHandles:v29 service:@"com.apple.private.alloy.arcade" infoTypes:5 performingBlockPerBatch:v41];

    objc_destroyWeak(v45);
    objc_destroyWeak(buf);
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v31 = GKOSLoggers();
    }

    v32 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "IDS fetching stopping since we have reached the of end of all batches", buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)handleIDSFetchResult:(id)result handlesToQuery:(id)query rangeToFetch:(_NSRange)fetch maxBatchSize:(unint64_t)size numberOfHandlesLeft:(int64_t)left allowingIneligibility:(unint64_t)ineligibility settings:(id)settings withDelay:(BOOL)self0 completion:(id)self1
{
  length = fetch.length;
  location = fetch.location;
  resultCopy = result;
  queryCopy = query;
  settingsCopy = settings;
  completionCopy = completion;
  playerProvider = [(GKContactsIntegrationController *)self playerProvider];
  localPlayerCacheGroup = [playerProvider localPlayerCacheGroup];

  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_10016FD30;
  v43[3] = &unk_100364608;
  v20 = localPlayerCacheGroup;
  v44 = v20;
  v45 = resultCopy;
  selfCopy = self;
  ineligibilityCopy = ineligibility;
  v21 = settingsCopy;
  v47 = v21;
  v22 = resultCopy;
  [v20 performOnManagedObjectContext:v43];
  idsBatchQueue = [(GKContactsIntegrationController *)self idsBatchQueue];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1001702FC;
  v31[3] = &unk_100369BB8;
  v32 = v20;
  v33 = v21;
  v36 = completionCopy;
  v37 = location;
  v38 = length;
  sizeCopy = size;
  selfCopy2 = self;
  v35 = queryCopy;
  leftCopy = left;
  ineligibilityCopy2 = ineligibility;
  delayCopy = delay;
  v24 = queryCopy;
  v25 = v21;
  v26 = completionCopy;
  v27 = v20;
  [v27 notifyOnQueue:idsBatchQueue block:v31];
}

- (BOOL)isAlreadyWaitingOnLimitTimer
{
  v3 = dispatch_get_current_queue();
  serialQueue = [(GKContactsIntegrationController *)self serialQueue];

  if (v3 != serialQueue)
  {
    label = dispatch_queue_get_label(v3);
    serialQueue2 = [(GKContactsIntegrationController *)self serialQueue];
    v7 = dispatch_queue_get_label(serialQueue2);
    v8 = +[NSThread callStackSymbols];
    v9 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKContactsIntegrationController isAlreadyWaitingOnLimitTimer]", label, v7, v8];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKContactsIntegrationController.m"];
    lastPathComponent = [v10 lastPathComponent];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == self.serialQueue)\n[%s (%s:%d)]", v9, "-[GKContactsIntegrationController isAlreadyWaitingOnLimitTimer]", [lastPathComponent UTF8String], 854);

    [NSException raise:@"GameKit Exception" format:@"%@", v12];
  }

  idsCacheUpdateTimer = [(GKContactsIntegrationController *)self idsCacheUpdateTimer];
  v14 = idsCacheUpdateTimer != 0;

  return v14;
}

- (void)getRelationshipsForContacts:(id)contacts updateExistingContactEntries:(BOOL)entries completionHandler:(id)handler
{
  entriesCopy = entries;
  contactsCopy = contacts;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKContacts;
  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v21 = entriesCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Getting relationships for contact with updateExistingContactEntries: %d", buf, 8u);
  }

  serialQueue = [(GKContactsIntegrationController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100170B68;
  block[3] = &unk_100369C30;
  v17 = handlerCopy;
  v18 = 8;
  block[4] = self;
  v16 = contactsCopy;
  v19 = entriesCopy;
  v13 = contactsCopy;
  v14 = handlerCopy;
  dispatch_async(serialQueue, block);
}

- (id)relationshipForMeContact
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKContacts;
  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Loading relationships for the me contact", buf, 2u);
  }

  playerProvider = [(GKContactsIntegrationController *)self playerProvider];
  localPlayerCacheGroup = [playerProvider localPlayerCacheGroup];

  *buf = 0;
  v22 = buf;
  v23 = 0x3032000000;
  v24 = sub_10016D088;
  v25 = sub_10016D098;
  v26 = 0;
  context = [localPlayerCacheGroup context];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100171258;
  v18 = &unk_100364898;
  v8 = localPlayerCacheGroup;
  v19 = v8;
  v20 = buf;
  [context performBlockAndWait:&v15];

  if (*(v22 + 5))
  {
    v9 = [(GKContactsIntegrationController *)self playerProvider:v15];
    localPlayer = [v9 localPlayer];
    accountName = [localPlayer accountName];

    v12 = objc_opt_new();
    [v12 setRelationship:2];
    [v12 setRelatedPlayer:*(v22 + 5)];
    if ([accountName length])
    {
      v13 = accountName;
    }

    else
    {
      v13 = 0;
    }

    [v12 setHandle:v13];
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(buf, 8);

  return v12;
}

- (void)relationshipsForContacts:(id)contacts updateExistingContactEntries:(BOOL)entries allowingIneligibility:(unint64_t)ineligibility usingSettings:(id)settings meContactID:(id)d completionHandler:(id)handler
{
  entriesCopy = entries;
  contactsCopy = contacts;
  settingsCopy = settings;
  dCopy = d;
  handlerCopy = handler;
  v17 = dispatch_get_current_queue();
  serialQueue = [(GKContactsIntegrationController *)self serialQueue];

  if (v17 != serialQueue)
  {
    v39 = dCopy;
    v40 = contactsCopy;
    ineligibilityCopy = ineligibility;
    label = dispatch_queue_get_label(v17);
    serialQueue2 = [(GKContactsIntegrationController *)self serialQueue];
    v21 = dispatch_queue_get_label(serialQueue2);
    v22 = +[NSThread callStackSymbols];
    v23 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKContactsIntegrationController relationshipsForContacts:updateExistingContactEntries:allowingIneligibility:usingSettings:meContactID:completionHandler:]", label, v21, v22];
    v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKContactsIntegrationController.m"];
    lastPathComponent = [v24 lastPathComponent];
    v26 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == self.serialQueue)\n[%s (%s:%d)]", v23, "-[GKContactsIntegrationController relationshipsForContacts:updateExistingContactEntries:allowingIneligibility:usingSettings:meContactID:completionHandler:]", [lastPathComponent UTF8String], 953);

    dCopy = v39;
    ineligibility = ineligibilityCopy;

    [NSException raise:@"GameKit Exception" format:@"%@", v26];
    contactsCopy = v40;
  }

  isAlreadyWaitingOnLimitTimer = [(GKContactsIntegrationController *)self isAlreadyWaitingOnLimitTimer];
  playerProvider = [(GKContactsIntegrationController *)self playerProvider];
  localPlayerCacheGroup = [playerProvider localPlayerCacheGroup];

  if (!os_log_GKGeneral)
  {
    v30 = GKOSLoggers();
  }

  v31 = os_log_GKContacts;
  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v52 = entriesCopy;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Proceeding to relationships for contact with updateExistingContactEntries: %d", buf, 8u);
  }

  context = [localPlayerCacheGroup context];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_10017167C;
  v42[3] = &unk_100369C80;
  v42[4] = self;
  v43 = contactsCopy;
  v49 = entriesCopy;
  v44 = dCopy;
  v45 = localPlayerCacheGroup;
  v50 = isAlreadyWaitingOnLimitTimer;
  v46 = settingsCopy;
  v47 = handlerCopy;
  ineligibilityCopy2 = ineligibility;
  v33 = handlerCopy;
  v34 = settingsCopy;
  v35 = localPlayerCacheGroup;
  v36 = dCopy;
  v37 = contactsCopy;
  [context performBlock:v42];
}

- (void)playerAuthenticated:(id)authenticated
{
  authenticatedCopy = authenticated;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKContacts;
  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Received player authenticated changed notification.", buf, 2u);
  }

  serialQueue = [(GKContactsIntegrationController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100171EAC;
  block[3] = &unk_100361770;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)contactsChanged:(id)changed
{
  serialQueue = [(GKContactsIntegrationController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100171F44;
  block[3] = &unk_100361770;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)reachabilityChanged:(id)changed
{
  changedCopy = changed;
  serialQueue = [(GKContactsIntegrationController *)self serialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100172220;
  v7[3] = &unk_1003610B8;
  v7[4] = self;
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(serialQueue, v7);
}

- (void)handleReachabilityChanged
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKContacts;
  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Handling reachability notification", buf, 2u);
  }

  playerProvider = [(GKContactsIntegrationController *)self playerProvider];
  localPlayerCacheGroup = [playerProvider localPlayerCacheGroup];

  context = [localPlayerCacheGroup context];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001725B8;
  v9[3] = &unk_100361770;
  v10 = localPlayerCacheGroup;
  v8 = localPlayerCacheGroup;
  [context performBlock:v9];
}

- (void)storeBagUpdated:(id)updated
{
  object = [updated object];
  if (object)
  {
    v5 = +[GKContactsIntegrationControllerSettings allBagKeys];
    serialQueue = [(GKContactsIntegrationController *)self serialQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100172854;
    v8[3] = &unk_100361248;
    v8[4] = self;
    [object getValuesForKeys:v5 queue:serialQueue completion:v8];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100293C30();
    }
  }
}

- (BOOL)idsSyncInProgress
{
  v3 = dispatch_get_current_queue();
  serialQueue = [(GKContactsIntegrationController *)self serialQueue];

  if (v3 != serialQueue)
  {
    label = dispatch_queue_get_label(v3);
    serialQueue2 = [(GKContactsIntegrationController *)self serialQueue];
    v7 = dispatch_queue_get_label(serialQueue2);
    v8 = +[NSThread callStackSymbols];
    v9 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKContactsIntegrationController idsSyncInProgress]", label, v7, v8];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKContactsIntegrationController.m"];
    lastPathComponent = [v10 lastPathComponent];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == self.serialQueue)\n[%s (%s:%d)]", v9, "-[GKContactsIntegrationController idsSyncInProgress]", [lastPathComponent UTF8String], 1152);

    [NSException raise:@"GameKit Exception" format:@"%@", v12];
  }

  idsUpdateGroup = [(GKContactsIntegrationController *)self idsUpdateGroup];

  if (idsUpdateGroup)
  {
    if (!os_log_GKGeneral)
    {
      v14 = GKOSLoggers();
    }

    v15 = os_log_GKContacts;
    LOBYTE(idsCacheUpdateTimer) = 1;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
    {
      v22 = 0;
      v17 = "Cache updates already in progress, skipping.";
      v18 = &v22;
LABEL_13:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, v17, v18, 2u);
    }
  }

  else
  {
    idsCacheUpdateTimer = [(GKContactsIntegrationController *)self idsCacheUpdateTimer];

    if (idsCacheUpdateTimer)
    {
      if (!os_log_GKGeneral)
      {
        v19 = GKOSLoggers();
      }

      v15 = os_log_GKContacts;
      LOBYTE(idsCacheUpdateTimer) = 1;
      if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v17 = "Cache update timer already setup, will not trigger another update now.";
        v18 = buf;
        goto LABEL_13;
      }
    }
  }

  return idsCacheUpdateTimer;
}

- (BOOL)contactsSyncInProgress
{
  v3 = dispatch_get_current_queue();
  serialQueue = [(GKContactsIntegrationController *)self serialQueue];

  if (v3 != serialQueue)
  {
    label = dispatch_queue_get_label(v3);
    serialQueue2 = [(GKContactsIntegrationController *)self serialQueue];
    v7 = dispatch_queue_get_label(serialQueue2);
    v8 = +[NSThread callStackSymbols];
    v9 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKContactsIntegrationController contactsSyncInProgress]", label, v7, v8];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKContactsIntegrationController.m"];
    lastPathComponent = [v10 lastPathComponent];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == self.serialQueue)\n[%s (%s:%d)]", v9, "-[GKContactsIntegrationController contactsSyncInProgress]", [lastPathComponent UTF8String], 1166);

    [NSException raise:@"GameKit Exception" format:@"%@", v12];
  }

  contactsUpdateGroup = [(GKContactsIntegrationController *)self contactsUpdateGroup];
  v14 = contactsUpdateGroup != 0;

  return v14;
}

- (unint64_t)syncState
{
  v3 = dispatch_get_current_queue();
  serialQueue = [(GKContactsIntegrationController *)self serialQueue];

  if (v3 != serialQueue)
  {
    label = dispatch_queue_get_label(v3);
    serialQueue2 = [(GKContactsIntegrationController *)self serialQueue];
    v7 = dispatch_queue_get_label(serialQueue2);
    v8 = +[NSThread callStackSymbols];
    v9 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKContactsIntegrationController syncState]", label, v7, v8];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKContactsIntegrationController.m"];
    lastPathComponent = [v10 lastPathComponent];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == self.serialQueue)\n[%s (%s:%d)]", v9, "-[GKContactsIntegrationController syncState]", [lastPathComponent UTF8String], 1172);

    [NSException raise:@"GameKit Exception" format:@"%@", v12];
  }

  contactsSyncInProgress = [(GKContactsIntegrationController *)self contactsSyncInProgress];
  if ([(GKContactsIntegrationController *)self idsSyncInProgress])
  {
    return contactsSyncInProgress | 2;
  }

  else
  {
    return contactsSyncInProgress;
  }
}

- (void)startIDSSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKContacts;
  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Will begin cache updates.", buf, 2u);
  }

  serialQueue = [(GKContactsIntegrationController *)self serialQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001730B4;
  v9[3] = &unk_100361270;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(serialQueue, v9);
}

- (void)stop
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKContacts;
  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Will stop cache updates.", buf, 2u);
  }

  serialQueue = [(GKContactsIntegrationController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100173778;
  block[3] = &unk_100361770;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)setupIDSCacheUpdateTimerWithStartTime:(double)time
{
  v5 = dispatch_get_current_queue();
  serialQueue = [(GKContactsIntegrationController *)self serialQueue];

  if (v5 != serialQueue)
  {
    label = dispatch_queue_get_label(v5);
    serialQueue2 = [(GKContactsIntegrationController *)self serialQueue];
    v9 = dispatch_queue_get_label(serialQueue2);
    v10 = +[NSThread callStackSymbols];
    v11 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKContactsIntegrationController setupIDSCacheUpdateTimerWithStartTime:]", label, v9, v10];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKContactsIntegrationController.m"];
    lastPathComponent = [v12 lastPathComponent];
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == self.serialQueue)\n[%s (%s:%d)]", v11, "-[GKContactsIntegrationController setupIDSCacheUpdateTimerWithStartTime:]", [lastPathComponent UTF8String], 1238);

    [NSException raise:@"GameKit Exception" format:@"%@", v14];
  }

  if (!os_log_GKGeneral)
  {
    v15 = GKOSLoggers();
  }

  v16 = os_log_GKContacts;
  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    timeCopy = time;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Setting up a one time IDS timer with startTime: %f", buf, 0xCu);
  }

  idsCacheUpdateTimer = [(GKContactsIntegrationController *)self idsCacheUpdateTimer];
  [idsCacheUpdateTimer cancel];

  v18 = objc_alloc_init(GKContactsIntegrationTimer);
  [(GKContactsIntegrationController *)self setIdsCacheUpdateTimer:v18];

  objc_initWeak(buf, self);
  idsCacheUpdateTimer2 = [(GKContactsIntegrationController *)self idsCacheUpdateTimer];
  v20 = dispatch_walltime(0, (time * 1000000000.0));
  serialQueue3 = [(GKContactsIntegrationController *)self serialQueue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100173AC0;
  v22[3] = &unk_100368CC8;
  objc_copyWeak(&v23, buf);
  v22[4] = self;
  [idsCacheUpdateTimer2 startWithStartTime:v20 updateInterval:-1 queue:serialQueue3 updateBlock:v22 cancelBlock:&stru_100369D10];

  objc_destroyWeak(&v23);
  objc_destroyWeak(buf);
}

- (void)stopCacheUpdates
{
  v3 = dispatch_get_current_queue();
  serialQueue = [(GKContactsIntegrationController *)self serialQueue];

  if (v3 != serialQueue)
  {
    label = dispatch_queue_get_label(v3);
    serialQueue2 = [(GKContactsIntegrationController *)self serialQueue];
    v7 = dispatch_queue_get_label(serialQueue2);
    v8 = +[NSThread callStackSymbols];
    v9 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKContactsIntegrationController stopCacheUpdates]", label, v7, v8];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKContactsIntegrationController.m"];
    lastPathComponent = [v10 lastPathComponent];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == self.serialQueue)\n[%s (%s:%d)]", v9, "-[GKContactsIntegrationController stopCacheUpdates]", [lastPathComponent UTF8String], 1279);

    [NSException raise:@"GameKit Exception" format:@"%@", v12];
  }

  idsCacheUpdateTimer = [(GKContactsIntegrationController *)self idsCacheUpdateTimer];
  [idsCacheUpdateTimer cancel];

  [(GKContactsIntegrationController *)self setIdsCacheUpdateTimer:0];
  idsBatchQueue = [(GKContactsIntegrationController *)self idsBatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100174044;
  block[3] = &unk_100361770;
  block[4] = self;
  dispatch_async(idsBatchQueue, block);
}

- (void)clearCachesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  playerProvider = [(GKContactsIntegrationController *)self playerProvider];
  localPlayerCacheGroup = [playerProvider localPlayerCacheGroup];

  serialQueue = [(GKContactsIntegrationController *)self serialQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001741EC;
  v12[3] = &unk_100361620;
  v12[4] = self;
  [localPlayerCacheGroup performOnQueue:serialQueue block:v12];

  [localPlayerCacheGroup performOnManagedObjectContext:&stru_100369D30];
  serialQueue2 = [(GKContactsIntegrationController *)self serialQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001742E4;
  v10[3] = &unk_100360FA0;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [localPlayerCacheGroup notifyOnQueue:serialQueue2 block:v10];
}

- (id)contactAssociationIDMapForHandles:(id)handles withContext:(id)context
{
  v4 = [GKCDIDSInfo _gkObjectsMatchingHandles:handles withContext:context];
  v5 = [v4 _gkMapDictionaryWithKeyPath:@"handle" valueKeyPath:@"contactAssociationID"];

  return v5;
}

- (id)contactAssociationIDMapForContactAssociationIDs:(id)ds withContext:(id)context
{
  v4 = [GKCDIDSInfo _gkObjectsMatchingContactAssociationIDs:ds withContext:context];
  v5 = [v4 _gkMapDictionaryWithKeyPath:@"handle" valueKeyPath:@"contactAssociationID"];

  return v5;
}

- (id)handleMapForContactAssociationIDs:(id)ds withContext:(id)context
{
  v4 = [GKCDIDSInfo _gkObjectsMatchingContactAssociationIDs:ds withContext:context];
  v5 = [v4 _gkMapDictionaryWithKeyPath:@"contactAssociationID" valueKeyPath:@"handle"];

  return v5;
}

- (id)relationshipsForHandles:(id)handles contactAssociationIDMap:(id)map withContext:(id)context
{
  handlesCopy = handles;
  mapCopy = map;
  contextCopy = context;
  if ([handlesCopy count])
  {
    if (![mapCopy count])
    {
      if (!os_log_GKGeneral)
      {
        v9 = GKOSLoggers();
      }

      v10 = os_log_GKContacts;
      if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "No contact association IDs were provided.", buf, 2u);
      }
    }

    v11 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(mapCopy, "count")}];
    allValues = [mapCopy allValues];
    v13 = [NSSet setWithArray:allValues];

    v26 = v13;
    v14 = [(GKContactsIntegrationController *)self createFriendAssociationIDMapWithIDs:v13 withContext:contextCopy];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v27 = handlesCopy;
    v15 = handlesCopy;
    v16 = [v15 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v31;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v31 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v30 + 1) + 8 * i);
          v21 = [mapCopy objectForKeyedSubscript:v20];
          if (v21)
          {
            v22 = [(GKContactsIntegrationController *)self createRelationshipWithHandle:v20 contactAssociationID:v21 usingFriendMap:v14 withContext:contextCopy];
          }

          else
          {
            v22 = objc_opt_new();
            _stripFZIDPrefix = [v20 _stripFZIDPrefix];
            [v22 setHandle:_stripFZIDPrefix];

            [v22 setRelationship:0];
          }

          [v11 addObject:v22];
        }

        v17 = [v15 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v17);
    }

    v24 = [v11 copy];
    handlesCopy = v27;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)createRelationshipWithHandle:(id)handle contactAssociationID:(id)d usingFriendMap:(id)map withContext:(id)context
{
  dCopy = d;
  mapCopy = map;
  handleCopy = handle;
  v11 = objc_opt_new();
  _stripFZIDPrefix = [handleCopy _stripFZIDPrefix];

  [v11 setHandle:_stripFZIDPrefix];
  if ([dCopy length])
  {
    v13 = [mapCopy objectForKeyedSubscript:dCopy];
    if (v13)
    {
      v14 = [[GKPlayerInternal alloc] initWithCacheObject:v13];
      [v11 setRelatedPlayer:v14];

      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    [v11 setRelationship:v15];
  }

  else
  {
    [v11 setRelationship:0];
  }

  return v11;
}

- (id)createFriendAssociationIDMapWithIDs:(id)ds withContext:(id)context
{
  dsCopy = ds;
  contextCopy = context;
  if ([dsCopy count])
  {
    dsCopy = [NSPredicate predicateWithFormat:@"playerID != nil && friendBiDirectional == YES && contactAssociationID != nil && contactAssociationID IN %@", dsCopy];
    v8 = [GKFriendListEntryCacheObject _gkObjectsMatchingPredicate:dsCopy withContext:contextCopy];
    if ([v8 count])
    {
      v9 = [v8 _gkDistinctValuesForKeyPath:@"playerID"];
      v10 = [NSPredicate predicateWithFormat:@"playerID != nil && playerID IN %@", v9];
      v11 = [GKPlayerProfileCacheObject _gkObjectsMatchingPredicate:v10 withContext:contextCopy];
      if ([v11 count])
      {
        v29 = v10;
        v30 = v9;
        v32 = dsCopy;
        v33 = contextCopy;
        v12 = [v11 _gkMapDictionaryWithKeyPath:@"playerID"];
        v28 = v11;
        v13 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v11, "count")}];
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v31 = v8;
        v14 = v8;
        v15 = [v14 countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v35;
          do
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v35 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v34 + 1) + 8 * i);
              playerID = [v19 playerID];
              v21 = [v12 objectForKeyedSubscript:playerID];

              contactAssociationID = [v19 contactAssociationID];
              [v13 setObject:v21 forKeyedSubscript:contactAssociationID];
            }

            v16 = [v14 countByEnumeratingWithState:&v34 objects:v39 count:16];
          }

          while (v16);
        }

        v23 = [v13 copy];
        dsCopy = v32;
        contextCopy = v33;
        v9 = v30;
        v8 = v31;
        v11 = v28;
        v10 = v29;
      }

      else
      {
        if (!os_log_GKGeneral)
        {
          v26 = GKOSLoggers();
        }

        if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
        {
          sub_100293D34();
        }

        v23 = 0;
      }
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v24 = GKOSLoggers();
      }

      v25 = os_log_GKContacts;
      if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "No friends found matching the provided contact associationIDs", buf, 2u);
      }

      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)populateContactInfoForProfiles:(id)profiles replyOnQueue:(id)queue withCompletionHandler:(id)handler
{
  profilesCopy = profiles;
  queueCopy = queue;
  handlerCopy = handler;
  playerProvider = [(GKContactsIntegrationController *)self playerProvider];
  localPlayerCacheGroup = [playerProvider localPlayerCacheGroup];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100174C7C;
  v16[3] = &unk_1003636E0;
  v16[4] = self;
  v17 = profilesCopy;
  v18 = queueCopy;
  v19 = handlerCopy;
  v13 = handlerCopy;
  v14 = queueCopy;
  v15 = profilesCopy;
  [localPlayerCacheGroup performOnManagedObjectContext:v16];
}

- (void)populateContactInfoForProfiles:(id)profiles withContext:(id)context
{
  profilesCopy = profiles;
  contextCopy = context;
  settings = [(GKContactsIntegrationController *)self settings];
  v9 = [(GKContactsIntegrationController *)self isEligibleAllowingIneligibility:0 usingSettings:settings withContext:contextCopy];

  if (v9)
  {
    if ([profilesCopy count])
    {
      if ([profilesCopy count] == 1 && (objc_msgSend(profilesCopy, "firstObject"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isLocalPlayer"), v10, v11))
      {
        if (!os_log_GKGeneral)
        {
          v12 = GKOSLoggers();
        }

        v13 = os_log_GKContacts;
        if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v14 = "Attempting to populate contact info for the local player. Skipping.";
LABEL_31:
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, v14, buf, 2u);
        }
      }

      else
      {
        if (!os_log_GKGeneral)
        {
          v16 = GKOSLoggers();
        }

        v17 = os_log_GKContacts;
        if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
        {
          v18 = v17;
          v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [profilesCopy count]);
          *buf = 138412290;
          v39 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Will attempt to populate contact info for %@ profiles", buf, 0xCu);
        }

        v32 = [profilesCopy _gkDistinctValuesForKeyPath:@"playerID"];
        v31 = [NSPredicate predicateWithFormat:@"friendBiDirectional == YES && playerID != nil && playerID IN %@", v32];
        v20 = [GKFriendListEntryCacheObject _gkObjectsMatchingPredicate:"_gkObjectsMatchingPredicate:withContext:" withContext:?];
        v21 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v20 count]);
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v22 = v20;
        v23 = [v22 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v34;
          do
          {
            for (i = 0; i != v24; i = i + 1)
            {
              if (*v34 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v33 + 1) + 8 * i);
              contactAssociationID = [v27 contactAssociationID];
              if ([contactAssociationID length])
              {
                playerID = [v27 playerID];
                [v21 setObject:contactAssociationID forKeyedSubscript:playerID];
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v33 objects:v37 count:16];
          }

          while (v24);
        }

        [(GKContactsIntegrationController *)self populateContactInfoForProfiles:profilesCopy playerIdToContactAssociationIdMap:v21 withContext:contextCopy];
      }
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v30 = GKOSLoggers();
      }

      v13 = os_log_GKContacts;
      if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v14 = "Attempting to populate contact info without any profiles.";
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v15 = GKOSLoggers();
    }

    v13 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v14 = "Will not populate profiles since the feature is not supported.";
      goto LABEL_31;
    }
  }
}

- (void)populateContactInfoForProfiles:(id)profiles playerIdToContactAssociationIdMap:(id)map withContext:(id)context
{
  profilesCopy = profiles;
  mapCopy = map;
  contextCopy = context;
  v10 = [NSSet alloc];
  v39 = mapCopy;
  allValues = [mapCopy allValues];
  v12 = [v10 initWithArray:allValues];

  v36 = v12;
  v13 = [(GKContactsIntegrationController *)self contactAssociationIDMapForContactAssociationIDs:v12 withContext:contextCopy];
  allKeys = [v13 allKeys];
  v37 = contextCopy;
  v15 = [(GKContactsIntegrationController *)self contactInfosForHandles:allKeys withContext:contextCopy];

  v16 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v15, "count")}];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v15;
  v17 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v47;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v47 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v46 + 1) + 8 * i);
        handle = [v21 handle];
        v23 = [v13 objectForKeyedSubscript:handle];
        if ([v23 length])
        {
          v24 = [v16 objectForKeyedSubscript:v23];

          if (!v24)
          {
            [v16 setObject:v21 forKeyedSubscript:v23];
          }
        }
      }

      v18 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v18);
  }

  metricsHandler = [(GKContactsIntegrationController *)self metricsHandler];
  [metricsHandler recordContactInfoMatchCount:{objc_msgSend(v16, "count")}];

  v26 = v39;
  if ([v16 count])
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = profilesCopy;
    v27 = [v40 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v43;
      do
      {
        for (j = 0; j != v28; j = j + 1)
        {
          if (*v43 != v29)
          {
            objc_enumerationMutation(v40);
          }

          v31 = *(*(&v42 + 1) + 8 * j);
          playerID = [v31 playerID];
          v33 = [v26 objectForKeyedSubscript:playerID];
          if ([v33 length])
          {
            v34 = [v16 objectForKeyedSubscript:v33];
            if (v34)
            {
              v35 = [CNContact _gkContactFromCacheObject:v34];
              [v31 setContact:v35];

              v26 = v39;
            }
          }
        }

        v28 = [v40 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v28);
    }
  }
}

- (id)getContactsForContactAssociationIDs:(id)ds withContext:(id)context
{
  contextCopy = context;
  v7 = [(GKContactsIntegrationController *)self contactAssociationIDMapForContactAssociationIDs:ds withContext:contextCopy];
  allKeys = [v7 allKeys];
  v22 = contextCopy;
  v9 = [(GKContactsIntegrationController *)self contactInfosForHandles:allKeys withContext:contextCopy];

  v10 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v9 count]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        handle = [v16 handle];
        v18 = [v7 objectForKeyedSubscript:handle];

        v19 = [CNContact _gkContactFromCacheObject:v16];
        [v10 setObject:v19 forKeyedSubscript:v18];
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  v20 = [v10 copy];

  return v20;
}

- (id)contactInfosForHandles:(id)handles withContext:(id)context
{
  contextCopy = context;
  handlesCopy = handles;
  v7 = +[GKCDContactInfo _gkFetchRequest];
  handlesCopy = [NSPredicate predicateWithFormat:@"handle IN %@", handlesCopy];

  [v7 setPredicate:handlesCopy];
  v9 = [NSSortDescriptor sortDescriptorWithKey:@"givenName" ascending:1];
  v13 = v9;
  v10 = [NSArray arrayWithObjects:&v13 count:1];
  [v7 setSortDescriptors:v10];

  v11 = [GKCDContactInfo _gkObjectsFromFetchRequest:v7 withContext:contextCopy];

  return v11;
}

- (id)filterForContactIDsSupportingFriendingViaPushFromContactIDs:(id)ds withContext:(id)context
{
  dsCopy = ds;
  contextCopy = context;
  settings = [(GKContactsIntegrationController *)self settings];
  LOBYTE(self) = [(GKContactsIntegrationController *)self isEligibleAllowingIneligibility:8 usingSettings:settings withContext:contextCopy];

  if (self)
  {
    v9 = +[GKCDContactInfo _gkFetchRequest];
    if ([dsCopy count])
    {
      dsCopy = [NSPredicate predicateWithFormat:@"contactID IN %@", dsCopy];
      [v9 setPredicate:dsCopy];
    }

    else
    {
      [v9 setPredicate:0];
    }

    v14 = [GKCDContactInfo _gkObjectsFromFetchRequest:v9 withContext:contextCopy];
    v15 = [v14 _gkMapDictionaryWithKeyPath:@"handle" valueKeyPath:@"contactID"];
    if ([v15 count])
    {
      v34 = v14;
      v35 = v9;
      v36 = dsCopy;
      allKeys = [v15 allKeys];
      v17 = [NSPredicate predicateWithFormat:@"handle IN %@", allKeys];

      v33 = v17;
      v18 = [GKCDIDSInfo _gkObjectsMatchingPredicate:v17 withContext:contextCopy];
      v19 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v18 count]);
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v20 = v18;
      v21 = [v20 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v38;
        do
        {
          for (i = 0; i != v22; i = i + 1)
          {
            if (*v38 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v37 + 1) + 8 * i);
            supportsFriendingViaPush = [v25 supportsFriendingViaPush];
            bOOLValue = [supportsFriendingViaPush BOOLValue];

            if (bOOLValue)
            {
              handle = [v25 handle];
              v29 = [v15 objectForKeyedSubscript:handle];

              if ([v29 length])
              {
                [v19 addObject:v29];
              }
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v22);
      }

      v13 = [v19 copy];
      v9 = v35;
      dsCopy = v36;
      v14 = v34;
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v30 = GKOSLoggers();
      }

      v31 = os_log_GKContacts;
      if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "No contacts found matching the provided contact IDs.", buf, 2u);
      }

      v13 = 0;
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    v12 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Will not filter handles since the feature is not supported.", buf, 2u);
    }

    v13 = 0;
  }

  return v13;
}

- (void)connectionManagerReady:(id)ready
{
  readyCopy = ready;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKContacts;
  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v10 = readyCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Received callback that connection manager is ready: %@", buf, 0xCu);
  }

  serialQueue = [(GKContactsIntegrationController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100175CDC;
  block[3] = &unk_100361770;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)updateIDSEntriesFromOldFriendEntries:(id)entries againstServerRepresentation:(id)representation withContext:(id)context
{
  entriesCopy = entries;
  representationCopy = representation;
  contextCopy = context;
  if ([entriesCopy count])
  {
    v37 = contextCopy;
    v39 = entriesCopy;
    v41 = [entriesCopy _gkMapDictionaryWithKeyPath:@"playerID"];
    v40 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [representationCopy count]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v38 = representationCopy;
    v10 = representationCopy;
    v11 = [v10 countByEnumeratingWithState:&v43 objects:v50 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v44;
      v14 = GKPlayerIDKey;
      v15 = GKContactsAssociationIDKey;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v44 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v17 = *(*(&v43 + 1) + 8 * i);
          v18 = [v17 objectForKeyedSubscript:v14];
          v19 = [v17 objectForKeyedSubscript:v15];
          v20 = [v41 objectForKeyedSubscript:v18];
          v21 = v20;
          if (v20)
          {
            contactAssociationID = [v20 contactAssociationID];
            if ([contactAssociationID length] && !objc_msgSend(v19, "length"))
            {
              [v40 addObject:contactAssociationID];
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v43 objects:v50 count:16];
      }

      while (v12);
    }

    if ([v40 count])
    {
      contextCopy = v37;
      if (!os_log_GKGeneral)
      {
        v23 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_DEBUG))
      {
        sub_100293D68();
      }

      v24 = [[NSBatchUpdateRequest alloc] initWithEntityName:@"IDSInfo"];
      v25 = [NSPredicate predicateWithFormat:@"contactAssociationID != nil && contactAssociationID in %@", v40];
      [v24 setPredicate:v25];

      v48[0] = @"contactAssociationID";
      v26 = [NSExpression expressionForConstantValue:0];
      v49[0] = v26;
      v49[1] = &off_1003827F0;
      v48[1] = @"cohort";
      v48[2] = @"timeStamp";
      v27 = +[NSDate date];
      v49[2] = v27;
      v28 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:3];
      [v24 setPropertiesToUpdate:v28];

      v42 = 0;
      v29 = [v37 executeRequest:v24 error:&v42];
      v30 = v42;
      representationCopy = v38;
      entriesCopy = v39;
      if (v30)
      {
        if (!os_log_GKGeneral)
        {
          v31 = GKOSLoggers();
        }

        if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
        {
          sub_100293DD0();
        }

        if (!os_log_GKGeneral)
        {
          v32 = GKOSLoggers();
        }

        if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_DEBUG))
        {
          sub_100293E04();
        }
      }
    }

    else
    {
      representationCopy = v38;
      entriesCopy = v39;
      if (!os_log_GKGeneral)
      {
        v35 = GKOSLoggers();
      }

      v36 = os_log_GKContacts;
      contextCopy = v37;
      if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "No contact association IDs to clear, skipping.", buf, 2u);
      }
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v33 = GKOSLoggers();
    }

    v34 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "No old friend entries to check against, will not update new friends list.", buf, 2u);
    }
  }
}

- (id)expirationPredicateForCohort:(int)cohort matchingHandles:(id)handles usingSettings:(id)settings
{
  v6 = *&cohort;
  handlesCopy = handles;
  [settings expirationTimeForCohort:v6];
  v9 = v8;
  v10 = +[NSDate date];
  v11 = [v10 dateByAddingTimeInterval:-v9];

  if ([handlesCopy count])
  {
    [NSPredicate predicateWithFormat:@"handle IN %@ AND cohort == %ld AND timeStamp < %@", handlesCopy, v6, v11];
  }

  else
  {
    [NSPredicate predicateWithFormat:@"cohort == %ld AND timeStamp < %@", v6, v11, v14];
  }
  v12 = ;

  return v12;
}

- (id)expiredIDSEntriesWithFetchLimit:(int64_t)limit matchingHandles:(id)handles usingSettings:(id)settings withContext:(id)context
{
  handlesCopy = handles;
  contextCopy = context;
  settingsCopy = settings;
  v13 = +[GKCDIDSInfo _gkFetchRequest];
  if ([handlesCopy count])
  {
    [NSPredicate predicateWithFormat:@"handle IN %@ AND cohort == %ld", handlesCopy, -1];
  }

  else
  {
    [NSPredicate predicateWithFormat:@"cohort == %ld", -1, v26];
  }
  v14 = ;
  [v13 setPredicate:v14];

  [v13 setFetchLimit:limit];
  v15 = [GKCDIDSInfo _gkObjectsFromFetchRequest:v13 withContext:contextCopy];
  +[GKCDIDSInfo _gkFetchRequest];
  limitCopy = limit;
  v16 = v28 = contextCopy;
  v17 = [(GKContactsIntegrationController *)self expirationPredicateForCohort:0 matchingHandles:handlesCopy usingSettings:settingsCopy];
  v29[0] = v17;
  v18 = [(GKContactsIntegrationController *)self expirationPredicateForCohort:1 matchingHandles:handlesCopy usingSettings:settingsCopy];
  v29[1] = v18;
  v19 = [(GKContactsIntegrationController *)self expirationPredicateForCohort:2 matchingHandles:handlesCopy usingSettings:settingsCopy];
  v29[2] = v19;
  v20 = [(GKContactsIntegrationController *)self expirationPredicateForCohort:3 matchingHandles:handlesCopy usingSettings:settingsCopy];

  v29[3] = v20;
  v21 = [NSArray arrayWithObjects:v29 count:4];
  v22 = [NSCompoundPredicate orPredicateWithSubpredicates:v21];
  [v16 setPredicate:v22];

  [v16 setFetchLimit:{limitCopy - objc_msgSend(v15, "count")}];
  v23 = [GKCDIDSInfo _gkObjectsFromFetchRequest:v16 withContext:v28];

  v24 = [v15 arrayByAddingObjectsFromArray:v23];

  return v24;
}

- (void)fetchMessageTransportV2AvailabilityForUnprefixedHandles:(id)handles completion:(id)completion
{
  handlesCopy = handles;
  completionCopy = completion;
  v8 = +[NSMutableSet set];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = handlesCopy;
  v10 = [v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v10)
  {
    v11 = *v37;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v37 != v11)
      {
        objc_enumerationMutation(v9);
      }

      v13 = *(*(&v36 + 1) + 8 * v12);
      if (![v13 length])
      {
        break;
      }

      v14 = [IDSURI URIWithUnprefixedURI:v13];
      prefixedURI = [v14 prefixedURI];

      if (!prefixedURI)
      {
        break;
      }

      [v8 addObject:prefixedURI];

      if (v10 == ++v12)
      {
        v10 = [v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v16 = [NSString stringWithFormat:@"%s:%d %s", "GKContactsIntegrationController.m", 1751, "[GKContactsIntegrationController(Multiplayer) fetchMessageTransportV2AvailabilityForUnprefixedHandles:completion:]"];
  v17 = [GKDispatchGroup dispatchGroupWithName:v16];

  v18 = [v9 count];
  if (v18 == [v8 count] && objc_msgSend(v8, "count"))
  {
    [v17 enter];
    objc_initWeak(&location, self);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100176C64;
    v31[3] = &unk_100369D58;
    v32 = v8;
    v19 = v17;
    v33 = v19;
    objc_copyWeak(&v34, &location);
    [(GKContactsIntegrationController *)self syncIDSDataForHandles:v32 forcefully:0 completion:v31];
    if ([v19 waitWithTimeout:60.0])
    {
      if (!os_log_GKGeneral)
      {
        v20 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
      {
        sub_100293E6C();
      }

      error2 = [NSError errorWithDomain:GKContactsIntegrationErrorDomain code:9 userInfo:&off_1003832A8];
      (*(completionCopy + 2))(completionCopy, 0, 0, error2);
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v25 = GKOSLoggers();
      }

      v26 = os_log_GKMatch;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = [v19 objectForKeyedSubscript:@"availablePlayerHandles"];
        v28 = [v19 objectForKeyedSubscript:@"unavailablePlayerHandles"];
        sub_100293EA0(v27, v28, buf, v26);
      }

      error = [v19 error];

      if (error)
      {
        error2 = [v19 error];
        (*(completionCopy + 2))(completionCopy, 0, 0, error2);
      }

      else
      {
        error2 = [v19 objectForKeyedSubscript:@"availablePlayerHandles"];
        v30 = [v19 objectForKeyedSubscript:@"unavailablePlayerHandles"];
        (*(completionCopy + 2))(completionCopy, error2, v30, 0);
      }
    }

    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v22 = GKOSLoggers();
    }

    v23 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      sub_100293F10(v23, v9, v8);
    }

    v24 = [NSError errorWithDomain:GKContactsIntegrationErrorDomain code:10 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, 0, v24);
  }
}

@end