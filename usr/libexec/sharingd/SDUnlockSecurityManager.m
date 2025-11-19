@interface SDUnlockSecurityManager
- (BOOL)checkForEscrowData;
- (BOOL)checkForLegacyEscrowData;
- (BOOL)ltkFileExists;
- (BOOL)ltksExist;
- (BOOL)setupWithAuthSession:(int64_t)a3 passcode:(id)a4;
- (BOOL)storeEscrowData:(id)a3;
- (NSData)localLongTermKey;
- (NSData)remoteLongTermKey;
- (SDUnlockSecurityManager)initWithPairingID:(id)a3 pairingStorePath:(id)a4 deviceName:(id)a5;
- (id)allKeychainItems;
- (id)baseDictionary;
- (id)escrowData;
- (id)escrowSecretWithAuthSession:(int64_t)a3;
- (id)generateLocalLongTermKey:(int64_t)a3;
- (id)legacyEscrowData;
- (id)legacyLocalLongTermKey;
- (id)legacyRemoteLongTermKey;
- (id)longTermKeyStorageFilePath;
- (id)signRemoteKey:(id)a3 withLocalKey:(id)a4 localKeyClass:(int64_t)a5 remoteKeyClass:(int64_t)a6;
- (id)stepWithAuthSession:(int64_t)a3 data:(id)a4 authStep:(BOOL)a5 errorCode:(int64_t *)a6;
- (int64_t)authSessionWithFlags:(unsigned int)a3 secret:(id)a4 errorCode:(int *)a5;
- (int64_t)escrowCreationSessionAsOriginator:(BOOL)a3 errorCode:(int *)a4;
- (int64_t)stashBagSessionAsOriginator:(BOOL)a3 escrowSecret:(id)a4 manifest:(id)a5;
- (int64_t)unlockSessionAsOriginator:(BOOL)a3 usingEscrow:(BOOL)a4 escrowSecret:(id)a5 errorCode:(int *)a6;
- (void)checkForBackupExclusion:(id)a3;
- (void)clearStateForSession:(int64_t)a3;
- (void)deleteEscrowData;
- (void)deleteLegacyEscrowData;
- (void)deleteLongTermKeys;
- (void)deletePersistedLongTermKeys;
- (void)loadLongTermKeys;
- (void)migrateEscrowDataIfNeeded;
- (void)migrateOldKeysIfNeeded;
- (void)resetEscrowRecord;
- (void)saveLongTermKeys;
- (void)updateLocalLongTermKey:(id)a3 remoteLongTermKey:(id)a4;
- (void)validateKeybagUUID;
@end

@implementation SDUnlockSecurityManager

- (SDUnlockSecurityManager)initWithPairingID:(id)a3 pairingStorePath:(id)a4 deviceName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = SDUnlockSecurityManager;
  v11 = [(SDUnlockSecurityManager *)&v21 init];
  if (v11)
  {
    v12 = [v8 copy];
    pairingID = v11->_pairingID;
    v11->_pairingID = v12;

    v14 = [v9 copy];
    pairingStorePath = v11->_pairingStorePath;
    v11->_pairingStorePath = v14;

    v16 = [v10 copy];
    deviceName = v11->_deviceName;
    v11->_deviceName = v16;

    [(SDUnlockSecurityManager *)v11 migrateOldKeysIfNeeded];
    v18 = +[SDStatusMonitor sharedMonitor];
    v19 = [v18 deviceKeyBagUnlocked];

    if (v19)
    {
      [(SDUnlockSecurityManager *)v11 migrateEscrowDataIfNeeded];
    }
  }

  return v11;
}

- (BOOL)ltksExist
{
  v3 = [(SDUnlockSecurityManager *)self localLongTermKey];
  if (v3)
  {
    v4 = v3;
    v5 = [(SDUnlockSecurityManager *)self remoteLongTermKey];

    if (v5)
    {
      v6 = paired_unlock_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "LTKs exists", v8, 2u);
      }

      LOBYTE(v3) = 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (id)generateLocalLongTermKey:(int64_t)a3
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

- (id)signRemoteKey:(id)a3 withLocalKey:(id)a4 localKeyClass:(int64_t)a5 remoteKeyClass:(int64_t)a6
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v12 = 0;
  v13 = 0;
  if (v8)
  {
    [v8 bytes];
    [v9 length];
    [v7 bytes];
    [v7 length];
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

- (void)updateLocalLongTermKey:(id)a3 remoteLongTermKey:(id)a4
{
  v7 = a3;
  v8 = a4;
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

  v13 = self;
  objc_sync_enter(v13);
  objc_storeStrong(p_localLongTermKey, a3);
  objc_storeStrong(&v13->_remoteLongTermKey, a4);
  [(SDUnlockSecurityManager *)v13 saveLongTermKeys];
  objc_sync_exit(v13);
}

- (void)deleteLongTermKeys
{
  v2 = self;
  objc_sync_enter(v2);
  localLongTermKey = v2->_localLongTermKey;
  v2->_localLongTermKey = 0;

  remoteLongTermKey = v2->_remoteLongTermKey;
  v2->_remoteLongTermKey = 0;

  [(SDUnlockSecurityManager *)v2 deletePersistedLongTermKeys];
  v5 = paired_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(SDUnlockSecurityManager *)v2 pairingID];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Deleted LTKs for %@", &v7, 0xCu);
  }

  objc_sync_exit(v2);
}

- (NSData)localLongTermKey
{
  v2 = self;
  objc_sync_enter(v2);
  localLongTermKey = v2->_localLongTermKey;
  if (!localLongTermKey)
  {
    [(SDUnlockSecurityManager *)v2 loadLongTermKeys];
    localLongTermKey = v2->_localLongTermKey;
  }

  v4 = localLongTermKey;
  objc_sync_exit(v2);

  return v4;
}

- (NSData)remoteLongTermKey
{
  v2 = self;
  objc_sync_enter(v2);
  remoteLongTermKey = v2->_remoteLongTermKey;
  if (!remoteLongTermKey)
  {
    [(SDUnlockSecurityManager *)v2 loadLongTermKeys];
    remoteLongTermKey = v2->_remoteLongTermKey;
  }

  v4 = remoteLongTermKey;
  objc_sync_exit(v2);

  return v4;
}

- (void)validateKeybagUUID
{
  if (self->_keybagUUID)
  {
    v3 = sub_10005C828();
    v4 = [v3 UUIDString];
    v5 = [v4 isEqualToString:self->_keybagUUID];

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

- (void)checkForBackupExclusion:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"SDUnlockBackupExclusion"];
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
  v3 = [(SDUnlockSecurityManager *)self longTermKeyStorageFilePath];
  v4 = v3;
  if (!self->_localLongTermKey || (self->_remoteLongTermKey ? (v5 = v3 == 0) : (v5 = 1), v5))
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
    v11 = [(SDUnlockSecurityManager *)self pairingID];
    [(__CFString *)v10 setObject:v11 forKeyedSubscript:@"SDUnlockPairingID"];

    [(__CFString *)v10 setObject:&__kCFBooleanTrue forKeyedSubscript:@"SDUnlockBackupExclusion"];
    v12 = sub_10005C828();
    v13 = v12;
    if (v12)
    {
      v14 = [v12 UUIDString];
      [(__CFString *)v10 setObject:v14 forKeyedSubscript:@"SDUnlockKeybagUUID"];
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
  v3 = [(SDUnlockSecurityManager *)self longTermKeyStorageFilePath];
  if (v3)
  {
    v20 = 0;
    v4 = [[NSData alloc] initWithContentsOfFile:v3 options:0 error:&v20];
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
  v3 = [(SDUnlockSecurityManager *)self longTermKeyStorageFilePath];
  if (v3)
  {
    v4 = +[NSFileManager defaultManager];
    v12 = 0;
    v5 = [v4 removeItemAtPath:v3 error:&v12];
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
  v3 = [(SDUnlockSecurityManager *)self pairingStorePath];
  v4 = [v3 stringByAppendingPathComponent:@"com.apple.sharing"];

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
  v3 = [(SDUnlockSecurityManager *)self pairingID];

  if (v3)
  {
    v4 = [(SDUnlockSecurityManager *)self longTermKeyStorageFilePath];
    if (v4)
    {
      v5 = [NSURL fileURLWithPath:v4];
      v9 = 0;
      LOBYTE(v3) = [v5 checkResourceIsReachableAndReturnError:&v9];
      v6 = v9;
      if ((v3 & 1) == 0)
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
      LOBYTE(v3) = 0;
    }
  }

  return v3;
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
  v3 = [(SDUnlockSecurityManager *)self legacyLocalLongTermKey];
  v4 = [(SDUnlockSecurityManager *)self legacyRemoteLongTermKey];
  v5 = v4;
  if (v3 && v4)
  {
    v6 = paired_unlock_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(SDUnlockSecurityManager *)self pairingID];
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Migrating old keys to %@", &v11, 0xCu);
    }

    [(SDUnlockSecurityManager *)self updateLocalLongTermKey:v3 remoteLongTermKey:v5];
    v8 = +[NSUserDefaults standardUserDefaults];
    [v8 removeObjectForKey:@"UnlockSecurityLocalLongTermKey"];

    v9 = +[NSUserDefaults standardUserDefaults];
    [v9 removeObjectForKey:@"UnlockSecurityRemoteLongTermKey"];

    v10 = +[NSUserDefaults standardUserDefaults];
    [v10 synchronize];
  }
}

- (int64_t)escrowCreationSessionAsOriginator:(BOOL)a3 errorCode:(int *)a4
{
  if (a3)
  {
    v4 = 132;
  }

  else
  {
    v4 = 4;
  }

  return [(SDUnlockSecurityManager *)self authSessionWithFlags:v4 secret:0 errorCode:a4];
}

- (int64_t)unlockSessionAsOriginator:(BOOL)a3 usingEscrow:(BOOL)a4 escrowSecret:(id)a5 errorCode:(int *)a6
{
  if (a3)
  {
    v6 = 128;
  }

  else
  {
    v6 = 0;
  }

  if (a4)
  {
    v7 = 5;
  }

  else
  {
    v7 = 2;
  }

  return [(SDUnlockSecurityManager *)self authSessionWithFlags:v7 | v6 secret:a5 errorCode:a6];
}

- (int64_t)stashBagSessionAsOriginator:(BOOL)a3 escrowSecret:(id)a4 manifest:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = v8;
  if (v8 == 0 && v6)
  {
    v10 = 134;
  }

  else
  {
    v10 = 137;
  }

  if (v6)
  {
    v11 = v10;
  }

  else
  {
    v11 = 9;
  }

  if (v8)
  {
    v12 = a4;
    v13 = a4;
    [v13 bytes];
    [v13 length];

    [v9 bytes];
    [v9 length];
    aks_create_escrow_blob();
    v14 = paired_unlock_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1001CF2C0();
    }

    v15 = 101;
  }

  else
  {
    v14 = a4;
    v15 = [(SDUnlockSecurityManager *)self authSessionWithFlags:v11 secret:v14];
  }

  return v15;
}

- (int64_t)authSessionWithFlags:(unsigned int)a3 secret:(id)a4 errorCode:(int *)a5
{
  v8 = a4;
  v36 = 0;
  v9 = [(SDUnlockSecurityManager *)self localLongTermKey];
  if (v9)
  {
    v10 = v9;
    v11 = [(SDUnlockSecurityManager *)self remoteLongTermKey];

    if (v11)
    {
      v34 = a5;
      v12 = paired_unlock_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v38 = a3;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Creating auth session with flags = %d", buf, 8u);
      }

      v13 = [(SDUnlockSecurityManager *)self localLongTermKey];
      [v13 bytes];
      v14 = [(SDUnlockSecurityManager *)self localLongTermKey];
      [v14 length];
      v15 = [(SDUnlockSecurityManager *)self remoteLongTermKey];
      [v15 bytes];
      v16 = [(SDUnlockSecurityManager *)self remoteLongTermKey];
      [v16 length];
      [v8 bytes];
      v35 = v8;
      [v8 length];
      v33 = a3;
      v17 = aks_remote_session();

      v18 = paired_unlock_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v38 = v36;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Auth session -- create (session id: %d)", buf, 8u);
      }

      v19 = v34;
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
        v21 = [(SDUnlockSecurityManager *)self localLongTermKey];
        [v21 bytes];
        v22 = [(SDUnlockSecurityManager *)self localLongTermKey];
        [v22 length];
        v23 = [(SDUnlockSecurityManager *)self remoteLongTermKey];
        [v23 bytes];
        v24 = [(SDUnlockSecurityManager *)self remoteLongTermKey];
        [v24 length];
        [v8 bytes];
        [v8 length];
        v17 = aks_remote_session();

        v19 = v34;
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
              v31 = [(SDUnlockSecurityManager *)self localLongTermKey];
              v32 = [(SDUnlockSecurityManager *)self remoteLongTermKey];
              *buf = 67109890;
              v38 = v17;
              v39 = 1024;
              v40 = v33;
              v41 = 2112;
              v42 = v31;
              v43 = 2112;
              v44 = v32;
              _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to setup session: (status = %x, flags = %d,\n localKey = %@,\n remoteKey = %@)", buf, 0x22u);

              v8 = v35;
            }

            goto LABEL_32;
          }

LABEL_21:
          v27 = paired_unlock_log();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v38 = v17;
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
          v38 = -536870160;
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

- (BOOL)setupWithAuthSession:(int64_t)a3 passcode:(id)a4
{
  v4 = a4;
  [v4 UTF8String];
  [v4 length];

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

- (id)stepWithAuthSession:(int64_t)a3 data:(id)a4 authStep:(BOOL)a5 errorCode:(int64_t *)a6
{
  v9 = a4;
  v10 = v9;
  v16 = 0;
  v17 = 0;
  if (!a3)
  {
    v13 = paired_unlock_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1001CF4AC();
    }

    goto LABEL_10;
  }

  [v9 bytes];
  [v10 length];
  v11 = aks_remote_session_step();
  v12 = v11;
  if (v11 || !a5)
  {
    if (a6)
    {
      *a6 = v11;
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

- (id)escrowSecretWithAuthSession:(int64_t)a3
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

- (void)clearStateForSession:(int64_t)a3
{
  v4 = paired_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 67109120;
    v8 = a3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Reseting session id %d", &v7, 8u);
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = paired_unlock_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 67109120;
      v8 = a3;
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
  v3 = [(SDUnlockSecurityManager *)self localLongTermKey];
  if (!v3 || (v4 = v3, [(SDUnlockSecurityManager *)self remoteLongTermKey], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5))
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

  v7 = [(SDUnlockSecurityManager *)self localLongTermKey];
  [v7 bytes];
  v8 = [(SDUnlockSecurityManager *)self localLongTermKey];
  [v8 length];
  v9 = [(SDUnlockSecurityManager *)self remoteLongTermKey];
  [v9 bytes];
  v10 = [(SDUnlockSecurityManager *)self remoteLongTermKey];
  [v10 length];
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

- (BOOL)storeEscrowData:(id)a3
{
  v4 = a3;
  v5 = +[SDStatusMonitor sharedMonitor];
  if ([v5 deviceKeyBagUnlocked])
  {
    v6 = [(SDUnlockSecurityManager *)self pairingID];

    if (v6)
    {
      v7 = [(SDUnlockSecurityManager *)self baseDictionary];
      v8 = [NSMutableDictionary dictionaryWithDictionary:v7];

      v9 = [(SDUnlockSecurityManager *)self deviceName];
      [v8 setObject:v9 forKeyedSubscript:kSecAttrLabel];

      v10 = objc_opt_new();
      [v10 setObject:kSecAttrAccessibleWhenUnlockedThisDeviceOnly forKeyedSubscript:kSecAttrAccessible];
      [v10 setObject:v4 forKeyedSubscript:kSecValueData];
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
  v3 = [(SDUnlockSecurityManager *)self pairingID];

  if (v3)
  {
    result = 0;
    v4 = [NSMutableDictionary alloc];
    v5 = [(SDUnlockSecurityManager *)self baseDictionary];
    v6 = [v4 initWithDictionary:v5];

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
  v3 = [(SDUnlockSecurityManager *)self pairingID];

  if (v3)
  {
    v4 = [NSMutableDictionary alloc];
    v5 = [(SDUnlockSecurityManager *)self baseDictionary];
    v6 = [v4 initWithDictionary:v5];

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

    v13 = [(SDUnlockSecurityManager *)self pairingID];
    v17 = 138412546;
    v18 = v12;
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Escrow data exist:%@, pairing id:%@", &v17, 0x16u);
  }

  if (v8)
  {
    goto LABEL_21;
  }

  v14 = [(SDUnlockSecurityManager *)self checkForLegacyEscrowData];
  if (v14)
  {
    v15 = paired_unlock_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Escrow data hasn't been migrated", &v17, 2u);
    }

LABEL_21:
    LOBYTE(v14) = 1;
  }

  return v14;
}

- (void)deleteEscrowData
{
  v3 = [(SDUnlockSecurityManager *)self pairingID];

  if (v3)
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
  v3 = [(SDUnlockSecurityManager *)self pairingID];

  if (v3)
  {
    v4 = [NSMutableDictionary alloc];
    v5 = [(SDUnlockSecurityManager *)self baseDictionary];
    v6 = [v4 initWithDictionary:v5];

    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecReturnAttributes];
    [v6 setObject:kSecMatchLimitAll forKeyedSubscript:kSecMatchLimit];
    v7 = SecItemCopyMatching(v6, &result);
    if (v7 == -25308)
    {
      v3 = @"Items Exist | Device Locked";
    }

    else if (v7)
    {
      v3 = 0;
    }

    else
    {
      v8 = result;
      v3 = [result description];
    }
  }

  return v3;
}

- (id)baseDictionary
{
  v3 = objc_opt_new();
  [v3 setObject:kSecClassGenericPassword forKeyedSubscript:kSecClass];
  [v3 setObject:@"com.apple.sharingd.unlock" forKeyedSubscript:kSecAttrAccount];
  [v3 setObject:@"com.apple.sharingd" forKeyedSubscript:kSecAttrAccessGroup];
  v4 = [(SDUnlockSecurityManager *)self pairingID];
  [v3 setObject:v4 forKeyedSubscript:kSecAttrService];

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
  v3 = [(SDUnlockSecurityManager *)self legacyEscrowData];
  if (v3)
  {
    v4 = paired_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Migrating escrow data", v6, 2u);
    }

    if ([(SDUnlockSecurityManager *)self storeEscrowData:v3])
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