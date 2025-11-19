@interface MSDHVolumeManager
+ (id)sharedInstance;
- (BOOL)checkFreeSpaceLeftInContainer:(id)a3 neededSpace:(unint64_t)a4;
- (BOOL)deleteAPFSVolume:(id)a3;
- (BOOL)deleteDemoVolume;
- (BOOL)manageSnapshot:(id)a3 forVolumeAt:(id)a4;
- (BOOL)mountAPFSVolume:(id)a3 atMountPoint:(id)a4 withAttributes:(id)a5;
- (BOOL)mountSnapshotAt:(id)a3 forVolumeAt:(id)a4;
- (BOOL)setupDemoVolume;
- (BOOL)unmountAPFSVolume:(id)a3;
- (BOOL)unmountSnapshotAt:(id)a3;
- (MSDHVolumeManager)init;
- (id)createAPFSVolume:(id)a3 withSizeInMB:(unint64_t)a4 inContainer:(id)a5;
- (id)findAPFSVolumeMountPoint:(id)a3;
- (id)getAPFSBootContainerDeviceNode;
- (id)lookupAPFSVolumeDevByName:(id)a3;
- (void)waitForSnapshotDeletionOnVolume:(int)a3;
@end

@implementation MSDHVolumeManager

+ (id)sharedInstance
{
  if (qword_10005BEC8 != -1)
  {
    sub_10002D5C8();
  }

  v3 = qword_10005BEC0;

  return v3;
}

- (MSDHVolumeManager)init
{
  v6.receiver = self;
  v6.super_class = MSDHVolumeManager;
  v2 = [(MSDHVolumeManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(MSDHVolumeManager *)v2 lookupAPFSVolumeDevByName:@"com.apple.mobilestoredemo.storage"];
    [(MSDHVolumeManager *)v3 setDemoVolumeDev:v4];
  }

  return v3;
}

- (BOOL)manageSnapshot:(id)a3 forVolumeAt:(id)a4
{
  v6 = a3;
  v7 = open([a4 UTF8String], 0);
  if (v7 <= 0)
  {
    sub_10002D774();
    v14 = 0;
    goto LABEL_24;
  }

  if ([v6 isEqualToString:@"RevertSnapshot"])
  {
    v8 = fs_snapshot_revert(v7, "com.apple.snapshot.mobilestoredemo", 0);
    v9 = sub_100021268();
    v10 = v9;
    if (!v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        v11 = "Snapshot reverted.";
LABEL_21:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, &v16, 2u);
        goto LABEL_22;
      }

      goto LABEL_22;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10002D6EC();
    }
  }

  else
  {
    if ([v6 isEqualToString:@"DeleteSnapshot"])
    {
      if (fs_snapshot_delete(v7, "com.apple.snapshot.mobilestoredemo", 0))
      {
        if (*__error() != 2)
        {
          v10 = sub_100021268();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            sub_10002D664();
          }

          goto LABEL_17;
        }
      }

      else
      {
        [(MSDHVolumeManager *)self waitForSnapshotDeletionOnVolume:v7];
      }

      v10 = sub_100021268();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        v11 = "Snapshot deleted.";
        goto LABEL_21;
      }

      goto LABEL_22;
    }

    if ([v6 isEqualToString:@"CreateSnapshot"])
    {
      v12 = fs_snapshot_create(v7, "com.apple.snapshot.mobilestoredemo", 0);
      v13 = sub_100021268();
      v10 = v13;
      if (!v12)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v16) = 0;
          v11 = "Snapshot created.";
          goto LABEL_21;
        }

LABEL_22:
        v14 = 1;
        goto LABEL_23;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10002D5DC();
      }
    }

    else
    {
      v10 = sub_100021268();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543362;
        v17 = v6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Unknown snapshot operation: %{public}@", &v16, 0xCu);
      }
    }
  }

LABEL_17:
  v14 = 0;
LABEL_23:

  close(v7);
LABEL_24:

  return v14;
}

- (BOOL)mountSnapshotAt:(id)a3 forVolumeAt:(id)a4
{
  v5 = a3;
  v6 = open([a4 UTF8String], 0);
  if (v6 <= 0)
  {
    sub_10002D774();
    v8 = 0;
  }

  else
  {
    v7 = fs_snapshot_mount(v6, [v5 UTF8String], "com.apple.snapshot.mobilestoredemo", 0);
    v8 = v7 == 0;
    v9 = sub_100021268();
    v10 = v9;
    if (v7)
    {
      sub_10002D810(v9);
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Snapshot mounted.", v12, 2u);
    }

    close(v6);
  }

  return v8;
}

- (BOOL)unmountSnapshotAt:(id)a3
{
  v3 = unmount([a3 UTF8String], 0x80000);
  v4 = sub_100021268();
  v5 = v4;
  if (v3)
  {
    sub_10002D8A8(v4);
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Snapshot unmounted.", v7, 2u);
  }

  return v3 == 0;
}

- (id)getAPFSBootContainerDeviceNode
{
  if (qword_10005BED8 != -1)
  {
    sub_10002D940();
  }

  v3 = qword_10005BED0;

  return v3;
}

- (BOOL)checkFreeSpaceLeftInContainer:(id)a3 neededSpace:(unint64_t)a4
{
  v10[0] = 0;
  v10[1] = 0;
  [a3 UTF8String];
  SpaceInfo = APFSContainerGetSpaceInfo();
  if (SpaceInfo)
  {
    v7 = SpaceInfo;
    v8 = sub_100021268();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10002DBE4(v7, v8, v9);
    }
  }

  else
  {
    if (v10[0] > a4)
    {
      return 1;
    }

    v8 = sub_100021268();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10002DC54(v10, a4, v8);
    }
  }

  return 0;
}

- (id)lookupAPFSVolumeDevByName:(id)a3
{
  v3 = a3;
  v4 = v3;
  existing = 0;
  memset(name, 0, 128);
  properties = 0;
  if (v3)
  {
    v5 = IOServiceNameMatching([v3 UTF8String]);
    if (!IOServiceGetMatchingServices(kIOMasterPortDefault, v5, &existing))
    {
      v6 = IOIteratorNext(existing);
      if (v6)
      {
        v7 = v6;
        do
        {
          if (IOObjectConformsTo(v7, "AppleAPFSVolume"))
          {
            memset(name, 0, 128);
            if (IORegistryEntryGetName(v7, name) || IORegistryEntryCreateCFProperties(v7, &properties, kCFAllocatorDefault, 0))
            {
              goto LABEL_31;
            }

            if (!strncmp([v4 UTF8String], name, 0x80uLL))
            {
              v9 = CFDictionaryGetValue(properties, @"BSD Name");
              if (!v9)
              {
                goto LABEL_31;
              }

              v10 = v9;
              v8 = [NSString stringWithFormat:@"/dev/%@", v9];
            }

            else
            {
              v8 = 0;
            }

            CFRelease(properties);
          }

          else
          {
            v8 = 0;
          }

          IOObjectRelease(v7);
          v7 = IOIteratorNext(existing);
          if (v7)
          {
            v11 = v8 == 0;
          }

          else
          {
            v11 = 0;
          }
        }

        while (v11);
        IOObjectRelease(existing);
        if (v8)
        {
          v12 = sub_100021268();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v20 = v4;
            v21 = 2114;
            v22 = v8;
            v13 = "APFS volume '%{public}@' found as '%{public}@'.";
            v14 = v12;
            v15 = 22;
LABEL_24:
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
            goto LABEL_25;
          }

          goto LABEL_25;
        }
      }

      else
      {
        IOObjectRelease(existing);
        v8 = 0;
      }

      v12 = sub_100021268();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v20 = v4;
        v13 = "APFS volume '%{public}@' NOT found.";
        v14 = v12;
        v15 = 12;
        goto LABEL_24;
      }

LABEL_25:

      goto LABEL_26;
    }

    sub_10002DCE8();
  }

  v7 = 0;
LABEL_31:
  if (existing)
  {
    IOObjectRelease(existing);
  }

  if (v7)
  {
    IOObjectRelease(v7);
  }

  if (properties)
  {
    CFRelease(properties);
  }

  v8 = 0;
LABEL_26:

  return v8;
}

- (void)waitForSnapshotDeletionOnVolume:(int)a3
{
  v9[1] = 0;
  v9[2] = 0;
  v9[0] = 3;
  if (ffsctl(a3, 0x80184A24uLL, v9, 0) < 0)
  {
    v3 = *__error();
    v4 = sub_100021268();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3 == 35)
    {
      if (v5)
      {
        *buf = 0;
        v6 = "Timed out waiting for snapshot deletion to finish.";
        v7 = v4;
        v8 = 2;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }

    else if (v5)
    {
      *buf = 67240192;
      v11 = v3;
      v6 = "Wait for snapshot deletion failed: %{public, errno}d";
      v7 = v4;
      v8 = 8;
      goto LABEL_7;
    }
  }
}

- (BOOL)setupDemoVolume
{
  v3 = [(MSDHVolumeManager *)self demoVolumeDev];

  if (!v3)
  {
    v4 = [(MSDHVolumeManager *)self getAPFSBootContainerDeviceNode];
    v5 = [(MSDHVolumeManager *)self createAPFSVolume:@"com.apple.mobilestoredemo.storage" withSizeInMB:64 inContainer:v4];
    [(MSDHVolumeManager *)self setDemoVolumeDev:v5];

    v6 = [(MSDHVolumeManager *)self demoVolumeDev];

    if (!v6)
    {
      goto LABEL_8;
    }
  }

  v18[0] = NSFileOwnerAccountName;
  v18[1] = NSFileGroupOwnerAccountName;
  v19[0] = @"mobile";
  v19[1] = @"mobile";
  v18[2] = NSFilePosixPermissions;
  v7 = [NSNumber numberWithShort:448];
  v19[2] = v7;
  v6 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];

  v8 = [(MSDHVolumeManager *)self demoVolumeDev];
  v9 = [(MSDHVolumeManager *)self mountAPFSVolume:v8 atMountPoint:@"/private/var/mnt/com.apple.mobilestoredemo.storage" withAttributes:v6];

  if (v9)
  {
    v10 = sub_100021268();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(MSDHVolumeManager *)self demoVolumeDev];
      sub_100013F48();
      _os_log_impl(v11, v12, OS_LOG_TYPE_DEFAULT, v13, v14, 0xCu);
    }

    v15 = 1;
  }

  else
  {
LABEL_8:
    v15 = 0;
  }

  return v15;
}

- (BOOL)deleteDemoVolume
{
  v3 = [(MSDHVolumeManager *)self demoVolumeDev];

  if (v3)
  {
    v4 = [(MSDHVolumeManager *)self demoVolumeDev];
    v5 = [(MSDHVolumeManager *)self unmountAPFSVolume:v4];

    if (!v5)
    {
      return 0;
    }

    v6 = [(MSDHVolumeManager *)self demoVolumeDev];
    v7 = [(MSDHVolumeManager *)self deleteAPFSVolume:v6];

    if (!v7)
    {
      return 0;
    }

    [(MSDHVolumeManager *)self setDemoVolumeDev:0];
    v8 = sub_100021268();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
      v9 = "Demo volume is unmounted and deleted.";
      v10 = &v12;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    }
  }

  else
  {
    v8 = sub_100021268();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "Demo volume not found. Skip delete.";
      v10 = buf;
      goto LABEL_8;
    }
  }

  return 1;
}

- (id)createAPFSVolume:(id)a3 withSizeInMB:(unint64_t)a4 inContainer:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[NSMutableDictionary dictionary];
  v11 = 0;
  v12 = 0;
  if (v8 && v9)
  {
    if ([(MSDHVolumeManager *)self checkFreeSpaceLeftInContainer:v9 neededSpace:a4 << 20])
    {
      if (a4)
      {
        v13 = [NSNumber numberWithUnsignedLongLong:a4 << 20];
        [v10 setObject:v13 forKey:kAPFSVolumeReserveSizeKey];
      }

      [v10 setObject:v8 forKey:kAPFSVolumeNameKey];
      [v9 UTF8String];
      v14 = APFSVolumeCreate();
      if (v14)
      {
        v18 = v14;
        v19 = sub_100021268();
        if (sub_100013F30(v19))
        {
          *buf = 67109120;
          LODWORD(v22) = v18;
          sub_100013F18(&_mh_execute_header, &self->super, v20, "Failed to create APFS volume. error - %d", buf);
        }

        v11 = 0;
        v12 = 0;
      }

      else
      {
        v15 = [v10 objectForKey:kAPFSVolumeFSIndexKey];
        v12 = v15;
        if (!v15 || ([v15 intValue] & 0x80000000) != 0)
        {
          v17 = sub_100021268();
          if (sub_100013F30(v17))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, &self->super, OS_LOG_TYPE_ERROR, "Invalid FSIndex for APFS volume.", buf, 2u);
          }

          v11 = 0;
        }

        else
        {
          v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ss%d", [v9 UTF8String], objc_msgSend(v12, "intValue") + 1);
          self = sub_100021268();
          if (os_log_type_enabled(&self->super, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v22 = v11;
            v23 = 2048;
            v24 = a4;
            _os_log_impl(&_mh_execute_header, &self->super, OS_LOG_TYPE_DEFAULT, "APFS volume '%{public}@' with size %llu MB is created.", buf, 0x16u);
          }
        }
      }
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }
  }

  return v11;
}

- (BOOL)deleteAPFSVolume:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    [v3 UTF8String];
    v5 = APFSVolumeDelete();
    v6 = v5 == 0;
    v7 = sub_100021268();
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100013F48();
        sub_100013F18(v14, v15, v16, v17, v18);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      sub_100013F48();
      _os_log_impl(v9, v10, OS_LOG_TYPE_DEFAULT, v11, v12, 0xCu);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)findAPFSVolumeMountPoint:(id)a3
{
  v3 = a3;
  v18 = 0;
  if (!v3)
  {
LABEL_22:
    v10 = 0;
    goto LABEL_16;
  }

  v4 = getmntinfo_r_np(&v18, 2);
  if (v4 < 1 || (v5 = v18) == 0)
  {
    v15 = sub_100021268();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = __error();
      v17 = strerror(*v16);
      v21.st_dev = 136446210;
      *&v21.st_mode = v17;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to get mounted filesystem info - %{public}s", &v21, 0xCu);
    }

    goto LABEL_22;
  }

  v6 = v4;
  v7 = 1112;
  while (1)
  {
    if (!strncmp("apfs", v5 + v7 - 1040, 0xFuLL))
    {
      v8 = [v3 UTF8String];
      v5 = v18;
      v9 = v18 + v7;
      if (!strncmp(v8, v18 + v7, 0xFuLL))
      {
        break;
      }
    }

    v7 += 2168;
    if (!--v6)
    {
      v10 = 0;
      goto LABEL_15;
    }
  }

  bzero(&v21, 0x90uLL);
  v11 = stat(v9 - 1024, &v21);
  if (v11)
  {
    v12 = v11;
    v13 = sub_100021268();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Mount point corrupted. error - %d", buf, 8u);
    }

    v10 = 0;
  }

  else
  {
    v10 = [NSString stringWithUTF8String:v18 + v7 - 1024];
  }

  v5 = v18;
LABEL_15:
  free(v5);
LABEL_16:

  return v10;
}

- (BOOL)mountAPFSVolume:(id)a3 atMountPoint:(id)a4 withAttributes:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  bzero(&v57, 0x144uLL);
  bzero(&v51, 0x90uLL);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  if (!v8 || !v9)
  {
    goto LABEL_20;
  }

  v14 = [(MSDHVolumeManager *)self findAPFSVolumeMountPoint:v8];

  if (v14)
  {
    v22 = sub_100021268();
    if (sub_100013F30(v22))
    {
      *buf = 0;
      sub_100013F08();
      _os_log_error_impl(v38, v39, v40, v41, v42, 2u);
    }

    v12 = 0;
    v13 = 0;
    goto LABEL_31;
  }

  v13 = +[NSFileManager defaultManager];
  v50 = 0;
  v11 = [v13 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:&v50];
  v12 = v50;
  if ((v11 & 1) == 0)
  {
    v23 = sub_100021268();
    if (sub_100013F30(v23))
    {
      v24 = [v12 localizedDescription];
      *buf = 138543618;
      v53 = v9;
      v54 = 2114;
      v55 = v24;
      sub_100013F08();
      _os_log_error_impl(v25, v26, v27, v28, v29, 0x16u);
    }

    goto LABEL_31;
  }

  if (stat([v9 UTF8String], &v51))
  {
    v30 = sub_100021268();
    if (sub_100013F30(v30))
    {
      v31 = *__error();
      *buf = 67109120;
      LODWORD(v53) = v31;
      sub_100013F08();
      _os_log_error_impl(v32, v33, v34, v35, v36, 8u);
    }

    goto LABEL_31;
  }

  v56 = [v8 UTF8String];
  v58 = 1;
  v59 = *&v51.st_uid;
  v57 = 0x100000;
  if (!mount("apfs", [v9 UTF8String], 0x100000, &v56))
  {
LABEL_16:
    if (!v10)
    {
      LOBYTE(v11) = 1;
      goto LABEL_20;
    }

    v49 = v12;
    v11 = [v13 setAttributes:v10 ofItemAtPath:v9 error:&v49];
    v20 = v49;

    if (v11)
    {
      LOBYTE(v11) = 1;
      v12 = v20;
      goto LABEL_20;
    }

    v37 = sub_100021268();
    if (sub_100013F30(v37))
    {
      v43 = [v20 localizedDescription];
      *buf = 138543362;
      v53 = v43;
      sub_100013F08();
      _os_log_error_impl(v44, v45, v46, v47, v48, 0xCu);
    }

    v12 = v20;
LABEL_31:

    LOBYTE(v11) = 0;
    goto LABEL_20;
  }

  v15 = 3;
  while (1)
  {
    v16 = sub_100021268();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = *__error();
      *buf = 138543618;
      v53 = v9;
      v54 = 1024;
      LODWORD(v55) = v19;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to mount APFS volume on %{public}@ - %{errno}d", buf, 0x12u);
    }

    if (*__error() != 2 || v15 < 2)
    {
      break;
    }

    --v15;
    usleep(0x7A120u);
    v18 = [v9 UTF8String];
    if (!mount("apfs", v18, v57, &v56))
    {
      goto LABEL_16;
    }
  }

  LOBYTE(v11) = 0;
LABEL_20:

  return v11;
}

- (BOOL)unmountAPFSVolume:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v10 = 0;
    v7 = 0;
    v8 = 0;
    v6 = 0;
    goto LABEL_11;
  }

  v5 = [(MSDHVolumeManager *)self findAPFSVolumeMountPoint:v4];
  v6 = v5 == 0;
  if (!v5)
  {
    v11 = sub_100021268();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Volume is not mounted.", buf, 2u);
    }

    v10 = 0;
    v7 = 0;
    goto LABEL_9;
  }

  v7 = v5;
  if (unmount([v5 UTF8String], 0x80000))
  {
    v11 = sub_100021268();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = __error();
      v15 = strerror(*v14);
      *buf = 136446210;
      v18 = v15;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to unmount APFS volume - %{public}s", buf, 0xCu);
    }

    v10 = 0;
LABEL_9:
    v8 = 0;
LABEL_10:

    goto LABEL_11;
  }

  v8 = +[NSFileManager defaultManager];
  v16 = 0;
  v9 = [v8 removeItemAtPath:v7 error:&v16];
  v10 = v16;
  if ((v9 & 1) == 0)
  {
    v11 = sub_100021268();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = [v10 localizedDescription];
      *buf = 138543618;
      v18 = v7;
      v19 = 2114;
      v20 = v13;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to remove mount point at '%{public}@' -  %{public}@", buf, 0x16u);
    }

    goto LABEL_10;
  }

  v6 = 1;
LABEL_11:

  return v6;
}

@end