@interface ICCloudContext
+ (BOOL)_performLocalObjectMergeWithEligibleObjectIDs:(id)a3 cloudKitAccount:(id)a4 managedObjectContext:(id)a5 error:(id *)a6;
+ (BOOL)haveZoneIDsInAccountZoneIDs:(id)a3;
+ (BOOL)isNonUploadingTransactionAuthor:(id)a3;
+ (BOOL)isZoneConfigurations:(id)a3 subsetOfZoneConfigurations:(id)a4;
+ (id)_cloudObjectClassesByRecordType;
+ (id)_recordTypesToSortChildrenAfterFetch;
+ (id)_systemBuildVersion;
+ (id)allCloudObjectIDsOfClassesPassingTest:(id)a3 inContext:(id)a4;
+ (id)allDirtyCloudObjectIDsInContext:(id)a3;
+ (id)appZoneID;
+ (id)base64EncodedHMACStringFromString:(id)a3 usingSalt:(id)a4;
+ (id)deduplicatedRecordsForCloudObjects:(id)a3;
+ (id)errorForDisabledCloudSyncing;
+ (id)errorFromErrors:(id)a3;
+ (id)errorFromOperations:(id)a3;
+ (id)errorsFromError:(id)a3;
+ (id)filterNonUploadableChangedManagedObjectIDs:(id)a3 cloudKitStoreIdentifiers:(id)a4;
+ (id)metadataZoneID;
+ (id)migrationZoneID;
+ (id)objectsByAccount:(id)a3;
+ (id)objectsByDatabaseScope:(id)a3;
+ (id)sortedRecords:(id)a3;
+ (id)userRecordNameForContainer:(id)a3;
+ (id)zoneIDsFromZoneInfos:(id)a3;
+ (id)zoneInfosFromZoneIDs:(id)a3;
+ (void)addRunExclusivelyOperations:(id)a3 operationQueue:(id)a4;
+ (void)batchRecordsToSave:(id)a3 delete:(id)a4 maxRecordCountPerBatch:(unint64_t)a5 maxRecordSizePerBatch:(unint64_t)a6 withBlock:(id)a7;
+ (void)errorAndPromptToFileRadarWithICTap2RadarTypeTooManyOperationsInOperationQueueIfNecessaryForOperationQueue:(id)a3;
+ (void)faultAndPromptToFileRadarWithICTap2RadarType:(unint64_t)a3 title:(id)a4 description:(id)a5 logMessage:(id)a6;
+ (void)promptToFileRadarWithICTap2RadarType:(unint64_t)a3 title:(id)a4 description:(id)a5 logMessage:(id)a6 additionalFaultMessage:(BOOL)a7;
+ (void)recursivelyFixCrossZoneRelationship:(id)a3 perObjectHandler:(id)a4;
+ (void)saveAndFaultIfFailWithContext:(id)a3 shouldTakeServerAsTruth:(BOOL)a4 logDescription:(id)a5;
- (BOOL)_generateAndSavePersonIDSaltIfNeeded:(id)a3;
- (BOOL)_isCloudKitAccountAvailableWithManagedObjectContext:(id)a3 requireActive:(BOOL)a4;
- (BOOL)_isRecognizedCloudObjectClass:(id)a3;
- (BOOL)canRetryImmediatelyAfterError:(id)a3;
- (BOOL)hasPendingOperations;
- (BOOL)isCloudKitAccountAvailableRequiringActive:(BOOL)a3;
- (BOOL)isFetchingAllRecordZones;
- (BOOL)notificationContainsCloudContextInternalChangesOnly:(id)a3;
- (BOOL)partialError:(id)a3 containsErrorCode:(int64_t)a4;
- (BOOL)retryPerformingCloudSchemaCatchUpSync;
- (BOOL)shouldIgnoreErrorForBackoffTimer:(id)a3 operationType:(id)a4;
- (BOOL)shouldPollCloudKitWhenLaunchingAndBackgrounding;
- (ICCloudContext)initWithStoreController:(id)a3;
- (ICCloudContextDelegate)cloudContextDelegate;
- (NSDictionary)accountStatusNumberByAccountID;
- (NSDictionary)cloudObjectClassesByRecordType;
- (NSDictionary)containersByAccountID;
- (double)timeIntervalToRetryAfterFromError:(id)a3;
- (id)_existingCloudDirtyToken;
- (id)_markCloudAsDirtyAndReturnToken;
- (id)accountIDForDatabase:(id)a3;
- (id)accountStatusByAccountIDDescription;
- (id)allDirtyCloudObjectIDsInContext:(id)a3;
- (id)allZoneIDs;
- (id)batchFetchHelperWithContext:(id)a3;
- (id)cloudKitAccountsInContext:(id)a3;
- (id)configurationDump;
- (id)containerAccountIDsDescription;
- (id)containerForAccountID:(id)a3;
- (id)contextForAccountID:(id)a3 withBatchFetchHelper:(BOOL)a4;
- (id)debug_replaceWithSimulatedCKErrorIfSetWithOriginalError:(id)a3;
- (id)existingCloudObjectForRecord:(id)a3 accountID:(id)a4 context:(id)a5;
- (id)existingCloudObjectForRecordID:(id)a3 recordType:(id)a4 accountID:(id)a5 context:(id)a6;
- (id)fetchAndCompletionOperationWithDeleteShareObjects:(id)a3 accountID:(id)a4 dependencyOperations:(id)a5 completionHandler:(id)a6;
- (id)fetchUserRecordOperationWithAccountID:(id)a3 completionHandler:(id)a4;
- (id)fetchUserRecordOperationWithContainer:(id)a3 completionHandler:(id)a4;
- (id)internalContextWithBatchFetchHelper;
- (id)mergeLocalObjectsFetchContextAffectingStoreOf:(id)a3;
- (id)mergeLocalObjectsWriteContextAffectingStoreOf:(id)a3;
- (id)newBackgroundContext;
- (id)newCloudObjectForRecord:(id)a3 accountID:(id)a4 context:(id)a5;
- (id)newOperationToFetchRecordZoneChangesWithZoneConfigurations:(id)a3 database:(id)a4 reason:(id)a5;
- (id)newPlaceholderObjectForRecordID:(id)a3 account:(id)a4 recordType:(id)a5 context:(id)a6;
- (id)operationToFetchDatabaseChangesForDatabase:(id)a3 cloudSchemaCatchUpSyncContextMap:(id)a4 completionHandler:(id)a5;
- (id)operationToFetchRecordIDs:(id)a3 database:(id)a4;
- (id)operationToFetchRecordZoneChangesForZoneIDs:(id)a3 database:(id)a4 reason:(id)a5 ignoreServerChangeTokens:(BOOL)a6;
- (id)operationToModifyRecordsToSave:(id)a3 delete:(id)a4 rootRecordIDsByShareID:(id)a5 database:(id)a6;
- (id)operationToSaveZonesForZoneIDs:(id)a3 accountID:(id)a4;
- (id)operationToSaveZonesIfNecessaryForAccountID:(id)a3;
- (id)operationsToFetchRecordIDs:(id)a3 database:(id)a4;
- (id)operationsToFetchRecordIDs:(id)a3 operationGroupName:(id)a4 accountID:(id)a5;
- (id)operationsToFetchRecordZoneChangesForZoneIDs:(id)a3 accountID:(id)a4 reason:(id)a5 cloudSchemaCatchUpSyncContextMap:(id)a6;
- (id)operationsToModifyRecordsForCloudObjectsToSave:(id)a3 delete:(id)a4 deleteShares:(id)a5 operationGroupName:(id)a6 addDependencies:(BOOL)a7 accountID:(id)a8;
- (id)operationsToModifyRecordsToSave:(id)a3 delete:(id)a4 rootRecordIDsByShareID:(id)a5 database:(id)a6;
- (id)primaryCloudKitAccountInContext:(id)a3;
- (id)readinessLoggingDescription;
- (id)serverChangeTokenContext;
- (id)serverChangeTokenForChangedZonesInDatabase:(id)a3 accountID:(id)a4;
- (id)serverChangeTokenForRecordZoneID:(id)a3 databaseScope:(int64_t)a4 accountID:(id)a5;
- (id)setUpCloudSchemaCatchUpSyncContextMapWithAccountIDs:(id)a3 syncReason:(id)a4 outBackgroundScheduledCatchUpSyncContextMap:(id)a5;
- (id)status;
- (id)subscriptionForDatabase:(id)a3;
- (id)unitTest_accountStatusNumberForAccountID:(id)a3;
- (id)unsafeUntilSystemReady_hashedAccountPersonIDForAccount:(id)a3 usingSalt:(id)a4;
- (id)waiterID;
- (void)_accountsDidEnableOrDisable;
- (void)_addOperationToProcessBlockWithOperationName:(id)a3 processBlock:(id)a4;
- (void)_clearCloudDirtyForToken:(id)a3;
- (void)_handleDatabaseNotification:(id)a3 database:(id)a4 accountID:(id)a5 completionHandler:(id)a6;
- (void)_performSortingChildrenObjectsAfterFetchingInBlockOfManagedObjectContext:(id)a3 fetchHasFullyCompleted:(BOOL)a4 accountID:(id)a5;
- (void)_processCloudObjectIDs:(id)a3 operationQueue:(id)a4 completionHandler:(id)a5;
- (void)_processFetchedCloudObjectsWithObjectIDs:(id)a3 usingBlock:(id)a4;
- (void)_processFetchedCloudObjectsWithObjectIDs:(id)a3 withManagedObjectContext:(id)a4 usingBlock:(id)a5;
- (void)_scheduleRetryMergeLocalObjects;
- (void)_syncWithReason:(id)a3 completionHandler:(id)a4;
- (void)accountsDidDisable;
- (void)accountsDidEnable;
- (void)addCallbackBlocksToModifyRecordsOperation:(id)a3 rootRecordIDsByShareID:(id)a4;
- (void)addDependenciesForModifyRecordsOperation:(id)a3;
- (void)addFetchOperationsForRecordIDs:(id)a3 accountID:(id)a4 operationGroupName:(id)a5 runExclusively:(BOOL)a6 completionHandler:(id)a7;
- (void)addOperationToProcessObjectsWithOperationName:(id)a3 syncReason:(id)a4 completionHandler:(id)a5;
- (void)addOperationsToFetchRecordZoneChangesForAccountZoneIDs:(id)a3 reason:(id)a4 cloudSchemaCatchUpSyncContextMap:(id)a5 completionHandler:(id)a6;
- (void)addProcessLocalObjectsOperationToMergeLocalObjectsWithCompletionHandler:(id)a3;
- (void)addStateHandler;
- (void)addStateHandlerWithName:(const char *)a3 stateBlock:(id)a4;
- (void)addSubscribedSubscriptionIDs:(id)a3 accountID:(id)a4;
- (void)adjustAPSNotificationDebouncerInterval;
- (void)adjustAPSNotificationDebouncerIntervalWithMigrationState:(BOOL)a3;
- (void)applicationWillEnterForeground;
- (void)bootstrapSyncingOnLaunchIfSystemReady;
- (void)cancelEverythingWithCompletionHandler:(id)a3;
- (void)checkForLongLivedOperations;
- (void)clearContainers;
- (void)clearPendingActivity;
- (void)clearRetryCountForOperationType:(id)a3;
- (void)clearSubscribedSubscriptionIDs;
- (void)clearZoneFetchState;
- (void)cloudKitAccountChanged:(id)a3;
- (void)configureOperation:(id)a3;
- (void)connection:(id)a3 didFailToSendOutgoingMessage:(id)a4 error:(id)a5;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)contextDidSave:(id)a3;
- (void)dealloc;
- (void)debug_retryAccountZoneIDsNeedingToBeSavedWithZoneID:(id)a3 accountID:(id)a4;
- (void)deleteAllApplicationDataFromServerWithAccountID:(id)a3 completion:(id)a4;
- (void)deleteAllServerChangeTokens;
- (void)deleteServerChangeTokenForChangedZonesInDatabase:(id)a3 accountID:(id)a4;
- (void)deleteServerChangeTokenForRecordZoneID:(id)a3 databaseScope:(int64_t)a4 accountID:(id)a5;
- (void)deleteSharesForObjects:(id)a3 accountID:(id)a4 completionHandler:(id)a5;
- (void)deleteSharesForObjects:(id)a3 completionHandler:(id)a4;
- (void)didCompleteCloudSchemaCatchUpSyncWithContextMap:(id)a3 error:(id)a4 syncTypeLabel:(id)a5 debugLogLabel:(id)a6;
- (void)didCompleteInitializeAllAccounts:(id)a3;
- (void)didFetchShare:(id)a3 accountID:(id)a4 context:(id)a5;
- (void)disableCloudSyncingIfCurrentVersionNotSuppported;
- (void)errorAndPromptToFileRadarWithICTap2RadarTypeTooManyOperationsInOperationQueueIfNecessary;
- (void)fetchDatabaseChangesForDatabases:(id)a3 reason:(id)a4 cloudSchemaCatchUpSyncContextMap:(id)a5 completionHandler:(id)a6;
- (void)fetchDatabaseChangesOperation:(id)a3 changeTokenUpdated:(id)a4 accountID:(id)a5;
- (void)fetchDatabaseChangesOperation:(id)a3 finishedWithServerChangeToken:(id)a4 accountID:(id)a5 error:(id)a6 completionHandler:(id)a7;
- (void)fetchDatabaseChangesOperation:(id)a3 recordZoneWithIDChanged:(id)a4 accountID:(id)a5;
- (void)fetchDatabaseChangesOperation:(id)a3 recordZoneWithIDWasDeleted:(id)a4 accountID:(id)a5;
- (void)fetchDatabaseChangesWithReason:(id)a3 cloudSchemaCatchUpSyncContextMap:(id)a4 completionHandler:(id)a5;
- (void)fetchOperation:(id)a3 didCompleteWithRecordsByRecordID:(id)a4 error:(id)a5;
- (void)fetchOperation:(id)a3 progressChangedWithRecordID:(id)a4 progress:(double)a5;
- (void)fetchOperation:(id)a3 recordWasFetchedWithRecordID:(id)a4 record:(id)a5 error:(id)a6;
- (void)fetchRecordIDs:(id)a3 accountID:(id)a4 operationGroupName:(id)a5 runExclusively:(BOOL)a6 completionHandler:(id)a7;
- (void)fetchRecordZoneChangesForAccountZoneIDs:(id)a3 reason:(id)a4 cloudSchemaCatchUpSyncContextMap:(id)a5 completionHandler:(id)a6;
- (void)fetchRecordZoneChangesForZoneIDs:(id)a3 accountID:(id)a4 reason:(id)a5 completionHandler:(id)a6;
- (void)fetchRecordZoneChangesOperation:(id)a3 completedFetchForZoneID:(id)a4 serverChangeToken:(id)a5 batchFetchHelper:(id)a6 error:(id)a7;
- (void)fetchRecordZoneChangesOperation:(id)a3 recordWasChangedWithRecordID:(id)a4 record:(id)a5 error:(id)a6 context:(id)a7;
- (void)fetchRecordZoneChangesOperation:(id)a3 recordWasDeletedWithRecordID:(id)a4 recordType:(id)a5 context:(id)a6;
- (void)fetchRecordZoneChangesOperation:(id)a3 zoneID:(id)a4 accountID:(id)a5 changeTokenUpdated:(id)a6 batchFetchHelper:(id)a7;
- (void)fetchRecordZoneChangesOperationDidComplete:(id)a3 error:(id)a4;
- (void)fetchRecordZoneChangesWithReason:(id)a3 cloudSchemaCatchUpSyncContextMap:(id)a4 completionHandler:(id)a5;
- (void)fetchSubscriptionsForDatabase:(id)a3 completionHandler:(id)a4;
- (void)fetchUserRecordWithAccountID:(id)a3 completionHandler:(id)a4;
- (void)fetchUserRecordWithContainer:(id)a3 completionHandler:(id)a4;
- (void)finishOperationsForRecordID:(id)a3 completionHandler:(id)a4;
- (void)firePollingSyncRequest;
- (void)handleDatabaseNotification:(id)a3 completionHandler:(id)a4;
- (void)handleGenericPartialFailuresForError:(id)a3 operation:(id)a4;
- (void)handleNotification:(id)a3 completionHandler:(id)a4;
- (void)handleUnrecoverableError;
- (void)incrementOrClearRetryCountForOperationType:(id)a3 error:(id)a4;
- (void)incrementRetryCountForOperationType:(id)a3;
- (void)loadSubscribedSubscriptionIDs;
- (void)loadZoneFetchState;
- (void)migrationStateDidChange:(BOOL)a3 didFinishMigration:(BOOL)a4;
- (void)modifyRecordsOperation:(id)a3 didCompleteWithError:(id)a4;
- (void)observePrimaryCloudKitAccountPersonIDSaltChanges;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)operationQueueFetchUserRecordWithAccountID:(id)a3 completionHandler:(id)a4;
- (void)performAndWaitContextWithBatchFetchHelperForAccountID:(id)a3 block:(id)a4;
- (void)pq_unregisterForBuddy;
- (void)primaryCloudKitAccountPersonIDSaltDidFailToSetWithError:(id)a3;
- (void)primaryCloudKitAccountPersonIDSaltDidSetWithSalt:(id)a3;
- (void)printOperationQueue;
- (void)processAllDirtyCloudObjectsWithSyncReason:(id)a3 completionHandler:(id)a4;
- (void)processLocalObjectMergeEligibleObjectIDs:(id)a3 operationQueue:(id)a4 completionHandler:(id)a5;
- (void)processObjectIDs:(id)a3 operationQueue:(id)a4 completionHandler:(id)a5;
- (void)processPendingCloudObjectsWithOperationName:(id)a3;
- (void)processPendingCloudObjectsWithOperationName:(id)a3 syncReason:(id)a4 completionHandler:(id)a5;
- (void)reachabilityChanged:(id)a3;
- (void)receivedZoneNotFound:(id)a3 operation:(id)a4;
- (void)registerForBuddy;
- (void)removeStaleAccountStatus;
- (void)removeStaleFetchDatabaseRetryMetadata;
- (void)retryOperationsIfNecessary;
- (void)retryProcessingCloudObjects;
- (void)saveServerChangeToken:(id)a3 forChangedZonesInDatabase:(id)a4 accountID:(id)a5;
- (void)saveServerChangeToken:(id)a3 forRecordZoneID:(id)a4 databaseScope:(int64_t)a5 accountID:(id)a6;
- (void)saveSubscriptionsForDatabase:(id)a3 completionHandler:(id)a4;
- (void)saveZoneFetchState;
- (void)setAccountStatus:(int64_t)a3 forAccountID:(id)a4;
- (void)setAccountStatusNumberByAccountID:(id)a3;
- (void)setupAPSConnection;
- (void)sharedZoneWasDeleted:(id)a3 accountID:(id)a4;
- (void)startRetryTimerIfNecessaryWithError:(id)a3;
- (void)syncWithReason:(id)a3 discretionary:(BOOL)a4 completionHandler:(id)a5;
- (void)unobservePrimaryCloudKitAccountPersonIDSaltChanges;
- (void)updateAccountStatusWithCompletionHandler:(id)a3;
- (void)updateCloudContextStateWithSyncOption:(int64_t)a3 syncReason:(id)a4 withCompletionHandler:(id)a5;
- (void)updateConfiguration;
- (void)updateSelectorDelayers;
- (void)updateSubscriptionsWithCompletionHandler:(id)a3;
- (void)updateUserRecordWithAccountID:(id)a3 updateFunction:(id)a4 completionHandler:(id)a5;
- (void)validateAccountZoneIDsNeedingFetchChanges;
@end

@implementation ICCloudContext

- (BOOL)hasPendingOperations
{
  v2 = [(ICCloudContext *)self operationQueue];
  v3 = [v2 operationCount] != 0;

  return v3;
}

- (NSDictionary)accountStatusNumberByAccountID
{
  v2 = [(ICCloudContext *)self icUserDefaults];
  v3 = [v2 userDefaults];
  v4 = [v3 dictionaryForKey:@"CloudKitAccountStatus"];

  return v4;
}

- (NSDictionary)containersByAccountID
{
  if ([(ICCloudContext *)self supportsCloudKitSyncing]&& [(ICCloudContext *)self isSystemAvailableForSyncing]&& [(ICCloudContext *)self hasPassedBuddy])
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10006CD0C;
    v6[3] = &unk_1008D9990;
    v6[4] = self;
    v3 = objc_retainBlock(v6);
    os_unfair_lock_lock(&self->_containersByAccountIDLock);
    (v3[2])(v3);
    os_unfair_lock_unlock(&self->_containersByAccountIDLock);
    v4 = self->_containersByAccountID;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (ICCloudContext)initWithStoreController:(id)a3
{
  v5 = a3;
  v74.receiver = self;
  v74.super_class = ICCloudContext;
  v6 = [(ICCloudContext *)&v74 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storeController, a3);
    v8 = objc_opt_new();
    [(ICCloudContext *)v7 setIcUserDefaults:v8];

    v9 = objc_opt_new();
    [(ICCloudContext *)v7 setOperationQueue:v9];

    v10 = [(ICCloudContext *)v7 operationQueue];
    [v10 setMaxConcurrentOperationCount:10];

    v11 = +[ICCloudContext processingQueue];
    [(ICCloudContext *)v7 setProcessingQueue:v11];

    v12 = +[NSMutableSet set];
    [(ICCloudContext *)v7 setObjectIDsToProcess:v12];

    v13 = +[NSMutableDictionary dictionary];
    [(ICCloudContext *)v7 setAccountZoneIDsNeedingToBeSaved:v13];

    v14 = +[NSMutableSet set];
    [(ICCloudContext *)v7 setObjectIDsToRetry:v14];

    v15 = +[NSMutableDictionary dictionary];
    [(ICCloudContext *)v7 setRetryCountsByOperationType:v15];

    v16 = [[ICCloudContextSyncMetrics alloc] initWithSyncReason:@"InitSyncMetrics"];
    [(ICCloudContext *)v7 setLastSyncMetrics:v16];

    [(ICCloudContext *)v7 setHasRetryTimer:0];
    v17 = +[NSMutableDictionary dictionary];
    [(ICCloudContext *)v7 setDatabaseScopeStringsNeedingRetryFetchChangesByAccountID:v17];

    [(ICCloudContext *)v7 setWasInternetReachable:+[ICUtilities isInternetReachable]];
    v18 = [(ICCloudContext *)v7 icUserDefaults];
    v19 = [v18 userDefaults];
    [v19 doubleForKey:@"CloudKitLastSyncSinceInternetReachable"];
    [(ICCloudContext *)v7 setLastSyncSinceInternetReachable:?];

    v20 = +[ICSyncSettings sharedSettings];
    v21 = [v20 hasOptions:16];

    v22 = [v5 supportsSyncingToCloudKit];
    v23 = +[REMLog cloudkit];
    v24 = v21 & v22;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v76 = v21 & v22;
      v77 = 2048;
      v78 = v21;
      v79 = 2048;
      v80 = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "ICCloudContext INIT {supportsCloudKitSyncing: %ld, syncSettingsSupportsCloudKitSyncing: %ld, storeControllerSupportsCloudKitSyncing: %ld}", buf, 0x20u);
    }

    [(ICCloudContext *)v7 setSupportsCloudKitSyncing:v21 & v22];
    [(ICCloudContext *)v7 setShouldUnregisterBuddy:1];
    [(ICCloudContext *)v7 setDisabled:v24 ^ 1u];
    [(ICCloudContext *)v7 setDisabledInternal:0];
    [(ICCloudContext *)v7 setQualityOfService:17];
    [(ICCloudContext *)v7 setTimeoutIntervalForResource:0.0];
    v25 = +[ICSyncSettings sharedSettings];
    -[ICCloudContext setFetchingEnabled:](v7, "setFetchingEnabled:", [v25 hasOptions:0x80000]);

    [(ICCloudContext *)v7 setDidCheckForLongLivedOperations:0];
    v26 = [_TtC7remindd37RDDebouncerWithCKDatabaseNotification alloc];
    v27 = [(ICCloudContext *)v7 processingQueue];
    v28 = [(RDDebouncerWithCKDatabaseNotification *)v26 initWithDebouncingInterval:v27 queue:&stru_1008D9AD8 handler:15.0];
    [(ICCloudContext *)v7 setApsNotificationHandlingDebouncer:v28];

    v29 = +[ICCloudConfiguration sharedConfiguration];
    [v29 accountChangedDebouncerInterval];
    v31 = v30;

    v32 = [_TtC7remindd21RDDebouncerWithNumber alloc];
    v33 = [(ICCloudContext *)v7 processingQueue];
    v34 = [(RDDebouncerWithNumber *)v32 initWithDebouncingInterval:v33 queue:&stru_1008D9AF8 handler:v31];
    [(ICCloudContext *)v7 setAccountChangedNotificationHandlingDebouncer:v34];

    [(ICCloudContext *)v7 loadZoneFetchState];
    v35 = +[NSNotificationCenter defaultCenter];
    v36 = [v5 persistentStoreCoordinator];
    [v35 addObserver:v7 selector:"contextDidSave:" name:NSManagedObjectContextDidSaveObjectIDsNotification object:v36];

    v37 = +[NSNotificationCenter defaultCenter];
    [v37 addObserver:v7 selector:"contextDidSave:" name:@"RDStoreControllerDidRemoveAccountStoresNotification" object:v5];

    v38 = +[NSMutableDictionary dictionary];
    [(ICCloudContext *)v7 setRecognizedCloudObjectClasses:v38];

    if (v24)
    {
      v39 = [v5 appleAccountUtilities];
      if (v39)
      {
        [(ICCloudContext *)v7 setAppleAccountUtilities:v39];
      }

      else
      {
        v40 = +[REMAppleAccountUtilities sharedInstance];
        [(ICCloudContext *)v7 setAppleAccountUtilities:v40];
      }

      v7->_containersByAccountIDLock._os_unfair_lock_opaque = 0;
      v41 = +[NSNotificationCenter defaultCenter];
      v42 = kReachabilityChangedNotification;
      v43 = +[ICReachability sharedReachabilityForInternetConnection];
      [v41 addObserver:v7 selector:"reachabilityChanged:" name:v42 object:v43];

      v44 = +[NSNotificationCenter defaultCenter];
      [v44 addObserver:v7 selector:"cloudKitAccountChanged:" name:CKAccountChangedNotification object:0];

      objc_initWeak(buf, v7);
      [(ICCloudContext *)v7 setIsSystemAvailableForSyncing:0];
      v45 = +[REMLog cloudkit];
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *v73 = 0;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "os_transaction INIT {name: com.apple.remindd.cloudkit.launch.pending.DADSystemAvailabilityChecker}", v73, 2u);
      }

      v46 = os_transaction_create();
      v47 = dispatch_get_global_queue(17, 0);
      v48 = [(ICCloudContext *)v7 processingQueue];
      v70[0] = _NSConcreteStackBlock;
      v70[1] = 3221225472;
      v70[2] = sub_10006B4B8;
      v70[3] = &unk_1008D9B20;
      objc_copyWeak(&v72, buf);
      v49 = v46;
      v71 = v49;
      [DADSystemAvailabilityChecker waitForSyncEngineSystemAvailabilityBlockingQueue:v47 completionQueue:v48 completionBlock:v70];

      [(ICCloudContext *)v7 setPendingAccountInitializerCompleteOnLaunch:1];
      v50 = +[REMLog cloudkit];
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *v73 = 0;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "os_transaction INIT {name: com.apple.remindd.cloudkit.launch.pending.RDAccountInitializerDidCompleteInitializeAllAccountsObserver}", v73, 2u);
      }

      v51 = os_transaction_create();
      v52 = [RDAccountInitializerDidCompleteInitializeAllAccountsObserver alloc];
      v67[0] = _NSConcreteStackBlock;
      v67[1] = 3221225472;
      v67[2] = sub_10006B5B4;
      v67[3] = &unk_1008D9B48;
      objc_copyWeak(&v69, buf);
      v53 = v51;
      v68 = v53;
      v54 = [(ICCloudContext *)v7 processingQueue];
      v55 = [(RDAccountInitializerDidCompleteInitializeAllAccountsObserver *)v52 initWithHandler:v67 queue:v54];
      [(ICCloudContext *)v7 setAccountInitializerDidCompleteOnLaunchObserver:v55];

      v56 = +[REMLog cloudkit];
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *v73 = 0;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "ICCC: Observing RDAccountInitializer.DidCompleteInitializeAllAccountsNotification on daemon launch before we enable syncing.", v73, 2u);
      }

      v57 = [(ICCloudContext *)v7 accountInitializerDidCompleteOnLaunchObserver];
      [v57 observe];

      v58 = +[NSNotificationCenter defaultCenter];
      [v58 addObserver:v7 selector:"updateConfiguration" name:@"ICCloudConfigurationChangedNotification" object:0];

      v59 = +[NSNotificationCenter defaultCenter];
      [v59 addObserver:v7 selector:"updateSelectorDelayers" name:@"ICCloudBatchIntervalDidChangeNotification" object:0];

      v60 = +[NSNotificationCenter defaultCenter];
      [v60 addObserver:v7 selector:"handleUnrecoverableError" name:@"ICCloudContextUnrecoverableErrorNotification" object:0];

      v61 = [(ICCloudContext *)v7 operationQueue];
      [v61 addObserver:v7 forKeyPath:@"operationCount" options:3 context:off_100934E50];

      [(ICCloudContext *)v7 setDidAddObservers:1];
      v62 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10006B6D4;
      block[3] = &unk_1008D9990;
      v63 = v7;
      v66 = v63;
      dispatch_async(v62, block);

      v63->_accountInitializerDidCompleteOnAccountsDidChangeObserverLock._os_unfair_lock_opaque = 0;
      objc_destroyWeak(&v69);

      objc_destroyWeak(&v72);
      objc_destroyWeak(buf);
    }

    else
    {
      [(ICCloudContext *)v7 setDidAddObservers:0];
      [(ICCloudContext *)v7 setIsSystemAvailableForSyncing:1];
    }

    [(ICCloudContext *)v7 addStateHandler];
    [(ICCloudContext *)v7 setBuddyStateObserver:0];
    [(ICCloudContext *)v7 setHasPassedBuddy:+[DADBuddyStateObserver hasPassedBuddy]];
    if (![(ICCloudContext *)v7 hasPassedBuddy])
    {
      [(ICCloudContext *)v7 registerForBuddy];
    }
  }

  return v7;
}

- (void)bootstrapSyncingOnLaunchIfSystemReady
{
  if ([(ICCloudContext *)self isSystemAvailableForSyncing]&& ![(ICCloudContext *)self pendingAccountInitializerCompleteOnLaunch])
  {
    objc_initWeak(&buf, self);
    v4 = dispatch_time(0, 2000000000);
    v5 = [(ICCloudContext *)self processingQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006B888;
    block[3] = &unk_1008D9A00;
    objc_copyWeak(&v7, &buf);
    dispatch_after(v4, v5, block);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&buf);
  }

  else
  {
    v3 = +[REMLog cloudkit];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 67109376;
      HIDWORD(buf) = [(ICCloudContext *)self isSystemAvailableForSyncing];
      v9 = 1024;
      v10 = [(ICCloudContext *)self pendingAccountInitializerCompleteOnLaunch];
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "ICCC: bootstrapSyncingOnLaunchIfSystemReady: Not ready to bootstrap syncing yet {isSystemAvailableForSyncing=%d, pendingAccountInitializerCompleteOnLaunch=%d}", &buf, 0xEu);
    }
  }
}

- (void)registerForBuddy
{
  v3 = +[REMLog cloudkit];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Not passed buddy. ICCC now registers for buddy.", buf, 2u);
  }

  v4 = [DADBuddyStateObserver alloc];
  v5 = [(ICCloudContext *)self processingQueue];
  v6 = [v4 initWithQueue:v5];
  [(ICCloudContext *)self setBuddyStateObserver:v6];

  objc_initWeak(buf, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006BB10;
  v10[3] = &unk_1008D9A00;
  objc_copyWeak(&v11, buf);
  v7 = [(ICCloudContext *)self buddyStateObserver];
  [v7 setBuddyDidFinishHandler:v10];

  v8 = [(ICCloudContext *)self processingQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006BBA4;
  v9[3] = &unk_1008D9990;
  v9[4] = self;
  dispatch_sync(v8, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

- (void)pq_unregisterForBuddy
{
  v3 = [(ICCloudContext *)self processingQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(ICCloudContext *)self buddyStateObserver];

  if (v4)
  {
    v5 = +[REMLog cloudkit];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ICCC now unregisters buddy observer.", v7, 2u);
    }

    v6 = [(ICCloudContext *)self buddyStateObserver];
    [v6 stop];

    [(ICCloudContext *)self setBuddyStateObserver:0];
  }
}

- (id)unsafeUntilSystemReady_hashedAccountPersonIDForAccount:(id)a3 usingSalt:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 accountTypeHost];
  v10 = [v9 isCloudKit];

  if (v10)
  {
    v11 = [v7 identifier];
    v12 = [v11 UUIDString];

    if (v12)
    {
      v13 = [(ICCloudContext *)self appleAccountUtilities];
      v14 = [v13 unsafeUntilSystemReady_icloudACAccountMatchingAccountIdentifier:v12];

      v15 = [v14 aa_altDSID];
      if (v15)
      {
        v16 = +[REMUserDefaults daemonUserDefaults];
        v17 = [v16 enableHashingUserIdentifiablesWithPersonIDSalt];

        v18 = v15;
        if (v17)
        {
          objc_opt_class();
          if (objc_opt_respondsToSelector())
          {
            v19 = [objc_opt_class() base64EncodedHMACStringFromString:v18 usingSalt:v8];

            v18 = v19;
          }

          else
          {
            v21 = +[REMLog cloudkit];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
            {
              sub_10076016C();
            }
          }
        }
      }

      else
      {
        v20 = +[REMLog cloudkit];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v23 = objc_opt_class();
          v24 = NSStringFromClass(v23);
          v25 = NSStringFromSelector(a2);
          v26 = [NSString stringWithFormat:@"%@.%@", v24, v25];
          *buf = 138543618;
          v28 = v26;
          v29 = 2114;
          v30 = v12;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[%{public}@] Cannot proceed because aaAccount.aa_altDSID is nil {accountIdentifier: %{public}@}", buf, 0x16u);
        }

        v18 = 0;
      }
    }

    else
    {
      v14 = +[REMLog cloudkit];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10076023C();
      }

      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)primaryCloudKitAccountPersonIDSaltDidSetWithSalt:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    if ([(ICCloudContext *)self hasPassedBuddy]&& [(ICCloudContext *)self isSystemAvailableForSyncing])
    {
      v5 = [v4 base64EncodedStringWithOptions:0];
      v6 = [(ICCloudContext *)self storeController];
      v7 = [v6 newBackgroundContextWithAuthor:@"com.apple.remindd.ICCloudContext.setPersonID"];

      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10006C0E0;
      v10[3] = &unk_1008D9B70;
      v11 = v7;
      v12 = self;
      v13 = v4;
      v14 = v5;
      v8 = v5;
      v9 = v7;
      [v9 performBlockAndWait:v10];
    }

    else
    {
      v9 = +[REMLog cloudkit];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100760314();
      }
    }
  }
}

- (void)primaryCloudKitAccountPersonIDSaltDidFailToSetWithError:(id)a3
{
  v4 = a3;
  v5 = [(ICCloudContext *)self storeController];
  v6 = [v5 newBackgroundContextWithAuthor:@"com.apple.remindd.ICCloudContext.setPersonID"];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006C49C;
  v9[3] = &unk_1008D9B98;
  v10 = v6;
  v11 = v4;
  v7 = v4;
  v8 = v6;
  [v8 performBlockAndWait:v9];
}

- (void)observePrimaryCloudKitAccountPersonIDSaltChanges
{
  v3 = [(ICCloudContext *)self accountPersonIDSaltObserver];

  if (v3)
  {
    v4 = +[REMLog cloudkit];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [(ICCloudContext *)self accountPersonIDSaltObserver];
      v6 = [v5 uuid];
      *buf = 138543362;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "ICCC is already observing primary CK account personIDSalt changes with RDAccountPersonIDSaltObserver {observer: %{public}@}", buf, 0xCu);
    }
  }

  else
  {
    objc_initWeak(buf, self);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10006C990;
    v18[3] = &unk_1008D9BC0;
    objc_copyWeak(&v19, buf);
    v18[4] = self;
    v7 = objc_retainBlock(v18);
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_10006CADC;
    v15 = &unk_1008D9BE8;
    objc_copyWeak(&v17, buf);
    v16 = self;
    v8 = objc_retainBlock(&v12);
    v9 = [(ICCloudContext *)self storeController:v12];
    v10 = [(ICCloudContext *)self processingQueue];
    v11 = [v9 observePrimaryCloudKitAccountPersonIDSaltChangesOnQueue:v10 successHandler:v7 errorHandler:v8];
    [(ICCloudContext *)self setAccountPersonIDSaltObserver:v11];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }
}

- (void)unobservePrimaryCloudKitAccountPersonIDSaltChanges
{
  v3 = [(ICCloudContext *)self accountPersonIDSaltObserver];

  if (v3)
  {
    v4 = [(ICCloudContext *)self storeController];
    v5 = [(ICCloudContext *)self accountPersonIDSaltObserver];
    [v4 unobservePrimaryCloudKitAccountPersonIDSaltChanges:v5];

    [(ICCloudContext *)self setAccountPersonIDSaltObserver:0];
  }
}

- (void)clearContainers
{
  v3 = +[REMLog cloudkit];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clearing cloud containers.", buf, 2u);
  }

  os_unfair_lock_lock(&self->_containersByAccountIDLock);
  containersByAccountID = self->_containersByAccountID;
  self->_containersByAccountID = 0;

  os_unfair_lock_unlock(&self->_containersByAccountIDLock);
}

- (id)containerForAccountID:(id)a3
{
  v4 = a3;
  if (![(ICCloudContext *)self supportsCloudKitSyncing]|| ![(ICCloudContext *)self isSystemAvailableForSyncing]|| ![(ICCloudContext *)self hasPassedBuddy])
  {
    goto LABEL_13;
  }

  if (!v4)
  {
    v8 = +[REMLog cloudkit];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_100760454();
    }

    goto LABEL_12;
  }

  if (![v4 length])
  {
    v8 = +[REMLog cloudkit];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_100760420();
    }

LABEL_12:

LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  v5 = +[REMAccount localAccountID];
  v6 = [v5 uuid];
  v7 = [v6 UUIDString];
  if ([v4 isEqualToString:v7])
  {

LABEL_18:
    v15 = [NSString stringWithFormat:@"Attempt to create CKContainer for Local/LocalInternal account: %@", v4];
    [objc_opt_class() faultAndPromptToFileRadarWithICTap2RadarType:6 logMessage:v15];

    goto LABEL_19;
  }

  v11 = +[REMAccount localInternalAccountID];
  v12 = [v11 uuid];
  v13 = [v12 UUIDString];
  v14 = [v4 isEqualToString:v13];

  if (v14)
  {
    goto LABEL_18;
  }

LABEL_19:
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10006D330;
  v25 = sub_10006D340;
  v16 = [(ICCloudContext *)self containersByAccountID];
  v26 = [v16 objectForKeyedSubscript:v4];

  os_unfair_lock_lock(&self->_containersByAccountIDLock);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10006D348;
  v17[3] = &unk_1008D9C38;
  v20 = &v21;
  v18 = v4;
  v19 = self;
  sub_10006D348(v17);
  os_unfair_lock_unlock(&self->_containersByAccountIDLock);

  v9 = v22[5];
  _Block_object_dispose(&v21, 8);

LABEL_14:

  return v9;
}

- (id)containerAccountIDsDescription
{
  v2 = [(ICCloudContext *)self containersByAccountID];
  v3 = [v2 allKeys];
  v4 = [v3 componentsJoinedByString:{@", "}];

  if (v4)
  {
    v5 = [NSString stringWithFormat:@"{ %@ }", v4];
  }

  else
  {
    v5 = @"{ }";
  }

  return v5;
}

- (id)accountIDForDatabase:(id)a3
{
  v3 = [a3 container];
  v4 = [v3 options];
  v5 = [v4 accountOverrideInfo];
  v6 = [v5 accountID];

  return v6;
}

- (void)dealloc
{
  if ([(ICCloudContext *)self shouldUnregisterBuddy])
  {
    v3 = [(ICCloudContext *)self processingQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006D658;
    block[3] = &unk_1008D9990;
    block[4] = self;
    dispatch_sync(v3, block);
  }

  if ([(ICCloudContext *)self didAddObservers])
  {
    v4 = [(ICCloudContext *)self operationQueue];
    [v4 removeObserver:self forKeyPath:@"operationCount"];
  }

  [NSObject cancelPreviousPerformRequestsWithTarget:self];
  v5 = [(ICCloudContext *)self retryTimer];
  [v5 invalidate];

  v6 = [(ICCloudContext *)self processingSelectorDelayer];
  [v6 cancelPreviousFireRequests];

  v7 = [(ICCloudContext *)self pollingSelectorDelayer];
  [v7 cancelPreviousFireRequests];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 removeObserver:self];

  v9.receiver = self;
  v9.super_class = ICCloudContext;
  [(ICCloudContext *)&v9 dealloc];
}

- (id)newBackgroundContext
{
  v2 = [(ICCloudContext *)self storeController];
  v3 = [v2 newBackgroundContextWithAuthor:RDStoreControllerICCloudContextAuthor];

  return v3;
}

- (id)contextForAccountID:(id)a3 withBatchFetchHelper:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(ICCloudContext *)self context];
  if (v4)
  {
    v8 = [(ICCloudContext *)self batchFetchHelperWithContext:v7];
    [v7 setBatchFetchHelper:v8];
  }

  if ([v6 length] && (objc_msgSend(v7, "__unsafe_doesNotWorkUniversally_setAffectedStoresWithAccountIdentifier:", v6) & 1) == 0)
  {
    v9 = +[REMLog cloudkit];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100760488();
    }
  }

  return v7;
}

- (void)performAndWaitContextWithBatchFetchHelperForAccountID:(id)a3 block:(id)a4
{
  v6 = a4;
  [(ICCloudContext *)self contextForAccountID:a3 withBatchFetchHelper:1];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006D8B0;
  v10 = v9[3] = &unk_1008D9C60;
  v11 = v6;
  v7 = v10;
  v8 = v6;
  [v7 performBlockAndWait:v9];
}

- (id)mergeLocalObjectsFetchContextAffectingStoreOf:(id)a3
{
  v4 = a3;
  v5 = [(ICCloudContext *)self storeController];
  v6 = [v5 newBackgroundContextWithAuthor:@"com.apple.remindd.ICCloudContext.mergeLocalObjects"];

  if (([v6 __unsafe_doesNotWorkUniversally_setAffectedStoresWithAccountIdentifier:v4] & 1) == 0)
  {
    v7 = +[REMLog cloudkit];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1007604F8();
    }
  }

  return v6;
}

- (id)mergeLocalObjectsWriteContextAffectingStoreOf:(id)a3
{
  v4 = a3;
  v5 = [(ICCloudContext *)self storeController];
  v6 = [v5 newBackgroundContextWithAuthor:@"com.apple.remindd.ICCloudContext.mergeLocalObjects"];

  if (([v6 __unsafe_doesNotWorkUniversally_setAffectedStoresWithAccountIdentifier:v4] & 1) == 0)
  {
    v7 = +[REMLog cloudkit];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100760568();
    }
  }

  return v6;
}

- (id)internalContextWithBatchFetchHelper
{
  v3 = [(ICCloudContext *)self storeController];
  v4 = [v3 newBackgroundContextWithAuthor:RDStoreControllerICCloudContextInternalAuthor];

  v5 = [(ICCloudContext *)self batchFetchHelperWithContext:v4];
  [v4 setBatchFetchHelper:v5];

  return v4;
}

- (id)serverChangeTokenContext
{
  v2 = [(ICCloudContext *)self storeController];
  v3 = [v2 newBackgroundContextWithAuthor:RDStoreControllerICCloudContextServerChangeTokenAuthor enableQueryGenerationToken:0];

  return v3;
}

- (id)batchFetchHelperWithContext:(id)a3
{
  v4 = a3;
  v5 = +[ICCloudConfiguration sharedConfiguration];
  v6 = [v5 fetchBatchSize];

  v7 = +[ICCloudConfiguration sharedConfiguration];
  v8 = [v7 fetchCacheCountLimit];

  v9 = [ICBatchFetchHelper alloc];
  v10 = [(ICCloudContext *)self processingQueue];
  v11 = [(ICBatchFetchHelper *)v9 initWithQueue:v10 managedObjectContext:v4 batchSize:v6 cacheCountLimit:v8];

  return v11;
}

- (BOOL)notificationContainsCloudContextInternalChangesOnly:(id)a3
{
  v3 = NSManagedObjectContextTransactionAuthorKey;
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:v3];

  objc_opt_class();
  v6 = REMDynamicCast();
  v7 = v6;
  v8 = v6 && (([v6 isEqualToString:RDStoreControllerICCloudContextInternalAuthor] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", RDStoreControllerICCloudContextServerChangeTokenAuthor));

  return v8;
}

+ (id)filterNonUploadableChangedManagedObjectIDs:(id)a3 cloudKitStoreIdentifiers:(id)a4
{
  v5 = a3;
  v26 = a4;
  if (qword_100952900 != -1)
  {
    sub_1007605D8();
  }

  v25 = +[NSMutableSet set];
  v24 = +[NSMutableArray array];
  v22 = +[NSMutableArray array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = [v11 entity];
        v13 = [v12 name];

        if (v13)
        {
          v14 = [qword_1009528F8 containsObject:v13];
        }

        else
        {
          [v24 addObject:v11];
          v14 = 0;
        }

        v15 = [v11 persistentStore];
        v16 = [v15 identifier];

        if (v16)
        {
          v17 = [v26 containsObject:v16] ^ 1;
        }

        else
        {
          [v22 addObject:v11];
          v17 = 0;
        }

        if ((v14 | v17))
        {
          [v25 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }

  if ([v24 count])
  {
    v18 = +[REMLog cloudkit];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      sub_1007605EC();
    }
  }

  if ([v22 count])
  {
    v19 = +[REMLog cloudkit];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      sub_10076065C();
    }
  }

  if ([v25 count])
  {
    v20 = [v6 mutableCopy];
    [v20 minusSet:v25];
  }

  else
  {
    v20 = v6;
  }

  return v20;
}

+ (BOOL)isNonUploadingTransactionAuthor:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (qword_100952910 == -1)
  {
    if (v3)
    {
LABEL_3:
      v5 = [qword_100952908 containsObject:v4];
      goto LABEL_8;
    }
  }

  else
  {
    sub_1007606CC();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v6 = +[REMLog cloudkit];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    sub_1007606E0();
  }

  NSLog(@"'%s' is unexpectedly nil", "transactionAuthor");
  v5 = 0;
LABEL_8:

  return v5;
}

- (id)cloudKitAccountsInContext:(id)a3
{
  v3 = [REMCDAccount allCloudKitAccountsInContext:a3];
  +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006E3AC;
  v4 = v6[3] = &unk_1008D9CC8;
  v7 = v4;
  [v3 enumerateObjectsUsingBlock:v6];

  return v4;
}

- (id)primaryCloudKitAccountInContext:(id)a3
{
  v4 = a3;
  if ([(ICCloudContext *)self hasPassedBuddy]&& [(ICCloudContext *)self isSystemAvailableForSyncing])
  {
    v5 = [(ICCloudContext *)self appleAccountUtilities];
    v6 = [REMCDAccount unsafeUntilSystemReady_primaryCloudKitAccountInContext:v4 appleAccountUtilities:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)readinessLoggingDescription
{
  v17 = [(ICCloudContext *)self syncDisabledByServer];
  v16 = [(ICCloudContext *)self isCloudKitAccountAvailable];
  v3 = [(ICCloudContext *)self storeController];
  v15 = [v3 supportsSyncingToCloudKit];
  v4 = +[ICSyncSettings sharedSettings];
  v5 = [v4 hasOptions:16];
  v6 = [(ICCloudContext *)self isDisabled];
  v7 = [(ICCloudContext *)self isDisabledInternal];
  v8 = [(ICCloudContext *)self isSystemAvailableForSyncing];
  v9 = [(ICCloudContext *)self hasPassedBuddy];
  v10 = [(ICCloudContext *)self pendingAccountInitializerCompleteOnLaunch];
  v11 = [(ICCloudContext *)self accountStatusByAccountIDDescription];
  v12 = [(ICCloudContext *)self containerAccountIDsDescription];
  v13 = [NSString stringWithFormat:@"syncDisabledByServer=%d accountAvailable=%d storeControllerSupportCloudKitSyncing=%d icSyncSetting=%d isDisabled=(%d %d) isSystemAvailableForSyncing=%d passedBuddy=%d pendingAccountInitializerCompleteOnLaunch=%d CKAccountStatusByAccountID=%@ ckContainerAccountIDs=%@", v17, v16, v15, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (BOOL)isCloudKitAccountAvailableRequiringActive:(BOOL)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  [(ICCloudContext *)self context];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006E960;
  v8[3] = &unk_1008D9D18;
  v10 = &v12;
  v5 = v8[4] = self;
  v9 = v5;
  v11 = a3;
  [v5 performBlockAndWait:v8];
  v6 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v6;
}

- (BOOL)_isCloudKitAccountAvailableWithManagedObjectContext:(id)a3 requireActive:(BOOL)a4
{
  v4 = a4;
  [REMCDAccount allCloudKitAccountsInContext:a3];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (!v4 || ![*(*(&v12 + 1) + 8 * i) inactive])
        {
          v10 = 1;
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v10 = 0;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_13:

  return v10;
}

- (void)disableCloudSyncingIfCurrentVersionNotSuppported
{
  v3 = +[ICCloudConfiguration sharedConfiguration];
  v4 = [v3 minimumClientVersion];

  v5 = [v4 componentsSeparatedByString:{@", "}];
  if ([v5 count] != 3)
  {
    v13 = +[REMLog cloudkit];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1007607B8();
    }

    goto LABEL_8;
  }

  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [v6 intValue];

  v8 = [v5 objectAtIndexedSubscript:1];
  v9 = [v8 intValue];

  v10 = [v5 objectAtIndexedSubscript:2];
  v11 = [v10 intValue];

  v12 = +[NSProcessInfo processInfo];
  v14[0] = v7;
  v14[1] = v9;
  v14[2] = v11;
  LODWORD(v7) = [v12 isOperatingSystemAtLeastVersion:v14];

  if (!v7)
  {
    [(ICCloudContext *)self setSyncDisabledByServer:1];
    v13 = +[REMLog cloudkit];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1007607EC();
    }

LABEL_8:

    goto LABEL_9;
  }

  [(ICCloudContext *)self setSyncDisabledByServer:0];
LABEL_9:
}

- (void)updateConfiguration
{
  [(ICCloudContext *)self disableCloudSyncingIfCurrentVersionNotSuppported];

  [(ICCloudContext *)self updateSelectorDelayers];
}

- (void)updateSelectorDelayers
{
  v3 = +[ICCloudConfiguration sharedConfiguration];
  v4 = [v3 throttlingPolicy];
  [v4 batchInterval];
  v6 = v5;

  v7 = self;
  objc_sync_enter(v7);
  v8 = [(ICCloudContext *)v7 processingSelectorDelayer];

  if (!v8)
  {
    v9 = [[ICSelectorDelayer alloc] initWithTarget:v7 selector:"processPendingCloudObjects" delay:1 waitToFireUntilRequestsStop:1 callOnMainThread:v6];
    [(ICCloudContext *)v7 setProcessingSelectorDelayer:v9];
  }

  objc_sync_exit(v7);

  v10 = [(ICCloudContext *)v7 processingSelectorDelayer];
  [v10 setDelay:v6];

  v11 = [(ICCloudContext *)v7 processingSelectorDelayer];
  v12 = [v11 isScheduledToFire];

  if (v12)
  {
    v13 = [(ICCloudContext *)v7 processingSelectorDelayer];
    [v13 cancelPreviousFireRequests];

    v14 = [(ICCloudContext *)v7 processingSelectorDelayer];
    [v14 requestFire];
  }

  v15 = [(ICCloudContext *)v7 pollingSelectorDelayer];

  if (v15)
  {
    v16 = +[ICCloudConfiguration sharedConfiguration];
    [v16 pollingInterval];
    v18 = v17;

    v19 = [(ICCloudContext *)v7 pollingSelectorDelayer];
    [v19 setDelay:v18];

    v20 = [(ICCloudContext *)v7 pollingSelectorDelayer];
    v21 = [v20 isScheduledToFire];

    if (v21)
    {
      v22 = [(ICCloudContext *)v7 pollingSelectorDelayer];
      [v22 cancelPreviousFireRequests];

      v23 = [(ICCloudContext *)v7 pollingSelectorDelayer];
      [v23 requestFire];
    }
  }
}

- (void)handleUnrecoverableError
{
  [(ICCloudContext *)self deleteAllServerChangeTokens];

  [(ICCloudContext *)self syncWithReason:@"UnrecoverableError" discretionary:0 completionHandler:0];
}

+ (id)_systemBuildVersion
{
  if (qword_100952918 != -1)
  {
    sub_100760898();
  }

  v3 = qword_100952920;

  return v3;
}

+ (id)_cloudObjectClassesByRecordType
{
  if (qword_100952928 != -1)
  {
    sub_1007608AC();
  }

  v3 = qword_100952930;

  return v3;
}

- (NSDictionary)cloudObjectClassesByRecordType
{
  v2 = objc_opt_class();

  return [v2 _cloudObjectClassesByRecordType];
}

+ (id)_recordTypesToSortChildrenAfterFetch
{
  if (qword_100952938 != -1)
  {
    sub_1007608C0();
  }

  v3 = qword_100952940;

  return v3;
}

+ (id)appZoneID
{
  if (qword_100952950 != -1)
  {
    sub_1007608D4();
  }

  v3 = qword_100952948;

  return v3;
}

+ (id)migrationZoneID
{
  if (qword_100952960 != -1)
  {
    sub_1007608E8();
  }

  v3 = qword_100952958;

  return v3;
}

+ (id)metadataZoneID
{
  if (qword_100952970 != -1)
  {
    sub_1007608FC();
  }

  v3 = qword_100952968;

  return v3;
}

- (void)reachabilityChanged:(id)a3
{
  v4 = +[ICUtilities isInternetReachable];
  if (v4 != [(ICCloudContext *)self wasInternetReachable])
  {
    [(ICCloudContext *)self setWasInternetReachable:v4];
    if (v4)
    {
      v5 = +[NSDate now];
      [v5 timeIntervalSinceReferenceDate];
      v7 = v6;

      [(ICCloudContext *)self lastSyncSinceInternetReachable];
      v9 = v7 - v8;
      v10 = +[ICCloudConfiguration sharedConfiguration];
      [v10 reachabilityChangeSyncThrottleInterval];
      v12 = v11;

      if (v9 >= v12)
      {
        [(ICCloudContext *)self setLastSyncSinceInternetReachable:v7];
        v16 = [(ICCloudContext *)self icUserDefaults];
        v17 = [v16 userDefaults];
        [v17 setDouble:@"CloudKitLastSyncSinceInternetReachable" forKey:v7];

        v14 = 1;
      }

      else
      {
        v13 = +[REMLog cloudkit];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Re-gain internet connection after losing it for a short time. Not going to sync. (throttled)", buf, 2u);
        }

        v14 = 2;
      }

      v18 = +[REMLog cloudkit];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Cloud context found an internet connection.", v20, 2u);
      }

      [(ICCloudContext *)self processPendingCloudObjectsWithOperationName:ICNSBlockOperationNameProcessObjectsForReachabilityChanged];
    }

    else
    {
      v15 = +[REMLog cloudkit];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Cloud context lost an internet connection.", v19, 2u);
      }

      v14 = 0;
    }

    [(ICCloudContext *)self updateCloudContextStateWithSyncOption:v14 syncReason:@"ReachabilityChanged" withCompletionHandler:&stru_1008D9E18];
  }
}

- (void)cloudKitAccountChanged:(id)a3
{
  v4 = [(ICCloudContext *)self processingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006F9D8;
  block[3] = &unk_1008D9990;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)printOperationQueue
{
  v3 = [(ICCloudContext *)self operationQueue];
  v4 = [v3 operationCount];

  if (v4)
  {
    v5 = +[NSMutableString string];
  }

  else
  {
    v5 = 0;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(ICCloudContext *)self operationQueue];
  v7 = [v6 operations];

  v8 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v17 + 1) + 8 * v11) ic_loggingDescription];
        [v5 appendFormat:@"\n\t%@", v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v9);
  }

  v13 = +[REMLog cloudkit];
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v14)
    {
      v15 = [(ICCloudContext *)self operationQueue];
      v16 = [v15 operationCount];
      *buf = 67109378;
      v22 = v16;
      v23 = 2114;
      v24 = v5;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Operation queue has %d operation(s):%{public}@", buf, 0x12u);
    }
  }

  else if (v14)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Operation queue has 0 operations", buf, 2u);
  }
}

- (void)addStateHandlerWithName:(const char *)a3 stateBlock:(id)a4
{
  v5 = a4;
  v6 = +[REMLog cloudkit];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Adding os_state handler: %{public}s", buf, 0xCu);
  }

  v7 = dispatch_get_global_queue(0, 0);
  v8 = v5;
  os_state_add_handler();
}

- (void)addStateHandler
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100070268;
  v3[3] = &unk_1008D9EB8;
  objc_copyWeak(&v4, &location);
  [(ICCloudContext *)self addStateHandlerWithName:"Cloud Context" stateBlock:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (id)status
{
  v2 = [(ICCloudContext *)self operationQueue];
  v3 = [v2 operationCount];

  if (v3)
  {
    return @"Syncing in progress";
  }

  else
  {
    return @"No Sync in progress";
  }
}

- (id)configurationDump
{
  v3 = +[NSMutableDictionary dictionary];
  v61 = +[ICCloudConfiguration sharedConfiguration];
  v4 = [(ICCloudContext *)self containersByAccountID];
  v5 = [v4 allKeys];

  v6 = [NSString stringWithFormat:@"%ld", 20250728];
  v7 = v3;
  [v3 setObject:v6 forKey:@"runtimeCloudKitSchemaVersion"];

  v63 = [(ICCloudContext *)self icUserDefaults];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v65;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v65 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v64 + 1) + 8 * i);
        v13 = [(ICCloudContext *)self contextForAccountID:v12 withBatchFetchHelper:0];
        v14 = [ICCloudSchemaCatchUpSyncContext alloc];
        v15 = [v63 cloudSchemaCatchUpSyncSchedulingStateStorage];
        v16 = [(ICCloudSchemaCatchUpSyncContext *)v14 initWithAccountIdentifier:v12 syncReason:@"DumpConfig" schedulingStateStorage:v15 managedObjectContext:v13];

        v17 = [NSString stringWithFormat:@"accountIdentifier: %@ -> version: %ld", v12, [(ICCloudSchemaCatchUpSyncContext *)v16 persistenceCloudSchemaVersion]];
        [v7 setObject:v17 forKey:@"persistenceCloudSchemaVersion"];
      }

      v9 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
    }

    while (v9);
  }

  v60 = +[REMUserDefaults daemonUserDefaults];
  v18 = [v60 cloudKitSchemaCatchUpSyncLastSuccessDate];
  v19 = [NSString stringWithFormat:@"%@", v18];
  [v7 setObject:v19 forKey:@"cloudKitSchemaCatchUpSyncLastSuccessDate"];

  v20 = [v60 cloudKitSchemaCatchUpSyncLastSuccessBuildVersion];
  v21 = [NSString stringWithFormat:@"%@", v20];
  [v7 setObject:v21 forKey:@"cloudKitSchemaCatchUpSyncLastSuccessBuildVersion"];

  v22 = [v63 cloudSchemaCatchUpSyncSchedulingStateStorage];
  v23 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v22 schedulingState]);
  v24 = [NSString stringWithFormat:@"%@", v23];
  [v7 setObject:v24 forKey:@"cloudKitSchemaCatchUpSyncSchedulingState"];

  v25 = [v63 cloudSchemaCatchUpSyncSchedulingStateStorage];
  v26 = [v25 lastScheduledDate];
  v27 = [NSString stringWithFormat:@"%@", v26];
  [v7 setObject:v27 forKey:@"cloudKitSchemaCatchUpSyncLastScheduledDate"];

  v28 = [v61 throttlingPolicy];
  [v28 batchInterval];
  v30 = v29;

  v31 = [NSString stringWithFormat:@"%lf", v30];
  [v7 setObject:v31 forKey:@"throttlingPolicy.processingInterval"];

  v32 = [v61 minimumClientVersion];
  v33 = [NSString stringWithFormat:@"%@", v32];
  [v7 setObject:v33 forKey:@"minimumClientOSSupportedByServer"];

  [v61 pollingInterval];
  v35 = [NSString stringWithFormat:@"%lf", v34];
  [v7 setObject:v35 forKey:@"pollingInterval"];

  [v61 reachabilityChangeSyncThrottleInterval];
  v37 = [NSString stringWithFormat:@"%lf", v36];
  [v7 setObject:v37 forKey:@"reachabilityChangeSyncThrottleInterval"];

  v38 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu", [v61 resultsLimitPerSyncOperation]);
  [v7 setObject:v38 forKey:@"resultsLimitPerSyncOperation"];

  v39 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu", [v61 resultsLimitPerSyncOperation]);
  [v7 setObject:v39 forKey:@"numberOfRecordsToProcessBeforeSaving"];

  v40 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu", [v61 fetchBatchSize]);
  [v7 setObject:v40 forKey:@"fetchBatchSize"];

  [v61 persistedSubscriptionIDsValidityPeriod];
  v42 = [NSString stringWithFormat:@"%lf", v41];
  [v7 setObject:v42 forKey:@"persistedSubscriptionIDsValidityPeriod"];

  [v61 mergeLocalObjectsInitialRetryInterval];
  v44 = [NSString stringWithFormat:@"%lf", v43];
  [v7 setObject:v44 forKey:@"mergeLocalObjectsInitialRetryInterval"];

  v45 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu", [v61 mergeLocalObjectsMaximumRetryCount]);
  [v7 setObject:v45 forKey:@"mergeLocalObjectsMaximumRetryCount"];

  [v61 mergeLocalObjectsRetryStartOverThrottleInterval];
  v47 = [NSString stringWithFormat:@"%lf", v46];
  [v7 setObject:v47 forKey:@"mergeLocalObjectsRetryStartOverThrottleInterval"];

  [v61 cloudSchemaCatchUpSyncInitialRetryInterval];
  v49 = [NSString stringWithFormat:@"%lf", v48];
  [v7 setObject:v49 forKey:@"cloudSchemaCatchUpSyncInitialRetryInterval"];

  v50 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu", [v61 cloudSchemaCatchUpSyncMaximumRetryCount]);
  [v7 setObject:v50 forKey:@"cloudSchemaCatchUpSyncMaximumRetryCount"];

  v51 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu", [v61 fetchDatabaseChangesOperationPerScopePerAccountMaximumRetryCount]);
  [v7 setObject:v51 forKey:@"fetchDatabaseChangesOperationPerScopePerAccountMaximumRetryCount"];

  v52 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu", [v61 objectEffectiveVersionValidationFlushBatchSize]);
  [v7 setObject:v52 forKey:@"objectEffectiveVersionValidationFlushBatchSize"];

  [v61 manualSortHintClientSideExpiration];
  v54 = [NSString stringWithFormat:@"%lf", v53];
  [v7 setObject:v54 forKey:@"manualSortHintClientSideExpiration"];

  v55 = [v61 manualSortHintLastAccessedUpdatePolicy];
  v56 = [NSString stringWithFormat:@"%@", v55];
  [v7 setObject:v56 forKey:@"manualSortHintLastAccessedUpdatePolicy"];

  v57 = +[ICCloudContext _systemBuildVersion];
  v58 = [NSString stringWithFormat:@"%@", v57];
  [v7 setObject:v58 forKey:@"_systemBuildVersion"];

  return v7;
}

- (id)allZoneIDs
{
  v2 = +[ICCloudContext appZoneID];
  v6[0] = v2;
  v3 = +[ICCloudContext metadataZoneID];
  v6[1] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:2];

  return v4;
}

- (void)receivedZoneNotFound:(id)a3 operation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 database];
  v9 = [(ICCloudContext *)self accountIDForDatabase:v8];

  if (![v9 length])
  {
    v10 = +[REMLog cloudkit];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v18 = [v6 ic_loggingDescription];
      v19 = [v7 ic_loggingDescription];
      v20 = 138543874;
      v21 = v18;
      v22 = 2114;
      v23 = v19;
      v24 = 2114;
      v25 = v9;
      _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "accountID is nil or empty in receivedZoneNotFound: %{public}@ %{public}@, accountID: %{public}@", &v20, 0x20u);
    }
  }

  v11 = [v6 ic_isOwnedByCurrentUser];
  v12 = +[REMLog cloudkit];
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
  if (v11)
  {
    if (v13)
    {
      sub_100760A9C();
    }

    v14 = [(ICCloudContext *)self accountZoneIDsNeedingToBeSaved];
    [v14 ic_addZoneID:v6 forAccountID:v9];

    v15 = [(ICCloudContext *)self cloudContextDelegate];
    [v15 cloudContext:self receivedZoneNotFound:v6 accountID:v9];
  }

  else
  {
    if (v13)
    {
      sub_1007609F8();
    }

    v16 = [(ICCloudContext *)self accountZoneIDsNeedingFetchChanges];
    [v16 ic_removeZoneID:v6 forAccountID:v9];

    v15 = [(ICCloudContext *)self cloudContextDelegate];
    [v15 cloudContext:self sharedZoneWasDeleted:v6 accountID:v9];
  }

  [(ICCloudContext *)self saveZoneFetchState];
  v17 = [v7 database];
  -[ICCloudContext deleteServerChangeTokenForRecordZoneID:databaseScope:accountID:](self, "deleteServerChangeTokenForRecordZoneID:databaseScope:accountID:", v6, [v17 databaseScope], v9);
}

+ (id)allCloudObjectIDsOfClassesPassingTest:(id)a3 inContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableSet set];
  v9 = [a1 _cloudObjectClassesByRecordType];
  v10 = [v9 allValues];

  if (v6)
  {
    v11 = [v10 ic_objectsPassingTest:v6];
  }

  else
  {
    v11 = v10;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v19 + 1) + 8 * i) allCloudObjectIDsInContext:{v7, v19}];
        if (v17)
        {
          [v8 addObjectsFromArray:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  return v8;
}

- (id)allDirtyCloudObjectIDsInContext:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() allDirtyCloudObjectIDsInContext:v3];

  return v4;
}

+ (id)allDirtyCloudObjectIDsInContext:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableSet set];
  v5 = [REMCDObject allDirtyCloudObjectIDsInContext:v3];

  if (v5)
  {
    [v4 addObjectsFromArray:v5];
  }

  return v4;
}

- (BOOL)_generateAndSavePersonIDSaltIfNeeded:(id)a3
{
  v4 = a3;
  v5 = +[REMUserDefaults daemonUserDefaults];
  v6 = [v5 enableAutoGenerateCKPersonIDSalt];

  if (!v6)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  if ((isCloudContextSyncReasonUserInitiated(v4) & 1) == 0)
  {
    v11 = +[REMLog cloudkit];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Not generating PersonIDSalt because the sync reason wasn't initiated by the user {reason: %@}", &buf, 0xCu);
    }

    goto LABEL_7;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v17 = 0x2020000000;
  v18 = 0;
  v7 = [(ICCloudContext *)self storeController];
  v8 = [v7 newBackgroundContextWithAuthor:@"com.apple.remindd.ICCloudContext.setPersonIDSalt"];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100071498;
  v13[3] = &unk_1008D9EE0;
  v13[4] = self;
  v9 = v8;
  v14 = v9;
  p_buf = &buf;
  [v9 performBlockAndWait:v13];
  v10 = *(*(&buf + 1) + 24);

  _Block_object_dispose(&buf, 8);
LABEL_8:

  return v10 & 1;
}

- (void)syncWithReason:(id)a3 discretionary:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[REMLog cloudkit];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v44 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SYNC[FULL] START {reason: %{public}@}", buf, 0xCu);
  }

  v11 = [NSString stringWithFormat:@"com.apple.remindd.cloudkit.sync.full[%@]", v8];
  v12 = +[REMLog cloudkit];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v44 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "os_transaction INIT {name: %{public}@}", buf, 0xCu);
  }

  [v11 cStringUsingEncoding:1];
  v13 = os_transaction_create();
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100071984;
  v39[3] = &unk_1008D9F08;
  v14 = v9;
  v42 = v14;
  v15 = v11;
  v40 = v15;
  v16 = v13;
  v41 = v16;
  v17 = objc_retainBlock(v39);
  if (![(ICCloudContext *)self isReadyToSync])
  {
    v26 = [(ICCloudContext *)self storeController];
    v27 = [v26 supportsSyncingToCloudKit];

    if (v27)
    {
      v28 = [(ICCloudContext *)self isCloudKitAccountAvailable];
      v29 = +[REMLog cloudkit];
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
      if (v28)
      {
        if (v30)
        {
          sub_100760BF4(self);
        }

        goto LABEL_17;
      }

      if (v30)
      {
        sub_100760BB8();
      }
    }

    else
    {
      v31 = +[REMLog cloudkit];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_100760B7C();
      }
    }

    v25 = 0;
    goto LABEL_25;
  }

  if (![(ICCloudContext *)self isInternetReachable])
  {
    v29 = +[REMLog cloudkit];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_100760C80();
    }

LABEL_17:

    v25 = [objc_opt_class() errorForDisabledCloudSyncing];
LABEL_25:
    (v17[2])(v17, v25);
    goto LABEL_26;
  }

  v32 = a4;
  v18 = +[REMSignpost sync];
  v19 = os_signpost_id_generate(v18);
  v20 = v18;
  v21 = v20;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "cloudkit.full", "", buf, 2u);
  }

  v22 = +[NSDate date];
  v23 = [(ICCloudContext *)self processingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100071A70;
  block[3] = &unk_1008D9FA8;
  block[4] = self;
  block[5] = v8;
  v38 = v32;
  v34 = v22;
  v35 = v21;
  v37 = v19;
  v36 = v17;
  v24 = v21;
  v25 = v22;
  dispatch_async(v23, block);

LABEL_26:
}

- (void)_syncWithReason:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray array];
  v9 = [(ICCloudContext *)self containersByAccountID];
  v10 = [v9 allKeys];

  v11 = [(ICCloudContext *)self setUpCloudSchemaCatchUpSyncContextMapWithAccountIDs:v10 syncReason:v6];
  v12 = [v11 count];
  v13 = +[REMLog cloudkit];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if (v12)
    {
      v14 = [v11 allKeys];
    }

    else
    {
      v14 = @"NONE";
    }

    *buf = 138543362;
    v26 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "SYNC[FULL] CONTINUE - List of accountIDs that need to perform CloudSchemaCatchUpSync: {%{public}@}", buf, 0xCu);
    if (v12)
    {
    }
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100072654;
  v18[3] = &unk_1008D9FF8;
  v19 = v8;
  v20 = self;
  v21 = v6;
  v22 = v11;
  v24 = v12 != 0;
  v23 = v7;
  v15 = v7;
  v16 = v11;
  v17 = v8;
  [(ICCloudContext *)self fetchDatabaseChangesWithReason:v6 cloudSchemaCatchUpSyncContextMap:v16 completionHandler:v18];
}

- (void)cancelEverythingWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100072BBC;
  v7[3] = &unk_1008DA048;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)clearPendingActivity
{
  v3 = [(ICCloudContext *)self processingSelectorDelayer];
  [v3 cancelPreviousFireRequests];

  v4 = [(ICCloudContext *)self processingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000733D4;
  block[3] = &unk_1008D9990;
  block[4] = self;
  dispatch_async(v4, block);

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100073658;
  v5[3] = &unk_1008D9990;
  v5[4] = self;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)configureOperation:(id)a3
{
  v4 = a3;
  v5 = [(ICCloudContext *)self lastSyncMetrics];
  [v5 setOperationCount:{objc_msgSend(v5, "operationCount") + 1}];

  [v4 setQualityOfService:{-[ICCloudContext qualityOfService](self, "qualityOfService")}];
  [(ICCloudContext *)self timeoutIntervalForResource];
  v7 = v6;
  v8 = [v4 configuration];

  [v8 setTimeoutIntervalForResource:v7];
}

- (BOOL)isFetchingAllRecordZones
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(ICCloudContext *)self operationQueue];
  v3 = [v2 operations];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

+ (id)errorForDisabledCloudSyncing
{
  v5 = NSLocalizedDescriptionKey;
  v6 = @"Cloud syncing is not enabled.";
  v2 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v3 = [NSError errorWithDomain:@"com.apple.reminders.cloud" code:1 userInfo:v2];

  return v3;
}

+ (id)errorFromErrors:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    if ([v3 count] == 1)
    {
      v4 = [v3 firstObject];
    }

    else
    {
      v7 = @"Errors";
      v8 = v3;
      v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
      v4 = [NSError errorWithDomain:@"com.apple.reminders.cloud" code:2 userInfo:v5];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)errorFromOperations:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 error];

        if (v11)
        {
          v12 = [v10 error];
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [objc_opt_class() errorFromErrors:v4];

  return v13;
}

- (double)timeIntervalToRetryAfterFromError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v5 = [v3 userInfo];
    v6 = [v5 objectForKeyedSubscript:CKErrorRetryAfterKey];

    if (v6)
    {
      objc_opt_class();
      v7 = [v4 userInfo];
      v8 = [v7 objectForKeyedSubscript:CKErrorRetryAfterKey];
      v9 = REMDynamicCast();
      [v9 doubleValue];
    }

    else
    {
      v12 = [v4 userInfo];
      v13 = REMErrorRetryAfterKey;
      v14 = [v12 objectForKeyedSubscript:REMErrorRetryAfterKey];

      if (!v14)
      {
        if ([v4 code] != 2)
        {
          goto LABEL_9;
        }

        v16 = [v4 userInfo];
        v7 = [v16 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_100074588;
        v17[3] = &unk_1008DA138;
        v17[4] = &v18;
        [v7 enumerateKeysAndObjectsUsingBlock:v17];
LABEL_8:

LABEL_9:
        v11 = v19[3];
        _Block_object_dispose(&v18, 8);
        goto LABEL_10;
      }

      objc_opt_class();
      v7 = [v4 userInfo];
      v8 = [v7 objectForKeyedSubscript:v13];
      v9 = REMDynamicCast();
      [v9 doubleValue];
    }

    *(v19 + 3) = v10;

    goto LABEL_8;
  }

  v11 = 0.0;
LABEL_10:

  return v11;
}

- (BOOL)canRetryImmediatelyAfterError:(id)a3
{
  v4 = a3;
  v5 = [v4 domain];
  if ([v5 isEqualToString:@"com.apple.reminders.cloud"])
  {
    v6 = [v4 code];

    if (v6 == 2)
    {
      v7 = [v4 userInfo];
      v8 = [v7 objectForKeyedSubscript:@"Errors"];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v9 = [v4 domain];
  v10 = [v9 isEqualToString:CKErrorDomain];

  if (v10)
  {
    if ([v4 code] == 2)
    {
      objc_opt_class();
      v7 = [v4 userInfo];
      v11 = [v7 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
      v12 = REMDynamicCast();
      v8 = [v12 allValues];

LABEL_8:
      if (v8)
      {
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v13 = v8;
        v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v21;
          while (2)
          {
            for (i = 0; i != v15; i = i + 1)
            {
              if (*v21 != v16)
              {
                objc_enumerationMutation(v13);
              }

              if ([(ICCloudContext *)self canRetryImmediatelyAfterError:*(*(&v20 + 1) + 8 * i), v20])
              {

                goto LABEL_22;
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }
      }

      goto LABEL_20;
    }

    if ([v4 code] == 31 || objc_msgSend(v4, "code") == 14)
    {
LABEL_22:
      v18 = 1;
      goto LABEL_23;
    }
  }

LABEL_20:
  v18 = 0;
LABEL_23:

  return v18;
}

- (void)finishOperationsForRecordID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICCloudContext *)self processingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007493C;
  block[3] = &unk_1008DA160;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)setAccountStatusNumberByAccountID:(id)a3
{
  v4 = a3;
  v5 = [(ICCloudContext *)self icUserDefaults];
  v6 = [v5 userDefaults];

  [v6 setObject:v4 forKey:@"CloudKitAccountStatus"];
  [v6 synchronize];
}

- (void)setAccountStatus:(int64_t)a3 forAccountID:(id)a4
{
  v6 = a4;
  v7 = [(ICCloudContext *)self accountStatusNumberByAccountID];
  if (v7)
  {
    v8 = [(ICCloudContext *)self accountStatusNumberByAccountID];
    v11 = [v8 mutableCopy];
  }

  else
  {
    v11 = +[NSMutableDictionary dictionary];
  }

  v9 = [NSNumber numberWithInteger:a3];
  [v11 setObject:v9 forKeyedSubscript:v6];

  v10 = [v11 copy];
  [(ICCloudContext *)self setAccountStatusNumberByAccountID:v10];
}

- (void)updateAccountStatusWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(ICCloudContext *)self processingQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000750D8;
  v7[3] = &unk_1008DA048;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)removeStaleAccountStatus
{
  v3 = [(ICCloudContext *)self processingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007565C;
  block[3] = &unk_1008D9990;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)removeStaleFetchDatabaseRetryMetadata
{
  v3 = [(ICCloudContext *)self processingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007590C;
  block[3] = &unk_1008D9990;
  block[4] = self;
  dispatch_async(v3, block);
}

- (id)accountStatusByAccountIDDescription
{
  v3 = [NSMutableString stringWithFormat:@"{"];
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 1;
  v4 = [(ICCloudContext *)self accountStatusNumberByAccountID];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100075D8C;
  v11 = &unk_1008DA200;
  v13 = v14;
  v5 = v3;
  v12 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:&v8];

  [v5 appendString:{@" }", v8, v9, v10, v11}];
  v6 = [NSString stringWithString:v5];

  _Block_object_dispose(v14, 8);

  return v6;
}

- (id)unitTest_accountStatusNumberForAccountID:(id)a3
{
  v4 = a3;
  v5 = [(ICCloudContext *)self accountStatusNumberByAccountID];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)fetchUserRecordOperationWithContainer:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[CKFetchRecordsOperation fetchCurrentUserRecordOperation];
  [(ICCloudContext *)self configureOperation:v8];
  v9 = [v6 privateCloudDatabase];
  [v8 setDatabase:v9];

  objc_initWeak(&location, v8);
  v10 = +[REMLog cloudkit];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Fetching user record in cloud context {operation: %{public}@}", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x3032000000;
  v23 = sub_10006D330;
  v24 = sub_10006D340;
  v25 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000761C4;
  v19[3] = &unk_1008DA228;
  v19[4] = &buf;
  [v8 setPerRecordCompletionBlock:v19];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000762F0;
  v15[3] = &unk_1008DA250;
  objc_copyWeak(&v18, &location);
  v11 = v7;
  v16 = v11;
  p_buf = &buf;
  [v8 setFetchRecordsCompletionBlock:v15];
  v12 = objc_alloc_init(CKOperationGroup);
  [v12 setName:@"FetchUserRecord"];
  [v12 setQuantity:1];
  [v12 setExpectedSendSize:1];
  [v12 setExpectedReceiveSize:1];
  [v8 setGroup:v12];
  v13 = v8;

  objc_destroyWeak(&v18);
  _Block_object_dispose(&buf, 8);

  objc_destroyWeak(&location);

  return v13;
}

- (id)fetchUserRecordOperationWithAccountID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(ICCloudContext *)self containerForAccountID:a3];
  v8 = [(ICCloudContext *)self fetchUserRecordOperationWithContainer:v7 completionHandler:v6];

  return v8;
}

- (void)fetchUserRecordWithContainer:(id)a3 completionHandler:(id)a4
{
  v5 = [(ICCloudContext *)self fetchUserRecordOperationWithContainer:a3 completionHandler:a4];
  v4 = [v5 database];
  [v4 addOperation:v5];
}

- (void)fetchUserRecordWithAccountID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    v8 = [(ICCloudContext *)self containerForAccountID:v6];
    [(ICCloudContext *)self fetchUserRecordWithContainer:v8 completionHandler:v7];
  }

  else
  {
    v9 = +[REMLog cloudkit];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_1007612E4();
    }

    if (v7)
    {
      v10 = ICGenericError();
      v7[2](v7, 0, v10);
    }
  }
}

- (void)operationQueueFetchUserRecordWithAccountID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICCloudContext *)self operationQueue];
  v9 = [(ICCloudContext *)self fetchUserRecordOperationWithAccountID:v7 completionHandler:v6];

  [v8 addOperation:v9];

  [(ICCloudContext *)self errorAndPromptToFileRadarWithICTap2RadarTypeTooManyOperationsInOperationQueueIfNecessary];
}

- (void)updateUserRecordWithAccountID:(id)a3 updateFunction:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 length])
  {
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1000767E0;
    v18 = &unk_1008DA2A0;
    v21 = v9;
    v19 = self;
    v20 = v8;
    v22 = v10;
    v11 = [(ICCloudContext *)self fetchUserRecordOperationWithAccountID:v20 completionHandler:&v15];
    v12 = [v11 database];
    [v12 addOperation:v11];

    v13 = v21;
  }

  else
  {
    v14 = +[REMLog cloudkit];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_100761318();
    }

    v13 = ICGenericError();
    (*(v10 + 2))(v10, v13);
  }
}

+ (id)userRecordNameForContainer:(id)a3
{
  v3 = a3;
  dispatch_assert_queue_not_V2(&_dispatch_main_q);
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10006D330;
  v15 = sub_10006D340;
  v16 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100076AE8;
  v8[3] = &unk_1008DA2C8;
  v10 = &v11;
  v4 = dispatch_semaphore_create(0);
  v9 = v4;
  [v3 fetchUserRecordIDWithCompletionHandler:v8];
  v5 = dispatch_time(0, 120000000000);
  dispatch_semaphore_wait(v4, v5);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (id)existingCloudObjectForRecord:(id)a3 accountID:(id)a4 context:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 recordID];
  v12 = [v10 recordType];

  v13 = [(ICCloudContext *)self existingCloudObjectForRecordID:v11 recordType:v12 accountID:v9 context:v8];

  return v13;
}

- (id)existingCloudObjectForRecordID:(id)a3 recordType:(id)a4 accountID:(id)a5 context:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10 || !v12)
  {
    if (v10)
    {
      if (v12)
      {
LABEL_7:
        v16 = 0;
        goto LABEL_19;
      }
    }

    else
    {
      sub_1007613EC();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    sub_1007614A4(v11, v10);
    goto LABEL_7;
  }

  if (v11)
  {
    v14 = [(ICCloudContext *)self cloudObjectClassesByRecordType];
    v15 = [v14 objectForKeyedSubscript:v11];

    v16 = [v15 existingCloudObjectForRecordID:v10 accountID:v12 context:v13];
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v17 = [(ICCloudContext *)self cloudObjectClassesByRecordType];
    v18 = [v17 allValues];

    v19 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v26;
      while (2)
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [*(*(&v25 + 1) + 8 * i) existingCloudObjectForRecordID:v10 accountID:v12 context:v13];
          if (v23)
          {
            v16 = v23;
            goto LABEL_18;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    v16 = 0;
LABEL_18:
  }

LABEL_19:

  return v16;
}

- (id)newCloudObjectForRecord:(id)a3 accountID:(id)a4 context:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(ICCloudContext *)self cloudObjectClassesByRecordType];
  v12 = [v10 recordType];
  v13 = [v11 objectForKeyedSubscript:v12];

  v14 = [v13 newCloudObjectForRecord:v10 accountID:v9 context:v8];
  return v14;
}

- (id)newPlaceholderObjectForRecordID:(id)a3 account:(id)a4 recordType:(id)a5 context:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(ICCloudContext *)self cloudObjectClassesByRecordType];
  v15 = [v14 objectForKeyedSubscript:v11];

  v16 = [v15 newPlaceholderObjectForRecordID:v13 account:v12 context:v10];
  return v16;
}

- (void)fetchRecordIDs:(id)a3 accountID:(id)a4 operationGroupName:(id)a5 runExclusively:(BOOL)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [(ICCloudContext *)self processingQueue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000770D8;
  v21[3] = &unk_1008DA2F0;
  v21[4] = self;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v26 = a6;
  v25 = v15;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  dispatch_async(v16, v21);
}

- (void)addFetchOperationsForRecordIDs:(id)a3 accountID:(id)a4 operationGroupName:(id)a5 runExclusively:(BOOL)a6 completionHandler:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = +[REMLog cloudkit];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v39 = [v12 count];
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Adding operations to fetch %ld records", buf, 0xCu);
  }

  v17 = [(ICCloudContext *)self operationsToFetchRecordIDs:v12 operationGroupName:v14 accountID:v13];
  if (v8)
  {
    v18 = objc_opt_class();
    v19 = [(ICCloudContext *)self operationQueue];
    [v18 addRunExclusivelyOperations:v17 operationQueue:v19];

    if (!v15)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v20 = [(ICCloudContext *)self operationQueue];
    [v20 addOperations:v17 waitUntilFinished:0];

    [(ICCloudContext *)self errorAndPromptToFileRadarWithICTap2RadarTypeTooManyOperationsInOperationQueueIfNecessary];
    if (!v15)
    {
      goto LABEL_15;
    }
  }

  v29 = v13;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000773DC;
  v34[3] = &unk_1008DA318;
  v34[4] = self;
  v21 = v17;
  v35 = v21;
  v36 = v15;
  v22 = [ICNSBlockOperation blockOperationWithBlock:v34];
  [v22 setName:ICNSBlockOperationNameFetchCompletion];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v23 = v21;
  v24 = [v23 countByEnumeratingWithState:&v30 objects:v37 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v31;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v31 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [v22 addDependency:*(*(&v30 + 1) + 8 * i)];
      }

      v25 = [v23 countByEnumeratingWithState:&v30 objects:v37 count:16];
    }

    while (v25);
  }

  v28 = [(ICCloudContext *)self operationQueue];
  [v28 addOperation:v22];

  [(ICCloudContext *)self errorAndPromptToFileRadarWithICTap2RadarTypeTooManyOperationsInOperationQueueIfNecessary];
  v13 = v29;
LABEL_15:
}

- (id)operationsToFetchRecordIDs:(id)a3 operationGroupName:(id)a4 accountID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![v10 length])
  {
    v12 = +[REMLog cloudkit];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_100761564();
    }

    goto LABEL_19;
  }

  if (![v8 count])
  {
    v12 = +[REMLog cloudkit];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LODWORD(v37) = 138543362;
      *(&v37 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "No record IDs to fetch, no fetch record operation is created for accountID: %{public}@", &v37, 0xCu);
    }

LABEL_19:
    v23 = &__NSArray0__struct;
    goto LABEL_20;
  }

  v11 = +[NSMutableArray array];
  v12 = [objc_opt_class() objectsByDatabaseScope:v8];
  *&v37 = 0;
  *(&v37 + 1) = &v37;
  v38 = 0x2020000000;
  v39 = 0;
  [(ICCloudContext *)self containerForAccountID:v10];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100077940;
  v13 = v29[3] = &unk_1008DA340;
  v30 = v13;
  v31 = self;
  v14 = v11;
  v32 = v14;
  v33 = &v37;
  [v12 enumerateKeysAndObjectsUsingBlock:v29];
  if (!v9)
  {
    v9 = @"FetchIndividualRecords";
  }

  v15 = objc_alloc_init(CKOperationGroup);
  [v15 setName:v9];
  [v15 setQuantity:{objc_msgSend(v8, "count")}];
  [v15 setExpectedSendSize:1];
  v16 = *(*(&v37 + 1) + 24);
  [v15 setExpectedReceiveSize:CKOperationGroupTransferSizeForBytes()];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = v14;
  v18 = [v17 countByEnumeratingWithState:&v25 objects:v36 count:16];
  if (v18)
  {
    v19 = *v26;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v25 + 1) + 8 * i) setGroup:{v15, v25}];
      }

      v18 = [v17 countByEnumeratingWithState:&v25 objects:v36 count:16];
    }

    while (v18);
  }

  v21 = +[REMLog cloudkit];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = [v15 ic_loggingDescription];
    *buf = 138543362;
    v35 = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Fetching records with operation group %{public}@", buf, 0xCu);
  }

  v23 = v17;
  _Block_object_dispose(&v37, 8);
LABEL_20:

  return v23;
}

- (id)operationsToFetchRecordIDs:(id)a3 database:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray array];
  v9 = [v6 ic_arrayByGroupingIntoArraysWithMaxCount:100];
  if ([v9 count] >= 2)
  {
    v10 = +[REMLog cloudkit];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v6 count];
      [v7 databaseScope];
      v12 = CKDatabaseScopeString();
      *buf = 67109634;
      v26 = v11;
      v27 = 2114;
      v28 = v12;
      v29 = 1024;
      v30 = [v9 count];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Grouping fetch requests for %d %{public}@ records into %d batches", buf, 0x18u);
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [(ICCloudContext *)self operationToFetchRecordIDs:*(*(&v20 + 1) + 8 * i) database:v7, v20];
        [v8 addObject:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  return v8;
}

- (id)operationToFetchRecordIDs:(id)a3 database:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[CKFetchRecordsOperation alloc] initWithRecordIDs:v6];
  [(ICCloudContext *)self configureOperation:v8];
  [v8 setDatabase:v7];
  objc_initWeak(&location, v8);
  v9 = +[REMLog cloudkit];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v8 ic_loggingDescription];
    *buf = 138543362;
    v33 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Creating %{public}@", buf, 0xCu);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v12)
  {
    v13 = *v28;
    do
    {
      v14 = 0;
      do
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v27 + 1) + 8 * v14);
        v16 = +[REMLog cloudkit];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v17 = [v15 ic_loggingDescription];
          v18 = [v8 ic_loggingDescription];
          *buf = 138543618;
          v33 = v17;
          v34 = 2114;
          v35 = v18;
          _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Will fetch %{public}@ %{public}@", buf, 0x16u);
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v12);
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100078050;
  v25[3] = &unk_1008DA368;
  v25[4] = self;
  objc_copyWeak(&v26, &location);
  [v8 setPerRecordProgressBlock:v25];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000780D0;
  v23[3] = &unk_1008DA390;
  v23[4] = self;
  objc_copyWeak(&v24, &location);
  [v8 setPerRecordCompletionBlock:v23];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000781B0;
  v21[3] = &unk_1008DA3B8;
  v21[4] = self;
  objc_copyWeak(&v22, &location);
  [v8 setFetchRecordsCompletionBlock:v21];
  v19 = v8;
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);

  objc_destroyWeak(&location);

  return v19;
}

- (void)fetchOperation:(id)a3 progressChangedWithRecordID:(id)a4 progress:(double)a5
{
  v7 = a3;
  v8 = a4;
  if (((a5 * 100.0) - 1) <= 0x62)
  {
    v9 = +[REMLog cloudkit];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [v8 ic_loggingDescription];
      v11 = [v7 ic_loggingDescription];
      v12 = 138543874;
      v13 = v10;
      v14 = 1024;
      v15 = (a5 * 100.0);
      v16 = 2114;
      v17 = v11;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Progress fetching %{public}@: %d%% %{public}@", &v12, 0x1Cu);
    }
  }
}

- (void)fetchOperation:(id)a3 recordWasFetchedWithRecordID:(id)a4 record:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(ICCloudContext *)self processingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100078498;
  block[3] = &unk_1008DA408;
  block[4] = self;
  v20 = v10;
  v21 = v13;
  v22 = v11;
  v23 = v12;
  v15 = v12;
  v16 = v11;
  v17 = v13;
  v18 = v10;
  dispatch_async(v14, block);
}

- (void)fetchOperation:(id)a3 didCompleteWithRecordsByRecordID:(id)a4 error:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(ICCloudContext *)self processingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100078ABC;
  block[3] = &unk_1008D9C10;
  v13 = v8;
  v14 = v7;
  v15 = self;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, block);
}

- (void)didFetchShare:(id)a3 accountID:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 rootRecordID];
  if (!v11)
  {
    v12 = [v8 objectForKeyedSubscript:@"RootRecord"];
    if (v12)
    {
      v13 = [CKRecordID alloc];
      v14 = [v12 recordID];
      v15 = [v14 recordName];
      v16 = [v8 recordID];
      v17 = [v16 zoneID];
      v11 = [v13 initWithRecordName:v15 zoneID:v17];
    }

    else
    {
      v11 = 0;
    }
  }

  v18 = [v8 objectForKeyedSubscript:@"RootRecordType"];
  if (!v18)
  {
    v27 = [v8 creatorUserRecordID];
    v20 = [v27 recordName];

    if (v20 && ![v20 isEqualToString:CKCurrentUserDefaultName])
    {
      v28 = +[REMLog cloudkit];
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_28;
      }

      v30 = [v8 ic_loggingDescription];
      v36 = [v11 ic_loggingDescription];
      *buf = 138412802;
      v41 = v30;
      v42 = 2114;
      v43 = v36;
      v44 = 2112;
      v45 = v20;
      _os_log_fault_impl(&_mh_execute_header, v28, OS_LOG_TYPE_FAULT, "No root record type in share %@ for %{public}@, shareCreatorRecordName %@", buf, 0x20u);
    }

    else
    {
      v28 = [REMCDAccount cloudKitAccountWithCKIdentifier:v9 context:v10];
      if (!v28)
      {
        v29 = +[REMLog cloudkit];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_100761900(v9, v11);
        }
      }

      v30 = +[REMLog cloudkit];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        v39 = [v8 ic_loggingDescription];
        v34 = [v11 ic_loggingDescription];
        [v28 ckUserRecordName];
        *buf = 138412802;
        v41 = v39;
        v42 = 2114;
        v43 = v34;
        v45 = v44 = 2112;
        v35 = v45;
        _os_log_fault_impl(&_mh_execute_header, v30, OS_LOG_TYPE_FAULT, "No root record type in share %@ for %{public}@, default shareUserRecordName %@", buf, 0x20u);
      }
    }

LABEL_28:
    goto LABEL_29;
  }

  if (v11)
  {
    v19 = [(ICCloudContext *)self existingCloudObjectForRecordID:v11 recordType:v18 accountID:v9 context:v10];
    if (v19)
    {
      v20 = v19;
LABEL_10:
      v21 = +[REMLog cloudkit];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v8 recordID];
        v23 = [v22 ic_loggingDescription];
        v24 = [v20 recordType];
        [v20 recordID];
        v25 = v38 = v9;
        [v25 ic_loggingDescription];
        v26 = v37 = v10;
        *buf = 138543874;
        v41 = v23;
        v42 = 2114;
        v43 = v24;
        v44 = 2114;
        v45 = v26;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received share %{public}@ for %{public}@ %{public}@", buf, 0x20u);

        v9 = v38;
        v10 = v37;
      }

      [v20 setServerShareIfNewer:v8];
      goto LABEL_29;
    }

    v31 = [REMCDAccount cloudKitAccountWithCKIdentifier:v9 context:v10];
    if (v31)
    {
      v32 = v31;
      v20 = [(ICCloudContext *)self newPlaceholderObjectForRecordID:v11 account:v31 recordType:v18 context:v10];

      if (v20)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v33 = +[REMLog cloudkit];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v41 = v9;
        v42 = 2114;
        v43 = v11;
        v44 = 2114;
        v45 = v18;
        _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "didFetchShare: Cannot get CK account {ckIdentifier: %{public}@} for newPlaceholderObjectForRecordID {record: %{public}@, rootRecordType: %{public}@}", buf, 0x20u);
      }
    }

    v20 = +[REMLog cloudkit];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1007617B8(v8);
    }
  }

  else
  {
    v20 = +[REMLog cloudkit];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      sub_10076185C(v8);
    }
  }

LABEL_29:
}

- (void)deleteSharesForObjects:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [ICCloudContext objectsByAccount:v6];
  if ([v8 count])
  {
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3032000000;
    v15[3] = sub_10006D330;
    v15[4] = sub_10006D340;
    v16 = 0;
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x2020000000;
    v14[3] = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000792F0;
    v9[3] = &unk_1008DA458;
    v9[4] = self;
    v12 = v15;
    v10 = v8;
    v13 = v14;
    v11 = v7;
    [v10 enumerateKeysAndObjectsUsingBlock:v9];

    _Block_object_dispose(v14, 8);
    _Block_object_dispose(v15, 8);
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (void)deleteSharesForObjects:(id)a3 accountID:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(NSMutableArray);
  v12 = objc_alloc_init(NSMutableArray);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v13 = v8;
  v14 = [v13 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v29 + 1) + 8 * i);
        if ([v18 isSharedRootObject])
        {
          [v11 addObject:v18];
          v19 = [v18 objectID];
          [v12 addObject:v19];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v15);
  }

  if ([v11 count])
  {
    v20 = +[REMLog cloudkit];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v11 count];
      *buf = 138543618;
      v34 = v9;
      v35 = 2048;
      v36 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Will Delete Shares in account ID %{public}@ for %lu Objects:", buf, 0x16u);
    }

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000797F8;
    v27[3] = &unk_1008DA480;
    v22 = v9;
    v28 = v22;
    [v11 enumerateObjectsUsingBlock:v27];
    v23 = [(ICCloudContext *)self operationsToModifyRecordsForCloudObjectsToSave:0 delete:0 deleteShares:v11 operationGroupName:@"DeleteShares" addDependencies:0 accountID:v22];
    v24 = [(ICCloudContext *)self operationQueue];
    [v24 addOperations:v23 waitUntilFinished:0];

    [(ICCloudContext *)self errorAndPromptToFileRadarWithICTap2RadarTypeTooManyOperationsInOperationQueueIfNecessary];
    v25 = [(ICCloudContext *)self fetchAndCompletionOperationWithDeleteShareObjects:v11 accountID:v22 dependencyOperations:v23 completionHandler:v10];
    v26 = [(ICCloudContext *)self operationQueue];
    [v26 addOperation:v25];

    [(ICCloudContext *)self errorAndPromptToFileRadarWithICTap2RadarTypeTooManyOperationsInOperationQueueIfNecessary];
  }

  else if (v10)
  {
    v10[2](v10, 0);
  }
}

- (id)fetchAndCompletionOperationWithDeleteShareObjects:(id)a3 accountID:(id)a4 dependencyOperations:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v39 = a5;
  v37 = a6;
  v12 = objc_alloc_init(NSMutableArray);
  v13 = objc_alloc_init(NSMutableSet);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v14 = v10;
  v15 = [v14 countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v53;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v53 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v52 + 1) + 8 * i);
        if ([v19 isSharedRootObject])
        {
          v20 = [v19 objectID];
          [v12 addObject:v20];

          v21 = [v19 recordID];
          v22 = v21;
          if (v21)
          {
            v23 = [v21 zoneID];
            [v13 addObject:v23];
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v16);
  }

  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_100079C8C;
  v47[3] = &unk_1008DA510;
  v47[4] = self;
  v24 = v13;
  v48 = v24;
  v38 = v11;
  v49 = v38;
  v25 = v12;
  v50 = v25;
  v26 = v37;
  v51 = v26;
  v27 = objc_retainBlock(v47);
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_10007A058;
  v44[3] = &unk_1008DA318;
  v44[4] = self;
  v28 = v39;
  v45 = v28;
  v29 = v27;
  v46 = v29;
  v30 = [ICNSBlockOperation blockOperationWithBlock:v44];
  [v30 setName:ICNSBlockOperationNameDeleteSharesForObjectsFetchAndCompletion];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v31 = v28;
  v32 = [v31 countByEnumeratingWithState:&v40 objects:v56 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v41;
    do
    {
      for (j = 0; j != v33; j = j + 1)
      {
        if (*v41 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [v30 addDependency:*(*(&v40 + 1) + 8 * j)];
      }

      v33 = [v31 countByEnumeratingWithState:&v40 objects:v56 count:16];
    }

    while (v33);
  }

  return v30;
}

- (id)operationsToModifyRecordsForCloudObjectsToSave:(id)a3 delete:(id)a4 deleteShares:(id)a5 operationGroupName:(id)a6 addDependencies:(BOOL)a7 accountID:(id)a8
{
  v13 = a3;
  v75 = a4;
  v74 = a5;
  v73 = a6;
  v77 = a8;
  v72 = v13;
  if (![v77 length])
  {
    v57 = +[REMLog cloudkit];
    if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
    {
      sub_100761A5C();
    }

    goto LABEL_72;
  }

  if (![v13 count] && !objc_msgSend(v75, "count") && !objc_msgSend(v74, "count"))
  {
    v57 = +[REMLog cloudkit];
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      *&buf[4] = v77;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "No cloud objects to save or delete or delelet-share, no modify record operation is created for accountID: %{public}@", buf, 0xCu);
    }

LABEL_72:
    v69 = &__NSArray0__struct;
    goto LABEL_73;
  }

  v71 = a7;
  if ([v13 count])
  {
    v14 = +[REMLog cloudkit];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      *&buf[4] = [v13 count];
      *&buf[12] = 2114;
      *&buf[14] = v77;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Creating operations to push %ld records for account ID %{public}@", buf, 0x16u);
    }
  }

  if ([v75 count])
  {
    v15 = +[REMLog cloudkit];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v75 count];
      *buf = 134218242;
      *&buf[4] = v16;
      *&buf[12] = 2114;
      *&buf[14] = v77;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Creating operations to delete %ld records for account ID %{public}@", buf, 0x16u);
    }
  }

  if ([v74 count])
  {
    v17 = +[REMLog cloudkit];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [v74 count];
      *buf = 134218242;
      *&buf[4] = v18;
      *&buf[12] = 2114;
      *&buf[14] = v77;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Creating operations to delete %ld share records for account ID %{public}@", buf, 0x16u);
    }
  }

  v79 = +[NSMutableDictionary dictionary];
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v19 = v13;
  v20 = [v19 countByEnumeratingWithState:&v107 objects:v119 count:16];
  if (v20)
  {
    v21 = *v108;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v108 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v107 + 1) + 8 * i);
        v24 = [v23 recordID];
        if (v24)
        {
          [v79 setObject:v23 forKeyedSubscript:v24];
        }
      }

      v20 = [v19 countByEnumeratingWithState:&v107 objects:v119 count:16];
    }

    while (v20);
  }

  v25 = [v19 mutableCopy];
  v26 = +[NSMutableArray array];
  v27 = objc_opt_class();
  v104[0] = _NSConcreteStackBlock;
  v104[1] = 3221225472;
  v104[2] = sub_10007ADB0;
  v104[3] = &unk_1008DA538;
  v78 = v25;
  v105 = v78;
  v80 = v26;
  v106 = v80;
  [v27 recursivelyFixCrossZoneRelationship:v19 perObjectHandler:v104];
  if ([v80 count])
  {
    v28 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Records with cross zone relationship are found. Will try to delete old records and upload new records. {count: %lu}", [v80 count]);
    [objc_opt_class() faultAndPromptToFileRadarWithICTap2RadarType:4 logMessage:v28];
  }

  v29 = v73;
  if (!v73)
  {
    v29 = @"ModifyRecords";
  }

  v73 = v29;
  v82 = objc_alloc_init(CKOperationGroup);
  [v82 setName:v73];
  [v82 setQuantity:{objc_msgSend(v74, "count") + objc_msgSend(v78, "count") + objc_msgSend(v80, "count") + objc_msgSend(v75, "count")}];
  [v82 setExpectedReceiveSize:1];
  v81 = +[NSMutableArray array];
  v30 = [objc_opt_class() deduplicatedRecordsForCloudObjects:v75];
  [v80 addObjectsFromArray:v30];

  v84 = +[NSMutableDictionary dictionary];
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v31 = v74;
  v32 = [v31 countByEnumeratingWithState:&v100 objects:v118 count:16];
  if (v32)
  {
    v33 = *v101;
    do
    {
      for (j = 0; j != v32; j = j + 1)
      {
        if (*v101 != v33)
        {
          objc_enumerationMutation(v31);
        }

        v35 = *(*(&v100 + 1) + 8 * j);
        v36 = [v35 ckServerShare];
        v37 = v36;
        if (v36)
        {
          if ([v36 ic_isOwnedByCurrentUser])
          {
            [v35 setCkServerShare:0];
            [v78 addObject:v35];
          }

          [v80 addObject:v37];
          v38 = [v35 recordID];
          if (v38)
          {
            v39 = [v35 recordID];
            v40 = [v37 recordID];
            [v84 setObject:v39 forKeyedSubscript:v40];
          }

          else
          {
            v39 = +[REMLog cloudkit];
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              v43 = [v35 shortLoggingDescription];
              *buf = 138543618;
              *&buf[4] = v43;
              *&buf[12] = 2114;
              *&buf[14] = v77;
              _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "No root record ID when trying to delete share for %{public}@ for account ID %{public}@", buf, 0x16u);
            }
          }
        }

        else
        {
          v38 = +[REMLog cloudkit];
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v41 = [v35 ckServerRecord];
            v42 = [v41 ic_loggingDescription];
            *buf = 138543618;
            *&buf[4] = v42;
            *&buf[12] = 2114;
            *&buf[14] = v77;
            _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Record to delete share from doesn't have a server share %{public}@ for accountID %{public}@", buf, 0x16u);
          }
        }
      }

      v32 = [v31 countByEnumeratingWithState:&v100 objects:v118 count:16];
    }

    while (v32);
  }

  v44 = [objc_opt_class() deduplicatedRecordsForCloudObjects:v78];
  v76 = [v44 mutableCopy];

  [v80 ic_removeRecordsWithSameCKRecordIDInRecords:v76];
  v45 = [objc_opt_class() objectsByDatabaseScope:v76];
  v46 = [objc_opt_class() objectsByDatabaseScope:v80];
  v47 = [(ICCloudContext *)self containerForAccountID:v77];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v48 = [&off_100905560 countByEnumeratingWithState:&v96 objects:v117 count:16];
  if (v48)
  {
    v49 = *v97;
    do
    {
      for (k = 0; k != v48; k = k + 1)
      {
        if (*v97 != v49)
        {
          objc_enumerationMutation(&off_100905560);
        }

        v51 = *(*(&v96 + 1) + 8 * k);
        v52 = [v47 databaseWithDatabaseScope:{objc_msgSend(v51, "integerValue")}];
        v53 = [v45 objectForKeyedSubscript:v51];
        v54 = [v46 objectForKeyedSubscript:v51];
        v55 = [(ICCloudContext *)self operationsToModifyRecordsToSave:v53 delete:v54 rootRecordIDsByShareID:v84 database:v52];
        [v81 addObjectsFromArray:v55];
      }

      v48 = [&off_100905560 countByEnumeratingWithState:&v96 objects:v117 count:16];
    }

    while (v48);
  }

  v56 = [(ICCloudContext *)self operationToSaveZonesIfNecessaryForAccountID:v77];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v116 = 0;
  v89[0] = _NSConcreteStackBlock;
  v89[1] = 3221225472;
  v89[2] = sub_10007AE1C;
  v89[3] = &unk_1008DA560;
  v57 = v79;
  v90 = v57;
  v91 = self;
  v94 = buf;
  v95 = v71;
  v58 = v56;
  v92 = v58;
  v59 = v81;
  v93 = v59;
  [v59 enumerateObjectsUsingBlock:v89];
  v60 = *(*&buf[8] + 24);
  [v82 setExpectedSendSize:CKOperationGroupTransferSizeForBytes()];
  if (v58)
  {
    [v59 addObject:v58];
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v61 = v59;
  v62 = [v61 countByEnumeratingWithState:&v85 objects:v114 count:16];
  if (v62)
  {
    v63 = *v86;
    do
    {
      for (m = 0; m != v62; m = m + 1)
      {
        if (*v86 != v63)
        {
          objc_enumerationMutation(v61);
        }

        [*(*(&v85 + 1) + 8 * m) setGroup:v82];
      }

      v62 = [v61 countByEnumeratingWithState:&v85 objects:v114 count:16];
    }

    while (v62);
  }

  if ([v61 count] >= 2)
  {
    v65 = +[REMLog cloudkit];
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      sub_100761A14(v113, [v61 count], v65);
    }
  }

  v66 = +[REMLog cloudkit];
  if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
  {
    v67 = [v82 ic_loggingDescription];
    *v111 = 138543362;
    v112 = v67;
    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_INFO, "Modifying records with operation group %{public}@", v111, 0xCu);
  }

  v68 = v93;
  v69 = v61;

  _Block_object_dispose(buf, 8);
LABEL_73:

  return v69;
}

+ (void)batchRecordsToSave:(id)a3 delete:(id)a4 maxRecordCountPerBatch:(unint64_t)a5 maxRecordSizePerBatch:(unint64_t)a6 withBlock:(id)a7
{
  v9 = a3;
  v10 = a4;
  v11 = a7;
  v12 = +[REMLog cloudkit];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v57 = [v9 ic_map:&stru_1008DA5A0];
    v58 = [v10 ic_map:&stru_1008DA5C0];
    *buf = 138413058;
    *v75 = v57;
    *&v75[8] = 2112;
    *&v75[10] = v58;
    *&v75[18] = 2048;
    *&v75[20] = a5;
    v76 = 2048;
    v77 = a6;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Batching with recordsToSave:%@ recordsToDelete:%@, maxRecordCountPerBatch:%lu, maxRecordSizePerBatch:%lu", buf, 0x2Au);
  }

  v60 = v9;
  v13 = [v9 mutableCopy];
  v59 = v10;
  v14 = [v10 mutableCopy];
  v15 = 0;
  v61 = v11;
  v63 = v14;
  while ([v13 count] || objc_msgSend(v14, "count"))
  {
    v62 = v15 + 1;
    v16 = [NSMutableArray arrayWithCapacity:a5];
    v17 = [NSMutableArray arrayWithCapacity:a5];
    v18 = 0;
    while (1)
    {
      if ([v13 count])
      {
        v19 = [v13 firstObject];
        v20 = [v19 recordType];
        v21 = +[REMCDAlarm ckRecordType];
        v22 = [v20 isEqualToString:v21];

        if ([v13 count] < 2)
        {
          v23 = 0;
        }

        else
        {
          v23 = [v13 objectAtIndexedSubscript:1];
        }

        v27 = [v23 recordType];
        v28 = +[REMCDAlarmTrigger ckRecordType];
        v29 = [v27 isEqualToString:v28];

        v30 = [v19 size];
        if ((v22 & v29) == 1)
        {
          v31 = &v18[v30 + [v23 size]];
          v32 = [v16 count];
          v33 = [v17 count] + v32 + 2;
          v34 = v31 >= a6 || v33 > a5;
          v35 = v34;
          v26 = v34 && v18 == 0;
          if (v26)
          {
            v36 = +[REMLog cloudkit];
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              v47 = [v19 recordID];
              v48 = [v23 recordID];
              *buf = 138543618;
              *v75 = v47;
              *&v75[8] = 2114;
              *&v75[10] = v48;
              _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Ending batch because an impossible batch was detected ICCloudContext. Alarm: %{public}@ AlarmTrigger: %{public}@", buf, 0x16u);
            }

LABEL_50:
            v42 = +[REMLog cloudkit];
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
            {
              v45 = [v19 recordID];
              v46 = [v23 recordID];
              *buf = 138412546;
              *v75 = v45;
              *&v75[8] = 2112;
              *&v75[10] = v46;
              _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "Adding Alarm/AlarmTrigger pair to batch: %@ %@", buf, 0x16u);
            }

            [v13 removeObjectsInRange:{0, 2}];
            v73[0] = v19;
            v73[1] = v23;
            v43 = [NSArray arrayWithObjects:v73 count:2];
            [v16 addObjectsFromArray:v43];

            v18 = v31;
LABEL_53:

            goto LABEL_54;
          }

          if ((v35 & 1) == 0)
          {
            goto LABEL_50;
          }

          v38 = +[REMLog cloudkit];
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            v49 = v33 <= a5;
            v50 = [v19 recordID];
            v51 = [v23 recordID];
            *buf = 67109634;
            *v75 = v49;
            *&v75[4] = 2112;
            *&v75[6] = v50;
            *&v75[14] = 2112;
            *&v75[16] = v51;
            _os_log_debug_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "Ending batch because Alarm/AlarmTrigger pair does not fit isCountOK: %d Alarm: %@ AlarmTrigger: %@", buf, 0x1Cu);
          }
        }

        else
        {
          v37 = &v18[v30];
          if (!v18 || v37 < a6)
          {
            if (v18)
            {
              v39 = 0;
            }

            else
            {
              v39 = v37 >= a6;
            }

            v26 = v39;
            if (v26)
            {
              v40 = +[REMLog cloudkit];
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                sub_100761AE8(v72, v19);
              }
            }

            v41 = +[REMLog cloudkit];
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
            {
              sub_100761B50(v71, v19);
            }

            [v13 removeObjectAtIndex:0];
            [v16 addObject:v19];
            v18 = v37;
            goto LABEL_53;
          }

          v38 = +[REMLog cloudkit];
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            sub_100761A90(v70, v19);
          }
        }

        v26 = 1;
        goto LABEL_53;
      }

      if ([v63 count])
      {
        v24 = [v63 firstObject];
        v19 = [v24 recordID];

        v25 = +[REMLog cloudkit];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *v75 = v19;
          _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Adding record to delete batch: %@", buf, 0xCu);
        }

        [v63 removeObjectAtIndex:0];
        [v17 addObject:v19];
        v26 = 0;
      }

      else
      {
        v19 = +[REMLog cloudkit];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          sub_100761BA8(&v68, v69);
        }

        v26 = 1;
      }

LABEL_54:

      v44 = [v16 count];
      if (&v44[[v17 count]] >= a5)
      {
        break;
      }

      if (v26)
      {
        goto LABEL_63;
      }
    }

    v52 = +[REMLog cloudkit];
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      sub_100761BE0(&v66, v67);
    }

LABEL_63:
    v53 = +[REMLog cloudkit];
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      v56 = [v16 ic_map:&stru_1008DA5E0];
      *buf = 138412546;
      *v75 = v56;
      *&v75[8] = 2112;
      *&v75[10] = v17;
      _os_log_debug_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "Finished batch with batchRecordsToSave:%@ batchRecordIDsToDelete:%@", buf, 0x16u);
    }

    v54 = [v16 copy];
    v55 = [v17 copy];
    v11 = v61;
    v15 = v62;
    (*(v61 + 2))(v61, v62, v54, v55);

    v14 = v63;
  }
}

- (id)operationsToModifyRecordsToSave:(id)a3 delete:(id)a4 rootRecordIDsByShareID:(id)a5 database:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[NSMutableArray array];
  if (!v10)
  {
    v16 = 0;
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_5:
    v25 = 0;
    goto LABEL_6;
  }

  v15 = [objc_opt_class() sortedRecords:v10];
  v16 = [v15 mutableCopy];

  if (!v11)
  {
    goto LABEL_5;
  }

LABEL_3:
  [objc_opt_class() sortedRecords:v11];
  v33 = v13;
  v17 = v12;
  v18 = v16;
  v19 = v11;
  v20 = v10;
  v22 = v21 = v14;
  v23 = [v22 reverseObjectEnumerator];
  v24 = [v23 allObjects];
  v25 = [v24 mutableCopy];

  v14 = v21;
  v10 = v20;
  v11 = v19;
  v16 = v18;
  v12 = v17;
  v13 = v33;
LABEL_6:
  v26 = objc_opt_class();
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10007BB5C;
  v34[3] = &unk_1008DA608;
  v34[4] = self;
  v35 = v12;
  v36 = v13;
  v27 = v14;
  v37 = v27;
  v28 = v13;
  v29 = v12;
  [v26 batchRecordsToSave:v16 delete:v25 maxRecordCountPerBatch:100 maxRecordSizePerBatch:0x200000 withBlock:v34];
  v30 = v37;
  v31 = v27;

  return v27;
}

- (id)operationToModifyRecordsToSave:(id)a3 delete:(id)a4 rootRecordIDsByShareID:(id)a5 database:(id)a6
{
  v10 = a3;
  v11 = a4;
  v37 = a5;
  v12 = a6;
  v13 = +[REMLog cloudkit];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_100761C18();
  }

  v39 = v11;
  v40 = v10;
  v14 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:v10 recordIDsToDelete:v11];
  v38 = self;
  [(ICCloudContext *)self configureOperation:v14];
  v36 = v12;
  [v14 setDatabase:v12];
  v15 = +[REMLog cloudkit];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [v14 ic_loggingDescription];
    *buf = 138543362;
    v51 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Creating modify operation %{public}@", buf, 0xCu);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v17 = [v14 recordsToSave];
  v18 = [v17 countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v46;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v46 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v45 + 1) + 8 * i);
        v23 = +[REMLog cloudkit];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = [v22 ic_loggingDescription];
          v25 = [v14 ic_loggingDescription];
          *buf = 138412546;
          v51 = v24;
          v52 = 2114;
          v53 = v25;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Will push %@ %{public}@", buf, 0x16u);
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v19);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v26 = [v14 recordIDsToDelete];
  v27 = [v26 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v42;
    do
    {
      for (j = 0; j != v28; j = j + 1)
      {
        if (*v42 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v41 + 1) + 8 * j);
        v32 = +[REMLog cloudkit];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = [v31 ic_loggingDescription];
          v34 = [v14 ic_loggingDescription];
          *buf = 138543618;
          v51 = v33;
          v52 = 2114;
          v53 = v34;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Will delete %{public}@ %{public}@", buf, 0x16u);
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v28);
  }

  [(ICCloudContext *)v38 addCallbackBlocksToModifyRecordsOperation:v14 rootRecordIDsByShareID:v37];

  return v14;
}

- (void)addCallbackBlocksToModifyRecordsOperation:(id)a3 rootRecordIDsByShareID:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, v6);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10007C218;
  v17[3] = &unk_1008DA630;
  v17[4] = self;
  objc_copyWeak(&v18, &location);
  [v6 setPerRecordSaveBlock:v17];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10007C2C0;
  v14[3] = &unk_1008DA658;
  v14[4] = self;
  objc_copyWeak(&v16, &location);
  v8 = v7;
  v15 = v8;
  [v6 setPerRecordDeleteBlock:v14];
  +[NSMutableDictionary dictionary];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10007C34C;
  v12[3] = &unk_1008DA680;
  v9 = v12[4] = self;
  v13 = v9;
  [v6 setPerRecordProgressBlock:v12];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10007C498;
  v10[3] = &unk_1008DA6A8;
  v10[4] = self;
  objc_copyWeak(&v11, &location);
  [v6 setModifyRecordsCompletionBlock:v10];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)modifyRecordsOperation:(id)a3 didCompleteWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICCloudContext *)self processingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007DAF4;
  block[3] = &unk_1008D9C10;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)handleGenericPartialFailuresForError:(id)a3 operation:(id)a4
{
  v31 = a3;
  v6 = a4;
  v7 = [v6 database];
  v8 = [(ICCloudContext *)self accountIDForDatabase:v7];

  if (![v8 length])
  {
    v9 = +[REMLog cloudkit];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_1007622B4();
    }
  }

  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v10 = +[NSMutableSet set];
  v11 = +[NSMutableSet set];
  v12 = [v31 userInfo];
  v30 = [v12 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_10007E42C;
  v41[3] = &unk_1008DA798;
  v44 = &v45;
  v13 = v10;
  v42 = v13;
  v14 = v11;
  v43 = v14;
  [v30 enumerateKeysAndObjectsUsingBlock:v41];
  if (*(v46 + 24) == 1)
  {
    v15 = +[REMLog cloudkit];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100762350();
    }

    v16 = [(ICCloudContext *)self cloudContextDelegate];
    [v16 didFailPushingExceededStorageQuotaForContext:self accountID:v8];
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v13;
  v17 = [obj countByEnumeratingWithState:&v37 objects:v54 count:16];
  if (v17)
  {
    v18 = *v38;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v38 != v18)
        {
          objc_enumerationMutation(obj);
        }

        [(ICCloudContext *)self receivedZoneNotFound:*(*(&v37 + 1) + 8 * i) operation:v6, v30];
      }

      v17 = [obj countByEnumeratingWithState:&v37 objects:v54 count:16];
    }

    while (v17);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v20 = v14;
  v21 = [v20 countByEnumeratingWithState:&v33 objects:v53 count:16];
  if (v21)
  {
    v22 = *v34;
    do
    {
      v23 = 0;
      do
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v33 + 1) + 8 * v23);
        v25 = +[REMLog cloudkit];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v29 = [v24 ic_loggingDescription];
          *buf = 138543618;
          v50 = v8;
          v51 = 2114;
          v52 = v29;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "User deleted zone in account ID %{public}@: %{public}@", buf, 0x16u);
        }

        v26 = [(ICCloudContext *)self accountZoneIDsNeedingToBeSaved];
        [v26 ic_addZoneID:v24 forAccountID:v8];

        v27 = [v6 database];
        -[ICCloudContext deleteServerChangeTokenForRecordZoneID:databaseScope:accountID:](self, "deleteServerChangeTokenForRecordZoneID:databaseScope:accountID:", v24, [v27 databaseScope], v8);

        v28 = [(ICCloudContext *)self cloudContextDelegate];
        [v28 cloudContext:self userDidDeleteRecordZoneWithID:v24 accountID:v8];

        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [v20 countByEnumeratingWithState:&v33 objects:v53 count:16];
    }

    while (v21);
  }

  _Block_object_dispose(&v45, 8);
}

+ (id)sortedRecords:(id)a3
{
  v3 = a3;
  v51 = 0;
  v4 = [CKRecordGraph topologicallySortRecords:v3 withError:&v51];
  v5 = v51;
  v39 = v3;
  if (v5)
  {
    v6 = +[REMLog cloudkit];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100762430();
    }

    v7 = v3;
    v4 = v7;
  }

  v38 = v5;
  v40 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v42 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v4, "count") >> 1}];
  v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count") >> 1}];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v4;
  v9 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v48;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v48 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v47 + 1) + 8 * i);
        v14 = [v13 recordType];
        v15 = +[REMCDAlarm ckRecordType];
        v16 = [v14 isEqualToString:v15];

        if (v16)
        {
          v17 = [[NSMutableArray alloc] initWithCapacity:2];
          [v17 setObject:v13 atIndexedSubscript:0];
          [v8 addObject:v17];
          v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 count] - 1);
          v19 = [v13 recordID];
          [v42 setObject:v18 forKeyedSubscript:v19];

          continue;
        }

        v20 = [v13 recordType];
        v21 = +[REMCDAlarmTrigger ckRecordType];
        if (([v20 isEqualToString:v21] & 1) == 0)
        {

LABEL_17:
          [v40 addObject:v13];
          continue;
        }

        v22 = +[REMCDAlarmTrigger alarmReferenceCKRecordType];
        v23 = [v13 objectForKeyedSubscript:v22];

        if (!v23)
        {
          goto LABEL_17;
        }

        v24 = +[REMCDAlarmTrigger alarmReferenceCKRecordType];
        v25 = [v13 objectForKeyedSubscript:v24];

        v26 = [v25 recordID];
        v27 = [v42 objectForKeyedSubscript:v26];

        if (v27)
        {
          v28 = [v8 objectAtIndexedSubscript:{objc_msgSend(v27, "integerValue")}];
          [v28 addObject:v13];
        }

        else
        {
          [v40 addObject:v13];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v10);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v29 = v8;
  v30 = [v29 countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v44;
    do
    {
      for (j = 0; j != v31; j = j + 1)
      {
        if (*v44 != v32)
        {
          objc_enumerationMutation(v29);
        }

        [v40 addObjectsFromArray:*(*(&v43 + 1) + 8 * j)];
      }

      v31 = [v29 countByEnumeratingWithState:&v43 objects:v52 count:16];
    }

    while (v31);
  }

  v34 = [v40 count];
  if (v34 != [v39 count])
  {
    v35 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Record counts[%lu] after sorting[%lu] in ICCloudContext were not equal", [v39 count], objc_msgSend(v40, "count"));
    [objc_opt_class() faultAndPromptToFileRadarWithICTap2RadarType:2 logMessage:v35];
  }

  v36 = [v40 copy];

  return v36;
}

+ (id)objectsByAccount:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v16 = 0;
        v17 = &v16;
        v18 = 0x3032000000;
        v19 = sub_10006D330;
        v20 = sub_10006D340;
        v21 = 0;
        v9 = [v8 managedObjectContext];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_10007ED80;
        v15[3] = &unk_1008D9A28;
        v15[4] = v8;
        v15[5] = &v16;
        [v9 performBlockAndWait:v15];

        if ([v17[5] length])
        {
          v10 = [v4 objectForKeyedSubscript:v17[5]];
          if (!v10)
          {
            v10 = +[NSMutableArray array];
            [v4 setObject:v10 forKeyedSubscript:v17[5]];
          }

          [v10 addObject:v8];
        }

        else
        {
          v11 = [v8 managedObjectContext];
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_10007EDCC;
          v14[3] = &unk_1008D9990;
          v14[4] = v8;
          [v11 performBlockAndWait:v14];
        }

        _Block_object_dispose(&v16, 8);
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  return v4;
}

+ (id)objectsByDatabaseScope:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 rd_ckDatabaseScope];
        v12 = [NSNumber numberWithInteger:v11];
        v13 = [v4 objectForKeyedSubscript:v12];

        if (!v13)
        {
          v13 = +[NSMutableArray array];
          v14 = [NSNumber numberWithInteger:v11];
          [v4 setObject:v13 forKeyedSubscript:v14];
        }

        [v13 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (void)recursivelyFixCrossZoneRelationship:(id)a3 perObjectHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSMutableSet set];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v13 recordID];
        if (v14)
        {
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_10007F1C4;
          v16[3] = &unk_1008DA7C0;
          v17 = v6;
          [v13 recursivelyFixCrossZoneRelationshipWithVisitedMap:v7 perObjectHandler:v16];
          v15 = v17;
        }

        else
        {
          v15 = +[REMLog cloudkit];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            sub_100762550(&v18, v19);
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }
}

+ (id)deduplicatedRecordsForCloudObjects:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v3 count]);
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 recordID];
        if (v12)
        {
          if ([v4 containsObject:v12])
          {
            v13 = +[REMLog cloudkit];
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              sub_100762584(v22, v12);
            }
          }

          else
          {
            v13 = [v11 newlyCreatedRecord];
            if (v13)
            {
              [v4 addObject:v12];
              [v5 addObject:v13];
            }
          }
        }

        else
        {
          v13 = +[REMLog cloudkit];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            sub_100762550(&v16, v17);
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];

  return v14;
}

+ (BOOL)haveZoneIDsInAccountZoneIDs:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10007F4D0;
  v6[3] = &unk_1008DA7E8;
  v6[4] = &v7;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

+ (id)errorsFromError:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v11 = &__NSArray0__struct;
    goto LABEL_22;
  }

  v6 = [v4 domain];
  if ([v6 isEqualToString:CKErrorDomain])
  {
    v7 = [v5 code];

    if (v7 == 2)
    {
      v8 = [v5 userInfo];
      v9 = [v8 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        v10 = REMDynamicCast();
        v11 = [v10 allValues];
      }

      else
      {
        v11 = &__NSArray0__struct;
      }

      goto LABEL_22;
    }
  }

  else
  {
  }

  v12 = [v5 domain];
  if (![v12 isEqualToString:@"com.apple.reminders.cloud"])
  {

    goto LABEL_19;
  }

  v13 = [v5 code];

  if (v13 != 2)
  {
LABEL_19:
    v27 = v5;
    v11 = [NSArray arrayWithObjects:&v27 count:1];
    goto LABEL_22;
  }

  v11 = +[NSMutableArray array];
  v14 = [v5 userInfo];
  v15 = [v14 objectForKeyedSubscript:@"Errors"];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [a1 errorsFromError:{*(*(&v23 + 1) + 8 * i), v23}];
        [v11 addObjectsFromArray:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v18);
  }

LABEL_22:

  return v11;
}

+ (void)saveAndFaultIfFailWithContext:(id)a3 shouldTakeServerAsTruth:(BOOL)a4 logDescription:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  v9 = REMDynamicCast();
  v10 = v9;
  if (!v6 || !v9)
  {
    v11 = 0;
    if ([v7 ic_saveWithLogDescription:{@"%@", v8}])
    {
      goto LABEL_11;
    }

LABEL_10:
    v14 = [NSString stringWithFormat:@"Fail to save context for %@", v8];
    [objc_opt_class() faultAndPromptToFileRadarWithICTap2RadarType:3 logMessage:v14];

    goto LABEL_11;
  }

  v11 = [[RDStoreControllerValidationPolicy alloc] initWithShouldValidateMoveAcrossSharedList:0 saveShouldContinueIfCustomValidationFailed:1];
  [v10 setValidationPolicy:v11];
  v12 = [v7 ic_saveWithLogDescription:{@"%@", v8}];
  [v10 setValidationPolicy:0];
  if ((v12 & 1) == 0)
  {
    goto LABEL_10;
  }

  if (v11 && [(RDStoreControllerValidationPolicy *)v11 customValidationFailed])
  {
    v13 = +[REMLog cloudkit];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1007625DC();
    }
  }

LABEL_11:
}

+ (void)addRunExclusivelyOperations:(id)a3 operationQueue:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10007F9C4;
  v6[3] = &unk_1008D9990;
  v7 = a3;
  v5 = v7;
  [a4 addBarrierBlock:v6];
}

- (BOOL)partialError:(id)a3 containsErrorCode:(int64_t)a4
{
  v5 = a3;
  if ([v5 code] != 2)
  {
    sub_10076264C();
  }

  objc_opt_class();
  v6 = [v5 userInfo];
  v7 = [v6 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
  v8 = REMDynamicCast();
  v9 = [v8 allValues];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if ([*(*(&v17 + 1) + 8 * i) code] == a4)
        {
          v15 = 1;
          goto LABEL_13;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_13:

  return v15;
}

- (void)addDependenciesForModifyRecordsOperation:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(ICCloudContext *)self operationQueue];
  v6 = [v5 operations];
  v7 = [v6 copy];

  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          [v4 addDependency:v12];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

+ (void)faultAndPromptToFileRadarWithICTap2RadarType:(unint64_t)a3 title:(id)a4 description:(id)a5 logMessage:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = +[REMLog cloudkit];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    sub_1007626B0();
  }

  [a1 promptToFileRadarWithICTap2RadarType:a3 title:v12 description:v11 logMessage:v10 additionalFaultMessage:0];
}

+ (void)promptToFileRadarWithICTap2RadarType:(unint64_t)a3 title:(id)a4 description:(id)a5 logMessage:(id)a6 additionalFaultMessage:(BOOL)a7
{
  v7 = a7;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (+[REMSystemUtilities isInternalInstall])
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v14 = +[ICCloudConfiguration sharedConfiguration];
    [v14 tapToRadarThrottlingInterval];
    v16 = v15;
    os_unfair_lock_lock(&unk_100952978);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000803C0;
    v25[3] = &unk_1008DA850;
    v25[4] = &v26;
    v25[5] = a3;
    v25[6] = v16;
    sub_1000803C0(v25);
    os_unfair_lock_unlock(&unk_100952978);
    if (*(v27 + 24) == 1)
    {
      if (v7)
      {
        v17 = +[REMLog cloudkit];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          sub_1007626B0();
        }
      }

      v18 = REMRadarUtilitiesAlertMessageDefault;
      if ([v11 length] < 0x97)
      {
        v19 = v11;
      }

      else
      {
        v19 = [v11 substringWithRange:{0, 150}];
      }

      v20 = v19;
      v21 = [NSString stringWithFormat:@"REM: %@", v19];
      if ([v12 length] < 0x12D)
      {
        v22 = v12;
      }

      else
      {
        v22 = [v12 substringWithRange:{0, 300}];
      }

      v23 = v22;
      v24 = [NSString stringWithFormat:@"%@\n%@", v22, REMRadarUtilitiesBugDescriptionDefault];
      [REMRadarUtilities promptUserToFileBugWithAlertMessage:v18 bugTitle:v21 bugDescription:v24];
    }

    _Block_object_dispose(&v26, 8);
  }
}

+ (void)errorAndPromptToFileRadarWithICTap2RadarTypeTooManyOperationsInOperationQueueIfNecessaryForOperationQueue:(id)a3
{
  v3 = [a3 operations];
  v4 = [v3 count];
  if (v4 >= 0x51)
  {
    v5 = [NSString stringWithFormat:@"Too many operations in ICCC operation queue. {count: %lu}", v4];
    v6 = objc_alloc_init(NSMutableString);
    [v6 appendString:v5];
    [v6 appendString:{@", operations: "}];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v14 + 1) + 8 * v11) ic_shortLoggingOperationName];
          [v6 appendFormat:@"%@, ", v12];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    v13 = +[REMLog cloudkit];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100762720();
    }
  }
}

- (void)errorAndPromptToFileRadarWithICTap2RadarTypeTooManyOperationsInOperationQueueIfNecessary
{
  v3 = objc_opt_class();
  v4 = [(ICCloudContext *)self operationQueue];
  [v3 errorAndPromptToFileRadarWithICTap2RadarTypeTooManyOperationsInOperationQueueIfNecessaryForOperationQueue:v4];
}

- (id)operationToSaveZonesIfNecessaryForAccountID:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet set];
  v37 = self;
  v6 = [(ICCloudContext *)self accountZoneIDsNeedingToBeSaved];
  v36 = v4;
  v7 = [v6 objectForKeyedSubscript:v4];
  v8 = [v7 allObjects];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v48;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v48 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v47 + 1) + 8 * i);
        v15 = [v14 ownerName];
        v16 = [v15 isEqualToString:CKCurrentUserDefaultName];

        if (v16)
        {
          [v5 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v11);
  }

  v35 = v9;

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v17 = [(ICCloudContext *)v37 operationQueue];
  v18 = [v17 operations];

  v19 = [v18 countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v44;
    do
    {
      v22 = 0;
      v38 = v20;
      do
      {
        if (*v44 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v43 + 1) + 8 * v22);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = v23;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v25 = [v24 recordZonesToSave];
          v26 = [v25 countByEnumeratingWithState:&v39 objects:v51 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v40;
            do
            {
              for (j = 0; j != v27; j = j + 1)
              {
                if (*v40 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                v30 = [*(*(&v39 + 1) + 8 * j) zoneID];
                [v5 removeObject:v30];
              }

              v27 = [v25 countByEnumeratingWithState:&v39 objects:v51 count:16];
            }

            while (v27);
          }

          v20 = v38;
        }

        v22 = v22 + 1;
      }

      while (v22 != v20);
      v20 = [v18 countByEnumeratingWithState:&v43 objects:v52 count:16];
    }

    while (v20);
  }

  if ([v5 count])
  {
    v31 = [v5 allObjects];
    v32 = v36;
    v33 = [(ICCloudContext *)v37 operationToSaveZonesForZoneIDs:v31 accountID:v36];
  }

  else
  {
    v33 = 0;
    v32 = v36;
  }

  return v33;
}

- (id)operationToSaveZonesForZoneIDs:(id)a3 accountID:(id)a4
{
  v5 = a3;
  v26 = a4;
  v24 = v5;
  if ([v26 length])
  {
    v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v7)
    {
      v8 = *v39;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v39 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = [[CKRecordZone alloc] initWithZoneID:*(*(&v38 + 1) + 8 * i)];
          [v6 addObject:v10];
        }

        v7 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v7);
    }

    v23 = [(ICCloudContext *)self containerForAccountID:v26];
    val = [[CKModifyRecordZonesOperation alloc] initWithRecordZonesToSave:v6 recordZoneIDsToDelete:0];
    [(ICCloudContext *)self configureOperation:val];
    v11 = [v23 privateCloudDatabase];
    [val setDatabase:v11];

    objc_initWeak(&location, val);
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v29 = v6;
    v12 = [v29 countByEnumeratingWithState:&v33 objects:v46 count:16];
    if (v12)
    {
      v13 = *v34;
      do
      {
        for (j = 0; j != v12; j = j + 1)
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(v29);
          }

          v15 = *(*(&v33 + 1) + 8 * j);
          v16 = +[REMLog cloudkit];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = [v15 zoneID];
            v18 = [v17 ic_loggingDescription];
            v19 = [val ic_loggingDescription];
            *buf = 138543618;
            v43 = v18;
            v44 = 2114;
            v45 = v19;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Will save zone %{public}@ %{public}@", buf, 0x16u);
          }
        }

        v12 = [v29 countByEnumeratingWithState:&v33 objects:v46 count:16];
      }

      while (v12);
    }

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100080E98;
    v30[3] = &unk_1008DA878;
    objc_copyWeak(&v32, &location);
    v30[4] = self;
    v31 = v26;
    [val setModifyRecordZonesCompletionBlock:v30];
    v20 = objc_alloc_init(CKOperationGroup);
    [v20 setName:@"SaveRecordZones"];
    [v20 setQuantity:{objc_msgSend(obj, "count")}];
    [v20 setExpectedSendSize:1];
    [v20 setExpectedReceiveSize:1];
    [val setGroup:v20];
    v21 = val;

    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

  else
  {
    v29 = +[REMLog cloudkit];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      sub_100762790();
    }

    v21 = 0;
  }

  return v21;
}

- (void)contextDidSave:(id)a3
{
  v4 = a3;
  if (![(ICCloudContext *)self isDisabled]&& ![(ICCloudContext *)self isDisabledInternal]&& [(ICCloudContext *)self supportsCloudKitSyncing]&& [(ICCloudContext *)self isInternetReachable]&& [(ICCloudContext *)self hasPassedBuddy]&& ([(ICCloudContext *)self pendingAccountInitializerCompleteOnLaunch]|| [(ICCloudContext *)self isReadyToSyncWithActiveAccountAvailable:1]))
  {
    context = objc_autoreleasePoolPush();
    v5 = [v4 userInfo];
    v6 = [v5 objectForKeyedSubscript:NSDeletedObjectIDsKey];

    v7 = [v4 userInfo];
    v23 = [v7 objectForKeyedSubscript:NSInsertedObjectIDsKey];

    v8 = [v4 userInfo];
    v24 = [v8 objectForKeyedSubscript:NSUpdatedObjectIDsKey];

    v9 = NSManagedObjectContextTransactionAuthorKey;
    v10 = [v4 userInfo];
    v11 = [v10 objectForKey:v9];

    objc_opt_class();
    v12 = REMDynamicCast();
    if (v12 && [objc_opt_class() isNonUploadingTransactionAuthor:v12])
    {
      v13 = +[REMLog cloudkit];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "contextDidSave excludes author: %{public}@", &buf, 0xCu);
      }

      v14 = v11;
      v11 = v9;
      v9 = v24;
      v24 = v23;
    }

    else
    {
      v15 = +[NSMutableSet set];
      if ([v23 count])
      {
        [v15 unionSet:v23];
      }

      if ([v24 count])
      {
        [v15 unionSet:v24];
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v35 = 0x3032000000;
      v36 = sub_10006D330;
      v37 = sub_10006D340;
      v38 = +[NSMutableSet set];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v14 = v15;
      v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v16)
      {
        v17 = *v30;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v30 != v17)
            {
              objc_enumerationMutation(v14);
            }

            [*(*(&buf + 1) + 40) addObject:*(*(&v29 + 1) + 8 * i)];
          }

          v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v16);
      }

      v19 = [(ICCloudContext *)self processingQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100081688;
      block[3] = &unk_1008DA8A0;
      block[4] = self;
      v26 = v6;
      v27 = v12;
      p_buf = &buf;
      v20 = v12;
      v21 = v6;
      dispatch_async(v19, block);

      _Block_object_dispose(&buf, 8);
      v6 = v23;
    }

    objc_autoreleasePoolPop(context);
  }
}

- (void)_addOperationToProcessBlockWithOperationName:(id)a3 processBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICCloudContext *)self processingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100081AD0;
  block[3] = &unk_1008DA318;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)addOperationToProcessObjectsWithOperationName:(id)a3 syncReason:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100082104;
  v13[3] = &unk_1008DA8F0;
  objc_copyWeak(&v17, &location);
  v11 = v8;
  v14 = v11;
  v15 = v9;
  v12 = v10;
  v16 = v12;
  [(ICCloudContext *)self _addOperationToProcessBlockWithOperationName:v11 processBlock:v13];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)processPendingCloudObjectsWithOperationName:(id)a3
{
  v4 = a3;
  v5 = +[REMLog cloudkit];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "os_transaction INIT {name: com.apple.remindd.cloudkit.processPendingCloudObjects[%@]}", buf, 0xCu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000823EC;
  v8[3] = &unk_1008DA918;
  v9 = v4;
  v10 = os_transaction_create();
  v6 = v10;
  v7 = v4;
  [(ICCloudContext *)self addOperationToProcessObjectsWithOperationName:v7 syncReason:0 completionHandler:v8];
}

- (void)processPendingCloudObjectsWithOperationName:(id)a3 syncReason:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[REMLog cloudkit];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v59 = v8;
    v60 = 2114;
    v61 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "SYNC[COREDATA] START {operationName: %{public}@, syncReason: %{public}@}", buf, 0x16u);
  }

  v12 = +[REMLog cloudkit];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "os_transaction INIT {name: com.apple.remindd.cloudkit.sync.coredata}", buf, 2u);
  }

  v13 = os_transaction_create();
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_100082BDC;
  v52[3] = &unk_1008DA940;
  v14 = v10;
  v54 = v14;
  v15 = v13;
  v53 = v15;
  v16 = objc_retainBlock(v52);
  if (![(ICCloudContext *)self isReadyToSync])
  {
    if ([(ICCloudContext *)self isCloudKitAccountAvailable])
    {
      v18 = [(ICCloudContext *)self pendingAccountInitializerCompleteOnLaunch];
      v17 = +[REMLog cloudkit];
      v19 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
      if (v18)
      {
        if (v19)
        {
          sub_1007629B0(self, v17);
        }

        v20 = [(ICCloudContext *)self objectIDsToRetry];
        v21 = [(ICCloudContext *)self objectIDsToProcess];
        [v20 unionSet:v21];

        v17 = +[NSMutableSet set];
        [(ICCloudContext *)self setObjectIDsToProcess:v17];
      }

      else if (v19)
      {
        sub_100762924(self);
      }
    }

    else
    {
      v17 = +[REMLog cloudkit];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1007628E8();
      }
    }

    goto LABEL_30;
  }

  if (![(ICCloudContext *)self isInternetReachable])
  {
    v17 = +[REMLog cloudkit];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100762AAC();
    }

    goto LABEL_30;
  }

  if ([(ICCloudContext *)self uploadSuspended])
  {
    v17 = +[REMLog cloudkit];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100762AE8();
    }

LABEL_30:

    v33 = +[REMLog cloudkit];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_100762B24();
    }

    v25 = [objc_opt_class() errorForDisabledCloudSyncing];
    v64 = v25;
    v26 = [NSArray arrayWithObjects:&v64 count:1];
    (v16[2])(v16, v26);
    goto LABEL_33;
  }

  v43 = v8;
  v22 = +[REMSignpost sync];
  v23 = os_signpost_id_generate(v22);
  v24 = v22;
  v25 = v24;
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "cloudkit.coredata", "", buf, 2u);
  }

  v40 = v23;

  v26 = +[NSDate date];
  v27 = +[DABabysitter sharedBabysitter];
  v28 = [v27 tokenByRegisteringAccount:self forOperationWithName:@"SYNC[COREDATA]"];

  if (v28)
  {
LABEL_27:
    v30 = [(ICCloudContext *)self processingQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100082C8C;
    block[3] = &unk_1008DA9B8;
    block[4] = self;
    v45 = v43;
    v46 = v9;
    v47 = v26;
    v48 = v25;
    v51 = v41;
    v49 = v28;
    v50 = v16;
    v31 = v28;
    v32 = v25;
    v25 = v26;
    dispatch_async(v30, block);

    v8 = v43;
    v26 = v32;
    goto LABEL_33;
  }

  if (isCloudContextSyncReasonUserInitiated(v9))
  {
    v29 = +[REMLog cloudkit];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v38 = [(ICCloudContext *)self waiterID];
      *buf = 138543874;
      v59 = v43;
      v60 = 2114;
      v61 = v9;
      v62 = 2114;
      v63 = v38;
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Bypassing babysitter against processPendingCloudObjects, which failed too many times, because sync was user initiated {operationName: %{public}@, syncReason: %{public}@, waiterID: %{public}@}", buf, 0x20u);
    }

    goto LABEL_27;
  }

  v56 = @"identifier";
  v57 = @"SYNC[COREDATA]";
  v34 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
  v35 = [REMError babySatErrorWithOperationName:@"SYNC[COREDATA]"];
  v42 = v34;
  [_TtC19ReminderKitInternal9Analytics postEventWithName:@"SYNC[COREDATA]" payload:v34 error:v35 performAutoBugCaptureOnError:1];
  v36 = +[REMLog cloudkit];
  if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
  {
    v39 = [(ICCloudContext *)self waiterID];
    *buf = 138543874;
    v59 = v43;
    v60 = 2114;
    v61 = v9;
    v62 = 2114;
    v63 = v39;
    _os_log_fault_impl(&_mh_execute_header, v36, OS_LOG_TYPE_FAULT, "Babysitting processPendingCloudObjects because it failed too many times {operationName: %{public}@, syncReason: %{public}@, waiterID: %{public}@}", buf, 0x20u);
  }

  v55 = v35;
  v37 = [NSArray arrayWithObjects:&v55 count:1];
  (v16[2])(v16, v37);

  v8 = v43;
LABEL_33:
}

- (void)addProcessLocalObjectsOperationToMergeLocalObjectsWithCompletionHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = ICNSBlockOperationNameProcessLocalObjects;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100083640;
  v7[3] = &unk_1008DAAC0;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [(ICCloudContext *)self _addOperationToProcessBlockWithOperationName:v5 processBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_scheduleRetryMergeLocalObjects
{
  v3 = [(ICCloudContext *)self processingQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(ICCloudContext *)self retryCountsByOperationType];
  v5 = [v4 objectForKeyedSubscript:@"Merge.Local"];
  v6 = v5;
  v7 = &off_100904E78;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = +[REMLog cloudkit];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 67109120;
    LODWORD(v28) = [v8 intValue];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "MERGE.LOCAL: Scheduling retry, if we are within limit (currentRetryCount: %d).", &v27, 8u);
  }

  v10 = +[ICCloudContext _systemBuildVersion];
  v11 = +[ICCloudConfiguration sharedConfiguration];
  v12 = [v11 mergeLocalObjectsMaximumRetryCount];
  if (v12 > [v8 intValue])
  {
    [v11 mergeLocalObjectsRetryStartOverThrottleInterval];
    v14 = v13;
    v15 = +[REMUserDefaults daemonUserDefaults];
    v16 = [v15 cloudKitMergeLocalLastDateMaxRetryReached];
    v17 = [v15 cloudKitMergeLocalLastBuildVersionMaxRetryReached];
    if (v16)
    {
      v18 = +[NSDate now];
      [v18 timeIntervalSinceDate:v16];
      if (v19 < v14 && v17)
      {
        v20 = [v10 isEqualToString:v17];

        if (v20)
        {
          v21 = +[REMLog cloudkit];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v26 = [v16 ic_localDateWithSeconds];
            v27 = 138412802;
            v28 = v26;
            v29 = 2112;
            v30 = v17;
            v31 = 2112;
            v32 = v10;
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "MERGE.LOCAL: Maximum retry count previously reached, aborting {lastMaxRetry: {date: %@, build: %@}, currentBuild: %@}", &v27, 0x20u);
          }

          [(ICCloudContext *)self setNeedsToMergeLocalObjects:0];
          [(ICCloudContext *)self clearRetryCountForOperationType:@"Merge.Local"];
          goto LABEL_18;
        }
      }

      else
      {
      }
    }

    [(ICCloudContext *)self setNeedsToMergeLocalObjects:1];
    [v11 mergeLocalObjectsInitialRetryInterval];
    v25 = [REMError retryLaterErrorWithInterval:?];
    [(ICCloudContext *)self incrementOrClearRetryCountForOperationType:@"Merge.Local" error:v25];
    [(ICCloudContext *)self startRetryTimerIfNecessaryWithError:v25];

LABEL_18:
    goto LABEL_19;
  }

  v22 = +[REMLog cloudkit];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
  {
    sub_100762DC0();
  }

  [(ICCloudContext *)self setNeedsToMergeLocalObjects:0];
  [(ICCloudContext *)self clearRetryCountForOperationType:@"Merge.Local"];
  v23 = +[REMUserDefaults daemonUserDefaults];
  v24 = +[NSDate now];
  [v23 setCloudKitMergeLocalLastDateMaxRetryReached:v24];

  v15 = +[REMUserDefaults daemonUserDefaults];
  [v15 setCloudKitMergeLocalLastBuildVersionMaxRetryReached:v10];
LABEL_19:
}

- (void)processLocalObjectMergeEligibleObjectIDs:(id)a3 operationQueue:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = +[REMLog cloudkit];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "MERGE.LOCAL[COREDATA] START", buf, 2u);
  }

  v10 = +[REMLog cloudkit];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "os_transaction INIT {name: com.apple.remindd.cloudkit.merge.local.coredata}", buf, 2u);
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000846C0;
  v24[3] = &unk_1008DA940;
  v25 = os_transaction_create();
  v26 = v8;
  v11 = v25;
  v12 = v8;
  v13 = objc_retainBlock(v24);
  v14 = +[NSDate date];
  v15 = [(ICCloudContext *)self processingQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100084770;
  v19[3] = &unk_1008DAB10;
  v20 = v7;
  v21 = self;
  v22 = v14;
  v23 = v13;
  v16 = v13;
  v17 = v14;
  v18 = v7;
  dispatch_async(v15, v19);
}

+ (BOOL)_performLocalObjectMergeWithEligibleObjectIDs:(id)a3 cloudKitAccount:(id)a4 managedObjectContext:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  [v10 setDaWasMigrated:0];
  v40 = a1;
  [a1 saveAndFaultIfFailWithContext:v11 shouldTakeServerAsTruth:0 logDescription:@"unset .daWasMigrated"];
  v12 = REMCRMergeableOrderedSet_ptr;
  v13 = +[REMLog cloudkit];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v10 ckIdentifier];
    *buf = 138543362;
    v48 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "MERGE.LOCAL: Unsetting .daWasMigrated (accountIdentifier=%{public}@, flagSaved=1)", buf, 0xCu);
  }

  v38 = v10;

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v9;
  v15 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v44;
    do
    {
      v18 = 0;
      v41 = v16;
      do
      {
        if (*v44 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v43 + 1) + 8 * v18);
        v20 = objc_autoreleasePoolPush();
        v21 = [v11 objectWithID:v19];
        objc_opt_class();
        v22 = REMDynamicCast();
        if ([v22 isMergeableWithLocalObject])
        {
          v23 = v11;
          v24 = [v22 existingLocalObjectToMergeWithPredicate:0];
          v25 = [v12[50] cloudkit];
          v26 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
          if (v24)
          {
            v27 = v17;
            if (v26)
            {
              v28 = [v22 objectID];
              v29 = [v24 objectID];
              *buf = 138543618;
              v48 = v28;
              v49 = 2114;
              v50 = v29;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "MERGE.LOCAL: ...found an existingLocalObjectToMerge (objectMID=%{public}@, localObjectMID=%{public}@)", buf, 0x16u);

              v12 = REMCRMergeableOrderedSet_ptr;
            }

            v30 = [v22 mergeWithLocalObject:v24];
            v31 = [v12[50] cloudkit];
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              v32 = [NSNumber numberWithBool:v30];
              *buf = 138543362;
              v48 = v32;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "MERGE.LOCAL: ...mergeWithLocalObject (didMerge=%{public}@)", buf, 0xCu);

              v12 = REMCRMergeableOrderedSet_ptr;
            }

            v11 = v23;
            [v23 refreshObject:v24 mergeChanges:1];
            v17 = v27;
          }

          else
          {
            if (v26)
            {
              v33 = [v22 objectID];
              *buf = 138543362;
              v48 = v33;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "MERGE.LOCAL: ...no matching existingLocalObjectToMerge (objectMID=%{public}@)", buf, 0xCu);

              v12 = REMCRMergeableOrderedSet_ptr;
            }

            v11 = v23;
          }

          [v11 refreshObject:v22 mergeChanges:1];

          v16 = v41;
        }

        objc_autoreleasePoolPop(v20);
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v16);
  }

  v34 = [v12[50] cloudkit];
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v35 = [v38 ckIdentifier];
    *buf = 138543362;
    v48 = v35;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "MERGE.LOCAL: final step to clean up account and lists, then save... (accountIdentifier=%{public}@)", buf, 0xCu);
  }

  v36 = objc_autoreleasePoolPush();
  [v38 cleanUpAfterLocalObjectMerge];
  objc_autoreleasePoolPop(v36);
  if (a6)
  {
    *a6 = 0;
  }

  [v40 saveAndFaultIfFailWithContext:v11 shouldTakeServerAsTruth:0 logDescription:@"merged objects"];

  return 1;
}

- (void)processAllDirtyCloudObjectsWithSyncReason:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICCloudContext *)self processingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000851A4;
  block[3] = &unk_1008DA318;
  block[4] = self;
  block[5] = v7;
  v11 = v6;
  v9 = v6;
  dispatch_async(v8, block);
}

- (void)retryProcessingCloudObjects
{
  v3 = +[REMLog cloudkit];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(ICCloudContext *)self objectIDsToRetry];
    v6[0] = 67109120;
    v6[1] = [v4 count];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Retrying to process %d cloud objects", v6, 8u);
  }

  v5 = [(ICCloudContext *)self processingSelectorDelayer];
  [v5 requestFire];
}

- (void)processObjectIDs:(id)a3 operationQueue:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[REMLog cloudkit];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v18 = [v8 count];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Processing %lu cloud objects, now going to fetch from CD and submit items to operation queue", buf, 0xCu);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000855B8;
  v14[3] = &unk_1008DAB78;
  v14[4] = self;
  v15 = v9;
  v16 = v10;
  v12 = v10;
  v13 = v9;
  [(ICCloudContext *)self _processFetchedCloudObjectsWithObjectIDs:v8 usingBlock:v14];
}

- (void)_processFetchedCloudObjectsWithObjectIDs:(id)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICCloudContext *)self processingQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(ICCloudContext *)self context];
  [(ICCloudContext *)self _processFetchedCloudObjectsWithObjectIDs:v7 withManagedObjectContext:v9 usingBlock:v6];
}

- (void)_processFetchedCloudObjectsWithObjectIDs:(id)a3 withManagedObjectContext:(id)a4 usingBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ICCloudContext *)self processingQueue];
  dispatch_assert_queue_V2(v11);

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000857B8;
  v15[3] = &unk_1008DAB10;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [v13 performBlockAndWait:v15];
}

- (BOOL)_isRecognizedCloudObjectClass:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [(ICCloudContext *)self recognizedCloudObjectClasses];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    LOBYTE(v9) = [v8 BOOLValue];
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [(ICCloudContext *)self cloudObjectClassesByRecordType];
    v11 = [v10 allValues];

    v9 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v12 = *v19;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v11);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            v9 = 1;
            goto LABEL_13;
          }
        }

        v9 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    v15 = [NSNumber numberWithBool:v9];
    v16 = [(ICCloudContext *)self recognizedCloudObjectClasses];
    [v16 setObject:v15 forKeyedSubscript:v6];
  }

  return v9;
}

- (void)_processCloudObjectIDs:(id)a3 operationQueue:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v11 = +[NSMutableArray array];
    v12 = [(ICCloudContext *)self context];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100086448;
    v16[3] = &unk_1008DABF0;
    v17 = v8;
    v18 = v12;
    v19 = self;
    v20 = v11;
    v21 = v9;
    v22 = v10;
    v13 = v11;
    v14 = v12;
    [v14 performBlockAndWait:v16];

LABEL_5:
    goto LABEL_6;
  }

  if (v10)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100086434;
    v23[3] = &unk_1008DA020;
    v24 = v10;
    v15 = [ICNSBlockOperation blockOperationWithBlock:v23];
    [v15 setName:ICNSBlockOperationNameProcessCompletion];
    [v9 addOperation:v15];
    [objc_opt_class() errorAndPromptToFileRadarWithICTap2RadarTypeTooManyOperationsInOperationQueueIfNecessaryForOperationQueue:v9];

    v14 = v24;
    goto LABEL_5;
  }

LABEL_6:
}

- (void)handleNotification:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICCloudContext *)self processingQueue];
  dispatch_assert_queue_V2(v8);

  if (![(ICCloudContext *)self isReadyToSync]|| [(ICCloudContext *)self isDisabled]|| [(ICCloudContext *)self isDisabledInternal]|| ![(ICCloudContext *)self supportsCloudKitSyncing])
  {
    v17 = +[REMLog cloudkit];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10076307C(self);
    }

    if (v7)
    {
      v18 = [objc_opt_class() errorForDisabledCloudSyncing];
      v7[2](v7, v18);
    }
  }

  else
  {
    v9 = +[REMLog cloudkit];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = [v6 subscriptionID];
      *buf = 138543618;
      v33 = v10;
      v34 = 2114;
      v35 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SYNC[APS] CONTINUE {notification.class: %{public}@, subscriptionID: %{public}@}", buf, 0x16u);
    }

    v13 = [v6 notificationType];
    if ((v13 - 1) < 3)
    {
      v14 = +[REMLog cloudkit];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        *buf = 138543362;
        v33 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "SYNC[APS] NOOP - Not handling CloudKit database notification %{public}@", buf, 0xCu);
      }

LABEL_23:

LABEL_24:
      if (v7)
      {
        v7[2](v7, 0);
      }

      goto LABEL_14;
    }

    if (v13 != 4)
    {
      goto LABEL_24;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = +[REMLog cloudkit];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_100762F2C();
      }

      goto LABEL_23;
    }

    v19 = v6;
    v20 = [v19 databaseScope];
    v21 = [v19 notificationID];
    v22 = [v19 subscriptionOwnerUserRecordID];
    v23 = [v22 recordName];

    if ([v23 length])
    {
      v24 = [[_TtC7remindd36RDDebounceableCKDatabaseNotification alloc] initWithDatabaseScope:v20 subscriptionOwnerUserRecordName:v23];
      v25 = +[REMLog cloudkit];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v21 debugDescription];
        *buf = 138543618;
        v33 = v24;
        v34 = 2114;
        v35 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "SYNC[APS] CONTINUE - Received CloudKit database notification {debounceableDatabaseNotification: %{public}@, notificationID: %{public}@}", buf, 0x16u);
      }

      v27 = [(ICCloudContext *)self apsNotificationHandlingDebouncer];
      v28 = [NSSet setWithObject:v24];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100087474;
      v29[3] = &unk_1008DAC40;
      v29[4] = self;
      v31 = v7;
      v30 = v21;
      [v27 fire:v28 completion:v29];
    }

    else
    {
      v24 = +[REMLog cloudkit];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100762FE4();
      }
    }
  }

LABEL_14:
}

- (void)handleDatabaseNotification:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 databaseScope];
  v9 = [v6 subscriptionOwnerUserRecordName];
  v10 = +[REMLog cloudkit];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SYNC[APS] CONTINUE - Fired from APS debouncer to execute CKDatabaseNotification handler {databaseNotification: %{public}@}", buf, 0xCu);
  }

  v11 = [(ICCloudContext *)self containersByAccountID];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100087A50;
  v15[3] = &unk_1008DACB8;
  v15[4] = self;
  v16 = v9;
  v18 = v7;
  v19 = v8;
  v17 = v6;
  v12 = v7;
  v13 = v6;
  v14 = v9;
  [v11 enumerateKeysAndObjectsUsingBlock:v15];
}

- (void)_handleDatabaseNotification:(id)a3 database:(id)a4 accountID:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v26 = a4;
  v11 = a5;
  v12 = a6;
  v13 = @"PushNotification";
  if (v11)
  {
    v42 = v11;
    v14 = [NSArray arrayWithObjects:&v42 count:1];
    v15 = [(ICCloudContext *)self setUpCloudSchemaCatchUpSyncContextMapWithAccountIDs:v14 syncReason:v13];
  }

  else
  {
    v16 = +[REMLog cloudkit];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_10076316C();
    }

    v15 = +[NSDictionary dictionary];
  }

  v17 = [v15 count];
  v18 = +[REMLog cloudkit];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v37 = v10;
    v38 = 2114;
    v39 = v11;
    v40 = 1024;
    v41 = v17 != 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "...SYNC[APS] Handling CloudKit database notification, with potential debounced scopes from other notifications {databaseNotification: %{public}@, accountID: %{public}@, catchUpSync: %d}", buf, 0x1Cu);
  }

  v19 = v17 != 0;

  v20 = +[NSMutableArray array];
  v35 = v26;
  v21 = [NSArray arrayWithObjects:&v35 count:1];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000881DC;
  v27[3] = &unk_1008DAD08;
  v28 = v20;
  v29 = self;
  v30 = v13;
  v31 = v15;
  v34 = v19;
  v32 = v10;
  v33 = v12;
  v22 = v12;
  v23 = v10;
  v24 = v15;
  v25 = v20;
  [(ICCloudContext *)self fetchDatabaseChangesForDatabases:v21 reason:v13 cloudSchemaCatchUpSyncContextMap:v24 completionHandler:v27];
}

- (void)validateAccountZoneIDsNeedingFetchChanges
{
  v3 = [(ICCloudContext *)self accountZoneIDsNeedingFetchChanges];
  v4 = [v3 allKeys];
  v5 = [NSMutableSet setWithArray:v4];

  v6 = [(ICCloudContext *)self containersByAccountID];
  v7 = [v6 allKeys];
  v8 = [NSSet setWithArray:v7];

  [v5 minusSet:v8];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008876C;
  v9[3] = &unk_1008DA1D8;
  v9[4] = self;
  [v5 enumerateObjectsUsingBlock:v9];
}

- (void)fetchRecordZoneChangesWithReason:(id)a3 cloudSchemaCatchUpSyncContextMap:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(ICCloudContext *)self processingQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10008893C;
  v14[3] = &unk_1008DAB10;
  v14[4] = self;
  v14[5] = v10;
  v15 = v8;
  v16 = v9;
  v12 = v9;
  v13 = v8;
  dispatch_async(v11, v14);
}

- (void)fetchRecordZoneChangesForZoneIDs:(id)a3 accountID:(id)a4 reason:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = a5;
  v13 = [NSSet setWithArray:a3];
  if ([v10 length])
  {
    v16 = v10;
    v17 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  }

  else
  {
    v14 = 0;
  }

  v15 = +[NSDictionary dictionary];
  [(ICCloudContext *)self fetchRecordZoneChangesForAccountZoneIDs:v14 reason:v12 cloudSchemaCatchUpSyncContextMap:v15 completionHandler:v11];
}

- (void)fetchRecordZoneChangesForAccountZoneIDs:(id)a3 reason:(id)a4 cloudSchemaCatchUpSyncContextMap:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = a4;
  v14 = [(ICCloudContext *)self processingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100088BE0;
  block[3] = &unk_1008DAD58;
  v19 = v10;
  v20 = self;
  v21 = v13;
  v22 = v11;
  v23 = v12;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  dispatch_async(v14, block);
}

- (void)addOperationsToFetchRecordZoneChangesForAccountZoneIDs:(id)a3 reason:(id)a4 cloudSchemaCatchUpSyncContextMap:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = a4;
  v14 = [(ICCloudContext *)self processingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100089320;
  block[3] = &unk_1008DAD58;
  v19 = v10;
  v20 = self;
  v21 = v13;
  v22 = v11;
  v23 = v12;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  dispatch_async(v14, block);
}

- (id)operationsToFetchRecordZoneChangesForZoneIDs:(id)a3 accountID:(id)a4 reason:(id)a5 cloudSchemaCatchUpSyncContextMap:(id)a6
{
  v32 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v31 = v12;
  if ([v10 length])
  {
    if (v10)
    {
      v13 = [v12 objectForKey:v10];
    }

    else
    {
      v13 = 0;
    }

    v15 = [v13 shouldPerformCloudSchemaCatchUpSync];
    v16 = v15;
    if (v15)
    {
      v17 = +[REMLog cloudkit];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138543874;
        *&buf[4] = v10;
        *&buf[12] = 2114;
        *&buf[14] = v11;
        *&buf[22] = 2114;
        v52 = v32;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Account shouldPerformCloudSchemaCatchUpSync. Will set CKFetchRecordZoneChangesConfiguration.previousServerChangeToken = nil {accountID: %{public}@, reason: %{public}@, zoneIDs: %{public}@}", buf, 0x20u);
      }
    }

    v18 = +[NSMutableArray array];
    v30 = [objc_opt_class() objectsByDatabaseScope:v32];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v52 = sub_10006D330;
    v53 = sub_10006D340;
    v54 = +[NSMutableSet set];
    [(ICCloudContext *)self context];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_100089F64;
    v42[3] = &unk_1008D9EE0;
    v19 = v42[4] = self;
    v43 = v19;
    v44 = buf;
    [v19 performBlockAndWait:v42];
    v20 = [(ICCloudContext *)self containerForAccountID:v10];
    v21 = objc_alloc_init(CKOperationGroup);
    [v21 setName:@"FetchRecordZoneChanges"];
    [v21 setExpectedSendSize:1];
    [v21 setExpectedReceiveSize:0];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10008A088;
    v33[3] = &unk_1008DADA8;
    v22 = v20;
    v34 = v22;
    v35 = self;
    v23 = v10;
    v40 = buf;
    v36 = v23;
    v37 = v11;
    v41 = v16;
    v24 = v21;
    v38 = v24;
    v25 = v18;
    v39 = v25;
    [v30 enumerateKeysAndObjectsUsingBlock:v33];
    v26 = +[REMLog cloudkit];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = [v24 ic_loggingDescription];
      *v45 = 138543874;
      v46 = v27;
      v47 = 2114;
      v48 = v23;
      v49 = 2114;
      v50 = v11;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Fetching record zone changes with operation group %{public}@ {accountID: %{public}@, reason: %{public}@}", v45, 0x20u);
    }

    v28 = v39;
    v14 = v25;

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v13 = +[REMLog cloudkit];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_100763344();
    }

    v14 = &__NSArray0__struct;
  }

  return v14;
}

- (id)operationToFetchRecordZoneChangesForZoneIDs:(id)a3 database:(id)a4 reason:(id)a5 ignoreServerChangeTokens:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v6)
  {
    v12 = +[REMLog cloudkit];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 databaseScope]);
      *buf = 138543874;
      v63 = v13;
      v64 = 2114;
      v65 = v11;
      v66 = 2114;
      v67 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Will set CKFetchRecordZoneChangesConfiguration.previousServerChangeToken = nil {databaseScope: %{public}@, reason: %{public}@, zoneIDs: %{public}@}", buf, 0x20u);
    }
  }

  v50 = [(ICCloudContext *)self accountIDForDatabase:v10];
  if (![v50 length])
  {
    v14 = +[REMLog cloudkit];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_100763378();
    }
  }

  v45 = v11;
  v46 = v10;
  v48 = +[NSMutableDictionary dictionary];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v9;
  v15 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v56;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v56 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v55 + 1) + 8 * i);
        v20 = [v19 zoneName];
        v21 = [v20 isEqualToString:CKRecordZoneDefaultName];

        if (v21)
        {
          v22 = +[REMLog cloudkit];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v63 = v50;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Not trying to sync the default record zone in account ID %{public}@.", buf, 0xCu);
          }
        }

        else
        {
          v23 = objc_alloc_init(CKFetchRecordZoneChangesConfiguration);
          v22 = v23;
          if (v6)
          {
            [v23 setPreviousServerChangeToken:0];
          }

          else
          {
            v24 = -[ICCloudContext serverChangeTokenForRecordZoneID:databaseScope:accountID:](self, "serverChangeTokenForRecordZoneID:databaseScope:accountID:", v19, [v10 databaseScope], v50);
            [v22 setPreviousServerChangeToken:v24];
          }

          v25 = +[ICCloudConfiguration sharedConfiguration];
          -[NSObject setResultsLimit:](v22, "setResultsLimit:", [v25 resultsLimitPerSyncOperation]);

          [v22 setFetchNewestChangesFirst:1];
          [v48 setObject:v22 forKeyedSubscript:v19];
        }
      }

      v16 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v16);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v26 = [(ICCloudContext *)self operationQueue];
  v27 = [v26 operations];

  v28 = [v27 countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (!v28)
  {
LABEL_38:

LABEL_43:
    v43 = v48;
    v40 = v46;
    v41 = v45;
    v33 = [(ICCloudContext *)self newOperationToFetchRecordZoneChangesWithZoneConfigurations:v48 database:v46 reason:v45];
    goto LABEL_44;
  }

  v29 = v28;
  v30 = *v52;
LABEL_25:
  v31 = 0;
  while (1)
  {
    if (*v52 != v30)
    {
      objc_enumerationMutation(v27);
    }

    v32 = *(*(&v51 + 1) + 8 * v31);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_36;
    }

    v33 = v32;
    v34 = [v33 database];
    v35 = [(ICCloudContext *)self accountIDForDatabase:v34];

    if (![v35 length])
    {
      v36 = +[REMLog cloudkit];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        sub_1007633AC(v59, v33);
      }
    }

    if ([NSString rem_isFirstString:v50 equalToSecondString:v35])
    {
      v37 = objc_opt_class();
      v38 = [v33 configurationsByRecordZoneID];
      LOBYTE(v37) = [v37 isZoneConfigurations:v48 subsetOfZoneConfigurations:v38];

      if (v37)
      {
        break;
      }
    }

LABEL_36:
    if (v29 == ++v31)
    {
      v29 = [v27 countByEnumeratingWithState:&v51 objects:v60 count:16];
      if (v29)
      {
        goto LABEL_25;
      }

      goto LABEL_38;
    }
  }

  if (!v33)
  {
    goto LABEL_43;
  }

  v39 = +[REMLog cloudkit];
  v40 = v46;
  v41 = v45;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    v42 = [v33 ic_loggingDescription];
    *buf = 138543618;
    v63 = v50;
    v64 = 2114;
    v65 = v42;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Found existing operation with superset zone configuration in account ID %{public}@: %{public}@", buf, 0x16u);
  }

  v43 = v48;
LABEL_44:

  return v33;
}

+ (BOOL)isZoneConfigurations:(id)a3 subsetOfZoneConfigurations:(id)a4
{
  v27 = a3;
  v28 = a4;
  v5 = [v27 allKeys];
  v6 = [v5 copy];

  v7 = [NSMutableSet setWithArray:v6];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v30;
    *&v9 = 138543362;
    v25 = v9;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v30 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v29 + 1) + 8 * v12);
      v14 = [v28 objectForKeyedSubscript:{v13, v25}];
      if (!v14)
      {
        break;
      }

      v15 = v14;
      v16 = [v27 objectForKeyedSubscript:v13];
      v17 = [v15 previousServerChangeToken];

      if (v17)
      {
        v18 = [v15 previousServerChangeToken];
        v19 = [v16 previousServerChangeToken];
        v20 = [v18 isEqual:v19];

        if ((v20 & 1) == 0)
        {

          break;
        }
      }

      else
      {
        v21 = +[REMLog cloudkit];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = [v15 ic_loggingDescription];
          *buf = v25;
          v34 = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "isZoneConfigurations: existingConfiguration %{public}@ with nil previousServerChangeToken", buf, 0xCu);
        }
      }

      [v7 removeObject:v13];

      if (v10 == ++v12)
      {
        v10 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v23 = [v7 count] == 0;
  return v23;
}

- (id)newOperationToFetchRecordZoneChangesWithZoneConfigurations:(id)a3 database:(id)a4 reason:(id)a5
{
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v8 = [(ICCloudContext *)self processingQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(ICCloudContext *)self accountIDForDatabase:v40];
  if (![v9 length])
  {
    v10 = +[REMLog cloudkit];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v38 = [v40 ic_loggingDescription];
      *v82 = 138543874;
      *&v82[4] = v38;
      *&v82[12] = 2114;
      *&v82[14] = v9;
      *&v82[22] = 2114;
      v83 = v41;
      _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "accountID is nil or empty in newOperationToFetchRecordZoneChangesWithZoneConfigurations %{public}@, accountID: %{public}@, reason: %{public}@", v82, 0x20u);
    }
  }

  v11 = [CKFetchRecordZoneChangesOperation alloc];
  v12 = [v39 allKeys];
  v13 = [v11 initWithRecordZoneIDs:v12 configurationsByRecordZoneID:v39];

  [(ICCloudContext *)self configureOperation:v13];
  [v13 setDatabase:v40];
  objc_initWeak(&location, v13);
  [v13 setFetchAllChanges:1];
  v14 = +[ICCloudConfiguration sharedConfiguration];
  v15 = [v14 resultsLimitPerSyncOperation];

  *v82 = 0;
  *&v82[8] = v82;
  *&v82[16] = 0x2020000000;
  v83 = 0;
  v16 = [(ICCloudContext *)self contextForAccountID:v9 withBatchFetchHelper:1];
  if ([v9 length])
  {
    v17 = [ICCloudSchemaCatchUpSyncContext alloc];
    v18 = [(ICCloudContext *)self icUserDefaults];
    v19 = [v18 cloudSchemaCatchUpSyncSchedulingStateStorage];
    v20 = [(ICCloudSchemaCatchUpSyncContext *)v17 initWithAccountIdentifier:v9 syncReason:v41 schedulingStateStorage:v19 managedObjectContext:v16];

    v21 = [NSDictionary dictionaryWithObject:v20 forKey:v9];
    [v16 setCloudSchemaCatchUpSyncContextsByAccountIdentifier:v21];
  }

  [v16 setShouldSortChildrenAfterFetching:1];
  v22 = +[NSMutableSet set];
  [v16 setRecordIDsToSortChildrenAfterFetching:v22];

  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_10008B39C;
  v71[3] = &unk_1008DADF8;
  v73 = v82;
  v74 = v15;
  v71[4] = self;
  v23 = v9;
  v72 = v23;
  v24 = objc_retainBlock(v71);
  v70[0] = 0;
  v70[1] = v70;
  v70[2] = 0x2020000000;
  v70[3] = 0xBFF0000000000000;
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_10008B61C;
  v65[3] = &unk_1008DAE20;
  v68 = v70;
  v65[4] = self;
  objc_copyWeak(&v69, &location);
  v25 = v16;
  v66 = v25;
  v26 = v24;
  v67 = v26;
  [v13 setRecordWasChangedBlock:v65];
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_10008B71C;
  v60[3] = &unk_1008DAE48;
  v63 = v70;
  v60[4] = self;
  objc_copyWeak(&v64, &location);
  v27 = v25;
  v61 = v27;
  v28 = v26;
  v62 = v28;
  [v13 setRecordWithIDWasDeletedBlock:v60];
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_10008B800;
  v54[3] = &unk_1008DAE70;
  v58 = v70;
  v29 = v27;
  v55 = v29;
  v56 = self;
  v30 = v23;
  v57 = v30;
  objc_copyWeak(&v59, &location);
  [v13 setRecordZoneChangeTokensUpdatedBlock:v54];
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_10008BA44;
  v49[3] = &unk_1008DAE98;
  v52 = v70;
  v31 = v29;
  v50 = v31;
  v51 = self;
  objc_copyWeak(&v53, &location);
  [v13 setRecordZoneFetchCompletionBlock:v49];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_10008BC54;
  v42[3] = &unk_1008DAEC0;
  v47 = v70;
  v32 = v31;
  v43 = v32;
  v44 = self;
  v33 = v30;
  v45 = v33;
  objc_copyWeak(&v48, &location);
  v46 = v41;
  [v13 setFetchRecordZoneChangesCompletionBlock:v42];
  v34 = +[REMLog cloudkit];
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v35 = [v13 ic_loggingDescription];
    *buf = 138543874;
    v77 = v33;
    v78 = 2114;
    v79 = v35;
    v80 = 2114;
    v81 = v41;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Creating fetch changes operation in account ID %{public}@: %{public}@, syncReason: %{public}@", buf, 0x20u);
  }

  v36 = v13;
  objc_destroyWeak(&v48);

  objc_destroyWeak(&v53);
  objc_destroyWeak(&v59);

  objc_destroyWeak(&v64);
  objc_destroyWeak(&v69);
  _Block_object_dispose(v70, 8);

  _Block_object_dispose(v82, 8);
  objc_destroyWeak(&location);

  return v36;
}

- (void)fetchRecordZoneChangesOperation:(id)a3 completedFetchForZoneID:(id)a4 serverChangeToken:(id)a5 batchFetchHelper:(id)a6 error:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  [(ICCloudContext *)self debug_replaceWithSimulatedCKErrorIfSetWithOriginalError:a7];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10008C0B0;
  v20[3] = &unk_1008DA408;
  v20[4] = self;
  v22 = v21 = v12;
  v23 = v13;
  v24 = v14;
  v16 = v14;
  v17 = v13;
  v18 = v22;
  v19 = v12;
  [v15 addDispatchBlock:v20];
}

- (void)fetchRecordZoneChangesOperationDidComplete:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICCloudContext *)self processingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008C818;
  block[3] = &unk_1008D9C10;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

- (void)fetchRecordZoneChangesOperation:(id)a3 recordWasChangedWithRecordID:(id)a4 record:(id)a5 error:(id)a6 context:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v12 database];
  v18 = [(ICCloudContext *)self accountIDForDatabase:v17];

  if ([v18 length])
  {
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v26 = +[REMLog cloudkit];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      sub_10076352C();
    }

    if (v15)
    {
LABEL_3:
      v19 = +[REMLog cloudkit];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = [v13 ic_loggingDescription];
        [v12 ic_shortLoggingDescription];
        v22 = v21 = v13;
        *buf = 138544130;
        v49 = v18;
        v50 = 2114;
        v51 = v20;
        v52 = 2112;
        v53 = v15;
        v54 = 2114;
        v55 = v22;
        v23 = "[fetchRecordZoneChangesOperation:recordWasChangedWithRecordID:record:error:context:] Error fetching record for account ID %{public}@: %{public}@ %@ %{public}@";
        v24 = v19;
        v25 = 42;
LABEL_5:
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v23, buf, v25);

        v13 = v21;
LABEL_16:

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  if (v14)
  {
    v27 = objc_opt_class();
    v38 = v13;
    v28 = [v13 recordName];
    v19 = [v27 ckIdentifierFromRecordName:v28];

    v29 = [v14 parent];
    if (v29)
    {
      v47[0] = v19;
      v30 = objc_opt_class();
      v35 = [v14 parent];
      [v35 recordID];
      v31 = v36 = v16;
      v32 = [v31 recordName];
      v33 = [v30 ckIdentifierFromRecordName:v32];
      v47[1] = v33;
      v37 = [NSArray arrayWithObjects:v47 count:2];

      v16 = v36;
    }

    else
    {
      v46 = v19;
      v37 = [NSArray arrayWithObjects:&v46 count:1];
    }

    v34 = [v16 batchFetchHelper];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_10008D024;
    v39[3] = &unk_1008DAEE8;
    v40 = v16;
    v41 = v18;
    v13 = v38;
    v42 = v38;
    v43 = v12;
    v44 = self;
    v45 = v14;
    v20 = v37;
    [v34 addCKIdentifiers:v37 accountIdentifier:v41 dispatchBlock:v39];

    goto LABEL_16;
  }

  v19 = +[REMLog cloudkit];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = [v13 ic_loggingDescription];
    [v12 ic_shortLoggingDescription];
    v22 = v21 = v13;
    *buf = 138543874;
    v49 = v18;
    v50 = 2114;
    v51 = v20;
    v52 = 2114;
    v53 = v22;
    v23 = "[fetchRecordZoneChangesOperation:recordWasChangedWithRecordID:record:error:context:] Fetching record with nil record for account ID %{public}@: %{public}@ %{public}@";
    v24 = v19;
    v25 = 32;
    goto LABEL_5;
  }

LABEL_17:
}

- (void)fetchRecordZoneChangesOperation:(id)a3 recordWasDeletedWithRecordID:(id)a4 recordType:(id)a5 context:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v13 batchFetchHelper];
  v15 = [v10 database];
  v16 = [(ICCloudContext *)self accountIDForDatabase:v15];

  if (![v16 length])
  {
    v17 = +[REMLog cloudkit];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      sub_10076365C();
    }
  }

  if ([v12 isEqualToString:CKRecordTypeShare])
  {
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10008D5D0;
    v33[3] = &unk_1008D9B70;
    v34 = v13;
    v35 = v16;
    v36 = v11;
    v37 = v10;
    v18 = v10;
    v19 = v11;
    v20 = v16;
    v21 = v13;
    [v14 addDispatchBlock:v33];

    v22 = v34;
  }

  else
  {
    v23 = objc_opt_class();
    v24 = [v11 recordName];
    v25 = [v23 ckIdentifierFromRecordName:v24];
    v38 = v25;
    v21 = [NSArray arrayWithObjects:&v38 count:1];

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10008D774;
    v26[3] = &unk_1008DAEE8;
    v27 = v13;
    v28 = v16;
    v29 = v11;
    v30 = v10;
    v31 = self;
    v32 = v12;
    v22 = v10;
    v18 = v11;
    v19 = v16;
    v20 = v13;
    [v14 addCKIdentifiers:v21 accountIdentifier:v19 dispatchBlock:v26];
  }
}

- (void)fetchRecordZoneChangesOperation:(id)a3 zoneID:(id)a4 accountID:(id)a5 changeTokenUpdated:(id)a6 batchFetchHelper:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10008DB9C;
  v19[3] = &unk_1008DA408;
  v20 = v13;
  v21 = a6;
  v22 = v12;
  v23 = self;
  v24 = v14;
  v15 = v14;
  v16 = v12;
  v17 = v21;
  v18 = v13;
  [a7 addDispatchBlock:v19];
}

- (void)_performSortingChildrenObjectsAfterFetchingInBlockOfManagedObjectContext:(id)a3 fetchHasFullyCompleted:(BOOL)a4 accountID:(id)a5
{
  v7 = a3;
  v36 = a5;
  v8 = [v7 shouldSortChildrenAfterFetching];
  v9 = [v7 recordIDsToSortChildrenAfterFetching];
  [v7 setShouldSortChildrenAfterFetching:0];
  [v7 setRecordIDsToSortChildrenAfterFetching:0];
  if (v8 && v9)
  {
    v27 = v8;
    v28 = a4;
    v29 = v9;
    v10 = [NSMutableSet setWithSet:v9];
    [objc_opt_class() _recordTypesToSortChildrenAfterFetch];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v11 = v44 = 0u;
    v33 = [v11 countByEnumeratingWithState:&v41 objects:v48 count:16];
    if (v33)
    {
      v30 = *v42;
      v31 = v11;
      v32 = v10;
      do
      {
        v12 = 0;
        do
        {
          if (*v42 != v30)
          {
            objc_enumerationMutation(v11);
          }

          v34 = v12;
          v13 = *(*(&v41 + 1) + 8 * v12);
          v14 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v10 count]);
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v15 = v10;
          v16 = [v15 countByEnumeratingWithState:&v37 objects:v47 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v38;
            do
            {
              for (i = 0; i != v17; i = i + 1)
              {
                if (*v38 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v37 + 1) + 8 * i);
                v21 = objc_autoreleasePoolPush();
                v22 = v7;
                v23 = [(ICCloudContext *)self existingCloudObjectForRecordID:v20 recordType:v13 accountID:v36 context:v7];
                v24 = v23;
                if (v23)
                {
                  [v23 sortChildrenObjects];
                  [v14 addObject:v20];
                }

                objc_autoreleasePoolPop(v21);
                v7 = v22;
              }

              v17 = [v15 countByEnumeratingWithState:&v37 objects:v47 count:16];
            }

            while (v17);
          }

          v11 = v31;
          if ([v14 count])
          {
            v25 = +[REMLog cloudkit];
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v46 = v14;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Sorted children objects after fetching RecordZoneChanges {sortedRecordIDs: %{public}@}", buf, 0xCu);
            }
          }

          [v15 minusSet:v14];

          v12 = v34 + 1;
          v10 = v32;
        }

        while ((v34 + 1) != v33);
        v33 = [v31 countByEnumeratingWithState:&v41 objects:v48 count:16];
      }

      while (v33);
    }

    if ([v10 count])
    {
      sub_1007636F0();
    }

    v9 = v29;
    v8 = v27;
    a4 = v28;
  }

  if (!a4)
  {
    [v7 setShouldSortChildrenAfterFetching:v8];
    if (v8)
    {
      v26 = +[NSMutableSet set];
      [v7 setRecordIDsToSortChildrenAfterFetching:v26];
    }

    else
    {
      [v7 setRecordIDsToSortChildrenAfterFetching:0];
    }
  }
}

- (void)firePollingSyncRequest
{
  activity_block[0] = _NSConcreteStackBlock;
  activity_block[1] = 3221225472;
  activity_block[2] = sub_10008E0E8;
  activity_block[3] = &unk_1008D9990;
  activity_block[4] = self;
  _os_activity_initiate(&_mh_execute_header, "ICCloudContext Polling Timer Fired", OS_ACTIVITY_FLAG_IF_NONE_PRESENT, activity_block);
}

- (void)fetchDatabaseChangesWithReason:(id)a3 cloudSchemaCatchUpSyncContextMap:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [[NSMutableArray alloc] initWithCapacity:2];
  v12 = [(ICCloudContext *)self containersByAccountID];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10008E314;
  v23[3] = &unk_1008DAF10;
  v13 = v11;
  v24 = v13;
  [v12 enumerateKeysAndObjectsUsingBlock:v23];

  v14 = [(ICCloudContext *)self processingQueue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10008E40C;
  v18[3] = &unk_1008DAD58;
  v18[4] = self;
  v19 = v13;
  v20 = v10;
  v21 = v8;
  v22 = v9;
  v15 = v9;
  v16 = v8;
  v17 = v13;
  dispatch_async(v14, v18);
}

- (void)fetchDatabaseChangesForDatabases:(id)a3 reason:(id)a4 cloudSchemaCatchUpSyncContextMap:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v28 = a4;
  v31 = a5;
  v29 = a6;
  v11 = [(ICCloudContext *)self processingQueue];
  dispatch_assert_queue_V2(v11);

  v32 = objc_alloc_init(CKOperationGroup);
  if ([v28 length])
  {
    v12 = [@"FetchDatabaseChanges" stringByAppendingFormat:@"-%@", v28];
  }

  else
  {
    v12 = @"FetchDatabaseChanges";
  }

  v27 = v12;
  [v32 setName:?];
  [v32 setQuantity:{objc_msgSend(v10, "count")}];
  [v32 setExpectedSendSize:1];
  [v32 setExpectedReceiveSize:1];
  v13 = +[NSMutableArray array];
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x3032000000;
  v45[3] = sub_10006D330;
  v45[4] = sub_10006D340;
  v46 = +[NSMutableArray array];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v10;
  v14 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v14)
  {
    v15 = *v42;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v42 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v41 + 1) + 8 * i);
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_10008E928;
        v40[3] = &unk_1008DAF38;
        v40[4] = self;
        v40[5] = v45;
        v18 = [(ICCloudContext *)self operationToFetchDatabaseChangesForDatabase:v17 cloudSchemaCatchUpSyncContextMap:v31 completionHandler:v40];
        [v18 setGroup:v32];
        [v13 addObject:v18];
      }

      v14 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v14);
  }

  if (v29)
  {
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10008E9F4;
    v37[3] = &unk_1008DA098;
    v37[4] = self;
    v39 = v45;
    v38 = v29;
    v19 = [ICNSBlockOperation blockOperationWithBlock:v37];
    [v19 setName:ICNSBlockOperationNameFetchDatabaseChangesCompletion];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v20 = v13;
    v21 = [v20 countByEnumeratingWithState:&v33 objects:v49 count:16];
    if (v21)
    {
      v22 = *v34;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v34 != v22)
          {
            objc_enumerationMutation(v20);
          }

          [v19 addDependency:*(*(&v33 + 1) + 8 * j)];
        }

        v21 = [v20 countByEnumeratingWithState:&v33 objects:v49 count:16];
      }

      while (v21);
    }

    [v20 addObject:v19];
  }

  v24 = +[REMLog cloudkit];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = [v32 ic_loggingDescription];
    *buf = 138543362;
    v48 = v25;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Fetching database changes with operation group %{public}@", buf, 0xCu);
  }

  v26 = [(ICCloudContext *)self operationQueue];
  [v26 addOperations:v13 waitUntilFinished:0];

  [(ICCloudContext *)self errorAndPromptToFileRadarWithICTap2RadarTypeTooManyOperationsInOperationQueueIfNecessary];
  _Block_object_dispose(v45, 8);
}

- (id)operationToFetchDatabaseChangesForDatabase:(id)a3 cloudSchemaCatchUpSyncContextMap:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v36 = a4;
  v9 = a5;
  v38 = v8;
  v10 = [(ICCloudContext *)self accountIDForDatabase:v8];
  if (![v10 length])
  {
    v11 = +[REMLog cloudkit];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1007637F4();
    }
  }

  if (v10)
  {
    v12 = [v36 objectForKey:v10];
  }

  else
  {
    v12 = 0;
  }

  v34 = v12;
  if ([v12 shouldPerformCloudSchemaCatchUpSync])
  {
    v13 = +[REMLog cloudkit];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v38 databaseScope]);
      *buf = 138543618;
      v59 = v10;
      v60 = 2112;
      v61 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Account shouldPerformCloudSchemaCatchUpSync. Will create CKFetchDatabaseChangesOperation with nil previousServerChangeToken {accountID: %{public}@, databaseScope: %@}", buf, 0x16u);
    }

    v37 = 0;
  }

  else
  {
    v37 = [(ICCloudContext *)self serverChangeTokenForChangedZonesInDatabase:v38 accountID:v10];
  }

  v15 = [[CKFetchDatabaseChangesOperation alloc] initWithPreviousServerChangeToken:v37];
  [(ICCloudContext *)self configureOperation:v15];
  [v15 setDatabase:v38];
  [v15 setFetchAllChanges:1];
  objc_initWeak(&location, v15);
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_10008F1D4;
  v53[3] = &unk_1008DAF60;
  v53[4] = self;
  objc_copyWeak(&v55, &location);
  v16 = v10;
  v54 = v16;
  [v15 setRecordZoneWithIDChangedBlock:v53];
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_10008F248;
  v50[3] = &unk_1008DAF60;
  v50[4] = self;
  objc_copyWeak(&v52, &location);
  v17 = v16;
  v51 = v17;
  [v15 setRecordZoneWithIDWasDeletedBlock:v50];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10008F2BC;
  v47[3] = &unk_1008DAF88;
  v47[4] = self;
  objc_copyWeak(&v49, &location);
  v18 = v17;
  v48 = v18;
  [v15 setChangeTokenUpdatedBlock:v47];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_10008F330;
  v43[3] = &unk_1008DAFB0;
  v43[4] = self;
  objc_copyWeak(&v46, &location);
  v35 = v18;
  v44 = v35;
  v33 = v9;
  v45 = v33;
  [v15 setFetchDatabaseChangesCompletionBlock:v43];
  v19 = +[REMLog cloudkit];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [v15 ic_loggingDescription];
    *buf = 138543618;
    v59 = v35;
    v60 = 2114;
    v61 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Creating fetch database changes operation for account %{public}@, %{public}@", buf, 0x16u);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v21 = [(ICCloudContext *)self operationQueue];
  v22 = [v21 operations];

  v23 = [v22 countByEnumeratingWithState:&v39 objects:v57 count:16];
  if (v23)
  {
    v24 = *v40;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v40 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = *(*(&v39 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = +[REMLog cloudkit];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v28 = [v15 ic_loggingDescription];
            v29 = [v26 ic_loggingDescription];
            *buf = 138543618;
            v59 = v28;
            v60 = 2114;
            v61 = v29;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Database changes operation %{public}@ will wait for %{public}@", buf, 0x16u);
          }

          [v15 addDependency:v26];
        }
      }

      v23 = [v22 countByEnumeratingWithState:&v39 objects:v57 count:16];
    }

    while (v23);
  }

  v30 = v45;
  v31 = v15;

  objc_destroyWeak(&v46);
  objc_destroyWeak(&v49);

  objc_destroyWeak(&v52);
  objc_destroyWeak(&v55);

  objc_destroyWeak(&location);

  return v31;
}

- (void)fetchDatabaseChangesOperation:(id)a3 recordZoneWithIDChanged:(id)a4 accountID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ICCloudContext *)self processingQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10008F4B8;
  v15[3] = &unk_1008D9B70;
  v16 = v10;
  v17 = v9;
  v18 = v8;
  v19 = self;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  dispatch_async(v11, v15);
}

- (void)sharedZoneWasDeleted:(id)a3 accountID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[REMLog cloudkit];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 ic_loggingDescription];
    *buf = 138543618;
    v17 = v7;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Shared zone was deleted for account ID %{public}@: %{public}@", buf, 0x16u);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10008F774;
  v12[3] = &unk_1008DAFD8;
  v13 = v6;
  v14 = v7;
  v15 = self;
  v10 = v7;
  v11 = v6;
  [(ICCloudContext *)self performAndWaitContextWithBatchFetchHelperForAccountID:v10 block:v12];
}

- (void)fetchDatabaseChangesOperation:(id)a3 recordZoneWithIDWasDeleted:(id)a4 accountID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ICCloudContext *)self processingQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10008FB88;
  v15[3] = &unk_1008D9B70;
  v16 = v10;
  v17 = v9;
  v18 = v8;
  v19 = self;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  dispatch_async(v11, v15);
}

- (void)fetchDatabaseChangesOperation:(id)a3 changeTokenUpdated:(id)a4 accountID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ICCloudContext *)self processingQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10008FF3C;
  v15[3] = &unk_1008D9B70;
  v16 = v10;
  v17 = v9;
  v18 = v8;
  v19 = self;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  dispatch_async(v11, v15);
}

- (void)fetchDatabaseChangesOperation:(id)a3 finishedWithServerChangeToken:(id)a4 accountID:(id)a5 error:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(ICCloudContext *)self processingQueue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000901B4;
  v23[3] = &unk_1008DB000;
  v24 = v14;
  v25 = v13;
  v26 = v12;
  v27 = v15;
  v28 = self;
  v29 = v16;
  v18 = v15;
  v19 = v16;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  dispatch_async(v17, v23);
}

- (void)loadZoneFetchState
{
  if (qword_100952988 != -1)
  {
    sub_100763BFC();
  }

  v3 = objc_opt_new();
  [(ICCloudContext *)self setAccountZoneIDsNeedingFetchChanges:v3];

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:@"CloudKitAccountZonesNeedingFetchChanges"];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10009091C;
  v9[3] = &unk_1008DB048;
  v9[4] = self;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];
  v6 = objc_opt_new();
  [(ICCloudContext *)self setAccountZoneIDsFetchingChanges:v6];

  v7 = +[REMLog cloudkit];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(ICCloudContext *)self accountZoneIDsNeedingFetchChanges];
    *buf = 138543362;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Loaded zone fetch state: zonesNeedingFetchChanges=%{public}@", buf, 0xCu);
  }
}

- (void)saveZoneFetchState
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(ICCloudContext *)self accountZoneIDsNeedingFetchChanges];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100090BCC;
  v17[3] = &unk_1008DB070;
  v17[4] = self;
  v5 = v3;
  v18 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v17];

  v6 = [(ICCloudContext *)self accountZoneIDsFetchingChanges];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100090C64;
  v14 = &unk_1008DB070;
  v15 = self;
  v7 = v5;
  v16 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:&v11];

  v8 = [REMLog cloudkit:v11];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Saving zone fetch state: zonesNeedingFetchChanges=%@", buf, 0xCu);
  }

  v9 = +[NSUserDefaults standardUserDefaults];
  v10 = [v7 copy];
  [v9 setObject:v10 forKey:@"CloudKitAccountZonesNeedingFetchChanges"];
}

- (void)clearZoneFetchState
{
  v3 = [(ICCloudContext *)self processingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100090DCC;
  block[3] = &unk_1008D9990;
  block[4] = self;
  dispatch_async(v3, block);
}

+ (id)zoneInfosFromZoneIDs:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = +[NSMutableDictionary dictionary];
        v11 = [v9 zoneName];
        [v10 setObject:v11 forKeyedSubscript:@"ZoneName"];

        v12 = [v9 ownerName];
        v13 = [v12 isEqualToString:CKCurrentUserDefaultName];

        if ((v13 & 1) == 0)
        {
          v14 = [v9 ownerName];
          [v10 setObject:v14 forKeyedSubscript:@"OwnerName"];
        }

        [v4 addObject:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (id)zoneIDsFromZoneInfos:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v3 count]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    v14 = CKCurrentUserDefaultName;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:{@"ZoneName", v14}];
        v11 = [v9 objectForKeyedSubscript:@"OwnerName"];
        if (!v11)
        {
          v11 = v14;
        }

        v12 = [[CKRecordZoneID alloc] initWithZoneName:v10 ownerName:v11 databaseScope:{+[CKRecordZoneID ic_defaultDatabaseScopeForOwnerName:](CKRecordZoneID, "ic_defaultDatabaseScopeForOwnerName:", v11)}];
        [v4 addObject:v12];
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)subscriptionForDatabase:(id)a3
{
  [a3 databaseScope];
  v3 = CKDatabaseScopeString();
  v4 = [NSString stringWithFormat:@"DatabaseSubscription-%@", v3];

  v5 = [[CKDatabaseSubscription alloc] initWithSubscriptionID:v4];
  v6 = objc_alloc_init(CKNotificationInfo);
  [v6 setShouldSendContentAvailable:1];
  [v5 setNotificationInfo:v6];

  return v5;
}

- (void)setupAPSConnection
{
  v3 = [(ICCloudContext *)self apsConnection];

  if (!v3)
  {
    v4 = +[REMCloudContainer isSandboxEnvironment];
    v5 = &APSEnvironmentDevelopment;
    if (!v4)
    {
      v5 = &APSEnvironmentProduction;
    }

    v6 = *v5;
    v7 = REMDaemonAPSNamedDelegatePort;
    v8 = [APSConnection alloc];
    v9 = [(ICCloudContext *)self processingQueue];
    v10 = [v8 initWithEnvironmentName:v6 namedDelegatePort:v7 queue:v9];

    if (v10)
    {
      v11 = [@"com.apple.icloud-container." stringByAppendingString:REMAppBundleIdentifier];
      [(ICCloudContext *)self setApsTopic:v11];

      v12 = [(ICCloudContext *)self apsTopic];
      v14 = v12;
      v13 = [NSArray arrayWithObjects:&v14 count:1];
      [v10 _setEnabledTopics:v13];

      [v10 setDelegate:self];
      [(ICCloudContext *)self setApsConnection:v10];
    }
  }
}

- (void)updateSubscriptionsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[ICSyncSettings sharedSettings];
  v6 = [v5 hasOptions:1];

  if (v6)
  {
    v7 = [(ICCloudContext *)self processingQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000915A4;
    v8[3] = &unk_1008DA048;
    v8[4] = self;
    v9 = v4;
    dispatch_async(v7, v8);
  }

  else
  {
    [(ICCloudContext *)self setNeedsToUpdateSubscriptions:0];
    if (v4)
    {
      (*(v4 + 2))(v4, 0);
    }
  }
}

- (void)fetchSubscriptionsForDatabase:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICCloudContext *)self processingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100092004;
  block[3] = &unk_1008DA318;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)saveSubscriptionsForDatabase:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICCloudContext *)self processingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100092700;
  block[3] = &unk_1008DA318;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)loadSubscribedSubscriptionIDs
{
  v3 = [(ICCloudContext *)self icUserDefaults];
  v4 = [v3 userDefaults];
  [v4 doubleForKey:@"SubscriptionIDsLastModifiedDate"];
  v6 = v5;

  if (v6 <= 0.0)
  {
    +[NSDate distantPast];
  }

  else
  {
    [NSDate dateWithTimeIntervalSinceReferenceDate:v6];
  }
  v7 = ;
  [(ICCloudContext *)self setSubscribedSubscriptionIDsLastModifiedDate:v7];

  v8 = +[ICCloudConfiguration sharedConfiguration];
  [v8 persistedSubscriptionIDsValidityPeriod];
  v10 = v9;

  v11 = +[REMLog cloudkit];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [NSNumber numberWithDouble:v6];
    v13 = [(ICCloudContext *)self subscribedSubscriptionIDsLastModifiedDate];
    v14 = [NSNumber numberWithDouble:v10];
    *buf = 138543874;
    v28 = v12;
    v29 = 2114;
    v30 = v13;
    v31 = 2114;
    v32 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Loaded subscribed subscription IDs last updated time from user defaults {timestamp: %{public}@, date: %{public}@, validityPeriod: %{public}@}", buf, 0x20u);
  }

  v15 = +[NSDate date];
  v16 = [(ICCloudContext *)self subscribedSubscriptionIDsLastModifiedDate];
  [v15 timeIntervalSinceDate:v16];
  v18 = v17;

  if (v18 <= v10)
  {
    v19 = [(ICCloudContext *)self icUserDefaults];
    v20 = [v19 userDefaults];
    v21 = [v20 dictionaryForKey:@"SubscriptionIDs"];

    v22 = +[REMLog cloudkit];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v21;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Loaded subscribed subscription IDs from user defaults: %@", buf, 0xCu);
    }

    +[NSMutableDictionary dictionary];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100093298;
    v26 = v25[3] = &unk_1008DB048;
    v23 = v26;
    [v21 enumerateKeysAndObjectsUsingBlock:v25];
    v24 = [v23 copy];
    [(ICCloudContext *)self setSubscribedSubscriptionIDsByAccountID:v24];
  }

  else
  {
    [(ICCloudContext *)self clearSubscribedSubscriptionIDs];
  }
}

- (void)addSubscribedSubscriptionIDs:(id)a3 accountID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICCloudContext *)self processingQueue];
  dispatch_assert_queue_V2(v8);

  v9 = +[REMLog cloudkit];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Persisting subscribed subscription ID to user defaults {subscriptionID: %{public}@}", buf, 0xCu);
  }

  v10 = [(ICCloudContext *)self subscribedSubscriptionIDsByAccountID];
  if (v10)
  {
    v11 = [(ICCloudContext *)self subscribedSubscriptionIDsByAccountID];
    v12 = [v11 mutableCopy];
  }

  else
  {
    v12 = +[NSMutableDictionary dictionary];
  }

  v13 = [v12 objectForKeyedSubscript:v7];
  v14 = v13;
  if (!v13)
  {
    v14 = +[NSSet set];
  }

  v15 = [v14 setByAddingObject:v6];
  [v12 setObject:v15 forKeyedSubscript:v7];

  if (!v13)
  {
  }

  v16 = [v12 copy];
  [(ICCloudContext *)self setSubscribedSubscriptionIDsByAccountID:v16];

  v17 = +[NSDate date];
  [(ICCloudContext *)self setSubscribedSubscriptionIDsLastModifiedDate:v17];

  +[NSMutableDictionary dictionary];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000935F4;
  v24 = v23[3] = &unk_1008DAD30;
  v18 = v24;
  [v12 enumerateKeysAndObjectsUsingBlock:v23];
  v19 = [(ICCloudContext *)self icUserDefaults];
  v20 = [v19 userDefaults];

  v21 = [v18 copy];
  [v20 setObject:v21 forKey:@"SubscriptionIDs"];

  v22 = [(ICCloudContext *)self subscribedSubscriptionIDsLastModifiedDate];
  [v22 timeIntervalSinceReferenceDate];
  [v20 setDouble:@"SubscriptionIDsLastModifiedDate" forKey:?];
}

- (void)clearSubscribedSubscriptionIDs
{
  v3 = [(ICCloudContext *)self processingQueue];
  dispatch_assert_queue_V2(v3);

  v4 = +[REMLog cloudkit];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Clearing subscribed subscription IDs", v9, 2u);
  }

  v5 = [(ICCloudContext *)self icUserDefaults];
  v6 = [v5 userDefaults];

  [v6 removeObjectForKey:@"SubscriptionIDs"];
  v7 = +[NSDictionary dictionary];
  [(ICCloudContext *)self setSubscribedSubscriptionIDsByAccountID:v7];

  [v6 removeObjectForKey:@"SubscriptionIDsLastModifiedDate"];
  v8 = +[NSDate distantPast];
  [(ICCloudContext *)self setSubscribedSubscriptionIDsLastModifiedDate:v8];

  [(ICCloudContext *)self setNeedsToUpdateSubscriptions:1];
}

- (void)updateCloudContextStateWithSyncOption:(int64_t)a3 syncReason:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = +[REMLog cloudkit];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "os_transaction INIT {name: com.apple.remindd.cloudkit.updateCloudContextState}", buf, 2u);
  }

  v11 = os_transaction_create();
  v12 = [(ICCloudContext *)self processingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000938E4;
  block[3] = &unk_1008DB278;
  block[4] = v9;
  block[5] = self;
  v16 = v11;
  v17 = v8;
  v18 = a3;
  v13 = v11;
  v14 = v8;
  dispatch_async(v12, block);
}

- (void)checkForLongLivedOperations
{
  v3 = [(ICCloudContext *)self containersByAccountID];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100094E38;
  v4[3] = &unk_1008DAF10;
  v4[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

- (id)_existingCloudDirtyToken
{
  v3 = [(ICCloudContext *)self processingQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(ICCloudContext *)self icUserDefaults];
  v5 = [v4 userDefaults];
  v6 = [v5 objectForKey:@"CloudDirtyUUIDKey"];

  return v6;
}

- (id)_markCloudAsDirtyAndReturnToken
{
  v3 = [(ICCloudContext *)self processingQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_alloc_init(NSUUID);
  v5 = [v4 UUIDString];

  v6 = +[REMLog cloudkit];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Marking cloud as dirty {newToken: %{public}@}", &v10, 0xCu);
  }

  v7 = [(ICCloudContext *)self icUserDefaults];
  v8 = [v7 userDefaults];
  [v8 setObject:v5 forKey:@"CloudDirtyUUIDKey"];

  return v5;
}

- (void)_clearCloudDirtyForToken:(id)a3
{
  v4 = a3;
  v5 = [(ICCloudContext *)self processingQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(ICCloudContext *)self icUserDefaults];
  v7 = [v6 userDefaults];

  v8 = [v7 objectForKey:@"CloudDirtyUUIDKey"];
  v9 = v8;
  if (v8 && ![v8 isEqual:v4])
  {
    v11 = +[REMLog cloudkit];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543618;
      v13 = v9;
      v14 = 2114;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NOT clearing cloud dirty {currentToken: %{public}@, cloudDirtyToken: %{public}@}", &v12, 0x16u);
    }
  }

  else
  {
    v10 = +[REMLog cloudkit];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138543618;
      v13 = v9;
      v14 = 2114;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Clearing cloud dirty {currentToken: %{public}@, cloudDirtyToken: %{public}@}", &v12, 0x16u);
    }

    [v7 removeObjectForKey:@"CloudDirtyUUIDKey"];
  }
}

- (void)incrementRetryCountForOperationType:(id)a3
{
  v4 = a3;
  v5 = [(ICCloudContext *)self processingQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100095894;
  v7[3] = &unk_1008D9B98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)clearRetryCountForOperationType:(id)a3
{
  v4 = a3;
  v5 = [(ICCloudContext *)self processingQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100095AB0;
  v7[3] = &unk_1008D9B98;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)incrementOrClearRetryCountForOperationType:(id)a3 error:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v6 && ![(ICCloudContext *)self shouldIgnoreErrorForBackoffTimer:v6 operationType:v7])
  {
    [(ICCloudContext *)self incrementRetryCountForOperationType:v7];
  }

  else
  {
    [(ICCloudContext *)self clearRetryCountForOperationType:v7];
  }
}

- (BOOL)shouldIgnoreErrorForBackoffTimer:(id)a3 operationType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICCloudContext *)self retryCountsByOperationType];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (v9)
  {
    v10 = 0;
  }

  else if ([v6 code] == 2)
  {
    objc_opt_class();
    v11 = [v6 userInfo];
    v12 = [v11 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
    v13 = REMDynamicCast();
    v14 = [v13 allValues];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100095E04;
    v18[3] = &unk_1008DB2F0;
    v18[4] = self;
    v19 = v7;
    v10 = [v14 ic_containsObjectPassingTest:v18];
  }

  else
  {
    v15 = [(ICCloudContext *)self errorCodesToIgnoreForBackoffTimer];
    v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 code]);
    v10 = [v15 containsObject:v16];
  }

  return v10;
}

- (void)startRetryTimerIfNecessaryWithError:(id)a3
{
  v4 = a3;
  v5 = [(ICCloudContext *)self processingQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100095EC8;
  v7[3] = &unk_1008D9B98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)retryOperationsIfNecessary
{
  v3 = _os_activity_create(&_mh_execute_header, "CloudKit Retry", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100096460;
  block[3] = &unk_1008D9990;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
  v4 = [(ICCloudContext *)self processingQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000964BC;
  v5[3] = &unk_1008D9990;
  v5[4] = self;
  dispatch_async(v4, v5);

  os_activity_scope_leave(&state);
}

- (id)debug_replaceWithSimulatedCKErrorIfSetWithOriginalError:(id)a3
{
  v3 = a3;
  v4 = +[REMUserDefaults daemonUserDefaults];
  v5 = [v4 debugSimulatedCKErrorCode];

  if (v5)
  {
    v6 = +[REMLog cloudkit];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = v5;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DEBUG debugSimulatedCKErrorCode=%@, original=%@", &v14, 0x16u);
    }

    v7 = [v3 userInfo];
    v8 = [v7 mutableCopy];

    v9 = [NSNumber numberWithDouble:3.0];
    [v8 setObject:v9 forKeyedSubscript:CKErrorRetryAfterKey];

    v10 = [v5 integerValue];
    v11 = [NSDictionary dictionaryWithDictionary:v8];
    v12 = [NSError errorWithDomain:CKErrorDomain code:v10 userInfo:v11];
  }

  else
  {
    v12 = v3;
  }

  return v12;
}

- (void)debug_retryAccountZoneIDsNeedingToBeSavedWithZoneID:(id)a3 accountID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[REMLog cloudkit];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "DEBUG retryAccountZoneIDsNeedingToBeSaved {zoneID=%@, accountID=%@}", &v14, 0x16u);
  }

  v9 = [(ICCloudContext *)self accountZoneIDsNeedingToBeSaved];
  [v9 ic_addZoneID:v6 forAccountID:v7];

  v10 = +[NSMutableDictionary dictionary];
  v11 = [NSNumber numberWithDouble:3.0];
  [v10 setObject:v11 forKeyedSubscript:CKErrorRetryAfterKey];

  v12 = [NSDictionary dictionaryWithDictionary:v10];
  v13 = [NSError errorWithDomain:CKErrorDomain code:1 userInfo:v12];

  [(ICCloudContext *)self startRetryTimerIfNecessaryWithError:v13];
}

- (void)saveServerChangeToken:(id)a3 forRecordZoneID:(id)a4 databaseScope:(int64_t)a5 accountID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = +[REMLog cloudkit];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [v11 ic_loggingDescription];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = @"zone changes";
    }

    v17 = CKDatabaseScopeString();
    v18 = [v10 ic_loggingDescription];
    *buf = 138543874;
    v29 = v16;
    v30 = 2114;
    v31 = v17;
    v32 = 2114;
    v33 = v18;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Saving server change token for %{public}@ %{public}@: %{public}@", buf, 0x20u);
  }

  if (v12)
  {
    v19 = [(ICCloudContext *)self serverChangeTokenContext];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000978F0;
    v21[3] = &unk_1008DB410;
    v22 = v12;
    v23 = v19;
    v24 = self;
    v25 = v11;
    v27 = a5;
    v26 = v10;
    v20 = v19;
    [v20 performBlockAndWait:v21];
  }

  else
  {
    v20 = +[REMLog cloudkit];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1007645A8();
    }
  }
}

- (id)serverChangeTokenForRecordZoneID:(id)a3 databaseScope:(int64_t)a4 accountID:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = sub_10006D330;
    v25 = sub_10006D340;
    v26 = 0;
    v10 = [(ICCloudContext *)self serverChangeTokenContext];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100097FE4;
    v15[3] = &unk_1008DB438;
    v16 = v9;
    v11 = v10;
    v17 = v11;
    v19 = &v21;
    v20 = a4;
    v18 = v8;
    [v11 performBlockAndWait:v15];
    v12 = v22[5];

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v13 = +[REMLog cloudkit];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10076464C();
    }

    v12 = 0;
  }

  return v12;
}

- (void)deleteServerChangeTokenForRecordZoneID:(id)a3 databaseScope:(int64_t)a4 accountID:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[REMLog cloudkit];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v8 ic_loggingDescription];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = @"zone changes";
    }

    v14 = CKDatabaseScopeString();
    *buf = 138543618;
    v24 = v13;
    v25 = 2114;
    v26 = v14;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Deleting server change token for %{public}@ %{public}@", buf, 0x16u);
  }

  if (v9)
  {
    v15 = [(ICCloudContext *)self serverChangeTokenContext];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000982A4;
    v17[3] = &unk_1008DB460;
    v18 = v9;
    v19 = v15;
    v21 = self;
    v22 = a4;
    v20 = v8;
    v16 = v15;
    [v16 performBlockAndWait:v17];
  }

  else
  {
    v16 = +[REMLog cloudkit];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10076476C();
    }
  }
}

- (void)deleteAllServerChangeTokens
{
  v3 = +[REMLog cloudkit];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deleting all server change tokens", buf, 2u);
  }

  [(ICCloudContext *)self serverChangeTokenContext];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100098468;
  v5[3] = &unk_1008D9B98;
  v6 = v5[4] = self;
  v4 = v6;
  [v4 performBlockAndWait:v5];
}

- (void)deleteAllApplicationDataFromServerWithAccountID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[REMLog cloudkit];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Deleting all server data", buf, 2u);
  }

  if ([v6 length])
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000987A8;
    v11[3] = &unk_1008DA318;
    v11[4] = self;
    v12 = v6;
    v13 = v7;
    [(ICCloudContext *)self cancelEverythingWithCompletionHandler:v11];
  }

  else
  {
    v9 = +[REMLog cloudkit];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_100764880();
    }

    v10 = ICGenericError();
    (*(v7 + 2))(v7, v10);
  }
}

- (void)saveServerChangeToken:(id)a3 forChangedZonesInDatabase:(id)a4 accountID:(id)a5
{
  v8 = a5;
  v9 = a3;
  -[ICCloudContext saveServerChangeToken:forRecordZoneID:databaseScope:accountID:](self, "saveServerChangeToken:forRecordZoneID:databaseScope:accountID:", v9, 0, [a4 databaseScope], v8);
}

- (void)deleteServerChangeTokenForChangedZonesInDatabase:(id)a3 accountID:(id)a4
{
  v6 = a4;
  -[ICCloudContext deleteServerChangeTokenForRecordZoneID:databaseScope:accountID:](self, "deleteServerChangeTokenForRecordZoneID:databaseScope:accountID:", 0, [a3 databaseScope], v6);
}

- (id)serverChangeTokenForChangedZonesInDatabase:(id)a3 accountID:(id)a4
{
  v6 = a4;
  v7 = -[ICCloudContext serverChangeTokenForRecordZoneID:databaseScope:accountID:](self, "serverChangeTokenForRecordZoneID:databaseScope:accountID:", 0, [a3 databaseScope], v6);

  return v7;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (off_100934E50 == a6)
  {
    v11 = a5;
    objc_opt_class();
    v12 = [v11 objectForKeyedSubscript:NSKeyValueChangeOldKey];
    v13 = REMDynamicCast();
    v14 = [v13 unsignedIntegerValue];

    objc_opt_class();
    v15 = [v11 objectForKeyedSubscript:NSKeyValueChangeNewKey];

    v16 = REMDynamicCast();
    v17 = [v16 unsignedIntegerValue];

    if (v14)
    {
      v18 = 1;
    }

    else
    {
      v18 = v17 == 0;
    }

    if (!v18 || (v14 ? (v19 = v17 == 0) : (v19 = 0), v19))
    {
      v20 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100098E58;
      block[3] = &unk_1008DB318;
      block[4] = self;
      block[5] = v17;
      dispatch_async(v20, block);
    }

    v21 = [(ICCloudContext *)self processingQueue];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100098F34;
    v23[3] = &unk_1008D9990;
    v23[4] = self;
    dispatch_async(v21, v23);
  }

  else
  {
    v22.receiver = self;
    v22.super_class = ICCloudContext;
    v10 = a5;
    [(ICCloudContext *)&v22 observeValueForKeyPath:a3 ofObject:a4 change:v10 context:a6];
  }
}

- (BOOL)shouldPollCloudKitWhenLaunchingAndBackgrounding
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100099010;
  block[3] = &unk_1008D9990;
  block[4] = self;
  if (qword_100952990 != -1)
  {
    dispatch_once(&qword_100952990, block);
  }

  v3 = [(ICCloudContext *)self icUserDefaults];
  v4 = [v3 userDefaults];
  v5 = [v4 BOOLForKey:@"PollCloudKitWhenLaunchingAndBackgrounding"];

  return v5;
}

- (void)_accountsDidEnableOrDisable
{
  [(ICCloudContext *)self clearContainers];
  v3 = +[REMUserDefaults daemonUserDefaults];
  [v3 setCloudKitMergeLocalLastDateMaxRetryReached:0];

  v4 = +[REMUserDefaults daemonUserDefaults];
  [v4 setCloudKitMergeLocalLastBuildVersionMaxRetryReached:0];

  v5 = [(ICCloudContext *)self processingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000991A8;
  block[3] = &unk_1008D9990;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)accountsDidDisable
{
  v3 = +[REMLog cloudkit];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "ICCC received accountsDidDisable from RDStoreController.", buf, 2u);
  }

  [(ICCloudContext *)self _accountsDidEnableOrDisable];
  [(ICCloudContext *)self removeStaleAccountStatus];
  [(ICCloudContext *)self removeStaleFetchDatabaseRetryMetadata];
  v4 = [(ICCloudContext *)self operationQueue];
  v5 = [v4 operationCount];

  if (v5)
  {
    v6 = +[REMLog cloudkit];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ICCC: Stopping all CloudKit operations after deleting CloudKit account", buf, 2u);
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000993D4;
    v7[3] = &unk_1008D9990;
    v7[4] = self;
    [(ICCloudContext *)self cancelEverythingWithCompletionHandler:v7];
  }
}

- (void)accountsDidEnable
{
  v3 = +[REMLog cloudkit];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "ICCC received accountsDidEnable from RDStoreController.", &buf, 2u);
  }

  [(ICCloudContext *)self _accountsDidEnableOrDisable];
  os_unfair_lock_lock(&self->_accountInitializerDidCompleteOnAccountsDidChangeObserverLock);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000996D8;
  v19[3] = &unk_1008D9990;
  v19[4] = self;
  sub_1000996D8(v19);
  os_unfair_lock_unlock(&self->_accountInitializerDidCompleteOnAccountsDidChangeObserverLock);
  v4 = +[REMLog cloudkit];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "os_transaction INIT {name: com.apple.remindd.cloudkit.accountsDidEnable.pending.RDAccountInitializerDidCompleteInitializeAllAccountsObserver}", &buf, 2u);
  }

  v5 = os_transaction_create();
  objc_initWeak(&buf, self);
  v6 = [RDAccountInitializerDidCompleteInitializeAllAccountsObserver alloc];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10009974C;
  v15[3] = &unk_1008D9B48;
  objc_copyWeak(&v17, &buf);
  v7 = v5;
  v16 = v7;
  v8 = [(ICCloudContext *)self processingQueue];
  v9 = [(RDAccountInitializerDidCompleteInitializeAllAccountsObserver *)v6 initWithHandler:v15 queue:v8];

  v10 = +[REMLog cloudkit];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "ICCC: Observing DidCompleteInitializeAllAccountsNotification on accountsDidEnable.", v14, 2u);
  }

  [(RDAccountInitializerDidCompleteInitializeAllAccountsObserver *)v9 observe];
  os_unfair_lock_lock(&self->_accountInitializerDidCompleteOnAccountsDidChangeObserverLock);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100099878;
  v12[3] = &unk_1008D9B98;
  v12[4] = self;
  v11 = v9;
  v13 = v11;
  sub_100099878(v12);
  os_unfair_lock_unlock(&self->_accountInitializerDidCompleteOnAccountsDidChangeObserverLock);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&buf);
}

- (void)didCompleteInitializeAllAccounts:(id)a3
{
  v4 = a3;
  v5 = [(ICCloudContext *)self processingQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 userInfo];

  if (v6)
  {
    v7 = [v4 userInfo];
    v8 = [v7 objectForKeyedSubscript:@"error"];

    if (v8)
    {
      v9 = +[REMLog cloudkit];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1007649FC();
      }

LABEL_12:
      goto LABEL_16;
    }
  }

  v10 = +[REMLog cloudkit];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "ICCC: Calling -didCompleteInitializeAllAccounts:", &v15, 2u);
  }

  [(ICCloudContext *)self observePrimaryCloudKitAccountPersonIDSaltChanges];
  v11 = [(ICCloudContext *)self isDisabled];
  v12 = +[REMLog cloudkit];
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      v14 = [(ICCloudContext *)self readinessLoggingDescription];
      v15 = 138543362;
      v16 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ICCC still disabled after accountsDidChange and DidCompleteInitializeAllAccountsNotification, will retry UpdateCloudContext in a few seconds... {%{public}@}", &v15, 0xCu);
    }

    [(ICCloudContext *)self setNeedsToUpdateCloudContextOnAccountsDidChange:1];
    v8 = [REMError retryLaterErrorWithInterval:3.0];
    [(ICCloudContext *)self startRetryTimerIfNecessaryWithError:v8];
    goto LABEL_12;
  }

  if (v13)
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ICCC: Now call UpdateCloudContext after accountsDidChange and RDAccountInitializer completed works.", &v15, 2u);
  }

  [(ICCloudContext *)self setNeedsToUpdateCloudContextOnAccountsDidChange:0];
  [(ICCloudContext *)self updateCloudContextStateWithSyncOption:1 syncReason:@"AccountsDidChange" withCompletionHandler:0];
LABEL_16:
}

- (void)applicationWillEnterForeground
{
  v3 = +[REMLog cloudkit];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Cloud context received application will enter foreground notification", buf, 2u);
  }

  v4 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100099BC4;
  block[3] = &unk_1008D9990;
  block[4] = self;
  dispatch_after(v4, &_dispatch_main_q, block);
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v4 = [REMLog cloudkit:a3];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Push connection established with iCloud", v5, 2u);
  }
}

- (void)connection:(id)a3 didFailToSendOutgoingMessage:(id)a4 error:(id)a5
{
  v5 = a5;
  v6 = +[REMLog cloudkit];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100764A6C();
  }
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICCloudContext *)self processingQueue];
  dispatch_assert_queue_V2(v8);

  v9 = _os_activity_create(&_mh_execute_header, "SYNC[APS]", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  v10 = +[REMLog cloudkit];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v7 topic];
    *buf = 138543362;
    v35 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SYNC[APS] START {topic: %{public}@}", buf, 0xCu);
  }

  v12 = +[REMLog cloudkit];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "os_transaction INIT {name: com.apple.remindd.cloudkit.sync.aps}", buf, 2u);
  }

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10009A0B0;
  v31[3] = &unk_1008D9990;
  v13 = os_transaction_create();
  v32 = v13;
  v14 = objc_retainBlock(v31);
  v15 = [v7 topic];
  v16 = [(ICCloudContext *)self apsTopic];
  v17 = [v15 isEqualToString:v16];

  if (v17)
  {
    v18 = [v7 userInfo];
    v19 = [CKNotification notificationFromRemoteNotificationDictionary:v18];

    if (v19)
    {
      v20 = [(ICCloudContext *)self _markCloudAsDirtyAndReturnToken];
      v21 = [(ICCloudContext *)self processingQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10009A134;
      block[3] = &unk_1008DB528;
      block[4] = self;
      v30 = v14;
      v28 = v19;
      v29 = v20;
      v22 = v20;
      dispatch_async(v21, block);
    }

    else
    {
      v25 = +[REMLog cloudkit];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        v26 = [(ICCloudContext *)self apsTopic];
        sub_100764B30(v26, buf);
      }

      (v14[2])(v14);
    }
  }

  else
  {
    v23 = +[REMLog cloudkit];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      v24 = [v7 topic];
      sub_100764ADC(v24, buf);
    }

    (v14[2])(v14);
  }

  os_activity_scope_leave(&state);
}

- (void)migrationStateDidChange:(BOOL)a3 didFinishMigration:(BOOL)a4
{
  v7 = [(ICCloudContext *)self processingQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10009B460;
  v8[3] = &unk_1008DB5C8;
  v9 = a3;
  v10 = a4;
  v8[4] = self;
  dispatch_async(v7, v8);
}

- (void)adjustAPSNotificationDebouncerInterval
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009B630;
  v4[3] = &unk_1008D9EE0;
  v4[4] = self;
  v3 = [(ICCloudContext *)self newBackgroundContext];
  v5 = v3;
  v6 = &v7;
  [v3 performBlockAndWait:v4];
  [(ICCloudContext *)self adjustAPSNotificationDebouncerIntervalWithMigrationState:*(v8 + 24)];

  _Block_object_dispose(&v7, 8);
}

- (void)adjustAPSNotificationDebouncerIntervalWithMigrationState:(BOOL)a3
{
  v3 = a3;
  v5 = +[ICCloudConfiguration sharedConfiguration];
  v6 = v5;
  if (v3)
  {
    [v5 apsDebouncerMigrationInProgressInterval];
  }

  else
  {
    [v5 apsDebouncerDefaultInterval];
  }

  v8 = v7;
  v9 = +[REMLog cloudkit];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Setting APS debouncer interval to %f", &v11, 0xCu);
  }

  v10 = [(ICCloudContext *)self apsNotificationHandlingDebouncer];
  [v10 setDebouncingInterval:v8];
}

- (id)setUpCloudSchemaCatchUpSyncContextMapWithAccountIDs:(id)a3 syncReason:(id)a4 outBackgroundScheduledCatchUpSyncContextMap:(id)a5
{
  v8 = a3;
  v9 = a4;
  v32 = a5;
  v10 = [(ICCloudContext *)self processingQueue];
  dispatch_assert_queue_V2(v10);

  if (![v8 count])
  {
    v33 = +[NSDictionary dictionary];
    goto LABEL_30;
  }

  v33 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v8 count]);
  v11 = [(ICCloudContext *)self icUserDefaults];
  v12 = [v11 cloudSchemaCatchUpSyncSchedulingStateStorage];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v31 = v8;
  obj = v8;
  v13 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (!v13)
  {
    goto LABEL_26;
  }

  v14 = v13;
  v15 = *v37;
  do
  {
    v16 = 0;
    v34 = v14;
    do
    {
      if (*v37 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v36 + 1) + 8 * v16);
      v18 = [(ICCloudContext *)self contextForAccountID:v17 withBatchFetchHelper:0, v31];
      v19 = [[ICCloudSchemaCatchUpSyncContext alloc] initWithAccountIdentifier:v17 syncReason:v9 schedulingStateStorage:v12 managedObjectContext:v18];
      if (![(ICCloudSchemaCatchUpSyncContext *)v19 shouldPerformCloudSchemaCatchUpSync])
      {
        v22 = v15;
        v23 = v12;
        v24 = v9;
        v25 = [(ICCloudSchemaCatchUpSyncContext *)v19 isCloudSchemaCatchUpSyncNeeded];
        v26 = +[REMLog cloudkit];
        v27 = v26;
        if (v25)
        {
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v41 = v17;
            v42 = 2048;
            v43 = 20250728;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "CloudSchemaCatchUpSync: Account needs to schedule a cloud schema catch up sync {accountID: %{public}@, runtimeCloudSchemaVersion: %lld}", buf, 0x16u);
          }

          v28 = [(ICCloudContext *)self cloudSchemaCatchUpSyncController];

          if (v28)
          {
            if (v32)
            {
              [v32 setObject:v19 forKey:v17];
            }

            v29 = [(ICCloudContext *)self cloudSchemaCatchUpSyncController];
            [v29 scheduleBackgroundActivity];

            goto LABEL_23;
          }

          v27 = +[REMLog cloudkit];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543618;
            v41 = v17;
            v42 = 2048;
            v43 = 20250728;
            _os_log_fault_impl(&_mh_execute_header, v27, OS_LOG_TYPE_FAULT, "CloudSchemaCatchUpSync: No ICCloudSchemaCatchUpSyncController given to the ICCloudContext, cannot schedule cloud schema catch up sync with system {accountID: %{public}@, runtimeCloudSchemaVersion: %lld}", buf, 0x16u);
          }
        }

        else if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 138543618;
          v41 = v17;
          v42 = 2048;
          v43 = 20250728;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "CloudSchemaCatchUpSync: Account does not need a cloud schema catch up sync {accountID: %{public}@, runtimeCloudSchemaVersion: %lld}", buf, 0x16u);
        }

LABEL_23:
        v9 = v24;
        v12 = v23;
        v15 = v22;
        v14 = v34;
        goto LABEL_24;
      }

      v20 = +[REMLog cloudkit];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [(ICCloudSchemaCatchUpSyncContext *)v19 persistenceCloudSchemaVersion];
        *buf = 138543874;
        v41 = v17;
        v42 = 2048;
        v43 = v21;
        v44 = 2048;
        v45 = 20250728;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "CloudSchemaCatchUpSync: Account needs to perform cloud schema catch up sync {accountID: %{public}@, persistenceCloudSchemaVersion: %lld, runtimeCloudSchemaVersion: %lld}", buf, 0x20u);
      }

      [v33 setObject:v19 forKey:v17];
LABEL_24:

      v16 = v16 + 1;
    }

    while (v14 != v16);
    v14 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
  }

  while (v14);
LABEL_26:

  if ([v12 schedulingState] != 1)
  {
    [v12 setSchedulingState:0];
    [v12 setLastScheduledDate:0];
  }

  v8 = v31;
LABEL_30:

  return v33;
}

- (void)didCompleteCloudSchemaCatchUpSyncWithContextMap:(id)a3 error:(id)a4 syncTypeLabel:(id)a5 debugLogLabel:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(ICCloudContext *)self processingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009BEC4;
  block[3] = &unk_1008DA408;
  v20 = v11;
  v21 = v10;
  v22 = self;
  v23 = v12;
  v24 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v10;
  v18 = v11;
  dispatch_async(v14, block);
}

- (BOOL)retryPerformingCloudSchemaCatchUpSync
{
  v3 = [(ICCloudContext *)self processingQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(ICCloudContext *)self retryCountsByOperationType];
  v5 = [v4 objectForKeyedSubscript:@"CloudSchemaCatchUpSync"];
  v6 = v5;
  v7 = &off_100904E78;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = +[ICCloudConfiguration sharedConfiguration];
  v10 = [v9 cloudSchemaCatchUpSyncMaximumRetryCount];
  v11 = [v8 intValue];
  v12 = +[REMLog cloudkit];
  v13 = v12;
  if (v10 <= v11)
  {
    v24 = v11;
    v25 = v8;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_100764DA4();
    }

    v15 = [(ICCloudContext *)self containersByAccountID];
    v16 = [v15 allKeys];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = v16;
    v17 = [v14 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v27;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v14);
          }

          v21 = *(*(&v26 + 1) + 8 * i);
          v22 = [(ICCloudContext *)self contextForAccountID:v21 withBatchFetchHelper:0, v24, v25, v26];
          [ICCloudSchemaCompatibilityUtils cloudSchemaCatchUpSyncDidCompleteWithAccountIdentifier:v21 context:v22];
        }

        v18 = [v14 countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v18);
    }

    [(ICCloudContext *)self clearRetryCountForOperationType:@"CloudSchemaCatchUpSync"];
    v11 = v24;
    v8 = v25;
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v31 = [v8 intValue];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "CloudSchemaCatchUpSync completed with error, will retry later (currentRetryCount: %d)", buf, 8u);
    }

    [v9 cloudSchemaCatchUpSyncInitialRetryInterval];
    v14 = [REMError retryLaterErrorWithInterval:?];
    [(ICCloudContext *)self incrementOrClearRetryCountForOperationType:@"CloudSchemaCatchUpSync" error:v14];
    [(ICCloudContext *)self startRetryTimerIfNecessaryWithError:v14];
  }

  return v10 > v11;
}

- (id)waiterID
{
  v2 = objc_opt_class();

  return [v2 babysittableWaiterID];
}

- (ICCloudContextDelegate)cloudContextDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudContextDelegate);

  return WeakRetained;
}

+ (id)base64EncodedHMACStringFromString:(id)a3 usingSalt:(id)a4
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = a4;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  String.base64EncodedHMACString(using:)();
  v10 = v9;
  sub_10001BBA0(v6, v8);

  if (v10)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end