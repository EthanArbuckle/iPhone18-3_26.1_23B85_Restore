@interface SDAirDropPublisher
- (SDAirDropPublisher)initWithPort:(id)port identity:(__SecIdentity *)identity;
- (SDAirDropPublisherDelegate)delegate;
- (void)addObservers;
- (void)dealloc;
- (void)invalidate;
- (void)publish;
- (void)publishCallBack:(id *)back;
- (void)removeObservers;
- (void)start;
- (void)stop;
- (void)updateTXTRecordAndNotify;
@end

@implementation SDAirDropPublisher

- (SDAirDropPublisher)initWithPort:(id)port identity:(__SecIdentity *)identity
{
  portCopy = port;
  v23.receiver = self;
  v23.super_class = SDAirDropPublisher;
  v8 = [(SDAirDropPublisher *)&v23 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_port, port);
    objc_storeWeak(&v9->_delegate, 0);
    v9->_service = 0;
    v9->_retryCount = 0;
    v10 = objc_opt_new();
    txtRecord = v9->_txtRecord;
    v9->_txtRecord = v10;

    v12 = objc_opt_new();
    properties = v9->_properties;
    v9->_properties = v12;

    v14 = +[SDStatusMonitor sharedMonitor];
    monitor = v9->_monitor;
    v9->_monitor = v14;

    if (identity)
    {
      v16 = CFRetain(identity);
    }

    else
    {
      v16 = 0;
    }

    v9->_identity = v16;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100073DB8;
    v21[3] = &unk_1008CDEA0;
    v17 = v9;
    v22 = v17;
    v18 = sub_1001F0548(0, &_dispatch_main_q, v21);
    restartTimer = v17->_restartTimer;
    v17->_restartTimer = v18;

    v17->_bonjourNameConflictDetected = 0;
    dispatch_resume(v17->_restartTimer);
    [(SDAirDropPublisher *)v17 addObservers];
  }

  return v9;
}

- (void)dealloc
{
  [(SDAirDropPublisher *)self removeObservers];
  identity = self->_identity;
  if (identity)
  {
    CFRelease(identity);
  }

  v4.receiver = self;
  v4.super_class = SDAirDropPublisher;
  [(SDAirDropPublisher *)&v4 dealloc];
}

- (void)publishCallBack:(id *)back
{
  p_var1 = &back->var1;
  var1 = back->var1;
  if (back->var0 == kCFStreamErrorDomainNetServices && var1 == -72001)
  {
    v10 = sub_10008FA28(0, 0);
    v14 = airdrop_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000749C4();
    }

    self->_bonjourNameConflictDetected = 1;
    sub_10008FCB8();
    restartTimer = self->_restartTimer;
    v16 = sub_1001F0530(1.0);
    sub_1001F05F0(restartTimer, v16);
    goto LABEL_20;
  }

  if (!var1)
  {
    self->_retryCount = 0;
    v10 = airdrop_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      Name = CFNetServiceGetName(self->_service);
      *v21 = 138412290;
      *&v21[4] = Name;
      v18 = "Bonjour advertise %@ started";
      v19 = v10;
      v20 = 12;
LABEL_19:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, v21, v20);
    }

LABEL_20:

    goto LABEL_21;
  }

  v8 = airdrop_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100074944(&back->var0, p_var1);
  }

  retryCount = self->_retryCount;
  self->_retryCount = retryCount + 1;
  v10 = airdrop_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (retryCount > 8)
  {
    if (v11)
    {
      *v21 = 0;
      v18 = "Giving up trying to advertise with Bonjour";
      v19 = v10;
      v20 = 2;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (v11)
  {
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Retrying Bonjour advertise in 3 seconds...", v21, 2u);
  }

  v12 = self->_restartTimer;
  v13 = sub_1001F0530(3.0);
  sub_1001F05F0(v12, v13);
LABEL_21:
  [(SDStatusMonitor *)self->_monitor setAirDropPublished:*p_var1 == 0, *v21];
}

- (void)updateTXTRecordAndNotify
{
  if (self->_service)
  {
    if (SFWalletAppAvailable())
    {
      if ([(SDStatusMonitor *)self->_monitor myAppleIDIsManaged])
      {
        v3 = 871;
      }

      else
      {
        v3 = 887;
      }
    }

    else
    {
      v3 = 871;
    }

    if (MGGetBoolAnswer())
    {
      v3 |= 0x80uLL;
    }

    Boolean = GestaltGetBoolean();
    v5 = v3 | 0x400;
    if (!Boolean)
    {
      v5 = v3;
    }

    v6 = [NSString stringWithFormat:@"%ld", v5];
    p_txtRecord = &self->_txtRecord;
    [(NSMutableDictionary *)self->_txtRecord setObject:v6 forKeyedSubscript:@"flags"];

    if ([(SDStatusMonitor *)self->_monitor enableStrangers])
    {
      discoverableMode = [(SDStatusMonitor *)self->_monitor discoverableMode];
      v9 = [discoverableMode isEqual:kSFOperationDiscoverableModeEveryone];

      if (v9)
      {
        v10 = +[SDNearbyAgent sharedNearbyAgent];
        bleAuthTag = [v10 bleAuthTag];

        v12 = [bleAuthTag base64EncodedStringWithOptions:0];
        [(NSMutableDictionary *)*p_txtRecord setObject:v12 forKeyedSubscript:@"atag"];
      }

      else
      {
        [(NSMutableDictionary *)*p_txtRecord setObject:0 forKeyedSubscript:@"atag"];
      }
    }

    v13 = [NSNetService dataFromTXTRecordDictionary:*p_txtRecord];
    if (v13)
    {
      CFNetServiceSetTXTData(self->_service, v13);
    }

    else
    {
      v14 = airdrop_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100074A38();
      }

      v15 = airdrop_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100074A78(&self->_txtRecord);
      }
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000742E0;
    block[3] = &unk_1008CDEA0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)addObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"somethingChanged:" name:@"com.apple.sharingd.UserPictureChanged" object:0];
  [v3 addObserver:self selector:"somethingChanged:" name:@"com.apple.sharingd.ComputerNameChanged" object:0];
  [v3 addObserver:self selector:"somethingChanged:" name:@"com.apple.sharingd.DiscoverableModeChanged" object:0];
  [v3 addObserver:self selector:"somethingChanged:" name:@"SDNotificationNameNearbyBLEAuthTagChanged" object:0];
}

- (void)removeObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)publish
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    service = self->_service;

    if (!service)
    {
      clientContext.version = 0;
      clientContext.info = self;
      clientContext.retain = &_CFRetain;
      clientContext.release = &_CFRelease;
      clientContext.copyDescription = 0;
      v5 = sub_10008FA28(0, self->_bonjourNameConflictDetected);
      self->_bonjourNameConflictDetected = 0;
      if (v5)
      {
        v6 = v5;
        error.domain = 0;
        *&error.error = 0;
        v7 = sub_10011830C();
        v8 = CFNetServiceCreate(kCFAllocatorDefault, @"local", v7, v6, [(NSNumber *)self->_port intValue]);
        self->_service = v8;
        CFNetServiceSetClient(v8, sub_1000746A4, &clientContext);
        v9 = self->_service;
        Main = CFRunLoopGetMain();
        CFNetServiceScheduleWithRunLoop(v9, Main, kCFRunLoopDefaultMode);
        [(SDAirDropPublisher *)self updateTXTRecordAndNotify];
        if (sub_1001F2594() || [(SDStatusMonitor *)self->_monitor enableDemoMode])
        {
          v11 = 2049;
        }

        else if ([(SDStatusMonitor *)self->_monitor registerAllInterfaces])
        {
          v11 = 1050625;
        }

        else
        {
          v11 = 3147777;
        }

        v13 = airdrop_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v18 = v6;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Bonjour advertise %@", buf, 0xCu);
        }

        if (!CFNetServiceRegisterWithOptions(self->_service, v11, &error))
        {
          v14 = airdrop_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_100074AF0(&error.domain);
          }
        }

        CFRelease(v6);
      }

      else
      {
        v12 = airdrop_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_100074B68();
        }
      }
    }
  }
}

- (void)start
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100074724;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)stop
{
  if (self->_service)
  {
    [(NSMutableDictionary *)self->_txtRecord removeAllObjects];
    [(SDStatusMonitor *)self->_monitor setAirDropPublished:0];
    v3 = airdrop_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      Name = CFNetServiceGetName(self->_service);
      v7 = 138412290;
      v8 = Name;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Bonjour advertise %@ stopped", &v7, 0xCu);
    }

    service = self->_service;
    Main = CFRunLoopGetMain();
    CFNetServiceUnscheduleFromRunLoop(service, Main, kCFRunLoopDefaultMode);
    CFNetServiceSetClient(self->_service, 0, 0);
    CFNetServiceCancel(self->_service);
    CFRelease(self->_service);
    if (![(SDStatusMonitor *)self->_monitor disableRotation])
    {
      sub_10008FCB8();
    }

    self->_service = 0;
  }
}

- (void)invalidate
{
  [(SDAirDropPublisher *)self stop];
  restartTimer = self->_restartTimer;
  if (restartTimer)
  {
    dispatch_source_cancel(restartTimer);
    v4 = self->_restartTimer;
    self->_restartTimer = 0;
  }
}

- (SDAirDropPublisherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end