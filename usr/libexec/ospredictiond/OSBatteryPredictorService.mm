@interface OSBatteryPredictorService
+ (id)sharedInstance;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (OSBatteryPredictorService)init;
- (void)batteryLifeMitigationWithHandler:(id)a3;
- (void)client:(id)a3 setIBLMNotificationsState:(int64_t)a4 withHandler:(id)a5;
- (void)client:(id)a3 setIBLMState:(int64_t)a4 withHandler:(id)a5;
- (void)dealloc;
- (void)highDayDrainAroundCurrentDateWithHandler:(id)a3;
- (void)overrideAllMitigations:(int64_t)a3 withHandler:(id)a4;
- (void)overrideCLPCMitigations:(int64_t)a3 withHandler:(id)a4;
- (void)predictLowSOCWithHandler:(id)a3;
- (void)predictedTimeTillDischargeWithHandler:(id)a3;
- (void)recommendsAutoLPMWithHandler:(id)a3;
- (void)typicalBatteryLevelWithReferenceDays:(unint64_t)a3 aggregatedOverTimeWidth:(unint64_t)a4 withHandler:(id)a5;
@end

@implementation OSBatteryPredictorService

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001151C;
  block[3] = &unk_100094818;
  block[4] = a1;
  if (qword_1000B69D8 != -1)
  {
    dispatch_once(&qword_1000B69D8, block);
  }

  v2 = qword_1000B69D0;

  return v2;
}

- (OSBatteryPredictorService)init
{
  v14.receiver = self;
  v14.super_class = OSBatteryPredictorService;
  v2 = [(OSBatteryPredictorService *)&v14 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.osintelligence", "battery");
    log = v2->_log;
    v2->_log = v3;

    v5 = +[_OSLowSOCEventPredictor sharedInstance];
    highDrainPredictor = v2->_highDrainPredictor;
    v2->_highDrainPredictor = v5;

    v7 = +[_OSIAutoLPMHandler sharedInstance];
    autoLPMHandler = v2->_autoLPMHandler;
    v2->_autoLPMHandler = v7;

    v9 = v2->_log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Initializing delegate", v13, 2u);
    }

    v10 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.OSIntelligence.battery"];
    listener = v2->_listener;
    v2->_listener = v10;

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
  v4.super_class = OSBatteryPredictorService;
  [(OSBatteryPredictorService *)&v4 dealloc];
}

- (void)predictLowSOCWithHandler:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Request for low SOC prediction", &v9, 2u);
  }

  v6 = [_OSBatteryLowSOCPredictorOutput init];
  [v6 setConfidence:0.0];
  [v6 setLowSOCPredicted:0];
  [v6 setConfidence:0.0];
  [v6 setConfidenceThreshold:0.0];
  [v6 setModelName:@"NoOpModel"];
  [v6 setModelVersion:@"0.0"];
  v7 = self->_log;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Low SOC prediction output %@", &v9, 0xCu);
  }

  v8 = self->_log;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10005B378(v8);
  }

  v4[2](v4, v6, 0);
}

- (void)typicalBatteryLevelWithReferenceDays:(unint64_t)a3 aggregatedOverTimeWidth:(unint64_t)a4 withHandler:(id)a5
{
  v8 = a5;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v15 = a3;
    v16 = 2048;
    v17 = a4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Request for typical battery levels for reference days %lu, with time width %lu", buf, 0x16u);
  }

  v10 = +[_OSBatteryData sharedInstance];
  v13 = 0;
  v11 = [v10 typicalBatteryLevelWithReferenceDays:a3 aggregatedOverTimeWidth:a4 withError:&v13];
  v12 = v13;

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10005B3BC();
  }

  v8[2](v8, v11, v12);
}

- (void)predictedTimeTillDischargeWithHandler:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Request for predicted time till discharge", buf, 2u);
  }

  v6 = +[_OSDrainPredictor sharedInstance];
  v9 = 0;
  v7 = [v6 timeTillDischargeWithError:&v9];
  v8 = v9;

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10005B3BC();
  }

  v4[2](v4, v7, v8);
}

- (void)highDayDrainAroundCurrentDateWithHandler:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Request for Day Drain around current date", buf, 2u);
  }

  v6 = +[_OSDrainPredictor sharedInstance];
  v9 = 0;
  v7 = [v6 highDayDrainAroundCurrentDateWithError:&v9];
  v8 = v9;

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10005B3BC();
  }

  v4[2](v4, v7, v8);
}

- (void)batteryLifeMitigationWithHandler:(id)a3
{
  v4 = a3;
  v5 = +[_OSIBLManager sharedInstance];
  v9 = 0;
  v6 = [v5 currentMitigationWithError:&v9];
  v7 = v9;

  if (!v6)
  {
    v8 = [NSError errorWithDomain:@"com.apple.OSIntelligence" code:1 userInfo:0];

    v7 = v8;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10005B3BC();
  }

  v4[2](v4, v6, v7);
}

- (void)overrideAllMitigations:(int64_t)a3 withHandler:(id)a4
{
  v6 = a4;
  v5 = +[_OSIBLManager sharedInstance];
  [v5 overrideAllMitigations:a3];

  v6[2](v6, 0);
}

- (void)overrideCLPCMitigations:(int64_t)a3 withHandler:(id)a4
{
  v6 = a4;
  v5 = +[_OSIBLManager sharedInstance];
  [v5 overrideCLPCMitigations:a3];

  v6[2](v6, 0);
}

- (void)client:(id)a3 setIBLMState:(int64_t)a4 withHandler:(id)a5
{
  v6 = a5;
  v7 = +[_OSIBLManager sharedInstance];
  v10 = 0;
  v8 = [v7 updateFeatureState:a4 withError:&v10];
  v9 = v10;

  v6[2](v6, v8, v9);
}

- (void)client:(id)a3 setIBLMNotificationsState:(int64_t)a4 withHandler:(id)a5
{
  v6 = a5;
  v7 = +[_OSIBLManager sharedInstance];
  v10 = 0;
  v8 = [v7 updateNotificationsState:a4 withError:&v10];
  v9 = v10;

  v6[2](v6, v8, v9);
}

- (void)recommendsAutoLPMWithHandler:(id)a3
{
  autoLPMHandler = self->_autoLPMHandler;
  v4 = a3;
  v4[2](v4, [(_OSIAutoLPMHandler *)autoLPMHandler recommendsAutoLPM], 0);
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

  v9 = [v7 valueForEntitlement:@"com.apple.osintelligence.battery"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v9 BOOLValue] & 1) != 0)
  {
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____OSBatteryPredictorProtocol];
    [v7 setExportedInterface:v10];

    v11 = [[OSBatteryPredictorServiceXPCProxy alloc] initWithObserver:self];
    [v7 setExportedObject:v11];

    [v7 resume];
    v12 = 1;
  }

  else
  {
    v13 = [(OSBatteryPredictorService *)self log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10005B424(v13);
    }

    v12 = 0;
  }

  return v12;
}

@end