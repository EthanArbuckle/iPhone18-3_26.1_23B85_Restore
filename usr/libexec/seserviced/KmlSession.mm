@interface KmlSession
- (KmlSession)initWithRemoteObject:(id)object connection:(id)connection andQueue:(id)queue;
- (id)clientName;
- (void)cancelBackGroundTimer;
- (void)dealloc;
- (void)endSessionWithCompletion:(id)completion;
- (void)start;
- (void)stopWithError:(id)error;
@end

@implementation KmlSession

- (KmlSession)initWithRemoteObject:(id)object connection:(id)connection andQueue:(id)queue
{
  objectCopy = object;
  connectionCopy = connection;
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = KmlSession;
  v12 = [(KmlSession *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_remoteObject, object);
    objc_storeStrong(&v13->_connection, connection);
    objc_storeStrong(&v13->_workQueue, queue);
    v13->_isStarted = 0;
    backgroundTimer = v13->_backgroundTimer;
    v13->_backgroundTimer = 0;
  }

  return v13;
}

- (id)clientName
{
  userInfo = [(NSXPCConnection *)self->_connection userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"ClientName"];

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

  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_isStarted = 1;
  objc_sync_exit(selfCopy);

  [objc_getProperty(selfCopy v9];
  userInfo = [(NSXPCConnection *)selfCopy->_connection userInfo];
  v11 = [userInfo objectForKeyedSubscript:@"BackGroundClient"];
  bOOLValue = [v11 BOOLValue];

  if (bOOLValue)
  {
    v13 = [userInfo objectForKeyedSubscript:@"ClientIsDaemon"];
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

    sub_1003CD7C4(selfCopy, v14);
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

- (void)endSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100382658;
  block[3] = &unk_1004D1FF0;
  objc_copyWeak(&v9, &location);
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)stopWithError:(id)error
{
  errorCopy = error;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315650;
    v10 = "[KmlSession stopWithError:]";
    v11 = 1024;
    v12 = 79;
    v13 = 2112;
    v14 = errorCopy;
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

  [Property didEnd:errorCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_isStarted = 0;
  objc_sync_exit(selfCopy);
}

@end