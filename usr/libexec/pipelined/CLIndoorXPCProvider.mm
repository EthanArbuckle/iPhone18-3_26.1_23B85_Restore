@interface CLIndoorXPCProvider
+ (id)newConnectionFor:(id)for;
- (CLIndoorXPCProvider)init;
- (CLIndoorXPCProvider)initWithConnection:(id)connection;
- (CLIndoorXPCProvider)initWithEndpoint:(id)endpoint;
- (id)_defaultErrHandler:(id)handler forCaller:(id)caller;
- (id)_defaultErrHandlerForCaller:(id)caller;
- (int)withinQueueShouldReinitializeRemote:()time_point<std:(std:()std:(1000000000>>>)std :ratio<1 :chrono::duration<long)long :chrono::steady_clock;
- (void)dealloc;
- (void)invalidate;
- (void)withinQueueHandleReconnect:()time_point<std:(std:()std:(1000000000>>>)std :ratio<1 :chrono::duration<long)long :chrono::steady_clock;
- (void)withinQueueInitializeConnection;
- (void)withinQueueInterruptionHandler;
- (void)withinQueueInvalidate;
- (void)withinQueueReinitializeRemoteState;
- (void)withinQueueScheduleReconnect:(duration<long)long reason:()std:(1000000000>>)std :(id)a4 ratio<1;
@end

@implementation CLIndoorXPCProvider

+ (id)newConnectionFor:(id)for
{
  forCopy = for;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [NSXPCConnection alloc];
  endpointName = [forCopy endpointName];
  v7 = [v4 persistentDomainForName:@"com.apple.pipelined.framework"];
  v8 = [v7 objectForKey:@"UnprivilegedDaemon"];
  bOOLValue = [v8 BOOLValue];

  if (!bOOLValue)
  {
    v11 = 4096;
    goto LABEL_7;
  }

  if (qword_10045B060 != -1)
  {
    sub_10038285C();
    v10 = qword_10045B068;
    if (!os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_INFO))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v10 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_INFO))
  {
LABEL_4:
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "UnprivilegedDaemon default found.  Connecting to service launched manually (i.e. not via launchd)", v14, 2u);
  }

LABEL_5:
  v11 = 0;
LABEL_7:

  v12 = [v5 initWithMachServiceName:endpointName options:v11];
  return v12;
}

- (CLIndoorXPCProvider)init
{
  impl = [(CLIndoorXPCProvider *)self impl];
  v4 = [CLIndoorXPCProvider newConnectionFor:impl];

  if (qword_10045B060 != -1)
  {
    sub_10038285C();
    v5 = qword_10045B068;
    if (!os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "CLIndoorXPCProvider, init", v8, 2u);
  }

LABEL_4:
  v6 = [(CLIndoorXPCProvider *)self initWithConnection:v4];

  return v6;
}

- (CLIndoorXPCProvider)initWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v5 = [[NSXPCConnection alloc] initWithListenerEndpoint:endpointCopy];
  if (qword_10045B060 != -1)
  {
    sub_10038285C();
    v6 = qword_10045B068;
    if (!os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "CLIndoorXPCProvider, initWithEndpoint", v9, 2u);
  }

LABEL_4:
  v7 = [(CLIndoorXPCProvider *)self initWithConnection:v5];

  return v7;
}

- (CLIndoorXPCProvider)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v28.receiver = self;
  v28.super_class = CLIndoorXPCProvider;
  v6 = [(CLIndoorXPCProvider *)&v28 init];
  v7 = v6;
  v8 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  if (![(CLIndoorXPCProvider *)v6 conformsToProtocol:&OBJC_PROTOCOL___CLIndoorXPCProviderImplementation])
  {
    v22 = @"Concrete implementation of CLIndoorXPCProvider must conform to CLIndoorXPCProviderImplementation";
    goto LABEL_15;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [NSString stringWithFormat:@"com.apple.CoreIndoor.%@", v11];

  v13 = dispatch_queue_create([v12 UTF8String], 0);
  frameworkQueue = v8->_frameworkQueue;
  v8->_frameworkQueue = v13;

  v15 = v8->_frameworkQueue;
  objc_autoreleasePoolPop(v9);
  if (!v15)
  {
LABEL_9:
    v20 = 0;
    goto LABEL_10;
  }

  objc_storeStrong(&v7->_connection, connection);
  if (!v8->_connection)
  {
    v22 = @"Must provide a connection";
LABEL_15:
    v23 = [NSException exceptionWithName:NSInvalidArgumentException reason:v22 userInfo:0];
    objc_exception_throw(v23);
  }

  dispatch_queue_set_specific(v8->_frameworkQueue, &unk_1003C6C90, v8, 0);
  v16 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v8->_frameworkQueue);
  interruptReconnection = v8->_interruptReconnection;
  v8->_interruptReconnection = v16;

  objc_initWeak(&location, v8);
  v18 = v8->_interruptReconnection;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3321888768;
  handler[2] = sub_10001EB8C;
  handler[3] = &unk_1004326F0;
  objc_copyWeak(to, &location);
  objc_copyWeak(&v26, to);
  dispatch_source_set_event_handler(v18, handler);
  objc_destroyWeak(to);
  dispatch_resume(v8->_interruptReconnection);
  if (qword_10045B060 != -1)
  {
    sub_100382870();
    v19 = qword_10045B068;
    if (!os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_INFO))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v19 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_INFO))
  {
LABEL_7:
    LOWORD(to[0]) = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "CLIndoorXPCProvider, initWithConnection, re-initializing", to, 2u);
  }

LABEL_8:
  [(CLIndoorXPCProvider *)v8 withinQueueInitializeConnection];
  v20 = v8;
  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
LABEL_10:

  return v20;
}

- (void)dealloc
{
  impl = [(CLIndoorXPCProvider *)self impl];
  endpointName = [impl endpointName];
  uTF8String = [endpointName UTF8String];

  if (dispatch_get_specific(&unk_1003C6C90) == self || !self->_frameworkQueue)
  {
    if (qword_10045B060 != -1)
    {
      sub_10038285C();
    }

    v9 = qword_10045B068;
    if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v14 = uTF8String;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "dealloc connection to %{public}s", buf, 0xCu);
    }

    [(CLIndoorXPCProvider *)self withinQueueInvalidate];
  }

  else
  {
    if (qword_10045B060 != -1)
    {
      sub_10038285C();
    }

    v6 = qword_10045B068;
    if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "dealloc begins", buf, 2u);
    }

    frameworkQueue = self->_frameworkQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3321888768;
    block[2] = sub_10001EE54;
    block[3] = &unk_100432720;
    selfCopy = self;
    v8 = selfCopy;
    dispatch_sync(frameworkQueue, block);
  }

  v10.receiver = self;
  v10.super_class = CLIndoorXPCProvider;
  [(CLIndoorXPCProvider *)&v10 dealloc];
}

- (void)invalidate
{
  frameworkQueue = self->_frameworkQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10001EFBC;
  block[3] = &unk_100432750;
  selfCopy = self;
  v3 = selfCopy;
  dispatch_sync(frameworkQueue, block);
}

- (void)withinQueueInvalidate
{
  if (qword_10045B060 != -1)
  {
    sub_10038285C();
  }

  v3 = qword_10045B068;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    connection = self->_connection;
    impl = [(CLIndoorXPCProvider *)self impl];
    endpointName = [impl endpointName];
    v10 = 134349314;
    v11 = connection;
    v12 = 2114;
    v13 = endpointName;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "About to invalidate connection %{public}p to %{public}@", &v10, 0x16u);
  }

  [(NSXPCConnection *)self->_connection setInterruptionHandler:0];
  [(NSXPCConnection *)self->_connection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_connection invalidate];
  interruptReconnection = self->_interruptReconnection;
  if (interruptReconnection)
  {
    dispatch_source_cancel(interruptReconnection);
  }

  v8 = self->_connection;
  self->_connection = 0;

  impl2 = [(CLIndoorXPCProvider *)self impl];
  [impl2 withinQueueInvalidateState];
}

- (void)withinQueueInitializeConnection
{
  impl = [(CLIndoorXPCProvider *)self impl];
  remoteObjectProtocol = [impl remoteObjectProtocol];
  v5 = [NSXPCInterface interfaceWithProtocol:remoteObjectProtocol];
  [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v5];

  objc_initWeak(&location, self);
  objc_copyWeak(&to, &location);
  v12 = _NSConcreteStackBlock;
  v13 = 3321888768;
  v14 = sub_10001FFB4;
  v15 = &unk_1004327F0;
  objc_copyWeak(&v16, &to);
  v6 = objc_retainBlock(&v12);
  objc_destroyWeak(&v16);
  [(NSXPCConnection *)self->_connection setInterruptionHandler:v6];

  objc_destroyWeak(&to);
  objc_initWeak(&from, self);
  objc_copyWeak(&v8, &from);
  v12 = _NSConcreteStackBlock;
  v13 = 3321888768;
  v14 = sub_10002006C;
  v15 = &unk_100432848;
  objc_copyWeak(&v16, &v8);
  v7 = objc_retainBlock(&v12);
  objc_destroyWeak(&v16);
  [(NSXPCConnection *)self->_connection setInvalidationHandler:v7];

  objc_destroyWeak(&v8);
  [(NSXPCConnection *)self->_connection resume];
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (void)withinQueueInterruptionHandler
{
  impl = [(CLIndoorXPCProvider *)self impl];
  withinQueuePermanentShutdownReason = [impl withinQueuePermanentShutdownReason];

  if (withinQueuePermanentShutdownReason)
  {
    if (qword_10045B060 != -1)
    {
      sub_10038285C();
    }

    v5 = qword_10045B068;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      impl2 = [(CLIndoorXPCProvider *)self impl];
      endpointName = [impl2 endpointName];
      v8 = [withinQueuePermanentShutdownReason description];
      v12 = 138543618;
      v13 = endpointName;
      v14 = 2114;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "XPC connection invalidated by daemon to %{public}@: %{public}@", &v12, 0x16u);
    }

    [(CLIndoorXPCProvider *)self withinQueueInvalidate];
  }

  else
  {
    if (qword_10045B060 != -1)
    {
      sub_10038285C();
    }

    v9 = qword_10045B068;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      impl3 = [(CLIndoorXPCProvider *)self impl];
      endpointName2 = [impl3 endpointName];
      v12 = 138543362;
      v13 = endpointName2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "pipelined interruption handler for %{public}@", &v12, 0xCu);
    }

    [(CLIndoorXPCProvider *)self withinQueueHandleReconnect:std::chrono::steady_clock::now().__d_.__rep_];
  }
}

- (void)withinQueueHandleReconnect:()time_point<std:(std:()std:(1000000000>>>)std :ratio<1 :chrono::duration<long)long :chrono::steady_clock
{
  v5 = [(CLIndoorXPCProvider *)self withinQueueShouldReinitializeRemote:?];
  if (v5 == 1)
  {
    [(CLIndoorXPCProvider *)self withinQueueReinitializeRemoteState];
    if (self->_lastReconnectTime.m_initialized)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v5 == 2)
  {
    [(CLIndoorXPCProvider *)self withinQueueScheduleReconnect:*(&self->_lastReconnectTime.m_storage.dummy_.aligner_ + 7) - std.var0.__rep_ + 10000000000 reason:@"deferred re-initialization"];
  }

  if (!self->_lastReconnectTime.m_initialized)
  {
LABEL_5:
    self->_lastReconnectTime.m_initialized = 1;
  }

LABEL_6:
  *(&self->_lastReconnectTime.m_storage.dummy_.aligner_ + 7) = std;
}

- (int)withinQueueShouldReinitializeRemote:()time_point<std:(std:()std:(1000000000>>>)std :ratio<1 :chrono::duration<long)long :chrono::steady_clock
{
  impl = [(CLIndoorXPCProvider *)self impl];
  withinQueueCanReinitializeRemoteState = [impl withinQueueCanReinitializeRemoteState];

  if (withinQueueCanReinitializeRemoteState)
  {
    if (self->_lastReconnectTime.m_initialized && std.var0.__rep_ - *(&self->_lastReconnectTime.m_storage.dummy_.aligner_ + 7) < 10000000000)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (qword_10045B060 != -1)
    {
      sub_10038285C();
    }

    v8 = qword_10045B068;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      impl2 = [(CLIndoorXPCProvider *)self impl];
      endpointName = [impl2 endpointName];
      v11 = 138543362;
      v12 = endpointName;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Already invalidated/no remote state - ignoring request to re-initialize %{public}@", &v11, 0xCu);
    }

    return 0;
  }
}

- (void)withinQueueReinitializeRemoteState
{
  if (qword_10045B060 != -1)
  {
    sub_10038285C();
  }

  v3 = qword_10045B068;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    impl = [(CLIndoorXPCProvider *)self impl];
    endpointName = [impl endpointName];
    v7 = 138543362;
    v8 = endpointName;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "re-initializing pipelined connection to %{public}@ with existing state", &v7, 0xCu);
  }

  impl2 = [(CLIndoorXPCProvider *)self impl];
  [impl2 withinQueueReinitializeRemoteState];
}

- (void)withinQueueScheduleReconnect:(duration<long)long reason:()std:(1000000000>>)std :(id)a4 ratio<1
{
  v6 = a4;
  if (qword_10045B060 != -1)
  {
    sub_10038285C();
  }

  v7 = qword_10045B068;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    impl = [(CLIndoorXPCProvider *)self impl];
    endpointName = [impl endpointName];
    v11 = 138543874;
    v12 = endpointName;
    v13 = 2114;
    v14 = v6;
    v15 = 2048;
    v16 = std.__rep_ / 1000000;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Connection to %{public}@ %{public}@ - retrying in %lld milliseconds", &v11, 0x20u);
  }

  v10 = dispatch_time(0, std.__rep_);
  dispatch_source_set_timer(self->_interruptReconnection, v10, 0xFFFFFFFFFFFFFFFFLL, 0x77359400uLL);
}

- (id)_defaultErrHandlerForCaller:(id)caller
{
  v3 = [(CLIndoorXPCProvider *)self _defaultErrHandler:&stru_100432780 forCaller:caller];

  return v3;
}

- (id)_defaultErrHandler:(id)handler forCaller:(id)caller
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3321888768;
  v11[2] = sub_10001FD50;
  v11[3] = &unk_1004327A0;
  callerCopy = caller;
  v6 = objc_retainBlock(handler);
  v7 = callerCopy;
  v12 = v7;
  v13 = objc_retainBlock(v6);
  v8 = objc_retainBlock(v11);

  v9 = objc_retainBlock(v8);

  return v9;
}

@end