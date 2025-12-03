@interface _DASIntensityValidator
+ (id)sharedInstance;
- (BOOL)isActivityIndeedIntensive:(id)intensive;
- (BOOL)isActivityProfileSufficient:(id)sufficient;
- (BOOL)isRunTimeAlwaysVeryShortForActivity:(id)activity;
- (BOOL)mayCauseThermalPressureWithActivity:(id)activity;
- (_DASIntensityValidator)init;
- (id)loadDeviceConditionState:(id)state;
- (void)printProfilerStats;
- (void)validateIntensityForActivity:(id)activity;
@end

@implementation _DASIntensityValidator

- (void)printProfilerStats
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v19 = selfCopy;
  [(NSMutableDictionary *)selfCopy->_activityToProfile count];
  ++selfCopy->_numTotalProfiledRuns;
  if (os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100124AB8(&selfCopy->_numTotalProfiledRuns);
  }

  if (os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100124B30();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = selfCopy->_activityToProfile;
  v3 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v3)
  {
    v22 = 0;
    v21 = 0;
    v4 = 0;
    v5 = 0;
    v18 = *v24;
    do
    {
      v6 = 0;
      v20 = v3;
      do
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [(NSMutableDictionary *)v19->_activityToProfile objectForKey:*(*(&v23 + 1) + 8 * v6)];
        v8 = [v7 objectForKey:@"isVeryShort"];
        v9 = [v8 isEqualToNumber:&off_1001CA120];

        v10 = [v7 objectForKey:@"indeedCPUIntensive"];
        LODWORD(v8) = [v10 isEqualToNumber:&off_1001CA120];

        v11 = [v7 objectForKey:@"indeedMemoryIntensive"];
        v12 = [v11 isEqualToNumber:&off_1001CA120];

        v13 = [v7 objectForKey:@"mayImpactThermal"];
        v14 = [v13 isEqualToNumber:&off_1001CA120];

        v15 = [v7 objectForKey:@"maxDataConsumed"];
        LODWORD(v13) = [v15 isEqualToNumber:&off_1001CA138];

        v5 += v9;
        v4 += v8;
        v21 += v12;
        LODWORD(v22) = v22 + v14;
        HIDWORD(v22) += v13 ^ 1;
        v6 = v6 + 1;
      }

      while (v20 != v6);
      v3 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v3);
  }

  if (os_log_type_enabled(v19->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100124BA0();
  }

  v16 = v19;
  if (os_log_type_enabled(v19->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100124C10();
    v16 = v19;
  }

  if (os_log_type_enabled(v16[10], OS_LOG_TYPE_DEBUG))
  {
    sub_100124C80();
    v16 = v19;
  }

  if (os_log_type_enabled(v16[10], OS_LOG_TYPE_DEBUG))
  {
    sub_100124CF0();
    v16 = v19;
  }

  if (os_log_type_enabled(v16[10], OS_LOG_TYPE_DEBUG))
  {
    sub_100124D60();
    v16 = v19;
  }

  objc_sync_exit(v16);
}

- (_DASIntensityValidator)init
{
  v16.receiver = self;
  v16.super_class = _DASIntensityValidator;
  v2 = [(_DASIntensityValidator *)&v16 init];
  if (v2)
  {
    v3 = [_DASDaemonLogger logForCategory:@"intensityValidator"];
    log = v2->_log;
    v2->_log = v3;

    v5 = v2->_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Initializing _DASIntensityValidator!", v15, 2u);
    }

    v6 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.dasd.intensityValidator"];
    defaults = v2->_defaults;
    v2->_defaults = v6;

    v8 = +[NSMutableDictionary dictionary];
    resourceIntensityTimelines = v2->_resourceIntensityTimelines;
    v2->_resourceIntensityTimelines = v8;

    v10 = +[_DASLatencyProjector sharedInstance];
    latencyProjector = v2->_latencyProjector;
    v2->_latencyProjector = v10;

    v12 = +[NSMutableDictionary dictionary];
    activityToProfile = v2->_activityToProfile;
    v2->_activityToProfile = v12;

    v2->_numTotalProfiledRuns = 0;
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100094748;
  block[3] = &unk_1001B54A0;
  block[4] = self;
  if (qword_10020B618 != -1)
  {
    dispatch_once(&qword_10020B618, block);
  }

  v2 = qword_10020B620;

  return v2;
}

- (id)loadDeviceConditionState:(id)state
{
  resourceIntensityTimelines = self->_resourceIntensityTimelines;
  stateCopy = state;
  [(NSMutableDictionary *)resourceIntensityTimelines removeAllObjects];
  v6 = +[NSDate date];
  v7 = [(_DASLatencyProjector *)self->_latencyProjector getDeviceConditionTimelines:stateCopy filepath:0];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_1001246A8(log);
  }

  v9 = +[NSDate date];
  [v9 timeIntervalSinceDate:v6];
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100124738();
  }

  return v7;
}

- (void)validateIntensityForActivity:(id)activity
{
  activityCopy = activity;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  startDate = [activityCopy startDate];
  endTime = [activityCopy endTime];
  [activityCopy dataConsumed];
  v9 = v8;
  v70 = activityCopy;
  identifier = [activityCopy identifier];
  [endTime timeIntervalSinceDate:startDate];
  v11 = v10;
  if (os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_1001247B0();
  }

  v12 = +[NSMutableDictionary dictionary];
  p_activityToProfile = &selfCopy->_activityToProfile;
  v13 = [(NSMutableDictionary *)selfCopy->_activityToProfile objectForKey:identifier];

  if (v13)
  {
    v14 = [*p_activityToProfile objectForKey:identifier];
    v15 = [v14 objectForKeyedSubscript:@"numProfiles"];
    intValue = [v15 intValue];

    v17 = [NSNumber numberWithInteger:(intValue + 1)];
    [v12 setObject:v17 forKeyedSubscript:@"numProfiles"];

    v18 = [v14 objectForKeyedSubscript:@"indeedCPUIntensive"];
    [v12 setObject:v18 forKeyedSubscript:@"indeedCPUIntensive"];

    v19 = [v14 objectForKeyedSubscript:@"mayImpactThermal"];
    [v12 setObject:v19 forKeyedSubscript:@"mayImpactThermal"];

    v20 = [NSNumber numberWithDouble:v11];
    v21 = [v14 objectForKeyedSubscript:@"maxDuration"];
    v22 = [v20 compare:v21] == 1;

    if (v22)
    {
      if (os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_DEBUG))
      {
        sub_100124820();
      }

      v23 = [NSNumber numberWithDouble:v11];
      [v12 setObject:v23 forKeyedSubscript:@"maxDuration"];
    }

    else
    {
      v23 = [v14 objectForKeyedSubscript:@"maxDuration"];
      [v12 setObject:v23 forKeyedSubscript:@"maxDuration"];
    }

    v25 = [NSNumber numberWithDouble:v9];
    v26 = [v14 objectForKeyedSubscript:@"maxDataConsumed"];
    v27 = [v25 compare:v26] == 1;

    if (v27)
    {
      if (os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_DEBUG))
      {
        sub_100124898();
      }

      v28 = [NSNumber numberWithDouble:v9];
      [v12 setObject:v28 forKeyedSubscript:@"maxDataConsumed"];
    }

    else
    {
      v28 = [v14 objectForKeyedSubscript:@"maxDataConsumed"];
      [v12 setObject:v28 forKeyedSubscript:@"maxDataConsumed"];
    }
  }

  else
  {
    [v12 setObject:&off_1001CA120 forKeyedSubscript:@"numProfiles"];
    v24 = [NSNumber numberWithDouble:v11];
    [v12 setObject:v24 forKeyedSubscript:@"maxDuration"];

    [v12 setObject:&off_1001CA138 forKeyedSubscript:@"indeedCPUIntensive"];
    [v12 setObject:&off_1001CA138 forKeyedSubscript:@"indeedMemoryIntensive"];
    [v12 setObject:&off_1001CA138 forKeyedSubscript:@"mayImpactThermal"];
    v14 = [NSNumber numberWithDouble:v9];
    [v12 setObject:v14 forKeyedSubscript:@"maxDataConsumed"];
  }

  v29 = [v12 objectForKeyedSubscript:@"maxDuration"];
  v30 = [v29 integerValue] < 5;

  if (v30)
  {
    v31 = &off_1001CA120;
  }

  else
  {
    v32 = [v12 objectForKeyedSubscript:@"maxDuration"];
    [v32 integerValue];

    v31 = &off_1001CA138;
  }

  [v12 setObject:v31 forKeyedSubscript:@"isVeryShort"];
  v72 = +[NSMutableSet set];
  v33 = [identifier copy];
  if ([identifier hasPrefix:@"com.apple."])
  {
    v34 = v33;
  }

  else
  {
    v35 = [identifier substringFromIndex:{objc_msgSend(@"com.apple.", "length")}];

    if (os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_100124910();
    }

    v34 = v35;
  }

  v69 = v34;
  [v72 addObject:?];
  v73 = endTime;
  v74 = startDate;
  if (os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100124950();
  }

  if (v11 > 5.0)
  {
    v65 = [[NSDateInterval alloc] initWithStartDate:v74 endDate:v73];
    v36 = [(_DASIntensityValidator *)selfCopy loadDeviceConditionState:?];
    v68 = [v36 objectForKeyedSubscript:@"CPUPressure"];
    v67 = [v36 objectForKeyedSubscript:@"MemoryPressure"];
    v64 = v36;
    v66 = [v36 objectForKeyedSubscript:@"ThermalPressure"];
    if ([v68 count])
    {
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v37 = v68;
      v38 = [v37 countByEnumeratingWithState:&v84 objects:v92 count:16];
      if (v38)
      {
        v40 = *v85;
        *&v39 = 134217984;
        v61 = v39;
        while (2)
        {
          for (i = 0; i != v38; i = i + 1)
          {
            if (*v85 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = [*(*(&v84 + 1) + 8 * i) objectForKeyedSubscript:{@"CPUPressure", v61}];
            intValue2 = [v42 intValue];

            log = selfCopy->_log;
            if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
            {
              *buf = v61;
              v91 = intValue2;
              _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Current CPUPressureValue: %lu", buf, 0xCu);
            }

            if (qword_100209E78 < intValue2)
            {
              [v12 setObject:&off_1001CA120 forKeyedSubscript:@"indeedCPUIntensive"];
              [v70 setIndeedCPUIntensive:1];
              goto LABEL_40;
            }
          }

          v38 = [v37 countByEnumeratingWithState:&v84 objects:v92 count:16];
          if (v38)
          {
            continue;
          }

          break;
        }
      }

LABEL_40:
    }

    if ([v67 count])
    {
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v45 = v67;
      v46 = [v45 countByEnumeratingWithState:&v80 objects:v89 count:16];
      if (v46)
      {
        v48 = *v81;
        *&v47 = 134217984;
        v62 = v47;
        while (2)
        {
          for (j = 0; j != v46; j = j + 1)
          {
            if (*v81 != v48)
            {
              objc_enumerationMutation(v45);
            }

            v50 = [*(*(&v80 + 1) + 8 * j) objectForKeyedSubscript:{@"MemoryPressure", v62}];
            intValue3 = [v50 intValue];

            v52 = selfCopy->_log;
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
            {
              *buf = v62;
              v91 = intValue3;
              _os_log_debug_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "Current MemoryPressureValue: %lu", buf, 0xCu);
            }

            if (intValue3 >= 4)
            {
              [v12 setObject:&off_1001CA120 forKeyedSubscript:@"indeedMemoryIntensive"];
              [v70 setIndeedMemoryIntensive:1];
              goto LABEL_54;
            }
          }

          v46 = [v45 countByEnumeratingWithState:&v80 objects:v89 count:16];
          if (v46)
          {
            continue;
          }

          break;
        }
      }

LABEL_54:
    }

    if ([v66 count])
    {
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v53 = v66;
      v54 = [v53 countByEnumeratingWithState:&v76 objects:v88 count:16];
      if (v54)
      {
        v56 = *v77;
        *&v55 = 134217984;
        v63 = v55;
        while (2)
        {
          for (k = 0; k != v54; k = k + 1)
          {
            if (*v77 != v56)
            {
              objc_enumerationMutation(v53);
            }

            v58 = [*(*(&v76 + 1) + 8 * k) objectForKeyedSubscript:{@"ThermalPressure", v63}];
            intValue4 = [v58 intValue];

            v60 = selfCopy->_log;
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
            {
              *buf = v63;
              v91 = intValue4;
              _os_log_debug_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEBUG, "Current ThermalPressure: %lu", buf, 0xCu);
            }

            if (intValue4 >= 0x14)
            {
              [v12 setObject:&off_1001CA120 forKeyedSubscript:@"mayImpactThermal"];
              [v70 setThermalLevelElevated:1];
              goto LABEL_68;
            }
          }

          v54 = [v53 countByEnumeratingWithState:&v76 objects:v88 count:16];
          if (v54)
          {
            continue;
          }

          break;
        }
      }

LABEL_68:
    }
  }

  [*p_activityToProfile setObject:v12 forKeyedSubscript:identifier];
  if (os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_1001249D0();
  }

  if (v11 > 5.0 && os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100124A40(p_activityToProfile);
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)isActivityProfileSufficient:(id)sufficient
{
  sufficientCopy = sufficient;
  v5 = [(NSMutableDictionary *)self->_activityToProfile objectForKey:sufficientCopy];

  v9 = 0;
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_activityToProfile objectForKey:sufficientCopy];
    v7 = [v6 objectForKeyedSubscript:@"numProfiles"];
    intValue = [v7 intValue];

    if (intValue > 4)
    {
      v9 = 1;
    }
  }

  return v9;
}

- (BOOL)isActivityIndeedIntensive:(id)intensive
{
  intensiveCopy = intensive;
  activityToProfile = self->_activityToProfile;
  identifier = [intensiveCopy identifier];
  v7 = [(NSMutableDictionary *)activityToProfile objectForKey:identifier];

  if (v7)
  {
    v8 = self->_activityToProfile;
    identifier2 = [intensiveCopy identifier];
    v10 = [(NSMutableDictionary *)v8 objectForKey:identifier2];

    v11 = [v10 objectForKeyedSubscript:@"numProfiles"];
    if ([v11 intValue] < 5)
    {
      bOOLValue = 0;
    }

    else
    {
      v12 = [v10 objectForKeyedSubscript:@"indeedCPUIntensive"];
      if ([v12 BOOLValue])
      {
        bOOLValue = 1;
      }

      else
      {
        v15 = [v10 objectForKeyedSubscript:@"indeedMemoryIntensive"];
        if ([v15 BOOLValue])
        {
          bOOLValue = 1;
        }

        else
        {
          v16 = [v10 objectForKeyedSubscript:@"mayImpactThermal"];
          bOOLValue = [v16 BOOLValue];
        }
      }
    }
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      sub_100124DD0(log);
    }

    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)isRunTimeAlwaysVeryShortForActivity:(id)activity
{
  activityCopy = activity;
  activityToProfile = self->_activityToProfile;
  identifier = [activityCopy identifier];
  v7 = [(NSMutableDictionary *)activityToProfile objectForKey:identifier];

  if (v7)
  {
    v8 = self->_activityToProfile;
    identifier2 = [activityCopy identifier];
    v10 = [(NSMutableDictionary *)v8 objectForKey:identifier2];

    v11 = [v10 objectForKeyedSubscript:@"numProfiles"];
    if ([v11 intValue] < 5)
    {
      v13 = 0;
    }

    else
    {
      v12 = [v10 objectForKeyedSubscript:@"maxDuration"];
      v13 = [v12 intValue] < 5;
    }
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      sub_100124E60(log);
    }

    v13 = 1;
  }

  return v13;
}

- (BOOL)mayCauseThermalPressureWithActivity:(id)activity
{
  activityCopy = activity;
  activityToProfile = self->_activityToProfile;
  identifier = [activityCopy identifier];
  v7 = [(NSMutableDictionary *)activityToProfile objectForKey:identifier];

  if (v7)
  {
    v8 = self->_activityToProfile;
    identifier2 = [activityCopy identifier];
    v10 = [(NSMutableDictionary *)v8 objectForKey:identifier2];

    v11 = [v10 objectForKeyedSubscript:@"numProfiles"];
    if ([v11 intValue] < 5)
    {
      bOOLValue = 0;
    }

    else
    {
      v12 = [v10 objectForKeyedSubscript:@"mayImpactThermal"];
      bOOLValue = [v12 BOOLValue];
    }
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      sub_100124EF0(log);
    }

    bOOLValue = 1;
  }

  return bOOLValue;
}

@end