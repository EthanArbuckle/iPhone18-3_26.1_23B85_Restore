@interface MSDHelperAgent
+ (MSDHelperAgent)sharedInstance;
- (BOOL)clearStagedDeviceAfterUpdateProcess;
- (BOOL)cloneFile:(id)a3 to:(id)a4 expectingHash:(id)a5;
- (BOOL)collectDemoLogsToFolder:(id)a3 ofType:(unint64_t)a4;
- (BOOL)deleteNvram:(id)a3;
- (BOOL)disableLaunchdServicesForWatch;
- (BOOL)executeTestScriptOfIdentifier:(id)a3;
- (BOOL)fileExistsAtPath:(id)a3;
- (BOOL)manageDataVolume:(id)a3;
- (BOOL)manageDemoVolume:(id)a3;
- (BOOL)manageUserVolume:(id)a3 forUser:(id)a4;
- (BOOL)migratePreferencesFile;
- (BOOL)moveStagingToFinal:(id)a3 finalPath:(id)a4;
- (BOOL)moveStagingsToFinal:(id)a3 finalPath:(id)a4;
- (BOOL)prepareWorkDirectory:(id)a3 writableByNonRoot:(BOOL)a4;
- (BOOL)preserveBluetoothFileToShelter:(id)a3;
- (BOOL)preserveSecondPartyAppDataToShelter:(id)a3 withReturnErrorMsg:(id *)a4;
- (BOOL)quitHelper;
- (BOOL)reboot;
- (BOOL)removeFileAtPath:(id)a3;
- (BOOL)removeWorkDirectories:(id)a3;
- (BOOL)removeWorkDirectory:(id)a3;
- (BOOL)restartBluetooth;
- (BOOL)restoreAppDataAttributesUnder:(id)a3 containerType:(id)a4 identifier:(id)a5 manifestUID:(id)a6 deviceUID:(id)a7;
- (BOOL)restoreBackupAttributesUnder:(id)a3 range:(_NSRange)a4 manifestUID:(id)a5 deviceUID:(id)a6;
- (BOOL)setComputerNameAndHostname:(id)a3 encoding:(unsigned int)a4;
- (BOOL)setPreferencesForKey:(id)a3 withValue:(id)a4 forApplication:(id)a5 andUser:(id)a6;
- (BOOL)stageDeviceForUpdateProcess:(BOOL)a3;
- (BOOL)switchToBackupFolder;
- (BOOL)touchFile:(id)a3 fileAttributes:(id)a4;
- (BOOL)updateSignedManifest;
- (BOOL)writeNvram:(id)a3 withValue:(id)a4;
- (MSDHelperAgent)init;
- (id)createDeviceManifestForComponent:(id)a3 ofType:(id)a4 withRootPath:(id)a5 userHomePath:(id)a6 andSavePath:(id)a7;
- (id)readPlistFile:(id)a3;
- (id)sendXPCRequest:(id)a3;
@end

@implementation MSDHelperAgent

+ (MSDHelperAgent)sharedInstance
{
  if (qword_1001A5A50 != -1)
  {
    sub_1000E84B0();
  }

  v3 = qword_1001A5A48;

  return v3;
}

- (MSDHelperAgent)init
{
  v11.receiver = self;
  v11.super_class = MSDHelperAgent;
  v2 = [(MSDHelperAgent *)&v11 init];
  if (!v2)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v3 = dispatch_semaphore_create(5);
  [(MSDHelperAgent *)v2 setXpc_sema:v3];

  mach_service = xpc_connection_create_mach_service("com.apple.mobilestoredemodhelper", 0, 0);
  [(MSDHelperAgent *)v2 setXpc_conn:mach_service];

  v5 = [(MSDHelperAgent *)v2 xpc_conn];

  if (!v5)
  {
    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000E84C4();
    }

    goto LABEL_7;
  }

  v6 = [(MSDHelperAgent *)v2 xpc_conn];
  xpc_connection_set_event_handler(v6, &stru_10016C398);

  v7 = [(MSDHelperAgent *)v2 xpc_conn];
  xpc_connection_resume(v7);

  v8 = v2;
LABEL_8:

  return v8;
}

- (BOOL)updateSignedManifest
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[MSDHelperAgent updateSignedManifest]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: entered.", &v9, 0xCu);
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "command", "updateSignedManifest");
  v5 = [(MSDHelperAgent *)self sendXPCRequest:v4];
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[MSDHelperAgent updateSignedManifest]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: will return.", &v9, 0xCu);
  }

  v7 = xpc_dictionary_get_BOOL(v5, "result");
  return v7;
}

- (BOOL)migratePreferencesFile
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[MSDHelperAgent migratePreferencesFile]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: entered.", &v9, 0xCu);
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "command", "migratePreferencesFile:");
  v5 = [(MSDHelperAgent *)self sendXPCRequest:v4];
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[MSDHelperAgent migratePreferencesFile]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: will return.", &v9, 0xCu);
  }

  v7 = xpc_dictionary_get_BOOL(v5, "result");
  return v7;
}

- (BOOL)stageDeviceForUpdateProcess:(BOOL)a3
{
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[MSDHelperAgent stageDeviceForUpdateProcess:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: entered.", &v12, 0xCu);
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v6, "ForBackgroundDownload", a3);
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v7, "command", "stageDeviceForUpdateProcess:");
  xpc_dictionary_set_value(v7, "payload", v6);
  v8 = [(MSDHelperAgent *)self sendXPCRequest:v7];
  v9 = sub_100063A54();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[MSDHelperAgent stageDeviceForUpdateProcess:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: will return.", &v12, 0xCu);
  }

  v10 = xpc_dictionary_get_BOOL(v8, "result");
  return v10;
}

- (BOOL)clearStagedDeviceAfterUpdateProcess
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[MSDHelperAgent clearStagedDeviceAfterUpdateProcess]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: entered.", &v9, 0xCu);
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "command", "clearStagedDeviceAfterUpdateProcess");
  v5 = [(MSDHelperAgent *)self sendXPCRequest:v4];
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[MSDHelperAgent clearStagedDeviceAfterUpdateProcess]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: will return.", &v9, 0xCu);
  }

  v7 = xpc_dictionary_get_BOOL(v5, "result");
  return v7;
}

- (BOOL)prepareWorkDirectory:(id)a3 writableByNonRoot:(BOOL)a4
{
  v6 = a3;
  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[MSDHelperAgent prepareWorkDirectory:writableByNonRoot:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: entered.", &v15, 0xCu);
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = [v6 cStringUsingEncoding:4];

  xpc_dictionary_set_string(v8, "Path", v9);
  xpc_dictionary_set_BOOL(v8, "WritableByNonRoot", a4);
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v10, "command", "prepareWorkDirectory:");
  xpc_dictionary_set_value(v10, "payload", v8);
  v11 = [(MSDHelperAgent *)self sendXPCRequest:v10];
  v12 = sub_100063A54();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[MSDHelperAgent prepareWorkDirectory:writableByNonRoot:]";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: will return.", &v15, 0xCu);
  }

  v13 = xpc_dictionary_get_BOOL(v11, "result");
  return v13;
}

- (BOOL)removeWorkDirectory:(id)a3
{
  v7 = a3;
  v4 = a3;
  v5 = [NSArray arrayWithObjects:&v7 count:1];

  LOBYTE(self) = [(MSDHelperAgent *)self removeWorkDirectories:v5, v7];
  return self;
}

- (BOOL)removeWorkDirectories:(id)a3
{
  v4 = a3;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v25 = "[MSDHelperAgent removeWorkDirectories:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: entered.", buf, 0xCu);
  }

  v6 = xpc_array_create(0, 0);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = xpc_string_create([v12 UTF8String]);
        xpc_array_append_value(v6, v13);
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v14 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v14, "command", "removeWorkDirectory:");
  xpc_dictionary_set_value(v14, "payload", v6);
  v15 = [(MSDHelperAgent *)self sendXPCRequest:v14];
  v16 = sub_100063A54();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v25 = "[MSDHelperAgent removeWorkDirectories:]";
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: will return.", buf, 0xCu);
  }

  v17 = xpc_dictionary_get_BOOL(v15, "result");
  return v17;
}

- (id)createDeviceManifestForComponent:(id)a3 ofType:(id)a4 withRootPath:(id)a5 userHomePath:(id)a6 andSavePath:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = sub_100063A54();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v39 = "[MSDHelperAgent createDeviceManifestForComponent:ofType:withRootPath:userHomePath:andSavePath:]";
    v40 = 2114;
    v41 = v12;
    v42 = 2114;
    v43 = v13;
    v44 = 2114;
    v45 = v14;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s: entered for component: %{public}@ of type: %{public}@ root path: %{public}@", buf, 0x2Au);
  }

  v18 = +[NSFileManager defaultManager];
  v19 = [v18 fileExistsAtPath:v16];

  v35 = v15;
  v36 = v16;
  if (v19)
  {
    v33 = v14;
    v20 = sub_100063A54();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v39 = v16;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Device manifest already exists at path: %{public}@; Skipping XPC request.", buf, 0xCu);
    }

    v21 = v12;

    v22 = 0;
    v23 = 0;
    v24 = 0;
    goto LABEL_9;
  }

  v23 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v23, "ComponentID", [v12 cStringUsingEncoding:4]);
  xpc_dictionary_set_string(v23, "ComponentType", [v13 cStringUsingEncoding:4]);
  xpc_dictionary_set_string(v23, "RootPath", [v14 cStringUsingEncoding:4]);
  xpc_dictionary_set_string(v23, "UserHomePath", [v15 cStringUsingEncoding:4]);
  xpc_dictionary_set_string(v23, "SavePath", [v16 cStringUsingEncoding:4]);
  v22 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v22, "command", "createDeviceManifest:");
  xpc_dictionary_set_value(v22, "payload", v23);
  v24 = [(MSDHelperAgent *)self sendXPCRequest:v22];
  if (xpc_dictionary_get_BOOL(v24, "result"))
  {
    v33 = v14;
    v21 = v12;
LABEL_9:
    v25 = [NSURL fileURLWithPath:v16, v33, v35];
    v37 = 0;
    v26 = [NSDictionary dictionaryWithContentsOfURL:v25 error:&v37];
    v27 = v37;

    if (!v26)
    {
      v28 = sub_100063A54();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1000E8630(v36, v27, v28);
      }

      v26 = objc_alloc_init(NSDictionary);
    }

    v12 = v21;
    v14 = v34;
    goto LABEL_17;
  }

  v29 = sub_100063A54();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    sub_1000E85B0();
  }

  v26 = objc_alloc_init(NSDictionary);
LABEL_17:
  v30 = [[MSDManifest alloc] initWithDictionary:v26];
  [(MSDManifest *)v30 setRootPath:v14];
  v31 = sub_100063A54();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v39 = "[MSDHelperAgent createDeviceManifestForComponent:ofType:withRootPath:userHomePath:andSavePath:]";
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%s: will return.", buf, 0xCu);
  }

  return v30;
}

- (BOOL)fileExistsAtPath:(id)a3
{
  v4 = a3;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[MSDHelperAgent fileExistsAtPath:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: entered.", &v12, 0xCu);
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v6, "command", "fileExistsAtPath:");
  v7 = [v4 cStringUsingEncoding:4];

  xpc_dictionary_set_string(v6, "payload", v7);
  v8 = [(MSDHelperAgent *)self sendXPCRequest:v6];
  v9 = sub_100063A54();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[MSDHelperAgent fileExistsAtPath:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: will return.", &v12, 0xCu);
  }

  v10 = xpc_dictionary_get_BOOL(v8, "result");
  return v10;
}

- (BOOL)removeFileAtPath:(id)a3
{
  v4 = a3;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[MSDHelperAgent removeFileAtPath:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: entered.", &v8, 0xCu);
  }

  v6 = [(MSDHelperAgent *)self removeWorkDirectory:v4];
  return v6;
}

- (BOOL)touchFile:(id)a3 fileAttributes:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = sub_100063A54();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315138;
    v20 = "[MSDHelperAgent touchFile:fileAttributes:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: entered.", &v19, 0xCu);
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = [v7 cStringUsingEncoding:4];

  xpc_dictionary_set_string(v9, "FilePath", v10);
  v11 = [v6 objectForKey:@"FileOwnerName"];
  v12 = [v6 objectForKey:@"FileGroupOwnerName"];
  v13 = [v6 objectForKey:@"FilePosixPermissions"];

  if (v11)
  {
    xpc_dictionary_set_string(v9, "FileOwnerName", [v11 UTF8String]);
  }

  if (v12)
  {
    xpc_dictionary_set_string(v9, "FileGroupOwnerName", [v12 UTF8String]);
  }

  if (v13)
  {
    xpc_dictionary_set_int64(v9, "FilePosixPermissions", [v13 shortValue]);
  }

  v14 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v14, "command", "touchFile:");
  xpc_dictionary_set_value(v14, "payload", v9);
  v15 = [(MSDHelperAgent *)self sendXPCRequest:v14];
  v16 = sub_100063A54();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315138;
    v20 = "[MSDHelperAgent touchFile:fileAttributes:]";
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: will return.", &v19, 0xCu);
  }

  v17 = xpc_dictionary_get_BOOL(v15, "result");
  return v17;
}

- (BOOL)cloneFile:(id)a3 to:(id)a4 expectingHash:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = sub_100063A54();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E86F4(v11);
  }

  v12 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v12, "FilePath", [v8 cStringUsingEncoding:4]);
  v13 = [v10 cStringUsingEncoding:4];

  xpc_dictionary_set_string(v12, "StatingPath", v13);
  if (v9 && [v9 length])
  {
    xpc_dictionary_set_data(v12, "ExpectedHash", [v9 bytes], objc_msgSend(v9, "length"));
  }

  xpc_dictionary_set_BOOL(v12, "CorrectOwnership", 1);
  v14 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v14, "command", "cloneFile:");
  xpc_dictionary_set_value(v14, "payload", v12);
  v15 = [(MSDHelperAgent *)self sendXPCRequest:v14];
  v16 = xpc_dictionary_get_BOOL(v15, "result");
  if (!v16)
  {
    sub_1000E8778(v8);
  }

  v17 = sub_100063A54();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E8820(v17);
  }

  return v16;
}

- (BOOL)restoreBackupAttributesUnder:(id)a3 range:(_NSRange)a4 manifestUID:(id)a5 deviceUID:(id)a6
{
  length = a4.length;
  location = a4.location;
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v14 = sub_100063A54();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136315138;
    v25 = "[MSDHelperAgent restoreBackupAttributesUnder:range:manifestUID:deviceUID:]";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: entered.", &v24, 0xCu);
  }

  v15 = xpc_dictionary_create(0, 0, 0);
  v16 = [v13 cStringUsingEncoding:4];

  xpc_dictionary_set_string(v15, "StagingRootPath", v16);
  xpc_dictionary_set_int64(v15, "Location", location);
  xpc_dictionary_set_int64(v15, "Length", length);
  v17 = [v12 integerValue];

  xpc_dictionary_set_int64(v15, "ManifestUID", v17);
  v18 = [v11 integerValue];

  xpc_dictionary_set_int64(v15, "DeviceUID", v18);
  v19 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v19, "command", "restoreBackupAttributes:");
  xpc_dictionary_set_value(v19, "payload", v15);
  v20 = [(MSDHelperAgent *)self sendXPCRequest:v19];
  v21 = sub_100063A54();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136315138;
    v25 = "[MSDHelperAgent restoreBackupAttributesUnder:range:manifestUID:deviceUID:]";
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s: will return.", &v24, 0xCu);
  }

  v22 = xpc_dictionary_get_BOOL(v20, "result");
  return v22;
}

- (BOOL)restoreAppDataAttributesUnder:(id)a3 containerType:(id)a4 identifier:(id)a5 manifestUID:(id)a6 deviceUID:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = sub_100063A54();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 136315138;
    v30 = "[MSDHelperAgent restoreAppDataAttributesUnder:containerType:identifier:manifestUID:deviceUID:]";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s: entered.", &v29, 0xCu);
  }

  v18 = xpc_dictionary_create(0, 0, 0);
  v19 = [v16 cStringUsingEncoding:4];

  xpc_dictionary_set_string(v18, "StagingRootPath", v19);
  v20 = [v15 cStringUsingEncoding:4];

  xpc_dictionary_set_string(v18, "ContentType", v20);
  v21 = [v14 cStringUsingEncoding:4];

  xpc_dictionary_set_string(v18, "Identifier", v21);
  v22 = [v13 integerValue];

  xpc_dictionary_set_int64(v18, "ManifestUID", v22);
  v23 = [v12 integerValue];

  xpc_dictionary_set_int64(v18, "DeviceUID", v23);
  v24 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v24, "command", "restoreAppDataAttributes:");
  xpc_dictionary_set_value(v24, "payload", v18);
  v25 = [(MSDHelperAgent *)self sendXPCRequest:v24];
  v26 = sub_100063A54();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 136315138;
    v30 = "[MSDHelperAgent restoreAppDataAttributesUnder:containerType:identifier:manifestUID:deviceUID:]";
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s: will return.", &v29, 0xCu);
  }

  v27 = xpc_dictionary_get_BOOL(v25, "result");
  return v27;
}

- (BOOL)deleteNvram:(id)a3
{
  v4 = a3;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[MSDHelperAgent deleteNvram:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: entered.", &v12, 0xCu);
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v6, "command", "deleteNvram:");
  v7 = [v4 cStringUsingEncoding:4];

  xpc_dictionary_set_string(v6, "payload", v7);
  v8 = [(MSDHelperAgent *)self sendXPCRequest:v6];
  v9 = sub_100063A54();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[MSDHelperAgent deleteNvram:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: will return.", &v12, 0xCu);
  }

  v10 = xpc_dictionary_get_BOOL(v8, "result");
  return v10;
}

- (BOOL)writeNvram:(id)a3 withValue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = sub_100063A54();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = "[MSDHelperAgent writeNvram:withValue:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: entered.", &v17, 0xCu);
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = [v7 cStringUsingEncoding:4];

  xpc_dictionary_set_string(v9, "Name", v10);
  v11 = [v6 cStringUsingEncoding:4];

  xpc_dictionary_set_string(v9, "Value", v11);
  v12 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v12, "command", "writeNvram:");
  xpc_dictionary_set_value(v12, "payload", v9);
  v13 = [(MSDHelperAgent *)self sendXPCRequest:v12];
  v14 = sub_100063A54();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = "[MSDHelperAgent writeNvram:withValue:]";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: will return.", &v17, 0xCu);
  }

  v15 = xpc_dictionary_get_BOOL(v13, "result");
  return v15;
}

- (BOOL)manageDataVolume:(id)a3
{
  v4 = a3;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[MSDHelperAgent manageDataVolume:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: entered.", &v13, 0xCu);
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v6, "Target", "Data");
  v7 = [v4 cStringUsingEncoding:4];

  xpc_dictionary_set_string(v6, "Operation", v7);
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "command", "manageVolume:");
  xpc_dictionary_set_value(v8, "payload", v6);
  v9 = [(MSDHelperAgent *)self sendXPCRequest:v8];
  v10 = sub_100063A54();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[MSDHelperAgent manageDataVolume:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: will return.", &v13, 0xCu);
  }

  v11 = xpc_dictionary_get_BOOL(v9, "result");
  return v11;
}

- (BOOL)manageDemoVolume:(id)a3
{
  v4 = a3;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[MSDHelperAgent manageDemoVolume:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: entered.", &v13, 0xCu);
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v6, "Target", "Demo");
  v7 = [v4 cStringUsingEncoding:4];

  xpc_dictionary_set_string(v6, "Operation", v7);
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "command", "manageVolume:");
  xpc_dictionary_set_value(v8, "payload", v6);
  v9 = [(MSDHelperAgent *)self sendXPCRequest:v8];
  v10 = sub_100063A54();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[MSDHelperAgent manageDemoVolume:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: will return.", &v13, 0xCu);
  }

  v11 = xpc_dictionary_get_BOOL(v9, "result");
  return v11;
}

- (BOOL)manageUserVolume:(id)a3 forUser:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = sub_100063A54();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = "[MSDHelperAgent manageUserVolume:forUser:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: entered.", &v17, 0xCu);
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v9, "Target", "User");
  v10 = [v7 cStringUsingEncoding:4];

  xpc_dictionary_set_string(v9, "Operation", v10);
  v11 = [v6 cStringUsingEncoding:4];

  xpc_dictionary_set_string(v9, "UserName", v11);
  v12 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v12, "command", "manageVolume:");
  xpc_dictionary_set_value(v12, "payload", v9);
  v13 = [(MSDHelperAgent *)self sendXPCRequest:v12];
  v14 = sub_100063A54();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = "[MSDHelperAgent manageUserVolume:forUser:]";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: will return.", &v17, 0xCu);
  }

  v15 = xpc_dictionary_get_BOOL(v13, "result");
  return v15;
}

- (BOOL)disableLaunchdServicesForWatch
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[MSDHelperAgent disableLaunchdServicesForWatch]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: entered.", &v9, 0xCu);
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "command", "disableLaunchdServicesForWatch:");
  v5 = [(MSDHelperAgent *)self sendXPCRequest:v4];
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[MSDHelperAgent disableLaunchdServicesForWatch]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: will return.", &v9, 0xCu);
  }

  v7 = xpc_dictionary_get_BOOL(v5, "result");
  return v7;
}

- (BOOL)moveStagingToFinal:(id)a3 finalPath:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = a3;
  v8 = [NSArray arrayWithObjects:&v10 count:1];

  LOBYTE(v7) = [(MSDHelperAgent *)self moveStagingsToFinal:v8 finalPath:v6, v10];
  return v7;
}

- (BOOL)moveStagingsToFinal:(id)a3 finalPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100063A54();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v29 = "[MSDHelperAgent moveStagingsToFinal:finalPath:]";
    v30 = 2114;
    v31 = v6;
    v32 = 2114;
    v33 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s entered.  stagingPaths:  %{public}@ - finalPath:  %{public}@", buf, 0x20u);
  }

  v9 = xpc_array_create(0, 0);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = xpc_string_create([v15 UTF8String]);
        xpc_array_append_value(v9, v16);
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  v17 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_value(v17, "StagingPaths", v9);
  xpc_dictionary_set_string(v17, "FinalPath", [v7 cStringUsingEncoding:4]);
  v18 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v18, "command", "moveStagingToFinal:");
  xpc_dictionary_set_value(v18, "payload", v17);
  v19 = [(MSDHelperAgent *)self sendXPCRequest:v18];
  v20 = sub_100063A54();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v29 = "[MSDHelperAgent moveStagingsToFinal:finalPath:]";
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s: will return.", buf, 0xCu);
  }

  v21 = xpc_dictionary_get_BOOL(v19, "result");
  return v21;
}

- (BOOL)switchToBackupFolder
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[MSDHelperAgent switchToBackupFolder]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s entered.", &v9, 0xCu);
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "command", "switchToBackupFolder:");
  v5 = [(MSDHelperAgent *)self sendXPCRequest:v4];
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[MSDHelperAgent switchToBackupFolder]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: will return.", &v9, 0xCu);
  }

  v7 = xpc_dictionary_get_BOOL(v5, "result");
  return v7;
}

- (BOOL)reboot
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[MSDHelperAgent reboot]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: entered.", &v9, 0xCu);
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "command", "reboot:");
  v5 = [(MSDHelperAgent *)self sendXPCRequest:v4];
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[MSDHelperAgent reboot]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: will return.", &v9, 0xCu);
  }

  v7 = xpc_dictionary_get_BOOL(v5, "result");
  return v7;
}

- (BOOL)quitHelper
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[MSDHelperAgent quitHelper]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: entered.", &v10, 0xCu);
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "command", "quitHelper:");
  v5 = [(MSDHelperAgent *)self sendXPCRequest:v4];
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[MSDHelperAgent quitHelper]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: will return.", &v10, 0xCu);
  }

  v8 = v5 == &_xpc_error_connection_invalid || v5 == &_xpc_error_connection_interrupted;
  return v8;
}

- (BOOL)collectDemoLogsToFolder:(id)a3 ofType:(unint64_t)a4
{
  v6 = a3;
  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[MSDHelperAgent collectDemoLogsToFolder:ofType:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: entered.", &v15, 0xCu);
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = [v6 cStringUsingEncoding:4];

  xpc_dictionary_set_string(v8, "logFileDirectory", v9);
  xpc_dictionary_set_uint64(v8, "logType", a4);
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v10, "command", "collectDemoLogsToFolder:");
  xpc_dictionary_set_value(v10, "payload", v8);
  v11 = [(MSDHelperAgent *)self sendXPCRequest:v10];
  v12 = sub_100063A54();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[MSDHelperAgent collectDemoLogsToFolder:ofType:]";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: will return.", &v15, 0xCu);
  }

  v13 = xpc_dictionary_get_BOOL(v11, "result");
  return v13;
}

- (BOOL)preserveBluetoothFileToShelter:(id)a3
{
  v4 = a3;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[MSDHelperAgent preserveBluetoothFileToShelter:]";
    v14 = 2114;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s entered.  sourcePath:  %{public}@", &v12, 0x16u);
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v6, "SourcePath", [v4 cStringUsingEncoding:4]);
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v7, "command", "preserveBluetoothFileToShelter:");
  xpc_dictionary_set_value(v7, "payload", v6);
  v8 = [(MSDHelperAgent *)self sendXPCRequest:v7];
  v9 = sub_100063A54();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[MSDHelperAgent preserveBluetoothFileToShelter:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: will return.", &v12, 0xCu);
  }

  v10 = xpc_dictionary_get_BOOL(v8, "result");
  return v10;
}

- (BOOL)restartBluetooth
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[MSDHelperAgent restartBluetooth]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: entered.", &v9, 0xCu);
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "command", "restartBluetooth:");
  v5 = [(MSDHelperAgent *)self sendXPCRequest:v4];
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[MSDHelperAgent restartBluetooth]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: will return.", &v9, 0xCu);
  }

  v7 = xpc_dictionary_get_BOOL(v5, "result");
  return v7;
}

- (BOOL)setComputerNameAndHostname:(id)a3 encoding:(unsigned int)a4
{
  v6 = a3;
  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315650;
    v15 = "[MSDHelperAgent setComputerNameAndHostname:encoding:]";
    v16 = 2114;
    v17 = v6;
    v18 = 1026;
    v19 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s:  entered - computerName:  %{public}@ - encoding:  %{public}x", &v14, 0x1Cu);
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "ComputerName", [v6 cStringUsingEncoding:4]);
  xpc_dictionary_set_uint64(v8, "Encoding", a4);
  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v9, "command", "setComputerNameAndHostname:");
  xpc_dictionary_set_value(v9, "payload", v8);
  v10 = [(MSDHelperAgent *)self sendXPCRequest:v9];
  v11 = sub_100063A54();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "[MSDHelperAgent setComputerNameAndHostname:encoding:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: will return.", &v14, 0xCu);
  }

  v12 = xpc_dictionary_get_BOOL(v10, "result");
  return v12;
}

- (BOOL)executeTestScriptOfIdentifier:(id)a3
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1000E88A4();
  }

  return 0;
}

- (BOOL)preserveSecondPartyAppDataToShelter:(id)a3 withReturnErrorMsg:(id *)a4
{
  v6 = a3;
  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = "[MSDHelperAgent preserveSecondPartyAppDataToShelter:withReturnErrorMsg:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s:  entered.", &v17, 0xCu);
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "command", "preserveSecondPartyAppDataToShelter:outErrorDict:");
  v9 = [v6 UTF8String];

  xpc_dictionary_set_string(v8, "payload", v9);
  v10 = [(MSDHelperAgent *)self sendXPCRequest:v8];
  v11 = sub_100063A54();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = "[MSDHelperAgent preserveSecondPartyAppDataToShelter:withReturnErrorMsg:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: will return.", &v17, 0xCu);
  }

  v12 = xpc_dictionary_get_BOOL(v10, "result");
  v13 = v12;
  if (a4 && !v12)
  {
    v14 = [NSDictionary dictionaryFromXPCDictionary:v10 withDataFromKey:"payload"];
    v15 = v14;
    if (v14)
    {
      *a4 = [v14 objectForKey:@"ErrorMsg"];
    }
  }

  return v13;
}

- (BOOL)setPreferencesForKey:(id)a3 withValue:(id)a4 forApplication:(id)a5 andUser:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = sub_100063A54();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136316162;
    v23 = "[MSDHelperAgent setPreferencesForKey:withValue:forApplication:andUser:]";
    v24 = 2114;
    v25 = v10;
    v26 = 2114;
    v27 = v11;
    v28 = 2114;
    v29 = v12;
    v30 = 2114;
    v31 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: entered - key:  %{public}@ - value:  %{public}@ - appId:  %{public}@ - user:  %{public}@", &v22, 0x34u);
  }

  v15 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v15, "Key", [v10 cStringUsingEncoding:4]);
  v16 = [v11 createXPCDictionary];
  xpc_dictionary_set_value(v15, "Value", v16);

  xpc_dictionary_set_string(v15, "ApplicationId", [v12 cStringUsingEncoding:4]);
  xpc_dictionary_set_string(v15, "UserName", [v13 cStringUsingEncoding:4]);
  v17 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v17, "command", "setPreferences:");
  xpc_dictionary_set_value(v17, "payload", v15);
  v18 = [(MSDHelperAgent *)self sendXPCRequest:v17];
  v19 = xpc_dictionary_get_BOOL(v18, "result");
  v20 = sub_100063A54();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315394;
    v23 = "[MSDHelperAgent setPreferencesForKey:withValue:forApplication:andUser:]";
    v24 = 1024;
    LODWORD(v25) = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s: will return with rval %d", &v22, 0x12u);
  }

  return v19;
}

- (id)sendXPCRequest:(id)a3
{
  v4 = a3;
  v5 = [(MSDHelperAgent *)self xpc_sema];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);

  v6 = [(MSDHelperAgent *)self xpc_conn];
  v7 = xpc_connection_send_message_with_reply_sync(v6, v4);

  v8 = [(MSDHelperAgent *)self xpc_sema];
  dispatch_semaphore_signal(v8);

  return v7;
}

- (id)readPlistFile:(id)a3
{
  v4 = a3;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[MSDHelperAgent readPlistFile:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: entered.", &v12, 0xCu);
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v6, "command", "readPlistFile:outContent:");
  v7 = [v4 cStringUsingEncoding:4];

  xpc_dictionary_set_string(v6, "payload", v7);
  v8 = [(MSDHelperAgent *)self sendXPCRequest:v6];
  v9 = sub_100063A54();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[MSDHelperAgent readPlistFile:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: will return.", &v12, 0xCu);
  }

  if (xpc_dictionary_get_BOOL(v8, "result"))
  {
    v10 = [NSDictionary dictionaryFromXPCDictionary:v8 withDataFromKey:"payload"];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end