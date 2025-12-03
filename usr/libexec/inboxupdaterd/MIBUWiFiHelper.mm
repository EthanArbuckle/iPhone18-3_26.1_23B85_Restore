@interface MIBUWiFiHelper
+ (MIBUWiFiHelper)sharedInstance;
- (BOOL)_associateFromScanResult:(id)result password:(id)password error:(id *)error;
- (BOOL)_isWiFiConnected;
- (MIBUWiFiHelper)init;
- (id)_scanForSSID:(id)d skipEAP:(BOOL)p error:(id *)error;
- (void)_connectToWiFiWithError:(id *)error;
- (void)_dispatchRetryOperation;
- (void)_enableWiFi:(id *)fi;
- (void)_initNetworkMonitor;
- (void)_retryWiFiConnection:(id *)connection;
- (void)_waitForWiFiConnection:(id *)connection;
- (void)_waitForWiFiInterface:(id *)interface;
- (void)connectAndMonitor:(id *)monitor;
- (void)disassociate;
- (void)setWiFiSSID:(id)d andChannel:(unint64_t)channel;
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

    wifiRetryQueue = [(MIBUWiFiHelper *)v3 wifiRetryQueue];
    [wifiRetryQueue setMaxConcurrentOperationCount:1];

    wifiRetryQueue2 = [(MIBUWiFiHelper *)v3 wifiRetryQueue];
    [wifiRetryQueue2 setName:@"com.apple.mobileinboxupdate.service_queue"];

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

- (void)connectAndMonitor:(id *)monitor
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
  selfCopy = self;
  v4 = selfCopy;
  objc_sync_enter(v4);
  networkMonitor = [(MIBUWiFiHelper *)v4 networkMonitor];
  v6 = networkMonitor == 0;

  if (v6)
  {
    v7 = objc_alloc_init(CWFInterface);
    [(MIBUWiFiHelper *)v4 setWifiInterface:v7];

    wifiInterface = [(MIBUWiFiHelper *)v4 wifiInterface];
    [wifiInterface activate];

    [(MIBUWiFiHelper *)v4 _initNetworkMonitor];
    wifiRetryQueue = [(MIBUWiFiHelper *)v4 wifiRetryQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100033854;
    v16[3] = &unk_10009D7A0;
    v16[4] = v17;
    v16[5] = &v19;
    v10 = [NSBlockOperation blockOperationWithBlock:v16];
    [wifiRetryQueue addOperation:v10];

    wifiRetryQueue2 = [(MIBUWiFiHelper *)v4 wifiRetryQueue];
    [wifiRetryQueue2 waitUntilAllOperationsAreFinished];
  }

  else
  {
    v14 = sub_10005EC60(v25);
    wifiRetryQueue2 = v25[0];
    if (v14)
    {
      v15 = objc_opt_class();
      sub_10005ECC8(v15, v25, wifiRetryQueue2);
    }
  }

  objc_sync_exit(v4);
  if (monitor)
  {
    *monitor = v20[5];
  }

  if (v20[5])
  {
    wifiInterface2 = [(MIBUWiFiHelper *)v4 wifiInterface];
    [wifiInterface2 invalidate];

    networkMonitor2 = [(MIBUWiFiHelper *)v4 networkMonitor];
    nw_path_monitor_cancel(networkMonitor2);

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

  wifiInterface = [(MIBUWiFiHelper *)self wifiInterface];
  [wifiInterface disassociateWithReason:2];
}

- (void)stopMonitor
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  networkMonitor = [(MIBUWiFiHelper *)selfCopy networkMonitor];

  if (networkMonitor)
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

    networkMonitor2 = [(MIBUWiFiHelper *)selfCopy networkMonitor];
    nw_path_monitor_cancel(networkMonitor2);

    [(MIBUWiFiHelper *)selfCopy setNetworkMonitor:0];
  }

  objc_sync_exit(selfCopy);
}

- (void)setWiFiSSID:(id)d andChannel:(unint64_t)channel
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  wifiSSID = dCopy;
  if (!dCopy)
  {
    wifiSSID = [(MIBUWiFiHelper *)selfCopy wifiSSID];
  }

  [(MIBUWiFiHelper *)selfCopy setWifiSSID:wifiSSID];
  if (!dCopy)
  {
  }

  [(MIBUWiFiHelper *)selfCopy setWifiChannel:channel];
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005ED5C();
  }

  v9 = qword_1000B84A0;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    wifiSSID2 = [(MIBUWiFiHelper *)selfCopy wifiSSID];
    v11 = 138543618;
    v12 = wifiSSID2;
    v13 = 2050;
    wifiChannel = [(MIBUWiFiHelper *)selfCopy wifiChannel];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Setting for wifi with SSID: %{public}@ and channel: %{public}lu", &v11, 0x16u);
  }

  objc_sync_exit(selfCopy);
}

- (void)_initNetworkMonitor
{
  v3 = nw_path_monitor_create();
  [(MIBUWiFiHelper *)self setNetworkMonitor:v3];

  networkMonitor = [(MIBUWiFiHelper *)self networkMonitor];
  networkMonitorQueue = [(MIBUWiFiHelper *)self networkMonitorQueue];
  nw_path_monitor_set_queue(networkMonitor, networkMonitorQueue);

  networkMonitor2 = [(MIBUWiFiHelper *)self networkMonitor];
  update_handler[0] = _NSConcreteStackBlock;
  update_handler[1] = 3221225472;
  update_handler[2] = sub_100033DE0;
  update_handler[3] = &unk_10009D868;
  update_handler[4] = self;
  nw_path_monitor_set_update_handler(networkMonitor2, update_handler);

  networkMonitor3 = [(MIBUWiFiHelper *)self networkMonitor];
  nw_path_monitor_start(networkMonitor3);
}

- (void)_dispatchRetryOperation
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = sub_1000337D4;
  v9[4] = sub_1000337E4;
  v3 = selfCopy;
  v10 = v3;
  wifiRetryQueue = [(MIBUWiFiHelper *)v3 wifiRetryQueue];
  operationCount = [wifiRetryQueue operationCount];

  if (operationCount)
  {
    sub_10005EDAC();
  }

  else
  {
    wifiRetryQueue2 = [(MIBUWiFiHelper *)v3 wifiRetryQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100034250;
    v8[3] = &unk_10009B0A8;
    v8[4] = v9;
    v7 = [NSBlockOperation blockOperationWithBlock:v8];
    [wifiRetryQueue2 addOperation:v7];
  }

  _Block_object_dispose(v9, 8);

  objc_sync_exit(v3);
}

- (void)_retryWiFiConnection:(id *)connection
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
          if (!connection)
          {
            goto LABEL_25;
          }

LABEL_24:
          v12 = v5;
          *connection = v5;
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
  if (connection)
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
    globalRetryCount = [(MIBUWiFiHelper *)self globalRetryCount];
    *buf = 138543618;
    *&buf[4] = v5;
    v27 = 2048;
    v28 = globalRetryCount;
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

- (void)_enableWiFi:(id *)fi
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
    sub_10005F034(fi, v6, buf, v7, v8, v9, v10, v11);
LABEL_10:
    v14 = *buf;
    goto LABEL_7;
  }

  wifiInterface = [(MIBUWiFiHelper *)self wifiInterface];
  v20 = 0;
  v13 = [wifiInterface setPower:1 error:&v20];
  v14 = v20;

  if ((v13 & 1) == 0)
  {
    sub_10005F124(fi, v14, buf, v15, v16, v17, v18, v19);
    goto LABEL_10;
  }

LABEL_7:
}

- (void)_connectToWiFiWithError:(id *)error
{
  wifiSSID = [(MIBUWiFiHelper *)self wifiSSID];
  if (os_variant_has_internal_content())
  {
    v6 = +[MIBUTestPreferences sharedInstance];
    wifiSSID2 = [v6 wifiSSID];

    if (wifiSSID2)
    {
      v8 = +[MIBUTestPreferences sharedInstance];
      wifiSSID3 = [v8 wifiSSID];

      if (qword_1000B84A8[0] != -1)
      {
        sub_10005F214();
      }

      v10 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v35 = wifiSSID3;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Overriding wifi SSID to: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      wifiSSID3 = wifiSSID;
    }

    v12 = +[MIBUTestPreferences sharedInstance];
    wifiPassword = [v12 wifiPassword];

    if (wifiPassword)
    {
      v14 = +[MIBUTestPreferences sharedInstance];
      wifiPassword2 = [v14 wifiPassword];

      if (qword_1000B84A8[0] != -1)
      {
        sub_10005F228();
      }

      v15 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v35 = wifiPassword2;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Use wifi password: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      wifiPassword2 = 0;
    }

    wifiSSID = wifiSSID3;
  }

  else
  {
    wifiPassword2 = 0;
  }

  v33 = 0;
  v16 = [(MIBUWiFiHelper *)self _scanForSSID:wifiSSID skipEAP:wifiPassword2 != 0 error:&v33];
  v17 = v33;
  v22 = v17;
  if (v16)
  {
    v32 = v17;
    v23 = [(MIBUWiFiHelper *)self _associateFromScanResult:v16 password:wifiPassword2 error:&v32];
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
        v35 = wifiSSID;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Successfully connected to SSID: %{public}@!", buf, 0xCu);
      }
    }

    else
    {
      sub_100016130(error, 1879048194, v24, @"Failed to associate to ssid", v25, v26, v27, v28, v32);
      if (qword_1000B84A8[0] != -1)
      {
        sub_10005F250();
      }

      v31 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
      {
        sub_10005F278(wifiSSID, v31, self);
      }
    }

    v22 = v24;
  }

  else
  {
    sub_100016130(error, 1879048193, v17, @"Failed to find matching ssid", v18, v19, v20, v21, v32);
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005F33C();
    }

    v30 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_10005F364(wifiSSID, v30, self);
    }
  }
}

- (void)_waitForWiFiInterface:(id *)interface
{
  v5 = objc_alloc_init(NSCondition);
  v6 = [NSDate dateWithTimeIntervalSinceNow:5.0];
  wifiInterface = [(MIBUWiFiHelper *)self wifiInterface];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100035784;
  v21[3] = &unk_10009DAD8;
  v8 = v5;
  v22 = v8;
  [wifiInterface setEventHandler:v21];

  wifiInterface2 = [(MIBUWiFiHelper *)self wifiInterface];
  v20 = 0;
  v10 = [wifiInterface2 startMonitoringEventType:10 error:&v20];
  v11 = v20;

  if ((v10 & 1) == 0)
  {
    sub_10005F400(v11);
    if (!interface)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  [v8 lock];
  while (1)
  {
    wifiInterface3 = [(MIBUWiFiHelper *)self wifiInterface];
    interfaceName = [wifiInterface3 interfaceName];

    if (interfaceName)
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

  wifiInterface4 = [(MIBUWiFiHelper *)self wifiInterface];
  [wifiInterface4 stopMonitoringEventType:10];

  if (interface)
  {
LABEL_18:
    v18 = v11;
    *interface = v11;
  }

LABEL_19:
}

- (void)_waitForWiFiConnection:(id *)connection
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

  connectionSem = [(MIBUWiFiHelper *)self connectionSem];
  v9 = dispatch_semaphore_wait(connectionSem, v6);

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
  if (connection)
  {
    v10 = v9;
    *connection = v9;
  }
}

- (id)_scanForSSID:(id)d skipEAP:(BOOL)p error:(id *)error
{
  pCopy = p;
  dCopy = d;
  v8 = objc_alloc_init(CWFScanParameters);
  localRetryLimit = [(MIBUWiFiHelper *)self localRetryLimit];
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005F698();
  }

  v9 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    *buf = 138543618;
    v55 = dCopy;
    v56 = 2050;
    wifiChannel = [(MIBUWiFiHelper *)self wifiChannel];
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
  [v8 setSSID:dCopy];
  [v8 setBSSType:2];
  v47 = 0;
  v45 = 0;
  selfCopy = self;
  v44 = v8;
  while (1)
  {
    v13 = v47;
    wifiInterface = [(MIBUWiFiHelper *)self wifiInterface];
    v52 = v45;
    v47 = [wifiInterface performScanWithParameters:v8 error:&v52];
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
      v55 = dCopy;
      v56 = 2114;
      wifiChannel = v15;
      v58 = 2048;
      v59 = localRetryLimit - 1;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to scan for SSID: %{public}@ with error:%{public}@ (%lu tries remaining)", buf, 0x20u);
    }

    v17 = 2;
LABEL_42:
    sleep(v17);
    if (!--localRetryLimit)
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_10005F74C();
      }

      errorCopy2 = error;
      v36 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v55 = dCopy;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "All wifi scan tries exhausted; %{public}@ not found", buf, 0xCu);
      }

      v22 = 0;
      v37 = v45;
      if (!error)
      {
        goto LABEL_49;
      }

LABEL_48:
      v38 = v37;
      *errorCopy2 = v37;
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
      v55 = dCopy;
      v56 = 2048;
      wifiChannel = v33;
      v58 = 2048;
      v59 = localRetryLimit - 1;
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
      networkName = [v25 networkName];
      if ([networkName isEqualToString:dCopy])
      {
        isEAP = [v25 isEAP];

        if ((isEAP & 1) != 0 || pCopy)
        {
          if (v22)
          {
            rSSI = [v25 RSSI];
            if (rSSI > [v22 RSSI])
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

  self = selfCopy;
  v8 = v44;
  if (!v22)
  {
    goto LABEL_37;
  }

  if (qword_1000B84A8[0] != -1)
  {
    sub_10005F6FC();
  }

  errorCopy2 = error;
  v41 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v55 = v22;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Found scan result with highest RSSI: %{public}@", buf, 0xCu);
  }

  v37 = 0;
  if (error)
  {
    goto LABEL_48;
  }

LABEL_49:
  v39 = v22;

  return v22;
}

- (BOOL)_associateFromScanResult:(id)result password:(id)password error:(id *)error
{
  resultCopy = result;
  passwordCopy = password;
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
  localRetryLimit = [(MIBUWiFiHelper *)self localRetryLimit];
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005F774();
  }

  v9 = qword_1000B84A0;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    networkName = [resultCopy networkName];
    *buf = 138543362;
    v56 = networkName;
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
    *error = v11;
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
    [v14 setScanResult:resultCopy];
    [v14 setPassword:passwordCopy];
    [v14 setRememberUponSuccessfulAssociation:0];
    v15 = objc_alloc_init(CWFNetworkProfile);
    [v14 setKnownNetworkProfile:v15];

    knownNetworkProfile = [v14 knownNetworkProfile];
    [knownNetworkProfile setHiddenState:1];

    knownNetworkProfile2 = [v14 knownNetworkProfile];
    v18 = knownNetworkProfile2;
    if (passwordCopy)
    {
      v19 = 0;
    }

    else
    {
      v19 = v33;
    }

    [knownNetworkProfile2 setEAPProfile:{v19, passwordCopy}];

    if (qword_1000B84A8[0] != -1)
    {
      sub_10005F79C();
    }

    v20 = qword_1000B84A0;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      knownNetworkProfile3 = [v14 knownNetworkProfile];
      eAPProfile = [knownNetworkProfile3 EAPProfile];
      *buf = 138543362;
      v56 = eAPProfile;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "EAP Profile: %{public}@", buf, 0xCu);
    }

    v23 = localRetryLimit - 1;
    do
    {
      wifiInterface = [(MIBUWiFiHelper *)self wifiInterface];
      v25 = v50;
      obj = v50[5];
      v26 = [wifiInterface associateWithParameters:v14 error:&obj];
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
        networkName2 = [resultCopy networkName];
        [(MIBUWiFiHelper *)self localRetryDelay];
        *buf = 138543874;
        v56 = networkName2;
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