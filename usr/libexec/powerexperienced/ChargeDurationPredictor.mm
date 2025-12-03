@interface ChargeDurationPredictor
+ (id)sharedInstance;
- (BOOL)inTypicalUsageEnvironment;
- (BOOL)longChargeExpected;
- (BOOL)predictionAvailableForScheme:(unint64_t)scheme;
- (BOOL)shortChargeExpected;
- (ChargeDurationPredictor)init;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)queryModelForScheme:(unint64_t)scheme;
@end

@implementation ChargeDurationPredictor

+ (id)sharedInstance
{
  if (qword_100036AD8 != -1)
  {
    sub_10001853C();
  }

  v3 = qword_100036AD0;

  return v3;
}

- (BOOL)inTypicalUsageEnvironment
{
  if (![(ChargeDurationPredictor *)self predictorReady])
  {
    return 0;
  }

  if (![(ChargeDurationPredictor *)self predictionAvailableForScheme:4])
  {
    v8 = [(ChargeDurationPredictor *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "inTypicalUsageEnvironment:prediction not available. kicking off query", &v10, 2u);
    }

    [(ChargeDurationPredictor *)self queryModelForScheme:4];
    return 0;
  }

  predictorOutput = [(ChargeDurationPredictor *)self predictorOutput];
  v4 = [predictorOutput objectForKeyedSubscript:&off_10002E1D8];

  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = [(ChargeDurationPredictor *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    predictorOutput2 = [(ChargeDurationPredictor *)self predictorOutput];
    v10 = 138412290;
    v11 = predictorOutput2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "inTypicalUsageEnvironment: %@", &v10, 0xCu);
  }

  if ([v4 meetsSystemConfidenceThreshold])
  {
    v7 = 1;
  }

  else
  {
LABEL_12:
    v7 = 0;
  }

  return v7;
}

- (ChargeDurationPredictor)init
{
  v18.receiver = self;
  v18.super_class = ChargeDurationPredictor;
  v2 = [(ChargeDurationPredictor *)&v18 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.powerexperienced", "chargedurationpredictor");
    log = v2->_log;
    v2->_log = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.powerexperienced.chargedurationpredictorquery", v5);
    predictionQueryQueue = v2->_predictionQueryQueue;
    v2->_predictionQueryQueue = v6;

    v8 = sub_100001600();
    mainQueue = v2->_mainQueue;
    v2->_mainQueue = v8;

    v10 = +[_OSChargingPredictor predictor];
    predictor = v2->_predictor;
    v2->_predictor = v10;

    v12 = +[NSMutableDictionary dictionary];
    predictorOutput = v2->_predictorOutput;
    v2->_predictorOutput = v12;

    v2->_lastPluggedInState = IOPSDrawingUnlimitedPower();
    v14 = +[DeviceContext sharedInstance];
    deviceContext = v2->_deviceContext;
    v2->_deviceContext = v14;

    [(DeviceContext *)v2->_deviceContext addObserver:v2 forKeyPath:@"currentContext" options:3 context:0];
    if (!v2->_predictor)
    {
      v16 = v2->_log;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100018550(v16);
      }
    }
  }

  return v2;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v7 = [(ChargeDurationPredictor *)self deviceContext:path];
  currentContext = [v7 currentContext];
  v9 = [currentContext objectForKeyedSubscript:@"kPluggedInContext"];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue != [(ChargeDurationPredictor *)self lastPluggedInState])
  {
    v11 = [(ChargeDurationPredictor *)self log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14[0] = 67109120;
      v14[1] = bOOLValue;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "plugin state changed to %d", v14, 8u);
    }

    [(ChargeDurationPredictor *)self setLastPluggedInState:bOOLValue];
    if (![(ChargeDurationPredictor *)self lastPluggedInState])
    {
      v12 = [(ChargeDurationPredictor *)self log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14[0]) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Clearing cached predictor output", v14, 2u);
      }

      predictorOutput = [(ChargeDurationPredictor *)self predictorOutput];
      [predictorOutput removeAllObjects];
    }
  }
}

- (BOOL)predictionAvailableForScheme:(unint64_t)scheme
{
  predictorOutput = [(ChargeDurationPredictor *)self predictorOutput];
  v5 = [NSNumber numberWithUnsignedInteger:scheme];
  v6 = [predictorOutput objectForKeyedSubscript:v5];

  return v6 != 0;
}

- (void)queryModelForScheme:(unint64_t)scheme
{
  if (![(ChargeDurationPredictor *)self predictionAvailableForScheme:?])
  {
    if (self->_predictor)
    {
      predictionQueryQueue = [(ChargeDurationPredictor *)self predictionQueryQueue];
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1000035B0;
      v6[3] = &unk_10002C558;
      v6[4] = self;
      v6[5] = scheme;
      dispatch_async(predictionQueryQueue, v6);
    }
  }
}

- (BOOL)longChargeExpected
{
  if (![(ChargeDurationPredictor *)self predictorReady])
  {
    return 0;
  }

  if (![(ChargeDurationPredictor *)self predictionAvailableForScheme:3])
  {
    v10 = [(ChargeDurationPredictor *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "LongChargeExpected:prediction not available. kicking off query", &v12, 2u);
    }

    [(ChargeDurationPredictor *)self queryModelForScheme:3];
    return 0;
  }

  predictorOutput = [(ChargeDurationPredictor *)self predictorOutput];
  v4 = [predictorOutput objectForKeyedSubscript:&off_10002E1A8];

  predictorOutput2 = [(ChargeDurationPredictor *)self predictorOutput];
  v6 = [predictorOutput2 objectForKeyedSubscript:&off_10002E1C0];

  if (v6 && ([v6 meetsSystemConfidenceThreshold] & 1) != 0 || !v4)
  {
    goto LABEL_14;
  }

  v7 = [(ChargeDurationPredictor *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    predictorOutput3 = [(ChargeDurationPredictor *)self predictorOutput];
    v12 = 138412290;
    v13 = predictorOutput3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "LongChargeExpected: %@", &v12, 0xCu);
  }

  if (([v4 meetsSystemConfidenceThreshold] & 1) == 0)
  {
LABEL_14:
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)shortChargeExpected
{
  if (![(ChargeDurationPredictor *)self predictorReady])
  {
    return 0;
  }

  if (![(ChargeDurationPredictor *)self predictionAvailableForScheme:5])
  {
    v8 = [(ChargeDurationPredictor *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "shortchargePrediction:prediction not available. kicking off query", &v10, 2u);
    }

    [(ChargeDurationPredictor *)self queryModelForScheme:5];
    return 0;
  }

  predictorOutput = [(ChargeDurationPredictor *)self predictorOutput];
  v4 = [predictorOutput objectForKeyedSubscript:&off_10002E1C0];

  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = [(ChargeDurationPredictor *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    predictorOutput2 = [(ChargeDurationPredictor *)self predictorOutput];
    v10 = 138412290;
    v11 = predictorOutput2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "shortChargeExpected: %@", &v10, 0xCu);
  }

  if ([v4 meetsSystemConfidenceThreshold])
  {
    v7 = 1;
  }

  else
  {
LABEL_12:
    v7 = 0;
  }

  return v7;
}

@end