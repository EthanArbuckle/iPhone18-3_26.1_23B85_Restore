@interface _OSInactivityPredictionBackupManager
+ (BOOL)hasBackup;
- (_OSInactivityPredictionBackupManager)init;
- (id)hydrateBackup;
- (void)backupData;
@end

@implementation _OSInactivityPredictionBackupManager

- (_OSInactivityPredictionBackupManager)init
{
  v6.receiver = self;
  v6.super_class = _OSInactivityPredictionBackupManager;
  v2 = [(_OSInactivityPredictionBackupManager *)&v6 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.osintelligence", "inactivity.backupmanager");
    log = v2->_log;
    v2->_log = v3;
  }

  return v2;
}

+ (BOOL)hasBackup
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.osintelligence.inactivitybackup"];
  v3 = 2;
  do
  {
    v4 = [NSString stringWithFormat:@"backup.v%d", v3];
    v5 = [v2 objectForKey:v4];

    if (v3 < 2)
    {
      break;
    }

    v3 = (v3 - 1);
  }

  while (!v5);

  return v5 != 0;
}

- (void)backupData
{
  v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.osintelligence.inactivitybackup"];
  v4 = +[_OSLockHistory sharedInstance];
  if ([v4 hasEnoughHistoryForInactivityPrediction])
  {
    selfCopy = self;
    v39 = v3;
    v5 = +[NSMutableDictionary dictionary];
    v6 = +[NSMutableDictionary dictionary];
    v43 = +[NSCalendar currentCalendar];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v38 = v4;
    obj = [v4 allIntervalsSortByStartAsc];
    v7 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
    v42 = v6;
    if (v7)
    {
      v8 = v7;
      v41 = *v49;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v49 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v48 + 1) + 8 * i);
          startDate = [v10 startDate];
          v12 = [v43 components:32 fromDate:startDate];
          hour = [v12 hour];

          endDate = [v10 endDate];
          startDate2 = [v10 startDate];
          [endDate timeIntervalSinceDate:startDate2];
          v17 = v16;

          v18 = [NSNumber numberWithInteger:hour];
          v19 = [v5 objectForKeyedSubscript:v18];
          v20 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v19 intValue] + 1);
          v21 = [NSNumber numberWithInteger:hour];
          [v5 setObject:v20 forKeyedSubscript:v21];

          v6 = v42;
          if (v17 > 10800.0)
          {
            v22 = [NSNumber numberWithInteger:hour];
            v23 = [v42 objectForKeyedSubscript:v22];

            if (!v23)
            {
              v23 = +[NSMutableArray array];
            }

            [v23 addObject:v10];
            v24 = [NSNumber numberWithInteger:hour];
            [v42 setObject:v23 forKeyedSubscript:v24];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
      }

      while (v8);
    }

    log = selfCopy->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v26 = log;
      allKeys = [v6 allKeys];
      v28 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [allKeys count]);
      *buf = 138412290;
      v53 = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Found %@ events", buf, 0xCu);

      v6 = v42;
    }

    v29 = +[NSMutableDictionary dictionary];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100005318;
    v44[3] = &unk_100094840;
    v30 = v5;
    v45 = v30;
    v31 = v29;
    v46 = v31;
    v47 = selfCopy;
    [v6 enumerateKeysAndObjectsUsingBlock:v44];
    v32 = [NSKeyedArchiver archivedDataWithRootObject:v31 requiringSecureCoding:1 error:0];
    v33 = [NSString stringWithFormat:@"backup.v%d", 2];
    v3 = v39;
    [v39 setObject:v32 forKey:v33];
    v34 = +[NSDate now];
    [v34 timeIntervalSinceReferenceDate];
    [v39 setDouble:@"lastUpdate" forKey:?];

    v35 = objc_autoreleasePoolPush();
    v36 = [NSString stringWithFormat:@"backup.v%d", 1];
    [v39 removeObjectForKey:v36];

    objc_autoreleasePoolPop(v35);
    v4 = v38;
  }
}

- (id)hydrateBackup
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = 2;
  while (1)
  {
    v4 = [NSString stringWithFormat:@"backup.v%d", v3];
    v5 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.osintelligence.inactivitybackup"];
    v6 = [v5 objectForKey:v4];
    if (v6)
    {
      break;
    }

    v7 = v3 != 0;
    v3 = (v3 - 1);
    if (v3 == 0 || !v7)
    {
      goto LABEL_6;
    }
  }

  v8 = v6;
  v9 = objc_opt_class();
  v10 = v2;
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v17 = v11;
  v2 = v10;
  v13 = [NSSet setWithObjects:v9, v17, v12, objc_opt_class(), 0];
  v14 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v13 fromData:v8 error:0];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100005814;
  v18[3] = &unk_100094868;
  v20 = v3;
  v19 = v2;
  [v14 enumerateKeysAndObjectsUsingBlock:v18];

LABEL_6:
  v15 = [v2 copy];

  return v15;
}

@end