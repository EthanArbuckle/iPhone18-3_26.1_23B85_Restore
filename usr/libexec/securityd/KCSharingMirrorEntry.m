@interface KCSharingMirrorEntry
+ (NSSet)requiredAttributeKeys;
- (KCSharingLocalFingerprint)internetPasswordFingerprint;
- (KCSharingLocalFingerprint)privateKeyFingerprint;
- (KCSharingMirrorEntry)initWithAttributes:(id)a3 error:(id *)a4;
- (KCSharingMirrorEntry)initWithIncomingEntry:(id)a3 flags:(unsigned int)a4;
- (KCSharingMirrorEntry)initWithMirrorDatabaseItem:(SecDbItem *)a3 error:(id *)a4;
- (KCSharingMirrorEntry)initWithMirrorEntry:(id)a3 flags:(unsigned int)a4;
- (KCSharingMirrorEntry)initWithSavedRecord:(id)a3 forOutgoingEntry:(id)a4 flags:(unsigned int)a5;
- (KCSharingMirrorEntry)initWithUpdatedLocalItem:(id)a3 forIncomingEntry:(id)a4 flags:(unsigned int)a5;
- (KCSharingMirrorEntry)initWithUpdatedLocalItem:(id)a3 forMirrorEntry:(id)a4 flags:(unsigned int)a5;
- (NSString)description;
- (id)attributesWithAccessGroups:(id)a3 error:(id *)a4;
- (id)remoteItemWithAccessGroups:(id)a3 error:(id *)a4;
- (id)shareWithAccessGroups:(id)a3 error:(id *)a4;
@end

@implementation KCSharingMirrorEntry

- (id)attributesWithAccessGroups:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [NSKeyedArchiver archivedDataWithRootObject:self->_record requiringSecureCoding:1 error:a4];
  if (!v7)
  {
    v22 = 0;
    goto LABEL_9;
  }

  v8 = objc_opt_new();
  v35 = v7;
  [v8 setCloudKitRecord:v7];
  v37[0] = kSecAttrUUID;
  v33 = [(CKRecord *)self->_record recordID];
  v32 = [v33 recordName];
  v38[0] = v32;
  v37[1] = @"zone";
  v31 = [(KCSharingMirrorEntry *)self record];
  v30 = [v31 recordID];
  v29 = [v30 zoneID];
  v28 = [v29 zoneName];
  v38[1] = v28;
  v37[2] = @"ownr";
  v27 = [(KCSharingMirrorEntry *)self record];
  v26 = [v27 recordID];
  v9 = [v26 zoneID];
  v10 = [v9 ownerName];
  v38[2] = v10;
  v38[3] = kSecAttrAccessibleWhenUnlockedThisDeviceOnly;
  v37[3] = kSecAttrAccessible;
  v37[4] = @"type";
  v11 = [NSNumber numberWithLongLong:self->_type];
  v38[4] = v11;
  v37[5] = kSecAttrAccessGroup;
  v12 = [v6 entryAccessGroup];
  v38[5] = v12;
  v37[6] = kSecValueData;
  v34 = v8;
  v13 = [v8 data];
  v38[6] = v13;
  v37[7] = @"flag";
  v14 = [NSNumber numberWithUnsignedInt:self->_flags];
  v38[7] = v14;
  v37[8] = @"lwsv";
  v36 = v6;
  v15 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v6 entrySchemaVersion]);
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
    v23 = [*(&self->super.isa + v20) keyprint];
    [v17 setObject:v23 forKeyedSubscript:*v21];

    v24 = [*(&self->super.isa + v20) valueprint];
    [v17 setObject:v24 forKeyedSubscript:*v19];
  }

  v22 = [v17 copy];

  v7 = v35;
  v6 = v36;
LABEL_9:

  return v22;
}

- (id)shareWithAccessGroups:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(KCSharingMirrorEntry *)self type];
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

    v8 = [(KCSharingMirrorEntry *)self record];
    v9 = [v8 recordID];
    v10 = [v9 zoneID];
    v11 = [v10 zoneName];
    v12 = [v11 hasPrefix:@"group-"];

    if (v12)
    {
      v13 = [(KCSharingMirrorEntry *)self record];
      v14 = [v6 recordIsFullyDecoded:v13];

      v15 = [KCSharingEntryContents alloc];
      v16 = [(KCSharingMirrorEntry *)self record];
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
          v23 = [(KCSharingMirrorEntry *)self record];
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
  v3 = [(CKRecord *)self->_record recordID];
  v4 = [NSString stringWithFormat:@"KCSharingMirrorEntry(type:%lld recordID:%@)", type, v3];

  return v4;
}

- (KCSharingMirrorEntry)initWithAttributes:(id)a3 error:(id *)a4
{
  v6 = a3;
  v40.receiver = self;
  v40.super_class = KCSharingMirrorEntry;
  v7 = [(KCSharingMirrorEntry *)&v40 init];
  if (!v7)
  {
    goto LABEL_20;
  }

  v8 = [KCSharingPBLocalEntryData alloc];
  v9 = [v6 objectForKeyedSubscript:kSecValueData];
  v10 = [(KCSharingPBLocalEntryData *)v8 initWithData:v9];

  if (!v10)
  {
    sub_100061E2C(a4, 3, 0);
    goto LABEL_9;
  }

  v11 = [v6 objectForKeyedSubscript:@"type"];
  v7->_type = [v11 longLongValue];

  v12 = [v6 objectForKeyedSubscript:@"flag"];
  v7->_flags = [v12 unsignedIntValue];

  type = v7->_type;
  if (type <= 1)
  {
    if (type)
    {
      if (type == 1)
      {
        v14 = objc_opt_class();
        v15 = [(KCSharingPBLocalEntryData *)v10 cloudKitRecord];
        v16 = [NSKeyedUnarchiver unarchivedObjectOfClass:v14 fromData:v15 error:a4];
        record = v7->_record;
        v7->_record = v16;

        if (v7->_record)
        {
          v18 = &off_100334C78;
          v19 = 32;
          v20 = &off_100334C70;
LABEL_18:
          v34 = [KCSharingLocalFingerprint alloc];
          v35 = [v6 objectForKeyedSubscript:*v20];
          v36 = [v6 objectForKeyedSubscript:*v18];
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
    v27 = [(KCSharingPBLocalEntryData *)v10 cloudKitRecord];
    v28 = [NSKeyedUnarchiver unarchivedObjectOfClass:v26 fromData:v27 error:a4];
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
    v23 = [(KCSharingPBLocalEntryData *)v10 cloudKitRecord];
    v24 = [NSKeyedUnarchiver _strictlyUnarchivedObjectOfClasses:v22 fromData:v23 error:a4];
    v25 = v7->_record;
    v7->_record = v24;

    goto LABEL_14;
  }

  v30 = objc_opt_class();
  v31 = [(KCSharingPBLocalEntryData *)v10 cloudKitRecord];
  v32 = [NSKeyedUnarchiver unarchivedObjectOfClass:v30 fromData:v31 error:a4];
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

- (KCSharingMirrorEntry)initWithMirrorDatabaseItem:(SecDbItem *)a3 error:(id *)a4
{
  v7 = [objc_opt_class() requiredAttributeKeys];
  v8 = sub_100017964(a3, v7, a4);

  if (v8)
  {
    self = [(KCSharingMirrorEntry *)self initWithAttributes:v8 error:a4];
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v10;
}

- (KCSharingMirrorEntry)initWithUpdatedLocalItem:(id)a3 forMirrorEntry:(id)a4 flags:(unsigned int)a5
{
  v8 = a3;
  v9 = a4;
  v18.receiver = self;
  v18.super_class = KCSharingMirrorEntry;
  v10 = [(KCSharingMirrorEntry *)&v18 init];
  if (v10)
  {
    v10->_type = [v9 type];
    v11 = [v9 record];
    record = v10->_record;
    v10->_record = v11;

    v10->_flags = a5;
    v13 = [v8 type];
    if (v13 == 2)
    {
      v14 = [v8 internetPasswordFingerprint];
      v15 = 40;
      goto LABEL_6;
    }

    if (v13 == 1)
    {
      v14 = [v8 privateKeyFingerprint];
      v15 = 32;
LABEL_6:
      v16 = *(&v10->super.isa + v15);
      *(&v10->super.isa + v15) = v14;
    }
  }

  return v10;
}

- (KCSharingMirrorEntry)initWithSavedRecord:(id)a3 forOutgoingEntry:(id)a4 flags:(unsigned int)a5
{
  v9 = a3;
  v10 = a4;
  v17.receiver = self;
  v17.super_class = KCSharingMirrorEntry;
  v11 = [(KCSharingMirrorEntry *)&v17 init];
  if (v11)
  {
    v11->_type = [v10 type];
    objc_storeStrong(&v11->_record, a3);
    v11->_flags = a5;
    v12 = [v10 type];
    if (v12 == 2)
    {
      v13 = [v10 internetPasswordFingerprint];
      v14 = 40;
      goto LABEL_6;
    }

    if (v12 == 1)
    {
      v13 = [v10 privateKeyFingerprint];
      v14 = 32;
LABEL_6:
      v15 = *(&v11->super.isa + v14);
      *(&v11->super.isa + v14) = v13;
    }
  }

  return v11;
}

- (KCSharingMirrorEntry)initWithMirrorEntry:(id)a3 flags:(unsigned int)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = KCSharingMirrorEntry;
  v7 = [(KCSharingMirrorEntry *)&v15 init];
  if (v7)
  {
    v7->_type = [v6 type];
    v8 = [v6 record];
    record = v7->_record;
    v7->_record = v8;

    v7->_flags = a4;
    v10 = [v6 type];
    if (v10 == 2)
    {
      v11 = [v6 internetPasswordFingerprint];
      v12 = 40;
      goto LABEL_6;
    }

    if (v10 == 1)
    {
      v11 = [v6 privateKeyFingerprint];
      v12 = 32;
LABEL_6:
      v13 = *(&v7->super.isa + v12);
      *(&v7->super.isa + v12) = v11;
    }
  }

  return v7;
}

- (KCSharingMirrorEntry)initWithIncomingEntry:(id)a3 flags:(unsigned int)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = KCSharingMirrorEntry;
  v7 = [(KCSharingMirrorEntry *)&v11 init];
  if (v7)
  {
    v7->_type = [v6 type];
    v8 = [v6 record];
    record = v7->_record;
    v7->_record = v8;

    v7->_flags = a4;
  }

  return v7;
}

- (KCSharingMirrorEntry)initWithUpdatedLocalItem:(id)a3 forIncomingEntry:(id)a4 flags:(unsigned int)a5
{
  v8 = a3;
  v9 = a4;
  v18.receiver = self;
  v18.super_class = KCSharingMirrorEntry;
  v10 = [(KCSharingMirrorEntry *)&v18 init];
  if (v10)
  {
    v10->_type = [v9 type];
    v11 = [v9 record];
    record = v10->_record;
    v10->_record = v11;

    v10->_flags = a5;
    v13 = [v8 type];
    if (v13 == 2)
    {
      v14 = [v8 internetPasswordFingerprint];
      v15 = 40;
      goto LABEL_6;
    }

    if (v13 == 1)
    {
      v14 = [v8 privateKeyFingerprint];
      v15 = 32;
LABEL_6:
      v16 = *(&v10->super.isa + v15);
      *(&v10->super.isa + v15) = v14;
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