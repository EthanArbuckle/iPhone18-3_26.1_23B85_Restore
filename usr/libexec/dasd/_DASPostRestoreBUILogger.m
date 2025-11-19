@interface _DASPostRestoreBUILogger
+ (id)sharedInstance;
- (_DASPostRestoreBUILogger)init;
- (void)reportState:(unint64_t)a3 forActivity:(id)a4;
- (void)reportState:(unint64_t)a3 forTaskName:(id)a4 featureCode:(id)a5 involvedProcesses:(id)a6;
@end

@implementation _DASPostRestoreBUILogger

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000ACF70;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
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

- (void)reportState:(unint64_t)a3 forActivity:(id)a4
{
  v6 = a4;
  v7 = [v6 fastPass];
  if (v7)
  {
    v8 = v7;
    v9 = [v6 identifier];

    if (v9)
    {
      if (a3 != 10 || ![(_DASRuntimeLimiter *)self->_runtimeLimiter featureHasNoRemainingRuntimeForActivity:v6])
      {
        v10 = [v6 serviceName];

        if (v10)
        {
          v11 = [v6 serviceName];
          v12 = v11;
          if (v11)
          {
            v13 = v11;
          }

          else
          {
            v13 = &stru_1001BA3C0;
          }

          v14 = [NSArray arrayWithObject:v13];

          v15 = [v6 identifier];
          v16 = [v6 featureCodes];
          [(_DASPostRestoreBUILogger *)self reportState:a3 forTaskName:v15 featureCode:v16 involvedProcesses:v14];
        }

        else
        {
          log = self->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            sub_1001279D4(log, v6);
          }
        }
      }
    }
  }
}

- (void)reportState:(unint64_t)a3 forTaskName:(id)a4 featureCode:(id)a5 involvedProcesses:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (a3 > 29)
  {
    if (a3 != 50 && a3 != 30)
    {
      goto LABEL_15;
    }

    v13 = 30;
  }

  else
  {
    v13 = a3;
    if (a3 != 10)
    {
      v13 = a3;
      if (a3 != 20)
      {
        goto LABEL_15;
      }
    }
  }

  v14 = +[NSMutableDictionary dictionary];
  [v14 setObject:v10 forKeyedSubscript:@"fastPassName"];
  [v14 setObject:v11 forKeyedSubscript:@"featureCodes"];
  v15 = [NSNumber numberWithUnsignedInteger:v13];
  [v14 setObject:v15 forKeyedSubscript:@"state"];

  [v14 setObject:v12 forKeyedSubscript:@"processName"];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = v14;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Reporting %@ for BUI via PPS", &v20, 0xCu);
  }

  v17 = +[_DASPPSDataManager sharedInstance];
  [v17 sendDataToPPS:v14 subsystem:@"XPCMetrics" category:@"OngoingRestore"];

  if (a3 == 30)
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