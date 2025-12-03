@interface KCSharingSyncController
+ (KCSharingSyncController)sharedInstance;
- (BOOL)haveUnmirroredGroups:(id)groups forDatabase:(id)database;
- (BOOL)isCurrentUserIdentifierAvailable;
- (BOOL)isCurrentUserProvisioned;
- (BOOL)isLockedError:(id)error duringFetchForEngine:(id)engine;
- (BOOL)obtainAuthoritativeGroupsForPrivate:(id)private shared:(id)shared error:(id *)error;
- (BOOL)saveCursor:(id)cursor forScope:(int64_t)scope;
- (BOOL)setCloudCoreMetadataValue:(id)value forKey:(id)key error:(id *)error;
- (BOOL)setCurrentUserMetadataFeatureUsage:(unint64_t)usage;
- (BOOL)stageOutgoingShares:(id)shares deletionsForShares:(id)forShares error:(id *)error;
- (BOOL)syncEngine:(id)engine shouldFetchChangesForZoneID:(id)d;
- (BOOL)updateCurrentUserMetadataForKey:(id)key toValue:(id)value withError:(id *)error;
- (KCSharingSyncController)init;
- (KCSharingSyncController)initWithStore:(id)store container:(id)container privateSyncEngine:(id)engine sharedSyncEngine:(id)syncEngine messagingdConnection:(id)connection lockStateTracker:(id)tracker forTesting:(BOOL)testing;
- (KCSharingXPCListenerDelegate)xpcListenerDelegate;
- (id)currentUserMetadata;
- (id)fetchCloudCoreMetadataValueWithErrorForKey:(id)key error:(id *)error;
- (id)fetchCursorForScope:(int64_t)scope zoneIDs:(id)ds;
- (id)fetchOutgoingChangesWithScope:(int64_t)scope cursor:(id)cursor;
- (id)fetchStoredSyncEngineStateWithMetadataKey:(id)key withError:(id *)error;
- (id)getOutgoingStagedDatabaseChangesForSyncEngine:(id)engine;
- (id)recordZoneIDsToDeleteForSyncEngine:(id)engine;
- (id)recordZonesToSaveForSyncEngine:(id)engine;
- (id)storeOldSyncEngineState:(id)state asNewSyncEngineStateWithMetadataKey:(id)key withError:(id *)error;
- (id)subscriptionIDForDatabase:(id)database;
- (id)syncEngine:(id)engine nextBatchOfRecordsToModifyForZoneIDs:(id)ds;
- (id)syncEngine:(id)engine nextRecordZoneChangeBatchForContext:(id)context;
- (id)syncEngine:(id)engine recordToSaveForRecordID:(id)d;
- (id)unmirroredZonesForPrivate:(id)private shared:(id)shared error:(id *)error;
- (unint64_t)currentUserMetadataFeatureUsage;
- (void)CKSyncEnginesInitOperationWithDelay:(BOOL)delay withCompletion:(id)completion;
- (void)_onQueueFetchRemoteChangesForZoneIDs:(id)ds completion:(id)completion;
- (void)acquireCloudCoreSessionWithContainerID:(id)d applicationID:(id)iD encryptionService:(id)service completion:(id)completion;
- (void)cancelExistingSyncEngines;
- (void)cancelSyncEngineOperationsWithCompletionBlock:(id)block;
- (void)deviceDidLock;
- (void)ensureCurrentUserProvisionedWithCompletion:(id)completion;
- (void)fetchCurrentUserIdentifierFromCloudKitWithReply:(id)reply;
- (void)fetchCurrentUserIdentifierWithReply:(id)reply;
- (void)fetchRemoteChangesForZoneIDs:(id)ds completion:(id)completion;
- (void)forceReinitSyncEnginesWithCompletionBlock:(id)block;
- (void)handleAccountChangeFromUserRecordName:(id)name toUserRecordName:(id)recordName shouldWipeLocalState:(BOOL)state;
- (void)handleProvisioningActivity:(id)activity isRetry:(BOOL)retry;
- (void)initSyncEnginesWithPrivateDB:(id)b sharedDB:(id)dB withCompletion:(id)completion;
- (void)lockStateChangeNotification:(BOOL)notification;
- (void)makeStagedOutgoingDatabaseChangesAsPendingSyncEngineChanges;
- (void)performKCSharingFixUpsWithCompletion:(id)completion;
- (void)performMaintenanceWithCompletion:(id)completion;
- (void)preflightWithCompletion:(id)completion delay:(BOOL)delay;
- (void)processDatabaseModifications;
- (void)registerProvisioningActivity;
- (void)removeCKNotificationListenersAfterSessionInvalidationWithPrivateDB:(id)b sharedDB:(id)dB;
- (void)resyncFromRPC:(BOOL)c privateRemoteZonesByZoneID:(id)d sharedRemoteZonesByZoneID:(id)iD completion:(id)completion;
- (void)saveAllOutgoingChangesWithCompletion:(id)completion;
- (void)saveStagedOutgoingChangesWithCompletion:(id)completion;
- (void)sendNewIDSInvitesForRecord:(id)record;
- (void)setCloudCoreTestingProtocolDelegate:(id)delegate;
- (void)setupCKNotificationListenersWithPrivateDB:(id)b sharedDB:(id)dB;
- (void)setupSessionReinitOperationOnSessionInvalidation;
- (void)stageAllOutgoingChangesWithCompletion:(id)completion;
- (void)syncEngine:(id)engine accountChangedFromUserRecordID:(id)d toUserRecordID:(id)iD;
- (void)syncEngine:(id)engine didDeleteRecordWithID:(id)d;
- (void)syncEngine:(id)engine didDeleteRecordZoneWithID:(id)d;
- (void)syncEngine:(id)engine didFetchRecord:(id)record;
- (void)syncEngine:(id)engine didSaveRecord:(id)record;
- (void)syncEngine:(id)engine didSaveRecordZone:(id)zone;
- (void)syncEngine:(id)engine didUpdateMetadata:(id)metadata;
- (void)syncEngine:(id)engine failedToDeleteRecordWithID:(id)d error:(id)error;
- (void)syncEngine:(id)engine failedToDeleteRecordZoneWithID:(id)d error:(id)error;
- (void)syncEngine:(id)engine failedToSaveRecord:(id)record error:(id)error;
- (void)syncEngine:(id)engine failedToSaveRecordZone:(id)zone error:(id)error;
- (void)syncEngine:(id)engine handleEvent:(id)event;
- (void)syncEngine:(id)engine recordWithIDWasDeleted:(id)deleted recordType:(id)type;
- (void)syncEngine:(id)engine zoneWithIDWasDeleted:(id)deleted;
- (void)syncEngineDidEndFetchingChanges:(id)changes;
- (void)verifyGroupsInSyncAndResync:(BOOL)resync WithCompletion:(id)completion;
- (void)verifyGroupsInSyncAndResyncMissingGroupsWithCompletion:(id)completion;
- (void)verifyGroupsInSyncWithCompletion:(id)completion;
- (void)wipe:(BOOL)wipe completion:(id)completion;
@end

@implementation KCSharingSyncController

- (id)currentUserMetadata
{
  store = [(KCSharingSyncController *)self store];
  v9 = 0;
  v4 = [store fetchValueForMetadataKey:@"CurrentUserMetadata" error:&v9];
  v5 = v9;

  [(KCSharingSyncController *)self isLockedError:v5];
  if (!v4)
  {
    loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
    v7 = KCSharingLogObject();

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Current user metadata not found: %{public}@", buf, 0xCu);
    }
  }

  return v4;
}

- (BOOL)isCurrentUserProvisioned
{
  currentUserMetadata = [(KCSharingSyncController *)self currentUserMetadata];
  v3 = [currentUserMetadata objectForKeyedSubscript:@"pv"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (KCSharingXPCListenerDelegate)xpcListenerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcListenerDelegate);

  return WeakRetained;
}

- (void)setCloudCoreTestingProtocolDelegate:(id)delegate
{
  delegateCopy = delegate;
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v6 = KCSharingLogObject();

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Setting CloudCore testing delegate", v7, 2u);
  }

  [(KCSharingSyncController *)self setCloudCoreTestingDelegate:delegateCopy];
}

- (void)forceReinitSyncEnginesWithCompletionBlock:(id)block
{
  blockCopy = block;
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v6 = KCSharingLogObject();

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Force reinit of sync engines", buf, 2u);
  }

  queue = [(KCSharingSyncController *)self queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006A720;
  v9[3] = &unk_100344DC8;
  v9[4] = self;
  v10 = blockCopy;
  v8 = blockCopy;
  dispatch_async(queue, v9);
}

- (void)cancelSyncEngineOperationsWithCompletionBlock:(id)block
{
  blockCopy = block;
  privateSyncEngine = [(KCSharingSyncController *)self privateSyncEngine];
  sharedSyncEngine = [(KCSharingSyncController *)self sharedSyncEngine];
  queue = [(KCSharingSyncController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006A984;
  block[3] = &unk_100346018;
  block[4] = self;
  dispatch_sync(queue, block);

  if (sharedSyncEngine && privateSyncEngine)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10006A9C8;
    v11[3] = &unk_100344DC8;
    v12 = privateSyncEngine;
    v13 = blockCopy;
    [sharedSyncEngine cancelOperationsWithCompletionHandler:v11];
  }

  else
  {
    loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
    v9 = KCSharingLogObject();

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Completing without cancelling pending operations", v10, 2u);
    }

    blockCopy[2](blockCopy);
  }
}

- (void)performKCSharingFixUpsWithCompletion:(id)completion
{
  completionCopy = completion;
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v6 = KCSharingLogObject();

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Trying to run fixups", v10, 2u);
  }

  fixUpManager = [(KCSharingSyncController *)self fixUpManager];
  store = [(KCSharingSyncController *)self store];
  lockStateTracker = [(KCSharingSyncController *)self lockStateTracker];
  [fixUpManager performFixUpOneWithStore:store lockStateTracker:lockStateTracker WithCompletion:completionCopy];
}

- (void)setupSessionReinitOperationOnSessionInvalidation
{
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v4 = KCSharingLogObject();

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Setting up session reinit and sync engines init after session invalidation", buf, 2u);
  }

  self->_hasOutStandingSyncEngineInitializeInitOpAdded = 0;
  objc_initWeak(buf, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006ACF4;
  v7[3] = &unk_100344DA0;
  objc_copyWeak(&v8, buf);
  [(KCSharingSyncController *)self CKSyncEnginesInitOperationWithDelay:0 withCompletion:v7];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006AE20;
  v5[3] = &unk_100344DA0;
  objc_copyWeak(&v6, buf);
  [(KCSharingSyncController *)self resetReinitCKSyncEnginesOperationWithDelay:0 withCompletion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

- (void)removeCKNotificationListenersAfterSessionInvalidationWithPrivateDB:(id)b sharedDB:(id)dB
{
  bCopy = b;
  dBCopy = dB;
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v9 = KCSharingLogObject();

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Removing CKNotification Listeners", buf, 2u);
  }

  notificationListener = self->_notificationListener;
  if (!notificationListener)
  {
    loggingIdentifier2 = [(KCSharingSyncController *)self loggingIdentifier];
    v13 = KCSharingLogObject();

    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v18 = 0;
    v15 = "Missing CKNotification Listeners";
    v16 = &v18;
LABEL_12:
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v15, v16, 2u);
    goto LABEL_10;
  }

  if (!bCopy || !dBCopy)
  {
    loggingIdentifier3 = [(KCSharingSyncController *)self loggingIdentifier];
    v13 = KCSharingLogObject();

    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *v19 = 0;
    v15 = "Failing to remove CKNotification Listeners, DBs should not be nil";
    v16 = v19;
    goto LABEL_12;
  }

  v11 = [(KCSharingSyncController *)self subscriptionIDForDatabase:bCopy];
  [(CKNotificationListener *)notificationListener unregisterForSubscriptionWithID:v11 inDatabase:bCopy];

  v12 = self->_notificationListener;
  v13 = [(KCSharingSyncController *)self subscriptionIDForDatabase:dBCopy];
  [(CKNotificationListener *)v12 unregisterForSubscriptionWithID:v13 inDatabase:dBCopy];
LABEL_10:
}

- (id)fetchCloudCoreMetadataValueWithErrorForKey:(id)key error:(id *)error
{
  keyCopy = key;
  store = [(KCSharingSyncController *)self store];
  v14 = 0;
  v8 = [store fetchValueForMetadataKey:keyCopy error:&v14];
  v9 = v14;

  if (v9)
  {
    loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
    v11 = KCSharingLogObject();

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v16 = keyCopy;
      v17 = 2114;
      v18 = v9;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to fetch CloudCoreMetadata for key:%{public}@ with error: %{public}@", buf, 0x16u);
    }

    if (error)
    {
      v12 = v9;
      *error = v9;
    }
  }

  return v8;
}

- (BOOL)setCloudCoreMetadataValue:(id)value forKey:(id)key error:(id *)error
{
  valueCopy = value;
  keyCopy = key;
  store = self->_store;
  v15 = 0;
  v10 = [(KCSharingStore *)store setValue:valueCopy forMetadataKey:keyCopy error:&v15];
  v11 = v15;
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v13 = KCSharingLogObject();

  if (v10)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v17 = keyCopy;
      v18 = 2114;
      v19 = valueCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Updated CloudCore Metadata for key: %{public}@ with value: %{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v17 = keyCopy;
    v18 = 2114;
    v19 = v11;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to update CloudCore Metadata for key: %{public}@ with error: %{public}@", buf, 0x16u);
  }

  return v10;
}

- (BOOL)setCurrentUserMetadataFeatureUsage:(unint64_t)usage
{
  v5 = [NSNumber numberWithUnsignedInteger:?];
  v11 = 0;
  v6 = [(KCSharingSyncController *)self updateCurrentUserMetadataForKey:@"isInUse" toValue:v5 withError:&v11];
  v7 = v11;

  if (v7)
  {
    loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
    v9 = KCSharingLogObject();

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      usageCopy = usage;
      v14 = 2112;
      v15 = v7;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to set feature usage to %lu: %@", buf, 0x16u);
    }
  }

  return v6;
}

- (unint64_t)currentUserMetadataFeatureUsage
{
  currentUserMetadata = [(KCSharingSyncController *)self currentUserMetadata];
  v3 = [currentUserMetadata objectForKey:@"isInUse"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (BOOL)isCurrentUserIdentifierAvailable
{
  currentUserMetadata = [(KCSharingSyncController *)self currentUserMetadata];
  v3 = [currentUserMetadata objectForKeyedSubscript:@"currentUserIdentifier"];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)updateCurrentUserMetadataForKey:(id)key toValue:(id)value withError:(id *)error
{
  keyCopy = key;
  valueCopy = value;
  currentUserMetadata = [(KCSharingSyncController *)self currentUserMetadata];
  v11 = [currentUserMetadata mutableCopy];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = +[NSMutableDictionary dictionary];
  }

  v14 = v13;

  v15 = [v14 objectForKey:keyCopy];
  v16 = [v15 isEqual:valueCopy];

  if (v16)
  {
    loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
    v18 = KCSharingLogObject();

    v19 = 1;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = keyCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "CurrentUserMetadata for key %@ already at new value (or removed)", buf, 0xCu);
    }
  }

  else
  {
    [v14 setValue:valueCopy forKey:keyCopy];
    store = [(KCSharingSyncController *)self store];
    v26 = 0;
    v21 = [store setValue:v14 forMetadataKey:@"CurrentUserMetadata" error:&v26];
    v18 = v26;

    if (v21)
    {
      v19 = 1;
    }

    else
    {
      [(KCSharingSyncController *)self isLockedError:v18];
      loggingIdentifier2 = [(KCSharingSyncController *)self loggingIdentifier];
      v23 = KCSharingLogObject();

      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v28 = keyCopy;
        v29 = 2114;
        v30 = valueCopy;
        v31 = 2114;
        v32 = v18;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to update current user metadata for key %{public}@ to value %{public}@ with error: %{public}@", buf, 0x20u);
      }

      if (error)
      {
        v24 = v18;
        v19 = 0;
        *error = v18;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  return v19;
}

- (id)syncEngine:(id)engine nextRecordZoneChangeBatchForContext:(id)context
{
  engineCopy = engine;
  options = [context options];
  scope = [options scope];
  zoneIDs = [scope zoneIDs];
  database = [engineCopy database];
  [database databaseScope];
  v10 = CKDatabaseScopeString();

  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v12 = KCSharingLogObject();

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v50 = v10;
    v51 = 2112;
    v52 = zoneIDs;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Requesting next record batch for scope=%{public}@ in zoneIDs=%@", buf, 0x16u);
  }

  database2 = [engineCopy database];
  v14 = -[KCSharingSyncController fetchCursorForScope:zoneIDs:](self, "fetchCursorForScope:zoneIDs:", [database2 databaseScope], zoneIDs);

  database3 = [engineCopy database];
  v16 = -[KCSharingSyncController fetchOutgoingChangesWithScope:cursor:](self, "fetchOutgoingChangesWithScope:cursor:", [database3 databaseScope], v14);

  if (!v16)
  {
    database4 = [engineCopy database];
    -[KCSharingSyncController saveCursor:forScope:](self, "saveCursor:forScope:", 0, [database4 databaseScope]);
    v25 = 0;
    v24 = v14;
    goto LABEL_18;
  }

  if (![v16 isEmpty])
  {
    v46 = options;
    v26 = v16;
    v24 = v14;
LABEL_14:
    cursor = [v26 cursor];
    database5 = [engineCopy database];
    -[KCSharingSyncController saveCursor:forScope:](self, "saveCursor:forScope:", cursor, [database5 databaseScope]);

    loggingIdentifier2 = [(KCSharingSyncController *)self loggingIdentifier];
    v30 = KCSharingLogObject();

    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      recordsToSave = [v26 recordsToSave];
      v32 = [recordsToSave count];
      recordIDsToDelete = [v26 recordIDsToDelete];
      v34 = [recordIDsToDelete count];
      *buf = 134218754;
      v50 = v32;
      v51 = 2048;
      v52 = v34;
      v53 = 2114;
      v54 = v10;
      v55 = 2112;
      v56 = zoneIDs;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Returning batch of %lu + %lu records to upload in scope=%{public}@, zoneIDs=%@", buf, 0x2Au);
    }

    v35 = [CKSyncEngineRecordZoneChangeBatch alloc];
    recordsToSave2 = [v26 recordsToSave];
    recordIDsToDelete2 = [v26 recordIDsToDelete];
    v25 = [v35 initWithRecordsToSave:recordsToSave2 recordIDsToDelete:recordIDsToDelete2 atomicByZone:0];

    database4 = v26;
    goto LABEL_17;
  }

  loggingIdentifier3 = [(KCSharingSyncController *)self loggingIdentifier];
  v18 = KCSharingLogObject();

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v50 = v10;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Initial change set for scope=%{public}@ was empty; restaging to pick up stragglers", buf, 0xCu);
  }

  database6 = [engineCopy database];
  -[KCSharingSyncController saveCursor:forScope:](self, "saveCursor:forScope:", 0, [database6 databaseScope]);

  store = [(KCSharingSyncController *)self store];
  v48 = 0;
  [store stageAllOutgoingChangesWithError:&v48];
  database4 = v48;

  if (database4)
  {
    loggingIdentifier4 = [(KCSharingSyncController *)self loggingIdentifier];
    v23 = KCSharingLogObject();

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v50 = v10;
      v51 = 2112;
      v52 = database4;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to restage scope=%{public}@ outgoing changes: %@", buf, 0x16u);
    }

    [(KCSharingSyncController *)self isLockedError:database4];
    v24 = v14;
LABEL_11:

    v25 = 0;
    goto LABEL_18;
  }

  v46 = options;
  v39 = [KCSharingOutgoingChangesetCursor alloc];
  database7 = [engineCopy database];
  v24 = -[KCSharingOutgoingChangesetCursor initWithDatabaseScope:desiredZoneIDs:](v39, "initWithDatabaseScope:desiredZoneIDs:", [database7 databaseScope], zoneIDs);

  database8 = [engineCopy database];
  v26 = -[KCSharingSyncController fetchOutgoingChangesWithScope:cursor:](self, "fetchOutgoingChangesWithScope:cursor:", [database8 databaseScope], v24);

  if (v26)
  {
    isEmpty = [v26 isEmpty];
    loggingIdentifier5 = [(KCSharingSyncController *)self loggingIdentifier];
    v44 = KCSharingLogObject();

    v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
    if (isEmpty)
    {
      if (v45)
      {
        *buf = 138543618;
        v50 = v10;
        v51 = 2112;
        v52 = zoneIDs;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Uploaded all records for scope=%{public}@ in zoneIDs=%@", buf, 0x16u);
      }

      v16 = v26;
      options = v46;
      goto LABEL_11;
    }

    if (v45)
    {
      *buf = 138543362;
      v50 = v10;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Found changes to upload for scope=%{public}@ after restaging", buf, 0xCu);
    }

    goto LABEL_14;
  }

  database4 = 0;
  v25 = 0;
LABEL_17:
  options = v46;
LABEL_18:

  return v25;
}

- (void)syncEngine:(id)engine handleEvent:(id)event
{
  engineCopy = engine;
  eventCopy = event;
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v9 = KCSharingLogObject();

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    database = [engineCopy database];
    [database databaseScope];
    v11 = CKDatabaseScopeString();
    *buf = 138412546;
    v178 = v11;
    v179 = 2112;
    v180 = eventCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ Sync Engine Handling Event: %@", buf, 0x16u);
  }

  type = [eventCopy type];
  if (type <= 5)
  {
    if (type > 2)
    {
      if (type == 3)
      {
        fetchedRecordZoneChangesEvent = [eventCopy fetchedRecordZoneChangesEvent];
        v167 = 0u;
        v168 = 0u;
        v169 = 0u;
        v170 = 0u;
        modifications = [fetchedRecordZoneChangesEvent modifications];
        v75 = [modifications countByEnumeratingWithState:&v167 objects:v192 count:16];
        if (v75)
        {
          v76 = v75;
          v77 = *v168;
          do
          {
            for (i = 0; i != v76; i = i + 1)
            {
              if (*v168 != v77)
              {
                objc_enumerationMutation(modifications);
              }

              [(KCSharingSyncController *)self syncEngine:engineCopy didFetchRecord:*(*(&v167 + 1) + 8 * i)];
            }

            v76 = [modifications countByEnumeratingWithState:&v167 objects:v192 count:16];
          }

          while (v76);
        }

        v165 = 0u;
        v166 = 0u;
        v163 = 0u;
        v164 = 0u;
        deletions = [fetchedRecordZoneChangesEvent deletions];
        v79 = [deletions countByEnumeratingWithState:&v163 objects:v191 count:16];
        if (v79)
        {
          v80 = v79;
          v81 = *v164;
          do
          {
            for (j = 0; j != v80; j = j + 1)
            {
              if (*v164 != v81)
              {
                objc_enumerationMutation(deletions);
              }

              v83 = *(*(&v163 + 1) + 8 * j);
              recordID = [v83 recordID];
              recordType = [v83 recordType];
              [(KCSharingSyncController *)self syncEngine:engineCopy recordWithIDWasDeleted:recordID recordType:recordType];
            }

            v80 = [deletions countByEnumeratingWithState:&v163 objects:v191 count:16];
          }

          while (v80);
        }
      }

      else if (type == 4)
      {
        fetchedRecordZoneChangesEvent = [eventCopy sentDatabaseChangesEvent];
        v159 = 0u;
        v160 = 0u;
        v161 = 0u;
        v162 = 0u;
        savedZones = [fetchedRecordZoneChangesEvent savedZones];
        v93 = [savedZones countByEnumeratingWithState:&v159 objects:v190 count:16];
        if (v93)
        {
          v94 = v93;
          v95 = *v160;
          do
          {
            for (k = 0; k != v94; k = k + 1)
            {
              if (*v160 != v95)
              {
                objc_enumerationMutation(savedZones);
              }

              [(KCSharingSyncController *)self syncEngine:engineCopy didSaveRecordZone:*(*(&v159 + 1) + 8 * k)];
            }

            v94 = [savedZones countByEnumeratingWithState:&v159 objects:v190 count:16];
          }

          while (v94);
        }

        v157 = 0u;
        v158 = 0u;
        v155 = 0u;
        v156 = 0u;
        deletedZoneIDs = [fetchedRecordZoneChangesEvent deletedZoneIDs];
        v98 = [deletedZoneIDs countByEnumeratingWithState:&v155 objects:v189 count:16];
        if (v98)
        {
          v99 = v98;
          v100 = *v156;
          do
          {
            for (m = 0; m != v99; m = m + 1)
            {
              if (*v156 != v100)
              {
                objc_enumerationMutation(deletedZoneIDs);
              }

              [(KCSharingSyncController *)self syncEngine:engineCopy didDeleteRecordZoneWithID:*(*(&v155 + 1) + 8 * m)];
            }

            v99 = [deletedZoneIDs countByEnumeratingWithState:&v155 objects:v189 count:16];
          }

          while (v99);
        }

        v153 = 0u;
        v154 = 0u;
        v151 = 0u;
        v152 = 0u;
        failedZoneSaves = [fetchedRecordZoneChangesEvent failedZoneSaves];
        v103 = [failedZoneSaves countByEnumeratingWithState:&v151 objects:v188 count:16];
        if (v103)
        {
          v104 = v103;
          v105 = *v152;
          do
          {
            for (n = 0; n != v104; n = n + 1)
            {
              if (*v152 != v105)
              {
                objc_enumerationMutation(failedZoneSaves);
              }

              v107 = *(*(&v151 + 1) + 8 * n);
              recordZone = [v107 recordZone];
              error = [v107 error];
              [(KCSharingSyncController *)self syncEngine:engineCopy failedToSaveRecordZone:recordZone error:error];
            }

            v104 = [failedZoneSaves countByEnumeratingWithState:&v151 objects:v188 count:16];
          }

          while (v104);
        }

        deletions = [fetchedRecordZoneChangesEvent failedZoneDeletes];
        v147 = 0u;
        v148 = 0u;
        v149 = 0u;
        v150 = 0u;
        v110 = [deletions countByEnumeratingWithState:&v147 objects:v187 count:16];
        if (v110)
        {
          v111 = v110;
          v112 = *v148;
          do
          {
            for (ii = 0; ii != v111; ii = ii + 1)
            {
              if (*v148 != v112)
              {
                objc_enumerationMutation(deletions);
              }

              v114 = *(*(&v147 + 1) + 8 * ii);
              v115 = [deletions objectForKeyedSubscript:v114];
              [(KCSharingSyncController *)self syncEngine:engineCopy failedToDeleteRecordZoneWithID:v114 error:v115];
            }

            v111 = [deletions countByEnumeratingWithState:&v147 objects:v187 count:16];
          }

          while (v111);
        }
      }

      else
      {
        fetchedRecordZoneChangesEvent = [eventCopy sentRecordZoneChangesEvent];
        v143 = 0u;
        v144 = 0u;
        v145 = 0u;
        v146 = 0u;
        savedRecords = [fetchedRecordZoneChangesEvent savedRecords];
        v38 = [savedRecords countByEnumeratingWithState:&v143 objects:v186 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = *v144;
          do
          {
            for (jj = 0; jj != v39; jj = jj + 1)
            {
              if (*v144 != v40)
              {
                objc_enumerationMutation(savedRecords);
              }

              [(KCSharingSyncController *)self syncEngine:engineCopy didSaveRecord:*(*(&v143 + 1) + 8 * jj)];
            }

            v39 = [savedRecords countByEnumeratingWithState:&v143 objects:v186 count:16];
          }

          while (v39);
        }

        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        deletedRecordIDs = [fetchedRecordZoneChangesEvent deletedRecordIDs];
        v43 = [deletedRecordIDs countByEnumeratingWithState:&v139 objects:v185 count:16];
        if (v43)
        {
          v44 = v43;
          v45 = *v140;
          do
          {
            for (kk = 0; kk != v44; kk = kk + 1)
            {
              if (*v140 != v45)
              {
                objc_enumerationMutation(deletedRecordIDs);
              }

              [(KCSharingSyncController *)self syncEngine:engineCopy didDeleteRecordWithID:*(*(&v139 + 1) + 8 * kk)];
            }

            v44 = [deletedRecordIDs countByEnumeratingWithState:&v139 objects:v185 count:16];
          }

          while (v44);
        }

        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        failedRecordSaves = [fetchedRecordZoneChangesEvent failedRecordSaves];
        v48 = [failedRecordSaves countByEnumeratingWithState:&v135 objects:v184 count:16];
        if (v48)
        {
          v49 = v48;
          v50 = *v136;
          do
          {
            for (mm = 0; mm != v49; mm = mm + 1)
            {
              if (*v136 != v50)
              {
                objc_enumerationMutation(failedRecordSaves);
              }

              v52 = *(*(&v135 + 1) + 8 * mm);
              record = [v52 record];
              error2 = [v52 error];
              [(KCSharingSyncController *)self syncEngine:engineCopy failedToSaveRecord:record error:error2];
            }

            v49 = [failedRecordSaves countByEnumeratingWithState:&v135 objects:v184 count:16];
          }

          while (v49);
        }

        deletions = [fetchedRecordZoneChangesEvent failedRecordDeletes];
        v131 = 0u;
        v132 = 0u;
        v133 = 0u;
        v134 = 0u;
        v55 = [deletions countByEnumeratingWithState:&v131 objects:v183 count:16];
        if (v55)
        {
          v56 = v55;
          v57 = *v132;
          do
          {
            for (nn = 0; nn != v56; nn = nn + 1)
            {
              if (*v132 != v57)
              {
                objc_enumerationMutation(deletions);
              }

              v59 = *(*(&v131 + 1) + 8 * nn);
              v60 = [deletions objectForKeyedSubscript:v59];
              [(KCSharingSyncController *)self syncEngine:engineCopy failedToDeleteRecordWithID:v59 error:v60];
            }

            v56 = [deletions countByEnumeratingWithState:&v131 objects:v183 count:16];
          }

          while (v56);
        }
      }

      goto LABEL_136;
    }

    if (!type)
    {
      fetchedRecordZoneChangesEvent = [eventCopy stateUpdateEvent];
      deletions = [fetchedRecordZoneChangesEvent stateSerialization];
      v176 = 0;
      v66 = [NSKeyedArchiver archivedDataWithRootObject:deletions requiringSecureCoding:1 error:&v176];
      v67 = v176;
      v68 = v67;
      if (!v66 || v67)
      {
        loggingIdentifier2 = [(KCSharingSyncController *)self loggingIdentifier];
        v119 = KCSharingLogObject();

        if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
        {
          database2 = [engineCopy database];
          [database2 databaseScope];
          v124 = CKDatabaseScopeString();
          *buf = 138412290;
          v178 = v124;
          _os_log_error_impl(&_mh_execute_header, v119, OS_LOG_TYPE_ERROR, "Error while archiving %@ sync engine state metadata", buf, 0xCu);
        }
      }

      else
      {
        [(KCSharingSyncController *)self syncEngine:engineCopy didUpdateMetadata:v66];
      }

      goto LABEL_136;
    }

    if (type != 1)
    {
      if (type == 2)
      {
        v129 = eventCopy;
        [eventCopy fetchedDatabaseChangesEvent];
        v172 = 0u;
        v173 = 0u;
        v174 = 0u;
        v128 = v175 = 0u;
        obj = [v128 modifications];
        v13 = [obj countByEnumeratingWithState:&v172 objects:v194 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v173;
          do
          {
            for (i1 = 0; i1 != v14; i1 = i1 + 1)
            {
              if (*v173 != v15)
              {
                objc_enumerationMutation(obj);
              }

              v17 = *(*(&v172 + 1) + 8 * i1);
              loggingIdentifier3 = [(KCSharingSyncController *)self loggingIdentifier];
              v19 = KCSharingLogObject();

              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                database3 = [engineCopy database];
                [database3 databaseScope];
                v21 = CKDatabaseScopeString();
                *buf = 138412546;
                v178 = v17;
                v179 = 2112;
                v180 = v21;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Database incoming record zone %@ changes reason in %@ sync engine", buf, 0x16u);
              }
            }

            v14 = [obj countByEnumeratingWithState:&v172 objects:v194 count:16];
          }

          while (v14);
        }

        memset(v171, 0, sizeof(v171));
        deletions2 = [v128 deletions];
        eventCopy = v129;
        if (![deletions2 countByEnumeratingWithState:v171 objects:v193 count:16])
        {
          goto LABEL_144;
        }

        v23 = **(&v171[0] + 1);
        if ([**(&v171[0] + 1) reason] == 1)
        {
          loggingIdentifier4 = [(KCSharingSyncController *)self loggingIdentifier];
          v25 = KCSharingLogObject();

          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            database4 = [engineCopy database];
            [database4 databaseScope];
            v27 = CKDatabaseScopeString();
            *buf = 138412546;
            v178 = @"CKSyncEngineZoneDeletionReasonPurged";
            v179 = 2112;
            v180 = v27;
LABEL_141:
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Database incoming changes deletion reason %@ in %@ sync engine", buf, 0x16u);
          }
        }

        else if ([v23 reason])
        {
          if ([v23 reason] != 2)
          {
LABEL_143:
            zoneID = [v23 zoneID];
            [(KCSharingSyncController *)self syncEngine:engineCopy zoneWithIDWasDeleted:zoneID];

LABEL_144:
            goto LABEL_138;
          }

          loggingIdentifier5 = [(KCSharingSyncController *)self loggingIdentifier];
          v25 = KCSharingLogObject();

          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            database4 = [engineCopy database];
            [database4 databaseScope];
            v27 = CKDatabaseScopeString();
            *buf = 138412546;
            v178 = @"CKSyncEngineZoneDeletionReasonEncryptedDataReset";
            v179 = 2112;
            v180 = v27;
            goto LABEL_141;
          }
        }

        else
        {
          loggingIdentifier6 = [(KCSharingSyncController *)self loggingIdentifier];
          v25 = KCSharingLogObject();

          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            database4 = [engineCopy database];
            [database4 databaseScope];
            v27 = CKDatabaseScopeString();
            *buf = 138412546;
            v178 = @"CKSyncEngineZoneDeletionReasonDeleted";
            v179 = 2112;
            v180 = v27;
            goto LABEL_141;
          }
        }

        goto LABEL_143;
      }

      goto LABEL_125;
    }

    fetchedRecordZoneChangesEvent = [eventCopy accountChangeEvent];
    deletions = [fetchedRecordZoneChangesEvent previousUser];
    currentUser = [fetchedRecordZoneChangesEvent currentUser];
    [(KCSharingSyncController *)self syncEngine:engineCopy accountChangedFromUserRecordID:deletions toUserRecordID:currentUser];
    goto LABEL_88;
  }

  if (type <= 8)
  {
    if (type == 6)
    {
      fetchedRecordZoneChangesEvent = [eventCopy willFetchChangesEvent];
      deletions = [fetchedRecordZoneChangesEvent context];
      reason = [deletions reason];
      loggingIdentifier7 = [(KCSharingSyncController *)self loggingIdentifier];
      v71 = KCSharingLogObject();

      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        database5 = [engineCopy database];
        [database5 databaseScope];
        v73 = CKDatabaseScopeString();
        *buf = 138412546;
        v178 = v73;
        v179 = 2048;
        v180 = reason;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "%@ sync engine will fetch changes due to reason: %ld", buf, 0x16u);
      }

      goto LABEL_136;
    }

    if (type == 7)
    {
      fetchedRecordZoneChangesEvent = [eventCopy willFetchRecordZoneChangesEvent];
      loggingIdentifier8 = [(KCSharingSyncController *)self loggingIdentifier];
      v88 = KCSharingLogObject();

      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
      {
        database6 = [engineCopy database];
        [database6 databaseScope];
        v90 = CKDatabaseScopeString();
        zoneID2 = [fetchedRecordZoneChangesEvent zoneID];
        *buf = 138412547;
        v178 = v90;
        v179 = 2113;
        v180 = zoneID2;
        _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "%@ sync engine will fetch changes for zone: %{private}@", buf, 0x16u);
      }

      goto LABEL_137;
    }

    fetchedRecordZoneChangesEvent = [eventCopy didFetchRecordZoneChangesEvent];
    error3 = [fetchedRecordZoneChangesEvent error];

    if (!error3)
    {
LABEL_137:

      goto LABEL_138;
    }

    error4 = [fetchedRecordZoneChangesEvent error];
    IsCode = CKErrorIsCode();

    loggingIdentifier9 = [(KCSharingSyncController *)self loggingIdentifier];
    deletions = KCSharingLogObject();

    if (IsCode)
    {
      if (os_log_type_enabled(deletions, OS_LOG_TYPE_DEFAULT))
      {
        database7 = [engineCopy database];
        [database7 databaseScope];
        v35 = CKDatabaseScopeString();
        zoneID3 = [fetchedRecordZoneChangesEvent zoneID];
        *buf = 138412547;
        v178 = v35;
        v179 = 2113;
        v180 = zoneID3;
        _os_log_impl(&_mh_execute_header, deletions, OS_LOG_TYPE_DEFAULT, "%@ sync engine received zone not found error for zone: %{private}@, treating as zone deletion", buf, 0x16u);
      }

      deletions = [fetchedRecordZoneChangesEvent zoneID];
      [(KCSharingSyncController *)self syncEngine:engineCopy zoneWithIDWasDeleted:deletions];
      goto LABEL_136;
    }

    if (!os_log_type_enabled(deletions, OS_LOG_TYPE_ERROR))
    {
LABEL_136:

      goto LABEL_137;
    }

    database8 = [engineCopy database];
    [database8 databaseScope];
    currentUser = CKDatabaseScopeString();
    error5 = [fetchedRecordZoneChangesEvent error];
    zoneID4 = [fetchedRecordZoneChangesEvent zoneID];
    *buf = 138412803;
    v178 = currentUser;
    v179 = 2114;
    v180 = error5;
    v181 = 2113;
    v182 = zoneID4;
    _os_log_error_impl(&_mh_execute_header, deletions, OS_LOG_TYPE_ERROR, "%@ sync engine received error: %{public}@ while fetching zone changes for: %{private}@", buf, 0x20u);

LABEL_88:
    goto LABEL_136;
  }

  if (type != 9)
  {
    if (type == 10)
    {
      loggingIdentifier10 = [(KCSharingSyncController *)self loggingIdentifier];
      v62 = KCSharingLogObject();

      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        database9 = [engineCopy database];
        [database9 databaseScope];
        v64 = CKDatabaseScopeString();
        *buf = 138412290;
        v178 = v64;
        v65 = "%@ sync engine will send changes";
        goto LABEL_123;
      }
    }

    else
    {
      if (type != 11)
      {
LABEL_125:
        loggingIdentifier11 = [(KCSharingSyncController *)self loggingIdentifier];
        v62 = KCSharingLogObject();

        if (!os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_126;
        }

        database9 = [engineCopy database];
        [database9 databaseScope];
        v64 = CKDatabaseScopeString();
        *buf = 138412290;
        v178 = v64;
        _os_log_fault_impl(&_mh_execute_header, v62, OS_LOG_TYPE_FAULT, "%@ sync engine received unknown event", buf, 0xCu);
        goto LABEL_124;
      }

      loggingIdentifier12 = [(KCSharingSyncController *)self loggingIdentifier];
      v62 = KCSharingLogObject();

      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        database9 = [engineCopy database];
        [database9 databaseScope];
        v64 = CKDatabaseScopeString();
        *buf = 138412290;
        v178 = v64;
        v65 = "%@ sync engine finished sending changes";
LABEL_123:
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, v65, buf, 0xCu);
LABEL_124:
      }
    }

LABEL_126:

    goto LABEL_138;
  }

  [(KCSharingSyncController *)self syncEngineDidEndFetchingChanges:engineCopy];
LABEL_138:
}

- (BOOL)syncEngine:(id)engine shouldFetchChangesForZoneID:(id)d
{
  engineCopy = engine;
  lockStateTracker = [(KCSharingSyncController *)self lockStateTracker];
  isLocked = [lockStateTracker isLocked];

  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v9 = KCSharingLogObject();

  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (isLocked)
  {
    if (v10)
    {
      database = [engineCopy database];
      [database databaseScope];
      v12 = CKDatabaseScopeString();
      v15 = 138543362;
      v16 = v12;
      v13 = "Declining fetch for scope=%{public}@, we believe the device is locked";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v13, &v15, 0xCu);
    }
  }

  else if (v10)
  {
    database = [engineCopy database];
    [database databaseScope];
    v12 = CKDatabaseScopeString();
    v15 = 138543362;
    v16 = v12;
    v13 = "Accepting fetch for scope=%{public}@, we believe device is unlocked";
    goto LABEL_6;
  }

  return isLocked ^ 1;
}

- (void)syncEngine:(id)engine accountChangedFromUserRecordID:(id)d toUserRecordID:(id)iD
{
  engineCopy = engine;
  dCopy = d;
  iDCopy = iD;
  v11 = sub_10001078C();
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v13 = KCSharingLogObject();

  if (v11)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      database = [engineCopy database];
      [database scope];
      v15 = CKDatabaseScopeString();
      *buf = 138543874;
      v25 = v15;
      v26 = 2114;
      v27 = dCopy;
      v28 = 2114;
      v29 = iDCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Account Change With CloudCore: %{public}@ sync engine received account changed notification: %{public}@ -> %{public}@", buf, 0x20u);
    }

    recordName = [iDCopy recordName];

    if (!recordName)
    {
      cloudCoreUtilities = [(KCSharingSyncController *)self cloudCoreUtilities];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10006D73C;
      v22[3] = &unk_100334F20;
      v22[4] = self;
      v23 = engineCopy;
      [cloudCoreUtilities invokeDummyOperationOnAccountSignOutWithCompletionHandler:v22];
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      database2 = [engineCopy database];
      [database2 scope];
      v19 = CKDatabaseScopeString();
      *buf = 138543874;
      v25 = v19;
      v26 = 2114;
      v27 = dCopy;
      v28 = 2114;
      v29 = iDCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ sync engine received account changed notification: %{public}@ -> %{public}@", buf, 0x20u);
    }

    recordName2 = [dCopy recordName];
    recordName3 = [iDCopy recordName];
    [(KCSharingSyncController *)self handleAccountChangeFromUserRecordName:recordName2 toUserRecordName:recordName3 shouldWipeLocalState:1];
  }
}

- (void)handleAccountChangeFromUserRecordName:(id)name toUserRecordName:(id)recordName shouldWipeLocalState:(BOOL)state
{
  stateCopy = state;
  nameCopy = name;
  recordNameCopy = recordName;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = os_transaction_create();
  store = [(KCSharingSyncController *)selfCopy store];
  v39 = 0;
  v13 = [store fetchValueForMetadataKey:@"CurrentUserMetadata" error:&v39];
  v14 = v39;

  if (v13 || !v14)
  {
    v17 = [v13 objectForKeyedSubscript:@"currentUserIdentifier"];
    if (([v17 isEqual:recordNameCopy] & 1) == 0 && recordNameCopy | v17)
    {
      if (stateCopy)
      {
        store2 = [(KCSharingSyncController *)selfCopy store];
        v38 = 0;
        v21 = [store2 wipeWithError:&v38];
        v22 = v38;

        if (v21)
        {
          loggingIdentifier = [(KCSharingSyncController *)selfCopy loggingIdentifier];
          v24 = KCSharingLogObject();

          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v41 = v22;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Wiped store %@", buf, 0xCu);
          }
        }

        else
        {
          loggingIdentifier2 = [(KCSharingSyncController *)selfCopy loggingIdentifier];
          v26 = KCSharingLogObject();

          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v41 = v22;
            _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to wipe store with error %@", buf, 0xCu);
          }

          [(KCSharingSyncController *)selfCopy isLockedError:v22];
        }
      }

      v37 = 0;
      v27 = [(KCSharingSyncController *)selfCopy updateCurrentUserMetadataForKey:@"currentUserIdentifier" toValue:recordNameCopy withError:&v37];
      v19 = v37;
      if (v27)
      {
        loggingIdentifier3 = [(KCSharingSyncController *)selfCopy loggingIdentifier];
        v29 = KCSharingLogObject();

        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Updated the user metadata during the sync engine's account change notification", buf, 2u);
        }
      }

      else
      {
        loggingIdentifier4 = [(KCSharingSyncController *)selfCopy loggingIdentifier];
        v29 = KCSharingLogObject();

        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v41 = v19;
          _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to update currentUserMetadata after wiping store for account changed notification: %{public}@", buf, 0xCu);
        }
      }

      if ([(KCSharingSyncController *)selfCopy forTesting])
      {
        loggingIdentifier5 = [(KCSharingSyncController *)selfCopy loggingIdentifier];
        v32 = KCSharingLogObject();

        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Testing mode: Skipping user provisioning during the sync engine's account change notification", buf, 2u);
        }
      }

      else if (recordNameCopy)
      {
        [(KCSharingSyncController *)selfCopy registerProvisioningActivity];
      }

      else
      {
        [(KCSharingSyncController *)selfCopy unregisterProvisioningActivity];
      }

      if (sub_10001078C())
      {
        [(KCSharingSyncController *)selfCopy cancelExistingSyncEngines];
      }

      if (recordNameCopy)
      {
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_10006DEB0;
        v36[3] = &unk_100335028;
        v36[4] = selfCopy;
        v36[5] = mach_absolute_time();
        [(KCSharingSyncController *)selfCopy fetchRemoteChangesForZoneIDs:0 completion:v36];
      }

      else
      {
        loggingIdentifier6 = [(KCSharingSyncController *)selfCopy loggingIdentifier];
        v34 = KCSharingLogObject();

        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Skipping Force-fetch remote changes during the sync engine's account change notification", buf, 2u);
        }
      }

      xpcListenerDelegate = [(KCSharingSyncController *)selfCopy xpcListenerDelegate];
      [xpcListenerDelegate accountChanged];
    }

    else
    {
      loggingIdentifier7 = [(KCSharingSyncController *)selfCopy loggingIdentifier];
      v19 = KCSharingLogObject();

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v41 = v17;
        v42 = 2114;
        v43 = recordNameCopy;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Ignored account changed notification: currentUserIdentifer=%{public}@ -> newUserIdentifier=%{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    loggingIdentifier8 = [(KCSharingSyncController *)selfCopy loggingIdentifier];
    v16 = KCSharingLogObject();

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v41 = v14;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Ignored account changed notification because we failed to fetch currentUserMetadata: %{public}@", buf, 0xCu);
    }

    [(KCSharingSyncController *)selfCopy isLockedError:v14];
  }

  objc_sync_exit(selfCopy);
}

- (void)cancelExistingSyncEngines
{
  queue = [(KCSharingSyncController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006E368;
  block[3] = &unk_100346018;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)syncEngine:(id)engine recordToSaveForRecordID:(id)d
{
  dCopy = d;
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v7 = KCSharingLogObject();

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = dCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Requesting record for recordID=%@", buf, 0xCu);
  }

  store = self->_store;
  v15 = 0;
  v9 = [(KCSharingStore *)store fetchOutgoingRecordWithRecordID:dCopy error:&v15];
  v10 = v15;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    loggingIdentifier2 = [(KCSharingSyncController *)self loggingIdentifier];
    v13 = KCSharingLogObject();

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v17 = dCopy;
      v18 = 2112;
      v19 = v10;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to fetch record for recordID=%@ with error=%@", buf, 0x16u);
    }

    [(KCSharingSyncController *)self isLockedError:v10];
  }

  return v9;
}

- (void)syncEngine:(id)engine didUpdateMetadata:(id)metadata
{
  engineCopy = engine;
  metadataCopy = metadata;
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v9 = KCSharingLogObject();

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    database = [(CKSyncEngine *)engineCopy database];
    [database databaseScope];
    v11 = CKDatabaseScopeString();
    *buf = 138412290;
    v27 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Updating %@ engine metadata", buf, 0xCu);
  }

  if (self->_privateSyncEngine == engineCopy)
  {
    store = self->_store;
    v25 = 0;
    v14 = [(KCSharingStore *)store setValue:metadataCopy forMetadataKey:@"CKSyncEnginePrivateMetadata" error:&v25];
    v15 = v25;
  }

  else
  {
    if (self->_sharedSyncEngine != engineCopy)
    {
      v12 = 0;
      goto LABEL_9;
    }

    v16 = self->_store;
    v24 = 0;
    v14 = [(KCSharingStore *)v16 setValue:metadataCopy forMetadataKey:@"CKSyncEngineSharedMetadata" error:&v24];
    v15 = v24;
  }

  v12 = v15;
  if ((v14 & 1) == 0)
  {
LABEL_9:
    v17 = [(KCSharingSyncController *)self isLockedError:v12];
    loggingIdentifier2 = [(KCSharingSyncController *)self loggingIdentifier];
    v19 = KCSharingLogObject();

    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (v17)
    {
      if (v20)
      {
        *buf = 0;
        v21 = "Failed to update engine metadata because locked";
        v22 = v19;
        v23 = 2;
LABEL_16:
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);
      }
    }

    else if (v20)
    {
      *buf = 138412290;
      v27 = v12;
      v21 = "Failed to update engine metadata with error=%@";
      v22 = v19;
      v23 = 12;
      goto LABEL_16;
    }
  }
}

- (void)syncEngineDidEndFetchingChanges:(id)changes
{
  changesCopy = changes;
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v6 = KCSharingLogObject();

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished staging incoming changes; applying...", buf, 2u);
  }

  v7 = +[NSMutableArray array];
  store = [(KCSharingSyncController *)self store];
  v19 = 0;
  v9 = [store mergeWithUpdateInfos:v7 error:&v19];
  v10 = v19;

  if ((v9 & 1) == 0)
  {
    loggingIdentifier2 = [(KCSharingSyncController *)self loggingIdentifier];
    v12 = KCSharingLogObject();

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v10;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to apply staged incoming changes with error=%@", buf, 0xCu);
    }

    [(KCSharingSyncController *)self isLockedError:v10 duringFetchForEngine:changesCopy];
  }

  if ([v7 count])
  {
    v13 = +[KCSharingGroupNotificationConnection sharedInstance];
    [v13 groupsUpdatedWithInfos:v7];

    xpcListenerDelegate = [(KCSharingSyncController *)self xpcListenerDelegate];
    [xpcListenerDelegate groupsUpdated];

    loggingIdentifier3 = [(KCSharingSyncController *)self loggingIdentifier];
    v16 = KCSharingLogObject();

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = @"com.apple.security.kcsharing.groupsupdated";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "posting notification %@", buf, 0xCu);
    }

    notify_post([@"com.apple.security.kcsharing.groupsupdated" UTF8String]);
  }

  else
  {
    loggingIdentifier4 = [(KCSharingSyncController *)self loggingIdentifier];
    v18 = KCSharingLogObject();

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = @"com.apple.security.kcsharing.groupsupdated";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "No Updates, not posting notification %@", buf, 0xCu);
    }
  }
}

- (void)syncEngine:(id)engine recordWithIDWasDeleted:(id)deleted recordType:(id)type
{
  engineCopy = engine;
  deletedCopy = deleted;
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v10 = KCSharingLogObject();

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    database = [engineCopy database];
    [database databaseScope];
    v12 = CKDatabaseScopeString();
    *buf = 138412546;
    v20 = deletedCopy;
    v21 = 2114;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Staging incoming record deletion with recordID=%@ for scope=%{public}@", buf, 0x16u);
  }

  store = self->_store;
  v18 = 0;
  v14 = [(KCSharingStore *)store stageIncomingDeletionForRecordID:deletedCopy error:&v18];
  v15 = v18;
  if ((v14 & 1) == 0)
  {
    loggingIdentifier2 = [(KCSharingSyncController *)self loggingIdentifier];
    v17 = KCSharingLogObject();

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v20 = deletedCopy;
      v21 = 2112;
      v22 = v15;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to stage incoming deletion for recordID=%@ with error=%@", buf, 0x16u);
    }

    [(KCSharingSyncController *)self isLockedError:v15 duringFetchForEngine:engineCopy];
  }
}

- (void)syncEngine:(id)engine zoneWithIDWasDeleted:(id)deleted
{
  engineCopy = engine;
  deletedCopy = deleted;
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v9 = KCSharingLogObject();

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    database = [engineCopy database];
    [database databaseScope];
    v11 = CKDatabaseScopeString();
    *buf = 138412546;
    v20 = deletedCopy;
    v21 = 2114;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Staging incoming share deletion in zoneID=%@ for scope=%{public}@", buf, 0x16u);
  }

  v12 = [[CKRecordID alloc] initWithRecordName:CKRecordNameZoneWideShare zoneID:deletedCopy];
  store = [(KCSharingSyncController *)self store];
  v18 = 0;
  v14 = [store stageIncomingDeletionForRecordID:v12 error:&v18];
  v15 = v18;

  if ((v14 & 1) == 0)
  {
    loggingIdentifier2 = [(KCSharingSyncController *)self loggingIdentifier];
    v17 = KCSharingLogObject();

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v20 = deletedCopy;
      v21 = 2112;
      v22 = v15;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to stage incoming share deletion in zoneID=%@ with error=%@", buf, 0x16u);
    }

    [(KCSharingSyncController *)self isLockedError:v15 duringFetchForEngine:engineCopy];
  }
}

- (void)syncEngine:(id)engine didFetchRecord:(id)record
{
  engineCopy = engine;
  recordCopy = record;
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v9 = KCSharingLogObject();

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    database = [engineCopy database];
    [database databaseScope];
    v11 = CKDatabaseScopeString();
    *buf = 138412546;
    v19 = v11;
    v20 = 2112;
    v21 = recordCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "sync engine %@ did fetch record %@", buf, 0x16u);
  }

  store = self->_store;
  v17 = 0;
  v13 = [(KCSharingStore *)store stageIncomingRecord:recordCopy error:&v17];
  v14 = v17;
  if ((v13 & 1) == 0)
  {
    loggingIdentifier2 = [(KCSharingSyncController *)self loggingIdentifier];
    v16 = KCSharingLogObject();

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v14;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to stage incoming record with error=%@", buf, 0xCu);
    }

    [(KCSharingSyncController *)self isLockedError:v14 duringFetchForEngine:engineCopy];
  }
}

- (void)syncEngine:(id)engine failedToDeleteRecordWithID:(id)d error:(id)error
{
  dCopy = d;
  errorCopy = error;
  recordName = [dCopy recordName];
  v10 = [recordName isEqualToString:CKRecordNameZoneWideShare];

  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v12 = KCSharingLogObject();

  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
  if (v10)
  {
    if (v13)
    {
      *buf = 138412546;
      v20 = dCopy;
      v21 = 2112;
      v22 = errorCopy;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Dropping outgoing deletion for shareRecordID=%@ that failed to delete with error=%@", buf, 0x16u);
    }

    store = [(KCSharingSyncController *)self store];
    v18 = 0;
    v15 = [store dropOutgoingChangeForRecordID:dCopy error:&v18];
    v12 = v18;

    if ((v15 & 1) == 0)
    {
      loggingIdentifier2 = [(KCSharingSyncController *)self loggingIdentifier];
      v17 = KCSharingLogObject();

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v20 = dCopy;
        v21 = 2112;
        v22 = v12;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to drop outgoing deletion for shareRecordID=%@ with error=%@", buf, 0x16u);
      }

      [(KCSharingSyncController *)self isLockedError:v12];
    }
  }

  else if (v13)
  {
    *buf = 138412546;
    v20 = dCopy;
    v21 = 2112;
    v22 = errorCopy;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to delete record for recordID=%@ with error=%@", buf, 0x16u);
  }
}

- (void)syncEngine:(id)engine didDeleteRecordWithID:(id)d
{
  dCopy = d;
  store = self->_store;
  v17 = dCopy;
  v7 = [NSArray arrayWithObjects:&v17 count:1];
  v14 = 0;
  v8 = [(KCSharingStore *)store updateMirrorWithSavedRecords:0 deletedRecordIDs:v7 error:&v14];
  v9 = v14;

  if ((v8 & 1) == 0)
  {
    loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
    v11 = KCSharingLogObject();

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v9;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to update mirror with deleted record with error=%@", buf, 0xCu);
    }

    [(KCSharingSyncController *)self isLockedError:v9];
  }

  loggingIdentifier2 = [(KCSharingSyncController *)self loggingIdentifier];
  v13 = KCSharingLogObject();

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = dCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Deleted record with recordID=%@", buf, 0xCu);
  }
}

- (void)syncEngine:(id)engine failedToSaveRecord:(id)record error:(id)error
{
  engineCopy = engine;
  recordCopy = record;
  errorCopy = error;
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  v13 = [recordName isEqualToString:CKRecordNameZoneWideShare];

  if (v13)
  {
    loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
    v15 = KCSharingLogObject();

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v40 = recordCopy;
      v41 = 2112;
      v42 = errorCopy;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Dropping outgoing entry for share=%@ that failed to save with error=%@", buf, 0x16u);
    }

    store = [(KCSharingSyncController *)self store];
    recordID2 = [recordCopy recordID];
    v38 = 0;
    v18 = [store dropOutgoingChangeForRecordID:recordID2 error:&v38];
    v19 = v38;

    if ((v18 & 1) == 0)
    {
      loggingIdentifier2 = [(KCSharingSyncController *)self loggingIdentifier];
      v21 = KCSharingLogObject();

      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v40 = recordCopy;
        v41 = 2112;
        v42 = v19;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to drop outgoing entry for share=%@ with error=%@", buf, 0x16u);
      }

      [(KCSharingSyncController *)self isLockedError:v19];
    }

LABEL_17:

    goto LABEL_27;
  }

  if (CKErrorIsCode())
  {
    userInfo = [errorCopy userInfo];
    v19 = [userInfo objectForKeyedSubscript:CKRecordChangedErrorServerRecordKey];

    if (v19)
    {
      store = self->_store;
      v37 = 0;
      v24 = [(KCSharingStore *)store stageIncomingRecord:v19 error:&v37];
      v25 = v37;
      if ((v24 & 1) == 0)
      {
        loggingIdentifier3 = [(KCSharingSyncController *)self loggingIdentifier];
        v27 = KCSharingLogObject();

        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v40 = v25;
          _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to stage conflicting server record with error=%@", buf, 0xCu);
        }

        [(KCSharingSyncController *)self isLockedError:v25];
      }

      loggingIdentifier4 = [(KCSharingSyncController *)self loggingIdentifier];
      v29 = KCSharingLogObject();

      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v40 = recordCopy;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Staged conflicting server record=%@", buf, 0xCu);
      }

      goto LABEL_17;
    }
  }

  IsCode = CKErrorIsCode();
  loggingIdentifier5 = [(KCSharingSyncController *)self loggingIdentifier];
  v32 = KCSharingLogObject();

  if (IsCode)
  {
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      recordID3 = [recordCopy recordID];
      *buf = 138412290;
      v40 = recordID3;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Failed to save recordID=%@ because we missed a deletion, will treat it as deletion now", buf, 0xCu);
    }

    recordID4 = [recordCopy recordID];
    [(KCSharingSyncController *)self syncEngine:engineCopy recordWithIDWasDeleted:recordID4 recordType:@"unused"];

    [engineCopy setNeedsToFetchChanges];
  }

  else
  {
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v40 = recordCopy;
      _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Failed to save record=%@", buf, 0xCu);
    }

    loggingIdentifier6 = [(KCSharingSyncController *)self loggingIdentifier];
    v36 = KCSharingLogObject();

    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v40 = errorCopy;
      _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, " => error=%@", buf, 0xCu);
    }
  }

LABEL_27:
}

- (void)syncEngine:(id)engine didSaveRecord:(id)record
{
  recordCopy = record;
  store = self->_store;
  v20 = recordCopy;
  v7 = [NSArray arrayWithObjects:&v20 count:1];
  v15 = 0;
  v8 = [(KCSharingStore *)store updateMirrorWithSavedRecords:v7 deletedRecordIDs:0 error:&v15];
  v9 = v15;

  if ((v8 & 1) == 0)
  {
    loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
    v11 = KCSharingLogObject();

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      recordID = [recordCopy recordID];
      *buf = 138412546;
      v17 = recordID;
      v18 = 2112;
      v19 = v9;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to update mirror with saved record %@ with error=%@", buf, 0x16u);
    }

    [(KCSharingSyncController *)self isLockedError:v9];
  }

  loggingIdentifier2 = [(KCSharingSyncController *)self loggingIdentifier];
  v13 = KCSharingLogObject();

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = recordCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Successfully uploaded record=%@", buf, 0xCu);
  }

  [(KCSharingSyncController *)self sendNewIDSInvitesForRecord:recordCopy];
}

- (id)syncEngine:(id)engine nextBatchOfRecordsToModifyForZoneIDs:(id)ds
{
  engineCopy = engine;
  dsCopy = ds;
  database = [engineCopy database];
  [database databaseScope];
  v9 = CKDatabaseScopeString();

  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v11 = KCSharingLogObject();

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v47 = v9;
    v48 = 2112;
    v49 = dsCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Requesting next record batch for scope=%{public}@ in zoneIDs=%@", buf, 0x16u);
  }

  database2 = [engineCopy database];
  v13 = -[KCSharingSyncController fetchCursorForScope:zoneIDs:](self, "fetchCursorForScope:zoneIDs:", [database2 databaseScope], dsCopy);

  database3 = [engineCopy database];
  v15 = -[KCSharingSyncController fetchOutgoingChangesWithScope:cursor:](self, "fetchOutgoingChangesWithScope:cursor:", [database3 databaseScope], v13);

  if (v15)
  {
    if ([v15 isEmpty])
    {
      loggingIdentifier2 = [(KCSharingSyncController *)self loggingIdentifier];
      v17 = KCSharingLogObject();

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v47 = v9;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Initial change set for scope=%{public}@ was empty; restaging to pick up stragglers", buf, 0xCu);
      }

      database4 = [engineCopy database];
      -[KCSharingSyncController saveCursor:forScope:](self, "saveCursor:forScope:", 0, [database4 databaseScope]);

      store = [(KCSharingSyncController *)self store];
      v45 = 0;
      [store stageAllOutgoingChangesWithError:&v45];
      database8 = v45;

      if (database8)
      {
        loggingIdentifier3 = [(KCSharingSyncController *)self loggingIdentifier];
        v22 = KCSharingLogObject();

        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v47 = v9;
          v48 = 2112;
          v49 = database8;
          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to restage scope=%{public}@ outgoing changes: %@", buf, 0x16u);
        }

        [(KCSharingSyncController *)self isLockedError:database8];
        v23 = v13;
LABEL_11:

LABEL_12:
        v24 = 0;
        goto LABEL_18;
      }

      v38 = [KCSharingOutgoingChangesetCursor alloc];
      database5 = [engineCopy database];
      v23 = -[KCSharingOutgoingChangesetCursor initWithDatabaseScope:desiredZoneIDs:](v38, "initWithDatabaseScope:desiredZoneIDs:", [database5 databaseScope], dsCopy);

      database6 = [engineCopy database];
      v25 = -[KCSharingSyncController fetchOutgoingChangesWithScope:cursor:](self, "fetchOutgoingChangesWithScope:cursor:", [database6 databaseScope], v23);

      if (!v25)
      {
        database8 = 0;
        goto LABEL_12;
      }

      isEmpty = [v25 isEmpty];
      loggingIdentifier4 = [(KCSharingSyncController *)self loggingIdentifier];
      v43 = KCSharingLogObject();

      v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
      if (isEmpty)
      {
        if (v44)
        {
          *buf = 138543618;
          v47 = v9;
          v48 = 2112;
          v49 = dsCopy;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Uploaded all records for scope=%{public}@ in zoneIDs=%@", buf, 0x16u);
        }

        v15 = v25;
        goto LABEL_11;
      }

      if (v44)
      {
        *buf = 138543362;
        v47 = v9;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Found changes to upload for scope=%{public}@ after restaging", buf, 0xCu);
      }
    }

    else
    {
      v25 = v15;
      v23 = v13;
    }

    cursor = [v25 cursor];
    database7 = [engineCopy database];
    -[KCSharingSyncController saveCursor:forScope:](self, "saveCursor:forScope:", cursor, [database7 databaseScope]);

    loggingIdentifier5 = [(KCSharingSyncController *)self loggingIdentifier];
    v29 = KCSharingLogObject();

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      recordsToSave = [v25 recordsToSave];
      v31 = [recordsToSave count];
      recordIDsToDelete = [v25 recordIDsToDelete];
      v33 = [recordIDsToDelete count];
      *buf = 134218754;
      v47 = v31;
      v48 = 2048;
      v49 = v33;
      v50 = 2114;
      v51 = v9;
      v52 = 2112;
      v53 = dsCopy;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Returning batch of %lu + %lu records to upload in scope=%{public}@, zoneIDs=%@", buf, 0x2Au);
    }

    v34 = [CKSyncEngineBatch alloc];
    recordsToSave2 = [v25 recordsToSave];
    recordIDsToDelete2 = [v25 recordIDsToDelete];
    v24 = [v34 initWithRecordsToSave:recordsToSave2 recordIDsToDelete:recordIDsToDelete2];

    [v24 setAtomic:0];
    database8 = v25;
  }

  else
  {
    database8 = [engineCopy database];
    -[KCSharingSyncController saveCursor:forScope:](self, "saveCursor:forScope:", 0, [database8 databaseScope]);
    v24 = 0;
    v23 = v13;
  }

LABEL_18:

  return v24;
}

- (void)syncEngine:(id)engine failedToDeleteRecordZoneWithID:(id)d error:(id)error
{
  engineCopy = engine;
  dCopy = d;
  errorCopy = error;
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v12 = KCSharingLogObject();

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v25 = dCopy;
    v26 = 2112;
    v27 = errorCopy;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to delete zoneID=%@ from CloudKit with error=%@", buf, 0x16u);
  }

  loggingIdentifier2 = [(KCSharingSyncController *)self loggingIdentifier];
  v14 = KCSharingLogObject();

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    database = [engineCopy database];
    [database databaseScope];
    v16 = CKDatabaseScopeString();
    *buf = 138412546;
    v25 = dCopy;
    v26 = 2114;
    v27 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Dropping outgoing share deletion in zoneID=%@ for scope=%{public}@", buf, 0x16u);
  }

  v17 = [[CKRecordID alloc] initWithRecordName:CKRecordNameZoneWideShare zoneID:dCopy];
  store = [(KCSharingSyncController *)self store];
  v23 = 0;
  v19 = [store dropOutgoingChangeForRecordID:v17 error:&v23];
  v20 = v23;

  if ((v19 & 1) == 0)
  {
    loggingIdentifier3 = [(KCSharingSyncController *)self loggingIdentifier];
    v22 = KCSharingLogObject();

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v25 = dCopy;
      v26 = 2112;
      v27 = v20;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to drop outgoing share deletion in zoneID=%@ with error=%@", buf, 0x16u);
    }

    [(KCSharingSyncController *)self isLockedError:v20];
  }
}

- (void)syncEngine:(id)engine didDeleteRecordZoneWithID:(id)d
{
  dCopy = d;
  store = [(KCSharingSyncController *)self store];
  v19 = dCopy;
  v7 = [NSArray arrayWithObjects:&v19 count:1];
  v14 = 0;
  v8 = [store updateMirrorWithDeletedZoneIDs:v7 error:&v14];
  v9 = v14;

  if ((v8 & 1) == 0)
  {
    loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
    v11 = KCSharingLogObject();

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v16 = dCopy;
      v17 = 2112;
      v18 = v9;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to delete zoneID=%@ from mirror with error=%@", buf, 0x16u);
    }

    [(KCSharingSyncController *)self isLockedError:v9];
  }

  loggingIdentifier2 = [(KCSharingSyncController *)self loggingIdentifier];
  v13 = KCSharingLogObject();

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = dCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Deleted zoneID=%@ from mirror", buf, 0xCu);
  }
}

- (id)recordZoneIDsToDeleteForSyncEngine:(id)engine
{
  engineCopy = engine;
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v6 = KCSharingLogObject();

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    database = [engineCopy database];
    [database databaseScope];
    v8 = CKDatabaseScopeString();
    *buf = 138543362;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Requesting zone IDs to delete for scope=%{public}@", buf, 0xCu);
  }

  store = [(KCSharingSyncController *)self store];
  database2 = [engineCopy database];
  v21 = 0;
  v11 = [store fetchZoneIDsToDeleteFromDatabaseWithScope:objc_msgSend(database2 error:{"databaseScope"), &v21}];
  v12 = v21;

  loggingIdentifier2 = [(KCSharingSyncController *)self loggingIdentifier];
  v14 = KCSharingLogObject();

  if (v11)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      database3 = [engineCopy database];
      [database3 databaseScope];
      v16 = CKDatabaseScopeString();
      *buf = 138412546;
      v23 = v11;
      v24 = 2114;
      v25 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Deleting zoneIDs=%@ for scope=%{public}@", buf, 0x16u);
    }

    v17 = v11;
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      database4 = [engineCopy database];
      [database4 databaseScope];
      v20 = CKDatabaseScopeString();
      *buf = 138543618;
      v23 = v20;
      v24 = 2112;
      v25 = v12;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to fetch zone IDs to delete for scope=%{public}@ with error=%@", buf, 0x16u);
    }

    [(KCSharingSyncController *)self isLockedError:v12];
  }

  return v11;
}

- (void)syncEngine:(id)engine failedToSaveRecordZone:(id)zone error:(id)error
{
  engineCopy = engine;
  zoneCopy = zone;
  errorCopy = error;
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v12 = KCSharingLogObject();

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    database = [engineCopy database];
    [database databaseScope];
    v26 = CKDatabaseScopeString();
    *buf = 138412802;
    v29 = zoneCopy;
    v30 = 2114;
    v31 = v26;
    v32 = 2112;
    v33 = errorCopy;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to save zone=%@ for scope=%{public}@ with error=%@", buf, 0x20u);
  }

  loggingIdentifier2 = [(KCSharingSyncController *)self loggingIdentifier];
  v14 = KCSharingLogObject();

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    database2 = [engineCopy database];
    [database2 databaseScope];
    v16 = CKDatabaseScopeString();
    *buf = 138412546;
    v29 = zoneCopy;
    v30 = 2114;
    v31 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Dropping outgoing share entry in zone=%@ for scope=%{public}@", buf, 0x16u);
  }

  v17 = [CKRecordID alloc];
  zoneID = [zoneCopy zoneID];
  v19 = [v17 initWithRecordName:CKRecordNameZoneWideShare zoneID:zoneID];

  store = [(KCSharingSyncController *)self store];
  v27 = 0;
  v21 = [store dropOutgoingChangeForRecordID:v19 error:&v27];
  v22 = v27;

  if ((v21 & 1) == 0)
  {
    loggingIdentifier3 = [(KCSharingSyncController *)self loggingIdentifier];
    v24 = KCSharingLogObject();

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v29 = zoneCopy;
      v30 = 2112;
      v31 = v22;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to drop outgoing share entry in zone=%@ with error=%@", buf, 0x16u);
    }

    [(KCSharingSyncController *)self isLockedError:v22];
  }
}

- (void)syncEngine:(id)engine didSaveRecordZone:(id)zone
{
  engineCopy = engine;
  zoneCopy = zone;
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v9 = KCSharingLogObject();

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    database = [engineCopy database];
    [database databaseScope];
    v11 = CKDatabaseScopeString();
    v12 = 138412546;
    v13 = zoneCopy;
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Successfully saved zone=%@ for scope=%{public}@", &v12, 0x16u);
  }
}

- (id)recordZonesToSaveForSyncEngine:(id)engine
{
  engineCopy = engine;
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v6 = KCSharingLogObject();

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    database = [engineCopy database];
    [database databaseScope];
    v8 = CKDatabaseScopeString();
    *buf = 138543362;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Requesting zones to save for scope=%{public}@", buf, 0xCu);
  }

  store = [(KCSharingSyncController *)self store];
  database2 = [engineCopy database];
  v21 = 0;
  v11 = [store fetchZonesToSaveToDatabaseWithScope:objc_msgSend(database2 error:{"databaseScope"), &v21}];
  v12 = v21;

  loggingIdentifier2 = [(KCSharingSyncController *)self loggingIdentifier];
  v14 = KCSharingLogObject();

  if (v11)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      database3 = [engineCopy database];
      [database3 databaseScope];
      v16 = CKDatabaseScopeString();
      *buf = 138412546;
      v23 = v11;
      v24 = 2114;
      v25 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Saving new zones=%@ for scope=%{public}@", buf, 0x16u);
    }

    v17 = v11;
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      database4 = [engineCopy database];
      [database4 databaseScope];
      v20 = CKDatabaseScopeString();
      *buf = 138543618;
      v23 = v20;
      v24 = 2112;
      v25 = v12;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to fetch zones to save for scope=%{public}@ with error=%@", buf, 0x16u);
    }

    [(KCSharingSyncController *)self isLockedError:v12];
  }

  return v11;
}

- (void)lockStateChangeNotification:(BOOL)notification
{
  notificationCopy = notification;
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v6 = KCSharingLogObject();

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = &stru_100348050;
    if (notificationCopy)
    {
      v7 = @"un";
    }

    *buf = 138543362;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CKKSLockStateTracker notified us of lock state change: %{public}@locked", buf, 0xCu);
  }

  if (!notificationCopy)
  {
    queue = [(KCSharingSyncController *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100071368;
    block[3] = &unk_100346018;
    block[4] = self;
    dispatch_sync(queue, block);
  }
}

- (id)subscriptionIDForDatabase:(id)database
{
  [database databaseScope];
  v3 = CKDatabaseScopeString();
  v4 = [NSString stringWithFormat:@"CKSyncEngineDatabaseSubscription-%@", v3];

  return v4;
}

- (void)verifyGroupsInSyncAndResync:(BOOL)resync WithCompletion:(id)completion
{
  resyncCopy = resync;
  completionCopy = completion;
  if (completionCopy)
  {
    store = [(KCSharingSyncController *)self store];
    v48 = 0;
    v8 = [store fetchAllSharingGroupsInMirrorWithError:&v48];
    v9 = v48;

    if (!v8 || v9)
    {
      loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
      v37 = KCSharingLogObject();

      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v51 = v9;
        _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Failed to fetch groups from mirror: %{public}@", buf, 0xCu);
      }

      [(KCSharingSyncController *)self isLockedError:v9];
      if (v9)
      {
        completionCopy[2](completionCopy, 0, v9);
LABEL_43:

        goto LABEL_44;
      }

      v10 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:35 userInfo:0];
      completionCopy[2](completionCopy, 0, v10);
    }

    else
    {
      v40 = resyncCopy;
      v10 = +[NSMutableDictionary dictionary];
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v41 = v8;
      v11 = v8;
      v12 = [v11 countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v45;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v45 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v44 + 1) + 8 * i);
            groupID = [v16 groupID];
            [v10 setObject:v16 forKeyedSubscript:groupID];
          }

          v13 = [v11 countByEnumeratingWithState:&v44 objects:v49 count:16];
        }

        while (v13);
      }

      loggingIdentifier2 = [(KCSharingSyncController *)self loggingIdentifier];
      v19 = KCSharingLogObject();

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        allKeys = [v10 allKeys];
        *buf = 138543362;
        v51 = allKeys;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Local group IDs: %{public}@", buf, 0xCu);
      }

      v21 = +[NSMutableDictionary dictionary];
      v22 = +[NSMutableDictionary dictionary];
      v43 = 0;
      v23 = [(KCSharingSyncController *)self obtainAuthoritativeGroupsForPrivate:v21 shared:v22 error:&v43];
      v24 = v43;
      v25 = v24;
      if (v23)
      {
        v42 = v24;
        v26 = [(KCSharingSyncController *)self unmirroredZonesForPrivate:v21 shared:v22 error:&v42];
        v27 = v42;

        if (!v26 || v27)
        {
          if (v27)
          {
            completionCopy[2](completionCopy, 0, v27);
          }

          else
          {
            v38 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:34 userInfo:0];
            completionCopy[2](completionCopy, 0, v38);
          }
        }

        else
        {
          v28 = [(KCSharingSyncController *)self haveUnmirroredGroups:v26 forDatabase:@"privateDB"];
          v29 = v26;
          v39 = v28 | [(KCSharingSyncController *)self haveUnmirroredGroups:v26 forDatabase:@"sharedDB"];
          loggingIdentifier3 = [(KCSharingSyncController *)self loggingIdentifier];
          v31 = KCSharingLogObject();

          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = @"are";
            if (v39)
            {
              v32 = @"aren't";
            }

            *buf = 138412290;
            v51 = v32;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Verification complete, groups %@ in sync", buf, 0xCu);
          }

          loggingIdentifier4 = [(KCSharingSyncController *)self loggingIdentifier];
          v34 = KCSharingLogObject();

          v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
          if (v40)
          {
            v26 = v29;
            if (v39)
            {
              if (v35)
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Verify Groups, Resync is requested, and we are NOT on par with CK; therefore going for resyncing", buf, 2u);
              }

              [(KCSharingSyncController *)self resyncFromRPC:1 privateRemoteZonesByZoneID:v21 sharedRemoteZonesByZoneID:v22 completion:completionCopy];
            }

            else
            {
              if (v35)
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Verify Groups, Resync is requested, but we are on par with CK, therefore returning", buf, 2u);
              }

              completionCopy[2](completionCopy, 1, 0);
            }
          }

          else
          {
            v26 = v29;
            if (v35)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Verify Groups, Resync is not requested, so returning", buf, 2u);
            }

            completionCopy[2](completionCopy, v39 ^ 1, 0);
          }
        }

        v8 = v41;
      }

      else
      {
        completionCopy[2](completionCopy, 0, v24);
        v27 = v25;
        v8 = v41;
      }
    }

    goto LABEL_43;
  }

LABEL_44:
}

- (void)verifyGroupsInSyncAndResyncMissingGroupsWithCompletion:(id)completion
{
  completionCopy = completion;
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v6 = KCSharingLogObject();

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Going for groups verifying, with resync if required", v7, 2u);
  }

  [(KCSharingSyncController *)self verifyGroupsInSyncAndResync:1 WithCompletion:completionCopy];
}

- (void)verifyGroupsInSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v6 = KCSharingLogObject();

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Going for groups verifying, without resync", v7, 2u);
  }

  [(KCSharingSyncController *)self verifyGroupsInSyncAndResync:0 WithCompletion:completionCopy];
}

- (void)resyncFromRPC:(BOOL)c privateRemoteZonesByZoneID:(id)d sharedRemoteZonesByZoneID:(id)iD completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  if (!completionCopy)
  {
    v26 = +[NSAssertionHandler currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"KCSharingSyncController.m" lineNumber:1590 description:@"Not passing a completion handler here is a bug"];
  }

  currentUserMetadataFeatureUsage = [(KCSharingSyncController *)self currentUserMetadataFeatureUsage];
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v16 = KCSharingLogObject();

  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (currentUserMetadataFeatureUsage != 1)
  {
    if (v17)
    {
      *buf = 134217984;
      v37 = currentUserMetadataFeatureUsage;
      v18 = "KCSharing feature usage: %lu, proceeding with resync";
      v19 = v16;
      v20 = 12;
      goto LABEL_9;
    }

LABEL_10:

    objc_initWeak(buf, self);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100071EC8;
    v32[3] = &unk_100334FC0;
    v32[4] = self;
    objc_copyWeak(&v34, buf);
    v21 = completionCopy;
    v32[6] = iDCopy;
    v33 = v21;
    cCopy = c;
    v32[5] = dCopy;
    v22 = [NSBlockOperation blockOperationWithBlock:v32];
    queue = [(KCSharingSyncController *)self queue];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100071FBC;
    v27[3] = &unk_100343F68;
    objc_copyWeak(&v30, buf);
    v24 = v21;
    cCopy2 = c;
    v28 = v22;
    v29 = v24;
    v25 = v22;
    dispatch_async(queue, v27);

    objc_destroyWeak(&v30);
    objc_destroyWeak(&v34);
    objc_destroyWeak(buf);
    goto LABEL_14;
  }

  if (c)
  {
    if (v17)
    {
      *buf = 0;
      v18 = "KCSharing appears not to be in use, resyncing anyway because RPC";
      v19 = v16;
      v20 = 2;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (v17)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "KCSharing appears not to be in use, foregoing resync", buf, 2u);
  }

  (*(completionCopy + 2))(completionCopy, 1, 0);
LABEL_14:
}

- (BOOL)haveUnmirroredGroups:(id)groups forDatabase:(id)database
{
  groupsCopy = groups;
  databaseCopy = database;
  v8 = [groupsCopy objectForKeyedSubscript:databaseCopy];
  v9 = [v8 count];

  if (v9)
  {
    loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
    v11 = KCSharingLogObject();

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = [groupsCopy objectForKeyedSubscript:databaseCopy];
      allKeys = [v13 allKeys];
      v15 = 138412546;
      v16 = databaseCopy;
      v17 = 2114;
      v18 = allKeys;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Unmirrored %@ CloudKit zones: %{public}@", &v15, 0x16u);
    }
  }

  return v9 != 0;
}

- (id)unmirroredZonesForPrivate:(id)private shared:(id)shared error:(id *)error
{
  privateCopy = private;
  sharedCopy = shared;
  v11 = sharedCopy;
  if (!privateCopy || !sharedCopy || !error)
  {
    v50 = +[NSAssertionHandler currentHandler];
    [v50 handleFailureInMethod:a2 object:self file:@"KCSharingSyncController.m" lineNumber:1530 description:@"Must supply arguments to this function"];
  }

  v12 = +[NSMutableDictionary dictionary];
  v13 = [privateCopy mutableCopy];
  v56 = [v11 mutableCopy];
  store = [(KCSharingSyncController *)self store];
  v69 = 0;
  v15 = [store fetchAllSharingGroupsInMirrorWithError:&v69];
  v16 = v69;

  v55 = v15;
  if (!v15 || v16)
  {
    loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
    v46 = KCSharingLogObject();

    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v74 = v16;
      _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Failed to fetch groups from mirror: %{public}@", buf, 0xCu);
    }

    [(KCSharingSyncController *)self isLockedError:v16];
    v44 = v56;
    if (v16)
    {
      v47 = v16;
      v43 = 0;
      *error = v16;
    }

    else
    {
      v48 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:35 userInfo:0];
      *error = v48;

      v43 = 0;
    }
  }

  else
  {
    v53 = v11;
    v54 = privateCopy;
    v17 = +[NSMutableDictionary dictionary];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v18 = v15;
    v19 = [v18 countByEnumeratingWithState:&v65 objects:v72 count:16];
    v20 = v13;
    if (v19)
    {
      v21 = v19;
      v22 = *v66;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v66 != v22)
          {
            objc_enumerationMutation(v18);
          }

          v24 = *(*(&v65 + 1) + 8 * i);
          groupID = [v24 groupID];
          [v17 setObject:v24 forKeyedSubscript:groupID];
        }

        v21 = [v18 countByEnumeratingWithState:&v65 objects:v72 count:16];
      }

      while (v21);
    }

    v52 = v12;

    v26 = +[NSMutableArray array];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v27 = v13;
    v28 = [v27 countByEnumeratingWithState:&v61 objects:v71 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v62;
      do
      {
        for (j = 0; j != v29; j = j + 1)
        {
          if (*v62 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v61 + 1) + 8 * j);
          v33 = sub_100031160(v32);
          v34 = [v17 objectForKeyedSubscript:v33];

          if (v34)
          {
            [v26 addObject:v32];
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v61 objects:v71 count:16];
      }

      while (v29);
    }

    v51 = v20;

    [v27 removeObjectsForKeys:v26];
    [v26 removeAllObjects];
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v35 = v56;
    v36 = [v35 countByEnumeratingWithState:&v57 objects:v70 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v58;
      do
      {
        for (k = 0; k != v37; k = k + 1)
        {
          if (*v58 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v57 + 1) + 8 * k);
          v41 = sub_100031160(v40);
          v42 = [v17 objectForKeyedSubscript:v41];

          if (v42)
          {
            [v26 addObject:v40];
          }
        }

        v37 = [v35 countByEnumeratingWithState:&v57 objects:v70 count:16];
      }

      while (v37);
    }

    [v35 removeObjectsForKeys:v26];
    v12 = v52;
    [v52 setObject:v27 forKeyedSubscript:@"privateDB"];
    [v52 setObject:v35 forKeyedSubscript:@"sharedDB"];
    v43 = v52;

    v11 = v53;
    privateCopy = v54;
    v16 = 0;
    v13 = v51;
    v44 = v56;
  }

  return v43;
}

- (BOOL)obtainAuthoritativeGroupsForPrivate:(id)private shared:(id)shared error:(id *)error
{
  privateCopy = private;
  sharedCopy = shared;
  v11 = sharedCopy;
  if (!privateCopy || !sharedCopy || !error)
  {
    v38 = +[NSAssertionHandler currentHandler];
    [v38 handleFailureInMethod:a2 object:self file:@"KCSharingSyncController.m" lineNumber:1410 description:@"Must provide all arguments to this function"];
  }

  v12 = dispatch_group_create();
  v13 = objc_alloc_init(CKOperationGroup);
  [v13 setName:@"authoritativeGroupFetch"];
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = sub_100074124;
  v62 = sub_100074134;
  v63 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = sub_100074124;
  v56 = sub_100074134;
  v57 = 0;
  v14 = +[CKFetchRecordZonesOperation fetchAllRecordZonesOperation];
  [v14 setGroup:v13];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_10007413C;
  v48[3] = &unk_100334F48;
  v48[4] = self;
  v51 = &v58;
  v15 = v12;
  v49 = v15;
  v16 = privateCopy;
  v50 = v16;
  [v14 setFetchRecordZonesCompletionBlock:v48];
  v17 = +[CKFetchRecordZonesOperation fetchAllRecordZonesOperation];
  [v17 setGroup:v13];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100074444;
  v44[3] = &unk_100334F48;
  v44[4] = self;
  v47 = &v52;
  v18 = v15;
  v45 = v18;
  v19 = v11;
  v46 = v19;
  [v17 setFetchRecordZonesCompletionBlock:v44];
  if (sub_10001078C())
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v67 = 0x3032000000;
    v68 = sub_100074124;
    v69 = sub_100074134;
    v70 = 0;
    cloudCoreUtilities = [(KCSharingSyncController *)self cloudCoreUtilities];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1000746E8;
    v39[3] = &unk_100334F70;
    v39[4] = self;
    p_buf = &buf;
    v40 = v18;
    v41 = v14;
    v42 = v17;
    [cloudCoreUtilities withCKDatabases:v39];

    v21 = *(*(&buf + 1) + 40);
    if (v21)
    {
      v22 = error == 0;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      *error = v21;

      _Block_object_dispose(&buf, 8);
LABEL_25:
      v28 = 0;
      goto LABEL_26;
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    dispatch_group_enter(v18);
    privateCloudDB = [(KCSharingSyncController *)self privateCloudDB];
    [privateCloudDB addOperation:v14];

    dispatch_group_enter(v18);
    sharedCloudDB = [(KCSharingSyncController *)self sharedCloudDB];
    [sharedCloudDB addOperation:v17];
  }

  v25 = dispatch_time(0, 30000000000);
  if (dispatch_group_wait(v18, v25))
  {
    loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
    v27 = KCSharingLogObject();

    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to complete CloudKit group fetch before deadline", &buf, 2u);
    }

    [NSError errorWithDomain:@"KCSharingErrorDomain" code:36 userInfo:0];
    *error = v28 = 0;
    goto LABEL_26;
  }

  if (v59[5] || v53[5])
  {
    v29 = +[NSMutableArray array];
    v30 = v29;
    if (v59[5])
    {
      [v29 addObject:?];
    }

    if (v53[5])
    {
      [v30 addObject:?];
    }

    v64 = NSMultipleUnderlyingErrorsKey;
    v65 = v30;
    v31 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    *error = [NSError errorWithDomain:@"KCSharingErrorDomain" code:34 userInfo:v31];

    loggingIdentifier2 = [(KCSharingSyncController *)self loggingIdentifier];
    v33 = KCSharingLogObject();

    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v37 = *error;
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v37;
      _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Failed to fetch all known CloudKit groups: %@", &buf, 0xCu);
    }

    goto LABEL_25;
  }

  loggingIdentifier3 = [(KCSharingSyncController *)self loggingIdentifier];
  v36 = KCSharingLogObject();

  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Fetched all known CloudKit groups", &buf, 2u);
  }

  v28 = 1;
LABEL_26:

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v58, 8);

  return v28;
}

- (BOOL)saveCursor:(id)cursor forScope:(int64_t)scope
{
  cursorCopy = cursor;
  v6 = CKDatabaseScopeString();
  v7 = [NSString stringWithFormat:@"%@-%@", @"outgoingChangesetCursor", v6];

  if (cursorCopy)
  {
    v25 = 0;
    v8 = [NSKeyedArchiver archivedDataWithRootObject:cursorCopy requiringSecureCoding:1 error:&v25];
    v9 = v25;
    if (v8)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      v11 = v9;
      loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
      v13 = KCSharingLogObject();

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = CKDatabaseScopeString();
        *buf = 138412802;
        v27 = cursorCopy;
        v28 = 2112;
        v29 = v14;
        v30 = 2112;
        v31 = v11;
        v15 = "Failed to encode cursor %@ for scope=%@: %@";
LABEL_20:
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v15, buf, 0x20u);

        goto LABEL_14;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v8 = 0;
  }

  store = self->_store;
  v24 = 0;
  v17 = [(KCSharingStore *)store setValue:v8 forMetadataKey:v7 error:&v24];
  v18 = v24;
  if (v17)
  {
    v19 = v18 == 0;
  }

  else
  {
    v19 = 0;
  }

  if (!v19)
  {
    v11 = v18;
    [(KCSharingSyncController *)self isLockedError:v18];
    loggingIdentifier2 = [(KCSharingSyncController *)self loggingIdentifier];
    v13 = KCSharingLogObject();

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = CKDatabaseScopeString();
      *buf = 138412802;
      v27 = cursorCopy;
      v28 = 2112;
      v29 = v14;
      v30 = 2112;
      v31 = v11;
      v15 = "Failed to set cursor %@ for scope=%@: %@";
      goto LABEL_20;
    }

LABEL_14:

    v21 = 0;
    goto LABEL_18;
  }

  loggingIdentifier3 = [(KCSharingSyncController *)self loggingIdentifier];
  v11 = KCSharingLogObject();

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Successfully saved/removed cursor", buf, 2u);
  }

  v21 = 1;
LABEL_18:

  return v21;
}

- (id)fetchCursorForScope:(int64_t)scope zoneIDs:(id)ds
{
  dsCopy = ds;
  v7 = CKDatabaseScopeString();
  v8 = [NSString stringWithFormat:@"%@-%@", @"outgoingChangesetCursor", v7];

  store = self->_store;
  v26 = 0;
  v10 = [(KCSharingStore *)store fetchValueForMetadataKey:v8 error:&v26];
  v11 = v26;
  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v25 = 0;
    v17 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v25];
    v13 = v25;
    loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
    v19 = KCSharingLogObject();

    if (!v17 || v13)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v24 = CKDatabaseScopeString();
        *buf = 138412546;
        v28 = v24;
        v29 = 2112;
        v30 = v13;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to decode outgoing cursor for scope=%@: %@", buf, 0x16u);
      }

      v20 = [[KCSharingOutgoingChangesetCursor alloc] initWithDatabaseScope:scope desiredZoneIDs:dsCopy];
    }

    else
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v17;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Successfully fetched stored cursor %@", buf, 0xCu);
      }

      v20 = v17;
    }

    v21 = v20;
  }

  else
  {
    v13 = v11;
    if (v11)
    {
      [(KCSharingSyncController *)self isLockedError:v11];
      loggingIdentifier2 = [(KCSharingSyncController *)self loggingIdentifier];
      v15 = KCSharingLogObject();

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = CKDatabaseScopeString();
        *buf = 138412546;
        v28 = v16;
        v29 = 2112;
        v30 = v13;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to retrieve outgoing cursor for scope=%@: %@", buf, 0x16u);
      }
    }

    else
    {
      loggingIdentifier3 = [(KCSharingSyncController *)self loggingIdentifier];
      v15 = KCSharingLogObject();

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No stored cursor found, creating and returning fresh one", buf, 2u);
      }
    }

    v21 = [[KCSharingOutgoingChangesetCursor alloc] initWithDatabaseScope:scope desiredZoneIDs:dsCopy];
  }

  return v21;
}

- (id)fetchOutgoingChangesWithScope:(int64_t)scope cursor:(id)cursor
{
  store = self->_store;
  v12 = 0;
  v6 = [(KCSharingStore *)store fetchOutgoingChangesWithCursor:cursor maxChangeCount:100 maxBatchSizeInBytes:1572864 error:&v12];
  v7 = v12;
  if (!v6)
  {
    loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
    v9 = KCSharingLogObject();

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = CKDatabaseScopeString();
      *buf = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v7;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to fetch next record batch for scope=%{public}@ error=%@", buf, 0x16u);
    }

    [(KCSharingSyncController *)self isLockedError:v7];
  }

  return v6;
}

- (void)wipe:(BOOL)wipe completion:(id)completion
{
  wipeCopy = wipe;
  completionCopy = completion;
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v8 = KCSharingLogObject();

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v17) = wipeCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "🚨 WIPING KCSHARING DATA. Include cloud data: %{BOOL}d", buf, 8u);
  }

  if (wipeCopy)
  {
    loggingIdentifier2 = [(KCSharingSyncController *)self loggingIdentifier];
    v10 = KCSharingLogObject();

    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "Not actually wiping data because cloud data deletion is not implemented", buf, 2u);
    }

    v18 = NSLocalizedDescriptionKey;
    v19 = @"Not implemented";
    v11 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v12 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:32 userInfo:v11];
  }

  else
  {
    store = [(KCSharingSyncController *)self store];
    v15 = 0;
    [store wipeWithError:&v15];
    v12 = v15;

    loggingIdentifier3 = [(KCSharingSyncController *)self loggingIdentifier];
    v11 = KCSharingLogObject();

    if (v12)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v17 = v12;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Unable to delete local data: %@", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Completed data wipe", buf, 2u);
      }

      v12 = 0;
    }
  }

  completionCopy[2](completionCopy, v12);
}

- (void)sendNewIDSInvitesForRecord:(id)record
{
  recordCopy = record;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = sub_1000314F8(recordCopy);
    loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
    v7 = KCSharingLogObject();

    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v12 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Asking ksmd to send new invites if needed for group %@", buf, 0xCu);
      }

      messagingdConnection = [(KCSharingSyncController *)self messagingdConnection];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10007549C;
      v9[3] = &unk_100334F20;
      v9[4] = self;
      v10 = v5;
      [messagingdConnection sendNewInvitesForGroup:v10 completion:v9];
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Cannot send invitation for group, share didn't groupify", buf, 2u);
      }
    }
  }
}

- (void)_onQueueFetchRemoteChangesForZoneIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x3032000000;
  v48[3] = sub_100074124;
  v48[4] = sub_100074134;
  v49 = +[NSMutableArray array];
  v8 = dispatch_group_create();
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v10 = KCSharingLogObject();

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = dsCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Force-fetching remote changes for zoneIDs=%{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v53 = 0x3032000000;
  v54 = sub_100074124;
  v55 = sub_100074134;
  v56 = 0;
  privateSyncEngine = [(KCSharingSyncController *)self privateSyncEngine];
  if (!privateSyncEngine || ([(KCSharingSyncController *)self sharedSyncEngine], v12 = objc_claimAutoreleasedReturnValue(), v13 = v12 == 0, v12, privateSyncEngine, v13))
  {
    loggingIdentifier2 = [(KCSharingSyncController *)self loggingIdentifier];
    v15 = KCSharingLogObject();

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Unable to force-fetch because engines aren't loaded, will ask for fetch after unlock", v47, 2u);
    }

    *&self->_receivedPrivatePushesWhileLocked = 257;
    v16 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:35 userInfo:0];
    v17 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v16;

    v18 = *(*(&buf + 1) + 40);
    v50 = NSUnderlyingErrorKey;
    v51 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    v20 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:14 userInfo:v19];
    v21 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v20;
  }

  if (!*(*(&buf + 1) + 40))
  {
    dispatch_group_enter(v8);
    privateSyncEngine2 = [(KCSharingSyncController *)self privateSyncEngine];
    [privateSyncEngine2 setNeedsToFetchChanges];

    privateSyncEngine3 = [(KCSharingSyncController *)self privateSyncEngine];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100075BD4;
    v44[3] = &unk_100334EF8;
    v46 = v48;
    v44[4] = self;
    v24 = v8;
    v45 = v24;
    [privateSyncEngine3 fetchChangesWithCompletionHandler:v44];

    dispatch_group_enter(v24);
    sharedSyncEngine = [(KCSharingSyncController *)self sharedSyncEngine];
    [sharedSyncEngine setNeedsToFetchChanges];

    if (sub_10004DE94())
    {
      if ([dsCopy count])
      {
        v26 = [NSSet setWithArray:dsCopy];
      }

      else
      {
        v26 = 0;
      }

      sharedSyncEngine2 = [(KCSharingSyncController *)self sharedSyncEngine];
      v29 = [CKSyncEngineFetchChangesOptions alloc];
      v30 = [[CKSyncEngineFetchChangesScope alloc] initWithZoneIDs:v26];
      v31 = [v29 initWithScope:v30];
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_100075CA0;
      v41[3] = &unk_100334EF8;
      v43 = v48;
      v41[4] = self;
      v42 = v24;
      [sharedSyncEngine2 fetchChangesWithOptions:v31 completionHandler:v41];
    }

    else
    {
      sharedSyncEngine3 = [(KCSharingSyncController *)self sharedSyncEngine];
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_100075D6C;
      v38[3] = &unk_100334EF8;
      v40 = v48;
      v38[4] = self;
      v39 = v24;
      [sharedSyncEngine3 fetchChangesForZoneIDs:dsCopy completionHandler:v38];
    }
  }

  queue = [(KCSharingSyncController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100075E38;
  block[3] = &unk_100334E80;
  p_buf = &buf;
  v37 = v48;
  block[4] = self;
  v35 = completionCopy;
  v33 = completionCopy;
  dispatch_group_notify(v8, queue, block);

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(v48, 8);
}

- (void)fetchRemoteChangesForZoneIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if (sub_10001078C())
  {
    objc_initWeak(&location, self);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000762D4;
    v19[3] = &unk_100343EC8;
    objc_copyWeak(&v22, &location);
    v21 = completionCopy;
    v20 = dsCopy;
    v8 = [NSBlockOperation blockOperationWithBlock:v19];
    lockStateTracker = [(KCSharingSyncController *)self lockStateTracker];
    unlockDependency = [lockStateTracker unlockDependency];
    [v8 addNullableDependency:unlockDependency];

    if (self->_initializeEnginesOperation)
    {
      loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
      v12 = KCSharingLogObject();

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Sync Engine Init operation is being made depedency for Force-fetch remote changes operation", buf, 2u);
      }

      initializeEnginesOperation = self->_initializeEnginesOperation;
    }

    else
    {
      initializeEnginesOperation = 0;
    }

    [v8 addNullableDependency:initializeEnginesOperation];
    [(NSOperationQueue *)self->_operationQueue addOperation:v8];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  else
  {
    queue = [(KCSharingSyncController *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000763E0;
    block[3] = &unk_100343D18;
    block[4] = self;
    v16 = dsCopy;
    v17 = completionCopy;
    dispatch_sync(queue, block);
  }
}

- (void)saveStagedOutgoingChangesWithCompletion:(id)completion
{
  completionCopy = completion;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = sub_100074124;
  v26[4] = sub_100074134;
  v27 = +[NSMutableArray array];
  v5 = dispatch_group_create();
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v7 = KCSharingLogObject();

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Asking sync engines to save all staged outgoing changes", buf, 2u);
  }

  v8 = sub_10004DE94();
  dispatch_group_enter(v5);
  [(KCSharingSyncController *)self privateSyncEngine];
  if (v8)
    v9 = {;
    v10 = v24;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000768B0;
    v24[3] = &unk_100346F60;
    v24[5] = v26;
    v11 = v5;
    v24[4] = v11;
    [v9 sendChangesWithCompletionHandler:v24];

    dispatch_group_enter(v11);
    sharedSyncEngine = [(KCSharingSyncController *)self sharedSyncEngine];
    v13 = v23;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10007694C;
    v23[3] = &unk_100346F60;
    v23[5] = v26;
    v23[4] = v11;
    [sharedSyncEngine sendChangesWithCompletionHandler:v23];
  }

  else
    v14 = {;
    v10 = v22;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000769E8;
    v22[3] = &unk_100346F60;
    v22[5] = v26;
    v15 = v5;
    v22[4] = v15;
    [v14 modifyPendingChangesWithCompletionHandler:v22];

    dispatch_group_enter(v15);
    sharedSyncEngine = [(KCSharingSyncController *)self sharedSyncEngine];
    v13 = v21;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100076A84;
    v21[3] = &unk_100346F60;
    v21[5] = v26;
    v21[4] = v15;
    [sharedSyncEngine modifyPendingChangesWithCompletionHandler:v21];
  }

  queue = [(KCSharingSyncController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100076B20;
  block[3] = &unk_100334ED0;
  v19 = completionCopy;
  v20 = v26;
  block[4] = self;
  v17 = completionCopy;
  dispatch_group_notify(v5, queue, block);

  _Block_object_dispose(v26, 8);
}

- (void)stageAllOutgoingChangesWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100076E04;
  v7[3] = &unk_1003445C0;
  objc_copyWeak(&v9, &location);
  v5 = completionCopy;
  v8 = v5;
  v6 = [NSBlockOperation blockOperationWithBlock:v7];
  [(NSOperationQueue *)self->_operationQueue addOperation:v6];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (BOOL)stageOutgoingShares:(id)shares deletionsForShares:(id)forShares error:(id *)error
{
  forSharesCopy = forShares;
  sharesCopy = shares;
  store = [(KCSharingSyncController *)self store];
  v11 = [store stageOutgoingShares:sharesCopy deletionsForShares:forSharesCopy error:error];

  if (v11 && sub_10004DE94())
  {
    [(KCSharingSyncController *)self makeStagedOutgoingDatabaseChangesAsPendingSyncEngineChanges];
  }

  return v11;
}

- (void)makeStagedOutgoingDatabaseChangesAsPendingSyncEngineChanges
{
  privateSyncEngine = [(KCSharingSyncController *)self privateSyncEngine];
  v4 = [(KCSharingSyncController *)self getOutgoingStagedDatabaseChangesForSyncEngine:privateSyncEngine];

  privateSyncEngine2 = [(KCSharingSyncController *)self privateSyncEngine];
  state = [privateSyncEngine2 state];
  [state addPendingDatabaseChanges:v4];

  sharedSyncEngine = [(KCSharingSyncController *)self sharedSyncEngine];
  v8 = [(KCSharingSyncController *)self getOutgoingStagedDatabaseChangesForSyncEngine:sharedSyncEngine];

  sharedSyncEngine2 = [(KCSharingSyncController *)self sharedSyncEngine];
  state2 = [sharedSyncEngine2 state];
  [state2 addPendingDatabaseChanges:v8];

  if ([v4 count])
  {
    loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
    v12 = KCSharingLogObject();

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Setting pending untracked changes to true in private sync engine", buf, 2u);
    }

    privateSyncEngine3 = [(KCSharingSyncController *)self privateSyncEngine];
    state3 = [privateSyncEngine3 state];
    [state3 setHasPendingUntrackedChanges:1];
  }

  if ([v8 count])
  {
    loggingIdentifier2 = [(KCSharingSyncController *)self loggingIdentifier];
    v16 = KCSharingLogObject();

    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Setting pending untracked changes to true in shared sync engine", v19, 2u);
    }

    sharedSyncEngine3 = [(KCSharingSyncController *)self sharedSyncEngine];
    state4 = [sharedSyncEngine3 state];
    [state4 setHasPendingUntrackedChanges:1];
  }
}

- (id)getOutgoingStagedDatabaseChangesForSyncEngine:(id)engine
{
  engineCopy = engine;
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v6 = KCSharingLogObject();

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    database = [engineCopy database];
    [database databaseScope];
    v8 = CKDatabaseScopeString();
    *buf = 138543362;
    v38 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Adding Staged changes to State for: %{public}@", buf, 0xCu);
  }

  v9 = objc_alloc_init(NSMutableArray);
  v10 = [(KCSharingSyncController *)self recordZonesToSaveForSyncEngine:engineCopy];
  v11 = [(KCSharingSyncController *)self recordZoneIDsToDeleteForSyncEngine:engineCopy];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v32;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [[CKSyncEnginePendingZoneSave alloc] initWithZone:*(*(&v31 + 1) + 8 * i)];
        [v9 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v14);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = v11;
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
        v24 = [CKSyncEnginePendingZoneDelete alloc];
        v25 = [v24 initWithZoneID:{v23, v27}];
        [v9 addObject:v25];
      }

      v20 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v20);
  }

  return v9;
}

- (void)performMaintenanceWithCompletion:(id)completion
{
  completionCopy = completion;
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v6 = KCSharingLogObject();

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting up maintenance operation to run now or after unlock", buf, 2u);
  }

  objc_initWeak(buf, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100077888;
  v16[3] = &unk_1003445C0;
  objc_copyWeak(&v18, buf);
  v7 = completionCopy;
  v17 = v7;
  v8 = [NSBlockOperation blockOperationWithBlock:v16];
  queue = [(KCSharingSyncController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100077AEC;
  block[3] = &unk_100343EC8;
  objc_copyWeak(&v15, buf);
  v13 = v8;
  v14 = v7;
  v10 = v8;
  v11 = v7;
  dispatch_async(queue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
}

- (void)saveAllOutgoingChangesWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100078250;
  v6[3] = &unk_100337E48;
  objc_copyWeak(&v8, &location);
  v5 = completionCopy;
  v7 = v5;
  [(KCSharingSyncController *)self stageAllOutgoingChangesWithCompletion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)processDatabaseModifications
{
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v4 = KCSharingLogObject();

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Processing KCSharing-relevant SecDb modifications", buf, 2u);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000783CC;
  v5[3] = &unk_1003378B8;
  v5[4] = self;
  [(KCSharingSyncController *)self saveAllOutgoingChangesWithCompletion:v5];
}

- (void)fetchCurrentUserIdentifierWithReply:(id)reply
{
  replyCopy = reply;
  currentUserMetadata = [(KCSharingSyncController *)self currentUserMetadata];
  v6 = [currentUserMetadata objectForKeyedSubscript:@"currentUserIdentifier"];

  if (v6)
  {
    loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
    v8 = KCSharingLogObject();

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Fetched cached current user identifier from store", buf, 2u);
    }

    replyCopy[2](replyCopy, v6, 0);
  }

  else
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100078638;
    v9[3] = &unk_100334EA8;
    v9[4] = self;
    v10 = replyCopy;
    [(KCSharingSyncController *)self fetchCurrentUserIdentifierFromCloudKitWithReply:v9];
  }
}

- (void)fetchCurrentUserIdentifierFromCloudKitWithReply:(id)reply
{
  replyCopy = reply;
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v6 = KCSharingLogObject();

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Fetching current user identifier from CloudKit...", buf, 2u);
  }

  if (sub_10001078C())
  {
    cloudCoreUtilities = [(KCSharingSyncController *)self cloudCoreUtilities];
    v15 = 0;
    v8 = [cloudCoreUtilities acquiredSessionUserRecordIDAndReturnError:&v15];
    v9 = v15;

    loggingIdentifier2 = [(KCSharingSyncController *)self loggingIdentifier];
    v11 = KCSharingLogObject();

    if (v9)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v17 = v9;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to fetch current current identifier from Acquired Session: %{public}@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Fetched current user identifier from Acquired Session: %{public}@", buf, 0xCu);
    }

    replyCopy[2](replyCopy, v8, v9);
  }

  else
  {
    container = [(KCSharingSyncController *)self container];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000789F4;
    v13[3] = &unk_100334EA8;
    v13[4] = self;
    v14 = replyCopy;
    [container fetchUserRecordIDWithCompletionHandler:v13];
  }
}

- (void)ensureCurrentUserProvisionedWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(KCSharingSyncController *)self isCurrentUserProvisioned]&& [(KCSharingSyncController *)self isCurrentUserIdentifierAvailable])
  {
    loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
    v6 = KCSharingLogObject();

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "The user's already provisioned.", buf, 2u);
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    *buf = 0;
    v20 = buf;
    v21 = 0x3032000000;
    v22 = sub_100074124;
    v23 = sub_100074134;
    v24 = dispatch_group_create();
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = sub_100074124;
    v17[4] = sub_100074134;
    v18 = +[NSMutableArray array];
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3032000000;
    v15[3] = sub_100074124;
    v15[4] = sub_100074134;
    v16 = 0;
    queue = [(KCSharingSyncController *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100078E54;
    block[3] = &unk_100334E58;
    block[4] = self;
    block[5] = v15;
    block[6] = buf;
    block[7] = v17;
    dispatch_sync(queue, block);

    v8 = *(v20 + 5);
    queue2 = [(KCSharingSyncController *)self queue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000793F4;
    v10[3] = &unk_100334E80;
    v12 = v15;
    v13 = v17;
    v10[4] = self;
    v11 = completionCopy;
    dispatch_group_notify(v8, queue2, v10);

    _Block_object_dispose(v15, 8);
    _Block_object_dispose(v17, 8);

    _Block_object_dispose(buf, 8);
  }
}

- (void)handleProvisioningActivity:(id)activity isRetry:(BOOL)retry
{
  retryCopy = retry;
  activityCopy = activity;
  v7 = os_transaction_create();
  if (xpc_activity_get_state(activityCopy) == 4 || xpc_activity_set_state(activityCopy, 4))
  {
    objc_initWeak(location, self);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100079BC8;
    v16[3] = &unk_100334E30;
    objc_copyWeak(&v19, location);
    v17 = activityCopy;
    v18 = v7;
    v20 = retryCopy;
    v8 = [NSBlockOperation blockOperationWithBlock:v16];
    if (self->_initializeEnginesOperation)
    {
      loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
      v10 = KCSharingLogObject();

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Sync Engine Init operation is being made depedency for Provisioning operation", v15, 2u);
      }

      initializeEnginesOperation = self->_initializeEnginesOperation;
    }

    else
    {
      initializeEnginesOperation = 0;
    }

    [v8 addNullableDependency:initializeEnginesOperation];
    if (retryCopy)
    {
      operationDependency = [(CKKSNearFutureScheduler *)self->_nearFutureScheduler operationDependency];
      [v8 addNullableDependency:operationDependency];

      [(CKKSNearFutureScheduler *)self->_nearFutureScheduler trigger];
    }

    [(NSOperationQueue *)self->_operationQueue addOperation:v8];

    objc_destroyWeak(&v19);
    objc_destroyWeak(location);
  }

  else
  {
    loggingIdentifier2 = [(KCSharingSyncController *)self loggingIdentifier];
    v14 = KCSharingLogObject();

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 134217984;
      *(location + 4) = xpc_activity_get_state(activityCopy);
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to initiate provisioning activity; current state=%ld", location, 0xCu);
    }
  }
}

- (void)registerProvisioningActivity
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, XPC_ACTIVITY_RANDOM_INITIAL_DELAY, 0xE10uLL);
  xpc_dictionary_set_value(empty, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, &_xpc_BOOL_true);
  xpc_dictionary_set_value(empty, XPC_ACTIVITY_REQUIRES_CLASS_A, &_xpc_BOOL_true);
  xpc_dictionary_set_value(empty, XPC_ACTIVITY_REQUIRES_BUDDY_COMPLETE, &_xpc_BOOL_true);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10007A1E8;
  handler[3] = &unk_100334DE0;
  handler[4] = self;
  xpc_activity_register("com.apple.securityd.kcsharing.provisioning", empty, handler);
}

- (void)preflightWithCompletion:(id)completion delay:(BOOL)delay
{
  delayCopy = delay;
  completionCopy = completion;
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v8 = KCSharingLogObject();

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting up preflight operation to run at unlock time", buf, 2u);
  }

  objc_initWeak(buf, self);
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_10007A4BC;
  v22 = &unk_100343EC8;
  selfCopy = self;
  objc_copyWeak(&v25, buf);
  v9 = completionCopy;
  v24 = v9;
  v10 = [NSBlockOperation blockOperationWithBlock:&v19];
  if (sub_10001078C())
  {
    lockStateTracker = [(KCSharingSyncController *)self lockStateTracker];
    unlockDependency = [lockStateTracker unlockDependency];
    [v10 addNullableDependency:unlockDependency];
  }

  if (self->_initializeEnginesOperation)
  {
    loggingIdentifier2 = [(KCSharingSyncController *)self loggingIdentifier];
    v14 = KCSharingLogObject();

    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v18) = 0;
    v15 = "Sync Engine Init operation is being made dependency for Preflight Operation";
  }

  else
  {
    loggingIdentifier3 = [(KCSharingSyncController *)self loggingIdentifier];
    v14 = KCSharingLogObject();

    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v18) = 0;
    v15 = "Sync Engine Init operation is not being made dependency for Preflight Operation";
  }

  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, &v18, 2u);
LABEL_11:

  [v10 addNullableDependency:self->_initializeEnginesOperation];
  if (delayCopy)
  {
    operationDependency = [(CKKSNearFutureScheduler *)self->_nearFutureScheduler operationDependency];
    [v10 addNullableDependency:operationDependency];

    [(CKKSNearFutureScheduler *)self->_nearFutureScheduler trigger];
  }

  [(NSOperationQueue *)self->_operationQueue addOperation:v10, v18, v19, v20, v21, v22, selfCopy];

  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);
}

- (BOOL)isLockedError:(id)error duringFetchForEngine:(id)engine
{
  errorCopy = error;
  engineCopy = engine;
  if (errorCopy && (-[KCSharingSyncController lockStateTracker](self, "lockStateTracker"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isLockedError:errorCopy], v8, v9))
  {
    objc_initWeak(&location, self);
    queue = [(KCSharingSyncController *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007B074;
    block[3] = &unk_100344D38;
    objc_copyWeak(&v15, &location);
    v14 = engineCopy;
    dispatch_async(queue, block);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)deviceDidLock
{
  queue = [(KCSharingSyncController *)self queue];
  dispatch_assert_queue_V2(queue);

  operationQueue = self->_operationQueue;
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v6 = KCSharingLogObject();

  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (operationQueue)
  {
    if (v7)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device locked: deallocating engines if needed", buf, 2u);
    }

    if (self->_privateSyncEngine && self->_sharedSyncEngine)
    {
      loggingIdentifier2 = [(KCSharingSyncController *)self loggingIdentifier];
      v9 = KCSharingLogObject();

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Device locked: deallocating engines", buf, 2u);
      }

      privateSyncEngine = self->_privateSyncEngine;
      self->_privateSyncEngine = 0;

      sharedSyncEngine = self->_sharedSyncEngine;
      self->_sharedSyncEngine = 0;
    }

    loggingIdentifier3 = [(KCSharingSyncController *)self loggingIdentifier];
    v13 = KCSharingLogObject();

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Device locked: setting up reinit engines operation", buf, 2u);
    }

    objc_initWeak(buf, self);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10007B458;
    v14[3] = &unk_100344DA0;
    objc_copyWeak(&v15, buf);
    [(KCSharingSyncController *)self resetReinitCKSyncEnginesOperationWithDelay:0 withCompletion:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v7)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No operation queue, let's hope we're testing!", buf, 2u);
    }
  }
}

- (void)CKSyncEnginesInitOperationWithDelay:(BOOL)delay withCompletion:(id)completion
{
  delayCopy = delay;
  completionCopy = completion;
  v7 = self->_operationQueue == 0;
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v9 = KCSharingLogObject();

  if (!v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Setting Up operation for CKSyncEnginesInit", &buf, 2u);
    }

    objc_initWeak(&buf, self);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10007C1DC;
    v30[3] = &unk_1003445C0;
    objc_copyWeak(&v32, &buf);
    v31 = completionCopy;
    v10 = [NSBlockOperation blockOperationWithBlock:v30];
    v11 = self->_initializeEnginesOperation;
    v12 = v11;
    if (v11 && [(NSBlockOperation *)v11 isPending])
    {
      loggingIdentifier2 = [(KCSharingSyncController *)self loggingIdentifier];
      cloudCoreUtilities = KCSharingLogObject();

      if (os_log_type_enabled(cloudCoreUtilities, OS_LOG_TYPE_DEFAULT))
      {
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, cloudCoreUtilities, OS_LOG_TYPE_DEFAULT, "Not setting up engine reinit: have extant operation", v29, 2u);
      }

      goto LABEL_22;
    }

    loggingIdentifier3 = [(KCSharingSyncController *)self loggingIdentifier];
    v16 = KCSharingLogObject();

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Setting up engine reinit operation to run at unlock time", v29, 2u);
    }

    lockStateTracker = [(KCSharingSyncController *)self lockStateTracker];
    unlockDependency = [lockStateTracker unlockDependency];
    [v10 addNullableDependency:unlockDependency];

    if (delayCopy)
    {
      operationDependency = [(CKKSNearFutureScheduler *)self->_nearFutureScheduler operationDependency];
      [v10 addNullableDependency:operationDependency];

      [(CKKSNearFutureScheduler *)self->_nearFutureScheduler trigger];
    }

    loggingIdentifier4 = [(KCSharingSyncController *)self loggingIdentifier];
    v21 = KCSharingLogObject();

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Making CKSyncEngine Init op outstanding", v29, 2u);
    }

    objc_storeStrong(&self->_initializeEnginesOperation, v10);
    if (sub_10001078C())
    {
      cloudCoreUtilities = [(KCSharingSyncController *)self cloudCoreUtilities];
      if (![cloudCoreUtilities haveAcquiredSession])
      {
LABEL_22:

        goto LABEL_27;
      }

      hasOutStandingSyncEngineInitializeInitOpAdded = [(KCSharingSyncController *)self hasOutStandingSyncEngineInitializeInitOpAdded];

      if (!hasOutStandingSyncEngineInitializeInitOpAdded)
      {
LABEL_27:

        objc_destroyWeak(&v32);
        objc_destroyWeak(&buf);
        goto LABEL_28;
      }

      loggingIdentifier5 = [(KCSharingSyncController *)self loggingIdentifier];
      v24 = KCSharingLogObject();

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *v29 = 0;
        v25 = "Adding sync engine reinit operation to queue after acquired session";
LABEL_25:
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v25, v29, 2u);
      }
    }

    else
    {
      loggingIdentifier6 = [(KCSharingSyncController *)self loggingIdentifier];
      v24 = KCSharingLogObject();

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *v29 = 0;
        v25 = "Setting sync engine reinit operation to add to queue immediately";
        goto LABEL_25;
      }
    }

    [(NSOperationQueue *)self->_operationQueue addOperation:v10];
    goto LABEL_27;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "No operation queue, let's hope we're testing!", &buf, 2u);
  }

  v34 = NSLocalizedDescriptionKey;
  v35 = @"Missing operation queue, we should have operation queue to run! ";
  v26 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  v27 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:40 userInfo:v26];

  (*(completionCopy + 2))(completionCopy, v27);
LABEL_28:
}

- (void)initSyncEnginesWithPrivateDB:(id)b sharedDB:(id)dB withCompletion:(id)completion
{
  bCopy = b;
  dBCopy = dB;
  completionCopy = completion;
  if (!sub_10001078C() || (-[KCSharingSyncController cloudCoreUtilities](self, "cloudCoreUtilities"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 haveAcquiredSession], v11, dBCopy) && bCopy && (v12 & 1) != 0)
  {
    loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
    v14 = KCSharingLogObject();

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "(Re)initializing sync engines", buf, 2u);
    }

    if (sub_10004DE94())
    {
      v60 = 0;
      empty = [(KCSharingSyncController *)self fetchStoredSyncEngineStateWithMetadataKey:@"CKSyncEnginePrivateMetadata" withError:&v60];
      v16 = v60;
      if (v16)
      {
        loggingIdentifier2 = [(KCSharingSyncController *)self loggingIdentifier];
        v18 = KCSharingLogObject();

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v66 = v16;
          v19 = "Failed to serialize stored state for Private Sync Engine with error: %{public}@";
LABEL_52:
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v19, buf, 0xCu);
          goto LABEL_15;
        }

        goto LABEL_15;
      }

      v28 = sub_10001078C();
      if (!bCopy && v28)
      {
        loggingIdentifier3 = [(KCSharingSyncController *)self loggingIdentifier];
        v30 = KCSharingLogObject();

        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Failing to initialize Private Sync Engine because we should have a private cloud DB", buf, 2u);
        }

        v63 = NSLocalizedDescriptionKey;
        v64 = @"Looks like missing Private Cloud DB";
        v31 = [NSDictionary dictionaryWithObjects:&v64 forKeys:&v63 count:1];
        v32 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:43 userInfo:v31];

        completionCopy[2](completionCopy, v32);
        goto LABEL_16;
      }

      v16 = [[CKSyncEngineConfiguration alloc] initWithDatabase:bCopy stateSerialization:empty delegate:self];
      v59 = 0;
      v34 = [(KCSharingSyncController *)self fetchStoredSyncEngineStateWithMetadataKey:@"CKSyncEngineSharedMetadata" withError:&v59];
      v36 = v59;
      if (v36)
      {
        loggingIdentifier4 = [(KCSharingSyncController *)self loggingIdentifier];
        v38 = KCSharingLogObject();

        if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_30;
        }

        *buf = 138543362;
        v66 = v36;
        v39 = "Failed to serialize stored state for Shared Sync Engine with error: %{public}@";
        goto LABEL_57;
      }

      v49 = sub_10001078C();
      if (!dBCopy && v49)
      {
        loggingIdentifier5 = [(KCSharingSyncController *)self loggingIdentifier];
        v51 = KCSharingLogObject();

        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Failing to initialize Shared Sync Engine because we should have a shared cloud DB", buf, 2u);
        }

        v58 = 0;
        v61 = NSLocalizedDescriptionKey;
        v62 = @"Looks like missing Shared Cloud DB";
        v52 = [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
        sub_100061E2C(&v58, 43, v52);
        v53 = v58;

        completionCopy[2](completionCopy, v53);
        goto LABEL_31;
      }

      v36 = [[CKSyncEngineConfiguration alloc] initWithDatabase:dBCopy stateSerialization:v34 delegate:self];
      loggingIdentifier6 = [(KCSharingSyncController *)self loggingIdentifier];
      v55 = KCSharingLogObject();

      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Init'ed SyncEngines using Public APIs", buf, 2u);
      }
    }

    else
    {
      loggingIdentifier7 = [(KCSharingSyncController *)self loggingIdentifier];
      v21 = KCSharingLogObject();

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Init SyncEngine using deprecated APIs", buf, 2u);
      }

      store = self->_store;
      v57 = 0;
      empty = [(KCSharingStore *)store fetchValueForMetadataKey:@"CKSyncEnginePrivateMetadata" error:&v57];
      v23 = v57;
      if (v23)
      {
        v16 = v23;
        loggingIdentifier8 = [(KCSharingSyncController *)self loggingIdentifier];
        v18 = KCSharingLogObject();

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v66 = v16;
          v19 = "Failed to fetch private engine metadata: %{public}@";
          goto LABEL_52;
        }

LABEL_15:

        [(KCSharingSyncController *)self isLockedError:v16];
        completionCopy[2](completionCopy, v16);
LABEL_16:

        goto LABEL_45;
      }

      v16 = [[CKSyncEngineConfiguration alloc] initWithDatabase:bCopy dataSource:self metadata:empty];
      v33 = self->_store;
      v56 = 0;
      v34 = [(KCSharingStore *)v33 fetchValueForMetadataKey:@"CKSyncEngineSharedMetadata" error:&v56];
      v35 = v56;
      if (v35)
      {
        v36 = v35;
        loggingIdentifier9 = [(KCSharingSyncController *)self loggingIdentifier];
        v38 = KCSharingLogObject();

        if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
LABEL_30:

          [(KCSharingSyncController *)self isLockedError:v36];
          completionCopy[2](completionCopy, v36);
LABEL_31:

LABEL_44:
          goto LABEL_45;
        }

        *buf = 138543362;
        v66 = v36;
        v39 = "Failed to fetch shared engine metadata: %{public}@";
LABEL_57:
        _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, v39, buf, 0xCu);
        goto LABEL_30;
      }

      v36 = [[CKSyncEngineConfiguration alloc] initWithDatabase:dBCopy dataSource:self metadata:v34];
    }

    if (!self->_forTesting)
    {
      [v16 setApsMachServiceName:@"com.apple.securityd.aps"];
      [v36 setApsMachServiceName:@"com.apple.securityd.aps"];
    }

    empty = xpc_dictionary_create_empty();
    xpc_dictionary_set_value(empty, XPC_ACTIVITY_REQUIRES_CLASS_A, &_xpc_BOOL_true);
    [v16 setXpcActivityCriteriaOverrides:empty];
    [v36 setXpcActivityCriteriaOverrides:empty];
    v41 = [[CKSyncEngine alloc] initWithConfiguration:v16];
    [(KCSharingSyncController *)self setPrivateSyncEngine:v41];

    v42 = [[CKSyncEngine alloc] initWithConfiguration:v36];
    [(KCSharingSyncController *)self setSharedSyncEngine:v42];

    if (self->_receivedPrivatePushesWhileLocked)
    {
      loggingIdentifier10 = [(KCSharingSyncController *)self loggingIdentifier];
      v44 = KCSharingLogObject();

      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Sync engine reinit: private engine needs to fetch changes", buf, 2u);
      }

      privateSyncEngine = [(KCSharingSyncController *)self privateSyncEngine];
      [privateSyncEngine setNeedsToFetchChanges];

      self->_receivedPrivatePushesWhileLocked = 0;
    }

    if (self->_receivedSharedPushesWhileLocked)
    {
      loggingIdentifier11 = [(KCSharingSyncController *)self loggingIdentifier];
      v47 = KCSharingLogObject();

      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Sync engine reinit: shared engine needs to fetch changes", buf, 2u);
      }

      sharedSyncEngine = [(KCSharingSyncController *)self sharedSyncEngine];
      [sharedSyncEngine setNeedsToFetchChanges];

      self->_receivedSharedPushesWhileLocked = 0;
    }

    completionCopy[2](completionCopy, 0);
    goto LABEL_44;
  }

  loggingIdentifier12 = [(KCSharingSyncController *)self loggingIdentifier];
  v26 = KCSharingLogObject();

  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failing to Initialize Sync Engines because we should have a session and DBs should not be nil", buf, 2u);
  }

  v67 = NSLocalizedDescriptionKey;
  v68 = @"Looks like missing CloudCore Session";
  v27 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];
  v16 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:43 userInfo:v27];

  completionCopy[2](completionCopy, v16);
LABEL_45:
}

- (void)acquireCloudCoreSessionWithContainerID:(id)d applicationID:(id)iD encryptionService:(id)service completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  serviceCopy = service;
  completionCopy = completion;
  v14 = self->_operationQueue == 0;
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v16 = KCSharingLogObject();

  if (v14)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "No operation queue while acquire cloudcore session, let's hope we're testing!", &buf, 2u);
    }

    v27 = NSLocalizedDescriptionKey;
    v28 = @"Missing operation queue, we should have operation queue to run! ";
    v18 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v19 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:40 userInfo:v18];

    completionCopy[2](completionCopy, v19);
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Requested to acquire a cloudcore session", &buf, 2u);
    }

    objc_initWeak(&buf, self);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10007D3BC;
    v20[3] = &unk_100337BB0;
    objc_copyWeak(&v25, &buf);
    v21 = dCopy;
    v22 = iDCopy;
    v23 = serviceCopy;
    v24 = completionCopy;
    v17 = [NSBlockOperation blockOperationWithBlock:v20];
    [(NSOperationQueue *)self->_operationQueue addOperation:v17];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&buf);
  }
}

- (id)fetchStoredSyncEngineStateWithMetadataKey:(id)key withError:(id *)error
{
  keyCopy = key;
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v8 = KCSharingLogObject();

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v36 = keyCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetching stored %{public}@", buf, 0xCu);
  }

  store = [(KCSharingSyncController *)self store];
  v34 = 0;
  v10 = [store fetchValueForMetadataKey:keyCopy error:&v34];
  v11 = v34;

  if (!v11)
  {
    if (v10)
    {
      v33 = 0;
      v16 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v33];
      v17 = v33;
      if (v17)
      {
        loggingIdentifier2 = [(KCSharingSyncController *)self loggingIdentifier];
        v19 = KCSharingLogObject();

        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v36 = keyCopy;
          v37 = 2114;
          v38 = v17;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to unarchive %{public}@ with error: %{public}@", buf, 0x16u);
        }

        v32 = 0;
        v20 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v32];
        v21 = v32;
        loggingIdentifier3 = [(KCSharingSyncController *)self loggingIdentifier];
        v23 = KCSharingLogObject();

        if (v21)
        {
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v36 = keyCopy;
            v37 = 2114;
            v38 = v21;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to unarchive old way also %{public}@ with error: %{public}@", buf, 0x16u);
          }

          if (error)
          {
            v24 = v21;
            *error = v21;
          }

          v15 = 0;
          goto LABEL_21;
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v36 = keyCopy;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Falling back and updating %{public}@ sync engine metadata from old style to new style", buf, 0xCu);
        }

        v31 = 0;
        v26 = [(KCSharingSyncController *)self storeOldSyncEngineState:v10 asNewSyncEngineStateWithMetadataKey:keyCopy withError:&v31];
        v27 = v31;

        if (v26)
        {
          v28 = v27 == 0;
        }

        else
        {
          v28 = 0;
        }

        v29 = v28;
        if (error && (v29 & 1) == 0)
        {
          v30 = v17;
          *error = v17;
        }

        if (!v29)
        {
          v15 = 0;
          v16 = v26;
          goto LABEL_21;
        }

        v16 = v26;
      }
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    v16 = v16;
    v15 = v16;
LABEL_21:

    goto LABEL_22;
  }

  loggingIdentifier4 = [(KCSharingSyncController *)self loggingIdentifier];
  v13 = KCSharingLogObject();

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v36 = keyCopy;
    v37 = 2114;
    v38 = v11;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to fetch %{public}@ with error: %{public}@", buf, 0x16u);
  }

  if (error)
  {
    v14 = v11;
    v15 = 0;
    *error = v11;
  }

  else
  {
    v15 = 0;
  }

LABEL_22:

  return v15;
}

- (id)storeOldSyncEngineState:(id)state asNewSyncEngineStateWithMetadataKey:(id)key withError:(id *)error
{
  keyCopy = key;
  stateCopy = state;
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v11 = KCSharingLogObject();

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = keyCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Storing Old engine data for new %@sync engine", buf, 0xCu);
  }

  v12 = [[CKSyncEngineStateSerialization alloc] initWithDeprecatedData:stateCopy];
  v29 = 0;
  v13 = [NSKeyedArchiver archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v29];
  v14 = v29;
  v15 = v14;
  if (!v13 || v14)
  {
    loggingIdentifier2 = [(KCSharingSyncController *)self loggingIdentifier];
    v22 = KCSharingLogObject();

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v31 = keyCopy;
      v32 = 2114;
      v33 = v15;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Error while archiving old engine state -> new engine state serilization for %@sync engine error: %{public}@", buf, 0x16u);
    }

    if (error)
    {
      v23 = v15;
      v20 = 0;
      *error = v15;
      goto LABEL_17;
    }
  }

  else
  {
    store = self->_store;
    v28 = 0;
    v17 = [(KCSharingStore *)store setValue:v13 forMetadataKey:keyCopy error:&v28];
    v18 = v28;
    v19 = v18;
    if (v17)
    {

      v20 = v12;
      goto LABEL_17;
    }

    loggingIdentifier3 = [(KCSharingSyncController *)self loggingIdentifier];
    v25 = KCSharingLogObject();

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v31 = v19;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to store converted old engine -> new engine metadata with error: %{public}@", buf, 0xCu);
    }

    if (error)
    {
      v26 = v19;
      *error = v19;
    }
  }

  v20 = 0;
LABEL_17:

  return v20;
}

- (void)setupCKNotificationListenersWithPrivateDB:(id)b sharedDB:(id)dB
{
  bCopy = b;
  dBCopy = dB;
  forTesting = self->_forTesting;
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v10 = KCSharingLogObject();

  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (forTesting)
  {
    if (v11)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Seems like we are in testing mode, so not setting CKNotification listeners", buf, 2u);
    }
  }

  else
  {
    if (v11)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Setting up CKNotification listeners", buf, 2u);
    }

    if (bCopy && dBCopy)
    {
      objc_initWeak(buf, self);
      v12 = [[CKNotificationListener alloc] initWithMachServiceName:@"com.apple.securityd.aps"];
      notificationListener = self->_notificationListener;
      self->_notificationListener = v12;

      v14 = self->_notificationListener;
      v15 = [(KCSharingSyncController *)self subscriptionIDForDatabase:bCopy];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10007E18C;
      v22[3] = &unk_100334D70;
      objc_copyWeak(&v23, buf);
      [(CKNotificationListener *)v14 registerForSubscriptionWithID:v15 inDatabase:dBCopy handler:v22];

      v16 = self->_notificationListener;
      v17 = [(KCSharingSyncController *)self subscriptionIDForDatabase:dBCopy];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10007E228;
      v20[3] = &unk_100334D70;
      objc_copyWeak(&v21, buf);
      [(CKNotificationListener *)v16 registerForSubscriptionWithID:v17 inDatabase:dBCopy handler:v20];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&v23);
      objc_destroyWeak(buf);
    }

    else
    {
      loggingIdentifier2 = [(KCSharingSyncController *)self loggingIdentifier];
      v19 = KCSharingLogObject();

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf[0]) = 0;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failing to setup CKNotification Listeners, DBs should not be nil", buf, 2u);
      }
    }
  }
}

- (KCSharingSyncController)initWithStore:(id)store container:(id)container privateSyncEngine:(id)engine sharedSyncEngine:(id)syncEngine messagingdConnection:(id)connection lockStateTracker:(id)tracker forTesting:(BOOL)testing
{
  storeCopy = store;
  containerCopy = container;
  engineCopy = engine;
  syncEngineCopy = syncEngine;
  connectionCopy = connection;
  trackerCopy = tracker;
  v60.receiver = self;
  v60.super_class = KCSharingSyncController;
  v19 = [(KCSharingSyncController *)&v60 init];
  if (!v19)
  {
LABEL_23:
    v39 = v19;
    goto LABEL_24;
  }

  v50 = containerCopy;
  v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v21 = dispatch_queue_create("com.apple.security.keychain.sharing.KCSharingSyncController", v20);
  queue = v19->_queue;
  v19->_queue = v21;

  objc_storeStrong(&v19->_store, store);
  objc_storeStrong(&v19->_container, container);
  objc_storeStrong(&v19->_privateSyncEngine, engine);
  objc_storeStrong(&v19->_sharedSyncEngine, syncEngine);
  objc_storeStrong(&v19->_messagingdConnection, connection);
  getLoggingIdentifer = [storeCopy getLoggingIdentifer];
  loggingIdentifier = v19->_loggingIdentifier;
  v19->_loggingIdentifier = getLoggingIdentifer;

  v19->_forTesting = testing;
  reinitSyncEnginesCompletionBlock = v19->_reinitSyncEnginesCompletionBlock;
  v19->_reinitSyncEnginesCompletionBlock = 0;

  v19->_hasOutStandingSyncEngineInitializeInitOpAdded = 0;
  v26 = objc_alloc_init(NSOperationQueue);
  operationQueue = v19->_operationQueue;
  v19->_operationQueue = v26;

  [(KCSharingSyncController *)v19 setCloudCoreTestingDelegate:0];
  v28 = +[KCSharingFixUpManager sharedInstance];
  fixUpManager = v19->_fixUpManager;
  v19->_fixUpManager = v28;

  if (sub_10001078C())
  {
    v30 = [[_TtC9securityd27KCSharingCloudCoreUtilities alloc] initWithKCSharingCloudCoreDelegate:v19];
    cloudCoreUtilities = v19->_cloudCoreUtilities;
    v19->_cloudCoreUtilities = v30;

    loggingIdentifier = [(KCSharingSyncController *)v19 loggingIdentifier];
    v33 = KCSharingLogObject();

    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      v34 = "Init CloudCoreUtilities with SyncController as its delegate";
      v35 = v33;
      v36 = OS_LOG_TYPE_INFO;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v35, v36, v34, buf, 2u);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if (containerCopy || testing)
  {
    privateCloudDatabase = [containerCopy privateCloudDatabase];
    [(KCSharingSyncController *)v19 setPrivateCloudDB:privateCloudDatabase];

    sharedCloudDatabase = [containerCopy sharedCloudDatabase];
    [(KCSharingSyncController *)v19 setSharedCloudDB:sharedCloudDatabase];

    loggingIdentifier2 = [(KCSharingSyncController *)v19 loggingIdentifier];
    v33 = KCSharingLogObject();

    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      v34 = "Setting DBs without Cloud Core";
      v35 = v33;
      v36 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_12;
    }

LABEL_13:

    if (trackerCopy)
    {
      v43 = trackerCopy;
    }

    else
    {
      v43 = +[CKKSLockStateTracker globalTracker];
    }

    lockStateTracker = v19->_lockStateTracker;
    v19->_lockStateTracker = v43;

    if (!testing)
    {
      v45 = [[CKKSNearFutureScheduler alloc] initWithName:@"KCSharingScheduler" delay:10000000000 keepProcessAlive:0 dependencyDescriptionCode:0 block:&stru_100334D28];
      nearFutureScheduler = v19->_nearFutureScheduler;
      v19->_nearFutureScheduler = v45;

      if ((sub_10001078C() & 1) == 0)
      {
        privateCloudDB = [(KCSharingSyncController *)v19 privateCloudDB];
        sharedCloudDB = [(KCSharingSyncController *)v19 sharedCloudDB];
        [(KCSharingSyncController *)v19 setupCKNotificationListenersWithPrivateDB:privateCloudDB sharedDB:sharedCloudDB];
      }

      if (sub_10001078C())
      {
        objc_initWeak(buf, v19);
        v57[0] = _NSConcreteStackBlock;
        v57[1] = 3221225472;
        v57[2] = sub_10007EA04;
        v57[3] = &unk_100344DA0;
        objc_copyWeak(&v58, buf);
        [(KCSharingSyncController *)v19 CKSyncEnginesInitOperationWithDelay:0 withCompletion:v57];
        objc_destroyWeak(&v58);
        objc_destroyWeak(buf);
      }

      objc_initWeak(buf, v19);
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_10007EB30;
      v55[3] = &unk_100344DA0;
      objc_copyWeak(&v56, buf);
      [(KCSharingSyncController *)v19 resetReinitCKSyncEnginesOperationWithDelay:0 withCompletion:v55];
      objc_destroyWeak(&v56);
      objc_destroyWeak(buf);
    }

    [(CKKSLockStateTracker *)v19->_lockStateTracker addLockStateObserver:v19, v50];
    containerCopy = v51;
    goto LABEL_23;
  }

  loggingIdentifier3 = [(KCSharingSyncController *)v19 loggingIdentifier];
  v38 = KCSharingLogObject();

  if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_fault_impl(&_mh_execute_header, v38, OS_LOG_TYPE_FAULT, "Doesn't have container init yet, Returning from sync controller init", buf, 2u);
  }

  v39 = 0;
  containerCopy = 0;
LABEL_24:

  return v39;
}

- (KCSharingSyncController)init
{
  v3 = sub_10001078C();
  loggingIdentifier = [(KCSharingSyncController *)self loggingIdentifier];
  v5 = KCSharingLogObject();

  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Should use CloudCore Session instead of CKContainer flow", v13, 2u);
    }

    v7 = 0;
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Should use CKContainer based flow", buf, 2u);
    }

    v5 = [CKContainer containerIDForContainerIdentifier:@"com.apple.security.shared.keychain"];
    v8 = objc_alloc_init(CKContainerOptions);
    [v8 setUseZoneWidePCS:1];
    [v8 setApplicationBundleIdentifierOverrideForContainerAccess:@"com.apple.security.kcsharing"];
    [v8 setApplicationBundleIdentifierOverrideForPushTopicGeneration:@"com.apple.security.kcsharing"];
    v7 = [[CKContainer alloc] initWithContainerID:v5 options:v8];
  }

  v9 = objc_alloc_init(KCSharingStore);
  v10 = +[KCSharingMessagingdConnection sharedInstance];
  v11 = [(KCSharingSyncController *)self initWithStore:v9 container:v7 privateSyncEngine:0 sharedSyncEngine:0 messagingdConnection:v10 forTesting:0];

  return v11;
}

+ (KCSharingSyncController)sharedInstance
{
  if (qword_10039DC08 != -1)
  {
    dispatch_once(&qword_10039DC08, &stru_100334D48);
  }

  v3 = qword_10039DC10;

  return v3;
}

@end