@interface CDRequesterDaemon
- (CDRequesterDaemon)init;
- (id)_authenticationSessionWithClient:(id)client request:(id)request;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)_activated;
- (void)_invalidated;
- (void)_startServiceListener;
- (void)activate;
- (void)invalidate;
- (void)serviceConnection:(id)connection fetchDaemonStatusWithCompletionHandler:(id)handler;
- (void)serviceConnection:(id)connection serviceClient:(id)client startAuthenticationSessionWithRequest:(id)request completionHandler:(id)handler;
- (void)serviceListener:(id)listener connectionInvalidated:(id)invalidated;
- (void)serviceListener:(id)listener willAcceptConnection:(id)connection;
@end

@implementation CDRequesterDaemon

- (CDRequesterDaemon)init
{
  v5.receiver = self;
  v5.super_class = CDRequesterDaemon;
  v2 = [(CDRequesterDaemon *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    v3->_activateCalledAtomic = 0;
  }

  return v3;
}

- (void)activate
{
  v3 = cps_daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "activate called", buf, 2u);
  }

  atomic_store(1u, &self->_activateCalledAtomic);
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017FD4;
  block[3] = &unk_100089E20;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidate
{
  v3 = cps_daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "invalidate called", buf, 2u);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000180A8;
  block[3] = &unk_100089E20;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);

  [(CDRequesterDaemon *)self _startServiceListener];
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    [(CDServiceListener *)self->_serviceListener invalidate];
    serviceListener = self->_serviceListener;
    self->_serviceListener = 0;

    [(CDRequesterSession *)self->_currentSession invalidate];
    currentSession = self->_currentSession;
    self->_currentSession = 0;

    self->_invalidateDone = 1;
  }
}

- (void)_startServiceListener
{
  v3 = objc_alloc_init(CDServiceListener);
  serviceListener = self->_serviceListener;
  self->_serviceListener = v3;

  [(CDServiceListener *)self->_serviceListener setDispatchQueue:self->_dispatchQueue];
  [(CDServiceListener *)self->_serviceListener setDelegate:self];
  v5 = self->_serviceListener;

  [(CDServiceListener *)v5 activate];
}

- (id)_authenticationSessionWithClient:(id)client request:(id)request
{
  clientCopy = client;
  requestCopy = request;
  v7 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = off_100089018;
LABEL_19:
    v14 = [objc_alloc(*v9) initWithClient:clientCopy request:requestCopy];
    goto LABEL_20;
  }

  v10 = objc_opt_self();
  v11 = objc_opt_isKindOfClass();

  if (v11)
  {
    v9 = off_100089020;
    goto LABEL_19;
  }

  v12 = objc_opt_self();
  v13 = objc_opt_isKindOfClass();

  if (v13)
  {
    v9 = off_100089008;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = off_100089000;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = off_100089010;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = off_100089028;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = off_100088FF8;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = off_100088FF0;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = &off_100089030;
    goto LABEL_19;
  }

  v14 = 0;
LABEL_20:

  return v14;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  [BSDescriptionBuilder builderWithObject:self];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100018480;
  v5 = v8[3] = &unk_10008A030;
  v9 = v5;
  selfCopy = self;
  [v5 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v8];

  v6 = v5;
  return v5;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(CDRequesterDaemon *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(CDRequesterDaemon *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (void)serviceConnection:(id)connection serviceClient:(id)client startAuthenticationSessionWithRequest:(id)request completionHandler:(id)handler
{
  connectionCopy = connection;
  clientCopy = client;
  requestCopy = request;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_currentSession)
  {
    v15 = [NSError errorWithDomain:CPSErrorDomain code:102 userInfo:0];
    handlerCopy[2](handlerCopy, v15);
  }

  else
  {
    v16 = [(CDRequesterDaemon *)self _authenticationSessionWithClient:clientCopy request:requestCopy];
    currentSession = self->_currentSession;
    self->_currentSession = v16;

    v18 = self->_currentSession;
    if (v18)
    {
      [(CDRequesterSession *)v18 setDispatchQueue:self->_dispatchQueue];
      v19 = self->_currentSession;
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_1000189AC;
      v42[3] = &unk_10008A730;
      v20 = connectionCopy;
      v43 = v20;
      [(CDRequesterSession *)v19 setPresentShieldHandler:v42];
      v21 = self->_currentSession;
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_1000189BC;
      v40[3] = &unk_10008A758;
      v22 = v20;
      v41 = v22;
      [(CDRequesterSession *)v21 setDeviceAcceptedNotificationHandler:v40];
      v23 = self->_currentSession;
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_1000189C8;
      v38[3] = &unk_10008A758;
      v24 = v22;
      v39 = v24;
      [(CDRequesterSession *)v23 setDeviceStartedAuthenticationHandler:v38];
      v25 = self->_currentSession;
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1000189D4;
      v36[3] = &unk_10008A058;
      v26 = v24;
      v37 = v26;
      [(CDRequesterSession *)v25 setSessionFinishedHandler:v36];
      v27 = self->_currentSession;
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_1000189E0;
      v34[3] = &unk_10008A080;
      v35 = v26;
      [(CDRequesterSession *)v27 setSessionFailedHandler:v34];
      v28 = self->_currentSession;
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_1000189EC;
      v33[3] = &unk_100089E20;
      v33[4] = self;
      [(CDRequesterSession *)v28 setInvalidationHandler:v33];
      objc_storeStrong(&self->_currentSessionConnection, connection);
      [(CDRequesterSession *)self->_currentSession activateWithCompletionHandler:handlerCopy];
    }

    else
    {
      v29 = CPSErrorDomain;
      v44 = NSDebugDescriptionErrorKey;
      requestCopy = [NSString stringWithFormat:@"Invalid authentication request: %@", requestCopy];
      v45 = requestCopy;
      v31 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v32 = [NSError errorWithDomain:v29 code:101 userInfo:v31];
      handlerCopy[2](handlerCopy, v32);
    }
  }
}

- (void)serviceConnection:(id)connection fetchDaemonStatusWithCompletionHandler:(id)handler
{
  dispatchQueue = self->_dispatchQueue;
  handlerCopy = handler;
  dispatch_assert_queue_V2(dispatchQueue);
  v7 = [(CDRequesterDaemon *)self descriptionWithMultilinePrefix:0];
  handlerCopy[2](handlerCopy, v7, 0);
}

- (void)serviceListener:(id)listener willAcceptConnection:(id)connection
{
  dispatchQueue = self->_dispatchQueue;
  connectionCopy = connection;
  dispatch_assert_queue_V2(dispatchQueue);
  [connectionCopy setDelegate:self];
}

- (void)serviceListener:(id)listener connectionInvalidated:(id)invalidated
{
  dispatchQueue = self->_dispatchQueue;
  invalidatedCopy = invalidated;
  dispatch_assert_queue_V2(dispatchQueue);
  currentSessionConnection = self->_currentSessionConnection;

  if (currentSessionConnection == invalidatedCopy)
  {
    [(CDRequesterSession *)self->_currentSession invalidate];
    currentSession = self->_currentSession;
    self->_currentSession = 0;

    v9 = self->_currentSessionConnection;
    self->_currentSessionConnection = 0;
  }
}

@end