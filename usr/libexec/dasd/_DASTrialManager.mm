@interface _DASTrialManager
+ (_DASTrialManager)sharedInstance;
+ (void)initialize;
- (BOOL)handleTrialContinuation:(id)a3;
- (BOOL)handleTrialEnd:(id)a3;
- (BOOL)handleTrialStart:(id)a3;
- (BOOL)handleTrialUpdate:(id)a3;
- (BOOL)matches:(id)a3 withCache:(id)a4;
- (void)addDelegate:(id)a3;
- (void)clear;
- (void)saveToDefaults:(id)a3;
- (void)sendToPPS:(id)a3;
- (void)startTimer;
- (void)updateFactors;
- (void)updateKernelWithDASIdentifiers;
@end

@implementation _DASTrialManager

+ (_DASTrialManager)sharedInstance
{
  if (qword_10020AEE0 != -1)
  {
    sub_100009E30();
  }

  v3 = qword_10020AEE8;

  return v3;
}

+ (void)initialize
{
  v2 = +[NSMutableArray array];
  v3 = qword_10020AED0;
  qword_10020AED0 = v2;

  dword_10020AED8 = 0;
}

- (void)updateFactors
{
  [(TRIClient *)self->_trialClient refresh];
  v3 = [(TRIClient *)self->_trialClient experimentIdentifiersWithNamespaceName:self->_namespace];
  v4 = self->_experimentID;
  v5 = self->_treatmentID;
  deploymentID = self->_deploymentID;
  if ([(_DASTrialManager *)self handleTrialStart:v3])
  {
    log = self->_log;
    if (!os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    treatmentID = self->_treatmentID;
    experimentID = self->_experimentID;
    v10 = self->_deploymentID;
    *buf = 138412802;
    v36 = experimentID;
    v37 = 2112;
    v38 = treatmentID;
    v39 = 1024;
    v40 = v10;
    v11 = "Trial Experiment Started, experiment: %@, treatment: %@, deployment: %d";
LABEL_13:
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, v11, buf, 0x1Cu);
    goto LABEL_14;
  }

  if ([(_DASTrialManager *)self handleTrialUpdate:v3])
  {
    log = self->_log;
    if (!os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    v13 = self->_treatmentID;
    v12 = self->_experimentID;
    v14 = self->_deploymentID;
    *buf = 138412802;
    v36 = v12;
    v37 = 2112;
    v38 = v13;
    v39 = 1024;
    v40 = v14;
    v11 = "Trial Experiment Updated, experiment: %@, treatment: %@, deployment: %d";
    goto LABEL_13;
  }

  if ([(_DASTrialManager *)self handleTrialEnd:v3])
  {
    log = self->_log;
    if (!os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    *buf = 138412802;
    v36 = v4;
    v37 = 2112;
    v38 = v5;
    v39 = 1024;
    v40 = deploymentID;
    v11 = "Trial Experiment Ended, experiment: %@, treatment: %@, deployment: %d";
    goto LABEL_13;
  }

  v15 = [(_DASTrialManager *)self handleTrialContinuation:v3];
  log = self->_log;
  v16 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (v15)
  {
    if (!v16)
    {
      goto LABEL_14;
    }

    v18 = self->_treatmentID;
    v17 = self->_experimentID;
    v19 = self->_deploymentID;
    *buf = 138412802;
    v36 = v17;
    v37 = 2112;
    v38 = v18;
    v39 = 1024;
    v40 = v19;
    v11 = "Trial Experiment Found, experiment: %@, treatment: %@, deployment: %d";
    goto LABEL_13;
  }

  if (v16)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "No Trial Experiments Found", buf, 2u);
  }

  [(_DASTrialManager *)self clear];
LABEL_14:
  v28 = v5;
  os_unfair_lock_lock(&self->_lock);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = self->_delegates;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v31;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v30 + 1) + 8 * i);
        v26 = self->_log;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Calling out Trial handler blocks", buf, 2u);
        }

        v27 = dispatch_get_global_queue(-2, 0);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000269A4;
        block[3] = &unk_1001B56E0;
        block[4] = v25;
        block[5] = self;
        dispatch_async(v27, block);
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v22);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addDelegate:(id)a3
{
  if (a3)
  {
    v4 = a3;
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableArray *)self->_delegates addObject:v4];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)updateKernelWithDASIdentifiers
{
  treatmentID = self->_treatmentID;
  if (treatmentID)
  {
    if (self->_experimentID)
    {
      [(NSString *)treatmentID UTF8String];
      strlen([(NSString *)self->_treatmentID UTF8String]);
      __strncpy_chk();
      [(NSString *)self->_experimentID UTF8String];
      strlen([(NSString *)self->_experimentID UTF8String]);
      __strncpy_chk();
      deploymentID = self->_deploymentID;
      if (!memorystatus_control())
      {
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          sub_10011D21C(log);
        }
      }
    }
  }
}

- (BOOL)handleTrialStart:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 experimentId], v6 = objc_claimAutoreleasedReturnValue(), v6, v6) && (-[_DASTrialManager readFromDefaults](self, "readFromDefaults"), v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v10 = [v5 treatmentId];
    treatmentID = self->_treatmentID;
    self->_treatmentID = v10;

    v12 = [v5 experimentId];
    experimentID = self->_experimentID;
    self->_experimentID = v12;

    self->_deploymentID = [v5 deploymentId];
    v14 = objc_alloc_init(NSMutableDictionary);
    [v14 setObject:self->_experimentID forKeyedSubscript:@"trialExperimentId"];
    [v14 setObject:self->_treatmentID forKeyedSubscript:@"trialTreatmentId"];
    v15 = [NSNumber numberWithInt:self->_deploymentID];
    [v14 setObject:v15 forKeyedSubscript:@"trialDeploymentId"];

    v16 = +[NSDate now];
    [v14 setObject:v16 forKeyedSubscript:@"trialStartDate"];

    [(_DASTrialManager *)self saveToDefaults:v14];
    [(_DASTrialManager *)self sendToPPS:v14];
    [(_DASTrialManager *)self startTimer];

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)handleTrialUpdate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 experimentId], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [(_DASTrialManager *)self readFromDefaults];
    v8 = [v7 mutableCopy];

    if (v8 && ![(_DASTrialManager *)self matches:v5 withCache:v8])
    {
      v10 = +[NSDate date];
      [v8 setObject:v10 forKeyedSubscript:@"trialEndDate"];

      [(_DASTrialManager *)self sendToPPS:v8];
      v11 = [v5 treatmentId];
      treatmentID = self->_treatmentID;
      self->_treatmentID = v11;

      v13 = [v5 experimentId];
      experimentID = self->_experimentID;
      self->_experimentID = v13;

      self->_deploymentID = [v5 deploymentId];
      v15 = objc_alloc_init(NSMutableDictionary);
      [v15 setObject:self->_experimentID forKeyedSubscript:@"trialExperimentId"];
      [v15 setObject:self->_treatmentID forKeyedSubscript:@"trialTreatmentId"];
      v16 = [NSNumber numberWithInt:self->_deploymentID];
      [v15 setObject:v16 forKeyedSubscript:@"trialDeploymentId"];

      v17 = +[NSDate date];
      [v15 setObject:v17 forKeyedSubscript:@"trialStartDate"];

      [(_DASTrialManager *)self saveToDefaults:v15];
      [(_DASTrialManager *)self sendToPPS:v15];

      v9 = 1;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)handleTrialEnd:(id)a3
{
  if (a3)
  {
    return 0;
  }

  v5 = [(_DASTrialManager *)self readFromDefaults];
  v6 = [v5 mutableCopy];

  v3 = v6 != 0;
  if (v6)
  {
    v7 = +[NSDate date];
    [v6 setObject:v7 forKeyedSubscript:@"trialEndDate"];

    [(_DASTrialManager *)self sendToPPS:v6];
    [(_DASTrialManager *)self clear];
  }

  return v3;
}

- (BOOL)handleTrialContinuation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 experimentId], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [(_DASTrialManager *)self readFromDefaults];
    v8 = [v7 mutableCopy];

    if (v8 && [(_DASTrialManager *)self matches:v5 withCache:v8])
    {
      v9 = [v5 treatmentId];
      treatmentID = self->_treatmentID;
      self->_treatmentID = v9;

      v11 = [v5 experimentId];
      experimentID = self->_experimentID;
      self->_experimentID = v11;

      self->_deploymentID = [v5 deploymentId];
      [(_DASTrialManager *)self sendToPPS:v8];
      [(_DASTrialManager *)self startTimer];
      v13 = 1;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)saveToDefaults:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    [(NSUserDefaults *)self->_defaults setObject:v5 forKey:@"trialDictionary"];
  }

  else
  {
    [(NSUserDefaults *)self->_defaults removeObjectForKey:@"trialDictionary"];
  }

  [(NSUserDefaults *)self->_defaults synchronize];
}

- (BOOL)matches:(id)a3 withCache:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 experimentId];
  v8 = [v6 objectForKeyedSubscript:@"trialExperimentId"];
  if ([v7 isEqualToString:v8])
  {
    v9 = [v5 treatmentId];
    v10 = [v6 objectForKeyedSubscript:@"trialTreatmentId"];
    if ([v9 isEqualToString:v10])
    {
      v11 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 deploymentId]);
      v12 = [v6 objectForKeyedSubscript:@"trialDeploymentId"];
      v13 = [v11 isEqualToNumber:v12];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)startTimer
{
  if (!self->_timer)
  {
    location[5] = v2;
    location[6] = v3;
    v5 = dispatch_get_global_queue(-32768, 0);
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v5);
    timer = self->_timer;
    self->_timer = v6;

    dispatch_source_set_timer(self->_timer, 0, 0x4E94914F0000uLL, 0x3B9ACA00uLL);
    objc_initWeak(location, self);
    v8 = self->_timer;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000272FC;
    v9[3] = &unk_1001B5468;
    objc_copyWeak(&v10, location);
    dispatch_source_set_event_handler(v8, v9);
    dispatch_activate(self->_timer);
    objc_destroyWeak(&v10);
    objc_destroyWeak(location);
  }
}

- (void)clear
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;
  }

  treatmentID = self->_treatmentID;
  self->_treatmentID = 0;

  experimentID = self->_experimentID;
  self->_experimentID = 0;

  self->_deploymentID = 0;

  [(_DASTrialManager *)self saveToDefaults:0];
}

- (void)sendToPPS:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = [_DASDaemonLogger logForCategory:@"powerlog"];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10011D260();
    }

    v6 = [v4 objectForKeyedSubscript:@"trialStartDate"];
    if (v6)
    {
      v7 = v6;
      v8 = [v4 objectForKeyedSubscript:@"trialStartDate"];
      [v8 timeIntervalSinceNow];
      v10 = v9;

      if (v10 > -1209600.0)
      {
        PLLogRegisteredEvent();
      }
    }
  }

  if (!+[_DASConfig isInternalBuild])
  {
    v11 = +[_DASPPSDataManager sharedInstance];
    v12 = [v11 getPPSTimeSeries:@"BackgroundProcessing" category:@"Trial" valueFilter:0 metrics:0 timeFilter:0 filepath:0 error:0];

    if (v12)
    {
      v13 = [v12 array];
      v14 = [v13 count];

      if (v14 > 4)
      {

        v15 = [_DASDaemonLogger logForCategory:@"BGSQL"];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10011D2E0(v15);
        }

        goto LABEL_17;
      }
    }
  }

  v15 = +[NSMutableDictionary dictionary];
  v16 = [v4 objectForKeyedSubscript:@"trialDeploymentId"];
  [v15 setObject:v16 forKeyedSubscript:@"TrialDeploymentID"];

  v17 = [v4 objectForKeyedSubscript:@"trialExperimentId"];
  [v15 setObject:v17 forKeyedSubscript:@"TrialExperimentID"];

  v18 = [v4 objectForKeyedSubscript:@"trialTreatmentId"];
  [v15 setObject:v18 forKeyedSubscript:@"TrialTreatmentID"];

  v19 = [v4 objectForKeyedSubscript:@"trialStartDate"];
  [v15 setObject:v19 forKeyedSubscript:@"TrialStartDate"];

  v20 = [v4 objectForKeyedSubscript:@"trialEndDate"];
  [v15 setObject:v20 forKeyedSubscript:@"TrialEndDate"];

  v21 = [_DASDaemonLogger logForCategory:@"BGSQL"];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    sub_10011D324();
  }

  v22 = +[_DASPPSDataManager sharedInstance];
  [v22 sendDataToPPS:v15 subsystem:@"BackgroundProcessing" category:@"Trial"];

LABEL_17:
}

@end