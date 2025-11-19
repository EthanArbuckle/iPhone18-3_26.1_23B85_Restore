@interface W5RapportClient
- (BOOL)_configureDiscoveryClient;
- (W5RapportClient)init;
- (id)sendMessageToDevice:(id)a3 request:(id)a4;
- (void)_handleDeviceFound:(id)a3;
- (void)_handleDeviceLost:(id)a3;
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
  v3 = [(W5RapportClient *)self discoveryClient];

  if (v3)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v5 = objc_alloc_init(RPCompanionLinkClient);
    v4 = v5 != 0;
    if (v5)
    {
      v6 = [(W5RapportClient *)self queue];
      [v5 setDispatchQueue:v6];

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
  v3 = [(W5RapportClient *)self discoveryClient];
  [v3 invalidate];

  [(W5RapportClient *)self setDiscoveryClient:0];
}

- (void)_handleDeviceFound:(id)a3
{
  v4 = a3;
  v5 = sub_100098A04();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    [v4 statusFlags];
    [v4 statusFlags];
    v6 = [v4 serviceTypes];
    [v6 containsObject:@"com.apple.wifivelocityd.rapportWake"];
    if (v4)
    {
      [v4 operatingSystemVersion];
      v7 = v17;
      [v4 operatingSystemVersion];
      v8 = v15;
      [v4 operatingSystemVersion];
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
    deviceFoundHandler[2](deviceFoundHandler, v4);
  }
}

- (void)_handleDeviceLost:(id)a3
{
  v4 = a3;
  v5 = sub_100098A04();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  deviceFoundHandler = self->_deviceFoundHandler;
  if (deviceFoundHandler)
  {
    deviceFoundHandler[2](deviceFoundHandler, v4);
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

  v4 = [(W5RapportClient *)self _configureDiscoveryClient];
  v2 = sub_100098A04();
  v5 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if ((v4 & 1) == 0)
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
  v6 = [(W5RapportClient *)self discoveryClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004D610;
  v7[3] = &unk_1000E2A70;
  objc_copyWeak(&v8, location);
  [v6 activateWithCompletion:v7];

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

- (id)sendMessageToDevice:(id)a3 request:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(RPCompanionLinkClient);
  [v7 setDestinationDevice:v5];
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
    v31 = v6;
    v32 = 2112;
    v33 = v5;
    LODWORD(v20) = 48;
    v19 = location;
    _os_log_send_and_compose_impl();
  }

  v9 = [v5 model];
  if ([v9 containsString:@"Mac"])
  {
  }

  else
  {
    v10 = [v6 peer];
    v11 = [v10 model];
    v12 = [v11 containsString:@"Mac"];

    if ((v12 & 1) == 0)
    {
      [v7 setServiceType:@"com.apple.wifivelocityd.rapportWake"];
    }
  }

  v13 = ([v6 controlFlags] & 1) == 0;
  v14 = [v7 controlFlags];
  v15 = 6291712;
  if (v13)
  {
    v15 = 4227334;
  }

  [v7 setControlFlags:v15 | v14];
  [v7 setInvalidationHandler:&stru_1000E2A90];
  objc_initWeak(location, v7);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10004DC74;
  v21[3] = &unk_1000E2AE0;
  objc_copyWeak(&v24, location);
  v16 = v6;
  v22 = v16;
  v17 = v5;
  v23 = v17;
  [v7 activateWithCompletion:v21];

  objc_destroyWeak(&v24);
  objc_destroyWeak(location);

  return 0;
}

@end