@interface CKRecordZoneID
+ (int64_t)ic_defaultDatabaseScopeForOwnerName:(id)name;
- (BOOL)ic_isOwnedByCurrentUser;
- (id)ic_loggingDescription;
- (int64_t)rd_ckDatabaseScope;
@end

@implementation CKRecordZoneID

+ (int64_t)ic_defaultDatabaseScopeForOwnerName:(id)name
{
  if ([name isEqualToString:CKCurrentUserDefaultName])
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
  ownerName = [(CKRecordZoneID *)self ownerName];
  v4 = [ownerName isEqualToString:CKCurrentUserDefaultName];

  if (v4)
  {
    zoneName = [(CKRecordZoneID *)self zoneName];
    [(CKRecordZoneID *)self databaseScope];
    zoneName2 = CKDatabaseScopeString();
    v7 = [NSString stringWithFormat:@"<%@ %@>", zoneName, zoneName2];
  }

  else
  {
    zoneName = [(CKRecordZoneID *)self ownerName];
    zoneName2 = [(CKRecordZoneID *)self zoneName];
    [(CKRecordZoneID *)self databaseScope];
    v8 = CKDatabaseScopeString();
    v7 = [NSString stringWithFormat:@"<%@ %@ %@>", zoneName, zoneName2, v8];
  }

  return v7;
}

- (int64_t)rd_ckDatabaseScope
{
  result = [(CKRecordZoneID *)self databaseScope];
  if (!result)
  {
    v4 = objc_opt_class();
    ownerName = [(CKRecordZoneID *)self ownerName];
    v6 = [v4 ic_defaultDatabaseScopeForOwnerName:ownerName];

    return v6;
  }

  return result;
}

- (BOOL)ic_isOwnedByCurrentUser
{
  ownerName = [(CKRecordZoneID *)self ownerName];
  v3 = [ownerName isEqualToString:CKCurrentUserDefaultName];

  return v3;
}

@end