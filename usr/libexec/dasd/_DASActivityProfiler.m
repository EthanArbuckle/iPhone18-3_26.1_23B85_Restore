@interface _DASActivityProfiler
+ (id)sharedProfiler;
- (BOOL)errorCheck:(unint64_t)a3 withError:(int)a4 onActivity:(id)a5;
- (BOOL)isProfilingDelayedForActivity:(id)a3;
- (BOOL)shouldProfileActivity:(id)a3;
- (_DASActivityProfiler)init;
- (id)startRecordingNetworkTransfer:(id)a3;
- (id)stopRecordingNetworkTransfer:(id)a3;
- (void)endProfilingForActivity:(id)a3 completed:(BOOL)a4 withState:(id)a5;
- (void)queue_startProfilingForActivity:(id)a3 withState:(id)a4;
- (void)startProfilingForActivity:(id)a3 withState:(id)a4;
- (void)startProfilingSnapshotForActivity:(id)a3 withState:(id)a4;
@end

@implementation _DASActivityProfiler

- (_DASActivityProfiler)init
{
  v25.receiver = self;
  v25.super_class = _DASActivityProfiler;
  v2 = [(_DASActivityProfiler *)&v25 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    activityToSession = v2->_activityToSession;
    v2->_activityToSession = v3;

    v5 = +[NSMutableDictionary dictionary];
    activityToSnapshot = v2->_activityToSnapshot;
    v2->_activityToSnapshot = v5;

    v7 = +[NSMutableDictionary dictionary];
    activityToProfile = v2->_activityToProfile;
    v2->_activityToProfile = v7;

    v9 = +[NSMutableDictionary dictionary];
    activityToProfilerStartDates = v2->_activityToProfilerStartDates;
    v2->_activityToProfilerStartDates = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_BACKGROUND, 0);
    v13 = dispatch_queue_create("com.apple.duetactivityscheduler.activityProfiler", v12);
    queue = v2->_queue;
    v2->_queue = v13;

    v15 = [AnalyticsWorkspace alloc];
    v16 = [v15 initWorkspaceWithService:kSymptomAnalyticsServiceEndpoint];
    if (!v16)
    {
      v17 = qword_10020B5A8;
      if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_INFO))
      {
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Init: Error setting up symptom workspace", v24, 2u);
      }
    }

    v18 = [[UsageFeed alloc] initWithWorkspace:v16];
    symptomsFeed = v2->_symptomsFeed;
    v2->_symptomsFeed = v18;

    if (!v2->_symptomsFeed && os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_ERROR))
    {
      sub_100123010();
    }

    v20 = +[_DASBatteryTemperatureRecorder sharedInstance];
    batteryTemperatureRecorder = v2->_batteryTemperatureRecorder;
    v2->_batteryTemperatureRecorder = v20;

    mediaanalysisActivities = v2->_mediaanalysisActivities;
    v2->_mediaanalysisActivities = &off_1001CADC8;

    if (notify_register_check([@"com.apple.mediaanalysisd.serviceProcessID" UTF8String], &v2->_pidToken) && os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_ERROR))
    {
      sub_100123050();
    }
  }

  return v2;
}

+ (id)sharedProfiler
{
  v3 = [_DASDaemonLogger logForCategory:@"profiling"];
  v4 = qword_10020B5A8;
  qword_10020B5A8 = v3;

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100087D40;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
  if (qword_10020B5B0 != -1)
  {
    dispatch_once(&qword_10020B5B0, block);
  }

  v5 = qword_10020B5B8;

  return v5;
}

- (BOOL)isProfilingDelayedForActivity:(id)a3
{
  mediaanalysisActivities = self->_mediaanalysisActivities;
  v4 = [a3 name];
  LOBYTE(mediaanalysisActivities) = [(NSArray *)mediaanalysisActivities containsObject:v4];

  return mediaanalysisActivities;
}

- (void)startProfilingForActivity:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100087EA8;
  block[3] = &unk_1001B56B8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)queue_startProfilingForActivity:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(_DASActivityProfiler *)self shouldProfileActivity:v6])
  {
    v8 = qword_10020B5A8;
    if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Starting profiling on activity %@", &v9, 0xCu);
    }

    [(_DASActivityProfiler *)self startProfilingSnapshotForActivity:v6 withState:v7];
  }
}

- (BOOL)shouldProfileActivity:(id)a3
{
  v4 = a3;
  if (![v4 pid])
  {
    v8 = qword_10020B5A8;
    if (!os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_INFO))
    {
LABEL_8:
      v14 = 0;
      goto LABEL_23;
    }

    v9 = v8;
    [v4 interval];
    v32 = 138412546;
    v33 = v4;
    v34 = 2048;
    v35 = v10;
    v11 = "Profiling not started for %@, interval: %f";
    v12 = v9;
    v13 = 22;
LABEL_7:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v11, &v32, v13);

    goto LABEL_8;
  }

  v5 = [v4 name];
  v6 = [v5 isEqualToString:@"com.apple.fileproviderd.background-download"];

  if (v6)
  {
    v7 = qword_10020B5A8;
    if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_INFO))
    {
      v32 = 138412290;
      v33 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Profiling enabled for fileproviderd background-download activity: %@", &v32, 0xCu);
    }

    goto LABEL_11;
  }

  if (([v4 isIntensive] & 1) == 0 && (objc_msgSend(v4, "requiresNetwork") & 1) == 0)
  {
    v30 = qword_10020B5A8;
    if (!os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_8;
    }

    v9 = v30;
    v32 = 138412546;
    v33 = v4;
    v34 = 1024;
    LODWORD(v35) = [v4 isIntensive];
    v11 = "Profiling not started for %@, isIntensive: %d";
    v12 = v9;
    v13 = 18;
    goto LABEL_7;
  }

LABEL_11:
  activityToProfilerStartDates = self->_activityToProfilerStartDates;
  v16 = [v4 name];
  v17 = [(NSMutableDictionary *)activityToProfilerStartDates objectForKeyedSubscript:v16];

  if (!v17)
  {
    v18 = [NSMutableArray arrayWithCapacity:3];
    v19 = self->_activityToProfilerStartDates;
    v20 = [v4 name];
    [(NSMutableDictionary *)v19 setObject:v18 forKeyedSubscript:v20];
  }

  v21 = self->_activityToProfilerStartDates;
  v22 = [v4 name];
  v23 = [(NSMutableDictionary *)v21 objectForKeyedSubscript:v22];

  if ([v23 count] == 3)
  {
    v24 = [v23 lastObject];
    v25 = +[NSDate date];
    v26 = 0;
    while (1)
    {
      [v25 timeIntervalSinceDate:v24];
      if (v27 <= 60.0)
      {
        break;
      }

      [v23 removeObject:v24];
      v28 = [v23 lastObject];

      --v26;
      v24 = v28;
      if (v26 == -3)
      {
        goto LABEL_20;
      }
    }

    if (v26)
    {
      v28 = v24;
LABEL_20:

      goto LABEL_21;
    }

    v31 = qword_10020B5A8;
    if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 138412290;
      v33 = v4;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Profiling not started for %@, rate limited", &v32, 0xCu);
    }

    v14 = 0;
  }

  else
  {
LABEL_21:
    v24 = [v4 startDate];
    [v23 insertObject:v24 atIndex:0];
    v14 = 1;
  }

LABEL_23:
  return v14;
}

- (void)startProfilingSnapshotForActivity:(id)a3 withState:(id)a4
{
  v6 = a3;
  v61 = 0;
  v7 = a4;
  v8 = +[NSMutableDictionary dictionary];
  [v8 setObject:&off_1001CA090 forKeyedSubscript:@"version"];
  v9 = [v6 name];
  [v8 setObject:v9 forKeyedSubscript:@"activityname"];

  v10 = [NSNumber numberWithUnsignedLongLong:sub_100009078()];
  [v8 setObject:v10 forKeyedSubscript:@"cpuAwakeTime"];

  v11 = +[NSTimeZone localTimeZone];
  v12 = [v11 secondsFromGMT];

  v13 = [v6 startDate];

  if (v13)
  {
    v14 = [v6 startDate];
    [v14 timeIntervalSince1970WithTimeZoneOffset:v12];
    v15 = [NSNumber numberWithDouble:?];
    [v8 setObject:v15 forKeyedSubscript:@"startTime"];
  }

  else
  {
    [v8 setObject:&off_1001CA0A8 forKeyedSubscript:@"startTime"];
  }

  v16 = +[_CDContextQueries keyPathForPluginStatus];
  v17 = [v7 objectForKeyedSubscript:v16];
  v18 = [v17 BOOLValue];

  v19 = +[_CDContextQueries keyPathForInUseStatus];
  v20 = [v7 objectForKeyedSubscript:v19];

  v21 = [v20 unsignedLongLongValue];
  v22 = v21 == 0;
  v23 = [(_DASBatteryTemperatureRecorder *)self->_batteryTemperatureRecorder currentBatteryTemperature];
  v24 = [NSNumber numberWithInt:v18 ^ 1];
  [v8 setObject:v24 forKeyedSubscript:@"startedOnBattery"];

  v25 = [NSNumber numberWithBool:v22];
  [v8 setObject:v25 forKeyedSubscript:@"startedInIdle"];

  v26 = [NSNumber numberWithInteger:v23];
  [v8 setObject:v26 forKeyedSubscript:@"startBatteryTemperature"];

  [v6 setStartedOnBattery:v18 ^ 1];
  [v6 setStartedInIdle:v22];
  activityToProfile = self->_activityToProfile;
  v28 = [v6 description];
  [(NSMutableDictionary *)activityToProfile setObject:v8 forKeyedSubscript:v28];

  if ([(_DASActivityProfiler *)self isProfilingDelayedForActivity:v6])
  {
    v60 = 0;
    state = notify_get_state(self->_pidToken, &v60);
    v30 = qword_10020B5A8;
    if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v60;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "PID number found for mediaanalysisd-service is (%lu)\n", buf, 0xCu);
    }

    if (state && os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_ERROR))
    {
      sub_100123110();
    }

    if (v60)
    {
      [v6 setPid:?];
    }
  }

  v31 = pc_session_create();
  [v6 pid];
  v32 = pc_session_set_procpid();
  if (v32)
  {
    v33 = v32;
    v34 = qword_10020B5A8;
    if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
    {
      sub_10012318C(v6, v34, v33);
    }

    v35 = 0;
LABEL_19:
    pc_session_destroy();
    activityToSession = self->_activityToSession;
    v40 = [v6 description];
    [(NSMutableDictionary *)activityToSession removeObjectForKey:v40];
    goto LABEL_20;
  }

  v35 = [NSValue valueWithPointer:v31];
  v36 = pc_session_begin();
  v37 = qword_10020B5A8;
  v38 = os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG);
  if (v36)
  {
    if (v38)
    {
      sub_100123228(v6, v37, v36);
    }

    goto LABEL_19;
  }

  if (v38)
  {
    sub_1001232C4();
  }

  v59 = self->_activityToSession;
  v40 = [v6 description];
  [(NSMutableDictionary *)v59 setObject:v35 forKeyedSubscript:v40];
LABEL_20:

  v41 = +[NSMutableDictionary dictionary];
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  *buf = 0u;
  *__error() = 255;
  if (proc_pid_rusage([v6 pid], 6, buf) << 24)
  {
    v42 = qword_10020B5A8;
    if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
    {
      sub_10012332C(v6, v42);
    }

    [v41 removeObjectForKey:@"rusage"];
  }

  else
  {
    v43 = +[NSMutableDictionary dictionary];
    v44 = [NSNumber numberWithDouble:v78];
    [v43 setObject:v44 forKeyedSubscript:@"cpuCycle"];

    v45 = [NSNumber numberWithDouble:v72];
    [v43 setObject:v45 forKeyedSubscript:@"qosDefault"];

    v46 = [NSNumber numberWithDouble:*(&v72 + 1)];
    [v43 setObject:v46 forKeyedSubscript:@"qosMaintenance"];

    v47 = [NSNumber numberWithDouble:v73];
    [v43 setObject:v47 forKeyedSubscript:@"qosBackground"];

    v48 = [NSNumber numberWithDouble:*(&v73 + 1)];
    [v43 setObject:v48 forKeyedSubscript:@"qosUtility"];

    v49 = [NSNumber numberWithDouble:*(&v74 + 1)];
    [v43 setObject:v49 forKeyedSubscript:@"qosUserInit"];

    v50 = [NSNumber numberWithDouble:v75];
    [v43 setObject:v50 forKeyedSubscript:@"qosUserInteractive"];

    v51 = [NSNumber numberWithDouble:v74];
    [v43 setObject:v51 forKeyedSubscript:@"qosLegacy"];

    v52 = [NSNumber numberWithDouble:v71];
    [v43 setObject:v52 forKeyedSubscript:@"ioRead"];

    v53 = [NSNumber numberWithDouble:*(&v71 + 1)];
    [v43 setObject:v53 forKeyedSubscript:@"ioWrite"];

    v54 = [NSNumber numberWithDouble:*(&v78 + 1)];
    [v43 setObject:v54 forKeyedSubscript:@"billedEnergy"];

    v55 = [NSNumber numberWithDouble:v79];
    [v43 setObject:v55 forKeyedSubscript:@"servicedEnergy"];

    [v41 setObject:v43 forKeyedSubscript:@"rusage"];
    if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
    {
      sub_1001233E0();
    }
  }

  v56 = [(_DASActivityProfiler *)self startRecordingNetworkTransfer:v6];
  if (v56)
  {
    [v41 setObject:v56 forKeyedSubscript:@"network"];
    if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
    {
      sub_100123448();
    }
  }

  else
  {
    [v41 removeObjectForKey:@"network"];
    if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
    {
      sub_1001234B0();
    }
  }

  activityToSnapshot = self->_activityToSnapshot;
  v58 = [v6 description];
  [(NSMutableDictionary *)activityToSnapshot setObject:v41 forKeyedSubscript:v58];
}

- (void)endProfilingForActivity:(id)a3 completed:(BOOL)a4 withState:(id)a5
{
  v8 = a3;
  v9 = a5;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100088D00;
  v13[3] = &unk_1001B7200;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, v13);
}

- (id)startRecordingNetworkTransfer:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v34 = 0;
  v38 = 0;
  v42 = 0;
  v6 = dispatch_semaphore_create(0);
  v7 = +[_DASUtils processNameFromPID:](_DASUtils, "processNameFromPID:", [v4 pid]);
  if (!v7)
  {
    if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
    {
      sub_1001238C0();
    }

    goto LABEL_12;
  }

  if (![v4 pid] || (+[NSSet setWithObject:](NSSet, "setWithObject:", v7), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
    {
      sub_100123858();
    }

LABEL_12:
    v13 = 0;
    goto LABEL_17;
  }

  v19 = kUsageProcessProcName;
  v43 = kSymptomAnalyticsServiceRefreshUsage;
  v44 = &__kCFBooleanTrue;
  v9 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10008A5B4;
  v20[3] = &unk_1001B7228;
  v23 = &v39;
  v24 = &v31;
  v25 = &v35;
  v26 = &v27;
  v21 = v4;
  v10 = v6;
  v22 = v10;
  v11 = objc_retainBlock(v20);
  if (([(UsageFeed *)self->_symptomsFeed usageToDateWithOptionsFor:v8 nameKind:v19 options:v9 reply:v11]& 1) != 0)
  {
    v12 = dispatch_time(0, 10000000000);
    if (!dispatch_semaphore_wait(v10, v12))
    {
      v15 = [NSNumber numberWithDouble:v40[3]];
      [v5 setObject:v15 forKeyedSubscript:@"wifiDown"];

      v16 = [NSNumber numberWithDouble:v36[3]];
      [v5 setObject:v16 forKeyedSubscript:@"wifiUp"];

      v17 = [NSNumber numberWithDouble:v32[3]];
      [v5 setObject:v17 forKeyedSubscript:@"cellDown"];

      v18 = [NSNumber numberWithDouble:v28[3]];
      [v5 setObject:v18 forKeyedSubscript:@"cellUp"];

      if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
      {
        sub_1001237F0();
      }

      v13 = v5;
      goto LABEL_16;
    }

    if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
    {
      sub_100123788();
    }
  }

  else if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
  {
    sub_100123720();
  }

  v13 = 0;
LABEL_16:

LABEL_17:
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);

  return v13;
}

- (id)stopRecordingNetworkTransfer:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v35 = 0;
  v39 = 0;
  v43 = 0;
  v6 = dispatch_semaphore_create(0);
  v7 = +[_DASUtils processNameFromPID:](_DASUtils, "processNameFromPID:", [v4 pid]);
  if (!v7)
  {
    if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
    {
      sub_100123B38();
    }

    goto LABEL_15;
  }

  if ([v4 requestsApplicationLaunch])
  {
    v8 = [v4 relatedApplications];
    v9 = [NSSet setWithArray:v8];

    if (!v9)
    {
      goto LABEL_13;
    }
  }

  else if (![v4 pid] || (+[NSSet setWithObject:](NSSet, "setWithObject:", v7), (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_13:
    if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
    {
      sub_100123AD0();
    }

LABEL_15:
    v14 = 0;
    goto LABEL_20;
  }

  v20 = kUsageProcessProcName;
  v44 = kSymptomAnalyticsServiceRefreshUsage;
  v45 = &__kCFBooleanTrue;
  v10 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10008ACC0;
  v21[3] = &unk_1001B7228;
  v24 = &v40;
  v25 = &v32;
  v26 = &v36;
  v27 = &v28;
  v22 = v4;
  v11 = v6;
  v23 = v11;
  v12 = objc_retainBlock(v21);
  if (([(UsageFeed *)self->_symptomsFeed usageToDateWithOptionsFor:v9 nameKind:v20 options:v10 reply:v12]& 1) != 0)
  {
    v13 = dispatch_time(0, 10000000000);
    if (!dispatch_semaphore_wait(v11, v13))
    {
      v16 = [NSNumber numberWithDouble:v41[3]];
      [v5 setObject:v16 forKeyedSubscript:@"wifiDown"];

      v17 = [NSNumber numberWithDouble:v37[3]];
      [v5 setObject:v17 forKeyedSubscript:@"wifiUp"];

      v18 = [NSNumber numberWithDouble:v33[3]];
      [v5 setObject:v18 forKeyedSubscript:@"cellDown"];

      v19 = [NSNumber numberWithDouble:v29[3]];
      [v5 setObject:v19 forKeyedSubscript:@"cellUp"];

      if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
      {
        sub_100123A68();
      }

      v14 = v5;
      goto LABEL_19;
    }

    if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
    {
      sub_100123A00();
    }
  }

  else if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
  {
    sub_100123998();
  }

  v14 = 0;
LABEL_19:

LABEL_20:
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);

  return v14;
}

- (BOOL)errorCheck:(unint64_t)a3 withError:(int)a4 onActivity:(id)a5
{
  v6 = a5;
  if (a4)
  {
    if (a4 > 44)
    {
      if (a4 == 45)
      {
        if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_ERROR))
        {
          sub_100123CE0();
        }
      }

      else if (a4 == 93 && os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_ERROR))
      {
        sub_100123C10();
      }
    }

    else if (a4 == 22)
    {
      if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_ERROR))
      {
        sub_100123D48();
      }
    }

    else if (a4 == 34 && os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_ERROR))
    {
      sub_100123C78();
    }
  }

  return a4 != 0;
}

@end