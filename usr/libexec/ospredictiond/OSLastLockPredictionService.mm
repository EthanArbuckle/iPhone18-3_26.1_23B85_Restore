@interface OSLastLockPredictionService
+ (id)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)overriddenToUseTimeRestrictionFromHour:(int *)hour toHour:(int *)toHour;
- (BOOL)upgradePredictorIfNeeded;
- (OSLastLockPredictionService)init;
- (double)readOverriddenRequeryTime;
- (id)readOverriddenModelOutput;
- (void)activityHistoryDiagnosisWithHandler:(id)handler;
- (void)deviceUsageDiagnosisWithHandler:(id)handler;
- (void)fixModelOutput:(id)output withHandler:(id)handler;
- (void)hasEnoughActivityHistoryWithHandler:(id)handler;
- (void)lastLockPredictionResultAtDate:(id)date withTimeSinceActive:(double)active withHandler:(id)handler;
- (void)lastLockPredictionResultWithHandler:(id)handler;
- (void)modelDescriptionWithHandler:(id)handler;
- (void)modelMetadataWithHandler:(id)handler;
- (void)overrideRecommendedRequeryTimeTo:(double)to withHandler:(id)handler;
- (void)recommendedRequeryTimeWithHandler:(id)handler;
- (void)restoreLastLockModelWithHandler:(id)handler;
- (void)restoreRecommendedRequeryTimeWithHandler:(id)handler;
- (void)scheduleModelUpgradeAfterInterval:(double)interval;
- (void)unfixModelOutputWithHandler:(id)handler;
- (void)writeOverriddenModelOutput:(id)output;
- (void)writeOverriddenRequeryTime:(double)time;
@end

@implementation OSLastLockPredictionService

+ (id)sharedInstance
{
  if (qword_1000B69F0 != -1)
  {
    sub_10005B468();
  }

  v3 = qword_1000B69E8;

  return v3;
}

- (OSLastLockPredictionService)init
{
  v29.receiver = self;
  v29.super_class = OSLastLockPredictionService;
  v2 = [(OSLastLockPredictionService *)&v29 initWithMachServiceName:@"com.apple.OSIntelligence.lastlock"];
  if (!v2)
  {
LABEL_20:
    [(OSLastLockPredictionService *)v2 resume:v23];
    v17 = v2;
    goto LABEL_21;
  }

  v3 = os_log_create("com.apple.osintelligence", "lastlock.predictionservice");
  v4 = qword_1000B69E0;
  qword_1000B69E0 = v3;

  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("com.apple.osintelligence.lastlockprediction.mainqueue", v5);
  mainQueue = v2->_mainQueue;
  v2->_mainQueue = v6;

  v8 = qword_1000B69E0;
  if (v2->_mainQueue)
  {
    if (os_log_type_enabled(qword_1000B69E0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Initializing last lock predictor...", buf, 2u);
    }

    v9 = +[_OSLastLockPredictor predictor];
    objc_storeStrong(&v2->_predictor, v9);
    dateOfHistorySufficiency = v2->_dateOfHistorySufficiency;
    v2->_dateOfHistorySufficiency = 0;

    if (([v9 requireEnoughHistory] & 1) == 0)
    {
      v11 = qword_1000B69E0;
      if (os_log_type_enabled(qword_1000B69E0, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Predictor needs upgrade. Calculating date of history sufficiency...", buf, 2u);
      }

      v28 = 0;
      v12 = [OSIntelligenceUtilities projectedDateOfHistorySufficiencyWithError:&v28];
      v13 = v28;
      v14 = v2->_dateOfHistorySufficiency;
      v2->_dateOfHistorySufficiency = v12;

      if (v13 || !v2->_dateOfHistorySufficiency)
      {
        if (os_log_type_enabled(qword_1000B69E0, OS_LOG_TYPE_ERROR))
        {
          sub_10005B47C();
        }

        v15 = [NSDate dateWithTimeIntervalSinceNow:604800.0];
        v16 = v2->_dateOfHistorySufficiency;
        v2->_dateOfHistorySufficiency = v15;
      }

      v18 = qword_1000B69E0;
      if (os_log_type_enabled(qword_1000B69E0, OS_LOG_TYPE_INFO))
      {
        v19 = v2->_dateOfHistorySufficiency;
        *buf = 138412290;
        v31 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Projected to reach history sufficienty by: %@", buf, 0xCu);
      }

      [(NSDate *)v2->_dateOfHistorySufficiency timeIntervalSinceNow];
      [(OSLastLockPredictionService *)v2 scheduleModelUpgradeAfterInterval:fmin(v20, 604800.0)];
    }

    [(OSLastLockPredictionService *)v2 setDelegate:v2];
    *buf = 0;
    v21 = dispatch_get_global_queue(-32768, 0);
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_100012644;
    v26 = &unk_100094900;
    v27 = v2;
    notify_register_dispatch("com.apple.osintelligence.defaultmodelchanged", buf, v21, &v23);

    goto LABEL_20;
  }

  if (os_log_type_enabled(qword_1000B69E0, OS_LOG_TYPE_ERROR))
  {
    sub_10005B4F0();
  }

  v17 = 0;
LABEL_21:

  return v17;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.osintelligence.lastlock"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v6 BOOLValue] & 1) != 0)
  {
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____OSLastLockPredictionProtocol_Private];
    [connectionCopy setExportedInterface:v7];

    v8 = [[OSLastLockPredictionServiceXPCProxy alloc] initWithObserver:self];
    [connectionCopy setExportedObject:v8];

    [connectionCopy resume];
    v9 = 1;
  }

  else
  {
    if (os_log_type_enabled(qword_1000B69E0, OS_LOG_TYPE_ERROR))
    {
      sub_10005A210();
    }

    v9 = 0;
  }

  return v9;
}

- (void)modelDescriptionWithHandler:(id)handler
{
  handlerCopy = handler;
  predictor = [(OSLastLockPredictionService *)self predictor];
  v6 = [predictor description];
  (*(handler + 2))(handlerCopy, v6);
}

- (void)modelMetadataWithHandler:(id)handler
{
  handlerCopy = handler;
  predictor = [(OSLastLockPredictionService *)self predictor];
  metadata = [predictor metadata];
  (*(handler + 2))(handlerCopy, metadata);
}

- (void)hasEnoughActivityHistoryWithHandler:(id)handler
{
  handlerCopy = handler;
  (*(handler + 2))(handlerCopy, +[OSIntelligenceUtilities hasEnoughInactivityHistory]);
}

- (void)recommendedRequeryTimeWithHandler:(id)handler
{
  handlerCopy = handler;
  if (+[OSIntelligenceUtilities isInternalBuild]&& ([(OSLastLockPredictionService *)self readOverriddenRequeryTime], v6 = v5, v5 != -777.0))
  {
    v8 = qword_1000B69E0;
    if (os_log_type_enabled(qword_1000B69E0, OS_LOG_TYPE_DEBUG))
    {
      sub_10005B52C(v8, v6);
    }

    handlerCopy[2](handlerCopy, v6);
  }

  else
  {
    predictor = [(OSLastLockPredictionService *)self predictor];
    [predictor recommendedRequeryTime];
    (handlerCopy[2])(handlerCopy);
  }
}

- (void)activityHistoryDiagnosisWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[OSIntelligenceUtilities userHistoryDiagnosis];
  (*(handler + 2))(handlerCopy, v5);
}

- (void)deviceUsageDiagnosisWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[OSIntelligenceUtilities deviceUsageDiagnosis];
  (*(handler + 2))(handlerCopy, v5);
}

- (void)lastLockPredictionResultWithHandler:(id)handler
{
  handlerCopy = handler;
  if (os_log_type_enabled(qword_1000B69E0, OS_LOG_TYPE_ERROR))
  {
    sub_10005B5A8();
  }

  v4 = [NSError errorWithDomain:@"com.apple.osintelligence" code:5 userInfo:&off_10009CAE8];
  handlerCopy[2](handlerCopy, 0, v4);
}

- (void)lastLockPredictionResultAtDate:(id)date withTimeSinceActive:(double)active withHandler:(id)handler
{
  handlerCopy = handler;
  if (os_log_type_enabled(qword_1000B69E0, OS_LOG_TYPE_ERROR))
  {
    sub_10005B5A8();
  }

  v6 = [NSError errorWithDomain:@"com.apple.osintelligence" code:5 userInfo:&off_10009CB10];
  handlerCopy[2](handlerCopy, 0, v6);
}

- (void)fixModelOutput:(id)output withHandler:(id)handler
{
  outputCopy = output;
  handlerCopy = handler;
  outputCopy = [NSString stringWithFormat:@"Fixed model output = %@", outputCopy];
  readOverriddenModelOutput = [(OSLastLockPredictionService *)self readOverriddenModelOutput];
  if (readOverriddenModelOutput)
  {
    outputCopy2 = [NSString stringWithFormat:@"Replaced fixed output %@ with %@", readOverriddenModelOutput, outputCopy];

    outputCopy = outputCopy2;
  }

  [(OSLastLockPredictionService *)self writeOverriddenModelOutput:outputCopy];
  handlerCopy[2](handlerCopy, outputCopy);
}

- (void)unfixModelOutputWithHandler:(id)handler
{
  handlerCopy = handler;
  readOverriddenModelOutput = [(OSLastLockPredictionService *)self readOverriddenModelOutput];
  v7 = readOverriddenModelOutput;
  if (readOverriddenModelOutput)
  {
    v6 = [NSString stringWithFormat:@"Unfixed model output (previously fixed to be %@)", readOverriddenModelOutput];
  }

  else
  {
    v6 = @"Nothing to be unfixed";
  }

  [(OSLastLockPredictionService *)self writeOverriddenModelOutput:0];
  handlerCopy[2](handlerCopy, v6);
}

- (void)overrideRecommendedRequeryTimeTo:(double)to withHandler:(id)handler
{
  if (to <= 0.0)
  {
    (*(handler + 2))(handler, 0);
  }

  else
  {
    handlerCopy = handler;
    [(OSLastLockPredictionService *)self writeOverriddenRequeryTime:to];
    handlerCopy[2](handlerCopy, 1);
  }
}

- (void)restoreRecommendedRequeryTimeWithHandler:(id)handler
{
  handlerCopy = handler;
  [(OSLastLockPredictionService *)self writeOverriddenRequeryTime:-777.0];
  handlerCopy[2](handlerCopy, 1);
}

- (void)restoreLastLockModelWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[OSIntelligenceDefines lastLockUserDefaults];
  [v5 removeObjectForKey:@"modelType"];

  v6 = +[_OSLastLockPredictor predictor];
  [(OSLastLockPredictionService *)self setPredictor:v6];

  predictor = [(OSLastLockPredictionService *)self predictor];
  handlerCopy[2](handlerCopy, predictor != 0);
}

- (id)readOverriddenModelOutput
{
  if (+[OSIntelligenceUtilities isInternalBuild])
  {
    v2 = +[OSIntelligenceDefines lastLockUserDefaults];
    v3 = [v2 objectForKey:@"overriddenModelOutput"];
    if (v3)
    {
      v8 = 0;
      v4 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v8];
      v5 = v8;
      if (v5)
      {
        if (os_log_type_enabled(qword_1000B69E0, OS_LOG_TYPE_ERROR))
        {
          sub_10005B5E4();
        }

        v6 = 0;
      }

      else
      {
        v6 = v4;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)writeOverriddenModelOutput:(id)output
{
  outputCopy = output;
  v4 = +[OSIntelligenceDefines lastLockUserDefaults];
  if (outputCopy)
  {
    v6 = 0;
    v5 = [NSKeyedArchiver archivedDataWithRootObject:outputCopy requiringSecureCoding:1 error:&v6];
    [v4 setObject:v5 forKey:@"overriddenModelOutput"];
  }

  else
  {
    if (os_log_type_enabled(qword_1000B69E0, OS_LOG_TYPE_DEBUG))
    {
      sub_10005A640();
    }

    [v4 removeObjectForKey:@"overriddenModelOutput"];
  }
}

- (double)readOverriddenRequeryTime
{
  v2 = +[OSIntelligenceDefines lastLockUserDefaults];
  v3 = [v2 objectForKey:@"overriddenRequeryTime"];

  if (v3)
  {
    [v2 doubleForKey:@"overriddenRequeryTime"];
    v5 = v4;
  }

  else
  {
    v5 = -777.0;
  }

  return v5;
}

- (void)writeOverriddenRequeryTime:(double)time
{
  v4 = +[OSIntelligenceDefines lastLockUserDefaults];
  v5 = v4;
  if (time == -777.0)
  {
    [v4 removeObjectForKey:@"overriddenRequeryTime"];
  }

  else
  {
    [v4 setDouble:@"overriddenRequeryTime" forKey:time];
  }
}

- (BOOL)overriddenToUseTimeRestrictionFromHour:(int *)hour toHour:(int *)toHour
{
  if (+[OSIntelligenceUtilities isInternalBuild])
  {
    v6 = +[OSIntelligenceDefines lastLockUserDefaults];
    v7 = [v6 objectForKey:@"overriddenBedtime"];

    if (v7)
    {
      v8 = [v6 objectForKey:@"overriddenWakeupTime"];

      if (v8)
      {
        *hour = [v6 integerForKey:@"overriddenBedtime"];
        v9 = [v6 integerForKey:@"overriddenWakeupTime"];
        *toHour = v9;
        if (*hour <= 0x17 && v9 < 0x18)
        {
          v10 = 1;
LABEL_11:

          return v10;
        }

        v11 = qword_1000B69E0;
        if (os_log_type_enabled(qword_1000B69E0, OS_LOG_TYPE_ERROR))
        {
          sub_10005B658(hour, toHour, v11);
        }
      }
    }

    v10 = 0;
    goto LABEL_11;
  }

  return 0;
}

- (void)scheduleModelUpgradeAfterInterval:(double)interval
{
  if (interval < 86400.0)
  {
    interval = 86400.0;
  }

  if (interval <= 604800.0)
  {
    intervalCopy = interval;
  }

  else
  {
    intervalCopy = 604800.0;
  }

  objc_initWeak(&location, self);
  v4 = dispatch_walltime(0, 1000000000 * vcvtpd_s64_f64(intervalCopy));
  v5 = dispatch_get_global_queue(-2, 0);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100013474;
  v6[3] = &unk_100094978;
  objc_copyWeak(&v7, &location);
  dispatch_after(v4, v5, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (BOOL)upgradePredictorIfNeeded
{
  predictor = [(OSLastLockPredictionService *)self predictor];
  requireEnoughHistory = [predictor requireEnoughHistory];

  if (requireEnoughHistory)
  {
    v5 = qword_1000B69E0;
    v6 = 1;
    if (os_log_type_enabled(qword_1000B69E0, OS_LOG_TYPE_INFO))
    {
      v7 = v5;
      predictor2 = [(OSLastLockPredictionService *)self predictor];
      predictorType = [predictor2 predictorType];
      v33 = 138412290;
      v34 = predictorType;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Predictor type is already history-aware: %@", &v33, 0xCu);

      goto LABEL_4;
    }
  }

  else
  {
    dateOfHistorySufficiency = self->_dateOfHistorySufficiency;
    if (!dateOfHistorySufficiency)
    {
      v11 = [OSIntelligenceUtilities projectedDateOfHistorySufficiencyWithError:0];
      v12 = self->_dateOfHistorySufficiency;
      self->_dateOfHistorySufficiency = v11;

      dateOfHistorySufficiency = self->_dateOfHistorySufficiency;
    }

    [(NSDate *)dateOfHistorySufficiency timeIntervalSinceNow];
    v14 = v13;
    v15 = qword_1000B69E0;
    v16 = os_log_type_enabled(qword_1000B69E0, OS_LOG_TYPE_INFO);
    if (v14 <= 0.0)
    {
      if (v16)
      {
        v18 = self->_dateOfHistorySufficiency;
        v33 = 138412290;
        v34 = v18;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Reached date of sufficiency of %@. Upgrading to the ML models...", &v33, 0xCu);
      }

      v19 = +[_OSLastLockPredictor predictor];
      v7 = v19;
      if (!v19)
      {
        goto LABEL_15;
      }

      predictorType2 = [v19 predictorType];
      predictor3 = [(OSLastLockPredictionService *)self predictor];
      predictorType3 = [predictor3 predictorType];
      v23 = [predictorType2 isEqualToString:predictorType3];

      if (!v23)
      {
        [(OSLastLockPredictionService *)self setPredictor:v7];
        predictor4 = [(OSLastLockPredictionService *)self predictor];
        requireEnoughHistory2 = [predictor4 requireEnoughHistory];

        v29 = qword_1000B69E0;
        if (requireEnoughHistory2)
        {
          v6 = 1;
          if (!os_log_type_enabled(qword_1000B69E0, OS_LOG_TYPE_INFO))
          {
            goto LABEL_23;
          }

          predictorType = v29;
          predictor5 = [(OSLastLockPredictionService *)self predictor];
          predictorType4 = [predictor5 predictorType];
          v33 = 138412290;
          v34 = predictorType4;
          _os_log_impl(&_mh_execute_header, predictorType, OS_LOG_TYPE_INFO, "Successfully upgraded the model to: %@", &v33, 0xCu);

LABEL_4:
LABEL_23:

          return v6;
        }

        if (os_log_type_enabled(qword_1000B69E0, OS_LOG_TYPE_ERROR))
        {
          sub_10005B6E8(v29, self);
        }
      }

      else
      {
LABEL_15:
        v24 = qword_1000B69E0;
        if (os_log_type_enabled(qword_1000B69E0, OS_LOG_TYPE_INFO))
        {
          v25 = v24;
          predictorType5 = [v7 predictorType];
          v33 = 138412290;
          v34 = predictorType5;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "New predictor is nil or type remains the same as old model: %@. Upgrade aborted.", &v33, 0xCu);
        }
      }

      v6 = 0;
      goto LABEL_23;
    }

    if (v16)
    {
      v17 = self->_dateOfHistorySufficiency;
      v33 = 138412290;
      v34 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Still haven't reached history sufficient. New projected date: %@", &v33, 0xCu);
    }

    return 0;
  }

  return v6;
}

@end