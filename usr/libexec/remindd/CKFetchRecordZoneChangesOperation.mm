@interface CKFetchRecordZoneChangesOperation
- (BOOL)ic_intersectsRecordZoneIDSet:(id)a3;
- (BOOL)ic_shouldDependOnCKFetchRecordZoneChangesOperation:(id)a3;
- (id)ic_loggingValues;
- (id)ic_shortLoggingDescription;
- (void)ic_removeAllCKCompletionBlocksButNotTheNSOperationCompletionBlock_50200031;
@end

@implementation CKFetchRecordZoneChangesOperation

- (id)ic_loggingValues
{
  v10.receiver = self;
  v10.super_class = CKFetchRecordZoneChangesOperation;
  v3 = [(CKFetchRecordZoneChangesOperation *)&v10 ic_loggingValues];
  v4 = [v3 mutableCopy];

  v5 = [(CKFetchRecordZoneChangesOperation *)self configurationsByRecordZoneID];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000BDC08;
  v8[3] = &unk_1008DBDB8;
  v6 = v4;
  v9 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

- (id)ic_shortLoggingDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(CKFetchRecordZoneChangesOperation *)self operationID];
  v6 = [NSString stringWithFormat:@"<%@ %@>", v4, v5];

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

- (BOOL)ic_intersectsRecordZoneIDSet:(id)a3
{
  v4 = a3;
  v5 = [(CKFetchRecordZoneChangesOperation *)self recordZoneIDs];
  if ([v5 count])
  {
    v6 = [(CKFetchRecordZoneChangesOperation *)self recordZoneIDs];
    v7 = [NSSet setWithArray:v6];
  }

  else
  {
    v7 = +[NSSet set];
  }

  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = +[NSSet set];
  }

  v9 = v8;
  v10 = [v7 intersectsSet:v8];

  return v10;
}

- (BOOL)ic_shouldDependOnCKFetchRecordZoneChangesOperation:(id)a3
{
  v4 = a3;
  v5 = [(CKFetchRecordZoneChangesOperation *)self database];
  v6 = [v5 container];
  v7 = [v6 options];
  v8 = [v7 accountOverrideInfo];
  v9 = [v8 accountID];

  v10 = [v4 database];
  v11 = [v10 container];
  v12 = [v11 options];
  v13 = [v12 accountOverrideInfo];
  v14 = [v13 accountID];

  if (v9 != v14 && ![v9 isEqual:v14])
  {
    goto LABEL_6;
  }

  v15 = [(CKFetchRecordZoneChangesOperation *)self database];
  v16 = [v15 databaseScope];
  v17 = [v4 database];
  v18 = [v17 databaseScope];

  if (v16 == v18)
  {
    v19 = [v4 recordZoneIDs];
    if (v19)
    {
      v20 = [v4 recordZoneIDs];
      v21 = [NSSet setWithArray:v20];
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