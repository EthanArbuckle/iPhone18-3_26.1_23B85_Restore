@interface CKKSItem
+ (BOOL)intransactionRecordChanged:(id)changed contextID:(id)d resync:(BOOL)resync error:(id *)error;
+ (BOOL)intransactionRecordDeleted:(id)deleted contextID:(id)d resync:(BOOL)resync error:(id *)error;
+ (id)fromDatabaseRow:(id)row;
+ (void)setOSVersionInRecord:(id)record;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesCKRecord:(id)record;
- (CKKSItem)initWithCKRecord:(id)record contextID:(id)d;
- (CKKSItem)initWithUUID:(id)d parentKeyUUID:(id)iD contextID:(id)contextID zoneID:(id)zoneID encodedCKRecord:(id)record encItem:(id)item wrappedkey:(id)wrappedkey generationCount:(unint64_t)self0 encver:(unint64_t)self1 plaintextPCSServiceIdentifier:(id)self2 plaintextPCSPublicKey:(id)self3 plaintextPCSPublicIdentity:(id)self4;
- (NSString)base64Item;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (id)initCopyingCKKSItem:(id)item;
- (id)makeAuthenticatedDataDictionaryUpdatingCKKSItem:(id)item encryptionVersion:(unint64_t)version;
- (id)makeAuthenticatedDataDictionaryUpdatingCKKSItemEncVer1;
- (id)makeAuthenticatedDataDictionaryUpdatingCKKSItemEncVer2:(id)ver2;
- (id)sqlValues;
- (id)updateCKRecord:(id)record zoneID:(id)d;
- (id)whereClauseToFindSelf;
- (void)setBase64Item:(id)item;
- (void)setFromCKRecord:(id)record;
@end

@implementation CKKSItem

- (id)sqlValues
{
  v40[0] = @"contextID";
  contextID = [(CKKSCKRecordHolder *)self contextID];
  v4 = contextID;
  if (contextID)
  {
    v5 = contextID;
  }

  else
  {
    v5 = +[NSNull null];
  }

  v6 = v5;

  v39 = v6;
  v41[0] = v6;
  v40[1] = @"UUID";
  uuid = [(CKKSItem *)self uuid];
  v41[1] = uuid;
  v40[2] = @"parentKeyUUID";
  parentKeyUUID = [(CKKSItem *)self parentKeyUUID];
  v41[2] = parentKeyUUID;
  v40[3] = @"ckzone";
  zoneID = [(CKKSCKRecordHolder *)self zoneID];
  zoneName = [zoneID zoneName];

  if (zoneName)
  {
    v9 = zoneName;
  }

  else
  {
    v9 = +[NSNull null];
  }

  v10 = v9;

  v36 = v10;
  v41[3] = v10;
  v40[4] = @"encitem";
  base64Item = [(CKKSItem *)self base64Item];
  v41[4] = base64Item;
  v40[5] = @"wrappedkey";
  wrappedkey = [(CKKSItem *)self wrappedkey];
  base64WrappedKey = [wrappedkey base64WrappedKey];
  v41[5] = base64WrappedKey;
  v40[6] = @"gencount";
  v12 = [NSNumber numberWithInteger:[(CKKSItem *)self generationCount]];
  stringValue = [v12 stringValue];
  v41[6] = stringValue;
  v40[7] = @"encver";
  v14 = [NSNumber numberWithInteger:[(CKKSItem *)self encver]];
  stringValue2 = [v14 stringValue];
  v41[7] = stringValue2;
  v40[8] = @"ckrecord";
  encodedCKRecord = [(CKKSCKRecordHolder *)self encodedCKRecord];
  v17 = [encodedCKRecord base64EncodedStringWithOptions:0];

  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = +[NSNull null];
  }

  v19 = v18;

  v41[8] = v19;
  v40[9] = @"pcss";
  plaintextPCSServiceIdentifier = [(CKKSItem *)self plaintextPCSServiceIdentifier];
  v21 = plaintextPCSServiceIdentifier;
  if (plaintextPCSServiceIdentifier)
  {
    v22 = plaintextPCSServiceIdentifier;
  }

  else
  {
    v22 = +[NSNull null];
  }

  v23 = v22;

  v41[9] = v23;
  v40[10] = @"pcsk";
  plaintextPCSPublicKey = [(CKKSItem *)self plaintextPCSPublicKey];
  v25 = [plaintextPCSPublicKey base64EncodedStringWithOptions:0];

  if (v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = +[NSNull null];
  }

  v27 = v26;

  v41[10] = v27;
  v40[11] = @"pcsi";
  plaintextPCSPublicIdentity = [(CKKSItem *)self plaintextPCSPublicIdentity];
  v29 = [plaintextPCSPublicIdentity base64EncodedStringWithOptions:0];

  if (v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = +[NSNull null];
  }

  v31 = v30;

  v41[11] = v31;
  v32 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:12];

  return v32;
}

- (id)whereClauseToFindSelf
{
  v12[0] = @"contextID";
  contextID = [(CKKSCKRecordHolder *)self contextID];
  v4 = contextID;
  if (contextID)
  {
    v5 = contextID;
  }

  else
  {
    v5 = +[NSNull null];
  }

  v6 = v5;

  v13[0] = v6;
  v12[1] = @"UUID";
  uuid = [(CKKSItem *)self uuid];
  v13[1] = uuid;
  v12[2] = @"ckzone";
  zoneID = [(CKKSCKRecordHolder *)self zoneID];
  zoneName = [zoneID zoneName];
  v13[2] = zoneName;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];

  return v10;
}

- (void)setBase64Item:(id)item
{
  itemCopy = item;
  v5 = [[NSData alloc] initWithBase64EncodedString:itemCopy options:0];

  encitem = self->_encitem;
  self->_encitem = v5;
}

- (NSString)base64Item
{
  encitem = [(CKKSItem *)self encitem];
  v3 = [encitem base64EncodedStringWithOptions:0];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CKKSItem;
  v4 = [(CKKSCKRecordHolder *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 7, self->_uuid);
  objc_storeStrong(v4 + 8, self->_parentKeyUUID);
  objc_storeStrong(v4 + 9, self->_encitem);
  objc_storeStrong(v4 + 10, self->_wrappedkey);
  v4[11] = self->_generationCount;
  v4[12] = self->_encver;
  return v4;
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  uuid = [(CKKSItem *)self uuid];
  v6 = [NSString stringWithFormat:@"<%@: %@ %p>", v4, uuid, self];

  return v6;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  uuid = [(CKKSItem *)self uuid];
  v6 = [NSString stringWithFormat:@"<%@: %@>", v4, uuid];

  return v6;
}

- (id)makeAuthenticatedDataDictionaryUpdatingCKKSItemEncVer2:(id)ver2
{
  ver2Copy = ver2;
  v5 = objc_alloc_init(NSMutableDictionary);
  uuid = [(CKKSItem *)self uuid];
  v7 = [uuid dataUsingEncoding:4];
  [v5 setObject:v7 forKeyedSubscript:@"UUID"];

  parentKeyUUID = [(CKKSItem *)self parentKeyUUID];
  v9 = [parentKeyUUID dataUsingEncoding:4];
  [v5 setObject:v9 forKeyedSubscript:@"wrappedkey"];

  generationCount = [(CKKSItem *)self generationCount];
  v10 = [NSData dataWithBytes:&generationCount length:8];
  [v5 setObject:v10 forKeyedSubscript:@"gen"];

  encver = [(CKKSItem *)self encver];
  v11 = [NSData dataWithBytes:&encver length:8];
  [v5 setObject:v11 forKeyedSubscript:@"encver"];

  plaintextPCSServiceIdentifier = [(CKKSItem *)self plaintextPCSServiceIdentifier];

  if (plaintextPCSServiceIdentifier)
  {
    plaintextPCSServiceIdentifier2 = [(CKKSItem *)self plaintextPCSServiceIdentifier];
    unsignedLongValue = [plaintextPCSServiceIdentifier2 unsignedLongValue];

    unsignedLongLongValue = unsignedLongValue;
    v15 = [NSData dataWithBytes:&unsignedLongLongValue length:8];
    [v5 setObject:v15 forKeyedSubscript:@"pcsservice"];
  }

  plaintextPCSPublicKey = [(CKKSItem *)self plaintextPCSPublicKey];
  [v5 setObject:plaintextPCSPublicKey forKeyedSubscript:@"pcspublickey"];

  plaintextPCSPublicIdentity = [(CKKSItem *)self plaintextPCSPublicIdentity];
  [v5 setObject:plaintextPCSPublicIdentity forKeyedSubscript:@"pcspublicidentity"];

  if (!ver2Copy)
  {
    goto LABEL_36;
  }

  storedCKRecord = [ver2Copy storedCKRecord];
  if (!storedCKRecord)
  {
    goto LABEL_35;
  }

  v32 = v5;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = storedCKRecord;
  allKeys = [storedCKRecord allKeys];
  v20 = [allKeys countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (!v20)
  {
    goto LABEL_34;
  }

  v21 = v20;
  v22 = *v36;
  do
  {
    v23 = 0;
    do
    {
      if (*v36 != v22)
      {
        objc_enumerationMutation(allKeys);
      }

      v24 = *(*(&v35 + 1) + 8 * v23);
      if (([v24 isEqualToString:@"UUID"] & 1) == 0 && (objc_msgSend(v24, "isEqualToString:", @"uploadver") & 1) == 0 && (objc_msgSend(v24, "isEqualToString:", @"data") & 1) == 0 && (objc_msgSend(v24, "isEqualToString:", @"wrappedkey") & 1) == 0 && (objc_msgSend(v24, "isEqualToString:", @"gen") & 1) == 0 && (objc_msgSend(v24, "isEqualToString:", @"encver") & 1) == 0 && (objc_msgSend(v24, "isEqualToString:", @"pcsservice") & 1) == 0 && (objc_msgSend(v24, "isEqualToString:", @"pcspublickey") & 1) == 0 && (objc_msgSend(v24, "isEqualToString:", @"pcspublicidentity") & 1) == 0 && (objc_msgSend(v24, "hasPrefix:", @"server_") & 1) == 0)
      {
        v34 = [v33 objectForKeyedSubscript:v24];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = [v34 dataUsingEncoding:4];
LABEL_24:
          v30 = v25;
          [v32 setObject:v25 forKeyedSubscript:v24];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v25 = [v34 copy];
            goto LABEL_24;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v31 = objc_alloc_init(NSISO8601DateFormatter);
            v29 = [v31 stringForObjectValue:v34];
            v28 = [v29 dataUsingEncoding:4];
            [v32 setObject:v28 forKeyedSubscript:v24];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              unsignedLongLongValue = [v34 unsignedLongLongValue];
              v25 = [NSData dataWithBytes:&unsignedLongLongValue length:8];
              goto LABEL_24;
            }
          }
        }
      }

      v23 = v23 + 1;
    }

    while (v21 != v23);
    v26 = [allKeys countByEnumeratingWithState:&v35 objects:v42 count:16];
    v21 = v26;
  }

  while (v26);
LABEL_34:

  v5 = v32;
  storedCKRecord = v33;
LABEL_35:

LABEL_36:

  return v5;
}

- (id)makeAuthenticatedDataDictionaryUpdatingCKKSItemEncVer1
{
  v3 = objc_alloc_init(NSMutableDictionary);
  uuid = [(CKKSItem *)self uuid];
  v5 = [uuid dataUsingEncoding:4];
  [v3 setObject:v5 forKeyedSubscript:@"UUID"];

  parentKeyUUID = [(CKKSItem *)self parentKeyUUID];
  v7 = [parentKeyUUID dataUsingEncoding:4];
  [v3 setObject:v7 forKeyedSubscript:@"wrappedkey"];

  generationCount = [(CKKSItem *)self generationCount];
  v8 = [NSData dataWithBytes:&generationCount length:8];
  [v3 setObject:v8 forKeyedSubscript:@"gen"];

  encver = [(CKKSItem *)self encver];
  v9 = [NSData dataWithBytes:&encver length:8];
  [v3 setObject:v9 forKeyedSubscript:@"encver"];

  [v3 setObject:0 forKeyedSubscript:@"pcsservice"];
  [v3 setObject:0 forKeyedSubscript:@"pcspublickey"];
  [v3 setObject:0 forKeyedSubscript:@"pcspublicidentity"];

  return v3;
}

- (id)makeAuthenticatedDataDictionaryUpdatingCKKSItem:(id)item encryptionVersion:(unint64_t)version
{
  itemCopy = item;
  if (version == 2)
  {
    makeAuthenticatedDataDictionaryUpdatingCKKSItemEncVer1 = [(CKKSItem *)self makeAuthenticatedDataDictionaryUpdatingCKKSItemEncVer2:itemCopy];
  }

  else
  {
    if (version != 1)
    {
      version = [NSString stringWithFormat:@"%d is not a known encryption version", version];
      v11 = [NSException exceptionWithName:@"WrongEncryptionVersionException" reason:version userInfo:0];
      v12 = v11;

      objc_exception_throw(v11);
    }

    makeAuthenticatedDataDictionaryUpdatingCKKSItemEncVer1 = [(CKKSItem *)self makeAuthenticatedDataDictionaryUpdatingCKKSItemEncVer1];
  }

  v8 = makeAuthenticatedDataDictionaryUpdatingCKKSItemEncVer1;

  return v8;
}

- (BOOL)matchesCKRecord:(id)record
{
  recordCopy = record;
  recordType = [recordCopy recordType];
  v6 = [recordType isEqual:@"item"];

  if (!v6)
  {
    goto LABEL_41;
  }

  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  uuid = [(CKKSItem *)self uuid];
  v10 = [recordName isEqualToString:uuid];

  if ((v10 & 1) == 0)
  {
    v39 = sub_100019104(@"ckksitem", 0);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_40;
    }

    *v42 = 0;
    v40 = "UUID does not match";
    goto LABEL_39;
  }

  v11 = [recordCopy objectForKeyedSubscript:@"parentkeyref"];
  recordID2 = [v11 recordID];
  recordName2 = [recordID2 recordName];
  parentKeyUUID = [(CKKSItem *)self parentKeyUUID];
  v15 = [recordName2 isEqualToString:parentKeyUUID];

  if ((v15 & 1) == 0)
  {
    v39 = sub_100019104(@"ckksitem", 0);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_40;
    }

    *v42 = 0;
    v40 = "wrapping key reference does not match";
    goto LABEL_39;
  }

  v16 = [recordCopy objectForKeyedSubscript:@"gen"];
  v17 = [NSNumber numberWithInteger:[(CKKSItem *)self generationCount]];
  v18 = [v16 isEqual:v17];

  if ((v18 & 1) == 0)
  {
    v39 = sub_100019104(@"ckksitem", 0);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_40;
    }

    *v42 = 0;
    v40 = "SecCKRecordGenerationCountKey does not match";
    goto LABEL_39;
  }

  v19 = [recordCopy objectForKeyedSubscript:@"wrappedkey"];
  wrappedkey = [(CKKSItem *)self wrappedkey];
  base64WrappedKey = [wrappedkey base64WrappedKey];
  v22 = [v19 isEqual:base64WrappedKey];

  if ((v22 & 1) == 0)
  {
    v39 = sub_100019104(@"ckksitem", 0);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_40;
    }

    *v42 = 0;
    v40 = "SecCKRecordWrappedKeyKey does not match";
    goto LABEL_39;
  }

  v23 = [recordCopy objectForKeyedSubscript:@"data"];
  encitem = [(CKKSItem *)self encitem];
  v25 = [v23 isEqual:encitem];

  if ((v25 & 1) == 0)
  {
    v39 = sub_100019104(@"ckksitem", 0);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_40;
    }

    *v42 = 0;
    v40 = "SecCKRecordDataKey does not match";
    goto LABEL_39;
  }

  v26 = [recordCopy objectForKeyedSubscript:@"pcsservice"];
  if (v26 || ([(CKKSItem *)self plaintextPCSServiceIdentifier], (encitem = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v27 = [recordCopy objectForKeyedSubscript:@"pcsservice"];
    plaintextPCSServiceIdentifier = [(CKKSItem *)self plaintextPCSServiceIdentifier];
    v29 = [v27 isEqual:plaintextPCSServiceIdentifier];

    if (v26)
    {

      if (v29)
      {
        goto LABEL_11;
      }
    }

    else
    {

      if (v29)
      {
        goto LABEL_11;
      }
    }

    v39 = sub_100019104(@"ckksitem", 0);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_40;
    }

    *v42 = 0;
    v40 = "SecCKRecordPCSServiceIdentifier does not match";
    goto LABEL_39;
  }

LABEL_11:
  v30 = [recordCopy objectForKeyedSubscript:@"pcspublickey"];
  if (v30 || ([(CKKSItem *)self plaintextPCSPublicKey], (encitem = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v31 = [recordCopy objectForKeyedSubscript:@"pcspublickey"];
    plaintextPCSPublicKey = [(CKKSItem *)self plaintextPCSPublicKey];
    v33 = [v31 isEqual:plaintextPCSPublicKey];

    if (v30)
    {

      if (v33)
      {
        goto LABEL_15;
      }
    }

    else
    {

      if (v33)
      {
        goto LABEL_15;
      }
    }

    v39 = sub_100019104(@"ckksitem", 0);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_40;
    }

    *v42 = 0;
    v40 = "SecCKRecordPCSPublicKey does not match";
LABEL_39:
    _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, v40, v42, 2u);
    goto LABEL_40;
  }

LABEL_15:
  v34 = [recordCopy objectForKeyedSubscript:@"pcspublicidentity"];
  if (!v34)
  {
    encitem = [(CKKSItem *)self plaintextPCSPublicIdentity];
    if (!encitem)
    {
      goto LABEL_19;
    }
  }

  v35 = [recordCopy objectForKeyedSubscript:@"pcspublicidentity"];
  plaintextPCSPublicIdentity = [(CKKSItem *)self plaintextPCSPublicIdentity];
  v37 = [v35 isEqual:plaintextPCSPublicIdentity];

  if (!v34)
  {

    if (v37)
    {
      goto LABEL_19;
    }

LABEL_37:
    v39 = sub_100019104(@"ckksitem", 0);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      *v42 = 0;
      v40 = "SecCKRecordPCSPublicIdentity does not match";
      goto LABEL_39;
    }

LABEL_40:

LABEL_41:
    v38 = 0;
    goto LABEL_42;
  }

  if ((v37 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_19:
  v38 = 1;
LABEL_42:

  return v38;
}

- (id)updateCKRecord:(id)record zoneID:(id)d
{
  recordCopy = record;
  dCopy = d;
  recordType = [recordCopy recordType];
  v9 = [recordType isEqual:@"item"];

  if ((v9 & 1) == 0)
  {
    recordType2 = [recordCopy recordType];
    v25 = [NSString stringWithFormat:@"CKRecordType (%@) was not %@", recordType2, @"item"];
    v26 = [NSException exceptionWithName:@"WrongCKRecordTypeException" reason:v25 userInfo:0];
    v27 = v26;

    objc_exception_throw(v26);
  }

  v10 = [CKReference alloc];
  v11 = [CKRecordID alloc];
  parentKeyUUID = [(CKKSItem *)self parentKeyUUID];
  v13 = [v11 initWithRecordName:parentKeyUUID zoneID:dCopy];
  v14 = [v10 initWithRecordID:v13 action:CKReferenceActionValidate];
  [recordCopy setObject:v14 forKeyedSubscript:@"parentkeyref"];

  [CKKSItem setOSVersionInRecord:recordCopy];
  encitem = [(CKKSItem *)self encitem];
  [recordCopy setObject:encitem forKeyedSubscript:@"data"];

  wrappedkey = [(CKKSItem *)self wrappedkey];
  base64WrappedKey = [wrappedkey base64WrappedKey];
  [recordCopy setObject:base64WrappedKey forKeyedSubscript:@"wrappedkey"];

  v18 = [NSNumber numberWithInteger:[(CKKSItem *)self generationCount]];
  [recordCopy setObject:v18 forKeyedSubscript:@"gen"];

  v19 = [NSNumber numberWithInteger:[(CKKSItem *)self encver]];
  [recordCopy setObject:v19 forKeyedSubscript:@"encver"];

  plaintextPCSServiceIdentifier = [(CKKSItem *)self plaintextPCSServiceIdentifier];
  [recordCopy setObject:plaintextPCSServiceIdentifier forKeyedSubscript:@"pcsservice"];

  plaintextPCSPublicKey = [(CKKSItem *)self plaintextPCSPublicKey];
  [recordCopy setObject:plaintextPCSPublicKey forKeyedSubscript:@"pcspublickey"];

  plaintextPCSPublicIdentity = [(CKKSItem *)self plaintextPCSPublicIdentity];
  [recordCopy setObject:plaintextPCSPublicIdentity forKeyedSubscript:@"pcspublicidentity"];

  return recordCopy;
}

- (void)setFromCKRecord:(id)record
{
  recordCopy = record;
  recordType = [recordCopy recordType];
  v6 = [recordType isEqual:@"item"];

  if ((v6 & 1) == 0)
  {
    recordType2 = [recordCopy recordType];
    v27 = [NSString stringWithFormat:@"CKRecordType (%@) was not %@", recordType2, @"item"];
    v28 = [NSException exceptionWithName:@"WrongCKRecordTypeException" reason:v27 userInfo:0];
    v29 = v28;

    objc_exception_throw(v28);
  }

  [(CKKSCKRecordHolder *)self setStoredCKRecord:recordCopy];
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  uuid = self->_uuid;
  self->_uuid = recordName;

  v10 = [recordCopy objectForKeyedSubscript:@"parentkeyref"];
  recordID2 = [v10 recordID];
  recordName2 = [recordID2 recordName];
  [(CKKSItem *)self setParentKeyUUID:recordName2];

  v13 = [recordCopy objectForKeyedSubscript:@"data"];
  [(CKKSItem *)self setEncitem:v13];

  v14 = [recordCopy objectForKeyedSubscript:@"wrappedkey"];
  if (v14)
  {
    v15 = [[CKKSWrappedAESSIVKey alloc] initWithBase64:v14];
  }

  else
  {
    recordID3 = [recordCopy recordID];
    zoneID = [recordID3 zoneID];
    zoneName = [zoneID zoneName];
    v19 = sub_100019104(@"ckksitem", zoneName);

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Corrupt item recieved with no wrapped key", buf, 2u);
    }

    v15 = +[CKKSWrappedAESSIVKey zeroedKey];
  }

  v20 = v15;
  [(CKKSItem *)self setWrappedkey:v15];

  v21 = [recordCopy objectForKeyedSubscript:@"gen"];
  -[CKKSItem setGenerationCount:](self, "setGenerationCount:", [v21 unsignedIntegerValue]);

  v22 = [recordCopy objectForKeyedSubscript:@"encver"];
  -[CKKSItem setEncver:](self, "setEncver:", [v22 unsignedIntegerValue]);

  v23 = [recordCopy objectForKeyedSubscript:@"pcsservice"];
  [(CKKSItem *)self setPlaintextPCSServiceIdentifier:v23];

  v24 = [recordCopy objectForKeyedSubscript:@"pcspublickey"];
  [(CKKSItem *)self setPlaintextPCSPublicKey:v24];

  v25 = [recordCopy objectForKeyedSubscript:@"pcspublicidentity"];
  [(CKKSItem *)self setPlaintextPCSPublicIdentity:v25];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    uuid = [(CKKSItem *)self uuid];
    uuid2 = [v5 uuid];
    if (![uuid isEqual:uuid2])
    {
      v14 = 0;
LABEL_37:

      goto LABEL_38;
    }

    parentKeyUUID = [(CKKSItem *)self parentKeyUUID];
    parentKeyUUID2 = [v5 parentKeyUUID];
    if (![parentKeyUUID isEqual:parentKeyUUID2])
    {
      v14 = 0;
LABEL_36:

      goto LABEL_37;
    }

    zoneID = [(CKKSCKRecordHolder *)self zoneID];
    zoneID2 = [v5 zoneID];
    v34 = zoneID;
    if (![zoneID isEqual:zoneID2])
    {
      v14 = 0;
LABEL_35:

      goto LABEL_36;
    }

    contextID = [(CKKSCKRecordHolder *)self contextID];
    if (contextID || ([v5 contextID], (v27 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      contextID2 = [(CKKSCKRecordHolder *)self contextID];
      contextID3 = [v5 contextID];
      v32 = contextID2;
      if (![contextID2 isEqualToString:?])
      {
        v14 = 0;
        goto LABEL_31;
      }

      v30 = 1;
    }

    else
    {
      v27 = 0;
      v30 = 0;
    }

    encitem = [(CKKSItem *)self encitem];
    if (encitem || ([v5 encitem], (v22 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      encitem2 = [(CKKSItem *)self encitem];
      encitem3 = [v5 encitem];
      v29 = encitem2;
      if (![encitem2 isEqual:encitem3])
      {
        v14 = 0;
        goto LABEL_28;
      }

      v26 = contextID;
      v25 = 1;
    }

    else
    {
      v26 = contextID;
      v23 = 0;
      v25 = 0;
    }

    wrappedkey = [(CKKSItem *)self wrappedkey];
    wrappedkey2 = [v5 wrappedkey];
    v24 = wrappedkey;
    if ([wrappedkey isEqual:wrappedkey2] && (v18 = -[CKKSItem generationCount](self, "generationCount"), v18 == objc_msgSend(v5, "generationCount")))
    {
      encver = [(CKKSItem *)self encver];
      v14 = encver == [v5 encver];

      if ((v25 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {

      v14 = 0;
      if (!v25)
      {
LABEL_24:
        contextID = v26;
        if (encitem)
        {
        }

        else
        {
        }

        if ((v30 & 1) == 0)
        {
LABEL_32:
          if (!contextID)
          {
          }

          goto LABEL_35;
        }

LABEL_31:

        goto LABEL_32;
      }
    }

    contextID = v26;
LABEL_28:

    v20 = encitem;
    if (!encitem)
    {

      v20 = 0;
    }

    if (!v30)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v14 = 0;
LABEL_38:

  return v14;
}

- (CKKSItem)initWithUUID:(id)d parentKeyUUID:(id)iD contextID:(id)contextID zoneID:(id)zoneID encodedCKRecord:(id)record encItem:(id)item wrappedkey:(id)wrappedkey generationCount:(unint64_t)self0 encver:(unint64_t)self1 plaintextPCSServiceIdentifier:(id)self2 plaintextPCSPublicKey:(id)self3 plaintextPCSPublicIdentity:(id)self4
{
  dCopy = d;
  iDCopy = iD;
  itemCopy = item;
  wrappedkeyCopy = wrappedkey;
  identifierCopy = identifier;
  keyCopy = key;
  identityCopy = identity;
  v31.receiver = self;
  v31.super_class = CKKSItem;
  v22 = [(CKKSCKRecordHolder *)&v31 initWithCKRecordType:@"item" encodedCKRecord:record contextID:contextID zoneID:zoneID];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_uuid, d);
    objc_storeStrong(&v23->_parentKeyUUID, iD);
    v23->_generationCount = count;
    [(CKKSItem *)v23 setEncitem:itemCopy];
    objc_storeStrong(&v23->_wrappedkey, wrappedkey);
    v23->_encver = encver;
    objc_storeStrong(&v23->_plaintextPCSServiceIdentifier, identifier);
    objc_storeStrong(&v23->_plaintextPCSPublicKey, key);
    objc_storeStrong(&v23->_plaintextPCSPublicIdentity, identity);
  }

  return v23;
}

- (id)initCopyingCKKSItem:(id)item
{
  itemCopy = item;
  ckRecordType = [itemCopy ckRecordType];
  encodedCKRecord = [itemCopy encodedCKRecord];
  contextID = [itemCopy contextID];
  zoneID = [itemCopy zoneID];
  v25.receiver = self;
  v25.super_class = CKKSItem;
  v9 = [(CKKSCKRecordHolder *)&v25 initWithCKRecordType:ckRecordType encodedCKRecord:encodedCKRecord contextID:contextID zoneID:zoneID];

  if (v9)
  {
    uuid = [itemCopy uuid];
    uuid = v9->_uuid;
    v9->_uuid = uuid;

    parentKeyUUID = [itemCopy parentKeyUUID];
    parentKeyUUID = v9->_parentKeyUUID;
    v9->_parentKeyUUID = parentKeyUUID;

    v9->_generationCount = [itemCopy generationCount];
    encitem = [itemCopy encitem];
    encitem = v9->_encitem;
    v9->_encitem = encitem;

    wrappedkey = [itemCopy wrappedkey];
    wrappedkey = v9->_wrappedkey;
    v9->_wrappedkey = wrappedkey;

    v9->_encver = [itemCopy encver];
    plaintextPCSServiceIdentifier = [itemCopy plaintextPCSServiceIdentifier];
    plaintextPCSServiceIdentifier = v9->_plaintextPCSServiceIdentifier;
    v9->_plaintextPCSServiceIdentifier = plaintextPCSServiceIdentifier;

    plaintextPCSPublicKey = [itemCopy plaintextPCSPublicKey];
    plaintextPCSPublicKey = v9->_plaintextPCSPublicKey;
    v9->_plaintextPCSPublicKey = plaintextPCSPublicKey;

    plaintextPCSPublicIdentity = [itemCopy plaintextPCSPublicIdentity];
    plaintextPCSPublicIdentity = v9->_plaintextPCSPublicIdentity;
    v9->_plaintextPCSPublicIdentity = plaintextPCSPublicIdentity;
  }

  return v9;
}

- (CKKSItem)initWithCKRecord:(id)record contextID:(id)d
{
  v5.receiver = self;
  v5.super_class = CKKSItem;
  return [(CKKSCKRecordHolder *)&v5 initWithCKRecord:record contextID:d];
}

+ (BOOL)intransactionRecordDeleted:(id)deleted contextID:(id)d resync:(BOOL)resync error:(id *)error
{
  deletedCopy = deleted;
  dCopy = d;
  zoneID = [(__CFString *)deletedCopy zoneID];
  zoneName = [zoneID zoneName];
  v12 = sub_100019104(@"ckks", zoneName);

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v67 = @"item";
    v68 = 2112;
    v69 = deletedCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "CloudKit notification: deleted record(%@): %@", buf, 0x16u);
  }

  recordName = [(__CFString *)deletedCopy recordName];
  zoneID2 = [(__CFString *)deletedCopy zoneID];
  v15 = [CKKSMirrorEntry tryFromDatabase:recordName contextID:dCopy zoneID:zoneID2 error:error];

  if (!v15)
  {
LABEL_28:
    zoneID3 = [(__CFString *)deletedCopy zoneID];
    zoneName2 = [zoneID3 zoneName];
    v18 = sub_100019104(@"ckks", zoneName2);

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v67 = deletedCopy;
      v68 = 2112;
      v69 = v15;
      _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "CKKSMirrorEntry was deleted: %@ %@", buf, 0x16u);
    }

    v23 = 0;
    v29 = 1;
    goto LABEL_39;
  }

  v65 = 0;
  v16 = [(__CFString *)v15 deleteFromDatabase:&v65];
  v17 = v65;
  v18 = v17;
  if (v16)
  {
    v19 = [CKKSIncomingQueueEntry alloc];
    item = [(__CFString *)v15 item];
    v21 = [(CKKSIncomingQueueEntry *)v19 initWithCKKSItem:item action:@"delete" state:@"new"];

    v64 = 0;
    [(CKKSSQLDatabaseObject *)v21 saveToDatabase:&v64];
    v22 = v64;
    if (v22)
    {
      v23 = v22;
      zoneID4 = [(__CFString *)deletedCopy zoneID];
      zoneName3 = [zoneID4 zoneName];
      v26 = sub_100019104(@"ckks", zoneName3);

      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v67 = v23;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Couldn't save incoming queue entry: %@", buf, 0xCu);
      }

      if (error)
      {
        v27 = v23;
        *error = v23;
      }

      goto LABEL_38;
    }

    v56 = v21;
    uuid = [(CKKSIncomingQueueEntry *)v21 uuid];
    v73[0] = @"new";
    v73[1] = @"reencrypt";
    v73[2] = @"error";
    v31 = [NSArray arrayWithObjects:v73 count:3];
    zoneID5 = [(__CFString *)deletedCopy zoneID];
    v63 = 0;
    v33 = [CKKSOutgoingQueueEntry allWithUUID:uuid states:v31 contextID:dCopy zoneID:zoneID5 error:&v63];
    v34 = v63;

    if (v34)
    {
      zoneID6 = [(__CFString *)deletedCopy zoneID];
      zoneName4 = [zoneID6 zoneName];
      v37 = sub_100019104(@"ckks", zoneName4);

      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        uuid2 = [(CKKSIncomingQueueEntry *)v56 uuid];
        *buf = 138412546;
        v67 = uuid2;
        v68 = 2112;
        v69 = v34;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Couldn't load OQE sibling for %@: %@", buf, 0x16u);
      }

      v39 = v56;
      if (error)
      {
        v40 = v34;
        *error = v34;
      }

LABEL_36:
      goto LABEL_37;
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = v33;
    v41 = [obj countByEnumeratingWithState:&v59 objects:v72 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v60;
      while (2)
      {
        for (i = 0; i != v42; i = i + 1)
        {
          if (*v60 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v45 = *(*(&v59 + 1) + 8 * i);
          v58 = 0;
          [(__CFString *)v45 deleteFromDatabase:&v58];
          v46 = v58;
          if (v46)
          {
            v49 = v46;
            zoneID7 = [(__CFString *)deletedCopy zoneID];
            zoneName5 = [zoneID7 zoneName];
            v52 = sub_100019104(@"ckks", zoneName5);

            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              uuid3 = [(CKKSIncomingQueueEntry *)v56 uuid];
              *buf = 138412802;
              v67 = v45;
              v68 = 2112;
              v69 = uuid3;
              v70 = 2112;
              v71 = v49;
              _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Couldn't delete OQE sibling(%@) for %@: %@", buf, 0x20u);
            }

            v39 = v56;
            if (error)
            {
              v54 = v49;
              *error = v49;
            }

            goto LABEL_36;
          }
        }

        v42 = [obj countByEnumeratingWithState:&v59 objects:v72 count:16];
        if (v42)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_28;
  }

  if (!error)
  {
LABEL_37:
    v23 = 0;
LABEL_38:
    v29 = 0;
    goto LABEL_39;
  }

  v28 = v17;
  v23 = 0;
  v29 = 0;
  *error = v18;
LABEL_39:

  return v29;
}

+ (BOOL)intransactionRecordChanged:(id)changed contextID:(id)d resync:(BOOL)resync error:(id *)error
{
  resyncCopy = resync;
  changedCopy = changed;
  dCopy = d;
  recordID = [(CKKSMirrorEntry *)changedCopy recordID];
  recordName = [recordID recordName];
  recordID2 = [(CKKSMirrorEntry *)changedCopy recordID];
  zoneID = [recordID2 zoneID];
  v133 = 0;
  v14 = [CKKSMirrorEntry tryFromDatabase:recordName contextID:dCopy zoneID:zoneID error:&v133];
  v15 = v133;

  if (v15)
  {
    recordID3 = [(CKKSMirrorEntry *)changedCopy recordID];
    zoneID2 = [recordID3 zoneID];
    zoneName = [zoneID2 zoneName];
    v19 = sub_100019104(@"ckks", zoneName);

    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    *buf = 138412290;
    v137 = v15;
    v20 = "error loading a CKKSMirrorEntry from database: %@";
    v21 = v19;
    v22 = 12;
    goto LABEL_4;
  }

  if (resyncCopy)
  {
    if (v14)
    {
      v25 = [(CKKSMirrorEntry *)v14 matchesCKRecord:changedCopy];
      recordID4 = [(CKKSMirrorEntry *)changedCopy recordID];
      zoneID3 = [recordID4 zoneID];
      zoneName2 = [zoneID3 zoneName];
      v29 = sub_100019104(@"ckksresync", zoneName2);

      if (v25)
      {
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          recordID5 = [(CKKSMirrorEntry *)changedCopy recordID];
          *buf = 138412290;
          v137 = recordID5;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Already know about this item record, updating anyway: %@", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v137 = v14;
        v138 = 2112;
        v139 = changedCopy;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "BUG: Local item doesn't match resynced CloudKit record: %@ %@", buf, 0x16u);
      }

      goto LABEL_21;
    }

    recordID6 = [(CKKSMirrorEntry *)changedCopy recordID];
    zoneID4 = [recordID6 zoneID];
    zoneName3 = [zoneID4 zoneName];
    v34 = sub_100019104(@"ckksresync", zoneName3);

    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v137 = changedCopy;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "BUG: No local item matching resynced CloudKit record: %@", buf, 0xCu);
    }

LABEL_17:
    v14 = [[CKKSMirrorEntry alloc] initWithCKRecord:changedCopy contextID:dCopy];
    v35 = @"add";
    goto LABEL_35;
  }

  if (!v14)
  {
    goto LABEL_17;
  }

LABEL_21:
  item = [(CKKSMirrorEntry *)v14 item];
  if (item)
  {
    v37 = item;
    item2 = [(CKKSMirrorEntry *)v14 item];
    generationCount = [item2 generationCount];
    v40 = [(CKKSMirrorEntry *)changedCopy objectForKeyedSubscript:@"gen"];
    unsignedLongLongValue = [v40 unsignedLongLongValue];

    if (generationCount > unsignedLongLongValue)
    {
      recordID7 = [(CKKSMirrorEntry *)changedCopy recordID];
      zoneID5 = [recordID7 zoneID];
      zoneName4 = [zoneID5 zoneName];
      v45 = sub_100019104(@"ckks", zoneName4);

      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        uuid = [(CKKSMirrorEntry *)v14 uuid];
        item3 = [(CKKSMirrorEntry *)v14 item];
        generationCount2 = [item3 generationCount];
        v49 = [(CKKSMirrorEntry *)changedCopy objectForKeyedSubscript:@"gen"];
        *buf = 138412802;
        v137 = uuid;
        v138 = 2048;
        v139 = generationCount2;
        v140 = 2112;
        v141 = v49;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "received a record from CloudKit with a bad generation count: %@ (%ld > %@)", buf, 0x20u);
      }

      if (error)
      {
        uuid2 = [(CKKSMirrorEntry *)v14 uuid];
        item4 = [(CKKSMirrorEntry *)v14 item];
        generationCount3 = [item4 generationCount];
        v53 = [(CKKSMirrorEntry *)changedCopy objectForKeyedSubscript:@"gen"];
        v54 = [NSString stringWithFormat:@"Received a record(%@) with a bad generation count (%ld > %@)", uuid2, generationCount3, v53];
        *error = [NSError errorWithDomain:@"CKKSErrorDomain" code:58 description:v54];
      }

      v15 = 0;
      goto LABEL_28;
    }
  }

  if ([(CKKSMirrorEntry *)v14 matchesCKRecord:changedCopy]&& !resyncCopy)
  {
    recordID8 = [(CKKSMirrorEntry *)changedCopy recordID];
    zoneID6 = [recordID8 zoneID];
    zoneName5 = [zoneID6 zoneName];
    v58 = sub_100019104(@"ckks", zoneName5);

    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      uuid3 = [(CKKSMirrorEntry *)v14 uuid];
      *buf = 138412290;
      v137 = uuid3;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "CloudKit has told us of record we already know about for %@; skipping update", buf, 0xCu);
    }

    v15 = 0;
    v24 = 1;
    goto LABEL_85;
  }

  [(CKKSMirrorEntry *)v14 setFromCKRecord:changedCopy];
  v35 = @"modify";
LABEL_35:
  v132 = 0;
  v60 = [(CKKSSQLDatabaseObject *)v14 saveToDatabase:&v132];
  v15 = v132;
  recordID9 = [(CKKSMirrorEntry *)changedCopy recordID];
  zoneID7 = [recordID9 zoneID];
  zoneName6 = [zoneID7 zoneName];
  v19 = sub_100019104(@"ckks", zoneName6);

  if (!v60 || v15)
  {
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
LABEL_5:

      if (error)
      {
        v23 = v15;
        v24 = 0;
        *error = v15;
        goto LABEL_85;
      }

LABEL_28:
      v24 = 0;
      goto LABEL_85;
    }

    *buf = 138412546;
    v137 = changedCopy;
    v138 = 2112;
    v139 = v15;
    v20 = "couldn't save new CKRecord to database: %@ %@";
    v21 = v19;
    v22 = 22;
LABEL_4:
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, v20, buf, v22);
    goto LABEL_5;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v137 = v14;
    _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "CKKSMirrorEntry was created: %@", buf, 0xCu);
  }

  item5 = [(CKKSMirrorEntry *)v14 item];
  uuid4 = [item5 uuid];
  item6 = [(CKKSMirrorEntry *)v14 item];
  zoneID8 = [item6 zoneID];
  v131 = 0;
  v68 = [CKKSIncomingQueueEntry tryFromDatabase:uuid4 contextID:dCopy zoneID:zoneID8 error:&v131];
  v69 = v131;

  v121 = v69;
  if (v69)
  {
    recordID10 = [(CKKSMirrorEntry *)changedCopy recordID];
    zoneID9 = [recordID10 zoneID];
    zoneName7 = [zoneID9 zoneName];
    v73 = sub_100019104(@"ckks", zoneName7);

    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v137 = v121;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "Couldn't load possible existing incoming queue entry: %@", buf, 0xCu);
    }
  }

  if (v68)
  {
    recordID11 = [(CKKSMirrorEntry *)changedCopy recordID];
    zoneID10 = [recordID11 zoneID];
    zoneName8 = [zoneID10 zoneName];
    v77 = sub_100019104(@"ckks", zoneName8);

    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v137 = v68;
      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "Deleting existing CKKSIncomingQueueEntry: %@", buf, 0xCu);
    }

    v130 = 0;
    [(CKKSSQLDatabaseObject *)v68 deleteFromDatabase:&v130];
    v78 = v130;
    if (v78)
    {
      recordID12 = [(CKKSMirrorEntry *)changedCopy recordID];
      zoneID11 = [recordID12 zoneID];
      zoneName9 = [zoneID11 zoneName];
      v82 = sub_100019104(@"ckks", zoneName9);

      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v137 = v78;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "Couldn't delete existing incoming queue entry: %@", buf, 0xCu);
      }
    }
  }

  v120 = v68;
  v83 = [CKKSIncomingQueueEntry alloc];
  item7 = [(CKKSMirrorEntry *)v14 item];
  v85 = [(CKKSIncomingQueueEntry *)v83 initWithCKKSItem:item7 action:v35 state:@"new"];

  v129 = 0;
  LODWORD(v83) = [(CKKSSQLDatabaseObject *)v85 saveToDatabase:&v129];
  v86 = v129;
  recordID13 = [(CKKSMirrorEntry *)changedCopy recordID];
  zoneID12 = [recordID13 zoneID];
  zoneName10 = [zoneID12 zoneName];
  v90 = sub_100019104(@"ckks", zoneName10);

  v91 = v86;
  if (!v83 || v86)
  {
    if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v137 = v86;
      _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_ERROR, "Couldn't save modified incoming queue entry: %@", buf, 0xCu);
    }

    v109 = v120;
    if (error)
    {
      v110 = v86;
      v15 = 0;
      v24 = 0;
      *error = v91;
    }

    else
    {
      v15 = 0;
      v24 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v137 = v85;
      _os_log_debug_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEBUG, "CKKSIncomingQueueEntry was created: %@", buf, 0xCu);
    }

    uuid5 = [(CKKSIncomingQueueEntry *)v85 uuid];
    v135[0] = @"new";
    v135[1] = @"reencrypt";
    v135[2] = @"error";
    v93 = [NSArray arrayWithObjects:v135 count:3];
    recordID14 = [(CKKSMirrorEntry *)changedCopy recordID];
    zoneID13 = [recordID14 zoneID];
    v128 = 0;
    v96 = [CKKSOutgoingQueueEntry allWithUUID:uuid5 states:v93 contextID:dCopy zoneID:zoneID13 error:&v128];
    v15 = v128;

    if (!v96 || v15)
    {
      recordID15 = [(CKKSMirrorEntry *)changedCopy recordID];
      zoneID14 = [recordID15 zoneID];
      zoneName11 = [zoneID14 zoneName];
      v100 = sub_100019104(@"ckks", zoneName11);

      if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
      {
        uuid6 = [(CKKSIncomingQueueEntry *)v85 uuid];
        *buf = 138412546;
        v137 = uuid6;
        v138 = 2112;
        v139 = v15;
        _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_ERROR, "Couldn't load OQE sibling for %@: %@", buf, 0x16u);
      }
    }

    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v102 = v96;
    v103 = [v102 countByEnumeratingWithState:&v124 objects:v134 count:16];
    if (v103)
    {
      v104 = v103;
      v119 = v85;
      v105 = *v125;
      while (2)
      {
        for (i = 0; i != v104; i = i + 1)
        {
          if (*v125 != v105)
          {
            objc_enumerationMutation(v102);
          }

          v107 = *(*(&v124 + 1) + 8 * i);
          v123 = 0;
          [(CKKSSQLDatabaseObject *)v107 deleteFromDatabase:&v123];
          v108 = v123;
          if (v108)
          {
            v111 = v108;
            recordID16 = [(CKKSMirrorEntry *)changedCopy recordID];
            zoneID15 = [recordID16 zoneID];
            zoneName12 = [zoneID15 zoneName];
            oslog = sub_100019104(@"ckks", zoneName12);

            if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
            {
              uuid7 = [(CKKSIncomingQueueEntry *)v119 uuid];
              *buf = 138412802;
              v137 = v107;
              v138 = 2112;
              v139 = uuid7;
              v140 = 2112;
              v141 = v111;
              _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Couldn't delete OQE sibling(%@) for %@: %@", buf, 0x20u);
            }

            v91 = 0;
            if (error)
            {
              v116 = v111;
              *error = v111;
            }

            v24 = 0;
            v85 = v119;
            goto LABEL_83;
          }
        }

        v104 = [v102 countByEnumeratingWithState:&v124 objects:v134 count:16];
        if (v104)
        {
          continue;
        }

        break;
      }

      v24 = 1;
      v85 = v119;
    }

    else
    {
      v24 = 1;
    }

    v91 = 0;
LABEL_83:

    v109 = v120;
  }

LABEL_85:
  return v24;
}

+ (id)fromDatabaseRow:(id)row
{
  rowCopy = row;
  v24 = [CKKSItem alloc];
  v31 = [rowCopy objectForKeyedSubscript:@"UUID"];
  asString = [v31 asString];
  v29 = [rowCopy objectForKeyedSubscript:@"parentKeyUUID"];
  asString2 = [v29 asString];
  v28 = [rowCopy objectForKeyedSubscript:@"contextID"];
  asString3 = [v28 asString];
  v5 = [CKRecordZoneID alloc];
  v27 = [rowCopy objectForKeyedSubscript:@"ckzone"];
  asString4 = [v27 asString];
  v35 = [v5 initWithZoneName:? ownerName:?];
  v25 = [rowCopy objectForKeyedSubscript:@"ckrecord"];
  asBase64DecodedData = [v25 asBase64DecodedData];
  v23 = [rowCopy objectForKeyedSubscript:@"encitem"];
  asBase64DecodedData2 = [v23 asBase64DecodedData];
  v22 = [rowCopy objectForKeyedSubscript:@"wrappedkey"];
  asString5 = [v22 asString];
  v30 = asString;
  if (asString5)
  {
    v6 = [CKKSWrappedAESSIVKey alloc];
    v19 = [rowCopy objectForKeyedSubscript:@"wrappedkey"];
    asString6 = [v19 asString];
    v32 = [(CKKSWrappedAESSIVKey *)v6 initWithBase64:?];
  }

  else
  {
    v32 = 0;
  }

  v20 = [rowCopy objectForKeyedSubscript:@"gencount"];
  asNSInteger = [v20 asNSInteger];
  v8 = [rowCopy objectForKeyedSubscript:@"encver"];
  asNSInteger2 = [v8 asNSInteger];
  v10 = [rowCopy objectForKeyedSubscript:@"pcss"];
  asNSNumberInteger = [v10 asNSNumberInteger];
  v12 = [rowCopy objectForKeyedSubscript:@"pcsk"];
  asBase64DecodedData3 = [v12 asBase64DecodedData];
  v14 = [rowCopy objectForKeyedSubscript:@"pcsi"];
  asBase64DecodedData4 = [v14 asBase64DecodedData];
  v16 = [(CKKSItem *)v24 initWithUUID:v30 parentKeyUUID:asString2 contextID:asString3 zoneID:v35 encodedCKRecord:asBase64DecodedData encItem:asBase64DecodedData2 wrappedkey:v32 generationCount:asNSInteger encver:asNSInteger2 plaintextPCSServiceIdentifier:asNSNumberInteger plaintextPCSPublicKey:asBase64DecodedData3 plaintextPCSPublicIdentity:asBase64DecodedData4];

  if (asString5)
  {
  }

  return v16;
}

+ (void)setOSVersionInRecord:(id)record
{
  recordCopy = record;
  v4 = [OTDeviceInformationActualAdapter osVersion]_0();
  [recordCopy setObject:v4 forKeyedSubscript:@"uploadver"];
}

@end