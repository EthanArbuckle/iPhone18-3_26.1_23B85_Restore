@interface MIBUNFCController
- (BOOL)_isHeartbeatMode;
- (MIBUNFCController)initWithDelegate:(id)delegate;
- (id)_getDispatchTable;
- (id)_handleConfigureNFC:(id)c;
- (id)_handleDeviceInfo:(id)info;
- (id)_handleHeartbeat:(id)heartbeat;
- (id)_handleInstallUpdate:(id *)update;
- (id)_handleNetworkInfo:(id *)info;
- (id)_handleRetryAfter:(id)after;
- (id)_handleSelect:(id)select;
- (id)_handleStartDiag:(id)diag;
- (id)_handleStartUpdate:(id)update;
- (id)_handleStatusUpdate:(id)update;
- (id)handleCommand:(id)command;
- (void)_nfcInactivityTimeoutHandler:(id)handler;
- (void)_resetNFCInactivityTimer;
- (void)_restartSession:(id)session;
- (void)_restartSessionAfter:(double)after forceTerminate:(BOOL)terminate andCompletion:(id)completion;
- (void)_startHCESession:(id *)session;
- (void)_startNFCInactivityTimer:(double)timer;
- (void)_startSessionRestartTimer:(double)timer error:(id *)error;
- (void)_stopNFCInactivityTimer;
- (void)_stopSessionRestartTimer;
- (void)_verifyTatsuTicketFromCmd:(id)cmd error:(id *)error;
- (void)addObserver:(id)observer;
- (void)forceTerminateSession:(id *)session;
- (void)removeObserver:(id)observer;
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidEnd:(id)end;
- (void)sessionDidEndUnexpectedly:(id)unexpectedly;
- (void)start:(id *)start;
- (void)terminate:(id *)terminate;
- (void)terminateWithCompletion:(id)completion;
@end

@implementation MIBUNFCController

- (MIBUNFCController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = MIBUNFCController;
  v5 = [(MIBUNFCController *)&v12 init];
  if (v5)
  {
    v6 = [[MIBUHCESession alloc] initWithDelegate:v5];
    [(MIBUNFCController *)v5 setSession:v6];

    _getDispatchTable = [(MIBUNFCController *)v5 _getDispatchTable];
    [(MIBUNFCController *)v5 setDispatchTable:_getDispatchTable];

    [(MIBUNFCController *)v5 setDelegate:delegateCopy];
    v8 = objc_opt_new();
    [(MIBUNFCController *)v5 setObservers:v8];

    [(MIBUNFCController *)v5 setSessionRestartTimer:0];
    [(MIBUNFCController *)v5 setNfcInactivityTimer:0];
    [(MIBUNFCController *)v5 setHeartbeatConnectionSem:0];
    [(MIBUNFCController *)v5 setNfcTerminationSem:0];
    [(MIBUNFCController *)v5 setHeartbeatPeriod:0.0];
    [(MIBUNFCController *)v5 setNfcInactivityTimeout:0.0];
    [(MIBUNFCController *)v5 setIsNFCConfigured:0];
    v9 = dispatch_queue_attr_make_with_qos_class(&_dispatch_queue_attr_concurrent, QOS_CLASS_USER_INTERACTIVE, 0);
    v10 = dispatch_queue_create("com.apple.mibu_nfc_task_queue", v9);
    [(MIBUNFCController *)v5 setQueue:v10];
  }

  return v5;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  observers = [(MIBUNFCController *)selfCopy observers];
  v6 = [observers containsObject:observerCopy];

  if ((v6 & 1) == 0)
  {
    observers2 = [(MIBUNFCController *)selfCopy observers];
    [observers2 addObject:observerCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  observers = [(MIBUNFCController *)selfCopy observers];
  [observers removeObject:observerCopy];

  objc_sync_exit(selfCopy);
}

- (void)terminate:(id *)terminate
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10000FC0C;
  v21 = sub_10000FC1C;
  v22 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = dispatch_time(0, 60000000000);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000FC24;
  v14[3] = &unk_10009A1B0;
  v16 = &v17;
  v7 = v5;
  v15 = v7;
  [(MIBUNFCController *)self terminateWithCompletion:v14];
  if (dispatch_semaphore_wait(v7, v6))
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_1000555F0();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_100055618();
    }

    v12 = (v18 + 5);
    obj = v18[5];
    sub_100016130(&obj, 83886087, 0, @"NFC termination wait timed out after %ds", v8, v9, v10, v11, 60);
    objc_storeStrong(v12, obj);
  }

  if (terminate)
  {
    *terminate = v18[5];
  }

  _Block_object_dispose(&v17, 8);
}

- (void)terminateWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(MIBUNFCController *)self _isHeartbeatMode])
  {
    v11 = 0;
    v5 = objc_opt_class();
    sub_100016130(&v11, 2147483651, 0, @"Cannot terminate %{public}@ in heartbeat mode", v6, v7, v8, v9, v5);
    v10 = v11;
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v10);
    }
  }

  else
  {
    [(MIBUNFCController *)self setTerminated:1];
    [(MIBUNFCController *)self _restartSessionAfter:0 forceTerminate:completionCopy andCompletion:0.0];
  }
}

- (id)handleCommand:(id)command
{
  commandCopy = command;
  v5 = objc_opt_new();
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [commandCopy code]);
  nfcInactivityTimer = [(MIBUNFCController *)self nfcInactivityTimer];

  if (nfcInactivityTimer)
  {
    [(MIBUNFCController *)self _resetNFCInactivityTimer];
  }

  delegate = [(MIBUNFCController *)self delegate];
  v9 = [delegate isCommandAllowed:v6];

  if (!v9)
  {
    goto LABEL_15;
  }

  dispatchTable = [(MIBUNFCController *)self dispatchTable];
  allKeys = [dispatchTable allKeys];
  v12 = [allKeys containsObject:v6];

  if ((v12 & 1) == 0)
  {
    sub_10005568C(commandCopy);
LABEL_15:
    [v5 setRejected:1];
    v16 = v5;
    goto LABEL_13;
  }

  dispatchTable2 = [(MIBUNFCController *)self dispatchTable];
  v14 = [dispatchTable2 objectForKey:v6];
  v15 = NSSelectorFromString(v14);

  v16 = ([(MIBUNFCController *)self methodForSelector:v15])(self, v15, commandCopy);

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  observers = [(MIBUNFCController *)self observers];
  v18 = [observers countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v27;
    do
    {
      v21 = 0;
      do
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(observers);
        }

        v22 = *(*(&v26 + 1) + 8 * v21);
        error = [v16 error];
        [v22 didHandleCommand:commandCopy withError:error];

        v21 = v21 + 1;
      }

      while (v19 != v21);
      v19 = [observers countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v19);
  }

LABEL_13:
  v24 = v16;

  return v16;
}

- (void)sessionDidConnect:(id)connect
{
  if ([(MIBUNFCController *)self _isHeartbeatMode])
  {
    heartbeatConnectionSem = [(MIBUNFCController *)self heartbeatConnectionSem];
    dispatch_semaphore_signal(heartbeatConnectionSem);

    [(MIBUNFCController *)self heartbeatPeriod];

    [(MIBUNFCController *)self _restartSessionAfter:1 forceTerminate:0 andCompletion:?];
  }
}

- (void)sessionDidEnd:(id)end
{
  nfcTerminationSem = [(MIBUNFCController *)self nfcTerminationSem];

  if (nfcTerminationSem)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100055764();
    }

    v5 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "signaling termination", v7, 2u);
    }

    nfcTerminationSem2 = [(MIBUNFCController *)self nfcTerminationSem];
    dispatch_semaphore_signal(nfcTerminationSem2);
  }
}

- (void)sessionDidEndUnexpectedly:(id)unexpectedly
{
  if (![(MIBUNFCController *)self terminated])
  {

    [(MIBUNFCController *)self _restartSessionAfter:1 forceTerminate:0 andCompletion:1.0];
  }
}

- (id)_getDispatchTable
{
  v4[0] = &off_1000A7D10;
  v4[1] = &off_1000A7D28;
  v5[0] = @"_handleSelect:";
  v5[1] = @"_handleDeviceInfo:";
  v4[2] = &off_1000A7D40;
  v4[3] = &off_1000A7D58;
  v5[2] = @"_handleStartUpdate:";
  v5[3] = @"_handleStatusUpdate:";
  v4[4] = &off_1000A7D70;
  v4[5] = &off_1000A7D88;
  v5[4] = @"_handleRetryAfter:";
  v5[5] = @"_handleHeartbeat:";
  v4[6] = &off_1000A7DA0;
  v4[7] = &off_1000A7DB8;
  v5[6] = @"_handleInstallUpdate:";
  v5[7] = @"_handleNetworkInfo:";
  v4[8] = &off_1000A7DD0;
  v4[9] = &off_1000A7DE8;
  v5[8] = @"_handleConfigureNFC:";
  v5[9] = @"_handleStartDiag:";
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:10];

  return v2;
}

- (id)_handleSelect:(id)select
{
  selectCopy = select;
  v4 = objc_opt_new();
  if (qword_1000B84A8[0] != -1)
  {
    sub_100055778();
  }

  v5 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling select command...", &v11, 2u);
  }

  v6 = [NSData dataWithBytes:&unk_1000852B8 length:7];
  payload = [selectCopy payload];

  v8 = [payload objectForKey:@"ApplicationID"];

  if ([v6 isEqualToData:v8])
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100055864();
    }

    v9 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = v8;
      v13 = 1024;
      v14 = 1;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Selecting AID: %@; returning protocol version: %d", &v11, 0x12u);
    }

    [v4 setProtocolVersion:&off_1000A7E00];
  }

  else
  {
    sub_10005578C(qword_1000B84A8[0] == -1, v8, v4);
  }

  return v4;
}

- (id)_handleDeviceInfo:(id)info
{
  v3 = objc_opt_new();
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005588C();
  }

  v4 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Handling device info command...", buf, 2u);
  }

  v9 = MGCopyAnswer();
  if (!v9)
  {
    v49 = 0;
    sub_100016130(&v49, 100663299, 0, @"Failed to fetch device serial number", v5, v6, v7, v8, v42);
    v24 = v49;
    goto LABEL_19;
  }

  v10 = MGCopyAnswer();
  if (!v10)
  {
    sub_100055B08(&v48, buf);
LABEL_25:
    v24 = *buf;
    goto LABEL_19;
  }

  v11 = v10;
  v12 = MGCopyAnswer();
  if (!v12)
  {
    sub_100055A38(&v47, v11, buf);
    goto LABEL_25;
  }

  v13 = v12;
  v14 = MGCopyAnswer();
  if (!v14)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_1000559DC();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_100055A04();
    }

    v46 = 0;
    sub_100016130(&v46, 100663299, 0, @"Failed to fetch device chipID", v26, v27, v28, v29, v42);
    v24 = v46;
    goto LABEL_47;
  }

  v15 = v14;
  v16 = MGCopyAnswer();
  if (!v16)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100055980();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_1000559A8();
    }

    v45 = 0;
    sub_100016130(&v45, 100663299, 0, @"Failed to fetch device security domain", v30, v31, v32, v33, v42);
    v24 = v45;
    goto LABEL_46;
  }

  v17 = v16;
  v18 = +[MIBUTatsuVerifier apNonce];
  if (!v18)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100055924();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_10005594C();
    }

    v44 = 0;
    sub_100016130(&v44, 100663299, 0, @"Failed to fetch device apNonce", v34, v35, v36, v37, v42);
    v24 = v44;

    goto LABEL_46;
  }

  v19 = v18;
  v20 = +[MIBUTatsuVerifier sepNonce];
  if (!v20)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_1000558C8();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_1000558F0();
    }

    v43 = 0;
    sub_100016130(&v43, 100663299, 0, @"Failed to fetch device sepNonce", v38, v39, v40, v41, v42);
    v24 = v43;

LABEL_46:
LABEL_47:

    goto LABEL_19;
  }

  v21 = v20;
  v22 = +[MIBUTatsuVerifier sikaFuse];
  if (!v22)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_1000558A0();
    }

    v23 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "No SikAFuse key detected", buf, 2u);
    }

    v22 = [NSNumber numberWithInt:0];
    [v3 setSikaFuseExists:0];
  }

  [v3 setSerialNumber:v9];
  [v3 setEcid:v11];
  [v3 setBoardID:v13];
  [v3 setChipID:v15];
  [v3 setSecurityDomain:v17];
  [v3 setApNonce:v19];
  [v3 setSepNonce:v21];
  [v3 setSikaFuse:v22];
  [v3 setProductionMode:MGGetBoolAnswer()];
  [v3 setSecurityMode:MGGetBoolAnswer()];
  [v3 setUidMode:0];

  v24 = 0;
LABEL_19:
  [v3 setError:v24];

  return v3;
}

- (id)_handleStartUpdate:(id)update
{
  updateCopy = update;
  v5 = objc_opt_new();
  if (qword_1000B84A8[0] != -1)
  {
    sub_100055BDC();
  }

  v6 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Handling start update command...", buf, 2u);
  }

  v9 = 0;
  [(MIBUNFCController *)self _verifyTatsuTicketFromCmd:updateCopy error:&v9];

  v7 = v9;
  [v5 setError:v7];

  return v5;
}

- (id)_handleStatusUpdate:(id)update
{
  v4 = objc_opt_new();
  if (qword_1000B84A8[0] != -1)
  {
    sub_100055BF0();
  }

  v5 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling status update command...", buf, 2u);
  }

  delegate = [(MIBUNFCController *)self delegate];
  deviceStatus = [delegate deviceStatus];
  [v4 setStatus:deviceStatus];

  v8 = +[MIBUDeviceController sharedInstance];
  osVersion = [v8 osVersion];
  [v4 setOsVersion:osVersion];

  osVersion2 = [v4 osVersion];

  if (osVersion2)
  {
    v18 = MGCopyAnswer();
    [v4 setSerialNumber:v18];

    serialNumber = [v4 serialNumber];

    if (serialNumber)
    {
      v27 = +[MIBUDeviceController sharedInstance];
      buildVersion = [v27 buildVersion];
      [v4 setBuildVersion:buildVersion];

      buildVersion2 = [v4 buildVersion];

      if (buildVersion2)
      {
        v37 = 0;
        goto LABEL_9;
      }

      v39 = &v40;
      sub_100055C04(&v40, v30, v31, v32, v33, v34, v35, v36);
    }

    else
    {
      v39 = &v41;
      sub_100055C28(&v41, v20, v21, v22, v23, v24, v25, v26);
    }
  }

  else
  {
    v39 = &v42;
    sub_100055C4C(&v42, v11, v12, v13, v14, v15, v16, v17);
  }

  v37 = *v39;
LABEL_9:
  [v4 setError:v37];

  return v4;
}

- (id)_handleRetryAfter:(id)after
{
  afterCopy = after;
  v5 = objc_opt_new();
  if (qword_1000B84A8[0] != -1)
  {
    sub_100055C70();
  }

  v6 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Handling retry after command...", buf, 2u);
  }

  payload = [afterCopy payload];

  v8 = [payload objectForKey:@"RetryAfter"];

  if (v8)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100055C84();
    }

    v13 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Retry after %{public}@ seconds", buf, 0xCu);
    }

    session = [(MIBUNFCController *)self session];
    [session stopListening];

    [v8 doubleValue];
    [(MIBUNFCController *)self _restartSessionAfter:0 forceTerminate:&stru_10009A430 andCompletion:?];
    v15 = 0;
  }

  else
  {
    v17 = 0;
    sub_100016130(&v17, 0x80000000, 0, @"Request does not contain %{public}@ in payload", v9, v10, v11, v12, @"RetryAfter");
    v15 = v17;
  }

  [v5 setError:v15];

  return v5;
}

- (id)_handleHeartbeat:(id)heartbeat
{
  heartbeatCopy = heartbeat;
  objc_initWeak(&location, self);
  v5 = objc_opt_new();
  if (qword_1000B84A8[0] != -1)
  {
    sub_100055D34();
  }

  v6 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Handling heartbeat command...", buf, 2u);
  }

  *buf = 0;
  v34 = buf;
  v35 = 0x3032000000;
  v36 = sub_10000FC0C;
  v37 = sub_10000FC1C;
  payload = [heartbeatCopy payload];
  v38 = [payload objectForKey:@"HeartbeatPeriod"];

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10000FC0C;
  v31 = sub_10000FC1C;
  payload2 = [heartbeatCopy payload];
  v32 = [payload2 objectForKey:@"HeartbeatTimeout"];

  if (!*(v34 + 5))
  {
    v26 = 0;
    sub_100016130(&v26, 0x80000000, 0, @"Request does not contain %{public}@ in payload", v9, v10, v11, v12, @"HeartbeatPeriod");
    v22 = v26;
LABEL_17:
    v20 = v22;
    goto LABEL_12;
  }

  if (!v28[5])
  {
    v25 = 0;
    sub_100016130(&v25, 0x80000000, 0, @"Request does not contain %{public}@ in payload", v9, v10, v11, v12, @"HeartbeatTimeout");
    v22 = v25;
    goto LABEL_17;
  }

  if (qword_1000B84A8[0] != -1)
  {
    sub_100055D5C();
  }

  v13 = qword_1000B84A0;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    [*(v34 + 5) doubleValue];
    v15 = v14;
    [v28[5] doubleValue];
    *v40 = 134218240;
    v41 = v15;
    v42 = 2048;
    v43 = v16;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Heartbeat period = %lfs; timeout = %lfs", v40, 0x16u);
  }

  session = [(MIBUNFCController *)self session];
  [session stopListening];

  [*(v34 + 5) doubleValue];
  v19 = v18;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100011B40;
  v23[3] = &unk_10009A520;
  v23[4] = self;
  objc_copyWeak(&v24, &location);
  v23[5] = buf;
  v23[6] = &v27;
  [(MIBUNFCController *)self _restartSessionAfter:0 forceTerminate:v23 andCompletion:v19];
  objc_destroyWeak(&v24);
  v20 = 0;
LABEL_12:
  [v5 setError:v20];
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(buf, 8);
  objc_destroyWeak(&location);

  return v5;
}

- (id)_handleInstallUpdate:(id *)update
{
  v3 = objc_opt_new();
  [v3 setError:0];
  if (qword_1000B84A8[0] != -1)
  {
    sub_100055E60();
  }

  v4 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Handling Install Update command...", v6, 2u);
  }

  return v3;
}

- (id)_handleNetworkInfo:(id *)info
{
  v3 = objc_opt_new();
  if (qword_1000B84A8[0] != -1)
  {
    sub_100055E74();
  }

  v4 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Handling network info command...", v7, 2u);
  }

  v5 = +[MIBUNetworkInfo queryNetworkInfo];
  [v3 setNetworkInfo:v5];

  return v3;
}

- (id)_handleConfigureNFC:(id)c
{
  cCopy = c;
  v5 = objc_opt_new();
  if (![(MIBUNFCController *)self isNFCConfigured])
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100055E88();
    }

    v7 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Handling configureNFC command...", buf, 2u);
    }

    payload = [cCopy payload];
    v9 = [payload objectForKey:@"NFCInactivityTimeout"];

    if (v9)
    {
      [v9 doubleValue];
      if (v18 >= 0.0)
      {
        if (qword_1000B84A8[0] != -1)
        {
          sub_100055E9C();
        }

        v19 = qword_1000B84A0;
        if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v27 = v9;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "nfcInactivity timeout: %{public}@ seconds", buf, 0xCu);
        }

        [v9 doubleValue];
        [(MIBUNFCController *)self setNfcInactivityTimeout:?];
        [(MIBUNFCController *)self nfcInactivityTimeout];
        [(MIBUNFCController *)self _startNFCInactivityTimer:?];
        [(MIBUNFCController *)self setIsNFCConfigured:1];
        v20 = 0;
        goto LABEL_18;
      }

      v24 = 0;
      sub_100016130(&v24, 0x1000000, 0, @"nfcInactivity timeout value must be >= 0", v14, v15, v16, v17, v23);
      v22 = v24;
    }

    else
    {
      v25 = 0;
      sub_100016130(&v25, 0x80000000, 0, @"Request does not contain %{public}@ in payload", v10, v11, v12, v13, @"NFCInactivityTimeout");
      v22 = v25;
    }

    v20 = v22;
LABEL_18:
    [v5 setError:v20];

    goto LABEL_19;
  }

  if (qword_1000B84A8[0] != -1)
  {
    sub_100055EC4();
  }

  v6 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "NFC has already been configured. Rejecting command", buf, 2u);
  }

  [v5 setRejected:1];
LABEL_19:

  return v5;
}

- (id)_handleStartDiag:(id)diag
{
  diagCopy = diag;
  v5 = objc_opt_new();
  if (qword_1000B84A8[0] != -1)
  {
    sub_100055ED8();
  }

  v6 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Handling start diag command...", buf, 2u);
  }

  v9 = 0;
  [(MIBUNFCController *)self _verifyTatsuTicketFromCmd:diagCopy error:&v9];

  v7 = v9;
  [v5 setError:v7];

  return v5;
}

- (void)_startHCESession:(id *)session
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10000FC0C;
  v26 = sub_10000FC1C;
  v27 = 0;
  session = [(MIBUNFCController *)self session];
  running = [session running];

  if (running)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100055F88();
    }

    v7 = qword_1000B84A0;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      *buf = 138543362;
      v29 = v8;
      v9 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Not starting %{public}@ since HCE session already running", buf, 0xCu);
    }
  }

  else
  {
    v10 = dispatch_semaphore_create(0);
    v11 = dispatch_time(0, 60000000000);
    session2 = [(MIBUNFCController *)self session];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10005548C;
    v19[3] = &unk_10009A628;
    v21 = &v22;
    v19[4] = self;
    v7 = v10;
    v20 = v7;
    [session2 startHCESessionWithCompletion:v19];

    if (dispatch_semaphore_wait(v7, v11))
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_100055EEC();
      }

      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
      {
        sub_100055F14();
      }

      v17 = (v23 + 5);
      obj = v23[5];
      sub_100016130(&obj, 83886086, 0, @"NFC termination wait timed out after %ds", v13, v14, v15, v16, 60);
      objc_storeStrong(v17, obj);
    }
  }

  if (session)
  {
    *session = v23[5];
  }

  _Block_object_dispose(&v22, 8);
}

- (void)forceTerminateSession:(id *)session
{
  session = [(MIBUNFCController *)self session];
  running = [session running];

  if (running)
  {
    v7 = dispatch_semaphore_create(0);
    [(MIBUNFCController *)self setNfcTerminationSem:v7];

    v8 = dispatch_time(0, 60000000000);
    session2 = [(MIBUNFCController *)self session];
    v20 = 0;
    [session2 endHCESession:&v20];
    v10 = v20;

    if (!v10)
    {
      nfcTerminationSem = [(MIBUNFCController *)self nfcTerminationSem];
      v12 = dispatch_semaphore_wait(nfcTerminationSem, v8);

      if (v12)
      {
        if (qword_1000B84A8[0] != -1)
        {
          sub_100055FC4();
        }

        if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
        {
          sub_100055618();
        }

        v19 = 0;
        sub_100016130(&v19, 83886087, 0, @"NFC termination wait timed out after %ds", v13, v14, v15, v16, 60);
        v10 = v19;
      }

      else
      {
        v10 = 0;
      }
    }

    [(MIBUNFCController *)self setNfcTerminationSem:0];
    if (session)
    {
      v18 = v10;
      *session = v10;
    }
  }

  else
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100055FB0();
    }

    v17 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Session isn't running. No need for forced termination", buf, 2u);
    }
  }
}

- (void)_restartSessionAfter:(double)after forceTerminate:(BOOL)terminate andCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = [(MIBUNFCController *)self queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100012EC4;
  v11[3] = &unk_10009A6F0;
  objc_copyWeak(v13, &location);
  terminateCopy = terminate;
  v13[1] = *&after;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_async(queue, v11);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

- (void)_startSessionRestartTimer:(double)timer error:(id *)error
{
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000131C8;
  v6[3] = &unk_10009A738;
  v6[4] = self;
  objc_copyWeak(v7, &location);
  v7[1] = *&timer;
  dispatch_async(&_dispatch_main_q, v6);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

- (void)_stopSessionRestartTimer
{
  sessionRestartTimer = [(MIBUNFCController *)self sessionRestartTimer];
  objc_sync_enter(sessionRestartTimer);
  sessionRestartTimer2 = [(MIBUNFCController *)self sessionRestartTimer];

  if (sessionRestartTimer2)
  {
    if (![(MIBUNFCController *)self _isHeartbeatMode])
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_100056094();
      }

      v5 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Stopping session restart timer", v7, 2u);
      }
    }

    sessionRestartTimer3 = [(MIBUNFCController *)self sessionRestartTimer];
    [sessionRestartTimer3 invalidate];

    [(MIBUNFCController *)self setSessionRestartTimer:0];
  }

  objc_sync_exit(sessionRestartTimer);
}

- (BOOL)_isHeartbeatMode
{
  heartbeatConnectionSem = [(MIBUNFCController *)self heartbeatConnectionSem];
  v3 = heartbeatConnectionSem != 0;

  return v3;
}

- (void)_restartSession:(id)session
{
  if (![(MIBUNFCController *)self _isHeartbeatMode])
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_1000560A8();
    }

    v4 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Session Restart Timer Fired! Restarting HCE Session...", v5, 2u);
    }
  }

  [(MIBUNFCController *)self _startHCESession:0];
}

- (void)_startNFCInactivityTimer:(double)timer
{
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100013794;
  v5[3] = &unk_10009A738;
  v5[4] = self;
  objc_copyWeak(v6, &location);
  v6[1] = *&timer;
  dispatch_async(&_dispatch_main_q, v5);
  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

- (void)_nfcInactivityTimeoutHandler:(id)handler
{
  handlerCopy = handler;
  if (qword_1000B84A8[0] != -1)
  {
    sub_1000560BC();
  }

  v5 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NFC Inactivity timer Fired!", v9, 2u);
  }

  [(MIBUNFCController *)self _stopNFCInactivityTimer];
  delegate = [(MIBUNFCController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(MIBUNFCController *)self delegate];
    [delegate2 nfcActivityDidTimeout];
  }
}

- (void)_stopNFCInactivityTimer
{
  nfcInactivityTimer = [(MIBUNFCController *)self nfcInactivityTimer];

  if (nfcInactivityTimer)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_1000560D0();
    }

    v4 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stopping nfcInactivityTimer...", v6, 2u);
    }

    nfcInactivityTimer2 = [(MIBUNFCController *)self nfcInactivityTimer];
    [nfcInactivityTimer2 invalidate];

    [(MIBUNFCController *)self setNfcInactivityTimer:0];
  }
}

- (void)_resetNFCInactivityTimer
{
  nfcInactivityTimer = [(MIBUNFCController *)self nfcInactivityTimer];

  if (nfcInactivityTimer)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_1000560E4();
    }

    v4 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stopping isNFCActive Timer...", &v9, 2u);
    }

    nfcInactivityTimer2 = [(MIBUNFCController *)self nfcInactivityTimer];
    [nfcInactivityTimer2 invalidate];

    [(MIBUNFCController *)self setNfcInactivityTimer:0];
  }

  if (qword_1000B84A8[0] != -1)
  {
    sub_1000560F8();
  }

  v6 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    [(MIBUNFCController *)self nfcInactivityTimeout];
    v9 = 134217984;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Starting nfcInactivityTimer with timeout: %lf", &v9, 0xCu);
  }

  [(MIBUNFCController *)self nfcInactivityTimeout];
  [(MIBUNFCController *)self _startNFCInactivityTimer:?];
}

- (void)_verifyTatsuTicketFromCmd:(id)cmd error:(id *)error
{
  payload = [cmd payload];
  v6 = [payload objectForKey:@"TatsuTicket"];

  if (qword_1000B84A8[0] != -1)
  {
    sub_100056120();
  }

  v7 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received Tatsu ticket: %{public}@", buf, 0xCu);
  }

  if (v6)
  {
    v19 = 0;
    v15 = &v19;
    [MIBUTatsuVerifier verifyTatsuEntitlement:v6 error:&v19];
  }

  else
  {
    v15 = &v20;
    sub_100056134(&v20, v8, v9, v10, v11, v12, v13, v14);
  }

  v16 = *v15;
  v17 = v16;
  if (v16)
  {
    v18 = v16;
    *error = v17;
  }
}

- (void)start:(id *)start
{
  v7 = 0;
  [(MIBUNFCController *)self _startHCESession:&v7];
  v5 = v7;
  if (!v5)
  {
    [(MIBUNFCController *)self setTerminated:0];
  }

  if (start)
  {
    v6 = v5;
    *start = v5;
  }
}

@end