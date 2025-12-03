@interface MIBUShippingUpdateOperation
- (BOOL)_connectToWiFi;
- (BOOL)_downloadAssetFile;
- (BOOL)_extractAssetFile;
- (BOOL)_setupAssetFile;
- (BOOL)_startLocalFileServer;
- (MIBUShippingUpdateOperation)initWithDelegate:(id)delegate;
- (id)_assetRelativePathFromCatalog:(id)catalog assetPath:(id)path;
- (id)devicePingPayload;
- (void)_beginUpdate;
- (void)_cleanUp;
- (void)_endUpdate:(BOOL)update;
- (void)_resume;
- (void)_startWatchdogTimer;
- (void)_stopWatchdogTimer;
- (void)_terminateLocalFileServer;
- (void)clientControllerDidFailReceiving:(id)receiving error:(id)error;
- (void)clientControllerDidFinishAssembly:(id)assembly withStats:(id)stats;
- (void)clientControllerDidFinishReceive:(id)receive withStats:(id)stats;
- (void)clientControllerDidStartAssembly:(id)assembly;
- (void)clientControllerDidStartReceive:(id)receive;
- (void)downloadDidFinishForUpdate:(id)update;
- (void)installDidStartForUpdate:(id)update;
- (void)scanDidFinishWithResults:(id)results;
- (void)updateDidFinishWithError:(id)error;
@end

@implementation MIBUShippingUpdateOperation

- (MIBUShippingUpdateOperation)initWithDelegate:(id)delegate
{
  v9.receiver = self;
  v9.super_class = MIBUShippingUpdateOperation;
  v3 = [(MIBUOperation *)&v9 initWithDelegate:delegate];
  v4 = v3;
  if (v3)
  {
    [(MIBUOperation *)v3 setOpCode:4];
    [(MIBUShippingUpdateOperation *)v4 setSuController:0];
    [(MIBUShippingUpdateOperation *)v4 setError:0];
    [(MIBUShippingUpdateOperation *)v4 setTargetBuildVersion:0];
    [(MIBUShippingUpdateOperation *)v4 setTargetOSVersion:0];
    v5 = +[MIBUDeviceController sharedInstance];
    buildVersion = [v5 buildVersion];
    [(MIBUShippingUpdateOperation *)v4 setCurrentBuildVersion:buildVersion];

    [(MIBUShippingUpdateOperation *)v4 setTargetSUBundleSize:0];
    v7 = dispatch_semaphore_create(0);
    [(MIBUShippingUpdateOperation *)v4 setDownloadSem:v7];

    [(MIBUShippingUpdateOperation *)v4 setWatchdogTimer:0];
    [(MIBUShippingUpdateOperation *)v4 setMulticastClient:0];
    [(MIBUShippingUpdateOperation *)v4 setPacketConsumer:0];
    [(MIBUShippingUpdateOperation *)v4 setTcpPingInterval:&off_1000A9510];
    [(MIBUShippingUpdateOperation *)v4 setCountryCode:0];
    [(MIBUShippingUpdateOperation *)v4 setChannelName:&off_1000A7CC8];
    [(MIBUShippingUpdateOperation *)v4 setBand:&off_1000A7CC8];
    [(MIBUShippingUpdateOperation *)v4 setBandwidth:&off_1000A7CC8];
    [(MIBUShippingUpdateOperation *)v4 setWifiSSID:0];
    [(MIBUShippingUpdateOperation *)v4 setWifiChannel:&off_1000A7CC8];
    [(MIBUShippingUpdateOperation *)v4 setEnableRateAdapter:0];
  }

  return v4;
}

- (void)_resume
{
  objc_initWeak(&location, self);
  v3 = [[MIBUSUController alloc] initWithDelegate:self];
  [(MIBUShippingUpdateOperation *)self setSuController:v3];

  if ([(MIBUOperation *)self inProgress])
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100053084();
    }

    v4 = qword_1000B84A0;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [NSString stringWithFormat:@"already in progress resuming..."];;
      *buf = 138543618;
      selfCopy6 = self;
      v61 = 2114;
      v62 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
    }

    v6 = [MIBUDefaultPreferences objectForKey:@"PreviousOSVersion"];
    v7 = [MIBUDefaultPreferences objectForKey:@"TargetOSVersion"];
    [(MIBUShippingUpdateOperation *)self setTargetBuildVersion:v7];

    if (qword_1000B84A8[0] != -1)
    {
      sub_1000530AC();
    }

    v8 = qword_1000B84A0;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      currentBuildVersion = [(MIBUShippingUpdateOperation *)self currentBuildVersion];
      [(MIBUShippingUpdateOperation *)self targetBuildVersion];
      v50 = v49 = currentBuildVersion;
      v10 = [NSString stringWithFormat:@"Current build version: %@ target version: %@"];;
      *buf = 138543618;
      selfCopy6 = self;
      v61 = 2114;
      v62 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
    }

    if (!v6 || ([(MIBUShippingUpdateOperation *)self targetBuildVersion], v11 = objc_claimAutoreleasedReturnValue(), v12 = v11 == 0, v11, v12))
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_100053124();
      }

      v33 = qword_1000B84A0;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [NSString stringWithFormat:@"cancelling previously started operation..."];
        *buf = 138543618;
        selfCopy6 = self;
        v61 = 2114;
        v62 = v34;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
      }

      suController = [(MIBUShippingUpdateOperation *)self suController];
      [suController forcePurge];

      v54 = 0;
      sub_100016130(&v54, 67108870, 0, @"Software update operation cancelled", v36, v37, v38, v39, v49);
      v19 = v54;
    }

    else
    {
      currentBuildVersion2 = [(MIBUShippingUpdateOperation *)self currentBuildVersion];
      targetBuildVersion = [(MIBUShippingUpdateOperation *)self targetBuildVersion];
      v15 = [currentBuildVersion2 isEqualToString:targetBuildVersion];

      if (v15)
      {
        if (qword_1000B84A8[0] != -1)
        {
          sub_1000530FC();
        }

        v16 = qword_1000B84A0;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          currentBuildVersion3 = [(MIBUShippingUpdateOperation *)self currentBuildVersion];
          v18 = [NSString stringWithFormat:@"OS updated from %@ to %@, update successful", v6, currentBuildVersion3];
          *buf = 138543618;
          selfCopy6 = self;
          v61 = 2114;
          v62 = v18;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
        }

        v19 = 0;
      }

      else
      {
        if (qword_1000B84A8[0] != -1)
        {
          sub_1000530D4();
        }

        v40 = qword_1000B84A0;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          currentBuildVersion4 = [(MIBUShippingUpdateOperation *)self currentBuildVersion];
          targetBuildVersion2 = [(MIBUShippingUpdateOperation *)self targetBuildVersion];
          v48 = [NSString stringWithFormat:@"Current build version %@ != %@, update failed", currentBuildVersion4, targetBuildVersion2];
          *buf = 138543618;
          selfCopy6 = self;
          v61 = 2114;
          v62 = v48;
          _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@", buf, 0x16u);
        }

        v55 = 0;
        currentBuildVersion5 = [(MIBUShippingUpdateOperation *)self currentBuildVersion];
        targetBuildVersion3 = [(MIBUShippingUpdateOperation *)self targetBuildVersion];
        sub_100016130(&v55, 0x4000000, 0, @"Current os version %@ != %@, update failed", v42, v43, v44, v45, currentBuildVersion5);
        v19 = v55;
      }
    }

    [(MIBUShippingUpdateOperation *)self setError:v19];
    [(MIBUShippingUpdateOperation *)self _terminateNow];
  }

  else
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005305C();
    }

    v20 = qword_1000B84A0;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      currentBuildVersion6 = [(MIBUShippingUpdateOperation *)self currentBuildVersion];
      v22 = [NSString stringWithFormat:@"starting operation from %@...", currentBuildVersion6];
      *buf = 138543618;
      selfCopy6 = self;
      v61 = 2114;
      v62 = v22;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
    }

    v23 = +[MIBUDataCollector sharedInstance];
    v57[0] = @"BatteryLevel";
    v24 = +[MIBUDeviceController sharedInstance];
    getBatteryLevel = [v24 getBatteryLevel];
    v58[0] = getBatteryLevel;
    v57[1] = @"CurrentOSVersion";
    v26 = +[MIBUDeviceController sharedInstance];
    osVersion = [v26 osVersion];
    v58[1] = osVersion;
    v57[2] = @"CurrentBuildVersion";
    v28 = +[MIBUDeviceController sharedInstance];
    buildVersion = [v28 buildVersion];
    v58[2] = buildVersion;
    v30 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:3];
    [v23 addKeyEvent:@"SSUStart" additionalData:v30];

    v31 = +[MIBUWiFiHelper sharedInstance];
    [v31 setCollectMetrics:1];

    [(MIBUOperation *)self saveOpCode];
    v32 = dispatch_get_global_queue(33, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000064E4;
    block[3] = &unk_100099458;
    objc_copyWeak(&v53, &location);
    dispatch_async(v32, block);

    objc_destroyWeak(&v53);
  }

  objc_destroyWeak(&location);
}

- (void)scanDidFinishWithResults:(id)results
{
  resultsCopy = results;
  syncQueue = [(MIBUOperation *)self syncQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000065E0;
  v7[3] = &unk_100099480;
  v8 = resultsCopy;
  selfCopy = self;
  v6 = resultsCopy;
  dispatch_async(syncQueue, v7);
}

- (void)downloadDidFinishForUpdate:(id)update
{
  syncQueue = [(MIBUOperation *)self syncQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006740;
  block[3] = &unk_1000994A8;
  block[4] = self;
  dispatch_async(syncQueue, block);
}

- (void)installDidStartForUpdate:(id)update
{
  updateCopy = update;
  syncQueue = [(MIBUOperation *)self syncQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006838;
  v7[3] = &unk_100099480;
  v7[4] = self;
  v8 = updateCopy;
  v6 = updateCopy;
  dispatch_async(syncQueue, v7);
}

- (void)updateDidFinishWithError:(id)error
{
  errorCopy = error;
  syncQueue = [(MIBUOperation *)self syncQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006B94;
  v7[3] = &unk_100099480;
  v8 = errorCopy;
  selfCopy = self;
  v6 = errorCopy;
  dispatch_async(syncQueue, v7);
}

- (void)clientControllerDidStartReceive:(id)receive
{
  receiveCopy = receive;
  if (qword_1000B84A8[0] != -1)
  {
    sub_100053188();
  }

  v4 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Started receiving asset over multicast", v6, 2u);
  }

  v5 = +[MIBUDataCollector sharedInstance];
  [v5 addKeyEvent:@"SSUDownloadUpdateStart"];
}

- (void)clientControllerDidFinishReceive:(id)receive withStats:(id)stats
{
  receiveCopy = receive;
  statsCopy = stats;
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005319C();
  }

  v7 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finished receiving asset over multicast", v9, 2u);
  }

  v8 = +[MIBUDataCollector sharedInstance];
  [v8 addKeyEvent:@"SSUDownloadUpdateEnd" additionalData:statsCopy];
}

- (void)clientControllerDidFailReceiving:(id)receiving error:(id)error
{
  receivingCopy = receiving;
  errorCopy = error;
  if (qword_1000B84A8[0] != -1)
  {
    sub_1000531B0();
  }

  v8 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = errorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed receiving asset over multicast: %{public}@", &v10, 0xCu);
  }

  [(MIBUShippingUpdateOperation *)self setError:errorCopy];
  [(MIBUShippingUpdateOperation *)self _connectToWiFi];
  downloadSem = [(MIBUShippingUpdateOperation *)self downloadSem];
  dispatch_semaphore_signal(downloadSem);
}

- (void)clientControllerDidStartAssembly:(id)assembly
{
  assemblyCopy = assembly;
  if (qword_1000B84A8[0] != -1)
  {
    sub_1000531C4();
  }

  v4 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Started assembling asset file.", v6, 2u);
  }

  v5 = +[MIBUDataCollector sharedInstance];
  [v5 addKeyEvent:@"SSUAssembleUpdateStart"];
}

- (void)clientControllerDidFinishAssembly:(id)assembly withStats:(id)stats
{
  assemblyCopy = assembly;
  statsCopy = stats;
  if (qword_1000B84A8[0] != -1)
  {
    sub_1000531D8();
  }

  v8 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Finished assembling asset over multicast", v11, 2u);
  }

  v9 = +[MIBUDataCollector sharedInstance];
  [v9 addKeyEvent:@"SSUAssembleUpdateEnd" additionalData:statsCopy];

  [(MIBUShippingUpdateOperation *)self _connectToWiFi];
  downloadSem = [(MIBUShippingUpdateOperation *)self downloadSem];
  dispatch_semaphore_signal(downloadSem);
}

- (id)devicePingPayload
{
  v3 = objc_opt_new();
  v4 = +[MIBUDeviceController sharedInstance];
  getBatteryLevel = [v4 getBatteryLevel];

  v6 = +[MIBUDeviceController sharedInstance];
  thermalPressureLevel = [v6 thermalPressureLevel];

  v8 = MGCopyAnswer();
  [v3 setObject:v8 forKey:@"SerialNumber"];
  if (getBatteryLevel)
  {
    [v3 setObject:getBatteryLevel forKey:@"BatterySOC"];
  }

  v9 = [NSNumber numberWithInteger:thermalPressureLevel];
  [v3 setObject:v9 forKey:@"ThermalPressure"];

  v10 = objc_opt_new();
  state = [(MIBUNWClientController *)self->_multicastClient state];
  if (state != 3)
  {
    v18 = state;
    [v3 setObject:&off_1000A7CE0 forKey:@"Operation"];
    if (v18 >= 3)
    {
      v19 = 0;
    }

    else
    {
      v19 = v18 + 256;
    }

    v20 = [NSNumber numberWithUnsignedInteger:v19];
    [v10 setObject:v20 forKey:@"Phase"];

    progress = [(MIBUNWClientController *)self->_multicastClient progress];
    v17 = @"Progress";
    goto LABEL_12;
  }

  [v3 setObject:&off_1000A7CF8 forKey:@"Operation"];
  v12 = [NSNumber numberWithUnsignedInteger:[(MIBUSUController *)self->_suController phase]];
  [v10 setObject:v12 forKey:@"Phase"];

  progress2 = [(MIBUSUController *)self->_suController progress];

  if (progress2)
  {
    progress3 = [(MIBUSUController *)self->_suController progress];
    [v10 setObject:progress3 forKey:@"Progress"];
  }

  timeRemaining = [(MIBUSUController *)self->_suController timeRemaining];

  if (timeRemaining)
  {
    progress = [(MIBUSUController *)self->_suController timeRemaining];
    v17 = @"TimeRemaining";
LABEL_12:
    [v10 setObject:progress forKey:v17];
  }

  [v3 setObject:v10 forKey:@"OperationDetails"];

  return v3;
}

- (void)_beginUpdate
{
  [(MIBUShippingUpdateOperation *)self _startWatchdogTimer];
  if (![(MIBUShippingUpdateOperation *)self _downloadAssetFile])
  {
    sub_1000531EC();
LABEL_12:
    [(MIBUShippingUpdateOperation *)self _endUpdate:0];
    return;
  }

  if (![(MIBUShippingUpdateOperation *)self _extractAssetFile])
  {
    sub_10005326C();
    goto LABEL_12;
  }

  if (![(MIBUShippingUpdateOperation *)self _setupAssetFile])
  {
    sub_1000532EC();
    goto LABEL_12;
  }

  if (![(MIBUShippingUpdateOperation *)self _startLocalFileServer])
  {
    sub_10005336C();
    goto LABEL_12;
  }

  v3 = +[MIBUDataCollector sharedInstance];
  [v3 addKeyEvent:@"SSUUpdatePrepare"];

  suController = [(MIBUShippingUpdateOperation *)self suController];
  [suController start];
}

- (void)_endUpdate:(BOOL)update
{
  [(MIBUShippingUpdateOperation *)self _stopWatchdogTimer];
  v5 = +[MIBUDataCollector sharedInstance];
  [v5 stop];

  multicastClient = [(MIBUShippingUpdateOperation *)self multicastClient];
  error = [(MIBUShippingUpdateOperation *)self error];
  [multicastClient checkOutWithError:error];

  if (!update)
  {
    [(MIBUShippingUpdateOperation *)self _cleanUp];
    delegate = [(MIBUOperation *)self delegate];
    error2 = [(MIBUShippingUpdateOperation *)self error];
    [delegate operationFinishedWithError:error2];
  }

  v10 = +[MIBUWiFiHelper sharedInstance];
  [v10 disassociate];
}

- (void)_cleanUp
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_1000533EC();
  }

  v3 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [NSString stringWithFormat:@"removing default preference keys..."];
    v16 = 138543618;
    selfCopy3 = self;
    v18 = 2114;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", &v16, 0x16u);
  }

  [MIBUDefaultPreferences removeObjectForKey:@"CurrentOperation"];
  [MIBUDefaultPreferences removeObjectForKey:@"PreviousOSVersion"];
  [MIBUDefaultPreferences removeObjectForKey:@"TargetOSVersion"];
  if (qword_1000B84A8[0] != -1)
  {
    sub_100053400();
  }

  v6 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [NSString stringWithFormat:@"termination SU controller..."];
    v16 = 138543618;
    selfCopy3 = self;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", &v16, 0x16u);
  }

  suController = [(MIBUShippingUpdateOperation *)self suController];

  if (suController)
  {
    suController2 = [(MIBUShippingUpdateOperation *)self suController];
    [suController2 terminate];
  }

  if (qword_1000B84A8[0] != -1)
  {
    sub_100053428();
  }

  v11 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [NSString stringWithFormat:@"stopping multicast client..."];
    v16 = 138543618;
    selfCopy3 = self;
    v18 = 2114;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", &v16, 0x16u);
  }

  multicastClient = [(MIBUShippingUpdateOperation *)self multicastClient];

  if (multicastClient)
  {
    multicastClient2 = [(MIBUShippingUpdateOperation *)self multicastClient];
    [multicastClient2 stop];
  }
}

- (void)_startWatchdogTimer
{
  operationTimeout = [(MIBUShippingUpdateOperation *)self operationTimeout];
  unsignedIntegerValue = [operationTimeout unsignedIntegerValue];

  if (unsignedIntegerValue)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100053450();
    }

    v5 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [NSString stringWithFormat:@"Starting operation watchdog timer to fire in %lu seconds...", unsignedIntegerValue];
      *buf = 138543618;
      selfCopy2 = self;
      v20 = 2114;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
    }

    syncQueue = [(MIBUOperation *)self syncQueue];
    v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, syncQueue);
    [(MIBUShippingUpdateOperation *)self setWatchdogTimer:v9];

    v10 = dispatch_walltime(0, 1000000000 * unsignedIntegerValue);
    watchdogTimer = [(MIBUShippingUpdateOperation *)self watchdogTimer];
    dispatch_source_set_timer(watchdogTimer, v10, 0xFFFFFFFFFFFFFFFFLL, 0);

    watchdogTimer2 = [(MIBUShippingUpdateOperation *)self watchdogTimer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000081E0;
    handler[3] = &unk_1000994A8;
    handler[4] = self;
    dispatch_source_set_event_handler(watchdogTimer2, handler);

    watchdogTimer3 = [(MIBUShippingUpdateOperation *)self watchdogTimer];
    dispatch_activate(watchdogTimer3);
  }

  else
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100053464();
    }

    v14 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [NSString stringWithFormat:@"Skip setting up operation watchdog timer."];
      *buf = 138543618;
      selfCopy2 = self;
      v20 = 2114;
      v21 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
    }
  }
}

- (void)_stopWatchdogTimer
{
  watchdogTimer = [(MIBUShippingUpdateOperation *)self watchdogTimer];

  if (watchdogTimer)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005348C();
    }

    v4 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = [NSString stringWithFormat:@"Stopping operation watchdog timer..."];
      v8 = 138543618;
      selfCopy = self;
      v10 = 2114;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", &v8, 0x16u);
    }

    watchdogTimer2 = [(MIBUShippingUpdateOperation *)self watchdogTimer];
    dispatch_source_cancel(watchdogTimer2);

    [(MIBUShippingUpdateOperation *)self setWatchdogTimer:0];
  }
}

- (BOOL)_startLocalFileServer
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_1000534A0();
  }

  v3 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting local file server...", buf, 2u);
  }

  if (os_variant_has_internal_content() && (+[MIBUTestPreferences sharedInstance](MIBUTestPreferences, "sharedInstance"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 usePythonLoopbackServer], v4, v5))
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005354C();
    }

    v6 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Use Python script for loopback server!", buf, 2u);
    }

    v31 = 0;
    *buf = *off_100099748;
    v40 = *&off_100099758;
    *__envp = off_100099768;
    v30 = 0;
    posix_spawnattr_init(&v30);
    v7 = posix_spawn(&v31, "/usr/local/bin/python3", 0, &v30, buf, __envp);
    if (qword_1000B84A8[0] != -1)
    {
      sub_100053574();
    }

    v8 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = strerror(v7);
      *v32 = 67109634;
      v33 = v7;
      v34 = 2080;
      v35 = v10;
      v36 = 1024;
      v37 = v31;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Server spawn result: %d; (error: %s); PID = %d", v32, 0x18u);
    }

    posix_spawnattr_destroy(&v30);
    v16 = v7 == 0;
    if (v7)
    {
      v17 = sub_1000162A8(0x1000000, 0, @"Failed to setup local file server.", v11, v12, v13, v14, v15, v28);
      [(MIBUShippingUpdateOperation *)self setError:v17];
    }

    v18 = 0;
  }

  else
  {
    v19 = +[_TtC17MobileInBoxUpdate24MIBULoopbackServerClient sharedInstance];
    v29 = 0;
    v20 = [v19 startServerWithWebPort:8080 webRoot:@"/tmp/su/assets" waitTillDone:0 error:&v29];
    v18 = v29;

    if (v20)
    {
      v16 = 1;
    }

    else
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_1000534B4();
      }

      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
      {
        sub_1000534DC();
      }

      v26 = sub_1000162A8(0x1000000, 0, @"Failed to setup local file server.", v21, v22, v23, v24, v25, v28);
      [(MIBUShippingUpdateOperation *)self setError:v26];

      v16 = 0;
    }
  }

  return v16;
}

- (void)_terminateLocalFileServer
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005359C();
  }

  v2 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stopping local file server...", buf, 2u);
  }

  v3 = +[_TtC17MobileInBoxUpdate24MIBULoopbackServerClient sharedInstance];
  v6 = 0;
  v4 = [v3 stopServerAndReturnError:&v6];
  v5 = v6;

  if ((v4 & 1) == 0)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_1000535B0();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_1000535D8();
    }
  }
}

- (BOOL)_setupAssetFile
{
  v2 = [NSString pathWithComponents:&off_1000A9A10];
  v92 = [NSString pathWithComponents:&off_1000A9A28];
  v119[0] = v2;
  v119[1] = @"brain.xml";
  v3 = [NSArray arrayWithObjects:v119 count:2];
  v4 = [NSString pathWithComponents:v3];

  v118[0] = v2;
  v118[1] = @"brain.zip";
  v5 = [NSArray arrayWithObjects:v118 count:2];
  v6 = [NSString pathWithComponents:v5];

  v117[0] = v2;
  v117[1] = @"update.xml";
  v7 = [NSArray arrayWithObjects:v117 count:2];
  v8 = [NSString pathWithComponents:v7];

  v86 = v2;
  v116[0] = v2;
  v116[1] = @"update.aea";
  v9 = [NSArray arrayWithObjects:v116 count:2];
  v10 = [NSString pathWithComponents:v9];

  v91 = +[NSFileManager defaultManager];
  v11 = +[MIBUTestPreferences sharedInstance];
  softwareUpdateBrainXMLPath = [v11 softwareUpdateBrainXMLPath];

  if (softwareUpdateBrainXMLPath)
  {
    v13 = +[MIBUTestPreferences sharedInstance];
    softwareUpdateBrainXMLPath2 = [v13 softwareUpdateBrainXMLPath];

    if (qword_1000B84A8[0] != -1)
    {
      sub_100053648();
    }

    v14 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v109 = softwareUpdateBrainXMLPath2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Overriding Update Brain XML Path to %{public}@", buf, 0xCu);
    }
  }

  else
  {
    softwareUpdateBrainXMLPath2 = v4;
  }

  v15 = +[MIBUTestPreferences sharedInstance];
  softwareUpdateBrainAssetPath = [v15 softwareUpdateBrainAssetPath];

  if (softwareUpdateBrainAssetPath)
  {
    v17 = +[MIBUTestPreferences sharedInstance];
    softwareUpdateBrainAssetPath2 = [v17 softwareUpdateBrainAssetPath];

    if (qword_1000B84A8[0] != -1)
    {
      sub_100053670();
    }

    v18 = qword_1000B84A0;
    v19 = v92;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v109 = softwareUpdateBrainAssetPath2;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Overriding Update Brain Asset Path to %{public}@", buf, 0xCu);
    }
  }

  else
  {
    softwareUpdateBrainAssetPath2 = v6;
    v19 = v92;
  }

  v20 = +[MIBUTestPreferences sharedInstance];
  softwareUpdateXMLPath = [v20 softwareUpdateXMLPath];

  if (softwareUpdateXMLPath)
  {
    v22 = +[MIBUTestPreferences sharedInstance];
    softwareUpdateXMLPath2 = [v22 softwareUpdateXMLPath];

    if (qword_1000B84A8[0] != -1)
    {
      sub_100053698();
    }

    v23 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v109 = softwareUpdateXMLPath2;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Overriding Software Update XML Path to %{public}@", buf, 0xCu);
    }
  }

  else
  {
    softwareUpdateXMLPath2 = v8;
  }

  v24 = +[MIBUTestPreferences sharedInstance];
  softwareUpdateAssetPath = [v24 softwareUpdateAssetPath];

  if (softwareUpdateAssetPath)
  {
    v26 = +[MIBUTestPreferences sharedInstance];
    softwareUpdateAssetPath2 = [v26 softwareUpdateAssetPath];

    if (qword_1000B84A8[0] != -1)
    {
      sub_1000536C0();
    }

    v28 = qword_1000B84A0;
    v29 = v91;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v109 = softwareUpdateAssetPath2;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Overriding Software Update Asset Path to %{public}@", buf, 0xCu);
    }
  }

  else
  {
    softwareUpdateAssetPath2 = v10;
    v29 = v91;
  }

  if (qword_1000B84A8[0] != -1)
  {
    sub_1000536E8();
  }

  v30 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Setting up asset file...", buf, 2u);
  }

  v88 = softwareUpdateAssetPath2;
  if (([v29 fileExistsAtPath:softwareUpdateBrainXMLPath2] & 1) == 0)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100053710();
    }

    v59 = v86;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_100053738();
    }

    goto LABEL_68;
  }

  if (([v29 fileExistsAtPath:softwareUpdateXMLPath2] & 1) == 0)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_1000537A8();
    }

    v59 = v86;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_1000537D0();
    }

    goto LABEL_68;
  }

  if (qword_1000B84A8[0] != -1)
  {
    sub_100053840();
  }

  v31 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v109 = softwareUpdateBrainXMLPath2;
    v110 = 2114;
    v111 = softwareUpdateBrainAssetPath2;
    v112 = 2114;
    v113 = softwareUpdateXMLPath2;
    v114 = 2114;
    v115 = softwareUpdateAssetPath2;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "SoftwareUpdateBrainXMLPath = %{public}@; SoftwareUpdateBrainAssetPath = %{public}@; SoftwareUpdateXMLPath = %{public}@; SoftwareUpdateAssetPath = %{public}@", buf, 0x2Au);
  }

  if ([v29 fileExistsAtPath:v19])
  {
    v103 = 0;
    v32 = [v29 removeItemAtPath:v19 error:&v103];
    v33 = v103;
    v34 = v33;
    if (!v32 || v33)
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_100053868();
      }

      v59 = v86;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
      {
        sub_100053890();
      }

      goto LABEL_106;
    }
  }

  v102 = 0;
  v35 = [v29 createDirectoryAtPath:v19 withIntermediateDirectories:1 attributes:0 error:&v102];
  v36 = v102;
  v34 = v36;
  if (!v35 || v36)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_1000538FC();
    }

    v59 = v86;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_100053924();
    }

LABEL_106:
    v52 = 0;
    v38 = 0;
    v54 = 0;
    v64 = 0;
    v89 = 0;
    v90 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v42 = 0;
    goto LABEL_107;
  }

  v37 = [(MIBUShippingUpdateOperation *)self _assetRelativePathFromCatalog:softwareUpdateBrainXMLPath2 assetPath:softwareUpdateBrainAssetPath2];
  if (!v37)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100053BC4();
    }

    v59 = v86;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_100053BEC();
    }

LABEL_68:
    v52 = 0;
    v38 = 0;
LABEL_74:
    v54 = 0;
    v64 = 0;
    v89 = 0;
    v90 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v42 = 0;
    v34 = 0;
LABEL_107:
    v80 = sub_1000162A8(0x1000000, 0, @"Failed to setup OS update assets.", v70, v71, v72, v73, v74, v81);
    [(MIBUShippingUpdateOperation *)self setError:v80];

    v68 = 0;
    v67 = v34;
    goto LABEL_51;
  }

  v38 = v37;
  v39 = [(MIBUShippingUpdateOperation *)self _assetRelativePathFromCatalog:softwareUpdateXMLPath2 assetPath:softwareUpdateAssetPath2];
  if (!v39)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100053B2C();
    }

    v59 = v86;
    v29 = v91;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_100053B54();
    }

    v52 = 0;
    goto LABEL_74;
  }

  v40 = v39;
  pathComponents = [v38 pathComponents];
  v42 = [pathComponents objectAtIndexedSubscript:0];

  pathComponents2 = [v40 pathComponents];
  v44 = [pathComponents2 objectAtIndexedSubscript:0];

  v45 = [v42 stringByAppendingPathExtension:@"xml"];
  v46 = [v44 stringByAppendingPathExtension:@"xml"];
  v107[0] = v19;
  v107[1] = v42;
  v83 = v45;
  v107[2] = v45;
  v47 = [NSArray arrayWithObjects:v107 count:3];
  v90 = [NSString pathWithComponents:v47];

  v106[0] = v19;
  v106[1] = v44;
  v84 = v46;
  v85 = v44;
  v106[2] = v46;
  v48 = [NSArray arrayWithObjects:v106 count:3];
  v89 = [NSString pathWithComponents:v48];

  v105[0] = v19;
  v105[1] = v38;
  v49 = v38;
  v50 = [NSArray arrayWithObjects:v105 count:2];
  v51 = [NSString pathWithComponents:v50];

  v104[0] = v19;
  v104[1] = v40;
  v52 = v40;
  v53 = [NSArray arrayWithObjects:v104 count:2];
  v54 = [NSString pathWithComponents:v53];

  v82 = v51;
  stringByDeletingLastPathComponent = [v51 stringByDeletingLastPathComponent];
  v101 = 0;
  v29 = v91;
  v56 = [v91 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v101];
  v34 = v101;

  if (!v56 || v34)
  {
    v59 = v86;
    if (qword_1000B84A8[0] != -1)
    {
      sub_100053990();
    }

    v75 = qword_1000B84A0;
    v38 = v49;
    v64 = v82;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_1000539B8(v75, v82);
    }

    goto LABEL_107;
  }

  stringByDeletingLastPathComponent2 = [v54 stringByDeletingLastPathComponent];
  v100 = 0;
  v58 = [v91 createDirectoryAtPath:stringByDeletingLastPathComponent2 withIntermediateDirectories:1 attributes:0 error:&v100];
  v34 = v100;

  v59 = v86;
  if (!v58 || v34)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100053A64();
    }

    v38 = v49;
    v76 = qword_1000B84A0;
    v64 = v82;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_1000539B8(v76, v54);
    }

    goto LABEL_107;
  }

  v99 = 0;
  v60 = [v91 copyItemAtPath:softwareUpdateBrainXMLPath2 toPath:v90 error:&v99];
  v61 = v99;
  v34 = v61;
  if ((v60 & 1) == 0)
  {
    v38 = v49;
    if (qword_1000B84A8[0] != -1)
    {
      sub_100053A8C();
    }

    v64 = v82;
    v77 = qword_1000B84A0;
    if (!os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_107;
    }

    *buf = 138543874;
    v109 = softwareUpdateBrainXMLPath2;
    v110 = 2114;
    v111 = v90;
    v112 = 2114;
    v113 = v34;
LABEL_96:
    _os_log_error_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, "Failed to copy file %{public}@ to %{public}@.  Error %{public}@", buf, 0x20u);
    goto LABEL_107;
  }

  v98 = v61;
  v62 = [v91 copyItemAtPath:softwareUpdateXMLPath2 toPath:v89 error:&v98];
  v63 = v98;

  v38 = v49;
  if ((v62 & 1) == 0)
  {
    v64 = v82;
    if (qword_1000B84A8[0] != -1)
    {
      sub_100053AB4();
    }

    v78 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v109 = softwareUpdateXMLPath2;
      v110 = 2114;
      v111 = v89;
      v112 = 2114;
      v113 = v63;
      _os_log_error_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "Failed to copy file %{public}@ to %{public}@.  Error %{public}@", buf, 0x20u);
    }

    v34 = v63;
    goto LABEL_107;
  }

  v97 = v63;
  v64 = v82;
  v65 = [v91 copyItemAtPath:softwareUpdateBrainAssetPath2 toPath:v82 error:&v97];
  v34 = v97;

  if ((v65 & 1) == 0)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100053ADC();
    }

    v77 = qword_1000B84A0;
    if (!os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_107;
    }

    *buf = 138543874;
    v109 = softwareUpdateBrainAssetPath2;
    v110 = 2114;
    v111 = v82;
    v112 = 2114;
    v113 = v34;
    goto LABEL_96;
  }

  v96 = v34;
  v66 = [v91 copyItemAtPath:v88 toPath:v54 error:&v96];
  v67 = v96;

  if ((v66 & 1) == 0)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100053B04();
    }

    v79 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v109 = v88;
      v110 = 2114;
      v111 = v54;
      v112 = 2114;
      v113 = v67;
      _os_log_error_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "Failed to copy file %{public}@ to %{public}@.  Error %{public}@", buf, 0x20u);
    }

    v34 = v67;
    goto LABEL_107;
  }

  v68 = 1;
LABEL_51:

  return v68;
}

- (id)_assetRelativePathFromCatalog:(id)catalog assetPath:(id)path
{
  catalogCopy = catalog;
  pathCopy = path;
  v7 = [[NSMutableDictionary alloc] initWithContentsOfFile:catalogCopy];
  v8 = [v7 objectForKey:@"Assets"];
  if (!v8)
  {
    sub_100053D94(&v33, &v34);
LABEL_27:
    v21 = v34;
    v27 = v33;
    goto LABEL_24;
  }

  v9 = [NSURL fileURLWithPath:pathCopy];
  fileHash = [v9 fileHash];

  v27 = fileHash;
  if (!fileHash)
  {
    sub_100053CF4(&v33, &v34);
    goto LABEL_27;
  }

  v24 = v7;
  v25 = pathCopy;
  v26 = catalogCopy;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v8;
  v11 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (!v11)
  {
LABEL_16:

LABEL_19:
    pathCopy = v25;
    catalogCopy = v26;
    v7 = v24;
    if (qword_1000B84A8[0] != -1)
    {
      sub_100053C5C();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_100053C84();
    }

    v21 = 0;
    goto LABEL_24;
  }

  v12 = v11;
  v13 = *v30;
LABEL_5:
  v14 = 0;
  while (1)
  {
    if (*v30 != v13)
    {
      objc_enumerationMutation(obj);
    }

    v15 = *(*(&v29 + 1) + 8 * v14);
    v16 = objc_autoreleasePoolPush();
    v17 = [v15 objectForKey:@"_MeasurementAlgorithm"];
    v18 = v17;
    if (!v17 || ![v17 isEqualToString:@"SHA-1"])
    {
      goto LABEL_14;
    }

    v19 = [v15 objectForKey:@"_Measurement"];
    if (v19)
    {
      if ([v27 isEqualToData:v19])
      {
        v20 = [v15 objectForKey:@"__RelativePath"];

        if (v20)
        {
          break;
        }
      }
    }

LABEL_14:
    objc_autoreleasePoolPop(v16);
    if (v12 == ++v14)
    {
      v12 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v12)
      {
        goto LABEL_5;
      }

      goto LABEL_16;
    }
  }

  v21 = [v15 objectForKey:@"__RelativePath"];

  objc_autoreleasePoolPop(v16);
  if (!v21)
  {
    goto LABEL_19;
  }

  pathCopy = v25;
  catalogCopy = v26;
  v7 = v24;
LABEL_24:
  v22 = v21;

  return v21;
}

- (BOOL)_downloadAssetFile
{
  v3 = [NSString pathWithComponents:&off_1000A9A40];
  v4 = dispatch_time(0, 18000000000000);
  hostPort = [(MIBUShippingUpdateOperation *)self hostPort];

  if (!hostPort)
  {
    sub_100054244();
    goto LABEL_20;
  }

  groupAddress = [(MIBUShippingUpdateOperation *)self groupAddress];

  if (!groupAddress)
  {
    sub_1000541C4();
    goto LABEL_20;
  }

  groupPort = [(MIBUShippingUpdateOperation *)self groupPort];

  if (!groupPort)
  {
    sub_100054144();
    goto LABEL_20;
  }

  interfaceName = [(MIBUShippingUpdateOperation *)self interfaceName];

  if (!interfaceName)
  {
    sub_1000540C4();
    goto LABEL_20;
  }

  serviceName = [(MIBUShippingUpdateOperation *)self serviceName];

  if (!serviceName)
  {
    sub_100054044();
    goto LABEL_20;
  }

  rqBasicParameters = [(MIBUShippingUpdateOperation *)self rqBasicParameters];

  if (!rqBasicParameters)
  {
    sub_100053FC4();
    goto LABEL_20;
  }

  rqExtendedParameters = [(MIBUShippingUpdateOperation *)self rqExtendedParameters];

  if (!rqExtendedParameters)
  {
    sub_100053F44();
    goto LABEL_20;
  }

  rqThreshold = [(MIBUShippingUpdateOperation *)self rqThreshold];

  if (!rqThreshold)
  {
    sub_100053EC4();
    goto LABEL_20;
  }

  v49 = v4;
  v13 = [MIBURaptorQPacketConsumer alloc];
  rqBasicParameters2 = [(MIBUShippingUpdateOperation *)self rqBasicParameters];
  unsignedLongValue = [rqBasicParameters2 unsignedLongValue];
  rqExtendedParameters2 = [(MIBUShippingUpdateOperation *)self rqExtendedParameters];
  unsignedIntValue = [rqExtendedParameters2 unsignedIntValue];
  rqThreshold2 = [(MIBUShippingUpdateOperation *)self rqThreshold];
  v50 = v3;
  v19 = [v13 initWithBasicParameters:unsignedLongValue extendedParameters:unsignedIntValue threshold:objc_msgSend(rqThreshold2 outputFile:{"unsignedIntValue"), v3}];
  [(MIBUShippingUpdateOperation *)self setPacketConsumer:v19];

  v48 = [MIBUNWClientController alloc];
  packetConsumer = [(MIBUShippingUpdateOperation *)self packetConsumer];
  hostPort2 = [(MIBUShippingUpdateOperation *)self hostPort];
  tcpAddress = [(MIBUShippingUpdateOperation *)self tcpAddress];
  tcpPort = [(MIBUShippingUpdateOperation *)self tcpPort];
  groupAddress2 = [(MIBUShippingUpdateOperation *)self groupAddress];
  groupPort2 = [(MIBUShippingUpdateOperation *)self groupPort];
  interfaceName2 = [(MIBUShippingUpdateOperation *)self interfaceName];
  serviceName2 = [(MIBUShippingUpdateOperation *)self serviceName];
  countryCode = [(MIBUShippingUpdateOperation *)self countryCode];
  channelName = [(MIBUShippingUpdateOperation *)self channelName];
  unsignedIntegerValue = [channelName unsignedIntegerValue];
  band = [(MIBUShippingUpdateOperation *)self band];
  unsignedIntegerValue2 = [band unsignedIntegerValue];
  bandwidth = [(MIBUShippingUpdateOperation *)self bandwidth];
  unsignedIntegerValue3 = [bandwidth unsignedIntegerValue];
  enableRateAdapter = [(MIBUShippingUpdateOperation *)self enableRateAdapter];
  v26 = +[MIBUDataCollector sharedInstance];
  LOBYTE(v38) = enableRateAdapter;
  v27 = [v48 initWithPacketConsumer:packetConsumer hostPort:hostPort2 tcpAddress:tcpAddress tcpPort:tcpPort groupAddress:groupAddress2 groupPort:groupPort2 interfaceName:interfaceName2 serviceName:serviceName2 countryCode:countryCode channelName:unsignedIntegerValue band:unsignedIntegerValue2 bandwidth:unsignedIntegerValue3 enableRateAdapter:v38 controllerDelegate:self dataCollector:v26];
  [(MIBUShippingUpdateOperation *)self setMulticastClient:v27];

  tcpPingInterval = [(MIBUShippingUpdateOperation *)self tcpPingInterval];

  if (tcpPingInterval)
  {
    multicastClient = [(MIBUShippingUpdateOperation *)self multicastClient];
    tcpPingInterval2 = [(MIBUShippingUpdateOperation *)self tcpPingInterval];
    [multicastClient setPingInterval:tcpPingInterval2];
  }

  multicastClient2 = [(MIBUShippingUpdateOperation *)self multicastClient];
  [multicastClient2 start];

  downloadSem = [(MIBUShippingUpdateOperation *)self downloadSem];
  v33 = dispatch_semaphore_wait(downloadSem, v49);

  if (v33)
  {
    v3 = v50;
    if (qword_1000B84A8[0] != -1)
    {
      sub_100053E34();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_100053E48();
    }

    multicastClient3 = [(MIBUShippingUpdateOperation *)self multicastClient];
    [multicastClient3 stopMulticast];

    [(MIBUShippingUpdateOperation *)self _connectToWiFi];
    goto LABEL_20;
  }

  error = [(MIBUShippingUpdateOperation *)self error];

  v3 = v50;
  if (error)
  {
LABEL_20:
    sub_1000542C4(self, v52);
    v35 = v52[0];
    goto LABEL_14;
  }

  v35 = 1;
LABEL_14:

  return v35;
}

- (BOOL)_extractAssetFile
{
  v3 = +[NSFileManager defaultManager];
  v4 = [NSString pathWithComponents:&off_1000A9A58];
  v5 = [NSString pathWithComponents:&off_1000A9A70];
  if (qword_1000B84A8[0] != -1)
  {
    sub_100054334();
  }

  v6 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Extracting asset files...", buf, 2u);
  }

  v44[0] = 0;
  v7 = [v3 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:v44];
  v8 = v44[0];
  v9 = v8;
  if (!v7 || v8)
  {
    sub_100054348();
LABEL_64:
    v41 = sub_1000162A8(0x1000000, 0, @"Failed to extract OS update assets.", v36, v37, v38, v39, v40, v42);
    [(MIBUShippingUpdateOperation *)self setError:v41];

    v34 = 0;
    goto LABEL_62;
  }

  if (([v3 fileExistsAtPath:v4] & 1) == 0)
  {
    sub_100054424();
    goto LABEL_64;
  }

  [v4 cStringUsingEncoding:1];
  [v5 cStringUsingEncoding:1];
  v44[1] = 0;
  archive_read_new();
  if (archive_read_set_format())
  {
    sub_1000544E0();
    goto LABEL_64;
  }

  if (archive_read_append_filter())
  {
    sub_1000545AC();
    goto LABEL_64;
  }

  archive_write_disk_new();
  archive_write_disk_set_options();
  archive_write_disk_set_standard_lookup();
  if (archive_read_open_filename())
  {
    sub_100054678();
    goto LABEL_64;
  }

  v43 = v5;
  v10 = 0;
  while (1)
  {
    next_header = archive_read_next_header();
    if (next_header == 1)
    {
      break;
    }

    v12 = next_header;
    if ((next_header & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    if (qword_1000B84A8[0] != -1)
    {
      sub_100054734();
    }

    v13 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_10005475C(v51, v13);
    }

    if (v12 >= 0xFFFFFFEC)
    {
LABEL_52:
      v14 = archive_entry_pathname();
      *buf = @"/tmp/su/";
      v49 = @"extract";
      v15 = [NSString stringWithUTF8String:v14];
      v50 = v15;
      v16 = [NSArray arrayWithObjects:buf count:3];
      v17 = [NSString pathWithComponents:v16];

      if (qword_1000B84A8[0] != -1)
      {
        sub_1000547AC();
      }

      v18 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        *v52 = 138543362;
        v53 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Extracting file %{public}@", v52, 0xCu);
      }

      v10 = v17;
      [v17 cStringUsingEncoding:1];
      archive_entry_set_pathname();
      if ((archive_write_header() & 0x80000000) != 0)
      {
        if (qword_1000B84A8[0] != -1)
        {
          sub_1000548C4();
        }

        v26 = qword_1000B84A0;
        if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
        {
          sub_1000548EC(v47, v26);
        }
      }

      else if (archive_entry_size() >= 1)
      {
        memset(&v44[2], 0, 24);
        while (1)
        {
          data_block = archive_read_data_block();
          if (data_block == 1)
          {
            if (qword_1000B84A8[0] != -1)
            {
              sub_10005489C();
            }

            v27 = qword_1000B84A0;
            if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
            {
              *v52 = 0;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Reached the end of file", v52, 2u);
            }

            goto LABEL_47;
          }

          v20 = data_block;
          if ((data_block & 0x80000000) != 0)
          {
            break;
          }

          v20 = archive_write_data_block();
          if ((v20 & 0x80000000) != 0)
          {
            if (qword_1000B84A8[0] != -1)
            {
              sub_1000547D4();
            }

            v21 = qword_1000B84A0;
            if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
            {
              v22 = v21;
              v23 = archive_error_string();
              *v52 = 136315394;
              v53 = v23;
              v54 = 1024;
              v55 = v20;
              v24 = v22;
              v25 = "Failed to write data block with %s; ret: %d";
              goto LABEL_55;
            }

            goto LABEL_44;
          }
        }

        if (qword_1000B84A8[0] != -1)
        {
          sub_1000547FC();
        }

        v28 = qword_1000B84A0;
        if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
        {
          v22 = v28;
          v32 = archive_error_string();
          *v52 = 136315394;
          v53 = v32;
          v54 = 1024;
          v55 = v20;
          v24 = v22;
          v25 = "Failed to read data block with %s; ret: %d";
LABEL_55:
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v25, v52, 0x12u);

          if (qword_1000B84A8[0] != -1)
          {
            sub_100054824();
          }
        }

LABEL_44:
        v29 = qword_1000B84A0;
        if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
        {
          sub_10005484C(v46, v29);
        }

        if (v20 < 0xFFFFFFEC)
        {
          goto LABEL_63;
        }
      }

LABEL_47:
      v30 = archive_write_finish_entry();
      if (v30 < 0)
      {
        if (qword_1000B84A8[0] != -1)
        {
          sub_10005493C();
        }

        v31 = qword_1000B84A0;
        if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
        {
          sub_100054964(v45, v31);
        }
      }

      if (v30 > -21)
      {
        continue;
      }
    }

LABEL_63:

    v5 = v43;
    goto LABEL_64;
  }

  archive_read_close();
  archive_read_free();
  archive_write_close();
  archive_write_free();

  if (qword_1000B84A8[0] != -1)
  {
    sub_1000549B4();
  }

  v5 = v43;
  v33 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Successfully extracted asset files!", buf, 2u);
  }

  v34 = 1;
LABEL_62:

  return v34;
}

- (BOOL)_connectToWiFi
{
  v3 = +[MIBUWiFiHelper sharedInstance];
  wifiSSID = [(MIBUShippingUpdateOperation *)self wifiSSID];
  wifiChannel = [(MIBUShippingUpdateOperation *)self wifiChannel];
  [v3 setWiFiSSID:wifiSSID andChannel:{objc_msgSend(wifiChannel, "unsignedIntegerValue")}];

  if (os_variant_has_internal_content() && (+[MIBUTestPreferences sharedInstance](MIBUTestPreferences, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 skipWiFiAssociation], v6, v7))
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100054A84();
    }

    v8 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Skipping WiFi Association...", buf, 2u);
    }
  }

  else
  {
    v12 = 0;
    [v3 connectAndMonitor:&v12];
    v9 = v12;
    if (v9)
    {
      sub_1000549DC(self, v9);
      v10 = 0;
      goto LABEL_9;
    }
  }

  v10 = 1;
LABEL_9:

  return v10;
}

@end