@interface ChargeDurationPredictor
+ (id)sharedInstance;
- (BOOL)inTypicalUsageEnvironment;
- (BOOL)longChargeExpected;
- (BOOL)predictionAvailableForScheme:(unint64_t)a3;
- (BOOL)shortChargeExpected;
- (ChargeDurationPredictor)init;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)queryModelForScheme:(unint64_t)a3;
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

  v3 = [(ChargeDurationPredictor *)self predictorOutput];
  v4 = [v3 objectForKeyedSubscript:&off_10002E1D8];

  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = [(ChargeDurationPredictor *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(ChargeDurationPredictor *)self predictorOutput];
    v10 = 138412290;
    v11 = v6;
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = [(ChargeDurationPredictor *)self deviceContext:a3];
  v8 = [v7 currentContext];
  v9 = [v8 objectForKeyedSubscript:@"kPluggedInContext"];
  v10 = [v9 BOOLValue];

  if (v10 != [(ChargeDurationPredictor *)self lastPluggedInState])
  {
    v11 = [(ChargeDurationPredictor *)self log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14[0] = 67109120;
      v14[1] = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "plugin state changed to %d", v14, 8u);
    }

    [(ChargeDurationPredictor *)self setLastPluggedInState:v10];
    if (![(ChargeDurationPredictor *)self lastPluggedInState])
    {
      v12 = [(ChargeDurationPredictor *)self log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14[0]) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Clearing cached predictor output", v14, 2u);
      }

      v13 = [(ChargeDurationPredictor *)self predictorOutput];
      [v13 removeAllObjects];
    }
  }
}

- (BOOL)predictionAvailableForScheme:(unint64_t)a3
{
  v4 = [(ChargeDurationPredictor *)self predictorOutput];
  v5 = [NSNumber numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6 != 0;
}

- (void)queryModelForScheme:(unint64_t)a3
{
  if (![(ChargeDurationPredictor *)self predictionAvailableForScheme:?])
  {
    if (self->_predictor)
    {
      v5 = [(ChargeDurationPredictor *)self predictionQueryQueue];
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1000035B0;
      v6[3] = &unk_10002C558;
      v6[4] = self;
      v6[5] = a3;
      dispatch_async(v5, v6);
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

  v3 = [(ChargeDurationPredictor *)self predictorOutput];
  v4 = [v3 objectForKeyedSubscript:&off_10002E1A8];

  v5 = [(ChargeDurationPredictor *)self predictorOutput];
  v6 = [v5 objectForKeyedSubscript:&off_10002E1C0];

  if (v6 && ([v6 meetsSystemConfidenceThreshold] & 1) != 0 || !v4)
  {
    goto LABEL_14;
  }

  v7 = [(ChargeDurationPredictor *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(ChargeDurationPredictor *)self predictorOutput];
    v12 = 138412290;
    v13 = v8;
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

  v3 = [(ChargeDurationPredictor *)self predictorOutput];
  v4 = [v3 objectForKeyedSubscript:&off_10002E1C0];

  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = [(ChargeDurationPredictor *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(ChargeDurationPredictor *)self predictorOutput];
    v10 = 138412290;
    v11 = v6;
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