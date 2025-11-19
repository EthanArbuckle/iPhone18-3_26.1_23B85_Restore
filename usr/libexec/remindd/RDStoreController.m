@interface RDStoreController
+ (BOOL)isDummyStoreURL:(id)a3;
+ (id)entityNamesToIncludeFromTracking;
+ (id)managedObjectModel;
+ (id)persistentStoreOptions;
- (BOOL)_removeFilesOfStoresAtURLs:(id)a3 outRemovedFileURLs:(id *)a4 error:(id *)a5;
- (BOOL)createAccountStoresWithIdentifiers:(id)a3 didAddNewStores:(BOOL *)a4 error:(id *)a5;
- (BOOL)deleteCloudObjectIfFullyPushed:(id)a3;
- (BOOL)hasPassedBuddyAndSystemDataMigrator;
- (BOOL)invalidateStoreConnectionsWithError:(id *)a3;
- (BOOL)isolated;
- (BOOL)l_createAccountStoresWithIdentifiers:(id)a3 didAddNewStores:(BOOL *)a4 error:(id *)a5;
- (BOOL)l_createOrLoadAccountStoresWithURLs:(id)a3 persistentStoreDescriptionOptionsOverride:(id)a4 isCreatingStores:(BOOL)a5 error:(id *)a6;
- (BOOL)l_loadAccountStoresFromDiskAndValidateInBatchesWithStoreURLs:(id)a3 shouldDeleteInvalidStoresImmediately:(BOOL)a4 error:(id *)a5;
- (BOOL)l_loadBatchOfAccountStoresFromDiskAndValidateWithStoreURLs:(id)a3 processedStoreIdentifiers:(id)a4 shouldDeleteInvalidStoresImmediately:(BOOL)a5 connectionPoolMaxSize:(unint64_t)a6 error:(id *)a7;
- (BOOL)l_markAccountStoreDeletedAndDeleteData:(id)a3 deletedObjectIDs:(id *)a4 error:(id *)a5;
- (BOOL)l_removeAccountStoresWithIdentifiers:(id)a3 deletedObjectIDs:(id *)a4 error:(id *)a5;
- (BOOL)l_setAccountIdentifier:(id)a3 intoMetadataOfCreatedStore:(id)a4 error:(id *)a5;
- (BOOL)notificationContainsChangeTrackingChangesOnly:(id)a3;
- (BOOL)notificationContainsInternalChangesOnly:(id)a3;
- (BOOL)nukeDataWithError:(id *)a3;
- (BOOL)purgeFilesForAccountWithAccountID:(id)a3 error:(id *)a4;
- (BOOL)removeAccountStoresWithIdentifiers:(id)a3 error:(id *)a4;
- (BOOL)supportsAccountUtils;
- (BOOL)supportsAlarmEngine;
- (BOOL)supportsApplicationShortcuts;
- (BOOL)supportsAssignmentNotificationEngine;
- (BOOL)supportsAutoCategorizationOperation;
- (BOOL)supportsCloudSchemaCatchUpSyncBackgroundScheduling;
- (BOOL)supportsCoreSpotlightIndexing;
- (BOOL)supportsGroceryOperation;
- (BOOL)supportsHashtagLabelUpdater;
- (BOOL)supportsSharedInlineTagAutoConvertEngine;
- (BOOL)supportsStalePinnedListsEventHandler;
- (BOOL)supportsSuggestedAttributes;
- (BOOL)supportsSyncActivityNotificationEngine;
- (BOOL)supportsSyncingToCloudKit;
- (BOOL)supportsTemplateOperation;
- (BOOL)supportsTimelineEngine;
- (NSArray)validPersistentStores;
- (RDStoreController)initWithIsolatedReminderDataContainerURL:(id)a3 accountStoreManagementDelegate:(id)a4 appleAccountUitilities:(id)a5;
- (RDStoreControllerAccountStoreManagementDelegate)accountStoreManagementDelegate;
- (id)URLForAttachmentDirectory:(id)a3 accountID:(id)a4;
- (id)URLForAttachmentFile:(id)a3 accountID:(id)a4 fileName:(id)a5 sha512Sum:(id)a6;
- (id)_dataSeparationIncompatible_defaultReminderDataContainerURL;
- (id)_deduplicateLocalAccountStore:(id)a3 withStore:(id)a4 managedObjectContext:(id)a5;
- (id)_deduplicateStore:(id)a3 withStore:(id)a4 isLocalAccountType:(BOOL)a5 managedObjectContext:(id)a6;
- (id)_discoverReminderDataContainerURLs;
- (id)_makePersistentStoreCoordinator;
- (id)_relocateMisplacedDataSeparationStoresWithDataSeparatedStoreURLsMap:(id)a3 deleteFilesMarkedDeleted:(BOOL)a4;
- (id)_reminderDataContainerURLForAccountIdentifier:(id)a3;
- (id)_urlsToDeleteFromFileURLs:(id)a3 matchingStoreURL:(id)a4;
- (id)accountIdentifierForStoreID:(id)a3;
- (id)accountStoragesForAccountExternalIdentifiers:(id)a3;
- (id)accountStoragesForAccountObjectIDs:(id)a3;
- (id)accountStoragesForAllGenericAccounts;
- (id)attachmentIDsFromAttachmentDirectoryWithAccountID:(id)a3 error:(id *)a4;
- (id)containerStats;
- (id)extractSha512Sum:(id)a3;
- (id)fileIOWorkerQueue;
- (id)inMemoryPrimaryActiveCKAccountREMObjectID;
- (id)invalidStoreBackupURLWithFileName:(id)a3 withContainerURL:(id)a4;
- (id)l_accountStoragesForAccountObjectIDs:(id)a3;
- (id)l_discoverAccountStoreURLsFromDatabaseDirectoryURL:(id)a3 deletingFilesMarkedDeleted:(BOOL)a4 storesDiscoveryStatesRef:(id *)a5 error:(id *)a6;
- (id)l_discoverAccountStoreURLsFromReminderDataContainerURLs:(id)a3 deletingFilesMarkedDeleted:(BOOL)a4 storesDiscoveryStatesRef:(id *)a5 error:(id *)a6;
- (id)newBackgroundContextWithAuthor:(id)a3 enableQueryGenerationToken:(BOOL)a4;
- (id)observePrimaryCloudKitAccountPersonIDSaltChangesOnQueue:(id)a3 successHandler:(id)a4 errorHandler:(id)a5;
- (id)purgeAttachmentFilesWithAttachmentIDs:(id)a3 accountID:(id)a4 error:(id *)a5;
- (id)purgeAttachmentFilesWithSha512SumsAndExtensions:(id)a3 accountID:(id)a4 error:(id *)a5;
- (id)status:(BOOL)a3;
- (id)storeBackupURLWithFileName:(id)a3 withContainerURL:(id)a4;
- (id)storeForAccountIdentifier:(id)a3;
- (id)storeURLWithName:(id)a3 withContainerURL:(id)a4;
- (id)storesForAccountTypes:(id)a3;
- (int64_t)unittest_countKeysInAccountStoreMap;
- (unint64_t)_persistentStoreConnectionPoolMaxSizeWithTotalStoreCount:(unint64_t)a3;
- (void)_backupInvalidStores:(id)a3 outBackUpFailedStores:(id *)a4;
- (void)_cleanUpActivityObservers:(id)a3;
- (void)_cleanUpPreDataSeparationDataContainerIfNeeded;
- (void)_migrateAttachmentFilesToPostDataSeparationLocationsIfNeededWithAccountIdentifiers:(id)a3;
- (void)_migrateBackupStoresToPostDataSeparationLocationIfNeeded;
- (void)_migrateImageDeduplicationSentinelFileIfNeededWithPreMigrationAttachmentFileManager:(id)a3 dataSeparationAttachmentFileManager:(id)a4;
- (void)_migrateMLModelsToPostDataSeparationLocationIfNeeded;
- (void)_moveAttachmentFilesFromAttachmentFileManager:(id)a3 toAttachmentFileManager:(id)a4 affectedAccountIdentifiers:(id)a5 logPrefix:(id)a6;
- (void)_notifyCloudKitNetworkActivityObservers:(id)a3;
- (void)_performStagedLightweightMigrationIfNeededForAccountStoreWithURL:(id)a3 persistentStoreDescriptionOptionsOverride:(id)a4 migrationCoordinator:(id)a5;
- (void)_performStagedLightweightMigrationIfNeededForAccountStoresWithURLs:(id)a3 persistentStoreDescriptionOptionsOverride:(id)a4;
- (void)_populateCountForEntity:(Class)a3 withinCDAccount:(id)a4 statsAccumulator:(id)a5 errorAccumulator:(id)a6;
- (void)_postDidRemoveAccountStoresNotificationWithDeletedObjectIDs:(id)a3;
- (void)_relocateMisplacedDataSeparationAccountAttachmentFilesWithRelocatedAccountIdentifiers:(id)a3;
- (void)_validateAccountStores:(id)a3 outValidStoresByAccountIDs:(id *)a4 outInvalidStores:(id *)a5 outLocalAccountStores:(id *)a6;
- (void)autoCategorizationOperationDidBeginNotification:(id)a3;
- (void)autoCategorizationOperationDidEndNotification:(id)a3;
- (void)cloudContext:(id)a3 didFetchUserRecord:(id)a4 accountID:(id)a5;
- (void)cloudContext:(id)a3 receivedZoneNotFound:(id)a4 accountID:(id)a5;
- (void)cloudContext:(id)a3 sharedZoneWasDeleted:(id)a4 accountID:(id)a5;
- (void)cloudContext:(id)a3 userDidDeleteRecordZoneWithID:(id)a4 accountID:(id)a5;
- (void)cloudContextHasPendingOperationsDidChange:(id)a3;
- (void)dealloc;
- (void)didFailPushingExceededStorageQuotaForContext:(id)a3 accountID:(id)a4;
- (void)l_activateCoreSpotlightDelegates;
- (void)l_addValidatedStoresToAccountStoreMapWithStores:(id)a3 shouldDeleteInvalidStoresImmediately:(BOOL)a4;
- (void)l_invalidateAccountStorageCaches:(id)a3;
- (void)l_loadDummyStoreIfNeeded;
- (void)l_loadPPTStoreStatus;
- (void)l_performManualStoreMigrations:(id)a3;
- (void)l_removeFromPersistentStoreCoordinatorAndDeleteImmediatelyWithStores:(id)a3;
- (void)l_setAccountStorages:(id)a3 forAccountObjectIDs:(id)a4;
- (void)managedObjectContextDidSave:(id)a3;
- (void)notifyAutoCategorizationActivityObservers;
- (void)purgeDeletedObjectsWithCompletionHandler:(id)a3;
- (void)reindexAllSearchableItems;
- (void)reindexSearchableItemsWithIdentifiers:(id)a3;
- (void)requestFreeSpaceToLoadAccountStoresWithQueue:(id)a3 completionBlock:(id)a4;
- (void)setAccountStorages:(id)a3 forAccountExternalIdentifiers:(id)a4;
- (void)setAccountStorages:(id)a3 forAccountObjectIDs:(id)a4;
- (void)setAccountStoragesForAllGenericAccountsWithStorages:(id)a3;
- (void)startObservingAutoCategorizationActivityWithObserver:(id)a3;
- (void)startObservingCloudKitNetworkActivityWithObserver:(id)a3;
- (void)unittest_removeFromPersistentStoreCoordinatorAndDeleteImmediatelyWithStores:(id)a3;
- (void)unobservePrimaryCloudKitAccountPersonIDSaltChanges:(id)a3;
- (void)updateInMemoryPrimaryActiveCKAccountREMObjectIDIfNecessary:(id)a3;
@end

@implementation RDStoreController

- (NSArray)validPersistentStores
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000D39EC;
  v10 = sub_1000D39FC;
  v11 = +[NSMutableArray array];
  os_unfair_lock_lock(&self->_ivarLock);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000F500;
  v5[3] = &unk_1008DBA38;
  v5[4] = self;
  v5[5] = &v6;
  sub_10000F500(v5);
  os_unfair_lock_unlock(&self->_ivarLock);
  v3 = [v7[5] copy];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)supportsCoreSpotlightIndexing
{
  v3 = [(RDStoreController *)self coreSpotlightDelegateManager];
  if ([v3 enableCoreSpotlightIndexing])
  {
    v4 = ![(RDStoreController *)self isPPTStore];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (id)managedObjectModel
{
  if (qword_100952B20 != -1)
  {
    sub_100027178();
  }

  v3 = qword_100952B18;

  return v3;
}

- (id)inMemoryPrimaryActiveCKAccountREMObjectID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000D39EC;
  v11 = sub_1000D39FC;
  v12 = 0;
  os_unfair_lock_lock(&self->_ivarLock);
  v3 = [(RDStoreController *)self l_primaryActiveCloudKitAccountREMObjectID:_NSConcreteStackBlock];
  v4 = v8[5];
  v8[5] = v3;

  os_unfair_lock_unlock(&self->_ivarLock);
  v5 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v5;
}

- (BOOL)supportsSyncingToCloudKit
{
  if ([(RDStoreController *)self isolated])
  {
    return 0;
  }

  else
  {
    return ![(RDStoreController *)self isPPTStore];
  }
}

- (BOOL)isolated
{
  v2 = [(RDStoreController *)self isolatedReminderDataContainerURL];
  v3 = v2 != 0;

  return v3;
}

- (RDStoreController)initWithIsolatedReminderDataContainerURL:(id)a3 accountStoreManagementDelegate:(id)a4 appleAccountUitilities:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v52.receiver = self;
  v52.super_class = RDStoreController;
  v12 = [(RDStoreController *)&v52 init];
  v13 = v12;
  if (v12)
  {
    v12->_ivarLock._os_unfair_lock_opaque = 0;
    v12->_isInitializing = 1;
    v14 = +[REMUserDefaults daemonUserDefaults];
    daemonUserDefaults = v13->_daemonUserDefaults;
    v13->_daemonUserDefaults = v14;

    objc_storeWeak(&v13->_accountStoreManagementDelegate, v10);
    if (v11)
    {
      v16 = v11;
    }

    else
    {
      v16 = +[REMAppleAccountUtilities sharedInstance];
    }

    appleAccountUtilities = v13->_appleAccountUtilities;
    v13->_appleAccountUtilities = v16;

    if (v9)
    {
      objc_storeStrong(&v13->_isolatedReminderDataContainerURL, a3);
    }

    v18 = [[RDAttachmentFileManager alloc] initWithDocumentsURLProvider:v13];
    attachmentFileManager = v13->_attachmentFileManager;
    v13->_attachmentFileManager = v18;

    *&v13->_supportsLocalInternalAccount = 257;
    v20 = +[_TtC7remindd13RDMergePolicy defaultMergePolicy];
    mergePolicy = v13->_mergePolicy;
    v13->_mergePolicy = v20;

    v22 = [(RDStoreController *)v13 _makePersistentStoreCoordinator];
    persistentStoreCoordinator = v13->_persistentStoreCoordinator;
    v13->_persistentStoreCoordinator = v22;

    v24 = [[RDCoreSpotlightDelegateManager alloc] initWithIsolated:[(RDStoreController *)v13 isolated] coordinator:v13->_persistentStoreCoordinator];
    coreSpotlightDelegateManager = v13->_coreSpotlightDelegateManager;
    v13->_coreSpotlightDelegateManager = v24;

    v26 = objc_opt_new();
    cloudKitNetworkActivityObservers = v13->_cloudKitNetworkActivityObservers;
    v13->_cloudKitNetworkActivityObservers = v26;

    v28 = objc_opt_new();
    autoCategorizationActivityObservers = v13->_autoCategorizationActivityObservers;
    v13->_autoCategorizationActivityObservers = v28;

    os_unfair_lock_lock(&v13->_ivarLock);
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_1000CC524;
    v49[3] = &unk_1008D9B98;
    v30 = v13;
    v50 = v30;
    v51 = v10;
    sub_1000CC524(v49);
    os_unfair_lock_unlock(&v13->_ivarLock);

    if ([v30 supportsCoreSpotlightIndexing])
    {
      objc_initWeak(&location, v30);
      v31 = v13->_coreSpotlightDelegateManager;
      v43 = _NSConcreteStackBlock;
      v44 = 3221225472;
      v45 = sub_1000CC670;
      v46 = &unk_1008DC520;
      objc_copyWeak(&v47, &location);
      [(RDCoreSpotlightDelegateManager *)v31 validateIndexVersionWithCompletionHandler:&v43];
      objc_destroyWeak(&v47);
      objc_destroyWeak(&location);
    }

    if (([v30 isolated] & 1) == 0)
    {
      v32 = +[ICSyncSettings sharedSettings];
      v33 = [v32 hasOptions:16];

      if (v33)
      {
        v34 = [[ICCloudContext alloc] initWithStoreController:v30];
        v35 = v30[3];
        v30[3] = v34;

        [v30[3] setCloudContextDelegate:v30];
        v36 = +[NSNotificationCenter defaultCenter];
        [v36 addObserver:v30 selector:"cloudContextHasPendingOperationsDidChange:" name:@"ICCloudContextHasPendingOperationsDidChangeNotification" object:v30[3]];

        v37 = objc_alloc_init(RDAccountPropertiesNotifier);
        [v30 setAccountPropertiesNotifier:v37];
      }
    }

    v38 = +[NSNotificationCenter defaultCenter];
    [v38 addObserver:v30 selector:"managedObjectContextDidSave:" name:NSManagedObjectContextDidSaveObjectIDsNotification object:v13->_persistentStoreCoordinator];

    v39 = +[NSNotificationCenter defaultCenter];
    [v39 addObserver:v30 selector:"autoCategorizationOperationDidBeginNotification:" name:@"RDAutoCategorizationOperationDidBeginNotification" object:0];

    v40 = +[NSNotificationCenter defaultCenter];
    [v40 addObserver:v30 selector:"autoCategorizationOperationDidEndNotification:" name:@"RDStoreControllerManagedObjectContextNotificationTransactionAuthorKey" object:0];

    v41 = +[ICReachability sharedReachabilityForInternetConnection];
    [v41 startNotifier];
    v13->_isInitializing = 0;
  }

  return v13;
}

- (BOOL)hasPassedBuddyAndSystemDataMigrator
{
  if ((+[DADBuddyStateObserver hasPassedBuddy]& 1) != 0)
  {
    if ([(RDStoreController *)self isolated])
    {
      return 1;
    }

    v3 = objc_alloc_init(REMDatabaseMigrationContext);
    v4 = [v3 isDatabaseMigrated];

    if (v4)
    {
      return 1;
    }

    v6 = +[REMLogStore container];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 0;
      v7 = "RDStoreController: System data migration has not finished";
      v8 = &v9;
      goto LABEL_7;
    }
  }

  else
  {
    v6 = +[REMLogStore container];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "RDStoreController: We are still in buddy";
      v8 = buf;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    }
  }

  return 0;
}

- (void)dealloc
{
  v3 = +[REMLogStore container];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(RDStoreController *)self isolatedReminderDataContainerURL];
    v5 = +[RDPaths defaultReminderDataContainerURL];
    *buf = 134218498;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Deallocating RDStoreController {pointer: %p, isolatedReminderDataContainerURL: %@, defaultReminderDataContainerURL: %@}", buf, 0x20u);
  }

  v6.receiver = self;
  v6.super_class = RDStoreController;
  [(RDStoreController *)&v6 dealloc];
}

+ (BOOL)isDummyStoreURL:(id)a3
{
  v4 = a3;
  v5 = [a1 storeFileNameWithStoreName:@"local"];
  v6 = [v4 lastPathComponent];

  LOBYTE(v4) = [v6 isEqualToString:v5];
  return v4;
}

- (id)storeURLWithName:(id)a3 withContainerURL:(id)a4
{
  v6 = a3;
  v7 = [(RDStoreController *)self databaseDirectoryURLWithContainerURL:a4];
  v8 = [objc_opt_class() storeFileNameWithStoreName:v6];

  v9 = [v7 URLByAppendingPathComponent:v8];

  return v9;
}

- (id)storeBackupURLWithFileName:(id)a3 withContainerURL:(id)a4
{
  v6 = a3;
  v7 = [(RDStoreController *)self databaseBackupDirectoryURLWithContainerURL:a4];
  v8 = [v7 URLByAppendingPathComponent:v6];

  return v8;
}

- (id)invalidStoreBackupURLWithFileName:(id)a3 withContainerURL:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[NSTimeZone systemTimeZone];
  v9 = [NSISO8601DateFormatter rem_formatterWithTimeZone:v8];

  v10 = +[NSDate rem_now];
  v11 = [v9 stringFromDate:v10];
  v12 = +[NSCharacterSet URLHostAllowedCharacterSet];
  v13 = [v11 stringByAddingPercentEncodingWithAllowedCharacters:v12];

  v14 = [v7 stringByDeletingPathExtension];

  v15 = [NSString stringWithFormat:@"%@--%@.sqlite", v14, v13];

  v16 = [(RDStoreController *)self databaseBackupDirectoryURLWithContainerURL:v6];

  v17 = [v16 URLByAppendingPathComponent:v15];

  return v17;
}

- (id)_reminderDataContainerURLForAccountIdentifier:(id)a3
{
  v5 = a3;
  v6 = [(RDStoreController *)self isolatedReminderDataContainerURL];
  if (v6 && (v7 = v6, v8 = [(RDStoreController *)self unittest_isTestingDataSeparation], v7, (v8 & 1) == 0))
  {
    v10 = [(RDStoreController *)self isolatedReminderDataContainerURL];
  }

  else
  {
    v9 = [(RDStoreController *)self appleAccountUtilities];
    v10 = [v9 reminderDataContainerURLForAccountIdentifier:v5];

    v11 = +[NSFileManager defaultManager];
    v21 = 0;
    v12 = [v11 rem_createDirectoryIfNecessaryAtURL:v10 error:&v21];
    v13 = v21;
    if ((v12 & 1) == 0)
    {
      v14 = +[REMLogStore container];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = NSStringFromSelector(a2);
        v19 = [NSString stringWithFormat:@"%@.%@", v17, v18];
        v20 = [v13 localizedDescription];
        *buf = 138544130;
        v23 = v19;
        v24 = 2114;
        v25 = v5;
        v26 = 2112;
        v27 = v10;
        v28 = 2112;
        v29 = v20;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[%{public}@] Create directory failed {accountIdentifier: %{public}@, reminderDataContainerURL: %@, error: %@}", buf, 0x2Au);
      }
    }
  }

  return v10;
}

- (id)_makePersistentStoreCoordinator
{
  v2 = [objc_opt_class() managedObjectModel];
  v3 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:v2];

  return v3;
}

- (void)l_loadPPTStoreStatus
{
  v4 = [(RDStoreController *)self _dataSeparationIncompatible_defaultReminderDataContainerURL];
  v5 = +[NSFileManager defaultManager];
  v20 = 0;
  v6 = [v5 rem_createDirectoryIfNecessaryAtURL:v4 error:&v20];
  v7 = v20;
  if ((v6 & 1) == 0)
  {
    v8 = +[REMLogStore container];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v19 = NSStringFromClass(v15);
      v16 = NSStringFromSelector(a2);
      v17 = [NSString stringWithFormat:@"%@.%@", v19, v16];
      v18 = [v7 localizedDescription];
      *buf = 138543874;
      v22 = v17;
      v23 = 2112;
      v24 = v4;
      v25 = 2112;
      v26 = v18;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Create directory failed {defaultReminderDataContainerURL: %@, error: %@}", buf, 0x20u);
    }
  }

  v9 = [RDPaths pptSentinelURLInContainerURL:v4];
  v10 = +[NSFileManager defaultManager];
  v11 = [v9 path];
  v12 = [v10 fileExistsAtPath:v11];

  if (v12)
  {
    v13 = +[REMLogStore container];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v22 = v9;
      v14 = "[loadPPTStoreStatus] Found ppt sentinel. Marking as PPTStore {pptSentinelURL: %{private}@}";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 0xCu);
    }
  }

  else
  {
    if (![(RDStoreController *)self isPPTStore])
    {
      v12 = 0;
      goto LABEL_14;
    }

    v13 = +[REMLogStore container];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v22 = v9;
      v14 = "[loadPPTStoreStatus] Store was marked as PPT but sentinel is gone. Marking a non-PPTStore {pptSentinelURL: %{private}@}";
      goto LABEL_11;
    }
  }

LABEL_14:
  [(RDStoreController *)self setIsPPTStore:v12];
}

- (id)_discoverReminderDataContainerURLs
{
  v3 = [(RDStoreController *)self isolatedReminderDataContainerURL];
  if (v3 && (v4 = v3, v5 = [(RDStoreController *)self unittest_isTestingDataSeparation], v4, (v5 & 1) == 0))
  {
    v19 = [(RDStoreController *)self isolatedReminderDataContainerURL];
    v6 = [NSSet setWithObject:v19];
  }

  else
  {
    v6 = +[NSMutableSet set];
    v7 = +[RDPaths defaultReminderDataContainerURL];
    [v6 addObject:v7];

    if ([(RDStoreController *)self hasPassedBuddyAndSystemDataMigrator])
    {
      v8 = [(RDStoreController *)self appleAccountUtilities];
      v9 = [v8 unsafeUntilSystemReady_allCloudKitRemindersEnabledICloudACAccounts];

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v11)
      {
        v13 = v11;
        v14 = *v23;
        *&v12 = 138543618;
        v21 = v12;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v10);
            }

            v16 = [*(*(&v22 + 1) + 8 * i) identifier];
            v17 = [(RDStoreController *)self _reminderDataContainerURLForAccountIdentifier:v16];
            v18 = +[REMLogStore container];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v21;
              v27 = v16;
              v28 = 2112;
              v29 = v17;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[discoverApplicationDocumentURLs] Queried application documents URL for account {accountIdentifier: %{public}@, reminderDataContainerURL: %@}", buf, 0x16u);
            }

            [v6 addObject:v17];
          }

          v13 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
        }

        while (v13);
      }

      v19 = v10;
    }

    else
    {
      v19 = +[RDPaths defaultReminderDataContainerURL];
      [v6 addObject:v19];
      v10 = +[REMLogStore container];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10076C828();
      }
    }
  }

  return v6;
}

- (id)l_discoverAccountStoreURLsFromReminderDataContainerURLs:(id)a3 deletingFilesMarkedDeleted:(BOOL)a4 storesDiscoveryStatesRef:(id *)a5 error:(id *)a6
{
  v38 = a4;
  v8 = a3;
  if (a5)
  {
    a5->var2 = 1;
    *&a5->var0 = 0;
  }

  v9 = +[NSFileManager defaultManager];
  v36 = +[NSMutableDictionary dictionary];
  v35 = +[NSMutableArray array];
  v10 = +[REMLogStore container];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v47 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[discoverAccountStoreURLsFromApplicationDocumentsURLs] Scanning into {appDocumentsURLs: %{public}@}", buf, 0xCu);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v8;
  v11 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v43;
    v37 = a5;
    do
    {
      v14 = 0;
      do
      {
        if (*v43 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = [(RDStoreController *)self databaseDirectoryURLWithContainerURL:*(*(&v42 + 1) + 8 * v14)];
        v41 = 0;
        v16 = [v9 rem_createDirectoryIfNecessaryAtURL:v15 error:&v41];
        v17 = v41;
        if ((v16 & 1) == 0)
        {
          v18 = +[REMLogStore container];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v24 = objc_opt_class();
            v33 = NSStringFromClass(v24);
            v31 = NSStringFromSelector(a2);
            v30 = [NSString stringWithFormat:@"%@.%@", v33, v31];
            v25 = [v17 localizedDescription];
            *buf = 138543874;
            v47 = v30;
            v48 = 2112;
            v49 = v15;
            v50 = 2112;
            v51 = v25;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[%{public}@] Create directory failed {databaseDirectoryURL: %@, error: %@}", buf, 0x20u);

            a5 = v37;
          }
        }

        v40 = 0;
        if (![v9 rem_fileExistsAtURL:v15 isDirectory:&v40] || (v40 & 1) == 0)
        {
          v19 = +[REMLogStore container];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v23 = [v15 absoluteString];
            *buf = 138412546;
            v47 = v23;
            v48 = 1024;
            LODWORD(v49) = v40;
            _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "[discoverAccountStoreURLsFromApplicationDocumentsURLs] Given appDocumentsURL is not an existing directory {databaseDirectoryURL: %@, isDirectory: %d}", buf, 0x12u);

            a5 = v37;
          }
        }

        v39 = 0;
        v20 = [(RDStoreController *)self l_discoverAccountStoreURLsFromDatabaseDirectoryURL:v15 deletingFilesMarkedDeleted:v38 storesDiscoveryStatesRef:a5 error:&v39];
        v21 = v39;
        if (v21)
        {
          v22 = +[REMLogStore container];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v32 = [v15 absoluteString];
            *buf = 138412546;
            v47 = v32;
            v48 = 2114;
            v49 = v21;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "[discoverAccountStoreURLsFromApplicationDocumentsURLs] Error getting store URLs from {databaseDirectoryURL: %@, error: %{public}@}", buf, 0x16u);
          }

          [v35 addObject:v21];
          a5 = v37;
        }

        if (v20)
        {
          [v36 addEntriesFromDictionary:v20];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
    }

    while (v12);
  }

  if (a6)
  {
    v26 = [v35 count];
    if (v26)
    {
      v26 = [REMError errorFromErrors:v35];
    }

    *a6 = v26;
  }

  return v36;
}

- (id)l_discoverAccountStoreURLsFromDatabaseDirectoryURL:(id)a3 deletingFilesMarkedDeleted:(BOOL)a4 storesDiscoveryStatesRef:(id *)a5 error:(id *)a6
{
  v6 = a4;
  v8 = a3;
  v92 = self;
  v9 = [(RDStoreController *)self daemonUserDefaults];
  v90 = [v9 debugSimulateSqliteFull];

  v10 = REMCRMergeableOrderedSet_ptr;
  v11 = +[REMLogStore container];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_10076C890(v8);
  }

  v12 = +[NSFileManager defaultManager];
  v119 = NSURLFileSizeKey;
  v13 = [NSArray arrayWithObjects:&v119 count:1];
  v110 = 0;
  v87 = v8;
  v14 = [v12 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:v13 options:1 error:&v110];
  v15 = v110;

  v16 = +[REMLogStore container];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_10076C920(v87, v14);
  }

  v84 = v14;
  if (v14)
  {
    v83 = v6;
    v96 = [objc_opt_class() storeFileNameWithStoreName:@"local"];
    v86 = +[NSMutableDictionary dictionary];
    v91 = [objc_opt_class() persistentStoreOptions];
    v88 = +[NSMutableSet set];
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v17 = v14;
    v18 = [v17 countByEnumeratingWithState:&v106 objects:v118 count:16];
    if (!v18)
    {
      goto LABEL_70;
    }

    v20 = v18;
    v100 = *v107;
    *&v19 = 134218754;
    v82 = v19;
    v93 = v17;
    while (1)
    {
      v21 = 0;
      v94 = v20;
      do
      {
        if (*v107 != v100)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v106 + 1) + 8 * v21);
        v23 = [(__CFString *)v22 pathExtension];
        v24 = [v23 lowercaseString];
        v25 = [v24 isEqualToString:@"sqlite"];

        if (v25)
        {
          v26 = [(__CFString *)v22 lastPathComponent];
          v27 = v26;
          if (v26 && ([(__CFString *)v26 hasPrefix:@"Data-"]& 1) != 0)
          {
            if (([(__CFString *)v27 isEqualToString:v96]& 1) == 0)
            {
              v104 = 0;
              v105 = 0;
              v28 = [(__CFString *)v22 getResourceValue:&v105 forKey:NSURLFileSizeKey error:&v104];
              v29 = v105;
              v30 = v104;

              if (!v28 || !v29)
              {
                v31 = [v10[51] container];
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543618;
                  v112 = v27;
                  v113 = 2114;
                  v114 = v30;
                  _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "[discoverAccountStoreURLsFromURL] Failed to get file size {fileName: %{public}@, error: %{public}@}", buf, 0x16u);
                }
              }

              v103 = 0;
              v32 = [NSPersistentStoreCoordinator metadataForPersistentStoreOfType:NSSQLiteStoreType URL:v22 options:v91 error:&v103];
              v33 = v103;
              v99 = v32;
              if (v90)
              {
                v34 = [NSNumber numberWithInteger:13];
                v35 = [NSDictionary dictionaryWithObject:v34 forKey:NSSQLiteErrorDomain];

                v36 = [[NSError alloc] initWithDomain:NSCocoaErrorDomain code:134060 userInfo:v35];
                v32 = v99;
                v33 = v36;
              }

              if ([v33 rem_isDiskFullSQLError])
              {
                if (a5)
                {
                  a5->var0 = 1;
                }

                v37 = [v10[51] container];
                if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543618;
                  v112 = v27;
                  v113 = 2114;
                  v114 = v30;
                  _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "[discoverAccountStoreURLsFromURL] Failed to fetch store metadata for sqlite file due to disk full {fileName: %{public}@, error: %{public}@}", buf, 0x16u);
                }

                v32 = v99;
              }

              v38 = v33;

              if (!v32)
              {
                v39 = [v10[51] container];
                if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543618;
                  v112 = v27;
                  v113 = 2114;
                  v114 = v38;
                  _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "[discoverAccountStoreURLsFromURL] Failed to fetch store metadata for sqlite file {fileName: %{public}@, error: %{public}@}", buf, 0x16u);
                }
              }

              v95 = v38;
              v40 = [v32 objectForKeyedSubscript:@"RDStoreControllerAccountIdentifier"];
              v41 = [v32 objectForKeyedSubscript:NSStoreModelVersionHashesKey];

              objc_opt_class();
              v42 = [v32 objectForKeyedSubscript:@"RDMarkedForDeletion"];
              v43 = REMDynamicCast();
              v44 = [v43 BOOLValue];

              v97 = v40;
              if ([(RDStoreController *)v92 supportsLocalInternalAccount])
              {
                v45 = 1;
              }

              else
              {
                v46 = +[REMAccount localInternalAccountID];
                v47 = [v46 uuid];
                v48 = [v47 UUIDString];
                v49 = [(__CFString *)v40 isEqualToString:v48];

                v45 = v49 ^ 1;
              }

              v98 = [(__CFString *)v22 URLByResolvingSymlinksInPath];
              v50 = +[REMLogStore container];
              if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
              {
                v51 = [v98 absoluteString];
                *buf = 138413314;
                v112 = v51;
                v113 = 2114;
                v114 = v97;
                v115 = 1024;
                *v116 = v41 != 0;
                *&v116[4] = 1024;
                *&v116[6] = v44;
                LOWORD(v117) = 1024;
                *(&v117 + 2) = v45 & 1;
                _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "[discoverAccountStoreURLsFromURL] Considering sqlite store on disk... {storeURL: %@, accountIdentifier: %{public}@, initialized: %d, markedAsDeleted: %d, supported: %d}", buf, 0x28u);
              }

              v15 = v95;
              if ((v41 != 0) | v44 & 1)
              {
                v17 = v93;
                v20 = v94;
                v52 = v97;
                if (v44)
                {
                  v53 = v98;
                  [v88 addObject:v98];
                  v10 = REMCRMergeableOrderedSet_ptr;
                }

                else if (v45)
                {
                  v56 = [v29 unsignedIntegerValue];
                  v57 = v56;
                  v10 = REMCRMergeableOrderedSet_ptr;
                  if (a5 && v56 >= 0xA00000)
                  {
                    a5->var2 = 0;
                  }

                  if (v56 >> 21 >= 0x19)
                  {
                    if (a5)
                    {
                      a5->var1 = 1;
                    }

                    v58 = +[REMLogStore container];
                    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                    {
                      v63 = [v98 absoluteString];
                      *buf = v82;
                      v112 = v57;
                      v113 = 2114;
                      v114 = v22;
                      v115 = 2114;
                      *v116 = v97;
                      *&v116[8] = 2112;
                      v117 = v63;
                      _os_log_error_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "[discoverAccountStoreURLsFromURL] WARNING that we're loading a large database exceeding 50MB, large database is suboptimal in every way {fileSize: %lu, store: %{public}@, accountIdentifier: %{public}@, storeURL: %@}", buf, 0x2Au);

                      v52 = v97;
                    }

                    v20 = v94;
                  }

                  if (v52)
                  {
                    v59 = v52;
                  }

                  else
                  {
                    v59 = @"NullMetadataAccountIdentifier";
                  }

                  v53 = v98;
                  [v86 setObject:v59 forKey:v98];
                  v17 = v93;
                }

                else
                {
                  v10 = REMCRMergeableOrderedSet_ptr;
                  v60 = +[REMLogStore container];
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                  {
                    v61 = [v98 absoluteString];
                    *buf = 138543874;
                    v112 = v22;
                    v113 = 2114;
                    v114 = v97;
                    v115 = 2112;
                    *v116 = v61;
                    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "[discoverAccountStoreURLsFromURL] Unsupported storeURL. DELETING {store: %{public}@, accountIdentifier: %{public}@, storeURL: %@}", buf, 0x20u);

                    v52 = v97;
                  }

                  v53 = v98;
                  [v88 addObject:v98];
                  v20 = v94;
                }
              }

              else
              {
                v10 = REMCRMergeableOrderedSet_ptr;
                v54 = +[REMLogStore container];
                v17 = v93;
                v20 = v94;
                v52 = v97;
                if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
                {
                  v62 = [v98 absoluteString];
                  *buf = 138543618;
                  v112 = v27;
                  v113 = 2112;
                  v114 = v62;
                  _os_log_fault_impl(&_mh_execute_header, v54, OS_LOG_TYPE_FAULT, "[discoverAccountStoreURLsFromURL] The store sqlite file is neither initialized or marked as deleted -- probably corrupted. Will delete the file if <= 4096 bytes (i.e. empty) {fileName: %{public}@, storeURL: %@}", buf, 0x16u);

                  v52 = v97;
                }

                v53 = v98;
                if (v29 && [v29 unsignedIntegerValue]<= 0x1000)
                {
                  [v88 addObject:v98];
                }
              }

              goto LABEL_36;
            }
          }

          else
          {
            v29 = [v10[51] container];
            if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
            {
              v55 = [v87 absoluteString];
              *buf = 138412546;
              v112 = v55;
              v113 = 2114;
              v114 = v27;
              _os_log_fault_impl(&_mh_execute_header, v29, OS_LOG_TYPE_FAULT, "[discoverAccountStoreURLsFromURL] Found sqlite file that doesn't have the prefix RDPathComponentStoreFilePrefix {databaseDirectoryURL: %@, fileName: %{public}@}", buf, 0x16u);
            }

LABEL_36:
          }
        }

        v21 = v21 + 1;
      }

      while (v20 != v21);
      v64 = [v17 countByEnumeratingWithState:&v106 objects:v118 count:16];
      v20 = v64;
      if (!v64)
      {
LABEL_70:

        if (v83 && [v88 count])
        {
          v101 = 0;
          v102 = 0;
          v65 = [(RDStoreController *)v92 _removeFilesOfStoresAtURLs:v88 outRemovedFileURLs:&v102 error:&v101];
          v66 = v102;
          v67 = v101;
          v68 = [v10[51] container];
          v69 = v68;
          if (v65)
          {
            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
            {
              v70 = [v88 count];
              v71 = [v66 count];
              *buf = 134218240;
              v112 = v70;
              v113 = 2048;
              v114 = v71;
              _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "[discoverAccountStoreURLsFromURL] Deleted store files marked for deletion in previous launches {removed.stores.count: %ld, removed.files.count: %ld}", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            v80 = [v88 count];
            v81 = [v66 count];
            *buf = 134218498;
            v112 = v80;
            v113 = 2048;
            v114 = v81;
            v115 = 2114;
            *v116 = v67;
            _os_log_error_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "[discoverAccountStoreURLsFromURL] Failed to delete (some) store files marked for deletion in previous launches {storesToRemove.count: %ld, removed.files.count: %ld, error: %{public}@}", buf, 0x20u);
          }

          v73 = [(RDStoreController *)v92 accountStoreManagementDelegate];
          [v73 didRemoveStoreFilesOnInitWithURLs:v66];
        }

        v74 = [v10[51] container];
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
        {
          v75 = [v17 count];
          v76 = [v86 count];
          v77 = [v88 count];
          *buf = 134218496;
          v112 = v75;
          v113 = 2048;
          v114 = v76;
          v115 = 2048;
          *v116 = v77;
          _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "[discoverAccountStoreURLsFromURL] Finished discovering account identifiers on disk {file.count: %ld, storeURLs.count: %ld, deletedStores.count: %ld}", buf, 0x20u);
        }

        v72 = v87;
        goto LABEL_84;
      }
    }
  }

  v96 = +[REMLogStore container];
  v72 = v87;
  if (os_log_type_enabled(v96, OS_LOG_TYPE_FAULT))
  {
    sub_10076C9D0();
  }

  v86 = 0;
LABEL_84:

  if (a6)
  {
    v78 = v15;
    *a6 = v15;
  }

  return v86;
}

- (id)_relocateMisplacedDataSeparationStoresWithDataSeparatedStoreURLsMap:(id)a3 deleteFilesMarkedDeleted:(BOOL)a4
{
  v50 = a4;
  v5 = a3;
  v63 = +[NSFileManager defaultManager];
  v68 = self;
  v53 = [(RDStoreController *)self _reminderDataContainerURLForAccountIdentifier:0];
  v6 = [v53 path];
  v66 = [v6 stringByStandardizingPath];

  v51 = [v5 mutableCopy];
  v52 = +[NSMutableSet set];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v74 objects:v88 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v75;
    *&v9 = 138544386;
    v49 = v9;
    v67 = *v75;
    do
    {
      v12 = 0;
      v69 = v10;
      do
      {
        if (*v75 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v74 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        v15 = [v13 path];
        v16 = [v15 stringByStandardizingPath];

        v17 = [v13 lastPathComponent];
        v18 = [v7 objectForKey:v13];
        if (-[NSObject length](v17, "length") && [v16 length] && objc_msgSend(v18, "length") && !objc_msgSend(v18, "isEqualToString:", @"NullMetadataAccountIdentifier"))
        {
          v20 = v7;
          v19 = [(RDStoreController *)v68 _reminderDataContainerURLForAccountIdentifier:v18];
          v21 = [v19 path];
          v22 = [v21 stringByStandardizingPath];

          v70 = v22;
          if ([v22 length] && objc_msgSend(v66, "length"))
          {
            v11 = v67;
            v7 = v20;
            v10 = v69;
            if (([v16 hasPrefix:v70] & 1) == 0 && objc_msgSend(v16, "hasPrefix:", v66))
            {
              v65 = v13;
              v23 = [(RDStoreController *)v68 databaseDirectoryURLWithContainerURL:v19];
              v24 = [v23 URLByAppendingPathComponent:v17];

              v25 = v24;
              if ([v63 rem_fileExistsAtURL:v24])
              {
                v26 = v65;
                log = +[REMLogStore container];
                if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
                {
                  v57 = [v65 absoluteString];
                  [v25 absoluteString];
                  v27 = v61 = v25;
                  *buf = 138544130;
                  v79 = v18;
                  v80 = 2114;
                  v81 = v17;
                  v82 = 2112;
                  v83 = v57;
                  v84 = 2112;
                  v85 = v27;
                  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[relocateMisplacedStores] There's already a store at the persona container with the same name, skipping this mis-located store at the default container {accountIdentifier: %{public}@, basename: %{public}@, misLocatedStoreURL: %@, relocateToStoreURL: %@}", buf, 0x2Au);

                  v25 = v61;
                  v26 = v65;
                }
              }

              else
              {
                v54 = [v65 path];
                v62 = v24;
                v28 = [v24 path];
                v73 = 0;
                v58 = [RDSQLiteDBUtils copySQLiteFileAtPath:v54 toPath:v28 timeout:&v73 error:1.0];
                v29 = v73;

                v30 = +[REMLogStore container];
                v31 = v30;
                v32 = v29;
                v26 = v65;
                log = v32;
                if (!v58 || v32)
                {
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                  {
                    v56 = [v65 absoluteString];
                    [v62 absoluteString];
                    v34 = v60 = v31;
                    *buf = v49;
                    v79 = v18;
                    v80 = 2114;
                    v81 = v17;
                    v82 = 2112;
                    v83 = v56;
                    v84 = 2112;
                    v85 = v34;
                    v86 = 2114;
                    v87 = log;
                    _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "[relocateMisplacedStores] Failed to clone store located at default container to its correct container path {accountIdentifier: %{public}@, basename: %{public}@, misLocatedStoreURL: %@, relocateToStoreURL: %@, error: %{public}@}", buf, 0x34u);

                    v31 = v60;
                  }

                  v25 = v62;
                }

                else
                {
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                  {
                    v55 = [v65 absoluteString];
                    [v62 absoluteString];
                    v33 = v59 = v31;
                    *buf = 138544130;
                    v79 = v18;
                    v80 = 2114;
                    v81 = v17;
                    v82 = 2112;
                    v83 = v55;
                    v84 = 2112;
                    v85 = v33;
                    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "[relocateMisplacedStores] Successfully cloned store located at default container to its correct container path {accountIdentifier: %{public}@, basename: %{public}@, misLocatedStoreURL: %@, relocateToStoreURL: %@}", buf, 0x2Au);

                    v31 = v59;
                  }

                  [v52 addObject:v65];
                  [v51 removeObjectForKey:v65];
                  v25 = v62;
                  [v51 setObject:v18 forKey:v62];
                }
              }

              v11 = v67;
              goto LABEL_24;
            }
          }

          else
          {
            v26 = +[REMLogStore container];
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543874;
              v79 = v18;
              v80 = 2112;
              v81 = v19;
              v82 = 2112;
              v83 = v53;
              _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "[relocateMisplacedStores] Unexpectedly nil container URL(s) path(s) {accountIdentifier: %{public}@, reminderDataContainerURL: %@, defaultReminderDataContainerURL: %@}", buf, 0x20u);
            }

            v11 = v67;
            v7 = v20;
            v10 = v69;
LABEL_24:
          }

          goto LABEL_12;
        }

        v19 = +[REMLogStore container];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v79 = v18;
          v80 = 2114;
          v81 = v17;
          v82 = 2112;
          v83 = v13;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "[relocateMisplacedStores] Unexpectedly nil store basename/storeURLPath/accountIdentifier {accountIdentifier: %{public}@, basename: %{public}@, storeURL: %@}", buf, 0x20u);
        }

LABEL_12:

        objc_autoreleasePoolPop(v14);
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v35 = [v7 countByEnumeratingWithState:&v74 objects:v88 count:16];
      v10 = v35;
    }

    while (v35);
  }

  if (v50 && [v52 count])
  {
    v71 = 0;
    v72 = 0;
    v36 = [(RDStoreController *)v68 _removeFilesOfStoresAtURLs:v52 outRemovedFileURLs:&v72 error:&v71];
    v37 = v72;
    v38 = v71;
    v39 = [v37 allObjects];
    v40 = [v39 valueForKey:@"lastPathComponent"];

    v41 = [v40 sortedArrayUsingSelector:"caseInsensitiveCompare:"];

    v42 = [NSPredicate predicateWithFormat:@"!(SELF ENDSWITH[c] 'shm') && !(SELF ENDSWITH[c] 'wal')"];
    v43 = [v41 filteredArrayUsingPredicate:v42];

    v44 = +[REMLogStore container];
    v45 = v44;
    if (v36)
    {
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v46 = [v37 count];
        *buf = 134218242;
        v79 = v46;
        v80 = 2112;
        v81 = v43;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "[relocateMisplacedStores] Deleted store files and journals of mis-located stores {total: %ld, removeStoreNames: %@}", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v48 = [v37 count];
      *buf = 138543874;
      v79 = v38;
      v80 = 2048;
      v81 = v48;
      v82 = 2112;
      v83 = v43;
      _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "[relocateMisplacedStores] Failed to delete (some) mis-located store files {error: %{public}@, totalRemoved: %ld, removedFileNames: %@}", buf, 0x20u);
    }
  }

  return v51;
}

- (void)_relocateMisplacedDataSeparationAccountAttachmentFilesWithRelocatedAccountIdentifiers:(id)a3
{
  v5 = a3;
  v14 = objc_opt_new();
  v6 = [[RDAttachmentFileManager alloc] initWithDocumentsURLProvider:v14];
  v7 = [(RDStoreController *)self attachmentFileManager];
  v8 = [NSMutableSet setWithArray:v5];

  v9 = [NSSet setWithObjects:@"NullMetadataAccountIdentifier", @"NotFoundInStoreURLsMapAccountIdentifier", 0];
  [v8 minusSet:v9];

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = NSStringFromSelector(a2);
  v13 = [NSString stringWithFormat:@"%@.%@", v11, v12];
  [(RDStoreController *)self _moveAttachmentFilesFromAttachmentFileManager:v6 toAttachmentFileManager:v7 affectedAccountIdentifiers:v8 logPrefix:v13];
}

- (void)_migrateBackupStoresToPostDataSeparationLocationIfNeeded
{
  v3 = +[NSFileManager defaultManager];
  v40 = +[REMPaths legacy_applicationDocumentsURL];
  v4 = [RDPaths reminderDataContainerURLWithAppDocumentsURL:?];
  v5 = [(RDStoreController *)self databaseBackupDirectoryURLWithContainerURL:v4];
  v6 = [(RDStoreController *)self databaseStagedMigrationDirectoryURLWithContainerURL:v4];
  v7 = +[RDPaths defaultReminderDataContainerURL];
  v8 = [(RDStoreController *)self databaseBackupDirectoryURLWithContainerURL:v7];
  v9 = [(RDStoreController *)self databaseStagedMigrationDirectoryURLWithContainerURL:v7];
  if ([v3 rem_fileExistsAtURL:v5])
  {
    v42 = 0;
    v10 = [v3 moveItemAtURL:v5 toURL:v8 error:&v42];
    v36 = v42;
    v11 = +[REMLogStore container];
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        v13 = objc_opt_class();
        v33 = NSStringFromClass(v13);
        v29 = NSStringFromSelector(a2);
        [NSString stringWithFormat:@"%@.%@", v33, v29];
        v14 = v31 = v9;
        v15 = [v8 absoluteString];
        *buf = 138543618;
        v44 = v14;
        v45 = 2112;
        v46 = v15;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Moved Stores-Backup from legacy contanier to the post-data-separation default container {modernStoresBackupDirURL: %@}", buf, 0x16u);

        v9 = v31;
      }
    }

    else if (v12)
    {
      v16 = objc_opt_class();
      v32 = NSStringFromClass(v16);
      v30 = NSStringFromSelector(a2);
      [NSString stringWithFormat:@"%@.%@", v32, v30];
      v17 = v34 = v8;
      v18 = [v34 absoluteString];
      *buf = 138543874;
      v44 = v17;
      v45 = 2112;
      v46 = v18;
      v47 = 2114;
      v48 = v36;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Failed to move Stores-Backup from legacy contanier to the post-data-separation default container {modernStoresBackupDirURL: %@, error: %{public}@}", buf, 0x20u);

      v8 = v34;
    }
  }

  if ([v3 rem_fileExistsAtURL:v6])
  {
    v41 = 0;
    v19 = [v3 moveItemAtURL:v6 toURL:v9 error:&v41];
    v37 = v41;
    v20 = +[REMLogStore container];
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      if (v21)
      {
        v22 = objc_opt_class();
        v35 = NSStringFromClass(v22);
        aSelectora = NSStringFromSelector(a2);
        v23 = [NSString stringWithFormat:@"%@.%@", v35, aSelectora];
        v24 = [v9 absoluteString];
        *buf = 138543618;
        v44 = v23;
        v45 = 2112;
        v46 = v24;
        v25 = "[%{public}@] Moved Stores-StagedMigration from legacy contanier to the post-data-separation default container {modernStoresStagedMigrationDirURL: %@}";
        v26 = v20;
        v27 = 22;
LABEL_14:
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
      }
    }

    else if (v21)
    {
      v28 = objc_opt_class();
      v35 = NSStringFromClass(v28);
      aSelectora = NSStringFromSelector(a2);
      v23 = [NSString stringWithFormat:@"%@.%@", v35, aSelectora];
      v24 = [v9 absoluteString];
      *buf = 138543874;
      v44 = v23;
      v45 = 2112;
      v46 = v24;
      v47 = 2114;
      v48 = v37;
      v25 = "[%{public}@] Failed to move Stores-StagedMigration from legacy contanier to the post-data-separation default container {modernStoresStagedMigrationDirURL: %@, error: %{public}@}";
      v26 = v20;
      v27 = 32;
      goto LABEL_14;
    }
  }
}

- (void)_migrateMLModelsToPostDataSeparationLocationIfNeeded
{
  v3 = +[NSFileManager defaultManager];
  v4 = REMCRMergeableOrderedSet_ptr;
  v5 = +[REMPaths _legacy_mlModelURL];
  if ([v3 rem_fileExistsAtURL:v5])
  {
    v6 = +[REMPaths mlModelURL];
    if ([v3 rem_fileExistsAtURL:v6])
    {
      v7 = [v3 rem_isEmptyDirectoryAtURL:v6 skipsHiddenFiles:0];
      v8 = +[REMLogStore container];
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (!v7)
      {
        if (v9)
        {
          v34 = objc_opt_class();
          v35 = NSStringFromClass(v34);
          v36 = NSStringFromSelector(a2);
          v37 = [NSString stringWithFormat:@"%@.%@", v35, v36];
          [v6 absoluteString];
          v39 = v38 = a2;
          *buf = 138543618;
          v67 = v37;
          v68 = 2112;
          v69 = v39;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] ML models already exist and non-empty at modern location, don't overwrite it with the legacy copy {modernMLModelURL: %@}", buf, 0x16u);

          a2 = v38;
          v4 = REMCRMergeableOrderedSet_ptr;
        }

        goto LABEL_21;
      }

      if (v9)
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = NSStringFromSelector(a2);
        v13 = [NSString stringWithFormat:@"%@.%@", v11, v12];
        [v6 absoluteString];
        v15 = v14 = a2;
        *buf = 138543618;
        v67 = v13;
        v68 = 2112;
        v69 = v15;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] ML model directory exists at modern location but is empty or not a directory, removing before proceeding {modernMLModelURL: %@}", buf, 0x16u);

        a2 = v14;
        v4 = REMCRMergeableOrderedSet_ptr;
      }

      v65 = 0;
      [v3 removeItemAtURL:v6 error:&v65];
      v16 = v65;
      if (v16)
      {
        v17 = +[REMLogStore container];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v55 = objc_opt_class();
          v56 = NSStringFromClass(v55);
          NSStringFromSelector(a2);
          v58 = v57 = a2;
          v59 = [NSString stringWithFormat:@"%@.%@", v56, v58];
          *buf = 138543618;
          v67 = v59;
          v68 = 2114;
          v69 = v16;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[%{public}@] Could not remove the the empty dir or existing file at the modern ML model location before proceeding {error: %{public}@}", buf, 0x16u);

          a2 = v57;
          v4 = REMCRMergeableOrderedSet_ptr;
        }
      }
    }

    v64 = 0;
    v18 = [v3 moveItemAtURL:v5 toURL:v6 error:&v64];
    v8 = v64;
    v19 = +[REMLogStore container];
    v20 = v19;
    if ((v18 & 1) == 0)
    {
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
LABEL_35:

        goto LABEL_36;
      }

      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      v32 = NSStringFromSelector(a2);
      v33 = [NSString stringWithFormat:@"%@.%@", v31, v32];
      *buf = 138544130;
      v67 = v33;
      v68 = 2112;
      v69 = v5;
      v70 = 2112;
      v71 = v6;
      v72 = 2114;
      v73 = v8;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to move ML models to modern location {legacyMLModelURL: %@, modernMLModelURL: %@, error: %{public}@}", buf, 0x2Au);

      goto LABEL_34;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      NSStringFromSelector(a2);
      v24 = v23 = a2;
      v25 = [NSString stringWithFormat:@"%@.%@", v22, v24];
      *buf = 138543874;
      v67 = v25;
      v68 = 2112;
      v69 = v5;
      v70 = 2112;
      v71 = v6;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully moved ML models to modern location {legacyMLModelURL: %@, modernMLModelURL: %@}", buf, 0x20u);

      a2 = v23;
      v4 = REMCRMergeableOrderedSet_ptr;
    }

LABEL_21:
    if (![v3 rem_fileExistsAtURL:v5])
    {
      goto LABEL_28;
    }

    v63 = 0;
    v40 = [v3 removeItemAtURL:v5 error:&v63];
    v41 = v63;
    v42 = +[REMLogStore container];
    v43 = v42;
    if (v40)
    {
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
LABEL_27:

LABEL_28:
        v8 = [v4[61] _legacy_temporaryMLModelURL];
        if ([v3 rem_fileExistsAtURL:v8])
        {
          v62 = 0;
          v49 = [v3 removeItemAtURL:v8 error:&v62];
          v20 = v62;
          v50 = +[REMLogStore container];
          v33 = v50;
          if ((v49 & 1) == 0)
          {
            if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_34;
            }

            v61 = objc_opt_class();
            v52 = NSStringFromClass(v61);
            v53 = NSStringFromSelector(a2);
            v54 = [NSString stringWithFormat:@"%@.%@", v52, v53];
            *buf = 138543874;
            v67 = v54;
            v68 = 2112;
            v69 = v8;
            v70 = 2114;
            v71 = v20;
            _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to remove temporary ML models at legacy location {legacyTempMLModelURL: %@, error: %{public}@}", buf, 0x20u);
            goto LABEL_32;
          }

          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            v51 = objc_opt_class();
            v52 = NSStringFromClass(v51);
            v53 = NSStringFromSelector(a2);
            v54 = [NSString stringWithFormat:@"%@.%@", v52, v53];
            *buf = 138543618;
            v67 = v54;
            v68 = 2112;
            v69 = v8;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully removed temporary ML models at legacty location {legacyTempMLModelURL: %@}", buf, 0x16u);
LABEL_32:
          }

LABEL_34:

          goto LABEL_35;
        }

LABEL_36:

        goto LABEL_37;
      }

      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      NSStringFromSelector(a2);
      v47 = v46 = a2;
      v48 = [NSString stringWithFormat:@"%@.%@", v45, v47];
      *buf = 138543618;
      v67 = v48;
      v68 = 2112;
      v69 = v5;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully removed ML models at legacty location {legacyMLModelURL: %@}", buf, 0x16u);
    }

    else
    {
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      v60 = objc_opt_class();
      v45 = NSStringFromClass(v60);
      NSStringFromSelector(a2);
      v47 = v46 = a2;
      v48 = [NSString stringWithFormat:@"%@.%@", v45, v47];
      *buf = 138543874;
      v67 = v48;
      v68 = 2112;
      v69 = v5;
      v70 = 2114;
      v71 = v41;
      _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to remove ML models at legacy location {legacyMLModelURL: %@, error: %{public}@}", buf, 0x20u);
    }

    a2 = v46;
    v4 = REMCRMergeableOrderedSet_ptr;

    goto LABEL_27;
  }

  v6 = +[REMLogStore container];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v28 = NSStringFromSelector(a2);
    v8 = [NSString stringWithFormat:@"%@.%@", v27, v28];
    v29 = [v5 absoluteString];
    *buf = 138543618;
    v67 = v8;
    v68 = 2112;
    v69 = v29;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] No ML models found at legacy location {legacyMLModelURL: %@}", buf, 0x16u);

    goto LABEL_36;
  }

LABEL_37:
}

- (void)_migrateAttachmentFilesToPostDataSeparationLocationsIfNeededWithAccountIdentifiers:(id)a3
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = [[RDAttachmentFileManager alloc] initWithDocumentsURLProvider:v6];
  v8 = [(RDStoreController *)self attachmentFileManager];
  v9 = +[NSFileManager defaultManager];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = NSStringFromSelector(a2);
  v13 = [NSString stringWithFormat:@"%@.%@", v11, v12];
  [(RDStoreController *)self _moveAttachmentFilesFromAttachmentFileManager:v7 toAttachmentFileManager:v8 affectedAccountIdentifiers:v5 logPrefix:v13];

  [(RDStoreController *)self _migrateImageDeduplicationSentinelFileIfNeededWithPreMigrationAttachmentFileManager:v7 dataSeparationAttachmentFileManager:v8];
  v14 = [(RDAttachmentFileManager *)v7 URLForDefaultFilesDirectory];
  if ([v9 rem_isEmptyDirectoryAtURL:v14 skipsHiddenFiles:0])
  {
    v24 = 0;
    v15 = [v9 removeItemAtURL:v14 error:&v24];
    v16 = v24;
    v17 = +[REMLogStore container];
    v18 = v17;
    if (v15)
    {
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
LABEL_7:

        goto LABEL_8;
      }

      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = NSStringFromSelector(a2);
      v22 = [NSString stringWithFormat:@"%@.%@", v20, v21];
      *buf = 138543362;
      v26 = v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully removed empty pre-migration 'Files' directory", buf, 0xCu);
    }

    else
    {
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v23 = objc_opt_class();
      v20 = NSStringFromClass(v23);
      v21 = NSStringFromSelector(a2);
      v22 = [NSString stringWithFormat:@"%@.%@", v20, v21];
      *buf = 138543618;
      v26 = v22;
      v27 = 2114;
      v28 = v16;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to remove empty pre-migration 'Files' directory {error: %{public}@}", buf, 0x16u);
    }

    goto LABEL_7;
  }

LABEL_8:
}

- (void)_moveAttachmentFilesFromAttachmentFileManager:(id)a3 toAttachmentFileManager:(id)a4 affectedAccountIdentifiers:(id)a5 logPrefix:(id)a6
{
  v9 = a3;
  v40 = a4;
  v10 = a5;
  v37 = a6;
  v11 = +[NSFileManager defaultManager];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v12 = v10;
  v13 = v11;
  obj = v12;
  v42 = [v12 countByEnumeratingWithState:&v47 objects:v61 count:16];
  if (v42)
  {
    v15 = &_s19ReminderKitInternal24REMRemindersListDataViewO25ScheduledDateBucketsModelVSeAAMc_ptr;
    v41 = *v48;
    *&v14 = 138544130;
    v35 = v14;
    v38 = v13;
    v36 = v9;
    do
    {
      v16 = 0;
      do
      {
        if (*v48 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v47 + 1) + 8 * v16);
        v18 = objc_autoreleasePoolPush();
        v19 = [objc_alloc(v15[481]) initWithUUIDString:v17];
        if (v19)
        {
          v20 = [v9 URLForAccountFileDirectory:v19];
          v21 = [v40 URLForAccountFileDirectory:v19];
          if ([v13 rem_fileExistsAtURL:v20])
          {
            if (![v13 rem_fileExistsAtURL:v21])
            {
              goto LABEL_17;
            }

            if ([v13 rem_isEmptyDirectoryAtURL:v21 skipsHiddenFiles:1])
            {
              v22 = +[REMLogStore container];
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                v52 = v37;
                v53 = 2114;
                v54 = v17;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] File attachment directory exists but is empty or not directory with given toAttachmentFileManager, removing before proceeding {accountIdentifier: %{public}@}", buf, 0x16u);
              }

              v46 = 0;
              [v13 removeItemAtURL:v21 error:&v46];
              v23 = v46;
              if (v23)
              {
                v24 = +[REMLogStore container];
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543874;
                  v52 = v37;
                  v53 = 2114;
                  v54 = v17;
                  v55 = 2114;
                  v56 = v23;
                  _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[%{public}@] Could not remove the the empty dir or existing file at the toAttachmentFileManager location before proceeding {accountIdentifier: %{public}@, error: %{public}@}", buf, 0x20u);
                }

                v13 = v38;
              }

LABEL_17:
              v25 = [v21 URLByDeletingLastPathComponent];
              if (v25)
              {
                v44 = 0;
                [v13 rem_createDirectoryIfNecessaryAtURL:v25 error:&v44];
                v26 = v44;
                if (v26)
                {
                  v27 = v26;
                  v28 = +[REMLogStore container];
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543618;
                    v52 = v37;
                    v53 = 2112;
                    v54 = v25;
                    _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to create container files directory given by the toAttachmentFileManager {destinationContainerFilesDirectoryURL: %@}", buf, 0x16u);
                  }

                  goto LABEL_37;
                }
              }

              v43 = 0;
              v29 = [v13 moveItemAtURL:v20 toURL:v21 error:&v43];
              v30 = v43;
              v31 = +[REMLogStore container];
              v32 = v31;
              if (v29)
              {
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  v52 = v37;
                  v53 = 2114;
                  v54 = v17;
                  _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sucessfully moved file attachment directory to target location given by the toAttachmentFileManager {accountIdentifier: %{public}@}", buf, 0x16u);
                }
              }

              else if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                *buf = 138544386;
                v52 = v37;
                v53 = 2114;
                v54 = v17;
                v55 = 2112;
                v56 = v20;
                v57 = 2112;
                v58 = v21;
                v59 = 2114;
                v60 = v30;
                _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to move file attachment directory given by the fromAttachmentFileManager to target location given by the toAttachmentFileManager {accountIdentifier: %{public}@, fromAccountFileDirectoryURL: %@, toAccountFileDirectoryURL: %@, error: %{public}@}", buf, 0x34u);
              }

              v9 = v36;
            }

            else
            {
              v45 = 0;
              v33 = [v13 removeItemAtURL:v20 error:&v45];
              v25 = v45;
              v34 = +[REMLogStore container];
              v27 = v34;
              if (v33)
              {
                if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  v52 = v37;
                  v53 = 2114;
                  v54 = v17;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] File attachment directory already exist and non-empty with given fromAttachmentFileManager, successfully removed source copy {accountIdentifier: %{public}@}", buf, 0x16u);
                }
              }

              else if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                *buf = v35;
                v52 = v37;
                v53 = 2112;
                v54 = v17;
                v55 = 2112;
                v56 = v20;
                v57 = 2114;
                v58 = v25;
                _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "[%{public}@] File attachment directory already exist and non-empty with given fromAttachmentFileManager, but failed to remove the source copy {accountIdentifier: %@, fromAccountFileDirectoryURL: %@, error: %{public}@}", buf, 0x2Au);
              }

LABEL_37:
            }

            v13 = v38;
            v15 = &_s19ReminderKitInternal24REMRemindersListDataViewO25ScheduledDateBucketsModelVSeAAMc_ptr;
          }

          else
          {
            v25 = +[REMLogStore container];
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *buf = 138543618;
              v52 = v37;
              v53 = 2114;
              v54 = v17;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "[%{public}@] No need to move file attachments of given fromAttachmentFileManager as the source directory is not found {accountIdentifier: %{public}@}", buf, 0x16u);
            }
          }

          goto LABEL_40;
        }

        v20 = +[REMLogStore container];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          *buf = 138543618;
          v52 = v37;
          v53 = 2114;
          v54 = v17;
          _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "[%{public}@] Account identifier is not a UUID {accountIdentifier: %{public}@}", buf, 0x16u);
        }

LABEL_40:

        objc_autoreleasePoolPop(v18);
        v16 = v16 + 1;
      }

      while (v42 != v16);
      v42 = [obj countByEnumeratingWithState:&v47 objects:v61 count:16];
    }

    while (v42);
  }
}

- (void)_migrateImageDeduplicationSentinelFileIfNeededWithPreMigrationAttachmentFileManager:(id)a3 dataSeparationAttachmentFileManager:(id)a4
{
  v46 = a3;
  v43 = a4;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v5 = +[_TtC7remindd32RDImageDeduplicationActivityObjC SentinelFileName];
  v60[0] = v5;
  v6 = +[_TtC7remindd37RDSavedImageDeduplicationActivityObjC SentinelFileName];
  v60[1] = v6;
  v7 = [NSArray arrayWithObjects:v60 count:2];

  obj = v7;
  v47 = [v7 countByEnumeratingWithState:&v50 objects:v61 count:16];
  if (v47)
  {
    v8 = *v51;
    v9 = &_s19ReminderKitInternal24REMRemindersListDataViewO25ScheduledDateBucketsModelVSeAAMc_ptr;
    v41 = *v51;
    do
    {
      for (i = 0; i != v47; i = i + 1)
      {
        if (*v51 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v50 + 1) + 8 * i);
        v12 = [v9[458] defaultManager];
        v13 = [v46 URLForDefaultFilesDirectory];
        v14 = [v13 URLByAppendingPathComponent:v11];
        if ([v12 rem_fileExistsAtURL:v14])
        {
          v45 = v13;
          v15 = [v43 URLForDefaultFilesDirectory];
          v16 = [v15 URLByAppendingPathComponent:v11];
          if ([v12 rem_fileExistsAtURL:v16])
          {
            v17 = +[REMLogStore container];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              v18 = objc_opt_class();
              v39 = NSStringFromClass(v18);
              NSStringFromSelector(a2);
              v20 = v19 = v16;
              v21 = [NSString stringWithFormat:@"%@.%@", v39, v20];
              v22 = [v19 absoluteString];
              *buf = 138543874;
              v55 = v21;
              v56 = 2114;
              v57 = v11;
              v58 = 2112;
              v59 = v22;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[%{public}@] Post-migration '%{public}@' sentinel file already exists, removing pre-migration copy {postMigrationImageDedupSentinelFileURL: %@}", buf, 0x20u);

              v9 = &_s19ReminderKitInternal24REMRemindersListDataViewO25ScheduledDateBucketsModelVSeAAMc_ptr;
              v16 = v19;

              v8 = v41;
            }

            v49 = 0;
            [v12 removeItemAtURL:v14 error:&v49];
            v23 = v49;
            if (v23)
            {
              v24 = +[REMLogStore container];
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                v25 = objc_opt_class();
                v26 = NSStringFromClass(v25);
                NSStringFromSelector(a2);
                v27 = v40 = v16;
                v28 = [NSString stringWithFormat:@"%@.%@", v26, v27];
                *buf = 138543874;
                v55 = v28;
                v56 = 2114;
                v57 = v11;
                v58 = 2114;
                v59 = v23;
                v29 = v24;
                v30 = "[%{public}@] Could not remove pre-migration  '%{public}@' sentinel file {error: %{public}@}";
                goto LABEL_20;
              }

LABEL_23:
            }

            v13 = v45;
            goto LABEL_25;
          }

          v48 = 0;
          v35 = [v12 moveItemAtURL:v14 toURL:v16 error:&v48];
          v23 = v48;
          v36 = +[REMLogStore container];
          v24 = v36;
          if (v35)
          {
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              v37 = objc_opt_class();
              v26 = NSStringFromClass(v37);
              NSStringFromSelector(a2);
              v27 = v40 = v16;
              v28 = [NSString stringWithFormat:@"%@.%@", v26, v27];
              *buf = 138543618;
              v55 = v28;
              v56 = 2114;
              v57 = v11;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sucessfully moved '%{public}@' sentinel file to post-migration location", buf, 0x16u);
              goto LABEL_21;
            }
          }

          else if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v38 = objc_opt_class();
            v26 = NSStringFromClass(v38);
            NSStringFromSelector(a2);
            v27 = v40 = v16;
            v28 = [NSString stringWithFormat:@"%@.%@", v26, v27];
            *buf = 138543874;
            v55 = v28;
            v56 = 2114;
            v57 = v11;
            v58 = 2114;
            v59 = v23;
            v29 = v24;
            v30 = "[%{public}@] Failed to move '%{public}@' sentinel file to post-migration location {error: %{public}@}";
LABEL_20:
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, v30, buf, 0x20u);
LABEL_21:

            v16 = v40;
            v9 = &_s19ReminderKitInternal24REMRemindersListDataViewO25ScheduledDateBucketsModelVSeAAMc_ptr;
          }

          v8 = v41;
          goto LABEL_23;
        }

        v15 = +[REMLogStore container];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v31 = objc_opt_class();
          v32 = NSStringFromClass(v31);
          v33 = NSStringFromSelector(a2);
          v34 = [NSString stringWithFormat:@"%@.%@", v32, v33];
          *buf = 138543874;
          v55 = v34;
          v56 = 2114;
          v57 = v11;
          v58 = 2112;
          v59 = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}@] No pre-migration '%{public}@' sentinel file found {preMigrationImageDedupSentinelFileURL: %@}", buf, 0x20u);

          v9 = &_s19ReminderKitInternal24REMRemindersListDataViewO25ScheduledDateBucketsModelVSeAAMc_ptr;
        }

LABEL_25:
      }

      v47 = [obj countByEnumeratingWithState:&v50 objects:v61 count:16];
    }

    while (v47);
  }
}

- (void)_cleanUpPreDataSeparationDataContainerIfNeeded
{
  v4 = +[NSFileManager defaultManager];
  v5 = +[REMPaths legacy_applicationDocumentsURL];
  v6 = [RDPaths reminderDataContainerURLWithAppDocumentsURL:v5];
  v7 = [(RDStoreController *)self databaseDirectoryURLWithContainerURL:v6];
  if ([v4 rem_isEmptyDirectoryAtURL:v7 skipsHiddenFiles:1])
  {
    v31 = 0;
    v8 = [v4 removeItemAtURL:v7 error:&v31];
    v9 = v31;
    v10 = +[REMLogStore container];
    v11 = v10;
    if (v8)
    {
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
LABEL_7:

        goto LABEL_8;
      }

      v12 = objc_opt_class();
      NSStringFromClass(v12);
      v13 = aSelector = a2;
      v14 = NSStringFromSelector(aSelector);
      v15 = [NSString stringWithFormat:@"%@.%@", v13, v14];
      *buf = 138543362;
      v33 = v15;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully removed empty pre-migration 'Stores' directory", buf, 0xCu);

      a2 = aSelector;
    }

    else
    {
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      NSStringFromSelector(a2);
      v26 = aSelectora = a2;
      v15 = [NSString stringWithFormat:@"%@.%@", v25, v26];
      *buf = 138543618;
      v33 = v15;
      v34 = 2114;
      v35 = v9;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to remove empty pre-migration 'Stores' directory {error: %{public}@}", buf, 0x16u);

      a2 = aSelectora;
    }

    goto LABEL_7;
  }

LABEL_8:
  if ([v4 rem_isEmptyDirectoryAtURL:v6 skipsHiddenFiles:1])
  {
    v30 = 0;
    v16 = [v4 removeItemAtURL:v6 error:&v30];
    v17 = v30;
    v18 = +[REMLogStore container];
    v19 = v18;
    if (v16)
    {
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
LABEL_14:

        goto LABEL_15;
      }

      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = NSStringFromSelector(a2);
      v23 = [NSString stringWithFormat:@"%@.%@", v21, v22];
      *buf = 138543362;
      v33 = v23;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully removed empty pre-migration 'Container_v1' directory", buf, 0xCu);
    }

    else
    {
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      v27 = objc_opt_class();
      v21 = NSStringFromClass(v27);
      v22 = NSStringFromSelector(a2);
      v23 = [NSString stringWithFormat:@"%@.%@", v21, v22];
      *buf = 138543618;
      v33 = v23;
      v34 = 2114;
      v35 = v17;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to remove empty pre-migration 'Container_v1' directory {error: %{public}@}", buf, 0x16u);
    }

    goto LABEL_14;
  }

LABEL_15:
}

- (BOOL)l_loadAccountStoresFromDiskAndValidateInBatchesWithStoreURLs:(id)a3 shouldDeleteInvalidStoresImmediately:(BOOL)a4 error:(id *)a5
{
  v30 = a5;
  v36 = a4;
  v6 = a3;
  v35 = -[RDStoreController _persistentStoreConnectionPoolMaxSizeWithTotalStoreCount:](self, "_persistentStoreConnectionPoolMaxSizeWithTotalStoreCount:", [v6 count]);
  v41 = qword_1009358C0;
  v7 = [NSMutableSet setWithCapacity:?];
  v38 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v6 count]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v8 = v6;
  v40 = [v8 countByEnumeratingWithState:&v44 objects:v57 count:16];
  if (v40)
  {
    v37 = 0;
    v39 = *v45;
    v9 = 1;
    v10 = REMCRMergeableOrderedSet_ptr;
    v33 = 1;
    v32 = self;
    v31 = v7;
    v34 = v8;
    do
    {
      for (i = 0; i != v40; i = i + 1)
      {
        if (*v45 != v39)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v44 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        [v7 addObject:v12];
        v14 = [v10[51] container];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          sub_10076CAE0(v56, v12);
        }

        if (!(v9 % v41) || v9 == [v8 count])
        {
          v42 = v13;
          v15 = [v10[51] container];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = [v8 count];
            *buf = 134218496;
            v49 = v9;
            v50 = 2048;
            v51 = v9 / v41;
            v52 = 2048;
            v53 = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[loadAccountStoresFromDisk] Flusing batch {idx: %ld, batch: %ld, storeURLs.count: %ld}", buf, 0x20u);
          }

          v17 = [v7 allObjects];
          v43 = 0;
          v18 = [(RDStoreController *)self l_loadBatchOfAccountStoresFromDiskAndValidateWithStoreURLs:v17 processedStoreIdentifiers:v38 shouldDeleteInvalidStoresImmediately:v36 connectionPoolMaxSize:v35 error:&v43];
          v19 = v43;

          v20 = v10;
          v21 = [v10[51] container];
          v22 = v21;
          if (v18)
          {
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v23 = [v7 valueForKey:@"lastPathComponent"];
              v24 = [(RDStoreController *)self l_accountStoreMap];
              v25 = [v24 keyEnumerator];
              v26 = [v25 allObjects];
              *buf = 134218754;
              v49 = v9 / v41;
              v50 = 2048;
              v51 = v41;
              v52 = 2114;
              v53 = v23;
              v54 = 2114;
              v55 = v26;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[loadAccountStoresFromDisk] Loaded accounts from disk {batch: %ld, batchSize: %ld, urls: %{public}@, accountIdentifiers: %{public}@}", buf, 0x2Au);

              v7 = v31;
              self = v32;
            }
          }

          else
          {
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v27 = [v7 valueForKey:@"lastPathComponent"];
              *buf = 134218754;
              v49 = v9 / v41;
              v50 = 2048;
              v51 = v41;
              v52 = 2114;
              v53 = v27;
              v54 = 2114;
              v55 = v19;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "[loadAccountStoresFromDisk] Failed to load accountStoreFromDisk. {batch: %ld, batchSize: %ld, urls: %{public}@, error: %{public}@}", buf, 0x2Au);

              self = v32;
            }

            v33 = 0;
            v22 = v37;
            v37 = v19;
          }

          v8 = v34;

          [v7 removeAllObjects];
          v10 = v20;
          v13 = v42;
        }

        ++v9;
        objc_autoreleasePoolPop(v13);
      }

      v40 = [v8 countByEnumeratingWithState:&v44 objects:v57 count:16];
    }

    while (v40);
  }

  else
  {
    v37 = 0;
    v33 = 1;
  }

  if (v30)
  {
    v28 = v37;
    *v30 = v37;
  }

  return v33 & 1;
}

- (BOOL)l_loadBatchOfAccountStoresFromDiskAndValidateWithStoreURLs:(id)a3 processedStoreIdentifiers:(id)a4 shouldDeleteInvalidStoresImmediately:(BOOL)a5 connectionPoolMaxSize:(unint64_t)a6 error:(id *)a7
{
  v31 = a5;
  v10 = a3;
  v11 = a4;
  v42 = NSPersistentStoreConnectionPoolMaxSizeKey;
  v12 = [NSNumber numberWithUnsignedInteger:a6];
  v43 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];

  v38 = 0;
  v33 = v10;
  v30 = v13;
  v28 = [(RDStoreController *)self l_createOrLoadAccountStoresWithURLs:v10 persistentStoreDescriptionOptionsOverride:v13 isCreatingStores:0 error:&v38];
  v29 = v38;
  v14 = +[NSMutableArray array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v15 = [(RDStoreController *)self persistentStoreCoordinator];
  v16 = [v15 persistentStores];

  v17 = [v16 countByEnumeratingWithState:&v34 objects:v41 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v35;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v35 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v34 + 1) + 8 * i);
        v22 = [v21 identifier];
        if (v22)
        {
          if (([v11 containsObject:v22] & 1) == 0)
          {
            [v14 addObject:v21];
            [v11 addObject:v22];
          }
        }

        else
        {
          v23 = +[REMLogStore container];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v40 = v21;
            _os_log_fault_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, "[loadAccountStoresFromDisk] Loaded an account store with no store identifier, can't add to store controller {store: %{public}@}", buf, 0xCu);
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v34 objects:v41 count:16];
    }

    while (v18);
  }

  v24 = +[REMLogStore container];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [v14 count];
    *buf = 134217984;
    v40 = v25;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[loadAccountStoresFromDisk] candidates stores to validate... {candidateStores.count: %ld}", buf, 0xCu);
  }

  [(RDStoreController *)self l_addValidatedStoresToAccountStoreMapWithStores:v14 shouldDeleteInvalidStoresImmediately:v31];
  if (a7)
  {
    v26 = v29;
    *a7 = v29;
  }

  return v28;
}

- (void)l_loadDummyStoreIfNeeded
{
  v3 = [(RDStoreController *)self persistentStoreCoordinator];
  v4 = [v3 persistentStores];
  v5 = [v4 count];

  if (!v5)
  {
    v6 = [(RDStoreController *)self _dataSeparationIncompatible_defaultReminderDataContainerURL];
    v7 = [(RDStoreController *)self storeURLWithName:@"local" withContainerURL:v6];
    v8 = [NSSet setWithObject:v7];
    v9 = [v8 allObjects];
    v27 = 0;
    v10 = [(RDStoreController *)self l_createOrLoadAccountStoresWithURLs:v9 persistentStoreDescriptionOptionsOverride:0 isCreatingStores:0 error:&v27];
    v11 = v27;

    if ((v10 & 1) == 0)
    {
      v12 = +[REMLogStore container];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10076CB3C();
      }

      v13 = +[NSFileManager defaultManager];
      v26 = 0;
      v14 = [v13 removeItemAtURL:v7 error:&v26];
      v15 = v26;

      if ((v14 & 1) == 0)
      {
        v16 = +[REMLogStore container];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10076CBA4();
        }
      }

      v30 = v7;
      v17 = [NSArray arrayWithObjects:&v30 count:1];
      v25 = v15;
      v18 = [(RDStoreController *)self l_createOrLoadAccountStoresWithURLs:v17 persistentStoreDescriptionOptionsOverride:0 isCreatingStores:1 error:&v25];
      v19 = v25;

      if ((v18 & 1) == 0)
      {
        v20 = +[REMLogStore container];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_10076CC0C();
        }
      }

      v21 = [(RDStoreController *)self persistentStoreCoordinator];
      v22 = [v21 persistentStoreForURL:v7];

      if (v22)
      {
        v23 = [(RDStoreController *)self l_accountStoreMap];
        [v23 setObject:v22 forKey:@"local"];

        v24 = +[REMLogStore container];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v29 = v22;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[loadDummyStoreIfNeeded] Re-created and loaded local store {store: %{public}@}", buf, 0xCu);
        }
      }

      else
      {
        v24 = +[REMLogStore container];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_10076CC74(v24);
        }
      }
    }
  }
}

- (void)l_addValidatedStoresToAccountStoreMapWithStores:(id)a3 shouldDeleteInvalidStoresImmediately:(BOOL)a4
{
  v37 = a4;
  v69 = 0;
  v70 = 0;
  v68 = 0;
  v38 = a3;
  [RDStoreController _validateAccountStores:"_validateAccountStores:outValidStoresByAccountIDs:outInvalidStores:outLocalAccountStores:" outValidStoresByAccountIDs:? outInvalidStores:? outLocalAccountStores:?];
  v45 = v70;
  v39 = v69;
  v40 = v68;
  v41 = [NSSet setWithArray:?];
  v42 = [NSMutableSet setWithArray:v39];
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = [v45 allKeys];
  v46 = [obj countByEnumeratingWithState:&v64 objects:v80 count:16];
  if (v46)
  {
    v44 = *v65;
    do
    {
      v5 = 0;
      do
      {
        if (*v65 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v64 + 1) + 8 * v5);
        v7 = objc_autoreleasePoolPush();
        v8 = [v45 objectForKey:v6];
        if (v8)
        {
          v9 = [(RDStoreController *)self l_accountStoreMap];
          v10 = [v9 objectForKey:v6];

          if (v10)
          {
            v11 = [(RDStoreController *)self newBackgroundContextWithAuthor:@"com.apple.remindd.RDStoreController.addValidatedStoresToAccountStoreMapWithStores"];
            v12 = [v41 containsObject:v8];
            v58 = 0;
            v59 = &v58;
            v60 = 0x3032000000;
            v61 = sub_1000D39EC;
            v62 = sub_1000D39FC;
            v13 = v8;
            v63 = v13;
            v52[0] = _NSConcreteStackBlock;
            v52[1] = 3221225472;
            v52[2] = sub_1000D3A04;
            v52[3] = &unk_1008DC570;
            v56 = &v58;
            v52[4] = self;
            v14 = v10;
            v53 = v14;
            v15 = v13;
            v54 = v15;
            v57 = v12;
            v16 = v11;
            v55 = v16;
            [v16 performBlockAndWait:v52];
            v17 = v14;
            v18 = v59[5];
            if (v18 == v17)
            {
              v19 = v15;

              v18 = v59[5];
              v17 = v19;
            }

            [v42 addObject:v18];
            v8 = v17;

            v20 = +[REMLogStore container];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v25 = [v8 identifier];
              v26 = [v59[5] identifier];
              v27 = v59[5];
              *buf = 138544386;
              *v73 = v6;
              *&v73[8] = 2114;
              *&v73[10] = v25;
              v74 = 2112;
              v75 = v8;
              v76 = 2114;
              v77 = v26;
              v78 = 2112;
              v79 = v27;
              _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[addValidatedStoresToAccountStoreMapWithStores] Found duplicated stores for the same account, treating one of them as invalid {accountID: %{public}@, valid: storeid=%{public}@ %@, invalid: storeid=%{public}@ %@}", buf, 0x34u);
            }

            _Block_object_dispose(&v58, 8);
          }

          v21 = +[REMLogStore container];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = [v8 URL];
            v23 = [v22 absoluteString];
            *buf = 138543618;
            *v73 = v6;
            *&v73[8] = 2112;
            *&v73[10] = v23;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[addValidatedStoresToAccountStoreMapWithStores] Adding valid store to accountStoreMap {accountID: %{public}@, store.URL: %@}", buf, 0x16u);
          }

          v24 = [(RDStoreController *)self l_accountStoreMap];
          [v24 setObject:v8 forKey:v6];
        }

        else
        {
          v8 = +[REMLogStore container];
          if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            *v73 = v6;
            _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "[addValidatedStoresToAccountStoreMapWithStores] Impossible: Unexpected nil store from validStoresByAccountIDs map {accountID: %{public}@}", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v7);
        v5 = v5 + 1;
      }

      while (v46 != v5);
      v46 = [obj countByEnumeratingWithState:&v64 objects:v80 count:16];
    }

    while (v46);
  }

  if ([v42 count] && objc_msgSend(v40, "count"))
  {
    v28 = [NSMutableSet setWithSet:v42];
    v29 = [NSSet setWithArray:v40];
    [v28 intersectSet:v29];

    v51 = 0;
    [(RDStoreController *)self _backupInvalidStores:v28 outBackUpFailedStores:&v51];
    v30 = v51;
    if ([v30 count])
    {
      [v42 minusSet:v30];
    }
  }

  if ([v42 count])
  {
    v31 = +[REMLogStore container];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v42 count];
      *buf = 67109376;
      *v73 = v37;
      *&v73[4] = 2048;
      *&v73[6] = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[addValidatedStoresToAccountStoreMapWithStores] Processing invalid stores, either to delete immediately or mark as deleted {shouldDeleteInvalidStoresImmediately: %d, count: %ld}", buf, 0x12u);
    }

    if (v37)
    {
      [(RDStoreController *)self l_removeFromPersistentStoreCoordinatorAndDeleteImmediatelyWithStores:v42];
    }

    else
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v33 = v42;
      v34 = [v33 countByEnumeratingWithState:&v47 objects:v71 count:16];
      if (v34)
      {
        v35 = *v48;
        do
        {
          for (i = 0; i != v34; i = i + 1)
          {
            if (*v48 != v35)
            {
              objc_enumerationMutation(v33);
            }

            [(RDStoreController *)self l_markAccountStoreDeletedAndDeleteData:*(*(&v47 + 1) + 8 * i) deletedObjectIDs:0 error:0];
          }

          v34 = [v33 countByEnumeratingWithState:&v47 objects:v71 count:16];
        }

        while (v34);
      }
    }
  }
}

- (void)_validateAccountStores:(id)a3 outValidStoresByAccountIDs:(id *)a4 outInvalidStores:(id *)a5 outLocalAccountStores:(id *)a6
{
  v8 = a3;
  v9 = +[NSMutableDictionary dictionary];
  v10 = +[NSMutableArray array];
  v11 = +[NSMutableArray array];
  v12 = [(RDStoreController *)self _dataSeparationIncompatible_defaultReminderDataContainerURL];
  v13 = [(RDStoreController *)self storeURLWithName:@"local" withContainerURL:v12];
  v14 = [(RDStoreController *)self newBackgroundContextWithAuthor:@"com.apple.remindd.RDStoreController.validateAccounts"];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1000D3D50;
  v36[3] = &unk_1008DC598;
  v15 = v8;
  v37 = v15;
  v33 = v13;
  v38 = v33;
  v16 = v9;
  v39 = v16;
  v17 = v14;
  v40 = v17;
  v18 = v11;
  v41 = v18;
  v19 = v10;
  v42 = v19;
  v43 = self;
  [v17 performBlockAndWait:v36];
  v20 = [v16 allKeys];
  v21 = +[REMLogStore container];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v32 = v18;
    v22 = v12;
    v23 = [v15 count];
    v24 = v17;
    v25 = v15;
    v26 = a6;
    v27 = [v20 count];
    v28 = [v19 count];
    *buf = 134218754;
    v45 = v23;
    v12 = v22;
    v18 = v32;
    v46 = 2048;
    v47 = v27;
    a6 = v26;
    v15 = v25;
    v17 = v24;
    v48 = 2048;
    v49 = v28;
    v50 = 2114;
    v51 = v20;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[_validateAccountStores] Validate results {input.count: %ld, valid.count: %ld, invalid.count: %ld, valid.accountIDs: %{public}@}", buf, 0x2Au);
  }

  if (a4)
  {
    v29 = v16;
    *a4 = v16;
  }

  if (a5)
  {
    v30 = v19;
    *a5 = v19;
  }

  if (a6)
  {
    v31 = v18;
    *a6 = v18;
  }
}

- (id)_deduplicateStore:(id)a3 withStore:(id)a4 isLocalAccountType:(BOOL)a5 managedObjectContext:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v7)
  {
    v13 = [(RDStoreController *)self _deduplicateLocalAccountStore:v10 withStore:v11 managedObjectContext:v12];
  }

  else
  {
    v14 = [v10 identifier];
    v15 = [v11 identifier];
    v16 = [v14 caseInsensitiveCompare:v15];

    if (v16 == -1)
    {
      v13 = v10;
    }

    else
    {
      v13 = v11;
    }
  }

  v17 = v13;

  return v17;
}

- (id)_deduplicateLocalAccountStore:(id)a3 withStore:(id)a4 managedObjectContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v31 = v7;
  v9 = a5;
  v10 = [NSArray arrayWithObjects:&v31 count:1];
  v11 = [REMChangeTracking lastTransactionTimestampWithManagedObjectContext:v9 affectedStores:v10];

  v30 = v8;
  v12 = [NSArray arrayWithObjects:&v30 count:1];
  v13 = [REMChangeTracking lastTransactionTimestampWithManagedObjectContext:v9 affectedStores:v12];

  v14 = v8;
  v15 = v14;
  if ([v11 compare:v13] == -1)
  {
    v15 = v7;
  }

  v16 = +[REMLogStore container];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v7 identifier];
    v18 = [v14 identifier];
    v20 = 138544386;
    v21 = v15;
    v22 = 2114;
    v23 = v17;
    v24 = 2114;
    v25 = v11;
    v26 = 2114;
    v27 = v18;
    v28 = 2114;
    v29 = v13;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[_deduplicateLocalAccountStore] {storeToDrop: %{public}@, store1: {id=%{public}@, lastEdit=%{public}@}, store2: {id=%{public}@, lastEdit=%{public}@}", &v20, 0x34u);
  }

  return v15;
}

- (void)l_removeFromPersistentStoreCoordinatorAndDeleteImmediatelyWithStores:(id)a3
{
  v4 = a3;
  if ([(RDStoreController *)self isInitializing])
  {
    v28 = +[NSMutableSet set];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v27 = v4;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v33;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v33 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v32 + 1) + 8 * i);
          v11 = [(RDStoreController *)self persistentStoreCoordinator];
          v31 = 0;
          v12 = [v11 removePersistentStore:v10 error:&v31];
          v13 = v31;

          v14 = [v10 URL];
          v15 = v14;
          if (v12)
          {
            v16 = v14 == 0;
          }

          else
          {
            v16 = 1;
          }

          if (v16)
          {
            v18 = +[REMLogStore container];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v37 = v15;
              v38 = 2114;
              v39 = v13;
              _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[removeFromPersistentStoreCoordinatorAndDeleteImmediately] Failed to remove store from PSC {storeURL: %@, error: %{public}@}", buf, 0x16u);
            }
          }

          else
          {
            [v28 addObject:v14];
            v17 = [(RDStoreController *)self accountStoreManagementDelegate];
            [v17 didRemoveInvalidPersistentStoreOnInitWithStore:v10];

            v18 = +[REMLogStore container];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v37 = v15;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[removeFromPersistentStoreCoordinatorAndDeleteImmediately] Removed store from PSC {storeURL: %@}", buf, 0xCu);
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v7);
    }

    v29 = 0;
    v30 = 0;
    v20 = [(RDStoreController *)self _removeFilesOfStoresAtURLs:v28 outRemovedFileURLs:&v30 error:&v29];
    v21 = v30;
    v22 = v29;
    v23 = +[REMLogStore container];
    v24 = v23;
    if (v20)
    {
      v4 = v27;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [v28 count];
        *buf = 134217984;
        v37 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[removeFromPersistentStoreCoordinatorAndDeleteImmediately] Deleted store files immeidately {count: %ld}", buf, 0xCu);
      }
    }

    else
    {
      v4 = v27;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10076CD40();
      }
    }

    v26 = [(RDStoreController *)self accountStoreManagementDelegate];
    [v26 didRemoveStoreFilesOnInitWithURLs:v21];
  }

  else
  {
    v28 = +[REMLogStore container];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      sub_10076CCB8(self);
    }
  }
}

- (void)l_performManualStoreMigrations:(id)a3
{
  v3 = a3;
  v4 = REMCRMergeableOrderedSet_ptr;
  v5 = +[REMLogStore container];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v68 = [v3 count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MIGRATE STORES] BEGIN {stores.count: %ld}", buf, 0xCu);
  }

  v45 = objc_alloc_init(NSMutableArray);
  obja = objc_alloc_init(RDStoreControllerMigrator_AccountIdentifierMetadata);
  v73[0] = obja;
  v51 = objc_alloc_init(RDStoreControllerMigrator_PopulateDefaultValues);
  v73[1] = v51;
  v49 = objc_alloc_init(RDStoreControllerMigrator_JSONProperties);
  v73[2] = v49;
  v46 = objc_alloc_init(RDStoreControllerMigrator_DisplayDate);
  v73[3] = v46;
  v44 = objc_alloc_init(RDStoreControllerMigrator_CKParentReminderIdentifier);
  v73[4] = v44;
  v43 = objc_alloc_init(RDStoreControllerMigrator_RemoveOrphanedLists);
  v73[5] = v43;
  v42 = objc_alloc_init(_TtC7remindd56RDStoreControllerMigrator_AccountIdentifierHashtagLabels);
  v73[6] = v42;
  v6 = objc_alloc_init(_TtC7remindd60RDStoreControllerMigrator_DiacriticsInsensitiveHashtagLabels);
  v73[7] = v6;
  v7 = objc_alloc_init(_TtC7remindd53RDStoreControllerMigrator_AutoConvertSharedInlineTags);
  v73[8] = v7;
  v8 = objc_alloc_init(_TtC7remindd58RDStoreControllerMigrator_UnsetCKDirtyFlagsInNonCKAccounts);
  v73[9] = v8;
  v9 = objc_alloc_init(_TtC7remindd47RDStoreControllerMigrator_IsPinnedByCurrentUser);
  v73[10] = v9;
  v10 = objc_alloc_init(_TtC7remindd73RDStoreControllerMigrator_MostRecentTargetTemplateIdentifierByCurrentUser);
  v73[11] = v10;
  v11 = v3;
  v12 = objc_alloc_init(_TtC7remindd53RDStoreControllerMigrator_RemoveObsoleteDueDateDeltas);
  v73[12] = v12;
  v13 = objc_alloc_init(_TtC7remindd50RDStoreControllerMigrator_ResetReminderCountsCache);
  v73[13] = v13;
  v14 = objc_alloc_init(_TtC7remindd68RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders);
  v73[14] = v14;
  v48 = [NSArray arrayWithObjects:v73 count:15];

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v11;
  v15 = [obj countByEnumeratingWithState:&v62 objects:v72 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v63;
    v47 = *v63;
    do
    {
      v18 = 0;
      v50 = v16;
      do
      {
        if (*v63 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v62 + 1) + 8 * v18);
        v20 = [v19 URL];
        v21 = [v20 lastPathComponent];
        if (v20)
        {
          v22 = [objc_opt_class() isDummyStoreURL:v20];
          v23 = [v4[51] container];
          v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
          if (v22)
          {
            if (v24)
            {
              *buf = 138412546;
              v68 = v20;
              v69 = 2114;
              v70 = v21;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "RDStoreControllerMigrator: [MIGRATE STORE] Skipping local dummy store {storeURL: %@, fileName: %{public}@}", buf, 0x16u);
            }
          }

          else
          {
            v25 = v4;
            if (v24)
            {
              *buf = 138412546;
              v68 = v20;
              v69 = 2114;
              v70 = v21;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "RDStoreControllerMigrator: [MIGRATE STORE] BEGIN {storeURL: %@, fileName: %{public}@}", buf, 0x16u);
            }

            v26 = [v19 metadata];
            v23 = [v26 mutableCopy];

            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            v27 = v48;
            v28 = [v27 countByEnumeratingWithState:&v58 objects:v66 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v59;
              do
              {
                for (i = 0; i != v29; i = i + 1)
                {
                  if (*v59 != v30)
                  {
                    objc_enumerationMutation(v27);
                  }

                  [*(*(&v58 + 1) + 8 * i) migrateStoreIfNeeded:v19 metadata:v23];
                }

                v29 = [v27 countByEnumeratingWithState:&v58 objects:v66 count:16];
              }

              while (v29);
            }

            v32 = [v19 metadata];
            v33 = [v23 isEqualToDictionary:v32];

            if ((v33 & 1) == 0)
            {
              v34 = [v23 copy];
              [v19 setMetadata:v34];

              [v45 addObject:v19];
            }

            v4 = v25;
            v35 = [v25[51] container];
            v16 = v50;
            if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v68 = v20;
              v69 = 2114;
              v70 = v21;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "RDStoreControllerMigrator: [MIGRATE STORE] END {storeURL: %@, fileName: %{public}@}", buf, 0x16u);
            }

            v17 = v47;
          }
        }

        else
        {
          v23 = [v4[51] container];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_10076CDA8(v71, v19);
          }
        }

        v18 = v18 + 1;
      }

      while (v18 != v16);
      v16 = [obj countByEnumeratingWithState:&v62 objects:v72 count:16];
    }

    while (v16);
  }

  if ([v45 count])
  {
    v36 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
    v37 = [(RDStoreController *)self persistentStoreCoordinator];
    [v36 setPersistentStoreCoordinator:v37];

    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_1000D523C;
    v55[3] = &unk_1008D9B98;
    v56 = v36;
    v57 = v45;
    v38 = v36;
    [v38 performBlockAndWait:v55];
  }

  v39 = [v4[51] container];
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = [v45 count];
    v41 = [v45 valueForKey:@"URL"];
    *buf = 134218242;
    v68 = v40;
    v69 = 2114;
    v70 = v41;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "RDStoreControllerMigrator: [MIGRATE STORES] END {updatedStoreURLs.count: %ld, updatedStoreURLs: %{public}@}", buf, 0x16u);
  }
}

- (BOOL)_removeFilesOfStoresAtURLs:(id)a3 outRemovedFileURLs:(id *)a4 error:(id *)a5
{
  v35 = a4;
  v5 = a3;
  v6 = +[NSFileManager defaultManager];
  v38 = +[NSMutableDictionary dictionary];
  v47 = +[NSMutableSet set];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v5;
  v41 = [obj countByEnumeratingWithState:&v54 objects:v65 count:16];
  v7 = 0;
  if (!v41)
  {
    v46 = 1;
    goto LABEL_43;
  }

  v46 = 1;
  v39 = *v55;
  do
  {
    v8 = 0;
    do
    {
      if (*v55 != v39)
      {
        objc_enumerationMutation(obj);
      }

      v45 = *(*(&v54 + 1) + 8 * v8);
      v9 = [v45 URLByDeletingLastPathComponent];
      v44 = v8;
      if (!v9)
      {
        v14 = +[REMLogStore container];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v60 = v45;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[_removeFilesOfStoresAtURLs] Unexpected nil store directory URL {store.url: %@}", buf, 0xCu);
        }

        v11 = 0;
        goto LABEL_14;
      }

      v10 = [v38 objectForKey:v9];
      if (v10)
      {
        v11 = v10;
        v12 = +[REMLogStore container];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = [v9 absoluteString];
          *buf = 138543618;
          v60 = v13;
          v61 = 2112;
          v62 = v45;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[_removeFilesOfStoresAtURLs] Obtained store directory content cached for {storeDir: %{public}@, store.url: %@}", buf, 0x16u);
        }

LABEL_14:
        v15 = v7;
        goto LABEL_15;
      }

      v53 = v7;
      v11 = [v6 contentsOfDirectoryAtURL:v9 includingPropertiesForKeys:&__NSArray0__struct options:0 error:&v53];
      v15 = v53;

      v28 = +[REMLogStore container];
      v29 = v28;
      if (v11)
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v30 = [v9 absoluteString];
          *buf = 138543618;
          v60 = v30;
          v61 = 2112;
          v62 = v45;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "[_removeFilesOfStoresAtURLs] Obtained store directory content from {storeDir: %{public}@, store.url: %@}", buf, 0x16u);
        }

        [v38 setObject:v11 forKey:v9];
      }

      else
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v31 = [v9 absoluteString];
          *buf = 138543874;
          v60 = v31;
          v61 = 2112;
          v62 = v45;
          v63 = 2114;
          v64 = v15;
          _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "[_removeFilesOfStoresAtURLs] Failed to get store directory content from {storeDir: %{public}@, store.url: %@, error: %{public}@}", buf, 0x20u);
        }

        v11 = 0;
      }

LABEL_15:
      v42 = v11;
      v43 = v9;
      v16 = [(RDStoreController *)self _urlsToDeleteFromFileURLs:v11 matchingStoreURL:v45];
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v17 = [v16 countByEnumeratingWithState:&v49 objects:v58 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v50;
        v7 = v15;
        do
        {
          v20 = 0;
          v21 = v7;
          do
          {
            if (*v50 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v22 = *(*(&v49 + 1) + 8 * v20);
            v48 = v21;
            v23 = [v6 removeItemAtURL:v22 error:&v48];
            v7 = v48;

            v24 = +[REMLogStore container];
            v25 = v24;
            if (v23)
            {
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                v26 = [v22 lastPathComponent];
                *buf = 138543618;
                v60 = v26;
                v61 = 2112;
                v62 = v45;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[_removeFilesOfStoresAtURLs] Removed store file {filename: %{public}@, storeUrl: %@}", buf, 0x16u);
              }

              [v47 addObject:v22];
            }

            else
            {
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                v27 = [v22 lastPathComponent];
                *buf = 138543874;
                v60 = v27;
                v61 = 2112;
                v62 = v45;
                v63 = 2114;
                v64 = v7;
                _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "[_removeFilesOfStoresAtURLs] Failed to remove store file at {filename: %{public}@, storeUrl: %@, error: %{public}@}", buf, 0x20u);
              }

              v46 = 0;
            }

            v20 = v20 + 1;
            v21 = v7;
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v49 objects:v58 count:16];
        }

        while (v18);
      }

      else
      {
        v7 = v15;
      }

      v8 = v44 + 1;
    }

    while ((v44 + 1) != v41);
    v32 = [obj countByEnumeratingWithState:&v54 objects:v65 count:16];
    v41 = v32;
  }

  while (v32);
LABEL_43:

  if (v35)
  {
    *v35 = v47;
  }

  if (a5)
  {
    v33 = v7;
    *a5 = v7;
  }

  return v46 & 1;
}

- (id)_urlsToDeleteFromFileURLs:(id)a3 matchingStoreURL:(id)a4
{
  v5 = a3;
  v6 = [a4 URLByStandardizingPath];
  v7 = [NSMutableSet setWithObject:v6];
  v8 = [v6 lastPathComponent];
  v9 = v8;
  if (v5 && v8)
  {
    v20 = v6;
    v21 = v5;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v22 + 1) + 8 * i) URLByStandardizingPath];
          v16 = [v15 lastPathComponent];
          if ([v16 hasPrefix:v9])
          {
            v17 = [v15 lastPathComponent];
            v18 = [v17 isEqualToString:v9];

            if ((v18 & 1) == 0)
            {
              [v7 addObject:v15];
            }
          }

          else
          {
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    v6 = v20;
    v5 = v21;
  }

  return v7;
}

- (void)_backupInvalidStores:(id)a3 outBackUpFailedStores:(id *)a4
{
  v7 = a3;
  v8 = +[NSFileManager defaultManager];
  +[NSMutableSet set];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000D5C08;
  v9 = v12[3] = &unk_1008DC5C0;
  v13 = v9;
  v14 = v8;
  v15 = self;
  v16 = a2;
  v10 = v8;
  [v7 enumerateObjectsUsingBlock:v12];

  if (a4)
  {
    v11 = v9;
    *a4 = v9;
  }
}

- (void)_performStagedLightweightMigrationIfNeededForAccountStoresWithURLs:(id)a3 persistentStoreDescriptionOptionsOverride:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RDStoreController *)self accountStoreManagementDelegate];
  v9 = [v8 clientNamesOfREMCDChangeTrackingStateWhichShouldNotBeResetUponPersistentHistoryTruncation];

  v10 = [_TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator createCoordinatorForMigratingReminderDataWithClientNamesOfREMCDChangeTrackingStateWhichShouldNotBeResetUponPersistentHistoryTruncation:v9];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        v17 = objc_autoreleasePoolPush();
        [(RDStoreController *)self _performStagedLightweightMigrationIfNeededForAccountStoreWithURL:v16 persistentStoreDescriptionOptionsOverride:v7 migrationCoordinator:v10, v18];
        objc_autoreleasePoolPop(v17);
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }
}

- (void)_performStagedLightweightMigrationIfNeededForAccountStoreWithURL:(id)a3 persistentStoreDescriptionOptionsOverride:(id)a4 migrationCoordinator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[NSFileManager defaultManager];
  v12 = [v8 path];
  v98 = v11;
  if ([v11 fileExistsAtPath:v12] && objc_msgSend(v10, "shouldPerformStagedLightweightMigrationForStoreAtStoreURL:", v8))
  {
    v13 = [v8 URLByDeletingLastPathComponent];
    v14 = [v13 URLByDeletingLastPathComponent];

    if (!v14)
    {
      v15 = +[REMLogStore stagedLightweightCoreDataMigration];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10076D1E0();
      }

      goto LABEL_64;
    }

    v15 = [(RDStoreController *)self databaseStagedMigrationDirectoryURLWithContainerURL:v14];
    v110 = 0;
    v16 = [v98 rem_createDirectoryIfNecessaryAtURL:v15 error:&v110];
    v91 = v110;
    if ((v16 & 1) == 0)
    {
      log = +[REMLogStore container];
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = NSStringFromSelector(a2);
        v27 = [NSString stringWithFormat:@"%@.%@", v25, v26];
        [v91 localizedDescription];
        v29 = v28 = v15;
        *buf = 138544130;
        v115 = v27;
        v116 = 2112;
        v117 = v14;
        v118 = 2112;
        v119 = v28;
        v120 = 2112;
        v121 = v29;
        _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[%{public}@] Create directory failed {reminderDataContainerURL: %@, databaseBackupDirectoryURL: %@, error: %@}", buf, 0x2Au);

        v15 = v28;
      }

      goto LABEL_63;
    }

    [v15 setRd_isExcludedFromBackup:1];
    [v8 lastPathComponent];
    log = v88 = v15;
    v17 = [v15 URLByAppendingPathComponent:?];
    v87 = v14;
    v90 = v17;
    v85 = +[REMSystemUtilities isInternalInstall];
    if (v85)
    {
      v18 = [(RDStoreController *)self databaseBackupDirectoryURLWithContainerURL:v14];
      v109 = 0;
      v19 = [v98 rem_createDirectoryIfNecessaryAtURL:v18 error:&v109];
      v20 = v109;
      if ((v19 & 1) == 0)
      {
        v21 = +[REMLogStore container];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v77 = objc_opt_class();
          v97 = NSStringFromClass(v77);
          v78 = NSStringFromSelector(a2);
          v79 = [NSString stringWithFormat:@"%@.%@", v97, v78];
          [v20 localizedDescription];
          v81 = v80 = v12;
          *buf = 138544130;
          v115 = v79;
          v116 = 2112;
          v117 = v87;
          v118 = 2112;
          v119 = v18;
          v120 = 2112;
          v121 = v81;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "[%{public}@] Create directory failed {reminderDataContainerURL: %@, databaseBackupDirectoryURL: %@, error: %@}", buf, 0x2Au);

          v12 = v80;
          v14 = v87;
        }
      }

      [v18 setRd_isExcludedFromBackup:1];
      v89 = [(RDStoreController *)self storeBackupURLWithFileName:log withContainerURL:v14];
      v22 = v90;
      v125[0] = v89;
      v125[1] = v90;
      v23 = [NSArray arrayWithObjects:v125 count:2];
    }

    else
    {
      v124 = v17;
      v23 = [NSArray arrayWithObjects:&v124 count:1];
      v89 = 0;
      v22 = v17;
    }

    v86 = v12;
    v95 = v10;
    v30 = +[REMLogStore stagedLightweightCoreDataMigration];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [v8 path];
      v32 = [NSNumber numberWithBool:v85];
      v33 = [v89 path];
      v34 = [v22 path];
      *buf = 138544386;
      v115 = log;
      v116 = 2112;
      v117 = v31;
      v118 = 2114;
      v119 = v32;
      v120 = 2112;
      v121 = v33;
      v122 = 2112;
      v123 = v34;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Creating clones of store before performing staged lightweight migration for store. {fileName: %{public}@, storeUrl: %@, isInternalInstall: %{public}@, storeBackupURL: %@, storeCloneURL: %@}", buf, 0x34u);
    }

    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v35 = v23;
    v36 = [v35 countByEnumeratingWithState:&v105 objects:v113 count:16];
    obj = v35;
    if (v36)
    {
      v37 = v36;
      v84 = v9;
      v38 = 0;
      v39 = *v106;
      v40 = v8;
      do
      {
        v41 = 0;
        do
        {
          if (*v106 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v42 = *(*(&v105 + 1) + 8 * v41);
          v43 = [v42 path];
          if ([v98 fileExistsAtPath:v43])
          {
            v44 = [NSSet alloc];
            v112 = v42;
            v45 = [NSArray arrayWithObjects:&v112 count:1];
            v46 = [v44 initWithArray:v45];
            v104 = 0;
            [(RDStoreController *)self _removeFilesOfStoresAtURLs:v46 outRemovedFileURLs:0 error:&v104];
            v47 = v104;

            v8 = v40;
            if (v47)
            {
              goto LABEL_26;
            }
          }

          v48 = objc_autoreleasePoolPush();
          v103 = 0;
          [v95 cloneStoreAtSourceStoreURL:v8 destinationStoreURL:v42 error:&v103];
          v47 = v103;
          objc_autoreleasePoolPop(v48);
          if (v47)
          {
LABEL_26:
            v49 = +[REMLogStore stagedLightweightCoreDataMigration];
            if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
            {
              v53 = [v8 path];
              v54 = [v42 path];
              *buf = 138544130;
              v115 = log;
              v116 = 2112;
              v117 = v53;
              v118 = 2112;
              v119 = v54;
              v120 = 2114;
              v121 = v47;
              _os_log_fault_impl(&_mh_execute_header, v49, OS_LOG_TYPE_FAULT, "Failed to create clone of store before performing staged lightweight migration for store. {fileName: %{public}@, storeURL: %@, destinationStoreURL: %@, error: %{public}@}", buf, 0x2Au);

              v8 = v40;
            }

            v50 = v47;
            v38 = v50;
          }

          else
          {
            v50 = +[REMLogStore stagedLightweightCoreDataMigration];
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              v51 = [v8 path];
              v52 = [v42 path];
              *buf = 138543874;
              v115 = log;
              v116 = 2112;
              v117 = v51;
              v118 = 2112;
              v119 = v52;
              _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Created clone of store before performing staged lightweight migration for store. {fileName: %{public}@, storeURL: %@, destinationStoreURL: %@}", buf, 0x20u);
            }
          }

          v41 = v41 + 1;
        }

        while (v37 != v41);
        v55 = [obj countByEnumeratingWithState:&v105 objects:v113 count:16];
        v37 = v55;
      }

      while (v55);

      v9 = v84;
      v10 = v95;
      v12 = v86;
      v15 = v88;
      if (v38)
      {
        goto LABEL_62;
      }
    }

    else
    {

      v12 = v86;
      v15 = v88;
    }

    v56 = objc_autoreleasePoolPush();
    v102 = 0;
    [v10 performStagedLightweightMigrationForStoreAtStoreURL:v90 persistentStoreDescriptionOptionsOverride:v9 postMigrationDataUpdatesTransactionAuthor:RDStagedLightweightMigrationAuthor error:&v102];
    v57 = v102;
    objc_autoreleasePoolPop(v56);
    v58 = objc_opt_new();
    v59 = +[REMLogStore stagedLightweightCoreDataMigration];
    v60 = v59;
    if (v57)
    {
      if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
      {
        v74 = [v8 path];
        [v90 path];
        v76 = v75 = v58;
        *buf = 138544130;
        v115 = log;
        v116 = 2112;
        v117 = v74;
        v118 = 2112;
        v119 = v76;
        v120 = 2114;
        v121 = v57;
        _os_log_fault_impl(&_mh_execute_header, v60, OS_LOG_TYPE_FAULT, "Failed to perform staged lightweight migration on store clone. {fileName: %{public}@, storeURL: %@, storeCloneURL: %@, error: %{public}@}", buf, 0x2Au);

        v58 = v75;
      }

      [v58 addObject:v8];
      goto LABEL_54;
    }

    v96 = v58;
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v61 = [v8 path];
      v62 = [v90 path];
      *buf = 138543874;
      v115 = log;
      v116 = 2112;
      v117 = v61;
      v118 = 2112;
      v119 = v62;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Performed staged lightweight migration on store clone. Will replace store with store clone. {fileName: %{public}@, storeURL: %@, storeCloneURL: %@}", buf, 0x20u);
    }

    v63 = objc_autoreleasePoolPush();
    v64 = [NSSet alloc];
    v111 = v8;
    v65 = [NSArray arrayWithObjects:&v111 count:1];
    v66 = [v64 initWithArray:v65];
    v101 = 0;
    [(RDStoreController *)self _removeFilesOfStoresAtURLs:v66 outRemovedFileURLs:0 error:&v101];
    v67 = v101;

    objc_autoreleasePoolPop(v63);
    if (v67)
    {
      v15 = v88;
      v58 = v96;
    }

    else
    {
      v100 = 0;
      [v10 cloneStoreAtSourceStoreURL:v90 destinationStoreURL:v8 error:&v100];
      v67 = v100;
      v58 = v96;
      if (!v67)
      {
        v15 = v88;
LABEL_52:
        [v58 addObject:v90];
LABEL_53:

LABEL_54:
        if ([v58 count])
        {
          v99 = 0;
          [(RDStoreController *)self _removeFilesOfStoresAtURLs:v58 outRemovedFileURLs:0 error:&v99];
          v69 = v99;
          v70 = +[REMLogStore stagedLightweightCoreDataMigration];
          v71 = v70;
          if (v69)
          {
            if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
            {
              sub_10076D134();
            }
          }

          else if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            [v58 valueForKey:@"lastPathComponent"];
            v73 = v72 = v58;
            *buf = 138543618;
            v115 = v73;
            v116 = 2112;
            v117 = v72;
            _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "Deleted stores. {storeFileNamesToDelete: %{public}@, storeURLsToDelete: %@}", buf, 0x16u);

            v58 = v72;
          }
        }

        v38 = 0;
LABEL_62:

        v14 = v87;
LABEL_63:

LABEL_64:
        goto LABEL_65;
      }

      v15 = v88;
    }

    v68 = +[REMLogStore stagedLightweightCoreDataMigration];
    if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
    {
      v82 = [v8 path];
      v83 = [v90 path];
      *buf = 138544130;
      v115 = log;
      v116 = 2112;
      v117 = v82;
      v118 = 2112;
      v119 = v83;
      v120 = 2114;
      v121 = v67;
      _os_log_fault_impl(&_mh_execute_header, v68, OS_LOG_TYPE_FAULT, "Failed to replace store with store clone. {fileName: %{public}@, storeURL: %@, storeCloneURL: %@, error: %{public}@}", buf, 0x2Au);

      v15 = v88;
      v58 = v96;
    }

    if (v85)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

LABEL_65:
}

- (unint64_t)_persistentStoreConnectionPoolMaxSizeWithTotalStoreCount:(unint64_t)a3
{
  if (a3 >= 5)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  v5 = +[REMLogStore container];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134218240;
    v8 = a3;
    v9 = 2048;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[_persistentStoreConnectionPoolMaxSizeWithTotalStoreCount] {totalStoreCount: %ld, result: %ld}", &v7, 0x16u);
  }

  return v4;
}

- (id)accountIdentifierForStoreID:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1000D39EC;
  v15 = sub_1000D39FC;
  v16 = 0;
  os_unfair_lock_lock(&self->_ivarLock);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000D731C;
  v8[3] = &unk_1008D9EE0;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  sub_1000D731C(v8);
  os_unfair_lock_unlock(&self->_ivarLock);

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

- (id)storeForAccountIdentifier:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1000D39EC;
  v15 = sub_1000D39FC;
  v16 = 0;
  os_unfair_lock_lock(&self->_ivarLock);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000D75E4;
  v8[3] = &unk_1008D9C38;
  v10 = &v11;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  sub_1000D75E4(v8);
  os_unfair_lock_unlock(&self->_ivarLock);

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

- (id)storesForAccountTypes:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = +[REMCDAccount fetchRequest];
  v7 = [NSPredicate predicateWithFormat:@"type IN %@", v4];
  [v6 setPredicate:v7];

  [v6 setResultType:2];
  [v6 setReturnsDistinctResults:1];
  v22 = @"identifier";
  v8 = [NSArray arrayWithObjects:&v22 count:1];
  [v6 setPropertiesToFetch:v8];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000D782C;
  v16[3] = &unk_1008DA408;
  v17 = [(RDStoreController *)self newBackgroundContextWithAuthor:@"com.apple.remindd.RDStoreController.storesForAccounts"];
  v18 = v6;
  v19 = self;
  v9 = v5;
  v20 = v9;
  v21 = v4;
  v10 = v4;
  v11 = v6;
  v12 = v17;
  [v12 performBlockAndWait:v16];
  v13 = v21;
  v14 = v9;

  return v9;
}

+ (id)persistentStoreOptions
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D7B64;
  block[3] = &unk_1008DBDD8;
  block[4] = a1;
  if (qword_100952B30 != -1)
  {
    dispatch_once(&qword_100952B30, block);
  }

  v2 = qword_100952B28;

  return v2;
}

- (BOOL)createAccountStoresWithIdentifiers:(id)a3 didAddNewStores:(BOOL *)a4 error:(id *)a5
{
  v8 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000D39EC;
  v21 = sub_1000D39FC;
  v22 = 0;
  os_unfair_lock_lock(&self->_ivarLock);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000D7E74;
  v12[3] = &unk_1008DC5E8;
  v14 = &v23;
  v12[4] = self;
  v9 = v8;
  v15 = &v17;
  v16 = a4;
  v13 = v9;
  sub_1000D7E74(v12);
  os_unfair_lock_unlock(&self->_ivarLock);

  if (a5)
  {
    *a5 = v18[5];
  }

  v10 = *(v24 + 24);
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  return v10;
}

- (BOOL)l_createAccountStoresWithIdentifiers:(id)a3 didAddNewStores:(BOOL *)a4 error:(id *)a5
{
  v8 = a3;
  v59 = a5;
  v60 = a4;
  if ([(RDStoreController *)self hasPassedBuddyAndSystemDataMigrator])
  {
    v9 = [(RDStoreController *)self appleAccountUtilities];
    v10 = [v9 unsafeUntilSystemReady_allICloudACAccounts];
  }

  else
  {
    v9 = +[REMLogStore container];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = +[NSThread callStackSymbols];
      *buf = 138543618;
      v80 = v8;
      v81 = 2112;
      v82 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[createAccountStoresWithIdentifiers] Attempt to create new store before buddy/system-data-migrator is passed, stores are ALWAYS stored into default container path {accountIdentifiers: %{public}@, callStack: %@}", buf, 0x16u);
    }
  }

  v65 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v8 count]);
  v12 = objc_alloc_init(NSMutableArray);
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v8;
  v13 = [obj countByEnumeratingWithState:&v72 objects:v85 count:16];
  v63 = v12;
  if (v13)
  {
    v14 = v13;
    v15 = *v73;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v73 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v72 + 1) + 8 * i);
        v18 = [(RDStoreController *)self l_accountStoreMap];
        v19 = [v18 objectForKey:v17];

        if (v19)
        {
          v20 = +[REMLogStore container];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v80 = v17;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[createAccountStoresWithIdentifiers] Identifier already loaded -- skipping {identifier: %{public}@}", buf, 0xCu);
          }
        }

        else
        {
          v20 = [(RDStoreController *)self _reminderDataContainerURLForAccountIdentifier:v17];
          v21 = +[NSUUID UUID];
          v22 = [v21 UUIDString];
          v23 = [(RDStoreController *)self storeURLWithName:v22 withContainerURL:v20];

          v24 = +[REMLogStore container];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543874;
            v80 = v17;
            v81 = 2112;
            v82 = v20;
            v83 = 2112;
            v84 = v23;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[createAccountStoresWithIdentifiers] Path to create account store {accountIdentifier: %{public}@, reminderDataContainerURL: %@, storeURL: %@}", buf, 0x20u);
          }

          [v65 setObject:v17 forKeyedSubscript:v23];
          v12 = v63;
          [v63 addObject:v17];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v72 objects:v85 count:16];
    }

    while (v14);
  }

  if ([v12 count])
  {
    v25 = [(RDStoreController *)self l_accountStoreMap];
    v26 = [v25 count];

    v27 = -[RDStoreController _persistentStoreConnectionPoolMaxSizeWithTotalStoreCount:](self, "_persistentStoreConnectionPoolMaxSizeWithTotalStoreCount:", v26 + [v12 count]);
    v28 = +[REMLogStore container];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [v12 count];
      *buf = 134218496;
      v80 = v29;
      v81 = 2048;
      v82 = v26;
      v83 = 2048;
      v84 = v27;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[createAccountStoresWithIdentifiers] Add persistentStores BEGIN {identifiersToAdd.count: %ld, accountStoreMap.count: %ld, connectionPoolMaxSize: %ld}", buf, 0x20u);
    }

    v77 = NSPersistentStoreConnectionPoolMaxSizeKey;
    v30 = [NSNumber numberWithUnsignedInteger:v27];
    v78 = v30;
    v31 = [NSDictionary dictionaryWithObjects:&v78 forKeys:&v77 count:1];

    v32 = [v65 allKeys];
    v71 = 0;
    v58 = v31;
    v57 = [(RDStoreController *)self l_createOrLoadAccountStoresWithURLs:v32 persistentStoreDescriptionOptionsOverride:v31 isCreatingStores:1 error:&v71];
    v56 = v71;

    v61 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v33 = [(RDStoreController *)self persistentStoreCoordinator];
    v34 = [v33 persistentStores];

    v62 = v34;
    v35 = [v34 countByEnumeratingWithState:&v67 objects:v76 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v68;
      do
      {
        v38 = 0;
        do
        {
          if (*v68 != v37)
          {
            objc_enumerationMutation(v62);
          }

          v39 = *(*(&v67 + 1) + 8 * v38);
          v40 = objc_autoreleasePoolPush();
          v41 = [v39 URL];
          if (v41)
          {
            v42 = [v65 objectForKeyedSubscript:v41];
            if (v42)
            {
              v43 = v42;
              v66 = 0;
              v44 = [(RDStoreController *)self l_setAccountIdentifier:v42 intoMetadataOfCreatedStore:v39 error:&v66];
              v45 = v66;
              if ((v44 & 1) == 0)
              {
                v46 = +[REMLogStore container];
                if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543874;
                  v80 = v43;
                  v81 = 2112;
                  v82 = v45;
                  v83 = 2112;
                  v84 = v39;
                  _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "[createAccountStoresWithIdentifiers] Failed to set account identifier into metata {identifier: %{public}@, error: %@, store: %@}", buf, 0x20u);
                }
              }

              v47 = [(RDStoreController *)self l_accountStoreMap];
              [v47 setObject:v39 forKey:v43];

              [v61 addObject:v39];
            }
          }

          objc_autoreleasePoolPop(v40);
          v38 = v38 + 1;
        }

        while (v36 != v38);
        v36 = [v62 countByEnumeratingWithState:&v67 objects:v76 count:16];
      }

      while (v36);
    }

    v48 = +[REMLogStore container];
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = [(RDStoreController *)self l_accountStoreMap];
      v50 = [v49 count];
      v51 = [v61 count];
      *buf = 134218498;
      v80 = v50;
      v81 = 2048;
      v82 = v51;
      v83 = 2114;
      v84 = v56;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "[createAccountStoresWithIdentifiers] Add persistentStores END {accountStoreMap.count: %ld, newStores.count: %ld, lastError: %{public}@}", buf, 0x20u);
    }

    [(RDStoreController *)self l_performManualStoreMigrations:v61];
    v12 = v63;
    if (v59)
    {
      v52 = v56;
      *v59 = v56;
    }

    if (v60)
    {
      *v60 = 1;
    }

    v53 = v58;
    v54 = v57;
  }

  else
  {
    v53 = +[REMLogStore container];
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "[createAccountStoresWithIdentifiers] No account is missing. No need to load missing accounts", buf, 2u);
    }

    v54 = 1;
  }

  return v54;
}

- (BOOL)l_createOrLoadAccountStoresWithURLs:(id)a3 persistentStoreDescriptionOptionsOverride:(id)a4 isCreatingStores:(BOOL)a5 error:(id *)a6
{
  v7 = a3;
  v52 = a4;
  v59 = +[NSFileManager defaultManager];
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v83 objects:v101 count:16];
  if (v8)
  {
    v9 = *v84;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v84 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [*(*(&v83 + 1) + 8 * i) URLByDeletingLastPathComponent];
        v82 = 0;
        v12 = [v59 rem_createDirectoryIfNecessaryAtURL:v11 error:&v82];
        v13 = v82;
        if ((v12 & 1) == 0)
        {
          v14 = +[REMLogStore container];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v15 = objc_opt_class();
            v16 = NSStringFromClass(v15);
            v17 = NSStringFromSelector(a2);
            v18 = [NSString stringWithFormat:@"%@.%@", v16, v17];
            v19 = [v13 localizedDescription];
            *buf = 138543874;
            *&buf[4] = v18;
            *&buf[12] = 2112;
            *&buf[14] = v11;
            *&buf[22] = 2112;
            v96 = v19;
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[%{public}@] Create directory failed {directoryURL: %@, error: %@}", buf, 0x20u);
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v83 objects:v101 count:16];
    }

    while (v8);
  }

  v20 = [NSMutableDictionary alloc];
  v21 = [objc_opt_class() persistentStoreOptions];
  aSelectora = [v20 initWithDictionary:v21];

  if (v52)
  {
    [aSelectora addEntriesFromDictionary:v52];
  }

  v50 = [[NSMutableDictionary alloc] initWithDictionary:aSelectora];
  v99 = NSPersistentHistoryTrackingEntitiesToInclude;
  v100 = &__NSArray0__struct;
  v22 = [NSDictionary dictionaryWithObjects:&v100 forKeys:&v99 count:1];
  [v50 setObject:v22 forKeyedSubscript:NSPersistentHistoryTrackingKey];

  [(RDStoreController *)self _performStagedLightweightMigrationIfNeededForAccountStoresWithURLs:obj persistentStoreDescriptionOptionsOverride:v50];
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 1;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v96 = sub_1000D39EC;
  v97 = sub_1000D39FC;
  v98 = 0;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v53 = obj;
  v23 = [v53 countByEnumeratingWithState:&v70 objects:v94 count:16];
  if (v23)
  {
    obja = *v71;
    while (2)
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v71 != obja)
        {
          objc_enumerationMutation(v53);
        }

        v25 = *(*(&v70 + 1) + 8 * j);
        v26 = [(RDStoreController *)self persistentStoreCoordinator];
        v27 = [v26 persistentStores];
        v28 = [v27 count];

        if (v28 >= 0xF)
        {
          if (!a5)
          {
            v44 = +[REMLogStore container];
            if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
            {
              sub_10076D2D8();
            }

            *(v79 + 24) = 0;
            v45 = +[REMError tooManyLoadedStoresError];
            v46 = *(*&buf[8] + 40);
            *(*&buf[8] + 40) = v45;

            goto LABEL_41;
          }

          v29 = +[REMLogStore container];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *v88 = 134218240;
            v89 = 15;
            v90 = 2048;
            v91 = v28;
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "[createOrLoadAccountStores] WARNING We are now loading more stores than the maximum limit. Allowed though because we have passed the initial load-from-disk stage. {limit: %ld, loaded.count: %ld}", v88, 0x16u);
          }
        }

        v30 = +[REMLogStore container];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [v25 lastPathComponent];
          *v88 = 138543874;
          v89 = v31;
          v90 = 2112;
          v91 = v25;
          v92 = 2114;
          v93 = v52;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[createOrLoadAccountStores] Will add store {fileName: %{public}@, storeURL: %@, optionsOverride: %{public}@}", v88, 0x20u);
        }

        v32 = [v25 lastPathComponent];
        v33 = [NSPersistentStoreDescription persistentStoreDescriptionWithURL:v25];
        [v33 setType:NSSQLiteStoreType];
        [v33 setShouldMigrateStoreAutomatically:1];
        [v33 setShouldInferMappingModelAutomatically:1];
        [v33 setConfiguration:0];
        [v33 setOption:&off_100905160 forKey:NSPersistentStoreConnectionPoolMaxSizeKey];
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v34 = aSelectora;
        v35 = [v34 countByEnumeratingWithState:&v66 objects:v87 count:16];
        if (v35)
        {
          v36 = *v67;
          do
          {
            for (k = 0; k != v35; k = k + 1)
            {
              if (*v67 != v36)
              {
                objc_enumerationMutation(v34);
              }

              v38 = *(*(&v66 + 1) + 8 * k);
              v39 = [v34 objectForKeyedSubscript:v38];
              [v33 setOption:v39 forKey:v38];
            }

            v35 = [v34 countByEnumeratingWithState:&v66 objects:v87 count:16];
          }

          while (v35);
        }

        [v33 setShouldAddStoreAsynchronously:0];
        v40 = [(RDStoreController *)self persistentStoreCoordinator];
        v60[0] = _NSConcreteStackBlock;
        v60[1] = 3221225472;
        v60[2] = sub_1000D8FD8;
        v60[3] = &unk_1008DC610;
        v41 = v33;
        v61 = v41;
        v42 = v32;
        v62 = v42;
        v63 = buf;
        v64 = &v78;
        v65 = &v74;
        [v40 addPersistentStoreWithDescription:v41 completionHandler:v60];

        if ([(RDStoreController *)self supportsCoreSpotlightIndexing])
        {
          v43 = [(RDStoreController *)self coreSpotlightDelegateManager];
          [v43 createAndAttachCoreSpotlightDelegateForStoreWithDescription:v41];
        }
      }

      v23 = [v53 countByEnumeratingWithState:&v70 objects:v94 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }
  }

LABEL_41:

  if ([(RDStoreController *)self isInitializing]&& *(v75 + 24) == 1)
  {
    [(RDStoreController *)self setHasFailedLoadingAccountStoresFromDiskDueToDiskFull:1];
  }

  if (a6)
  {
    *a6 = *(*&buf[8] + 40);
  }

  v47 = *(v79 + 24);
  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v78, 8);
  return v47 & 1;
}

- (BOOL)l_setAccountIdentifier:(id)a3 intoMetadataOfCreatedStore:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v10 = [(RDStoreController *)self newBackgroundContextWithAuthor:RDStoreControllerCreateAccountStoreAuthor];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D92EC;
  v15[3] = &unk_1008DC638;
  v11 = v9;
  v16 = v11;
  v12 = v8;
  v17 = v12;
  v19 = &v21;
  v13 = v10;
  v18 = v13;
  v20 = a5;
  [v13 performBlockAndWait:v15];
  LOBYTE(a5) = *(v22 + 24);

  _Block_object_dispose(&v21, 8);
  return a5;
}

- (void)l_activateCoreSpotlightDelegates
{
  v2 = [(RDStoreController *)self coreSpotlightDelegateManager];
  [v2 activateCoreSpotlightDelegates];
}

- (BOOL)removeAccountStoresWithIdentifiers:(id)a3 error:(id *)a4
{
  v6 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1000D39EC;
  v29 = sub_1000D39FC;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000D39EC;
  v19 = sub_1000D39FC;
  v20 = 0;
  os_unfair_lock_lock(&self->_ivarLock);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000D95DC;
  v10[3] = &unk_1008DC660;
  v12 = &v21;
  v10[4] = self;
  v7 = v6;
  v11 = v7;
  v13 = &v25;
  v14 = &v15;
  sub_1000D95DC(v10);
  os_unfair_lock_unlock(&self->_ivarLock);

  if (v26[5])
  {
    [(RDStoreController *)self _postDidRemoveAccountStoresNotificationWithDeletedObjectIDs:?];
  }

  if (a4)
  {
    *a4 = v16[5];
  }

  v8 = *(v22 + 24);
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);

  return v8;
}

- (BOOL)l_removeAccountStoresWithIdentifiers:(id)a3 deletedObjectIDs:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v27 = +[NSMutableSet set];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v25 = a4;
    v26 = a5;
    v11 = 0;
    v29 = 0;
    v30 = *v34;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v34 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        v14 = [(RDStoreController *)self l_accountStoreMap:v25];
        v15 = [v14 objectForKey:v13];

        v16 = +[REMLogStore container];
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        if (v15)
        {
          if (v17)
          {
            *buf = 138543618;
            v38 = v13;
            v39 = 2112;
            v40 = v15;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[removeAccountStoresWithIdentifiers] Going to remove store for account {accountIdentifier: %{public}@, store: %@}", buf, 0x16u);
          }

          v31 = v11;
          v32 = 0;
          v18 = [(RDStoreController *)self l_markAccountStoreDeletedAndDeleteData:v15 deletedObjectIDs:&v32 error:&v31];
          v16 = v32;
          v19 = v31;

          if (v18)
          {
            v20 = [(RDStoreController *)self l_accountStoreMap];
            [v20 removeObjectForKey:v13];

            v21 = +[REMLogStore container];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v38 = v13;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[removeAccountStoresWithIdentifiers] Successfully removed store for account {accountIdentifier: %{public}@}", buf, 0xCu);
            }
          }

          else
          {
            ++v29;
            v21 = +[REMLogStore container];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v38 = v13;
              _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "[removeAccountStoresWithIdentifiers] Failed to remove store for account {accountIdentifier: %{public}@}", buf, 0xCu);
            }
          }

          if (v16)
          {
            [v27 addObjectsFromArray:v16];
          }

          v11 = v19;
        }

        else if (v17)
        {
          *buf = 138543362;
          v38 = v13;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[removeAccountStoresWithIdentifiers] Tried to remove store for unknown account -- skipping {accountIdentifier: %{public}@}", buf, 0xCu);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v10);
    v22 = v29 == 0;
    a4 = v25;
    a5 = v26;
  }

  else
  {
    v11 = 0;
    v22 = 1;
  }

  if ([v27 count])
  {
    [(RDStoreController *)self l_invalidateAccountStorageCaches:@"removeAccountStoresWithIdentifiers"];
  }

  if (a4)
  {
    *a4 = v27;
  }

  if (a5)
  {
    v23 = v11;
    *a5 = v11;
  }

  return v22;
}

- (BOOL)l_markAccountStoreDeletedAndDeleteData:(id)a3 deletedObjectIDs:(id *)a4 error:(id *)a5
{
  v6 = a3;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = sub_1000D39EC;
  v66 = sub_1000D39FC;
  v67 = 0;
  v39 = [(RDStoreController *)self persistentStoreCoordinator];
  v41 = self;
  v7 = [(RDStoreController *)self newBackgroundContextWithAuthor:RDStoreControllerDeleteAccountStoreAuthor];
  v8 = +[REMLogStore container];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[markAccountStoreDeleted] Marking account store as deleted {store: %@}", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v77 = 0x3032000000;
  v78 = sub_1000D39EC;
  v79 = sub_1000D39FC;
  v80 = 0;
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_1000DA1E0;
  v57[3] = &unk_1008DC688;
  v45 = v6;
  v58 = v45;
  p_buf = &buf;
  v59 = v7;
  v61 = &v62;
  v43 = v59;
  [v59 performBlockAndWait:v57];
  if (*(*(&buf + 1) + 40) && (v9 = [NSUUID alloc], (v40 = [v9 initWithUUIDString:*(*(&buf + 1) + 40)]) != 0))
  {
    v36 = 0;
  }

  else
  {
    v10 = +[REMLogStore container];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10076D3D4(&buf + 8, v45, v10);
    }

    v40 = 0;
    v36 = 1;
  }

  if ([(RDStoreController *)v41 supportsCoreSpotlightIndexing])
  {
    v11 = +[REMLogStore container];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v68 = 138412290;
      v69 = v45;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[markAccountStoreDeleted] Deleting spotlight indices {store: %@}", v68, 0xCu);
    }

    v12 = [(RDStoreController *)v41 coreSpotlightDelegateManager];
    v75 = v45;
    v13 = [NSArray arrayWithObjects:&v75 count:1];
    [v12 stopCoreSpotlightDelegatesForStores:v13];

    v14 = [(RDStoreController *)v41 coreSpotlightDelegateManager];
    [v14 deleteIndicesForStore:v45];
  }

  if (a4)
  {
    v44 = +[NSMutableArray array];
  }

  else
  {
    v44 = 0;
  }

  v38 = [v39 managedObjectModel];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v15 = [v38 entities];
  v16 = [v15 countByEnumeratingWithState:&v53 objects:v74 count:16];
  if (v16)
  {
    v17 = *v54;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v54 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v53 + 1) + 8 * i);
        v20 = objc_autoreleasePoolPush();
        v21 = [v19 name];
        if (v21)
        {
          v22 = [v19 superentity];
          v23 = v22 == 0;

          if (v23)
          {
            v24 = +[REMLogStore container];
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *v68 = 138412546;
              v69 = v21;
              v70 = 2112;
              v71 = v45;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[markAccountStoreDeleted] Going to delete objects for entity {entity: %@, store: %@}", v68, 0x16u);
            }

            v47[0] = _NSConcreteStackBlock;
            v47[1] = 3221225472;
            v47[2] = sub_1000DA300;
            v47[3] = &unk_1008DA6F8;
            v48 = v21;
            v49 = v45;
            v25 = v43;
            v50 = v25;
            v52 = &v62;
            v51 = v44;
            [v25 performBlockAndWait:v47];
          }
        }

        objc_autoreleasePoolPop(v20);
      }

      v16 = [v15 countByEnumeratingWithState:&v53 objects:v74 count:16];
    }

    while (v16);
  }

  if (!v63[5])
  {
    if ((v36 & 1) == 0)
    {
      v46 = 0;
      v26 = [(RDStoreController *)v41 purgeFilesForAccountWithAccountID:v40 error:&v46];
      v27 = v46;
      if (v27)
      {
        v28 = 0;
      }

      else
      {
        v28 = v26;
      }

      if (v28)
      {
        v29 = +[REMLogStore container];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *v68 = 138543618;
          v69 = v40;
          v70 = 2112;
          v71 = v45;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[markAccountStoreDeleted] Purged account files for {accountID: %{public}@, store: %@}", v68, 0x16u);
        }
      }

      else
      {
        v29 = +[REMLogStore container];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v35 = [v63[5] localizedDescription];
          *v68 = 138412802;
          v69 = v35;
          v70 = 2114;
          v71 = v40;
          v72 = 2112;
          v73 = v45;
          _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "[markAccountStoreDeleted] Errors purging account files {error: %@, accountID: %{public}@, store: %@}", v68, 0x20u);
        }
      }
    }

    v30 = [(RDStoreController *)v41 accountStoreManagementDelegate];
    [v30 didMarkForDeletingOnNextLanuchWithPersistentStore:v45 deletedObjectIDs:v44];
  }

  if (a4)
  {
    v31 = v44;
    *a4 = v44;
  }

  v32 = v63;
  if (a5)
  {
    *a5 = v63[5];
    v32 = v63;
  }

  v33 = v32[5] == 0;

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v62, 8);

  return v33;
}

- (void)_postDidRemoveAccountStoresNotificationWithDeletedObjectIDs:(id)a3
{
  if (a3)
  {
    v7 = NSDeletedObjectIDsKey;
    v8 = a3;
    v4 = a3;
    v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    v6 = +[NSNotificationCenter defaultCenter];

    [v6 postNotificationName:@"RDStoreControllerDidRemoveAccountStoresNotification" object:self userInfo:v5];
  }
}

- (id)fileIOWorkerQueue
{
  if (qword_100952B40 != -1)
  {
    sub_10076D4DC();
  }

  v3 = qword_100952B38;

  return v3;
}

- (id)URLForAttachmentDirectory:(id)a3 accountID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RDStoreController *)self attachmentFileManager];
  v9 = [v8 URLForAttachmentDirectory:v7 accountID:v6];

  return v9;
}

- (id)URLForAttachmentFile:(id)a3 accountID:(id)a4 fileName:(id)a5 sha512Sum:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(RDStoreController *)self attachmentFileManager];
  v15 = [v14 URLForAttachmentFile:v13 accountID:v12 fileName:v11 sha512Sum:v10];

  return v15;
}

- (id)extractSha512Sum:(id)a3
{
  v4 = a3;
  v5 = [(RDStoreController *)self attachmentFileManager];
  v6 = [objc_opt_class() extractSha512Sum:v4];

  return v6;
}

- (BOOL)purgeFilesForAccountWithAccountID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(RDStoreController *)self attachmentFileManager];
  LOBYTE(a4) = [v7 purgeFilesForAccountWithAccountID:v6 error:a4];

  return a4;
}

- (id)purgeAttachmentFilesWithAttachmentIDs:(id)a3 accountID:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(RDStoreController *)self attachmentFileManager];
  v11 = [v10 purgeAttachmentFilesWithAttachmentIDs:v9 accountID:v8 error:a5];

  return v11;
}

- (id)purgeAttachmentFilesWithSha512SumsAndExtensions:(id)a3 accountID:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(RDStoreController *)self attachmentFileManager];
  v11 = [v10 purgeAttachmentFilesWithSha512SumsAndExtensions:v9 accountID:v8 error:a5];

  return v11;
}

- (id)attachmentIDsFromAttachmentDirectoryWithAccountID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(RDStoreController *)self attachmentFileManager];
  v8 = [v7 attachmentIDsFromAttachmentDirectoryWithAccountID:v6 error:a4];

  return v8;
}

- (void)reindexAllSearchableItems
{
  if ([(RDStoreController *)self supportsCoreSpotlightIndexing])
  {
    os_unfair_lock_lock(&self->_ivarLock);
    v3 = [(RDStoreController *)self coreSpotlightDelegateManager];
    [v3 reindexAllSearchableItems];

    os_unfair_lock_unlock(&self->_ivarLock);
  }
}

- (void)reindexSearchableItemsWithIdentifiers:(id)a3
{
  v4 = a3;
  if ([(RDStoreController *)self supportsCoreSpotlightIndexing])
  {
    os_unfair_lock_lock(&self->_ivarLock);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000DADAC;
    v5[3] = &unk_1008D9B98;
    v5[4] = self;
    v6 = v4;
    sub_1000DADAC(v5);
    os_unfair_lock_unlock(&self->_ivarLock);
  }
}

- (BOOL)invalidateStoreConnectionsWithError:(id *)a3
{
  v5 = [(RDStoreController *)self isolated];
  if (v5)
  {
    os_unfair_lock_lock(&self->_ivarLock);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000DAE9C;
    v7[3] = &unk_1008DB318;
    v7[4] = self;
    v7[5] = a3;
    sub_1000DAE9C(v7);
    os_unfair_lock_unlock(&self->_ivarLock);
    LOBYTE(v5) = a3 == 0;
  }

  return v5;
}

- (id)newBackgroundContextWithAuthor:(id)a3 enableQueryGenerationToken:(BOOL)a4
{
  v6 = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000DAFEC;
  v12[3] = &unk_1008DC6D0;
  v7 = [[RDStoreControllerManagedObjectContext alloc] initWithConcurrencyType:1];
  v13 = v7;
  v14 = self;
  v15 = v6;
  v16 = a4;
  v8 = v6;
  [(RDStoreControllerManagedObjectContext *)v7 performBlockAndWait:v12];
  v9 = v15;
  v10 = v7;

  return v10;
}

- (void)requestFreeSpaceToLoadAccountStoresWithQueue:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RDStoreController *)self _dataSeparationIncompatible_defaultReminderDataContainerURL];
  v9 = [(RDStoreController *)self databaseDirectoryURLWithContainerURL:v8];
  v10 = +[NSFileManager defaultManager];
  v64 = NSURLFileSizeKey;
  v11 = [NSArray arrayWithObjects:&v64 count:1];
  v56 = 0;
  v12 = [v10 contentsOfDirectoryAtURL:v9 includingPropertiesForKeys:v11 options:1 error:&v56];
  v13 = v56;

  v14 = +[REMLogStore container];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    [v9 absoluteString];
    v16 = v15 = v6;
    v17 = [v12 count];
    *buf = 138478339;
    v59 = v16;
    v60 = 2048;
    v61 = v17;
    v62 = 2112;
    v63 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[RDStoreController requestFreeSpaceToLoadAccountStores] Files from URL {url: %{private}@, count: %ld, error: %@}", buf, 0x20u);

    v6 = v15;
  }

  if (v12)
  {
    v18 = [objc_opt_class() storeFileNameWithStoreName:@"local"];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v19 = v12;
    v20 = [v19 countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v20)
    {
      v21 = v20;
      v40 = v12;
      v41 = v10;
      v42 = v9;
      v43 = v8;
      v44 = v7;
      v45 = v6;
      v47 = 0;
      v22 = *v53;
      v46 = v18;
      do
      {
        v23 = 0;
        do
        {
          if (*v53 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v52 + 1) + 8 * v23);
          v25 = [v24 pathExtension];
          v26 = [v25 lowercaseString];
          v27 = [v26 isEqualToString:@"sqlite"];

          if (v27)
          {
            v28 = [v24 lastPathComponent];
            v29 = v28;
            if (v28 && [v28 hasPrefix:@"Data-"] && (objc_msgSend(v29, "isEqualToString:", v18) & 1) == 0)
            {
              v50 = 0;
              v51 = 0;
              v31 = [v24 getResourceValue:&v51 forKey:NSURLFileSizeKey error:&v50];
              v32 = v51;
              v30 = v50;

              if (!v31 || !v32)
              {
                v33 = +[REMLogStore container];
                if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                {
                  v36 = [v24 lastPathComponent];
                  *buf = 138543618;
                  v59 = v36;
                  v60 = 2114;
                  v61 = v30;
                  _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "[RDStoreController requestFreeSpaceToLoadAccountStores] Failed to get file size {file: %{public}@, error: %{public}@}", buf, 0x16u);
                }
              }

              v34 = +[REMLogStore container];
              if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
              {
                v35 = [v24 lastPathComponent];
                *buf = 138412546;
                v59 = v35;
                v60 = 2112;
                v61 = v32;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "[RDStoreController requestFreeSpaceToLoadAccountStores] File size is {file: %@, size: %@}", buf, 0x16u);
              }

              v47 += [v32 unsignedIntValue];
              v18 = v46;
            }

            else
            {
              v30 = v13;
            }

            v13 = v30;
          }

          v23 = v23 + 1;
        }

        while (v21 != v23);
        v37 = [v19 countByEnumeratingWithState:&v52 objects:v57 count:16];
        v21 = v37;
      }

      while (v37);

      if (v47)
      {
        v38 = +[REMLogStore container];
        v7 = v44;
        v6 = v45;
        v9 = v42;
        v8 = v43;
        v12 = v40;
        v10 = v41;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v59 = v47 << (v47 < 0x7FFFFFFFFFFFFFFFLL);
          v60 = 2048;
          v61 = 2;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[RDStoreController requestFreeSpaceToLoadAccountStores] Trying to request free space (multiplied) {space: %llu, multiplier: %llu}", buf, 0x16u);
        }

        [RDDiskSpaceUtils requestFreeSpace:v47 << (v47 < 0x7FFFFFFFFFFFFFFFLL) atPath:v42 effortLevel:1 queue:v45 completionBlock:v44];
        goto LABEL_35;
      }

      v7 = v44;
      v6 = v45;
      v9 = v42;
      v8 = v43;
      v12 = v40;
      v10 = v41;
    }

    else
    {
    }
  }

  v39 = +[REMLogStore container];
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "[RDStoreController requestFreeSpaceToLoadAccountStores] Aborted requesting free space, dispatch to call completion directly", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DB718;
  block[3] = &unk_1008DA020;
  v49 = v7;
  dispatch_async(v6, block);

LABEL_35:
}

- (BOOL)notificationContainsInternalChangesOnly:(id)a3
{
  v4 = a3;
  v5 = [(RDStoreController *)self cloudContext];
  v6 = [v5 notificationContainsCloudContextInternalChangesOnly:v4];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = [(RDStoreController *)self notificationContainsChangeTrackingChangesOnly:v4];
  }

  return v7;
}

- (BOOL)notificationContainsChangeTrackingChangesOnly:(id)a3
{
  v3 = NSManagedObjectContextTransactionAuthorKey;
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:v3];

  objc_opt_class();
  v6 = REMDynamicCast();
  v7 = v6;
  if (v6)
  {
    v8 = [v6 isEqualToString:REMNSPersistentHistoryTrackingAuthor];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)startObservingCloudKitNetworkActivityWithObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    v5 = [(RDStoreController *)self cloudKitNetworkActivityObservers];
    objc_sync_enter(v5);
    v6 = [(RDStoreController *)self cloudKitNetworkActivityObservers];
    [v6 addObject:v9];

    objc_sync_exit(v5);
    v7 = [(RDStoreController *)self cloudContext];
    v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 hasPendingOperations]);

    [(RDStoreController *)self _notifyCloudKitNetworkActivityObservers:v8];
    v4 = v9;
  }
}

- (void)_cleanUpActivityObservers:(id)a3
{
  v3 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 copy];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([v9 isObsolete])
        {
          [v3 removeObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_notifyCloudKitNetworkActivityObservers:(id)a3
{
  v4 = a3;
  v5 = [(RDStoreController *)self cloudKitNetworkActivityObservers];
  objc_sync_enter(v5);
  v6 = [(RDStoreController *)self cloudKitNetworkActivityObservers];
  [(RDStoreController *)self _cleanUpActivityObservers:v6];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = [(RDStoreController *)self cloudKitNetworkActivityObservers];
  v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v11 + 1) + 8 * v10) updateNetworkActivityWithValue:v4];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  objc_sync_exit(v5);
}

- (void)cloudContextHasPendingOperationsDidChange:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 userInfo];

  v6 = [v5 objectForKeyedSubscript:@"operationCount"];
  v7 = REMDynamicCast();
  v8 = v7;
  v9 = &off_100905178;
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  [(RDStoreController *)self _notifyCloudKitNetworkActivityObservers:v10];
}

- (void)startObservingAutoCategorizationActivityWithObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = [(RDStoreController *)self autoCategorizationActivityObservers];
    objc_sync_enter(v5);
    v6 = [(RDStoreController *)self autoCategorizationActivityObservers];
    [v6 addObject:v7];

    objc_sync_exit(v5);
    [(RDStoreController *)self notifyAutoCategorizationActivityObservers];
    v4 = v7;
  }
}

- (void)autoCategorizationOperationDidBeginNotification:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 userInfo];

  v6 = [v5 objectForKeyedSubscript:@"RDAutoCategorizationActivityUserInfoKey"];
  v7 = REMDynamicCast();

  if (v7)
  {
    os_unfair_lock_lock(&self->_ivarLock);
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_1000DBE48;
    v11 = &unk_1008D9B98;
    v12 = self;
    v13 = v7;
    sub_1000DBE48(&v8);
    os_unfair_lock_unlock(&self->_ivarLock);

    [(RDStoreController *)self notifyAutoCategorizationActivityObservers:v8];
  }
}

- (void)autoCategorizationOperationDidEndNotification:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 userInfo];

  v6 = [v5 objectForKeyedSubscript:@"RDAutoCategorizationActivityUserInfoKey"];
  v7 = REMDynamicCast();

  if (v7)
  {
    os_unfair_lock_lock(&self->_ivarLock);
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_1000DBFD0;
    v11 = &unk_1008D9B98;
    v12 = self;
    v13 = v7;
    sub_1000DBFD0(&v8);
    os_unfair_lock_unlock(&self->_ivarLock);

    [(RDStoreController *)self notifyAutoCategorizationActivityObservers:v8];
  }
}

- (void)notifyAutoCategorizationActivityObservers
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1000D39EC;
  v26 = sub_1000D39FC;
  v27 = 0;
  os_unfair_lock_lock(&self->_ivarLock);
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_1000DC27C;
  v19 = &unk_1008D9A28;
  v20 = self;
  v21 = &v22;
  v3 = [(RDStoreController *)self l_currentAutoCategorizationActivity];
  v4 = v21[1];
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  os_unfair_lock_unlock(&self->_ivarLock);
  v6 = [(RDStoreController *)self autoCategorizationActivityObservers];
  objc_sync_enter(v6);
  v7 = [(RDStoreController *)self autoCategorizationActivityObservers];
  [(RDStoreController *)self _cleanUpActivityObservers:v7];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v8 = [(RDStoreController *)self autoCategorizationActivityObservers];
  v9 = [v8 countByEnumeratingWithState:&v12 objects:v28 count:16];
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v12 + 1) + 8 * v11) updateAutoCategorizationActivity:v23[5]];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v12 objects:v28 count:16];
    }

    while (v9);
  }

  objc_sync_exit(v6);
  _Block_object_dispose(&v22, 8);
}

- (void)cloudContext:(id)a3 didFetchUserRecord:(id)a4 accountID:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = +[REMLog cloudkit];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "didFetchUserRecord: %@", buf, 0xCu);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000DC434;
  v13[3] = &unk_1008D9C10;
  v14 = v7;
  v15 = v8;
  v16 = [(RDStoreController *)self newBackgroundContextWithAuthor:@"com.apple.RDStoreController.ckFetchUser"];
  v10 = v16;
  v11 = v8;
  v12 = v7;
  [v10 performBlockAndWait:v13];
}

- (void)cloudContext:(id)a3 receivedZoneNotFound:(id)a4 accountID:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = +[REMLog cloudkit];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 zoneName];
    *buf = 138543618;
    v18 = v10;
    v19 = 2114;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received an error that a zone (%{public}@) wasn't found. Re-uploading everything for that zone for accountID %{public}@.", buf, 0x16u);
  }

  if (v8)
  {
    v11 = [(RDStoreController *)self newBackgroundContextWithAuthor:@"com.apple.RDStoreController.ckZoneNotFound"];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000DC690;
    v13[3] = &unk_1008D9C10;
    v14 = v7;
    v15 = v8;
    v16 = v11;
    v12 = v11;
    [v12 performBlock:v13];
  }

  else
  {
    v12 = +[REMLog cloudkit];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10076D564(v7);
    }
  }
}

- (void)cloudContext:(id)a3 sharedZoneWasDeleted:(id)a4 accountID:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = +[REMLog cloudkit];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 ic_loggingDescription];
    *buf = 138543618;
    v19 = v8;
    v20 = 2114;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Shared zone was deleted for account ID %{public}@: %{public}@", buf, 0x16u);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000DC9B4;
  v14[3] = &unk_1008D9C10;
  v15 = v7;
  v16 = [(RDStoreController *)self newBackgroundContextWithAuthor:@"com.apple.RDStoreController.ckSharedZoneWasDeleted"];
  v17 = v8;
  v11 = v8;
  v12 = v16;
  v13 = v7;
  [v12 performBlockAndWait:v14];
}

- (void)cloudContext:(id)a3 userDidDeleteRecordZoneWithID:(id)a4 accountID:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = +[REMLog cloudkit];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v19 = v7;
    v20 = 2114;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "userDidDeleteRecordZoneWithID: %{public}@, accountID:%{public}@", buf, 0x16u);
  }

  if (!v8)
  {
    v13 = +[REMLog cloudkit];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10076D5F0(v7);
    }

    goto LABEL_8;
  }

  v10 = +[ICCloudContext appZoneID];
  v11 = [v7 isEqual:v10];

  if (v11)
  {
    v12 = [(RDStoreController *)self newBackgroundContextWithAuthor:@"com.apple.RDStoreController.ckDeleteZone"];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000DCE68;
    v14[3] = &unk_1008D9C10;
    v15 = v8;
    v16 = v12;
    v17 = self;
    v13 = v12;
    [v13 performBlockAndWait:v14];

LABEL_8:
  }
}

- (BOOL)deleteCloudObjectIfFullyPushed:(id)a3
{
  v4 = a3;
  if ([v4 isDeleted])
  {
LABEL_14:
    v12 = 1;
    goto LABEL_20;
  }

  if ([v4 hasSuccessfullyPushedLatestVersionToCloud] & 1) != 0 || (objc_msgSend(v4, "markedForDeletion"))
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [v4 objectsToBeDeletedBeforeThisObject];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          v11 = REMDynamicCast();
          if (v11 && ![(RDStoreController *)self deleteCloudObjectIfFullyPushed:v11])
          {

            goto LABEL_19;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    [v4 deleteFromLocalDatabase];
    goto LABEL_14;
  }

  v13 = +[REMLog cloudkit];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_10076D6E4(v4);
  }

LABEL_19:
  v12 = 0;
LABEL_20:

  return v12;
}

- (void)didFailPushingExceededStorageQuotaForContext:(id)a3 accountID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[REMLog cloudkit];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "didFailPushingExceededStorageQuotaForContext: %@, accountID: %{public}@", &v8, 0x16u);
  }
}

- (void)managedObjectContextDidSave:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:NSDeletedObjectIDsKey];

  v7 = [v4 userInfo];
  v63 = [v7 objectForKeyedSubscript:NSInsertedObjectIDsKey];

  v8 = [v4 userInfo];
  v62 = [v8 objectForKeyedSubscript:NSUpdatedObjectIDsKey];

  v9 = +[REMLogStore write];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);

  if (v10)
  {
    v59 = v4;
    v60 = self;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v58 = v6;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v84 objects:v95 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v85;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v85 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v84 + 1) + 8 * i);
          v17 = +[REMLogStore write];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v94 = v16;
            _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Deleted object {managedObjectID: %@}", buf, 0xCu);
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v84 objects:v95 count:16];
      }

      while (v13);
    }

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v18 = v63;
    v19 = [v18 countByEnumeratingWithState:&v80 objects:v92 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v81;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v81 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v80 + 1) + 8 * j);
          v24 = +[REMLogStore write];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v94 = v23;
            _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Inserted object {managedObjectID: %@}", buf, 0xCu);
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v80 objects:v92 count:16];
      }

      while (v20);
    }

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v25 = v62;
    v26 = [v25 countByEnumeratingWithState:&v76 objects:v91 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v77;
      do
      {
        for (k = 0; k != v27; k = k + 1)
        {
          if (*v77 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v76 + 1) + 8 * k);
          v31 = +[REMLogStore write];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v94 = v30;
            _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "Updated object {managedObjectID: %@}", buf, 0xCu);
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v76 objects:v91 count:16];
      }

      while (v27);
    }

    v4 = v59;
    self = v60;
    v6 = v58;
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v32 = v6;
  v33 = [v32 countByEnumeratingWithState:&v72 objects:v90 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v73;
    while (2)
    {
      for (m = 0; m != v34; m = m + 1)
      {
        if (*v73 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = [*(*(&v72 + 1) + 8 * m) entity];
        v38 = +[(REMCDObject *)REMCDAccount];
        v39 = [v37 isEqual:v38];

        if (v39)
        {
          v40 = v32;
          goto LABEL_57;
        }
      }

      v34 = [v32 countByEnumeratingWithState:&v72 objects:v90 count:16];
      if (v34)
      {
        continue;
      }

      break;
    }
  }

  v61 = self;

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v40 = v63;
  v41 = [v40 countByEnumeratingWithState:&v68 objects:v89 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v69;
LABEL_40:
    v44 = 0;
    while (1)
    {
      if (*v69 != v43)
      {
        objc_enumerationMutation(v40);
      }

      v45 = [*(*(&v68 + 1) + 8 * v44) entity];
      v46 = +[(REMCDObject *)REMCDAccount];
      v47 = [v45 isEqual:v46];

      if (v47)
      {
        break;
      }

      if (v42 == ++v44)
      {
        v42 = [v40 countByEnumeratingWithState:&v68 objects:v89 count:16];
        if (v42)
        {
          goto LABEL_40;
        }

        goto LABEL_46;
      }
    }
  }

  else
  {
LABEL_46:

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v40 = v62;
    v48 = [v40 countByEnumeratingWithState:&v64 objects:v88 count:16];
    if (!v48)
    {
      goto LABEL_58;
    }

    v49 = v48;
    v50 = *v65;
LABEL_48:
    v51 = 0;
    while (1)
    {
      if (*v65 != v50)
      {
        objc_enumerationMutation(v40);
      }

      v52 = [*(*(&v64 + 1) + 8 * v51) entity];
      v53 = +[(REMCDObject *)REMCDAccount];
      v54 = [v52 isEqual:v53];

      if (v54)
      {
        break;
      }

      if (v49 == ++v51)
      {
        v49 = [v40 countByEnumeratingWithState:&v64 objects:v88 count:16];
        if (v49)
        {
          goto LABEL_48;
        }

        goto LABEL_58;
      }
    }
  }

  self = v61;
LABEL_57:

  os_unfair_lock_lock(&self->_ivarLock);
  v55 = [(RDStoreController *)self l_accountStorageCacheByObjectIDs];
  v56 = [v55 keyEnumerator];
  v57 = [v56 allObjects];
  v40 = [NSString stringWithFormat:@"managedObjectContextDidSave(REMCDAccount-changed) {self: %p, keys: %@}", self, v57];

  [(RDStoreController *)self l_invalidateAccountStorageCaches:v40];
  os_unfair_lock_unlock(&self->_ivarLock);
LABEL_58:
}

- (id)observePrimaryCloudKitAccountPersonIDSaltChangesOnQueue:(id)a3 successHandler:(id)a4 errorHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(RDStoreController *)self cloudContext];
  v12 = [v11 hasPassedBuddy];

  v13 = [(RDStoreController *)self cloudContext];
  v14 = [v13 isSystemAvailableForSyncing];

  if (v12 & v14)
  {
    v15 = [(RDStoreController *)self newBackgroundContextWithAuthor:@"com.apple.remindd.RDStoreController.observePrimaryCloudKitAccountPersonIDSaltChanges"];
    v16 = [(RDStoreController *)self appleAccountUtilities];
    *v50 = 0;
    v51 = v50;
    v52 = 0x3032000000;
    v53 = sub_1000D39EC;
    v54 = sub_1000D39FC;
    v55 = 0;
    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = sub_1000D39EC;
    v48 = sub_1000D39FC;
    v49 = 0;
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000DDECC;
    v34[3] = &unk_1008DAA08;
    v17 = v15;
    v35 = v17;
    v18 = v16;
    v36 = v18;
    v37 = v50;
    v38 = &v44;
    v39 = &v40;
    [v17 performBlockAndWait:v34];
    if (*(v51 + 5) && *(v41 + 24) != 1)
    {
      v23 = [REMAccount objectIDWithUUID:?];
      v24 = [RDAccountPersonIDSaltObserver alloc];
      v25 = [(RDAccountPersonIDSaltObserver *)v24 initWithAccountObjectID:v23 accountType:_auto_REMAccountTypeForPrimaryCloudKit() initialSaltValue:v45[5] callbackQueue:v8 successHandler:v9 errorHandler:v10];
      v22 = v25;
      if (!v25 || ([(RDAccountPersonIDSaltObserver *)v25 uuid], v26 = objc_claimAutoreleasedReturnValue(), v27 = v26 == 0, v26, v27))
      {
        v29 = +[REMLog cloudkit];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_10076D7B0();
        }
      }

      else
      {
        v28 = [(RDStoreController *)self accountPropertiesNotifier];
        [v28 observeWithObserver:v22];

        v29 = +[REMLog cloudkit];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = [(RDAccountPersonIDSaltObserver *)v22 uuid];
          *buf = 138412546;
          v57 = v30;
          v58 = 2112;
          v59 = v23;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Created an RDAccountPersonIDSaltObserver and added to accountPropertiesNotifier {observerID: %@, accountObjID: %@}", buf, 0x16u);
        }
      }
    }

    else
    {
      v19 = +[REMLog cloudkit];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(v51 + 5);
        v21 = *(v41 + 24);
        *buf = 138543618;
        v57 = v20;
        v58 = 1024;
        LODWORD(v59) = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Not creating an RDAccountPersonIDSaltObserver because primary cloudkit account is not available. Notifying caller explicitly to handle RDAccountPersonIDSaltObserver.AccountAbsentError... {accountID: %{public}@, inactive: %d}", buf, 0x12u);
      }

      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_1000DDF70;
      v32[3] = &unk_1008DA020;
      v33 = v10;
      dispatch_async(v8, v32);
      v22 = 0;
      v23 = v33;
    }

    _Block_object_dispose(&v40, 8);
    _Block_object_dispose(&v44, 8);

    _Block_object_dispose(v50, 8);
  }

  else
  {
    v17 = +[REMLog cloudkit];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Not creating an RDAccountPersonIDSaltObserver because the system is not ready to retrieve the primary cloudkit account", v50, 2u);
    }

    v22 = 0;
  }

  return v22;
}

- (void)unobservePrimaryCloudKitAccountPersonIDSaltChanges:(id)a3
{
  v4 = a3;
  v5 = [(RDStoreController *)self accountPropertiesNotifier];
  [v5 unobserveWithObserver:v4];

  v6 = +[REMLog cloudkit];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v4 uuid];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Removed RDAccountPersonIDSaltObserver from accountPropertiesNotifier {observerID: %@}", &v8, 0xCu);
  }
}

+ (id)entityNamesToIncludeFromTracking
{
  if (qword_100952B50 != -1)
  {
    sub_10076D818();
  }

  v3 = qword_100952B48;

  return v3;
}

- (void)_populateCountForEntity:(Class)a3 withinCDAccount:(id)a4 statsAccumulator:(id)a5 errorAccumulator:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = NSStringFromClass(a3);
  v13 = [NSPredicate predicateWithFormat:@"%K == %@", @"account", v9];
  v14 = [NSFetchRequest fetchRequestWithEntityName:v12];
  [v14 setPredicate:v13];
  [v14 setResultType:4];
  v15 = [v9 managedObjectContext];
  v23 = 0;
  v16 = [v15 countForFetchRequest:v14 error:&v23];
  v17 = v23;

  if (v17)
  {
    v18 = [v17 debugDescription];
    [v11 addObject:v18];
LABEL_5:

    goto LABEL_6;
  }

  if (v16)
  {
    v18 = [NSNumber numberWithUnsignedInteger:v16];
    v21 = [NSString stringWithFormat:@"%@", v18];
    v22 = [v9 identifier];
    v19 = [v22 UUIDString];
    v20 = [NSString stringWithFormat:@"account[%@].%@.count", v19, v12];
    [v10 setObject:v21 forKeyedSubscript:v20];

    goto LABEL_5;
  }

LABEL_6:
}

- (BOOL)supportsAccountUtils
{
  if ([(RDStoreController *)self isolated])
  {
    return 0;
  }

  else
  {
    return ![(RDStoreController *)self isPPTStore];
  }
}

- (BOOL)supportsAlarmEngine
{
  if ([(RDStoreController *)self isolated])
  {
    return 0;
  }

  else
  {
    return ![(RDStoreController *)self isPPTStore];
  }
}

- (BOOL)supportsTimelineEngine
{
  if ([(RDStoreController *)self isolated])
  {
    return 0;
  }

  else
  {
    return ![(RDStoreController *)self isPPTStore];
  }
}

- (BOOL)supportsAssignmentNotificationEngine
{
  if ([(RDStoreController *)self isolated])
  {
    return 0;
  }

  else
  {
    return ![(RDStoreController *)self isPPTStore];
  }
}

- (BOOL)supportsHashtagLabelUpdater
{
  if ([(RDStoreController *)self isolated])
  {
    return 0;
  }

  else
  {
    return ![(RDStoreController *)self isPPTStore];
  }
}

- (BOOL)supportsStalePinnedListsEventHandler
{
  if ([(RDStoreController *)self isolated])
  {
    return 0;
  }

  else
  {
    return ![(RDStoreController *)self isPPTStore];
  }
}

- (BOOL)supportsTemplateOperation
{
  if ([(RDStoreController *)self isolated])
  {
    return 0;
  }

  else
  {
    return ![(RDStoreController *)self isPPTStore];
  }
}

- (BOOL)supportsGroceryOperation
{
  if ([(RDStoreController *)self isolated])
  {
    return 0;
  }

  else
  {
    return ![(RDStoreController *)self isPPTStore];
  }
}

- (BOOL)supportsAutoCategorizationOperation
{
  if ([(RDStoreController *)self isolated])
  {
    return 0;
  }

  else
  {
    return ![(RDStoreController *)self isPPTStore];
  }
}

- (BOOL)supportsCloudSchemaCatchUpSyncBackgroundScheduling
{
  v3 = [(RDStoreController *)self daemonUserDefaults];
  v4 = [v3 debugForceSupportCloudKitSchemaCatchUpSyncBackgroundScheduling];

  if (v4)
  {
    return 1;
  }

  return [(RDStoreController *)self supportsSyncingToCloudKit];
}

- (BOOL)supportsApplicationShortcuts
{
  if ([(RDStoreController *)self isolated])
  {
    return 0;
  }

  else
  {
    return ![(RDStoreController *)self isPPTStore];
  }
}

- (BOOL)supportsSuggestedAttributes
{
  if (self->_supportsSuggestedAttributes)
  {
    return ![(RDStoreController *)self isPPTStore:v2];
  }

  else
  {
    return 0;
  }
}

- (BOOL)supportsSyncActivityNotificationEngine
{
  if ([(RDStoreController *)self isolated])
  {
    return 0;
  }

  else
  {
    return ![(RDStoreController *)self isPPTStore];
  }
}

- (BOOL)supportsSharedInlineTagAutoConvertEngine
{
  if ([(RDStoreController *)self isolated])
  {
    return 0;
  }

  else
  {
    return ![(RDStoreController *)self isPPTStore];
  }
}

- (RDStoreControllerAccountStoreManagementDelegate)accountStoreManagementDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_accountStoreManagementDelegate);

  return WeakRetained;
}

- (void)updateInMemoryPrimaryActiveCKAccountREMObjectIDIfNecessary:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_ivarLock);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000DEDE8;
  v6[3] = &unk_1008D9B98;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  sub_1000DEDE8(v6);
  os_unfair_lock_unlock(&self->_ivarLock);
}

- (id)accountStoragesForAccountObjectIDs:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1000D39EC;
  v15 = sub_1000D39FC;
  v16 = 0;
  os_unfair_lock_lock(&self->_ivarLock);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000DEFA0;
  v8[3] = &unk_1008D9C38;
  v10 = &v11;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  sub_1000DEFA0(v8);
  os_unfair_lock_unlock(&self->_ivarLock);

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

- (void)setAccountStorages:(id)a3 forAccountObjectIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_ivarLock);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000DF0CC;
  v10[3] = &unk_1008D9C10;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  sub_1000DF0CC(v10);
  os_unfair_lock_unlock(&self->_ivarLock);
}

- (id)accountStoragesForAccountExternalIdentifiers:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000D39EC;
  v16 = sub_1000D39FC;
  v17 = 0;
  os_unfair_lock_lock(&self->_ivarLock);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000DF21C;
  v8[3] = &unk_1008D9EE0;
  v5 = v4;
  v9 = v5;
  v10 = self;
  v11 = &v12;
  sub_1000DF21C(v8);
  os_unfair_lock_unlock(&self->_ivarLock);

  v6 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v6;
}

- (void)setAccountStorages:(id)a3 forAccountExternalIdentifiers:(id)a4
{
  v5 = a3;
  os_unfair_lock_lock(&self->_ivarLock);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DF43C;
  v7[3] = &unk_1008D9B98;
  v8 = v5;
  v9 = self;
  v6 = v5;
  sub_1000DF43C(v7);
  os_unfair_lock_unlock(&self->_ivarLock);
}

- (id)accountStoragesForAllGenericAccounts
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000D39EC;
  v10 = sub_1000D39FC;
  v11 = 0;
  os_unfair_lock_lock(&self->_ivarLock);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000DF6D8;
  v5[3] = &unk_1008DBA38;
  v5[4] = self;
  v5[5] = &v6;
  sub_1000DF6D8(v5);
  os_unfair_lock_unlock(&self->_ivarLock);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setAccountStoragesForAllGenericAccountsWithStorages:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_ivarLock);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000DF99C;
  v6[3] = &unk_1008D9B98;
  v7 = v4;
  v8 = self;
  v5 = v4;
  sub_1000DF99C(v6);
  os_unfair_lock_unlock(&self->_ivarLock);
}

- (id)l_accountStoragesForAccountObjectIDs:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(RDStoreController *)self l_accountStorageCacheByObjectIDs];
  v7 = [v6 keyEnumerator];

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
        if ([v4 containsObject:v12])
        {
          v13 = [(RDStoreController *)self l_accountStorageCacheByObjectIDs];
          v14 = [v13 objectForKey:v12];

          [v5 addObject:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v5;
}

- (void)l_setAccountStorages:(id)a3 forAccountObjectIDs:(id)a4
{
  v13 = a3;
  v6 = a4;
  if ([v6 count])
  {
    v7 = 0;
    do
    {
      v8 = [v6 objectAtIndex:v7];
      v9 = [v13 objectAtIndex:v7];
      v10 = [v9 externalIdentifier];
      v11 = [(RDStoreController *)self l_accountStorageCacheByObjectIDs];
      [v11 setObject:v9 forKey:v8];

      if (v10)
      {
        v12 = [(RDStoreController *)self l_accountExternalIdentifiersToObjectIDsMap];
        [v12 setObject:v8 forKey:v10];
      }

      ++v7;
    }

    while (v7 < [v6 count]);
  }
}

- (void)l_invalidateAccountStorageCaches:(id)a3
{
  v4 = a3;
  v5 = [(RDStoreController *)self l_accountStorageCacheByObjectIDs];
  [v5 removeAllObjects];

  v6 = [(RDStoreController *)self l_accountExternalIdentifiersToObjectIDsMap];
  [v6 removeAllObjects];

  v7 = [(RDStoreController *)self l_allGenericAccountsObjectIDs];
  [v7 removeAllObjects];

  v8 = +[REMLogStore container];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Account storage invocation caches invalidated {reason: %{public}@}", &v9, 0xCu);
  }
}

- (id)_dataSeparationIncompatible_defaultReminderDataContainerURL
{
  v2 = [(RDStoreController *)self isolatedReminderDataContainerURL];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[RDPaths defaultReminderDataContainerURL];
  }

  v5 = v4;

  return v5;
}

- (BOOL)nukeDataWithError:(id *)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1000D39EC;
  v22 = sub_1000D39FC;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000D39EC;
  v16 = sub_1000D39FC;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  os_unfair_lock_lock(&self->_ivarLock);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E027C;
  v7[3] = &unk_1008DC718;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = &v18;
  v7[7] = &v12;
  sub_1000E027C(v7);
  os_unfair_lock_unlock(&self->_ivarLock);
  if (v19[5])
  {
    [(RDStoreController *)self _postDidRemoveAccountStoresNotificationWithDeletedObjectIDs:?];
  }

  if (a3)
  {
    *a3 = v13[5];
  }

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  return v5;
}

- (void)purgeDeletedObjectsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E07AC;
  v7[3] = &unk_1008DA048;
  v8 = [(RDStoreController *)self newBackgroundContextWithAuthor:@"com.apple.RDStoreController.purgeDeleted"];
  v9 = v4;
  v5 = v4;
  v6 = v8;
  [v6 performBlock:v7];
}

- (id)status:(BOOL)a3
{
  v3 = a3;
  v87 = +[NSMutableDictionary dictionary];
  os_unfair_lock_lock(&self->_ivarLock);
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v5 = [(RDStoreController *)self l_accountStoreMap];
  v6 = [v5 keyEnumerator];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v96 objects:v101 count:16];
  v8 = &_s19ReminderKitInternal24REMRemindersListDataViewO25ScheduledDateBucketsModelVSeAAMc_ptr;
  v91 = self;
  v88 = v7;
  if (v7)
  {
    v86 = *v97;
    v81 = v3;
    do
    {
      v9 = 0;
      do
      {
        if (*v97 != v86)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v96 + 1) + 8 * v9);
        v11 = [v8[476] stringWithFormat:@"accountStore.%@", v10];
        v12 = [(RDStoreController *)self l_accountStoreMap];
        v13 = [v12 objectForKey:v10];

        v14 = [v13 identifier];
        v15 = [v13 URL];
        v16 = v15;
        if (v3)
        {
          objc_opt_class();
          v90 = v14;
          v17 = [v13 options];
          v18 = [v17 valueForKey:NSPersistentStoreConnectionPoolMaxSizeKey];
          v85 = REMDynamicCast();

          v19 = [(RDStoreController *)v91 appleAccountUtilities];
          v83 = [v19 applicationDocumentsURLForAccountIdentifier:v10];

          v89 = [(RDStoreController *)v91 _reminderDataContainerURLForAccountIdentifier:v10];
          v84 = [_TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator stagedMigrationsInfoForPersistentStoreAt:v16];
          v20 = v8[476];
          [v16 absoluteString];
          v22 = v21 = v8;
          v23 = [v20 stringWithFormat:@"{storeID: %@, URL: %@, connectionPoolMaxSize: %@}", v90, v22, v85];
          [v87 setObject:v23 forKeyedSubscript:v11];

          v24 = v21[476];
          v25 = [v83 absoluteString];
          v26 = [v24 stringWithFormat:@"%@", v25];
          v27 = [v21[476] stringWithFormat:@"%@.applicationDocumentsURL", v11];
          [v87 setObject:v26 forKeyedSubscript:v27];

          v28 = v21[476];
          v29 = [v89 absoluteString];
          v30 = [v28 stringWithFormat:@"%@", v29];
          v31 = [v21[476] stringWithFormat:@"%@.reminderDataContainerURL", v11];
          [v87 setObject:v30 forKeyedSubscript:v31];

          self = v91;
          v32 = &__NSArray0__struct;
          if (v84)
          {
            v32 = v84;
          }

          v33 = [v21[476] stringWithFormat:@"%@", v32];
          v34 = v21[476];
          v3 = v81;
          v35 = [v34 stringWithFormat:@"%@.stagedMigrations", v11];
          v36 = v85;
          [v87 setObject:v33 forKeyedSubscript:v35];

          v14 = v90;
          v37 = v83;
        }

        else
        {
          v38 = v8[476];
          v36 = [v15 absoluteString];
          v37 = [v38 stringWithFormat:@"{storeID: %@, URL: %@}", v14, v36];
          [v87 setObject:v37 forKeyedSubscript:v11];
        }

        v9 = v9 + 1;
        v8 = &_s19ReminderKitInternal24REMRemindersListDataViewO25ScheduledDateBucketsModelVSeAAMc_ptr;
      }

      while (v88 != v9);
      v88 = [obj countByEnumeratingWithState:&v96 objects:v101 count:16];
    }

    while (v88);
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v39 = [(RDStoreController *)self l_accountExternalIdentifiersToObjectIDsMap];
  v40 = [v39 keyEnumerator];

  v41 = [v40 countByEnumeratingWithState:&v92 objects:v100 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v93;
    do
    {
      for (i = 0; i != v42; i = i + 1)
      {
        if (*v93 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v92 + 1) + 8 * i);
        v46 = [NSString stringWithFormat:@"accountExternalIDsMap.%@", v45];
        v47 = [(RDStoreController *)v91 l_accountExternalIdentifiersToObjectIDsMap];
        v48 = [v47 objectForKey:v45];
        v49 = [v48 description];
        [v87 setObject:v49 forKeyedSubscript:v46];
      }

      v42 = [v40 countByEnumeratingWithState:&v92 objects:v100 count:16];
    }

    while (v42);
  }

  v50 = [(RDStoreController *)v91 l_accountStorageCacheByObjectIDs];
  v51 = [v50 keyEnumerator];
  v52 = [v51 allObjects];
  v53 = [v52 description];
  [v87 setObject:v53 forKeyedSubscript:@"accountStorageCache.keys"];

  v54 = [(RDStoreController *)v91 l_allGenericAccountsObjectIDs];
  v55 = [v54 allObjects];
  v56 = [v55 description];
  [v87 setObject:v56 forKeyedSubscript:@"accountStorageCache.hasAllGenericAccounts"];

  v57 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d", +[RDPaths isDataSeparationEnabled]);
  [v87 setObject:v57 forKeyedSubscript:@"dataSeparationEnabled"];

  v58 = +[RDPaths defaultReminderDataContainerURL];
  v59 = [v58 absoluteString];
  [v87 setObject:v59 forKeyedSubscript:@"defaultReminderDataContainerURL"];

  v60 = +[RDPaths defaultApplicationDocumentsURL];
  v61 = [v60 absoluteString];
  [v87 setObject:v61 forKeyedSubscript:@"defaultApplicationDocumentsURL"];

  v62 = [NSString stringWithFormat:@"%d", [(RDStoreController *)v91 isolated]];
  [v87 setObject:v62 forKeyedSubscript:@"isolated"];

  v63 = [(RDStoreController *)v91 isolatedReminderDataContainerURL];
  v64 = [v63 absoluteString];
  [v87 setObject:v64 forKeyedSubscript:@"isolatedReminderDataContainerURL"];

  v65 = [(RDStoreController *)v91 l_primaryActiveCloudKitAccountREMObjectID];
  v66 = v65;
  if (v65)
  {
    v67 = [v65 description];
    [v87 setObject:v67 forKeyedSubscript:@"primaryActiveCKAccountID"];
  }

  else
  {
    [v87 setObject:@"Nil" forKeyedSubscript:@"primaryActiveCKAccountID"];
  }

  v68 = [NSString stringWithFormat:@"%ld", rem_currentRuntimeVersion()];
  [v87 setObject:v68 forKeyedSubscript:@"remCurrentRuntimeVersion"];

  v69 = [NSString stringWithFormat:@"%d", [(RDStoreController *)v91 supportsAccountUtils]];
  [v87 setObject:v69 forKeyedSubscript:@"supportsAccountUtils"];

  v70 = [NSString stringWithFormat:@"%d", [(RDStoreController *)v91 supportsAlarmEngine]];
  [v87 setObject:v70 forKeyedSubscript:@"supportsAlarmEngine"];

  v71 = [NSString stringWithFormat:@"%d", [(RDStoreController *)v91 supportsTimelineEngine]];
  [v87 setObject:v71 forKeyedSubscript:@"supportsTimelineEngine"];

  v72 = [NSString stringWithFormat:@"%d", [(RDStoreController *)v91 supportsAssignmentNotificationEngine]];
  [v87 setObject:v72 forKeyedSubscript:@"supportsAssignmentNotificationEngine"];

  v73 = [NSString stringWithFormat:@"%d", [(RDStoreController *)v91 supportsCoreSpotlightIndexing]];
  [v87 setObject:v73 forKeyedSubscript:@"supportsCoreSpotlightIndexing"];

  v74 = [NSString stringWithFormat:@"%d", [(RDStoreController *)v91 supportsSyncingToCloudKit]];
  [v87 setObject:v74 forKeyedSubscript:@"supportsSyncingToCloudKit"];

  v75 = [NSString stringWithFormat:@"%d", [(RDStoreController *)v91 supportsApplicationShortcuts]];
  [v87 setObject:v75 forKeyedSubscript:@"supportsApplicationShortcuts"];

  v76 = [NSString stringWithFormat:@"%d", [(RDStoreController *)v91 supportsLocalInternalAccount]];
  [v87 setObject:v76 forKeyedSubscript:@"supportsLocalInternalAccount"];

  v77 = [NSString stringWithFormat:@"%d", [(RDStoreController *)v91 supportsSuggestedAttributes]];
  [v87 setObject:v77 forKeyedSubscript:@"supportsSuggestedAttributes"];

  v78 = [NSString stringWithFormat:@"%d", [(RDStoreController *)v91 supportsSyncActivityNotificationEngine]];
  [v87 setObject:v78 forKeyedSubscript:@"supportsSyncActivityNotificationEngine"];

  v79 = [NSString stringWithFormat:@"%d", [(RDStoreController *)v91 supportsSharedInlineTagAutoConvertEngine]];
  [v87 setObject:v79 forKeyedSubscript:@"supportsSharedInlineTagAutoConvertEngine"];

  os_unfair_lock_unlock(&v91->_ivarLock);

  return v87;
}

- (id)containerStats
{
  v36 = +[NSMutableDictionary dictionary];
  os_unfair_lock_lock(&self->_ivarLock);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v3 = [(RDStoreController *)self l_accountStoreMap];
  v4 = [v3 keyEnumerator];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v42;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v42 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v41 + 1) + 8 * i);
        v10 = [NSString stringWithFormat:@"accountStore.%@", v9];
        v11 = [(RDStoreController *)self l_accountStoreMap];
        v12 = [v11 objectForKey:v9];
        v13 = [v12 identifier];

        v14 = [(RDStoreController *)self l_accountStoreMap];
        v15 = [v14 objectForKey:v9];
        v16 = [v15 URL];

        v17 = [v16 absoluteString];
        v18 = [NSString stringWithFormat:@"{storeID: %@, URL: %@}", v13, v17];
        [v36 setObject:v18 forKeyedSubscript:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v6);
  }

  v19 = +[RDPaths defaultReminderDataContainerURL];
  v20 = [v19 absoluteString];
  [v36 setObject:v20 forKeyedSubscript:@"defaultReminderDataContainerURL"];

  v21 = [(RDStoreController *)self isolatedReminderDataContainerURL];
  v22 = [v21 absoluteString];
  [v36 setObject:v22 forKeyedSubscript:@"isolatedReminderDataContainerURL"];

  v23 = [(RDStoreController *)self l_primaryActiveCloudKitAccountREMObjectID];
  v24 = v23;
  if (v23)
  {
    v25 = [v23 description];
    [v36 setObject:v25 forKeyedSubscript:@"primaryActiveCKAccountID"];
  }

  else
  {
    [v36 setObject:@"Nil" forKeyedSubscript:@"primaryActiveCKAccountID"];
  }

  v26 = [NSString stringWithFormat:@"%ld", rem_currentRuntimeVersion()];
  [v36 setObject:v26 forKeyedSubscript:@"remCurrentRuntimeVersion"];

  v27 = +[NSMutableArray array];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000E1898;
  v37[3] = &unk_1008D9B70;
  v37[4] = self;
  v38 = [(RDStoreController *)self newBackgroundContextWithAuthor:@"com.apple.RDStoreController.containerStats"];
  v28 = v27;
  v39 = v28;
  v29 = v36;
  v40 = v29;
  v30 = v38;
  [v30 performBlockAndWait:v37];
  if ([v28 count])
  {
    v31 = [v28 componentsJoinedByString:@" "];;
    [v29 setObject:v31 forKeyedSubscript:@"ERRORS"];
  }

  os_unfair_lock_unlock(&self->_ivarLock);
  v32 = v40;
  v33 = v29;

  return v29;
}

- (int64_t)unittest_countKeysInAccountStoreMap
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  os_unfair_lock_lock(&self->_ivarLock);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000E1EB4;
  v5[3] = &unk_1008D9A28;
  v5[4] = self;
  v5[5] = &v6;
  sub_1000E1EB4(v5);
  os_unfair_lock_unlock(&self->_ivarLock);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)unittest_removeFromPersistentStoreCoordinatorAndDeleteImmediatelyWithStores:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_ivarLock);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000E1FC4;
  v6[3] = &unk_1008D9B98;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  sub_1000E1FC4(v6);
  os_unfair_lock_unlock(&self->_ivarLock);
}

@end