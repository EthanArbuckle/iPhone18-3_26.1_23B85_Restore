@interface DPCWatchPresenceDetector
- (DPCWatchPresenceDetector)init;
- (id)getCurrentWatchMACAddress;
- (unint64_t)prestartCheck;
- (void)_registerSwitchWatchNotification;
- (void)_setupOnWristMonitoring;
- (void)_stopWristMonitoring;
- (void)_updateActiveNRDevice;
- (void)_updateActiveNRDeviceInternal;
- (void)centralManager:(id)a3 didUpdateRSSIStatisticsDetectionForPeripheral:(id)a4 results:(id)a5 error:(id)a6;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)changeRSSIStatisticsDetection:(id)a3 manager:(id)a4 closer:(id)a5 further:(id)a6 maskDecision:(int64_t)a7;
- (void)checkAndStartRSSIDetection;
- (void)checkPolicyWithRSSI:(id)a3;
- (void)connectToWatch;
- (void)dealloc;
- (void)detectWatchWristStateEvent:(int64_t)a3;
- (void)deviceIsConnectedDidChange:(id)a3 isConnected:(BOOL)a4;
- (void)deviceIsNearbyDidChange:(id)a3 isNearby:(BOOL)a4;
- (void)deviceLinkTypeDidChange:(id)a3 linkType:(unsigned __int8)a4 linkSubtype:(unsigned __int8)a5;
- (void)disableRSSIStatisticsDetection:(id)a3 manager:(id)a4;
- (void)loadPolicy;
- (void)monitorRSSIAbsence;
- (void)monitorRSSIPresence;
- (void)resetAll;
- (void)resetBT;
- (void)resetWatchMonitors;
- (void)runDiscoveryMode;
- (void)sendWatchWristStateEvent:(int64_t)a3;
- (void)start;
- (void)stop;
- (void)watchConnectivityChanges;
@end

@implementation DPCWatchPresenceDetector

- (void)resetAll
{
  executionQueue = self->_executionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001204;
  block[3] = &unk_1000106C0;
  block[4] = self;
  dispatch_sync(executionQueue, block);
}

- (void)resetBT
{
  [(DPCWatchPresenceDetector *)self disableRSSIStatisticsDetection];
  nrMonitor = self->_nrMonitor;
  self->_nrMonitor = 0;

  watch = self->_watch;
  self->_watch = 0;
}

- (void)_stopWristMonitoring
{
  if (self->_sfClient)
  {
    v3 = sub_100001040(off_100016898);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping on wrist detection...", buf, 2u);
    }

    [(SFClient *)self->_sfClient monitorPairedWatchWristStateWithCompletionHandler:&stru_100010700];
    objc_initWeak(buf, self);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100005568;
    v4[3] = &unk_100010728;
    objc_copyWeak(&v5, buf);
    [(SFClient *)self->_sfClient setInvalidationHandler:v4];
    [(SFClient *)self->_sfClient invalidate];
    objc_destroyWeak(&v5);
    objc_destroyWeak(buf);
  }
}

- (DPCWatchPresenceDetector)init
{
  v25.receiver = self;
  v25.super_class = DPCWatchPresenceDetector;
  v2 = [(DPCWatchPresenceDetector *)&v25 init];
  if (v2)
  {
    v3 = +[DPCTelemetry sharedInstance];
    v4 = *(v2 + 13);
    *(v2 + 13) = v3;

    v5 = objc_opt_new();
    [v2 setStateMachine:v5];

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_USER_INTERACTIVE, 0);
    v8 = dispatch_queue_create("com.apple.watchpresenced.executionQueue", v7);
    v9 = *(v2 + 11);
    *(v2 + 11) = v8;

    dispatch_queue_set_specific(*(v2 + 11), off_1000169C8, *(v2 + 11), 0);
    v10 = [CBCentralManager alloc];
    v11 = *(v2 + 11);
    v26 = CBCentralManagerOptionReceiveSystemEvents;
    v27 = &__kCFBooleanTrue;
    v12 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v13 = [v10 initWithDelegate:v2 queue:v11 options:v12];
    v14 = *(v2 + 1);
    *(v2 + 1) = v13;

    v15 = +[NRPairedDeviceRegistry sharedInstance];
    v16 = *(v2 + 8);
    *(v2 + 8) = v15;

    [v2 setDetectedNewErrorBlock:&stru_100010658];
    [v2 setDetectedNewEventBlock:&stru_100010678];
    [v2 setDetectedNewWatchStatusEventBlock:&stru_100010698];
    v17 = *(v2 + 11);
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_100004B8C;
    v23 = &unk_1000106C0;
    v18 = v2;
    v24 = v18;
    dispatch_async(v17, &v20);
    [v18 _registerSwitchWatchNotification];
  }

  return v2;
}

- (void)dealloc
{
  v3 = sub_100001040(off_100016898);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deallocing DPCBTCCLient", buf, 2u);
  }

  [(DPCWatchPresenceDetector *)self resetAll];
  v4.receiver = self;
  v4.super_class = DPCWatchPresenceDetector;
  [(DPCWatchPresenceDetector *)&v4 dealloc];
}

- (void)_updateActiveNRDevice
{
  if (dispatch_get_specific(off_1000169C8))
  {

    [(DPCWatchPresenceDetector *)self _updateActiveNRDeviceInternal];
  }

  else
  {
    executionQueue = self->_executionQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004CE0;
    block[3] = &unk_1000106C0;
    block[4] = self;
    dispatch_sync(executionQueue, block);
  }
}

- (void)_updateActiveNRDeviceInternal
{
  v3 = [(NRPairedDeviceRegistry *)self->_nrClient getActivePairedDevice];
  v4 = v3;
  if (!v3)
  {
    v13 = sub_100001040(off_100016898);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      v14 = "No active watch found...";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, &v16, 2u);
    }

LABEL_19:

    goto LABEL_20;
  }

  p_currentActiveDevice = &self->_currentActiveDevice;
  if (v3 == self->_currentActiveDevice)
  {
    v15 = sub_100001040(off_100016898);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Still the same watch, no further action needed", &v16, 2u);
    }

    [(DPCWatchPresenceDetector *)self connectToWatch];
  }

  else
  {
    objc_storeStrong(&self->_currentActiveDevice, v3);
    v6 = *p_currentActiveDevice;
    v7 = sub_100001040(off_100016898);
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [*p_currentActiveDevice valueForProperty:NRDevicePropertyName];
        v10 = [*p_currentActiveDevice valueForProperty:NRDevicePropertyAdvertisedName];
        v11 = [*p_currentActiveDevice valueForProperty:NRDevicePropertyPairingID];
        v12 = [*p_currentActiveDevice valueForProperty:NRDevicePropertyBluetoothMACAddress];
        v16 = 138413058;
        v17 = v9;
        v18 = 2112;
        v19 = v10;
        v20 = 2112;
        v21 = v11;
        v22 = 2112;
        v23 = v12;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ActiveDevice changed to: %@, AD name %@, uuid: %@, address %@", &v16, 0x2Au);
      }

      if ([(CBCentralManager *)self->_manager state]== 5)
      {
        [(DPCWatchPresenceDetector *)self connectToWatch];
        [(DPCWatchPresenceDetector *)self checkAndStartRSSIDetection];
        goto LABEL_20;
      }

      v13 = sub_100001040(off_100016898);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        v14 = "BT not ready yet";
        goto LABEL_18;
      }

      goto LABEL_19;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000076A0(v8);
    }
  }

LABEL_20:
}

- (id)getCurrentWatchMACAddress
{
  currentActiveDevice = self->_currentActiveDevice;
  if (currentActiveDevice || ([(DPCWatchPresenceDetector *)self _updateActiveNRDevice], (currentActiveDevice = self->_currentActiveDevice) != 0))
  {
    currentActiveDevice = [currentActiveDevice valueForProperty:NRDevicePropertyBluetoothMACAddress];
  }

  return currentActiveDevice;
}

- (void)connectToWatch
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NRDevice *)v2->_currentActiveDevice valueForProperty:NRDevicePropertyBluetoothMACAddress];
  if (!v3)
  {
    p_super = sub_100001040(off_100016898);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      sub_10000775C(p_super);
    }

    goto LABEL_16;
  }

  if (![(NSString *)v2->_macAddress isEqualToString:v3])
  {
    v4 = [(DPCWatchPresenceDetector *)v2 stateMachine];
    [v4 setIsSwitchingWatch:1];

    v5 = sub_100001040(off_100016898);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      macAddress = v2->_macAddress;
      v22 = 138412546;
      v23 = macAddress;
      v24 = 2112;
      v25 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Switching from %@ to %@", &v22, 0x16u);
    }

    v7 = [(DPCWatchPresenceDetector *)v2 detectedNewWatchStatusEventBlock];
    v7[2](v7, 0);

    [(DPCTelemetry *)v2->_telemetry registerWatchSwitch];
  }

  objc_storeStrong(&v2->_macAddress, v3);
  v8 = [(CBCentralManager *)v2->_manager retrievePeripheralWithAddress:v2->_macAddress];
  watch = v2->_watch;
  v2->_watch = v8;

  v10 = v2->_watch;
  if (!v10 || ([(CBPeripheral *)v10 identifier], v11 = objc_claimAutoreleasedReturnValue(), v12 = v11 == 0, v11, v12))
  {
    v20 = sub_100001040(off_100016898);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000076E4(v3, v20);
    }

    p_super = &v2->_watch->super.super;
    v2->_watch = 0;
LABEL_16:

    goto LABEL_17;
  }

  v13 = sub_100001040(off_100016898);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v2->_watch;
    v22 = 138412290;
    v23 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Successfully retrieved CBPeripheral %@", &v22, 0xCu);
  }

  v15 = [NRDeviceMonitor alloc];
  v16 = [(CBPeripheral *)v2->_watch identifier];
  v17 = [NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:v16];
  v18 = [v15 initWithDeviceIdentifier:v17 delegate:v2 queue:v2->_executionQueue];
  nrMonitor = v2->_nrMonitor;
  v2->_nrMonitor = v18;

  [(SFClient *)v2->_sfClient getPairedWatchWristStateWithCompletionHandler:v2->_wristDetectionHandler];
LABEL_17:

  objc_sync_exit(v2);
}

- (void)loadPolicy
{
  v3 = [(DPCWatchPresenceDetector *)self stateMachine];
  v4 = [v3 isInRSSIMode];

  v5 = &off_100010240;
  if (!v4)
  {
    v5 = off_100010238;
  }

  v6 = objc_alloc(*v5);
  v7 = [(DPCWatchPresenceDetector *)self stateMachine];
  v8 = [v6 initWithStateMachine:v7];
  policy = self->_policy;
  self->_policy = v8;

  v10 = [(DPCWatchPresenceDetector *)self detectedNewEventBlock];
  [(DPCBasePolicy *)self->_policy setDetectedNewEventBlock:v10];

  v11 = [(DPCWatchPresenceDetector *)self detectedNewErrorBlock];
  [(DPCBasePolicy *)self->_policy setDetectedNewErrorBlock:v11];

  v12 = [(DPCWatchPresenceDetector *)self detectedNewWatchStatusEventBlock];
  [(DPCBasePolicy *)self->_policy setDetectedNewWatchStatusEventBlock:v12];
}

- (void)resetWatchMonitors
{
  nrMonitor = self->_nrMonitor;
  self->_nrMonitor = 0;
  _objc_release_x1();
}

- (void)checkAndStartRSSIDetection
{
  v6 = [(DPCWatchPresenceDetector *)self stateMachine];
  if ([v6 isRunning] && -[DPCBasePolicy requireRSSI](self->_policy, "requireRSSI"))
  {
    watch = self->_watch;

    if (watch)
    {
      v4 = [(DPCWatchPresenceDetector *)self stateMachine];
      v5 = [v4 currentWatchWristState];

      if (v5 == 3)
      {

        [(DPCWatchPresenceDetector *)self runDiscoveryMode];
      }

      else
      {

        [(DPCWatchPresenceDetector *)self disableRSSIStatisticsDetection];
      }
    }
  }

  else
  {
  }
}

- (void)_setupOnWristMonitoring
{
  v3 = sub_100001040(off_100016898);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up on wrist detection...", buf, 2u);
  }

  v4 = objc_opt_new();
  sfClient = self->_sfClient;
  self->_sfClient = v4;

  [(SFClient *)self->_sfClient setDispatchQueue:self->_executionQueue];
  objc_initWeak(buf, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100005744;
  v8[3] = &unk_100010750;
  objc_copyWeak(&v9, buf);
  v6 = objc_retainBlock(v8);
  wristDetectionHandler = self->_wristDetectionHandler;
  self->_wristDetectionHandler = v6;

  [(SFClient *)self->_sfClient monitorPairedWatchWristStateWithCompletionHandler:self->_wristDetectionHandler];
  [(SFClient *)self->_sfClient getPairedWatchWristStateWithCompletionHandler:self->_wristDetectionHandler];
  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

- (void)_registerSwitchWatchNotification
{
  objc_initWeak(&location, self);
  v3 = [NRPairedDeviceRegistryWatchDidBecomeActiveDarwinNotification UTF8String];
  executionQueue = self->_executionQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100005880;
  v5[3] = &unk_100010778;
  objc_copyWeak(&v6, &location);
  notify_register_dispatch(v3, &self->_notifyToken, executionQueue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)detectWatchWristStateEvent:(int64_t)a3
{
  v4 = self;
  objc_sync_enter(v4);
  v5 = sub_100001040(off_100016898);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (a3 >= 4)
    {
      v6 = [NSString stringWithFormat:@"Undefined state (%ld)", a3];
    }

    else
    {
      v6 = *(&off_1000107C0 + a3);
    }

    *buf = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[WristEvent]: %@", buf, 0xCu);
  }

  v7 = [(DPCWatchPresenceDetector *)v4 stateMachine];
  [v7 setCurrentWatchWristState:a3];

  objc_sync_exit(v4);
  [(DPCWatchPresenceDetector *)v4 sendWatchWristStateEvent:a3];
  [(DPCBasePolicy *)v4->_policy onWristStateChange:a3];
  [(DPCWatchPresenceDetector *)v4 checkAndStartRSSIDetection];
}

- (void)sendWatchWristStateEvent:(int64_t)a3
{
  [(DPCTelemetry *)self->_telemetry registerWatchWristEvent:?];
  if (a3 == 3)
  {
    a3 = 1;
  }

  else if (a3 != 2)
  {
    return;
  }

  v5 = [(DPCWatchPresenceDetector *)self detectedNewWatchStatusEventBlock];
  v5[2](v5, a3);
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v4 = [(CBCentralManager *)self->_manager state];
  v5 = sub_100001040(off_100016898);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4 == 5)
  {
    if (v6)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CBManager is ready!", &v8, 2u);
    }

    [(DPCWatchPresenceDetector *)self connectToWatch];
    [(DPCWatchPresenceDetector *)self checkAndStartRSSIDetection];
  }

  else
  {
    if (v6)
    {
      v7 = [(CBCentralManager *)self->_manager state];
      v8 = 134217984;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Bluetooth is unavailable %ld", &v8, 0xCu);
    }

    [(DPCWatchPresenceDetector *)self resetBT];
  }
}

- (void)centralManager:(id)a3 didUpdateRSSIStatisticsDetectionForPeripheral:(id)a4 results:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v13)
  {
    v15 = [v13 domain];
    v16 = [v15 isEqualToString:CBInternalErrorDomain];

    if (v16 && [v14 code] != 19)
    {
      v17 = sub_100001040(off_100016898);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v19 = 138412290;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "RSSI callback error %@", &v19, 0xCu);
      }
    }
  }

  else
  {
    v18 = [v12 objectForKeyedSubscript:@"kCBGetRssiStatisticsDetectionMaximum"];
    [(DPCWatchPresenceDetector *)self checkPolicyWithRSSI:v18];
  }
}

- (void)changeRSSIStatisticsDetection:(id)a3 manager:(id)a4 closer:(id)a5 further:(id)a6 maskDecision:(int64_t)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = +[NSMutableDictionary dictionary];
  if (v12 && v13)
  {
    v57 = self;
    v55 = 1 << v7;
    v17 = [v14 intValue];
    v18 = +[DPCDefaults sharedInstance];
    v19 = [v18 NSNumberForDefault:@"DPCDefaultsThresholdDMIN"];
    v20 = [v19 intValue];

    v21 = +[DPCDefaults sharedInstance];
    v22 = v21;
    v23 = &off_100010480;
    if (v17 != v20)
    {
      v23 = &off_100010478;
    }

    v24 = [v21 NSNumberForDefault:*v23];
    v25 = [v24 intValue];

    if (v25 - 4 >= 0xC)
    {
      v26 = 1;
    }

    else
    {
      v26 = (v25 >> 2) - 1;
    }

    v56 = v26;
    v27 = [v14 intValue];
    v28 = +[DPCDefaults sharedInstance];
    v29 = [v28 NSNumberForDefault:@"DPCDefaultsThresholdDMIN"];
    v30 = [v29 intValue];

    if (v27 > v30)
    {
      v31 = +[DPCDefaults sharedInstance];
      v32 = [v31 NSNumberForDefault:@"DPCDefaultsThresholdDMIN"];

      v14 = v32;
    }

    v33 = [v15 intValue];
    v34 = +[DPCDefaults sharedInstance];
    v35 = [v34 NSNumberForDefault:@"DPCDefaultsThresholdDMAX"];
    v36 = [v35 intValue];

    if (v33 < v36)
    {
      v37 = +[DPCDefaults sharedInstance];
      v38 = [v37 NSNumberForDefault:@"DPCDefaultsThresholdDMAX"];

      v15 = v38;
    }

    v39 = [NSNumber numberWithInt:1];
    [v16 setObject:v39 forKeyedSubscript:CBRSSIStatisticAndDetectionEnable];

    [v16 setObject:v15 forKeyedSubscript:CBRSSIStatisticAndDetectionAverageThresholdFurther];
    v40 = CBRSSIStatisticAndDetectionMaximumThresholdFurther;
    [v16 setObject:v15 forKeyedSubscript:CBRSSIStatisticAndDetectionMaximumThresholdFurther];
    [v16 setObject:v15 forKeyedSubscript:CBRSSIStatisticAndDetectionMedianThresholdFurther];
    [v16 setObject:v14 forKeyedSubscript:CBRSSIStatisticAndDetectionAverageThresholdCloser];
    v41 = CBRSSIStatisticAndDetectionMaximumThresholdCloser;
    [v16 setObject:v14 forKeyedSubscript:CBRSSIStatisticAndDetectionMaximumThresholdCloser];
    [v16 setObject:v14 forKeyedSubscript:CBRSSIStatisticAndDetectionMedianThresholdCloser];
    v42 = [NSNumber numberWithInt:0];
    [v16 setObject:v42 forKeyedSubscript:CBRSSIStatisticAndDetectionVarThreshold1];

    v43 = [NSNumber numberWithInt:0];
    [v16 setObject:v43 forKeyedSubscript:CBRSSIStatisticAndDetectionVarThreshold2];

    v44 = [NSNumber numberWithInt:v55];
    [v16 setObject:v44 forKeyedSubscript:CBRSSIStatisticAndDetectionMaskDecisionLogic];

    v45 = [NSNumber numberWithInt:0];
    [v16 setObject:v45 forKeyedSubscript:CBRSSIStatisticAndDetectionCMCheckLogic];

    v46 = [NSNumber numberWithInt:0];
    [v16 setObject:v46 forKeyedSubscript:CBRSSIStatisticAndDetectionCM_AND_Mask];

    v47 = [NSNumber numberWithInt:0];
    [v16 setObject:v47 forKeyedSubscript:CBRSSIStatisticAndDetectionCM_XOR_Mask];

    v48 = [NSNumber numberWithInt:0];
    [v16 setObject:v48 forKeyedSubscript:CBRSSIStatisticAndDetectionCM_AND_Mask2];

    v49 = [NSNumber numberWithInt:0];
    [v16 setObject:v49 forKeyedSubscript:CBRSSIStatisticAndDetectionEnableDebugging];

    v50 = [NSNumber numberWithInt:v56];
    [v16 setObject:v50 forKeyedSubscript:CBRSSIStatisticAndDetectionWindowConfiguration];

    v51 = sub_100001040(off_100016898);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v52 = [v16 objectForKeyedSubscript:v41];
      v53 = [v16 objectForKeyedSubscript:v40];
      *buf = 138412546;
      v59 = v52;
      v60 = 2112;
      v61 = v53;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Enabled BT RSSI Stat with closer: %@ db, further: %@ db", buf, 0x16u);
    }

    [v13 setRSSIStatisticsDetection:v12 options:v16];
    v54 = [(DPCWatchPresenceDetector *)v57 stateMachine];
    [v54 setIsRunningRSSIStatDetecion:1];
  }
}

- (void)disableRSSIStatisticsDetection:(id)a3 manager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      v9 = [(DPCWatchPresenceDetector *)self stateMachine];
      v10 = [v9 isRunningRSSIStatDetecion];

      if (v10)
      {
        v11 = +[NSMutableDictionary dictionary];
        v12 = [NSNumber numberWithInt:0];
        [v11 setObject:v12 forKeyedSubscript:CBRSSIStatisticAndDetectionEnable];

        v13 = sub_100001040(off_100016898);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 138412290;
          v16 = v6;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Disabling BT RSSI Stat against %@", &v15, 0xCu);
        }

        [v8 setRSSIStatisticsDetection:v6 options:v11];
        v14 = [(DPCWatchPresenceDetector *)self stateMachine];
        [v14 setIsRunningRSSIStatDetecion:0];
      }
    }
  }
}

- (void)start
{
  v3 = +[DPCDefaults isRSSIModeEnabled];
  v4 = [(DPCWatchPresenceDetector *)self stateMachine];
  [v4 setIsInRSSIMode:v3];

  [(DPCWatchPresenceDetector *)self loadPolicy];
  v5 = [(DPCWatchPresenceDetector *)self stateMachine];
  LOBYTE(v4) = [v5 isRunning];

  if ((v4 & 1) == 0)
  {
    v6 = [(DPCWatchPresenceDetector *)self stateMachine];
    [v6 setIsRunning:1];

    v7 = [(DPCWatchPresenceDetector *)self stateMachine];
    [v7 setIsMonitoringAbsence:1];

    if (!self->_watch)
    {
      [(DPCWatchPresenceDetector *)self _updateActiveNRDevice];
    }

    [(DPCWatchPresenceDetector *)self _setupOnWristMonitoring];

    [(DPCWatchPresenceDetector *)self checkAndStartRSSIDetection];
  }
}

- (void)stop
{
  v3 = [(DPCWatchPresenceDetector *)self stateMachine];
  v4 = [v3 isRunning];

  if (v4)
  {
    v5 = [(DPCWatchPresenceDetector *)self stateMachine];
    [v5 setIsRunning:0];

    [(DPCWatchPresenceDetector *)self disableRSSIStatisticsDetection];
  }
}

- (unint64_t)prestartCheck
{
  if ([(DPCWatchPresenceDetector *)self checkIfBluetoothPowerOff])
  {
    v3 = 3;
LABEL_6:
    [(DPCTelemetry *)self->_telemetry registerError:v3];
    return v3;
  }

  v4 = [(DPCWatchPresenceDetector *)self getCurrentWatchMACAddress];

  if (!v4)
  {
    v3 = 2;
    goto LABEL_6;
  }

  return 0;
}

- (void)monitorRSSIPresence
{
  executionQueue = self->_executionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006714;
  block[3] = &unk_1000106C0;
  block[4] = self;
  dispatch_async(executionQueue, block);
}

- (void)monitorRSSIAbsence
{
  executionQueue = self->_executionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000068B8;
  block[3] = &unk_1000106C0;
  block[4] = self;
  dispatch_async(executionQueue, block);
}

- (void)runDiscoveryMode
{
  executionQueue = self->_executionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006AE8;
  block[3] = &unk_1000106C0;
  block[4] = self;
  dispatch_async(executionQueue, block);
}

- (void)checkPolicyWithRSSI:(id)a3
{
  v4 = a3;
  v5 = sub_100001040(off_100016898);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    [v4 floatValue];
    v8 = 134217984;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "RSSI Updates: %.2f", &v8, 0xCu);
  }

  v7 = [(DPCBasePolicy *)self->_policy onRSSIChange:v4];
  if (v7 == 2)
  {
    [(DPCWatchPresenceDetector *)self monitorRSSIAbsence];
  }

  else if (v7 == 1)
  {
    [(DPCWatchPresenceDetector *)self monitorRSSIPresence];
  }
}

- (void)deviceIsNearbyDidChange:(id)a3 isNearby:(BOOL)a4
{
  objc_initWeak(&location, self);
  executionQueue = self->_executionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006E14;
  block[3] = &unk_1000107A0;
  objc_copyWeak(&v8, &location);
  v9 = a4;
  dispatch_async(executionQueue, block);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)deviceIsConnectedDidChange:(id)a3 isConnected:(BOOL)a4
{
  v4 = a4;
  v5 = sub_100001040(off_100016898);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "deviceIsConnectedDidChange isConnected: %d", v6, 8u);
  }
}

- (void)deviceLinkTypeDidChange:(id)a3 linkType:(unsigned __int8)a4 linkSubtype:(unsigned __int8)a5
{
  v5 = a4;
  v6 = sub_100001040(off_100016898);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "deviceLinkTypeDidChange to :%d", v7, 8u);
  }
}

- (void)watchConnectivityChanges
{
  if (self->_nrMonitor)
  {
    v3 = sub_100001040(off_100016898);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(NRDeviceMonitor *)self->_nrMonitor deviceIdentifier];
      v5 = [(NRDeviceMonitor *)self->_nrMonitor isConnected];
      v6 = [(NRDeviceMonitor *)self->_nrMonitor isCloudConnected];
      v7 = [(NRDeviceMonitor *)self->_nrMonitor isNearby];
      [(NRDeviceMonitor *)self->_nrMonitor linkType];
      StringFromNRLinkType = createStringFromNRLinkType();
      v25 = 138413314;
      v26 = v4;
      v27 = 1024;
      v28 = v5;
      v29 = 1024;
      v30 = v6;
      v31 = 1024;
      v32 = v7;
      v33 = 2112;
      v34 = StringFromNRLinkType;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Current connection to %@, isConnected %d, isCloudConnected %d, isBluetoothConnected %d, linkType %@", &v25, 0x28u);
    }

    [(DPCTelemetry *)self->_telemetry registerWatchConnectivity:[(NRDeviceMonitor *)self->_nrMonitor isNearby]];
    v9 = [(DPCWatchPresenceDetector *)self detectedNewWatchStatusEventBlock];

    if (v9)
    {
      v10 = [(DPCWatchPresenceDetector *)self detectedNewWatchStatusEventBlock];
      if ([(NRDeviceMonitor *)self->_nrMonitor isNearby])
      {
        v11 = 4;
      }

      else
      {
        v11 = 3;
      }

      v10[2](v10, v11);
    }

    v12 = [(NRDeviceMonitor *)self->_nrMonitor isConnected];
    v13 = [(DPCWatchPresenceDetector *)self stateMachine];
    [v13 setIsWatchConnected:v12];

    v14 = [(NRDeviceMonitor *)self->_nrMonitor isNearby];
    v15 = [(DPCWatchPresenceDetector *)self stateMachine];
    [v15 setIsBluetoothConnected:v14];

    if ([(NRDeviceMonitor *)self->_nrMonitor isNearby])
    {
      v16 = [(DPCWatchPresenceDetector *)self stateMachine];
      v17 = [v16 isSwitchingWatch];

      v18 = sub_100001040(off_100016898);
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      if (v17)
      {
        if (v19)
        {
          v20 = [(NRDeviceMonitor *)self->_nrMonitor deviceIdentifier];
          v25 = 138412290;
          v26 = v20;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Switched to watch: %@", &v25, 0xCu);
        }

        v18 = [(DPCWatchPresenceDetector *)self stateMachine];
        [v18 setIsSwitchingWatch:0];
      }

      else if (v19)
      {
        v22 = [(NRDeviceMonitor *)self->_nrMonitor deviceIdentifier];
        v25 = 138412290;
        v26 = v22;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Watch %@ connected.", &v25, 0xCu);
      }

      v23 = [(DPCWatchPresenceDetector *)self stateMachine];
      v24 = [v23 isInRSSIMode];

      if (v24)
      {
        [(DPCWatchPresenceDetector *)self checkAndStartRSSIDetection];
      }
    }

    else
    {
      v21 = sub_100001040(off_100016898);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Watch disconnected from BT", &v25, 2u);
      }
    }

    [(DPCBasePolicy *)self->_policy onWatchConnectivityChange:[(NRDeviceMonitor *)self->_nrMonitor isNearby]];
  }
}

@end