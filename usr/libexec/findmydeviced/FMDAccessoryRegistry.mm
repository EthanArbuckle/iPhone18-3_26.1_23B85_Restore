@interface FMDAccessoryRegistry
+ (id)archiverFromURL:(id)a3;
+ (id)connectedAccessoriesStorageLocation;
+ (id)defaultStorageLocation;
- (BOOL)respondsToSelector:(SEL)a3;
- (BOOL)supportsAccessory:(id)a3;
- (FMDAccessoryRegistry)initWithSupportDelete:(id)a3;
- (FMDAccessoryRegistrySupportDelegate)supportDelegate;
- (id)accessoryForIdentifier:(id)a3;
- (id)allAccessories;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)registeredDelegates;
- (void)_addAccessory:(id)a3 previouslyPaired:(BOOL)a4;
- (void)_forceUpdateAccessory:(id)a3;
- (void)_removeAccessory:(id)a3;
- (void)accessories:(id)a3;
- (void)addDataSource:(id)a3;
- (void)addDataSources:(id)a3;
- (void)availabilitydidChangeFor:(id)a3 status:(id)a4 withCompletion:(id)a5;
- (void)clearAccessoryRegistry;
- (void)computeAccessoryRegistry;
- (void)dealloc;
- (void)forceUpdateAccessory:(id)a3;
- (void)forwardInvocation:(id)a3;
- (void)postConnectionStatusChangeNotification;
- (void)readAccessoriesFromDisk;
- (void)readConnectedAccessoriesFromDisk;
- (void)refetchBauuids:(id)a3;
- (void)registerDelegate:(id)a3;
- (void)reloadData;
- (void)removeAccessory:(id)a3;
- (void)sanitizeConnectedAccessoriesWithoutMatchingBootId;
- (void)saveAccessoriesToDisk;
- (void)saveConnectedAccessoriesDictToDisk;
- (void)updateAccessory:(id)a3;
- (void)updateAccessory:(id)a3 assets:(id)a4;
- (void)updateAccessory:(id)a3 playbackChannels:(id)a4 completion:(id)a5;
@end

@implementation FMDAccessoryRegistry

- (id)allAccessories
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000AA84;
  v11 = sub_100002B0C;
  v12 = &__NSArray0__struct;
  v3 = [(FMDAccessoryRegistry *)self accessoryQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000A450;
  v6[3] = &unk_1002CD260;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

+ (id)defaultStorageLocation
{
  v2 = objc_alloc_init(FMInternalFileContainer);
  v3 = [v2 url];
  v4 = [v3 fm_preferencesPathURLForDomain:@"com.apple.icloud.findmydeviced.accessories"];

  return v4;
}

+ (id)connectedAccessoriesStorageLocation
{
  v2 = objc_alloc_init(FMInternalFileContainer);
  v3 = [v2 url];
  v4 = [v3 fm_preferencesPathURLForDomain:@"com.apple.icloud.findmydeviced.connectedAccessories"];

  return v4;
}

+ (id)archiverFromURL:(id)a3
{
  v3 = a3;
  v4 = [[FMDataArchiver alloc] initWithFileURL:v3];

  [v4 setDataProtectionClass:4];
  [v4 setBackedUp:0];
  [v4 setCreateDirectories:1];

  return v4;
}

- (FMDAccessoryRegistry)initWithSupportDelete:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = FMDAccessoryRegistry;
  v5 = [(FMDAccessoryRegistry *)&v24 init];
  v6 = v5;
  if (v5)
  {
    [(FMDAccessoryRegistry *)v5 setDataSourceErrorBackoffCount:0];
    v7 = dispatch_queue_create("com.apple.icloud.findmydeviced.accessoryqueue", 0);
    [(FMDAccessoryRegistry *)v6 setAccessoryQueue:v7];

    v8 = objc_opt_new();
    [(FMDAccessoryRegistry *)v6 setAccessoriesByIdentifier:v8];

    v9 = +[NSPointerArray weakObjectsPointerArray];
    [(FMDAccessoryRegistry *)v6 setDelegates:v9];

    v10 = +[NSMutableArray array];
    [(FMDAccessoryRegistry *)v6 setDataSources:v10];

    v11 = +[NSMutableSet set];
    [(FMDAccessoryRegistry *)v6 setConnectedAccessoryIdentifiers:v11];

    v12 = +[NSMutableDictionary dictionary];
    [(FMDAccessoryRegistry *)v6 setConnectedAccessoryIdentifiersToBootId:v12];

    v13 = dispatch_queue_create("com.apple.icloud.findmydeviced.delegate", 0);
    [(FMDAccessoryRegistry *)v6 setDelegateQueue:v13];

    v14 = objc_opt_class();
    v15 = [objc_opt_class() defaultStorageLocation];
    v16 = [v14 archiverFromURL:v15];
    [(FMDAccessoryRegistry *)v6 setDataArchiver:v16];

    v17 = objc_opt_class();
    v18 = [objc_opt_class() connectedAccessoriesStorageLocation];
    v19 = [v17 archiverFromURL:v18];
    [(FMDAccessoryRegistry *)v6 setConnectedAccessoriesDataArchiver:v19];

    [(FMDAccessoryRegistry *)v6 setSupportDelegate:v4];
    v20 = +[FMDSystemConfig sharedInstance];
    v21 = [v20 bootSessionUUID];
    [(FMDAccessoryRegistry *)v6 setCurrentBootUUID:v21];

    [(FMDAccessoryRegistry *)v6 readConnectedAccessoriesFromDisk];
    [(FMDAccessoryRegistry *)v6 readAccessoriesFromDisk];
    v22 = sub_100002880();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_10022B8DC(v22);
    }
  }

  return v6;
}

- (void)dealloc
{
  v3 = [(FMDAccessoryRegistry *)self dataSourceRetryTimer];
  [v3 cancel];

  [(FMDAccessoryRegistry *)self setDataSourceRetryTimer:0];
  v4.receiver = self;
  v4.super_class = FMDAccessoryRegistry;
  [(FMDAccessoryRegistry *)&v4 dealloc];
}

- (void)registerDelegate:(id)a3
{
  v4 = a3;
  v5 = [(FMDAccessoryRegistry *)self delegateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018C0BC;
  v7[3] = &unk_1002CD478;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)clearAccessoryRegistry
{
  v3 = [(FMDAccessoryRegistry *)self accessoryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018C1AC;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)updateAccessory:(id)a3 assets:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(FMDAccessoryRegistry *)self accessoryQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10018C39C;
  v11[3] = &unk_1002CE3B8;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)updateAccessory:(id)a3 playbackChannels:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [(FMDAccessoryRegistry *)self accessoryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018C770;
  block[3] = &unk_1002D0008;
  objc_copyWeak(&v19, &location);
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)addDataSources:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(FMDAccessoryRegistry *)self accessoryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018CA58;
  block[3] = &unk_1002CD288;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  dispatch_async(v5, block);

  [(FMDAccessoryRegistry *)self reloadData];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)addDataSource:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(FMDAccessoryRegistry *)self accessoryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018CBC0;
  block[3] = &unk_1002CD288;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  dispatch_async(v5, block);

  [(FMDAccessoryRegistry *)self reloadData];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)reloadData
{
  objc_initWeak(&location, self);
  v3 = [(FMDAccessoryRegistry *)self accessoryQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10018CCE8;
  v4[3] = &unk_1002CD518;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v16.receiver = self;
  v16.super_class = FMDAccessoryRegistry;
  if ([(FMDAccessoryRegistry *)&v16 respondsToSelector:?])
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v5 = [(FMDAccessoryRegistry *)self registeredDelegates];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v4 = 0;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          v4 |= objc_opt_respondsToSelector();
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v7);
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4 & 1;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v18.receiver = self;
  v18.super_class = FMDAccessoryRegistry;
  v5 = [(FMDAccessoryRegistry *)&v18 methodSignatureForSelector:?];
  if (!v5)
  {
    v6 = [(FMDAccessoryRegistry *)self registeredDelegates];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v5 = 0;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v12 = [v11 methodSignatureForSelector:a3];

            v5 = v12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v8);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  v5 = [(FMDAccessoryRegistry *)self registeredDelegates];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v15;
    *&v7 = 138412290;
    v13 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        [v4 selector];
        if (objc_opt_respondsToSelector())
        {
          v12 = sub_100002880();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v13;
            v19 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry forwardInvocation to delegate %@", buf, 0xCu);
          }

          [v4 invokeWithTarget:v11];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v8);
  }
}

- (id)registeredDelegates
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000AA84;
  v11 = sub_100002B0C;
  v12 = &__NSArray0__struct;
  v3 = [(FMDAccessoryRegistry *)self delegateQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10018D28C;
  v6[3] = &unk_1002CD260;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)accessories:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(FMDAccessoryRegistry *)self accessoryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018D3F0;
  block[3] = &unk_1002CDEF0;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)computeAccessoryRegistry
{
  v3 = [(FMDAccessoryRegistry *)self accessoryQueue];
  dispatch_assert_queue_V2(v3);

  v4 = +[FMDSystemConfig sharedInstance];
  v5 = [v4 unlockState];

  v6 = sub_100002880();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 == 1)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry skipping computeAccessoryRegistry before first unlock", buf, 2u);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry computeAccessoryRegistry", buf, 2u);
    }

    v8 = [(FMDAccessoryRegistry *)self dataSourceRetryTimer];
    [v8 cancel];

    v9 = +[NSMutableArray array];
    v10 = +[NSMutableArray array];
    v11 = [[FMSynchronizer alloc] initWithDescription:@"FMDAccessoryRegistryAllAccessories" andTimeout:5.0];
    *buf = 0;
    v44[0] = buf;
    v44[1] = 0x3032000000;
    v44[2] = sub_10000AA84;
    v44[3] = sub_100002B0C;
    v45 = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v12 = [(FMDAccessoryRegistry *)self dataSources];
    v13 = [v12 count];

    v42 = v13;
    v14 = [(FMDAccessoryRegistry *)self dataSources];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10018D9A4;
    v32[3] = &unk_1002D0080;
    v6 = v9;
    v33 = v6;
    v34 = self;
    v15 = v10;
    v35 = v15;
    v37 = &v39;
    v16 = v11;
    v36 = v16;
    v38 = buf;
    [v14 enumerateObjectsUsingBlock:v32];

    [v16 wait];
    if ([v16 timeoutOccurred] && v40[3] || *(v44[0] + 40))
    {
      v17 = pow(5.0, [(FMDAccessoryRegistry *)self dataSourceErrorBackoffCount]);
      [(FMDAccessoryRegistry *)self setDataSourceErrorBackoffCount:[(FMDAccessoryRegistry *)self dataSourceErrorBackoffCount]+ 1];
      v18 = sub_100002880();
      v19 = v17 + 5.0;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10022BA38(v44, v18, v19);
      }

      objc_initWeak(&location, self);
      v20 = [FMDispatchTimer alloc];
      v21 = [(FMDAccessoryRegistry *)self accessoryQueue];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_10018DC28;
      v29[3] = &unk_1002CD518;
      objc_copyWeak(&v30, &location);
      v22 = [v20 initWithQueue:v21 timeout:v29 completion:v19];

      [(FMDAccessoryRegistry *)self setDataSourceRetryTimer:v22];
      [v22 start];

      objc_destroyWeak(&v30);
      objc_destroyWeak(&location);
    }

    else
    {
      [(FMDAccessoryRegistry *)self setDataSourceErrorBackoffCount:0];
      v23 = [(FMDAccessoryRegistry *)self accessoriesByIdentifier];
      v24 = [v23 copy];

      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10018DCC4;
      v26[3] = &unk_1002D00A8;
      v27 = v15;
      v28 = self;
      [v24 enumerateKeysAndObjectsUsingBlock:v26];
    }

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10018DD38;
    v25[3] = &unk_1002D00D0;
    v25[4] = self;
    [v6 enumerateObjectsUsingBlock:v25];

    _Block_object_dispose(&v39, 8);
    _Block_object_dispose(buf, 8);
  }
}

- (BOOL)supportsAccessory:(id)a3
{
  v4 = a3;
  v5 = [v4 accessoryIdentifier];
  v6 = [v5 isValid];

  if (v6)
  {
    v7 = [(FMDAccessoryRegistry *)self supportDelegate];
    if (objc_opt_respondsToSelector())
    {
      v8 = [v7 supportsAccessory:v4];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)accessoryForIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_10000AA84;
    v14 = sub_100002B0C;
    v15 = &__NSDictionary0__struct;
    v5 = [(FMDAccessoryRegistry *)self accessoryQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10018DF50;
    v9[3] = &unk_1002CD260;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v5, v9);

    v6 = [v11[5] objectForKeyedSubscript:v4];
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10022BB9C(v7);
    }

    v6 = 0;
  }

  return v6;
}

- (void)_addAccessory:(id)a3 previouslyPaired:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(FMDAccessoryRegistry *)self accessoryQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(FMDAccessoryRegistry *)self accessoriesByIdentifier];
  v9 = [v8 mutableCopy];

  v10 = [v6 accessoryIdentifier];
  v11 = [v9 objectForKeyedSubscript:v10];

  v12 = sub_100002880();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v19 = v6;
    v20 = 1024;
    v21 = v11 == 0;
    v22 = 1024;
    v23 = v4;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry addAccessory %@ New - %i PreviouslyPaired - %i", buf, 0x18u);
  }

  v13 = [v6 accessoryIdentifier];
  [v9 setObject:v6 forKeyedSubscript:v13];

  [(FMDAccessoryRegistry *)self setAccessoriesByIdentifier:v9];
  [(FMDAccessoryRegistry *)self saveAccessoriesToDisk];
  if (!v11 && !v4)
  {
    objc_initWeak(buf, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10018E2D8;
    block[3] = &unk_1002CE3B8;
    objc_copyWeak(&v17, buf);
    v15 = v6;
    v16 = self;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }
}

- (void)_removeAccessory:(id)a3
{
  v4 = a3;
  v5 = [(FMDAccessoryRegistry *)self accessoryQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 accessoryIdentifier];
  if (v6)
  {
    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry removing accessory %@", buf, 0xCu);
    }

    v8 = [(FMDAccessoryRegistry *)self accessoriesByIdentifier];
    v9 = [v8 mutableCopy];

    [v9 removeObjectForKey:v6];
    [(FMDAccessoryRegistry *)self setAccessoriesByIdentifier:v9];
    [(FMDAccessoryRegistry *)self saveAccessoriesToDisk];
    objc_initWeak(buf, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10018E4EC;
    block[3] = &unk_1002CE3B8;
    objc_copyWeak(&v13, buf);
    v11 = v4;
    v12 = self;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

- (void)postConnectionStatusChangeNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.icloud.FindMy.accesoriesConnectionStateChanged", 0, 0, 1u);
}

- (void)forceUpdateAccessory:(id)a3
{
  v4 = a3;
  v5 = [(FMDAccessoryRegistry *)self accessoryQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018EB50;
  v7[3] = &unk_1002CD478;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)_forceUpdateAccessory:(id)a3
{
  v4 = a3;
  v5 = [(FMDAccessoryRegistry *)self accessoryQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 accessoryIdentifier];
  v7 = v6;
  if (v6 && ([v6 isValid] & 1) != 0)
  {
    v8 = [(FMDAccessoryRegistry *)self accessoriesByIdentifier];
    v9 = [v8 objectForKeyedSubscript:v7];

    [v4 updateWithAccessory:v9];
    v10 = sub_100002880();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry : force updating accessory: %@", &v11, 0xCu);
    }

    [(FMDAccessoryRegistry *)self accessoryDidUpdate:v4];
  }

  else
  {
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10022BBE0();
    }
  }
}

- (void)updateAccessory:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(FMDAccessoryRegistry *)self accessoryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018EDB4;
  block[3] = &unk_1002CD288;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)removeAccessory:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(FMDAccessoryRegistry *)self accessoryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018EEF8;
  block[3] = &unk_1002CD288;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)refetchBauuids:(id)a3
{
  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "refetchBauuid", buf, 2u);
  }

  v5 = [(FMDAccessoryRegistry *)self accessoryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018F018;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)sanitizeConnectedAccessoriesWithoutMatchingBootId
{
  v3 = [(FMDAccessoryRegistry *)self connectedAccessoryIdentifiersToBootId];
  v4 = [v3 allKeys];

  v5 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        v12 = [(FMDAccessoryRegistry *)self connectedAccessoryIdentifiersToBootId];
        v13 = [v12 objectForKeyedSubscript:v11];

        v14 = [(FMDAccessoryRegistry *)self currentBootUUID];
        v15 = [v13 isEqualToString:v14];

        if ((v15 & 1) == 0)
        {
          [v5 addObject:v11];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v16 = [(FMDAccessoryRegistry *)self connectedAccessoryIdentifiersToBootId];
  [v16 removeObjectsForKeys:v5];
}

- (void)readConnectedAccessoriesFromDisk
{
  v3 = [(FMDAccessoryRegistry *)self connectedAccessoriesDataArchiver];
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  v12 = 0;
  v6 = [v3 readDictionaryAndClasses:v5 error:&v12];
  v7 = v12;

  if (v7 && ([v7 fm_isFileNotFoundError] & 1) == 0)
  {
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10022BC48();
    }

    v10 = +[FMDEventLoggerGeneral sharedInstance];
    [v10 sendError:v7 forEventName:@"FMDConnectedAccessoryFailedReadEventName"];
  }

  else
  {
    if (v6)
    {
      v8 = [v6 mutableCopy];
    }

    else
    {
      v8 = objc_alloc_init(NSMutableDictionary);
    }

    v11 = v8;
    [(FMDAccessoryRegistry *)self setConnectedAccessoryIdentifiersToBootId:v8];

    [(FMDAccessoryRegistry *)self sanitizeConnectedAccessoriesWithoutMatchingBootId];
  }
}

- (void)readAccessoriesFromDisk
{
  objc_initWeak(&location, self);
  v3 = [(FMDAccessoryRegistry *)self accessoryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018F7D8;
  block[3] = &unk_1002CD288;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(v3, block);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)saveConnectedAccessoriesDictToDisk
{
  v3 = [(FMDAccessoryRegistry *)self accessoryQueue];
  dispatch_assert_queue_V2(v3);

  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(FMDAccessoryRegistry *)self accessoriesByIdentifier];
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry saveConnectedAccessoriesToDisk %@", &v10, 0xCu);
  }

  v6 = [(FMDAccessoryRegistry *)self connectedAccessoriesDataArchiver];
  v7 = [(FMDAccessoryRegistry *)self connectedAccessoryIdentifiersToBootId];
  v8 = [v6 saveDictionary:v7];

  if (v8)
  {
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10022A040();
    }
  }
}

- (void)saveAccessoriesToDisk
{
  v3 = [(FMDAccessoryRegistry *)self accessoryQueue];
  dispatch_assert_queue_V2(v3);

  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(FMDAccessoryRegistry *)self accessoriesByIdentifier];
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry saveAccessoriesToDisk %@", &v10, 0xCu);
  }

  v6 = [(FMDAccessoryRegistry *)self dataArchiver];
  v7 = [(FMDAccessoryRegistry *)self accessoriesByIdentifier];
  v8 = [v6 saveDictionary:v7];

  if (v8)
  {
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10022A040();
    }
  }
}

- (void)availabilitydidChangeFor:(id)a3 status:(id)a4 withCompletion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = sub_10000BE38();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "availabilitydidChangeFor status = %@", buf, 0xCu);
  }

  v12 = [v8 objectForKeyedSubscript:@"components"];
  v9[2](v9, 0);

  v13 = [[FMDAccessoryIdentifier alloc] initWithString:v10];
  v14 = [(FMDAccessoryRegistry *)self accessoriesByIdentifier];
  v15 = [v14 objectForKeyedSubscript:v13];

  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
      v17 = [v8 objectForKeyedSubscript:@"statusUpdateTime"];
      if (v17)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = sub_10000BE38();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            sub_10022BD18();
          }

          [v16 setLastStatusUpdateTime:v17];
        }
      }

      if ([v16 updateComponnentsAvailability:v12])
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10018FEF4;
        block[3] = &unk_1002D0148;
        v21 = 1;
        block[4] = self;
        v20 = v16;
        dispatch_async(&_dispatch_main_q, block);
      }
    }
  }
}

- (FMDAccessoryRegistrySupportDelegate)supportDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_supportDelegate);

  return WeakRetained;
}

@end