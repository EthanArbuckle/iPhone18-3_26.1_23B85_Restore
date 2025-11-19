@interface GKContactsIntegrationController
+ (id)sharedController;
- (BOOL)contactsSyncInProgress;
- (BOOL)idsSyncInProgress;
- (BOOL)isAlreadyWaitingOnLimitTimer;
- (BOOL)isEligibleAllowingIneligibility:(unint64_t)a3 usingSettings:(id)a4;
- (BOOL)isEligibleAllowingIneligibility:(unint64_t)a3 usingSettings:(id)a4 withContext:(id)a5;
- (GKContactsIntegrationController)init;
- (GKContactsIntegrationController)initWithNotificationCenter:(id)a3 connectionManager:(id)a4 playerProvider:(id)a5 eligibilityChecker:(id)a6 metricsHandler:(id)a7 contactStore:(id)a8 migrator:(id)a9;
- (id)contactAssociationIDMapForContactAssociationIDs:(id)a3 withContext:(id)a4;
- (id)contactAssociationIDMapForHandles:(id)a3 withContext:(id)a4;
- (id)contactInfosForHandles:(id)a3 withContext:(id)a4;
- (id)createFriendAssociationIDMapWithIDs:(id)a3 withContext:(id)a4;
- (id)createRelationshipWithHandle:(id)a3 contactAssociationID:(id)a4 usingFriendMap:(id)a5 withContext:(id)a6;
- (id)expirationPredicateForCohort:(int)a3 matchingHandles:(id)a4 usingSettings:(id)a5;
- (id)expiredIDSEntriesWithFetchLimit:(int64_t)a3 matchingHandles:(id)a4 usingSettings:(id)a5 withContext:(id)a6;
- (id)filterForContactIDsSupportingFriendingViaPushFromContactIDs:(id)a3 withContext:(id)a4;
- (id)getContactsForContactAssociationIDs:(id)a3 withContext:(id)a4;
- (id)handleMapForContactAssociationIDs:(id)a3 withContext:(id)a4;
- (id)handlesExcludingNoneExpiredFromHandles:(id)a3 isAlreadyWaitingOnLimitTimer:(BOOL)a4 settings:(id)a5 moc:(id)a6 error:(id *)a7;
- (id)relationshipForMeContact;
- (id)relationshipsForHandles:(id)a3 contactAssociationIDMap:(id)a4 withContext:(id)a5;
- (unint64_t)calculateRemainingIDSHandleQueryCountUsingSettings:(id)a3 withContext:(id)a4;
- (unint64_t)syncState;
- (void)clearCachesWithCompletionHandler:(id)a3;
- (void)connectionManagerReady:(id)a3;
- (void)contactsChanged:(id)a3;
- (void)fetchIDSDataAndUpdateCacheForHandles:(id)a3 allowingIneligibility:(unint64_t)a4 usingSettings:(id)a5 withDelay:(BOOL)a6 completion:(id)a7;
- (void)fetchIDSDataAndUpdateCacheForHandles:(id)a3 rangeToFetch:(_NSRange)a4 maxBatchSize:(unint64_t)a5 numberOfHandlesLeft:(int64_t)a6 allowingIneligibility:(unint64_t)a7 settings:(id)a8 withDelay:(BOOL)a9 completion:(id)a10;
- (void)fetchMessageTransportV2AvailabilityForUnprefixedHandles:(id)a3 completion:(id)a4;
- (void)getRelationshipsForContacts:(id)a3 updateExistingContactEntries:(BOOL)a4 completionHandler:(id)a5;
- (void)handleIDSFetchResult:(id)a3 handlesToQuery:(id)a4 rangeToFetch:(_NSRange)a5 maxBatchSize:(unint64_t)a6 numberOfHandlesLeft:(int64_t)a7 allowingIneligibility:(unint64_t)a8 settings:(id)a9 withDelay:(BOOL)a10 completion:(id)a11;
- (void)handleReachabilityChanged;
- (void)logStateWithMoc:(id)a3 syncState:(unint64_t)a4;
- (void)playerAuthenticated:(id)a3;
- (void)populateContactInfoForProfiles:(id)a3 playerIdToContactAssociationIdMap:(id)a4 withContext:(id)a5;
- (void)populateContactInfoForProfiles:(id)a3 replyOnQueue:(id)a4 withCompletionHandler:(id)a5;
- (void)populateContactInfoForProfiles:(id)a3 withContext:(id)a4;
- (void)reachabilityChanged:(id)a3;
- (void)refetchIDSHandlesInPriorityOrderWithCompletion:(id)a3;
- (void)relationshipsForContacts:(id)a3 updateExistingContactEntries:(BOOL)a4 allowingIneligibility:(unint64_t)a5 usingSettings:(id)a6 meContactID:(id)a7 completionHandler:(id)a8;
- (void)setupIDSCacheUpdateTimerWithStartTime:(double)a3;
- (void)startContactsSyncAllowingChangeHistory:(BOOL)a3 completion:(id)a4;
- (void)startIDSSyncWithCompletion:(id)a3;
- (void)startWithOptions:(unint64_t)a3 completion:(id)a4;
- (void)stateWithCompletionHandler:(id)a3;
- (void)stop;
- (void)stopCacheUpdates;
- (void)storeBagUpdated:(id)a3;
- (void)syncIDSDataForHandles:(id)a3 forcefully:(BOOL)a4 completion:(id)a5;
- (void)updateIDSEntriesFromOldFriendEntries:(id)a3 againstServerRepresentation:(id)a4 withContext:(id)a5;
- (void)updateIntervalHasFinishedExceedingIDSLimit:(BOOL)a3 allowingIneligibility:(unint64_t)a4 usingSettings:(id)a5;
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

- (GKContactsIntegrationController)initWithNotificationCenter:(id)a3 connectionManager:(id)a4 playerProvider:(id)a5 eligibilityChecker:(id)a6 metricsHandler:(id)a7 contactStore:(id)a8 migrator:(id)a9
{
  v15 = a3;
  v30 = a4;
  v29 = a5;
  v28 = a6;
  v27 = a7;
  v16 = a8;
  v17 = a9;
  v31.receiver = self;
  v31.super_class = GKContactsIntegrationController;
  v18 = [(GKContactsIntegrationController *)&v31 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_migrator, a9);
    objc_storeStrong(&v19->_metricsHandler, a7);
    objc_storeStrong(&v19->_eligibilityChecker, a6);
    objc_storeStrong(&v19->_playerProvider, a5);
    objc_storeStrong(&v19->_contactStore, a8);
    v20 = dispatch_queue_create("com.apple.GameKit.contactsIntegration.serialQueue", 0);
    serialQueue = v19->_serialQueue;
    v19->_serialQueue = v20;

    v22 = dispatch_queue_create("com.apple.GameKit.contactsIntegration.idsBatchQueue", 0);
    idsBatchQueue = v19->_idsBatchQueue;
    v19->_idsBatchQueue = v22;

    v24 = dispatch_queue_create("com.apple.GameKit.contactsIntegration.contactsBatchQueue", 0);
    contactsBatchQueue = v19->_contactsBatchQueue;
    v19->_contactsBatchQueue = v24;

    objc_storeStrong(&v19->_connectionManager, a4);
    [(GKIDSConnectionManager *)v19->_connectionManager setDelegate:v19, v27, v28, v29, v30];
    [v15 addObserver:v19 selector:"playerAuthenticated:" name:GKPrimaryCredentialDidChangeNotification object:0];
    [v15 addObserver:v19 selector:"storeBagUpdated:" name:@"GKStoreBagUpdatedNotification" object:0];
    [v15 addObserver:v19 selector:"contactsChanged:" name:CNContactStoreDidChangeNotification object:0];
    [v15 addObserver:v19 selector:"reachabilityChanged:" name:@"GKNetworkReachabilityChangedNotification" object:0];
  }

  return v19;
}

- (BOOL)isEligibleAllowingIneligibility:(unint64_t)a3 usingSettings:(id)a4 withContext:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(GKContactsIntegrationController *)self eligibilityChecker];
  v11 = [(GKContactsIntegrationController *)self playerProvider];
  v12 = [v11 localPlayer];
  v13 = [(GKContactsIntegrationController *)self connectionManager];
  LOBYTE(a3) = [v10 isEligibleAllowingIneligibility:a3 usingSettings:v9 localPlayerInternal:v12 isConnectionManagerReady:objc_msgSend(v13 withContext:{"isReady"), v8}];

  return a3;
}

- (BOOL)isEligibleAllowingIneligibility:(unint64_t)a3 usingSettings:(id)a4
{
  v6 = a4;
  v7 = [(GKContactsIntegrationController *)self playerProvider];
  v8 = [v7 localPlayerCacheGroup];

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v9 = [v8 context];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10016C680;
  v13[3] = &unk_100369A00;
  v16 = &v18;
  v17 = a3;
  v13[4] = self;
  v10 = v6;
  v14 = v10;
  v11 = v8;
  v15 = v11;
  [v9 performBlockAndWait:v13];

  LOBYTE(v6) = *(v19 + 24);
  _Block_object_dispose(&v18, 8);

  return v6;
}

- (void)startWithOptions:(unint64_t)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [NSString stringWithFormat:@"%s:%d %s", "GKContactsIntegrationController.m", 173, "[GKContactsIntegrationController startWithOptions:completion:]"];
  v8 = [GKDispatchGroup dispatchGroupWithName:v7];

  if (v4)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10016C86C;
    v11[3] = &unk_100361620;
    v11[4] = self;
    [v8 perform:v11];
  }

  if ((v4 & 2) != 0)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10016C934;
    v10[3] = &unk_100361620;
    v10[4] = self;
    [v8 perform:v10];
  }

  v9 = [(GKContactsIntegrationController *)self serialQueue];
  [v8 notifyOnQueue:v9 block:v6];
}

- (void)startContactsSyncAllowingChangeHistory:(BOOL)a3 completion:(id)a4
{
  v5 = a4;
  v6 = dispatch_get_current_queue();
  v7 = [(GKContactsIntegrationController *)self serialQueue];

  if (v6 != v7)
  {
    label = dispatch_queue_get_label(v6);
    v9 = [(GKContactsIntegrationController *)self serialQueue];
    v10 = dispatch_queue_get_label(v9);
    v11 = +[NSThread callStackSymbols];
    v12 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKContactsIntegrationController startContactsSyncAllowingChangeHistory:completion:]", label, v10, v11];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKContactsIntegrationController.m"];
    v14 = [v13 lastPathComponent];
    v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == self.serialQueue)\n[%s (%s:%d)]", v12, "-[GKContactsIntegrationController startContactsSyncAllowingChangeHistory:completion:]", [v14 UTF8String], 193);

    [NSException raise:@"GameKit Exception" format:@"%@", v15];
  }

  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_10016D070;
  v65[3] = &unk_100360FA0;
  v16 = v5;
  v66 = v16;
  v17 = objc_retainBlock(v65);
  v18 = [(GKContactsIntegrationController *)self contactsUpdateGroup];

  if (!v18)
  {
    v21 = [(GKContactsIntegrationController *)self settings];
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
    v23 = [(GKContactsIntegrationController *)self playerProvider];
    v24 = [v23 localPlayerCacheGroup];

    v25 = [v24 context];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_10016D0A0;
    v49[3] = &unk_100369A28;
    v52 = &v61;
    v49[4] = self;
    v26 = v21;
    v50 = v26;
    v27 = v24;
    v51 = v27;
    v53 = buf;
    [v25 performBlockAndWait:v49];

    objc_autoreleasePoolPop(v22);
    if (v62[3])
    {
      if (a3 || !*(v56 + 5))
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

        v36 = [(GKContactsIntegrationController *)self contactsUpdateGroup];
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_10016D1CC;
        v43[3] = &unk_100369A78;
        objc_copyWeak(&v47, &v48);
        v45 = buf;
        v44 = v26;
        v46 = v54;
        [v36 perform:v43];

        v37 = [(GKContactsIntegrationController *)self contactsUpdateGroup];
        v38 = [(GKContactsIntegrationController *)self serialQueue];
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_10016D394;
        v40[3] = &unk_100368028;
        objc_copyWeak(&v42, &v48);
        v41 = v17;
        [v37 notifyOnQueue:v38 block:v40];

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

- (unint64_t)calculateRemainingIDSHandleQueryCountUsingSettings:(id)a3 withContext:(id)a4
{
  v5 = a3;
  v6 = [GKCDIDSInfoList _gkPrimaryListWithContext:a4];
  v7 = [v6 updateIntervalStartTimeStamp];
  [v5 idsUpdateInterval];
  v8 = [v7 dateByAddingTimeInterval:?];

  v9 = +[NSDate date];
  if (!v8 || [v8 compare:v9] == -1)
  {
    [v6 _gkReset];
  }

  v10 = [v6 updateIntervalHandlesCount];
  v11 = [v10 intValue];

  v12 = [v5 idsV2FetchSize];
  v13 = (v12 - v11) & ~((v12 - v11) >> 63);

  return v13;
}

- (void)stateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(GKContactsIntegrationController *)self serialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10016D594;
  v7[3] = &unk_100361270;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)logStateWithMoc:(id)a3 syncState:(unint64_t)a4
{
  v6 = a3;
  v7 = [GKContactsIntegrationState alloc];
  v8 = [(GKContactsIntegrationController *)self settings];
  v9 = [v7 initWithMoc:v6 settings:v8 controllerState:a4];

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

- (void)refetchIDSHandlesInPriorityOrderWithCompletion:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_current_queue();
  v6 = [(GKContactsIntegrationController *)self serialQueue];

  if (v5 != v6)
  {
    label = dispatch_queue_get_label(v5);
    v8 = [(GKContactsIntegrationController *)self serialQueue];
    v9 = dispatch_queue_get_label(v8);
    v10 = +[NSThread callStackSymbols];
    v11 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKContactsIntegrationController refetchIDSHandlesInPriorityOrderWithCompletion:]", label, v9, v10];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKContactsIntegrationController.m"];
    v13 = [v12 lastPathComponent];
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == self.serialQueue)\n[%s (%s:%d)]", v11, "-[GKContactsIntegrationController refetchIDSHandlesInPriorityOrderWithCompletion:]", [v13 UTF8String], 321);

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

  v17 = [(GKContactsIntegrationController *)self settings];
  v18 = [(GKContactsIntegrationController *)self syncState];
  v19 = [(GKContactsIntegrationController *)self playerProvider];
  v20 = [v19 localPlayerCacheGroup];

  v21 = [v20 context];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10016DAF4;
  v25[3] = &unk_100364128;
  v26 = v20;
  v27 = self;
  v30 = v18;
  v31 = 0;
  v28 = v17;
  v29 = v4;
  v22 = v4;
  v23 = v17;
  v24 = v20;
  [v21 performBlock:v25];
}

- (void)updateIntervalHasFinishedExceedingIDSLimit:(BOOL)a3 allowingIneligibility:(unint64_t)a4 usingSettings:(id)a5
{
  v8 = a5;
  if (a3)
  {
    v9 = [(GKContactsIntegrationController *)self playerProvider];
    v10 = [v9 localPlayerCacheGroup];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10016E11C;
    v19[3] = &unk_100363F28;
    v11 = v10;
    v20 = v11;
    v21 = self;
    v23 = a4;
    v22 = v8;
    [v11 performOnManagedObjectContext:v19];
    v12 = [(GKContactsIntegrationController *)self serialQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10016E224;
    v16[3] = &unk_1003610B8;
    v17 = v11;
    v18 = self;
    v13 = v11;
    [v13 notifyOnQueue:v12 block:v16];
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

- (id)handlesExcludingNoneExpiredFromHandles:(id)a3 isAlreadyWaitingOnLimitTimer:(BOOL)a4 settings:(id)a5 moc:(id)a6 error:(id *)a7
{
  v10 = a4;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = [v12 mutableCopy];
  v16 = [(GKContactsIntegrationController *)self calculateRemainingIDSHandleQueryCountUsingSettings:v13 withContext:v14];
  v53 = v14;
  v54 = v12;
  if (!v16 || v10)
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
    v24 = [NSNumber numberWithBool:v10];
    v50 = [NSString stringWithFormat:@"remainingHandlesToUpdate: %@, isAlreadyWaitingOnLimitTimer: %@", v17, v24];
    v63 = v50;
    v51 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    *a7 = [NSError errorWithDomain:v49 code:4 userInfo:v51];

    v46 = 0;
    v37 = v53;
    v36 = v12;
  }

  else
  {
    v17 = +[GKCDIDSInfo _gkFetchRequest];
    v18 = [NSPredicate predicateWithFormat:@"handle IN %@", v12];
    [v17 setPredicate:v18];

    v19 = [GKCDIDSInfo _gkObjectsFromFetchRequest:v17 withContext:v14];
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
          if (([v29 isExpiredForSettings:v13] & 1) == 0)
          {
            v30 = [v29 handle];

            if (v30)
            {
              v31 = [v29 handle];
              [v15 removeObject:v31];
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

      v42 = [v15 allObjects];
      v43 = [v42 subarrayWithRange:{0, v16}];
      v44 = [NSSet setWithArray:v43];
      v45 = [v44 mutableCopy];

      v15 = v45;
    }

    v15 = v15;
    v46 = v15;
  }

  return v46;
}

- (void)syncIDSDataForHandles:(id)a3 forcefully:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(GKContactsIntegrationController *)self serialQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10016EA34;
  v13[3] = &unk_100362750;
  v16 = a4;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)fetchIDSDataAndUpdateCacheForHandles:(id)a3 allowingIneligibility:(unint64_t)a4 usingSettings:(id)a5 withDelay:(BOOL)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  if (!os_log_GKGeneral)
  {
    v15 = GKOSLoggers();
  }

  v16 = os_log_GKContacts;
  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
  {
    v17 = v16;
    v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 count]);
    *buf = 138412290;
    v38 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Beginning fetches with IDS with a handle count of: %@", buf, 0xCu);
  }

  v19 = [v13 idsV2BatchFetchSize];
  if (v19)
  {
    v20 = v19;
    v21 = [v12 allObjects];
    v22 = [v21 count];
    v23 = [(GKContactsIntegrationController *)self idsBatchQueue];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10016F328;
    v27[3] = &unk_100369B18;
    v27[4] = self;
    v28 = v21;
    v31 = 0;
    v32 = v20;
    v33 = v20;
    v34 = v22;
    v35 = a4;
    v29 = v13;
    v36 = a6;
    v30 = v14;
    v24 = v21;
    dispatch_async(v23, v27);
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

    (*(v14 + 2))(v14, 0);
  }
}

- (void)fetchIDSDataAndUpdateCacheForHandles:(id)a3 rangeToFetch:(_NSRange)a4 maxBatchSize:(unint64_t)a5 numberOfHandlesLeft:(int64_t)a6 allowingIneligibility:(unint64_t)a7 settings:(id)a8 withDelay:(BOOL)a9 completion:(id)a10
{
  length = a4.length;
  location = a4.location;
  v40 = a3;
  v35 = a8;
  v39 = a10;
  v12 = dispatch_get_current_queue();
  val = self;
  v13 = [(GKContactsIntegrationController *)self idsBatchQueue];

  if (v12 != v13)
  {
    label = dispatch_queue_get_label(v12);
    v15 = [(GKContactsIntegrationController *)val idsBatchQueue];
    v16 = dispatch_queue_get_label(v15);
    v17 = +[NSThread callStackSymbols];
    v18 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKContactsIntegrationController fetchIDSDataAndUpdateCacheForHandles:rangeToFetch:maxBatchSize:numberOfHandlesLeft:allowingIneligibility:settings:withDelay:completion:]", label, v16, v17];
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKContactsIntegrationController.m"];
    v20 = [v19 lastPathComponent];
    v21 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == self.idsBatchQueue)\n[%s (%s:%d)]", v18, "-[GKContactsIntegrationController fetchIDSDataAndUpdateCacheForHandles:rangeToFetch:maxBatchSize:numberOfHandlesLeft:allowingIneligibility:settings:withDelay:completion:]", [v20 UTF8String], 647);

    [NSException raise:@"GameKit Exception" format:@"%@", v21];
  }

  v22 = [v40 count];
  if (a6 >= 1 && length)
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
      v28 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v40 count]);
      *buf = 138412802;
      v48 = v26;
      v49 = 2112;
      v50 = v27;
      v51 = 2112;
      v52 = v28;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Fetching range: (%@, %@) of total count: %@", buf, 0x20u);
    }

    v29 = [v40 subarrayWithRange:{location, length}];
    v30 = [(GKContactsIntegrationController *)val connectionManager];
    objc_initWeak(buf, val);
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_10016F810;
    v41[3] = &unk_100369B40;
    objc_copyWeak(v45, buf);
    v42 = v40;
    v45[1] = location;
    v45[2] = length;
    v45[3] = a5;
    v45[4] = a6;
    v45[5] = a7;
    v43 = v35;
    v46 = a9;
    v44 = v39;
    [v30 fetchIDSDataForHandles:v29 service:@"com.apple.private.alloy.arcade" infoTypes:5 performingBlockPerBatch:v41];

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

    (*(v39 + 2))(v39, 0);
  }
}

- (void)handleIDSFetchResult:(id)a3 handlesToQuery:(id)a4 rangeToFetch:(_NSRange)a5 maxBatchSize:(unint64_t)a6 numberOfHandlesLeft:(int64_t)a7 allowingIneligibility:(unint64_t)a8 settings:(id)a9 withDelay:(BOOL)a10 completion:(id)a11
{
  length = a5.length;
  location = a5.location;
  v14 = a3;
  v15 = a4;
  v16 = a9;
  v17 = a11;
  v18 = [(GKContactsIntegrationController *)self playerProvider];
  v19 = [v18 localPlayerCacheGroup];

  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_10016FD30;
  v43[3] = &unk_100364608;
  v20 = v19;
  v44 = v20;
  v45 = v14;
  v46 = self;
  v48 = a8;
  v21 = v16;
  v47 = v21;
  v22 = v14;
  [v20 performOnManagedObjectContext:v43];
  v23 = [(GKContactsIntegrationController *)self idsBatchQueue];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1001702FC;
  v31[3] = &unk_100369BB8;
  v32 = v20;
  v33 = v21;
  v36 = v17;
  v37 = location;
  v38 = length;
  v39 = a6;
  v34 = self;
  v35 = v15;
  v40 = a7;
  v41 = a8;
  v42 = a10;
  v24 = v15;
  v25 = v21;
  v26 = v17;
  v27 = v20;
  [v27 notifyOnQueue:v23 block:v31];
}

- (BOOL)isAlreadyWaitingOnLimitTimer
{
  v3 = dispatch_get_current_queue();
  v4 = [(GKContactsIntegrationController *)self serialQueue];

  if (v3 != v4)
  {
    label = dispatch_queue_get_label(v3);
    v6 = [(GKContactsIntegrationController *)self serialQueue];
    v7 = dispatch_queue_get_label(v6);
    v8 = +[NSThread callStackSymbols];
    v9 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKContactsIntegrationController isAlreadyWaitingOnLimitTimer]", label, v7, v8];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKContactsIntegrationController.m"];
    v11 = [v10 lastPathComponent];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == self.serialQueue)\n[%s (%s:%d)]", v9, "-[GKContactsIntegrationController isAlreadyWaitingOnLimitTimer]", [v11 UTF8String], 854);

    [NSException raise:@"GameKit Exception" format:@"%@", v12];
  }

  v13 = [(GKContactsIntegrationController *)self idsCacheUpdateTimer];
  v14 = v13 != 0;

  return v14;
}

- (void)getRelationshipsForContacts:(id)a3 updateExistingContactEntries:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKContacts;
  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Getting relationships for contact with updateExistingContactEntries: %d", buf, 8u);
  }

  v12 = [(GKContactsIntegrationController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100170B68;
  block[3] = &unk_100369C30;
  v17 = v9;
  v18 = 8;
  block[4] = self;
  v16 = v8;
  v19 = v6;
  v13 = v8;
  v14 = v9;
  dispatch_async(v12, block);
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

  v5 = [(GKContactsIntegrationController *)self playerProvider];
  v6 = [v5 localPlayerCacheGroup];

  *buf = 0;
  v22 = buf;
  v23 = 0x3032000000;
  v24 = sub_10016D088;
  v25 = sub_10016D098;
  v26 = 0;
  v7 = [v6 context];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100171258;
  v18 = &unk_100364898;
  v8 = v6;
  v19 = v8;
  v20 = buf;
  [v7 performBlockAndWait:&v15];

  if (*(v22 + 5))
  {
    v9 = [(GKContactsIntegrationController *)self playerProvider:v15];
    v10 = [v9 localPlayer];
    v11 = [v10 accountName];

    v12 = objc_opt_new();
    [v12 setRelationship:2];
    [v12 setRelatedPlayer:*(v22 + 5)];
    if ([v11 length])
    {
      v13 = v11;
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

- (void)relationshipsForContacts:(id)a3 updateExistingContactEntries:(BOOL)a4 allowingIneligibility:(unint64_t)a5 usingSettings:(id)a6 meContactID:(id)a7 completionHandler:(id)a8
{
  v12 = a4;
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v41 = a8;
  v17 = dispatch_get_current_queue();
  v18 = [(GKContactsIntegrationController *)self serialQueue];

  if (v17 != v18)
  {
    v39 = v16;
    v40 = v14;
    v38 = a5;
    label = dispatch_queue_get_label(v17);
    v20 = [(GKContactsIntegrationController *)self serialQueue];
    v21 = dispatch_queue_get_label(v20);
    v22 = +[NSThread callStackSymbols];
    v23 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKContactsIntegrationController relationshipsForContacts:updateExistingContactEntries:allowingIneligibility:usingSettings:meContactID:completionHandler:]", label, v21, v22];
    v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKContactsIntegrationController.m"];
    v25 = [v24 lastPathComponent];
    v26 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == self.serialQueue)\n[%s (%s:%d)]", v23, "-[GKContactsIntegrationController relationshipsForContacts:updateExistingContactEntries:allowingIneligibility:usingSettings:meContactID:completionHandler:]", [v25 UTF8String], 953);

    v16 = v39;
    a5 = v38;

    [NSException raise:@"GameKit Exception" format:@"%@", v26];
    v14 = v40;
  }

  v27 = [(GKContactsIntegrationController *)self isAlreadyWaitingOnLimitTimer];
  v28 = [(GKContactsIntegrationController *)self playerProvider];
  v29 = [v28 localPlayerCacheGroup];

  if (!os_log_GKGeneral)
  {
    v30 = GKOSLoggers();
  }

  v31 = os_log_GKContacts;
  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v52 = v12;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Proceeding to relationships for contact with updateExistingContactEntries: %d", buf, 8u);
  }

  v32 = [v29 context];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_10017167C;
  v42[3] = &unk_100369C80;
  v42[4] = self;
  v43 = v14;
  v49 = v12;
  v44 = v16;
  v45 = v29;
  v50 = v27;
  v46 = v15;
  v47 = v41;
  v48 = a5;
  v33 = v41;
  v34 = v15;
  v35 = v29;
  v36 = v16;
  v37 = v14;
  [v32 performBlock:v42];
}

- (void)playerAuthenticated:(id)a3
{
  v4 = a3;
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

  v7 = [(GKContactsIntegrationController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100171EAC;
  block[3] = &unk_100361770;
  block[4] = self;
  dispatch_async(v7, block);
}

- (void)contactsChanged:(id)a3
{
  v4 = [(GKContactsIntegrationController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100171F44;
  block[3] = &unk_100361770;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)reachabilityChanged:(id)a3
{
  v4 = a3;
  v5 = [(GKContactsIntegrationController *)self serialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100172220;
  v7[3] = &unk_1003610B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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

  v5 = [(GKContactsIntegrationController *)self playerProvider];
  v6 = [v5 localPlayerCacheGroup];

  v7 = [v6 context];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001725B8;
  v9[3] = &unk_100361770;
  v10 = v6;
  v8 = v6;
  [v7 performBlock:v9];
}

- (void)storeBagUpdated:(id)a3
{
  v4 = [a3 object];
  if (v4)
  {
    v5 = +[GKContactsIntegrationControllerSettings allBagKeys];
    v6 = [(GKContactsIntegrationController *)self serialQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100172854;
    v8[3] = &unk_100361248;
    v8[4] = self;
    [v4 getValuesForKeys:v5 queue:v6 completion:v8];
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
  v4 = [(GKContactsIntegrationController *)self serialQueue];

  if (v3 != v4)
  {
    label = dispatch_queue_get_label(v3);
    v6 = [(GKContactsIntegrationController *)self serialQueue];
    v7 = dispatch_queue_get_label(v6);
    v8 = +[NSThread callStackSymbols];
    v9 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKContactsIntegrationController idsSyncInProgress]", label, v7, v8];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKContactsIntegrationController.m"];
    v11 = [v10 lastPathComponent];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == self.serialQueue)\n[%s (%s:%d)]", v9, "-[GKContactsIntegrationController idsSyncInProgress]", [v11 UTF8String], 1152);

    [NSException raise:@"GameKit Exception" format:@"%@", v12];
  }

  v13 = [(GKContactsIntegrationController *)self idsUpdateGroup];

  if (v13)
  {
    if (!os_log_GKGeneral)
    {
      v14 = GKOSLoggers();
    }

    v15 = os_log_GKContacts;
    LOBYTE(v16) = 1;
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
    v16 = [(GKContactsIntegrationController *)self idsCacheUpdateTimer];

    if (v16)
    {
      if (!os_log_GKGeneral)
      {
        v19 = GKOSLoggers();
      }

      v15 = os_log_GKContacts;
      LOBYTE(v16) = 1;
      if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v17 = "Cache update timer already setup, will not trigger another update now.";
        v18 = buf;
        goto LABEL_13;
      }
    }
  }

  return v16;
}

- (BOOL)contactsSyncInProgress
{
  v3 = dispatch_get_current_queue();
  v4 = [(GKContactsIntegrationController *)self serialQueue];

  if (v3 != v4)
  {
    label = dispatch_queue_get_label(v3);
    v6 = [(GKContactsIntegrationController *)self serialQueue];
    v7 = dispatch_queue_get_label(v6);
    v8 = +[NSThread callStackSymbols];
    v9 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKContactsIntegrationController contactsSyncInProgress]", label, v7, v8];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKContactsIntegrationController.m"];
    v11 = [v10 lastPathComponent];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == self.serialQueue)\n[%s (%s:%d)]", v9, "-[GKContactsIntegrationController contactsSyncInProgress]", [v11 UTF8String], 1166);

    [NSException raise:@"GameKit Exception" format:@"%@", v12];
  }

  v13 = [(GKContactsIntegrationController *)self contactsUpdateGroup];
  v14 = v13 != 0;

  return v14;
}

- (unint64_t)syncState
{
  v3 = dispatch_get_current_queue();
  v4 = [(GKContactsIntegrationController *)self serialQueue];

  if (v3 != v4)
  {
    label = dispatch_queue_get_label(v3);
    v6 = [(GKContactsIntegrationController *)self serialQueue];
    v7 = dispatch_queue_get_label(v6);
    v8 = +[NSThread callStackSymbols];
    v9 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKContactsIntegrationController syncState]", label, v7, v8];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKContactsIntegrationController.m"];
    v11 = [v10 lastPathComponent];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == self.serialQueue)\n[%s (%s:%d)]", v9, "-[GKContactsIntegrationController syncState]", [v11 UTF8String], 1172);

    [NSException raise:@"GameKit Exception" format:@"%@", v12];
  }

  v13 = [(GKContactsIntegrationController *)self contactsSyncInProgress];
  if ([(GKContactsIntegrationController *)self idsSyncInProgress])
  {
    return v13 | 2;
  }

  else
  {
    return v13;
  }
}

- (void)startIDSSyncWithCompletion:(id)a3
{
  v4 = a3;
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

  v7 = [(GKContactsIntegrationController *)self serialQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001730B4;
  v9[3] = &unk_100361270;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_async(v7, v9);
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

  v5 = [(GKContactsIntegrationController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100173778;
  block[3] = &unk_100361770;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)setupIDSCacheUpdateTimerWithStartTime:(double)a3
{
  v5 = dispatch_get_current_queue();
  v6 = [(GKContactsIntegrationController *)self serialQueue];

  if (v5 != v6)
  {
    label = dispatch_queue_get_label(v5);
    v8 = [(GKContactsIntegrationController *)self serialQueue];
    v9 = dispatch_queue_get_label(v8);
    v10 = +[NSThread callStackSymbols];
    v11 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKContactsIntegrationController setupIDSCacheUpdateTimerWithStartTime:]", label, v9, v10];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKContactsIntegrationController.m"];
    v13 = [v12 lastPathComponent];
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == self.serialQueue)\n[%s (%s:%d)]", v11, "-[GKContactsIntegrationController setupIDSCacheUpdateTimerWithStartTime:]", [v13 UTF8String], 1238);

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
    v25 = a3;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Setting up a one time IDS timer with startTime: %f", buf, 0xCu);
  }

  v17 = [(GKContactsIntegrationController *)self idsCacheUpdateTimer];
  [v17 cancel];

  v18 = objc_alloc_init(GKContactsIntegrationTimer);
  [(GKContactsIntegrationController *)self setIdsCacheUpdateTimer:v18];

  objc_initWeak(buf, self);
  v19 = [(GKContactsIntegrationController *)self idsCacheUpdateTimer];
  v20 = dispatch_walltime(0, (a3 * 1000000000.0));
  v21 = [(GKContactsIntegrationController *)self serialQueue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100173AC0;
  v22[3] = &unk_100368CC8;
  objc_copyWeak(&v23, buf);
  v22[4] = self;
  [v19 startWithStartTime:v20 updateInterval:-1 queue:v21 updateBlock:v22 cancelBlock:&stru_100369D10];

  objc_destroyWeak(&v23);
  objc_destroyWeak(buf);
}

- (void)stopCacheUpdates
{
  v3 = dispatch_get_current_queue();
  v4 = [(GKContactsIntegrationController *)self serialQueue];

  if (v3 != v4)
  {
    label = dispatch_queue_get_label(v3);
    v6 = [(GKContactsIntegrationController *)self serialQueue];
    v7 = dispatch_queue_get_label(v6);
    v8 = +[NSThread callStackSymbols];
    v9 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKContactsIntegrationController stopCacheUpdates]", label, v7, v8];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKContactsIntegrationController.m"];
    v11 = [v10 lastPathComponent];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == self.serialQueue)\n[%s (%s:%d)]", v9, "-[GKContactsIntegrationController stopCacheUpdates]", [v11 UTF8String], 1279);

    [NSException raise:@"GameKit Exception" format:@"%@", v12];
  }

  v13 = [(GKContactsIntegrationController *)self idsCacheUpdateTimer];
  [v13 cancel];

  [(GKContactsIntegrationController *)self setIdsCacheUpdateTimer:0];
  v14 = [(GKContactsIntegrationController *)self idsBatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100174044;
  block[3] = &unk_100361770;
  block[4] = self;
  dispatch_async(v14, block);
}

- (void)clearCachesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(GKContactsIntegrationController *)self playerProvider];
  v6 = [v5 localPlayerCacheGroup];

  v7 = [(GKContactsIntegrationController *)self serialQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001741EC;
  v12[3] = &unk_100361620;
  v12[4] = self;
  [v6 performOnQueue:v7 block:v12];

  [v6 performOnManagedObjectContext:&stru_100369D30];
  v8 = [(GKContactsIntegrationController *)self serialQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001742E4;
  v10[3] = &unk_100360FA0;
  v11 = v4;
  v9 = v4;
  [v6 notifyOnQueue:v8 block:v10];
}

- (id)contactAssociationIDMapForHandles:(id)a3 withContext:(id)a4
{
  v4 = [GKCDIDSInfo _gkObjectsMatchingHandles:a3 withContext:a4];
  v5 = [v4 _gkMapDictionaryWithKeyPath:@"handle" valueKeyPath:@"contactAssociationID"];

  return v5;
}

- (id)contactAssociationIDMapForContactAssociationIDs:(id)a3 withContext:(id)a4
{
  v4 = [GKCDIDSInfo _gkObjectsMatchingContactAssociationIDs:a3 withContext:a4];
  v5 = [v4 _gkMapDictionaryWithKeyPath:@"handle" valueKeyPath:@"contactAssociationID"];

  return v5;
}

- (id)handleMapForContactAssociationIDs:(id)a3 withContext:(id)a4
{
  v4 = [GKCDIDSInfo _gkObjectsMatchingContactAssociationIDs:a3 withContext:a4];
  v5 = [v4 _gkMapDictionaryWithKeyPath:@"contactAssociationID" valueKeyPath:@"handle"];

  return v5;
}

- (id)relationshipsForHandles:(id)a3 contactAssociationIDMap:(id)a4 withContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v29 = a5;
  if ([v7 count])
  {
    if (![v8 count])
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

    v11 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v8, "count")}];
    v12 = [v8 allValues];
    v13 = [NSSet setWithArray:v12];

    v26 = v13;
    v14 = [(GKContactsIntegrationController *)self createFriendAssociationIDMapWithIDs:v13 withContext:v29];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v27 = v7;
    v15 = v7;
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
          v21 = [v8 objectForKeyedSubscript:v20];
          if (v21)
          {
            v22 = [(GKContactsIntegrationController *)self createRelationshipWithHandle:v20 contactAssociationID:v21 usingFriendMap:v14 withContext:v29];
          }

          else
          {
            v22 = objc_opt_new();
            v23 = [v20 _stripFZIDPrefix];
            [v22 setHandle:v23];

            [v22 setRelationship:0];
          }

          [v11 addObject:v22];
        }

        v17 = [v15 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v17);
    }

    v24 = [v11 copy];
    v7 = v27;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)createRelationshipWithHandle:(id)a3 contactAssociationID:(id)a4 usingFriendMap:(id)a5 withContext:(id)a6
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = objc_opt_new();
  v12 = [v10 _stripFZIDPrefix];

  [v11 setHandle:v12];
  if ([v8 length])
  {
    v13 = [v9 objectForKeyedSubscript:v8];
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

- (id)createFriendAssociationIDMapWithIDs:(id)a3 withContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = [NSPredicate predicateWithFormat:@"playerID != nil && friendBiDirectional == YES && contactAssociationID != nil && contactAssociationID IN %@", v5];
    v8 = [GKFriendListEntryCacheObject _gkObjectsMatchingPredicate:v7 withContext:v6];
    if ([v8 count])
    {
      v9 = [v8 _gkDistinctValuesForKeyPath:@"playerID"];
      v10 = [NSPredicate predicateWithFormat:@"playerID != nil && playerID IN %@", v9];
      v11 = [GKPlayerProfileCacheObject _gkObjectsMatchingPredicate:v10 withContext:v6];
      if ([v11 count])
      {
        v29 = v10;
        v30 = v9;
        v32 = v7;
        v33 = v6;
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
              v20 = [v19 playerID];
              v21 = [v12 objectForKeyedSubscript:v20];

              v22 = [v19 contactAssociationID];
              [v13 setObject:v21 forKeyedSubscript:v22];
            }

            v16 = [v14 countByEnumeratingWithState:&v34 objects:v39 count:16];
          }

          while (v16);
        }

        v23 = [v13 copy];
        v7 = v32;
        v6 = v33;
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

- (void)populateContactInfoForProfiles:(id)a3 replyOnQueue:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(GKContactsIntegrationController *)self playerProvider];
  v12 = [v11 localPlayerCacheGroup];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100174C7C;
  v16[3] = &unk_1003636E0;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  [v12 performOnManagedObjectContext:v16];
}

- (void)populateContactInfoForProfiles:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(GKContactsIntegrationController *)self settings];
  v9 = [(GKContactsIntegrationController *)self isEligibleAllowingIneligibility:0 usingSettings:v8 withContext:v7];

  if (v9)
  {
    if ([v6 count])
    {
      if ([v6 count] == 1 && (objc_msgSend(v6, "firstObject"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isLocalPlayer"), v10, v11))
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
          v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 count]);
          *buf = 138412290;
          v39 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Will attempt to populate contact info for %@ profiles", buf, 0xCu);
        }

        v32 = [v6 _gkDistinctValuesForKeyPath:@"playerID"];
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
              v28 = [v27 contactAssociationID];
              if ([v28 length])
              {
                v29 = [v27 playerID];
                [v21 setObject:v28 forKeyedSubscript:v29];
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v33 objects:v37 count:16];
          }

          while (v24);
        }

        [(GKContactsIntegrationController *)self populateContactInfoForProfiles:v6 playerIdToContactAssociationIdMap:v21 withContext:v7];
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

- (void)populateContactInfoForProfiles:(id)a3 playerIdToContactAssociationIdMap:(id)a4 withContext:(id)a5
{
  v38 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [NSSet alloc];
  v39 = v8;
  v11 = [v8 allValues];
  v12 = [v10 initWithArray:v11];

  v36 = v12;
  v13 = [(GKContactsIntegrationController *)self contactAssociationIDMapForContactAssociationIDs:v12 withContext:v9];
  v14 = [v13 allKeys];
  v37 = v9;
  v15 = [(GKContactsIntegrationController *)self contactInfosForHandles:v14 withContext:v9];

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
        v22 = [v21 handle];
        v23 = [v13 objectForKeyedSubscript:v22];
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

  v25 = [(GKContactsIntegrationController *)self metricsHandler];
  [v25 recordContactInfoMatchCount:{objc_msgSend(v16, "count")}];

  v26 = v39;
  if ([v16 count])
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = v38;
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
          v32 = [v31 playerID];
          v33 = [v26 objectForKeyedSubscript:v32];
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

- (id)getContactsForContactAssociationIDs:(id)a3 withContext:(id)a4
{
  v6 = a4;
  v7 = [(GKContactsIntegrationController *)self contactAssociationIDMapForContactAssociationIDs:a3 withContext:v6];
  v8 = [v7 allKeys];
  v22 = v6;
  v9 = [(GKContactsIntegrationController *)self contactInfosForHandles:v8 withContext:v6];

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
        v17 = [v16 handle];
        v18 = [v7 objectForKeyedSubscript:v17];

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

- (id)contactInfosForHandles:(id)a3 withContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[GKCDContactInfo _gkFetchRequest];
  v8 = [NSPredicate predicateWithFormat:@"handle IN %@", v6];

  [v7 setPredicate:v8];
  v9 = [NSSortDescriptor sortDescriptorWithKey:@"givenName" ascending:1];
  v13 = v9;
  v10 = [NSArray arrayWithObjects:&v13 count:1];
  [v7 setSortDescriptors:v10];

  v11 = [GKCDContactInfo _gkObjectsFromFetchRequest:v7 withContext:v5];

  return v11;
}

- (id)filterForContactIDsSupportingFriendingViaPushFromContactIDs:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(GKContactsIntegrationController *)self settings];
  LOBYTE(self) = [(GKContactsIntegrationController *)self isEligibleAllowingIneligibility:8 usingSettings:v8 withContext:v7];

  if (self)
  {
    v9 = +[GKCDContactInfo _gkFetchRequest];
    if ([v6 count])
    {
      v10 = [NSPredicate predicateWithFormat:@"contactID IN %@", v6];
      [v9 setPredicate:v10];
    }

    else
    {
      [v9 setPredicate:0];
    }

    v14 = [GKCDContactInfo _gkObjectsFromFetchRequest:v9 withContext:v7];
    v15 = [v14 _gkMapDictionaryWithKeyPath:@"handle" valueKeyPath:@"contactID"];
    if ([v15 count])
    {
      v34 = v14;
      v35 = v9;
      v36 = v6;
      v16 = [v15 allKeys];
      v17 = [NSPredicate predicateWithFormat:@"handle IN %@", v16];

      v33 = v17;
      v18 = [GKCDIDSInfo _gkObjectsMatchingPredicate:v17 withContext:v7];
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
            v26 = [v25 supportsFriendingViaPush];
            v27 = [v26 BOOLValue];

            if (v27)
            {
              v28 = [v25 handle];
              v29 = [v15 objectForKeyedSubscript:v28];

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
      v6 = v36;
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

- (void)connectionManagerReady:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKContacts;
  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Received callback that connection manager is ready: %@", buf, 0xCu);
  }

  v7 = [(GKContactsIntegrationController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100175CDC;
  block[3] = &unk_100361770;
  block[4] = self;
  dispatch_async(v7, block);
}

- (void)updateIDSEntriesFromOldFriendEntries:(id)a3 againstServerRepresentation:(id)a4 withContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 count])
  {
    v37 = v9;
    v39 = v7;
    v41 = [v7 _gkMapDictionaryWithKeyPath:@"playerID"];
    v40 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v8 count]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v38 = v8;
    v10 = v8;
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
            v22 = [v20 contactAssociationID];
            if ([v22 length] && !objc_msgSend(v19, "length"))
            {
              [v40 addObject:v22];
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v43 objects:v50 count:16];
      }

      while (v12);
    }

    if ([v40 count])
    {
      v9 = v37;
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
      v8 = v38;
      v7 = v39;
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
      v8 = v38;
      v7 = v39;
      if (!os_log_GKGeneral)
      {
        v35 = GKOSLoggers();
      }

      v36 = os_log_GKContacts;
      v9 = v37;
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

- (id)expirationPredicateForCohort:(int)a3 matchingHandles:(id)a4 usingSettings:(id)a5
{
  v6 = *&a3;
  v7 = a4;
  [a5 expirationTimeForCohort:v6];
  v9 = v8;
  v10 = +[NSDate date];
  v11 = [v10 dateByAddingTimeInterval:-v9];

  if ([v7 count])
  {
    [NSPredicate predicateWithFormat:@"handle IN %@ AND cohort == %ld AND timeStamp < %@", v7, v6, v11];
  }

  else
  {
    [NSPredicate predicateWithFormat:@"cohort == %ld AND timeStamp < %@", v6, v11, v14];
  }
  v12 = ;

  return v12;
}

- (id)expiredIDSEntriesWithFetchLimit:(int64_t)a3 matchingHandles:(id)a4 usingSettings:(id)a5 withContext:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = a5;
  v13 = +[GKCDIDSInfo _gkFetchRequest];
  if ([v10 count])
  {
    [NSPredicate predicateWithFormat:@"handle IN %@ AND cohort == %ld", v10, -1];
  }

  else
  {
    [NSPredicate predicateWithFormat:@"cohort == %ld", -1, v26];
  }
  v14 = ;
  [v13 setPredicate:v14];

  [v13 setFetchLimit:a3];
  v15 = [GKCDIDSInfo _gkObjectsFromFetchRequest:v13 withContext:v11];
  +[GKCDIDSInfo _gkFetchRequest];
  v27 = a3;
  v16 = v28 = v11;
  v17 = [(GKContactsIntegrationController *)self expirationPredicateForCohort:0 matchingHandles:v10 usingSettings:v12];
  v29[0] = v17;
  v18 = [(GKContactsIntegrationController *)self expirationPredicateForCohort:1 matchingHandles:v10 usingSettings:v12];
  v29[1] = v18;
  v19 = [(GKContactsIntegrationController *)self expirationPredicateForCohort:2 matchingHandles:v10 usingSettings:v12];
  v29[2] = v19;
  v20 = [(GKContactsIntegrationController *)self expirationPredicateForCohort:3 matchingHandles:v10 usingSettings:v12];

  v29[3] = v20;
  v21 = [NSArray arrayWithObjects:v29 count:4];
  v22 = [NSCompoundPredicate orPredicateWithSubpredicates:v21];
  [v16 setPredicate:v22];

  [v16 setFetchLimit:{v27 - objc_msgSend(v15, "count")}];
  v23 = [GKCDIDSInfo _gkObjectsFromFetchRequest:v16 withContext:v28];

  v24 = [v15 arrayByAddingObjectsFromArray:v23];

  return v24;
}

- (void)fetchMessageTransportV2AvailabilityForUnprefixedHandles:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableSet set];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = v6;
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
      v15 = [v14 prefixedURI];

      if (!v15)
      {
        break;
      }

      [v8 addObject:v15];

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

      v21 = [NSError errorWithDomain:GKContactsIntegrationErrorDomain code:9 userInfo:&off_1003832A8];
      (*(v7 + 2))(v7, 0, 0, v21);
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

      v29 = [v19 error];

      if (v29)
      {
        v21 = [v19 error];
        (*(v7 + 2))(v7, 0, 0, v21);
      }

      else
      {
        v21 = [v19 objectForKeyedSubscript:@"availablePlayerHandles"];
        v30 = [v19 objectForKeyedSubscript:@"unavailablePlayerHandles"];
        (*(v7 + 2))(v7, v21, v30, 0);
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
    (*(v7 + 2))(v7, 0, 0, v24);
  }
}

@end