@interface CKRecord
- (BOOL)ic_isOwnedByCurrentUser;
- (id)ic_loggingDescription;
- (int64_t)rd_ckDatabaseScope;
@end

@implementation CKRecord

- (id)ic_loggingDescription
{
  v3 = [(CKRecord *)self recordType];
  v4 = [(CKRecord *)self recordID];
  v5 = [v4 ic_loggingDescriptionIncludingBrackets:0];
  v6 = [NSMutableString stringWithFormat:@"<%@ %@", v3, v5];

  v7 = [(CKRecord *)self recordChangeTag];

  if (v7)
  {
    v8 = [(CKRecord *)self recordChangeTag];
    [v6 appendFormat:@" changeTag=%@", v8];
  }

  v9 = [(CKRecord *)self share];

  if (v9)
  {
    v10 = [(CKRecord *)self share];
    v11 = [v10 recordID];
    v12 = [v11 recordName];
    [v6 appendFormat:@" share=%@", v12];
  }

  [v6 appendString:@">"];

  return v6;
}

- (int64_t)rd_ckDatabaseScope
{
  v2 = [(CKRecord *)self recordID];
  v3 = [v2 rd_ckDatabaseScope];

  return v3;
}

- (BOOL)ic_isOwnedByCurrentUser
{
  v2 = [(CKRecord *)self recordID];
  v3 = [v2 ic_isOwnedByCurrentUser];

  return v3;
}

@end