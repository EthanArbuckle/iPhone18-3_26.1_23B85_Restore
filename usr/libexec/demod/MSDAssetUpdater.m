@interface MSDAssetUpdater
+ (BOOL)shouldIncludeGMAssetTypes;
+ (id)allAssetTypes;
+ (id)assetToString:(id)a3;
+ (id)getAllGreyMatterAssetTypes;
+ (id)sharedInstance;
- (BOOL)assetsAvailable;
- (BOOL)checkSiriAssetsAvailable;
- (BOOL)downloadAssets:(id)a3 withError:(id *)a4;
- (BOOL)downloadAssetsWithError:(id *)a3;
- (BOOL)downloadSiriAssetsWithError:(id *)a3;
- (BOOL)handleSiriAssetsWithError:(id *)a3;
- (BOOL)hasOnlyGMAssetTypes;
- (BOOL)queryAndDownloadAssetsWithForceGMAssetTypes:(BOOL)a3 withError:(id *)a4;
- (BOOL)queryAndDownloadSiriAssetsWithError:(id *)a3;
- (BOOL)timerShouldFire;
- (MSDAssetUpdater)initWithUAFConnection:(id)a3;
- (id)checkAssetAvailabilityWithQuery:(id)a3;
- (id)runQueryWithAssetType:(id)a3;
- (unint64_t)selectQueryInterval;
- (void)collectAllAssetTypes;
- (void)collectAllAssetTypesWithGM;
- (void)downloadAllAssetsWithCompletion:(id)a3;
- (void)queryAssets;
- (void)startAssetQueryTimer;
- (void)stopAssetQueryTimer;
@end

@implementation MSDAssetUpdater

+ (id)sharedInstance
{
  if (qword_1001A5910 != -1)
  {
    sub_1000DCECC();
  }

  v3 = qword_1001A5908;

  return v3;
}

- (MSDAssetUpdater)initWithUAFConnection:(id)a3
{
  v4 = a3;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MSDAssetUpdater init", buf, 2u);
  }

  v10.receiver = self;
  v10.super_class = MSDAssetUpdater;
  v6 = [(MSDAssetUpdater *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(MSDAssetUpdater *)v6 setUafConnection:v4];
    v8 = v7;
  }

  return v7;
}

- (unint64_t)selectQueryInterval
{
  v2 = [(MSDAssetUpdater *)self device];
  v3 = [v2 hubSuppliedSettings];
  v4 = [v3 objectForKey:@"AssetQueryInterval"];

  if (v4)
  {
    v5 = [v4 unsignedIntegerValue];
  }

  else
  {
    v5 = 600;
  }

  return v5;
}

- (BOOL)assetsAvailable
{
  v2 = [(MSDAssetUpdater *)self preferences];
  v3 = [v2 objectForKey:@"AssetsAvailable"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)queryAndDownloadAssetsWithForceGMAssetTypes:(BOOL)a3 withError:(id *)a4
{
  v5 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_10007FA10;
  v27 = sub_10007FA20;
  v28 = 0;
  v7 = dispatch_semaphore_create(0);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  if (v5)
  {
    [(MSDAssetUpdater *)self collectAllAssetTypesWithGM];
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10007FA28;
  v15[3] = &unk_10016B7A8;
  v17 = &v23;
  v18 = &v19;
  v8 = v7;
  v16 = v8;
  [(MSDAssetUpdater *)self downloadAllAssetsWithCompletion:v15];
  v9 = dispatch_time(0, 7200000000000);
  if (dispatch_semaphore_wait(v8, v9))
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000DCEE0();
    }

    v11 = (v24 + 5);
    obj = v24[5];
    sub_1000C1390(&obj, 3727744775, @"Timed out while downloading support for Apple Intelligence");
    objc_storeStrong(v11, obj);
    *(v20 + 24) = 0;
  }

  if (a4)
  {
    *a4 = v24[5];
  }

  [(MSDAssetUpdater *)self collectAllAssetTypes];
  v12 = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v12;
}

- (BOOL)downloadAssetsWithError:(id *)a3
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10007FA10;
  v26 = sub_10007FA20;
  v27 = 0;
  v5 = dispatch_semaphore_create(0);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v6 = [(MSDAssetUpdater *)self uafConnection];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10007FCA8;
  v14[3] = &unk_10016B7A8;
  v16 = &v22;
  v17 = &v18;
  v7 = v5;
  v15 = v7;
  [v6 downloadAllAssetsFromUAFWithCompletion:v14];

  v8 = dispatch_time(0, 7200000000000);
  if (dispatch_semaphore_wait(v7, v8))
  {
    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000DCEE0();
    }

    v10 = (v23 + 5);
    obj = v23[5];
    sub_1000C1424(&obj, 3727744775, @"Timed out while downloading support for Apple Intelligence");
    objc_storeStrong(v10, obj);
    *(v19 + 24) = 0;
  }

  if (a3)
  {
    *a3 = v23[5];
  }

  v11 = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  return v11;
}

- (BOOL)handleSiriAssetsWithError:(id *)a3
{
  v4 = [(MSDAssetUpdater *)self downloadSiriAssetsWithError:a3];
  if (v4)
  {

    LOBYTE(v4) = [(MSDAssetUpdater *)self checkSiriAssetsAvailable];
  }

  return v4;
}

- (BOOL)downloadSiriAssetsWithError:(id *)a3
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10007FA10;
  v26 = sub_10007FA20;
  v27 = 0;
  v5 = dispatch_semaphore_create(0);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v6 = [(MSDAssetUpdater *)self uafConnection];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10007FFF8;
  v14[3] = &unk_10016B7D0;
  v7 = v5;
  v15 = v7;
  v16 = &v22;
  v17 = &v18;
  [v6 downloadSiriAssetsFromUAFWithCompletion:v14];

  v8 = dispatch_time(0, 7200000000000);
  if (dispatch_semaphore_wait(v7, v8))
  {
    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000DCF54();
    }

    v10 = (v23 + 5);
    obj = v23[5];
    sub_1000C1424(&obj, 3727744775, @"Timed out while downloading support for Siri.");
    objc_storeStrong(v10, obj);
    *(v19 + 24) = 0;
  }

  if (a3)
  {
    *a3 = v23[5];
  }

  v11 = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  return v11;
}

- (BOOL)checkSiriAssetsAvailable
{
  v2 = [(MSDAssetUpdater *)self uafConnection];
  v3 = [v2 checkSiriAssetsAvailable];

  return v3;
}

- (BOOL)queryAndDownloadSiriAssetsWithError:(id *)a3
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_10007FA10;
  v35 = sub_10007FA20;
  v36 = 0;
  v5 = dispatch_semaphore_create(0);
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 1;
  [(MSDAssetUpdater *)self collectAllAssetTypesWithGM];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [(MSDAssetUpdater *)self assetTypes];
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v37 count:16];
  if (v7)
  {
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        if (([v10 hasPrefix:@"com.apple.MobileAsset.UAF.Siri"] & 1) == 0)
        {
          v11 = [(MSDAssetUpdater *)self assetTypes];
          [v11 removeObject:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v23 objects:v37 count:16];
    }

    while (v7);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100080448;
  v19[3] = &unk_10016B7A8;
  v21 = &v31;
  v22 = &v27;
  v12 = v5;
  v20 = v12;
  [(MSDAssetUpdater *)self downloadAllAssetsWithCompletion:v19];
  v13 = dispatch_time(0, 7200000000000);
  if (dispatch_semaphore_wait(v12, v13))
  {
    v14 = sub_100063A54();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000DCEE0();
    }

    v15 = (v32 + 5);
    obj = v32[5];
    sub_1000C1390(&obj, 3727744775, @"Timed out while downloading support for Apple Intelligence");
    objc_storeStrong(v15, obj);
    *(v28 + 24) = 0;
  }

  if (a3)
  {
    *a3 = v32[5];
  }

  [(MSDAssetUpdater *)self collectAllAssetTypes];
  v16 = *(v28 + 24);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);

  return v16 & 1;
}

- (void)downloadAllAssetsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSOperationQueue);
  [v5 setMaxConcurrentOperationCount:3];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_10007FA10;
  v16[4] = sub_10007FA20;
  v17 = +[NSMutableArray array];
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = sub_10007FA10;
  v14[4] = sub_10007FA20;
  v15 = +[NSMutableArray array];
  v6 = [(MSDAssetUpdater *)self assetUpdaterQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008069C;
  block[3] = &unk_10016B820;
  block[4] = self;
  v10 = v5;
  v12 = v14;
  v13 = v16;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(v6, block);

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v16, 8);
}

- (BOOL)downloadAssets:(id)a3 withError:(id *)a4
{
  v19 = a4;
  v4 = a3;
  dsema = dispatch_semaphore_create(0);
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 1;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_10007FA10;
  v35 = sub_10007FA20;
  v36 = 0;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v27 objects:v44 count:16];
  if (v5)
  {
    v6 = *v28;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        v9 = sub_100063A54();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = [v8 assetId];
          sub_1000DD0B8(v10, buf, &v43, v9);
        }

        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100080FA0;
        v23[3] = &unk_10016B848;
        v23[4] = v8;
        v25 = &v31;
        v26 = &v37;
        v24 = dsema;
        [v8 startDownload:v23];
      }

      v5 = [obj countByEnumeratingWithState:&v27 objects:v44 count:16];
    }

    while (v5);
  }

  v11 = -1;
  while ([obj count] > v11 + 1)
  {
    v12 = dispatch_time(0, 300000000000);
    ++v11;
    if (dispatch_semaphore_wait(dsema, v12))
    {
      v13 = sub_100063A54();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [obj objectAtIndexedSubscript:v11];
        v15 = [v14 assetType];
        sub_1000DD114(v15, v41, v13, v14);
      }

      v16 = (v32 + 5);
      v22 = v32[5];
      sub_1000C1424(&v22, 3727744775, @"Asset download timed out");
      objc_storeStrong(v16, v22);
      *(v38 + 24) = 0;
      break;
    }
  }

  if (v19)
  {
    *v19 = v32[5];
  }

  v17 = *(v38 + 24);
  _Block_object_dispose(&v31, 8);

  _Block_object_dispose(&v37, 8);
  return v17 & 1;
}

+ (id)assetToString:(id)a3
{
  v3 = a3;
  v4 = [v3 attributes];
  v5 = [v4 objectForKey:@"AssetSpecifier"];
  v6 = [v3 assetId];
  v7 = [v3 attributes];

  v8 = [v7 objectForKey:@"_DownloadSize"];
  v9 = [NSString stringWithFormat:@"\tAssetSpecifier: %@\n\tAssetId: %@\n\tSize: %@", v5, v6, v8];

  return v9;
}

- (void)collectAllAssetTypesWithGM
{
  [(MSDAssetUpdater *)self collectAllAssetTypes];
  if (!+[MSDAssetUpdater shouldIncludeGMAssetTypes])
  {
    v4 = [(MSDAssetUpdater *)self assetTypes];
    v3 = +[MSDAssetUpdater getAllGreyMatterAssetTypes];
    [v4 addObjectsFromArray:v3];
  }
}

- (void)collectAllAssetTypes
{
  v3 = [(MSDAssetUpdater *)self assetTypes];
  [v3 removeAllObjects];

  v4 = +[MSDAssetUpdater allAssetTypes];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 isEqualToString:@"GreyMatterAssetTypes"];
        v11 = [(MSDAssetUpdater *)self assetTypes];
        v12 = v11;
        if (v10)
        {
          v13 = +[MSDAssetUpdater getAllGreyMatterAssetTypes];
          [v12 addObjectsFromArray:v13];
        }

        else
        {
          [v11 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

+ (id)allAssetTypes
{
  v2 = +[NSMutableArray array];
  if (+[MSDAssetUpdater shouldIncludeGMAssetTypes])
  {
    v3 = sub_100063A54();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Including GreyMatter asset types!", v6, 2u);
    }

    [v2 addObject:@"GreyMatterAssetTypes"];
  }

  v4 = [NSArray arrayWithArray:v2];

  return v4;
}

+ (BOOL)shouldIncludeGMAssetTypes
{
  if (+[MSDGreyMatterHelper isOptedIn](MSDGreyMatterHelper, "isOptedIn") && +[MSDHubFeatureFlags enableAIModelAutoUpdate])
  {
    return 1;
  }

  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109376;
    v4[1] = +[MSDGreyMatterHelper isOptedIn];
    v5 = 1024;
    v6 = +[MSDHubFeatureFlags enableAIModelAutoUpdate];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "GreyMatter is not opted in (%d) or feature flag for 'EnableAIModelAutoUpdate' is disabled (%d).", v4, 0xEu);
  }

  return 0;
}

- (BOOL)hasOnlyGMAssetTypes
{
  v2 = +[MSDAssetUpdater allAssetTypes];
  if ([v2 count] == 1)
  {
    v3 = [v2 containsObject:@"GreyMatterAssetTypes"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)getAllGreyMatterAssetTypes
{
  v2 = +[NSMutableArray array];
  v3 = +[NSFileManager defaultManager];
  v4 = [NSURL fileURLWithPath:@"/System/Library/UnifiedAssetFramework/AssetSets"];
  v32 = 0;
  v5 = [v3 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:0 options:0 error:&v32];
  v6 = v32;

  if (!v5)
  {
    obj = sub_100063A54();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      sub_1000DD2CC(v6);
    }

    goto LABEL_23;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (!v7)
  {
LABEL_23:
    v9 = 0;
    v10 = 0;
    goto LABEL_24;
  }

  v8 = v7;
  v25 = v5;
  v9 = 0;
  v10 = 0;
  v11 = *v29;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      v13 = v6;
      v14 = v10;
      if (*v29 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v28 + 1) + 8 * i);
      v27 = v6;
      v10 = [NSDictionary dictionaryWithContentsOfURL:v15 error:&v27];
      v6 = v27;

      if (v10)
      {
        v16 = [v10 objectForKey:@"AutoAssetType"];

        v17 = sub_100063A54();
        v18 = v17;
        if (v16)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v34 = v16;
            _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Found asset type %{public}@", buf, 0xCu);
          }

          [v2 addObject:v16];
          v9 = v16;
        }

        else
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v22 = [v15 path];
            *buf = 138543618;
            v34 = @"AutoAssetType";
            v35 = 2114;
            v36 = v22;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "No %{public}@ key in plist at %{public}@", buf, 0x16u);
          }

          v9 = 0;
        }
      }

      else
      {
        v19 = sub_100063A54();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = [v15 path];
          v21 = [v6 localizedDescription];
          *buf = 138543618;
          v34 = v20;
          v35 = 2114;
          v36 = v21;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to read %{public}@ as a dictionary with error - %{public}@", buf, 0x16u);
        }
      }
    }

    v8 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
  }

  while (v8);
  v5 = v25;
LABEL_24:

  v23 = v2;
  return v2;
}

- (BOOL)timerShouldFire
{
  v3 = +[NSMutableString string];
  [(MSDAssetUpdater *)self hasOnlyGMAssetTypes];
  v4 = +[MSDAssetUpdater allAssetTypes];
  v5 = v4 != 0;

  if (!v4)
  {
    [v3 appendString:@"\nNo asset types to update."];
  }

  if ([(MSDAssetUpdater *)self assetsAvailable])
  {
    [v3 appendString:@"\nAssets already indicated available for updates."];
    v5 = 0;
  }

  v6 = [(MSDAssetUpdater *)self device];
  v7 = [v6 mode];

  if (v7 == 5)
  {
    if (v5)
    {
      v8 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    [v3 appendString:@"\nDevice is not in demo mode."];
  }

  v9 = sub_100063A54();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Timer should not fire. Reasons:%{public}@\nEnd of reasons.", &v11, 0xCu);
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (void)startAssetQueryTimer
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Requested start asset query timer", buf, 2u);
  }

  v4 = [(MSDAssetUpdater *)self timerShouldFire];
  v5 = sub_100063A54();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = [(MSDAssetUpdater *)self queryInterval];
      *buf = 134217984;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting asset query timer with interval %lu.", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100081C8C;
    block[3] = &unk_100169C78;
    objc_copyWeak(&v9, buf);
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not starting asset query timer.", buf, 2u);
    }
  }
}

- (void)stopAssetQueryTimer
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping asset query timer.", buf, 2u);
  }

  objc_initWeak(buf, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100081E78;
  block[3] = &unk_100169C78;
  objc_copyWeak(&v5, buf);
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(buf);
}

- (void)queryAssets
{
  v3 = [(MSDAssetUpdater *)self assetUpdaterQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100081FB4;
  block[3] = &unk_100169B70;
  block[4] = self;
  dispatch_async(v3, block);
}

- (id)runQueryWithAssetType:(id)a3
{
  v4 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = [[MAAssetQuery alloc] initWithType:v4];
  v7 = MGCopyAnswer();
  [v6 addKeyValuePair:@"SupportedDevices" with:v7];

  v8 = sub_100063A54();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Running catalog download for asset type %{public}@", buf, 0xCu);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100082600;
  v18[3] = &unk_10016B870;
  v9 = v4;
  v19 = v9;
  v21 = &v22;
  v10 = v5;
  v20 = v10;
  [MAAsset startCatalogDownload:v9 then:v18];
  v11 = dispatch_time(0, 30000000000);
  v12 = dispatch_semaphore_wait(v10, v11);
  if (*(v23 + 24) != 1 || v12)
  {
    v16 = sub_100063A54();
    sub_1000DD480(v16, v9, buf);
LABEL_13:

    v14 = 0;
    goto LABEL_8;
  }

  v13 = sub_100063A54();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Running query for asset type %{public}@", buf, 0xCu);
  }

  v14 = [(MSDAssetUpdater *)self checkAssetAvailabilityWithQuery:v6];
  if (!v14)
  {
    v17 = sub_100063A54();
    sub_1000DD538(v17, buf);
    goto LABEL_13;
  }

LABEL_8:

  _Block_object_dispose(&v22, 8);

  return v14;
}

- (id)checkAssetAvailabilityWithQuery:(id)a3
{
  v4 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10007FA10;
  v23 = sub_10007FA20;
  v24 = +[NSMutableArray array];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000828C8;
  v14 = &unk_10016B898;
  v17 = &v25;
  v5 = dispatch_semaphore_create(0);
  v15 = v5;
  v6 = v4;
  v16 = v6;
  v18 = &v19;
  [v6 queryMetaData:&v11];
  if ([v20[5] count])
  {
    [(MSDAssetUpdater *)self setAssetsAvailable:1];
  }

  v7 = dispatch_time(0, 30000000000);
  v8 = dispatch_semaphore_wait(v5, v7);
  v9 = 0;
  if (*(v26 + 24) == 1 && !v8)
  {
    v9 = [NSArray arrayWithArray:v20[5]];
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v9;
}

@end