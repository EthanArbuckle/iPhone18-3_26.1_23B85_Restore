@interface MagicSwitchEnablerCompanion
- (MagicSwitchEnablerCompanion)init;
- (void)activeDeviceAssertionStateDidChange;
- (void)activePairedDeviceSwitchForDevice:(id)a3 completedWithError:(id)a4;
- (void)handleNanoRegistryNotification:(id)a3;
- (void)initialSyncDidCompleteForDevice:(id)a3;
- (void)magicSwitchManager:(id)a3 requestActiveDeviceSwitch:(id)a4;
- (void)registerNanoRegistryObservers;
- (void)updateState;
@end

@implementation MagicSwitchEnablerCompanion

- (MagicSwitchEnablerCompanion)init
{
  v8.receiver = self;
  v8.super_class = MagicSwitchEnablerCompanion;
  v2 = [(MagicSwitchEnabler *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(MagicSwitchEnabler *)v2 workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002F94;
    block[3] = &unk_100018538;
    v7 = v3;
    dispatch_async(v4, block);
  }

  return v3;
}

- (void)registerNanoRegistryObservers
{
  v19[0] = NRPairedDeviceRegistryDeviceIsSetupNotification;
  v19[1] = NRPairedDeviceRegistryDeviceDidUnpairNotification;
  v19[2] = NRPairedDeviceRegistryDeviceDidEnterCompatibilityStateNotification;
  v19[3] = NRPairedDeviceRegistryRemoteUnpairingDidBeginNotification;
  [NSArray arrayWithObjects:v19 count:4];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = v17 = 0u;
  v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v8 = +[NSNotificationCenter defaultCenter];
        v9 = +[NRPairedDeviceRegistry sharedInstance];
        [v8 addObserver:self selector:"handleNanoRegistryNotification:" name:v7 object:v9];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v10 = +[NRActiveDeviceAssertionMonitor sharedInstance];
  [v10 addObserver:self];

  v11 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "MagicSwitchEnabler --- Registered NanoRegistry observers", buf, 2u);
  }
}

- (void)handleNanoRegistryNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:NRPairedDeviceRegistryDevice];
  v7 = +[MagicSwitchEnabler sharedInstance];
  v8 = [v7 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003414;
  block[3] = &unk_100018560;
  v12 = v4;
  v13 = v6;
  v14 = self;
  v9 = v6;
  v10 = v4;
  dispatch_async(v8, block);
}

- (void)updateState
{
  v44 = objc_opt_new();
  if (self->_isSwitchingActivePairedDevice)
  {
    v3 = 0;
    v4 = 0;
    v5 = "Switching device";
LABEL_39:
    magicSwitchManager = self->_magicSwitchManager;
    v31 = qword_100021420;
    v32 = os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT);
    if (magicSwitchManager)
    {
      if (v32)
      {
        *buf = 136315138;
        v53 = v5;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "MagicSwitchEnabler --- Disabling MagicSwitch for reason: %s", buf, 0xCu);
      }

      [(MagicSwitchManagerCompanion *)self->_magicSwitchManager invalidate];
      v33 = self->_magicSwitchManager;
      self->_magicSwitchManager = 0;
    }

    else if (v32)
    {
      *buf = 136315138;
      v53 = v5;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "MagicSwitchEnabler --- Not enabling MagicSwitch for reason: %s", buf, 0xCu);
    }

    v34 = objc_opt_class();
    if (v4)
    {
      [v34 createMagicSwitchPathFile];
    }

    else
    {
      [v34 deleteMagicSwitchPathFile];
    }

    goto LABEL_48;
  }

  if (![(MagicSwitchEnabler *)self isSettingEnabled])
  {
    v3 = 0;
    v4 = 0;
    v5 = "Setting disabled";
    goto LABEL_39;
  }

  v6 = +[NRPairedDeviceRegistry sharedInstance];
  v7 = [v6 getActivePairedDevice];

  v8 = [v7 valueForProperty:NRDevicePropertyIsSetup];
  if (([v8 BOOLValue] & 1) == 0)
  {
    v29 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "MagicSwitchEnabler --- Active device isn't setup yet, ignoring", buf, 2u);
    }

    goto LABEL_32;
  }

  if (!v7)
  {
LABEL_32:

    v3 = 0;
    v4 = 0;
    v5 = "No active + setup completed paired device";
    goto LABEL_39;
  }

  v9 = +[NRPairedDeviceRegistry sharedInstance];
  v10 = [v9 getSetupCompletedDevices];

  v43 = v10;
  if ([v10 count] < 2)
  {
    v4 = 0;
    v3 = 0;
    v5 = "Less than two paired devices";
  }

  else
  {
    v11 = +[NRPairedDeviceRegistry sharedInstance];
    v12 = [v11 compatibilityState];

    if (v12 == 4 || v12 == 2)
    {
      v42 = v8;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v13 = v10;
      v14 = [v13 countByEnumeratingWithState:&v48 objects:v54 count:16];
      if (v14)
      {
        v15 = v14;
        v46 = 0;
        obj = v13;
        v40 = v7;
        v41 = self;
        v16 = *v49;
        v45 = _NRDevicePropertyBluetoothIdentifier;
        v17 = NRDevicePropertyIsActive;
        v18 = 1;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v49 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v48 + 1) + 8 * i);
            v21 = [[NSUUID alloc] initWithUUIDString:@"B8365B0F-C979-491B-86E3-EBAE195F1755"];
            v22 = [v20 supportsCapability:v21];

            if (v22)
            {
              v23 = [v20 valueForProperty:v45];
              if (v23)
              {
                [v44 addObject:v23];
              }

              v24 = [v20 valueForProperty:{v17, v40}];
              v25 = [v24 BOOLValue];

              if (v25)
              {
                v26 = v23;

                v46 = v26;
              }
            }

            else
            {
              v18 = 0;
            }
          }

          v15 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
        }

        while (v15);

        v7 = v40;
        if (v18)
        {
          self = v41;
          v8 = v42;
          v3 = v46;
          if (v46 && [v44 count] >= 2)
          {
            v27 = [v40 valueForProperty:_NRDevicePropertyRemoteUnpairingStarted];
            v28 = [v27 BOOLValue];

            if (v28)
            {
              v4 = 0;
              v5 = "Remote unpairing has started";
            }

            else
            {
              buf[0] = 0;
              if ([(InitialSyncCompletionMonitor *)v41->_initialSyncMonitor hasCachedInitialSyncCompletionStateForDevice:v40 state:buf])
              {
                if (buf[0] == 1)
                {
                  v39 = +[NRActiveDeviceAssertionMonitor sharedInstance];
                  v4 = [v39 hasActiveAssertion];

                  if (v4)
                  {
                    v5 = "An Active Device Assertion is active";
                  }

                  else
                  {
                    v5 = 0;
                  }
                }

                else
                {
                  [(InitialSyncCompletionMonitor *)v41->_initialSyncMonitor registerObserver:v41 device:v40];
                  v4 = 0;
                  v5 = "Initial Sync not complete yet";
                }
              }

              else
              {
                [(InitialSyncCompletionMonitor *)v41->_initialSyncMonitor registerObserver:v41 device:v40];
                v4 = 1;
                v5 = "Initial Sync state for active device unknown";
              }
            }
          }

          else
          {
            v4 = 0;
            v5 = "A paired device has a missing Bluetooth ID";
          }
        }

        else
        {
          v4 = 0;
          v5 = "Not all paired watches have capability";
          self = v41;
          v8 = v42;
          v3 = v46;
        }
      }

      else
      {

        v4 = 0;
        v3 = 0;
        v5 = "A paired device has a missing Bluetooth ID";
      }
    }

    else
    {
      v4 = 0;
      v3 = 0;
      v5 = "Not in Normal Compatibility state";
    }
  }

  if (v5)
  {
    goto LABEL_39;
  }

  v35 = self->_magicSwitchManager;
  if (!v35)
  {
    v36 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "MagicSwitchEnabler --- Enabling MagicSwitch", buf, 2u);
    }

    [objc_opt_class() createMagicSwitchPathFile];
    v37 = [[MagicSwitchManagerCompanion alloc] initWithDelegate:self];
    v38 = self->_magicSwitchManager;
    self->_magicSwitchManager = v37;

    v35 = self->_magicSwitchManager;
  }

  [(MagicSwitchManagerCompanion *)v35 updatePairedDeviceList:v44 activeDevice:v3, v40];
LABEL_48:
}

- (void)activePairedDeviceSwitchForDevice:(id)a3 completedWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v8 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No device", v17, 2u);
    }
  }

  self->_isSwitchingActivePairedDevice = 0;
  v9 = [v6 valueForProperty:NRDevicePropertyPairingID];
  v10 = qword_100021420;
  v11 = os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v11)
    {
      v12 = v10;
      v13 = [v9 UUIDString];
      *v17 = 138412546;
      *&v17[4] = v13;
      *&v17[12] = 2112;
      *&v17[14] = v7;
      v14 = "MagicSwitchEnabler --- MagicSwitch failed for device (%@); error: (%@)";
      v15 = v12;
      v16 = 22;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, v17, v16);
    }
  }

  else if (v11)
  {
    v12 = v10;
    v13 = [v9 UUIDString];
    *v17 = 138412290;
    *&v17[4] = v13;
    v14 = "MagicSwitchEnabler --- MagicSwitch completed with success for device (%@)";
    v15 = v12;
    v16 = 12;
    goto LABEL_9;
  }

  [(MagicSwitchEnablerCompanion *)self updateState:*v17];
}

- (void)magicSwitchManager:(id)a3 requestActiveDeviceSwitch:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No deviceID", buf, 2u);
    }
  }

  if (self->_magicSwitchManager != v6)
  {
    v9 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Unknown manager", buf, 2u);
    }
  }

  v10 = +[NRPairedDeviceRegistry sharedInstance];
  v11 = [v10 deviceForBluetoothID:v7];

  if (!self->_isSwitchingActivePairedDevice)
  {
    if (v11)
    {
      objc_initWeak(buf, self);
      self->_isSwitchingActivePairedDevice = 1;
      v12 = +[NRPairedDeviceRegistry sharedInstance];
      v16 = _NSConcreteStackBlock;
      v17 = 3221225472;
      v18 = sub_100003FAC;
      v19 = &unk_100018588;
      objc_copyWeak(&v21, buf);
      v20 = v11;
      [v12 setActivePairedDevice:v20 isMagicSwitch:1 operationHasCompleted:&v16];

      [(MagicSwitchEnablerCompanion *)self updateState:v16];
      objc_destroyWeak(&v21);
      objc_destroyWeak(buf);
    }

    else
    {
      v13 = qword_100021420;
      if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        v15 = [v7 UUIDString];
        *buf = 138412290;
        v23 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "MagicSwitchEnabler --- Failed to resolve the NRDevice associated with Bluetooth ID: (%@)", buf, 0xCu);
      }
    }
  }
}

- (void)initialSyncDidCompleteForDevice:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "No device", &v10, 2u);
    }
  }

  v6 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NRDevicePropertyPairingID;
    v8 = v6;
    v9 = [v4 valueForProperty:v7];
    v10 = 138412290;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "MagicSwitchEnabler --- Received initial sync did complete callback for device: (%@)", &v10, 0xCu);
  }

  [(MagicSwitchEnablerCompanion *)self updateState];
}

- (void)activeDeviceAssertionStateDidChange
{
  v3 = +[MagicSwitchEnabler sharedInstance];
  v4 = [v3 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000428C;
  block[3] = &unk_100018538;
  block[4] = self;
  dispatch_async(v4, block);
}

@end