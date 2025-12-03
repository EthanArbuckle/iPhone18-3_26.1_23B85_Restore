@interface CKRecord
- (BOOL)ic_isOwnedByCurrentUser;
- (id)ic_loggingDescription;
- (int64_t)rd_ckDatabaseScope;
@end

@implementation CKRecord

- (id)ic_loggingDescription
{
  recordType = [(CKRecord *)self recordType];
  recordID = [(CKRecord *)self recordID];
  v5 = [recordID ic_loggingDescriptionIncludingBrackets:0];
  v6 = [NSMutableString stringWithFormat:@"<%@ %@", recordType, v5];

  recordChangeTag = [(CKRecord *)self recordChangeTag];

  if (recordChangeTag)
  {
    recordChangeTag2 = [(CKRecord *)self recordChangeTag];
    [v6 appendFormat:@" changeTag=%@", recordChangeTag2];
  }

  share = [(CKRecord *)self share];

  if (share)
  {
    share2 = [(CKRecord *)self share];
    recordID2 = [share2 recordID];
    recordName = [recordID2 recordName];
    [v6 appendFormat:@" share=%@", recordName];
  }

  [v6 appendString:@">"];

  return v6;
}

- (int64_t)rd_ckDatabaseScope
{
  recordID = [(CKRecord *)self recordID];
  rd_ckDatabaseScope = [recordID rd_ckDatabaseScope];

  return rd_ckDatabaseScope;
}

- (BOOL)ic_isOwnedByCurrentUser
{
  recordID = [(CKRecord *)self recordID];
  ic_isOwnedByCurrentUser = [recordID ic_isOwnedByCurrentUser];

  return ic_isOwnedByCurrentUser;
}

@end