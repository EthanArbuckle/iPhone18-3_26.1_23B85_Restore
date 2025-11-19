@interface AdvertisingIdentifierManager
+ (id)HMACWithKey:(id)a3 data:(id)a4;
+ (id)HMACWithSeed:(id)a3 timeSlice:(unint64_t)a4;
- (AdvertisingIdentifierManager)initWithDelegate:(id)a3 seed:(id)a4;
- (AdvertisingIdentifierManagerDelegate)delegate;
- (NSData)advertisingIdentifier;
- (void)dealloc;
- (void)invalidate;
- (void)rollingTimerFired;
- (void)scheduleRollingTimer;
- (void)significantTimeChangeHandler;
- (void)updateAdvertisingIdentifier;
@end

@implementation AdvertisingIdentifierManager

- (AdvertisingIdentifierManager)initWithDelegate:(id)a3 seed:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = AdvertisingIdentifierManager;
  v8 = [(AdvertisingIdentifierManager *)&v13 init];
  if (v8)
  {
    v9 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [v7 UUIDString];
      *buf = 134218242;
      v15 = v8;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "AdvertisingIdentifierManager --- Initializing (%p); Seed: (%@)", buf, 0x16u);
    }

    objc_storeWeak(&v8->_delegate, v6);
    objc_storeStrong(&v8->_seed, a4);
    v8->_significantTimeChangeNotifyToken = -1;
  }

  return v8;
}

- (void)dealloc
{
  if (!self->_invalidated)
  {
    [(AdvertisingIdentifierManager *)self invalidate];
  }

  v3.receiver = self;
  v3.super_class = AdvertisingIdentifierManager;
  [(AdvertisingIdentifierManager *)&v3 dealloc];
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    v3 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AdvertisingIdentifierManager --- Invalidating (%p)", &v11, 0xCu);
    }

    self->_invalidated = 1;
    advertisingIdentifier = self->_advertisingIdentifier;
    self->_advertisingIdentifier = 0;

    self->_currentTimeSlice = 0;
    rollingTimer = self->_rollingTimer;
    if (rollingTimer)
    {
      [(AbstractTimer *)rollingTimer invalidate];
      v6 = self->_rollingTimer;
      self->_rollingTimer = 0;
    }

    significantTimeChangeNotifyToken = self->_significantTimeChangeNotifyToken;
    if (significantTimeChangeNotifyToken != -1)
    {
      v8 = notify_cancel(significantTimeChangeNotifyToken);
      if (v8)
      {
        v9 = v8;
        v10 = qword_100021420;
        if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 67109120;
          LODWORD(v12) = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "AdvertisingIdentifierManager --- Failed to unregister observer for significiant time change notification with status: (%u)", &v11, 8u);
        }
      }

      self->_significantTimeChangeNotifyToken = -1;
    }
  }
}

- (NSData)advertisingIdentifier
{
  if (self->_invalidated)
  {
    v3 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidated", v6, 2u);
    }
  }

  advertisingIdentifier = self->_advertisingIdentifier;
  if (!advertisingIdentifier)
  {
    [(AdvertisingIdentifierManager *)self updateAdvertisingIdentifier];
    advertisingIdentifier = self->_advertisingIdentifier;
  }

  return advertisingIdentifier;
}

- (void)updateAdvertisingIdentifier
{
  v3 = [objc_opt_class() computeCurrentTimeSlice];
  v4 = v3;
  if (!self->_advertisingIdentifier || self->_currentTimeSlice != v3)
  {
    v5 = [objc_opt_class() HMACWithSeed:self->_seed timeSlice:v3];
    advertisingIdentifier = self->_advertisingIdentifier;
    self->_advertisingIdentifier = v5;

    self->_currentTimeSlice = v4;
    v7 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_advertisingIdentifier;
      *buf = 138412546;
      v19 = v8;
      v20 = 2048;
      v21 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AdvertisingIdentifierManager --- Computed new identifier: (%@) for time slice: (%llu)", buf, 0x16u);
    }
  }

  if (!self->_rollingTimer)
  {
    [(AdvertisingIdentifierManager *)self scheduleRollingTimer];
  }

  p_significantTimeChangeNotifyToken = &self->_significantTimeChangeNotifyToken;
  if (self->_significantTimeChangeNotifyToken == -1)
  {
    objc_initWeak(buf, self);
    v10 = +[MagicSwitchEnabler sharedInstance];
    v11 = [v10 workQueue];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000BE48;
    handler[3] = &unk_100018720;
    objc_copyWeak(&v15, buf);
    v12 = notify_register_dispatch("SignificantTimeChangeNotification", p_significantTimeChangeNotifyToken, v11, handler);

    if (v12)
    {
      v13 = qword_100021420;
      if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 67109120;
        v17 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "AdvertisingIdentifierManager --- Failed to register observer for significiant time change notification with status: (%u)", v16, 8u);
      }
    }

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }
}

- (void)significantTimeChangeHandler
{
  if (self->_invalidated)
  {
    v3 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidated", buf, 2u);
    }
  }

  if (self->_currentTimeSlice && [objc_opt_class() computeCurrentTimeSlice] != self->_currentTimeSlice)
  {
    v4 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "AdvertisingIdentifierManager --- Invalidating current advertising identifier due to significant time change", v9, 2u);
    }

    advertisingIdentifier = self->_advertisingIdentifier;
    self->_advertisingIdentifier = 0;

    rollingTimer = self->_rollingTimer;
    if (rollingTimer)
    {
      [(AbstractTimer *)rollingTimer invalidate];
      v7 = self->_rollingTimer;
      self->_rollingTimer = 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained shouldRollAdvertisingIdentifier];
  }
}

- (void)scheduleRollingTimer
{
  if (self->_invalidated)
  {
    v3 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidated", buf, 2u);
    }
  }

  if (self->_rollingTimer)
  {
    v4 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Timer already scheduled", buf, 2u);
    }
  }

  objc_initWeak(buf, self);
  +[NSDate timeIntervalSinceReferenceDate];
  v6 = v5;
  currentTimeSlice = self->_currentTimeSlice;
  v8 = [NSString stringWithUTF8String:"com.apple.magicswitchd.advIdRolling"];
  v9 = 900 * currentTimeSlice + 900;
  if (v9 - v6 >= 0.0)
  {
    v10 = v9 - v6;
  }

  else
  {
    v10 = 0.0;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000C184;
  v13[3] = &unk_1000184D0;
  objc_copyWeak(&v14, buf);
  v11 = [TimerFactory timerWithIdentifier:v8 delay:1 gracePeriod:v13 waking:v10 handlerBlock:0.0];
  rollingTimer = self->_rollingTimer;
  self->_rollingTimer = v11;

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (void)rollingTimerFired
{
  if (!self->_rollingTimer)
  {
    v3 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Timer not scheduled", buf, 2u);
    }
  }

  v4 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "AdvertisingIdentifierManager --- Rolling timer fired!", v8, 2u);
  }

  rollingTimer = self->_rollingTimer;
  self->_rollingTimer = 0;

  advertisingIdentifier = self->_advertisingIdentifier;
  self->_advertisingIdentifier = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained shouldRollAdvertisingIdentifier];
}

+ (id)HMACWithSeed:(id)a3 timeSlice:(unint64_t)a4
{
  v10 = a4;
  v11[0] = 0;
  v11[1] = 0;
  [a3 getUUIDBytes:v11];
  v5 = [NSData dataWithBytes:v11 length:16];
  v6 = [NSData dataWithBytes:&v10 length:8];
  v7 = 0;
  if (v5)
  {
    v8 = v10 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v7 = [a1 HMACWithKey:v5 data:v6];
  }

  return v7;
}

+ (id)HMACWithKey:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = a3;
  v9 = [v8 bytes];
  v10 = [v8 length];

  v11 = [v7 bytes];
  v12 = [v7 length];

  CCHmac(2u, v9, v10, v11, v12, macOut);
  v13 = [NSData dataWithBytes:macOut length:32];

  return v13;
}

- (AdvertisingIdentifierManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end