@interface W5StatusManager
- (BOOL)__isSnifferSupported;
- (W5BluetoothController)bluetooth;
- (W5StatusManager)init;
- (W5WiFiInterface)wifi;
- (id)__bluetooth;
- (id)__queryAWDLStatus;
- (id)__queryBluetoothStatus;
- (id)__queryDiagnosticsModes;
- (id)__queryLastHourFaultsStatus;
- (id)__queryLastHourLinkTestsStatus;
- (id)__queryLastHourRecoveriesStatus;
- (id)__queryNetworkStatus;
- (id)__queryPowerStatus;
- (id)__queryWiFiStatusIncludingScanCache:(BOOL)cache;
- (id)__wifi;
- (id)awdlStatus;
- (id)bluetoothStatus;
- (id)cachedStatusWithUUID:(id)d;
- (id)eventHistory;
- (id)networkStatus;
- (id)powerStatus;
- (id)status;
- (id)wifiStatus;
- (int64_t)__airDropDiscoverableMode;
- (void)__addEvent:(id)event;
- (void)__forceUpdateTrigger;
- (void)__setupCallbacks;
- (void)__updateStatus;
- (void)__updateStatusCoalesce;
- (void)addEvent:(id)event;
- (void)associateToNetwork:(id)network configuration:(id)configuration reply:(id)reply;
- (void)clearCachedStatusWithUUID:(id)d;
- (void)dealloc;
- (void)queryStatusAndReply:(id)reply;
- (void)scanForNetworksWithConfiguration:(id)configuration handler:(id)handler;
- (void)setLowBatteryCallback:(id)callback;
- (void)setUpdatedAWDLStatusCallback:(id)callback;
- (void)setUpdatedBluetoothCallback:(id)callback;
- (void)setUpdatedBluetoothStatusCallback:(id)callback;
- (void)setUpdatedFaultsCallback:(id)callback;
- (void)setUpdatedLinkTestsCallback:(id)callback;
- (void)setUpdatedNetworkStatusCallback:(id)callback;
- (void)setUpdatedPowerManagementCallback:(id)callback;
- (void)setUpdatedPowerSourceCallback:(id)callback;
- (void)setUpdatedPowerStatusCallback:(id)callback;
- (void)setUpdatedRecoveriesCallback:(id)callback;
- (void)setUpdatedWiFiCallback:(id)callback;
- (void)setUpdatedWiFiStatusCallback:(id)callback;
- (void)startEventMonitoring;
- (void)stopEventMonitoring;
@end

@implementation W5StatusManager

- (id)__wifi
{
  if (!self->_wifi)
  {
    v4 = [[W5WiFiInterface alloc] initWithCoreWiFiInterface:self->_corewifi];
    self->_wifi = v4;
    if (v4)
    {
      [(W5StatusManager *)self __setupCallbacks];
      if (self->_isMonitoringEvents)
      {
        [(W5StatusManager *)self startEventMonitoring];
      }
    }
  }

  return self->_wifi;
}

- (W5WiFiInterface)wifi
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_10004E784;
  v10 = sub_10004E794;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004E7A0;
  v5[3] = &unk_1000E19E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)__bluetooth
{
  if (!self->_bluetooth)
  {
    v3 = objc_alloc_init(W5BluetoothController);
    self->_bluetooth = v3;
    if ([(W5BluetoothController *)v3 isAvailable])
    {
      [(W5StatusManager *)self __setupCallbacks];
      if (self->_isMonitoringEvents)
      {
        [(W5StatusManager *)self startEventMonitoring];
      }
    }
  }

  return self->_bluetooth;
}

- (W5BluetoothController)bluetooth
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_10004E784;
  v10 = sub_10004E794;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004E944;
  v5[3] = &unk_1000E19E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (W5StatusManager)init
{
  v12.receiver = self;
  v12.super_class = W5StatusManager;
  v2 = [(W5StatusManager *)&v12 init];
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = dispatch_queue_create("com.apple.wifivelocity.status", 0);
  v2->_queue = v3;
  if (!v3)
  {
    goto LABEL_12;
  }

  dispatch_queue_set_specific(v3, &v2->_queue, 1, 0);
  v4 = objc_alloc_init(NSOperationQueue);
  v2->_concurrentQueue = v4;
  if (!v4)
  {
    goto LABEL_12;
  }

  [(NSOperationQueue *)v4 setMaxConcurrentOperationCount:-1];
  v5 = objc_alloc_init(NSMutableArray);
  v2->_eventHistory = v5;
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = [[CWFInterface alloc] initWithServiceType:1];
  v2->_corewifi = v6;
  [(CWFInterface *)v6 resume];
  v7 = objc_alloc_init(W5IOPowerManagement);
  v2->_pm = v7;
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = objc_alloc_init(W5IOPowerSource);
  v2->_ps = v8;
  if (v8 && (v9 = objc_alloc_init(NSMutableDictionary), (v2->_cachedStatusUUIDMap = v9) != 0) && ((v2->_bootArgs = [sub_100098418() copy], !+[W5FeatureAvailability diagnosticsModeEnabled](W5FeatureAvailability, "diagnosticsModeEnabled")) || (v10 = +[W5DatabaseManager sharedObject](W5DatabaseManager, "sharedObject"), (v2->_databaseManager = v10) != 0)))
  {
    v2->_diagnosticsModeManager = 0;
    [(W5StatusManager *)v2 __setupCallbacks];
  }

  else
  {
LABEL_12:

    return 0;
  }

  return v2;
}

- (void)dealloc
{
  forceUpdateTimer = self->_forceUpdateTimer;
  if (forceUpdateTimer)
  {
    dispatch_source_cancel(forceUpdateTimer);
    dispatch_release(self->_forceUpdateTimer);
  }

  coalesceUpdateTimer = self->_coalesceUpdateTimer;
  if (coalesceUpdateTimer)
  {
    dispatch_source_cancel(coalesceUpdateTimer);
    dispatch_release(self->_coalesceUpdateTimer);
  }

  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
  }

  v6.receiver = self;
  v6.super_class = W5StatusManager;
  [(W5StatusManager *)&v6 dealloc];
}

- (void)setUpdatedWiFiStatusCallback:(id)callback
{
  if (dispatch_get_specific(&self->_queue))
  {

    self->_updatedWiFiStatusCallback = [callback copy];
  }

  else
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004ECC8;
    v6[3] = &unk_1000E1C70;
    v6[4] = self;
    v6[5] = callback;
    dispatch_sync(queue, v6);
  }
}

- (void)setUpdatedAWDLStatusCallback:(id)callback
{
  if (dispatch_get_specific(&self->_queue))
  {

    self->_updatedAWDLStatusCallback = [callback copy];
  }

  else
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004EDC4;
    v6[3] = &unk_1000E1C70;
    v6[4] = self;
    v6[5] = callback;
    dispatch_sync(queue, v6);
  }
}

- (void)setUpdatedNetworkStatusCallback:(id)callback
{
  if (dispatch_get_specific(&self->_queue))
  {

    self->_updatedNetworkStatusCallback = [callback copy];
  }

  else
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004EEC0;
    v6[3] = &unk_1000E1C70;
    v6[4] = self;
    v6[5] = callback;
    dispatch_sync(queue, v6);
  }
}

- (void)setUpdatedBluetoothStatusCallback:(id)callback
{
  if (dispatch_get_specific(&self->_queue))
  {

    self->_updatedBluetoothStatusCallback = [callback copy];
  }

  else
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004EFBC;
    v6[3] = &unk_1000E1C70;
    v6[4] = self;
    v6[5] = callback;
    dispatch_sync(queue, v6);
  }
}

- (void)setUpdatedPowerStatusCallback:(id)callback
{
  if (dispatch_get_specific(&self->_queue))
  {

    self->_updatedPowerStatusCallback = [callback copy];
  }

  else
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004F0B8;
    v6[3] = &unk_1000E1C70;
    v6[4] = self;
    v6[5] = callback;
    dispatch_sync(queue, v6);
  }
}

- (void)setUpdatedWiFiCallback:(id)callback
{
  if (dispatch_get_specific(&self->_queue))
  {

    self->_updatedWiFiCallback = [callback copy];
  }

  else
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004F1B4;
    v6[3] = &unk_1000E1C70;
    v6[4] = self;
    v6[5] = callback;
    dispatch_sync(queue, v6);
  }
}

- (void)setUpdatedPowerManagementCallback:(id)callback
{
  if (dispatch_get_specific(&self->_queue))
  {

    self->_updatedPowerManagementCallback = [callback copy];
  }

  else
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004F2B0;
    v6[3] = &unk_1000E1C70;
    v6[4] = self;
    v6[5] = callback;
    dispatch_sync(queue, v6);
  }
}

- (void)setUpdatedPowerSourceCallback:(id)callback
{
  if (dispatch_get_specific(&self->_queue))
  {

    self->_updatedPowerSourceCallback = [callback copy];
  }

  else
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004F3AC;
    v6[3] = &unk_1000E1C70;
    v6[4] = self;
    v6[5] = callback;
    dispatch_sync(queue, v6);
  }
}

- (void)setLowBatteryCallback:(id)callback
{
  if (dispatch_get_specific(&self->_queue))
  {

    self->_lowBatteryCallback = [callback copy];
  }

  else
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004F4A8;
    v6[3] = &unk_1000E1C70;
    v6[4] = self;
    v6[5] = callback;
    dispatch_sync(queue, v6);
  }
}

- (void)setUpdatedBluetoothCallback:(id)callback
{
  if (dispatch_get_specific(&self->_queue))
  {

    self->_updatedBluetoothCallback = [callback copy];
  }

  else
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004F5A4;
    v6[3] = &unk_1000E1C70;
    v6[4] = self;
    v6[5] = callback;
    dispatch_sync(queue, v6);
  }
}

- (void)setUpdatedFaultsCallback:(id)callback
{
  if (dispatch_get_specific(&self->_queue))
  {

    self->_updatedFaultsCallback = [callback copy];
  }

  else
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004F6A0;
    v6[3] = &unk_1000E1C70;
    v6[4] = self;
    v6[5] = callback;
    dispatch_sync(queue, v6);
  }
}

- (void)setUpdatedLinkTestsCallback:(id)callback
{
  if (dispatch_get_specific(&self->_queue))
  {

    self->_updatedLinkTestsCallback = [callback copy];
  }

  else
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004F79C;
    v6[3] = &unk_1000E1C70;
    v6[4] = self;
    v6[5] = callback;
    dispatch_sync(queue, v6);
  }
}

- (void)setUpdatedRecoveriesCallback:(id)callback
{
  if (dispatch_get_specific(&self->_queue))
  {

    self->_updatedRecoveriesCallback = [callback copy];
  }

  else
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004F898;
    v6[3] = &unk_1000E1C70;
    v6[4] = self;
    v6[5] = callback;
    dispatch_sync(queue, v6);
  }
}

- (void)queryStatusAndReply:(id)reply
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004F964;
  v4[3] = &unk_1000E2018;
  v4[4] = self;
  v4[5] = reply;
  dispatch_async(queue, v4);
}

- (id)status
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_10004E784;
  v10 = sub_10004E794;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004FAC4;
  v5[3] = &unk_1000E19E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)wifiStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_10004E784;
  v10 = sub_10004E794;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004FC0C;
  v5[3] = &unk_1000E19E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)awdlStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_10004E784;
  v10 = sub_10004E794;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004FD54;
  v5[3] = &unk_1000E19E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)bluetoothStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_10004E784;
  v10 = sub_10004E794;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004FE98;
  v5[3] = &unk_1000E19E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)networkStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_10004E784;
  v10 = sub_10004E794;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004FFDC;
  v5[3] = &unk_1000E19E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)powerStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_10004E784;
  v10 = sub_10004E794;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100050120;
  v5[3] = &unk_1000E19E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)cachedStatusWithUUID:(id)d
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_10004E784;
  v11 = sub_10004E794;
  v12 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100050268;
  block[3] = &unk_1000E2B08;
  block[4] = d;
  block[5] = self;
  block[6] = &v7;
  dispatch_sync(queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)clearCachedStatusWithUUID:(id)d
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005036C;
  v4[3] = &unk_1000E1C98;
  v4[4] = d;
  v4[5] = self;
  dispatch_async(queue, v4);
}

- (id)eventHistory
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_10004E784;
  v10 = sub_10004E794;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000504AC;
  v5[3] = &unk_1000E19E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)startEventMonitoring
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100050574;
  block[3] = &unk_1000E1CE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)stopEventMonitoring
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100050668;
  block[3] = &unk_1000E1CE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)__forceUpdateTrigger
{
  if (!self->_forceUpdateTimer)
  {
    handler[9] = v2;
    handler[10] = v3;
    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
    self->_forceUpdateTimer = v5;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000507E8;
    handler[3] = &unk_1000E1CE8;
    handler[4] = self;
    dispatch_source_set_event_handler(v5, handler);
    forceUpdateTimer = self->_forceUpdateTimer;
    v7 = dispatch_time(0, 10000000000);
    dispatch_source_set_timer(forceUpdateTimer, v7, 0x2540BE400uLL, 0);
    dispatch_resume(self->_forceUpdateTimer);
  }
}

- (void)__updateStatusCoalesce
{
  if (!self->_coalesceUpdateTimer)
  {
    handler[7] = v2;
    handler[8] = v3;
    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
    self->_coalesceUpdateTimer = v5;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000509B4;
    handler[3] = &unk_1000E1CE8;
    handler[4] = self;
    dispatch_source_set_event_handler(v5, handler);
    coalesceUpdateTimer = self->_coalesceUpdateTimer;
    v7 = dispatch_time(0, 5000000000);
    dispatch_source_set_timer(coalesceUpdateTimer, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(self->_coalesceUpdateTimer);
  }
}

- (int64_t)__airDropDiscoverableMode
{
  result = [+[NSFileManager defaultManager](NSFileManager contentsAtPath:"contentsAtPath:", @"/var/mobile/Library/Preferences/com.apple.sharingd.plist"];
  if (result)
  {
    v3 = [+[NSPropertyListSerialization propertyListWithData:options:format:error:](NSPropertyListSerialization propertyListWithData:result options:0 format:0 error:{0), "objectForKey:", @"DiscoverableMode"}];
    if ([v3 isEqualToString:@"Contacts Only"])
    {
      return 1;
    }

    else if ([v3 isEqualToString:@"Everyone"])
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)__isSnifferSupported
{
  __wifi = [(W5StatusManager *)self __wifi];
  if (__wifi)
  {

    LOBYTE(__wifi) = [__wifi isSnifferSupported];
  }

  return __wifi;
}

- (id)__queryPowerStatus
{
  v3 = objc_alloc_init(W5PowerStatus);
  [v3 setPowerSourceType:{-[W5IOPowerSource powerSourceType](self->_ps, "powerSourceType")}];
  [v3 setBatteryWarningLevel:{-[W5IOPowerSource batteryWarningLevel](self->_ps, "batteryWarningLevel")}];
  [(W5IOPowerSource *)self->_ps internalBatteryLevel];
  [v3 setInternalBatteryLevel:?];
  [v3 setPowerStateCaps:{-[W5IOPowerManagement caps](self->_pm, "caps")}];
  return v3;
}

- (id)__queryAWDLStatus
{
  v3 = objc_alloc_init(W5AWDLStatus);
  __wifi = [(W5StatusManager *)self __wifi];
  aWDL = [(CWFInterface *)self->_corewifi AWDL];
  [v3 setMacAddress:{objc_msgSend(aWDL, "MACAddress")}];
  [v3 setHardwareMACAddress:{objc_msgSend(aWDL, "hardwareMACAddress")}];
  [v3 setInterfaceName:{objc_msgSend(aWDL, "interfaceName")}];
  [v3 setPower:{objc_msgSend(aWDL, "powerOn")}];
  [v3 setIpv6Addresses:{objc_msgSend(aWDL, "IPv6Addresses")}];
  [v3 setIsAWDLRealTimeMode:{objc_msgSend(__wifi, "isAWDLRealTimeMode")}];
  [v3 setAwdlSyncEnabled:{-[CWFInterface AWDLSyncEnabled](self->_corewifi, "AWDLSyncEnabled")}];
  [v3 setAwdlSyncState:{-[CWFInterface AWDLSyncState](self->_corewifi, "AWDLSyncState")}];
  [v3 setAwdlSyncChannelSequence:{-[CWFInterface AWDLSyncChannelSequence](self->_corewifi, "AWDLSyncChannelSequence")}];
  [v3 setAwdlStrategy:{-[CWFInterface AWDLStrategy](self->_corewifi, "AWDLStrategy")}];
  [v3 setAwdlElectionParameters:{-[CWFInterface AWDLElectionParameters](self->_corewifi, "AWDLElectionParameters")}];
  [v3 setAwdlMasterChannel:{-[CWFInterface AWDLMasterChannel](self->_corewifi, "AWDLMasterChannel")}];
  [v3 setAwdlSecondaryMasterChannel:{-[CWFInterface AWDLSecondaryMasterChannel](self->_corewifi, "AWDLSecondaryMasterChannel")}];
  [v3 setAwdlOpMode:{-[CWFInterface AWDLOpMode](self->_corewifi, "AWDLOpMode")}];
  [v3 setAwdlSyncParameters:{-[CWFInterface AWDLSyncParameters](self->_corewifi, "AWDLSyncParameters")}];
  [v3 setAwdlSidecarDiagnostics:{-[CWFInterface AWDLSidecarDiagnostics](self->_corewifi, "AWDLSidecarDiagnostics")}];
  [v3 setAirDropDiscoverableMode:{-[W5StatusManager __airDropDiscoverableMode](self, "__airDropDiscoverableMode")}];
  return v3;
}

- (id)__queryBluetoothStatus
{
  v3 = objc_alloc_init(W5BluetoothStatus);
  __bluetooth = [(W5StatusManager *)self __bluetooth];
  [v3 setAddress:{objc_msgSend(__bluetooth, "address")}];
  [v3 setPowerOn:{objc_msgSend(__bluetooth, "powerOn")}];
  [v3 setIsDiscoverable:{objc_msgSend(__bluetooth, "isDiscoverable")}];
  [v3 setIsConnectable:{objc_msgSend(__bluetooth, "isConnectable")}];
  [v3 setIsScanning:{objc_msgSend(__bluetooth, "isScanning")}];
  [v3 setDevices:{objc_msgSend(__bluetooth, "devices")}];
  return v3;
}

- (id)__queryNetworkStatus
{
  v3 = objc_alloc_init(W5NetworkStatus);
  [v3 setPrimaryIPv4InterfaceName:{-[CWFInterface globalIPv4InterfaceName](self->_corewifi, "globalIPv4InterfaceName")}];
  [v3 setPrimaryIPv4ServiceName:{-[CWFInterface globalIPv4NetworkServiceName](self->_corewifi, "globalIPv4NetworkServiceName")}];
  [v3 setPrimaryIPv4ServiceID:{-[CWFInterface globalIPv4NetworkServiceID](self->_corewifi, "globalIPv4NetworkServiceID")}];
  [v3 setPrimaryIPv6InterfaceName:{-[CWFInterface globalIPv6InterfaceName](self->_corewifi, "globalIPv6InterfaceName")}];
  [v3 setPrimaryIPv6ServiceName:{-[CWFInterface globalIPv6NetworkServiceName](self->_corewifi, "globalIPv6NetworkServiceName")}];
  [v3 setPrimaryIPv6ServiceID:{-[CWFInterface globalIPv6NetworkServiceID](self->_corewifi, "globalIPv6NetworkServiceID")}];
  [v3 setPrimaryIPv4Addresses:{-[CWFInterface globalIPv4Addresses](self->_corewifi, "globalIPv4Addresses")}];
  [v3 setPrimaryIPv6Addresses:{-[CWFInterface globalIPv6Addresses](self->_corewifi, "globalIPv6Addresses")}];
  [v3 setPrimaryIPv4Router:{-[CWFInterface globalIPv4RouterAddress](self->_corewifi, "globalIPv4RouterAddress")}];
  [v3 setPrimaryIPv4Router:{-[CWFInterface globalIPv6RouterAddress](self->_corewifi, "globalIPv6RouterAddress")}];
  [v3 setPrimaryDNSAddresses:{-[CWFInterface globalDNSServerAddresses](self->_corewifi, "globalDNSServerAddresses")}];
  [v3 setIsAppleReachable:{-[CWFInterface reachabilityFlags](self->_corewifi, "reachabilityFlags")}];
  return v3;
}

- (id)__queryDiagnosticsModes
{
  v3 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(NSArray *)[(W5DiagnosticsModeManager *)self->_diagnosticsModeManager allDiagnostics] filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"SELF.state >= %d AND SELF.state <= %d", 3, 10]];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 timestampFor:3];
        if (v10 && [(NSDateComponents *)[+[NSCalendar currentCalendar](NSCalendar components:"components:fromDate:toDate:options:" fromDate:16 toDate:v10 options:+[NSDate date](NSDate day:0]]
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)__queryWiFiStatusIncludingScanCache:(BOOL)cache
{
  cacheCopy = cache;
  v5 = objc_alloc_init(W5WiFiStatus);
  __wifi = [(W5StatusManager *)self __wifi];
  [v5 setMacAddress:{-[CWFInterface MACAddress](self->_corewifi, "MACAddress")}];
  [v5 setHardwareMACAddress:{-[CWFInterface hardwareMACAddress](self->_corewifi, "hardwareMACAddress")}];
  [v5 setCapabilities:{-[CWFInterface capabilities](self->_corewifi, "capabilities")}];
  [v5 setInterfaceName:{-[CWFInterface interfaceName](self->_corewifi, "interfaceName")}];
  [v5 setPowerOn:{-[CWFInterface powerOn](self->_corewifi, "powerOn")}];
  [v5 setPower:{-[CWFInterface powerState](self->_corewifi, "powerState")}];
  [v5 setOpMode:{-[CWFInterface opMode](self->_corewifi, "opMode")}];
  [v5 setSsid:{-[CWFInterface SSID](self->_corewifi, "SSID")}];
  [v5 setEapolControlMode:{-[CWFInterface EAP8021XControlMode](self->_corewifi, "EAP8021XControlMode")}];
  [v5 setEapolSupplicantState:{-[CWFInterface EAP8021XSupplicantState](self->_corewifi, "EAP8021XSupplicantState")}];
  [v5 setSsidString:{-[CWFInterface networkName](self->_corewifi, "networkName")}];
  [v5 setBssid:{-[CWFInterface BSSID](self->_corewifi, "BSSID")}];
  [v5 setSecurity:{objc_msgSend(__wifi, "security")}];
  [(CWFInterface *)self->_corewifi txRate];
  [v5 setTxRate:?];
  [v5 setRssi:{-[CWFInterface RSSI](self->_corewifi, "RSSI")}];
  [v5 setCca:{-[CWFInterface CCA](self->_corewifi, "CCA")}];
  [v5 setNoise:{-[CWFInterface noise](self->_corewifi, "noise")}];
  [v5 setPhyMode:{-[CWFInterface PHYMode](self->_corewifi, "PHYMode")}];
  [v5 setChannel:{objc_msgSend(__wifi, "channel")}];
  [v5 setLinkQualityUpdates:{objc_msgSend(__wifi, "linkQualityUpdates")}];
  [v5 setSupportedChannels:{objc_msgSend(__wifi, "supportedChannels")}];
  [v5 setCountryCode:{-[CWFInterface countryCode](self->_corewifi, "countryCode")}];
  [v5 setMcsIndex:{-[CWFInterface MCSIndex](self->_corewifi, "MCSIndex")}];
  [v5 setGuardInterval:{-[CWFInterface guardInterval](self->_corewifi, "guardInterval")}];
  [v5 setNumberOfSpacialStreams:{-[CWFInterface numberOfSpatialStreams](self->_corewifi, "numberOfSpatialStreams")}];
  [v5 setNetworkServiceID:{-[CWFInterface networkServiceID](self->_corewifi, "networkServiceID")}];
  [v5 setIpv4ConfigMethod:{objc_msgSend(__wifi, "ipv4ConfigMethod")}];
  [v5 setIpv6ConfigMethod:{objc_msgSend(__wifi, "ipv6ConfigMethod")}];
  [v5 setIpv4Addresses:{-[CWFInterface IPv4Addresses](self->_corewifi, "IPv4Addresses")}];
  [v5 setIpv4RouterAddress:{-[CWFInterface IPv4RouterAddress](self->_corewifi, "IPv4RouterAddress")}];
  [v5 setIpv6Addresses:{-[CWFInterface IPv6Addresses](self->_corewifi, "IPv6Addresses")}];
  [v5 setIpv6RouterAddress:{-[CWFInterface IPv6RouterAddress](self->_corewifi, "IPv6RouterAddress")}];
  [v5 setDnsAddresses:{-[CWFInterface DNSServerAddresses](self->_corewifi, "DNSServerAddresses")}];
  [v5 setLastJoinedScanResult:{objc_msgSend(__wifi, "currentNetwork")}];
  [v5 setLastJoinedPreferredNetwork:{objc_msgSend(__wifi, "currentPreferredNetwork")}];
  [v5 setSmartCCADesenseSupported:{objc_msgSend(__wifi, "smartCCADesenseSupported")}];
  [v5 setSmartCCADesenseUSBPresence:{objc_msgSend(__wifi, "smartCCADesenseUSBPresence")}];
  [v5 setIsSnifferSupported:{-[W5StatusManager __isSnifferSupported](self, "__isSnifferSupported")}];
  if (cacheCopy)
  {
    [v5 setCachedScanResults:{objc_msgSend(__wifi, "scanCache:", 1)}];
  }

  return v5;
}

- (id)__queryLastHourFaultsStatus
{
  v2 = [[W5SummaryFaults alloc] initWithSummaryFaults:{-[W5DatabaseManager fetchLastHourFaults](self->_databaseManager, "fetchLastHourFaults")}];

  return v2;
}

- (id)__queryLastHourLinkTestsStatus
{
  v2 = [[W5SummaryLinkTests alloc] initWithSummaryLinkTests:{-[W5DatabaseManager fetchLastHourLinkTests](self->_databaseManager, "fetchLastHourLinkTests")}];

  return v2;
}

- (id)__queryLastHourRecoveriesStatus
{
  v2 = [[W5SummaryRecoveries alloc] initWithSummaryRecoveries:{-[W5DatabaseManager fetchLastHourRecoveries](self->_databaseManager, "fetchLastHourRecoveries")}];

  return v2;
}

- (void)__updateStatus
{
  v3 = [(W5StatusManager *)self __queryStatusIncludingWiFiScanCache:0];
  if (([(W5Status *)self->_updateStatus isEqual:v3]& 1) == 0)
  {
    if (([-[W5Status wifi](self->_updateStatus "wifi")] & 1) == 0 && self->_updatedWiFiStatusCallback)
    {
      v4 = sub_100098A04();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v50 = 136315650;
        v51 = "[W5StatusManager __updateStatus]";
        v52 = 2080;
        v53 = "W5StatusManager.m";
        v54 = 1024;
        v55 = 860;
        LODWORD(v27) = 28;
        v20 = &v50;
        _os_log_send_and_compose_impl();
      }

      v5 = objc_alloc_init(W5Event);
      [v5 setEventID:1];
      +[NSDate timeIntervalSinceReferenceDate];
      [v5 setTimestamp:?];
      v48 = @"WiFiStatus";
      wifi = [v3 wifi];
      [v5 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &wifi, &v48, 1)}];
      (*(self->_updatedWiFiStatusCallback + 2))(self->_updatedWiFiStatusCallback, v5);
    }

    if (([-[W5Status awdl](self->_updateStatus awdl] & 1) == 0 && self->_updatedAWDLStatusCallback)
    {
      v6 = sub_100098A04();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v50 = 136315650;
        v51 = "[W5StatusManager __updateStatus]";
        v52 = 2080;
        v53 = "W5StatusManager.m";
        v54 = 1024;
        v55 = 872;
        LODWORD(v28) = 28;
        v21 = &v50;
        _os_log_send_and_compose_impl();
      }

      v7 = objc_alloc_init(W5Event);
      [v7 setEventID:2];
      +[NSDate timeIntervalSinceReferenceDate];
      [v7 setTimestamp:?];
      v46 = @"AWDLStatus";
      awdl = [v3 awdl];
      [v7 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &awdl, &v46, 1)}];
      (*(self->_updatedAWDLStatusCallback + 2))(self->_updatedAWDLStatusCallback, v7);
    }

    if (([-[W5Status network](self->_updateStatus network] & 1) == 0 && self->_updatedNetworkStatusCallback)
    {
      v8 = sub_100098A04();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v50 = 136315650;
        v51 = "[W5StatusManager __updateStatus]";
        v52 = 2080;
        v53 = "W5StatusManager.m";
        v54 = 1024;
        v55 = 884;
        LODWORD(v29) = 28;
        v22 = &v50;
        _os_log_send_and_compose_impl();
      }

      v9 = objc_alloc_init(W5Event);
      [v9 setEventID:4];
      +[NSDate timeIntervalSinceReferenceDate];
      [v9 setTimestamp:?];
      v44 = @"NetworkStatus";
      network = [v3 network];
      [v9 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &network, &v44, 1)}];
      (*(self->_updatedNetworkStatusCallback + 2))(self->_updatedNetworkStatusCallback, v9);
    }

    if (([-[W5Status bluetooth](self->_updateStatus bluetooth] & 1) == 0 && self->_updatedBluetoothStatusCallback)
    {
      v10 = sub_100098A04();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v50 = 136315650;
        v51 = "[W5StatusManager __updateStatus]";
        v52 = 2080;
        v53 = "W5StatusManager.m";
        v54 = 1024;
        v55 = 896;
        LODWORD(v30) = 28;
        v23 = &v50;
        _os_log_send_and_compose_impl();
      }

      v11 = objc_alloc_init(W5Event);
      [v11 setEventID:3];
      +[NSDate timeIntervalSinceReferenceDate];
      [v11 setTimestamp:?];
      v42 = @"BluetoothStatus";
      bluetooth = [v3 bluetooth];
      [v11 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &bluetooth, &v42, 1)}];
      (*(self->_updatedBluetoothStatusCallback + 2))(self->_updatedBluetoothStatusCallback, v11);
    }

    if (([-[W5Status power](self->_updateStatus power] & 1) == 0 && self->_updatedPowerStatusCallback)
    {
      v12 = sub_100098A04();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v50 = 136315650;
        v51 = "[W5StatusManager __updateStatus]";
        v52 = 2080;
        v53 = "W5StatusManager.m";
        v54 = 1024;
        v55 = 908;
        LODWORD(v31) = 28;
        v24 = &v50;
        _os_log_send_and_compose_impl();
      }

      v13 = objc_alloc_init(W5Event);
      [v13 setEventID:5];
      +[NSDate timeIntervalSinceReferenceDate];
      [v13 setTimestamp:?];
      v40 = @"PowerStatus";
      power = [v3 power];
      [v13 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &power, &v40, 1)}];
      (*(self->_updatedPowerStatusCallback + 2))(self->_updatedPowerStatusCallback, v13);
    }

    if (([-[W5Status lastHrFaults](self->_updateStatus lastHrFaults] & 1) == 0 && self->_updatedFaultsCallback)
    {
      v14 = sub_100098A04();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v50 = 136315650;
        v51 = "[W5StatusManager __updateStatus]";
        v52 = 2080;
        v53 = "W5StatusManager.m";
        v54 = 1024;
        v55 = 920;
        LODWORD(v32) = 28;
        v25 = &v50;
        _os_log_send_and_compose_impl();
      }

      v15 = objc_alloc_init(W5Event);
      [v15 setEventID:39];
      +[NSDate timeIntervalSinceReferenceDate];
      [v15 setTimestamp:?];
      v38 = @"LastHourFaultsStatus";
      lastHrFaults = [v3 lastHrFaults];
      [v15 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &lastHrFaults, &v38, 1)}];
      (*(self->_updatedFaultsCallback + 2))(self->_updatedFaultsCallback, v15);
    }

    if (([-[W5Status lastHrLinkTests](self->_updateStatus lastHrLinkTests] & 1) == 0 && self->_updatedLinkTestsCallback)
    {
      v16 = sub_100098A04();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v50 = 136315650;
        v51 = "[W5StatusManager __updateStatus]";
        v52 = 2080;
        v53 = "W5StatusManager.m";
        v54 = 1024;
        v55 = 932;
        LODWORD(v33) = 28;
        v26 = &v50;
        _os_log_send_and_compose_impl();
      }

      v17 = objc_alloc_init(W5Event);
      [v17 setEventID:40];
      +[NSDate timeIntervalSinceReferenceDate];
      [v17 setTimestamp:?];
      v36 = @"LastHourLinkTestsStatus";
      lastHrLinkTests = [v3 lastHrLinkTests];
      [v17 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &lastHrLinkTests, &v36, 1)}];
      (*(self->_updatedLinkTestsCallback + 2))(self->_updatedLinkTestsCallback, v17);
    }

    if (([-[W5Status lastHrRecoveries](self->_updateStatus lastHrRecoveries] & 1) == 0 && self->_updatedRecoveriesCallback)
    {
      v18 = sub_100098A04();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v50 = 136315650;
        v51 = "[W5StatusManager __updateStatus]";
        v52 = 2080;
        v53 = "W5StatusManager.m";
        v54 = 1024;
        v55 = 944;
        _os_log_send_and_compose_impl();
      }

      v19 = objc_alloc_init(W5Event);
      [v19 setEventID:41];
      +[NSDate timeIntervalSinceReferenceDate];
      [v19 setTimestamp:?];
      v34 = @"LastHourRecoveriesStatus";
      lastHrRecoveries = [v3 lastHrRecoveries];
      [v19 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &lastHrRecoveries, &v34, 1)}];
      (*(self->_updatedRecoveriesCallback + 2))(self->_updatedRecoveriesCallback, v19);
    }

    self->_updateStatus = [v3 copy];
  }
}

- (void)scanForNetworksWithConfiguration:(id)configuration handler:(id)handler
{
  v6 = objc_alloc_init(CWFScanParameters);
  [v6 setChannels:0];
  [v6 setAcceptableCacheAge:300000];
  __wifi = [(W5StatusManager *)self __wifi];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000521A8;
  block[3] = &unk_1000E1CC0;
  block[4] = v6;
  block[5] = __wifi;
  block[6] = handler;
  dispatch_async(queue, block);
}

- (void)associateToNetwork:(id)network configuration:(id)configuration reply:(id)reply
{
  v9 = objc_alloc_init(CWFChannel);
  [v9 setChannel:{objc_msgSend(objc_msgSend(network, "channel"), "channel")}];
  [v9 setFlags:{objc_msgSend(objc_msgSend(network, "channel"), "flags")}];
  v10 = objc_alloc_init(CWFScanParameters);
  [v10 setChannels:{+[NSArray arrayWithObject:](NSArray, "arrayWithObject:", v9)}];
  [v10 setSSID:{objc_msgSend(network, "ssidString")}];
  [v10 setAcceptableCacheAge:0];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100052408;
  block[3] = &unk_1000E2220;
  block[4] = v10;
  block[5] = self;
  block[6] = network;
  block[7] = configuration;
  block[8] = reply;
  dispatch_async(queue, block);
}

- (void)__addEvent:(id)event
{
  [(NSMutableArray *)self->_eventHistory addObject:event];
  if ([(NSMutableArray *)self->_eventHistory count]>= 0x65)
  {
    eventHistory = self->_eventHistory;

    [(NSMutableArray *)eventHistory removeObjectAtIndex:0];
  }
}

- (void)addEvent:(id)event
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100052A7C;
  v4[3] = &unk_1000E1C98;
  v4[4] = self;
  v4[5] = event;
  dispatch_async(queue, v4);
}

- (void)__setupCallbacks
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100052D28;
  v10[3] = &unk_1000E2B30;
  v10[4] = self;
  [(W5WiFiInterface *)self->_wifi setUpdatedWiFiCallback:v10];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100052E04;
  v9[3] = &unk_1000E2B30;
  v9[4] = self;
  [(W5BluetoothController *)self->_bluetooth setUpdatedBluetoothCallback:v9];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100052EE0;
  v8[3] = &unk_1000E2B30;
  v8[4] = self;
  [(W5IOPowerManagement *)self->_pm setUpdatedPowerManagementCallback:v8];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100052FBC;
  v7[3] = &unk_1000E2B30;
  v7[4] = self;
  [(W5IOPowerSource *)self->_ps setUpdatedPowerSourceCallback:v7];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100053098;
  v6[3] = &unk_1000E2B30;
  v6[4] = self;
  [(W5IOPowerSource *)self->_ps setLowBatteryCallback:v6];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100053174;
  v5[3] = &unk_1000E2B30;
  v5[4] = self;
  [(W5DatabaseManager *)self->_databaseManager setUpdatedFaultsCallback:v5];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100053250;
  v4[3] = &unk_1000E2B30;
  v4[4] = self;
  [(W5DatabaseManager *)self->_databaseManager setUpdatedLinkTestsCallback:v4];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10005332C;
  v3[3] = &unk_1000E2B30;
  v3[4] = self;
  [(W5DatabaseManager *)self->_databaseManager setUpdatedRecoveriesCallback:v3];
}

@end