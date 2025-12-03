@interface WABackgroundTaskManager
- (BOOL)_configureDailyTask;
- (BOOL)_configureDailyTaskUI;
- (WABackgroundTaskManager)initWithEngine:(id)engine;
- (WAEngine)engine;
- (id)_checkExistingTask:(id)task;
- (void)_runBackgroundTask:(id)task withBlock:(id)block;
- (void)registerTasks;
@end

@implementation WABackgroundTaskManager

- (WABackgroundTaskManager)initWithEngine:(id)engine
{
  engineCopy = engine;
  if (!engineCopy)
  {
    goto LABEL_9;
  }

  v14.receiver = self;
  v14.super_class = WABackgroundTaskManager;
  v5 = [(WABackgroundTaskManager *)&v14 init];
  if (!v5)
  {
    v11 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      *buf = 136446722;
      v16 = "[WABackgroundTaskManager initWithEngine:]";
      v17 = 1024;
      v18 = 40;
      v19 = 2112;
      v20 = v12;
      v13 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error super init - %@", buf, 0x1Cu);
    }

    self = 0;
    goto LABEL_9;
  }

  self = v5;
  objc_storeWeak(&v5->_engine, engineCopy);
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create("com.apple.wifi.analytics.bg-tasks", v6);
  backgroundTasksQueue = self->_backgroundTasksQueue;
  self->_backgroundTasksQueue = v7;

  if (!self->_backgroundTasksQueue)
  {
LABEL_9:
    selfCopy = 0;
    goto LABEL_5;
  }

  self = self;
  selfCopy = self;
LABEL_5:

  return selfCopy;
}

- (void)registerTasks
{
  if (!self->_backgroundTasksQueue)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.wifi.analytics.bg-tasks", v3);
    backgroundTasksQueue = self->_backgroundTasksQueue;
    self->_backgroundTasksQueue = v4;
  }

  sharedScheduler = [sub_10003AC00() sharedScheduler];
  backgroundTasksQueue = [(WABackgroundTaskManager *)self backgroundTasksQueue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10003ACE0;
  v22[3] = &unk_1000EDA18;
  v22[4] = self;
  v8 = [sharedScheduler registerForTaskWithIdentifier:@"com.apple.wifi.analytics.daily-bg-tasks-ui" usingQueue:backgroundTasksQueue launchHandler:v22];

  if ((v8 & 1) == 0)
  {
    v9 = WALogCategoryInitPersistentLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v24 = "[WABackgroundTaskManager registerTasks]";
      v25 = 1024;
      v26 = 67;
      v27 = 2112;
      v28 = @"com.apple.wifi.analytics.daily-bg-tasks-ui";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to register %@", buf, 0x1Cu);
    }
  }

  sharedScheduler2 = [sub_10003AC00() sharedScheduler];
  backgroundTasksQueue2 = [(WABackgroundTaskManager *)self backgroundTasksQueue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10003ADD8;
  v21[3] = &unk_1000EDA18;
  v21[4] = self;
  v12 = [sharedScheduler2 registerForTaskWithIdentifier:@"com.apple.wifi.analytics.daily-bg-tasks" usingQueue:backgroundTasksQueue2 launchHandler:v21];

  if ((v12 & 1) == 0)
  {
    v13 = WALogCategoryInitPersistentLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v24 = "[WABackgroundTaskManager registerTasks]";
      v25 = 1024;
      v26 = 80;
      v27 = 2112;
      v28 = @"com.apple.wifi.analytics.daily-bg-tasks";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to register %@", buf, 0x1Cu);
    }
  }

  _configureDailyTask = [(WABackgroundTaskManager *)self _configureDailyTask];
  _configureDailyTaskUI = [(WABackgroundTaskManager *)self _configureDailyTaskUI];
  v16 = WALogCategoryInitPersistentLogHandle();
  v17 = v16;
  if (!_configureDailyTaskUI || (_configureDailyTask & 1) == 0)
  {
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136446466;
    v24 = "[WABackgroundTaskManager registerTasks]";
    v25 = 1024;
    v26 = 88;
    v18 = "%{public}s::%d:Failed to configure background system tasks";
    v19 = v17;
    v20 = OS_LOG_TYPE_ERROR;
    goto LABEL_15;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v24 = "[WABackgroundTaskManager registerTasks]";
    v25 = 1024;
    v26 = 90;
    v18 = "%{public}s::%d:Registered background system task";
    v19 = v17;
    v20 = OS_LOG_TYPE_DEFAULT;
LABEL_15:
    _os_log_impl(&_mh_execute_header, v19, v20, v18, buf, 0x12u);
  }

LABEL_16:
}

- (id)_checkExistingTask:(id)task
{
  taskCopy = task;
  v4 = +[BGSystemTaskScheduler sharedScheduler];
  v5 = [v4 taskRequestForIdentifier:taskCopy];

  v6 = WALogCategoryInitPersistentLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 valueForKey:@"interval"];
    v8 = [v5 valueForKey:@"minDurationBetweenInstances"];
    v9 = [v5 valueForKey:@"priority"];
    v10 = [v5 valueForKey:@"requiresExternalPower"];
    v12 = 136447746;
    v13 = "[WABackgroundTaskManager _checkExistingTask:]";
    v14 = 1024;
    v15 = 100;
    v16 = 2112;
    v17 = taskCopy;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Existing %@ Task : interval:%@ minDurationBetweenInstances:%@ priority:%@ requiresExternalPower:%@", &v12, 0x44u);
  }

  return v5;
}

- (BOOL)_configureDailyTaskUI
{
  v3 = [(WABackgroundTaskManager *)self _checkExistingTask:@"com.apple.wifi.analytics.daily-bg-tasks-ui"];

  if (v3)
  {
    v7 = WALogCategoryInitPersistentLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v15 = "[WABackgroundTaskManager _configureDailyTaskUI]";
      v16 = 1024;
      v17 = 112;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Daily UI BG Task already exists", buf, 0x12u);
    }

    v9 = 0;
  }

  else
  {
    v4 = [[BGRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.wifi.analytics.daily-bg-tasks-ui"];
    [v4 setInterval:86400.0];
    [v4 setMinDurationBetweenInstances:69120.0];
    [v4 setPriority:2];
    [v4 setRequiresExternalPower:0];
    v5 = +[BGSystemTaskScheduler sharedScheduler];
    v13 = 0;
    v6 = [v5 submitTaskRequest:v4 error:&v13];
    v7 = v13;

    if (v6)
    {
      v8 = [(WABackgroundTaskManager *)self _checkExistingTask:@"com.apple.wifi.analytics.daily-bg-tasks-ui"];
    }

    else
    {
      v11 = WALogCategoryInitPersistentLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = @"Unknown Error";
        *buf = 136446978;
        v15 = "[WABackgroundTaskManager _configureDailyTaskUI]";
        v16 = 1024;
        if (v7)
        {
          v12 = v7;
        }

        v17 = 121;
        v18 = 2112;
        v19 = @"com.apple.wifi.analytics.daily-bg-tasks-ui";
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to submit task %@ with error: %@", buf, 0x26u);
      }
    }

    v9 = v7;
  }

  return v9 == 0;
}

- (BOOL)_configureDailyTask
{
  v3 = [(WABackgroundTaskManager *)self _checkExistingTask:@"com.apple.wifi.analytics.daily-bg-tasks"];

  if (v3)
  {
    v7 = WALogCategoryInitPersistentLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v15 = "[WABackgroundTaskManager _configureDailyTask]";
      v16 = 1024;
      v17 = 133;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Daily BG Task already exists", buf, 0x12u);
    }

    v9 = 0;
  }

  else
  {
    v4 = [[BGRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.wifi.analytics.daily-bg-tasks"];
    [v4 setInterval:86400.0];
    [v4 setMinDurationBetweenInstances:69120.0];
    [v4 setPriority:2];
    [v4 setRequiresExternalPower:1];
    [v4 setRequiresUserInactivity:1];
    v5 = +[BGSystemTaskScheduler sharedScheduler];
    v13 = 0;
    v6 = [v5 submitTaskRequest:v4 error:&v13];
    v7 = v13;

    if (v6)
    {
      v8 = [(WABackgroundTaskManager *)self _checkExistingTask:@"com.apple.wifi.analytics.daily-bg-tasks"];
    }

    else
    {
      v11 = WALogCategoryInitPersistentLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = @"Unknown Error";
        *buf = 136446978;
        v15 = "[WABackgroundTaskManager _configureDailyTask]";
        v16 = 1024;
        if (v7)
        {
          v12 = v7;
        }

        v17 = 144;
        v18 = 2112;
        v19 = @"com.apple.wifi.analytics.daily-bg-tasks";
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to submit task %@ with error: %@", buf, 0x26u);
      }
    }

    v9 = v7;
  }

  return v9 == 0;
}

- (void)_runBackgroundTask:(id)task withBlock:(id)block
{
  taskCopy = task;
  blockCopy = block;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v8 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    identifier = [taskCopy identifier];
    *buf = 136446722;
    v29 = "[WABackgroundTaskManager _runBackgroundTask:withBlock:]";
    v30 = 1024;
    v31 = 156;
    v32 = 2112;
    v33 = identifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Received task handler: %@", buf, 0x1Cu);
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10003BA10;
  v23[3] = &unk_1000EDA60;
  v23[4] = &v24;
  [taskCopy setExpirationHandler:v23];
  v10 = WALogCategoryInitPersistentLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    identifier2 = [taskCopy identifier];
    *buf = 136446722;
    v29 = "[WABackgroundTaskManager _runBackgroundTask:withBlock:]";
    v30 = 1024;
    v31 = 163;
    v32 = 2112;
    v33 = identifier2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:[START] Daily Background Task for %@", buf, 0x1Cu);
  }

  blockCopy[2](blockCopy);
  v12 = WALogCategoryInitPersistentLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    identifier3 = [taskCopy identifier];
    *buf = 136446722;
    v29 = "[WABackgroundTaskManager _runBackgroundTask:withBlock:]";
    v30 = 1024;
    v31 = 165;
    v32 = 2112;
    v33 = identifier3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:[END] Daily Background Task for %@", buf, 0x1Cu);
  }

  if (*(v25 + 24) == 1)
  {
    v22 = 0;
    v14 = [taskCopy setTaskExpiredWithRetryAfter:&v22 error:0.0];
    v15 = v22;
    if ((v14 & 1) == 0)
    {
      v16 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = @"Unknown";
        *buf = 136446722;
        v29 = "[WABackgroundTaskManager _runBackgroundTask:withBlock:]";
        if (v15)
        {
          v17 = v15;
        }

        v30 = 1024;
        v31 = 170;
        v32 = 2112;
        v33 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Failed to expire task with error: %@", buf, 0x1Cu);
      }

      [taskCopy setTaskCompleted];
    }
  }

  else
  {
    [taskCopy setTaskCompleted];
  }

  engine = [(WABackgroundTaskManager *)self engine];
  identifier4 = [taskCopy identifier];
  [engine incrementWorkReportValueForKey:identifier4];

  v20 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    identifier5 = [taskCopy identifier];
    *buf = 136446722;
    v29 = "[WABackgroundTaskManager _runBackgroundTask:withBlock:]";
    v30 = 1024;
    v31 = 180;
    v32 = 2112;
    v33 = identifier5;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Existing task handler: %@", buf, 0x1Cu);
  }

  _Block_object_dispose(&v24, 8);
}

- (WAEngine)engine
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  return WeakRetained;
}

@end