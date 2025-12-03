@interface APTelephony
+ (id)connectionTypeToString:(int64_t)string;
+ (id)telephony;
- (APTelephony)init;
- (BOOL)networkDataValid;
- (BOOL)telephonyDataValid;
- (NSNumber)signalStrength;
- (int64_t)dataIndicatorToConnectionType:(int)type;
- (void)_deviceLockStateChanged;
- (void)_resumeTelephonyAndReachability;
- (void)_startMonitoringTelephony;
- (void)_suspendTelephonyAndReachability;
- (void)preferredDataSimChanged:(id)changed;
- (void)reachabilityChanged:(int64_t)changed;
- (void)signalStrengthChanged:(id)changed info:(id)info;
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
        deviceIsLocked = [(APTelephony *)self deviceIsLocked];
        v6 = @"unlocked";
        if (deviceIsLocked)
        {
          v6 = @"locked";
        }

        *buf = 138543362;
        v18 = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Device lock state changed to %{public}@. Queuing attempt to toggle Telephony and Reachability.", buf, 0xCu);
      }

      disableTelephonyMethod = [(APTelephony *)self disableTelephonyMethod];

      if (disableTelephonyMethod)
      {
        disableTelephonyMethod2 = [(APTelephony *)self disableTelephonyMethod];
        dispatch_block_cancel(disableTelephonyMethod2);
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
        queue = [(APTelephony *)self queue];
        disableTelephonyMethod3 = [(APTelephony *)self disableTelephonyMethod];
        dispatch_after(v11, queue, disableTelephonyMethod3);
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
  reachability = [(APTelephony *)self reachability];
  [reachability startMonitoring];
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
  queue = [(APTelephony *)self queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000F1BC;
  v4[3] = &unk_10047C978;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);

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
    reachability = [(APTelephony *)v8 reachability];
    [reachability startMonitoring];
  }

  return v3;
}

- (BOOL)networkDataValid
{
  selfCopy = self;
  lock = [(APTelephony *)self lock];
  [lock lock];
  LOBYTE(selfCopy) = selfCopy->_networkError == 0;
  [lock unlock];

  return selfCopy;
}

- (NSNumber)signalStrength
{
  lock = [(APTelephony *)self lock];
  [lock lock];
  if ([(APTelephony *)self networkType]== 1)
  {
    [lock unlock];
    latestCellularSignalStrength2 = &off_100492178;
  }

  else
  {
    ctClient = [(APTelephony *)self ctClient];

    if (ctClient)
    {
      latestCellularSignalStrength = [(APTelephony *)self latestCellularSignalStrength];
      [lock unlock];
      if (!latestCellularSignalStrength)
      {
        [(APTelephony *)self updateCellularSignalStrength];
      }

      latestCellularSignalStrength2 = [(APTelephony *)self latestCellularSignalStrength];
    }

    else
    {
      [lock unlock];
      latestCellularSignalStrength2 = [(APTelephony *)self latestCellularSignalStrength];
    }
  }

  return latestCellularSignalStrength2;
}

- (BOOL)telephonyDataValid
{
  selfCopy = self;
  lock = [(APTelephony *)self lock];
  [lock lock];
  telephonyError = [(APTelephony *)selfCopy telephonyError];
  LOBYTE(selfCopy) = telephonyError == 0;

  [lock unlock];
  return selfCopy;
}

- (void)reachabilityChanged:(int64_t)changed
{
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    changedCopy = changed;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "APTelephony notification from reachability: new network type = %ld", buf, 0xCu);
  }

  v6 = -1;
  if ((changed & 2) != 0)
  {
    v6 = 1;
  }

  if (changed)
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
    queue = [(APTelephony *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10028C01C;
    block[3] = &unk_10047C978;
    objc_copyWeak(&v11, buf);
    dispatch_after(v8, queue, block);

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

- (void)signalStrengthChanged:(id)changed info:(id)info
{
  changedCopy = changed;
  infoCopy = info;
  objc_initWeak(&location, self);
  queue = [(APTelephony *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10028C180;
  block[3] = &unk_10047C9A0;
  objc_copyWeak(&v12, &location);
  v11 = infoCopy;
  v9 = infoCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)preferredDataSimChanged:(id)changed
{
  changedCopy = changed;
  lock = [(APTelephony *)self lock];
  [lock lock];
  [(APTelephony *)self setCtSubscriptionContext:changedCopy];

  [lock unlock];
}

- (void)updateCellularSignalStrength
{
  lock = [(APTelephony *)self lock];
  [lock lock];
  ctClient = [(APTelephony *)self ctClient];
  if (ctClient)
  {
    v5 = ctClient;
    ctSubscriptionContext = [(APTelephony *)self ctSubscriptionContext];

    if (ctSubscriptionContext)
    {
      ctClient2 = [(APTelephony *)self ctClient];
      ctSubscriptionContext2 = [(APTelephony *)self ctSubscriptionContext];
      v22 = 0;
      v9 = [ctClient2 getSignalStrengthInfo:ctSubscriptionContext2 error:&v22];
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
        maxDisplayBars = [v9 maxDisplayBars];
        [maxDisplayBars doubleValue];
        v16 = v15;

        bars = [v9 bars];
        [bars doubleValue];
        v19 = v18;

        if (v16 > 0.0)
        {
          v20 = [NSNumber numberWithUnsignedInteger:vcvtad_u64_f64(v19 / v16 * 100.0)];
          [(APTelephony *)self setLatestCellularSignalStrength:v20];

          v11 = APLogForCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            latestCellularSignalStrength = [(APTelephony *)self latestCellularSignalStrength];
            *buf = 138543362;
            v24 = latestCellularSignalStrength;
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

      [lock unlock];
      goto LABEL_16;
    }
  }

  v13 = APLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "CoreTelephony client or CoreTelephonySubScriptionContext is not created.", buf, 2u);
  }

  [lock unlock];
LABEL_16:
}

- (int64_t)dataIndicatorToConnectionType:(int)type
{
  if (type > 0xF)
  {
    return -1;
  }

  else
  {
    return qword_1003F0450[type];
  }
}

+ (id)connectionTypeToString:(int64_t)string
{
  if (string > 9)
  {
    return @"Unknown";
  }

  else
  {
    return off_10047C9C0[string];
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

  ctClient = [(APTelephony *)self ctClient];
  [ctClient setDelegate:0];

  [(APTelephony *)self setCtClient:0];
  reachability = [(APTelephony *)self reachability];
  [reachability stopMonitoring];
}

@end