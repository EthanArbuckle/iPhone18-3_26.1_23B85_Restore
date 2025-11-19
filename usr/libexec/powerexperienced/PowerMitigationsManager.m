@interface PowerMitigationsManager
+ (id)sharedInstance;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (PowerMitigationsManager)init;
- (void)clearState;
- (void)evaluateMitigations;
- (void)handleUpdatedDrainLevelPrediction:(int64_t)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)registerForDrainLevelPredictions;
- (void)registerForPowerMitigations;
- (void)restoreState;
- (void)saveState;
- (void)start;
- (void)updateClientsWithNewMitigations:(id)a3 fromMitigations:(id)a4;
@end

@implementation PowerMitigationsManager

+ (id)sharedInstance
{
  if (qword_100036C00 != -1)
  {
    sub_100018EE8();
  }

  v3 = qword_100036BF8;

  return v3;
}

- (PowerMitigationsManager)init
{
  v20.receiver = self;
  v20.super_class = PowerMitigationsManager;
  v2 = [(PowerMitigationsManager *)&v20 initWithMachServiceName:kPowerMitigationsManagerService];
  if (v2)
  {
    v3 = os_log_create("com.apple.powerexperienced", "powermitigationsmanager");
    log = v2->_log;
    v2->_log = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.powerexperienced.powermitigationsmanager", v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = +[DeviceContext sharedInstance];
    deviceContext = v2->_deviceContext;
    v2->_deviceContext = v8;

    v10 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.powerexperienced.powermitigationsmanager"];
    defaults = v2->_defaults;
    v2->_defaults = v10;

    [(PowerMitigationsManager *)v2 setDelegate:v2];
    v12 = +[NSMutableSet set];
    clients = v2->_clients;
    v2->_clients = v12;

    v14 = +[_OSIBatteryLifeManager sharedInstance];
    batteryLifeManager = v2->_batteryLifeManager;
    v2->_batteryLifeManager = v14;

    v2->_iblmMitigationLevel = 0;
    v16 = [[PMPowerMitigationSession alloc] initWithSource:@"System" reason:1 level:0 duration:0.0];
    powerMitigationSession = v2->_powerMitigationSession;
    v2->_powerMitigationSession = v16;

    v18 = [(DeviceContext *)v2->_deviceContext objectForKeyedSubscript:@"kLPMStateStateContext"];
    v2->_isLPMActive = [v18 BOOLValue];

    if ([(PowerMitigationsManager *)v2 shouldRestoreState])
    {
      [(PowerMitigationsManager *)v2 restoreState];
    }

    else
    {
      [(PowerMitigationsManager *)v2 clearState];
    }

    [(PowerMitigationsManager *)v2 registerForDrainLevelPredictions];
  }

  return v2;
}

- (void)restoreState
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D3A8;
  block[3] = &unk_10002C738;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)clearState
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D628;
  block[3] = &unk_10002C738;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)saveState
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D790;
  block[3] = &unk_10002C738;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)evaluateMitigations
{
  v3 = [(PowerMitigationsManager *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Evaluating systemWide mitigations", &v11, 2u);
  }

  v4 = [(PMPowerMitigationSession *)self->_powerMitigationSession systemWideMitigationLevel];
  v5 = [(PowerMitigationsManager *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100019000();
  }

  if (self->_isLPMActive)
  {
    v6 = 0;
    v7 = @"LPM";
    v8 = 70;
  }

  else
  {
    if ([(PowerMitigationsManager *)self iblmMitigationLevel])
    {
      v8 = 50;
    }

    else
    {
      v8 = 0;
    }

    v7 = @"IBLM";
    v6 = 1;
  }

  v9 = [(PowerMitigationsManager *)self log];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v8 == v4)
  {
    if (v10)
    {
      v11 = 134217984;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "No change to systemWideMitigationLevel. Current Level: %ld", &v11, 0xCu);
    }
  }

  else
  {
    if (v10)
    {
      v11 = 134217984;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "New systemWideMitigationLevel: %ld", &v11, 0xCu);
    }

    v9 = [[PMPowerMitigationSession alloc] initWithSource:v7 reason:v6 level:v8 duration:0.0];
    [(PowerMitigationsManager *)self updateClientsWithNewMitigations:v9 fromMitigations:self->_powerMitigationSession];
    [(PowerMitigationsManager *)self setPowerMitigationSession:v9];
    [(PowerMitigationsManager *)self saveState];
  }
}

- (void)handleUpdatedDrainLevelPrediction:(int64_t)a3
{
  v5 = [(PowerMitigationsManager *)self iblmMitigationLevel];
  v6 = [(PowerMitigationsManager *)self log];
  v7 = v6;
  if (v5 == a3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100019074(self, v7);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 134218240;
      v9 = [(PowerMitigationsManager *)self iblmMitigationLevel];
      v10 = 2048;
      v11 = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "IBLM MitigationLevel has changed from: %ld to: %ld", &v8, 0x16u);
    }

    [(PowerMitigationsManager *)self setIblmMitigationLevel:a3];
    [(PowerMitigationsManager *)self evaluateMitigations];
    [(PowerMitigationsManager *)self saveState];
  }
}

- (void)registerForDrainLevelPredictions
{
  v3 = [(PowerMitigationsManager *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000190FC();
  }

  batteryLifeManager = self->_batteryLifeManager;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000DD80;
  v5[3] = &unk_10002C9F8;
  v5[4] = self;
  [(_OSIBatteryLifeManager *)batteryLifeManager registerForDrainLevelPredictionForClient:@"PowerMitigationsManager" withithUpdateHandler:v5];
}

- (void)updateClientsWithNewMitigations:(id)a3 fromMitigations:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(PowerMitigationsManager *)self clients];
  v8 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v21;
    *&v9 = 67109120;
    v17 = v9;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        v14 = [(PowerMitigationsManager *)self log];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = [v13 processIdentifier];
          *buf = v17;
          v25 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Sending mitigationLevel update to PID: %d", buf, 8u);
        }

        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10000E0F4;
        v19[3] = &unk_10002C878;
        v19[4] = self;
        v16 = [v13 remoteObjectProxyWithErrorHandler:v19];
        [v16 didUpdateToMitigation:v6 fromMitigation:v7];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v10);
  }
}

- (void)start
{
  [(PowerMitigationsManager *)self activate];
  v3 = [(PowerMitigationsManager *)self deviceContext];
  [v3 addObserver:self forKeyPath:@"currentContext" options:3 context:0];

  v4 = [kPowerMitigationsManagerServiceStartupNotify UTF8String];

  notify_post(v4);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = sub_100001600();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E248;
  block[3] = &unk_10002C738;
  block[4] = self;
  dispatch_async(v7, block);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PMPowerMitigationsServiceProtocol];
  [v5 setExportedInterface:v6];

  [v5 setExportedObject:self];
  v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PMPowerMitigationsServiceCallbackProtocol];
  [v5 setRemoteObjectInterface:v7];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v9 = log;
    v11[0] = 67109120;
    v11[1] = [v5 processIdentifier];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Accepted new connection from pid %d", v11, 8u);
  }

  [v5 resume];

  return 1;
}

- (void)registerForPowerMitigations
{
  v3 = +[NSXPCConnection currentConnection];
  v4 = [(PowerMitigationsManager *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000E620;
  v6[3] = &unk_10002C698;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

@end