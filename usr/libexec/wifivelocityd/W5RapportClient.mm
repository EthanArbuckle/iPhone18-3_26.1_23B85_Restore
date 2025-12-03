@interface W5RapportClient
- (BOOL)_configureDiscoveryClient;
- (W5RapportClient)init;
- (id)sendMessageToDevice:(id)device request:(id)request;
- (void)_handleDeviceFound:(id)found;
- (void)_handleDeviceLost:(id)lost;
- (void)_invalidateRapportClient;
- (void)startDiscoveringDevices;
- (void)stopDiscoveryingDevices;
@end

@implementation W5RapportClient

- (W5RapportClient)init
{
  v8.receiver = self;
  v8.super_class = W5RapportClient;
  v2 = [(W5RapportClient *)&v8 init];
  if (v2)
  {
    if ((+[W5FeatureAvailability diagnosticsModeEnabled]& 1) != 0)
    {
      v3 = dispatch_queue_create("com.apple.wifi.W5RapportClient", 0);
      queue = v2->_queue;
      v2->_queue = v3;

      if (v2->_queue)
      {
        v2->_discoveringDevices = 0;
        return v2;
      }
    }

    else
    {
      v6 = sub_100098A04();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315650;
        v10 = "[W5RapportClient init]";
        v11 = 2080;
        v12 = "W5RapportClient.m";
        v13 = 1024;
        v14 = 59;
        _os_log_send_and_compose_impl();
      }
    }
  }

  v7 = sub_100098A04();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[W5RapportClient init]";
    v11 = 2080;
    v12 = "W5RapportClient.m";
    v13 = 1024;
    v14 = 72;
    _os_log_send_and_compose_impl();
  }

  return 0;
}

- (BOOL)_configureDiscoveryClient
{
  discoveryClient = [(W5RapportClient *)self discoveryClient];

  if (discoveryClient)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v5 = objc_alloc_init(RPCompanionLinkClient);
    v4 = v5 != 0;
    if (v5)
    {
      queue = [(W5RapportClient *)self queue];
      [v5 setDispatchQueue:queue];

      [v5 setControlFlags:{objc_msgSend(v5, "controlFlags") | 0x818126}];
      [v5 setServiceType:@"com.apple.wifivelocityd.rapportWake"];
      objc_initWeak(&location, self);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10004CC0C;
      v14[3] = &unk_1000E2950;
      objc_copyWeak(&v15, &location);
      [v5 setInvalidationHandler:v14];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10004CD08;
      v12[3] = &unk_1000E29A0;
      v12[4] = self;
      objc_copyWeak(&v13, &location);
      [v5 setDeviceFoundHandler:v12];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10004CE28;
      v10[3] = &unk_1000E29C8;
      objc_copyWeak(&v11, &location);
      [v5 setDeviceLostHandler:v10];
      [v5 setDeviceChangedHandler:&stru_1000E2A08];
      [v5 setLocalDeviceUpdatedHandler:&stru_1000E2A48];
      v7 = sub_100098A04();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315650;
        v18 = "[W5RapportClient _configureDiscoveryClient]";
        v19 = 2080;
        v20 = "W5RapportClient.m";
        v21 = 1024;
        v22 = 125;
        _os_log_send_and_compose_impl();
      }

      [(W5RapportClient *)self setDiscoveryClient:v5];
      objc_destroyWeak(&v11);
      objc_destroyWeak(&v13);
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    else
    {
      v8 = sub_100098A04();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315650;
        v18 = "[W5RapportClient _configureDiscoveryClient]";
        v19 = 2080;
        v20 = "W5RapportClient.m";
        v21 = 1024;
        v22 = 85;
        _os_log_send_and_compose_impl();
      }
    }
  }

  return v4;
}

- (void)_invalidateRapportClient
{
  discoveryClient = [(W5RapportClient *)self discoveryClient];
  [discoveryClient invalidate];

  [(W5RapportClient *)self setDiscoveryClient:0];
}

- (void)_handleDeviceFound:(id)found
{
  foundCopy = found;
  v5 = sub_100098A04();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    [foundCopy statusFlags];
    [foundCopy statusFlags];
    serviceTypes = [foundCopy serviceTypes];
    [serviceTypes containsObject:@"com.apple.wifivelocityd.rapportWake"];
    if (foundCopy)
    {
      [foundCopy operatingSystemVersion];
      v7 = v17;
      [foundCopy operatingSystemVersion];
      v8 = v15;
      [foundCopy operatingSystemVersion];
      v9 = v13;
    }

    else
    {
      v9 = 0;
      v8 = 0;
      v7 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v15 = 0;
      v16 = 0;
      v13 = 0;
      v14 = 0;
      v11 = 0;
      v12 = 0;
    }

    v20 = [NSString stringWithFormat:@"%ld.%ld.%ld", v7, v8, v9, v11, v12, v13, v14, v15, v16, v17, v18, v19];
    _os_log_send_and_compose_impl();
  }

  deviceFoundHandler = self->_deviceFoundHandler;
  if (deviceFoundHandler)
  {
    deviceFoundHandler[2](deviceFoundHandler, foundCopy);
  }
}

- (void)_handleDeviceLost:(id)lost
{
  lostCopy = lost;
  v5 = sub_100098A04();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  deviceFoundHandler = self->_deviceFoundHandler;
  if (deviceFoundHandler)
  {
    deviceFoundHandler[2](deviceFoundHandler, lostCopy);
  }
}

- (void)startDiscoveringDevices
{
  if (self->_discoveringDevices)
  {
    v2 = sub_100098A04();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *location = 136315650;
      *&location[4] = "[W5RapportClient startDiscoveringDevices]";
      v10 = 2080;
      v11 = "W5RapportClient.m";
      v12 = 1024;
      v13 = 164;
      _os_log_send_and_compose_impl();
    }

LABEL_11:

    return;
  }

  _configureDiscoveryClient = [(W5RapportClient *)self _configureDiscoveryClient];
  v2 = sub_100098A04();
  v5 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if ((_configureDiscoveryClient & 1) == 0)
  {
    if (v5)
    {
      *location = 136315650;
      *&location[4] = "[W5RapportClient startDiscoveringDevices]";
      v10 = 2080;
      v11 = "W5RapportClient.m";
      v12 = 1024;
      v13 = 169;
      _os_log_send_and_compose_impl();
    }

    goto LABEL_11;
  }

  if (v5)
  {
    *location = 136315650;
    *&location[4] = "[W5RapportClient startDiscoveringDevices]";
    v10 = 2080;
    v11 = "W5RapportClient.m";
    v12 = 1024;
    v13 = 173;
    _os_log_send_and_compose_impl();
  }

  self->_discoveringDevices = 1;
  objc_initWeak(location, self);
  discoveryClient = [(W5RapportClient *)self discoveryClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004D610;
  v7[3] = &unk_1000E2A70;
  objc_copyWeak(&v8, location);
  [discoveryClient activateWithCompletion:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(location);
}

- (void)stopDiscoveryingDevices
{
  discoveringDevices = self->_discoveringDevices;
  v4 = sub_100098A04();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (discoveringDevices)
  {
    if (v5)
    {
      _os_log_send_and_compose_impl();
    }

    [(W5RapportClient *)self _invalidateRapportClient];
    self->_discoveringDevices = 0;
  }

  else
  {
    if (v5)
    {
      _os_log_send_and_compose_impl();
    }
  }
}

- (id)sendMessageToDevice:(id)device request:(id)request
{
  deviceCopy = device;
  requestCopy = request;
  v7 = objc_alloc_init(RPCompanionLinkClient);
  [v7 setDestinationDevice:deviceCopy];
  v8 = sub_100098A04();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *location = 136316162;
    *&location[4] = "[W5RapportClient sendMessageToDevice:request:]";
    v26 = 2080;
    v27 = "W5RapportClient.m";
    v28 = 1024;
    v29 = 204;
    v30 = 2112;
    v31 = requestCopy;
    v32 = 2112;
    v33 = deviceCopy;
    LODWORD(v20) = 48;
    v19 = location;
    _os_log_send_and_compose_impl();
  }

  model = [deviceCopy model];
  if ([model containsString:@"Mac"])
  {
  }

  else
  {
    peer = [requestCopy peer];
    model2 = [peer model];
    v12 = [model2 containsString:@"Mac"];

    if ((v12 & 1) == 0)
    {
      [v7 setServiceType:@"com.apple.wifivelocityd.rapportWake"];
    }
  }

  v13 = ([requestCopy controlFlags] & 1) == 0;
  controlFlags = [v7 controlFlags];
  v15 = 6291712;
  if (v13)
  {
    v15 = 4227334;
  }

  [v7 setControlFlags:v15 | controlFlags];
  [v7 setInvalidationHandler:&stru_1000E2A90];
  objc_initWeak(location, v7);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10004DC74;
  v21[3] = &unk_1000E2AE0;
  objc_copyWeak(&v24, location);
  v16 = requestCopy;
  v22 = v16;
  v17 = deviceCopy;
  v23 = v17;
  [v7 activateWithCompletion:v21];

  objc_destroyWeak(&v24);
  objc_destroyWeak(location);

  return 0;
}

@end