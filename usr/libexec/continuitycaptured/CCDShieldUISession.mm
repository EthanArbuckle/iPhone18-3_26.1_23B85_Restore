@interface CCDShieldUISession
- (NSString)bundleIdentifier;
- (id)description;
- (void)_setupShieldLifecycleMonitorForCurrentSession;
- (void)invalidate;
- (void)setupShieldLifecycleMonitorForCurrentSession;
@end

@implementation CCDShieldUISession

- (void)setupShieldLifecycleMonitorForCurrentSession
{
  objc_initWeak(&location, self);
  shieldUILaunchMonitorQueue = self->_shieldUILaunchMonitorQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100001AA4;
  v4[3] = &unk_10001C6E0;
  objc_copyWeak(&v5, &location);
  dispatch_async(shieldUILaunchMonitorQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_setupShieldLifecycleMonitorForCurrentSession
{
  dispatch_assert_queue_V2(self->_shieldUILaunchMonitorQueue);
  if (!self->_shieldUIProcessHandle)
  {
    objc_initWeak(&location, self);
    v3 = [(CCDShieldUISession *)self bundleIdentifier];
    v4 = [RBSProcessPredicate predicateMatchingBundleIdentifier:v3];

    v29 = 0;
    v5 = [RBSProcessHandle handleForPredicate:v4 error:&v29];
    v6 = v29;
    shieldUIProcessHandle = self->_shieldUIProcessHandle;
    self->_shieldUIProcessHandle = v5;

    if (self->_shieldUIProcessHandle)
    {
      v8 = CMContinuityCaptureLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = self->_shieldUIProcessHandle;
        *buf = 138543618;
        v26 = self;
        v27 = 2114;
        v28 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ setup monitor for %{public}@", buf, 0x16u);
      }

      v10 = self->_shieldUIProcessHandle;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100001EA4;
      v23[3] = &unk_10001C708;
      objc_copyWeak(&v24, &location);
      [(RBSProcessHandle *)v10 monitorForDeath:v23];
      v11 = self;
      objc_sync_enter(v11);
      waitShieldLaunchTimer = v11->_waitShieldLaunchTimer;
      if (waitShieldLaunchTimer)
      {
        dispatch_source_cancel(waitShieldLaunchTimer);
        v13 = v11->_waitShieldLaunchTimer;
        v11->_waitShieldLaunchTimer = 0;
      }

      objc_sync_exit(v11);

      objc_destroyWeak(&v24);
    }

    else
    {
      v14 = CMContinuityCaptureLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v26 = self;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to find shieldUI process", buf, 0xCu);
      }

      p_waitShieldLaunchTimer = &self->_waitShieldLaunchTimer;
      if (self->_waitShieldLaunchTimer)
      {
        v16 = atomic_load(&self->_failedShieldProcessActiveCount);
        if (v16 < 9)
        {
          atomic_fetch_add(&self->_failedShieldProcessActiveCount, 1u);
        }

        else
        {
          sessionInterruptionBlock = self->_sessionInterruptionBlock;
          if (sessionInterruptionBlock)
          {
            sessionInterruptionBlock[2]();
          }
        }
      }

      else
      {
        v18 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_shieldUILaunchMonitorQueue);
        dispatch_source_set_timer(v18, 0, 0x3B9ACA00uLL, 0);
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100001FC4;
        v21[3] = &unk_10001C6E0;
        objc_copyWeak(&v22, &location);
        dispatch_source_set_event_handler(v18, v21);
        dispatch_resume(v18);
        v19 = self;
        objc_sync_enter(v19);
        objc_storeStrong(p_waitShieldLaunchTimer, v18);
        objc_sync_exit(v19);

        v20 = CMContinuityCaptureLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v26 = v19;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ wait for setting shield ui monitor", buf, 0xCu);
        }

        objc_destroyWeak(&v22);
      }
    }

    objc_destroyWeak(&location);
  }
}

- (void)invalidate
{
  v3 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = self;
    v11 = 2080;
    v12 = "[CCDShieldUISession invalidate]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", &v9, 0x16u);
  }

  v4 = self;
  objc_sync_enter(v4);
  waitShieldLaunchTimer = v4->_waitShieldLaunchTimer;
  if (waitShieldLaunchTimer)
  {
    dispatch_source_cancel(waitShieldLaunchTimer);
    v6 = v4->_waitShieldLaunchTimer;
    v4->_waitShieldLaunchTimer = 0;
  }

  shieldUIProcessHandle = v4->_shieldUIProcessHandle;
  v4->_shieldUIProcessHandle = 0;

  sessionInterruptionBlock = v4->_sessionInterruptionBlock;
  v4->_sessionInterruptionBlock = 0;

  objc_sync_exit(v4);
}

- (NSString)bundleIdentifier
{
  if ([(CMContinuityCaptureUIConfiguration *)self->_configuration micOnly])
  {
    return @"com.apple.ContinuitySingShieldUI";
  }

  else
  {
    return @"com.apple.ContinuityCaptureShieldUI";
  }
}

- (id)description
{
  deviceIdentifier = self->_deviceIdentifier;
  v4 = [(CCDShieldUISession *)self sessionID];
  v5 = [(CCDShieldUISession *)self configuration];
  v6 = [NSString stringWithFormat:@"DID:%@ SID:%@ Configuration:%@", deviceIdentifier, v4, v5];

  return v6;
}

@end