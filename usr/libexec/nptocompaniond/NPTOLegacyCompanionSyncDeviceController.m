@interface NPTOLegacyCompanionSyncDeviceController
- (NPTOLegacyCompanionSyncDeviceController)initWithDevice:(id)a3 service:(id)a4;
- (id)_libraryInfo;
- (id)exportAssetsQueue;
- (id)sendAssetsQueue;
- (void)_beginSync;
- (void)_cancelPendingExportAndSendAssets;
- (void)_endSync;
- (void)_exportAsset:(id)a3 forDevice:(id)a4 completionHandler:(id)a5;
- (void)_handleSyncNeededRequest:(id)a3;
- (void)_handleSyncResponse:(id)a3;
- (void)_scheduleExportAndSendAssets:(id)a3 context:(id)a4;
- (void)_scheduleSync;
- (void)_sendAssetResourceAtURL:(id)a3 metadata:(id)a4 identifier:(id)a5 completionHandler:(id)a6;
- (void)controllerDidInvalidateContent:(id)a3;
- (void)pause;
- (void)resume;
- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4;
- (void)syncCoordinator:(id)a3 didInvalidateSyncSession:(id)a4;
- (void)syncCoordinatorDidChangeSyncRestriction:(id)a3;
@end

@implementation NPTOLegacyCompanionSyncDeviceController

- (NPTOLegacyCompanionSyncDeviceController)initWithDevice:(id)a3 service:(id)a4
{
  v7 = a3;
  v8 = a4;
  v29.receiver = self;
  v29.super_class = NPTOLegacyCompanionSyncDeviceController;
  v9 = [(NPTOLegacyCompanionSyncDeviceController *)&v29 init];
  if (v9)
  {
    v10 = sub_10000268C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v31 = "[NPTOLegacyCompanionSyncDeviceController initWithDevice:service:]";
      v32 = 2080;
      v33 = "/Library/Caches/com.apple.xbs/Sources/NanoPhotos/NanoPhotosSync/Legacy/NPTOLegacyCompanionSyncDeviceController.m";
      v34 = 1024;
      v35 = 70;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
    }

    objc_storeStrong(&v9->_device, a3);
    objc_storeStrong(&v9->_service, a4);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.nptocompaniond.sync", v11);
    syncQueue = v9->_syncQueue;
    v9->_syncQueue = v12;

    if ([v7 relationship])
    {
      v14 = [PSYSyncCoordinator syncCoordinatorWithServiceName:@"com.apple.pairedsync.nptocompaniond"];
      syncCoordinator = v9->_syncCoordinator;
      v9->_syncCoordinator = v14;
    }

    v16 = [[NMSMessageCenter alloc] initWithDevice:v7 service:v8];
    messageCenter = v9->_messageCenter;
    v9->_messageCenter = v16;

    [(NMSMessageCenter *)v9->_messageCenter setDelegate:v9];
    v18 = v9->_messageCenter;
    v19 = objc_opt_class();
    [(NMSMessageCenter *)v18 mapPBRequest:v19 toResponse:objc_opt_class() messageID:8];
    [(NMSMessageCenter *)v9->_messageCenter addResponseHandler:"_handleSyncResponse:" forMessageID:8];
    [(NMSMessageCenter *)v9->_messageCenter addRequestHandler:"_handleSyncNeededRequest:" forMessageID:10];
    if (_os_feature_enabled_impl() && ![(IDSDevice *)v9->_device isTinkerPaired])
    {
      v20 = objc_alloc_init(NPTOWatchAssetsImportController);
      watchAssetsImportController = v9->_watchAssetsImportController;
      v9->_watchAssetsImportController = v20;

      [(NMSMessageCenter *)v9->_messageCenter addIncomingFileHandler:"_handleIncomingAssetResource:" forMessageID:9];
    }

    objc_initWeak(buf, v9);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000562CC;
    v26[3] = &unk_10008B618;
    objc_copyWeak(&v28, buf);
    v22 = v9;
    v27 = v22;
    v23 = [NPTOFirstUnlockProtection performBlockAfterFirstUnlock:v26];
    initFirstUnlockCancellable = v22->_initFirstUnlockCancellable;
    v22->_initFirstUnlockCancellable = v23;

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }

  return v9;
}

- (void)resume
{
  v3 = sub_10000268C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v9 = "[NPTOLegacyCompanionSyncDeviceController resume]";
    v10 = 2080;
    v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPhotos/NanoPhotosSync/Legacy/NPTOLegacyCompanionSyncDeviceController.m";
    v12 = 1024;
    v13 = 109;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  objc_initWeak(buf, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000564D8;
  v6[3] = &unk_10008B1C0;
  objc_copyWeak(&v7, buf);
  v4 = [NPTOFirstUnlockProtection performBlockAfterFirstUnlock:v6];
  resumeFirstUnlockCancellable = self->_resumeFirstUnlockCancellable;
  self->_resumeFirstUnlockCancellable = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

- (void)pause
{
  v3 = sub_10000268C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315650;
    v6 = "[NPTOLegacyCompanionSyncDeviceController pause]";
    v7 = 2080;
    v8 = "/Library/Caches/com.apple.xbs/Sources/NanoPhotos/NanoPhotosSync/Legacy/NPTOLegacyCompanionSyncDeviceController.m";
    v9 = 1024;
    v10 = 125;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v5, 0x1Cu);
  }

  resumeFirstUnlockCancellable = self->_resumeFirstUnlockCancellable;
  self->_resumeFirstUnlockCancellable = 0;
}

- (void)controllerDidInvalidateContent:(id)a3
{
  v4 = sub_10000268C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315650;
    v6 = "[NPTOLegacyCompanionSyncDeviceController controllerDidInvalidateContent:]";
    v7 = 2080;
    v8 = "/Library/Caches/com.apple.xbs/Sources/NanoPhotos/NanoPhotosSync/Legacy/NPTOLegacyCompanionSyncDeviceController.m";
    v9 = 1024;
    v10 = 133;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v5, 0x1Cu);
  }

  [(NPTOLegacyCompanionSyncDeviceController *)self _scheduleSync];
}

- (void)_scheduleSync
{
  v3 = sub_10000268C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v11 = "[NPTOLegacyCompanionSyncDeviceController _scheduleSync]";
    v12 = 2080;
    v13 = "/Library/Caches/com.apple.xbs/Sources/NanoPhotos/NanoPhotosSync/Legacy/NPTOLegacyCompanionSyncDeviceController.m";
    v14 = 1024;
    v15 = 142;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  v4 = [[NPTOTransaction alloc] initWithDescription:@"com.apple.nptocompaniond.sync"];
  syncTransaction = self->_syncTransaction;
  self->_syncTransaction = v4;

  v6 = self->_lastSyncRequest + 1;
  self->_lastSyncRequest = v6;
  v7 = dispatch_time(0, 1000000000);
  syncQueue = self->_syncQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100056848;
  v9[3] = &unk_10008B6D8;
  v9[4] = self;
  v9[5] = v6;
  dispatch_after(v7, syncQueue, v9);
}

- (void)_beginSync
{
  v3 = sub_10000268C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315650;
    v16 = "[NPTOLegacyCompanionSyncDeviceController _beginSync]";
    v17 = 2080;
    v18 = "/Library/Caches/com.apple.xbs/Sources/NanoPhotos/NanoPhotosSync/Legacy/NPTOLegacyCompanionSyncDeviceController.m";
    v19 = 1024;
    v20 = 165;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v15, 0x1Cu);
  }

  dispatch_assert_queue_V2(self->_syncQueue);
  contentController = self->_contentController;
  if (!contentController)
  {
    v5 = [[NPTOCompanionSyncDeviceContentController alloc] initWithDevice:self->_device];
    v6 = self->_contentController;
    self->_contentController = v5;

    [(NPTOCompanionSyncDeviceContentController *)self->_contentController setDelegate:self];
    contentController = self->_contentController;
  }

  v7 = [(NPTOCompanionSyncDeviceContentController *)contentController composeSyncRequest];
  syncRequest = self->_syncRequest;
  self->_syncRequest = v7;

  v9 = [(NPTOSyncRequest *)self->_syncRequest npto_libraryCollectionTargetMap];
  v10 = [(NPTOLegacyCompanionSyncDeviceController *)self _libraryInfo];
  [v10 setCollectionTargetMap:v9];

  syncCoordinator = self->_syncCoordinator;
  if (syncCoordinator && [(PSYSyncCoordinator *)syncCoordinator syncRestriction])
  {
    v12 = sub_10000268C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Sync restriction in place, bailing", &v15, 2u);
    }

    syncTransaction = self->_syncTransaction;
    self->_syncTransaction = 0;
  }

  else
  {
    syncTransaction = [NMSOutgoingRequest requestWithMessageID:8];
    [syncTransaction setPbRequest:self->_syncRequest];
    [syncTransaction setPriority:2];
    [syncTransaction setQueueOneIdentifier:@"sync-request"];
    v14 = IDSMaxMessageTimeout;
    [syncTransaction setSendTimeout:IDSMaxMessageTimeout];
    [syncTransaction setResponseTimeout:v14];
    [(NMSMessageCenter *)self->_messageCenter sendRequest:syncTransaction];
  }
}

- (void)_endSync
{
  v3 = sub_10000268C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315650;
    v6 = "[NPTOLegacyCompanionSyncDeviceController _endSync]";
    v7 = 2080;
    v8 = "/Library/Caches/com.apple.xbs/Sources/NanoPhotos/NanoPhotosSync/Legacy/NPTOLegacyCompanionSyncDeviceController.m";
    v9 = 1024;
    v10 = 203;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v5, 0x1Cu);
  }

  dispatch_assert_queue_V2(self->_syncQueue);
  [(NPTOLegacyCompanionSyncDeviceController *)self _cancelPendingExportAndSendAssets];
  syncTransaction = self->_syncTransaction;
  self->_syncTransaction = 0;
}

- (void)_handleSyncResponse:(id)a3
{
  v4 = a3;
  v5 = sub_10000268C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v17 = "[NPTOLegacyCompanionSyncDeviceController _handleSyncResponse:]";
    v18 = 2080;
    v19 = "/Library/Caches/com.apple.xbs/Sources/NanoPhotos/NanoPhotosSync/Legacy/NPTOLegacyCompanionSyncDeviceController.m";
    v20 = 1024;
    v21 = 216;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  v6 = [(NMSMessageCenter *)self->_messageCenter actionQ];
  dispatch_assert_queue_V2(v6);

  v7 = [NPTOTransaction alloc];
  v8 = [v4 context];
  v9 = [(NPTOTransaction *)v7 initWithDescription:@"com.apple.nptocompaniond.sync-response" userInfo:0 context:v8];

  syncQueue = self->_syncQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100056D78;
  block[3] = &unk_10008B700;
  block[4] = self;
  v14 = v4;
  v15 = v9;
  v11 = v9;
  v12 = v4;
  dispatch_async(syncQueue, block);
}

- (void)_handleSyncNeededRequest:(id)a3
{
  v4 = a3;
  v5 = sub_10000268C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v15 = "[NPTOLegacyCompanionSyncDeviceController _handleSyncNeededRequest:]";
    v16 = 2080;
    v17 = "/Library/Caches/com.apple.xbs/Sources/NanoPhotos/NanoPhotosSync/Legacy/NPTOLegacyCompanionSyncDeviceController.m";
    v18 = 1024;
    v19 = 253;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  v6 = [(NMSMessageCenter *)self->_messageCenter actionQ];
  dispatch_assert_queue_V2(v6);

  v7 = [NPTOTransaction alloc];
  v8 = [v4 context];

  v9 = [(NPTOTransaction *)v7 initWithDescription:@"com.apple.nptocompaniond.sync-needed-request" userInfo:0 context:v8];
  syncQueue = self->_syncQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000571E4;
  v12[3] = &unk_10008B1E8;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  dispatch_async(syncQueue, v12);
}

- (id)exportAssetsQueue
{
  exportAssetsQueue = self->_exportAssetsQueue;
  if (!exportAssetsQueue)
  {
    v4 = objc_alloc_init(NSOperationQueue);
    v5 = self->_exportAssetsQueue;
    self->_exportAssetsQueue = v4;

    [(NSOperationQueue *)self->_exportAssetsQueue setName:@"com.apple.nptocompaniond.export-assets-queue"];
    [(NSOperationQueue *)self->_exportAssetsQueue setMaxConcurrentOperationCount:3];
    exportAssetsQueue = self->_exportAssetsQueue;
  }

  return exportAssetsQueue;
}

- (id)sendAssetsQueue
{
  sendAssetsQueue = self->_sendAssetsQueue;
  if (!sendAssetsQueue)
  {
    v4 = objc_alloc_init(NSOperationQueue);
    v5 = self->_sendAssetsQueue;
    self->_sendAssetsQueue = v4;

    [(NSOperationQueue *)self->_sendAssetsQueue setName:@"com.apple.nptocompaniond.send-assets-queue"];
    [(NSOperationQueue *)self->_sendAssetsQueue setMaxConcurrentOperationCount:2];
    sendAssetsQueue = self->_sendAssetsQueue;
  }

  return sendAssetsQueue;
}

- (void)_cancelPendingExportAndSendAssets
{
  v3 = sub_10000268C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[NPTOLegacyCompanionSyncDeviceController _cancelPendingExportAndSendAssets]";
    v10 = 2080;
    v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPhotos/NanoPhotosSync/Legacy/NPTOLegacyCompanionSyncDeviceController.m";
    v12 = 1024;
    v13 = 285;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v8, 0x1Cu);
  }

  dispatch_assert_queue_V2(self->_syncQueue);
  v4 = [(NPTOLegacyCompanionSyncDeviceController *)self exportAssetsQueue];
  [v4 cancelAllOperations];

  v5 = [(NPTOLegacyCompanionSyncDeviceController *)self sendAssetsQueue];
  [v5 cancelAllOperations];

  v6 = [(NPTOLegacyCompanionSyncDeviceController *)self exportAssetsQueue];
  [v6 waitUntilAllOperationsAreFinished];

  v7 = [(NPTOLegacyCompanionSyncDeviceController *)self sendAssetsQueue];
  [v7 waitUntilAllOperationsAreFinished];
}

- (void)_scheduleExportAndSendAssets:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10000268C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "[NPTOLegacyCompanionSyncDeviceController _scheduleExportAndSendAssets:context:]";
    *&buf[12] = 2080;
    *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/NanoPhotos/NanoPhotosSync/Legacy/NPTOLegacyCompanionSyncDeviceController.m";
    *&buf[22] = 1024;
    LODWORD(v36) = 295;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  dispatch_assert_queue_V2(self->_syncQueue);
  v9 = [NSMutableSet setWithArray:v6];
  v10 = +[NSMutableSet set];
  v11 = +[NSMutableSet set];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v36 = sub_100057748;
  v37 = sub_100057758;
  v38 = 0;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100057760;
  v29[3] = &unk_10008B750;
  v29[4] = self;
  v12 = v9;
  v30 = v12;
  v13 = v10;
  v31 = v13;
  v34 = buf;
  v14 = v11;
  v32 = v14;
  v15 = v6;
  v33 = v15;
  v16 = objc_retainBlock(v29);
  v17 = +[NRPairedDeviceRegistry sharedInstance];
  v18 = [v17 deviceForIDSDevice:self->_device];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100057B38;
  v23[3] = &unk_10008B7F0;
  v19 = v7;
  v24 = v19;
  v25 = self;
  v20 = v15;
  v26 = v20;
  v21 = v18;
  v27 = v21;
  v22 = v16;
  v28 = v22;
  [v20 enumerateObjectsUsingBlock:v23];

  _Block_object_dispose(buf, 8);
}

- (void)_exportAsset:(id)a3 forDevice:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  contentController = self->_contentController;
  v12 = [v8 localIdentifier];
  v13 = [(NPTOCompanionSyncDeviceContentController *)contentController assetForLocalIdentifier:v12];

  if (v13)
  {
    [v13 npto_exportForDevice:v9 isUserInitiated:1 completionHandler:v10];
  }

  else
  {
    v22 = NSLocalizedDescriptionKey;
    v14 = [v8 localIdentifier];
    v15 = [NSString stringWithFormat:@"Could not find asset to export %@ %@", v14, v8];
    v23 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v17 = [NSError errorWithDomain:@"NanoPhotosErrorDomain" code:0 userInfo:v16];

    v18 = sub_10000268C();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [v17 localizedDescription];
      *buf = 138412290;
      v21 = v19;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    if (v10)
    {
      (*(v10 + 2))(v10, 0, 0, v17);
    }
  }
}

- (void)_sendAssetResourceAtURL:(id)a3 metadata:(id)a4 identifier:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(NMSOutgoingFile);
  [(NMSOutgoingFile *)v14 setMessageID:9];
  [(NMSOutgoingFile *)v14 setURL:v13];

  [(NMSOutgoingFile *)v14 setMetadata:v12];
  [(NMSOutgoingFile *)v14 setQueueOneIdentifier:v11];

  [(NMSOutgoingFile *)v14 setUnlinkWhenSent:1];
  [(NMSMessageCenter *)self->_messageCenter sendFile:v14 completionHandler:v10];
}

- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10000268C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 serviceName];
    [v7 syncSessionType];
    v10 = NSStringfromPSYSyncSessionType();
    v11 = [v7 pairedDevice];
    v12 = [v11 valueForProperty:NRDevicePropertyName];
    v13 = 138412802;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Did receive syncCoordinator:beginSyncSession: from coordinator with service name: %@ and sync type: %@ for device: %@", &v13, 0x20u);
  }

  [(NPTOLegacyCompanionSyncDeviceController *)self _scheduleSync];
}

- (void)syncCoordinator:(id)a3 didInvalidateSyncSession:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_10000268C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 serviceName];
    v9 = [v6 pairedDevice];
    v10 = [v9 valueForProperty:NRDevicePropertyName];
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Did receive syncCoordinator:didInvalidateSyncSession: from coordinator with service name: %@ for device: %@", &v11, 0x16u);
  }
}

- (void)syncCoordinatorDidChangeSyncRestriction:(id)a3
{
  v4 = a3;
  v5 = sub_10000268C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "[NPTOLegacyCompanionSyncDeviceController syncCoordinatorDidChangeSyncRestriction:]";
    v9 = 2080;
    v10 = "/Library/Caches/com.apple.xbs/Sources/NanoPhotos/NanoPhotosSync/Legacy/NPTOLegacyCompanionSyncDeviceController.m";
    v11 = 1024;
    v12 = 459;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v7, 0x1Cu);
  }

  v6 = [v4 syncRestriction];
  if (v6)
  {
    [(NPTOLegacyCompanionSyncDeviceController *)self _endSync];
  }

  else
  {
    [(NPTOLegacyCompanionSyncDeviceController *)self _scheduleSync];
  }
}

- (id)_libraryInfo
{
  libraryInfo = self->_libraryInfo;
  if (!libraryInfo)
  {
    v4 = +[NRPairedDeviceRegistry sharedInstance];
    v5 = [v4 deviceForIDSDevice:self->_device];

    v6 = [[NPTOLibraryInfo alloc] initWithDevice:v5];
    v7 = self->_libraryInfo;
    self->_libraryInfo = v6;

    libraryInfo = self->_libraryInfo;
  }

  return libraryInfo;
}

@end