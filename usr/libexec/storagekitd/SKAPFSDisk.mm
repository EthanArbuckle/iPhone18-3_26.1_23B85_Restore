@interface SKAPFSDisk
+ (BOOL)isLIFSAPFSWithDiskDescription:(id)description;
- (BOOL)_cacheInfoForDADisk:(id)disk;
- (BOOL)canResize;
- (BOOL)canUpdateDiskIdentifierWithDiskInfo:(id)info;
- (BOOL)cleanupWithError:(id *)error;
- (NSString)containerBSDName;
- (id)getDataVolumeBSD;
- (id)liveDiskIdentifierWithDiskDescription:(id)description;
- (id)volumeNameWithDiskDescription:(id)description;
- (void)_cacheVolumeGroup;
- (void)cacheEncryptionInfo;
@end

@implementation SKAPFSDisk

- (BOOL)_cacheInfoForDADisk:(id)disk
{
  diskCopy = disk;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v25.receiver = selfCopy;
  v25.super_class = SKAPFSDisk;
  if (![(SKAPFSDisk *)&v25 _cacheInfoForDADisk:diskCopy])
  {
    goto LABEL_12;
  }

  [(SKAPFSDisk *)selfCopy setType:kSKDiskTypeAPFSLV];
  [(SKAPFSDisk *)selfCopy setFilesystemType:kSKDiskFileSystemAPFS];
  if ([(SKAPFSDisk *)selfCopy isIOMediaDisk])
  {
    mediaUUID = [(SKAPFSDisk *)selfCopy mediaUUID];
    v7 = mediaUUID == 0;

    if (!v7)
    {
      [(SKAPFSDisk *)selfCopy setSupportsVerify:1];
      [(SKAPFSDisk *)selfCopy setSupportsRepair:1];
      v24 = 0;
      diskIdentifier = [(SKAPFSDisk *)selfCopy diskIdentifier];
      v9 = diskIdentifier;
      [diskIdentifier fileSystemRepresentation];
      APFSVolumeRole();

      [(SKAPFSDisk *)selfCopy setApfsRole:SKAPFSVolumeRoleNone];
      [(SKAPFSDisk *)selfCopy setRole:kSKDiskRoleMacData];
      _getFilesystem = [(SKAPFSDisk *)selfCopy _getFilesystem];
      [(SKAPFSDisk *)selfCopy setFilesystem:_getFilesystem];

      [(SKAPFSDisk *)selfCopy _cacheVolumeGroup];
      [(SKAPFSDisk *)selfCopy cacheEncryptionInfo];
      goto LABEL_13;
    }

    v13 = sub_10000BFD0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      diskIdentifier2 = [(SKAPFSDisk *)selfCopy diskIdentifier];
      *buf = 136315394;
      v27 = "[SKAPFSDisk(Daemon) _cacheInfoForDADisk:]";
      v28 = 2114;
      v29 = diskIdentifier2;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s: APFS volume %{public}@ has no UUID", buf, 0x16u);
    }

LABEL_12:
    v15 = 0;
    goto LABEL_16;
  }

  if ([(SKAPFSDisk *)selfCopy isIOSRootSnapshot])
  {
    _getFilesystem2 = [(SKAPFSDisk *)selfCopy _getFilesystem];
    [(SKAPFSDisk *)selfCopy setFilesystem:_getFilesystem2];

    [(SKAPFSDisk *)selfCopy setApfsRole:SKAPFSVolumeRoleNone];
    v11 = &kSKDiskRoleSnapshot;
  }

  else
  {
    v12 = [SKFilesystem filesystemFor:@"apfs" caseSensitive:0 encrypted:0 isExtension:1];
    [(SKAPFSDisk *)selfCopy setFilesystem:v12];

    [(SKAPFSDisk *)selfCopy setApfsRole:SKAPFSVolumeRoleNone];
    v11 = &kSKDiskRoleMacData;
  }

  [(SKAPFSDisk *)selfCopy setRole:*v11];
LABEL_13:
  filesystem = [(SKAPFSDisk *)selfCopy filesystem];
  -[SKAPFSDisk setIsCaseSensitive:](selfCopy, "setIsCaseSensitive:", [filesystem isCaseSensitive]);

  filesystem2 = [(SKAPFSDisk *)selfCopy filesystem];
  isEncrypted = [filesystem2 isEncrypted];
  isEncrypted2 = [(SKAPFSDisk *)selfCopy isEncrypted];

  if (isEncrypted != isEncrypted2)
  {
    v21 = +[SKDaemonManager sharedManager];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100010F84;
    v23[3] = &unk_100049118;
    v23[4] = selfCopy;
    [v21 filesystemsWithCallbackBlock:v23];
  }

  v15 = 1;
LABEL_16:
  objc_sync_exit(selfCopy);

  return v15;
}

- (id)liveDiskIdentifierWithDiskDescription:(id)description
{
  descriptionCopy = description;
  v4 = [SKAPFSDisk isLIFSAPFSWithDiskDescription:descriptionCopy];
  v5 = &kDADiskDescriptionVolumeLifsURLKey;
  if (!v4)
  {
    v5 = &kDADiskDescriptionMediaBSDNameKey;
  }

  v6 = [descriptionCopy objectForKeyedSubscript:*v5];

  return v6;
}

- (id)volumeNameWithDiskDescription:(id)description
{
  descriptionCopy = description;
  if ([(SKAPFSDisk *)self isLiveFSAPFSDisk])
  {
    v5 = [kSKDiskIdentifierLiveFSAPFSPrefix length];
    diskIdentifier = [(SKAPFSDisk *)self diskIdentifier];
    diskIdentifier2 = [(SKAPFSDisk *)self diskIdentifier];
    v8 = [diskIdentifier rangeOfString:@"/" options:0 range:{v5, objc_msgSend(diskIdentifier2, "length") - v5}];

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = sub_10000BFD0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        diskIdentifier3 = [(SKAPFSDisk *)self diskIdentifier];
        *buf = 136315394;
        v16 = "[SKAPFSDisk(Daemon) volumeNameWithDiskDescription:]";
        v17 = 2112;
        v18 = diskIdentifier3;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s: Invalid volume name in LiveFS URL %@", buf, 0x16u);
      }

      v11 = 0;
    }

    else
    {
      diskIdentifier4 = [(SKAPFSDisk *)self diskIdentifier];
      v11 = [diskIdentifier4 substringFromIndex:v8 + 1];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SKAPFSDisk;
    v11 = [(SKAPFSDisk *)&v14 volumeNameWithDiskDescription:descriptionCopy];
  }

  return v11;
}

- (void)cacheEncryptionInfo
{
  privateCache = [(SKAPFSDisk *)self privateCache];
  liveDiskIdentifier = [privateCache liveDiskIdentifier];

  apfsRole = [(SKAPFSDisk *)self apfsRole];
  if (apfsRole == SKAPFSVolumeRoleSystem)
  {
    apfsVolumeGroupUUID = [(SKAPFSDisk *)self apfsVolumeGroupUUID];

    if (!apfsVolumeGroupUUID)
    {
      goto LABEL_5;
    }

    [(SKAPFSDisk *)self getDataVolumeBSD];
    liveDiskIdentifier = apfsRole = liveDiskIdentifier;
  }

LABEL_5:
  if (liveDiskIdentifier)
  {
    v7 = +[SKDaemonManager sharedManager];
    diskArbSession = [v7 diskArbSession];

    v9 = DADiskCreateFromBSDName(kCFAllocatorDefault, diskArbSession, [liveDiskIdentifier fileSystemRepresentation]);
    if (v9)
    {
      v10 = [[SKIOMedia alloc] initWithDADisk:v9];
      p_super = &v10->super.super;
      if (v10)
      {
        copyProperties = [(SKIOObject *)v10 copyProperties];
        v13 = [copyProperties objectForKeyedSubscript:@"Encrypted"];
        v14 = sub_100010328(v13);

        v15 = [copyProperties objectForKeyedSubscript:@"Effaceable"];
        v16 = sub_100010328(v15);

        v17 = [copyProperties objectForKeyedSubscript:@"Locked"];
        v18 = sub_100010328(v17);

        [(SKAPFSDisk *)self setIsEncrypted:(v14 | v16) & 1];
        buf[0] = 0;
        if ([(SKAPFSDisk *)self isEncrypted])
        {
          [liveDiskIdentifier fileSystemRepresentation];
          APFSVolumeGetVEKState();
          v19 = buf[0] ^ 1;
        }

        else
        {
          v19 = 1;
        }

        [(SKAPFSDisk *)self setDefaultEffaceable:v19 & 1];
        if ([(SKAPFSDisk *)self isEncrypted])
        {
          if (v19 & 1 | ((v18 & 1) == 0))
          {
            v20 = [p_super copyParentPropertyWithClass:objc_opt_class() key:@"AppleTDMLocked"];
            [(SKAPFSDisk *)self setIsLocked:sub_100010328(v20)];
          }

          else
          {
            [(SKAPFSDisk *)self setIsLocked:1];
          }
        }
      }
    }

    else
    {
      p_super = sub_10000BFD0();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v22 = "[SKAPFSDisk(Daemon) cacheEncryptionInfo]";
        v23 = 2114;
        v24 = liveDiskIdentifier;
        _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_ERROR, "%s: Cannot create DADisk for data volume %{public}@", buf, 0x16u);
      }
    }
  }
}

- (void)_cacheVolumeGroup
{
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  diskIdentifier = [(SKAPFSDisk *)self diskIdentifier];
  v4 = [diskIdentifier substringFromIndex:4];
  v5 = [v4 componentsSeparatedByString:@"s"];

  if ([v5 count] > 1)
  {
    v8 = [v5 objectAtIndex:0];
    v6 = [NSString stringWithFormat:@"/dev/disk%@", v8];

    v9 = [v5 objectAtIndex:1];
    [v9 intValue];

    [v6 fileSystemRepresentation];
    if (APFSContainerVolumeGroupGet())
    {
      v10 = sub_10000BFD0();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to read volume group UUID", buf, 2u);
      }
    }

    [(SKAPFSDisk *)self setApfsVolumeGroupUUID:0];
  }

  else
  {
    v6 = sub_10000BFD0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      diskIdentifier2 = [(SKAPFSDisk *)self diskIdentifier];
      *buf = 136315394;
      v12 = "[SKAPFSDisk(Daemon) _cacheVolumeGroup]";
      v13 = 2114;
      v14 = diskIdentifier2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s: Invalid BSD name for APFS volume: %{public}@", buf, 0x16u);
    }
  }
}

- (BOOL)canResize
{
  container = [(SKAPFSDisk *)self container];
  designatedPhysicalStore = [container designatedPhysicalStore];
  canResize = [designatedPhysicalStore canResize];

  return canResize;
}

- (NSString)containerBSDName
{
  privateCache = [(SKAPFSDisk *)self privateCache];
  wholeDADisk = [privateCache wholeDADisk];
  BSDName = DADiskGetBSDName(wholeDADisk);

  if (BSDName)
  {
    v6 = [NSString stringWithUTF8String:BSDName];
  }

  else
  {
    v7 = sub_10000BFD0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      diskIdentifier = [(SKAPFSDisk *)self diskIdentifier];
      v10 = 136315394;
      v11 = "[SKAPFSDisk(Daemon) containerBSDName]";
      v12 = 2114;
      v13 = diskIdentifier;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s: Failed getting container BSD name for %{public}@", &v10, 0x16u);
    }

    v6 = 0;
  }

  return v6;
}

- (id)getDataVolumeBSD
{
  containerBSDName = [(SKAPFSDisk *)self containerBSDName];
  if (containerBSDName)
  {
    v4 = [NSUUID alloc];
    apfsVolumeGroupUUID = [(SKAPFSDisk *)self apfsVolumeGroupUUID];
    v6 = [v4 initWithUUIDString:apfsVolumeGroupUUID];

    v35[0] = 0;
    v35[1] = 0;
    [v6 getUUIDBytes:v35];
    v27 = 0;
    [containerBSDName UTF8String];
    Volumes = APFSContainerVolumeGroupGetVolumes();
    if (Volumes)
    {
      v8 = Volumes;
      v9 = sub_10000BFD0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        apfsVolumeGroupUUID2 = [(SKAPFSDisk *)self apfsVolumeGroupUUID];
        buf = 136315650;
        v30 = "[SKAPFSDisk(Daemon) getDataVolumeBSD]";
        v31 = 2114;
        v32 = apfsVolumeGroupUUID2;
        v33 = 1024;
        v34 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s: Failed to get volumes in APFS group %{public}@, err %d", &buf, 0x1Cu);
      }
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v9 = v27;
      v11 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v24;
        v22 = v6;
        while (2)
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v24 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v15 = [NSString stringWithFormat:@"%@s%@", containerBSDName, *(*(&v23 + 1) + 8 * i)];
            [v15 fileSystemRepresentation];
            v16 = APFSVolumeRole();
            if (v16)
            {
              v19 = v16;
              v20 = sub_10000BFD0();
              v6 = v22;
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                buf = 136315650;
                v30 = "[SKAPFSDisk(Daemon) getDataVolumeBSD]";
                v31 = 2114;
                v32 = v15;
                v33 = 1024;
                v34 = v19;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: Failed to get volume role for %{public}@, err %d", &buf, 0x1Cu);
              }

              v17 = v9;
              goto LABEL_21;
            }
          }

          v12 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
          v6 = v22;
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v17 = sub_10000BFD0();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        apfsVolumeGroupUUID3 = [(SKAPFSDisk *)self apfsVolumeGroupUUID];
        buf = 136315394;
        v30 = "[SKAPFSDisk(Daemon) getDataVolumeBSD]";
        v31 = 2114;
        v32 = apfsVolumeGroupUUID3;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s: Failed to find data volume in APFS group %{public}@", &buf, 0x16u);
      }

LABEL_21:
    }
  }

  return 0;
}

+ (BOOL)isLIFSAPFSWithDiskDescription:(id)description
{
  v3 = [description objectForKeyedSubscript:kDADiskDescriptionVolumeLifsURLKey];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 hasPrefix:@"apfs://"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)canUpdateDiskIdentifierWithDiskInfo:(id)info
{
  infoCopy = info;
  v4 = [objc_opt_class() isLIFSAPFSWithDiskDescription:infoCopy];

  return v4;
}

- (BOOL)cleanupWithError:(id *)error
{
  if (![(SKAPFSDisk *)self isIOMediaDisk])
  {
    return 1;
  }

  diskIdentifier = [(SKAPFSDisk *)self diskIdentifier];
  v6 = SK_DM_APFSUtils_deleteVolume(diskIdentifier);

  if (error)
  {
    if (v6)
    {
      *error = [SKError errorWithOSStatus:v6 error:error];
    }
  }

  return v6 == 0;
}

@end