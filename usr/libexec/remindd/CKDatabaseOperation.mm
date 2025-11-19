@interface CKDatabaseOperation
- (id)ic_loggingValues;
@end

@implementation CKDatabaseOperation

- (id)ic_loggingValues
{
  v8.receiver = self;
  v8.super_class = CKDatabaseOperation;
  v3 = [(CKDatabaseOperation *)&v8 ic_loggingValues];
  v4 = [v3 mutableCopy];

  v5 = [(CKDatabaseOperation *)self database];
  [v5 databaseScope];
  v6 = CKDatabaseScopeString();
  [v4 setObject:v6 forKeyedSubscript:@"databaseScope"];

  return v4;
}

@end