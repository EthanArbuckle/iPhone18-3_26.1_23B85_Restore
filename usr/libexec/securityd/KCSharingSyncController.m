@interface KCSharingSyncController
+ (KCSharingSyncController)sharedInstance;
- (BOOL)haveUnmirroredGroups:(id)a3 forDatabase:(id)a4;
- (BOOL)isCurrentUserIdentifierAvailable;
- (BOOL)isCurrentUserProvisioned;
- (BOOL)isLockedError:(id)a3 duringFetchForEngine:(id)a4;
- (BOOL)obtainAuthoritativeGroupsForPrivate:(id)a3 shared:(id)a4 error:(id *)a5;
- (BOOL)saveCursor:(id)a3 forScope:(int64_t)a4;
- (BOOL)setCloudCoreMetadataValue:(id)a3 forKey:(id)a4 error:(id *)a5;
- (BOOL)setCurrentUserMetadataFeatureUsage:(unint64_t)a3;
- (BOOL)stageOutgoingShares:(id)a3 deletionsForShares:(id)a4 error:(id *)a5;
- (BOOL)syncEngine:(id)a3 shouldFetchChangesForZoneID:(id)a4;
- (BOOL)updateCurrentUserMetadataForKey:(id)a3 toValue:(id)a4 withError:(id *)a5;
- (KCSharingSyncController)init;
- (KCSharingSyncController)initWithStore:(id)a3 container:(id)a4 privateSyncEngine:(id)a5 sharedSyncEngine:(id)a6 messagingdConnection:(id)a7 lockStateTracker:(id)a8 forTesting:(BOOL)a9;
- (KCSharingXPCListenerDelegate)xpcListenerDelegate;
- (id)currentUserMetadata;
- (id)fetchCloudCoreMetadataValueWithErrorForKey:(id)a3 error:(id *)a4;
- (id)fetchCursorForScope:(int64_t)a3 zoneIDs:(id)a4;
- (id)fetchOutgoingChangesWithScope:(int64_t)a3 cursor:(id)a4;
- (id)fetchStoredSyncEngineStateWithMetadataKey:(id)a3 withError:(id *)a4;
- (id)getOutgoingStagedDatabaseChangesForSyncEngine:(id)a3;
- (id)recordZoneIDsToDeleteForSyncEngine:(id)a3;
- (id)recordZonesToSaveForSyncEngine:(id)a3;
- (id)storeOldSyncEngineState:(id)a3 asNewSyncEngineStateWithMetadataKey:(id)a4 withError:(id *)a5;
- (id)subscriptionIDForDatabase:(id)a3;
- (id)syncEngine:(id)a3 nextBatchOfRecordsToModifyForZoneIDs:(id)a4;
- (id)syncEngine:(id)a3 nextRecordZoneChangeBatchForContext:(id)a4;
- (id)syncEngine:(id)a3 recordToSaveForRecordID:(id)a4;
- (id)unmirroredZonesForPrivate:(id)a3 shared:(id)a4 error:(id *)a5;
- (unint64_t)currentUserMetadataFeatureUsage;
- (void)CKSyncEnginesInitOperationWithDelay:(BOOL)a3 withCompletion:(id)a4;
- (void)_onQueueFetchRemoteChangesForZoneIDs:(id)a3 completion:(id)a4;
- (void)acquireCloudCoreSessionWithContainerID:(id)a3 applicationID:(id)a4 encryptionService:(id)a5 completion:(id)a6;
- (void)cancelExistingSyncEngines;
- (void)cancelSyncEngineOperationsWithCompletionBlock:(id)a3;
- (void)deviceDidLock;
- (void)ensureCurrentUserProvisionedWithCompletion:(id)a3;
- (void)fetchCurrentUserIdentifierFromCloudKitWithReply:(id)a3;
- (void)fetchCurrentUserIdentifierWithReply:(id)a3;
- (void)fetchRemoteChangesForZoneIDs:(id)a3 completion:(id)a4;
- (void)forceReinitSyncEnginesWithCompletionBlock:(id)a3;
- (void)handleAccountChangeFromUserRecordName:(id)a3 toUserRecordName:(id)a4 shouldWipeLocalState:(BOOL)a5;
- (void)handleProvisioningActivity:(id)a3 isRetry:(BOOL)a4;
- (void)initSyncEnginesWithPrivateDB:(id)a3 sharedDB:(id)a4 withCompletion:(id)a5;
- (void)lockStateChangeNotification:(BOOL)a3;
- (void)makeStagedOutgoingDatabaseChangesAsPendingSyncEngineChanges;
- (void)performKCSharingFixUpsWithCompletion:(id)a3;
- (void)performMaintenanceWithCompletion:(id)a3;
- (void)preflightWithCompletion:(id)a3 delay:(BOOL)a4;
- (void)processDatabaseModifications;
- (void)registerProvisioningActivity;
- (void)removeCKNotificationListenersAfterSessionInvalidationWithPrivateDB:(id)a3 sharedDB:(id)a4;
- (void)resyncFromRPC:(BOOL)a3 privateRemoteZonesByZoneID:(id)a4 sharedRemoteZonesByZoneID:(id)a5 completion:(id)a6;
- (void)saveAllOutgoingChangesWithCompletion:(id)a3;
- (void)saveStagedOutgoingChangesWithCompletion:(id)a3;
- (void)sendNewIDSInvitesForRecord:(id)a3;
- (void)setCloudCoreTestingProtocolDelegate:(id)a3;
- (void)setupCKNotificationListenersWithPrivateDB:(id)a3 sharedDB:(id)a4;
- (void)setupSessionReinitOperationOnSessionInvalidation;
- (void)stageAllOutgoingChangesWithCompletion:(id)a3;
- (void)syncEngine:(id)a3 accountChangedFromUserRecordID:(id)a4 toUserRecordID:(id)a5;
- (void)syncEngine:(id)a3 didDeleteRecordWithID:(id)a4;
- (void)syncEngine:(id)a3 didDeleteRecordZoneWithID:(id)a4;
- (void)syncEngine:(id)a3 didFetchRecord:(id)a4;
- (void)syncEngine:(id)a3 didSaveRecord:(id)a4;
- (void)syncEngine:(id)a3 didSaveRecordZone:(id)a4;
- (void)syncEngine:(id)a3 didUpdateMetadata:(id)a4;
- (void)syncEngine:(id)a3 failedToDeleteRecordWithID:(id)a4 error:(id)a5;
- (void)syncEngine:(id)a3 failedToDeleteRecordZoneWithID:(id)a4 error:(id)a5;
- (void)syncEngine:(id)a3 failedToSaveRecord:(id)a4 error:(id)a5;
- (void)syncEngine:(id)a3 failedToSaveRecordZone:(id)a4 error:(id)a5;
- (void)syncEngine:(id)a3 handleEvent:(id)a4;
- (void)syncEngine:(id)a3 recordWithIDWasDeleted:(id)a4 recordType:(id)a5;
- (void)syncEngine:(id)a3 zoneWithIDWasDeleted:(id)a4;
- (void)syncEngineDidEndFetchingChanges:(id)a3;
- (void)verifyGroupsInSyncAndResync:(BOOL)a3 WithCompletion:(id)a4;
- (void)verifyGroupsInSyncAndResyncMissingGroupsWithCompletion:(id)a3;
- (void)verifyGroupsInSyncWithCompletion:(id)a3;
- (void)wipe:(BOOL)a3 completion:(id)a4;
@end

@implementation KCSharingSyncController

- (id)currentUserMetadata
{
  v3 = [(KCSharingSyncController *)self store];
  v9 = 0;
  v4 = [v3 fetchValueForMetadataKey:@"CurrentUserMetadata" error:&v9];
  v5 = v9;

  [(KCSharingSyncController *)self isLockedError:v5];
  if (!v4)
  {
    v6 = [(KCSharingSyncController *)self loggingIdentifier];
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
  v2 = [(KCSharingSyncController *)self currentUserMetadata];
  v3 = [v2 objectForKeyedSubscript:@"pv"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (KCSharingXPCListenerDelegate)xpcListenerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcListenerDelegate);

  return WeakRetained;
}

- (void)setCloudCoreTestingProtocolDelegate:(id)a3
{
  v4 = a3;
  v5 = [(KCSharingSyncController *)self loggingIdentifier];
  v6 = KCSharingLogObject();

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Setting CloudCore testing delegate", v7, 2u);
  }

  [(KCSharingSyncController *)self setCloudCoreTestingDelegate:v4];
}

- (void)forceReinitSyncEnginesWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(KCSharingSyncController *)self loggingIdentifier];
  v6 = KCSharingLogObject();

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Force reinit of sync engines", buf, 2u);
  }

  v7 = [(KCSharingSyncController *)self queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006A720;
  v9[3] = &unk_100344DC8;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_async(v7, v9);
}

- (void)cancelSyncEngineOperationsWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(KCSharingSyncController *)self privateSyncEngine];
  v6 = [(KCSharingSyncController *)self sharedSyncEngine];
  v7 = [(KCSharingSyncController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006A984;
  block[3] = &unk_100346018;
  block[4] = self;
  dispatch_sync(v7, block);

  if (v6 && v5)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10006A9C8;
    v11[3] = &unk_100344DC8;
    v12 = v5;
    v13 = v4;
    [v6 cancelOperationsWithCompletionHandler:v11];
  }

  else
  {
    v8 = [(KCSharingSyncController *)self loggingIdentifier];
    v9 = KCSharingLogObject();

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Completing without cancelling pending operations", v10, 2u);
    }

    v4[2](v4);
  }
}

- (void)performKCSharingFixUpsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(KCSharingSyncController *)self loggingIdentifier];
  v6 = KCSharingLogObject();

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Trying to run fixups", v10, 2u);
  }

  v7 = [(KCSharingSyncController *)self fixUpManager];
  v8 = [(KCSharingSyncController *)self store];
  v9 = [(KCSharingSyncController *)self lockStateTracker];
  [v7 performFixUpOneWithStore:v8 lockStateTracker:v9 WithCompletion:v4];
}

- (void)setupSessionReinitOperationOnSessionInvalidation
{
  v3 = [(KCSharingSyncController *)self loggingIdentifier];
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

- (void)removeCKNotificationListenersAfterSessionInvalidationWithPrivateDB:(id)a3 sharedDB:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(KCSharingSyncController *)self loggingIdentifier];
  v9 = KCSharingLogObject();

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Removing CKNotification Listeners", buf, 2u);
  }

  notificationListener = self->_notificationListener;
  if (!notificationListener)
  {
    v14 = [(KCSharingSyncController *)self loggingIdentifier];
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

  if (!v6 || !v7)
  {
    v17 = [(KCSharingSyncController *)self loggingIdentifier];
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

  v11 = [(KCSharingSyncController *)self subscriptionIDForDatabase:v6];
  [(CKNotificationListener *)notificationListener unregisterForSubscriptionWithID:v11 inDatabase:v6];

  v12 = self->_notificationListener;
  v13 = [(KCSharingSyncController *)self subscriptionIDForDatabase:v7];
  [(CKNotificationListener *)v12 unregisterForSubscriptionWithID:v13 inDatabase:v7];
LABEL_10:
}

- (id)fetchCloudCoreMetadataValueWithErrorForKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(KCSharingSyncController *)self store];
  v14 = 0;
  v8 = [v7 fetchValueForMetadataKey:v6 error:&v14];
  v9 = v14;

  if (v9)
  {
    v10 = [(KCSharingSyncController *)self loggingIdentifier];
    v11 = KCSharingLogObject();

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v16 = v6;
      v17 = 2114;
      v18 = v9;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to fetch CloudCoreMetadata for key:%{public}@ with error: %{public}@", buf, 0x16u);
    }

    if (a4)
    {
      v12 = v9;
      *a4 = v9;
    }
  }

  return v8;
}

- (BOOL)setCloudCoreMetadataValue:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  store = self->_store;
  v15 = 0;
  v10 = [(KCSharingStore *)store setValue:v7 forMetadataKey:v8 error:&v15];
  v11 = v15;
  v12 = [(KCSharingSyncController *)self loggingIdentifier];
  v13 = KCSharingLogObject();

  if (v10)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v17 = v8;
      v18 = 2114;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Updated CloudCore Metadata for key: %{public}@ with value: %{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v17 = v8;
    v18 = 2114;
    v19 = v11;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to update CloudCore Metadata for key: %{public}@ with error: %{public}@", buf, 0x16u);
  }

  return v10;
}

- (BOOL)setCurrentUserMetadataFeatureUsage:(unint64_t)a3
{
  v5 = [NSNumber numberWithUnsignedInteger:?];
  v11 = 0;
  v6 = [(KCSharingSyncController *)self updateCurrentUserMetadataForKey:@"isInUse" toValue:v5 withError:&v11];
  v7 = v11;

  if (v7)
  {
    v8 = [(KCSharingSyncController *)self loggingIdentifier];
    v9 = KCSharingLogObject();

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v13 = a3;
      v14 = 2112;
      v15 = v7;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to set feature usage to %lu: %@", buf, 0x16u);
    }
  }

  return v6;
}

- (unint64_t)currentUserMetadataFeatureUsage
{
  v2 = [(KCSharingSyncController *)self currentUserMetadata];
  v3 = [v2 objectForKey:@"isInUse"];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (BOOL)isCurrentUserIdentifierAvailable
{
  v2 = [(KCSharingSyncController *)self currentUserMetadata];
  v3 = [v2 objectForKeyedSubscript:@"currentUserIdentifier"];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)updateCurrentUserMetadataForKey:(id)a3 toValue:(id)a4 withError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(KCSharingSyncController *)self currentUserMetadata];
  v11 = [v10 mutableCopy];
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

  v15 = [v14 objectForKey:v8];
  v16 = [v15 isEqual:v9];

  if (v16)
  {
    v17 = [(KCSharingSyncController *)self loggingIdentifier];
    v18 = KCSharingLogObject();

    v19 = 1;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = v8;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "CurrentUserMetadata for key %@ already at new value (or removed)", buf, 0xCu);
    }
  }

  else
  {
    [v14 setValue:v9 forKey:v8];
    v20 = [(KCSharingSyncController *)self store];
    v26 = 0;
    v21 = [v20 setValue:v14 forMetadataKey:@"CurrentUserMetadata" error:&v26];
    v18 = v26;

    if (v21)
    {
      v19 = 1;
    }

    else
    {
      [(KCSharingSyncController *)self isLockedError:v18];
      v22 = [(KCSharingSyncController *)self loggingIdentifier];
      v23 = KCSharingLogObject();

      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v28 = v8;
        v29 = 2114;
        v30 = v9;
        v31 = 2114;
        v32 = v18;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to update current user metadata for key %{public}@ to value %{public}@ with error: %{public}@", buf, 0x20u);
      }

      if (a5)
      {
        v24 = v18;
        v19 = 0;
        *a5 = v18;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  return v19;
}

- (id)syncEngine:(id)a3 nextRecordZoneChangeBatchForContext:(id)a4
{
  v6 = a3;
  v7 = [a4 options];
  v47 = [v7 scope];
  v8 = [v47 zoneIDs];
  v9 = [v6 database];
  [v9 databaseScope];
  v10 = CKDatabaseScopeString();

  v11 = [(KCSharingSyncController *)self loggingIdentifier];
  v12 = KCSharingLogObject();

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v50 = v10;
    v51 = 2112;
    v52 = v8;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Requesting next record batch for scope=%{public}@ in zoneIDs=%@", buf, 0x16u);
  }

  v13 = [v6 database];
  v14 = -[KCSharingSyncController fetchCursorForScope:zoneIDs:](self, "fetchCursorForScope:zoneIDs:", [v13 databaseScope], v8);

  v15 = [v6 database];
  v16 = -[KCSharingSyncController fetchOutgoingChangesWithScope:cursor:](self, "fetchOutgoingChangesWithScope:cursor:", [v15 databaseScope], v14);

  if (!v16)
  {
    v21 = [v6 database];
    -[KCSharingSyncController saveCursor:forScope:](self, "saveCursor:forScope:", 0, [v21 databaseScope]);
    v25 = 0;
    v24 = v14;
    goto LABEL_18;
  }

  if (![v16 isEmpty])
  {
    v46 = v7;
    v26 = v16;
    v24 = v14;
LABEL_14:
    v27 = [v26 cursor];
    v28 = [v6 database];
    -[KCSharingSyncController saveCursor:forScope:](self, "saveCursor:forScope:", v27, [v28 databaseScope]);

    v29 = [(KCSharingSyncController *)self loggingIdentifier];
    v30 = KCSharingLogObject();

    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [v26 recordsToSave];
      v32 = [v31 count];
      v33 = [v26 recordIDsToDelete];
      v34 = [v33 count];
      *buf = 134218754;
      v50 = v32;
      v51 = 2048;
      v52 = v34;
      v53 = 2114;
      v54 = v10;
      v55 = 2112;
      v56 = v8;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Returning batch of %lu + %lu records to upload in scope=%{public}@, zoneIDs=%@", buf, 0x2Au);
    }

    v35 = [CKSyncEngineRecordZoneChangeBatch alloc];
    v36 = [v26 recordsToSave];
    v37 = [v26 recordIDsToDelete];
    v25 = [v35 initWithRecordsToSave:v36 recordIDsToDelete:v37 atomicByZone:0];

    v21 = v26;
    goto LABEL_17;
  }

  v17 = [(KCSharingSyncController *)self loggingIdentifier];
  v18 = KCSharingLogObject();

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v50 = v10;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Initial change set for scope=%{public}@ was empty; restaging to pick up stragglers", buf, 0xCu);
  }

  v19 = [v6 database];
  -[KCSharingSyncController saveCursor:forScope:](self, "saveCursor:forScope:", 0, [v19 databaseScope]);

  v20 = [(KCSharingSyncController *)self store];
  v48 = 0;
  [v20 stageAllOutgoingChangesWithError:&v48];
  v21 = v48;

  if (v21)
  {
    v22 = [(KCSharingSyncController *)self loggingIdentifier];
    v23 = KCSharingLogObject();

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v50 = v10;
      v51 = 2112;
      v52 = v21;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to restage scope=%{public}@ outgoing changes: %@", buf, 0x16u);
    }

    [(KCSharingSyncController *)self isLockedError:v21];
    v24 = v14;
LABEL_11:

    v25 = 0;
    goto LABEL_18;
  }

  v46 = v7;
  v39 = [KCSharingOutgoingChangesetCursor alloc];
  v40 = [v6 database];
  v24 = -[KCSharingOutgoingChangesetCursor initWithDatabaseScope:desiredZoneIDs:](v39, "initWithDatabaseScope:desiredZoneIDs:", [v40 databaseScope], v8);

  v41 = [v6 database];
  v26 = -[KCSharingSyncController fetchOutgoingChangesWithScope:cursor:](self, "fetchOutgoingChangesWithScope:cursor:", [v41 databaseScope], v24);

  if (v26)
  {
    v42 = [v26 isEmpty];
    v43 = [(KCSharingSyncController *)self loggingIdentifier];
    v44 = KCSharingLogObject();

    v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
    if (v42)
    {
      if (v45)
      {
        *buf = 138543618;
        v50 = v10;
        v51 = 2112;
        v52 = v8;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Uploaded all records for scope=%{public}@ in zoneIDs=%@", buf, 0x16u);
      }

      v16 = v26;
      v7 = v46;
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

  v21 = 0;
  v25 = 0;
LABEL_17:
  v7 = v46;
LABEL_18:

  return v25;
}

- (void)syncEngine:(id)a3 handleEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(KCSharingSyncController *)self loggingIdentifier];
  v9 = KCSharingLogObject();

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 database];
    [v10 databaseScope];
    v11 = CKDatabaseScopeString();
    *buf = 138412546;
    v178 = v11;
    v179 = 2112;
    v180 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ Sync Engine Handling Event: %@", buf, 0x16u);
  }

  v12 = [v7 type];
  if (v12 <= 5)
  {
    if (v12 > 2)
    {
      if (v12 == 3)
      {
        v28 = [v7 fetchedRecordZoneChangesEvent];
        v167 = 0u;
        v168 = 0u;
        v169 = 0u;
        v170 = 0u;
        v74 = [v28 modifications];
        v75 = [v74 countByEnumeratingWithState:&v167 objects:v192 count:16];
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
                objc_enumerationMutation(v74);
              }

              [(KCSharingSyncController *)self syncEngine:v6 didFetchRecord:*(*(&v167 + 1) + 8 * i)];
            }

            v76 = [v74 countByEnumeratingWithState:&v167 objects:v192 count:16];
          }

          while (v76);
        }

        v165 = 0u;
        v166 = 0u;
        v163 = 0u;
        v164 = 0u;
        v33 = [v28 deletions];
        v79 = [v33 countByEnumeratingWithState:&v163 objects:v191 count:16];
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
                objc_enumerationMutation(v33);
              }

              v83 = *(*(&v163 + 1) + 8 * j);
              v84 = [v83 recordID];
              v85 = [v83 recordType];
              [(KCSharingSyncController *)self syncEngine:v6 recordWithIDWasDeleted:v84 recordType:v85];
            }

            v80 = [v33 countByEnumeratingWithState:&v163 objects:v191 count:16];
          }

          while (v80);
        }
      }

      else if (v12 == 4)
      {
        v28 = [v7 sentDatabaseChangesEvent];
        v159 = 0u;
        v160 = 0u;
        v161 = 0u;
        v162 = 0u;
        v92 = [v28 savedZones];
        v93 = [v92 countByEnumeratingWithState:&v159 objects:v190 count:16];
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
                objc_enumerationMutation(v92);
              }

              [(KCSharingSyncController *)self syncEngine:v6 didSaveRecordZone:*(*(&v159 + 1) + 8 * k)];
            }

            v94 = [v92 countByEnumeratingWithState:&v159 objects:v190 count:16];
          }

          while (v94);
        }

        v157 = 0u;
        v158 = 0u;
        v155 = 0u;
        v156 = 0u;
        v97 = [v28 deletedZoneIDs];
        v98 = [v97 countByEnumeratingWithState:&v155 objects:v189 count:16];
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
                objc_enumerationMutation(v97);
              }

              [(KCSharingSyncController *)self syncEngine:v6 didDeleteRecordZoneWithID:*(*(&v155 + 1) + 8 * m)];
            }

            v99 = [v97 countByEnumeratingWithState:&v155 objects:v189 count:16];
          }

          while (v99);
        }

        v153 = 0u;
        v154 = 0u;
        v151 = 0u;
        v152 = 0u;
        v102 = [v28 failedZoneSaves];
        v103 = [v102 countByEnumeratingWithState:&v151 objects:v188 count:16];
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
                objc_enumerationMutation(v102);
              }

              v107 = *(*(&v151 + 1) + 8 * n);
              v108 = [v107 recordZone];
              v109 = [v107 error];
              [(KCSharingSyncController *)self syncEngine:v6 failedToSaveRecordZone:v108 error:v109];
            }

            v104 = [v102 countByEnumeratingWithState:&v151 objects:v188 count:16];
          }

          while (v104);
        }

        v33 = [v28 failedZoneDeletes];
        v147 = 0u;
        v148 = 0u;
        v149 = 0u;
        v150 = 0u;
        v110 = [v33 countByEnumeratingWithState:&v147 objects:v187 count:16];
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
                objc_enumerationMutation(v33);
              }

              v114 = *(*(&v147 + 1) + 8 * ii);
              v115 = [v33 objectForKeyedSubscript:v114];
              [(KCSharingSyncController *)self syncEngine:v6 failedToDeleteRecordZoneWithID:v114 error:v115];
            }

            v111 = [v33 countByEnumeratingWithState:&v147 objects:v187 count:16];
          }

          while (v111);
        }
      }

      else
      {
        v28 = [v7 sentRecordZoneChangesEvent];
        v143 = 0u;
        v144 = 0u;
        v145 = 0u;
        v146 = 0u;
        v37 = [v28 savedRecords];
        v38 = [v37 countByEnumeratingWithState:&v143 objects:v186 count:16];
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
                objc_enumerationMutation(v37);
              }

              [(KCSharingSyncController *)self syncEngine:v6 didSaveRecord:*(*(&v143 + 1) + 8 * jj)];
            }

            v39 = [v37 countByEnumeratingWithState:&v143 objects:v186 count:16];
          }

          while (v39);
        }

        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        v42 = [v28 deletedRecordIDs];
        v43 = [v42 countByEnumeratingWithState:&v139 objects:v185 count:16];
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
                objc_enumerationMutation(v42);
              }

              [(KCSharingSyncController *)self syncEngine:v6 didDeleteRecordWithID:*(*(&v139 + 1) + 8 * kk)];
            }

            v44 = [v42 countByEnumeratingWithState:&v139 objects:v185 count:16];
          }

          while (v44);
        }

        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        v47 = [v28 failedRecordSaves];
        v48 = [v47 countByEnumeratingWithState:&v135 objects:v184 count:16];
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
                objc_enumerationMutation(v47);
              }

              v52 = *(*(&v135 + 1) + 8 * mm);
              v53 = [v52 record];
              v54 = [v52 error];
              [(KCSharingSyncController *)self syncEngine:v6 failedToSaveRecord:v53 error:v54];
            }

            v49 = [v47 countByEnumeratingWithState:&v135 objects:v184 count:16];
          }

          while (v49);
        }

        v33 = [v28 failedRecordDeletes];
        v131 = 0u;
        v132 = 0u;
        v133 = 0u;
        v134 = 0u;
        v55 = [v33 countByEnumeratingWithState:&v131 objects:v183 count:16];
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
                objc_enumerationMutation(v33);
              }

              v59 = *(*(&v131 + 1) + 8 * nn);
              v60 = [v33 objectForKeyedSubscript:v59];
              [(KCSharingSyncController *)self syncEngine:v6 failedToDeleteRecordWithID:v59 error:v60];
            }

            v56 = [v33 countByEnumeratingWithState:&v131 objects:v183 count:16];
          }

          while (v56);
        }
      }

      goto LABEL_136;
    }

    if (!v12)
    {
      v28 = [v7 stateUpdateEvent];
      v33 = [v28 stateSerialization];
      v176 = 0;
      v66 = [NSKeyedArchiver archivedDataWithRootObject:v33 requiringSecureCoding:1 error:&v176];
      v67 = v176;
      v68 = v67;
      if (!v66 || v67)
      {
        v118 = [(KCSharingSyncController *)self loggingIdentifier];
        v119 = KCSharingLogObject();

        if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
        {
          v123 = [v6 database];
          [v123 databaseScope];
          v124 = CKDatabaseScopeString();
          *buf = 138412290;
          v178 = v124;
          _os_log_error_impl(&_mh_execute_header, v119, OS_LOG_TYPE_ERROR, "Error while archiving %@ sync engine state metadata", buf, 0xCu);
        }
      }

      else
      {
        [(KCSharingSyncController *)self syncEngine:v6 didUpdateMetadata:v66];
      }

      goto LABEL_136;
    }

    if (v12 != 1)
    {
      if (v12 == 2)
      {
        v129 = v7;
        [v7 fetchedDatabaseChangesEvent];
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
              v18 = [(KCSharingSyncController *)self loggingIdentifier];
              v19 = KCSharingLogObject();

              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                v20 = [v6 database];
                [v20 databaseScope];
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
        v22 = [v128 deletions];
        v7 = v129;
        if (![v22 countByEnumeratingWithState:v171 objects:v193 count:16])
        {
          goto LABEL_144;
        }

        v23 = **(&v171[0] + 1);
        if ([**(&v171[0] + 1) reason] == 1)
        {
          v24 = [(KCSharingSyncController *)self loggingIdentifier];
          v25 = KCSharingLogObject();

          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = [v6 database];
            [v26 databaseScope];
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
            v122 = [v23 zoneID];
            [(KCSharingSyncController *)self syncEngine:v6 zoneWithIDWasDeleted:v122];

LABEL_144:
            goto LABEL_138;
          }

          v120 = [(KCSharingSyncController *)self loggingIdentifier];
          v25 = KCSharingLogObject();

          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = [v6 database];
            [v26 databaseScope];
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
          v121 = [(KCSharingSyncController *)self loggingIdentifier];
          v25 = KCSharingLogObject();

          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = [v6 database];
            [v26 databaseScope];
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

    v28 = [v7 accountChangeEvent];
    v33 = [v28 previousUser];
    v86 = [v28 currentUser];
    [(KCSharingSyncController *)self syncEngine:v6 accountChangedFromUserRecordID:v33 toUserRecordID:v86];
    goto LABEL_88;
  }

  if (v12 <= 8)
  {
    if (v12 == 6)
    {
      v28 = [v7 willFetchChangesEvent];
      v33 = [v28 context];
      v69 = [v33 reason];
      v70 = [(KCSharingSyncController *)self loggingIdentifier];
      v71 = KCSharingLogObject();

      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        v72 = [v6 database];
        [v72 databaseScope];
        v73 = CKDatabaseScopeString();
        *buf = 138412546;
        v178 = v73;
        v179 = 2048;
        v180 = v69;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "%@ sync engine will fetch changes due to reason: %ld", buf, 0x16u);
      }

      goto LABEL_136;
    }

    if (v12 == 7)
    {
      v28 = [v7 willFetchRecordZoneChangesEvent];
      v87 = [(KCSharingSyncController *)self loggingIdentifier];
      v88 = KCSharingLogObject();

      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
      {
        v89 = [v6 database];
        [v89 databaseScope];
        v90 = CKDatabaseScopeString();
        v91 = [v28 zoneID];
        *buf = 138412547;
        v178 = v90;
        v179 = 2113;
        v180 = v91;
        _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "%@ sync engine will fetch changes for zone: %{private}@", buf, 0x16u);
      }

      goto LABEL_137;
    }

    v28 = [v7 didFetchRecordZoneChangesEvent];
    v29 = [v28 error];

    if (!v29)
    {
LABEL_137:

      goto LABEL_138;
    }

    v30 = [v28 error];
    IsCode = CKErrorIsCode();

    v32 = [(KCSharingSyncController *)self loggingIdentifier];
    v33 = KCSharingLogObject();

    if (IsCode)
    {
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [v6 database];
        [v34 databaseScope];
        v35 = CKDatabaseScopeString();
        v36 = [v28 zoneID];
        *buf = 138412547;
        v178 = v35;
        v179 = 2113;
        v180 = v36;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%@ sync engine received zone not found error for zone: %{private}@, treating as zone deletion", buf, 0x16u);
      }

      v33 = [v28 zoneID];
      [(KCSharingSyncController *)self syncEngine:v6 zoneWithIDWasDeleted:v33];
      goto LABEL_136;
    }

    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
LABEL_136:

      goto LABEL_137;
    }

    v125 = [v6 database];
    [v125 databaseScope];
    v86 = CKDatabaseScopeString();
    v126 = [v28 error];
    v127 = [v28 zoneID];
    *buf = 138412803;
    v178 = v86;
    v179 = 2114;
    v180 = v126;
    v181 = 2113;
    v182 = v127;
    _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%@ sync engine received error: %{public}@ while fetching zone changes for: %{private}@", buf, 0x20u);

LABEL_88:
    goto LABEL_136;
  }

  if (v12 != 9)
  {
    if (v12 == 10)
    {
      v116 = [(KCSharingSyncController *)self loggingIdentifier];
      v62 = KCSharingLogObject();

      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v63 = [v6 database];
        [v63 databaseScope];
        v64 = CKDatabaseScopeString();
        *buf = 138412290;
        v178 = v64;
        v65 = "%@ sync engine will send changes";
        goto LABEL_123;
      }
    }

    else
    {
      if (v12 != 11)
      {
LABEL_125:
        v117 = [(KCSharingSyncController *)self loggingIdentifier];
        v62 = KCSharingLogObject();

        if (!os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_126;
        }

        v63 = [v6 database];
        [v63 databaseScope];
        v64 = CKDatabaseScopeString();
        *buf = 138412290;
        v178 = v64;
        _os_log_fault_impl(&_mh_execute_header, v62, OS_LOG_TYPE_FAULT, "%@ sync engine received unknown event", buf, 0xCu);
        goto LABEL_124;
      }

      v61 = [(KCSharingSyncController *)self loggingIdentifier];
      v62 = KCSharingLogObject();

      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v63 = [v6 database];
        [v63 databaseScope];
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

  [(KCSharingSyncController *)self syncEngineDidEndFetchingChanges:v6];
LABEL_138:
}

- (BOOL)syncEngine:(id)a3 shouldFetchChangesForZoneID:(id)a4
{
  v5 = a3;
  v6 = [(KCSharingSyncController *)self lockStateTracker];
  v7 = [v6 isLocked];

  v8 = [(KCSharingSyncController *)self loggingIdentifier];
  v9 = KCSharingLogObject();

  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v10)
    {
      v11 = [v5 database];
      [v11 databaseScope];
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
    v11 = [v5 database];
    [v11 databaseScope];
    v12 = CKDatabaseScopeString();
    v15 = 138543362;
    v16 = v12;
    v13 = "Accepting fetch for scope=%{public}@, we believe device is unlocked";
    goto LABEL_6;
  }

  return v7 ^ 1;
}

- (void)syncEngine:(id)a3 accountChangedFromUserRecordID:(id)a4 toUserRecordID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_10001078C();
  v12 = [(KCSharingSyncController *)self loggingIdentifier];
  v13 = KCSharingLogObject();

  if (v11)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v8 database];
      [v14 scope];
      v15 = CKDatabaseScopeString();
      *buf = 138543874;
      v25 = v15;
      v26 = 2114;
      v27 = v9;
      v28 = 2114;
      v29 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Account Change With CloudCore: %{public}@ sync engine received account changed notification: %{public}@ -> %{public}@", buf, 0x20u);
    }

    v16 = [v10 recordName];

    if (!v16)
    {
      v17 = [(KCSharingSyncController *)self cloudCoreUtilities];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10006D73C;
      v22[3] = &unk_100334F20;
      v22[4] = self;
      v23 = v8;
      [v17 invokeDummyOperationOnAccountSignOutWithCompletionHandler:v22];
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v8 database];
      [v18 scope];
      v19 = CKDatabaseScopeString();
      *buf = 138543874;
      v25 = v19;
      v26 = 2114;
      v27 = v9;
      v28 = 2114;
      v29 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ sync engine received account changed notification: %{public}@ -> %{public}@", buf, 0x20u);
    }

    v20 = [v9 recordName];
    v21 = [v10 recordName];
    [(KCSharingSyncController *)self handleAccountChangeFromUserRecordName:v20 toUserRecordName:v21 shouldWipeLocalState:1];
  }
}

- (void)handleAccountChangeFromUserRecordName:(id)a3 toUserRecordName:(id)a4 shouldWipeLocalState:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = self;
  objc_sync_enter(v10);
  v11 = os_transaction_create();
  v12 = [(KCSharingSyncController *)v10 store];
  v39 = 0;
  v13 = [v12 fetchValueForMetadataKey:@"CurrentUserMetadata" error:&v39];
  v14 = v39;

  if (v13 || !v14)
  {
    v17 = [v13 objectForKeyedSubscript:@"currentUserIdentifier"];
    if (([v17 isEqual:v9] & 1) == 0 && v9 | v17)
    {
      if (v5)
      {
        v20 = [(KCSharingSyncController *)v10 store];
        v38 = 0;
        v21 = [v20 wipeWithError:&v38];
        v22 = v38;

        if (v21)
        {
          v23 = [(KCSharingSyncController *)v10 loggingIdentifier];
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
          v25 = [(KCSharingSyncController *)v10 loggingIdentifier];
          v26 = KCSharingLogObject();

          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v41 = v22;
            _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to wipe store with error %@", buf, 0xCu);
          }

          [(KCSharingSyncController *)v10 isLockedError:v22];
        }
      }

      v37 = 0;
      v27 = [(KCSharingSyncController *)v10 updateCurrentUserMetadataForKey:@"currentUserIdentifier" toValue:v9 withError:&v37];
      v19 = v37;
      if (v27)
      {
        v28 = [(KCSharingSyncController *)v10 loggingIdentifier];
        v29 = KCSharingLogObject();

        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Updated the user metadata during the sync engine's account change notification", buf, 2u);
        }
      }

      else
      {
        v30 = [(KCSharingSyncController *)v10 loggingIdentifier];
        v29 = KCSharingLogObject();

        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v41 = v19;
          _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to update currentUserMetadata after wiping store for account changed notification: %{public}@", buf, 0xCu);
        }
      }

      if ([(KCSharingSyncController *)v10 forTesting])
      {
        v31 = [(KCSharingSyncController *)v10 loggingIdentifier];
        v32 = KCSharingLogObject();

        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Testing mode: Skipping user provisioning during the sync engine's account change notification", buf, 2u);
        }
      }

      else if (v9)
      {
        [(KCSharingSyncController *)v10 registerProvisioningActivity];
      }

      else
      {
        [(KCSharingSyncController *)v10 unregisterProvisioningActivity];
      }

      if (sub_10001078C())
      {
        [(KCSharingSyncController *)v10 cancelExistingSyncEngines];
      }

      if (v9)
      {
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_10006DEB0;
        v36[3] = &unk_100335028;
        v36[4] = v10;
        v36[5] = mach_absolute_time();
        [(KCSharingSyncController *)v10 fetchRemoteChangesForZoneIDs:0 completion:v36];
      }

      else
      {
        v33 = [(KCSharingSyncController *)v10 loggingIdentifier];
        v34 = KCSharingLogObject();

        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Skipping Force-fetch remote changes during the sync engine's account change notification", buf, 2u);
        }
      }

      v35 = [(KCSharingSyncController *)v10 xpcListenerDelegate];
      [v35 accountChanged];
    }

    else
    {
      v18 = [(KCSharingSyncController *)v10 loggingIdentifier];
      v19 = KCSharingLogObject();

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v41 = v17;
        v42 = 2114;
        v43 = v9;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Ignored account changed notification: currentUserIdentifer=%{public}@ -> newUserIdentifier=%{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v15 = [(KCSharingSyncController *)v10 loggingIdentifier];
    v16 = KCSharingLogObject();

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v41 = v14;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Ignored account changed notification because we failed to fetch currentUserMetadata: %{public}@", buf, 0xCu);
    }

    [(KCSharingSyncController *)v10 isLockedError:v14];
  }

  objc_sync_exit(v10);
}

- (void)cancelExistingSyncEngines
{
  v3 = [(KCSharingSyncController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006E368;
  block[3] = &unk_100346018;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (id)syncEngine:(id)a3 recordToSaveForRecordID:(id)a4
{
  v5 = a4;
  v6 = [(KCSharingSyncController *)self loggingIdentifier];
  v7 = KCSharingLogObject();

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Requesting record for recordID=%@", buf, 0xCu);
  }

  store = self->_store;
  v15 = 0;
  v9 = [(KCSharingStore *)store fetchOutgoingRecordWithRecordID:v5 error:&v15];
  v10 = v15;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [(KCSharingSyncController *)self loggingIdentifier];
    v13 = KCSharingLogObject();

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v17 = v5;
      v18 = 2112;
      v19 = v10;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to fetch record for recordID=%@ with error=%@", buf, 0x16u);
    }

    [(KCSharingSyncController *)self isLockedError:v10];
  }

  return v9;
}

- (void)syncEngine:(id)a3 didUpdateMetadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(KCSharingSyncController *)self loggingIdentifier];
  v9 = KCSharingLogObject();

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(CKSyncEngine *)v6 database];
    [v10 databaseScope];
    v11 = CKDatabaseScopeString();
    *buf = 138412290;
    v27 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Updating %@ engine metadata", buf, 0xCu);
  }

  if (self->_privateSyncEngine == v6)
  {
    store = self->_store;
    v25 = 0;
    v14 = [(KCSharingStore *)store setValue:v7 forMetadataKey:@"CKSyncEnginePrivateMetadata" error:&v25];
    v15 = v25;
  }

  else
  {
    if (self->_sharedSyncEngine != v6)
    {
      v12 = 0;
      goto LABEL_9;
    }

    v16 = self->_store;
    v24 = 0;
    v14 = [(KCSharingStore *)v16 setValue:v7 forMetadataKey:@"CKSyncEngineSharedMetadata" error:&v24];
    v15 = v24;
  }

  v12 = v15;
  if ((v14 & 1) == 0)
  {
LABEL_9:
    v17 = [(KCSharingSyncController *)self isLockedError:v12];
    v18 = [(KCSharingSyncController *)self loggingIdentifier];
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

- (void)syncEngineDidEndFetchingChanges:(id)a3
{
  v4 = a3;
  v5 = [(KCSharingSyncController *)self loggingIdentifier];
  v6 = KCSharingLogObject();

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished staging incoming changes; applying...", buf, 2u);
  }

  v7 = +[NSMutableArray array];
  v8 = [(KCSharingSyncController *)self store];
  v19 = 0;
  v9 = [v8 mergeWithUpdateInfos:v7 error:&v19];
  v10 = v19;

  if ((v9 & 1) == 0)
  {
    v11 = [(KCSharingSyncController *)self loggingIdentifier];
    v12 = KCSharingLogObject();

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v10;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to apply staged incoming changes with error=%@", buf, 0xCu);
    }

    [(KCSharingSyncController *)self isLockedError:v10 duringFetchForEngine:v4];
  }

  if ([v7 count])
  {
    v13 = +[KCSharingGroupNotificationConnection sharedInstance];
    [v13 groupsUpdatedWithInfos:v7];

    v14 = [(KCSharingSyncController *)self xpcListenerDelegate];
    [v14 groupsUpdated];

    v15 = [(KCSharingSyncController *)self loggingIdentifier];
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
    v17 = [(KCSharingSyncController *)self loggingIdentifier];
    v18 = KCSharingLogObject();

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = @"com.apple.security.kcsharing.groupsupdated";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "No Updates, not posting notification %@", buf, 0xCu);
    }
  }
}

- (void)syncEngine:(id)a3 recordWithIDWasDeleted:(id)a4 recordType:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(KCSharingSyncController *)self loggingIdentifier];
  v10 = KCSharingLogObject();

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v7 database];
    [v11 databaseScope];
    v12 = CKDatabaseScopeString();
    *buf = 138412546;
    v20 = v8;
    v21 = 2114;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Staging incoming record deletion with recordID=%@ for scope=%{public}@", buf, 0x16u);
  }

  store = self->_store;
  v18 = 0;
  v14 = [(KCSharingStore *)store stageIncomingDeletionForRecordID:v8 error:&v18];
  v15 = v18;
  if ((v14 & 1) == 0)
  {
    v16 = [(KCSharingSyncController *)self loggingIdentifier];
    v17 = KCSharingLogObject();

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v20 = v8;
      v21 = 2112;
      v22 = v15;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to stage incoming deletion for recordID=%@ with error=%@", buf, 0x16u);
    }

    [(KCSharingSyncController *)self isLockedError:v15 duringFetchForEngine:v7];
  }
}

- (void)syncEngine:(id)a3 zoneWithIDWasDeleted:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(KCSharingSyncController *)self loggingIdentifier];
  v9 = KCSharingLogObject();

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 database];
    [v10 databaseScope];
    v11 = CKDatabaseScopeString();
    *buf = 138412546;
    v20 = v7;
    v21 = 2114;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Staging incoming share deletion in zoneID=%@ for scope=%{public}@", buf, 0x16u);
  }

  v12 = [[CKRecordID alloc] initWithRecordName:CKRecordNameZoneWideShare zoneID:v7];
  v13 = [(KCSharingSyncController *)self store];
  v18 = 0;
  v14 = [v13 stageIncomingDeletionForRecordID:v12 error:&v18];
  v15 = v18;

  if ((v14 & 1) == 0)
  {
    v16 = [(KCSharingSyncController *)self loggingIdentifier];
    v17 = KCSharingLogObject();

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v20 = v7;
      v21 = 2112;
      v22 = v15;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to stage incoming share deletion in zoneID=%@ with error=%@", buf, 0x16u);
    }

    [(KCSharingSyncController *)self isLockedError:v15 duringFetchForEngine:v6];
  }
}

- (void)syncEngine:(id)a3 didFetchRecord:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(KCSharingSyncController *)self loggingIdentifier];
  v9 = KCSharingLogObject();

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 database];
    [v10 databaseScope];
    v11 = CKDatabaseScopeString();
    *buf = 138412546;
    v19 = v11;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "sync engine %@ did fetch record %@", buf, 0x16u);
  }

  store = self->_store;
  v17 = 0;
  v13 = [(KCSharingStore *)store stageIncomingRecord:v7 error:&v17];
  v14 = v17;
  if ((v13 & 1) == 0)
  {
    v15 = [(KCSharingSyncController *)self loggingIdentifier];
    v16 = KCSharingLogObject();

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v14;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to stage incoming record with error=%@", buf, 0xCu);
    }

    [(KCSharingSyncController *)self isLockedError:v14 duringFetchForEngine:v6];
  }
}

- (void)syncEngine:(id)a3 failedToDeleteRecordWithID:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 recordName];
  v10 = [v9 isEqualToString:CKRecordNameZoneWideShare];

  v11 = [(KCSharingSyncController *)self loggingIdentifier];
  v12 = KCSharingLogObject();

  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
  if (v10)
  {
    if (v13)
    {
      *buf = 138412546;
      v20 = v7;
      v21 = 2112;
      v22 = v8;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Dropping outgoing deletion for shareRecordID=%@ that failed to delete with error=%@", buf, 0x16u);
    }

    v14 = [(KCSharingSyncController *)self store];
    v18 = 0;
    v15 = [v14 dropOutgoingChangeForRecordID:v7 error:&v18];
    v12 = v18;

    if ((v15 & 1) == 0)
    {
      v16 = [(KCSharingSyncController *)self loggingIdentifier];
      v17 = KCSharingLogObject();

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v20 = v7;
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
    v20 = v7;
    v21 = 2112;
    v22 = v8;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to delete record for recordID=%@ with error=%@", buf, 0x16u);
  }
}

- (void)syncEngine:(id)a3 didDeleteRecordWithID:(id)a4
{
  v5 = a4;
  store = self->_store;
  v17 = v5;
  v7 = [NSArray arrayWithObjects:&v17 count:1];
  v14 = 0;
  v8 = [(KCSharingStore *)store updateMirrorWithSavedRecords:0 deletedRecordIDs:v7 error:&v14];
  v9 = v14;

  if ((v8 & 1) == 0)
  {
    v10 = [(KCSharingSyncController *)self loggingIdentifier];
    v11 = KCSharingLogObject();

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v9;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to update mirror with deleted record with error=%@", buf, 0xCu);
    }

    [(KCSharingSyncController *)self isLockedError:v9];
  }

  v12 = [(KCSharingSyncController *)self loggingIdentifier];
  v13 = KCSharingLogObject();

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Deleted record with recordID=%@", buf, 0xCu);
  }
}

- (void)syncEngine:(id)a3 failedToSaveRecord:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 recordID];
  v12 = [v11 recordName];
  v13 = [v12 isEqualToString:CKRecordNameZoneWideShare];

  if (v13)
  {
    v14 = [(KCSharingSyncController *)self loggingIdentifier];
    v15 = KCSharingLogObject();

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v40 = v9;
      v41 = 2112;
      v42 = v10;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Dropping outgoing entry for share=%@ that failed to save with error=%@", buf, 0x16u);
    }

    v16 = [(KCSharingSyncController *)self store];
    v17 = [v9 recordID];
    v38 = 0;
    v18 = [v16 dropOutgoingChangeForRecordID:v17 error:&v38];
    v19 = v38;

    if ((v18 & 1) == 0)
    {
      v20 = [(KCSharingSyncController *)self loggingIdentifier];
      v21 = KCSharingLogObject();

      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v40 = v9;
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
    v22 = [v10 userInfo];
    v19 = [v22 objectForKeyedSubscript:CKRecordChangedErrorServerRecordKey];

    if (v19)
    {
      store = self->_store;
      v37 = 0;
      v24 = [(KCSharingStore *)store stageIncomingRecord:v19 error:&v37];
      v25 = v37;
      if ((v24 & 1) == 0)
      {
        v26 = [(KCSharingSyncController *)self loggingIdentifier];
        v27 = KCSharingLogObject();

        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v40 = v25;
          _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to stage conflicting server record with error=%@", buf, 0xCu);
        }

        [(KCSharingSyncController *)self isLockedError:v25];
      }

      v28 = [(KCSharingSyncController *)self loggingIdentifier];
      v29 = KCSharingLogObject();

      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v40 = v9;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Staged conflicting server record=%@", buf, 0xCu);
      }

      goto LABEL_17;
    }
  }

  IsCode = CKErrorIsCode();
  v31 = [(KCSharingSyncController *)self loggingIdentifier];
  v32 = KCSharingLogObject();

  if (IsCode)
  {
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [v9 recordID];
      *buf = 138412290;
      v40 = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Failed to save recordID=%@ because we missed a deletion, will treat it as deletion now", buf, 0xCu);
    }

    v34 = [v9 recordID];
    [(KCSharingSyncController *)self syncEngine:v8 recordWithIDWasDeleted:v34 recordType:@"unused"];

    [v8 setNeedsToFetchChanges];
  }

  else
  {
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v40 = v9;
      _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Failed to save record=%@", buf, 0xCu);
    }

    v35 = [(KCSharingSyncController *)self loggingIdentifier];
    v36 = KCSharingLogObject();

    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v40 = v10;
      _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, " => error=%@", buf, 0xCu);
    }
  }

LABEL_27:
}

- (void)syncEngine:(id)a3 didSaveRecord:(id)a4
{
  v5 = a4;
  store = self->_store;
  v20 = v5;
  v7 = [NSArray arrayWithObjects:&v20 count:1];
  v15 = 0;
  v8 = [(KCSharingStore *)store updateMirrorWithSavedRecords:v7 deletedRecordIDs:0 error:&v15];
  v9 = v15;

  if ((v8 & 1) == 0)
  {
    v10 = [(KCSharingSyncController *)self loggingIdentifier];
    v11 = KCSharingLogObject();

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = [v5 recordID];
      *buf = 138412546;
      v17 = v14;
      v18 = 2112;
      v19 = v9;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to update mirror with saved record %@ with error=%@", buf, 0x16u);
    }

    [(KCSharingSyncController *)self isLockedError:v9];
  }

  v12 = [(KCSharingSyncController *)self loggingIdentifier];
  v13 = KCSharingLogObject();

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Successfully uploaded record=%@", buf, 0xCu);
  }

  [(KCSharingSyncController *)self sendNewIDSInvitesForRecord:v5];
}

- (id)syncEngine:(id)a3 nextBatchOfRecordsToModifyForZoneIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 database];
  [v8 databaseScope];
  v9 = CKDatabaseScopeString();

  v10 = [(KCSharingSyncController *)self loggingIdentifier];
  v11 = KCSharingLogObject();

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v47 = v9;
    v48 = 2112;
    v49 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Requesting next record batch for scope=%{public}@ in zoneIDs=%@", buf, 0x16u);
  }

  v12 = [v6 database];
  v13 = -[KCSharingSyncController fetchCursorForScope:zoneIDs:](self, "fetchCursorForScope:zoneIDs:", [v12 databaseScope], v7);

  v14 = [v6 database];
  v15 = -[KCSharingSyncController fetchOutgoingChangesWithScope:cursor:](self, "fetchOutgoingChangesWithScope:cursor:", [v14 databaseScope], v13);

  if (v15)
  {
    if ([v15 isEmpty])
    {
      v16 = [(KCSharingSyncController *)self loggingIdentifier];
      v17 = KCSharingLogObject();

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v47 = v9;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Initial change set for scope=%{public}@ was empty; restaging to pick up stragglers", buf, 0xCu);
      }

      v18 = [v6 database];
      -[KCSharingSyncController saveCursor:forScope:](self, "saveCursor:forScope:", 0, [v18 databaseScope]);

      v19 = [(KCSharingSyncController *)self store];
      v45 = 0;
      [v19 stageAllOutgoingChangesWithError:&v45];
      v20 = v45;

      if (v20)
      {
        v21 = [(KCSharingSyncController *)self loggingIdentifier];
        v22 = KCSharingLogObject();

        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v47 = v9;
          v48 = 2112;
          v49 = v20;
          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to restage scope=%{public}@ outgoing changes: %@", buf, 0x16u);
        }

        [(KCSharingSyncController *)self isLockedError:v20];
        v23 = v13;
LABEL_11:

LABEL_12:
        v24 = 0;
        goto LABEL_18;
      }

      v38 = [KCSharingOutgoingChangesetCursor alloc];
      v39 = [v6 database];
      v23 = -[KCSharingOutgoingChangesetCursor initWithDatabaseScope:desiredZoneIDs:](v38, "initWithDatabaseScope:desiredZoneIDs:", [v39 databaseScope], v7);

      v40 = [v6 database];
      v25 = -[KCSharingSyncController fetchOutgoingChangesWithScope:cursor:](self, "fetchOutgoingChangesWithScope:cursor:", [v40 databaseScope], v23);

      if (!v25)
      {
        v20 = 0;
        goto LABEL_12;
      }

      v41 = [v25 isEmpty];
      v42 = [(KCSharingSyncController *)self loggingIdentifier];
      v43 = KCSharingLogObject();

      v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
      if (v41)
      {
        if (v44)
        {
          *buf = 138543618;
          v47 = v9;
          v48 = 2112;
          v49 = v7;
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

    v26 = [v25 cursor];
    v27 = [v6 database];
    -[KCSharingSyncController saveCursor:forScope:](self, "saveCursor:forScope:", v26, [v27 databaseScope]);

    v28 = [(KCSharingSyncController *)self loggingIdentifier];
    v29 = KCSharingLogObject();

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v25 recordsToSave];
      v31 = [v30 count];
      v32 = [v25 recordIDsToDelete];
      v33 = [v32 count];
      *buf = 134218754;
      v47 = v31;
      v48 = 2048;
      v49 = v33;
      v50 = 2114;
      v51 = v9;
      v52 = 2112;
      v53 = v7;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Returning batch of %lu + %lu records to upload in scope=%{public}@, zoneIDs=%@", buf, 0x2Au);
    }

    v34 = [CKSyncEngineBatch alloc];
    v35 = [v25 recordsToSave];
    v36 = [v25 recordIDsToDelete];
    v24 = [v34 initWithRecordsToSave:v35 recordIDsToDelete:v36];

    [v24 setAtomic:0];
    v20 = v25;
  }

  else
  {
    v20 = [v6 database];
    -[KCSharingSyncController saveCursor:forScope:](self, "saveCursor:forScope:", 0, [v20 databaseScope]);
    v24 = 0;
    v23 = v13;
  }

LABEL_18:

  return v24;
}

- (void)syncEngine:(id)a3 failedToDeleteRecordZoneWithID:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(KCSharingSyncController *)self loggingIdentifier];
  v12 = KCSharingLogObject();

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v25 = v9;
    v26 = 2112;
    v27 = v10;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to delete zoneID=%@ from CloudKit with error=%@", buf, 0x16u);
  }

  v13 = [(KCSharingSyncController *)self loggingIdentifier];
  v14 = KCSharingLogObject();

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v8 database];
    [v15 databaseScope];
    v16 = CKDatabaseScopeString();
    *buf = 138412546;
    v25 = v9;
    v26 = 2114;
    v27 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Dropping outgoing share deletion in zoneID=%@ for scope=%{public}@", buf, 0x16u);
  }

  v17 = [[CKRecordID alloc] initWithRecordName:CKRecordNameZoneWideShare zoneID:v9];
  v18 = [(KCSharingSyncController *)self store];
  v23 = 0;
  v19 = [v18 dropOutgoingChangeForRecordID:v17 error:&v23];
  v20 = v23;

  if ((v19 & 1) == 0)
  {
    v21 = [(KCSharingSyncController *)self loggingIdentifier];
    v22 = KCSharingLogObject();

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v25 = v9;
      v26 = 2112;
      v27 = v20;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to drop outgoing share deletion in zoneID=%@ with error=%@", buf, 0x16u);
    }

    [(KCSharingSyncController *)self isLockedError:v20];
  }
}

- (void)syncEngine:(id)a3 didDeleteRecordZoneWithID:(id)a4
{
  v5 = a4;
  v6 = [(KCSharingSyncController *)self store];
  v19 = v5;
  v7 = [NSArray arrayWithObjects:&v19 count:1];
  v14 = 0;
  v8 = [v6 updateMirrorWithDeletedZoneIDs:v7 error:&v14];
  v9 = v14;

  if ((v8 & 1) == 0)
  {
    v10 = [(KCSharingSyncController *)self loggingIdentifier];
    v11 = KCSharingLogObject();

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v16 = v5;
      v17 = 2112;
      v18 = v9;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to delete zoneID=%@ from mirror with error=%@", buf, 0x16u);
    }

    [(KCSharingSyncController *)self isLockedError:v9];
  }

  v12 = [(KCSharingSyncController *)self loggingIdentifier];
  v13 = KCSharingLogObject();

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Deleted zoneID=%@ from mirror", buf, 0xCu);
  }
}

- (id)recordZoneIDsToDeleteForSyncEngine:(id)a3
{
  v4 = a3;
  v5 = [(KCSharingSyncController *)self loggingIdentifier];
  v6 = KCSharingLogObject();

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 database];
    [v7 databaseScope];
    v8 = CKDatabaseScopeString();
    *buf = 138543362;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Requesting zone IDs to delete for scope=%{public}@", buf, 0xCu);
  }

  v9 = [(KCSharingSyncController *)self store];
  v10 = [v4 database];
  v21 = 0;
  v11 = [v9 fetchZoneIDsToDeleteFromDatabaseWithScope:objc_msgSend(v10 error:{"databaseScope"), &v21}];
  v12 = v21;

  v13 = [(KCSharingSyncController *)self loggingIdentifier];
  v14 = KCSharingLogObject();

  if (v11)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v4 database];
      [v15 databaseScope];
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
      v19 = [v4 database];
      [v19 databaseScope];
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

- (void)syncEngine:(id)a3 failedToSaveRecordZone:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(KCSharingSyncController *)self loggingIdentifier];
  v12 = KCSharingLogObject();

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v25 = [v8 database];
    [v25 databaseScope];
    v26 = CKDatabaseScopeString();
    *buf = 138412802;
    v29 = v9;
    v30 = 2114;
    v31 = v26;
    v32 = 2112;
    v33 = v10;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to save zone=%@ for scope=%{public}@ with error=%@", buf, 0x20u);
  }

  v13 = [(KCSharingSyncController *)self loggingIdentifier];
  v14 = KCSharingLogObject();

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v8 database];
    [v15 databaseScope];
    v16 = CKDatabaseScopeString();
    *buf = 138412546;
    v29 = v9;
    v30 = 2114;
    v31 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Dropping outgoing share entry in zone=%@ for scope=%{public}@", buf, 0x16u);
  }

  v17 = [CKRecordID alloc];
  v18 = [v9 zoneID];
  v19 = [v17 initWithRecordName:CKRecordNameZoneWideShare zoneID:v18];

  v20 = [(KCSharingSyncController *)self store];
  v27 = 0;
  v21 = [v20 dropOutgoingChangeForRecordID:v19 error:&v27];
  v22 = v27;

  if ((v21 & 1) == 0)
  {
    v23 = [(KCSharingSyncController *)self loggingIdentifier];
    v24 = KCSharingLogObject();

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v29 = v9;
      v30 = 2112;
      v31 = v22;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to drop outgoing share entry in zone=%@ with error=%@", buf, 0x16u);
    }

    [(KCSharingSyncController *)self isLockedError:v22];
  }
}

- (void)syncEngine:(id)a3 didSaveRecordZone:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(KCSharingSyncController *)self loggingIdentifier];
  v9 = KCSharingLogObject();

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 database];
    [v10 databaseScope];
    v11 = CKDatabaseScopeString();
    v12 = 138412546;
    v13 = v7;
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Successfully saved zone=%@ for scope=%{public}@", &v12, 0x16u);
  }
}

- (id)recordZonesToSaveForSyncEngine:(id)a3
{
  v4 = a3;
  v5 = [(KCSharingSyncController *)self loggingIdentifier];
  v6 = KCSharingLogObject();

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v4 database];
    [v7 databaseScope];
    v8 = CKDatabaseScopeString();
    *buf = 138543362;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Requesting zones to save for scope=%{public}@", buf, 0xCu);
  }

  v9 = [(KCSharingSyncController *)self store];
  v10 = [v4 database];
  v21 = 0;
  v11 = [v9 fetchZonesToSaveToDatabaseWithScope:objc_msgSend(v10 error:{"databaseScope"), &v21}];
  v12 = v21;

  v13 = [(KCSharingSyncController *)self loggingIdentifier];
  v14 = KCSharingLogObject();

  if (v11)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v4 database];
      [v15 databaseScope];
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
      v19 = [v4 database];
      [v19 databaseScope];
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

- (void)lockStateChangeNotification:(BOOL)a3
{
  v3 = a3;
  v5 = [(KCSharingSyncController *)self loggingIdentifier];
  v6 = KCSharingLogObject();

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = &stru_100348050;
    if (v3)
    {
      v7 = @"un";
    }

    *buf = 138543362;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CKKSLockStateTracker notified us of lock state change: %{public}@locked", buf, 0xCu);
  }

  if (!v3)
  {
    v8 = [(KCSharingSyncController *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100071368;
    block[3] = &unk_100346018;
    block[4] = self;
    dispatch_sync(v8, block);
  }
}

- (id)subscriptionIDForDatabase:(id)a3
{
  [a3 databaseScope];
  v3 = CKDatabaseScopeString();
  v4 = [NSString stringWithFormat:@"CKSyncEngineDatabaseSubscription-%@", v3];

  return v4;
}

- (void)verifyGroupsInSyncAndResync:(BOOL)a3 WithCompletion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [(KCSharingSyncController *)self store];
    v48 = 0;
    v8 = [v7 fetchAllSharingGroupsInMirrorWithError:&v48];
    v9 = v48;

    if (!v8 || v9)
    {
      v36 = [(KCSharingSyncController *)self loggingIdentifier];
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
        v6[2](v6, 0, v9);
LABEL_43:

        goto LABEL_44;
      }

      v10 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:35 userInfo:0];
      v6[2](v6, 0, v10);
    }

    else
    {
      v40 = v4;
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
            v17 = [v16 groupID];
            [v10 setObject:v16 forKeyedSubscript:v17];
          }

          v13 = [v11 countByEnumeratingWithState:&v44 objects:v49 count:16];
        }

        while (v13);
      }

      v18 = [(KCSharingSyncController *)self loggingIdentifier];
      v19 = KCSharingLogObject();

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v10 allKeys];
        *buf = 138543362;
        v51 = v20;
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
            v6[2](v6, 0, v27);
          }

          else
          {
            v38 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:34 userInfo:0];
            v6[2](v6, 0, v38);
          }
        }

        else
        {
          v28 = [(KCSharingSyncController *)self haveUnmirroredGroups:v26 forDatabase:@"privateDB"];
          v29 = v26;
          v39 = v28 | [(KCSharingSyncController *)self haveUnmirroredGroups:v26 forDatabase:@"sharedDB"];
          v30 = [(KCSharingSyncController *)self loggingIdentifier];
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

          v33 = [(KCSharingSyncController *)self loggingIdentifier];
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

              [(KCSharingSyncController *)self resyncFromRPC:1 privateRemoteZonesByZoneID:v21 sharedRemoteZonesByZoneID:v22 completion:v6];
            }

            else
            {
              if (v35)
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Verify Groups, Resync is requested, but we are on par with CK, therefore returning", buf, 2u);
              }

              v6[2](v6, 1, 0);
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

            v6[2](v6, v39 ^ 1, 0);
          }
        }

        v8 = v41;
      }

      else
      {
        v6[2](v6, 0, v24);
        v27 = v25;
        v8 = v41;
      }
    }

    goto LABEL_43;
  }

LABEL_44:
}

- (void)verifyGroupsInSyncAndResyncMissingGroupsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(KCSharingSyncController *)self loggingIdentifier];
  v6 = KCSharingLogObject();

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Going for groups verifying, with resync if required", v7, 2u);
  }

  [(KCSharingSyncController *)self verifyGroupsInSyncAndResync:1 WithCompletion:v4];
}

- (void)verifyGroupsInSyncWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(KCSharingSyncController *)self loggingIdentifier];
  v6 = KCSharingLogObject();

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Going for groups verifying, without resync", v7, 2u);
  }

  [(KCSharingSyncController *)self verifyGroupsInSyncAndResync:0 WithCompletion:v4];
}

- (void)resyncFromRPC:(BOOL)a3 privateRemoteZonesByZoneID:(id)a4 sharedRemoteZonesByZoneID:(id)a5 completion:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v13)
  {
    v26 = +[NSAssertionHandler currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"KCSharingSyncController.m" lineNumber:1590 description:@"Not passing a completion handler here is a bug"];
  }

  v14 = [(KCSharingSyncController *)self currentUserMetadataFeatureUsage];
  v15 = [(KCSharingSyncController *)self loggingIdentifier];
  v16 = KCSharingLogObject();

  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v14 != 1)
  {
    if (v17)
    {
      *buf = 134217984;
      v37 = v14;
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
    v21 = v13;
    v32[6] = v12;
    v33 = v21;
    v35 = a3;
    v32[5] = v11;
    v22 = [NSBlockOperation blockOperationWithBlock:v32];
    v23 = [(KCSharingSyncController *)self queue];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100071FBC;
    v27[3] = &unk_100343F68;
    objc_copyWeak(&v30, buf);
    v24 = v21;
    v31 = a3;
    v28 = v22;
    v29 = v24;
    v25 = v22;
    dispatch_async(v23, v27);

    objc_destroyWeak(&v30);
    objc_destroyWeak(&v34);
    objc_destroyWeak(buf);
    goto LABEL_14;
  }

  if (a3)
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

  (*(v13 + 2))(v13, 1, 0);
LABEL_14:
}

- (BOOL)haveUnmirroredGroups:(id)a3 forDatabase:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:v7];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [(KCSharingSyncController *)self loggingIdentifier];
    v11 = KCSharingLogObject();

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = [v6 objectForKeyedSubscript:v7];
      v14 = [v13 allKeys];
      v15 = 138412546;
      v16 = v7;
      v17 = 2114;
      v18 = v14;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Unmirrored %@ CloudKit zones: %{public}@", &v15, 0x16u);
    }
  }

  return v9 != 0;
}

- (id)unmirroredZonesForPrivate:(id)a3 shared:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (!v9 || !v10 || !a5)
  {
    v50 = +[NSAssertionHandler currentHandler];
    [v50 handleFailureInMethod:a2 object:self file:@"KCSharingSyncController.m" lineNumber:1530 description:@"Must supply arguments to this function"];
  }

  v12 = +[NSMutableDictionary dictionary];
  v13 = [v9 mutableCopy];
  v56 = [v11 mutableCopy];
  v14 = [(KCSharingSyncController *)self store];
  v69 = 0;
  v15 = [v14 fetchAllSharingGroupsInMirrorWithError:&v69];
  v16 = v69;

  v55 = v15;
  if (!v15 || v16)
  {
    v45 = [(KCSharingSyncController *)self loggingIdentifier];
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
      *a5 = v16;
    }

    else
    {
      v48 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:35 userInfo:0];
      *a5 = v48;

      v43 = 0;
    }
  }

  else
  {
    v53 = v11;
    v54 = v9;
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
          v25 = [v24 groupID];
          [v17 setObject:v24 forKeyedSubscript:v25];
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
    v9 = v54;
    v16 = 0;
    v13 = v51;
    v44 = v56;
  }

  return v43;
}

- (BOOL)obtainAuthoritativeGroupsForPrivate:(id)a3 shared:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (!v9 || !v10 || !a5)
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
  v16 = v9;
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
    v20 = [(KCSharingSyncController *)self cloudCoreUtilities];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1000746E8;
    v39[3] = &unk_100334F70;
    v39[4] = self;
    p_buf = &buf;
    v40 = v18;
    v41 = v14;
    v42 = v17;
    [v20 withCKDatabases:v39];

    v21 = *(*(&buf + 1) + 40);
    if (v21)
    {
      v22 = a5 == 0;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      *a5 = v21;

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
    v23 = [(KCSharingSyncController *)self privateCloudDB];
    [v23 addOperation:v14];

    dispatch_group_enter(v18);
    v24 = [(KCSharingSyncController *)self sharedCloudDB];
    [v24 addOperation:v17];
  }

  v25 = dispatch_time(0, 30000000000);
  if (dispatch_group_wait(v18, v25))
  {
    v26 = [(KCSharingSyncController *)self loggingIdentifier];
    v27 = KCSharingLogObject();

    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to complete CloudKit group fetch before deadline", &buf, 2u);
    }

    [NSError errorWithDomain:@"KCSharingErrorDomain" code:36 userInfo:0];
    *a5 = v28 = 0;
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
    *a5 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:34 userInfo:v31];

    v32 = [(KCSharingSyncController *)self loggingIdentifier];
    v33 = KCSharingLogObject();

    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v37 = *a5;
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v37;
      _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Failed to fetch all known CloudKit groups: %@", &buf, 0xCu);
    }

    goto LABEL_25;
  }

  v35 = [(KCSharingSyncController *)self loggingIdentifier];
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

- (BOOL)saveCursor:(id)a3 forScope:(int64_t)a4
{
  v5 = a3;
  v6 = CKDatabaseScopeString();
  v7 = [NSString stringWithFormat:@"%@-%@", @"outgoingChangesetCursor", v6];

  if (v5)
  {
    v25 = 0;
    v8 = [NSKeyedArchiver archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v25];
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
      v12 = [(KCSharingSyncController *)self loggingIdentifier];
      v13 = KCSharingLogObject();

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = CKDatabaseScopeString();
        *buf = 138412802;
        v27 = v5;
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
    v20 = [(KCSharingSyncController *)self loggingIdentifier];
    v13 = KCSharingLogObject();

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = CKDatabaseScopeString();
      *buf = 138412802;
      v27 = v5;
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

  v22 = [(KCSharingSyncController *)self loggingIdentifier];
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

- (id)fetchCursorForScope:(int64_t)a3 zoneIDs:(id)a4
{
  v6 = a4;
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
    v18 = [(KCSharingSyncController *)self loggingIdentifier];
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

      v20 = [[KCSharingOutgoingChangesetCursor alloc] initWithDatabaseScope:a3 desiredZoneIDs:v6];
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
      v14 = [(KCSharingSyncController *)self loggingIdentifier];
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
      v22 = [(KCSharingSyncController *)self loggingIdentifier];
      v15 = KCSharingLogObject();

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No stored cursor found, creating and returning fresh one", buf, 2u);
      }
    }

    v21 = [[KCSharingOutgoingChangesetCursor alloc] initWithDatabaseScope:a3 desiredZoneIDs:v6];
  }

  return v21;
}

- (id)fetchOutgoingChangesWithScope:(int64_t)a3 cursor:(id)a4
{
  store = self->_store;
  v12 = 0;
  v6 = [(KCSharingStore *)store fetchOutgoingChangesWithCursor:a4 maxChangeCount:100 maxBatchSizeInBytes:1572864 error:&v12];
  v7 = v12;
  if (!v6)
  {
    v8 = [(KCSharingSyncController *)self loggingIdentifier];
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

- (void)wipe:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(KCSharingSyncController *)self loggingIdentifier];
  v8 = KCSharingLogObject();

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v17) = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "🚨 WIPING KCSHARING DATA. Include cloud data: %{BOOL}d", buf, 8u);
  }

  if (v4)
  {
    v9 = [(KCSharingSyncController *)self loggingIdentifier];
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
    v13 = [(KCSharingSyncController *)self store];
    v15 = 0;
    [v13 wipeWithError:&v15];
    v12 = v15;

    v14 = [(KCSharingSyncController *)self loggingIdentifier];
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

  v6[2](v6, v12);
}

- (void)sendNewIDSInvitesForRecord:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = sub_1000314F8(v4);
    v6 = [(KCSharingSyncController *)self loggingIdentifier];
    v7 = KCSharingLogObject();

    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v12 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Asking ksmd to send new invites if needed for group %@", buf, 0xCu);
      }

      v8 = [(KCSharingSyncController *)self messagingdConnection];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10007549C;
      v9[3] = &unk_100334F20;
      v9[4] = self;
      v10 = v5;
      [v8 sendNewInvitesForGroup:v10 completion:v9];
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

- (void)_onQueueFetchRemoteChangesForZoneIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x3032000000;
  v48[3] = sub_100074124;
  v48[4] = sub_100074134;
  v49 = +[NSMutableArray array];
  v8 = dispatch_group_create();
  v9 = [(KCSharingSyncController *)self loggingIdentifier];
  v10 = KCSharingLogObject();

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Force-fetching remote changes for zoneIDs=%{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v53 = 0x3032000000;
  v54 = sub_100074124;
  v55 = sub_100074134;
  v56 = 0;
  v11 = [(KCSharingSyncController *)self privateSyncEngine];
  if (!v11 || ([(KCSharingSyncController *)self sharedSyncEngine], v12 = objc_claimAutoreleasedReturnValue(), v13 = v12 == 0, v12, v11, v13))
  {
    v14 = [(KCSharingSyncController *)self loggingIdentifier];
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
    v22 = [(KCSharingSyncController *)self privateSyncEngine];
    [v22 setNeedsToFetchChanges];

    v23 = [(KCSharingSyncController *)self privateSyncEngine];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100075BD4;
    v44[3] = &unk_100334EF8;
    v46 = v48;
    v44[4] = self;
    v24 = v8;
    v45 = v24;
    [v23 fetchChangesWithCompletionHandler:v44];

    dispatch_group_enter(v24);
    v25 = [(KCSharingSyncController *)self sharedSyncEngine];
    [v25 setNeedsToFetchChanges];

    if (sub_10004DE94())
    {
      if ([v6 count])
      {
        v26 = [NSSet setWithArray:v6];
      }

      else
      {
        v26 = 0;
      }

      v28 = [(KCSharingSyncController *)self sharedSyncEngine];
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
      [v28 fetchChangesWithOptions:v31 completionHandler:v41];
    }

    else
    {
      v27 = [(KCSharingSyncController *)self sharedSyncEngine];
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_100075D6C;
      v38[3] = &unk_100334EF8;
      v40 = v48;
      v38[4] = self;
      v39 = v24;
      [v27 fetchChangesForZoneIDs:v6 completionHandler:v38];
    }
  }

  v32 = [(KCSharingSyncController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100075E38;
  block[3] = &unk_100334E80;
  p_buf = &buf;
  v37 = v48;
  block[4] = self;
  v35 = v7;
  v33 = v7;
  dispatch_group_notify(v8, v32, block);

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(v48, 8);
}

- (void)fetchRemoteChangesForZoneIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (sub_10001078C())
  {
    objc_initWeak(&location, self);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000762D4;
    v19[3] = &unk_100343EC8;
    objc_copyWeak(&v22, &location);
    v21 = v7;
    v20 = v6;
    v8 = [NSBlockOperation blockOperationWithBlock:v19];
    v9 = [(KCSharingSyncController *)self lockStateTracker];
    v10 = [v9 unlockDependency];
    [v8 addNullableDependency:v10];

    if (self->_initializeEnginesOperation)
    {
      v11 = [(KCSharingSyncController *)self loggingIdentifier];
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
    v14 = [(KCSharingSyncController *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000763E0;
    block[3] = &unk_100343D18;
    block[4] = self;
    v16 = v6;
    v17 = v7;
    dispatch_sync(v14, block);
  }
}

- (void)saveStagedOutgoingChangesWithCompletion:(id)a3
{
  v4 = a3;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = sub_100074124;
  v26[4] = sub_100074134;
  v27 = +[NSMutableArray array];
  v5 = dispatch_group_create();
  v6 = [(KCSharingSyncController *)self loggingIdentifier];
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
    v12 = [(KCSharingSyncController *)self sharedSyncEngine];
    v13 = v23;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10007694C;
    v23[3] = &unk_100346F60;
    v23[5] = v26;
    v23[4] = v11;
    [v12 sendChangesWithCompletionHandler:v23];
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
    v12 = [(KCSharingSyncController *)self sharedSyncEngine];
    v13 = v21;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100076A84;
    v21[3] = &unk_100346F60;
    v21[5] = v26;
    v21[4] = v15;
    [v12 modifyPendingChangesWithCompletionHandler:v21];
  }

  v16 = [(KCSharingSyncController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100076B20;
  block[3] = &unk_100334ED0;
  v19 = v4;
  v20 = v26;
  block[4] = self;
  v17 = v4;
  dispatch_group_notify(v5, v16, block);

  _Block_object_dispose(v26, 8);
}

- (void)stageAllOutgoingChangesWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100076E04;
  v7[3] = &unk_1003445C0;
  objc_copyWeak(&v9, &location);
  v5 = v4;
  v8 = v5;
  v6 = [NSBlockOperation blockOperationWithBlock:v7];
  [(NSOperationQueue *)self->_operationQueue addOperation:v6];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (BOOL)stageOutgoingShares:(id)a3 deletionsForShares:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(KCSharingSyncController *)self store];
  v11 = [v10 stageOutgoingShares:v9 deletionsForShares:v8 error:a5];

  if (v11 && sub_10004DE94())
  {
    [(KCSharingSyncController *)self makeStagedOutgoingDatabaseChangesAsPendingSyncEngineChanges];
  }

  return v11;
}

- (void)makeStagedOutgoingDatabaseChangesAsPendingSyncEngineChanges
{
  v3 = [(KCSharingSyncController *)self privateSyncEngine];
  v4 = [(KCSharingSyncController *)self getOutgoingStagedDatabaseChangesForSyncEngine:v3];

  v5 = [(KCSharingSyncController *)self privateSyncEngine];
  v6 = [v5 state];
  [v6 addPendingDatabaseChanges:v4];

  v7 = [(KCSharingSyncController *)self sharedSyncEngine];
  v8 = [(KCSharingSyncController *)self getOutgoingStagedDatabaseChangesForSyncEngine:v7];

  v9 = [(KCSharingSyncController *)self sharedSyncEngine];
  v10 = [v9 state];
  [v10 addPendingDatabaseChanges:v8];

  if ([v4 count])
  {
    v11 = [(KCSharingSyncController *)self loggingIdentifier];
    v12 = KCSharingLogObject();

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Setting pending untracked changes to true in private sync engine", buf, 2u);
    }

    v13 = [(KCSharingSyncController *)self privateSyncEngine];
    v14 = [v13 state];
    [v14 setHasPendingUntrackedChanges:1];
  }

  if ([v8 count])
  {
    v15 = [(KCSharingSyncController *)self loggingIdentifier];
    v16 = KCSharingLogObject();

    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Setting pending untracked changes to true in shared sync engine", v19, 2u);
    }

    v17 = [(KCSharingSyncController *)self sharedSyncEngine];
    v18 = [v17 state];
    [v18 setHasPendingUntrackedChanges:1];
  }
}

- (id)getOutgoingStagedDatabaseChangesForSyncEngine:(id)a3
{
  v4 = a3;
  v5 = [(KCSharingSyncController *)self loggingIdentifier];
  v6 = KCSharingLogObject();

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 database];
    [v7 databaseScope];
    v8 = CKDatabaseScopeString();
    *buf = 138543362;
    v38 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Adding Staged changes to State for: %{public}@", buf, 0xCu);
  }

  v9 = objc_alloc_init(NSMutableArray);
  v10 = [(KCSharingSyncController *)self recordZonesToSaveForSyncEngine:v4];
  v11 = [(KCSharingSyncController *)self recordZoneIDsToDeleteForSyncEngine:v4];
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

- (void)performMaintenanceWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(KCSharingSyncController *)self loggingIdentifier];
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
  v7 = v4;
  v17 = v7;
  v8 = [NSBlockOperation blockOperationWithBlock:v16];
  v9 = [(KCSharingSyncController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100077AEC;
  block[3] = &unk_100343EC8;
  objc_copyWeak(&v15, buf);
  v13 = v8;
  v14 = v7;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
}

- (void)saveAllOutgoingChangesWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100078250;
  v6[3] = &unk_100337E48;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(KCSharingSyncController *)self stageAllOutgoingChangesWithCompletion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)processDatabaseModifications
{
  v3 = [(KCSharingSyncController *)self loggingIdentifier];
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

- (void)fetchCurrentUserIdentifierWithReply:(id)a3
{
  v4 = a3;
  v5 = [(KCSharingSyncController *)self currentUserMetadata];
  v6 = [v5 objectForKeyedSubscript:@"currentUserIdentifier"];

  if (v6)
  {
    v7 = [(KCSharingSyncController *)self loggingIdentifier];
    v8 = KCSharingLogObject();

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Fetched cached current user identifier from store", buf, 2u);
    }

    v4[2](v4, v6, 0);
  }

  else
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100078638;
    v9[3] = &unk_100334EA8;
    v9[4] = self;
    v10 = v4;
    [(KCSharingSyncController *)self fetchCurrentUserIdentifierFromCloudKitWithReply:v9];
  }
}

- (void)fetchCurrentUserIdentifierFromCloudKitWithReply:(id)a3
{
  v4 = a3;
  v5 = [(KCSharingSyncController *)self loggingIdentifier];
  v6 = KCSharingLogObject();

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Fetching current user identifier from CloudKit...", buf, 2u);
  }

  if (sub_10001078C())
  {
    v7 = [(KCSharingSyncController *)self cloudCoreUtilities];
    v15 = 0;
    v8 = [v7 acquiredSessionUserRecordIDAndReturnError:&v15];
    v9 = v15;

    v10 = [(KCSharingSyncController *)self loggingIdentifier];
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

    v4[2](v4, v8, v9);
  }

  else
  {
    v12 = [(KCSharingSyncController *)self container];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000789F4;
    v13[3] = &unk_100334EA8;
    v13[4] = self;
    v14 = v4;
    [v12 fetchUserRecordIDWithCompletionHandler:v13];
  }
}

- (void)ensureCurrentUserProvisionedWithCompletion:(id)a3
{
  v4 = a3;
  if ([(KCSharingSyncController *)self isCurrentUserProvisioned]&& [(KCSharingSyncController *)self isCurrentUserIdentifierAvailable])
  {
    v5 = [(KCSharingSyncController *)self loggingIdentifier];
    v6 = KCSharingLogObject();

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "The user's already provisioned.", buf, 2u);
    }

    v4[2](v4, 0);
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
    v7 = [(KCSharingSyncController *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100078E54;
    block[3] = &unk_100334E58;
    block[4] = self;
    block[5] = v15;
    block[6] = buf;
    block[7] = v17;
    dispatch_sync(v7, block);

    v8 = *(v20 + 5);
    v9 = [(KCSharingSyncController *)self queue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000793F4;
    v10[3] = &unk_100334E80;
    v12 = v15;
    v13 = v17;
    v10[4] = self;
    v11 = v4;
    dispatch_group_notify(v8, v9, v10);

    _Block_object_dispose(v15, 8);
    _Block_object_dispose(v17, 8);

    _Block_object_dispose(buf, 8);
  }
}

- (void)handleProvisioningActivity:(id)a3 isRetry:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = os_transaction_create();
  if (xpc_activity_get_state(v6) == 4 || xpc_activity_set_state(v6, 4))
  {
    objc_initWeak(location, self);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100079BC8;
    v16[3] = &unk_100334E30;
    objc_copyWeak(&v19, location);
    v17 = v6;
    v18 = v7;
    v20 = v4;
    v8 = [NSBlockOperation blockOperationWithBlock:v16];
    if (self->_initializeEnginesOperation)
    {
      v9 = [(KCSharingSyncController *)self loggingIdentifier];
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
    if (v4)
    {
      v12 = [(CKKSNearFutureScheduler *)self->_nearFutureScheduler operationDependency];
      [v8 addNullableDependency:v12];

      [(CKKSNearFutureScheduler *)self->_nearFutureScheduler trigger];
    }

    [(NSOperationQueue *)self->_operationQueue addOperation:v8];

    objc_destroyWeak(&v19);
    objc_destroyWeak(location);
  }

  else
  {
    v13 = [(KCSharingSyncController *)self loggingIdentifier];
    v14 = KCSharingLogObject();

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 134217984;
      *(location + 4) = xpc_activity_get_state(v6);
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

- (void)preflightWithCompletion:(id)a3 delay:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(KCSharingSyncController *)self loggingIdentifier];
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
  v23 = self;
  objc_copyWeak(&v25, buf);
  v9 = v6;
  v24 = v9;
  v10 = [NSBlockOperation blockOperationWithBlock:&v19];
  if (sub_10001078C())
  {
    v11 = [(KCSharingSyncController *)self lockStateTracker];
    v12 = [v11 unlockDependency];
    [v10 addNullableDependency:v12];
  }

  if (self->_initializeEnginesOperation)
  {
    v13 = [(KCSharingSyncController *)self loggingIdentifier];
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
    v16 = [(KCSharingSyncController *)self loggingIdentifier];
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
  if (v4)
  {
    v17 = [(CKKSNearFutureScheduler *)self->_nearFutureScheduler operationDependency];
    [v10 addNullableDependency:v17];

    [(CKKSNearFutureScheduler *)self->_nearFutureScheduler trigger];
  }

  [(NSOperationQueue *)self->_operationQueue addOperation:v10, v18, v19, v20, v21, v22, v23];

  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);
}

- (BOOL)isLockedError:(id)a3 duringFetchForEngine:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && (-[KCSharingSyncController lockStateTracker](self, "lockStateTracker"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isLockedError:v6], v8, v9))
  {
    objc_initWeak(&location, self);
    v10 = [(KCSharingSyncController *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007B074;
    block[3] = &unk_100344D38;
    objc_copyWeak(&v15, &location);
    v14 = v7;
    dispatch_async(v10, block);

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
  v3 = [(KCSharingSyncController *)self queue];
  dispatch_assert_queue_V2(v3);

  operationQueue = self->_operationQueue;
  v5 = [(KCSharingSyncController *)self loggingIdentifier];
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
      v8 = [(KCSharingSyncController *)self loggingIdentifier];
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

    v12 = [(KCSharingSyncController *)self loggingIdentifier];
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

- (void)CKSyncEnginesInitOperationWithDelay:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = self->_operationQueue == 0;
  v8 = [(KCSharingSyncController *)self loggingIdentifier];
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
    v31 = v6;
    v10 = [NSBlockOperation blockOperationWithBlock:v30];
    v11 = self->_initializeEnginesOperation;
    v12 = v11;
    if (v11 && [(NSBlockOperation *)v11 isPending])
    {
      v13 = [(KCSharingSyncController *)self loggingIdentifier];
      v14 = KCSharingLogObject();

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not setting up engine reinit: have extant operation", v29, 2u);
      }

      goto LABEL_22;
    }

    v15 = [(KCSharingSyncController *)self loggingIdentifier];
    v16 = KCSharingLogObject();

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Setting up engine reinit operation to run at unlock time", v29, 2u);
    }

    v17 = [(KCSharingSyncController *)self lockStateTracker];
    v18 = [v17 unlockDependency];
    [v10 addNullableDependency:v18];

    if (v4)
    {
      v19 = [(CKKSNearFutureScheduler *)self->_nearFutureScheduler operationDependency];
      [v10 addNullableDependency:v19];

      [(CKKSNearFutureScheduler *)self->_nearFutureScheduler trigger];
    }

    v20 = [(KCSharingSyncController *)self loggingIdentifier];
    v21 = KCSharingLogObject();

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Making CKSyncEngine Init op outstanding", v29, 2u);
    }

    objc_storeStrong(&self->_initializeEnginesOperation, v10);
    if (sub_10001078C())
    {
      v14 = [(KCSharingSyncController *)self cloudCoreUtilities];
      if (![v14 haveAcquiredSession])
      {
LABEL_22:

        goto LABEL_27;
      }

      v22 = [(KCSharingSyncController *)self hasOutStandingSyncEngineInitializeInitOpAdded];

      if (!v22)
      {
LABEL_27:

        objc_destroyWeak(&v32);
        objc_destroyWeak(&buf);
        goto LABEL_28;
      }

      v23 = [(KCSharingSyncController *)self loggingIdentifier];
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
      v28 = [(KCSharingSyncController *)self loggingIdentifier];
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

  (*(v6 + 2))(v6, v27);
LABEL_28:
}

- (void)initSyncEnginesWithPrivateDB:(id)a3 sharedDB:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!sub_10001078C() || (-[KCSharingSyncController cloudCoreUtilities](self, "cloudCoreUtilities"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 haveAcquiredSession], v11, v9) && v8 && (v12 & 1) != 0)
  {
    v13 = [(KCSharingSyncController *)self loggingIdentifier];
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
        v17 = [(KCSharingSyncController *)self loggingIdentifier];
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
      if (!v8 && v28)
      {
        v29 = [(KCSharingSyncController *)self loggingIdentifier];
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

        v10[2](v10, v32);
        goto LABEL_16;
      }

      v16 = [[CKSyncEngineConfiguration alloc] initWithDatabase:v8 stateSerialization:empty delegate:self];
      v59 = 0;
      v34 = [(KCSharingSyncController *)self fetchStoredSyncEngineStateWithMetadataKey:@"CKSyncEngineSharedMetadata" withError:&v59];
      v36 = v59;
      if (v36)
      {
        v40 = [(KCSharingSyncController *)self loggingIdentifier];
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
      if (!v9 && v49)
      {
        v50 = [(KCSharingSyncController *)self loggingIdentifier];
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

        v10[2](v10, v53);
        goto LABEL_31;
      }

      v36 = [[CKSyncEngineConfiguration alloc] initWithDatabase:v9 stateSerialization:v34 delegate:self];
      v54 = [(KCSharingSyncController *)self loggingIdentifier];
      v55 = KCSharingLogObject();

      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Init'ed SyncEngines using Public APIs", buf, 2u);
      }
    }

    else
    {
      v20 = [(KCSharingSyncController *)self loggingIdentifier];
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
        v24 = [(KCSharingSyncController *)self loggingIdentifier];
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
        v10[2](v10, v16);
LABEL_16:

        goto LABEL_45;
      }

      v16 = [[CKSyncEngineConfiguration alloc] initWithDatabase:v8 dataSource:self metadata:empty];
      v33 = self->_store;
      v56 = 0;
      v34 = [(KCSharingStore *)v33 fetchValueForMetadataKey:@"CKSyncEngineSharedMetadata" error:&v56];
      v35 = v56;
      if (v35)
      {
        v36 = v35;
        v37 = [(KCSharingSyncController *)self loggingIdentifier];
        v38 = KCSharingLogObject();

        if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
LABEL_30:

          [(KCSharingSyncController *)self isLockedError:v36];
          v10[2](v10, v36);
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

      v36 = [[CKSyncEngineConfiguration alloc] initWithDatabase:v9 dataSource:self metadata:v34];
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
      v43 = [(KCSharingSyncController *)self loggingIdentifier];
      v44 = KCSharingLogObject();

      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Sync engine reinit: private engine needs to fetch changes", buf, 2u);
      }

      v45 = [(KCSharingSyncController *)self privateSyncEngine];
      [v45 setNeedsToFetchChanges];

      self->_receivedPrivatePushesWhileLocked = 0;
    }

    if (self->_receivedSharedPushesWhileLocked)
    {
      v46 = [(KCSharingSyncController *)self loggingIdentifier];
      v47 = KCSharingLogObject();

      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Sync engine reinit: shared engine needs to fetch changes", buf, 2u);
      }

      v48 = [(KCSharingSyncController *)self sharedSyncEngine];
      [v48 setNeedsToFetchChanges];

      self->_receivedSharedPushesWhileLocked = 0;
    }

    v10[2](v10, 0);
    goto LABEL_44;
  }

  v25 = [(KCSharingSyncController *)self loggingIdentifier];
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

  v10[2](v10, v16);
LABEL_45:
}

- (void)acquireCloudCoreSessionWithContainerID:(id)a3 applicationID:(id)a4 encryptionService:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self->_operationQueue == 0;
  v15 = [(KCSharingSyncController *)self loggingIdentifier];
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

    v13[2](v13, v19);
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
    v21 = v10;
    v22 = v11;
    v23 = v12;
    v24 = v13;
    v17 = [NSBlockOperation blockOperationWithBlock:v20];
    [(NSOperationQueue *)self->_operationQueue addOperation:v17];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&buf);
  }
}

- (id)fetchStoredSyncEngineStateWithMetadataKey:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = [(KCSharingSyncController *)self loggingIdentifier];
  v8 = KCSharingLogObject();

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v36 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetching stored %{public}@", buf, 0xCu);
  }

  v9 = [(KCSharingSyncController *)self store];
  v34 = 0;
  v10 = [v9 fetchValueForMetadataKey:v6 error:&v34];
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
        v18 = [(KCSharingSyncController *)self loggingIdentifier];
        v19 = KCSharingLogObject();

        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v36 = v6;
          v37 = 2114;
          v38 = v17;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to unarchive %{public}@ with error: %{public}@", buf, 0x16u);
        }

        v32 = 0;
        v20 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v32];
        v21 = v32;
        v22 = [(KCSharingSyncController *)self loggingIdentifier];
        v23 = KCSharingLogObject();

        if (v21)
        {
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v36 = v6;
            v37 = 2114;
            v38 = v21;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to unarchive old way also %{public}@ with error: %{public}@", buf, 0x16u);
          }

          if (a4)
          {
            v24 = v21;
            *a4 = v21;
          }

          v15 = 0;
          goto LABEL_21;
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v36 = v6;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Falling back and updating %{public}@ sync engine metadata from old style to new style", buf, 0xCu);
        }

        v31 = 0;
        v26 = [(KCSharingSyncController *)self storeOldSyncEngineState:v10 asNewSyncEngineStateWithMetadataKey:v6 withError:&v31];
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
        if (a4 && (v29 & 1) == 0)
        {
          v30 = v17;
          *a4 = v17;
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

  v12 = [(KCSharingSyncController *)self loggingIdentifier];
  v13 = KCSharingLogObject();

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v36 = v6;
    v37 = 2114;
    v38 = v11;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to fetch %{public}@ with error: %{public}@", buf, 0x16u);
  }

  if (a4)
  {
    v14 = v11;
    v15 = 0;
    *a4 = v11;
  }

  else
  {
    v15 = 0;
  }

LABEL_22:

  return v15;
}

- (id)storeOldSyncEngineState:(id)a3 asNewSyncEngineStateWithMetadataKey:(id)a4 withError:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(KCSharingSyncController *)self loggingIdentifier];
  v11 = KCSharingLogObject();

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Storing Old engine data for new %@sync engine", buf, 0xCu);
  }

  v12 = [[CKSyncEngineStateSerialization alloc] initWithDeprecatedData:v9];
  v29 = 0;
  v13 = [NSKeyedArchiver archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v29];
  v14 = v29;
  v15 = v14;
  if (!v13 || v14)
  {
    v21 = [(KCSharingSyncController *)self loggingIdentifier];
    v22 = KCSharingLogObject();

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v31 = v8;
      v32 = 2114;
      v33 = v15;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Error while archiving old engine state -> new engine state serilization for %@sync engine error: %{public}@", buf, 0x16u);
    }

    if (a5)
    {
      v23 = v15;
      v20 = 0;
      *a5 = v15;
      goto LABEL_17;
    }
  }

  else
  {
    store = self->_store;
    v28 = 0;
    v17 = [(KCSharingStore *)store setValue:v13 forMetadataKey:v8 error:&v28];
    v18 = v28;
    v19 = v18;
    if (v17)
    {

      v20 = v12;
      goto LABEL_17;
    }

    v24 = [(KCSharingSyncController *)self loggingIdentifier];
    v25 = KCSharingLogObject();

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v31 = v19;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to store converted old engine -> new engine metadata with error: %{public}@", buf, 0xCu);
    }

    if (a5)
    {
      v26 = v19;
      *a5 = v19;
    }
  }

  v20 = 0;
LABEL_17:

  return v20;
}

- (void)setupCKNotificationListenersWithPrivateDB:(id)a3 sharedDB:(id)a4
{
  v6 = a3;
  v7 = a4;
  forTesting = self->_forTesting;
  v9 = [(KCSharingSyncController *)self loggingIdentifier];
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

    if (v6 && v7)
    {
      objc_initWeak(buf, self);
      v12 = [[CKNotificationListener alloc] initWithMachServiceName:@"com.apple.securityd.aps"];
      notificationListener = self->_notificationListener;
      self->_notificationListener = v12;

      v14 = self->_notificationListener;
      v15 = [(KCSharingSyncController *)self subscriptionIDForDatabase:v6];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10007E18C;
      v22[3] = &unk_100334D70;
      objc_copyWeak(&v23, buf);
      [(CKNotificationListener *)v14 registerForSubscriptionWithID:v15 inDatabase:v7 handler:v22];

      v16 = self->_notificationListener;
      v17 = [(KCSharingSyncController *)self subscriptionIDForDatabase:v7];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10007E228;
      v20[3] = &unk_100334D70;
      objc_copyWeak(&v21, buf);
      [(CKNotificationListener *)v16 registerForSubscriptionWithID:v17 inDatabase:v7 handler:v20];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&v23);
      objc_destroyWeak(buf);
    }

    else
    {
      v18 = [(KCSharingSyncController *)self loggingIdentifier];
      v19 = KCSharingLogObject();

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf[0]) = 0;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failing to setup CKNotification Listeners, DBs should not be nil", buf, 2u);
      }
    }
  }
}

- (KCSharingSyncController)initWithStore:(id)a3 container:(id)a4 privateSyncEngine:(id)a5 sharedSyncEngine:(id)a6 messagingdConnection:(id)a7 lockStateTracker:(id)a8 forTesting:(BOOL)a9
{
  v16 = a3;
  v17 = a4;
  v54 = a5;
  v53 = a6;
  v52 = a7;
  v18 = a8;
  v60.receiver = self;
  v60.super_class = KCSharingSyncController;
  v19 = [(KCSharingSyncController *)&v60 init];
  if (!v19)
  {
LABEL_23:
    v39 = v19;
    goto LABEL_24;
  }

  v50 = v17;
  v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v21 = dispatch_queue_create("com.apple.security.keychain.sharing.KCSharingSyncController", v20);
  queue = v19->_queue;
  v19->_queue = v21;

  objc_storeStrong(&v19->_store, a3);
  objc_storeStrong(&v19->_container, a4);
  objc_storeStrong(&v19->_privateSyncEngine, a5);
  objc_storeStrong(&v19->_sharedSyncEngine, a6);
  objc_storeStrong(&v19->_messagingdConnection, a7);
  v23 = [v16 getLoggingIdentifer];
  loggingIdentifier = v19->_loggingIdentifier;
  v19->_loggingIdentifier = v23;

  v19->_forTesting = a9;
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

    v32 = [(KCSharingSyncController *)v19 loggingIdentifier];
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

  if (v17 || a9)
  {
    v40 = [v17 privateCloudDatabase];
    [(KCSharingSyncController *)v19 setPrivateCloudDB:v40];

    v41 = [v17 sharedCloudDatabase];
    [(KCSharingSyncController *)v19 setSharedCloudDB:v41];

    v42 = [(KCSharingSyncController *)v19 loggingIdentifier];
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

    if (v18)
    {
      v43 = v18;
    }

    else
    {
      v43 = +[CKKSLockStateTracker globalTracker];
    }

    lockStateTracker = v19->_lockStateTracker;
    v19->_lockStateTracker = v43;

    if (!a9)
    {
      v45 = [[CKKSNearFutureScheduler alloc] initWithName:@"KCSharingScheduler" delay:10000000000 keepProcessAlive:0 dependencyDescriptionCode:0 block:&stru_100334D28];
      nearFutureScheduler = v19->_nearFutureScheduler;
      v19->_nearFutureScheduler = v45;

      if ((sub_10001078C() & 1) == 0)
      {
        v47 = [(KCSharingSyncController *)v19 privateCloudDB];
        v48 = [(KCSharingSyncController *)v19 sharedCloudDB];
        [(KCSharingSyncController *)v19 setupCKNotificationListenersWithPrivateDB:v47 sharedDB:v48];
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
    v17 = v51;
    goto LABEL_23;
  }

  v37 = [(KCSharingSyncController *)v19 loggingIdentifier];
  v38 = KCSharingLogObject();

  if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_fault_impl(&_mh_execute_header, v38, OS_LOG_TYPE_FAULT, "Doesn't have container init yet, Returning from sync controller init", buf, 2u);
  }

  v39 = 0;
  v17 = 0;
LABEL_24:

  return v39;
}

- (KCSharingSyncController)init
{
  v3 = sub_10001078C();
  v4 = [(KCSharingSyncController *)self loggingIdentifier];
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