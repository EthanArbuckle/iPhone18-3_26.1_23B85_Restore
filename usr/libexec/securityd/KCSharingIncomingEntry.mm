@interface KCSharingIncomingEntry
- (KCSharingIncomingEntry)initWithAttributes:(id)a3 error:(id *)a4;
- (KCSharingIncomingEntry)initWithFetchedRecord:(id)a3;
- (NSDate)modificationDate;
- (id)attributesWithAccessGroups:(id)a3 error:(id *)a4;
- (id)remoteItemWithAccessGroups:(id)a3 error:(id *)a4;
- (id)shareWithAccessGroups:(id)a3 error:(id *)a4;
@end

@implementation KCSharingIncomingEntry

- (id)attributesWithAccessGroups:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [NSKeyedArchiver archivedDataWithRootObject:self->_record requiringSecureCoding:1 error:a4];
  if (v7)
  {
    v18 = objc_opt_new();
    [v18 setCloudKitRecord:v7];
    v25[0] = kSecAttrUUID;
    v24 = [(CKRecord *)self->_record recordID];
    v23 = [v24 recordName];
    v26[0] = v23;
    v25[1] = @"zone";
    v22 = [(KCSharingIncomingEntry *)self record];
    v21 = [v22 recordID];
    v20 = [v21 zoneID];
    v19 = [v20 zoneName];
    v26[1] = v19;
    v25[2] = @"ownr";
    v8 = [(KCSharingIncomingEntry *)self record];
    v9 = [v8 recordID];
    v10 = [v9 zoneID];
    v11 = [v10 ownerName];
    v26[2] = v11;
    v26[3] = kSecAttrAccessibleWhenUnlockedThisDeviceOnly;
    v25[3] = kSecAttrAccessible;
    v25[4] = @"type";
    v12 = [NSNumber numberWithLongLong:self->_type];
    v26[4] = v12;
    v25[5] = kSecAttrAccessGroup;
    v13 = [v6 entryAccessGroup];
    v26[5] = v13;
    v26[6] = &__kCFBooleanFalse;
    v25[6] = @"deln";
    v25[7] = kSecValueData;
    [v18 data];
    v15 = v14 = v6;
    v26[7] = v15;
    v16 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:8];

    v6 = v14;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)shareWithAccessGroups:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(KCSharingIncomingEntry *)self type];
  if ((v7 - 1) < 2)
  {
    v18 = a4;
    v19 = 21;
    goto LABEL_7;
  }

  if (v7)
  {
    if (v7 != 3)
    {
LABEL_8:
      v17 = 0;
      goto LABEL_10;
    }

    v8 = [(KCSharingIncomingEntry *)self record];
    v9 = [v8 recordID];
    v10 = [v9 zoneID];
    v11 = [v10 zoneName];
    v12 = [v11 hasPrefix:@"group-"];

    if (v12)
    {
      v13 = [(KCSharingIncomingEntry *)self record];
      v14 = [v6 recordIsFullyDecoded:v13];

      v15 = [KCSharingEntryContents alloc];
      v16 = [(KCSharingIncomingEntry *)self record];
      v17 = [(KCSharingEntryContents *)v15 initWithContents:v16 fullyDecoded:v14];

      goto LABEL_10;
    }

    v18 = a4;
    v19 = 7;
LABEL_7:
    sub_100061E2C(v18, v19, 0);
    goto LABEL_8;
  }

  v17 = [[KCSharingEntryContents alloc] initWithContents:0 fullyDecoded:0];
LABEL_10:

  return v17;
}

- (id)remoteItemWithAccessGroups:(id)a3 error:(id *)a4
{
  v6 = a3;
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

    v9 = [(CKRecord *)self->_record recordID];
    v10 = [v9 zoneID];
    v11 = sub_100031160(v10);

    if (v11)
    {
      v12 = [KCSharingPBRemoteItem alloc];
      v13 = [(CKRecord *)self->_record encryptedValues];
      v14 = [v13 objectForKeyedSubscript:@"payload"];
      v15 = [(KCSharingPBRemoteItem *)v12 initWithData:v14];

      if (v15)
      {
        v16 = [[KCSharingRemoteItem alloc] initPasskeyWithProto:v15 sharingGroup:v11 error:a4];
LABEL_14:
        v22 = v16;
        if (v16)
        {
          v23 = [(KCSharingIncomingEntry *)self record];
          if ([v6 recordIsFullyDecoded:v23])
          {
            v24 = [v6 remoteItemProtoIsFullyDecoded:v15];
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
    v17 = [(CKRecord *)self->_record recordID];
    v18 = [v17 zoneID];
    v11 = sub_100031160(v18);

    if (v11)
    {
      v19 = [KCSharingPBRemoteItem alloc];
      v20 = [(CKRecord *)self->_record encryptedValues];
      v21 = [v20 objectForKeyedSubscript:@"payload"];
      v15 = [(KCSharingPBRemoteItem *)v19 initWithData:v21];

      if (v15)
      {
        v16 = [[KCSharingRemoteItem alloc] initPasswordWithProto:v15 sharingGroup:v11 error:a4];
        goto LABEL_14;
      }

LABEL_18:
      sub_100061E2C(a4, 4, 0);
      v7 = 0;
LABEL_23:

      goto LABEL_24;
    }

LABEL_17:
    sub_100061E2C(a4, 7, 0);
    v7 = 0;
LABEL_24:

    goto LABEL_25;
  }

  if (type == 3)
  {
    sub_100061E2C(a4, 13, 0);
    v7 = 0;
  }

LABEL_25:

  return v7;
}

- (NSDate)modificationDate
{
  v2 = [(CKRecord *)self->_record modificationDate];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[NSDate date];
  }

  v5 = v4;

  return v5;
}

- (KCSharingIncomingEntry)initWithAttributes:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24.receiver = self;
  v24.super_class = KCSharingIncomingEntry;
  v7 = [(KCSharingIncomingEntry *)&v24 init];
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = [v6 objectForKeyedSubscript:@"deln"];
  if (_NSIsNSNumber() && [v8 BOOLValue])
  {
    sub_100061E2C(a4, 8, 0);
LABEL_15:

    v22 = 0;
    goto LABEL_16;
  }

  v9 = [KCSharingPBLocalEntryData alloc];
  v10 = [v6 objectForKeyedSubscript:kSecValueData];
  v11 = [(KCSharingPBLocalEntryData *)v9 initWithData:v10];

  if (!v11)
  {
    sub_100061E2C(a4, 3, 0);
    goto LABEL_14;
  }

  v12 = [v6 objectForKeyedSubscript:@"type"];
  v7->_type = [v12 longLongValue];

  type = v7->_type;
  if (type < 3)
  {
    v14 = objc_opt_class();
    v15 = [(KCSharingPBLocalEntryData *)v11 cloudKitRecord];
    v16 = [NSKeyedUnarchiver unarchivedObjectOfClass:v14 fromData:v15 error:a4];
    record = v7->_record;
    v7->_record = v16;

    goto LABEL_11;
  }

  if (type == 3)
  {
    v18 = [NSSet setWithObject:objc_opt_class()];
    v19 = [(KCSharingPBLocalEntryData *)v11 cloudKitRecord];
    v20 = [NSKeyedUnarchiver _strictlyUnarchivedObjectOfClasses:v18 fromData:v19 error:a4];
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

- (KCSharingIncomingEntry)initWithFetchedRecord:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = KCSharingIncomingEntry;
  v6 = [(KCSharingIncomingEntry *)&v15 init];
  if (v6)
  {
    v7 = [v5 recordType];
    v8 = [v7 isEqual:CKRecordTypeShare];

    if (v8)
    {
      v6->_type = 3;
LABEL_13:
      objc_storeStrong(&v6->_record, a3);
      goto LABEL_14;
    }

    v9 = [v5 recordType];
    v10 = [v9 isEqual:@"item"];

    if (!v10)
    {
      v6->_type = 0;
      goto LABEL_13;
    }

    v11 = [v5 encryptedValues];
    v12 = [v11 objectForKeyedSubscript:@"type"];

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