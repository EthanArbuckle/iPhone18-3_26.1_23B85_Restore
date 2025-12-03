@interface KCSharingMirrorEntry
+ (NSSet)requiredAttributeKeys;
- (KCSharingLocalFingerprint)internetPasswordFingerprint;
- (KCSharingLocalFingerprint)privateKeyFingerprint;
- (KCSharingMirrorEntry)initWithAttributes:(id)attributes error:(id *)error;
- (KCSharingMirrorEntry)initWithIncomingEntry:(id)entry flags:(unsigned int)flags;
- (KCSharingMirrorEntry)initWithMirrorDatabaseItem:(SecDbItem *)item error:(id *)error;
- (KCSharingMirrorEntry)initWithMirrorEntry:(id)entry flags:(unsigned int)flags;
- (KCSharingMirrorEntry)initWithSavedRecord:(id)record forOutgoingEntry:(id)entry flags:(unsigned int)flags;
- (KCSharingMirrorEntry)initWithUpdatedLocalItem:(id)item forIncomingEntry:(id)entry flags:(unsigned int)flags;
- (KCSharingMirrorEntry)initWithUpdatedLocalItem:(id)item forMirrorEntry:(id)entry flags:(unsigned int)flags;
- (NSString)description;
- (id)attributesWithAccessGroups:(id)groups error:(id *)error;
- (id)remoteItemWithAccessGroups:(id)groups error:(id *)error;
- (id)shareWithAccessGroups:(id)groups error:(id *)error;
@end

@implementation KCSharingMirrorEntry

- (id)attributesWithAccessGroups:(id)groups error:(id *)error
{
  groupsCopy = groups;
  v7 = [NSKeyedArchiver archivedDataWithRootObject:self->_record requiringSecureCoding:1 error:error];
  if (!v7)
  {
    v22 = 0;
    goto LABEL_9;
  }

  v8 = objc_opt_new();
  v35 = v7;
  [v8 setCloudKitRecord:v7];
  v37[0] = kSecAttrUUID;
  recordID = [(CKRecord *)self->_record recordID];
  recordName = [recordID recordName];
  v38[0] = recordName;
  v37[1] = @"zone";
  record = [(KCSharingMirrorEntry *)self record];
  recordID2 = [record recordID];
  zoneID = [recordID2 zoneID];
  zoneName = [zoneID zoneName];
  v38[1] = zoneName;
  v37[2] = @"ownr";
  record2 = [(KCSharingMirrorEntry *)self record];
  recordID3 = [record2 recordID];
  zoneID2 = [recordID3 zoneID];
  ownerName = [zoneID2 ownerName];
  v38[2] = ownerName;
  v38[3] = kSecAttrAccessibleWhenUnlockedThisDeviceOnly;
  v37[3] = kSecAttrAccessible;
  v37[4] = @"type";
  v11 = [NSNumber numberWithLongLong:self->_type];
  v38[4] = v11;
  v37[5] = kSecAttrAccessGroup;
  entryAccessGroup = [groupsCopy entryAccessGroup];
  v38[5] = entryAccessGroup;
  v37[6] = kSecValueData;
  v34 = v8;
  data = [v8 data];
  v38[6] = data;
  v37[7] = @"flag";
  v14 = [NSNumber numberWithUnsignedInt:self->_flags];
  v38[7] = v14;
  v37[8] = @"lwsv";
  v36 = groupsCopy;
  v15 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [groupsCopy entrySchemaVersion]);
  v38[8] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:9];
  v17 = [v16 mutableCopy];

  type = self->_type;
  if (type == 1)
  {
    v19 = &off_100334C78;
    v20 = 32;
    v21 = &off_100334C70;
    goto LABEL_7;
  }

  if (type == 2)
  {
    v19 = &off_100334C88;
    v20 = 40;
    v21 = &off_100334C80;
LABEL_7:
    keyprint = [*(&self->super.isa + v20) keyprint];
    [v17 setObject:keyprint forKeyedSubscript:*v21];

    valueprint = [*(&self->super.isa + v20) valueprint];
    [v17 setObject:valueprint forKeyedSubscript:*v19];
  }

  v22 = [v17 copy];

  v7 = v35;
  groupsCopy = v36;
LABEL_9:

  return v22;
}

- (id)shareWithAccessGroups:(id)groups error:(id *)error
{
  groupsCopy = groups;
  type = [(KCSharingMirrorEntry *)self type];
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

    record = [(KCSharingMirrorEntry *)self record];
    recordID = [record recordID];
    zoneID = [recordID zoneID];
    zoneName = [zoneID zoneName];
    v12 = [zoneName hasPrefix:@"group-"];

    if (v12)
    {
      record2 = [(KCSharingMirrorEntry *)self record];
      v14 = [groupsCopy recordIsFullyDecoded:record2];

      v15 = [KCSharingEntryContents alloc];
      record3 = [(KCSharingMirrorEntry *)self record];
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
          record = [(KCSharingMirrorEntry *)self record];
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
    [v6 handleFailureInMethod:a2 object:self file:@"KCSharingMirrorEntry.m" lineNumber:204 description:{@"Can't get Internet password fingerprint for mirror entry of type %ld", self->_type}];
  }

  internetPasswordFingerprint = self->_internetPasswordFingerprint;

  return internetPasswordFingerprint;
}

- (KCSharingLocalFingerprint)privateKeyFingerprint
{
  if (self->_type != 1)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"KCSharingMirrorEntry.m" lineNumber:199 description:{@"Can't get private key fingerprint for mirror entry of type %ld", self->_type}];
  }

  privateKeyFingerprint = self->_privateKeyFingerprint;

  return privateKeyFingerprint;
}

- (NSString)description
{
  type = self->_type;
  recordID = [(CKRecord *)self->_record recordID];
  v4 = [NSString stringWithFormat:@"KCSharingMirrorEntry(type:%lld recordID:%@)", type, recordID];

  return v4;
}

- (KCSharingMirrorEntry)initWithAttributes:(id)attributes error:(id *)error
{
  attributesCopy = attributes;
  v40.receiver = self;
  v40.super_class = KCSharingMirrorEntry;
  v7 = [(KCSharingMirrorEntry *)&v40 init];
  if (!v7)
  {
    goto LABEL_20;
  }

  v8 = [KCSharingPBLocalEntryData alloc];
  v9 = [attributesCopy objectForKeyedSubscript:kSecValueData];
  v10 = [(KCSharingPBLocalEntryData *)v8 initWithData:v9];

  if (!v10)
  {
    sub_100061E2C(error, 3, 0);
    goto LABEL_9;
  }

  v11 = [attributesCopy objectForKeyedSubscript:@"type"];
  v7->_type = [v11 longLongValue];

  v12 = [attributesCopy objectForKeyedSubscript:@"flag"];
  v7->_flags = [v12 unsignedIntValue];

  type = v7->_type;
  if (type <= 1)
  {
    if (type)
    {
      if (type == 1)
      {
        v14 = objc_opt_class();
        cloudKitRecord = [(KCSharingPBLocalEntryData *)v10 cloudKitRecord];
        v16 = [NSKeyedUnarchiver unarchivedObjectOfClass:v14 fromData:cloudKitRecord error:error];
        record = v7->_record;
        v7->_record = v16;

        if (v7->_record)
        {
          v18 = &off_100334C78;
          v19 = 32;
          v20 = &off_100334C70;
LABEL_18:
          v34 = [KCSharingLocalFingerprint alloc];
          v35 = [attributesCopy objectForKeyedSubscript:*v20];
          v36 = [attributesCopy objectForKeyedSubscript:*v18];
          v37 = [(KCSharingLocalFingerprint *)v34 initWithKeyprint:v35 valueprint:v36];
          v38 = *(&v7->super.isa + v19);
          *(&v7->super.isa + v19) = v37;

          goto LABEL_19;
        }

        goto LABEL_9;
      }

LABEL_19:

LABEL_20:
      v21 = v7;
      goto LABEL_21;
    }

    v26 = objc_opt_class();
    cloudKitRecord2 = [(KCSharingPBLocalEntryData *)v10 cloudKitRecord];
    v28 = [NSKeyedUnarchiver unarchivedObjectOfClass:v26 fromData:cloudKitRecord2 error:error];
    v29 = v7->_record;
    v7->_record = v28;

LABEL_14:
    if (!v7->_record)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

  if (type != 2)
  {
    if (type != 3)
    {
      goto LABEL_19;
    }

    v22 = [NSSet setWithObject:objc_opt_class()];
    cloudKitRecord3 = [(KCSharingPBLocalEntryData *)v10 cloudKitRecord];
    v24 = [NSKeyedUnarchiver _strictlyUnarchivedObjectOfClasses:v22 fromData:cloudKitRecord3 error:error];
    v25 = v7->_record;
    v7->_record = v24;

    goto LABEL_14;
  }

  v30 = objc_opt_class();
  cloudKitRecord4 = [(KCSharingPBLocalEntryData *)v10 cloudKitRecord];
  v32 = [NSKeyedUnarchiver unarchivedObjectOfClass:v30 fromData:cloudKitRecord4 error:error];
  v33 = v7->_record;
  v7->_record = v32;

  if (v7->_record)
  {
    v18 = &off_100334C88;
    v19 = 40;
    v20 = &off_100334C80;
    goto LABEL_18;
  }

LABEL_9:

  v21 = 0;
LABEL_21:

  return v21;
}

- (KCSharingMirrorEntry)initWithMirrorDatabaseItem:(SecDbItem *)item error:(id *)error
{
  requiredAttributeKeys = [objc_opt_class() requiredAttributeKeys];
  v8 = sub_100017964(item, requiredAttributeKeys, error);

  if (v8)
  {
    self = [(KCSharingMirrorEntry *)self initWithAttributes:v8 error:error];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v10 = selfCopy;

  return v10;
}

- (KCSharingMirrorEntry)initWithUpdatedLocalItem:(id)item forMirrorEntry:(id)entry flags:(unsigned int)flags
{
  itemCopy = item;
  entryCopy = entry;
  v18.receiver = self;
  v18.super_class = KCSharingMirrorEntry;
  v10 = [(KCSharingMirrorEntry *)&v18 init];
  if (v10)
  {
    v10->_type = [entryCopy type];
    record = [entryCopy record];
    record = v10->_record;
    v10->_record = record;

    v10->_flags = flags;
    type = [itemCopy type];
    if (type == 2)
    {
      internetPasswordFingerprint = [itemCopy internetPasswordFingerprint];
      v15 = 40;
      goto LABEL_6;
    }

    if (type == 1)
    {
      internetPasswordFingerprint = [itemCopy privateKeyFingerprint];
      v15 = 32;
LABEL_6:
      v16 = *(&v10->super.isa + v15);
      *(&v10->super.isa + v15) = internetPasswordFingerprint;
    }
  }

  return v10;
}

- (KCSharingMirrorEntry)initWithSavedRecord:(id)record forOutgoingEntry:(id)entry flags:(unsigned int)flags
{
  recordCopy = record;
  entryCopy = entry;
  v17.receiver = self;
  v17.super_class = KCSharingMirrorEntry;
  v11 = [(KCSharingMirrorEntry *)&v17 init];
  if (v11)
  {
    v11->_type = [entryCopy type];
    objc_storeStrong(&v11->_record, record);
    v11->_flags = flags;
    type = [entryCopy type];
    if (type == 2)
    {
      internetPasswordFingerprint = [entryCopy internetPasswordFingerprint];
      v14 = 40;
      goto LABEL_6;
    }

    if (type == 1)
    {
      internetPasswordFingerprint = [entryCopy privateKeyFingerprint];
      v14 = 32;
LABEL_6:
      v15 = *(&v11->super.isa + v14);
      *(&v11->super.isa + v14) = internetPasswordFingerprint;
    }
  }

  return v11;
}

- (KCSharingMirrorEntry)initWithMirrorEntry:(id)entry flags:(unsigned int)flags
{
  entryCopy = entry;
  v15.receiver = self;
  v15.super_class = KCSharingMirrorEntry;
  v7 = [(KCSharingMirrorEntry *)&v15 init];
  if (v7)
  {
    v7->_type = [entryCopy type];
    record = [entryCopy record];
    record = v7->_record;
    v7->_record = record;

    v7->_flags = flags;
    type = [entryCopy type];
    if (type == 2)
    {
      internetPasswordFingerprint = [entryCopy internetPasswordFingerprint];
      v12 = 40;
      goto LABEL_6;
    }

    if (type == 1)
    {
      internetPasswordFingerprint = [entryCopy privateKeyFingerprint];
      v12 = 32;
LABEL_6:
      v13 = *(&v7->super.isa + v12);
      *(&v7->super.isa + v12) = internetPasswordFingerprint;
    }
  }

  return v7;
}

- (KCSharingMirrorEntry)initWithIncomingEntry:(id)entry flags:(unsigned int)flags
{
  entryCopy = entry;
  v11.receiver = self;
  v11.super_class = KCSharingMirrorEntry;
  v7 = [(KCSharingMirrorEntry *)&v11 init];
  if (v7)
  {
    v7->_type = [entryCopy type];
    record = [entryCopy record];
    record = v7->_record;
    v7->_record = record;

    v7->_flags = flags;
  }

  return v7;
}

- (KCSharingMirrorEntry)initWithUpdatedLocalItem:(id)item forIncomingEntry:(id)entry flags:(unsigned int)flags
{
  itemCopy = item;
  entryCopy = entry;
  v18.receiver = self;
  v18.super_class = KCSharingMirrorEntry;
  v10 = [(KCSharingMirrorEntry *)&v18 init];
  if (v10)
  {
    v10->_type = [entryCopy type];
    record = [entryCopy record];
    record = v10->_record;
    v10->_record = record;

    v10->_flags = flags;
    type = [itemCopy type];
    if (type == 2)
    {
      internetPasswordFingerprint = [itemCopy internetPasswordFingerprint];
      v15 = 40;
      goto LABEL_6;
    }

    if (type == 1)
    {
      internetPasswordFingerprint = [itemCopy privateKeyFingerprint];
      v15 = 32;
LABEL_6:
      v16 = *(&v10->super.isa + v15);
      *(&v10->super.isa + v15) = internetPasswordFingerprint;
    }
  }

  return v10;
}

+ (NSSet)requiredAttributeKeys
{
  if (qword_10039DBC8 != -1)
  {
    dispatch_once(&qword_10039DBC8, &stru_100334B08);
  }

  v3 = qword_10039DBC0;

  return v3;
}

@end