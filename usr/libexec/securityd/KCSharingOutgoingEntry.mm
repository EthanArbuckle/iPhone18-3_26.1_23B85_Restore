@interface KCSharingOutgoingEntry
- (KCSharingLocalFingerprint)internetPasswordFingerprint;
- (KCSharingLocalFingerprint)privateKeyFingerprint;
- (KCSharingOutgoingEntry)initWithAttributes:(id)attributes error:(id *)error;
- (KCSharingOutgoingEntry)initWithNewLocalItem:(id)item zoneID:(id)d;
- (KCSharingOutgoingEntry)initWithShare:(id)share;
- (KCSharingOutgoingEntry)initWithUpdatedLocalItem:(id)item forMirrorEntry:(id)entry error:(id *)error;
- (id)attributesWithAccessGroups:(id)groups error:(id *)error;
- (id)remoteItemWithAccessGroups:(id)groups error:(id *)error;
- (id)shareWithAccessGroups:(id)groups error:(id *)error;
@end

@implementation KCSharingOutgoingEntry

- (id)attributesWithAccessGroups:(id)groups error:(id *)error
{
  groupsCopy = groups;
  v7 = [NSKeyedArchiver archivedDataWithRootObject:self->_record requiringSecureCoding:1 error:error];
  if (!v7)
  {
    v23 = 0;
    goto LABEL_9;
  }

  v8 = objc_opt_new();
  v36 = v7;
  [v8 setCloudKitRecord:v7];
  v38[0] = kSecAttrUUID;
  record = [(KCSharingOutgoingEntry *)self record];
  recordID = [record recordID];
  recordName = [recordID recordName];
  v39[0] = recordName;
  v38[1] = @"zone";
  record2 = [(KCSharingOutgoingEntry *)self record];
  recordID2 = [record2 recordID];
  zoneID = [recordID2 zoneID];
  zoneName = [zoneID zoneName];
  v39[1] = zoneName;
  v38[2] = @"ownr";
  record3 = [(KCSharingOutgoingEntry *)self record];
  recordID3 = [record3 recordID];
  zoneID2 = [recordID3 zoneID];
  ownerName = [zoneID2 ownerName];
  v39[2] = ownerName;
  v39[3] = kSecAttrAccessibleWhenUnlockedThisDeviceOnly;
  v38[3] = kSecAttrAccessible;
  v38[4] = @"type";
  v13 = [NSNumber numberWithLongLong:self->_type];
  v39[4] = v13;
  v38[5] = kSecAttrAccessGroup;
  v37 = groupsCopy;
  entryAccessGroup = [groupsCopy entryAccessGroup];
  v39[5] = entryAccessGroup;
  v38[6] = kSecValueData;
  v35 = v8;
  data = [v8 data];
  modificationDate = self->_modificationDate;
  v39[6] = data;
  v39[7] = modificationDate;
  v38[7] = kSecAttrModificationDate;
  v38[8] = @"deln";
  v39[8] = &__kCFBooleanFalse;
  v17 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:9];
  v18 = [v17 mutableCopy];

  type = self->_type;
  if (type == 1)
  {
    v20 = &off_100334C78;
    v21 = &off_100334C70;
    v22 = &OBJC_IVAR___KCSharingOutgoingEntry__privateKeyFingerprint;
    goto LABEL_7;
  }

  if (type == 2)
  {
    v20 = &off_100334C88;
    v21 = &off_100334C80;
    v22 = &OBJC_IVAR___KCSharingOutgoingEntry__internetPasswordFingerprint;
LABEL_7:
    v24 = *v22;
    keyprint = [*(&self->super.super.isa + v24) keyprint];
    [v18 setObject:keyprint forKeyedSubscript:*v21];

    valueprint = [*(&self->super.super.isa + v24) valueprint];
    [v18 setObject:valueprint forKeyedSubscript:*v20];
  }

  v23 = [v18 copy];

  v7 = v36;
  groupsCopy = v37;
LABEL_9:

  return v23;
}

- (id)shareWithAccessGroups:(id)groups error:(id *)error
{
  groupsCopy = groups;
  type = [(KCSharingOutgoingEntry *)self type];
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

    record = [(KCSharingOutgoingEntry *)self record];
    recordID = [record recordID];
    zoneID = [recordID zoneID];
    zoneName = [zoneID zoneName];
    v12 = [zoneName hasPrefix:@"group-"];

    if (v12)
    {
      record2 = [(KCSharingOutgoingEntry *)self record];
      v14 = [groupsCopy recordIsFullyDecoded:record2];

      v15 = [KCSharingEntryContents alloc];
      record3 = [(KCSharingOutgoingEntry *)self record];
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
          record = [(KCSharingOutgoingEntry *)self record];
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

- (KCSharingLocalFingerprint)internetPasswordFingerprint
{
  if (self->_type != 2)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"KCSharingOutgoingEntry.m" lineNumber:154 description:{@"Can't get Internet password fingerprint for outgoing queue entry of type %ld", self->_type}];
  }

  internetPasswordFingerprint = self->_internetPasswordFingerprint;

  return internetPasswordFingerprint;
}

- (KCSharingLocalFingerprint)privateKeyFingerprint
{
  if (self->_type != 1)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"KCSharingOutgoingEntry.m" lineNumber:149 description:{@"Can't get private key fingerprint for outgoing queue entry of type %ld", self->_type}];
  }

  privateKeyFingerprint = self->_privateKeyFingerprint;

  return privateKeyFingerprint;
}

- (KCSharingOutgoingEntry)initWithAttributes:(id)attributes error:(id *)error
{
  attributesCopy = attributes;
  v43.receiver = self;
  v43.super_class = KCSharingOutgoingEntry;
  v7 = [(KCSharingOutgoingEntry *)&v43 init];
  if (!v7)
  {
    goto LABEL_24;
  }

  v8 = [attributesCopy objectForKeyedSubscript:@"deln"];
  if (!_NSIsNSNumber() || ![v8 BOOLValue])
  {
    v9 = [KCSharingPBLocalEntryData alloc];
    v10 = [attributesCopy objectForKeyedSubscript:kSecValueData];
    v11 = [(KCSharingPBLocalEntryData *)v9 initWithData:v10];

    if (!v11)
    {
      sub_100061E2C(error, 3, 0);
      goto LABEL_12;
    }

    v12 = [attributesCopy objectForKeyedSubscript:@"type"];
    v7->_type = [v12 longLongValue];

    v13 = [attributesCopy objectForKeyedSubscript:kSecAttrModificationDate];
    modificationDate = v7->_modificationDate;
    v7->_modificationDate = v13;

    type = v7->_type;
    if (type > 1)
    {
      if (type == 2)
      {
        v32 = objc_opt_class();
        cloudKitRecord = [(KCSharingPBLocalEntryData *)v11 cloudKitRecord];
        v34 = [NSKeyedUnarchiver unarchivedObjectOfClass:v32 fromData:cloudKitRecord error:error];
        record = v7->_record;
        v7->_record = v34;

        if (v7->_record)
        {
          v20 = &OBJC_IVAR___KCSharingOutgoingEntry__internetPasswordFingerprint;
          v21 = &off_100334C88;
          v22 = &off_100334C80;
          goto LABEL_22;
        }

LABEL_12:

        goto LABEL_13;
      }

      if (type != 3)
      {
LABEL_23:

LABEL_24:
        v23 = v7;
        goto LABEL_25;
      }

      v24 = [NSSet setWithObject:objc_opt_class()];
      cloudKitRecord2 = [(KCSharingPBLocalEntryData *)v11 cloudKitRecord];
      v26 = [NSKeyedUnarchiver _strictlyUnarchivedObjectOfClasses:v24 fromData:cloudKitRecord2 error:error];
      v27 = v7->_record;
      v7->_record = v26;
    }

    else
    {
      if (type)
      {
        if (type == 1)
        {
          v16 = objc_opt_class();
          cloudKitRecord3 = [(KCSharingPBLocalEntryData *)v11 cloudKitRecord];
          v18 = [NSKeyedUnarchiver unarchivedObjectOfClass:v16 fromData:cloudKitRecord3 error:error];
          v19 = v7->_record;
          v7->_record = v18;

          if (v7->_record)
          {
            v20 = &OBJC_IVAR___KCSharingOutgoingEntry__privateKeyFingerprint;
            v21 = &off_100334C78;
            v22 = &off_100334C70;
LABEL_22:
            v36 = [KCSharingLocalFingerprint alloc];
            v37 = [attributesCopy objectForKeyedSubscript:*v22];
            v38 = [attributesCopy objectForKeyedSubscript:*v21];
            v39 = [(KCSharingLocalFingerprint *)v36 initWithKeyprint:v37 valueprint:v38];
            v40 = *v20;
            v41 = *(&v7->super.super.isa + v40);
            *(&v7->super.super.isa + v40) = v39;

            goto LABEL_23;
          }

          goto LABEL_12;
        }

        goto LABEL_23;
      }

      v28 = objc_opt_class();
      cloudKitRecord4 = [(KCSharingPBLocalEntryData *)v11 cloudKitRecord];
      v30 = [NSKeyedUnarchiver unarchivedObjectOfClass:v28 fromData:cloudKitRecord4 error:error];
      v31 = v7->_record;
      v7->_record = v30;
    }

    if (!v7->_record)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

  sub_100061E2C(error, 8, 0);
LABEL_13:

  v23 = 0;
LABEL_25:

  return v23;
}

- (KCSharingOutgoingEntry)initWithShare:(id)share
{
  shareCopy = share;
  v11.receiver = self;
  v11.super_class = KCSharingOutgoingEntry;
  v6 = [(KCSharingOutgoingEntry *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_record, share);
    modificationDate = [shareCopy modificationDate];
    v9 = modificationDate;
    if (!modificationDate)
    {
      v9 = +[NSDate date];
    }

    objc_storeStrong(&v7->_modificationDate, v9);
    if (!modificationDate)
    {
    }

    v7->_type = 3;
  }

  return v7;
}

- (KCSharingOutgoingEntry)initWithUpdatedLocalItem:(id)item forMirrorEntry:(id)entry error:(id *)error
{
  itemCopy = item;
  entryCopy = entry;
  v31.receiver = self;
  v31.super_class = KCSharingOutgoingEntry;
  v10 = [(KCSharingOutgoingEntry *)&v31 init];
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = [[KCSharingRemoteItem alloc] initWithLocalItem:itemCopy];
  record = [entryCopy record];
  v13 = [record copy];
  record = v10->_record;
  v10->_record = v13;

  v15 = [KCSharingPBRemoteItem alloc];
  encryptedValues = [(CKRecord *)v10->_record encryptedValues];
  v17 = [encryptedValues objectForKeyedSubscript:@"payload"];
  v18 = [(KCSharingPBRemoteItem *)v15 initWithData:v17];

  if (v18)
  {
    proto = [(KCSharingRemoteItem *)v11 proto];
    [(KCSharingPBRemoteItem *)v18 mergeFrom:proto];
    data = [(KCSharingPBRemoteItem *)v18 data];
    encryptedValues2 = [(CKRecord *)v10->_record encryptedValues];
    [encryptedValues2 setObject:data forKeyedSubscript:@"payload"];

    modificationDate = [itemCopy modificationDate];
    modificationDate = v10->_modificationDate;
    v10->_modificationDate = modificationDate;

    type = [itemCopy type];
    if (type == 2)
    {
      v10->_type = 2;
      internetPasswordFingerprint = [itemCopy internetPasswordFingerprint];
      v26 = &OBJC_IVAR___KCSharingOutgoingEntry__internetPasswordFingerprint;
    }

    else
    {
      if (type != 1)
      {
LABEL_9:

LABEL_10:
        v27 = v10;
        goto LABEL_11;
      }

      v10->_type = 1;
      internetPasswordFingerprint = [itemCopy privateKeyFingerprint];
      v26 = &OBJC_IVAR___KCSharingOutgoingEntry__privateKeyFingerprint;
    }

    v28 = *v26;
    v29 = *(&v10->super.super.isa + v28);
    *(&v10->super.super.isa + v28) = internetPasswordFingerprint;

    goto LABEL_9;
  }

  sub_100061E2C(error, 4, 0);

  v27 = 0;
LABEL_11:

  return v27;
}

- (KCSharingOutgoingEntry)initWithNewLocalItem:(id)item zoneID:(id)d
{
  itemCopy = item;
  dCopy = d;
  v30.receiver = self;
  v30.super_class = KCSharingOutgoingEntry;
  v8 = [(KCSharingOutgoingEntry *)&v30 init];
  if (v8)
  {
    v9 = [[KCSharingRemoteItem alloc] initWithLocalItem:itemCopy];
    v10 = +[NSUUID UUID];
    uUIDString = [v10 UUIDString];
    v12 = [NSString stringWithFormat:@"%@-%@", @"item", uUIDString];

    v13 = [CKRecord alloc];
    v14 = [[CKRecordID alloc] initWithRecordName:v12 zoneID:dCopy];
    v15 = [v13 initWithRecordType:@"item" recordID:v14];
    record = v8->_record;
    v8->_record = v15;

    proto = [(KCSharingRemoteItem *)v9 proto];
    data = [proto data];
    encryptedValues = [(CKRecord *)v8->_record encryptedValues];
    [encryptedValues setObject:data forKeyedSubscript:@"payload"];

    modificationDate = [itemCopy modificationDate];
    modificationDate = v8->_modificationDate;
    v8->_modificationDate = modificationDate;

    type = [itemCopy type];
    if (type == 2)
    {
      v8->_type = 2;
      encryptedValues2 = [(CKRecord *)v8->_record encryptedValues];
      [encryptedValues2 setObject:&off_100364000 forKeyedSubscript:@"type"];

      internetPasswordFingerprint = [itemCopy internetPasswordFingerprint];
      v25 = &OBJC_IVAR___KCSharingOutgoingEntry__internetPasswordFingerprint;
    }

    else
    {
      if (type != 1)
      {
LABEL_7:

        goto LABEL_8;
      }

      v8->_type = 1;
      encryptedValues3 = [(CKRecord *)v8->_record encryptedValues];
      [encryptedValues3 setObject:&off_100363FE8 forKeyedSubscript:@"type"];

      internetPasswordFingerprint = [itemCopy privateKeyFingerprint];
      v25 = &OBJC_IVAR___KCSharingOutgoingEntry__privateKeyFingerprint;
    }

    v27 = *v25;
    v28 = *(&v8->super.super.isa + v27);
    *(&v8->super.super.isa + v27) = internetPasswordFingerprint;

    goto LABEL_7;
  }

LABEL_8:

  return v8;
}

@end