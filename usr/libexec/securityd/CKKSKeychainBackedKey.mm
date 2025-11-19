@interface CKKSKeychainBackedKey
+ (id)fetchKeyMaterialItemFromKeychain:(id)a3 resave:(BOOL *)a4 error:(id *)a5;
+ (id)key:(id)a3 wrappedByKey:(id)a4 uuid:(id)a5 parentKeyUUID:(id)a6 keyclass:(id)a7 zoneID:(id)a8 error:(id *)a9;
+ (id)loadFromProtobuf:(id)a3 error:(id *)a4;
+ (id)queryKeyMaterialInKeychain:(id)a3 error:(id *)a4;
+ (id)randomKeyWrappedByParent:(id)a3 error:(id *)a4;
+ (id)randomKeyWrappedByParent:(id)a3 keyclass:(id)a4 error:(id *)a5;
+ (id)randomKeyWrappedBySelf:(id)a3 error:(id *)a4;
+ (id)setKeyMaterialInKeychain:(id)a3 error:(id *)a4;
- (BOOL)deleteKeyMaterialFromKeychain:(id *)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)loadKeyMaterialFromKeychain:(id *)a3;
- (BOOL)saveKeyMaterialToKeychain:(BOOL)a3 error:(id *)a4;
- (BOOL)trySelfWrappedKeyCandidate:(id)a3 error:(id *)a4;
- (BOOL)unwrapSelfWithAESKey:(id)a3 error:(id *)a4;
- (BOOL)wrapUnder:(id)a3 error:(id *)a4;
- (BOOL)wrapsSelf;
- (CKKSKeychainBackedKey)initWithAESKey:(id)a3 wrappedAESKey:(id)a4 uuid:(id)a5 parentKeyUUID:(id)a6 keyclass:(id)a7 zoneID:(id)a8;
- (CKKSKeychainBackedKey)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)decryptData:(id)a3 authenticatedData:(id)a4 error:(id *)a5;
- (id)description;
- (id)encryptData:(id)a3 authenticatedData:(id)a4 error:(id *)a5;
- (id)ensureKeyLoadedFromKeychain:(id *)a3;
- (id)serializeAsProtobuf:(id *)a3;
- (id)unwrapAESKey:(id)a3 error:(id *)a4;
- (id)wrapAESKey:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKKSKeychainBackedKey

- (CKKSKeychainBackedKey)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CKKSKeychainBackedKey;
  v5 = [(CKKSKeychainBackedKey *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parentKeyUUID"];
    parentKeyUUID = v5->_parentKeyUUID;
    v5->_parentKeyUUID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyclass"];
    keyclass = v5->_keyclass;
    v5->_keyclass = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"zoneID"];
    zoneID = v5->_zoneID;
    v5->_zoneID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wrappedkey"];
    wrappedkey = v5->_wrappedkey;
    v5->_wrappedkey = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CKKSKeychainBackedKey *)self uuid];
  [v4 encodeObject:v5 forKey:@"uuid"];

  v6 = [(CKKSKeychainBackedKey *)self parentKeyUUID];
  [v4 encodeObject:v6 forKey:@"parentKeyUUID"];

  v7 = [(CKKSKeychainBackedKey *)self keyclass];
  [v4 encodeObject:v7 forKey:@"keyclass"];

  v8 = [(CKKSKeychainBackedKey *)self zoneID];
  [v4 encodeObject:v8 forKey:@"zoneID"];

  v9 = [(CKKSKeychainBackedKey *)self wrappedkey];
  [v4 encodeObject:v9 forKey:@"wrappedkey"];
}

- (id)serializeAsProtobuf:(id *)a3
{
  v4 = [(CKKSKeychainBackedKey *)self ensureKeyLoadedFromKeychain:a3];

  if (v4)
  {
    v5 = objc_alloc_init(CKKSSerializedKey);
    v6 = [(CKKSKeychainBackedKey *)self uuid];
    [(CKKSSerializedKey *)v5 setUuid:v6];

    v7 = [(CKKSKeychainBackedKey *)self zoneID];
    v8 = [v7 zoneName];
    [(CKKSSerializedKey *)v5 setZoneName:v8];

    v9 = [(CKKSKeychainBackedKey *)self keyclass];
    [(CKKSSerializedKey *)v5 setKeyclass:v9];

    v10 = [NSData alloc];
    v11 = [(CKKSKeychainBackedKey *)self aessivkey];
    v12 = [(CKKSKeychainBackedKey *)self aessivkey];
    v13 = [v10 initWithBytes:v11 + 8 length:v12[11]];
    [(CKKSSerializedKey *)v5 setKey:v13];

    v14 = [(CKKSSerializedKey *)v5 data];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(CKKSKeychainBackedKey *)self zoneID];
  v6 = [v5 zoneName];
  v7 = [(CKKSKeychainBackedKey *)self uuid];
  v8 = [(CKKSKeychainBackedKey *)self keyclass];
  v9 = [NSString stringWithFormat:@"<%@(%@): %@ (%@)>", v4, v6, v7, v8];

  return v9;
}

- (BOOL)deleteKeyMaterialFromKeychain:(id *)a3
{
  v19[0] = kSecClass;
  v19[1] = kSecUseDataProtectionKeychain;
  v20[0] = kSecClassInternetPassword;
  v20[1] = &__kCFBooleanTrue;
  v20[2] = @"com.apple.security.ckks";
  v19[2] = kSecAttrAccessGroup;
  v19[3] = kSecAttrDescription;
  v5 = [(CKKSKeychainBackedKey *)self keyclass];
  v20[3] = v5;
  v19[4] = kSecAttrAccount;
  v6 = [(CKKSKeychainBackedKey *)self uuid];
  v20[4] = v6;
  v19[5] = kSecAttrServer;
  v7 = [(CKKSKeychainBackedKey *)self zoneID];
  v8 = [v7 zoneName];
  v19[6] = kSecReturnData;
  v20[5] = v8;
  v20[6] = &__kCFBooleanTrue;
  v9 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:7];
  v10 = [v9 mutableCopy];

  v11 = [(CKKSKeychainBackedKey *)self keyclass];
  LODWORD(v6) = [v11 isEqualToString:@"tlk"];

  if (v6)
  {
    [v10 setObject:kCFBooleanTrue forKeyedSubscript:kSecAttrSynchronizable];
  }

  v12 = SecItemDelete(v10);
  v13 = v12;
  if (a3 && v12)
  {
    v17 = NSLocalizedDescriptionKey;
    v14 = [NSString stringWithFormat:@"Couldn't delete %@ from keychain: %d", self, v12];
    v18 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    *a3 = [NSError errorWithDomain:@"securityd" code:v13 userInfo:v15];
  }

  return v13 == 0;
}

- (BOOL)loadKeyMaterialFromKeychain:(id *)a3
{
  v18 = 0;
  v5 = [CKKSKeychainBackedKey fetchKeyMaterialItemFromKeychain:self resave:&v18 error:a3];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:kSecValueData];
    v8 = [[NSMutableData alloc] initWithBase64EncodedData:v7 options:0];
    if (v8)
    {
      v9 = -[CKKSAESSIVKey initWithBytes:len:]([CKKSAESSIVKey alloc], "initWithBytes:len:", [v8 bytes], objc_msgSend(v8, "length"));
      memset_s([v8 mutableBytes], objc_msgSend(v8, "length"), 0, objc_msgSend(v8, "length"));
      [(CKKSKeychainBackedKey *)self setAessivkey:v9];
      if (v18 == 1)
      {
        v10 = sub_100019104(@"ckkskey", 0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v20 = self;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Resaving %@ as per request", buf, 0xCu);
        }

        v17 = 0;
        [(CKKSKeychainBackedKey *)self saveKeyMaterialToKeychain:&v17];
        v11 = v17;
        if (v11)
        {
          v12 = sub_100019104(@"ckkskey", 0);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v20 = self;
            v21 = 2112;
            v22 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Resaving %@ failed: %@", buf, 0x16u);
          }
        }
      }

      v13 = [(CKKSKeychainBackedKey *)self aessivkey];
      v14 = v13 != 0;
    }

    else
    {
      v15 = sub_100019104(@"ckkskey", 0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = self;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Unable to unbase64 key: %@", buf, 0xCu);
      }

      if (!a3)
      {
        v14 = 0;
        goto LABEL_18;
      }

      v9 = [NSString stringWithFormat:@"unable to unbase64 key: %@", self];
      [NSError errorWithDomain:@"CKKSErrorDomain" code:36 description:v9];
      *a3 = v14 = 0;
    }

LABEL_18:
    goto LABEL_19;
  }

  v14 = 0;
LABEL_19:

  return v14;
}

- (BOOL)saveKeyMaterialToKeychain:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  v7 = [(CKKSKeychainBackedKey *)self ensureKeyLoadedFromKeychain:a4];

  if (!v7)
  {
    return 0;
  }

  v44 = v5;
  v8 = [NSData alloc];
  v9 = [(CKKSKeychainBackedKey *)self aessivkey];
  v10 = [(CKKSKeychainBackedKey *)self aessivkey];
  v11 = [v8 initWithBytes:v9 + 8 length:v10[11]];
  v12 = [v11 base64EncodedDataWithOptions:0];

  v52[0] = kSecClass;
  v52[1] = kSecAttrAccessible;
  v53[0] = kSecClassInternetPassword;
  v53[1] = kSecAttrAccessibleWhenUnlocked;
  v52[2] = kSecUseDataProtectionKeychain;
  v52[3] = kSecAttrAccessGroup;
  v53[2] = &__kCFBooleanTrue;
  v53[3] = @"com.apple.security.ckks";
  v52[4] = kSecAttrDescription;
  v13 = [(CKKSKeychainBackedKey *)self keyclass];
  v53[4] = v13;
  v52[5] = kSecAttrServer;
  v14 = [(CKKSKeychainBackedKey *)self zoneID];
  v15 = [v14 zoneName];
  v53[5] = v15;
  v52[6] = kSecAttrAccount;
  v16 = [(CKKSKeychainBackedKey *)self uuid];
  v53[6] = v16;
  v52[7] = kSecAttrPath;
  v17 = [(CKKSKeychainBackedKey *)self parentKeyUUID];
  v53[7] = v17;
  v53[8] = &__kCFBooleanTrue;
  v52[8] = kSecAttrIsInvisible;
  v52[9] = kSecValueData;
  v45 = v12;
  v53[9] = v12;
  v18 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:10];
  v19 = [v18 mutableCopy];

  v20 = [(CKKSKeychainBackedKey *)self keyclass];
  LODWORD(v18) = [v20 isEqualToString:@"tlk"];

  if (v18)
  {
    [v19 setObject:kSecAttrViewHintPCSMasterKey forKeyedSubscript:kSecAttrSyncViewHint];
    [v19 setObject:kCFBooleanTrue forKeyedSubscript:kSecAttrSynchronizable];
  }

  v21 = [(CKKSKeychainBackedKey *)self keyclass];
  v22 = [v21 isEqualToString:@"classC"];

  if (v22)
  {
    v23 = kSecAttrAccessibleAfterFirstUnlock;
  }

  else
  {
    v23 = kSecAttrAccessibleWhenUnlocked;
  }

  [v19 setObject:v23 forKeyedSubscript:kSecAttrAccessible];
  v47 = 0;
  v24 = [CKKSKeychainBackedKey setKeyMaterialInKeychain:v19 error:&v47];
  v25 = v47;
  v26 = v25;
  if (a4 && v25)
  {
    v27 = [v25 code];
    v50[0] = NSLocalizedDescriptionKey;
    v28 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Couldn't save %@ to keychain: %d", self, [v26 code]);
    v50[1] = NSUnderlyingErrorKey;
    v51[0] = v28;
    v51[1] = v26;
    v29 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:2];
    *a4 = [NSError errorWithDomain:@"securityd" code:v27 userInfo:v29];
  }

  if (v44)
  {
    v30 = [(CKKSKeychainBackedKey *)self keyclass];
    v31 = [v30 isEqualToString:@"tlk"];

    if (v31)
    {
      v48[0] = kSecClass;
      v48[1] = kSecAttrAccessible;
      v49[0] = kSecClassInternetPassword;
      v49[1] = kSecAttrAccessibleWhenUnlocked;
      v48[2] = kSecUseDataProtectionKeychain;
      v48[3] = kSecAttrAccessGroup;
      v49[2] = &__kCFBooleanTrue;
      v49[3] = @"com.apple.security.ckks";
      v48[4] = kSecAttrDescription;
      v32 = [(CKKSKeychainBackedKey *)self keyclass];
      v33 = [v32 stringByAppendingString:@"-nonsync"];
      v49[4] = v33;
      v48[5] = kSecAttrServer;
      v34 = [(CKKSKeychainBackedKey *)self zoneID];
      v35 = [v34 zoneName];
      v49[5] = v35;
      v48[6] = kSecAttrAccount;
      v36 = [(CKKSKeychainBackedKey *)self uuid];
      v49[6] = v36;
      v48[7] = kSecAttrPath;
      v37 = [(CKKSKeychainBackedKey *)self parentKeyUUID];
      v49[7] = v37;
      v49[8] = &__kCFBooleanTrue;
      v48[8] = kSecAttrIsInvisible;
      v48[9] = kSecValueData;
      v49[9] = v45;
      v38 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:10];
      v39 = [v38 mutableCopy];

      [v39 setObject:kCFBooleanFalse forKeyedSubscript:kSecAttrSynchronizable];
      v46 = v26;
      v40 = [CKKSKeychainBackedKey setKeyMaterialInKeychain:v39 error:&v46];
      v41 = v46;

      v26 = v41;
      v19 = v39;
    }
  }

  v42 = v26 == 0;

  return v42;
}

- (id)decryptData:(id)a3 authenticatedData:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(CKKSKeychainBackedKey *)self ensureKeyLoadedFromKeychain:a5];
  v11 = [v10 decryptData:v9 authenticatedData:v8 error:a5];

  return v11;
}

- (id)encryptData:(id)a3 authenticatedData:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(CKKSKeychainBackedKey *)self ensureKeyLoadedFromKeychain:a5];
  v11 = [v10 encryptData:v9 authenticatedData:v8 error:a5];

  return v11;
}

- (id)unwrapAESKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CKKSKeychainBackedKey *)self ensureKeyLoadedFromKeychain:a4];
  v8 = [v7 unwrapAESKey:v6 error:a4];

  return v8;
}

- (id)wrapAESKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CKKSKeychainBackedKey *)self ensureKeyLoadedFromKeychain:a4];
  v8 = [v7 wrapAESKey:v6 error:a4];

  return v8;
}

- (BOOL)trySelfWrappedKeyCandidate:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(CKKSKeychainBackedKey *)self wrapsSelf])
  {
    v7 = [(CKKSKeychainBackedKey *)self wrappedkey];
    v8 = [v6 unwrapAESKey:v7 error:a4];

    if (v8 && [v8 isEqual:v6])
    {
      objc_storeStrong(&self->_aessivkey, v8);
      v9 = 1;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    if (a4)
    {
      v10 = [NSString stringWithFormat:@"%@ is not self-wrapped", self, NSLocalizedDescriptionKey];
      v14 = v10;
      v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      *a4 = [NSError errorWithDomain:@"CKKSErrorDomain" code:18 userInfo:v11];
    }

    v9 = 0;
  }

  return v9;
}

- (id)ensureKeyLoadedFromKeychain:(id *)a3
{
  v5 = [(CKKSKeychainBackedKey *)self aessivkey];

  if (v5 || [(CKKSKeychainBackedKey *)self loadKeyMaterialFromKeychain:a3])
  {
    v6 = [(CKKSKeychainBackedKey *)self aessivkey];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)unwrapSelfWithAESKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CKKSKeychainBackedKey *)self wrappedkey];
  v8 = [v6 unwrapAESKey:v7 error:a4];

  aessivkey = self->_aessivkey;
  self->_aessivkey = v8;

  return self->_aessivkey != 0;
}

- (BOOL)wrapUnder:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CKKSKeychainBackedKey *)self aessivkey];
  v14 = 0;
  v8 = [v6 wrapAESKey:v7 error:&v14];
  v9 = v14;

  if (v8)
  {
    [(CKKSKeychainBackedKey *)self setWrappedkey:v8];
    v10 = [v6 uuid];
    [(CKKSKeychainBackedKey *)self setParentKeyUUID:v10];
  }

  else
  {
    v11 = sub_100019104(@"ckkskey", 0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "couldn't wrap key: %@", buf, 0xCu);
    }

    if (a4)
    {
      v12 = v9;
      *a4 = v9;
    }
  }

  return v8 != 0;
}

- (BOOL)wrapsSelf
{
  v3 = [(CKKSKeychainBackedKey *)self uuid];
  v4 = [(CKKSKeychainBackedKey *)self parentKeyUUID];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CKKSKeychainBackedKey *)self uuid];
    v7 = [v5 uuid];
    if ([v6 isEqual:v7])
    {
      v8 = [(CKKSKeychainBackedKey *)self parentKeyUUID];
      v9 = [v5 parentKeyUUID];
      if ([v8 isEqual:v9])
      {
        v10 = [(CKKSKeychainBackedKey *)self zoneID];
        v11 = [v5 zoneID];
        if ([v10 isEqual:v11])
        {
          v12 = [(CKKSKeychainBackedKey *)self wrappedkey];
          v13 = [v5 wrappedkey];
          v20 = v12;
          v14 = v12;
          v15 = v13;
          if ([v14 isEqual:v13])
          {
            v19 = [(CKKSKeychainBackedKey *)self keyclass];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CKKSKeychainBackedKey allocWithZone:a3];
  v5 = [(CKKSKeychainBackedKey *)self aessivkey];
  v6 = [v5 copy];
  v7 = [(CKKSKeychainBackedKey *)self wrappedkey];
  v8 = [(CKKSKeychainBackedKey *)self uuid];
  v9 = [(CKKSKeychainBackedKey *)self parentKeyUUID];
  v10 = [(CKKSKeychainBackedKey *)self keyclass];
  v11 = [(CKKSKeychainBackedKey *)self zoneID];
  v12 = [(CKKSKeychainBackedKey *)v4 initWithAESKey:v6 wrappedAESKey:v7 uuid:v8 parentKeyUUID:v9 keyclass:v10 zoneID:v11];

  return v12;
}

- (CKKSKeychainBackedKey)initWithAESKey:(id)a3 wrappedAESKey:(id)a4 uuid:(id)a5 parentKeyUUID:(id)a6 keyclass:(id)a7 zoneID:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = CKKSKeychainBackedKey;
  v18 = [(CKKSKeychainBackedKey *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_uuid, a5);
    objc_storeStrong(&v19->_parentKeyUUID, a6);
    objc_storeStrong(&v19->_zoneID, a8);
    objc_storeStrong(&v19->_wrappedkey, a4);
    objc_storeStrong(&v19->_keyclass, a7);
    objc_storeStrong(&v19->_aessivkey, a3);
  }

  return v19;
}

+ (id)loadFromProtobuf:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [[CKKSSerializedKey alloc] initWithData:v5];

  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = [(CKKSSerializedKey *)v6 uuid];
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [(CKKSSerializedKey *)v6 zoneName];
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = v9;
  v11 = [(CKKSSerializedKey *)v6 keyclass];
  if (!v11)
  {

LABEL_8:
    goto LABEL_9;
  }

  v12 = v11;
  v13 = [(CKKSSerializedKey *)v6 key];

  if (v13)
  {
    v14 = [CKKSAESSIVKey alloc];
    v15 = [(CKKSSerializedKey *)v6 key];
    v16 = [v15 bytes];
    v17 = [(CKKSSerializedKey *)v6 key];
    v18 = -[CKKSAESSIVKey initWithBytes:len:](v14, "initWithBytes:len:", v16, [v17 length]);

    v19 = [(CKKSSerializedKey *)v6 uuid];
    v20 = [(CKKSSerializedKey *)v6 keyclass];
    v21 = [CKRecordZoneID alloc];
    v22 = [(CKKSSerializedKey *)v6 zoneName];
    v23 = [v21 initWithZoneName:v22 ownerName:CKCurrentUserDefaultName];
    v24 = [CKKSKeychainBackedKey keyWrappedBySelf:v18 uuid:v19 keyclass:v20 zoneID:v23 error:a4];

    goto LABEL_12;
  }

LABEL_9:
  if (a4)
  {
    [NSError errorWithDomain:@"CKKSErrorDomain" code:21 description:@"Data failed to parse as a CKKSSerializedKey"];
    *a4 = v24 = 0;
  }

  else
  {
    v24 = 0;
  }

LABEL_12:

  return v24;
}

+ (id)fetchKeyMaterialItemFromKeychain:(id)a3 resave:(BOOL *)a4 error:(id *)a5
{
  v5 = a3;
  v74[0] = kSecClass;
  v74[1] = kSecUseDataProtectionKeychain;
  v75[0] = kSecClassInternetPassword;
  v75[1] = &__kCFBooleanTrue;
  v75[2] = @"com.apple.security.ckks";
  v74[2] = kSecAttrAccessGroup;
  v74[3] = kSecAttrDescription;
  v6 = [v5 keyclass];
  v75[3] = v6;
  v74[4] = kSecAttrAccount;
  v7 = [v5 uuid];
  v75[4] = v7;
  v74[5] = kSecAttrServer;
  v8 = [v5 zoneID];
  v9 = [v8 zoneName];
  v75[5] = v9;
  v74[6] = kSecAttrPath;
  v10 = [v5 parentKeyUUID];
  v75[6] = v10;
  v75[7] = &__kCFBooleanTrue;
  v74[7] = kSecReturnAttributes;
  v74[8] = kSecReturnData;
  v75[8] = &__kCFBooleanTrue;
  v11 = [NSDictionary dictionaryWithObjects:v75 forKeys:v74 count:9];
  v12 = [v11 mutableCopy];

  v13 = [v5 keyclass];
  LODWORD(v9) = [v13 isEqualToString:@"tlk"];

  if (v9)
  {
    [v12 setObject:kCFBooleanTrue forKeyedSubscript:kSecAttrSynchronizable];
  }

  v61 = 0;
  v14 = [a1 queryKeyMaterialInKeychain:v12 error:&v61];
  v15 = v61;
  v16 = v15;
  if (v14)
  {
    v17 = v14;
    v18 = v17;
    v19 = v16;
    v20 = v12;
LABEL_5:
    v21 = v17;
    goto LABEL_6;
  }

  if (!v15 || [v15 code] == -25300)
  {

    v23 = [v5 keyclass];
    v24 = [v23 isEqualToString:@"tlk"];

    if (v24)
    {
      v70[0] = kSecClass;
      v70[1] = kSecUseDataProtectionKeychain;
      v71[0] = kSecClassInternetPassword;
      v71[1] = &__kCFBooleanTrue;
      v71[2] = @"com.apple.security.ckks";
      v70[2] = kSecAttrAccessGroup;
      v70[3] = kSecAttrDescription;
      v53 = [v5 keyclass];
      v52 = [v53 stringByAppendingString:@"-piggy"];
      v71[3] = v52;
      v71[4] = kSecAttrSynchronizableAny;
      v70[4] = kSecAttrSynchronizable;
      v70[5] = kSecAttrAccount;
      v51 = [v5 uuid];
      v25 = [NSString stringWithFormat:@"%@-piggy", v51];
      v71[5] = v25;
      v70[6] = kSecAttrServer;
      v26 = [v5 zoneID];
      v27 = [v26 zoneName];
      v71[6] = v27;
      v71[7] = &__kCFBooleanTrue;
      v70[7] = kSecReturnAttributes;
      v70[8] = kSecReturnData;
      v70[9] = kSecMatchLimit;
      v71[8] = &__kCFBooleanTrue;
      v71[9] = kSecMatchLimitOne;
      v28 = [NSDictionary dictionaryWithObjects:v71 forKeys:v70 count:10];
      v20 = [v28 mutableCopy];

      v60 = 0;
      v18 = [a1 queryKeyMaterialInKeychain:v20 error:&v60];
      v29 = v60;
      if (!v29)
      {
        v46 = sub_100019104(@"ckkskey", 0);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v47 = [v5 uuid];
          *buf = 138412290;
          v69 = v47;
          v48 = "loaded a piggy TLK (%@)";
LABEL_36:
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, v48, buf, 0xCu);
        }

LABEL_37:

        if (a4)
        {
          *a4 = 1;
        }

        v17 = v18;
        v18 = v17;
        v19 = 0;
        goto LABEL_5;
      }

      v19 = v29;
      if ([v29 code] != -25300)
      {
        v37 = a5;
        if (a5)
        {
          v38 = [v19 code];
          v66[0] = NSLocalizedDescriptionKey;
          v39 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Couldn't load %@ from keychain: %d", v5, [v19 code]);
          v66[1] = NSUnderlyingErrorKey;
          v67[0] = v39;
          v67[1] = v19;
          v40 = v67;
          v41 = v66;
          goto LABEL_32;
        }

LABEL_33:
        v21 = 0;
        goto LABEL_6;
      }

      v12 = v20;
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    v30 = [v5 keyclass];
    v31 = [v30 isEqualToString:@"tlk"];

    if (!v31)
    {
      v19 = 0;
      v20 = v12;
      goto LABEL_25;
    }

    v64[0] = kSecClass;
    v64[1] = kSecUseDataProtectionKeychain;
    v65[0] = kSecClassInternetPassword;
    v65[1] = &__kCFBooleanTrue;
    v65[2] = @"com.apple.security.ckks";
    v64[2] = kSecAttrAccessGroup;
    v64[3] = kSecAttrDescription;
    v56 = [v5 keyclass];
    v55 = [v56 stringByAppendingString:@"-nonsync"];
    v65[3] = v55;
    v64[4] = kSecAttrServer;
    v32 = [v5 zoneID];
    v33 = [v32 zoneName];
    v65[4] = v33;
    v64[5] = kSecAttrAccount;
    v34 = [v5 uuid];
    v65[5] = v34;
    v65[6] = &__kCFBooleanTrue;
    v64[6] = kSecReturnAttributes;
    v64[7] = kSecReturnData;
    v64[8] = kSecAttrSynchronizable;
    v65[7] = &__kCFBooleanTrue;
    v65[8] = &__kCFBooleanFalse;
    [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:9];
    v36 = v35 = v18;
    v20 = [v36 mutableCopy];

    v59 = 0;
    v18 = [a1 queryKeyMaterialInKeychain:v20 error:&v59];
    v19 = v59;

    if (v19)
    {
      if ([v19 code] != -25300)
      {
        v37 = a5;
        if (a5)
        {
          v38 = [v19 code];
          v62[0] = NSLocalizedDescriptionKey;
          v39 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Couldn't load %@ from keychain: %d", v5, [v19 code]);
          v62[1] = NSUnderlyingErrorKey;
          v63[0] = v39;
          v63[1] = v19;
          v40 = v63;
          v41 = v62;
LABEL_32:
          v49 = [NSDictionary dictionaryWithObjects:v40 forKeys:v41 count:2];
          *v37 = [NSError errorWithDomain:@"securityd" code:v38 userInfo:v49];

          goto LABEL_33;
        }

        goto LABEL_33;
      }

LABEL_25:
      if (a5)
      {
        if (v16)
        {
          v45 = [v16 code];
        }

        else
        {
          v45 = -50;
        }

        v50 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Couldn't load %@ from keychain: %d", v5, [v16 code]);
        *a5 = [NSError errorWithDomain:@"securityd" code:v45 description:v50 underlying:v16];
      }

      v17 = v18;
      v18 = v17;
      goto LABEL_5;
    }

    v46 = sub_100019104(@"ckkskey", 0);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = [v5 uuid];
      *buf = 138412290;
      v69 = v47;
      v48 = "loaded a stashed TLK (%@)";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  v18 = a5;
  if (a5)
  {
    v42 = [v16 code];
    v72[0] = NSLocalizedDescriptionKey;
    v43 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Couldn't load %@ from keychain: %d", v5, [v16 code]);
    v72[1] = NSUnderlyingErrorKey;
    v73[0] = v43;
    v73[1] = v16;
    v44 = [NSDictionary dictionaryWithObjects:v73 forKeys:v72 count:2];
    *a5 = [NSError errorWithDomain:@"securityd" code:v42 userInfo:v44];

    v18 = 0;
  }

  v21 = 0;
  v19 = v16;
  v20 = v12;
LABEL_6:

  return v21;
}

+ (id)queryKeyMaterialInKeychain:(id)a3 error:(id *)a4
{
  result = 0;
  v5 = SecItemCopyMatching(a3, &result);
  v6 = result;
  if (v5)
  {
    if (result)
    {
      result = 0;
      CFRelease(v6);
    }

    if (a4)
    {
      v7 = v5;
      v12 = NSLocalizedDescriptionKey;
      v8 = [NSString stringWithFormat:@"SecItemCopyMatching: %d", v5];
      v13 = v8;
      v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      *a4 = [NSError errorWithDomain:@"securityd" code:v7 userInfo:v9];
    }

    v6 = 0;
  }

  return v6;
}

+ (id)setKeyMaterialInKeychain:(id)a3 error:(id *)a4
{
  v5 = a3;
  result = 0;
  v6 = SecItemAdd(v5, &result);
  if (v6 == -25299)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = [(__CFDictionary *)v5 objectForKeyedSubscript:kSecClass];
    [v7 setObject:v8 forKeyedSubscript:kSecClass];

    v9 = [(__CFDictionary *)v5 objectForKeyedSubscript:kSecAttrSynchronizable];
    [v7 setObject:v9 forKeyedSubscript:kSecAttrSynchronizable];

    v10 = [(__CFDictionary *)v5 objectForKeyedSubscript:kSecAttrSyncViewHint];
    [v7 setObject:v10 forKeyedSubscript:kSecAttrSyncViewHint];

    v11 = [(__CFDictionary *)v5 objectForKeyedSubscript:kSecAttrAccessGroup];
    [v7 setObject:v11 forKeyedSubscript:kSecAttrAccessGroup];

    v12 = [(__CFDictionary *)v5 objectForKeyedSubscript:kSecAttrAccount];
    [v7 setObject:v12 forKeyedSubscript:kSecAttrAccount];

    v13 = [(__CFDictionary *)v5 objectForKeyedSubscript:kSecAttrServer];
    [v7 setObject:v13 forKeyedSubscript:kSecAttrServer];

    v14 = [(__CFDictionary *)v5 objectForKeyedSubscript:kSecAttrPath];
    [v7 setObject:v14 forKeyedSubscript:kSecAttrPath];

    v15 = [(__CFDictionary *)v5 objectForKeyedSubscript:kSecUseDataProtectionKeychain];
    [v7 setObject:v15 forKeyedSubscript:kSecUseDataProtectionKeychain];

    v16 = [(__CFDictionary *)v5 mutableCopy];
    [v16 setObject:0 forKeyedSubscript:kSecClass];
    v17 = SecItemUpdate(v7, v16);
    if (v17)
    {
      v18 = [NSString stringWithFormat:@"SecItemUpdate: %d", v17];
      v19 = [NSError errorWithDomain:@"securityd" code:v17 description:v18];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    LODWORD(v17) = v6;
    v20 = v6;
    v7 = [NSString stringWithFormat:@"SecItemAdd: %d", v6];
    v19 = [NSError errorWithDomain:@"securityd" code:v20 description:v7];
  }

  v21 = result;
  if (v17)
  {
    if (result)
    {
      result = 0;
      CFRelease(v21);
    }

    if (a4)
    {
      v22 = v19;
      v21 = 0;
      *a4 = v19;
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

+ (id)key:(id)a3 wrappedByKey:(id)a4 uuid:(id)a5 parentKeyUUID:(id)a6 keyclass:(id)a7 zoneID:(id)a8 error:(id *)a9
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v25 = 0;
  v19 = [a4 wrapAESKey:v14 error:&v25];
  v20 = v25;
  if (v19)
  {
    v21 = [[CKKSKeychainBackedKey alloc] initWithAESKey:v14 wrappedAESKey:v19 uuid:v15 parentKeyUUID:v16 keyclass:v17 zoneID:v18];
  }

  else
  {
    v22 = sub_100019104(@"ckkskey", 0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v20;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "couldn't wrap key: %@", buf, 0xCu);
    }

    if (a9)
    {
      v23 = v20;
      v21 = 0;
      *a9 = v20;
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

+ (id)randomKeyWrappedBySelf:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [CKKSAESSIVKey randomKey:a4];
  if (v7)
  {
    v8 = +[NSUUID UUID];
    v9 = [v8 UUIDString];
    v10 = [a1 keyWrappedBySelf:v7 uuid:v9 keyclass:@"tlk" zoneID:v6 error:a4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)randomKeyWrappedByParent:(id)a3 keyclass:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [CKKSAESSIVKey randomKey:a5];
  if (v9)
  {
    v10 = [v7 wrapAESKey:v9 error:a5];
    if (v10)
    {
      v11 = [CKKSKeychainBackedKey alloc];
      v12 = +[NSUUID UUID];
      v13 = [v12 UUIDString];
      v14 = [v7 uuid];
      v15 = [v7 zoneID];
      v16 = [(CKKSKeychainBackedKey *)v11 initWithAESKey:v9 wrappedAESKey:v10 uuid:v13 parentKeyUUID:v14 keyclass:v8 zoneID:v15];
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

+ (id)randomKeyWrappedByParent:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 keyclass];
  v8 = [a1 randomKeyWrappedByParent:v6 keyclass:v7 error:a4];

  return v8;
}

@end