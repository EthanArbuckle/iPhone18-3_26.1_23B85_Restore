@interface _DASNetworkEvaluationMonitor
+ (BOOL)inexpensivePathAvailable;
+ (_DASNetworkEvaluationMonitor)sharedInstance;
+ (id)defaultInexpensivePathEvaluator;
+ (id)defaultPathEvaluator;
+ (id)defaultUnconstrainedPathEvaluator;
+ (id)nwParametersForActivity:(id)a3;
- (BOOL)isNetworkPathAvailableForActivity:(id)a3;
- (BOOL)isUnconstrainedPathAvailableForActivity:(id)a3;
- (BOOL)requiresNetworkPathMonitoring:(id)a3;
- (_DASNetworkEvaluationMonitor)init;
- (id)evaluationGroupForActivity:(id)a3;
- (id)evaluationGroupForParameters:(id)a3 endpoint:(id)a4;
- (id)setupNetworkMonitoringWithNetworkParameters:(id)a3 endpoint:(id)a4 withActivity:(id)a5;
- (void)registerForNetworkEvaluationWithCallback:(id)a3;
- (void)startMonitoringActivity:(id)a3 withNetworkParameters:(id)a4 withEndpoint:(id)a5;
- (void)stopMonitoringActivity:(id)a3;
@end

@implementation _DASNetworkEvaluationMonitor

+ (_DASNetworkEvaluationMonitor)sharedInstance
{
  if (qword_10020B858 != -1)
  {
    sub_10012CD38();
  }

  v3 = qword_10020B860;

  return v3;
}

+ (id)defaultPathEvaluator
{
  if (qword_10020B868 != -1)
  {
    sub_10012CD4C();
  }

  v3 = qword_10020B870;

  return v3;
}

+ (id)defaultInexpensivePathEvaluator
{
  if (qword_10020B878 != -1)
  {
    sub_10012CD60();
  }

  v3 = qword_10020B880;

  return v3;
}

+ (id)defaultUnconstrainedPathEvaluator
{
  if (qword_10020B888 != -1)
  {
    sub_10012CD74();
  }

  v3 = qword_10020B890;

  return v3;
}

+ (BOOL)inexpensivePathAvailable
{
  v2 = [objc_opt_class() defaultInexpensivePathEvaluator];
  v3 = [v2 path];
  v4 = [v3 status];

  return v4 != 2;
}

- (_DASNetworkEvaluationMonitor)init
{
  v12.receiver = self;
  v12.super_class = _DASNetworkEvaluationMonitor;
  v2 = [(_DASNetworkEvaluationMonitor *)&v12 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    networkEvaluationGroups = v2->_networkEvaluationGroups;
    v2->_networkEvaluationGroups = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_BACKGROUND, 0);
    v7 = dispatch_queue_create("com.apple.NetworkEvaluationMonitor.serial", v6);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v7;

    v9 = os_log_create("com.apple.duetactivityscheduler", "NetworkEvaluationMonitor");
    log = v2->_log;
    v2->_log = v9;

    v2->_lock = 0;
  }

  return v2;
}

+ (id)nwParametersForActivity:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:kNWParametersKey];

  if (!v5)
  {
    if ([v3 requiresInexpensiveNetworking])
    {
      if (qword_10020B898 != -1)
      {
        sub_10012CD9C();
      }

      v6 = &qword_10020B8A0;
    }

    else
    {
      if (qword_10020B8A8 != -1)
      {
        sub_10012CD88();
      }

      v6 = &qword_10020B8B0;
    }

    v5 = *v6;
  }

  return v5;
}

- (void)registerForNetworkEvaluationWithCallback:(id)a3
{
  v4 = objc_retainBlock(a3);
  callback = self->_callback;
  self->_callback = v4;

  _objc_release_x1(v4, callback);
}

- (BOOL)requiresNetworkPathMonitoring:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKeyedSubscript:kNWEndpointKey];
  v5 = v4 != 0;

  return v5;
}

- (void)startMonitoringActivity:(id)a3 withNetworkParameters:(id)a4 withEndpoint:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_DASNetworkEvaluationMonitor *)self evaluationGroupForParameters:v9 endpoint:v10];
  if (v11)
  {
    v12 = v11;
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_10012CDB0();
    }
  }

  else
  {
    v12 = [(_DASNetworkEvaluationMonitor *)self setupNetworkMonitoringWithNetworkParameters:v9 endpoint:v10 withActivity:v8];
  }

  [v12 startMonitoringForActivity:v8];
}

- (id)evaluationGroupForParameters:(id)a3 endpoint:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_recursive_lock_lock_with_options();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = self->_networkEvaluationGroups;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 isMonitoringWithParameters:v6 endpoint:{v7, v14}])
        {
          v9 = v12;
          goto LABEL_11;
        }
      }

      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_recursive_lock_unlock();

  return v9;
}

- (id)setupNetworkMonitoringWithNetworkParameters:(id)a3 endpoint:(id)a4 withActivity:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[_DASNetworkMonitorEvaluationGroup alloc] initWithEndpoint:v9 parameters:v8 activity:v10 callback:self->_callback onQueue:self->_callbackQueue];
  if (v11)
  {
    os_unfair_recursive_lock_lock_with_options();
    [(NSMutableArray *)self->_networkEvaluationGroups addObject:v11];
    os_unfair_recursive_lock_unlock();
    v12 = v11;
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412802;
      v16 = v10;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to instantiate evaluationGroup for %@ (%@, %@", &v15, 0x20u);
    }
  }

  return v11;
}

- (void)stopMonitoringActivity:(id)a3
{
  v4 = a3;
  v5 = [(_DASNetworkEvaluationMonitor *)self evaluationGroupForActivity:v4];
  if (v5)
  {
    os_unfair_recursive_lock_lock_with_options();
    if ([v5 stopMonitoringForActivity:v4])
    {
      [(NSMutableArray *)self->_networkEvaluationGroups removeObject:v5];
    }

    os_unfair_recursive_lock_unlock();
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10012CE24();
  }
}

- (id)evaluationGroupForActivity:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_networkEvaluationGroups;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isMonitoringActivity:{v4, v11}])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_recursive_lock_unlock();

  return v6;
}

- (BOOL)isNetworkPathAvailableForActivity:(id)a3
{
  v4 = a3;
  if ([(_DASNetworkEvaluationMonitor *)self requiresNetworkPathMonitoring:v4])
  {
    v5 = [(_DASNetworkEvaluationMonitor *)self evaluationGroupForActivity:v4];

    if (v5)
    {
      v6 = [v5 isNetworkPathAvailable];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v7 = [v4 requiresInexpensiveNetworking];

    v8 = objc_opt_class();
    if (v7)
    {
      [v8 defaultInexpensivePathEvaluator];
    }

    else
    {
      [v8 defaultPathEvaluator];
    }
    v9 = ;
    v10 = [v9 path];
    v11 = [v10 status];

    return v11 != 2;
  }

  return v6;
}

- (BOOL)isUnconstrainedPathAvailableForActivity:(id)a3
{
  v4 = a3;
  if (![(_DASNetworkEvaluationMonitor *)self requiresNetworkPathMonitoring:v4])
  {
    evaluator_for_endpoint = [objc_opt_class() defaultUnconstrainedPathEvaluator];
    v12 = [evaluator_for_endpoint path];
    v13 = [v12 status]== 2;
    goto LABEL_11;
  }

  v5 = [v4 startDate];

  if (v5)
  {
    v6 = [v4 userInfo];
    v7 = [v6 objectForKeyedSubscript:kNWEndpointKey];

    v8 = [_DASNetworkEvaluationMonitor nwParametersForActivity:v4];
    v9 = [v7 copyCEndpoint];
    v10 = [v8 copyCParameters];
    evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  }

  else
  {
    v7 = [(_DASNetworkEvaluationMonitor *)self evaluationGroupForActivity:v4];
    evaluator_for_endpoint = [v7 evaluator];
  }

  if (evaluator_for_endpoint)
  {
    v12 = nw_path_evaluator_copy_path();
    if (nw_path_is_constrained(v12))
    {
      v14 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v13 = nw_path_get_status(v12) == nw_path_status_unsatisfied;
LABEL_11:
    v14 = !v13;
    goto LABEL_14;
  }

  v14 = 1;
LABEL_15:

  return v14;
}

@end