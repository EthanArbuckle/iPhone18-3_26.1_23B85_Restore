@interface CBStackPowerSourceMonitorBTStack
- (BOOL)_setPowerSourceGroupID:(id *)a3;
- (BOOL)powerSourceOverrideWithMock:(id)a3 error:(id *)a4;
- (CBStackPowerSourceMonitorBTStack)init;
- (id)_classicDeviceUUID:(void *)a3;
- (id)_findPowerSourceWithIdentifiers:(id)a3 and:(id)a4;
- (id)_identifierForAccessoryID:(id)a3;
- (id)_identifierForClassicDevice:(void *)a3;
- (void)_activate;
- (void)_handlePowerSourceFound:(id)a3;
- (void)_handlePowerSourceFoundWithDetails:(id)a3;
- (void)_handlePowerSourceLost:(id)a3;
- (void)_handlePowerSourceUpdateWithDetails:(id)a3 details:(id)a4;
- (void)_handleStackDeviceInfoChanged:(void *)a3 changeType:(int)a4;
- (void)_handleStackDisconnectClassic:(void *)a3;
- (void)_handleStackDisconnectLowEnergy:(id)a3;
- (void)_handleStackLEPairingComplete:(id)a3;
- (void)_handleStackPairingComplete:(void *)a3;
- (void)_handleStackSourceUpdate:(id)a3;
- (void)_handleStackUSBStateChanged:(void *)a3;
- (void)_invalidate;
- (void)_invalidated;
- (void)_notifyPowerSourceFound:(id)a3;
- (void)_notifyPowerSourceLost:(id)a3;
- (void)_publishIOKitPowerSource:(id)a3;
- (void)_removeFromClassicMap:(id)a3;
- (void)_removePowerSourceFlags:(id)a3;
- (void)_reportMetricIfNeeded:(id)a3;
- (void)_updatePowerSources;
- (void)activate;
@end

@implementation CBStackPowerSourceMonitorBTStack

- (void)_updatePowerSources
{
  [(NSMutableDictionary *)self->_powerSources enumerateKeysAndObjectsUsingBlock:&stru_100AE10D8];
  v3 = IOPSCopyPowerSourcesByType();
  blob = v3;
  if (v3)
  {
    v4 = IOPSCopyPowerSourcesList(v3);
    if (v4)
    {
      v5 = v4;
      Count = CFArrayGetCount(v4);
      if (Count >= 1)
      {
        v7 = 0;
        *&v6 = 134217984;
        v32 = v6;
        do
        {
          v8 = v5;
          ValueAtIndex = CFArrayGetValueAtIndex(v5, v7);
          v10 = IOPSGetPowerSourceDescription(blob, ValueAtIndex);
          if (v10)
          {
            CFDictionaryGetDouble();
            if (v11 <= 0.0)
            {
              v19 = sub_100058928();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v41 = v10;
                _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "### No current capacity for power source %@", buf, 0xCu);
              }
            }

            else
            {
              v12 = NSDictionaryGetNSNumber();
              if (v12)
              {
                CFStringGetTypeID();
                v13 = CFDictionaryGetTypedValue();
                CFStringGetTypeID();
                v14 = CFDictionaryGetTypedValue();
                if (v13 | v14)
                {
                  v15 = [[NSUUID alloc] initWithUUIDString:v13];
                  v16 = v15 == 0;

                  if (v16)
                  {
                    v20 = [(CBStackPowerSourceMonitorBTStack *)self _identifierForAccessoryID:v13];
                    v21 = v20;
                    if (v20)
                    {
                      v17 = v20;

                      v18 = [v10 mutableCopy];
                      [v18 setObject:v17 forKeyedSubscript:@"Accessory Identifier"];
                    }

                    else
                    {
                      v17 = v13;
                      v18 = v10;
                    }
                  }

                  else
                  {
                    v17 = v13;
                    v18 = v10;
                  }

                  v22 = [(CBStackPowerSourceMonitorBTStack *)self _findPowerSourceWithIdentifiers:v17 and:v14, v32];
                  if (v22)
                  {
                    [(CBStackPowerSourceMonitorBTStack *)self _handlePowerSourceUpdateWithDetails:v22 details:v18];
                  }

                  else
                  {
                    [(CBStackPowerSourceMonitorBTStack *)self _handlePowerSourceFoundWithDetails:v18];
                  }

                  v10 = v18;
                }

                else
                {
                  v17 = sub_100058928();
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v41 = v10;
                    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "### No accessoryID or groupID for power source %@", buf, 0xCu);
                  }
                }
              }

              else
              {
                v14 = sub_100058928();
                if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v41 = v10;
                  _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "### No sourceID for power source %@", buf, 0xCu);
                }
              }
            }
          }

          else
          {
            v10 = sub_100058928();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              *buf = v32;
              v41 = v7;
              _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "### IOPSGetPowerSourceDescription %ld failed", buf, 0xCu);
            }
          }

          ++v7;
          v5 = v8;
        }

        while (Count != v7);
      }

      CFRelease(v5);
      goto LABEL_38;
    }
  }

  else
  {
    v23 = sub_100058928();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100809E28(v23);
    }
  }

  v24 = sub_100058928();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    sub_100809E6C(v24);
  }

LABEL_38:
  if (blob)
  {
    CFRelease(blob);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v25 = [(NSMutableDictionary *)self->_powerSources allKeys];
  v26 = [v25 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v26)
  {
    v27 = *v36;
    do
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v36 != v27)
        {
          objc_enumerationMutation(v25);
        }

        v29 = [(NSMutableDictionary *)self->_powerSources objectForKeyedSubscript:*(*(&v35 + 1) + 8 * i)];
        v30 = v29;
        if (v29)
        {
          [v29 setInternalFlags:{objc_msgSend(v29, "internalFlags") & 0xFFFFFFFD}];
          if (([v30 present] & 1) == 0)
          {
            [(CBStackPowerSourceMonitorBTStack *)self _handlePowerSourceLost:v30];
          }
        }
      }

      v26 = [v25 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v26);
  }

  if ([(NSMutableDictionary *)self->_powerSources count])
  {
    v31 = sub_100058928();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Updated power sources", buf, 2u);
    }

    [(NSMutableDictionary *)self->_powerSources enumerateKeysAndObjectsUsingBlock:&stru_100AE10F8];
  }
}

- (CBStackPowerSourceMonitorBTStack)init
{
  v7.receiver = self;
  v7.super_class = CBStackPowerSourceMonitorBTStack;
  v2 = [(CBStackPowerSourceMonitorBTStack *)&v7 init];
  if (v2)
  {
    v3 = [CBUtil getBluetoothDebugSettingString:@"BluetoothCustomerLogging" InKey:@"PrivateDataLogging"];
    privateDataLoggingEnabled = v2->_privateDataLoggingEnabled;
    v2->_privateDataLoggingEnabled = v3;

    v2->_profileChangedToken = -1;
    *&v2->_psNotifyTokenAccessoryAttach = -1;
    *&v2->_psNotifyTokenAccessoryTimeRemaining = -1;
    v5 = v2;
  }

  return v2;
}

- (void)activate
{
  if (!self->_activateCalled)
  {
    self->_activateCalled = 1;
    [(CBStackPowerSourceMonitorBTStack *)self _activate];
  }
}

- (void)_activate
{
  v3 = sub_100058928();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Activate", buf, 2u);
  }

  v4 = sub_10000E92C();
  self->_logPrivateData = (*(*v4 + 160))(v4);
  if (!self->_addedMonitor)
  {
    os_unfair_lock_lock(&unk_100B55308);
    if (!qword_100B55310)
    {
      operator new();
    }

    sub_1001288E8(qword_100B55310, self);
    os_unfair_lock_unlock(&unk_100B55308);
    self->_addedMonitor = 1;
  }

  if (self->_psNotifyTokenAccessoryAttach == -1)
  {
    dispatchQueue = self->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100128AD4;
    handler[3] = &unk_100ADF848;
    handler[4] = self;
    notify_register_dispatch("com.apple.system.accpowersources.attach", &self->_psNotifyTokenAccessoryAttach, dispatchQueue, handler);
  }

  if (self->_psNotifyTokenAccessoryPowerSource == -1)
  {
    v6 = self->_dispatchQueue;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100128B48;
    v13[3] = &unk_100ADF848;
    v13[4] = self;
    notify_register_dispatch("com.apple.system.accpowersources.source", &self->_psNotifyTokenAccessoryPowerSource, v6, v13);
  }

  if (self->_psNotifyTokenAccessoryTimeRemaining == -1)
  {
    v7 = self->_dispatchQueue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100128BBC;
    v12[3] = &unk_100ADF848;
    v12[4] = self;
    notify_register_dispatch("com.apple.system.accpowersources.timeremaining", &self->_psNotifyTokenAccessoryTimeRemaining, v7, v12);
  }

  if (self->_psNotifyTokenAnyPowerSource == -1)
  {
    v8 = self->_dispatchQueue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100128C30;
    v11[3] = &unk_100ADF848;
    v11[4] = self;
    notify_register_dispatch("com.apple.system.powersources", &self->_psNotifyTokenAnyPowerSource, v8, v11);
  }

  if (self->_profileChangedToken == -1)
  {
    v9 = self->_dispatchQueue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100128CA4;
    v10[3] = &unk_100ADF848;
    v10[4] = self;
    notify_register_dispatch("com.apple.MCX._managementStatusChangedForDomains", &self->_profileChangedToken, v9, v10);
  }

  [(CBStackPowerSourceMonitorBTStack *)self _updatePowerSources];
}

- (void)_invalidate
{
  v3 = sub_100058928();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidate", v9, 2u);
  }

  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    if (self->_addedMonitor)
    {
      os_unfair_lock_lock(&unk_100B55308);
      if (qword_100B55310)
      {
        sub_100128EAC(qword_100B55310);
      }

      os_unfair_lock_unlock(&unk_100B55308);
      self->_addedMonitor = 0;
    }

    psNotifyTokenAccessoryAttach = self->_psNotifyTokenAccessoryAttach;
    if (psNotifyTokenAccessoryAttach != -1)
    {
      notify_cancel(psNotifyTokenAccessoryAttach);
      self->_psNotifyTokenAccessoryAttach = -1;
    }

    psNotifyTokenAccessoryPowerSource = self->_psNotifyTokenAccessoryPowerSource;
    if (psNotifyTokenAccessoryPowerSource != -1)
    {
      notify_cancel(psNotifyTokenAccessoryPowerSource);
      self->_psNotifyTokenAccessoryPowerSource = -1;
    }

    psNotifyTokenAccessoryTimeRemaining = self->_psNotifyTokenAccessoryTimeRemaining;
    if (psNotifyTokenAccessoryTimeRemaining != -1)
    {
      notify_cancel(psNotifyTokenAccessoryTimeRemaining);
      self->_psNotifyTokenAccessoryTimeRemaining = -1;
    }

    psNotifyTokenAnyPowerSource = self->_psNotifyTokenAnyPowerSource;
    if (psNotifyTokenAnyPowerSource != -1)
    {
      notify_cancel(psNotifyTokenAnyPowerSource);
      self->_psNotifyTokenAnyPowerSource = -1;
    }

    profileChangedToken = self->_profileChangedToken;
    if (profileChangedToken != -1)
    {
      notify_cancel(profileChangedToken);
      self->_profileChangedToken = -1;
    }

    [(CBStackPowerSourceMonitorBTStack *)self _invalidated];
  }
}

- (void)_invalidated
{
  if (!self->_invalidateDone)
  {
    deviceFoundHandler = self->_deviceFoundHandler;
    self->_deviceFoundHandler = 0;

    deviceLostHandler = self->_deviceLostHandler;
    self->_deviceLostHandler = 0;

    self->_invalidateDone = 1;
    v5 = sub_100058928();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Invalidated", v6, 2u);
    }
  }
}

- (void)_handlePowerSourceFoundWithDetails:(id)a3
{
  v4 = a3;
  if (!self->_powerSources)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    powerSources = self->_powerSources;
    self->_powerSources = v5;
  }

  v7 = [[CBPowerSource alloc] initWithPowerSourceDetails:v4 internalFlags:6];
  v8 = sub_100058928();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Power source found %@", &v10, 0xCu);
  }

  v9 = [v7 groupID];
  if (v9 || ([v7 accessoryID], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    [(NSMutableDictionary *)self->_powerSources setObject:v7 forKeyedSubscript:v9];
    [(CBStackPowerSourceMonitorBTStack *)self _handlePowerSourceFound:v7];
  }

  else
  {
    sub_100809EB0(v7, v4);
    v9 = 0;
  }
}

- (void)_handlePowerSourceUpdateWithDetails:(id)a3 details:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v6 internalFlags] & 8) != 0)
  {
    [v6 setPresent:1];
    v9 = sub_100058928();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "# Skipping IOKit update %@", &v10, 0xCu);
    }
  }

  else
  {
    v8 = [[CBPowerSource alloc] initWithPowerSourceDetails:v7 internalFlags:2];
    [v6 updateWithCBPowerSource:v8];
    [(CBStackPowerSourceMonitorBTStack *)self _handlePowerSourceFound:v6];
  }
}

- (void)_handlePowerSourceFound:(id)a3
{
  v4 = a3;
  v5 = [v4 groupID];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [v4 accessoryID];
  }

  v8 = v7;

  v9 = v4;
  if ([v4 isAggregateComponent])
  {
    v9 = [(NSMutableDictionary *)self->_powerSources objectForKeyedSubscript:v8];
  }

  v10 = [NSUUID alloc];
  v11 = [v9 accessoryID];
  v12 = [v10 initWithUUIDString:v11];

  if (v12)
  {
    if (([v9 changeFlags] & 8) != 0 && !objc_msgSend(v9, "hasAllComponents"))
    {
      v13 = sub_100058928();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Delay notify for %@", buf, 0xCu);
      }

      v14 = dispatch_time(0, 3000000000);
      dispatchQueue = self->_dispatchQueue;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1001296D4;
      v16[3] = &unk_100AE0B60;
      v16[4] = self;
      v16[5] = v8;
      dispatch_after(v14, dispatchQueue, v16);
    }

    else
    {
      [(CBStackPowerSourceMonitorBTStack *)self _notifyPowerSourceFound:v9];
    }
  }

  else
  {
    sub_100809F74();
  }
}

- (void)_handlePowerSourceLost:(id)a3
{
  v4 = a3;
  v5 = [v4 groupID];
  if (v5 || ([v4 accessoryID], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = sub_100058928();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Power source lost %@", &v10, 0xCu);
    }

    if ([v4 isAggregateComponent])
    {
      v7 = [(NSMutableDictionary *)self->_powerSources objectForKeyedSubscript:v5];
      v8 = v7;
      v9 = v4;
      if (v7)
      {
        v9 = v7;

        [v9 invalidateComponentWithPartID:{objc_msgSend(v4, "partID")}];
      }
    }

    else
    {
      [v4 removeBatteryInfo];
      [v4 invalidate];

      v9 = v4;
      v4 = 0;
      [(NSMutableDictionary *)self->_powerSources setObject:0 forKeyedSubscript:v5];
    }

    [(CBStackPowerSourceMonitorBTStack *)self _notifyPowerSourceLost:v9];
  }

  else
  {
    v9 = v4;
  }
}

- (void)_handleStackDeviceInfoChanged:(void *)a3 changeType:(int)a4
{
  v7 = [(CBStackPowerSourceMonitorBTStack *)self _identifierForClassicDevice:?];
  if (v7)
  {
    *__p = 0u;
    v24 = 0u;
    sub_1000DEB5C(a3, __p);
    if ((a4 - 28) >= 3)
    {
      v8 = 5;
    }

    else
    {
      v8 = a4 - 26;
    }

    if (v8 > 3)
    {
      if (v8 == 4)
      {
        v9 = &v24 + 12;
        v10 = DWORD2(v24);
      }

      else
      {
        v9 = __p + 4;
        v10 = __p[0];
      }
    }

    else if (v8 == 2)
    {
      v9 = &__p[1] + 4;
      v10 = __p[1];
    }

    else
    {
      v9 = &v24 + 4;
      v10 = v24;
    }

    v11 = *v9;
    if (v10 >= 100)
    {
      v10 = 100;
    }

    if (v10 & ~(v10 >> 31) | (v11 << 8))
    {
      v22 = 0;
      v12 = [[CBPowerSource alloc] initWithBTStackDevice:a3 identifier:v7 error:&v22];
      v13 = v22;
      if (v12)
      {
        if (![v12 isAppleDevice] || objc_msgSend(v12, "productID"))
        {
          v21 = v12;
          v14 = [(CBStackPowerSourceMonitorBTStack *)self _setPowerSourceGroupID:&v21];
          v15 = v21;

          if (v14)
          {
            v16 = sub_100058928();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v26 = v15;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "StackDeviceInfoChanged %@", buf, 0xCu);
            }

            [(CBStackPowerSourceMonitorBTStack *)self _handleStackSourceUpdate:v15];
          }

          goto LABEL_22;
        }

        v19 = sub_100058928();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_10080A000();
        }
      }

      else
      {
        v19 = sub_100058928();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = CUPrintNSError();
          sub_10080A068(v20, buf, v19);
        }

        v12 = 0;
      }

      v15 = v12;
LABEL_22:
    }
  }

  else
  {
    v17 = sub_100058928();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a3, __p);
      v18 = (SBYTE7(v24) & 0x80u) == 0 ? __p : __p[0];
      *buf = 136315138;
      v26 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "StackDeviceInfoChanged found no identifier for device: %s", buf, 0xCu);
      if (SBYTE7(v24) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

- (void)_handleStackDisconnectClassic:(void *)a3
{
  v5 = [(CBStackPowerSourceMonitorBTStack *)self _identifierForClassicDevice:?];
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_powerSources objectForKeyedSubscript:v5];
    v7 = v6;
    if (!v6)
    {
      goto LABEL_13;
    }

    if (![v6 isAppleDevice])
    {
      goto LABEL_7;
    }

    v8 = [v7 productID];
    if (v8 - 8194 <= 0x2D && ((1 << (v8 - 2)) & 0x207C7BB7FF9BLL) != 0)
    {
      goto LABEL_13;
    }

    if (!v8)
    {
      v14 = sub_100058928();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10080A0C0();
      }
    }

    else
    {
LABEL_7:
      v9 = [v7 transportType];
      if (v9 != @"USB")
      {
        v10 = v9;
        if (!v9 || (v11 = [(__CFString *)v9 isEqual:@"USB"], v10, v10, (v11 & 1) == 0))
        {
          [v7 setChangeFlags:16];
          v12 = sub_100058928();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *__p = 138412290;
            *&__p[4] = v7;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "StackDisconnectClassic %@", __p, 0xCu);
          }

          [(CBStackPowerSourceMonitorBTStack *)self _handlePowerSourceLost:v7];
        }
      }
    }
  }

  else
  {
    v7 = sub_100058928();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a3, __p);
      v13 = v16 >= 0 ? __p : *__p;
      *buf = 136315138;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "StackDisconnectClassic found no identifier for device: %s", buf, 0xCu);
      if (v16 < 0)
      {
        operator delete(*__p);
      }
    }
  }

LABEL_13:
}

- (void)_handleStackDisconnectLowEnergy:(id)a3
{
  v4 = a3;
  v5 = [v4 UUIDString];
  v6 = [(NSMutableDictionary *)self->_powerSources objectForKeyedSubscript:v5];
  v7 = v6;
  if (v6)
  {
    if (![v6 isAppleDevice])
    {
      goto LABEL_6;
    }

    v8 = [v7 productID];
    if (v8 - 8194 <= 0x2D && ((1 << (v8 - 2)) & 0x207C7BB7FF9BLL) != 0)
    {
      goto LABEL_9;
    }

    if (!v8)
    {
      v10 = sub_100058928();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080A128();
      }
    }

    else
    {
LABEL_6:
      [v7 setChangeFlags:16];
      v9 = sub_100058928();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "StackDisconnectLE %@", &v11, 0xCu);
      }

      [(CBStackPowerSourceMonitorBTStack *)self _handlePowerSourceLost:v7];
    }
  }

LABEL_9:
}

- (void)_handleStackPairingComplete:(void *)a3
{
  if (!sub_100539FE8(a3))
  {
    v5 = [(CBStackPowerSourceMonitorBTStack *)self _identifierForClassicDevice:a3];
    if (v5)
    {
      reportMetrics = self->_reportMetrics;
      if (!reportMetrics)
      {
        v7 = objc_alloc_init(NSMutableSet);
        v8 = self->_reportMetrics;
        self->_reportMetrics = v7;

        reportMetrics = self->_reportMetrics;
      }

      if (([(NSMutableSet *)reportMetrics containsObject:v5]& 1) == 0)
      {
        [(NSMutableSet *)self->_reportMetrics addObject:v5];
      }

      v9 = [(NSMutableDictionary *)self->_powerSources objectForKeyedSubscript:v5];
      if (v9)
      {
        v10 = sub_100058928();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 138412290;
          v12 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "StackPairingComplete with %@", &v11, 0xCu);
        }

        [(CBStackPowerSourceMonitorBTStack *)self _reportMetricIfNeeded:v9];
      }
    }

    else
    {
      v9 = sub_100058928();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a3, &v11);
        sub_10080A190();
      }
    }
  }
}

- (void)_handleStackLEPairingComplete:(id)a3
{
  v4 = a3;
  v5 = [v4 UUIDString];
  if (v5)
  {
    reportMetrics = self->_reportMetrics;
    if (!reportMetrics)
    {
      v7 = objc_alloc_init(NSMutableSet);
      v8 = self->_reportMetrics;
      self->_reportMetrics = v7;

      reportMetrics = self->_reportMetrics;
    }

    if (([(NSMutableSet *)reportMetrics containsObject:v5]& 1) == 0)
    {
      [(NSMutableSet *)self->_reportMetrics addObject:v5];
    }

    v9 = [(NSMutableDictionary *)self->_powerSources objectForKeyedSubscript:v5];
    if (v9)
    {
      v10 = sub_100058928();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "StackLEPairingComplete with %@", &v11, 0xCu);
      }

      [(CBStackPowerSourceMonitorBTStack *)self _reportMetricIfNeeded:v9];
    }
  }
}

- (void)_handleStackSourceUpdate:(id)a3
{
  v4 = a3;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_100042214;
  v41 = sub_10004259C;
  v42 = 0;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10012A960;
  v36[3] = &unk_100AE1120;
  v36[4] = &v37;
  v5 = objc_retainBlock(v36);
  v6 = [v4 accessoryID];
  v7 = [v4 groupID];
  if (!v6)
  {
    v26 = CBErrorF();
    v10 = v38[5];
    v38[5] = v26;
    goto LABEL_37;
  }

  if (!self->_powerSources)
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    powerSources = self->_powerSources;
    self->_powerSources = v8;
  }

  v10 = v4;
  if (v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v6;
  }

  v30 = v11;
  v12 = [(NSMutableDictionary *)self->_powerSources objectForKeyedSubscript:?];
  v13 = v12;
  if (v12)
  {
    if (([v12 internalFlags] & 8) != 0)
    {
      [v13 setPresent:1];
      v24 = sub_100058928();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v10;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "# Skipping BTStack update %@", &buf, 0xCu);
      }

      goto LABEL_36;
    }

    if ([v13 partID] == 1)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v28 = v5;
      v29 = v4;
      v14 = [v13 components];
      v15 = [v14 allValues];

      v16 = [v15 countByEnumeratingWithState:&v32 objects:v48 count:16];
      if (v16)
      {
        v17 = *v33;
        v27 = v7;
        while (2)
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v33 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v32 + 1) + 8 * i);
            v20 = [v19 partID];
            if (v20 == [v10 partID])
            {
              v7 = v27;
              [v10 setSourceID:{objc_msgSend(v19, "sourceID")}];
              goto LABEL_26;
            }
          }

          v16 = [v15 countByEnumeratingWithState:&v32 objects:v48 count:16];
          v7 = v27;
          if (v16)
          {
            continue;
          }

          break;
        }
      }

LABEL_26:

      v5 = v28;
      v4 = v29;
    }

    v22 = [v13 updateWithCBPowerSource:v10];
    v23 = v10;
    v10 = v13;
  }

  else
  {
    if (![v10 isAggregateComponent])
    {
      [v10 setChangeFlags:{objc_msgSend(v10, "changeFlags") | 8}];
      [v10 setInternalFlags:{objc_msgSend(v10, "internalFlags") | 4}];
      [(NSMutableDictionary *)self->_powerSources setObject:v10 forKeyedSubscript:v6];
LABEL_30:
      [(CBStackPowerSourceMonitorBTStack *)self _handlePowerSourceFound:v10];
      goto LABEL_32;
    }

    v21 = objc_alloc_init(CBPowerSource);
    [v21 setPartID:1];
    v22 = [v21 updateWithCBPowerSource:v10];
    v23 = v21;

    v10 = v23;
    [(NSMutableDictionary *)self->_powerSources setObject:v23 forKeyedSubscript:v30];
  }

  if (!v22)
  {
    goto LABEL_32;
  }

  if ((v22 & 0x10) == 0)
  {
    goto LABEL_30;
  }

  [(CBStackPowerSourceMonitorBTStack *)self _handlePowerSourceLost:v10];
LABEL_32:
  classicMap = self->_classicMap;
  if (classicMap)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v44 = 0x3032000000;
    v45 = sub_100042214;
    v46 = sub_10004259C;
    v47 = 0;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10012A9BC;
    v31[3] = &unk_100AE1148;
    v31[4] = v6;
    v31[5] = &buf;
    [(NSMutableDictionary *)classicMap enumerateKeysAndObjectsUsingBlock:v31];
    if (*(*(&buf + 1) + 40))
    {
      [(NSMutableDictionary *)self->_classicMap setObject:v6 forKeyedSubscript:?];
    }

    _Block_object_dispose(&buf, 8);
  }

LABEL_36:

LABEL_37:
  (v5[2])(v5);

  _Block_object_dispose(&v37, 8);
}

- (void)_handleStackUSBStateChanged:(void *)a3
{
  v5 = sub_100058928();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a3, __p);
    v6 = v25;
    v7 = *__p;
    v8 = *(a3 + 1360);
    v9 = sub_10053FCFC(a3);
    v10 = v9;
    v11 = __p;
    if (v6 < 0)
    {
      v11 = v7;
    }

    *buf = 136315650;
    *&buf[4] = v11;
    if (v8)
    {
      v12 = "yes";
    }

    else
    {
      v12 = "no";
    }

    v27 = 2080;
    v28 = v12;
    v29 = 2112;
    v30 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "StackUSBStateChanged %s, connectedOveUSB %s, serialNumber %@", buf, 0x20u);
    if (v25 < 0)
    {
      operator delete(*__p);
    }
  }

  v13 = [(CBStackPowerSourceMonitorBTStack *)self _identifierForClassicDevice:a3];
  if (v13)
  {
    v23 = 0;
    v14 = [[CBPowerSource alloc] initWithBTStackDevice:a3 identifier:v13 error:&v23];
    v15 = v23;
    if (v14)
    {
      if (![v14 isAppleDevice] || objc_msgSend(v14, "productID"))
      {
        v22 = v14;
        v16 = [(CBStackPowerSourceMonitorBTStack *)self _setPowerSourceGroupID:&v22];
        v17 = v22;

        if (v16)
        {
          v18 = sub_100058928();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v17;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "StackUSBStateChanged %@", buf, 0xCu);
          }

          [(CBStackPowerSourceMonitorBTStack *)self _handleStackSourceUpdate:v17];
        }

        goto LABEL_18;
      }

      v20 = sub_100058928();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10080A260();
      }
    }

    else
    {
      v20 = sub_100058928();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = CUPrintNSError();
        sub_10080A2C8(v21, buf, v20);
      }

      v14 = 0;
    }

    v17 = v14;
LABEL_18:

    goto LABEL_19;
  }

  v15 = sub_100058928();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a3, buf);
    v19 = v29 >= 0 ? buf : *buf;
    *__p = 136315138;
    *&__p[4] = v19;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "StackUSBStateChanged found no identifier for device: %s", __p, 0xCu);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(*buf);
    }
  }

LABEL_19:
}

- (void)_publishIOKitPowerSource:(id)a3
{
  v4 = a3;
  v5 = [v4 accessoryID];
  if (!v5)
  {
    sub_10080A388();
    goto LABEL_18;
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100042214;
  v20 = sub_10004259C;
  v21 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10012B178;
  v15[3] = &unk_100AE1120;
  v15[4] = &v16;
  v6 = objc_retainBlock(v15);
  v7 = [v4 groupID];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  v10 = v9;
  v11 = [(NSMutableDictionary *)self->_powerSources objectForKeyedSubscript:v10];
  if (!v11)
  {
    v11 = v4;
    [(NSMutableDictionary *)self->_powerSources setObject:v11 forKeyedSubscript:v10];
  }

  if ([v11 isAppleDevice])
  {
    v12 = [v11 productID];
    if (v12 - 8201 < 0x18 || v12 - 8194 <= 0x2D && ((1 << (v12 - 2)) & 0x20FC0000001BLL) != 0)
    {
      v13 = sub_100058928();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v11;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Skipping Apple audio publish: %@", buf, 0xCu);
      }

      goto LABEL_16;
    }

    if (!v12)
    {
      v13 = sub_100058928();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10080A320();
      }

      goto LABEL_16;
    }
  }

  if ([v11 publish])
  {
    v14 = CBErrorF();
    v13 = v17[5];
    v17[5] = v14;
LABEL_16:
  }

  (v6[2])(v6);
  _Block_object_dispose(&v16, 8);

LABEL_18:
}

- (void)_notifyPowerSourceFound:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ([v4 isAggregateComponent])
  {
    v6 = [v4 groupID];
    if (!v6)
    {
      v6 = [v4 accessoryID];
      if (!v6)
      {
        sub_10080A50C();
        v5 = v4;
        goto LABEL_19;
      }
    }

    v5 = [(NSMutableDictionary *)self->_powerSources objectForKeyedSubscript:v6];
  }

  v7 = [NSUUID alloc];
  v8 = [v4 accessoryID];
  v9 = [v7 initWithUUIDString:v8];

  if (v9)
  {
    if ([v5 changeFlags])
    {
      v18 = _NSConcreteStackBlock;
      v19 = 3221225472;
      v20 = sub_10012B50C;
      v21 = &unk_100AE0B60;
      v22 = self;
      v5 = v5;
      v23 = v5;
      v10 = objc_retainBlock(&v18);
      if (([v5 changeFlags] & 0x1E) != 0)
      {
        v11 = sub_100058928();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v25 = v5;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Notify power source found: %@", buf, 0xCu);
        }

        v12 = objc_alloc_init(CBDevice);
        [v12 updateWithCBPowerSource:v5];
        logPrivateData = self->_logPrivateData;
        v14 = [v12 internalFlags];
        if (logPrivateData)
        {
          v15 = 0x20000;
        }

        else
        {
          v15 = 0;
        }

        [v12 setInternalFlags:v15 | v14];
        v16 = objc_retainBlock(self->_deviceFoundHandler);
        v17 = v16;
        if (v16)
        {
          (*(v16 + 2))(v16, v12);
        }
      }

      if ([v5 internalFlags])
      {
        [(CBStackPowerSourceMonitorBTStack *)self _publishIOKitPowerSource:v5];
      }

      [(CBStackPowerSourceMonitorBTStack *)self _reportMetricIfNeeded:v5];
      (v10[2])(v10);
    }
  }

  else
  {
    sub_10080A480();
  }

LABEL_19:
}

- (void)_notifyPowerSourceLost:(id)a3
{
  v4 = a3;
  v5 = sub_100058928();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notify power source lost: %@", &v12, 0xCu);
  }

  v6 = objc_alloc_init(CBDevice);
  [v6 updateWithCBPowerSource:v4];
  logPrivateData = self->_logPrivateData;
  v8 = [v6 internalFlags];
  if (logPrivateData)
  {
    v9 = 0x20000;
  }

  else
  {
    v9 = 0;
  }

  [v6 setInternalFlags:v9 | v8];
  v10 = objc_retainBlock(self->_deviceLostHandler);
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, v6);
  }
}

- (BOOL)powerSourceOverrideWithMock:(id)a3 error:(id *)a4
{
  v5 = a3;
  v39 = self;
  v40 = v5;
  if (!self->_powerSources)
  {
    if (a4)
    {
      CBErrorF();
      *a4 = v26 = 0;
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_53;
  }

  v6 = [v5 accessoryID];
  if (!v6)
  {
    if (a4)
    {
      CBErrorF();
      *a4 = v26 = 0;
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_52;
  }

  v7 = [(NSMutableDictionary *)self->_powerSources objectForKeyedSubscript:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 groupID];
    [v40 setGroupID:v9];

    v10 = [v8 accessoryID];
    [v40 setAccessoryID:v10];

    goto LABEL_33;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v11 = [(NSMutableDictionary *)self->_powerSources allValues];
  v12 = [v11 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (!v12)
  {
LABEL_24:

LABEL_25:
    if (a4)
    {
      v25 = CBErrorF();
      v8 = 0;
      goto LABEL_27;
    }

    v8 = 0;
    goto LABEL_55;
  }

  v13 = *v42;
LABEL_7:
  v14 = 0;
  while (1)
  {
    if (*v42 != v13)
    {
      objc_enumerationMutation(v11);
    }

    v8 = *(*(&v41 + 1) + 8 * v14);
    v15 = [v8 accessoryID];
    if (v15)
    {
      v16 = [v8 accessoryID];
      v17 = v6;
      v18 = v17;
      if (v16 == v17)
      {

LABEL_29:
        v27 = v8;
        goto LABEL_32;
      }

      if (v16)
      {
        v19 = [v16 isEqual:v17];

        if (v19)
        {
          goto LABEL_29;
        }
      }

      else
      {
      }
    }

    v20 = [v8 groupID];
    if (!v20)
    {
      goto LABEL_22;
    }

    v21 = [v8 groupID];
    v22 = v6;
    v23 = v22;
    if (v21 == v22)
    {
      break;
    }

    if (v21)
    {
      v24 = [v21 isEqual:v22];

      if (v24)
      {
        goto LABEL_31;
      }
    }

    else
    {
    }

LABEL_22:
    if (v12 == ++v14)
    {
      v12 = [v11 countByEnumeratingWithState:&v41 objects:v47 count:16];
      if (v12)
      {
        goto LABEL_7;
      }

      goto LABEL_24;
    }
  }

LABEL_31:
  v28 = v8;
  v29 = [v28 groupID];
  [v40 setGroupID:v29];

  v30 = [v28 accessoryID];
  [v40 setAccessoryID:v30];

LABEL_32:
  if (!v8)
  {
    goto LABEL_25;
  }

LABEL_33:
  if (([v40 internalFlags] & 8) != 0)
  {
    [v40 setChangeFlags:{objc_msgSend(v40, "changeFlags") | 8}];
    [v40 setPresent:1];
    [v8 updateWithCBPowerSource:v40];
    v36 = sub_100058928();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v46 = v8;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Power source info overridden with mock %@", buf, 0xCu);
    }

    [(CBStackPowerSourceMonitorBTStack *)v39 _handlePowerSourceFound:v8];
LABEL_50:
    v26 = 1;
    goto LABEL_51;
  }

  v31 = [[NSUUID alloc] initWithUUIDString:v6];
  if (v31)
  {
    if (qword_100B508D0 != -1)
    {
      sub_10080A598();
    }

    v32 = sub_100046458(off_100B508C8, v31, 0);
    if (v32)
    {
      if (qword_100B508F0 != -1)
      {
        sub_100809D38();
      }

      v33 = [[CBPowerSource alloc] initWithBTStackDevice:sub_1000504C8(off_100B508E8 identifier:v32 error:{1), v6, 0}];
      if (v33)
      {
        [v33 setPartID:{objc_msgSend(v8, "partID")}];
        v34 = [v8 updateWithCBPowerSource:v33];
        v35 = sub_100058928();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v46 = v8;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Power source override reset %@", buf, 0xCu);
        }

        if (v34)
        {
          [(CBStackPowerSourceMonitorBTStack *)v39 _handlePowerSourceFound:v8];
        }
      }
    }

    goto LABEL_50;
  }

  if (!a4)
  {
LABEL_55:
    v26 = 0;
    goto LABEL_51;
  }

  v25 = CBErrorF();
LABEL_27:
  v26 = 0;
  *a4 = v25;
LABEL_51:

LABEL_52:
LABEL_53:

  return v26;
}

- (void)_reportMetricIfNeeded:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (-[NSMutableSet count](v5->_reportMetrics, "count") && ([v4 isAppleDevice] & 1) == 0)
  {
    v6 = [v4 accessoryID];
    if (!v6 || ![(NSMutableSet *)v5->_reportMetrics containsObject:v6])
    {
      goto LABEL_32;
    }

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10012C0F4;
    v31[3] = &unk_100AE0B60;
    v31[4] = v5;
    v31[5] = v6;
    v7 = objc_retainBlock(v31);
    if ([v4 partID] == 1)
    {
      v8 = [v4 components];
      v9 = [v8 count];
    }

    else
    {
      v9 = 1;
    }

    v10 = [v4 appearanceValue];
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (v9)
    {
      v12 = v9 << 32;
    }

    else
    {
      v12 = 0;
    }

    v13 = [v4 deviceType];
    if (v13)
    {
      v14 = v13 << 40;
    }

    else
    {
      v14 = 0;
    }

    v15 = [v4 transportType];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
      if (v16 == @"Bluetooth" || (v18 = v17, v19 = [(__CFString *)v17 isEqual:@"Bluetooth"], v18, (v19 & 1) != 0))
      {
        v20 = &_mh_execute_header;
LABEL_30:

LABEL_31:
        v27 = [v4 vendorID];
        v28 = sub_10000F034();
        (*(*v28 + 808))(v28, v14 | v12 | v11, v20 | (v27 << 48));
        (v7[2])(v7);

LABEL_32:
        goto LABEL_33;
      }

      v21 = v18;
      v22 = v21;
      if (v16 == @"Bluetooth LE" || (v29 = [(__CFString *)v21 isEqual:@"Bluetooth LE"], v22, v29))
      {

        v23 = [v4 productID];
        if (!v23)
        {
          if ([v4 partID] == 1)
          {
            memset(v30, 0, sizeof(v30));
            v24 = [v4 components];
            v25 = [v24 allValues];

            if ([v25 countByEnumeratingWithState:v30 objects:v32 count:16])
            {
              v26 = [**(&v30[0] + 1) productID];
              if (v26)
              {
                v23 = v26;
              }

              else
              {
                v23 = 0;
              }
            }

            else
            {
              v23 = 0;
            }
          }

          else
          {
            v23 = 0;
          }
        }

        v20 = v23 | 0x200000000;
        goto LABEL_31;
      }
    }

    v20 = 0;
    goto LABEL_30;
  }

LABEL_33:
  objc_sync_exit(v5);
}

- (id)_classicDeviceUUID:(void *)a3
{
  if (a3)
  {
    v4 = *(a3 + 128);
    v5 = *(a3 + 129);
    v6 = *(a3 + 130);
    v7 = *(a3 + 131);
    v8 = *(a3 + 132);
    v9 = *(a3 + 133);
    v24[0] = 0;
    v24[1] = 0;
    if (qword_100B508D0 != -1)
    {
      sub_10080A5C0();
    }

    sub_1000498D4(off_100B508C8, (v4 << 40) | (v5 << 32) | (v6 << 24) | (v7 << 16) | (v8 << 8) | v9, 0, 1u, 0, 0, v24);
    v10 = sub_10004DF60(v24);
    v11 = sub_100058928();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(a3, __p);
      v12 = v19;
      v13 = __p[0];
      v14 = [v10 UUIDString];
      v15 = v14;
      v16 = __p;
      if (v12 < 0)
      {
        v16 = v13;
      }

      *buf = 136315394;
      v21 = v16;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found identifier for classic device '%s': %@", buf, 0x16u);

      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_findPowerSourceWithIdentifiers:(id)a3 and:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      v9 = [(NSMutableDictionary *)self->_powerSources objectForKeyedSubscript:v7];
      if (v9)
      {
        v10 = v6;
        v11 = v8;
        if (v10 != v11)
        {
          v12 = v11;
          v13 = [v10 isEqual:v11];

          if (v13)
          {
            goto LABEL_13;
          }

          goto LABEL_6;
        }

        goto LABEL_12;
      }
    }

    v9 = [(NSMutableDictionary *)self->_powerSources objectForKeyedSubscript:v6];
    if (v9 && v8)
    {
      [(NSMutableDictionary *)self->_powerSources setObject:v9 forKeyedSubscript:v8];
      v10 = v6;
      v14 = v8;
      if (v10 == v14)
      {
LABEL_12:

        goto LABEL_13;
      }

      v15 = v14;
      v16 = [v10 isEqual:v14];

      if ((v16 & 1) == 0)
      {
LABEL_6:
        [(NSMutableDictionary *)self->_powerSources setObject:0 forKeyedSubscript:v10];
      }
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_13:

  return v9;
}

- (id)_identifierForAccessoryID:(id)a3
{
  v4 = a3;
  if (!self->_classicMap)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    classicMap = self->_classicMap;
    self->_classicMap = v5;
  }

  v7 = v4;
  v8 = [v7 normalized];
  v9 = [(NSMutableDictionary *)self->_classicMap objectForKeyedSubscript:v8];
  if (!v9)
  {
    if (qword_100B508F0 != -1)
    {
      sub_10080A5D4();
    }

    v10 = sub_10056B294(off_100B508E8, v7);
    if (v10)
    {
      goto LABEL_7;
    }

    *&__p[4] = 0;
    *__p = 0;
    [v7 UTF8String];
    if (TextToHardwareAddress())
    {
      v17 = sub_100058928();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080A5E8();
      }
    }

    else
    {
      v19 = (__p[0] << 40) | (__p[1] << 32) | (__p[2] << 24) | (__p[3] << 16) | (__p[4] << 8) | __p[5];
      if (v19)
      {
        if (qword_100B508F0 != -1)
        {
          sub_100809D38();
        }

        v10 = sub_1000504C8(off_100B508E8, v19, 1);
        if (v10)
        {
LABEL_7:
          v11 = sub_100058928();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v10, __p);
            v12 = v21 >= 0 ? __p : *__p;
            *buf = 138412546;
            v23 = v7;
            v24 = 2080;
            v25 = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found device with accessoryID '%@': %s", buf, 0x16u);
            if (v21 < 0)
            {
              operator delete(*__p);
            }
          }

          v13 = [(CBStackPowerSourceMonitorBTStack *)self _classicDeviceUUID:v10];
          v9 = 0;
          for (i = 1; v13 && (i & 1) != 0; i = 0)
          {
            v15 = [v13 UUIDString];

            [(NSMutableDictionary *)self->_classicMap setObject:v15 forKeyedSubscript:v8];
            v16 = sub_100058928();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *__p = 0;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Updated Classic Map", __p, 2u);
            }

            v9 = v15;
            [(NSMutableDictionary *)self->_classicMap enumerateKeysAndObjectsUsingBlock:&stru_100AE1188];
          }

LABEL_26:

          goto LABEL_27;
        }
      }
    }

    v13 = sub_100058928();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 138412290;
      *&__p[4] = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "### No classic device found for '%@'", __p, 0xCu);
    }

    v9 = 0;
    goto LABEL_26;
  }

LABEL_27:

  return v9;
}

- (id)_identifierForClassicDevice:(void *)a3
{
  if (!self->_classicMap)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    classicMap = self->_classicMap;
    self->_classicMap = v5;
  }

  v7 = sub_10053FCFC(a3);
  v8 = [v7 normalized];

  if (!v8 || ([(NSMutableDictionary *)self->_classicMap objectForKeyedSubscript:v8], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v33 = *(a3 + 32);
    v34 = *(a3 + 66);
    v31[0] = 0;
    v31[1] = 0;
    v32 = 0;
    sub_1000BE6F8(&v33, v31);
    v10 = [NSString alloc];
    if (v32 >= 0)
    {
      v11 = v31;
    }

    else
    {
      v11 = v31[0];
    }

    v12 = [v10 initWithUTF8String:v11];
    v13 = [v12 normalized];

    if (v13)
    {
      v9 = [(NSMutableDictionary *)self->_classicMap objectForKeyedSubscript:v13];
      if (v9)
      {
        goto LABEL_31;
      }

      v14 = [(CBStackPowerSourceMonitorBTStack *)self _classicDeviceUUID:a3];
      v15 = v14;
      if (v14)
      {
        v16 = [v14 UUIDString];

        if (v16)
        {
          __p = 0;
          p_p = &__p;
          v27 = 0x3032000000;
          v28 = sub_100042214;
          v29 = sub_10004259C;
          v30 = 0;
          v17 = self->_classicMap;
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_10012CD6C;
          v24[3] = &unk_100AE11B0;
          v24[5] = v13;
          v24[6] = &__p;
          v24[4] = v8;
          [(NSMutableDictionary *)v17 enumerateKeysAndObjectsUsingBlock:v24];
          if (p_p[5] || (v8 ? (v18 = v8) : (v18 = v13), objc_storeStrong(p_p + 5, v18), p_p[5]))
          {
            [(NSMutableDictionary *)self->_classicMap setObject:v16 forKeyedSubscript:?];
            v19 = [(NSMutableDictionary *)self->_powerSources objectForKeyedSubscript:p_p[5]];
            if (v19)
            {
              [(NSMutableDictionary *)self->_powerSources setObject:v19 forKeyedSubscript:v16];
              [(NSMutableDictionary *)self->_powerSources setObject:0 forKeyedSubscript:p_p[5]];
            }

            v9 = v16;
          }

          else
          {
            v9 = 0;
          }

          _Block_object_dispose(&__p, 8);

          goto LABEL_30;
        }
      }

      else
      {
      }

      v16 = sub_100058928();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a3, &__p);
        if (v27 >= 0)
        {
          v20 = &__p;
        }

        else
        {
          v20 = __p;
        }

        *buf = 136315138;
        v36 = v20;
        v21 = "### No identifier found for classic device: %s";
        goto LABEL_27;
      }
    }

    else
    {
      v16 = sub_100058928();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a3, &__p);
        if (v27 >= 0)
        {
          v23 = &__p;
        }

        else
        {
          v23 = __p;
        }

        *buf = 136315138;
        v36 = v23;
        v21 = "### No address found for classic device: %s";
LABEL_27:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
        if (SHIBYTE(v27) < 0)
        {
          operator delete(__p);
        }
      }
    }

    v9 = 0;
LABEL_30:

LABEL_31:
    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31[0]);
    }
  }

  return v9;
}

- (void)_removeFromClassicMap:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_classicMap)
  {
    v6 = [v4 accessoryID];
    sub_10080A650(v6, self, &v7);
  }
}

- (void)_removePowerSourceFlags:(id)a3
{
  v4 = a3;
  v5 = [v4 accessoryID];
  if (v5)
  {
    v6 = [v4 groupID];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v5;
    }

    v9 = v8;
    v10 = [(NSMutableDictionary *)self->_powerSources objectForKeyedSubscript:v9];
    v11 = v10;
    if (v10)
    {
      [v10 removeFlags];
    }
  }

  else
  {
    sub_10080A6FC();
  }
}

- (BOOL)_setPowerSourceGroupID:(id *)a3
{
  v4 = *a3;
  if ([v4 partID] == 1 || (objc_msgSend(v4, "isAggregateComponent")) && (objc_msgSend(v4, "groupID"), v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = sub_100042214;
    v29 = sub_10004259C;
    v30 = 0;
    powerSources = self->_powerSources;
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_10012D648;
    v22 = &unk_100AE11D8;
    v7 = v4;
    v23 = v7;
    v24 = &v25;
    [(NSMutableDictionary *)powerSources enumerateKeysAndObjectsUsingBlock:&v19];
    if (!v26[5])
    {
      v8 = [v7 productID] - 8194;
      if (v8 <= 0x2D && ((1 << v8) & 0x207C7BB7FF9BLL) != 0)
      {
        v9 = [NSUUID alloc];
        v10 = [v7 accessoryID];
        v11 = [v9 initWithUUIDString:v10];

        if (v11)
        {
          if (qword_100B508D0 != -1)
          {
            sub_10080A598();
          }

          v12 = sub_100790774(off_100B508C8, v11);
          v13 = [v12 UUIDString];
          v14 = v26[5];
          v26[5] = v13;
        }
      }

      else
      {
        v18 = [v7 accessoryID];
        v11 = v26[5];
        v26[5] = v18;
      }
    }

    v15 = v26[5];
    v16 = v15 != 0;
    if (v15)
    {
      [v7 setGroupID:?];
    }

    else
    {
      sub_10080A788();
    }

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

@end