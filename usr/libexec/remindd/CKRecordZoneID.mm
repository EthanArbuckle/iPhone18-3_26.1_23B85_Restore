@interface CKRecordZoneID
+ (int64_t)ic_defaultDatabaseScopeForOwnerName:(id)a3;
- (BOOL)ic_isOwnedByCurrentUser;
- (id)ic_loggingDescription;
- (int64_t)rd_ckDatabaseScope;
@end

@implementation CKRecordZoneID

+ (int64_t)ic_defaultDatabaseScopeForOwnerName:(id)a3
{
  if ([a3 isEqualToString:CKCurrentUserDefaultName])
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

- (id)ic_loggingDescription
{
  v3 = [(CKRecordZoneID *)self ownerName];
  v4 = [v3 isEqualToString:CKCurrentUserDefaultName];

  if (v4)
  {
    v5 = [(CKRecordZoneID *)self zoneName];
    [(CKRecordZoneID *)self databaseScope];
    v6 = CKDatabaseScopeString();
    v7 = [NSString stringWithFormat:@"<%@ %@>", v5, v6];
  }

  else
  {
    v5 = [(CKRecordZoneID *)self ownerName];
    v6 = [(CKRecordZoneID *)self zoneName];
    [(CKRecordZoneID *)self databaseScope];
    v8 = CKDatabaseScopeString();
    v7 = [NSString stringWithFormat:@"<%@ %@ %@>", v5, v6, v8];
  }

  return v7;
}

- (int64_t)rd_ckDatabaseScope
{
  result = [(CKRecordZoneID *)self databaseScope];
  if (!result)
  {
    v4 = objc_opt_class();
    v5 = [(CKRecordZoneID *)self ownerName];
    v6 = [v4 ic_defaultDatabaseScopeForOwnerName:v5];

    return v6;
  }

  return result;
}

- (BOOL)ic_isOwnedByCurrentUser
{
  v2 = [(CKRecordZoneID *)self ownerName];
  v3 = [v2 isEqualToString:CKCurrentUserDefaultName];

  return v3;
}

@end