@interface _DASPostRestoreBUILogger
+ (id)sharedInstance;
- (_DASPostRestoreBUILogger)init;
- (void)reportState:(unint64_t)state forActivity:(id)activity;
- (void)reportState:(unint64_t)state forTaskName:(id)name featureCode:(id)code involvedProcesses:(id)processes;
@end

@implementation _DASPostRestoreBUILogger

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000ACF70;
  block[3] = &unk_1001B54A0;
  block[4] = self;
  if (qword_10020B6F8 != -1)
  {
    dispatch_once(&qword_10020B6F8, block);
  }

  v2 = qword_10020B6F0;

  return v2;
}

- (_DASPostRestoreBUILogger)init
{
  v8.receiver = self;
  v8.super_class = _DASPostRestoreBUILogger;
  v2 = [(_DASPostRestoreBUILogger *)&v8 init];
  if (v2)
  {
    v3 = [_DASDaemonLogger logForCategory:@"postRestoreBUILogger"];
    log = v2->_log;
    v2->_log = v3;

    v5 = +[_DASRuntimeLimiter sharedLimiter];
    runtimeLimiter = v2->_runtimeLimiter;
    v2->_runtimeLimiter = v5;
  }

  return v2;
}

- (void)reportState:(unint64_t)state forActivity:(id)activity
{
  activityCopy = activity;
  fastPass = [activityCopy fastPass];
  if (fastPass)
  {
    v8 = fastPass;
    identifier = [activityCopy identifier];

    if (identifier)
    {
      if (state != 10 || ![(_DASRuntimeLimiter *)self->_runtimeLimiter featureHasNoRemainingRuntimeForActivity:activityCopy])
      {
        serviceName = [activityCopy serviceName];

        if (serviceName)
        {
          serviceName2 = [activityCopy serviceName];
          v12 = serviceName2;
          if (serviceName2)
          {
            v13 = serviceName2;
          }

          else
          {
            v13 = &stru_1001BA3C0;
          }

          v14 = [NSArray arrayWithObject:v13];

          identifier2 = [activityCopy identifier];
          featureCodes = [activityCopy featureCodes];
          [(_DASPostRestoreBUILogger *)self reportState:state forTaskName:identifier2 featureCode:featureCodes involvedProcesses:v14];
        }

        else
        {
          log = self->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            sub_1001279D4(log, activityCopy);
          }
        }
      }
    }
  }
}

- (void)reportState:(unint64_t)state forTaskName:(id)name featureCode:(id)code involvedProcesses:(id)processes
{
  nameCopy = name;
  codeCopy = code;
  processesCopy = processes;
  if (state > 29)
  {
    if (state != 50 && state != 30)
    {
      goto LABEL_15;
    }

    stateCopy2 = 30;
  }

  else
  {
    stateCopy2 = state;
    if (state != 10)
    {
      stateCopy2 = state;
      if (state != 20)
      {
        goto LABEL_15;
      }
    }
  }

  v14 = +[NSMutableDictionary dictionary];
  [v14 setObject:nameCopy forKeyedSubscript:@"fastPassName"];
  [v14 setObject:codeCopy forKeyedSubscript:@"featureCodes"];
  v15 = [NSNumber numberWithUnsignedInteger:stateCopy2];
  [v14 setObject:v15 forKeyedSubscript:@"state"];

  [v14 setObject:processesCopy forKeyedSubscript:@"processName"];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = v14;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Reporting %@ for BUI via PPS", &v20, 0xCu);
  }

  v17 = +[_DASPPSDataManager sharedInstance];
  [v17 sendDataToPPS:v14 subsystem:@"XPCMetrics" category:@"OngoingRestore"];

  if (state == 30)
  {
    [v14 setObject:&off_1001CA360 forKeyedSubscript:@"state"];
    v18 = self->_log;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Reporting %@ for BUI via PPS", &v20, 0xCu);
    }

    v19 = +[_DASPPSDataManager sharedInstance];
    [v19 sendDataToPPS:v14 subsystem:@"XPCMetrics" category:@"OngoingRestore"];
  }

LABEL_15:
}

@end