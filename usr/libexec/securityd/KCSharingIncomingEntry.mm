@interface KCSharingIncomingEntry
- (KCSharingIncomingEntry)initWithAttributes:(id)attributes error:(id *)error;
- (KCSharingIncomingEntry)initWithFetchedRecord:(id)record;
- (NSDate)modificationDate;
- (id)attributesWithAccessGroups:(id)groups error:(id *)error;
- (id)remoteItemWithAccessGroups:(id)groups error:(id *)error;
- (id)shareWithAccessGroups:(id)groups error:(id *)error;
@end

@implementation KCSharingIncomingEntry

- (id)attributesWithAccessGroups:(id)groups error:(id *)error
{
  groupsCopy = groups;
  v7 = [NSKeyedArchiver archivedDataWithRootObject:self->_record requiringSecureCoding:1 error:error];
  if (v7)
  {
    v18 = objc_opt_new();
    [v18 setCloudKitRecord:v7];
    v25[0] = kSecAttrUUID;
    recordID = [(CKRecord *)self->_record recordID];
    recordName = [recordID recordName];
    v26[0] = recordName;
    v25[1] = @"zone";
    record = [(KCSharingIncomingEntry *)self record];
    recordID2 = [record recordID];
    zoneID = [recordID2 zoneID];
    zoneName = [zoneID zoneName];
    v26[1] = zoneName;
    v25[2] = @"ownr";
    record2 = [(KCSharingIncomingEntry *)self record];
    recordID3 = [record2 recordID];
    zoneID2 = [recordID3 zoneID];
    ownerName = [zoneID2 ownerName];
    v26[2] = ownerName;
    v26[3] = kSecAttrAccessibleWhenUnlockedThisDeviceOnly;
    v25[3] = kSecAttrAccessible;
    v25[4] = @"type";
    v12 = [NSNumber numberWithLongLong:self->_type];
    v26[4] = v12;
    v25[5] = kSecAttrAccessGroup;
    entryAccessGroup = [groupsCopy entryAccessGroup];
    v26[5] = entryAccessGroup;
    v26[6] = &__kCFBooleanFalse;
    v25[6] = @"deln";
    v25[7] = kSecValueData;
    [v18 data];
    v15 = v14 = groupsCopy;
    v26[7] = v15;
    v16 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:8];

    groupsCopy = v14;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)shareWithAccessGroups:(id)groups error:(id *)error
{
  groupsCopy = groups;
  type = [(KCSharingIncomingEntry *)self type];
  if ((type - 1) < 2)
  {
    errorCopy2 = error;
    v19 = 21;
    goto LABEL_7;
  }

  if (type)
  {
    if (type != 3)
    {
LABEL_8:
      v17 = 0;
      goto LABEL_10;
    }

    record = [(KCSharingIncomingEntry *)self record];
    recordID = [record recordID];
    zoneID = [recordID zoneID];
    zoneName = [zoneID zoneName];
    v12 = [zoneName hasPrefix:@"group-"];

    if (v12)
    {
      record2 = [(KCSharingIncomingEntry *)self record];
      v14 = [groupsCopy recordIsFullyDecoded:record2];

      v15 = [KCSharingEntryContents alloc];
      record3 = [(KCSharingIncomingEntry *)self record];
      v17 = [(KCSharingEntryContents *)v15 initWithContents:record3 fullyDecoded:v14];

      goto LABEL_10;
    }

    errorCopy2 = error;
    v19 = 7;
LABEL_7:
    sub_100061E2C(errorCopy2, v19, 0);
    goto LABEL_8;
  }

  v17 = [[KCSharingEntryContents alloc] initWithContents:0 fullyDecoded:0];
LABEL_10:

  return v17;
}

- (id)remoteItemWithAccessGroups:(id)groups error:(id *)error
{
  groupsCopy = groups;
  v7 = 0;
  type = self->_type;
  if (type <= 1)
  {
    if (!type)
    {
      v7 = [[KCSharingEntryContents alloc] initWithContents:0 fullyDecoded:0];
      goto LABEL_25;
    }

    if (type != 1)
    {
      goto LABEL_25;
    }

    recordID = [(CKRecord *)self->_record recordID];
    zoneID = [recordID zoneID];
    v11 = sub_100031160(zoneID);

    if (v11)
    {
      v12 = [KCSharingPBRemoteItem alloc];
      encryptedValues = [(CKRecord *)self->_record encryptedValues];
      v14 = [encryptedValues objectForKeyedSubscript:@"payload"];
      v15 = [(KCSharingPBRemoteItem *)v12 initWithData:v14];

      if (v15)
      {
        v16 = [[KCSharingRemoteItem alloc] initPasskeyWithProto:v15 sharingGroup:v11 error:error];
LABEL_14:
        v22 = v16;
        if (v16)
        {
          record = [(KCSharingIncomingEntry *)self record];
          if ([groupsCopy recordIsFullyDecoded:record])
          {
            v24 = [groupsCopy remoteItemProtoIsFullyDecoded:v15];
          }

          else
          {
            v24 = 0;
          }

          v7 = [[KCSharingEntryContents alloc] initWithContents:v22 fullyDecoded:v24];
        }

        else
        {
          v7 = 0;
        }

        goto LABEL_23;
      }

      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (type == 2)
  {
    recordID2 = [(CKRecord *)self->_record recordID];
    zoneID2 = [recordID2 zoneID];
    v11 = sub_100031160(zoneID2);

    if (v11)
    {
      v19 = [KCSharingPBRemoteItem alloc];
      encryptedValues2 = [(CKRecord *)self->_record encryptedValues];
      v21 = [encryptedValues2 objectForKeyedSubscript:@"payload"];
      v15 = [(KCSharingPBRemoteItem *)v19 initWithData:v21];

      if (v15)
      {
        v16 = [[KCSharingRemoteItem alloc] initPasswordWithProto:v15 sharingGroup:v11 error:error];
        goto LABEL_14;
      }

LABEL_18:
      sub_100061E2C(error, 4, 0);
      v7 = 0;
LABEL_23:

      goto LABEL_24;
    }

LABEL_17:
    sub_100061E2C(error, 7, 0);
    v7 = 0;
LABEL_24:

    goto LABEL_25;
  }

  if (type == 3)
  {
    sub_100061E2C(error, 13, 0);
    v7 = 0;
  }

LABEL_25:

  return v7;
}

- (NSDate)modificationDate
{
  modificationDate = [(CKRecord *)self->_record modificationDate];
  v3 = modificationDate;
  if (modificationDate)
  {
    v4 = modificationDate;
  }

  else
  {
    v4 = +[NSDate date];
  }

  v5 = v4;

  return v5;
}

- (KCSharingIncomingEntry)initWithAttributes:(id)attributes error:(id *)error
{
  attributesCopy = attributes;
  v24.receiver = self;
  v24.super_class = KCSharingIncomingEntry;
  v7 = [(KCSharingIncomingEntry *)&v24 init];
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = [attributesCopy objectForKeyedSubscript:@"deln"];
  if (_NSIsNSNumber() && [v8 BOOLValue])
  {
    sub_100061E2C(error, 8, 0);
LABEL_15:

    v22 = 0;
    goto LABEL_16;
  }

  v9 = [KCSharingPBLocalEntryData alloc];
  v10 = [attributesCopy objectForKeyedSubscript:kSecValueData];
  v11 = [(KCSharingPBLocalEntryData *)v9 initWithData:v10];

  if (!v11)
  {
    sub_100061E2C(error, 3, 0);
    goto LABEL_14;
  }

  v12 = [attributesCopy objectForKeyedSubscript:@"type"];
  v7->_type = [v12 longLongValue];

  type = v7->_type;
  if (type < 3)
  {
    v14 = objc_opt_class();
    cloudKitRecord = [(KCSharingPBLocalEntryData *)v11 cloudKitRecord];
    v16 = [NSKeyedUnarchiver unarchivedObjectOfClass:v14 fromData:cloudKitRecord error:error];
    record = v7->_record;
    v7->_record = v16;

    goto LABEL_11;
  }

  if (type == 3)
  {
    v18 = [NSSet setWithObject:objc_opt_class()];
    cloudKitRecord2 = [(KCSharingPBLocalEntryData *)v11 cloudKitRecord];
    v20 = [NSKeyedUnarchiver _strictlyUnarchivedObjectOfClasses:v18 fromData:cloudKitRecord2 error:error];
    v21 = v7->_record;
    v7->_record = v20;

LABEL_11:
    if (v7->_record)
    {
      goto LABEL_12;
    }

LABEL_14:

    goto LABEL_15;
  }

LABEL_12:

LABEL_13:
  v22 = v7;
LABEL_16:

  return v22;
}

- (KCSharingIncomingEntry)initWithFetchedRecord:(id)record
{
  recordCopy = record;
  v15.receiver = self;
  v15.super_class = KCSharingIncomingEntry;
  v6 = [(KCSharingIncomingEntry *)&v15 init];
  if (v6)
  {
    recordType = [recordCopy recordType];
    v8 = [recordType isEqual:CKRecordTypeShare];

    if (v8)
    {
      v6->_type = 3;
LABEL_13:
      objc_storeStrong(&v6->_record, record);
      goto LABEL_14;
    }

    recordType2 = [recordCopy recordType];
    v10 = [recordType2 isEqual:@"item"];

    if (!v10)
    {
      v6->_type = 0;
      goto LABEL_13;
    }

    encryptedValues = [recordCopy encryptedValues];
    v12 = [encryptedValues objectForKeyedSubscript:@"type"];

    if ([v12 isEqual:&off_100363FB8])
    {
      v13 = 1;
    }

    else
    {
      if (![v12 isEqual:&off_100363FD0])
      {
        v6->_type = 0;
        goto LABEL_12;
      }

      v13 = 2;
    }

    v6->_type = v13;
LABEL_12:

    goto LABEL_13;
  }

LABEL_14:

  return v6;
}

@end