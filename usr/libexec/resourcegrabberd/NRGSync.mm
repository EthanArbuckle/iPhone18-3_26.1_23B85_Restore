@interface NRGSync
- (NRGSync)initWithDelegate:(id)delegate;
- (NRGSyncDelegate)delegate;
- (void)device:(id)device propertyDidChange:(id)change fromValue:(id)value;
- (void)performIconSync:(id)sync completion:(id)completion;
- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session;
- (void)syncIcons:(id)icons;
@end

@implementation NRGSync

- (NRGSync)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v30.receiver = self;
  v30.super_class = NRGSync;
  v5 = [(NRGSync *)&v30 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = dispatch_semaphore_create(0);
    startupSemaphore = v6->_startupSemaphore;
    v6->_startupSemaphore = v7;

    +[NSDate timeIntervalSinceReferenceDate];
    v10 = v9;
    v11 = dispatch_queue_create([@"com.apple.nanoresourcegrabber.sync" UTF8String], 0);
    syncQueue = v6->_syncQueue;
    v6->_syncQueue = v11;

    v13 = dispatch_queue_create("com.apple.nanoresourcegrabber.iconqueue", &_dispatch_queue_attr_concurrent);
    iconQueue = v6->_iconQueue;
    v6->_iconQueue = v13;

    v15 = [PSYSyncCoordinator syncCoordinatorWithServiceName:@"com.apple.pairedsync.nanoresourcegrabber"];
    pairedSyncCoordinator = v6->_pairedSyncCoordinator;
    v6->_pairedSyncCoordinator = v15;

    v17 = v6->_syncQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000077D4;
    block[3] = &unk_1000205D0;
    v29 = v6;
    dispatch_async(v17, block);
    v18 = v6->_startupSemaphore;
    v19 = dispatch_time(0, 500000000);
    v20 = dispatch_semaphore_wait(v18, v19);
    v21 = nrg_daemon_log();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      if (v22)
      {
        *buf = 0;
        v23 = "resourcegrabberd timed out blocking the daemon when checking for gizmo OS version and deleting icons";
        v24 = v21;
        v25 = 2;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
      }
    }

    else if (v22)
    {
      +[NSDate timeIntervalSinceReferenceDate];
      *buf = 134217984;
      v32 = v26 - v10;
      v23 = "resourcegrabberd startup blocked for %1.3f";
      v24 = v21;
      v25 = 12;
      goto LABEL_7;
    }
  }

  return v6;
}

- (void)device:(id)device propertyDidChange:(id)change fromValue:(id)value
{
  deviceCopy = device;
  v8 = NRDevicePropertySystemBuildVersion;
  if ([change isEqualToString:NRDevicePropertySystemBuildVersion])
  {
    v9 = [deviceCopy valueForProperty:v8];
    gizmoBuild = [(NRGSync *)self gizmoBuild];
    v11 = [gizmoBuild isEqualToString:v9];

    if (v11)
    {
      dispatch_semaphore_signal(self->_startupSemaphore);
    }

    else
    {
      v12 = nrg_framework_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        gizmoBuild2 = [(NRGSync *)self gizmoBuild];
        *buf = 138412546;
        v17 = gizmoBuild2;
        v18 = 2112;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "build has changed, old build is %@, new build is %@", buf, 0x16u);
      }

      if ([(PSYSyncCoordinator *)self->_pairedSyncCoordinator syncRestriction])
      {
        dispatch_semaphore_signal(self->_startupSemaphore);
        v14 = nrg_framework_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "sync not allowed", buf, 2u);
        }
      }

      else
      {
        v15 = nrg_framework_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "sync allowed", buf, 2u);
        }

        gizmoBuildPath();
      }
    }
  }
}

- (void)syncIcons:(id)icons
{
  iconsCopy = icons;
  v5 = +[NSDate date];
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = sub_1000081E0;
  v27[4] = sub_1000081F0;
  [@"com.apple.nanoresourcegrabber.sync" UTF8String];
  v28 = os_transaction_create();
  objc_initWeak(&location, self);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000081F8;
  v21[3] = &unk_100020808;
  v6 = v5;
  v22 = v6;
  v24 = v27;
  objc_copyWeak(&v25, &location);
  selfCopy = self;
  v7 = objc_retainBlock(v21);
  syncSessionType = [iconsCopy syncSessionType];
  if (!syncSessionType)
  {
    delegate = [(NRGSync *)self delegate];
    [delegate pairedSyncInProgress];

    v10 = nrg_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v18 = NRGGetActivePairedDevice();
      pairingID = [v18 pairingID];
      *buf = 138412290;
      v30 = pairingID;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "performing full sync, activeDevice = %@", buf, 0xCu);
    }

    goto LABEL_12;
  }

  if (syncSessionType == 1)
  {
    v13 = nrg_daemon_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = NRGGetActivePairedDevice();
      pairingID2 = [v14 pairingID];
      *buf = 138412290;
      v30 = pairingID2;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "performing reunion sync (aka quick watch switch), activeDevice = %@", buf, 0xCu);
    }

    delegate2 = [(NRGSync *)self delegate];
    [delegate2 deviceSwitched];
  }

  else if (syncSessionType == 2)
  {
    delegate3 = [(NRGSync *)self delegate];
    [delegate3 pairedSyncInProgress];

    v10 = nrg_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NRGGetActivePairedDevice();
      pairingID3 = [v11 pairingID];
      *buf = 138412290;
      v30 = pairingID3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "performing migration sync, activeDevice = %@", buf, 0xCu);
    }

LABEL_12:

    v20 = NRGGetActivePairedDeviceStorePath();
    [NRGResourceCache invalidatePairedDevice:v20];

    [(NRGSync *)self performIconSync:iconsCopy completion:v7];
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
  _Block_object_dispose(v27, 8);
}

- (void)performIconSync:(id)sync completion:(id)completion
{
  syncCopy = sync;
  completionCopy = completion;
  v7 = [[NRGFullSyncRequestOperation alloc] initWithRequest:0];
  v8 = +[NRGCompanionDaemon sharedInstance];
  [(NRGFullSyncRequestOperation *)v7 setDaemon:v8];

  v9 = nrg_daemon_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = syncCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "starting full sync %@", buf, 0xCu);
  }

  v10 = +[NanoResourceGrabber nrgIconVariants];
  [(NRGFullSyncRequestOperation *)v7 setIconVariants:v10];

  [(NRGFullSyncRequestOperation *)v7 setShouldReset:1];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100008610;
  v19[3] = &unk_100020830;
  v11 = syncCopy;
  v20 = v11;
  [(NRGFullSyncRequestOperation *)v7 setRequestSentHandler:v19];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000086C0;
  v16[3] = &unk_100020858;
  v12 = v11;
  v17 = v12;
  v13 = completionCopy;
  v18 = v13;
  [(NRGFullSyncRequestOperation *)v7 setCompletionHandler:v16];
  v14 = +[NRGCompanionDaemon sharedInstance];
  [v14 queueFullSyncRequestOperation:v7];

  v15 = nrg_framework_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "returning from full sync request", buf, 2u);
  }
}

- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session
{
  sessionCopy = session;
  v6 = nrg_daemon_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "received beginSyncSession: %@", &v7, 0xCu);
  }

  [(NRGSync *)self syncIcons:sessionCopy];
}

- (NRGSyncDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end