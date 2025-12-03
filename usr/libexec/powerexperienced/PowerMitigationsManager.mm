@interface PowerMitigationsManager
+ (id)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (PowerMitigationsManager)init;
- (void)clearState;
- (void)evaluateMitigations;
- (void)handleUpdatedDrainLevelPrediction:(int64_t)prediction;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)registerForDrainLevelPredictions;
- (void)registerForPowerMitigations;
- (void)restoreState;
- (void)saveState;
- (void)start;
- (void)updateClientsWithNewMitigations:(id)mitigations fromMitigations:(id)fromMitigations;
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

  systemWideMitigationLevel = [(PMPowerMitigationSession *)self->_powerMitigationSession systemWideMitigationLevel];
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
  if (v8 == systemWideMitigationLevel)
  {
    if (v10)
    {
      v11 = 134217984;
      v12 = systemWideMitigationLevel;
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

- (void)handleUpdatedDrainLevelPrediction:(int64_t)prediction
{
  iblmMitigationLevel = [(PowerMitigationsManager *)self iblmMitigationLevel];
  v6 = [(PowerMitigationsManager *)self log];
  v7 = v6;
  if (iblmMitigationLevel == prediction)
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
      iblmMitigationLevel2 = [(PowerMitigationsManager *)self iblmMitigationLevel];
      v10 = 2048;
      predictionCopy = prediction;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "IBLM MitigationLevel has changed from: %ld to: %ld", &v8, 0x16u);
    }

    [(PowerMitigationsManager *)self setIblmMitigationLevel:prediction];
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

- (void)updateClientsWithNewMitigations:(id)mitigations fromMitigations:(id)fromMitigations
{
  mitigationsCopy = mitigations;
  fromMitigationsCopy = fromMitigations;
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
          processIdentifier = [v13 processIdentifier];
          *buf = v17;
          v25 = processIdentifier;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Sending mitigationLevel update to PID: %d", buf, 8u);
        }

        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10000E0F4;
        v19[3] = &unk_10002C878;
        v19[4] = self;
        v16 = [v13 remoteObjectProxyWithErrorHandler:v19];
        [v16 didUpdateToMitigation:mitigationsCopy fromMitigation:fromMitigationsCopy];

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
  deviceContext = [(PowerMitigationsManager *)self deviceContext];
  [deviceContext addObserver:self forKeyPath:@"currentContext" options:3 context:0];

  uTF8String = [kPowerMitigationsManagerServiceStartupNotify UTF8String];

  notify_post(uTF8String);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v7 = sub_100001600();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E248;
  block[3] = &unk_10002C738;
  block[4] = self;
  dispatch_async(v7, block);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PMPowerMitigationsServiceProtocol];
  [connectionCopy setExportedInterface:v6];

  [connectionCopy setExportedObject:self];
  v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PMPowerMitigationsServiceCallbackProtocol];
  [connectionCopy setRemoteObjectInterface:v7];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v9 = log;
    v11[0] = 67109120;
    v11[1] = [connectionCopy processIdentifier];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Accepted new connection from pid %d", v11, 8u);
  }

  [connectionCopy resume];

  return 1;
}

- (void)registerForPowerMitigations
{
  v3 = +[NSXPCConnection currentConnection];
  queue = [(PowerMitigationsManager *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000E620;
  v6[3] = &unk_10002C698;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(queue, v6);
}

@end