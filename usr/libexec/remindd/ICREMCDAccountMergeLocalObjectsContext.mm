@interface ICREMCDAccountMergeLocalObjectsContext
- (BOOL)needsToMergeLocalObjects;
- (BOOL)shouldRetryMergeLocalObjects;
- (ICREMCDAccountMergeLocalObjectsContext)initWithAccountIdentifier:(id)a3;
- (id)loggableDescription;
- (void)validateWithAccount:(id)a3;
@end

@implementation ICREMCDAccountMergeLocalObjectsContext

- (ICREMCDAccountMergeLocalObjectsContext)initWithAccountIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11.receiver = self;
    v11.super_class = ICREMCDAccountMergeLocalObjectsContext;
    v5 = [(ICREMCDAccountMergeLocalObjectsContext *)&v11 init];
    v6 = v5;
    if (v5)
    {
      [(ICREMCDAccountMergeLocalObjectsContext *)v5 setAccountIdentifier:v4];
      v7 = +[NSSet set];
      [(ICREMCDAccountMergeLocalObjectsContext *)v6 setObjectIDsOfClassesEligibleForLocalObjectMerge:v7];

      [(ICREMCDAccountMergeLocalObjectsContext *)v6 setWasMigrated:0];
      [(ICREMCDAccountMergeLocalObjectsContext *)v6 setDidNotFinishMigration:0];
      [(ICREMCDAccountMergeLocalObjectsContext *)v6 setNeedsToFetchUserRecord:0];
      [(ICREMCDAccountMergeLocalObjectsContext *)v6 setIsInactive:0];
      [(ICREMCDAccountMergeLocalObjectsContext *)v6 setDidChooseToMigrate:0];
    }

    self = v6;
    v8 = self;
  }

  else
  {
    v9 = +[REMLog cloudkit];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_100764E14();
    }

    NSLog(@"'%s' is unexpectedly nil", "accountIdentifier");
    v8 = 0;
  }

  return v8;
}

- (void)validateWithAccount:(id)a3
{
  v4 = a3;
  v5 = [v4 remObjectID];

  if (v5)
  {
    v6 = [v4 remObjectID];
    v7 = [v6 uuid];
    v8 = [v7 UUIDString];
    v9 = [(ICREMCDAccountMergeLocalObjectsContext *)self accountIdentifier];
    v10 = [v8 isEqualToString:v9];

    if (v10)
    {
      v11 = [v4 storeControllerManagedObjectContext];
      v12 = v11;
      if (!v11)
      {
        v35 = +[REMLog cloudkit];
        if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
        {
          sub_1007651F0();
        }

        NSLog(@"'%s' is unexpectedly nil", "managedObjectContext");
        goto LABEL_38;
      }

      v13 = [v11 storeController];
      if (!v13)
      {
        v36 = +[REMLog cloudkit];
        if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
        {
          sub_100765118();
        }

        NSLog(@"'%s' is unexpectedly nil", "storeController");
        goto LABEL_37;
      }

      -[ICREMCDAccountMergeLocalObjectsContext setDidChooseToMigrate:](self, "setDidChooseToMigrate:", [v4 didChooseToMigrate]);
      -[ICREMCDAccountMergeLocalObjectsContext setWasMigrated:](self, "setWasMigrated:", [v4 daWasMigrated]);
      -[ICREMCDAccountMergeLocalObjectsContext setIsInactive:](self, "setIsInactive:", [v4 inactive]);
      if ([(ICREMCDAccountMergeLocalObjectsContext *)self needsToMergeLocalObjects])
      {
        if ([v4 didChooseToMigrate] && (objc_msgSend(v4, "didFinishMigration") & 1) == 0)
        {
          [(ICREMCDAccountMergeLocalObjectsContext *)self setDidNotFinishMigration:1];
          goto LABEL_37;
        }

        if ([v4 didChooseToMigrate])
        {
          v14 = [v4 ckUserRecordName];

          if (!v14)
          {
            [(ICREMCDAccountMergeLocalObjectsContext *)self setNeedsToFetchUserRecord:1];
            goto LABEL_37;
          }

          v15 = +[REMLog cloudkit];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = [(ICREMCDAccountMergeLocalObjectsContext *)self accountIdentifier];
            *buf = 138543362;
            v40 = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "MergeLocalObjectsContext.validate:(MERGE.LOCAL) Gathering all cloud objectIDs that should run attempt merging local objects {accountIdentifier: %{public}@}", buf, 0xCu);
          }

          v17 = [v12 __unsafe_doesNotWorkUniversally_affectedStores];
          v18 = [v17 count];

          if (v18 != 1)
          {
            sub_100765050();
          }

          v38 = [v12 __unsafe_doesNotWorkUniversally_affectedStores];
          v19 = [v38 firstObject];
          v20 = [v19 identifier];
          v21 = [v4 objectID];
          v22 = [v21 persistentStore];
          v23 = [v22 identifier];
          v24 = [v20 isEqual:v23];

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
          v37 = [(ICREMCDAccountMergeLocalObjectsContext *)self accountIdentifier];
          *buf = 138543362;
          v40 = v37;
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

    v30 = [v4 remObjectID];
    v31 = [v30 uuid];
    v32 = [v31 UUIDString];
    v33 = [(ICREMCDAccountMergeLocalObjectsContext *)self accountIdentifier];
    v34 = [v32 isEqualToString:v33];

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

    v27 = [v4 remObjectID];

    if (!v27)
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
  v3 = [(ICREMCDAccountMergeLocalObjectsContext *)self wasMigrated];
  if (v3)
  {
    LOBYTE(v3) = ![(ICREMCDAccountMergeLocalObjectsContext *)self isInactive];
  }

  return v3;
}

- (BOOL)shouldRetryMergeLocalObjects
{
  v3 = [(ICREMCDAccountMergeLocalObjectsContext *)self didChooseToMigrate];
  if (v3)
  {
    if ([(ICREMCDAccountMergeLocalObjectsContext *)self didNotFinishMigration]|| [(ICREMCDAccountMergeLocalObjectsContext *)self needsToFetchUserRecord])
    {
      LOBYTE(v3) = 1;
    }

    else
    {

      LOBYTE(v3) = [(ICREMCDAccountMergeLocalObjectsContext *)self isInactive];
    }
  }

  return v3;
}

- (id)loggableDescription
{
  v3 = [(ICREMCDAccountMergeLocalObjectsContext *)self accountIdentifier];
  v4 = [NSString stringWithFormat:@"(accountIdentifier: %@, didChooseToMigrate: %d, wasMigrated: %d, didNotFinishMigration: %d, needsToFetchUserRecord: %d, isInactive: %d)", v3, [(ICREMCDAccountMergeLocalObjectsContext *)self didChooseToMigrate], [(ICREMCDAccountMergeLocalObjectsContext *)self wasMigrated], [(ICREMCDAccountMergeLocalObjectsContext *)self didNotFinishMigration], [(ICREMCDAccountMergeLocalObjectsContext *)self needsToFetchUserRecord], [(ICREMCDAccountMergeLocalObjectsContext *)self isInactive]];

  return v4;
}

@end