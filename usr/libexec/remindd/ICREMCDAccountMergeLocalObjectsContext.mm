@interface ICREMCDAccountMergeLocalObjectsContext
- (BOOL)needsToMergeLocalObjects;
- (BOOL)shouldRetryMergeLocalObjects;
- (ICREMCDAccountMergeLocalObjectsContext)initWithAccountIdentifier:(id)identifier;
- (id)loggableDescription;
- (void)validateWithAccount:(id)account;
@end

@implementation ICREMCDAccountMergeLocalObjectsContext

- (ICREMCDAccountMergeLocalObjectsContext)initWithAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v11.receiver = self;
    v11.super_class = ICREMCDAccountMergeLocalObjectsContext;
    v5 = [(ICREMCDAccountMergeLocalObjectsContext *)&v11 init];
    v6 = v5;
    if (v5)
    {
      [(ICREMCDAccountMergeLocalObjectsContext *)v5 setAccountIdentifier:identifierCopy];
      v7 = +[NSSet set];
      [(ICREMCDAccountMergeLocalObjectsContext *)v6 setObjectIDsOfClassesEligibleForLocalObjectMerge:v7];

      [(ICREMCDAccountMergeLocalObjectsContext *)v6 setWasMigrated:0];
      [(ICREMCDAccountMergeLocalObjectsContext *)v6 setDidNotFinishMigration:0];
      [(ICREMCDAccountMergeLocalObjectsContext *)v6 setNeedsToFetchUserRecord:0];
      [(ICREMCDAccountMergeLocalObjectsContext *)v6 setIsInactive:0];
      [(ICREMCDAccountMergeLocalObjectsContext *)v6 setDidChooseToMigrate:0];
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    v9 = +[REMLog cloudkit];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_100764E14();
    }

    NSLog(@"'%s' is unexpectedly nil", "accountIdentifier");
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)validateWithAccount:(id)account
{
  accountCopy = account;
  remObjectID = [accountCopy remObjectID];

  if (remObjectID)
  {
    remObjectID2 = [accountCopy remObjectID];
    uuid = [remObjectID2 uuid];
    uUIDString = [uuid UUIDString];
    accountIdentifier = [(ICREMCDAccountMergeLocalObjectsContext *)self accountIdentifier];
    v10 = [uUIDString isEqualToString:accountIdentifier];

    if (v10)
    {
      storeControllerManagedObjectContext = [accountCopy storeControllerManagedObjectContext];
      v12 = storeControllerManagedObjectContext;
      if (!storeControllerManagedObjectContext)
      {
        v35 = +[REMLog cloudkit];
        if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
        {
          sub_1007651F0();
        }

        NSLog(@"'%s' is unexpectedly nil", "managedObjectContext");
        goto LABEL_38;
      }

      storeController = [storeControllerManagedObjectContext storeController];
      if (!storeController)
      {
        v36 = +[REMLog cloudkit];
        if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
        {
          sub_100765118();
        }

        NSLog(@"'%s' is unexpectedly nil", "storeController");
        goto LABEL_37;
      }

      -[ICREMCDAccountMergeLocalObjectsContext setDidChooseToMigrate:](self, "setDidChooseToMigrate:", [accountCopy didChooseToMigrate]);
      -[ICREMCDAccountMergeLocalObjectsContext setWasMigrated:](self, "setWasMigrated:", [accountCopy daWasMigrated]);
      -[ICREMCDAccountMergeLocalObjectsContext setIsInactive:](self, "setIsInactive:", [accountCopy inactive]);
      if ([(ICREMCDAccountMergeLocalObjectsContext *)self needsToMergeLocalObjects])
      {
        if ([accountCopy didChooseToMigrate] && (objc_msgSend(accountCopy, "didFinishMigration") & 1) == 0)
        {
          [(ICREMCDAccountMergeLocalObjectsContext *)self setDidNotFinishMigration:1];
          goto LABEL_37;
        }

        if ([accountCopy didChooseToMigrate])
        {
          ckUserRecordName = [accountCopy ckUserRecordName];

          if (!ckUserRecordName)
          {
            [(ICREMCDAccountMergeLocalObjectsContext *)self setNeedsToFetchUserRecord:1];
            goto LABEL_37;
          }

          v15 = +[REMLog cloudkit];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            accountIdentifier2 = [(ICREMCDAccountMergeLocalObjectsContext *)self accountIdentifier];
            *buf = 138543362;
            v40 = accountIdentifier2;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "MergeLocalObjectsContext.validate:(MERGE.LOCAL) Gathering all cloud objectIDs that should run attempt merging local objects {accountIdentifier: %{public}@}", buf, 0xCu);
          }

          __unsafe_doesNotWorkUniversally_affectedStores = [v12 __unsafe_doesNotWorkUniversally_affectedStores];
          v18 = [__unsafe_doesNotWorkUniversally_affectedStores count];

          if (v18 != 1)
          {
            sub_100765050();
          }

          __unsafe_doesNotWorkUniversally_affectedStores2 = [v12 __unsafe_doesNotWorkUniversally_affectedStores];
          firstObject = [__unsafe_doesNotWorkUniversally_affectedStores2 firstObject];
          identifier = [firstObject identifier];
          objectID = [accountCopy objectID];
          persistentStore = [objectID persistentStore];
          identifier2 = [persistentStore identifier];
          v24 = [identifier isEqual:identifier2];

          if ((v24 & 1) == 0)
          {
            sub_1007650B4();
          }

          v25 = [ICCloudContext allCloudObjectIDsOfClassesPassingTest:&stru_1008DB630 inContext:v12];
          [(ICREMCDAccountMergeLocalObjectsContext *)self setObjectIDsOfClassesEligibleForLocalObjectMerge:v25];
        }

        else
        {
          v25 = +[REMLog cloudkit];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_100764FC4(self);
          }
        }
      }

      else
      {
        v25 = +[REMLog cloudkit];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          accountIdentifier3 = [(ICREMCDAccountMergeLocalObjectsContext *)self accountIdentifier];
          *buf = 138543362;
          v40 = accountIdentifier3;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "MergeLocalObjectsContext.validate:(MERGE.LOCAL) Account does not need to merge local objects {accountIdentifier: %{public}@}", buf, 0xCu);
        }
      }

LABEL_37:
LABEL_38:

      goto LABEL_39;
    }

    v29 = +[REMLog cloudkit];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      sub_100764EEC();
    }

    remObjectID3 = [accountCopy remObjectID];
    uuid2 = [remObjectID3 uuid];
    uUIDString2 = [uuid2 UUIDString];
    accountIdentifier4 = [(ICREMCDAccountMergeLocalObjectsContext *)self accountIdentifier];
    v34 = [uUIDString2 isEqualToString:accountIdentifier4];

    if ((v34 & 1) == 0)
    {
      v28 = "[cdAccount.remObjectID.uuid.UUIDString isEqualToString:self.accountIdentifier]";
      goto LABEL_25;
    }
  }

  else
  {
    v26 = +[REMLog cloudkit];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      sub_1007652C8();
    }

    remObjectID4 = [accountCopy remObjectID];

    if (!remObjectID4)
    {
      v28 = "cdAccount.remObjectID";
LABEL_25:
      NSLog(@"'%s' is unexpectedly nil", v28);
    }
  }

LABEL_39:
}

- (BOOL)needsToMergeLocalObjects
{
  wasMigrated = [(ICREMCDAccountMergeLocalObjectsContext *)self wasMigrated];
  if (wasMigrated)
  {
    LOBYTE(wasMigrated) = ![(ICREMCDAccountMergeLocalObjectsContext *)self isInactive];
  }

  return wasMigrated;
}

- (BOOL)shouldRetryMergeLocalObjects
{
  didChooseToMigrate = [(ICREMCDAccountMergeLocalObjectsContext *)self didChooseToMigrate];
  if (didChooseToMigrate)
  {
    if ([(ICREMCDAccountMergeLocalObjectsContext *)self didNotFinishMigration]|| [(ICREMCDAccountMergeLocalObjectsContext *)self needsToFetchUserRecord])
    {
      LOBYTE(didChooseToMigrate) = 1;
    }

    else
    {

      LOBYTE(didChooseToMigrate) = [(ICREMCDAccountMergeLocalObjectsContext *)self isInactive];
    }
  }

  return didChooseToMigrate;
}

- (id)loggableDescription
{
  accountIdentifier = [(ICREMCDAccountMergeLocalObjectsContext *)self accountIdentifier];
  v4 = [NSString stringWithFormat:@"(accountIdentifier: %@, didChooseToMigrate: %d, wasMigrated: %d, didNotFinishMigration: %d, needsToFetchUserRecord: %d, isInactive: %d)", accountIdentifier, [(ICREMCDAccountMergeLocalObjectsContext *)self didChooseToMigrate], [(ICREMCDAccountMergeLocalObjectsContext *)self wasMigrated], [(ICREMCDAccountMergeLocalObjectsContext *)self didNotFinishMigration], [(ICREMCDAccountMergeLocalObjectsContext *)self needsToFetchUserRecord], [(ICREMCDAccountMergeLocalObjectsContext *)self isInactive]];

  return v4;
}

@end