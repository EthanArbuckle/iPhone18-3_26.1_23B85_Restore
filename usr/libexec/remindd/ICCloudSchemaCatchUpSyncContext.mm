@interface ICCloudSchemaCatchUpSyncContext
- (ICCloudSchemaCatchUpSyncContext)initWithAccountIdentifier:(id)a3 syncReason:(id)a4 schedulingStateStorage:(id)a5 managedObjectContext:(id)a6;
- (id)description;
- (void)_computeShouldPerformCloudSchemaCatchUpSyncFrom:(id)a3 storeController:(id)a4;
@end

@implementation ICCloudSchemaCatchUpSyncContext

- (ICCloudSchemaCatchUpSyncContext)initWithAccountIdentifier:(id)a3 syncReason:(id)a4 schedulingStateStorage:(id)a5 managedObjectContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v23.receiver = self;
  v23.super_class = ICCloudSchemaCatchUpSyncContext;
  v14 = [(ICCloudSchemaCatchUpSyncContext *)&v23 init];
  v15 = v14;
  if (v14)
  {
    [(ICCloudSchemaCatchUpSyncContext *)v14 setAccountIdentifier:v10];
    [(ICCloudSchemaCatchUpSyncContext *)v15 setSyncReason:v11];
    v22 = 0x7FFFFFFFFFFFFFFFLL;
    v16 = [(ICCloudSchemaCatchUpSyncContext *)v15 accountIdentifier];
    v17 = [ICCloudSchemaCompatibilityUtils isCloudSchemaCatchUpSyncNeededForAccountIdentifier:v16 context:v13 outPersistenceCloudSchemaVersion:&v22];

    if (v17)
    {
      [(ICCloudSchemaCatchUpSyncContext *)v15 setPersistenceCloudSchemaVersion:v22];
    }

    [(ICCloudSchemaCatchUpSyncContext *)v15 setIsCloudSchemaCatchUpSyncNeeded:v17];
    v18 = [v13 storeController];
    [(ICCloudSchemaCatchUpSyncContext *)v15 _computeShouldPerformCloudSchemaCatchUpSyncFrom:v12 storeController:v18];

    v19 = +[REMLog cloudkit];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = [(ICCloudSchemaCatchUpSyncContext *)v15 description];
      *buf = 138412290;
      v25 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "ICCloudSchemaCatchUpSyncContext: finished initizing context: %@", buf, 0xCu);
    }
  }

  return v15;
}

- (void)_computeShouldPerformCloudSchemaCatchUpSyncFrom:(id)a3 storeController:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(ICCloudSchemaCatchUpSyncContext *)self isCloudSchemaCatchUpSyncNeeded])
  {
    v15 = 0;
    goto LABEL_12;
  }

  v8 = [(ICCloudSchemaCatchUpSyncContext *)self syncReason];
  v9 = isCloudContextSyncReasonUserInitiated(v8);

  v10 = [v7 supportsCloudSchemaCatchUpSyncBackgroundScheduling];
  v11 = [v6 debugForceSupportBackgroundScheduling];
  v12 = [v6 schedulingState];
  v13 = +[REMLog cloudkit];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [(ICCloudSchemaCatchUpSyncContext *)self syncReason];
    v17[0] = 67110146;
    v17[1] = v9;
    v18 = 1024;
    v19 = v10;
    v20 = 1024;
    v21 = v11;
    v22 = 2048;
    v23 = v12;
    v24 = 2114;
    v25 = v14;
  }

  if (((v10 & ~v9 | v11) & 1) == 0)
  {
LABEL_11:
    v15 = 1;
    goto LABEL_12;
  }

  if (v12 >= 3)
  {
    v16 = +[REMLog cloudkit];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_1007668E0(v12, v16);
    }

    goto LABEL_11;
  }

  v15 = v12 == 2;
LABEL_12:
  [(ICCloudSchemaCatchUpSyncContext *)self setShouldPerformCloudSchemaCatchUpSync:v15];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(ICCloudSchemaCatchUpSyncContext *)self accountIdentifier];
  v5 = [(ICCloudSchemaCatchUpSyncContext *)self syncReason];
  v6 = [NSString stringWithFormat:@"<%@: %p, accountIdentifier: %@, syncReason: %@, persistenceCloudSchemaVersion: %ld, isCloudSchemaCatchUpSyncNeeded: %d, shouldPerformCloudSchemaCatchUpSync: %d>", v3, self, v4, v5, [(ICCloudSchemaCatchUpSyncContext *)self persistenceCloudSchemaVersion], [(ICCloudSchemaCatchUpSyncContext *)self isCloudSchemaCatchUpSyncNeeded], [(ICCloudSchemaCatchUpSyncContext *)self shouldPerformCloudSchemaCatchUpSync]];

  return v6;
}

@end