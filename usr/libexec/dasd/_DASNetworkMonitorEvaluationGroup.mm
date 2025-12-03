@interface _DASNetworkMonitorEvaluationGroup
- (BOOL)isEqual:(id)equal;
- (BOOL)isMonitoringActivity:(id)activity;
- (BOOL)isMonitoringWithParameters:(id)parameters endpoint:(id)endpoint;
- (BOOL)isNetworkPathAvailable;
- (BOOL)stopMonitoringForActivity:(id)activity;
- (_DASNetworkMonitorEvaluationGroup)initWithEndpoint:(id)endpoint parameters:(id)parameters activity:(id)activity callback:(id)callback onQueue:(id)queue;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
- (void)startMonitoringForActivity:(id)activity;
@end

@implementation _DASNetworkMonitorEvaluationGroup

- (BOOL)isNetworkPathAvailable
{
  evaluator = self->_evaluator;
  v3 = nw_path_evaluator_copy_path();
  v4 = nw_path_get_status(v3) != nw_path_status_unsatisfied;

  return v4;
}

- (_DASNetworkMonitorEvaluationGroup)initWithEndpoint:(id)endpoint parameters:(id)parameters activity:(id)activity callback:(id)callback onQueue:(id)queue
{
  endpointCopy = endpoint;
  parametersCopy = parameters;
  activityCopy = activity;
  callbackCopy = callback;
  queueCopy = queue;
  v34.receiver = self;
  v34.super_class = _DASNetworkMonitorEvaluationGroup;
  v18 = [(_DASNetworkMonitorEvaluationGroup *)&v34 init];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v18->_endpoint, endpoint);
  objc_storeStrong(&v19->_parameters, parameters);
  copyCEndpoint = [endpointCopy copyCEndpoint];
  copyCParameters = [parametersCopy copyCParameters];
  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  evaluator = v19->_evaluator;
  v19->_evaluator = evaluator_for_endpoint;

  v24 = [NSMutableSet setWithObject:activityCopy];
  activities = v19->_activities;
  v19->_activities = v24;

  v26 = os_log_create("com.apple.duetactivityscheduler", "NetworkMonitorEvaluationGroup");
  log = v19->_log;
  v19->_log = v26;

  v28 = v19->_evaluator;
  v33 = callbackCopy;
  v29 = v19;
  if (nw_path_evaluator_set_update_handler())
  {

LABEL_4:
    v30 = v19;
    goto LABEL_8;
  }

  v31 = v19->_log;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    sub_10012CBF8(v31, v29);
  }

  v30 = 0;
LABEL_8:

  return v30;
}

- (void)startMonitoringForActivity:(id)activity
{
  activityCopy = activity;
  v4 = self->_activities;
  objc_sync_enter(v4);
  [(NSMutableSet *)self->_activities addObject:activityCopy];
  objc_sync_exit(v4);
}

- (BOOL)stopMonitoringForActivity:(id)activity
{
  activityCopy = activity;
  v5 = self->_activities;
  objc_sync_enter(v5);
  [(NSMutableSet *)self->_activities removeObject:activityCopy];
  v6 = [(NSMutableSet *)self->_activities count];
  if (!v6)
  {
    evaluator = self->_evaluator;
    nw_path_evaluator_cancel();
  }

  objc_sync_exit(v5);

  return v6 == 0;
}

- (BOOL)isMonitoringActivity:(id)activity
{
  activityCopy = activity;
  v5 = self->_activities;
  objc_sync_enter(v5);
  LOBYTE(self) = [(NSMutableSet *)self->_activities containsObject:activityCopy];
  objc_sync_exit(v5);

  return self;
}

- (BOOL)isMonitoringWithParameters:(id)parameters endpoint:(id)endpoint
{
  endpointCopy = endpoint;
  parameters = self->_parameters;
  parametersCopy = parameters;
  copyCParameters = [(NWParameters *)parameters copyCParameters];
  copyCParameters2 = [parametersCopy copyCParameters];

  if (nw_parameters_are_equivalent_for_path_evaluation())
  {
    v11 = [(NWEndpoint *)self->_endpoint isEqual:endpointCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v15 = 1;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = _DASNetworkMonitorEvaluationGroup;
    if ([(_DASNetworkMonitorEvaluationGroup *)&v17 isEqual:equalCopy])
    {
      v5 = equalCopy;
      v6 = self->_activities;
      objc_sync_enter(v6);
      endpoint = self->_endpoint;
      endpoint = [(_DASNetworkMonitorEvaluationGroup *)v5 endpoint];
      if ([(NWEndpoint *)endpoint isEqual:endpoint])
      {
        parameters = self->_parameters;
        parameters = [(_DASNetworkMonitorEvaluationGroup *)v5 parameters];
        if ([(NWParameters *)parameters isEqual:parameters])
        {
          evaluator = self->_evaluator;
          evaluator = [(_DASNetworkMonitorEvaluationGroup *)v5 evaluator];
          if ([(OS_nw_path_evaluator *)evaluator isEqual:evaluator])
          {
            activities = self->_activities;
            activities = [(_DASNetworkMonitorEvaluationGroup *)v5 activities];
            v15 = [(NSMutableSet *)activities isEqual:activities];
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }

      objc_sync_exit(v6);
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = self->_activities;
  objc_sync_enter(v3);
  v4 = [(NWEndpoint *)self->_endpoint hash];
  v5 = [(NWParameters *)self->_parameters hash];
  v6 = [(OS_nw_path_evaluator *)self->_evaluator hash];
  v7 = v4 ^ (2 * v5) ^ (4 * v6) ^ (8 * [(NSMutableSet *)self->_activities hash]);
  objc_sync_exit(v3);

  return v7;
}

- (id)description
{
  v3 = self->_activities;
  objc_sync_enter(v3);
  v4 = [NSString stringWithFormat:@"<%@: %p> Activity IDs: %@", objc_opt_class(), self, self->_activities];
  objc_sync_exit(v3);

  return v4;
}

- (id)debugDescription
{
  v3 = self->_activities;
  objc_sync_enter(v3);
  v4 = [NSString stringWithFormat:@"<%@: %p> Endpoint: %@, Parameters: %@, Activity IDs: %@", objc_opt_class(), self, self->_endpoint, self->_parameters, self->_activities];
  objc_sync_exit(v3);

  return v4;
}

@end