@interface OSChargingPredictorService
+ (id)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (OSChargingPredictorService)init;
- (id)readOverriddenModelOutput;
- (unint64_t)readOverridenModelScheme;
- (void)chargeDurationPredictionOfScheme:(unint64_t)scheme withHandler:(id)handler;
- (void)dealloc;
- (void)fixModelOutput:(id)output withHandler:(id)handler;
- (void)timeUntilNextChargeSessionOfMinDuration:(double)duration fromSOC:(int64_t)c withHandler:(id)handler;
- (void)unfixModelOutputWithHandler:(id)handler;
- (void)writeOverriddenModelOutput:(id)output;
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
  block[4] = self;
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

- (void)chargeDurationPredictionOfScheme:(unint64_t)scheme withHandler:(id)handler
{
  handlerCopy = handler;
  readOverriddenModelOutput = [(OSChargingPredictorService *)self readOverriddenModelOutput];
  if (!readOverriddenModelOutput)
  {
    readOverridenModelScheme = [(OSChargingPredictorService *)self readOverridenModelScheme];
    if (readOverridenModelScheme != 0xFFFFFFFF)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        v11 = log;
        v12 = [NSNumber numberWithUnsignedInteger:readOverridenModelScheme];
        *buf = 138412290;
        schemeCopy = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Model scheme overriden to %@", buf, 0xCu);
      }

      scheme = readOverridenModelScheme;
    }

    v13 = self->_log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      schemeCopy = scheme;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Querying prediction service for prediction scheme: %lu", buf, 0xCu);
    }

    if (scheme)
    {
      if (scheme < 3)
      {
        v14 = off_100094420;
        goto LABEL_15;
      }

      if (scheme > 4)
      {
        if (scheme == 5)
        {
          v14 = off_100094430;
        }

        else
        {
          if (scheme != 6)
          {
            goto LABEL_33;
          }

          v14 = off_100094418;
        }
      }

      else
      {
        if (scheme != 3)
        {
          if (scheme == 4)
          {
            v15 = [[OSChargingPredictorSignalsOnly alloc] initWithDefaultsDomain:self->_defaultsDomain withContextStore:self->_context withTrialManager:self->_trialManager];
            v17 = [(OSChargingPredictorSignalsOnly *)v15 chargingDecisionWithLog:self->_log];
            handlerCopy[2](handlerCopy, v17, 0);
LABEL_28:

            goto LABEL_29;
          }

LABEL_33:
          v15 = objc_alloc_init(_OSChargingPredictorOutput);
          [(OSChargingPredictorSignalsOnly *)v15 setConfidence:0.0];
          [(OSChargingPredictorSignalsOnly *)v15 setMeetsSystemConfidenceThreshold:0];
          [(OSChargingPredictorSignalsOnly *)v15 setChargingDuration:0.0];
          v17 = [NSError errorWithDomain:@"com.apple.OSIntelligence" code:1 userInfo:0];
          (handlerCopy)[2](handlerCopy, v15, v17);
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
    isSufficientDataAvailable = [(OSChargingPredictorSignalsOnly *)v15 isSufficientDataAvailable];
    if (readOverridenModelScheme != 0xFFFFFFFF || (isSufficientDataAvailable & 1) != 0)
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
        schemeCopy = v23;
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
      handlerCopy[2](handlerCopy, v18, 0);
    }

    else
    {
      v17 = objc_alloc_init(_OSChargingPredictorOutput);
      [v17 setConfidence:0.0];
      [v17 setMeetsSystemConfidenceThreshold:0];
      [v17 setChargingDuration:0.0];
      v18 = [NSError errorWithDomain:@"com.apple.OSIntelligence" code:3 userInfo:0];
      (handlerCopy)[2](handlerCopy, v17, v18);
    }

    goto LABEL_28;
  }

  v8 = self->_log;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10005C784(readOverriddenModelOutput, v8);
  }

  handlerCopy[2](handlerCopy, readOverriddenModelOutput, 0);
LABEL_29:
}

- (void)timeUntilNextChargeSessionOfMinDuration:(double)duration fromSOC:(int64_t)c withHandler:(id)handler
{
  handlerCopy = handler;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    durationCopy = duration;
    v18 = 2048;
    cCopy = c;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Querying time until next charge session of length %lf, from SOC %lu", buf, 0x16u);
  }

  v10 = [(OSChargingTwoStagePredictor *)[OSChargingPhonePredictor alloc] initWithDefaultsDomain:self->_defaultsDomain withContextStore:self->_context withTrialManager:self->_trialManager];
  v15 = 0;
  [(OSChargingPhonePredictor *)v10 timeUntilNextChargeSessionOfMinDuration:c fromSOC:&v15 WithError:duration];
  v12 = v11;
  v13 = v15;
  v14 = [NSNumber numberWithDouble:v12];
  handlerCopy[2](handlerCopy, v14, v13);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Listener received connection!", v15, 2u);
  }

  v9 = [connectionCopy valueForEntitlement:@"com.apple.osintelligence.charging"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v9 BOOLValue] & 1) != 0)
  {
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____OSChargingPredictorProtocol];
    [connectionCopy setExportedInterface:v10];

    v11 = [[OSChargingPredictorServiceXPCProxy alloc] initWithObserver:self];
    [connectionCopy setExportedObject:v11];

    [connectionCopy resume];
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

- (void)writeOverriddenModelOutput:(id)output
{
  outputCopy = output;
  v5 = +[OSIntelligenceDefines chargingUserDefaults];
  if (outputCopy)
  {
    v8 = 0;
    v6 = [NSKeyedArchiver archivedDataWithRootObject:outputCopy requiringSecureCoding:1 error:&v8];
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

- (void)fixModelOutput:(id)output withHandler:(id)handler
{
  outputCopy = output;
  handlerCopy = handler;
  outputCopy = [NSString stringWithFormat:@"Fixed model output = %@", outputCopy];
  readOverriddenModelOutput = [(OSChargingPredictorService *)self readOverriddenModelOutput];
  if (readOverriddenModelOutput)
  {
    outputCopy2 = [NSString stringWithFormat:@"Replaced fixed output %@ with %@", readOverriddenModelOutput, outputCopy];

    outputCopy = outputCopy2;
  }

  [(OSChargingPredictorService *)self writeOverriddenModelOutput:outputCopy];
  handlerCopy[2](handlerCopy, outputCopy);
}

- (void)unfixModelOutputWithHandler:(id)handler
{
  handlerCopy = handler;
  readOverriddenModelOutput = [(OSChargingPredictorService *)self readOverriddenModelOutput];
  v7 = readOverriddenModelOutput;
  if (readOverriddenModelOutput)
  {
    v6 = [NSString stringWithFormat:@"Unfixed model output (previously fixed to be %@)", readOverriddenModelOutput];
  }

  else
  {
    v6 = @"Nothing to be unfixed";
  }

  [(OSChargingPredictorService *)self writeOverriddenModelOutput:0];
  handlerCopy[2](handlerCopy, v6);
}

@end