@interface ICCloudSchemaCatchUpSyncContext
- (ICCloudSchemaCatchUpSyncContext)initWithAccountIdentifier:(id)identifier syncReason:(id)reason schedulingStateStorage:(id)storage managedObjectContext:(id)context;
- (id)description;
- (void)_computeShouldPerformCloudSchemaCatchUpSyncFrom:(id)from storeController:(id)controller;
@end

@implementation ICCloudSchemaCatchUpSyncContext

- (ICCloudSchemaCatchUpSyncContext)initWithAccountIdentifier:(id)identifier syncReason:(id)reason schedulingStateStorage:(id)storage managedObjectContext:(id)context
{
  identifierCopy = identifier;
  reasonCopy = reason;
  storageCopy = storage;
  contextCopy = context;
  v23.receiver = self;
  v23.super_class = ICCloudSchemaCatchUpSyncContext;
  v14 = [(ICCloudSchemaCatchUpSyncContext *)&v23 init];
  v15 = v14;
  if (v14)
  {
    [(ICCloudSchemaCatchUpSyncContext *)v14 setAccountIdentifier:identifierCopy];
    [(ICCloudSchemaCatchUpSyncContext *)v15 setSyncReason:reasonCopy];
    v22 = 0x7FFFFFFFFFFFFFFFLL;
    accountIdentifier = [(ICCloudSchemaCatchUpSyncContext *)v15 accountIdentifier];
    v17 = [ICCloudSchemaCompatibilityUtils isCloudSchemaCatchUpSyncNeededForAccountIdentifier:accountIdentifier context:contextCopy outPersistenceCloudSchemaVersion:&v22];

    if (v17)
    {
      [(ICCloudSchemaCatchUpSyncContext *)v15 setPersistenceCloudSchemaVersion:v22];
    }

    [(ICCloudSchemaCatchUpSyncContext *)v15 setIsCloudSchemaCatchUpSyncNeeded:v17];
    storeController = [contextCopy storeController];
    [(ICCloudSchemaCatchUpSyncContext *)v15 _computeShouldPerformCloudSchemaCatchUpSyncFrom:storageCopy storeController:storeController];

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

- (void)_computeShouldPerformCloudSchemaCatchUpSyncFrom:(id)from storeController:(id)controller
{
  fromCopy = from;
  controllerCopy = controller;
  if (![(ICCloudSchemaCatchUpSyncContext *)self isCloudSchemaCatchUpSyncNeeded])
  {
    v15 = 0;
    goto LABEL_12;
  }

  syncReason = [(ICCloudSchemaCatchUpSyncContext *)self syncReason];
  v9 = isCloudContextSyncReasonUserInitiated(syncReason);

  supportsCloudSchemaCatchUpSyncBackgroundScheduling = [controllerCopy supportsCloudSchemaCatchUpSyncBackgroundScheduling];
  debugForceSupportBackgroundScheduling = [fromCopy debugForceSupportBackgroundScheduling];
  schedulingState = [fromCopy schedulingState];
  v13 = +[REMLog cloudkit];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    syncReason2 = [(ICCloudSchemaCatchUpSyncContext *)self syncReason];
    v17[0] = 67110146;
    v17[1] = v9;
    v18 = 1024;
    v19 = supportsCloudSchemaCatchUpSyncBackgroundScheduling;
    v20 = 1024;
    v21 = debugForceSupportBackgroundScheduling;
    v22 = 2048;
    v23 = schedulingState;
    v24 = 2114;
    v25 = syncReason2;
  }

  if (((supportsCloudSchemaCatchUpSyncBackgroundScheduling & ~v9 | debugForceSupportBackgroundScheduling) & 1) == 0)
  {
LABEL_11:
    v15 = 1;
    goto LABEL_12;
  }

  if (schedulingState >= 3)
  {
    v16 = +[REMLog cloudkit];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_1007668E0(schedulingState, v16);
    }

    goto LABEL_11;
  }

  v15 = schedulingState == 2;
LABEL_12:
  [(ICCloudSchemaCatchUpSyncContext *)self setShouldPerformCloudSchemaCatchUpSync:v15];
}

- (id)description
{
  v3 = objc_opt_class();
  accountIdentifier = [(ICCloudSchemaCatchUpSyncContext *)self accountIdentifier];
  syncReason = [(ICCloudSchemaCatchUpSyncContext *)self syncReason];
  v6 = [NSString stringWithFormat:@"<%@: %p, accountIdentifier: %@, syncReason: %@, persistenceCloudSchemaVersion: %ld, isCloudSchemaCatchUpSyncNeeded: %d, shouldPerformCloudSchemaCatchUpSync: %d>", v3, self, accountIdentifier, syncReason, [(ICCloudSchemaCatchUpSyncContext *)self persistenceCloudSchemaVersion], [(ICCloudSchemaCatchUpSyncContext *)self isCloudSchemaCatchUpSyncNeeded], [(ICCloudSchemaCatchUpSyncContext *)self shouldPerformCloudSchemaCatchUpSync]];

  return v6;
}

@end