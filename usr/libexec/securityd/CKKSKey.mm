@interface CKKSKey
+ (BOOL)intransactionRecordChanged:(id)a3 contextID:(id)a4 resync:(BOOL)a5 flagHandler:(id)a6 error:(id *)a7;
+ (BOOL)intransactionRecordDeleted:(id)a3 contextID:(id)a4 error:(id *)a5;
+ (id)allKeysForContextID:(id)a3 zoneID:(id)a4 error:(id *)a5;
+ (id)countsByClassWithContextID:(id)a3 zoneID:(id)a4 error:(id *)a5;
+ (id)countsWithContextID:(id)a3 zoneID:(id)a4 error:(id *)a5;
+ (id)currentKeyForClass:(id)a3 contextID:(id)a4 zoneID:(id)a5 error:(id *)a6;
+ (id)currentKeysForClass:(id)a3 contextID:(id)a4 state:(id)a5 zoneID:(id)a6 error:(id *)a7;
+ (id)fromDatabase:(id)a3 contextID:(id)a4 zoneID:(id)a5 error:(id *)a6;
+ (id)fromDatabaseAnyState:(id)a3 contextID:(id)a4 zoneID:(id)a5 error:(id *)a6;
+ (id)fromDatabaseRow:(id)a3;
+ (id)isItemKeyForKeychainView:(SecDbItem *)a3;
+ (id)loadFromProtobuf:(id)a3 contextID:(id)a4 error:(id *)a5;
+ (id)loadKeyWithUUID:(id)a3 contextID:(id)a4 zoneID:(id)a5 error:(id *)a6;
+ (id)localKeysForContextID:(id)a3 zoneID:(id)a4 error:(id *)a5;
+ (id)randomKeyWrappedByParent:(id)a3 error:(id *)a4;
+ (id)randomKeyWrappedByParent:(id)a3 keyclass:(id)a4 error:(id *)a5;
+ (id)randomKeyWrappedBySelf:(id)a3 contextID:(id)a4 error:(id *)a5;
+ (id)remoteKeysForContextID:(id)a3 zoneID:(id)a4 error:(id *)a5;
+ (id)selfWrappedKeysForContextID:(id)a3 zoneID:(id)a4 error:(id *)a5;
+ (id)tryFromDatabase:(id)a3 contextID:(id)a4 zoneID:(id)a5 error:(id *)a6;
+ (id)tryFromDatabaseAnyState:(id)a3 contextID:(id)a4 zoneID:(id)a5 error:(id *)a6;
- (BOOL)deleteKeyMaterialFromKeychain:(id *)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)loadKeyMaterialFromKeychain:(id *)a3;
- (BOOL)matchesCKRecord:(id)a3;
- (BOOL)saveKeyMaterialToKeychain:(id *)a3;
- (BOOL)saveToDatabaseAsOnlyCurrentKeyForClassAndState:(id *)a3;
- (BOOL)tlkMaterialPresentOrRecoverableViaTLKShareForContextID:(id)a3 forTrustStates:(id)a4 error:(id *)a5;
- (BOOL)trySelfWrappedKeyCandidate:(id)a3 error:(id *)a4;
- (BOOL)unwrapViaTLKSharesTrustedBy:(id)a3 contextID:(id)a4 error:(id *)a5;
- (BOOL)validTLK:(id *)a3;
- (BOOL)wrapUnder:(id)a3 error:(id *)a4;
- (BOOL)wrapsSelf;
- (CKKSKey)init;
- (CKKSKey)initWithKeyCore:(id)a3 contextID:(id)a4 state:(id)a5 currentkey:(BOOL)a6;
- (CKKSKey)initWithWrappedKeyData:(id)a3 contextID:(id)a4 uuid:(id)a5 parentKeyUUID:(id)a6 keyclass:(id)a7 state:(id)a8 zoneID:(id)a9 encodedCKRecord:(id)a10 currentkey:(int64_t)a11;
- (NSData)wrappedKeyData;
- (NSString)zoneName;
- (id)copyWithZone:(_NSZone *)a3;
- (id)decryptData:(id)a3 authenticatedData:(id)a4 error:(id *)a5;
- (id)description;
- (id)encryptData:(id)a3 authenticatedData:(id)a4 error:(id *)a5;
- (id)ensureKeyLoadedForContextID:(id)a3 cache:(id)a4 error:(id *)a5;
- (id)getKeychainBackedKey:(id *)a3;
- (id)initSelfWrappedWithAESKey:(id)a3 contextID:(id)a4 uuid:(id)a5 keyclass:(id)a6 state:(id)a7 zoneID:(id)a8 encodedCKRecord:(id)a9 currentkey:(int64_t)a10;
- (id)serializeAsProtobuf:(id *)a3;
- (id)sqlValues;
- (id)topKeyInAnyState:(id *)a3;
- (id)unwrapAESKey:(id)a3 error:(id *)a4;
- (id)unwrapViaKeyHierarchy:(id)a3 error:(id *)a4;
- (id)updateCKRecord:(id)a3 zoneID:(id)a4;
- (id)whereClauseToFindSelf;
- (id)wrapAESKey:(id)a3 error:(id *)a4;
- (void)dealloc;
- (void)setFromCKRecord:(id)a3;
@end

@implementation CKKSKey

- (id)serializeAsProtobuf:(id *)a3
{
  v5 = [(CKKSCKRecordHolder *)self contextID];
  v6 = [(CKKSKey *)self ensureKeyLoadedForContextID:v5 cache:0 error:a3];

  if (v6)
  {
    v7 = objc_alloc_init(CKKSSerializedKey);
    v8 = [(CKKSKey *)self uuid];
    [(CKKSSerializedKey *)v7 setUuid:v8];

    v9 = [(CKKSCKRecordHolder *)self zoneID];
    v10 = [v9 zoneName];
    [(CKKSSerializedKey *)v7 setZoneName:v10];

    v11 = [(CKKSKey *)self keyclass];
    [(CKKSSerializedKey *)v7 setKeyclass:v11];

    v12 = [(CKKSKey *)self keycore];
    v13 = [v12 aessivkey];
    v14 = [(CKKSKey *)self keycore];
    v15 = [v14 aessivkey];
    v16 = [NSData _newZeroingDataWithBytes:v13 + 8 length:v15[11]];
    [(CKKSSerializedKey *)v7 setKey:v16];

    v17 = [(CKKSSerializedKey *)v7 data];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = CKKSKey;
  v5 = [(CKKSCKRecordHolder *)&v9 copyWithZone:?];
  v6 = [(CKKSKeychainBackedKey *)self->_keycore copyWithZone:a3];
  v7 = *(v5 + 12);
  *(v5 + 12) = v6;

  objc_storeStrong(v5 + 11, self->_state);
  *(v5 + 56) = self->_currentkey;
  return v5;
}

- (id)sqlValues
{
  v31[0] = @"contextID";
  v30 = [(CKKSCKRecordHolder *)self contextID];
  v32[0] = v30;
  v31[1] = @"UUID";
  v3 = [(CKKSKey *)self uuid];
  v32[1] = v3;
  v31[2] = @"parentKeyUUID";
  v4 = [(CKKSKey *)self parentKeyUUID];
  if (v4)
  {
    [(CKKSKey *)self parentKeyUUID];
  }

  else
  {
    [(CKKSKey *)self uuid];
  }
  v5 = ;
  v32[2] = v5;
  v31[3] = @"ckzone";
  v6 = [(CKKSCKRecordHolder *)self zoneID];
  v7 = [v6 zoneName];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = +[NSNull null];
  }

  v9 = v8;

  v32[3] = v9;
  v31[4] = @"ckrecord";
  v10 = [(CKKSCKRecordHolder *)self encodedCKRecord];
  v11 = [v10 base64EncodedStringWithOptions:0];

  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = +[NSNull null];
  }

  v13 = v12;

  v32[4] = v13;
  v31[5] = @"keyclass";
  v14 = [(CKKSKey *)self keyclass];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = +[NSNull null];
  }

  v17 = v16;

  v32[5] = v17;
  v31[6] = @"state";
  v18 = [(CKKSKey *)self state];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = +[NSNull null];
  }

  v21 = v20;

  v32[6] = v21;
  v31[7] = @"wrappedkey";
  v22 = [(CKKSKey *)self wrappedKeyData];
  v23 = [v22 base64EncodedDataWithOptions:0];

  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = +[NSNull null];
  }

  v25 = v24;

  v32[7] = v25;
  v31[8] = @"currentkey";
  v26 = [(CKKSKey *)self currentkey];
  v27 = @"0";
  if (v26)
  {
    v27 = @"1";
  }

  v32[8] = v27;
  v28 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:9];

  return v28;
}

- (id)whereClauseToFindSelf
{
  v10[0] = @"contextID";
  v3 = [(CKKSCKRecordHolder *)self contextID];
  v11[0] = v3;
  v10[1] = @"UUID";
  v4 = [(CKKSKey *)self uuid];
  v11[1] = v4;
  v10[2] = @"state";
  v5 = [(CKKSKey *)self state];
  v11[2] = v5;
  v10[3] = @"ckzone";
  v6 = [(CKKSCKRecordHolder *)self zoneID];
  v7 = [v6 zoneName];
  v11[3] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];

  return v8;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(CKKSCKRecordHolder *)self contextID];
  v6 = [(CKKSCKRecordHolder *)self zoneID];
  v7 = [v6 zoneName];
  v8 = [(CKKSKey *)self uuid];
  v9 = [(CKKSKey *)self keyclass];
  v10 = [(CKKSKey *)self state];
  v11 = [NSString stringWithFormat:@"<%@[%@](%@): %@ (%@, %@:%d)>", v4, v5, v7, v8, v9, v10, [(CKKSKey *)self currentkey]];

  return v11;
}

- (BOOL)matchesCKRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 recordType];
  v6 = [v5 isEqual:@"synckey"];

  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = [v4 recordID];
  v8 = [v7 recordName];
  v9 = [(CKKSKey *)self uuid];
  v10 = [v8 isEqualToString:v9];

  if ((v10 & 1) == 0)
  {
    v17 = sub_100019104(@"ckkskey", 0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v18 = "UUID does not match";
      v19 = buf;
      goto LABEL_22;
    }

    goto LABEL_8;
  }

  v11 = [v4 objectForKeyedSubscript:@"parentkeyref"];

  if (v11)
  {
    v12 = [v4 objectForKeyedSubscript:@"parentkeyref"];
    v13 = [v12 recordID];
    v14 = [v13 recordName];
    v15 = [(CKKSKey *)self parentKeyUUID];
    v16 = [v14 isEqualToString:v15];

    if ((v16 & 1) == 0)
    {
      v17 = sub_100019104(@"ckkskey", 0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v31 = 0;
        v18 = "wrapping key reference (non-self-wrapped) does not match";
        v19 = &v31;
LABEL_22:
        _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, v18, v19, 2u);
        goto LABEL_8;
      }

      goto LABEL_8;
    }
  }

  else if (![(CKKSKey *)self wrapsSelf])
  {
    v17 = sub_100019104(@"ckkskey", 0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v32 = 0;
      v18 = "wrapping key reference (self-wrapped) does not match";
      v19 = &v32;
      goto LABEL_22;
    }

    goto LABEL_8;
  }

  v22 = [v4 objectForKeyedSubscript:@"class"];
  v23 = [(CKKSKey *)self keyclass];
  v24 = [v22 isEqual:v23];

  if (v24)
  {
    v25 = [v4 objectForKeyedSubscript:@"wrappedkey"];
    v26 = [(CKKSKey *)self wrappedKeyData];
    v27 = [v26 base64EncodedStringWithOptions:0];
    v28 = [v25 isEqual:v27];

    if (v28)
    {
      v20 = 1;
      goto LABEL_10;
    }

    v17 = sub_100019104(@"ckkskey", 0);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_8;
    }

    v29 = 0;
    v18 = "wrapped key does not match";
    v19 = &v29;
    goto LABEL_22;
  }

  v17 = sub_100019104(@"ckkskey", 0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v30 = 0;
    v18 = "key class does not match";
    v19 = &v30;
    goto LABEL_22;
  }

LABEL_8:

LABEL_9:
  v20 = 0;
LABEL_10:

  return v20;
}

- (id)updateCKRecord:(id)a3 zoneID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 recordType];
  v9 = [v8 isEqual:@"synckey"];

  if ((v9 & 1) == 0)
  {
    v22 = [v6 recordType];
    v23 = [NSString stringWithFormat:@"CKRecordType (%@) was not %@", v22, @"synckey"];
    v24 = [NSException exceptionWithName:@"WrongCKRecordTypeException" reason:v23 userInfo:0];
    v25 = v24;

    objc_exception_throw(v24);
  }

  v10 = [(CKKSKey *)self parentKeyUUID];
  v11 = [(CKKSKey *)self uuid];
  v12 = [v10 isEqual:v11];

  if (v12)
  {
    [v6 setObject:0 forKeyedSubscript:@"parentkeyref"];
  }

  else
  {
    v13 = [CKReference alloc];
    v14 = [CKRecordID alloc];
    v15 = [(CKKSKey *)self parentKeyUUID];
    v16 = [v14 initWithRecordName:v15 zoneID:v7];
    v17 = [v13 initWithRecordID:v16 action:CKReferenceActionValidate];
    [v6 setObject:v17 forKeyedSubscript:@"parentkeyref"];
  }

  [CKKSItem setOSVersionInRecord:v6];
  v18 = [(CKKSKey *)self keyclass];
  [v6 setObject:v18 forKeyedSubscript:@"class"];

  v19 = [(CKKSKey *)self wrappedKeyData];
  v20 = [v19 base64EncodedStringWithOptions:0];
  [v6 setObject:v20 forKeyedSubscript:@"wrappedkey"];

  return v6;
}

- (void)setFromCKRecord:(id)a3
{
  v20 = a3;
  v4 = [v20 recordType];
  v5 = [v4 isEqual:@"synckey"];

  if ((v5 & 1) == 0)
  {
    v16 = [v20 recordType];
    v17 = [NSString stringWithFormat:@"CKRecordType (%@) was not %@", v16, @"synckey"];
    v18 = [NSException exceptionWithName:@"WrongCKRecordTypeException" reason:v17 userInfo:0];
    v19 = v18;

    objc_exception_throw(v18);
  }

  [(CKKSCKRecordHolder *)self setStoredCKRecord:v20];
  v6 = [v20 recordID];
  v7 = [v6 recordName];
  [(CKKSKey *)self setUuid:v7];

  v8 = [v20 objectForKeyedSubscript:@"parentkeyref"];

  if (v8)
  {
    v9 = [v20 objectForKeyedSubscript:@"parentkeyref"];
    v10 = [v9 recordID];
    v11 = [v10 recordName];
    [(CKKSKey *)self setParentKeyUUID:v11];
  }

  else
  {
    v9 = [(CKKSKey *)self uuid];
    [(CKKSKey *)self setParentKeyUUID:v9];
  }

  v12 = [v20 objectForKeyedSubscript:@"class"];
  [(CKKSKey *)self setKeyclass:v12];

  v13 = [NSData alloc];
  v14 = [v20 objectForKeyedSubscript:@"wrappedkey"];
  v15 = [v13 initWithBase64EncodedString:v14 options:0];
  [(CKKSKey *)self setWrappedKeyDataBackingStore:v15];

  [(CKKSKey *)self setKeycore:0];
  [(CKKSKey *)self setState:@"remote"];
}

- (BOOL)saveToDatabaseAsOnlyCurrentKeyForClassAndState:(id *)a3
{
  [(CKKSKey *)self setCurrentkey:1];
  v5 = [(CKKSKey *)self keyclass];
  v6 = [(CKKSCKRecordHolder *)self contextID];
  v7 = [(CKKSKey *)self state];
  v8 = [(CKKSCKRecordHolder *)self zoneID];
  v9 = [CKKSKey currentKeysForClass:v5 contextID:v6 state:v7 zoneID:v8 error:a3];

  if (v9)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          [v15 setCurrentkey:{0, v18}];
          if (![v15 saveToDatabase:a3])
          {

            goto LABEL_12;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v16 = [(CKKSSQLDatabaseObject *)self saveToDatabase:a3];
  }

  else
  {
LABEL_12:
    v16 = 0;
  }

  return v16;
}

- (BOOL)deleteKeyMaterialFromKeychain:(id *)a3
{
  v5 = [(CKKSKey *)self getKeychainBackedKey:?];

  if (!v5)
  {
    return 0;
  }

  v6 = [(CKKSKey *)self keycore];
  v7 = [v6 deleteKeyMaterialFromKeychain:a3];

  return v7;
}

- (BOOL)loadKeyMaterialFromKeychain:(id *)a3
{
  v5 = [(CKKSKey *)self getKeychainBackedKey:?];

  if (!v5)
  {
    return 0;
  }

  v6 = [(CKKSKey *)self keycore];
  v7 = [v6 loadKeyMaterialFromKeychain:a3];

  return v7;
}

- (BOOL)saveKeyMaterialToKeychain:(id *)a3
{
  v5 = [(CKKSKey *)self getKeychainBackedKey:?];

  if (!v5)
  {
    return 0;
  }

  v6 = [(CKKSKey *)self keycore];
  v7 = [v6 saveKeyMaterialToKeychain:1 error:a3];

  return v7;
}

- (id)decryptData:(id)a3 authenticatedData:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(CKKSKey *)self getKeychainBackedKey:a5];

  if (v10)
  {
    v11 = [(CKKSKey *)self keycore];
    v12 = [v11 decryptData:v8 authenticatedData:v9 error:a5];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)encryptData:(id)a3 authenticatedData:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(CKKSKey *)self getKeychainBackedKey:a5];

  if (v10)
  {
    v11 = [(CKKSKey *)self keycore];
    v12 = [v11 encryptData:v8 authenticatedData:v9 error:a5];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)unwrapAESKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CKKSKey *)self getKeychainBackedKey:a4];

  if (v7)
  {
    v8 = [(CKKSKey *)self keycore];
    v9 = [v8 unwrapAESKey:v6 error:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)wrapAESKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CKKSKey *)self getKeychainBackedKey:a4];

  if (v7)
  {
    v8 = [(CKKSKey *)self keycore];
    v9 = [v8 wrapAESKey:v6 error:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)trySelfWrappedKeyCandidate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CKKSKey *)self getKeychainBackedKey:a4];

  if (v7)
  {
    v8 = [(CKKSKey *)self keycore];
    v9 = [v8 trySelfWrappedKeyCandidate:v6 error:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)tlkMaterialPresentOrRecoverableViaTLKShareForContextID:(id)a3 forTrustStates:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(CKKSKey *)self getKeychainBackedKey:a5];

  if (v10)
  {
    v40 = 0;
    v11 = [(CKKSKey *)self ensureKeyLoadedForContextID:v8 cache:0 error:&v40];
    v12 = v40;

    if (v11)
    {
      v13 = [(CKKSKey *)self keycore];
      v39 = v12;
      v11 = [v13 ensureKeyLoadedFromKeychain:&v39];
      v14 = v39;

      if (v11 && !v14)
      {
        v38 = 0;
        v15 = [(CKKSKey *)self trySelfWrappedKeyCandidate:v11 error:&v38];
        v12 = v38;
        if (v15)
        {
          v16 = 1;
LABEL_34:

          goto LABEL_35;
        }

        v23 = [(CKKSKey *)self zoneName];
        v19 = sub_100019104(@"ckksshare", v23);

        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v42 = v12;
          v22 = "Some key is present, but the key is not self-wrapped: %@";
          goto LABEL_18;
        }

        goto LABEL_19;
      }

      v12 = v14;
    }

    v17 = [v12 code];
    v18 = [(CKKSKey *)self zoneName];
    v19 = sub_100019104(@"ckksshare", v18);

    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (v17 == -25308)
    {
      if (v20)
      {
        *buf = 138412290;
        v42 = v12;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Unable to load key due to lock state: %@", buf, 0xCu);
      }

      if (a5)
      {
        v21 = v12;
        v16 = 0;
        *a5 = v12;
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_34;
    }

    if (v20)
    {
      *buf = 138412290;
      v42 = v12;
      v22 = "Do not yet have this key in the keychain: %@";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, v22, buf, 0xCu);
    }

LABEL_19:

    v37 = 0;
    v24 = [(CKKSKey *)self unwrapViaTLKSharesTrustedBy:v9 contextID:v8 error:&v37];
    v25 = v37;
    v26 = v25;
    if (!v24 || v25)
    {
      v31 = [(CKKSKey *)self zoneName];
      v32 = sub_100019104(@"ckksshare", v31);

      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = [(CKKSKey *)self uuid];
        *buf = 138412546;
        v42 = v33;
        v43 = 2112;
        v44 = v26;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Failed to unwrap tlk(%@) via shares: %@", buf, 0x16u);
      }

      if (!a5)
      {
        v16 = 0;
        goto LABEL_33;
      }
    }

    else
    {
      v36 = 0;
      v16 = 1;
      v27 = [(CKKSKey *)self saveKeyMaterialToKeychain:1 error:&v36];
      v28 = v36;
      v26 = v28;
      if (v27 && !v28)
      {
        goto LABEL_33;
      }

      v29 = [(CKKSKey *)self zoneName];
      v30 = sub_100019104(@"ckksshare", v29);

      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v42 = v26;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Errored saving TLK to keychain: %@", buf, 0xCu);
      }

      if (!a5)
      {
        v16 = 1;
LABEL_33:

        goto LABEL_34;
      }
    }

    v34 = v26;
    v16 = 0;
    *a5 = v26;
    goto LABEL_33;
  }

  v16 = 0;
LABEL_35:

  return v16;
}

- (BOOL)validTLK:(id *)a3
{
  v5 = [(CKKSKey *)self wrapsSelf];
  if (!v5)
  {
    v6 = [(CKKSKey *)self parentKeyUUID];
    v7 = [NSString stringWithFormat:@"Potential TLK %@ doesn't wrap itself: %@", self, v6];
    v8 = [NSError errorWithDomain:@"CKKSErrorDomain" code:18 description:v7 underlying:0];

    v9 = [(CKKSKey *)self zoneName];
    v10 = sub_100019104(@"ckksshare", v9);

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error with TLK: %@", buf, 0xCu);
    }

    if (a3)
    {
      v11 = v8;
      *a3 = v8;
    }
  }

  return v5;
}

- (BOOL)unwrapViaTLKSharesTrustedBy:(id)a3 contextID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v49 = a4;
  if ([v8 count])
  {
    v40 = a5;
    v41 = v8;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = v8;
    v44 = [obj countByEnumeratingWithState:&v58 objects:v69 count:16];
    v9 = 0;
    if (v44)
    {
      v43 = *v59;
      v50 = self;
LABEL_4:
      v10 = 0;
      v11 = v9;
      while (1)
      {
        if (*v59 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v58 + 1) + 8 * v10);
        v13 = objc_autoreleasePoolPush();
        v51 = objc_alloc_init(NSMutableArray);
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v14 = [v12 currentSelfPeers];
        v15 = [v14 allSelves];

        v16 = [v15 countByEnumeratingWithState:&v54 objects:v68 count:16];
        if (v16)
        {
          v17 = v16;
          v45 = v12;
          v46 = v10;
          v47 = v13;
          v48 = v11;
          v18 = 0;
          v19 = *v55;
          do
          {
            v20 = 0;
            v21 = v18;
            do
            {
              if (*v55 != v19)
              {
                objc_enumerationMutation(v15);
              }

              v22 = [*(*(&v54 + 1) + 8 * v20) peerID];
              v23 = [(CKKSKey *)v50 uuid];
              v24 = [(CKKSCKRecordHolder *)v50 zoneID];
              v53 = v21;
              v25 = [CKKSTLKShareRecord allFor:v22 contextID:v49 keyUUID:v23 zoneID:v24 error:&v53];
              v18 = v53;

              [v51 addObjectsFromArray:v25];
              v20 = v20 + 1;
              v21 = v18;
            }

            while (v17 != v20);
            v17 = [v15 countByEnumeratingWithState:&v54 objects:v68 count:16];
          }

          while (v17);

          v13 = v47;
          v11 = v48;
          v12 = v45;
          v10 = v46;
          if (v18)
          {
            v34 = [(CKKSKey *)v50 zoneName];
            v35 = sub_100019104(@"ckksshare", v34);

            v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
            v8 = v41;
            if (v36)
            {
              *buf = 138412546;
              v63 = v50;
              v64 = 2112;
              v65 = v18;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Unable to load TLK shares for TLK(%@): %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v47);
            v31 = v40;
            if (v40)
            {
              v37 = v18;
              *v40 = v18;
              goto LABEL_34;
            }

            LOBYTE(a5) = 0;
            goto LABEL_37;
          }
        }

        else
        {
        }

        v52 = 0;
        v26 = [v12 unwrapKey:v50 fromShares:v51 error:{&v52, v40}];
        v9 = v52;
        v27 = [(CKKSKey *)v50 zoneName];
        v28 = sub_100019104(@"ckksshare", v27);

        v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
        if (v26 && !v9)
        {
          if (v29)
          {
            v33 = [(CKKSKey *)v50 uuid];
            *buf = 138412546;
            v63 = v33;
            v64 = 2112;
            v65 = v12;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Recovered tlk (%@) from trust state (%@)", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v13);
          v18 = 0;
          LOBYTE(a5) = 1;
          goto LABEL_36;
        }

        if (v29)
        {
          v30 = [(CKKSKey *)v50 uuid];
          *buf = 138412802;
          v63 = v30;
          v64 = 2112;
          v65 = v12;
          v66 = 2112;
          v67 = v9;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to recover tlk (%@) from trust state (%@): %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v13);
        v10 = v10 + 1;
        v11 = v9;
        if (v10 == v44)
        {
          v44 = [obj countByEnumeratingWithState:&v58 objects:v69 count:16];
          if (v44)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v18 = 0;
    v31 = v40;
    if (v40)
    {
      v11 = v9;
      v8 = v41;
LABEL_34:
      v38 = v11;
      LOBYTE(a5) = 0;
      *v31 = v11;
    }

    else
    {
      LOBYTE(a5) = 0;
      v11 = v9;
LABEL_36:
      v8 = v41;
    }

LABEL_37:
  }

  else if (a5)
  {
    v32 = a5;
    [NSError errorWithDomain:@"CKKSErrorDomain" code:52 description:@"No current trust states; can't unwrap TLK"];
    *v32 = LOBYTE(a5) = 0;
  }

  return a5;
}

- (id)unwrapViaKeyHierarchy:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CKKSKey *)self getKeychainBackedKey:a4];

  if (v7)
  {
    v8 = [(CKKSKey *)self keycore];
    v9 = [v8 aessivkey];

    v10 = [(CKKSKey *)self keycore];
    v11 = v10;
    if (v9)
    {
      v12 = [v10 aessivkey];
    }

    else
    {
      v42 = 0;
      v13 = [v10 loadKeyMaterialFromKeychain:&v42];
      v14 = v42;

      if (v13)
      {
        v15 = [(CKKSKey *)self keycore];
        v12 = [v15 aessivkey];
      }

      else
      {
        v16 = [(CKKSKey *)self keyclass];
        v17 = [v16 isEqual:@"tlk"];

        if (!v17)
        {
          goto LABEL_12;
        }

        v18 = [(CKKSKey *)self parentKeyUUID];
        if (!v18)
        {
          goto LABEL_10;
        }

        v19 = v18;
        v20 = [(CKKSKey *)self parentKeyUUID];
        v21 = [(CKKSKey *)self uuid];
        v22 = [v20 isEqualToString:v21];

        if (v22)
        {
LABEL_10:
          if (a4)
          {
            v23 = v14;
            v12 = 0;
            *a4 = v14;
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
LABEL_12:
          v24 = [(CKKSKey *)self parentKeyUUID];
          v25 = [(CKKSCKRecordHolder *)self contextID];
          v26 = [(CKKSCKRecordHolder *)self zoneID];
          if (v6)
          {
            v41 = 0;
            v27 = &v41;
            v28 = [v6 loadKeyForUUID:v24 contextID:v25 zoneID:v26 error:&v41];
          }

          else
          {
            v40 = 0;
            v27 = &v40;
            v28 = [CKKSKey fromDatabaseAnyState:v24 contextID:v25 zoneID:v26 error:&v40];
          }

          v29 = v28;
          v30 = *v27;

          if (v30 || !v29)
          {
            v31 = sub_100019104(@"ckks", 0);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v44 = v30;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Errored fetching parent key: %@", buf, 0xCu);
            }

            if (a4)
            {
              v32 = v30;
              *a4 = v30;
            }
          }

          v33 = [v29 unwrapViaKeyHierarchy:v6 error:a4];

          if (v33)
          {
            v34 = [(CKKSKey *)self keycore];
            v35 = [v34 wrappedkey];
            v36 = [v29 unwrapAESKey:v35 error:a4];
            v37 = [(CKKSKey *)self keycore];
            [v37 setAessivkey:v36];

            v38 = [(CKKSKey *)self keycore];
            v12 = [v38 aessivkey];
          }

          else
          {
            v12 = 0;
          }
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)ensureKeyLoadedForContextID:(id)a3 cache:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [(CKKSKey *)self getKeychainBackedKey:a5];

  if (v8)
  {
    v9 = [(CKKSKey *)self keycore];
    v25 = 0;
    v10 = [v9 ensureKeyLoadedFromKeychain:&v25];
    v11 = v25;

    if (v10)
    {
      v12 = [(CKKSKey *)self keycore];
    }

    else
    {
      v24 = 0;
      v13 = [(CKKSKey *)self unwrapViaKeyHierarchy:v7 error:&v24];
      v14 = v24;

      if (v13)
      {
        v23 = 0;
        v15 = [(CKKSKey *)self saveKeyMaterialToKeychain:&v23];
        v16 = v23;
        v17 = v16;
        if (!v15 || v16)
        {
          v18 = [(CKKSCKRecordHolder *)self zoneID];
          v19 = [v18 zoneName];
          v20 = sub_100019104(@"ckkskey", v19);

          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v27 = v17;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Resaving missing key failed, continuing: %@", buf, 0xCu);
          }
        }

        v12 = [(CKKSKey *)self keycore];
      }

      else if (a5)
      {
        if (v14)
        {
          v21 = v14;
        }

        else
        {
          v21 = v11;
        }

        v12 = 0;
        *a5 = v21;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)topKeyInAnyState:(id *)a3
{
  v5 = objc_alloc_init(NSMutableSet);
  v6 = self;
  if (!v6)
  {
    goto LABEL_11;
  }

  do
  {
    if ([(CKKSKey *)v6 wrapsSelf])
    {
      v6 = v6;
      v12 = v6;
      goto LABEL_12;
    }

    v7 = [(CKKSKey *)v6 uuid];
    v8 = [v5 containsObject:v7];

    if (v8)
    {
      break;
    }

    v9 = [(CKKSKey *)v6 uuid];
    [v5 addObject:v9];

    v18[0] = @"UUID";
    v10 = [(CKKSKey *)v6 parentKeyUUID];
    v18[1] = @"state";
    v19[0] = v10;
    v19[1] = @"remote";
    v11 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
    v12 = [(CKKSSQLDatabaseObject *)CKKSKey tryFromDatabaseWhere:v11 error:a3];

    if (!v12)
    {
      v16 = @"UUID";
      v13 = [(CKKSKey *)v6 parentKeyUUID];
      v17 = v13;
      v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v12 = [(CKKSSQLDatabaseObject *)CKKSKey fromDatabaseWhere:v14 error:a3];
    }

    v6 = v12;
  }

  while (v12);
  if (a3)
  {
    [NSError errorWithDomain:@"CKKSErrorDomain" code:54 description:@"Circular reference in key hierarchy"];
    *a3 = v12 = 0;
  }

  else
  {
LABEL_11:
    v12 = 0;
  }

LABEL_12:

  return v12;
}

- (BOOL)wrapUnder:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CKKSKey *)self getKeychainBackedKey:a4];

  if (v7 && (-[CKKSKey keycore](self, "keycore"), v8 = objc_claimAutoreleasedReturnValue(), [v6 keycore], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "wrapUnder:error:", v9, a4), v9, v8, v10))
  {
    v11 = [(CKKSKey *)self keycore];
    v12 = [v11 parentKeyUUID];
    [(CKKSKey *)self setParentKeyUUID:v12];

    v13 = [(CKKSKey *)self keycore];
    v14 = [v13 wrappedkey];
    v15 = [v14 wrappedData];
    [(CKKSKey *)self setWrappedKeyDataBackingStore:v15];

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)wrapsSelf
{
  v3 = [(CKKSKey *)self uuid];
  v4 = [(CKKSKey *)self parentKeyUUID];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (NSString)zoneName
{
  v2 = [(CKKSCKRecordHolder *)self zoneID];
  v3 = [v2 zoneName];

  return v3;
}

- (NSData)wrappedKeyData
{
  v3 = [(CKKSKey *)self keycore];

  if (v3)
  {
    v4 = [(CKKSKey *)self keycore];
    v5 = [v4 wrappedkey];
    v6 = [v5 wrappedData];
    v7 = [(CKKSKey *)self wrappedKeyDataBackingStore];
    v8 = [v6 isEqualToData:v7];

    if ((v8 & 1) == 0)
    {
      v9 = [(CKKSCKRecordHolder *)self zoneID];
      v10 = [v9 zoneName];
      v11 = sub_100019104(@"ckkskey", v10);

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Probable bug: wrapped key data does not match cached version", v19, 2u);
      }

      v12 = [(CKKSKey *)self keycore];
      v13 = [v12 wrappedkey];
      v14 = [v13 wrappedData];
      [(CKKSKey *)self setWrappedKeyDataBackingStore:v14];
    }

    v15 = [(CKKSKey *)self keycore];
    v16 = [v15 wrappedkey];
    v17 = [v16 wrappedData];
  }

  else
  {
    v17 = [(CKKSKey *)self wrappedKeyDataBackingStore];
  }

  return v17;
}

- (id)getKeychainBackedKey:(id *)a3
{
  v5 = [(CKKSKey *)self keycore];

  if (v5)
  {
    v6 = [(CKKSKey *)self keycore];
  }

  else
  {
    v7 = [(CKKSKey *)self wrappedKeyDataBackingStore];
    v8 = [v7 length];

    if (v8 == 80)
    {
      v9 = [CKKSWrappedAESSIVKey alloc];
      v10 = [(CKKSKey *)self wrappedKeyDataBackingStore];
      v11 = [(CKKSWrappedAESSIVKey *)v9 initWithData:v10];

      v12 = [CKKSKeychainBackedKey alloc];
      v13 = [(CKKSKey *)self uuid];
      v14 = [(CKKSKey *)self parentKeyUUID];
      v15 = [(CKKSKey *)self keyclass];
      v16 = [(CKKSCKRecordHolder *)self zoneID];
      v17 = [(CKKSKeychainBackedKey *)v12 initWithWrappedAESKey:v11 uuid:v13 parentKeyUUID:v14 keyclass:v15 zoneID:v16];
      [(CKKSKey *)self setKeycore:v17];

      v6 = [(CKKSKey *)self keycore];
    }

    else if (a3)
    {
      [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 description:@"Wrong key size"];
      *a3 = v6 = 0;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CKKSKey *)self uuid];
    v7 = [v5 uuid];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(CKKSKey *)self parentKeyUUID];
      v9 = [v5 parentKeyUUID];
      if ([v8 isEqualToString:v9])
      {
        v10 = [(CKKSKey *)self wrappedKeyData];
        v11 = [v5 wrappedKeyData];
        if ([v10 isEqualToData:v11])
        {
          v12 = [(CKKSCKRecordHolder *)self zoneID];
          v13 = [v5 zoneID];
          v20 = v12;
          v14 = v12;
          v15 = v13;
          if ([v14 isEqual:v13])
          {
            v19 = [(CKKSKey *)self keyclass];
            v18 = [v5 keyclass];
            v16 = [v19 isEqual:v18];
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CKKSKey;
  [(CKKSKey *)&v2 dealloc];
}

- (CKKSKey)initWithKeyCore:(id)a3 contextID:(id)a4 state:(id)a5 currentkey:(BOOL)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a4;
  v14 = [v11 zoneID];
  v26.receiver = self;
  v26.super_class = CKKSKey;
  v15 = [(CKKSCKRecordHolder *)&v26 initWithCKRecordType:@"synckey" encodedCKRecord:0 contextID:v13 zoneID:v14];

  if (v15)
  {
    objc_storeStrong(&v15->_keycore, a3);
    v16 = [(CKKSKeychainBackedKey *)v15->_keycore wrappedkey];
    v17 = [v16 wrappedData];
    wrappedKeyDataBackingStore = v15->_wrappedKeyDataBackingStore;
    v15->_wrappedKeyDataBackingStore = v17;

    v19 = [v11 uuid];
    uuid = v15->_uuid;
    v15->_uuid = v19;

    v21 = [v11 parentKeyUUID];
    parentKeyUUID = v15->_parentKeyUUID;
    v15->_parentKeyUUID = v21;

    v23 = [v11 keyclass];
    keyclass = v15->_keyclass;
    v15->_keyclass = v23;

    v15->_currentkey = a6;
    objc_storeStrong(&v15->_state, a5);
  }

  return v15;
}

- (CKKSKey)initWithWrappedKeyData:(id)a3 contextID:(id)a4 uuid:(id)a5 parentKeyUUID:(id)a6 keyclass:(id)a7 state:(id)a8 zoneID:(id)a9 encodedCKRecord:(id)a10 currentkey:(int64_t)a11
{
  v25 = a3;
  v24 = a5;
  v23 = a6;
  v22 = a7;
  v18 = a8;
  v26.receiver = self;
  v26.super_class = CKKSKey;
  v19 = [(CKKSCKRecordHolder *)&v26 initWithCKRecordType:@"synckey" encodedCKRecord:a10 contextID:a4 zoneID:a9];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_wrappedKeyDataBackingStore, a3);
    objc_storeStrong(&v20->_uuid, a5);
    objc_storeStrong(&v20->_parentKeyUUID, a6);
    objc_storeStrong(&v20->_keyclass, a7);
    v20->_currentkey = a11 != 0;
    objc_storeStrong(&v20->_state, a8);
  }

  return v20;
}

- (id)initSelfWrappedWithAESKey:(id)a3 contextID:(id)a4 uuid:(id)a5 keyclass:(id)a6 state:(id)a7 zoneID:(id)a8 encodedCKRecord:(id)a9 currentkey:(int64_t)a10
{
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v31 = a7;
  v19 = a8;
  v33.receiver = self;
  v33.super_class = CKKSKey;
  v20 = [(CKKSCKRecordHolder *)&v33 initWithCKRecordType:@"synckey" encodedCKRecord:a9 contextID:a4 zoneID:v19];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_uuid, a5);
    objc_storeStrong(&v21->_parentKeyUUID, a5);
    objc_storeStrong(&v21->_keyclass, a6);
    v32 = 0;
    v22 = [CKKSKeychainBackedKey keyWrappedBySelf:v16 uuid:v17 keyclass:v18 zoneID:v19 error:&v32, v31];
    v23 = v32;
    keycore = v21->_keycore;
    v21->_keycore = v22;

    v25 = v21->_keycore;
    if (!v25)
    {

      v29 = 0;
      goto LABEL_6;
    }

    v26 = [(CKKSKeychainBackedKey *)v25 wrappedkey];
    v27 = [v26 wrappedData];
    wrappedKeyDataBackingStore = v21->_wrappedKeyDataBackingStore;
    v21->_wrappedKeyDataBackingStore = v27;

    v21->_currentkey = a10 != 0;
    objc_storeStrong(&v21->_state, a7);
  }

  v29 = v21;
LABEL_6:

  return v29;
}

- (CKKSKey)init
{
  v3.receiver = self;
  v3.super_class = CKKSKey;
  return [(CKKSKey *)&v3 init];
}

+ (BOOL)intransactionRecordDeleted:(id)a3 contextID:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  while (1)
  {
    v9 = [v7 recordName];
    v10 = [v7 zoneID];
    v25 = 0;
    v11 = [CKKSKey tryFromDatabaseAnyState:v9 contextID:v8 zoneID:v10 error:&v25];
    v12 = v25;

    if (!v11)
    {
      break;
    }

    v24 = 0;
    [v11 deleteFromDatabase:&v24];
    v13 = v24;
    if (v13)
    {
      v19 = v13;
      v20 = [v7 zoneID];
      v21 = [v20 zoneName];
      v22 = sub_100019104(@"ckkskey", v21);

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v27 = v7;
        v28 = 2112;
        v29 = v19;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Couldn't delete key record from database: %@: %@", buf, 0x16u);
      }

LABEL_13:
      v18 = 0;
      goto LABEL_15;
    }
  }

  if (v12)
  {
    v14 = [v7 zoneID];
    v15 = [v14 zoneName];
    v16 = sub_100019104(@"ckkskey", v15);

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v27 = v7;
      v28 = 2112;
      v29 = v12;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Couldn't load key record from database: %@: %@", buf, 0x16u);
    }

    if (a5)
    {
      v17 = v12;
      v18 = 0;
      *a5 = v12;
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v18 = 1;
LABEL_15:

  return v18;
}

+ (BOOL)intransactionRecordChanged:(id)a3 contextID:(id)a4 resync:(BOOL)a5 flagHandler:(id)a6 error:(id *)a7
{
  v8 = a5;
  v10 = a3;
  v11 = a4;
  v62 = a6;
  if (!v8)
  {
LABEL_17:
    v16 = [(CKKSCKRecordHolder *)[CKKSKey alloc] initWithCKRecord:v10 contextID:v11];
    v35 = [(CKKSKey *)v16 uuid];
    v36 = [(CKKSKey *)v10 recordID];
    v37 = [v36 zoneID];
    v65 = 0;
    v26 = [CKKSKey tryFromDatabase:v35 contextID:v11 zoneID:v37 error:&v65];
    v38 = v65;

    if (v38)
    {
      v39 = [(CKKSKey *)v10 recordID];
      v40 = [v39 zoneID];
      v41 = [v40 zoneName];
      v42 = sub_100019104(@"ckkskey", v41);

      v28 = v62;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v68 = v16;
        v69 = 2112;
        v70 = v38;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Error finding existing local key for %@: %@", buf, 0x16u);
      }
    }

    else
    {
      v28 = v62;
      if (v26 && [v26 matchesCKRecord:v10])
      {
        [v26 setStoredCKRecord:v10];
        v64 = 0;
        v54 = [v26 saveToDatabase:&v64];
        v55 = v64;
        v17 = v55;
        if (v54 && !v55)
        {
          goto LABEL_24;
        }

        v56 = [(CKKSKey *)v10 recordID];
        v57 = [v56 zoneID];
        v58 = [v57 zoneName];
        v52 = sub_100019104(@"ckkskey", v58);

        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v68 = v26;
          v69 = 2112;
          v70 = v17;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Couldn't update existing key: %@: %@", buf, 0x16u);
        }

        goto LABEL_29;
      }
    }

    [(CKKSKey *)v16 setState:@"remote", a7];
    [(CKKSKey *)v16 setCurrentkey:0];
    v63 = 0;
    v43 = [(CKKSSQLDatabaseObject *)v16 saveToDatabase:&v63];
    v44 = v63;
    v17 = v44;
    if (v43 && !v44)
    {
      [v28 _onqueueHandleFlag:@"key_process_requested"];
LABEL_24:
      v27 = 1;
      goto LABEL_38;
    }

    v45 = [(CKKSKey *)v10 recordID];
    v46 = [v45 zoneID];
    v47 = [v46 zoneName];
    v48 = sub_100019104(@"ckkskey", v47);

    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v68 = v16;
      v69 = 2112;
      v70 = v17;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Couldn't save key record to database: %@: %@", buf, 0x16u);
    }

    v49 = [(CKKSKey *)v10 recordID];
    v50 = [v49 zoneID];
    v51 = [v50 zoneName];
    v52 = sub_100019104(@"ckkskey", v51);

    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v68 = v10;
      _os_log_debug_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "CKRecord was %@", buf, 0xCu);
    }

LABEL_29:

    if (v61)
    {
      v53 = v17;
      v27 = 0;
      *v61 = v17;
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_38;
  }

  v12 = [(CKKSKey *)v10 recordID];
  v13 = [v12 recordName];
  v14 = [(CKKSKey *)v10 recordID];
  v15 = [v14 zoneID];
  v66 = 0;
  v16 = [CKKSKey tryFromDatabaseAnyState:v13 contextID:v11 zoneID:v15 error:&v66];
  v17 = v66;

  if (v17)
  {
    v18 = [(CKKSKey *)v10 recordID];
    v19 = [v18 zoneID];
    v20 = [v19 zoneName];
    v21 = sub_100019104(@"ckksresync", v20);

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v68 = v17;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "error loading key: %@", buf, 0xCu);
    }
  }

  if (!v16)
  {
    v29 = [(CKKSKey *)v10 recordID];
    v30 = [v29 zoneID];
    v31 = [v30 zoneName];
    v26 = sub_100019104(@"ckksresync", v31);

    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v68 = v10;
      v32 = "BUG: No sync key matching resynced CloudKit record: %@";
      v33 = v26;
      v34 = 12;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, v32, buf, v34);
    }

LABEL_16:

    goto LABEL_17;
  }

  v22 = [(CKKSKey *)v16 matchesCKRecord:v10];
  v23 = [(CKKSKey *)v10 recordID];
  v24 = [v23 zoneID];
  v25 = [v24 zoneName];
  v26 = sub_100019104(@"ckksresync", v25);

  if ((v22 & 1) == 0)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v68 = v16;
      v69 = 2112;
      v70 = v10;
      v32 = "BUG: Local sync key doesn't match resynced CloudKit record(s): %@ %@";
      v33 = v26;
      v34 = 22;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v68 = v10;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Already know about this sync key, skipping update: %@", buf, 0xCu);
  }

  v27 = 1;
  v28 = v62;
LABEL_38:

  return v27;
}

+ (id)loadFromProtobuf:(id)a3 contextID:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[CKKSSerializedKey alloc] initWithData:v8];

  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = [(CKKSSerializedKey *)v9 uuid];
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = v10;
  v12 = [(CKKSSerializedKey *)v9 zoneName];
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = v12;
  v14 = [(CKKSSerializedKey *)v9 keyclass];
  if (!v14)
  {

LABEL_8:
    goto LABEL_9;
  }

  v15 = v14;
  v16 = [(CKKSSerializedKey *)v9 key];

  if (v16)
  {
    v17 = [CKKSKey alloc];
    v18 = [CKKSAESSIVKey alloc];
    v19 = [(CKKSSerializedKey *)v9 key];
    v20 = [v19 bytes];
    v21 = [(CKKSSerializedKey *)v9 key];
    v22 = -[CKKSAESSIVKey initWithBytes:len:](v18, "initWithBytes:len:", v20, [v21 length]);
    v23 = [(CKKSSerializedKey *)v9 uuid];
    v24 = [(CKKSSerializedKey *)v9 keyclass];
    v25 = [CKRecordZoneID alloc];
    v26 = [(CKKSSerializedKey *)v9 zoneName];
    v27 = [v25 initWithZoneName:v26 ownerName:CKCurrentUserDefaultName];
    v28 = [(CKKSKey *)v17 initSelfWrappedWithAESKey:v22 contextID:v7 uuid:v23 keyclass:v24 state:@"remote" zoneID:v27 encodedCKRecord:0 currentkey:0];

    goto LABEL_12;
  }

LABEL_9:
  if (a5)
  {
    [NSError errorWithDomain:@"CKKSErrorDomain" code:21 description:@"Data failed to parse as a CKKSSerializedKey"];
    *a5 = v28 = 0;
  }

  else
  {
    v28 = 0;
  }

LABEL_12:

  return v28;
}

+ (id)countsByClassWithContextID:(id)a3 zoneID:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(NSMutableDictionary);
  v10 = [objc_opt_class() sqlTable];
  v19[0] = @"contextID";
  v19[1] = @"ckzone";
  v20[0] = v7;
  v11 = [v8 zoneName];

  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = +[NSNull null];
  }

  v13 = v12;

  v20[1] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100155C24;
  v17[3] = &unk_1003385E8;
  v15 = v9;
  v18 = v15;
  [CKKSSQLDatabaseObject queryDatabaseTable:v10 where:v14 columns:&off_100365970 groupBy:&off_100365988 orderBy:0 limit:-1 processRow:v17 error:a5];

  return v15;
}

+ (id)countsWithContextID:(id)a3 zoneID:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100155F70;
  v22 = sub_100155F80;
  v23 = 0;
  v9 = [objc_opt_class() sqlTable];
  v25[0] = v7;
  v24[0] = @"contextID";
  v24[1] = @"ckzone";
  v10 = [v8 zoneName];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = +[NSNull null];
  }

  v13 = v12;

  v25[1] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100155F88;
  v17[3] = &unk_100344498;
  v17[4] = &v18;
  [CKKSSQLDatabaseObject queryDatabaseTable:v9 where:v14 columns:&off_100365958 groupBy:0 orderBy:0 limit:-1 processRow:v17 error:a5];

  v15 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v15;
}

+ (id)fromDatabaseRow:(id)a3
{
  v3 = a3;
  v4 = [CKKSKey alloc];
  v24 = [v3 objectForKeyedSubscript:@"wrappedkey"];
  v25 = [v24 asBase64DecodedData];
  v23 = [v3 objectForKeyedSubscript:@"contextID"];
  v5 = [v23 asString];
  v22 = [v3 objectForKeyedSubscript:@"UUID"];
  v6 = [v22 asString];
  v21 = [v3 objectForKeyedSubscript:@"parentKeyUUID"];
  v18 = [v21 asString];
  v20 = [v3 objectForKeyedSubscript:@"keyclass"];
  v17 = [v20 asString];
  v19 = [v3 objectForKeyedSubscript:@"state"];
  v14 = [v19 asString];
  v7 = [CKRecordZoneID alloc];
  v16 = [v3 objectForKeyedSubscript:@"ckzone"];
  v8 = [v16 asString];
  v9 = [v7 initWithZoneName:v8 ownerName:CKCurrentUserDefaultName];
  v10 = [v3 objectForKeyedSubscript:@"ckrecord"];
  v11 = [v10 asBase64DecodedData];
  v12 = [v3 objectForKeyedSubscript:@"currentkey"];

  v15 = -[CKKSKey initWithWrappedKeyData:contextID:uuid:parentKeyUUID:keyclass:state:zoneID:encodedCKRecord:currentkey:](v4, "initWithWrappedKeyData:contextID:uuid:parentKeyUUID:keyclass:state:zoneID:encodedCKRecord:currentkey:", v25, v5, v6, v18, v17, v14, v9, v11, [v12 asNSInteger]);

  return v15;
}

+ (id)localKeysForContextID:(id)a3 zoneID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v18[0] = @"contextID";
  v10 = v8;
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = +[NSNull null];
  }

  v13 = v12;

  v19[0] = v13;
  v19[1] = @"local";
  v18[1] = @"state";
  v18[2] = @"ckzone";
  v14 = [v9 zoneName];
  v19[2] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];
  v16 = [a1 allWhere:v15 error:a5];

  return v16;
}

+ (id)remoteKeysForContextID:(id)a3 zoneID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v18[0] = @"contextID";
  v10 = v8;
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = +[NSNull null];
  }

  v13 = v12;

  v19[0] = v13;
  v19[1] = @"remote";
  v18[1] = @"state";
  v18[2] = @"ckzone";
  v14 = [v9 zoneName];
  v19[2] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];
  v16 = [a1 allWhere:v15 error:a5];

  return v16;
}

+ (id)allKeysForContextID:(id)a3 zoneID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v18[0] = @"contextID";
  v10 = v8;
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = +[NSNull null];
  }

  v13 = v12;

  v18[1] = @"ckzone";
  v19[0] = v13;
  v14 = [v9 zoneName];
  v19[1] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  v16 = [a1 allWhere:v15 error:a5];

  return v16;
}

+ (id)currentKeysForClass:(id)a3 contextID:(id)a4 state:(id)a5 zoneID:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v26[0] = v12;
  v25[0] = @"keyclass";
  v25[1] = @"contextID";
  v16 = v13;
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = +[NSNull null];
  }

  v19 = v18;

  v26[1] = v19;
  v26[2] = @"1";
  v25[2] = @"currentkey";
  v25[3] = @"state";
  v20 = @"local";
  if (v14)
  {
    v20 = v14;
  }

  v26[3] = v20;
  v25[4] = @"ckzone";
  v21 = [v15 zoneName];
  v26[4] = v21;
  v22 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:5];
  v23 = [a1 allWhere:v22 error:a7];

  return v23;
}

+ (id)currentKeyForClass:(id)a3 contextID:(id)a4 zoneID:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = [CKKSCurrentKeyPointer fromDatabase:a3 contextID:v10 zoneID:v11 error:a6];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 currentKeyUUID];
    v15 = [a1 fromDatabase:v14 contextID:v10 zoneID:v11 error:a6];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)selfWrappedKeysForContextID:(id)a3 zoneID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v19[0] = @"UUID";
  v9 = a4;
  v10 = [CKKSSQLWhereColumn op:1 column:2];
  v20[0] = v10;
  v19[1] = @"contextID";
  v11 = v8;
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = +[NSNull null];
  }

  v14 = v13;

  v20[1] = v14;
  v20[2] = @"local";
  v19[2] = @"state";
  v19[3] = @"ckzone";
  v15 = [v9 zoneName];

  v20[3] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];
  v17 = [a1 allWhere:v16 error:a5];

  return v17;
}

+ (id)tryFromDatabaseAnyState:(id)a3 contextID:(id)a4 zoneID:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21[0] = @"contextID";
  v13 = v11;
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = +[NSNull null];
  }

  v16 = v15;

  v22[0] = v16;
  v22[1] = v10;
  v21[1] = @"UUID";
  v21[2] = @"ckzone";
  v17 = [v12 zoneName];
  v22[2] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];
  v19 = [a1 tryFromDatabaseWhere:v18 error:a6];

  return v19;
}

+ (id)tryFromDatabase:(id)a3 contextID:(id)a4 zoneID:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21[0] = @"contextID";
  v13 = v11;
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = +[NSNull null];
  }

  v16 = v15;

  v22[0] = v16;
  v22[1] = v10;
  v21[1] = @"UUID";
  v21[2] = @"state";
  v22[2] = @"local";
  v21[3] = @"ckzone";
  v17 = [v12 zoneName];
  v22[3] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:4];
  v19 = [a1 tryFromDatabaseWhere:v18 error:a6];

  return v19;
}

+ (id)fromDatabaseAnyState:(id)a3 contextID:(id)a4 zoneID:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21[0] = @"contextID";
  v13 = v11;
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = +[NSNull null];
  }

  v16 = v15;

  v22[0] = v16;
  v22[1] = v10;
  v21[1] = @"UUID";
  v21[2] = @"ckzone";
  v17 = [v12 zoneName];
  v22[2] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];
  v19 = [a1 fromDatabaseWhere:v18 error:a6];

  return v19;
}

+ (id)fromDatabase:(id)a3 contextID:(id)a4 zoneID:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21[0] = @"contextID";
  v13 = v11;
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = +[NSNull null];
  }

  v16 = v15;

  v22[0] = v16;
  v22[1] = v10;
  v21[1] = @"UUID";
  v21[2] = @"state";
  v22[2] = @"local";
  v21[3] = @"ckzone";
  v17 = [v12 zoneName];
  v22[3] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:4];
  v19 = [a1 fromDatabaseWhere:v18 error:a6];

  return v19;
}

+ (id)isItemKeyForKeychainView:(SecDbItem *)a3
{
  v4 = sub_100015B5C(a3, kSecAttrAccessGroup);
  v5 = sub_100015B5C(a3, kSecAttrDescription);
  v6 = sub_100015B5C(a3, kSecAttrServer);
  v7 = v6;
  if (v4)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || v6 == 0)
  {
    goto LABEL_23;
  }

  v10 = +[NSNull null];
  if ([v4 isEqual:v10])
  {
    goto LABEL_22;
  }

  v11 = +[NSNull null];
  if ([v5 isEqual:v11])
  {
LABEL_21:

LABEL_22:
    goto LABEL_23;
  }

  v12 = +[NSNull null];
  if (([v7 isEqual:v12] & 1) != 0 || !objc_msgSend(v4, "isEqualToString:", @"com.apple.security.ckks"))
  {

    goto LABEL_21;
  }

  if ([v5 isEqualToString:@"tlk"])
  {
LABEL_18:

LABEL_19:
    v15 = v7;
    goto LABEL_24;
  }

  v13 = [NSString stringWithFormat:@"%@-nonsync", @"tlk"];
  if ([v5 isEqualToString:v13])
  {
LABEL_17:

    goto LABEL_18;
  }

  v14 = [NSString stringWithFormat:@"%@-piggy", @"tlk"];
  if ([v5 isEqualToString:v14] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"classA"))
  {

    goto LABEL_17;
  }

  v17 = [v5 isEqualToString:@"classC"];

  if (v17)
  {
    goto LABEL_19;
  }

LABEL_23:
  v15 = 0;
LABEL_24:

  return v15;
}

+ (id)randomKeyWrappedBySelf:(id)a3 contextID:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [CKKSKeychainBackedKey randomKeyWrappedBySelf:a3 error:a5];
  if (v8)
  {
    v9 = [[CKKSKey alloc] initWithKeyCore:v8 contextID:v7 state:@"local" currentkey:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)randomKeyWrappedByParent:(id)a3 keyclass:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 getKeychainBackedKey:a5];
  if (v9)
  {
    v10 = [CKKSKeychainBackedKey randomKeyWrappedByParent:v9 keyclass:v8 error:a5];
    if (v10)
    {
      v11 = [CKKSKey alloc];
      v12 = [v7 contextID];
      v13 = [(CKKSKey *)v11 initWithKeyCore:v10 contextID:v12 state:@"local" currentkey:0];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)randomKeyWrappedByParent:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 keyclass];
  v8 = [a1 randomKeyWrappedByParent:v6 keyclass:v7 error:a4];

  return v8;
}

+ (id)loadKeyWithUUID:(id)a3 contextID:(id)a4 zoneID:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = [CKKSKey fromDatabase:a3 contextID:v9 zoneID:a5 error:a6];
  v11 = [v10 ensureKeyLoadedForContextID:v9 cache:0 error:a6];

  if (v11)
  {
    v11 = v10;
  }

  return v11;
}

@end