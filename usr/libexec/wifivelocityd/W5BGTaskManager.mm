@interface W5BGTaskManager
- (BOOL)scheduleRepeatingTask:(id)a3 interval:(double)a4 repeatingTask:(id)a5;
- (W5BGTaskManager)init;
- (void)dealloc;
- (void)stopAllRepeatingTasks;
@end

@implementation W5BGTaskManager

- (W5BGTaskManager)init
{
  self->_scheduler = 0;
  v4.receiver = self;
  v4.super_class = W5BGTaskManager;
  v2 = [(W5BGTaskManager *)&v4 init];
  if (v2)
  {
    if (objc_opt_class())
    {
      v2->_scheduler = +[BGSystemTaskScheduler sharedScheduler];
      v2->_registeredIdentifiers = objc_alloc_init(NSMutableArray);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

- (BOOL)scheduleRepeatingTask:(id)a3 interval:(double)a4 repeatingTask:(id)a5
{
  if ([(NSMutableArray *)self->_registeredIdentifiers containsObject:?])
  {
    v9 = sub_100098A04();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315906;
      v23 = "[W5BGTaskManager scheduleRepeatingTask:interval:repeatingTask:]";
      v24 = 2080;
      v25 = "W5BGTaskManager.m";
      v26 = 1024;
      v27 = 40;
      v28 = 2114;
      v29 = a3;
LABEL_9:
      _os_log_send_and_compose_impl();
      return 0;
    }

    return 0;
  }

  scheduler = self->_scheduler;
  if (!scheduler)
  {
    return 0;
  }

  if (([(BGSystemTaskScheduler *)scheduler registerForTaskWithIdentifier:a3 usingQueue:0 launchHandler:a5]& 1) == 0)
  {
    v18 = sub_100098A04();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v22 = 136315906;
    v23 = "[W5BGTaskManager scheduleRepeatingTask:interval:repeatingTask:]";
    v24 = 2080;
    v25 = "W5BGTaskManager.m";
    v26 = 1024;
    v27 = 50;
    v28 = 2114;
    v29 = a3;
    goto LABEL_9;
  }

  if ([(BGSystemTaskScheduler *)self->_scheduler taskRequestForIdentifier:a3])
  {
    v11 = sub_100098A04();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315906;
      v23 = "[W5BGTaskManager scheduleRepeatingTask:interval:repeatingTask:]";
      v24 = 2080;
      v25 = "W5BGTaskManager.m";
      v26 = 1024;
      v27 = 53;
      v28 = 2114;
      v29 = a3;
      goto LABEL_9;
    }

    return 0;
  }

  v14 = [[BGRepeatingSystemTaskRequest alloc] initWithIdentifier:a3];
  [v14 setRequiresNetworkConnectivity:0];
  [v14 setRequiresExternalPower:0];
  [v14 setInterval:a4];
  [v14 setMinDurationBetweenInstances:a4];
  [v14 setShouldWakeDevice:0];
  v21 = 0;
  v12 = [+[BGSystemTaskScheduler sharedScheduler](BGSystemTaskScheduler "sharedScheduler")];
  v15 = sub_100098A04();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v16)
    {
      v22 = 136315906;
      v23 = "[W5BGTaskManager scheduleRepeatingTask:interval:repeatingTask:]";
      v24 = 2080;
      v25 = "W5BGTaskManager.m";
      v26 = 1024;
      v27 = 70;
      v28 = 2114;
      v29 = a3;
      LODWORD(v20) = 38;
      v19 = &v22;
      _os_log_send_and_compose_impl();
    }

    [(NSMutableArray *)self->_registeredIdentifiers addObject:a3, v19, v20];
  }

  else if (v16)
  {
    v17 = v21;
    if (!v21)
    {
      v17 = @"Unknown";
    }

    v22 = 136315906;
    v23 = "[W5BGTaskManager scheduleRepeatingTask:interval:repeatingTask:]";
    v24 = 2080;
    v25 = "W5BGTaskManager.m";
    v26 = 1024;
    v27 = 66;
    v28 = 2114;
    v29 = v17;
    _os_log_send_and_compose_impl();
  }

  return v12;
}

- (void)stopAllRepeatingTasks
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  if (self->_scheduler)
  {
    v3 = [(NSMutableArray *)self->_registeredIdentifiers count];
    v4 = sub_100098A04();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315906;
      v12 = "[W5BGTaskManager stopAllRepeatingTasks]";
      v13 = 2080;
      v14 = "W5BGTaskManager.m";
      v15 = 1024;
      v16 = 87;
      v17 = 2048;
      v18 = v3;
      LODWORD(v7) = 38;
      v6 = &v11;
      _os_log_send_and_compose_impl();
    }

    registeredIdentifiers = self->_registeredIdentifiers;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000023BC;
    v8[3] = &unk_1000E0FB0;
    v8[4] = self;
    v8[5] = v9;
    [(NSMutableArray *)self->_registeredIdentifiers removeObjectsAtIndexes:[(NSMutableArray *)registeredIdentifiers indexesOfObjectsPassingTest:v8, v6, v7]];
  }

  _Block_object_dispose(v9, 8);
}

- (void)dealloc
{
  scheduler = self->_scheduler;
  if (scheduler)
  {
  }

  registeredIdentifiers = self->_registeredIdentifiers;
  if (registeredIdentifiers)
  {
  }

  v5.receiver = self;
  v5.super_class = W5BGTaskManager;
  [(W5BGTaskManager *)&v5 dealloc];
}

@end