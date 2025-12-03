@interface CRCarPlayAppServiceAgent
- (BOOL)ferriteDisabled;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)shouldDisableAssetWithIdentifier:(id)identifier iOSContentVersion:(id)version accessoryContentVersion:(id)contentVersion;
- (CRCarPlayAppServiceAgent)initWithSessionStatus:(id)status vehicleStore:(id)store;
- (id)_denylistPreference;
- (id)_parseDenylistContent:(id)content error:(id *)error;
- (void)_queryForUpdatedAsset;
- (void)_reloadWithAsset:(id)asset;
- (void)_requestAssetCatalogDownload;
- (void)_setDenylistPreference:(id)preference;
- (void)dealloc;
- (void)requestCarCapabilitiesStatus:(id)status withReply:(id)reply;
- (void)requestCarCapabilitiesUpdate;
@end

@implementation CRCarPlayAppServiceAgent

- (CRCarPlayAppServiceAgent)initWithSessionStatus:(id)status vehicleStore:(id)store
{
  statusCopy = status;
  storeCopy = store;
  v15.receiver = self;
  v15.super_class = CRCarPlayAppServiceAgent;
  v8 = [(CRCarPlayAppServiceAgent *)&v15 init];
  if (v8)
  {
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.carkit.AssetQuery", v9);
    [(CRCarPlayAppServiceAgent *)v8 setAssetQueue:v10];

    [(CRCarPlayAppServiceAgent *)v8 setAssetQueryInProgress:0];
    v11 = [[CRCarPlayCapabilitiesManager alloc] initWithSessionStatus:statusCopy vehicleStore:storeCopy];
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

- (void)requestCarCapabilitiesStatus:(id)status withReply:(id)reply
{
  statusCopy = status;
  replyCopy = reply;
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
  v10 = replyCopy;
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

- (void)_setDenylistPreference:(id)preference
{
  preferenceCopy = preference;
  _denylistPreference = [(CRCarPlayAppServiceAgent *)self _denylistPreference];
  CFPreferencesSetAppValue(CRCarPlayAppDenylistPreferenceKey, preferenceCopy, CRPreferencesNotMigratedDomain);
  if (preferenceCopy && !_denylistPreference || ([_denylistPreference isEqual:preferenceCopy] & 1) == 0)
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

    assetQueue = [(CRCarPlayAppServiceAgent *)obj assetQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[3] = &unk_1000DD480;
    block[4] = obj;
    block[2] = sub_100021120;
    dispatch_async(assetQueue, block);
  }
}

- (void)_reloadWithAsset:(id)asset
{
  assetCopy = asset;
  getLocalFileUrl = [assetCopy getLocalFileUrl];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(CRCarPlayAppServiceAgent *)selfCopy setAssetURL:getLocalFileUrl];
  objc_sync_exit(selfCopy);

  v6 = [getLocalFileUrl URLByAppendingPathComponent:@"CarPlayAppDenylist"];
  v30 = [v6 URLByAppendingPathExtension:@"plist"];

  v29 = [NSArray arrayWithContentsOfURL:v30];
  v35 = 0;
  v7 = [(CRCarPlayAppServiceAgent *)selfCopy _parseDenylistContent:v29 error:&v35];
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

    [(CRCarPlayAppServiceAgent *)selfCopy _setDenylistPreference:v7];
  }

  v10 = [getLocalFileUrl URLByAppendingPathComponent:@"CarPlayLiveActivityDenyList"];
  v28 = [v10 URLByAppendingPathExtension:@"plist"];

  v27 = [NSArray arrayWithContentsOfURL:v28];
  v34 = v8;
  v26 = [(CRCarPlayAppServiceAgent *)selfCopy _parseDenylistContent:v27 error:&v34];
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

  v14 = [getLocalFileUrl URLByAppendingPathComponent:@"CarPlayWidgetDenyList"];
  v15 = [v14 URLByAppendingPathExtension:@"plist"];

  v16 = [NSArray arrayWithContentsOfURL:v15];
  v33 = v11;
  v17 = [(CRCarPlayAppServiceAgent *)selfCopy _parseDenylistContent:v16 error:&v33];
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

  v21 = [getLocalFileUrl URLByAppendingPathComponent:@"CarPlayCapabilities.plist"];
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
      [(CRCarPlayCapabilitiesManager *)selfCopy->_carCapabilitiesManager setCarCapabilitiesURL:v21];
    }
  }
}

- (id)_parseDenylistContent:(id)content error:(id *)error
{
  contentCopy = content;
  v6 = +[NSMutableArray array];
  if (contentCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = contentCopy;
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

    if (error)
    {
      [NSError errorWithDomain:@"com.apple.carkit.app" code:1 userInfo:0];
      *error = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.private.carkit.app"];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CRCarPlayAppService];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [NSSet setWithObjects:v9, v10, v11, objc_opt_class(), 0];
    [v8 setClasses:v12 forSelector:"requestCarCapabilitiesStatus:withReply:" argumentIndex:0 ofReply:1];

    [connectionCopy setExportedInterface:v8];
    [connectionCopy setExportedObject:self];
    [connectionCopy resume];
  }

  else
  {
    v13 = CarGeneralLogging();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100084030(connectionCopy);
    }
  }

  return bOOLValue;
}

- (BOOL)ferriteDisabled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  assetURL = [(CRCarPlayAppServiceAgent *)selfCopy assetURL];
  objc_sync_exit(selfCopy);

  if (assetURL)
  {
    v4 = [assetURL URLByAppendingPathComponent:@"CarPlayDisabledAssetIDs.plist"];
    v5 = [[CRCarPlayDisabledAssetIDsManager alloc] initWithFile:v4];
    ferriteDisabled = [(CRCarPlayDisabledAssetIDsManager *)v5 ferriteDisabled];
  }

  else
  {
    v7 = CarGeneralLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Asset URL is nil, assume not disabled.", v9, 2u);
    }

    ferriteDisabled = 0;
  }

  return ferriteDisabled;
}

- (BOOL)shouldDisableAssetWithIdentifier:(id)identifier iOSContentVersion:(id)version accessoryContentVersion:(id)contentVersion
{
  identifierCopy = identifier;
  versionCopy = version;
  contentVersionCopy = contentVersion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  assetURL = [(CRCarPlayAppServiceAgent *)selfCopy assetURL];
  objc_sync_exit(selfCopy);

  if (assetURL)
  {
    v13 = [assetURL URLByAppendingPathComponent:@"CarPlayDisabledAssetIDs.plist"];
    v14 = [[CRCarPlayDisabledAssetIDsManager alloc] initWithFile:v13];
    v15 = [(CRCarPlayDisabledAssetIDsManager *)v14 isAssetDisabled:identifierCopy accessoryContentVersion:contentVersionCopy iosContentVersion:versionCopy];
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