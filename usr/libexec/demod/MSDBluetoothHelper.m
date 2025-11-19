@interface MSDBluetoothHelper
+ (id)sharedInstance;
- (BOOL)preserveBTFiles;
- (BOOL)preserveBTPairingRecord;
- (BOOL)shouldRestoreBluetoothPairingRecord;
- (id)getKeychainInfoToSave:(id)a3;
- (void)removeBluetoothPairingRecordIfNeeded;
- (void)restoreBTPairingRecordIfNeeded;
@end

@implementation MSDBluetoothHelper

+ (id)sharedInstance
{
  if (qword_1001A5670 != -1)
  {
    sub_1000CCCBC();
  }

  v3 = qword_1001A5668;

  return v3;
}

- (BOOL)preserveBTPairingRecord
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "About to preserve bluetooth pairing records to ensure these pairings persist.", buf, 2u);
  }

  if (![(MSDBluetoothHelper *)self preserveBTFiles])
  {
    v12 = sub_100063A54();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000CCCD0();
    }

    v6 = 0;
    goto LABEL_21;
  }

  v4 = +[MSDPlatform sharedInstance];
  v5 = [v4 macOS];

  if (v5)
  {
    v6 = 0;
LABEL_14:
    v15 = 1;
    goto LABEL_15;
  }

  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Saving bluetooth pairing info stored in system keychain.", buf, 2u);
  }

  v8 = +[NSFileManager defaultManager];
  v9 = [v8 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.btkeychain"];

  if (v9)
  {
    v10 = +[NSFileManager defaultManager];
    v22 = 0;
    v11 = [v10 removeItemAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.btkeychain" error:&v22];
    v6 = v22;

    if ((v11 & 1) == 0)
    {
      v12 = sub_100063A54();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000CCD10();
      }

      goto LABEL_21;
    }
  }

  else
  {
    v6 = 0;
  }

  v13 = +[MSDCryptoHandler sharedInstance];
  v14 = [v13 preserveAndEncryptKeychainItemsForKey:@"com.appl.mobilestoredemo.bluetooth." toFile:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.btkeychain"];

  if (v14)
  {
    goto LABEL_14;
  }

  v12 = sub_100063A54();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_1000CCD80();
  }

LABEL_21:

  v17 = +[NSFileManager defaultManager];
  v18 = [v17 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/BluetoothShelter"];

  if (v18)
  {
    v19 = +[NSFileManager defaultManager];
    v21 = v6;
    [v19 removeItemAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/BluetoothShelter" error:&v21];
    v20 = v21;

    v15 = 0;
    v6 = v20;
  }

  else
  {
    v15 = 0;
  }

LABEL_15:

  return v15;
}

- (void)restoreBTPairingRecordIfNeeded
{
  if (![(MSDBluetoothHelper *)self shouldRestoreBluetoothPairingRecord])
  {
    sub_1000CCDC0();
    return;
  }

  v3 = +[MSDPlatform sharedInstance];
  v4 = [v3 macOS];

  if ((v4 & 1) == 0)
  {
    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Restoring bluetooth pairing information to system keychain.", buf, 2u);
    }

    v6 = +[MSDCryptoHandler sharedInstance];
    v7 = [v6 restoreAndDecryptKeychainItemsForKey:@"com.appl.mobilestoredemo.bluetooth." fromFile:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.btkeychain"];

    v8 = sub_100063A54();
    v9 = v8;
    if ((v7 & 1) == 0)
    {
      sub_1000CCE1C(v8);
      return;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Done restoring bluetooth keychain items.", v11, 2u);
    }

    v10 = +[MSDHelperAgent sharedInstance];
    [v10 restartBluetooth];
  }

  [(MSDBluetoothHelper *)self removeBluetoothPairingRecordIfNeeded];
}

- (BOOL)preserveBTFiles
{
  v51[1] = 0;
  v2 = +[NSFileManager defaultManager];
  v3 = 0;
  if ([v2 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/BluetoothShelter"])
  {
    v51[0] = 0;
    v4 = [v2 removeItemAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/BluetoothShelter" error:v51];
    v3 = v51[0];
    if ((v4 & 1) == 0)
    {
      v9 = sub_100063A54();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000CCE70();
      }

      goto LABEL_27;
    }
  }

  v5 = v3;
  v50 = v3;
  v6 = [v2 createDirectoryAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/BluetoothShelter" withIntermediateDirectories:1 attributes:0 error:&v50];
  v3 = v50;

  if ((v6 & 1) == 0)
  {
    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000CCEE0();
    }

LABEL_27:
    v36 = 0;
    goto LABEL_28;
  }

  v7 = +[MSDPlatform sharedInstance];
  v8 = [v7 macOS];

  v44 = v3;
  if (v8)
  {
    v9 = 0;
    v10 = &off_10017BBF8;
  }

  else
  {
    v9 = [NSString stringWithCString:container_system_group_path_for_identifier() encoding:4];
    v42 = [v9 stringByAppendingPathComponent:@"Library/Database/com.apple.MobileBluetooth.ledevices.paired.db"];
    v53[0] = v42;
    v11 = [v9 stringByAppendingPathComponent:@"Library/Database/com.apple.MobileBluetooth.ledevices.paired.db-shm"];
    v53[1] = v11;
    v12 = [v9 stringByAppendingPathComponent:@"Library/Database/com.apple.MobileBluetooth.ledevices.paired.db-wal"];
    v53[2] = v12;
    v13 = [v9 stringByAppendingPathComponent:@"Library/Database/com.apple.MobileBluetooth.ledevices.other.db"];
    v53[3] = v13;
    v14 = [v9 stringByAppendingPathComponent:@"Library/Database/com.apple.MobileBluetooth.ledevices.other.db-shm"];
    v53[4] = v14;
    v15 = [v9 stringByAppendingPathComponent:@"Library/Database/com.apple.MobileBluetooth.ledevices.other.db-wal"];
    v53[5] = v15;
    v16 = [v9 stringByAppendingPathComponent:@"Library/Preferences/com.apple.MobileBluetooth.devices.plist"];
    v53[6] = v16;
    v17 = [v9 stringByAppendingPathComponent:@"Library/Preferences/com.apple.BTMagic.plist"];
    v53[7] = v17;
    v10 = [NSArray arrayWithObjects:v53 count:8];
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v10;
  v18 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (!v18)
  {
    goto LABEL_19;
  }

  v19 = v18;
  v39 = v9;
  v20 = 0;
  v43 = *v47;
  p_cache = &OBJC_METACLASS___MSDPlatform.cache;
  while (2)
  {
    v22 = 0;
    v23 = v20;
    do
    {
      if (*v47 != v43)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v46 + 1) + 8 * v22);

      v24 = [v20 stringByDeletingLastPathComponent];
      v25 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/BluetoothShelter" stringByAppendingPathComponent:v24];
      v26 = [v2 fileExistsAtPath:v25];

      if ((v26 & 1) == 0)
      {
        v27 = v2;
        v28 = p_cache;
        v29 = v19;
        v30 = [v20 stringByDeletingLastPathComponent];
        v31 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/BluetoothShelter" stringByAppendingPathComponent:v30];
        v45 = v44;
        v32 = v27;
        v41 = [v27 createDirectoryAtPath:v31 withIntermediateDirectories:1 attributes:0 error:&v45];
        v3 = v45;

        if ((v41 & 1) == 0)
        {
          v37 = sub_100063A54();
          if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v2 = v32;
            v9 = v39;
            goto LABEL_26;
          }

          sub_1000CCF50();
          v2 = v32;
LABEL_23:
          v9 = v39;
LABEL_26:

          goto LABEL_27;
        }

        v44 = v3;
        v33 = v32;
        v19 = v29;
        p_cache = v28;
        v2 = v33;
      }

      v34 = [p_cache + 223 sharedInstance];
      v35 = [v34 preserveBluetoothFileToShelter:v20];

      if ((v35 & 1) == 0)
      {
        v37 = sub_100063A54();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          sub_1000CCFD4();
        }

        v3 = v44;
        goto LABEL_23;
      }

      v22 = v22 + 1;
      v23 = v20;
    }

    while (v19 != v22);
    v19 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
    if (v19)
    {
      continue;
    }

    break;
  }

  v9 = v39;
LABEL_19:

  v36 = 1;
  v3 = v44;
LABEL_28:

  return v36;
}

- (BOOL)shouldRestoreBluetoothPairingRecord
{
  v2 = +[MSDTargetDevice sharedInstance];
  v3 = +[NSFileManager defaultManager];
  if ([v2 isContentFrozen])
  {
    v4 = [v2 getSavedRequest];
    if ([v4 isEqualToString:@"RevertSnapshot"])
    {
      v5 = [v3 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.btkeychain"];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = [v3 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.btkeychain"];
  }

  return v5;
}

- (void)removeBluetoothPairingRecordIfNeeded
{
  v3 = +[MSDTargetDevice sharedInstance];
  v2 = +[NSFileManager defaultManager];
  if (([v3 isContentFrozen] & 1) == 0)
  {
    [v2 removeItemAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.btkeychain" error:0];
    [v2 removeItemAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/BluetoothShelter" error:0];
  }
}

- (id)getKeychainInfoToSave:(id)a3
{
  v3 = a3;
  v32[0] = kSecAttrService;
  v32[1] = kSecAttrAccount;
  v32[2] = kSecAttrLabel;
  v32[3] = kSecValueData;
  v4 = [NSArray arrayWithObjects:v32 count:4];
  v21 = objc_alloc_init(NSMutableArray);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v20 = *v27;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v9 = objc_alloc_init(NSMutableDictionary);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v10 = v8;
        v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v23;
          do
          {
            for (j = 0; j != v12; j = j + 1)
            {
              if (*v23 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v22 + 1) + 8 * j);
              if ([v4 containsObject:v15])
              {
                v16 = [v10 objectForKey:v15];
                [v9 setObject:v16 forKey:v15];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v12);
        }

        [v21 addObject:v9];
      }

      v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v6);
  }

  v17 = [NSPropertyListSerialization dataFromPropertyList:v21 format:200 errorDescription:0];

  return v17;
}

@end