@interface DPCWatchPresenceDetector
- (DPCWatchPresenceDetector)init;
- (id)getCurrentWatchMACAddress;
- (unint64_t)prestartCheck;
- (void)_registerSwitchWatchNotification;
- (void)_setupOnWristMonitoring;
- (void)_stopWristMonitoring;
- (void)_updateActiveNRDevice;
- (void)_updateActiveNRDeviceInternal;
- (void)centralManager:(id)manager didUpdateRSSIStatisticsDetectionForPeripheral:(id)peripheral results:(id)results error:(id)error;
- (void)centralManagerDidUpdateState:(id)state;
- (void)changeRSSIStatisticsDetection:(id)detection manager:(id)manager closer:(id)closer further:(id)further maskDecision:(int64_t)decision;
- (void)checkAndStartRSSIDetection;
- (void)checkPolicyWithRSSI:(id)i;
- (void)connectToWatch;
- (void)dealloc;
- (void)detectWatchWristStateEvent:(int64_t)event;
- (void)deviceIsConnectedDidChange:(id)change isConnected:(BOOL)connected;
- (void)deviceIsNearbyDidChange:(id)change isNearby:(BOOL)nearby;
- (void)deviceLinkTypeDidChange:(id)change linkType:(unsigned __int8)type linkSubtype:(unsigned __int8)subtype;
- (void)disableRSSIStatisticsDetection:(id)detection manager:(id)manager;
- (void)loadPolicy;
- (void)monitorRSSIAbsence;
- (void)monitorRSSIPresence;
- (void)resetAll;
- (void)resetBT;
- (void)resetWatchMonitors;
- (void)runDiscoveryMode;
- (void)sendWatchWristStateEvent:(int64_t)event;
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
  getActivePairedDevice = [(NRPairedDeviceRegistry *)self->_nrClient getActivePairedDevice];
  v4 = getActivePairedDevice;
  if (!getActivePairedDevice)
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
  if (getActivePairedDevice == self->_currentActiveDevice)
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
    objc_storeStrong(&self->_currentActiveDevice, getActivePairedDevice);
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NRDevice *)selfCopy->_currentActiveDevice valueForProperty:NRDevicePropertyBluetoothMACAddress];
  if (!v3)
  {
    p_super = sub_100001040(off_100016898);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      sub_10000775C(p_super);
    }

    goto LABEL_16;
  }

  if (![(NSString *)selfCopy->_macAddress isEqualToString:v3])
  {
    stateMachine = [(DPCWatchPresenceDetector *)selfCopy stateMachine];
    [stateMachine setIsSwitchingWatch:1];

    v5 = sub_100001040(off_100016898);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      macAddress = selfCopy->_macAddress;
      v22 = 138412546;
      v23 = macAddress;
      v24 = 2112;
      v25 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Switching from %@ to %@", &v22, 0x16u);
    }

    detectedNewWatchStatusEventBlock = [(DPCWatchPresenceDetector *)selfCopy detectedNewWatchStatusEventBlock];
    detectedNewWatchStatusEventBlock[2](detectedNewWatchStatusEventBlock, 0);

    [(DPCTelemetry *)selfCopy->_telemetry registerWatchSwitch];
  }

  objc_storeStrong(&selfCopy->_macAddress, v3);
  v8 = [(CBCentralManager *)selfCopy->_manager retrievePeripheralWithAddress:selfCopy->_macAddress];
  watch = selfCopy->_watch;
  selfCopy->_watch = v8;

  v10 = selfCopy->_watch;
  if (!v10 || ([(CBPeripheral *)v10 identifier], v11 = objc_claimAutoreleasedReturnValue(), v12 = v11 == 0, v11, v12))
  {
    v20 = sub_100001040(off_100016898);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000076E4(v3, v20);
    }

    p_super = &selfCopy->_watch->super.super;
    selfCopy->_watch = 0;
LABEL_16:

    goto LABEL_17;
  }

  v13 = sub_100001040(off_100016898);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = selfCopy->_watch;
    v22 = 138412290;
    v23 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Successfully retrieved CBPeripheral %@", &v22, 0xCu);
  }

  v15 = [NRDeviceMonitor alloc];
  identifier = [(CBPeripheral *)selfCopy->_watch identifier];
  v17 = [NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:identifier];
  v18 = [v15 initWithDeviceIdentifier:v17 delegate:selfCopy queue:selfCopy->_executionQueue];
  nrMonitor = selfCopy->_nrMonitor;
  selfCopy->_nrMonitor = v18;

  [(SFClient *)selfCopy->_sfClient getPairedWatchWristStateWithCompletionHandler:selfCopy->_wristDetectionHandler];
LABEL_17:

  objc_sync_exit(selfCopy);
}

- (void)loadPolicy
{
  stateMachine = [(DPCWatchPresenceDetector *)self stateMachine];
  isInRSSIMode = [stateMachine isInRSSIMode];

  v5 = &off_100010240;
  if (!isInRSSIMode)
  {
    v5 = off_100010238;
  }

  v6 = objc_alloc(*v5);
  stateMachine2 = [(DPCWatchPresenceDetector *)self stateMachine];
  v8 = [v6 initWithStateMachine:stateMachine2];
  policy = self->_policy;
  self->_policy = v8;

  detectedNewEventBlock = [(DPCWatchPresenceDetector *)self detectedNewEventBlock];
  [(DPCBasePolicy *)self->_policy setDetectedNewEventBlock:detectedNewEventBlock];

  detectedNewErrorBlock = [(DPCWatchPresenceDetector *)self detectedNewErrorBlock];
  [(DPCBasePolicy *)self->_policy setDetectedNewErrorBlock:detectedNewErrorBlock];

  detectedNewWatchStatusEventBlock = [(DPCWatchPresenceDetector *)self detectedNewWatchStatusEventBlock];
  [(DPCBasePolicy *)self->_policy setDetectedNewWatchStatusEventBlock:detectedNewWatchStatusEventBlock];
}

- (void)resetWatchMonitors
{
  nrMonitor = self->_nrMonitor;
  self->_nrMonitor = 0;
  _objc_release_x1();
}

- (void)checkAndStartRSSIDetection
{
  stateMachine = [(DPCWatchPresenceDetector *)self stateMachine];
  if ([stateMachine isRunning] && -[DPCBasePolicy requireRSSI](self->_policy, "requireRSSI"))
  {
    watch = self->_watch;

    if (watch)
    {
      stateMachine2 = [(DPCWatchPresenceDetector *)self stateMachine];
      currentWatchWristState = [stateMachine2 currentWatchWristState];

      if (currentWatchWristState == 3)
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
  uTF8String = [NRPairedDeviceRegistryWatchDidBecomeActiveDarwinNotification UTF8String];
  executionQueue = self->_executionQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100005880;
  v5[3] = &unk_100010778;
  objc_copyWeak(&v6, &location);
  notify_register_dispatch(uTF8String, &self->_notifyToken, executionQueue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)detectWatchWristStateEvent:(int64_t)event
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = sub_100001040(off_100016898);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (event >= 4)
    {
      event = [NSString stringWithFormat:@"Undefined state (%ld)", event];
    }

    else
    {
      event = *(&off_1000107C0 + event);
    }

    *buf = 138412290;
    v9 = event;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[WristEvent]: %@", buf, 0xCu);
  }

  stateMachine = [(DPCWatchPresenceDetector *)selfCopy stateMachine];
  [stateMachine setCurrentWatchWristState:event];

  objc_sync_exit(selfCopy);
  [(DPCWatchPresenceDetector *)selfCopy sendWatchWristStateEvent:event];
  [(DPCBasePolicy *)selfCopy->_policy onWristStateChange:event];
  [(DPCWatchPresenceDetector *)selfCopy checkAndStartRSSIDetection];
}

- (void)sendWatchWristStateEvent:(int64_t)event
{
  [(DPCTelemetry *)self->_telemetry registerWatchWristEvent:?];
  if (event == 3)
  {
    event = 1;
  }

  else if (event != 2)
  {
    return;
  }

  detectedNewWatchStatusEventBlock = [(DPCWatchPresenceDetector *)self detectedNewWatchStatusEventBlock];
  detectedNewWatchStatusEventBlock[2](detectedNewWatchStatusEventBlock, event);
}

- (void)centralManagerDidUpdateState:(id)state
{
  state = [(CBCentralManager *)self->_manager state];
  v5 = sub_100001040(off_100016898);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (state == 5)
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
      state2 = [(CBCentralManager *)self->_manager state];
      v8 = 134217984;
      v9 = state2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Bluetooth is unavailable %ld", &v8, 0xCu);
    }

    [(DPCWatchPresenceDetector *)self resetBT];
  }
}

- (void)centralManager:(id)manager didUpdateRSSIStatisticsDetectionForPeripheral:(id)peripheral results:(id)results error:(id)error
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  resultsCopy = results;
  errorCopy = error;
  v14 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    v16 = [domain isEqualToString:CBInternalErrorDomain];

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
    v18 = [resultsCopy objectForKeyedSubscript:@"kCBGetRssiStatisticsDetectionMaximum"];
    [(DPCWatchPresenceDetector *)self checkPolicyWithRSSI:v18];
  }
}

- (void)changeRSSIStatisticsDetection:(id)detection manager:(id)manager closer:(id)closer further:(id)further maskDecision:(int64_t)decision
{
  decisionCopy = decision;
  detectionCopy = detection;
  managerCopy = manager;
  closerCopy = closer;
  furtherCopy = further;
  v16 = +[NSMutableDictionary dictionary];
  if (detectionCopy && managerCopy)
  {
    selfCopy = self;
    v55 = 1 << decisionCopy;
    intValue = [closerCopy intValue];
    v18 = +[DPCDefaults sharedInstance];
    v19 = [v18 NSNumberForDefault:@"DPCDefaultsThresholdDMIN"];
    intValue2 = [v19 intValue];

    v21 = +[DPCDefaults sharedInstance];
    v22 = v21;
    v23 = &off_100010480;
    if (intValue != intValue2)
    {
      v23 = &off_100010478;
    }

    v24 = [v21 NSNumberForDefault:*v23];
    intValue3 = [v24 intValue];

    if (intValue3 - 4 >= 0xC)
    {
      v26 = 1;
    }

    else
    {
      v26 = (intValue3 >> 2) - 1;
    }

    v56 = v26;
    intValue4 = [closerCopy intValue];
    v28 = +[DPCDefaults sharedInstance];
    v29 = [v28 NSNumberForDefault:@"DPCDefaultsThresholdDMIN"];
    intValue5 = [v29 intValue];

    if (intValue4 > intValue5)
    {
      v31 = +[DPCDefaults sharedInstance];
      v32 = [v31 NSNumberForDefault:@"DPCDefaultsThresholdDMIN"];

      closerCopy = v32;
    }

    intValue6 = [furtherCopy intValue];
    v34 = +[DPCDefaults sharedInstance];
    v35 = [v34 NSNumberForDefault:@"DPCDefaultsThresholdDMAX"];
    intValue7 = [v35 intValue];

    if (intValue6 < intValue7)
    {
      v37 = +[DPCDefaults sharedInstance];
      v38 = [v37 NSNumberForDefault:@"DPCDefaultsThresholdDMAX"];

      furtherCopy = v38;
    }

    v39 = [NSNumber numberWithInt:1];
    [v16 setObject:v39 forKeyedSubscript:CBRSSIStatisticAndDetectionEnable];

    [v16 setObject:furtherCopy forKeyedSubscript:CBRSSIStatisticAndDetectionAverageThresholdFurther];
    v40 = CBRSSIStatisticAndDetectionMaximumThresholdFurther;
    [v16 setObject:furtherCopy forKeyedSubscript:CBRSSIStatisticAndDetectionMaximumThresholdFurther];
    [v16 setObject:furtherCopy forKeyedSubscript:CBRSSIStatisticAndDetectionMedianThresholdFurther];
    [v16 setObject:closerCopy forKeyedSubscript:CBRSSIStatisticAndDetectionAverageThresholdCloser];
    v41 = CBRSSIStatisticAndDetectionMaximumThresholdCloser;
    [v16 setObject:closerCopy forKeyedSubscript:CBRSSIStatisticAndDetectionMaximumThresholdCloser];
    [v16 setObject:closerCopy forKeyedSubscript:CBRSSIStatisticAndDetectionMedianThresholdCloser];
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

    [managerCopy setRSSIStatisticsDetection:detectionCopy options:v16];
    stateMachine = [(DPCWatchPresenceDetector *)selfCopy stateMachine];
    [stateMachine setIsRunningRSSIStatDetecion:1];
  }
}

- (void)disableRSSIStatisticsDetection:(id)detection manager:(id)manager
{
  detectionCopy = detection;
  managerCopy = manager;
  v8 = managerCopy;
  if (detectionCopy)
  {
    if (managerCopy)
    {
      stateMachine = [(DPCWatchPresenceDetector *)self stateMachine];
      isRunningRSSIStatDetecion = [stateMachine isRunningRSSIStatDetecion];

      if (isRunningRSSIStatDetecion)
      {
        v11 = +[NSMutableDictionary dictionary];
        v12 = [NSNumber numberWithInt:0];
        [v11 setObject:v12 forKeyedSubscript:CBRSSIStatisticAndDetectionEnable];

        v13 = sub_100001040(off_100016898);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 138412290;
          v16 = detectionCopy;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Disabling BT RSSI Stat against %@", &v15, 0xCu);
        }

        [v8 setRSSIStatisticsDetection:detectionCopy options:v11];
        stateMachine2 = [(DPCWatchPresenceDetector *)self stateMachine];
        [stateMachine2 setIsRunningRSSIStatDetecion:0];
      }
    }
  }
}

- (void)start
{
  v3 = +[DPCDefaults isRSSIModeEnabled];
  stateMachine = [(DPCWatchPresenceDetector *)self stateMachine];
  [stateMachine setIsInRSSIMode:v3];

  [(DPCWatchPresenceDetector *)self loadPolicy];
  stateMachine2 = [(DPCWatchPresenceDetector *)self stateMachine];
  LOBYTE(stateMachine) = [stateMachine2 isRunning];

  if ((stateMachine & 1) == 0)
  {
    stateMachine3 = [(DPCWatchPresenceDetector *)self stateMachine];
    [stateMachine3 setIsRunning:1];

    stateMachine4 = [(DPCWatchPresenceDetector *)self stateMachine];
    [stateMachine4 setIsMonitoringAbsence:1];

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
  stateMachine = [(DPCWatchPresenceDetector *)self stateMachine];
  isRunning = [stateMachine isRunning];

  if (isRunning)
  {
    stateMachine2 = [(DPCWatchPresenceDetector *)self stateMachine];
    [stateMachine2 setIsRunning:0];

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

  getCurrentWatchMACAddress = [(DPCWatchPresenceDetector *)self getCurrentWatchMACAddress];

  if (!getCurrentWatchMACAddress)
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

- (void)checkPolicyWithRSSI:(id)i
{
  iCopy = i;
  v5 = sub_100001040(off_100016898);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    [iCopy floatValue];
    v8 = 134217984;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "RSSI Updates: %.2f", &v8, 0xCu);
  }

  v7 = [(DPCBasePolicy *)self->_policy onRSSIChange:iCopy];
  if (v7 == 2)
  {
    [(DPCWatchPresenceDetector *)self monitorRSSIAbsence];
  }

  else if (v7 == 1)
  {
    [(DPCWatchPresenceDetector *)self monitorRSSIPresence];
  }
}

- (void)deviceIsNearbyDidChange:(id)change isNearby:(BOOL)nearby
{
  objc_initWeak(&location, self);
  executionQueue = self->_executionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006E14;
  block[3] = &unk_1000107A0;
  objc_copyWeak(&v8, &location);
  nearbyCopy = nearby;
  dispatch_async(executionQueue, block);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)deviceIsConnectedDidChange:(id)change isConnected:(BOOL)connected
{
  connectedCopy = connected;
  v5 = sub_100001040(off_100016898);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = connectedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "deviceIsConnectedDidChange isConnected: %d", v6, 8u);
  }
}

- (void)deviceLinkTypeDidChange:(id)change linkType:(unsigned __int8)type linkSubtype:(unsigned __int8)subtype
{
  typeCopy = type;
  v6 = sub_100001040(off_100016898);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = typeCopy;
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
      deviceIdentifier = [(NRDeviceMonitor *)self->_nrMonitor deviceIdentifier];
      isConnected = [(NRDeviceMonitor *)self->_nrMonitor isConnected];
      isCloudConnected = [(NRDeviceMonitor *)self->_nrMonitor isCloudConnected];
      isNearby = [(NRDeviceMonitor *)self->_nrMonitor isNearby];
      [(NRDeviceMonitor *)self->_nrMonitor linkType];
      StringFromNRLinkType = createStringFromNRLinkType();
      v25 = 138413314;
      v26 = deviceIdentifier;
      v27 = 1024;
      v28 = isConnected;
      v29 = 1024;
      v30 = isCloudConnected;
      v31 = 1024;
      v32 = isNearby;
      v33 = 2112;
      v34 = StringFromNRLinkType;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Current connection to %@, isConnected %d, isCloudConnected %d, isBluetoothConnected %d, linkType %@", &v25, 0x28u);
    }

    [(DPCTelemetry *)self->_telemetry registerWatchConnectivity:[(NRDeviceMonitor *)self->_nrMonitor isNearby]];
    detectedNewWatchStatusEventBlock = [(DPCWatchPresenceDetector *)self detectedNewWatchStatusEventBlock];

    if (detectedNewWatchStatusEventBlock)
    {
      detectedNewWatchStatusEventBlock2 = [(DPCWatchPresenceDetector *)self detectedNewWatchStatusEventBlock];
      if ([(NRDeviceMonitor *)self->_nrMonitor isNearby])
      {
        v11 = 4;
      }

      else
      {
        v11 = 3;
      }

      detectedNewWatchStatusEventBlock2[2](detectedNewWatchStatusEventBlock2, v11);
    }

    isConnected2 = [(NRDeviceMonitor *)self->_nrMonitor isConnected];
    stateMachine = [(DPCWatchPresenceDetector *)self stateMachine];
    [stateMachine setIsWatchConnected:isConnected2];

    isNearby2 = [(NRDeviceMonitor *)self->_nrMonitor isNearby];
    stateMachine2 = [(DPCWatchPresenceDetector *)self stateMachine];
    [stateMachine2 setIsBluetoothConnected:isNearby2];

    if ([(NRDeviceMonitor *)self->_nrMonitor isNearby])
    {
      stateMachine3 = [(DPCWatchPresenceDetector *)self stateMachine];
      isSwitchingWatch = [stateMachine3 isSwitchingWatch];

      stateMachine4 = sub_100001040(off_100016898);
      v19 = os_log_type_enabled(stateMachine4, OS_LOG_TYPE_DEFAULT);
      if (isSwitchingWatch)
      {
        if (v19)
        {
          deviceIdentifier2 = [(NRDeviceMonitor *)self->_nrMonitor deviceIdentifier];
          v25 = 138412290;
          v26 = deviceIdentifier2;
          _os_log_impl(&_mh_execute_header, stateMachine4, OS_LOG_TYPE_DEFAULT, "Switched to watch: %@", &v25, 0xCu);
        }

        stateMachine4 = [(DPCWatchPresenceDetector *)self stateMachine];
        [stateMachine4 setIsSwitchingWatch:0];
      }

      else if (v19)
      {
        deviceIdentifier3 = [(NRDeviceMonitor *)self->_nrMonitor deviceIdentifier];
        v25 = 138412290;
        v26 = deviceIdentifier3;
        _os_log_impl(&_mh_execute_header, stateMachine4, OS_LOG_TYPE_DEFAULT, "Watch %@ connected.", &v25, 0xCu);
      }

      stateMachine5 = [(DPCWatchPresenceDetector *)self stateMachine];
      isInRSSIMode = [stateMachine5 isInRSSIMode];

      if (isInRSSIMode)
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