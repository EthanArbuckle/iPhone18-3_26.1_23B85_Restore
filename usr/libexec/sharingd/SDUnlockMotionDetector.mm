@interface SDUnlockMotionDetector
- ($1AB5FA073B851C12C2339EC22442E995)baseAcceleration;
- (BOOL)hasMotion:(id)a3;
- (SDUnlockMotionDetector)initWithUnlockType:(int64_t)a3;
- (void)activate;
- (void)checkActivityState;
- (void)checkStepState;
- (void)handleActivityDetected:(id)a3;
- (void)handleNewAccelerometerData;
- (void)handlePastActivities:(id)a3 withStartDate:(id)a4;
- (void)handlePastActivitiesForPairedUnlock:(id)a3;
- (void)handlePastActivitiesForPhoneAutoUnlock:(id)a3 withStartDate:(id)a4;
- (void)handlePastPedometerData:(id)a3;
- (void)invalidate;
- (void)invalidateMotionTimer;
- (void)restartMotionTimer;
@end

@implementation SDUnlockMotionDetector

- (SDUnlockMotionDetector)initWithUnlockType:(int64_t)a3
{
  v16.receiver = self;
  v16.super_class = SDUnlockMotionDetector;
  v4 = [(SDUnlockMotionDetector *)&v16 init];
  if (v4)
  {
    v5 = objc_opt_new();
    motionManager = v4->_motionManager;
    v4->_motionManager = v5;

    [(CMMotionManager *)v4->_motionManager setAccelerometerUpdateInterval:1.0];
    v7 = objc_opt_new();
    activityManager = v4->_activityManager;
    v4->_activityManager = v7;

    v9 = objc_opt_new();
    pedometerManager = v4->_pedometerManager;
    v4->_pedometerManager = v9;

    v11 = dispatch_get_current_queue();
    handlerQueue = v4->_handlerQueue;
    v4->_handlerQueue = v11;

    v4->_type = a3;
    if (a3 == 1)
    {
      v13 = auto_unlock_log();
      goto LABEL_6;
    }

    if (!a3)
    {
      v13 = paired_unlock_log();
LABEL_6:
      logType = v4->_logType;
      v4->_logType = v13;
    }
  }

  return v4;
}

- (void)activate
{
  if (![(SDUnlockMotionDetector *)self activateCalled])
  {
    [(SDUnlockMotionDetector *)self setActivateCalled:1];
    objc_initWeak(&location, self);
    if (![(SDUnlockMotionDetector *)self type])
    {
      v3 = [(SDUnlockMotionDetector *)self motionManager];
      v4 = +[NSOperationQueue mainQueue];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000A7860;
      v12[3] = &unk_1008CF078;
      v12[4] = self;
      objc_copyWeak(&v13, &location);
      [v3 startAccelerometerUpdatesToQueue:v4 withHandler:v12];

      v5 = [(SDUnlockMotionDetector *)self activityManager];
      v6 = +[NSOperationQueue mainQueue];
      v7 = _NSConcreteStackBlock;
      v8 = 3221225472;
      v9 = sub_1000A78F4;
      v10 = &unk_1008CF0A0;
      objc_copyWeak(&v11, &location);
      [v5 startActivityUpdatesToQueue:v6 withHandler:&v7];

      objc_destroyWeak(&v11);
      objc_destroyWeak(&v13);
    }

    [(SDUnlockMotionDetector *)self checkActivityState:v7];
    if ([(SDUnlockMotionDetector *)self type]== 1)
    {
      [(SDUnlockMotionDetector *)self checkStepState];
    }

    objc_destroyWeak(&location);
  }
}

- (void)invalidate
{
  if (![(SDUnlockMotionDetector *)self invalidateCalled])
  {
    [(SDUnlockMotionDetector *)self setInvalidateCalled:1];
    [(SDUnlockMotionDetector *)self setMotionDetected:0];
    v3 = [(SDUnlockMotionDetector *)self motionManager];
    [v3 stopAccelerometerUpdates];

    [(SDUnlockMotionDetector *)self setMotionManager:0];
    v4 = [(SDUnlockMotionDetector *)self activityManager];
    [v4 stopActivityUpdates];

    [(SDUnlockMotionDetector *)self setActivityManager:0];
    v5 = [(SDUnlockMotionDetector *)self invalidationHandler];

    if (v5)
    {
      v6 = [(SDUnlockMotionDetector *)self invalidationHandler];
      v6[2]();
    }

    [(SDUnlockMotionDetector *)self setInvalidationHandler:0];
  }
}

- (void)checkActivityState
{
  v3 = [(SDUnlockMotionDetector *)self wristOnDate];

  if (v3)
  {
    v4 = +[NSDate date];
    if ([(SDUnlockMotionDetector *)self type]== 1)
    {
      v5 = +[NSUserDefaults standardUserDefaults];
      v6 = [v5 integerForKey:@"phoneAutoUnlockWatchMotionActivityWindowSeconds"];
      if (v6)
      {
        v7 = v6;
      }

      else
      {
        v7 = 1800;
      }

      v8 = [(SDUnlockMotionDetector *)self logType];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v23) = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Using phoneAutoUnlockWatchMotionActivityWindowSeconds %d", buf, 8u);
      }
    }

    else
    {
      v7 = 180;
    }

    v9 = [NSDate dateWithTimeIntervalSinceNow:-v7];
    v10 = [(SDUnlockMotionDetector *)self wristOnDate];
    if (v10)
    {
      v11 = v10;
      v12 = [(SDUnlockMotionDetector *)self wristOnDate];
      [v4 timeIntervalSinceDate:v12];
      v14 = v13;

      if (v14 < v7)
      {
        v15 = [(SDUnlockMotionDetector *)self wristOnDate];

        v9 = v15;
      }
    }

    v16 = [(SDUnlockMotionDetector *)self logType];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v9;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Activity start date %@", buf, 0xCu);
    }

    v17 = [(SDUnlockMotionDetector *)self activityManager];
    v18 = +[NSOperationQueue mainQueue];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000A7D24;
    v20[3] = &unk_1008CF0C8;
    v20[4] = self;
    v21 = v9;
    v19 = v9;
    [v17 queryActivityStartingFromDate:v19 toDate:v4 toQueue:v18 withHandler:v20];
  }

  else
  {
    v4 = [(SDUnlockMotionDetector *)self logType];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device off wrist, not checking past activity state", buf, 2u);
    }
  }
}

- (void)checkStepState
{
  v3 = [(SDUnlockMotionDetector *)self wristOnDate];

  if (v3)
  {
    v4 = +[NSDate date];
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [v5 integerForKey:@"phoneAutoUnlockWatchStepCountWindowSeconds"];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = 1800;
    }

    v8 = [NSDate dateWithTimeIntervalSinceNow:-v7];
    v9 = [(SDUnlockMotionDetector *)self logType];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (v6 << 32)
      {
        v10 = v6;
      }

      else
      {
        v10 = 1800;
      }

      *buf = 134217984;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Using phoneAutoUnlockWatchStepCountWindowSeconds %ld", buf, 0xCu);
    }

    v11 = [(SDUnlockMotionDetector *)self wristOnDate];
    if (v11)
    {
      v12 = v11;
      v13 = [(SDUnlockMotionDetector *)self wristOnDate];
      [v4 timeIntervalSinceDate:v13];
      v15 = v14;

      if (v15 < 180.0)
      {
        v16 = [(SDUnlockMotionDetector *)self wristOnDate];

        v8 = v16;
      }
    }

    v17 = [(SDUnlockMotionDetector *)self logType];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Step start date %@", buf, 0xCu);
    }

    v18 = [(SDUnlockMotionDetector *)self pedometerManager];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000A80FC;
    v19[3] = &unk_1008CF0F0;
    v19[4] = self;
    [v18 queryPedometerDataFromDate:v8 toDate:v4 withHandler:v19];
  }

  else
  {
    v4 = [(SDUnlockMotionDetector *)self logType];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device off wrist, not checking past step state", buf, 2u);
    }
  }
}

- (void)handleNewAccelerometerData
{
  v3 = [(SDUnlockMotionDetector *)self motionManager];
  v4 = [v3 accelerometerData];
  [v4 acceleration];
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [(SDUnlockMotionDetector *)self baseAcceleration];
  v12 = (v6 * -100.0 + v11 * 100.0);
  if (v12 >= 0)
  {
    v13 = (v6 * -100.0 + v11 * 100.0);
  }

  else
  {
    v13 = -v12;
  }

  [(SDUnlockMotionDetector *)self baseAcceleration];
  v15 = (v8 * -100.0 + v14 * 100.0);
  if (v15 >= 0)
  {
    v16 = (v8 * -100.0 + v14 * 100.0);
  }

  else
  {
    v16 = -v15;
  }

  [(SDUnlockMotionDetector *)self baseAcceleration];
  v18 = (v10 * -100.0 + v17 * 100.0);
  if (v18 < 0)
  {
    v18 = -v18;
  }

  v19 = v16 + v13 + v18;
  v20 = [(SDUnlockMotionDetector *)self logType];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    [(SDUnlockMotionDetector *)self baseAcceleration];
    v24 = [NSString stringWithFormat:@"x:%f, y:%f, z:%f", v21, v22, v23];
    v25 = [NSString stringWithFormat:@"x:%f, y:%f, z:%f", *&v6, *&v8, *&v10];
    *buf = 138412802;
    v29 = v24;
    v30 = 2112;
    v31 = v25;
    v32 = 1024;
    v33 = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Accelerometer changed (base: (%@), new: (%@), diff: %d)", buf, 0x1Cu);
  }

  if (v19 >= 0x1F)
  {
    v26 = [(SDUnlockMotionDetector *)self logType];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v29) = v19;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Accelerometer motion detected with sum change: %d", buf, 8u);
    }

    [(SDUnlockMotionDetector *)self setAccelerometerMotion:1];
    if ([(SDUnlockMotionDetector *)self shouldUseAccelerometerMotion])
    {
      v27 = [(SDUnlockMotionDetector *)self logType];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Using accelerometer motion", buf, 2u);
      }

      [(SDUnlockMotionDetector *)self handleMotionDetected:1];
    }
  }
}

- (void)handleActivityDetected:(id)a3
{
  v4 = a3;
  v5 = [(SDUnlockMotionDetector *)self logType];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Activity changed %@", &v8, 0xCu);
  }

  if ([v4 confidence] < 1 || (objc_msgSend(v4, "stationary") & 1) != 0 || (-[SDUnlockMotionDetector motionTimer](self, "motionTimer"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    if ([v4 stationary])
    {
      v7 = [(SDUnlockMotionDetector *)self motionTimer];

      if (v7)
      {
        [(SDUnlockMotionDetector *)self invalidateMotionTimer];
      }
    }
  }

  else
  {
    [(SDUnlockMotionDetector *)self restartMotionTimer];
  }
}

- (BOOL)hasMotion:(id)a3
{
  v4 = a3;
  v5 = [(SDUnlockMotionDetector *)self type];
  v6 = [v4 confidence];
  if (v5 == 1)
  {
    if (v6 >= 1)
    {
      if (([v4 walking] & 1) == 0 && (objc_msgSend(v4, "running") & 1) == 0)
      {
LABEL_12:
        v7 = [v4 cycling];
        goto LABEL_13;
      }

      goto LABEL_10;
    }

LABEL_11:
    v7 = 0;
    goto LABEL_13;
  }

  if (v6 < 1)
  {
    goto LABEL_11;
  }

  if (([v4 walking] & 1) == 0 && (objc_msgSend(v4, "running") & 1) == 0 && (objc_msgSend(v4, "automotive") & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v7 = 1;
LABEL_13:

  return v7;
}

- (void)handlePastActivities:(id)a3 withStartDate:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([(SDUnlockMotionDetector *)self type]== 1)
  {
    [(SDUnlockMotionDetector *)self handlePastActivitiesForPhoneAutoUnlock:v7 withStartDate:v6];
  }

  else if (![(SDUnlockMotionDetector *)self type])
  {
    [(SDUnlockMotionDetector *)self handlePastActivitiesForPairedUnlock:v7];
  }
}

- (void)handlePastActivitiesForPairedUnlock:(id)a3
{
  v4 = a3;
  v5 = [(SDUnlockMotionDetector *)self logType];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Past motion activities %@", buf, 0xCu);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = 0;
    v11 = *v28;
    *&v8 = 138412546;
    v26 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        if ([(SDUnlockMotionDetector *)self hasMotion:v13, v26, v27])
        {
          if (!v10)
          {
            v10 = [v13 startDate];
          }

          v14 = [(SDUnlockMotionDetector *)self logType];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v13 startDate];
            *buf = v26;
            v32 = v10;
            v33 = 2112;
            v34 = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Comparing motion dates (motion start: %@, current: %@)", buf, 0x16u);
          }

          v16 = [v13 startDate];
          [v16 timeIntervalSinceDate:v10];
          v18 = v17;

          if (v18 > 3.0)
          {
            [(SDUnlockMotionDetector *)self setActivityMotion:1];
            v19 = [(SDUnlockMotionDetector *)self logType];
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Activity motion detected", buf, 2u);
            }

            if (![(SDUnlockMotionDetector *)self shouldUseAccelerometerMotion])
            {
              v20 = [(SDUnlockMotionDetector *)self logType];
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Using activity motion", buf, 2u);
              }

              [(SDUnlockMotionDetector *)self handleMotionDetected:1];
            }
          }
        }

        else
        {

          v10 = 0;
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v21 = +[NSDate date];
  v22 = [(SDUnlockMotionDetector *)self logType];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v32 = v10;
    v33 = 2112;
    v34 = v21;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Comparing motion date to now (motion start: %@, now: %@)", buf, 0x16u);
  }

  if (v10)
  {
    [v21 timeIntervalSinceDate:v10];
    if (v23 > 3.0)
    {
      [(SDUnlockMotionDetector *)self setActivityMotion:1];
      v24 = [(SDUnlockMotionDetector *)self logType];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Activity motion detected", buf, 2u);
      }

      if (![(SDUnlockMotionDetector *)self shouldUseAccelerometerMotion])
      {
        v25 = [(SDUnlockMotionDetector *)self logType];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Using activity motion", buf, 2u);
        }

        [(SDUnlockMotionDetector *)self handleMotionDetected:1];
      }
    }
  }
}

- (void)handlePastActivitiesForPhoneAutoUnlock:(id)a3 withStartDate:(id)a4
{
  v6 = a3;
  v27 = a4;
  v26 = +[NSUserDefaults standardUserDefaults];
  v7 = [v26 integerForKey:@"phoneAutoUnlockWatchMotionActivityThresholdSeconds"];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = 90;
  }

  v9 = [(SDUnlockMotionDetector *)self logType];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v29) = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Activity threshold is %d", buf, 8u);
  }

  if ([v6 count])
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = v12;
      v15 = [v6 objectAtIndexedSubscript:v10];
      v16 = [v15 startDate];
      v12 = [v16 laterDate:v27];

      v17 = v10 + 1;
      if ([v6 count] <= v10 + 1)
      {
        +[NSDate date];
        v13 = v18 = v13;
      }

      else
      {
        v18 = [v6 objectAtIndexedSubscript:v10 + 1];
        v19 = [v18 startDate];

        v13 = v19;
      }

      v20 = [v6 objectAtIndexedSubscript:v10];
      v21 = [(SDUnlockMotionDetector *)self hasMotion:v20];

      if (v21)
      {
        [v13 timeIntervalSinceDate:v12];
        v11 = (v22 + v11);
        v23 = [(SDUnlockMotionDetector *)self logType];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413059;
          v29 = v12;
          v30 = 2112;
          v31 = v13;
          v32 = 1025;
          v33 = v11;
          v34 = 1024;
          v35 = v8;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Comparing motion dates (motion start: %@, end: %@, elapsed: %{private}d, need: %d)", buf, 0x22u);
        }
      }

      if (v11 > v8)
      {
        v24 = [(SDUnlockMotionDetector *)self logType];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Activity motion detected", buf, 2u);
        }

        if (![(SDUnlockMotionDetector *)self shouldUseAccelerometerMotion])
        {
          break;
        }
      }

      v10 = v17;
      if ([v6 count] <= v17)
      {
        goto LABEL_22;
      }
    }

    v25 = 1;
  }

  else
  {
    v13 = 0;
    v12 = 0;
LABEL_22:
    [(SDUnlockMotionDetector *)self setCheckedActivityData:1];
    v25 = 0;
  }

  [(SDUnlockMotionDetector *)self handleMotionDetected:v25];
}

- (void)handlePastPedometerData:(id)a3
{
  v4 = a3;
  v5 = [v4 numberOfSteps];
  v6 = [v5 intValue];

  v7 = [v4 numberOfPushes];
  v8 = [v7 intValue];

  if (v8 > v6)
  {
    v9 = [v4 numberOfPushes];
    v6 = [v9 intValue];
  }

  v10 = +[NSUserDefaults standardUserDefaults];
  v11 = [v10 integerForKey:@"phoneAutoUnlockWatchStepCountThreshold"];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = 10;
  }

  v13 = [(SDUnlockMotionDetector *)self logType];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 67109120;
    LODWORD(v18[0]) = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Step activity threshold is %d", &v17, 8u);
  }

  v14 = [(SDUnlockMotionDetector *)self logType];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138477827;
    v18[0] = v4;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "step count: %{private}@", &v17, 0xCu);
  }

  v15 = [(SDUnlockMotionDetector *)self logType];
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v6 < v12)
  {
    if (v16)
    {
      v17 = 67174913;
      LODWORD(v18[0]) = v6;
      WORD2(v18[0]) = 1024;
      *(v18 + 6) = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Not enough step data. Steps: %{private}d, threshold: %d", &v17, 0xEu);
    }

    [(SDUnlockMotionDetector *)self setCheckedStepData:1];
  }

  else
  {
    if (v16)
    {
      v17 = 67174657;
      LODWORD(v18[0]) = v6;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Step activity detected. Steps: %{private}d", &v17, 8u);
    }
  }

  [(SDUnlockMotionDetector *)self handleMotionDetected:v6 >= v12];
}

- (void)restartMotionTimer
{
  v3 = [(SDUnlockMotionDetector *)self logType];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Restarting motion timer", buf, 2u);
  }

  v4 = [(SDUnlockMotionDetector *)self motionTimer];

  if (!v4)
  {
    objc_initWeak(buf, self);
    v5 = SFMainQueue();
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_1000A9478;
    v13 = &unk_1008CDF68;
    v14 = self;
    objc_copyWeak(&v15, buf);
    v6 = sub_1001F0548(0, v5, &v10);
    [(SDUnlockMotionDetector *)self setMotionTimer:v6, v10, v11, v12, v13, v14];

    v7 = [(SDUnlockMotionDetector *)self motionTimer];
    dispatch_resume(v7);

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  v8 = [(SDUnlockMotionDetector *)self motionTimer];
  v9 = sub_1001F0530(1.0);
  sub_1001F05F0(v8, v9);
}

- (void)invalidateMotionTimer
{
  v3 = [(SDUnlockMotionDetector *)self logType];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating motion timer", v6, 2u);
  }

  v4 = [(SDUnlockMotionDetector *)self motionTimer];

  if (v4)
  {
    v5 = [(SDUnlockMotionDetector *)self motionTimer];
    dispatch_source_cancel(v5);

    [(SDUnlockMotionDetector *)self setMotionTimer:0];
  }
}

- ($1AB5FA073B851C12C2339EC22442E995)baseAcceleration
{
  x = self->_baseAcceleration.x;
  y = self->_baseAcceleration.y;
  z = self->_baseAcceleration.z;
  result.var2 = z;
  result.var1 = y;
  result.var0 = x;
  return result;
}

@end