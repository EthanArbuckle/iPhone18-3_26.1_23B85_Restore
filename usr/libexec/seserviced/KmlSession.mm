@interface KmlSession
- (KmlSession)initWithRemoteObject:(id)a3 connection:(id)a4 andQueue:(id)a5;
- (id)clientName;
- (void)cancelBackGroundTimer;
- (void)dealloc;
- (void)endSessionWithCompletion:(id)a3;
- (void)start;
- (void)stopWithError:(id)a3;
@end

@implementation KmlSession

- (KmlSession)initWithRemoteObject:(id)a3 connection:(id)a4 andQueue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = KmlSession;
  v12 = [(KmlSession *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_remoteObject, a3);
    objc_storeStrong(&v13->_connection, a4);
    objc_storeStrong(&v13->_workQueue, a5);
    v13->_isStarted = 0;
    backgroundTimer = v13->_backgroundTimer;
    v13->_backgroundTimer = 0;
  }

  return v13;
}

- (id)clientName
{
  v2 = [(NSXPCConnection *)self->_connection userInfo];
  v3 = [v2 objectForKeyedSubscript:@"ClientName"];

  return v3;
}

- (void)dealloc
{
  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v6 = "[KmlSession dealloc]";
    v7 = 1024;
    v8 = 74;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s : %i : Session released", buf, 0x12u);
  }

  v4.receiver = self;
  v4.super_class = KmlSession;
  [(KmlSession *)&v4 dealloc];
}

- (void)start
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = sub_100389BB4(KmlPowerAssertion, v4);
  pwrAssertion = self->_pwrAssertion;
  self->_pwrAssertion = v5;

  v7 = KmlLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v16 = 136315394;
    v17 = "[KmlSession start]";
    v18 = 1024;
    v19 = 91;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s : %i : ", &v16, 0x12u);
  }

  v8 = self;
  objc_sync_enter(v8);
  v8->_isStarted = 1;
  objc_sync_exit(v8);

  [objc_getProperty(v8 v9];
  v10 = [(NSXPCConnection *)v8->_connection userInfo];
  v11 = [v10 objectForKeyedSubscript:@"BackGroundClient"];
  v12 = [v11 BOOLValue];

  if (v12)
  {
    v13 = [v10 objectForKeyedSubscript:@"ClientIsDaemon"];
    if ([v13 BOOLValue])
    {
      v14 = 600.0;
    }

    else
    {
      v14 = 10.0;
    }

    v15 = KmlLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = 136315650;
      v17 = "[KmlSession start]";
      v18 = 1024;
      v19 = 99;
      v20 = 2048;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s : %i : Kill this session started by background client after %f seconds", &v16, 0x1Cu);
    }

    sub_1003CD7C4(v8, v14);
  }
}

- (void)cancelBackGroundTimer
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003823B8;
  block[3] = &unk_1004C08D8;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)endSessionWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100382658;
  block[3] = &unk_1004D1FF0;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)stopWithError:(id)a3
{
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315650;
    v10 = "[KmlSession stopWithError:]";
    v11 = 1024;
    v12 = 79;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s : %i : %@", &v9, 0x1Cu);
  }

  if (self)
  {
    Property = objc_getProperty(self, v6, 48, 1);
  }

  else
  {
    Property = 0;
  }

  [Property didEnd:v4];
  v8 = self;
  objc_sync_enter(v8);
  v8->_isStarted = 0;
  objc_sync_exit(v8);
}

@end