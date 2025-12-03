@interface SDUnlockSecurityManager
- (BOOL)checkForEscrowData;
- (BOOL)checkForLegacyEscrowData;
- (BOOL)ltkFileExists;
- (BOOL)ltksExist;
- (BOOL)setupWithAuthSession:(int64_t)session passcode:(id)passcode;
- (BOOL)storeEscrowData:(id)data;
- (NSData)localLongTermKey;
- (NSData)remoteLongTermKey;
- (SDUnlockSecurityManager)initWithPairingID:(id)d pairingStorePath:(id)path deviceName:(id)name;
- (id)allKeychainItems;
- (id)baseDictionary;
- (id)escrowData;
- (id)escrowSecretWithAuthSession:(int64_t)session;
- (id)generateLocalLongTermKey:(int64_t)key;
- (id)legacyEscrowData;
- (id)legacyLocalLongTermKey;
- (id)legacyRemoteLongTermKey;
- (id)longTermKeyStorageFilePath;
- (id)signRemoteKey:(id)key withLocalKey:(id)localKey localKeyClass:(int64_t)class remoteKeyClass:(int64_t)keyClass;
- (id)stepWithAuthSession:(int64_t)session data:(id)data authStep:(BOOL)step errorCode:(int64_t *)code;
- (int64_t)authSessionWithFlags:(unsigned int)flags secret:(id)secret errorCode:(int *)code;
- (int64_t)escrowCreationSessionAsOriginator:(BOOL)originator errorCode:(int *)code;
- (int64_t)stashBagSessionAsOriginator:(BOOL)originator escrowSecret:(id)secret manifest:(id)manifest;
- (int64_t)unlockSessionAsOriginator:(BOOL)originator usingEscrow:(BOOL)escrow escrowSecret:(id)secret errorCode:(int *)code;
- (void)checkForBackupExclusion:(id)exclusion;
- (void)clearStateForSession:(int64_t)session;
- (void)deleteEscrowData;
- (void)deleteLegacyEscrowData;
- (void)deleteLongTermKeys;
- (void)deletePersistedLongTermKeys;
- (void)loadLongTermKeys;
- (void)migrateEscrowDataIfNeeded;
- (void)migrateOldKeysIfNeeded;
- (void)resetEscrowRecord;
- (void)saveLongTermKeys;
- (void)updateLocalLongTermKey:(id)key remoteLongTermKey:(id)termKey;
- (void)validateKeybagUUID;
@end

@implementation SDUnlockSecurityManager

- (SDUnlockSecurityManager)initWithPairingID:(id)d pairingStorePath:(id)path deviceName:(id)name
{
  dCopy = d;
  pathCopy = path;
  nameCopy = name;
  v21.receiver = self;
  v21.super_class = SDUnlockSecurityManager;
  v11 = [(SDUnlockSecurityManager *)&v21 init];
  if (v11)
  {
    v12 = [dCopy copy];
    pairingID = v11->_pairingID;
    v11->_pairingID = v12;

    v14 = [pathCopy copy];
    pairingStorePath = v11->_pairingStorePath;
    v11->_pairingStorePath = v14;

    v16 = [nameCopy copy];
    deviceName = v11->_deviceName;
    v11->_deviceName = v16;

    [(SDUnlockSecurityManager *)v11 migrateOldKeysIfNeeded];
    v18 = +[SDStatusMonitor sharedMonitor];
    deviceKeyBagUnlocked = [v18 deviceKeyBagUnlocked];

    if (deviceKeyBagUnlocked)
    {
      [(SDUnlockSecurityManager *)v11 migrateEscrowDataIfNeeded];
    }
  }

  return v11;
}

- (BOOL)ltksExist
{
  localLongTermKey = [(SDUnlockSecurityManager *)self localLongTermKey];
  if (localLongTermKey)
  {
    v4 = localLongTermKey;
    remoteLongTermKey = [(SDUnlockSecurityManager *)self remoteLongTermKey];

    if (remoteLongTermKey)
    {
      v6 = paired_unlock_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "LTKs exists", v8, 2u);
      }

      LOBYTE(localLongTermKey) = 1;
    }

    else
    {
      LOBYTE(localLongTermKey) = 0;
    }
  }

  return localLongTermKey;
}

- (id)generateLocalLongTermKey:(int64_t)key
{
  v9 = 0;
  v10 = 0;
  if (aks_create_signing_key() == -536870212 || v9 == 0)
  {
    v5 = paired_unlock_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1001CECF0(&v9);
    }

    v4 = 0;
  }

  else
  {
    v4 = [NSData dataWithBytes:v10 length:?];
    v5 = paired_unlock_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Generated local key", v8, 2u);
    }
  }

  if (v10)
  {
    free(v10);
  }

  return v4;
}

- (id)signRemoteKey:(id)key withLocalKey:(id)localKey localKeyClass:(int64_t)class remoteKeyClass:(int64_t)keyClass
{
  keyCopy = key;
  localKeyCopy = localKey;
  v9 = localKeyCopy;
  v12 = 0;
  v13 = 0;
  if (localKeyCopy)
  {
    [localKeyCopy bytes];
    [v9 length];
    [keyCopy bytes];
    [keyCopy length];
    aks_sign_signing_key();
    v10 = paired_unlock_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001CED5C(&v12);
    }
  }

  else
  {
    v10 = paired_unlock_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001CEDC8();
    }
  }

  if (v13)
  {
    free(v13);
  }

  return 0;
}

- (void)updateLocalLongTermKey:(id)key remoteLongTermKey:(id)termKey
{
  keyCopy = key;
  termKeyCopy = termKey;
  p_localLongTermKey = &self->_localLongTermKey;
  if (*&self->_localLongTermKey != 0)
  {
    v10 = paired_unlock_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      localLongTermKey = self->_localLongTermKey;
      remoteLongTermKey = self->_remoteLongTermKey;
      v14 = 138412546;
      v15 = localLongTermKey;
      v16 = 2112;
      v17 = remoteLongTermKey;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Overriding existing long term keys (local %@, remote %@)", &v14, 0x16u);
    }
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(p_localLongTermKey, key);
  objc_storeStrong(&selfCopy->_remoteLongTermKey, termKey);
  [(SDUnlockSecurityManager *)selfCopy saveLongTermKeys];
  objc_sync_exit(selfCopy);
}

- (void)deleteLongTermKeys
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  localLongTermKey = selfCopy->_localLongTermKey;
  selfCopy->_localLongTermKey = 0;

  remoteLongTermKey = selfCopy->_remoteLongTermKey;
  selfCopy->_remoteLongTermKey = 0;

  [(SDUnlockSecurityManager *)selfCopy deletePersistedLongTermKeys];
  v5 = paired_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    pairingID = [(SDUnlockSecurityManager *)selfCopy pairingID];
    v7 = 138412290;
    v8 = pairingID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Deleted LTKs for %@", &v7, 0xCu);
  }

  objc_sync_exit(selfCopy);
}

- (NSData)localLongTermKey
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  localLongTermKey = selfCopy->_localLongTermKey;
  if (!localLongTermKey)
  {
    [(SDUnlockSecurityManager *)selfCopy loadLongTermKeys];
    localLongTermKey = selfCopy->_localLongTermKey;
  }

  v4 = localLongTermKey;
  objc_sync_exit(selfCopy);

  return v4;
}

- (NSData)remoteLongTermKey
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  remoteLongTermKey = selfCopy->_remoteLongTermKey;
  if (!remoteLongTermKey)
  {
    [(SDUnlockSecurityManager *)selfCopy loadLongTermKeys];
    remoteLongTermKey = selfCopy->_remoteLongTermKey;
  }

  v4 = remoteLongTermKey;
  objc_sync_exit(selfCopy);

  return v4;
}

- (void)validateKeybagUUID
{
  if (self->_keybagUUID)
  {
    v3 = sub_10005C828();
    uUIDString = [v3 UUIDString];
    v5 = [uUIDString isEqualToString:self->_keybagUUID];

    v6 = paired_unlock_log();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "KeybagUUIDs match", v8, 2u);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1001CEE04();
    }
  }

  else
  {

    [(SDUnlockSecurityManager *)self saveLongTermKeys];
  }
}

- (void)checkForBackupExclusion:(id)exclusion
{
  v4 = [exclusion objectForKeyedSubscript:@"SDUnlockBackupExclusion"];
  v5 = v4;
  if (self->_localLongTermKey && self->_remoteLongTermKey && ([v4 BOOLValue] & 1) == 0)
  {
    v6 = paired_unlock_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Resaving LTKs with backup exclusion", v7, 2u);
    }

    [(SDUnlockSecurityManager *)self saveLongTermKeys];
  }
}

- (void)saveLongTermKeys
{
  longTermKeyStorageFilePath = [(SDUnlockSecurityManager *)self longTermKeyStorageFilePath];
  v4 = longTermKeyStorageFilePath;
  if (!self->_localLongTermKey || (self->_remoteLongTermKey ? (v5 = longTermKeyStorageFilePath == 0) : (v5 = 1), v5))
  {
    v6 = paired_unlock_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = @"YES";
      remoteLongTermKey = self->_remoteLongTermKey;
      if (self->_localLongTermKey)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      *buf = 138412802;
      if (!remoteLongTermKey)
      {
        v7 = @"NO";
      }

      v28 = v9;
      v29 = 2112;
      v30 = v7;
      v31 = 2112;
      v32 = v4;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Save missing info (local %@, remote %@, pairing store path %@)", buf, 0x20u);
    }
  }

  else
  {
    v10 = objc_opt_new();
    [(__CFString *)v10 setObject:self->_localLongTermKey forKeyedSubscript:@"SDUnlockLocalLTK"];
    [(__CFString *)v10 setObject:self->_remoteLongTermKey forKeyedSubscript:@"SDUnlockRemoteLTK"];
    pairingID = [(SDUnlockSecurityManager *)self pairingID];
    [(__CFString *)v10 setObject:pairingID forKeyedSubscript:@"SDUnlockPairingID"];

    [(__CFString *)v10 setObject:&__kCFBooleanTrue forKeyedSubscript:@"SDUnlockBackupExclusion"];
    v12 = sub_10005C828();
    v13 = v12;
    if (v12)
    {
      uUIDString = [v12 UUIDString];
      [(__CFString *)v10 setObject:uUIDString forKeyedSubscript:@"SDUnlockKeybagUUID"];
    }

    v26 = 0;
    v15 = [NSPropertyListSerialization dataWithPropertyList:v10 format:200 options:0 error:&v26];
    v16 = v26;
    v6 = v16;
    if (v15)
    {

      v17 = [NSURL fileURLWithPath:v4];
      v25 = 0;
      v18 = [v15 writeToURL:v17 options:268435457 error:&v25];
      v19 = v25;
      v20 = paired_unlock_log();
      v21 = v20;
      if (v18)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v28 = v10;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Saved LTKs %@", buf, 0xCu);
        }

        v24 = v19;
        v22 = [v17 setResourceValue:&__kCFBooleanTrue forKey:NSURLIsExcludedFromBackupKey error:&v24];
        v6 = v24;

        v21 = paired_unlock_log();
        v23 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
        if (v22)
        {
          if (v23)
          {
            sub_1001CEF24();
          }
        }

        else if (v23)
        {
          sub_1001CEEB4();
        }
      }

      else
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_1001CEE44();
        }

        v6 = v19;
      }
    }

    else
    {
      v17 = paired_unlock_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1001CEF60();
      }
    }
  }
}

- (void)loadLongTermKeys
{
  longTermKeyStorageFilePath = [(SDUnlockSecurityManager *)self longTermKeyStorageFilePath];
  if (longTermKeyStorageFilePath)
  {
    v20 = 0;
    v4 = [[NSData alloc] initWithContentsOfFile:longTermKeyStorageFilePath options:0 error:&v20];
    v5 = v20;
    if (v4)
    {
      v19 = 0;
      v6 = [NSPropertyListSerialization propertyListWithData:v4 options:0 format:0 error:&v19];
      v7 = v19;

      if (v6)
      {
        v8 = [v6 objectForKeyedSubscript:@"SDUnlockLocalLTK"];
        localLongTermKey = self->_localLongTermKey;
        self->_localLongTermKey = v8;

        v10 = [v6 objectForKeyedSubscript:@"SDUnlockRemoteLTK"];
        remoteLongTermKey = self->_remoteLongTermKey;
        self->_remoteLongTermKey = v10;

        v12 = [v6 objectForKeyedSubscript:@"SDUnlockKeybagUUID"];
        keybagUUID = self->_keybagUUID;
        self->_keybagUUID = v12;

        v14 = paired_unlock_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = self->_localLongTermKey;
          v16 = self->_remoteLongTermKey;
          v17 = self->_keybagUUID;
          *buf = 138412802;
          v22 = v15;
          v23 = 2112;
          v24 = v16;
          v25 = 2112;
          v26 = v17;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Loaded LTKs\n local %@\nremote %@\nkeybag UUID %@)", buf, 0x20u);
        }

        [(SDUnlockSecurityManager *)self checkForBackupExclusion:v6];
        [(SDUnlockSecurityManager *)self validateKeybagUUID];
      }

      else
      {
        v18 = paired_unlock_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1001CEFD0();
        }
      }
    }

    else
    {
      v6 = paired_unlock_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1001CF040();
      }

      v7 = v5;
    }
  }
}

- (void)deletePersistedLongTermKeys
{
  longTermKeyStorageFilePath = [(SDUnlockSecurityManager *)self longTermKeyStorageFilePath];
  if (longTermKeyStorageFilePath)
  {
    v4 = +[NSFileManager defaultManager];
    v12 = 0;
    v5 = [v4 removeItemAtPath:longTermKeyStorageFilePath error:&v12];
    v6 = v12;

    if (v5)
    {
      v7 = paired_unlock_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 0;
        v8 = "Deleted LTKs";
        v9 = &v10;
LABEL_12:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
      }
    }

    else
    {
      if ([v6 code]!= -1100 && [v6 code]!= 260 && [v6 code]!= 4)
      {
        v7 = paired_unlock_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_1001CF0B0();
        }

        goto LABEL_13;
      }

      v7 = paired_unlock_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v8 = "LTKs already deleted";
        v9 = buf;
        goto LABEL_12;
      }
    }

LABEL_13:

    goto LABEL_14;
  }

  v6 = paired_unlock_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1001CF120(self);
  }

LABEL_14:
}

- (id)longTermKeyStorageFilePath
{
  pairingStorePath = [(SDUnlockSecurityManager *)self pairingStorePath];
  v4 = [pairingStorePath stringByAppendingPathComponent:@"com.apple.sharing"];

  v5 = +[NSFileManager defaultManager];
  v11 = 0;
  v6 = [v5 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v11];
  v7 = v11;

  if (v6)
  {
    v8 = [v4 stringByAppendingPathComponent:@"ltk.plist"];
  }

  else
  {
    v9 = paired_unlock_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1001CF1AC(self);
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)ltkFileExists
{
  pairingID = [(SDUnlockSecurityManager *)self pairingID];

  if (pairingID)
  {
    longTermKeyStorageFilePath = [(SDUnlockSecurityManager *)self longTermKeyStorageFilePath];
    if (longTermKeyStorageFilePath)
    {
      v5 = [NSURL fileURLWithPath:longTermKeyStorageFilePath];
      v9 = 0;
      LOBYTE(pairingID) = [v5 checkResourceIsReachableAndReturnError:&v9];
      v6 = v9;
      if ((pairingID & 1) == 0)
      {
        v7 = auto_unlock_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_1001CF250();
        }
      }
    }

    else
    {
      LOBYTE(pairingID) = 0;
    }
  }

  return pairingID;
}

- (id)legacyRemoteLongTermKey
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"UnlockSecurityRemoteLongTermKey"];

  return v3;
}

- (id)legacyLocalLongTermKey
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"UnlockSecurityLocalLongTermKey"];

  return v3;
}

- (void)migrateOldKeysIfNeeded
{
  legacyLocalLongTermKey = [(SDUnlockSecurityManager *)self legacyLocalLongTermKey];
  legacyRemoteLongTermKey = [(SDUnlockSecurityManager *)self legacyRemoteLongTermKey];
  v5 = legacyRemoteLongTermKey;
  if (legacyLocalLongTermKey && legacyRemoteLongTermKey)
  {
    v6 = paired_unlock_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      pairingID = [(SDUnlockSecurityManager *)self pairingID];
      v11 = 138412290;
      v12 = pairingID;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Migrating old keys to %@", &v11, 0xCu);
    }

    [(SDUnlockSecurityManager *)self updateLocalLongTermKey:legacyLocalLongTermKey remoteLongTermKey:v5];
    v8 = +[NSUserDefaults standardUserDefaults];
    [v8 removeObjectForKey:@"UnlockSecurityLocalLongTermKey"];

    v9 = +[NSUserDefaults standardUserDefaults];
    [v9 removeObjectForKey:@"UnlockSecurityRemoteLongTermKey"];

    v10 = +[NSUserDefaults standardUserDefaults];
    [v10 synchronize];
  }
}

- (int64_t)escrowCreationSessionAsOriginator:(BOOL)originator errorCode:(int *)code
{
  if (originator)
  {
    v4 = 132;
  }

  else
  {
    v4 = 4;
  }

  return [(SDUnlockSecurityManager *)self authSessionWithFlags:v4 secret:0 errorCode:code];
}

- (int64_t)unlockSessionAsOriginator:(BOOL)originator usingEscrow:(BOOL)escrow escrowSecret:(id)secret errorCode:(int *)code
{
  if (originator)
  {
    v6 = 128;
  }

  else
  {
    v6 = 0;
  }

  if (escrow)
  {
    v7 = 5;
  }

  else
  {
    v7 = 2;
  }

  return [(SDUnlockSecurityManager *)self authSessionWithFlags:v7 | v6 secret:secret errorCode:code];
}

- (int64_t)stashBagSessionAsOriginator:(BOOL)originator escrowSecret:(id)secret manifest:(id)manifest
{
  originatorCopy = originator;
  manifestCopy = manifest;
  v9 = manifestCopy;
  if (manifestCopy == 0 && originatorCopy)
  {
    v10 = 134;
  }

  else
  {
    v10 = 137;
  }

  if (originatorCopy)
  {
    v11 = v10;
  }

  else
  {
    v11 = 9;
  }

  if (manifestCopy)
  {
    secretCopy = secret;
    secretCopy2 = secret;
    [secretCopy2 bytes];
    [secretCopy2 length];

    [v9 bytes];
    [v9 length];
    aks_create_escrow_blob();
    secretCopy3 = paired_unlock_log();
    if (os_log_type_enabled(secretCopy3, OS_LOG_TYPE_ERROR))
    {
      sub_1001CF2C0();
    }

    v15 = 101;
  }

  else
  {
    secretCopy3 = secret;
    v15 = [(SDUnlockSecurityManager *)self authSessionWithFlags:v11 secret:secretCopy3];
  }

  return v15;
}

- (int64_t)authSessionWithFlags:(unsigned int)flags secret:(id)secret errorCode:(int *)code
{
  secretCopy = secret;
  v36 = 0;
  localLongTermKey = [(SDUnlockSecurityManager *)self localLongTermKey];
  if (localLongTermKey)
  {
    v10 = localLongTermKey;
    remoteLongTermKey = [(SDUnlockSecurityManager *)self remoteLongTermKey];

    if (remoteLongTermKey)
    {
      codeCopy = code;
      v12 = paired_unlock_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        flagsCopy = flags;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Creating auth session with flags = %d", buf, 8u);
      }

      localLongTermKey2 = [(SDUnlockSecurityManager *)self localLongTermKey];
      [localLongTermKey2 bytes];
      localLongTermKey3 = [(SDUnlockSecurityManager *)self localLongTermKey];
      [localLongTermKey3 length];
      remoteLongTermKey2 = [(SDUnlockSecurityManager *)self remoteLongTermKey];
      [remoteLongTermKey2 bytes];
      remoteLongTermKey3 = [(SDUnlockSecurityManager *)self remoteLongTermKey];
      [remoteLongTermKey3 length];
      [secretCopy bytes];
      v35 = secretCopy;
      [secretCopy length];
      flagsCopy2 = flags;
      v17 = aks_remote_session();

      v18 = paired_unlock_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        flagsCopy = v36;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Auth session -- create (session id: %d)", buf, 8u);
      }

      v19 = codeCopy;
      if (v17 == -536870211)
      {
        v20 = paired_unlock_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Received no memory error when creating session, clearing and retrying", buf, 2u);
        }

        sub_10005C8E8();
        v36 = 0;
        localLongTermKey4 = [(SDUnlockSecurityManager *)self localLongTermKey];
        [localLongTermKey4 bytes];
        localLongTermKey5 = [(SDUnlockSecurityManager *)self localLongTermKey];
        [localLongTermKey5 length];
        remoteLongTermKey4 = [(SDUnlockSecurityManager *)self remoteLongTermKey];
        [remoteLongTermKey4 bytes];
        remoteLongTermKey5 = [(SDUnlockSecurityManager *)self remoteLongTermKey];
        [remoteLongTermKey5 length];
        [secretCopy bytes];
        [secretCopy length];
        v17 = aks_remote_session();

        v19 = codeCopy;
      }

      if (v17 <= -536870161)
      {
        if (v17 != -536870207)
        {
          if (v17 != -536870184)
          {
LABEL_29:
            v29 = paired_unlock_log();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              localLongTermKey6 = [(SDUnlockSecurityManager *)self localLongTermKey];
              remoteLongTermKey6 = [(SDUnlockSecurityManager *)self remoteLongTermKey];
              *buf = 67109890;
              flagsCopy = v17;
              v39 = 1024;
              v40 = flagsCopy2;
              v41 = 2112;
              v42 = localLongTermKey6;
              v43 = 2112;
              v44 = remoteLongTermKey6;
              _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to setup session: (status = %x, flags = %d,\n localKey = %@,\n remoteKey = %@)", buf, 0x22u);

              secretCopy = v35;
            }

            goto LABEL_32;
          }

LABEL_21:
          v27 = paired_unlock_log();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            flagsCopy = v17;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Escrow record exists, but not available (status = %d)", buf, 8u);
          }

          v25 = 0;
          goto LABEL_33;
        }

        v28 = paired_unlock_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_1001CF2FC();
        }
      }

      else
      {
        if (v17 != -536870160)
        {
          if (v17 != -536363000)
          {
            if (!v17)
            {
              v25 = v36;
              goto LABEL_33;
            }

            goto LABEL_29;
          }

          goto LABEL_21;
        }

        v28 = paired_unlock_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          flagsCopy = -536870160;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Escrow record not found status = %d", buf, 8u);
        }
      }

LABEL_32:
      v25 = -1;
LABEL_33:
      if (v19)
      {
        *v19 = v17;
      }

      goto LABEL_35;
    }
  }

  v26 = paired_unlock_log();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    sub_1001CF338(self);
  }

  v25 = -1;
LABEL_35:

  return v25;
}

- (BOOL)setupWithAuthSession:(int64_t)session passcode:(id)passcode
{
  passcodeCopy = passcode;
  [passcodeCopy UTF8String];
  [passcodeCopy length];

  v5 = aks_remote_peer_setup();
  v6 = paired_unlock_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setupWithAuthSession status = %d", v9, 8u);
  }

  if (v5 == -536870212)
  {
    v7 = paired_unlock_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001CF3F4();
    }
  }

  return v5 != -536870212;
}

- (id)stepWithAuthSession:(int64_t)session data:(id)data authStep:(BOOL)step errorCode:(int64_t *)code
{
  dataCopy = data;
  v10 = dataCopy;
  v16 = 0;
  v17 = 0;
  if (!session)
  {
    v13 = paired_unlock_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1001CF4AC();
    }

    goto LABEL_10;
  }

  [dataCopy bytes];
  [v10 length];
  v11 = aks_remote_session_step();
  v12 = v11;
  if (v11 || !step)
  {
    if (code)
    {
      *code = v11;
    }

    v13 = paired_unlock_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1001CF430(&v16, v12, v13);
    }

LABEL_10:

    v14 = 0;
    goto LABEL_11;
  }

  v14 = [NSData dataWithBytes:v17 length:v16, v16];
LABEL_11:
  if (v17)
  {
    free(v17);
  }

  return v14;
}

- (id)escrowSecretWithAuthSession:(int64_t)session
{
  v7 = 0;
  v8 = 0;
  if (aks_remote_peer_confirm() == -536870212 || v7 == 0)
  {
    v4 = paired_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1001CF4E8(&v7);
    }

    v5 = 0;
  }

  else
  {
    v5 = [NSData dataWithBytes:v8 length:?];
  }

  if (v8)
  {
    free(v8);
  }

  return v5;
}

- (void)clearStateForSession:(int64_t)session
{
  v4 = paired_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 67109120;
    sessionCopy2 = session;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Reseting session id %d", &v7, 8u);
  }

  if ((session & 0x8000000000000000) == 0)
  {
    v5 = paired_unlock_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 67109120;
      sessionCopy2 = session;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Auth session -- reset (session id: %d)", &v7, 8u);
    }

    if (aks_reset_session() == -536870212)
    {
      v6 = paired_unlock_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1001CF560();
      }
    }
  }
}

- (void)resetEscrowRecord
{
  localLongTermKey = [(SDUnlockSecurityManager *)self localLongTermKey];
  if (!localLongTermKey || (v4 = localLongTermKey, [(SDUnlockSecurityManager *)self remoteLongTermKey], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5))
  {
    v12 = paired_unlock_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001CF61C();
    }

    goto LABEL_10;
  }

  v6 = paired_unlock_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Resetting Escrow Record", buf, 2u);
  }

  localLongTermKey2 = [(SDUnlockSecurityManager *)self localLongTermKey];
  [localLongTermKey2 bytes];
  localLongTermKey3 = [(SDUnlockSecurityManager *)self localLongTermKey];
  [localLongTermKey3 length];
  remoteLongTermKey = [(SDUnlockSecurityManager *)self remoteLongTermKey];
  [remoteLongTermKey bytes];
  remoteLongTermKey2 = [(SDUnlockSecurityManager *)self remoteLongTermKey];
  [remoteLongTermKey2 length];
  v11 = aks_remote_session();

  if (v11 == -536870212)
  {
    v12 = paired_unlock_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001CF5E0();
    }

LABEL_10:
  }
}

- (BOOL)storeEscrowData:(id)data
{
  dataCopy = data;
  v5 = +[SDStatusMonitor sharedMonitor];
  if ([v5 deviceKeyBagUnlocked])
  {
    pairingID = [(SDUnlockSecurityManager *)self pairingID];

    if (pairingID)
    {
      baseDictionary = [(SDUnlockSecurityManager *)self baseDictionary];
      v8 = [NSMutableDictionary dictionaryWithDictionary:baseDictionary];

      deviceName = [(SDUnlockSecurityManager *)self deviceName];
      [v8 setObject:deviceName forKeyedSubscript:kSecAttrLabel];

      v10 = objc_opt_new();
      [v10 setObject:kSecAttrAccessibleWhenUnlockedThisDeviceOnly forKeyedSubscript:kSecAttrAccessible];
      [v10 setObject:dataCopy forKeyedSubscript:kSecValueData];
      v11 = [[NSMutableDictionary alloc] initWithDictionary:v8];
      [v11 addEntriesFromDictionary:v10];
      if (SecItemAdd(v11, 0))
      {
        if (SecItemUpdate(v8, v10))
        {
          v12 = SecItemDelete(v8);
          v13 = SecItemAdd(v11, 0);
          if (!v13)
          {
            v16 = 1;
            goto LABEL_18;
          }

          v14 = v13;
          v15 = paired_unlock_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_1001CF658(v14, v12, v15);
          }

          v16 = 0;
LABEL_17:

LABEL_18:
          goto LABEL_19;
        }

        v15 = paired_unlock_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v17 = "Updated escrow data";
          v18 = buf;
          goto LABEL_15;
        }
      }

      else
      {
        v15 = paired_unlock_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 0;
          v17 = "Added escrow data";
          v18 = &v20;
LABEL_15:
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v17, v18, 2u);
        }
      }

      v16 = 1;
      goto LABEL_17;
    }
  }

  else
  {
  }

  v16 = 0;
LABEL_19:

  return v16;
}

- (id)escrowData
{
  pairingID = [(SDUnlockSecurityManager *)self pairingID];

  if (pairingID)
  {
    result = 0;
    v4 = [NSMutableDictionary alloc];
    baseDictionary = [(SDUnlockSecurityManager *)self baseDictionary];
    v6 = [v4 initWithDictionary:baseDictionary];

    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecReturnData];
    if (SecItemCopyMatching(v6, &result))
    {
      v7 = 0;
    }

    else
    {
      v7 = result;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)checkForEscrowData
{
  pairingID = [(SDUnlockSecurityManager *)self pairingID];

  if (pairingID)
  {
    v4 = [NSMutableDictionary alloc];
    baseDictionary = [(SDUnlockSecurityManager *)self baseDictionary];
    v6 = [v4 initWithDictionary:baseDictionary];

    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecReturnPersistentRef];
    v7 = SecItemCopyMatching(v6, 0);
    v8 = 1;
    if (v7 != -25308)
    {
      v9 = v7;
      if (v7 == -25300)
      {
LABEL_8:
        v8 = 0;
        goto LABEL_9;
      }

      if (v7)
      {
        v10 = paired_unlock_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 67109120;
          LODWORD(v18) = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received unexpected SecItem error = %d", &v17, 8u);
        }

        goto LABEL_8;
      }
    }

LABEL_9:

    goto LABEL_11;
  }

  v8 = 0;
LABEL_11:
  v11 = paired_unlock_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (v8)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    pairingID2 = [(SDUnlockSecurityManager *)self pairingID];
    v17 = 138412546;
    v18 = v12;
    v19 = 2112;
    v20 = pairingID2;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Escrow data exist:%@, pairing id:%@", &v17, 0x16u);
  }

  if (v8)
  {
    goto LABEL_21;
  }

  checkForLegacyEscrowData = [(SDUnlockSecurityManager *)self checkForLegacyEscrowData];
  if (checkForLegacyEscrowData)
  {
    v15 = paired_unlock_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Escrow data hasn't been migrated", &v17, 2u);
    }

LABEL_21:
    LOBYTE(checkForLegacyEscrowData) = 1;
  }

  return checkForLegacyEscrowData;
}

- (void)deleteEscrowData
{
  pairingID = [(SDUnlockSecurityManager *)self pairingID];

  if (pairingID)
  {
    v4 = SecItemDelete([(SDUnlockSecurityManager *)self baseDictionary]);
    if (v4 != -25300)
    {
      if (v4)
      {
        v5 = paired_unlock_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          sub_1001CF6D0();
        }
      }
    }
  }
}

- (id)allKeychainItems
{
  result = 0;
  pairingID = [(SDUnlockSecurityManager *)self pairingID];

  if (pairingID)
  {
    v4 = [NSMutableDictionary alloc];
    baseDictionary = [(SDUnlockSecurityManager *)self baseDictionary];
    v6 = [v4 initWithDictionary:baseDictionary];

    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecReturnAttributes];
    [v6 setObject:kSecMatchLimitAll forKeyedSubscript:kSecMatchLimit];
    v7 = SecItemCopyMatching(v6, &result);
    if (v7 == -25308)
    {
      pairingID = @"Items Exist | Device Locked";
    }

    else if (v7)
    {
      pairingID = 0;
    }

    else
    {
      v8 = result;
      pairingID = [result description];
    }
  }

  return pairingID;
}

- (id)baseDictionary
{
  v3 = objc_opt_new();
  [v3 setObject:kSecClassGenericPassword forKeyedSubscript:kSecClass];
  [v3 setObject:@"com.apple.sharingd.unlock" forKeyedSubscript:kSecAttrAccount];
  [v3 setObject:@"com.apple.sharingd" forKeyedSubscript:kSecAttrAccessGroup];
  pairingID = [(SDUnlockSecurityManager *)self pairingID];
  [v3 setObject:pairingID forKeyedSubscript:kSecAttrService];

  v5 = [v3 copy];

  return v5;
}

- (id)legacyEscrowData
{
  v5[0] = kSecClass;
  v5[1] = kSecAttrLabel;
  v6[0] = kSecClassGenericPassword;
  v6[1] = @"com.apple.Sharing.lock-escrow";
  v5[2] = kSecAttrAccessGroup;
  v5[3] = kSecReturnData;
  v4 = 0;
  v6[2] = @"com.apple.sharingd";
  v6[3] = &__kCFBooleanTrue;
  v5[4] = kSecAttrService;
  v6[4] = @"UnlockServiceName";
  if (SecItemCopyMatching([NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:5], &v4))
  {
    v2 = 0;
  }

  else
  {
    v2 = v4;
  }

  return v2;
}

- (BOOL)checkForLegacyEscrowData
{
  v11[0] = kSecClass;
  v11[1] = kSecAttrLabel;
  v12[0] = kSecClassGenericPassword;
  v12[1] = @"com.apple.Sharing.lock-escrow";
  v11[2] = kSecAttrService;
  v11[3] = kSecAttrAccessGroup;
  v12[2] = @"UnlockServiceName";
  v12[3] = @"com.apple.sharingd";
  v11[4] = kSecReturnPersistentRef;
  v12[4] = &__kCFBooleanTrue;
  v2 = SecItemCopyMatching([NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:5], 0);
  v3 = v2 == -25308 || v2 == 0;
  if (v2 != -25308)
  {
    v4 = v2;
    if (v2 != -25300)
    {
      if (v2)
      {
        v5 = paired_unlock_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 67109120;
          LODWORD(v10) = v4;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received unexpected SecItem error = %d", &v9, 8u);
        }
      }
    }
  }

  v6 = paired_unlock_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (v3)
    {
      v7 = @"YES";
    }

    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Legacy escrow data exist:%@", &v9, 0xCu);
  }

  return v3;
}

- (void)migrateEscrowDataIfNeeded
{
  legacyEscrowData = [(SDUnlockSecurityManager *)self legacyEscrowData];
  if (legacyEscrowData)
  {
    v4 = paired_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Migrating escrow data", v6, 2u);
    }

    if ([(SDUnlockSecurityManager *)self storeEscrowData:legacyEscrowData])
    {
      [(SDUnlockSecurityManager *)self deleteLegacyEscrowData];
    }

    else
    {
      v5 = paired_unlock_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1001CF744();
      }
    }
  }
}

- (void)deleteLegacyEscrowData
{
  v3[0] = kSecClass;
  v3[1] = kSecAttrLabel;
  v4[0] = kSecClassGenericPassword;
  v4[1] = @"com.apple.Sharing.lock-escrow";
  v3[2] = kSecAttrService;
  v4[2] = @"UnlockServiceName";
  if (SecItemDelete([NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3]))
  {
    v2 = paired_unlock_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1001CF780();
    }
  }
}

@end