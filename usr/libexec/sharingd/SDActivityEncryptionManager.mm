@interface SDActivityEncryptionManager
+ (id)sharedEncryptionManager;
- (BOOL)deleteAllEncryptionAndDecryptionKeys;
- (BOOL)saveDecryptionKeyDataRepresentation:(id)representation forDeviceIdentifier:(id)identifier;
- (BOOL)saveEncryptionKeyDataRepresentation:(id)representation;
- (BOOL)saveKeyDataRepresentation:(id)representation withBaseDict:(id)dict;
- (NSData)dataRepresentationForCurrentEncryptionKey;
- (NSString)state;
- (SDActivityEncryptionKey)encryptionKey;
- (SDActivityEncryptionManager)init;
- (id)allKeys;
- (id)baseDict;
- (id)baseDictDecryptionKeyForDeviceIdentifier:(id)identifier;
- (id)baseDictEncryptionKey;
- (id)baseDictWrappingKey;
- (id)decryptionKeyForDeviceIdentifier:(id)identifier;
- (id)loadDecryptionKeyDataRepresentationForDeviceIdentifier:(id)identifier;
- (id)loadEncryptionKeyDataRepresentation;
- (id)loadKeyDataRepresentationWithBaseDict:(id)dict;
- (id)loadWrappingKeyData;
- (id)newDecryptionKeyFromDataRepresentation:(id)representation;
- (id)unwrappedDataRepresentationForKey:(id)key;
- (void)addObservers;
- (void)bumpEncryptionKeyCounterValue;
- (void)dealloc;
- (void)generateNewEncryptionKey;
- (void)removeObservers;
- (void)setDecryptionKey:(id)key forDeviceIdentifier:(id)identifier;
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
  kSecAttrLabel = [NSString stringWithFormat:@"@unionOfObjects.%@", kSecAttrLabel];
  v11 = [v9 valueForKeyPath:kSecAttrLabel];
  v19 = SFCompactStringFromCollection();
  NSAppendPrintF();
  v12 = v8;

  encryptionKey = [(SDActivityEncryptionManager *)self encryptionKey];
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
  baseDict = [(SDActivityEncryptionManager *)self baseDict];
  [baseDict setObject:&__kCFBooleanTrue forKeyedSubscript:kSecReturnAttributes];
  [baseDict setObject:kSecMatchLimitAll forKeyedSubscript:kSecMatchLimit];
  v5 = [baseDict mutableCopy];
  baseDictWrappingKey = [(SDActivityEncryptionManager *)self baseDictWrappingKey];
  [v5 addEntriesFromDictionary:baseDictWrappingKey];

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

  v10 = [baseDict mutableCopy];
  baseDictEncryptionKey = [(SDActivityEncryptionManager *)self baseDictEncryptionKey];
  [v10 addEntriesFromDictionary:baseDictEncryptionKey];

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

  v13 = [baseDict mutableCopy];
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
    v26 = baseDict;
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
    baseDict = v26;
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
  baseDict = [(SDActivityEncryptionManager *)self baseDict];
  [baseDict setObject:@"com.apple.continuity.encryption" forKeyedSubscript:kSecAttrAccessGroup];
  [baseDict setObject:@"handoff-wrapping-key" forKeyedSubscript:kSecAttrAccount];
  v3 = [baseDict objectForKeyedSubscript:kSecAttrAccount];
  [baseDict setObject:v3 forKeyedSubscript:kSecAttrLabel];

  [baseDict setObject:@"Handoff Wrapping Key" forKeyedSubscript:kSecAttrDescription];
  [baseDict setObject:&__kCFBooleanTrue forKeyedSubscript:kSecAttrSynchronizable];

  return baseDict;
}

- (id)baseDictEncryptionKey
{
  baseDict = [(SDActivityEncryptionManager *)self baseDict];
  [baseDict setObject:@"com.apple.continuity.encryption" forKeyedSubscript:kSecAttrAccessGroup];
  [baseDict setObject:@"handoff-own-encryption-key" forKeyedSubscript:kSecAttrAccount];
  v3 = [baseDict objectForKeyedSubscript:kSecAttrAccount];
  [baseDict setObject:v3 forKeyedSubscript:kSecAttrLabel];

  [baseDict setObject:@"Handoff Encryption Key" forKeyedSubscript:kSecAttrDescription];
  [baseDict setObject:&__kCFBooleanFalse forKeyedSubscript:kSecAttrSynchronizable];

  return baseDict;
}

- (SDActivityEncryptionKey)encryptionKey
{
  encryptionKey = self->_encryptionKey;
  if (!encryptionKey)
  {
    loadEncryptionKeyDataRepresentation = [(SDActivityEncryptionManager *)self loadEncryptionKeyDataRepresentation];
    if (loadEncryptionKeyDataRepresentation)
    {
      v19 = 0;
      v20 = 0;
      v5 = [NSPropertyListSerialization propertyListWithData:loadEncryptionKeyDataRepresentation options:1 format:&v20 error:&v19];
      v6 = v19;
      if (v5)
      {
        v7 = [v5 objectForKeyedSubscript:@"lastUsedCounter"];
        integerValue = [v7 integerValue];

        v9 = integerValue;
        if (integerValue > 0xFF90u)
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
          v10 = [NSNumber numberWithInteger:integerValue + 110];
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
  encryptionKey = [(SDActivityEncryptionManager *)self encryptionKey];
  v5 = v3 + [encryptionKey lastUsedCounter] - 31 * (v3 / 0x1F) + 20;

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
      encryptionKey2 = [(SDActivityEncryptionManager *)self encryptionKey];
      v10 = 134218240;
      lastUsedCounter = [encryptionKey2 lastUsedCounter];
      v12 = 2048;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Bumped advertising encryption key counter value from %ld to %ld", &v10, 0x16u);
    }

    encryptionKey3 = [(SDActivityEncryptionManager *)self encryptionKey];
    [encryptionKey3 setLastUsedCounter:v5];
  }
}

- (void)setDecryptionKey:(id)key forDeviceIdentifier:(id)identifier
{
  keyCopy = key;
  identifierCopy = identifier;
  if (keyCopy)
  {
    v8 = [(NSMutableDictionary *)self->_deviceIdentifierToDecryptionKey objectForKeyedSubscript:identifierCopy];
    if (v8)
    {
      dateCreated = [keyCopy dateCreated];
      dateCreated2 = [v8 dateCreated];
      [dateCreated timeIntervalSinceDate:dateCreated2];
      v12 = (v11 / 3600.0);
    }

    else
    {
      v12 = 0;
    }

    sub_1001091AC(v8 != 0, [v8 lastUsedCounter], objc_msgSend(keyCopy, "lastUsedCounter"), v12);
    [(NSMutableDictionary *)self->_deviceIdentifierToDecryptionKey setObject:keyCopy forKeyedSubscript:identifierCopy];
    v13 = [(SDActivityEncryptionManager *)self unwrappedDataRepresentationForKey:keyCopy];
    v14 = [(SDActivityEncryptionManager *)self saveDecryptionKeyDataRepresentation:v13 forDeviceIdentifier:identifierCopy];

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

- (id)decryptionKeyForDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_deviceIdentifierToDecryptionKey objectForKeyedSubscript:identifierCopy];
  if (!v5)
  {
    v6 = [(SDActivityEncryptionManager *)self loadDecryptionKeyDataRepresentationForDeviceIdentifier:identifierCopy];
    v5 = [(SDActivityEncryptionManager *)self newDecryptionKeyFromDataRepresentation:v6];

    if (v5)
    {
      v7 = handoff_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_1001B5BD0();
      }

      [(NSMutableDictionary *)self->_deviceIdentifierToDecryptionKey setObject:v5 forKeyedSubscript:identifierCopy];
    }
  }

  return v5;
}

- (NSData)dataRepresentationForCurrentEncryptionKey
{
  encryptionKey = [(SDActivityEncryptionManager *)self encryptionKey];
  dictRepresentation = [encryptionKey dictRepresentation];
  v5 = [dictRepresentation mutableCopy];

  v6 = [v5 objectForKeyedSubscript:@"keyData"];
  if (v6)
  {
    loadWrappingKeyData = [(SDActivityEncryptionManager *)self loadWrappingKeyData];
    v8 = [loadWrappingKeyData length];
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
      [loadWrappingKeyData length];
      [loadWrappingKeyData bytes];
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

- (id)unwrappedDataRepresentationForKey:(id)key
{
  dictRepresentation = [key dictRepresentation];
  v4 = [dictRepresentation mutableCopy];

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

- (id)newDecryptionKeyFromDataRepresentation:(id)representation
{
  representationCopy = representation;
  if ([representationCopy length])
  {
    v21 = 0;
    v22 = 0;
    v4 = [NSPropertyListSerialization propertyListWithData:representationCopy options:1 format:&v22 error:&v21];
    v5 = v21;
    if (v4)
    {
      v6 = [v4 objectForKeyedSubscript:@"isWrappedKey"];
      bOOLValue = [v6 BOOLValue];

      if (!bOOLValue)
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
        loadWrappingKeyData = [v9 loadWrappingKeyData];

        v11 = [loadWrappingKeyData length];
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
          [loadWrappingKeyData length];
          [loadWrappingKeyData bytes];
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
        loadWrappingKeyData = handoff_log();
        if (os_log_type_enabled(loadWrappingKeyData, OS_LOG_TYPE_ERROR))
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

    baseDictWrappingKey = [(SDActivityEncryptionManager *)self baseDictWrappingKey];
    v6 = [(SDActivityEncryptionManager *)self loadKeyDataRepresentationWithBaseDict:baseDictWrappingKey];

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

- (id)loadKeyDataRepresentationWithBaseDict:(id)dict
{
  dictCopy = dict;
  [dictCopy setObject:&__kCFBooleanTrue forKeyedSubscript:kSecReturnData];
  result = 0;
  v4 = SecItemCopyMatching(dictCopy, &result);

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

- (BOOL)saveKeyDataRepresentation:(id)representation withBaseDict:(id)dict
{
  dictCopy = dict;
  v22 = kSecValueData;
  representationCopy = representation;
  representationCopy2 = representation;
  v7 = 1;
  v8 = [NSDictionary dictionaryWithObjects:&representationCopy forKeys:&v22 count:1];

  v9 = [v8 mutableCopy];
  [v9 setObject:kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly forKeyedSubscript:kSecAttrAccessible];
  v10 = [dictCopy mutableCopy];
  [v10 addEntriesFromDictionary:v9];
  if (SecItemAdd(v10, 0))
  {
    v11 = SecItemUpdate(dictCopy, v9);
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
      v19 = dictCopy;
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
  baseDictEncryptionKey = [(SDActivityEncryptionManager *)self baseDictEncryptionKey];
  v4 = [(SDActivityEncryptionManager *)self loadKeyDataRepresentationWithBaseDict:baseDictEncryptionKey];

  return v4;
}

- (BOOL)saveEncryptionKeyDataRepresentation:(id)representation
{
  representationCopy = representation;
  baseDictEncryptionKey = [(SDActivityEncryptionManager *)self baseDictEncryptionKey];
  LOBYTE(self) = [(SDActivityEncryptionManager *)self saveKeyDataRepresentation:representationCopy withBaseDict:baseDictEncryptionKey];

  return self;
}

- (id)loadDecryptionKeyDataRepresentationForDeviceIdentifier:(id)identifier
{
  v4 = [(SDActivityEncryptionManager *)self baseDictDecryptionKeyForDeviceIdentifier:identifier];
  v5 = [(SDActivityEncryptionManager *)self loadKeyDataRepresentationWithBaseDict:v4];

  return v5;
}

- (BOOL)saveDecryptionKeyDataRepresentation:(id)representation forDeviceIdentifier:(id)identifier
{
  representationCopy = representation;
  v7 = [(SDActivityEncryptionManager *)self baseDictDecryptionKeyForDeviceIdentifier:identifier];
  LOBYTE(self) = [(SDActivityEncryptionManager *)self saveKeyDataRepresentation:representationCopy withBaseDict:v7];

  return self;
}

- (id)baseDictDecryptionKeyForDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  baseDict = [(SDActivityEncryptionManager *)self baseDict];
  [baseDict setObject:@"com.apple.continuity.encryption" forKeyedSubscript:kSecAttrAccessGroup];
  if (identifierCopy)
  {
    identifierCopy = [NSString stringWithFormat:@"%@-%@", @"handoff-decryption-key", identifierCopy];
    [baseDict setObject:identifierCopy forKeyedSubscript:kSecAttrAccount];

    v7 = [baseDict objectForKeyedSubscript:kSecAttrAccount];
    [baseDict setObject:v7 forKeyedSubscript:kSecAttrLabel];
  }

  [baseDict setObject:@"Handoff Decryption Key" forKeyedSubscript:kSecAttrDescription];
  [baseDict setObject:&__kCFBooleanFalse forKeyedSubscript:kSecAttrSynchronizable];

  return baseDict;
}

@end