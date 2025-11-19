@interface MIBUBTConnection
- (MIBUBTConnection)initWithDelegate:(id)a3;
- (id)_responseWithHeader:(id)a3;
- (void)_startCBServerWithLTK:(id)a3;
- (void)_startConnectionReadLoop;
- (void)invalidate;
- (void)startWithRspIRK:(id)a3 usingLTK:(id)a4 outError:(id *)a5;
@end

@implementation MIBUBTConnection

- (MIBUBTConnection)initWithDelegate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MIBUBTConnection;
  v5 = [(MIBUBTConnection *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(MIBUBTConnection *)v5 setServer:0];
    [(MIBUBTConnection *)v6 setDelegate:v4];
    [(MIBUBTConnection *)v6 setRunning:0];
    v7 = objc_alloc_init(CBAdvertiser);
    [(MIBUBTConnection *)v6 setAdvertiser:v7];

    v8 = dispatch_queue_create("com.apple.mibu_bt_connection_queue", 0);
    [(MIBUBTConnection *)v6 setQueue:v8];

    [(MIBUBTConnection *)v6 setConnection:0];
  }

  return v6;
}

- (void)startWithRspIRK:(id)a3 usingLTK:(id)a4 outError:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  objc_sync_enter(v9);
  if ([(MIBUBTConnection *)v9 running])
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005C05C();
    }

    v10 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v39 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Bluetooth controller already running, ignore advertise of payload: %{public}@", buf, 0xCu);
    }
  }

  else if (v7)
  {
    if (v8)
    {
      objc_initWeak(buf, v9);
      [(MIBUBTConnection *)v9 setRunning:1];
      v11 = [(MIBUBTConnection *)v9 advertiser];
      [v11 setSoftwareUpdateActionType:2];

      v37 = v7;
      v12 = [NSArray arrayWithObjects:&v37 count:1];
      v13 = [(MIBUBTConnection *)v9 advertiser];
      [v13 setSoftwareUpdateDataArray:v12];

      v14 = [(MIBUBTConnection *)v9 advertiser];
      [v14 setInvalidationHandler:&stru_10009C618];

      v15 = [(MIBUBTConnection *)v9 advertiser];
      v32 = _NSConcreteStackBlock;
      v33 = 3221225472;
      v34 = sub_100027B2C;
      v35 = &unk_10009C6A0;
      objc_copyWeak(&v36, buf);
      [v15 activateWithCompletion:&v32];

      [(MIBUBTConnection *)v9 _startCBServerWithLTK:v8, v32, v33, v34, v35];
      objc_destroyWeak(&v36);
      objc_destroyWeak(buf);
    }

    else
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_10005BFC4();
      }

      v24 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
      {
        sub_10005BFD8(v24, v25, v26, v27, v28, v29, v30, v31);
      }
    }
  }

  else
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005C010();
    }

    v16 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_10005C024(v16, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  objc_sync_exit(v9);
}

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  [(MIBUBTConnection *)obj setRunning:0];
  v2 = [(MIBUBTConnection *)obj connection];
  [v2 invalidate];

  [(MIBUBTConnection *)obj setConnection:0];
  v3 = [(MIBUBTConnection *)obj advertiser];
  [v3 invalidate];

  v4 = [(MIBUBTConnection *)obj server];
  [v4 invalidate];

  v5 = [(MIBUBTConnection *)obj delegate];
  [v5 didInvalidate:obj];

  objc_sync_exit(obj);
}

- (void)_startCBServerWithLTK:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = objc_alloc_init(CBServer);
  [(MIBUBTConnection *)self setServer:v5];

  v6 = [(MIBUBTConnection *)self server];
  [v6 setBleListenPSM:CBAssignedL2CAPPSMForSoftwareUpdate];

  v7 = [(MIBUBTConnection *)self server];
  NSSelectorFromString(@"tempLTK");
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005C144();
    }

    v9 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CBServer supports taking LTK!", buf, 2u);
    }

    v10 = [(MIBUBTConnection *)self server];
    [v10 setValue:v4 forKey:@"tempLTK"];
  }

  else
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005C11C();
    }

    v11 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CBServer does NOT support taking LTK!", buf, 2u);
    }
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100028214;
  v22[3] = &unk_100099458;
  objc_copyWeak(&v23, &location);
  v12 = [(MIBUBTConnection *)self server];
  [v12 setBluetoothStateChangedHandler:v22];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100028394;
  v19[3] = &unk_10009C810;
  objc_copyWeak(&v21, &location);
  v13 = v4;
  v20 = v13;
  v14 = [(MIBUBTConnection *)self server];
  [v14 setAcceptHandler:v19];

  v15 = [(MIBUBTConnection *)self server];
  [v15 setInvalidationHandler:&stru_10009C830];

  v16 = [(MIBUBTConnection *)self server];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100028CC4;
  v17[3] = &unk_10009C6A0;
  objc_copyWeak(&v18, &location);
  [v16 activateWithCompletion:v17];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (id)_responseWithHeader:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 length];
  v8[0] = 0;
  v8[1] = HIBYTE(v5);
  v8[2] = v5;
  [v4 appendBytes:v8 length:3];
  [v4 appendData:v3];

  v6 = [v4 copy];

  return v6;
}

- (void)_startConnectionReadLoop
{
  v3 = dispatch_get_global_queue(33, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029044;
  block[3] = &unk_1000994A8;
  block[4] = self;
  dispatch_async(v3, block);
}

@end