@interface SKDisk
+ (id)copySortedChildrenWithDADisk:(id)disk ioMedia:(id)media;
+ (id)newSortedChildrenWithIOMedia:(id)media;
- (BOOL)_cacheInfo;
- (BOOL)_cacheInfoForDADisk:(id)disk;
- (BOOL)_cacheInfoWithDiskDescription:(id)description;
- (BOOL)_cacheInfoWithIOMedia:(id)media;
- (BOOL)_cacheSpacesWithPurgeable:(BOOL)purgeable;
- (BOOL)_supportsRecaching;
- (BOOL)isRealEFIPartition;
- (BOOL)reProbeWithError:(id *)error;
- (SKDisk)init;
- (SKDisk)initWithDADisk:(id)disk;
- (id)_getFilesystem;
- (id)filesystemWithType:(id)type;
- (unsigned)_getOwnerUsingStat;
- (void)_cacheFilesystem;
- (void)_cacheIsWholeDiskWithDiskDescription:(id)description;
- (void)_cacheNoFilesystem;
@end

@implementation SKDisk

- (SKDisk)init
{
  v10.receiver = self;
  v10.super_class = SKDisk;
  v2 = [(SKDisk *)&v10 init];
  if (v2)
  {
    v3 = [NSNumber alloc];
    v4 = +[SKDaemonManager sharedManager];
    v5 = [v3 initWithUnsignedLongLong:{objc_msgSend(v4, "nextDiskObjectID")}];
    [(SKDisk *)v2 setDiskObjectID:v5];

    v6 = sub_10000BFD0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      diskObjectID = [(SKDisk *)v2 diskObjectID];
      *buf = 136315394;
      v12 = "[SKDisk(DaemonAdditions) init]";
      v13 = 2114;
      v14 = diskObjectID;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Initializing new disk with ID %{public}@", buf, 0x16u);
    }

    v8 = objc_alloc_init(SKDiskPrivateCache);
    [(SKDisk *)v2 setPrivateCache:v8];
  }

  return v2;
}

- (SKDisk)initWithDADisk:(id)disk
{
  diskCopy = disk;
  v5 = [(SKDisk *)self init];
  v6 = v5;
  if (v5)
  {
    if (!diskCopy || ([(SKDisk *)v5 setDaDisk:diskCopy], ![(SKDisk *)v6 _cacheInfo]))
    {
      v7 = 0;
      goto LABEL_7;
    }

    [(SKDisk *)v6 setIsValid:1];
  }

  v7 = v6;
LABEL_7:

  return v7;
}

- (BOOL)_cacheInfo
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  daDisk = [(SKDisk *)selfCopy daDisk];
  v4 = [(SKDisk *)selfCopy _cacheInfoForDADisk:daDisk];

  objc_sync_exit(selfCopy);
  return v4;
}

- (BOOL)_cacheInfoForDADisk:(id)disk
{
  diskCopy = disk;
  v5 = DADiskCopyDescription(diskCopy);
  if (!v5)
  {
    p_super = sub_10000BFD0();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      v30 = 136315138;
      v31 = "[SKDisk(DaemonAdditions) _cacheInfoForDADisk:]";
      _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_ERROR, "%s: DADiskCopyDescription failed", &v30, 0xCu);
    }

    goto LABEL_28;
  }

  if ([(SKDisk *)self _cacheInfoWithDiskDescription:v5])
  {
    if (![(SKDisk *)self isIOMediaDisk])
    {
      p_super = 0;
LABEL_16:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 || [(SKDisk *)self _cacheSpacesWithPurgeable:1])
      {
        if (([(SKDisk *)self isWholeDisk]& 1) != 0)
        {
          [(SKDisk *)self setCanPartitionDisk:[(SKDisk *)self isVirtualDiskType]^ 1];
          if ([(SKDisk *)self canPartitionDisk])
          {
            v16 = [(SKDisk *)self isDiskImage]^ 1;
          }

          else
          {
            v16 = 0;
          }

          [(SKDisk *)self setIsPhysicalDisk:v16];
        }

        else
        {
          [(SKDisk *)self setIsPhysicalDisk:1];
          [(SKDisk *)self setCanPartitionDisk:0];
        }

        if ([(SKDisk *)self isMemberOfClass:objc_opt_class()])
        {
          if ([(SKDisk *)self isWholeDisk])
          {
            daDisk = [(SKDisk *)self daDisk];
            v21 = [SKDisk copySortedChildrenWithDADisk:daDisk ioMedia:p_super];
            privateCache = [(SKDisk *)self privateCache];
            [privateCache setSortedChildren:v21];

            privateCache2 = [(SKDisk *)self privateCache];
            sortedChildren = [privateCache2 sortedChildren];
            -[SKDisk setChildCount:](self, "setChildCount:", [sortedChildren count]);
          }

          else
          {
            [(SKDisk *)self setChildCount:0];
          }

          [(SKDisk *)self setSupportsJournaling:0];
          [(SKDisk *)self setIsJournaled:0];
          [(SKDisk *)self setSupportsVerify:0];
          [(SKDisk *)self setSupportsRepair:0];
          _getFilesystem = [(SKDisk *)self _getFilesystem];
          [(SKDisk *)self setFilesystem:_getFilesystem];

          filesystem = [(SKDisk *)self filesystem];

          if (filesystem)
          {
            [(SKDisk *)self _cacheFilesystem];
          }

          else
          {
            [(SKDisk *)self _cacheNoFilesystem];
          }

          privateCache3 = [(SKDisk *)self privateCache];
          wholeDADisk = [privateCache3 wholeDADisk];
          [(SKDisk *)self _cacheCanSupportRecoveryPartitionWithWholeDisk:wholeDADisk];
        }

        v15 = 1;
        goto LABEL_40;
      }

LABEL_28:
      v15 = 0;
LABEL_40:

      goto LABEL_41;
    }

    isWholeDisk = [(SKDisk *)self isWholeDisk];
    daDisk2 = [(SKDisk *)self daDisk];
    v8 = daDisk2;
    v9 = daDisk2;
    if ((isWholeDisk & 1) == 0)
    {
      v9 = DADiskCopyWholeDisk(daDisk2);
    }

    privateCache4 = [(SKDisk *)self privateCache];
    [privateCache4 setWholeDADisk:v9];

    if ((isWholeDisk & 1) == 0)
    {
    }

    privateCache5 = [(SKDisk *)self privateCache];
    wholeDADisk2 = [privateCache5 wholeDADisk];

    if (wholeDADisk2)
    {
      v13 = [[SKIOMedia alloc] initWithDADisk:diskCopy];
      if (v13)
      {
        p_super = &v13->super.super;
        if (![(SKDisk *)self _cacheInfoWithIOMedia:v13])
        {
          goto LABEL_28;
        }

        goto LABEL_16;
      }

      v17 = sub_10000BFD0();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        diskIdentifier = [(SKDisk *)self diskIdentifier];
        v30 = 136315394;
        v31 = "[SKDisk(DaemonAdditions) _cacheInfoForDADisk:]";
        v32 = 2114;
        v33 = diskIdentifier;
        v19 = "%s: Failed to find IO media of %{public}@";
        goto LABEL_26;
      }
    }

    else
    {
      v17 = sub_10000BFD0();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        diskIdentifier = [(SKDisk *)self diskIdentifier];
        v30 = 136315394;
        v31 = "[SKDisk(DaemonAdditions) _cacheInfoForDADisk:]";
        v32 = 2114;
        v33 = diskIdentifier;
        v19 = "%s: Failed to find whole disk for %{public}@";
LABEL_26:
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v19, &v30, 0x16u);
      }
    }

    p_super = 0;
    goto LABEL_28;
  }

  v15 = 0;
LABEL_41:

  return v15;
}

- (void)_cacheIsWholeDiskWithDiskDescription:(id)description
{
  v4 = [description objectForKeyedSubscript:kDADiskDescriptionMediaWholeKey];
  [(SKDisk *)self setIsWholeDisk:sub_100010328(v4)];
}

- (BOOL)_cacheInfoWithDiskDescription:(id)description
{
  descriptionCopy = description;
  v5 = [(SKDisk *)self liveDiskIdentifierWithDiskDescription:descriptionCopy];
  privateCache = [(SKDisk *)self privateCache];
  [privateCache setLiveDiskIdentifier:v5];

  diskIdentifier = [(SKDisk *)self diskIdentifier];
  if (!diskIdentifier && ![(SKDisk *)self isValid]|| (v8 = [(SKDisk *)self canUpdateDiskIdentifierWithDiskInfo:descriptionCopy], diskIdentifier, v8))
  {
    privateCache2 = [(SKDisk *)self privateCache];
    liveDiskIdentifier = [privateCache2 liveDiskIdentifier];
    [(SKDisk *)self setDiskIdentifier:liveDiskIdentifier];
  }

  v11 = sub_10000BFD0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    diskIdentifier2 = [(SKDisk *)self diskIdentifier];
    *buf = 136315650;
    v37 = "[SKDisk(DaemonAdditions) _cacheInfoWithDiskDescription:]";
    v38 = 2114;
    v39 = diskIdentifier2;
    v40 = 1024;
    isValid = [(SKDisk *)self isValid];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: Caching %{public}@, isValid=%d", buf, 0x1Cu);
  }

  diskIdentifier3 = [(SKDisk *)self diskIdentifier];

  if (diskIdentifier3)
  {
    [(SKDisk *)self _cacheIsWholeDiskWithDiskDescription:descriptionCopy];
    v14 = [descriptionCopy objectForKeyedSubscript:kDADiskDescriptionVolumePathKey];
    v35 = v14;
    if (v14)
    {
      path = [v14 path];
      [(SKDisk *)self setMountPoint:path];
    }

    else
    {
      [(SKDisk *)self setMountPoint:0];
    }

    mountPoint = [(SKDisk *)self mountPoint];

    if (!mountPoint)
    {
      [(SKDisk *)self setOwnerUID:[(SKDisk *)self _getOwnerUsingStat]];
    }

    v17 = [(SKDisk *)self volumeNameWithDiskDescription:descriptionCopy];
    [(SKDisk *)self setVolumeName:v17];

    v18 = [descriptionCopy objectForKeyedSubscript:kDADiskDescriptionVolumeUUIDKey];

    if (v18)
    {
      v19 = CFUUIDCreateString(0, v18);
      [(SKDisk *)self setVolumeUUID:v19];
    }

    else
    {
      [(SKDisk *)self setVolumeUUID:0];
    }

    v20 = [descriptionCopy objectForKeyedSubscript:kDADiskDescriptionMediaSizeKey];
    [(SKDisk *)self setUnformattedSize:sub_100010370(v20)];
    v21 = [descriptionCopy objectForKeyedSubscript:kDADiskDescriptionDeviceInternalKey];
    [(SKDisk *)self setIsInternal:sub_100010328(v21)];
    v22 = [descriptionCopy objectForKeyedSubscript:kDADiskDescriptionMediaRemovableKey];
    [(SKDisk *)self setIsRemovable:sub_100010328(v22)];
    v23 = [descriptionCopy objectForKeyedSubscript:kDADiskDescriptionMediaWritableKey];
    v24 = v23;
    if (v23)
    {
      v25 = sub_100010328(v23);
    }

    else
    {
      v25 = 1;
    }

    [(SKDisk *)self setIsMediaWritable:v25];
    v26 = [descriptionCopy objectForKeyedSubscript:kDADiskDescriptionDeviceProtocolKey];
    if (sub_1000101BC(v26))
    {
      v27 = [v26 isEqual:@"Virtual Interface"];
    }

    else
    {
      v27 = 0;
    }

    [(SKDisk *)self setIsDiskImage:v27];
    v28 = [descriptionCopy objectForKeyedSubscript:kDADiskDescriptionVolumeKindKey];
    privateCache3 = [(SKDisk *)self privateCache];
    [privateCache3 setVolumeKind:v28];

    v30 = [descriptionCopy objectForKeyedSubscript:kDADiskDescriptionVolumeTypeKey];
    privateCache4 = [(SKDisk *)self privateCache];
    [privateCache4 setVolumeType:v30];

    v32 = [descriptionCopy objectForKeyedSubscript:kDADiskDescriptionMediaContentKey];
    privateCache5 = [(SKDisk *)self privateCache];
    [privateCache5 setRawIOContent:v32];
  }

  return diskIdentifier3 != 0;
}

- (unsigned)_getOwnerUsingStat
{
  memset(&v10, 0, sizeof(v10));
  _getIdentifierForStat = [(SKDisk *)self _getIdentifierForStat];
  if (([(SKDisk *)self isIOMediaDisk]& 1) == 0)
  {
    v4 = sub_10000BFD0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = _getIdentifierForStat;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ is not an IO media disk, assuming owner is root", buf, 0xCu);
    }

    goto LABEL_8;
  }

  v4 = [NSString stringWithFormat:@"/dev/%@", _getIdentifierForStat];
  v5 = stat([v4 UTF8String], &v10);
  v6 = sub_10000BFD0();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "stat failed on %@, assuming owner is root", buf, 0xCu);
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  if (v7)
  {
    *buf = 138412546;
    v12 = v4;
    v13 = 1024;
    st_uid = v10.st_uid;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "stat on %@, returned UID %d", buf, 0x12u);
  }

  v8 = v10.st_uid;
LABEL_9:

  return v8;
}

- (BOOL)_cacheInfoWithIOMedia:(id)media
{
  mediaCopy = media;
  copyProperties = [mediaCopy copyProperties];
  if (copyProperties)
  {
    privateCache = [(SKDisk *)self privateCache];
    v7 = [privateCache copyHumanIOContentWithMediaDict:copyProperties isWholeDisk:{-[SKDisk isWholeDisk](self, "isWholeDisk")}];
    [(SKDisk *)self setIoContent:v7];

    if (([(SKDisk *)self isValid]& 1) == 0)
    {
      v8 = [mediaCopy copyPropertyWithClass:objc_opt_class() key:@"UUID"];
      [(SKDisk *)self setMediaUUID:v8];
    }

    v14[0] = 0;
    if ([(SKDisk *)self isWholeDisk])
    {
      [(SKDisk *)self setStartLocation:0];
      v9 = 0;
    }

    else
    {
      v12 = sub_100005EDC(copyProperties, v14);
      -[SKDisk setStartLocation:](self, "setStartLocation:", [v12 unsignedLongLongValue]);

      v9 = v14[0];
    }

    [(SKDisk *)self setIsPartitionDisk:v9 & 1];
    v10 = [mediaCopy copyParentPropertyWithClass:objc_opt_class() key:@"OSInternal"];
    [(SKDisk *)self setIsOSInternal:sub_100010328(v10)];
  }

  else
  {
    v10 = sub_10000BFD0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      diskIdentifier = [(SKDisk *)self diskIdentifier];
      *v14 = 136315394;
      *&v14[4] = "[SKDisk(DaemonAdditions) _cacheInfoWithIOMedia:]";
      v15 = 2114;
      v16 = diskIdentifier;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s: Failed to get IO media properties for %{public}@", v14, 0x16u);
    }
  }

  return copyProperties != 0;
}

- (void)_cacheFilesystem
{
  filesystem = [(SKDisk *)self filesystem];
  majorType = [filesystem majorType];

  if ([majorType isEqualToString:@"hfs"])
  {
    [(SKDisk *)self setSupportsVerify:1];
    [(SKDisk *)self setSupportsRepair:1];
    filesystem2 = [(SKDisk *)self filesystem];
    -[SKDisk setSupportsJournaling:](self, "setSupportsJournaling:", [filesystem2 supportsJournaling]);

    privateCache = [(SKDisk *)self privateCache];
    -[SKDisk setIsJournaled:](self, "setIsJournaled:", ([privateCache mountFlags] >> 23) & 1);

    filesystem3 = [(SKDisk *)self filesystem];
    -[SKDisk setIsCaseSensitive:](self, "setIsCaseSensitive:", [filesystem3 isCaseSensitive]);

    ioContent = [(SKDisk *)self ioContent];
    v8 = [ioContent isEqualToString:@"Apple_Boot"];

    if (v8)
    {
      [(SKDisk *)self setRole:kSKDiskRoleBooter];
      v9 = &kSKDiskTypeAppleBoot;
    }

    else
    {
      mountPoint = [(SKDisk *)self mountPoint];

      if (mountPoint)
      {
        v15 = +[NSFileManager defaultManager];
        mountPoint2 = [(SKDisk *)self mountPoint];
        v17 = [mountPoint2 stringByAppendingPathComponent:@"/System/Library/CoreServices/Finder.app"];
        v18 = [v15 fileExistsAtPath:v17];

        v19 = &kSKDiskRoleLegacyMacSystem;
        if (!v18)
        {
          v19 = &kSKDiskRoleLegacyMacData;
        }

        [(SKDisk *)self setRole:*v19];
      }

      else
      {
        [(SKDisk *)self setRole:kSKDiskRoleLegacyMacData];
      }

      v9 = &kSKDiskTypeHFS;
    }

    [(SKDisk *)self setType:*v9];
    v13 = &kSKDiskFileSystemHFS;
    goto LABEL_23;
  }

  if ([majorType isEqualToString:@"msdos"])
  {
    [(SKDisk *)self setSupportsVerify:1];
    [(SKDisk *)self setSupportsRepair:1];
    isRealEFIPartition = [(SKDisk *)self isRealEFIPartition];
    v11 = &kSKDiskRoleBooter;
    if (isRealEFIPartition)
    {
      v12 = &kSKDiskTypeEFI;
    }

    else
    {
      v11 = &kSKDiskRoleWindowsData;
      v12 = &kSKDiskTypeFAT;
    }

    [(SKDisk *)self setRole:*v11];
    [(SKDisk *)self setType:*v12];
    v13 = &kSKDiskFileSystemFAT;
    goto LABEL_23;
  }

  if ([majorType isEqualToString:@"exfat"])
  {
    [(SKDisk *)self setSupportsVerify:1];
    [(SKDisk *)self setSupportsRepair:1];
    [(SKDisk *)self setRole:kSKDiskRoleWindowsData];
    [(SKDisk *)self setType:kSKDiskTypeExFAT];
    v13 = &kSKDiskFileSystemExFAT;
LABEL_23:
    [(SKDisk *)self setFilesystemType:*v13];
    goto LABEL_24;
  }

  if ([majorType isEqualToString:@"ntfs"])
  {
    mountPoint3 = [(SKDisk *)self mountPoint];
    v21 = [mountPoint3 stringByAppendingPathComponent:@"/Windows/System32/ntdll.dll"];

    mountPoint4 = [(SKDisk *)self mountPoint];
    if (mountPoint4)
    {
      v23 = mountPoint4;
      v24 = +[NSFileManager defaultManager];
      v25 = [v24 fileExistsAtPath:v21];

      v26 = &kSKDiskRoleWindowsSystem;
      if ((v25 & 1) == 0)
      {
        v26 = &kSKDiskRoleWindowsData;
      }
    }

    else
    {
      v26 = &kSKDiskRoleWindowsData;
    }

    [(SKDisk *)self setRole:*v26];
    [(SKDisk *)self setType:kSKDiskTypeNTFS];
    v28 = kSKDiskFileSystemNTFS;
    selfCopy2 = self;
  }

  else
  {
    if ([majorType isEqualToString:@"acfs"])
    {
      [(SKDisk *)self setRole:kSKDiskRoleXSanData];
      [(SKDisk *)self setType:kSKDiskTypeXSanLV];
      v13 = &kSKDiskFileSystemACFS;
      goto LABEL_23;
    }

    [(SKDisk *)self setRole:kSKDiskRoleUnknown];
    [(SKDisk *)self setType:kSKDiskType3rdPartyFilesystem];
    v21 = [NSString stringWithFormat:@"kSKDiskFileSystem_%@", majorType];
    selfCopy2 = self;
    v28 = v21;
  }

  [(SKDisk *)selfCopy2 setFilesystemType:v28];

LABEL_24:
}

- (BOOL)isRealEFIPartition
{
  ioContent = [(SKDisk *)self ioContent];
  v4 = [ioContent isEqualToString:@"EFI"];

  if (v4)
  {
    privateCache = [(SKDisk *)self privateCache];
    wholeDADisk = [privateCache wholeDADisk];
    v7 = [SKDisk copySortedChildrenWithDADisk:wholeDADisk ioMedia:0];

    daDisk = [(SKDisk *)self daDisk];
    v9 = [v7 indexOfObject:daDisk];

    if (v9)
    {
      v10 = v9 == 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = 1;
    }

    LOBYTE(v4) = v10;
    if (v9 && v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = sub_10000BFD0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        diskIdentifier = [(SKDisk *)self diskIdentifier];
        v14 = 136315650;
        v15 = "[SKDisk(DaemonAdditions) isRealEFIPartition]";
        v16 = 2114;
        v17 = diskIdentifier;
        v18 = 1024;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: %{public}@ is an EFI partition in the middle of the disk (child #%d), treating as a regular FAT", &v14, 0x1Cu);
      }
    }
  }

  return v4;
}

- (void)_cacheNoFilesystem
{
  isWholeDisk = [(SKDisk *)self isWholeDisk];
  privateCache = [(SKDisk *)self privateCache];
  schemeID = [privateCache schemeID];
  if (isWholeDisk)
  {

    v6 = &kSKDiskTypeAPMWholeDisk;
    v7 = &kSKDiskTypeMBRWholeDisk;
    v8 = &kSKDiskTypeUninitalized;
    if (schemeID == 16)
    {
      v8 = &kSKDiskTypeGPTWholeDisk;
    }

    if (schemeID != 8)
    {
      v7 = v8;
    }

    if (schemeID != 1)
    {
      v6 = v7;
    }

    [(SKDisk *)self setType:*v6];
    v9 = &kSKDiskRolePhysicalDisk;
    goto LABEL_9;
  }

  if (schemeID == 512 || ([(SKDisk *)self ioContent], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    v14 = &kSKDiskRoleNoRole;
    goto LABEL_15;
  }

  ioContent = [(SKDisk *)self ioContent];
  v12 = [ioContent isEqualToString:@"Apple_Boot"];

  if (!v12)
  {
    if ([(SKDisk *)self isRealEFIPartition])
    {
      [(SKDisk *)self setRole:kSKDiskRoleBooter];
      [(SKDisk *)self setType:kSKDiskTypeEFI];
      v16 = &kSKDiskFileSystemFAT;
      goto LABEL_18;
    }

    ioContent2 = [(SKDisk *)self ioContent];
    if ([ioContent2 isEqualToString:@"Apple_HFS"])
    {

LABEL_26:
      [(SKDisk *)self setRole:kSKDiskRoleMacData];
      v13 = &kSKDiskTypeHFS;
      goto LABEL_27;
    }

    ioContent3 = [(SKDisk *)self ioContent];
    v20 = [ioContent3 isEqualToString:@"Apple_RAID"];

    if (v20)
    {
      goto LABEL_26;
    }

    ioContent4 = [(SKDisk *)self ioContent];
    v22 = [ioContent4 isEqualToString:@"Apple_APFS"];

    if (v22)
    {
      v23 = [(SKDisk *)self isMemberOfClass:objc_opt_class()];
      [(SKDisk *)self setRole:kSKDiskRoleStorageImplementation];
      if (v23)
      {
        v15 = &kSKDiskTypeAPFSPS;
      }

      else
      {
        v15 = &kSKDiskTypeDamaged;
      }

      goto LABEL_16;
    }

    ioContent5 = [(SKDisk *)self ioContent];
    v25 = [ioContent5 isEqualToString:@"Apple_RAID_Offline"];

    if (!v25)
    {
      ioContent6 = [(SKDisk *)self ioContent];
      if ([ioContent6 isEqualToString:@"Apple_KernelCoreDump"])
      {
      }

      else
      {
        ioContent7 = [(SKDisk *)self ioContent];
        v28 = [ioContent7 isEqualToString:@"Apple_SadMac"];

        if (!v28)
        {
          privateCache2 = [(SKDisk *)self privateCache];
          rawIOContent = [privateCache2 rawIOContent];
          ioContent8 = [(SKDisk *)self ioContent];
          v32 = [rawIOContent isEqualToString:ioContent8];

          if (v32)
          {
            v33 = kSKDiskTypeOtherUnrecognized;
            privateCache3 = [(SKDisk *)self privateCache];
            rawIOContent2 = [privateCache3 rawIOContent];
            v36 = [NSString stringWithFormat:@"%@%@", v33, rawIOContent2];
            [(SKDisk *)self setType:v36];
          }

          else
          {
            v37 = kSKDiskTypeOtherRecognizable;
            privateCache3 = [(SKDisk *)self ioContent];
            rawIOContent2 = [NSString stringWithFormat:@"%@%@", v37, privateCache3];
            [(SKDisk *)self setType:rawIOContent2];
          }

          v9 = &kSKDiskRoleNoRole;
LABEL_9:
          [(SKDisk *)self setRole:*v9];
LABEL_17:
          v16 = &kSKDiskFileSystemUndefined;
          goto LABEL_18;
        }
      }

      [(SKDisk *)self setRole:kSKDiskRoleStorageImplementation];
      v13 = &kSKDiskTypeAppleCoreDump;
      goto LABEL_27;
    }

    v14 = &kSKDiskRoleStorageImplementation;
LABEL_15:
    [(SKDisk *)self setRole:*v14];
    v15 = &kSKDiskTypeUninitalized;
LABEL_16:
    [(SKDisk *)self setType:*v15];
    goto LABEL_17;
  }

  [(SKDisk *)self setRole:kSKDiskRoleBooter];
  v13 = &kSKDiskTypeAppleBoot;
LABEL_27:
  [(SKDisk *)self setType:*v13];
  v16 = &kSKDiskFileSystemHFS;
LABEL_18:
  v17 = *v16;

  [(SKDisk *)self setFilesystemType:v17];
}

- (id)_getFilesystem
{
  privateCache = [(SKDisk *)self privateCache];
  volumeKind = [privateCache volumeKind];

  if (sub_1000101BC(volumeKind))
  {
    goto LABEL_5;
  }

  privateCache2 = [(SKDisk *)self privateCache];
  rawIOContent = [privateCache2 rawIOContent];
  v7 = [rawIOContent isEqualToString:@"41504653-0000-11AA-AA11-00306543ECAC"];

  if (v7)
  {
    v8 = @"apfs";
LABEL_4:

    volumeKind = v8;
    goto LABEL_5;
  }

  ioContent = [(SKDisk *)self ioContent];
  v19 = [ioContent isEqualToString:@"Apple_APFS"];

  if (v19)
  {
    goto LABEL_12;
  }

  ioContent2 = [(SKDisk *)self ioContent];
  v23 = [ioContent2 isEqualToString:@"Apple_HFS"];

  if (v23)
  {
    v8 = @"hfs";
    goto LABEL_4;
  }

  ioContent3 = [(SKDisk *)self ioContent];
  v25 = [ioContent3 isEqualToString:@"MS-DOS"];

  if (v25)
  {
    v8 = @"msdos";
    goto LABEL_4;
  }

LABEL_5:
  if (sub_1000101BC(volumeKind))
  {
    v9 = [(SKDisk *)self filesystemWithType:volumeKind];
    if (v9)
    {
      v10 = v9;
      goto LABEL_16;
    }
  }

  ioContent4 = [(SKDisk *)self ioContent];
  v12 = sub_1000101BC(ioContent4);

  if (!v12)
  {
    goto LABEL_12;
  }

  ioContent5 = [(SKDisk *)self ioContent];
  v14 = [ioContent5 isEqualToString:@"EFI"];

  v15 = +[SKDaemonManager sharedManager];
  v16 = v15;
  if (v14)
  {
    v10 = [v15 _filesystemForDMFilesystemType:@"MS-DOS FAT32" isEncrypted:0];
    v17 = v16;
LABEL_15:

    goto LABEL_16;
  }

  ioContent6 = [(SKDisk *)self ioContent];
  v17 = [v16 _filesystemForIOContent:ioContent6];

  if (v17)
  {
    v17 = v17;
    v10 = v17;
    goto LABEL_15;
  }

  ioContent7 = [(SKDisk *)self ioContent];
  privateCache3 = [(SKDisk *)self privateCache];
  rawIOContent2 = [privateCache3 rawIOContent];
  v29 = [ioContent7 isEqual:rawIOContent2];

  if (v29)
  {
LABEL_12:
    v10 = 0;
    goto LABEL_16;
  }

  v30 = +[SKDaemonManager sharedManager];
  privateCache4 = [(SKDisk *)self privateCache];
  rawIOContent3 = [privateCache4 rawIOContent];
  v10 = [v30 _filesystemForIOContent:rawIOContent3];

  if (v10)
  {
    goto LABEL_15;
  }

LABEL_16:

  return v10;
}

- (id)filesystemWithType:(id)type
{
  typeCopy = type;
  if (([typeCopy isEqualToString:@"apfs"] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"hfs") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"msdos") & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", @"cd9660"))
  {
    privateCache = [(SKDisk *)self privateCache];
    volumeType = [privateCache volumeType];
    v7 = sub_1000101BC(volumeType);

    if (v7)
    {
      privateCache2 = [(SKDisk *)self privateCache];
      volumeType2 = [privateCache2 volumeType];

      if (volumeType2)
      {
        v10 = 0;
LABEL_8:
        v11 = +[SKDaemonManager sharedManager];
        v12 = [v11 _filesystemForUnlocalizedName:volumeType2 dmPersonality:v10];

        goto LABEL_11;
      }
    }

    else
    {
      mountPoint = [(SKDisk *)self mountPoint];
      sub_1000101BC(mountPoint);
    }
  }

  else if ([typeCopy isEqualToString:@"zfs"])
  {
    volumeType2 = 0;
    v10 = @"ZFS";
    goto LABEL_8;
  }

  volumeType2 = +[SKDaemonManager sharedManager];
  v12 = [volumeType2 _firstFilesystemForMajorType:typeCopy];
LABEL_11:

  return v12;
}

- (BOOL)_cacheSpacesWithPurgeable:(BOOL)purgeable
{
  purgeableCopy = purgeable;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  bzero(&v20, 0x878uLL);
  mountPoint = [(SKDisk *)selfCopy mountPoint];
  if (mountPoint && (-[SKDisk mountPoint](selfCopy, "mountPoint"), v6 = objc_claimAutoreleasedReturnValue(), v7 = statfs([v6 fileSystemRepresentation], &v20) == 0, v6, mountPoint, v7))
  {
    [(SKDisk *)selfCopy setIsWritable:(v20.f_flags & 1) == 0];
    [(SKDisk *)selfCopy setTotalSpace:v20.f_blocks * v20.f_bsize];
    [(SKDisk *)selfCopy setFreeSpace:v20.f_bavail * v20.f_bsize];
    f_flags = v20.f_flags;
    privateCache = [(SKDisk *)selfCopy privateCache];
    [privateCache setMountFlags:f_flags];

    [(SKDisk *)selfCopy setOwnerUID:v20.f_owner];
    if (([(SKDisk *)selfCopy isIOMediaDisk]& 1) == 0)
    {
      [(SKDisk *)selfCopy setUnformattedSize:[(SKDisk *)selfCopy totalSpace]];
    }
  }

  else
  {
    [(SKDisk *)selfCopy setIsWritable:0];
    [(SKDisk *)selfCopy setTotalSpace:[(SKDisk *)selfCopy unformattedSize]];
    [(SKDisk *)selfCopy setFreeSpace:0];
    privateCache2 = [(SKDisk *)selfCopy privateCache];
    [privateCache2 setMountFlags:0];
  }

  if (purgeableCopy)
  {
    mountPoint2 = [(SKDisk *)selfCopy mountPoint];

    unsignedLongLongValue = 0;
    if (&_CacheDeleteCopyPurgeableSpaceWithInfo && mountPoint2)
    {
      mountPoint3 = [(SKDisk *)selfCopy mountPoint];
      v19 = mountPoint3;
      [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v12 = CacheDeleteCopyPurgeableSpaceWithInfo();

      if (v12)
      {
        v13 = [v12 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
        v14 = v13;
        if (v13)
        {
          unsignedLongLongValue = [v13 unsignedLongLongValue];
        }

        else
        {
          unsignedLongLongValue = 0;
        }
      }

      else
      {
        unsignedLongLongValue = 0;
      }
    }

    [(SKDisk *)selfCopy setPurgeableSpace:unsignedLongLongValue];
  }

  [(SKDisk *)selfCopy setAvailableSpace:[(SKDisk *)selfCopy freeSpace]+ [(SKDisk *)selfCopy purgeableSpace]];
  objc_sync_exit(selfCopy);

  return 1;
}

+ (id)copySortedChildrenWithDADisk:(id)disk ioMedia:(id)media
{
  diskCopy = disk;
  mediaCopy = media;
  if (diskCopy)
  {
    BSDName = DADiskGetBSDName(diskCopy);
    if (BSDName)
    {
      v9 = [NSString stringWithUTF8String:BSDName];
      v10 = +[SKDaemonManager sharedManager];
      v11 = [v10 copyExtendedDiskInfoWithDiskIdentifier:v9];

      if (v11 && ([v11 objectForKeyedSubscript:@"kSKSortedChildren"], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
      {
        v13 = [v11 objectForKeyedSubscript:@"kSKSortedChildren"];
      }

      else
      {
        if (!mediaCopy)
        {
          mediaCopy = [[SKIOMedia alloc] initWithDADisk:diskCopy];
        }

        v13 = [self newSortedChildrenWithIOMedia:mediaCopy];
        v14 = +[SKDaemonManager sharedManager];
        v19 = v13;
        v20 = v9;
        v18 = @"kSKSortedChildren";
        v15 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
        v21 = v15;
        v16 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
        [v14 _addToExtendedDiskInfoCacheWithDictionary:v16];
      }
    }

    else
    {
      v9 = sub_10000BFD0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v23 = "+[SKDisk(DaemonAdditions) copySortedChildrenWithDADisk:ioMedia:]";
        v24 = 2112;
        v25 = diskCopy;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s: Invalid DADiskRef %@", buf, 0x16u);
      }

      v13 = &__NSArray0__struct;
    }
  }

  else
  {
    v13 = &__NSArray0__struct;
  }

  return v13;
}

+ (id)newSortedChildrenWithIOMedia:(id)media
{
  mediaCopy = media;
  if (mediaCopy)
  {
    v4 = &CacheDeleteCopyPurgeableSpaceWithInfo_ptr;
    v5 = [mediaCopy copyPropertyWithClass:objc_opt_class() key:@"BSD Unit"];
    v32 = +[NSMutableArray array];
    v6 = +[SKDaemonManager sharedManager];
    diskArbSession = [v6 diskArbSession];

    v30 = mediaCopy;
    v7 = [mediaCopy newIteratorWithOptions:1];
    p_superclass = &OBJC_METACLASS___SKTaskExecuter.superclass;
    v9 = [(SKIOObject *)[SKIOMedia alloc] initWithIteratorNext:v7];
    if (v9)
    {
      v11 = v9;
      *&v10 = 136315394;
      v29 = v10;
      do
      {
        if ([v7 invalidated])
        {
          [v32 removeAllObjects];
        }

        if (IOObjectConformsTo([(SKIOObject *)v11 ioObj], "IOMedia"))
        {
          v12 = v4[315];
          v13 = [(SKIOObject *)v11 copyPropertyWithClass:objc_opt_class() key:@"BSD Unit"];
          if ([v13 isEqual:v5])
          {
            v14 = DADiskCreateFromIOMedia(kCFAllocatorDefault, diskArbSession, [(SKIOObject *)v11 ioObj]);
            if (v14)
            {
              copyProperties = [(SKIOObject *)v11 copyProperties];
              v44[0] = v14;
              v16 = sub_100005EDC(copyProperties, 0);
              v44[1] = v16;
              [NSArray arrayWithObjects:v44 count:2];
              v18 = v17 = v4;
              [v32 addObject:v18];

              v4 = v17;
              p_superclass = (&OBJC_METACLASS___SKTaskExecuter + 8);
            }

            else
            {
              copyProperties = sub_10000BFD0();
              if (os_log_type_enabled(copyProperties, OS_LOG_TYPE_ERROR))
              {
                *buf = v29;
                v39 = "+[SKDisk(DaemonAdditions) newSortedChildrenWithIOMedia:]";
                v40 = 2114;
                v41 = v13;
                _os_log_impl(&_mh_execute_header, copyProperties, OS_LOG_TYPE_ERROR, "%s: Failed to create DADisk for child disk %{public}@", buf, 0x16u);
              }
            }
          }

          else
          {
            v14 = sub_10000BFD0();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v39 = "+[SKDisk(DaemonAdditions) newSortedChildrenWithIOMedia:]";
              v40 = 2114;
              v41 = v13;
              v42 = 2114;
              v43 = v5;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: Found IO media with BSD unit %{public}@ as a child of disk with BSD unit %{public}@, ignoring", buf, 0x20u);
            }
          }

          IORegistryIteratorExitEntry([v7 ioObj]);
        }

        v19 = [objc_alloc((p_superclass + 179)) initWithIteratorNext:v7];

        v11 = v19;
      }

      while (v19);
    }

    v20 = [v32 sortedArrayUsingComparator:&stru_100048C50];
    v21 = +[NSMutableArray array];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v22 = v20;
    v23 = [v22 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v34;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v34 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [*(*(&v33 + 1) + 8 * i) objectAtIndexedSubscript:0];
          [v21 addObject:v27];
        }

        v24 = [v22 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v24);
    }

    mediaCopy = v30;
  }

  else
  {
    v21 = &__NSArray0__struct;
  }

  return v21;
}

- (BOOL)_supportsRecaching
{
  diskIdentifier = [(SKDisk *)self diskIdentifier];
  v3 = diskIdentifier != 0;

  return v3;
}

- (BOOL)reProbeWithError:(id *)error
{
  v9[0] = kSKDiskMountOptionRecursive;
  v5 = &__kCFBooleanFalse;
  if ([(SKDisk *)self isWholeDisk]&& ![(SKDisk *)self isLiveFSAPFSDisk])
  {
    v5 = &__kCFBooleanTrue;
  }

  v9[1] = kSKDiskMountOptionToolOptions;
  v10[0] = v5;
  v10[1] = &__NSArray0__struct;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  v7 = [SKMountOperation mountWithDisk:self options:v6 error:error];

  return v7;
}

@end