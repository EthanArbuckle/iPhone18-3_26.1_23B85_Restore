@interface _DASNetworkEvaluationMonitor
+ (BOOL)inexpensivePathAvailable;
+ (_DASNetworkEvaluationMonitor)sharedInstance;
+ (id)defaultInexpensivePathEvaluator;
+ (id)defaultPathEvaluator;
+ (id)defaultUnconstrainedPathEvaluator;
+ (id)nwParametersForActivity:(id)activity;
- (BOOL)isNetworkPathAvailableForActivity:(id)activity;
- (BOOL)isUnconstrainedPathAvailableForActivity:(id)activity;
- (BOOL)requiresNetworkPathMonitoring:(id)monitoring;
- (_DASNetworkEvaluationMonitor)init;
- (id)evaluationGroupForActivity:(id)activity;
- (id)evaluationGroupForParameters:(id)parameters endpoint:(id)endpoint;
- (id)setupNetworkMonitoringWithNetworkParameters:(id)parameters endpoint:(id)endpoint withActivity:(id)activity;
- (void)registerForNetworkEvaluationWithCallback:(id)callback;
- (void)startMonitoringActivity:(id)activity withNetworkParameters:(id)parameters withEndpoint:(id)endpoint;
- (void)stopMonitoringActivity:(id)activity;
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
  defaultInexpensivePathEvaluator = [objc_opt_class() defaultInexpensivePathEvaluator];
  path = [defaultInexpensivePathEvaluator path];
  status = [path status];

  return status != 2;
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

+ (id)nwParametersForActivity:(id)activity
{
  activityCopy = activity;
  userInfo = [activityCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:kNWParametersKey];

  if (!v5)
  {
    if ([activityCopy requiresInexpensiveNetworking])
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

- (void)registerForNetworkEvaluationWithCallback:(id)callback
{
  v4 = objc_retainBlock(callback);
  callback = self->_callback;
  self->_callback = v4;

  _objc_release_x1(v4, callback);
}

- (BOOL)requiresNetworkPathMonitoring:(id)monitoring
{
  userInfo = [monitoring userInfo];
  v4 = [userInfo objectForKeyedSubscript:kNWEndpointKey];
  v5 = v4 != 0;

  return v5;
}

- (void)startMonitoringActivity:(id)activity withNetworkParameters:(id)parameters withEndpoint:(id)endpoint
{
  activityCopy = activity;
  parametersCopy = parameters;
  endpointCopy = endpoint;
  v11 = [(_DASNetworkEvaluationMonitor *)self evaluationGroupForParameters:parametersCopy endpoint:endpointCopy];
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
    v12 = [(_DASNetworkEvaluationMonitor *)self setupNetworkMonitoringWithNetworkParameters:parametersCopy endpoint:endpointCopy withActivity:activityCopy];
  }

  [v12 startMonitoringForActivity:activityCopy];
}

- (id)evaluationGroupForParameters:(id)parameters endpoint:(id)endpoint
{
  parametersCopy = parameters;
  endpointCopy = endpoint;
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
        if ([v12 isMonitoringWithParameters:parametersCopy endpoint:{endpointCopy, v14}])
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

- (id)setupNetworkMonitoringWithNetworkParameters:(id)parameters endpoint:(id)endpoint withActivity:(id)activity
{
  parametersCopy = parameters;
  endpointCopy = endpoint;
  activityCopy = activity;
  v11 = [[_DASNetworkMonitorEvaluationGroup alloc] initWithEndpoint:endpointCopy parameters:parametersCopy activity:activityCopy callback:self->_callback onQueue:self->_callbackQueue];
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
      v16 = activityCopy;
      v17 = 2112;
      v18 = parametersCopy;
      v19 = 2112;
      v20 = endpointCopy;
      _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to instantiate evaluationGroup for %@ (%@, %@", &v15, 0x20u);
    }
  }

  return v11;
}

- (void)stopMonitoringActivity:(id)activity
{
  activityCopy = activity;
  v5 = [(_DASNetworkEvaluationMonitor *)self evaluationGroupForActivity:activityCopy];
  if (v5)
  {
    os_unfair_recursive_lock_lock_with_options();
    if ([v5 stopMonitoringForActivity:activityCopy])
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

- (id)evaluationGroupForActivity:(id)activity
{
  activityCopy = activity;
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
        if ([v9 isMonitoringActivity:{activityCopy, v11}])
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

- (BOOL)isNetworkPathAvailableForActivity:(id)activity
{
  activityCopy = activity;
  if ([(_DASNetworkEvaluationMonitor *)self requiresNetworkPathMonitoring:activityCopy])
  {
    v5 = [(_DASNetworkEvaluationMonitor *)self evaluationGroupForActivity:activityCopy];

    if (v5)
    {
      isNetworkPathAvailable = [v5 isNetworkPathAvailable];
    }

    else
    {
      isNetworkPathAvailable = 1;
    }
  }

  else
  {
    requiresInexpensiveNetworking = [activityCopy requiresInexpensiveNetworking];

    v8 = objc_opt_class();
    if (requiresInexpensiveNetworking)
    {
      [v8 defaultInexpensivePathEvaluator];
    }

    else
    {
      [v8 defaultPathEvaluator];
    }
    v9 = ;
    path = [v9 path];
    status = [path status];

    return status != 2;
  }

  return isNetworkPathAvailable;
}

- (BOOL)isUnconstrainedPathAvailableForActivity:(id)activity
{
  activityCopy = activity;
  if (![(_DASNetworkEvaluationMonitor *)self requiresNetworkPathMonitoring:activityCopy])
  {
    evaluator_for_endpoint = [objc_opt_class() defaultUnconstrainedPathEvaluator];
    path = [evaluator_for_endpoint path];
    v13 = [path status]== 2;
    goto LABEL_11;
  }

  startDate = [activityCopy startDate];

  if (startDate)
  {
    userInfo = [activityCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:kNWEndpointKey];

    v8 = [_DASNetworkEvaluationMonitor nwParametersForActivity:activityCopy];
    copyCEndpoint = [v7 copyCEndpoint];
    copyCParameters = [v8 copyCParameters];
    evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  }

  else
  {
    v7 = [(_DASNetworkEvaluationMonitor *)self evaluationGroupForActivity:activityCopy];
    evaluator_for_endpoint = [v7 evaluator];
  }

  if (evaluator_for_endpoint)
  {
    path = nw_path_evaluator_copy_path();
    if (nw_path_is_constrained(path))
    {
      v14 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v13 = nw_path_get_status(path) == nw_path_status_unsatisfied;
LABEL_11:
    v14 = !v13;
    goto LABEL_14;
  }

  v14 = 1;
LABEL_15:

  return v14;
}

@end