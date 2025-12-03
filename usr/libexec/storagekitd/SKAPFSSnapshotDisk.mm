@interface SKAPFSSnapshotDisk
+ (BOOL)diskIsSnapshot:(id)snapshot;
+ (BOOL)isiOSRootSnapshotWithDiskDescription:(id)description;
- (BOOL)_cacheInfo;
@end

@implementation SKAPFSSnapshotDisk

+ (BOOL)diskIsSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v4 = [[SKIOMedia alloc] initWithDADisk:snapshotCopy];

  if (v4)
  {
    v5 = IOObjectConformsTo([(SKIOObject *)v4 ioObj], "AppleAPFSSnapshot") != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_cacheInfo
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  daDisk = [(SKAPFSSnapshotDisk *)selfCopy daDisk];
  v4 = +[SKDaemonManager sharedManager];
  diskArbSession = [v4 diskArbSession];

  v6 = DADiskCopyDescription(daDisk);
  v7 = v6;
  if (v6)
  {
    v8 = [(__CFDictionary *)v6 objectForKeyedSubscript:kDADiskDescriptionVolumePathKey];
    v9 = [objc_opt_class() isiOSRootSnapshotWithDiskDescription:v7];
    v10 = v9;
    if (v9)
    {
      [(SKAPFSSnapshotDisk *)selfCopy setSealStatus:0];
      if (!v8)
      {
        v31 = +[SKBaseManager sharedManager];
        [v31 logEvent:@"com.apple.StorageKit.log.fault" eventPayloadBuilder:&stru_100048B68];

        v32 = sub_10000BFD0();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
        {
          v64.f_bsize = 136315138;
          *&v64.f_iosize = "[SKAPFSSnapshotDisk(Daemon) _cacheInfo]";
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_FAULT, "%s: Unmounted root snapshot", &v64, 0xCu);
        }

LABEL_25:

LABEL_45:
        v21 = 0;
LABEL_46:
        v22 = 0;
LABEL_47:

        goto LABEL_48;
      }

      memset(&v64, 0, 512);
      if (statfs([v8 fileSystemRepresentation], &v64) == -1)
      {
        v38 = sub_10000BFD0();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = *__error();
          *buf = 136315650;
          v59 = "[SKAPFSSnapshotDisk(Daemon) _cacheInfo]";
          v60 = 2112;
          v61 = v8;
          v62 = 1024;
          LODWORD(v63) = v39;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%s: statfs failed for %@, errno %d", buf, 0x1Cu);
        }

        goto LABEL_45;
      }

      v11 = [NSString stringWithUTF8String:v64.f_mntfromname];
      v12 = [v11 componentsSeparatedByString:@"@/dev/"];
      if ([v12 count] != 2 || (objc_msgSend(v12, "objectAtIndexedSubscript:", 1), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "hasPrefix:", @"disk"), v13, (v14 & 1) == 0))
      {
        v37 = sub_10000BFD0();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v59 = "[SKAPFSSnapshotDisk(Daemon) _cacheInfo]";
          v60 = 2112;
          v61 = v11;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%s: Unexpected mntFromName for root disk: %@", buf, 0x16u);
        }

        goto LABEL_45;
      }

      v15 = [v12 objectAtIndexedSubscript:0];
      [(SKAPFSSnapshotDisk *)selfCopy setSnapshotName:v15];

      v16 = [v12 objectAtIndexedSubscript:1];
      v17 = [v16 stringByAppendingString:@":root_snapshot"];
      [(SKAPFSSnapshotDisk *)selfCopy setDiskIdentifier:v17];

      v18 = +[SKDaemonManager sharedManager];
      diskArbSession2 = [v18 diskArbSession];
      v20 = v16;
      v21 = DADiskCreateFromBSDName(0, diskArbSession2, [v16 UTF8String]);

LABEL_18:
      diskIdentifier = [(SKAPFSSnapshotDisk *)selfCopy diskIdentifier];
      v29 = diskIdentifier == 0;

      if (v29)
      {
        v40 = sub_10000BFD0();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v64.f_bsize = 136315138;
          *&v64.f_iosize = "[SKAPFSSnapshotDisk(Daemon) _cacheInfo]";
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%s: No disk identifier for snapshot", &v64, 0xCu);
        }

        goto LABEL_46;
      }

      if (v21)
      {
        v57.receiver = selfCopy;
        v57.super_class = SKAPFSSnapshotDisk;
        if (([(SKAPFSSnapshotDisk *)&v57 _cacheInfoForDADisk:v21]& 1) == 0)
        {
          v43 = sub_10000BFD0();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v64.f_bsize = 136315138;
            *&v64.f_iosize = "[SKAPFSSnapshotDisk(Daemon) _cacheInfo]";
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%s: Failed to cache livefs data", &v64, 0xCu);
          }

          goto LABEL_70;
        }

        if (v10)
        {
          v30 = 0;
        }

        else
        {
          mediaUUID = [(SKAPFSSnapshotDisk *)selfCopy mediaUUID];
          [(SKAPFSSnapshotDisk *)selfCopy setApfsUUID:mediaUUID];

          v30 = [(__CFDictionary *)v7 objectForKeyedSubscript:kDADiskDescriptionMediaUUIDKey];

          if (v30)
          {
            v45 = CFUUIDCreateString(0, v30);
          }

          else
          {
            v45 = 0;
          }

          [(SKAPFSSnapshotDisk *)selfCopy setMediaUUID:v45];
          if (v30)
          {
          }

          mediaUUID2 = [(SKAPFSSnapshotDisk *)selfCopy mediaUUID];
          v47 = mediaUUID2 == 0;

          if (v47)
          {
            v43 = sub_10000BFD0();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              diskIdentifier2 = [(SKAPFSSnapshotDisk *)selfCopy diskIdentifier];
              v64.f_bsize = 136315650;
              *&v64.f_iosize = "[SKAPFSSnapshotDisk(Daemon) _cacheInfo]";
              WORD2(v64.f_blocks) = 2114;
              *(&v64.f_blocks + 6) = diskIdentifier2;
              HIWORD(v64.f_bfree) = 2080;
              v64.f_bavail = "AppleAPFSSnapshot";
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%s: IOMedia for %{public}@ doesn't conform to %s. It's missing a UUID.", &v64, 0x20u);
            }

            goto LABEL_70;
          }
        }

        if (v8)
        {
          path = [v8 path];
          [(SKAPFSSnapshotDisk *)selfCopy setMountPoint:path];

          if (([(SKAPFSSnapshotDisk *)selfCopy isIOSRootSnapshot]& 1) == 0)
          {
            memset(&v64.f_bavail, 0, 264);
            *&v64.f_bsize = 2;
            *&v64.f_blocks = CFUUIDGetUUIDBytes(v30);
            v49 = v8;
            if (fsctl([v8 fileSystemRepresentation], 0xC1204A43uLL, &v64, 0))
            {
              v43 = sub_10000BFD0();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                mountPoint = [(SKAPFSSnapshotDisk *)selfCopy mountPoint];
                v51 = mountPoint;
                fileSystemRepresentation = [mountPoint fileSystemRepresentation];
                v53 = __error();
                v54 = strerror(*v53);
                *buf = 136315650;
                v59 = "[SKAPFSSnapshotDisk(Daemon) _cacheInfo]";
                v60 = 2080;
                v61 = fileSystemRepresentation;
                v62 = 2080;
                v63 = v54;
                _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%s: Failed to fsctl(%s). %s", buf, 0x20u);
              }

LABEL_70:

              goto LABEL_46;
            }

            v56 = [[NSString alloc] initWithBytes:&v64.f_files length:strnlen(&v64.f_files encoding:{0xFFuLL), 4}];
            [(SKAPFSSnapshotDisk *)selfCopy setSnapshotName:v56];
          }
        }

        else
        {
          [(SKAPFSSnapshotDisk *)selfCopy setMountPoint:0];
          [(SKAPFSSnapshotDisk *)selfCopy setUsedSpace:0];
        }

        [(SKAPFSSnapshotDisk *)selfCopy setReserveSpace:0];
        [(SKAPFSSnapshotDisk *)selfCopy setQuotaSpace:0];
        [(SKAPFSSnapshotDisk *)selfCopy _cacheSpacesWithPurgeable:1];
        [(SKAPFSSnapshotDisk *)selfCopy setRole:kSKDiskRoleSnapshot];
        v22 = 1;
        goto LABEL_47;
      }

      v32 = sub_10000BFD0();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v64.f_bsize = 136315138;
        *&v64.f_iosize = "[SKAPFSSnapshotDisk(Daemon) _cacheInfo]";
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s: Failed to create DADiskRef for snapshot's parent", &v64, 0xCu);
      }

      goto LABEL_25;
    }

    v23 = [[SKIOMedia alloc] initWithDADisk:daDisk];
    v24 = v23;
    if (v23)
    {
      if (IOObjectConformsTo([(SKIOObject *)v23 ioObj], "AppleAPFSSnapshot"))
      {
        [(SKAPFSSnapshotDisk *)selfCopy setSealStatus:sub_100001598(v24)];
        if (([(SKAPFSSnapshotDisk *)selfCopy isValid]& 1) == 0)
        {
          v25 = [(__CFDictionary *)v7 objectForKeyedSubscript:kDADiskDescriptionMediaBSDNameKey];
          [(SKAPFSSnapshotDisk *)selfCopy setDiskIdentifier:v25];
        }

        copyParent = [(SKIOObject *)v24 copyParent];
        v27 = copyParent;
        if (copyParent)
        {
          if (IOObjectConformsTo([copyParent ioObj], "AppleAPFSVolume"))
          {
            v21 = DADiskCreateFromIOMedia(kCFAllocatorDefault, diskArbSession, [v27 ioObj]);

            goto LABEL_18;
          }

          v41 = sub_10000BFD0();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v64.f_bsize = 136315138;
            *&v64.f_iosize = "[SKAPFSSnapshotDisk(Daemon) _cacheInfo]";
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%s: Snapshot IOMedia's parent is not an APFS volume", &v64, 0xCu);
          }
        }

        goto LABEL_45;
      }

      v33 = sub_10000BFD0();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v64.f_bsize = 136315394;
        *&v64.f_iosize = "[SKAPFSSnapshotDisk(Daemon) _cacheInfo]";
        WORD2(v64.f_blocks) = 2080;
        *(&v64.f_blocks + 6) = "AppleAPFSSnapshot";
        v34 = "%s: IOMedia doesn't conform to %s";
        v35 = v33;
        v36 = 22;
        goto LABEL_36;
      }
    }

    else
    {
      v33 = sub_10000BFD0();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v64.f_bsize = 136315138;
        *&v64.f_iosize = "[SKAPFSSnapshotDisk(Daemon) _cacheInfo]";
        v34 = "%s: Failed to copy IOMedia for diskRef";
        v35 = v33;
        v36 = 12;
LABEL_36:
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, v34, &v64, v36);
      }
    }

    goto LABEL_45;
  }

  v8 = sub_10000BFD0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v64.f_bsize = 136315138;
    *&v64.f_iosize = "[SKAPFSSnapshotDisk(Daemon) _cacheInfo]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s: DADiskCopyDescription failed for snapshot", &v64, 0xCu);
  }

  v22 = 0;
LABEL_48:

  objc_sync_exit(selfCopy);
  return v22;
}

+ (BOOL)isiOSRootSnapshotWithDiskDescription:(id)description
{
  descriptionCopy = description;
  v4 = [descriptionCopy objectForKeyedSubscript:kDADiskDescriptionMediaKindKey];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [descriptionCopy objectForKeyedSubscript:kDADiskDescriptionVolumePathKey];
    v7 = v6;
    if (v6)
    {
      absoluteString = [v6 absoluteString];
      v5 = [absoluteString isEqualToString:@"file:///"];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end