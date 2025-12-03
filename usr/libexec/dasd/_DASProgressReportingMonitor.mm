@interface _DASProgressReportingMonitor
+ (id)sharedMonitor;
- (_DASProgressReportingMonitor)init;
- (id)trackerForActivity:(id)activity;
- (id)trackerForUUID:(id)d;
- (id)trackersForPID:(int)d;
- (void)beginTrackingActivity:(id)activity;
- (void)endTrackingActivity:(id)activity;
- (void)submitProgressUpdate:(id)update forActivity:(id)activity;
@end

@implementation _DASProgressReportingMonitor

+ (id)sharedMonitor
{
  if (qword_10020B280 != -1)
  {
    sub_100120020();
  }

  v3 = qword_10020B288;

  return v3;
}

- (_DASProgressReportingMonitor)init
{
  v8.receiver = self;
  v8.super_class = _DASProgressReportingMonitor;
  v2 = [(_DASProgressReportingMonitor *)&v8 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    trackers = v2->_trackers;
    v2->_trackers = v3;

    v5 = os_log_create("com.apple.DuetActivityScheduler", "ProgressReportingMonitor");
    log = v2->_log;
    v2->_log = v5;
  }

  return v2;
}

- (void)beginTrackingActivity:(id)activity
{
  activityCopy = activity;
  v5 = self->_trackers;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_trackers objectForKeyedSubscript:activityCopy];

  if (v6)
  {
    objc_sync_exit(v5);
  }

  else
  {
    v7 = [_DASProgressTracker alloc];
    v8 = +[NSProgress indeterminateProgress];
    v9 = [(_DASProgressTracker *)v7 initWithActivity:activityCopy startingProgress:v8];

    [(NSMutableDictionary *)self->_trackers setObject:v9 forKeyedSubscript:activityCopy];
    objc_sync_exit(v5);

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = activityCopy;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "[%@] Beginning progress monitoring", &v11, 0xCu);
    }
  }
}

- (void)endTrackingActivity:(id)activity
{
  activityCopy = activity;
  v5 = self->_trackers;
  objc_sync_enter(v5);
  [(NSMutableDictionary *)self->_trackers removeObjectForKey:activityCopy];
  objc_sync_exit(v5);

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = activityCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "[%@] Ending progress monitoring", &v7, 0xCu);
  }
}

- (void)submitProgressUpdate:(id)update forActivity:(id)activity
{
  updateCopy = update;
  activityCopy = activity;
  v8 = self->_trackers;
  objc_sync_enter(v8);
  v9 = [(NSMutableDictionary *)self->_trackers objectForKeyedSubscript:activityCopy];
  objc_sync_exit(v8);

  log = self->_log;
  if (v9)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      sub_100120034(activityCopy, updateCopy, log);
    }

    [v9 processUpdate:updateCopy];
  }

  else if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    sub_1001200BC(activityCopy, log);
  }
}

- (id)trackerForActivity:(id)activity
{
  activityCopy = activity;
  v5 = self->_trackers;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_trackers objectForKeyedSubscript:activityCopy];
  objc_sync_exit(v5);

  return v6;
}

- (id)trackersForPID:(int)d
{
  v5 = +[NSMutableSet set];
  v6 = self->_trackers;
  objc_sync_enter(v6);
  trackers = self->_trackers;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10005AE54;
  v10[3] = &unk_1001B6940;
  dCopy = d;
  v8 = v5;
  v11 = v8;
  [(NSMutableDictionary *)trackers enumerateKeysAndObjectsUsingBlock:v10];

  objc_sync_exit(v6);

  return v8;
}

- (id)trackerForUUID:(id)d
{
  dCopy = d;
  v5 = self->_trackers;
  objc_sync_enter(v5);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allKeys = [(NSMutableDictionary *)self->_trackers allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        uuid = [v10 uuid];
        v12 = [uuid isEqual:dCopy];

        if (v12)
        {
          v13 = [(NSMutableDictionary *)self->_trackers objectForKeyedSubscript:v10];
          goto LABEL_11;
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  objc_sync_exit(v5);

  return v13;
}

@end