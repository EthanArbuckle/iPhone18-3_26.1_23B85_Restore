@interface OSIMotionMonitor
- (BOOL)currentlyInCar;
- (OSIMotionMonitor)init;
- (double)percentStationaryOverDuration:(double)duration;
- (double)percentageStationaryWithActivity:(id)activity untilDate:(id)date;
- (void)dealloc;
@end

@implementation OSIMotionMonitor

- (OSIMotionMonitor)init
{
  v14.receiver = self;
  v14.super_class = OSIMotionMonitor;
  v2 = [(OSIMotionMonitor *)&v14 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.osintelligence", "signal.motion");
    log = v2->_log;
    v2->_log = v3;

    v5 = objc_alloc_init(NSOperationQueue);
    queue = v2->_queue;
    v2->_queue = v5;

    [(NSOperationQueue *)v2->_queue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v2->_queue setQualityOfService:17];
    v7 = objc_alloc_init(CMMotionActivityManager);
    activityManager = v2->_activityManager;
    v2->_activityManager = v7;

    objc_initWeak(&location, v2);
    v9 = dispatch_get_global_queue(-32768, 0);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000F440;
    v11[3] = &unk_100094C48;
    objc_copyWeak(&v12, &location);
    notify_register_dispatch("com.apple.inactivity.recentmotion", &v2->_notifyToken, v9, v11);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (double)percentageStationaryWithActivity:(id)activity untilDate:(id)date
{
  activityCopy = activity;
  dateCopy = date;
  selfCopy = self;
  v8 = [(OSIMotionMonitor *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10005B068(activityCopy, v8);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v9 = activityCopy;
  v10 = [v9 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v10)
  {
    v11 = v10;
    v40 = dateCopy;
    startDate3 = 0;
    v13 = 0;
    stationary2 = 0;
    v15 = *v44;
    v16 = 0.0;
    v17 = 0.0;
    v41 = v9;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        v19 = startDate3;
        if (*v44 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v20 = *(*(&v43 + 1) + 8 * i);
        if ([v20 stationary])
        {
          v21 = [v20 confidence] != 0;
        }

        else
        {
          v21 = 0;
        }

        if (!((startDate3 == 0) | v13 & 1))
        {
          startDate = [v20 startDate];
          [startDate timeIntervalSinceDate:v19];
          v17 = v17 + v23;

          if ((stationary2 & 1) == 0)
          {
            startDate2 = [v20 startDate];
            [startDate2 timeIntervalSinceDate:v19];
            v16 = v16 + v25;
          }
        }

        startDate3 = [v20 startDate];

        if ([v20 confidence] && !objc_msgSend(v20, "unknown"))
        {
          log = selfCopy->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
          {
            v31 = log;
            stationary = [v20 stationary];
            startDate4 = [v20 startDate];
            *buf = 138412802;
            v48 = *&v20;
            v49 = 1024;
            *v50 = stationary;
            *&v50[4] = 2112;
            *&v50[6] = startDate4;
            _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "  Using event %@ (%u from %@)", buf, 0x1Cu);

            v9 = v41;
          }

          stationary2 = [v20 stationary];
          v13 = 0;
        }

        else
        {
          v26 = selfCopy->_log;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            v28 = v26;
            unknown = [v20 unknown];
            startDate5 = [v20 startDate];
            *buf = 138412802;
            v48 = *&v20;
            v49 = 1024;
            *v50 = unknown;
            v9 = v41;
            *&v50[4] = 2112;
            *&v50[6] = startDate5;
            _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "  Skipping event %@ (%u from %@)", buf, 0x1Cu);
          }

          v13 = 1;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v11);

    if (startDate3)
    {
      v34 = v13;
    }

    else
    {
      v34 = 1;
    }

    if (v34)
    {
      dateCopy = v40;
    }

    else
    {
      dateCopy = v40;
      [v40 timeIntervalSinceDate:startDate3];
      v17 = v17 + v35;
      if ((stationary2 & 1) == 0)
      {
        [v40 timeIntervalSinceDate:startDate3];
        v16 = v16 + v36;
      }
    }
  }

  else
  {

    startDate3 = 0;
    v16 = 0.0;
    v21 = 1;
    v17 = 0.0;
  }

  v37 = [(OSIMotionMonitor *)selfCopy log];
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    v48 = v17 - v16;
    v49 = 2048;
    *v50 = v16;
    *&v50[8] = 1024;
    *&v50[10] = v21;
    _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, " Stationary duration: %.0f, Non-stationary duration: %.0f, Last state confident stationary: %u", buf, 0x1Cu);
  }

  v38 = 0.0;
  if (v21)
  {
    v38 = 1.0;
    if (v17 > 0.0)
    {
      v38 = 1.0 - v16 / v17;
    }
  }

  return v38;
}

- (double)percentStationaryOverDuration:(double)duration
{
  v5 = 1.0;
  if (+[CMMotionActivityManager isActivityAvailable])
  {
    v6 = +[NSDate now];
    v7 = [v6 dateByAddingTimeInterval:-duration];
    v8 = +[OSIntelligenceUtilities lastLockDate];
    if (v8)
    {
      v9 = [v7 laterDate:v8];

      v7 = v9;
    }

    v10 = +[OSIntelligenceUtilities lastPluggedInDate];
    if (v10)
    {
      v11 = [v7 laterDate:v10];

      v7 = v11;
    }

    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0x3FF0000000000000;
    v12 = dispatch_semaphore_create(0);
    activityManager = self->_activityManager;
    queue = self->_queue;
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_10000FBE8;
    v23 = &unk_100094C70;
    v27 = &v28;
    selfCopy = self;
    v15 = v6;
    v25 = v15;
    v16 = v12;
    v26 = v16;
    [(CMMotionActivityManager *)activityManager queryActivityStartingFromDate:v7 toDate:v15 toQueue:queue withHandler:&v20];
    v17 = dispatch_walltime(0, 10000000000);
    if (dispatch_semaphore_wait(v16, v17))
    {
      v18 = [(OSIMotionMonitor *)self log:v20];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10005B0E0(v18);
      }
    }

    else
    {
      v5 = v29[3];
    }

    _Block_object_dispose(&v28, 8);
  }

  return v5;
}

- (BOOL)currentlyInCar
{
  v2 = +[_CDClientContext userContext];
  v3 = +[_CDContextQueries keyPathForCarConnectedStatus];
  v4 = +[_CDContextQueries keyPathForNavigationStatus];
  v5 = +[_CDContextQueries keyPathForCarConnectedStatus];
  v6 = [v2 objectForKeyedSubscript:v3];
  if ([v6 BOOLValue])
  {
    bOOLValue = 1;
  }

  else
  {
    v8 = [v2 objectForKeyedSubscript:v4];
    if ([v8 BOOLValue])
    {
      bOOLValue = 1;
    }

    else
    {
      v9 = [v2 objectForKeyedSubscript:v5];
      bOOLValue = [v9 BOOLValue];
    }
  }

  return bOOLValue;
}

- (void)dealloc
{
  notify_cancel(self->_notifyToken);
  v3.receiver = self;
  v3.super_class = OSIMotionMonitor;
  [(OSIMotionMonitor *)&v3 dealloc];
}

@end