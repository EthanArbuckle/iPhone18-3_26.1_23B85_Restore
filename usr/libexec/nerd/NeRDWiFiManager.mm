@interface NeRDWiFiManager
- (BOOL)checkForNetworkReachability:(BOOL)reachability timeOutInSeconds:(unsigned int)seconds;
- (BOOL)connectToSSID:(id)d password:(id)password;
- (id)initManager;
- (id)wifiSSIDForDevice:(__WiFiDeviceClient *)device;
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
  managerLogger = [(NeRDWiFiManager *)self managerLogger];
  oslog = [managerLogger oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Releasing WifiManagerClient object\n", buf, 2u);
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

- (BOOL)checkForNetworkReachability:(BOOL)reachability timeOutInSeconds:(unsigned int)seconds
{
  reachabilityCopy = reachability;
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
    if (reachabilityCopy)
    {
      v22.version = 0;
      v22.info = self;
      v22.retain = 0;
      v22.release = 0;
      v22.copyDescription = &_CFCopyDescription;
      SCNetworkReachabilitySetCallback(v9, networkReachabilityCallBack, &v22);
      systemConfigDispatchQueue = [(NeRDWiFiManager *)self systemConfigDispatchQueue];
      SCNetworkReachabilitySetDispatchQueue(v9, systemConfigDispatchQueue);

      managerLogger = [(NeRDWiFiManager *)self managerLogger];
      oslog = [managerLogger oslog];

      v13 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
      if (seconds)
      {
        if (v13)
        {
          *buf = 67109120;
          secondsCopy = seconds;
          _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Network connection not yet available..Will wait for %u seconds", buf, 8u);
        }

        v14 = 1000000000 * seconds;
      }

      else
      {
        if (v13)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Network connection not yet available. Waiting forever for it to come up", buf, 2u);
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
    managerLogger2 = [(NeRDWiFiManager *)self managerLogger];
    oslog2 = [managerLogger2 oslog];

    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, oslog2, OS_LOG_TYPE_DEFAULT, "Creating WifiManagerClient for the first time in checkForNetworkReachability\n", buf, 2u);
    }

    managerClient = WiFiManagerClientCreate();
    if (!managerClient)
    {
      managerLogger3 = [(NeRDWiFiManager *)self managerLogger];
      oslog3 = [managerLogger3 oslog];

      if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, oslog3, OS_LOG_TYPE_DEFAULT, "Failed to create WiFiManagerClient in checkForNetworkReachability", buf, 2u);
      }
    }
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return [(NeRDWiFiManager *)self networkIsReachable];
}

- (BOOL)connectToSSID:(id)d password:(id)password
{
  dCopy = d;
  passwordCopy = password;
  if (!managerClient)
  {
    managerLogger = [(NeRDWiFiManager *)self managerLogger];
    oslog = [managerLogger oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Creating WifiManagerClient for the first time\n", &buf, 2u);
    }

    managerClient = WiFiManagerClientCreate();
    if (!managerClient)
    {
      managerLogger2 = [(NeRDWiFiManager *)self managerLogger];
      oslog2 = [managerLogger2 oslog];

      if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, oslog2, OS_LOG_TYPE_DEFAULT, "Failed to create WiFiManagerClient", &buf, 2u);
      }

      goto LABEL_17;
    }
  }

  managerLogger3 = [(NeRDWiFiManager *)self managerLogger];
  oslog3 = [managerLogger3 oslog];

  if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, oslog3, OS_LOG_TYPE_DEFAULT, "Successfully created managerClient with type background\n", &buf, 2u);
  }

  CFRunLoopGetCurrent();
  WiFiManagerClientScheduleWithRunLoop();
  v11 = WiFiManagerClientCopyDevices();
  oslog2 = v11;
  if (!v11 || ![v11 count])
  {
    managerLogger4 = [(NeRDWiFiManager *)self managerLogger];
    oslog4 = [managerLogger4 oslog];

    if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = oslog2;
      _os_log_impl(&_mh_execute_header, oslog4, OS_LOG_TYPE_DEFAULT, "Failed to get valid device list from WiFIManager: %{public}@", &buf, 0xCu);
    }

    goto LABEL_16;
  }

  v13 = [oslog2 objectAtIndex:0];
  if (!v13)
  {
    managerLogger5 = [(NeRDWiFiManager *)self managerLogger];
    oslog4 = [managerLogger5 oslog];

    if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, oslog4, OS_LOG_TYPE_DEFAULT, "Unable to locate wifiDevice", &buf, 2u);
    }

LABEL_16:

LABEL_17:
    v21 = 0;
    goto LABEL_18;
  }

  v14 = [(NeRDWiFiManager *)self wifiSSIDForDevice:v13];
  v15 = [v14 isEqualToString:dCopy];
  managerLogger6 = [(NeRDWiFiManager *)self managerLogger];
  oslog5 = [managerLogger6 oslog];

  v18 = os_log_type_enabled(oslog5, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v18)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, oslog5, OS_LOG_TYPE_DEFAULT, "Already connected to SSID", &buf, 2u);
    }

    goto LABEL_17;
  }

  if (v18)
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = dCopy;
    _os_log_impl(&_mh_execute_header, oslog5, OS_LOG_TYPE_DEFAULT, "Looking for network with SSID: '%{public}@'", &buf, 0xCu);
  }

  v58 = @"SSID_STR";
  v59 = dCopy;
  v25 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
  v26 = +[NSMutableArray array];
  v27 = v25;
  v28 = v26;
  selfCopy = self;
  *&buf = 0;
  v30 = v28;
  *(&buf + 1) = v30;
  Current = CFRunLoopGetCurrent();
  v31 = selfCopy;
  v66 = v31;
  v32 = WiFiDeviceClientScanAsync();
  if (!v32)
  {
    CFRunLoopRunInMode(@"NERD_WIFI_RUN_LOOP", 60.0, 1u);
    v32 = buf;
  }

  if (v32)
  {
    managerLogger7 = [(NeRDWiFiManager *)v31 managerLogger];
    oslog6 = [managerLogger7 oslog];

    if (os_log_type_enabled(oslog6, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v32;
      _os_log_impl(&_mh_execute_header, oslog6, OS_LOG_TYPE_DEFAULT, "Scan Failure: %d", &buf, 8u);
    }

    goto LABEL_17;
  }

  firstObject = [v30 firstObject];
  managerLogger8 = [(NeRDWiFiManager *)v31 managerLogger];
  oslog7 = [managerLogger8 oslog];

  v37 = os_log_type_enabled(oslog7, OS_LOG_TYPE_DEFAULT);
  if (!firstObject)
  {
    if (v37)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, oslog7, OS_LOG_TYPE_DEFAULT, "Scan did not find a network with matchind ssid", &buf, 2u);
    }

    goto LABEL_17;
  }

  if (v37)
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, oslog7, OS_LOG_TYPE_DEFAULT, "Scan found a network with a matching SSID", &buf, 2u);
  }

  WiFiNetworkSetPassword();
  managerLogger9 = [(NeRDWiFiManager *)v31 managerLogger];
  oslog8 = [managerLogger9 oslog];

  if (os_log_type_enabled(oslog8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = dCopy;
    _os_log_impl(&_mh_execute_header, oslog8, OS_LOG_TYPE_DEFAULT, "Attempting to join network '%{public}@'", &buf, 0xCu);
  }

  v40 = v31;
  buf = 0uLL;
  Current = CFRunLoopGetCurrent();
  v41 = v40;
  v66 = v41;
  v42 = WiFiDeviceClientAssociateAsync();
  if (v42)
  {
    managerLogger10 = [(NeRDWiFiManager *)v41 managerLogger];
    oslog9 = [managerLogger10 oslog];

    if (!os_log_type_enabled(oslog9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_52;
    }

    *v60 = 67109120;
    LODWORD(v61) = v42;
    v45 = "Failed to associate with network: %d";
    v46 = oslog9;
    v47 = 8;
LABEL_51:
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, v45, v60, v47);
    goto LABEL_52;
  }

  if (CFRunLoopRunInMode(@"NERD_WIFI_RUN_LOOP", 60.0, 1u) != kCFRunLoopRunTimedOut)
  {
    v42 = buf;
    managerLogger11 = [(NeRDWiFiManager *)v41 managerLogger];
    oslog9 = [managerLogger11 oslog];

    if (!os_log_type_enabled(oslog9, OS_LOG_TYPE_DEFAULT))
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
    v46 = oslog9;
    v47 = 18;
    goto LABEL_51;
  }

  managerLogger12 = [(NeRDWiFiManager *)v41 managerLogger];
  oslog9 = [managerLogger12 oslog];

  if (os_log_type_enabled(oslog9, OS_LOG_TYPE_DEFAULT))
  {
    *v60 = 0;
    _os_log_impl(&_mh_execute_header, oslog9, OS_LOG_TYPE_DEFAULT, "Timed out waiting to join WiFI network", v60, 2u);
  }

  v42 = 0xFFFFFFFFLL;
LABEL_52:

  if (v42)
  {
    managerLogger13 = [(NeRDWiFiManager *)v41 managerLogger];
    oslog10 = [managerLogger13 oslog];

    if (os_log_type_enabled(oslog10, OS_LOG_TYPE_DEFAULT))
    {
      v53 = wifiErrorString(v42);
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v53;
      _os_log_impl(&_mh_execute_header, oslog10, OS_LOG_TYPE_DEFAULT, "Error while attempting to join network: %{public}@", &buf, 0xCu);
    }

    goto LABEL_17;
  }

  WiFiManagerClientAddNetwork();
  managerLogger14 = [(NeRDWiFiManager *)v41 managerLogger];
  oslog11 = [managerLogger14 oslog];

  if (os_log_type_enabled(oslog11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, oslog11, OS_LOG_TYPE_DEFAULT, "Successfully joined network and updated autojoin list", &buf, 2u);
  }

  v21 = 1;
LABEL_18:

  return v21;
}

- (id)wifiSSIDForDevice:(__WiFiDeviceClient *)device
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