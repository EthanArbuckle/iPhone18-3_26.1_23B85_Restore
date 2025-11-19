@interface SDAutoUnlockPairingSession
- (SDAutoUnlockPairingSession)init;
- (SDAutoUnlockPairingSession)initWithDevice:(id)a3 sessionID:(id)a4;
- (SDAutoUnlockSessionDelegate)delegate;
- (SDUnlockTransport)transport;
- (id)dataFromUUID:(id)a3;
- (void)handleTimerFired;
- (void)idsController:(id)a3 didReceiveProtoData:(id)a4 forType:(unsigned __int16)a5 deviceID:(id)a6;
- (void)invalidate;
- (void)invalidateResponseTimer;
- (void)restartResponseTimer:(unint64_t)a3;
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

- (SDAutoUnlockPairingSession)initWithDevice:(id)a3 sessionID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(SDAutoUnlockPairingSession *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_deviceID, a3);
    objc_storeStrong(&v10->_sessionID, a4);
    if (v10->_sessionID)
    {
      v11 = +[SDAutoUnlockTransport sharedTransport];
      v12 = [(NSUUID *)v10->_sessionID UUIDString];
      [v11 addClient:v10 forIdentifer:v12];
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
  v6 = [(SDAutoUnlockPairingSession *)self sessionID];

  if (v6)
  {
    v7 = +[SDAutoUnlockTransport sharedTransport];
    v8 = [(SDAutoUnlockPairingSession *)self sessionID];
    v9 = [v8 UUIDString];
    [v7 removeClientForIdentifier:v9];
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

- (id)dataFromUUID:(id)a3
{
  v3 = a3;
  if (a3)
  {
    v5[0] = 0;
    v5[1] = 0;
    [a3 getUUIDBytes:v5];
    v3 = [NSData dataWithBytes:v5 length:16];
  }

  return v3;
}

- (void)restartResponseTimer:(unint64_t)a3
{
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Restarting response timer", buf, 2u);
  }

  v6 = [(SDAutoUnlockPairingSession *)self responseTimer];

  if (!v6)
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

    v9 = [(SDAutoUnlockPairingSession *)self responseTimer];
    dispatch_resume(v9);

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }

  v10 = [(SDAutoUnlockPairingSession *)self responseTimer];
  sub_1001F05F0(v10, a3);
}

- (void)invalidateResponseTimer
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "invalidateResponseTimer", v6, 2u);
  }

  v4 = [(SDAutoUnlockPairingSession *)self responseTimer];

  if (v4)
  {
    v5 = [(SDAutoUnlockPairingSession *)self responseTimer];
    dispatch_source_cancel(v5);

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

- (void)idsController:(id)a3 didReceiveProtoData:(id)a4 forType:(unsigned __int16)a5 deviceID:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = [(SDAutoUnlockPairingSession *)self sessionQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10005BE40;
  v14[3] = &unk_1008CDDC0;
  v18 = a5;
  v15 = v10;
  v16 = v9;
  v17 = self;
  v12 = v9;
  v13 = v10;
  dispatch_async(v11, v14);
}

- (SDAutoUnlockSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end