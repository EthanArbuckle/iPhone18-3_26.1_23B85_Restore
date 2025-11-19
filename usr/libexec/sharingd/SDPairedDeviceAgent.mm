@interface SDPairedDeviceAgent
+ (id)sharedAgent;
- (BOOL)_companionLinkConnected;
- (BOOL)_idsHasDefaultDevice;
- (SDPairedDeviceAgent)init;
- (SFPowerSource)powerSource;
- (id)_idsActiveDevice;
- (id)_messageFromPowerSource:(id)a3;
- (id)_queueWithFallbackQOS;
- (void)_activate;
- (void)_companionLinkDevicesChanged;
- (void)_companionLinkDisable;
- (void)_companionLinkEnable;
- (void)_disablePowerStateMonitor;
- (void)_idsEnsureCoalescersStarted;
- (void)_idsEnsureCoalescersStopped;
- (void)_idsEnsureSynced;
- (void)_idsSendStateUpdate:(id)a3 asWaking:(BOOL)a4;
- (void)_idsTimerInfoFired;
- (void)_idsTimerInfoInvalidate;
- (void)_idsTimerInfoRestart;
- (void)_idsTriggerSyncForAnimation:(BOOL)a3;
- (void)_idsUpdateConnectedState;
- (void)_invalidate;
- (void)_lockStateChanged:(id)a3;
- (void)_lockStateHandleMessage:(id)a3;
- (void)_lockStateUpdate:(int)a3;
- (void)_lowPowerModeChanged;
- (void)_messageHandleAllUpdate:(id)a3;
- (void)_messageHandleDashboardEntry:(id)a3;
- (void)_messageHandleIncomingData:(id)a3;
- (void)_messageHandlePowerSourceUpdate:(id)a3;
- (void)_messageIDAdd:(id)a3;
- (void)_messageIDRemove:(id)a3;
- (void)_nanoRegistryRegisterChangesForDevice:(id)a3;
- (void)_nanoRegistryUnregisterChanges;
- (void)_postPowerStatusNotificationForPowerSource:(id)a3;
- (void)_powerSourceChanged:(id)a3;
- (void)_powerSourceLost:(id)a3;
- (void)_powerSourceUpdatePairedDeviceInfo:(id)a3;
- (void)_setupLockStateMonitor;
- (void)_setupPowerSourceMonitor;
- (void)_setupWristStateMonitor;
- (void)_systemStateRegisterObservers;
- (void)_systemStateUnregisterObservers;
- (void)_testingOnCharger;
- (void)_testingRegisterNotifications;
- (void)_wristStateChanged;
- (void)_wristStateHandleMessage:(id)a3;
- (void)_wristStateUpdate:(int64_t)a3;
- (void)activate;
- (void)connectionEstablished:(id)a3;
- (void)connectionInvalidated:(id)a3;
- (void)initialViewControllerDidAppear;
- (void)initialViewControllerDidDisappear;
- (void)invalidate;
- (void)lowPowerModeChanged:(id)a3;
- (void)sendAnimationDate:(id)a3;
- (void)sendDashboardEntryWithName:(id)a3 dict:(id)a4;
- (void)sendDismissUIWithReason:(int64_t)a3;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8;
- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 connectedDevicesChanged:(id)a4;
- (void)service:(id)a3 devicesChanged:(id)a4;
- (void)service:(id)a3 nearbyDevicesChanged:(id)a4;
- (void)triggerChargingUIWithDismissHandler:(id)a3;
- (void)wristStateChanged:(id)a3;
@end

@implementation SDPairedDeviceAgent

+ (id)sharedAgent
{
  if (qword_100989A48 != -1)
  {
    sub_10001DB8C();
  }

  v3 = qword_100989A50;

  return v3;
}

- (SFPowerSource)powerSource
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_powerSource;
  objc_sync_exit(v2);

  return v3;
}

- (SDPairedDeviceAgent)init
{
  v10.receiver = self;
  v10.super_class = SDPairedDeviceAgent;
  v2 = [(SDXPCDaemon *)&v10 init];
  if (v2)
  {
    v3 = +[SDNearbyAgent sharedNearbyAgent];
    v4 = [v3 sharedNearbyPipe];
    blePipe = v2->_blePipe;
    v2->_blePipe = v4;

    v6 = [(SDPairedDeviceAgent *)v2 _queueWithFallbackQOS];
    [(SDXPCDaemon *)v2 setDispatchQueue:v6];

    v7 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.sharing.paireddevice"];
    idsService = v2->_idsService;
    v2->_idsService = v7;

    v2->_lockStatePairedDevice = -1;
  }

  return v2;
}

- (void)activate
{
  v3 = [(SDXPCDaemon *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007BDC4;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_activate
{
  v3 = [(SDXPCDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = charging_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Activate", buf, 2u);
  }

  if (self->_activateCalled)
  {
    sub_1000811AC();
  }

  else if (self->_invalidateCalled)
  {
    sub_10008115C();
  }

  else
  {
    self->_activateCalled = 1;
    idsService = self->_idsService;
    v6 = [(SDXPCDaemon *)self dispatchQueue];
    [(IDSService *)idsService addDelegate:self queue:v6];

    [(SDPairedDeviceAgent *)self _systemStateRegisterObservers];
    [(SDPairedDeviceAgent *)self _testingRegisterNotifications];
    v10.receiver = self;
    v10.super_class = SDPairedDeviceAgent;
    [(SDXPCDaemon *)&v10 onqueue_activate];
    v7 = dispatch_time(0, 5000000000);
    v8 = [(SDXPCDaemon *)self dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007BF74;
    block[3] = &unk_1008CDEA0;
    block[4] = self;
    dispatch_after(v7, v8, block);
  }
}

- (void)invalidate
{
  v3 = [(SDXPCDaemon *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007C004;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_invalidate
{
  v3 = [(SDXPCDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = charging_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Invalidate", buf, 2u);
  }

  if (self->_invalidateCalled)
  {
    sub_10008124C();
  }

  else if (self->_activateCalled)
  {
    self->_invalidateCalled = 1;
    [(SDPairedDeviceAgent *)self _idsEnsureCoalescersStopped];
    [(IDSService *)self->_idsService removeDelegate:self];
    [(SDPairedDeviceAgent *)self _systemStateUnregisterObservers];
    v5.receiver = self;
    v5.super_class = SDPairedDeviceAgent;
    [(SDXPCDaemon *)&v5 onqueue_invalidate];
  }

  else
  {
    sub_1000811FC();
  }
}

- (id)_queueWithFallbackQOS
{
  v2 = dispatch_queue_attr_make_initially_inactive(0);
  v3 = dispatch_queue_create("com.apple.sharing.PairedDeviceAgent", v2);

  dispatch_set_qos_class_fallback();
  dispatch_activate(v3);

  return v3;
}

- (void)_companionLinkEnable
{
  v3 = objc_opt_new();
  companionLinkClient = self->_companionLinkClient;
  self->_companionLinkClient = v3;

  [(RPCompanionLinkClient *)self->_companionLinkClient setControlFlags:32];
  v5 = [(SDXPCDaemon *)self dispatchQueue];
  [(RPCompanionLinkClient *)self->_companionLinkClient setDispatchQueue:v5];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10007C38C;
  v12[3] = &unk_1008CE210;
  v12[4] = self;
  [(RPCompanionLinkClient *)self->_companionLinkClient setDeviceFoundHandler:v12];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007C394;
  v11[3] = &unk_1008CE210;
  v11[4] = self;
  [(RPCompanionLinkClient *)self->_companionLinkClient setDeviceLostHandler:v11];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10007C39C;
  v10[3] = &unk_1008CE238;
  v10[4] = self;
  [(RPCompanionLinkClient *)self->_companionLinkClient setDeviceChangedHandler:v10];
  [(RPCompanionLinkClient *)self->_companionLinkClient setInterruptionHandler:&stru_1008CE258];
  [(RPCompanionLinkClient *)self->_companionLinkClient setInvalidationHandler:&stru_1008CE278];
  v6 = self->_companionLinkClient;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007C42C;
  v9[3] = &unk_1008CDF90;
  v9[4] = self;
  [(RPCompanionLinkClient *)v6 activateWithCompletion:v9];
  v7 = charging_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Enabling companion link", v8, 2u);
  }
}

- (void)_companionLinkDisable
{
  [(RPCompanionLinkClient *)self->_companionLinkClient invalidate];
  companionLinkClient = self->_companionLinkClient;
  self->_companionLinkClient = 0;
}

- (BOOL)_companionLinkConnected
{
  v3 = charging_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(RPCompanionLinkClient *)self->_companionLinkClient activeDevices];
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Companion link connected devices %@", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(RPCompanionLinkClient *)self->_companionLinkClient activeDevices];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) statusFlags])
        {
          LOBYTE(v6) = 1;
          goto LABEL_13;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v6;
}

- (void)_companionLinkDevicesChanged
{
  v3 = charging_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Companion link devices changed", v6, 2u);
  }

  if ([(SDPairedDeviceAgent *)self _companionLinkConnected]&& self->_chargingUIHandler)
  {
    v4 = charging_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10008137C();
    }

    (*(self->_chargingUIHandler + 2))();
    chargingUIHandler = self->_chargingUIHandler;
    self->_chargingUIHandler = 0;
  }
}

- (id)_idsActiveDevice
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(IDSService *)self->_idsService devices];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 isActive])
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)_idsEnsureCoalescersStarted
{
  v3 = [(SDXPCDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  if (!self->_idsConnectionCoalescer)
  {
    v4 = objc_opt_new();
    idsConnectionCoalescer = self->_idsConnectionCoalescer;
    self->_idsConnectionCoalescer = v4;

    v6 = [(SDXPCDaemon *)self dispatchQueue];
    [(CUCoalescer *)self->_idsConnectionCoalescer setDispatchQueue:v6];

    [(CUCoalescer *)self->_idsConnectionCoalescer setMinDelay:0.5];
    [(CUCoalescer *)self->_idsConnectionCoalescer setMaxDelay:3.0];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10007CA04;
    v11[3] = &unk_1008CDEA0;
    v11[4] = self;
    [(CUCoalescer *)self->_idsConnectionCoalescer setActionHandler:v11];
    [(CUCoalescer *)self->_idsConnectionCoalescer trigger];
  }

  if (!self->_idsSyncCoalescer)
  {
    v7 = objc_opt_new();
    idsSyncCoalescer = self->_idsSyncCoalescer;
    self->_idsSyncCoalescer = v7;

    v9 = [(SDXPCDaemon *)self dispatchQueue];
    [(CUCoalescer *)self->_idsSyncCoalescer setDispatchQueue:v9];

    [(CUCoalescer *)self->_idsSyncCoalescer setMinDelay:0.3];
    [(CUCoalescer *)self->_idsSyncCoalescer setMaxDelay:3.0];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10007CA78;
    v10[3] = &unk_1008CDEA0;
    v10[4] = self;
    [(CUCoalescer *)self->_idsSyncCoalescer setActionHandler:v10];
  }
}

- (void)_idsEnsureCoalescersStopped
{
  [(CUCoalescer *)self->_idsConnectionCoalescer invalidate];
  idsConnectionCoalescer = self->_idsConnectionCoalescer;
  self->_idsConnectionCoalescer = 0;

  [(CUCoalescer *)self->_idsSyncCoalescer invalidate];
  idsSyncCoalescer = self->_idsSyncCoalescer;
  self->_idsSyncCoalescer = 0;
}

- (void)_idsEnsureSynced
{
  v3 = objc_opt_new();
  v4 = [(SDXPCDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v4);

  if (!self->_powerSourcePairedDevice || self->_infoRequestForced)
  {
    [v3 setObject:&off_10090B7F0 forKeyedSubscript:@"met"];
    [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"rin"];
  }

  if ([v3 count])
  {
    [(SDPairedDeviceAgent *)self _idsSendStateUpdate:v3 asWaking:0];
  }

  else
  {
    v5 = charging_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "No changes skipping sync", v6, 2u);
    }
  }

  self->_infoRequestForced = 0;
}

- (BOOL)_idsHasDefaultDevice
{
  v2 = [(IDSService *)self->_idsService devices];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 |= [*(*(&v9 + 1) + 8 * i) isDefaultPairedDevice];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

- (void)_idsTimerInfoRestart
{
  v3 = charging_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Restarting IDS info timer", buf, 2u);
  }

  v4 = [(SDXPCDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v4);

  if (!self->_idsInfoTimer)
  {
    v5 = [(SDXPCDaemon *)self dispatchQueue];
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v5);
    idsInfoTimer = self->_idsInfoTimer;
    self->_idsInfoTimer = v6;

    v8 = self->_idsInfoTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10007CED8;
    handler[3] = &unk_1008CDEA0;
    handler[4] = self;
    dispatch_source_set_event_handler(v8, handler);
    v9 = self->_idsInfoTimer;
    SFDispatchTimerSet();
    dispatch_resume(self->_idsInfoTimer);
    v10 = self->_idsInfoTimer;
  }

  SFDispatchTimerSet();
}

- (void)_idsTimerInfoFired
{
  v3 = charging_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "IDS info timer fired", v5, 2u);
  }

  v4 = [(SDXPCDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v4);

  self->_infoRequestForced = 1;
  [(SDPairedDeviceAgent *)self _idsTriggerSync];
  [(SDPairedDeviceAgent *)self _idsTimerInfoInvalidate];
}

- (void)_idsTimerInfoInvalidate
{
  v3 = charging_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating IDS info timer", v7, 2u);
  }

  v4 = [(SDXPCDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v4);

  idsInfoTimer = self->_idsInfoTimer;
  if (idsInfoTimer)
  {
    dispatch_source_cancel(idsInfoTimer);
    v6 = self->_idsInfoTimer;
    self->_idsInfoTimer = 0;
  }
}

- (void)_idsTriggerSyncForAnimation:(BOOL)a3
{
  if (!a3)
  {
    animationMessageID = self->_animationMessageID;
    if (animationMessageID)
    {
      v5 = charging_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Clearing message ID", v6, 2u);
      }

      animationMessageID = self->_animationMessageID;
    }

    self->_animationMessageID = 0;
  }

  [(CUCoalescer *)self->_idsSyncCoalescer trigger];
}

- (void)_idsUpdateConnectedState
{
  v2 = self;
  v3 = [(SDXPCDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [(IDSService *)v2->_idsService devices];
  v4 = [obj countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v4)
  {
    v31 = v2;
    v5 = *v35;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v35 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v34 + 1) + 8 * i);
        v8 = charging_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [v7 uniqueIDOverride];
          if ([v7 isActive])
          {
            v10 = "yes";
          }

          else
          {
            v10 = "no";
          }

          if ([v7 isConnected])
          {
            v11 = "yes";
          }

          else
          {
            v11 = "no";
          }

          v12 = [v7 isNearby];
          *buf = 138413058;
          if (v12)
          {
            v13 = "yes";
          }

          else
          {
            v13 = "no";
          }

          v39 = v9;
          v40 = 2080;
          v41 = v10;
          v42 = 2080;
          v43 = v11;
          v44 = 2080;
          v45 = v13;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Checking connection state for device %@, active %s, connected %s, nearby %s", buf, 0x2Au);
        }

        if ([v7 isActive] && ((objc_msgSend(v7, "isConnected") & 1) != 0 || objc_msgSend(v7, "isNearby")))
        {
          v4 = v7;
          goto LABEL_24;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v34 objects:v46 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }

LABEL_24:
    v2 = v31;
  }

  v14 = charging_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v4 uniqueIDOverride];
    v16 = [(IDSDevice *)v2->_idsConnectedDevice uniqueIDOverride];
    *buf = 138412546;
    v39 = v15;
    v40 = 2112;
    v41 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "New connected device ID %@, previous connected device ID %@", buf, 0x16u);
  }

  v17 = [v4 uniqueIDOverride];
  v18 = [(IDSDevice *)v2->_idsConnectedDevice uniqueIDOverride];
  v19 = v17;
  v20 = v18;
  v21 = v20;
  if (v19 == v20)
  {

    goto LABEL_44;
  }

  if ((v19 != 0) == (v20 == 0))
  {
  }

  else
  {
    v22 = [v19 isEqual:v20];

    if (v22)
    {
LABEL_44:
      idsConnectedDevice = charging_log();
      if (os_log_type_enabled(idsConnectedDevice, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, idsConnectedDevice, OS_LOG_TYPE_DEFAULT, "No change for connected IDS device", buf, 2u);
      }

      goto LABEL_42;
    }
  }

  v23 = charging_log();
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v24)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Paired device connected", buf, 2u);
    }

    v25 = dispatch_time(0, 10000000000);
    v26 = [(SDXPCDaemon *)v2 dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007D5B4;
    block[3] = &unk_1008CDEA0;
    block[4] = v2;
    dispatch_after(v25, v26, block);
  }

  else
  {
    if (v24)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Paired device disconnected, clearing device state", buf, 2u);
    }

    [(SDPairedDeviceAgent *)v2 _lockStateUpdate:0xFFFFFFFFLL];
    powerSourcePairedDevice = v2->_powerSourcePairedDevice;
    if (powerSourcePairedDevice)
    {
      [(SFPowerSource *)powerSourcePairedDevice invalidate];
      [(SDPairedDeviceAgent *)v2 _nanoRegistryUnregisterChanges];
      v28 = v2->_powerSourcePairedDevice;
      v2->_powerSourcePairedDevice = 0;
    }

    [(SDPairedDeviceAgent *)v2 _wristStateUpdate:0];
  }

  v29 = v4;
  idsConnectedDevice = v2->_idsConnectedDevice;
  v2->_idsConnectedDevice = v29;
LABEL_42:
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8
{
  v10 = a6;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = [(SDXPCDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v19);

  v20 = charging_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = "no";
    v22 = 138413570;
    v23 = v14;
    v24 = 2112;
    if (v10)
    {
      v21 = "yes";
    }

    v25 = v15;
    v26 = 2112;
    v27 = v16;
    v28 = 2080;
    v29 = v21;
    v30 = 2112;
    v31 = v17;
    v32 = 2112;
    v33 = v18;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Sent IDS message (service %@, account %@, identifier %@, success %s, error %@, context %@)", &v22, 0x3Eu);
  }
}

- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(SDXPCDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v17);

  v18 = charging_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v16 outgoingResponseIdentifier];
    v21 = 138413314;
    v22 = v12;
    v23 = 2112;
    v24 = v13;
    v25 = 2112;
    v26 = v14;
    v27 = 2112;
    v28 = v15;
    v29 = 2112;
    v30 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Incoming IDS message (service %@, account %@, protobuf %@, fromID %@, identifier %@)", &v21, 0x34u);
  }

  v20 = [v14 data];
  [(SDPairedDeviceAgent *)self _messageHandleIncomingData:v20];
}

- (void)service:(id)a3 connectedDevicesChanged:(id)a4
{
  v5 = a3;
  v6 = charging_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "IDS connected devices changed on service %@", &v7, 0xCu);
  }

  [(CUCoalescer *)self->_idsConnectionCoalescer trigger];
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  v5 = a3;
  v6 = charging_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "IDS devices changed on service %@", &v7, 0xCu);
  }

  [(CUCoalescer *)self->_idsConnectionCoalescer trigger];
}

- (void)service:(id)a3 nearbyDevicesChanged:(id)a4
{
  v5 = a3;
  v6 = charging_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "IDS nearby devices changed on service %@", &v7, 0xCu);
  }

  [(CUCoalescer *)self->_idsConnectionCoalescer trigger];
}

- (void)_lockStateChanged:(id)a3
{
  v4 = charging_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1000813B0();
  }

  v5 = [(SDXPCDaemon *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007DC28;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)_lockStateUpdate:(int)a3
{
  v5 = [(SDXPCDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  lockStatePairedDevice = self->_lockStatePairedDevice;
  self->_lockStatePairedDevice = a3;
  if (lockStatePairedDevice != a3)
  {
    v7 = +[SDStatusMonitor sharedMonitor];
    [v7 updatePairedWatchLockState:self->_lockStatePairedDevice];
  }
}

- (void)_messageHandleIncomingData:(id)a3
{
  v4 = a3;
  v10 = 0;
  v5 = [(SDXPCDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  if (v4)
  {
    v6 = OPACKDecodeData();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(__CFString *)v6 objectForKeyedSubscript:@"met"];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 integerValue];
        if (v9 == 5)
        {
          [(SDPairedDeviceAgent *)self _messageHandleDashboardEntry:v6];
        }

        else if (v9 == 4)
        {
          [(SDPairedDeviceAgent *)self _messageHandlePowerSourceUpdate:v6];
        }

        else if (v9 == 1)
        {
          [(SDPairedDeviceAgent *)self _messageHandleAllUpdate:v6];
        }
      }

      else
      {
        sub_10008157C();
      }
    }

    else
    {
      sub_100081480(v6);
      v8 = 0;
    }
  }

  else
  {
    sub_100081614();
    v8 = 0;
    v6 = 0;
  }
}

- (void)_messageHandleAllUpdate:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"pad"];
  v6 = [v4 objectForKeyedSubscript:@"rin"];
  v7 = [v6 BOOLValue];

  v8 = charging_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updating all values: %@", &v13, 0xCu);
  }

  v9 = [(SDXPCDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v9);

  if (!self->_animationDateReceived || ([v5 timeIntervalSinceDate:?], v10 > 0.0))
  {
    v11 = charging_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Animation date received over IDS: %@", &v13, 0xCu);
    }

    objc_storeStrong(&self->_animationDateReceived, v5);
  }

  [(SDPairedDeviceAgent *)self _idsTimerInfoInvalidate];
  [(SDPairedDeviceAgent *)self _lockStateHandleMessage:v4];
  [(SDPairedDeviceAgent *)self _powerSourceUpdatePairedDeviceInfo:v4];
  [(SDPairedDeviceAgent *)self _wristStateHandleMessage:v4];
  if (v7)
  {
    v12 = charging_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Sending update for request", &v13, 2u);
    }

    [(SDPairedDeviceAgent *)self _idsTriggerSync];
  }
}

- (void)_messageHandlePowerSourceUpdate:(id)a3
{
  v4 = a3;
  v5 = charging_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Power source update: %@", &v7, 0xCu);
  }

  v6 = [(SDXPCDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v6);

  [(SDPairedDeviceAgent *)self _idsTimerInfoInvalidate];
  [(SDPairedDeviceAgent *)self _powerSourceUpdatePairedDeviceInfo:v4];
}

- (void)_messageHandleDashboardEntry:(id)a3
{
  v4 = a3;
  v5 = charging_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSPrintF();
    *buf = 138412290;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Dashboard entry: %@", buf, 0xCu);
  }

  v7 = [(SDXPCDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v4 objectForKeyedSubscript:@"dae"];
  v9 = [v8 objectForKeyedSubscript:@"dan"];

  if (v9)
  {
    v10 = [v4 objectForKeyedSubscript:@"dae"];
    v11 = [v10 objectForKeyedSubscript:@"dad"];

    if (v11)
    {
      SFMetricsLog();
    }

    else
    {
      v11 = charging_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100081670();
      }
    }
  }

  else
  {
    v11 = charging_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000816A4();
    }
  }
}

- (id)_messageFromPowerSource:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"pis"];
  v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 adapterFamilyCode]);
  [v4 setObject:v5 forKeyedSubscript:@"pat"];

  [v3 chargeLevel];
  v6 = [NSNumber numberWithDouble:?];
  [v4 setObject:v6 forKeyedSubscript:@"pcl"];

  v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 charging]);
  [v4 setObject:v7 forKeyedSubscript:@"pic"];

  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 adapterSourceID]);
  [v4 setObject:v8 forKeyedSubscript:@"pmd"];

  [v3 maxCapacity];
  v9 = [NSNumber numberWithDouble:?];
  [v4 setObject:v9 forKeyedSubscript:@"pmx"];

  v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 adapterSharedSource]);
  [v4 setObject:v10 forKeyedSubscript:@"pss"];

  v11 = [v3 temperature];
  v12 = [NSNumber numberWithInteger:v11];
  [v4 setObject:v12 forKeyedSubscript:@"ptm"];

  return v4;
}

- (void)_messageIDAdd:(id)a3
{
  v4 = a3;
  messageIDs = self->_messageIDs;
  if (!messageIDs)
  {
    v6 = objc_opt_new();
    v7 = self->_messageIDs;
    self->_messageIDs = v6;

    messageIDs = self->_messageIDs;
  }

  [(NSMutableArray *)messageIDs addObject:v4];
  v8 = charging_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v4 unsignedLongValue];
    v10 = [(NSMutableArray *)self->_messageIDs count];
    v11 = 134218240;
    v12 = v9;
    v13 = 2048;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Added message ID: %lu count: %ld", &v11, 0x16u);
  }

  if ([(NSMutableArray *)self->_messageIDs count]>= 0x15)
  {
    do
    {
      [(NSMutableArray *)self->_messageIDs removeObjectAtIndex:0];
    }

    while ([(NSMutableArray *)self->_messageIDs count]> 0x14);
  }
}

- (void)_messageIDRemove:(id)a3
{
  v4 = a3;
  if (([(NSMutableArray *)self->_messageIDs containsObject:v4]& 1) == 0)
  {
    v5 = charging_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000816D8(v4);
    }
  }

  [(NSMutableArray *)self->_messageIDs removeObject:v4];
  v6 = charging_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 unsignedLongValue];
    v8 = [(NSMutableArray *)self->_messageIDs count];
    v9 = 134218240;
    v10 = v7;
    v11 = 2048;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Removed message ID: %lu, count: %ld", &v9, 0x16u);
  }
}

- (void)_nanoRegistryRegisterChangesForDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 valueForProperty:NRDevicePropertyPairingID];
  if (v5)
  {
    nrRegisteredDevices = self->_nrRegisteredDevices;
    if (!nrRegisteredDevices)
    {
      v7 = objc_opt_new();
      v8 = self->_nrRegisteredDevices;
      self->_nrRegisteredDevices = v7;

      nrRegisteredDevices = self->_nrRegisteredDevices;
    }

    v9 = [(NSMutableDictionary *)nrRegisteredDevices allKeys];
    v10 = [v9 containsObject:v5];

    if (v10)
    {
      sub_10008175C(v5);
    }

    else
    {
      [(SDPairedDeviceAgent *)self _nanoRegistryUnregisterChanges];
      v11 = charging_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        powerSourcePairedDevice = self->_powerSourcePairedDevice;
        *buf = 138412290;
        v17 = powerSourcePairedDevice;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Registered for name change for %@", buf, 0xCu);
      }

      v15 = NRDevicePropertyName;
      v13 = [NSArray arrayWithObjects:&v15 count:1];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10007E900;
      v14[3] = &unk_1008CE2A0;
      v14[4] = self;
      [v4 registerForPropertyChanges:v13 withBlock:v14];

      [(NSMutableDictionary *)self->_nrRegisteredDevices setObject:v4 forKeyedSubscript:v5];
    }
  }

  else
  {
    sub_100081800();
  }
}

- (void)_nanoRegistryUnregisterChanges
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(NSMutableDictionary *)self->_nrRegisteredDevices allValues];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v7) unregisterForPropertyChanges:0 withBlock:0];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_nrRegisteredDevices removeAllObjects];
  v8 = charging_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unregistered for name changes", v9, 2u);
  }
}

- (void)_powerSourceUpdatePairedDeviceInfo:(id)a3
{
  v4 = a3;
  v5 = +[NRPairedDeviceRegistry sharedInstance];
  v6 = [v5 getActivePairedDevice];

  v7 = [v4 objectForKeyedSubscript:@"pat"];
  v8 = [v7 intValue];

  v9 = [v4 objectForKeyedSubscript:@"pcl"];
  [v9 doubleValue];
  v11 = v10;

  v12 = [v4 objectForKeyedSubscript:@"pic"];
  v57 = [v12 BOOLValue];

  v13 = [v4 objectForKeyedSubscript:@"pmx"];
  [v13 doubleValue];
  v15 = v14;

  v16 = [v4 objectForKeyedSubscript:@"pss"];
  v17 = [v16 BOOLValue];

  v18 = [v4 objectForKeyedSubscript:@"pmd"];
  v19 = [v18 integerValue];

  v20 = [v4 objectForKeyedSubscript:@"ptm"];
  v21 = [v20 integerValue];

  v22 = [v4 objectForKeyedSubscript:@"pml"];
  v23 = [v22 BOOLValue];

  v24 = [v4 objectForKeyedSubscript:@"lpm"];
  v25 = [v24 BOOLValue];

  v26 = [(SDXPCDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v26);

  v27 = [v4 objectForKeyedSubscript:@"pis"];
  v28 = v27;
  if (!v27)
  {
    v29 = charging_log();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v48 = "Update missing power info set number";
    goto LABEL_30;
  }

  if (([v27 BOOLValue] & 1) == 0)
  {
    v29 = charging_log();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v48 = "Power info not set in update";
LABEL_30:
    v49 = v29;
    v50 = 2;
    goto LABEL_33;
  }

  v55 = v8;
  if (!sub_10000C1F8(@"EnableWatchUI", 1))
  {
    v29 = charging_log();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    *buf = 67109120;
    LODWORD(v59) = v55;
    v48 = "Suppressing watch power source %d";
    v49 = v29;
    v50 = 8;
LABEL_33:
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, v48, buf, v50);
    goto LABEL_25;
  }

  v29 = [v4 objectForKeyedSubscript:@"pai"];
  if ([(NSMutableArray *)self->_messageIDs containsObject:v29])
  {
    [(SDPairedDeviceAgent *)self _messageIDRemove:v29];
    v30 = charging_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v59 = [v29 unsignedLongValue];
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Duping messages, not updating: %lu", buf, 0xCu);
    }
  }

  else
  {
    v52 = v21;
    v31 = v17;
    v54 = v28;
    if (v29)
    {
      [(SDPairedDeviceAgent *)self _messageIDAdd:v29];
    }

    v32 = [v6 valueForProperty:_NRDevicePropertyBluetoothIdentifier];
    v51 = [(SFPowerSource *)self->_powerSourcePairedDevice charging];
    v33 = v6;
    powerSourcePairedDevice = self->_powerSourcePairedDevice;
    v35 = powerSourcePairedDevice;
    if (!powerSourcePairedDevice)
    {
      v36 = objc_opt_new();
      v37 = self->_powerSourcePairedDevice;
      self->_powerSourcePairedDevice = v36;

      v35 = self->_powerSourcePairedDevice;
    }

    [(SFPowerSource *)v35 setAccessoryCategory:@"Watch"];
    [(SFPowerSource *)self->_powerSourcePairedDevice setLowWarnLevel:10.0];
    [(SFPowerSource *)self->_powerSourcePairedDevice setLowPowerModeEnabled:v25];
    v53 = v32;
    v38 = [v32 UUIDString];
    [(SFPowerSource *)self->_powerSourcePairedDevice setAccessoryID:v38];

    [(SFPowerSource *)self->_powerSourcePairedDevice setAdapterFamilyCode:v55];
    [(SFPowerSource *)self->_powerSourcePairedDevice setAdapterSharedSource:v31];
    [(SFPowerSource *)self->_powerSourcePairedDevice setAdapterSourceID:v19];
    [(SFPowerSource *)self->_powerSourcePairedDevice setCharging:v57];
    [(SFPowerSource *)self->_powerSourcePairedDevice setChargeLevel:v11];
    [(SFPowerSource *)self->_powerSourcePairedDevice setMaxCapacity:v15];
    [(SFPowerSource *)self->_powerSourcePairedDevice setTemperature:v52];
    [(SFPowerSource *)self->_powerSourcePairedDevice setType:@"Accessory Source"];
    if (v57)
    {
      v39 = @"AC Power";
    }

    else
    {
      v39 = @"Battery Power";
    }

    [(SFPowerSource *)self->_powerSourcePairedDevice setState:v39];
    [(SFPowerSource *)self->_powerSourcePairedDevice setTransportType:@"Bluetooth"];
    [(SFPowerSource *)self->_powerSourcePairedDevice setVendorID:76];
    v56 = v33;
    v40 = [v33 valueForProperty:NRDevicePropertyName];
    [(SFPowerSource *)self->_powerSourcePairedDevice setName:v40];

    kdebug_trace();
    v41 = [(SFPowerSource *)self->_powerSourcePairedDevice publish];
    v42 = charging_log();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      if (powerSourcePairedDevice)
      {
        v43 = @"Updated";
      }

      else
      {
        v43 = @"Created";
      }

      v44 = self->_powerSourcePairedDevice;
      v45 = [(SFPowerSource *)v44 detailedDescription];
      v46 = v45;
      *buf = 138413314;
      v47 = "no";
      v59 = v43;
      v60 = 2112;
      if (v57 != v51)
      {
        v47 = "yes";
      }

      v61 = v44;
      v62 = 2112;
      v63 = v45;
      v64 = 2080;
      v65 = v47;
      v66 = 1024;
      v67 = v41;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%@ paired device power source %@\n%@charging changed %s, status %x", buf, 0x30u);
    }

    if (v23)
    {
      [(SDPairedDeviceAgent *)self _postPowerStatusNotificationForPowerSource:self->_powerSourcePairedDevice];
    }

    v6 = v56;
    [(SDPairedDeviceAgent *)self _nanoRegistryRegisterChangesForDevice:v56];

    v28 = v54;
  }

LABEL_25:
}

- (void)_systemStateRegisterObservers
{
  v3 = [(SDXPCDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  [(SDPairedDeviceAgent *)self _setupPowerSourceMonitor];
}

- (void)_systemStateUnregisterObservers
{
  v3 = [(SDXPCDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  [(SDPairedDeviceAgent *)self _disablePowerStateMonitor];
}

- (void)_setupLockStateMonitor
{
  v3 = [(SDXPCDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_lockStateChanged:" name:@"com.apple.sharingd.KeyBagLockStatusChanged" object:0];
}

- (void)_setupPowerSourceMonitor
{
  v3 = objc_opt_new();
  powerSourceMonitor = self->_powerSourceMonitor;
  self->_powerSourceMonitor = v3;

  [(SFPowerSourceMonitor *)self->_powerSourceMonitor setChangeFlags:0xFFFFFFFFLL];
  v5 = [(SDXPCDaemon *)self dispatchQueue];
  [(SFPowerSourceMonitor *)self->_powerSourceMonitor setDispatchQueue:v5];

  [(SFPowerSourceMonitor *)self->_powerSourceMonitor setInvalidationHandler:&stru_1008CE2C0];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10007F594;
  v8[3] = &unk_1008CE2E8;
  v8[4] = self;
  [(SFPowerSourceMonitor *)self->_powerSourceMonitor setPowerSourcesFoundHandler:v8];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007F684;
  v7[3] = &unk_1008CE310;
  v7[4] = self;
  [(SFPowerSourceMonitor *)self->_powerSourceMonitor setPowerSourcesChangedHandler:v7];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10007F774;
  v6[3] = &unk_1008CE2E8;
  v6[4] = self;
  [(SFPowerSourceMonitor *)self->_powerSourceMonitor setPowerSourcesLostHandler:v6];
  [(SFPowerSourceMonitor *)self->_powerSourceMonitor activateWithCompletion:&stru_1008CE350];
}

- (void)_setupWristStateMonitor
{
  v3 = [(SDXPCDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"wristStateChanged:" name:@"com.apple.sharingd.WristStateChanged" object:0];
}

- (void)_disablePowerStateMonitor
{
  v3 = [(SDXPCDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  [(SFPowerSourceMonitor *)self->_powerSourceMonitor invalidate];
  powerSourceMonitor = self->_powerSourceMonitor;
  self->_powerSourceMonitor = 0;
}

- (void)_testingRegisterNotifications
{
  v2 = [(SDXPCDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v2);
}

- (void)_testingOnCharger
{
  v3 = charging_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Faking on charger", v5, 2u);
  }

  v4 = [(SDXPCDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v4);
}

- (void)wristStateChanged:(id)a3
{
  v4 = charging_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Wrist state changed", buf, 2u);
  }

  v5 = [(SDXPCDaemon *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007FBB8;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)_wristStateChanged
{
  v3 = +[SDStatusMonitor sharedMonitor];
  v4 = [v3 watchWristState];

  v5 = 2;
  if ((v4 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v5 = v4;
  }

  if (self->_wristStateLocal == v5)
  {
    sub_1000818C8();
  }

  else
  {
    self->_wristStateLocal = v5;

    [(SDPairedDeviceAgent *)self _idsTriggerSync];
  }
}

- (void)_wristStateUpdate:(int64_t)a3
{
  v5 = [(SDXPCDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  wristStatePairedDevice = self->_wristStatePairedDevice;
  self->_wristStatePairedDevice = a3;
  if (wristStatePairedDevice != a3)
  {
    v7 = +[SDStatusMonitor sharedMonitor];
    [v7 updatePairedWatchWristState:self->_wristStatePairedDevice];
  }
}

- (void)lowPowerModeChanged:(id)a3
{
  v4 = charging_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Low power mode changed", buf, 2u);
  }

  v5 = [(SDXPCDaemon *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007FDC8;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)_lowPowerModeChanged
{
  v3 = +[SDStatusMonitor sharedMonitor];
  v4 = [v3 lowPowerModeEnabled];

  if (self->_lowPowerModeLocal == v4)
  {
    sub_100081918();
  }

  else
  {
    self->_lowPowerModeLocal = v4;

    [(SDPairedDeviceAgent *)self _idsTriggerSync];
  }
}

- (void)connectionEstablished:(id)a3
{
  v3 = a3;
  v4 = charging_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 sd_description];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Paired device connection established %@", &v6, 0xCu);
  }
}

- (void)connectionInvalidated:(id)a3
{
  v3 = a3;
  v4 = charging_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 sd_description];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Paired device connection invalidated %@", &v6, 0xCu);
  }
}

- (void)initialViewControllerDidAppear
{
  v3 = [(SDXPCDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = charging_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Initial view controller appeared", v5, 2u);
  }

  self->_uiShowing = 1;
}

- (void)initialViewControllerDidDisappear
{
  v3 = [(SDXPCDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = charging_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Initial view controller disappeared", v5, 2u);
  }

  self->_uiShowing = 0;
}

- (void)sendAnimationDate:(id)a3
{
  v3 = [(SDXPCDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);
}

- (void)triggerChargingUIWithDismissHandler:(id)a3
{
  v4 = a3;
  v5 = [(SDXPCDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  if ([(SDPairedDeviceAgent *)self _companionLinkConnected])
  {
    v6 = objc_retainBlock(v4);
    chargingUIHandler = self->_chargingUIHandler;
    self->_chargingUIHandler = v6;

    v8 = dispatch_time(0, 10000000000);
    v9 = [(SDXPCDaemon *)self dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000802AC;
    block[3] = &unk_1008CDEA0;
    block[4] = self;
    dispatch_after(v8, v9, block);
  }

  else
  {
    sub_100081968(v4);
  }
}

- (void)sendDismissUIWithReason:(int64_t)a3
{
  v3 = [(SDXPCDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);
}

- (void)sendDashboardEntryWithName:(id)a3 dict:(id)a4
{
  v12[0] = @"dan";
  v12[1] = @"dad";
  v13[0] = a3;
  v13[1] = a4;
  v6 = a4;
  v7 = a3;
  v8 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10[0] = @"met";
  v10[1] = @"dae";
  v11[0] = &off_10090B808;
  v11[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];

  [(SDPairedDeviceAgent *)self _idsSendDashboardEntryToCompanion:v9];
}

- (void)_postPowerStatusNotificationForPowerSource:(id)a3
{
  v3 = a3;
  v4 = charging_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending response for reason %@", &v6, 0xCu);
  }

  v5 = +[SDPowerChargingStatusNotifier sharedNotifier];
  [v5 notifyBatteryStatus];
}

- (void)_idsSendStateUpdate:(id)a3 asWaking:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [NSSet setWithObject:IDSDefaultPairedDevice];
  v8 = [(SDPairedDeviceAgent *)self _idsHasDefaultDevice];
  v9 = objc_opt_new();
  v30 = 0;
  v10 = [(SDXPCDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v10);

  v11 = charging_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = "no";
    if (v8)
    {
      v12 = "yes";
    }

    *buf = 136315138;
    v32 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Default paired device: %s", buf, 0xCu);
  }

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      Data = OPACKEncoderCreateData();
      v14 = [v6 objectForKeyedSubscript:@"met"];
      if (v14)
      {
        v15 = v14;
        v16 = [[IDSProtobuf alloc] initWithProtobufData:Data type:objc_msgSend(v14 isResponse:{"unsignedIntegerValue"), 0}];
        v17 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
        [v9 setObject:v17 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];

        [v9 setObject:@"com.apple.sharing.DeviceStateUpdate" forKeyedSubscript:IDSSendMessageOptionQueueOneIdentifierKey];
        v18 = [NSNumber numberWithInt:!v4];
        [v9 setObject:v18 forKeyedSubscript:IDSSendMessageOptionNonWakingKey];

        v19 = charging_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v32 = v6;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Sending state update %@", buf, 0xCu);
        }

        idsService = self->_idsService;
        v28 = 0;
        v29 = 0;
        v21 = [(IDSService *)idsService sendProtobuf:v16 toDestinations:v7 priority:300 options:v9 identifier:&v29 error:&v28];
        v22 = v29;
        v23 = v28;
        v24 = charging_log();
        v25 = v24;
        if (v21)
        {
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v32 = v22;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "State update IDS message identifier: %@", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v32 = v23;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Error sending state update (error: %@)", buf, 0xCu);
        }

        Data = v23;
        goto LABEL_16;
      }

      v27 = charging_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "State update missing message type", buf, 2u);
      }
    }

    else
    {
      Data = charging_log();
      if (!os_log_type_enabled(Data, OS_LOG_TYPE_FAULT))
      {
LABEL_16:

        goto LABEL_17;
      }

      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      *buf = 138412290;
      v32 = v27;
      _os_log_fault_impl(&_mh_execute_header, Data, OS_LOG_TYPE_FAULT, "Update not an NSDictionary: %@", buf, 0xCu);
    }

    goto LABEL_16;
  }

LABEL_17:
}

- (void)_lockStateHandleMessage:(id)a3
{
  v4 = a3;
  v5 = [(SDXPCDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 objectForKeyedSubscript:@"lst"];

  if (v6)
  {
    v7 = [v6 intValue];
    if ((v7 & 0x80000000) != 0)
    {
      v8 = charging_log();
      if (sub_10008073C(v8))
      {
        sub_100019C18(&_mh_execute_header, v9, v10, "Invalid lock state in update", v11, v12, v13, v14, 0);
      }
    }

    else
    {
      [(SDPairedDeviceAgent *)self _lockStateUpdate:v7];
    }
  }
}

- (void)_powerSourceChanged:(id)a3
{
  v5 = a3;
  v6 = [(SDPairedDeviceAgent *)self _companionLinkConnected];
  v7 = [(SDXPCDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 type];
  v9 = [v8 isEqualToString:@"InternalBattery"];

  if (v9)
  {
    v10 = charging_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v5 detailedDescription];
      v12 = v11;
      v13 = "no";
      *v31 = 138412802;
      *&v31[4] = v5;
      if (v6)
      {
        v13 = "yes";
      }

      *&v31[12] = 2112;
      *&v31[14] = v11;
      v32 = 2080;
      v33 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Local power source updated %@, IOPS details %@ link connected %s", v31, 0x20u);
    }

    if (([v5 charging] & 1) == 0)
    {
      if (self->_chargingUIHandler)
      {
        v14 = charging_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v31 = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Device went off charger while waiting for UI reply", v31, 2u);
        }

        (*(self->_chargingUIHandler + 2))();
        chargingUIHandler = self->_chargingUIHandler;
        self->_chargingUIHandler = 0;
      }

      animationDateToSend = self->_animationDateToSend;
      self->_animationDateToSend = 0;

      animationDateForIDS = self->_animationDateForIDS;
      self->_animationDateForIDS = 0;
    }

    v18 = [(SDPairedDeviceAgent *)self _messageFromPowerSource:v5, *v31];
    powerSourceMessage = self->_powerSourceMessage;
    if (powerSourceMessage && [(NSDictionary *)powerSourceMessage isEqualToDictionary:v18])
    {
      v24 = charging_log();
      if (sub_10008073C(v24))
      {
        sub_100019C18(&_mh_execute_header, v25, v26, "Power source values we care about didn't change", v27, v28, v29, v30, 0);
      }
    }

    else
    {
      objc_storeStrong(&self->_powerSourceLocal, a3);
      v20 = self;
      objc_sync_enter(v20);
      objc_storeStrong(&v20->_powerSource, self->_powerSourceLocal);
      objc_sync_exit(v20);

      v21 = self->_powerSourceMessage;
      self->_powerSourceMessage = v18;
      v22 = v18;

      v20->_powerSourceWasCharging = [v5 charging];
      v23 = +[SDStatusMonitor sharedMonitor];
      [v23 updateLocalPowerSource:self->_powerSourceLocal];

      [(SDPairedDeviceAgent *)v20 _idsTriggerSyncForAnimation:0];
    }
  }
}

- (void)_powerSourceLost:(id)a3
{
  v4 = a3;
  v5 = [(SDXPCDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 type];

  v7 = [v6 isEqualToString:@"InternalBattery"];
  if (v7)
  {
    v8 = charging_log();
    if (sub_10008073C(v8))
    {
      sub_100019C18(&_mh_execute_header, v9, v10, "Internal power source lost", v11, v12, v13, v14, 0);
    }

    powerSourceLocal = self->_powerSourceLocal;
    self->_powerSourceLocal = 0;

    powerSourceMessage = self->_powerSourceMessage;
    self->_powerSourceMessage = 0;

    self->_powerSourceWasCharging = 0;
  }
}

- (void)_wristStateHandleMessage:(id)a3
{
  v4 = a3;
  v5 = [(SDXPCDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 objectForKeyedSubscript:@"wst"];

  if (v6)
  {
    v7 = [v6 integerValue];
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = charging_log();
      if (sub_10008073C(v8))
      {
        sub_100019C18(&_mh_execute_header, v9, v10, "Invalid wrist state in update", v11, v12, v13, v14, 0);
      }
    }

    else
    {
      [(SDPairedDeviceAgent *)self _wristStateUpdate:v7];
    }
  }
}

@end