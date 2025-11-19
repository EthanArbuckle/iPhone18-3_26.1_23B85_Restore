@interface SKAPFSStoreDisk
+ (BOOL)isIOMediaStoreWithDisk:(id)a3;
+ (BOOL)isLiveFSStoreWithRawIOContent:(id)a3 diskDesc:(id)a4;
- (BOOL)_cacheContainerInfo;
- (BOOL)_cacheInfo;
- (BOOL)cleanupWithError:(id *)a3;
@end

@implementation SKAPFSStoreDisk

- (BOOL)_cacheInfo
{
  v2 = self;
  objc_sync_enter(v2);
  v7.receiver = v2;
  v7.super_class = SKAPFSStoreDisk;
  if ([(SKAPFSStoreDisk *)&v7 _cacheInfo]&& [(SKAPFSStoreDisk *)v2 _cacheContainerInfo])
  {
    v3 = [(SKAPFSStoreDisk *)v2 mediaUUID];

    if (!v3)
    {
      v4 = [(SKAPFSStoreDisk *)v2 apfsContainerUUID];
      [(SKAPFSStoreDisk *)v2 setMediaUUID:v4];
    }

    [(SKAPFSStoreDisk *)v2 setSupportsRepair:1];
    [(SKAPFSStoreDisk *)v2 setSupportsVerify:1];
    [(SKAPFSStoreDisk *)v2 setRole:kSKDiskRoleStorageImplementation];
    [(SKAPFSStoreDisk *)v2 setType:kSKDiskTypeAPFSPS];
    [(SKAPFSStoreDisk *)v2 setFilesystem:0];
    [(SKAPFSStoreDisk *)v2 setFilesystemType:kSKDiskFileSystemUndefined];
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  objc_sync_exit(v2);

  return v5;
}

- (BOOL)_cacheContainerInfo
{
  v3 = [(SKAPFSStoreDisk *)self privateCache];
  v4 = [v3 isLiveFSContainer];

  if (!v4)
  {
    v9 = [SKIOMedia alloc];
    v10 = [(SKAPFSStoreDisk *)self daDisk];
    v11 = [(SKIOMedia *)v9 initWithDADisk:v10];

    if (v11)
    {
      v12 = [(SKIOObject *)v11 newIteratorWithOptions:1];
      v13 = [(SKIOObject *)[SKIOMedia alloc] initWithIteratorNext:v12];
      if (v13)
      {
        v14 = v13;
        do
        {
          if (IOObjectConformsTo([(SKIOObject *)v14 ioObj], "AppleAPFSMedia"))
          {
            v15 = [(SKIOObject *)v14 copyPropertyWithClass:objc_opt_class() key:@"BSD Name"];
            [(SKAPFSStoreDisk *)self setApfsContainerIdentifier:v15];
          }

          else if (IOObjectConformsTo([(SKIOObject *)v14 ioObj], "AppleAPFSContainer"))
          {
            v18 = [(SKIOObject *)v14 copyPropertyWithClass:objc_opt_class() key:@"UUID"];
            [(SKAPFSStoreDisk *)self setApfsContainerUUID:v18];

            break;
          }

          v16 = [(SKIOObject *)[SKIOMedia alloc] initWithIteratorNext:v12];

          v14 = v16;
        }

        while (v16);
      }

      v19 = [(SKAPFSStoreDisk *)self apfsContainerUUID];
      if (v19)
      {
        v20 = v19;
        v21 = [(SKAPFSStoreDisk *)self apfsContainerIdentifier];

        if (v21)
        {
          v8 = 1;
LABEL_21:

          return v8;
        }
      }

      v22 = sub_10000BFD0();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = [(SKAPFSStoreDisk *)self diskIdentifier];
        *buf = 136315394;
        v26 = "[SKAPFSStoreDisk(Daemon) _cacheContainerInfo]";
        v27 = 2114;
        v28 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s: Failed to get APFS container info for %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v12 = sub_10000BFD0();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v17 = [(SKAPFSStoreDisk *)self diskIdentifier];
        *buf = 136315394;
        v26 = "[SKAPFSStoreDisk(Daemon) _cacheContainerInfo]";
        v27 = 2114;
        v28 = v17;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s: Failed to get physical store IO media of %{public}@", buf, 0x16u);
      }
    }

    v8 = 0;
    goto LABEL_21;
  }

  v5 = [NSString alloc];
  v6 = [(SKAPFSStoreDisk *)self diskIdentifier];
  v7 = [v5 initWithFormat:@"apfs://%@", v6];
  [(SKAPFSStoreDisk *)self setApfsContainerIdentifier:v7];

  return 1;
}

+ (BOOL)isIOMediaStoreWithDisk:(id)a3
{
  v3 = a3;
  v4 = [[SKIOMedia alloc] initWithDADisk:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [(SKIOObject *)v4 newIteratorWithOptions:0];
    v7 = 0;
    do
    {
      v8 = v7;
      v7 = [(SKIOObject *)[SKIOMedia alloc] initWithIteratorNext:v6];

      v9 = v7 != 0;
    }

    while (v7 && !IOObjectConformsTo([(SKIOObject *)v7 ioObj], "AppleAPFSContainerScheme"));
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)isLiveFSStoreWithRawIOContent:(id)a3 diskDesc:(id)a4
{
  v5 = a4;
  if ([a3 isEqualToString:@"7C3457EF-0000-11AA-AA11-00306543ECAC"])
  {
    v6 = [v5 objectForKeyedSubscript:kDADiskDescriptionDeviceInternalKey];
    if (sub_100010164(v6))
    {
      v7 = [v6 BOOLValue] ^ 1;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)cleanupWithError:(id *)a3
{
  v4 = [(SKAPFSStoreDisk *)self container];
  LOBYTE(a3) = [v4 cleanupWithError:a3];

  return a3;
}

@end