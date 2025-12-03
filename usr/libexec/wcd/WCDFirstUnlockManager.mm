@interface WCDFirstUnlockManager
- (NSString)state;
- (WCDFirstUnlockManager)init;
- (id)loadRemoteAcknowledgedState;
- (id)loadRemoteFirstUnlockState;
- (void)clearRemoteAcknowledgedState;
- (void)dealloc;
- (void)handlLocalFirstUnlockStateChanged;
- (void)handleFirstUnlockAck:(id)ack;
- (void)handleFirstUnlockState:(id)state;
- (void)initializeRemoteFirstUnlockState;
- (void)saveRemoteAcknowledgedState:(id)state;
- (void)saveRemoteFirstUnlockState;
- (void)sendFirstUnlockRequest;
- (void)sendFirstUnlockState;
- (void)sendStateIfNeccessary;
- (void)setRemoteDeviceFirstUnlocked:(BOOL)unlocked;
- (void)subscribeToAllNotifications;
- (void)systemObserverPairedListChanged;
- (void)updateLocalFirstUnlockState;
@end

@implementation WCDFirstUnlockManager

- (WCDFirstUnlockManager)init
{
  v8.receiver = self;
  v8.super_class = WCDFirstUnlockManager;
  v2 = [(WCDFirstUnlockManager *)&v8 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_remoteDeviceFirstUnlocked = 0;
    [(WCDFirstUnlockManager *)v2 updateLocalFirstUnlockState];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001AB8;
    block[3] = &unk_100048A48;
    v4 = v3;
    v7 = v4;
    dispatch_async(&_dispatch_main_q, block);
    [(WCDFirstUnlockManager *)v4 subscribeToAllNotifications];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = WCDFirstUnlockManager;
  [(WCDFirstUnlockManager *)&v4 dealloc];
}

- (void)subscribeToAllNotifications
{
  v3 = +[WCDSystemMonitor sharedSystemMonitor];
  [v3 addObserver:self];

  objc_initWeak(&location, self);
  out_token = 0;
  v4 = kMobileKeyBagLockStatusNotifyToken;
  v5 = &_dispatch_main_q;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100001C38;
  handler[3] = &unk_100048A70;
  objc_copyWeak(&v7, &location);
  notify_register_dispatch(v4, &out_token, &_dispatch_main_q, handler);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (NSString)state
{
  v3 = objc_opt_class();
  v12 = NSStringFromClass(v3);
  NSAppendPrintF();
  v4 = 0;

  NSAppendPrintF();
  v5 = v4;

  localDeviceFirstUnlocked = [(WCDFirstUnlockManager *)self localDeviceFirstUnlocked];
  if ([localDeviceFirstUnlocked BOOLValue])
  {
    v7 = "YES";
  }

  else
  {
    v7 = "NO";
  }

  v13 = v7;
  NSAppendPrintF();
  v8 = v5;

  loadRemoteAcknowledgedState = [(WCDFirstUnlockManager *)self loadRemoteAcknowledgedState];
  [loadRemoteAcknowledgedState BOOLValue];
  NSAppendPrintF();
  v10 = v8;

  return v8;
}

- (void)systemObserverPairedListChanged
{
  v3 = +[WCDSystemMonitor sharedSystemMonitor];
  isPaired = [v3 isPaired];

  if (isPaired)
  {

    [(WCDFirstUnlockManager *)self requestFirstUnlockStateIfNeccessary];
  }
}

- (void)handlLocalFirstUnlockStateChanged
{
  localDeviceFirstUnlocked = [(WCDFirstUnlockManager *)self localDeviceFirstUnlocked];

  if (!localDeviceFirstUnlocked)
  {
    [(WCDFirstUnlockManager *)self updateLocalFirstUnlockState];
    localDeviceFirstUnlocked2 = [(WCDFirstUnlockManager *)self localDeviceFirstUnlocked];

    if (localDeviceFirstUnlocked2)
    {

      [(WCDFirstUnlockManager *)self sendFirstUnlockState];
    }
  }
}

- (void)sendStateIfNeccessary
{
  v3 = wc_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446210;
    v10 = "[WCDFirstUnlockManager sendStateIfNeccessary]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", &v9, 0xCu);
  }

  loadRemoteAcknowledgedState = [(WCDFirstUnlockManager *)self loadRemoteAcknowledgedState];
  v5 = loadRemoteAcknowledgedState;
  if (!loadRemoteAcknowledgedState || (v6 = [loadRemoteAcknowledgedState BOOLValue], -[WCDFirstUnlockManager localDeviceFirstUnlocked](self, "localDeviceFirstUnlocked"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "BOOLValue"), v7, v6 != v8))
  {
    [(WCDFirstUnlockManager *)self sendFirstUnlockState];
  }
}

- (void)sendFirstUnlockState
{
  [(WCDFirstUnlockManager *)self clearRemoteAcknowledgedState];
  v3 = objc_opt_new();
  [v3 setVersion:1];
  localDeviceFirstUnlocked = [(WCDFirstUnlockManager *)self localDeviceFirstUnlocked];
  [v3 setFirstUnlocked:{objc_msgSend(localDeviceFirstUnlocked, "BOOLValue")}];

  v5 = wc_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    localDeviceFirstUnlocked2 = [(WCDFirstUnlockManager *)self localDeviceFirstUnlocked];
    bOOLValue = [localDeviceFirstUnlocked2 BOOLValue];
    v8 = "NO";
    if (bOOLValue)
    {
      v8 = "YES";
    }

    v10 = 136315138;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", &v10, 0xCu);
  }

  v9 = +[WatchConnectivityDaemon sharedDaemon];
  [v9 sendFirstUnlockState:v3];
}

- (void)updateLocalFirstUnlockState
{
  if (MKBDeviceUnlockedSinceBoot() == 1)
  {

    [(WCDFirstUnlockManager *)self setLocalDeviceFirstUnlocked:&__kCFBooleanTrue];
  }
}

- (void)handleFirstUnlockAck:(id)ack
{
  ackCopy = ack;
  v5 = [[WCDProtoFirstUnlockAck alloc] initWithData:ackCopy];

  if ([(WCDProtoFirstUnlockAck *)v5 hasAcknowledgedState])
  {
    acknowledgedState = [(WCDProtoFirstUnlockAck *)v5 acknowledgedState];
    v7 = wc_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "NO";
      if (acknowledgedState)
      {
        v8 = "YES";
      }

      v10 = 136315138;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s", &v10, 0xCu);
    }

    v9 = [NSNumber numberWithBool:acknowledgedState];
    [(WCDFirstUnlockManager *)self saveRemoteAcknowledgedState:v9];
  }
}

- (void)handleFirstUnlockState:(id)state
{
  stateCopy = state;
  v5 = [[WCDProtoFirstUnlockState alloc] initWithData:stateCopy];

  [(WCDFirstUnlockManager *)self setRemoteDeviceFirstUnlocked:[(WCDProtoFirstUnlockState *)v5 firstUnlocked]];
  v6 = wc_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    remoteDeviceFirstUnlocked = [(WCDFirstUnlockManager *)self remoteDeviceFirstUnlocked];
    v8 = "NO";
    if (remoteDeviceFirstUnlocked)
    {
      v8 = "YES";
    }

    v9 = 136315138;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  [(WCDFirstUnlockManager *)self sendFirstUnlockAck:[(WCDFirstUnlockManager *)self remoteDeviceFirstUnlocked]];
  [(WCDFirstUnlockManager *)self setReceivedFirstUnlockState:1];
}

- (void)setRemoteDeviceFirstUnlocked:(BOOL)unlocked
{
  if (self->_remoteDeviceFirstUnlocked != unlocked)
  {
    self->_remoteDeviceFirstUnlocked = unlocked;
    v5 = +[WCDSystemMonitor sharedSystemMonitor];
    [v5 setRemoteFirstUnlocked:self->_remoteDeviceFirstUnlocked];

    [(WCDFirstUnlockManager *)self saveRemoteFirstUnlockState];
  }
}

- (void)sendFirstUnlockRequest
{
  v2 = wc_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "[WCDFirstUnlockManager sendFirstUnlockRequest]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s", &v5, 0xCu);
  }

  v3 = objc_alloc_init(WCDProtoFirstUnlockRequest);
  [(WCDProtoFirstUnlockRequest *)v3 setVersion:1];
  v4 = +[WatchConnectivityDaemon sharedDaemon];
  [v4 sendFirstUnlockRequest:v3];
}

- (void)initializeRemoteFirstUnlockState
{
  loadRemoteFirstUnlockState = [(WCDFirstUnlockManager *)self loadRemoteFirstUnlockState];
  v4 = wc_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    bOOLValue = [loadRemoteFirstUnlockState BOOLValue];
    v6 = "NO";
    if (bOOLValue)
    {
      v6 = "YES";
    }

    *buf = 136315138;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (!-[WCDFirstUnlockManager receivedFirstUnlockState](self, "receivedFirstUnlockState") && (!loadRemoteFirstUnlockState || ([loadRemoteFirstUnlockState BOOLValue] & 1) == 0))
  {
    v7 = dispatch_time(0, 5000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000026D8;
    block[3] = &unk_100048A48;
    block[4] = self;
    dispatch_after(v7, &_dispatch_main_q, block);
  }

  -[WCDFirstUnlockManager setRemoteDeviceFirstUnlocked:](self, "setRemoteDeviceFirstUnlocked:", [loadRemoteFirstUnlockState BOOLValue]);
}

- (void)saveRemoteAcknowledgedState:(id)state
{
  if (state)
  {
    stateCopy = state;
    v4 = +[NSUserDefaults standardUserDefaults];
    [v4 setObject:stateCopy forKey:@"WCDRemoteAcknowledgedState"];

    v5 = +[NSUserDefaults standardUserDefaults];
    [v5 synchronize];
  }
}

- (id)loadRemoteAcknowledgedState
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"WCDRemoteAcknowledgedState"];

  return v3;
}

- (void)clearRemoteAcknowledgedState
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 removeObjectForKey:@"WCDRemoteAcknowledgedState"];

  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 synchronize];
}

- (void)saveRemoteFirstUnlockState
{
  v2 = +[WCDSystemMonitor sharedSystemMonitor];
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 remoteFirstUnlocked]);

  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 setObject:v5 forKey:@"WCDRemoteFirstUnlockState"];

  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 synchronize];
}

- (id)loadRemoteFirstUnlockState
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"WCDRemoteFirstUnlockState"];

  return v3;
}

@end