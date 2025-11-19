@interface _DASBackgroundAppKillDemo
+ (id)sharedInstance;
- (_DASBackgroundAppKillDemo)init;
- (id)createTerminationRequestForProcessHandle:(id)a3;
- (void)handleNotification;
- (void)processUpdateHandlerWithMonitor:(id)a3 withHandle:(id)a4 withUpdate:(id)a5;
- (void)startKilling;
- (void)stopKilling;
@end

@implementation _DASBackgroundAppKillDemo

+ (id)sharedInstance
{
  if (qword_10020B490 != -1)
  {
    sub_100121CD4();
  }

  v3 = qword_10020B498;

  return v3;
}

- (_DASBackgroundAppKillDemo)init
{
  v17.receiver = self;
  v17.super_class = _DASBackgroundAppKillDemo;
  v2 = [(_DASBackgroundAppKillDemo *)&v17 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.duetactivityscheduler", "bgappkilldemo");
    log = v2->_log;
    v2->_log = v3;

    v5 = v2->_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Created BGAppKillDemo instance", buf, 2u);
    }

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.dasd.BGAppKillDemo", v6);
    queue = v2->_queue;
    v2->_queue = v7;

    v9 = +[NSMutableDictionary dictionary];
    appNameToTerminationRequestDict = v2->_appNameToTerminationRequestDict;
    v2->_appNameToTerminationRequestDict = v9;

    v11 = v2->_queue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10007418C;
    handler[3] = &unk_1001B5B78;
    v12 = v2;
    v15 = v12;
    notify_register_dispatch("com.apple.dasd.BGAppKillDemo.statusChanged", &unk_10020B4A0, v11, handler);
    [(_DASBackgroundAppKillDemo *)v12 handleNotification];
  }

  return v2;
}

- (id)createTerminationRequestForProcessHandle:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc_init(RBSTerminateContext) initWithExplanation:@"BG Kill Demo"];
  [v5 setMaximumTerminationResistance:40];
  v6 = [RBSProcessPredicate predicateMatchingHandle:v4];
  v7 = [[RBSTerminateRequest alloc] initWithPredicate:v6 context:v5];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v9 = log;
    v10 = [v7 debugDescription];
    v11 = [v4 bundle];
    v12 = [v11 identifier];
    v14 = 138412546;
    v15 = v10;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Termination request %@ created for %@", &v14, 0x16u);
  }

  return v7;
}

- (void)handleNotification
{
  v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.dasd.appResume"];
  if ([v3 BOOLForKey:@"BGAppKillDemo"])
  {
    [(_DASBackgroundAppKillDemo *)self startKilling];
  }

  else
  {
    [(_DASBackgroundAppKillDemo *)self stopKilling];
  }
}

- (void)startKilling
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Starting killing apps in the background", buf, 2u);
  }

  v4 = +[RBSProcessPredicate predicateMatchingLaunchServicesProcesses];
  v5 = +[RBSProcessStateDescriptor descriptor];
  [v5 setValues:1];
  [v5 setEndowmentNamespaces:&off_1001CADB0];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100074544;
  v15[3] = &unk_1001B5EB8;
  v15[4] = self;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007463C;
  v11[3] = &unk_1001B5EE0;
  v12 = v4;
  v13 = v5;
  v14 = objc_retainBlock(v15);
  v6 = v14;
  v7 = v5;
  v8 = v4;
  v9 = [RBSProcessMonitor monitorWithConfiguration:v11];
  processMonitor = self->_processMonitor;
  self->_processMonitor = v9;
}

- (void)stopKilling
{
  [(NSMutableDictionary *)self->_appNameToTerminationRequestDict removeAllObjects];
  processMonitor = self->_processMonitor;
  if (processMonitor)
  {
    [(RBSProcessMonitor *)processMonitor invalidate];
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Stopped killing apps in the background", v5, 2u);
  }
}

- (void)processUpdateHandlerWithMonitor:(id)a3 withHandle:(id)a4 withUpdate:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v8 state];
  if ([v9 taskState] == 4)
  {
    v10 = [v8 state];
    v11 = [v10 endowmentNamespaces];
    v12 = [v11 containsObject:@"com.apple.frontboard.visibility"];

    if (v12)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        v14 = log;
        v15 = [v7 bundle];
        v16 = [v15 identifier];
        *buf = 138412290;
        v49 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "App %@ foregrounded, creating a termination request", buf, 0xCu);
      }

      v17 = [(_DASBackgroundAppKillDemo *)self createTerminationRequestForProcessHandle:v7];
      appNameToTerminationRequestDict = self->_appNameToTerminationRequestDict;
      v19 = [v7 bundle];
      v20 = [v19 identifier];
      [(NSMutableDictionary *)appNameToTerminationRequestDict setObject:v17 forKeyedSubscript:v20];
      goto LABEL_22;
    }
  }

  else
  {
  }

  v21 = [v8 state];
  v22 = [v21 taskState];

  if (v22 == 3)
  {
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      v25 = [v7 bundle];
      v26 = [v25 identifier];
      *buf = 138412290;
      v49 = v26;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "App %@ suspended", buf, 0xCu);
    }

    v27 = self->_appNameToTerminationRequestDict;
    v28 = [v7 bundle];
    v29 = [v28 identifier];
    v30 = [(NSMutableDictionary *)v27 objectForKeyedSubscript:v29];

    if (v30)
    {
      v31 = self->_appNameToTerminationRequestDict;
      v32 = [v7 bundle];
      v33 = [v32 identifier];
      v17 = [(NSMutableDictionary *)v31 objectForKeyedSubscript:v33];

      v34 = self->_log;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v17;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Executing termination request %@", buf, 0xCu);
      }

      v47 = 0;
      v35 = [v17 execute:&v47];
      v19 = v47;
      v36 = self->_log;
      v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
      if (v35)
      {
        if (v37)
        {
          v38 = v36;
          v39 = [v7 bundle];
          v40 = [v39 identifier];
          *buf = 138412290;
          v49 = v40;
          v41 = "App %@ should be killed";
LABEL_20:
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, v41, buf, 0xCu);
        }
      }

      else if (v37)
      {
        v38 = v36;
        v39 = [v7 bundle];
        v40 = [v39 identifier];
        *buf = 138412290;
        v49 = v40;
        v41 = "App %@ couldn't be killed";
        goto LABEL_20;
      }

      v45 = self->_appNameToTerminationRequestDict;
      v20 = [v7 bundle];
      v46 = [v20 identifier];
      [(NSMutableDictionary *)v45 removeObjectForKey:v46];

LABEL_22:
      goto LABEL_23;
    }

    v42 = self->_log;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = v42;
      v17 = [v7 bundle];
      v44 = [v17 identifier];
      *buf = 138412290;
      v49 = v44;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Termination request wasn't created for %@", buf, 0xCu);

LABEL_23:
    }
  }
}

@end