@interface _DASEnergyUsageTracker
+ (BOOL)shouldTrackActivity:(id)activity;
+ (id)instanceWithReportingHandler:(id)handler;
+ (id)sharedInstance;
- (_DASEnergyUsageTracker)init;
- (double)accountedNewEnergy:(id)energy;
- (double)dailyBudget;
- (double)energyConsumed:(id)consumed;
- (double)energyConsumedFrom:(double)from;
- (id)bundleInformationWithNetworkQuality:(id)quality;
- (id)nameStringForActivity:(id)activity;
- (id)trackingBundlesWithParameters:(id)parameters;
- (void)energyConsumptionHandler:(id)handler;
- (void)initializePluginTrigger;
- (void)startTrackingActivity:(id)activity;
- (void)startTrackingActivityWithParameters:(id)parameters;
- (void)stopTrackingActivity:(id)activity;
- (void)stopTrackingActivityWithParameters:(id)parameters;
@end

@implementation _DASEnergyUsageTracker

- (_DASEnergyUsageTracker)init
{
  v20.receiver = self;
  v20.super_class = _DASEnergyUsageTracker;
  v2 = [(_DASEnergyUsageTracker *)&v20 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.duetactivityscheduler", "energybudgeting");
    log = v2->_log;
    v2->_log = v3;

    v5 = +[NSCountedSet set];
    startedActivities = v2->_startedActivities;
    v2->_startedActivities = v5;

    v7 = +[NSMutableSet set];
    startedDASActivities = v2->_startedDASActivities;
    v2->_startedDASActivities = v7;

    v2->_initialReading = 1;
    v9 = +[NSMutableDictionary dictionary];
    bundleToProcessesMap = v2->_bundleToProcessesMap;
    v2->_bundleToProcessesMap = v9;

    v11 = +[_CDClientContext userContext];
    context = v2->_context;
    v2->_context = v11;

    v13 = [PLDiscretionaryEnergyMonitor alloc];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10001C27C;
    v18[3] = &unk_1001B5880;
    v14 = v2;
    v19 = v14;
    v15 = [v13 initWithCompletionBlock:v18];
    energyMonitor = v14->_energyMonitor;
    v14->_energyMonitor = v15;

    [(_DASEnergyUsageTracker *)v14 initializePluginTrigger];
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_10020AE58 != -1)
  {
    sub_10011C988();
  }

  v3 = qword_10020AE60;

  return v3;
}

+ (id)instanceWithReportingHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[_DASEnergyUsageTracker sharedInstance];
  [v4 setHandler:handlerCopy];

  return v4;
}

+ (BOOL)shouldTrackActivity:(id)activity
{
  activityCopy = activity;
  v4 = +[_CDClientContext userContext];
  if ([_DASPhotosPolicy isActivity:activityCopy consideredNonDiscretionary:v4])
  {
    goto LABEL_10;
  }

  v5 = +[_CDContextQueries keyPathForPluginStatus];
  v6 = [v4 objectForKeyedSubscript:v5];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {
    goto LABEL_10;
  }

  schedulingPriority = [activityCopy schedulingPriority];
  if (schedulingPriority != _DASSchedulingPriorityUtility)
  {
    goto LABEL_7;
  }

  widgetID = [activityCopy widgetID];

  if (widgetID)
  {
    goto LABEL_10;
  }

  if (![_DASEnergyBudgetPolicy budgetIsPositive:v4])
  {
LABEL_7:
    launchReason = [activityCopy launchReason];
    v12 = [launchReason isEqualToString:_DASLaunchReasonBackgroundRemoteNotification];

    if (!v12)
    {
      goto LABEL_9;
    }

    v13 = activityCopy;
    objc_sync_enter(v13);
    policyResponseMetadata = [v13 policyResponseMetadata];
    v15 = [policyResponseMetadata objectForKeyedSubscript:@"Application Policy"];
    reason = [v15 reason];

    objc_sync_exit(v13);
    if ((reason & 2) == 0)
    {
LABEL_9:
      budgeted = [activityCopy budgeted];
      goto LABEL_11;
    }

LABEL_10:
    budgeted = 0;
    goto LABEL_11;
  }

  budgeted = 1;
LABEL_11:

  return budgeted;
}

- (void)energyConsumptionHandler:(id)handler
{
  [(_DASEnergyUsageTracker *)self energyConsumed:handler];
  if (v4 > 0.0)
  {
    v5 = v4;
    handler = [(_DASEnergyUsageTracker *)self handler];
    handler[2](v5);
  }
}

- (void)initializePluginTrigger
{
  v3 = +[_CDContextQueries keyPathForPluginStatus];
  context = self->_context;
  energyMonitor = self->_energyMonitor;
  v6 = +[_CDContextQueries keyPathForPluginStatus];
  v7 = [(_CDContext *)context objectForKeyedSubscript:v6];
  -[PLDiscretionaryEnergyMonitor reportChargingStatus:](energyMonitor, "reportChargingStatus:", [v7 BOOLValue]);

  v8 = [_CDContextualPredicate predicateForChangeAtKeyPath:v3];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001C6C0;
  v10[3] = &unk_1001B58C8;
  v10[4] = self;
  v9 = [_CDContextualChangeRegistration localWakingRegistrationWithIdentifier:@"com.apple.das.energytracker" contextualPredicate:v8 clientIdentifier:@"com.apple.dasd.contextstore-registration" callback:v10];

  [(_CDContext *)self->_context registerCallback:v9];
}

- (id)bundleInformationWithNetworkQuality:(id)quality
{
  qualityCopy = quality;
  v4 = +[_CDClientContext userContext];
  if ([_CDNetworkContext cellInterfaceUp:v4])
  {
    v5 = [_CDNetworkContext cellInterfaceClass:v4]- 1;
    if (v5 > 2)
    {
      v6 = @"Unknown";
    }

    else
    {
      v6 = *(&off_1001B58E8 + v5);
    }

    [qualityCopy setObject:v6 forKeyedSubscript:@"cell"];
    v7 = [_CDNetworkContext cellQuality:v4];
  }

  else
  {
    [qualityCopy setObject:@"Wifi" forKeyedSubscript:@"wifi"];
    v7 = [_CDNetworkContext wifiQuality:v4];
  }

  if (v7 > 49)
  {
    if (v7 != 100)
    {
      if (v7 == 50)
      {
        v8 = @"Fair";
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    v8 = @"Best";
  }

  else
  {
    if (v7)
    {
      if (v7 == 20)
      {
        v8 = @"Poor";
        goto LABEL_17;
      }

LABEL_14:
      v8 = @"Unknown";
      goto LABEL_17;
    }

    v8 = @"None";
  }

LABEL_17:
  [qualityCopy setObject:v8 forKeyedSubscript:@"quality"];

  return qualityCopy;
}

- (double)energyConsumed:(id)consumed
{
  consumedCopy = consumed;
  v5 = [consumedCopy objectForKeyedSubscript:@"BLMUUIDForDuet"];
  v6 = [consumedCopy objectForKeyedSubscript:@"BLMEnergyForDuet"];
  v7 = [consumedCopy objectForKeyedSubscript:@"totalAccumulatedEnergy"];
  v8 = [consumedCopy objectForKeyedSubscript:@"BLMEnergyResponseTimestamp"];

  if (consumedCopy && v6 && v5 && v7)
  {
    pllReportID = self->_pllReportID;
    if (!pllReportID || ([(NSString *)pllReportID isEqual:v5]& 1) == 0)
    {
      self->_discEnergyConsumed = 0.0;
      objc_storeStrong(&self->_pllReportID, v5);
    }

    [(_DASEnergyUsageTracker *)self accountedNewEnergy:v6];
    v11 = v10;
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v13 = log;
      v14 = [NSNumber numberWithDouble:v11];
      [v8 timeIntervalSinceNow];
      v16 = [NSNumber numberWithDouble:v15 / -60.0];
      v21 = 138412802;
      v22 = v7;
      v23 = 2112;
      v24 = v14;
      v25 = 2112;
      v26 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "PowerLog Accounting (incl fast accounting): %@, Slow Accounting is at %@, last accounted %@ minutes ago", &v21, 0x20u);
    }

    [v7 doubleValue];
    [(_DASEnergyUsageTracker *)self energyConsumedFrom:?];
    v18 = v17;
  }

  else
  {
    v18 = 0.0;
    if (self->_initialReading)
    {
      v19 = self->_log;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "PowerLog Update: Received empty report for initial reading. Will try again later", &v21, 2u);
      }
    }
  }

  return v18;
}

- (double)energyConsumedFrom:(double)from
{
  if (self->_initialReading)
  {
    self->_discEnergyConsumed = from;
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      discEnergyConsumed = self->_discEnergyConsumed;
      v10 = 134217984;
      v11 = discEnergyConsumed;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "PowerLog: Initial Discretionary Energy Readings: %lf", &v10, 0xCu);
    }

    self->_initialReading = 0;
    return 0.0;
  }

  else
  {
    v8 = from - self->_discEnergyConsumed;
    result = 0.0;
    if (v8 >= 0.0)
    {
      self->_discEnergyConsumed = from;
      v9 = self->_log;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 134217984;
        v11 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PowerLog Update: Discretionary energy consumed since last read: %.2f", &v10, 0xCu);
      }

      return v8;
    }
  }

  return result;
}

- (double)dailyBudget
{
  +[PLDiscretionaryEnergyMonitor getDiscretionaryEnergyBudget];
  log = self->_log;
  if (v3 <= 0.0)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10011C99C(log);
    }

    log = self->_log;
    v5 = 250.0;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = 0x406F400000000000;
      v6 = "energy daily budget is %f";
      goto LABEL_8;
    }
  }

  else
  {
    v5 = v3;
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = *&v5;
      v6 = "PLEnergyMonitor energy daily budget is %f";
LABEL_8:
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, v6, &v8, 0xCu);
    }
  }

  return v5;
}

- (id)nameStringForActivity:(id)activity
{
  activityCopy = activity;
  name = [activityCopy name];
  if (name)
  {
    uuid = [activityCopy uuid];

    if (uuid)
    {
      name2 = [activityCopy name];
      uuid2 = [activityCopy uuid];
      uUIDString = [uuid2 UUIDString];
      v9 = [uUIDString substringToIndex:6];
      name = [NSString stringWithFormat:@"%@:%@", name2, v9];
    }

    else
    {
      name = 0;
    }
  }

  return name;
}

- (void)startTrackingActivity:(id)activity
{
  activityCopy = activity;
  if ([_DASEnergyUsageTracker shouldTrackActivity:activityCopy])
  {
    v5 = [_DASSystemBudgetManager identifierWithActivity:activityCopy];
    v6 = [_DASSystemBudgetManager involvedProcessesForActivity:activityCopy withIdentifier:v5];
    if ([v6 count])
    {
      v7 = [(_DASEnergyUsageTracker *)self nameStringForActivity:activityCopy];
      if (v7)
      {
        v8 = self->_startedDASActivities;
        objc_sync_enter(v8);
        [(NSMutableSet *)self->_startedDASActivities addObject:activityCopy];
        objc_sync_exit(v8);

        v9 = +[NSMutableDictionary dictionary];
        [v9 setObject:v6 forKeyedSubscript:@"involvedIdentifiers"];
        if ([activityCopy requiresNetwork])
        {
          [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:@"requiresNetwork"];
          v10 = [(_DASEnergyUsageTracker *)self bundleInformationWithNetworkQuality:v9];

          v9 = v10;
        }

        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          v12 = log;
          bundleId = [activityCopy bundleId];
          relatedApplications = [activityCopy relatedApplications];
          involvedProcesses = [activityCopy involvedProcesses];
          v30 = 138413314;
          v31 = v7;
          v32 = 2112;
          v33 = bundleId;
          v34 = 2112;
          v35 = relatedApplications;
          v36 = 2112;
          v37 = involvedProcesses;
          v38 = 2112;
          v39 = v9;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Report to PowerLog start tracking activity (from daemon) %@ with bundle name %@, relatedApplications %@, and involvedProcesses %@ with info %@", &v30, 0x34u);
        }

        [(PLDiscretionaryEnergyMonitor *)self->_energyMonitor reportStartEvent:v7 withInfo:v9];
      }

      else
      {
        v23 = self->_log;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_10011C9E0(activityCopy, v23, v24, v25, v26, v27, v28, v29);
        }
      }
    }

    else
    {
      v16 = self->_log;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10011CA4C(activityCopy, v16, v17, v18, v19, v20, v21, v22);
      }
    }
  }
}

- (void)stopTrackingActivity:(id)activity
{
  activityCopy = activity;
  v26 = [(_DASEnergyUsageTracker *)self nameStringForActivity:activityCopy];
  if (v26)
  {
    obj = self->_startedDASActivities;
    objc_sync_enter(obj);
    v5 = [(NSMutableSet *)self->_startedDASActivities mutableCopy];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (v7)
    {
      v8 = *v28;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v28 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v27 + 1) + 8 * i);
          uuid = [activityCopy uuid];
          uuid2 = [v10 uuid];
          v13 = [uuid isEqual:uuid2];

          if (v13)
          {
            [(NSMutableSet *)self->_startedDASActivities removeObject:v10];

            objc_sync_exit(obj);
            v14 = +[NSMutableDictionary dictionary];
            if ([activityCopy requiresNetwork])
            {
              [v14 setObject:&__kCFBooleanTrue forKeyedSubscript:@"requiresNetwork"];
            }

            log = self->_log;
            if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
            {
              v16 = log;
              bundleId = [activityCopy bundleId];
              *buf = 138412802;
              v32 = v26;
              v33 = 2112;
              v34 = bundleId;
              v35 = 2112;
              v36 = v14;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Report to PowerLog stop tracking activity (from daemon) %@ with bundle name %@ and info %@", buf, 0x20u);
            }

            [(PLDiscretionaryEnergyMonitor *)self->_energyMonitor reportStopEvent:v26 withInfo:v14];

            goto LABEL_18;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v27 objects:v37 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    objc_sync_exit(obj);
  }

  else
  {
    v18 = self->_log;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10011CAB8(activityCopy, v18, v19, v20, v21, v22, v23, v24);
    }
  }

LABEL_18:
}

- (double)accountedNewEnergy:(id)energy
{
  energyCopy = energy;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = [energyCopy countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (!v4)
  {
    v10 = 0.0;
    goto LABEL_23;
  }

  v6 = v4;
  v7 = *v28;
  v8 = 0.0;
  v9 = @"bundleID";
  *&v5 = 134217984;
  v25 = v5;
  v10 = 0.0;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      v12 = v9;
      if (*v28 != v7)
      {
        objc_enumerationMutation(energyCopy);
      }

      v13 = *(*(&v27 + 1) + 8 * i);
      v14 = [v13 objectForKeyedSubscript:{@"updateType", v25}];
      unsignedCharValue = [v14 unsignedCharValue];

      v16 = [v13 objectForKeyedSubscript:@"energy"];
      [v16 doubleValue];
      v18 = v17;

      if (v18 <= 0.0)
      {
        goto LABEL_17;
      }

      v9 = v12;
      if (unsignedCharValue != 2)
      {
        if (unsignedCharValue != 1)
        {
          continue;
        }

        v10 = v10 + v18;
        v19 = [v13 objectForKeyedSubscript:v12];
        if ([v19 compare:@"cloudphotod"])
        {
          v20 = [v13 objectForKeyedSubscript:v12];
          v21 = [v20 compare:@"assetsd"];

          if (!v21)
          {
LABEL_16:
            v8 = v8 + v18;
          }

LABEL_17:
          v9 = v12;
          continue;
        }

        goto LABEL_16;
      }

      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v25;
        v32 = v18;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "PowerLog Update: Complications energy %.2f", buf, 0xCu);
      }

      v10 = v10 + v18;
    }

    v6 = [energyCopy countByEnumeratingWithState:&v27 objects:v33 count:16];
  }

  while (v6);
  if (v8 > 2.22507386e-308)
  {
    LODWORD(v23) = llround(v8);
    [_DASMetricRecorder setValue:v23 forKey:@"com.apple.duet.energy.hyperion.approximatetotal"];
  }

LABEL_23:

  return v10;
}

- (id)trackingBundlesWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v4 = [parametersCopy objectForKeyedSubscript:kDASBudgetKeyBundleIDs];
  v5 = [parametersCopy objectForKeyedSubscript:kDASBudgetKeyPIDs];
  v6 = [parametersCopy objectForKeyedSubscript:kDASBudgetKeyProcessNames];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = v6;
    v7 = [NSArray arrayWithObjects:&v25 count:1];

    v6 = v7;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v6 = 0;
    }
  }

  if ([v4 count])
  {
    v8 = v4;
LABEL_9:
    v9 = v8;
    goto LABEL_10;
  }

  if ([v6 count])
  {
    v8 = v6;
    goto LABEL_9;
  }

  if ([v5 count])
  {
    v19 = v4;
    v9 = +[NSMutableArray array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v18 = v5;
    v11 = v5;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          v17 = +[_DASUtils processNameFromPID:](_DASUtils, "processNameFromPID:", [v16 intValue]);
          if (v17)
          {
            [v9 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }

    v5 = v18;
    v4 = v19;
  }

  else
  {
    v9 = 0;
  }

LABEL_10:

  return v9;
}

- (void)startTrackingActivityWithParameters:(id)parameters
{
  parametersCopy = parameters;
  context = self->_context;
  v6 = +[_CDContextQueries keyPathForPluginStatus];
  v7 = [(_CDContext *)context objectForKeyedSubscript:v6];
  bOOLValue = [v7 BOOLValue];

  if ((bOOLValue & 1) == 0 && [_DASEnergyBudgetPolicy budgetIsPositive:self->_context])
  {
    v9 = [(_DASEnergyUsageTracker *)self trackingBundlesWithParameters:parametersCopy];
    if (v9)
    {
      v10 = self->_startedActivities;
      objc_sync_enter(v10);
      startedActivities = self->_startedActivities;
      v12 = [v9 objectAtIndexedSubscript:0];
      [(NSCountedSet *)startedActivities addObject:v12];

      objc_sync_exit(v10);
      v13 = [NSSet setWithArray:v9];
      v14 = +[NSMutableDictionary dictionary];
      [v14 setObject:v13 forKeyedSubscript:@"involvedIdentifiers"];
      [v14 setObject:&__kCFBooleanTrue forKeyedSubscript:@"selfBudgeted"];
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        v16 = log;
        v17 = [v9 objectAtIndexedSubscript:0];
        v20 = 138412546;
        v21 = v17;
        v22 = 2112;
        v23 = parametersCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Report to PowerLog start tracking activity %@ from parameters %@", &v20, 0x16u);
      }

      energyMonitor = self->_energyMonitor;
      v19 = [v9 objectAtIndexedSubscript:0];
      [(PLDiscretionaryEnergyMonitor *)energyMonitor reportStartEvent:v19 withInfo:v14];
    }
  }
}

- (void)stopTrackingActivityWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = [(_DASEnergyUsageTracker *)self trackingBundlesWithParameters:parametersCopy];
  if (v5)
  {
    v6 = self->_startedActivities;
    objc_sync_enter(v6);
    startedActivities = self->_startedActivities;
    v8 = [v5 objectAtIndexedSubscript:0];
    LODWORD(startedActivities) = [(NSCountedSet *)startedActivities containsObject:v8];

    if (startedActivities)
    {
      v9 = self->_startedActivities;
      v10 = [v5 objectAtIndexedSubscript:0];
      [(NSCountedSet *)v9 removeObject:v10];

      objc_sync_exit(v6);
      v11 = +[NSMutableDictionary dictionary];
      [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:@"selfBudgeted"];
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412546;
        v16 = v5;
        v17 = 2112;
        v18 = parametersCopy;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Report to PowerLog stop tracking activity %@ from parameters %@", &v15, 0x16u);
      }

      energyMonitor = self->_energyMonitor;
      v14 = [v5 objectAtIndexedSubscript:0];
      [(PLDiscretionaryEnergyMonitor *)energyMonitor reportStopEvent:v14 withInfo:v11];
    }

    else
    {
      objc_sync_exit(v6);
    }
  }
}

@end