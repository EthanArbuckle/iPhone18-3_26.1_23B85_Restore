@interface _DASFeatureDurationTracker
+ (BOOL)shouldTrackActivity:(id)activity;
+ (id)sharedInstance;
- (BOOL)shouldResetDurations;
- (_DASFeatureDurationTracker)init;
- (double)durationForFeature:(id)feature;
- (double)maximumDurationForFeature:(id)feature;
- (void)loadMaximumDurations;
- (void)loadState;
- (void)resetFeatureDurations;
- (void)saveState;
- (void)updateFeatureDurationActivityCompleted:(id)completed;
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
  block[4] = self;
  if (qword_10020B268 != -1)
  {
    dispatch_once(&qword_10020B268, block);
  }

  v2 = qword_10020B270;

  return v2;
}

+ (BOOL)shouldTrackActivity:(id)activity
{
  featureCodes = [activity featureCodes];
  v4 = [featureCodes count] != 0;

  return v4;
}

- (void)loadState
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_featureDurationDict removeAllObjects];
  v3 = [(NSUserDefaults *)selfCopy->_defaults objectForKey:@"FeatureDurationDict"];
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
        featureDurationDict = selfCopy->_featureDurationDict;
        v11 = [v5 objectForKeyedSubscript:{v9, v14}];
        [(NSMutableDictionary *)featureDurationDict setObject:v11 forKey:v9];
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v6);
  }

  log = selfCopy->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v13 = selfCopy->_featureDurationDict;
    *buf = 138412290;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Loaded feature duration data from defaults %@", buf, 0xCu);
  }

  objc_sync_exit(selfCopy);
}

- (void)saveState
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [[NSDictionary alloc] initWithDictionary:selfCopy->_featureDurationDict copyItems:1];
  [(NSUserDefaults *)selfCopy->_defaults setObject:v3 forKey:@"FeatureDurationDict"];
  v4 = selfCopy->_log;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(NSUserDefaults *)selfCopy->_defaults objectForKey:@"FeatureDurationDict"];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Saved feature duration data to defaults %@", &v6, 0xCu);
  }

  objc_sync_exit(selfCopy);
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = +[_DASPlistParser sharedInstance];
  v4 = [v3 dictionaryForPlist:2];
  featuresDict = selfCopy->_featuresDict;
  selfCopy->_featuresDict = v4;

  if ([(NSDictionary *)selfCopy->_featuresDict count])
  {
    [(NSMutableDictionary *)selfCopy->_featureDurationDict removeAllObjects];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = selfCopy->_featuresDict;
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

          [(NSMutableDictionary *)selfCopy->_featureDurationDict setObject:&off_1001C99D0 forKey:*(*(&v11 + 1) + 8 * i), v11];
        }

        v7 = [(NSDictionary *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    [(_DASFeatureDurationTracker *)selfCopy saveState];
    if (os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_10011FE94(&selfCopy->_featureDurationDict);
    }
  }

  else
  {
    log = selfCopy->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10011FF0C(log);
    }
  }

  objc_sync_exit(selfCopy);
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

- (double)maximumDurationForFeature:(id)feature
{
  featureCopy = feature;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(NSDictionary *)selfCopy->_maximumFeatureDurationDict count])
  {
    [(_DASFeatureDurationTracker *)selfCopy loadMaximumDurations];
  }

  maximumFeatureDurationDict = selfCopy->_maximumFeatureDurationDict;
  stringValue = [featureCopy stringValue];
  v8 = [(NSDictionary *)maximumFeatureDurationDict objectForKeyedSubscript:stringValue];

  if (v8)
  {
    v9 = selfCopy->_maximumFeatureDurationDict;
    stringValue2 = [featureCopy stringValue];
    v11 = [(NSDictionary *)v9 objectForKeyedSubscript:stringValue2];
    [v11 doubleValue];
    v13 = v12;
  }

  else
  {
    v13 = 0.0;
  }

  objc_sync_exit(selfCopy);

  return v13;
}

- (double)durationForFeature:(id)feature
{
  featureCopy = feature;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(NSMutableDictionary *)selfCopy->_featureDurationDict count])
  {
    [(_DASFeatureDurationTracker *)selfCopy loadState];
  }

  featureDurationDict = selfCopy->_featureDurationDict;
  stringValue = [featureCopy stringValue];
  v8 = [(NSMutableDictionary *)featureDurationDict objectForKeyedSubscript:stringValue];

  if (v8)
  {
    v9 = selfCopy->_featureDurationDict;
    stringValue2 = [featureCopy stringValue];
    v11 = [(NSMutableDictionary *)v9 objectForKeyedSubscript:stringValue2];
    [v11 doubleValue];
    v13 = v12;
  }

  else
  {
    v13 = 0.0;
  }

  objc_sync_exit(selfCopy);

  return v13;
}

- (void)updateFeatureDurationActivityCompleted:(id)completed
{
  completedCopy = completed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v39 = completedCopy;
  if ([_DASFeatureDurationTracker shouldTrackActivity:completedCopy])
  {
    [(_DASFeatureDurationTracker *)selfCopy loadState];
    startDate = [completedCopy startDate];
    endTime = [completedCopy endTime];
    if (startDate && endTime)
    {
      v6 = +[_DASPlistParser sharedInstance];
      v7 = [v6 dictionaryForPlist:0];
      fastPassActivities = selfCopy->_fastPassActivities;
      selfCopy->_fastPassActivities = v7;

      [endTime timeIntervalSinceDate:startDate];
      v10 = v9;
      v11 = selfCopy->_fastPassActivities;
      name = [v39 name];
      v13 = [(NSDictionary *)v11 objectForKeyedSubscript:name];

      if (v13)
      {
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v14 = selfCopy->_fastPassActivities;
        name2 = [v39 name];
        v16 = [(NSDictionary *)v14 objectForKeyedSubscript:name2];
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
              featureDurationDict = selfCopy->_featureDurationDict;
              stringValue = [v20 stringValue];
              v23 = [(NSMutableDictionary *)featureDurationDict objectForKeyedSubscript:stringValue];

              [v23 doubleValue];
              v25 = v10 + v24;
              v26 = [NSNumber numberWithDouble:v10 + v24];
              v27 = selfCopy->_featureDurationDict;
              stringValue2 = [v20 stringValue];
              [(NSMutableDictionary *)v27 setObject:v26 forKeyedSubscript:stringValue2];

              v29 = selfCopy->_log;
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                v30 = [NSNumber numberWithDouble:v10];
                name3 = [v39 name];
                maximumFeatureDurationDict = selfCopy->_maximumFeatureDurationDict;
                stringValue3 = [v20 stringValue];
                v34 = [(NSDictionary *)maximumFeatureDurationDict objectForKeyedSubscript:stringValue3];
                [v34 doubleValue];
                *buf = 138413314;
                v47 = v30;
                v48 = 2112;
                v49 = name3;
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
        obj = selfCopy->_log;
        if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
        {
          name4 = [v39 name];
          sub_10011FF50(name4, buf, obj);
        }
      }

      if (os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_DEBUG))
      {
        sub_10011FFA8(selfCopy);
      }

      [(_DASFeatureDurationTracker *)selfCopy saveState];
    }
  }

  objc_sync_exit(selfCopy);
}

@end