@interface CRThemeAssetLibrarian
+ (BOOL)_enablesOverrideAssets;
+ (unint64_t)_supportedCompatibilityVersion;
- (CRThemeAssetLibrarian)initWithVehicleStore:(id)a3 sessionStatus:(id)a4;
- (id)_assetRequestForVehicle:(id)a3;
- (id)_assetVersionForVehicle:(id)a3;
- (id)_mainQueue_trackAssetProgressForVehicle:(id)a3;
- (id)_mainQueue_vehicleForSession:(id)a3;
- (id)_stagedAssetVersionForVehicle:(id)a3;
- (id)_vehicleForVehicleIdentifier:(id)a3;
- (id)_vehiclesForAssetRequest:(id)a3;
- (id)assetProgressForVehicle:(id)a3;
- (void)_mainQueue_applyOverrideAssetForVehicle:(id)a3;
- (void)_mainQueue_evaluateAssetTransferIfConnected;
- (void)_mainQueue_handleVehicleAssetConfigurationChanged;
- (void)_mainQueue_hasAsset:(id)a3 forAssetRequest:(id)a4;
- (void)_mainQueue_hintDownloadForVehicle:(id)a3;
- (void)_mainQueue_invalidateFileSenderSession;
- (void)_mainQueue_removeAssetProgressForVehicleID:(id)a3 assetID:(id)a4;
- (void)_mainQueue_removeOlderAssets;
- (void)_mainQueue_updateAssetRequests;
- (void)_mainQueue_updateOverallProgress;
- (void)assetDownloader:(id)a3 attemptingDownloadForAssetRequest:(id)a4 version:(id)a5 progress:(id)a6;
- (void)assetDownloader:(id)a3 failedDownloadForAssetRequest:(id)a4 version:(id)a5 error:(id)a6;
- (void)assetDownloader:(id)a3 foundNoAssetForAssetRequest:(id)a4 nextRequiredCompatibilityVersion:(id)a5;
- (void)assetDownloader:(id)a3 hasAsset:(id)a4 forAssetRequest:(id)a5;
- (void)libraryAgent:(id)a3 requestsCurrentAssetsForVehicleIdentifier:(id)a4 completion:(id)a5;
- (void)receivedClusterAssetIdentifier:(id)a3 assetVersion:(id)a4 sdkVersion:(id)a5 forVehicle:(id)a6;
- (void)registerObserver:(id)a3;
- (void)sessionDidConnect:(id)a3;
- (void)sessionDidDisconnect:(id)a3;
- (void)unregisterObserver:(id)a3;
- (void)vehicleStore:(id)a3 didRemoveVehicle:(id)a4;
- (void)vehicleStoreDidBecomeAvailable:(id)a3;
@end

@implementation CRThemeAssetLibrarian

+ (unint64_t)_supportedCompatibilityVersion
{
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 0);
  v3 = [v2 objectAtIndex:0];

  v4 = [v3 stringByAppendingPathComponent:@"PrivateFrameworks/CarPlayAssetUI.framework"];
  v5 = [NSBundle bundleWithPath:v4];
  v6 = [v5 infoDictionary];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100087DCC();
    }

    goto LABEL_15;
  }

  v9 = [v6 valueForKey:@"MaximumAssetCompatibilityVersion"];
  v10 = CarThemeAssetsLogging();
  v11 = v10;
  if (!v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100087D90();
    }

LABEL_15:
    v12 = 0;
    goto LABEL_16;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "MaximumAssetCompatibilityVersion is %@", &v14, 0xCu);
  }

  v12 = [v9 unsignedIntegerValue];
LABEL_16:

  return v12;
}

+ (BOOL)_enablesOverrideAssets
{
  if (CFPreferencesGetAppBooleanValue(@"AccessoryDeveloperEnabled", kCFPreferencesAnyApplication, 0))
  {
    return 1;
  }

  return CRIsInternalInstall();
}

- (CRThemeAssetLibrarian)initWithVehicleStore:(id)a3 sessionStatus:(id)a4
{
  v7 = a3;
  v8 = a4;
  v24.receiver = self;
  v24.super_class = CRThemeAssetLibrarian;
  v9 = [(CRThemeAssetLibrarian *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_vehicleStore, a3);
    [v7 addObserver:v10];
    objc_storeStrong(&v10->_sessionStatus, a4);
    [v8 addSessionObserver:v10];
    v11 = [[CARObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___CARThemeAssetLibrarianObserving];
    observers = v10->_observers;
    v10->_observers = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    progressForVehicleIDs = v10->_progressForVehicleIDs;
    v10->_progressForVehicleIDs = v13;

    v15 = objc_alloc_init(NSMutableDictionary);
    untrackedDownloadProgressForAssetIDs = v10->_untrackedDownloadProgressForAssetIDs;
    v10->_untrackedDownloadProgressForAssetIDs = v15;

    v17 = objc_alloc_init(CRThemeAssetDownloader);
    assetDownloader = v10->_assetDownloader;
    v10->_assetDownloader = v17;

    [(CRThemeAssetDownloader *)v10->_assetDownloader setDownloadObserver:v10];
    if ([objc_opt_class() _enablesOverrideAssets])
    {
      v19 = objc_alloc_init(CRThemeAssetOverrider);
      assetOverrider = v10->_assetOverrider;
      v10->_assetOverrider = v19;
    }

    v10->_currentSessionTransferStatus = 0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100051C34;
    block[3] = &unk_1000DD480;
    v23 = v10;
    dispatch_async(&_dispatch_main_q, block);
  }

  return v10;
}

- (void)_mainQueue_updateAssetRequests
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (+[CRVehicleStoreAvailability isVehicleStoreAvailable])
  {
    v20 = objc_alloc_init(NSMutableSet);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v3 = [(CRThemeAssetLibrarian *)self vehicleStore];
    v4 = [v3 allStoredVehicles];

    v5 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v22;
      *&v6 = 138412290;
      v19 = v6;
      do
      {
        v9 = 0;
        do
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = [(CRThemeAssetLibrarian *)self _assetRequestForVehicle:*(*(&v21 + 1) + 8 * v9), v19];
          if (v10)
          {
            v11 = [(CRThemeAssetLibrarian *)self assetOverrider];
            if (!v11)
            {
              goto LABEL_13;
            }

            v12 = v11;
            v13 = [(CRThemeAssetLibrarian *)self assetOverrider];
            v14 = [v10 assetIdentifier];
            v15 = [v13 hasOverrideAssetForAssetIdentifier:v14];

            if (v15)
            {
              v16 = CarThemeAssetsLogging();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v19;
                v26 = v10;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "using override asset for asset request: %@", buf, 0xCu);
              }
            }

            else
            {
LABEL_13:
              v17 = CarThemeAssetsLogging();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v19;
                v26 = v10;
                _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "adding download asset request: %@", buf, 0xCu);
              }

              [v20 addObject:v10];
            }
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v7);
    }

    v18 = [(CRThemeAssetLibrarian *)self assetDownloader];
    [v18 setAssetRequests:v20];
  }
}

- (void)_mainQueue_applyOverrideAssetForVehicle:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = [(CRThemeAssetLibrarian *)self _assetRequestForVehicle:v4];
  v6 = [(CRThemeAssetLibrarian *)self _assetVersionForVehicle:v4];
  v7 = [(CRThemeAssetLibrarian *)self _stagedAssetVersionForVehicle:v4];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;
  v11 = [(CRThemeAssetLibrarian *)self assetOverrider];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100052018;
  v15[3] = &unk_1000DF340;
  v16 = v10;
  v17 = v5;
  v18 = self;
  v19 = v4;
  v12 = v4;
  v13 = v5;
  v14 = v10;
  [v11 setupOverrideAssetForRequest:v13 newerThanVersion:v14 completion:v15];
}

- (void)_mainQueue_hasAsset:(id)a3 forAssetRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v33 = v6;
  v8 = [v6 version];
  v9 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v41 = v33;
    v42 = 2114;
    v43 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "hasAsset: %{public}@ forAssetRequest: %{public}@", buf, 0x16u);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v32 = v7;
  obj = [(CRThemeAssetLibrarian *)self _vehiclesForAssetRequest:v7];
  v10 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v36;
    do
    {
      v13 = 0;
      v14 = obj;
      do
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v14);
        }

        v15 = *(*(&v35 + 1) + 8 * v13);
        v16 = [(CRThemeAssetLibrarian *)self _assetVersionForVehicle:v15];
        v17 = v16;
        if (v16 && [v16 compare:v8] == -1)
        {
          v19 = [(CRThemeAssetLibrarian *)self _stagedAssetVersionForVehicle:v15];
          v18 = v19;
          if (v19)
          {
            if ([v19 compare:v8]!= -1)
            {
              v20 = CarThemeAssetsLogging();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v41 = v18;
                v21 = v20;
                v22 = "ignoring next cluster asset, already have staged asset version: %{public}@";
                goto LABEL_19;
              }

              goto LABEL_20;
            }

            v23 = [(CRThemeAssetLibrarian *)self sessionStatus];
            v24 = [v23 currentSession];

            v14 = obj;
            if (v24)
            {
              v20 = CarThemeAssetsLogging();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v41 = v18;
                v21 = v20;
                v22 = "ignoring next cluster asset, already have staged asset version: %{public}@ and currently connected";
LABEL_19:
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 0xCu);
              }

LABEL_20:

              goto LABEL_24;
            }
          }

          v25 = CarThemeAssetsLogging();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v41 = v33;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "staging asset %{public}@", buf, 0xCu);
          }

          v26 = [v8 iOSContentVersion];
          [v15 setStagedClusterAssetiOSContentVersion:v26];

          v27 = [v8 accessoryContentVersion];
          [v15 setStagedClusterAssetVersion:v27];

          v28 = [v33 baseURL];
          [v15 setStagedClusterAssetURL:v28];

          v29 = [(CRThemeAssetLibrarian *)self vehicleStore];
          v30 = [v29 saveVehicle:v15];

          [(CRThemeAssetLibrarian *)self _mainQueue_evaluateAssetTransferIfConnected];
          v14 = obj;
        }

        else
        {
          v18 = CarThemeAssetsLogging();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v41 = v8;
            v42 = 2114;
            v43 = v17;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "not staging asset version %{public}@ for vehicle with equal or newer asset version: %{public}@", buf, 0x16u);
          }
        }

LABEL_24:

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v14 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v11);
  }

  v31 = [(CRThemeAssetLibrarian *)self observers];
  [v31 notifyCompletedDownloadOfAsset:v33];
}

- (id)_mainQueue_vehicleForSession:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = [v4 MFiCertificateSerialNumber];
  if (v5)
  {
    v6 = [(CRThemeAssetLibrarian *)self vehicleStore];
    v7 = [v6 vehicleForCertificateSerial:v5];

    if (v7)
    {
      v7 = v7;
      v8 = v7;
    }

    else
    {
      v9 = CarThemeAssetsLogging();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v4;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "no paired vehicle matching session %@", &v11, 0xCu);
      }

      v8 = 0;
    }
  }

  else
  {
    v7 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100087E08();
    }

    v8 = 0;
  }

  return v8;
}

- (void)_mainQueue_evaluateAssetTransferIfConnected
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = [(CRThemeAssetLibrarian *)self sessionStatus];
  v4 = [v3 currentSession];

  if (v4)
  {
    v5 = [v4 configuration];
    v6 = [v5 supportsFileTransfer];

    v7 = CarThemeAssetsLogging();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (v6)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "evaluate asset transfer: connected", buf, 2u);
      }

      v7 = [(CRThemeAssetLibrarian *)self _mainQueue_vehicleForSession:v4];
      v9 = [(CRThemeAssetLibrarian *)self currentSessionTransferStatus];
      switch(v9)
      {
        case 3uLL:
          v10 = CarThemeAssetsLogging();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v11 = "asset transfer already failed, not trying again";
            goto LABEL_19;
          }

          goto LABEL_53;
        case 2uLL:
          v10 = CarThemeAssetsLogging();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v11 = "asset transfer already completed";
            goto LABEL_19;
          }

LABEL_53:

          goto LABEL_54;
        case 1uLL:
          v10 = CarThemeAssetsLogging();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v11 = "asset transfer already in progress";
LABEL_19:
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
            goto LABEL_53;
          }

          goto LABEL_53;
      }

      v13 = [(CRThemeAssetLibrarian *)self fileSenderSession];

      if (v13)
      {
        [(CRThemeAssetLibrarian *)self _mainQueue_invalidateFileSenderSession];
      }

      v10 = [v7 clusterAssetIdentifier];
      if (!v10)
      {
        v14 = CarThemeAssetsLogging();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "vehicle doesn't require assets", buf, 2u);
        }

        goto LABEL_52;
      }

      v14 = [(CRThemeAssetLibrarian *)self _assetVersionForVehicle:v7];
      v15 = [(CRThemeAssetLibrarian *)self _stagedAssetVersionForVehicle:v7];
      if (v15)
      {
        if ([v14 compare:v15]!= -1)
        {
LABEL_51:

LABEL_52:
          goto LABEL_53;
        }

        v16 = CarThemeAssetsLogging();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v40 = v15;
          v41 = 2114;
          v42 = v14;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "staged asset version %{public}@ is newer than vehicle's asset version %{public}@, starting update", buf, 0x16u);
        }

        v17 = [v14 accessoryContentVersion];
        v18 = [v15 accessoryContentVersion];
        if ([v17 isEqual:v18])
        {
          v19 = CarThemeAssetsLogging();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v40 = v15;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "staged asset accessory content version %{public}@ is the same as the active asset, no need to transfer", buf, 0xCu);
          }
        }

        else
        {
          v20 = [v17 isEqualToNumber:&off_1000E7AF8];
          v21 = [CARSessionChannel alloc];
          v32 = [v21 initWithSession:v4 channelType:kFigEndpointRemoteControlSessionClientTypeUUIDKey_CarPlayUpdateData];
          v33 = [[CRFileSender alloc] initWithChannel:v32 isPriority:v20];
          [(CRThemeAssetLibrarian *)self setFileSenderSession:v33];
          v22 = CarThemeAssetsLogging();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "file transfer channel opened", buf, 2u);
          }

          v34 = [v7 stagedClusterAssetURL];
          if (v34)
          {
            [(CRThemeAssetLibrarian *)self setCurrentSessionTransferStatus:1];
            v23 = CarThemeAssetsLogging();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v40 = v18;
              v41 = 2112;
              v42 = v34;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "sending version %@ from %@", buf, 0x16u);
            }

            v31 = [[CARThemeAsset alloc] initWithBaseURL:v34 version:v15];
            objc_initWeak(&location, self);
            v35[0] = _NSConcreteStackBlock;
            v35[1] = 3221225472;
            v35[2] = sub_100053100;
            v35[3] = &unk_1000DF390;
            objc_copyWeak(&v37, &location);
            v36 = v18;
            v24 = [(CRFileSender *)v33 sendThemeAsset:v31 completion:v35];
            if (v24)
            {
              v30 = [v7 identifier];
              v25 = [(CRThemeAssetLibrarian *)self progressForVehicleIDs];
              v26 = [v25 objectForKey:v30];

              if (v26)
              {
                [v26 setTransferProgress:v24];
                v27 = CarThemeAssetsLogging();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v40 = v7;
                  v41 = 2112;
                  v42 = v26;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "attempting transfer for vehicle %@, overall progress is now: %@", buf, 0x16u);
                }
              }
            }

            objc_destroyWeak(&v37);
            objc_destroyWeak(&location);
            v28 = v31;
          }

          else
          {
            v29 = CarThemeAssetsLogging();
            v28 = v29;
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              sub_100087E78();
              v28 = v29;
            }
          }
        }
      }

      else
      {
        v17 = CarThemeAssetsLogging();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v40 = v14;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "vehicle is using the latest asset version %{public}@, no staged asset available", buf, 0xCu);
        }
      }

      goto LABEL_51;
    }

    if (v8)
    {
      *buf = 0;
      v12 = "evaluate asset transfer: session doesn't support file transfer";
      goto LABEL_14;
    }
  }

  else
  {
    v7 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v12 = "evaluate asset transfer: not connected";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v12, buf, 2u);
    }
  }

LABEL_54:
}

- (void)_mainQueue_invalidateFileSenderSession
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = [(CRThemeAssetLibrarian *)self fileSenderSession];
  [v3 invalidate];

  [(CRThemeAssetLibrarian *)self setFileSenderSession:0];
}

- (void)_mainQueue_hintDownloadForVehicle:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = [(CRThemeAssetLibrarian *)self _assetRequestForVehicle:v4];

  if (v5)
  {
    v6 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "hinting download request for %@", &v8, 0xCu);
    }

    v7 = [(CRThemeAssetLibrarian *)self assetDownloader];
    [v7 handleDownloadHintForAssetRequest:v5];
  }
}

- (void)_mainQueue_removeOlderAssets
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = +[NSMutableDictionary dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(CRThemeAssetLibrarian *)self vehicleStore];
  v5 = [v4 allStoredVehicles];

  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 clusterAssetIdentifier];
        if (v11)
        {
          v12 = [(CRThemeAssetLibrarian *)self _assetVersionForVehicle:v10];
          v13 = [v3 objectForKey:v11];
          v14 = v13;
          if (v12 && (!v13 || [v12 compare:v13] == -1))
          {
            [v3 setObject:v12 forKey:v11];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100053614;
  v15[3] = &unk_1000DF3B8;
  v15[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v15];
}

- (void)_mainQueue_handleVehicleAssetConfigurationChanged
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  [(CRThemeAssetLibrarian *)self _mainQueue_updateAssetRequests];
  [(CRThemeAssetLibrarian *)self _mainQueue_evaluateAssetTransferIfConnected];

  [(CRThemeAssetLibrarian *)self _mainQueue_removeOlderAssets];
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  v5 = [(CRThemeAssetLibrarian *)self observers];
  [v5 registerObserver:v4];
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  v5 = [(CRThemeAssetLibrarian *)self observers];
  [v5 unregisterObserver:v4];
}

- (void)receivedClusterAssetIdentifier:(id)a3 assetVersion:(id)a4 sdkVersion:(id)a5 forVehicle:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v14 = v13;
  v15 = v14;
  if (v14 && ([v14 isPaired] & 1) != 0)
  {
    v16 = [(CRThemeAssetLibrarian *)self _assetVersionForVehicle:v15];
    v17 = [v15 clusterAssetURL];
    v18 = v17;
    v19 = 0;
    if (v16 && v17)
    {
      v19 = [[CARThemeAsset alloc] initWithBaseURL:v17 version:v16];
    }

    v70 = v16;
    v20 = [v15 supportsThemeAssets];
    v21 = v20 == 0;

    if (!v20)
    {
      v22 = CarThemeAssetsLogging();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "updating supportsThemeAssets to YES", buf, 2u);
      }

      [v15 setSupportsThemeAssets:&__kCFBooleanTrue];
    }

    v69 = v18;
    v23 = [v15 clusterAssetIdentifier];
    v24 = v23;
    if (v10 && v23)
    {
      v25 = [v23 isEqual:v10];

      if (v25)
      {
        goto LABEL_21;
      }
    }

    else
    {

      if (!v10)
      {
        goto LABEL_21;
      }
    }

    v27 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [v15 clusterAssetIdentifier];
      *buf = 138543618;
      v72 = v28;
      v73 = 2114;
      v74 = v10;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "updating cluster asset identifier from %{public}@ to %{public}@", buf, 0x16u);
    }

    [v15 setClusterAssetIdentifier:v10];
    v21 = 1;
LABEL_21:
    v29 = [v15 clusterAssetVersion];
    v30 = v29;
    if (v11 && v29)
    {
      if ([v29 isEqual:v11])
      {
        goto LABEL_24;
      }
    }

    else if (!v11)
    {
LABEL_24:
      v31 = [v15 clusterAssetVersion];
      v32 = [v31 isEqual:&off_1000E7AF8];

      if (!v32)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }

LABEL_28:
    v33 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [v15 clusterAssetVersion];
      *buf = 138543618;
      v72 = v34;
      v73 = 2114;
      v74 = v11;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "updating cluster asset version from %{public}@ to %{public}@", buf, 0x16u);
    }

    [v15 setClusterAssetVersion:v11];
    v21 = 1;
LABEL_31:
    v35 = [v15 clusterAssetVersion];
    v36 = [v15 stagedClusterAssetVersion];
    v37 = [v35 isEqual:v36];

    if (v37)
    {
      v38 = CarThemeAssetsLogging();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = [v15 clusterAssetiOSContentVersion];
        v40 = [v15 stagedClusterAssetiOSContentVersion];
        *buf = 138543618;
        v72 = v39;
        v73 = 2114;
        v74 = v40;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "updating cluster iOS content version from %{public}@ to %{public}@", buf, 0x16u);
      }

      v21 = 1;
    }

    v41 = [v15 SDKVersion];
    v42 = v41;
    if (v12 && v41)
    {
      v43 = [v41 isEqual:v12];

      if (v43)
      {
        goto LABEL_38;
      }
    }

    else
    {

      if (!v12)
      {
LABEL_38:
        if (!v21)
        {
          v44 = CarGeneralLogging();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "saved vehicle already has current cluster information", buf, 2u);
          }

          v26 = v15;
LABEL_66:

          v61 = [v26 supportsThemeAssets];

          if (v61)
          {
            [(CRThemeAssetLibrarian *)self _mainQueue_updateOverallProgress];
            v62 = [(CRThemeAssetLibrarian *)self assetOverrider];
            if (v62)
            {
              v63 = v62;
              v64 = [(CRThemeAssetLibrarian *)self assetOverrider];
              v65 = [v64 hasOverrideAssetForAssetIdentifier:v10];

              if (v65)
              {
                [(CRThemeAssetLibrarian *)self _mainQueue_applyOverrideAssetForVehicle:v26];
              }
            }
          }

          goto LABEL_71;
        }

LABEL_46:
        v47 = CarGeneralLogging();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v72 = v15;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Saving vehicle %@ to update cluster information", buf, 0xCu);
        }

        v68 = [v15 stagedClusterAssetiOSContentVersion];
        v48 = [v15 stagedClusterAssetVersion];
        v49 = [v15 stagedClusterAssetURL];
        v50 = v49;
        if (v48 && v49)
        {
          v51 = [v11 compare:v48];
          v52 = CarThemeAssetsLogging();
          v53 = v52;
          if (v51)
          {
            if (v51 == -1)
            {
              if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
              {
                sub_100087FE4();
              }
            }

            else
            {
              if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
              {
                sub_100088054();
              }

              [v15 setStagedClusterAssetiOSContentVersion:0];
              [v15 setStagedClusterAssetVersion:0];
              [v15 setStagedClusterAssetURL:0];
            }
          }

          else
          {
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "staged asset is now the current asset, making staged asset the current asset", buf, 2u);
            }

            [v15 setClusterAssetURL:v50];
            [v15 setClusterAssetiOSContentVersion:v68];
            [v15 setStagedClusterAssetiOSContentVersion:0];
            [v15 setStagedClusterAssetVersion:0];
            [v15 setStagedClusterAssetURL:0];
            v67 = [(CRThemeAssetLibrarian *)self _assetVersionForVehicle:v15];
            v54 = [[CARThemeAsset alloc] initWithBaseURL:v50 version:v67];
            v55 = CarThemeAssetsLogging();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v72 = v54;
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "updating to asset %@", buf, 0xCu);
            }

            v56 = [(CRThemeAssetLibrarian *)self observers];
            [v15 identifier];
            v66 = self;
            v58 = v57 = v54;
            [v56 notifyDidUpdateFromAsset:v19 toAsset:v57 forVehicleIdentifier:v58];

            self = v66;
          }
        }

        v59 = [(CRThemeAssetLibrarian *)self vehicleStore];
        v26 = [v59 saveVehicle:v15 withMergePolicy:&stru_1000DF3F8];

        v60 = [v26 supportsThemeAssets];

        if (v60)
        {
          [(CRThemeAssetLibrarian *)self _mainQueue_handleVehicleAssetConfigurationChanged];
        }

        v44 = v68;
        goto LABEL_66;
      }
    }

    v45 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = [v15 SDKVersion];
      *buf = 138543618;
      v72 = v46;
      v73 = 2114;
      v74 = v12;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "updating SDK version from %{public}@ to %{public}@", buf, 0x16u);
    }

    [v15 setSDKVersion:v12];
    goto LABEL_46;
  }

  v19 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_100088090();
  }

  v26 = v15;
LABEL_71:
}

- (id)assetProgressForVehicle:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = [(CRThemeAssetLibrarian *)self _mainQueue_trackAssetProgressForVehicle:v4];

  v6 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "overall asset progress: %@", &v8, 0xCu);
  }

  return v5;
}

- (void)vehicleStoreDidBecomeAvailable:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000542DC;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)vehicleStore:(id)a3 didRemoveVehicle:(id)a4
{
  v5 = a4;
  v6 = [v5 supportsThemeAssets];

  if (v6)
  {
    v7 = [v5 identifier];
    [v5 clusterAssetIdentifier];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000543D8;
    block[3] = &unk_1000DD6F0;
    block[4] = self;
    v12 = v11 = v7;
    v8 = v12;
    v9 = v7;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)sessionDidConnect:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005448C;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)sessionDidDisconnect:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100054564;
  v4[3] = &unk_1000DD580;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)assetDownloader:(id)a3 foundNoAssetForAssetRequest:(id)a4 nextRequiredCompatibilityVersion:(id)a5
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000546D8;
  block[3] = &unk_1000DD6F0;
  v10 = a4;
  v11 = self;
  v12 = a5;
  v7 = v12;
  v8 = v10;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)assetDownloader:(id)a3 attemptingDownloadForAssetRequest:(id)a4 version:(id)a5 progress:(id)a6
{
  v9 = a4;
  v10 = a5;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10005498C;
  v14[3] = &unk_1000DE420;
  v15 = v9;
  v16 = self;
  v17 = a6;
  v18 = v10;
  v11 = v10;
  v12 = v17;
  v13 = v9;
  dispatch_async(&_dispatch_main_q, v14);
}

- (void)assetDownloader:(id)a3 failedDownloadForAssetRequest:(id)a4 version:(id)a5 error:(id)a6
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100054BEC;
  block[3] = &unk_1000DD6F0;
  v11 = a5;
  v12 = self;
  v13 = a6;
  v8 = v13;
  v9 = v11;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)assetDownloader:(id)a3 hasAsset:(id)a4 forAssetRequest:(id)a5
{
  v7 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100054D7C;
  block[3] = &unk_1000DD6F0;
  v11 = a5;
  v12 = self;
  v13 = v7;
  v8 = v7;
  v9 = v11;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)libraryAgent:(id)a3 requestsCurrentAssetsForVehicleIdentifier:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (v8)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100054FAC;
    block[3] = &unk_1000DE1D0;
    block[4] = self;
    v10 = v7;
    v11 = v8;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (id)_vehicleForVehicleIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CRThemeAssetLibrarian *)self vehicleStore];
    v6 = [v5 allStoredVehicles];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100055470;
    v9[3] = &unk_1000DF420;
    v10 = v4;
    v7 = [v6 bs_firstObjectPassingTest:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_assetRequestForVehicle:(id)a3
{
  v3 = a3;
  v4 = [v3 clusterAssetIdentifier];
  v5 = [v3 SDKVersion];
  v6 = v5;
  v7 = 0;
  if (v4 && v5)
  {
    v8 = [v3 clusterAssetVersion];
    if (v8)
    {
      v9 = [v3 clusterAssetVersion];
      v10 = [v9 isEqualToNumber:&off_1000E7AF8];
    }

    else
    {
      v10 = 1;
    }

    v7 = -[CRThemeAssetDownloadRequest initWithAssetIdentifier:maximumSDKVersion:maximumCompatibilityVersion:requireCatalogUpdate:]([CRThemeAssetDownloadRequest alloc], "initWithAssetIdentifier:maximumSDKVersion:maximumCompatibilityVersion:requireCatalogUpdate:", v4, v6, [objc_opt_class() _supportedCompatibilityVersion], v10);
  }

  return v7;
}

- (id)_vehiclesForAssetRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 assetIdentifier];
  v6 = [v4 maximumSDKVersion];
  v7 = [(CRThemeAssetLibrarian *)self vehicleStore];
  v8 = [v7 allStoredVehicles];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000556E8;
  v14[3] = &unk_1000DF448;
  v15 = v5;
  v16 = v6;
  v17 = v4;
  v9 = v4;
  v10 = v6;
  v11 = v5;
  v12 = [v8 bs_filter:v14];

  return v12;
}

- (id)_assetVersionForVehicle:(id)a3
{
  v3 = a3;
  v4 = [v3 clusterAssetIdentifier];
  v5 = [v3 clusterAssetiOSContentVersion];
  v6 = [v3 clusterAssetVersion];

  v7 = 0;
  if (v4 && v6)
  {
    if (!v5)
    {
      v5 = @"0";
    }

    v7 = [[CARThemeAssetVersion alloc] initWithIdentifier:v4 iOSContentVersion:v5 accessoryContentVersion:v6];
  }

  return v7;
}

- (id)_stagedAssetVersionForVehicle:(id)a3
{
  v3 = a3;
  v4 = [v3 clusterAssetIdentifier];
  v5 = [v3 stagedClusterAssetiOSContentVersion];
  v6 = [v3 stagedClusterAssetVersion];

  v7 = 0;
  if (v4 && v6)
  {
    if (!v5)
    {
      v5 = @"0";
    }

    v7 = [[CARThemeAssetVersion alloc] initWithIdentifier:v4 iOSContentVersion:v5 accessoryContentVersion:v6];
  }

  return v7;
}

- (id)_mainQueue_trackAssetProgressForVehicle:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = [v4 identifier];

  if (v5)
  {
    v6 = [(CRThemeAssetLibrarian *)self progressForVehicleIDs];
    v7 = [v6 objectForKey:v5];

    if (!v7)
    {
      v7 = objc_alloc_init(CRThemeAssetProgress);
      v8 = [(CRThemeAssetLibrarian *)self progressForVehicleIDs];
      [v8 setObject:v7 forKey:v5];

      v9 = CarThemeAssetsLogging();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [(CRThemeAssetProgress *)v7 overallProgress];
        v13 = 138543618;
        v14 = v10;
        v15 = 2114;
        v16 = v5;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "created asset progress %{public}@ for vehicleID: %{public}@", &v13, 0x16u);
      }
    }

    v11 = [(CRThemeAssetProgress *)v7 overallProgress];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_mainQueue_updateOverallProgress
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = +[NSMutableArray array];
  v4 = [(CRThemeAssetLibrarian *)self untrackedDownloadProgressForAssetIDs];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100055C0C;
  v10 = &unk_1000DF498;
  v11 = self;
  v12 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:&v7];

  v6 = [(CRThemeAssetLibrarian *)self untrackedDownloadProgressForAssetIDs:v7];
  [v6 removeObjectsForKeys:v5];
}

- (void)_mainQueue_removeAssetProgressForVehicleID:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v8 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 138543618;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "removing asset progress for vehicleID: %{public}@ assetID: %{public}@", &v11, 0x16u);
  }

  if (v6)
  {
    v9 = [(CRThemeAssetLibrarian *)self progressForVehicleIDs];
    [v9 removeObjectForKey:v6];
  }

  if (v7)
  {
    v10 = [(CRThemeAssetLibrarian *)self untrackedDownloadProgressForAssetIDs];
    [v10 removeObjectForKey:v7];
  }
}

@end