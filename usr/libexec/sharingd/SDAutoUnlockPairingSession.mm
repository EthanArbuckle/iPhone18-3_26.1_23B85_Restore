@interface SDAutoUnlockPairingSession
- (SDAutoUnlockPairingSession)init;
- (SDAutoUnlockPairingSession)initWithDevice:(id)device sessionID:(id)d;
- (SDAutoUnlockSessionDelegate)delegate;
- (SDUnlockTransport)transport;
- (id)dataFromUUID:(id)d;
- (void)handleTimerFired;
- (void)idsController:(id)controller didReceiveProtoData:(id)data forType:(unsigned __int16)type deviceID:(id)d;
- (void)invalidate;
- (void)invalidateResponseTimer;
- (void)restartResponseTimer:(unint64_t)timer;
@end

@implementation SDAutoUnlockPairingSession

- (SDAutoUnlockPairingSession)init
{
  v6.receiver = self;
  v6.super_class = SDAutoUnlockPairingSession;
  v2 = [(SDAutoUnlockPairingSession *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.sharingd.auto-unlock.pairing-session-queue", 0);
    sessionQueue = v2->_sessionQueue;
    v2->_sessionQueue = v3;
  }

  return v2;
}

- (SDAutoUnlockPairingSession)initWithDevice:(id)device sessionID:(id)d
{
  deviceCopy = device;
  dCopy = d;
  v9 = [(SDAutoUnlockPairingSession *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_deviceID, device);
    objc_storeStrong(&v10->_sessionID, d);
    if (v10->_sessionID)
    {
      v11 = +[SDAutoUnlockTransport sharedTransport];
      uUIDString = [(NSUUID *)v10->_sessionID UUIDString];
      [v11 addClient:v10 forIdentifer:uUIDString];
    }

    v13 = +[SDUnlockIDSController sharedController];
    [v13 addDelegate:v10];
  }

  return v10;
}

- (void)invalidate
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating %@", &v11, 0xCu);
  }

  [(SDAutoUnlockPairingSession *)self invalidateResponseTimer];
  sessionID = [(SDAutoUnlockPairingSession *)self sessionID];

  if (sessionID)
  {
    v7 = +[SDAutoUnlockTransport sharedTransport];
    sessionID2 = [(SDAutoUnlockPairingSession *)self sessionID];
    uUIDString = [sessionID2 UUIDString];
    [v7 removeClientForIdentifier:uUIDString];
  }

  v10 = +[SDUnlockIDSController sharedController];
  [v10 removeDelegate:self];
}

- (SDUnlockTransport)transport
{
  if ([(SDAutoUnlockPairingSession *)self useAttestedProtocol])
  {
    +[SDUnlockIDSController sharedController];
  }

  else
  {
    +[SDAutoUnlockTransport sharedTransport];
  }
  v2 = ;

  return v2;
}

- (id)dataFromUUID:(id)d
{
  dCopy = d;
  if (d)
  {
    v5[0] = 0;
    v5[1] = 0;
    [d getUUIDBytes:v5];
    dCopy = [NSData dataWithBytes:v5 length:16];
  }

  return dCopy;
}

- (void)restartResponseTimer:(unint64_t)timer
{
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Restarting response timer", buf, 2u);
  }

  responseTimer = [(SDAutoUnlockPairingSession *)self responseTimer];

  if (!responseTimer)
  {
    objc_initWeak(buf, self);
    v7 = &_dispatch_main_q;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10005BB54;
    v11[3] = &unk_1008CDD98;
    objc_copyWeak(&v12, buf);
    v8 = sub_1001F0548(0, &_dispatch_main_q, v11);
    [(SDAutoUnlockPairingSession *)self setResponseTimer:v8];

    responseTimer2 = [(SDAutoUnlockPairingSession *)self responseTimer];
    dispatch_resume(responseTimer2);

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }

  responseTimer3 = [(SDAutoUnlockPairingSession *)self responseTimer];
  sub_1001F05F0(responseTimer3, timer);
}

- (void)invalidateResponseTimer
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "invalidateResponseTimer", v6, 2u);
  }

  responseTimer = [(SDAutoUnlockPairingSession *)self responseTimer];

  if (responseTimer)
  {
    responseTimer2 = [(SDAutoUnlockPairingSession *)self responseTimer];
    dispatch_source_cancel(responseTimer2);

    [(SDAutoUnlockPairingSession *)self setResponseTimer:0];
  }
}

- (void)handleTimerFired
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Response timer fired", v7, 2u);
  }

  v4 = SFAutoUnlockErrorDomain;
  v8 = NSLocalizedDescriptionKey;
  v9 = @"Request failure";
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [NSError errorWithDomain:v4 code:103 userInfo:v5];
  [(SDAutoUnlockPairingSession *)self notifyDelegateWithError:v6];
}

- (void)idsController:(id)controller didReceiveProtoData:(id)data forType:(unsigned __int16)type deviceID:(id)d
{
  dataCopy = data;
  dCopy = d;
  sessionQueue = [(SDAutoUnlockPairingSession *)self sessionQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10005BE40;
  v14[3] = &unk_1008CDDC0;
  typeCopy = type;
  v15 = dCopy;
  v16 = dataCopy;
  selfCopy = self;
  v12 = dataCopy;
  v13 = dCopy;
  dispatch_async(sessionQueue, v14);
}

- (SDAutoUnlockSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end