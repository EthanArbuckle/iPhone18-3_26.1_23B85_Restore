@interface REMCDObject
+ (BOOL)isAbstract;
+ (BOOL)needsToReFetchServerRecordValue:(id)a3;
+ (NSString)cdEntityName;
+ (REMCDObject)objectWithRecordID:(id)a3 accountID:(id)a4 context:(id)a5;
+ (id)allCloudObjectIDsInContext:(id)a3;
+ (id)allCloudObjectsInContext:(id)a3;
+ (id)allCloudObjectsPredicate;
+ (id)allDirtyCloudObjectIDsInContext:(id)a3;
+ (id)assetForData:(id)a3;
+ (id)ckIdentifierFromRecordName:(id)a3;
+ (id)entity;
+ (id)failedToSyncCountsByCKIdentifier;
+ (id)failureCountQueue;
+ (id)fetchRequest;
+ (id)getResolutionTokenMapFromRecord:(id)a3;
+ (id)ic_objectsFromObjectIDs:(id)a3 propertiesToFetch:(id)a4 relationshipKeyPathsForPrefetching:(id)a5 context:(id)a6;
+ (id)ic_resultsMatchingPredicate:(id)a3 sortDescriptors:(id)a4 resultType:(unint64_t)a5 fetchBatchSize:(unint64_t)a6 propertiesToFetch:(id)a7 relationshipKeyPathsForPrefetching:(id)a8 context:(id)a9;
+ (id)keyPathsForValuesAffectingEffectiveMinimumSupportedVersion;
+ (id)newCloudObjectForRecord:(id)a3 accountID:(id)a4 context:(id)a5;
+ (id)newObjectID;
+ (id)newObjectWithCKIdentifier:(id)a3 context:(id)a4 account:(id)a5;
+ (id)newObjectWithCKRecordName:(id)a3 context:(id)a4 account:(id)a5;
+ (id)newPlaceholderObjectForRecordID:(id)a3 account:(id)a4 context:(id)a5;
+ (id)numberOfPushAttemptsToWaitByCKIdentifier;
+ (id)objectCkZoneOwnerNameFromCKRecordZoneID:(id)a3;
+ (id)objectIDWithUUID:(id)a3;
+ (id)recordSystemFieldsTransformer;
+ (id)recordTypes;
+ (id)relationshipsEligibleForEffectiveMinimumSupportedVersionPropagationWithEntity:(id)a3;
+ (id)shareSystemFieldsTransformer;
+ (id)subclassNamesOfREMCDObjectRepresentingRootCoreDataEntities;
+ (id)subclassesOfREMCDObjectRepresentingRootCoreDataEntities;
+ (id)temporaryAssetDirectoryURL;
+ (id)temporaryAssets;
+ (id)versionsByOperationQueue;
+ (id)versionsByRecordIDByOperation;
+ (void)deleteAllTemporaryAssetFilesForAllObjects;
+ (void)deleteTemporaryAssetFilesForOperation:(id)a3;
+ (void)deleteTemporaryFilesForAsset:(id)a3;
+ (void)mergeSystemPropertiesIntoCDObject:(id)a3 fromCKRecord:(id)a4;
- (BOOL)_allowsObjectSupportedVersion;
- (BOOL)_isInICloudAccount;
- (BOOL)_validateZoneOwnerNamesWithLogPrefix:(id)a3 error:(id *)a4;
- (BOOL)canBeSharedViaICloud;
- (BOOL)hasAllMandatoryFields;
- (BOOL)hasSuccessfullyPushedLatestVersionToCloud;
- (BOOL)isConcealed;
- (BOOL)isConnectedToAccountObject:(id)a3;
- (BOOL)isInCloud;
- (BOOL)isInICloudAccount;
- (BOOL)isMergeableWithLocalObject;
- (BOOL)isOwnedByCurrentUser;
- (BOOL)isPlaceholder;
- (BOOL)isSharedReadOnly;
- (BOOL)isSharedRootObject;
- (BOOL)isSharedViaICloud;
- (BOOL)isUnsupported;
- (BOOL)isValidObject;
- (BOOL)needsToBeDeletedFromCloud;
- (BOOL)needsToBePushedToCloud;
- (BOOL)needsToDeleteShare;
- (BOOL)needsToFetchAfterServerRecordChanged:(id)a3;
- (BOOL)shouldBeDeletedFromLocalDatabase;
- (BOOL)shouldBeIgnoredForSync;
- (BOOL)validateEffectiveMinimumSupportedVersionApplyingChange:(BOOL)a3;
- (BOOL)validateForInsert:(id *)a3;
- (BOOL)validateForUpdate:(id *)a3;
- (CKRecord)ckServerRecord;
- (CKShare)ckServerShare;
- (NSData)resolutionTokenMapData;
- (NSString)accountCKIdentifier;
- (NSString)ckZoneOwnerName;
- (RDStoreControllerManagedObjectContext)storeControllerManagedObjectContext;
- (REMObjectID)remObjectID;
- (REMResolutionTokenMap)resolutionTokenMap;
- (id)allChildObjects;
- (id)ckIdentifierFromRecordName:(id)a3;
- (id)cloudAccount;
- (id)cloudKitReferenceWithRecordIDAndValidateAction:(id)a3;
- (id)createResolutionTokenMapIfNecessary;
- (id)currentUserShareParticipantID;
- (id)ic_loggingValues;
- (id)jsonDataFromResolutionTokenMap:(id)a3;
- (id)newlyCreatedRecord;
- (id)recordID;
- (id)recordName;
- (id)recordType;
- (id)recordZoneName;
- (id)remObjectIDWithError:(id *)a3;
- (id)resolutionTokenMapFromJsonData:(id)a3;
- (id)serverShareCheckingParent;
- (id)shortLoggingDescription;
- (int64_t)failedToSyncCount;
- (int64_t)isPushingSameOrLaterThanVersion:(int64_t)a3;
- (int64_t)numberOfPushAttemptsToWaitCount;
- (int64_t)parentEffectiveMinimumSupportedVersion;
- (int64_t)rd_ckDatabaseScope;
- (int64_t)versionForOperation:(id)a3;
- (void)_markDirtyForEffectiveMinimumSupportedVersionValidation;
- (void)_setCKIdentifierIfNecessary;
- (void)awakeFromFetch;
- (void)awakeFromInsert;
- (void)clearChangeCount;
- (void)clearTransformedCKServerValueCachesOnDidTurnIntoFault;
- (void)debug_lowLevelRemoveFromParent;
- (void)decrementFailureCounts;
- (void)deleteAllChildrenFromLocalDatabase;
- (void)deleteChangeTokensAndReSync;
- (void)deleteFromLocalDatabase;
- (void)didAcceptShare:(id)a3;
- (void)didChangeValueForKey:(id)a3;
- (void)didSave;
- (void)didTurnIntoFault;
- (void)fixValueBeforeMarkingForDeletionForKey:(id)a3;
- (void)fixValueBeforeUnmarkingForDeletionForKey:(id)a3;
- (void)fixValuesOfKeysWithUniqueConstraintBeforeSettingMarkedForDeletion:(BOOL)a3;
- (void)forcePushToCloud;
- (void)generateReolutionTokenMapForTestingWithKeys:(id)a3;
- (void)incrementFailureCounts;
- (void)insertCloudStateIfNeededOnAwakeFromFetch;
- (void)insertCloudStateOnAwakeFromInsert;
- (void)markForDeletion;
- (void)markObjectDirtyAfterMarkedForDeletion;
- (void)mergeDataFromRecord:(id)a3 accountID:(id)a4;
- (void)objectFailedToBePushedToCloudWithOperation:(id)a3 recordID:(id)a4 error:(id)a5;
- (void)objectWasDeletedFromCloudByAnotherDevice;
- (void)objectWasFetchedButDoesNotExistInCloud;
- (void)objectWasFetchedFromCloudWithRecord:(id)a3 accountID:(id)a4;
- (void)objectWasPushedToCloudWithOperation:(id)a3 serverRecord:(id)a4;
- (void)objectWillBePushedToCloudWithOperation:(id)a3;
- (void)prepareForDeletion;
- (void)recursiveMarkForDeletion:(BOOL)a3 usingVisitedMap:(id)a4;
- (void)recursivelyFixCrossZoneRelationshipWithVisitedMap:(id)a3 perObjectHandler:(id)a4;
- (void)resetFailureCounts;
- (void)setAccount:(id)a3;
- (void)setCkServerRecord:(id)a3;
- (void)setCkServerShare:(id)a3;
- (void)setEffectiveMinimumSupportedVersion:(int64_t)a3;
- (void)setFailedToSyncCount:(int64_t)a3;
- (void)setMinimumSupportedVersion:(int64_t)a3;
- (void)setNumberOfPushAttemptsToWaitCount:(int64_t)a3;
- (void)setResolutionTokenMap:(id)a3;
- (void)setResolutionTokenMapData:(id)a3;
- (void)setServerShareIfNewer:(id)a3;
- (void)setShouldSyncUpDeleteIfNeeded;
- (void)setVersion:(int64_t)a3 forOperation:(id)a4;
- (void)traverseObjectTreeUsingVisitedMap:(id)a3 handler:(id)a4;
- (void)unmarkForDeletion;
- (void)updateChangeCount;
- (void)updateDeletedFlagAccordingToOrphanState:(id)a3;
- (void)updateObjectWithShare:(id)a3;
- (void)updateParentReferenceIfNecessary;
- (void)updateSharedObjectOwnerName:(id)a3;
- (void)willChangeValueForKey:(id)a3;
- (void)willSave;
@end

@implementation REMCDObject

+ (id)entity
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromClass(a1);
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = +[(REMCDObject *)REMCDRootEntityObject];
  }

  else
  {
    v9.receiver = a1;
    v9.super_class = &OBJC_METACLASS___REMCDObject;
    v7 = objc_msgSendSuper2(&v9, "entity");
  }

  return v7;
}

- (void)willSave
{
  v19.receiver = self;
  v19.super_class = REMCDObject;
  [(REMCDObject *)&v19 willSave];
  v3 = [(REMCDObject *)self hack_resolutionTokenMapCopy];
  if (v3)
  {
    v4 = v3;
    v5 = [(REMCDObject *)self hack_willSaveHandled];

    if ((v5 & 1) == 0)
    {
      [(REMCDObject *)self setHack_willSaveHandled:1];
      v6 = [(REMCDObject *)self hack_resolutionTokenMapCopy];
      [(REMCDObject *)self setResolutionTokenMap:v6];
      [(REMCDObject *)self setHack_resolutionTokenMapCopy:0];
      [(REMCDObject *)self setCached_CDResolutionMap:0];
    }
  }

  v7 = [(REMCDObject *)self storeControllerManagedObjectContext];
  if (v7)
  {
    v8 = v7;
    v9 = [(REMCDObject *)self storeControllerManagedObjectContext];
    v10 = [v9 storeController];
    if (!v10)
    {
LABEL_9:

      goto LABEL_10;
    }

    v11 = v10;
    v12 = [(REMCDObject *)self storeControllerManagedObjectContext];
    v13 = [v12 storeController];
    if (![v13 supportsCoreSpotlightIndexing] || -[REMCDObject spotlightIndexCountUpdated](self, "spotlightIndexCountUpdated"))
    {

      goto LABEL_9;
    }

    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = [(REMCDObject *)self changedValues];
      v8 = [v17 allKeys];

      v9 = [NSMutableSet setWithArray:v8];
      v18 = [objc_opt_class() propertiesThatShouldTriggerReindexing];
      [v9 intersectSet:v18];

      if ([v9 count])
      {
        [-[REMCDObject performSelector:](self performSelector:{"spotlightObjectToReindex"), "incrementSpotlightIndexCount"}];
        [(REMCDObject *)self setSpotlightIndexCountUpdated:1];
      }

      goto LABEL_9;
    }
  }

LABEL_10:
  if (![(REMCDObject *)self hack_didHandleShouldSyncUpDelete])
  {
    [(REMCDObject *)self setHack_didHandleShouldSyncUpDelete:1];
    [(REMCDObject *)self setShouldSyncUpDeleteIfNeeded];
  }

  if (objc_opt_respondsToSelector())
  {
    [(REMCDObject *)self willSave_Swift];
  }

  v14 = [(REMCDObject *)self identifier];

  if (!v14)
  {
    v15 = +[REMLogStore write];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_100766BEC();
    }
  }
}

- (RDStoreControllerManagedObjectContext)storeControllerManagedObjectContext
{
  objc_opt_class();
  v3 = [(REMCDObject *)self managedObjectContext];
  v4 = REMDynamicCast();

  return v4;
}

- (void)setShouldSyncUpDeleteIfNeeded
{
  if ([(REMCDObject *)self _isInICloudAccount])
  {
    if (![(REMCDObject *)self supportsDeletionByTTL])
    {
      if ([(REMCDObject *)self markedForDeletion])
      {
        v3 = [(REMCDObject *)self managedObjectContext];
        v4 = [v3 transactionAuthor];
        v5 = [v4 hasPrefix:RDStoreControllerICCloudContextAuthor];

        if ((v5 & 1) == 0)
        {
          v6 = [(REMCDObject *)self ckDirtyFlags]| 4;

          [(REMCDObject *)self setCkDirtyFlags:v6];
        }
      }
    }
  }
}

- (void)didSave
{
  v3.receiver = self;
  v3.super_class = REMCDObject;
  [(REMCDObject *)&v3 didSave];
  [(REMCDObject *)self setHack_willSaveHandled:0];
  [(REMCDObject *)self setSpotlightIndexCountUpdated:0];
  [(REMCDObject *)self setHack_didHandleShouldSyncUpDelete:0];
  if (objc_opt_respondsToSelector())
  {
    [(REMCDObject *)self didSave_Swift];
  }

  [(REMCDObject *)self setValidateForInsertion_handledJournalEntries:0];
  [(REMCDObject *)self setValidateForUpdate_handledJournalEntries:0];
}

- (BOOL)_isInICloudAccount
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    REMDynamicCast();
  }

  else
  {
    [(REMCDObject *)self account];
  }
  v3 = ;
  if ([v3 debugSyncDisabled])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 accountTypeHost];
    v4 = [v5 isCloudKit];
  }

  return v4;
}

- (REMObjectID)remObjectID
{
  v3 = [(REMCDObject *)self identifier];
  v4 = [(REMCDObject *)self entity];
  v5 = [v4 name];

  v6 = 0;
  if (v3 && v5)
  {
    v6 = [REMObjectID objectIDWithUUID:v3 entityName:v5];
  }

  return v6;
}

- (void)awakeFromFetch
{
  v3.receiver = self;
  v3.super_class = REMCDObject;
  [(REMCDObject *)&v3 awakeFromFetch];
  if ([objc_opt_class() shouldSyncToCloud])
  {
    [(REMCDObject *)self insertCloudStateIfNeededOnAwakeFromFetch];
  }
}

- (void)insertCloudStateIfNeededOnAwakeFromFetch
{
  v3 = [(REMCDObject *)self ckCloudState];

  if (!v3)
  {
    v4 = +[REMLog cloudkit];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(REMCDObject *)self shortLoggingDescription];
      v10 = 138543362;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Nil cloud state for %{public}@. Sorry. Fixing now.", &v10, 0xCu);
    }

    v6 = [(REMCDObject *)self managedObjectContext];
    if (!v6)
    {
      sub_100767AD8();
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [NSEntityDescription insertNewObjectForEntityForName:v8 inManagedObjectContext:v6];

    [(REMCDObject *)self setCkCloudState:v9];
  }
}

- (NSData)resolutionTokenMapData
{
  [(REMCDObject *)self willAccessValueForKey:@"resolutionTokenMap"];
  [(REMCDObject *)self willAccessValueForKey:@"resolutionTokenMap_v3_JSONData"];
  v3 = [(REMCDObject *)self primitiveValueForKey:@"resolutionTokenMap_v3_JSONData"];
  [(REMCDObject *)self didAccessValueForKey:@"resolutionTokenMap_v3_JSONData"];
  [(REMCDObject *)self didAccessValueForKey:@"resolutionTokenMap"];

  return v3;
}

+ (id)subclassesOfREMCDObjectRepresentingRootCoreDataEntities
{
  if (qword_100952AE8 != -1)
  {
    sub_10076AEC0();
  }

  v3 = qword_100952AF0;

  return v3;
}

- (BOOL)isPlaceholder
{
  v3 = [(REMCDObject *)self isInICloudAccount];
  if (v3)
  {

    LOBYTE(v3) = [(REMCDObject *)self ckNeedsInitialFetchFromCloud];
  }

  return v3;
}

- (BOOL)isInICloudAccount
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(REMCDObject *)self managedObjectContext];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002AAF8;
  v5[3] = &unk_1008D9A28;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 performBlockAndWait:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (id)currentUserShareParticipantID
{
  v2 = [(REMCDObject *)self serverShareCheckingParent];
  v3 = [v2 currentUserParticipant];
  v4 = [v3 participantID];
  v5 = [v4 uppercaseString];

  return v5;
}

- (id)serverShareCheckingParent
{
  v2 = self;
  if (v2)
  {
    do
    {
      v3 = v2;
      v4 = [(REMCDObject *)v2 ckServerShare];
      v2 = [(REMCDObject *)v2 parentCloudObject];
    }

    while (!v4 && v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CKShare)ckServerShare
{
  ckServerShare = self->_ckServerShare;
  if (!ckServerShare)
  {
    v4 = [(REMCDObject *)self ckServerShareData];
    if (v4)
    {
      v5 = [objc_opt_class() shareSystemFieldsTransformer];
      v6 = [v5 reverseTransformedValue:v4];
      v7 = self->_ckServerShare;
      self->_ckServerShare = v6;
    }

    ckServerShare = self->_ckServerShare;
  }

  return ckServerShare;
}

- (void)didTurnIntoFault
{
  v3.receiver = self;
  v3.super_class = REMCDObject;
  [(REMCDObject *)&v3 didTurnIntoFault];
  [(REMCDObject *)self clearTransformedCKServerValueCachesOnDidTurnIntoFault];
}

- (void)clearTransformedCKServerValueCachesOnDidTurnIntoFault
{
  ckServerRecord = self->_ckServerRecord;
  self->_ckServerRecord = 0;

  ckServerShare = self->_ckServerShare;
  self->_ckServerShare = 0;
}

+ (id)ic_objectsFromObjectIDs:(id)a3 propertiesToFetch:(id)a4 relationshipKeyPathsForPrefetching:(id)a5 context:(id)a6
{
  v40 = a4;
  v39 = a5;
  v10 = a6;
  v11 = [v10 reduceIntoDictionaryByRootEntityNamesWithManagedObjectIDs:a3];
  if ([v11 count])
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = NSStringFromClass(a1);
    v15 = [v13 isEqualToString:v14];

    if (v15)
    {
      v34 = [a1 subclassesOfREMCDObjectRepresentingRootCoreDataEntities];
      v38 = +[NSMutableArray array];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v32 = v11;
      obj = v11;
      v35 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
      if (v35)
      {
        v33 = *v46;
        do
        {
          v16 = 0;
          do
          {
            if (*v46 != v33)
            {
              objc_enumerationMutation(obj);
            }

            v37 = v16;
            v17 = *(*(&v45 + 1) + 8 * v16);
            v18 = [obj objectForKeyedSubscript:v17];
            v41 = 0u;
            v42 = 0u;
            v43 = 0u;
            v44 = 0u;
            v19 = v34;
            v20 = [v19 countByEnumeratingWithState:&v41 objects:v49 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v42;
              do
              {
                for (i = 0; i != v21; i = i + 1)
                {
                  if (*v42 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v24 = *(*(&v41 + 1) + 8 * i);
                  v25 = [v24 cdEntityName];
                  v26 = [v25 isEqualToString:v17];

                  if (v26)
                  {
                    v27 = [v24 _ic_objectsFromObjectIDs:v18 propertiesToFetch:v40 relationshipKeyPathsForPrefetching:v39 context:v10];
                    if (v27)
                    {
                      [v38 addObjectsFromArray:v27];
                    }
                  }
                }

                v21 = [v19 countByEnumeratingWithState:&v41 objects:v49 count:16];
              }

              while (v21);
            }

            v16 = v37 + 1;
          }

          while ((v37 + 1) != v35);
          v35 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
        }

        while (v35);
      }

      v11 = v32;
    }

    else
    {
      v28 = [a1 cdEntityName];
      v29 = [v10 rootEntityNameWithEntityName:v28];

      if ([v29 length])
      {
        v30 = [v11 objectForKeyedSubscript:v29];
        if ([v30 count])
        {
          v38 = [a1 _ic_objectsFromObjectIDs:v30 propertiesToFetch:v40 relationshipKeyPathsForPrefetching:v39 context:v10];
        }

        else
        {
          v38 = &__NSArray0__struct;
        }
      }

      else
      {
        v38 = &__NSArray0__struct;
      }
    }
  }

  else
  {
    v38 = &__NSArray0__struct;
  }

  return v38;
}

+ (id)ic_resultsMatchingPredicate:(id)a3 sortDescriptors:(id)a4 resultType:(unint64_t)a5 fetchBatchSize:(unint64_t)a6 propertiesToFetch:(id)a7 relationshipKeyPathsForPrefetching:(id)a8 context:(id)a9
{
  v37 = a3;
  v14 = a4;
  v15 = a7;
  v16 = a8;
  v17 = a1;
  v18 = a9;
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v21 = NSStringFromClass(v17);
  v22 = [v20 isEqualToString:v21];

  if (v22)
  {
    v41 = v16;
    v23 = v14;
    v24 = v37;
    v40 = +[NSMutableArray array];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = [(objc_class *)v17 subclassesOfREMCDObjectRepresentingRootCoreDataEntities];
    v25 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    v26 = a6;
    if (v25)
    {
      v27 = v25;
      v28 = *v43;
      do
      {
        v29 = 0;
        do
        {
          if (*v43 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = v18;
          v36 = v18;
          v31 = a5;
          v32 = a5;
          v33 = v26;
          v34 = [*(*(&v42 + 1) + 8 * v29) _ic_resultsMatchingPredicate:v37 sortDescriptors:v23 resultType:v32 fetchBatchSize:v26 propertiesToFetch:v15 relationshipKeyPathsForPrefetching:v41 context:v36];
          if (v34)
          {
            [v40 addObjectsFromArray:v34];
          }

          v29 = v29 + 1;
          v26 = v33;
          a5 = v31;
          v18 = v30;
        }

        while (v27 != v29);
        v27 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v27);
    }

    v14 = v23;
    v16 = v41;
  }

  else
  {
    v24 = v37;
    v40 = [(objc_class *)v17 _ic_resultsMatchingPredicate:v37 sortDescriptors:v14 resultType:a5 fetchBatchSize:a6 propertiesToFetch:v15 relationshipKeyPathsForPrefetching:v16 context:v18];
  }

  return v40;
}

+ (BOOL)isAbstract
{
  v2 = +[REMLogStore write];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_100766958();
  }

  return 1;
}

- (BOOL)isConcealed
{
  if (([(REMCDObject *)self markedForDeletion]& 1) != 0)
  {
    return 1;
  }

  return [(REMCDObject *)self isUnsupported];
}

- (void)awakeFromInsert
{
  v3.receiver = self;
  v3.super_class = REMCDObject;
  [(REMCDObject *)&v3 awakeFromInsert];
  if ([objc_opt_class() shouldSyncToCloud])
  {
    [(REMCDObject *)self insertCloudStateOnAwakeFromInsert];
  }
}

- (void)willChangeValueForKey:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = REMCDObject;
  [(REMCDObject *)&v5 willChangeValueForKey:v4];
  if (objc_opt_respondsToSelector())
  {
    [(REMCDObject *)self willChangeValueForKey_Swfit:v4];
  }
}

- (void)didChangeValueForKey:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = REMCDObject;
  [(REMCDObject *)&v9 didChangeValueForKey:v4];
  if ([(REMCDObject *)self _allowsObjectSupportedVersion])
  {
    v5 = [objc_opt_class() keyPathsForValuesAffectingEffectiveMinimumSupportedVersion];
    v6 = [v5 containsObject:v4];

    if (v6)
    {
      v7 = +[REMLogStore write];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [(REMCDObject *)self remObjectID];
        *buf = 138543618;
        v11 = v4;
        v12 = 2114;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "REMSupportedVersionUpdating: didChangeValueForKey:[%{public}@] calling _markObjectDirtyForSupportedVersionValidation on {remObjectID: %{public}@}", buf, 0x16u);
      }

      [(REMCDObject *)self _markDirtyForEffectiveMinimumSupportedVersionValidation];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [(REMCDObject *)self didChangeValueForKey_Swfit:v4];
  }
}

- (void)setResolutionTokenMap:(id)a3
{
  v5 = a3;
  if (objc_opt_respondsToSelector() & 1) != 0 && (([(REMCDObject *)self methodForSelector:"shouldUseResolutionTokenMapForMergingData"])(self, "shouldUseResolutionTokenMapForMergingData"))
  {
    v6 = +[REMLogStore write];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100766AEC(self, a2, v6);
    }
  }

  else
  {
    v6 = +[REMLogStore write];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1007669EC(self, a2, v6);
    }
  }

  v7 = [(REMCDObject *)self cached_CDResolutionMap];
  if (!v7)
  {
    v8 = [(REMCDObject *)self primitiveValueForKey:@"resolutionTokenMap_v3_JSONData"];
    v7 = [(REMCDObject *)self resolutionTokenMapFromJsonData:v8];
  }

  if (([v7 isEqual:v5] & 1) == 0)
  {
    v9 = [(REMCDObject *)self jsonDataFromResolutionTokenMap:v5];
    [(REMCDObject *)self setResolutionTokenMapData:v9];
  }

  v10 = [v5 copy];
  [(REMCDObject *)self setCached_CDResolutionMap:v10];

  [(REMCDObject *)self setHack_resolutionTokenMapCopy:v5];
}

- (REMResolutionTokenMap)resolutionTokenMap
{
  [(REMCDObject *)self willAccessValueForKey:@"resolutionTokenMap"];
  [(REMCDObject *)self willAccessValueForKey:@"resolutionTokenMap_v3_JSONData"];
  v3 = [(REMCDObject *)self hack_resolutionTokenMapCopy];

  if (!v3)
  {
    v4 = [(REMCDObject *)self primitiveValueForKey:@"resolutionTokenMap_v3_JSONData"];
    v5 = [(REMCDObject *)self resolutionTokenMapFromJsonData:v4];
    [(REMCDObject *)self setHack_resolutionTokenMapCopy:v5];

    v6 = [(REMCDObject *)self hack_resolutionTokenMapCopy];
    v7 = [v6 copy];
    [(REMCDObject *)self setCached_CDResolutionMap:v7];
  }

  v8 = [(REMCDObject *)self hack_resolutionTokenMapCopy];
  [(REMCDObject *)self didAccessValueForKey:@"resolutionTokenMap_v3_JSONData"];
  [(REMCDObject *)self didAccessValueForKey:@"resolutionTokenMap"];

  return v8;
}

- (void)setResolutionTokenMapData:(id)a3
{
  v5 = a3;
  v4 = [(REMCDObject *)self primitiveValueForKey:@"resolutionTokenMap_v3_JSONData"];
  if (v4 != v5 && (!v5 || ([v4 isEqualToData:v5] & 1) == 0))
  {
    [(REMCDObject *)self willChangeValueForKey:@"resolutionTokenMapData"];
    [(REMCDObject *)self willChangeValueForKey:@"resolutionTokenMap_v3_JSONData"];
    [(REMCDObject *)self setPrimitiveValue:v5 forKey:@"resolutionTokenMap_v3_JSONData"];
    [(REMCDObject *)self didChangeValueForKey:@"resolutionTokenMap_v3_JSONData"];
    [(REMCDObject *)self didChangeValueForKey:@"resolutionTokenMap"];
    [(REMCDObject *)self setHack_resolutionTokenMapCopy:0];
    [(REMCDObject *)self setCached_CDResolutionMap:0];
  }
}

- (id)jsonDataFromResolutionTokenMap:(id)a3
{
  v3 = [a3 objc_toJSONString];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 dataUsingEncoding:4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)resolutionTokenMapFromJsonData:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [[NSString alloc] initWithData:v3 encoding:4];
    if (v4)
    {
      v5 = [REMResolutionTokenMap objc_newObjectFromJSONString:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)createResolutionTokenMapIfNecessary
{
  v3 = objc_autoreleasePoolPush();
  objc_opt_class();
  v4 = [(REMCDObject *)self resolutionTokenMap];
  v5 = REMDynamicCast();

  objc_autoreleasePoolPop(v3);
  if (!v5)
  {
    v5 = objc_alloc_init(REMResolutionTokenMap);
    [(REMCDObject *)self setResolutionTokenMap:v5];
  }

  return v5;
}

- (void)setAccount:(id)a3
{
  v4 = a3;
  v5 = [(REMCDObject *)self primitiveValueForKey:@"account"];
  [(REMCDObject *)self setPreviousAccount:v5];

  [(REMCDObject *)self willChangeValueForKey:@"account"];
  [(REMCDObject *)self setPrimitiveValue:v4 forKey:@"account"];

  [(REMCDObject *)self didChangeValueForKey:@"account"];
}

- (void)prepareForDeletion
{
  v3.receiver = self;
  v3.super_class = REMCDObject;
  [(REMCDObject *)&v3 prepareForDeletion];
  if (objc_opt_respondsToSelector())
  {
    [(REMCDObject *)self prepareForDeletion_Swift];
  }
}

- (BOOL)validateForInsert:(id *)a3
{
  v15.receiver = self;
  v15.super_class = REMCDObject;
  if (![(REMCDObject *)&v15 validateForInsert:?])
  {
    v7 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  v5 = REMDynamicCast();
  if (v5 || (objc_opt_class(), REMDynamicCast(), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
  }

  else
  {
    v13 = [(REMCDObject *)self account];

    if (v13)
    {
      goto LABEL_6;
    }

    v6 = +[REMLogStore write];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_100766C98(self, v6);
    }
  }

LABEL_6:
  v7 = [(REMCDObject *)self _validateZoneOwnerNamesWithLogPrefix:@"Inserting" error:a3];
LABEL_8:
  if (![(REMCDObject *)self validateForInsertion_handledJournalEntries]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v8 = self;
    v14 = 0;
    v9 = [(REMCDObject *)v8 validateForInsert_Swift:&v14];
    v10 = v14;
    if ((v9 & 1) == 0)
    {
      v11 = +[REMLogStore write];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_100766D7C();
      }
    }

    [(REMCDObject *)v8 setValidateForInsertion_handledJournalEntries:1];
    v7 &= v9;
  }

  return v7;
}

- (BOOL)validateForUpdate:(id *)a3
{
  v24.receiver = self;
  v24.super_class = REMCDObject;
  if (![(REMCDObject *)&v24 validateForUpdate:?])
  {
    goto LABEL_9;
  }

  v5 = [(REMCDObject *)self previousAccount];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = v5;
  v7 = [(REMCDObject *)self account];
  if (!v7)
  {

    goto LABEL_11;
  }

  v8 = v7;
  v9 = [(REMCDObject *)self previousAccount];
  v10 = [(REMCDObject *)self account];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
LABEL_11:
    LOBYTE(a3) = [(REMCDObject *)self _validateZoneOwnerNamesWithLogPrefix:@"Updating" error:a3];
    goto LABEL_12;
  }

  v12 = +[REMLogStore write];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_100766DF0(self, v12);
  }

  if (a3)
  {
    v13 = [(REMCDObject *)self previousAccount];
    v14 = [v13 remObjectID];
    v15 = [(REMCDObject *)self account];
    v16 = [v15 remObjectID];
    v17 = [(REMCDObject *)self remObjectID];
    *a3 = [REMError validationErrorMoveFromAccount:v14 toAccount:v16 objectID:v17];

LABEL_9:
    LOBYTE(a3) = 0;
  }

LABEL_12:
  if (![(REMCDObject *)self validateForUpdate_handledJournalEntries]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v18 = self;
    v23 = 0;
    v19 = [(REMCDObject *)v18 validateForUpdate_Swift:&v23];
    v20 = v23;
    if ((v19 & 1) == 0)
    {
      v21 = +[REMLogStore write];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        sub_100766ED4();
      }
    }

    [(REMCDObject *)v18 setValidateForUpdate_handledJournalEntries:1];
    LOBYTE(a3) = a3 & v19;
  }

  return a3;
}

- (BOOL)_validateZoneOwnerNamesWithLogPrefix:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(REMCDObject *)self parentCloudObject];
  if (v7)
  {
    v8 = [(REMCDObject *)self ckZoneOwnerName];
    if (!v8)
    {
      v8 = CKCurrentUserDefaultName;
    }

    v9 = [v7 ckZoneOwnerName];
    if (!v9)
    {
      v9 = CKCurrentUserDefaultName;
    }

    v10 = [(NSString *)v8 isEqual:v9];
    if ((v10 & 1) == 0)
    {
      v11 = [v7 _parentZoneMismatchErrorDebugDescription];
      v12 = +[REMLogStore write];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v18 = objc_opt_class();
        v20 = v18;
        v21 = [(REMCDObject *)self remObjectID];
        v16 = objc_opt_class();
        v19 = v16;
        [v7 remObjectID];
        *buf = 138545154;
        v23 = v6;
        v24 = 2114;
        v25 = v18;
        v26 = 2114;
        v27 = v21;
        v28 = 2114;
        v29 = v8;
        v30 = 2114;
        v31 = v16;
        v33 = v32 = 2114;
        v17 = v33;
        v34 = 2114;
        v35 = v9;
        v36 = 2114;
        v37 = v11;
        _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "Validation Failure: %{public}@ {%{public}@, %{public}@, %{public}@} and its parent {%{public}@, %{public}@, %{public}@, %{public}@} have different zones", buf, 0x52u);
      }

      if (a4)
      {
        v13 = [(REMCDObject *)self remObjectID];
        v14 = [v7 remObjectID];
        *a4 = [REMError validationErrorDifferentZoneObjectID:v13 zoneOwnerName:v8 parentObjectID:v14 parentZoneOwnerName:v9];
      }
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)updateDeletedFlagAccordingToOrphanState:(id)a3
{
  v4 = [(REMCDObject *)self isConnectedToAccountObject:a3];
  if (v4 != [(REMCDObject *)self markedForDeletion])
  {
    v5 = [(REMCDObject *)self changedValues];
    v6 = [v5 allKeys];
    v7 = [v6 containsObject:@"markedForDeletion"];

    if (!v7)
    {
      v11 = +[REMLogStore write];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_100766F48(self);
      }

      goto LABEL_19;
    }
  }

  if (v4)
  {
    v8 = +[REMLogStore write];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [NSNumber numberWithBool:0];
      v10 = [(REMCDObject *)self remObjectID];
      v21 = 138543618;
      v22 = v9;
      v23 = 2114;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Begin recursiveMarkForDeletion:%{public}@ from %{public}@", &v21, 0x16u);
    }

    v11 = +[NSMutableSet set];
    v12 = self;
    v13 = 0;
LABEL_13:
    [(REMCDObject *)v12 recursiveMarkForDeletion:v13 usingVisitedMap:v11];
LABEL_19:

    return;
  }

  if (![(REMCDObject *)self shouldMarkAsDeletedInsteadOfDeletingImmediately])
  {
    v17 = +[REMLogStore write];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [(REMCDObject *)self remObjectID];
      v21 = 138543362;
      v22 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Deleting orphan object %{public}@ permanently from local database", &v21, 0xCu);
    }

    v11 = [(REMCDObject *)self managedObjectContext];
    [v11 deleteObject:self];
    goto LABEL_19;
  }

  if (![(REMCDObject *)self isSharedRootObject]|| [(REMCDObject *)self isOwnedByCurrentUser])
  {
    v14 = +[REMLogStore write];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [NSNumber numberWithBool:1];
      v16 = [(REMCDObject *)self remObjectID];
      v21 = 138543618;
      v22 = v15;
      v23 = 2114;
      v24 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Begin recursiveMarkForDeletion:%{public}@ from %{public}@", &v21, 0x16u);
    }

    v11 = +[NSMutableSet set];
    v12 = self;
    v13 = 1;
    goto LABEL_13;
  }

  v19 = +[REMLogStore write];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [(REMCDObject *)self remObjectID];
    v21 = 138543362;
    v22 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Mark shared-to-me root %{public}@ for deletion and recursively deleted all child objects from local database", &v21, 0xCu);
  }

  [(REMCDObject *)self markForDeletion];
  [(REMCDObject *)self deleteAllChildrenFromLocalDatabase];
}

- (void)traverseObjectTreeUsingVisitedMap:(id)a3 handler:(id)a4
{
  v40 = a3;
  v39 = a4;
  v6 = [(REMCDObject *)self remObjectID];
  if (!v6)
  {
    obj = +[REMLogStore write];
    if (os_log_type_enabled(obj, OS_LOG_TYPE_FAULT))
    {
      sub_100767078(self);
    }

    goto LABEL_34;
  }

  if ([v40 containsObject:v6])
  {
    obj = +[REMLogStore write];
    if (os_log_type_enabled(obj, OS_LOG_TYPE_FAULT))
    {
      sub_100766FD4(self);
    }

LABEL_34:

    goto LABEL_35;
  }

  v7 = v39[2](v39, self);
  [v40 addObject:v6];
  if (v7)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v8 = [(REMCDObject *)self entity];
    v9 = [v8 relationshipsByName];

    obj = v9;
    v10 = [v9 countByEnumeratingWithState:&v47 objects:v56 count:16];
    if (!v10)
    {
      goto LABEL_34;
    }

    v11 = v10;
    v32 = v6;
    v12 = *v48;
    v33 = *v48;
    while (1)
    {
      v13 = 0;
      v34 = v11;
      do
      {
        if (*v48 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v47 + 1) + 8 * v13);
        v15 = [(REMCDObject *)self entity];
        v16 = [v15 relationshipsByName];
        v17 = [v16 objectForKeyedSubscript:v14];

        v41 = v17;
        if ([v17 deleteRule] == 2)
        {
          v36 = v13;
          v38 = v14;
          v18 = [(REMCDObject *)self objectIDsForRelationshipNamed:v14];
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v19 = [v18 countByEnumeratingWithState:&v43 objects:v55 count:16];
          if (!v19)
          {
            goto LABEL_30;
          }

          v20 = v19;
          v21 = *v44;
          while (1)
          {
            for (i = 0; i != v20; i = i + 1)
            {
              if (*v44 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v43 + 1) + 8 * i);
              v24 = [(REMCDObject *)self managedObjectContext];
              v42 = 0;
              v25 = [v24 existingObjectWithID:v23 error:&v42];
              v26 = v42;

              if (v26)
              {
                v27 = +[REMLogStore write];
                if (!os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
                {
                  goto LABEL_28;
                }

                v28 = [(REMCDObject *)self entity];
                v29 = [v28 name];
                *buf = 138543618;
                v52 = v38;
                v53 = 2114;
                v54 = v29;
                _os_log_fault_impl(&_mh_execute_header, v27, OS_LOG_TYPE_FAULT, "Failed to fetch objects in {relationship: %{public}@} of object {type: %{public}@}", buf, 0x16u);
              }

              else
              {
                objc_opt_class();
                v27 = REMDynamicCast();
                if (v27 && [(REMCDObject *)self shouldCascadeMarkAsDeleteInto:v27 forRelationship:v41])
                {
                  [v27 traverseObjectTreeUsingVisitedMap:v40 handler:v39];
                  goto LABEL_28;
                }

                v28 = +[REMLogStore write];
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                {
                  v37 = [v27 remObjectID];
                  v30 = [v25 objectID];
                  *buf = 138412546;
                  v52 = v37;
                  v53 = 2112;
                  v54 = v30;
                  v31 = v30;
                  _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "Skipped traverseObjectTreeUsingVisitedMap for {remObjectID: %@, managedObjectID: %@}", buf, 0x16u);
                }
              }

LABEL_28:
            }

            v20 = [v18 countByEnumeratingWithState:&v43 objects:v55 count:16];
            if (!v20)
            {
LABEL_30:

              v12 = v33;
              v11 = v34;
              v13 = v36;
              break;
            }
          }
        }

        v13 = v13 + 1;
      }

      while (v13 != v11);
      v11 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
      if (!v11)
      {
        v6 = v32;
        goto LABEL_34;
      }
    }
  }

LABEL_35:
}

- (void)recursiveMarkForDeletion:(BOOL)a3 usingVisitedMap:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000AABF4;
  v4[3] = &unk_1008DB808;
  v5 = a3;
  v4[4] = self;
  [(REMCDObject *)self traverseObjectTreeUsingVisitedMap:a4 handler:v4];
}

- (void)deleteAllChildrenFromLocalDatabase
{
  v3 = +[NSMutableSet set];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000AAD84;
  v4[3] = &unk_1008DB830;
  v4[4] = self;
  [(REMCDObject *)self traverseObjectTreeUsingVisitedMap:v3 handler:v4];
}

- (id)allChildObjects
{
  v3 = +[NSMutableArray array];
  v4 = +[NSMutableSet set];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000AAEEC;
  v9[3] = &unk_1008DB858;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [(REMCDObject *)self traverseObjectTreeUsingVisitedMap:v4 handler:v9];

  v6 = v10;
  v7 = v5;

  return v5;
}

- (void)fixValueBeforeMarkingForDeletionForKey:(id)a3
{
  v4 = a3;
  if (([v4 isEqualToString:@"identifier"] & 1) == 0)
  {
    if ([v4 isEqualToString:@"externalIdentifier"])
    {
      v5 = [(REMCDObject *)self externalIdentifier];
      v6 = [REMExternalSyncMetadataUtils encodeExternalIdentifierForMarkedForDeletionObject:v5];

      [(REMCDObject *)self setValue:v6 forKey:v4];
LABEL_8:

      goto LABEL_9;
    }

    v7 = [(REMCDObject *)self entity];
    v8 = [v7 attributesByName];
    v9 = [v8 objectForKeyedSubscript:v4];
    v10 = [v9 attributeType];

    if (v10 != 700)
    {
      v6 = +[REMLogStore write];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        sub_1007671E4(v4, self);
      }

      goto LABEL_8;
    }

    [(REMCDObject *)self setValue:0 forKey:v4];
  }

LABEL_9:
}

- (void)fixValueBeforeUnmarkingForDeletionForKey:(id)a3
{
  v6 = a3;
  if ([v6 isEqualToString:@"externalIdentifier"])
  {
    v4 = [(REMCDObject *)self externalIdentifier];
    v5 = [REMExternalSyncMetadataUtils decodeExternalIdentifierForMarkedForDeletionObject:v4];

    [(REMCDObject *)self setValue:v5 forKey:v6];
  }
}

- (BOOL)_allowsObjectSupportedVersion
{
  if ([(REMCDObject *)self shouldMarkAsDeletedInsteadOfDeletingImmediately])
  {
    return 1;
  }

  v3 = [objc_opt_class() cdEntityName];
  v4 = +[REMCDAccount cdEntityName];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (BOOL)isUnsupported
{
  [(REMCDObject *)self effectiveMinimumSupportedVersion];

  return rem_isUnsupportedVersionByRuntime();
}

- (void)setMinimumSupportedVersion:(int64_t)a3
{
  if ([(REMCDObject *)self _allowsObjectSupportedVersion])
  {
    v5 = [(REMCDObject *)self minimumSupportedAppVersion];
    v6 = +[REMLogStore write];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [NSNumber numberWithInteger:a3];
      v8 = [NSNumber numberWithInteger:v5];
      v9 = [(REMCDObject *)self remObjectID];
      v13 = 138543874;
      v14 = v7;
      v15 = 2114;
      v16 = v8;
      v17 = 2114;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "REMSupportedVersionUpdating: setMinimumSupportedVersion {newValue: %{public}@, oldValue: %{public}@, remObjectID: %{public}@}", &v13, 0x20u);
    }

    if (v5 != a3)
    {
      [(REMCDObject *)self setMinimumSupportedAppVersion:a3];
      v10 = +[REMLogStore write];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [(REMCDObject *)self remObjectID];
        v13 = 138543362;
        v14 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "REMSupportedVersionUpdating: setMinimumSupportedVersion: calling _markObjectDirtyForSupportedVersionValidation on {remObjectID: %{public}@}", &v13, 0xCu);
      }

      [(REMCDObject *)self _markDirtyForEffectiveMinimumSupportedVersionValidation];
    }
  }

  else
  {
    v12 = +[REMLogStore write];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_100767288();
    }
  }
}

- (void)setEffectiveMinimumSupportedVersion:(int64_t)a3
{
  if ([(REMCDObject *)self _allowsObjectSupportedVersion])
  {

    [(REMCDObject *)self setEffectiveMinimumSupportedAppVersion:a3];
  }

  else
  {
    v5 = +[REMLogStore write];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_100767334();
    }
  }
}

- (int64_t)parentEffectiveMinimumSupportedVersion
{
  v2 = +[REMLogStore write];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_1007673E0();
  }

  return kREMSupportedVersionUnset;
}

+ (id)keyPathsForValuesAffectingEffectiveMinimumSupportedVersion
{
  v2 = +[REMLogStore write];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_100767498();
  }

  v3 = +[NSSet set];

  return v3;
}

- (void)_markDirtyForEffectiveMinimumSupportedVersionValidation
{
  if (![(REMCDObject *)self isDeleted])
  {
    v5 = [(REMCDObject *)self storeControllerManagedObjectContext];
    v3 = [v5 managedObjectIDsHavingDirtyEffectiveMinimumSupportedVersion];

    if (!v3)
    {
      sub_100767550(self);
    }

    v4 = [(REMCDObject *)self ic_permanentObjectID];
    [v3 addObject:v4];
    goto LABEL_7;
  }

  v3 = +[REMLogStore write];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(REMCDObject *)self ic_loggingIdentifier];
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "REMSupportedVersionUpdating: Not actually adding dirty object to managedObjectIDsHavingDirtyEffectiveMinimumSupportedVersion because this CoreData object is being deleted {ic_loggingIdentifier: %{public}@}", &v6, 0xCu);
LABEL_7:
  }
}

+ (id)relationshipsEligibleForEffectiveMinimumSupportedVersionPropagationWithEntity:(id)a3
{
  v3 = a3;
  v16 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 relationshipsByName];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v3 relationshipsByName];
        v11 = [v10 objectForKeyedSubscript:v9];

        v12 = [v11 destinationEntity];
        v13 = [v12 name];
        v14 = [v13 rem_hasPrefixCaseInsensitive:@"REMCD"];

        if (v14 && [v11 deleteRule] == 2)
        {
          [v16 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  return v16;
}

- (BOOL)validateEffectiveMinimumSupportedVersionApplyingChange:(BOOL)a3
{
  v3 = a3;
  v5 = [(REMCDObject *)self _allowsObjectSupportedVersion];
  if (!v5)
  {
    v10 = +[REMLogStore write];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_100767620();
    }

    goto LABEL_13;
  }

  v6 = [(REMCDObject *)self minimumSupportedVersion];
  v7 = [(REMCDObject *)self parentEffectiveMinimumSupportedVersion];
  v8 = [(REMCDObject *)self effectiveMinimumSupportedVersion];
  if (v7 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (v8 != v9)
  {
    v11 = v8;
    if (v3)
    {
      [(REMCDObject *)self setEffectiveMinimumSupportedVersion:?];
    }

    v10 = +[REMLogStore write];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = [(REMCDObject *)self remObjectID];
      v14 = 134218754;
      v15 = v6;
      v16 = 2048;
      v17 = v7;
      v18 = 2048;
      v19 = v11;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "REMSupportedVersionUpdating: validateEffectiveMinimumSupportedVersion indicates that my descendants should also be validated since my effective version changed {myVersion: %lld, parentEffectiveVersion: %lld, oldValue: %lld, remObjectID: %{public}@}", &v14, 0x2Au);
    }

LABEL_13:

    return v5;
  }

  return 0;
}

- (id)remObjectIDWithError:(id *)a3
{
  v4 = [(REMCDObject *)self remObjectID];
  v5 = v4;
  if (a3 && !v4)
  {
    *a3 = [REMError internalErrorWithDebugDescription:@"Failed to create REMObjectID: REMCDObject.identifier or REMCDObject.entity.name is nil."];
  }

  return v5;
}

+ (id)newObjectID
{
  v3 = +[NSUUID UUID];
  v4 = [a1 objectIDWithUUID:v3];

  return v4;
}

+ (id)objectIDWithUUID:(id)a3
{
  v4 = a3;
  v5 = [a1 cdEntityName];
  v6 = [REMObjectID objectIDWithUUID:v4 entityName:v5];

  return v6;
}

+ (NSString)cdEntityName
{
  v2 = +[REMLogStore write];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_1007676CC();
  }

  return @"REMCDObject";
}

+ (id)recordTypes
{
  v3 = objc_opt_class();
  v4 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"Abstract method called [%@ %@]", v3, v4];

  return 0;
}

- (void)insertCloudStateOnAwakeFromInsert
{
  v3 = [(REMCDObject *)self managedObjectContext];
  if (!v3)
  {
    sub_100767AD8();
  }

  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [NSEntityDescription insertNewObjectForEntityForName:v5 inManagedObjectContext:v3];

  [(REMCDObject *)self setCkCloudState:v6];
}

- (id)cloudAccount
{
  v2 = [(REMCDObject *)self parentCloudObject];
  v3 = [v2 cloudAccount];

  if (!v3)
  {
    v4 = +[REMLog cloudkit];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100767B3C();
    }
  }

  return v3;
}

- (NSString)accountCKIdentifier
{
  objc_opt_class();
  v3 = REMDynamicCast();
  if (v3)
  {
    v4 = [(REMCDObject *)self ckIdentifier];
  }

  else
  {
    v5 = [(REMCDObject *)self account];
    v4 = [v5 ckIdentifier];
  }

  return v4;
}

- (void)_setCKIdentifierIfNecessary
{
  v3 = [(REMCDObject *)self ckIdentifier];

  if (!v3)
  {
    v4 = [(REMCDObject *)self identifier];
    v5 = [v4 UUIDString];

    if (!v5)
    {
      v6 = +[REMLog cloudkit];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        sub_100767BE8();
      }
    }

    [(REMCDObject *)self setCkIdentifier:v5];
  }

  v7 = [(REMCDObject *)self ckIdentifier];

  if (!v7)
  {
    v8 = +[REMLog cloudkit];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_100767CA4();
    }
  }
}

- (void)updateChangeCount
{
  if ([(REMCDObject *)self _isInICloudAccount])
  {
    v3 = [(REMCDObject *)self managedObjectContext];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000AEEAC;
    v4[3] = &unk_1008D9990;
    v4[4] = self;
    [v3 performBlockAndWait:v4];
  }
}

- (void)clearChangeCount
{
  v3 = [(REMCDObject *)self ckCloudState];
  [v3 setCurrentLocalVersion:0];

  v4 = [(REMCDObject *)self ckCloudState];
  [v4 setLatestVersionSyncedToCloud:0];

  v5 = [(REMCDObject *)self ckCloudState];
  [v5 setLocalVersionDate:0];
}

+ (id)ckIdentifierFromRecordName:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@"/"];
  v5 = v3;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [v3 substringFromIndex:v4 + 1];
  }

  return v5;
}

- (id)ckIdentifierFromRecordName:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() ckIdentifierFromRecordName:v3];

  return v4;
}

+ (REMCDObject)objectWithRecordID:(id)a3 accountID:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 recordName];
  v12 = [a1 ckIdentifierFromRecordName:v11];

  if (!v12)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  v13 = REMDynamicCast();
  v14 = [v13 batchFetchHelper];
  v15 = v14;
  if (!v14)
  {
LABEL_14:
    v20 = [NSPredicate predicateWithFormat:@"ckIdentifier == %@", v12];
    v21 = [a1 ic_objectsMatchingPredicate:v20 context:v10];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000AF614;
    v37[3] = &unk_1008DB9D0;
    v38 = v9;
    v16 = [v21 ic_objectPassingTest:v37];

    if (!v16)
    {
      goto LABEL_30;
    }

    goto LABEL_15;
  }

  if ([v14 isMissingCKIdentifier:v12 accountIdentifier:v9])
  {
    v16 = +[REMLog cloudkit];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v40 = v12;
      v41 = 2114;
      v42 = v9;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "(object.ckIdentifier: %{public}@, accountID: %{public}@) is in batchFetchHelper missing cache", buf, 0x16u);
    }

    goto LABEL_9;
  }

  v17 = [v15 cachedManagedObjectForCKIdentifier:v12 accountIdentifier:v9];
  if (!v17)
  {
    v19 = +[REMLog cloudkit];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v40 = v12;
      v41 = 2114;
      v42 = v9;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "(object.ckIdentifier: %{public}@, accountID: %{public}@) does not correspond to a batchFetchHelper cachedManagedObject", buf, 0x16u);
    }

    goto LABEL_14;
  }

  v18 = v17;
  objc_opt_class();
  v16 = REMDynamicCast();

  if (!v16)
  {
    goto LABEL_14;
  }

  if (([v16 isDeleted]& 1) != 0)
  {
LABEL_9:

LABEL_10:
    v16 = 0;
    goto LABEL_30;
  }

LABEL_15:
  v22 = [v16 account];

  if (!v22)
  {
    v23 = +[REMLog cloudkit];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v40 = v12;
      v41 = 2114;
      v42 = v9;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "objectWithRecordID: (object.ckIdentifier: %{public}@, accountID: %{public}@) with nil account", buf, 0x16u);
    }

    v24 = [REMCDAccount accountWithCKIdentifier:v9 context:v10];
    [v16 setAccount:v24];
    v25 = [v16 account];

    if (!v25)
    {
      v26 = +[REMLog cloudkit];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_100767D60();
      }
    }
  }

  v27 = [v8 zoneID];
  v28 = [v27 ownerName];

  v29 = [v16 ckZoneOwnerName];
  v30 = v29;
  v31 = CKCurrentUserDefaultName;
  if (v29)
  {
    v31 = v29;
  }

  v32 = v31;

  if (([v28 isEqualToString:v32] & 1) == 0)
  {
    v33 = +[REMLog cloudkit];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v35 = [v8 recordName];
      v36 = [v16 ckZoneOwnerName];
      *buf = 138543874;
      v40 = v35;
      v41 = 2114;
      v42 = v28;
      v43 = 2114;
      v44 = v36;
      _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "objectWithCKIdentifier zone mismatched: { recordName: %{public}@, zoneOwner: %{public}@ }, but found zoneOwner: %{public}@", buf, 0x20u);
    }
  }

LABEL_30:

  return v16;
}

+ (id)failureCountQueue
{
  if (qword_100952A38 != -1)
  {
    sub_100767DDC();
  }

  v3 = qword_100952A30;

  return v3;
}

+ (id)failedToSyncCountsByCKIdentifier
{
  if (qword_100952A48 != -1)
  {
    sub_100767DF0();
  }

  v3 = qword_100952A40;

  return v3;
}

- (int64_t)failedToSyncCount
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [objc_opt_class() failureCountQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AF878;
  v6[3] = &unk_1008DBA38;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)setFailedToSyncCount:(int64_t)a3
{
  v5 = [objc_opt_class() failureCountQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AF9C4;
  v6[3] = &unk_1008DB318;
  v6[4] = self;
  v6[5] = a3;
  dispatch_sync(v5, v6);
}

+ (id)numberOfPushAttemptsToWaitByCKIdentifier
{
  if (qword_100952A58 != -1)
  {
    sub_100767E7C();
  }

  v3 = qword_100952A50;

  return v3;
}

- (int64_t)numberOfPushAttemptsToWaitCount
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [objc_opt_class() failureCountQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AFBE4;
  v6[3] = &unk_1008DBA38;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)setNumberOfPushAttemptsToWaitCount:(int64_t)a3
{
  v5 = [objc_opt_class() failureCountQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AFD30;
  v6[3] = &unk_1008DB318;
  v6[4] = self;
  v6[5] = a3;
  dispatch_sync(v5, v6);
}

- (void)incrementFailureCounts
{
  if (![(REMCDObject *)self numberOfPushAttemptsToWaitCount])
  {
    [(REMCDObject *)self setNumberOfPushAttemptsToWaitCount:3];
  }

  [(REMCDObject *)self setFailedToSyncCount:[(REMCDObject *)self failedToSyncCount]+ 1];
  v3 = +[REMLog cloudkit];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [(REMCDObject *)self failedToSyncCount];
    v7 = [(REMCDObject *)self failedToSyncCount];
    v8 = [(REMCDObject *)self loggingDescription];
    v9 = 138413570;
    v10 = v5;
    v11 = 1024;
    v12 = v6;
    v13 = 1024;
    v14 = 3;
    v15 = 1024;
    v16 = v7;
    v17 = 1024;
    v18 = 6;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ failed to be pushed. Incrementing failedToSyncCount, failure (%d/%d) before being temporarily ignored. (%d/%d) before deleting change tokens and full re-sync. %@", &v9, 0x2Eu);
  }

  if ([(REMCDObject *)self failedToSyncCount]>= 6)
  {
    [(REMCDObject *)self clearServerRecord];
    [(REMCDObject *)self deleteChangeTokensAndReSync];
  }
}

- (void)decrementFailureCounts
{
  if ([(REMCDObject *)self numberOfPushAttemptsToWaitCount]>= 1)
  {
    [(REMCDObject *)self setNumberOfPushAttemptsToWaitCount:[(REMCDObject *)self numberOfPushAttemptsToWaitCount]- 1];
  }

  v3 = +[REMLog cloudkit];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [(REMCDObject *)self numberOfPushAttemptsToWaitCount];
    v7 = [(REMCDObject *)self loggingDescription];
    v8 = 138412802;
    v9 = v5;
    v10 = 1024;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Decrementing failure counts for %@, %d push attempts before it is retried. %@", &v8, 0x1Cu);
  }
}

- (void)deleteChangeTokensAndReSync
{
  v3 = +[REMLog cloudkit];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100767F08();
  }

  v4 = [objc_opt_class() failureCountQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B015C;
  block[3] = &unk_1008D9990;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)resetFailureCounts
{
  [(REMCDObject *)self setFailedToSyncCount:0];

  [(REMCDObject *)self setNumberOfPushAttemptsToWaitCount:0];
}

- (BOOL)shouldBeIgnoredForSync
{
  if ([(REMCDObject *)self failedToSyncCount]< 3 || [(REMCDObject *)self numberOfPushAttemptsToWaitCount]< 1)
  {
    return 0;
  }

  v3 = +[REMLog cloudkit];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [(REMCDObject *)self failedToSyncCount];
    v7 = [(REMCDObject *)self numberOfPushAttemptsToWaitCount];
    v8 = [(REMCDObject *)self loggingDescription];
    v10 = 138413314;
    v11 = v5;
    v12 = 1024;
    v13 = v6;
    v14 = 1024;
    v15 = 3;
    v16 = 1024;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ failed to be pushed %d times. Max number of retries is %d. It will now be ignored for %d push attempts. %@", &v10, 0x28u);
  }

  return 1;
}

- (id)recordName
{
  [(REMCDObject *)self _setCKIdentifierIfNecessary];
  v3 = [(REMCDObject *)self ckIdentifier];

  if (v3)
  {
    v4 = [(REMCDObject *)self recordType];
    v5 = [(REMCDObject *)self ckIdentifier];
    v6 = [NSString stringWithFormat:@"%@/%@", v4, v5];
  }

  else
  {
    v7 = +[REMLog cloudkit];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100767FD8();
    }

    v6 = &stru_1008FE8A0;
  }

  return v6;
}

- (id)recordZoneName
{
  v3 = objc_opt_class();
  v4 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"Abstract method called [%@ %@]", v3, v4];

  return @"Reminders";
}

- (NSString)ckZoneOwnerName
{
  [(REMCDObject *)self willAccessValueForKey:@"ckZoneOwnerName"];
  v3 = [(REMCDObject *)self primitiveCkZoneOwnerName];
  [(REMCDObject *)self didAccessValueForKey:@"ckZoneOwnerName"];
  if (!v3)
  {
    v4 = [(REMCDObject *)self parentCloudObject];
    v5 = v4;
    if (v4)
    {
      v3 = [v4 ckZoneOwnerName];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)recordID
{
  v3 = [(REMCDObject *)self managedObjectContext];

  if (!v3)
  {
    v7 = +[REMLog cloudkit];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_10076828C();
    }

    goto LABEL_16;
  }

  v4 = [(REMCDObject *)self recordName];

  if (!v4)
  {
    v7 = +[REMLog cloudkit];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1007681E4();
    }

    goto LABEL_16;
  }

  v5 = [(REMCDObject *)self recordName];
  v6 = [v5 isEqualToString:&stru_1008FE8A0];

  if (v6)
  {
    v7 = +[REMLog cloudkit];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_10076813C();
    }

LABEL_16:

    v15 = 0;
    goto LABEL_17;
  }

  v8 = [(REMCDObject *)self recordZoneName];

  if (!v8)
  {
    v7 = +[REMLog cloudkit];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100768094();
    }

    goto LABEL_16;
  }

  v9 = [(REMCDObject *)self ckZoneOwnerName];
  if (!v9)
  {
    v9 = CKCurrentUserDefaultName;
  }

  v10 = [CKRecordZoneID ic_defaultDatabaseScopeForOwnerName:v9];
  v11 = [CKRecordZoneID alloc];
  v12 = [(REMCDObject *)self recordZoneName];
  v13 = [v11 initWithZoneName:v12 ownerName:v9 databaseScope:v10];

  v14 = [(REMCDObject *)self recordName];
  v15 = [[CKRecordID alloc] initWithRecordName:v14 zoneID:v13];

LABEL_17:

  return v15;
}

- (int64_t)rd_ckDatabaseScope
{
  v2 = [(REMCDObject *)self recordID];
  v3 = [v2 rd_ckDatabaseScope];

  return v3;
}

- (id)recordType
{
  v3 = objc_opt_class();
  v4 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"Abstract method called [%@ %@]", v3, v4];

  return 0;
}

- (BOOL)needsToBeDeletedFromCloud
{
  if ([(REMCDObject *)self supportsDeletionByTTL]|| ![(REMCDObject *)self isInCloud]|| ![(REMCDObject *)self markedForDeletion])
  {
    return 0;
  }

  return [(REMCDObject *)self shouldSyncUpDelete];
}

- (BOOL)isValidObject
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(REMCDObject *)self managedObjectContext];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000B09C0;
  v5[3] = &unk_1008D9A28;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 performBlockAndWait:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

+ (id)newCloudObjectForRecord:(id)a3 accountID:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [REMCDAccount cloudKitAccountWithCKIdentifier:v9 context:v10];
  if (v11)
  {
    v12 = [a1 newCloudObjectForRecord:v8 account:v11 context:v10];
  }

  else
  {
    v13 = +[REMLog cloudkit];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v15 = [v8 recordID];
      v16 = [v15 recordName];
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = 138543874;
      v20 = v16;
      v21 = 2114;
      v22 = v9;
      v23 = 2114;
      v24 = v18;
      _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "Cannot get CK account for newCloudObjectForRecord {record: %{public}@, accountID: %{public}@, class: %{public}@}", &v19, 0x20u);
    }

    v12 = 0;
  }

  return v12;
}

+ (id)newObjectWithCKRecordName:(id)a3 context:(id)a4 account:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a1 ckIdentifierFromRecordName:a3];
  v11 = [a1 newObjectWithCKIdentifier:v10 context:v9 account:v8];

  return v11;
}

+ (id)newObjectWithCKIdentifier:(id)a3 context:(id)a4 account:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![a1 isAbstract])
  {
    v11 = [a1 cdEntityName];
    if (!v11)
    {
      v13 = +[REMLog cloudkit];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        sub_100768334();
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v41 = sub_1000B1204;
      *v42 = sub_1000B1214;
      *&v42[8] = [a1 entity];
      v14 = *(*&buf[8] + 40);
      if (!v14)
      {
        v39[0] = _NSConcreteStackBlock;
        v39[1] = 3221225472;
        v39[2] = sub_1000B121C;
        v39[3] = &unk_1008DB948;
        v39[4] = buf;
        v39[5] = a1;
        [v9 performBlockAndWait:v39];
        v14 = *(*&buf[8] + 40);
      }

      v11 = [v14 name];
      if (!v11)
      {
        v33 = +[REMLog cloudkit];
        sub_100768370(v33);
      }

      _Block_object_dispose(buf, 8);
    }

    v15 = +[REMCDAccount cdEntityName];
    v16 = [v11 isEqual:v15];

    if (v16)
    {
      v17 = +[REMLog cloudkit];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        sub_1007686A8();
      }
    }

    else if (v10)
    {
      v18 = [v10 ckIdentifier];
      v19 = v18 == 0;

      if (!v19)
      {
        v12 = [NSEntityDescription insertNewObjectForEntityForName:v11 inManagedObjectContext:v9];
        if (!v12)
        {
          sub_1007683C4(v11, v8, v10);
        }

        v20 = [[NSUUID alloc] initWithUUIDString:v8];
        [v12 setIdentifier:v20];

        v21 = [v12 identifier];
        LODWORD(v20) = v21 == 0;

        if (v20)
        {
          v22 = +[REMLog cloudkit];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
          {
            sub_100768494();
          }

          v23 = +[NSUUID UUID];
          [v12 setIdentifier:v23];
        }

        [v12 setCkIdentifier:v8];
        [v12 setAccount:v10];
        objc_opt_class();
        v17 = REMDynamicCast();
        v38 = [v17 batchFetchHelper];
        if (!v38)
        {
          sub_100768504();
        }

        if (v8 && v12)
        {
          v24 = [v12 accountCKIdentifier];
          [v38 setCachedManagedObject:v12 forCKIdentifier:v8 accountIdentifier:v24];
        }

        objc_opt_class();
        v25 = REMDynamicCast();
        v26 = v25;
        if (v25)
        {
          v27 = [v25 identifier];
          v28 = [v27 UUIDString];
          [v26 setDaCalendarItemUniqueIdentifier:v28];
        }

        v29 = +[REMLog cloudkit];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v37 = [v12 shortLoggingDescription];
          v36 = [v12 identifier];
          v35 = [v12 ckIdentifier];
          v34 = [v26 daCalendarItemUniqueIdentifier];
          v30 = [v10 ckIdentifier];
          v31 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v12 isPlaceholder]);
          *buf = 138544642;
          *&buf[4] = v37;
          *&buf[12] = 2114;
          *&buf[14] = v36;
          *&buf[22] = 2114;
          v41 = v35;
          *v42 = 2114;
          *&v42[2] = v34;
          *&v42[10] = 2114;
          *&v42[12] = v30;
          v43 = 2114;
          v44 = v31;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Creating REMCDObject for CloudKit: %{public}@ .identifier=%{public}@ .ckIdentifier=%{public}@ .daCalendarItemUniqueIdentifier=%{public}@ .account.ckIdentifier=%{public}@, isPlaceholder=%{public}@", buf, 0x3Eu);
        }

        goto LABEL_39;
      }

      v17 = +[REMLog cloudkit];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        sub_100768568(a1);
      }
    }

    else
    {
      v17 = +[REMLog cloudkit];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        sub_100768608(a1);
      }
    }

    v12 = 0;
LABEL_39:

    goto LABEL_40;
  }

  v11 = +[REMLog cloudkit];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_100768718(a1);
  }

  v12 = 0;
LABEL_40:

  return v12;
}

+ (id)newPlaceholderObjectForRecordID:(id)a3 account:(id)a4 context:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 recordName];
  v12 = [a1 ckIdentifierFromRecordName:v11];

  v13 = [v10 zoneID];

  v14 = [a1 newObjectWithCKIdentifier:v12 context:v8 account:v9];
  [v14 setCkNeedsInitialFetchFromCloud:1];
  [v14 setInCloud:1];
  v15 = [a1 objectCkZoneOwnerNameFromCKRecordZoneID:v13];
  [v14 setCkZoneOwnerName:v15];

  [v14 setAccount:v9];
  return v14;
}

+ (id)allCloudObjectsPredicate
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromClass(a1);
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v8 = +[REMLog cloudkit];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1007687BC();
    }

    v9 = [NSException exceptionWithName:@"MethodCalledOnAbstractClass" reason:@"Should not call +allCloudObjectsPredicate on the abstract 'REMCDObject'" userInfo:0];
    objc_exception_throw(v9);
  }

  return [REMCDAccount predicateForCloudKitAccountsWithKeyPathPrefix:@"account"];
}

+ (id)allCloudObjectsInContext:(id)a3
{
  v4 = a3;
  v5 = [a1 allCloudObjectsPredicate];
  v6 = NSStringFromSelector("ckCloudState");
  v10 = v6;
  v7 = [NSArray arrayWithObjects:&v10 count:1];
  v8 = [a1 ic_objectsMatchingPredicate:v5 sortDescriptors:0 propertiesToFetch:0 relationshipKeyPathsForPrefetching:v7 context:v4];

  return v8;
}

+ (id)allCloudObjectIDsInContext:(id)a3
{
  v4 = a3;
  v5 = [a1 allCloudObjectsPredicate];
  v6 = [a1 ic_objectIDsMatchingPredicate:v5 context:v4];

  return v6;
}

+ (id)allDirtyCloudObjectIDsInContext:(id)a3
{
  v4 = a3;
  v5 = [a1 allDirtyCloudObjectsPredicate];
  v6 = [a1 ic_objectIDsMatchingPredicate:v5 context:v4];

  return v6;
}

- (void)recursivelyFixCrossZoneRelationshipWithVisitedMap:(id)a3 perObjectHandler:(id)a4
{
  v6 = a4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000B16FC;
  v9[3] = &unk_1008DBA80;
  v10 = self;
  v11 = v6;
  v7 = v6;
  v8 = v10;
  [(REMCDObject *)v8 traverseObjectTreeUsingVisitedMap:a3 handler:v9];
}

- (id)newlyCreatedRecord
{
  v3 = [(REMCDObject *)self ckServerRecord];
  v4 = [v3 copy];

  if (!v4)
  {
    v5 = [(REMCDObject *)self recordID];
    if (v5)
    {
      v6 = [CKRecord alloc];
      v7 = [(REMCDObject *)self recordType];
      v4 = [v6 initWithRecordType:v7 recordID:v5];
    }

    else
    {
      v8 = +[REMLog cloudkit];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_100768850(self);
      }

      v4 = 0;
    }
  }

  v9 = [(REMCDObject *)self parentCloudObject];
  v10 = [v9 recordID];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 zoneID];
    v13 = [v4 recordID];
    v14 = [v13 zoneID];
    v15 = [v12 isEqual:v14];

    if (v15)
    {
      [v4 setParent:0];
      v16 = [[CKReference alloc] initWithRecordID:v11 action:0];
      [v4 setParent:v16];
    }

    else
    {
      v16 = +[REMLog cloudkit];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        v27 = objc_opt_class();
        v33 = v27;
        v28 = [v4 recordID];
        v29 = [v28 ic_loggingDescription];
        v30 = objc_opt_class();
        v32 = v30;
        v31 = [v11 ic_loggingDescription];
        *buf = 138544130;
        v35 = v27;
        v36 = 2114;
        v37 = v29;
        v38 = 2114;
        v39 = v30;
        v40 = 2114;
        v41 = v31;
        _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "Not creating cross-zone parent record relationship from %{public}@ %{public}@ to parent %{public}@ %{public}@", buf, 0x2Au);
      }
    }
  }

  else if ([v4 ic_isOwnedByCurrentUser])
  {
    [v4 setParent:0];
  }

  if ([(REMCDObject *)self supportsDeletionByTTL]&& ([(REMCDObject *)self isOwnedByCurrentUser]|| ![(REMCDObject *)self isSharedRootObject]))
  {
    v17 = [NSNumber numberWithBool:[(REMCDObject *)self markedForDeletion]];
    [v4 setObject:v17 forKeyedSubscript:@"Deleted"];
  }

  v18 = +[REMCDObject ckRecordKeyForMinimumSupportedVersion];
  v19 = [(REMCDObject *)self minimumSupportedVersion];
  if (v19 == kREMSupportedVersionUnset)
  {
    [v4 setObject:0 forKeyedSubscript:v18];
  }

  else
  {
    v20 = [NSNumber numberWithInteger:[(REMCDObject *)self minimumSupportedVersion]];
    [v4 setObject:v20 forKeyedSubscript:v18];
  }

  v21 = objc_autoreleasePoolPush();
  objc_opt_class();
  v22 = [(REMCDObject *)self resolutionTokenMap];
  v23 = REMDynamicCast();

  if (v23)
  {
    v24 = [v23 objc_toJSONString];
    if (v24)
    {
      [v4 setObject:v24 forKeyedSubscript:@"ResolutionTokenMap"];
    }

    else
    {
      v25 = +[REMLog cloudkit];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1007688DC();
      }
    }
  }

  objc_autoreleasePoolPop(v21);
  [v4 setObject:&off_1009050E8 forKeyedSubscript:@"Imported"];

  return v4;
}

- (void)mergeDataFromRecord:(id)a3 accountID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 recordType];
  v9 = [(REMCDObject *)self recordType];
  v10 = [v8 isEqual:v9];

  if ((v10 & 1) == 0)
  {
    sub_100768944(v6);
  }

  self->_shouldPerformCloudSchemaCatchUpSync = 0;
  objc_opt_class();
  v11 = [(REMCDObject *)self managedObjectContext];
  v12 = REMDynamicCast();

  v13 = [v12 cloudSchemaCatchUpSyncContextsByAccountIdentifier];
  v14 = [v13 objectForKey:v7];

  if ([v14 shouldPerformCloudSchemaCatchUpSync])
  {
    self->_shouldPerformCloudSchemaCatchUpSync = 1;
  }

  v15 = [v14 isCloudSchemaCatchUpSyncNeeded];
  v16 = [(REMCDObject *)self hasSuccessfullyPushedLatestVersionToCloud];
  self->_mergeDataRefusedToMergeMarkedForDeletion = 0;
  self->_mergeDataRevertedLocallyMarkedForDeletion = 0;
  v17 = [v6 objectForKeyedSubscript:@"Deleted"];

  v18 = REMCRMergeableOrderedSet_ptr;
  if (v17)
  {
    v19 = [v6 objectForKeyedSubscript:@"Deleted"];
    v20 = [v19 BOOLValue];

    v31 = [(REMCDObject *)self markedForDeletion];
    if (v20 != [(REMCDObject *)self markedForDeletion])
    {
      v21 = v16 | ~v20;
      v22 = +[REMLog cloudkit];
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      if (v21)
      {
        if (v23)
        {
          v24 = [(REMCDObject *)self shortLoggingDescription];
          *buf = 138543362;
          v33 = v24;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Setting %{public}@ marked for deletion when merging data from record", buf, 0xCu);
        }

        [(REMCDObject *)self setMarkedForDeletion:v20];
      }

      else
      {
        if (v23)
        {
          v25 = [(REMCDObject *)self shortLoggingDescription];
          *buf = 138543362;
          v33 = v25;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Setting mergeDataRefusedToMergeMarkedForDeletion=YES for %{public}@ when merging data from record", buf, 0xCu);
        }

        self->_mergeDataRefusedToMergeMarkedForDeletion = 1;
      }
    }

    v18 = REMCRMergeableOrderedSet_ptr;
    if (((v15 | v20) & 1) == 0 && ((v31 ^ 1) & 1) == 0)
    {
      [(REMCDObject *)self unmarkForDeletion];
      v26 = +[REMLog cloudkit];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [(REMCDObject *)self shortLoggingDescription];
        *buf = 138543362;
        v33 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Setting mergeDataRevertedLocallyMarkedForDeletion=YES for %{public}@ when merging data from record", buf, 0xCu);
      }

      self->_mergeDataRevertedLocallyMarkedForDeletion = 1;
    }
  }

  objc_opt_class();
  v28 = objc_opt_respondsToSelector();
  v29 = [v18[50] cloudkit];
  v30 = v29;
  if (v28)
  {
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      sub_100768AB8();
    }

    v30 = self;
    [objc_opt_class() mergeSystemPropertiesIntoCDObject:v30 fromCKRecord:v6];
  }

  else if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
  {
    sub_100768A10();
  }
}

- (BOOL)needsToBePushedToCloud
{
  if (![objc_opt_class() shouldSyncToCloud])
  {
    goto LABEL_6;
  }

  if (([(REMCDObject *)self ckNeedsToBeFetchedFromCloud]& 1) != 0)
  {
    goto LABEL_6;
  }

  if (([(REMCDObject *)self ckNeedsInitialFetchFromCloud]& 1) != 0)
  {
    goto LABEL_6;
  }

  v3 = [(REMCDObject *)self ckCloudState];
  v4 = [v3 latestVersionSyncedToCloud];
  v5 = [(REMCDObject *)self ckCloudState];
  v6 = [v5 currentLocalVersion];

  if (v4 >= v6)
  {
    goto LABEL_6;
  }

  v7 = [(REMCDObject *)self ckCloudState];
  v8 = -[REMCDObject isPushingSameOrLaterThanVersion:](self, "isPushingSameOrLaterThanVersion:", [v7 currentLocalVersion]);

  if (v8 || [(REMCDObject *)self markedForDeletion]&& ![(REMCDObject *)self isInCloud])
  {
    goto LABEL_6;
  }

  if ([(REMCDObject *)self isSharedReadOnly])
  {
LABEL_6:
    v9 = 0;
  }

  else
  {
    v11 = [(REMCDObject *)self parentCloudObject];
    if ([v11 ckNeedsInitialFetchFromCloud])
    {
      v12 = [(REMCDObject *)self parentCloudObject];
      v9 = [v12 isInCloud];
    }

    else
    {
      v9 = 1;
    }
  }

  return v9 & 1;
}

- (void)forcePushToCloud
{
  if ([(REMCDObject *)self isPlaceholder])
  {
    v3 = objc_opt_class();
    v4 = [(REMCDObject *)self ckIdentifier];
    v5 = [NSString stringWithFormat:@"Placeholder %@ { %@ } forcePushToCloud", v3, v4];

    [objc_opt_class() faultAndPromptToFileRadarWithICTap2RadarType:4 title:@"Placeholder forcePushToCloud" description:&stru_1008FE8A0 logMessage:v5];
  }

  else
  {
    [(REMCDObject *)self setCkNeedsToBeFetchedFromCloud:0];
    [(REMCDObject *)self setCkNeedsInitialFetchFromCloud:0];
    if ([(REMCDObject *)self markedForDeletion])
    {
      [(REMCDObject *)self setInCloud:1];
    }

    [(REMCDObject *)self updateChangeCount];
  }
}

- (BOOL)hasSuccessfullyPushedLatestVersionToCloud
{
  v3 = [(REMCDObject *)self ckCloudState];
  v4 = [v3 latestVersionSyncedToCloud];
  v5 = [(REMCDObject *)self ckCloudState];
  LOBYTE(v4) = v4 >= [v5 currentLocalVersion];

  return v4;
}

- (BOOL)needsToFetchAfterServerRecordChanged:(id)a3
{
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [v3 objectForKeyedSubscript:*(*(&v13 + 1) + 8 * i)];
        v10 = [objc_opt_class() needsToReFetchServerRecordValue:v9];

        if (v10)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

+ (BOOL)needsToReFetchServerRecordValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 fileURL];
    v6 = v5 == 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = v4;
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v14;
        while (2)
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(v7);
            }

            if ([a1 needsToReFetchServerRecordValue:{*(*(&v13 + 1) + 8 * i), v13}])
            {

              v6 = 1;
              goto LABEL_15;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }
    }

    v6 = 0;
  }

LABEL_15:

  return v6;
}

- (void)objectWasDeletedFromCloudByAnotherDevice
{
  [(REMCDObject *)self setInCloud:0];
  if ([(REMCDObject *)self isSharedViaICloud]&& ![(REMCDObject *)self isOwnedByCurrentUser])
  {
    v5 = +[REMLog cloudkit];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(REMCDObject *)self shortLoggingDescription];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Shared object was deleted %{public}@", &v7, 0xCu);
    }

    [(REMCDObject *)self setMarkedForDeletion:1];
    goto LABEL_11;
  }

  if ([(REMCDObject *)self hasSuccessfullyPushedLatestVersionToCloud])
  {
    v3 = +[REMLog cloudkit];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(REMCDObject *)self shortLoggingDescription];
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Marking %{public}@ for deletion after being deleted from cloud by another device", &v7, 0xCu);
    }

    [(REMCDObject *)self setMarkedForDeletion:1];
    if ([(REMCDObject *)self shouldBeDeletedFromLocalDatabase])
    {
LABEL_11:
      [(REMCDObject *)self deleteFromLocalDatabase];
    }
  }
}

- (void)objectWillBePushedToCloudWithOperation:(id)a3
{
  v4 = a3;
  v5 = [(REMCDObject *)self ckCloudState];
  -[REMCDObject setVersion:forOperation:](self, "setVersion:forOperation:", [v5 currentLocalVersion], v4);
}

- (void)objectFailedToBePushedToCloudWithOperation:(id)a3 recordID:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 database];
  v12 = [v11 container];
  v13 = [v12 options];
  v14 = [v13 accountOverrideInfo];
  v15 = [v14 accountID];

  if (![v15 length])
  {
    v16 = +[REMLog cloudkit];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_100768B64(v8);
    }
  }

  v17 = [v10 code];
  if (v17 > 19)
  {
    if (v17 > 25)
    {
      if (v17 != 26)
      {
        if (v17 != 31)
        {
          goto LABEL_26;
        }

        v25 = +[REMLog cloudkit];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v35 = [v9 ic_loggingDescription];
          v36 = [v8 ic_loggingDescription];
          *buf = 138544130;
          v42 = v15;
          v43 = 2112;
          v44 = v35;
          v45 = 2114;
          v46 = v36;
          v47 = 2114;
          v48 = v10;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Reference violation for server record in account ID %{public}@: %@ %{public}@: %{public}@", buf, 0x2Au);
        }

        [(REMCDObject *)self fixBrokenReferences];
      }
    }

    else if (v17 != 20 && v17 != 22)
    {
      goto LABEL_26;
    }
  }

  else if ((v17 - 6) >= 2)
  {
    if (v17 != 11)
    {
      if (v17 == 14)
      {
        v18 = [v10 userInfo];
        v19 = [v18 objectForKeyedSubscript:CKRecordChangedErrorServerRecordKey];

        if (v19)
        {
          v20 = [(REMCDObject *)self needsToFetchAfterServerRecordChanged:v19];
          v21 = +[REMLog cloudkit];
          v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
          if (!v20)
          {
            if (v22)
            {
              v29 = [v19 ic_loggingDescription];
              v30 = [v8 ic_loggingDescription];
              *buf = 138544130;
              v42 = v15;
              v43 = 2112;
              v44 = v29;
              v45 = 2114;
              v46 = v30;
              v47 = 2112;
              v48 = v10;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Server record changed in account ID %{public}@: %@ %{public}@: %@", buf, 0x2Au);
            }

            if (v15)
            {
              v40 = [(REMCDObject *)self ckServerRecord];
              v31 = [v40 recordID];
              v32 = [v31 zoneID];
              v33 = [v19 recordID];
              v34 = [v33 zoneID];
              v39 = [v32 isEqual:v34];

              if ((v39 & 1) == 0)
              {
                [(REMCDObject *)self setCkServerRecord:0];
              }

              [(REMCDObject *)self objectWasFetchedFromCloudWithRecord:v19 accountID:v15];
            }

            goto LABEL_36;
          }

          if (!v22)
          {
LABEL_29:

            [(REMCDObject *)self setCkNeedsToBeFetchedFromCloud:1];
LABEL_36:

            goto LABEL_37;
          }

          v23 = [v19 ic_loggingDescription];
          v24 = [v8 ic_loggingDescription];
          *buf = 138544130;
          v42 = v15;
          v43 = 2112;
          v44 = v23;
          v45 = 2112;
          v46 = v24;
          v47 = 2112;
          v48 = v10;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Server record changed (needs refetch) in account ID %{public}@: %@ %@: %@", buf, 0x2Au);
        }

        else
        {
          v21 = +[REMLog cloudkit];
          if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_29;
          }

          v23 = [(REMCDObject *)self shortLoggingDescription];
          v24 = [v8 ic_loggingDescription];
          *buf = 138544130;
          v42 = v15;
          v43 = 2114;
          v44 = v23;
          v45 = 2114;
          v46 = v24;
          v47 = 2112;
          v48 = v10;
          _os_log_fault_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "Server record changed with no server record in the error in account ID %{public}@: %{public}@ %{public}@: %@", buf, 0x2Au);
        }

        goto LABEL_29;
      }

LABEL_26:
      v19 = +[REMLog cloudkit];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v27 = [v9 ic_loggingDescription];
        v28 = [v8 ic_loggingDescription];
        *buf = 138544130;
        v42 = v15;
        v43 = 2112;
        v44 = v27;
        v45 = 2114;
        v46 = v28;
        v47 = 2112;
        v48 = v10;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Error pushing in account ID %{public}@: %@ %{public}@: %@", buf, 0x2Au);
      }

      goto LABEL_36;
    }

    v26 = +[REMLog cloudkit];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v37 = [v9 ic_loggingDescription];
      v38 = [v8 ic_loggingDescription];
      *buf = 138544130;
      v42 = v15;
      v43 = 2112;
      v44 = v37;
      v45 = 2114;
      v46 = v38;
      v47 = 2112;
      v48 = v10;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Invalid cached server record in account ID %{public}@: %@ %{public}@: %@", buf, 0x2Au);
    }

    [(REMCDObject *)self setCkServerRecord:0];
  }

LABEL_37:
  [objc_opt_class() deleteTemporaryAssetFilesForOperation:v8];
}

- (void)objectWasPushedToCloudWithOperation:(id)a3 serverRecord:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(REMCDObject *)self versionForOperation:v7];
  v9 = [(REMCDObject *)self ckCloudState];
  v10 = [v9 latestVersionSyncedToCloud];

  if (v8 > v10)
  {
    v11 = [(REMCDObject *)self ckCloudState];
    [v11 setLatestVersionSyncedToCloud:v8];
  }

  [objc_opt_class() deleteTemporaryAssetFilesForOperation:v7];

  [(REMCDObject *)self resetFailureCounts];
  [(REMCDObject *)self setInCloud:1];
  [(REMCDObject *)self setCkDirtyFlags:[(REMCDObject *)self ckDirtyFlags]& 0xFFFFFFFD];
  v12 = [(REMCDObject *)self ckServerRecord];
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = v12;
  v14 = [(REMCDObject *)self ckServerRecord];
  v15 = [v14 modificationDate];
  v16 = [v6 modificationDate];
  v17 = [v15 ic_isLaterThanDate:v16];

  if (v17)
  {
    v18 = +[REMLog cloudkit];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      sub_100768C00(v6);
    }
  }

  else
  {
LABEL_8:
    [(REMCDObject *)self setCkServerRecord:v6];
  }
}

- (void)objectWasFetchedFromCloudWithRecord:(id)a3 accountID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"Deleted"];
  if ([v8 BOOLValue])
  {
    v9 = [(REMCDObject *)self markedForDeletion];

    if (v9)
    {
      v10 = 0;
      goto LABEL_9;
    }
  }

  else
  {
  }

  objc_opt_class();
  v11 = [(REMCDObject *)self managedObjectContext];
  v12 = REMDynamicCast();

  v13 = [v12 cloudSchemaCatchUpSyncContextsByAccountIdentifier];
  v14 = [v13 objectForKey:v7];

  if ([v14 shouldPerformCloudSchemaCatchUpSync])
  {
    v10 = +[ICCloudSchemaCompatibilityUtils isCloudSchemaCatchUpSyncNeededForExistingCloudObject:persistenceCloudSchemaVersion:](ICCloudSchemaCompatibilityUtils, "isCloudSchemaCatchUpSyncNeededForExistingCloudObject:persistenceCloudSchemaVersion:", self, [v14 persistenceCloudSchemaVersion]);
  }

  else
  {
    v10 = 0;
  }

LABEL_9:
  v15 = [v6 recordChangeTag];
  if (v15)
  {
    v16 = [(REMCDObject *)self ckServerRecord];
    v17 = [v16 recordChangeTag];
    v18 = [v17 isEqualToString:v15] ^ 1;
  }

  else
  {
    v18 = 0;
  }

  if ((v10 | v18))
  {
    if (v10)
    {
      v19 = +[REMLog cloudkit];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [(REMCDObject *)self remObjectID];
        v35 = 138543618;
        v36 = v7;
        v37 = 2114;
        v38 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Object fetched from cloud and is an entity that should perform CloudSchemaCatchUpSync, force merging data from CKRecord {accountID: %{public}@, remObjectID: %{public}@}", &v35, 0x16u);
      }
    }

    [(REMCDObject *)self mergeDataFromRecord:v6 accountID:v7];
    v21 = [(REMCDObject *)self ckServerRecord];
    if (!v21)
    {
      goto LABEL_25;
    }

    v22 = v21;
    v23 = [(REMCDObject *)self ckServerRecord];
    v24 = [v23 modificationDate];
    v25 = [v6 modificationDate];
    v26 = [v24 ic_isLaterThanDate:v25];

    if (v26)
    {
      v27 = +[REMLog cloudkit];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_100768CA4(v6);
      }
    }

    else
    {
LABEL_25:
      [(REMCDObject *)self setCkServerRecord:v6];
    }

    v30 = [v6 share];
    if (v30)
    {
    }

    else
    {
      v31 = [(REMCDObject *)self ckServerShare];

      if (v31)
      {
        v32 = +[REMLog cloudkit];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = [(REMCDObject *)self ckServerShare];
          v34 = [v33 ic_loggingDescription];
          v35 = 138412290;
          v36 = v34;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Object fetched does not have a share removing our severShare: %@", &v35, 0xCu);
        }

        [(REMCDObject *)self setCkServerShare:0];
      }
    }

    [(REMCDObject *)self setCkNeedsInitialFetchFromCloud:0];
    [(REMCDObject *)self setInCloud:1];
    if (![(REMCDObject *)self supportsDeletionByTTL])
    {
      [(REMCDObject *)self setMarkedForDeletion:0];
    }

    [(REMCDObject *)self updateParentReferenceIfNecessary];
  }

  else
  {
    v28 = +[REMLog cloudkit];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = [v6 ic_loggingDescription];
      v35 = 138412290;
      v36 = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Not merging fetched record with same change tag %@", &v35, 0xCu);
    }
  }

  [(REMCDObject *)self setCkNeedsToBeFetchedFromCloud:0];
}

- (void)objectWasFetchedButDoesNotExistInCloud
{
  v3 = [(REMCDObject *)self recordID];
  v4 = [v3 ic_isOwnedByCurrentUser];

  if (v4)
  {
    [(REMCDObject *)self setCkServerRecord:0];
    [(REMCDObject *)self setCkNeedsInitialFetchFromCloud:0];
    [(REMCDObject *)self setCkNeedsToBeFetchedFromCloud:0];

    [(REMCDObject *)self setInCloud:0];
  }

  else
  {
    v5 = +[REMLog cloudkit];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(REMCDObject *)self shortLoggingDescription];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Deleting shared %{public}@ because it no longer exists in cloud", &v7, 0xCu);
    }

    [(REMCDObject *)self deleteFromLocalDatabase];
  }
}

+ (id)temporaryAssets
{
  if (qword_100952A68 != -1)
  {
    sub_100768D34();
  }

  v3 = qword_100952A60;

  return v3;
}

+ (id)assetForData:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v12 = 0;
    goto LABEL_11;
  }

  v5 = [a1 temporaryAssets];
  objc_sync_enter(v5);
  v6 = +[NSUUID UUID];
  v7 = [v6 UUIDString];

  v8 = [a1 temporaryAssetDirectoryURL];
  v9 = [v8 URLByAppendingPathComponent:v7 isDirectory:0];

  if (!v9)
  {
    v11 = 0;
    goto LABEL_7;
  }

  v15 = 0;
  v10 = [v4 writeToURL:v9 options:0 error:&v15];
  v11 = v15;
  if (!v10)
  {
LABEL_7:
    v13 = +[REMLog cloudkit];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100768D48();
    }

    v12 = 0;
    goto LABEL_10;
  }

  v12 = [[CKAsset alloc] initWithFileURL:v9];
  v13 = [a1 temporaryAssets];
  [v13 addObject:v12];
LABEL_10:

  objc_sync_exit(v5);
LABEL_11:

  return v12;
}

+ (id)temporaryAssetDirectoryURL
{
  v2 = qword_100952A70;
  if (!qword_100952A70)
  {
    v3 = +[NSFileManager defaultManager];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 bundleIdentifier];
    v6 = [NSString stringWithFormat:@"%@-%@", v5, @"TemporaryAssetFiles"];

    v18 = 0;
    v7 = [v3 rem_createProtectedTemporaryDirectoryIfNeededWithError:&v18];
    v8 = v18;
    if (v7)
    {
      v9 = [v7 URLByAppendingPathComponent:v6 isDirectory:1];
      v10 = qword_100952A70;
      qword_100952A70 = v9;

      v17 = v8;
      v11 = [v3 createDirectoryAtURL:qword_100952A70 withIntermediateDirectories:1 attributes:0 error:&v17];
      v12 = v17;

      if ((v11 & 1) == 0)
      {
        v13 = +[REMLog cloudkit];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_100768DB0();
        }
      }

      v14 = +[REMLog cloudkit];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [qword_100952A70 absoluteString];
        *buf = 138412290;
        v20 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "REMCDObject.temporaryAssetDirectoryURL: %@", buf, 0xCu);
      }

      v8 = v12;
    }

    else
    {
      v14 = +[REMLog cloudkit];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100768E18();
      }
    }

    v2 = qword_100952A70;
  }

  return v2;
}

+ (void)deleteTemporaryAssetFilesForOperation:(id)a3
{
  v4 = a3;
  v5 = [a1 temporaryAssets];
  objc_sync_enter(v5);
  v6 = [a1 temporaryAssets];
  v7 = [v6 count];

  objc_sync_exit(v5);
  if (v7)
  {
    v8 = dispatch_get_global_queue(-2, 0);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000B3C30;
    v9[3] = &unk_1008DB318;
    v11 = a1;
    v10 = v4;
    dispatch_async(v8, v9);
  }
}

+ (void)deleteTemporaryFilesForAsset:(id)a3
{
  v4 = a3;
  v5 = [a1 temporaryAssets];
  objc_sync_enter(v5);
  v6 = [a1 temporaryAssets];
  [v6 removeObject:v4];

  v7 = [v4 fileURL];

  if (v7)
  {
    v8 = [v4 fileURL];
    v9 = +[NSFileManager defaultManager];
    v13 = 0;
    v10 = [v9 removeItemAtURL:v8 error:&v13];
    v11 = v13;

    if ((v10 & 1) == 0)
    {
      v12 = +[REMLog cloudkit];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100768E80();
      }
    }
  }

  objc_sync_exit(v5);
}

+ (void)deleteAllTemporaryAssetFilesForAllObjects
{
  v3 = +[NSFileManager defaultManager];
  v4 = [a1 temporaryAssetDirectoryURL];
  v5 = [v3 enumeratorAtURL:v4 includingPropertiesForKeys:0 options:0 errorHandler:&stru_1008DBAE0];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v20;
    *&v8 = 138412290;
    v17 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        v13 = +[NSFileManager defaultManager];
        v18 = 0;
        v14 = [v13 removeItemAtURL:v12 error:&v18];
        v15 = v18;

        if ((v14 & 1) == 0)
        {
          v16 = +[REMLog cloudkit];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = v17;
            v24 = v15;
            _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Error deleting temporary asset file: %@", buf, 0xCu);
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v9);
  }
}

- (BOOL)shouldBeDeletedFromLocalDatabase
{
  if (![(REMCDObject *)self isDeletable]|| ![(REMCDObject *)self markedForDeletion]|| [(REMCDObject *)self isInICloudAccount]&& ![(REMCDObject *)self hasSuccessfullyPushedLatestVersionToCloud])
  {
    return 0;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(REMCDObject *)self objectsToBeDeletedBeforeThisObject];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (![*(*(&v10 + 1) + 8 * i) shouldBeDeletedFromLocalDatabase])
        {
          v8 = 0;
          goto LABEL_17;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_17:

  return v8;
}

- (void)deleteFromLocalDatabase
{
  v3 = +[ICSyncSettings sharedSettings];
  v4 = [v3 hasOptions:64];

  if (v4)
  {
    v5 = +[REMLog cloudkit];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100768F50();
    }
  }

  else
  {
    v6 = [(REMCDObject *)self managedObjectContext];
    [v6 deleteObject:self];
  }
}

- (void)fixValuesOfKeysWithUniqueConstraintBeforeSettingMarkedForDeletion:(BOOL)a3
{
  v3 = a3;
  v5 = [(REMCDObject *)self entity];
  v6 = [v5 uniquenessConstraints];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v19 = *v25;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v21;
          do
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v21 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v20 + 1) + 8 * j);
              objc_opt_class();
              v17 = REMDynamicCast();
              if (v17)
              {
                if (v3)
                {
                  [(REMCDObject *)self fixValueBeforeMarkingForDeletionForKey:v17];
                }

                else
                {
                  [(REMCDObject *)self fixValueBeforeUnmarkingForDeletionForKey:v17];
                }
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v13);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }
}

- (void)markForDeletion
{
  if (([(REMCDObject *)self markedForDeletion]& 1) == 0)
  {
    v3 = +[REMLog cloudkit];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(REMCDObject *)self shortLoggingDescription];
      v5 = 138543362;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Marking %{public}@ for deletion", &v5, 0xCu);
    }

    [(REMCDObject *)self fixValuesOfKeysWithUniqueConstraintBeforeSettingMarkedForDeletion:1];
    [(REMCDObject *)self lowLevelMarkForDeletion];
    [(REMCDObject *)self markObjectDirtyAfterMarkedForDeletion];
  }
}

- (void)markObjectDirtyAfterMarkedForDeletion
{
  if ([(REMCDObject *)self supportsDeletionByTTL])
  {

    [(REMCDObject *)self updateChangeCount];
  }

  else if ([(REMCDObject *)self isInCloud]|| ([(REMCDObject *)self ckServerShare], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(REMCDObject *)self ckDirtyFlags]| 2;

    [(REMCDObject *)self setCkDirtyFlags:v4];
  }
}

- (void)unmarkForDeletion
{
  if ([(REMCDObject *)self markedForDeletion])
  {
    v3 = +[REMLog cloudkit];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(REMCDObject *)self shortLoggingDescription];
      v5 = 138543362;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Unmarking %{public}@ for deletion", &v5, 0xCu);
    }

    [(REMCDObject *)self fixValuesOfKeysWithUniqueConstraintBeforeSettingMarkedForDeletion:0];
    [(REMCDObject *)self lowLevelUnmarkForDeletion];
    [(REMCDObject *)self markObjectDirtyAfterUnmarkedForDeletion];
  }
}

- (void)debug_lowLevelRemoveFromParent
{
  v3 = objc_opt_class();
  v4 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"Abstract method called [%@ %@]", v3, v4];
}

- (void)updateParentReferenceIfNecessary
{
  v3 = [(REMCDObject *)self ckServerRecord];

  if (v3)
  {
    v4 = [(REMCDObject *)self parentCloudObject];
    v5 = [v4 recordID];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = isKindOfClass;
    if (v4 && (isKindOfClass & 1) == 0 && !v5)
    {
      v8 = +[REMLog cloudkit];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_100768FB8(self, v8);
      }

      goto LABEL_18;
    }

    v9 = [(REMCDObject *)self recordID];
    v10 = [v9 zoneID];
    v11 = [v10 ownerName];
    v12 = [v5 zoneID];
    v13 = [v12 ownerName];
    v14 = [v11 isEqualToString:v13];

    if (!v14)
    {
LABEL_18:

      return;
    }

    v15 = [(REMCDObject *)self ckServerRecord];
    v16 = [v15 parent];

    if (v16)
    {
      if (v7)
      {
        goto LABEL_18;
      }

      v17 = [(REMCDObject *)self ckServerRecord];
      v18 = [v17 parent];
      v19 = [v18 recordID];
      v20 = [v19 isEqual:v5];

      if (v20)
      {
        goto LABEL_18;
      }

      v21 = +[REMLog cloudkit];
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      v22 = [(REMCDObject *)self shortLoggingDescription];
      v23 = [(REMCDObject *)self ckServerRecord];
      v24 = [v23 parent];
      v25 = [v24 recordID];
      v26 = [v25 ic_loggingDescription];
      v27 = [v5 ic_loggingDescription];
      v28 = 138543874;
      v29 = v22;
      v30 = 2112;
      v31 = v26;
      v32 = 2112;
      v33 = v27;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Server record for %{public}@ parent %@ is different from expected parent %@. Re-saving record.", &v28, 0x20u);
    }

    else
    {
      v21 = +[REMLog cloudkit];
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
LABEL_17:

        [(REMCDObject *)self updateChangeCount];
        goto LABEL_18;
      }

      v22 = [(REMCDObject *)self shortLoggingDescription];
      v28 = 138543362;
      v29 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Server record for %{public}@ has no parent, but expects one. Re-saving record.", &v28, 0xCu);
    }

    goto LABEL_17;
  }
}

- (BOOL)needsToDeleteShare
{
  if (![(REMCDObject *)self markedForDeletion])
  {
    return 0;
  }

  v3 = [(REMCDObject *)self ckServerShare];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)canBeSharedViaICloud
{
  v2 = [(REMCDObject *)self cloudAccount];
  v3 = [v2 accountTypeHost];
  v4 = [v3 isCloudKit];

  return v4;
}

- (BOOL)isSharedViaICloud
{
  v3 = [(REMCDObject *)self ckServerShare];

  if (v3)
  {
    return 1;
  }

  v4 = [(REMCDObject *)self ckServerRecord];
  v5 = [v4 share];

  if (v5)
  {
    return 1;
  }

  v8 = [(REMCDObject *)self ckZoneOwnerName];
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = v8;
  v10 = [(REMCDObject *)self ckZoneOwnerName];
  v11 = [v10 isEqualToString:CKCurrentUserDefaultName];

  if (!v11)
  {
    return 1;
  }

LABEL_7:
  v12 = [(REMCDObject *)self parentCloudObject];
  v13 = v12;
  if (v12)
  {
    v6 = [v12 isSharedViaICloud];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isOwnedByCurrentUser
{
  v2 = [(REMCDObject *)self recordID];
  v3 = [v2 ic_isOwnedByCurrentUser];

  return v3;
}

- (BOOL)isSharedRootObject
{
  v3 = [(REMCDObject *)self ckServerRecord];
  v4 = [v3 share];

  if (v4)
  {
    return 1;
  }

  v6 = [(REMCDObject *)self ckServerShare];
  v5 = v6 != 0;

  return v5;
}

- (BOOL)isSharedReadOnly
{
  v2 = [(REMCDObject *)self serverShareCheckingParent];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 currentUserParticipant];
    v5 = [v4 permission] == 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updateObjectWithShare:(id)a3
{
  v4 = +[REMLog cloudkitCollaboration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100769100(self);
  }
}

- (void)setServerShareIfNewer:(id)a3
{
  v4 = a3;
  v5 = [v4 recordChangeTag];
  v6 = [(REMCDObject *)self ckServerShare];

  if (!v6)
  {
    v12 = +[REMLog cloudkitCollaboration];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(REMCDObject *)self shortLoggingDescription];
      v24 = [v4 ic_loggingDescription];
      v28 = 138543618;
      v29 = v23;
      v30 = 2112;
      v31 = v24;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No server share for %{public}@, setting to %@", &v28, 0x16u);

LABEL_15:
    }

LABEL_16:

    [(REMCDObject *)self setCkServerShare:v4];
    goto LABEL_17;
  }

  v7 = [v4 recordChangeTag];
  if (v7)
  {
    v8 = v7;
    v9 = [(REMCDObject *)self ckServerShare];
    v10 = [v9 recordChangeTag];
    v11 = [v10 isEqualToString:v5];

    if (v11)
    {
      v12 = +[REMLog cloudkitCollaboration];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(REMCDObject *)self shortLoggingDescription];
        v14 = [(REMCDObject *)self ckServerShare];
        v15 = [v14 ic_loggingDescription];
        v16 = [v4 ic_loggingDescription];
        v28 = 138543874;
        v29 = v13;
        v30 = 2112;
        v31 = v15;
        v32 = 2112;
        v33 = v16;
        v17 = "Existing server share for %{public}@ %@ has the same change tag as %@";
LABEL_9:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v17, &v28, 0x20u);

        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  v18 = [(REMCDObject *)self ckServerShare];
  v19 = [v18 modificationDate];
  v20 = [v4 modificationDate];
  v21 = [v19 ic_isLaterThanDate:v20];

  v12 = +[REMLog cloudkitCollaboration];
  v22 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (!v21)
  {
    if (v22)
    {
      v23 = [(REMCDObject *)self shortLoggingDescription];
      v25 = [(REMCDObject *)self ckServerShare];
      v26 = [v25 ic_loggingDescription];
      v27 = [v4 ic_loggingDescription];
      v28 = 138543874;
      v29 = v23;
      v30 = 2112;
      v31 = v26;
      v32 = 2112;
      v33 = v27;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Replacing old server share for %{public}@ %@ with %@", &v28, 0x20u);

      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (v22)
  {
    v13 = [(REMCDObject *)self shortLoggingDescription];
    v14 = [(REMCDObject *)self ckServerShare];
    v15 = [v14 ic_loggingDescription];
    v16 = [v4 ic_loggingDescription];
    v28 = 138543874;
    v29 = v13;
    v30 = 2112;
    v31 = v15;
    v32 = 2112;
    v33 = v16;
    v17 = "Existing server share for %{public}@ %@ is newer than %@";
    goto LABEL_9;
  }

LABEL_10:

LABEL_17:
}

- (void)didAcceptShare:(id)a3
{
  v4 = a3;
  v5 = [(REMCDObject *)self ckServerShare];

  if (!v5)
  {
    v6 = +[REMLog cloudkitCollaboration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(REMCDObject *)self shortLoggingDescription];
      v8 = [v4 ic_loggingDescription];
      v11 = 138543618;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No server share for %{public}@, setting to %@", &v11, 0x16u);
    }

    [(REMCDObject *)self setCkServerShare:v4];
  }

  if ([(REMCDObject *)self markedForDeletion])
  {
    v9 = +[REMLog cloudkitCollaboration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(REMCDObject *)self shortLoggingDescription];
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Undeleting shared %{public}@", &v11, 0xCu);
    }

    [(REMCDObject *)self unmarkForDeletion];
    [(REMCDObject *)self restoreParentReferenceAfterUnmarkingForDeletion];
  }
}

+ (id)versionsByOperationQueue
{
  if (qword_100952A80 != -1)
  {
    sub_100769190();
  }

  v3 = qword_100952A78;

  return v3;
}

+ (id)versionsByRecordIDByOperation
{
  if (qword_100952A90 != -1)
  {
    sub_1007691A4();
  }

  v3 = qword_100952A88;

  return v3;
}

- (int64_t)versionForOperation:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [objc_opt_class() versionsByOperationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B5930;
  block[3] = &unk_1008D9EE0;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v7;
}

- (void)setVersion:(int64_t)a3 forOperation:(id)a4
{
  v6 = a4;
  v7 = [objc_opt_class() versionsByOperationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B5A9C;
  block[3] = &unk_1008DBB48;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_sync(v7, block);
}

- (int64_t)isPushingSameOrLaterThanVersion:(int64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [objc_opt_class() versionsByOperationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B5C5C;
  block[3] = &unk_1008DBB70;
  block[4] = self;
  block[5] = &v9;
  block[6] = a3;
  dispatch_sync(v5, block);

  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (BOOL)isInCloud
{
  v2 = [(REMCDObject *)self ckCloudState];
  v3 = [v2 isInCloud];

  return v3;
}

+ (id)recordSystemFieldsTransformer
{
  if (qword_100952AA0 != -1)
  {
    sub_1007691B8();
  }

  v3 = qword_100952A98;

  return v3;
}

+ (id)shareSystemFieldsTransformer
{
  if (qword_100952AB0 != -1)
  {
    sub_1007691CC();
  }

  v3 = qword_100952AA8;

  return v3;
}

- (void)setCkServerRecord:(id)a3
{
  v5 = a3;
  if (([(CKRecord *)self->_ckServerRecord isEqual:v5]& 1) == 0)
  {
    objc_storeStrong(&self->_ckServerRecord, a3);
    if (v5)
    {
      v6 = [objc_opt_class() recordSystemFieldsTransformer];
      v7 = [v6 transformedValue:v5];
      [(REMCDObject *)self setCkServerRecordData:v7];

      v8 = [v5 recordID];
      v9 = [v8 zoneID];

      v10 = [objc_opt_class() objectCkZoneOwnerNameFromCKRecordZoneID:v9];
      [(REMCDObject *)self setCkZoneOwnerName:v10];
    }

    else
    {
      [(REMCDObject *)self setCkServerRecordData:0];
      v11 = +[REMLog cloudkit];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [(REMCDObject *)self shortLoggingDescription];
        v13 = 138543362;
        v14 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "setCkServerRecord: Clearing serverRecord for: %{public}@", &v13, 0xCu);
      }
    }
  }
}

- (CKRecord)ckServerRecord
{
  ckServerRecord = self->_ckServerRecord;
  if (!ckServerRecord)
  {
    v4 = [(REMCDObject *)self ckServerRecordData];
    if (v4)
    {
      v5 = [objc_opt_class() recordSystemFieldsTransformer];
      v6 = [v5 reverseTransformedValue:v4];
      v7 = self->_ckServerRecord;
      self->_ckServerRecord = v6;
    }

    ckServerRecord = self->_ckServerRecord;
  }

  return ckServerRecord;
}

- (void)updateSharedObjectOwnerName:(id)a3
{
  v4 = a3;
  v5 = +[REMLog cloudkit];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = objc_opt_class();
    v26 = 2112;
    v27 = v4;
    v6 = v25;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Update shared object's owner names {class: %@, ownerName: %@}", buf, 0x16u);
  }

  v7 = [(REMCDObject *)self managedObjectContext];
  if (v7)
  {
    v8 = [(REMCDObject *)self account];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 ckIdentifier];
      if (v10)
      {
        if (v4)
        {
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          v13 = [NSEntityDescription insertNewObjectForEntityForName:v12 inManagedObjectContext:v7];
          objc_opt_class();
          v14 = REMCheckedDynamicCast();
          v15 = [(REMCDObject *)self ckIdentifier];
          [v14 setObjectIdentifier:v15];

          [v14 setOwnerName:v4];
          [v14 setAccount:v9];
          v16 = [(REMCDObject *)self ckIdentifier];

          if (v16 && v14)
          {
            objc_opt_class();
            v17 = REMDynamicCast();
            v18 = [v17 batchFetchHelper];
            if (!v18)
            {
              sub_100768504();
            }

            v19 = [(REMCDObject *)self ckIdentifier];
            [v18 setCachedManagedObject:v14 forCKIdentifier:v19 accountIdentifier:v10];
          }
        }

        else
        {
          v21 = [(REMCDObject *)self ckIdentifier];
          v12 = [NSPredicate predicateWithFormat:@"objectIdentifier == %@", v21];

          objc_opt_class();
          v22 = [REMCKSharedObjectOwnerName ic_objectsMatchingPredicate:v12 context:v7];
          v23 = [v22 firstObject];
          v13 = REMDynamicCast();

          if (v13)
          {
            [v9 removeCkSharedObjectOwnerNamesObject:v13];
            [v7 deleteObject:v13];
          }
        }

        [v9 updateChangeCount];
      }

      else
      {
        v20 = +[REMLog cloudkit];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          sub_1007691E0();
        }
      }
    }

    else
    {
      v10 = +[REMLog cloudkit];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        sub_100769288();
      }
    }
  }

  else
  {
    v9 = +[REMLog cloudkit];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_100769330();
    }
  }
}

- (void)setCkServerShare:(id)a3
{
  v7 = a3;
  if (([(CKShare *)self->_ckServerShare isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_ckServerShare, a3);
    [(REMCDObject *)self updateObjectWithShare:v7];
    if (v7)
    {
      v5 = [objc_opt_class() shareSystemFieldsTransformer];
      v6 = [v5 transformedValue:v7];
      [(REMCDObject *)self setCkServerShareData:v6];
    }

    else
    {
      [(REMCDObject *)self setCkServerShareData:0];
    }
  }
}

+ (id)objectCkZoneOwnerNameFromCKRecordZoneID:(id)a3
{
  v3 = [a3 ownerName];
  if ([v3 isEqualToString:CKCurrentUserDefaultName])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v4;
}

- (BOOL)hasAllMandatoryFields
{
  v2 = [(REMCDObject *)self ckIdentifier];
  v3 = [v2 length] != 0;

  return v3;
}

- (id)shortLoggingDescription
{
  v3 = objc_opt_class();
  v4 = [(REMCDObject *)self ckIdentifier];
  v5 = [NSString stringWithFormat:@"<%@ %@>", v3, v4];

  return v5;
}

- (id)ic_loggingValues
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(REMCDObject *)self managedObjectContext];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000B67C8;
  v8[3] = &unk_1008D9B98;
  v5 = v3;
  v9 = v5;
  v10 = self;
  [v4 performBlockAndWait:v8];

  v6 = v5;
  return v5;
}

- (id)cloudKitReferenceWithRecordIDAndValidateAction:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [CKReference alloc];
    v5 = [v4 initWithRecordID:v3 action:CKReferenceActionValidate];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)getResolutionTokenMapFromRecord:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"ResolutionTokenMap"];
  if (v3)
  {
    v4 = [REMResolutionTokenMap objc_newObjectFromJSONString:v3];
    if (!v4)
    {
      v5 = +[REMLog cloudkit];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        sub_1007693D8();
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)generateReolutionTokenMapForTestingWithKeys:(id)a3
{
  v4 = a3;
  v5 = [(REMCDObject *)self createResolutionTokenMapIfNecessary];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 updateForKey:{*(*(&v11 + 1) + 8 * v10), v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (BOOL)isMergeableWithLocalObject
{
  if (![objc_opt_class() shouldAttemptLocalObjectMerge] || (-[REMCDObject isDeleted](self, "isDeleted") & 1) != 0 || -[REMCDObject isConcealed](self, "isConcealed"))
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = [(REMCDObject *)self isInCloud];
    v5 = +[REMLog cloudkit];
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
    if (v3)
    {
      if (v6)
      {
        sub_10076950C();
      }
    }

    else if (v6)
    {
      sub_100769448();
    }
  }

  return v3;
}

- (BOOL)isConnectedToAccountObject:(id)a3
{
  v4 = +[REMLogStore write];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(REMCDObject *)self objectID];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Warning: Calling super (REMCDObject's) -isConnectedToAccountObject:, make sure this model class implements proper connection to the account to avoid being auto marked as deleted {self: %@}.", &v7, 0xCu);
  }

  return 0;
}

+ (id)fetchRequest
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromClass(a1);
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = +[REMLogStore write];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_10076AE20(v7);
    }

    v8 = +[REMCDRootEntityObject fetchRequest];
  }

  else
  {
    v10.receiver = a1;
    v10.super_class = &OBJC_METACLASS___REMCDObject;
    v8 = objc_msgSendSuper2(&v10, "fetchRequest");
  }

  return v8;
}

+ (id)subclassNamesOfREMCDObjectRepresentingRootCoreDataEntities
{
  if (qword_100952AF8 != -1)
  {
    sub_10076AED4();
  }

  v3 = qword_100952B00;

  return v3;
}

+ (void)mergeSystemPropertiesIntoCDObject:(id)a3 fromCKRecord:(id)a4
{
  v5 = a3;
  v7 = a4;
  if ([v5 respondsToSelector:"shouldUseResolutionTokenMapForMergingData"])
  {
    [v5 mergeDataRevertedLocallyMarkedForDeletion];
    [v5 mergeDataRefusedToMergeMarkedForDeletion];
    v6 = v5;
    v5 = v7;
    sub_1004E8C90(v5, v6, v6, v5);
  }

  else
  {
    sub_1004E83E0(v5, v7);
  }
}

@end