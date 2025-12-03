@interface CKFetchDatabaseChangesOperation
- (id)ic_loggingValues;
- (void)ic_removeAllCKCompletionBlocksButNotTheNSOperationCompletionBlock_50200031;
@end

@implementation CKFetchDatabaseChangesOperation

- (id)ic_loggingValues
{
  v10.receiver = self;
  v10.super_class = CKFetchDatabaseChangesOperation;
  ic_loggingValues = [(CKFetchDatabaseChangesOperation *)&v10 ic_loggingValues];
  v4 = [ic_loggingValues mutableCopy];

  previousServerChangeToken = [(CKFetchDatabaseChangesOperation *)self previousServerChangeToken];

  if (previousServerChangeToken)
  {
    previousServerChangeToken2 = [(CKFetchDatabaseChangesOperation *)self previousServerChangeToken];
    data = [previousServerChangeToken2 data];
    v8 = [data base64EncodedStringWithOptions:0];
  }

  else
  {
    v8 = @"(none)";
  }

  [v4 setObject:v8 forKeyedSubscript:@"serverChangeToken"];

  return v4;
}

- (void)ic_removeAllCKCompletionBlocksButNotTheNSOperationCompletionBlock_50200031
{
  v3.receiver = self;
  v3.super_class = CKFetchDatabaseChangesOperation;
  [(CKFetchDatabaseChangesOperation *)&v3 ic_removeAllCKCompletionBlocksButNotTheNSOperationCompletionBlock_50200031];
  [(CKFetchDatabaseChangesOperation *)self setRecordZoneWithIDChangedBlock:0];
  [(CKFetchDatabaseChangesOperation *)self setRecordZoneWithIDWasDeletedBlock:0];
  [(CKFetchDatabaseChangesOperation *)self setFetchDatabaseChangesCompletionBlock:0];
}

@end