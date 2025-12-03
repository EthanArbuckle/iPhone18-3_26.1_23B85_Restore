@interface _DASRequiresRestartPolicy
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)activity;
- (BOOL)cacheSleepPeriod:(id)period end:(id)end period1:(id *)period1 period2:(id *)period2;
- (BOOL)shouldIgnoreTrigger:(id)trigger withState:(id)state;
- (_DASRequiresRestartPolicy)init;
- (id)blockReasons:(id)reasons;
- (id)defaultDeviceRestartDateRangeWithDate:(id)date;
- (id)initializeTriggers;
- (id)responseForActivity:(id)activity withState:(id)state;
- (void)getDeviceRestartForecast;
- (void)reportAnalyticsWithStartDate:(id)date isDefaultTime:(BOOL)time;
@end

@implementation _DASRequiresRestartPolicy

- (id)initializeTriggers
{
  v13 = [_CDContextualPredicate predicateForChangeAtKeyPath:self->_deviceAssertionsHeld];
  v11 = [_CDContextualPredicate predicateForChangeAtKeyPath:self->_inUseStatus];
  v12 = [_CDContextualPredicate predicateForChangeAtKeyPath:self->_nextWakeRequest];
  v3 = +[_CDContextQueries keyPathForBacklightOnStatus];
  v10 = [_CDContextualPredicate predicateForChangeAtKeyPath:v3];

  v20[0] = @"identifier";
  v20[1] = @"predicate";
  v21[0] = @"com.apple.duetactivityscheduler.restartpolicy.assertionsheld";
  v21[1] = v13;
  v20[2] = @"deviceSet";
  v20[3] = @"mustWake";
  v21[2] = &off_1001C9B08;
  v21[3] = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:4];
  v22[0] = v4;
  v18[0] = @"identifier";
  v18[1] = @"predicate";
  v19[0] = @"com.apple.duetactivityscheduler.restartpolicy.inusestatus";
  v19[1] = v11;
  v18[2] = @"deviceSet";
  v18[3] = @"mustWake";
  v19[2] = &off_1001C9B08;
  v19[3] = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:4];
  v22[1] = v5;
  v16[0] = @"identifier";
  v16[1] = @"predicate";
  v17[0] = @"com.apple.das.restartpolicy.backlightOn";
  v17[1] = v10;
  v16[2] = @"deviceSet";
  v16[3] = @"mustWake";
  v17[2] = &off_1001C9B08;
  v17[3] = &__kCFBooleanFalse;
  v6 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:4];
  v22[2] = v6;
  v14[0] = @"identifier";
  v14[1] = @"predicate";
  v15[0] = @"com.apple.duetactivityscheduler.restartpolicy.wakerequest";
  v15[1] = v12;
  v14[2] = @"deviceSet";
  v14[3] = @"mustWake";
  v15[2] = &off_1001C9B08;
  v15[3] = &__kCFBooleanTrue;
  v7 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];
  v22[3] = v7;
  v8 = [NSArray arrayWithObjects:v22 count:4];

  return v8;
}

- (_DASRequiresRestartPolicy)init
{
  v16.receiver = self;
  v16.super_class = _DASRequiresRestartPolicy;
  v2 = [(_DASRequiresRestartPolicy *)&v16 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"Restart Required Activities Policy";

    v5 = +[_CDContextQueries keyPathForDeviceAssertionsHeldStatus];
    deviceAssertionsHeld = v3->_deviceAssertionsHeld;
    v3->_deviceAssertionsHeld = v5;

    v7 = +[_CDContextQueries keyPathForInUseStatus];
    inUseStatus = v3->_inUseStatus;
    v3->_inUseStatus = v7;

    v9 = +[_CDContextQueries keyPathForNextUserVisibleWakeDate];
    nextWakeRequest = v3->_nextWakeRequest;
    v3->_nextWakeRequest = v9;

    *&v3->_minDurationAfterLastUserInteraction = xmmword_100158D90;
    v11 = +[NSDate distantPast];
    lastCacheDate = v3->_lastCacheDate;
    v3->_lastCacheDate = v11;

    [(_DASRequiresRestartPolicy *)v3 getDeviceRestartForecast];
    initializeTriggers = [(_DASRequiresRestartPolicy *)v3 initializeTriggers];
    triggers = v3->_triggers;
    v3->_triggers = initializeTriggers;
  }

  return v3;
}

+ (id)policyInstance
{
  if (qword_10020B3F0 != -1)
  {
    sub_100120E3C();
  }

  v3 = qword_10020B3F8;

  return v3;
}

- (BOOL)shouldIgnoreTrigger:(id)trigger withState:(id)state
{
  triggerCopy = trigger;
  stateCopy = state;
  if ([triggerCopy isEqualToString:@"com.apple.duetactivityscheduler.restartpolicy.assertionsheld"])
  {
    deviceAssertionsHeld = self->_deviceAssertionsHeld;
  }

  else
  {
    if (![triggerCopy isEqualToString:@"com.apple.duetactivityscheduler.restartpolicy.inusestatus"])
    {
      bOOLValue = [triggerCopy isEqualToString:@"com.apple.das.restartpolicy.backlightOn"];
      goto LABEL_7;
    }

    deviceAssertionsHeld = self->_inUseStatus;
  }

  v9 = [stateCopy objectForKeyedSubscript:deviceAssertionsHeld];
  bOOLValue = [v9 BOOLValue];

LABEL_7:
  return bOOLValue;
}

- (BOOL)appliesToActivity:(id)activity
{
  activityCopy = activity;
  if ([activityCopy triggersRestart])
  {
    requiresSignificantUserInactivity = 1;
  }

  else
  {
    requiresSignificantUserInactivity = [activityCopy requiresSignificantUserInactivity];
  }

  return requiresSignificantUserInactivity;
}

- (BOOL)cacheSleepPeriod:(id)period end:(id)end period1:(id *)period1 period2:(id *)period2
{
  periodCopy = period;
  endCopy = end;
  v11 = +[NSDate date];
  v12 = 0;
  if (periodCopy && endCopy)
  {
    if ([periodCopy compare:endCopy] == -1 && objc_msgSend(periodCopy, "compare:", endCopy) == -1 && objc_msgSend(v11, "compare:", endCopy) == -1)
    {
      if (*period2)
      {
        endDate = [*period2 endDate];
        v15 = [v11 compare:endDate];

        if (v15 == 1)
        {
          v16 = *period2;
          *period2 = 0;
        }
      }

      if (!*period1 || ([*period1 endDate], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v11, "compare:", v17), v17, v18 == 1))
      {
        objc_storeStrong(period1, *period2);
        v19 = *period2;
        *period2 = 0;
      }

      if (!*period2)
      {
        v20 = [_CDDateRange periodWithStart:periodCopy end:endCopy];
        v21 = *period2;
        *period2 = v20;
      }

      if (!*period1)
      {
        objc_storeStrong(period1, *period2);
        v22 = *period2;
        *period2 = 0;
      }

      v23 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *period1;
        v25 = 138412290;
        v26 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Using restart times of %@", &v25, 0xCu);
      }

      v12 = 1;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)defaultDeviceRestartDateRangeWithDate:(id)date
{
  dateCopy = date;
  v4 = +[NSCalendar currentCalendar];
  v5 = [v4 components:30 fromDate:dateCopy];
  [v5 setHour:4];
  [v5 setMinute:0];
  [v5 setSecond:0];
  v6 = [v4 dateFromComponents:v5];
  [v6 timeIntervalSinceDate:dateCopy];
  v8 = v7;

  if (v8 < 0.0)
  {
    v9 = [v6 dateByAddingTimeInterval:86400.0];

    v6 = v9;
  }

  v10 = [v6 dateByAddingTimeInterval:arc4random_uniform(0xE10u) + -8100.0];
  v11 = [_CDDateRange periodWithStart:v10 end:v6];

  return v11;
}

- (void)reportAnalyticsWithStartDate:(id)date isDefaultTime:(BOOL)time
{
  dateCopy = date;
  v4 = dateCopy;
  AnalyticsSendEventLazy();
}

- (void)getDeviceRestartForecast
{
  v3 = +[NSDate date];
  lastCacheDate = [(_DASRequiresRestartPolicy *)self lastCacheDate];
  [v3 timeIntervalSinceDate:lastCacheDate];
  v6 = v5;

  if (v6 >= 14400.0)
  {
    v7 = os_transaction_create();
    v8 = objc_autoreleasePoolPush();
    v9 = objc_alloc_init(_CDSleepForAutoSu);
    getUnlockAndSoftwareUpdateTimes = [v9 getUnlockAndSoftwareUpdateTimes];

    objc_autoreleasePoolPop(v8);
    if (getUnlockAndSoftwareUpdateTimes)
    {
      v11 = [getUnlockAndSoftwareUpdateTimes objectForKeyedSubscript:kCDSleepAutoSuSuStartKey];
      startDate = [v11 dateByAddingTimeInterval:arc4random_uniform(0x384u)];

      v13 = [getUnlockAndSoftwareUpdateTimes objectForKeyedSubscript:kCDSleepAutoSuExpirationTimeKey];
      [(_DASRequiresRestartPolicy *)self reportAnalyticsWithStartDate:startDate isDefaultTime:0];
      if ([(_DASRequiresRestartPolicy *)self cacheSleepPeriod:startDate end:v13 period1:&self->_deviceRestartPeriod1 period2:&self->_deviceRestartPeriod2])
      {
        [(_DASRequiresRestartPolicy *)self setLastCacheDate:v3];
      }
    }

    else
    {
      v14 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100120E50(v14);
      }

      v15 = [(_DASRequiresRestartPolicy *)self defaultDeviceRestartDateRangeWithDate:v3];
      deviceRestartPeriod1 = self->_deviceRestartPeriod1;
      self->_deviceRestartPeriod1 = v15;

      [(_DASRequiresRestartPolicy *)self setLastCacheDate:v3];
      v17 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = self->_deviceRestartPeriod1;
        v19 = 138412290;
        v20 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Using restart times of %@", &v19, 0xCu);
      }

      startDate = [(_CDDateRange *)self->_deviceRestartPeriod1 startDate];
      [(_DASRequiresRestartPolicy *)self reportAnalyticsWithStartDate:startDate isDefaultTime:1];
    }
  }
}

- (id)responseForActivity:(id)activity withState:(id)state
{
  activityCopy = activity;
  stateCopy = state;
  [(_DASRequiresRestartPolicy *)self getDeviceRestartForecast];
  v8 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:self->_policyName];
  v9 = +[NSDate date];
  if ([activityCopy isSoftwareUpdateActivity])
  {
    goto LABEL_3;
  }

  name = [activityCopy name];
  v11 = [name isEqualToString:@"com.apple.dasd.dataCollectiontask.dummyAutoSU"];

  if (v11)
  {
    goto LABEL_3;
  }

  if (([(_CDDateRange *)self->_deviceRestartPeriod1 contains:v9]& 1) != 0)
  {
    v27 = +[_DASDaemon sharedInstance];
    allPendingRestartTasks = [v27 allPendingRestartTasks];

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v29 = allPendingRestartTasks;
    v30 = [v29 countByEnumeratingWithState:&v54 objects:v58 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v55;
      while (2)
      {
        for (i = 0; i != v31; i = i + 1)
        {
          if (*v55 != v32)
          {
            objc_enumerationMutation(v29);
          }

          if ([*(*(&v54 + 1) + 8 * i) isSoftwareUpdateActivity])
          {
            v44 = [NSPredicate predicateWithFormat:@"PendingSoftwareUpdate == 1"];
            [(_DASPolicyResponseRationale *)v8 addRationaleWithCondition:v44];

            v43 = [_DASPolicyResponse policyResponseWithDecision:33 validityDuration:v8 rationale:0x384uLL];

            goto LABEL_66;
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v54 objects:v58 count:16];
        if (v31)
        {
          continue;
        }

        break;
      }
    }

LABEL_3:
    v12 = [stateCopy objectForKeyedSubscript:self->_nextWakeRequest];
    v13 = +[_CDContextQueries keyPathForBacklightOnStatus];
    v14 = [stateCopy objectForKeyedSubscript:v13];

    v53 = [stateCopy objectForKeyedSubscript:self->_deviceAssertionsHeld];
    v15 = [stateCopy objectForKeyedSubscript:self->_inUseStatus];
    v16 = +[_CDContextQueries keyPathForLastUseDate];
    v17 = [stateCopy objectForKeyedSubscript:v16];

    if (v12)
    {
      [v12 timeIntervalSinceDate:v9];
      v50 = v18 < 3600.0;
      if (v14)
      {
LABEL_5:
        bOOLValue = [v14 BOOLValue];
        goto LABEL_8;
      }
    }

    else
    {
      v50 = 0;
      if (v14)
      {
        goto LABEL_5;
      }
    }

    bOOLValue = 0;
LABEL_8:
    v51 = v14;
    if (v53)
    {
      bOOLValue2 = [v53 BOOLValue];
      if (v15)
      {
LABEL_10:
        bOOLValue3 = [v15 BOOLValue];
        goto LABEL_13;
      }
    }

    else
    {
      bOOLValue2 = 0;
      if (v15)
      {
        goto LABEL_10;
      }
    }

    bOOLValue3 = 0;
LABEL_13:
    if (v17)
    {
      [v9 timeIntervalSinceDate:v17];
      v23 = v22;
    }

    else
    {
      v23 = 900.0;
    }

    v52 = v9;
    if (([activityCopy triggersRestart] & bOOLValue2) == 1)
    {
      [(_DASPolicyResponseRationale *)v8 addRationaleForCondition:@"Is any Assertion Held?" withRequiredValue:0.0 withCurrentValue:1.0];
      [(_DASPolicyResponseRationale *)v8 setResponseOptions:[(_DASPolicyResponseRationale *)v8 responseOptions]| 0x80];
      v24 = 33;
    }

    else
    {
      v24 = 0;
    }

    unsignedLongLongValue = [v15 unsignedLongLongValue];
    if ((unsignedLongLongValue & 0x40) != 0)
    {
      v26 = 0;
    }

    else
    {
      v26 = bOOLValue;
    }

    if (v26 == 1)
    {
      [(_DASPolicyResponseRationale *)v8 addRationaleForCondition:@"Backlight On" withRequiredValue:0.0 withCurrentValue:1.0];
      [(_DASPolicyResponseRationale *)v8 setResponseOptions:[(_DASPolicyResponseRationale *)v8 responseOptions]| 2];
      v24 = 33;
    }

    if (!bOOLValue3)
    {
      goto LABEL_54;
    }

    [(_DASPolicyResponseRationale *)v8 addRationaleForCondition:@"Is User active?" withRequiredValue:0.0 withCurrentValue:1.0];
    if (unsignedLongLongValue)
    {
      v24 = 33;
      v34 = 4;
    }

    else if ((unsignedLongLongValue & 4) != 0)
    {
      v24 = 33;
      v34 = 8;
    }

    else if ((unsignedLongLongValue & 8) != 0)
    {
      v24 = 33;
      v34 = 16;
    }

    else if ((unsignedLongLongValue & 0x10) != 0)
    {
      v24 = 33;
      v34 = 32;
    }

    else if ((unsignedLongLongValue & 0x20) != 0)
    {
      v24 = 33;
      v34 = 64;
    }

    else
    {
      if ((unsignedLongLongValue & 0x40) == 0)
      {
        v24 = 33;
LABEL_54:
        if (v50)
        {
          [v12 timeIntervalSinceDate:v52];
          [(_DASPolicyResponseRationale *)v8 addRationaleForCondition:@"Minimum seconds without any scheduled wake" withRequiredValue:3600.0 withCurrentValue:v45];
          [(_DASPolicyResponseRationale *)v8 setResponseOptions:[(_DASPolicyResponseRationale *)v8 responseOptions]| 1];
          v24 = 33;
        }

        if (v23 < 900.0)
        {
          [_DASPolicyResponseRationale addRationaleForCondition:v8 withRequiredValue:"addRationaleForCondition:withRequiredValue:withCurrentValue:" withCurrentValue:@"Minimum seconds since user was last active"];
          [(_DASPolicyResponseRationale *)v8 setResponseOptions:[(_DASPolicyResponseRationale *)v8 responseOptions]| 0x100];
          v24 = 33;
        }

        if ([activityCopy triggersRestart])
        {
          if (+[_DASConfig requiresStrictDarkBoot])
          {
            if (([activityCopy isSoftwareUpdateActivity] & 1) == 0)
            {
              name2 = [activityCopy name];
              v47 = [name2 isEqualToString:@"com.apple.dasd.dataCollectiontask.dummyAutoSU"];

              if ((v47 & 1) == 0)
              {
                v48 = +[_DASBacklightStateMonitor sharedInstance];
                if (([v48 isBacklightOff] & 1) == 0)
                {
                  [(_DASPolicyResponseRationale *)v8 addRationaleForCondition:@"Backlight On" withRequiredValue:0.0 withCurrentValue:1.0];
                  [(_DASPolicyResponseRationale *)v8 setResponseOptions:[(_DASPolicyResponseRationale *)v8 responseOptions]| 2];
                  v24 = 33;
                }
              }
            }
          }
        }

        v43 = [_DASPolicyResponse policyResponseWithDecision:v24 validityDuration:v8 rationale:0x384uLL];

        v9 = v52;
        goto LABEL_66;
      }

      [(_DASPolicyResponseRationale *)v8 addRationaleForCondition:@"Is device on night stand?" withRequiredValue:0.0 withCurrentValue:0.0];
      v24 = 0;
      v34 = 512;
    }

    [(_DASPolicyResponseRationale *)v8 setResponseOptions:[(_DASPolicyResponseRationale *)v8 responseOptions]| v34];
    goto LABEL_54;
  }

  v35 = [NSPredicate predicateWithFormat:@"DeviceRestartPeriodNotInRange == 1"];
  [(_DASPolicyResponseRationale *)v8 addRationaleWithCondition:v35];

  deviceRestartPeriod1 = self->_deviceRestartPeriod1;
  if (deviceRestartPeriod1)
  {
    startDate = [(_CDDateRange *)deviceRestartPeriod1 startDate];
    [activityCopy setStartAfter:startDate];

    startBefore = [activityCopy startBefore];
    startAfter = [activityCopy startAfter];
    [startBefore timeIntervalSinceDate:startAfter];
    v41 = v40;

    if (v41 < 0.0)
    {
      endDate = [(_CDDateRange *)self->_deviceRestartPeriod1 endDate];
      [activityCopy setStartBefore:endDate];
    }
  }

  v43 = [_DASPolicyResponse policyResponseWithDecision:33 validityDuration:v8 rationale:0x384uLL];
LABEL_66:

  return v43;
}

- (id)blockReasons:(id)reasons
{
  reasonsCopy = reasons;
  v5 = +[NSMutableArray array];
  rationale = [reasonsCopy rationale];
  responseOptions = [rationale responseOptions];

  if (responseOptions)
  {
    v8 = [NSString stringWithFormat:@"%@::WakeScheduled", self->_policyName];
    [v5 addObject:v8];
  }

  rationale2 = [reasonsCopy rationale];
  responseOptions2 = [rationale2 responseOptions];

  if ((responseOptions2 & 2) != 0)
  {
    v11 = [NSString stringWithFormat:@"%@::BacklightOn", self->_policyName];
    [v5 addObject:v11];
  }

  rationale3 = [reasonsCopy rationale];
  responseOptions3 = [rationale3 responseOptions];

  if ((responseOptions3 & 4) != 0)
  {
    v14 = [NSString stringWithFormat:@"%@::UserPresentActive", self->_policyName];
    [v5 addObject:v14];
  }

  rationale4 = [reasonsCopy rationale];
  responseOptions4 = [rationale4 responseOptions];

  if ((responseOptions4 & 8) != 0)
  {
    v17 = [NSString stringWithFormat:@"%@::UserPresentPassiveWithDisplay", self->_policyName];
    [v5 addObject:v17];
  }

  rationale5 = [reasonsCopy rationale];
  responseOptions5 = [rationale5 responseOptions];

  if ((responseOptions5 & 0x10) != 0)
  {
    v20 = [NSString stringWithFormat:@"%@::UserPresentPassiveWithoutDisplay", self->_policyName];
    [v5 addObject:v20];
  }

  rationale6 = [reasonsCopy rationale];
  responseOptions6 = [rationale6 responseOptions];

  if ((responseOptions6 & 0x20) != 0)
  {
    v23 = [NSString stringWithFormat:@"%@::UserRemoteClientActive", self->_policyName];
    [v5 addObject:v23];
  }

  rationale7 = [reasonsCopy rationale];
  responseOptions7 = [rationale7 responseOptions];

  if ((responseOptions7 & 0x40) != 0)
  {
    v26 = [NSString stringWithFormat:@"%@::UserNotificationActive", self->_policyName];
    [v5 addObject:v26];
  }

  rationale8 = [reasonsCopy rationale];
  responseOptions8 = [rationale8 responseOptions];

  if ((responseOptions8 & 0x80) != 0)
  {
    v29 = [NSString stringWithFormat:@"%@::AssertionsHeld", self->_policyName];
    [v5 addObject:v29];
  }

  rationale9 = [reasonsCopy rationale];
  responseOptions9 = [rationale9 responseOptions];

  if ((responseOptions9 & 0x100) != 0)
  {
    v32 = [NSString stringWithFormat:@"%@::UserActiveRecently", self->_policyName];
    [v5 addObject:v32];
  }

  return v5;
}

@end