@interface FMDAssetRegistry
+ (id)defaultStorageLocation;
+ (id)deprecatedStorageLocation;
- (FMDAssetRegistry)initWithStorageLocation:(id)a3 identifier:(id)a4;
- (NSDictionary)assetsByURL;
- (id)assetForURL:(id)a3;
- (id)generateAssetURL;
- (id)newAssetForURL:(id)a3 type:(unint64_t)a4;
- (id)newAssetWithDictionary:(id)a3;
- (id)registryFileURL;
- (void)_removeUntrackedAssets:(id)a3;
- (void)clearAssetRegistry;
- (void)downloadAssets:(id)a3;
- (void)removeUntrackedAssets:(id)a3;
- (void)resumeBackgroundAssetDownloads:(id)a3;
- (void)saveAssetMetadata:(id)a3;
- (void)storeAsset:(id)a3 fromLocation:(id)a4;
@end

@implementation FMDAssetRegistry

- (FMDAssetRegistry)initWithStorageLocation:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = FMDAssetRegistry;
  v8 = [(FMDAssetRegistry *)&v22 init];
  v9 = v8;
  if (v8)
  {
    [(FMDAssetRegistry *)v8 setStoreIdentifier:v7];
    [(FMDAssetRegistry *)v9 setBaseStoragePath:v6];
    v10 = [FMDataArchiver alloc];
    v11 = [(FMDAssetRegistry *)v9 registryFileURL];
    v12 = [v10 initWithFileURL:v11];
    [(FMDAssetRegistry *)v9 setDataArchiver:v12];

    v13 = [(FMDAssetRegistry *)v9 dataArchiver];
    [v13 setDataProtectionClass:4];

    v14 = [(FMDAssetRegistry *)v9 dataArchiver];
    [v14 setBackedUp:0];

    v15 = [(FMDAssetRegistry *)v9 dataArchiver];
    [v15 setCreateDirectories:1];

    v16 = dispatch_queue_create("com.apple.icloud.findmydeviced.FMDAssetRegistry.serialqueue", 0);
    [(FMDAssetRegistry *)v9 setSerialQueue:v16];

    v17 = objc_alloc_init(FMDBackgroundServerChannel);
    v18 = [FMDServerInteractionController alloc];
    v23 = v17;
    v19 = [NSArray arrayWithObjects:&v23 count:1];
    v20 = [(FMDServerInteractionController *)v18 initWithChannels:v19 delegate:0];
    [(FMDAssetRegistry *)v9 setServerInteractionController:v20];

    [(FMDAssetRegistry *)v9 resumeBackgroundAssetDownloads:v17];
  }

  return v9;
}

+ (id)defaultStorageLocation
{
  v2 = objc_alloc_init(FMInternalFileContainer);
  v3 = [v2 url];
  v4 = [v3 URLByAppendingPathComponent:@"Caches/com.apple.icloud.findmydeviced.FMDAssetRegistry" isDirectory:1];

  return v4;
}

+ (id)deprecatedStorageLocation
{
  v2 = [FMSharedFileContainer alloc];
  v3 = [v2 initWithIdentifier:off_100312B70];
  v4 = [v3 url];
  v5 = [v4 URLByAppendingPathComponent:@"Caches/com.apple.icloud.findmydeviced.FMDAssetRegistry" isDirectory:1];

  return v5;
}

- (void)storeAsset:(id)a3 fromLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSFileManager defaultManager];
  v9 = [v6 fileURL];
  v18 = 0;
  v10 = [v8 copyItemAtURL:v7 toURL:v9 error:&v18];

  v11 = v18;
  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v14 = [v6 fileURL];
    v15 = [NSNumber numberWithBool:1];
    v17 = 0;
    [v14 setResourceValue:v15 forKey:NSURLIsExcludedFromBackupKey error:&v17];
    v13 = v17;

    if (v13)
    {
      v16 = sub_100002880();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10022CF3C(v6);
      }
    }

    [(FMDAssetRegistry *)self saveAssetMetadata:v6];
  }

  else
  {
    v13 = sub_100002880();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10022CE8C(v11);
    }
  }
}

- (id)assetForURL:(id)a3
{
  v4 = a3;
  v5 = [(FMDAssetRegistry *)self assetsByURL];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)newAssetWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"url"];
  v6 = [NSURL URLWithString:v5];
  v7 = [v4 objectForKeyedSubscript:@"type"];

  v8 = [(FMDAssetRegistry *)self newAssetForURL:v6 type:[(FMDAssetRegistry *)self assetTypeForString:v7]];
  return v8;
}

- (void)removeUntrackedAssets:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(FMDAssetRegistry *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001AB2C8;
  block[3] = &unk_1002CD288;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)clearAssetRegistry
{
  v3 = [(FMDAssetRegistry *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001AB3A0;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (id)newAssetForURL:(id)a3 type:(unint64_t)a4
{
  v6 = a3;
  v7 = [(FMDAssetRegistry *)self assetForURL:v6];
  if (!v7)
  {
    v8 = [FMDStandardAsset alloc];
    v9 = [(FMDAssetRegistry *)self generateAssetURL];
    v7 = [(FMDStandardAsset *)v8 initWithFileURL:v9 lastModified:0 etag:0 type:a4 url:v6];
  }

  return v7;
}

- (void)_removeUntrackedAssets:(id)a3
{
  v4 = a3;
  v30 = self;
  v33 = [(NSDictionary *)self->_assetsByURL copy];
  v5 = +[NSMutableArray array];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v40;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v39 + 1) + 8 * i) url];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v8);
  }

  v31 = v6;

  v32 = +[NSMutableArray array];
  v12 = [v33 allKeys];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v36;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v35 + 1) + 8 * j);
        if (([v5 containsObject:v17] & 1) == 0)
        {
          v18 = [v33 objectForKeyedSubscript:v17];
          v19 = +[NSFileManager defaultManager];
          v20 = [v18 fileURL];
          v34 = 0;
          [v19 removeItemAtURL:v20 error:&v34];
          v21 = v34;

          if (v21)
          {
            if (([v21 fm_isFileNotFoundError] & 1) == 0)
            {
              v22 = sub_100002880();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                v23 = [v21 code];
                *buf = 138412546;
                v44 = v21;
                v45 = 2048;
                v46 = v23;
                _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not delete the file %@ %li", buf, 0x16u);
              }
            }
          }

          else
          {
            [v32 addObject:v17];
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v14);
  }

  v24 = [v33 mutableCopy];
  [(NSDictionary *)v24 removeObjectsForKeys:v32];
  assetsByURL = v30->_assetsByURL;
  v30->_assetsByURL = v24;
  v26 = v24;

  v27 = [(FMDAssetRegistry *)v30 dataArchiver];
  v28 = [v27 saveDictionary:v26];

  if (v28)
  {
    v29 = sub_100002880();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10022A040();
    }
  }
}

- (void)saveAssetMetadata:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(FMDAssetRegistry *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001AB9F4;
  block[3] = &unk_1002CD288;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (NSDictionary)assetsByURL
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000AB04;
  v11 = sub_100002B4C;
  v12 = 0;
  v3 = [(FMDAssetRegistry *)self serialQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001ABBEC;
  v6[3] = &unk_1002CD260;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)registryFileURL
{
  v3 = [(FMDAssetRegistry *)self storeIdentifier];
  if (v3)
  {
    v4 = [(FMDAssetRegistry *)self storeIdentifier];
    v5 = [NSString stringWithFormat:@".%@", v4];
  }

  else
  {
    v5 = &stru_1002DCE08;
  }

  v6 = [NSString stringWithFormat:@"com.apple.icloud.findmydeviced.FMDAssetRegistry%@.plist", v5];
  v7 = [(FMDAssetRegistry *)self baseStoragePath];
  v8 = [v7 URLByAppendingPathComponent:v6 isDirectory:0];

  return v8;
}

- (id)generateAssetURL
{
  v3 = +[NSUUID UUID];
  v4 = [v3 UUIDString];

  v5 = [(FMDAssetRegistry *)self baseStoragePath];
  v6 = [v5 URLByAppendingPathComponent:v4 isDirectory:0];

  return v6;
}

- (void)downloadAssets:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001ABF88;
  v3[3] = &unk_1002D0718;
  v3[4] = self;
  [a3 enumerateObjectsUsingBlock:v3];
}

- (void)resumeBackgroundAssetDownloads:(id)a3
{
  v3 = a3;
  xpc_set_event_stream_handler("com.apple.nsurlsessiond-events", &_dispatch_main_q, &stru_1002D0758);
  [v3 resumeBackgroundTasks];
}

@end