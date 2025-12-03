@interface UARPHostManager
- (BOOL)activateDaemonMode;
- (BOOL)activateToolMode;
- (BOOL)addControllerConnection:(id)connection;
- (BOOL)addTmapMapping:(id)mapping;
- (BOOL)addTransportConnection:(id)connection;
- (BOOL)appendDataToCachingAsset:(id)asset data:(id)data;
- (BOOL)createTempFolder:(id)folder error:(id *)error;
- (BOOL)createTempFolderAnalyticsAssets:(id)assets error:(id *)error;
- (BOOL)createTempFolderAssets:(id)assets error:(id *)error;
- (BOOL)createTempFolderCachedAssets:(id)assets error:(id *)error;
- (BOOL)createTempFolderCrashAssets:(id)assets error:(id *)error;
- (BOOL)createTempFolderHeySiriAssets:(id)assets error:(id *)error;
- (BOOL)createTempFolderLogsAssets:(id)assets error:(id *)error;
- (BOOL)createTempFolderMappedAnalyticsAssets:(id)assets error:(id *)error;
- (BOOL)createTempFolderPacketCaptures:(id)captures error:(id *)error;
- (BOOL)createTempFolderSysdiagnose:(id)sysdiagnose error:(id *)error;
- (BOOL)createTempFolderSysdiagnoseApproved:(id)approved error:(id *)error;
- (BOOL)createTempFolderTMAPDatabase:(id)database error:(id *)error;
- (BOOL)createTempFolderVoiceAssistAssets:(id)assets error:(id *)error;
- (BOOL)createTempFolders:(id *)folders;
- (BOOL)ensureDatabaseExists;
- (BOOL)ensureTMAPDatabaseExists;
- (BOOL)finalizeTransferCachingAsset:(id)asset hashData:(id)data error:(id *)error;
- (BOOL)finalizeTransferDynamicAsset:(id)asset hashData:(id)data error:(id *)error;
- (BOOL)iOSPreflightOfferRestriction:(id)restriction osBuildVersion:(id)version;
- (BOOL)loadMappingDatabase;
- (BOOL)loadTMAPDatabase;
- (BOOL)macOSPreflightOfferRestriction:(id)restriction osBuildVersion:(id)version;
- (BOOL)pauseAssetManager:(id)manager;
- (BOOL)personalizeSuperBinaryAsAppleConnect:(id)connect hostEndpoint:(id)endpoint;
- (BOOL)personalizeSuperBinaryAsAuthListed:(id)listed hostEndpoint:(id)endpoint;
- (BOOL)preflightAvailableGreaterThanStaged:(id)staged hostEndpoint:(id)endpoint;
- (BOOL)preflightOfferRestrictionByDeployment:(id)deployment;
- (BOOL)preflightOfferRestrictionByDeploymentCountry:(id)country;
- (BOOL)preflightOfferRestrictionByDeploymentPercentage:(id)percentage;
- (BOOL)preflightOfferRestrictionByFirmwareVersion:(id)version hostEndpoint:(id)endpoint;
- (BOOL)preflightOfferRestrictionByOS:(id)s;
- (BOOL)preflightOfferRestrictions:(id)restrictions hostEndpoint:(id)endpoint;
- (BOOL)prepareCachingAsset:(id)asset;
- (BOOL)pruneFolder:(id)folder timeNow:(id)now maxFileAge:(double)age error:(id *)error;
- (BOOL)resumeAssetManager:(id)manager;
- (BOOL)tvOSPreflightOfferRestriction:(id)restriction osBuildVersion:(id)version;
- (BOOL)updateDatabaseEntry:(id)entry;
- (BOOL)verifyHash:(id)hash url:(id)url error:(id *)error;
- (BOOL)visionOSPreflightOfferRestriction:(id)restriction osBuildVersion:(id)version;
- (BOOL)watchOSPreflightOfferRestriction:(id)restriction osBuildVersion:(id)version;
- (UARPHostManager)initWithTempFolder:(id)folder infoProperties:(id)properties appleProperties:(id)appleProperties;
- (id)dataRangeFromDynamicAsset:(id)asset range:(_NSRange)range;
- (id)findCachingAssetByUUID:(id)d;
- (id)findDownstreamEndpointByHostEndpoint:(id)endpoint downstreamID:(unsigned __int16)d;
- (id)findDynamicAssetByUUID:(id)d;
- (id)findHostEndpointByUUID:(id)d;
- (id)findTmapforAppleModel:(id)model;
- (id)matchingDatabaseEntry:(id)entry;
- (id)urlForCachingAsset:(id)asset;
- (id)urlForDynamicAsset:(id)asset;
- (void)applyStagedAssets:(id)assets;
- (void)assetPersonalizationComplete:(id)complete endpointUUID:(id)d tssOptions:(id)options;
- (void)assetPersonalizationComplete:(id)complete hostEndpoint:(id)endpoint;
- (void)asyncProcessMTIC:(id)c;
- (void)checkAssetManager:(id)manager;
- (void)clearAssetFolders;
- (void)clearDatabase;
- (void)clearPacketCaptures;
- (void)commonProcessMTIC:(id)c tmapSnapshot:(id)snapshot;
- (void)controllerDisconnection:(id)disconnection;
- (void)dealloc;
- (void)endpointControllerEndpointUnavailable:(id)unavailable;
- (void)endpointDisconnection:(id)disconnection;
- (void)flushDatabase;
- (void)flushTMAPDatabase;
- (void)handleAssetAvailabilityEvent:(id)event;
- (void)ingestTMAPPayloads:(id)payloads;
- (void)layer3DownstreamEndpointReachable:(id)reachable downstreamID:(unsigned __int16)d;
- (void)layer3DownstreamEndpointUnreachable:(id)unreachable downstreamID:(unsigned __int16)d;
- (void)layer3EndpointAppliedStagedAssets:(id)assets layer3Flags:(int64_t)flags;
- (void)layer3EndpointAssetFullyStaged:(id)staged rxDynamicAsset:(id)asset;
- (void)layer3EndpointAssetFullyStaged:(id)staged txFirmwareAsset:(id)asset;
- (void)layer3EndpointAssetMetaDataComplete:(id)complete asset:(id)asset;
- (void)layer3EndpointAssetOffered:(id)offered asset:(id)asset;
- (void)layer3EndpointAssetPersonalizationComplete:(id)complete asset:(id)asset status:(int64_t)status;
- (void)layer3EndpointAssetStagingProgress:(id)progress asset:(id)asset bytesTransferred:(unint64_t)transferred assetLength:(unint64_t)length;
- (void)layer3EndpointPayloadData:(id)data asset:(id)asset payload:(id)payload offset:(unint64_t)offset payloadData:(id)payloadData;
- (void)layer3EndpointPayloadDataComplete:(id)complete asset:(id)asset payload:(id)payload;
- (void)layer3EndpointPayloadMetaDataComplete:(id)complete asset:(id)asset payload:(id)payload;
- (void)layer3EndpointPayloadReady:(id)ready asset:(id)asset payload:(id)payload;
- (void)layer3EndpointPersonalizationNeeded:(id)needed asset:(id)asset;
- (void)layer3EndpointReachable:(id)reachable;
- (void)layer3EndpointRescindedAssets:(id)assets;
- (void)layer3EndpointUnreachable:(id)unreachable;
- (void)monitorForDevices:(id)devices;
- (void)notifyControllersPersonalizationStatus:(id)status assetUUID:(id)d status:(int64_t)a5;
- (void)offerAssetToMatchingEndpoints:(id)endpoints personality:(id)personality availableFirmwareVersion:(id)version;
- (void)personalizeSuperBinary:(id)binary hostEndpoint:(id)endpoint;
- (void)postNotificationFirmwareUpdate;
- (void)postNotificationUrgentFirmwareUpdate;
- (void)processMTIC:(id)c;
- (void)registerForNotifications;
- (void)rescindStagedAssets:(id)assets;
- (void)showAllAssets;
- (void)solicitAssetByAssetTag:(id)tag hostEndpoint:(id)endpoint assetURL:(id)l assetUUID:(id)d;
- (void)stageAndApplyFirmwareAssetInternal:(id)internal assetUUID:(id)d hostEndpoint:(id)endpoint tssServerURL:(id)l needsStaging:(BOOL)staging autoApply:(BOOL)apply;
- (void)updateDatabaseAvailableVersion:(id)version personality:(id)personality assetManager:(id)manager availableFirmwareVersion:(id)firmwareVersion;
- (void)updateDatabaseEntryForPersonality:(id)personality assetManager:(id)manager availableFirmwareVersion:(id)version;
@end

@implementation UARPHostManager

- (UARPHostManager)initWithTempFolder:(id)folder infoProperties:(id)properties appleProperties:(id)appleProperties
{
  folderCopy = folder;
  propertiesCopy = properties;
  applePropertiesCopy = appleProperties;
  v41.receiver = self;
  v41.super_class = UARPHostManager;
  v11 = [(UARPHostManager *)&v41 init];
  if (v11)
  {
    v12 = [folderCopy copy];
    tempFolderPath = v11->_tempFolderPath;
    v11->_tempFolderPath = v12;

    v14 = dispatch_queue_create("com.apple.uarp.uarpd.manager", 0);
    queue = v11->_queue;
    v11->_queue = v14;

    v16 = dispatch_queue_create("com.apple.uarp.uarpd.manager.tss", 0);
    tssQueue = v11->_tssQueue;
    v11->_tssQueue = v16;

    v18 = dispatch_queue_create("com.apple.uarp.uarpd.manager.mtic", 0);
    mticQueue = v11->_mticQueue;
    v11->_mticQueue = v18;

    v20 = os_log_create("com.apple.uarp", "hostmanager");
    log = v11->_log;
    v11->_log = v20;

    v22 = objc_opt_new();
    endpoints = v11->_endpoints;
    v11->_endpoints = v22;

    v24 = objc_opt_new();
    endpointControllers = v11->_endpointControllers;
    v11->_endpointControllers = v24;

    defaultInfoProperties = v11->_defaultInfoProperties;
    v11->_defaultInfoProperties = &off_1000BEB38;

    if (propertiesCopy)
    {
      v27 = [propertiesCopy copy];
      v28 = v11->_defaultInfoProperties;
      v11->_defaultInfoProperties = v27;
    }

    defaultAppleProperties = v11->_defaultAppleProperties;
    v11->_defaultAppleProperties = &off_1000BEB50;

    if (applePropertiesCopy)
    {
      v30 = [applePropertiesCopy copy];
      v31 = v11->_defaultAppleProperties;
      v11->_defaultAppleProperties = v30;
    }

    v32 = objc_opt_new();
    dynamicAssets = v11->_dynamicAssets;
    v11->_dynamicAssets = v32;

    v34 = objc_opt_new();
    cachingAssets = v11->_cachingAssets;
    v11->_cachingAssets = v34;

    v36 = objc_opt_new();
    uuidDatabase = v11->_uuidDatabase;
    v11->_uuidDatabase = v36;

    v38 = objc_opt_new();
    tmapDatabase = v11->_tmapDatabase;
    v11->_tmapDatabase = v38;

    v11->_debugTransfer = 0;
  }

  return v11;
}

- (void)dealloc
{
  notifyTokenFirmwareUpdate = self->_notifyTokenFirmwareUpdate;
  if (notifyTokenFirmwareUpdate != -1)
  {
    notify_cancel(notifyTokenFirmwareUpdate);
  }

  notifyTokenUrgentFirmwareUpdate = self->_notifyTokenUrgentFirmwareUpdate;
  if (notifyTokenUrgentFirmwareUpdate != -1)
  {
    notify_cancel(notifyTokenUrgentFirmwareUpdate);
  }

  v5.receiver = self;
  v5.super_class = UARPHostManager;
  [(UARPHostManager *)&v5 dealloc];
}

- (BOOL)createTempFolders:(id *)folders
{
  v5 = +[NSDate now];
  if ([(UARPHostManager *)self createTempFolderPacketCaptures:v5 error:folders]&& [(UARPHostManager *)self createTempFolderAssets:v5 error:folders]&& [(UARPHostManager *)self createTempFolderCachedAssets:v5 error:folders]&& [(UARPHostManager *)self createTempFolderTMAPDatabase:v5 error:folders]&& [(UARPHostManager *)self createTempFolderSysdiagnose:v5 error:folders]&& [(UARPHostManager *)self createTempFolderSysdiagnoseApproved:v5 error:folders]&& [(UARPHostManager *)self createTempFolderAnalyticsAssets:v5 error:folders]&& [(UARPHostManager *)self createTempFolderCrashAssets:v5 error:folders]&& [(UARPHostManager *)self createTempFolderHeySiriAssets:v5 error:folders]&& [(UARPHostManager *)self createTempFolderLogsAssets:v5 error:folders]&& [(UARPHostManager *)self createTempFolderMappedAnalyticsAssets:v5 error:folders])
  {
    v6 = [(UARPHostManager *)self createTempFolderVoiceAssistAssets:v5 error:folders];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)createTempFolder:(id)folder error:(id *)error
{
  folderCopy = folder;
  v7 = +[NSFileManager defaultManager];
  v8 = [v7 fileExistsAtPath:folderCopy];
  log = self->_log;
  v10 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (!v8)
  {
    if (v10)
    {
      *buf = 138412290;
      v18 = folderCopy;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Folder needs to be created %@", buf, 0xCu);
    }

    v16 = 0;
    v11 = [v7 createDirectoryAtPath:folderCopy withIntermediateDirectories:1 attributes:0 error:&v16];
    v12 = v16;
    v13 = self->_log;
    if (v11)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v18 = folderCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Folder was created %@", buf, 0xCu);
      }

      goto LABEL_13;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10007AEEC();
      if (!error)
      {
        goto LABEL_13;
      }
    }

    else if (!error)
    {
LABEL_13:

      goto LABEL_14;
    }

    v14 = v12;
    *error = v12;
    goto LABEL_13;
  }

  if (v10)
  {
    *buf = 138412290;
    v18 = folderCopy;
    v11 = 1;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Folder exists %@", buf, 0xCu);
  }

  else
  {
    v11 = 1;
  }

LABEL_14:

  return v11;
}

- (BOOL)pruneFolder:(id)folder timeNow:(id)now maxFileAge:(double)age error:(id *)error
{
  folderCopy = folder;
  nowCopy = now;
  context = objc_autoreleasePoolPush();
  v38 = objc_opt_new();
  v11 = +[NSFileManager defaultManager];
  v12 = [v11 enumeratorAtPath:folderCopy];

  v40 = v12;
  nextObject = [v12 nextObject];
  if (nextObject)
  {
    v14 = nextObject;
    do
    {
      v50[0] = folderCopy;
      v50[1] = v14;
      v15 = [NSArray arrayWithObjects:v50 count:2];
      v16 = [NSString pathWithComponents:v15];

      v17 = [NSURL fileURLWithPath:v16];
      v18 = +[NSFileManager defaultManager];
      path = [v17 path];
      v20 = [v18 attributesOfItemAtPath:path error:error];

      if (v20)
      {
        v21 = [v20 objectForKeyedSubscript:NSFileModificationDate];
        v22 = [v21 dateByAddingTimeInterval:age];
        if ([nowCopy compare:v22] == 1)
        {
          [v38 addObject:v16];
        }
      }

      nextObject2 = [v40 nextObject];

      v14 = nextObject2;
    }

    while (nextObject2);
  }

  if ([v38 count])
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10007AF5C();
    }

    v36 = folderCopy;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    reverseObjectEnumerator = [v38 reverseObjectEnumerator];
    v25 = [reverseObjectEnumerator countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v42;
      do
      {
        v28 = 0;
        do
        {
          if (*v42 != v27)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v29 = *(*(&v41 + 1) + 8 * v28);
          v30 = +[NSFileManager defaultManager];
          v31 = [v30 removeItemAtPath:v29 error:error];

          log = self->_log;
          if (v31)
          {
            if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v46 = v29;
              _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Removing Expired File at %@", buf, 0xCu);
            }
          }

          else if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            v33 = *error;
            if (!*error)
            {
              v33 = @"null";
            }

            *buf = 138412546;
            v46 = v29;
            v47 = 2112;
            v48 = v33;
            _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Could not remove expired file at %@; error %@", buf, 0x16u);
          }

          v28 = v28 + 1;
        }

        while (v26 != v28);
        v34 = [reverseObjectEnumerator countByEnumeratingWithState:&v41 objects:v49 count:16];
        v26 = v34;
      }

      while (v34);
    }

    folderCopy = v36;
  }

  objc_autoreleasePoolPop(context);
  return 1;
}

- (BOOL)createTempFolderPacketCaptures:(id)captures error:(id *)error
{
  capturesCopy = captures;
  v7 = objc_opt_new();
  [v7 addObject:self->_tempFolderPath];
  [v7 addObject:@"pcapfiles"];
  v8 = [NSString pathWithComponents:v7];
  packetCaptureFolder = self->_packetCaptureFolder;
  self->_packetCaptureFolder = v8;

  if (![(UARPHostManager *)self createTempFolder:self->_packetCaptureFolder error:error])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v12 = self->_packetCaptureFolder;
      v16 = 136315394;
      v17 = "[UARPHostManager createTempFolderPacketCaptures:error:]";
      v18 = 2112;
      v19 = v12;
      v13 = "%s: Could not create folder %@";
LABEL_8:
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, v13, &v16, 0x16u);
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  if (![(UARPHostManager *)self pruneFolder:self->_packetCaptureFolder timeNow:capturesCopy maxFileAge:error error:3600.0])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v14 = self->_packetCaptureFolder;
      v16 = 136315394;
      v17 = "[UARPHostManager createTempFolderPacketCaptures:error:]";
      v18 = 2112;
      v19 = v14;
      v13 = "%s: Could not prune folder %@";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v10 = 1;
LABEL_10:

  return v10;
}

- (BOOL)createTempFolderAssets:(id)assets error:(id *)error
{
  assetsCopy = assets;
  v7 = objc_opt_new();
  [v7 addObject:self->_tempFolderPath];
  [v7 addObject:@"assets"];
  v8 = [NSString pathWithComponents:v7];
  assetsFolder = self->_assetsFolder;
  self->_assetsFolder = v8;

  if (![(UARPHostManager *)self createTempFolder:self->_assetsFolder error:error])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v12 = self->_assetsFolder;
      v16 = 136315394;
      v17 = "[UARPHostManager createTempFolderAssets:error:]";
      v18 = 2112;
      v19 = v12;
      v13 = "%s: Could not create folder %@";
LABEL_8:
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, v13, &v16, 0x16u);
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  if (![(UARPHostManager *)self pruneFolder:self->_assetsFolder timeNow:assetsCopy maxFileAge:error error:3600.0])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v14 = self->_assetsFolder;
      v16 = 136315394;
      v17 = "[UARPHostManager createTempFolderAssets:error:]";
      v18 = 2112;
      v19 = v14;
      v13 = "%s: Could not prune folder %@";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v10 = 1;
LABEL_10:

  return v10;
}

- (BOOL)createTempFolderCachedAssets:(id)assets error:(id *)error
{
  assetsCopy = assets;
  v7 = objc_opt_new();
  [v7 addObject:self->_tempFolderPath];
  [v7 addObject:@"cachedassets"];
  v8 = [NSString pathWithComponents:v7];
  cachedAssetsFolder = self->_cachedAssetsFolder;
  self->_cachedAssetsFolder = v8;

  if (![(UARPHostManager *)self createTempFolder:self->_cachedAssetsFolder error:error])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v12 = self->_cachedAssetsFolder;
      v16 = 136315394;
      v17 = "[UARPHostManager createTempFolderCachedAssets:error:]";
      v18 = 2112;
      v19 = v12;
      v13 = "%s: Could not create folder %@";
LABEL_8:
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, v13, &v16, 0x16u);
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  if (![(UARPHostManager *)self pruneFolder:self->_cachedAssetsFolder timeNow:assetsCopy maxFileAge:error error:3600.0])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v14 = self->_cachedAssetsFolder;
      v16 = 136315394;
      v17 = "[UARPHostManager createTempFolderCachedAssets:error:]";
      v18 = 2112;
      v19 = v14;
      v13 = "%s: Could not prune folder %@";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v10 = 1;
LABEL_10:

  return v10;
}

- (BOOL)createTempFolderTMAPDatabase:(id)database error:(id *)error
{
  v6 = objc_opt_new();
  [v6 addObject:self->_tempFolderPath];
  [v6 addObject:@"tmapdatabase"];
  v7 = [NSString pathWithComponents:v6];
  tmapDatabaseFolder = self->_tmapDatabaseFolder;
  self->_tmapDatabaseFolder = v7;

  v9 = [(UARPHostManager *)self createTempFolder:self->_tmapDatabaseFolder error:error];
  if (!v9)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v11 = self->_tmapDatabaseFolder;
      v13 = 136315394;
      v14 = "[UARPHostManager createTempFolderTMAPDatabase:error:]";
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Could not create folder %@", &v13, 0x16u);
    }
  }

  return v9;
}

- (BOOL)createTempFolderSysdiagnose:(id)sysdiagnose error:(id *)error
{
  v6 = objc_opt_new();
  [v6 addObject:self->_tempFolderPath];
  [v6 addObject:@"sysdiagnose"];
  v7 = [NSString pathWithComponents:v6];
  sysdiagnoseFolder = self->_sysdiagnoseFolder;
  self->_sysdiagnoseFolder = v7;

  v9 = [(UARPHostManager *)self createTempFolder:self->_sysdiagnoseFolder error:error];
  if (!v9)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v11 = self->_sysdiagnoseFolder;
      v13 = 136315394;
      v14 = "[UARPHostManager createTempFolderSysdiagnose:error:]";
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Could not create folder %@", &v13, 0x16u);
    }
  }

  return v9;
}

- (BOOL)createTempFolderSysdiagnoseApproved:(id)approved error:(id *)error
{
  v6 = objc_opt_new();
  [v6 addObject:self->_tempFolderPath];
  [v6 addObject:@"sysdiagnose_approved"];
  v7 = [NSString pathWithComponents:v6];
  sysdiagnoseApprovedFolder = self->_sysdiagnoseApprovedFolder;
  self->_sysdiagnoseApprovedFolder = v7;

  v9 = [(UARPHostManager *)self createTempFolder:self->_sysdiagnoseApprovedFolder error:error];
  if (!v9)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v11 = self->_sysdiagnoseApprovedFolder;
      v13 = 136315394;
      v14 = "[UARPHostManager createTempFolderSysdiagnoseApproved:error:]";
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Could not create folder %@", &v13, 0x16u);
    }
  }

  return v9;
}

- (BOOL)createTempFolderAnalyticsAssets:(id)assets error:(id *)error
{
  assetsCopy = assets;
  v7 = objc_opt_new();
  [v7 addObject:self->_tempFolderPath];
  [v7 addObject:@"device/assets/analytics"];
  v8 = [NSString pathWithComponents:v7];
  analyticsAssetsFolder = self->_analyticsAssetsFolder;
  self->_analyticsAssetsFolder = v8;

  if (![(UARPHostManager *)self createTempFolder:self->_analyticsAssetsFolder error:error])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v12 = self->_analyticsAssetsFolder;
      v16 = 136315394;
      v17 = "[UARPHostManager createTempFolderAnalyticsAssets:error:]";
      v18 = 2112;
      v19 = v12;
      v13 = "%s: Could not create folder %@";
LABEL_8:
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, v13, &v16, 0x16u);
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  if (![(UARPHostManager *)self pruneFolder:self->_analyticsAssetsFolder timeNow:assetsCopy maxFileAge:error error:3600.0])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v14 = self->_analyticsAssetsFolder;
      v16 = 136315394;
      v17 = "[UARPHostManager createTempFolderAnalyticsAssets:error:]";
      v18 = 2112;
      v19 = v14;
      v13 = "%s: Could not prune folder %@";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v10 = 1;
LABEL_10:

  return v10;
}

- (BOOL)createTempFolderCrashAssets:(id)assets error:(id *)error
{
  assetsCopy = assets;
  v7 = objc_opt_new();
  [v7 addObject:self->_tempFolderPath];
  [v7 addObject:@"device/assets/crash"];
  v8 = [NSString pathWithComponents:v7];
  crashAssetsFolder = self->_crashAssetsFolder;
  self->_crashAssetsFolder = v8;

  if (![(UARPHostManager *)self createTempFolder:self->_crashAssetsFolder error:error])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v12 = self->_crashAssetsFolder;
      v16 = 136315394;
      v17 = "[UARPHostManager createTempFolderCrashAssets:error:]";
      v18 = 2112;
      v19 = v12;
      v13 = "%s: Could not create folder %@";
LABEL_8:
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, v13, &v16, 0x16u);
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  if (![(UARPHostManager *)self pruneFolder:self->_crashAssetsFolder timeNow:assetsCopy maxFileAge:error error:3600.0])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v14 = self->_crashAssetsFolder;
      v16 = 136315394;
      v17 = "[UARPHostManager createTempFolderCrashAssets:error:]";
      v18 = 2112;
      v19 = v14;
      v13 = "%s: Could not prune folder %@";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v10 = 1;
LABEL_10:

  return v10;
}

- (BOOL)createTempFolderHeySiriAssets:(id)assets error:(id *)error
{
  assetsCopy = assets;
  v7 = objc_opt_new();
  [v7 addObject:self->_tempFolderPath];
  [v7 addObject:@"device/assets/heysiri"];
  v8 = [NSString pathWithComponents:v7];
  heySiriAssetsFolder = self->_heySiriAssetsFolder;
  self->_heySiriAssetsFolder = v8;

  if (![(UARPHostManager *)self createTempFolder:self->_heySiriAssetsFolder error:error])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v12 = self->_heySiriAssetsFolder;
      v16 = 136315394;
      v17 = "[UARPHostManager createTempFolderHeySiriAssets:error:]";
      v18 = 2112;
      v19 = v12;
      v13 = "%s: Could not create folder %@";
LABEL_8:
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, v13, &v16, 0x16u);
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  if (![(UARPHostManager *)self pruneFolder:self->_heySiriAssetsFolder timeNow:assetsCopy maxFileAge:error error:3600.0])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v14 = self->_heySiriAssetsFolder;
      v16 = 136315394;
      v17 = "[UARPHostManager createTempFolderHeySiriAssets:error:]";
      v18 = 2112;
      v19 = v14;
      v13 = "%s: Could not prune folder %@";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v10 = 1;
LABEL_10:

  return v10;
}

- (BOOL)createTempFolderLogsAssets:(id)assets error:(id *)error
{
  assetsCopy = assets;
  v7 = objc_opt_new();
  [v7 addObject:self->_tempFolderPath];
  [v7 addObject:@"device/assets/logs"];
  v8 = [NSString pathWithComponents:v7];
  logsAssetsFolder = self->_logsAssetsFolder;
  self->_logsAssetsFolder = v8;

  if (![(UARPHostManager *)self createTempFolder:self->_logsAssetsFolder error:error])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v12 = self->_logsAssetsFolder;
      v16 = 136315394;
      v17 = "[UARPHostManager createTempFolderLogsAssets:error:]";
      v18 = 2112;
      v19 = v12;
      v13 = "%s: Could not create folder %@";
LABEL_8:
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, v13, &v16, 0x16u);
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  if (![(UARPHostManager *)self pruneFolder:self->_logsAssetsFolder timeNow:assetsCopy maxFileAge:error error:3600.0])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v14 = self->_logsAssetsFolder;
      v16 = 136315394;
      v17 = "[UARPHostManager createTempFolderLogsAssets:error:]";
      v18 = 2112;
      v19 = v14;
      v13 = "%s: Could not prune folder %@";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v10 = 1;
LABEL_10:

  return v10;
}

- (BOOL)createTempFolderMappedAnalyticsAssets:(id)assets error:(id *)error
{
  assetsCopy = assets;
  v7 = objc_opt_new();
  [v7 addObject:self->_tempFolderPath];
  [v7 addObject:@"device/assets/mappedanalytics"];
  v8 = [NSString pathWithComponents:v7];
  mappedAnalyticsAssetsFolder = self->_mappedAnalyticsAssetsFolder;
  self->_mappedAnalyticsAssetsFolder = v8;

  if (![(UARPHostManager *)self createTempFolder:self->_mappedAnalyticsAssetsFolder error:error])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v12 = self->_mappedAnalyticsAssetsFolder;
      v16 = 136315394;
      v17 = "[UARPHostManager createTempFolderMappedAnalyticsAssets:error:]";
      v18 = 2112;
      v19 = v12;
      v13 = "%s: Could not create folder %@";
LABEL_8:
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, v13, &v16, 0x16u);
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  if (![(UARPHostManager *)self pruneFolder:self->_mappedAnalyticsAssetsFolder timeNow:assetsCopy maxFileAge:error error:3600.0])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v14 = self->_mappedAnalyticsAssetsFolder;
      v16 = 136315394;
      v17 = "[UARPHostManager createTempFolderMappedAnalyticsAssets:error:]";
      v18 = 2112;
      v19 = v14;
      v13 = "%s: Could not prune folder %@";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v10 = 1;
LABEL_10:

  return v10;
}

- (BOOL)createTempFolderVoiceAssistAssets:(id)assets error:(id *)error
{
  assetsCopy = assets;
  v7 = objc_opt_new();
  [v7 addObject:self->_tempFolderPath];
  [v7 addObject:@"device/assets/voiceassist"];
  v8 = [NSString pathWithComponents:v7];
  voiceAssistAssetsFolder = self->_voiceAssistAssetsFolder;
  self->_voiceAssistAssetsFolder = v8;

  if (![(UARPHostManager *)self createTempFolder:self->_voiceAssistAssetsFolder error:error])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v12 = self->_voiceAssistAssetsFolder;
      v16 = 136315394;
      v17 = "[UARPHostManager createTempFolderVoiceAssistAssets:error:]";
      v18 = 2112;
      v19 = v12;
      v13 = "%s: Could not create folder %@";
LABEL_8:
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, v13, &v16, 0x16u);
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  if (![(UARPHostManager *)self pruneFolder:self->_voiceAssistAssetsFolder timeNow:assetsCopy maxFileAge:error error:3600.0])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v14 = self->_voiceAssistAssetsFolder;
      v16 = 136315394;
      v17 = "[UARPHostManager createTempFolderVoiceAssistAssets:error:]";
      v18 = 2112;
      v19 = v14;
      v13 = "%s: Could not prune folder %@";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v10 = 1;
LABEL_10:

  return v10;
}

- (BOOL)activateDaemonMode
{
  v3 = [[UARPHostTransportService alloc] initWithUARPHostManager:self queue:self->_queue];
  transportService = self->_transportService;
  self->_transportService = v3;

  [(UARPHostTransportService *)self->_transportService activateListener];
  v5 = [[UARPHostControlService alloc] initWithUARPHostManager:self queue:self->_queue];
  controllerService = self->_controllerService;
  self->_controllerService = v5;

  [(UARPHostControlService *)self->_controllerService activateListener];
  v7 = [[UARPPersonalizationCompleteService alloc] initWithUARPHostManager:self queue:self->_queue];
  personalizationCompleteService = self->_personalizationCompleteService;
  self->_personalizationCompleteService = v7;

  [(UARPPersonalizationCompleteService *)self->_personalizationCompleteService activateListener];
  v9 = [[UARPPersonalizationEventManager alloc] initWithUARPHostManager:self queue:self->_queue];
  tssManager = self->_tssManager;
  self->_tssManager = v9;

  [(UARPPersonalizationEventManager *)self->_tssManager activateDaemonMode];
  return 1;
}

- (BOOL)activateToolMode
{
  v3 = [[UARPHostTransportService alloc] initWithUARPHostManager:self queue:self->_queue];
  transportService = self->_transportService;
  self->_transportService = v3;

  [(UARPHostTransportService *)self->_transportService activateToolMode];
  v5 = [[UARPHostControlService alloc] initWithUARPHostManager:self queue:self->_queue];
  controllerService = self->_controllerService;
  self->_controllerService = v5;

  [(UARPHostControlService *)self->_controllerService activateToolMode];
  v7 = [[UARPPersonalizationCompleteService alloc] initWithUARPHostManager:self queue:self->_queue];
  personalizationCompleteService = self->_personalizationCompleteService;
  self->_personalizationCompleteService = v7;

  [(UARPPersonalizationCompleteService *)self->_personalizationCompleteService activateToolMode];
  v9 = [[UARPPersonalizationEventManager alloc] initWithUARPHostManager:self queue:self->_queue];
  tssManager = self->_tssManager;
  self->_tssManager = v9;

  [(UARPPersonalizationEventManager *)self->_tssManager activateToolMode];
  return 1;
}

- (BOOL)addTransportConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [[UARPHostEndpoint alloc] initWithNewConnection:connectionCopy hostManager:self tempFolderPath:self->_tempFolderPath];
  prepareEndpoint = [(UARPHostEndpoint *)v5 prepareEndpoint];
  log = self->_log;
  if (prepareEndpoint)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_INFO))
    {
      endpoints = self->_endpoints;
      v12 = 136315394;
      v13 = "[UARPHostManager addTransportConnection:]";
      v14 = 2112;
      v15 = endpoints;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Entries pre addition %@", &v12, 0x16u);
    }

    [(NSMutableArray *)self->_endpoints addObject:v5];
    v9 = self->_log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = self->_endpoints;
      v12 = 136315394;
      v13 = "[UARPHostManager addTransportConnection:]";
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: Entries post addition %@", &v12, 0x16u);
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10007B014(log);
  }

  return prepareEndpoint;
}

- (void)endpointDisconnection:(id)disconnection
{
  disconnectionCopy = disconnection;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000087B0;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = disconnectionCopy;
  v6 = disconnectionCopy;
  dispatch_async(queue, v7);
}

- (BOOL)addControllerConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [[UARPEndpointControllerInternal alloc] initWithNewConnection:connectionCopy hostManager:self];
  prepareConnection = [(UARPEndpointControllerInternal *)v5 prepareConnection];
  if (prepareConnection)
  {
    [(NSMutableArray *)self->_endpointControllers addObject:v5];
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10007B014(log);
    }
  }

  return prepareConnection;
}

- (void)controllerDisconnection:(id)disconnection
{
  disconnectionCopy = disconnection;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100008A0C;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = disconnectionCopy;
  v6 = disconnectionCopy;
  dispatch_async(queue, v7);
}

- (void)monitorForDevices:(id)devices
{
  devicesCopy = devices;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100008BE0;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = devicesCopy;
  v6 = devicesCopy;
  dispatch_async(queue, v7);
}

- (void)stageAndApplyFirmwareAssetInternal:(id)internal assetUUID:(id)d hostEndpoint:(id)endpoint tssServerURL:(id)l needsStaging:(BOOL)staging autoApply:(BOOL)apply
{
  internalCopy = internal;
  dCopy = d;
  endpointCopy = endpoint;
  lCopy = l;
  queue = self->_queue;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100008E80;
  v23[3] = &unk_1000B8AD8;
  applyCopy = apply;
  v23[4] = self;
  v24 = internalCopy;
  v25 = dCopy;
  v26 = endpointCopy;
  stagingCopy = staging;
  v27 = lCopy;
  v19 = lCopy;
  v20 = endpointCopy;
  v21 = dCopy;
  v22 = internalCopy;
  dispatch_async(queue, v23);
}

- (void)applyStagedAssets:(id)assets
{
  assetsCopy = assets;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000963C;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = assetsCopy;
  v6 = assetsCopy;
  dispatch_async(queue, v7);
}

- (void)rescindStagedAssets:(id)assets
{
  assetsCopy = assets;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000097DC;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = assetsCopy;
  v6 = assetsCopy;
  dispatch_async(queue, v7);
}

- (void)solicitAssetByAssetTag:(id)tag hostEndpoint:(id)endpoint assetURL:(id)l assetUUID:(id)d
{
  tagCopy = tag;
  endpointCopy = endpoint;
  lCopy = l;
  dCopy = d;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000099F8;
  block[3] = &unk_1000B8B00;
  block[4] = self;
  v20 = tagCopy;
  v21 = lCopy;
  v22 = dCopy;
  v23 = endpointCopy;
  v15 = endpointCopy;
  v16 = dCopy;
  v17 = lCopy;
  v18 = tagCopy;
  dispatch_async(queue, block);
}

- (void)endpointControllerEndpointUnavailable:(id)unavailable
{
  unavailableCopy = unavailable;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100009D28;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = unavailableCopy;
  v6 = unavailableCopy;
  dispatch_async(queue, v7);
}

- (void)handleAssetAvailabilityEvent:(id)event
{
  eventCopy = event;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100009EE0;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(queue, v7);
}

- (void)offerAssetToMatchingEndpoints:(id)endpoints personality:(id)personality availableFirmwareVersion:(id)version
{
  endpointsCopy = endpoints;
  personalityCopy = personality;
  versionCopy = version;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v46 = "[UARPHostManager offerAssetToMatchingEndpoints:personality:availableFirmwareVersion:]";
    v47 = 2112;
    v48 = personalityCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: checking for matching endpoint personalities to %@", buf, 0x16u);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = self->_endpoints;
  v10 = [(NSMutableArray *)obj countByEnumeratingWithState:&v41 objects:v53 count:16];
  v11 = personalityCopy;
  if (v10)
  {
    v12 = v10;
    v13 = *v42;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v41 + 1) + 8 * i);
        personality = [v15 personality];
        v17 = [personality isPersonalityMatch:v11];

        v18 = self->_log;
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
        if (v17)
        {
          if (v19)
          {
            v20 = v18;
            personality2 = [v15 personality];
            *buf = 136315394;
            v46 = "[UARPHostManager offerAssetToMatchingEndpoints:personality:availableFirmwareVersion:]";
            v47 = 2112;
            v48 = personality2;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s: endpoint personality matches; %@", buf, 0x16u);
          }

          personality3 = [v15 personality];
          v23 = [endpointsCopy getAssetURLForPersonality:personality3];

          if (v23)
          {
            v24 = [v23 checkResourceIsReachableAndReturnError:0];
            v25 = self->_log;
            if (v24)
            {
              if (os_log_type_enabled(self->_log, OS_LOG_TYPE_INFO))
              {
                v26 = v25;
                path = [v23 path];
                [v15 personality];
                v29 = v28 = endpointsCopy;
                *buf = 136315650;
                v46 = "[UARPHostManager offerAssetToMatchingEndpoints:personality:availableFirmwareVersion:]";
                v47 = 2112;
                v48 = path;
                v49 = 2112;
                v50 = v29;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s: Found asset %@ for %@", buf, 0x20u);

                endpointsCopy = v28;
              }

              queue = self->_queue;
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_10000A74C;
              block[3] = &unk_1000B8B28;
              block[4] = self;
              v39 = v23;
              v40 = v15;
              dispatch_async(queue, block);

              v11 = personalityCopy;
            }

            else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
            {
              v33 = v25;
              path2 = [v23 path];
              *buf = 136315394;
              v46 = "[UARPHostManager offerAssetToMatchingEndpoints:personality:availableFirmwareVersion:]";
              v47 = 2112;
              v48 = path2;
              _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%s: url %@ from asset manager client is not reachable", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            sub_10007B33C(&v51, &v52);
          }
        }

        else if (v19)
        {
          v31 = v18;
          personality4 = [v15 personality];
          *buf = 136315394;
          v46 = "[UARPHostManager offerAssetToMatchingEndpoints:personality:availableFirmwareVersion:]";
          v47 = 2112;
          v48 = personality4;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%s: endpoint personality does not match; %@", buf, 0x16u);
        }
      }

      v12 = [(NSMutableArray *)obj countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v12);
  }
}

- (BOOL)pauseAssetManager:(id)manager
{
  managerCopy = manager;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v5 = self->_log;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    uUIDString = [managerCopy UUIDString];
    *buf = 136315394;
    v20 = "[UARPHostManager pauseAssetManager:]";
    v21 = 2112;
    v22 = uUIDString;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: Pause Asset Manager for %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000AA14;
  block[3] = &unk_1000B8AB0;
  v12 = managerCopy;
  selfCopy = self;
  v14 = &v15;
  v8 = managerCopy;
  dispatch_sync(queue, block);
  v9 = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return v9;
}

- (BOOL)resumeAssetManager:(id)manager
{
  managerCopy = manager;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v5 = self->_log;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    uUIDString = [managerCopy UUIDString];
    *buf = 136315394;
    v20 = "[UARPHostManager resumeAssetManager:]";
    v21 = 2112;
    v22 = uUIDString;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: Resume Asset Manager for %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000AC6C;
  block[3] = &unk_1000B8AB0;
  v12 = managerCopy;
  selfCopy = self;
  v14 = &v15;
  v8 = managerCopy;
  dispatch_sync(queue, block);
  v9 = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return v9;
}

- (void)checkAssetManager:(id)manager
{
  managerCopy = manager;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v6 = log;
    uUIDString = [managerCopy UUIDString];
    *buf = 136315394;
    v14 = "[UARPHostManager checkAssetManager:]";
    v15 = 2112;
    v16 = uUIDString;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: Check Asset Manager for %@", buf, 0x16u);
  }

  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000AE70;
  v10[3] = &unk_1000B8A88;
  v11 = managerCopy;
  selfCopy = self;
  v9 = managerCopy;
  dispatch_async(queue, v10);
}

- (BOOL)preflightOfferRestrictions:(id)restrictions hostEndpoint:(id)endpoint
{
  restrictionsCopy = restrictions;
  endpointCopy = endpoint;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    sub_10007B55C(log);
  }

  if ([(UARPHostManager *)self preflightOfferRestrictionByFirmwareVersion:restrictionsCopy hostEndpoint:endpointCopy])
  {
    v9 = self->_log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10007B790(v9);
    }
  }

  else if ([(UARPHostManager *)self preflightOfferRestrictionByOS:restrictionsCopy])
  {
    v10 = self->_log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10007B6D4(v10);
    }
  }

  else
  {
    if (![(UARPHostManager *)self preflightOfferRestrictionByDeployment:restrictionsCopy])
    {
      v12 = 0;
      goto LABEL_13;
    }

    v11 = self->_log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10007B618(v11);
    }
  }

  v12 = 1;
LABEL_13:

  return v12;
}

- (BOOL)preflightOfferRestrictionByFirmwareVersion:(id)version hostEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  versionCopy = version;
  activeFirmwareVersion = [endpointCopy activeFirmwareVersion];
  assetVersion = [versionCopy assetVersion];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = 136315650;
    v16 = "[UARPHostManager preflightOfferRestrictionByFirmwareVersion:hostEndpoint:]";
    v17 = 2112;
    v18 = assetVersion;
    v19 = 2112;
    v20 = endpointCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Available firmware version is %@ for endpoint %@", &v15, 0x20u);
  }

  v11 = self->_log;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v15 = 136315650;
    v16 = "[UARPHostManager preflightOfferRestrictionByFirmwareVersion:hostEndpoint:]";
    v17 = 2112;
    v18 = activeFirmwareVersion;
    v19 = 2112;
    v20 = endpointCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s: Active firmware version is %@ for endpoint %@", &v15, 0x20u);
  }

  v12 = [assetVersion isGreaterThan:activeFirmwareVersion];
  if ((v12 & 1) == 0)
  {
    v13 = self->_log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = 136315906;
      v16 = "[UARPHostManager preflightOfferRestrictionByFirmwareVersion:hostEndpoint:]";
      v17 = 2112;
      v18 = endpointCopy;
      v19 = 2112;
      v20 = assetVersion;
      v21 = 2112;
      v22 = activeFirmwareVersion;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s: endpoint %@Available firmware version %@ is not greater than Active firmware version %@ ", &v15, 0x2Au);
    }
  }

  return v12 ^ 1;
}

- (BOOL)preflightOfferRestrictionByOS:(id)s
{
  sCopy = s;
  v5 = MGCopyAnswer();
  log = self->_log;
  if (v5)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "[UARPHostManager preflightOfferRestrictionByOS:]";
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: OS Build Version is %@", &v11, 0x16u);
    }

    v7 = MGCopyAnswer();
    v8 = self->_log;
    if (v7)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_INFO))
      {
        v11 = 136315394;
        v12 = "[UARPHostManager preflightOfferRestrictionByOS:]";
        v13 = 2112;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s: Device Class is %@", &v11, 0x16u);
      }

      if ([v7 isEqualToString:@"AppleTV"] && -[UARPHostManager tvOSPreflightOfferRestriction:osBuildVersion:](self, "tvOSPreflightOfferRestriction:osBuildVersion:", sCopy, v5) || objc_msgSend(v7, "isEqualToString:", @"iPad") && -[UARPHostManager iOSPreflightOfferRestriction:osBuildVersion:](self, "iOSPreflightOfferRestriction:osBuildVersion:", sCopy, v5) || objc_msgSend(v7, "isEqualToString:", @"iPhone") && -[UARPHostManager iOSPreflightOfferRestriction:osBuildVersion:](self, "iOSPreflightOfferRestriction:osBuildVersion:", sCopy, v5) || objc_msgSend(v7, "isEqualToString:", @"Mac") && -[UARPHostManager macOSPreflightOfferRestriction:osBuildVersion:](self, "macOSPreflightOfferRestriction:osBuildVersion:", sCopy, v5) || objc_msgSend(v7, "isEqualToString:", @"RealityDevice") && -[UARPHostManager visionOSPreflightOfferRestriction:osBuildVersion:](self, "visionOSPreflightOfferRestriction:osBuildVersion:", sCopy, v5) || objc_msgSend(v7, "isEqualToString:", @"Watch") && -[UARPHostManager watchOSPreflightOfferRestriction:osBuildVersion:](self, "watchOSPreflightOfferRestriction:osBuildVersion:", sCopy, v5))
      {
        v9 = 1;
LABEL_26:

        goto LABEL_27;
      }
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10007B84C();
    }

    v9 = 0;
    goto LABEL_26;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10007B8CC();
  }

  v9 = 0;
LABEL_27:

  return v9;
}

- (BOOL)iOSPreflightOfferRestriction:(id)restriction osBuildVersion:(id)version
{
  versionCopy = version;
  restrictionCopy = restriction;
  v8 = [restrictionCopy containsTLV:objc_opt_class()];

  if (v8)
  {
    v9 = v8;
    osVersion = [v9 osVersion];
    v11 = [osVersion compare:versionCopy];

    log = self->_log;
    v13 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
    v14 = v11 == 1;
    if (v11 == 1)
    {
      if (v13)
      {
        v15 = log;
        osVersion2 = [v9 osVersion];
        v20 = 136315650;
        v21 = "[UARPHostManager iOSPreflightOfferRestriction:osBuildVersion:]";
        v22 = 2112;
        v23 = osVersion2;
        v24 = 2112;
        v25 = versionCopy;
        v17 = "%s: Minimum build is %@, which is greater than or equal to OS Build of %@";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, v17, &v20, 0x20u);
      }
    }

    else if (v13)
    {
      v15 = log;
      osVersion2 = [v9 osVersion];
      v20 = 136315650;
      v21 = "[UARPHostManager iOSPreflightOfferRestriction:osBuildVersion:]";
      v22 = 2112;
      v23 = osVersion2;
      v24 = 2112;
      v25 = versionCopy;
      v17 = "%s: Minimum build is %@, asset qualifies for OS Build of %@";
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v18 = self->_log;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v20 = 136315394;
    v21 = "[UARPHostManager iOSPreflightOfferRestriction:osBuildVersion:]";
    v22 = 2112;
    v23 = versionCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s: No minimum build for OS Build of %@", &v20, 0x16u);
  }

  v14 = 0;
LABEL_12:

  return v14;
}

- (BOOL)macOSPreflightOfferRestriction:(id)restriction osBuildVersion:(id)version
{
  versionCopy = version;
  restrictionCopy = restriction;
  v8 = [restrictionCopy containsTLV:objc_opt_class()];

  if (v8)
  {
    v9 = v8;
    osVersion = [v9 osVersion];
    v11 = [osVersion compare:versionCopy];

    log = self->_log;
    v13 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
    v14 = v11 == 1;
    if (v11 == 1)
    {
      if (v13)
      {
        v15 = log;
        osVersion2 = [v9 osVersion];
        v20 = 136315650;
        v21 = "[UARPHostManager macOSPreflightOfferRestriction:osBuildVersion:]";
        v22 = 2112;
        v23 = osVersion2;
        v24 = 2112;
        v25 = versionCopy;
        v17 = "%s: Minimum build is %@, which is greater than or equal to OS Build of %@";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, v17, &v20, 0x20u);
      }
    }

    else if (v13)
    {
      v15 = log;
      osVersion2 = [v9 osVersion];
      v20 = 136315650;
      v21 = "[UARPHostManager macOSPreflightOfferRestriction:osBuildVersion:]";
      v22 = 2112;
      v23 = osVersion2;
      v24 = 2112;
      v25 = versionCopy;
      v17 = "%s: Minimum build is %@, asset qualifies for OS Build of %@";
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v18 = self->_log;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v20 = 136315394;
    v21 = "[UARPHostManager macOSPreflightOfferRestriction:osBuildVersion:]";
    v22 = 2112;
    v23 = versionCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s: No minimum build for OS Build of %@", &v20, 0x16u);
  }

  v14 = 0;
LABEL_12:

  return v14;
}

- (BOOL)tvOSPreflightOfferRestriction:(id)restriction osBuildVersion:(id)version
{
  versionCopy = version;
  restrictionCopy = restriction;
  v8 = [restrictionCopy containsTLV:objc_opt_class()];

  if (v8)
  {
    v9 = v8;
    osVersion = [v9 osVersion];
    v11 = [osVersion compare:versionCopy];

    log = self->_log;
    v13 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
    v14 = v11 == 1;
    if (v11 == 1)
    {
      if (v13)
      {
        v15 = log;
        osVersion2 = [v9 osVersion];
        v20 = 136315650;
        v21 = "[UARPHostManager tvOSPreflightOfferRestriction:osBuildVersion:]";
        v22 = 2112;
        v23 = osVersion2;
        v24 = 2112;
        v25 = versionCopy;
        v17 = "%s: Minimum build is %@, which is greater than or equal to OS Build of %@";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, v17, &v20, 0x20u);
      }
    }

    else if (v13)
    {
      v15 = log;
      osVersion2 = [v9 osVersion];
      v20 = 136315650;
      v21 = "[UARPHostManager tvOSPreflightOfferRestriction:osBuildVersion:]";
      v22 = 2112;
      v23 = osVersion2;
      v24 = 2112;
      v25 = versionCopy;
      v17 = "%s: Minimum build is %@, asset qualifies for OS Build of %@";
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v18 = self->_log;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v20 = 136315394;
    v21 = "[UARPHostManager tvOSPreflightOfferRestriction:osBuildVersion:]";
    v22 = 2112;
    v23 = versionCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s: No minimum build for OS Build of %@", &v20, 0x16u);
  }

  v14 = 0;
LABEL_12:

  return v14;
}

- (BOOL)visionOSPreflightOfferRestriction:(id)restriction osBuildVersion:(id)version
{
  versionCopy = version;
  restrictionCopy = restriction;
  v8 = [restrictionCopy containsTLV:objc_opt_class()];

  if (v8)
  {
    v9 = v8;
    osVersion = [v9 osVersion];
    v11 = [osVersion compare:versionCopy];

    log = self->_log;
    v13 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
    v14 = v11 == 1;
    if (v11 == 1)
    {
      if (v13)
      {
        v15 = log;
        osVersion2 = [v9 osVersion];
        v20 = 136315650;
        v21 = "[UARPHostManager visionOSPreflightOfferRestriction:osBuildVersion:]";
        v22 = 2112;
        v23 = osVersion2;
        v24 = 2112;
        v25 = versionCopy;
        v17 = "%s: Minimum build is %@, which is greater than or equal to OS Build of %@";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, v17, &v20, 0x20u);
      }
    }

    else if (v13)
    {
      v15 = log;
      osVersion2 = [v9 osVersion];
      v20 = 136315650;
      v21 = "[UARPHostManager visionOSPreflightOfferRestriction:osBuildVersion:]";
      v22 = 2112;
      v23 = osVersion2;
      v24 = 2112;
      v25 = versionCopy;
      v17 = "%s: Minimum build is %@, asset qualifies for OS Build of %@";
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v18 = self->_log;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v20 = 136315394;
    v21 = "[UARPHostManager visionOSPreflightOfferRestriction:osBuildVersion:]";
    v22 = 2112;
    v23 = versionCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s: No minimum build for OS Build of %@", &v20, 0x16u);
  }

  v14 = 0;
LABEL_12:

  return v14;
}

- (BOOL)watchOSPreflightOfferRestriction:(id)restriction osBuildVersion:(id)version
{
  versionCopy = version;
  restrictionCopy = restriction;
  v8 = [restrictionCopy containsTLV:objc_opt_class()];

  if (v8)
  {
    v9 = v8;
    osVersion = [v9 osVersion];
    v11 = [osVersion compare:versionCopy];

    log = self->_log;
    v13 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
    v14 = v11 == 1;
    if (v11 == 1)
    {
      if (v13)
      {
        v15 = log;
        osVersion2 = [v9 osVersion];
        v20 = 136315650;
        v21 = "[UARPHostManager watchOSPreflightOfferRestriction:osBuildVersion:]";
        v22 = 2112;
        v23 = osVersion2;
        v24 = 2112;
        v25 = versionCopy;
        v17 = "%s: Minimum build is %@, which is greater than or equal to OS Build of %@";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, v17, &v20, 0x20u);
      }
    }

    else if (v13)
    {
      v15 = log;
      osVersion2 = [v9 osVersion];
      v20 = 136315650;
      v21 = "[UARPHostManager watchOSPreflightOfferRestriction:osBuildVersion:]";
      v22 = 2112;
      v23 = osVersion2;
      v24 = 2112;
      v25 = versionCopy;
      v17 = "%s: Minimum build is %@, asset qualifies for OS Build of %@";
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v18 = self->_log;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v20 = 136315394;
    v21 = "[UARPHostManager watchOSPreflightOfferRestriction:osBuildVersion:]";
    v22 = 2112;
    v23 = versionCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s: No minimum build for OS Build of %@", &v20, 0x16u);
  }

  v14 = 0;
LABEL_12:

  return v14;
}

- (BOOL)preflightAvailableGreaterThanStaged:(id)staged hostEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  stagedCopy = staged;
  stagedFirmwareVersion = [endpointCopy stagedFirmwareVersion];
  assetVersion = [stagedCopy assetVersion];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = 136315650;
    v16 = "[UARPHostManager preflightAvailableGreaterThanStaged:hostEndpoint:]";
    v17 = 2112;
    v18 = stagedFirmwareVersion;
    v19 = 2112;
    v20 = endpointCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Staged firmware version is %@ for endpoint %@", &v15, 0x20u);
  }

  v11 = self->_log;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v15 = 136315650;
    v16 = "[UARPHostManager preflightAvailableGreaterThanStaged:hostEndpoint:]";
    v17 = 2112;
    v18 = assetVersion;
    v19 = 2112;
    v20 = endpointCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s: Available firmware version is %@ for endpoint %@", &v15, 0x20u);
  }

  v12 = [assetVersion isGreaterThan:stagedFirmwareVersion];
  if ((v12 & 1) == 0)
  {
    v13 = self->_log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = 136315906;
      v16 = "[UARPHostManager preflightAvailableGreaterThanStaged:hostEndpoint:]";
      v17 = 2112;
      v18 = endpointCopy;
      v19 = 2112;
      v20 = assetVersion;
      v21 = 2112;
      v22 = stagedFirmwareVersion;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s: endpoint %@Available firmware version %@ is not greater than Staged firmware version %@ ", &v15, 0x2Au);
    }
  }

  return v12;
}

- (BOOL)preflightOfferRestrictionByDeployment:(id)deployment
{
  deploymentCopy = deployment;
  if ([(UARPHostManager *)self preflightOfferRestrictionByDeploymentPercentage:deploymentCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(UARPHostManager *)self preflightOfferRestrictionByDeploymentCountry:deploymentCopy];
  }

  return v5;
}

- (BOOL)preflightOfferRestrictionByDeploymentPercentage:(id)percentage
{
  percentageCopy = percentage;
  percentageRules = [percentageCopy percentageRules];
  if (percentageRules)
  {
    v6 = MGCopyAnswer();
    if (v6)
    {
      v7 = [UARPDeploymentRules calculateDeploymentPercent:v6];
      unsignedIntegerValue = [v7 unsignedIntegerValue];
      v8 = +[NSDate now];
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      obj = percentageRules;
      v9 = [obj countByEnumeratingWithState:&v53 objects:v65 count:16];
      if (v9)
      {
        v10 = v9;
        v46 = v7;
        v47 = v6;
        v48 = percentageRules;
        v11 = *v54;
        v49 = percentageCopy;
        v50 = v8;
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v54 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v53 + 1) + 8 * i);
            log = self->_log;
            if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
            {
              v15 = log;
              uuid = [percentageCopy uuid];
              uUIDString = [uuid UUIDString];
              *buf = 136315650;
              v58 = "[UARPHostManager preflightOfferRestrictionByDeploymentPercentage:]";
              v59 = 2112;
              v60 = uUIDString;
              v61 = 2112;
              v62 = v13;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: Asset: %@; Deployment Percentage Rule %@", buf, 0x20u);
            }

            untilDate = [v13 untilDate];
            v19 = [v8 compare:untilDate];

            if (v19 == -1)
            {
              if ([v13 percentageLimit] < unsignedIntegerValue)
              {
                v38 = objc_opt_new();
                [v38 setDateFormat:@"yyyy-MM-dd"];
                v39 = [v38 stringFromDate:v8];
                v40 = [NSString stringWithFormat:@"<today is %@, my deployment percentage is %lu>", v39, unsignedIntegerValue];

                v41 = self->_log;
                if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
                {
                  v42 = v41;
                  uuid2 = [percentageCopy uuid];
                  uUIDString2 = [uuid2 UUIDString];
                  *buf = 136315906;
                  v58 = "[UARPHostManager preflightOfferRestrictionByDeploymentPercentage:]";
                  v59 = 2112;
                  v60 = uUIDString2;
                  v61 = 2112;
                  v62 = v40;
                  v63 = 2112;
                  v64 = v13;
                  _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "%s: Asset: %@; %@ Deployment BLOCKED by %@", buf, 0x2Au);
                }

                v36 = 1;
                goto LABEL_27;
              }

              v31 = self->_log;
              if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
              {
                v32 = v31;
                uuid3 = [percentageCopy uuid];
                uUIDString3 = [uuid3 UUIDString];
                percentageLimit = [v13 percentageLimit];
                *buf = 136315906;
                v58 = "[UARPHostManager preflightOfferRestrictionByDeploymentPercentage:]";
                v59 = 2112;
                v60 = uUIDString3;
                v61 = 2048;
                v62 = unsignedIntegerValue;
                v63 = 2048;
                v64 = percentageLimit;
                _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "%s: Asset: %@; My deployment percent is %lu, which is lower than the deployment rule %lu percent ", buf, 0x2Au);
              }
            }

            else
            {
              v20 = objc_opt_new();
              [v20 setDateFormat:@"yyyy-MM-dd"];
              v21 = [v20 stringFromDate:v8];
              v22 = [NSString stringWithFormat:@"%@", v21];

              v23 = self->_log;
              if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
              {
                v24 = v23;
                uuid4 = [percentageCopy uuid];
                [uuid4 UUIDString];
                v26 = v10;
                selfCopy = self;
                v29 = v28 = v11;
                v30 = [v20 stringFromDate:v8];
                *buf = 136315906;
                v58 = "[UARPHostManager preflightOfferRestrictionByDeploymentPercentage:]";
                v59 = 2112;
                v60 = v29;
                v61 = 2112;
                v62 = v22;
                v63 = 2112;
                v64 = v30;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s: Asset: %@; Deployment Rule until %@ is in the past; today is %@", buf, 0x2Au);

                v11 = v28;
                self = selfCopy;
                v10 = v26;

                percentageCopy = v49;
                v8 = v50;
              }
            }
          }

          v10 = [obj countByEnumeratingWithState:&v53 objects:v65 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }

        v36 = 0;
LABEL_27:
        v6 = v47;
        percentageRules = v48;
        v7 = v46;
      }

      else
      {
        v36 = 0;
      }
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    v37 = self->_log;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v58 = "[UARPHostManager preflightOfferRestrictionByDeploymentPercentage:]";
      v59 = 2112;
      v60 = percentageCopy;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "%s: No deployment percentage rules for asset %@", buf, 0x16u);
    }

    v36 = 0;
  }

  return v36;
}

- (BOOL)preflightOfferRestrictionByDeploymentCountry:(id)country
{
  countryCopy = country;
  countryRules = [countryCopy countryRules];
  if (countryRules && objc_opt_class() && (+[GEOCountryConfiguration sharedConfiguration](GEOCountryConfiguration, "sharedConfiguration"), v5 = objc_claimAutoreleasedReturnValue(), [v5 countryCode], v6 = objc_claimAutoreleasedReturnValue(), v5, v6))
  {
    v33 = +[NSDate now];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = countryRules;
    v7 = [obj countByEnumeratingWithState:&v35 objects:v47 count:16];
    if (v7)
    {
      v8 = v7;
      v31 = countryRules;
      v9 = *v36;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v36 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v35 + 1) + 8 * i);
          countryCode = [v11 countryCode];
          v13 = [v6 isEqualToString:countryCode];

          if (v13)
          {
            untilDate = [v11 untilDate];
            v15 = [v33 compare:untilDate];

            if (v15 == -1)
            {
              v22 = objc_opt_new();
              [v22 setDateFormat:@"yyyy-MM-dd"];
              v23 = [v22 stringFromDate:v33];
              v24 = [NSString stringWithFormat:@"country code %@ today %@>", v6, v23];

              log = self->_log;
              if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
              {
                v27 = log;
                uuid = [countryCopy uuid];
                uUIDString = [uuid UUIDString];
                *buf = 136315906;
                v40 = "[UARPHostManager preflightOfferRestrictionByDeploymentCountry:]";
                v41 = 2112;
                v42 = uUIDString;
                v43 = 2112;
                v44 = v24;
                v45 = 2112;
                v46 = v11;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s: Asset: %@; Deployment %@ BLOCKED by %@", buf, 0x2Au);
              }

              v21 = 1;
              goto LABEL_21;
            }
          }

          else
          {
            v16 = self->_log;
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v17 = v16;
              uuid2 = [countryCopy uuid];
              uUIDString2 = [uuid2 UUIDString];
              countryCode2 = [v11 countryCode];
              *buf = 136315906;
              v40 = "[UARPHostManager preflightOfferRestrictionByDeploymentCountry:]";
              v41 = 2112;
              v42 = uUIDString2;
              v43 = 2112;
              v44 = countryCode2;
              v45 = 2112;
              v46 = v6;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s: Asset: %@; Rule country code %@ does not match country code self %@", buf, 0x2Au);
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v35 objects:v47 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }

      v21 = 0;
LABEL_21:
      countryRules = v31;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)personalizeSuperBinary:(id)binary hostEndpoint:(id)endpoint
{
  binaryCopy = binary;
  endpointCopy = endpoint;
  tssQueue = self->_tssQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000CBD4;
  block[3] = &unk_1000B8B28;
  block[4] = self;
  v12 = endpointCopy;
  v13 = binaryCopy;
  v9 = binaryCopy;
  v10 = endpointCopy;
  dispatch_async(tssQueue, block);
}

- (BOOL)personalizeSuperBinaryAsAuthListed:(id)listed hostEndpoint:(id)endpoint
{
  listedCopy = listed;
  endpointCopy = endpoint;
  v8 = objc_alloc_init(UARPAssetPersonalizer);
  tssServerURL = [listedCopy tssServerURL];
  v21 = 0;
  v10 = [(UARPAssetPersonalizer *)v8 prepareAsAuthList:tssServerURL error:&v21];
  v11 = v21;

  if (v10)
  {
    v20 = v11;
    v12 = [(UARPAssetPersonalizer *)v8 personalizeAsset:listedCopy error:&v20];
    v13 = v20;

    if (v12)
    {
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000D238;
      block[3] = &unk_1000B8B28;
      block[4] = self;
      v18 = listedCopy;
      v19 = endpointCopy;
      dispatch_async(queue, block);

      v15 = 1;
    }

    else
    {
      v15 = 0;
    }

    v11 = v13;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)personalizeSuperBinaryAsAppleConnect:(id)connect hostEndpoint:(id)endpoint
{
  connectCopy = connect;
  endpointCopy = endpoint;
  v8 = objc_alloc_init(UARPAssetPersonalizer);
  tssServerURL = [connectCopy tssServerURL];
  v21 = 0;
  v10 = [(UARPAssetPersonalizer *)v8 prepareAsAppleConnectSSO:tssServerURL error:&v21];
  v11 = v21;

  if (v10)
  {
    v20 = v11;
    v12 = [(UARPAssetPersonalizer *)v8 personalizeAsset:connectCopy error:&v20];
    v13 = v20;

    if (v12)
    {
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000D3B8;
      block[3] = &unk_1000B8B28;
      block[4] = self;
      v18 = connectCopy;
      v19 = endpointCopy;
      dispatch_async(queue, block);

      v15 = 1;
    }

    else
    {
      v15 = 0;
    }

    v11 = v13;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)layer3EndpointReachable:(id)reachable
{
  reachableCopy = reachable;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10007B94C(log);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000D490;
  v8[3] = &unk_1000B8A88;
  v8[4] = self;
  v9 = reachableCopy;
  v7 = reachableCopy;
  dispatch_async(queue, v8);
}

- (void)layer3EndpointUnreachable:(id)unreachable
{
  unreachableCopy = unreachable;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10007BB0C(log);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000D8CC;
  v8[3] = &unk_1000B8A88;
  v8[4] = self;
  v9 = unreachableCopy;
  v7 = unreachableCopy;
  dispatch_async(queue, v8);
}

- (void)layer3EndpointAssetStagingProgress:(id)progress asset:(id)asset bytesTransferred:(unint64_t)transferred assetLength:(unint64_t)length
{
  progressCopy = progress;
  assetCopy = asset;
  if (self->_debugTransfer)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      sub_10007BBC0(log);
    }
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000DAEC;
  block[3] = &unk_1000B8B50;
  block[4] = self;
  v17 = progressCopy;
  v18 = assetCopy;
  transferredCopy = transferred;
  lengthCopy = length;
  v14 = assetCopy;
  v15 = progressCopy;
  dispatch_async(queue, block);
}

- (void)layer3EndpointAssetFullyStaged:(id)staged txFirmwareAsset:(id)asset
{
  stagedCopy = staged;
  assetCopy = asset;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10007BC74(log);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000DE1C;
  block[3] = &unk_1000B8B28;
  block[4] = self;
  v13 = stagedCopy;
  v14 = assetCopy;
  v10 = assetCopy;
  v11 = stagedCopy;
  dispatch_async(queue, block);
}

- (void)layer3EndpointAssetFullyStaged:(id)staged rxDynamicAsset:(id)asset
{
  stagedCopy = staged;
  assetCopy = asset;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E174;
  block[3] = &unk_1000B8B28;
  block[4] = self;
  v12 = stagedCopy;
  v13 = assetCopy;
  v9 = assetCopy;
  v10 = stagedCopy;
  dispatch_async(queue, block);
}

- (void)layer3EndpointPersonalizationNeeded:(id)needed asset:(id)asset
{
  neededCopy = needed;
  assetCopy = asset;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10007BD28(log);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E918;
  block[3] = &unk_1000B8B28;
  block[4] = self;
  v13 = neededCopy;
  v14 = assetCopy;
  v10 = assetCopy;
  v11 = neededCopy;
  dispatch_async(queue, block);
}

- (void)layer3EndpointAssetPersonalizationComplete:(id)complete asset:(id)asset status:(int64_t)status
{
  completeCopy = complete;
  assetCopy = asset;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10007BEE8(log);
  }

  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000EB7C;
  v14[3] = &unk_1000B8B78;
  v14[4] = self;
  v15 = completeCopy;
  v16 = assetCopy;
  statusCopy = status;
  v12 = assetCopy;
  v13 = completeCopy;
  dispatch_async(queue, v14);
}

- (void)notifyControllersPersonalizationStatus:(id)status assetUUID:(id)d status:(int64_t)a5
{
  statusCopy = status;
  dCopy = d;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->_endpointControllers;
  v9 = [(NSMutableArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(obj);
        }

        xpcConnection = [*(*(&v20 + 1) + 8 * v12) xpcConnection];
        remoteObjectProxy = [xpcConnection remoteObjectProxy];
        layer3Endpoint = [statusCopy layer3Endpoint];
        uuid = [layer3Endpoint uuid];
        v17 = [NSNumber numberWithUnsignedInteger:a5];
        [remoteObjectProxy endpointControllerDelegatePersonalizationStatus:uuid assetUUID:dCopy status:v17];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }
}

- (void)layer3DownstreamEndpointReachable:(id)reachable downstreamID:(unsigned __int16)d
{
  reachableCopy = reachable;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10007C288(log);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F4B0;
  block[3] = &unk_1000B8BA0;
  block[4] = self;
  v11 = reachableCopy;
  dCopy = d;
  v9 = reachableCopy;
  dispatch_async(queue, block);
}

- (void)layer3DownstreamEndpointUnreachable:(id)unreachable downstreamID:(unsigned __int16)d
{
  unreachableCopy = unreachable;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10007C3B4(log);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F710;
  block[3] = &unk_1000B8BA0;
  block[4] = self;
  v11 = unreachableCopy;
  dCopy = d;
  v9 = unreachableCopy;
  dispatch_async(queue, block);
}

- (void)layer3EndpointAppliedStagedAssets:(id)assets layer3Flags:(int64_t)flags
{
  assetsCopy = assets;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10007C468(log);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F9AC;
  block[3] = &unk_1000B8BC8;
  block[4] = self;
  v11 = assetsCopy;
  flagsCopy = flags;
  v9 = assetsCopy;
  dispatch_async(queue, block);
}

- (void)layer3EndpointRescindedAssets:(id)assets
{
  assetsCopy = assets;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10007C51C(log);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000FC7C;
  v8[3] = &unk_1000B8A88;
  v8[4] = self;
  v9 = assetsCopy;
  v7 = assetsCopy;
  dispatch_async(queue, v8);
}

- (void)layer3EndpointAssetOffered:(id)offered asset:(id)asset
{
  offeredCopy = offered;
  assetCopy = asset;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10007C5D0(log);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000FF44;
  block[3] = &unk_1000B8B28;
  block[4] = self;
  v13 = offeredCopy;
  v14 = assetCopy;
  v10 = assetCopy;
  v11 = offeredCopy;
  dispatch_async(queue, block);
}

- (void)layer3EndpointAssetMetaDataComplete:(id)complete asset:(id)asset
{
  completeCopy = complete;
  assetCopy = asset;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10007C684(log);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001026C;
  block[3] = &unk_1000B8B28;
  block[4] = self;
  v13 = completeCopy;
  v14 = assetCopy;
  v10 = assetCopy;
  v11 = completeCopy;
  dispatch_async(queue, block);
}

- (void)layer3EndpointPayloadReady:(id)ready asset:(id)asset payload:(id)payload
{
  readyCopy = ready;
  assetCopy = asset;
  payloadCopy = payload;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10007C738(log);
  }

  queue = self->_queue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000105A0;
  v16[3] = &unk_1000B8BF0;
  v16[4] = self;
  v17 = readyCopy;
  v18 = assetCopy;
  v19 = payloadCopy;
  v13 = payloadCopy;
  v14 = assetCopy;
  v15 = readyCopy;
  dispatch_async(queue, v16);
}

- (void)layer3EndpointPayloadMetaDataComplete:(id)complete asset:(id)asset payload:(id)payload
{
  completeCopy = complete;
  assetCopy = asset;
  payloadCopy = payload;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10007C7EC(log);
  }

  queue = self->_queue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100010910;
  v16[3] = &unk_1000B8BF0;
  v16[4] = self;
  v17 = completeCopy;
  v18 = payloadCopy;
  v19 = assetCopy;
  v13 = assetCopy;
  v14 = payloadCopy;
  v15 = completeCopy;
  dispatch_async(queue, v16);
}

- (void)layer3EndpointPayloadData:(id)data asset:(id)asset payload:(id)payload offset:(unint64_t)offset payloadData:(id)payloadData
{
  dataCopy = data;
  assetCopy = asset;
  payloadCopy = payload;
  payloadDataCopy = payloadData;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10007C8A0(log);
  }

  queue = self->_queue;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100010CA8;
  v22[3] = &unk_1000B8C18;
  v22[4] = self;
  v23 = dataCopy;
  v24 = payloadCopy;
  v25 = payloadDataCopy;
  v26 = assetCopy;
  offsetCopy = offset;
  v18 = assetCopy;
  v19 = payloadDataCopy;
  v20 = payloadCopy;
  v21 = dataCopy;
  dispatch_async(queue, v22);
}

- (void)layer3EndpointPayloadDataComplete:(id)complete asset:(id)asset payload:(id)payload
{
  completeCopy = complete;
  assetCopy = asset;
  payloadCopy = payload;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10007C954(log);
  }

  queue = self->_queue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100011060;
  v16[3] = &unk_1000B8BF0;
  v16[4] = self;
  v17 = completeCopy;
  v18 = payloadCopy;
  v19 = assetCopy;
  v13 = assetCopy;
  v14 = payloadCopy;
  v15 = completeCopy;
  dispatch_async(queue, v16);
}

- (void)assetPersonalizationComplete:(id)complete endpointUUID:(id)d tssOptions:(id)options
{
  completeCopy = complete;
  dCopy = d;
  optionsCopy = options;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10007CA08(log);
  }

  v11 = [(UARPHostManager *)self findHostEndpointByUUID:dCopy];
  v12 = self->_log;
  if (v11)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_10007CAA4(v12);
    }

    v13 = [v11 findPersonalizingAssetByUUID:completeCopy];
    v14 = v13;
    if (v13)
    {
      v32 = v11;
      selfCopy = self;
      v34 = dCopy;
      v35 = completeCopy;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v31 = v13;
      obj = [v13 tatsuTickets];
      v40 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
      if (v40)
      {
        v38 = *v46;
        do
        {
          for (i = 0; i != v40; i = i + 1)
          {
            if (*v46 != v38)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v45 + 1) + 8 * i);
            tatsuRequest = [v16 tatsuRequest];

            if (tatsuRequest)
            {
              v39 = v16;
              manifestLocation = [v16 manifestLocation];
              componentTag = [manifestLocation componentTag];

              if (!componentTag)
              {
                componentTag = [[UARPComponentTag alloc] initWithString:@"ROOT"];
              }

              v43 = 0u;
              v44 = 0u;
              v41 = 0u;
              v42 = 0u;
              v20 = optionsCopy;
              v21 = [v20 countByEnumeratingWithState:&v41 objects:v49 count:16];
              if (v21)
              {
                v22 = v21;
                v23 = *v42;
                while (2)
                {
                  for (j = 0; j != v22; j = j + 1)
                  {
                    if (*v42 != v23)
                    {
                      objc_enumerationMutation(v20);
                    }

                    v25 = *(*(&v41 + 1) + 8 * j);
                    componentTag2 = [v25 componentTag];
                    tagString = [(UARPComponentTag *)componentTag tagString];
                    v28 = [componentTag2 isEqualToString:tagString];

                    if (v28)
                    {
                      tssResponse = [v25 tssResponse];
                      [v39 setTatsuResponse:tssResponse];

                      goto LABEL_25;
                    }
                  }

                  v22 = [v20 countByEnumeratingWithState:&v41 objects:v49 count:16];
                  if (v22)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_25:
            }
          }

          v40 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
        }

        while (v40);
      }

      v11 = v32;
      v14 = v31;
      [(UARPHostManager *)selfCopy assetPersonalizationComplete:v31 hostEndpoint:v32];
      dCopy = v34;
      completeCopy = v35;
    }

    else
    {
      v30 = self->_log;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_10007CB40(v30);
      }

      [(UARPHostManager *)self showAllAssets];
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10007CBE4(v12);
  }
}

- (void)assetPersonalizationComplete:(id)complete hostEndpoint:(id)endpoint
{
  completeCopy = complete;
  layer3Endpoint = [endpoint layer3Endpoint];
  [layer3Endpoint personalizeFirmwareAssetComplete:completeCopy];
}

- (id)findHostEndpointByUUID:(id)d
{
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_endpoints;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        uuid = [v9 uuid];
        v11 = UARPLayer3MatchingUUIDs(uuid, dCopy);

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)findDownstreamEndpointByHostEndpoint:(id)endpoint downstreamID:(unsigned __int16)d
{
  dCopy = d;
  endpointCopy = endpoint;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = self->_endpoints;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        upstreamEndpoint = [v12 upstreamEndpoint];
        v14 = [upstreamEndpoint isEqual:endpointCopy];

        if (v14 && [v12 downstreamID] == dCopy)
        {
          v15 = v12;
          goto LABEL_12;
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (id)findDynamicAssetByUUID:(id)d
{
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_dynamicAssets;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        uuid = [v9 uuid];
        v11 = UARPLayer3MatchingUUIDs(uuid, dCopy);

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)findCachingAssetByUUID:(id)d
{
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_cachingAssets;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        uuid = [v9 uuid];
        v11 = UARPLayer3MatchingUUIDs(uuid, dCopy);

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)showAllAssets
{
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v3 = self->_dynamicAssets;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v41;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v41 != v6)
        {
          objc_enumerationMutation(v3);
        }

        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
        {
          v9 = *(*(&v40 + 1) + 8 * i);
          v10 = log;
          uuid = [v9 uuid];
          uUIDString = [uuid UUIDString];
          *buf = 136315394;
          v47 = "[UARPHostManager showAllAssets]";
          v48 = 2112;
          v49 = uUIDString;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s: Dynamic Asset - %@", buf, 0x16u);
        }
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v5);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v13 = self->_cachingAssets;
  v14 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v37;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = self->_log;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = *(*(&v36 + 1) + 8 * j);
          v20 = v18;
          uuid2 = [v19 uuid];
          uUIDString2 = [uuid2 UUIDString];
          *buf = 136315394;
          v47 = "[UARPHostManager showAllAssets]";
          v48 = 2112;
          v49 = uUIDString2;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s: Caching Asset - %@", buf, 0x16u);
        }
      }

      v15 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v15);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v23 = self->_endpoints;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v24)
  {
    v26 = v24;
    v27 = *v33;
    *&v25 = 136315394;
    v31 = v25;
    do
    {
      for (k = 0; k != v26; k = k + 1)
      {
        if (*v33 != v27)
        {
          objc_enumerationMutation(v23);
        }

        v29 = *(*(&v32 + 1) + 8 * k);
        v30 = self->_log;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = v31;
          v47 = "[UARPHostManager showAllAssets]";
          v48 = 2112;
          v49 = v29;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%s: Assets for Endpoint %@", buf, 0x16u);
        }

        [v29 showAllAssets];
      }

      v26 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v26);
  }
}

- (BOOL)loadMappingDatabase
{
  if ([(UARPHostManager *)self ensureDatabaseExists])
  {
    p_uuidDatabaseURL = &self->_uuidDatabaseURL;
    v4 = [NSData dataWithContentsOfURL:self->_uuidDatabaseURL];
    v5 = v4;
    if (!v4 || ![v4 length])
    {
      log = self->_log;
      v13 = 1;
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        v16 = *p_uuidDatabaseURL;
        v17 = log;
        path = [(NSURL *)v16 path];
        *buf = 138412290;
        v52 = path;
        v13 = 1;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Assume no entries in UARP Endpoint UUID Database at %@", buf, 0xCu);
      }

      goto LABEL_26;
    }

    v43 = &self->_uuidDatabaseURL;
    v50[0] = objc_opt_class();
    v50[1] = objc_opt_class();
    v50[2] = objc_opt_class();
    v50[3] = objc_opt_class();
    v50[4] = objc_opt_class();
    v50[5] = objc_opt_class();
    v6 = [NSArray arrayWithObjects:v50 count:6];
    v7 = [NSSet setWithArray:v6];

    v8 = v7;
    v9 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v7 fromData:v5 error:0];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v42 = v7;
      v19 = self->_log;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10007CD20(v43, v19);
      }

      v49[0] = objc_opt_class();
      v49[1] = objc_opt_class();
      v49[2] = objc_opt_class();
      v49[3] = objc_opt_class();
      v49[4] = objc_opt_class();
      v49[5] = objc_opt_class();
      v20 = [NSArray arrayWithObjects:v49 count:6];
      v21 = [NSSet setWithArray:v20];

      v41 = v21;
      v22 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v21 fromData:v5 error:0];
      v23 = objc_opt_new();
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v24 = v22;
      v25 = [v24 countByEnumeratingWithState:&v44 objects:v48 count:16];
      v26 = &OBJC_IVAR___UARPEndpointConfiguration__outstandingInfoProperties;
      if (v25)
      {
        v27 = v25;
        v28 = *v45;
        while (2)
        {
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v45 != v28)
            {
              objc_enumerationMutation(v24);
            }

            v30 = *(*(&v44 + 1) + 8 * i);
            v31 = objc_alloc((v26 + 318));
            uuid = [v30 uuid];
            v33 = [v31 initWithUUID:uuid];

            if (!v33)
            {

              v13 = 0;
              v8 = v42;
              goto LABEL_25;
            }

            activeFirmwareVersion = [v30 activeFirmwareVersion];
            [v33 setActiveFirmwareVersion:activeFirmwareVersion];

            appleModelNumber = [v30 appleModelNumber];
            [v33 setAppleModelNumber:appleModelNumber];

            availableFirmwareVersion = [v30 availableFirmwareVersion];
            [v33 setAvailableFirmwareVersion:availableFirmwareVersion];

            hardwareFusing = [v30 hardwareFusing];
            [v33 setHardwareFusing:hardwareFusing];

            serialNumber = [v30 serialNumber];
            [v33 setSerialNumber:serialNumber];

            [v23 addObject:v33];
            v26 = &OBJC_IVAR___UARPEndpointConfiguration__outstandingInfoProperties;
          }

          v27 = [v24 countByEnumeratingWithState:&v44 objects:v48 count:16];
          if (v27)
          {
            continue;
          }

          break;
        }
      }

      v10 = [NSArray arrayWithArray:v23];

      if (!v10)
      {
        v40 = self->_log;
        v8 = v42;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          sub_10007CDB0(v43, v40);
        }

        v13 = 0;
        goto LABEL_25;
      }

      v8 = v42;
    }

    v11 = [v10 mutableCopy];
    uuidDatabase = self->_uuidDatabase;
    self->_uuidDatabase = v11;

    v13 = 1;
LABEL_25:

LABEL_26:
    return v13;
  }

  v14 = self->_log;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_10007CC88(self, v14);
  }

  return 0;
}

- (BOOL)ensureDatabaseExists
{
  v3 = objc_opt_new();
  [v3 addObject:self->_tempFolderPath];
  v4 = [NSURL fileURLWithPathComponents:v3];
  v5 = [NSString stringWithUTF8String:"hostEndpointDevices.plist"];
  [v3 addObject:v5];

  v6 = [NSURL fileURLWithPathComponents:v3];
  p_uuidDatabaseURL = &self->_uuidDatabaseURL;
  uuidDatabaseURL = self->_uuidDatabaseURL;
  self->_uuidDatabaseURL = v6;

  v9 = +[NSFileManager defaultManager];
  path = [v4 path];
  v11 = [v9 createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:0];

  if ((v11 & 1) == 0)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10007CE40(p_uuidDatabaseURL, log);
    }

    goto LABEL_7;
  }

  path2 = [*p_uuidDatabaseURL path];
  v13 = [v9 fileExistsAtPath:path2];

  if ((v13 & 1) == 0)
  {
    path3 = [*p_uuidDatabaseURL path];
    v15 = [v9 createFileAtPath:path3 contents:0 attributes:0];

    if ((v15 & 1) == 0)
    {
      v19 = self->_log;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10007CED0(p_uuidDatabaseURL, v19);
      }

LABEL_7:
      v16 = 0;
      goto LABEL_8;
    }
  }

  v16 = 1;
LABEL_8:

  return v16;
}

- (id)matchingDatabaseEntry:(id)entry
{
  entryCopy = entry;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100012814;
  v18 = sub_100012824;
  v19 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001282C;
  block[3] = &unk_1000B8AB0;
  block[4] = self;
  v6 = entryCopy;
  v12 = v6;
  v13 = &v14;
  dispatch_sync(queue, block);
  if ([(UARPHostManager *)self updateDatabaseEntry:v15[5]])
  {
    v7 = v15[5];
  }

  else
  {
    v8 = self->_log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      uUIDString = [v6 UUIDString];
      sub_10007CF6C(uUIDString, v20);
    }

    v7 = 0;
  }

  _Block_object_dispose(&v14, 8);

  return v7;
}

- (BOOL)updateDatabaseEntry:(id)entry
{
  entryCopy = entry;
  v5 = entryCopy;
  if (entryCopy)
  {
    queue = self->_queue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100012B74;
    v8[3] = &unk_1000B8A88;
    v8[4] = self;
    v9 = entryCopy;
    dispatch_sync(queue, v8);
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10007D070();
  }

  return v5 != 0;
}

- (void)clearDatabase
{
  v3 = objc_opt_new();
  uuidDatabase = self->_uuidDatabase;
  self->_uuidDatabase = v3;

  v5 = +[NSFileManager defaultManager];
  p_uuidDatabaseURL = &self->_uuidDatabaseURL;
  [v5 removeItemAtURL:self->_uuidDatabaseURL error:0];

  v7 = +[NSFileManager defaultManager];
  path = [(NSURL *)self->_uuidDatabaseURL path];
  v9 = [v7 createFileAtPath:path contents:0 attributes:0];

  if ((v9 & 1) == 0)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10007D0AC(p_uuidDatabaseURL, log);
    }
  }
}

- (void)clearAssetFolders
{
  v3 = +[NSDate now];
  [(UARPHostManager *)self pruneFolder:self->_assetsFolder timeNow:v3 maxFileAge:0 error:1.0];
  [(UARPHostManager *)self pruneFolder:self->_cachedAssetsFolder timeNow:v3 maxFileAge:0 error:1.0];
}

- (void)clearPacketCaptures
{
  v3 = +[NSDate now];
  [(UARPHostManager *)self pruneFolder:self->_packetCaptureFolder timeNow:v3 maxFileAge:0 error:1.0];
}

- (void)flushDatabase
{
  v31 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  selfCopy = self;
  p_uuidDatabase = &self->_uuidDatabase;
  obj = self->_uuidDatabase;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v42;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v42 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v41 + 1) + 8 * i);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v8 = v31;
        v9 = [v8 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (!v9)
        {

LABEL_18:
          [v8 addObject:v7];
          continue;
        }

        v10 = v9;
        v11 = 0;
        v12 = *v38;
        do
        {
          for (j = 0; j != v10; j = j + 1)
          {
            if (*v38 != v12)
            {
              objc_enumerationMutation(v8);
            }

            v14 = *(*(&v37 + 1) + 8 * j);
            if ([v14 isMatch:v7])
            {
              v11 |= [v14 isEqual:v7];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v37 objects:v45 count:16];
        }

        while (v10);

        if ((v11 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v4);
  }

  v15 = *p_uuidDatabase;
  *p_uuidDatabase = 0;

  objc_storeStrong(p_uuidDatabase, v31);
  v16 = *p_uuidDatabase;
  v36 = 0;
  v17 = [NSKeyedArchiver archivedDataWithRootObject:v16 requiringSecureCoding:1 error:&v36];
  v18 = v36;
  if (v17)
  {
    uuidDatabaseURL = selfCopy->_uuidDatabaseURL;
    v35 = 0;
    v20 = [NSFileHandle fileHandleForWritingToURL:uuidDatabaseURL error:&v35];
    v21 = v35;
    if (v20)
    {
      v34 = 0;
      v22 = [v20 truncateAtOffset:0 error:&v34];
      v23 = v34;
      if (v22)
      {
        v33 = 0;
        v24 = [v20 writeData:v17 error:&v33];
        v25 = v33;
        if (v24)
        {
          v32 = 0;
          v26 = [v20 closeAndReturnError:&v32];
          v27 = v32;
          if ((v26 & 1) == 0 && os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_ERROR))
          {
            sub_10007D228();
          }
        }

        else if (os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_ERROR))
        {
          sub_10007D1B8();
        }
      }

      else if (os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_ERROR))
      {
        sub_10007D148();
      }
    }

    else if (os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10007D298();
    }
  }

  else if (os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10007D308();
  }
}

- (void)updateDatabaseEntryForPersonality:(id)personality assetManager:(id)manager availableFirmwareVersion:(id)version
{
  personalityCopy = personality;
  managerCopy = manager;
  versionCopy = version;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = self->_uuidDatabase;
  v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v8)
  {
    v10 = v8;
    v41 = *v46;
    *&v9 = 136315138;
    v39 = v9;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v46 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v45 + 1) + 8 * i);
        v13 = [v12 copy];
        [(UARPHostManager *)self updateDatabaseAvailableVersion:v12 personality:personalityCopy assetManager:managerCopy availableFirmwareVersion:versionCopy];
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
        {
          *buf = v39;
          v50 = "[UARPHostManager updateDatabaseEntryForPersonality:assetManager:availableFirmwareVersion:]";
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Updated via available asset notification", buf, 0xCu);
        }

        v15 = self->_log;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = v15;
          uuid = [v13 uuid];
          uuid2 = [v12 uuid];
          *buf = 138412546;
          v50 = uuid;
          v51 = 2112;
          v52 = uuid2;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "UUID : %@ -> %@", buf, 0x16u);
        }

        v19 = self->_log;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = v19;
          appleModelNumber = [v13 appleModelNumber];
          appleModelNumber2 = [v12 appleModelNumber];
          *buf = 138412546;
          v50 = appleModelNumber;
          v51 = 2112;
          v52 = appleModelNumber2;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Apple Model Number : %@ -> %@", buf, 0x16u);
        }

        v23 = self->_log;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = v23;
          serialNumber = [v13 serialNumber];
          serialNumber2 = [v12 serialNumber];
          *buf = 138412546;
          v50 = serialNumber;
          v51 = 2112;
          v52 = serialNumber2;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Serial Number : %@ -> %@", buf, 0x16u);
        }

        v27 = self->_log;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = v27;
          hardwareFusing = [v13 hardwareFusing];
          hardwareFusing2 = [v12 hardwareFusing];
          *buf = 138412546;
          v50 = hardwareFusing;
          v51 = 2112;
          v52 = hardwareFusing2;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Hardware Fusing: %@ -> %@", buf, 0x16u);
        }

        v31 = self->_log;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = v31;
          activeFirmwareVersion = [v13 activeFirmwareVersion];
          activeFirmwareVersion2 = [v12 activeFirmwareVersion];
          *buf = 138412546;
          v50 = activeFirmwareVersion;
          v51 = 2112;
          v52 = activeFirmwareVersion2;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Active Firmware Version: %@ -> %@", buf, 0x16u);
        }

        v35 = self->_log;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = v35;
          availableFirmwareVersion = [v13 availableFirmwareVersion];
          availableFirmwareVersion2 = [v12 availableFirmwareVersion];
          *buf = 138412546;
          v50 = availableFirmwareVersion;
          v51 = 2112;
          v52 = availableFirmwareVersion2;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Available Firmware Version: %@ -> %@", buf, 0x16u);
        }
      }

      v10 = [(NSMutableArray *)obj countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v10);
  }

  [(UARPHostManager *)self flushDatabase];
}

- (void)updateDatabaseAvailableVersion:(id)version personality:(id)personality assetManager:(id)manager availableFirmwareVersion:(id)firmwareVersion
{
  versionCopy = version;
  personalityCopy = personality;
  firmwareVersionCopy = firmwareVersion;
  appleModelNumber = [versionCopy appleModelNumber];
  assetIdentifier = [versionCopy assetIdentifier];

  v30 = firmwareVersionCopy;
  if (assetIdentifier)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v15 = log;
      appleModelNumber2 = [versionCopy appleModelNumber];
      assetIdentifier2 = [versionCopy assetIdentifier];
      *buf = 136315650;
      v32 = "[UARPHostManager updateDatabaseAvailableVersion:personality:assetManager:availableFirmwareVersion:]";
      v33 = 2112;
      v34 = appleModelNumber2;
      v35 = 2112;
      v36 = assetIdentifier2;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: database entry specifies an AssetIdentifer of %@, which overrides AppleModelNumber of %@", buf, 0x20u);
    }

    assetIdentifier3 = [versionCopy assetIdentifier];

    appleModelNumber = assetIdentifier3;
  }

  serialNumber = [versionCopy serialNumber];
  hardwareFusing = [versionCopy hardwareFusing];
  lowercaseString = [hardwareFusing lowercaseString];
  activeFirmwareVersion = [versionCopy activeFirmwareVersion];
  versionString = [activeFirmwareVersion versionString];
  v24 = createEndpointPersonality();

  if (v24)
  {
    v25 = [v24 isPersonalityMatch:personalityCopy];
    v26 = self->_log;
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_INFO);
    v28 = v30;
    if (v25)
    {
      if (v27)
      {
        *buf = 136315650;
        v32 = "[UARPHostManager updateDatabaseAvailableVersion:personality:assetManager:availableFirmwareVersion:]";
        v33 = 2112;
        v34 = v24;
        v35 = 2112;
        v36 = personalityCopy;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s: this endpoint personality %@ matches %@", buf, 0x20u);
      }

      v29 = [v30 copy];
      [versionCopy setAvailableFirmwareVersion:v29];
    }

    else if (v27)
    {
      *buf = 136315650;
      v32 = "[UARPHostManager updateDatabaseAvailableVersion:personality:assetManager:availableFirmwareVersion:]";
      v33 = 2112;
      v34 = v24;
      v35 = 2112;
      v36 = personalityCopy;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s: this endpoint personality %@ does not match %@", buf, 0x20u);
    }
  }

  else
  {
    v28 = v30;
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10007D378();
    }
  }
}

- (BOOL)loadTMAPDatabase
{
  if ([(UARPHostManager *)self ensureTMAPDatabaseExists])
  {
    v3 = [NSData dataWithContentsOfURL:self->_tmapDatabaseURL];
    v4 = v3;
    if (v3 && [v3 length])
    {
      v19 = objc_opt_class();
      v20 = objc_opt_class();
      v21 = objc_opt_class();
      v22 = objc_opt_class();
      v23 = objc_opt_class();
      v24 = objc_opt_class();
      v25 = objc_opt_class();
      v26 = objc_opt_class();
      v5 = [NSArray arrayWithObjects:&v19 count:8];
      v6 = [NSSet setWithArray:v5, v19, v20, v21, v22, v23, v24, v25];

      v7 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v6 fromData:v4 error:0];
      v8 = v7;
      v9 = v7 != 0;
      if (v7)
      {
        v10 = [v7 mutableCopy];
        tmapDatabase = self->_tmapDatabase;
        self->_tmapDatabase = v10;
      }

      else
      {
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          sub_10007D498(&self->_tmapDatabaseURL, log);
        }
      }
    }

    else
    {
      v13 = self->_log;
      v9 = 1;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        tmapDatabaseURL = self->_tmapDatabaseURL;
        v15 = v13;
        path = [(NSURL *)tmapDatabaseURL path];
        *buf = 138412290;
        v28 = path;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Assume no entries in TMAP Database at %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v12 = self->_log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10007D400(self, v12);
    }

    return 0;
  }

  return v9;
}

- (BOOL)ensureTMAPDatabaseExists
{
  v3 = objc_opt_new();
  [v3 addObject:self->_tmapDatabaseFolder];
  v4 = [NSURL fileURLWithPathComponents:v3];
  v5 = [NSString stringWithUTF8String:"tmapDatabase.plist"];
  [v3 addObject:v5];

  v6 = [NSURL fileURLWithPathComponents:v3];
  tmapDatabaseURL = self->_tmapDatabaseURL;
  self->_tmapDatabaseURL = v6;

  v8 = +[NSFileManager defaultManager];
  path = [v4 path];
  v10 = [v8 createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:0];

  if ((v10 & 1) == 0)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10007D528(&self->_tmapDatabaseURL, log);
    }

    goto LABEL_7;
  }

  path2 = [(NSURL *)self->_tmapDatabaseURL path];
  v12 = [v8 fileExistsAtPath:path2];

  if ((v12 & 1) == 0)
  {
    path3 = [(NSURL *)self->_tmapDatabaseURL path];
    v14 = [v8 createFileAtPath:path3 contents:0 attributes:0];

    if ((v14 & 1) == 0)
    {
      v18 = self->_log;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10007D5B8(&self->_tmapDatabaseURL, v18);
      }

LABEL_7:
      v15 = 0;
      goto LABEL_8;
    }
  }

  v15 = 1;
LABEL_8:

  return v15;
}

- (void)flushTMAPDatabase
{
  tmapDatabase = self->_tmapDatabase;
  v19 = 0;
  v4 = [NSKeyedArchiver archivedDataWithRootObject:tmapDatabase requiringSecureCoding:1 error:&v19];
  v5 = v19;
  if (v4)
  {
    tmapDatabaseURL = self->_tmapDatabaseURL;
    v18 = 0;
    v7 = [NSFileHandle fileHandleForWritingToURL:tmapDatabaseURL error:&v18];
    v8 = v18;
    if (v7)
    {
      v17 = 0;
      v9 = [v7 truncateAtOffset:0 error:&v17];
      v10 = v17;
      if (v9)
      {
        v16 = 0;
        v11 = [v7 writeData:v4 error:&v16];
        v12 = v16;
        if (v11)
        {
          v15 = 0;
          v13 = [v7 closeAndReturnError:&v15];
          v14 = v15;
          if ((v13 & 1) == 0 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            sub_10007D734();
          }
        }

        else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          sub_10007D6C4();
        }
      }

      else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_10007D654();
      }
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10007D7A4();
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10007D814();
  }
}

- (void)ingestTMAPPayloads:(id)payloads
{
  payloadsCopy = payloads;
  v4 = [[UARPComponentTag alloc] initWithString:@"TMAP"];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v25 = payloadsCopy;
  obj = [payloadsCopy payloads];
  v5 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v35;
    do
    {
      v8 = 0;
      do
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v34 + 1) + 8 * v8);
        payload4cc = [v9 payload4cc];
        v11 = [payload4cc isEqual:v4];

        if (v11)
        {
          payloadData = [v9 payloadData];
          if (payloadData)
          {
            v13 = objc_opt_class();
            v14 = objc_opt_class();
            v15 = objc_opt_class();
            v16 = [NSSet setWithObjects:v13, v14, v15, objc_opt_class(), 0];
            v31 = 0;
            v17 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v16 fromData:payloadData error:&v31];
            v18 = v31;
            if (v17)
            {
              v19 = 0;
              goto LABEL_13;
            }

            v30 = 0;
            v17 = [NSPropertyListSerialization propertyListWithData:payloadData options:0 format:0 error:&v30];
            v20 = v30;
            v19 = v20;
            if (v17)
            {
LABEL_13:
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v17 = v17;
                log = self->_log;
                if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v39 = v17;
                  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "TMAP: %@", buf, 0xCu);
                }

                [(UARPHostManager *)self addTmapMapping:v17];
              }

              else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
              {
                sub_10007D884(&v28, v29);
              }
            }

            else if (v20)
            {
              v22 = self->_log;
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v39 = v18;
                _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "TMAP Data could not be serialized; error: %@", buf, 0xCu);
              }
            }

            else if (v18)
            {
              v23 = self->_log;
              if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v39 = v18;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "TMAP Data could not be unarchived; error: %@", buf, 0xCu);
              }
            }
          }

          else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            sub_10007D8C0(&v32, v33);
          }
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v24 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
      v6 = v24;
    }

    while (v24);
  }

  [(UARPHostManager *)self flushTMAPDatabase];
}

- (BOOL)addTmapMapping:(id)mapping
{
  mappingCopy = mapping;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Adding TMAP Mapping", buf, 2u);
  }

  v6 = [mappingCopy objectForKeyedSubscript:@"AppleModelNumber"];
  v7 = [mappingCopy objectForKeyedSubscript:@"AppleModelNumbers"];
  if (!(v6 | v7))
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10007DA28();
    }

    goto LABEL_33;
  }

  v8 = v7;
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_10007D8FC();
      }

      goto LABEL_32;
    }

    if (!v8)
    {
      v8 = [[NSMutableArray alloc] initWithObjects:{v6, 0}];
      goto LABEL_14;
    }
  }

  else if (!v7)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v6)
    {
      [v8 addObject:v6];
      v9 = [NSSet setWithArray:v8];
      allObjects = [v9 allObjects];
      v11 = [allObjects mutableCopy];

      v8 = v11;
    }

LABEL_14:
    v12 = [mappingCopy objectForKeyedSubscript:@"Endian"];
    if (!v12)
    {
      v12 = @"BigEndian";
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_10007D974();
      }

      v16 = 0;
      goto LABEL_44;
    }

    v13 = [mappingCopy objectForKeyedSubscript:@"Events"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_10007D9B0();
      }

      v16 = 0;
      goto LABEL_43;
    }

    v14 = [(UARPHostManager *)self findTmapforAppleModel:v6];
    if (v14)
    {
      if ((MGGetBoolAnswer() & 1) == 0)
      {
        if ([v14 appendTmapEvents:v13 endian:v12])
        {
          v16 = 1;
        }

        else
        {
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            sub_10007D9EC();
          }

          v16 = 0;
        }

        goto LABEL_42;
      }

      [(NSMutableArray *)self->_tmapDatabase removeObject:v14];
    }

    v15 = [[UARPMappedAnalyticsDatabaseEntry alloc] initWithEvents:v13 appleModelNumbers:v8 endian:v12];
    v16 = v15 != 0;
    v17 = self->_log;
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
    if (v15)
    {
      if (v18)
      {
        *buf = 138412290;
        v21 = v6;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Adding TMAP for Apple Model Number: %@", buf, 0xCu);
      }

      [(NSMutableArray *)self->_tmapDatabase addObject:v15];
    }

    else if (v18)
    {
      *buf = 138412290;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Coul not create TMAP mapping for Apple Model Numbers %@", buf, 0xCu);
    }

LABEL_42:
LABEL_43:

LABEL_44:
    goto LABEL_45;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10007D938();
  }

LABEL_32:

LABEL_33:
  v16 = 0;
LABEL_45:

  return v16;
}

- (id)findTmapforAppleModel:(id)model
{
  modelCopy = model;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_tmapDatabase;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isEqualAppleModel:{modelCopy, v11}])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)processMTIC:(id)c
{
  tmapDatabase = self->_tmapDatabase;
  cCopy = c;
  v6 = [NSArray arrayWithArray:tmapDatabase];
  [(UARPHostManager *)self commonProcessMTIC:cCopy tmapSnapshot:v6];
}

- (void)asyncProcessMTIC:(id)c
{
  cCopy = c;
  v5 = [NSArray arrayWithArray:self->_tmapDatabase];
  mticQueue = self->_mticQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100014AE4;
  block[3] = &unk_1000B8B28;
  block[4] = self;
  v10 = cCopy;
  v11 = v5;
  v7 = v5;
  v8 = cCopy;
  dispatch_async(mticQueue, block);
}

- (void)commonProcessMTIC:(id)c tmapSnapshot:(id)snapshot
{
  cCopy = c;
  snapshotCopy = snapshot;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = 136315138;
    v16 = "[UARPHostManager commonProcessMTIC:tmapSnapshot:]";
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Processing MTIC Asset", &v15, 0xCu);
  }

  v9 = objc_alloc_init(UARPAssetMTIC);
  if (v9)
  {
    v10 = [[UARPSuperBinaryLayer3 alloc] initWithURL:cCopy assetUUID:0 tmpFolderPath:self->_tempFolderPath];
    v11 = v10;
    if (v10)
    {
      if ([(UARPSuperBinaryLayer3 *)v10 expandSuperBinaryHeadersAndMetaData])
      {
        if ([(UARPAssetMTIC *)v9 processAsset:v11 tmapSnapshot:snapshotCopy])
        {
          [(UARPAssetMTIC *)v9 postToCoreAnalytics];
          [(UARPAssetMTIC *)v9 prepareForSysdiagnose:self->_sysdiagnoseFolder];
LABEL_17:

          goto LABEL_18;
        }

        v13 = self->_log;
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          goto LABEL_17;
        }

        v15 = 136315138;
        v16 = "[UARPHostManager commonProcessMTIC:tmapSnapshot:]";
        v14 = "%s: Unable to decompose MTIC";
      }

      else
      {
        v13 = self->_log;
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          goto LABEL_17;
        }

        v15 = 136315138;
        v16 = "[UARPHostManager commonProcessMTIC:tmapSnapshot:]";
        v14 = "%s: Unable to expand MTIC asset for processing";
      }
    }

    else
    {
      v13 = self->_log;
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        goto LABEL_17;
      }

      v15 = 136315138;
      v16 = "[UARPHostManager commonProcessMTIC:tmapSnapshot:]";
      v14 = "%s: Unable to init MTIC asset for processing";
    }

    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, v14, &v15, 0xCu);
    goto LABEL_17;
  }

  v12 = self->_log;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v15 = 136315138;
    v16 = "[UARPHostManager commonProcessMTIC:tmapSnapshot:]";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s: Unable to init mtic", &v15, 0xCu);
  }

LABEL_18:
}

- (BOOL)prepareCachingAsset:(id)asset
{
  assetCopy = asset;
  uUIDString = [assetCopy UUIDString];
  v6 = [NSString stringWithFormat:@"%@.uarp", uUIDString];

  v7 = objc_opt_new();
  [v7 addObject:self->_cachedAssetsFolder];
  [v7 addObject:v6];
  v8 = [NSURL fileURLWithPathComponents:v7];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v10 = log;
    uUIDString2 = [assetCopy UUIDString];
    path = [v8 path];
    *buf = 138412546;
    v21 = uUIDString2;
    v22 = 2112;
    v23 = path;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Caching Controller Asset <%@> to %@", buf, 0x16u);
  }

  v13 = +[NSFileManager defaultManager];
  path2 = [v8 path];
  v15 = [v13 createFileAtPath:path2 contents:0 attributes:0];

  if (v15)
  {
    v16 = [[UARPSuperBinaryLayer3 alloc] initWithURL:v8 assetUUID:assetCopy tmpFolderPath:0];
    v17 = v16 != 0;
    if (v16)
    {
      [(NSMutableSet *)self->_cachingAssets addObject:v16];
    }

    else
    {
      v18 = self->_log;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10007DB1C(v18);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10007DA64();
    }

    v17 = 0;
  }

  return v17;
}

- (BOOL)appendDataToCachingAsset:(id)asset data:(id)data
{
  assetCopy = asset;
  dataCopy = data;
  v8 = [(UARPHostManager *)self findCachingAssetByUUID:assetCopy];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 url];
    v24 = 0;
    v11 = [NSFileHandle fileHandleForWritingToURL:v10 error:&v24];
    v12 = v24;

    if (v11)
    {
      v23 = 0;
      v13 = [v11 seekToEndReturningOffset:0 error:&v23];
      v14 = v23;
      if (v13)
      {
        v22 = 0;
        v15 = [v11 writeData:dataCopy error:&v22];
        v16 = v22;
        if (v15)
        {
          v21 = 0;
          v17 = [v11 closeAndReturnError:&v21];
          v18 = v21;
          if ((v17 & 1) == 0 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            sub_10007DCAC();
          }
        }

        else
        {
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            sub_10007DC30();
          }

          v17 = 0;
        }
      }

      else
      {
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          sub_10007DBB4();
        }

        v17 = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_10007DD28();
      }

      v17 = 0;
    }
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10007DDD4(log);
    }

    [(UARPHostManager *)self showAllAssets];
    v17 = 0;
  }

  return v17;
}

- (BOOL)finalizeTransferCachingAsset:(id)asset hashData:(id)data error:(id *)error
{
  assetCopy = asset;
  dataCopy = data;
  v10 = [(UARPHostManager *)self urlForCachingAsset:assetCopy];
  if (!v10)
  {
LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v11 = [(UARPHostManager *)self verifyHash:dataCopy url:v10 error:error];
  v12 = os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR);
  if ((v11 & 1) == 0)
  {
    if (v12)
    {
      sub_10007DE6C();
    }

    goto LABEL_8;
  }

  if (v12)
  {
    sub_10007DF24();
  }

  v13 = 1;
LABEL_9:

  return v13;
}

- (id)urlForCachingAsset:(id)asset
{
  assetCopy = asset;
  v5 = [(UARPHostManager *)self findCachingAssetByUUID:assetCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 url];
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10007DDD4(log);
    }

    [(UARPHostManager *)self showAllAssets];
    v7 = 0;
  }

  return v7;
}

- (id)dataRangeFromDynamicAsset:(id)asset range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  assetCopy = asset;
  v21 = 0;
  v8 = [NSFileHandle fileHandleForReadingFromURL:assetCopy error:&v21];
  v9 = v21;
  if (v8)
  {
    v20 = 0;
    v10 = [v8 seekToOffset:location error:&v20];
    v11 = v20;
    if (v10)
    {
      v19 = 0;
      v12 = [v8 readDataUpToLength:length error:&v19];
      v13 = v19;
      if (v12)
      {
        v18 = 0;
        v14 = [v8 closeAndReturnError:&v18];
        v15 = v18;
        if (v14)
        {
          v16 = v12;
        }

        else
        {
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            sub_10007E058();
          }

          v16 = 0;
        }
      }

      else
      {
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          sub_10007E0D4();
        }

        v16 = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_10007DFDC();
      }

      v16 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10007E150();
    }

    v16 = 0;
  }

  return v16;
}

- (BOOL)finalizeTransferDynamicAsset:(id)asset hashData:(id)data error:(id *)error
{
  assetCopy = asset;
  v9 = [(UARPHostManager *)self verifyHash:data url:assetCopy error:error];
  log = self->_log;
  v11 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
  if (v9)
  {
    if (v11)
    {
      sub_10007E278(assetCopy, log);
    }
  }

  else if (v11)
  {
    sub_10007E1D0(assetCopy, log);
  }

  return v9;
}

- (id)urlForDynamicAsset:(id)asset
{
  assetCopy = asset;
  v5 = [(UARPHostManager *)self findDynamicAssetByUUID:assetCopy];
  v6 = v5;
  if (v5)
  {
    superbinaryURL = [v5 superbinaryURL];
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10007E320(log);
    }

    [(UARPHostManager *)self showAllAssets];
    superbinaryURL = 0;
  }

  return superbinaryURL;
}

- (BOOL)verifyHash:(id)hash url:(id)url error:(id *)error
{
  hashCopy = hash;
  urlCopy = url;
  v9 = [NSFileHandle fileHandleForReadingFromURL:urlCopy error:error];
  if (v9)
  {
    memset(&v18, 0, sizeof(v18));
    CC_SHA512_Init(&v18);
    do
    {
      v10 = objc_autoreleasePoolPush();
      v11 = [v9 readDataUpToLength:4096 error:error];
      v12 = [v11 length];
      CC_SHA512_Update(&v18, [v11 bytes], objc_msgSend(v11, "length"));

      objc_autoreleasePoolPop(v10);
    }

    while (v12 >= 0x1000 && v11);
    v13 = [v9 closeAndReturnError:error];
    v14 = 0;
    v15 = v12 > 0xFFF && v11 == 0;
    if (!v15 && v13)
    {
      CC_SHA512_Final(md, &v18);
      v16 = [NSData dataWithBytes:md length:64];
      v14 = [v16 isEqualToData:hashCopy];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)registerForNotifications
{
  if (notify_register_check("com.apple.accessoryUpdater.uarp.firmareUpdateApplied", &self->_notifyTokenFirmwareUpdate))
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10007E3B8();
    }

    self->_notifyTokenFirmwareUpdate = -1;
  }

  if (notify_register_check("com.apple.accessoryUpdater.uarp.urgentFirmwareUpdateApplied", &self->_notifyTokenUrgentFirmwareUpdate))
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10007E448();
    }

    self->_notifyTokenUrgentFirmwareUpdate = -1;
  }
}

- (void)postNotificationFirmwareUpdate
{
  notifyTokenFirmwareUpdate = self->_notifyTokenFirmwareUpdate;
  if (notifyTokenFirmwareUpdate != -1)
  {
    notify_set_state(notifyTokenFirmwareUpdate, 1uLL);

    notify_post("com.apple.accessoryUpdater.uarp.firmareUpdateApplied");
  }
}

- (void)postNotificationUrgentFirmwareUpdate
{
  notifyTokenUrgentFirmwareUpdate = self->_notifyTokenUrgentFirmwareUpdate;
  if (notifyTokenUrgentFirmwareUpdate != -1)
  {
    notify_set_state(notifyTokenUrgentFirmwareUpdate, 0);

    notify_post("com.apple.accessoryUpdater.uarp.urgentFirmwareUpdateApplied");
  }
}

@end