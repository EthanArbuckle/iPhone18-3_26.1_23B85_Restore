@interface MODarwinNotifier
- (MODarwinNotifier)initWithName:(id)a3;
- (MODarwinNotifier)initWithUniverse:(id)a3;
- (void)checkLockedState;
- (void)checkManagedConfiguration;
- (void)handleBatteryNotification:(unsigned int)a3;
- (void)onMatchedBatteries:(unsigned int)a3;
- (void)toggle:(BOOL)a3;
@end

@implementation MODarwinNotifier

- (MODarwinNotifier)initWithUniverse:(id)a3
{
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MODarwinNotifier *)self initWithName:v5];

  return v6;
}

- (MODarwinNotifier)initWithName:(id)a3
{
  v9.receiver = self;
  v9.super_class = MODarwinNotifier;
  v3 = [(MONotifier *)&v9 initWithName:a3];
  v4 = v3;
  if (v3)
  {
    *(v3 + 33) = 0;
    *(v3 + 35) = 0;
    *(v3 + 41) = -1082130432;
    *(v3 + 45) = 0;
    v3[47] = 0;
    v5 = *(v3 + 49);
    *(v3 + 49) = &stru_1003416B0;

    v6 = *(v4 + 57);
    *(v4 + 57) = &stru_1003416B0;

    *(v4 + 65) = -1;
    *(v4 + 69) = -1;
    *(v4 + 73) = -1;
    *(v4 + 77) = 0;
    *(v4 + 81) = 0;
    v7 = v4;
  }

  return v4;
}

- (void)toggle:(BOOL)a3
{
  v4 = *(&self->batteryState.adapterDescription + 5);
  if (a3)
  {
    if (&MCEffectiveSettingsChangedNotification && v4 < 0)
    {
      v5 = [MCEffectiveSettingsChangedNotification UTF8String];
      v6 = [(MONotifier *)self queue];
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = __27__MODarwinNotifier_toggle___block_invoke;
      handler[3] = &unk_100338700;
      handler[4] = self;
      notify_register_dispatch(v5, (&self->batteryState.adapterDescription + 5), v6, handler);
    }

    if (*(&self->_registerForLockedState + 1) < 0)
    {
      v7 = [(MONotifier *)self queue];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = __27__MODarwinNotifier_toggle___block_invoke_2;
      v25[3] = &unk_100338700;
      v25[4] = self;
      notify_register_dispatch("com.apple.sysdiagnose.sysdiagnoseStarted", (&self->_registerForLockedState + 1), v7, v25);
    }

    if ((*(&self->batteryState.adapterDescription + 1) & 0x80000000) != 0)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, self, checkLockedState_bounce, kMobileKeyBagLockStatusNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v9 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v9, self, checkLockedState_bounce, @"com.apple.mobile.keybagd.first_unlock", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      *(&self->batteryState.adapterDescription + 1) = 1;
    }

    if (!*(&self->_managedConfigurationToken + 1))
    {
      notification = 0;
      v10 = IONotificationPortCreate(kIOMainPortDefault);
      *(&self->_sysDiagnoseToken + 1) = v10;
      if (v10)
      {
        v11 = v10;
        v12 = [(MONotifier *)self queue];
        IONotificationPortSetDispatchQueue(v11, v12);

        v13 = *(&self->_sysDiagnoseToken + 1);
        v14 = IOServiceMatching("IOPMPowerSource");
        LODWORD(v12) = IOServiceAddMatchingNotification(v13, "IOServiceFirstMatch", v14, onMatchedBatteries_bounce, self, &notification);
        v15 = _mo_log_facility_get_os_log(&MOLogFacilityDarwin);
        v16 = v15;
        if (v12)
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            [MODarwinNotifier toggle:];
          }
        }

        else
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *v23 = 0;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Registered for battery status changes: added matching notification", v23, 2u);
          }

          [(MODarwinNotifier *)self onMatchedBatteries:notification];
        }

        IOObjectRelease(notification);
      }

      else
      {
        v22 = _mo_log_facility_get_os_log(&MOLogFacilityDarwin);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [MODarwinNotifier toggle:];
        }
      }
    }

    [(MODarwinNotifier *)self checkManagedConfiguration];
    [(MODarwinNotifier *)self checkLockedState];
  }

  else
  {
    if ((v4 & 0x80000000) == 0)
    {
      notify_cancel(v4);
      *(&self->batteryState.adapterDescription + 5) = -1;
    }

    v17 = *(&self->_registerForLockedState + 1);
    if ((v17 & 0x80000000) == 0)
    {
      notify_cancel(v17);
      *(&self->_registerForLockedState + 1) = -1;
    }

    if ((*(&self->batteryState.adapterDescription + 1) & 0x80000000) == 0)
    {
      v18 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterRemoveObserver(v18, self, kMobileKeyBagLockStatusNotification, 0);
      v19 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterRemoveObserver(v19, self, @"com.apple.mobile.keybagd.first_unlock", 0);
      *(&self->batteryState.adapterDescription + 1) = -1;
    }

    v20 = *(&self->_managedConfigurationToken + 1);
    if (v20)
    {
      IOObjectRelease(v20);
      *(&self->_managedConfigurationToken + 1) = 0;
    }

    v21 = *(&self->_sysDiagnoseToken + 1);
    if (v21)
    {
      IONotificationPortDestroy(v21);
      *(&self->_sysDiagnoseToken + 1) = 0;
    }
  }
}

- (void)onMatchedBatteries:(unsigned int)a3
{
  v5 = IOIteratorNext(a3);
  if (v5)
  {
    v6 = v5;
    do
    {
      v7 = IOServiceAddInterestNotification(*(&self->_sysDiagnoseToken + 1), v6, "IOGeneralInterest", onBatteryStatusChanged_bounce, self, (&self->_managedConfigurationToken + 1));
      v8 = _mo_log_facility_get_os_log(&MOLogFacilityDarwin);
      v9 = v8;
      if (v7)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [(MODarwinNotifier *)&v12 onMatchedBatteries:v13, v9];
        }
      }

      else
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v10 = [NSNumber numberWithUnsignedInt:*(&self->_managedConfigurationToken + 1)];
          v11 = *(&self->_sysDiagnoseToken + 1);
          *buf = 138412546;
          v15 = v10;
          v16 = 2048;
          v17 = v11;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Added interest notification for battery %@ with port %p", buf, 0x16u);
        }

        [(MODarwinNotifier *)self handleBatteryNotification:v6];
      }

      IOObjectRelease(v6);
      v6 = IOIteratorNext(a3);
    }

    while (v6);
  }
}

- (void)handleBatteryNotification:(unsigned int)a3
{
  CFProperty = IORegistryEntryCreateCFProperty(a3, @"CurrentCapacity", kCFAllocatorDefault, 0);
  v4 = IORegistryEntryCreateCFProperty(a3, @"MaxCapacity", kCFAllocatorDefault, 0);
  if (CFProperty)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  v36 = v4;
  if (v5)
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityDarwin);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MODarwinNotifier handleBatteryNotification:];
    }

    v7 = -1.0;
  }

  else
  {
    v8 = [v4 intValue];
    v9 = [CFProperty intValue];
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = 100;
    }

    v11 = v9 * 100.0 / v10;
    v7 = fmaxf(fminf(v11, 100.0), 0.0);
  }

  v12 = IORegistryEntryCreateCFProperty(a3, @"ExternalConnected", kCFAllocatorDefault, 0);
  v13 = v12;
  if (v12)
  {
    v14 = [v12 BOOLValue];
  }

  else
  {
    v15 = _mo_log_facility_get_os_log(&MOLogFacilityDarwin);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MODarwinNotifier handleBatteryNotification:];
    }

    v14 = 0;
  }

  v16 = IORegistryEntryCreateCFProperty(a3, @"AdapterDetails", kCFAllocatorDefault, 0);
  v17 = [v16 objectForKeyedSubscript:@"Description"];
  v18 = v17;
  v19 = @"Unknown";
  if (v17)
  {
    if (([(__CFString *)v17 hasPrefix:@"batt"]& 1) != 0)
    {
      v19 = @"None";
    }

    else if (([(__CFString *)v18 hasPrefix:@"usb"]& 1) != 0)
    {
      v19 = @"USB";
    }

    else if (([(__CFString *)v18 hasPrefix:@"external"]& 1) != 0)
    {
      v19 = @"External";
    }

    else if ([(__CFString *)v18 hasSuffix:@"arcas"])
    {
      v19 = @"Arcas";
    }
  }

  else
  {
    v18 = @"Unknown";
  }

  v20 = IORegistryEntryCreateCFProperty(a3, @"FullyCharged", kCFAllocatorDefault, 0);
  v21 = v20;
  if (v20)
  {
    v22 = [v20 BOOLValue];
  }

  else
  {
    v23 = _mo_log_facility_get_os_log(&MOLogFacilityDarwin);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [MODarwinNotifier handleBatteryNotification:];
    }

    v22 = 0;
  }

  p_isIHAEnabled = &self->managedConfigurationState.isIHAEnabled;
  v25 = *(&self->lockedState + 4);
  v26 = v7 == *&self->managedConfigurationState.isIHAEnabled && v14 == v25;
  if (!v26 || (LOBYTE(v25) = v14, v22 != *(&self->lockedState + 5)) || (LOBYTE(v25) = v14, v19 != *(&self->batteryState.batteryLevel + 1)) || (LOBYTE(v25) = v14, v18 != *(&self->batteryState.chargerType + 1)))
  {
    *p_isIHAEnabled = v7;
    *(&self->lockedState + 3) = v25;
    *(&self->lockedState + 4) = v14;
    *(&self->lockedState + 5) = v22;
    v27 = *(&self->batteryState.batteryLevel + 1);
    *(&self->batteryState.batteryLevel + 1) = v19;

    objc_storeStrong((&self->batteryState.chargerType + 1), v18);
    v39[0] = @"batteryLevel";
    LODWORD(v28) = *p_isIHAEnabled;
    v29 = [NSNumber numberWithFloat:v28];
    v40[0] = v29;
    v39[1] = @"batteryWasConnected";
    v30 = [NSNumber numberWithBool:*(&self->lockedState + 3)];
    v40[1] = v30;
    v39[2] = @"stateOnCharger";
    v31 = [NSNumber numberWithBool:*(&self->lockedState + 4)];
    v40[2] = v31;
    v39[3] = @"batteryCharged";
    v32 = [NSNumber numberWithBool:*(&self->lockedState + 5)];
    v33 = *(&self->batteryState.batteryLevel + 1);
    v34 = *(&self->batteryState.chargerType + 1);
    v40[3] = v32;
    v40[4] = v33;
    v39[4] = @"chargerType";
    v39[5] = @"adapterDescription";
    v40[5] = v34;
    v35 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:6];

    [(MONotifier *)self notifyAndPersist:4 withPayload:v35];
  }
}

- (void)checkManagedConfiguration
{
  v3 = +[MOPlatformInfo isDNUEnabled];
  v4 = +[MOPlatformInfo isIHAEnabled];
  v5 = v4;
  if (__PAIR64__(*(&self->super._enabled + 2), *(&self->super._enabled + 1)) != __PAIR64__(v4, v3))
  {
    *(&self->super._enabled + 1) = v3;
    *(&self->super._enabled + 2) = v4;
    v9[0] = @"optInDNU";
    v6 = [NSNumber numberWithBool:v3];
    v10[0] = v6;
    v9[1] = @"optInIHA";
    v7 = [NSNumber numberWithBool:v5];
    v10[1] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
    [(MONotifier *)self notifyAndPersist:1 withPayload:v8];
  }
}

- (void)checkLockedState
{
  v3 = &self->super._enabled + 3;
  v4 = *(&self->super._enabled + 4);
  if (MKBDeviceFormattedForContentProtection())
  {
    v5 = MKBDeviceUnlockedSinceBoot() == 1;
    v6 = MKBGetDeviceLockState();
    if (v6)
    {
      v7 = v4;
    }

    else
    {
      v7 = 1;
    }

    if ((v6 - 1) >= 2)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (v6 >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v5 = 1;
    v9 = 1;
  }

  if (*v3 != v5)
  {
    *v3 = v5;
    v16 = @"wasUnlocked";
    v10 = [NSNumber numberWithBool:v5];
    v17 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    [(MONotifier *)self notifyAndPersist:3 withPayload:v11];
  }

  if (v3[1] != v9)
  {
    v3[1] = v9;
    v14 = @"stateUnlocked";
    v12 = [NSNumber numberWithBool:v9];
    v15 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    [(MONotifier *)self notifyAndPersist:2 withPayload:v13];
  }
}

- (void)onMatchedBatteries:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to add interest notification for battery", buf, 2u);
}

@end