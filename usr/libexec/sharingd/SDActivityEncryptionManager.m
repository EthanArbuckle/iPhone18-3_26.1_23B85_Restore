@interface SDActivityEncryptionManager
+ (id)sharedEncryptionManager;
- (BOOL)deleteAllEncryptionAndDecryptionKeys;
- (BOOL)saveDecryptionKeyDataRepresentation:(id)a3 forDeviceIdentifier:(id)a4;
- (BOOL)saveEncryptionKeyDataRepresentation:(id)a3;
- (BOOL)saveKeyDataRepresentation:(id)a3 withBaseDict:(id)a4;
- (NSData)dataRepresentationForCurrentEncryptionKey;
- (NSString)state;
- (SDActivityEncryptionKey)encryptionKey;
- (SDActivityEncryptionManager)init;
- (id)allKeys;
- (id)baseDict;
- (id)baseDictDecryptionKeyForDeviceIdentifier:(id)a3;
- (id)baseDictEncryptionKey;
- (id)baseDictWrappingKey;
- (id)decryptionKeyForDeviceIdentifier:(id)a3;
- (id)loadDecryptionKeyDataRepresentationForDeviceIdentifier:(id)a3;
- (id)loadEncryptionKeyDataRepresentation;
- (id)loadKeyDataRepresentationWithBaseDict:(id)a3;
- (id)loadWrappingKeyData;
- (id)newDecryptionKeyFromDataRepresentation:(id)a3;
- (id)unwrappedDataRepresentationForKey:(id)a3;
- (void)addObservers;
- (void)bumpEncryptionKeyCounterValue;
- (void)dealloc;
- (void)generateNewEncryptionKey;
- (void)removeObservers;
- (void)setDecryptionKey:(id)a3 forDeviceIdentifier:(id)a4;
@end

@implementation SDActivityEncryptionManager

+ (id)sharedEncryptionManager
{
  if (qword_10098A060 != -1)
  {
    sub_1000193D0();
  }

  v3 = qword_10098A058;

  return v3;
}

- (NSString)state
{
  v3 = objc_opt_class();
  v17 = NSStringFromClass(v3);
  NSAppendPrintF();
  v4 = 0;

  NSAppendPrintF();
  v5 = v4;

  v6 = @"YES";
  if (self->_wrappingKey)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if (!self->_shouldRefreshWrappingKey)
  {
    v6 = @"NO";
  }

  v18 = v7;
  v21 = v6;
  NSAppendPrintF();
  v8 = v5;

  v9 = [(SDActivityEncryptionManager *)self allKeys:v18];
  v10 = [NSString stringWithFormat:@"@unionOfObjects.%@", kSecAttrLabel];
  v11 = [v9 valueForKeyPath:v10];
  v19 = SFCompactStringFromCollection();
  NSAppendPrintF();
  v12 = v8;

  v13 = [(SDActivityEncryptionManager *)self encryptionKey];
  NSAppendPrintF();
  v14 = v12;

  deviceIdentifierToDecryptionKey = self->_deviceIdentifierToDecryptionKey;
  NSAppendPrintF();
  v15 = v14;

  return v14;
}

- (id)allKeys
{
  v3 = objc_opt_new();
  v4 = [(SDActivityEncryptionManager *)self baseDict];
  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecReturnAttributes];
  [v4 setObject:kSecMatchLimitAll forKeyedSubscript:kSecMatchLimit];
  v5 = [v4 mutableCopy];
  v6 = [(SDActivityEncryptionManager *)self baseDictWrappingKey];
  [v5 addEntriesFromDictionary:v6];

  result = 0;
  v7 = SecItemCopyMatching(v5, &result);
  if (v7)
  {
    v8 = v7;
    v9 = handoff_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SecItemCopyMatching wrappingKeyQuery failed with error %d", buf, 8u);
    }
  }

  else
  {
    [v3 addObjectsFromArray:result];
    CFRelease(result);
  }

  v10 = [v4 mutableCopy];
  v11 = [(SDActivityEncryptionManager *)self baseDictEncryptionKey];
  [v10 addEntriesFromDictionary:v11];

  *buf = 0;
  if (SecItemCopyMatching(v10, buf))
  {
    v12 = handoff_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001B5E34();
    }
  }

  else
  {
    [v3 addObjectsFromArray:*buf];
    CFRelease(*buf);
  }

  v13 = [v4 mutableCopy];
  v14 = [(SDActivityEncryptionManager *)self baseDictDecryptionKeyForDeviceIdentifier:0];
  [v13 addEntriesFromDictionary:v14];

  cf = 0;
  if (SecItemCopyMatching(v13, &cf))
  {
    v15 = handoff_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10001A99C();
    }
  }

  else
  {
    v24 = v10;
    v25 = v5;
    v26 = v4;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = cf;
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v27 + 1) + 8 * i);
          v22 = [v21 objectForKeyedSubscript:kSecAttrAccount];
          if ([v22 hasPrefix:@"handoff-decryption-key"])
          {
            [v3 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v18);
    }

    CFRelease(cf);
    v5 = v25;
    v4 = v26;
    v10 = v24;
  }

  return v3;
}

- (id)baseDict
{
  v2 = objc_opt_new();
  [v2 setObject:kSecClassGenericPassword forKeyedSubscript:kSecClass];
  [v2 setObject:@"com.apple.continuity.encryption" forKeyedSubscript:kSecAttrService];

  return v2;
}

- (id)baseDictWrappingKey
{
  v2 = [(SDActivityEncryptionManager *)self baseDict];
  [v2 setObject:@"com.apple.continuity.encryption" forKeyedSubscript:kSecAttrAccessGroup];
  [v2 setObject:@"handoff-wrapping-key" forKeyedSubscript:kSecAttrAccount];
  v3 = [v2 objectForKeyedSubscript:kSecAttrAccount];
  [v2 setObject:v3 forKeyedSubscript:kSecAttrLabel];

  [v2 setObject:@"Handoff Wrapping Key" forKeyedSubscript:kSecAttrDescription];
  [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecAttrSynchronizable];

  return v2;
}

- (id)baseDictEncryptionKey
{
  v2 = [(SDActivityEncryptionManager *)self baseDict];
  [v2 setObject:@"com.apple.continuity.encryption" forKeyedSubscript:kSecAttrAccessGroup];
  [v2 setObject:@"handoff-own-encryption-key" forKeyedSubscript:kSecAttrAccount];
  v3 = [v2 objectForKeyedSubscript:kSecAttrAccount];
  [v2 setObject:v3 forKeyedSubscript:kSecAttrLabel];

  [v2 setObject:@"Handoff Encryption Key" forKeyedSubscript:kSecAttrDescription];
  [v2 setObject:&__kCFBooleanFalse forKeyedSubscript:kSecAttrSynchronizable];

  return v2;
}

- (SDActivityEncryptionKey)encryptionKey
{
  encryptionKey = self->_encryptionKey;
  if (!encryptionKey)
  {
    v4 = [(SDActivityEncryptionManager *)self loadEncryptionKeyDataRepresentation];
    if (v4)
    {
      v19 = 0;
      v20 = 0;
      v5 = [NSPropertyListSerialization propertyListWithData:v4 options:1 format:&v20 error:&v19];
      v6 = v19;
      if (v5)
      {
        v7 = [v5 objectForKeyedSubscript:@"lastUsedCounter"];
        v8 = [v7 integerValue];

        v9 = v8;
        if (v8 > 0xFF90u)
        {
          v14 = handoff_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Did not load advertising encryption key from keychain as the bumped last used counter exceeds max value", buf, 2u);
          }
        }

        else
        {
          v10 = [NSNumber numberWithInteger:v8 + 110];
          [v5 setObject:v10 forKeyedSubscript:@"lastUsedCounter"];

          v11 = [(SDActivityKey *)[SDActivityEncryptionKey alloc] initWithDictRepresentation:v5];
          v12 = self->_encryptionKey;
          self->_encryptionKey = v11;

          v13 = [(SDActivityEncryptionManager *)self unwrappedDataRepresentationForKey:self->_encryptionKey];
          [(SDActivityEncryptionManager *)self saveEncryptionKeyDataRepresentation:v13];

          v14 = handoff_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v15 = objc_opt_class();
            v16 = NSStringFromClass(v15);
            v17 = self->_encryptionKey;
            *buf = 138413058;
            v22 = v16;
            v23 = 1024;
            v24 = v9;
            v25 = 1024;
            v26 = 110;
            v27 = 2112;
            v28 = v17;
            _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%@: Loaded advertising encryption key and bumped last used counter from %d by %d, then persisted key to keychain %@", buf, 0x22u);
          }
        }
      }

      else
      {
        v14 = handoff_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_1001B5914();
        }
      }
    }

    if (!self->_encryptionKey)
    {
      [(SDActivityEncryptionManager *)self generateNewEncryptionKey];
    }

    encryptionKey = self->_encryptionKey;
  }

  return encryptionKey;
}

- (SDActivityEncryptionManager)init
{
  v6.receiver = self;
  v6.super_class = SDActivityEncryptionManager;
  v2 = [(SDActivityEncryptionManager *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    deviceIdentifierToDecryptionKey = v2->_deviceIdentifierToDecryptionKey;
    v2->_deviceIdentifierToDecryptionKey = v3;

    v2->_shouldRefreshWrappingKey = 1;
    [(SDActivityEncryptionManager *)v2 addObservers];
  }

  return v2;
}

- (void)dealloc
{
  [(SDActivityEncryptionManager *)self removeObservers];
  v3.receiver = self;
  v3.super_class = SDActivityEncryptionManager;
  [(SDActivityEncryptionManager *)&v3 dealloc];
}

- (void)addObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"resetStateRequested:" name:@"com.apple.sharingd.ResetState" object:0];
}

- (void)removeObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)generateNewEncryptionKey
{
  v3 = +[SDActivityEncryptionKey newEncryptionKey];
  p_encryptionKey = &self->_encryptionKey;
  encryptionKey = self->_encryptionKey;
  self->_encryptionKey = v3;

  v6 = [(SDActivityEncryptionManager *)self unwrappedDataRepresentationForKey:self->_encryptionKey];
  [(SDActivityEncryptionManager *)self saveEncryptionKeyDataRepresentation:v6];

  v7 = handoff_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1001B5898(p_encryptionKey, v7);
  }
}

- (void)bumpEncryptionKeyCounterValue
{
  v3 = arc4random();
  v4 = [(SDActivityEncryptionManager *)self encryptionKey];
  v5 = v3 + [v4 lastUsedCounter] - 31 * (v3 / 0x1F) + 20;

  v6 = handoff_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 > 0xFFFE)
  {
    if (v7)
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Generating new advertising encryption key as the bumped value of the old one exceeds max value", &v10, 2u);
    }

    [(SDActivityEncryptionManager *)self generateNewEncryptionKey];
  }

  else
  {
    if (v7)
    {
      v8 = [(SDActivityEncryptionManager *)self encryptionKey];
      v10 = 134218240;
      v11 = [v8 lastUsedCounter];
      v12 = 2048;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Bumped advertising encryption key counter value from %ld to %ld", &v10, 0x16u);
    }

    v9 = [(SDActivityEncryptionManager *)self encryptionKey];
    [v9 setLastUsedCounter:v5];
  }
}

- (void)setDecryptionKey:(id)a3 forDeviceIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(NSMutableDictionary *)self->_deviceIdentifierToDecryptionKey objectForKeyedSubscript:v7];
    if (v8)
    {
      v9 = [v6 dateCreated];
      v10 = [v8 dateCreated];
      [v9 timeIntervalSinceDate:v10];
      v12 = (v11 / 3600.0);
    }

    else
    {
      v12 = 0;
    }

    sub_1001091AC(v8 != 0, [v8 lastUsedCounter], objc_msgSend(v6, "lastUsedCounter"), v12);
    [(NSMutableDictionary *)self->_deviceIdentifierToDecryptionKey setObject:v6 forKeyedSubscript:v7];
    v13 = [(SDActivityEncryptionManager *)self unwrappedDataRepresentationForKey:v6];
    v14 = [(SDActivityEncryptionManager *)self saveDecryptionKeyDataRepresentation:v13 forDeviceIdentifier:v7];

    v15 = handoff_log();
    v16 = v15;
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_1001B5B68();
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1001B5AF8();
    }
  }
}

- (id)decryptionKeyForDeviceIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_deviceIdentifierToDecryptionKey objectForKeyedSubscript:v4];
  if (!v5)
  {
    v6 = [(SDActivityEncryptionManager *)self loadDecryptionKeyDataRepresentationForDeviceIdentifier:v4];
    v5 = [(SDActivityEncryptionManager *)self newDecryptionKeyFromDataRepresentation:v6];

    if (v5)
    {
      v7 = handoff_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_1001B5BD0();
      }

      [(NSMutableDictionary *)self->_deviceIdentifierToDecryptionKey setObject:v5 forKeyedSubscript:v4];
    }
  }

  return v5;
}

- (NSData)dataRepresentationForCurrentEncryptionKey
{
  v3 = [(SDActivityEncryptionManager *)self encryptionKey];
  v4 = [v3 dictRepresentation];
  v5 = [v4 mutableCopy];

  v6 = [v5 objectForKeyedSubscript:@"keyData"];
  if (v6)
  {
    v7 = [(SDActivityEncryptionManager *)self loadWrappingKeyData];
    v8 = [v7 length];
    v9 = handoff_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Converting key to wrapped key", buf, 2u);
      }

      v11 = ccaes_ecb_encrypt_mode();
      bzero(&v19 - ((*v11 + 15) & 0xFFFFFFFFFFFFFFF0), (*v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      [v7 length];
      [v7 bytes];
      ccecb_init();
      [v6 length];
      v12 = ccwrap_wrapped_size();
      v13 = [NSMutableData dataWithCapacity:v12];
      [v13 setLength:v12];
      *buf = v12;
      [v6 length];
      [v6 bytes];
      [v13 mutableBytes];
      ccwrap_auth_encrypt();
      v14 = [v13 copy];
      [v5 setObject:v14 forKeyedSubscript:@"keyData"];

      [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:@"isWrappedKey"];
    }

    else
    {
      if (v10)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not wrapping key as wrapping key is unavailable", buf, 2u);
      }

      [v5 setObject:&__kCFBooleanFalse forKeyedSubscript:@"isWrappedKey"];
    }

    v20 = 0;
    v15 = [NSPropertyListSerialization dataWithPropertyList:v5 format:200 options:0 error:&v20];
    v16 = v20;
    if (!v15)
    {
      v17 = handoff_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1001B5C38();
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)unwrappedDataRepresentationForKey:(id)a3
{
  v3 = [a3 dictRepresentation];
  v4 = [v3 mutableCopy];

  [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:@"isWrappedKey"];
  v9 = 0;
  v5 = [NSPropertyListSerialization dataWithPropertyList:v4 format:200 options:0 error:&v9];
  v6 = v9;
  if (!v5)
  {
    v7 = handoff_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001B5C38();
    }
  }

  return v5;
}

- (id)newDecryptionKeyFromDataRepresentation:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v21 = 0;
    v22 = 0;
    v4 = [NSPropertyListSerialization propertyListWithData:v3 options:1 format:&v22 error:&v21];
    v5 = v21;
    if (v4)
    {
      v6 = [v4 objectForKeyedSubscript:@"isWrappedKey"];
      v7 = [v6 BOOLValue];

      if (!v7)
      {
LABEL_9:
        v17 = [(SDActivityKey *)[SDActivityDecryptionKey alloc] initWithDictRepresentation:v4];
LABEL_20:

        goto LABEL_21;
      }

      v8 = [v4 objectForKeyedSubscript:@"keyData"];
      if ([v8 length])
      {
        v9 = +[SDActivityEncryptionManager sharedEncryptionManager];
        v10 = [v9 loadWrappingKeyData];

        v11 = [v10 length];
        v12 = handoff_log();
        v13 = v12;
        if (v11)
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Converting wrapped key to key", buf, 2u);
          }

          v14 = ccaes_ecb_decrypt_mode();
          v19[1] = v19;
          bzero(v19 - ((*v14 + 15) & 0xFFFFFFFFFFFFFFF0), (*v14 + 15) & 0xFFFFFFFFFFFFFFF0);
          [v10 length];
          [v10 bytes];
          ccecb_init();
          [v8 length];
          v15 = ccwrap_unwrapped_size();
          v16 = [NSMutableData dataWithCapacity:v15];
          [v16 setLength:v15];
          *buf = v15;
          [v8 length];
          [v8 bytes];
          [v16 mutableBytes];
          ccwrap_auth_decrypt();
          [v4 setObject:v16 forKeyedSubscript:@"keyData"];

          goto LABEL_9;
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_1001B5CA8();
        }
      }

      else
      {
        v10 = handoff_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_1001B5CE8();
        }
      }
    }

    else
    {
      v8 = handoff_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1001B5D28();
      }
    }

    v17 = 0;
    goto LABEL_20;
  }

  v17 = 0;
LABEL_21:

  return v17;
}

- (BOOL)deleteAllEncryptionAndDecryptionKeys
{
  self->_shouldRefreshWrappingKey = 1;
  if (self->_wrappingKey || self->_encryptionKey || [(NSMutableDictionary *)self->_deviceIdentifierToDecryptionKey count])
  {
    v3 = handoff_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Successfully cleared in-memory key caches", v14, 2u);
    }

    wrappingKey = self->_wrappingKey;
    self->_wrappingKey = 0;

    encryptionKey = self->_encryptionKey;
    self->_encryptionKey = 0;

    [(NSMutableDictionary *)self->_deviceIdentifierToDecryptionKey removeAllObjects];
  }

  v6 = SecItemDelete([(SDActivityEncryptionManager *)self baseDictEncryptionKey]);
  v7 = SecItemDelete([(SDActivityEncryptionManager *)self baseDictDecryptionKeyForDeviceIdentifier:0]);
  if (v6)
  {
    v8 = v6 == -25300;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  if (v7)
  {
    v10 = v7 == -25300;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  v12 = handoff_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_1001B5D9C(v9, v11, v12);
  }

  return v9 & v11;
}

- (id)loadWrappingKeyData
{
  [(SDActivityEncryptionManager *)self testWrappingKeychainItem];
  if (self->_shouldRefreshWrappingKey)
  {
    self->_shouldRefreshWrappingKey = 0;
    p_wrappingKey = &self->_wrappingKey;
    wrappingKey = self->_wrappingKey;
    self->_wrappingKey = 0;

    v5 = [(SDActivityEncryptionManager *)self baseDictWrappingKey];
    v6 = [(SDActivityEncryptionManager *)self loadKeyDataRepresentationWithBaseDict:v5];

    if ([v6 length] == 32)
    {
      objc_storeStrong(&self->_wrappingKey, v6);
      v7 = handoff_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 0;
        v8 = "Loaded wrapping key from keychain";
        v9 = &v14;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
      }
    }

    else
    {
      v10 = *p_wrappingKey;
      *p_wrappingKey = 0;

      v7 = handoff_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 0;
        v8 = "No wrapping key found in keychain";
        v9 = &v13;
        goto LABEL_7;
      }
    }
  }

  v11 = self->_wrappingKey;

  return v11;
}

- (id)loadKeyDataRepresentationWithBaseDict:(id)a3
{
  v3 = a3;
  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecReturnData];
  result = 0;
  v4 = SecItemCopyMatching(v3, &result);

  if (v4)
  {
    v5 = handoff_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1001B5EA8();
    }

    v6 = 0;
  }

  else
  {
    v6 = result;
  }

  return v6;
}

- (BOOL)saveKeyDataRepresentation:(id)a3 withBaseDict:(id)a4
{
  v5 = a4;
  v22 = kSecValueData;
  v23 = a3;
  v6 = a3;
  v7 = 1;
  v8 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];

  v9 = [v8 mutableCopy];
  [v9 setObject:kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly forKeyedSubscript:kSecAttrAccessible];
  v10 = [v5 mutableCopy];
  [v10 addEntriesFromDictionary:v9];
  if (SecItemAdd(v10, 0))
  {
    v11 = SecItemUpdate(v5, v9);
    if (!v11)
    {
      goto LABEL_13;
    }

    v12 = v11;
    v13 = handoff_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17[0] = 67109634;
      v17[1] = v12;
      v18 = 2112;
      v19 = v5;
      v20 = 2112;
      v21 = v9;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to update keychain item with error %d for query %@ attributesToUpdate %@", v17, 0x1Cu);
    }

    [v10 removeObjectForKey:kSecAttrAccessible];
    if (SecItemDelete(v10))
    {
      v14 = handoff_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1001B5F1C();
      }
    }

    [v10 setObject:kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly forKeyedSubscript:kSecAttrAccessible];
    if (SecItemAdd(v10, 0))
    {
      v15 = handoff_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1001B5F8C();
      }

      v7 = 0;
    }

    else
    {
LABEL_13:
      v7 = 1;
    }
  }

  return v7;
}

- (id)loadEncryptionKeyDataRepresentation
{
  v3 = [(SDActivityEncryptionManager *)self baseDictEncryptionKey];
  v4 = [(SDActivityEncryptionManager *)self loadKeyDataRepresentationWithBaseDict:v3];

  return v4;
}

- (BOOL)saveEncryptionKeyDataRepresentation:(id)a3
{
  v4 = a3;
  v5 = [(SDActivityEncryptionManager *)self baseDictEncryptionKey];
  LOBYTE(self) = [(SDActivityEncryptionManager *)self saveKeyDataRepresentation:v4 withBaseDict:v5];

  return self;
}

- (id)loadDecryptionKeyDataRepresentationForDeviceIdentifier:(id)a3
{
  v4 = [(SDActivityEncryptionManager *)self baseDictDecryptionKeyForDeviceIdentifier:a3];
  v5 = [(SDActivityEncryptionManager *)self loadKeyDataRepresentationWithBaseDict:v4];

  return v5;
}

- (BOOL)saveDecryptionKeyDataRepresentation:(id)a3 forDeviceIdentifier:(id)a4
{
  v6 = a3;
  v7 = [(SDActivityEncryptionManager *)self baseDictDecryptionKeyForDeviceIdentifier:a4];
  LOBYTE(self) = [(SDActivityEncryptionManager *)self saveKeyDataRepresentation:v6 withBaseDict:v7];

  return self;
}

- (id)baseDictDecryptionKeyForDeviceIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SDActivityEncryptionManager *)self baseDict];
  [v5 setObject:@"com.apple.continuity.encryption" forKeyedSubscript:kSecAttrAccessGroup];
  if (v4)
  {
    v6 = [NSString stringWithFormat:@"%@-%@", @"handoff-decryption-key", v4];
    [v5 setObject:v6 forKeyedSubscript:kSecAttrAccount];

    v7 = [v5 objectForKeyedSubscript:kSecAttrAccount];
    [v5 setObject:v7 forKeyedSubscript:kSecAttrLabel];
  }

  [v5 setObject:@"Handoff Decryption Key" forKeyedSubscript:kSecAttrDescription];
  [v5 setObject:&__kCFBooleanFalse forKeyedSubscript:kSecAttrSynchronizable];

  return v5;
}

@end