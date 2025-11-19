@interface SKAPFSContainerDisk
+ (id)copyExtendedSpaceInfoWithDiskIdentifier:(id)a3 containerBSDName:(id)a4;
+ (id)copyPhysicalStoresMediaWithDADisk:(id)a3;
- (BOOL)_cacheInfo;
- (BOOL)_cacheSpacesWithPurgeable:(BOOL)a3;
- (BOOL)cleanupWithError:(id *)a3;
- (SKAPFSContainerDisk)initWithPhysicalStoreDisk:(id)a3;
- (id)copyDesignatedPhysicalStoreUUID;
- (id)copyPhysicalStoresIOMedia;
- (id)copyPhysicalStoresUUIDs;
@end

@implementation SKAPFSContainerDisk

- (BOOL)_cacheInfo
{
  v2 = self;
  objc_sync_enter(v2);
  v10.receiver = v2;
  v10.super_class = SKAPFSContainerDisk;
  if (![(SKAPFSContainerDisk *)&v10 _cacheInfo])
  {
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  if (([(SKAPFSContainerDisk *)v2 isLiveFSAPFSDisk]& 1) == 0)
  {
    v3 = [(SKAPFSContainerDisk *)v2 mediaUUID];
    v4 = v3 == 0;

    if (v4)
    {
      v7 = sub_10000BFD0();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [(SKAPFSContainerDisk *)v2 diskIdentifier];
        *buf = 136315394;
        v12 = "[SKAPFSContainerDisk(Daemon) _cacheInfo]";
        v13 = 2114;
        v14 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s: APFS container %{public}@ has no UUID", buf, 0x16u);
      }

      goto LABEL_8;
    }
  }

  v5 = [(SKAPFSContainerDisk *)v2 copyDesignatedPhysicalStoreUUID];
  [(SKAPFSContainerDisk *)v2 setDesignatedPSUUID:v5];

  [(SKAPFSContainerDisk *)v2 setRole:kSKDiskRoleStorageImplementation];
  [(SKAPFSContainerDisk *)v2 setType:kSKDiskTypeAPFSContainer];
  [(SKAPFSContainerDisk *)v2 setSupportsVerify:1];
  [(SKAPFSContainerDisk *)v2 setSupportsRepair:1];
  [(SKAPFSContainerDisk *)v2 setFilesystem:0];
  [(SKAPFSContainerDisk *)v2 setFilesystemType:kSKDiskFileSystemUndefined];
  [(SKAPFSContainerDisk *)v2 setVolumeName:0];
  [(SKAPFSContainerDisk *)v2 setVolumeUUID:0];
  v6 = 1;
LABEL_9:
  objc_sync_exit(v2);

  return v6;
}

- (BOOL)_cacheSpacesWithPurgeable:(BOOL)a3
{
  v3 = self;
  objc_sync_enter(v3);
  if (([(SKAPFSContainerDisk *)v3 isLiveFSAPFSDisk]& 1) == 0)
  {
    v4 = [(SKAPFSContainerDisk *)v3 diskIdentifier];
    v5 = [(SKAPFSContainerDisk *)v3 diskIdentifier];
    v6 = [SKAPFSContainerDisk copyExtendedSpaceInfoWithDiskIdentifier:v4 containerBSDName:v5];

    v7 = [v6 objectForKeyedSubscript:@"size"];
    [(SKAPFSContainerDisk *)v3 setTotalSpace:sub_100010370(v7)];

    v8 = [v6 objectForKeyedSubscript:@"used"];
    v9 = sub_100010370(v8);

    v10 = [v6 objectForKeyedSubscript:@"reserve"];
    v11 = sub_100010370(v10);

    v12 = v9 + v11;
    if ([(SKAPFSContainerDisk *)v3 totalSpace]<= v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = [(SKAPFSContainerDisk *)v3 totalSpace]- v12;
    }

    [(SKAPFSContainerDisk *)v3 setAvailableSpace:v13];
    [(SKAPFSContainerDisk *)v3 setFreeSpace:v13];
  }

  objc_sync_exit(v3);

  return 1;
}

+ (id)copyPhysicalStoresMediaWithDADisk:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v5 = [[SKIOMedia alloc] initWithDADisk:v3];
  v6 = v5;
  if (v5)
  {
    v7 = [(SKIOObject *)v5 copyParent];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 newIteratorWithOptions:2];
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
    v4 = [(SKAPFSContainerDisk *)self daDisk];
    v5 = [(SKIOMedia *)v3 initWithDADisk:v4];

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
    v7 = [(SKAPFSContainerDisk *)self daDisk];
    v8 = [SKAPFSContainerDisk copyPhysicalStoresMediaWithDADisk:v7];

    return v8;
  }
}

- (id)copyPhysicalStoresUUIDs
{
  v2 = [(SKAPFSContainerDisk *)self copyPhysicalStoresIOMedia];
  v3 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v2;
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
  v2 = [(SKAPFSContainerDisk *)self copyPhysicalStoresIOMedia];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v2);
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

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

+ (id)copyExtendedSpaceInfoWithDiskIdentifier:(id)a3 containerBSDName:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[SKDaemonManager sharedManager];
  v8 = [v7 copyExtendedDiskInfoWithDiskIdentifier:v5];

  if (!v8)
  {
    if (v6)
    {
      v9 = sub_10000BFD0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v14 = "+[SKAPFSContainerDisk(Daemon) copyExtendedSpaceInfoWithDiskIdentifier:containerBSDName:]";
        v15 = 2114;
        v16 = v6;
        v17 = 2114;
        v18 = v5;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Caching APFS extended info for %{public}@, asked by %{public}@", buf, 0x20u);
      }

      [v6 fileSystemRepresentation];
      v10 = APFSExtendedSpaceInfo();
      v11 = sub_10000BFD0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v14 = "+[SKAPFSContainerDisk(Daemon) copyExtendedSpaceInfoWithDiskIdentifier:containerBSDName:]";
        v15 = 2114;
        v16 = v6;
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

- (SKAPFSContainerDisk)initWithPhysicalStoreDisk:(id)a3
{
  v4 = a3;
  v5 = [(SKAPFSContainerDisk *)self init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_6;
  }

  if (!v4)
  {
    goto LABEL_10;
  }

  [(SKAPFSContainerDisk *)v5 setDaDisk:v4];
  BSDName = DADiskGetBSDName(v4);
  if (!BSDName)
  {
    v15 = sub_10000BFD0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[SKAPFSContainerDisk(Daemon) initWithPhysicalStoreDisk:]";
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s: Failed to get BSD name of %@", buf, 0x16u);
    }

    goto LABEL_10;
  }

  v8 = [[NSString alloc] initWithUTF8String:BSDName];
  v9 = [(SKAPFSContainerDisk *)v6 privateCache];
  [v9 setLiveDiskIdentifier:v8];

  v10 = [NSString alloc];
  v11 = [(SKAPFSContainerDisk *)v6 privateCache];
  v12 = [v11 liveDiskIdentifier];
  v13 = [v10 initWithFormat:@"apfs://%@", v12];
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

- (BOOL)cleanupWithError:(id *)a3
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(SKAPFSContainerDisk *)self volumes];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v5);
        }

        if (![*(*(&v16 + 1) + 8 * i) cleanupWithError:a3])
        {
          v14 = 0;
          goto LABEL_12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

  v10 = [(SKAPFSContainerDisk *)self diskIdentifier];
  v5 = [NSString stringWithFormat:@"/dev/%@", v10];

  [v5 UTF8String];
  APFSContainerWipeVolumeKeys();
  v11 = [SKIOMedia alloc];
  v12 = [(SKAPFSContainerDisk *)self diskIdentifier];
  v13 = [(SKIOMedia *)v11 initWithDevName:v12];

  [(SKIOObject *)v13 waitIOKitQuiet];
  v14 = 1;
LABEL_12:

  return v14;
}

@end