@interface MIBUNFCController
- (BOOL)_isHeartbeatMode;
- (MIBUNFCController)initWithDelegate:(id)a3;
- (id)_getDispatchTable;
- (id)_handleConfigureNFC:(id)a3;
- (id)_handleDeviceInfo:(id)a3;
- (id)_handleHeartbeat:(id)a3;
- (id)_handleInstallUpdate:(id *)a3;
- (id)_handleNetworkInfo:(id *)a3;
- (id)_handleRetryAfter:(id)a3;
- (id)_handleSelect:(id)a3;
- (id)_handleStartDiag:(id)a3;
- (id)_handleStartUpdate:(id)a3;
- (id)_handleStatusUpdate:(id)a3;
- (id)handleCommand:(id)a3;
- (void)_nfcInactivityTimeoutHandler:(id)a3;
- (void)_resetNFCInactivityTimer;
- (void)_restartSession:(id)a3;
- (void)_restartSessionAfter:(double)a3 forceTerminate:(BOOL)a4 andCompletion:(id)a5;
- (void)_startHCESession:(id *)a3;
- (void)_startNFCInactivityTimer:(double)a3;
- (void)_startSessionRestartTimer:(double)a3 error:(id *)a4;
- (void)_stopNFCInactivityTimer;
- (void)_stopSessionRestartTimer;
- (void)_verifyTatsuTicketFromCmd:(id)a3 error:(id *)a4;
- (void)addObserver:(id)a3;
- (void)forceTerminateSession:(id *)a3;
- (void)removeObserver:(id)a3;
- (void)sessionDidConnect:(id)a3;
- (void)sessionDidEnd:(id)a3;
- (void)sessionDidEndUnexpectedly:(id)a3;
- (void)start:(id *)a3;
- (void)terminate:(id *)a3;
- (void)terminateWithCompletion:(id)a3;
@end

@implementation MIBUNFCController

- (MIBUNFCController)initWithDelegate:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MIBUNFCController;
  v5 = [(MIBUNFCController *)&v12 init];
  if (v5)
  {
    v6 = [[MIBUHCESession alloc] initWithDelegate:v5];
    [(MIBUNFCController *)v5 setSession:v6];

    v7 = [(MIBUNFCController *)v5 _getDispatchTable];
    [(MIBUNFCController *)v5 setDispatchTable:v7];

    [(MIBUNFCController *)v5 setDelegate:v4];
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

- (void)addObserver:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(MIBUNFCController *)v4 observers];
  v6 = [v5 containsObject:v8];

  if ((v6 & 1) == 0)
  {
    v7 = [(MIBUNFCController *)v4 observers];
    [v7 addObject:v8];
  }

  objc_sync_exit(v4);
}

- (void)removeObserver:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(MIBUNFCController *)v4 observers];
  [v5 removeObject:v6];

  objc_sync_exit(v4);
}

- (void)terminate:(id *)a3
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

  if (a3)
  {
    *a3 = v18[5];
  }

  _Block_object_dispose(&v17, 8);
}

- (void)terminateWithCompletion:(id)a3
{
  v4 = a3;
  if ([(MIBUNFCController *)self _isHeartbeatMode])
  {
    v11 = 0;
    v5 = objc_opt_class();
    sub_100016130(&v11, 2147483651, 0, @"Cannot terminate %{public}@ in heartbeat mode", v6, v7, v8, v9, v5);
    v10 = v11;
    if (v4)
    {
      v4[2](v4, v10);
    }
  }

  else
  {
    [(MIBUNFCController *)self setTerminated:1];
    [(MIBUNFCController *)self _restartSessionAfter:0 forceTerminate:v4 andCompletion:0.0];
  }
}

- (id)handleCommand:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 code]);
  v7 = [(MIBUNFCController *)self nfcInactivityTimer];

  if (v7)
  {
    [(MIBUNFCController *)self _resetNFCInactivityTimer];
  }

  v8 = [(MIBUNFCController *)self delegate];
  v9 = [v8 isCommandAllowed:v6];

  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = [(MIBUNFCController *)self dispatchTable];
  v11 = [v10 allKeys];
  v12 = [v11 containsObject:v6];

  if ((v12 & 1) == 0)
  {
    sub_10005568C(v4);
LABEL_15:
    [v5 setRejected:1];
    v16 = v5;
    goto LABEL_13;
  }

  v13 = [(MIBUNFCController *)self dispatchTable];
  v14 = [v13 objectForKey:v6];
  v15 = NSSelectorFromString(v14);

  v16 = ([(MIBUNFCController *)self methodForSelector:v15])(self, v15, v4);

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v17 = [(MIBUNFCController *)self observers];
  v18 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v26 + 1) + 8 * v21);
        v23 = [v16 error];
        [v22 didHandleCommand:v4 withError:v23];

        v21 = v21 + 1;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v19);
  }

LABEL_13:
  v24 = v16;

  return v16;
}

- (void)sessionDidConnect:(id)a3
{
  if ([(MIBUNFCController *)self _isHeartbeatMode])
  {
    v4 = [(MIBUNFCController *)self heartbeatConnectionSem];
    dispatch_semaphore_signal(v4);

    [(MIBUNFCController *)self heartbeatPeriod];

    [(MIBUNFCController *)self _restartSessionAfter:1 forceTerminate:0 andCompletion:?];
  }
}

- (void)sessionDidEnd:(id)a3
{
  v4 = [(MIBUNFCController *)self nfcTerminationSem];

  if (v4)
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

    v6 = [(MIBUNFCController *)self nfcTerminationSem];
    dispatch_semaphore_signal(v6);
  }
}

- (void)sessionDidEndUnexpectedly:(id)a3
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

- (id)_handleSelect:(id)a3
{
  v3 = a3;
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
  v7 = [v3 payload];

  v8 = [v7 objectForKey:@"ApplicationID"];

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

- (id)_handleDeviceInfo:(id)a3
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

- (id)_handleStartUpdate:(id)a3
{
  v4 = a3;
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
  [(MIBUNFCController *)self _verifyTatsuTicketFromCmd:v4 error:&v9];

  v7 = v9;
  [v5 setError:v7];

  return v5;
}

- (id)_handleStatusUpdate:(id)a3
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

  v6 = [(MIBUNFCController *)self delegate];
  v7 = [v6 deviceStatus];
  [v4 setStatus:v7];

  v8 = +[MIBUDeviceController sharedInstance];
  v9 = [v8 osVersion];
  [v4 setOsVersion:v9];

  v10 = [v4 osVersion];

  if (v10)
  {
    v18 = MGCopyAnswer();
    [v4 setSerialNumber:v18];

    v19 = [v4 serialNumber];

    if (v19)
    {
      v27 = +[MIBUDeviceController sharedInstance];
      v28 = [v27 buildVersion];
      [v4 setBuildVersion:v28];

      v29 = [v4 buildVersion];

      if (v29)
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

- (id)_handleRetryAfter:(id)a3
{
  v4 = a3;
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

  v7 = [v4 payload];

  v8 = [v7 objectForKey:@"RetryAfter"];

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

    v14 = [(MIBUNFCController *)self session];
    [v14 stopListening];

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

- (id)_handleHeartbeat:(id)a3
{
  v4 = a3;
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
  v7 = [v4 payload];
  v38 = [v7 objectForKey:@"HeartbeatPeriod"];

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10000FC0C;
  v31 = sub_10000FC1C;
  v8 = [v4 payload];
  v32 = [v8 objectForKey:@"HeartbeatTimeout"];

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

  v17 = [(MIBUNFCController *)self session];
  [v17 stopListening];

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

- (id)_handleInstallUpdate:(id *)a3
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

- (id)_handleNetworkInfo:(id *)a3
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

- (id)_handleConfigureNFC:(id)a3
{
  v4 = a3;
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

    v8 = [v4 payload];
    v9 = [v8 objectForKey:@"NFCInactivityTimeout"];

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

- (id)_handleStartDiag:(id)a3
{
  v4 = a3;
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
  [(MIBUNFCController *)self _verifyTatsuTicketFromCmd:v4 error:&v9];

  v7 = v9;
  [v5 setError:v7];

  return v5;
}

- (void)_startHCESession:(id *)a3
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10000FC0C;
  v26 = sub_10000FC1C;
  v27 = 0;
  v5 = [(MIBUNFCController *)self session];
  v6 = [v5 running];

  if (v6)
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
    v12 = [(MIBUNFCController *)self session];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10005548C;
    v19[3] = &unk_10009A628;
    v21 = &v22;
    v19[4] = self;
    v7 = v10;
    v20 = v7;
    [v12 startHCESessionWithCompletion:v19];

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

  if (a3)
  {
    *a3 = v23[5];
  }

  _Block_object_dispose(&v22, 8);
}

- (void)forceTerminateSession:(id *)a3
{
  v5 = [(MIBUNFCController *)self session];
  v6 = [v5 running];

  if (v6)
  {
    v7 = dispatch_semaphore_create(0);
    [(MIBUNFCController *)self setNfcTerminationSem:v7];

    v8 = dispatch_time(0, 60000000000);
    v9 = [(MIBUNFCController *)self session];
    v20 = 0;
    [v9 endHCESession:&v20];
    v10 = v20;

    if (!v10)
    {
      v11 = [(MIBUNFCController *)self nfcTerminationSem];
      v12 = dispatch_semaphore_wait(v11, v8);

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
    if (a3)
    {
      v18 = v10;
      *a3 = v10;
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

- (void)_restartSessionAfter:(double)a3 forceTerminate:(BOOL)a4 andCompletion:(id)a5
{
  v8 = a5;
  objc_initWeak(&location, self);
  v9 = [(MIBUNFCController *)self queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100012EC4;
  v11[3] = &unk_10009A6F0;
  objc_copyWeak(v13, &location);
  v14 = a4;
  v13[1] = *&a3;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(v9, v11);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

- (void)_startSessionRestartTimer:(double)a3 error:(id *)a4
{
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000131C8;
  v6[3] = &unk_10009A738;
  v6[4] = self;
  objc_copyWeak(v7, &location);
  v7[1] = *&a3;
  dispatch_async(&_dispatch_main_q, v6);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

- (void)_stopSessionRestartTimer
{
  v3 = [(MIBUNFCController *)self sessionRestartTimer];
  objc_sync_enter(v3);
  v4 = [(MIBUNFCController *)self sessionRestartTimer];

  if (v4)
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

    v6 = [(MIBUNFCController *)self sessionRestartTimer];
    [v6 invalidate];

    [(MIBUNFCController *)self setSessionRestartTimer:0];
  }

  objc_sync_exit(v3);
}

- (BOOL)_isHeartbeatMode
{
  v2 = [(MIBUNFCController *)self heartbeatConnectionSem];
  v3 = v2 != 0;

  return v3;
}

- (void)_restartSession:(id)a3
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

- (void)_startNFCInactivityTimer:(double)a3
{
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100013794;
  v5[3] = &unk_10009A738;
  v5[4] = self;
  objc_copyWeak(v6, &location);
  v6[1] = *&a3;
  dispatch_async(&_dispatch_main_q, v5);
  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

- (void)_nfcInactivityTimeoutHandler:(id)a3
{
  v4 = a3;
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
  v6 = [(MIBUNFCController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(MIBUNFCController *)self delegate];
    [v8 nfcActivityDidTimeout];
  }
}

- (void)_stopNFCInactivityTimer
{
  v3 = [(MIBUNFCController *)self nfcInactivityTimer];

  if (v3)
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

    v5 = [(MIBUNFCController *)self nfcInactivityTimer];
    [v5 invalidate];

    [(MIBUNFCController *)self setNfcInactivityTimer:0];
  }
}

- (void)_resetNFCInactivityTimer
{
  v3 = [(MIBUNFCController *)self nfcInactivityTimer];

  if (v3)
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

    v5 = [(MIBUNFCController *)self nfcInactivityTimer];
    [v5 invalidate];

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

- (void)_verifyTatsuTicketFromCmd:(id)a3 error:(id *)a4
{
  v5 = [a3 payload];
  v6 = [v5 objectForKey:@"TatsuTicket"];

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
    *a4 = v17;
  }
}

- (void)start:(id *)a3
{
  v7 = 0;
  [(MIBUNFCController *)self _startHCESession:&v7];
  v5 = v7;
  if (!v5)
  {
    [(MIBUNFCController *)self setTerminated:0];
  }

  if (a3)
  {
    v6 = v5;
    *a3 = v5;
  }
}

@end