@interface _APRSMetricRecorder
+ (id)sharedInstance;
+ (void)reportTrialParameterWithName:(id)a3 value:(unint64_t)a4;
- (BOOL)initializeLedgerIndices;
- (_APRSMetricRecorder)init;
- (id)commonAnalytics;
- (id)getProcessMemoryInfoForPID:(int)a3;
- (id)log;
- (void)checkFrozenApps:(id)a3;
- (void)dealloc;
- (void)loadKernelTrialValues;
- (void)processUpdateHandlerWithMonitor:(id)a3 withHandle:(id)a4 withUpdate:(id)a5;
- (void)recordConfigState;
- (void)recordMemoryMetrics;
- (void)registerForAppStateUpdate;
- (void)registerForPPSDonation;
- (void)reportActivationTimes:(id)a3;
- (void)reportEvent:(id)a3 forApp:(id)a4 forEvent:(unint64_t)a5;
- (void)schedulePPSTimer;
- (void)sendAnalyticsLazyWithCommonFeilds:(id)a3 forEvent:(id)a4;
@end

@implementation _APRSMetricRecorder

- (_APRSMetricRecorder)init
{
  v19.receiver = self;
  v19.super_class = _APRSMetricRecorder;
  v2 = [(_APRSMetricRecorder *)&v19 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.dasd.appState.handlerQueue", v3);
    v5 = *(v2 + 4);
    *(v2 + 4) = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.dasd.appresume.ppsDonation", v6);
    v8 = *(v2 + 5);
    *(v2 + 5) = v7;

    v9 = +[NSMutableDictionary dictionary];
    v10 = *(v2 + 7);
    *(v2 + 7) = v9;

    v11 = +[NSMutableDictionary dictionary];
    v12 = *(v2 + 8);
    *(v2 + 8) = v11;

    v13 = +[NSMutableDictionary dictionary];
    v14 = *(v2 + 9);
    *(v2 + 9) = v13;

    *(v2 + 2) = -1;
    *(v2 + 8) = 0;
    v15 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v2 + 5));
    v16 = *(v2 + 6);
    *(v2 + 6) = v15;

    v17 = qword_10020B9C0;
    qword_10020B9C0 = &off_1001CAD50;

    [v2 registerForAppStateUpdate];
    [v2 loadKernelTrialValues];
    [v2 schedulePPSTimer];
    [v2 registerForPPSDonation];
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_10020AF30 != -1)
  {
    sub_10011D9CC();
  }

  v3 = qword_10020AF38;

  return v3;
}

- (void)dealloc
{
  notifyToken = self->_notifyToken;
  if (notifyToken)
  {
    notify_cancel(notifyToken);
  }

  v4.receiver = self;
  v4.super_class = _APRSMetricRecorder;
  [(_APRSMetricRecorder *)&v4 dealloc];
}

- (id)log
{
  if (qword_10020AF40 != -1)
  {
    sub_10011D9E0();
  }

  v3 = qword_10020AF48;

  return v3;
}

- (void)registerForAppStateUpdate
{
  v3 = [(_APRSMetricRecorder *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Registering for app state change", buf, 2u);
  }

  v4 = +[RBSProcessPredicate predicateMatchingLaunchServicesProcesses];
  v5 = +[RBSProcessStateDescriptor descriptor];
  [v5 setValues:1];
  [v5 setEndowmentNamespaces:&off_1001CAD68];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100030EF4;
  v15[3] = &unk_1001B5EB8;
  v15[4] = self;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100030FEC;
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

- (void)processUpdateHandlerWithMonitor:(id)a3 withHandle:(id)a4 withUpdate:(id)a5
{
  v7 = a5;
  v8 = [a4 bundle];
  v9 = [v8 identifier];

  v10 = [v7 state];
  v47 = v7;
  if ([v10 taskState] == 4)
  {
    v11 = [v7 state];
    v12 = [v11 endowmentNamespaces];
    v13 = [v12 containsObject:@"com.apple.frontboard.visibility"];

    if (v13)
    {
      [(_APRSMetricRecorder *)self reportEvent:@"Launched" forApp:v9 forEvent:0];
      [(_APRSMetricRecorder *)self reportEvent:@"Launched" forApp:v9 forEvent:1];
      [(_APRSMetricRecorder *)self reportEvent:@"Launched" forApp:v9 forEvent:2];
    }
  }

  else
  {
  }

  v46 = v9;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v14 = [(NSMutableDictionary *)self->_prewarmedApps allKeys];
  v15 = [v14 countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v58;
    do
    {
      v18 = 0;
      do
      {
        if (*v58 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v57 + 1) + 8 * v18);
        v20 = +[NSDate date];
        v21 = [(NSMutableDictionary *)self->_prewarmedApps objectForKeyedSubscript:v19];
        v22 = [v21 startDate];
        [v20 timeIntervalSinceDate:v22];
        v24 = (v23 / 60.0);

        if (v24 >= 61)
        {
          [(_APRSMetricRecorder *)self reportEvent:@"Timeout" forApp:v19 forEvent:0];
        }

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v57 objects:v63 count:16];
    }

    while (v16);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = [(NSMutableDictionary *)self->_dockedApps allKeys];
  v25 = [obj countByEnumeratingWithState:&v53 objects:v62 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v54;
    do
    {
      v28 = 0;
      do
      {
        if (*v54 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v53 + 1) + 8 * v28);
        v30 = +[NSDate date];
        v31 = [(NSMutableDictionary *)self->_dockedApps objectForKeyedSubscript:v29];
        v32 = [v31 startDate];
        [v30 timeIntervalSinceDate:v32];
        v34 = (v33 / 60.0);

        if (v34 >= 61)
        {
          [(_APRSMetricRecorder *)self reportEvent:@"Timeout" forApp:v29 forEvent:1];
        }

        v28 = v28 + 1;
      }

      while (v26 != v28);
      v26 = [obj countByEnumeratingWithState:&v53 objects:v62 count:16];
    }

    while (v26);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v35 = [(NSMutableDictionary *)self->_frozenApps allKeys];
  v36 = [v35 countByEnumeratingWithState:&v49 objects:v61 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v50;
    do
    {
      v39 = 0;
      do
      {
        if (*v50 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v49 + 1) + 8 * v39);
        v41 = +[NSDate date];
        v42 = [(NSMutableDictionary *)self->_frozenApps objectForKeyedSubscript:v40];
        v43 = [v42 startDate];
        [v41 timeIntervalSinceDate:v43];
        v45 = (v44 / 60.0);

        if (v45 >= 301)
        {
          [(_APRSMetricRecorder *)self reportEvent:@"Timeout" forApp:v40 forEvent:2];
        }

        v39 = v39 + 1;
      }

      while (v37 != v39);
      v37 = [v35 countByEnumeratingWithState:&v49 objects:v61 count:16];
    }

    while (v37);
  }
}

- (void)registerForPPSDonation
{
  ppsDonationQueue = self->_ppsDonationQueue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10003161C;
  handler[3] = &unk_1001B5B78;
  handler[4] = self;
  v4 = notify_register_dispatch("com.apple.aprs.testPPSDonation", &self->_notifyToken, ppsDonationQueue, handler);
  v5 = [(_APRSMetricRecorder *)self log];
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10011D9F4(v4, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Successfully registered for test PPS donation notification", v7, 2u);
  }
}

- (void)reportEvent:(id)a3 forApp:(id)a4 forEvent:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (a5 <= 2)
  {
    v10 = (&self->_prewarmedApps)[a5];
    v11 = [(NSMutableDictionary *)v10 objectForKeyedSubscript:v9];
    if (v11)
    {
      if ([v8 isEqualToString:@"Timeout"])
      {
        v12 = 0xFFFFFFFFLL;
      }

      else
      {
        v13 = +[NSDate date];
        v14 = [v11 startDate];
        [v13 timeIntervalSinceDate:v14];
        v12 = (v15 / 60.0);
      }

      v28 = v10;
      v16 = [(_APRSMetricRecorder *)self log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v35 = v9;
        v36 = 2112;
        v37 = v8;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Process %@ %@.", buf, 0x16u);
      }

      v32[0] = @"Type";
      v17 = [qword_10020B9C0 objectAtIndexedSubscript:a5];
      v33[0] = v17;
      v33[1] = v9;
      v32[1] = @"BundleID";
      v32[2] = @"State";
      v33[2] = v8;
      v32[3] = @"Interval";
      v18 = [NSNumber numberWithInt:v12];
      v33[3] = v18;
      v19 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:4];

      v29 = v19;
      [(_APRSMetricRecorder *)self sendAnalyticsLazyWithCommonFeilds:v19 forEvent:@"com.apple.dasd.appResumeDetail"];
      v10 = v28;
      [(NSMutableDictionary *)v28 removeObjectForKey:v9];
      LODWORD(v17) = [v8 isEqualToString:@"Launched"];
      v20 = [qword_10020B9C0 objectAtIndexedSubscript:a5];
      v21 = v20;
      if (v17)
      {
        v22 = @"LaunchCount";
      }

      else
      {
        v22 = @"NonLaunchCount";
      }

      v23 = [v20 stringByAppendingString:v22];

      v30 = v23;
      v31 = &off_1001C97C0;
      v24 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      [(_APRSMetricRecorder *)self sendAnalyticsLazyWithCommonFeilds:v24 forEvent:@"com.apple.dasd.appResumeStats"];

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        prewarmedApps = self->_prewarmedApps;
        *buf = 138412290;
        v35 = prewarmedApps;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Reporting to CA prewarmedApps: %@", buf, 0xCu);
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        dockedApps = self->_dockedApps;
        *buf = 138412290;
        v35 = dockedApps;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Reporting to CA dockedApps: %@", buf, 0xCu);
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        frozenApps = self->_frozenApps;
        *buf = 138412290;
        v35 = frozenApps;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Reporting to CA frozenApps: %@", buf, 0xCu);
      }
    }
  }
}

- (void)checkFrozenApps:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet set];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v21 + 1) + 8 * v10) objectForKeyedSubscript:@"app"];
        [v5 addObject:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v12 = [(_APRSMetricRecorder *)self log];
  v13 = dispatch_time(0, 3000000000);
  v14 = dispatch_get_global_queue(9, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100031F04;
  block[3] = &unk_1001B56B8;
  v18 = v12;
  v19 = v5;
  v20 = self;
  v15 = v5;
  v16 = v12;
  dispatch_after(v13, v14, block);
}

- (void)loadKernelTrialValues
{
  size = 0;
  sysctlbyname("kern.trial_treatment_id", 0, &size, 0, 0);
  v3 = malloc_type_malloc(size, 0x100004077774924uLL);
  sysctlbyname("kern.trial_treatment_id", v3, &size, 0, 0);
  v4 = [NSString stringWithUTF8String:v3];
  kernelTreatmentID = self->_kernelTreatmentID;
  self->_kernelTreatmentID = v4;

  free(v3);
  sysctlbyname("kern.trial_experiment_id", 0, &size, 0, 0);
  v6 = malloc_type_malloc(size, 0x100004077774924uLL);
  sysctlbyname("kern.trial_experiment_id", v6, &size, 0, 0);
  v7 = [NSString stringWithUTF8String:v6];
  kernelExperimentID = self->_kernelExperimentID;
  self->_kernelExperimentID = v7;

  free(v6);
  size = 4;
  sysctlbyname("kern.trial_deployment_id", &self->_kernelDeploymentID, &size, 0, 0);
}

- (id)commonAnalytics
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [_DASTrialManager sharedInstanceForProject:222 withNamespace:@"COREOS_DRM_APRS"];
  v5 = [v4 experimentID];

  if (v5)
  {
    v6 = [v4 experimentID];
    [v3 setObject:v6 forKeyedSubscript:@"CommonExperimentID"];

    v7 = [v4 treatmentID];
    [v3 setObject:v7 forKeyedSubscript:@"CommonTreatmentID"];

    v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 deploymentID]);
    [v3 setObject:v8 forKeyedSubscript:@"CommonDeploymentID"];
  }

  kernelExperimentID = self->_kernelExperimentID;
  if (kernelExperimentID)
  {
    [v3 setObject:kernelExperimentID forKeyedSubscript:@"CommonKernelExperimentID"];
    [v3 setObject:self->_kernelTreatmentID forKeyedSubscript:@"CommonKernelTreatmentID"];
    v10 = [NSNumber numberWithInt:self->_kernelDeploymentID];
    [v3 setObject:v10 forKeyedSubscript:@"CommonKernelDeploymentID"];
  }

  return v3;
}

- (void)sendAnalyticsLazyWithCommonFeilds:(id)a3 forEvent:(id)a4
{
  v5 = a3;
  v8 = a4;
  v6 = v8;
  v7 = v5;
  AnalyticsSendEventLazy();
}

- (void)reportActivationTimes:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v6 = [v4 sortedArrayUsingSelector:"compare:"];
  v7 = [v6 mutableCopy];

  v8 = [v7 count];
  if (v8)
  {
    v9 = v8;
    v23 = self;
    v10 = v8;
    v22 = [v7 objectAtIndexedSubscript:{vcvtd_n_f64_u64(v8, 2uLL)}];
    [v5 setObject:? forKeyedSubscript:?];
    v11 = [v7 objectAtIndexedSubscript:{vcvtd_n_f64_u64(v9, 1uLL)}];
    [v5 setObject:v11 forKeyedSubscript:@"activationTime50"];
    v12 = [v7 objectAtIndexedSubscript:(v10 * 0.75)];
    [v5 setObject:v12 forKeyedSubscript:@"activationTime75"];
    v13 = [v7 objectAtIndexedSubscript:(v10 * 0.9)];
    [v5 setObject:v13 forKeyedSubscript:@"activationTime90"];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = v4;
    v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      v18 = 0.0;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v24 + 1) + 8 * i) doubleValue];
          v18 = v18 + v20;
        }

        v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v16);
    }

    else
    {
      v18 = 0.0;
    }

    v21 = [NSNumber numberWithDouble:v18 / v10];
    [v5 setObject:v21 forKeyedSubscript:@"activationTimeMean"];

    [(_APRSMetricRecorder *)v23 sendAnalyticsLazyWithCommonFeilds:v5 forEvent:@"com.apple.dasd.appResumeHalfDayEvent"];
  }
}

- (void)schedulePPSTimer
{
  ppsDonationTimer = self->_ppsDonationTimer;
  v4 = dispatch_walltime(0, 60000000000);
  dispatch_source_set_timer(ppsDonationTimer, v4, 0x8BB2C97000uLL, 0x3B9ACA00uLL);
  v5 = self->_ppsDonationTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100032A34;
  handler[3] = &unk_1001B5668;
  handler[4] = self;
  dispatch_source_set_event_handler(v5, handler);
  dispatch_activate(self->_ppsDonationTimer);
}

- (BOOL)initializeLedgerIndices
{
  if (self->_indicesInitialized)
  {
    LOBYTE(v2) = 1;
  }

  else if ((ledger() & 0x80000000) != 0)
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    v2 = malloc_type_malloc(0, 0x1000040565EDBD2uLL);
    if (v2)
    {
      v4 = v2;
      ledger();
      free(v4);
      LOBYTE(v2) = self->_footprintIndex != -1 && self->_frozenToSwapIndex != -1;
      self->_indicesInitialized = v2;
    }
  }

  return v2;
}

- (void)recordConfigState
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = [&off_1001CAD80 countByEnumeratingWithState:&v20 objects:v29 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v21;
    *&v4 = 138412546;
    v17 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(&off_1001CAD80);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v19 = 0;
        v18 = 4;
        v9 = v8;
        v10 = sysctlbyname([v9 cStringUsingEncoding:4], &v19, &v18, 0, 0);
        if (v10 == -1)
        {
          if (*__error() == 12)
          {
            *buf = 0;
            v18 = 8;
            v11 = sysctlbyname([v9 cStringUsingEncoding:4], buf, &v18, 0, 0);
            v12 = *buf;
            if (!v11)
            {
LABEL_11:
              v13 = [(_APRSMetricRecorder *)self log];
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v17;
                *&buf[4] = v9;
                v27 = 2048;
                v28 = v12;
                _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "sysctl %@ : %ld", buf, 0x16u);
              }

              v24[0] = @"Parameter";
              v24[1] = @"Value";
              v25[0] = v9;
              v14 = [NSNumber numberWithInteger:v12];
              v25[1] = v14;
              v15 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];

              v16 = +[_DASPPSDataManager sharedInstance];
              [v16 sendDataToPPS:v15 subsystem:@"OSIMemory" category:@"ConfigState"];

              goto LABEL_17;
            }
          }

          else
          {
            v11 = -1;
          }
        }

        else
        {
          v11 = v10;
          v12 = v19;
          if (!v10)
          {
            goto LABEL_11;
          }
        }

        v15 = [(_APRSMetricRecorder *)self log];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = v17;
          *&buf[4] = v9;
          v27 = 1024;
          LODWORD(v28) = v11;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to call sysctl %@ with %d", buf, 0x12u);
        }

LABEL_17:
      }

      v5 = [&off_1001CAD80 countByEnumeratingWithState:&v20 objects:v29 count:16];
    }

    while (v5);
  }
}

+ (void)reportTrialParameterWithName:(id)a3 value:(unint64_t)a4
{
  v5 = [NSString stringWithFormat:@"Trial-%@", a3];
  v9[0] = @"Parameter";
  v9[1] = @"Value";
  v10[0] = v5;
  v6 = [NSNumber numberWithUnsignedInteger:a4];
  v10[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  v8 = +[_DASPPSDataManager sharedInstance];
  [v8 sendDataToPPS:v7 subsystem:@"OSIMemory" category:@"ConfigState"];
}

- (void)recordMemoryMetrics
{
  if (![(_APRSMetricRecorder *)self initializeLedgerIndices])
  {
    v8 = [(_APRSMetricRecorder *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10011DB08();
    }

    goto LABEL_15;
  }

  v3 = memorystatus_control();
  if (v3 <= 0)
  {
    v8 = [(_APRSMetricRecorder *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v4 = malloc_type_malloc(v3, 0x1000040AE2C30F4uLL);
  if (!v4)
  {
    v8 = [(_APRSMetricRecorder *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10011DBA4();
    }

    goto LABEL_15;
  }

  v5 = v4;
  v6 = memorystatus_control();
  if (v6 <= 0)
  {
    free(v5);
    v8 = [(_APRSMetricRecorder *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_14:
      sub_10011DB70();
    }

LABEL_15:

    return;
  }

  v55 = v5;
  if (v6 >= 0x80)
  {
    v63 = 0;
    v64 = 0;
    v7 = 0;
    v61 = 0;
    v62 = 0;
    v59 = 0;
    v60 = 0;
    v57 = 0;
    v58 = 0;
    v9 = v6 >> 7;
    do
    {
      v10 = v5[1];
      if (!v10 || (v10 != 75 ? (v11 = v10 == 30) : (v11 = 1), v11))
      {
        v12 = [(_APRSMetricRecorder *)self getProcessMemoryInfoForPID:*v5, v55];
        v13 = v12;
        if (v12)
        {
          v14 = [v12 objectForKeyedSubscript:@"footprint"];
          v15 = [v14 unsignedLongLongValue];

          v16 = [v13 objectForKeyedSubscript:@"residentSize"];
          v17 = [v16 unsignedLongLongValue];

          v18 = [v13 objectForKeyedSubscript:@"frozenSize"];
          v19 = [v18 unsignedLongLongValue];

          if (v10 == 75)
          {
            v25 = v61;
            v60 += v17;
            ++v57;
            v58 += v19;
            v26 = v59;
            if ((v5[5] & 4) != 0)
            {
              v26 = v59 + 1;
            }

            v59 = v26;
            if ((v5[5] & 4) != 0)
            {
              v25 = &v61[v17];
            }

            v61 = v25;
          }

          else
          {
            v21 = v63;
            v20 = v64;
            v22 = &v64[v15];
            if (v10)
            {
              v23 = v63;
            }

            else
            {
              v23 = v63 + 1;
            }

            if (v10)
            {
              v22 = v64;
            }

            v24 = v62;
            if (v10 == 30)
            {
              v24 = v62 + 1;
              v7 += v15;
            }

            else
            {
              v21 = v23;
            }

            v62 = v24;
            v63 = v21;
            if (v10 != 30)
            {
              v20 = v22;
            }

            v64 = v20;
          }
        }
      }

      v5 += 32;
      --v9;
    }

    while (v9);
  }

  else
  {
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v7 = 0;
    v63 = 0;
    v64 = 0;
  }

  free(v55);
  host_info64_outCnt = 40;
  v27 = malloc_type_calloc(1uLL, 0xA0uLL, 0x1000040B8406A4EuLL);
  v28 = mach_host_self();
  if (host_statistics64(v28, 4, v27, &host_info64_outCnt))
  {
    v29 = [(_APRSMetricRecorder *)self log];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10011DB3C();
    }

    v56 = 0;
    v30 = 0;
  }

  else
  {
    v30 = (*v27 - v27[23]);
    v56 = v27[34];
  }

  free(v27);
  v31 = +[NSMutableDictionary dictionary];
  v32 = [NSNumber numberWithInteger:v7];
  [v31 setObject:v32 forKeyedSubscript:@"DockFootprint"];

  v33 = [NSNumber numberWithInteger:v62];
  [v31 setObject:v33 forKeyedSubscript:@"DockCount"];

  v34 = [(_APRSMetricRecorder *)self log];
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v67 = v31;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Dock State %@", buf, 0xCu);
  }

  v35 = +[_DASPPSDataManager sharedInstance];
  [v35 sendDataToPPS:v31 subsystem:@"OSIMemory" category:@"DockState"];

  v36 = +[NSMutableDictionary dictionary];

  v37 = [NSNumber numberWithInteger:v57];
  [v36 setObject:v37 forKeyedSubscript:@"FreezerCount"];

  v38 = [NSNumber numberWithInteger:v58];
  [v36 setObject:v38 forKeyedSubscript:@"FreezerFrozenSize"];

  v39 = [NSNumber numberWithInteger:v59];
  [v36 setObject:v39 forKeyedSubscript:@"FreezerThawedCount"];

  v40 = [NSNumber numberWithInteger:v60];
  [v36 setObject:v40 forKeyedSubscript:@"FreezerResidentSize"];

  v41 = [NSNumber numberWithInteger:v61];
  [v36 setObject:v41 forKeyedSubscript:@"FreezerThawedResidentSize"];

  v42 = [(_APRSMetricRecorder *)self log];
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v67 = v36;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Freezer State %@", buf, 0xCu);
  }

  v43 = +[_DASPPSDataManager sharedInstance];
  [v43 sendDataToPPS:v36 subsystem:@"OSIMemory" category:@"FreezerState"];

  v44 = +[NSMutableDictionary dictionary];

  v45 = [NSNumber numberWithInteger:v63];
  [v44 setObject:v45 forKeyedSubscript:@"IdleCount"];

  v46 = [NSNumber numberWithInteger:v64];
  [v44 setObject:v46 forKeyedSubscript:@"IdleFootprint"];

  v47 = [(_APRSMetricRecorder *)self log];
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v67 = v44;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Idle Band State %@", buf, 0xCu);
  }

  v48 = +[_DASPPSDataManager sharedInstance];
  [v48 sendDataToPPS:v44 subsystem:@"OSIMemory" category:@"IdleBandState"];

  v49 = +[NSMutableDictionary dictionary];

  v50 = [NSNumber numberWithInteger:v30];
  [v49 setObject:v50 forKeyedSubscript:@"Free"];

  v51 = [NSNumber numberWithInteger:v56];
  [v49 setObject:v51 forKeyedSubscript:@"FileBacked"];

  v52 = [NSNumber numberWithInteger:v30 + v56];
  [v49 setObject:v52 forKeyedSubscript:@"Total"];

  v53 = [(_APRSMetricRecorder *)self log];
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v67 = v49;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Memory State %@", buf, 0xCu);
  }

  v54 = +[_DASPPSDataManager sharedInstance];
  [v54 sendDataToPPS:v49 subsystem:@"OSIMemory" category:@"MemoryState"];
}

- (id)getProcessMemoryInfoForPID:(int)a3
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  if ((ledger() & 0x80000000) == 0)
  {
    v4 = malloc_type_malloc(48 * *(&v21 + 1), 0x1000040EED21634uLL);
    if (v4)
    {
      v5 = v4;
      if ((ledger() & 0x80000000) == 0)
      {
        footprintIndex = self->_footprintIndex;
        if (*(&v21 + 1) > footprintIndex)
        {
          frozenToSwapIndex = self->_frozenToSwapIndex;
          if (*(&v21 + 1) > frozenToSwapIndex)
          {
            v8 = v5[6 * footprintIndex];
            v9 = v5[6 * frozenToSwapIndex];
            if (v8 <= v9)
            {
              v10 = 0;
            }

            else
            {
              v10 = v8 - v9;
            }

            free(v5);
            v17[0] = @"footprint";
            v11 = [NSNumber numberWithLongLong:v8];
            v18[0] = v11;
            v17[1] = @"residentSize";
            v12 = [NSNumber numberWithLongLong:v10];
            v18[1] = v12;
            v17[2] = @"frozenSize";
            v13 = [NSNumber numberWithLongLong:v9];
            v18[2] = v13;
            v14 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];

            goto LABEL_15;
          }
        }
      }

      free(v5);
    }

    else
    {
      v15 = [(_APRSMetricRecorder *)self log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10011DBA4();
      }
    }
  }

  v14 = 0;
LABEL_15:

  return v14;
}

@end