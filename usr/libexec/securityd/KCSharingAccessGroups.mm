@interface KCSharingAccessGroups
- (BOOL)isEqual:(id)equal;
- (BOOL)recordHasKnownFields:(id)fields;
- (BOOL)recordIsFullyDecoded:(id)decoded;
- (BOOL)recordTypeIsKnown:(id)known;
- (BOOL)remoteItemProtoIsFullyDecoded:(id)decoded;
- (KCSharingAccessGroups)initWithEntryAccessGroup:(id)group entrySchemaVersion:(int64_t)version;
- (unint64_t)hash;
@end

@implementation KCSharingAccessGroups

- (BOOL)remoteItemProtoIsFullyDecoded:(id)decoded
{
  decodedCopy = decoded;
  if ([(KCSharingAccessGroups *)self entrySchemaVersion]< 1)
  {
    v6 = 0;
  }

  else
  {
    unknownFields = [decodedCopy unknownFields];
    if (unknownFields)
    {
      v6 = 0;
    }

    else
    {
      privateKey = [decodedCopy privateKey];
      unknownFields2 = [privateKey unknownFields];
      if (unknownFields2)
      {
        v6 = 0;
      }

      else
      {
        internetPassword = [decodedCopy internetPassword];
        unknownFields3 = [internetPassword unknownFields];
        v6 = unknownFields3 == 0;
      }
    }
  }

  return v6;
}

- (BOOL)recordIsFullyDecoded:(id)decoded
{
  decodedCopy = decoded;
  recordType = [decodedCopy recordType];
  if ([(KCSharingAccessGroups *)self recordTypeIsKnown:recordType])
  {
    v6 = [(KCSharingAccessGroups *)self recordHasKnownFields:decodedCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)recordHasKnownFields:(id)fields
{
  fieldsCopy = fields;
  allKeys = [fieldsCopy allKeys];
  v6 = [NSMutableSet setWithArray:allKeys];

  if ([(KCSharingAccessGroups *)self entrySchemaVersion]>= 1)
  {
    if (qword_10039DB58 != -1)
    {
      dispatch_once(&qword_10039DB58, &stru_100333C88);
    }

    recordType = [fieldsCopy recordType];
    v8 = [recordType isEqual:@"item"];

    if (v8)
    {
      [v6 minusSet:qword_10039DB50];
    }

    else
    {
      recordType2 = [fieldsCopy recordType];
      v10 = [recordType2 isEqual:CKRecordTypeShare];

      if (v10)
      {
        [v6 removeObject:@"displayName"];
      }
    }
  }

  v11 = [v6 count] == 0;

  return v11;
}

- (BOOL)recordTypeIsKnown:(id)known
{
  knownCopy = known;
  if ([(KCSharingAccessGroups *)self entrySchemaVersion]< 1)
  {
    v5 = 0;
  }

  else if ([knownCopy isEqual:@"item"])
  {
    v5 = 1;
  }

  else
  {
    v5 = [knownCopy isEqual:CKRecordTypeShare];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else if ([(KCSharingAccessGroups *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    entryAccessGroup = [(KCSharingAccessGroups *)self entryAccessGroup];
    entryAccessGroup2 = [(KCSharingAccessGroups *)v5 entryAccessGroup];
    if ([entryAccessGroup isEqualToString:entryAccessGroup2])
    {
      entrySchemaVersion = [(KCSharingAccessGroups *)self entrySchemaVersion];
      v9 = entrySchemaVersion == [(KCSharingAccessGroups *)v5 entrySchemaVersion];
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
  entryAccessGroup = [(KCSharingAccessGroups *)self entryAccessGroup];
  v4 = [entryAccessGroup hash];

  return [(KCSharingAccessGroups *)self entrySchemaVersion]- v4 + 32 * v4;
}

- (KCSharingAccessGroups)initWithEntryAccessGroup:(id)group entrySchemaVersion:(int64_t)version
{
  groupCopy = group;
  v11.receiver = self;
  v11.super_class = KCSharingAccessGroups;
  v7 = [(KCSharingAccessGroups *)&v11 init];
  if (v7)
  {
    v8 = [groupCopy copy];
    entryAccessGroup = v7->_entryAccessGroup;
    v7->_entryAccessGroup = v8;

    v7->_entrySchemaVersion = version;
  }

  return v7;
}

@end