@interface _DASFeatureDurationTracker
+ (BOOL)shouldTrackActivity:(id)a3;
+ (id)sharedInstance;
- (BOOL)shouldResetDurations;
- (_DASFeatureDurationTracker)init;
- (double)durationForFeature:(id)a3;
- (double)maximumDurationForFeature:(id)a3;
- (void)loadMaximumDurations;
- (void)loadState;
- (void)resetFeatureDurations;
- (void)saveState;
- (void)updateFeatureDurationActivityCompleted:(id)a3;
@end

@implementation _DASFeatureDurationTracker

- (_DASFeatureDurationTracker)init
{
  v16.receiver = self;
  v16.super_class = _DASFeatureDurationTracker;
  v2 = [(_DASFeatureDurationTracker *)&v16 init];
  if (v2)
  {
    v3 = [_DASDaemonLogger logForCategory:@"featureDurationTracker"];
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    if (os_log_type_enabled(*(v2 + 1), OS_LOG_TYPE_DEBUG))
    {
      sub_10011FD8C();
    }

    v5 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.dasd.activityDurationTracker"];
    v6 = *(v2 + 2);
    *(v2 + 2) = v5;

    v7 = +[NSMutableDictionary dictionary];
    v8 = *(v2 + 6);
    *(v2 + 6) = v7;

    v9 = +[_DASPlistParser sharedInstance];
    v10 = [v9 dictionaryForPlist:2];
    v11 = *(v2 + 3);
    *(v2 + 3) = v10;

    [v2 loadMaximumDurations];
    v12 = +[_DASPlistParser sharedInstance];
    v13 = [v12 dictionaryForPlist:0];
    v14 = *(v2 + 5);
    *(v2 + 5) = v13;

    if ([v2 shouldResetDurations])
    {
      [v2 resetFeatureDurations];
      if (os_log_type_enabled(*(v2 + 1), OS_LOG_TYPE_DEBUG))
      {
        sub_10011FDCC();
      }
    }

    [v2 loadState];
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100059918;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
  if (qword_10020B268 != -1)
  {
    dispatch_once(&qword_10020B268, block);
  }

  v2 = qword_10020B270;

  return v2;
}

+ (BOOL)shouldTrackActivity:(id)a3
{
  v3 = [a3 featureCodes];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)loadState
{
  v2 = self;
  objc_sync_enter(v2);
  [(NSMutableDictionary *)v2->_featureDurationDict removeAllObjects];
  v3 = [(NSUserDefaults *)v2->_defaults objectForKey:@"FeatureDurationDict"];
  v4 = [v3 mutableCopy];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        featureDurationDict = v2->_featureDurationDict;
        v11 = [v5 objectForKeyedSubscript:{v9, v14}];
        [(NSMutableDictionary *)featureDurationDict setObject:v11 forKey:v9];
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v6);
  }

  log = v2->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v2->_featureDurationDict;
    *buf = 138412290;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Loaded feature duration data from defaults %@", buf, 0xCu);
  }

  objc_sync_exit(v2);
}

- (void)saveState
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [[NSDictionary alloc] initWithDictionary:v2->_featureDurationDict copyItems:1];
  [(NSUserDefaults *)v2->_defaults setObject:v3 forKey:@"FeatureDurationDict"];
  v4 = v2->_log;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(NSUserDefaults *)v2->_defaults objectForKey:@"FeatureDurationDict"];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Saved feature duration data to defaults %@", &v6, 0xCu);
  }

  objc_sync_exit(v2);
}

- (BOOL)shouldResetDurations
{
  if (qword_10020B278)
  {
    return 0;
  }

  v11 = 0uLL;
  v3 = +[NSProcessInfo processInfo];
  v4 = v3;
  if (v3)
  {
    [v3 operatingSystemVersion];
  }

  else
  {
    v11 = 0uLL;
  }

  v5 = [NSString stringWithFormat:@"%ld.%ld.%ld", v11, 0];
  v6 = [v5 copy];
  v7 = qword_10020B278;
  qword_10020B278 = v6;

  v8 = [(NSUserDefaults *)self->_defaults stringForKey:@"FeatureDurationResetVersion"];
  if ([v8 isEqualToString:v5])
  {

    return 0;
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10011FE0C(v5, v8, log);
  }

  [(NSUserDefaults *)self->_defaults setObject:v5 forKey:@"FeatureDurationResetVersion"];

  return 1;
}

- (void)resetFeatureDurations
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = +[_DASPlistParser sharedInstance];
  v4 = [v3 dictionaryForPlist:2];
  featuresDict = v2->_featuresDict;
  v2->_featuresDict = v4;

  if ([(NSDictionary *)v2->_featuresDict count])
  {
    [(NSMutableDictionary *)v2->_featureDurationDict removeAllObjects];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v2->_featuresDict;
    v7 = [(NSDictionary *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [(NSMutableDictionary *)v2->_featureDurationDict setObject:&off_1001C99D0 forKey:*(*(&v11 + 1) + 8 * i), v11];
        }

        v7 = [(NSDictionary *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    [(_DASFeatureDurationTracker *)v2 saveState];
    if (os_log_type_enabled(v2->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_10011FE94(&v2->_featureDurationDict);
    }
  }

  else
  {
    log = v2->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10011FF0C(log);
    }
  }

  objc_sync_exit(v2);
}

- (void)loadMaximumDurations
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = +[_DASPlistParser sharedInstance];
  v4 = [v3 dictionaryForPlist:2];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:v10];
        v12 = [v11 objectForKey:@"runtimeLimit"];

        [v12 doubleValue];
        if (v13 <= 0 || v12 == 0)
        {
          v15 = &off_1001CAE58;
        }

        else
        {
          v15 = v12;
        }

        [(NSDictionary *)v2 setObject:v15 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  maximumFeatureDurationDict = self->_maximumFeatureDurationDict;
  self->_maximumFeatureDurationDict = v2;
}

- (double)maximumDurationForFeature:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (![(NSDictionary *)v5->_maximumFeatureDurationDict count])
  {
    [(_DASFeatureDurationTracker *)v5 loadMaximumDurations];
  }

  maximumFeatureDurationDict = v5->_maximumFeatureDurationDict;
  v7 = [v4 stringValue];
  v8 = [(NSDictionary *)maximumFeatureDurationDict objectForKeyedSubscript:v7];

  if (v8)
  {
    v9 = v5->_maximumFeatureDurationDict;
    v10 = [v4 stringValue];
    v11 = [(NSDictionary *)v9 objectForKeyedSubscript:v10];
    [v11 doubleValue];
    v13 = v12;
  }

  else
  {
    v13 = 0.0;
  }

  objc_sync_exit(v5);

  return v13;
}

- (double)durationForFeature:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (![(NSMutableDictionary *)v5->_featureDurationDict count])
  {
    [(_DASFeatureDurationTracker *)v5 loadState];
  }

  featureDurationDict = v5->_featureDurationDict;
  v7 = [v4 stringValue];
  v8 = [(NSMutableDictionary *)featureDurationDict objectForKeyedSubscript:v7];

  if (v8)
  {
    v9 = v5->_featureDurationDict;
    v10 = [v4 stringValue];
    v11 = [(NSMutableDictionary *)v9 objectForKeyedSubscript:v10];
    [v11 doubleValue];
    v13 = v12;
  }

  else
  {
    v13 = 0.0;
  }

  objc_sync_exit(v5);

  return v13;
}

- (void)updateFeatureDurationActivityCompleted:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v39 = v4;
  if ([_DASFeatureDurationTracker shouldTrackActivity:v4])
  {
    [(_DASFeatureDurationTracker *)v5 loadState];
    v38 = [v4 startDate];
    v37 = [v4 endTime];
    if (v38 && v37)
    {
      v6 = +[_DASPlistParser sharedInstance];
      v7 = [v6 dictionaryForPlist:0];
      fastPassActivities = v5->_fastPassActivities;
      v5->_fastPassActivities = v7;

      [v37 timeIntervalSinceDate:v38];
      v10 = v9;
      v11 = v5->_fastPassActivities;
      v12 = [v39 name];
      v13 = [(NSDictionary *)v11 objectForKeyedSubscript:v12];

      if (v13)
      {
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v14 = v5->_fastPassActivities;
        v15 = [v39 name];
        v16 = [(NSDictionary *)v14 objectForKeyedSubscript:v15];
        v17 = [v16 objectForKeyedSubscript:@"FeatureCodes"];

        v18 = [v17 countByEnumeratingWithState:&v42 objects:v56 count:16];
        obj = v17;
        if (v18)
        {
          v41 = *v43;
          do
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v43 != v41)
              {
                objc_enumerationMutation(obj);
              }

              v20 = *(*(&v42 + 1) + 8 * i);
              featureDurationDict = v5->_featureDurationDict;
              v22 = [v20 stringValue];
              v23 = [(NSMutableDictionary *)featureDurationDict objectForKeyedSubscript:v22];

              [v23 doubleValue];
              v25 = v10 + v24;
              v26 = [NSNumber numberWithDouble:v10 + v24];
              v27 = v5->_featureDurationDict;
              v28 = [v20 stringValue];
              [(NSMutableDictionary *)v27 setObject:v26 forKeyedSubscript:v28];

              v29 = v5->_log;
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                v30 = [NSNumber numberWithDouble:v10];
                v31 = [v39 name];
                maximumFeatureDurationDict = v5->_maximumFeatureDurationDict;
                v33 = [v20 stringValue];
                v34 = [(NSDictionary *)maximumFeatureDurationDict objectForKeyedSubscript:v33];
                [v34 doubleValue];
                *buf = 138413314;
                v47 = v30;
                v48 = 2112;
                v49 = v31;
                v50 = 2112;
                v51 = v20;
                v52 = 2048;
                v53 = v25;
                v54 = 2048;
                v55 = v35;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Deducting runtime %@ after activity %@: Feature code %@ is now %f < %f", buf, 0x34u);
              }
            }

            v18 = [obj countByEnumeratingWithState:&v42 objects:v56 count:16];
          }

          while (v18);
        }
      }

      else
      {
        obj = v5->_log;
        if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
        {
          v36 = [v39 name];
          sub_10011FF50(v36, buf, obj);
        }
      }

      if (os_log_type_enabled(v5->_log, OS_LOG_TYPE_DEBUG))
      {
        sub_10011FFA8(v5);
      }

      [(_DASFeatureDurationTracker *)v5 saveState];
    }
  }

  objc_sync_exit(v5);
}

@end