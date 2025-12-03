@interface CKFetchRecordZoneChangesOperation
- (BOOL)ic_intersectsRecordZoneIDSet:(id)set;
- (BOOL)ic_shouldDependOnCKFetchRecordZoneChangesOperation:(id)operation;
- (id)ic_loggingValues;
- (id)ic_shortLoggingDescription;
- (void)ic_removeAllCKCompletionBlocksButNotTheNSOperationCompletionBlock_50200031;
@end

@implementation CKFetchRecordZoneChangesOperation

- (id)ic_loggingValues
{
  v10.receiver = self;
  v10.super_class = CKFetchRecordZoneChangesOperation;
  ic_loggingValues = [(CKFetchRecordZoneChangesOperation *)&v10 ic_loggingValues];
  v4 = [ic_loggingValues mutableCopy];

  configurationsByRecordZoneID = [(CKFetchRecordZoneChangesOperation *)self configurationsByRecordZoneID];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000BDC08;
  v8[3] = &unk_1008DBDB8;
  v6 = v4;
  v9 = v6;
  [configurationsByRecordZoneID enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

- (id)ic_shortLoggingDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  operationID = [(CKFetchRecordZoneChangesOperation *)self operationID];
  v6 = [NSString stringWithFormat:@"<%@ %@>", v4, operationID];

  return v6;
}

- (void)ic_removeAllCKCompletionBlocksButNotTheNSOperationCompletionBlock_50200031
{
  v3.receiver = self;
  v3.super_class = CKFetchRecordZoneChangesOperation;
  [(CKFetchRecordZoneChangesOperation *)&v3 ic_removeAllCKCompletionBlocksButNotTheNSOperationCompletionBlock_50200031];
  [(CKFetchRecordZoneChangesOperation *)self setRecordWasChangedBlock:0];
  [(CKFetchRecordZoneChangesOperation *)self setRecordWithIDWasDeletedBlock:0];
  [(CKFetchRecordZoneChangesOperation *)self setFetchRecordZoneChangesCompletionBlock:0];
  [(CKFetchRecordZoneChangesOperation *)self setRecordZoneFetchCompletionBlock:0];
  [(CKFetchRecordZoneChangesOperation *)self setRecordZoneChangeTokensUpdatedBlock:0];
}

- (BOOL)ic_intersectsRecordZoneIDSet:(id)set
{
  setCopy = set;
  recordZoneIDs = [(CKFetchRecordZoneChangesOperation *)self recordZoneIDs];
  if ([recordZoneIDs count])
  {
    recordZoneIDs2 = [(CKFetchRecordZoneChangesOperation *)self recordZoneIDs];
    v7 = [NSSet setWithArray:recordZoneIDs2];
  }

  else
  {
    v7 = +[NSSet set];
  }

  if (setCopy)
  {
    v8 = setCopy;
  }

  else
  {
    v8 = +[NSSet set];
  }

  v9 = v8;
  v10 = [v7 intersectsSet:v8];

  return v10;
}

- (BOOL)ic_shouldDependOnCKFetchRecordZoneChangesOperation:(id)operation
{
  operationCopy = operation;
  database = [(CKFetchRecordZoneChangesOperation *)self database];
  container = [database container];
  options = [container options];
  accountOverrideInfo = [options accountOverrideInfo];
  accountID = [accountOverrideInfo accountID];

  database2 = [operationCopy database];
  container2 = [database2 container];
  options2 = [container2 options];
  accountOverrideInfo2 = [options2 accountOverrideInfo];
  accountID2 = [accountOverrideInfo2 accountID];

  if (accountID != accountID2 && ![accountID isEqual:accountID2])
  {
    goto LABEL_6;
  }

  database3 = [(CKFetchRecordZoneChangesOperation *)self database];
  databaseScope = [database3 databaseScope];
  database4 = [operationCopy database];
  databaseScope2 = [database4 databaseScope];

  if (databaseScope == databaseScope2)
  {
    recordZoneIDs = [operationCopy recordZoneIDs];
    if (recordZoneIDs)
    {
      recordZoneIDs2 = [operationCopy recordZoneIDs];
      v21 = [NSSet setWithArray:recordZoneIDs2];
    }

    else
    {
      v21 = +[NSSet set];
    }

    v22 = [(CKFetchRecordZoneChangesOperation *)self ic_intersectsRecordZoneIDSet:v21];
  }

  else
  {
LABEL_6:
    v22 = 0;
  }

  return v22;
}

@end