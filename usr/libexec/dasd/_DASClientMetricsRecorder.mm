@interface _DASClientMetricsRecorder
+ (id)sharedInstance;
- (BOOL)reportCustomCheckpoint:(unint64_t)checkpoint forTask:(id)task error:(id *)error;
- (BOOL)reportFeatureCheckpoint:(unint64_t)checkpoint forFeature:(unint64_t)feature atDate:(id)date error:(id *)error;
- (BOOL)reportFeatureStatus:(unint64_t)status forFeature:(unint64_t)feature stateChangedDate:(id)date error:(id *)error;
- (BOOL)reportProgressMetricsForIdentifier:(id)identifier taskName:(id)name itemsCompleted:(id)completed totalItemCount:(id)count qos:(id)qos workloadCategory:(unint64_t)category expectedValue:(id)value error:(id *)self0;
- (BOOL)reportTaskCheckpoint:(unint64_t)checkpoint forTask:(id)task error:(id *)error;
- (BOOL)reportThroughputMetricsForIdentifier:(id)identifier taskName:(id)name itemCount:(unint64_t)count totalDuration:(double)duration qos:(id)qos workloadCategory:(unint64_t)category expectedValue:(id)value error:(id *)self0;
- (BOOL)sendDataToPPS:(id)s subsystem:(id)subsystem category:(id)category;
- (BOOL)sendTaskCheckpoint:(unint64_t)checkpoint forTask:(id)task error:(id *)error;
- (BOOL)shouldLogCheckpointForActivity:(id)activity;
- (BOOL)validateFeatureCode:(id)code;
- (_DASClientMetricsRecorder)init;
- (void)addDependencyInfoForTask:(id)task producedResultIdentifiers:(id)identifiers dependencyIdentifiers:(id)dependencyIdentifiers;
- (void)addFeatureCodesForTask:(id)task featureCodes:(id)codes semanticVersion:(int64_t)version;
- (void)addMappingForTaskID:(unint64_t)d toTaskInstanceID:(id)iD;
- (void)addTaskInstanceInfoAtTermination:(id)termination;
- (void)checkAndAddMetadataForTask:(id)task;
- (void)handlePLBackgroundProcessingNotification;
- (void)logFeatureAvailability:(unint64_t)availability forFeature:(unint64_t)feature atDate:(id)date;
- (void)populateFeatureStatusFromPast;
- (void)registerFeatureStatusTask;
- (void)registerReportTaskInfoTask;
- (void)reportDependencyInfoForTasks;
- (void)reportFeatureCodesForTasks;
- (void)reportFeatureStatus;
@end

@implementation _DASClientMetricsRecorder

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008E73C;
  block[3] = &unk_1001B54A0;
  block[4] = self;
  if (qword_10020B5D8 != -1)
  {
    dispatch_once(&qword_10020B5D8, block);
  }

  v2 = qword_10020B5D0;

  return v2;
}

- (_DASClientMetricsRecorder)init
{
  v47.receiver = self;
  v47.super_class = _DASClientMetricsRecorder;
  v2 = [(_DASClientMetricsRecorder *)&v47 init];
  if (v2)
  {
    v3 = [_DASDaemonLogger logForCategory:@"checkpointRecorder"];
    log = v2->_log;
    v2->_log = v3;

    v5 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
    defaults = v2->_defaults;
    v2->_defaults = v5;

    v7 = objc_opt_new();
    taskToFeatureCodes = v2->_taskToFeatureCodes;
    v2->_taskToFeatureCodes = v7;

    v9 = objc_opt_new();
    taskToSemanticVersion = v2->_taskToSemanticVersion;
    v2->_taskToSemanticVersion = v9;

    v11 = objc_opt_new();
    taskToDependencies = v2->_taskToDependencies;
    v2->_taskToDependencies = v11;

    v13 = objc_opt_new();
    availableStatus = v2->_availableStatus;
    v2->_availableStatus = v13;

    v15 = objc_opt_new();
    previewAvailableStatus = v2->_previewAvailableStatus;
    v2->_previewAvailableStatus = v15;

    v17 = [[_DASLFUCache alloc] initWithCapacity:1000];
    taskMetadataCache = v2->_taskMetadataCache;
    v2->_taskMetadataCache = v17;

    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_attr_make_with_qos_class(v19, QOS_CLASS_BACKGROUND, 0);
    v21 = dispatch_queue_create("com.apple.duetactivityscheduler.taskCheckpoint", v20);
    taskCheckpointQueue = v2->_taskCheckpointQueue;
    v2->_taskCheckpointQueue = v21;

    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_attr_make_with_qos_class(v23, QOS_CLASS_BACKGROUND, 0);
    v25 = dispatch_queue_create("com.apple.duetactivityscheduler.featureCode", v24);
    featureCodeQueue = v2->_featureCodeQueue;
    v2->_featureCodeQueue = v25;

    v27 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v28 = dispatch_queue_attr_make_with_qos_class(v27, QOS_CLASS_BACKGROUND, 0);
    v29 = dispatch_queue_create("com.apple.duetactivityscheduler.taskDependency", v28);
    taskDependencyQueue = v2->_taskDependencyQueue;
    v2->_taskDependencyQueue = v29;

    v31 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v32 = dispatch_queue_attr_make_with_qos_class(v31, QOS_CLASS_BACKGROUND, 0);
    v33 = dispatch_queue_create("com.apple.duetactivityscheduler.featureAvailability", v32);
    featureAvailabilityQueue = v2->_featureAvailabilityQueue;
    v2->_featureAvailabilityQueue = v33;

    v35 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v36 = dispatch_queue_attr_make_with_qos_class(v35, QOS_CLASS_BACKGROUND, 0);
    v37 = dispatch_queue_create("com.apple.duetactivityscheduler.performanceMetrics", v36);
    performanceMetricsQueue = v2->_performanceMetricsQueue;
    v2->_performanceMetricsQueue = v37;

    v39 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v40 = dispatch_queue_create("com.apple.duetactivityscheduler.featureStatusRecorder", v39);
    featureStatusQueue = v2->_featureStatusQueue;
    v2->_featureStatusQueue = v40;

    uTF8String = [@"com.apple.perfpowerservices.reportfeaturestatus" UTF8String];
    v43 = v2->_featureStatusQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10008EAC8;
    handler[3] = &unk_1001B5B78;
    v46 = v2;
    notify_register_dispatch(uTF8String, &v2->_notifyToken, v43, handler);
  }

  return v2;
}

- (BOOL)reportFeatureCheckpoint:(unint64_t)checkpoint forFeature:(unint64_t)feature atDate:(id)date error:(id *)error
{
  dateCopy = date;
  v11 = [NSNumber numberWithUnsignedInteger:feature];
  v12 = [(_DASClientMetricsRecorder *)self validateFeatureCode:v11];

  if (v12)
  {
    v35 = dateCopy;
    v13 = [NSNumber numberWithUnsignedInteger:feature];
    v14 = [NSPredicate predicateWithFormat:@"FeatureCode == %@", v13];

    v15 = +[_DASPPSDataManager sharedInstance];
    v40 = 0;
    v16 = [v15 getPPSTimeSeries:0 category:1 valueFilter:0 metrics:&v40 timeFilter:? limitCount:? offsetCount:? readDirection:? filepath:? error:?];
    v17 = v40;

    v34 = v16;
    if (!v17 && v16)
    {
      v33 = v14;
      firstObject = [v16 firstObject];
      metricKeysAndValues = [firstObject metricKeysAndValues];
      v20 = [metricKeysAndValues objectForKeyedSubscript:@"FeatureState"];
      unsignedIntegerValue = [v20 unsignedIntegerValue];

      if (unsignedIntegerValue == checkpoint && (checkpoint == 50 || checkpoint == 30))
      {
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          v23 = log;
          v24 = [NSNumber numberWithUnsignedInteger:checkpoint];
          v25 = [NSNumber numberWithUnsignedInteger:feature];
          *buf = 138412546;
          v42 = v24;
          v43 = 2112;
          v44 = v25;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Duplicate feature state: %@ for feature code: %@", buf, 0x16u);
        }

        v26 = 1;
        dateCopy = v35;
        v14 = v33;
LABEL_20:

        goto LABEL_23;
      }

      v14 = v33;
    }

    dateCopy = v35;
    if (checkpoint == 50 || checkpoint == 30)
    {
      featureAvailabilityQueue = self->_featureAvailabilityQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10008EF00;
      block[3] = &unk_1001B74C8;
      block[4] = self;
      checkpointCopy = checkpoint;
      featureCopy = feature;
      v37 = v35;
      dispatch_sync(featureAvailabilityQueue, block);
    }

    firstObject = +[NSMutableDictionary dictionary];
    v29 = [NSNumber numberWithUnsignedInteger:feature];
    [firstObject setObject:v29 forKeyedSubscript:@"FeatureCode"];

    v30 = [NSNumber numberWithUnsignedInteger:checkpoint];
    [firstObject setObject:v30 forKeyedSubscript:@"FeatureState"];

    [firstObject setObject:v35 forKeyedSubscript:@"StateChangedDate"];
    if (error)
    {
      v31 = v17;
      *error = v17;
    }

    v26 = [(_DASClientMetricsRecorder *)self sendDataToPPS:firstObject subsystem:@"BackgroundProcessing" category:@"FeatureCheckpoint"];
    goto LABEL_20;
  }

  v17 = [NSError errorWithDomain:BGSystemTaskSchedulerErrorDomain code:110 userInfo:0];
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100124164();
    if (error)
    {
      goto LABEL_12;
    }

LABEL_22:
    v26 = 0;
    goto LABEL_23;
  }

  if (!error)
  {
    goto LABEL_22;
  }

LABEL_12:
  v27 = v17;
  v26 = 0;
  *error = v17;
LABEL_23:

  return v26;
}

- (void)logFeatureAvailability:(unint64_t)availability forFeature:(unint64_t)feature atDate:(id)date
{
  dateCopy = date;
  if (availability == 50)
  {
    v9 = @"availableStatus";
    v10 = 88;
    goto LABEL_5;
  }

  if (availability == 30)
  {
    v9 = @"previewAvailableStatus";
    v10 = 96;
LABEL_5:
    v11 = *(&self->super.isa + v10);
    v12 = [NSNumber numberWithUnsignedInteger:feature];
    stringValue = [v12 stringValue];
    [v11 setObject:dateCopy forKeyedSubscript:stringValue];

    [(NSUserDefaults *)self->_defaults setObject:*(&self->super.isa + v10) forKey:v9];
  }

  v14 = +[_DASPPSDataManager sharedInstance];
  v40[0] = 0;
  v15 = [v14 getPPSTimeSeries:@"BackgroundProcessing" category:@"Config" valueFilter:0 metrics:0 timeFilter:0 limitCount:1 offsetCount:0 readDirection:1 filepath:0 error:v40];
  v16 = v40[0];

  v17 = 0;
  if (!v16 && v15)
  {
    firstObject = [v15 firstObject];
    metricKeysAndValues = [firstObject metricKeysAndValues];
    v20 = [metricKeysAndValues objectForKeyedSubscript:@"LastUpgradeSystemTimestamp"];

    metricKeysAndValues2 = [firstObject metricKeysAndValues];
    [metricKeysAndValues2 objectForKeyedSubscript:@"InstallType"];

    if (v20)
    {
      [v20 doubleValue];
      v17 = [NSDate dateWithTimeIntervalSince1970:?];
      [dateCopy timeIntervalSinceDate:v17];
    }

    else
    {
      v17 = 0;
    }
  }

  v37 = v15;
  if (feature - 100 > 0x64)
  {
    v26 = 0;
  }

  else
  {
    v22 = [NSPredicate predicateWithFormat:@"WorkloadType == %@", &off_1001CA0C0];
    v23 = +[_DASPPSDataManager sharedInstance];
    v39 = 0;
    v24 = [v23 getPPSTimeSeries:@"BackgroundProcessing" category:@"WorkloadInformation" valueFilter:v22 metrics:0 timeFilter:0 limitCount:1 offsetCount:0 readDirection:1 filepath:0 error:&v39];
    v25 = v39;

    v26 = 0;
    if (!v25 && v24)
    {
      firstObject2 = [v24 firstObject];
      metricKeysAndValues3 = [firstObject2 metricKeysAndValues];
      v26 = [metricKeysAndValues3 objectForKeyedSubscript:@"Size"];
    }
  }

  v29 = +[_APRSPLLogger sharedInstance];
  [v29 getInferredCarryStatus];

  if (v17 && [v17 compare:dateCopy] != 1)
  {
    v30 = +[_DASPPSDataManager sharedInstance];
    v31 = [[NSDateInterval alloc] initWithStartDate:v17 endDate:dateCopy];
    v38 = 0;
    v32 = [v30 getPPSTimeSeries:@"BackgroundProcessing" category:@"FeatureCheckpoint" valueFilter:0 metrics:0 timeFilter:v31 limitCount:1 offsetCount:0 readDirection:1 filepath:0 error:&v38];
    v33 = v38;

    if (!v33 && v32)
    {
      firstObject3 = [v32 firstObject];
      metricKeysAndValues4 = [firstObject3 metricKeysAndValues];
      [metricKeysAndValues4 objectForKeyedSubscript:@"FeatureState"];
    }
  }

  v36 = v26;
  AnalyticsSendEventLazy();
}

- (BOOL)validateFeatureCode:(id)code
{
  codeCopy = code;
  v4 = +[_DASPlistParser sharedInstance];
  v5 = [v4 dictionaryForPlist:2];

  stringValue = [codeCopy stringValue];

  v7 = [v5 objectForKey:stringValue];
  LOBYTE(codeCopy) = v7 != 0;

  return codeCopy;
}

- (BOOL)shouldLogCheckpointForActivity:(id)activity
{
  activityCopy = activity;
  if (([activityCopy requestsApplicationLaunch] & 1) != 0 || (objc_msgSend(activityCopy, "widgetID"), v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = 0;
  }

  else if ([activityCopy isIntensive])
  {
    v5 = 1;
  }

  else
  {
    fastPass = [activityCopy fastPass];
    if (fastPass)
    {
      v5 = 1;
    }

    else
    {
      name = [activityCopy name];
      if ([name containsString:@"com.apple.cloudphotod.sync"])
      {
        v5 = 1;
      }

      else
      {
        name2 = [activityCopy name];
        if ([name2 containsString:@"com.apple.assetsd.backgroundjobservice.urgentresource"])
        {
          v5 = 1;
        }

        else
        {
          name3 = [activityCopy name];
          v5 = [name3 containsString:@"com.apple.spotlightknowledged"];
        }
      }
    }
  }

  return v5;
}

- (BOOL)sendTaskCheckpoint:(unint64_t)checkpoint forTask:(id)task error:(id *)error
{
  taskCopy = task;
  v8 = +[NSMutableDictionary dictionary];
  [v8 setObject:taskCopy forKeyedSubscript:@"TaskInstanceID"];

  v9 = [NSNumber numberWithUnsignedInteger:checkpoint];
  [v8 setObject:v9 forKeyedSubscript:@"CheckpointState"];

  LOBYTE(v9) = [(_DASClientMetricsRecorder *)self sendDataToPPS:v8 subsystem:@"BackgroundProcessing" category:@"TaskCheckpoint"];
  return v9;
}

- (BOOL)reportTaskCheckpoint:(unint64_t)checkpoint forTask:(id)task error:(id *)error
{
  taskCopy = task;
  v8 = [(_DASClientMetricsRecorder *)self shouldLogCheckpointForActivity:taskCopy];
  if (v8)
  {
    taskCheckpointQueue = self->_taskCheckpointQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10008F93C;
    block[3] = &unk_1001B5DC0;
    checkpointCopy = checkpoint;
    v12 = taskCopy;
    selfCopy = self;
    dispatch_async(taskCheckpointQueue, block);
  }

  return v8;
}

- (BOOL)reportCustomCheckpoint:(unint64_t)checkpoint forTask:(id)task error:(id *)error
{
  taskCopy = task;
  v8 = +[NSMutableDictionary dictionary];
  [v8 setObject:taskCopy forKeyedSubscript:@"TaskName"];

  v9 = [NSNumber numberWithUnsignedInteger:checkpoint];
  [v8 setObject:v9 forKeyedSubscript:@"CheckpointState"];

  LOBYTE(v9) = [(_DASClientMetricsRecorder *)self sendDataToPPS:v8 subsystem:@"BackgroundProcessing" category:@"CustomCheckpoint"];
  return v9;
}

- (void)handlePLBackgroundProcessingNotification
{
  state64 = 0;
  notifyToken = self->_notifyToken;
  if (notifyToken == -1)
  {
    log = self->_log;
    if (!os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v7 = "Invalid notify token";
    v8 = log;
    v9 = 2;
    goto LABEL_7;
  }

  state = notify_get_state(notifyToken, &state64);
  if (state)
  {
    v5 = state;
    v6 = self->_log;
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 67109120;
    v13 = v5;
    v7 = "notify_get_state() failed with error %u";
    v8 = v6;
    v9 = 8;
LABEL_7:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
    return;
  }
}

- (void)addFeatureCodesForTask:(id)task featureCodes:(id)codes semanticVersion:(int64_t)version
{
  taskCopy = task;
  codesCopy = codes;
  featureCodeQueue = self->_featureCodeQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10008FC50;
  v13[3] = &unk_1001B7100;
  v13[4] = self;
  v14 = taskCopy;
  v15 = codesCopy;
  versionCopy = version;
  v11 = codesCopy;
  v12 = taskCopy;
  dispatch_async(featureCodeQueue, v13);
}

- (BOOL)reportFeatureStatus:(unint64_t)status forFeature:(unint64_t)feature stateChangedDate:(id)date error:(id *)error
{
  dateCopy = date;
  v10 = +[NSMutableDictionary dictionary];
  v11 = [NSNumber numberWithUnsignedInteger:feature];
  [v10 setObject:v11 forKeyedSubscript:@"FeatureCode"];

  v12 = [NSNumber numberWithUnsignedInteger:status];
  [v10 setObject:v12 forKeyedSubscript:@"FeatureState"];

  [v10 setObject:dateCopy forKeyedSubscript:@"StateChangedDate"];
  LOBYTE(self) = [(_DASClientMetricsRecorder *)self sendDataToPPS:v10 subsystem:@"BackgroundProcessing" category:@"FeatureStatus"];

  return self;
}

- (void)reportFeatureCodesForTasks
{
  featureCodeQueue = self->_featureCodeQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008FE30;
  block[3] = &unk_1001B5668;
  block[4] = self;
  dispatch_sync(featureCodeQueue, block);
}

- (void)populateFeatureStatusFromPast
{
  v3 = +[_DASPPSDataManager sharedInstance];
  v37 = [NSPredicate predicateWithFormat:@"FeatureState == %@ OR FeatureState == %@", &off_1001CA0D8, &off_1001CA0F0];
  v38 = v3;
  v4 = [v3 getPPSTimeSeries:@"BackgroundProcessing" category:@"FeatureCheckpoint" valueFilter:0 metrics:? timeFilter:? filepath:? error:?];
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100124218();
  }

  v40 = objc_opt_new();
  v39 = objc_opt_new();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v5 = v4;
  v46 = [v5 countByEnumeratingWithState:&v47 objects:v57 count:16];
  if (v46)
  {
    v6 = *v48;
    v7 = &NSLocalizedDescriptionKey_ptr;
    selfCopy = self;
    v42 = *v48;
    v44 = v5;
    do
    {
      for (i = 0; i != v46; i = i + 1)
      {
        if (*v48 != v6)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v47 + 1) + 8 * i);
        metricKeysAndValues = [v9 metricKeysAndValues];
        v11 = [metricKeysAndValues objectForKeyedSubscript:@"FeatureCode"];
        v12 = v7[20];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          integerValue = [v11 integerValue];
          v13 = [metricKeysAndValues objectForKeyedSubscript:@"FeatureState"];
          v14 = v7[20];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v13;
            v16 = [metricKeysAndValues objectForKeyedSubscript:@"StateChangedDate"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = v16;
              v43 = v15;
              if ([v15 unsignedIntegerValue] == 50)
              {
                v18 = [(NSErrorUserInfoKey *)v7[20] numberWithInteger:integerValue];
                stringValue = [v18 stringValue];
                v20 = [(NSMutableDictionary *)v40 objectForKeyedSubscript:stringValue];

                if (!v20)
                {
                  v21 = [NSNumber numberWithInteger:integerValue];
                  stringValue2 = [v21 stringValue];
                  v23 = v40;
                  goto LABEL_24;
                }

                goto LABEL_25;
              }

              if ([v15 unsignedIntegerValue] == 30)
              {
                v27 = [(NSErrorUserInfoKey *)v7[20] numberWithInteger:integerValue];
                stringValue3 = [v27 stringValue];
                v29 = [(NSMutableDictionary *)v39 objectForKeyedSubscript:stringValue3];

                if (!v29)
                {
                  v21 = [(NSErrorUserInfoKey *)v7[20] numberWithInteger:integerValue];
                  stringValue2 = [v21 stringValue];
                  v23 = v39;
LABEL_24:
                  [(NSMutableDictionary *)v23 setObject:v17 forKeyedSubscript:stringValue2];
                }

LABEL_25:
                self = selfCopy;
                v6 = v42;
              }

              v15 = v43;
            }

            else
            {
              log = self->_log;
              if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
              {
                v30 = log;
                v31 = objc_opt_class();
                *buf = 134218498;
                v52 = integerValue;
                v53 = 2112;
                v54 = v16;
                v55 = 2112;
                v56 = v31;
                v32 = v31;
                _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "populateFeatureStatusFromPast: StateChangedDate for FeatureCode %ld is not an NSDate or is missing. Value: %@, Class: %@", buf, 0x20u);

                v6 = v42;
              }

              v17 = 0;
            }

            v5 = v44;
          }

          else
          {
            v25 = self->_log;
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218242;
              v52 = integerValue;
              v53 = 2112;
              v54 = v9;
              _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "populateFeatureStatusFromPast: Invalid or missing FeatureState for FeatureCode %ld. Event: %@", buf, 0x16u);
            }
          }

          v7 = &NSLocalizedDescriptionKey_ptr;
          goto LABEL_29;
        }

        v24 = self->_log;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v52 = v9;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "populateFeatureStatusFromPast: Invalid or missing FeatureCode. Event: %@", buf, 0xCu);
        }

LABEL_29:
      }

      v46 = [v5 countByEnumeratingWithState:&v47 objects:v57 count:16];
    }

    while (v46);
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100124280();
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_1001242E8();
  }

  availableStatus = self->_availableStatus;
  self->_availableStatus = v40;
  v34 = v40;

  previewAvailableStatus = self->_previewAvailableStatus;
  self->_previewAvailableStatus = v39;
  v36 = v39;

  [(NSUserDefaults *)self->_defaults setObject:self->_availableStatus forKey:@"availableStatus"];
  [(NSUserDefaults *)self->_defaults setObject:self->_previewAvailableStatus forKey:@"previewAvailableStatus"];
}

- (void)reportFeatureStatus
{
  featureAvailabilityQueue = self->_featureAvailabilityQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000906EC;
  block[3] = &unk_1001B5668;
  block[4] = self;
  dispatch_sync(featureAvailabilityQueue, block);
}

- (void)addDependencyInfoForTask:(id)task producedResultIdentifiers:(id)identifiers dependencyIdentifiers:(id)dependencyIdentifiers
{
  taskCopy = task;
  identifiersCopy = identifiers;
  dependencyIdentifiersCopy = dependencyIdentifiers;
  taskDependencyQueue = self->_taskDependencyQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100090A5C;
  v15[3] = &unk_1001B5E90;
  v16 = identifiersCopy;
  v17 = dependencyIdentifiersCopy;
  selfCopy = self;
  v19 = taskCopy;
  v12 = taskCopy;
  v13 = dependencyIdentifiersCopy;
  v14 = identifiersCopy;
  dispatch_async(taskDependencyQueue, v15);
}

- (void)checkAndAddMetadataForTask:(id)task
{
  taskCopy = task;
  taskMetadataCache = self->_taskMetadataCache;
  v41 = taskCopy;
  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [taskCopy taskID]);
  v7 = [(_DASLFUCache *)taskMetadataCache objectForKey:v6];

  if (!v7)
  {
    v8 = +[NSMutableDictionary dictionary];
    v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v41 taskID]);
    [v8 setObject:v9 forKeyedSubscript:@"TaskID"];

    name = [v41 name];
    [v8 setObject:name forKeyedSubscript:@"Name"];

    v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v41 schedulingPriority]);
    [v8 setObject:v11 forKeyedSubscript:@"Priority"];

    groupName = [v41 groupName];
    [v8 setObject:groupName forKeyedSubscript:@"GroupName"];

    fileProtection = [v41 fileProtection];
    v14 = [fileProtection description];
    [v8 setObject:v14 forKeyedSubscript:@"FileProtection"];

    v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v41 cpuIntensive]);
    [v8 setObject:v15 forKeyedSubscript:@"IsCPUIntensive"];

    v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v41 memoryIntensive]);
    [v8 setObject:v16 forKeyedSubscript:@"IsMemoryIntensive"];

    v17 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v41 aneIntensive]);
    [v8 setObject:v17 forKeyedSubscript:@"IsANEIntensive"];

    v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v41 gpuIntensive]);
    [v8 setObject:v18 forKeyedSubscript:@"IsGPUIntensive"];

    v19 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v41 diskIntensive]);
    [v8 setObject:v19 forKeyedSubscript:@"IsDiskIntensive"];

    v20 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v41 requiresPlugin]);
    [v8 setObject:v20 forKeyedSubscript:@"RequiresPlugin"];

    v21 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v41 requiresNetwork]);
    [v8 setObject:v21 forKeyedSubscript:@"RequiresNetwork"];

    v22 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v41 requiresInexpensiveNetworking]);
    [v8 setObject:v22 forKeyedSubscript:@"RequiresInexpensiveNetworking"];

    v23 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v41 requiresUnconstrainedNetworking]);
    [v8 setObject:v23 forKeyedSubscript:@"RequiresUnconstrainedNetworking"];

    v24 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v41 requiresDeviceInactivity]);
    [v8 setObject:v24 forKeyedSubscript:@"RequiresDeviceInactivity"];

    v25 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v41 requiresSignificantUserInactivity]);
    [v8 setObject:v25 forKeyedSubscript:@"RequiresSignificantUserInactivity"];

    v26 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v41 triggersRestart]);
    [v8 setObject:v26 forKeyedSubscript:@"TriggersRestart"];

    bundleId = [v41 bundleId];
    [v8 setObject:bundleId forKeyedSubscript:@"BundleID"];

    relatedApplications = [v41 relatedApplications];
    v29 = [_DASUtils commaDelimitedEntriesFrom:relatedApplications];

    if (v29)
    {
      [v8 setObject:v29 forKeyedSubscript:@"Application"];
    }

    involvedProcesses = [v41 involvedProcesses];
    v31 = [_DASUtils commaDelimitedEntriesFrom:involvedProcesses];

    if (v31)
    {
      [v8 setObject:v31 forKeyedSubscript:@"InvolvedProcesses"];
    }

    v32 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v41 taskID]);
    v33 = [NSPredicate predicateWithFormat:@"TaskID = %@", v32];

    v34 = +[_DASPPSDataManager sharedInstance];
    v35 = [v34 getPPSTimeSeries:@"BackgroundProcessing" category:@"TaskMetadata" valueFilter:v33 metrics:0 timeFilter:0 filepath:0 error:0];

    if (v35 && ([v35 array], v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "count"), v36, v37) || -[_DASClientMetricsRecorder sendDataToPPS:subsystem:category:](self, "sendDataToPPS:subsystem:category:", v8, @"BackgroundProcessing", @"TaskMetadata"))
    {
      v38 = self->_taskMetadataCache;
      v39 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v41 taskID]);
      v40 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v41 taskID]);
      [(_DASLFUCache *)v38 setObject:v39 forKey:v40];
    }
  }
}

- (void)addMappingForTaskID:(unint64_t)d toTaskInstanceID:(id)iD
{
  iDCopy = iD;
  v8 = +[NSMutableDictionary dictionary];
  v7 = [NSNumber numberWithUnsignedInteger:d];
  [v8 setObject:v7 forKeyedSubscript:@"TaskID"];

  [v8 setObject:iDCopy forKeyedSubscript:@"TaskInstanceID"];
  [(_DASClientMetricsRecorder *)self sendDataToPPS:v8 subsystem:@"BackgroundProcessing" category:@"TaskInstanceStore"];
}

- (void)addTaskInstanceInfoAtTermination:(id)termination
{
  terminationCopy = termination;
  v4 = +[NSMutableDictionary dictionary];
  taskInstanceID = [terminationCopy taskInstanceID];
  [v4 setObject:taskInstanceID forKeyedSubscript:@"TaskInstanceID"];

  v6 = +[_DASUtils processNameFromPID:](_DASUtils, "processNameFromPID:", [terminationCopy pid]);
  [v4 setObject:v6 forKeyedSubscript:@"ProcessName"];

  v7 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", [terminationCopy pid]);
  [v4 setObject:v7 forKeyedSubscript:@"PID"];

  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [terminationCopy transferSize]);
  [v4 setObject:v8 forKeyedSubscript:@"NetworkTaskSize"];

  [terminationCopy interval];
  v9 = [NSNumber numberWithDouble:?];
  [v4 setObject:v9 forKeyedSubscript:@"Interval"];

  startAfter = [terminationCopy startAfter];
  [v4 setObject:startAfter forKeyedSubscript:@"ScheduleAfterDate"];

  startBefore = [terminationCopy startBefore];
  [v4 setObject:startBefore forKeyedSubscript:@"ScheduleBeforeDate"];

  startDate = [terminationCopy startDate];
  [v4 setObject:startDate forKeyedSubscript:@"StartDate"];

  endTime = [terminationCopy endTime];
  [v4 setObject:endTime forKeyedSubscript:@"EndDate"];

  suspendRequestDate = [terminationCopy suspendRequestDate];
  [v4 setObject:suspendRequestDate forKeyedSubscript:@"SuspendRequestDate"];

  limitationResponse = [terminationCopy limitationResponse];
  v16 = [limitationResponse count];

  if (v16)
  {
    limitationResponse2 = [terminationCopy limitationResponse];
    v18 = [_DASLimiterResponse bitmaskFromResponses:limitationResponse2];

    v19 = [NSNumber numberWithUnsignedInteger:v18];
    [v4 setObject:v19 forKeyedSubscript:@"Limitations"];
  }

  suspendRequestDate2 = [terminationCopy suspendRequestDate];

  if (suspendRequestDate2)
  {
    v21 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [terminationCopy lastDenialValue]);
    [v4 setObject:v21 forKeyedSubscript:@"SuspensionReason"];
  }

  [terminationCopy cpuTimeConsumed];
  v22 = [NSNumber numberWithDouble:?];
  [v4 setObject:v22 forKeyedSubscript:@"CPUTimeConsumed"];

  [terminationCopy cpuCycleConsumed];
  v24 = log10(fabs(v23));
  v25 = __exp10(4.0 - floor(v24));
  [terminationCopy cpuCycleConsumed];
  v27 = [NSNumber numberWithDouble:round(v26 * v25) / v25];
  [v4 setObject:v27 forKeyedSubscript:@"CPUCycleConsumed"];

  [terminationCopy diskIOConsumed];
  v28 = [NSNumber numberWithDouble:?];
  [v4 setObject:v28 forKeyedSubscript:@"DiskIOConsumed"];

  [terminationCopy diskIOWrites];
  v29 = [NSNumber numberWithDouble:?];
  [v4 setObject:v29 forKeyedSubscript:@"DiskIOWrites"];

  [terminationCopy billedEnergy];
  v30 = [NSNumber numberWithDouble:?];
  [v4 setObject:v30 forKeyedSubscript:@"BilledEnergy"];

  [terminationCopy dataConsumed];
  v31 = [NSNumber numberWithDouble:?];
  [v4 setObject:v31 forKeyedSubscript:@"DataConsumed"];

  v32 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [terminationCopy startedOnBattery]);
  [v4 setObject:v32 forKeyedSubscript:@"StartedOnBattery"];

  v33 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [terminationCopy startedInIdle]);
  [v4 setObject:v33 forKeyedSubscript:@"StartedInIdle"];

  v34 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [terminationCopy isIndeedIntensive]);
  [v4 setObject:v34 forKeyedSubscript:@"IndeedIntensive"];

  v35 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [terminationCopy indeedCPUIntensive]);
  [v4 setObject:v35 forKeyedSubscript:@"IndeedCPUIntensive"];

  v36 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [terminationCopy indeedMemoryIntensive]);
  [v4 setObject:v36 forKeyedSubscript:@"IndeedMemoryIntensive"];

  v37 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [terminationCopy thermalLevelElevated]);
  [v4 setObject:v37 forKeyedSubscript:@"ThermalLevelElevated"];

  v38 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [terminationCopy requestsImmediateRuntime]);
  [v4 setObject:v38 forKeyedSubscript:@"RequestsImmediateRuntime"];

  [(_DASClientMetricsRecorder *)self sendDataToPPS:v4 subsystem:@"BackgroundProcessing" category:@"TaskInstanceData"];
}

- (void)registerFeatureStatusTask
{
  v3 = +[BGSystemTaskScheduler sharedScheduler];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100091914;
  v4[3] = &unk_1001B5770;
  v4[4] = self;
  [v3 registerForTaskWithIdentifier:@"com.apple.dasd.reportFeatureStatus" usingQueue:0 launchHandler:v4];
}

- (void)registerReportTaskInfoTask
{
  v3 = +[BGSystemTaskScheduler sharedScheduler];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100091A04;
  v4[3] = &unk_1001B5770;
  v4[4] = self;
  [v3 registerForTaskWithIdentifier:@"com.apple.dasd.reportTaskInfo" usingQueue:0 launchHandler:v4];
}

- (void)reportDependencyInfoForTasks
{
  taskDependencyQueue = self->_taskDependencyQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100091AD8;
  block[3] = &unk_1001B5668;
  block[4] = self;
  dispatch_sync(taskDependencyQueue, block);
}

- (BOOL)reportThroughputMetricsForIdentifier:(id)identifier taskName:(id)name itemCount:(unint64_t)count totalDuration:(double)duration qos:(id)qos workloadCategory:(unint64_t)category expectedValue:(id)value error:(id *)self0
{
  identifierCopy = identifier;
  nameCopy = name;
  qosCopy = qos;
  valueCopy = value;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v20 = 1;
  v41 = 1;
  performanceMetricsQueue = self->_performanceMetricsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100091ECC;
  block[3] = &unk_1001B7518;
  v22 = identifierCopy;
  v29 = v22;
  v23 = nameCopy;
  v30 = v23;
  v24 = qosCopy;
  v31 = v24;
  categoryCopy = category;
  v25 = valueCopy;
  durationCopy = duration;
  countCopy = count;
  selfCopy = self;
  v34 = &v38;
  v32 = v25;
  dispatch_sync(performanceMetricsQueue, block);
  if ((v39[3] & 1) == 0)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100124390();
    }

    v20 = *(v39 + 24);
  }

  _Block_object_dispose(&v38, 8);
  return v20 & 1;
}

- (BOOL)reportProgressMetricsForIdentifier:(id)identifier taskName:(id)name itemsCompleted:(id)completed totalItemCount:(id)count qos:(id)qos workloadCategory:(unint64_t)category expectedValue:(id)value error:(id *)self0
{
  identifierCopy = identifier;
  nameCopy = name;
  completedCopy = completed;
  countCopy = count;
  qosCopy = qos;
  valueCopy = value;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 1;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_100092318;
  v48 = sub_100092328;
  v49 = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v43[3] = 0;
  performanceMetricsQueue = self->_performanceMetricsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100092330;
  block[3] = &unk_1001B7540;
  v21 = completedCopy;
  v32 = v21;
  v22 = identifierCopy;
  v39 = &v44;
  v40 = v43;
  v33 = v22;
  selfCopy = self;
  v41 = &v50;
  v23 = nameCopy;
  v35 = v23;
  v24 = qosCopy;
  v36 = v24;
  categoryCopy = category;
  v25 = valueCopy;
  v37 = v25;
  v26 = countCopy;
  v38 = v26;
  dispatch_sync(performanceMetricsQueue, block);
  if ((v51[3] & 1) == 0)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100124400();
      if (!error)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if (error)
    {
LABEL_4:
      *error = v45[5];
    }
  }

LABEL_5:
  v27 = *(v51 + 24);

  _Block_object_dispose(v43, 8);
  _Block_object_dispose(&v44, 8);

  _Block_object_dispose(&v50, 8);
  return v27;
}

- (BOOL)sendDataToPPS:(id)s subsystem:(id)subsystem category:(id)category
{
  categoryCopy = category;
  subsystemCopy = subsystem;
  sCopy = s;
  v10 = +[_DASPPSDataManager sharedInstance];
  v11 = [v10 sendDataToPPS:sCopy subsystem:subsystemCopy category:categoryCopy];

  return v11;
}

@end