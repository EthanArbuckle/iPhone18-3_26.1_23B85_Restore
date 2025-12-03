@interface CDRequesterSession
- (CDRequesterSession)initWithClient:(id)client request:(id)request;
- (void)_invalidated;
- (void)_notifyDeviceAcceptedNotification:(id)notification;
- (void)_notifyDeviceStartedAuthentication:(id)authentication;
- (void)_notifySessionFailed:(id)failed;
- (void)_notifySessionFinished:(id)finished;
- (void)_presentShieldWithStyle:(int64_t)style device:(id)device;
- (void)_stopAdvertisingNearbyAction;
- (void)activateWithCompletionHandler:(id)handler;
- (void)invalidate;
@end

@implementation CDRequesterSession

- (CDRequesterSession)initWithClient:(id)client request:(id)request
{
  clientCopy = client;
  requestCopy = request;
  v13.receiver = self;
  v13.super_class = CDRequesterSession;
  v9 = [(CDRequesterSession *)&v13 init];
  if (v9)
  {
    v10 = os_transaction_create();
    transaction = v9->_transaction;
    v9->_transaction = v10;

    objc_storeStrong(&v9->_dispatchQueue, &_dispatch_main_q);
    v9->_activateCalledAtomic = 0;
    objc_storeStrong(&v9->_client, client);
    objc_storeStrong(&v9->_request, request);
  }

  return v9;
}

- (void)activateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  atomic_store(1u, &self->_activateCalledAtomic);
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001ADC0;
  v7[3] = &unk_100089D58;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001AF10;
  block[3] = &unk_100089E20;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidated
{
  if (!self->_invalidateDone)
  {
    [(RPCompanionLinkClient *)self->_rapportClient invalidate];
    rapportClient = self->_rapportClient;
    self->_rapportClient = 0;

    [(SFService *)self->_sharingService invalidate];
    sharingService = self->_sharingService;
    self->_sharingService = 0;

    deviceAcceptedNotificationHandler = self->_deviceAcceptedNotificationHandler;
    self->_deviceAcceptedNotificationHandler = 0;

    deviceStartedAuthenticationHandler = self->_deviceStartedAuthenticationHandler;
    self->_deviceStartedAuthenticationHandler = 0;

    presentShieldHandler = self->_presentShieldHandler;
    self->_presentShieldHandler = 0;

    sessionFinishedHandler = self->_sessionFinishedHandler;
    self->_sessionFinishedHandler = 0;

    sessionFailedHandler = self->_sessionFailedHandler;
    self->_sessionFailedHandler = 0;

    sub_100064160(&self->super.isa);
    [(CDIDSService *)self->_idsService invalidate];
    idsService = self->_idsService;
    self->_idsService = 0;

    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2]();
      v12 = self->_invalidationHandler;
      self->_invalidationHandler = 0;
    }

    self->_invalidateDone = 1;
  }
}

- (void)_presentShieldWithStyle:(int64_t)style device:(id)device
{
  deviceCopy = device;
  v7 = cps_session_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Present Shield for device: %@", &v9, 0xCu);
  }

  presentShieldHandler = self->_presentShieldHandler;
  if (presentShieldHandler)
  {
    presentShieldHandler[2](presentShieldHandler, style, deviceCopy);
  }
}

- (void)_notifyDeviceAcceptedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = cps_session_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device accepted notification: %@", &v7, 0xCu);
  }

  deviceAcceptedNotificationHandler = self->_deviceAcceptedNotificationHandler;
  if (deviceAcceptedNotificationHandler)
  {
    deviceAcceptedNotificationHandler[2](deviceAcceptedNotificationHandler, notificationCopy);
  }
}

- (void)_notifyDeviceStartedAuthentication:(id)authentication
{
  authenticationCopy = authentication;
  v5 = cps_session_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = authenticationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device started server authentication: %@", &v7, 0xCu);
  }

  deviceStartedAuthenticationHandler = self->_deviceStartedAuthenticationHandler;
  if (deviceStartedAuthenticationHandler)
  {
    deviceStartedAuthenticationHandler[2](deviceStartedAuthenticationHandler, authenticationCopy);
  }
}

- (void)_notifySessionFinished:(id)finished
{
  finishedCopy = finished;
  v5 = cps_session_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = finishedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Authentication session finished: %@", &v7, 0xCu);
  }

  sessionFinishedHandler = self->_sessionFinishedHandler;
  if (sessionFinishedHandler)
  {
    sessionFinishedHandler[2](sessionFinishedHandler, finishedCopy);
  }
}

- (void)_notifySessionFailed:(id)failed
{
  failedCopy = failed;
  v5 = cps_session_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100064380(failedCopy, v5);
  }

  sessionFailedHandler = self->_sessionFailedHandler;
  if (sessionFailedHandler)
  {
    if (failedCopy)
    {
      sessionFailedHandler[2](sessionFailedHandler, failedCopy);
    }

    else
    {
      v7 = [NSError errorWithDomain:CPSErrorDomain code:100 userInfo:0];
      sessionFailedHandler[2](sessionFailedHandler, v7);
    }
  }
}

- (void)_stopAdvertisingNearbyAction
{
  [(SFService *)self->_sharingService invalidate];
  sharingService = self->_sharingService;
  self->_sharingService = 0;
}

@end