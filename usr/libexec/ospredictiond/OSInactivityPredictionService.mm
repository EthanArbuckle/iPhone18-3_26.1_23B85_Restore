@interface OSInactivityPredictionService
+ (id)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)overriddenToUseTimeRestrictionFromHour:(int *)hour toHour:(int *)toHour;
- (BOOL)upgradePredictorIfNeeded;
- (OSInactivityPredictionService)init;
- (double)readOverriddenWaitTime;
- (id)readOverriddenModelOutput;
- (unint64_t)evaluatePredictorTypeWithLookahead:(double)lookahead withIncrement:(double)increment withActivity:(id)activity;
- (void)backedUpDataWithHandler:(id)handler;
- (void)deviceUsageDiagnosisWithHandler:(id)handler;
- (void)fixModelOutput:(id)output withHandler:(id)handler;
- (void)hasEnoughInactivityHistoryWithHandler:(id)handler;
- (void)inactivityHistoryDiagnosisWithHandler:(id)handler;
- (void)longInactivityPredictionResultAtDate:(id)date withTimeSinceInactive:(double)inactive withOptions:(int64_t)options withHandler:(id)handler;
- (void)longInactivityPredictionResultWithOptions:(int64_t)options withHandler:(id)handler;
- (void)modelDescriptionWithHandler:(id)handler;
- (void)modelMetadataWithHandler:(id)handler;
- (void)overrideRecommendedWaitTimeTo:(double)to withHandler:(id)handler;
- (void)recommendedWaitTimeWithHandler:(id)handler;
- (void)registerBackupTask;
- (void)registerDeviceTypeEvalution:(BOOL)evalution;
- (void)restoreInactivityModelWithHandler:(id)handler;
- (void)restoreRecommendedWaitTimeWithHandler:(id)handler;
- (void)scheduleModelUpgradeAfterInterval:(double)interval;
- (void)unfixModelOutputWithHandler:(id)handler;
- (void)writeEvaluatedPredictorTypeToDefaults:(unint64_t)defaults;
- (void)writeOverriddenModelOutput:(id)output;
- (void)writeOverriddenWaitTime:(double)time;
@end

@implementation OSInactivityPredictionService

+ (id)sharedInstance
{
  if (qword_1000B6978 != -1)
  {
    sub_10005A07C();
  }

  v3 = qword_1000B6970;

  return v3;
}

- (OSInactivityPredictionService)init
{
  v41.receiver = self;
  v41.super_class = OSInactivityPredictionService;
  v2 = [(OSInactivityPredictionService *)&v41 initWithMachServiceName:@"com.apple.OSIntelligence"];
  if (!v2)
  {
LABEL_20:
    [(OSInactivityPredictionService *)v2 resume];
    v20 = v2;
    goto LABEL_21;
  }

  v3 = os_log_create("com.apple.osintelligence", "inactivity.predictionservice");
  v4 = qword_1000B6968;
  qword_1000B6968 = v3;

  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("com.apple.osintelligence.inactivityprediction.mainqueue", v5);
  mainQueue = v2->_mainQueue;
  v2->_mainQueue = v6;

  if (v2->_mainQueue)
  {
    v8 = qword_1000B6968;
    if (os_log_type_enabled(qword_1000B6968, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Initializing inactivity predictor...", buf, 2u);
    }

    v9 = +[_OSInactivityPredictor predictor];
    objc_storeStrong(&v2->_predictor, v9);
    v10 = objc_alloc_init(_OSDataProtectionStateMonitor);
    v11 = +[_OSDataProtectionStateMonitor dataProtectionClassC];
    v12 = [v10 isDataAvailableFor:v11];

    if ((v12 & 1) == 0)
    {
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_100006038;
      v39[3] = &unk_1000948B0;
      v40 = v2;
      [v10 setChangeHandler:v39];
    }

    dateOfHistorySufficiency = v2->_dateOfHistorySufficiency;
    v2->_dateOfHistorySufficiency = 0;

    if (([v9 requireEnoughHistory] & 1) == 0)
    {
      v14 = qword_1000B6968;
      if (os_log_type_enabled(qword_1000B6968, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Predictor needs upgrade. Calculating date of history sufficiency...", buf, 2u);
      }

      v38 = 0;
      v15 = [OSIntelligenceUtilities projectedDateOfHistorySufficiencyWithError:&v38];
      v16 = v38;
      v17 = v2->_dateOfHistorySufficiency;
      v2->_dateOfHistorySufficiency = v15;

      if (v16 || !v2->_dateOfHistorySufficiency)
      {
        if (os_log_type_enabled(qword_1000B6968, OS_LOG_TYPE_ERROR))
        {
          sub_10005A090();
        }

        v18 = [NSDate dateWithTimeIntervalSinceNow:604800.0];
        v19 = v2->_dateOfHistorySufficiency;
        v2->_dateOfHistorySufficiency = v18;
      }

      v21 = qword_1000B6968;
      if (os_log_type_enabled(qword_1000B6968, OS_LOG_TYPE_INFO))
      {
        v22 = v2->_dateOfHistorySufficiency;
        *buf = 138412290;
        v43 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Projected to reach history sufficienty by: %@", buf, 0xCu);
      }

      [(NSDate *)v2->_dateOfHistorySufficiency timeIntervalSinceNow];
      [(OSInactivityPredictionService *)v2 scheduleModelUpgradeAfterInterval:fmin(v23, 604800.0)];
    }

    v24 = [TRIClient clientWithIdentifier:293];
    trialClient = v2->_trialClient;
    v2->_trialClient = v24;

    [(OSInactivityPredictionService *)v2 refreshTrial];
    objc_initWeak(buf, v2);
    v26 = v2->_trialClient;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100006168;
    v36[3] = &unk_1000948D8;
    objc_copyWeak(&v37, buf);
    v27 = [(TRIClient *)v26 addUpdateHandlerForNamespaceName:@"COREOS_PREDICTION_INACTIVITY" usingBlock:v36];
    v28 = [(TRIClient *)v2->_trialClient levelForFactor:@"onlyDefaultModel" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
    LODWORD(v26) = [v28 BOOLeanValue];

    [(OSInactivityPredictionService *)v2 registerDeviceTypeEvalution:+[OSIntelligenceUtilities hasEnoughInactivityHistory]& (v26 ^ 1)];
    [(OSInactivityPredictionService *)v2 setDelegate:v2];
    [(OSInactivityPredictionService *)v2 registerBackupTask];
    v29 = objc_alloc_init(_OSInactivityNotificationManager);
    notificationManager = v2->_notificationManager;
    v2->_notificationManager = v29;

    out_token = 0;
    v31 = dispatch_get_global_queue(-32768, 0);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000061AC;
    handler[3] = &unk_100094900;
    v34 = v2;
    notify_register_dispatch("com.apple.osintelligence.defaultmodelchanged", &out_token, v31, handler);

    objc_destroyWeak(&v37);
    objc_destroyWeak(buf);

    goto LABEL_20;
  }

  v20 = 0;
LABEL_21:

  return v20;
}

- (void)registerBackupTask
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_ALLOW_BATTERY, 0);
  xpc_dictionary_set_int64(v2, XPC_ACTIVITY_INTERVAL, 345600);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000634C;
  handler[3] = &unk_100094928;
  v5 = v2;
  v3 = v2;
  xpc_activity_register("com.apple.osintelligence.inactivitybackup", XPC_ACTIVITY_CHECK_IN, handler);
}

- (unint64_t)evaluatePredictorTypeWithLookahead:(double)lookahead withIncrement:(double)increment withActivity:(id)activity
{
  activityCopy = activity;
  v8 = +[_OSInactivityPredictorTwoStage evaluator];
  v9 = +[_OSLockHistory sharedInstance];
  v10 = +[NSDate now];
  v11 = [v9 getAllLockIntervalsEndingBefore:v10];

  v37 = v11;
  if ([v11 count])
  {
    p_superclass = longDurationModel.superclass;
    if (lookahead >= 0.0)
    {
      v38 = 0;
      v15 = 0.0;
      while (!xpc_activity_should_defer(activityCopy))
      {
        v16 = [NSDate dateWithTimeIntervalSinceNow:v15];
        if ([v9 didDateTakePlaceDuringRecentLongLocks:v16])
        {
          v39 = 0;
          v17 = [v8 longInactivityPredictionResultAtDate:v16 withLockHistory:v9 withOptions:1 withError:&v39];
          v18 = v39;
          if (v18)
          {
            v19 = p_superclass[301];
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v41 = v16;
              v42 = 2112;
              v43 = v18;
              _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Evaluating... Error: Date %@ with error %@", buf, 0x16u);
            }
          }

          else
          {
            v21 = activityCopy;
            v22 = v8;
            confidenceLevel = [v17 confidenceLevel];
            v24 = p_superclass;
            v25 = confidenceLevel;
            v26 = v24;
            v27 = v24[301];
            v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
            if (v25 == 2)
            {
              if (v28)
              {
                v35 = v27;
                v36 = [v17 description];
                *buf = 138412546;
                v41 = v16;
                v42 = 2112;
                v43 = v36;
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Evaluating... High confidence at %@ with output %@", buf, 0x16u);
              }

              v38 = 1;
              p_superclass = v26;
              v8 = v22;
              activityCopy = v21;
              goto LABEL_24;
            }

            if (v28)
            {
              v29 = v27;
              v30 = [v17 description];
              *buf = 138412546;
              v41 = v16;
              v42 = 2112;
              v43 = v30;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Evaluating... no engagement for date %@ with output %@", buf, 0x16u);
            }

            v31 = v38;
            if (!v38)
            {
              v31 = 2;
            }

            v38 = v31;
            p_superclass = v26;
            v8 = v22;
            activityCopy = v21;
          }
        }

        else
        {
          v20 = p_superclass[301];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v41 = v16;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Evaluating... Date %@ not worth querying because didn't happen during recent long locks", buf, 0xCu);
          }

          v18 = v16;
        }

        v15 = v15 + increment;
        if (v15 > lookahead)
        {
          goto LABEL_24;
        }
      }

      if (os_log_type_enabled(p_superclass[301], OS_LOG_TYPE_ERROR))
      {
        sub_10005A100();
      }

      if (!xpc_activity_set_state(activityCopy, 5) && os_log_type_enabled(p_superclass[301], OS_LOG_TYPE_ERROR))
      {
        sub_10005A13C();
      }
    }

    v38 = 0;
LABEL_24:
    v32 = p_superclass[301];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = @"default";
      v14 = v38;
      if (v38 == 2)
      {
        v33 = @"alternate";
      }

      *buf = 138412290;
      v41 = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Evaluated device to be %@ model", buf, 0xCu);
    }

    else
    {
      v14 = v38;
    }
  }

  else
  {
    v13 = qword_1000B6968;
    if (os_log_type_enabled(qword_1000B6968, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "No lock interval found--type unknown", buf, 2u);
    }

    v14 = 0;
  }

  return v14;
}

- (void)registerDeviceTypeEvalution:(BOOL)evalution
{
  evalutionCopy = evalution;
  v5 = +[OSIntelligenceDefines inactivityUserDefaults];
  v6 = [v5 integerForKey:@"modelType"];
  if (!evalutionCopy || v6 == 2)
  {
    xpc_activity_unregister("com.apple.osintelligence.evaluateModelType");
    v20 = qword_1000B6968;
    if (os_log_type_enabled(qword_1000B6968, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Not registering xpc to evaluate model type", buf, 2u);
    }
  }

  else
  {
    v7 = [v5 objectForKey:@"predictorType"];

    if (!v7)
    {
      v8 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v8, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
      xpc_dictionary_set_BOOL(v8, XPC_ACTIVITY_ALLOW_BATTERY, 0);
      v9 = [TRIClient clientWithIdentifier:293];
      trialClient = self->_trialClient;
      self->_trialClient = v9;

      v11 = [(TRIClient *)self->_trialClient levelForFactor:@"nextLongInactivityIncrements" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
      [v11 doubleValue];
      v13 = v12;

      if (v13 <= 0.0)
      {
        v14 = 3600.0;
      }

      else
      {
        v14 = v13;
      }

      v15 = [(TRIClient *)self->_trialClient levelForFactor:@"nextLongInactivityLookAhead" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
      [v15 doubleValue];
      v17 = v16;

      if (v17 <= 0.0)
      {
        v17 = 86400.0;
      }

      xpc_dictionary_set_int64(v8, XPC_ACTIVITY_INTERVAL, 28800);
      v18 = qword_1000B6968;
      if (os_log_type_enabled(qword_1000B6968, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v27 = 0x40DC200000000000;
        v28 = 2048;
        v29 = v17;
        v30 = 2048;
        v31 = v14;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Scheduling evaluation with interval %f, lookahead seconds %f, and increments seconds %f", buf, 0x20u);
      }

      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100006B6C;
      v21[3] = &unk_100094950;
      v22 = v8;
      selfCopy = self;
      v24 = v17;
      v25 = v14;
      v19 = v8;
      xpc_activity_register("com.apple.osintelligence.evaluateModelType", XPC_ACTIVITY_CHECK_IN, v21);
    }
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.osintelligence.inactivity"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v6 BOOLValue] & 1) != 0)
  {
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____OSInactivityPredictionProtocol_Private];
    [connectionCopy setExportedInterface:v7];

    v8 = [[OSInactivityPredictionServiceXPCProxy alloc] initWithObserver:self];
    [connectionCopy setExportedObject:v8];

    [connectionCopy resume];
    v9 = 1;
  }

  else
  {
    if (os_log_type_enabled(qword_1000B6968, OS_LOG_TYPE_ERROR))
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
  predictor = [(OSInactivityPredictionService *)self predictor];
  v6 = [predictor description];
  (*(handler + 2))(handlerCopy, v6);
}

- (void)modelMetadataWithHandler:(id)handler
{
  handlerCopy = handler;
  predictor = [(OSInactivityPredictionService *)self predictor];
  metadata = [predictor metadata];
  (*(handler + 2))(handlerCopy, metadata);
}

- (void)hasEnoughInactivityHistoryWithHandler:(id)handler
{
  handlerCopy = handler;
  (*(handler + 2))(handlerCopy, +[OSIntelligenceUtilities hasEnoughInactivityHistory]);
}

- (void)recommendedWaitTimeWithHandler:(id)handler
{
  handlerCopy = handler;
  [(OSInactivityPredictionService *)self readOverriddenWaitTime];
  v6 = v5;
  if (v5 == -777.0)
  {
    predictor = [(OSInactivityPredictionService *)self predictor];
    [predictor recommendedWaitTime];
    handlerCopy[2](handlerCopy);
  }

  else
  {
    v7 = qword_1000B6968;
    if (os_log_type_enabled(qword_1000B6968, OS_LOG_TYPE_DEBUG))
    {
      sub_10005A24C(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    (handlerCopy[2])(handlerCopy, v6);
  }
}

- (void)inactivityHistoryDiagnosisWithHandler:(id)handler
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

- (void)longInactivityPredictionResultWithOptions:(int64_t)options withHandler:(id)handler
{
  handlerCopy = handler;
  v27 = 0;
  if (![(OSInactivityPredictionService *)self overriddenToUseTimeRestrictionFromHour:&v27 + 4 toHour:&v27])
  {
    goto LABEL_5;
  }

  v7 = qword_1000B6968;
  if (os_log_type_enabled(qword_1000B6968, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    optionsCopy2 = options;
    v30 = 1024;
    *v31 = HIDWORD(v27);
    *&v31[4] = 1024;
    *&v31[6] = v27;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "(%ld) User has overridden to use time restriction during (%d, %d)", buf, 0x18u);
  }

  v8 = +[NSDate now];
  v9 = [OSIntelligenceUtilities isInputDateInTimeRange:v8 withEarlyTimeOfDay:SHIDWORD(v27) andLateTimeOfDay:v27];

  if ((v9 & 1) == 0)
  {
    v25 = qword_1000B6968;
    if (os_log_type_enabled(qword_1000B6968, OS_LOG_TYPE_DEBUG))
    {
      sub_10005A2BC(v25, options);
    }

    v11 = [[_OSInactivityPredictorOutput alloc] initWithConfidenceLevel:0 andConfidenceValue:5 andPredictedDuration:0.0 andReason:0.0];
    handlerCopy[2](handlerCopy, v11, 0);
  }

  else
  {
LABEL_5:
    readOverriddenModelOutput = [(OSInactivityPredictionService *)self readOverriddenModelOutput];
    if (readOverriddenModelOutput)
    {
      if (os_log_type_enabled(qword_1000B6968, OS_LOG_TYPE_DEBUG))
      {
        sub_10005A380();
      }

      handlerCopy[2](handlerCopy, readOverriddenModelOutput, 0);
      v11 = 0;
    }

    else
    {
      predictor = [(OSInactivityPredictionService *)self predictor];
      v26 = 0;
      v13 = [predictor longInactivityPredictionResultWithOptions:options withError:&v26];
      v11 = v26;

      if ([v13 confidenceLevel] == 2)
      {
        [v13 predictedDuration];
        if (v14 > 0.0)
        {
          v15 = +[OSIntelligenceDefines inactivityUserDefaults];
          if ([v15 BOOLForKey:@"showNotifications"])
          {
            if (options == 1 || !options && ([v13 predictedDuration], v16 > 7200.0))
            {
              notificationManager = self->_notificationManager;
              [v13 predictedDuration];
              v19 = [NSDate dateWithTimeIntervalSinceNow:v18 * 3600.0];
              v20 = [(_OSInactivityNotificationManager *)notificationManager postEngagedUntilDate:v19 inactivityOptions:options];
            }
          }

          v21 = qword_1000B6968;
          if (os_log_type_enabled(qword_1000B6968, OS_LOG_TYPE_DEFAULT))
          {
            v22 = v21;
            predictor2 = [(OSInactivityPredictionService *)self predictor];
            predictorType = [predictor2 predictorType];
            *buf = 134218498;
            optionsCopy2 = options;
            v30 = 2112;
            *v31 = predictorType;
            *&v31[8] = 2112;
            v32 = v13;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "(%ld) %@ predicts %@", buf, 0x20u);
          }
        }
      }

      (handlerCopy)[2](handlerCopy, v13, v11);
    }
  }
}

- (void)longInactivityPredictionResultAtDate:(id)date withTimeSinceInactive:(double)inactive withOptions:(int64_t)options withHandler:(id)handler
{
  dateCopy = date;
  handlerCopy = handler;
  v22 = 0;
  if (![(OSInactivityPredictionService *)self overriddenToUseTimeRestrictionFromHour:&v22 + 4 toHour:&v22])
  {
    goto LABEL_5;
  }

  if (os_log_type_enabled(qword_1000B6968, OS_LOG_TYPE_DEBUG))
  {
    sub_10005A404(&v22 + 1, &v22);
  }

  if (![OSIntelligenceUtilities isInputDateInTimeRange:dateCopy withEarlyTimeOfDay:SHIDWORD(v22) andLateTimeOfDay:v22])
  {
    if (os_log_type_enabled(qword_1000B6968, OS_LOG_TYPE_DEBUG))
    {
      sub_10005A480();
    }

    v13 = [[_OSInactivityPredictorOutput alloc] initWithConfidenceLevel:0 andConfidenceValue:5 andPredictedDuration:0.0 andReason:0.0];
    handlerCopy[2](handlerCopy, v13, 0);
  }

  else
  {
LABEL_5:
    readOverriddenModelOutput = [(OSInactivityPredictionService *)self readOverriddenModelOutput];
    if (readOverriddenModelOutput)
    {
      if (os_log_type_enabled(qword_1000B6968, OS_LOG_TYPE_DEBUG))
      {
        sub_10005A4E8();
      }

      handlerCopy[2](handlerCopy, readOverriddenModelOutput, 0);
      v13 = 0;
    }

    else
    {
      if (+[OSIntelligenceUtilities isDeviceRarelyUsedRecently])
      {
        v14 = qword_1000B6968;
        if (os_log_type_enabled(qword_1000B6968, OS_LOG_TYPE_ERROR))
        {
          sub_10005A178(v14);
        }
      }

      predictor = [(OSInactivityPredictionService *)self predictor];
      v21 = 0;
      v16 = [predictor longInactivityPredictionResultAtDate:dateCopy withTimeSinceInactive:options withOptions:&v21 withError:inactive];
      v13 = v21;

      v17 = qword_1000B6968;
      if (os_log_type_enabled(qword_1000B6968, OS_LOG_TYPE_INFO))
      {
        v18 = v17;
        predictor2 = [(OSInactivityPredictionService *)self predictor];
        predictorType = [predictor2 predictorType];
        *buf = 138412802;
        v24 = dateCopy;
        v25 = 2112;
        v26 = predictorType;
        v27 = 2112;
        v28 = v16;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "(At %@) %@ predicts %@", buf, 0x20u);
      }

      if (v13 && os_log_type_enabled(qword_1000B6968, OS_LOG_TYPE_ERROR))
      {
        sub_10005A550();
      }

      (handlerCopy)[2](handlerCopy, v16, v13);
    }
  }
}

- (void)fixModelOutput:(id)output withHandler:(id)handler
{
  outputCopy = output;
  handlerCopy = handler;
  outputCopy = [NSString stringWithFormat:@"Fixed model output = %@", outputCopy];
  readOverriddenModelOutput = [(OSInactivityPredictionService *)self readOverriddenModelOutput];
  if (readOverriddenModelOutput)
  {
    outputCopy2 = [NSString stringWithFormat:@"Replaced fixed output %@ with %@", readOverriddenModelOutput, outputCopy];

    outputCopy = outputCopy2;
  }

  [(OSInactivityPredictionService *)self writeOverriddenModelOutput:outputCopy];
  handlerCopy[2](handlerCopy, outputCopy);
}

- (void)unfixModelOutputWithHandler:(id)handler
{
  handlerCopy = handler;
  readOverriddenModelOutput = [(OSInactivityPredictionService *)self readOverriddenModelOutput];
  v7 = readOverriddenModelOutput;
  if (readOverriddenModelOutput)
  {
    v6 = [NSString stringWithFormat:@"Unfixed model output (previously fixed to be %@)", readOverriddenModelOutput];
  }

  else
  {
    v6 = @"Nothing to be unfixed";
  }

  [(OSInactivityPredictionService *)self writeOverriddenModelOutput:0];
  handlerCopy[2](handlerCopy, v6);
}

- (void)overrideRecommendedWaitTimeTo:(double)to withHandler:(id)handler
{
  if (to <= 0.0)
  {
    (*(handler + 2))(handler, 0);
  }

  else
  {
    handlerCopy = handler;
    [(OSInactivityPredictionService *)self writeOverriddenWaitTime:to];
    handlerCopy[2](handlerCopy, 1);
  }
}

- (void)restoreRecommendedWaitTimeWithHandler:(id)handler
{
  handlerCopy = handler;
  [(OSInactivityPredictionService *)self writeOverriddenWaitTime:-777.0];
  handlerCopy[2](handlerCopy, 1);
}

- (void)restoreInactivityModelWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[OSIntelligenceDefines inactivityUserDefaults];
  [v5 removeObjectForKey:@"modelType"];

  v6 = +[_OSInactivityPredictor predictor];
  [(OSInactivityPredictionService *)self setPredictor:v6];

  predictor = [(OSInactivityPredictionService *)self predictor];
  handlerCopy[2](handlerCopy, predictor != 0);
}

- (void)backedUpDataWithHandler:(id)handler
{
  handlerCopy = handler;
  v4 = objc_alloc_init(_OSInactivityPredictionBackupManager);
  v5 = qword_1000B6968;
  if (os_log_type_enabled(qword_1000B6968, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    hydrateBackup = [(_OSInactivityPredictionBackupManager *)v4 hydrateBackup];
    v9 = 138412290;
    v10 = hydrateBackup;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@", &v9, 0xCu);
  }

  hydrateBackup2 = [(_OSInactivityPredictionBackupManager *)v4 hydrateBackup];
  handlerCopy[2](handlerCopy, hydrateBackup2);
}

- (void)writeEvaluatedPredictorTypeToDefaults:(unint64_t)defaults
{
  v4 = +[OSIntelligenceDefines inactivityUserDefaults];
  [v4 setInteger:defaults forKey:@"predictorType"];
}

- (id)readOverriddenModelOutput
{
  v2 = +[OSIntelligenceDefines inactivityUserDefaults];
  v3 = [v2 objectForKey:@"overriddenModelOutput"];
  if (v3)
  {
    v8 = 0;
    v4 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v8];
    v5 = v8;
    if (v5)
    {
      if (os_log_type_enabled(qword_1000B6968, OS_LOG_TYPE_ERROR))
      {
        sub_10005A5D0();
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

  return v6;
}

- (void)writeOverriddenModelOutput:(id)output
{
  outputCopy = output;
  v4 = +[OSIntelligenceDefines inactivityUserDefaults];
  if (outputCopy)
  {
    v6 = 0;
    v5 = [NSKeyedArchiver archivedDataWithRootObject:outputCopy requiringSecureCoding:1 error:&v6];
    [v4 setObject:v5 forKey:@"overriddenModelOutput"];
  }

  else
  {
    if (os_log_type_enabled(qword_1000B6968, OS_LOG_TYPE_DEBUG))
    {
      sub_10005A640();
    }

    [v4 removeObjectForKey:@"overriddenModelOutput"];
  }
}

- (double)readOverriddenWaitTime
{
  v2 = +[OSIntelligenceDefines inactivityUserDefaults];
  v3 = [v2 objectForKey:@"overriddenWaitTime"];

  if (v3)
  {
    [v2 doubleForKey:@"overriddenWaitTime"];
    v5 = v4;
  }

  else
  {
    v5 = -777.0;
  }

  return v5;
}

- (void)writeOverriddenWaitTime:(double)time
{
  v4 = +[OSIntelligenceDefines inactivityUserDefaults];
  v5 = v4;
  if (time == -777.0)
  {
    [v4 removeObjectForKey:@"overriddenWaitTime"];
  }

  else
  {
    [v4 setDouble:@"overriddenWaitTime" forKey:time];
  }
}

- (BOOL)overriddenToUseTimeRestrictionFromHour:(int *)hour toHour:(int *)toHour
{
  v6 = +[OSIntelligenceDefines inactivityUserDefaults];
  v7 = [v6 objectForKey:@"overriddenBedtime"];

  if (!v7 || ([v6 objectForKey:@"overriddenWakeupTime"], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  *hour = [v6 integerForKey:@"overriddenBedtime"];
  v9 = [v6 integerForKey:@"overriddenWakeupTime"];
  *toHour = v9;
  if (*hour > 0x17 || v9 >= 0x18)
  {
    if (os_log_type_enabled(qword_1000B6968, OS_LOG_TYPE_ERROR))
    {
      sub_10005A680(hour, toHour);
    }

    goto LABEL_8;
  }

  v10 = 1;
LABEL_9:

  return v10;
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
  v6[2] = sub_1000080E4;
  v6[3] = &unk_100094978;
  objc_copyWeak(&v7, &location);
  dispatch_after(v4, v5, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (BOOL)upgradePredictorIfNeeded
{
  predictor = [(OSInactivityPredictionService *)self predictor];
  requireEnoughHistory = [predictor requireEnoughHistory];

  if (requireEnoughHistory)
  {
    v5 = qword_1000B6968;
    v6 = 1;
    if (os_log_type_enabled(qword_1000B6968, OS_LOG_TYPE_INFO))
    {
      v7 = v5;
      predictor2 = [(OSInactivityPredictionService *)self predictor];
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
    v15 = qword_1000B6968;
    v16 = os_log_type_enabled(qword_1000B6968, OS_LOG_TYPE_INFO);
    if (v14 <= 0.0)
    {
      if (v16)
      {
        v18 = self->_dateOfHistorySufficiency;
        v33 = 138412290;
        v34 = v18;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Reached date of sufficiency of %@. Upgrading to the ML models...", &v33, 0xCu);
      }

      v19 = +[_OSInactivityPredictor predictor];
      v7 = v19;
      if (!v19)
      {
        goto LABEL_15;
      }

      predictorType2 = [v19 predictorType];
      predictor3 = [(OSInactivityPredictionService *)self predictor];
      predictorType3 = [predictor3 predictorType];
      v23 = [predictorType2 isEqualToString:predictorType3];

      if (!v23)
      {
        [(OSInactivityPredictionService *)self setPredictor:v7];
        predictor4 = [(OSInactivityPredictionService *)self predictor];
        requireEnoughHistory2 = [predictor4 requireEnoughHistory];

        v29 = qword_1000B6968;
        if (requireEnoughHistory2)
        {
          v6 = 1;
          if (!os_log_type_enabled(qword_1000B6968, OS_LOG_TYPE_INFO))
          {
            goto LABEL_23;
          }

          predictorType = v29;
          predictor5 = [(OSInactivityPredictionService *)self predictor];
          predictorType4 = [predictor5 predictorType];
          v33 = 138412290;
          v34 = predictorType4;
          _os_log_impl(&_mh_execute_header, predictorType, OS_LOG_TYPE_INFO, "Successfully upgraded the model to: %@", &v33, 0xCu);

LABEL_4:
LABEL_23:

          return v6;
        }

        if (os_log_type_enabled(qword_1000B6968, OS_LOG_TYPE_ERROR))
        {
          sub_10005A6FC(v29, self);
        }
      }

      else
      {
LABEL_15:
        v24 = qword_1000B6968;
        if (os_log_type_enabled(qword_1000B6968, OS_LOG_TYPE_INFO))
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