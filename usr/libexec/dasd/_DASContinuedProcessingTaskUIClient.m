@interface _DASContinuedProcessingTaskUIClient
+ (id)sharedClient;
+ (void)initialize;
- (APKActivityProgressUIServer)server;
- (_DASContinuedProcessingTaskUIClient)init;
- (int64_t)expirationEventForSuspendedActivity:(id)a3;
- (void)activateConnection;
- (void)activitiesBeganRunning:(id)a3;
- (void)activitiesWereSubmitted:(id)a3;
- (void)activitiesWereSuspended:(id)a3;
- (void)beginActivity:(id)a3 startingProgress:(id)a4;
- (void)cancelActivities:(id)a3;
- (void)cleanupActivity:(id)a3 didComplete:(BOOL)a4;
- (void)dealloc;
- (void)eventResultReceivedForActivity:(id)a3 event:(id)a4 result:(id)a5;
- (void)invalidateConnection;
- (void)postActivityEvent:(int64_t)a3 forIdentifier:(id)a4;
- (void)resetConnection;
- (void)startActivityWithIdentifier:(id)a3 bundleIdentifier:(id)a4 imageUTI:(id)a5 activityName:(id)a6 activityDescription:(id)a7 progress:(id)a8;
- (void)updateMetadataForActivity:(id)a3;
- (void)updateProgress:(id)a3 forIdentifier:(id)a4;
- (void)updateProgressForActivity:(id)a3;
@end

@implementation _DASContinuedProcessingTaskUIClient

+ (void)initialize
{
  if (sub_1000B6678())
  {
    [sub_1000B4A8C() load];
    v4 = 0;
    v5 = &v4;
    v6 = 0x2050000000;
    v2 = qword_10020B730;
    v7 = qword_10020B730;
    if (!qword_10020B730)
    {
      sub_1000B6678();
      v5[3] = objc_getClass("APKActivityProgressTasksSpecifier");
      qword_10020B730 = v5[3];
      v2 = v5[3];
    }

    v3 = v2;
    _Block_object_dispose(&v4, 8);
    [v2 load];
  }
}

- (_DASContinuedProcessingTaskUIClient)init
{
  if (sub_1000B6678())
  {
    v13.receiver = self;
    v13.super_class = _DASContinuedProcessingTaskUIClient;
    v3 = [(_DASContinuedProcessingTaskUIClient *)&v13 init];
    if (v3)
    {
      v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v5 = dispatch_queue_create("com.apple.dasd.progressuiqueue", v4);
      queue = v3->_queue;
      v3->_queue = v5;

      v7 = os_log_create("com.apple.duetactivityscheduler", "ContinuedProgress");
      log = v3->_log;
      v3->_log = v7;

      v9 = +[_DASDaemon sharedInstance];
      daemon = v3->_daemon;
      v3->_daemon = v9;

      [(_DASContinuedProcessingTaskUIClient *)v3 activateConnection];
      [(_DASDaemon *)v3->_daemon registerForActivityLifecycleObservation:v3];
    }

    self = v3;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)sharedClient
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B4D24;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
  if (qword_10020B710 != -1)
  {
    dispatch_once(&qword_10020B710, block);
  }

  v2 = qword_10020B718;

  return v2;
}

- (APKActivityProgressUIServer)server
{
  v2 = self;
  objc_sync_enter(v2);
  server = v2->_server;
  if (!server)
  {
    [(_DASContinuedProcessingTaskUIClient *)v2 resetConnection];
    server = v2->_server;
  }

  v4 = server;
  objc_sync_exit(v2);

  return v4;
}

- (void)resetConnection
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Connection was previously invalidated, re-establishing connection", v4, 2u);
  }

  [(_DASContinuedProcessingTaskUIClient *)self invalidateConnection];
  [(_DASContinuedProcessingTaskUIClient *)self activateConnection];
}

- (void)activateConnection
{
  v3 = [BSMutableServiceInterface interfaceWithIdentifier:@"com.apple.activityprogress.activityprogressui.session-service"];
  v4 = [BSObjCProtocol protocolForProtocol:&OBJC_PROTOCOL___APKActivityProgressUIServer];
  [v3 setServer:v4];

  v5 = [BSObjCProtocol protocolForProtocol:&OBJC_PROTOCOL___APKActivityProgressUIClient];
  [v3 setClient:v5];

  v6 = [BSServiceConnectionEndpoint endpointForMachName:@"com.apple.activityprogress.activityprogressui.services" service:@"com.apple.activityprogress.activityprogressui.session-service" instance:0];
  v7 = [BSServiceConnection connectionWithEndpoint:v6];
  connection = self->_connection;
  self->_connection = v7;

  v9 = self->_connection;
  if (v9)
  {
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1000B50B8;
    v18 = &unk_1001B7E58;
    v19 = v3;
    v20 = self;
    [(BSServiceConnectionClient *)v9 configureConnection:&v15];
    [(BSServiceConnectionClient *)self->_connection activate:v15];
    v10 = [RBSDomainAttribute attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
    v11 = self->_connection;
    v21 = v10;
    v12 = [NSArray arrayWithObjects:&v21 count:1];
    v13 = [(BSServiceConnectionClient *)v11 remoteTargetWithLaunchingAssertionAttributes:v12];
    server = self->_server;
    self->_server = v13;

    if (!self->_server)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_100128A94(&self->_connection);
      }

      [(_DASContinuedProcessingTaskUIClient *)self invalidateConnection];
    }
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100128B0C();
    }

    [(_DASContinuedProcessingTaskUIClient *)self invalidateConnection];
  }
}

- (void)invalidateConnection
{
  [(BSServiceConnectionClient *)self->_connection invalidate];
  server = self->_server;
  self->_server = 0;

  connection = self->_connection;
  self->_connection = 0;
}

- (void)dealloc
{
  [(BSServiceConnectionClient *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = _DASContinuedProcessingTaskUIClient;
  [(_DASContinuedProcessingTaskUIClient *)&v3 dealloc];
}

- (void)updateProgressForActivity:(id)a3
{
  v4 = a3;
  v6 = [v4 progress];
  v5 = [v4 uuid];

  [(_DASContinuedProcessingTaskUIClient *)self updateProgress:v6 forIdentifier:v5];
}

- (void)updateMetadataForActivity:(id)a3
{
  v4 = a3;
  v9 = [v4 continuedProcessingWrapper];
  v5 = [v9 title];
  v6 = [v4 continuedProcessingWrapper];
  v7 = [v6 subtitle];
  v8 = [v4 uuid];

  [(_DASContinuedProcessingTaskUIClient *)self updateTitle:v5 description:v7 forIdentifier:v8 playHaptics:0];
}

- (void)startActivityWithIdentifier:(id)a3 bundleIdentifier:(id)a4 imageUTI:(id)a5 activityName:(id)a6 activityDescription:(id)a7 progress:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a5;
  v20 = objc_alloc(sub_1000B4A8C());
  v21 = v20;
  if (v18)
  {
    v22 = [v20 initWithProgress:v18];
  }

  else
  {
    v23 = objc_alloc_init(NSProgress);
    v22 = [v21 initWithProgress:v23];
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138413058;
    v27 = v14;
    v28 = 2112;
    v29 = v16;
    v30 = 2112;
    v31 = v17;
    v32 = 2112;
    v33 = v15;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "[%@] Starting activity %@ %@, bundleIdentifier: %@", &v26, 0x2Au);
  }

  v25 = [(_DASContinuedProcessingTaskUIClient *)self server];
  [v25 startActivityForIdentifier:v14 bundleIdentifier:v15 imageUTI:v19 activityName:v16 activityDescription:v17 progress:v22];
}

- (void)updateProgress:(id)a3 forIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(sub_1000B4A8C()) initWithProgress:v6];
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100128B8C();
  }

  v9 = [(_DASContinuedProcessingTaskUIClient *)self server];
  [v9 updateProgress:v8 forIdentifier:v7];
}

- (void)cleanupActivity:(id)a3 didComplete:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = log;
    v9 = [v6 uuid];
    v21 = 138412290;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@] Ending activity", &v21, 0xCu);
  }

  if ([v6 isContinuedProcessingTask])
  {
    v10 = [v6 progress];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = objc_opt_new();
    }

    v13 = v12;

    v14 = os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG);
    if (v4)
    {
      if (v14)
      {
        sub_100128C84();
      }

      v15 = [v13 completedUnitCount];
      if (v15 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15;
      }

      [v13 setCompletedUnitCount:v16];
      [v13 setTotalUnitCount:{objc_msgSend(v13, "completedUnitCount")}];
    }

    else
    {
      if (v14)
      {
        sub_100128C10();
      }

      [v13 cancel];
    }

    [v6 setProgress:v13];
    v17 = [_DASDaemonLogger logForCategory:@"ActivityProgress"];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = @"incomplete";
      v21 = 138412802;
      if (v4)
      {
        v18 = @"completed";
      }

      v22 = v18;
      v23 = 2112;
      v24 = v13;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Finishing progress (%@) to %@ for %@", &v21, 0x20u);
    }

    [(_DASContinuedProcessingTaskUIClient *)self updateProgressForActivity:v6];
    v19 = [(_DASContinuedProcessingTaskUIClient *)self server];
    v20 = [v6 uuid];
    [v19 endActivityForIdentifier:v20];
  }
}

- (void)postActivityEvent:(int64_t)a3 forIdentifier:(id)a4
{
  v6 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = log;
    v9 = [NSNumber numberWithInteger:a3];
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@] Posting %@", &v12, 0x16u);
  }

  v10 = [(_DASContinuedProcessingTaskUIClient *)self server];
  v11 = [NSNumber numberWithInteger:a3];
  [v10 handleActivityEvent:v11 forIdentifier:v6];
}

- (void)cancelActivities:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Cancelling activities: %@", &v8, 0xCu);
  }

  daemon = self->_daemon;
  v7 = [v4 taskIdentifiers];
  [(_DASDaemon *)daemon suspendAndCancelActivitiesWithIdentifiers:v7 denialReason:[_DASPolicyManager bitmaskForPolicy:@"UserForcedCancellation"]];
}

- (void)eventResultReceivedForActivity:(id)a3 event:(id)a4 result:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a4 integerValue];
  v11 = [v9 integerValue];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v13 = log;
    v14 = [NSNumber numberWithInteger:v10];
    v15 = [NSNumber numberWithInteger:v11];
    v18 = 138412802;
    v19 = v8;
    v20 = 2112;
    v21 = v14;
    v22 = 2112;
    v23 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%@] Received event result for %@: %@", &v18, 0x20u);
  }

  v16 = +[_DASProgressReportingMonitor sharedMonitor];
  v17 = [v16 trackerForUUID:v8];

  if (v17)
  {
    [v17 eventResultReceivedForEvent:v10 result:v11];
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100128CF8();
  }
}

- (void)activitiesWereSubmitted:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isContinuedProcessingTask])
        {
          v10 = +[NSProgress indeterminateProgress];
          [(_DASContinuedProcessingTaskUIClient *)self beginActivity:v9 startingProgress:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)activitiesBeganRunning:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([v9 isContinuedProcessingTask])
        {
          [(_DASContinuedProcessingTaskUIClient *)self updateProgressForActivity:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)activitiesWereSuspended:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 isContinuedProcessingTask])
        {
          v10 = [(_DASContinuedProcessingTaskUIClient *)self expirationEventForSuspendedActivity:v9];
          v11 = [v9 uuid];
          [(_DASContinuedProcessingTaskUIClient *)self postActivityEvent:v10 forIdentifier:v11];

          [(_DASContinuedProcessingTaskUIClient *)self cleanupActivity:v9 didComplete:0];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (int64_t)expirationEventForSuspendedActivity:(id)a3
{
  v3 = a3;
  objc_sync_enter(v3);
  v4 = [NSDictionary alloc];
  v5 = [v3 policyResponseMetadata];
  v6 = [v4 initWithDictionary:v5 copyItems:1];

  objc_sync_exit(v3);
  v7 = +[_DASLowPowerModePolicy policyInstance];
  v8 = [v7 policyName];
  v9 = [v6 objectForKeyedSubscript:v8];
  v10 = [v9 reason];

  if (v10)
  {
    v23 = 5;
  }

  else
  {
    v11 = +[_DASViewfinderPolicy policyInstance];
    v12 = [v11 policyName];
    v13 = [v6 objectForKeyedSubscript:v12];
    v14 = [v13 reason];

    if (v14)
    {
      v23 = 3;
    }

    else
    {
      v15 = +[_DASConsoleModePolicy policyInstance];
      v16 = [v15 policyName];
      v17 = [v6 objectForKeyedSubscript:v16];
      v18 = [v17 reason];

      if (v18)
      {
        v23 = 4;
      }

      else
      {
        v19 = +[_DASThermalPolicy policyInstance];
        v20 = [v19 policyName];
        v21 = [v6 objectForKeyedSubscript:v20];
        v22 = [v21 reason];

        if ((v22 & 0x18) != 0)
        {
          v23 = 2;
        }

        else
        {
          v23 = 6;
        }
      }
    }
  }

  return v23;
}

- (void)beginActivity:(id)a3 startingProgress:(id)a4
{
  v19 = a3;
  v6 = a4;
  v7 = [v19 continuedProcessingWrapper];
  v8 = [v7 linkToBundleIdentifier];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = [v19 relatedApplications];
    v10 = [v11 firstObject];
  }

  v12 = [v19 uuid];
  v13 = [v19 continuedProcessingWrapper];
  v14 = [v13 iconBundleIdentifier];
  v15 = [v19 continuedProcessingWrapper];
  v16 = [v15 title];
  v17 = [v19 continuedProcessingWrapper];
  v18 = [v17 subtitle];
  [(_DASContinuedProcessingTaskUIClient *)self startActivityWithIdentifier:v12 bundleIdentifier:v10 imageUTI:v14 activityName:v16 activityDescription:v18 progress:v6];
}

@end