@interface APTelephony
+ (id)connectionTypeToString:(int64_t)a3;
+ (id)telephony;
- (APTelephony)init;
- (BOOL)networkDataValid;
- (BOOL)telephonyDataValid;
- (NSNumber)signalStrength;
- (int64_t)dataIndicatorToConnectionType:(int)a3;
- (void)_deviceLockStateChanged;
- (void)_resumeTelephonyAndReachability;
- (void)_startMonitoringTelephony;
- (void)_suspendTelephonyAndReachability;
- (void)preferredDataSimChanged:(id)a3;
- (void)reachabilityChanged:(int64_t)a3;
- (void)signalStrengthChanged:(id)a3 info:(id)a4;
- (void)updateCellularSignalStrength;
- (void)updateTelephonyProperties;
@end

@implementation APTelephony

- (void)_deviceLockStateChanged
{
  if (dword_1004E6908 == -1)
  {
    v14 = APLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Device lock notify token is invalid (expected if running in the simulator)", buf, 2u);
    }
  }

  else
  {
    state64 = 0;
    notify_get_state(dword_1004E6908, &state64);
    v3 = state64;
    if ((((v3 == 0) ^ [(APTelephony *)self deviceIsLocked]) & 1) == 0)
    {
      [(APTelephony *)self setDeviceIsLocked:state64 != 0];
      v4 = APLogForCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = [(APTelephony *)self deviceIsLocked];
        v6 = @"unlocked";
        if (v5)
        {
          v6 = @"locked";
        }

        *buf = 138543362;
        v18 = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Device lock state changed to %{public}@. Queuing attempt to toggle Telephony and Reachability.", buf, 0xCu);
      }

      v7 = [(APTelephony *)self disableTelephonyMethod];

      if (v7)
      {
        v8 = [(APTelephony *)self disableTelephonyMethod];
        dispatch_block_cancel(v8);
      }

      if ([(APTelephony *)self deviceIsLocked])
      {
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_10028C6C0;
        v15[3] = &unk_1004790A8;
        v15[4] = self;
        v9 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, v15);
        [(APTelephony *)self setDisableTelephonyMethod:v9];

        v10 = APLogForCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 67240192;
          LODWORD(v18) = 30;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Disabling telephony and reachability in %{public}d seconds", buf, 8u);
        }

        v11 = dispatch_time(0, 30000000000);
        v12 = [(APTelephony *)self queue];
        v13 = [(APTelephony *)self disableTelephonyMethod];
        dispatch_after(v11, v12, v13);
      }

      else
      {
        [(APTelephony *)self _resumeTelephonyAndReachability];
      }
    }
  }
}

- (void)_resumeTelephonyAndReachability
{
  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Resuming Telephony and Reachability.", v5, 2u);
  }

  [(APTelephony *)self _startMonitoringTelephony];
  v4 = [(APTelephony *)self reachability];
  [v4 startMonitoring];
}

- (void)_startMonitoringTelephony
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_10000F0D4;
  v7 = &unk_10047C978;
  objc_copyWeak(&v8, &location);
  dispatch_async(queue, &v4);
  [(APTelephony *)self updateTelephonyProperties:v4];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)updateTelephonyProperties
{
  objc_initWeak(&location, self);
  v3 = [(APTelephony *)self queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000F1BC;
  v4[3] = &unk_10047C978;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

+ (id)telephony
{
  if (qword_1004E6900 != -1)
  {
    sub_100393A6C();
  }

  v3 = qword_1004E68F8;

  return v3;
}

- (APTelephony)init
{
  v22.receiver = self;
  v22.super_class = APTelephony;
  v2 = [(APTelephony *)&v22 init];
  v3 = v2;
  if (v2)
  {
    v2->_networkType = -1;
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v5 = dispatch_queue_create("com.apple.ap.promotedcontentd.telephony-networking", v4);
    queue = v3->_queue;
    v3->_queue = v5;

    dword_1004E6908 = -1;
    v3->_deviceIsLocked = MKBGetDeviceLockState() != 0;
    v7 = v3->_queue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000E97C;
    handler[3] = &unk_10047C950;
    v8 = v3;
    v21 = v8;
    v9 = notify_register_dispatch("com.apple.springboard.lockstate", &dword_1004E6908, v7, handler);
    if (v9)
    {
      v10 = v9;
      v11 = APLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        *buf = 138478083;
        v24 = v12;
        v25 = 1026;
        v26 = v10;
        v13 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%{private}@]: Failed to register for lockstate notification - error %{public}d", buf, 0x12u);
      }
    }

    v14 = [[APUnfairLock alloc] initWithOptions:1];
    lock = v8->_lock;
    v8->_lock = v14;

    v16 = [[APReachability alloc] initWithDelegate:v8];
    reachability = v8->_reachability;
    v8->_reachability = v16;

    [(APTelephony *)v8 _startMonitoringTelephony];
    v18 = [(APTelephony *)v8 reachability];
    [v18 startMonitoring];
  }

  return v3;
}

- (BOOL)networkDataValid
{
  v2 = self;
  v3 = [(APTelephony *)self lock];
  [v3 lock];
  LOBYTE(v2) = v2->_networkError == 0;
  [v3 unlock];

  return v2;
}

- (NSNumber)signalStrength
{
  v3 = [(APTelephony *)self lock];
  [v3 lock];
  if ([(APTelephony *)self networkType]== 1)
  {
    [v3 unlock];
    v4 = &off_100492178;
  }

  else
  {
    v5 = [(APTelephony *)self ctClient];

    if (v5)
    {
      v6 = [(APTelephony *)self latestCellularSignalStrength];
      [v3 unlock];
      if (!v6)
      {
        [(APTelephony *)self updateCellularSignalStrength];
      }

      v4 = [(APTelephony *)self latestCellularSignalStrength];
    }

    else
    {
      [v3 unlock];
      v4 = [(APTelephony *)self latestCellularSignalStrength];
    }
  }

  return v4;
}

- (BOOL)telephonyDataValid
{
  v2 = self;
  v3 = [(APTelephony *)self lock];
  [v3 lock];
  v4 = [(APTelephony *)v2 telephonyError];
  LOBYTE(v2) = v4 == 0;

  [v3 unlock];
  return v2;
}

- (void)reachabilityChanged:(int64_t)a3
{
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "APTelephony notification from reachability: new network type = %ld", buf, 0xCu);
  }

  v6 = -1;
  if ((a3 & 2) != 0)
  {
    v6 = 1;
  }

  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  [(APTelephony *)self setNetworkType:v7];
  if (![(APTelephony *)self networkInfoUpdatingInProgress])
  {
    [(APTelephony *)self setNetworkInfoUpdatingInProgress:1];
    objc_initWeak(buf, self);
    v8 = dispatch_time(0, 10000000000);
    v9 = [(APTelephony *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10028C01C;
    block[3] = &unk_10047C978;
    objc_copyWeak(&v11, buf);
    dispatch_after(v8, v9, block);

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

- (void)signalStrengthChanged:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(APTelephony *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10028C180;
  block[3] = &unk_10047C9A0;
  objc_copyWeak(&v12, &location);
  v11 = v7;
  v9 = v7;
  dispatch_async(v8, block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)preferredDataSimChanged:(id)a3
{
  v4 = a3;
  v5 = [(APTelephony *)self lock];
  [v5 lock];
  [(APTelephony *)self setCtSubscriptionContext:v4];

  [v5 unlock];
}

- (void)updateCellularSignalStrength
{
  v3 = [(APTelephony *)self lock];
  [v3 lock];
  v4 = [(APTelephony *)self ctClient];
  if (v4)
  {
    v5 = v4;
    v6 = [(APTelephony *)self ctSubscriptionContext];

    if (v6)
    {
      v7 = [(APTelephony *)self ctClient];
      v8 = [(APTelephony *)self ctSubscriptionContext];
      v22 = 0;
      v9 = [v7 getSignalStrengthInfo:v8 error:&v22];
      v10 = v22;

      if (v10)
      {
        v11 = APLogForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v12 = "Unable to retrieve CT signal strength.";
LABEL_14:
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v12, buf, 2u);
        }
      }

      else
      {
        [(APTelephony *)self setTelephonyError:0];
        v14 = [v9 maxDisplayBars];
        [v14 doubleValue];
        v16 = v15;

        v17 = [v9 bars];
        [v17 doubleValue];
        v19 = v18;

        if (v16 > 0.0)
        {
          v20 = [NSNumber numberWithUnsignedInteger:vcvtad_u64_f64(v19 / v16 * 100.0)];
          [(APTelephony *)self setLatestCellularSignalStrength:v20];

          v11 = APLogForCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v21 = [(APTelephony *)self latestCellularSignalStrength];
            *buf = 138543362;
            v24 = v21;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Update latest signal strength to %{public}@.", buf, 0xCu);
          }

          goto LABEL_15;
        }

        v11 = APLogForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v12 = "Unable to retrieve CT signal strength because maxBars is 0.";
          goto LABEL_14;
        }
      }

LABEL_15:

      [v3 unlock];
      goto LABEL_16;
    }
  }

  v13 = APLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "CoreTelephony client or CoreTelephonySubScriptionContext is not created.", buf, 2u);
  }

  [v3 unlock];
LABEL_16:
}

- (int64_t)dataIndicatorToConnectionType:(int)a3
{
  if (a3 > 0xF)
  {
    return -1;
  }

  else
  {
    return qword_1003F0450[a3];
  }
}

+ (id)connectionTypeToString:(int64_t)a3
{
  if (a3 > 9)
  {
    return @"Unknown";
  }

  else
  {
    return off_10047C9C0[a3];
  }
}

- (void)_suspendTelephonyAndReachability
{
  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Suspending Telephony and Reachability callbacks", v6, 2u);
  }

  v4 = [(APTelephony *)self ctClient];
  [v4 setDelegate:0];

  [(APTelephony *)self setCtClient:0];
  v5 = [(APTelephony *)self reachability];
  [v5 stopMonitoring];
}

@end