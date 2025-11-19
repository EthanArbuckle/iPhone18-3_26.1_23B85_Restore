@interface MSDHOperations
+ (id)sharedInstance;
- (BOOL)collectDemoLogsToFolder:(id)a3 ofType:(unint64_t)a4;
- (BOOL)createDeviceManifestForComponent:(id)a3 ofType:(id)a4 withRootPath:(id)a5 userHomePath:(id)a6 andSavePath:(id)a7;
- (BOOL)deleteNvram:(id)a3;
- (BOOL)destroyWorkContainerInUserHome;
- (BOOL)disableLaunchdServicesForWatch;
- (BOOL)fileExistsAtPath:(id)a3;
- (BOOL)generateLogsForPredicate:(id)a3 toFile:(id)a4;
- (BOOL)generateSysdiagnose:(id)a3;
- (BOOL)manageDataVolume:(id)a3;
- (BOOL)manageDemoVolume:(id)a3;
- (BOOL)manageUserVolume:(id)a3 forUser:(id)a4;
- (BOOL)migratePreferencesFile;
- (BOOL)moveStagingToFinal:(id)a3 finalPath:(id)a4;
- (BOOL)moveUserHomeStagingToFinal:(id)a3 finalPath:(id)a4;
- (BOOL)prepareDirectory:(id)a3 writableByNonRoot:(BOOL)a4;
- (BOOL)prepareWorkContainerInUserHome:(BOOL)a3;
- (BOOL)preserveBluetoothFileToShelter:(id)a3;
- (BOOL)preserveSecondPartyAppDataToShelter:(id)a3 withReturnErrorMsg:(id *)a4;
- (BOOL)reboot;
- (BOOL)removeDirectory:(id)a3;
- (BOOL)restartBluetooth;
- (BOOL)restoreAppDataAttributesUnder:(id)a3 containerType:(id)a4 identifier:(id)a5 manifestUID:(id)a6 deviceUID:(id)a7;
- (BOOL)restoreBackupAttributesUnder:(id)a3 range:(_NSRange)a4 manifestUID:(id)a5 deviceUID:(id)a6;
- (BOOL)runPreflightChecksOnSecondPartyAppData:(id)a3 withReturnErrorMsg:(id *)a4;
- (BOOL)setComputerNameAndHostname:(id)a3 encoding:(unsigned int)a4;
- (BOOL)setPreferencesForKey:(id)a3 withValue:(id)a4 forApplication:(id)a5 andUser:(id)a6;
- (BOOL)switchToBackupFolder;
- (BOOL)touchFile:(id)a3 fileAttributes:(id)a4;
- (BOOL)updateSignedManifest;
- (BOOL)writeDictionary:(id)a3 toFile:(id)a4;
- (BOOL)writeNVRam:(id)a3 withValue:(id)a4;
- (MSDHOperations)init;
- (MSDSignedManifest)signedManifest;
- (id)getPathInUserHomeDirectory:(id)a3;
- (id)readPlistFile:(id)a3;
- (void)dealloc;
@end

@implementation MSDHOperations

+ (id)sharedInstance
{
  if (qword_10005BF48 != -1)
  {
    sub_10002F0B8();
  }

  v3 = qword_10005BF40;

  return v3;
}

- (MSDHOperations)init
{
  v6.receiver = self;
  v6.super_class = MSDHOperations;
  v2 = [(MSDHOperations *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (void)dealloc
{
  [(MSDHOperations *)self setSignedManifest:0];
  v3.receiver = self;
  v3.super_class = MSDHOperations;
  [(MSDHOperations *)&v3 dealloc];
}

- (MSDSignedManifest)signedManifest
{
  signedManifest = self->_signedManifest;
  if (!signedManifest)
  {
    [(MSDHOperations *)self updateSignedManifest];
    signedManifest = self->_signedManifest;
  }

  return signedManifest;
}

- (BOOL)updateSignedManifest
{
  v3 = os_transaction_create();
  [(MSDHOperations *)self setTransaction:v3];

  v4 = sub_100021268();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v10[0]) = 136315138;
    *(v10 + 4) = "[MSDHOperations updateSignedManifest]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s - Loading signed manifest.", v10, 0xCu);
  }

  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/MSDWorkContainer/Manifest.signed.plist"];

  if ((v6 & 1) == 0)
  {
    sub_10002F0CC();
LABEL_9:

    return 0;
  }

  v7 = [MSDSignedManifestFactory createSignedManifestFromManifestFile:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/MSDWorkContainer/Manifest.signed.plist"];
  signedManifest = self->_signedManifest;
  self->_signedManifest = v7;

  if (!self->_signedManifest)
  {
    sub_10002F174();
    goto LABEL_9;
  }

  return 1;
}

- (BOOL)prepareDirectory:(id)a3 writableByNonRoot:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = +[NSFileManager defaultManager];
  if ([v6 fileExistsAtPath:v5])
  {
    v7 = 0;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v20 = 0;
  v14 = [v6 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:&v20];
  v15 = v20;
  v9 = v15;
  if ((v14 & 1) == 0)
  {
    v13 = sub_100021268();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10002F21C();
    }

    goto LABEL_17;
  }

  v7 = v15;
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  v19 = v7;
  v8 = [v6 attributesOfItemAtPath:v5 error:&v19];
  v9 = v19;

  if (!v8)
  {
    v13 = sub_100021268();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10002F36C();
    }

LABEL_17:
    v11 = 0;
LABEL_18:

    v16 = 0;
    v7 = v9;
    goto LABEL_12;
  }

  v10 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v8 filePosixPermissions] | 0x3Fu);
  v11 = [NSDictionary dictionaryWithObjectsAndKeys:v10, NSFilePosixPermissions, 0];

  v18 = v9;
  v12 = [v6 setAttributes:v11 ofItemAtPath:v5 error:&v18];
  v7 = v18;

  if ((v12 & 1) == 0)
  {
    v13 = sub_100021268();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10002F2C4();
    }

    v9 = v7;
    goto LABEL_18;
  }

LABEL_11:
  v16 = 1;
LABEL_12:

  return v16;
}

- (BOOL)removeDirectory:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  if ([v4 fileExistsAtPath:v3])
  {
    v5 = [v4 removeItemAtPath:v3 error:0];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)createDeviceManifestForComponent:(id)a3 ofType:(id)a4 withRootPath:(id)a5 userHomePath:(id)a6 andSavePath:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(MSDHOperations *)self signedManifest];

  if (!v17)
  {
    v26 = sub_100021268();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10002F524();
    }

    goto LABEL_11;
  }

  v18 = [(MSDHOperations *)self signedManifest];
  v19 = [v18 getManifestDataFromSection:v13 forIdentifier:v12];

  if (!v19)
  {
    v26 = sub_100021268();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10002F494();
    }

LABEL_11:
    v19 = 0;
    v20 = 0;
    v21 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v20 = [[MSDManifest alloc] initWithDictionary:v19 andUserHomePath:v15];
  [(MSDManifest *)v20 setRootPath:v14];
  v21 = objc_alloc_init(MSDManifest);
  [(MSDManifest *)v21 setRootPath:v14];
  if (![(MSDManifest *)v21 addFilesUsingSourceManifest:v20])
  {
    v26 = sub_100021268();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10002F414();
    }

    goto LABEL_14;
  }

  v22 = [(MSDManifest *)v21 dict];
  v23 = [(MSDHOperations *)self writeDictionary:v22 toFile:v16];

  if ((v23 & 1) == 0)
  {
LABEL_15:
    v24 = 0;
    goto LABEL_6;
  }

  v24 = 1;
LABEL_6:

  return v24;
}

- (BOOL)writeDictionary:(id)a3 toFile:(id)a4
{
  v5 = a3;
  v6 = [NSOutputStream outputStreamToFileAtPath:a4 append:0];
  [v6 open];
  v10 = 0;
  v7 = [NSPropertyListSerialization writePropertyList:v5 toStream:v6 format:200 options:0 error:&v10];

  v8 = v10;
  [v6 close];

  if (v7 <= 0)
  {
    sub_10002F5A4(v8);
  }

  return v7 > 0;
}

- (BOOL)fileExistsAtPath:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  return v5;
}

- (id)readPlistFile:(id)a3
{
  v3 = a3;
  v4 = [NSURL fileURLWithPath:v3];
  v8 = 0;
  v5 = [NSDictionary dictionaryWithContentsOfURL:v4 error:&v8];
  v6 = v8;

  if (!v5)
  {
    sub_10002F64C(v3, v6);
  }

  return v5;
}

- (BOOL)touchFile:(id)a3 fileAttributes:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSFileManager defaultManager];
  v8 = v7;
  if (!v5)
  {
    v11 = sub_100021268();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10002F770();
    }

    goto LABEL_9;
  }

  if (([v7 createFileAtPath:v5 contents:0 attributes:v6] & 1) == 0)
  {
    v11 = sub_100021268();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10002F700();
    }

LABEL_9:

    v9 = 0;
    goto LABEL_4;
  }

  v9 = 1;
LABEL_4:

  return v9;
}

- (BOOL)deleteNvram:(id)a3
{
  v3 = a3;
  mainPort = 0;
  if (IOMasterPort(bootstrap_port, &mainPort))
  {
    sub_10002F7AC();
LABEL_9:
    v7 = 0;
    goto LABEL_6;
  }

  v4 = IORegistryEntryFromPath(mainPort, "IODeviceTree:/options");
  if (!v4)
  {
    sub_10002F864();
    goto LABEL_9;
  }

  v5 = v4;
  v6 = IORegistryEntrySetCFProperty(v4, @"IONVRAM-DELETE-PROPERTY", v3);
  v7 = v6 == 0;
  if (v6)
  {
    sub_10002F808();
  }

  IOObjectRelease(v5);
LABEL_6:

  return v7;
}

- (BOOL)writeNVRam:(id)a3 withValue:(id)a4
{
  v5 = a3;
  v6 = a4;
  mainPort = 0;
  v7 = 0;
  if ([(__CFString *)v5 isEqualToString:@"ownership-warning"])
  {
    if (IOMasterPort(bootstrap_port, &mainPort))
    {
      sub_10002F7AC();
    }

    else
    {
      v8 = IORegistryEntryFromPath(mainPort, "IODeviceTree:/options");
      if (v8)
      {
        v9 = v8;
        if (IORegistryEntrySetCFProperty(v8, v5, [v6 dataUsingEncoding:4]))
        {
          v11 = sub_100021268();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            sub_10002F8C0();
          }
        }

        else
        {
          if (!IORegistryEntrySetCFProperty(v9, @"IONVRAM-SYNCNOW-PROPERTY", v5))
          {
            v7 = 1;
LABEL_7:
            IOObjectRelease(v9);
            goto LABEL_8;
          }

          v11 = sub_100021268();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            sub_10002F8FC();
          }
        }

        v7 = 0;
        goto LABEL_7;
      }

      sub_10002F864();
    }

    v7 = 0;
  }

LABEL_8:

  return v7;
}

- (BOOL)manageDataVolume:(id)a3
{
  v3 = a3;
  v4 = +[MSDHVolumeManager sharedInstance];
  if ([v3 isEqualToString:@"CreateSnapshot"])
  {
    goto LABEL_2;
  }

  if ([v3 isEqualToString:@"DeleteSnapshot"])
  {
    v5 = @"DeleteSnapshot";
    goto LABEL_5;
  }

  if ([v3 isEqualToString:@"RevertSnapshot"])
  {
    if ([v4 manageSnapshot:@"RevertSnapshot" forVolumeAt:@"/private/var"])
    {
      v8 = objc_alloc_init(MSDHSnapshottedDataSaver);
      [(MSDHSnapshottedDataSaver *)v8 rescueDataToShelterFromSnapshottedVolumes];

      v6 = 1;
      goto LABEL_6;
    }

    goto LABEL_23;
  }

  if (![v3 isEqualToString:@"CommitSnapshot"])
  {
    if ([v3 isEqualToString:@"MountSnapshot"])
    {
      v9 = +[NSFileManager defaultManager];
      v17 = 0;
      v10 = [v9 createDirectoryAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.snapshot/private/var" withIntermediateDirectories:1 attributes:0 error:&v17];
      v11 = v17;
      v12 = v11;
      if (v10)
      {
        v6 = [v4 mountSnapshotAt:@"/private/var/mnt/com.apple.mobilestoredemo.snapshot/private/var" forVolumeAt:@"/private/var"];
      }

      else
      {
        sub_10002F9F0(v11);
        v6 = 0;
      }
    }

    else
    {
      if (![v3 isEqualToString:@"UnmountSnapshot"])
      {
        v15 = sub_100021268();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v19 = v3;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Unknown volume operation: %{public}@", buf, 0xCu);
        }

        goto LABEL_23;
      }

      v9 = +[NSFileManager defaultManager];
      v6 = [v4 unmountSnapshotAt:@"/private/var/mnt/com.apple.mobilestoredemo.snapshot/private/var"];
      v16 = 0;
      v13 = [v9 removeItemAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.snapshot" error:&v16];
      v14 = v16;
      v12 = v14;
      if ((v13 & 1) == 0)
      {
        sub_10002F938(v14);
      }
    }

    goto LABEL_6;
  }

  if (![v4 manageSnapshot:@"DeleteSnapshot" forVolumeAt:@"/private/var"])
  {
LABEL_23:
    v6 = 0;
    goto LABEL_6;
  }

LABEL_2:
  v5 = @"CreateSnapshot";
LABEL_5:
  v6 = [v4 manageSnapshot:v5 forVolumeAt:@"/private/var"];
LABEL_6:

  return v6;
}

- (BOOL)manageDemoVolume:(id)a3
{
  v3 = a3;
  v4 = +[MSDHVolumeManager sharedInstance];
  if ([v3 isEqualToString:@"Setup"])
  {
    v5 = [v4 setupDemoVolume];
LABEL_5:
    v6 = v5;
    goto LABEL_9;
  }

  if ([v3 isEqualToString:@"Delete"])
  {
    v5 = [v4 deleteDemoVolume];
    goto LABEL_5;
  }

  v7 = sub_100021268();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unknown volume operation: %{public}@", &v9, 0xCu);
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (BOOL)manageUserVolume:(id)a3 forUser:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[MSDHVolumeManager sharedInstance];
  if (!v6)
  {
    v8 = sub_100021268();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10002FBB0();
    }

    goto LABEL_23;
  }

  if (([(__CFString *)v5 isEqualToString:@"CreateSnapshot"]& 1) == 0 && ([(__CFString *)v5 isEqualToString:@"DeleteSnapshot"]& 1) == 0 && ![(__CFString *)v5 isEqualToString:@"RevertSnapshot"])
  {
    if ([(__CFString *)v5 isEqualToString:@"CommitSnapshot"])
    {
      v8 = [v7 userHomePath];
      if (v8)
      {
        if ([v7 manageSnapshot:@"DeleteSnapshot" forVolumeAt:v8])
        {
          v10 = @"CreateSnapshot";
          v9 = v7;
          goto LABEL_7;
        }

LABEL_23:
        v11 = 0;
        goto LABEL_8;
      }

LABEL_26:
      sub_10002FB18();
      goto LABEL_23;
    }

    if ([(__CFString *)v5 isEqualToString:@"MountSnapshot"])
    {
      v8 = [v7 userHomePath];
      if (v8)
      {
        v13 = [@"/private/var/mnt/com.apple.mobilestoredemo.snapshot/private/var" stringByAppendingPathComponent:v6];
        v14 = [v7 mountSnapshotAt:v13 forVolumeAt:v8];
LABEL_19:
        v11 = v14;
LABEL_20:

        goto LABEL_8;
      }

      v13 = sub_100021268();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
LABEL_31:
        sub_10002FAA8();
      }
    }

    else
    {
      if (![(__CFString *)v5 isEqualToString:@"UnmountSnapshot"])
      {
        v8 = sub_100021268();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 138543362;
          v16 = v5;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unknown volume operation: %{public}@", &v15, 0xCu);
        }

        goto LABEL_23;
      }

      v8 = [v7 userHomePath];
      if (v8)
      {
        v13 = [@"/private/var/mnt/com.apple.mobilestoredemo.snapshot/private/var" stringByAppendingPathComponent:v6];
        v14 = [v7 unmountSnapshotAt:v13];
        goto LABEL_19;
      }

      v13 = sub_100021268();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }
    }

    v11 = 0;
    goto LABEL_20;
  }

  v8 = [v7 userHomePath];
  if (!v8)
  {
    goto LABEL_26;
  }

  v9 = v7;
  v10 = v5;
LABEL_7:
  v11 = [v9 manageSnapshot:v10 forVolumeAt:v8];
LABEL_8:

  return v11;
}

- (BOOL)prepareWorkContainerInUserHome:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = @"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata";
  }

  else
  {
    v6 = +[MSDHVolumeManager sharedInstance];
    v5 = [v6 userHomePath];
  }

  v7 = [(__CFString *)v5 stringByAppendingPathComponent:@"/.MSDWorkContainer"];
  v39 = [v7 stringByAppendingPathComponent:@"/MSD_staging"];
  v38 = [v7 stringByAppendingPathComponent:@"/MSD_secondary_staging"];
  v37 = [v7 stringByAppendingPathComponent:@"/MSD_stashed_staging"];
  v36 = [v7 stringByAppendingPathComponent:@"/.backup"];
  v8 = +[NSMutableArray array];
  v9 = +[NSMutableArray array];
  v40 = +[NSFileManager defaultManager];
  v60[0] = NSFileOwnerAccountName;
  v60[1] = NSFileGroupOwnerAccountName;
  v61[0] = @"mobile";
  v61[1] = @"mobile";
  v60[2] = NSFilePosixPermissions;
  v10 = [NSNumber numberWithShort:448];
  v61[2] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:3];

  v12 = sub_100021268();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v57 = "[MSDHOperations prepareWorkContainerInUserHome:]";
    v58 = 2114;
    v59 = v7;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: %{public}@", buf, 0x16u);
  }

  v35 = v7;
  if (v3)
  {
    v55[0] = v7;
    v13 = v38;
    v55[1] = v39;
    v55[2] = v38;
    v14 = v37;
    v55[3] = v37;
    v15 = [NSArray arrayWithObjects:v55 count:4];
    [v8 addObjectsFromArray:v15];

    v54 = v39;
    v16 = &v54;
  }

  else
  {
    v53[0] = v7;
    v13 = v38;
    v53[1] = v39;
    v53[2] = v38;
    v14 = v36;
    v53[3] = v36;
    v17 = [NSArray arrayWithObjects:v53 count:4];
    [v8 addObjectsFromArray:v17];

    v52 = v39;
    v16 = &v52;
  }

  v16[1] = v13;
  v16[2] = v14;
  v18 = [NSArray arrayWithObjects:"arrayWithObjects:count:" count:?];
  [v9 addObjectsFromArray:v18];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v19 = v9;
  v20 = [v19 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v47;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v47 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(MSDHOperations *)self removeDirectory:*(*(&v46 + 1) + 8 * i)];
      }

      v21 = [v19 countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v21);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v24 = v8;
  v25 = [v24 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v25)
  {
    v26 = v25;
    v34 = v5;
    v27 = 0;
    v28 = *v43;
    while (2)
    {
      v29 = 0;
      v30 = v27;
      do
      {
        if (*v43 != v28)
        {
          objc_enumerationMutation(v24);
        }

        v31 = *(*(&v42 + 1) + 8 * v29);
        v41 = v30;
        v32 = [v40 createDirectoryAtPath:v31 withIntermediateDirectories:1 attributes:v11 error:{&v41, v34, v35}];
        v27 = v41;

        if ((v32 & 1) == 0)
        {
          sub_10002FBEC(v31, v27);
          goto LABEL_27;
        }

        v29 = v29 + 1;
        v30 = v27;
      }

      while (v26 != v29);
      v26 = [v24 countByEnumeratingWithState:&v42 objects:v50 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }

LABEL_27:

    v5 = v34;
    v13 = v38;
  }

  else
  {
    v32 = 1;
  }

  return v32;
}

- (BOOL)destroyWorkContainerInUserHome
{
  v3 = +[MSDHVolumeManager sharedInstance];
  v4 = [v3 userHomePath];

  v5 = [v4 stringByAppendingPathComponent:@"/.MSDWorkContainer"];
  v6 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata" stringByAppendingPathComponent:@"/.MSDWorkContainer"];
  if (![(MSDHOperations *)self removeDirectory:v5])
  {
    v9 = sub_100021268();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (![(MSDHOperations *)self removeDirectory:v6])
  {
    v9 = sub_100021268();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_8:
      sub_10002FCA0();
    }

LABEL_9:

    v7 = 0;
    goto LABEL_4;
  }

  v7 = 1;
LABEL_4:

  return v7;
}

- (BOOL)moveUserHomeStagingToFinal:(id)a3 finalPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[NSFileManager defaultManager];
  v9 = +[MSDHVolumeManager sharedInstance];
  v10 = [v9 userHomePath];

  v11 = [v7 stringByAppendingPathComponent:v10];

  v32 = 0;
  v12 = [v8 attributesOfItemAtPath:v11 error:&v32];
  v13 = v32;
  if (v12)
  {
    v14 = [v12 fileType];
    v15 = [v14 isEqualToString:NSFileTypeSymbolicLink];

    if (v15)
    {
      v16 = [(MSDHOperations *)self getPathInUserHomeDirectory:v6];
      v31 = v13;
      v17 = [v8 destinationOfSymbolicLinkAtPath:v11 error:&v31];
      v18 = v31;

      v19 = sub_100021268();
      v20 = v19;
      if (v17)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v34 = v11;
          v35 = 2114;
          v36 = v17;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Found valid wormhole in staging from %{public}@ to %{public}@", buf, 0x16u);
        }

        if (![(MSDHOperations *)self moveStagingToFinal:v17 finalPath:v16])
        {
          goto LABEL_28;
        }

        v21 = sub_100021268();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v34 = v11;
          v35 = 2114;
          v36 = v16;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Creating new wormhole in staging from %{public}@ to %{public}@", buf, 0x16u);
        }

        v30 = v18;
        v22 = [v8 removeItemAtPath:v11 error:&v30];
        v23 = v30;

        if (v22)
        {
          v29 = v23;
          v24 = [v8 createSymbolicLinkAtPath:v11 withDestinationPath:v16 error:&v29];
          v18 = v29;

          if (v24)
          {

            v25 = 1;
LABEL_12:
            v13 = v18;
            goto LABEL_16;
          }

          v20 = sub_100021268();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v28 = [v18 localizedDescription];
            *buf = 138543874;
            v34 = v11;
            v35 = 2114;
            v36 = v16;
            v37 = 2114;
            v38 = v28;
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Cannot create symlink from %{public}@ to %{public}@ - %{public}@", buf, 0x20u);
          }
        }

        else
        {
          v20 = sub_100021268();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_10002FD10();
          }

          v18 = v23;
        }
      }

      else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10002FDA4();
      }

LABEL_28:
      v25 = 0;
      goto LABEL_12;
    }

    v16 = sub_100021268();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v12 fileType];
      *buf = 138543618;
      v34 = v11;
      v35 = 2114;
      v36 = v26;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Wormhole in staging %{public}@ has unexpected file type - %{public}@", buf, 0x16u);
    }

    v25 = 1;
  }

  else
  {
    v16 = sub_100021268();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10002FE38();
    }

    v25 = 0;
  }

LABEL_16:

  return v25;
}

- (BOOL)disableLaunchdServicesForWatch
{
  v2 = [NSArray arrayWithObjects:@"com.apple.atc", @"com.apple.eventkitsyncd", @"com.apple.imautomatichistorydeletionagent", 0];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        [v7 UTF8String];
        service_enabled = launch_get_service_enabled();
        if (service_enabled)
        {
          v9 = service_enabled;
          v10 = sub_100021268();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v17 = v7;
            v18 = 1024;
            v19 = v9;
            _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to get status for launchd service '%{public}@' with error - %d", buf, 0x12u);
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v4);
  }

  return 1;
}

- (BOOL)moveStagingToFinal:(id)a3 finalPath:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v35 = v6;
  v44 = 0;
  v8 = +[NSFileManager defaultManager];
  v9 = sub_100021268();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v47 = "[MSDHOperations moveStagingToFinal:finalPath:]";
    v48 = 2114;
    v49 = v5;
    v50 = 2114;
    v51 = v35;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s - stagingPath:  %{public}@ - finalPath:  %{public}@", buf, 0x20u);
  }

  if (![v8 fileExistsAtPath:v5 isDirectory:&v44] || (v44 & 1) == 0)
  {
    obj = sub_100021268();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      sub_10002FECC();
    }

    v24 = 0;
    goto LABEL_36;
  }

  v33 = v5;
  if ([v8 fileExistsAtPath:v35])
  {
    [v8 enumeratorAtPath:v5];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v43 = 0u;
    v10 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v10)
    {
      v11 = v10;
      v34 = 0;
      v12 = *v41;
      v32 = v8;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v41 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v40 + 1) + 8 * i);
          v15 = objc_autoreleasePoolPush();
          v16 = [v7 stringByAppendingPathComponent:v14];
          if ([v8 fileExistsAtPath:v16])
          {
            v17 = [v35 stringByAppendingPathComponent:v14];
            v18 = [v17 stringByDeletingLastPathComponent];
            if (([v8 fileExistsAtPath:v17] & 1) == 0 && objc_msgSend(v8, "fileExistsAtPath:", v18))
            {
              v19 = sub_100021268();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543618;
                v47 = v16;
                v48 = 2114;
                v49 = v17;
                _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Moving %{public}@ to %{public}@", buf, 0x16u);
              }

              v39 = v34;
              v20 = [v8 moveItemAtPath:v16 toPath:v17 error:&v39];
              v21 = v39;

              if ((v20 & 1) == 0)
              {
                v28 = sub_100021268();
                v24 = v21;
                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  v30 = [v21 localizedDescription];
                  *buf = 138543874;
                  v47 = v16;
                  v48 = 2114;
                  v49 = v17;
                  v50 = 2114;
                  v51 = v30;
                  _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Cannot move %{public}@ to %{public}@ - %{public}@", buf, 0x20u);
                }

                objc_autoreleasePoolPop(v15);
                v29 = obj;
                v8 = v32;
                v7 = v33;
                goto LABEL_35;
              }

              v34 = v21;
              v8 = v32;
              v7 = v33;
            }
          }

          objc_autoreleasePoolPop(v15);
        }

        v11 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v34 = 0;
    }

    v38 = v34;
    v26 = [v8 removeItemAtPath:v7 error:&v38];
    v24 = v38;

    if (v26)
    {
      v25 = 1;
LABEL_29:
      v7 = v33;
LABEL_30:

      goto LABEL_31;
    }

    v29 = sub_100021268();
    v7 = v33;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10002FF3C();
    }

LABEL_35:

    goto LABEL_36;
  }

  v22 = sub_100021268();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v47 = v5;
    v48 = 2114;
    v49 = v35;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Moving %{public}@ to %{public}@", buf, 0x16u);
  }

  v37 = 0;
  v23 = [v8 moveItemAtPath:v5 toPath:v35 error:&v37];
  v24 = v37;
  if ((v23 & 1) == 0)
  {
    obj = sub_100021268();
    if (!os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      v25 = 0;
      goto LABEL_29;
    }

    v31 = [v24 localizedDescription];
    *buf = 138543874;
    v47 = v5;
    v48 = 2114;
    v49 = v35;
    v50 = 2114;
    v51 = v31;
    _os_log_error_impl(&_mh_execute_header, obj, OS_LOG_TYPE_ERROR, "Could not move %{public}@ to %{public}@ with error - %{public}@", buf, 0x20u);

    v7 = v5;
LABEL_36:
    v25 = 0;
    goto LABEL_30;
  }

  v25 = 1;
  v7 = v5;
LABEL_31:

  return v25;
}

- (BOOL)switchToBackupFolder
{
  v2 = sub_100021268();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v31 = @"/private/var/.backup";
    v32 = 2114;
    v33 = @"/private/var/backup";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Renaming %{public}@ to %{public}@...", buf, 0x16u);
  }

  v3 = [@"/private/var/.backup" fileSystemRepresentation];
  v4 = [@"/private/var/backup" fileSystemRepresentation];
  rename(v3, v4, v5);
  if (!v6)
  {
    v7 = +[NSFileManager defaultManager];
    v9 = +[MSDHVolumeManager sharedInstance];
    v10 = [v9 userHomePath];

    v11 = [v10 stringByAppendingPathComponent:@"/backup"];
    v12 = [v11 stringByAppendingPathComponent:v10];
    v13 = [@"/private/var/backup" stringByAppendingPathComponent:v10];
    v29 = 0;
    v14 = [v7 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:&v29];
    v15 = v29;
    v16 = v15;
    if ((v14 & 1) == 0)
    {
      v20 = sub_100021268();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100030058();
      }

      v17 = 0;
      goto LABEL_21;
    }

    v28 = v15;
    v17 = [v7 destinationOfSymbolicLinkAtPath:v13 error:&v28];
    v18 = v28;

    v19 = sub_100021268();
    v20 = v19;
    if (v17)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v31 = v17;
        v32 = 2114;
        v33 = v12;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Renaming %{public}@ to %{public}@...", buf, 0x16u);
      }

      v21 = [(__CFString *)v17 fileSystemRepresentation];
      v22 = [(__CFString *)v12 fileSystemRepresentation];
      rename(v21, v22, v23);
      if (!v24)
      {
        v27 = v18;
        v26 = [v7 removeItemAtPath:v13 error:&v27];
        v16 = v27;

        if (v26)
        {
          v8 = 1;
          goto LABEL_22;
        }

        v20 = sub_100021268();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_100030174();
        }

LABEL_21:

        v8 = 0;
LABEL_22:

        goto LABEL_23;
      }

      v20 = sub_100021268();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000300EC();
      }
    }

    else
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100030208();
      }

      v17 = 0;
    }

    v16 = v18;
    goto LABEL_21;
  }

  v7 = sub_100021268();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10002FFD0();
  }

  v8 = 0;
LABEL_23:

  return v8;
}

- (BOOL)reboot
{
  if (reboot3())
  {
    v2 = sub_100021268();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10003029C();
    }
  }

  return 0;
}

- (BOOL)restoreBackupAttributesUnder:(id)a3 range:(_NSRange)a4 manifestUID:(id)a5 deviceUID:(id)a6
{
  length = a4.length;
  location = a4.location;
  v11 = a3;
  v12 = a6;
  v13 = a5;
  v14 = [[MSDHFileMetadataRestore alloc] initWithManifestUID:v13 deviceUID:v12];

  if (!v14)
  {
    v20 = sub_100021268();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10003040C();
    }

    goto LABEL_13;
  }

  v15 = [(MSDHOperations *)self signedManifest];

  if (!v15)
  {
    v20 = sub_100021268();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10003038C();
    }

    goto LABEL_13;
  }

  v16 = [(MSDHOperations *)self signedManifest];
  v17 = [v16 mergedBackupManifest:{location, length}];

  if (!v17)
  {
    v20 = sub_100021268();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100030310();
    }

LABEL_13:

    v17 = 0;
    goto LABEL_14;
  }

  if (![(MSDHFileMetadataRestore *)v14 restoreAttributesUnder:v11 fromManifestData:v17])
  {
LABEL_14:
    v18 = 0;
    goto LABEL_6;
  }

  v18 = 1;
LABEL_6:

  return v18;
}

- (BOOL)restoreAppDataAttributesUnder:(id)a3 containerType:(id)a4 identifier:(id)a5 manifestUID:(id)a6 deviceUID:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = a6;
  v17 = [[MSDHFileMetadataRestore alloc] initWithManifestUID:v16 deviceUID:v15];

  if (!v17)
  {
    v20 = sub_100021268();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100030544();
    }

    goto LABEL_12;
  }

  v18 = [(MSDHOperations *)self signedManifest];

  if (!v18)
  {
    v20 = sub_100021268();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000304C4();
    }

    goto LABEL_12;
  }

  v19 = [(MSDHOperations *)self signedManifest];
  v20 = [v19 getManifestDataFromSection:v13 forIdentifier:v14];

  if (!v20)
  {
    v20 = sub_100021268();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100030448();
    }

LABEL_12:
    v21 = 0;
    goto LABEL_5;
  }

  v21 = [(MSDHFileMetadataRestore *)v17 restoreAttributesUnder:v12 fromManifestData:v20];
LABEL_5:

  return v21;
}

- (BOOL)collectDemoLogsToFolder:(id)a3 ofType:(unint64_t)a4
{
  v6 = a3;
  v7 = +[NSFileManager defaultManager];
  v8 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata" stringByAppendingPathComponent:v6];

  if ([v7 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/DekotaLogs.tar.gz"])
  {
    v36 = 0;
    v9 = [v7 removeItemAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/DekotaLogs.tar.gz" error:&v36];
    v10 = v36;
    v11 = v10;
    if ((v9 & 1) == 0)
    {
      v16 = sub_100021268();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100030580();
      }

      goto LABEL_43;
    }

    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  if ([v7 fileExistsAtPath:v8])
  {
    v35 = v12;
    v13 = [v7 removeItemAtPath:v8 error:&v35];
    v11 = v35;

    if ((v13 & 1) == 0)
    {
      v16 = sub_100021268();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000305BC();
      }

      goto LABEL_43;
    }

    v12 = v11;
  }

  v34 = v12;
  v14 = [v7 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v34];
  v11 = v34;

  if ((v14 & 1) == 0)
  {
    v16 = sub_100021268();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000305F8();
    }

    goto LABEL_43;
  }

  v15 = MGCopyAnswer();
  if (v15)
  {
    v16 = v15;
    v17 = [v15 objectForKey:kMGQDiskUsageAmountDataAvailable];
    if ([v7 fileExistsAtPath:@"/var/logs/demod/demod-finish-demo-restore.log"])
    {
      v18 = [v8 stringByAppendingPathComponent:@"demod-finish-demo-restore.log"];
      v33 = v11;
      v19 = [v7 copyItemAtPath:@"/var/logs/demod/demod-finish-demo-restore.log" toPath:v18 error:&v33];
      v20 = v33;

      if ((v19 & 1) == 0)
      {
        sub_100030634(v17);
        v31 = 0;
        v11 = v20;
        goto LABEL_24;
      }

      v11 = v20;
    }

    if (a4 == 1)
    {
      if (v17 && [v17 longLongValue] > 524288000)
      {
        if ([(MSDHOperations *)self generateSysdiagnose:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata"])
        {
          v21 = 0;
LABEL_23:
          v37[0] = NSFileOwnerAccountName;
          v37[1] = NSFileGroupOwnerAccountName;
          v38[0] = @"mobile";
          v38[1] = @"mobile";
          v37[2] = NSFilePosixPermissions;
          v29 = [NSNumber numberWithShort:448];
          v38[2] = v29;
          v30 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:3];

          [v7 changeFileAttributes:v30 atPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/DekotaLogs.tar.gz"];
          v31 = 1;
          v16 = v30;
          goto LABEL_24;
        }

        sub_100030884(v17);
        goto LABEL_43;
      }
    }

    else if (v17 && [v17 longLongValue] > 52428800)
    {
      v22 = [v8 stringByAppendingPathComponent:@"demod.log"];
      v23 = [(MSDHOperations *)self generateLogsForPredicate:@"subsystem == 'com.apple.MobileStoreDemo'" toFile:v22];

      if (v23)
      {
        v24 = [v8 stringByAppendingPathComponent:@"demoloop.log"];
        v25 = [(MSDHOperations *)self generateLogsForPredicate:@"subsystem == 'com.apple.ist.dcota'" toFile:v24];

        if (v25)
        {
          v21 = objc_alloc_init(MSDFileArchiver);
          v26 = [NSURL URLWithString:v8];
          v27 = [NSURL URLWithString:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/DekotaLogs.tar.gz"];
          v28 = [(MSDFileArchiver *)v21 compressContent:v26 toPath:v27];

          if (v28)
          {
            goto LABEL_23;
          }

          sub_100030760(v21, v17);
        }

        else
        {
          sub_1000306FC(v17);
        }
      }

      else
      {
        sub_100030698(v17);
      }

      goto LABEL_43;
    }

    sub_1000307E4(v17);
LABEL_43:
    v31 = 0;
    goto LABEL_24;
  }

  v16 = sub_100021268();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_1000308E8();
  }

  v31 = 1;
LABEL_24:

  if ([v7 fileExistsAtPath:v8])
  {
    [v7 removeItemAtPath:v8 error:0];
  }

  return v31;
}

- (BOOL)generateLogsForPredicate:(id)a3 toFile:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSFileManager defaultManager];
  v8 = +[OSLogEventStore localStore];
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_10001B870;
  v39 = sub_10001B880;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v9 = dispatch_semaphore_create(0);
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_10001B870;
  v29 = sub_10001B880;
  v30 = 0;
  [v7 createFileAtPath:v6 contents:0 attributes:0];
  v10 = [NSFileHandle fileHandleForWritingAtPath:v6];
  v11 = v26[5];
  v26[5] = v10;

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10001B888;
  v19[3] = &unk_100051098;
  v22 = &v35;
  v12 = v5;
  v20 = v12;
  v23 = &v31;
  v13 = v9;
  v21 = v13;
  v24 = &v25;
  [v8 prepareWithCompletionHandler:v19];
  v14 = dispatch_time(0, 600000000000);
  if (dispatch_semaphore_wait(v13, v14))
  {
    v15 = sub_100021268();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Request to collect MobileStoreDemo logs timed out.", v18, 2u);
    }

    [v36[5] invalidate];
  }

  [v26[5] closeFile];
  v16 = *(v32 + 24);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);

  return v16;
}

- (BOOL)preserveBluetoothFileToShelter:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v5 = sub_100021268();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, ">>> Copying item from '%{public}@'", buf, 0xCu);
  }

  if ([v4 fileExistsAtPath:v3])
  {
    v6 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/BluetoothShelter" stringByAppendingPathComponent:v3];
    v7 = [v6 stringByDeletingLastPathComponent];
    v14 = 0;
    v8 = [v4 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v14];
    v9 = v14;
    if (v8)
    {
      if ([v4 cloneFile:v3 to:v6 expectingHash:0 correctOwnership:0])
      {
        v10 = [MSDXattr setContentRoot:v6];

        goto LABEL_7;
      }

      v12 = sub_100021268();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [v9 localizedDescription];
        *buf = 138543874;
        v16 = v3;
        v17 = 2114;
        v18 = v6;
        v19 = 2114;
        v20 = v13;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to copy item from %{public}@ to %{public}@ with error - %{public}@", buf, 0x20u);
      }
    }

    else
    {
      sub_100030994(v7, v9, v6);
    }

    v10 = 0;
    goto LABEL_7;
  }

  v9 = sub_100021268();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_100030924();
  }

  v10 = 1;
LABEL_7:

  return v10;
}

- (BOOL)runPreflightChecksOnSecondPartyAppData:(id)a3 withReturnErrorMsg:(id *)a4
{
  v5 = a3;
  v23 = 0;
  v6 = +[NSFileManager defaultManager];
  v7 = objc_alloc_init(MSDHSnapshottedDataSaver);
  if (![v6 fileExistsAtPath:v5 isDirectory:&v23] || (v23 & 1) == 0)
  {
    [NSString stringWithFormat:@"App data folder does not exist or is not a folder:  %@", v5, v21, v22];
    goto LABEL_9;
  }

  v8 = [(MSDHSnapshottedDataSaver *)v7 getFileSizeForItemAtPath:v5];
  v9 = sub_100021268();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_100030A5C();
  }

  if (v8 == -1)
  {
    [NSString stringWithFormat:@"Failed to calculate size of source data:  %@", v5, v21, v22];
    goto LABEL_9;
  }

  if (v8 > 0x280000000)
  {
    [NSString stringWithFormat:@"Size of source data:  %lld at:  %@ exceeds max size of:  %llu", v8, v5, 0x280000000];
    v10 = LABEL_9:;
    v11 = 0;
    goto LABEL_10;
  }

  if (![(MSDHSnapshottedDataSaver *)v7 canDeviceHaveEnoughSpaceForItemDomainWithSize:v8])
  {
    [NSString stringWithFormat:@"Device does not have enough space to preserve data - Data size:  %lld", v8, v21, v22];
    goto LABEL_9;
  }

  if ([v6 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/SecondPartyAppDataShelter"])
  {
    v16 = [(MSDHSnapshottedDataSaver *)v7 getFileSizeForItemAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/SecondPartyAppDataShelter"];
    if (v16 == -1)
    {
      v11 = 0;
      v10 = @"Failed to calculate current size of second party app data shelter.";
      goto LABEL_10;
    }

    v17 = v16;
    v18 = sub_100021268();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_100030AC4();
    }

    v11 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/SecondPartyAppDataShelter" stringByAppendingPathComponent:v5];
    if ([v6 fileExistsAtPath:v11])
    {
      v19 = [(MSDHSnapshottedDataSaver *)v7 getFileSizeForItemAtPath:v11];
      if (v19 == -1)
      {
        v10 = @"Failed to calculate size of existing second party app data";
        goto LABEL_10;
      }

      v17 -= v19;
    }
  }

  else
  {
    v17 = 0;
    v11 = 0;
  }

  v20 = sub_100021268();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sub_100030B2C();
  }

  if (&v8[v17] <= 0x280000000)
  {
    v14 = 1;
    goto LABEL_16;
  }

  v10 = [NSString stringWithFormat:@"The current size of the second-party data shelter is %llu.  Saving this data of size %lld bytes will cause it to exceed the data cap of %lld bytes.", v17, v8, 0x280000000];
LABEL_10:
  if (a4 && v10)
  {
    v12 = v10;
    *a4 = v10;
  }

  v13 = sub_100021268();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_100030B94();
  }

  v14 = 0;
LABEL_16:

  return v14;
}

- (BOOL)preserveSecondPartyAppDataToShelter:(id)a3 withReturnErrorMsg:(id *)a4
{
  v6 = a3;
  v7 = +[NSFileManager defaultManager];
  v30 = 0;
  v8 = [(MSDHOperations *)self runPreflightChecksOnSecondPartyAppData:v6 withReturnErrorMsg:&v30];
  v9 = v30;
  if (!v8)
  {
    v10 = 0;
    v15 = 0;
    v20 = 0;
    goto LABEL_16;
  }

  v10 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/SecondPartyAppDataShelter" stringByAppendingPathComponent:v6];
  if ([v7 fileExistsAtPath:v10])
  {
    v29 = 0;
    v11 = [v7 removeItemAtPath:v10 error:&v29];
    v12 = v29;
    v13 = v12;
    if ((v11 & 1) == 0)
    {
      v18 = [v12 localizedDescription];
      v19 = [NSString stringWithFormat:@"Failed to delete destination folder in persitent storage - Error:  %@", v18];

      v15 = 0;
      goto LABEL_14;
    }

    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  v15 = [v10 stringByDeletingLastPathComponent];
  if ([v7 fileExistsAtPath:v10])
  {
    v13 = v14;
LABEL_9:
    if ([v7 cloneFile:v6 to:v10 expectingHash:0 correctOwnership:0])
    {
      if ([MSDXattr setContentRoot:v10])
      {
        v17 = 1;
        goto LABEL_28;
      }

      sub_100030C68(buf);
    }

    else
    {
      sub_100030C04(v6, buf);
    }

    v19 = *buf;
    goto LABEL_15;
  }

  v28 = v14;
  v16 = [v7 createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:0 error:&v28];
  v13 = v28;

  if (v16)
  {
    goto LABEL_9;
  }

  v18 = [v13 localizedDescription];
  v19 = [NSString stringWithFormat:@"Failed to create parent destination folder in persistent storage - Error:  %@", v18];

LABEL_14:
  v9 = v18;
LABEL_15:

  v9 = v19;
  v20 = v13;
LABEL_16:
  if ([v7 fileExistsAtPath:v10])
  {
    v27 = v20;
    v21 = [v7 removeItemAtPath:v10 error:&v27];
    v13 = v27;

    if ((v21 & 1) == 0)
    {
      v22 = sub_100021268();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v13 localizedDescription];
        *buf = 138412546;
        *&buf[4] = v10;
        v32 = 2112;
        v33 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Failed to remove folder:  %@ - Error:  %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v13 = v20;
  }

  if (a4 && v9)
  {
    v24 = v9;
    *a4 = v9;
  }

  v25 = sub_100021268();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    sub_100030B94();
  }

  v17 = 0;
LABEL_28:

  return v17;
}

- (BOOL)restartBluetooth
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v2 = off_10005BF50;
  v8 = off_10005BF50;
  if (!off_10005BF50)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10001CBB0;
    v4[3] = &unk_1000510C0;
    v4[4] = &v5;
    sub_10001CBB0(v4);
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v2)
  {
    sub_100030D5C();
    goto LABEL_7;
  }

  LODWORD(v2) = v2(@"bluetoothd", 0, @"Restarting bluetoothd to restore bluetooth pairing record for DeKOTA devices.");
  if (v2)
  {
LABEL_7:
    sub_100030CC0();
  }

  return v2 == 0;
}

- (BOOL)setComputerNameAndHostname:(id)a3 encoding:(unsigned int)a4
{
  v5 = a3;
  v6 = sub_100021268();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 136315650;
    *&v14[4] = "[MSDHOperations setComputerNameAndHostname:encoding:]";
    v15 = 2114;
    v16 = v5;
    v17 = 1026;
    v18 = a4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s - computerName:  %{public}@ - encoding:  0x%{public}x", v14, 0x1Cu);
  }

  v7 = SCPreferencesCreate(0, @"demod_helper:setComputerName", 0);
  if (!v7)
  {
    sub_1000310A0();
LABEL_18:
    v12 = 0;
    goto LABEL_13;
  }

  v8 = v7;
  if (!SCPreferencesSetComputerName(v7, v5, a4))
  {
    sub_100031008();
LABEL_17:

    CFRelease(v8);
    goto LABEL_18;
  }

  v9 = _CSCopyLocalHostnameForComputerName();
  v10 = sub_100021268();
  v11 = v10;
  if (!v9)
  {
    sub_100030FB0(v10, v14);
    goto LABEL_17;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100030D80();
  }

  if (!SCPreferencesSetLocalHostName(v8, v9))
  {
    sub_100030F18();
LABEL_22:

    v12 = 0;
    goto LABEL_12;
  }

  if (!SCPreferencesCommitChanges(v8))
  {
    sub_100030E80();
    goto LABEL_22;
  }

  if (!SCPreferencesApplyChanges(v8))
  {
    sub_100030DE8();
    goto LABEL_22;
  }

  v12 = 1;
LABEL_12:
  CFRelease(v8);
  CFRelease(v9);
LABEL_13:

  return v12;
}

- (id)getPathInUserHomeDirectory:(id)a3
{
  v3 = a3;
  v4 = +[MSDHVolumeManager sharedInstance];
  v5 = [v4 userHomePath];

  if ([v3 hasPrefix:@"/var/MSDWorkContainer"])
  {
    v6 = [v5 stringByAppendingPathComponent:@"/.MSDWorkContainer"];
    v7 = @"/var/MSDWorkContainer";
LABEL_5:
    v8 = [v3 substringFromIndex:{-[__CFString length](v7, "length")}];
    goto LABEL_7;
  }

  if ([v3 hasPrefix:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/MSDWorkContainer"])
  {
    v6 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata" stringByAppendingPathComponent:@"/.MSDWorkContainer"];
    v7 = @"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/MSDWorkContainer";
    goto LABEL_5;
  }

  v6 = [v5 stringByAppendingPathComponent:@"/.MSDWorkContainer"];
  v8 = [v3 lastPathComponent];
LABEL_7:
  v9 = v8;
  v10 = [v6 stringByAppendingPathComponent:v8];

  return v10;
}

- (BOOL)setPreferencesForKey:(id)a3 withValue:(id)a4 forApplication:(id)a5 andUser:(id)a6
{
  v9 = a6;
  v10 = a5;
  CFPreferencesSetValue(a3, a4, v10, v9, kCFPreferencesAnyHost);
  v11 = CFPreferencesSynchronize(v10, v9, kCFPreferencesAnyHost);

  if (!v11)
  {
    sub_100031138();
  }

  return v11 != 0;
}

- (BOOL)generateSysdiagnose:(id)a3
{
  v3 = a3;
  v12[0] = @"baseDirectory";
  v12[1] = @"archiveName";
  v13[0] = v3;
  v13[1] = @"DekotaLogs";
  v12[2] = @"shouldCreateTarBall";
  v13[2] = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
  v9 = 0;
  v5 = [Libsysdiagnose sysdiagnoseWithMetadata:v4 withError:&v9];
  v6 = v9;
  if (v6)
  {
    v7 = sub_100021268();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Collected sysdiagnose log with error %@", buf, 0xCu);
    }
  }

  return v6 == 0;
}

- (BOOL)migratePreferencesFile
{
  v2 = +[NSFileManager defaultManager];
  v3 = [@"/var/root/Library/Preferences/" stringByAppendingPathComponent:@"com.apple.MobileStoreDemo.plist"];
  v4 = [@"/var/mobile/Library/Preferences/" stringByAppendingPathComponent:@"com.apple.MobileStoreDemo.plist"];
  if (![v2 fileExistsAtPath:v3] || (objc_msgSend(v2, "fileExistsAtPath:", v4) & 1) != 0)
  {
    v7 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  v15 = 0;
  v5 = [v2 moveItemAtPath:v3 toPath:v4 error:&v15];
  v6 = v15;
  if ((v5 & 1) == 0)
  {
    v12 = sub_100021268();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v19 = v3;
      v20 = 2114;
      v21 = v4;
      sub_100005E70(&_mh_execute_header, v12, v13, "Couldn't move %{public}@ to %{public}@", buf);
    }

    v7 = 0;
    goto LABEL_14;
  }

  v16[0] = NSFileOwnerAccountName;
  v16[1] = NSFileGroupOwnerAccountName;
  v17[0] = @"mobile";
  v17[1] = @"mobile";
  v7 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  v14 = v6;
  v8 = [v2 setAttributes:v7 ofItemAtPath:v4 error:&v14];
  v9 = v14;

  if ((v8 & 1) == 0)
  {
    v12 = sub_100021268();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = v4;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Couldn't change ownership for %{public}@", buf, 0xCu);
    }

    v6 = v9;
LABEL_14:

    v10 = 0;
    v9 = v6;
    goto LABEL_6;
  }

  v10 = 1;
LABEL_6:

  return v10;
}

@end