@interface CKDatabaseOperation
- (id)ic_loggingValues;
@end

@implementation CKDatabaseOperation

- (id)ic_loggingValues
{
  v8.receiver = self;
  v8.super_class = CKDatabaseOperation;
  ic_loggingValues = [(CKDatabaseOperation *)&v8 ic_loggingValues];
  v4 = [ic_loggingValues mutableCopy];

  database = [(CKDatabaseOperation *)self database];
  [database databaseScope];
  v6 = CKDatabaseScopeString();
  [v4 setObject:v6 forKeyedSubscript:@"databaseScope"];

  return v4;
}

@end