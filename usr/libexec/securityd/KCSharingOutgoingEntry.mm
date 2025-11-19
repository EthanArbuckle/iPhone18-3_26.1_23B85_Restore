@interface KCSharingOutgoingEntry
- (KCSharingLocalFingerprint)internetPasswordFingerprint;
- (KCSharingLocalFingerprint)privateKeyFingerprint;
- (KCSharingOutgoingEntry)initWithAttributes:(id)a3 error:(id *)a4;
- (KCSharingOutgoingEntry)initWithNewLocalItem:(id)a3 zoneID:(id)a4;
- (KCSharingOutgoingEntry)initWithShare:(id)a3;
- (KCSharingOutgoingEntry)initWithUpdatedLocalItem:(id)a3 forMirrorEntry:(id)a4 error:(id *)a5;
- (id)attributesWithAccessGroups:(id)a3 error:(id *)a4;
- (id)remoteItemWithAccessGroups:(id)a3 error:(id *)a4;
- (id)shareWithAccessGroups:(id)a3 error:(id *)a4;
@end

@implementation KCSharingOutgoingEntry

- (id)attributesWithAccessGroups:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [NSKeyedArchiver archivedDataWithRootObject:self->_record requiringSecureCoding:1 error:a4];
  if (!v7)
  {
    v23 = 0;
    goto LABEL_9;
  }

  v8 = objc_opt_new();
  v36 = v7;
  [v8 setCloudKitRecord:v7];
  v38[0] = kSecAttrUUID;
  v34 = [(KCSharingOutgoingEntry *)self record];
  v33 = [v34 recordID];
  v32 = [v33 recordName];
  v39[0] = v32;
  v38[1] = @"zone";
  v31 = [(KCSharingOutgoingEntry *)self record];
  v30 = [v31 recordID];
  v29 = [v30 zoneID];
  v28 = [v29 zoneName];
  v39[1] = v28;
  v38[2] = @"ownr";
  v9 = [(KCSharingOutgoingEntry *)self record];
  v10 = [v9 recordID];
  v11 = [v10 zoneID];
  v12 = [v11 ownerName];
  v39[2] = v12;
  v39[3] = kSecAttrAccessibleWhenUnlockedThisDeviceOnly;
  v38[3] = kSecAttrAccessible;
  v38[4] = @"type";
  v13 = [NSNumber numberWithLongLong:self->_type];
  v39[4] = v13;
  v38[5] = kSecAttrAccessGroup;
  v37 = v6;
  v14 = [v6 entryAccessGroup];
  v39[5] = v14;
  v38[6] = kSecValueData;
  v35 = v8;
  v15 = [v8 data];
  modificationDate = self->_modificationDate;
  v39[6] = v15;
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
    v25 = [*(&self->super.super.isa + v24) keyprint];
    [v18 setObject:v25 forKeyedSubscript:*v21];

    v26 = [*(&self->super.super.isa + v24) valueprint];
    [v18 setObject:v26 forKeyedSubscript:*v20];
  }

  v23 = [v18 copy];

  v7 = v36;
  v6 = v37;
LABEL_9:

  return v23;
}

- (id)shareWithAccessGroups:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(KCSharingOutgoingEntry *)self type];
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

    v8 = [(KCSharingOutgoingEntry *)self record];
    v9 = [v8 recordID];
    v10 = [v9 zoneID];
    v11 = [v10 zoneName];
    v12 = [v11 hasPrefix:@"group-"];

    if (v12)
    {
      v13 = [(KCSharingOutgoingEntry *)self record];
      v14 = [v6 recordIsFullyDecoded:v13];

      v15 = [KCSharingEntryContents alloc];
      v16 = [(KCSharingOutgoingEntry *)self record];
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
          v23 = [(KCSharingOutgoingEntry *)self record];
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

- (KCSharingOutgoingEntry)initWithAttributes:(id)a3 error:(id *)a4
{
  v6 = a3;
  v43.receiver = self;
  v43.super_class = KCSharingOutgoingEntry;
  v7 = [(KCSharingOutgoingEntry *)&v43 init];
  if (!v7)
  {
    goto LABEL_24;
  }

  v8 = [v6 objectForKeyedSubscript:@"deln"];
  if (!_NSIsNSNumber() || ![v8 BOOLValue])
  {
    v9 = [KCSharingPBLocalEntryData alloc];
    v10 = [v6 objectForKeyedSubscript:kSecValueData];
    v11 = [(KCSharingPBLocalEntryData *)v9 initWithData:v10];

    if (!v11)
    {
      sub_100061E2C(a4, 3, 0);
      goto LABEL_12;
    }

    v12 = [v6 objectForKeyedSubscript:@"type"];
    v7->_type = [v12 longLongValue];

    v13 = [v6 objectForKeyedSubscript:kSecAttrModificationDate];
    modificationDate = v7->_modificationDate;
    v7->_modificationDate = v13;

    type = v7->_type;
    if (type > 1)
    {
      if (type == 2)
      {
        v32 = objc_opt_class();
        v33 = [(KCSharingPBLocalEntryData *)v11 cloudKitRecord];
        v34 = [NSKeyedUnarchiver unarchivedObjectOfClass:v32 fromData:v33 error:a4];
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
      v25 = [(KCSharingPBLocalEntryData *)v11 cloudKitRecord];
      v26 = [NSKeyedUnarchiver _strictlyUnarchivedObjectOfClasses:v24 fromData:v25 error:a4];
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
          v17 = [(KCSharingPBLocalEntryData *)v11 cloudKitRecord];
          v18 = [NSKeyedUnarchiver unarchivedObjectOfClass:v16 fromData:v17 error:a4];
          v19 = v7->_record;
          v7->_record = v18;

          if (v7->_record)
          {
            v20 = &OBJC_IVAR___KCSharingOutgoingEntry__privateKeyFingerprint;
            v21 = &off_100334C78;
            v22 = &off_100334C70;
LABEL_22:
            v36 = [KCSharingLocalFingerprint alloc];
            v37 = [v6 objectForKeyedSubscript:*v22];
            v38 = [v6 objectForKeyedSubscript:*v21];
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
      v29 = [(KCSharingPBLocalEntryData *)v11 cloudKitRecord];
      v30 = [NSKeyedUnarchiver unarchivedObjectOfClass:v28 fromData:v29 error:a4];
      v31 = v7->_record;
      v7->_record = v30;
    }

    if (!v7->_record)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

  sub_100061E2C(a4, 8, 0);
LABEL_13:

  v23 = 0;
LABEL_25:

  return v23;
}

- (KCSharingOutgoingEntry)initWithShare:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = KCSharingOutgoingEntry;
  v6 = [(KCSharingOutgoingEntry *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_record, a3);
    v8 = [v5 modificationDate];
    v9 = v8;
    if (!v8)
    {
      v9 = +[NSDate date];
    }

    objc_storeStrong(&v7->_modificationDate, v9);
    if (!v8)
    {
    }

    v7->_type = 3;
  }

  return v7;
}

- (KCSharingOutgoingEntry)initWithUpdatedLocalItem:(id)a3 forMirrorEntry:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v31.receiver = self;
  v31.super_class = KCSharingOutgoingEntry;
  v10 = [(KCSharingOutgoingEntry *)&v31 init];
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = [[KCSharingRemoteItem alloc] initWithLocalItem:v8];
  v12 = [v9 record];
  v13 = [v12 copy];
  record = v10->_record;
  v10->_record = v13;

  v15 = [KCSharingPBRemoteItem alloc];
  v16 = [(CKRecord *)v10->_record encryptedValues];
  v17 = [v16 objectForKeyedSubscript:@"payload"];
  v18 = [(KCSharingPBRemoteItem *)v15 initWithData:v17];

  if (v18)
  {
    v19 = [(KCSharingRemoteItem *)v11 proto];
    [(KCSharingPBRemoteItem *)v18 mergeFrom:v19];
    v20 = [(KCSharingPBRemoteItem *)v18 data];
    v21 = [(CKRecord *)v10->_record encryptedValues];
    [v21 setObject:v20 forKeyedSubscript:@"payload"];

    v22 = [v8 modificationDate];
    modificationDate = v10->_modificationDate;
    v10->_modificationDate = v22;

    v24 = [v8 type];
    if (v24 == 2)
    {
      v10->_type = 2;
      v25 = [v8 internetPasswordFingerprint];
      v26 = &OBJC_IVAR___KCSharingOutgoingEntry__internetPasswordFingerprint;
    }

    else
    {
      if (v24 != 1)
      {
LABEL_9:

LABEL_10:
        v27 = v10;
        goto LABEL_11;
      }

      v10->_type = 1;
      v25 = [v8 privateKeyFingerprint];
      v26 = &OBJC_IVAR___KCSharingOutgoingEntry__privateKeyFingerprint;
    }

    v28 = *v26;
    v29 = *(&v10->super.super.isa + v28);
    *(&v10->super.super.isa + v28) = v25;

    goto LABEL_9;
  }

  sub_100061E2C(a5, 4, 0);

  v27 = 0;
LABEL_11:

  return v27;
}

- (KCSharingOutgoingEntry)initWithNewLocalItem:(id)a3 zoneID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v30.receiver = self;
  v30.super_class = KCSharingOutgoingEntry;
  v8 = [(KCSharingOutgoingEntry *)&v30 init];
  if (v8)
  {
    v9 = [[KCSharingRemoteItem alloc] initWithLocalItem:v6];
    v10 = +[NSUUID UUID];
    v11 = [v10 UUIDString];
    v12 = [NSString stringWithFormat:@"%@-%@", @"item", v11];

    v13 = [CKRecord alloc];
    v14 = [[CKRecordID alloc] initWithRecordName:v12 zoneID:v7];
    v15 = [v13 initWithRecordType:@"item" recordID:v14];
    record = v8->_record;
    v8->_record = v15;

    v17 = [(KCSharingRemoteItem *)v9 proto];
    v18 = [v17 data];
    v19 = [(CKRecord *)v8->_record encryptedValues];
    [v19 setObject:v18 forKeyedSubscript:@"payload"];

    v20 = [v6 modificationDate];
    modificationDate = v8->_modificationDate;
    v8->_modificationDate = v20;

    v22 = [v6 type];
    if (v22 == 2)
    {
      v8->_type = 2;
      v26 = [(CKRecord *)v8->_record encryptedValues];
      [v26 setObject:&off_100364000 forKeyedSubscript:@"type"];

      v24 = [v6 internetPasswordFingerprint];
      v25 = &OBJC_IVAR___KCSharingOutgoingEntry__internetPasswordFingerprint;
    }

    else
    {
      if (v22 != 1)
      {
LABEL_7:

        goto LABEL_8;
      }

      v8->_type = 1;
      v23 = [(CKRecord *)v8->_record encryptedValues];
      [v23 setObject:&off_100363FE8 forKeyedSubscript:@"type"];

      v24 = [v6 privateKeyFingerprint];
      v25 = &OBJC_IVAR___KCSharingOutgoingEntry__privateKeyFingerprint;
    }

    v27 = *v25;
    v28 = *(&v8->super.super.isa + v27);
    *(&v8->super.super.isa + v27) = v24;

    goto LABEL_7;
  }

LABEL_8:

  return v8;
}

@end