@interface PRBTRangingClientProxy
- (PRBTRangingClientProxy)initWithConnection:(id)a3 queue:(id)a4;
- (id)convertToString:(int)a3;
- (void)activate;
- (void)connectWithClientInfo:(id)a3;
- (void)dealloc;
- (void)deinitCompanion;
- (void)didFailWithError:(id)a3;
- (void)fetchTxPower:(id)a3 isUT:(id)a4 reply:(id)a5;
- (void)findMyAccessoryManager:(id)a3 didCompleteAggressiveAdvertisingOnDevice:(id)a4 withError:(id)a5;
- (void)findMyAccessoryManager:(id)a3 didConnectDevice:(id)a4 error:(id)a5;
- (void)findMyAccessoryManager:(id)a3 didDisconnectDevice:(id)a4;
- (void)findMyAccessoryManager:(id)a3 didFailWithError:(id)a4 forDevice:(id)a5;
- (void)findMyAccessoryManager:(id)a3 didFetchTxPower:(id)a4 fromDevice:(id)a5 withError:(id)a6;
- (void)findMyAccessoryManager:(id)a3 didObserveAdvertisementWithDate:(id)a4 address:(id)a5 advertisementData:(id)a6 status:(unsigned __int8)a7 rssi:(int64_t)a8 reserved:(id)a9 uuid:(id)a10 ownershipType:(unint64_t)a11 channel:(unint64_t)a12;
- (void)findMyAccessoryManager:(id)a3 didStartAggressiveAdvertisingOnDevice:(id)a4 withError:(id)a5;
- (void)findMyAccessoryManager:(id)a3 didStartUnauthorizedAggressiveAdvertisingOnDevice:(id)a4 withError:(id)a5;
- (void)findMyAccessoryManager:(id)a3 didStopAggressiveAdvertisingOnDevice:(id)a4 withError:(id)a5;
- (void)handleError:(id)a3;
- (void)informDelegateOwnerRangeStoppedonDevice:(id)a3;
- (void)setUUID:(id)a3;
- (void)startOwnerRanging:(id)a3 reply:(id)a4;
- (void)startUTRanging:(id)a3 reply:(id)a4;
- (void)stopOwnerRanging:(id)a3 reply:(id)a4;
- (void)stopUTRanging:(id)a3 reply:(id)a4;
- (void)terminate;
@end

@implementation PRBTRangingClientProxy

- (PRBTRangingClientProxy)initWithConnection:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
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
    objc_storeStrong(&v10->_queue, a4);
    beacon = v11->_beacon;
    v11->_beacon = 0;

    v11->_cleaningUponDidFail = 0;
    *&v11->_utFinding = 1;
    v11->_ranging = 0;
    v11->_currentTask = 0;
    v13 = [[PRNSXPCConnection alloc] initWithConnection:v7];
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

- (void)handleError:(id)a3
{
  v4 = a3;
  [(PRBTRangingClientProxy *)self setCurrentTask:0];
  connWrapper = self->_connWrapper;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100053DA4;
  v7[3] = &unk_10098B918;
  v6 = v4;
  v8 = v6;
  [(PRBTRangingClientProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v7];
}

- (void)didFailWithError:(id)a3
{
  v4 = a3;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#btranging-retry didFailWithError: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100053F7C;
  v8[3] = &unk_10098B940;
  objc_copyWeak(&v10, buf);
  v9 = v4;
  v7 = v4;
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
      v4 = [(PRRemoteDevice *)self->_beacon UUID];
      v5 = [v4 UUIDString];
      v8 = 136315138;
      v9 = [v5 UTF8String];
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#btranging-retry command stopAggressiveAdvertising on device %s", &v8, 0xCu);
    }

    accessoryManager = self->_accessoryManager;
    v7 = [(PRRemoteDevice *)self->_beacon UUID];
    [(CLFindMyAccessoryManager *)accessoryManager stopAggressiveAdvertisingOnDevice:v7];
  }
}

- (void)findMyAccessoryManager:(id)a3 didFailWithError:(id)a4 forDevice:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10 || self->_accessoryManager == v8 && (-[PRRemoteDevice UUID](self->_beacon, "UUID"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v10 isEqual:v11], v11, (v12 & 1) != 0))
  {
    v13 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v24 = v10;
      v25 = 2112;
      v26 = v9;
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

- (void)findMyAccessoryManager:(id)a3 didConnectDevice:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = qword_1009F9820;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v9 UUIDString];
    *buf = 136315394;
    v21 = [v12 UTF8String];
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#btranging-retry _accessoryManager didConnectDevice %s with #error:%@", buf, 0x16u);
  }

  if (!v9 || self->_accessoryManager == v8 && (-[PRRemoteDevice UUID](self->_beacon, "UUID"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v9 isEqual:v13], v13, (v14 & 1) != 0))
  {
    objc_initWeak(buf, self);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100054638;
    block[3] = &unk_10098B990;
    objc_copyWeak(&v19, buf);
    v17 = v9;
    v18 = v10;
    dispatch_async(queue, block);

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }
}

- (void)findMyAccessoryManager:(id)a3 didDisconnectDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7 || self->_accessoryManager == v6 && (-[PRRemoteDevice UUID](self->_beacon, "UUID"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqual:v8], v8, (v9 & 1) != 0))
  {
    v10 = qword_1009F9820;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v7 UUIDString];
      *buf = 136315138;
      v17 = [v11 UTF8String];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#btranging-retry _accessoryManager didDisconnect device %s", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    queue = self->_queue;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100054EA8;
    v13[3] = &unk_10098B940;
    objc_copyWeak(&v15, buf);
    v14 = v7;
    dispatch_async(queue, v13);

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }
}

- (void)findMyAccessoryManager:(id)a3 didFetchTxPower:(id)a4 fromDevice:(id)a5 withError:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v12 || self->_accessoryManager == v10 && (-[PRRemoteDevice UUID](self->_beacon, "UUID"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v12 isEqual:v14], v14, (v15 & 1) != 0))
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005522C;
    block[3] = &unk_10098B9E0;
    objc_copyWeak(&v21, &location);
    v18 = v12;
    v19 = v11;
    v20 = v13;
    dispatch_async(queue, block);

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

- (void)findMyAccessoryManager:(id)a3 didStartUnauthorizedAggressiveAdvertisingOnDevice:(id)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9 || self->_accessoryManager == v8 && (-[PRRemoteDevice UUID](self->_beacon, "UUID"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v9 isEqual:v11], v11, (v12 & 1) != 0))
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10005579C;
    v14[3] = &unk_10098B990;
    objc_copyWeak(&v17, &location);
    v15 = v9;
    v16 = v10;
    dispatch_async(queue, v14);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (void)findMyAccessoryManager:(id)a3 didStartAggressiveAdvertisingOnDevice:(id)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9 || self->_accessoryManager == v8 && (-[PRRemoteDevice UUID](self->_beacon, "UUID"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v9 isEqual:v11], v11, (v12 & 1) != 0))
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100055C38;
    v14[3] = &unk_10098B990;
    objc_copyWeak(&v17, &location);
    v15 = v9;
    v16 = v10;
    dispatch_async(queue, v14);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (void)findMyAccessoryManager:(id)a3 didStopAggressiveAdvertisingOnDevice:(id)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9 || self->_accessoryManager == v8 && (-[PRRemoteDevice UUID](self->_beacon, "UUID"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v9 isEqual:v11], v11, (v12 & 1) != 0))
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000562D8;
    v14[3] = &unk_10098B990;
    objc_copyWeak(&v17, &location);
    v15 = v9;
    v16 = v10;
    dispatch_async(queue, v14);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (void)findMyAccessoryManager:(id)a3 didCompleteAggressiveAdvertisingOnDevice:(id)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9 || self->_accessoryManager == v8 && (-[PRRemoteDevice UUID](self->_beacon, "UUID"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v9 isEqual:v11], v11, (v12 & 1) != 0))
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000566DC;
    v14[3] = &unk_10098B990;
    objc_copyWeak(&v17, &location);
    v15 = v9;
    v16 = v10;
    dispatch_async(queue, v14);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (void)findMyAccessoryManager:(id)a3 didObserveAdvertisementWithDate:(id)a4 address:(id)a5 advertisementData:(id)a6 status:(unsigned __int8)a7 rssi:(int64_t)a8 reserved:(id)a9 uuid:(id)a10 ownershipType:(unint64_t)a11 channel:(unint64_t)a12
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a9;
  v22 = a10;
  if (v22)
  {
    if (self->_accessoryManager == v17)
    {
      v23 = [(PRRemoteDevice *)self->_beacon UUID];
      v24 = [v22 isEqual:v23];

      if (v24)
      {
        v25 = qword_1009F9820;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [v22 UUIDString];
          *buf = 136315650;
          v33 = [v26 UTF8String];
          v34 = 1024;
          v35 = a8;
          v36 = 1024;
          v37 = a12;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#btranging-retry didObserveAdvertisementWithDate for %s with rssi:%d channel:%d", buf, 0x18u);
        }

        v27 = [[PRBTRSSI alloc] initWithTimeStamp:a8 rssi_dbm:a12 channel:sub_100005288()];
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

- (void)informDelegateOwnerRangeStoppedonDevice:(id)a3
{
  v4 = a3;
  connWrapper = self->_connWrapper;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100056D4C;
  v7[3] = &unk_10098B918;
  v8 = v4;
  v6 = v4;
  [(PRBTRangingClientProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v7];
}

- (void)connectWithClientInfo:(id)a3
{
  v5 = a3;
  v6 = qword_1009F9820;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 objectForKey:PRProcessNameKey];
    v8 = [v5 objectForKey:PRProcessIdentifierKey];
    v9 = 138412546;
    v10 = v7;
    v11 = 1024;
    v12 = [v8 intValue];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PRBTRanging: XPC connection created. Process name: %@, pid: %d", &v9, 0x12u);
  }

  objc_storeStrong(&self->_clientInfo, a3);
  [(PRBTRangingClientProxy *)self activate];
}

- (void)fetchTxPower:(id)a3 isUT:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  self->_utFinding = [v9 BOOLValue];
  [(PRBTRangingClientProxy *)self setCurrentTask:1];
  [(PRBTRangingClientProxy *)self setUUID:v8];
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000570D8;
  block[3] = &unk_10098B940;
  objc_copyWeak(&v17, &location);
  v12 = v8;
  v16 = v12;
  dispatch_async(queue, block);
  v13 = voucher_copy();
  voucher = self->_clientVoucher.voucher;
  self->_clientVoucher.voucher = v13;

  v10[2](v10, 1, 0);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)startUTRanging:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(PRBTRangingClientProxy *)self setCurrentTask:2];
  self->_ranging = 1;
  [(PRBTRangingClientProxy *)self setUUID:v6];
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100057354;
  block[3] = &unk_10098B940;
  objc_copyWeak(&v12, &location);
  v9 = v6;
  v11 = v9;
  dispatch_async(queue, block);
  v7[2](v7, 1, 0);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)stopUTRanging:(id)a3 reply:(id)a4
{
  v5 = a4;
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
  v5[2](v5, 1, 0);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)startOwnerRanging:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(PRBTRangingClientProxy *)self setCurrentTask:5];
  self->_ranging = 1;
  self->_utFinding = 0;
  [(PRBTRangingClientProxy *)self setUUID:v6];
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000577C0;
  block[3] = &unk_10098B940;
  objc_copyWeak(&v12, &location);
  v9 = v6;
  v11 = v9;
  dispatch_async(queue, block);
  v7[2](v7, 1, 0);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)stopOwnerRanging:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v9 = v6;
  v11 = v9;
  dispatch_async(queue, block);
  v7[2](v7, 1, 0);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)setUUID:(id)a3
{
  v4 = a3;
  if (!self->_beacon)
  {
    v5 = qword_1009F9820;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 UUIDString];
      v9 = 136315138;
      v10 = [v6 UTF8String];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#btranging-retry setting beacon to: %s", &v9, 0xCu);
    }

    v7 = [[PRRemoteDevice alloc] initWithBeaconUUID:v4];
    beacon = self->_beacon;
    self->_beacon = v7;
  }
}

- (id)convertToString:(int)a3
{
  if (a3 > 8)
  {
    return 0;
  }

  else
  {
    return off_10098BAF8[a3];
  }
}

@end