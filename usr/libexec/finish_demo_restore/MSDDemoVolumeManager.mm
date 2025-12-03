@interface MSDDemoVolumeManager
+ (id)sharedInstance;
- (BOOL)mountAPFSVolume:(id)volume atMountPoint:(id)point withAttributes:(id)attributes;
- (BOOL)moveStagingToFinal:(id)final;
- (id)findAPFSVolumeMountPoint:(id)point;
- (id)lookupAPFSVolumeDevByName:(id)name;
- (void)mountDemoVolume;
- (void)moveDataFromShelterToFinal;
@end

@implementation MSDDemoVolumeManager

+ (id)sharedInstance
{
  if (qword_10000C748 != -1)
  {
    sub_100003994();
  }

  v3 = qword_10000C740;

  return v3;
}

- (void)moveDataFromShelterToFinal
{
  v3 = +[NSFileManager defaultManager];
  v11 = 0;
  if (![v3 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/DataShelter" isDirectory:&v11])
  {
    goto LABEL_7;
  }

  v4 = v11;
  v5 = +[MSDLogModel sharedInstance];
  v6 = v5;
  if (v4)
  {
    [v5 logMessage:1 prefix:@"[INF]" message:@"Moving files from data shelter folder..."];

    [(MSDDemoVolumeManager *)self moveStagingToFinal:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/DataShelter"];
  }

  else
  {
    sub_1000039A8(v5);
  }

  if ([v3 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/DataShelter"])
  {
    v10 = 0;
    v7 = [v3 removeItemAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/DataShelter" error:&v10];
    v8 = v10;
    if ((v7 & 1) == 0)
    {
      v9 = +[MSDLogModel sharedInstance];
      [v9 logMessage:1 prefix:@"[INF]" message:{@"Failed to remove data shelter folder with error - %@", v8}];
    }
  }

  else
  {
LABEL_7:
    v8 = 0;
  }
}

- (id)lookupAPFSVolumeDevByName:(id)name
{
  nameCopy = name;
  v4 = nameCopy;
  existing = 0;
  memset(name, 0, 128);
  properties = 0;
  if (nameCopy)
  {
    v5 = IOServiceNameMatching([nameCopy UTF8String]);
    MatchingServices = IOServiceGetMatchingServices(kIOMasterPortDefault, v5, &existing);
    if (!MatchingServices)
    {
      v7 = IOIteratorNext(existing);
      if (v7)
      {
        v8 = v7;
        do
        {
          if (IOObjectConformsTo(v8, "AppleAPFSVolume"))
          {
            memset(name, 0, 128);
            if (IORegistryEntryGetName(v8, name) || IORegistryEntryCreateCFProperties(v8, &properties, kCFAllocatorDefault, 0))
            {
              goto LABEL_28;
            }

            if (!strncmp([v4 UTF8String], name, 0x80uLL))
            {
              v10 = CFDictionaryGetValue(properties, @"BSD Name");
              if (!v10)
              {
                goto LABEL_28;
              }

              v11 = v10;
              v9 = [NSString stringWithFormat:@"/dev/%@", v10];
            }

            else
            {
              v9 = 0;
            }

            CFRelease(properties);
          }

          else
          {
            v9 = 0;
          }

          IOObjectRelease(v8);
          v8 = IOIteratorNext(existing);
          if (v8)
          {
            v12 = v9 == 0;
          }

          else
          {
            v12 = 0;
          }
        }

        while (v12);
        IOObjectRelease(existing);
        if (v9)
        {
          v13 = +[MSDLogModel sharedInstance];
          [v13 logMessage:1 prefix:@"[INF]" message:{@"APFS volume '%@' found as '%@'.", v4, v9}];
LABEL_22:

          goto LABEL_23;
        }
      }

      else
      {
        IOObjectRelease(existing);
        v9 = 0;
      }

      v13 = +[MSDLogModel sharedInstance];
      [v13 logMessage:1 prefix:@"[INF]" message:{@"APFS volume '%@' NOT found.", v4, v15}];
      goto LABEL_22;
    }

    sub_1000039F8(MatchingServices);
  }

  v8 = 0;
LABEL_28:
  if (existing)
  {
    IOObjectRelease(existing);
  }

  if (v8)
  {
    IOObjectRelease(v8);
  }

  if (properties)
  {
    CFRelease(properties);
  }

  v9 = 0;
LABEL_23:

  return v9;
}

- (BOOL)moveStagingToFinal:(id)final
{
  finalCopy = final;
  v3 = +[NSFileManager defaultManager];
  if ([v3 fileExistsAtPath:@"/private/var/demo_backup/backup"])
  {
    [v3 enumeratorAtPath:finalCopy];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v4 = v35 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v5)
    {
      v6 = v5;
      v26 = 0;
      v27 = v4;
      v7 = *v33;
      v28 = v3;
      v25 = *v33;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v33 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v32 + 1) + 8 * i);
          v10 = objc_autoreleasePoolPush();
          v11 = [finalCopy stringByAppendingPathComponent:v9];
          if ([v3 fileExistsAtPath:v11])
          {
            v12 = [@"/private/var/demo_backup/backup" stringByAppendingPathComponent:v9];
            stringByDeletingLastPathComponent = [v12 stringByDeletingLastPathComponent];
            if (([v3 fileExistsAtPath:v12] & 1) == 0 && objc_msgSend(v3, "fileExistsAtPath:", stringByDeletingLastPathComponent))
            {
              v14 = +[MSDLogModel sharedInstance];
              [v14 logMessage:1 prefix:@"[INF]" message:{@"Moving %@ to %@", v11, v12}];

              v31 = v26;
              v15 = [v3 moveItemAtPath:v11 toPath:v12 error:&v31];
              v16 = v31;

              if (!v15)
              {
                v23 = +[MSDLogModel sharedInstance];
                localizedDescription = [v16 localizedDescription];
                [v23 logMessage:1 prefix:@"[INF]" message:{@"Cannot move %@ to %@ with error - %@", v11, v12, localizedDescription}];

                objc_autoreleasePoolPop(v10);
                v17 = 0;
                v4 = v27;
                v3 = v28;
                goto LABEL_19;
              }

              v26 = v16;
              v7 = v25;
            }

            v4 = v27;
            v3 = v28;
          }

          objc_autoreleasePoolPop(v10);
        }

        v6 = [v4 countByEnumeratingWithState:&v32 objects:v38 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }

      v17 = 1;
      v18 = v4;
      v16 = v26;
    }

    else
    {
      v16 = 0;
      v17 = 1;
LABEL_19:
      v18 = v4;
    }

    goto LABEL_20;
  }

  v19 = +[MSDLogModel sharedInstance];
  v17 = 1;
  [v19 logMessage:1 prefix:@"[INF]" message:{@"Moving %@ to %@", finalCopy, @"/private/var/demo_backup/backup"}];

  v30 = 0;
  v20 = [v3 moveItemAtPath:finalCopy toPath:@"/private/var/demo_backup/backup" error:&v30];
  v21 = v30;
  v16 = v21;
  if ((v20 & 1) == 0)
  {
    sub_100003A54(v21, finalCopy, &v36, &v37);
    v17 = 0;
    v18 = v36;
    v4 = v37;
LABEL_20:
  }

  return v17;
}

- (void)mountDemoVolume
{
  v3 = +[MSDLogModel sharedInstance];
  [v3 logMessage:1 prefix:@"[INF]" message:{@"Mounting demo volume with name '%@' at '%@'...", @"com.apple.mobilestoredemo.storage", @"/private/var/mnt/com.apple.mobilestoredemo.storage"}];

  v4 = [(MSDDemoVolumeManager *)self lookupAPFSVolumeDevByName:@"com.apple.mobilestoredemo.storage"];
  if (!v4)
  {
    v7 = 0;
    goto LABEL_8;
  }

  v5 = [(MSDDemoVolumeManager *)self findAPFSVolumeMountPoint:v4];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
  }

  else
  {
    v13[0] = NSFileOwnerAccountName;
    v13[1] = NSFileGroupOwnerAccountName;
    v14[0] = @"mobile";
    v14[1] = @"mobile";
    v13[2] = NSFilePosixPermissions;
    v8 = [NSNumber numberWithShort:448];
    v14[2] = v8;
    v7 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];

    v6 = @"/private/var/mnt/com.apple.mobilestoredemo.storage";
    if (![(MSDDemoVolumeManager *)self mountAPFSVolume:v4 atMountPoint:@"/private/var/mnt/com.apple.mobilestoredemo.storage" withAttributes:v7])
    {
      goto LABEL_8;
    }
  }

  v9 = [(__CFString *)v6 isEqualToString:@"/private/var/mnt/com.apple.mobilestoredemo.storage"];
  v10 = +[MSDLogModel sharedInstance];
  v11 = v10;
  if (v9)
  {
    [v10 logMessage:1 prefix:@"[INF]" message:{@"Demo volume successfully mounted!", v12}];
  }

  else
  {
    [v10 logMessage:1 prefix:@"[INF]" message:{@"Demo volume incorrectly mounted at %@", v6}];
  }

LABEL_8:
}

- (id)findAPFSVolumeMountPoint:(id)point
{
  pointCopy = point;
  v17 = 0;
  if (!pointCopy)
  {
    goto LABEL_18;
  }

  v4 = getmntinfo_r_np(&v17, 2);
  if (v4 < 1 || (v5 = v17) == 0)
  {
    v14 = +[MSDLogModel sharedInstance];
    v15 = __error();
    [v14 logMessage:1 prefix:@"[INF]" message:{@"Failed to get mounted filesystem info with error - %s", strerror(*v15)}];

LABEL_18:
    1024 = 0;
    goto LABEL_14;
  }

  v6 = v4;
  v7 = 1112;
  while (1)
  {
    if (!strncmp("apfs", v5 + v7 - 1040, 0xFuLL))
    {
      uTF8String = [pointCopy UTF8String];
      v5 = v17;
      if (!strncmp(uTF8String, v17 + v7, 0xFuLL))
      {
        break;
      }
    }

    v7 += 2168;
    if (!--v6)
    {
      1024 = 0;
      goto LABEL_13;
    }
  }

  bzero(&v16, 0x90uLL);
  v10 = stat(v5 + v7 - 1024, &v16);
  if (v10)
  {
    v11 = v10;
    v12 = +[MSDLogModel sharedInstance];
    [v12 logMessage:1 prefix:@"[INF]" message:{@"Mount point corrupted with error - %d", v11}];

    1024 = 0;
  }

  else
  {
    1024 = [NSString stringWithUTF8String:v17 + v7 - 1024];
  }

  v5 = v17;
LABEL_13:
  free(v5);
LABEL_14:

  return 1024;
}

- (BOOL)mountAPFSVolume:(id)volume atMountPoint:(id)point withAttributes:(id)attributes
{
  volumeCopy = volume;
  pointCopy = point;
  attributesCopy = attributes;
  bzero(v27, 0x138uLL);
  bzero(&v24, 0x90uLL);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (volumeCopy && pointCopy)
  {
    v10 = +[NSFileManager defaultManager];
    v23 = 0;
    v13 = [v10 createDirectoryAtPath:pointCopy withIntermediateDirectories:1 attributes:0 error:&v23];
    v12 = v23;
    if (v13)
    {
      v14 = stat([pointCopy UTF8String], &v24);
      if (v14)
      {
        v20 = v14;
        v18 = +[MSDLogModel sharedInstance];
        [v18 logMessage:1 prefix:@"[INF]" message:{@"Failed to get file stat with error - %d", v20}];
      }

      else
      {
        uTF8String = [volumeCopy UTF8String];
        v27[2] = 1;
        v28 = *&v24.st_uid;
        v26 = 0x100000;
        if (mount("apfs", [pointCopy UTF8String], 0x100000, &uTF8String))
        {
          v18 = +[MSDLogModel sharedInstance];
          v21 = __error();
          [v18 logMessage:1 prefix:@"[INF]" message:{@"Failed to mount APFS volume with error - %s", strerror(*v21)}];
        }

        else
        {
          if (!attributesCopy)
          {
            v11 = 1;
            goto LABEL_10;
          }

          v22 = v12;
          v15 = [v10 setAttributes:attributesCopy ofItemAtPath:pointCopy error:&v22];
          v16 = v22;

          if (v15)
          {
            v11 = 1;
            v12 = v16;
            goto LABEL_10;
          }

          v18 = +[MSDLogModel sharedInstance];
          [v18 logMessage:1 prefix:@"[INF]" message:{@"Failed to set file attributes on mount point - %@", v16}];
          v12 = v16;
        }
      }
    }

    else
    {
      v18 = +[MSDLogModel sharedInstance];
      localizedDescription = [v12 localizedDescription];
      [v18 logMessage:1 prefix:@"[INF]" message:{@"Failed to create mount point at '%@' -  %@", pointCopy, localizedDescription}];
    }

    v11 = 0;
  }

LABEL_10:

  return v11;
}

@end