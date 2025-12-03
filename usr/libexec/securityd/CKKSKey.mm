@interface CKKSKey
+ (BOOL)intransactionRecordChanged:(id)changed contextID:(id)d resync:(BOOL)resync flagHandler:(id)handler error:(id *)error;
+ (BOOL)intransactionRecordDeleted:(id)deleted contextID:(id)d error:(id *)error;
+ (id)allKeysForContextID:(id)d zoneID:(id)iD error:(id *)error;
+ (id)countsByClassWithContextID:(id)d zoneID:(id)iD error:(id *)error;
+ (id)countsWithContextID:(id)d zoneID:(id)iD error:(id *)error;
+ (id)currentKeyForClass:(id)class contextID:(id)d zoneID:(id)iD error:(id *)error;
+ (id)currentKeysForClass:(id)class contextID:(id)d state:(id)state zoneID:(id)iD error:(id *)error;
+ (id)fromDatabase:(id)database contextID:(id)d zoneID:(id)iD error:(id *)error;
+ (id)fromDatabaseAnyState:(id)state contextID:(id)d zoneID:(id)iD error:(id *)error;
+ (id)fromDatabaseRow:(id)row;
+ (id)isItemKeyForKeychainView:(SecDbItem *)view;
+ (id)loadFromProtobuf:(id)protobuf contextID:(id)d error:(id *)error;
+ (id)loadKeyWithUUID:(id)d contextID:(id)iD zoneID:(id)zoneID error:(id *)error;
+ (id)localKeysForContextID:(id)d zoneID:(id)iD error:(id *)error;
+ (id)randomKeyWrappedByParent:(id)parent error:(id *)error;
+ (id)randomKeyWrappedByParent:(id)parent keyclass:(id)keyclass error:(id *)error;
+ (id)randomKeyWrappedBySelf:(id)self contextID:(id)d error:(id *)error;
+ (id)remoteKeysForContextID:(id)d zoneID:(id)iD error:(id *)error;
+ (id)selfWrappedKeysForContextID:(id)d zoneID:(id)iD error:(id *)error;
+ (id)tryFromDatabase:(id)database contextID:(id)d zoneID:(id)iD error:(id *)error;
+ (id)tryFromDatabaseAnyState:(id)state contextID:(id)d zoneID:(id)iD error:(id *)error;
- (BOOL)deleteKeyMaterialFromKeychain:(id *)keychain;
- (BOOL)isEqual:(id)equal;
- (BOOL)loadKeyMaterialFromKeychain:(id *)keychain;
- (BOOL)matchesCKRecord:(id)record;
- (BOOL)saveKeyMaterialToKeychain:(id *)keychain;
- (BOOL)saveToDatabaseAsOnlyCurrentKeyForClassAndState:(id *)state;
- (BOOL)tlkMaterialPresentOrRecoverableViaTLKShareForContextID:(id)d forTrustStates:(id)states error:(id *)error;
- (BOOL)trySelfWrappedKeyCandidate:(id)candidate error:(id *)error;
- (BOOL)unwrapViaTLKSharesTrustedBy:(id)by contextID:(id)d error:(id *)error;
- (BOOL)validTLK:(id *)k;
- (BOOL)wrapUnder:(id)under error:(id *)error;
- (BOOL)wrapsSelf;
- (CKKSKey)init;
- (CKKSKey)initWithKeyCore:(id)core contextID:(id)d state:(id)state currentkey:(BOOL)currentkey;
- (CKKSKey)initWithWrappedKeyData:(id)data contextID:(id)d uuid:(id)uuid parentKeyUUID:(id)iD keyclass:(id)keyclass state:(id)state zoneID:(id)zoneID encodedCKRecord:(id)self0 currentkey:(int64_t)self1;
- (NSData)wrappedKeyData;
- (NSString)zoneName;
- (id)copyWithZone:(_NSZone *)zone;
- (id)decryptData:(id)data authenticatedData:(id)authenticatedData error:(id *)error;
- (id)description;
- (id)encryptData:(id)data authenticatedData:(id)authenticatedData error:(id *)error;
- (id)ensureKeyLoadedForContextID:(id)d cache:(id)cache error:(id *)error;
- (id)getKeychainBackedKey:(id *)key;
- (id)initSelfWrappedWithAESKey:(id)key contextID:(id)d uuid:(id)uuid keyclass:(id)keyclass state:(id)state zoneID:(id)iD encodedCKRecord:(id)record currentkey:(int64_t)self0;
- (id)serializeAsProtobuf:(id *)protobuf;
- (id)sqlValues;
- (id)topKeyInAnyState:(id *)state;
- (id)unwrapAESKey:(id)key error:(id *)error;
- (id)unwrapViaKeyHierarchy:(id)hierarchy error:(id *)error;
- (id)updateCKRecord:(id)record zoneID:(id)d;
- (id)whereClauseToFindSelf;
- (id)wrapAESKey:(id)key error:(id *)error;
- (void)dealloc;
- (void)setFromCKRecord:(id)record;
@end

@implementation CKKSKey

- (id)serializeAsProtobuf:(id *)protobuf
{
  contextID = [(CKKSCKRecordHolder *)self contextID];
  v6 = [(CKKSKey *)self ensureKeyLoadedForContextID:contextID cache:0 error:protobuf];

  if (v6)
  {
    v7 = objc_alloc_init(CKKSSerializedKey);
    uuid = [(CKKSKey *)self uuid];
    [(CKKSSerializedKey *)v7 setUuid:uuid];

    zoneID = [(CKKSCKRecordHolder *)self zoneID];
    zoneName = [zoneID zoneName];
    [(CKKSSerializedKey *)v7 setZoneName:zoneName];

    keyclass = [(CKKSKey *)self keyclass];
    [(CKKSSerializedKey *)v7 setKeyclass:keyclass];

    keycore = [(CKKSKey *)self keycore];
    aessivkey = [keycore aessivkey];
    keycore2 = [(CKKSKey *)self keycore];
    aessivkey2 = [keycore2 aessivkey];
    v16 = [NSData _newZeroingDataWithBytes:aessivkey + 8 length:aessivkey2[11]];
    [(CKKSSerializedKey *)v7 setKey:v16];

    data = [(CKKSSerializedKey *)v7 data];
  }

  else
  {
    data = 0;
  }

  return data;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = CKKSKey;
  v5 = [(CKKSCKRecordHolder *)&v9 copyWithZone:?];
  v6 = [(CKKSKeychainBackedKey *)self->_keycore copyWithZone:zone];
  v7 = *(v5 + 12);
  *(v5 + 12) = v6;

  objc_storeStrong(v5 + 11, self->_state);
  *(v5 + 56) = self->_currentkey;
  return v5;
}

- (id)sqlValues
{
  v31[0] = @"contextID";
  contextID = [(CKKSCKRecordHolder *)self contextID];
  v32[0] = contextID;
  v31[1] = @"UUID";
  uuid = [(CKKSKey *)self uuid];
  v32[1] = uuid;
  v31[2] = @"parentKeyUUID";
  parentKeyUUID = [(CKKSKey *)self parentKeyUUID];
  if (parentKeyUUID)
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
  zoneID = [(CKKSCKRecordHolder *)self zoneID];
  zoneName = [zoneID zoneName];

  if (zoneName)
  {
    v8 = zoneName;
  }

  else
  {
    v8 = +[NSNull null];
  }

  v9 = v8;

  v32[3] = v9;
  v31[4] = @"ckrecord";
  encodedCKRecord = [(CKKSCKRecordHolder *)self encodedCKRecord];
  v11 = [encodedCKRecord base64EncodedStringWithOptions:0];

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
  keyclass = [(CKKSKey *)self keyclass];
  v15 = keyclass;
  if (keyclass)
  {
    v16 = keyclass;
  }

  else
  {
    v16 = +[NSNull null];
  }

  v17 = v16;

  v32[5] = v17;
  v31[6] = @"state";
  state = [(CKKSKey *)self state];
  v19 = state;
  if (state)
  {
    v20 = state;
  }

  else
  {
    v20 = +[NSNull null];
  }

  v21 = v20;

  v32[6] = v21;
  v31[7] = @"wrappedkey";
  wrappedKeyData = [(CKKSKey *)self wrappedKeyData];
  v23 = [wrappedKeyData base64EncodedDataWithOptions:0];

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
  currentkey = [(CKKSKey *)self currentkey];
  v27 = @"0";
  if (currentkey)
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
  contextID = [(CKKSCKRecordHolder *)self contextID];
  v11[0] = contextID;
  v10[1] = @"UUID";
  uuid = [(CKKSKey *)self uuid];
  v11[1] = uuid;
  v10[2] = @"state";
  state = [(CKKSKey *)self state];
  v11[2] = state;
  v10[3] = @"ckzone";
  zoneID = [(CKKSCKRecordHolder *)self zoneID];
  zoneName = [zoneID zoneName];
  v11[3] = zoneName;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];

  return v8;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  contextID = [(CKKSCKRecordHolder *)self contextID];
  zoneID = [(CKKSCKRecordHolder *)self zoneID];
  zoneName = [zoneID zoneName];
  uuid = [(CKKSKey *)self uuid];
  keyclass = [(CKKSKey *)self keyclass];
  state = [(CKKSKey *)self state];
  v11 = [NSString stringWithFormat:@"<%@[%@](%@): %@ (%@, %@:%d)>", v4, contextID, zoneName, uuid, keyclass, state, [(CKKSKey *)self currentkey]];

  return v11;
}

- (BOOL)matchesCKRecord:(id)record
{
  recordCopy = record;
  recordType = [recordCopy recordType];
  v6 = [recordType isEqual:@"synckey"];

  if (!v6)
  {
    goto LABEL_9;
  }

  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  uuid = [(CKKSKey *)self uuid];
  v10 = [recordName isEqualToString:uuid];

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

  v11 = [recordCopy objectForKeyedSubscript:@"parentkeyref"];

  if (v11)
  {
    v12 = [recordCopy objectForKeyedSubscript:@"parentkeyref"];
    recordID2 = [v12 recordID];
    recordName2 = [recordID2 recordName];
    parentKeyUUID = [(CKKSKey *)self parentKeyUUID];
    v16 = [recordName2 isEqualToString:parentKeyUUID];

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

  v22 = [recordCopy objectForKeyedSubscript:@"class"];
  keyclass = [(CKKSKey *)self keyclass];
  v24 = [v22 isEqual:keyclass];

  if (v24)
  {
    v25 = [recordCopy objectForKeyedSubscript:@"wrappedkey"];
    wrappedKeyData = [(CKKSKey *)self wrappedKeyData];
    v27 = [wrappedKeyData base64EncodedStringWithOptions:0];
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

- (id)updateCKRecord:(id)record zoneID:(id)d
{
  recordCopy = record;
  dCopy = d;
  recordType = [recordCopy recordType];
  v9 = [recordType isEqual:@"synckey"];

  if ((v9 & 1) == 0)
  {
    recordType2 = [recordCopy recordType];
    v23 = [NSString stringWithFormat:@"CKRecordType (%@) was not %@", recordType2, @"synckey"];
    v24 = [NSException exceptionWithName:@"WrongCKRecordTypeException" reason:v23 userInfo:0];
    v25 = v24;

    objc_exception_throw(v24);
  }

  parentKeyUUID = [(CKKSKey *)self parentKeyUUID];
  uuid = [(CKKSKey *)self uuid];
  v12 = [parentKeyUUID isEqual:uuid];

  if (v12)
  {
    [recordCopy setObject:0 forKeyedSubscript:@"parentkeyref"];
  }

  else
  {
    v13 = [CKReference alloc];
    v14 = [CKRecordID alloc];
    parentKeyUUID2 = [(CKKSKey *)self parentKeyUUID];
    v16 = [v14 initWithRecordName:parentKeyUUID2 zoneID:dCopy];
    v17 = [v13 initWithRecordID:v16 action:CKReferenceActionValidate];
    [recordCopy setObject:v17 forKeyedSubscript:@"parentkeyref"];
  }

  [CKKSItem setOSVersionInRecord:recordCopy];
  keyclass = [(CKKSKey *)self keyclass];
  [recordCopy setObject:keyclass forKeyedSubscript:@"class"];

  wrappedKeyData = [(CKKSKey *)self wrappedKeyData];
  v20 = [wrappedKeyData base64EncodedStringWithOptions:0];
  [recordCopy setObject:v20 forKeyedSubscript:@"wrappedkey"];

  return recordCopy;
}

- (void)setFromCKRecord:(id)record
{
  recordCopy = record;
  recordType = [recordCopy recordType];
  v5 = [recordType isEqual:@"synckey"];

  if ((v5 & 1) == 0)
  {
    recordType2 = [recordCopy recordType];
    v17 = [NSString stringWithFormat:@"CKRecordType (%@) was not %@", recordType2, @"synckey"];
    v18 = [NSException exceptionWithName:@"WrongCKRecordTypeException" reason:v17 userInfo:0];
    v19 = v18;

    objc_exception_throw(v18);
  }

  [(CKKSCKRecordHolder *)self setStoredCKRecord:recordCopy];
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  [(CKKSKey *)self setUuid:recordName];

  v8 = [recordCopy objectForKeyedSubscript:@"parentkeyref"];

  if (v8)
  {
    uuid = [recordCopy objectForKeyedSubscript:@"parentkeyref"];
    recordID2 = [uuid recordID];
    recordName2 = [recordID2 recordName];
    [(CKKSKey *)self setParentKeyUUID:recordName2];
  }

  else
  {
    uuid = [(CKKSKey *)self uuid];
    [(CKKSKey *)self setParentKeyUUID:uuid];
  }

  v12 = [recordCopy objectForKeyedSubscript:@"class"];
  [(CKKSKey *)self setKeyclass:v12];

  v13 = [NSData alloc];
  v14 = [recordCopy objectForKeyedSubscript:@"wrappedkey"];
  v15 = [v13 initWithBase64EncodedString:v14 options:0];
  [(CKKSKey *)self setWrappedKeyDataBackingStore:v15];

  [(CKKSKey *)self setKeycore:0];
  [(CKKSKey *)self setState:@"remote"];
}

- (BOOL)saveToDatabaseAsOnlyCurrentKeyForClassAndState:(id *)state
{
  [(CKKSKey *)self setCurrentkey:1];
  keyclass = [(CKKSKey *)self keyclass];
  contextID = [(CKKSCKRecordHolder *)self contextID];
  state = [(CKKSKey *)self state];
  zoneID = [(CKKSCKRecordHolder *)self zoneID];
  v9 = [CKKSKey currentKeysForClass:keyclass contextID:contextID state:state zoneID:zoneID error:state];

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
          if (![v15 saveToDatabase:state])
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

    v16 = [(CKKSSQLDatabaseObject *)self saveToDatabase:state];
  }

  else
  {
LABEL_12:
    v16 = 0;
  }

  return v16;
}

- (BOOL)deleteKeyMaterialFromKeychain:(id *)keychain
{
  v5 = [(CKKSKey *)self getKeychainBackedKey:?];

  if (!v5)
  {
    return 0;
  }

  keycore = [(CKKSKey *)self keycore];
  v7 = [keycore deleteKeyMaterialFromKeychain:keychain];

  return v7;
}

- (BOOL)loadKeyMaterialFromKeychain:(id *)keychain
{
  v5 = [(CKKSKey *)self getKeychainBackedKey:?];

  if (!v5)
  {
    return 0;
  }

  keycore = [(CKKSKey *)self keycore];
  v7 = [keycore loadKeyMaterialFromKeychain:keychain];

  return v7;
}

- (BOOL)saveKeyMaterialToKeychain:(id *)keychain
{
  v5 = [(CKKSKey *)self getKeychainBackedKey:?];

  if (!v5)
  {
    return 0;
  }

  keycore = [(CKKSKey *)self keycore];
  v7 = [keycore saveKeyMaterialToKeychain:1 error:keychain];

  return v7;
}

- (id)decryptData:(id)data authenticatedData:(id)authenticatedData error:(id *)error
{
  dataCopy = data;
  authenticatedDataCopy = authenticatedData;
  v10 = [(CKKSKey *)self getKeychainBackedKey:error];

  if (v10)
  {
    keycore = [(CKKSKey *)self keycore];
    v12 = [keycore decryptData:dataCopy authenticatedData:authenticatedDataCopy error:error];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)encryptData:(id)data authenticatedData:(id)authenticatedData error:(id *)error
{
  dataCopy = data;
  authenticatedDataCopy = authenticatedData;
  v10 = [(CKKSKey *)self getKeychainBackedKey:error];

  if (v10)
  {
    keycore = [(CKKSKey *)self keycore];
    v12 = [keycore encryptData:dataCopy authenticatedData:authenticatedDataCopy error:error];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)unwrapAESKey:(id)key error:(id *)error
{
  keyCopy = key;
  v7 = [(CKKSKey *)self getKeychainBackedKey:error];

  if (v7)
  {
    keycore = [(CKKSKey *)self keycore];
    v9 = [keycore unwrapAESKey:keyCopy error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)wrapAESKey:(id)key error:(id *)error
{
  keyCopy = key;
  v7 = [(CKKSKey *)self getKeychainBackedKey:error];

  if (v7)
  {
    keycore = [(CKKSKey *)self keycore];
    v9 = [keycore wrapAESKey:keyCopy error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)trySelfWrappedKeyCandidate:(id)candidate error:(id *)error
{
  candidateCopy = candidate;
  v7 = [(CKKSKey *)self getKeychainBackedKey:error];

  if (v7)
  {
    keycore = [(CKKSKey *)self keycore];
    v9 = [keycore trySelfWrappedKeyCandidate:candidateCopy error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)tlkMaterialPresentOrRecoverableViaTLKShareForContextID:(id)d forTrustStates:(id)states error:(id *)error
{
  dCopy = d;
  statesCopy = states;
  v10 = [(CKKSKey *)self getKeychainBackedKey:error];

  if (v10)
  {
    v40 = 0;
    v11 = [(CKKSKey *)self ensureKeyLoadedForContextID:dCopy cache:0 error:&v40];
    v12 = v40;

    if (v11)
    {
      keycore = [(CKKSKey *)self keycore];
      v39 = v12;
      v11 = [keycore ensureKeyLoadedFromKeychain:&v39];
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

        zoneName = [(CKKSKey *)self zoneName];
        v19 = sub_100019104(@"ckksshare", zoneName);

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

    code = [v12 code];
    zoneName2 = [(CKKSKey *)self zoneName];
    v19 = sub_100019104(@"ckksshare", zoneName2);

    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (code == -25308)
    {
      if (v20)
      {
        *buf = 138412290;
        v42 = v12;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Unable to load key due to lock state: %@", buf, 0xCu);
      }

      if (error)
      {
        v21 = v12;
        v16 = 0;
        *error = v12;
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
    v24 = [(CKKSKey *)self unwrapViaTLKSharesTrustedBy:statesCopy contextID:dCopy error:&v37];
    v25 = v37;
    v26 = v25;
    if (!v24 || v25)
    {
      zoneName3 = [(CKKSKey *)self zoneName];
      v32 = sub_100019104(@"ckksshare", zoneName3);

      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        uuid = [(CKKSKey *)self uuid];
        *buf = 138412546;
        v42 = uuid;
        v43 = 2112;
        v44 = v26;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Failed to unwrap tlk(%@) via shares: %@", buf, 0x16u);
      }

      if (!error)
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

      zoneName4 = [(CKKSKey *)self zoneName];
      v30 = sub_100019104(@"ckksshare", zoneName4);

      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v42 = v26;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Errored saving TLK to keychain: %@", buf, 0xCu);
      }

      if (!error)
      {
        v16 = 1;
LABEL_33:

        goto LABEL_34;
      }
    }

    v34 = v26;
    v16 = 0;
    *error = v26;
    goto LABEL_33;
  }

  v16 = 0;
LABEL_35:

  return v16;
}

- (BOOL)validTLK:(id *)k
{
  wrapsSelf = [(CKKSKey *)self wrapsSelf];
  if (!wrapsSelf)
  {
    parentKeyUUID = [(CKKSKey *)self parentKeyUUID];
    v7 = [NSString stringWithFormat:@"Potential TLK %@ doesn't wrap itself: %@", self, parentKeyUUID];
    v8 = [NSError errorWithDomain:@"CKKSErrorDomain" code:18 description:v7 underlying:0];

    zoneName = [(CKKSKey *)self zoneName];
    v10 = sub_100019104(@"ckksshare", zoneName);

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error with TLK: %@", buf, 0xCu);
    }

    if (k)
    {
      v11 = v8;
      *k = v8;
    }
  }

  return wrapsSelf;
}

- (BOOL)unwrapViaTLKSharesTrustedBy:(id)by contextID:(id)d error:(id *)error
{
  byCopy = by;
  dCopy = d;
  if ([byCopy count])
  {
    errorCopy = error;
    v41 = byCopy;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = byCopy;
    v44 = [obj countByEnumeratingWithState:&v58 objects:v69 count:16];
    v9 = 0;
    if (v44)
    {
      v43 = *v59;
      selfCopy = self;
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
        currentSelfPeers = [v12 currentSelfPeers];
        allSelves = [currentSelfPeers allSelves];

        v16 = [allSelves countByEnumeratingWithState:&v54 objects:v68 count:16];
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
                objc_enumerationMutation(allSelves);
              }

              peerID = [*(*(&v54 + 1) + 8 * v20) peerID];
              uuid = [(CKKSKey *)selfCopy uuid];
              zoneID = [(CKKSCKRecordHolder *)selfCopy zoneID];
              v53 = v21;
              v25 = [CKKSTLKShareRecord allFor:peerID contextID:dCopy keyUUID:uuid zoneID:zoneID error:&v53];
              v18 = v53;

              [v51 addObjectsFromArray:v25];
              v20 = v20 + 1;
              v21 = v18;
            }

            while (v17 != v20);
            v17 = [allSelves countByEnumeratingWithState:&v54 objects:v68 count:16];
          }

          while (v17);

          v13 = v47;
          v11 = v48;
          v12 = v45;
          v10 = v46;
          if (v18)
          {
            zoneName = [(CKKSKey *)selfCopy zoneName];
            v35 = sub_100019104(@"ckksshare", zoneName);

            v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
            byCopy = v41;
            if (v36)
            {
              *buf = 138412546;
              v63 = selfCopy;
              v64 = 2112;
              v65 = v18;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Unable to load TLK shares for TLK(%@): %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v47);
            v31 = errorCopy;
            if (errorCopy)
            {
              v37 = v18;
              *errorCopy = v18;
              goto LABEL_34;
            }

            LOBYTE(error) = 0;
            goto LABEL_37;
          }
        }

        else
        {
        }

        v52 = 0;
        v26 = [v12 unwrapKey:selfCopy fromShares:v51 error:{&v52, errorCopy}];
        v9 = v52;
        zoneName2 = [(CKKSKey *)selfCopy zoneName];
        v28 = sub_100019104(@"ckksshare", zoneName2);

        v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
        if (v26 && !v9)
        {
          if (v29)
          {
            uuid2 = [(CKKSKey *)selfCopy uuid];
            *buf = 138412546;
            v63 = uuid2;
            v64 = 2112;
            v65 = v12;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Recovered tlk (%@) from trust state (%@)", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v13);
          v18 = 0;
          LOBYTE(error) = 1;
          goto LABEL_36;
        }

        if (v29)
        {
          uuid3 = [(CKKSKey *)selfCopy uuid];
          *buf = 138412802;
          v63 = uuid3;
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
    v31 = errorCopy;
    if (errorCopy)
    {
      v11 = v9;
      byCopy = v41;
LABEL_34:
      v38 = v11;
      LOBYTE(error) = 0;
      *v31 = v11;
    }

    else
    {
      LOBYTE(error) = 0;
      v11 = v9;
LABEL_36:
      byCopy = v41;
    }

LABEL_37:
  }

  else if (error)
  {
    errorCopy2 = error;
    [NSError errorWithDomain:@"CKKSErrorDomain" code:52 description:@"No current trust states; can't unwrap TLK"];
    *errorCopy2 = LOBYTE(error) = 0;
  }

  return error;
}

- (id)unwrapViaKeyHierarchy:(id)hierarchy error:(id *)error
{
  hierarchyCopy = hierarchy;
  v7 = [(CKKSKey *)self getKeychainBackedKey:error];

  if (v7)
  {
    keycore = [(CKKSKey *)self keycore];
    aessivkey = [keycore aessivkey];

    keycore2 = [(CKKSKey *)self keycore];
    v11 = keycore2;
    if (aessivkey)
    {
      aessivkey2 = [keycore2 aessivkey];
    }

    else
    {
      v42 = 0;
      v13 = [keycore2 loadKeyMaterialFromKeychain:&v42];
      v14 = v42;

      if (v13)
      {
        keycore3 = [(CKKSKey *)self keycore];
        aessivkey2 = [keycore3 aessivkey];
      }

      else
      {
        keyclass = [(CKKSKey *)self keyclass];
        v17 = [keyclass isEqual:@"tlk"];

        if (!v17)
        {
          goto LABEL_12;
        }

        parentKeyUUID = [(CKKSKey *)self parentKeyUUID];
        if (!parentKeyUUID)
        {
          goto LABEL_10;
        }

        v19 = parentKeyUUID;
        parentKeyUUID2 = [(CKKSKey *)self parentKeyUUID];
        uuid = [(CKKSKey *)self uuid];
        v22 = [parentKeyUUID2 isEqualToString:uuid];

        if (v22)
        {
LABEL_10:
          if (error)
          {
            v23 = v14;
            aessivkey2 = 0;
            *error = v14;
          }

          else
          {
            aessivkey2 = 0;
          }
        }

        else
        {
LABEL_12:
          parentKeyUUID3 = [(CKKSKey *)self parentKeyUUID];
          contextID = [(CKKSCKRecordHolder *)self contextID];
          zoneID = [(CKKSCKRecordHolder *)self zoneID];
          if (hierarchyCopy)
          {
            v41 = 0;
            v27 = &v41;
            v28 = [hierarchyCopy loadKeyForUUID:parentKeyUUID3 contextID:contextID zoneID:zoneID error:&v41];
          }

          else
          {
            v40 = 0;
            v27 = &v40;
            v28 = [CKKSKey fromDatabaseAnyState:parentKeyUUID3 contextID:contextID zoneID:zoneID error:&v40];
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

            if (error)
            {
              v32 = v30;
              *error = v30;
            }
          }

          v33 = [v29 unwrapViaKeyHierarchy:hierarchyCopy error:error];

          if (v33)
          {
            keycore4 = [(CKKSKey *)self keycore];
            wrappedkey = [keycore4 wrappedkey];
            v36 = [v29 unwrapAESKey:wrappedkey error:error];
            keycore5 = [(CKKSKey *)self keycore];
            [keycore5 setAessivkey:v36];

            keycore6 = [(CKKSKey *)self keycore];
            aessivkey2 = [keycore6 aessivkey];
          }

          else
          {
            aessivkey2 = 0;
          }
        }
      }
    }
  }

  else
  {
    aessivkey2 = 0;
  }

  return aessivkey2;
}

- (id)ensureKeyLoadedForContextID:(id)d cache:(id)cache error:(id *)error
{
  cacheCopy = cache;
  v8 = [(CKKSKey *)self getKeychainBackedKey:error];

  if (v8)
  {
    keycore = [(CKKSKey *)self keycore];
    v25 = 0;
    v10 = [keycore ensureKeyLoadedFromKeychain:&v25];
    v11 = v25;

    if (v10)
    {
      keycore2 = [(CKKSKey *)self keycore];
    }

    else
    {
      v24 = 0;
      v13 = [(CKKSKey *)self unwrapViaKeyHierarchy:cacheCopy error:&v24];
      v14 = v24;

      if (v13)
      {
        v23 = 0;
        v15 = [(CKKSKey *)self saveKeyMaterialToKeychain:&v23];
        v16 = v23;
        v17 = v16;
        if (!v15 || v16)
        {
          zoneID = [(CKKSCKRecordHolder *)self zoneID];
          zoneName = [zoneID zoneName];
          v20 = sub_100019104(@"ckkskey", zoneName);

          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v27 = v17;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Resaving missing key failed, continuing: %@", buf, 0xCu);
          }
        }

        keycore2 = [(CKKSKey *)self keycore];
      }

      else if (error)
      {
        if (v14)
        {
          v21 = v14;
        }

        else
        {
          v21 = v11;
        }

        keycore2 = 0;
        *error = v21;
      }

      else
      {
        keycore2 = 0;
      }
    }
  }

  else
  {
    keycore2 = 0;
  }

  return keycore2;
}

- (id)topKeyInAnyState:(id *)state
{
  v5 = objc_alloc_init(NSMutableSet);
  selfCopy = self;
  if (!selfCopy)
  {
    goto LABEL_11;
  }

  do
  {
    if ([(CKKSKey *)selfCopy wrapsSelf])
    {
      selfCopy = selfCopy;
      v12 = selfCopy;
      goto LABEL_12;
    }

    uuid = [(CKKSKey *)selfCopy uuid];
    v8 = [v5 containsObject:uuid];

    if (v8)
    {
      break;
    }

    uuid2 = [(CKKSKey *)selfCopy uuid];
    [v5 addObject:uuid2];

    v18[0] = @"UUID";
    parentKeyUUID = [(CKKSKey *)selfCopy parentKeyUUID];
    v18[1] = @"state";
    v19[0] = parentKeyUUID;
    v19[1] = @"remote";
    v11 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
    v12 = [(CKKSSQLDatabaseObject *)CKKSKey tryFromDatabaseWhere:v11 error:state];

    if (!v12)
    {
      v16 = @"UUID";
      parentKeyUUID2 = [(CKKSKey *)selfCopy parentKeyUUID];
      v17 = parentKeyUUID2;
      v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v12 = [(CKKSSQLDatabaseObject *)CKKSKey fromDatabaseWhere:v14 error:state];
    }

    selfCopy = v12;
  }

  while (v12);
  if (state)
  {
    [NSError errorWithDomain:@"CKKSErrorDomain" code:54 description:@"Circular reference in key hierarchy"];
    *state = v12 = 0;
  }

  else
  {
LABEL_11:
    v12 = 0;
  }

LABEL_12:

  return v12;
}

- (BOOL)wrapUnder:(id)under error:(id *)error
{
  underCopy = under;
  v7 = [(CKKSKey *)self getKeychainBackedKey:error];

  if (v7 && (-[CKKSKey keycore](self, "keycore"), v8 = objc_claimAutoreleasedReturnValue(), [underCopy keycore], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "wrapUnder:error:", v9, error), v9, v8, v10))
  {
    keycore = [(CKKSKey *)self keycore];
    parentKeyUUID = [keycore parentKeyUUID];
    [(CKKSKey *)self setParentKeyUUID:parentKeyUUID];

    keycore2 = [(CKKSKey *)self keycore];
    wrappedkey = [keycore2 wrappedkey];
    wrappedData = [wrappedkey wrappedData];
    [(CKKSKey *)self setWrappedKeyDataBackingStore:wrappedData];

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
  uuid = [(CKKSKey *)self uuid];
  parentKeyUUID = [(CKKSKey *)self parentKeyUUID];
  v5 = [uuid isEqual:parentKeyUUID];

  return v5;
}

- (NSString)zoneName
{
  zoneID = [(CKKSCKRecordHolder *)self zoneID];
  zoneName = [zoneID zoneName];

  return zoneName;
}

- (NSData)wrappedKeyData
{
  keycore = [(CKKSKey *)self keycore];

  if (keycore)
  {
    keycore2 = [(CKKSKey *)self keycore];
    wrappedkey = [keycore2 wrappedkey];
    wrappedData = [wrappedkey wrappedData];
    wrappedKeyDataBackingStore = [(CKKSKey *)self wrappedKeyDataBackingStore];
    v8 = [wrappedData isEqualToData:wrappedKeyDataBackingStore];

    if ((v8 & 1) == 0)
    {
      zoneID = [(CKKSCKRecordHolder *)self zoneID];
      zoneName = [zoneID zoneName];
      v11 = sub_100019104(@"ckkskey", zoneName);

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Probable bug: wrapped key data does not match cached version", v19, 2u);
      }

      keycore3 = [(CKKSKey *)self keycore];
      wrappedkey2 = [keycore3 wrappedkey];
      wrappedData2 = [wrappedkey2 wrappedData];
      [(CKKSKey *)self setWrappedKeyDataBackingStore:wrappedData2];
    }

    keycore4 = [(CKKSKey *)self keycore];
    wrappedkey3 = [keycore4 wrappedkey];
    wrappedData3 = [wrappedkey3 wrappedData];
  }

  else
  {
    wrappedData3 = [(CKKSKey *)self wrappedKeyDataBackingStore];
  }

  return wrappedData3;
}

- (id)getKeychainBackedKey:(id *)key
{
  keycore = [(CKKSKey *)self keycore];

  if (keycore)
  {
    keycore2 = [(CKKSKey *)self keycore];
  }

  else
  {
    wrappedKeyDataBackingStore = [(CKKSKey *)self wrappedKeyDataBackingStore];
    v8 = [wrappedKeyDataBackingStore length];

    if (v8 == 80)
    {
      v9 = [CKKSWrappedAESSIVKey alloc];
      wrappedKeyDataBackingStore2 = [(CKKSKey *)self wrappedKeyDataBackingStore];
      v11 = [(CKKSWrappedAESSIVKey *)v9 initWithData:wrappedKeyDataBackingStore2];

      v12 = [CKKSKeychainBackedKey alloc];
      uuid = [(CKKSKey *)self uuid];
      parentKeyUUID = [(CKKSKey *)self parentKeyUUID];
      keyclass = [(CKKSKey *)self keyclass];
      zoneID = [(CKKSCKRecordHolder *)self zoneID];
      v17 = [(CKKSKeychainBackedKey *)v12 initWithWrappedAESKey:v11 uuid:uuid parentKeyUUID:parentKeyUUID keyclass:keyclass zoneID:zoneID];
      [(CKKSKey *)self setKeycore:v17];

      keycore2 = [(CKKSKey *)self keycore];
    }

    else if (key)
    {
      [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 description:@"Wrong key size"];
      *key = keycore2 = 0;
    }

    else
    {
      keycore2 = 0;
    }
  }

  return keycore2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    uuid = [(CKKSKey *)self uuid];
    uuid2 = [v5 uuid];
    if ([uuid isEqualToString:uuid2])
    {
      parentKeyUUID = [(CKKSKey *)self parentKeyUUID];
      parentKeyUUID2 = [v5 parentKeyUUID];
      if ([parentKeyUUID isEqualToString:parentKeyUUID2])
      {
        wrappedKeyData = [(CKKSKey *)self wrappedKeyData];
        wrappedKeyData2 = [v5 wrappedKeyData];
        if ([wrappedKeyData isEqualToData:wrappedKeyData2])
        {
          zoneID = [(CKKSCKRecordHolder *)self zoneID];
          zoneID2 = [v5 zoneID];
          v20 = zoneID;
          v14 = zoneID;
          v15 = zoneID2;
          if ([v14 isEqual:zoneID2])
          {
            keyclass = [(CKKSKey *)self keyclass];
            keyclass2 = [v5 keyclass];
            v16 = [keyclass isEqual:keyclass2];
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

- (CKKSKey)initWithKeyCore:(id)core contextID:(id)d state:(id)state currentkey:(BOOL)currentkey
{
  coreCopy = core;
  stateCopy = state;
  dCopy = d;
  zoneID = [coreCopy zoneID];
  v26.receiver = self;
  v26.super_class = CKKSKey;
  v15 = [(CKKSCKRecordHolder *)&v26 initWithCKRecordType:@"synckey" encodedCKRecord:0 contextID:dCopy zoneID:zoneID];

  if (v15)
  {
    objc_storeStrong(&v15->_keycore, core);
    wrappedkey = [(CKKSKeychainBackedKey *)v15->_keycore wrappedkey];
    wrappedData = [wrappedkey wrappedData];
    wrappedKeyDataBackingStore = v15->_wrappedKeyDataBackingStore;
    v15->_wrappedKeyDataBackingStore = wrappedData;

    uuid = [coreCopy uuid];
    uuid = v15->_uuid;
    v15->_uuid = uuid;

    parentKeyUUID = [coreCopy parentKeyUUID];
    parentKeyUUID = v15->_parentKeyUUID;
    v15->_parentKeyUUID = parentKeyUUID;

    keyclass = [coreCopy keyclass];
    keyclass = v15->_keyclass;
    v15->_keyclass = keyclass;

    v15->_currentkey = currentkey;
    objc_storeStrong(&v15->_state, state);
  }

  return v15;
}

- (CKKSKey)initWithWrappedKeyData:(id)data contextID:(id)d uuid:(id)uuid parentKeyUUID:(id)iD keyclass:(id)keyclass state:(id)state zoneID:(id)zoneID encodedCKRecord:(id)self0 currentkey:(int64_t)self1
{
  dataCopy = data;
  uuidCopy = uuid;
  iDCopy = iD;
  keyclassCopy = keyclass;
  stateCopy = state;
  v26.receiver = self;
  v26.super_class = CKKSKey;
  v19 = [(CKKSCKRecordHolder *)&v26 initWithCKRecordType:@"synckey" encodedCKRecord:record contextID:d zoneID:zoneID];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_wrappedKeyDataBackingStore, data);
    objc_storeStrong(&v20->_uuid, uuid);
    objc_storeStrong(&v20->_parentKeyUUID, iD);
    objc_storeStrong(&v20->_keyclass, keyclass);
    v20->_currentkey = currentkey != 0;
    objc_storeStrong(&v20->_state, state);
  }

  return v20;
}

- (id)initSelfWrappedWithAESKey:(id)key contextID:(id)d uuid:(id)uuid keyclass:(id)keyclass state:(id)state zoneID:(id)iD encodedCKRecord:(id)record currentkey:(int64_t)self0
{
  keyCopy = key;
  uuidCopy = uuid;
  keyclassCopy = keyclass;
  stateCopy = state;
  iDCopy = iD;
  v33.receiver = self;
  v33.super_class = CKKSKey;
  v20 = [(CKKSCKRecordHolder *)&v33 initWithCKRecordType:@"synckey" encodedCKRecord:record contextID:d zoneID:iDCopy];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_uuid, uuid);
    objc_storeStrong(&v21->_parentKeyUUID, uuid);
    objc_storeStrong(&v21->_keyclass, keyclass);
    v32 = 0;
    stateCopy = [CKKSKeychainBackedKey keyWrappedBySelf:keyCopy uuid:uuidCopy keyclass:keyclassCopy zoneID:iDCopy error:&v32, stateCopy];
    v23 = v32;
    keycore = v21->_keycore;
    v21->_keycore = stateCopy;

    v25 = v21->_keycore;
    if (!v25)
    {

      v29 = 0;
      goto LABEL_6;
    }

    wrappedkey = [(CKKSKeychainBackedKey *)v25 wrappedkey];
    wrappedData = [wrappedkey wrappedData];
    wrappedKeyDataBackingStore = v21->_wrappedKeyDataBackingStore;
    v21->_wrappedKeyDataBackingStore = wrappedData;

    v21->_currentkey = currentkey != 0;
    objc_storeStrong(&v21->_state, state);
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

+ (BOOL)intransactionRecordDeleted:(id)deleted contextID:(id)d error:(id *)error
{
  deletedCopy = deleted;
  dCopy = d;
  while (1)
  {
    recordName = [deletedCopy recordName];
    zoneID = [deletedCopy zoneID];
    v25 = 0;
    v11 = [CKKSKey tryFromDatabaseAnyState:recordName contextID:dCopy zoneID:zoneID error:&v25];
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
      zoneID2 = [deletedCopy zoneID];
      zoneName = [zoneID2 zoneName];
      v22 = sub_100019104(@"ckkskey", zoneName);

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v27 = deletedCopy;
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
    zoneID3 = [deletedCopy zoneID];
    zoneName2 = [zoneID3 zoneName];
    v16 = sub_100019104(@"ckkskey", zoneName2);

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v27 = deletedCopy;
      v28 = 2112;
      v29 = v12;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Couldn't load key record from database: %@: %@", buf, 0x16u);
    }

    if (error)
    {
      v17 = v12;
      v18 = 0;
      *error = v12;
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v18 = 1;
LABEL_15:

  return v18;
}

+ (BOOL)intransactionRecordChanged:(id)changed contextID:(id)d resync:(BOOL)resync flagHandler:(id)handler error:(id *)error
{
  resyncCopy = resync;
  changedCopy = changed;
  dCopy = d;
  handlerCopy = handler;
  if (!resyncCopy)
  {
LABEL_17:
    v16 = [(CKKSCKRecordHolder *)[CKKSKey alloc] initWithCKRecord:changedCopy contextID:dCopy];
    uuid = [(CKKSKey *)v16 uuid];
    recordID = [(CKKSKey *)changedCopy recordID];
    zoneID = [recordID zoneID];
    v65 = 0;
    v26 = [CKKSKey tryFromDatabase:uuid contextID:dCopy zoneID:zoneID error:&v65];
    v38 = v65;

    if (v38)
    {
      recordID2 = [(CKKSKey *)changedCopy recordID];
      zoneID2 = [recordID2 zoneID];
      zoneName = [zoneID2 zoneName];
      v42 = sub_100019104(@"ckkskey", zoneName);

      v28 = handlerCopy;
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
      v28 = handlerCopy;
      if (v26 && [v26 matchesCKRecord:changedCopy])
      {
        [v26 setStoredCKRecord:changedCopy];
        v64 = 0;
        v54 = [v26 saveToDatabase:&v64];
        v55 = v64;
        v17 = v55;
        if (v54 && !v55)
        {
          goto LABEL_24;
        }

        recordID3 = [(CKKSKey *)changedCopy recordID];
        zoneID3 = [recordID3 zoneID];
        zoneName2 = [zoneID3 zoneName];
        v52 = sub_100019104(@"ckkskey", zoneName2);

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

    [(CKKSKey *)v16 setState:@"remote", error];
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

    recordID4 = [(CKKSKey *)changedCopy recordID];
    zoneID4 = [recordID4 zoneID];
    zoneName3 = [zoneID4 zoneName];
    v48 = sub_100019104(@"ckkskey", zoneName3);

    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v68 = v16;
      v69 = 2112;
      v70 = v17;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Couldn't save key record to database: %@: %@", buf, 0x16u);
    }

    recordID5 = [(CKKSKey *)changedCopy recordID];
    zoneID5 = [recordID5 zoneID];
    zoneName4 = [zoneID5 zoneName];
    v52 = sub_100019104(@"ckkskey", zoneName4);

    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v68 = changedCopy;
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

  recordID6 = [(CKKSKey *)changedCopy recordID];
  recordName = [recordID6 recordName];
  recordID7 = [(CKKSKey *)changedCopy recordID];
  zoneID6 = [recordID7 zoneID];
  v66 = 0;
  v16 = [CKKSKey tryFromDatabaseAnyState:recordName contextID:dCopy zoneID:zoneID6 error:&v66];
  v17 = v66;

  if (v17)
  {
    recordID8 = [(CKKSKey *)changedCopy recordID];
    zoneID7 = [recordID8 zoneID];
    zoneName5 = [zoneID7 zoneName];
    v21 = sub_100019104(@"ckksresync", zoneName5);

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v68 = v17;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "error loading key: %@", buf, 0xCu);
    }
  }

  if (!v16)
  {
    recordID9 = [(CKKSKey *)changedCopy recordID];
    zoneID8 = [recordID9 zoneID];
    zoneName6 = [zoneID8 zoneName];
    v26 = sub_100019104(@"ckksresync", zoneName6);

    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v68 = changedCopy;
      v32 = "BUG: No sync key matching resynced CloudKit record: %@";
      v33 = v26;
      v34 = 12;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, v32, buf, v34);
    }

LABEL_16:

    goto LABEL_17;
  }

  v22 = [(CKKSKey *)v16 matchesCKRecord:changedCopy];
  recordID10 = [(CKKSKey *)changedCopy recordID];
  zoneID9 = [recordID10 zoneID];
  zoneName7 = [zoneID9 zoneName];
  v26 = sub_100019104(@"ckksresync", zoneName7);

  if ((v22 & 1) == 0)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v68 = v16;
      v69 = 2112;
      v70 = changedCopy;
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
    v68 = changedCopy;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Already know about this sync key, skipping update: %@", buf, 0xCu);
  }

  v27 = 1;
  v28 = handlerCopy;
LABEL_38:

  return v27;
}

+ (id)loadFromProtobuf:(id)protobuf contextID:(id)d error:(id *)error
{
  dCopy = d;
  protobufCopy = protobuf;
  v9 = [[CKKSSerializedKey alloc] initWithData:protobufCopy];

  if (!v9)
  {
    goto LABEL_9;
  }

  uuid = [(CKKSSerializedKey *)v9 uuid];
  if (!uuid)
  {
    goto LABEL_9;
  }

  v11 = uuid;
  zoneName = [(CKKSSerializedKey *)v9 zoneName];
  if (!zoneName)
  {
    goto LABEL_8;
  }

  v13 = zoneName;
  keyclass = [(CKKSSerializedKey *)v9 keyclass];
  if (!keyclass)
  {

LABEL_8:
    goto LABEL_9;
  }

  v15 = keyclass;
  v16 = [(CKKSSerializedKey *)v9 key];

  if (v16)
  {
    v17 = [CKKSKey alloc];
    v18 = [CKKSAESSIVKey alloc];
    v19 = [(CKKSSerializedKey *)v9 key];
    bytes = [v19 bytes];
    v21 = [(CKKSSerializedKey *)v9 key];
    v22 = -[CKKSAESSIVKey initWithBytes:len:](v18, "initWithBytes:len:", bytes, [v21 length]);
    uuid2 = [(CKKSSerializedKey *)v9 uuid];
    keyclass2 = [(CKKSSerializedKey *)v9 keyclass];
    v25 = [CKRecordZoneID alloc];
    zoneName2 = [(CKKSSerializedKey *)v9 zoneName];
    v27 = [v25 initWithZoneName:zoneName2 ownerName:CKCurrentUserDefaultName];
    v28 = [(CKKSKey *)v17 initSelfWrappedWithAESKey:v22 contextID:dCopy uuid:uuid2 keyclass:keyclass2 state:@"remote" zoneID:v27 encodedCKRecord:0 currentkey:0];

    goto LABEL_12;
  }

LABEL_9:
  if (error)
  {
    [NSError errorWithDomain:@"CKKSErrorDomain" code:21 description:@"Data failed to parse as a CKKSSerializedKey"];
    *error = v28 = 0;
  }

  else
  {
    v28 = 0;
  }

LABEL_12:

  return v28;
}

+ (id)countsByClassWithContextID:(id)d zoneID:(id)iD error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
  v9 = objc_alloc_init(NSMutableDictionary);
  sqlTable = [objc_opt_class() sqlTable];
  v19[0] = @"contextID";
  v19[1] = @"ckzone";
  v20[0] = dCopy;
  zoneName = [iDCopy zoneName];

  if (zoneName)
  {
    v12 = zoneName;
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
  [CKKSSQLDatabaseObject queryDatabaseTable:sqlTable where:v14 columns:&off_100365970 groupBy:&off_100365988 orderBy:0 limit:-1 processRow:v17 error:error];

  return v15;
}

+ (id)countsWithContextID:(id)d zoneID:(id)iD error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100155F70;
  v22 = sub_100155F80;
  v23 = 0;
  sqlTable = [objc_opt_class() sqlTable];
  v25[0] = dCopy;
  v24[0] = @"contextID";
  v24[1] = @"ckzone";
  zoneName = [iDCopy zoneName];
  v11 = zoneName;
  if (zoneName)
  {
    v12 = zoneName;
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
  [CKKSSQLDatabaseObject queryDatabaseTable:sqlTable where:v14 columns:&off_100365958 groupBy:0 orderBy:0 limit:-1 processRow:v17 error:error];

  v15 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v15;
}

+ (id)fromDatabaseRow:(id)row
{
  rowCopy = row;
  v4 = [CKKSKey alloc];
  v24 = [rowCopy objectForKeyedSubscript:@"wrappedkey"];
  asBase64DecodedData = [v24 asBase64DecodedData];
  v23 = [rowCopy objectForKeyedSubscript:@"contextID"];
  asString = [v23 asString];
  v22 = [rowCopy objectForKeyedSubscript:@"UUID"];
  asString2 = [v22 asString];
  v21 = [rowCopy objectForKeyedSubscript:@"parentKeyUUID"];
  asString3 = [v21 asString];
  v20 = [rowCopy objectForKeyedSubscript:@"keyclass"];
  asString4 = [v20 asString];
  v19 = [rowCopy objectForKeyedSubscript:@"state"];
  asString5 = [v19 asString];
  v7 = [CKRecordZoneID alloc];
  v16 = [rowCopy objectForKeyedSubscript:@"ckzone"];
  asString6 = [v16 asString];
  v9 = [v7 initWithZoneName:asString6 ownerName:CKCurrentUserDefaultName];
  v10 = [rowCopy objectForKeyedSubscript:@"ckrecord"];
  asBase64DecodedData2 = [v10 asBase64DecodedData];
  v12 = [rowCopy objectForKeyedSubscript:@"currentkey"];

  v15 = -[CKKSKey initWithWrappedKeyData:contextID:uuid:parentKeyUUID:keyclass:state:zoneID:encodedCKRecord:currentkey:](v4, "initWithWrappedKeyData:contextID:uuid:parentKeyUUID:keyclass:state:zoneID:encodedCKRecord:currentkey:", asBase64DecodedData, asString, asString2, asString3, asString4, asString5, v9, asBase64DecodedData2, [v12 asNSInteger]);

  return v15;
}

+ (id)localKeysForContextID:(id)d zoneID:(id)iD error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
  v18[0] = @"contextID";
  v10 = dCopy;
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
  zoneName = [iDCopy zoneName];
  v19[2] = zoneName;
  v15 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];
  v16 = [self allWhere:v15 error:error];

  return v16;
}

+ (id)remoteKeysForContextID:(id)d zoneID:(id)iD error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
  v18[0] = @"contextID";
  v10 = dCopy;
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
  zoneName = [iDCopy zoneName];
  v19[2] = zoneName;
  v15 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];
  v16 = [self allWhere:v15 error:error];

  return v16;
}

+ (id)allKeysForContextID:(id)d zoneID:(id)iD error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
  v18[0] = @"contextID";
  v10 = dCopy;
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
  zoneName = [iDCopy zoneName];
  v19[1] = zoneName;
  v15 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  v16 = [self allWhere:v15 error:error];

  return v16;
}

+ (id)currentKeysForClass:(id)class contextID:(id)d state:(id)state zoneID:(id)iD error:(id *)error
{
  classCopy = class;
  dCopy = d;
  stateCopy = state;
  iDCopy = iD;
  v26[0] = classCopy;
  v25[0] = @"keyclass";
  v25[1] = @"contextID";
  v16 = dCopy;
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
  if (stateCopy)
  {
    v20 = stateCopy;
  }

  v26[3] = v20;
  v25[4] = @"ckzone";
  zoneName = [iDCopy zoneName];
  v26[4] = zoneName;
  v22 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:5];
  v23 = [self allWhere:v22 error:error];

  return v23;
}

+ (id)currentKeyForClass:(id)class contextID:(id)d zoneID:(id)iD error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
  v12 = [CKKSCurrentKeyPointer fromDatabase:class contextID:dCopy zoneID:iDCopy error:error];
  v13 = v12;
  if (v12)
  {
    currentKeyUUID = [v12 currentKeyUUID];
    v15 = [self fromDatabase:currentKeyUUID contextID:dCopy zoneID:iDCopy error:error];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)selfWrappedKeysForContextID:(id)d zoneID:(id)iD error:(id *)error
{
  dCopy = d;
  v19[0] = @"UUID";
  iDCopy = iD;
  v10 = [CKKSSQLWhereColumn op:1 column:2];
  v20[0] = v10;
  v19[1] = @"contextID";
  v11 = dCopy;
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
  zoneName = [iDCopy zoneName];

  v20[3] = zoneName;
  v16 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];
  v17 = [self allWhere:v16 error:error];

  return v17;
}

+ (id)tryFromDatabaseAnyState:(id)state contextID:(id)d zoneID:(id)iD error:(id *)error
{
  stateCopy = state;
  dCopy = d;
  iDCopy = iD;
  v21[0] = @"contextID";
  v13 = dCopy;
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
  v22[1] = stateCopy;
  v21[1] = @"UUID";
  v21[2] = @"ckzone";
  zoneName = [iDCopy zoneName];
  v22[2] = zoneName;
  v18 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];
  v19 = [self tryFromDatabaseWhere:v18 error:error];

  return v19;
}

+ (id)tryFromDatabase:(id)database contextID:(id)d zoneID:(id)iD error:(id *)error
{
  databaseCopy = database;
  dCopy = d;
  iDCopy = iD;
  v21[0] = @"contextID";
  v13 = dCopy;
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
  v22[1] = databaseCopy;
  v21[1] = @"UUID";
  v21[2] = @"state";
  v22[2] = @"local";
  v21[3] = @"ckzone";
  zoneName = [iDCopy zoneName];
  v22[3] = zoneName;
  v18 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:4];
  v19 = [self tryFromDatabaseWhere:v18 error:error];

  return v19;
}

+ (id)fromDatabaseAnyState:(id)state contextID:(id)d zoneID:(id)iD error:(id *)error
{
  stateCopy = state;
  dCopy = d;
  iDCopy = iD;
  v21[0] = @"contextID";
  v13 = dCopy;
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
  v22[1] = stateCopy;
  v21[1] = @"UUID";
  v21[2] = @"ckzone";
  zoneName = [iDCopy zoneName];
  v22[2] = zoneName;
  v18 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];
  v19 = [self fromDatabaseWhere:v18 error:error];

  return v19;
}

+ (id)fromDatabase:(id)database contextID:(id)d zoneID:(id)iD error:(id *)error
{
  databaseCopy = database;
  dCopy = d;
  iDCopy = iD;
  v21[0] = @"contextID";
  v13 = dCopy;
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
  v22[1] = databaseCopy;
  v21[1] = @"UUID";
  v21[2] = @"state";
  v22[2] = @"local";
  v21[3] = @"ckzone";
  zoneName = [iDCopy zoneName];
  v22[3] = zoneName;
  v18 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:4];
  v19 = [self fromDatabaseWhere:v18 error:error];

  return v19;
}

+ (id)isItemKeyForKeychainView:(SecDbItem *)view
{
  v4 = sub_100015B5C(view, kSecAttrAccessGroup);
  v5 = sub_100015B5C(view, kSecAttrDescription);
  v6 = sub_100015B5C(view, kSecAttrServer);
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

+ (id)randomKeyWrappedBySelf:(id)self contextID:(id)d error:(id *)error
{
  dCopy = d;
  v8 = [CKKSKeychainBackedKey randomKeyWrappedBySelf:self error:error];
  if (v8)
  {
    v9 = [[CKKSKey alloc] initWithKeyCore:v8 contextID:dCopy state:@"local" currentkey:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)randomKeyWrappedByParent:(id)parent keyclass:(id)keyclass error:(id *)error
{
  parentCopy = parent;
  keyclassCopy = keyclass;
  v9 = [parentCopy getKeychainBackedKey:error];
  if (v9)
  {
    v10 = [CKKSKeychainBackedKey randomKeyWrappedByParent:v9 keyclass:keyclassCopy error:error];
    if (v10)
    {
      v11 = [CKKSKey alloc];
      contextID = [parentCopy contextID];
      v13 = [(CKKSKey *)v11 initWithKeyCore:v10 contextID:contextID state:@"local" currentkey:0];
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

+ (id)randomKeyWrappedByParent:(id)parent error:(id *)error
{
  parentCopy = parent;
  keyclass = [parentCopy keyclass];
  v8 = [self randomKeyWrappedByParent:parentCopy keyclass:keyclass error:error];

  return v8;
}

+ (id)loadKeyWithUUID:(id)d contextID:(id)iD zoneID:(id)zoneID error:(id *)error
{
  iDCopy = iD;
  v10 = [CKKSKey fromDatabase:d contextID:iDCopy zoneID:zoneID error:error];
  v11 = [v10 ensureKeyLoadedForContextID:iDCopy cache:0 error:error];

  if (v11)
  {
    v11 = v10;
  }

  return v11;
}

@end