@interface MIBUWiFiHelper
+ (MIBUWiFiHelper)sharedInstance;
- (BOOL)_associateFromScanResult:(id)a3 password:(id)a4 error:(id *)a5;
- (BOOL)_isWiFiConnected;
- (MIBUWiFiHelper)init;
- (id)_scanForSSID:(id)a3 skipEAP:(BOOL)a4 error:(id *)a5;
- (void)_connectToWiFiWithError:(id *)a3;
- (void)_dispatchRetryOperation;
- (void)_enableWiFi:(id *)a3;
- (void)_initNetworkMonitor;
- (void)_retryWiFiConnection:(id *)a3;
- (void)_waitForWiFiConnection:(id *)a3;
- (void)_waitForWiFiInterface:(id *)a3;
- (void)connectAndMonitor:(id *)a3;
- (void)disassociate;
- (void)setWiFiSSID:(id)a3 andChannel:(unint64_t)a4;
- (void)stopMonitor;
@end

@implementation MIBUWiFiHelper

- (MIBUWiFiHelper)init
{
  v9.receiver = self;
  v9.super_class = MIBUWiFiHelper;
  v2 = [(MIBUWiFiHelper *)&v9 init];
  v3 = v2;
  if (v2)
  {
    [(MIBUWiFiHelper *)v2 setWifiInterface:0];
    [(MIBUWiFiHelper *)v3 setConnectionSem:0];
    [(MIBUWiFiHelper *)v3 setNetworkMonitor:0];
    v4 = dispatch_queue_create([@"com.apple.mobileinboxupdate.wifi_monitor_queue" UTF8String], 0);
    [(MIBUWiFiHelper *)v3 setNetworkMonitorQueue:v4];

    v5 = objc_alloc_init(NSOperationQueue);
    [(MIBUWiFiHelper *)v3 setWifiRetryQueue:v5];

    v6 = [(MIBUWiFiHelper *)v3 wifiRetryQueue];
    [v6 setMaxConcurrentOperationCount:1];

    v7 = [(MIBUWiFiHelper *)v3 wifiRetryQueue];
    [v7 setName:@"com.apple.mobileinboxupdate.service_queue"];

    [(MIBUWiFiHelper *)v3 setLocalRetryDelay:3.0];
    [(MIBUWiFiHelper *)v3 setLocalRetryLimit:5];
    [(MIBUWiFiHelper *)v3 setGlobalRetryInterval:60.0];
    [(MIBUWiFiHelper *)v3 setGlobalRetryCount:0];
    [(MIBUWiFiHelper *)v3 setWifiSSID:@"neon"];
    [(MIBUWiFiHelper *)v3 setWifiChannel:0];
  }

  return v3;
}

+ (MIBUWiFiHelper)sharedInstance
{
  if (qword_1000B8430 != -1)
  {
    sub_10005EC4C();
  }

  v3 = qword_1000B8438;

  return v3;
}

- (void)connectAndMonitor:(id *)a3
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1000337D4;
  v23 = sub_1000337E4;
  v24 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = sub_1000337D4;
  v17[4] = sub_1000337E4;
  v18 = self;
  v4 = v18;
  objc_sync_enter(v4);
  v5 = [(MIBUWiFiHelper *)v4 networkMonitor];
  v6 = v5 == 0;

  if (v6)
  {
    v7 = objc_alloc_init(CWFInterface);
    [(MIBUWiFiHelper *)v4 setWifiInterface:v7];

    v8 = [(MIBUWiFiHelper *)v4 wifiInterface];
    [v8 activate];

    [(MIBUWiFiHelper *)v4 _initNetworkMonitor];
    v9 = [(MIBUWiFiHelper *)v4 wifiRetryQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100033854;
    v16[3] = &unk_10009D7A0;
    v16[4] = v17;
    v16[5] = &v19;
    v10 = [NSBlockOperation blockOperationWithBlock:v16];
    [v9 addOperation:v10];

    v11 = [(MIBUWiFiHelper *)v4 wifiRetryQueue];
    [v11 waitUntilAllOperationsAreFinished];
  }

  else
  {
    v14 = sub_10005EC60(v25);
    v11 = v25[0];
    if (v14)
    {
      v15 = objc_opt_class();
      sub_10005ECC8(v15, v25, v11);
    }
  }

  objc_sync_exit(v4);
  if (a3)
  {
    *a3 = v20[5];
  }

  if (v20[5])
  {
    v12 = [(MIBUWiFiHelper *)v4 wifiInterface];
    [v12 invalidate];

    v13 = [(MIBUWiFiHelper *)v4 networkMonitor];
    nw_path_monitor_cancel(v13);

    [(MIBUWiFiHelper *)v4 setNetworkMonitor:0];
  }

  _Block_object_dispose(v17, 8);

  _Block_object_dispose(&v19, 8);
}

- (void)disassociate
{
  [(MIBUWiFiHelper *)self stopMonitor];
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005ED34();
  }

  v3 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Disassociating with WiFi...", v5, 2u);
  }

  v4 = [(MIBUWiFiHelper *)self wifiInterface];
  [v4 disassociateWithReason:2];
}

- (void)stopMonitor
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MIBUWiFiHelper *)v2 networkMonitor];

  if (v3)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005ED48();
    }

    v4 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stopping network monitoring...", v6, 2u);
    }

    v5 = [(MIBUWiFiHelper *)v2 networkMonitor];
    nw_path_monitor_cancel(v5);

    [(MIBUWiFiHelper *)v2 setNetworkMonitor:0];
  }

  objc_sync_exit(v2);
}

- (void)setWiFiSSID:(id)a3 andChannel:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  v8 = v6;
  if (!v6)
  {
    v8 = [(MIBUWiFiHelper *)v7 wifiSSID];
  }

  [(MIBUWiFiHelper *)v7 setWifiSSID:v8];
  if (!v6)
  {
  }

  [(MIBUWiFiHelper *)v7 setWifiChannel:a4];
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005ED5C();
  }

  v9 = qword_1000B84A0;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(MIBUWiFiHelper *)v7 wifiSSID];
    v11 = 138543618;
    v12 = v10;
    v13 = 2050;
    v14 = [(MIBUWiFiHelper *)v7 wifiChannel];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Setting for wifi with SSID: %{public}@ and channel: %{public}lu", &v11, 0x16u);
  }

  objc_sync_exit(v7);
}

- (void)_initNetworkMonitor
{
  v3 = nw_path_monitor_create();
  [(MIBUWiFiHelper *)self setNetworkMonitor:v3];

  v4 = [(MIBUWiFiHelper *)self networkMonitor];
  v5 = [(MIBUWiFiHelper *)self networkMonitorQueue];
  nw_path_monitor_set_queue(v4, v5);

  v6 = [(MIBUWiFiHelper *)self networkMonitor];
  update_handler[0] = _NSConcreteStackBlock;
  update_handler[1] = 3221225472;
  update_handler[2] = sub_100033DE0;
  update_handler[3] = &unk_10009D868;
  update_handler[4] = self;
  nw_path_monitor_set_update_handler(v6, update_handler);

  v7 = [(MIBUWiFiHelper *)self networkMonitor];
  nw_path_monitor_start(v7);
}

- (void)_dispatchRetryOperation
{
  v2 = self;
  objc_sync_enter(v2);
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = sub_1000337D4;
  v9[4] = sub_1000337E4;
  v3 = v2;
  v10 = v3;
  v4 = [(MIBUWiFiHelper *)v3 wifiRetryQueue];
  v5 = [v4 operationCount];

  if (v5)
  {
    sub_10005EDAC();
  }

  else
  {
    v6 = [(MIBUWiFiHelper *)v3 wifiRetryQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100034250;
    v8[3] = &unk_10009B0A8;
    v8[4] = v9;
    v7 = [NSBlockOperation blockOperationWithBlock:v8];
    [v6 addOperation:v7];
  }

  _Block_object_dispose(v9, 8);

  objc_sync_exit(v3);
}

- (void)_retryWiFiConnection:(id *)a3
{
  v5 = 0;
  v6 = 5;
  v7 = 1;
  while (1)
  {

    if (qword_1000B84A8[0] != -1)
    {
      sub_10005EF1C();
    }

    v8 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Attempting to connect to WiFi (attempt %lu)...", buf, 0xCu);
    }

    if ([(MIBUWiFiHelper *)self _isWiFiConnected])
    {
      break;
    }

    [(MIBUWiFiHelper *)self setGlobalRetryCount:[(MIBUWiFiHelper *)self globalRetryCount]+ 1];
    v25 = 0;
    [(MIBUWiFiHelper *)self _enableWiFi:&v25];
    v9 = v25;
    if (!v9)
    {
      if ([(MIBUWiFiHelper *)self collectMetrics])
      {
        v10 = +[MIBUDataCollector sharedInstance];
        [v10 addKeyEvent:@"SSUWiFiInfraConnInit"];
      }

      v24 = 0;
      [(MIBUWiFiHelper *)self _connectToWiFiWithError:&v24];
      v9 = v24;
      if (!v9)
      {
        v23 = 0;
        [(MIBUWiFiHelper *)self _waitForWiFiConnection:&v23];
        v9 = v23;
        if (!v9)
        {
          if ([(MIBUWiFiHelper *)self collectMetrics])
          {
            v11 = +[MIBUDataCollector sharedInstance];
            [v11 addKeyEvent:@"SSUWiFiInfraConnStart"];
          }

          v5 = 0;
LABEL_23:
          if (!a3)
          {
            goto LABEL_25;
          }

LABEL_24:
          v12 = v5;
          *a3 = v5;
          goto LABEL_25;
        }
      }
    }

    v5 = v9;
    if (v6 >= 2)
    {
      v22 = arc4random_uniform(5u);
      if (qword_1000B84A8[0] != -1)
      {
        sub_10005EF44();
      }

      log = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        *&buf[4] = v5;
        v27 = 1024;
        LODWORD(v28) = v22;
        _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to connect to wifi with error %{public}@, waiting for %us", buf, 0x12u);
      }

      sleep(v22);
    }

    --v6;
    if (++v7 == 6)
    {
      goto LABEL_23;
    }
  }

  sub_10005EF6C(buf);
  v5 = *buf;
  if (a3)
  {
    goto LABEL_24;
  }

LABEL_25:
  if ([(MIBUWiFiHelper *)self collectMetrics])
  {
    v13 = &off_100099E30;
    if (!v5)
    {
      v13 = &off_100099E38;
    }

    v14 = *v13;
    v15 = +[MIBUDataCollector sharedInstance];
    v29 = @"WiFiConnectRetryTotalCount";
    v16 = [NSNumber numberWithUnsignedInteger:[(MIBUWiFiHelper *)self globalRetryCount]];
    v30 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    [v15 addKeyEvent:v14 additionalData:v17];
  }

  if (qword_1000B84A8[0] != -1)
  {
    sub_10005EFF8();
  }

  v18 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v18;
    v20 = [(MIBUWiFiHelper *)self globalRetryCount];
    *buf = 138543618;
    *&buf[4] = v5;
    v27 = 2048;
    v28 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Connection retry finished with error: %{public}@, total retry count: %lu", buf, 0x16u);
  }
}

- (BOOL)_isWiFiConnected
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v2 = nw_parameters_create();
  nw_parameters_set_multipath_service(v2, nw_multipath_service_handover);
  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100034C18;
  v7[3] = &unk_10009D990;
  v4 = nw_path_evaluator_copy_path();
  v8 = v4;
  v9 = &v10;
  nw_path_enumerate_interfaces(v4, v7);
  v5 = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v5;
}

- (void)_enableWiFi:(id *)a3
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005F020();
  }

  v5 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Enabling WiFi interface on device", buf, 2u);
  }

  v21 = 0;
  [(MIBUWiFiHelper *)self _waitForWiFiInterface:&v21];
  v6 = v21;
  if (v6)
  {
    sub_10005F034(a3, v6, buf, v7, v8, v9, v10, v11);
LABEL_10:
    v14 = *buf;
    goto LABEL_7;
  }

  v12 = [(MIBUWiFiHelper *)self wifiInterface];
  v20 = 0;
  v13 = [v12 setPower:1 error:&v20];
  v14 = v20;

  if ((v13 & 1) == 0)
  {
    sub_10005F124(a3, v14, buf, v15, v16, v17, v18, v19);
    goto LABEL_10;
  }

LABEL_7:
}

- (void)_connectToWiFiWithError:(id *)a3
{
  v5 = [(MIBUWiFiHelper *)self wifiSSID];
  if (os_variant_has_internal_content())
  {
    v6 = +[MIBUTestPreferences sharedInstance];
    v7 = [v6 wifiSSID];

    if (v7)
    {
      v8 = +[MIBUTestPreferences sharedInstance];
      v9 = [v8 wifiSSID];

      if (qword_1000B84A8[0] != -1)
      {
        sub_10005F214();
      }

      v10 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v35 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Overriding wifi SSID to: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v9 = v5;
    }

    v12 = +[MIBUTestPreferences sharedInstance];
    v13 = [v12 wifiPassword];

    if (v13)
    {
      v14 = +[MIBUTestPreferences sharedInstance];
      v11 = [v14 wifiPassword];

      if (qword_1000B84A8[0] != -1)
      {
        sub_10005F228();
      }

      v15 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v35 = v11;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Use wifi password: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v11 = 0;
    }

    v5 = v9;
  }

  else
  {
    v11 = 0;
  }

  v33 = 0;
  v16 = [(MIBUWiFiHelper *)self _scanForSSID:v5 skipEAP:v11 != 0 error:&v33];
  v17 = v33;
  v22 = v17;
  if (v16)
  {
    v32 = v17;
    v23 = [(MIBUWiFiHelper *)self _associateFromScanResult:v16 password:v11 error:&v32];
    v24 = v32;

    if (v23)
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_10005F314();
      }

      v29 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v35 = v5;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Successfully connected to SSID: %{public}@!", buf, 0xCu);
      }
    }

    else
    {
      sub_100016130(a3, 1879048194, v24, @"Failed to associate to ssid", v25, v26, v27, v28, v32);
      if (qword_1000B84A8[0] != -1)
      {
        sub_10005F250();
      }

      v31 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
      {
        sub_10005F278(v5, v31, self);
      }
    }

    v22 = v24;
  }

  else
  {
    sub_100016130(a3, 1879048193, v17, @"Failed to find matching ssid", v18, v19, v20, v21, v32);
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005F33C();
    }

    v30 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_10005F364(v5, v30, self);
    }
  }
}

- (void)_waitForWiFiInterface:(id *)a3
{
  v5 = objc_alloc_init(NSCondition);
  v6 = [NSDate dateWithTimeIntervalSinceNow:5.0];
  v7 = [(MIBUWiFiHelper *)self wifiInterface];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100035784;
  v21[3] = &unk_10009DAD8;
  v8 = v5;
  v22 = v8;
  [v7 setEventHandler:v21];

  v9 = [(MIBUWiFiHelper *)self wifiInterface];
  v20 = 0;
  v10 = [v9 startMonitoringEventType:10 error:&v20];
  v11 = v20;

  if ((v10 & 1) == 0)
  {
    sub_10005F400(v11);
    if (!a3)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  [v8 lock];
  while (1)
  {
    v12 = [(MIBUWiFiHelper *)self wifiInterface];
    v13 = [v12 interfaceName];

    if (v13)
    {
      break;
    }

    if (qword_1000B84A8[0] != -1)
    {
      sub_10005F4D4();
    }

    v14 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Wifi interface is not intialized, waiting for  CWFEventTypeInterfaceAdded event.", buf, 2u);
    }

    if (([v8 waitUntilDate:v6] & 1) == 0)
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_10005F4FC();
      }

      v15 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Wait for wifi interface initialization timed out after 5 seconds", buf, 2u);
      }

      break;
    }
  }

  [v8 unlock];
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005F524();
  }

  v16 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Wifi interface is initialized!", buf, 2u);
  }

  v17 = [(MIBUWiFiHelper *)self wifiInterface];
  [v17 stopMonitoringEventType:10];

  if (a3)
  {
LABEL_18:
    v18 = v11;
    *a3 = v11;
  }

LABEL_19:
}

- (void)_waitForWiFiConnection:(id *)a3
{
  v5 = dispatch_semaphore_create(0);
  [(MIBUWiFiHelper *)self setConnectionSem:v5];

  v6 = dispatch_time(0, 30000000000);
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005F560();
  }

  v7 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = 30;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Waiting %ds for network connection...", buf, 8u);
  }

  v8 = [(MIBUWiFiHelper *)self connectionSem];
  v9 = dispatch_semaphore_wait(v8, v6);

  if (v9)
  {
    if ([(MIBUWiFiHelper *)self _isWiFiConnected])
    {
      v9 = 0;
    }

    else
    {
      sub_10005F574(&v11, buf);
      v9 = *buf;
    }
  }

  [(MIBUWiFiHelper *)self setConnectionSem:0];
  if (a3)
  {
    v10 = v9;
    *a3 = v9;
  }
}

- (id)_scanForSSID:(id)a3 skipEAP:(BOOL)a4 error:(id *)a5
{
  v5 = a4;
  v7 = a3;
  v8 = objc_alloc_init(CWFScanParameters);
  v46 = [(MIBUWiFiHelper *)self localRetryLimit];
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005F698();
  }

  v9 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    *buf = 138543618;
    v55 = v7;
    v56 = 2050;
    v57 = [(MIBUWiFiHelper *)self wifiChannel];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Scanning for wifi with SSID: %{public}@ and channel: %{public}lu", buf, 0x16u);
  }

  if ([(MIBUWiFiHelper *)self wifiChannel])
  {
    v11 = objc_alloc_init(NSMutableArray);
    v12 = objc_alloc_init(CWFChannel);
    [v12 setChannel:{-[MIBUWiFiHelper wifiChannel](self, "wifiChannel")}];
    [v12 setFlags:{objc_msgSend(v12, "flags") | 0x10}];
    [v11 addObject:v12];
    [v8 setChannels:v11];
  }

  [v8 setIncludeHiddenNetworks:1];
  [v8 setSSID:v7];
  [v8 setBSSType:2];
  v47 = 0;
  v45 = 0;
  v43 = self;
  v44 = v8;
  while (1)
  {
    v13 = v47;
    v14 = [(MIBUWiFiHelper *)self wifiInterface];
    v52 = v45;
    v47 = [v14 performScanWithParameters:v8 error:&v52];
    v15 = v52;

    v45 = v15;
    if (!v15)
    {
      break;
    }

    if (qword_1000B84A8[0] != -1)
    {
      sub_10005F6AC();
    }

    v16 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v55 = v7;
      v56 = 2114;
      v57 = v15;
      v58 = 2048;
      v59 = v46 - 1;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to scan for SSID: %{public}@ with error:%{public}@ (%lu tries remaining)", buf, 0x20u);
    }

    v17 = 2;
LABEL_42:
    sleep(v17);
    if (!--v46)
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_10005F74C();
      }

      v35 = a5;
      v36 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v55 = v7;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "All wifi scan tries exhausted; %{public}@ not found", buf, 0xCu);
      }

      v22 = 0;
      v37 = v45;
      if (!a5)
      {
        goto LABEL_49;
      }

LABEL_48:
      v38 = v37;
      *v35 = v37;
      goto LABEL_49;
    }
  }

  if (qword_1000B84A8[0] != -1)
  {
    sub_10005F6D4();
  }

  v18 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v55 = v47;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "WiFi scan found results: %{public}@", buf, 0xCu);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v19 = v47;
  v20 = [v19 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (!v20)
  {

LABEL_37:
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005F724();
    }

    v31 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v31;
      [(MIBUWiFiHelper *)self localRetryDelay];
      *buf = 138543874;
      v55 = v7;
      v56 = 2048;
      v57 = v33;
      v58 = 2048;
      v59 = v46 - 1;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "SSID %{public}@ not found, waiting for %lfs and rescan (%lu tries remaining)", buf, 0x20u);
    }

    [(MIBUWiFiHelper *)self localRetryDelay];
    v17 = v34;
    goto LABEL_42;
  }

  v21 = v20;
  v22 = 0;
  v23 = *v49;
  do
  {
    v24 = 0;
    do
    {
      if (*v49 != v23)
      {
        objc_enumerationMutation(v19);
      }

      v25 = *(*(&v48 + 1) + 8 * v24);
      v26 = [v25 networkName];
      if ([v26 isEqualToString:v7])
      {
        v27 = [v25 isEAP];

        if ((v27 & 1) != 0 || v5)
        {
          if (v22)
          {
            v28 = [v25 RSSI];
            if (v28 > [v22 RSSI])
            {
              v29 = v25;

              v22 = v29;
            }
          }

          else
          {
            v22 = v25;
          }
        }
      }

      else
      {
      }

      v24 = v24 + 1;
    }

    while (v21 != v24);
    v30 = [v19 countByEnumeratingWithState:&v48 objects:v53 count:16];
    v21 = v30;
  }

  while (v30);

  self = v43;
  v8 = v44;
  if (!v22)
  {
    goto LABEL_37;
  }

  if (qword_1000B84A8[0] != -1)
  {
    sub_10005F6FC();
  }

  v35 = a5;
  v41 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v55 = v22;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Found scan result with highest RSSI: %{public}@", buf, 0xCu);
  }

  v37 = 0;
  if (a5)
  {
    goto LABEL_48;
  }

LABEL_49:
  v39 = v22;

  return v22;
}

- (BOOL)_associateFromScanResult:(id)a3 password:(id)a4 error:(id *)a5
{
  v34 = a3;
  v32 = a4;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = sub_1000337D4;
  v53 = sub_1000337E4;
  v54 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_1000337D4;
  v47 = sub_1000337E4;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_1000337D4;
  v41 = sub_1000337E4;
  v42 = 0;
  v33 = objc_opt_new();
  v8 = [(MIBUWiFiHelper *)self localRetryLimit];
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005F774();
  }

  v9 = qword_1000B84A0;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v34 networkName];
    *buf = 138543362;
    v56 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Associating with SSID: %{public}@", buf, 0xCu);
  }

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100036B08;
  v36[3] = &unk_10009DCA0;
  v36[4] = &v49;
  v36[5] = &v43;
  v36[6] = &v37;
  [MIBUCertHelper trustCertificatesWithCompletion:v36];
  v11 = v50[5];
  if (v11)
  {
    v14 = 0;
    v26 = 0;
    *a5 = v11;
  }

  else
  {
    [v33 setObject:&off_1000A9BF0 forKey:@"AcceptEAPTypes"];
    v12 = v44[5];
    if (v12 && [v12 count])
    {
      [v33 setObject:v44[5] forKey:@"TLSTrustedCertificates"];
    }

    v13 = v38[5];
    if (v13 && [v13 count])
    {
      [v33 setObject:v38[5] forKey:@"TLSTrustedServerNames"];
    }

    v14 = objc_alloc_init(CWFAssocParameters);
    [v14 setScanResult:v34];
    [v14 setPassword:v32];
    [v14 setRememberUponSuccessfulAssociation:0];
    v15 = objc_alloc_init(CWFNetworkProfile);
    [v14 setKnownNetworkProfile:v15];

    v16 = [v14 knownNetworkProfile];
    [v16 setHiddenState:1];

    v17 = [v14 knownNetworkProfile];
    v18 = v17;
    if (v32)
    {
      v19 = 0;
    }

    else
    {
      v19 = v33;
    }

    [v17 setEAPProfile:{v19, v32}];

    if (qword_1000B84A8[0] != -1)
    {
      sub_10005F79C();
    }

    v20 = qword_1000B84A0;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v14 knownNetworkProfile];
      v22 = [v21 EAPProfile];
      *buf = 138543362;
      v56 = v22;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "EAP Profile: %{public}@", buf, 0xCu);
    }

    v23 = v8 - 1;
    do
    {
      v24 = [(MIBUWiFiHelper *)self wifiInterface];
      v25 = v50;
      obj = v50[5];
      v26 = [v24 associateWithParameters:v14 error:&obj];
      objc_storeStrong(v25 + 5, obj);

      if (v26)
      {
        break;
      }

      if (qword_1000B84A8[0] != -1)
      {
        sub_10005F7C4();
      }

      v27 = qword_1000B84A0;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v34 networkName];
        [(MIBUWiFiHelper *)self localRetryDelay];
        *buf = 138543874;
        v56 = v28;
        v57 = 2048;
        v58 = v29;
        v59 = 2048;
        v60 = v23;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Failed to associate to %{public}@, waiting for %lfs and re-associate (%lu tries remaining)", buf, 0x20u);
      }

      [(MIBUWiFiHelper *)self localRetryDelay];
      sleep(v30);
      --v23;
    }

    while (v23 != -1);
  }

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);

  _Block_object_dispose(&v49, 8);
  return v26;
}

@end