@interface KCSharingAccessGroups
- (BOOL)isEqual:(id)a3;
- (BOOL)recordHasKnownFields:(id)a3;
- (BOOL)recordIsFullyDecoded:(id)a3;
- (BOOL)recordTypeIsKnown:(id)a3;
- (BOOL)remoteItemProtoIsFullyDecoded:(id)a3;
- (KCSharingAccessGroups)initWithEntryAccessGroup:(id)a3 entrySchemaVersion:(int64_t)a4;
- (unint64_t)hash;
@end

@implementation KCSharingAccessGroups

- (BOOL)remoteItemProtoIsFullyDecoded:(id)a3
{
  v4 = a3;
  if ([(KCSharingAccessGroups *)self entrySchemaVersion]< 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = [v4 unknownFields];
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v7 = [v4 privateKey];
      v8 = [v7 unknownFields];
      if (v8)
      {
        v6 = 0;
      }

      else
      {
        v9 = [v4 internetPassword];
        v10 = [v9 unknownFields];
        v6 = v10 == 0;
      }
    }
  }

  return v6;
}

- (BOOL)recordIsFullyDecoded:(id)a3
{
  v4 = a3;
  v5 = [v4 recordType];
  if ([(KCSharingAccessGroups *)self recordTypeIsKnown:v5])
  {
    v6 = [(KCSharingAccessGroups *)self recordHasKnownFields:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)recordHasKnownFields:(id)a3
{
  v4 = a3;
  v5 = [v4 allKeys];
  v6 = [NSMutableSet setWithArray:v5];

  if ([(KCSharingAccessGroups *)self entrySchemaVersion]>= 1)
  {
    if (qword_10039DB58 != -1)
    {
      dispatch_once(&qword_10039DB58, &stru_100333C88);
    }

    v7 = [v4 recordType];
    v8 = [v7 isEqual:@"item"];

    if (v8)
    {
      [v6 minusSet:qword_10039DB50];
    }

    else
    {
      v9 = [v4 recordType];
      v10 = [v9 isEqual:CKRecordTypeShare];

      if (v10)
      {
        [v6 removeObject:@"displayName"];
      }
    }
  }

  v11 = [v6 count] == 0;

  return v11;
}

- (BOOL)recordTypeIsKnown:(id)a3
{
  v4 = a3;
  if ([(KCSharingAccessGroups *)self entrySchemaVersion]< 1)
  {
    v5 = 0;
  }

  else if ([v4 isEqual:@"item"])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqual:CKRecordTypeShare];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else if ([(KCSharingAccessGroups *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(KCSharingAccessGroups *)self entryAccessGroup];
    v7 = [(KCSharingAccessGroups *)v5 entryAccessGroup];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(KCSharingAccessGroups *)self entrySchemaVersion];
      v9 = v8 == [(KCSharingAccessGroups *)v5 entrySchemaVersion];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(KCSharingAccessGroups *)self entryAccessGroup];
  v4 = [v3 hash];

  return [(KCSharingAccessGroups *)self entrySchemaVersion]- v4 + 32 * v4;
}

- (KCSharingAccessGroups)initWithEntryAccessGroup:(id)a3 entrySchemaVersion:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = KCSharingAccessGroups;
  v7 = [(KCSharingAccessGroups *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    entryAccessGroup = v7->_entryAccessGroup;
    v7->_entryAccessGroup = v8;

    v7->_entrySchemaVersion = a4;
  }

  return v7;
}

@end