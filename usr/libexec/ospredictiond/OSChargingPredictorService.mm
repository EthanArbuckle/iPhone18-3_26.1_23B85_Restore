@interface OSChargingPredictorService
+ (id)sharedInstance;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (OSChargingPredictorService)init;
- (id)readOverriddenModelOutput;
- (unint64_t)readOverridenModelScheme;
- (void)chargeDurationPredictionOfScheme:(unint64_t)a3 withHandler:(id)a4;
- (void)dealloc;
- (void)fixModelOutput:(id)a3 withHandler:(id)a4;
- (void)timeUntilNextChargeSessionOfMinDuration:(double)a3 fromSOC:(int64_t)a4 withHandler:(id)a5;
- (void)unfixModelOutputWithHandler:(id)a3;
- (void)writeOverriddenModelOutput:(id)a3;
@end

@implementation OSChargingPredictorService

- (id)readOverriddenModelOutput
{
  v3 = +[OSIntelligenceDefines chargingUserDefaults];
  v4 = [v3 objectForKey:@"overriddenModelOutput"];
  if (v4)
  {
    v10 = 0;
    v5 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v10];
    v6 = v10;
    if (v6)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        sub_10005C7FC(v6, log);
      }

      v8 = 0;
    }

    else
    {
      v8 = v5;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)readOverridenModelScheme
{
  v2 = +[OSIntelligenceDefines chargingUserDefaults];
  v3 = [v2 objectForKey:@"modelType"];

  if (v3)
  {
    v4 = [v2 integerForKey:@"modelType"];
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  return v4;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022690;
  block[3] = &unk_100094818;
  block[4] = a1;
  if (qword_1000B6A48 != -1)
  {
    dispatch_once(&qword_1000B6A48, block);
  }

  v2 = qword_1000B6A40;

  return v2;
}

- (OSChargingPredictorService)init
{
  v15.receiver = self;
  v15.super_class = OSChargingPredictorService;
  v2 = [(OSChargingPredictorService *)&v15 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.osintelligence", "chargingprediction");
    log = v2->_log;
    v2->_log = v3;

    defaultsDomain = v2->_defaultsDomain;
    v2->_defaultsDomain = @"com.apple.osintelligence.chargingpredictor";

    v6 = +[OSIntelligenceTrialManager sharedChargePredictionInstance];
    trialManager = v2->_trialManager;
    v2->_trialManager = v6;

    v8 = +[_CDClientContext userContext];
    context = v2->_context;
    v2->_context = v8;

    v10 = v2->_log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Initializing delegate", v14, 2u);
    }

    v11 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.OSIntelligence.charging"];
    listener = v2->_listener;
    v2->_listener = v11;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  listener = self->_listener;
  self->_listener = 0;

  v4.receiver = self;
  v4.super_class = OSChargingPredictorService;
  [(OSChargingPredictorService *)&v4 dealloc];
}

- (void)chargeDurationPredictionOfScheme:(unint64_t)a3 withHandler:(id)a4
{
  v6 = a4;
  v7 = [(OSChargingPredictorService *)self readOverriddenModelOutput];
  if (!v7)
  {
    v9 = [(OSChargingPredictorService *)self readOverridenModelScheme];
    if (v9 != 0xFFFFFFFF)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        v11 = log;
        v12 = [NSNumber numberWithUnsignedInteger:v9];
        *buf = 138412290;
        v27 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Model scheme overriden to %@", buf, 0xCu);
      }

      a3 = v9;
    }

    v13 = self->_log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v27 = a3;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Querying prediction service for prediction scheme: %lu", buf, 0xCu);
    }

    if (a3)
    {
      if (a3 < 3)
      {
        v14 = off_100094420;
        goto LABEL_15;
      }

      if (a3 > 4)
      {
        if (a3 == 5)
        {
          v14 = off_100094430;
        }

        else
        {
          if (a3 != 6)
          {
            goto LABEL_33;
          }

          v14 = off_100094418;
        }
      }

      else
      {
        if (a3 != 3)
        {
          if (a3 == 4)
          {
            v15 = [[OSChargingPredictorSignalsOnly alloc] initWithDefaultsDomain:self->_defaultsDomain withContextStore:self->_context withTrialManager:self->_trialManager];
            v17 = [(OSChargingPredictorSignalsOnly *)v15 chargingDecisionWithLog:self->_log];
            v6[2](v6, v17, 0);
LABEL_28:

            goto LABEL_29;
          }

LABEL_33:
          v15 = objc_alloc_init(_OSChargingPredictorOutput);
          [(OSChargingPredictorSignalsOnly *)v15 setConfidence:0.0];
          [(OSChargingPredictorSignalsOnly *)v15 setMeetsSystemConfidenceThreshold:0];
          [(OSChargingPredictorSignalsOnly *)v15 setChargingDuration:0.0];
          v17 = [NSError errorWithDomain:@"com.apple.OSIntelligence" code:1 userInfo:0];
          (v6)[2](v6, v15, v17);
          goto LABEL_28;
        }

        v14 = off_100094428;
      }
    }

    else
    {
      v14 = off_100094438;
    }

LABEL_15:
    v15 = [objc_alloc(*v14) initWithDefaultsDomain:self->_defaultsDomain withContextStore:self->_context withTrialManager:self->_trialManager];
    v16 = [(OSChargingPredictorSignalsOnly *)v15 isSufficientDataAvailable];
    if (v9 != 0xFFFFFFFF || (v16 & 1) != 0)
    {
      v19 = [OSIntelligenceUtilities currentBatteryLevelWithContext:self->_context];
      v17 = +[OSIntelligenceUtilities lastPluggedInDate];
      v20 = +[NSDate date];
      if (v15)
      {
        [(OSChargingPredictorSignalsOnly *)v15 chargingDecision:v19 withPluginDate:v17 withPluginBatteryLevel:v20 forDate:self->_log withLog:v19];
      }

      v21 = self->_log;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = v21;
        v23 = [NSNumber numberWithDouble:0.0];
        v24 = [NSNumber numberWithDouble:0.0];
        v25 = [NSNumber numberWithBool:0];
        *buf = 138412802;
        v27 = v23;
        v28 = 2112;
        v29 = v24;
        v30 = 2112;
        v31 = v25;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Predictions at plug-in: \n Confidence: %@,\n Duration: %@,\n Decision: %@", buf, 0x20u);
      }

      v18 = objc_alloc_init(_OSChargingPredictorOutput);
      [v18 setConfidence:0.0];
      [v18 setMeetsSystemConfidenceThreshold:0];
      [v18 setChargingDuration:0.0 * 3600.0];
      v6[2](v6, v18, 0);
    }

    else
    {
      v17 = objc_alloc_init(_OSChargingPredictorOutput);
      [v17 setConfidence:0.0];
      [v17 setMeetsSystemConfidenceThreshold:0];
      [v17 setChargingDuration:0.0];
      v18 = [NSError errorWithDomain:@"com.apple.OSIntelligence" code:3 userInfo:0];
      (v6)[2](v6, v17, v18);
    }

    goto LABEL_28;
  }

  v8 = self->_log;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10005C784(v7, v8);
  }

  v6[2](v6, v7, 0);
LABEL_29:
}

- (void)timeUntilNextChargeSessionOfMinDuration:(double)a3 fromSOC:(int64_t)a4 withHandler:(id)a5
{
  v8 = a5;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v17 = a3;
    v18 = 2048;
    v19 = a4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Querying time until next charge session of length %lf, from SOC %lu", buf, 0x16u);
  }

  v10 = [(OSChargingTwoStagePredictor *)[OSChargingPhonePredictor alloc] initWithDefaultsDomain:self->_defaultsDomain withContextStore:self->_context withTrialManager:self->_trialManager];
  v15 = 0;
  [(OSChargingPhonePredictor *)v10 timeUntilNextChargeSessionOfMinDuration:a4 fromSOC:&v15 WithError:a3];
  v12 = v11;
  v13 = v15;
  v14 = [NSNumber numberWithDouble:v12];
  v8[2](v8, v14, v13);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Listener received connection!", v15, 2u);
  }

  v9 = [v7 valueForEntitlement:@"com.apple.osintelligence.charging"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v9 BOOLValue] & 1) != 0)
  {
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____OSChargingPredictorProtocol];
    [v7 setExportedInterface:v10];

    v11 = [[OSChargingPredictorServiceXPCProxy alloc] initWithObserver:self];
    [v7 setExportedObject:v11];

    [v7 resume];
    v12 = 1;
  }

  else
  {
    v13 = [(OSChargingPredictorService *)self log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10005B424(v13);
    }

    v12 = 0;
  }

  return v12;
}

- (void)writeOverriddenModelOutput:(id)a3
{
  v4 = a3;
  v5 = +[OSIntelligenceDefines chargingUserDefaults];
  if (v4)
  {
    v8 = 0;
    v6 = [NSKeyedArchiver archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v8];
    [v5 setObject:v6 forKey:@"overriddenModelOutput"];
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      sub_10005C874(log);
    }

    [v5 removeObjectForKey:@"overriddenModelOutput"];
  }
}

- (void)fixModelOutput:(id)a3 withHandler:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [NSString stringWithFormat:@"Fixed model output = %@", v10];
  v8 = [(OSChargingPredictorService *)self readOverriddenModelOutput];
  if (v8)
  {
    v9 = [NSString stringWithFormat:@"Replaced fixed output %@ with %@", v8, v10];

    v7 = v9;
  }

  [(OSChargingPredictorService *)self writeOverriddenModelOutput:v10];
  v6[2](v6, v7);
}

- (void)unfixModelOutputWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(OSChargingPredictorService *)self readOverriddenModelOutput];
  v7 = v5;
  if (v5)
  {
    v6 = [NSString stringWithFormat:@"Unfixed model output (previously fixed to be %@)", v5];
  }

  else
  {
    v6 = @"Nothing to be unfixed";
  }

  [(OSChargingPredictorService *)self writeOverriddenModelOutput:0];
  v4[2](v4, v6);
}

@end