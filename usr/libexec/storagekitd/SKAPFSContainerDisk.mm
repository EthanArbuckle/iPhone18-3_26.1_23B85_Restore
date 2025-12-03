@interface SKAPFSContainerDisk
+ (id)copyExtendedSpaceInfoWithDiskIdentifier:(id)identifier containerBSDName:(id)name;
+ (id)copyPhysicalStoresMediaWithDADisk:(id)disk;
- (BOOL)_cacheInfo;
- (BOOL)_cacheSpacesWithPurgeable:(BOOL)purgeable;
- (BOOL)cleanupWithError:(id *)error;
- (SKAPFSContainerDisk)initWithPhysicalStoreDisk:(id)disk;
- (id)copyDesignatedPhysicalStoreUUID;
- (id)copyPhysicalStoresIOMedia;
- (id)copyPhysicalStoresUUIDs;
@end

@implementation SKAPFSContainerDisk

- (BOOL)_cacheInfo
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10.receiver = selfCopy;
  v10.super_class = SKAPFSContainerDisk;
  if (![(SKAPFSContainerDisk *)&v10 _cacheInfo])
  {
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  if (([(SKAPFSContainerDisk *)selfCopy isLiveFSAPFSDisk]& 1) == 0)
  {
    mediaUUID = [(SKAPFSContainerDisk *)selfCopy mediaUUID];
    v4 = mediaUUID == 0;

    if (v4)
    {
      v7 = sub_10000BFD0();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        diskIdentifier = [(SKAPFSContainerDisk *)selfCopy diskIdentifier];
        *buf = 136315394;
        v12 = "[SKAPFSContainerDisk(Daemon) _cacheInfo]";
        v13 = 2114;
        v14 = diskIdentifier;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s: APFS container %{public}@ has no UUID", buf, 0x16u);
      }

      goto LABEL_8;
    }
  }

  copyDesignatedPhysicalStoreUUID = [(SKAPFSContainerDisk *)selfCopy copyDesignatedPhysicalStoreUUID];
  [(SKAPFSContainerDisk *)selfCopy setDesignatedPSUUID:copyDesignatedPhysicalStoreUUID];

  [(SKAPFSContainerDisk *)selfCopy setRole:kSKDiskRoleStorageImplementation];
  [(SKAPFSContainerDisk *)selfCopy setType:kSKDiskTypeAPFSContainer];
  [(SKAPFSContainerDisk *)selfCopy setSupportsVerify:1];
  [(SKAPFSContainerDisk *)selfCopy setSupportsRepair:1];
  [(SKAPFSContainerDisk *)selfCopy setFilesystem:0];
  [(SKAPFSContainerDisk *)selfCopy setFilesystemType:kSKDiskFileSystemUndefined];
  [(SKAPFSContainerDisk *)selfCopy setVolumeName:0];
  [(SKAPFSContainerDisk *)selfCopy setVolumeUUID:0];
  v6 = 1;
LABEL_9:
  objc_sync_exit(selfCopy);

  return v6;
}

- (BOOL)_cacheSpacesWithPurgeable:(BOOL)purgeable
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (([(SKAPFSContainerDisk *)selfCopy isLiveFSAPFSDisk]& 1) == 0)
  {
    diskIdentifier = [(SKAPFSContainerDisk *)selfCopy diskIdentifier];
    diskIdentifier2 = [(SKAPFSContainerDisk *)selfCopy diskIdentifier];
    v6 = [SKAPFSContainerDisk copyExtendedSpaceInfoWithDiskIdentifier:diskIdentifier containerBSDName:diskIdentifier2];

    v7 = [v6 objectForKeyedSubscript:@"size"];
    [(SKAPFSContainerDisk *)selfCopy setTotalSpace:sub_100010370(v7)];

    v8 = [v6 objectForKeyedSubscript:@"used"];
    v9 = sub_100010370(v8);

    v10 = [v6 objectForKeyedSubscript:@"reserve"];
    v11 = sub_100010370(v10);

    v12 = v9 + v11;
    if ([(SKAPFSContainerDisk *)selfCopy totalSpace]<= v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = [(SKAPFSContainerDisk *)selfCopy totalSpace]- v12;
    }

    [(SKAPFSContainerDisk *)selfCopy setAvailableSpace:v13];
    [(SKAPFSContainerDisk *)selfCopy setFreeSpace:v13];
  }

  objc_sync_exit(selfCopy);

  return 1;
}

+ (id)copyPhysicalStoresMediaWithDADisk:(id)disk
{
  diskCopy = disk;
  v4 = +[NSMutableArray array];
  v5 = [[SKIOMedia alloc] initWithDADisk:diskCopy];
  v6 = v5;
  if (v5)
  {
    copyParent = [(SKIOObject *)v5 copyParent];
    v8 = copyParent;
    if (copyParent)
    {
      v9 = [copyParent newIteratorWithOptions:2];
      v10 = [(SKIOObject *)[SKIOMedia alloc] initWithIteratorNext:v9];
      if (v10)
      {
        v11 = v10;
        do
        {
          if ([v9 invalidated])
          {
            [v4 removeAllObjects];
          }

          if (IOObjectConformsTo([(SKIOObject *)v11 ioObj], "IOMedia"))
          {
            [v4 addObject:v11];
          }

          v12 = [(SKIOObject *)[SKIOMedia alloc] initWithIteratorNext:v9];

          v11 = v12;
        }

        while (v12);
      }

      v13 = v4;
    }

    else
    {
      v15 = v4;
    }
  }

  else
  {
    v14 = v4;
  }

  return v4;
}

- (id)copyPhysicalStoresIOMedia
{
  if ([(SKAPFSContainerDisk *)self isLiveFSAPFSDisk])
  {
    v3 = [SKIOMedia alloc];
    daDisk = [(SKAPFSContainerDisk *)self daDisk];
    v5 = [(SKIOMedia *)v3 initWithDADisk:daDisk];

    if (v5)
    {
      v10 = v5;
      v6 = [NSArray arrayWithObjects:&v10 count:1];
    }

    else
    {
      v6 = &__NSArray0__struct;
    }

    return v6;
  }

  else
  {
    daDisk2 = [(SKAPFSContainerDisk *)self daDisk];
    v8 = [SKAPFSContainerDisk copyPhysicalStoresMediaWithDADisk:daDisk2];

    return v8;
  }
}

- (id)copyPhysicalStoresUUIDs
{
  copyPhysicalStoresIOMedia = [(SKAPFSContainerDisk *)self copyPhysicalStoresIOMedia];
  v3 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = copyPhysicalStoresIOMedia;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) copyPropertyWithClass:objc_opt_class() key:{@"UUID", v11}];
        if (v9)
        {
          [v3 addObject:v9];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)copyDesignatedPhysicalStoreUUID
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  copyPhysicalStoresIOMedia = [(SKAPFSContainerDisk *)self copyPhysicalStoresIOMedia];
  v3 = [copyPhysicalStoresIOMedia countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(copyPhysicalStoresIOMedia);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 copyPropertyWithClass:objc_opt_class() key:{@"UUID", v14}];
        v10 = v9;
        if (v9)
        {
          if (v5)
          {
            v11 = [v8 copyPropertyWithClass:objc_opt_class() key:@"TierType"];
            v12 = v11;
            if (v11 && ([v11 isEqualToString:@"Secondary"] & 1) != 0)
            {

              goto LABEL_18;
            }
          }

          else
          {
            v5 = v9;
          }
        }
      }

      v4 = [copyPhysicalStoresIOMedia countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v5 = 0;
  }

  v5 = v5;
  v10 = v5;
LABEL_18:

  return v10;
}

+ (id)copyExtendedSpaceInfoWithDiskIdentifier:(id)identifier containerBSDName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v7 = +[SKDaemonManager sharedManager];
  v8 = [v7 copyExtendedDiskInfoWithDiskIdentifier:identifierCopy];

  if (!v8)
  {
    if (nameCopy)
    {
      v9 = sub_10000BFD0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v14 = "+[SKAPFSContainerDisk(Daemon) copyExtendedSpaceInfoWithDiskIdentifier:containerBSDName:]";
        v15 = 2114;
        v16 = nameCopy;
        v17 = 2114;
        v18 = identifierCopy;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Caching APFS extended info for %{public}@, asked by %{public}@", buf, 0x20u);
      }

      [nameCopy fileSystemRepresentation];
      v10 = APFSExtendedSpaceInfo();
      v11 = sub_10000BFD0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v14 = "+[SKAPFSContainerDisk(Daemon) copyExtendedSpaceInfoWithDiskIdentifier:containerBSDName:]";
        v15 = 2114;
        v16 = nameCopy;
        v17 = 1024;
        LODWORD(v18) = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s: APFSExtendedSpaceInfo failed for %{public}@ with error %d", buf, 0x1Cu);
      }

      v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (SKAPFSContainerDisk)initWithPhysicalStoreDisk:(id)disk
{
  diskCopy = disk;
  v5 = [(SKAPFSContainerDisk *)self init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_6;
  }

  if (!diskCopy)
  {
    goto LABEL_10;
  }

  [(SKAPFSContainerDisk *)v5 setDaDisk:diskCopy];
  BSDName = DADiskGetBSDName(diskCopy);
  if (!BSDName)
  {
    v15 = sub_10000BFD0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[SKAPFSContainerDisk(Daemon) initWithPhysicalStoreDisk:]";
      v19 = 2112;
      v20 = diskCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s: Failed to get BSD name of %@", buf, 0x16u);
    }

    goto LABEL_10;
  }

  v8 = [[NSString alloc] initWithUTF8String:BSDName];
  privateCache = [(SKAPFSContainerDisk *)v6 privateCache];
  [privateCache setLiveDiskIdentifier:v8];

  v10 = [NSString alloc];
  privateCache2 = [(SKAPFSContainerDisk *)v6 privateCache];
  liveDiskIdentifier = [privateCache2 liveDiskIdentifier];
  v13 = [v10 initWithFormat:@"apfs://%@", liveDiskIdentifier];
  [(SKAPFSContainerDisk *)v6 setDiskIdentifier:v13];

  if (![(SKAPFSContainerDisk *)v6 _cacheInfo])
  {
LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  [(SKAPFSContainerDisk *)v6 setIsValid:1];
LABEL_6:
  v14 = v6;
LABEL_11:

  return v14;
}

- (BOOL)cleanupWithError:(id *)error
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  volumes = [(SKAPFSContainerDisk *)self volumes];
  v6 = [volumes countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(volumes);
        }

        if (![*(*(&v16 + 1) + 8 * i) cleanupWithError:error])
        {
          v14 = 0;
          goto LABEL_12;
        }
      }

      v7 = [volumes countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if (![(SKAPFSContainerDisk *)self isIOMediaDisk])
  {
    return 1;
  }

  diskIdentifier = [(SKAPFSContainerDisk *)self diskIdentifier];
  volumes = [NSString stringWithFormat:@"/dev/%@", diskIdentifier];

  [volumes UTF8String];
  APFSContainerWipeVolumeKeys();
  v11 = [SKIOMedia alloc];
  diskIdentifier2 = [(SKAPFSContainerDisk *)self diskIdentifier];
  v13 = [(SKIOMedia *)v11 initWithDevName:diskIdentifier2];

  [(SKIOObject *)v13 waitIOKitQuiet];
  v14 = 1;
LABEL_12:

  return v14;
}

@end