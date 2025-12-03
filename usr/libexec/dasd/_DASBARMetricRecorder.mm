@interface _DASBARMetricRecorder
+ (BOOL)shouldRecordBARMetricForActivity:(id)activity;
+ (id)sharedInstance;
- (_DASBARMetricRecorder)init;
- (id)fetchLatestBARMetric;
- (void)loadState;
- (void)recordBARMetric:(id)metric atStage:(int64_t)stage;
- (void)resetBARMetric;
- (void)saveState;
@end

@implementation _DASBARMetricRecorder

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000291D8;
  block[3] = &unk_1001B54A0;
  block[4] = self;
  if (qword_10020AEF8 != -1)
  {
    dispatch_once(&qword_10020AEF8, block);
  }

  v2 = qword_10020AEF0;

  return v2;
}

- (_DASBARMetricRecorder)init
{
  v11.receiver = self;
  v11.super_class = _DASBARMetricRecorder;
  v2 = [(_DASBARMetricRecorder *)&v11 init];
  if (v2)
  {
    v3 = [_DASDaemonLogger logForCategory:@"barMetricRecorder"];
    log = v2->_log;
    v2->_log = v3;

    v5 = v2->_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10011D4CC(v5);
    }

    v6 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.dasd.barMetricRecorder"];
    defaults = v2->_defaults;
    v2->_defaults = v6;

    v8 = +[NSMutableDictionary dictionary];
    barMetricDict = v2->_barMetricDict;
    v2->_barMetricDict = v8;

    [(_DASBARMetricRecorder *)v2 loadState];
  }

  return v2;
}

+ (BOOL)shouldRecordBARMetricForActivity:(id)activity
{
  activityCopy = activity;
  launchReason = [activityCopy launchReason];
  if ([launchReason isEqualToString:_DASLaunchReasonBackgroundRemoteNotification])
  {
    v5 = 1;
  }

  else
  {
    launchReason2 = [activityCopy launchReason];
    v5 = [launchReason2 isEqualToString:_DASLaunchReasonBackgroundRefresh];
  }

  return v5;
}

- (void)loadState
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_barMetricDict removeAllObjects];
  v3 = [(NSUserDefaults *)selfCopy->_defaults objectForKey:@"BARMetricDict"];
  v4 = [v3 mutableCopy];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        barMetricDict = selfCopy->_barMetricDict;
        v11 = [v5 objectForKeyedSubscript:{v9, v13}];
        [(NSMutableDictionary *)barMetricDict setObject:v11 forKey:v9];
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  log = selfCopy->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10011D510(&selfCopy->_barMetricDict, log);
  }

  objc_sync_exit(selfCopy);
}

- (void)saveState
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [[NSDictionary alloc] initWithDictionary:selfCopy->_barMetricDict copyItems:1];
  [(NSUserDefaults *)selfCopy->_defaults setObject:v3 forKey:@"BARMetricDict"];
  v4 = selfCopy->_log;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [(NSUserDefaults *)selfCopy->_defaults objectForKey:@"BARMetricDict"];
    sub_10011D58C(v5, v6, v4);
  }

  objc_sync_exit(selfCopy);
}

- (void)resetBARMetric
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_barMetricDict removeAllObjects];
  [(NSMutableDictionary *)selfCopy->_barMetricDict setObject:&off_1001C9760 forKeyedSubscript:@"BgRefreshSubmissionCount"];
  [(NSMutableDictionary *)selfCopy->_barMetricDict setObject:&off_1001C9760 forKeyedSubscript:@"BgRefreshCompletionCount"];
  [(NSMutableDictionary *)selfCopy->_barMetricDict setObject:&off_1001C9760 forKeyedSubscript:@"PushLaunchSubmissionCount"];
  [(NSMutableDictionary *)selfCopy->_barMetricDict setObject:&off_1001C9760 forKeyedSubscript:@"PushLaunchCompletionCount"];
  [(_DASBARMetricRecorder *)selfCopy saveState];
  log = selfCopy->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10011D5E4(&selfCopy->_barMetricDict, log);
  }

  objc_sync_exit(selfCopy);
}

- (void)recordBARMetric:(id)metric atStage:(int64_t)stage
{
  metricCopy = metric;
  v7 = metricCopy;
  if (stage == 1)
  {
    launchReason = [metricCopy launchReason];
    v9 = [launchReason isEqualToString:_DASLaunchReasonBackgroundRefresh];

    v10 = @"PushLaunchCompletionCount";
    v11 = @"BgRefreshCompletionCount";
LABEL_5:
    if (v9)
    {
      v13 = v11;
    }

    else
    {
      v13 = v10;
    }

    goto LABEL_11;
  }

  if (!stage)
  {
    launchReason2 = [metricCopy launchReason];
    v9 = [launchReason2 isEqualToString:_DASLaunchReasonBackgroundRefresh];

    v10 = @"PushLaunchSubmissionCount";
    v11 = @"BgRefreshSubmissionCount";
    goto LABEL_5;
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    sub_10011D660(stage, log);
  }

  v13 = 0;
LABEL_11:
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v16 = [(NSMutableDictionary *)selfCopy->_barMetricDict objectForKeyedSubscript:v13];
  intValue = [v16 intValue];

  v18 = [NSNumber numberWithInt:intValue + 1];
  [(NSMutableDictionary *)selfCopy->_barMetricDict setObject:v18 forKeyedSubscript:v13];

  objc_sync_exit(selfCopy);
  [(_DASBARMetricRecorder *)selfCopy saveState];
}

- (id)fetchLatestBARMetric
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_barMetricDict;
  objc_sync_exit(selfCopy);

  return v3;
}

@end