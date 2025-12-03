@interface CKRecordID
- (BOOL)ic_isEqual:(id)equal;
- (BOOL)ic_isOwnedByCurrentUser;
- (id)ic_loggingDescriptionIncludingBrackets:(BOOL)brackets;
- (int64_t)rd_ckDatabaseScope;
@end

@implementation CKRecordID

- (id)ic_loggingDescriptionIncludingBrackets:(BOOL)brackets
{
  bracketsCopy = brackets;
  v5 = +[NSMutableString string];
  v6 = v5;
  if (bracketsCopy)
  {
    [v5 appendString:@"<"];
  }

  recordName = [(CKRecordID *)self recordName];
  [v6 appendString:recordName];

  zoneID = [(CKRecordID *)self zoneID];
  zoneName = [zoneID zoneName];
  [v6 appendFormat:@" %@", zoneName];

  zoneID2 = [(CKRecordID *)self zoneID];
  ownerName = [zoneID2 ownerName];
  v12 = [ownerName isEqualToString:CKCurrentUserDefaultName];

  if ((v12 & 1) == 0)
  {
    zoneID3 = [(CKRecordID *)self zoneID];
    ownerName2 = [zoneID3 ownerName];
    [v6 appendFormat:@" %@", ownerName2];
  }

  zoneID4 = [(CKRecordID *)self zoneID];
  [zoneID4 rd_ckDatabaseScope];
  v16 = CKDatabaseScopeString();
  [v6 appendFormat:@" %@", v16];

  if (bracketsCopy)
  {
    [v6 appendString:@">"];
  }

  return v6;
}

- (int64_t)rd_ckDatabaseScope
{
  zoneID = [(CKRecordID *)self zoneID];
  rd_ckDatabaseScope = [zoneID rd_ckDatabaseScope];

  return rd_ckDatabaseScope;
}

- (BOOL)ic_isOwnedByCurrentUser
{
  zoneID = [(CKRecordID *)self zoneID];
  ic_isOwnedByCurrentUser = [zoneID ic_isOwnedByCurrentUser];

  return ic_isOwnedByCurrentUser;
}

- (BOOL)ic_isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  recordName = [equalCopy recordName];
  recordName2 = [(CKRecordID *)self recordName];
  v7 = recordName2;
  if (recordName == recordName2)
  {
  }

  else
  {
    recordName3 = [equalCopy recordName];
    recordName4 = [(CKRecordID *)self recordName];
    v10 = [recordName3 isEqual:recordName4];

    if (!v10)
    {
      goto LABEL_12;
    }
  }

  zoneID = [equalCopy zoneID];
  zoneName = [zoneID zoneName];
  zoneID2 = [(CKRecordID *)self zoneID];
  zoneName2 = [zoneID2 zoneName];
  v15 = zoneName2;
  if (zoneName == zoneName2)
  {
  }

  else
  {
    zoneID3 = [equalCopy zoneID];
    zoneName3 = [zoneID3 zoneName];
    zoneID4 = [(CKRecordID *)self zoneID];
    zoneName4 = [zoneID4 zoneName];
    v34 = [zoneName3 isEqual:zoneName4];

    if ((v34 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  zoneID5 = [equalCopy zoneID];
  ownerName = [zoneID5 ownerName];
  zoneID6 = [(CKRecordID *)self zoneID];
  ownerName2 = [zoneID6 ownerName];
  v24 = ownerName2;
  if (ownerName == ownerName2)
  {

    goto LABEL_15;
  }

  zoneID7 = [equalCopy zoneID];
  ownerName3 = [zoneID7 ownerName];
  zoneID8 = [(CKRecordID *)self zoneID];
  ownerName4 = [zoneID8 ownerName];
  v35 = [ownerName3 isEqual:ownerName4];

  if (v35)
  {
LABEL_15:
    zoneID9 = [equalCopy zoneID];
    databaseScope = [zoneID9 databaseScope];
    zoneID10 = [(CKRecordID *)self zoneID];
    v29 = databaseScope == [zoneID10 databaseScope];

    goto LABEL_13;
  }

LABEL_12:
  v29 = 0;
LABEL_13:

  return v29;
}

@end