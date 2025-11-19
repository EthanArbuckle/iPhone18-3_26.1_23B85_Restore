@interface CRCarPlayAppServiceAgent
- (BOOL)ferriteDisabled;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)shouldDisableAssetWithIdentifier:(id)a3 iOSContentVersion:(id)a4 accessoryContentVersion:(id)a5;
- (CRCarPlayAppServiceAgent)initWithSessionStatus:(id)a3 vehicleStore:(id)a4;
- (id)_denylistPreference;
- (id)_parseDenylistContent:(id)a3 error:(id *)a4;
- (void)_queryForUpdatedAsset;
- (void)_reloadWithAsset:(id)a3;
- (void)_requestAssetCatalogDownload;
- (void)_setDenylistPreference:(id)a3;
- (void)dealloc;
- (void)requestCarCapabilitiesStatus:(id)a3 withReply:(id)a4;
- (void)requestCarCapabilitiesUpdate;
@end

@implementation CRCarPlayAppServiceAgent

- (CRCarPlayAppServiceAgent)initWithSessionStatus:(id)a3 vehicleStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = CRCarPlayAppServiceAgent;
  v8 = [(CRCarPlayAppServiceAgent *)&v15 init];
  if (v8)
  {
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.carkit.AssetQuery", v9);
    [(CRCarPlayAppServiceAgent *)v8 setAssetQueue:v10];

    [(CRCarPlayAppServiceAgent *)v8 setAssetQueryInProgress:0];
    v11 = [[CRCarPlayCapabilitiesManager alloc] initWithSessionStatus:v6 vehicleStore:v7];
    carCapabilitiesManager = v8->_carCapabilitiesManager;
    v8->_carCapabilitiesManager = v11;

    if (+[CRVehicleStoreAvailability isVehicleStoreAvailable])
    {
      [(CRCarPlayAppServiceAgent *)v8 _queryForUpdatedAsset];
    }

    else
    {
      v13 = +[NSNotificationCenter defaultCenter];
      [v13 addObserver:v8 selector:"_queryForUpdatedAsset" name:CRVehicleStoreAvailabilityDidChangeNotification object:0];
    }
  }

  return v8;
}

- (void)requestCarCapabilitiesUpdate
{
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100083BE4();
  }

  [(CRCarPlayAppServiceAgent *)self _queryForUpdatedAsset];
  [(CRCarPlayCapabilitiesManager *)self->_carCapabilitiesManager reconcileCapabilities];
}

- (void)requestCarCapabilitiesStatus:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100083C64();
  }

  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  carCapabilitiesManager = self->_carCapabilitiesManager;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100020B34;
  v16[3] = &unk_1000DDD80;
  v18 = v19;
  v10 = v7;
  v17 = v10;
  [(CRCarPlayCapabilitiesManager *)carCapabilitiesManager plistLookupFinishedCompletionHandler:v16];
  v11 = dispatch_time(0, 1000000000);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100020BF4;
  v13[3] = &unk_1000DDDA8;
  v14 = v10;
  v15 = v19;
  v12 = v10;
  dispatch_after(v11, &_dispatch_main_q, v13);

  _Block_object_dispose(v19, 8);
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CRCarPlayAppServiceAgent;
  [(CRCarPlayAppServiceAgent *)&v4 dealloc];
}

- (id)_denylistPreference
{
  v2 = CFPreferencesCopyAppValue(CRCarPlayAppDenylistPreferenceKey, CRPreferencesNotMigratedDomain);

  return v2;
}

- (void)_setDenylistPreference:(id)a3
{
  v4 = a3;
  v5 = [(CRCarPlayAppServiceAgent *)self _denylistPreference];
  CFPreferencesSetAppValue(CRCarPlayAppDenylistPreferenceKey, v4, CRPreferencesNotMigratedDomain);
  if (v4 && !v5 || ([v5 isEqual:v4] & 1) == 0)
  {
    v6 = CarGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Posting denylist changed", v8, 2u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.carkit.app.denylist-changed", 0, 0, 1u);
  }
}

- (void)_requestAssetCatalogDownload
{
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Requesting CarPlay MobileAssets catalog download", buf, 2u);
  }

  v4 = objc_alloc_init(MADownloadOptions);
  [v4 setAllowsCellularAccess:1];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100020F48;
  v5[3] = &unk_1000DDDD0;
  v5[4] = self;
  [MAAsset startCatalogDownload:@"com.apple.MobileAsset.CarExperienceAssets" options:v4 then:v5];
}

- (void)_queryForUpdatedAsset
{
  obj = self;
  objc_sync_enter(obj);
  if ([(CRCarPlayAppServiceAgent *)obj assetQueryInProgress])
  {
    objc_sync_exit(obj);
  }

  else
  {
    [(CRCarPlayAppServiceAgent *)obj setAssetQueryInProgress:1];
    objc_sync_exit(obj);

    v2 = +[NSNotificationCenter defaultCenter];
    [v2 removeObserver:obj name:CRVehicleStoreAvailabilityDidChangeNotification object:0];

    v3 = [(CRCarPlayAppServiceAgent *)obj assetQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[3] = &unk_1000DD480;
    block[4] = obj;
    block[2] = sub_100021120;
    dispatch_async(v3, block);
  }
}

- (void)_reloadWithAsset:(id)a3
{
  v25 = a3;
  v4 = [v25 getLocalFileUrl];
  v5 = self;
  objc_sync_enter(v5);
  [(CRCarPlayAppServiceAgent *)v5 setAssetURL:v4];
  objc_sync_exit(v5);

  v6 = [v4 URLByAppendingPathComponent:@"CarPlayAppDenylist"];
  v30 = [v6 URLByAppendingPathExtension:@"plist"];

  v29 = [NSArray arrayWithContentsOfURL:v30];
  v35 = 0;
  v7 = [(CRCarPlayAppServiceAgent *)v5 _parseDenylistContent:v29 error:&v35];
  v8 = v35;
  if (v7)
  {
    v9 = CarGeneralLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Fetched CarPlay MobileAsset App (denylist): %@", buf, 0xCu);
    }

    [(CRCarPlayAppServiceAgent *)v5 _setDenylistPreference:v7];
  }

  v10 = [v4 URLByAppendingPathComponent:@"CarPlayLiveActivityDenyList"];
  v28 = [v10 URLByAppendingPathExtension:@"plist"];

  v27 = [NSArray arrayWithContentsOfURL:v28];
  v34 = v8;
  v26 = [(CRCarPlayAppServiceAgent *)v5 _parseDenylistContent:v27 error:&v34];
  v11 = v34;

  v12 = CarGeneralLogging();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100083ED0(v11);
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = v26;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Fetched CarPlay LiveActivities (denylist): %@", buf, 0xCu);
    }

    v13 = objc_alloc_init(CRCarPlayLiveActivityDenyList);
    [v13 setDenyListBundleIdentifiers:v26];
  }

  v14 = [v4 URLByAppendingPathComponent:@"CarPlayWidgetDenyList"];
  v15 = [v14 URLByAppendingPathExtension:@"plist"];

  v16 = [NSArray arrayWithContentsOfURL:v15];
  v33 = v11;
  v17 = [(CRCarPlayAppServiceAgent *)v5 _parseDenylistContent:v16 error:&v33];
  v18 = v33;

  v19 = CarGeneralLogging();
  v20 = v19;
  if (v18)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100083F64(v18);
    }
  }

  else
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = v17;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Fetched CarPlay MobileAsset Widget (denylist): %@", buf, 0xCu);
    }

    v20 = objc_alloc_init(CRCarPlayWidgetDenyList);
    [v20 setDenyListExtensions:v17];
  }

  v21 = [v4 URLByAppendingPathComponent:@"CarPlayCapabilities.plist"];
  v32 = 0;
  v31 = 0;
  [v21 getResourceValue:&v32 forKey:NSURLIsRegularFileKey error:&v31];
  v22 = v32;
  v23 = v31;

  if (!v23 && [v22 BOOLValue])
  {
    v24 = CarGeneralLogging();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = v21;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Fetched CarPlay MobileAsset (carcapabilities) at %@", buf, 0xCu);
    }

    if ((CRIsTestContext() & 1) == 0)
    {
      [(CRCarPlayCapabilitiesManager *)v5->_carCapabilitiesManager setCarCapabilitiesURL:v21];
    }
  }
}

- (id)_parseDenylistContent:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[NSMutableArray array];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v6 addObject:{v12, v23}];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    v13 = [NSArray arrayWithArray:v6];
  }

  else
  {
    v14 = CarGeneralLogging();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100083FF8(v14, v15, v16, v17, v18, v19, v20, v21);
    }

    if (a4)
    {
      [NSError errorWithDomain:@"com.apple.carkit.app" code:1 userInfo:0];
      *a4 = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [v5 valueForEntitlement:@"com.apple.private.carkit.app"];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CRCarPlayAppService];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [NSSet setWithObjects:v9, v10, v11, objc_opt_class(), 0];
    [v8 setClasses:v12 forSelector:"requestCarCapabilitiesStatus:withReply:" argumentIndex:0 ofReply:1];

    [v5 setExportedInterface:v8];
    [v5 setExportedObject:self];
    [v5 resume];
  }

  else
  {
    v13 = CarGeneralLogging();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100084030(v5);
    }
  }

  return v7;
}

- (BOOL)ferriteDisabled
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(CRCarPlayAppServiceAgent *)v2 assetURL];
  objc_sync_exit(v2);

  if (v3)
  {
    v4 = [v3 URLByAppendingPathComponent:@"CarPlayDisabledAssetIDs.plist"];
    v5 = [[CRCarPlayDisabledAssetIDsManager alloc] initWithFile:v4];
    v6 = [(CRCarPlayDisabledAssetIDsManager *)v5 ferriteDisabled];
  }

  else
  {
    v7 = CarGeneralLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Asset URL is nil, assume not disabled.", v9, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)shouldDisableAssetWithIdentifier:(id)a3 iOSContentVersion:(id)a4 accessoryContentVersion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  objc_sync_enter(v11);
  v12 = [(CRCarPlayAppServiceAgent *)v11 assetURL];
  objc_sync_exit(v11);

  if (v12)
  {
    v13 = [v12 URLByAppendingPathComponent:@"CarPlayDisabledAssetIDs.plist"];
    v14 = [[CRCarPlayDisabledAssetIDsManager alloc] initWithFile:v13];
    v15 = [(CRCarPlayDisabledAssetIDsManager *)v14 isAssetDisabled:v8 accessoryContentVersion:v10 iosContentVersion:v9];
  }

  else
  {
    v16 = CarGeneralLogging();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Asset URL is nil, assume asset is not disabled.", v18, 2u);
    }

    v15 = 0;
  }

  return v15;
}

@end