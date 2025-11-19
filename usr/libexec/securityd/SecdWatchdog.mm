@interface SecdWatchdog
+ (id)watchdog;
- (BOOL)setWatchdogParameters:(id)a3 error:(id *)a4;
- (SecdWatchdog)init;
- (id)watchdogParameters;
- (unint64_t)secondsFromMachTime:(unint64_t)a3;
- (void)activateTimer;
- (void)runWatchdog;
@end

@implementation SecdWatchdog

- (BOOL)setWatchdogParameters:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[NSMutableArray array];
  v8 = self;
  objc_sync_enter(v8);
  objc_initWeak(&location, v8);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002E698;
  v16[3] = &unk_100333BA8;
  objc_copyWeak(&v18, &location);
  v9 = v7;
  v17 = v9;
  [v6 enumerateKeysAndObjectsUsingBlock:v16];
  dispatch_source_cancel(v8->_timer);
  timer = v8->_timer;
  v8->_timer = 0;

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
  objc_sync_exit(v8);

  [(SecdWatchdog *)v8 activateTimer];
  v11 = [v9 count];
  v12 = v11;
  if (a4 && v11)
  {
    v20 = NSLocalizedDescriptionKey;
    v13 = [NSString stringWithFormat:@"failed to set parameters: %@", v9];
    v21 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    *a4 = [NSError errorWithDomain:@"com.apple.securityd.watchdog" code:0 userInfo:v14];
  }

  return v12 == 0;
}

- (id)watchdogParameters
{
  v2 = self;
  objc_sync_enter(v2);
  v9[0] = @"allowed-runtime";
  v3 = [NSNumber numberWithUnsignedLongLong:v2->_runtimeSecondsBeforeWatchdog];
  v10[0] = v3;
  v9[1] = @"reset-period";
  v4 = [NSNumber numberWithLong:v2->_resetPeriod];
  v10[1] = v4;
  v9[2] = @"check-period";
  v5 = [NSNumber numberWithLong:v2->_checkPeriod];
  v10[2] = v5;
  v9[3] = @"graceful-exit-time";
  v6 = [NSNumber numberWithLong:v2->_gracefulExitLeeway];
  v10[3] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];

  objc_sync_exit(v2);

  return v7;
}

- (void)activateTimer
{
  v2 = self;
  objc_sync_enter(v2);
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v38 = v3;
  v39 = v3;
  v36 = v3;
  v37 = v3;
  v34 = v3;
  v35 = v3;
  v32 = v3;
  v33 = v3;
  v30 = v3;
  v31 = v3;
  v28 = v3;
  v29 = v3;
  v26 = v3;
  v27 = v3;
  v24 = v3;
  v25 = v3;
  v22 = v3;
  v23 = v3;
  v20 = v3;
  v21 = v3;
  v18 = v3;
  v19 = v3;
  v16 = v3;
  v17 = v3;
  v14 = v3;
  v15 = v3;
  v12 = v3;
  v13 = v3;
  v11 = v3;
  [objc_opt_class() watchdogrusage:&v11];
  v2->_rusageBaseline = [(SecdWatchdog *)v2 secondsFromMachTime:v12];
  v2->_lastCheckTime = CFAbsoluteTimeGetCurrent();
  objc_initWeak(&location, v2);
  v4 = dispatch_get_global_queue(0, 0);
  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v4);
  timer = v2->_timer;
  v2->_timer = v5;

  dispatch_source_set_timer(v2->_timer, 0, 1000000000 * v2->_checkPeriod, 1000000000 * v2->_checkPeriodLeeway);
  v7 = v2->_timer;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002EB60;
  v8[3] = &unk_1003452E8;
  objc_copyWeak(&v9, &location);
  dispatch_source_set_event_handler(v7, v8);
  dispatch_resume(v2->_timer);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
  objc_sync_exit(v2);
}

- (void)runWatchdog
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41 = v3;
  v42 = v3;
  v39 = v3;
  v40 = v3;
  v37 = v3;
  v38 = v3;
  v35 = v3;
  v36 = v3;
  v33 = v3;
  v34 = v3;
  v31 = v3;
  v32 = v3;
  v29 = v3;
  v30 = v3;
  v27 = v3;
  v28 = v3;
  v25 = v3;
  v26 = v3;
  v23 = v3;
  v24 = v3;
  v21 = v3;
  v22 = v3;
  v19 = v3;
  v20 = v3;
  v17 = v3;
  v18 = v3;
  v15 = v3;
  v16 = v3;
  v14 = v3;
  if ([objc_opt_class() watchdogrusage:&v14])
  {
    v4 = self;
    objc_sync_enter(v4);
    v5 = [(SecdWatchdog *)v4 secondsFromMachTime:v15];
    if (v5 <= v4->_runtimeSecondsBeforeWatchdog + v4->_rusageBaseline)
    {
      if (!v4->_diskUsageHigh && *(&v28 + 1) > v4->_diskUsageLimit + v4->_diskUsageBaseLine)
      {
        if ([objc_opt_class() triggerOSFaults] && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
        {
          diskUsageLimit = v4->_diskUsageLimit;
          v12 = 134217984;
          v13 = diskUsageLimit;
          _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "securityd have written more then %llu", &v12, 0xCu);
        }

        v4->_diskUsageHigh = 1;
      }

      Current = CFAbsoluteTimeGetCurrent();
      if (Current > v4->_lastCheckTime + v4->_resetPeriod)
      {
        v10 = sub_100006274("SecWatchdog");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v12) = 0;
          _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "resetting watchdog monitoring interval ahead another 24 hours", &v12, 2u);
        }

        v4->_lastCheckTime = Current;
        v4->_rusageBaseline = v5;
        v4->_diskUsageHigh = 0;
        v4->_diskUsageBaseLine = *(&v28 + 1);
      }
    }

    else
    {
      v6 = sub_100006274("SecCritical");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SecWatchdog: watchdog has detected securityd/secd is using too much CPU - attempting to exit gracefully", &v12, 2u);
      }

      sub_10008A0C0(@"securityd watchdog triggered", 1405091852);
      xpc_transaction_exit_clean();
      v7 = dispatch_time(0, 1000000000 * v4->_gracefulExitLeeway);
      v8 = dispatch_get_global_queue(2, 0);
      dispatch_after(v7, v8, &stru_100333B80);
    }

    objc_sync_exit(v4);
  }
}

- (unint64_t)secondsFromMachTime:(unint64_t)a3
{
  if (qword_10039DB30 != -1)
  {
    dispatch_once(&qword_10039DB30, &stru_100333B60);
  }

  return qword_10039DB38 * a3 / 0x3B9ACA00;
}

- (SecdWatchdog)init
{
  v5.receiver = self;
  v5.super_class = SecdWatchdog;
  v2 = [(SecdWatchdog *)&v5 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_runtimeSecondsBeforeWatchdog = xmmword_100294900;
    *&v2->_checkPeriod = xmmword_100294910;
    v2->_gracefulExitLeeway = 300;
    v2->_diskUsageLimit = 1048576000;
    v2->_diskUsageHigh = 0;
    [(SecdWatchdog *)v2 activateTimer];
  }

  return v3;
}

+ (id)watchdog
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002F0F4;
  block[3] = &unk_100346E68;
  block[4] = a1;
  if (qword_10039DB28 != -1)
  {
    dispatch_once(&qword_10039DB28, block);
  }

  v2 = qword_10039DB20;

  return v2;
}

@end