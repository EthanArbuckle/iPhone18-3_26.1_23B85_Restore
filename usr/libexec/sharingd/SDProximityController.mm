@interface SDProximityController
+ (SDProximityController)sharedController;
- (SDProximityController)init;
- (int64_t)_deviceToPreset:(id)preset;
- (unint64_t)checkDeviceRegion:(id)region;
- (void)_newDeviceOrRegion:(id)region region:(id)a4;
- (void)_notifyRegionLost:(id)lost;
- (void)_removeDevice:(id)device;
- (void)_runSession;
- (void)_triggerDeviceProximity:(id)proximity;
- (void)clearDeviceList;
- (void)notifyDeviceLost:(id)lost;
- (void)restart;
- (void)sender:(id)sender _notifyBluetoothSample:(id)sample withId:(id)id forType:(unint64_t)type;
- (void)sender:(id)sender notifyBluetoothSample:(id)sample;
- (void)sender:(id)sender notifyBluetoothSample:(id)sample forType:(unint64_t)type;
- (void)session:(id)session didDiscoverNearbyObject:(id)object;
- (void)session:(id)session didFailWithError:(id)error;
- (void)session:(id)session didInvalidateWithError:(id)error;
- (void)session:(id)session didUpdateNearbyObjects:(id)objects;
- (void)session:(id)session object:(id)object didUpdateRegion:(id)region previousRegion:(id)previousRegion;
- (void)sessionBegan;
- (void)sessionSuspensionEnded:(id)ended;
- (void)sessionWasSuspended:(id)suspended;
@end

@implementation SDProximityController

+ (SDProximityController)sharedController
{
  if (qword_100989BE8 != -1)
  {
    sub_1000C8ACC();
  }

  v3 = qword_100989BF0;

  return v3;
}

- (SDProximityController)init
{
  v11.receiver = self;
  v11.super_class = SDProximityController;
  v2 = [(SDProximityController *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(NSMutableDictionary);
    deviceIdToDelegate = v3->_deviceIdToDelegate;
    v3->_deviceIdToDelegate = v4;

    v6 = objc_alloc_init(NSMutableDictionary);
    deviceIdToPairingAgentDeviceID = v3->_deviceIdToPairingAgentDeviceID;
    v3->_deviceIdToPairingAgentDeviceID = v6;

    v8 = objc_alloc_init(NSMutableDictionary);
    deviceIdToCurrentPreset = v3->_deviceIdToCurrentPreset;
    v3->_deviceIdToCurrentPreset = v8;

    *&v3->_currentRestartDelay = vdupq_n_s64(3uLL);
    v3->_currentRestartCount = 0;
    [(SDProximityController *)v3 _runSession];
  }

  return v3;
}

- (void)sender:(id)sender notifyBluetoothSample:(id)sample
{
  sampleCopy = sample;
  senderCopy = sender;
  if ([sampleCopy deviceActionType] == 36 || objc_msgSend(sampleCopy, "deviceActionType") == 90)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  deviceIdentifier = [sampleCopy deviceIdentifier];
  [(SDProximityController *)self sender:senderCopy _notifyBluetoothSample:sampleCopy withId:deviceIdentifier forType:v7];
}

- (void)sender:(id)sender notifyBluetoothSample:(id)sample forType:(unint64_t)type
{
  senderCopy = sender;
  sampleCopy = sample;
  v9 = sampleCopy;
  if (type <= 4 && ((1 << type) & 0x1A) != 0)
  {
    deviceIdentifier = [sampleCopy deviceIdentifier];
    [(SDProximityController *)self sender:senderCopy _notifyBluetoothSample:v9 withId:deviceIdentifier forType:type];
  }
}

- (void)notifyDeviceLost:(id)lost
{
  lostCopy = lost;
  os_unfair_lock_lock(&self->_lock);
  v5 = sub_100030628();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    allKeys = [(NSMutableDictionary *)self->_deviceIdToDelegate allKeys];
    v8 = 138412546;
    v9 = lostCopy;
    v10 = 2112;
    v11 = allKeys;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "removing device: %@ from list: %@", &v8, 0x16u);
  }

  os_unfair_lock_unlock(&self->_lock);
  deviceIdentifier = [lostCopy deviceIdentifier];
  [(SDProximityController *)self _removeDevice:deviceIdentifier];
}

- (void)clearDeviceList
{
  os_unfair_lock_lock(&self->_lock);
  v3 = sub_100030628();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    deviceIdToCurrentPreset = self->_deviceIdToCurrentPreset;
    v5 = 138412290;
    v6 = deviceIdToCurrentPreset;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "clearing deviceIdToCurrentPreset: %@", &v5, 0xCu);
  }

  [(NSMutableDictionary *)self->_deviceIdToCurrentPreset removeAllObjects];
  [(NSMutableDictionary *)self->_deviceIdToDelegate removeAllObjects];
  [(NSMutableDictionary *)self->_deviceIdToPairingAgentDeviceID removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)sender:(id)sender _notifyBluetoothSample:(id)sample withId:(id)id forType:(unint64_t)type
{
  senderCopy = sender;
  sampleCopy = sample;
  idCopy = id;
  rssi = [sampleCopy rssi];
  if ((rssi & 0x80000000) == 0)
  {
    goto LABEL_30;
  }

  v14 = rssi;
  os_unfair_lock_lock(&self->_lock);
  deviceIdToDelegate = self->_deviceIdToDelegate;
  deviceIdentifier = [sampleCopy deviceIdentifier];
  [(NSMutableDictionary *)deviceIdToDelegate setObject:senderCopy forKeyedSubscript:deviceIdentifier];

  pairingAgentDeviceIdentifier = [sampleCopy pairingAgentDeviceIdentifier];
  deviceIdToPairingAgentDeviceID = self->_deviceIdToPairingAgentDeviceID;
  deviceIdentifier2 = [sampleCopy deviceIdentifier];
  [(NSMutableDictionary *)deviceIdToPairingAgentDeviceID setObject:pairingAgentDeviceIdentifier forKeyedSubscript:deviceIdentifier2];

  os_unfair_lock_unlock(&self->_lock);
  channel = [sampleCopy channel];
  if (type > 2)
  {
    if (type == 3)
    {
      v41 = [NIBluetoothSample alloc];
      v42 = v14;
      uUIDString = [idCopy UUIDString];
      model = [sampleCopy model];
      v24 = [v41 initWithRSSI:uUIDString identifier:model model:channel channel:v42 machContinuousTimeSeconds:mach_continuous_time()];

      os_unfair_lock_lock(&self->_lock);
      sessionsByRegion = self->_sessionsByRegion;
      v26 = &off_10090B9B8;
      goto LABEL_20;
    }

    if (type == 4)
    {
      v27 = [NIBluetoothSample alloc];
      v28 = v14;
      uUIDString2 = [idCopy UUIDString];
      model2 = [sampleCopy model];
      v24 = [v27 initWithRSSI:uUIDString2 identifier:model2 model:channel channel:v28 machContinuousTimeSeconds:mach_continuous_time()];

      os_unfair_lock_lock(&self->_lock);
      v31 = [(NSDictionary *)self->_sessionsByRegion objectForKeyedSubscript:&off_10090B9A0];
      os_unfair_lock_unlock(&self->_lock);
      v32 = sub_100030628();
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
LABEL_27:

        goto LABEL_28;
      }

      *v58 = 138412290;
      *&v58[4] = idCopy;
      v33 = "Notify Bluetooth Sample with ID for ObjectSetup: %@, SDProximityController forwarding sample to NI";
LABEL_26:
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v33, v58, 0xCu);
      goto LABEL_27;
    }
  }

  else
  {
    if (type == 1)
    {
      v37 = [NIBluetoothSample alloc];
      v38 = v14;
      uUIDString3 = [idCopy UUIDString];
      model3 = [sampleCopy model];
      v24 = [v37 initWithRSSI:uUIDString3 identifier:model3 model:channel channel:v38 machContinuousTimeSeconds:mach_continuous_time()];

      os_unfair_lock_lock(&self->_lock);
      sessionsByRegion = self->_sessionsByRegion;
      v26 = &off_10090B988;
      goto LABEL_20;
    }

    if (type == 2)
    {
      v21 = [NIBluetoothSample alloc];
      v22 = v14;
      uUIDString4 = [idCopy UUIDString];
      v24 = [v21 initWithRSSI:uUIDString4 identifier:@"DovePeace" model:channel channel:v22 machContinuousTimeSeconds:mach_continuous_time()];

      os_unfair_lock_lock(&self->_lock);
      sessionsByRegion = self->_sessionsByRegion;
      v26 = &off_10090B9A0;
LABEL_20:
      v31 = [(NSDictionary *)sessionsByRegion objectForKeyedSubscript:v26];
      os_unfair_lock_unlock(&self->_lock);
LABEL_28:
      devicePresenceNotifier = [v31 devicePresenceNotifier];
      [devicePresenceNotifier notifyBluetoothSample:v24];

LABEL_29:
      goto LABEL_30;
    }
  }

  model4 = [sampleCopy model];
  if (([model4 isEqual:{@"AirPods1, 1"}] & 1) != 0 || (objc_msgSend(model4, "isEqual:", @"AirPods1,3") & 1) != 0 || objc_msgSend(model4, "isEqual:", @"AirPodsPro1,1"))
  {
  }

  else
  {
    v45 = [[SFHeadphoneProduct alloc] initWithBluetoothModel:model4];
    isAirPods = [v45 isAirPods];

    if (!isAirPods)
    {

      goto LABEL_23;
    }
  }

  v35 = _os_feature_enabled_impl();

  if (!v35)
  {
LABEL_23:
    v47 = [NIBluetoothSample alloc];
    v48 = v14;
    uUIDString5 = [idCopy UUIDString];
    model5 = [sampleCopy model];
    v24 = [v47 initWithRSSI:uUIDString5 identifier:model5 model:channel channel:v48 machContinuousTimeSeconds:mach_continuous_time()];

    v51 = [(SDProximityController *)self _deviceToPreset:sampleCopy];
    if (!v51)
    {
      v31 = sub_100030628();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        deviceActionType = [sampleCopy deviceActionType];
        v57 = [sampleCopy description];
        *v58 = 67109378;
        *&v58[4] = deviceActionType;
        *&v58[8] = 2112;
        *&v58[10] = v57;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "unexpected action type: %d for device: %@", v58, 0x12u);
      }

      goto LABEL_29;
    }

    v52 = v51;
    os_unfair_lock_lock(&self->_lock);
    v53 = self->_sessionsByRegion;
    v54 = [NSNumber numberWithInteger:v52];
    v31 = [(NSDictionary *)v53 objectForKeyedSubscript:v54];

    os_unfair_lock_unlock(&self->_lock);
    v32 = sub_100030628();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    *v58 = 138412290;
    *&v58[4] = idCopy;
    v33 = "Notify Bluetooth Sample with ID: %@, SDProximityController forwarding sample to NI";
    goto LABEL_26;
  }

  v36 = sub_100030628();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    *v58 = 138412290;
    *&v58[4] = idCopy;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "Notify Bluetooth Sample with ID: %@, SDProximityController not sending to NI", v58, 0xCu);
  }

LABEL_30:
}

- (unint64_t)checkDeviceRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  deviceIdentifier = [regionCopy deviceIdentifier];

  if (deviceIdentifier)
  {
    deviceIdToCurrentPreset = self->_deviceIdToCurrentPreset;
    deviceIdentifier2 = [regionCopy deviceIdentifier];
    v8 = [(NSMutableDictionary *)deviceIdToCurrentPreset objectForKeyedSubscript:deviceIdentifier2];
    v9 = [v8 isEqual:&off_10090B988];

    if (v9)
    {
      deviceIdentifier = 1;
    }

    else
    {
      v10 = self->_deviceIdToCurrentPreset;
      deviceIdentifier3 = [regionCopy deviceIdentifier];
      v12 = [(NSMutableDictionary *)v10 objectForKeyedSubscript:deviceIdentifier3];
      v13 = [v12 isEqual:&off_10090B9A0];

      if (v13)
      {
        deviceIdentifier = 2;
      }

      else
      {
        v14 = self->_deviceIdToCurrentPreset;
        deviceIdentifier4 = [regionCopy deviceIdentifier];
        v16 = [(NSMutableDictionary *)v14 objectForKeyedSubscript:deviceIdentifier4];
        v17 = [v16 isEqual:&off_10090B9D0];

        if (v17)
        {
          deviceIdentifier = 3;
        }

        else
        {
          v18 = self->_deviceIdToCurrentPreset;
          deviceIdentifier5 = [regionCopy deviceIdentifier];
          v20 = [(NSMutableDictionary *)v18 objectForKeyedSubscript:deviceIdentifier5];
          v21 = [v20 isEqual:&off_10090B9B8];

          if (v21)
          {
            deviceIdentifier = 4;
          }

          else
          {
            deviceIdentifier = 0;
          }
        }
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return deviceIdentifier;
}

- (void)_notifyRegionLost:(id)lost
{
  lostCopy = lost;
  v5 = [NSUUID alloc];
  deviceIdentifier = [lostCopy deviceIdentifier];

  v7 = [v5 initWithUUIDString:deviceIdentifier];
  [(SDProximityController *)self _removeDevice:v7];
}

- (void)_removeDevice:(id)device
{
  deviceCopy = device;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_deviceIdToDelegate removeObjectForKey:deviceCopy];
  [(NSMutableDictionary *)self->_deviceIdToPairingAgentDeviceID removeObjectForKey:deviceCopy];
  v5 = sub_100030628();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    deviceIdToCurrentPreset = self->_deviceIdToCurrentPreset;
    v9 = 138412546;
    v10 = deviceCopy;
    v11 = 2112;
    v12 = deviceIdToCurrentPreset;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "removing devicepresetid: %@ from presetidlist: %@", &v9, 0x16u);
  }

  v7 = sub_100030628();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [NSNumber numberWithUnsignedInteger:[(NSMutableDictionary *)self->_deviceIdToDelegate count]];
    v9 = 138412546;
    v10 = deviceCopy;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "removing devicepresetid: %@ from delegatelist size: %@", &v9, 0x16u);
  }

  [(NSMutableDictionary *)self->_deviceIdToCurrentPreset removeObjectForKey:deviceCopy];
  [(NSMutableDictionary *)self->_deviceIdToDelegate removeObjectForKey:deviceCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_triggerDeviceProximity:(id)proximity
{
  proximityCopy = proximity;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_deviceIdToDelegate objectForKeyedSubscript:proximityCopy];
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    os_unfair_lock_lock(&self->_lock);
    v6 = [(NSMutableDictionary *)self->_deviceIdToPairingAgentDeviceID objectForKeyedSubscript:proximityCopy];
    os_unfair_lock_unlock(&self->_lock);
    [v5 proximityDeviceDidTrigger:v6];
  }

  else
  {
    v7 = sub_100030628();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = proximityCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Don't have a delegate to call for device with identifier: %@", &v8, 0xCu);
    }
  }
}

- (void)_newDeviceOrRegion:(id)region region:(id)a4
{
  v6 = a4;
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v8 = [NSUUID alloc];
  deviceIdentifier = [regionCopy deviceIdentifier];

  v12 = [v8 initWithUUIDString:deviceIdentifier];
  devicePresencePreset = [v6 devicePresencePreset];

  v11 = [NSNumber numberWithInteger:devicePresencePreset];
  [(NSMutableDictionary *)self->_deviceIdToCurrentPreset setObject:v11 forKeyedSubscript:v12];

  os_unfair_lock_unlock(&self->_lock);
  [(SDProximityController *)self _triggerDeviceProximity:v12];
}

- (void)_runSession
{
  v53[0] = &off_10090B988;
  v3 = objc_alloc_init(NISession);
  v54[0] = v3;
  v53[1] = &off_10090B9A0;
  v4 = objc_alloc_init(NISession);
  v54[1] = v4;
  v53[2] = &off_10090B9D0;
  v5 = objc_alloc_init(NISession);
  v54[2] = v5;
  v53[3] = &off_10090B9B8;
  v6 = objc_alloc_init(NISession);
  v54[3] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:4];

  os_unfair_lock_lock(&self->_lock);
  v8 = [v7 copy];
  sessionsByRegion = self->_sessionsByRegion;
  self->_sessionsByRegion = v8;

  v10 = objc_alloc_init(NISession);
  niAirPodsSession = self->_niAirPodsSession;
  self->_niAirPodsSession = v10;

  v12 = +[NSMutableArray array];
  allActiveSessions = self->_allActiveSessions;
  self->_allActiveSessions = v12;

  os_unfair_lock_unlock(&self->_lock);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v14 = v7;
  v15 = [v14 countByEnumeratingWithState:&v44 objects:v52 count:16];
  v40 = v14;
  if (v15)
  {
    v17 = v15;
    v41 = *v45;
    *&v16 = 138412546;
    v39 = v16;
    do
    {
      v18 = 0;
      do
      {
        if (*v45 != v41)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v44 + 1) + 8 * v18);
        v20 = [[NIRegionPredicate alloc] initWithName:@"sensorMax" devicePresencePreset:5];
        v21 = [v14 objectForKeyedSubscript:v19];
        [(NSMutableArray *)self->_allActiveSessions addObject:v21];
        intValue = [v19 intValue];
        v23 = 0;
        if (intValue > 2)
        {
          if (intValue == 3)
          {
            v24 = [NIRegionPredicate alloc];
            v25 = @"desk";
            v26 = 3;
          }

          else
          {
            if (intValue != 6)
            {
              goto LABEL_16;
            }

            v24 = [NIRegionPredicate alloc];
            v25 = @"superImmediate";
            v26 = 6;
          }
        }

        else if (intValue == 1)
        {
          v24 = [NIRegionPredicate alloc];
          v25 = @"immediate";
          v26 = 1;
        }

        else
        {
          if (intValue != 2)
          {
            goto LABEL_16;
          }

          v24 = [NIRegionPredicate alloc];
          v25 = @"near";
          v26 = 2;
        }

        v23 = [v24 initWithName:v25 devicePresencePreset:{v26, v39}];
LABEL_16:
        v27 = [NIDevicePresenceConfiguration alloc];
        v43 = 0;
        v28 = [v27 initWithInnerBoundary:v23 outerBoundary:v20 error:&v43];
        v29 = v43;
        [v28 setAllowedDevices:0];
        [(NISession *)v21 setDelegate:self];
        v30 = sub_100030628();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [v28 description];
          *buf = v39;
          v49 = v21;
          v50 = 2112;
          v51 = v31;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "starting nisession:%@, with configuration:%@", buf, 0x16u);

          v14 = v40;
        }

        [(NISession *)v21 runWithConfiguration:v28];
        v18 = v18 + 1;
      }

      while (v17 != v18);
      v17 = [v14 countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v17);
  }

  if (_os_feature_enabled_impl())
  {
    v32 = [[NIRegionPredicate alloc] initWithName:@"immediate" devicePresencePreset:1];
    v33 = [[NIRegionPredicate alloc] initWithName:@"sensorMax" devicePresencePreset:5];
    v42 = 0;
    v34 = [[NIDevicePresenceConfiguration alloc] initWithInnerBoundary:v32 outerBoundary:v33 error:&v42];
    v35 = v42;
    [v34 setAllowedDevices:8];
    [(NISession *)self->_niAirPodsSession setDelegate:self];
    [(NSMutableArray *)self->_allActiveSessions addObject:self->_niAirPodsSession];
    v36 = sub_100030628();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = self->_niAirPodsSession;
      v38 = [v34 description];
      *buf = 138412546;
      v49 = v37;
      v50 = 2112;
      v51 = v38;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "starting nisession:%@, with configuration:%@", buf, 0x16u);
    }

    [(NISession *)self->_niAirPodsSession runWithConfiguration:v34];
    v14 = v40;
  }
}

- (int64_t)_deviceToPreset:(id)preset
{
  presetCopy = preset;
  if ([presetCopy deviceActionType] == 24 || objc_msgSend(presetCopy, "deviceActionType") == 5)
  {
    goto LABEL_3;
  }

  deviceActionType = [presetCopy deviceActionType];
  v4 = 1;
  if (deviceActionType != 11 && deviceActionType != 33)
  {
    if ([presetCopy deviceActionType] == 36 || objc_msgSend(presetCopy, "deviceActionType") == 90 || objc_msgSend(presetCopy, "needsSetup") && !objc_msgSend(presetCopy, "deviceActionType"))
    {
      goto LABEL_3;
    }

    model = [presetCopy model];
    if (([model isEqual:{@"AirPods1, 1"}] & 1) != 0 || (objc_msgSend(model, "isEqual:", @"AirPods1,3") & 1) != 0 || (objc_msgSend(model, "isEqual:", @"AirPodsPro1,1") & 1) != 0 || (objc_msgSend(model, "isEqual:", @"PowerbeatsPro1,1") & 1) != 0 || objc_msgSend(model, "isEqual:", @"Device1,8202"))
    {

LABEL_3:
      v4 = 1;
      goto LABEL_4;
    }

    v8 = [[SFHeadphoneProduct alloc] initWithBluetoothModel:model];
    showsStatus = [v8 showsStatus];

    if (showsStatus)
    {
      goto LABEL_3;
    }

    model2 = [presetCopy model];
    v11 = [&off_10090FF80 containsObject:model2];

    if (v11)
    {
      v4 = 2;
    }

    else
    {
      v4 = ([presetCopy deviceFlags] >> 11) & 1;
    }
  }

LABEL_4:

  return v4;
}

- (void)sessionBegan
{
  os_unfair_lock_lock(&self->_lock);
  v3 = sub_100030628();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    currentRestartDelay = self->_currentRestartDelay;
    v5 = 134217984;
    v6 = currentRestartDelay;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "session started, resetting previous delay: %llu", &v5, 0xCu);
  }

  self->_currentRestartDelay = self->_defaultRestartDelay;
  os_unfair_lock_unlock(&self->_lock);
}

- (void)restart
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_currentRestartCount + 1;
  self->_currentRestartCount = v3;
  if (v3 >= [(NSMutableArray *)self->_allActiveSessions count])
  {
    sessionsByRegion = self->_sessionsByRegion;
    self->_sessionsByRegion = 0;

    niAirPodsSession = self->_niAirPodsSession;
    self->_niAirPodsSession = 0;

    allActiveSessions = self->_allActiveSessions;
    self->_allActiveSessions = 0;

    self->_currentRestartCount = 0;
    currentRestartDelay = self->_currentRestartDelay;
    self->_currentRestartDelay = 2 * currentRestartDelay;
    os_unfair_lock_unlock(&self->_lock);
    v11 = sub_100030628();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v16 = currentRestartDelay;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "restarting session with delay: %llu (s)", buf, 0xCu);
    }

    v12 = dispatch_time(0, 1000000000 * currentRestartDelay);
    v13 = SFMainQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C8594;
    block[3] = &unk_1008CDEA0;
    block[4] = self;
    dispatch_after(v12, v13, block);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v4 = sub_100030628();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      currentRestartCount = self->_currentRestartCount;
      v6 = [(NSDictionary *)self->_sessionsByRegion count];
      *buf = 134218240;
      v16 = currentRestartCount;
      v17 = 2048;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "restart count is: %llu out of %lu", buf, 0x16u);
    }
  }
}

- (void)session:(id)session didUpdateNearbyObjects:(id)objects
{
  v4 = sub_100030628();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "didUpdateNearbyObjects", v5, 2u);
  }
}

- (void)session:(id)session didDiscoverNearbyObject:(id)object
{
  objectCopy = object;
  v5 = sub_100030628();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    deviceIdentifier = [objectCopy deviceIdentifier];
    v7 = 136315138;
    uTF8String = [deviceIdentifier UTF8String];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "didDiscoverNearbyObject object: %s", &v7, 0xCu);
  }
}

- (void)session:(id)session object:(id)object didUpdateRegion:(id)region previousRegion:(id)previousRegion
{
  objectCopy = object;
  regionCopy = region;
  v10 = sub_100030628();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    deviceIdentifier = [objectCopy deviceIdentifier];
    uTF8String = [deviceIdentifier UTF8String];
    v13 = [regionCopy description];
    v14 = 136315394;
    v15 = uTF8String;
    v16 = 2080;
    uTF8String2 = [v13 UTF8String];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "didUpdateRegion object: %s newRegion: %s", &v14, 0x16u);
  }

  if (regionCopy && [regionCopy devicePresencePreset] != 5)
  {
    [(SDProximityController *)self _newDeviceOrRegion:objectCopy region:regionCopy];
  }

  else
  {
    [(SDProximityController *)self _notifyRegionLost:objectCopy];
  }
}

- (void)session:(id)session didFailWithError:(id)error
{
  errorCopy = error;
  v6 = sub_100030628();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = errorCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "didFailWithError error: %@", &v7, 0xCu);
  }

  [(SDProximityController *)self restart];
}

- (void)session:(id)session didInvalidateWithError:(id)error
{
  errorCopy = error;
  v6 = sub_100030628();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = errorCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "didInvalidateWithError  error: %@", &v7, 0xCu);
  }

  [(SDProximityController *)self restart];
}

- (void)sessionWasSuspended:(id)suspended
{
  v3 = sub_100030628();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "sessionWasSuspended waiting for ended suspension to resume. This should happen when bt is toggled back on", v4, 2u);
  }
}

- (void)sessionSuspensionEnded:(id)ended
{
  v4 = sub_100030628();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sessionSuspensionEnded attempting to resume", v5, 2u);
  }

  [(SDProximityController *)self restart];
}

@end