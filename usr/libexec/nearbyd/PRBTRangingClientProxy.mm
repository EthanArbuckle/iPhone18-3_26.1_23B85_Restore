@interface PRBTRangingClientProxy
- (PRBTRangingClientProxy)initWithConnection:(id)connection queue:(id)queue;
- (id)convertToString:(int)string;
- (void)activate;
- (void)connectWithClientInfo:(id)info;
- (void)dealloc;
- (void)deinitCompanion;
- (void)didFailWithError:(id)error;
- (void)fetchTxPower:(id)power isUT:(id)t reply:(id)reply;
- (void)findMyAccessoryManager:(id)manager didCompleteAggressiveAdvertisingOnDevice:(id)device withError:(id)error;
- (void)findMyAccessoryManager:(id)manager didConnectDevice:(id)device error:(id)error;
- (void)findMyAccessoryManager:(id)manager didDisconnectDevice:(id)device;
- (void)findMyAccessoryManager:(id)manager didFailWithError:(id)error forDevice:(id)device;
- (void)findMyAccessoryManager:(id)manager didFetchTxPower:(id)power fromDevice:(id)device withError:(id)error;
- (void)findMyAccessoryManager:(id)manager didObserveAdvertisementWithDate:(id)date address:(id)address advertisementData:(id)data status:(unsigned __int8)status rssi:(int64_t)rssi reserved:(id)reserved uuid:(id)self0 ownershipType:(unint64_t)self1 channel:(unint64_t)self2;
- (void)findMyAccessoryManager:(id)manager didStartAggressiveAdvertisingOnDevice:(id)device withError:(id)error;
- (void)findMyAccessoryManager:(id)manager didStartUnauthorizedAggressiveAdvertisingOnDevice:(id)device withError:(id)error;
- (void)findMyAccessoryManager:(id)manager didStopAggressiveAdvertisingOnDevice:(id)device withError:(id)error;
- (void)handleError:(id)error;
- (void)informDelegateOwnerRangeStoppedonDevice:(id)device;
- (void)setUUID:(id)d;
- (void)startOwnerRanging:(id)ranging reply:(id)reply;
- (void)startUTRanging:(id)ranging reply:(id)reply;
- (void)stopOwnerRanging:(id)ranging reply:(id)reply;
- (void)stopUTRanging:(id)ranging reply:(id)reply;
- (void)terminate;
@end

@implementation PRBTRangingClientProxy

- (PRBTRangingClientProxy)initWithConnection:(id)connection queue:(id)queue
{
  connectionCopy = connection;
  queueCopy = queue;
  v9 = queueCopy;
  if (connectionCopy)
  {
    if (queueCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = +[NSAssertionHandler currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PRBTRangingClientProxy.mm" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"connection"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v21 = +[NSAssertionHandler currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"PRBTRangingClientProxy.mm" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"queue"}];

LABEL_3:
  v23.receiver = self;
  v23.super_class = PRBTRangingClientProxy;
  v10 = [(PRBTRangingClientProxy *)&v23 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_queue, queue);
    beacon = v11->_beacon;
    v11->_beacon = 0;

    v11->_cleaningUponDidFail = 0;
    *&v11->_utFinding = 1;
    v11->_ranging = 0;
    v11->_currentTask = 0;
    v13 = [[PRNSXPCConnection alloc] initWithConnection:connectionCopy];
    connWrapper = v11->_connWrapper;
    v11->_connWrapper = v13;

    v15 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#btranging-retry _accessoryManager initWithDelegate", buf, 2u);
    }

    v16 = [[CLFindMyAccessoryManager alloc] initWithDelegate:v11 delegateQueue:v11->_queue];
    accessoryManager = v11->_accessoryManager;
    v11->_accessoryManager = v16;
  }

  v18 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "PRBTRangingClientProxy init", buf, 2u);
  }

  return v11;
}

- (void)dealloc
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PRBTRangingClientProxy dealloc", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = PRBTRangingClientProxy;
  [(PRBTRangingClientProxy *)&v4 dealloc];
}

- (void)activate
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRBTRangingClientProxy activate", v3, 2u);
  }
}

- (void)terminate
{
  if (self->_beacon)
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      beacon = self->_beacon;
      v6 = 138412290;
      v7 = beacon;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Tearing down BT ranging session. Beacon: %@", &v6, 0xCu);
    }

    [(PRBTRangingClientProxy *)self deinitCompanion];
  }

  [(PRBTRangingClientProtocol *)self->_connWrapper invalidate];
  voucher = self->_clientVoucher.voucher;
  self->_clientVoucher.voucher = 0;
}

- (void)handleError:(id)error
{
  errorCopy = error;
  [(PRBTRangingClientProxy *)self setCurrentTask:0];
  connWrapper = self->_connWrapper;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100053DA4;
  v7[3] = &unk_10098B918;
  v6 = errorCopy;
  v8 = v6;
  [(PRBTRangingClientProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v7];
}

- (void)didFailWithError:(id)error
{
  errorCopy = error;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = errorCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#btranging-retry didFailWithError: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100053F7C;
  v8[3] = &unk_10098B940;
  objc_copyWeak(&v10, buf);
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_async(queue, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)deinitCompanion
{
  if (!self->_utFinding && self->_currentTask == 7)
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      uUID = [(PRRemoteDevice *)self->_beacon UUID];
      uUIDString = [uUID UUIDString];
      v8 = 136315138;
      uTF8String = [uUIDString UTF8String];
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#btranging-retry command stopAggressiveAdvertising on device %s", &v8, 0xCu);
    }

    accessoryManager = self->_accessoryManager;
    uUID2 = [(PRRemoteDevice *)self->_beacon UUID];
    [(CLFindMyAccessoryManager *)accessoryManager stopAggressiveAdvertisingOnDevice:uUID2];
  }
}

- (void)findMyAccessoryManager:(id)manager didFailWithError:(id)error forDevice:(id)device
{
  managerCopy = manager;
  errorCopy = error;
  deviceCopy = device;
  if (!deviceCopy || self->_accessoryManager == managerCopy && (-[PRRemoteDevice UUID](self->_beacon, "UUID"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [deviceCopy isEqual:v11], v11, (v12 & 1) != 0))
  {
    v13 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v24 = deviceCopy;
      v25 = 2112;
      v26 = errorCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#btranging-retry _accessoryManager didFailWithError for %@ with error:%@", buf, 0x16u);
    }

    v21 = NSLocalizedDescriptionKey;
    v22 = @"Generic companion ranging error.";
    v14 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v15 = PRErrorWithCodeAndUserInfo(301, v14);

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049D2B0();
    }

    objc_initWeak(buf, self);
    queue = self->_queue;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000543A4;
    v18[3] = &unk_10098B940;
    objc_copyWeak(&v20, buf);
    v19 = v15;
    v17 = v15;
    dispatch_async(queue, v18);

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }
}

- (void)findMyAccessoryManager:(id)manager didConnectDevice:(id)device error:(id)error
{
  managerCopy = manager;
  deviceCopy = device;
  errorCopy = error;
  v11 = qword_1009F9820;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [deviceCopy UUIDString];
    *buf = 136315394;
    uTF8String = [uUIDString UTF8String];
    v22 = 2112;
    v23 = errorCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#btranging-retry _accessoryManager didConnectDevice %s with #error:%@", buf, 0x16u);
  }

  if (!deviceCopy || self->_accessoryManager == managerCopy && (-[PRRemoteDevice UUID](self->_beacon, "UUID"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [deviceCopy isEqual:v13], v13, (v14 & 1) != 0))
  {
    objc_initWeak(buf, self);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100054638;
    block[3] = &unk_10098B990;
    objc_copyWeak(&v19, buf);
    v17 = deviceCopy;
    v18 = errorCopy;
    dispatch_async(queue, block);

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }
}

- (void)findMyAccessoryManager:(id)manager didDisconnectDevice:(id)device
{
  managerCopy = manager;
  deviceCopy = device;
  if (!deviceCopy || self->_accessoryManager == managerCopy && (-[PRRemoteDevice UUID](self->_beacon, "UUID"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [deviceCopy isEqual:v8], v8, (v9 & 1) != 0))
  {
    v10 = qword_1009F9820;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString = [deviceCopy UUIDString];
      *buf = 136315138;
      uTF8String = [uUIDString UTF8String];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#btranging-retry _accessoryManager didDisconnect device %s", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    queue = self->_queue;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100054EA8;
    v13[3] = &unk_10098B940;
    objc_copyWeak(&v15, buf);
    v14 = deviceCopy;
    dispatch_async(queue, v13);

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }
}

- (void)findMyAccessoryManager:(id)manager didFetchTxPower:(id)power fromDevice:(id)device withError:(id)error
{
  managerCopy = manager;
  powerCopy = power;
  deviceCopy = device;
  errorCopy = error;
  if (!deviceCopy || self->_accessoryManager == managerCopy && (-[PRRemoteDevice UUID](self->_beacon, "UUID"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [deviceCopy isEqual:v14], v14, (v15 & 1) != 0))
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005522C;
    block[3] = &unk_10098B9E0;
    objc_copyWeak(&v21, &location);
    v18 = deviceCopy;
    v19 = powerCopy;
    v20 = errorCopy;
    dispatch_async(queue, block);

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

- (void)findMyAccessoryManager:(id)manager didStartUnauthorizedAggressiveAdvertisingOnDevice:(id)device withError:(id)error
{
  managerCopy = manager;
  deviceCopy = device;
  errorCopy = error;
  if (!deviceCopy || self->_accessoryManager == managerCopy && (-[PRRemoteDevice UUID](self->_beacon, "UUID"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [deviceCopy isEqual:v11], v11, (v12 & 1) != 0))
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10005579C;
    v14[3] = &unk_10098B990;
    objc_copyWeak(&v17, &location);
    v15 = deviceCopy;
    v16 = errorCopy;
    dispatch_async(queue, v14);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (void)findMyAccessoryManager:(id)manager didStartAggressiveAdvertisingOnDevice:(id)device withError:(id)error
{
  managerCopy = manager;
  deviceCopy = device;
  errorCopy = error;
  if (!deviceCopy || self->_accessoryManager == managerCopy && (-[PRRemoteDevice UUID](self->_beacon, "UUID"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [deviceCopy isEqual:v11], v11, (v12 & 1) != 0))
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100055C38;
    v14[3] = &unk_10098B990;
    objc_copyWeak(&v17, &location);
    v15 = deviceCopy;
    v16 = errorCopy;
    dispatch_async(queue, v14);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (void)findMyAccessoryManager:(id)manager didStopAggressiveAdvertisingOnDevice:(id)device withError:(id)error
{
  managerCopy = manager;
  deviceCopy = device;
  errorCopy = error;
  if (!deviceCopy || self->_accessoryManager == managerCopy && (-[PRRemoteDevice UUID](self->_beacon, "UUID"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [deviceCopy isEqual:v11], v11, (v12 & 1) != 0))
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000562D8;
    v14[3] = &unk_10098B990;
    objc_copyWeak(&v17, &location);
    v15 = deviceCopy;
    v16 = errorCopy;
    dispatch_async(queue, v14);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (void)findMyAccessoryManager:(id)manager didCompleteAggressiveAdvertisingOnDevice:(id)device withError:(id)error
{
  managerCopy = manager;
  deviceCopy = device;
  errorCopy = error;
  if (!deviceCopy || self->_accessoryManager == managerCopy && (-[PRRemoteDevice UUID](self->_beacon, "UUID"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [deviceCopy isEqual:v11], v11, (v12 & 1) != 0))
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000566DC;
    v14[3] = &unk_10098B990;
    objc_copyWeak(&v17, &location);
    v15 = deviceCopy;
    v16 = errorCopy;
    dispatch_async(queue, v14);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (void)findMyAccessoryManager:(id)manager didObserveAdvertisementWithDate:(id)date address:(id)address advertisementData:(id)data status:(unsigned __int8)status rssi:(int64_t)rssi reserved:(id)reserved uuid:(id)self0 ownershipType:(unint64_t)self1 channel:(unint64_t)self2
{
  managerCopy = manager;
  dateCopy = date;
  addressCopy = address;
  dataCopy = data;
  reservedCopy = reserved;
  uuidCopy = uuid;
  if (uuidCopy)
  {
    if (self->_accessoryManager == managerCopy)
    {
      uUID = [(PRRemoteDevice *)self->_beacon UUID];
      v24 = [uuidCopy isEqual:uUID];

      if (v24)
      {
        v25 = qword_1009F9820;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          uUIDString = [uuidCopy UUIDString];
          *buf = 136315650;
          uTF8String = [uUIDString UTF8String];
          v34 = 1024;
          rssiCopy = rssi;
          v36 = 1024;
          channelCopy = channel;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#btranging-retry didObserveAdvertisementWithDate for %s with rssi:%d channel:%d", buf, 0x18u);
        }

        v27 = [[PRBTRSSI alloc] initWithTimeStamp:rssi rssi_dbm:channel channel:sub_100005288()];
        connWrapper = self->_connWrapper;
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_100056C0C;
        v30[3] = &unk_10098B918;
        v31 = v27;
        v29 = v27;
        [(PRBTRangingClientProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v30];
      }
    }
  }
}

- (void)informDelegateOwnerRangeStoppedonDevice:(id)device
{
  deviceCopy = device;
  connWrapper = self->_connWrapper;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100056D4C;
  v7[3] = &unk_10098B918;
  v8 = deviceCopy;
  v6 = deviceCopy;
  [(PRBTRangingClientProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v7];
}

- (void)connectWithClientInfo:(id)info
{
  infoCopy = info;
  v6 = qword_1009F9820;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [infoCopy objectForKey:PRProcessNameKey];
    v8 = [infoCopy objectForKey:PRProcessIdentifierKey];
    v9 = 138412546;
    v10 = v7;
    v11 = 1024;
    intValue = [v8 intValue];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PRBTRanging: XPC connection created. Process name: %@, pid: %d", &v9, 0x12u);
  }

  objc_storeStrong(&self->_clientInfo, info);
  [(PRBTRangingClientProxy *)self activate];
}

- (void)fetchTxPower:(id)power isUT:(id)t reply:(id)reply
{
  powerCopy = power;
  tCopy = t;
  replyCopy = reply;
  self->_utFinding = [tCopy BOOLValue];
  [(PRBTRangingClientProxy *)self setCurrentTask:1];
  [(PRBTRangingClientProxy *)self setUUID:powerCopy];
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000570D8;
  block[3] = &unk_10098B940;
  objc_copyWeak(&v17, &location);
  v12 = powerCopy;
  v16 = v12;
  dispatch_async(queue, block);
  v13 = voucher_copy();
  voucher = self->_clientVoucher.voucher;
  self->_clientVoucher.voucher = v13;

  replyCopy[2](replyCopy, 1, 0);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)startUTRanging:(id)ranging reply:(id)reply
{
  rangingCopy = ranging;
  replyCopy = reply;
  [(PRBTRangingClientProxy *)self setCurrentTask:2];
  self->_ranging = 1;
  [(PRBTRangingClientProxy *)self setUUID:rangingCopy];
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100057354;
  block[3] = &unk_10098B940;
  objc_copyWeak(&v12, &location);
  v9 = rangingCopy;
  v11 = v9;
  dispatch_async(queue, block);
  replyCopy[2](replyCopy, 1, 0);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)stopUTRanging:(id)ranging reply:(id)reply
{
  replyCopy = reply;
  [(PRBTRangingClientProxy *)self setCurrentTask:0];
  self->_ranging = 0;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000575C4;
  v7[3] = &unk_10098AB18;
  objc_copyWeak(&v8, &location);
  dispatch_async(queue, v7);
  replyCopy[2](replyCopy, 1, 0);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)startOwnerRanging:(id)ranging reply:(id)reply
{
  rangingCopy = ranging;
  replyCopy = reply;
  [(PRBTRangingClientProxy *)self setCurrentTask:5];
  self->_ranging = 1;
  self->_utFinding = 0;
  [(PRBTRangingClientProxy *)self setUUID:rangingCopy];
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000577C0;
  block[3] = &unk_10098B940;
  objc_copyWeak(&v12, &location);
  v9 = rangingCopy;
  v11 = v9;
  dispatch_async(queue, block);
  replyCopy[2](replyCopy, 1, 0);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)stopOwnerRanging:(id)ranging reply:(id)reply
{
  rangingCopy = ranging;
  replyCopy = reply;
  [(PRBTRangingClientProxy *)self setCurrentTask:8];
  self->_ranging = 0;
  self->_utFinding = 0;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100057A6C;
  block[3] = &unk_10098B940;
  objc_copyWeak(&v12, &location);
  v9 = rangingCopy;
  v11 = v9;
  dispatch_async(queue, block);
  replyCopy[2](replyCopy, 1, 0);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)setUUID:(id)d
{
  dCopy = d;
  if (!self->_beacon)
  {
    v5 = qword_1009F9820;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString = [dCopy UUIDString];
      v9 = 136315138;
      uTF8String = [uUIDString UTF8String];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#btranging-retry setting beacon to: %s", &v9, 0xCu);
    }

    v7 = [[PRRemoteDevice alloc] initWithBeaconUUID:dCopy];
    beacon = self->_beacon;
    self->_beacon = v7;
  }
}

- (id)convertToString:(int)string
{
  if (string > 8)
  {
    return 0;
  }

  else
  {
    return off_10098BAF8[string];
  }
}

@end