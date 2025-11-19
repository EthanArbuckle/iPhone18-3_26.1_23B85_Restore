@interface NeRDWiFiManager
- (BOOL)checkForNetworkReachability:(BOOL)a3 timeOutInSeconds:(unsigned int)a4;
- (BOOL)connectToSSID:(id)a3 password:(id)a4;
- (id)initManager;
- (id)wifiSSIDForDevice:(__WiFiDeviceClient *)a3;
- (void)dealloc;
@end

@implementation NeRDWiFiManager

- (id)initManager
{
  v6.receiver = self;
  v6.super_class = NeRDWiFiManager;
  v2 = [(NeRDWiFiManager *)&v6 init];
  if (v2)
  {
    v3 = [[SUCoreLog alloc] initWithCategory:@"NeRDNetworkManager"];
    [(NeRDWiFiManager *)v2 setManagerLogger:v3];

    v4 = dispatch_queue_create("com.apple.nerd.SystemConfigQueue", 0);
    [(NeRDWiFiManager *)v2 setSystemConfigDispatchQueue:v4];

    [(NeRDWiFiManager *)v2 setNetworkIsReachable:0];
    managerClient = 0;
  }

  return v2;
}

- (void)dealloc
{
  v3 = [(NeRDWiFiManager *)self managerLogger];
  v4 = [v3 oslog];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Releasing WifiManagerClient object\n", buf, 2u);
  }

  if (managerClient)
  {
    CFRelease(managerClient);
    managerClient = 0;
  }

  v5.receiver = self;
  v5.super_class = NeRDWiFiManager;
  [(NeRDWiFiManager *)&v5 dealloc];
}

- (BOOL)checkForNetworkReachability:(BOOL)a3 timeOutInSeconds:(unsigned int)a4
{
  v5 = a3;
  flags = 0;
  address = xmmword_100081AD0;
  v7 = dispatch_semaphore_create(0);
  v8 = networkAvailable;
  networkAvailable = v7;

  v9 = SCNetworkReachabilityCreateWithAddress(kCFAllocatorDefault, &address);
  SCNetworkReachabilityGetFlags(v9, &flags);
  if ((flags & 2) != 0)
  {
    [(NeRDWiFiManager *)self setNetworkIsReachable:1];
  }

  else
  {
    [(NeRDWiFiManager *)self setNetworkIsReachable:0];
    if (v5)
    {
      v22.version = 0;
      v22.info = self;
      v22.retain = 0;
      v22.release = 0;
      v22.copyDescription = &_CFCopyDescription;
      SCNetworkReachabilitySetCallback(v9, networkReachabilityCallBack, &v22);
      v10 = [(NeRDWiFiManager *)self systemConfigDispatchQueue];
      SCNetworkReachabilitySetDispatchQueue(v9, v10);

      v11 = [(NeRDWiFiManager *)self managerLogger];
      v12 = [v11 oslog];

      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (a4)
      {
        if (v13)
        {
          *buf = 67109120;
          v25 = a4;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Network connection not yet available..Will wait for %u seconds", buf, 8u);
        }

        v14 = 1000000000 * a4;
      }

      else
      {
        if (v13)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Network connection not yet available. Waiting forever for it to come up", buf, 2u);
        }

        v14 = -1;
      }

      v15 = networkAvailable;
      v16 = dispatch_time(0, v14);
      dispatch_semaphore_wait(v15, v16);
      SCNetworkReachabilitySetDispatchQueue(v9, 0);
    }
  }

  if ([(NeRDWiFiManager *)self networkIsReachable]&& !managerClient)
  {
    v17 = [(NeRDWiFiManager *)self managerLogger];
    v18 = [v17 oslog];

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Creating WifiManagerClient for the first time in checkForNetworkReachability\n", buf, 2u);
    }

    managerClient = WiFiManagerClientCreate();
    if (!managerClient)
    {
      v19 = [(NeRDWiFiManager *)self managerLogger];
      v20 = [v19 oslog];

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Failed to create WiFiManagerClient in checkForNetworkReachability", buf, 2u);
      }
    }
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return [(NeRDWiFiManager *)self networkIsReachable];
}

- (BOOL)connectToSSID:(id)a3 password:(id)a4
{
  v6 = a3;
  v57 = a4;
  if (!managerClient)
  {
    v7 = [(NeRDWiFiManager *)self managerLogger];
    v8 = [v7 oslog];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Creating WifiManagerClient for the first time\n", &buf, 2u);
    }

    managerClient = WiFiManagerClientCreate();
    if (!managerClient)
    {
      v23 = [(NeRDWiFiManager *)self managerLogger];
      v12 = [v23 oslog];

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failed to create WiFiManagerClient", &buf, 2u);
      }

      goto LABEL_17;
    }
  }

  v9 = [(NeRDWiFiManager *)self managerLogger];
  v10 = [v9 oslog];

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Successfully created managerClient with type background\n", &buf, 2u);
  }

  CFRunLoopGetCurrent();
  WiFiManagerClientScheduleWithRunLoop();
  v11 = WiFiManagerClientCopyDevices();
  v12 = v11;
  if (!v11 || ![v11 count])
  {
    v19 = [(NeRDWiFiManager *)self managerLogger];
    v20 = [v19 oslog];

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v12;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Failed to get valid device list from WiFIManager: %{public}@", &buf, 0xCu);
    }

    goto LABEL_16;
  }

  v13 = [v12 objectAtIndex:0];
  if (!v13)
  {
    v24 = [(NeRDWiFiManager *)self managerLogger];
    v20 = [v24 oslog];

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Unable to locate wifiDevice", &buf, 2u);
    }

LABEL_16:

LABEL_17:
    v21 = 0;
    goto LABEL_18;
  }

  v14 = [(NeRDWiFiManager *)self wifiSSIDForDevice:v13];
  v15 = [v14 isEqualToString:v6];
  v16 = [(NeRDWiFiManager *)self managerLogger];
  v17 = [v16 oslog];

  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v18)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Already connected to SSID", &buf, 2u);
    }

    goto LABEL_17;
  }

  if (v18)
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Looking for network with SSID: '%{public}@'", &buf, 0xCu);
  }

  v58 = @"SSID_STR";
  v59 = v6;
  v25 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
  v26 = +[NSMutableArray array];
  v27 = v25;
  v28 = v26;
  v29 = self;
  *&buf = 0;
  v30 = v28;
  *(&buf + 1) = v30;
  Current = CFRunLoopGetCurrent();
  v31 = v29;
  v66 = v31;
  v32 = WiFiDeviceClientScanAsync();
  if (!v32)
  {
    CFRunLoopRunInMode(@"NERD_WIFI_RUN_LOOP", 60.0, 1u);
    v32 = buf;
  }

  if (v32)
  {
    v33 = [(NeRDWiFiManager *)v31 managerLogger];
    v34 = [v33 oslog];

    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v32;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Scan Failure: %d", &buf, 8u);
    }

    goto LABEL_17;
  }

  v56 = [v30 firstObject];
  v35 = [(NeRDWiFiManager *)v31 managerLogger];
  v36 = [v35 oslog];

  v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
  if (!v56)
  {
    if (v37)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Scan did not find a network with matchind ssid", &buf, 2u);
    }

    goto LABEL_17;
  }

  if (v37)
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Scan found a network with a matching SSID", &buf, 2u);
  }

  WiFiNetworkSetPassword();
  v38 = [(NeRDWiFiManager *)v31 managerLogger];
  v39 = [v38 oslog];

  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Attempting to join network '%{public}@'", &buf, 0xCu);
  }

  v40 = v31;
  buf = 0uLL;
  Current = CFRunLoopGetCurrent();
  v41 = v40;
  v66 = v41;
  v42 = WiFiDeviceClientAssociateAsync();
  if (v42)
  {
    v43 = [(NeRDWiFiManager *)v41 managerLogger];
    v44 = [v43 oslog];

    if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_52;
    }

    *v60 = 67109120;
    LODWORD(v61) = v42;
    v45 = "Failed to associate with network: %d";
    v46 = v44;
    v47 = 8;
LABEL_51:
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, v45, v60, v47);
    goto LABEL_52;
  }

  if (CFRunLoopRunInMode(@"NERD_WIFI_RUN_LOOP", 60.0, 1u) != kCFRunLoopRunTimedOut)
  {
    v42 = buf;
    v49 = [(NeRDWiFiManager *)v41 managerLogger];
    v44 = [v49 oslog];

    if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_52;
    }

    v50 = "with error";
    if (!v42)
    {
      v50 = "successfully";
    }

    *v60 = 136446466;
    v61 = v50;
    v62 = 1024;
    v63 = v42;
    v45 = "Join operation completed %{public}s Return:%d";
    v46 = v44;
    v47 = 18;
    goto LABEL_51;
  }

  v48 = [(NeRDWiFiManager *)v41 managerLogger];
  v44 = [v48 oslog];

  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *v60 = 0;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Timed out waiting to join WiFI network", v60, 2u);
  }

  v42 = 0xFFFFFFFFLL;
LABEL_52:

  if (v42)
  {
    v51 = [(NeRDWiFiManager *)v41 managerLogger];
    v52 = [v51 oslog];

    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = wifiErrorString(v42);
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v53;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Error while attempting to join network: %{public}@", &buf, 0xCu);
    }

    goto LABEL_17;
  }

  WiFiManagerClientAddNetwork();
  v54 = [(NeRDWiFiManager *)v41 managerLogger];
  v55 = [v54 oslog];

  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Successfully joined network and updated autojoin list", &buf, 2u);
  }

  v21 = 1;
LABEL_18:

  return v21;
}

- (id)wifiSSIDForDevice:(__WiFiDeviceClient *)a3
{
  v3 = WiFiDeviceClientCopyCurrentNetwork();
  if (v3)
  {
    v4 = v3;
    v5 = [WiFiNetworkGetSSID() copy];
    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end