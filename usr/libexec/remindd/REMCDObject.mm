@interface REMCDObject
+ (BOOL)isAbstract;
+ (BOOL)needsToReFetchServerRecordValue:(id)value;
+ (NSString)cdEntityName;
+ (REMCDObject)objectWithRecordID:(id)d accountID:(id)iD context:(id)context;
+ (id)allCloudObjectIDsInContext:(id)context;
+ (id)allCloudObjectsInContext:(id)context;
+ (id)allCloudObjectsPredicate;
+ (id)allDirtyCloudObjectIDsInContext:(id)context;
+ (id)assetForData:(id)data;
+ (id)ckIdentifierFromRecordName:(id)name;
+ (id)entity;
+ (id)failedToSyncCountsByCKIdentifier;
+ (id)failureCountQueue;
+ (id)fetchRequest;
+ (id)getResolutionTokenMapFromRecord:(id)record;
+ (id)ic_objectsFromObjectIDs:(id)ds propertiesToFetch:(id)fetch relationshipKeyPathsForPrefetching:(id)prefetching context:(id)context;
+ (id)ic_resultsMatchingPredicate:(id)predicate sortDescriptors:(id)descriptors resultType:(unint64_t)type fetchBatchSize:(unint64_t)size propertiesToFetch:(id)fetch relationshipKeyPathsForPrefetching:(id)prefetching context:(id)context;
+ (id)keyPathsForValuesAffectingEffectiveMinimumSupportedVersion;
+ (id)newCloudObjectForRecord:(id)record accountID:(id)d context:(id)context;
+ (id)newObjectID;
+ (id)newObjectWithCKIdentifier:(id)identifier context:(id)context account:(id)account;
+ (id)newObjectWithCKRecordName:(id)name context:(id)context account:(id)account;
+ (id)newPlaceholderObjectForRecordID:(id)d account:(id)account context:(id)context;
+ (id)numberOfPushAttemptsToWaitByCKIdentifier;
+ (id)objectCkZoneOwnerNameFromCKRecordZoneID:(id)d;
+ (id)objectIDWithUUID:(id)d;
+ (id)recordSystemFieldsTransformer;
+ (id)recordTypes;
+ (id)relationshipsEligibleForEffectiveMinimumSupportedVersionPropagationWithEntity:(id)entity;
+ (id)shareSystemFieldsTransformer;
+ (id)subclassNamesOfREMCDObjectRepresentingRootCoreDataEntities;
+ (id)subclassesOfREMCDObjectRepresentingRootCoreDataEntities;
+ (id)temporaryAssetDirectoryURL;
+ (id)temporaryAssets;
+ (id)versionsByOperationQueue;
+ (id)versionsByRecordIDByOperation;
+ (void)deleteAllTemporaryAssetFilesForAllObjects;
+ (void)deleteTemporaryAssetFilesForOperation:(id)operation;
+ (void)deleteTemporaryFilesForAsset:(id)asset;
+ (void)mergeSystemPropertiesIntoCDObject:(id)object fromCKRecord:(id)record;
- (BOOL)_allowsObjectSupportedVersion;
- (BOOL)_isInICloudAccount;
- (BOOL)_validateZoneOwnerNamesWithLogPrefix:(id)prefix error:(id *)error;
- (BOOL)canBeSharedViaICloud;
- (BOOL)hasAllMandatoryFields;
- (BOOL)hasSuccessfullyPushedLatestVersionToCloud;
- (BOOL)isConcealed;
- (BOOL)isConnectedToAccountObject:(id)object;
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
- (BOOL)needsToFetchAfterServerRecordChanged:(id)changed;
- (BOOL)shouldBeDeletedFromLocalDatabase;
- (BOOL)shouldBeIgnoredForSync;
- (BOOL)validateEffectiveMinimumSupportedVersionApplyingChange:(BOOL)change;
- (BOOL)validateForInsert:(id *)insert;
- (BOOL)validateForUpdate:(id *)update;
- (CKRecord)ckServerRecord;
- (CKShare)ckServerShare;
- (NSData)resolutionTokenMapData;
- (NSString)accountCKIdentifier;
- (NSString)ckZoneOwnerName;
- (RDStoreControllerManagedObjectContext)storeControllerManagedObjectContext;
- (REMObjectID)remObjectID;
- (REMResolutionTokenMap)resolutionTokenMap;
- (id)allChildObjects;
- (id)ckIdentifierFromRecordName:(id)name;
- (id)cloudAccount;
- (id)cloudKitReferenceWithRecordIDAndValidateAction:(id)action;
- (id)createResolutionTokenMapIfNecessary;
- (id)currentUserShareParticipantID;
- (id)ic_loggingValues;
- (id)jsonDataFromResolutionTokenMap:(id)map;
- (id)newlyCreatedRecord;
- (id)recordID;
- (id)recordName;
- (id)recordType;
- (id)recordZoneName;
- (id)remObjectIDWithError:(id *)error;
- (id)resolutionTokenMapFromJsonData:(id)data;
- (id)serverShareCheckingParent;
- (id)shortLoggingDescription;
- (int64_t)failedToSyncCount;
- (int64_t)isPushingSameOrLaterThanVersion:(int64_t)version;
- (int64_t)numberOfPushAttemptsToWaitCount;
- (int64_t)parentEffectiveMinimumSupportedVersion;
- (int64_t)rd_ckDatabaseScope;
- (int64_t)versionForOperation:(id)operation;
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
- (void)didAcceptShare:(id)share;
- (void)didChangeValueForKey:(id)key;
- (void)didSave;
- (void)didTurnIntoFault;
- (void)fixValueBeforeMarkingForDeletionForKey:(id)key;
- (void)fixValueBeforeUnmarkingForDeletionForKey:(id)key;
- (void)fixValuesOfKeysWithUniqueConstraintBeforeSettingMarkedForDeletion:(BOOL)deletion;
- (void)forcePushToCloud;
- (void)generateReolutionTokenMapForTestingWithKeys:(id)keys;
- (void)incrementFailureCounts;
- (void)insertCloudStateIfNeededOnAwakeFromFetch;
- (void)insertCloudStateOnAwakeFromInsert;
- (void)markForDeletion;
- (void)markObjectDirtyAfterMarkedForDeletion;
- (void)mergeDataFromRecord:(id)record accountID:(id)d;
- (void)objectFailedToBePushedToCloudWithOperation:(id)operation recordID:(id)d error:(id)error;
- (void)objectWasDeletedFromCloudByAnotherDevice;
- (void)objectWasFetchedButDoesNotExistInCloud;
- (void)objectWasFetchedFromCloudWithRecord:(id)record accountID:(id)d;
- (void)objectWasPushedToCloudWithOperation:(id)operation serverRecord:(id)record;
- (void)objectWillBePushedToCloudWithOperation:(id)operation;
- (void)prepareForDeletion;
- (void)recursiveMarkForDeletion:(BOOL)deletion usingVisitedMap:(id)map;
- (void)recursivelyFixCrossZoneRelationshipWithVisitedMap:(id)map perObjectHandler:(id)handler;
- (void)resetFailureCounts;
- (void)setAccount:(id)account;
- (void)setCkServerRecord:(id)record;
- (void)setCkServerShare:(id)share;
- (void)setEffectiveMinimumSupportedVersion:(int64_t)version;
- (void)setFailedToSyncCount:(int64_t)count;
- (void)setMinimumSupportedVersion:(int64_t)version;
- (void)setNumberOfPushAttemptsToWaitCount:(int64_t)count;
- (void)setResolutionTokenMap:(id)map;
- (void)setResolutionTokenMapData:(id)data;
- (void)setServerShareIfNewer:(id)newer;
- (void)setShouldSyncUpDeleteIfNeeded;
- (void)setVersion:(int64_t)version forOperation:(id)operation;
- (void)traverseObjectTreeUsingVisitedMap:(id)map handler:(id)handler;
- (void)unmarkForDeletion;
- (void)updateChangeCount;
- (void)updateDeletedFlagAccordingToOrphanState:(id)state;
- (void)updateObjectWithShare:(id)share;
- (void)updateParentReferenceIfNecessary;
- (void)updateSharedObjectOwnerName:(id)name;
- (void)willChangeValueForKey:(id)key;
- (void)willSave;
@end

@implementation REMCDObject

+ (id)entity
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromClass(self);
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = +[(REMCDObject *)REMCDRootEntityObject];
  }

  else
  {
    v9.receiver = self;
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
  hack_resolutionTokenMapCopy = [(REMCDObject *)self hack_resolutionTokenMapCopy];
  if (hack_resolutionTokenMapCopy)
  {
    v4 = hack_resolutionTokenMapCopy;
    hack_willSaveHandled = [(REMCDObject *)self hack_willSaveHandled];

    if ((hack_willSaveHandled & 1) == 0)
    {
      [(REMCDObject *)self setHack_willSaveHandled:1];
      hack_resolutionTokenMapCopy2 = [(REMCDObject *)self hack_resolutionTokenMapCopy];
      [(REMCDObject *)self setResolutionTokenMap:hack_resolutionTokenMapCopy2];
      [(REMCDObject *)self setHack_resolutionTokenMapCopy:0];
      [(REMCDObject *)self setCached_CDResolutionMap:0];
    }
  }

  storeControllerManagedObjectContext = [(REMCDObject *)self storeControllerManagedObjectContext];
  if (storeControllerManagedObjectContext)
  {
    allKeys = storeControllerManagedObjectContext;
    storeControllerManagedObjectContext2 = [(REMCDObject *)self storeControllerManagedObjectContext];
    storeController = [storeControllerManagedObjectContext2 storeController];
    if (!storeController)
    {
LABEL_9:

      goto LABEL_10;
    }

    v11 = storeController;
    storeControllerManagedObjectContext3 = [(REMCDObject *)self storeControllerManagedObjectContext];
    storeController2 = [storeControllerManagedObjectContext3 storeController];
    if (![storeController2 supportsCoreSpotlightIndexing] || -[REMCDObject spotlightIndexCountUpdated](self, "spotlightIndexCountUpdated"))
    {

      goto LABEL_9;
    }

    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      changedValues = [(REMCDObject *)self changedValues];
      allKeys = [changedValues allKeys];

      storeControllerManagedObjectContext2 = [NSMutableSet setWithArray:allKeys];
      propertiesThatShouldTriggerReindexing = [objc_opt_class() propertiesThatShouldTriggerReindexing];
      [storeControllerManagedObjectContext2 intersectSet:propertiesThatShouldTriggerReindexing];

      if ([storeControllerManagedObjectContext2 count])
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

  identifier = [(REMCDObject *)self identifier];

  if (!identifier)
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
  managedObjectContext = [(REMCDObject *)self managedObjectContext];
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
        managedObjectContext = [(REMCDObject *)self managedObjectContext];
        transactionAuthor = [managedObjectContext transactionAuthor];
        v5 = [transactionAuthor hasPrefix:RDStoreControllerICCloudContextAuthor];

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
    isCloudKit = 0;
  }

  else
  {
    accountTypeHost = [v3 accountTypeHost];
    isCloudKit = [accountTypeHost isCloudKit];
  }

  return isCloudKit;
}

- (REMObjectID)remObjectID
{
  identifier = [(REMCDObject *)self identifier];
  entity = [(REMCDObject *)self entity];
  name = [entity name];

  v6 = 0;
  if (identifier && name)
  {
    v6 = [REMObjectID objectIDWithUUID:identifier entityName:name];
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
  ckCloudState = [(REMCDObject *)self ckCloudState];

  if (!ckCloudState)
  {
    v4 = +[REMLog cloudkit];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      shortLoggingDescription = [(REMCDObject *)self shortLoggingDescription];
      v10 = 138543362;
      v11 = shortLoggingDescription;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Nil cloud state for %{public}@. Sorry. Fixing now.", &v10, 0xCu);
    }

    managedObjectContext = [(REMCDObject *)self managedObjectContext];
    if (!managedObjectContext)
    {
      sub_100767AD8();
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [NSEntityDescription insertNewObjectForEntityForName:v8 inManagedObjectContext:managedObjectContext];

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
  isInICloudAccount = [(REMCDObject *)self isInICloudAccount];
  if (isInICloudAccount)
  {

    LOBYTE(isInICloudAccount) = [(REMCDObject *)self ckNeedsInitialFetchFromCloud];
  }

  return isInICloudAccount;
}

- (BOOL)isInICloudAccount
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  managedObjectContext = [(REMCDObject *)self managedObjectContext];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002AAF8;
  v5[3] = &unk_1008D9A28;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [managedObjectContext performBlockAndWait:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (id)currentUserShareParticipantID
{
  serverShareCheckingParent = [(REMCDObject *)self serverShareCheckingParent];
  currentUserParticipant = [serverShareCheckingParent currentUserParticipant];
  participantID = [currentUserParticipant participantID];
  uppercaseString = [participantID uppercaseString];

  return uppercaseString;
}

- (id)serverShareCheckingParent
{
  selfCopy = self;
  if (selfCopy)
  {
    do
    {
      v3 = selfCopy;
      ckServerShare = [(REMCDObject *)selfCopy ckServerShare];
      selfCopy = [(REMCDObject *)selfCopy parentCloudObject];
    }

    while (!ckServerShare && selfCopy);
  }

  else
  {
    ckServerShare = 0;
  }

  return ckServerShare;
}

- (CKShare)ckServerShare
{
  ckServerShare = self->_ckServerShare;
  if (!ckServerShare)
  {
    ckServerShareData = [(REMCDObject *)self ckServerShareData];
    if (ckServerShareData)
    {
      shareSystemFieldsTransformer = [objc_opt_class() shareSystemFieldsTransformer];
      v6 = [shareSystemFieldsTransformer reverseTransformedValue:ckServerShareData];
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

+ (id)ic_objectsFromObjectIDs:(id)ds propertiesToFetch:(id)fetch relationshipKeyPathsForPrefetching:(id)prefetching context:(id)context
{
  fetchCopy = fetch;
  prefetchingCopy = prefetching;
  contextCopy = context;
  v11 = [contextCopy reduceIntoDictionaryByRootEntityNamesWithManagedObjectIDs:ds];
  if ([v11 count])
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = NSStringFromClass(self);
    v15 = [v13 isEqualToString:v14];

    if (v15)
    {
      subclassesOfREMCDObjectRepresentingRootCoreDataEntities = [self subclassesOfREMCDObjectRepresentingRootCoreDataEntities];
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
            v19 = subclassesOfREMCDObjectRepresentingRootCoreDataEntities;
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
                  cdEntityName = [v24 cdEntityName];
                  v26 = [cdEntityName isEqualToString:v17];

                  if (v26)
                  {
                    v27 = [v24 _ic_objectsFromObjectIDs:v18 propertiesToFetch:fetchCopy relationshipKeyPathsForPrefetching:prefetchingCopy context:contextCopy];
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
      cdEntityName2 = [self cdEntityName];
      v29 = [contextCopy rootEntityNameWithEntityName:cdEntityName2];

      if ([v29 length])
      {
        v30 = [v11 objectForKeyedSubscript:v29];
        if ([v30 count])
        {
          v38 = [self _ic_objectsFromObjectIDs:v30 propertiesToFetch:fetchCopy relationshipKeyPathsForPrefetching:prefetchingCopy context:contextCopy];
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

+ (id)ic_resultsMatchingPredicate:(id)predicate sortDescriptors:(id)descriptors resultType:(unint64_t)type fetchBatchSize:(unint64_t)size propertiesToFetch:(id)fetch relationshipKeyPathsForPrefetching:(id)prefetching context:(id)context
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  fetchCopy = fetch;
  prefetchingCopy = prefetching;
  selfCopy = self;
  contextCopy = context;
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v21 = NSStringFromClass(selfCopy);
  v22 = [v20 isEqualToString:v21];

  if (v22)
  {
    v41 = prefetchingCopy;
    v23 = descriptorsCopy;
    v24 = predicateCopy;
    v40 = +[NSMutableArray array];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = [(objc_class *)selfCopy subclassesOfREMCDObjectRepresentingRootCoreDataEntities];
    v25 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    sizeCopy = size;
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

          v30 = contextCopy;
          v36 = contextCopy;
          typeCopy = type;
          typeCopy2 = type;
          v33 = sizeCopy;
          v34 = [*(*(&v42 + 1) + 8 * v29) _ic_resultsMatchingPredicate:predicateCopy sortDescriptors:v23 resultType:typeCopy2 fetchBatchSize:sizeCopy propertiesToFetch:fetchCopy relationshipKeyPathsForPrefetching:v41 context:v36];
          if (v34)
          {
            [v40 addObjectsFromArray:v34];
          }

          v29 = v29 + 1;
          sizeCopy = v33;
          type = typeCopy;
          contextCopy = v30;
        }

        while (v27 != v29);
        v27 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v27);
    }

    descriptorsCopy = v23;
    prefetchingCopy = v41;
  }

  else
  {
    v24 = predicateCopy;
    v40 = [(objc_class *)selfCopy _ic_resultsMatchingPredicate:predicateCopy sortDescriptors:descriptorsCopy resultType:type fetchBatchSize:size propertiesToFetch:fetchCopy relationshipKeyPathsForPrefetching:prefetchingCopy context:contextCopy];
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

- (void)willChangeValueForKey:(id)key
{
  keyCopy = key;
  v5.receiver = self;
  v5.super_class = REMCDObject;
  [(REMCDObject *)&v5 willChangeValueForKey:keyCopy];
  if (objc_opt_respondsToSelector())
  {
    [(REMCDObject *)self willChangeValueForKey_Swfit:keyCopy];
  }
}

- (void)didChangeValueForKey:(id)key
{
  keyCopy = key;
  v9.receiver = self;
  v9.super_class = REMCDObject;
  [(REMCDObject *)&v9 didChangeValueForKey:keyCopy];
  if ([(REMCDObject *)self _allowsObjectSupportedVersion])
  {
    keyPathsForValuesAffectingEffectiveMinimumSupportedVersion = [objc_opt_class() keyPathsForValuesAffectingEffectiveMinimumSupportedVersion];
    v6 = [keyPathsForValuesAffectingEffectiveMinimumSupportedVersion containsObject:keyCopy];

    if (v6)
    {
      v7 = +[REMLogStore write];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        remObjectID = [(REMCDObject *)self remObjectID];
        *buf = 138543618;
        v11 = keyCopy;
        v12 = 2114;
        v13 = remObjectID;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "REMSupportedVersionUpdating: didChangeValueForKey:[%{public}@] calling _markObjectDirtyForSupportedVersionValidation on {remObjectID: %{public}@}", buf, 0x16u);
      }

      [(REMCDObject *)self _markDirtyForEffectiveMinimumSupportedVersionValidation];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [(REMCDObject *)self didChangeValueForKey_Swfit:keyCopy];
  }
}

- (void)setResolutionTokenMap:(id)map
{
  mapCopy = map;
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

  cached_CDResolutionMap = [(REMCDObject *)self cached_CDResolutionMap];
  if (!cached_CDResolutionMap)
  {
    v8 = [(REMCDObject *)self primitiveValueForKey:@"resolutionTokenMap_v3_JSONData"];
    cached_CDResolutionMap = [(REMCDObject *)self resolutionTokenMapFromJsonData:v8];
  }

  if (([cached_CDResolutionMap isEqual:mapCopy] & 1) == 0)
  {
    v9 = [(REMCDObject *)self jsonDataFromResolutionTokenMap:mapCopy];
    [(REMCDObject *)self setResolutionTokenMapData:v9];
  }

  v10 = [mapCopy copy];
  [(REMCDObject *)self setCached_CDResolutionMap:v10];

  [(REMCDObject *)self setHack_resolutionTokenMapCopy:mapCopy];
}

- (REMResolutionTokenMap)resolutionTokenMap
{
  [(REMCDObject *)self willAccessValueForKey:@"resolutionTokenMap"];
  [(REMCDObject *)self willAccessValueForKey:@"resolutionTokenMap_v3_JSONData"];
  hack_resolutionTokenMapCopy = [(REMCDObject *)self hack_resolutionTokenMapCopy];

  if (!hack_resolutionTokenMapCopy)
  {
    v4 = [(REMCDObject *)self primitiveValueForKey:@"resolutionTokenMap_v3_JSONData"];
    v5 = [(REMCDObject *)self resolutionTokenMapFromJsonData:v4];
    [(REMCDObject *)self setHack_resolutionTokenMapCopy:v5];

    hack_resolutionTokenMapCopy2 = [(REMCDObject *)self hack_resolutionTokenMapCopy];
    v7 = [hack_resolutionTokenMapCopy2 copy];
    [(REMCDObject *)self setCached_CDResolutionMap:v7];
  }

  hack_resolutionTokenMapCopy3 = [(REMCDObject *)self hack_resolutionTokenMapCopy];
  [(REMCDObject *)self didAccessValueForKey:@"resolutionTokenMap_v3_JSONData"];
  [(REMCDObject *)self didAccessValueForKey:@"resolutionTokenMap"];

  return hack_resolutionTokenMapCopy3;
}

- (void)setResolutionTokenMapData:(id)data
{
  dataCopy = data;
  v4 = [(REMCDObject *)self primitiveValueForKey:@"resolutionTokenMap_v3_JSONData"];
  if (v4 != dataCopy && (!dataCopy || ([v4 isEqualToData:dataCopy] & 1) == 0))
  {
    [(REMCDObject *)self willChangeValueForKey:@"resolutionTokenMapData"];
    [(REMCDObject *)self willChangeValueForKey:@"resolutionTokenMap_v3_JSONData"];
    [(REMCDObject *)self setPrimitiveValue:dataCopy forKey:@"resolutionTokenMap_v3_JSONData"];
    [(REMCDObject *)self didChangeValueForKey:@"resolutionTokenMap_v3_JSONData"];
    [(REMCDObject *)self didChangeValueForKey:@"resolutionTokenMap"];
    [(REMCDObject *)self setHack_resolutionTokenMapCopy:0];
    [(REMCDObject *)self setCached_CDResolutionMap:0];
  }
}

- (id)jsonDataFromResolutionTokenMap:(id)map
{
  objc_toJSONString = [map objc_toJSONString];
  v4 = objc_toJSONString;
  if (objc_toJSONString)
  {
    v5 = [objc_toJSONString dataUsingEncoding:4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)resolutionTokenMapFromJsonData:(id)data
{
  dataCopy = data;
  if ([dataCopy length])
  {
    v4 = [[NSString alloc] initWithData:dataCopy encoding:4];
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
  resolutionTokenMap = [(REMCDObject *)self resolutionTokenMap];
  v5 = REMDynamicCast();

  objc_autoreleasePoolPop(v3);
  if (!v5)
  {
    v5 = objc_alloc_init(REMResolutionTokenMap);
    [(REMCDObject *)self setResolutionTokenMap:v5];
  }

  return v5;
}

- (void)setAccount:(id)account
{
  accountCopy = account;
  v5 = [(REMCDObject *)self primitiveValueForKey:@"account"];
  [(REMCDObject *)self setPreviousAccount:v5];

  [(REMCDObject *)self willChangeValueForKey:@"account"];
  [(REMCDObject *)self setPrimitiveValue:accountCopy forKey:@"account"];

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

- (BOOL)validateForInsert:(id *)insert
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
    account = [(REMCDObject *)self account];

    if (account)
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
  v7 = [(REMCDObject *)self _validateZoneOwnerNamesWithLogPrefix:@"Inserting" error:insert];
LABEL_8:
  if (![(REMCDObject *)self validateForInsertion_handledJournalEntries]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    selfCopy = self;
    v14 = 0;
    v9 = [(REMCDObject *)selfCopy validateForInsert_Swift:&v14];
    v10 = v14;
    if ((v9 & 1) == 0)
    {
      v11 = +[REMLogStore write];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_100766D7C();
      }
    }

    [(REMCDObject *)selfCopy setValidateForInsertion_handledJournalEntries:1];
    v7 &= v9;
  }

  return v7;
}

- (BOOL)validateForUpdate:(id *)update
{
  v24.receiver = self;
  v24.super_class = REMCDObject;
  if (![(REMCDObject *)&v24 validateForUpdate:?])
  {
    goto LABEL_9;
  }

  previousAccount = [(REMCDObject *)self previousAccount];
  if (!previousAccount)
  {
    goto LABEL_11;
  }

  v6 = previousAccount;
  account = [(REMCDObject *)self account];
  if (!account)
  {

    goto LABEL_11;
  }

  v8 = account;
  previousAccount2 = [(REMCDObject *)self previousAccount];
  account2 = [(REMCDObject *)self account];
  v11 = [previousAccount2 isEqual:account2];

  if (v11)
  {
LABEL_11:
    LOBYTE(update) = [(REMCDObject *)self _validateZoneOwnerNamesWithLogPrefix:@"Updating" error:update];
    goto LABEL_12;
  }

  v12 = +[REMLogStore write];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_100766DF0(self, v12);
  }

  if (update)
  {
    previousAccount3 = [(REMCDObject *)self previousAccount];
    remObjectID = [previousAccount3 remObjectID];
    account3 = [(REMCDObject *)self account];
    remObjectID2 = [account3 remObjectID];
    remObjectID3 = [(REMCDObject *)self remObjectID];
    *update = [REMError validationErrorMoveFromAccount:remObjectID toAccount:remObjectID2 objectID:remObjectID3];

LABEL_9:
    LOBYTE(update) = 0;
  }

LABEL_12:
  if (![(REMCDObject *)self validateForUpdate_handledJournalEntries]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    selfCopy = self;
    v23 = 0;
    v19 = [(REMCDObject *)selfCopy validateForUpdate_Swift:&v23];
    v20 = v23;
    if ((v19 & 1) == 0)
    {
      v21 = +[REMLogStore write];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        sub_100766ED4();
      }
    }

    [(REMCDObject *)selfCopy setValidateForUpdate_handledJournalEntries:1];
    LOBYTE(update) = update & v19;
  }

  return update;
}

- (BOOL)_validateZoneOwnerNamesWithLogPrefix:(id)prefix error:(id *)error
{
  prefixCopy = prefix;
  parentCloudObject = [(REMCDObject *)self parentCloudObject];
  if (parentCloudObject)
  {
    ckZoneOwnerName = [(REMCDObject *)self ckZoneOwnerName];
    if (!ckZoneOwnerName)
    {
      ckZoneOwnerName = CKCurrentUserDefaultName;
    }

    ckZoneOwnerName2 = [parentCloudObject ckZoneOwnerName];
    if (!ckZoneOwnerName2)
    {
      ckZoneOwnerName2 = CKCurrentUserDefaultName;
    }

    v10 = [(NSString *)ckZoneOwnerName isEqual:ckZoneOwnerName2];
    if ((v10 & 1) == 0)
    {
      _parentZoneMismatchErrorDebugDescription = [parentCloudObject _parentZoneMismatchErrorDebugDescription];
      v12 = +[REMLogStore write];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v18 = objc_opt_class();
        v20 = v18;
        remObjectID = [(REMCDObject *)self remObjectID];
        v16 = objc_opt_class();
        v19 = v16;
        [parentCloudObject remObjectID];
        *buf = 138545154;
        v23 = prefixCopy;
        v24 = 2114;
        v25 = v18;
        v26 = 2114;
        v27 = remObjectID;
        v28 = 2114;
        v29 = ckZoneOwnerName;
        v30 = 2114;
        v31 = v16;
        v33 = v32 = 2114;
        v17 = v33;
        v34 = 2114;
        v35 = ckZoneOwnerName2;
        v36 = 2114;
        v37 = _parentZoneMismatchErrorDebugDescription;
        _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "Validation Failure: %{public}@ {%{public}@, %{public}@, %{public}@} and its parent {%{public}@, %{public}@, %{public}@, %{public}@} have different zones", buf, 0x52u);
      }

      if (error)
      {
        remObjectID2 = [(REMCDObject *)self remObjectID];
        remObjectID3 = [parentCloudObject remObjectID];
        *error = [REMError validationErrorDifferentZoneObjectID:remObjectID2 zoneOwnerName:ckZoneOwnerName parentObjectID:remObjectID3 parentZoneOwnerName:ckZoneOwnerName2];
      }
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)updateDeletedFlagAccordingToOrphanState:(id)state
{
  v4 = [(REMCDObject *)self isConnectedToAccountObject:state];
  if (v4 != [(REMCDObject *)self markedForDeletion])
  {
    changedValues = [(REMCDObject *)self changedValues];
    allKeys = [changedValues allKeys];
    v7 = [allKeys containsObject:@"markedForDeletion"];

    if (!v7)
    {
      managedObjectContext = +[REMLogStore write];
      if (os_log_type_enabled(managedObjectContext, OS_LOG_TYPE_DEBUG))
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
      remObjectID = [(REMCDObject *)self remObjectID];
      v21 = 138543618;
      v22 = v9;
      v23 = 2114;
      v24 = remObjectID;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Begin recursiveMarkForDeletion:%{public}@ from %{public}@", &v21, 0x16u);
    }

    managedObjectContext = +[NSMutableSet set];
    selfCopy2 = self;
    v13 = 0;
LABEL_13:
    [(REMCDObject *)selfCopy2 recursiveMarkForDeletion:v13 usingVisitedMap:managedObjectContext];
LABEL_19:

    return;
  }

  if (![(REMCDObject *)self shouldMarkAsDeletedInsteadOfDeletingImmediately])
  {
    v17 = +[REMLogStore write];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      remObjectID2 = [(REMCDObject *)self remObjectID];
      v21 = 138543362;
      v22 = remObjectID2;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Deleting orphan object %{public}@ permanently from local database", &v21, 0xCu);
    }

    managedObjectContext = [(REMCDObject *)self managedObjectContext];
    [managedObjectContext deleteObject:self];
    goto LABEL_19;
  }

  if (![(REMCDObject *)self isSharedRootObject]|| [(REMCDObject *)self isOwnedByCurrentUser])
  {
    v14 = +[REMLogStore write];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [NSNumber numberWithBool:1];
      remObjectID3 = [(REMCDObject *)self remObjectID];
      v21 = 138543618;
      v22 = v15;
      v23 = 2114;
      v24 = remObjectID3;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Begin recursiveMarkForDeletion:%{public}@ from %{public}@", &v21, 0x16u);
    }

    managedObjectContext = +[NSMutableSet set];
    selfCopy2 = self;
    v13 = 1;
    goto LABEL_13;
  }

  v19 = +[REMLogStore write];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    remObjectID4 = [(REMCDObject *)self remObjectID];
    v21 = 138543362;
    v22 = remObjectID4;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Mark shared-to-me root %{public}@ for deletion and recursively deleted all child objects from local database", &v21, 0xCu);
  }

  [(REMCDObject *)self markForDeletion];
  [(REMCDObject *)self deleteAllChildrenFromLocalDatabase];
}

- (void)traverseObjectTreeUsingVisitedMap:(id)map handler:(id)handler
{
  mapCopy = map;
  handlerCopy = handler;
  remObjectID = [(REMCDObject *)self remObjectID];
  if (!remObjectID)
  {
    obj = +[REMLogStore write];
    if (os_log_type_enabled(obj, OS_LOG_TYPE_FAULT))
    {
      sub_100767078(self);
    }

    goto LABEL_34;
  }

  if ([mapCopy containsObject:remObjectID])
  {
    obj = +[REMLogStore write];
    if (os_log_type_enabled(obj, OS_LOG_TYPE_FAULT))
    {
      sub_100766FD4(self);
    }

LABEL_34:

    goto LABEL_35;
  }

  v7 = handlerCopy[2](handlerCopy, self);
  [mapCopy addObject:remObjectID];
  if (v7)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    entity = [(REMCDObject *)self entity];
    relationshipsByName = [entity relationshipsByName];

    obj = relationshipsByName;
    v10 = [relationshipsByName countByEnumeratingWithState:&v47 objects:v56 count:16];
    if (!v10)
    {
      goto LABEL_34;
    }

    v11 = v10;
    v32 = remObjectID;
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
        entity2 = [(REMCDObject *)self entity];
        relationshipsByName2 = [entity2 relationshipsByName];
        v17 = [relationshipsByName2 objectForKeyedSubscript:v14];

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
              managedObjectContext = [(REMCDObject *)self managedObjectContext];
              v42 = 0;
              v25 = [managedObjectContext existingObjectWithID:v23 error:&v42];
              v26 = v42;

              if (v26)
              {
                v27 = +[REMLogStore write];
                if (!os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
                {
                  goto LABEL_28;
                }

                entity3 = [(REMCDObject *)self entity];
                name = [entity3 name];
                *buf = 138543618;
                v52 = v38;
                v53 = 2114;
                v54 = name;
                _os_log_fault_impl(&_mh_execute_header, v27, OS_LOG_TYPE_FAULT, "Failed to fetch objects in {relationship: %{public}@} of object {type: %{public}@}", buf, 0x16u);
              }

              else
              {
                objc_opt_class();
                v27 = REMDynamicCast();
                if (v27 && [(REMCDObject *)self shouldCascadeMarkAsDeleteInto:v27 forRelationship:v41])
                {
                  [v27 traverseObjectTreeUsingVisitedMap:mapCopy handler:handlerCopy];
                  goto LABEL_28;
                }

                entity3 = +[REMLogStore write];
                if (os_log_type_enabled(entity3, OS_LOG_TYPE_DEBUG))
                {
                  remObjectID2 = [v27 remObjectID];
                  objectID = [v25 objectID];
                  *buf = 138412546;
                  v52 = remObjectID2;
                  v53 = 2112;
                  v54 = objectID;
                  v31 = objectID;
                  _os_log_debug_impl(&_mh_execute_header, entity3, OS_LOG_TYPE_DEBUG, "Skipped traverseObjectTreeUsingVisitedMap for {remObjectID: %@, managedObjectID: %@}", buf, 0x16u);
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
        remObjectID = v32;
        goto LABEL_34;
      }
    }
  }

LABEL_35:
}

- (void)recursiveMarkForDeletion:(BOOL)deletion usingVisitedMap:(id)map
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000AABF4;
  v4[3] = &unk_1008DB808;
  deletionCopy = deletion;
  v4[4] = self;
  [(REMCDObject *)self traverseObjectTreeUsingVisitedMap:map handler:v4];
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

- (void)fixValueBeforeMarkingForDeletionForKey:(id)key
{
  keyCopy = key;
  if (([keyCopy isEqualToString:@"identifier"] & 1) == 0)
  {
    if ([keyCopy isEqualToString:@"externalIdentifier"])
    {
      externalIdentifier = [(REMCDObject *)self externalIdentifier];
      v6 = [REMExternalSyncMetadataUtils encodeExternalIdentifierForMarkedForDeletionObject:externalIdentifier];

      [(REMCDObject *)self setValue:v6 forKey:keyCopy];
LABEL_8:

      goto LABEL_9;
    }

    entity = [(REMCDObject *)self entity];
    attributesByName = [entity attributesByName];
    v9 = [attributesByName objectForKeyedSubscript:keyCopy];
    attributeType = [v9 attributeType];

    if (attributeType != 700)
    {
      v6 = +[REMLogStore write];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        sub_1007671E4(keyCopy, self);
      }

      goto LABEL_8;
    }

    [(REMCDObject *)self setValue:0 forKey:keyCopy];
  }

LABEL_9:
}

- (void)fixValueBeforeUnmarkingForDeletionForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"externalIdentifier"])
  {
    externalIdentifier = [(REMCDObject *)self externalIdentifier];
    v5 = [REMExternalSyncMetadataUtils decodeExternalIdentifierForMarkedForDeletionObject:externalIdentifier];

    [(REMCDObject *)self setValue:v5 forKey:keyCopy];
  }
}

- (BOOL)_allowsObjectSupportedVersion
{
  if ([(REMCDObject *)self shouldMarkAsDeletedInsteadOfDeletingImmediately])
  {
    return 1;
  }

  cdEntityName = [objc_opt_class() cdEntityName];
  v4 = +[REMCDAccount cdEntityName];
  v5 = [cdEntityName isEqual:v4];

  return v5;
}

- (BOOL)isUnsupported
{
  [(REMCDObject *)self effectiveMinimumSupportedVersion];

  return rem_isUnsupportedVersionByRuntime();
}

- (void)setMinimumSupportedVersion:(int64_t)version
{
  if ([(REMCDObject *)self _allowsObjectSupportedVersion])
  {
    minimumSupportedAppVersion = [(REMCDObject *)self minimumSupportedAppVersion];
    v6 = +[REMLogStore write];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [NSNumber numberWithInteger:version];
      v8 = [NSNumber numberWithInteger:minimumSupportedAppVersion];
      remObjectID = [(REMCDObject *)self remObjectID];
      v13 = 138543874;
      v14 = v7;
      v15 = 2114;
      v16 = v8;
      v17 = 2114;
      v18 = remObjectID;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "REMSupportedVersionUpdating: setMinimumSupportedVersion {newValue: %{public}@, oldValue: %{public}@, remObjectID: %{public}@}", &v13, 0x20u);
    }

    if (minimumSupportedAppVersion != version)
    {
      [(REMCDObject *)self setMinimumSupportedAppVersion:version];
      v10 = +[REMLogStore write];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        remObjectID2 = [(REMCDObject *)self remObjectID];
        v13 = 138543362;
        v14 = remObjectID2;
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

- (void)setEffectiveMinimumSupportedVersion:(int64_t)version
{
  if ([(REMCDObject *)self _allowsObjectSupportedVersion])
  {

    [(REMCDObject *)self setEffectiveMinimumSupportedAppVersion:version];
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
    storeControllerManagedObjectContext = [(REMCDObject *)self storeControllerManagedObjectContext];
    managedObjectIDsHavingDirtyEffectiveMinimumSupportedVersion = [storeControllerManagedObjectContext managedObjectIDsHavingDirtyEffectiveMinimumSupportedVersion];

    if (!managedObjectIDsHavingDirtyEffectiveMinimumSupportedVersion)
    {
      sub_100767550(self);
    }

    ic_permanentObjectID = [(REMCDObject *)self ic_permanentObjectID];
    [managedObjectIDsHavingDirtyEffectiveMinimumSupportedVersion addObject:ic_permanentObjectID];
    goto LABEL_7;
  }

  managedObjectIDsHavingDirtyEffectiveMinimumSupportedVersion = +[REMLogStore write];
  if (os_log_type_enabled(managedObjectIDsHavingDirtyEffectiveMinimumSupportedVersion, OS_LOG_TYPE_DEFAULT))
  {
    ic_permanentObjectID = [(REMCDObject *)self ic_loggingIdentifier];
    v6 = 138543362;
    v7 = ic_permanentObjectID;
    _os_log_impl(&_mh_execute_header, managedObjectIDsHavingDirtyEffectiveMinimumSupportedVersion, OS_LOG_TYPE_DEFAULT, "REMSupportedVersionUpdating: Not actually adding dirty object to managedObjectIDsHavingDirtyEffectiveMinimumSupportedVersion because this CoreData object is being deleted {ic_loggingIdentifier: %{public}@}", &v6, 0xCu);
LABEL_7:
  }
}

+ (id)relationshipsEligibleForEffectiveMinimumSupportedVersionPropagationWithEntity:(id)entity
{
  entityCopy = entity;
  v16 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  relationshipsByName = [entityCopy relationshipsByName];
  v5 = [relationshipsByName countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(relationshipsByName);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        relationshipsByName2 = [entityCopy relationshipsByName];
        v11 = [relationshipsByName2 objectForKeyedSubscript:v9];

        destinationEntity = [v11 destinationEntity];
        name = [destinationEntity name];
        v14 = [name rem_hasPrefixCaseInsensitive:@"REMCD"];

        if (v14 && [v11 deleteRule] == 2)
        {
          [v16 addObject:v11];
        }
      }

      v6 = [relationshipsByName countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  return v16;
}

- (BOOL)validateEffectiveMinimumSupportedVersionApplyingChange:(BOOL)change
{
  changeCopy = change;
  _allowsObjectSupportedVersion = [(REMCDObject *)self _allowsObjectSupportedVersion];
  if (!_allowsObjectSupportedVersion)
  {
    v10 = +[REMLogStore write];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_100767620();
    }

    goto LABEL_13;
  }

  minimumSupportedVersion = [(REMCDObject *)self minimumSupportedVersion];
  parentEffectiveMinimumSupportedVersion = [(REMCDObject *)self parentEffectiveMinimumSupportedVersion];
  effectiveMinimumSupportedVersion = [(REMCDObject *)self effectiveMinimumSupportedVersion];
  if (parentEffectiveMinimumSupportedVersion <= minimumSupportedVersion)
  {
    v9 = minimumSupportedVersion;
  }

  else
  {
    v9 = parentEffectiveMinimumSupportedVersion;
  }

  if (effectiveMinimumSupportedVersion != v9)
  {
    v11 = effectiveMinimumSupportedVersion;
    if (changeCopy)
    {
      [(REMCDObject *)self setEffectiveMinimumSupportedVersion:?];
    }

    v10 = +[REMLogStore write];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      remObjectID = [(REMCDObject *)self remObjectID];
      v14 = 134218754;
      v15 = minimumSupportedVersion;
      v16 = 2048;
      v17 = parentEffectiveMinimumSupportedVersion;
      v18 = 2048;
      v19 = v11;
      v20 = 2114;
      v21 = remObjectID;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "REMSupportedVersionUpdating: validateEffectiveMinimumSupportedVersion indicates that my descendants should also be validated since my effective version changed {myVersion: %lld, parentEffectiveVersion: %lld, oldValue: %lld, remObjectID: %{public}@}", &v14, 0x2Au);
    }

LABEL_13:

    return _allowsObjectSupportedVersion;
  }

  return 0;
}

- (id)remObjectIDWithError:(id *)error
{
  remObjectID = [(REMCDObject *)self remObjectID];
  v5 = remObjectID;
  if (error && !remObjectID)
  {
    *error = [REMError internalErrorWithDebugDescription:@"Failed to create REMObjectID: REMCDObject.identifier or REMCDObject.entity.name is nil."];
  }

  return v5;
}

+ (id)newObjectID
{
  v3 = +[NSUUID UUID];
  v4 = [self objectIDWithUUID:v3];

  return v4;
}

+ (id)objectIDWithUUID:(id)d
{
  dCopy = d;
  cdEntityName = [self cdEntityName];
  v6 = [REMObjectID objectIDWithUUID:dCopy entityName:cdEntityName];

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
  managedObjectContext = [(REMCDObject *)self managedObjectContext];
  if (!managedObjectContext)
  {
    sub_100767AD8();
  }

  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [NSEntityDescription insertNewObjectForEntityForName:v5 inManagedObjectContext:managedObjectContext];

  [(REMCDObject *)self setCkCloudState:v6];
}

- (id)cloudAccount
{
  parentCloudObject = [(REMCDObject *)self parentCloudObject];
  cloudAccount = [parentCloudObject cloudAccount];

  if (!cloudAccount)
  {
    v4 = +[REMLog cloudkit];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100767B3C();
    }
  }

  return cloudAccount;
}

- (NSString)accountCKIdentifier
{
  objc_opt_class();
  v3 = REMDynamicCast();
  if (v3)
  {
    ckIdentifier = [(REMCDObject *)self ckIdentifier];
  }

  else
  {
    account = [(REMCDObject *)self account];
    ckIdentifier = [account ckIdentifier];
  }

  return ckIdentifier;
}

- (void)_setCKIdentifierIfNecessary
{
  ckIdentifier = [(REMCDObject *)self ckIdentifier];

  if (!ckIdentifier)
  {
    identifier = [(REMCDObject *)self identifier];
    uUIDString = [identifier UUIDString];

    if (!uUIDString)
    {
      v6 = +[REMLog cloudkit];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        sub_100767BE8();
      }
    }

    [(REMCDObject *)self setCkIdentifier:uUIDString];
  }

  ckIdentifier2 = [(REMCDObject *)self ckIdentifier];

  if (!ckIdentifier2)
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
    managedObjectContext = [(REMCDObject *)self managedObjectContext];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000AEEAC;
    v4[3] = &unk_1008D9990;
    v4[4] = self;
    [managedObjectContext performBlockAndWait:v4];
  }
}

- (void)clearChangeCount
{
  ckCloudState = [(REMCDObject *)self ckCloudState];
  [ckCloudState setCurrentLocalVersion:0];

  ckCloudState2 = [(REMCDObject *)self ckCloudState];
  [ckCloudState2 setLatestVersionSyncedToCloud:0];

  ckCloudState3 = [(REMCDObject *)self ckCloudState];
  [ckCloudState3 setLocalVersionDate:0];
}

+ (id)ckIdentifierFromRecordName:(id)name
{
  nameCopy = name;
  v4 = [nameCopy rangeOfString:@"/"];
  v5 = nameCopy;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [nameCopy substringFromIndex:v4 + 1];
  }

  return v5;
}

- (id)ckIdentifierFromRecordName:(id)name
{
  nameCopy = name;
  v4 = [objc_opt_class() ckIdentifierFromRecordName:nameCopy];

  return v4;
}

+ (REMCDObject)objectWithRecordID:(id)d accountID:(id)iD context:(id)context
{
  dCopy = d;
  iDCopy = iD;
  contextCopy = context;
  recordName = [dCopy recordName];
  v12 = [self ckIdentifierFromRecordName:recordName];

  if (!v12)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  v13 = REMDynamicCast();
  batchFetchHelper = [v13 batchFetchHelper];
  v15 = batchFetchHelper;
  if (!batchFetchHelper)
  {
LABEL_14:
    v20 = [NSPredicate predicateWithFormat:@"ckIdentifier == %@", v12];
    v21 = [self ic_objectsMatchingPredicate:v20 context:contextCopy];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000AF614;
    v37[3] = &unk_1008DB9D0;
    v38 = iDCopy;
    v16 = [v21 ic_objectPassingTest:v37];

    if (!v16)
    {
      goto LABEL_30;
    }

    goto LABEL_15;
  }

  if ([batchFetchHelper isMissingCKIdentifier:v12 accountIdentifier:iDCopy])
  {
    v16 = +[REMLog cloudkit];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v40 = v12;
      v41 = 2114;
      v42 = iDCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "(object.ckIdentifier: %{public}@, accountID: %{public}@) is in batchFetchHelper missing cache", buf, 0x16u);
    }

    goto LABEL_9;
  }

  v17 = [v15 cachedManagedObjectForCKIdentifier:v12 accountIdentifier:iDCopy];
  if (!v17)
  {
    v19 = +[REMLog cloudkit];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v40 = v12;
      v41 = 2114;
      v42 = iDCopy;
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
  account = [v16 account];

  if (!account)
  {
    v23 = +[REMLog cloudkit];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v40 = v12;
      v41 = 2114;
      v42 = iDCopy;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "objectWithRecordID: (object.ckIdentifier: %{public}@, accountID: %{public}@) with nil account", buf, 0x16u);
    }

    v24 = [REMCDAccount accountWithCKIdentifier:iDCopy context:contextCopy];
    [v16 setAccount:v24];
    account2 = [v16 account];

    if (!account2)
    {
      v26 = +[REMLog cloudkit];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_100767D60();
      }
    }
  }

  zoneID = [dCopy zoneID];
  ownerName = [zoneID ownerName];

  ckZoneOwnerName = [v16 ckZoneOwnerName];
  v30 = ckZoneOwnerName;
  v31 = CKCurrentUserDefaultName;
  if (ckZoneOwnerName)
  {
    v31 = ckZoneOwnerName;
  }

  v32 = v31;

  if (([ownerName isEqualToString:v32] & 1) == 0)
  {
    v33 = +[REMLog cloudkit];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      recordName2 = [dCopy recordName];
      ckZoneOwnerName2 = [v16 ckZoneOwnerName];
      *buf = 138543874;
      v40 = recordName2;
      v41 = 2114;
      v42 = ownerName;
      v43 = 2114;
      v44 = ckZoneOwnerName2;
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
  failureCountQueue = [objc_opt_class() failureCountQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AF878;
  v6[3] = &unk_1008DBA38;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(failureCountQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)setFailedToSyncCount:(int64_t)count
{
  failureCountQueue = [objc_opt_class() failureCountQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AF9C4;
  v6[3] = &unk_1008DB318;
  v6[4] = self;
  v6[5] = count;
  dispatch_sync(failureCountQueue, v6);
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
  failureCountQueue = [objc_opt_class() failureCountQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AFBE4;
  v6[3] = &unk_1008DBA38;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(failureCountQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)setNumberOfPushAttemptsToWaitCount:(int64_t)count
{
  failureCountQueue = [objc_opt_class() failureCountQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AFD30;
  v6[3] = &unk_1008DB318;
  v6[4] = self;
  v6[5] = count;
  dispatch_sync(failureCountQueue, v6);
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
    failedToSyncCount = [(REMCDObject *)self failedToSyncCount];
    failedToSyncCount2 = [(REMCDObject *)self failedToSyncCount];
    loggingDescription = [(REMCDObject *)self loggingDescription];
    v9 = 138413570;
    v10 = v5;
    v11 = 1024;
    v12 = failedToSyncCount;
    v13 = 1024;
    v14 = 3;
    v15 = 1024;
    v16 = failedToSyncCount2;
    v17 = 1024;
    v18 = 6;
    v19 = 2112;
    v20 = loggingDescription;
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
    numberOfPushAttemptsToWaitCount = [(REMCDObject *)self numberOfPushAttemptsToWaitCount];
    loggingDescription = [(REMCDObject *)self loggingDescription];
    v8 = 138412802;
    v9 = v5;
    v10 = 1024;
    v11 = numberOfPushAttemptsToWaitCount;
    v12 = 2112;
    v13 = loggingDescription;
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

  failureCountQueue = [objc_opt_class() failureCountQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B015C;
  block[3] = &unk_1008D9990;
  block[4] = self;
  dispatch_async(failureCountQueue, block);
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
    failedToSyncCount = [(REMCDObject *)self failedToSyncCount];
    numberOfPushAttemptsToWaitCount = [(REMCDObject *)self numberOfPushAttemptsToWaitCount];
    loggingDescription = [(REMCDObject *)self loggingDescription];
    v10 = 138413314;
    v11 = v5;
    v12 = 1024;
    v13 = failedToSyncCount;
    v14 = 1024;
    v15 = 3;
    v16 = 1024;
    v17 = numberOfPushAttemptsToWaitCount;
    v18 = 2112;
    v19 = loggingDescription;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ failed to be pushed %d times. Max number of retries is %d. It will now be ignored for %d push attempts. %@", &v10, 0x28u);
  }

  return 1;
}

- (id)recordName
{
  [(REMCDObject *)self _setCKIdentifierIfNecessary];
  ckIdentifier = [(REMCDObject *)self ckIdentifier];

  if (ckIdentifier)
  {
    recordType = [(REMCDObject *)self recordType];
    ckIdentifier2 = [(REMCDObject *)self ckIdentifier];
    v6 = [NSString stringWithFormat:@"%@/%@", recordType, ckIdentifier2];
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
  primitiveCkZoneOwnerName = [(REMCDObject *)self primitiveCkZoneOwnerName];
  [(REMCDObject *)self didAccessValueForKey:@"ckZoneOwnerName"];
  if (!primitiveCkZoneOwnerName)
  {
    parentCloudObject = [(REMCDObject *)self parentCloudObject];
    v5 = parentCloudObject;
    if (parentCloudObject)
    {
      primitiveCkZoneOwnerName = [parentCloudObject ckZoneOwnerName];
    }

    else
    {
      primitiveCkZoneOwnerName = 0;
    }
  }

  return primitiveCkZoneOwnerName;
}

- (id)recordID
{
  managedObjectContext = [(REMCDObject *)self managedObjectContext];

  if (!managedObjectContext)
  {
    v7 = +[REMLog cloudkit];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_10076828C();
    }

    goto LABEL_16;
  }

  recordName = [(REMCDObject *)self recordName];

  if (!recordName)
  {
    v7 = +[REMLog cloudkit];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1007681E4();
    }

    goto LABEL_16;
  }

  recordName2 = [(REMCDObject *)self recordName];
  v6 = [recordName2 isEqualToString:&stru_1008FE8A0];

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

  recordZoneName = [(REMCDObject *)self recordZoneName];

  if (!recordZoneName)
  {
    v7 = +[REMLog cloudkit];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100768094();
    }

    goto LABEL_16;
  }

  ckZoneOwnerName = [(REMCDObject *)self ckZoneOwnerName];
  if (!ckZoneOwnerName)
  {
    ckZoneOwnerName = CKCurrentUserDefaultName;
  }

  v10 = [CKRecordZoneID ic_defaultDatabaseScopeForOwnerName:ckZoneOwnerName];
  v11 = [CKRecordZoneID alloc];
  recordZoneName2 = [(REMCDObject *)self recordZoneName];
  v13 = [v11 initWithZoneName:recordZoneName2 ownerName:ckZoneOwnerName databaseScope:v10];

  recordName3 = [(REMCDObject *)self recordName];
  v15 = [[CKRecordID alloc] initWithRecordName:recordName3 zoneID:v13];

LABEL_17:

  return v15;
}

- (int64_t)rd_ckDatabaseScope
{
  recordID = [(REMCDObject *)self recordID];
  rd_ckDatabaseScope = [recordID rd_ckDatabaseScope];

  return rd_ckDatabaseScope;
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
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  managedObjectContext = [(REMCDObject *)self managedObjectContext];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000B09C0;
  v5[3] = &unk_1008D9A28;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [managedObjectContext performBlockAndWait:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

+ (id)newCloudObjectForRecord:(id)record accountID:(id)d context:(id)context
{
  recordCopy = record;
  dCopy = d;
  contextCopy = context;
  v11 = [REMCDAccount cloudKitAccountWithCKIdentifier:dCopy context:contextCopy];
  if (v11)
  {
    v12 = [self newCloudObjectForRecord:recordCopy account:v11 context:contextCopy];
  }

  else
  {
    v13 = +[REMLog cloudkit];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      recordID = [recordCopy recordID];
      recordName = [recordID recordName];
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = 138543874;
      v20 = recordName;
      v21 = 2114;
      v22 = dCopy;
      v23 = 2114;
      v24 = v18;
      _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "Cannot get CK account for newCloudObjectForRecord {record: %{public}@, accountID: %{public}@, class: %{public}@}", &v19, 0x20u);
    }

    v12 = 0;
  }

  return v12;
}

+ (id)newObjectWithCKRecordName:(id)name context:(id)context account:(id)account
{
  accountCopy = account;
  contextCopy = context;
  v10 = [self ckIdentifierFromRecordName:name];
  v11 = [self newObjectWithCKIdentifier:v10 context:contextCopy account:accountCopy];

  return v11;
}

+ (id)newObjectWithCKIdentifier:(id)identifier context:(id)context account:(id)account
{
  identifierCopy = identifier;
  contextCopy = context;
  accountCopy = account;
  if (![self isAbstract])
  {
    cdEntityName = [self cdEntityName];
    if (!cdEntityName)
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
      *&v42[8] = [self entity];
      v14 = *(*&buf[8] + 40);
      if (!v14)
      {
        v39[0] = _NSConcreteStackBlock;
        v39[1] = 3221225472;
        v39[2] = sub_1000B121C;
        v39[3] = &unk_1008DB948;
        v39[4] = buf;
        v39[5] = self;
        [contextCopy performBlockAndWait:v39];
        v14 = *(*&buf[8] + 40);
      }

      cdEntityName = [v14 name];
      if (!cdEntityName)
      {
        v33 = +[REMLog cloudkit];
        sub_100768370(v33);
      }

      _Block_object_dispose(buf, 8);
    }

    v15 = +[REMCDAccount cdEntityName];
    v16 = [cdEntityName isEqual:v15];

    if (v16)
    {
      v17 = +[REMLog cloudkit];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        sub_1007686A8();
      }
    }

    else if (accountCopy)
    {
      ckIdentifier = [accountCopy ckIdentifier];
      v19 = ckIdentifier == 0;

      if (!v19)
      {
        v12 = [NSEntityDescription insertNewObjectForEntityForName:cdEntityName inManagedObjectContext:contextCopy];
        if (!v12)
        {
          sub_1007683C4(cdEntityName, identifierCopy, accountCopy);
        }

        v20 = [[NSUUID alloc] initWithUUIDString:identifierCopy];
        [v12 setIdentifier:v20];

        identifier = [v12 identifier];
        LODWORD(v20) = identifier == 0;

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

        [v12 setCkIdentifier:identifierCopy];
        [v12 setAccount:accountCopy];
        objc_opt_class();
        v17 = REMDynamicCast();
        batchFetchHelper = [v17 batchFetchHelper];
        if (!batchFetchHelper)
        {
          sub_100768504();
        }

        if (identifierCopy && v12)
        {
          accountCKIdentifier = [v12 accountCKIdentifier];
          [batchFetchHelper setCachedManagedObject:v12 forCKIdentifier:identifierCopy accountIdentifier:accountCKIdentifier];
        }

        objc_opt_class();
        v25 = REMDynamicCast();
        v26 = v25;
        if (v25)
        {
          identifier2 = [v25 identifier];
          uUIDString = [identifier2 UUIDString];
          [v26 setDaCalendarItemUniqueIdentifier:uUIDString];
        }

        v29 = +[REMLog cloudkit];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          shortLoggingDescription = [v12 shortLoggingDescription];
          identifier3 = [v12 identifier];
          ckIdentifier2 = [v12 ckIdentifier];
          daCalendarItemUniqueIdentifier = [v26 daCalendarItemUniqueIdentifier];
          ckIdentifier3 = [accountCopy ckIdentifier];
          v31 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v12 isPlaceholder]);
          *buf = 138544642;
          *&buf[4] = shortLoggingDescription;
          *&buf[12] = 2114;
          *&buf[14] = identifier3;
          *&buf[22] = 2114;
          v41 = ckIdentifier2;
          *v42 = 2114;
          *&v42[2] = daCalendarItemUniqueIdentifier;
          *&v42[10] = 2114;
          *&v42[12] = ckIdentifier3;
          v43 = 2114;
          v44 = v31;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Creating REMCDObject for CloudKit: %{public}@ .identifier=%{public}@ .ckIdentifier=%{public}@ .daCalendarItemUniqueIdentifier=%{public}@ .account.ckIdentifier=%{public}@, isPlaceholder=%{public}@", buf, 0x3Eu);
        }

        goto LABEL_39;
      }

      v17 = +[REMLog cloudkit];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        sub_100768568(self);
      }
    }

    else
    {
      v17 = +[REMLog cloudkit];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        sub_100768608(self);
      }
    }

    v12 = 0;
LABEL_39:

    goto LABEL_40;
  }

  cdEntityName = +[REMLog cloudkit];
  if (os_log_type_enabled(cdEntityName, OS_LOG_TYPE_ERROR))
  {
    sub_100768718(self);
  }

  v12 = 0;
LABEL_40:

  return v12;
}

+ (id)newPlaceholderObjectForRecordID:(id)d account:(id)account context:(id)context
{
  contextCopy = context;
  accountCopy = account;
  dCopy = d;
  recordName = [dCopy recordName];
  v12 = [self ckIdentifierFromRecordName:recordName];

  zoneID = [dCopy zoneID];

  v14 = [self newObjectWithCKIdentifier:v12 context:contextCopy account:accountCopy];
  [v14 setCkNeedsInitialFetchFromCloud:1];
  [v14 setInCloud:1];
  v15 = [self objectCkZoneOwnerNameFromCKRecordZoneID:zoneID];
  [v14 setCkZoneOwnerName:v15];

  [v14 setAccount:accountCopy];
  return v14;
}

+ (id)allCloudObjectsPredicate
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromClass(self);
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

+ (id)allCloudObjectsInContext:(id)context
{
  contextCopy = context;
  allCloudObjectsPredicate = [self allCloudObjectsPredicate];
  v6 = NSStringFromSelector("ckCloudState");
  v10 = v6;
  v7 = [NSArray arrayWithObjects:&v10 count:1];
  v8 = [self ic_objectsMatchingPredicate:allCloudObjectsPredicate sortDescriptors:0 propertiesToFetch:0 relationshipKeyPathsForPrefetching:v7 context:contextCopy];

  return v8;
}

+ (id)allCloudObjectIDsInContext:(id)context
{
  contextCopy = context;
  allCloudObjectsPredicate = [self allCloudObjectsPredicate];
  v6 = [self ic_objectIDsMatchingPredicate:allCloudObjectsPredicate context:contextCopy];

  return v6;
}

+ (id)allDirtyCloudObjectIDsInContext:(id)context
{
  contextCopy = context;
  allDirtyCloudObjectsPredicate = [self allDirtyCloudObjectsPredicate];
  v6 = [self ic_objectIDsMatchingPredicate:allDirtyCloudObjectsPredicate context:contextCopy];

  return v6;
}

- (void)recursivelyFixCrossZoneRelationshipWithVisitedMap:(id)map perObjectHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000B16FC;
  v9[3] = &unk_1008DBA80;
  selfCopy = self;
  v11 = handlerCopy;
  v7 = handlerCopy;
  v8 = selfCopy;
  [(REMCDObject *)v8 traverseObjectTreeUsingVisitedMap:map handler:v9];
}

- (id)newlyCreatedRecord
{
  ckServerRecord = [(REMCDObject *)self ckServerRecord];
  v4 = [ckServerRecord copy];

  if (!v4)
  {
    recordID = [(REMCDObject *)self recordID];
    if (recordID)
    {
      v6 = [CKRecord alloc];
      recordType = [(REMCDObject *)self recordType];
      v4 = [v6 initWithRecordType:recordType recordID:recordID];
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

  parentCloudObject = [(REMCDObject *)self parentCloudObject];
  recordID2 = [parentCloudObject recordID];
  v11 = recordID2;
  if (recordID2)
  {
    zoneID = [recordID2 zoneID];
    recordID3 = [v4 recordID];
    zoneID2 = [recordID3 zoneID];
    v15 = [zoneID isEqual:zoneID2];

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
        recordID4 = [v4 recordID];
        ic_loggingDescription = [recordID4 ic_loggingDescription];
        v30 = objc_opt_class();
        v32 = v30;
        ic_loggingDescription2 = [v11 ic_loggingDescription];
        *buf = 138544130;
        v35 = v27;
        v36 = 2114;
        v37 = ic_loggingDescription;
        v38 = 2114;
        v39 = v30;
        v40 = 2114;
        v41 = ic_loggingDescription2;
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
  minimumSupportedVersion = [(REMCDObject *)self minimumSupportedVersion];
  if (minimumSupportedVersion == kREMSupportedVersionUnset)
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
  resolutionTokenMap = [(REMCDObject *)self resolutionTokenMap];
  v23 = REMDynamicCast();

  if (v23)
  {
    objc_toJSONString = [v23 objc_toJSONString];
    if (objc_toJSONString)
    {
      [v4 setObject:objc_toJSONString forKeyedSubscript:@"ResolutionTokenMap"];
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

- (void)mergeDataFromRecord:(id)record accountID:(id)d
{
  recordCopy = record;
  dCopy = d;
  recordType = [recordCopy recordType];
  recordType2 = [(REMCDObject *)self recordType];
  v10 = [recordType isEqual:recordType2];

  if ((v10 & 1) == 0)
  {
    sub_100768944(recordCopy);
  }

  self->_shouldPerformCloudSchemaCatchUpSync = 0;
  objc_opt_class();
  managedObjectContext = [(REMCDObject *)self managedObjectContext];
  v12 = REMDynamicCast();

  cloudSchemaCatchUpSyncContextsByAccountIdentifier = [v12 cloudSchemaCatchUpSyncContextsByAccountIdentifier];
  v14 = [cloudSchemaCatchUpSyncContextsByAccountIdentifier objectForKey:dCopy];

  if ([v14 shouldPerformCloudSchemaCatchUpSync])
  {
    self->_shouldPerformCloudSchemaCatchUpSync = 1;
  }

  isCloudSchemaCatchUpSyncNeeded = [v14 isCloudSchemaCatchUpSyncNeeded];
  hasSuccessfullyPushedLatestVersionToCloud = [(REMCDObject *)self hasSuccessfullyPushedLatestVersionToCloud];
  self->_mergeDataRefusedToMergeMarkedForDeletion = 0;
  self->_mergeDataRevertedLocallyMarkedForDeletion = 0;
  v17 = [recordCopy objectForKeyedSubscript:@"Deleted"];

  v18 = REMCRMergeableOrderedSet_ptr;
  if (v17)
  {
    v19 = [recordCopy objectForKeyedSubscript:@"Deleted"];
    bOOLValue = [v19 BOOLValue];

    markedForDeletion = [(REMCDObject *)self markedForDeletion];
    if (bOOLValue != [(REMCDObject *)self markedForDeletion])
    {
      v21 = hasSuccessfullyPushedLatestVersionToCloud | ~bOOLValue;
      v22 = +[REMLog cloudkit];
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      if (v21)
      {
        if (v23)
        {
          shortLoggingDescription = [(REMCDObject *)self shortLoggingDescription];
          *buf = 138543362;
          v33 = shortLoggingDescription;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Setting %{public}@ marked for deletion when merging data from record", buf, 0xCu);
        }

        [(REMCDObject *)self setMarkedForDeletion:bOOLValue];
      }

      else
      {
        if (v23)
        {
          shortLoggingDescription2 = [(REMCDObject *)self shortLoggingDescription];
          *buf = 138543362;
          v33 = shortLoggingDescription2;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Setting mergeDataRefusedToMergeMarkedForDeletion=YES for %{public}@ when merging data from record", buf, 0xCu);
        }

        self->_mergeDataRefusedToMergeMarkedForDeletion = 1;
      }
    }

    v18 = REMCRMergeableOrderedSet_ptr;
    if (((isCloudSchemaCatchUpSyncNeeded | bOOLValue) & 1) == 0 && ((markedForDeletion ^ 1) & 1) == 0)
    {
      [(REMCDObject *)self unmarkForDeletion];
      v26 = +[REMLog cloudkit];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        shortLoggingDescription3 = [(REMCDObject *)self shortLoggingDescription];
        *buf = 138543362;
        v33 = shortLoggingDescription3;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Setting mergeDataRevertedLocallyMarkedForDeletion=YES for %{public}@ when merging data from record", buf, 0xCu);
      }

      self->_mergeDataRevertedLocallyMarkedForDeletion = 1;
    }
  }

  objc_opt_class();
  v28 = objc_opt_respondsToSelector();
  cloudkit = [v18[50] cloudkit];
  selfCopy = cloudkit;
  if (v28)
  {
    if (os_log_type_enabled(cloudkit, OS_LOG_TYPE_DEBUG))
    {
      sub_100768AB8();
    }

    selfCopy = self;
    [objc_opt_class() mergeSystemPropertiesIntoCDObject:selfCopy fromCKRecord:recordCopy];
  }

  else if (os_log_type_enabled(cloudkit, OS_LOG_TYPE_FAULT))
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

  ckCloudState = [(REMCDObject *)self ckCloudState];
  latestVersionSyncedToCloud = [ckCloudState latestVersionSyncedToCloud];
  ckCloudState2 = [(REMCDObject *)self ckCloudState];
  currentLocalVersion = [ckCloudState2 currentLocalVersion];

  if (latestVersionSyncedToCloud >= currentLocalVersion)
  {
    goto LABEL_6;
  }

  ckCloudState3 = [(REMCDObject *)self ckCloudState];
  v8 = -[REMCDObject isPushingSameOrLaterThanVersion:](self, "isPushingSameOrLaterThanVersion:", [ckCloudState3 currentLocalVersion]);

  if (v8 || [(REMCDObject *)self markedForDeletion]&& ![(REMCDObject *)self isInCloud])
  {
    goto LABEL_6;
  }

  if ([(REMCDObject *)self isSharedReadOnly])
  {
LABEL_6:
    isInCloud = 0;
  }

  else
  {
    parentCloudObject = [(REMCDObject *)self parentCloudObject];
    if ([parentCloudObject ckNeedsInitialFetchFromCloud])
    {
      parentCloudObject2 = [(REMCDObject *)self parentCloudObject];
      isInCloud = [parentCloudObject2 isInCloud];
    }

    else
    {
      isInCloud = 1;
    }
  }

  return isInCloud & 1;
}

- (void)forcePushToCloud
{
  if ([(REMCDObject *)self isPlaceholder])
  {
    v3 = objc_opt_class();
    ckIdentifier = [(REMCDObject *)self ckIdentifier];
    v5 = [NSString stringWithFormat:@"Placeholder %@ { %@ } forcePushToCloud", v3, ckIdentifier];

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
  ckCloudState = [(REMCDObject *)self ckCloudState];
  latestVersionSyncedToCloud = [ckCloudState latestVersionSyncedToCloud];
  ckCloudState2 = [(REMCDObject *)self ckCloudState];
  LOBYTE(latestVersionSyncedToCloud) = latestVersionSyncedToCloud >= [ckCloudState2 currentLocalVersion];

  return latestVersionSyncedToCloud;
}

- (BOOL)needsToFetchAfterServerRecordChanged:(id)changed
{
  changedCopy = changed;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allKeys = [changedCopy allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v9 = [changedCopy objectForKeyedSubscript:*(*(&v13 + 1) + 8 * i)];
        v10 = [objc_opt_class() needsToReFetchServerRecordValue:v9];

        if (v10)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
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

+ (BOOL)needsToReFetchServerRecordValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    fileURL = [valueCopy fileURL];
    v6 = fileURL == 0;
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
      v7 = valueCopy;
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

            if ([self needsToReFetchServerRecordValue:{*(*(&v13 + 1) + 8 * i), v13}])
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
      shortLoggingDescription = [(REMCDObject *)self shortLoggingDescription];
      v7 = 138543362;
      v8 = shortLoggingDescription;
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
      shortLoggingDescription2 = [(REMCDObject *)self shortLoggingDescription];
      v7 = 138543362;
      v8 = shortLoggingDescription2;
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

- (void)objectWillBePushedToCloudWithOperation:(id)operation
{
  operationCopy = operation;
  ckCloudState = [(REMCDObject *)self ckCloudState];
  -[REMCDObject setVersion:forOperation:](self, "setVersion:forOperation:", [ckCloudState currentLocalVersion], operationCopy);
}

- (void)objectFailedToBePushedToCloudWithOperation:(id)operation recordID:(id)d error:(id)error
{
  operationCopy = operation;
  dCopy = d;
  errorCopy = error;
  database = [operationCopy database];
  container = [database container];
  options = [container options];
  accountOverrideInfo = [options accountOverrideInfo];
  accountID = [accountOverrideInfo accountID];

  if (![accountID length])
  {
    v16 = +[REMLog cloudkit];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_100768B64(operationCopy);
    }
  }

  code = [errorCopy code];
  if (code > 19)
  {
    if (code > 25)
    {
      if (code != 26)
      {
        if (code != 31)
        {
          goto LABEL_26;
        }

        v25 = +[REMLog cloudkit];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          ic_loggingDescription = [dCopy ic_loggingDescription];
          ic_loggingDescription2 = [operationCopy ic_loggingDescription];
          *buf = 138544130;
          v42 = accountID;
          v43 = 2112;
          v44 = ic_loggingDescription;
          v45 = 2114;
          v46 = ic_loggingDescription2;
          v47 = 2114;
          v48 = errorCopy;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Reference violation for server record in account ID %{public}@: %@ %{public}@: %{public}@", buf, 0x2Au);
        }

        [(REMCDObject *)self fixBrokenReferences];
      }
    }

    else if (code != 20 && code != 22)
    {
      goto LABEL_26;
    }
  }

  else if ((code - 6) >= 2)
  {
    if (code != 11)
    {
      if (code == 14)
      {
        userInfo = [errorCopy userInfo];
        v19 = [userInfo objectForKeyedSubscript:CKRecordChangedErrorServerRecordKey];

        if (v19)
        {
          v20 = [(REMCDObject *)self needsToFetchAfterServerRecordChanged:v19];
          v21 = +[REMLog cloudkit];
          v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
          if (!v20)
          {
            if (v22)
            {
              ic_loggingDescription3 = [v19 ic_loggingDescription];
              ic_loggingDescription4 = [operationCopy ic_loggingDescription];
              *buf = 138544130;
              v42 = accountID;
              v43 = 2112;
              v44 = ic_loggingDescription3;
              v45 = 2114;
              v46 = ic_loggingDescription4;
              v47 = 2112;
              v48 = errorCopy;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Server record changed in account ID %{public}@: %@ %{public}@: %@", buf, 0x2Au);
            }

            if (accountID)
            {
              ckServerRecord = [(REMCDObject *)self ckServerRecord];
              recordID = [ckServerRecord recordID];
              zoneID = [recordID zoneID];
              recordID2 = [v19 recordID];
              zoneID2 = [recordID2 zoneID];
              v39 = [zoneID isEqual:zoneID2];

              if ((v39 & 1) == 0)
              {
                [(REMCDObject *)self setCkServerRecord:0];
              }

              [(REMCDObject *)self objectWasFetchedFromCloudWithRecord:v19 accountID:accountID];
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

          ic_loggingDescription5 = [v19 ic_loggingDescription];
          ic_loggingDescription6 = [operationCopy ic_loggingDescription];
          *buf = 138544130;
          v42 = accountID;
          v43 = 2112;
          v44 = ic_loggingDescription5;
          v45 = 2112;
          v46 = ic_loggingDescription6;
          v47 = 2112;
          v48 = errorCopy;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Server record changed (needs refetch) in account ID %{public}@: %@ %@: %@", buf, 0x2Au);
        }

        else
        {
          v21 = +[REMLog cloudkit];
          if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_29;
          }

          ic_loggingDescription5 = [(REMCDObject *)self shortLoggingDescription];
          ic_loggingDescription6 = [operationCopy ic_loggingDescription];
          *buf = 138544130;
          v42 = accountID;
          v43 = 2114;
          v44 = ic_loggingDescription5;
          v45 = 2114;
          v46 = ic_loggingDescription6;
          v47 = 2112;
          v48 = errorCopy;
          _os_log_fault_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "Server record changed with no server record in the error in account ID %{public}@: %{public}@ %{public}@: %@", buf, 0x2Au);
        }

        goto LABEL_29;
      }

LABEL_26:
      v19 = +[REMLog cloudkit];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        ic_loggingDescription7 = [dCopy ic_loggingDescription];
        ic_loggingDescription8 = [operationCopy ic_loggingDescription];
        *buf = 138544130;
        v42 = accountID;
        v43 = 2112;
        v44 = ic_loggingDescription7;
        v45 = 2114;
        v46 = ic_loggingDescription8;
        v47 = 2112;
        v48 = errorCopy;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Error pushing in account ID %{public}@: %@ %{public}@: %@", buf, 0x2Au);
      }

      goto LABEL_36;
    }

    v26 = +[REMLog cloudkit];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      ic_loggingDescription9 = [dCopy ic_loggingDescription];
      ic_loggingDescription10 = [operationCopy ic_loggingDescription];
      *buf = 138544130;
      v42 = accountID;
      v43 = 2112;
      v44 = ic_loggingDescription9;
      v45 = 2114;
      v46 = ic_loggingDescription10;
      v47 = 2112;
      v48 = errorCopy;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Invalid cached server record in account ID %{public}@: %@ %{public}@: %@", buf, 0x2Au);
    }

    [(REMCDObject *)self setCkServerRecord:0];
  }

LABEL_37:
  [objc_opt_class() deleteTemporaryAssetFilesForOperation:operationCopy];
}

- (void)objectWasPushedToCloudWithOperation:(id)operation serverRecord:(id)record
{
  recordCopy = record;
  operationCopy = operation;
  v8 = [(REMCDObject *)self versionForOperation:operationCopy];
  ckCloudState = [(REMCDObject *)self ckCloudState];
  latestVersionSyncedToCloud = [ckCloudState latestVersionSyncedToCloud];

  if (v8 > latestVersionSyncedToCloud)
  {
    ckCloudState2 = [(REMCDObject *)self ckCloudState];
    [ckCloudState2 setLatestVersionSyncedToCloud:v8];
  }

  [objc_opt_class() deleteTemporaryAssetFilesForOperation:operationCopy];

  [(REMCDObject *)self resetFailureCounts];
  [(REMCDObject *)self setInCloud:1];
  [(REMCDObject *)self setCkDirtyFlags:[(REMCDObject *)self ckDirtyFlags]& 0xFFFFFFFD];
  ckServerRecord = [(REMCDObject *)self ckServerRecord];
  if (!ckServerRecord)
  {
    goto LABEL_8;
  }

  v13 = ckServerRecord;
  ckServerRecord2 = [(REMCDObject *)self ckServerRecord];
  modificationDate = [ckServerRecord2 modificationDate];
  modificationDate2 = [recordCopy modificationDate];
  v17 = [modificationDate ic_isLaterThanDate:modificationDate2];

  if (v17)
  {
    v18 = +[REMLog cloudkit];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      sub_100768C00(recordCopy);
    }
  }

  else
  {
LABEL_8:
    [(REMCDObject *)self setCkServerRecord:recordCopy];
  }
}

- (void)objectWasFetchedFromCloudWithRecord:(id)record accountID:(id)d
{
  recordCopy = record;
  dCopy = d;
  v8 = [recordCopy objectForKeyedSubscript:@"Deleted"];
  if ([v8 BOOLValue])
  {
    markedForDeletion = [(REMCDObject *)self markedForDeletion];

    if (markedForDeletion)
    {
      v10 = 0;
      goto LABEL_9;
    }
  }

  else
  {
  }

  objc_opt_class();
  managedObjectContext = [(REMCDObject *)self managedObjectContext];
  v12 = REMDynamicCast();

  cloudSchemaCatchUpSyncContextsByAccountIdentifier = [v12 cloudSchemaCatchUpSyncContextsByAccountIdentifier];
  v14 = [cloudSchemaCatchUpSyncContextsByAccountIdentifier objectForKey:dCopy];

  if ([v14 shouldPerformCloudSchemaCatchUpSync])
  {
    v10 = +[ICCloudSchemaCompatibilityUtils isCloudSchemaCatchUpSyncNeededForExistingCloudObject:persistenceCloudSchemaVersion:](ICCloudSchemaCompatibilityUtils, "isCloudSchemaCatchUpSyncNeededForExistingCloudObject:persistenceCloudSchemaVersion:", self, [v14 persistenceCloudSchemaVersion]);
  }

  else
  {
    v10 = 0;
  }

LABEL_9:
  recordChangeTag = [recordCopy recordChangeTag];
  if (recordChangeTag)
  {
    ckServerRecord = [(REMCDObject *)self ckServerRecord];
    recordChangeTag2 = [ckServerRecord recordChangeTag];
    v18 = [recordChangeTag2 isEqualToString:recordChangeTag] ^ 1;
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
        remObjectID = [(REMCDObject *)self remObjectID];
        v35 = 138543618;
        v36 = dCopy;
        v37 = 2114;
        v38 = remObjectID;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Object fetched from cloud and is an entity that should perform CloudSchemaCatchUpSync, force merging data from CKRecord {accountID: %{public}@, remObjectID: %{public}@}", &v35, 0x16u);
      }
    }

    [(REMCDObject *)self mergeDataFromRecord:recordCopy accountID:dCopy];
    ckServerRecord2 = [(REMCDObject *)self ckServerRecord];
    if (!ckServerRecord2)
    {
      goto LABEL_25;
    }

    v22 = ckServerRecord2;
    ckServerRecord3 = [(REMCDObject *)self ckServerRecord];
    modificationDate = [ckServerRecord3 modificationDate];
    modificationDate2 = [recordCopy modificationDate];
    v26 = [modificationDate ic_isLaterThanDate:modificationDate2];

    if (v26)
    {
      v27 = +[REMLog cloudkit];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_100768CA4(recordCopy);
      }
    }

    else
    {
LABEL_25:
      [(REMCDObject *)self setCkServerRecord:recordCopy];
    }

    share = [recordCopy share];
    if (share)
    {
    }

    else
    {
      ckServerShare = [(REMCDObject *)self ckServerShare];

      if (ckServerShare)
      {
        v32 = +[REMLog cloudkit];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          ckServerShare2 = [(REMCDObject *)self ckServerShare];
          ic_loggingDescription = [ckServerShare2 ic_loggingDescription];
          v35 = 138412290;
          v36 = ic_loggingDescription;
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
      ic_loggingDescription2 = [recordCopy ic_loggingDescription];
      v35 = 138412290;
      v36 = ic_loggingDescription2;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Not merging fetched record with same change tag %@", &v35, 0xCu);
    }
  }

  [(REMCDObject *)self setCkNeedsToBeFetchedFromCloud:0];
}

- (void)objectWasFetchedButDoesNotExistInCloud
{
  recordID = [(REMCDObject *)self recordID];
  ic_isOwnedByCurrentUser = [recordID ic_isOwnedByCurrentUser];

  if (ic_isOwnedByCurrentUser)
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
      shortLoggingDescription = [(REMCDObject *)self shortLoggingDescription];
      v7 = 138543362;
      v8 = shortLoggingDescription;
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

+ (id)assetForData:(id)data
{
  dataCopy = data;
  if (!dataCopy)
  {
    v12 = 0;
    goto LABEL_11;
  }

  temporaryAssets = [self temporaryAssets];
  objc_sync_enter(temporaryAssets);
  v6 = +[NSUUID UUID];
  uUIDString = [v6 UUIDString];

  temporaryAssetDirectoryURL = [self temporaryAssetDirectoryURL];
  v9 = [temporaryAssetDirectoryURL URLByAppendingPathComponent:uUIDString isDirectory:0];

  if (!v9)
  {
    v11 = 0;
    goto LABEL_7;
  }

  v15 = 0;
  v10 = [dataCopy writeToURL:v9 options:0 error:&v15];
  v11 = v15;
  if (!v10)
  {
LABEL_7:
    temporaryAssets2 = +[REMLog cloudkit];
    if (os_log_type_enabled(temporaryAssets2, OS_LOG_TYPE_ERROR))
    {
      sub_100768D48();
    }

    v12 = 0;
    goto LABEL_10;
  }

  v12 = [[CKAsset alloc] initWithFileURL:v9];
  temporaryAssets2 = [self temporaryAssets];
  [temporaryAssets2 addObject:v12];
LABEL_10:

  objc_sync_exit(temporaryAssets);
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
    bundleIdentifier = [v4 bundleIdentifier];
    v6 = [NSString stringWithFormat:@"%@-%@", bundleIdentifier, @"TemporaryAssetFiles"];

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
        absoluteString = [qword_100952A70 absoluteString];
        *buf = 138412290;
        v20 = absoluteString;
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

+ (void)deleteTemporaryAssetFilesForOperation:(id)operation
{
  operationCopy = operation;
  temporaryAssets = [self temporaryAssets];
  objc_sync_enter(temporaryAssets);
  temporaryAssets2 = [self temporaryAssets];
  v7 = [temporaryAssets2 count];

  objc_sync_exit(temporaryAssets);
  if (v7)
  {
    v8 = dispatch_get_global_queue(-2, 0);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000B3C30;
    v9[3] = &unk_1008DB318;
    selfCopy = self;
    v10 = operationCopy;
    dispatch_async(v8, v9);
  }
}

+ (void)deleteTemporaryFilesForAsset:(id)asset
{
  assetCopy = asset;
  temporaryAssets = [self temporaryAssets];
  objc_sync_enter(temporaryAssets);
  temporaryAssets2 = [self temporaryAssets];
  [temporaryAssets2 removeObject:assetCopy];

  fileURL = [assetCopy fileURL];

  if (fileURL)
  {
    fileURL2 = [assetCopy fileURL];
    v9 = +[NSFileManager defaultManager];
    v13 = 0;
    v10 = [v9 removeItemAtURL:fileURL2 error:&v13];
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

  objc_sync_exit(temporaryAssets);
}

+ (void)deleteAllTemporaryAssetFilesForAllObjects
{
  v3 = +[NSFileManager defaultManager];
  temporaryAssetDirectoryURL = [self temporaryAssetDirectoryURL];
  v5 = [v3 enumeratorAtURL:temporaryAssetDirectoryURL includingPropertiesForKeys:0 options:0 errorHandler:&stru_1008DBAE0];

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
  objectsToBeDeletedBeforeThisObject = [(REMCDObject *)self objectsToBeDeletedBeforeThisObject];
  v4 = [objectsToBeDeletedBeforeThisObject countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(objectsToBeDeletedBeforeThisObject);
        }

        if (![*(*(&v10 + 1) + 8 * i) shouldBeDeletedFromLocalDatabase])
        {
          v8 = 0;
          goto LABEL_17;
        }
      }

      v5 = [objectsToBeDeletedBeforeThisObject countByEnumeratingWithState:&v10 objects:v14 count:16];
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
    managedObjectContext = [(REMCDObject *)self managedObjectContext];
    [managedObjectContext deleteObject:self];
  }
}

- (void)fixValuesOfKeysWithUniqueConstraintBeforeSettingMarkedForDeletion:(BOOL)deletion
{
  deletionCopy = deletion;
  entity = [(REMCDObject *)self entity];
  uniquenessConstraints = [entity uniquenessConstraints];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = uniquenessConstraints;
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
                if (deletionCopy)
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
      shortLoggingDescription = [(REMCDObject *)self shortLoggingDescription];
      v5 = 138543362;
      v6 = shortLoggingDescription;
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
      shortLoggingDescription = [(REMCDObject *)self shortLoggingDescription];
      v5 = 138543362;
      v6 = shortLoggingDescription;
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
  ckServerRecord = [(REMCDObject *)self ckServerRecord];

  if (ckServerRecord)
  {
    parentCloudObject = [(REMCDObject *)self parentCloudObject];
    recordID = [parentCloudObject recordID];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = isKindOfClass;
    if (parentCloudObject && (isKindOfClass & 1) == 0 && !recordID)
    {
      v8 = +[REMLog cloudkit];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_100768FB8(self, v8);
      }

      goto LABEL_18;
    }

    recordID2 = [(REMCDObject *)self recordID];
    zoneID = [recordID2 zoneID];
    ownerName = [zoneID ownerName];
    zoneID2 = [recordID zoneID];
    ownerName2 = [zoneID2 ownerName];
    v14 = [ownerName isEqualToString:ownerName2];

    if (!v14)
    {
LABEL_18:

      return;
    }

    ckServerRecord2 = [(REMCDObject *)self ckServerRecord];
    parent = [ckServerRecord2 parent];

    if (parent)
    {
      if (v7)
      {
        goto LABEL_18;
      }

      ckServerRecord3 = [(REMCDObject *)self ckServerRecord];
      parent2 = [ckServerRecord3 parent];
      recordID3 = [parent2 recordID];
      v20 = [recordID3 isEqual:recordID];

      if (v20)
      {
        goto LABEL_18;
      }

      v21 = +[REMLog cloudkit];
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      shortLoggingDescription = [(REMCDObject *)self shortLoggingDescription];
      ckServerRecord4 = [(REMCDObject *)self ckServerRecord];
      parent3 = [ckServerRecord4 parent];
      recordID4 = [parent3 recordID];
      ic_loggingDescription = [recordID4 ic_loggingDescription];
      ic_loggingDescription2 = [recordID ic_loggingDescription];
      v28 = 138543874;
      v29 = shortLoggingDescription;
      v30 = 2112;
      v31 = ic_loggingDescription;
      v32 = 2112;
      v33 = ic_loggingDescription2;
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

      shortLoggingDescription = [(REMCDObject *)self shortLoggingDescription];
      v28 = 138543362;
      v29 = shortLoggingDescription;
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

  ckServerShare = [(REMCDObject *)self ckServerShare];
  v4 = ckServerShare != 0;

  return v4;
}

- (BOOL)canBeSharedViaICloud
{
  cloudAccount = [(REMCDObject *)self cloudAccount];
  accountTypeHost = [cloudAccount accountTypeHost];
  isCloudKit = [accountTypeHost isCloudKit];

  return isCloudKit;
}

- (BOOL)isSharedViaICloud
{
  ckServerShare = [(REMCDObject *)self ckServerShare];

  if (ckServerShare)
  {
    return 1;
  }

  ckServerRecord = [(REMCDObject *)self ckServerRecord];
  share = [ckServerRecord share];

  if (share)
  {
    return 1;
  }

  ckZoneOwnerName = [(REMCDObject *)self ckZoneOwnerName];
  if (!ckZoneOwnerName)
  {
    goto LABEL_7;
  }

  v9 = ckZoneOwnerName;
  ckZoneOwnerName2 = [(REMCDObject *)self ckZoneOwnerName];
  v11 = [ckZoneOwnerName2 isEqualToString:CKCurrentUserDefaultName];

  if (!v11)
  {
    return 1;
  }

LABEL_7:
  parentCloudObject = [(REMCDObject *)self parentCloudObject];
  v13 = parentCloudObject;
  if (parentCloudObject)
  {
    isSharedViaICloud = [parentCloudObject isSharedViaICloud];
  }

  else
  {
    isSharedViaICloud = 0;
  }

  return isSharedViaICloud;
}

- (BOOL)isOwnedByCurrentUser
{
  recordID = [(REMCDObject *)self recordID];
  ic_isOwnedByCurrentUser = [recordID ic_isOwnedByCurrentUser];

  return ic_isOwnedByCurrentUser;
}

- (BOOL)isSharedRootObject
{
  ckServerRecord = [(REMCDObject *)self ckServerRecord];
  share = [ckServerRecord share];

  if (share)
  {
    return 1;
  }

  ckServerShare = [(REMCDObject *)self ckServerShare];
  v5 = ckServerShare != 0;

  return v5;
}

- (BOOL)isSharedReadOnly
{
  serverShareCheckingParent = [(REMCDObject *)self serverShareCheckingParent];
  v3 = serverShareCheckingParent;
  if (serverShareCheckingParent)
  {
    currentUserParticipant = [serverShareCheckingParent currentUserParticipant];
    v5 = [currentUserParticipant permission] == 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updateObjectWithShare:(id)share
{
  v4 = +[REMLog cloudkitCollaboration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100769100(self);
  }
}

- (void)setServerShareIfNewer:(id)newer
{
  newerCopy = newer;
  recordChangeTag = [newerCopy recordChangeTag];
  ckServerShare = [(REMCDObject *)self ckServerShare];

  if (!ckServerShare)
  {
    v12 = +[REMLog cloudkitCollaboration];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      shortLoggingDescription = [(REMCDObject *)self shortLoggingDescription];
      ic_loggingDescription = [newerCopy ic_loggingDescription];
      v28 = 138543618;
      v29 = shortLoggingDescription;
      v30 = 2112;
      v31 = ic_loggingDescription;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No server share for %{public}@, setting to %@", &v28, 0x16u);

LABEL_15:
    }

LABEL_16:

    [(REMCDObject *)self setCkServerShare:newerCopy];
    goto LABEL_17;
  }

  recordChangeTag2 = [newerCopy recordChangeTag];
  if (recordChangeTag2)
  {
    v8 = recordChangeTag2;
    ckServerShare2 = [(REMCDObject *)self ckServerShare];
    recordChangeTag3 = [ckServerShare2 recordChangeTag];
    v11 = [recordChangeTag3 isEqualToString:recordChangeTag];

    if (v11)
    {
      v12 = +[REMLog cloudkitCollaboration];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        shortLoggingDescription2 = [(REMCDObject *)self shortLoggingDescription];
        ckServerShare3 = [(REMCDObject *)self ckServerShare];
        ic_loggingDescription2 = [ckServerShare3 ic_loggingDescription];
        ic_loggingDescription3 = [newerCopy ic_loggingDescription];
        v28 = 138543874;
        v29 = shortLoggingDescription2;
        v30 = 2112;
        v31 = ic_loggingDescription2;
        v32 = 2112;
        v33 = ic_loggingDescription3;
        v17 = "Existing server share for %{public}@ %@ has the same change tag as %@";
LABEL_9:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v17, &v28, 0x20u);

        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  ckServerShare4 = [(REMCDObject *)self ckServerShare];
  modificationDate = [ckServerShare4 modificationDate];
  modificationDate2 = [newerCopy modificationDate];
  v21 = [modificationDate ic_isLaterThanDate:modificationDate2];

  v12 = +[REMLog cloudkitCollaboration];
  v22 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (!v21)
  {
    if (v22)
    {
      shortLoggingDescription = [(REMCDObject *)self shortLoggingDescription];
      ckServerShare5 = [(REMCDObject *)self ckServerShare];
      ic_loggingDescription4 = [ckServerShare5 ic_loggingDescription];
      ic_loggingDescription5 = [newerCopy ic_loggingDescription];
      v28 = 138543874;
      v29 = shortLoggingDescription;
      v30 = 2112;
      v31 = ic_loggingDescription4;
      v32 = 2112;
      v33 = ic_loggingDescription5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Replacing old server share for %{public}@ %@ with %@", &v28, 0x20u);

      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (v22)
  {
    shortLoggingDescription2 = [(REMCDObject *)self shortLoggingDescription];
    ckServerShare3 = [(REMCDObject *)self ckServerShare];
    ic_loggingDescription2 = [ckServerShare3 ic_loggingDescription];
    ic_loggingDescription3 = [newerCopy ic_loggingDescription];
    v28 = 138543874;
    v29 = shortLoggingDescription2;
    v30 = 2112;
    v31 = ic_loggingDescription2;
    v32 = 2112;
    v33 = ic_loggingDescription3;
    v17 = "Existing server share for %{public}@ %@ is newer than %@";
    goto LABEL_9;
  }

LABEL_10:

LABEL_17:
}

- (void)didAcceptShare:(id)share
{
  shareCopy = share;
  ckServerShare = [(REMCDObject *)self ckServerShare];

  if (!ckServerShare)
  {
    v6 = +[REMLog cloudkitCollaboration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      shortLoggingDescription = [(REMCDObject *)self shortLoggingDescription];
      ic_loggingDescription = [shareCopy ic_loggingDescription];
      v11 = 138543618;
      v12 = shortLoggingDescription;
      v13 = 2112;
      v14 = ic_loggingDescription;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No server share for %{public}@, setting to %@", &v11, 0x16u);
    }

    [(REMCDObject *)self setCkServerShare:shareCopy];
  }

  if ([(REMCDObject *)self markedForDeletion])
  {
    v9 = +[REMLog cloudkitCollaboration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      shortLoggingDescription2 = [(REMCDObject *)self shortLoggingDescription];
      v11 = 138543362;
      v12 = shortLoggingDescription2;
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

- (int64_t)versionForOperation:(id)operation
{
  operationCopy = operation;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  versionsByOperationQueue = [objc_opt_class() versionsByOperationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B5930;
  block[3] = &unk_1008D9EE0;
  block[4] = self;
  v10 = operationCopy;
  v11 = &v12;
  v6 = operationCopy;
  dispatch_sync(versionsByOperationQueue, block);

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v7;
}

- (void)setVersion:(int64_t)version forOperation:(id)operation
{
  operationCopy = operation;
  versionsByOperationQueue = [objc_opt_class() versionsByOperationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B5A9C;
  block[3] = &unk_1008DBB48;
  block[4] = self;
  v10 = operationCopy;
  versionCopy = version;
  v8 = operationCopy;
  dispatch_sync(versionsByOperationQueue, block);
}

- (int64_t)isPushingSameOrLaterThanVersion:(int64_t)version
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  versionsByOperationQueue = [objc_opt_class() versionsByOperationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B5C5C;
  block[3] = &unk_1008DBB70;
  block[4] = self;
  block[5] = &v9;
  block[6] = version;
  dispatch_sync(versionsByOperationQueue, block);

  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (BOOL)isInCloud
{
  ckCloudState = [(REMCDObject *)self ckCloudState];
  isInCloud = [ckCloudState isInCloud];

  return isInCloud;
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

- (void)setCkServerRecord:(id)record
{
  recordCopy = record;
  if (([(CKRecord *)self->_ckServerRecord isEqual:recordCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_ckServerRecord, record);
    if (recordCopy)
    {
      recordSystemFieldsTransformer = [objc_opt_class() recordSystemFieldsTransformer];
      v7 = [recordSystemFieldsTransformer transformedValue:recordCopy];
      [(REMCDObject *)self setCkServerRecordData:v7];

      recordID = [recordCopy recordID];
      zoneID = [recordID zoneID];

      v10 = [objc_opt_class() objectCkZoneOwnerNameFromCKRecordZoneID:zoneID];
      [(REMCDObject *)self setCkZoneOwnerName:v10];
    }

    else
    {
      [(REMCDObject *)self setCkServerRecordData:0];
      v11 = +[REMLog cloudkit];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        shortLoggingDescription = [(REMCDObject *)self shortLoggingDescription];
        v13 = 138543362;
        v14 = shortLoggingDescription;
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
    ckServerRecordData = [(REMCDObject *)self ckServerRecordData];
    if (ckServerRecordData)
    {
      recordSystemFieldsTransformer = [objc_opt_class() recordSystemFieldsTransformer];
      v6 = [recordSystemFieldsTransformer reverseTransformedValue:ckServerRecordData];
      v7 = self->_ckServerRecord;
      self->_ckServerRecord = v6;
    }

    ckServerRecord = self->_ckServerRecord;
  }

  return ckServerRecord;
}

- (void)updateSharedObjectOwnerName:(id)name
{
  nameCopy = name;
  v5 = +[REMLog cloudkit];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = objc_opt_class();
    v26 = 2112;
    v27 = nameCopy;
    v6 = v25;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Update shared object's owner names {class: %@, ownerName: %@}", buf, 0x16u);
  }

  managedObjectContext = [(REMCDObject *)self managedObjectContext];
  if (managedObjectContext)
  {
    account = [(REMCDObject *)self account];
    v9 = account;
    if (account)
    {
      ckIdentifier = [account ckIdentifier];
      if (ckIdentifier)
      {
        if (nameCopy)
        {
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          v13 = [NSEntityDescription insertNewObjectForEntityForName:v12 inManagedObjectContext:managedObjectContext];
          objc_opt_class();
          v14 = REMCheckedDynamicCast();
          ckIdentifier2 = [(REMCDObject *)self ckIdentifier];
          [v14 setObjectIdentifier:ckIdentifier2];

          [v14 setOwnerName:nameCopy];
          [v14 setAccount:v9];
          ckIdentifier3 = [(REMCDObject *)self ckIdentifier];

          if (ckIdentifier3 && v14)
          {
            objc_opt_class();
            v17 = REMDynamicCast();
            batchFetchHelper = [v17 batchFetchHelper];
            if (!batchFetchHelper)
            {
              sub_100768504();
            }

            ckIdentifier4 = [(REMCDObject *)self ckIdentifier];
            [batchFetchHelper setCachedManagedObject:v14 forCKIdentifier:ckIdentifier4 accountIdentifier:ckIdentifier];
          }
        }

        else
        {
          ckIdentifier5 = [(REMCDObject *)self ckIdentifier];
          v12 = [NSPredicate predicateWithFormat:@"objectIdentifier == %@", ckIdentifier5];

          objc_opt_class();
          v22 = [REMCKSharedObjectOwnerName ic_objectsMatchingPredicate:v12 context:managedObjectContext];
          firstObject = [v22 firstObject];
          v13 = REMDynamicCast();

          if (v13)
          {
            [v9 removeCkSharedObjectOwnerNamesObject:v13];
            [managedObjectContext deleteObject:v13];
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
      ckIdentifier = +[REMLog cloudkit];
      if (os_log_type_enabled(ckIdentifier, OS_LOG_TYPE_FAULT))
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

- (void)setCkServerShare:(id)share
{
  shareCopy = share;
  if (([(CKShare *)self->_ckServerShare isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_ckServerShare, share);
    [(REMCDObject *)self updateObjectWithShare:shareCopy];
    if (shareCopy)
    {
      shareSystemFieldsTransformer = [objc_opt_class() shareSystemFieldsTransformer];
      v6 = [shareSystemFieldsTransformer transformedValue:shareCopy];
      [(REMCDObject *)self setCkServerShareData:v6];
    }

    else
    {
      [(REMCDObject *)self setCkServerShareData:0];
    }
  }
}

+ (id)objectCkZoneOwnerNameFromCKRecordZoneID:(id)d
{
  ownerName = [d ownerName];
  if ([ownerName isEqualToString:CKCurrentUserDefaultName])
  {
    v4 = 0;
  }

  else
  {
    v4 = ownerName;
  }

  v5 = v4;

  return v4;
}

- (BOOL)hasAllMandatoryFields
{
  ckIdentifier = [(REMCDObject *)self ckIdentifier];
  v3 = [ckIdentifier length] != 0;

  return v3;
}

- (id)shortLoggingDescription
{
  v3 = objc_opt_class();
  ckIdentifier = [(REMCDObject *)self ckIdentifier];
  v5 = [NSString stringWithFormat:@"<%@ %@>", v3, ckIdentifier];

  return v5;
}

- (id)ic_loggingValues
{
  v3 = +[NSMutableDictionary dictionary];
  managedObjectContext = [(REMCDObject *)self managedObjectContext];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000B67C8;
  v8[3] = &unk_1008D9B98;
  v5 = v3;
  v9 = v5;
  selfCopy = self;
  [managedObjectContext performBlockAndWait:v8];

  v6 = v5;
  return v5;
}

- (id)cloudKitReferenceWithRecordIDAndValidateAction:(id)action
{
  if (action)
  {
    actionCopy = action;
    v4 = [CKReference alloc];
    v5 = [v4 initWithRecordID:actionCopy action:CKReferenceActionValidate];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)getResolutionTokenMapFromRecord:(id)record
{
  v3 = [record objectForKeyedSubscript:@"ResolutionTokenMap"];
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

- (void)generateReolutionTokenMapForTestingWithKeys:(id)keys
{
  keysCopy = keys;
  createResolutionTokenMapIfNecessary = [(REMCDObject *)self createResolutionTokenMapIfNecessary];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = keysCopy;
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

        [createResolutionTokenMapIfNecessary updateForKey:{*(*(&v11 + 1) + 8 * v10), v11}];
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
    LOBYTE(isInCloud) = 0;
  }

  else
  {
    isInCloud = [(REMCDObject *)self isInCloud];
    v5 = +[REMLog cloudkit];
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
    if (isInCloud)
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

  return isInCloud;
}

- (BOOL)isConnectedToAccountObject:(id)object
{
  v4 = +[REMLogStore write];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    objectID = [(REMCDObject *)self objectID];
    v7 = 138412290;
    v8 = objectID;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Warning: Calling super (REMCDObject's) -isConnectedToAccountObject:, make sure this model class implements proper connection to the account to avoid being auto marked as deleted {self: %@}.", &v7, 0xCu);
  }

  return 0;
}

+ (id)fetchRequest
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromClass(self);
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
    v10.receiver = self;
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

+ (void)mergeSystemPropertiesIntoCDObject:(id)object fromCKRecord:(id)record
{
  objectCopy = object;
  recordCopy = record;
  if ([objectCopy respondsToSelector:"shouldUseResolutionTokenMapForMergingData"])
  {
    [objectCopy mergeDataRevertedLocallyMarkedForDeletion];
    [objectCopy mergeDataRefusedToMergeMarkedForDeletion];
    v6 = objectCopy;
    objectCopy = recordCopy;
    sub_1004E8C90(objectCopy, v6, v6, objectCopy);
  }

  else
  {
    sub_1004E83E0(objectCopy, recordCopy);
  }
}

@end