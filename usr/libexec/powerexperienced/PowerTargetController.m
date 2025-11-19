@interface PowerTargetController
+ (id)sharedInstance;
- (BOOL)isActiveWarm;
- (BOOL)isChargingCoolOff;
- (BOOL)isChargingTPLite;
- (BOOL)isChargingWarm;
- (BOOL)isDefaultCharging;
- (BOOL)isDeviceInUse;
- (BOOL)isHighSOCCharging;
- (BOOL)isOBCTopOff;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)shouldOverrideCPMMode;
- (PowerTargetController)init;
- (unint64_t)getDeviceInUseReasons;
- (void)clearState;
- (void)evaluatePowerTargets;
- (void)logStatusToPowerLog;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)registerForTrial;
- (void)removeMitigations;
- (void)restoreState;
- (void)saveState;
- (void)setDefaultTargets;
- (void)start;
- (void)updateClients;
- (void)updateTrialParameters;
@end

@implementation PowerTargetController

+ (id)sharedInstance
{
  if (qword_100036CB0 != -1)
  {
    sub_100019BE8();
  }

  v3 = qword_100036CA8;

  return v3;
}

- (void)evaluatePowerTargets
{
  if (![(PowerTargetController *)self supportedPlatform]|| ![(PowerTargetController *)self enable])
  {
    return;
  }

  v3 = [(PowerTargetController *)self resourceManager];
  v4 = [v3 resourceHints];

  v5 = [(PowerTargetController *)self deviceContext];
  v6 = [v5 objectForKeyedSubscript:@"kWirelessChargerContext"];
  v7 = [v6 BOOLValue];

  v8 = [v4 objectForKeyedSubscript:@"USBDeviceMode"];
  v9 = [v8 state];
  v10 = [v4 objectForKeyedSubscript:@"DataMigrationInProgress"];

  if ([v10 state] == 1)
  {
    v11 = qword_100036CB8;
    if (os_log_type_enabled(qword_100036CB8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "DataMigration in progress - not applying any power target mitigations", &v26, 2u);
    }

    v12 = 0;
  }

  else
  {
    if ([(PowerTargetController *)self isActiveWarm])
    {
      v14 = [(PowerTargetController *)self currentMitigation]== 1;
      v12 = 1;
      goto LABEL_18;
    }

    if ([(PowerTargetController *)self isHighSOCCharging])
    {
      v12 = 7;
    }

    else if ([(PowerTargetController *)self isOBCTopOff])
    {
      v12 = 5;
    }

    else if ([(PowerTargetController *)self isChargingCoolOff])
    {
      v12 = 4;
    }

    else if ([(PowerTargetController *)self isChargingWarm])
    {
      v12 = 6;
    }

    else if ([(PowerTargetController *)self isDefaultCharging])
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }
  }

  if (MGGetBoolAnswer() && ![(PowerTargetController *)self ignoreUSBDeviceMode]&& v9 == 1)
  {
    v13 = qword_100036CB8;
    if (os_log_type_enabled(qword_100036CB8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "USBDeviceMode is active. Not applying any power budgets", &v26, 2u);
    }

    v14 = [(PowerTargetController *)self currentMitigation]== 0;
    goto LABEL_14;
  }

  v14 = v12 == [(PowerTargetController *)self currentMitigation];
  if (!v12)
  {
LABEL_14:
    [(PowerTargetController *)self removeMitigations];
    [(PowerTargetController *)self clearState];
    [(PowerTargetController *)self setCurrentMitigation:0];
    v15 = qword_100036CB8;
    if (os_log_type_enabled(qword_100036CB8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No active mitigations", &v26, 2u);
    }

    goto LABEL_39;
  }

LABEL_18:
  if (v12 != [(PowerTargetController *)self currentMitigation])
  {
    [(PowerTargetController *)self removeMitigations];
    [(PowerTargetController *)self setCurrentMitigation:v12];
    if (v12 > 4)
    {
      if (v12 == 5)
      {
        v18 = self;
        v17 = 4;
        goto LABEL_35;
      }

      if (v12 != 6)
      {
        v18 = self;
        v17 = 5;
        goto LABEL_35;
      }

      [(PowerTargetController *)self updatePackagePowerTargets:1 options:[(PowerTargetController *)self prePickupWarm]];
      if (!v7)
      {
        goto LABEL_36;
      }

      v24 = [(PowerTargetController *)self prePickupWarm];
      if (v24 == [(PowerTargetController *)self wirelessWarm])
      {
        goto LABEL_36;
      }

      v25 = qword_100036CB8;
      if (os_log_type_enabled(qword_100036CB8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Wireless Charger has different targets", &v26, 2u);
      }

      v16 = [(PowerTargetController *)self wirelessWarm];
    }

    else
    {
      if (v12 == 1)
      {
        [(PowerTargetController *)self updateBGUtilityPowerTargets:1];
LABEL_36:
        v19 = qword_100036CB8;
        if (os_log_type_enabled(qword_100036CB8, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v19;
          v21 = sub_100016438([(PowerTargetController *)self currentMitigation]);
          v26 = 138412290;
          v27 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "New mitigation %@", &v26, 0xCu);
        }

        [(PowerTargetController *)self saveState];
        goto LABEL_39;
      }

      if (v12 == 2)
      {
        [(PowerTargetController *)self updatePackagePowerTargets:1 options:[(PowerTargetController *)self prePickupDefault]];
        if (!v7)
        {
          goto LABEL_36;
        }

        v22 = [(PowerTargetController *)self prePickupDefault];
        if (v22 == [(PowerTargetController *)self wirelessDefault])
        {
          goto LABEL_36;
        }

        v23 = qword_100036CB8;
        if (os_log_type_enabled(qword_100036CB8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v26) = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Wireless Charger has different targets", &v26, 2u);
        }

        v16 = [(PowerTargetController *)self wirelessDefault];
      }

      else
      {
        v16 = [(PowerTargetController *)self prePickupWarm];
      }
    }

    v17 = v16;
    v18 = self;
LABEL_35:
    [(PowerTargetController *)v18 updatePackagePowerTargets:1 options:v17];
    goto LABEL_36;
  }

LABEL_39:
  if (!v14)
  {
    [(PowerTargetController *)self updateClients];
  }
}

- (BOOL)isActiveWarm
{
  v3 = [(PowerTargetController *)self deviceContext];
  v4 = [v3 currentContext];

  v5 = [v4 objectForKeyedSubscript:@"kEarlyThermalContext"];
  v6 = [v5 BOOLValue];

  v7 = [(PowerTargetController *)self isDeviceInUse]& v6;
  if (v7 == 1)
  {
    v8 = qword_100036CB8;
    if (os_log_type_enabled(qword_100036CB8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Device in use and warm", v10, 2u);
    }
  }

  return v7;
}

- (BOOL)isDeviceInUse
{
  v3 = [(PowerTargetController *)self deviceContext];
  v34 = [v3 currentContext];

  v4 = [(PowerTargetController *)self resourceManager];
  v5 = [v4 resourceHints];

  v6 = [v5 objectForKeyedSubscript:@"Display"];
  v7 = [v6 state];
  v8 = [v5 objectForKeyedSubscript:@"CarPlay"];

  v9 = [v8 state];
  v10 = [v5 objectForKeyedSubscript:@"Camera"];

  v33 = [v10 state];
  v11 = [v5 objectForKeyedSubscript:@"PersonalHotspot"];

  v12 = [v11 state];
  v13 = [v5 objectForKeyedSubscript:@"AudioSession"];

  v14 = [v13 state];
  v15 = [v5 objectForKeyedSubscript:@"PhoneCall"];

  v16 = [v15 state];
  v17 = [v5 objectForKeyedSubscript:@"OnenessSession"];

  v18 = [v17 state];
  v19 = [v5 objectForKeyedSubscript:@"SiriAudio"];

  v20 = [v19 state];
  v32 = v7;
  v27 = v7 == 101 || v9 == 1 || v33 == 1 || v12 == 1 || v14 == 1 || v16 == 1 || v18 == 1 || v20 == 1;
  v28 = v27;
  if (v27)
  {
    v29 = v20;
    log = qword_100036CB8;
    if (os_log_type_enabled(qword_100036CB8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110912;
      v36 = v32 == 101;
      v37 = 1024;
      v38 = v9 == 1;
      v39 = 1024;
      v40 = v33 == 1;
      v41 = 1024;
      v42 = v12 == 1;
      v43 = 1024;
      v44 = v14 == 1;
      v45 = 1024;
      v46 = v16 == 1;
      v47 = 1024;
      v48 = v18 == 1;
      v49 = 1024;
      v50 = v29 == 1;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "inUse displayOn %d, carPlaySession %d, cameraActive %d, hotspotActive %d, audioSession %d, phoneCall %d, onenessActive %d, siriAudio %d", buf, 0x32u);
    }
  }

  return v28;
}

- (BOOL)isOBCTopOff
{
  if ([(PowerTargetController *)self isDeviceInUse])
  {
    return 0;
  }

  v4 = [(PowerTargetController *)self deviceContext];
  v5 = [v4 currentContext];

  v6 = [(PowerTargetController *)self resourceManager];
  v7 = [v6 resourceHints];

  v8 = [v5 objectForKeyedSubscript:@"kPluggedInContext"];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    v10 = [v7 objectForKeyedSubscript:@"OBCTopOff"];
    v3 = [v10 state] == 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isChargingCoolOff
{
  if ([(PowerTargetController *)self isDeviceInUse])
  {
    return 0;
  }

  v4 = [(PowerTargetController *)self deviceContext];
  v5 = [v4 currentContext];

  v6 = [v5 objectForKeyedSubscript:@"kPluggedInContext"];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = [v5 objectForKeyedSubscript:@"kEarlyThermalContext"];
    v9 = [v8 BOOLValue];

    v10 = [v5 objectForKeyedSubscript:@"kCSPNStateContext"];
    v11 = [v10 unsignedIntValue];

    v3 = 0;
    if (v11 == 2 && v9)
    {
      v12 = qword_100036CB8;
      if (os_log_type_enabled(qword_100036CB8, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Charging, cooloff and early thermal warning. ChargingCoolOff", v14, 2u);
      }

      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isChargingTPLite
{
  if ([(PowerTargetController *)self isDeviceInUse])
  {
    return 0;
  }

  v4 = [(PowerTargetController *)self deviceContext];
  v5 = [v4 currentContext];

  v6 = [v5 objectForKeyedSubscript:@"kPluggedInContext"];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = [v5 objectForKeyedSubscript:@"kThermalPressureContext"];
    v9 = [v8 unsignedIntValue];

    v10 = [(PowerTargetController *)self shouldOverrideCPMMode];
    v3 = 0;
    if (v10 && v9 >= 0xA)
    {
      v11 = qword_100036CB8;
      if (os_log_type_enabled(qword_100036CB8, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Charging, not in use and TP Light. ChargingTPLight", v13, 2u);
      }

      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isDefaultCharging
{
  if ([(PowerTargetController *)self isDeviceInUse])
  {
    return 0;
  }

  v4 = [(PowerTargetController *)self deviceContext];
  v5 = [v4 currentContext];

  v6 = [v5 objectForKeyedSubscript:@"kPluggedInContext"];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = [v5 objectForKeyedSubscript:@"kThermalPressureContext"];
    v9 = [v8 unsignedIntValue];

    v10 = [(PowerTargetController *)self shouldOverrideCPMMode];
    v3 = 0;
    if (v10 && !v9)
    {
      v11 = qword_100036CB8;
      if (os_log_type_enabled(qword_100036CB8, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Charging, not in use and no TP. Default charging", v13, 2u);
      }

      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)removeMitigations
{
  if ([(PowerTargetController *)self currentMitigation]== 1)
  {
    [(PowerTargetController *)self updateBGUtilityPowerTargets:0];
  }

  else if ([(PowerTargetController *)self currentMitigation])
  {
    [(PowerTargetController *)self updatePackagePowerTargets:0 options:0];
  }

  [(PowerTargetController *)self setCurrentMitigation:0];
}

- (void)clearState
{
  v3 = qword_100036CB8;
  if (os_log_type_enabled(qword_100036CB8, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clearing state", v6, 2u);
  }

  [(PowerTargetController *)self removeMitigations];
  v4 = [(PowerTargetController *)self defaults];
  [v4 removeObjectForKey:@"mitigation"];

  v5 = [(PowerTargetController *)self defaults];
  [v5 removeObjectForKey:@"mitigationDescription"];
}

- (BOOL)shouldOverrideCPMMode
{
  v2 = [(PowerTargetController *)self currentMode];
  v3 = [v2 isEqualToString:@"AcceleratedChargingMode"];

  return v3 ^ 1;
}

- (PowerTargetController)init
{
  v18.receiver = self;
  v18.super_class = PowerTargetController;
  v2 = [(PowerTargetController *)&v18 initWithMachServiceName:@"com.apple.powerexperienced.powertargetcontroller"];
  if (v2)
  {
    v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.powerexperienced.powertargetcontroller"];
    defaults = v2->_defaults;
    v2->_defaults = v3;

    v5 = +[DeviceContext sharedInstance];
    deviceContext = v2->_deviceContext;
    v2->_deviceContext = v5;

    v7 = +[ResourceManager sharedInstance];
    resourceManager = v2->_resourceManager;
    v2->_resourceManager = v7;

    v9 = +[SMCSensorExchangeHelper sharedInstance];
    smcHelper = v2->_smcHelper;
    v2->_smcHelper = v9;

    v11 = [(DeviceContext *)v2->_deviceContext objectForKeyedSubscript:@"kPlatformContext"];
    v2->_supportedPlatform = [v11 isEqual:@"iPhone"];

    v2->_enable = 1;
    supportedPlatform = v2->_supportedPlatform;
    v13 = qword_100036CB8;
    v14 = os_log_type_enabled(qword_100036CB8, OS_LOG_TYPE_DEFAULT);
    if (supportedPlatform)
    {
      if (v14)
      {
        *v17 = 0;
        v15 = "Init PowerTargetController";
LABEL_7:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v15, v17, 2u);
      }
    }

    else if (v14)
    {
      *v17 = 0;
      v15 = "PowerTargetController not supported on this platform";
      goto LABEL_7;
    }

    [(PowerTargetController *)v2 setDelegate:v2, *v17];
  }

  return v2;
}

- (void)start
{
  if ([(PowerTargetController *)self supportedPlatform])
  {
    [(PowerTargetController *)self activate];
    v3 = [(PowerTargetController *)self deviceContext];
    [v3 addObserver:self forKeyPath:@"currentContext" options:3 context:0];

    v4 = objc_alloc_init(ContextualPowerModesClient);
    v5 = sub_100001600();
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100015F10;
    v10[3] = &unk_10002CC10;
    v10[4] = self;
    [v4 registerWithIdentifier:@"PowerTargetController" queue:v5 callback:v10];

    [(PowerTargetController *)self setDefaultTargets];
    [(PowerTargetController *)self setCurrentMitigation:0];
    v6 = MKBDeviceUnlockedSinceBoot();
    v7 = qword_100036CB8;
    v8 = os_log_type_enabled(qword_100036CB8, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device has been unlocked since last boot. Restoring state", v9, 2u);
      }

      [(PowerTargetController *)self restoreState];
    }

    else
    {
      if (v8)
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device hasn't been unlocked since last boot. Clearing state", v9, 2u);
      }

      [(PowerTargetController *)self removeMitigations];
      [(PowerTargetController *)self clearState];
    }

    [(PowerTargetController *)self registerForTrial];
    [(PowerTargetController *)self setIgnoreUSBDeviceMode:0];
  }
}

- (void)setDefaultTargets
{
  [(PowerTargetController *)self setPrePickupDefault:3];
  [(PowerTargetController *)self setPrePickupWarm:2];
  [(PowerTargetController *)self setWirelessDefault:[(PowerTargetController *)self prePickupDefault]];
  [(PowerTargetController *)self setWirelessWarm:[(PowerTargetController *)self prePickupWarm]];
  LODWORD(v3) = 1028443341;
  [(PowerTargetController *)self setBgPowerTarget:v3];
  LODWORD(v4) = 1041865114;

  [(PowerTargetController *)self setUtilityPowerTarget:v4];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = sub_100001600();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016064;
  block[3] = &unk_10002C738;
  block[4] = self;
  dispatch_async(v7, block);
}

- (BOOL)isChargingWarm
{
  if ([(PowerTargetController *)self isDeviceInUse])
  {
    return 0;
  }

  v4 = [(PowerTargetController *)self deviceContext];
  v5 = [v4 currentContext];

  v6 = [v5 objectForKeyedSubscript:@"kPluggedInContext"];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = [v5 objectForKeyedSubscript:@"kEarlyThermalContext"];
    v9 = [v8 BOOLValue];

    v10 = [(PowerTargetController *)self shouldOverrideCPMMode];
    v3 = 0;
    if (v10 && v9)
    {
      v11 = qword_100036CB8;
      if (os_log_type_enabled(qword_100036CB8, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Charging, not in use and Early Thermal Warning. ChargingWarm", v13, 2u);
      }

      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isHighSOCCharging
{
  if ([(PowerTargetController *)self isDeviceInUse])
  {
    return 0;
  }

  v3 = [(PowerTargetController *)self deviceContext];
  v4 = [v3 objectForKeyedSubscript:@"kWirelessChargerContext"];
  v5 = [v4 BOOLValue];

  if (!v5)
  {
    return 0;
  }

  v6 = [(PowerTargetController *)self deviceContext];
  v7 = [v6 currentContext];

  v8 = [v7 objectForKeyedSubscript:@"kBatteryLevelContext"];
  v9 = [v8 intValue];

  if (v9 - 80 > 0x13)
  {
    v11 = 0;
  }

  else
  {
    v10 = [v7 objectForKeyedSubscript:@"kIsChargingContext"];

    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v12 = [v7 objectForKeyedSubscript:@"kBatteryPropertiesContext"];
      v13 = [v12 objectForKeyedSubscript:@"ChargerData"];
      v14 = [v13 objectForKeyedSubscript:@"NotChargingReason"];

      v11 = -[PowerTargetController isIgnorableNotChargingReason:](self, "isIgnorableNotChargingReason:", [v14 unsignedIntegerValue]);
      v15 = qword_100036CB8;
      if (os_log_type_enabled(qword_100036CB8, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "NotChargingReason %@", &v18, 0xCu);
      }
    }

    v16 = qword_100036CB8;
    if (os_log_type_enabled(qword_100036CB8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 67109120;
      LODWORD(v19) = v9;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "batterylevel is between 80 and 100. Applying 0.4W target, level %d", &v18, 8u);
    }
  }

  return v11;
}

- (void)saveState
{
  if ([(PowerTargetController *)self currentMitigation])
  {
    v3 = [(PowerTargetController *)self defaults];
    v4 = [NSNumber numberWithUnsignedInteger:[(PowerTargetController *)self currentMitigation]];
    [v3 setValue:v4 forKey:@"mitigation"];

    v6 = [(PowerTargetController *)self defaults];
    v5 = sub_100016438([(PowerTargetController *)self currentMitigation]);
    [v6 setValue:v5 forKey:@"mitigationDescription"];
  }
}

- (void)restoreState
{
  v3 = [(PowerTargetController *)self defaults];
  v4 = [v3 valueForKey:@"mitigation"];

  if (v4)
  {
    -[PowerTargetController setCurrentMitigation:](self, "setCurrentMitigation:", [v4 unsignedLongValue]);
    v5 = qword_100036CB8;
    if (os_log_type_enabled(qword_100036CB8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = 134217984;
      v8 = [(PowerTargetController *)self currentMitigation];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Restoring mitigation %lu", &v7, 0xCu);
    }
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____PowerTargetControllerProtocolPrivate];
  [v5 setExportedInterface:v6];

  v7 = [v5 valueForEntitlement:@"com.apple.powerexperience.powertargetcontroller.update"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v7 BOOLValue])
  {
    v8 = qword_100036CB8;
    if (os_log_type_enabled(qword_100036CB8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v13[0] = 67109120;
      v13[1] = [v5 processIdentifier];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PowerTargetControllerService: listener: accpeted new connection from pid %d", v13, 8u);
    }

    [v5 setExportedObject:self];
    [v5 resume];
    v10 = 1;
  }

  else
  {
    v11 = qword_100036CB8;
    if (os_log_type_enabled(qword_100036CB8, OS_LOG_TYPE_ERROR))
    {
      sub_100019BFC(v11, v5);
    }

    v10 = 0;
  }

  return v10;
}

- (unint64_t)getDeviceInUseReasons
{
  v3 = [(PowerTargetController *)self deviceContext];
  v4 = [v3 currentContext];

  v5 = [(PowerTargetController *)self resourceManager];
  v6 = [v5 resourceHints];

  v7 = [v6 objectForKeyedSubscript:@"Display"];
  v8 = [v7 state];
  v9 = [v6 objectForKeyedSubscript:@"CarPlay"];

  v10 = [v9 state];
  v11 = 2;
  if (v8 == 101)
  {
    v11 = 3;
  }

  if (v10 == 1)
  {
    v12 = v11;
  }

  else
  {
    v12 = v8 == 101;
  }

  v13 = [v6 objectForKeyedSubscript:@"Camera"];

  if ([v13 state] == 1)
  {
    v14 = v12 | 4;
  }

  else
  {
    v14 = v12;
  }

  v15 = [v6 objectForKeyedSubscript:@"PersonalHotspot"];

  if ([v15 state] == 1)
  {
    v14 |= 8uLL;
  }

  v16 = [v6 objectForKeyedSubscript:@"AudioSession"];

  if ([v16 state] == 1)
  {
    v14 |= 0x10uLL;
  }

  v17 = [v6 objectForKeyedSubscript:@"PhoneCall"];

  if ([v17 state] == 1)
  {
    v14 |= 0x20uLL;
  }

  v18 = [v6 objectForKeyedSubscript:@"OnenessSession"];

  if ([v18 state] == 1)
  {
    v14 |= 0x40uLL;
  }

  v19 = [v6 objectForKeyedSubscript:@"SiriAudio"];

  if ([v19 state] == 1)
  {
    v20 = v14 | 0x80;
  }

  else
  {
    v20 = v14;
  }

  return v20;
}

- (void)logStatusToPowerLog
{
  if (![(PowerTargetController *)self powerlogIdentifier])
  {
    [(PowerTargetController *)self setPowerlogIdentifier:PPSCreateTelemetryIdentifier()];
  }

  if ([(PowerTargetController *)self powerlogIdentifier])
  {
    v3 = [(PowerTargetController *)self getDeviceInUseReasons];
    v12[0] = @"status";
    v4 = [NSNumber numberWithBool:[(PowerTargetController *)self state]];
    v13[0] = v4;
    v12[1] = @"option";
    v5 = [NSNumber numberWithUnsignedLongLong:[(PowerTargetController *)self option]];
    v13[1] = v5;
    v12[2] = @"client";
    v6 = [NSNumber numberWithUnsignedInteger:v3];
    v13[2] = v6;
    v7 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];

    [(PowerTargetController *)self powerlogIdentifier];
    PPSSendTelemetry();
    v8 = qword_100036CB8;
    if (os_log_type_enabled(qword_100036CB8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Logging to powerlog %@", &v10, 0xCu);
    }
  }

  else
  {
    v9 = qword_100036CB8;
    if (os_log_type_enabled(qword_100036CB8, OS_LOG_TYPE_ERROR))
    {
      sub_10001871C(v9);
    }
  }
}

- (void)registerForTrial
{
  v3 = +[CPMTrialManager sharedInstance];
  [v3 addDelegate:self];
}

- (void)updateTrialParameters
{
  v3 = +[CPMTrialManager sharedInstance];
  v4 = [v3 factorWithName:@"RegulateEnable"];
  v5 = qword_100036CB8;
  v6 = os_log_type_enabled(qword_100036CB8, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = v5;
      v40 = 67109120;
      LODWORD(v41) = [v4 BOOLeanValue];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Trial:Regulate Enabled = %d", &v40, 8u);
    }

    -[PowerTargetController setEnable:](self, "setEnable:", [v4 BOOLeanValue]);
    if (![(PowerTargetController *)self enable])
    {
      [(PowerTargetController *)self removeMitigations];
    }
  }

  else
  {
    if (v6)
    {
      LOWORD(v40) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Trial:No trial value for disabling Regulate", &v40, 2u);
    }

    [(PowerTargetController *)self setEnable:1];
  }

  v8 = [v3 factorWithName:@"RegulatePackagePowerTargetDefault"];
  v9 = qword_100036CB8;
  v10 = os_log_type_enabled(qword_100036CB8, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = v9;
      v12 = [v8 longValue];
      v40 = 134217984;
      v41 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Trial:Regulate Package Power Target Default = %lld", &v40, 0xCu);
    }

    -[PowerTargetController setPrePickupDefault:](self, "setPrePickupDefault:", [v8 longValue]);
  }

  else if (v10)
  {
    LOWORD(v40) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Trial:No trial value for Regulate Default Power Target", &v40, 2u);
  }

  v13 = [v3 factorWithName:@"RegulatePackagePowerTargetWarm"];
  v14 = qword_100036CB8;
  v15 = os_log_type_enabled(qword_100036CB8, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      v16 = v14;
      v17 = [v13 longValue];
      v40 = 134217984;
      v41 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Trial:Regulate Package Power Target Warm = %lld", &v40, 0xCu);
    }

    -[PowerTargetController setPrePickupWarm:](self, "setPrePickupWarm:", [v13 longValue]);
  }

  else if (v15)
  {
    LOWORD(v40) = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Trial:No trial value for Regulate Warm Power Target", &v40, 2u);
  }

  v18 = [v3 factorWithName:@"RegulateUtilityTarget"];
  v19 = qword_100036CB8;
  v20 = os_log_type_enabled(qword_100036CB8, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (v20)
    {
      v21 = v19;
      [v18 doubleValue];
      v40 = 134217984;
      v41 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Trial:Regulate Utility Power Target = %f", &v40, 0xCu);
    }

    [v18 doubleValue];
    *&v23 = v23;
    [(PowerTargetController *)self setUtilityPowerTarget:v23];
  }

  else if (v20)
  {
    LOWORD(v40) = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Trial:No trial value for Regulate Utility Power Target", &v40, 2u);
  }

  v24 = [v3 factorWithName:@"RegulateBGTarget"];
  v25 = qword_100036CB8;
  v26 = os_log_type_enabled(qword_100036CB8, OS_LOG_TYPE_DEFAULT);
  if (v24)
  {
    if (v26)
    {
      v27 = v25;
      [v24 doubleValue];
      v40 = 134217984;
      v41 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Trial:Regulate BG Power Target = %f", &v40, 0xCu);
    }

    [v24 doubleValue];
    *&v29 = v29;
    [(PowerTargetController *)self setBgPowerTarget:v29];
  }

  else if (v26)
  {
    LOWORD(v40) = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Trial:No trial value for Regulate BG Power Target", &v40, 2u);
  }

  v30 = [v3 factorWithName:@"RegulateWirelessPowerTargetDefault"];
  v31 = qword_100036CB8;
  v32 = os_log_type_enabled(qword_100036CB8, OS_LOG_TYPE_DEFAULT);
  if (v30)
  {
    if (v32)
    {
      v33 = v31;
      v34 = [v30 longValue];
      v40 = 134217984;
      v41 = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Trial: Regulate wireless Power Target Default = %lld", &v40, 0xCu);
    }

    -[PowerTargetController setWirelessDefault:](self, "setWirelessDefault:", [v30 longValue]);
  }

  else if (v32)
  {
    LOWORD(v40) = 0;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Trial:No trial value for WirelessPowerTargetDefault", &v40, 2u);
  }

  v35 = [v3 factorWithName:@"RegulateWirelessPowerTargetWarm"];
  v36 = qword_100036CB8;
  v37 = os_log_type_enabled(qword_100036CB8, OS_LOG_TYPE_DEFAULT);
  if (v35)
  {
    if (v37)
    {
      v38 = v36;
      v39 = [v35 longValue];
      v40 = 134217984;
      v41 = v39;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Trial: Regulate wireless Power Target Warm = %lld", &v40, 0xCu);
    }

    -[PowerTargetController setWirelessDefault:](self, "setWirelessDefault:", [v35 longValue]);
  }

  else if (v37)
  {
    LOWORD(v40) = 0;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Trial:No trial value for WirelessPowerTargetWarm", &v40, 2u);
  }
}

- (void)updateClients
{
  v3 = +[PowerTargetControllerService sharedInstance];
  [v3 updateClients:-[PowerTargetController currentMitigation](self andLevel:{"currentMitigation"), -[PowerTargetController option](self, "option")}];
}

@end