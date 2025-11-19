@interface HIDApplePencilGen2Device
- (HIDApplePencilGen2Device)initWithProperties:(id)a3 reports:(id)a4 loggingIdentifier:(id)a5;
- (id)desiredConnectionParameters;
- (id)newUserDevices:(id)a3;
- (int)stictionCollection;
- (void)authFailureNotification;
- (void)authSuccessNotification;
- (void)handleAnalyticsData:(unsigned __int8)a3 data:(const void *)a4 length:(unint64_t)a5;
- (void)maybeQueryOOBPAndSendStatus;
- (void)notifyPencilOnChargerState:(BOOL)a3;
- (void)pairingInfoCompleted;
- (void)piconetClockNotification:(id)a3;
- (void)publishProperties;
- (void)start;
- (void)startCollectionTimer;
- (void)stictionCollectionGate;
- (void)stictionCollectionRestartTimer:(double)a3;
- (void)stop;
- (void)stopCollectionTimer;
- (void)unpublishProperties;
@end

@implementation HIDApplePencilGen2Device

- (void)start
{
  v3.receiver = self;
  v3.super_class = HIDApplePencilGen2Device;
  [(HIDApplePencilDevice *)&v3 start];
  [(HIDChargerNotifier *)self->_chargerNotifier start];
  [(HIDApplePencilGen2Device *)self startCollectionTimer];
}

- (HIDApplePencilGen2Device)initWithProperties:(id)a3 reports:(id)a4 loggingIdentifier:(id)a5
{
  v9 = a3;
  v26.receiver = self;
  v26.super_class = HIDApplePencilGen2Device;
  v10 = [(HIDApplePencilDevice *)&v26 initWithProperties:v9 reports:a4 loggingIdentifier:a5];
  v12 = v10;
  if (!v10)
  {
    goto LABEL_5;
  }

  LODWORD(v11) = 15.0;
  [(HIDApplePencilGen2Device *)v10 setPreferredInterval:v11];
  [(HIDApplePencilGen2Device *)v12 setPreferredPeripheralLatency:6];
  [(HIDApplePencilGen2Device *)v12 setMaxPeripheralLatency:100];
  v13 = -[HIDTimestampSync initWithBtClockMask:]([HIDTimestampSync alloc], "initWithBtClockMask:", [objc_opt_class() btClockMask]);
  timestampSync = v12->_timestampSync;
  v12->_timestampSync = v13;

  if (!v12->_timestampSync)
  {
    goto LABEL_5;
  }

  v15 = [HIDChargerNotifier alloc];
  v16 = [(HIDApplePencilDevice *)v12 queue];
  v17 = [(HIDChargerNotifier *)v15 initWithQueue:v16];
  chargerNotifier = v12->_chargerNotifier;
  v12->_chargerNotifier = v17;

  v19 = v12->_chargerNotifier;
  if (v19)
  {
    [(HIDChargerNotifier *)v19 setDelegate:v12];
    objc_storeStrong(&v12->_properties, a3);
    v12->_authStatus = 0;
    v12->_accdPairingFinished = 0;
    v20 = +[NSNotificationCenter defaultCenter];
    v21 = [(HIDBluetoothDevice *)v12 peripheral];
    [v20 addObserver:v12 selector:"authSuccessNotification" name:@"AuthenticationServiceAuthDidSucceedNotification" object:v21];

    v22 = +[NSNotificationCenter defaultCenter];
    v23 = [(HIDBluetoothDevice *)v12 peripheral];
    [v22 addObserver:v12 selector:"authFailureNotification" name:@"AuthenticationServiceAuthDidFailNotification" object:v23];

    v24 = v12;
  }

  else
  {
LABEL_5:
    v24 = 0;
  }

  return v24;
}

- (id)newUserDevices:(id)a3
{
  v4 = a3;
  v5 = [(HIDApplePencilGen2Device *)self newDeviceMgntDevice:v4 keyholeID:0];
  v6 = [(HIDApplePencilGen2Device *)self newTouchDevice:v4 keyholeID:1];
  v7 = [(HIDApplePencilGen2Device *)self newForceDevice:v4 keyholeID:8];
  v8 = [(HIDApplePencilGen2Device *)self newWakeDevice:v4 keyholeID:4];

  if (!v5)
  {
    sub_100078498(&v13);
LABEL_11:
    v11 = v13;
    goto LABEL_6;
  }

  if (!v6)
  {
    sub_100072564(&v13);
    goto LABEL_11;
  }

  if (!v7)
  {
    sub_1000723F4(&v13);
    goto LABEL_11;
  }

  if (!v8)
  {
    sub_1000742F4(&v13);
    goto LABEL_11;
  }

  v14[0] = &off_1000C3CC0;
  v14[1] = &off_1000C3CD8;
  v15[0] = v5;
  v15[1] = v6;
  v14[2] = &off_1000C3CF0;
  v14[3] = &off_1000C3CA8;
  v15[2] = v8;
  v15[3] = v7;
  v9 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];
  userDevices = self->_userDevices;
  self->_userDevices = v9;

  [(NSDictionary *)self->_userDevices enumerateKeysAndObjectsUsingBlock:&stru_1000BE1D8];
  v11 = [(NSDictionary *)self->_userDevices allValues];
LABEL_6:

  return v11;
}

- (void)stop
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(HIDChargerNotifier *)self->_chargerNotifier stop];
  chargerNotifier = self->_chargerNotifier;
  self->_chargerNotifier = 0;

  [(HIDApplePencilGen2Device *)self unpublishProperties];
  [(HIDApplePencilGen2Device *)self stopCollectionTimer];
  v5.receiver = self;
  v5.super_class = HIDApplePencilGen2Device;
  [(HIDApplePencilDevice *)&v5 stop];
}

- (void)handleAnalyticsData:(unsigned __int8)a3 data:(const void *)a4 length:(unint64_t)a5
{
  if (!a3 && a5 == 5 && *a4 == 68)
  {
    v6 = *(a4 + 1);
    v9 = @"TimeOn0_1C";
    v7 = [NSNumber numberWithUnsignedInt:v6];
    v10 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];

    [(HIDApplePencilDevice *)self sendAnalyticsEvent:@"com.apple.MConnector.ExcessCharge.0_1C" withPayload:v8];
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000785F4();
    }
  }
}

- (void)piconetClockNotification:(id)a3
{
  v4 = a3;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100078668(v5, v4);
  }

  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"PiconetClockUserInfoKey"];
  v8 = [v7 unsignedIntegerValue];

  v9 = [v4 userInfo];
  v10 = [v9 objectForKeyedSubscript:@"PiconetPhaseClockUserInfoKey"];
  v11 = [v10 unsignedIntegerValue];

  v12 = [(HIDApplePencilGen2Device *)self timestampSync];
  [v12 processTimestampSync:v8 phase:v11];
}

- (void)notifyPencilOnChargerState:(BOOL)a3
{
  v3 = a3;
  if ([objc_opt_class() hasWirelessCharging])
  {
    v5 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [(HIDApplePencilDevice *)self loggingIdentifier];
      v8 = v7;
      v9 = "detached";
      if (v3)
      {
        v9 = "attached";
      }

      *v11 = 138412546;
      *&v11[4] = v7;
      v12 = 2080;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ notifying pencil that wireless charging is %s", v11, 0x16u);
    }

    v11[0] = -64;
    v11[1] = v3;
    v10 = [(HIDApplePencilGen2Device *)self deviceMgntUserDevice];
    [v10 setReport:v11 reportLength:2 reportID:192 reportType:2];
  }
}

- (void)startCollectionTimer
{
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100078800();
  }

  v3 = [(HIDApplePencilDevice *)self queue];
  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
  [(HIDApplePencilGen2Device *)self setTimer:v4];

  v5 = [(HIDApplePencilGen2Device *)self timer];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10004E2BC;
  handler[3] = &unk_1000BD398;
  handler[4] = self;
  dispatch_source_set_event_handler(v5, handler);

  v6 = [(HIDApplePencilGen2Device *)self timer];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004E2C4;
  v8[3] = &unk_1000BD398;
  v8[4] = self;
  dispatch_source_set_cancel_handler(v6, v8);

  [(HIDApplePencilGen2Device *)self stictionCollectionRestartTimer:10.0];
  v7 = [(HIDApplePencilGen2Device *)self timer];
  dispatch_resume(v7);
}

- (void)stopCollectionTimer
{
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100078840();
  }

  v3 = [(HIDApplePencilGen2Device *)self timer];
  dispatch_source_cancel(v3);
}

- (void)stictionCollectionRestartTimer:(double)a3
{
  source = [(HIDApplePencilGen2Device *)self timer];
  v4 = dispatch_time(0, (a3 * 1000000000.0));
  dispatch_source_set_timer(source, v4, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
}

- (void)stictionCollectionGate
{
  v3 = [NSString stringWithFormat:@"stictionCollectionGateLastTimeStamp"];
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 doubleForKey:v3];
  v6 = v5;

  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100078880();
  }

  v7 = +[NSDate date];
  [v7 timeIntervalSince1970];
  v9 = v8;
  v10 = v8 - v6;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000788F8();
  }

  if (v6 == 0.0 || v10 < 0.0 || v10 > 86400.0)
  {
    [(HIDApplePencilGen2Device *)self stictionCollection];
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
    {
      sub_100078970();
    }

    v12 = +[NSUserDefaults standardUserDefaults];
    [v12 setDouble:v3 forKey:v9];

    v13 = qword_1000DDBC8;
    v11 = 86400.0;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134217984;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "stictionCollectionGate: set timestamp of stiction collection = %lf", &v14, 0xCu);
    }
  }

  else
  {
    v11 = 86400.0 - v10;
  }

  [(HIDApplePencilGen2Device *)self stictionCollectionRestartTimer:v11];
}

- (int)stictionCollection
{
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  memset(v22, 0, sizeof(v22));
  v17 = 512;
  BYTE4(v16) = 0;
  LODWORD(v16) = 3389;
  v3 = [(NSDictionary *)self->_userDevices objectForKeyedSubscript:&off_1000C3CC0, v16];
  v4 = [v3 setReport:&v16 reportLength:5 reportID:61 reportType:2];

  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000789E4(&v16);
    if (v4)
    {
      return v4;
    }
  }

  else if (v4)
  {
    return v4;
  }

  v5 = [(NSDictionary *)self->_userDevices objectForKeyedSubscript:&off_1000C3CC0];
  v4 = [v5 getReport:v22 reportLength:&v17 reportID:62 reportType:2];

  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100078A5C(&v17);
    if (v4)
    {
      return v4;
    }
  }

  else if (v4)
  {
    return v4;
  }

  if (v17 < 17)
  {
    return -536870911;
  }

  v6 = *(v22 + 13);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  memset(v22, 0, sizeof(v22));
  v17 = 512;
  v7 = [(NSDictionary *)self->_userDevices objectForKeyedSubscript:&off_1000C3CF0];
  v4 = [v7 getReport:v22 reportLength:&v17 reportID:208 reportType:2];

  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100078AD4(&v17);
    if (v4)
    {
      return v4;
    }
  }

  else if (v4)
  {
    return v4;
  }

  if (v17 < 6)
  {
    return -536870911;
  }

  v8 = (v6 + WORD2(v22[0]));
  v9 = WORD2(v22[0]);
  v20[0] = @"StictionLifetime";
  v10 = [NSNumber numberWithDouble:v8];
  v20[1] = @"StictionSinceBoot";
  v21[0] = v10;
  v11 = [NSNumber numberWithDouble:v9];
  v21[1] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];

  [(HIDApplePencilDevice *)self sendAnalyticsEvent:@"com.apple.stylus2.motion" withPayload:v12];
  v13 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "stictionCollection: Lifetime Stiction   = %lf", buf, 0xCu);
  }

  v14 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "stictionCollection: Stiction since Boot = %lf", buf, 0xCu);
  }

  return 0;
}

- (void)pairingInfoCompleted
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(HIDApplePencilDevice *)self loggingIdentifier];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ received pairing info", &v6, 0xCu);
  }

  self->_accdPairingFinished = 1;
  [(HIDApplePencilGen2Device *)self maybeQueryOOBPAndSendStatus];
}

- (id)desiredConnectionParameters
{
  v5.receiver = self;
  v5.super_class = HIDApplePencilGen2Device;
  v3 = [(HIDApplePencilDevice *)&v5 desiredConnectionParameters];
  [(HIDApplePencilGen2Device *)self preferredInterval];
  [v3 setMinInterval:?];
  [(HIDApplePencilGen2Device *)self preferredInterval];
  [v3 setPreferredInterval:?];
  [v3 setPreferredPeripheralLatency:{-[HIDApplePencilGen2Device preferredPeripheralLatency](self, "preferredPeripheralLatency")}];
  [v3 setMaxPeripheralLatency:{-[HIDApplePencilGen2Device maxPeripheralLatency](self, "maxPeripheralLatency")}];
  [v3 setTimeout:2000];

  return v3;
}

- (void)authSuccessNotification
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(HIDApplePencilDevice *)self loggingIdentifier];
    *buf = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ authSuccessNotification", buf, 0xCu);
  }

  v6 = [(HIDApplePencilDevice *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004EC1C;
  block[3] = &unk_1000BD398;
  block[4] = self;
  dispatch_async(v6, block);
}

- (void)authFailureNotification
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(HIDApplePencilDevice *)self loggingIdentifier];
    *buf = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ authFailureNotification", buf, 0xCu);
  }

  v6 = [(HIDApplePencilDevice *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004ED58;
  block[3] = &unk_1000BD398;
  block[4] = self;
  dispatch_async(v6, block);
}

- (void)maybeQueryOOBPAndSendStatus
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(HIDApplePencilDevice *)self loggingIdentifier];
    authStatus = self->_authStatus;
    accdPairingFinished = self->_accdPairingFinished;
    buf[0] = 138412802;
    *&buf[1] = v5;
    LOWORD(buf[3]) = 1024;
    *(&buf[3] + 2) = authStatus;
    HIWORD(buf[4]) = 1024;
    buf[5] = accdPairingFinished;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ _authStatus = %u, _accdPairingFinished = %u", buf, 0x18u);
  }

  if (self->_authStatus == 1 && self->_accdPairingFinished)
  {
    v8 = [(HIDApplePencilGen2Device *)self deviceMgntUserDevice];

    if (v8)
    {
      memset(buf + 1, 0, 32);
      LOBYTE(buf[0]) = 65;
      v12 = 33;
      v9 = [(HIDApplePencilGen2Device *)self deviceMgntUserDevice];
      v10 = [v9 getReport:buf reportLength:&v12 reportID:65 reportType:2];

      if (!v10 && (v12 == 33 || v12 == 17))
      {
        v11 = [NSData dataWithBytes:buf + 1 length:v12 - 1];
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
        {
          sub_100078B4C();
        }

        [(HIDChargerNotifier *)self->_chargerNotifier setPairingData:v11];
      }

      else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_100078BC0(&v12);
      }
    }
  }
}

- (void)publishProperties
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(HIDApplePencilDevice *)self loggingIdentifier];
    v6 = [(HIDApplePencilGen2Device *)self properties];
    *buf = 138412546;
    v34 = v5;
    v35 = 2112;
    v36 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ publishing device with properties: %@", buf, 0x16u);
  }

  [(HIDApplePencilGen2Device *)self unpublishProperties];
  v7 = [(HIDApplePencilGen2Device *)self properties];
  v8 = [v7 objectForKeyedSubscript:@"PhysicalDeviceUniqueID"];

  v9 = +[ACCTransportClient sharedClient];
  v30 = v8;
  v10 = [v9 createConnectionWithType:2 andIdentifier:v8];
  [(HIDApplePencilGen2Device *)self setConnectionUUID:v10];

  v11 = [(HIDApplePencilGen2Device *)self connectionUUID];

  if (!v11)
  {
    v12 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100078C30(v12);
    }
  }

  v13 = +[ACCTransportClient sharedClient];
  v14 = [(HIDApplePencilGen2Device *)self connectionUUID];
  v29 = [v13 createEndpointWithTransportType:3 andProtocol:1 andIdentifier:0 andDataOutHandler:0 forConnectionWithUUID:v14 publishConnection:0];

  v32[0] = @"Apple Pencil";
  v31[0] = kACCInfo_Name;
  v31[1] = kACCInfo_Manufacturer;
  v28 = [(HIDApplePencilGen2Device *)self properties];
  v27 = [v28 objectForKeyedSubscript:@"Manufacturer"];
  v32[1] = v27;
  v31[2] = kACCInfo_Model;
  v15 = [(HIDApplePencilGen2Device *)self properties];
  v16 = [v15 objectForKeyedSubscript:@"ModelNumber"];
  v32[2] = v16;
  v31[3] = kACCInfo_SerialNumber;
  v17 = [(HIDApplePencilGen2Device *)self properties];
  v18 = [v17 objectForKeyedSubscript:@"SerialNumber"];
  v32[3] = v18;
  v31[4] = kACCInfo_HardwareVersion;
  v19 = [(HIDApplePencilGen2Device *)self properties];
  v20 = [v19 objectForKeyedSubscript:@"kBTHardwareRevisionKey"];
  v32[4] = v20;
  v31[5] = kACCInfo_FirmwareVersionActive;
  v21 = [(HIDApplePencilGen2Device *)self properties];
  v22 = [v21 objectForKeyedSubscript:@"kBTFirmwareRevisionKey"];
  v32[5] = v22;
  v23 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:6];

  v24 = +[ACCTransportClient sharedClient];
  [v24 setAccessoryInfo:v23 forEndpointWithUUID:v29];

  v25 = +[ACCTransportClient sharedClient];
  v26 = [(HIDApplePencilGen2Device *)self connectionUUID];
  [v25 publishConnectionWithUUID:v26];
}

- (void)unpublishProperties
{
  v3 = [(HIDApplePencilGen2Device *)self connectionUUID];

  if (v3)
  {
    v4 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = [(HIDApplePencilDevice *)self loggingIdentifier];
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ unpublishing device properties", &v9, 0xCu);
    }

    v7 = +[ACCTransportClient sharedClient];
    v8 = [(HIDApplePencilGen2Device *)self connectionUUID];
    [v7 destroyConnectionWithUUID:v8];
  }
}

@end