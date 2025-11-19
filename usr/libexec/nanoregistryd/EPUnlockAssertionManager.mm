@interface EPUnlockAssertionManager
+ (id)newService:(id)a3;
- (EPUnlockAssertionManager)initWithQueue:(id)a3;
- (void)createResource;
- (void)destroyResource;
- (void)update;
@end

@implementation EPUnlockAssertionManager

+ (id)newService:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 queue];

  v6 = [v4 initWithQueue:v5];
  return v6;
}

- (EPUnlockAssertionManager)initWithQueue:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = EPUnlockAssertionManager;
  v5 = [(EPResourceManager *)&v10 initWithQueue:v4];
  v6 = v5;
  if (v5)
  {
    v5->_notifyToken = -1;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E2610;
    block[3] = &unk_100175660;
    v9 = v5;
    dispatch_async(v4, block);
  }

  return v6;
}

- (void)createResource
{
  v8.receiver = self;
  v8.super_class = EPUnlockAssertionManager;
  [(EPResourceManager *)&v8 createResource];
  v3 = kMobileKeyBagLockStatusNotifyToken;
  v4 = [(EPResourceManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E27AC;
  v7[3] = &unk_1001759E8;
  v7[4] = self;
  LODWORD(v3) = notify_register_dispatch(v3, &self->_notifyToken, v4, v7);

  if (v3)
  {
    v9 = NSLocalizedDescriptionKey;
    v10 = @"Failed to register notify block for kMobileKeyBagLockStatusNotifyToken";
    v5 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v6 = [NSError errorWithDomain:@"com.apple.nanoregistry.ep.EPUnlockAssertion" code:1 userInfo:v5];

    [(EPResourceManager *)self setAvailability:2 withError:v6];
  }

  [(EPUnlockAssertionManager *)self update];
}

- (void)destroyResource
{
  v9.receiver = self;
  v9.super_class = EPUnlockAssertionManager;
  [(EPResourceManager *)&v9 destroyResource];
  assertionError = self->_assertionError;
  self->_assertionError = 0;

  if (self->_assertion)
  {
    v4 = nr_daemon_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = nr_daemon_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        assertion = self->_assertion;
        *buf = 134217984;
        v11 = assertion;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "EPUnlockAssertionManager: Releasing lock assertion (%p)", buf, 0xCu);
      }
    }

    CFRelease(self->_assertion);
    self->_assertion = 0;
  }

  notifyToken = self->_notifyToken;
  if (notifyToken != -1)
  {
    notify_cancel(notifyToken);
    self->_notifyToken = -1;
  }

  [(EPUnlockAssertionManager *)self update];
}

- (void)update
{
  if (self->_notifyToken == -1)
  {
    if (self->_assertion)
    {
      v19 = nr_daemon_log();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

      if (v20)
      {
        v21 = nr_daemon_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          assertion = self->_assertion;
          *buf = 134217984;
          v29 = assertion;
LABEL_30:
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "EPUnlockAssertionManager: Releasing lock assertion (%p)", buf, 0xCu);
        }

LABEL_31:
      }

LABEL_32:
      CFRelease(self->_assertion);
      self->_assertion = 0;
    }

LABEL_33:
    assertionError = self->_assertionError;
    self->_assertionError = 0;

    v17 = self;
    v18 = 0;
    goto LABEL_34;
  }

  v34 = @"ExtendedDeviceLockState";
  v35 = &__kCFBooleanTrue;
  [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  v3 = MKBGetDeviceLockState();
  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v29) = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "EPUnlockAssertionManager: lockState=%d", buf, 8u);
    }
  }

  if (v3 > 7 || ((1 << v3) & 0xC9) == 0)
  {
    if (self->_assertion)
    {
      v23 = nr_daemon_log();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

      if (v24)
      {
        v21 = nr_daemon_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v25 = self->_assertion;
          *buf = 134217984;
          v29 = v25;
          goto LABEL_30;
        }

        goto LABEL_31;
      }

      goto LABEL_32;
    }

    goto LABEL_33;
  }

  self->_noPasscode = v3 == 3;
  if (v3 != 3 && !self->_assertion)
  {
    v8 = nr_daemon_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = nr_daemon_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "EPUnlockAssertionManager: Grabbing lock assertion", buf, 2u);
      }
    }

    v32[0] = @"MKBAssertionKey";
    v32[1] = @"MKBAssertionTimeout";
    v33[0] = @"RemoteProfile";
    v33[1] = &off_100187810;
    [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];
    self->_assertion = MKBDeviceLockAssertion();
    v11 = self->_assertionError;
    self->_assertionError = 0;

    v12 = nr_daemon_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v14 = nr_daemon_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = self->_assertion;
        v16 = self->_assertionError;
        *buf = 134218242;
        v29 = v15;
        v30 = 2112;
        v31 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "EPUnlockAssertionManager: Lock assertion (%p) (%@)", buf, 0x16u);
      }
    }

    if (!self->_assertion)
    {
      v27 = self->_assertionError;
      v17 = self;
      v18 = 2;
      goto LABEL_35;
    }
  }

  v17 = self;
  v18 = 1;
LABEL_34:
  v27 = 0;
LABEL_35:
  [(EPResourceManager *)v17 setAvailability:v18 withError:v27];
}

@end