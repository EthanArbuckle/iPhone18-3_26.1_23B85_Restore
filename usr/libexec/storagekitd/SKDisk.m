@interface SKDisk
+ (id)copySortedChildrenWithDADisk:(id)a3 ioMedia:(id)a4;
+ (id)newSortedChildrenWithIOMedia:(id)a3;
- (BOOL)_cacheInfo;
- (BOOL)_cacheInfoForDADisk:(id)a3;
- (BOOL)_cacheInfoWithDiskDescription:(id)a3;
- (BOOL)_cacheInfoWithIOMedia:(id)a3;
- (BOOL)_cacheSpacesWithPurgeable:(BOOL)a3;
- (BOOL)_supportsRecaching;
- (BOOL)isRealEFIPartition;
- (BOOL)reProbeWithError:(id *)a3;
- (SKDisk)init;
- (SKDisk)initWithDADisk:(id)a3;
- (id)_getFilesystem;
- (id)filesystemWithType:(id)a3;
- (unsigned)_getOwnerUsingStat;
- (void)_cacheFilesystem;
- (void)_cacheIsWholeDiskWithDiskDescription:(id)a3;
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
      v7 = [(SKDisk *)v2 diskObjectID];
      *buf = 136315394;
      v12 = "[SKDisk(DaemonAdditions) init]";
      v13 = 2114;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Initializing new disk with ID %{public}@", buf, 0x16u);
    }

    v8 = objc_alloc_init(SKDiskPrivateCache);
    [(SKDisk *)v2 setPrivateCache:v8];
  }

  return v2;
}

- (SKDisk)initWithDADisk:(id)a3
{
  v4 = a3;
  v5 = [(SKDisk *)self init];
  v6 = v5;
  if (v5)
  {
    if (!v4 || ([(SKDisk *)v5 setDaDisk:v4], ![(SKDisk *)v6 _cacheInfo]))
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(SKDisk *)v2 daDisk];
  v4 = [(SKDisk *)v2 _cacheInfoForDADisk:v3];

  objc_sync_exit(v2);
  return v4;
}

- (BOOL)_cacheInfoForDADisk:(id)a3
{
  v4 = a3;
  v5 = DADiskCopyDescription(v4);
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
            v20 = [(SKDisk *)self daDisk];
            v21 = [SKDisk copySortedChildrenWithDADisk:v20 ioMedia:p_super];
            v22 = [(SKDisk *)self privateCache];
            [v22 setSortedChildren:v21];

            v23 = [(SKDisk *)self privateCache];
            v24 = [v23 sortedChildren];
            -[SKDisk setChildCount:](self, "setChildCount:", [v24 count]);
          }

          else
          {
            [(SKDisk *)self setChildCount:0];
          }

          [(SKDisk *)self setSupportsJournaling:0];
          [(SKDisk *)self setIsJournaled:0];
          [(SKDisk *)self setSupportsVerify:0];
          [(SKDisk *)self setSupportsRepair:0];
          v25 = [(SKDisk *)self _getFilesystem];
          [(SKDisk *)self setFilesystem:v25];

          v26 = [(SKDisk *)self filesystem];

          if (v26)
          {
            [(SKDisk *)self _cacheFilesystem];
          }

          else
          {
            [(SKDisk *)self _cacheNoFilesystem];
          }

          v27 = [(SKDisk *)self privateCache];
          v28 = [v27 wholeDADisk];
          [(SKDisk *)self _cacheCanSupportRecoveryPartitionWithWholeDisk:v28];
        }

        v15 = 1;
        goto LABEL_40;
      }

LABEL_28:
      v15 = 0;
LABEL_40:

      goto LABEL_41;
    }

    v6 = [(SKDisk *)self isWholeDisk];
    v7 = [(SKDisk *)self daDisk];
    v8 = v7;
    v9 = v7;
    if ((v6 & 1) == 0)
    {
      v9 = DADiskCopyWholeDisk(v7);
    }

    v10 = [(SKDisk *)self privateCache];
    [v10 setWholeDADisk:v9];

    if ((v6 & 1) == 0)
    {
    }

    v11 = [(SKDisk *)self privateCache];
    v12 = [v11 wholeDADisk];

    if (v12)
    {
      v13 = [[SKIOMedia alloc] initWithDADisk:v4];
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
        v18 = [(SKDisk *)self diskIdentifier];
        v30 = 136315394;
        v31 = "[SKDisk(DaemonAdditions) _cacheInfoForDADisk:]";
        v32 = 2114;
        v33 = v18;
        v19 = "%s: Failed to find IO media of %{public}@";
        goto LABEL_26;
      }
    }

    else
    {
      v17 = sub_10000BFD0();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = [(SKDisk *)self diskIdentifier];
        v30 = 136315394;
        v31 = "[SKDisk(DaemonAdditions) _cacheInfoForDADisk:]";
        v32 = 2114;
        v33 = v18;
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

- (void)_cacheIsWholeDiskWithDiskDescription:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:kDADiskDescriptionMediaWholeKey];
  [(SKDisk *)self setIsWholeDisk:sub_100010328(v4)];
}

- (BOOL)_cacheInfoWithDiskDescription:(id)a3
{
  v4 = a3;
  v5 = [(SKDisk *)self liveDiskIdentifierWithDiskDescription:v4];
  v6 = [(SKDisk *)self privateCache];
  [v6 setLiveDiskIdentifier:v5];

  v7 = [(SKDisk *)self diskIdentifier];
  if (!v7 && ![(SKDisk *)self isValid]|| (v8 = [(SKDisk *)self canUpdateDiskIdentifierWithDiskInfo:v4], v7, v8))
  {
    v9 = [(SKDisk *)self privateCache];
    v10 = [v9 liveDiskIdentifier];
    [(SKDisk *)self setDiskIdentifier:v10];
  }

  v11 = sub_10000BFD0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(SKDisk *)self diskIdentifier];
    *buf = 136315650;
    v37 = "[SKDisk(DaemonAdditions) _cacheInfoWithDiskDescription:]";
    v38 = 2114;
    v39 = v12;
    v40 = 1024;
    v41 = [(SKDisk *)self isValid];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: Caching %{public}@, isValid=%d", buf, 0x1Cu);
  }

  v13 = [(SKDisk *)self diskIdentifier];

  if (v13)
  {
    [(SKDisk *)self _cacheIsWholeDiskWithDiskDescription:v4];
    v14 = [v4 objectForKeyedSubscript:kDADiskDescriptionVolumePathKey];
    v35 = v14;
    if (v14)
    {
      v15 = [v14 path];
      [(SKDisk *)self setMountPoint:v15];
    }

    else
    {
      [(SKDisk *)self setMountPoint:0];
    }

    v16 = [(SKDisk *)self mountPoint];

    if (!v16)
    {
      [(SKDisk *)self setOwnerUID:[(SKDisk *)self _getOwnerUsingStat]];
    }

    v17 = [(SKDisk *)self volumeNameWithDiskDescription:v4];
    [(SKDisk *)self setVolumeName:v17];

    v18 = [v4 objectForKeyedSubscript:kDADiskDescriptionVolumeUUIDKey];

    if (v18)
    {
      v19 = CFUUIDCreateString(0, v18);
      [(SKDisk *)self setVolumeUUID:v19];
    }

    else
    {
      [(SKDisk *)self setVolumeUUID:0];
    }

    v20 = [v4 objectForKeyedSubscript:kDADiskDescriptionMediaSizeKey];
    [(SKDisk *)self setUnformattedSize:sub_100010370(v20)];
    v21 = [v4 objectForKeyedSubscript:kDADiskDescriptionDeviceInternalKey];
    [(SKDisk *)self setIsInternal:sub_100010328(v21)];
    v22 = [v4 objectForKeyedSubscript:kDADiskDescriptionMediaRemovableKey];
    [(SKDisk *)self setIsRemovable:sub_100010328(v22)];
    v23 = [v4 objectForKeyedSubscript:kDADiskDescriptionMediaWritableKey];
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
    v26 = [v4 objectForKeyedSubscript:kDADiskDescriptionDeviceProtocolKey];
    if (sub_1000101BC(v26))
    {
      v27 = [v26 isEqual:@"Virtual Interface"];
    }

    else
    {
      v27 = 0;
    }

    [(SKDisk *)self setIsDiskImage:v27];
    v28 = [v4 objectForKeyedSubscript:kDADiskDescriptionVolumeKindKey];
    v29 = [(SKDisk *)self privateCache];
    [v29 setVolumeKind:v28];

    v30 = [v4 objectForKeyedSubscript:kDADiskDescriptionVolumeTypeKey];
    v31 = [(SKDisk *)self privateCache];
    [v31 setVolumeType:v30];

    v32 = [v4 objectForKeyedSubscript:kDADiskDescriptionMediaContentKey];
    v33 = [(SKDisk *)self privateCache];
    [v33 setRawIOContent:v32];
  }

  return v13 != 0;
}

- (unsigned)_getOwnerUsingStat
{
  memset(&v10, 0, sizeof(v10));
  v3 = [(SKDisk *)self _getIdentifierForStat];
  if (([(SKDisk *)self isIOMediaDisk]& 1) == 0)
  {
    v4 = sub_10000BFD0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ is not an IO media disk, assuming owner is root", buf, 0xCu);
    }

    goto LABEL_8;
  }

  v4 = [NSString stringWithFormat:@"/dev/%@", v3];
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

- (BOOL)_cacheInfoWithIOMedia:(id)a3
{
  v4 = a3;
  v5 = [v4 copyProperties];
  if (v5)
  {
    v6 = [(SKDisk *)self privateCache];
    v7 = [v6 copyHumanIOContentWithMediaDict:v5 isWholeDisk:{-[SKDisk isWholeDisk](self, "isWholeDisk")}];
    [(SKDisk *)self setIoContent:v7];

    if (([(SKDisk *)self isValid]& 1) == 0)
    {
      v8 = [v4 copyPropertyWithClass:objc_opt_class() key:@"UUID"];
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
      v12 = sub_100005EDC(v5, v14);
      -[SKDisk setStartLocation:](self, "setStartLocation:", [v12 unsignedLongLongValue]);

      v9 = v14[0];
    }

    [(SKDisk *)self setIsPartitionDisk:v9 & 1];
    v10 = [v4 copyParentPropertyWithClass:objc_opt_class() key:@"OSInternal"];
    [(SKDisk *)self setIsOSInternal:sub_100010328(v10)];
  }

  else
  {
    v10 = sub_10000BFD0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [(SKDisk *)self diskIdentifier];
      *v14 = 136315394;
      *&v14[4] = "[SKDisk(DaemonAdditions) _cacheInfoWithIOMedia:]";
      v15 = 2114;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s: Failed to get IO media properties for %{public}@", v14, 0x16u);
    }
  }

  return v5 != 0;
}

- (void)_cacheFilesystem
{
  v3 = [(SKDisk *)self filesystem];
  v29 = [v3 majorType];

  if ([v29 isEqualToString:@"hfs"])
  {
    [(SKDisk *)self setSupportsVerify:1];
    [(SKDisk *)self setSupportsRepair:1];
    v4 = [(SKDisk *)self filesystem];
    -[SKDisk setSupportsJournaling:](self, "setSupportsJournaling:", [v4 supportsJournaling]);

    v5 = [(SKDisk *)self privateCache];
    -[SKDisk setIsJournaled:](self, "setIsJournaled:", ([v5 mountFlags] >> 23) & 1);

    v6 = [(SKDisk *)self filesystem];
    -[SKDisk setIsCaseSensitive:](self, "setIsCaseSensitive:", [v6 isCaseSensitive]);

    v7 = [(SKDisk *)self ioContent];
    v8 = [v7 isEqualToString:@"Apple_Boot"];

    if (v8)
    {
      [(SKDisk *)self setRole:kSKDiskRoleBooter];
      v9 = &kSKDiskTypeAppleBoot;
    }

    else
    {
      v14 = [(SKDisk *)self mountPoint];

      if (v14)
      {
        v15 = +[NSFileManager defaultManager];
        v16 = [(SKDisk *)self mountPoint];
        v17 = [v16 stringByAppendingPathComponent:@"/System/Library/CoreServices/Finder.app"];
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

  if ([v29 isEqualToString:@"msdos"])
  {
    [(SKDisk *)self setSupportsVerify:1];
    [(SKDisk *)self setSupportsRepair:1];
    v10 = [(SKDisk *)self isRealEFIPartition];
    v11 = &kSKDiskRoleBooter;
    if (v10)
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

  if ([v29 isEqualToString:@"exfat"])
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

  if ([v29 isEqualToString:@"ntfs"])
  {
    v20 = [(SKDisk *)self mountPoint];
    v21 = [v20 stringByAppendingPathComponent:@"/Windows/System32/ntdll.dll"];

    v22 = [(SKDisk *)self mountPoint];
    if (v22)
    {
      v23 = v22;
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
    v27 = self;
  }

  else
  {
    if ([v29 isEqualToString:@"acfs"])
    {
      [(SKDisk *)self setRole:kSKDiskRoleXSanData];
      [(SKDisk *)self setType:kSKDiskTypeXSanLV];
      v13 = &kSKDiskFileSystemACFS;
      goto LABEL_23;
    }

    [(SKDisk *)self setRole:kSKDiskRoleUnknown];
    [(SKDisk *)self setType:kSKDiskType3rdPartyFilesystem];
    v21 = [NSString stringWithFormat:@"kSKDiskFileSystem_%@", v29];
    v27 = self;
    v28 = v21;
  }

  [(SKDisk *)v27 setFilesystemType:v28];

LABEL_24:
}

- (BOOL)isRealEFIPartition
{
  v3 = [(SKDisk *)self ioContent];
  v4 = [v3 isEqualToString:@"EFI"];

  if (v4)
  {
    v5 = [(SKDisk *)self privateCache];
    v6 = [v5 wholeDADisk];
    v7 = [SKDisk copySortedChildrenWithDADisk:v6 ioMedia:0];

    v8 = [(SKDisk *)self daDisk];
    v9 = [v7 indexOfObject:v8];

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
        v12 = [(SKDisk *)self diskIdentifier];
        v14 = 136315650;
        v15 = "[SKDisk(DaemonAdditions) isRealEFIPartition]";
        v16 = 2114;
        v17 = v12;
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
  v3 = [(SKDisk *)self isWholeDisk];
  v4 = [(SKDisk *)self privateCache];
  v5 = [v4 schemeID];
  if (v3)
  {

    v6 = &kSKDiskTypeAPMWholeDisk;
    v7 = &kSKDiskTypeMBRWholeDisk;
    v8 = &kSKDiskTypeUninitalized;
    if (v5 == 16)
    {
      v8 = &kSKDiskTypeGPTWholeDisk;
    }

    if (v5 != 8)
    {
      v7 = v8;
    }

    if (v5 != 1)
    {
      v6 = v7;
    }

    [(SKDisk *)self setType:*v6];
    v9 = &kSKDiskRolePhysicalDisk;
    goto LABEL_9;
  }

  if (v5 == 512 || ([(SKDisk *)self ioContent], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    v14 = &kSKDiskRoleNoRole;
    goto LABEL_15;
  }

  v11 = [(SKDisk *)self ioContent];
  v12 = [v11 isEqualToString:@"Apple_Boot"];

  if (!v12)
  {
    if ([(SKDisk *)self isRealEFIPartition])
    {
      [(SKDisk *)self setRole:kSKDiskRoleBooter];
      [(SKDisk *)self setType:kSKDiskTypeEFI];
      v16 = &kSKDiskFileSystemFAT;
      goto LABEL_18;
    }

    v18 = [(SKDisk *)self ioContent];
    if ([v18 isEqualToString:@"Apple_HFS"])
    {

LABEL_26:
      [(SKDisk *)self setRole:kSKDiskRoleMacData];
      v13 = &kSKDiskTypeHFS;
      goto LABEL_27;
    }

    v19 = [(SKDisk *)self ioContent];
    v20 = [v19 isEqualToString:@"Apple_RAID"];

    if (v20)
    {
      goto LABEL_26;
    }

    v21 = [(SKDisk *)self ioContent];
    v22 = [v21 isEqualToString:@"Apple_APFS"];

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

    v24 = [(SKDisk *)self ioContent];
    v25 = [v24 isEqualToString:@"Apple_RAID_Offline"];

    if (!v25)
    {
      v26 = [(SKDisk *)self ioContent];
      if ([v26 isEqualToString:@"Apple_KernelCoreDump"])
      {
      }

      else
      {
        v27 = [(SKDisk *)self ioContent];
        v28 = [v27 isEqualToString:@"Apple_SadMac"];

        if (!v28)
        {
          v29 = [(SKDisk *)self privateCache];
          v30 = [v29 rawIOContent];
          v31 = [(SKDisk *)self ioContent];
          v32 = [v30 isEqualToString:v31];

          if (v32)
          {
            v33 = kSKDiskTypeOtherUnrecognized;
            v34 = [(SKDisk *)self privateCache];
            v35 = [v34 rawIOContent];
            v36 = [NSString stringWithFormat:@"%@%@", v33, v35];
            [(SKDisk *)self setType:v36];
          }

          else
          {
            v37 = kSKDiskTypeOtherRecognizable;
            v34 = [(SKDisk *)self ioContent];
            v35 = [NSString stringWithFormat:@"%@%@", v37, v34];
            [(SKDisk *)self setType:v35];
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
  v3 = [(SKDisk *)self privateCache];
  v4 = [v3 volumeKind];

  if (sub_1000101BC(v4))
  {
    goto LABEL_5;
  }

  v5 = [(SKDisk *)self privateCache];
  v6 = [v5 rawIOContent];
  v7 = [v6 isEqualToString:@"41504653-0000-11AA-AA11-00306543ECAC"];

  if (v7)
  {
    v8 = @"apfs";
LABEL_4:

    v4 = v8;
    goto LABEL_5;
  }

  v18 = [(SKDisk *)self ioContent];
  v19 = [v18 isEqualToString:@"Apple_APFS"];

  if (v19)
  {
    goto LABEL_12;
  }

  v22 = [(SKDisk *)self ioContent];
  v23 = [v22 isEqualToString:@"Apple_HFS"];

  if (v23)
  {
    v8 = @"hfs";
    goto LABEL_4;
  }

  v24 = [(SKDisk *)self ioContent];
  v25 = [v24 isEqualToString:@"MS-DOS"];

  if (v25)
  {
    v8 = @"msdos";
    goto LABEL_4;
  }

LABEL_5:
  if (sub_1000101BC(v4))
  {
    v9 = [(SKDisk *)self filesystemWithType:v4];
    if (v9)
    {
      v10 = v9;
      goto LABEL_16;
    }
  }

  v11 = [(SKDisk *)self ioContent];
  v12 = sub_1000101BC(v11);

  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = [(SKDisk *)self ioContent];
  v14 = [v13 isEqualToString:@"EFI"];

  v15 = +[SKDaemonManager sharedManager];
  v16 = v15;
  if (v14)
  {
    v10 = [v15 _filesystemForDMFilesystemType:@"MS-DOS FAT32" isEncrypted:0];
    v17 = v16;
LABEL_15:

    goto LABEL_16;
  }

  v20 = [(SKDisk *)self ioContent];
  v17 = [v16 _filesystemForIOContent:v20];

  if (v17)
  {
    v17 = v17;
    v10 = v17;
    goto LABEL_15;
  }

  v26 = [(SKDisk *)self ioContent];
  v27 = [(SKDisk *)self privateCache];
  v28 = [v27 rawIOContent];
  v29 = [v26 isEqual:v28];

  if (v29)
  {
LABEL_12:
    v10 = 0;
    goto LABEL_16;
  }

  v30 = +[SKDaemonManager sharedManager];
  v31 = [(SKDisk *)self privateCache];
  v32 = [v31 rawIOContent];
  v10 = [v30 _filesystemForIOContent:v32];

  if (v10)
  {
    goto LABEL_15;
  }

LABEL_16:

  return v10;
}

- (id)filesystemWithType:(id)a3
{
  v4 = a3;
  if (([v4 isEqualToString:@"apfs"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"hfs") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"msdos") & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"cd9660"))
  {
    v5 = [(SKDisk *)self privateCache];
    v6 = [v5 volumeType];
    v7 = sub_1000101BC(v6);

    if (v7)
    {
      v8 = [(SKDisk *)self privateCache];
      v9 = [v8 volumeType];

      if (v9)
      {
        v10 = 0;
LABEL_8:
        v11 = +[SKDaemonManager sharedManager];
        v12 = [v11 _filesystemForUnlocalizedName:v9 dmPersonality:v10];

        goto LABEL_11;
      }
    }

    else
    {
      v13 = [(SKDisk *)self mountPoint];
      sub_1000101BC(v13);
    }
  }

  else if ([v4 isEqualToString:@"zfs"])
  {
    v9 = 0;
    v10 = @"ZFS";
    goto LABEL_8;
  }

  v9 = +[SKDaemonManager sharedManager];
  v12 = [v9 _firstFilesystemForMajorType:v4];
LABEL_11:

  return v12;
}

- (BOOL)_cacheSpacesWithPurgeable:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  objc_sync_enter(v4);
  bzero(&v20, 0x878uLL);
  v5 = [(SKDisk *)v4 mountPoint];
  if (v5 && (-[SKDisk mountPoint](v4, "mountPoint"), v6 = objc_claimAutoreleasedReturnValue(), v7 = statfs([v6 fileSystemRepresentation], &v20) == 0, v6, v5, v7))
  {
    [(SKDisk *)v4 setIsWritable:(v20.f_flags & 1) == 0];
    [(SKDisk *)v4 setTotalSpace:v20.f_blocks * v20.f_bsize];
    [(SKDisk *)v4 setFreeSpace:v20.f_bavail * v20.f_bsize];
    f_flags = v20.f_flags;
    v16 = [(SKDisk *)v4 privateCache];
    [v16 setMountFlags:f_flags];

    [(SKDisk *)v4 setOwnerUID:v20.f_owner];
    if (([(SKDisk *)v4 isIOMediaDisk]& 1) == 0)
    {
      [(SKDisk *)v4 setUnformattedSize:[(SKDisk *)v4 totalSpace]];
    }
  }

  else
  {
    [(SKDisk *)v4 setIsWritable:0];
    [(SKDisk *)v4 setTotalSpace:[(SKDisk *)v4 unformattedSize]];
    [(SKDisk *)v4 setFreeSpace:0];
    v8 = [(SKDisk *)v4 privateCache];
    [v8 setMountFlags:0];
  }

  if (v3)
  {
    v9 = [(SKDisk *)v4 mountPoint];

    v10 = 0;
    if (&_CacheDeleteCopyPurgeableSpaceWithInfo && v9)
    {
      v11 = [(SKDisk *)v4 mountPoint];
      v19 = v11;
      [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v12 = CacheDeleteCopyPurgeableSpaceWithInfo();

      if (v12)
      {
        v13 = [v12 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
        v14 = v13;
        if (v13)
        {
          v10 = [v13 unsignedLongLongValue];
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    [(SKDisk *)v4 setPurgeableSpace:v10];
  }

  [(SKDisk *)v4 setAvailableSpace:[(SKDisk *)v4 freeSpace]+ [(SKDisk *)v4 purgeableSpace]];
  objc_sync_exit(v4);

  return 1;
}

+ (id)copySortedChildrenWithDADisk:(id)a3 ioMedia:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    BSDName = DADiskGetBSDName(v6);
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
        if (!v7)
        {
          v7 = [[SKIOMedia alloc] initWithDADisk:v6];
        }

        v13 = [a1 newSortedChildrenWithIOMedia:v7];
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
        v25 = v6;
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

+ (id)newSortedChildrenWithIOMedia:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = &CacheDeleteCopyPurgeableSpaceWithInfo_ptr;
    v5 = [v3 copyPropertyWithClass:objc_opt_class() key:@"BSD Unit"];
    v32 = +[NSMutableArray array];
    v6 = +[SKDaemonManager sharedManager];
    v31 = [v6 diskArbSession];

    v30 = v3;
    v7 = [v3 newIteratorWithOptions:1];
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
            v14 = DADiskCreateFromIOMedia(kCFAllocatorDefault, v31, [(SKIOObject *)v11 ioObj]);
            if (v14)
            {
              v15 = [(SKIOObject *)v11 copyProperties];
              v44[0] = v14;
              v16 = sub_100005EDC(v15, 0);
              v44[1] = v16;
              [NSArray arrayWithObjects:v44 count:2];
              v18 = v17 = v4;
              [v32 addObject:v18];

              v4 = v17;
              p_superclass = (&OBJC_METACLASS___SKTaskExecuter + 8);
            }

            else
            {
              v15 = sub_10000BFD0();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                *buf = v29;
                v39 = "+[SKDisk(DaemonAdditions) newSortedChildrenWithIOMedia:]";
                v40 = 2114;
                v41 = v13;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s: Failed to create DADisk for child disk %{public}@", buf, 0x16u);
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

    v3 = v30;
  }

  else
  {
    v21 = &__NSArray0__struct;
  }

  return v21;
}

- (BOOL)_supportsRecaching
{
  v2 = [(SKDisk *)self diskIdentifier];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)reProbeWithError:(id *)a3
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
  v7 = [SKMountOperation mountWithDisk:self options:v6 error:a3];

  return v7;
}

@end