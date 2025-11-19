@interface OSLastLockPredictionService
+ (id)sharedInstance;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)overriddenToUseTimeRestrictionFromHour:(int *)a3 toHour:(int *)a4;
- (BOOL)upgradePredictorIfNeeded;
- (OSLastLockPredictionService)init;
- (double)readOverriddenRequeryTime;
- (id)readOverriddenModelOutput;
- (void)activityHistoryDiagnosisWithHandler:(id)a3;
- (void)deviceUsageDiagnosisWithHandler:(id)a3;
- (void)fixModelOutput:(id)a3 withHandler:(id)a4;
- (void)hasEnoughActivityHistoryWithHandler:(id)a3;
- (void)lastLockPredictionResultAtDate:(id)a3 withTimeSinceActive:(double)a4 withHandler:(id)a5;
- (void)lastLockPredictionResultWithHandler:(id)a3;
- (void)modelDescriptionWithHandler:(id)a3;
- (void)modelMetadataWithHandler:(id)a3;
- (void)overrideRecommendedRequeryTimeTo:(double)a3 withHandler:(id)a4;
- (void)recommendedRequeryTimeWithHandler:(id)a3;
- (void)restoreLastLockModelWithHandler:(id)a3;
- (void)restoreRecommendedRequeryTimeWithHandler:(id)a3;
- (void)scheduleModelUpgradeAfterInterval:(double)a3;
- (void)unfixModelOutputWithHandler:(id)a3;
- (void)writeOverriddenModelOutput:(id)a3;
- (void)writeOverriddenRequeryTime:(double)a3;
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [v5 valueForEntitlement:@"com.apple.osintelligence.lastlock"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v6 BOOLValue] & 1) != 0)
  {
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____OSLastLockPredictionProtocol_Private];
    [v5 setExportedInterface:v7];

    v8 = [[OSLastLockPredictionServiceXPCProxy alloc] initWithObserver:self];
    [v5 setExportedObject:v8];

    [v5 resume];
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

- (void)modelDescriptionWithHandler:(id)a3
{
  v5 = a3;
  v7 = [(OSLastLockPredictionService *)self predictor];
  v6 = [v7 description];
  (*(a3 + 2))(v5, v6);
}

- (void)modelMetadataWithHandler:(id)a3
{
  v5 = a3;
  v7 = [(OSLastLockPredictionService *)self predictor];
  v6 = [v7 metadata];
  (*(a3 + 2))(v5, v6);
}

- (void)hasEnoughActivityHistoryWithHandler:(id)a3
{
  v4 = a3;
  (*(a3 + 2))(v4, +[OSIntelligenceUtilities hasEnoughInactivityHistory]);
}

- (void)recommendedRequeryTimeWithHandler:(id)a3
{
  v4 = a3;
  if (+[OSIntelligenceUtilities isInternalBuild]&& ([(OSLastLockPredictionService *)self readOverriddenRequeryTime], v6 = v5, v5 != -777.0))
  {
    v8 = qword_1000B69E0;
    if (os_log_type_enabled(qword_1000B69E0, OS_LOG_TYPE_DEBUG))
    {
      sub_10005B52C(v8, v6);
    }

    v4[2](v4, v6);
  }

  else
  {
    v7 = [(OSLastLockPredictionService *)self predictor];
    [v7 recommendedRequeryTime];
    (v4[2])(v4);
  }
}

- (void)activityHistoryDiagnosisWithHandler:(id)a3
{
  v4 = a3;
  v5 = +[OSIntelligenceUtilities userHistoryDiagnosis];
  (*(a3 + 2))(v4, v5);
}

- (void)deviceUsageDiagnosisWithHandler:(id)a3
{
  v4 = a3;
  v5 = +[OSIntelligenceUtilities deviceUsageDiagnosis];
  (*(a3 + 2))(v4, v5);
}

- (void)lastLockPredictionResultWithHandler:(id)a3
{
  v3 = a3;
  if (os_log_type_enabled(qword_1000B69E0, OS_LOG_TYPE_ERROR))
  {
    sub_10005B5A8();
  }

  v4 = [NSError errorWithDomain:@"com.apple.osintelligence" code:5 userInfo:&off_10009CAE8];
  v3[2](v3, 0, v4);
}

- (void)lastLockPredictionResultAtDate:(id)a3 withTimeSinceActive:(double)a4 withHandler:(id)a5
{
  v5 = a5;
  if (os_log_type_enabled(qword_1000B69E0, OS_LOG_TYPE_ERROR))
  {
    sub_10005B5A8();
  }

  v6 = [NSError errorWithDomain:@"com.apple.osintelligence" code:5 userInfo:&off_10009CB10];
  v5[2](v5, 0, v6);
}

- (void)fixModelOutput:(id)a3 withHandler:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [NSString stringWithFormat:@"Fixed model output = %@", v10];
  v8 = [(OSLastLockPredictionService *)self readOverriddenModelOutput];
  if (v8)
  {
    v9 = [NSString stringWithFormat:@"Replaced fixed output %@ with %@", v8, v10];

    v7 = v9;
  }

  [(OSLastLockPredictionService *)self writeOverriddenModelOutput:v10];
  v6[2](v6, v7);
}

- (void)unfixModelOutputWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(OSLastLockPredictionService *)self readOverriddenModelOutput];
  v7 = v5;
  if (v5)
  {
    v6 = [NSString stringWithFormat:@"Unfixed model output (previously fixed to be %@)", v5];
  }

  else
  {
    v6 = @"Nothing to be unfixed";
  }

  [(OSLastLockPredictionService *)self writeOverriddenModelOutput:0];
  v4[2](v4, v6);
}

- (void)overrideRecommendedRequeryTimeTo:(double)a3 withHandler:(id)a4
{
  if (a3 <= 0.0)
  {
    (*(a4 + 2))(a4, 0);
  }

  else
  {
    v6 = a4;
    [(OSLastLockPredictionService *)self writeOverriddenRequeryTime:a3];
    v6[2](v6, 1);
  }
}

- (void)restoreRecommendedRequeryTimeWithHandler:(id)a3
{
  v4 = a3;
  [(OSLastLockPredictionService *)self writeOverriddenRequeryTime:-777.0];
  v4[2](v4, 1);
}

- (void)restoreLastLockModelWithHandler:(id)a3
{
  v4 = a3;
  v5 = +[OSIntelligenceDefines lastLockUserDefaults];
  [v5 removeObjectForKey:@"modelType"];

  v6 = +[_OSLastLockPredictor predictor];
  [(OSLastLockPredictionService *)self setPredictor:v6];

  v7 = [(OSLastLockPredictionService *)self predictor];
  v4[2](v4, v7 != 0);
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

- (void)writeOverriddenModelOutput:(id)a3
{
  v3 = a3;
  v4 = +[OSIntelligenceDefines lastLockUserDefaults];
  if (v3)
  {
    v6 = 0;
    v5 = [NSKeyedArchiver archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v6];
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

- (void)writeOverriddenRequeryTime:(double)a3
{
  v4 = +[OSIntelligenceDefines lastLockUserDefaults];
  v5 = v4;
  if (a3 == -777.0)
  {
    [v4 removeObjectForKey:@"overriddenRequeryTime"];
  }

  else
  {
    [v4 setDouble:@"overriddenRequeryTime" forKey:a3];
  }
}

- (BOOL)overriddenToUseTimeRestrictionFromHour:(int *)a3 toHour:(int *)a4
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
        *a3 = [v6 integerForKey:@"overriddenBedtime"];
        v9 = [v6 integerForKey:@"overriddenWakeupTime"];
        *a4 = v9;
        if (*a3 <= 0x17 && v9 < 0x18)
        {
          v10 = 1;
LABEL_11:

          return v10;
        }

        v11 = qword_1000B69E0;
        if (os_log_type_enabled(qword_1000B69E0, OS_LOG_TYPE_ERROR))
        {
          sub_10005B658(a3, a4, v11);
        }
      }
    }

    v10 = 0;
    goto LABEL_11;
  }

  return 0;
}

- (void)scheduleModelUpgradeAfterInterval:(double)a3
{
  if (a3 < 86400.0)
  {
    a3 = 86400.0;
  }

  if (a3 <= 604800.0)
  {
    v3 = a3;
  }

  else
  {
    v3 = 604800.0;
  }

  objc_initWeak(&location, self);
  v4 = dispatch_walltime(0, 1000000000 * vcvtpd_s64_f64(v3));
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
  v3 = [(OSLastLockPredictionService *)self predictor];
  v4 = [v3 requireEnoughHistory];

  if (v4)
  {
    v5 = qword_1000B69E0;
    v6 = 1;
    if (os_log_type_enabled(qword_1000B69E0, OS_LOG_TYPE_INFO))
    {
      v7 = v5;
      v8 = [(OSLastLockPredictionService *)self predictor];
      v9 = [v8 predictorType];
      v33 = 138412290;
      v34 = v9;
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

      v20 = [v19 predictorType];
      v21 = [(OSLastLockPredictionService *)self predictor];
      v22 = [v21 predictorType];
      v23 = [v20 isEqualToString:v22];

      if (!v23)
      {
        [(OSLastLockPredictionService *)self setPredictor:v7];
        v27 = [(OSLastLockPredictionService *)self predictor];
        v28 = [v27 requireEnoughHistory];

        v29 = qword_1000B69E0;
        if (v28)
        {
          v6 = 1;
          if (!os_log_type_enabled(qword_1000B69E0, OS_LOG_TYPE_INFO))
          {
            goto LABEL_23;
          }

          v9 = v29;
          v30 = [(OSLastLockPredictionService *)self predictor];
          v31 = [v30 predictorType];
          v33 = 138412290;
          v34 = v31;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Successfully upgraded the model to: %@", &v33, 0xCu);

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
          v26 = [v7 predictorType];
          v33 = 138412290;
          v34 = v26;
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