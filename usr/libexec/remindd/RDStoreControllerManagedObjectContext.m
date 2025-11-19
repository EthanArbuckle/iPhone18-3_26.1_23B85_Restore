@interface RDStoreControllerManagedObjectContext
+ (id)managedObjectIDsSortedByTopologicalWeightsForEffectiveMinimumSupportedVersionPropagation:(id)a3;
+ (id)topologicallyWeightedEntitiesForEffectiveMinimumSupportedVersionPropagation;
+ (unint64_t)_heightOfEntityNodeInMOMTreeForEffectiveMinimumSupportedVersionPropagation:(id)a3 heightMap:(id)a4;
- (BOOL)__unsafe_doesNotWorkUniversally_setAffectedStoresWithAccountIdentifier:(id)a3;
- (BOOL)canAccessAllPersistentStoresReferencedByFetchResultToken:(id)a3;
- (BOOL)containerShouldSortChildrenAfterFetchingWithRecordID:(id)a3;
- (BOOL)coreDataSave:(id *)a3;
- (BOOL)hasPendingListNameRelatedChanges;
- (BOOL)save:(id *)a3;
- (NSMutableDictionary)candidateFileAttachmentSha512SumsAndExtensionsToPurgeByAccountIdentifier;
- (NSMutableDictionary)confirmedFileAttachmentSha512SumsAndExtensionsToPurgeByAccountIdentifier;
- (NSMutableDictionary)fileAttachmentIdentifiersToPurgeByAccountIdentifier;
- (NSMutableSet)managedObjectIDsHavingDirtyEffectiveMinimumSupportedVersion;
- (RDStoreController)storeController;
- (id)_debug_managedObjectIDsSortedByTopologicalWeightsForEffectiveMinimumSupportedVersionPropagation:(id)a3;
- (id)executeFetchRequest:(id)a3 error:(id *)a4;
- (id)executeRequest:(id)a3 error:(id *)a4;
- (id)existingFileAttachmentsMatchingSHA512Sums:(id)a3 accountID:(id)a4 error:(id *)a5;
- (id)latestFetchResultTokenWithError:(id *)a3;
- (id)objectTreeProcessorDelegateFactoryWithTreeNode:(id)a3;
- (id)persistentStoreOfAccountWithAccountID:(id)a3;
- (unint64_t)_validateDirtyEffectiveMinimumSupportedVersionsWithBatchSize:(unint64_t)a3 isManualValidation:(BOOL)a4;
- (unint64_t)countForFetchRequest:(id)a3 error:(id *)a4;
- (void)confirmOrRejectFilePurgeCandidatesThatMightBeDeduplicatedAcrossMultipleAttachments;
- (void)notifyDidMarkExtraneousAlarmsPendingToSyncUpDelete;
- (void)proposePurgingFileAttachmentWithSha512Sum:(id)a3 fileExtension:(id)a4 account:(id)a5;
- (void)purgeDeletedFileAttachments;
- (void)rejectPurgingFileAttachmentWithSha512Sum:(id)a3 fileExtension:(id)a4 account:(id)a5;
- (void)validateDirtyEffectiveMinimumSupportedVersions;
@end

@implementation RDStoreControllerManagedObjectContext

- (RDStoreController)storeController
{
  WeakRetained = objc_loadWeakRetained(&self->_storeController);

  return WeakRetained;
}

- (BOOL)hasPendingListNameRelatedChanges
{
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v2 = [(RDStoreControllerManagedObjectContext *)self updatedObjects];
  v3 = [v2 allObjects];

  v4 = [v3 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v33;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v32 + 1) + 8 * i);
        if ([v8 isMemberOfClass:objc_opt_class()])
        {
          v9 = [v8 changedValues];
          v10 = [v9 objectForKeyedSubscript:@"name"];
          if (v10)
          {

            goto LABEL_29;
          }

          v11 = [v8 changedValues];
          v12 = [v11 objectForKeyedSubscript:@"markedForDeletion"];

          if (v12)
          {
            goto LABEL_29;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v32 objects:v38 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = [(RDStoreControllerManagedObjectContext *)self insertedObjects];
  v3 = [v13 allObjects];

  v14 = [v3 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
LABEL_13:
    v17 = 0;
    while (1)
    {
      if (*v29 != v16)
      {
        objc_enumerationMutation(v3);
      }

      if ([*(*(&v28 + 1) + 8 * v17) isMemberOfClass:objc_opt_class()])
      {
        goto LABEL_29;
      }

      if (v15 == ++v17)
      {
        v15 = [v3 countByEnumeratingWithState:&v28 objects:v37 count:16];
        if (v15)
        {
          goto LABEL_13;
        }

        break;
      }
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = [(RDStoreControllerManagedObjectContext *)self deletedObjects];
  v3 = [v18 allObjects];

  v19 = [v3 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v19)
  {
    v20 = *v25;
LABEL_21:
    v21 = 0;
    while (1)
    {
      if (*v25 != v20)
      {
        objc_enumerationMutation(v3);
      }

      if ([*(*(&v24 + 1) + 8 * v21) isMemberOfClass:objc_opt_class()])
      {
        break;
      }

      if (v19 == ++v21)
      {
        v19 = [v3 countByEnumeratingWithState:&v24 objects:v36 count:16];
        if (v19)
        {
          goto LABEL_21;
        }

        goto LABEL_30;
      }
    }

LABEL_29:
    LOBYTE(v19) = 1;
  }

LABEL_30:

  return v19;
}

- (void)validateDirtyEffectiveMinimumSupportedVersions
{
  v3 = +[ICCloudConfiguration sharedConfiguration];
  -[RDStoreControllerManagedObjectContext _validateDirtyEffectiveMinimumSupportedVersionsWithBatchSize:isManualValidation:](self, "_validateDirtyEffectiveMinimumSupportedVersionsWithBatchSize:isManualValidation:", [v3 objectEffectiveVersionValidationFlushBatchSize], 0);
}

- (NSMutableSet)managedObjectIDsHavingDirtyEffectiveMinimumSupportedVersion
{
  managedObjectIDsHavingDirtyEffectiveMinimumSupportedVersion = self->_managedObjectIDsHavingDirtyEffectiveMinimumSupportedVersion;
  if (!managedObjectIDsHavingDirtyEffectiveMinimumSupportedVersion)
  {
    v4 = +[NSMutableSet set];
    v5 = self->_managedObjectIDsHavingDirtyEffectiveMinimumSupportedVersion;
    self->_managedObjectIDsHavingDirtyEffectiveMinimumSupportedVersion = v4;

    managedObjectIDsHavingDirtyEffectiveMinimumSupportedVersion = self->_managedObjectIDsHavingDirtyEffectiveMinimumSupportedVersion;
  }

  return managedObjectIDsHavingDirtyEffectiveMinimumSupportedVersion;
}

- (void)confirmOrRejectFilePurgeCandidatesThatMightBeDeduplicatedAcrossMultipleAttachments
{
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector(a2);
  v39 = [NSString stringWithFormat:@"%@.%@", v5, v6];

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v46 = self;
  obj = [(RDStoreControllerManagedObjectContext *)self candidateFileAttachmentSha512SumsAndExtensionsToPurgeByAccountIdentifier];
  v43 = [obj countByEnumeratingWithState:&v56 objects:v68 count:16];
  if (v43)
  {
    v7 = *v57;
    v8 = &_s19ReminderKitInternal24REMRemindersListDataViewO25ScheduledDateBucketsModelVSeAAMc_ptr;
    v40 = *v57;
    do
    {
      for (i = 0; i != v43; i = v26 + 1)
      {
        if (*v57 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v45 = i;
        v10 = *(*(&v56 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        v11 = [(RDStoreControllerManagedObjectContext *)v46 candidateFileAttachmentSha512SumsAndExtensionsToPurgeByAccountIdentifier];
        v12 = [v11 objectForKeyedSubscript:v10];

        v13 = [v8[332] setWithCapacity:{objc_msgSend(v12, "count")}];
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v14 = v12;
        v15 = [v14 countByEnumeratingWithState:&v52 objects:v67 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v53;
          do
          {
            for (j = 0; j != v16; j = j + 1)
            {
              if (*v53 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = [*(*(&v52 + 1) + 8 * j) stringByDeletingPathExtension];
              [v13 addObject:v19];
            }

            v16 = [v14 countByEnumeratingWithState:&v52 objects:v67 count:16];
          }

          while (v16);
        }

        v51 = 0;
        v20 = [(RDStoreControllerManagedObjectContext *)v46 existingFileAttachmentsMatchingSHA512Sums:v13 accountID:v10 error:&v51];
        v21 = v51;
        if (v21)
        {
          v22 = [v13 allObjects];
          v23 = [v22 componentsJoinedByString:{@", "}];

          v24 = +[REMLogStore container];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v37 = [v10 UUIDString];
            *buf = 138543874;
            v62 = v39;
            v63 = 2114;
            v64 = v37;
            v65 = 2114;
            v66 = v23;
            _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to fetch existing attachments in account [%{public}@] with sha512Sums [%{public}@]. Not purging any attachments for this account.", buf, 0x20u);
          }

          v25 = [(RDStoreControllerManagedObjectContext *)v46 confirmedFileAttachmentSha512SumsAndExtensionsToPurgeByAccountIdentifier];
          [v25 removeObjectForKey:v10];
          v26 = v45;
        }

        else
        {
          v42 = v20;
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v27 = v20;
          v28 = [v27 countByEnumeratingWithState:&v47 objects:v60 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v48;
            do
            {
              for (k = 0; k != v29; k = k + 1)
              {
                if (*v48 != v30)
                {
                  objc_enumerationMutation(v27);
                }

                v32 = *(*(&v47 + 1) + 8 * k);
                v33 = [v32 sha512Sum];
                v34 = [v32 fileName];
                v35 = [v34 pathExtension];

                [(RDStoreControllerManagedObjectContext *)v46 rejectPurgingFileAttachmentWithSha512Sum:v33 fileExtension:v35 account:v10];
              }

              v29 = [v27 countByEnumeratingWithState:&v47 objects:v60 count:16];
            }

            while (v29);
          }

          v23 = [(RDStoreControllerManagedObjectContext *)v46 candidateFileAttachmentSha512SumsAndExtensionsToPurgeByAccountIdentifier];
          v25 = [v23 objectForKeyedSubscript:v10];
          v36 = [(RDStoreControllerManagedObjectContext *)v46 confirmedFileAttachmentSha512SumsAndExtensionsToPurgeByAccountIdentifier];
          [v36 setObject:v25 forKeyedSubscript:v10];

          v7 = v40;
          v8 = &_s19ReminderKitInternal24REMRemindersListDataViewO25ScheduledDateBucketsModelVSeAAMc_ptr;
          v26 = v45;
          v21 = 0;
          v20 = v42;
        }

        objc_autoreleasePoolPop(context);
      }

      v43 = [obj countByEnumeratingWithState:&v56 objects:v68 count:16];
    }

    while (v43);
  }

  v38 = [(RDStoreControllerManagedObjectContext *)v46 candidateFileAttachmentSha512SumsAndExtensionsToPurgeByAccountIdentifier];
  [v38 removeAllObjects];
}

- (NSMutableDictionary)candidateFileAttachmentSha512SumsAndExtensionsToPurgeByAccountIdentifier
{
  candidateFileAttachmentSha512SumsAndExtensionsToPurgeByAccountIdentifier = self->_candidateFileAttachmentSha512SumsAndExtensionsToPurgeByAccountIdentifier;
  if (!candidateFileAttachmentSha512SumsAndExtensionsToPurgeByAccountIdentifier)
  {
    v4 = +[NSMutableDictionary dictionary];
    v5 = self->_candidateFileAttachmentSha512SumsAndExtensionsToPurgeByAccountIdentifier;
    self->_candidateFileAttachmentSha512SumsAndExtensionsToPurgeByAccountIdentifier = v4;

    candidateFileAttachmentSha512SumsAndExtensionsToPurgeByAccountIdentifier = self->_candidateFileAttachmentSha512SumsAndExtensionsToPurgeByAccountIdentifier;
  }

  return candidateFileAttachmentSha512SumsAndExtensionsToPurgeByAccountIdentifier;
}

- (void)purgeDeletedFileAttachments
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_1000C8D64;
  v35 = sub_1000C8D74;
  v4 = [(RDStoreControllerManagedObjectContext *)self fileAttachmentIdentifiersToPurgeByAccountIdentifier];
  v36 = [v4 copy];

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1000C8D64;
  v29 = sub_1000C8D74;
  v5 = [(RDStoreControllerManagedObjectContext *)self confirmedFileAttachmentSha512SumsAndExtensionsToPurgeByAccountIdentifier];
  v30 = [v5 copy];

  if ([v32[5] count] || objc_msgSend(v26[5], "count"))
  {
    v22 = 0;
    v23[0] = &v22;
    v23[1] = 0x3032000000;
    v23[2] = sub_1000C8D64;
    v23[3] = sub_1000C8D74;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v24 = [NSString stringWithFormat:@"%@.%@", v7, v8];

    v9 = [(RDStoreControllerManagedObjectContext *)self storeController];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 fileIOWorkerQueue];
      if (v11)
      {
        v12 = [(RDStoreControllerManagedObjectContext *)self _unitTest_purgeDeletedFileAttachmentsDidComplete];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000C8D7C;
        block[3] = &unk_1008DC400;
        v19 = &v22;
        v20 = &v31;
        v17 = v10;
        v21 = &v25;
        v13 = v12;
        v18 = v13;
        dispatch_async(v11, block);
        v14 = [(RDStoreControllerManagedObjectContext *)self fileAttachmentIdentifiersToPurgeByAccountIdentifier];
        [v14 removeAllObjects];

        v15 = [(RDStoreControllerManagedObjectContext *)self confirmedFileAttachmentSha512SumsAndExtensionsToPurgeByAccountIdentifier];
        [v15 removeAllObjects];
      }

      else
      {
        v13 = +[REMLogStore container];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_10076C1B0(v23, v13);
        }
      }
    }

    else
    {
      v11 = +[REMLogStore container];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10076C230(v23, v11);
      }
    }

    _Block_object_dispose(&v22, 8);
  }

  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
}

- (NSMutableDictionary)fileAttachmentIdentifiersToPurgeByAccountIdentifier
{
  fileAttachmentIdentifiersToPurgeByAccountIdentifier = self->_fileAttachmentIdentifiersToPurgeByAccountIdentifier;
  if (!fileAttachmentIdentifiersToPurgeByAccountIdentifier)
  {
    v4 = +[NSMutableDictionary dictionary];
    v5 = self->_fileAttachmentIdentifiersToPurgeByAccountIdentifier;
    self->_fileAttachmentIdentifiersToPurgeByAccountIdentifier = v4;

    fileAttachmentIdentifiersToPurgeByAccountIdentifier = self->_fileAttachmentIdentifiersToPurgeByAccountIdentifier;
  }

  return fileAttachmentIdentifiersToPurgeByAccountIdentifier;
}

- (NSMutableDictionary)confirmedFileAttachmentSha512SumsAndExtensionsToPurgeByAccountIdentifier
{
  confirmedFileAttachmentSha512SumsAndExtensionsToPurgeByAccountIdentifier = self->_confirmedFileAttachmentSha512SumsAndExtensionsToPurgeByAccountIdentifier;
  if (!confirmedFileAttachmentSha512SumsAndExtensionsToPurgeByAccountIdentifier)
  {
    v4 = +[NSMutableDictionary dictionary];
    v5 = self->_confirmedFileAttachmentSha512SumsAndExtensionsToPurgeByAccountIdentifier;
    self->_confirmedFileAttachmentSha512SumsAndExtensionsToPurgeByAccountIdentifier = v4;

    confirmedFileAttachmentSha512SumsAndExtensionsToPurgeByAccountIdentifier = self->_confirmedFileAttachmentSha512SumsAndExtensionsToPurgeByAccountIdentifier;
  }

  return confirmedFileAttachmentSha512SumsAndExtensionsToPurgeByAccountIdentifier;
}

- (id)objectTreeProcessorDelegateFactoryWithTreeNode:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = REMCDObjectEffectiveVersionValidationDelegateImpl;
LABEL_5:
    v6 = [[v5 alloc] initWithManagedObjectContext:self];
    goto LABEL_9;
  }

  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = _REMCDObjectEffectiveVersionManualValidationDelegateImpl;
    goto LABEL_5;
  }

  v7 = +[REMLogStore write];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    sub_10076A6B8(v4, v7);
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (BOOL)save:(id *)a3
{
  v5 = [(RDStoreControllerManagedObjectContext *)self insertedObjects];
  v6 = [v5 count];

  v7 = [(RDStoreControllerManagedObjectContext *)self updatedObjects];
  v8 = [v7 count];

  v9 = [(RDStoreControllerManagedObjectContext *)self deletedObjects];
  v10 = [v9 count];

  v11 = [(RDStoreControllerManagedObjectContext *)self hasPendingListNameRelatedChanges];
  v33.receiver = self;
  v33.super_class = RDStoreControllerManagedObjectContext;
  v34 = 0;
  v12 = [(RDStoreControllerManagedObjectContext *)&v33 save:&v34];
  v13 = v34;
  v14 = REMCRMergeableOrderedSet_ptr;
  v15 = +[REMLogStore write];
  v16 = v15;
  if (v12)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(RDStoreControllerManagedObjectContext *)self transactionAuthor];
      *buf = 138544130;
      v36 = v17;
      v37 = 2048;
      v38 = v6;
      v39 = 2048;
      v40 = v8;
      v41 = 2048;
      v42 = v10;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "SAVE COREDATA {author: %{public}@, insert.count: %ld, update.count: %ld, delete.count: %ld}", buf, 0x2Au);

      v14 = REMCRMergeableOrderedSet_ptr;
    }

    if (v11)
    {
      notify_post("com.apple.reminder.list.name.siri_data_changed");
    }

    [(RDStoreControllerManagedObjectContext *)self validateDirtyEffectiveMinimumSupportedVersions];
    [(RDStoreControllerManagedObjectContext *)self confirmOrRejectFilePurgeCandidatesThatMightBeDeduplicatedAcrossMultipleAttachments];
    [(RDStoreControllerManagedObjectContext *)self purgeDeletedFileAttachments];
    if (([(RDStoreControllerManagedObjectContext *)self pendingPostSaveActions]& 1) != 0)
    {
      [(RDStoreControllerManagedObjectContext *)self notifyDidMarkExtraneousAlarmsPendingToSyncUpDelete];
    }

    if (([(RDStoreControllerManagedObjectContext *)self pendingPostSaveActions]& 2) != 0)
    {
      v18 = +[NSNotificationCenter defaultCenter];
      [v18 postNotificationName:@"com.apple.remindd.SharedToMeList.pinnedStateDidBecomeStale" object:0 userInfo:0];
    }

    if (([(RDStoreControllerManagedObjectContext *)self pendingPostSaveActions]& 4) != 0)
    {
      v19 = +[NSNotificationCenter defaultCenter];
      [v19 postNotificationName:@"com.apple.remindd.SharedToMeList.mostRecentTargetTemplateIdentifierByCurrentUserDidBecomeStale" object:0 userInfo:0];
    }

    [(RDStoreControllerManagedObjectContext *)self setPendingPostSaveActions:0];
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v32 = [(RDStoreControllerManagedObjectContext *)self transactionAuthor];
      *buf = 138544386;
      v36 = v32;
      v37 = 2048;
      v38 = v6;
      v39 = 2048;
      v40 = v8;
      v41 = 2048;
      v42 = v10;
      v43 = 2114;
      v44 = v13;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "SAVE COREDATA ERROR {author: %{public}@, insert.count: %ld, update.count: %ld, delete.count: %ld, error: %{public}@}", buf, 0x34u);
    }
  }

  v20 = [(RDStoreControllerManagedObjectContext *)self transactionAuthor];

  if (v20)
  {
    v21 = [(RDStoreControllerManagedObjectContext *)self transactionAuthor];
    [_TtC7remindd16RDAsyncAnalytics recordSaveWith:v21];

    if (a3)
    {
LABEL_18:
      v22 = v13;
      *a3 = v13;
    }
  }

  else
  {
    v24 = [v14[51] write];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      sub_10076BCEC(v24, v25, v26, v27, v28, v29, v30, v31);
    }

    [_TtC7remindd16RDAsyncAnalytics recordSaveWith:@"nil author"];
    if (a3)
    {
      goto LABEL_18;
    }
  }

  return v12;
}

- (id)executeRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 affectedStores];
  if (!v7)
  {
    v8 = [(RDStoreControllerManagedObjectContext *)self __unsafe_doesNotWorkUniversally_affectedStores];

    if (!v8)
    {
      goto LABEL_5;
    }

    v7 = [(RDStoreControllerManagedObjectContext *)self __unsafe_doesNotWorkUniversally_affectedStores];
    [v6 setAffectedStores:v7];
  }

LABEL_5:
  v9 = +[REMLogStore read];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10076BD24(self);
  }

  v16.receiver = self;
  v16.super_class = RDStoreControllerManagedObjectContext;
  v17 = 0;
  v10 = [(RDStoreControllerManagedObjectContext *)&v16 executeRequest:v6 error:&v17];
  v11 = v17;
  if (!v10)
  {
    v12 = +[REMLogStore read];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = [(RDStoreControllerManagedObjectContext *)self transactionAuthor];
      *buf = 138543874;
      v19 = v15;
      v20 = 2114;
      v21 = v6;
      v22 = 2114;
      v23 = v11;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "COREDATA REQUEST ERROR {author: %{public}@, request: %{public}@, error: %{public}@}", buf, 0x20u);
    }
  }

  if (a4)
  {
    v13 = v11;
    *a4 = v11;
  }

  return v10;
}

- (id)executeFetchRequest:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 affectedStores];
  if (!v6)
  {
    v7 = [(RDStoreControllerManagedObjectContext *)self __unsafe_doesNotWorkUniversally_affectedStores];

    if (!v7)
    {
      goto LABEL_5;
    }

    v6 = [(RDStoreControllerManagedObjectContext *)self __unsafe_doesNotWorkUniversally_affectedStores];
    [v5 setAffectedStores:v6];
  }

LABEL_5:
  v8 = REMCRMergeableOrderedSet_ptr;
  v9 = +[REMLogStore read];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10076BDB8(self);
  }

  v10 = +[NSDate now];
  v57.receiver = self;
  v57.super_class = RDStoreControllerManagedObjectContext;
  v58 = 0;
  v11 = [(RDStoreControllerManagedObjectContext *)&v57 executeFetchRequest:v5 error:&v58];
  v12 = v58;
  if (v11)
  {
    v13 = +[NSDate now];
    [v13 timeIntervalSinceDate:v10];
    v15 = v14 * 1000.0;

    v16 = [v5 fetchBatchSize];
    v17 = +[REMLogStore read];
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (!v18)
      {
        goto LABEL_16;
      }

      v19 = [(RDStoreControllerManagedObjectContext *)self transactionAuthor];
      v20 = [v5 entityName];
      v48 = [v11 count];
      v54 = [v5 affectedStores];
      v46 = [v54 count];
      v52 = [(RDStoreControllerManagedObjectContext *)self persistentStoreCoordinator];
      v50 = [v52 persistentStores];
      v44 = [v50 count];
      v21 = v10;
      v22 = [v5 fetchBatchSize];
      v23 = [v5 propertiesToFetch];
      v24 = [v23 count];
      *buf = 134219778;
      v60 = v15;
      v61 = 2114;
      v62 = v19;
      v63 = 2114;
      v64 = v20;
      v65 = 2048;
      v66 = v48;
      v67 = 2048;
      v68 = v46;
      v69 = 2048;
      v70 = v44;
      v71 = 2048;
      v72 = v22;
      v10 = v21;
      v8 = REMCRMergeableOrderedSet_ptr;
      v73 = 2048;
      v74 = v24;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "BATCH FETCH COREDATA {elapsedTime: %.4lf ms, author: %{public}@, entityName: %{public}@, result.count: %ld, affectedStores.count: %ld, persistentStoreCoordinator.persistentStores.count: %ld, propsToFetch.count: %ld, fetchBatchSize: %ld}", buf, 0x52u);

      goto LABEL_11;
    }

    if (v18)
    {
      v47 = [(RDStoreControllerManagedObjectContext *)self transactionAuthor];
      v26 = [v5 entityName];
      v45 = [v11 count];
      v53 = [v5 affectedStores];
      v55 = v10;
      v27 = [v53 count];
      v51 = [(RDStoreControllerManagedObjectContext *)self persistentStoreCoordinator];
      v49 = [v51 persistentStores];
      v28 = [v49 count];
      v29 = [v5 propertiesToFetch];
      v30 = [v29 count];
      *buf = 134219522;
      v60 = v15;
      v61 = 2114;
      v62 = v47;
      v63 = 2114;
      v64 = v26;
      v31 = v26;
      v65 = 2048;
      v66 = v45;
      v67 = 2048;
      v68 = v27;
      v10 = v55;
      v69 = 2048;
      v70 = v28;
      v71 = 2048;
      v72 = v30;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "FETCH COREDATA {elapsedTime: %.4lf ms, author: %{public}@, entityName: %{public}@, result.count: %ld, affectedStores.count: %ld, persistentStoreCoordinator.persistentStores.count: %ld, propsToFetch.count: %ld}", buf, 0x48u);

      v8 = REMCRMergeableOrderedSet_ptr;
    }
  }

  else
  {
    v17 = +[REMLogStore read];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = [(RDStoreControllerManagedObjectContext *)self transactionAuthor];
      v25 = [v5 entityName];
      *buf = 138543874;
      v60 = *&v19;
      v61 = 2114;
      v62 = v25;
      v63 = 2114;
      v64 = v12;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "FETCH COREDATA ERROR {author: %{public}@, entityName: %{public}@, error: %{public}@}", buf, 0x20u);

      v8 = REMCRMergeableOrderedSet_ptr;
LABEL_11:
    }
  }

LABEL_16:

  v32 = [(RDStoreControllerManagedObjectContext *)self transactionAuthor];

  if (v32)
  {
    v33 = [(RDStoreControllerManagedObjectContext *)self transactionAuthor];
    [_TtC7remindd16RDAsyncAnalytics recordFetchWith:v33];
  }

  else
  {
    v34 = [v8[51] write];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      sub_10076BE4C(v34, v35, v36, v37, v38, v39, v40, v41);
    }

    [_TtC7remindd16RDAsyncAnalytics recordFetchWith:@"nil author"];
  }

  if (a4)
  {
    v42 = v12;
    *a4 = v12;
  }

  return v11;
}

- (unint64_t)countForFetchRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 affectedStores];
  if (!v7)
  {
    v8 = [(RDStoreControllerManagedObjectContext *)self __unsafe_doesNotWorkUniversally_affectedStores];

    if (!v8)
    {
      goto LABEL_5;
    }

    v7 = [(RDStoreControllerManagedObjectContext *)self __unsafe_doesNotWorkUniversally_affectedStores];
    [v6 setAffectedStores:v7];
  }

LABEL_5:
  v9 = +[REMLogStore read];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10076BE84(self);
  }

  v10 = +[NSDate now];
  v41.receiver = self;
  v41.super_class = RDStoreControllerManagedObjectContext;
  v42 = 0;
  v11 = [(RDStoreControllerManagedObjectContext *)&v41 countForFetchRequest:v6 error:&v42];
  v12 = v42;
  v13 = +[NSDate now];
  [v13 timeIntervalSinceDate:v10];
  v15 = v14;

  v16 = +[REMLogStore read];
  v17 = v16;
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(RDStoreControllerManagedObjectContext *)self transactionAuthor];
      v18 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v19 = [v6 entityName];
      *buf = 138543874;
      v44 = v18;
      v45 = 2114;
      v46 = v19;
      v47 = 2114;
      v48 = v12;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "FETCH COUNT COREDATA ERROR {author: %{public}@, entityName: %{public}@, error: %{public}@}", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [(RDStoreControllerManagedObjectContext *)self transactionAuthor];
    [v6 entityName];
    v21 = v39 = v10;
    [v6 affectedStores];
    v38 = v40 = a4;
    v22 = [v38 count];
    v23 = [(RDStoreControllerManagedObjectContext *)self persistentStoreCoordinator];
    v24 = [v23 persistentStores];
    v25 = [v24 count];
    *buf = 134219266;
    v44 = v15 * 1000.0;
    v45 = 2114;
    v46 = v20;
    v47 = 2114;
    v48 = v21;
    v49 = 2048;
    v50 = v11;
    v51 = 2048;
    v52 = v22;
    v53 = 2048;
    v54 = v25;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "FETCH COUNT COREDATA {elapsedTime: %.9lf ms, author: %{public}@, entityName: %{public}@, count: %ld, affectedStores.count: %ld, persistentStoreCoordinator.persistentStores.count: %ld}", buf, 0x3Eu);

    a4 = v40;
    v10 = v39;
  }

  v26 = [(RDStoreControllerManagedObjectContext *)self transactionAuthor];

  if (v26)
  {
    v27 = [(RDStoreControllerManagedObjectContext *)self transactionAuthor];
    [_TtC7remindd16RDAsyncAnalytics recordFetchWith:v27];

    if (a4)
    {
LABEL_14:
      v28 = v12;
      *a4 = v12;
    }
  }

  else
  {
    v30 = +[REMLogStore write];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      sub_10076BE4C(v30, v31, v32, v33, v34, v35, v36, v37);
    }

    [_TtC7remindd16RDAsyncAnalytics recordFetchWith:@"nil author"];
    if (a4)
    {
      goto LABEL_14;
    }
  }

  return v11;
}

- (BOOL)__unsafe_doesNotWorkUniversally_setAffectedStoresWithAccountIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(RDStoreControllerManagedObjectContext *)self storeController];
    v6 = [v5 storeForAccountIdentifier:v4];

    v7 = v6 != 0;
    if (v6)
    {
      v10 = v6;
      v8 = [NSArray arrayWithObjects:&v10 count:1];
      [(RDStoreControllerManagedObjectContext *)self set__unsafe_doesNotWorkUniversally_affectedStores:v8];
    }

    else
    {
      [(RDStoreControllerManagedObjectContext *)self set__unsafe_doesNotWorkUniversally_affectedStores:0];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)persistentStoreOfAccountWithAccountID:(id)a3
{
  v4 = a3;
  v5 = [(RDStoreControllerManagedObjectContext *)self storeController];
  v6 = [v4 uuid];

  v7 = [v6 UUIDString];
  v8 = [v5 storeForAccountIdentifier:v7];

  return v8;
}

- (BOOL)containerShouldSortChildrenAfterFetchingWithRecordID:(id)a3
{
  v4 = a3;
  if ([(RDStoreControllerManagedObjectContext *)self shouldSortChildrenAfterFetching])
  {
    v5 = [(RDStoreControllerManagedObjectContext *)self recordIDsToSortChildrenAfterFetching];

    v6 = 0;
    if (v4 && v5)
    {
      v7 = [(RDStoreControllerManagedObjectContext *)self recordIDsToSortChildrenAfterFetching];
      [v7 addObject:v4];

      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (unint64_t)_heightOfEntityNodeInMOMTreeForEffectiveMinimumSupportedVersionPropagation:(id)a3 heightMap:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 name];

  if (!v8)
  {
    v9 = +[REMLogStore utility];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_10076BF18(v6, v9);
    }

    goto LABEL_9;
  }

  v9 = [v6 name];
  v10 = [v6 superentity];
  if (!v10)
  {
    v11 = +[REMCDObject subclassNamesOfREMCDObjectRepresentingRootCoreDataEntities];
    v12 = [v6 managedObjectClassName];
    v13 = [v11 containsObject:v12];

    if (v13)
    {
      goto LABEL_7;
    }

LABEL_9:
    v17 = 0;
    goto LABEL_29;
  }

LABEL_7:
  v14 = [v7 objectForKey:v9];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 unsignedIntegerValue];
    v17 = 0;
  }

  else
  {
    [v7 setObject:&off_100905148 forKey:v9];
    v18 = [REMCDObject relationshipsEligibleForEffectiveMinimumSupportedVersionPropagationWithEntity:v6];
    v19 = +[REMLogStore utility];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = [v18 valueForKeyPath:@"destinationEntity.name"];
      *buf = 138543618;
      v45 = v9;
      v46 = 2114;
      v47 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[entity-height-in-MoM-tree] node.entity=%{public}@, node.entity.relationships=%{public}@", buf, 0x16u);
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v21 = v18;
    v22 = [v21 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v22)
    {
      v23 = v22;
      v35 = 0;
      v36 = v9;
      v37 = v6;
      obj = v21;
      v24 = 0;
      v25 = *v40;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v40 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = [*(*(&v39 + 1) + 8 * i) destinationEntity];
          v28 = [v27 subentities];
          v29 = [v28 mutableCopy];
          while (1)
          {

            if (![v29 count])
            {
              break;
            }

            v28 = [v29 lastObject];
            v30 = [a1 _heightOfEntityNodeInMOMTreeForEffectiveMinimumSupportedVersionPropagation:v28 heightMap:v7];
            if (v24 <= v30)
            {
              v24 = v30;
            }

            [v29 removeLastObject];
            v31 = [v28 subentities];
            [v29 addObjectsFromArray:v31];
          }

          v32 = [a1 _heightOfEntityNodeInMOMTreeForEffectiveMinimumSupportedVersionPropagation:v27 heightMap:v7];
          if (v24 <= v32)
          {
            v24 = v32;
          }
        }

        v23 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v23);

      v17 = v24 + 1;
      v16 = v24 + 1;
      v9 = v36;
      v6 = v37;
      v15 = v35;
    }

    else
    {

      v17 = 1;
      v16 = 1;
    }
  }

  v33 = [NSNumber numberWithUnsignedInteger:v16];
  [v7 setObject:v33 forKey:v9];

LABEL_29:
  return v17;
}

+ (id)topologicallyWeightedEntitiesForEffectiveMinimumSupportedVersionPropagation
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C7AF4;
  block[3] = &unk_1008DBDD8;
  block[4] = a1;
  if (qword_100952B10 != -1)
  {
    dispatch_once(&qword_100952B10, block);
  }

  v2 = +[REMLogStore utility];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10076BFB0(v2);
  }

  v3 = qword_100952B08;

  return v3;
}

+ (id)managedObjectIDsSortedByTopologicalWeightsForEffectiveMinimumSupportedVersionPropagation:(id)a3
{
  v3 = a3;
  [objc_opt_class() topologicallyWeightedEntitiesForEffectiveMinimumSupportedVersionPropagation];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C7C48;
  v8 = v7[3] = &unk_1008DC3B0;
  v4 = v8;
  v5 = [v3 sortedArrayUsingComparator:v7];

  return v5;
}

- (unint64_t)_validateDirtyEffectiveMinimumSupportedVersionsWithBatchSize:(unint64_t)a3 isManualValidation:(BOOL)a4
{
  v7 = [(RDStoreControllerManagedObjectContext *)self managedObjectIDsHavingDirtyEffectiveMinimumSupportedVersion];
  v8 = [v7 allObjects];

  if ([v8 count])
  {
    v9 = +[NSDate date];
    v10 = [objc_opt_class() managedObjectIDsSortedByTopologicalWeightsForEffectiveMinimumSupportedVersionPropagation:v8];
    v11 = +[REMLogStore write];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(RDStoreControllerManagedObjectContext *)self transactionAuthor];
      *buf = 138543618;
      *&buf[4] = v12;
      *&buf[12] = 2048;
      *&buf[14] = [v8 count];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "REMSupportedVersionUpdating: VALIDATING dirty MOIDs for effectiveMinimumSupportedVersion {author: %{public}@, dirtyObjectIDs.count: %ld}", buf, 0x16u);
    }

    v13 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v10 count]);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v36 = 0;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000C8078;
    v23[3] = &unk_1008DC3D8;
    v14 = v13;
    v24 = v14;
    v25 = self;
    v28 = a4;
    v26 = buf;
    v27 = a3;
    [v10 enumerateObjectsUsingBlock:v23];
    v15 = [(RDStoreControllerManagedObjectContext *)self managedObjectIDsHavingDirtyEffectiveMinimumSupportedVersion];
    [v15 removeAllObjects];

    v16 = +[REMLogStore write];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(RDStoreControllerManagedObjectContext *)self transactionAuthor];
      v18 = *(*&buf[8] + 24);
      v19 = +[NSDate date];
      [v19 timeIntervalSinceDate:v9];
      *v29 = 138543874;
      v30 = v17;
      v31 = 2048;
      v32 = v18;
      v33 = 2048;
      v34 = v20 * 1000.0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "REMSupportedVersionUpdating: VALIDATION COMPLETED for effectiveMinimumSupportedVersion {author: %{public}@, subtrees.count: %ld, elapsed: %.4f ms}", v29, 0x20u);
    }

    v21 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)coreDataSave:(id *)a3
{
  v4.receiver = self;
  v4.super_class = RDStoreControllerManagedObjectContext;
  return [(RDStoreControllerManagedObjectContext *)&v4 save:a3];
}

- (id)latestFetchResultTokenWithError:(id *)a3
{
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  v24 = [NSString stringWithFormat:@"%@.%@", v7, v8];

  v9 = [(RDStoreControllerManagedObjectContext *)self persistentStoreCoordinator];
  if (v9)
  {
    v10 = +[NSMutableDictionary dictionary];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = [(RDStoreControllerManagedObjectContext *)self storeController];
    v12 = [v11 validPersistentStores];

    v13 = [v12 countByEnumeratingWithState:&v25 objects:v34 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v25 + 1) + 8 * i);
          v33 = v17;
          v18 = [NSArray arrayWithObjects:&v33 count:1];
          v19 = [v9 currentPersistentHistoryTokenFromStores:v18];

          if (v19)
          {
            v20 = [v17 identifier];
            [v10 setObject:v19 forKeyedSubscript:v20];
          }

          else
          {
            v20 = +[REMLogStore container];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v30 = v24;
              v31 = 2112;
              v32 = v17;
              _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[%{public}@] store has no transactions. Not getting tokens {store: %@}", buf, 0x16u);
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v25 objects:v34 count:16];
      }

      while (v14);
    }

    v21 = [[REMFetchResultToken alloc] initWithPersistentHistoryTokens:v10];
    goto LABEL_18;
  }

  v22 = +[REMLogStore container];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    sub_10076C134();
  }

  if (a3)
  {
    v10 = [NSString stringWithFormat:@"[%@] missing persistentStoreCoordinator -- Can't get REMFetchResultToken {managedObjectContext: %@}", v24, self];
    [REMError internalErrorWithDebugDescription:v10];
    *a3 = v21 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v21 = 0;
LABEL_19:

  return v21;
}

- (BOOL)canAccessAllPersistentStoresReferencedByFetchResultToken:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet set];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [(RDStoreControllerManagedObjectContext *)self storeController];
  v7 = [v6 validPersistentStores];

  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v18 + 1) + 8 * v11) identifier];
        [v5 addObject:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v13 = [v4 persistentHistoryTokens];
  v14 = [v13 allKeys];
  v15 = [NSSet setWithArray:v14];

  v16 = [v15 isSubsetOfSet:v5];
  return v16;
}

- (void)proposePurgingFileAttachmentWithSha512Sum:(id)a3 fileExtension:(id)a4 account:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v8;
  v15 = v11;
  if (v9)
  {
    v11 = [v11 stringByAppendingPathExtension:v9];
  }

  v12 = [(RDStoreControllerManagedObjectContext *)self candidateFileAttachmentSha512SumsAndExtensionsToPurgeByAccountIdentifier];
  v13 = [v12 objectForKeyedSubscript:v10];

  if (v13)
  {
    [v13 addObject:v11];
  }

  else
  {
    v13 = [NSMutableSet setWithObject:v11];
    v14 = [(RDStoreControllerManagedObjectContext *)self candidateFileAttachmentSha512SumsAndExtensionsToPurgeByAccountIdentifier];
    [v14 setObject:v13 forKeyedSubscript:v10];
  }
}

- (void)rejectPurgingFileAttachmentWithSha512Sum:(id)a3 fileExtension:(id)a4 account:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13 = v8;
  v10 = v13;
  if (a4)
  {
    v10 = [v13 stringByAppendingPathExtension:a4];
  }

  v11 = [(RDStoreControllerManagedObjectContext *)self candidateFileAttachmentSha512SumsAndExtensionsToPurgeByAccountIdentifier];
  v12 = [v11 objectForKeyedSubscript:v9];

  [v12 removeObject:v10];
}

- (id)existingFileAttachmentsMatchingSHA512Sums:(id)a3 accountID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(RDStoreControllerManagedObjectContext *)self storeController];
  v11 = [v9 UUIDString];
  v12 = [v10 storeForAccountIdentifier:v11];

  if (!v12)
  {
    v20 = [v9 UUIDString];
    v21 = [NSString stringWithFormat:@"Failed to acquire persistentStore for account identifier %@", v20];
    *a5 = [REMError internalErrorWithDebugDescription:v21];

    v22 = 0;
    goto LABEL_9;
  }

  v13 = +[NSMutableArray array];
  v14 = +[REMCDFileAttachment fetchRequest];
  v33 = v12;
  v15 = [NSArray arrayWithObjects:&v33 count:1];
  [v14 setAffectedStores:v15];

  v16 = [NSPredicate predicateWithFormat:@"%K IN %@", @"sha512Sum", v8];
  [v14 setPredicate:v16];
  [v14 setPropertiesToFetch:&off_100905830];
  [v14 setReturnsDistinctResults:1];
  v31 = 0;
  v17 = [(RDStoreControllerManagedObjectContext *)self executeFetchRequest:v14 error:&v31];
  v18 = v31;
  if (v18)
  {
    v19 = v18;
    *a5 = v18;
  }

  else
  {
    [v13 addObjectsFromArray:v17];

    v23 = +[(REMCDObject *)REMCDSavedAttachment];
    v32 = v12;
    v24 = [NSArray arrayWithObjects:&v32 count:1];
    [v23 setAffectedStores:v24];

    v25 = [NSPredicate predicateWithFormat:@"%K IN %@", @"sha512Sum", v8];
    [v23 setPredicate:v25];
    [v23 setPropertiesToFetch:&off_100905848];
    [v23 setReturnsDistinctResults:1];
    v30 = 0;
    v26 = [(RDStoreControllerManagedObjectContext *)self executeFetchRequest:v23 error:&v30];
    v27 = v30;
    if (!v27)
    {
      [v13 addObjectsFromArray:v26];

      v22 = v13;
      goto LABEL_8;
    }

    v28 = v27;
    *a5 = v27;
  }

  v22 = 0;
LABEL_8:

LABEL_9:

  return v22;
}

- (void)notifyDidMarkExtraneousAlarmsPendingToSyncUpDelete
{
  v6 = +[NSMutableDictionary dictionary];
  v3 = [(RDStoreControllerManagedObjectContext *)self transactionAuthor];

  if (v3)
  {
    v4 = [(RDStoreControllerManagedObjectContext *)self transactionAuthor];
    [v6 setObject:v4 forKeyedSubscript:@"RDStoreControllerManagedObjectContextNotificationTransactionAuthorKey"];
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"RDStoreControllerManagedObjectContextDidMarkExtraneousAlarmsPendingToSyncUpDeleteNotification" object:0 userInfo:v6];
}

- (id)_debug_managedObjectIDsSortedByTopologicalWeightsForEffectiveMinimumSupportedVersionPropagation:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() managedObjectIDsSortedByTopologicalWeightsForEffectiveMinimumSupportedVersionPropagation:v3];

  return v4;
}

@end