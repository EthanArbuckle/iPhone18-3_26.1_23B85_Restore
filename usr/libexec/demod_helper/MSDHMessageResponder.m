@interface MSDHMessageResponder
+ (id)sharedInstance;
- (BOOL)clearStagedDeviceAfterUpdateProcess;
- (BOOL)cloneFile:(id)a3;
- (BOOL)collectDemoLogsToFolder:(id)a3;
- (BOOL)createDeviceManifest:(id)a3;
- (BOOL)deleteNvram:(id)a3;
- (BOOL)disableLaunchdServicesForWatch:(id)a3;
- (BOOL)executeTestScriptOfIdentifier:(id)a3;
- (BOOL)fileExistsAtPath:(id)a3;
- (BOOL)hasEntitlementMobileStoreDemod:(id)a3;
- (BOOL)isCommandAllowed:(id)a3;
- (BOOL)manageVolume:(id)a3;
- (BOOL)migratePreferencesFile:(id)a3;
- (BOOL)moveStagingToFinal:(id)a3;
- (BOOL)prepareWorkDirectory:(id)a3;
- (BOOL)preserveBluetoothFileToShelter:(id)a3;
- (BOOL)preserveSecondPartyAppDataToShelter:(id)a3 outErrorDict:(id *)a4;
- (BOOL)quitHelper:(id)a3;
- (BOOL)readPlistFile:(id)a3 outContent:(id *)a4;
- (BOOL)reboot:(id)a3;
- (BOOL)removeWorkDirectory:(id)a3;
- (BOOL)restartBluetooth:(id)a3;
- (BOOL)restoreAppDataAttributes:(id)a3;
- (BOOL)restoreBackupAttributes:(id)a3;
- (BOOL)setComputerNameAndHostname:(id)a3;
- (BOOL)setPreferences:(id)a3;
- (BOOL)stageDeviceForUpdateProcess:(id)a3;
- (BOOL)switchToBackupFolder:(id)a3;
- (BOOL)touchFile:(id)a3;
- (BOOL)updateSignedManifest;
- (BOOL)writeNvram:(id)a3;
- (MSDHMessageResponder)init;
- (void)_handleXPCMessage:(id)a3 fromConnection:(id)a4;
- (void)handleXPCMessage:(id)a3 fromConnection:(id)a4;
- (void)sendResponse:(BOOL)a3 withPayload:(id)a4 forRequest:(id)a5 fromConnection:(id)a6;
@end

@implementation MSDHMessageResponder

+ (id)sharedInstance
{
  if (qword_10005BFD0 != -1)
  {
    sub_100032A00();
  }

  v3 = qword_10005BFC8;

  return v3;
}

- (MSDHMessageResponder)init
{
  v6.receiver = self;
  v6.super_class = MSDHMessageResponder;
  v2 = [(MSDHMessageResponder *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.msdmessage", &_dispatch_queue_attr_concurrent);
    [(MSDHMessageResponder *)v2 setMessageHandlerQueue:v3];

    v4 = v2;
  }

  return v2;
}

- (BOOL)hasEntitlementMobileStoreDemod:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  xpc_connection_get_audit_token();
  memset(&v10, 0, sizeof(v10));
  v3 = SecTaskCreateWithAuditToken(0, &v10);
  if (!v3)
  {
    sub_100032B80();
    return 0;
  }

  v4 = v3;
  v5 = SecTaskCopyValueForEntitlement(v3, @"com.apple.private.mobilestoredemo.helper", 0);
  if (!v5)
  {
    sub_100032AC8(v4);
    return 0;
  }

  v6 = v5;
  v7 = CFGetTypeID(v5);
  if (v7 == CFBooleanGetTypeID())
  {
    v8 = CFBooleanGetValue(v6) != 0;
  }

  else
  {
    sub_100032A14();
    v8 = 0;
  }

  CFRelease(v4);
  CFRelease(v6);
  return v8;
}

- (BOOL)isCommandAllowed:(id)a3
{
  v3 = qword_10005BFE0;
  v4 = a3;
  if (v3 != -1)
  {
    sub_100032C24();
  }

  v5 = [qword_10005BFD8 containsObject:v4];

  return v5;
}

- (void)handleXPCMessage:(id)a3 fromConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSDHMessageResponder *)self messageHandlerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022204;
  block[3] = &unk_1000512B0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)sendResponse:(BOOL)a3 withPayload:(id)a4 forRequest:(id)a5 fromConnection:(id)a6
{
  v11 = a4;
  v9 = a6;
  reply = xpc_dictionary_create_reply(a5);
  if (!reply)
  {
    reply = xpc_dictionary_create(0, 0, 0);
  }

  if (v11)
  {
    a3 &= [v11 saveAsDataInXPCDictionary:reply forKey:"payload"];
  }

  xpc_dictionary_set_BOOL(reply, "result", a3);
  xpc_connection_send_message(v9, reply);
}

- (BOOL)updateSignedManifest
{
  v2 = sub_100021268();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[MSDHMessageResponder updateSignedManifest]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Entering %s with parameter:", &v6, 0xCu);
  }

  v3 = +[MSDHOperations sharedInstance];
  v4 = [v3 updateSignedManifest];

  return v4;
}

- (BOOL)migratePreferencesFile:(id)a3
{
  v3 = a3;
  v4 = sub_100021268();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[MSDHMessageResponder migratePreferencesFile:]";
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Entering %s with parameter: %{public}@", &v8, 0x16u);
  }

  v5 = +[MSDHOperations sharedInstance];
  v6 = [v5 migratePreferencesFile];

  return v6;
}

- (BOOL)stageDeviceForUpdateProcess:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"ForBackgroundDownload"];
  v5 = [v4 BOOLValue];

  v6 = sub_100021268();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v45 = "[MSDHMessageResponder stageDeviceForUpdateProcess:]";
    v46 = 2114;
    v47 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Entering %s with parameter: %{public}@", buf, 0x16u);
  }

  v7 = +[NSMutableArray array];
  v8 = +[NSMutableArray array];
  v9 = +[NSMutableArray array];
  v33 = v3;
  v32 = v5;
  if (v5)
  {
    [v7 addObjectsFromArray:&off_1000566E8];
    v10 = &off_100056700;
    v11 = v8;
  }

  else
  {
    [v7 addObjectsFromArray:&off_100056718];
    [v8 addObjectsFromArray:&off_100056730];
    v10 = &off_100056748;
    v11 = v9;
  }

  [v11 addObjectsFromArray:v10];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v39;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v39 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v38 + 1) + 8 * i);
        v18 = +[MSDHOperations sharedInstance];
        [v18 removeDirectory:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v14);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v19 = v7;
  v20 = [v19 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v35;
    while (2)
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v35 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v34 + 1) + 8 * j);
        v25 = [v9 containsObject:v24];
        v26 = +[MSDHOperations sharedInstance];
        LOBYTE(v25) = [v26 prepareDirectory:v24 writableByNonRoot:v25 ^ 1];

        if ((v25 & 1) == 0)
        {
          sub_100032C38();
          v30 = v19;
          goto LABEL_24;
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  v27 = +[MSDHOperations sharedInstance];
  v28 = [v27 prepareWorkContainerInUserHome:v32];

  if (v28)
  {
    v29 = 1;
  }

  else
  {
    v30 = sub_100021268();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_100032CD8();
    }

LABEL_24:

    v29 = 0;
  }

  return v29;
}

- (BOOL)clearStagedDeviceAfterUpdateProcess
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 fileExistsAtPath:@"/var/MSDWorkContainer/.MSD_cache_manifest"];

  v4 = sub_100021268();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[MSDHMessageResponder clearStagedDeviceAfterUpdateProcess]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Entering %s with parameter", &v16, 0xCu);
  }

  v5 = +[MSDHOperations sharedInstance];
  v6 = [v5 removeDirectory:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/MSDWorkContainer"];

  if ((v6 & 1) == 0)
  {
    v15 = sub_100021268();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100032D18();
    }

    goto LABEL_20;
  }

  if (v3)
  {
    v7 = sub_100021268();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = @"/var/MSDWorkContainer";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Factory cache exists so spare the work container: %{public}@", &v16, 0xCu);
    }
  }

  else
  {
    v8 = +[MSDHOperations sharedInstance];
    v9 = [v8 removeDirectory:@"/var/MSDWorkContainer"];

    if ((v9 & 1) == 0)
    {
      v15 = sub_100021268();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100032D98();
      }

      goto LABEL_20;
    }
  }

  v10 = +[MSDHOperations sharedInstance];
  v11 = [v10 removeDirectory:@"/private/var/.backup"];

  if (v11)
  {
    v12 = +[MSDHOperations sharedInstance];
    v13 = [v12 destroyWorkContainerInUserHome];

    if (v13)
    {
      return 1;
    }

    v15 = sub_100021268();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100032E98();
    }
  }

  else
  {
    v15 = sub_100021268();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100032E18();
    }
  }

LABEL_20:

  return 0;
}

- (BOOL)prepareWorkDirectory:(id)a3
{
  v3 = a3;
  v4 = sub_100021268();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[MSDHMessageResponder prepareWorkDirectory:]";
    v12 = 2114;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Entering %s with parameter: %{public}@", &v10, 0x16u);
  }

  v5 = [v3 objectForKey:@"Path"];
  v6 = [v3 objectForKey:@"WritableByNonRoot"];
  v7 = +[MSDHOperations sharedInstance];
  v8 = [v7 prepareDirectory:v5 writableByNonRoot:{objc_msgSend(v6, "BOOLValue")}];

  return v8;
}

- (BOOL)removeWorkDirectory:(id)a3
{
  v3 = a3;
  v4 = sub_100021268();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "[MSDHMessageResponder removeWorkDirectory:]";
    v21 = 2114;
    v22 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Entering %s with parameter: %{public}@", buf, 0x16u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    v9 = 1;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = +[MSDHOperations sharedInstance];
        v9 &= [v12 removeDirectory:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (BOOL)createDeviceManifest:(id)a3
{
  v3 = a3;
  v4 = sub_100021268();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[MSDHMessageResponder createDeviceManifest:]";
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Entering %s with parameter: %{public}@", &v13, 0x16u);
  }

  v5 = [v3 objectForKey:@"ComponentID"];
  v6 = [v3 objectForKey:@"ComponentType"];
  v7 = [v3 objectForKey:@"RootPath"];
  v8 = [v3 objectForKey:@"UserHomePath"];
  v9 = [v3 objectForKey:@"SavePath"];
  v10 = +[MSDHOperations sharedInstance];
  v11 = [v10 createDeviceManifestForComponent:v5 ofType:v6 withRootPath:v7 userHomePath:v8 andSavePath:v9];

  return v11;
}

- (BOOL)fileExistsAtPath:(id)a3
{
  v3 = a3;
  v4 = sub_100021268();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[MSDHMessageResponder fileExistsAtPath:]";
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Entering %s with parameter: %{public}@", &v8, 0x16u);
  }

  v5 = +[MSDHOperations sharedInstance];
  v6 = [v5 fileExistsAtPath:v3];

  return v6;
}

- (BOOL)readPlistFile:(id)a3 outContent:(id *)a4
{
  v5 = a3;
  v6 = sub_100021268();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[MSDHMessageResponder readPlistFile:outContent:]";
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Entering %s with parameter: %{public}@", &v11, 0x16u);
  }

  v7 = +[MSDHOperations sharedInstance];
  v8 = [v7 readPlistFile:v5];

  if (a4)
  {
    v9 = v8;
    *a4 = v8;
  }

  return v8 != 0;
}

- (BOOL)touchFile:(id)a3
{
  v3 = a3;
  v4 = sub_100021268();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[MSDHMessageResponder touchFile:]";
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Entering %s with parameter: %{public}@", &v13, 0x16u);
  }

  v5 = +[NSMutableDictionary dictionary];
  v6 = [v3 objectForKey:@"FilePath"];
  v7 = [v3 objectForKey:@"FileOwnerName"];
  v8 = [v3 objectForKey:@"FileGroupOwnerName"];
  v9 = [v3 objectForKey:@"FilePosixPermissions"];
  if (v7)
  {
    [v5 setObject:v7 forKey:NSFileOwnerAccountName];
  }

  if (v8)
  {
    [v5 setObject:v8 forKey:NSFileGroupOwnerAccountName];
  }

  if (v9)
  {
    [v5 setObject:v9 forKey:NSFilePosixPermissions];
  }

  v10 = +[MSDHOperations sharedInstance];
  v11 = [v10 touchFile:v6 fileAttributes:v5];

  return v11;
}

- (BOOL)cloneFile:(id)a3
{
  v3 = a3;
  v4 = sub_100021268();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100032ED8(v3, v4);
  }

  v5 = [v3 objectForKey:@"FilePath"];
  v6 = [v3 objectForKey:@"StatingPath"];
  v7 = [v3 objectForKey:@"ExpectedHash"];
  v8 = [v3 objectForKey:@"CorrectOwnership"];
  v9 = +[MSDHOperations sharedInstance];
  v10 = [v9 cloneFile:v5 to:v6 expectingHash:v7 correctOwnership:{objc_msgSend(v8, "BOOLValue")}];

  return v10;
}

- (BOOL)restoreBackupAttributes:(id)a3
{
  v3 = a3;
  v4 = sub_100021268();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[MSDHMessageResponder restoreBackupAttributes:]";
    v16 = 2114;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Entering %s with parameter: %{public}@", &v14, 0x16u);
  }

  v5 = [v3 objectForKey:@"StagingRootPath"];
  v6 = [v3 objectForKey:@"Location"];
  v7 = [v3 objectForKey:@"Length"];
  v8 = [v6 integerValue];
  v9 = [v7 integerValue];
  v10 = [v3 objectForKey:@"ManifestUID"];
  v11 = [v3 objectForKey:@"DeviceUID"];
  v12 = +[MSDHOperations sharedInstance];
  LOBYTE(v8) = [v12 restoreBackupAttributesUnder:v5 range:v8 manifestUID:v9 deviceUID:{v10, v11}];

  return v8;
}

- (BOOL)restoreAppDataAttributes:(id)a3
{
  v3 = a3;
  v4 = sub_100021268();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[MSDHMessageResponder restoreAppDataAttributes:]";
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Entering %s with parameter: %{public}@", &v13, 0x16u);
  }

  v5 = [v3 objectForKey:@"StagingRootPath"];
  v6 = [v3 objectForKey:@"ContentType"];
  v7 = [v3 objectForKey:@"Identifier"];
  v8 = [v3 objectForKey:@"ManifestUID"];
  v9 = [v3 objectForKey:@"DeviceUID"];
  v10 = +[MSDHOperations sharedInstance];
  v11 = [v10 restoreAppDataAttributesUnder:v5 containerType:v6 identifier:v7 manifestUID:v8 deviceUID:v9];

  return v11;
}

- (BOOL)deleteNvram:(id)a3
{
  v3 = a3;
  v4 = sub_100021268();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[MSDHMessageResponder deleteNvram:]";
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Entering %s with parameter: %{public}@", &v8, 0x16u);
  }

  v5 = +[MSDHOperations sharedInstance];
  v6 = [v5 deleteNvram:v3];

  return v6;
}

- (BOOL)writeNvram:(id)a3
{
  v3 = a3;
  v4 = sub_100021268();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[MSDHMessageResponder writeNvram:]";
    v12 = 2114;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Entering %s with parameter: %{public}@", &v10, 0x16u);
  }

  v5 = [v3 objectForKey:@"Name"];
  v6 = [v3 objectForKey:@"Value"];
  v7 = +[MSDHOperations sharedInstance];
  v8 = [v7 writeNVRam:v5 withValue:v6];

  return v8;
}

- (BOOL)manageVolume:(id)a3
{
  v3 = a3;
  v4 = sub_100021268();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[MSDHMessageResponder manageVolume:]";
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Entering %s with parameter: %{public}@", &v12, 0x16u);
  }

  v5 = [v3 objectForKey:@"Target"];
  v6 = [v3 objectForKey:@"Operation"];
  if ([v5 isEqualToString:@"Data"])
  {
    v7 = +[MSDHOperations sharedInstance];
    v8 = [v7 manageDataVolume:v6];
LABEL_7:
    v9 = v8;
    goto LABEL_8;
  }

  if ([v5 isEqualToString:@"Demo"])
  {
    v7 = +[MSDHOperations sharedInstance];
    v8 = [v7 manageDemoVolume:v6];
    goto LABEL_7;
  }

  if ([v5 isEqualToString:@"User"])
  {
    v7 = [v3 objectForKey:@"UserName"];
    v11 = +[MSDHOperations sharedInstance];
    v9 = [v11 manageUserVolume:v6 forUser:v7];
  }

  else
  {
    v7 = sub_100021268();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unknown volume target: %{public}@", &v12, 0xCu);
    }

    v9 = 0;
  }

LABEL_8:

  return v9;
}

- (BOOL)moveStagingToFinal:(id)a3
{
  v20 = a3;
  v4 = sub_100021268();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v27 = "[MSDHMessageResponder moveStagingToFinal:]";
    v28 = 2114;
    v29 = v20;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Entering %s with parameter: %{public}@", buf, 0x16u);
  }

  v5 = [v20 objectForKey:@"StagingPaths"];
  v6 = [v20 objectForKey:@"FinalPath"];
  obj = self;
  objc_sync_enter(obj);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = *v22;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = +[MSDHOperations sharedInstance];
        v14 = [v13 moveUserHomeStagingToFinal:v11 finalPath:v6];

        if (v14)
        {
          v15 = +[MSDHOperations sharedInstance];
          v16 = [v15 moveStagingToFinal:v11 finalPath:v6];
        }

        else
        {
          v16 = 0;
        }

        objc_autoreleasePoolPop(v12);
        if (!v16)
        {
          v17 = 0;
          goto LABEL_16;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v17 = 1;
LABEL_16:

  objc_sync_exit(obj);
  return v17;
}

- (BOOL)switchToBackupFolder:(id)a3
{
  v3 = a3;
  v4 = sub_100021268();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[MSDHMessageResponder switchToBackupFolder:]";
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Entering %s with parameter: %{public}@", &v8, 0x16u);
  }

  v5 = +[MSDHOperations sharedInstance];
  v6 = [v5 switchToBackupFolder];

  return v6;
}

- (BOOL)disableLaunchdServicesForWatch:(id)a3
{
  v3 = a3;
  v4 = sub_100021268();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[MSDHMessageResponder disableLaunchdServicesForWatch:]";
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Entering %s with parameter: %{public}@", &v8, 0x16u);
  }

  v5 = +[MSDHOperations sharedInstance];
  v6 = [v5 disableLaunchdServicesForWatch];

  return v6;
}

- (BOOL)reboot:(id)a3
{
  v3 = a3;
  v4 = sub_100021268();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[MSDHMessageResponder reboot:]";
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Entering %s with parameter: %{public}@", &v8, 0x16u);
  }

  v5 = +[MSDHOperations sharedInstance];
  v6 = [v5 reboot];

  return v6;
}

- (BOOL)quitHelper:(id)a3
{
  v3 = a3;
  v4 = sub_100021268();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[MSDHMessageResponder quitHelper:]";
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Entering %s with parameter: %{public}@", &v8, 0x16u);
  }

  v5 = +[MSDHOperations sharedInstance];
  v6 = [v5 quitHelper];

  return v6;
}

- (BOOL)collectDemoLogsToFolder:(id)a3
{
  v3 = a3;
  v4 = sub_100021268();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[MSDHMessageResponder collectDemoLogsToFolder:]";
    v12 = 2114;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Entering %s with parameter: %{public}@", &v10, 0x16u);
  }

  v5 = [v3 objectForKey:@"logFileDirectory"];
  v6 = [v3 objectForKey:@"logType"];
  v7 = [v6 unsignedIntValue];

  v8 = +[MSDHOperations sharedInstance];
  LOBYTE(v6) = [v8 collectDemoLogsToFolder:v5 ofType:v7];

  return v6;
}

- (BOOL)preserveBluetoothFileToShelter:(id)a3
{
  v3 = [a3 objectForKey:@"SourcePath"];
  v4 = +[MSDHOperations sharedInstance];
  v5 = [v4 preserveBluetoothFileToShelter:v3];

  return v5;
}

- (BOOL)restartBluetooth:(id)a3
{
  v3 = +[MSDHOperations sharedInstance];
  v4 = [v3 restartBluetooth];

  return v4;
}

- (BOOL)setComputerNameAndHostname:(id)a3
{
  v3 = a3;
  v4 = sub_100021268();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[MSDHMessageResponder setComputerNameAndHostname:]";
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s - request:  %{public}@", &v12, 0x16u);
  }

  v5 = [v3 objectForKey:@"ComputerName"];
  v6 = [v3 objectForKey:@"Encoding"];
  v7 = [v6 unsignedIntValue];

  v8 = sub_100021268();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100032F64(v5, v7, v8);
  }

  v9 = +[MSDHOperations sharedInstance];
  v10 = [v9 setComputerNameAndHostname:v5 encoding:v7];

  return v10;
}

- (BOOL)executeTestScriptOfIdentifier:(id)a3
{
  v3 = a3;
  v4 = sub_100021268();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[MSDHMessageResponder executeTestScriptOfIdentifier:]";
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Entering %s with parameter: %{public}@", &v7, 0x16u);
  }

  v5 = sub_100021268();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100032FEC();
  }

  return 0;
}

- (BOOL)preserveSecondPartyAppDataToShelter:(id)a3 outErrorDict:(id *)a4
{
  v5 = a3;
  v6 = sub_100021268();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[MSDHMessageResponder preserveSecondPartyAppDataToShelter:outErrorDict:]";
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Entering %s with parameter: %{public}@", buf, 0x16u);
  }

  v7 = +[MSDHOperations sharedInstance];
  v11 = 0;
  v8 = [v7 preserveSecondPartyAppDataToShelter:v5 withReturnErrorMsg:&v11];
  v9 = v11;

  if ((v8 & 1) == 0 && a4 && v9)
  {
    v12 = @"ErrorMsg";
    v13 = v9;
    *a4 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  }

  return v8;
}

- (BOOL)setPreferences:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"Key"];
  v5 = [v3 objectForKey:@"Value"];
  v6 = [v3 objectForKey:@"ApplicationId"];
  v7 = [v3 objectForKey:@"UserName"];

  v8 = sub_100021268();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136316162;
    v13 = "[MSDHMessageResponder setPreferences:]";
    v14 = 2114;
    v15 = v4;
    v16 = 2114;
    v17 = v5;
    v18 = 2114;
    v19 = v6;
    v20 = 2114;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: entered - key:  %{public}@ - value:  %{public}@ - appId:  %{public}@ - user:  %{public}@", &v12, 0x34u);
  }

  v9 = +[MSDHOperations sharedInstance];
  v10 = [v9 setPreferencesForKey:v4 withValue:v5 forApplication:v6 andUser:v7];

  return v10;
}

- (void)_handleXPCMessage:(id)a3 fromConnection:(id)a4
{
  v10 = a3;
  v11 = a4;
  v12 = [NSSet setWithObjects:@"readPlistFile:outContent:", @"preserveSecondPartyAppDataToShelter:outErrorDict:", 0];
  if ([(MSDHMessageResponder *)self hasEntitlementMobileStoreDemod:v11])
  {
    v13 = [NSDictionary dictionaryWithXPCDictionary:v10];
    v14 = v13;
    if (!v13)
    {
      sub_1000248C8();
      goto LABEL_10;
    }

    v4 = [v13 objectForKey:@"command"];
    v5 = [v14 objectForKey:@"payload"];
    if ([(MSDHMessageResponder *)self isCommandAllowed:v4])
    {
      v15 = NSSelectorFromString(v4);
      if (v15)
      {
        v16 = v15;
        if (objc_opt_respondsToSelector())
        {
          v17 = [(MSDHMessageResponder *)self methodForSelector:v16];
          if ([v12 containsObject:v4])
          {
            v22 = 0;
            v6 = v17(self, v16, v5, &v22);
            v7 = v22;
            goto LABEL_10;
          }

          v6 = (v17)(self, v16, v5);
LABEL_9:
          v7 = 0;
          goto LABEL_10;
        }

        v19 = sub_100021268();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v21 = [objc_opt_class() description];
          *buf = 138543618;
          v24 = v21;
          v25 = 2114;
          v26 = v4;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@ does not respond to %{public}@.", buf, 0x16u);
        }

LABEL_22:

        v6 = 0;
        goto LABEL_9;
      }

      v19 = sub_100021268();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      *buf = 138543362;
      v24 = v4;
      v20 = "selector is nil for command: %{public}@";
    }

    else
    {
      v19 = sub_100021268();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      *buf = 138543362;
      v24 = v4;
      v20 = "Command not allowed: %{public}@";
    }

    _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, v20, buf, 0xCu);
    goto LABEL_22;
  }

  v18 = sub_100021268();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "The client does not have proper entitlement", buf, 2u);
  }

  sub_1000248C8();
  v14 = 0;
LABEL_10:
  [(MSDHMessageResponder *)self sendResponse:v6 withPayload:v7 forRequest:v10 fromConnection:v11];
}

@end