@interface CRThemeAssetLibrarian
+ (BOOL)_enablesOverrideAssets;
+ (unint64_t)_supportedCompatibilityVersion;
- (CRThemeAssetLibrarian)initWithVehicleStore:(id)store sessionStatus:(id)status;
- (id)_assetRequestForVehicle:(id)vehicle;
- (id)_assetVersionForVehicle:(id)vehicle;
- (id)_mainQueue_trackAssetProgressForVehicle:(id)vehicle;
- (id)_mainQueue_vehicleForSession:(id)session;
- (id)_stagedAssetVersionForVehicle:(id)vehicle;
- (id)_vehicleForVehicleIdentifier:(id)identifier;
- (id)_vehiclesForAssetRequest:(id)request;
- (id)assetProgressForVehicle:(id)vehicle;
- (void)_mainQueue_applyOverrideAssetForVehicle:(id)vehicle;
- (void)_mainQueue_evaluateAssetTransferIfConnected;
- (void)_mainQueue_handleVehicleAssetConfigurationChanged;
- (void)_mainQueue_hasAsset:(id)asset forAssetRequest:(id)request;
- (void)_mainQueue_hintDownloadForVehicle:(id)vehicle;
- (void)_mainQueue_invalidateFileSenderSession;
- (void)_mainQueue_removeAssetProgressForVehicleID:(id)d assetID:(id)iD;
- (void)_mainQueue_removeOlderAssets;
- (void)_mainQueue_updateAssetRequests;
- (void)_mainQueue_updateOverallProgress;
- (void)assetDownloader:(id)downloader attemptingDownloadForAssetRequest:(id)request version:(id)version progress:(id)progress;
- (void)assetDownloader:(id)downloader failedDownloadForAssetRequest:(id)request version:(id)version error:(id)error;
- (void)assetDownloader:(id)downloader foundNoAssetForAssetRequest:(id)request nextRequiredCompatibilityVersion:(id)version;
- (void)assetDownloader:(id)downloader hasAsset:(id)asset forAssetRequest:(id)request;
- (void)libraryAgent:(id)agent requestsCurrentAssetsForVehicleIdentifier:(id)identifier completion:(id)completion;
- (void)receivedClusterAssetIdentifier:(id)identifier assetVersion:(id)version sdkVersion:(id)sdkVersion forVehicle:(id)vehicle;
- (void)registerObserver:(id)observer;
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidDisconnect:(id)disconnect;
- (void)unregisterObserver:(id)observer;
- (void)vehicleStore:(id)store didRemoveVehicle:(id)vehicle;
- (void)vehicleStoreDidBecomeAvailable:(id)available;
@end

@implementation CRThemeAssetLibrarian

+ (unint64_t)_supportedCompatibilityVersion
{
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 0);
  v3 = [v2 objectAtIndex:0];

  v4 = [v3 stringByAppendingPathComponent:@"PrivateFrameworks/CarPlayAssetUI.framework"];
  v5 = [NSBundle bundleWithPath:v4];
  infoDictionary = [v5 infoDictionary];
  v7 = infoDictionary;
  if (v5)
  {
    v8 = infoDictionary == 0;
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

  v9 = [infoDictionary valueForKey:@"MaximumAssetCompatibilityVersion"];
  v10 = CarThemeAssetsLogging();
  v11 = v10;
  if (!v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100087D90();
    }

LABEL_15:
    unsignedIntegerValue = 0;
    goto LABEL_16;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "MaximumAssetCompatibilityVersion is %@", &v14, 0xCu);
  }

  unsignedIntegerValue = [v9 unsignedIntegerValue];
LABEL_16:

  return unsignedIntegerValue;
}

+ (BOOL)_enablesOverrideAssets
{
  if (CFPreferencesGetAppBooleanValue(@"AccessoryDeveloperEnabled", kCFPreferencesAnyApplication, 0))
  {
    return 1;
  }

  return CRIsInternalInstall();
}

- (CRThemeAssetLibrarian)initWithVehicleStore:(id)store sessionStatus:(id)status
{
  storeCopy = store;
  statusCopy = status;
  v24.receiver = self;
  v24.super_class = CRThemeAssetLibrarian;
  v9 = [(CRThemeAssetLibrarian *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_vehicleStore, store);
    [storeCopy addObserver:v10];
    objc_storeStrong(&v10->_sessionStatus, status);
    [statusCopy addSessionObserver:v10];
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
    vehicleStore = [(CRThemeAssetLibrarian *)self vehicleStore];
    allStoredVehicles = [vehicleStore allStoredVehicles];

    v5 = [allStoredVehicles countByEnumeratingWithState:&v21 objects:v27 count:16];
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
            objc_enumerationMutation(allStoredVehicles);
          }

          v10 = [(CRThemeAssetLibrarian *)self _assetRequestForVehicle:*(*(&v21 + 1) + 8 * v9), v19];
          if (v10)
          {
            assetOverrider = [(CRThemeAssetLibrarian *)self assetOverrider];
            if (!assetOverrider)
            {
              goto LABEL_13;
            }

            v12 = assetOverrider;
            assetOverrider2 = [(CRThemeAssetLibrarian *)self assetOverrider];
            assetIdentifier = [v10 assetIdentifier];
            v15 = [assetOverrider2 hasOverrideAssetForAssetIdentifier:assetIdentifier];

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
        v7 = [allStoredVehicles countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v7);
    }

    assetDownloader = [(CRThemeAssetLibrarian *)self assetDownloader];
    [assetDownloader setAssetRequests:v20];
  }
}

- (void)_mainQueue_applyOverrideAssetForVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = [(CRThemeAssetLibrarian *)self _assetRequestForVehicle:vehicleCopy];
  v6 = [(CRThemeAssetLibrarian *)self _assetVersionForVehicle:vehicleCopy];
  v7 = [(CRThemeAssetLibrarian *)self _stagedAssetVersionForVehicle:vehicleCopy];
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
  assetOverrider = [(CRThemeAssetLibrarian *)self assetOverrider];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100052018;
  v15[3] = &unk_1000DF340;
  v16 = v10;
  v17 = v5;
  selfCopy = self;
  v19 = vehicleCopy;
  v12 = vehicleCopy;
  v13 = v5;
  v14 = v10;
  [assetOverrider setupOverrideAssetForRequest:v13 newerThanVersion:v14 completion:v15];
}

- (void)_mainQueue_hasAsset:(id)asset forAssetRequest:(id)request
{
  assetCopy = asset;
  requestCopy = request;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v33 = assetCopy;
  version = [assetCopy version];
  v9 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v41 = v33;
    v42 = 2114;
    v43 = requestCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "hasAsset: %{public}@ forAssetRequest: %{public}@", buf, 0x16u);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v32 = requestCopy;
  obj = [(CRThemeAssetLibrarian *)self _vehiclesForAssetRequest:requestCopy];
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
        if (v16 && [v16 compare:version] == -1)
        {
          v19 = [(CRThemeAssetLibrarian *)self _stagedAssetVersionForVehicle:v15];
          v18 = v19;
          if (v19)
          {
            if ([v19 compare:version]!= -1)
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

            sessionStatus = [(CRThemeAssetLibrarian *)self sessionStatus];
            currentSession = [sessionStatus currentSession];

            v14 = obj;
            if (currentSession)
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

          iOSContentVersion = [version iOSContentVersion];
          [v15 setStagedClusterAssetiOSContentVersion:iOSContentVersion];

          accessoryContentVersion = [version accessoryContentVersion];
          [v15 setStagedClusterAssetVersion:accessoryContentVersion];

          baseURL = [v33 baseURL];
          [v15 setStagedClusterAssetURL:baseURL];

          vehicleStore = [(CRThemeAssetLibrarian *)self vehicleStore];
          v30 = [vehicleStore saveVehicle:v15];

          [(CRThemeAssetLibrarian *)self _mainQueue_evaluateAssetTransferIfConnected];
          v14 = obj;
        }

        else
        {
          v18 = CarThemeAssetsLogging();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v41 = version;
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

  observers = [(CRThemeAssetLibrarian *)self observers];
  [observers notifyCompletedDownloadOfAsset:v33];
}

- (id)_mainQueue_vehicleForSession:(id)session
{
  sessionCopy = session;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  mFiCertificateSerialNumber = [sessionCopy MFiCertificateSerialNumber];
  if (mFiCertificateSerialNumber)
  {
    vehicleStore = [(CRThemeAssetLibrarian *)self vehicleStore];
    v7 = [vehicleStore vehicleForCertificateSerial:mFiCertificateSerialNumber];

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
        v12 = sessionCopy;
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
  sessionStatus = [(CRThemeAssetLibrarian *)self sessionStatus];
  currentSession = [sessionStatus currentSession];

  if (currentSession)
  {
    configuration = [currentSession configuration];
    supportsFileTransfer = [configuration supportsFileTransfer];

    v7 = CarThemeAssetsLogging();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (supportsFileTransfer)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "evaluate asset transfer: connected", buf, 2u);
      }

      v7 = [(CRThemeAssetLibrarian *)self _mainQueue_vehicleForSession:currentSession];
      currentSessionTransferStatus = [(CRThemeAssetLibrarian *)self currentSessionTransferStatus];
      switch(currentSessionTransferStatus)
      {
        case 3uLL:
          clusterAssetIdentifier = CarThemeAssetsLogging();
          if (os_log_type_enabled(clusterAssetIdentifier, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v11 = "asset transfer already failed, not trying again";
            goto LABEL_19;
          }

          goto LABEL_53;
        case 2uLL:
          clusterAssetIdentifier = CarThemeAssetsLogging();
          if (os_log_type_enabled(clusterAssetIdentifier, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v11 = "asset transfer already completed";
            goto LABEL_19;
          }

LABEL_53:

          goto LABEL_54;
        case 1uLL:
          clusterAssetIdentifier = CarThemeAssetsLogging();
          if (os_log_type_enabled(clusterAssetIdentifier, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v11 = "asset transfer already in progress";
LABEL_19:
            _os_log_impl(&_mh_execute_header, clusterAssetIdentifier, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
            goto LABEL_53;
          }

          goto LABEL_53;
      }

      fileSenderSession = [(CRThemeAssetLibrarian *)self fileSenderSession];

      if (fileSenderSession)
      {
        [(CRThemeAssetLibrarian *)self _mainQueue_invalidateFileSenderSession];
      }

      clusterAssetIdentifier = [v7 clusterAssetIdentifier];
      if (!clusterAssetIdentifier)
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

        accessoryContentVersion = [v14 accessoryContentVersion];
        accessoryContentVersion2 = [v15 accessoryContentVersion];
        if ([accessoryContentVersion isEqual:accessoryContentVersion2])
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
          v20 = [accessoryContentVersion isEqualToNumber:&off_1000E7AF8];
          v21 = [CARSessionChannel alloc];
          v32 = [v21 initWithSession:currentSession channelType:kFigEndpointRemoteControlSessionClientTypeUUIDKey_CarPlayUpdateData];
          v33 = [[CRFileSender alloc] initWithChannel:v32 isPriority:v20];
          [(CRThemeAssetLibrarian *)self setFileSenderSession:v33];
          v22 = CarThemeAssetsLogging();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "file transfer channel opened", buf, 2u);
          }

          stagedClusterAssetURL = [v7 stagedClusterAssetURL];
          if (stagedClusterAssetURL)
          {
            [(CRThemeAssetLibrarian *)self setCurrentSessionTransferStatus:1];
            v23 = CarThemeAssetsLogging();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v40 = accessoryContentVersion2;
              v41 = 2112;
              v42 = stagedClusterAssetURL;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "sending version %@ from %@", buf, 0x16u);
            }

            v31 = [[CARThemeAsset alloc] initWithBaseURL:stagedClusterAssetURL version:v15];
            objc_initWeak(&location, self);
            v35[0] = _NSConcreteStackBlock;
            v35[1] = 3221225472;
            v35[2] = sub_100053100;
            v35[3] = &unk_1000DF390;
            objc_copyWeak(&v37, &location);
            v36 = accessoryContentVersion2;
            v24 = [(CRFileSender *)v33 sendThemeAsset:v31 completion:v35];
            if (v24)
            {
              identifier = [v7 identifier];
              progressForVehicleIDs = [(CRThemeAssetLibrarian *)self progressForVehicleIDs];
              v26 = [progressForVehicleIDs objectForKey:identifier];

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
        accessoryContentVersion = CarThemeAssetsLogging();
        if (os_log_type_enabled(accessoryContentVersion, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v40 = v14;
          _os_log_impl(&_mh_execute_header, accessoryContentVersion, OS_LOG_TYPE_DEFAULT, "vehicle is using the latest asset version %{public}@, no staged asset available", buf, 0xCu);
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
  fileSenderSession = [(CRThemeAssetLibrarian *)self fileSenderSession];
  [fileSenderSession invalidate];

  [(CRThemeAssetLibrarian *)self setFileSenderSession:0];
}

- (void)_mainQueue_hintDownloadForVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = [(CRThemeAssetLibrarian *)self _assetRequestForVehicle:vehicleCopy];

  if (v5)
  {
    v6 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "hinting download request for %@", &v8, 0xCu);
    }

    assetDownloader = [(CRThemeAssetLibrarian *)self assetDownloader];
    [assetDownloader handleDownloadHintForAssetRequest:v5];
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
  vehicleStore = [(CRThemeAssetLibrarian *)self vehicleStore];
  allStoredVehicles = [vehicleStore allStoredVehicles];

  v6 = [allStoredVehicles countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(allStoredVehicles);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        clusterAssetIdentifier = [v10 clusterAssetIdentifier];
        if (clusterAssetIdentifier)
        {
          v12 = [(CRThemeAssetLibrarian *)self _assetVersionForVehicle:v10];
          v13 = [v3 objectForKey:clusterAssetIdentifier];
          v14 = v13;
          if (v12 && (!v13 || [v12 compare:v13] == -1))
          {
            [v3 setObject:v12 forKey:clusterAssetIdentifier];
          }
        }
      }

      v7 = [allStoredVehicles countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CRThemeAssetLibrarian *)self observers];
  [observers registerObserver:observerCopy];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CRThemeAssetLibrarian *)self observers];
  [observers unregisterObserver:observerCopy];
}

- (void)receivedClusterAssetIdentifier:(id)identifier assetVersion:(id)version sdkVersion:(id)sdkVersion forVehicle:(id)vehicle
{
  identifierCopy = identifier;
  versionCopy = version;
  sdkVersionCopy = sdkVersion;
  vehicleCopy = vehicle;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v14 = vehicleCopy;
  v15 = v14;
  if (v14 && ([v14 isPaired] & 1) != 0)
  {
    v16 = [(CRThemeAssetLibrarian *)self _assetVersionForVehicle:v15];
    clusterAssetURL = [v15 clusterAssetURL];
    v18 = clusterAssetURL;
    v19 = 0;
    if (v16 && clusterAssetURL)
    {
      v19 = [[CARThemeAsset alloc] initWithBaseURL:clusterAssetURL version:v16];
    }

    v70 = v16;
    supportsThemeAssets = [v15 supportsThemeAssets];
    v21 = supportsThemeAssets == 0;

    if (!supportsThemeAssets)
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
    clusterAssetIdentifier = [v15 clusterAssetIdentifier];
    v24 = clusterAssetIdentifier;
    if (identifierCopy && clusterAssetIdentifier)
    {
      v25 = [clusterAssetIdentifier isEqual:identifierCopy];

      if (v25)
      {
        goto LABEL_21;
      }
    }

    else
    {

      if (!identifierCopy)
      {
        goto LABEL_21;
      }
    }

    v27 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      clusterAssetIdentifier2 = [v15 clusterAssetIdentifier];
      *buf = 138543618;
      v72 = clusterAssetIdentifier2;
      v73 = 2114;
      v74 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "updating cluster asset identifier from %{public}@ to %{public}@", buf, 0x16u);
    }

    [v15 setClusterAssetIdentifier:identifierCopy];
    v21 = 1;
LABEL_21:
    clusterAssetVersion = [v15 clusterAssetVersion];
    v30 = clusterAssetVersion;
    if (versionCopy && clusterAssetVersion)
    {
      if ([clusterAssetVersion isEqual:versionCopy])
      {
        goto LABEL_24;
      }
    }

    else if (!versionCopy)
    {
LABEL_24:
      clusterAssetVersion2 = [v15 clusterAssetVersion];
      v32 = [clusterAssetVersion2 isEqual:&off_1000E7AF8];

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
      clusterAssetVersion3 = [v15 clusterAssetVersion];
      *buf = 138543618;
      v72 = clusterAssetVersion3;
      v73 = 2114;
      v74 = versionCopy;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "updating cluster asset version from %{public}@ to %{public}@", buf, 0x16u);
    }

    [v15 setClusterAssetVersion:versionCopy];
    v21 = 1;
LABEL_31:
    clusterAssetVersion4 = [v15 clusterAssetVersion];
    stagedClusterAssetVersion = [v15 stagedClusterAssetVersion];
    v37 = [clusterAssetVersion4 isEqual:stagedClusterAssetVersion];

    if (v37)
    {
      v38 = CarThemeAssetsLogging();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        clusterAssetiOSContentVersion = [v15 clusterAssetiOSContentVersion];
        stagedClusterAssetiOSContentVersion = [v15 stagedClusterAssetiOSContentVersion];
        *buf = 138543618;
        v72 = clusterAssetiOSContentVersion;
        v73 = 2114;
        v74 = stagedClusterAssetiOSContentVersion;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "updating cluster iOS content version from %{public}@ to %{public}@", buf, 0x16u);
      }

      v21 = 1;
    }

    sDKVersion = [v15 SDKVersion];
    v42 = sDKVersion;
    if (sdkVersionCopy && sDKVersion)
    {
      v43 = [sDKVersion isEqual:sdkVersionCopy];

      if (v43)
      {
        goto LABEL_38;
      }
    }

    else
    {

      if (!sdkVersionCopy)
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

          supportsThemeAssets2 = [v26 supportsThemeAssets];

          if (supportsThemeAssets2)
          {
            [(CRThemeAssetLibrarian *)self _mainQueue_updateOverallProgress];
            assetOverrider = [(CRThemeAssetLibrarian *)self assetOverrider];
            if (assetOverrider)
            {
              v63 = assetOverrider;
              assetOverrider2 = [(CRThemeAssetLibrarian *)self assetOverrider];
              v65 = [assetOverrider2 hasOverrideAssetForAssetIdentifier:identifierCopy];

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

        stagedClusterAssetiOSContentVersion2 = [v15 stagedClusterAssetiOSContentVersion];
        stagedClusterAssetVersion2 = [v15 stagedClusterAssetVersion];
        stagedClusterAssetURL = [v15 stagedClusterAssetURL];
        v50 = stagedClusterAssetURL;
        if (stagedClusterAssetVersion2 && stagedClusterAssetURL)
        {
          v51 = [versionCopy compare:stagedClusterAssetVersion2];
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
            [v15 setClusterAssetiOSContentVersion:stagedClusterAssetiOSContentVersion2];
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

            observers = [(CRThemeAssetLibrarian *)self observers];
            [v15 identifier];
            selfCopy = self;
            v58 = v57 = v54;
            [observers notifyDidUpdateFromAsset:v19 toAsset:v57 forVehicleIdentifier:v58];

            self = selfCopy;
          }
        }

        vehicleStore = [(CRThemeAssetLibrarian *)self vehicleStore];
        v26 = [vehicleStore saveVehicle:v15 withMergePolicy:&stru_1000DF3F8];

        supportsThemeAssets3 = [v26 supportsThemeAssets];

        if (supportsThemeAssets3)
        {
          [(CRThemeAssetLibrarian *)self _mainQueue_handleVehicleAssetConfigurationChanged];
        }

        v44 = stagedClusterAssetiOSContentVersion2;
        goto LABEL_66;
      }
    }

    v45 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      sDKVersion2 = [v15 SDKVersion];
      *buf = 138543618;
      v72 = sDKVersion2;
      v73 = 2114;
      v74 = sdkVersionCopy;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "updating SDK version from %{public}@ to %{public}@", buf, 0x16u);
    }

    [v15 setSDKVersion:sdkVersionCopy];
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

- (id)assetProgressForVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = [(CRThemeAssetLibrarian *)self _mainQueue_trackAssetProgressForVehicle:vehicleCopy];

  v6 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "overall asset progress: %@", &v8, 0xCu);
  }

  return v5;
}

- (void)vehicleStoreDidBecomeAvailable:(id)available
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000542DC;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)vehicleStore:(id)store didRemoveVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  supportsThemeAssets = [vehicleCopy supportsThemeAssets];

  if (supportsThemeAssets)
  {
    identifier = [vehicleCopy identifier];
    [vehicleCopy clusterAssetIdentifier];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000543D8;
    block[3] = &unk_1000DD6F0;
    block[4] = self;
    v12 = v11 = identifier;
    v8 = v12;
    v9 = identifier;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)sessionDidConnect:(id)connect
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005448C;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)sessionDidDisconnect:(id)disconnect
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100054564;
  v4[3] = &unk_1000DD580;
  v4[4] = self;
  disconnectCopy = disconnect;
  v3 = disconnectCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)assetDownloader:(id)downloader foundNoAssetForAssetRequest:(id)request nextRequiredCompatibilityVersion:(id)version
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000546D8;
  block[3] = &unk_1000DD6F0;
  requestCopy = request;
  selfCopy = self;
  versionCopy = version;
  v7 = versionCopy;
  v8 = requestCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)assetDownloader:(id)downloader attemptingDownloadForAssetRequest:(id)request version:(id)version progress:(id)progress
{
  requestCopy = request;
  versionCopy = version;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10005498C;
  v14[3] = &unk_1000DE420;
  v15 = requestCopy;
  selfCopy = self;
  progressCopy = progress;
  v18 = versionCopy;
  v11 = versionCopy;
  v12 = progressCopy;
  v13 = requestCopy;
  dispatch_async(&_dispatch_main_q, v14);
}

- (void)assetDownloader:(id)downloader failedDownloadForAssetRequest:(id)request version:(id)version error:(id)error
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100054BEC;
  block[3] = &unk_1000DD6F0;
  versionCopy = version;
  selfCopy = self;
  errorCopy = error;
  v8 = errorCopy;
  v9 = versionCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)assetDownloader:(id)downloader hasAsset:(id)asset forAssetRequest:(id)request
{
  assetCopy = asset;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100054D7C;
  block[3] = &unk_1000DD6F0;
  requestCopy = request;
  selfCopy = self;
  v13 = assetCopy;
  v8 = assetCopy;
  v9 = requestCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)libraryAgent:(id)agent requestsCurrentAssetsForVehicleIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if (completionCopy)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100054FAC;
    block[3] = &unk_1000DE1D0;
    block[4] = self;
    v10 = identifierCopy;
    v11 = completionCopy;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (id)_vehicleForVehicleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    vehicleStore = [(CRThemeAssetLibrarian *)self vehicleStore];
    allStoredVehicles = [vehicleStore allStoredVehicles];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100055470;
    v9[3] = &unk_1000DF420;
    v10 = identifierCopy;
    v7 = [allStoredVehicles bs_firstObjectPassingTest:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_assetRequestForVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  clusterAssetIdentifier = [vehicleCopy clusterAssetIdentifier];
  sDKVersion = [vehicleCopy SDKVersion];
  v6 = sDKVersion;
  v7 = 0;
  if (clusterAssetIdentifier && sDKVersion)
  {
    clusterAssetVersion = [vehicleCopy clusterAssetVersion];
    if (clusterAssetVersion)
    {
      clusterAssetVersion2 = [vehicleCopy clusterAssetVersion];
      v10 = [clusterAssetVersion2 isEqualToNumber:&off_1000E7AF8];
    }

    else
    {
      v10 = 1;
    }

    v7 = -[CRThemeAssetDownloadRequest initWithAssetIdentifier:maximumSDKVersion:maximumCompatibilityVersion:requireCatalogUpdate:]([CRThemeAssetDownloadRequest alloc], "initWithAssetIdentifier:maximumSDKVersion:maximumCompatibilityVersion:requireCatalogUpdate:", clusterAssetIdentifier, v6, [objc_opt_class() _supportedCompatibilityVersion], v10);
  }

  return v7;
}

- (id)_vehiclesForAssetRequest:(id)request
{
  requestCopy = request;
  assetIdentifier = [requestCopy assetIdentifier];
  maximumSDKVersion = [requestCopy maximumSDKVersion];
  vehicleStore = [(CRThemeAssetLibrarian *)self vehicleStore];
  allStoredVehicles = [vehicleStore allStoredVehicles];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000556E8;
  v14[3] = &unk_1000DF448;
  v15 = assetIdentifier;
  v16 = maximumSDKVersion;
  v17 = requestCopy;
  v9 = requestCopy;
  v10 = maximumSDKVersion;
  v11 = assetIdentifier;
  v12 = [allStoredVehicles bs_filter:v14];

  return v12;
}

- (id)_assetVersionForVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  clusterAssetIdentifier = [vehicleCopy clusterAssetIdentifier];
  clusterAssetiOSContentVersion = [vehicleCopy clusterAssetiOSContentVersion];
  clusterAssetVersion = [vehicleCopy clusterAssetVersion];

  v7 = 0;
  if (clusterAssetIdentifier && clusterAssetVersion)
  {
    if (!clusterAssetiOSContentVersion)
    {
      clusterAssetiOSContentVersion = @"0";
    }

    v7 = [[CARThemeAssetVersion alloc] initWithIdentifier:clusterAssetIdentifier iOSContentVersion:clusterAssetiOSContentVersion accessoryContentVersion:clusterAssetVersion];
  }

  return v7;
}

- (id)_stagedAssetVersionForVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  clusterAssetIdentifier = [vehicleCopy clusterAssetIdentifier];
  stagedClusterAssetiOSContentVersion = [vehicleCopy stagedClusterAssetiOSContentVersion];
  stagedClusterAssetVersion = [vehicleCopy stagedClusterAssetVersion];

  v7 = 0;
  if (clusterAssetIdentifier && stagedClusterAssetVersion)
  {
    if (!stagedClusterAssetiOSContentVersion)
    {
      stagedClusterAssetiOSContentVersion = @"0";
    }

    v7 = [[CARThemeAssetVersion alloc] initWithIdentifier:clusterAssetIdentifier iOSContentVersion:stagedClusterAssetiOSContentVersion accessoryContentVersion:stagedClusterAssetVersion];
  }

  return v7;
}

- (id)_mainQueue_trackAssetProgressForVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  identifier = [vehicleCopy identifier];

  if (identifier)
  {
    progressForVehicleIDs = [(CRThemeAssetLibrarian *)self progressForVehicleIDs];
    v7 = [progressForVehicleIDs objectForKey:identifier];

    if (!v7)
    {
      v7 = objc_alloc_init(CRThemeAssetProgress);
      progressForVehicleIDs2 = [(CRThemeAssetLibrarian *)self progressForVehicleIDs];
      [progressForVehicleIDs2 setObject:v7 forKey:identifier];

      v9 = CarThemeAssetsLogging();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        overallProgress = [(CRThemeAssetProgress *)v7 overallProgress];
        v13 = 138543618;
        v14 = overallProgress;
        v15 = 2114;
        v16 = identifier;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "created asset progress %{public}@ for vehicleID: %{public}@", &v13, 0x16u);
      }
    }

    overallProgress2 = [(CRThemeAssetProgress *)v7 overallProgress];
  }

  else
  {
    overallProgress2 = 0;
  }

  return overallProgress2;
}

- (void)_mainQueue_updateOverallProgress
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = +[NSMutableArray array];
  untrackedDownloadProgressForAssetIDs = [(CRThemeAssetLibrarian *)self untrackedDownloadProgressForAssetIDs];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100055C0C;
  v10 = &unk_1000DF498;
  selfCopy = self;
  v12 = v3;
  v5 = v3;
  [untrackedDownloadProgressForAssetIDs enumerateKeysAndObjectsUsingBlock:&v7];

  v6 = [(CRThemeAssetLibrarian *)self untrackedDownloadProgressForAssetIDs:v7];
  [v6 removeObjectsForKeys:v5];
}

- (void)_mainQueue_removeAssetProgressForVehicleID:(id)d assetID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v8 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 138543618;
    v12 = dCopy;
    v13 = 2114;
    v14 = iDCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "removing asset progress for vehicleID: %{public}@ assetID: %{public}@", &v11, 0x16u);
  }

  if (dCopy)
  {
    progressForVehicleIDs = [(CRThemeAssetLibrarian *)self progressForVehicleIDs];
    [progressForVehicleIDs removeObjectForKey:dCopy];
  }

  if (iDCopy)
  {
    untrackedDownloadProgressForAssetIDs = [(CRThemeAssetLibrarian *)self untrackedDownloadProgressForAssetIDs];
    [untrackedDownloadProgressForAssetIDs removeObjectForKey:iDCopy];
  }
}

@end