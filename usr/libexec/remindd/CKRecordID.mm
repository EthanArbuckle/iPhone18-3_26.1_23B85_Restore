@interface CKRecordID
- (BOOL)ic_isEqual:(id)a3;
- (BOOL)ic_isOwnedByCurrentUser;
- (id)ic_loggingDescriptionIncludingBrackets:(BOOL)a3;
- (int64_t)rd_ckDatabaseScope;
@end

@implementation CKRecordID

- (id)ic_loggingDescriptionIncludingBrackets:(BOOL)a3
{
  v3 = a3;
  v5 = +[NSMutableString string];
  v6 = v5;
  if (v3)
  {
    [v5 appendString:@"<"];
  }

  v7 = [(CKRecordID *)self recordName];
  [v6 appendString:v7];

  v8 = [(CKRecordID *)self zoneID];
  v9 = [v8 zoneName];
  [v6 appendFormat:@" %@", v9];

  v10 = [(CKRecordID *)self zoneID];
  v11 = [v10 ownerName];
  v12 = [v11 isEqualToString:CKCurrentUserDefaultName];

  if ((v12 & 1) == 0)
  {
    v13 = [(CKRecordID *)self zoneID];
    v14 = [v13 ownerName];
    [v6 appendFormat:@" %@", v14];
  }

  v15 = [(CKRecordID *)self zoneID];
  [v15 rd_ckDatabaseScope];
  v16 = CKDatabaseScopeString();
  [v6 appendFormat:@" %@", v16];

  if (v3)
  {
    [v6 appendString:@">"];
  }

  return v6;
}

- (int64_t)rd_ckDatabaseScope
{
  v2 = [(CKRecordID *)self zoneID];
  v3 = [v2 rd_ckDatabaseScope];

  return v3;
}

- (BOOL)ic_isOwnedByCurrentUser
{
  v2 = [(CKRecordID *)self zoneID];
  v3 = [v2 ic_isOwnedByCurrentUser];

  return v3;
}

- (BOOL)ic_isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = [v4 recordName];
  v6 = [(CKRecordID *)self recordName];
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [v4 recordName];
    v9 = [(CKRecordID *)self recordName];
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
      goto LABEL_12;
    }
  }

  v11 = [v4 zoneID];
  v12 = [v11 zoneName];
  v13 = [(CKRecordID *)self zoneID];
  v14 = [v13 zoneName];
  v15 = v14;
  if (v12 == v14)
  {
  }

  else
  {
    v16 = [v4 zoneID];
    v17 = [v16 zoneName];
    v18 = [(CKRecordID *)self zoneID];
    v19 = [v18 zoneName];
    v34 = [v17 isEqual:v19];

    if ((v34 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v20 = [v4 zoneID];
  v21 = [v20 ownerName];
  v22 = [(CKRecordID *)self zoneID];
  v23 = [v22 ownerName];
  v24 = v23;
  if (v21 == v23)
  {

    goto LABEL_15;
  }

  v25 = [v4 zoneID];
  v26 = [v25 ownerName];
  v27 = [(CKRecordID *)self zoneID];
  v28 = [v27 ownerName];
  v35 = [v26 isEqual:v28];

  if (v35)
  {
LABEL_15:
    v31 = [v4 zoneID];
    v32 = [v31 databaseScope];
    v33 = [(CKRecordID *)self zoneID];
    v29 = v32 == [v33 databaseScope];

    goto LABEL_13;
  }

LABEL_12:
  v29 = 0;
LABEL_13:

  return v29;
}

@end