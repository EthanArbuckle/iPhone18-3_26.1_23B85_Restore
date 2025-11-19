@interface CKKSItem
+ (BOOL)intransactionRecordChanged:(id)a3 contextID:(id)a4 resync:(BOOL)a5 error:(id *)a6;
+ (BOOL)intransactionRecordDeleted:(id)a3 contextID:(id)a4 resync:(BOOL)a5 error:(id *)a6;
+ (id)fromDatabaseRow:(id)a3;
+ (void)setOSVersionInRecord:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesCKRecord:(id)a3;
- (CKKSItem)initWithCKRecord:(id)a3 contextID:(id)a4;
- (CKKSItem)initWithUUID:(id)a3 parentKeyUUID:(id)a4 contextID:(id)a5 zoneID:(id)a6 encodedCKRecord:(id)a7 encItem:(id)a8 wrappedkey:(id)a9 generationCount:(unint64_t)a10 encver:(unint64_t)a11 plaintextPCSServiceIdentifier:(id)a12 plaintextPCSPublicKey:(id)a13 plaintextPCSPublicIdentity:(id)a14;
- (NSString)base64Item;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (id)initCopyingCKKSItem:(id)a3;
- (id)makeAuthenticatedDataDictionaryUpdatingCKKSItem:(id)a3 encryptionVersion:(unint64_t)a4;
- (id)makeAuthenticatedDataDictionaryUpdatingCKKSItemEncVer1;
- (id)makeAuthenticatedDataDictionaryUpdatingCKKSItemEncVer2:(id)a3;
- (id)sqlValues;
- (id)updateCKRecord:(id)a3 zoneID:(id)a4;
- (id)whereClauseToFindSelf;
- (void)setBase64Item:(id)a3;
- (void)setFromCKRecord:(id)a3;
@end

@implementation CKKSItem

- (id)sqlValues
{
  v40[0] = @"contextID";
  v3 = [(CKKSCKRecordHolder *)self contextID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[NSNull null];
  }

  v6 = v5;

  v39 = v6;
  v41[0] = v6;
  v40[1] = @"UUID";
  v38 = [(CKKSItem *)self uuid];
  v41[1] = v38;
  v40[2] = @"parentKeyUUID";
  v37 = [(CKKSItem *)self parentKeyUUID];
  v41[2] = v37;
  v40[3] = @"ckzone";
  v7 = [(CKKSCKRecordHolder *)self zoneID];
  v8 = [v7 zoneName];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = +[NSNull null];
  }

  v10 = v9;

  v36 = v10;
  v41[3] = v10;
  v40[4] = @"encitem";
  v35 = [(CKKSItem *)self base64Item];
  v41[4] = v35;
  v40[5] = @"wrappedkey";
  v34 = [(CKKSItem *)self wrappedkey];
  v11 = [v34 base64WrappedKey];
  v41[5] = v11;
  v40[6] = @"gencount";
  v12 = [NSNumber numberWithInteger:[(CKKSItem *)self generationCount]];
  v13 = [v12 stringValue];
  v41[6] = v13;
  v40[7] = @"encver";
  v14 = [NSNumber numberWithInteger:[(CKKSItem *)self encver]];
  v15 = [v14 stringValue];
  v41[7] = v15;
  v40[8] = @"ckrecord";
  v16 = [(CKKSCKRecordHolder *)self encodedCKRecord];
  v17 = [v16 base64EncodedStringWithOptions:0];

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
  v20 = [(CKKSItem *)self plaintextPCSServiceIdentifier];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = +[NSNull null];
  }

  v23 = v22;

  v41[9] = v23;
  v40[10] = @"pcsk";
  v24 = [(CKKSItem *)self plaintextPCSPublicKey];
  v25 = [v24 base64EncodedStringWithOptions:0];

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
  v28 = [(CKKSItem *)self plaintextPCSPublicIdentity];
  v29 = [v28 base64EncodedStringWithOptions:0];

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
  v3 = [(CKKSCKRecordHolder *)self contextID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[NSNull null];
  }

  v6 = v5;

  v13[0] = v6;
  v12[1] = @"UUID";
  v7 = [(CKKSItem *)self uuid];
  v13[1] = v7;
  v12[2] = @"ckzone";
  v8 = [(CKKSCKRecordHolder *)self zoneID];
  v9 = [v8 zoneName];
  v13[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];

  return v10;
}

- (void)setBase64Item:(id)a3
{
  v4 = a3;
  v5 = [[NSData alloc] initWithBase64EncodedString:v4 options:0];

  encitem = self->_encitem;
  self->_encitem = v5;
}

- (NSString)base64Item
{
  v2 = [(CKKSItem *)self encitem];
  v3 = [v2 base64EncodedStringWithOptions:0];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CKKSItem;
  v4 = [(CKKSCKRecordHolder *)&v6 copyWithZone:a3];
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
  v5 = [(CKKSItem *)self uuid];
  v6 = [NSString stringWithFormat:@"<%@: %@ %p>", v4, v5, self];

  return v6;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(CKKSItem *)self uuid];
  v6 = [NSString stringWithFormat:@"<%@: %@>", v4, v5];

  return v6;
}

- (id)makeAuthenticatedDataDictionaryUpdatingCKKSItemEncVer2:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [(CKKSItem *)self uuid];
  v7 = [v6 dataUsingEncoding:4];
  [v5 setObject:v7 forKeyedSubscript:@"UUID"];

  v8 = [(CKKSItem *)self parentKeyUUID];
  v9 = [v8 dataUsingEncoding:4];
  [v5 setObject:v9 forKeyedSubscript:@"wrappedkey"];

  v41 = [(CKKSItem *)self generationCount];
  v10 = [NSData dataWithBytes:&v41 length:8];
  [v5 setObject:v10 forKeyedSubscript:@"gen"];

  v40 = [(CKKSItem *)self encver];
  v11 = [NSData dataWithBytes:&v40 length:8];
  [v5 setObject:v11 forKeyedSubscript:@"encver"];

  v12 = [(CKKSItem *)self plaintextPCSServiceIdentifier];

  if (v12)
  {
    v13 = [(CKKSItem *)self plaintextPCSServiceIdentifier];
    v14 = [v13 unsignedLongValue];

    v39 = v14;
    v15 = [NSData dataWithBytes:&v39 length:8];
    [v5 setObject:v15 forKeyedSubscript:@"pcsservice"];
  }

  v16 = [(CKKSItem *)self plaintextPCSPublicKey];
  [v5 setObject:v16 forKeyedSubscript:@"pcspublickey"];

  v17 = [(CKKSItem *)self plaintextPCSPublicIdentity];
  [v5 setObject:v17 forKeyedSubscript:@"pcspublicidentity"];

  if (!v4)
  {
    goto LABEL_36;
  }

  v18 = [v4 storedCKRecord];
  if (!v18)
  {
    goto LABEL_35;
  }

  v32 = v5;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = v18;
  v19 = [v18 allKeys];
  v20 = [v19 countByEnumeratingWithState:&v35 objects:v42 count:16];
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
        objc_enumerationMutation(v19);
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
              v39 = [v34 unsignedLongLongValue];
              v25 = [NSData dataWithBytes:&v39 length:8];
              goto LABEL_24;
            }
          }
        }
      }

      v23 = v23 + 1;
    }

    while (v21 != v23);
    v26 = [v19 countByEnumeratingWithState:&v35 objects:v42 count:16];
    v21 = v26;
  }

  while (v26);
LABEL_34:

  v5 = v32;
  v18 = v33;
LABEL_35:

LABEL_36:

  return v5;
}

- (id)makeAuthenticatedDataDictionaryUpdatingCKKSItemEncVer1
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(CKKSItem *)self uuid];
  v5 = [v4 dataUsingEncoding:4];
  [v3 setObject:v5 forKeyedSubscript:@"UUID"];

  v6 = [(CKKSItem *)self parentKeyUUID];
  v7 = [v6 dataUsingEncoding:4];
  [v3 setObject:v7 forKeyedSubscript:@"wrappedkey"];

  v12 = [(CKKSItem *)self generationCount];
  v8 = [NSData dataWithBytes:&v12 length:8];
  [v3 setObject:v8 forKeyedSubscript:@"gen"];

  v11 = [(CKKSItem *)self encver];
  v9 = [NSData dataWithBytes:&v11 length:8];
  [v3 setObject:v9 forKeyedSubscript:@"encver"];

  [v3 setObject:0 forKeyedSubscript:@"pcsservice"];
  [v3 setObject:0 forKeyedSubscript:@"pcspublickey"];
  [v3 setObject:0 forKeyedSubscript:@"pcspublicidentity"];

  return v3;
}

- (id)makeAuthenticatedDataDictionaryUpdatingCKKSItem:(id)a3 encryptionVersion:(unint64_t)a4
{
  v6 = a3;
  if (a4 == 2)
  {
    v7 = [(CKKSItem *)self makeAuthenticatedDataDictionaryUpdatingCKKSItemEncVer2:v6];
  }

  else
  {
    if (a4 != 1)
    {
      v10 = [NSString stringWithFormat:@"%d is not a known encryption version", a4];
      v11 = [NSException exceptionWithName:@"WrongEncryptionVersionException" reason:v10 userInfo:0];
      v12 = v11;

      objc_exception_throw(v11);
    }

    v7 = [(CKKSItem *)self makeAuthenticatedDataDictionaryUpdatingCKKSItemEncVer1];
  }

  v8 = v7;

  return v8;
}

- (BOOL)matchesCKRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 recordType];
  v6 = [v5 isEqual:@"item"];

  if (!v6)
  {
    goto LABEL_41;
  }

  v7 = [v4 recordID];
  v8 = [v7 recordName];
  v9 = [(CKKSItem *)self uuid];
  v10 = [v8 isEqualToString:v9];

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

  v11 = [v4 objectForKeyedSubscript:@"parentkeyref"];
  v12 = [v11 recordID];
  v13 = [v12 recordName];
  v14 = [(CKKSItem *)self parentKeyUUID];
  v15 = [v13 isEqualToString:v14];

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

  v16 = [v4 objectForKeyedSubscript:@"gen"];
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

  v19 = [v4 objectForKeyedSubscript:@"wrappedkey"];
  v20 = [(CKKSItem *)self wrappedkey];
  v21 = [v20 base64WrappedKey];
  v22 = [v19 isEqual:v21];

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

  v23 = [v4 objectForKeyedSubscript:@"data"];
  v24 = [(CKKSItem *)self encitem];
  v25 = [v23 isEqual:v24];

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

  v26 = [v4 objectForKeyedSubscript:@"pcsservice"];
  if (v26 || ([(CKKSItem *)self plaintextPCSServiceIdentifier], (v24 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v27 = [v4 objectForKeyedSubscript:@"pcsservice"];
    v28 = [(CKKSItem *)self plaintextPCSServiceIdentifier];
    v29 = [v27 isEqual:v28];

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
  v30 = [v4 objectForKeyedSubscript:@"pcspublickey"];
  if (v30 || ([(CKKSItem *)self plaintextPCSPublicKey], (v24 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v31 = [v4 objectForKeyedSubscript:@"pcspublickey"];
    v32 = [(CKKSItem *)self plaintextPCSPublicKey];
    v33 = [v31 isEqual:v32];

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
  v34 = [v4 objectForKeyedSubscript:@"pcspublicidentity"];
  if (!v34)
  {
    v24 = [(CKKSItem *)self plaintextPCSPublicIdentity];
    if (!v24)
    {
      goto LABEL_19;
    }
  }

  v35 = [v4 objectForKeyedSubscript:@"pcspublicidentity"];
  v36 = [(CKKSItem *)self plaintextPCSPublicIdentity];
  v37 = [v35 isEqual:v36];

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

- (id)updateCKRecord:(id)a3 zoneID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 recordType];
  v9 = [v8 isEqual:@"item"];

  if ((v9 & 1) == 0)
  {
    v24 = [v6 recordType];
    v25 = [NSString stringWithFormat:@"CKRecordType (%@) was not %@", v24, @"item"];
    v26 = [NSException exceptionWithName:@"WrongCKRecordTypeException" reason:v25 userInfo:0];
    v27 = v26;

    objc_exception_throw(v26);
  }

  v10 = [CKReference alloc];
  v11 = [CKRecordID alloc];
  v12 = [(CKKSItem *)self parentKeyUUID];
  v13 = [v11 initWithRecordName:v12 zoneID:v7];
  v14 = [v10 initWithRecordID:v13 action:CKReferenceActionValidate];
  [v6 setObject:v14 forKeyedSubscript:@"parentkeyref"];

  [CKKSItem setOSVersionInRecord:v6];
  v15 = [(CKKSItem *)self encitem];
  [v6 setObject:v15 forKeyedSubscript:@"data"];

  v16 = [(CKKSItem *)self wrappedkey];
  v17 = [v16 base64WrappedKey];
  [v6 setObject:v17 forKeyedSubscript:@"wrappedkey"];

  v18 = [NSNumber numberWithInteger:[(CKKSItem *)self generationCount]];
  [v6 setObject:v18 forKeyedSubscript:@"gen"];

  v19 = [NSNumber numberWithInteger:[(CKKSItem *)self encver]];
  [v6 setObject:v19 forKeyedSubscript:@"encver"];

  v20 = [(CKKSItem *)self plaintextPCSServiceIdentifier];
  [v6 setObject:v20 forKeyedSubscript:@"pcsservice"];

  v21 = [(CKKSItem *)self plaintextPCSPublicKey];
  [v6 setObject:v21 forKeyedSubscript:@"pcspublickey"];

  v22 = [(CKKSItem *)self plaintextPCSPublicIdentity];
  [v6 setObject:v22 forKeyedSubscript:@"pcspublicidentity"];

  return v6;
}

- (void)setFromCKRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 recordType];
  v6 = [v5 isEqual:@"item"];

  if ((v6 & 1) == 0)
  {
    v26 = [v4 recordType];
    v27 = [NSString stringWithFormat:@"CKRecordType (%@) was not %@", v26, @"item"];
    v28 = [NSException exceptionWithName:@"WrongCKRecordTypeException" reason:v27 userInfo:0];
    v29 = v28;

    objc_exception_throw(v28);
  }

  [(CKKSCKRecordHolder *)self setStoredCKRecord:v4];
  v7 = [v4 recordID];
  v8 = [v7 recordName];
  uuid = self->_uuid;
  self->_uuid = v8;

  v10 = [v4 objectForKeyedSubscript:@"parentkeyref"];
  v11 = [v10 recordID];
  v12 = [v11 recordName];
  [(CKKSItem *)self setParentKeyUUID:v12];

  v13 = [v4 objectForKeyedSubscript:@"data"];
  [(CKKSItem *)self setEncitem:v13];

  v14 = [v4 objectForKeyedSubscript:@"wrappedkey"];
  if (v14)
  {
    v15 = [[CKKSWrappedAESSIVKey alloc] initWithBase64:v14];
  }

  else
  {
    v16 = [v4 recordID];
    v17 = [v16 zoneID];
    v18 = [v17 zoneName];
    v19 = sub_100019104(@"ckksitem", v18);

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Corrupt item recieved with no wrapped key", buf, 2u);
    }

    v15 = +[CKKSWrappedAESSIVKey zeroedKey];
  }

  v20 = v15;
  [(CKKSItem *)self setWrappedkey:v15];

  v21 = [v4 objectForKeyedSubscript:@"gen"];
  -[CKKSItem setGenerationCount:](self, "setGenerationCount:", [v21 unsignedIntegerValue]);

  v22 = [v4 objectForKeyedSubscript:@"encver"];
  -[CKKSItem setEncver:](self, "setEncver:", [v22 unsignedIntegerValue]);

  v23 = [v4 objectForKeyedSubscript:@"pcsservice"];
  [(CKKSItem *)self setPlaintextPCSServiceIdentifier:v23];

  v24 = [v4 objectForKeyedSubscript:@"pcspublickey"];
  [(CKKSItem *)self setPlaintextPCSPublicKey:v24];

  v25 = [v4 objectForKeyedSubscript:@"pcspublicidentity"];
  [(CKKSItem *)self setPlaintextPCSPublicIdentity:v25];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CKKSItem *)self uuid];
    v7 = [v5 uuid];
    if (![v6 isEqual:v7])
    {
      v14 = 0;
LABEL_37:

      goto LABEL_38;
    }

    v8 = [(CKKSItem *)self parentKeyUUID];
    v9 = [v5 parentKeyUUID];
    if (![v8 isEqual:v9])
    {
      v14 = 0;
LABEL_36:

      goto LABEL_37;
    }

    v10 = [(CKKSCKRecordHolder *)self zoneID];
    v11 = [v5 zoneID];
    v34 = v10;
    if (![v10 isEqual:v11])
    {
      v14 = 0;
LABEL_35:

      goto LABEL_36;
    }

    v12 = [(CKKSCKRecordHolder *)self contextID];
    if (v12 || ([v5 contextID], (v27 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v13 = [(CKKSCKRecordHolder *)self contextID];
      v31 = [v5 contextID];
      v32 = v13;
      if (![v13 isEqualToString:?])
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

    v33 = [(CKKSItem *)self encitem];
    if (v33 || ([v5 encitem], (v22 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v15 = [(CKKSItem *)self encitem];
      v28 = [v5 encitem];
      v29 = v15;
      if (![v15 isEqual:v28])
      {
        v14 = 0;
        goto LABEL_28;
      }

      v26 = v12;
      v25 = 1;
    }

    else
    {
      v26 = v12;
      v23 = 0;
      v25 = 0;
    }

    v16 = [(CKKSItem *)self wrappedkey];
    v17 = [v5 wrappedkey];
    v24 = v16;
    if ([v16 isEqual:v17] && (v18 = -[CKKSItem generationCount](self, "generationCount"), v18 == objc_msgSend(v5, "generationCount")))
    {
      v19 = [(CKKSItem *)self encver];
      v14 = v19 == [v5 encver];

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
        v12 = v26;
        if (v33)
        {
        }

        else
        {
        }

        if ((v30 & 1) == 0)
        {
LABEL_32:
          if (!v12)
          {
          }

          goto LABEL_35;
        }

LABEL_31:

        goto LABEL_32;
      }
    }

    v12 = v26;
LABEL_28:

    v20 = v33;
    if (!v33)
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

- (CKKSItem)initWithUUID:(id)a3 parentKeyUUID:(id)a4 contextID:(id)a5 zoneID:(id)a6 encodedCKRecord:(id)a7 encItem:(id)a8 wrappedkey:(id)a9 generationCount:(unint64_t)a10 encver:(unint64_t)a11 plaintextPCSServiceIdentifier:(id)a12 plaintextPCSPublicKey:(id)a13 plaintextPCSPublicIdentity:(id)a14
{
  v30 = a3;
  v29 = a4;
  v19 = a8;
  v28 = a9;
  v27 = a12;
  v20 = a13;
  v21 = a14;
  v31.receiver = self;
  v31.super_class = CKKSItem;
  v22 = [(CKKSCKRecordHolder *)&v31 initWithCKRecordType:@"item" encodedCKRecord:a7 contextID:a5 zoneID:a6];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_uuid, a3);
    objc_storeStrong(&v23->_parentKeyUUID, a4);
    v23->_generationCount = a10;
    [(CKKSItem *)v23 setEncitem:v19];
    objc_storeStrong(&v23->_wrappedkey, a9);
    v23->_encver = a11;
    objc_storeStrong(&v23->_plaintextPCSServiceIdentifier, a12);
    objc_storeStrong(&v23->_plaintextPCSPublicKey, a13);
    objc_storeStrong(&v23->_plaintextPCSPublicIdentity, a14);
  }

  return v23;
}

- (id)initCopyingCKKSItem:(id)a3
{
  v4 = a3;
  v5 = [v4 ckRecordType];
  v6 = [v4 encodedCKRecord];
  v7 = [v4 contextID];
  v8 = [v4 zoneID];
  v25.receiver = self;
  v25.super_class = CKKSItem;
  v9 = [(CKKSCKRecordHolder *)&v25 initWithCKRecordType:v5 encodedCKRecord:v6 contextID:v7 zoneID:v8];

  if (v9)
  {
    v10 = [v4 uuid];
    uuid = v9->_uuid;
    v9->_uuid = v10;

    v12 = [v4 parentKeyUUID];
    parentKeyUUID = v9->_parentKeyUUID;
    v9->_parentKeyUUID = v12;

    v9->_generationCount = [v4 generationCount];
    v14 = [v4 encitem];
    encitem = v9->_encitem;
    v9->_encitem = v14;

    v16 = [v4 wrappedkey];
    wrappedkey = v9->_wrappedkey;
    v9->_wrappedkey = v16;

    v9->_encver = [v4 encver];
    v18 = [v4 plaintextPCSServiceIdentifier];
    plaintextPCSServiceIdentifier = v9->_plaintextPCSServiceIdentifier;
    v9->_plaintextPCSServiceIdentifier = v18;

    v20 = [v4 plaintextPCSPublicKey];
    plaintextPCSPublicKey = v9->_plaintextPCSPublicKey;
    v9->_plaintextPCSPublicKey = v20;

    v22 = [v4 plaintextPCSPublicIdentity];
    plaintextPCSPublicIdentity = v9->_plaintextPCSPublicIdentity;
    v9->_plaintextPCSPublicIdentity = v22;
  }

  return v9;
}

- (CKKSItem)initWithCKRecord:(id)a3 contextID:(id)a4
{
  v5.receiver = self;
  v5.super_class = CKKSItem;
  return [(CKKSCKRecordHolder *)&v5 initWithCKRecord:a3 contextID:a4];
}

+ (BOOL)intransactionRecordDeleted:(id)a3 contextID:(id)a4 resync:(BOOL)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = [(__CFString *)v8 zoneID];
  v11 = [v10 zoneName];
  v12 = sub_100019104(@"ckks", v11);

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v67 = @"item";
    v68 = 2112;
    v69 = v8;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "CloudKit notification: deleted record(%@): %@", buf, 0x16u);
  }

  v13 = [(__CFString *)v8 recordName];
  v14 = [(__CFString *)v8 zoneID];
  v15 = [CKKSMirrorEntry tryFromDatabase:v13 contextID:v9 zoneID:v14 error:a6];

  if (!v15)
  {
LABEL_28:
    v47 = [(__CFString *)v8 zoneID];
    v48 = [v47 zoneName];
    v18 = sub_100019104(@"ckks", v48);

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v67 = v8;
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
    v20 = [(__CFString *)v15 item];
    v21 = [(CKKSIncomingQueueEntry *)v19 initWithCKKSItem:v20 action:@"delete" state:@"new"];

    v64 = 0;
    [(CKKSSQLDatabaseObject *)v21 saveToDatabase:&v64];
    v22 = v64;
    if (v22)
    {
      v23 = v22;
      v24 = [(__CFString *)v8 zoneID];
      v25 = [v24 zoneName];
      v26 = sub_100019104(@"ckks", v25);

      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v67 = v23;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Couldn't save incoming queue entry: %@", buf, 0xCu);
      }

      if (a6)
      {
        v27 = v23;
        *a6 = v23;
      }

      goto LABEL_38;
    }

    v56 = v21;
    v30 = [(CKKSIncomingQueueEntry *)v21 uuid];
    v73[0] = @"new";
    v73[1] = @"reencrypt";
    v73[2] = @"error";
    v31 = [NSArray arrayWithObjects:v73 count:3];
    v32 = [(__CFString *)v8 zoneID];
    v63 = 0;
    v33 = [CKKSOutgoingQueueEntry allWithUUID:v30 states:v31 contextID:v9 zoneID:v32 error:&v63];
    v34 = v63;

    if (v34)
    {
      v35 = [(__CFString *)v8 zoneID];
      v36 = [v35 zoneName];
      v37 = sub_100019104(@"ckks", v36);

      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = [(CKKSIncomingQueueEntry *)v56 uuid];
        *buf = 138412546;
        v67 = v38;
        v68 = 2112;
        v69 = v34;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Couldn't load OQE sibling for %@: %@", buf, 0x16u);
      }

      v39 = v56;
      if (a6)
      {
        v40 = v34;
        *a6 = v34;
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
            v50 = [(__CFString *)v8 zoneID];
            v51 = [v50 zoneName];
            v52 = sub_100019104(@"ckks", v51);

            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              v53 = [(CKKSIncomingQueueEntry *)v56 uuid];
              *buf = 138412802;
              v67 = v45;
              v68 = 2112;
              v69 = v53;
              v70 = 2112;
              v71 = v49;
              _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Couldn't delete OQE sibling(%@) for %@: %@", buf, 0x20u);
            }

            v39 = v56;
            if (a6)
            {
              v54 = v49;
              *a6 = v49;
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

  if (!a6)
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
  *a6 = v18;
LABEL_39:

  return v29;
}

+ (BOOL)intransactionRecordChanged:(id)a3 contextID:(id)a4 resync:(BOOL)a5 error:(id *)a6
{
  v6 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(CKKSMirrorEntry *)v8 recordID];
  v11 = [v10 recordName];
  v12 = [(CKKSMirrorEntry *)v8 recordID];
  v13 = [v12 zoneID];
  v133 = 0;
  v14 = [CKKSMirrorEntry tryFromDatabase:v11 contextID:v9 zoneID:v13 error:&v133];
  v15 = v133;

  if (v15)
  {
    v16 = [(CKKSMirrorEntry *)v8 recordID];
    v17 = [v16 zoneID];
    v18 = [v17 zoneName];
    v19 = sub_100019104(@"ckks", v18);

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

  if (v6)
  {
    if (v14)
    {
      v25 = [(CKKSMirrorEntry *)v14 matchesCKRecord:v8];
      v26 = [(CKKSMirrorEntry *)v8 recordID];
      v27 = [v26 zoneID];
      v28 = [v27 zoneName];
      v29 = sub_100019104(@"ckksresync", v28);

      if (v25)
      {
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [(CKKSMirrorEntry *)v8 recordID];
          *buf = 138412290;
          v137 = v30;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Already know about this item record, updating anyway: %@", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v137 = v14;
        v138 = 2112;
        v139 = v8;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "BUG: Local item doesn't match resynced CloudKit record: %@ %@", buf, 0x16u);
      }

      goto LABEL_21;
    }

    v31 = [(CKKSMirrorEntry *)v8 recordID];
    v32 = [v31 zoneID];
    v33 = [v32 zoneName];
    v34 = sub_100019104(@"ckksresync", v33);

    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v137 = v8;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "BUG: No local item matching resynced CloudKit record: %@", buf, 0xCu);
    }

LABEL_17:
    v14 = [[CKKSMirrorEntry alloc] initWithCKRecord:v8 contextID:v9];
    v35 = @"add";
    goto LABEL_35;
  }

  if (!v14)
  {
    goto LABEL_17;
  }

LABEL_21:
  v36 = [(CKKSMirrorEntry *)v14 item];
  if (v36)
  {
    v37 = v36;
    v38 = [(CKKSMirrorEntry *)v14 item];
    v39 = [v38 generationCount];
    v40 = [(CKKSMirrorEntry *)v8 objectForKeyedSubscript:@"gen"];
    v41 = [v40 unsignedLongLongValue];

    if (v39 > v41)
    {
      v42 = [(CKKSMirrorEntry *)v8 recordID];
      v43 = [v42 zoneID];
      v44 = [v43 zoneName];
      v45 = sub_100019104(@"ckks", v44);

      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v46 = [(CKKSMirrorEntry *)v14 uuid];
        v47 = [(CKKSMirrorEntry *)v14 item];
        v48 = [v47 generationCount];
        v49 = [(CKKSMirrorEntry *)v8 objectForKeyedSubscript:@"gen"];
        *buf = 138412802;
        v137 = v46;
        v138 = 2048;
        v139 = v48;
        v140 = 2112;
        v141 = v49;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "received a record from CloudKit with a bad generation count: %@ (%ld > %@)", buf, 0x20u);
      }

      if (a6)
      {
        v50 = [(CKKSMirrorEntry *)v14 uuid];
        v51 = [(CKKSMirrorEntry *)v14 item];
        v52 = [v51 generationCount];
        v53 = [(CKKSMirrorEntry *)v8 objectForKeyedSubscript:@"gen"];
        v54 = [NSString stringWithFormat:@"Received a record(%@) with a bad generation count (%ld > %@)", v50, v52, v53];
        *a6 = [NSError errorWithDomain:@"CKKSErrorDomain" code:58 description:v54];
      }

      v15 = 0;
      goto LABEL_28;
    }
  }

  if ([(CKKSMirrorEntry *)v14 matchesCKRecord:v8]&& !v6)
  {
    v55 = [(CKKSMirrorEntry *)v8 recordID];
    v56 = [v55 zoneID];
    v57 = [v56 zoneName];
    v58 = sub_100019104(@"ckks", v57);

    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v59 = [(CKKSMirrorEntry *)v14 uuid];
      *buf = 138412290;
      v137 = v59;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "CloudKit has told us of record we already know about for %@; skipping update", buf, 0xCu);
    }

    v15 = 0;
    v24 = 1;
    goto LABEL_85;
  }

  [(CKKSMirrorEntry *)v14 setFromCKRecord:v8];
  v35 = @"modify";
LABEL_35:
  v132 = 0;
  v60 = [(CKKSSQLDatabaseObject *)v14 saveToDatabase:&v132];
  v15 = v132;
  v61 = [(CKKSMirrorEntry *)v8 recordID];
  v62 = [v61 zoneID];
  v63 = [v62 zoneName];
  v19 = sub_100019104(@"ckks", v63);

  if (!v60 || v15)
  {
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
LABEL_5:

      if (a6)
      {
        v23 = v15;
        v24 = 0;
        *a6 = v15;
        goto LABEL_85;
      }

LABEL_28:
      v24 = 0;
      goto LABEL_85;
    }

    *buf = 138412546;
    v137 = v8;
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

  v64 = [(CKKSMirrorEntry *)v14 item];
  v65 = [v64 uuid];
  v66 = [(CKKSMirrorEntry *)v14 item];
  v67 = [v66 zoneID];
  v131 = 0;
  v68 = [CKKSIncomingQueueEntry tryFromDatabase:v65 contextID:v9 zoneID:v67 error:&v131];
  v69 = v131;

  v121 = v69;
  if (v69)
  {
    v70 = [(CKKSMirrorEntry *)v8 recordID];
    v71 = [v70 zoneID];
    v72 = [v71 zoneName];
    v73 = sub_100019104(@"ckks", v72);

    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v137 = v121;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "Couldn't load possible existing incoming queue entry: %@", buf, 0xCu);
    }
  }

  if (v68)
  {
    v74 = [(CKKSMirrorEntry *)v8 recordID];
    v75 = [v74 zoneID];
    v76 = [v75 zoneName];
    v77 = sub_100019104(@"ckks", v76);

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
      v79 = [(CKKSMirrorEntry *)v8 recordID];
      v80 = [v79 zoneID];
      v81 = [v80 zoneName];
      v82 = sub_100019104(@"ckks", v81);

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
  v84 = [(CKKSMirrorEntry *)v14 item];
  v85 = [(CKKSIncomingQueueEntry *)v83 initWithCKKSItem:v84 action:v35 state:@"new"];

  v129 = 0;
  LODWORD(v83) = [(CKKSSQLDatabaseObject *)v85 saveToDatabase:&v129];
  v86 = v129;
  v87 = [(CKKSMirrorEntry *)v8 recordID];
  v88 = [v87 zoneID];
  v89 = [v88 zoneName];
  v90 = sub_100019104(@"ckks", v89);

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
    if (a6)
    {
      v110 = v86;
      v15 = 0;
      v24 = 0;
      *a6 = v91;
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

    v92 = [(CKKSIncomingQueueEntry *)v85 uuid];
    v135[0] = @"new";
    v135[1] = @"reencrypt";
    v135[2] = @"error";
    v93 = [NSArray arrayWithObjects:v135 count:3];
    v94 = [(CKKSMirrorEntry *)v8 recordID];
    v95 = [v94 zoneID];
    v128 = 0;
    v96 = [CKKSOutgoingQueueEntry allWithUUID:v92 states:v93 contextID:v9 zoneID:v95 error:&v128];
    v15 = v128;

    if (!v96 || v15)
    {
      v97 = [(CKKSMirrorEntry *)v8 recordID];
      v98 = [v97 zoneID];
      v99 = [v98 zoneName];
      v100 = sub_100019104(@"ckks", v99);

      if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
      {
        v101 = [(CKKSIncomingQueueEntry *)v85 uuid];
        *buf = 138412546;
        v137 = v101;
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
            v112 = [(CKKSMirrorEntry *)v8 recordID];
            v113 = [v112 zoneID];
            v114 = [v113 zoneName];
            oslog = sub_100019104(@"ckks", v114);

            if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
            {
              v115 = [(CKKSIncomingQueueEntry *)v119 uuid];
              *buf = 138412802;
              v137 = v107;
              v138 = 2112;
              v139 = v115;
              v140 = 2112;
              v141 = v111;
              _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Couldn't delete OQE sibling(%@) for %@: %@", buf, 0x20u);
            }

            v91 = 0;
            if (a6)
            {
              v116 = v111;
              *a6 = v111;
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

+ (id)fromDatabaseRow:(id)a3
{
  v3 = a3;
  v24 = [CKKSItem alloc];
  v31 = [v3 objectForKeyedSubscript:@"UUID"];
  v4 = [v31 asString];
  v29 = [v3 objectForKeyedSubscript:@"parentKeyUUID"];
  v37 = [v29 asString];
  v28 = [v3 objectForKeyedSubscript:@"contextID"];
  v36 = [v28 asString];
  v5 = [CKRecordZoneID alloc];
  v27 = [v3 objectForKeyedSubscript:@"ckzone"];
  v26 = [v27 asString];
  v35 = [v5 initWithZoneName:? ownerName:?];
  v25 = [v3 objectForKeyedSubscript:@"ckrecord"];
  v34 = [v25 asBase64DecodedData];
  v23 = [v3 objectForKeyedSubscript:@"encitem"];
  v33 = [v23 asBase64DecodedData];
  v22 = [v3 objectForKeyedSubscript:@"wrappedkey"];
  v21 = [v22 asString];
  v30 = v4;
  if (v21)
  {
    v6 = [CKKSWrappedAESSIVKey alloc];
    v19 = [v3 objectForKeyedSubscript:@"wrappedkey"];
    v18 = [v19 asString];
    v32 = [(CKKSWrappedAESSIVKey *)v6 initWithBase64:?];
  }

  else
  {
    v32 = 0;
  }

  v20 = [v3 objectForKeyedSubscript:@"gencount"];
  v7 = [v20 asNSInteger];
  v8 = [v3 objectForKeyedSubscript:@"encver"];
  v9 = [v8 asNSInteger];
  v10 = [v3 objectForKeyedSubscript:@"pcss"];
  v11 = [v10 asNSNumberInteger];
  v12 = [v3 objectForKeyedSubscript:@"pcsk"];
  v13 = [v12 asBase64DecodedData];
  v14 = [v3 objectForKeyedSubscript:@"pcsi"];
  v15 = [v14 asBase64DecodedData];
  v16 = [(CKKSItem *)v24 initWithUUID:v30 parentKeyUUID:v37 contextID:v36 zoneID:v35 encodedCKRecord:v34 encItem:v33 wrappedkey:v32 generationCount:v7 encver:v9 plaintextPCSServiceIdentifier:v11 plaintextPCSPublicKey:v13 plaintextPCSPublicIdentity:v15];

  if (v21)
  {
  }

  return v16;
}

+ (void)setOSVersionInRecord:(id)a3
{
  v3 = a3;
  v4 = [OTDeviceInformationActualAdapter osVersion]_0();
  [v3 setObject:v4 forKeyedSubscript:@"uploadver"];
}

@end