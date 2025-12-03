@interface _DASSystemConditionsRecorder
+ (id)sharedInstance;
- (_DASSystemConditionsRecorder)init;
- (void)recordBatteryStatus;
- (void)recordForKeyPaths:(id)paths;
- (void)recordMotionStatus;
- (void)recordNetworkStatus;
- (void)recordPowerManagementStatus;
@end

@implementation _DASSystemConditionsRecorder

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000617B4;
  block[3] = &unk_1001B54A0;
  block[4] = self;
  if (qword_10020B2E0 != -1)
  {
    dispatch_once(&qword_10020B2E0, block);
  }

  v2 = qword_10020B2D8;

  return v2;
}

- (void)recordBatteryStatus
{
  context = self->_context;
  v4 = +[_CDContextQueries keyPathForBatteryStateDataDictionary];
  v22 = [(_CDContext *)context objectForKeyedSubscript:v4];

  v5 = +[NSMutableDictionary dictionary];
  v6 = self->_context;
  v7 = +[_CDContextQueries keyPathForBatteryLevel];
  v8 = [(_CDContext *)v6 objectForKeyedSubscript:v7];
  [v5 setObject:v8 forKeyedSubscript:@"BatteryLevel"];

  v9 = self->_context;
  v10 = +[_CDContextQueries keyPathForPluginStatus];
  v11 = [(_CDContext *)v9 objectForKeyedSubscript:v10];
  [v5 setObject:v11 forKeyedSubscript:@"IsPluggedIn"];

  v12 = self->_context;
  v13 = +[_CDContextQueries keyPathForLowPowerModeStatus];
  v14 = [(_CDContext *)v12 objectForKeyedSubscript:v13];
  [v5 setObject:v14 forKeyedSubscript:@"LowPowerMode"];

  v15 = +[_CDContextQueries batteryAdapterIsWirelessKey];
  v16 = [v22 objectForKeyedSubscript:v15];
  [v5 setObject:v16 forKeyedSubscript:@"IsWireless"];

  v17 = +[_CDContextQueries batteryIsChargingKey];
  v18 = [v22 objectForKeyedSubscript:v17];
  [v5 setObject:v18 forKeyedSubscript:@"IsCharging"];

  v19 = +[_CDContextQueries batteryAdapterTypeKey];
  v20 = [v22 objectForKeyedSubscript:v19];
  [v5 setObject:v20 forKeyedSubscript:@"AdapterType"];

  v21 = +[_DASPPSDataManager sharedInstance];
  [v21 sendDataToPPS:v5 subsystem:@"BackgroundProcessing" category:@"SystemConditionsBattery"];
}

- (void)recordPowerManagementStatus
{
  v26 = +[NSMutableDictionary dictionary];
  v3 = +[_DASDeviceActivityPolicy policyInstance];
  deviceWarm = [v3 deviceWarm];

  if (deviceWarm)
  {
    [v26 setObject:&off_1001C9A30 forKeyedSubscript:@"ThermalPressure"];
  }

  else
  {
    context = self->_context;
    v6 = +[_CDContextQueries keyPathForThermalPressureLevel];
    v7 = [(_CDContext *)context objectForKeyedSubscript:v6];
    [v26 setObject:v7 forKeyedSubscript:@"ThermalPressure"];
  }

  v8 = self->_context;
  v9 = +[_CDContextQueries keyPathForCPUUsageLevel];
  v10 = [(_CDContext *)v8 objectForKeyedSubscript:v9];
  [v26 setObject:v10 forKeyedSubscript:@"CPUPressure"];

  v11 = self->_context;
  v12 = +[_CDContextQueries keyPathForInUseStatus];
  v13 = [(_CDContext *)v11 objectForKeyedSubscript:v12];
  [v26 setObject:v13 forKeyedSubscript:@"UserActivityStatus"];

  v14 = self->_context;
  v15 = [_CDContextualKeyPath ephemeralKeyPathWithKey:@"/system/peakPowerPressureLevel"];
  v16 = [(_CDContext *)v14 objectForKeyedSubscript:v15];
  [v26 setObject:v16 forKeyedSubscript:@"PeakPowerPressure"];

  v17 = +[_DASDaemon sharedInstance];
  v18 = [_DASSmartPowerNapMonitor sharedMonitorWithDaemon:v17];

  v19 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v18 inSmartPowerNap]);
  [v26 setObject:v19 forKeyedSubscript:@"SmartPowerNap"];

  v20 = self->_context;
  v21 = +[_CDContextQueries keyPathForEnergyBudgetRemainingStatus];
  v22 = [(_CDContext *)v20 objectForKeyedSubscript:v21];
  [v26 setObject:v22 forKeyedSubscript:@"EnergyBudget"];

  v23 = +[_DASGridDataManager sharedInstance];
  v24 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v23 isHighCarbonImpactWindow]);
  [v26 setObject:v24 forKeyedSubscript:@"CarbonImpactWindow"];

  v25 = +[_DASPPSDataManager sharedInstance];
  [v25 sendDataToPPS:v26 subsystem:@"BackgroundProcessing" category:@"SystemConditionsPowerManagement"];
}

- (_DASSystemConditionsRecorder)init
{
  v12.receiver = self;
  v12.super_class = _DASSystemConditionsRecorder;
  v2 = [(_DASSystemConditionsRecorder *)&v12 init];
  if (v2)
  {
    v3 = +[_CDClientContext userContext];
    context = v2->_context;
    v2->_context = v3;

    v5 = os_log_create("com.apple.duetactivityscheduler", "systemconditionrecorder");
    log = v2->_log;
    v2->_log = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_BACKGROUND, 0);
    v9 = dispatch_queue_create("com.apple.duetactivityscheduler.systemConditionsRecorder", v8);
    queue = v2->_queue;
    v2->_queue = v9;
  }

  return v2;
}

- (void)recordNetworkStatus
{
  v13 = +[NSMutableDictionary dictionary];
  v3 = [_CDNetworkContext wifiQuality:self->_context];
  v4 = [_CDNetworkContext cellQuality:self->_context];
  v5 = [NSNumber numberWithInteger:v3];
  [v13 setObject:v5 forKeyedSubscript:@"WifiQuality"];

  v6 = [NSNumber numberWithInteger:v4];
  [v13 setObject:v6 forKeyedSubscript:@"CellQuality"];

  context = self->_context;
  v8 = +[_CDContextQueries keyPathForNetworkingBudgetRemainingStatus];
  v9 = [(_CDContext *)context objectForKeyedSubscript:v8];
  [v13 setObject:v9 forKeyedSubscript:@"DataBudget"];

  v10 = +[_DASInternetSharingPolicy policyInstance];
  v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 enabled]);
  [v13 setObject:v11 forKeyedSubscript:@"InternetSharingOn"];

  v12 = +[_DASPPSDataManager sharedInstance];
  [v12 sendDataToPPS:v13 subsystem:@"BackgroundProcessing" category:@"SystemConditionsNetwork"];
}

- (void)recordMotionStatus
{
  v23 = +[NSMutableDictionary dictionary];
  context = self->_context;
  v4 = +[_CDContextQueries keyPathForMotionState];
  v5 = [(_CDContext *)context objectForKeyedSubscript:v4];
  integerValue = [v5 integerValue];

  v7 = self->_context;
  v8 = +[_CDContextQueries keyPathForCallInProgressStatus];
  v9 = [(_CDContext *)v7 objectForKeyedSubscript:v8];
  LOBYTE(v7) = [v9 BOOLValue];

  v10 = self->_context;
  v11 = +[_CDContextQueries keyPathForCarplayConnectedStatus];
  v12 = [(_CDContext *)v10 objectForKeyedSubscript:v11];
  bOOLValue = [v12 BOOLValue];

  v14 = self->_context;
  v15 = [_CDContextualKeyPath ephemeralKeyPathWithKey:@"/car/isConnected"];
  v16 = [(_CDContext *)v14 objectForKeyedSubscript:v15];
  bOOLValue2 = [v16 BOOLValue];

  v18 = self->_context;
  v19 = [_CDContextualKeyPath ephemeralKeyPathWithKey:@"/maps/navigationInProgress"];
  v20 = [(_CDContext *)v18 objectForKeyedSubscript:v19];
  bOOLValue3 = [v20 BOOLValue];

  if ((v7 & 1) != 0 || (bOOLValue & 1) != 0 || (bOOLValue2 & 1) != 0 || (bOOLValue3 & 1) != 0 || integerValue != _DASMotionStateAny && integerValue != _DASMotionStateStationary)
  {
    [v23 setObject:&__kCFBooleanTrue forKeyedSubscript:@"InUseOrMotion"];
  }

  [v23 setObject:&__kCFBooleanFalse forKeyedSubscript:@"InUseOrMotion"];
  v22 = +[_DASPPSDataManager sharedInstance];
  [v22 sendDataToPPS:v23 subsystem:@"BackgroundProcessing" category:@"SystemConditionsInUseOrMotion"];
}

- (void)recordForKeyPaths:(id)paths
{
  pathsCopy = paths;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100061D34;
  v7[3] = &unk_1001B56E0;
  v8 = pathsCopy;
  selfCopy = self;
  v6 = pathsCopy;
  dispatch_sync(queue, v7);
}

@end