@interface SDHotspotAgent
+ (id)sharedAgent;
- (BOOL)_advertiserShouldAdvertise;
- (BOOL)_companionLinkShouldStart;
- (BOOL)_fillXpcDictionaryDescriptor:(id)descriptor descriptor:(id)a4 metaData:(id)data;
- (BOOL)_legacyBrowserShouldBrowse;
- (BOOL)_legacyBrowserShouldScan;
- (BOOL)_legacyBrowserShouldStart;
- (BOOL)_sysMonitorD2DEncryptionIsAvailable;
- (NSString)description;
- (SDHotspotAgent)init;
- (id)_appMonitorAppList;
- (id)_appMonitorStringForState:(unsigned int)state;
- (id)_discoveryCachedDeviceFor:(id)for;
- (id)_idsDeviceArray;
- (id)_idsDeviceIDForBluetoothID:(id)d;
- (id)_slicingLLPHSStateNotificationValueToString:(unint64_t)string;
- (id)_sysMonitorFamilyMemberForAltDSID:(id)d;
- (id)_sysMonitorFamilyMemberForAppleID:(id)d;
- (int64_t)_discoveryGroupForDevice:(id)device;
- (int64_t)_idsLegacyClientDeviceCount;
- (int64_t)_idsLegacyHostDeviceCount;
- (int64_t)_idsTetheringClientDeviceCount;
- (int64_t)_idsTetheringHostDeviceCount;
- (int64_t)_sysMonitorFamilyCount;
- (unsigned)_nearbyNetworkTypeForHotspotNetworkType:(unsigned __int8)type;
- (void)_activate;
- (void)_addClientID:(id)d bundleID:(id)iD proxy:(id)proxy;
- (void)_additionalInfoForRequest:(id)request toMessage:(id)message;
- (void)_advertiserEnsureStopped;
- (void)_advertiserUpdate;
- (void)_appMonitorEnsureStarted;
- (void)_appMonitorEnsureStopped;
- (void)_appMonitorUpdate;
- (void)_companionLinkActivateWithRequest:(id)request;
- (void)_companionLinkActivatedRequest:(id)request;
- (void)_companionLinkEnsureStarted;
- (void)_companionLinkEnsureStopped;
- (void)_companionLinkHandleLowLatencyFilterRequestOfType:(int64_t)type request:(id)request options:(id)options responseHandler:(id)handler;
- (void)_companionLinkHandleRequest:(id)request options:(id)options responseHandler:(id)handler;
- (void)_companionLinkHandleResponse:(id)response request:(id)request error:(id)error;
- (void)_discoveryCellularSlicingStateUpdateFor:(id)for;
- (void)_discoveryDeviceChanged:(id)changed;
- (void)_discoveryDeviceFound:(id)found;
- (void)_discoveryDeviceLost:(id)lost;
- (void)_discoveryReevaluateHandoffDevices;
- (void)_discoveryUpdateClients;
- (void)_discoveryUpdateCombined:(BOOL)combined;
- (void)_discoveryUpdateLegacyDeviceList:(id)list;
- (void)_enableHotspotForDevice:(id)device withCompletionHandler:(id)handler;
- (void)_idsEnsureStarted;
- (void)_idsEnsureStopped;
- (void)_invalidate;
- (void)_invalidated;
- (void)_legacyBrowserEnsureStarted;
- (void)_legacyBrowserEnsureStopped;
- (void)_legacyBrowswerUpdateD2DState;
- (void)_postUserAlertForName:(id)name altDSID:(id)d logCategory:(LogCategory *)category completion:(id)completion;
- (void)_prefsChanged:(BOOL)changed;
- (void)_registerForCellularSlicingAvailabilityNotifications;
- (void)_registerForWombatActivityNotifications;
- (void)_removeClientID:(id)d;
- (void)_startBrowsingForClientID:(id)d;
- (void)_stopBrowsingForClientID:(id)d;
- (void)_sysMonitorEnsureStarted;
- (void)_sysMonitorEnsureStopped;
- (void)_unregisterForCellularSlicingCapabilityNotifications;
- (void)_unregisterWombatActivityNotifications;
- (void)_update;
- (void)_updateAdvertisementSuppression:(BOOL)suppression;
- (void)_userAlertForMember:(id)member logCategory:(LogCategory *)category completion:(id)completion;
- (void)activate;
- (void)addClientID:(id)d proxy:(id)proxy;
- (void)enableHotspotForDevice:(id)device withCompletionHandler:(id)handler;
- (void)hotspotManagerTetheringSupportChanged:(id)changed;
- (void)invalidate;
- (void)prefsChanged;
- (void)removeClientID:(id)d;
- (void)service:(id)service devicesChanged:(id)changed;
- (void)startBrowsing;
- (void)stopBrowsing;
- (void)stopBrowsingForClientID:(id)d;
- (void)testNotification;
- (void)update;
- (void)updateLowLatencyFilter:(id)filter isAddFilter:(BOOL)addFilter completion:(id)completion;
- (void)updatedFoundDeviceList:(id)list;
@end

@implementation SDHotspotAgent

- (int64_t)_idsTetheringClientDeviceCount
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  result = self->_idsTetheringClientDeviceCount;
  if (result < 0)
  {
    self->_idsTetheringClientDeviceCount = 0;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    _idsDeviceArray = [(SDHotspotAgent *)self _idsDeviceArray];
    v5 = [_idsDeviceArray countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (!v5)
    {
      goto LABEL_32;
    }

    v6 = v5;
    v7 = *v19;
    while (1)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(_idsDeviceArray);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        modelIdentifier = [v9 modelIdentifier];
        lowercaseString = [modelIdentifier lowercaseString];

        if (lowercaseString)
        {
          if ([lowercaseString containsString:@"mac"])
          {
            if (v9)
            {
              [v9 operatingSystemVersion];
              if (v17 > 14)
              {
                goto LABEL_29;
              }

              [v9 operatingSystemVersion];
              if (v16 > 10)
              {
                goto LABEL_29;
              }
            }

            else
            {
              v17 = 0;
              v16 = 0;
            }
          }

          if (([lowercaseString containsString:@"iphone"] & 1) != 0 || objc_msgSend(lowercaseString, "containsString:", @"ipad"))
          {
            if (v9)
            {
              [v9 operatingSystemVersion];
              if (v15 <= 12)
              {
                goto LABEL_22;
              }

LABEL_29:
              ++self->_idsTetheringClientDeviceCount;
              goto LABEL_30;
            }

            v15 = 0;
            if ([lowercaseString containsString:@"watch"])
            {
LABEL_27:
              v12 = 0;
              v13 = 0;
              v14 = 0;
            }
          }

          else
          {
LABEL_22:
            if ([lowercaseString containsString:@"watch"])
            {
              if (!v9)
              {
                goto LABEL_27;
              }

              [v9 operatingSystemVersion];
              if (v12 > 5)
              {
                goto LABEL_29;
              }
            }
          }

          if (![lowercaseString containsString:{@"realitydevice", v12, v13, v14}])
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        if (dword_100970200 <= 90 && (dword_100970200 != -1 || _LogCategory_Initialize()))
        {
          sub_1000BCEB4();
        }

LABEL_30:
      }

      v6 = [_idsDeviceArray countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (!v6)
      {
LABEL_32:

        return self->_idsTetheringClientDeviceCount;
      }
    }
  }

  return result;
}

- (BOOL)_advertiserShouldAdvertise
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100970200 <= 40 && (dword_100970200 != -1 || _LogCategory_Initialize()))
  {
    sub_100031AF8(self);
  }

  if (!self->_systemMonitorActivated || self->_prefAdvertisingDisabled)
  {
    goto LABEL_6;
  }

  isTetheringSupported = [(SDHotspotManager *)self->_hotspotManager isTetheringSupported];
  if (!isTetheringSupported)
  {
    return isTetheringSupported;
  }

  if ([(SDHotspotManager *)self->_hotspotManager maxConnectionsReached])
  {
LABEL_6:
    LOBYTE(isTetheringSupported) = 0;
  }

  else
  {
    if (self->_suppressAdvertisement)
    {
      isTetheringSupported = _os_feature_enabled_impl();
      if (!isTetheringSupported)
      {
        return isTetheringSupported;
      }

      if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
      {
        sub_1000BBFB0();
      }
    }

    LOBYTE(isTetheringSupported) = [(SDHotspotAgent *)self _idsTetheringClientDeviceCount]>= 1 && [(SDHotspotAgent *)self _sysMonitorD2DEncryptionIsAvailable]|| [(SDHotspotAgent *)self _sysMonitorFamilyCount]> 0;
  }

  return isTetheringSupported;
}

- (int64_t)_sysMonitorFamilyCount
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  result = self->_familyCount;
  if (result < 0)
  {
    self->_familyCount = 0;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    familyMembers = [(CUSystemMonitor *)self->_systemMonitor familyMembers];
    v5 = [familyMembers countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(familyMembers);
          }

          if (([*(*(&v9 + 1) + 8 * v8) isMe] & 1) == 0)
          {
            ++self->_familyCount;
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [familyMembers countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    return self->_familyCount;
  }

  return result;
}

- (void)_legacyBrowserEnsureStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_hotspotBrowser)
  {
    if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
    {
      sub_1000BCF54();
    }

    [(SDHotspotBrowser *)self->_hotspotBrowser invalidate];
    hotspotBrowser = self->_hotspotBrowser;
    self->_hotspotBrowser = 0;
  }
}

- (void)_update
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([(SDHotspotAgent *)self _advertiserShouldAdvertise])
  {
    [(SDHotspotAgent *)self _advertiserUpdate];
  }

  else
  {
    [(SDHotspotAgent *)self _advertiserEnsureStopped];
  }

  if ([(SDHotspotAgent *)self _companionLinkShouldStart])
  {
    [(SDHotspotAgent *)self _companionLinkEnsureStarted];
  }

  else
  {
    [(SDHotspotAgent *)self _companionLinkEnsureStopped];
  }

  if ([(SDHotspotAgent *)self _legacyBrowserShouldStart])
  {

    [(SDHotspotAgent *)self _legacyBrowserEnsureStarted];
  }

  else
  {

    [(SDHotspotAgent *)self _legacyBrowserEnsureStopped];
  }
}

- (BOOL)_legacyBrowserShouldStart
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100970200 <= 40 && (dword_100970200 != -1 || _LogCategory_Initialize()))
  {
    sub_100031F38(self);
  }

  if (!self->_systemMonitorActivated || !self->_idsService || !self->_hotspotManager || self->_prefLegacyDisabled)
  {
    return 0;
  }

  if (-[SDHotspotAgent _sysMonitorD2DEncryptionIsAvailable](self, "_sysMonitorD2DEncryptionIsAvailable") || (-[SDHotspotAgent _idsDeviceArray](self, "_idsDeviceArray"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 count], v4, !v5))
  {
    if ([(SDHotspotAgent *)self _idsLegacyHostDeviceCount]<= 0)
    {
      return [(SDHotspotAgent *)self _idsLegacyClientDeviceCount]> 0;
    }
  }

  return 1;
}

- (int64_t)_idsLegacyClientDeviceCount
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  result = self->_idsLegacyClientDeviceCount;
  if (result < 0)
  {
    self->_idsLegacyClientDeviceCount = 0;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    _idsDeviceArray = [(SDHotspotAgent *)self _idsDeviceArray];
    v5 = [_idsDeviceArray countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (!v5)
    {
      goto LABEL_26;
    }

    v6 = v5;
    v7 = *v20;
    while (1)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(_idsDeviceArray);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        modelIdentifier = [v9 modelIdentifier];
        lowercaseString = [modelIdentifier lowercaseString];

        if (lowercaseString)
        {
          if ([lowercaseString containsString:@"mac"])
          {
            if (!v9)
            {
              v16 = 0;
              v17 = 0;
              v12 = &v14;
              v18 = 0;
LABEL_22:
              *v12 = 0;
              v12[1] = 0;
              v12[2] = 0;
LABEL_23:
              ++self->_idsLegacyClientDeviceCount;
              goto LABEL_24;
            }

            [v9 operatingSystemVersion];
            if (v16 < 11)
            {
              [v9 operatingSystemVersion];
              if (v15 < 15)
              {
                goto LABEL_23;
              }
            }
          }

          if (([lowercaseString containsString:@"iphone"] & 1) != 0 || objc_msgSend(lowercaseString, "containsString:", @"ipad"))
          {
            v12 = &v13;
            if (!v9)
            {
              goto LABEL_22;
            }

            [v9 operatingSystemVersion];
            if (v13 < 13)
            {
              goto LABEL_23;
            }
          }
        }

        else if (dword_100970200 <= 90 && (dword_100970200 != -1 || _LogCategory_Initialize()))
        {
          sub_1000BCE74();
        }

LABEL_24:
      }

      v6 = [_idsDeviceArray countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (!v6)
      {
LABEL_26:

        return self->_idsLegacyClientDeviceCount;
      }
    }
  }

  return result;
}

- (int64_t)_idsLegacyHostDeviceCount
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  result = self->_idsLegacyHostDeviceCount;
  if (result < 0)
  {
    self->_idsLegacyHostDeviceCount = 0;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    _idsDeviceArray = [(SDHotspotAgent *)self _idsDeviceArray];
    v5 = [_idsDeviceArray countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (!v5)
    {
      goto LABEL_15;
    }

    v6 = v5;
    v7 = *v12;
    while (1)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(_idsDeviceArray);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 supportsTethering])
        {
          if (!v9)
          {
            v10 = 0;
LABEL_12:
            ++self->_idsLegacyHostDeviceCount;
            continue;
          }

          [v9 operatingSystemVersion];
          if (v10 <= 12)
          {
            goto LABEL_12;
          }
        }
      }

      v6 = [_idsDeviceArray countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (!v6)
      {
LABEL_15:

        return self->_idsLegacyHostDeviceCount;
      }
    }
  }

  return result;
}

- (void)_companionLinkEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([(SDHotspotAgent *)self _companionLinkFamilySupported])
  {
    v3 = 4098;
  }

  else
  {
    v3 = 2;
  }

  p_companionLinkClient = &self->_companionLinkClient;
  companionLinkClient = self->_companionLinkClient;
  if (!companionLinkClient)
  {
    goto LABEL_11;
  }

  if ([(RPCompanionLinkClient *)companionLinkClient controlFlags]!= v3)
  {
    if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
    {
      sub_1000BC35C(&self->_companionLinkClient);
    }

    [(RPCompanionLinkClient *)*p_companionLinkClient setControlFlags:v3];
  }

  if (!*p_companionLinkClient)
  {
LABEL_11:
    v6 = objc_opt_new();
    v7 = self->_companionLinkClient;
    self->_companionLinkClient = v6;

    [(RPCompanionLinkClient *)self->_companionLinkClient setDispatchQueue:self->_dispatchQueue];
    [(RPCompanionLinkClient *)self->_companionLinkClient setControlFlags:v3];
    [(RPCompanionLinkClient *)self->_companionLinkClient setRssiThreshold:self->_prefRSSIThreshold];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000B66A8;
    v10[3] = &unk_1008CE210;
    v10[4] = self;
    [(RPCompanionLinkClient *)self->_companionLinkClient setDeviceFoundHandler:v10];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000326EC;
    v9[3] = &unk_1008CE238;
    v9[4] = self;
    [(RPCompanionLinkClient *)self->_companionLinkClient setDeviceChangedHandler:v9];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000B6738;
    v8[3] = &unk_1008CE210;
    v8[4] = self;
    [(RPCompanionLinkClient *)self->_companionLinkClient setDeviceLostHandler:v8];
    [(RPCompanionLinkClient *)self->_companionLinkClient setInterruptionHandler:&stru_1008CF470];
    [(RPCompanionLinkClient *)self->_companionLinkClient setInvalidationHandler:&stru_1008CF490];
    [(RPCompanionLinkClient *)self->_companionLinkClient activateWithCompletion:&stru_1008CF4B0];
  }
}

- (BOOL)_companionLinkShouldStart
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100970200 <= 40 && (dword_100970200 != -1 || _LogCategory_Initialize()))
  {
    sub_100033494(self);
  }

  if (self->_systemMonitorActivated && !self->_prefRapportDisabled)
  {
    if ([(SDHotspotAgent *)self _idsTetheringHostDeviceCount]>= 1 && [(SDHotspotAgent *)self _sysMonitorD2DEncryptionIsAvailable]|| [(SDHotspotAgent *)self _sysMonitorFamilyCount]> 0)
    {
      return 1;
    }

    if ([(SDHotspotManager *)self->_hotspotManager isTetheringSupported])
    {
      _idsDeviceArray = [(SDHotspotAgent *)self _idsDeviceArray];
      v3 = [_idsDeviceArray count] != 0;

      return v3;
    }
  }

  return 0;
}

- (BOOL)_sysMonitorD2DEncryptionIsAvailable
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  systemMonitor = self->_systemMonitor;

  return [(CUSystemMonitor *)systemMonitor manateeAvailable];
}

- (int64_t)_idsTetheringHostDeviceCount
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  result = self->_idsTetheringHostDeviceCount;
  if (result < 0)
  {
    self->_idsTetheringHostDeviceCount = 0;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    _idsDeviceArray = [(SDHotspotAgent *)self _idsDeviceArray];
    v5 = [_idsDeviceArray countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(_idsDeviceArray);
          }

          if ([*(*(&v9 + 1) + 8 * v8) supportsTethering])
          {
            ++self->_idsTetheringHostDeviceCount;
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [_idsDeviceArray countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    return self->_idsTetheringHostDeviceCount;
  }

  return result;
}

- (void)_advertiserUpdate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  localPowerSource = [(SDStatusMonitor *)self->_statusMonitor localPowerSource];
  charging = [localPowerSource charging];
  [localPowerSource chargeLevel];
  v6 = v5 * 100.0;
  if (self->_prefBatteryLevelOverride <= 0)
  {
    prefBatteryLevelOverride = v6;
  }

  else
  {
    prefBatteryLevelOverride = self->_prefBatteryLevelOverride;
  }

  if (self->_prefChargingOverrideDisabled || !charging || prefBatteryLevelOverride > 20)
  {
    if (prefBatteryLevelOverride < 0x64)
    {
      v9 = 258;
    }

    else
    {
      v9 = 259;
    }

    if (prefBatteryLevelOverride >= 0x33)
    {
      v10 = v9;
    }

    else
    {
      v10 = 257;
    }

    if (prefBatteryLevelOverride >= 21)
    {
      v8 = v10;
    }

    else
    {
      v8 = 256;
    }
  }

  else
  {
    if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
    {
      sub_1000BBDD4();
    }

    v8 = 257;
  }

  prefFamilyEnabledOverride = self->_prefFamilyEnabledOverride;
  if (prefFamilyEnabledOverride)
  {
    bOOLValue = [(NSNumber *)prefFamilyEnabledOverride BOOLValue];
  }

  else
  {
    bOOLValue = [(SDStatusMonitor *)self->_statusMonitor familyHotspotEnabled];
  }

  v32 = bOOLValue;
  prefNetworkTypeOverride = self->_prefNetworkTypeOverride;
  if (prefNetworkTypeOverride)
  {
    integerValue = [(NSNumber *)prefNetworkTypeOverride integerValue];
  }

  else
  {
    integerValue = [(SDStatusMonitor *)self->_statusMonitor networkType];
  }

  v15 = [(SDHotspotAgent *)self _nearbyNetworkTypeForHotspotNetworkType:integerValue];
  prefSignalStrengthOverride = self->_prefSignalStrengthOverride;
  if (!prefSignalStrengthOverride)
  {
    prefSignalStrengthOverride = [(SDStatusMonitor *)self->_statusMonitor signalStrength];
  }

  if (prefSignalStrengthOverride)
  {
    v17 = prefSignalStrengthOverride - 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = +[SDNearbyAgent sharedNearbyAgent];
  hotspotInfo = [v18 hotspotInfo];

  if (v32)
  {
    v20 = 128;
  }

  else
  {
    v20 = 0;
  }

  v21 = v8 | v20 | (16 * (v15 & 7)) | (4 * (v17 & 3u));
  if (hotspotInfo != v21)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (((v21 ^ hotspotInfo) & 0x83) != 0)
    {
      if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
      {
        sub_1000BBDF0();
      }

      goto LABEL_42;
    }

    advertisementTime = self->_advertisementTime;
    if (Current > advertisementTime)
    {
      self->_advertisementTime = CFAbsoluteTimeGetCurrent() + 60.0;
LABEL_42:
      v24 = +[SDNearbyAgent sharedNearbyAgent];
      [v24 setHotspotInfo:v21];

      if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_51;
    }

    if (self->_advertisementTimer)
    {
      if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
      {
        sub_1000BBE4C();
      }
    }

    else if (advertisementTime - Current <= 0.0)
    {
      if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
      {
        sub_1000BBE68();
      }

      [(SDHotspotAgent *)self _update];
    }

    else
    {
      v28 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      advertisementTimer = self->_advertisementTimer;
      self->_advertisementTimer = v28;

      v30 = self->_advertisementTimer;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1000B4AA4;
      handler[3] = &unk_1008CDEA0;
      handler[4] = self;
      dispatch_source_set_event_handler(v30, handler);
      v31 = self->_advertisementTimer;
      CUDispatchTimerSet();
      dispatch_activate(self->_advertisementTimer);
      if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
      {
        sub_1000BBE84();
      }
    }
  }

LABEL_51:
  if (!self->_companionLinkReceiver)
  {
    v25 = objc_opt_new();
    companionLinkReceiver = self->_companionLinkReceiver;
    self->_companionLinkReceiver = v25;

    [(RPCompanionLinkClient *)self->_companionLinkReceiver setDispatchQueue:self->_dispatchQueue];
    v27 = self->_companionLinkReceiver;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000B4B1C;
    v33[3] = &unk_1008CF358;
    v33[4] = self;
    [(RPCompanionLinkClient *)v27 registerRequestID:@"com.sharing.hotspot.request" options:0 handler:v33];
    [(RPCompanionLinkClient *)self->_companionLinkReceiver setInterruptionHandler:&stru_1008CF378];
    [(RPCompanionLinkClient *)self->_companionLinkReceiver setInvalidationHandler:&stru_1008CF398];
    [(RPCompanionLinkClient *)self->_companionLinkReceiver activateWithCompletion:&stru_1008CF3B8];
  }
}

- (id)_idsDeviceArray
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  idsDeviceArray = self->_idsDeviceArray;
  if (!idsDeviceArray)
  {
    if (dword_100970200 <= 30 && (dword_100970200 != -1 || _LogCategory_Initialize()))
    {
      sub_1000BCE58();
    }

    devices = [(IDSService *)self->_idsService devices];
    v5 = self->_idsDeviceArray;
    self->_idsDeviceArray = devices;

    idsDeviceArray = self->_idsDeviceArray;
  }

  return idsDeviceArray;
}

- (void)_discoveryUpdateClients
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  clientProxyMap = self->_clientProxyMap;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000B9200;
  v4[3] = &unk_1008CF5F0;
  v4[4] = self;
  [(NSMutableDictionary *)clientProxyMap enumerateKeysAndObjectsUsingBlock:v4];
}

+ (id)sharedAgent
{
  if (qword_100989B98 != -1)
  {
    sub_1000BBB24();
  }

  v3 = qword_100989BA0;

  return v3;
}

- (SDHotspotAgent)init
{
  v9.receiver = self;
  v9.super_class = SDHotspotAgent;
  v2 = [(SDHotspotAgent *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_advertisementTime = 0.0;
    v2->_cellularSlicingNotifyToken = -1;
    v4 = dispatch_queue_create("com.apple.sharing.SDHotspotAgent", 0);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;

    v3->_familyCount = -1;
    *&v6 = -1;
    *(&v6 + 1) = -1;
    *&v3->_idsLegacyClientDeviceCount = v6;
    *&v3->_idsTetheringClientDeviceCount = v6;
    *&v3->_wombatActivityReadyToken = 0xFFFFFFFFLL;
    v7 = v3;
  }

  return v3;
}

- (NSString)description
{
  NSAppendPrintF();
  v35 = 0;
  companionLinkClient = self->_companionLinkClient;
  NSAppendPrintF();
  v3 = v35;

  familyCount = self->_familyCount;
  NSAppendPrintF();
  v4 = v3;

  self->_hotspotBrowser;
  NSAppendPrintF();
  v5 = v4;

  idsLegacyClientDeviceCount = self->_idsLegacyClientDeviceCount;
  NSAppendPrintF();
  v6 = v5;

  idsLegacyHostDeviceCount = self->_idsLegacyHostDeviceCount;
  NSAppendPrintF();
  v7 = v6;

  if ([(SDHotspotManager *)self->_hotspotManager isTetheringSupported])
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  v28 = v8;
  NSAppendPrintF();
  v9 = v7;

  [(NSArray *)self->_idsDeviceArray count];
  NSAppendPrintF();
  v10 = v9;

  idsTetheringClientDeviceCount = self->_idsTetheringClientDeviceCount;
  NSAppendPrintF();
  v11 = v10;

  idsTetheringHostDeviceCount = self->_idsTetheringHostDeviceCount;
  NSAppendPrintF();
  v12 = v11;

  NSAppendPrintF();
  v13 = v12;

  localPowerSource = [(SDStatusMonitor *)self->_statusMonitor localPowerSource];
  [localPowerSource chargeLevel];
  v31 = (v15 * 100.0);
  NSAppendPrintF();
  v16 = v13;

  if ([(SDStatusMonitor *)self->_statusMonitor familyHotspotEnabled])
  {
    v17 = "yes";
  }

  else
  {
    v17 = "no";
  }

  v32 = v17;
  NSAppendPrintF();
  v18 = v16;

  networkType = [(SDStatusMonitor *)self->_statusMonitor networkType];
  NSAppendPrintF();
  v19 = v18;

  signalStrength = [(SDStatusMonitor *)self->_statusMonitor signalStrength];
  NSAppendPrintF();
  v20 = v19;

  [(SDHotspotAgent *)self p2pAllowed];
  NSAppendPrintF();
  v21 = v20;

  self->_cellularSlicingIsAvailable;
  NSAppendPrintF();
  v22 = v21;

  return v21;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B3EA0;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (dword_100970200 <= 30 && (dword_100970200 != -1 || _LogCategory_Initialize()))
  {
    sub_1000BBB38();
  }

  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = objc_alloc_init(_TtC16DaemoniOSLibrary28SDLocalCellularStatusManager);
  cellularStatusManager = self->_cellularStatusManager;
  self->_cellularStatusManager = v3;

  v5 = +[SDStatusMonitor sharedMonitor];
  statusMonitor = self->_statusMonitor;
  self->_statusMonitor = v5;

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"update" name:@"com.apple.sharingd.HotspotAutoStateChanged" object:0];
  [v7 addObserver:self selector:"update" name:@"com.apple.sharingd.HotspotFamilyStateChanged" object:0];
  [v7 addObserver:self selector:"update" name:@"com.apple.sharingd.PowerSourceChanged" object:0];
  [v7 addObserver:self selector:"update" name:@"com.apple.sharingd.SIMDataChanged" object:0];
  [v7 addObserver:self selector:"update" name:@"com.apple.sharingd.SignalStrengthChanged" object:0];
  [v7 addObserver:self selector:"_discoveryReevaluateHandoffDevices" name:@"com.apple.sharingd.HandoffTrackedDevicesChanged" object:0];
  [v7 addObserver:self selector:"update" name:@"SDHotspotManagerConnectionStateChanged" object:0];
  [v7 addObserver:self selector:"update" name:@"com.apple.sharingd.WiFiRestart" object:0];
  [(SDHotspotAgent *)self _prefsChanged:1];
  [(SDHotspotAgent *)self _idsEnsureStarted];
  [(SDHotspotAgent *)self _sysMonitorEnsureStarted];
  [(SDHotspotAgent *)self _registerForWombatActivityNotifications];
  if (_os_feature_enabled_impl())
  {
    [(SDHotspotAgent *)self _registerForCellularSlicingAvailabilityNotifications];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B4104;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B425C;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    if (dword_100970200 <= 30 && (dword_100970200 != -1 || _LogCategory_Initialize()))
    {
      sub_1000BBB54();
    }

    [(SDHotspotAgent *)self _unregisterWombatActivityNotifications];
    [(SDHotspotAgent *)self _unregisterForCellularSlicingCapabilityNotifications];
    [(SDHotspotAgent *)self _advertiserEnsureStopped];
    [(SDHotspotAgent *)self _companionLinkEnsureStopped];
    [(SDHotspotAgent *)self _idsEnsureStopped];
    [(SDHotspotAgent *)self _legacyBrowserEnsureStopped];
    [(SDHotspotAgent *)self _sysMonitorEnsureStopped];

    [(SDHotspotAgent *)self _invalidated];
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  self->_invalidateDone = 1;
  if (dword_100970200 <= 30 && (dword_100970200 != -1 || _LogCategory_Initialize()))
  {
    sub_1000BBB70();
  }
}

- (void)prefsChanged
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B4400;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_prefsChanged:(BOOL)changed
{
  v51 = 0;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = CFPrefs_GetInt64() != 0;
  if (self->_prefAdvertisingDisabled != v5)
  {
    if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
    {
      sub_1000BBB8C();
    }

    self->_prefAdvertisingDisabled = v5;
  }

  Int64 = CFPrefs_GetInt64();
  if (v51)
  {
    v7 = -1;
  }

  else
  {
    v7 = Int64;
  }

  v8 = 100;
  if (v7 < 100)
  {
    v8 = v7;
  }

  if (v8 <= 1)
  {
    LODWORD(v8) = 1;
  }

  if (v7 < 0)
  {
    v9 = 0xFFFFFFFFLL;
  }

  else
  {
    v9 = v8;
  }

  prefBatteryLevelOverride = self->_prefBatteryLevelOverride;
  if (v9 != prefBatteryLevelOverride)
  {
    if (dword_100970200 <= 50)
    {
      if (dword_100970200 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_21;
        }

        prefBatteryLevelOverride = self->_prefBatteryLevelOverride;
      }

      v48 = prefBatteryLevelOverride;
      v49 = v9;
      LogPrintF();
    }

LABEL_21:
    self->_prefBatteryLevelOverride = v9;
  }

  v11 = CFPrefs_GetInt64();
  if (v51)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11 == 0;
  }

  v13 = !v12;
  if (self->_prefChargingOverrideDisabled != v13)
  {
    if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
    {
      sub_1000BBBE4();
    }

    self->_prefChargingOverrideDisabled = v13;
  }

  v14 = CFPrefs_GetInt64();
  if (!v51 || (v15 = self->_prefFamilyEnabledOverride, self->_prefFamilyEnabledOverride = 0, v15, !v51))
  {
    prefFamilyEnabledOverride = self->_prefFamilyEnabledOverride;
    if (!prefFamilyEnabledOverride || (v14 != 0) != [(NSNumber *)prefFamilyEnabledOverride BOOLValue:v48])
    {
      if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
      {
        sub_1000BBC3C(&self->_prefFamilyEnabledOverride);
      }

      v17 = [NSNumber numberWithBool:v14 != 0];
      v18 = self->_prefFamilyEnabledOverride;
      self->_prefFamilyEnabledOverride = v17;
    }
  }

  v19 = CFPrefs_GetInt64();
  if (v51)
  {
    v20 = 1;
  }

  else
  {
    v20 = v19 == 0;
  }

  v21 = !v20;
  if (self->_prefLegacyDisabled != v21)
  {
    if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
    {
      sub_1000BBCB0();
    }

    self->_prefLegacyDisabled = v21;
  }

  CFStringGetTypeID();
  v22 = CFPrefs_CopyTypedValue();
  if (!v51 || (v23 = self->_prefNetworkTypeOverride, self->_prefNetworkTypeOverride = 0, v23, !v51))
  {
    if (v22)
    {
      v50 = 0;
      v24 = SFHotspotTypeStringToType(v22, &v50);
      if (v50 == 1)
      {
        v25 = v24;
        unsignedIntValue = [(NSNumber *)self->_prefNetworkTypeOverride unsignedIntValue];
        if (dword_100970200 <= 50)
        {
          v27 = unsignedIntValue;
          if (dword_100970200 != -1 || _LogCategory_Initialize())
          {
            sub_1000BBD08(v27, v25);
          }
        }

        v28 = [NSNumber numberWithUnsignedChar:v25, v48, v49];
        prefNetworkTypeOverride = self->_prefNetworkTypeOverride;
        self->_prefNetworkTypeOverride = v28;
      }
    }
  }

  v30 = CFPrefs_GetInt64();
  if (v51)
  {
    v31 = 1;
  }

  else
  {
    v31 = v30 == 0;
  }

  v32 = !v31;
  if (self->_prefRapportDisabled != v32)
  {
    if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
    {
      sub_1000BBD7C();
    }

    self->_prefRapportDisabled = v32;
  }

  v33 = CFPrefs_GetInt64();
  v34 = -65;
  if (!v51)
  {
    v34 = v33;
  }

  if (v34 < 0)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  if (self->_prefRSSIThreshold != v35)
  {
    v36 = v35;
    if (dword_100970200 <= 50)
    {
      if (dword_100970200 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_81;
        }

        prefRSSIThreshold = self->_prefRSSIThreshold;
      }

      LogPrintF();
    }

LABEL_81:
    self->_prefRSSIThreshold = v36;
  }

  v37 = CFPrefs_GetInt64();
  if (v51)
  {
    v38 = 0;
  }

  else
  {
    v38 = v37;
  }

  v39 = 4;
  if (v38 < 4)
  {
    v39 = v38;
  }

  if (v38 >= 1)
  {
    v40 = v39;
  }

  else
  {
    v40 = 0;
  }

  if (v40 != self->_prefSignalStrengthOverride)
  {
    if (dword_100970200 <= 50)
    {
      if (dword_100970200 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_95;
        }

        prefSignalStrengthOverride = self->_prefSignalStrengthOverride;
      }

      LogPrintF();
    }

LABEL_95:
    self->_prefSignalStrengthOverride = v40;
  }

  v41 = CFPrefs_GetInt64();
  v42 = 3600;
  if (!v51)
  {
    v42 = v41;
  }

  if (v42 >= 1)
  {
    v43 = v42;
  }

  else
  {
    v43 = 0;
  }

  if (self->_prefStaleCacheInfoSecs != v43)
  {
    v44 = v43;
    if (dword_100970200 <= 50)
    {
      if (dword_100970200 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_106;
        }

        prefStaleCacheInfoSecs = self->_prefStaleCacheInfoSecs;
      }

      LogPrintF();
    }

LABEL_106:
    self->_prefStaleCacheInfoSecs = v44;
  }

  if (!changed)
  {
    [(SDHotspotAgent *)self _update];
  }
}

- (void)update
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B4A9C;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_advertiserEnsureStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
  {
    sub_1000BBF78();
  }

  v3 = +[SDNearbyAgent sharedNearbyAgent];
  [v3 setHotspotInfo:0];

  companionLinkReceiver = self->_companionLinkReceiver;
  if (companionLinkReceiver)
  {
    [(RPCompanionLinkClient *)companionLinkReceiver setInterruptionHandler:0];
    [(RPCompanionLinkClient *)self->_companionLinkReceiver setInvalidationHandler:0];
    [(RPCompanionLinkClient *)self->_companionLinkReceiver invalidate];
    v5 = self->_companionLinkReceiver;
    self->_companionLinkReceiver = 0;

    if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
    {
      sub_1000BBF94();
    }
  }
}

- (unsigned)_nearbyNetworkTypeForHotspotNetworkType:(unsigned __int8)type
{
  if (((type - 1) & 0xF8) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0x706050004030201uLL >> (8 * (type - 1));
  }

  return v3 & 7;
}

- (void)hotspotManagerTetheringSupportChanged:(id)changed
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B4E00;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (id)_appMonitorAppList
{
  if (qword_100989BB0 != -1)
  {
    sub_1000BC030();
  }

  v3 = qword_100989BA8;

  return v3;
}

- (void)_appMonitorEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  browserAppMonitor = self->_browserAppMonitor;
  if (!browserAppMonitor)
  {
    v4 = objc_opt_new();
    v5 = self->_browserAppMonitor;
    self->_browserAppMonitor = v4;

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000B4FB8;
    v6[3] = &unk_1008CF400;
    v6[4] = self;
    [(BKSApplicationStateMonitor *)self->_browserAppMonitor setHandler:v6];
    if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
    {
      sub_1000BC044();
    }

    browserAppMonitor = self->_browserAppMonitor;
  }

  [(BKSApplicationStateMonitor *)browserAppMonitor updateInterestedBundleIDs:self->_browserBundleIDs];
}

- (void)_appMonitorEnsureStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  browserAppMonitor = self->_browserAppMonitor;
  if (browserAppMonitor)
  {
    [(BKSApplicationStateMonitor *)browserAppMonitor invalidate];
    [(BKSApplicationStateMonitor *)self->_browserAppMonitor setHandler:0];
    v4 = self->_browserAppMonitor;
    self->_browserAppMonitor = 0;

    if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
    {
      sub_1000BC078();
    }
  }
}

- (void)_appMonitorUpdate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([(NSMutableArray *)self->_browserBundleIDs count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    allValues = [(NSMutableDictionary *)self->_clientProxyMap allValues];
    v4 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v16;
      do
      {
        v7 = 0;
        do
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(allValues);
          }

          v8 = *(*(&v15 + 1) + 8 * v7);
          browsing = [v8 browsing];
          if (browsing)
          {
            bundleID = [v8 bundleID];
            if (!bundleID || ![(NSMutableArray *)self->_browserBundleIDs containsObject:bundleID])
            {

              goto LABEL_20;
            }

            v11 = [(BKSApplicationStateMonitor *)self->_browserAppMonitor applicationStateForApplication:bundleID];
            if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
            {
              sub_1000BC094(self, v11);
            }

            if (v11 == 8)
            {
              goto LABEL_20;
            }
          }

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v12 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
        v5 = v12;
      }

      while (v12);
    }

    else
    {
LABEL_20:
      browsing = 0;
    }

    browserClientsInactive = self->_browserClientsInactive;
    self->_browserClientsInactive = browsing;
    if (browserClientsInactive != browsing && dword_100970200 <= 50)
    {
      if (dword_100970200 != -1)
      {
LABEL_24:
        LogPrintF();
        return;
      }

      if (_LogCategory_Initialize())
      {
        v14 = self->_browserClientsInactive;
        goto LABEL_24;
      }
    }
  }
}

- (id)_appMonitorStringForState:(unsigned int)state
{
  if (state < 9 && ((0x117u >> state) & 1) != 0)
  {
    state = *(&off_1008CF6C0 + state);
  }

  else
  {
    state = [NSString stringWithFormat:@"Unexpected (%ld)", state];
  }

  return state;
}

- (void)addClientID:(id)d proxy:(id)proxy
{
  dCopy = d;
  proxyCopy = proxy;
  v8 = +[NSXPCConnection currentConnection];
  sd_connectionBundleID = [v8 sd_connectionBundleID];
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000B549C;
  v13[3] = &unk_1008CE158;
  v13[4] = self;
  v14 = dCopy;
  v15 = sd_connectionBundleID;
  v16 = proxyCopy;
  v11 = proxyCopy;
  v12 = dCopy;
  dispatch_async(dispatchQueue, v13);
}

- (void)_addClientID:(id)d bundleID:(id)iD proxy:(id)proxy
{
  dCopy = d;
  iDCopy = iD;
  dispatchQueue = self->_dispatchQueue;
  proxyCopy = proxy;
  dispatch_assert_queue_V2(dispatchQueue);
  v11 = objc_opt_new();
  [v11 setBundleID:iDCopy];
  [v11 setClientProxy:proxyCopy];

  if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
  {
    v15 = dCopy;
    v16 = iDCopy;
    LogPrintF();
  }

  clientProxyMap = self->_clientProxyMap;
  if (!clientProxyMap)
  {
    v13 = objc_opt_new();
    v14 = self->_clientProxyMap;
    self->_clientProxyMap = v13;

    clientProxyMap = self->_clientProxyMap;
  }

  [(NSMutableDictionary *)clientProxyMap setObject:v11 forKeyedSubscript:dCopy, v15, v16];
}

- (void)removeClientID:(id)d
{
  dCopy = d;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B5674;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_removeClientID:(id)d
{
  dCopy = d;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = [(NSMutableDictionary *)self->_clientProxyMap objectForKeyedSubscript:dCopy];
  if (v4)
  {
    if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
    {
      sub_1000BC0F4(v4);
    }

    [(NSMutableDictionary *)self->_clientProxyMap removeObjectForKey:dCopy];
  }
}

- (void)startBrowsing
{
  v3 = +[NSXPCConnection currentConnection];
  userInfo = [v3 userInfo];

  v5 = [userInfo objectForKeyedSubscript:@"SDConnectionManagerIdentifier"];
  if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
  {
    sub_1000BC160(v5);
  }

  dispatchQueue = self->_dispatchQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000B5848;
  v8[3] = &unk_1008CE028;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(dispatchQueue, v8);
}

- (void)_startBrowsingForClientID:(id)d
{
  dCopy = d;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([(SDStatusMonitor *)self->_statusMonitor deviceSupportsContinuity])
  {
    v4 = [(NSMutableDictionary *)self->_clientProxyMap objectForKeyedSubscript:dCopy];
    v5 = v4;
    if (v4)
    {
      [v4 setBrowsing:1];
      bundleID = [v5 bundleID];
      if (bundleID)
      {
        _appMonitorAppList = [(SDHotspotAgent *)self _appMonitorAppList];
        v8 = [_appMonitorAppList containsObject:bundleID];

        if (v8)
        {
          browserBundleIDs = self->_browserBundleIDs;
          if (!browserBundleIDs)
          {
            v10 = objc_opt_new();
            v11 = self->_browserBundleIDs;
            self->_browserBundleIDs = v10;

            browserBundleIDs = self->_browserBundleIDs;
          }

          [(NSMutableArray *)browserBundleIDs addObject:bundleID];
          [(SDHotspotAgent *)self _appMonitorEnsureStarted];
        }
      }

      if (dword_100970200 < 51 && (dword_100970200 != -1 || _LogCategory_Initialize()))
      {
        sub_1000BC1D8(v5);
      }

      if ([(NSMutableDictionary *)self->_devices count]&& !self->_prefRapportDisabled)
      {
        if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
        {
          sub_1000BC234();
        }

        [(SDHotspotAgent *)self _discoveryUpdateCombined:1];
      }

      self->_browserActive = 1;
      [(SDHotspotAgent *)self _update];
    }

    else if (dword_100970200 <= 90 && (dword_100970200 != -1 || _LogCategory_Initialize()))
    {
      sub_1000BC250();
    }
  }

  else if (dword_100970200 <= 60 && (dword_100970200 != -1 || _LogCategory_Initialize()))
  {
    sub_1000BC1BC();
  }
}

- (void)stopBrowsing
{
  v3 = +[NSXPCConnection currentConnection];
  userInfo = [v3 userInfo];

  v4 = [userInfo objectForKeyedSubscript:@"SDConnectionManagerIdentifier"];
  [(SDHotspotAgent *)self stopBrowsingForClientID:v4];
}

- (void)stopBrowsingForClientID:(id)d
{
  dCopy = d;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B5B7C;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_stopBrowsingForClientID:(id)d
{
  dCopy = d;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([(SDStatusMonitor *)self->_statusMonitor deviceSupportsContinuity])
  {
    v5 = [(NSMutableDictionary *)self->_clientProxyMap objectForKeyedSubscript:dCopy];
    [v5 setBrowsing:0];
    bundleID = [v5 bundleID];
    if (bundleID)
    {
      [(NSMutableArray *)self->_browserBundleIDs removeObject:bundleID];
    }

    if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
    {
      sub_1000BC288(v5);
    }

    if ([(NSMutableArray *)self->_browserBundleIDs count])
    {
      [(SDHotspotAgent *)self _appMonitorEnsureStarted];
      [(SDHotspotAgent *)self _appMonitorUpdate];
    }

    else
    {
      [(SDHotspotAgent *)self _appMonitorEnsureStopped];
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    devicesLegacy = [(NSMutableDictionary *)self->_clientProxyMap allValues];
    v8 = [devicesLegacy countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
LABEL_16:
      v11 = 0;
      while (1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(devicesLegacy);
        }

        if ([*(*(&v13 + 1) + 8 * v11) browsing])
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [devicesLegacy countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v9)
          {
            goto LABEL_16;
          }

          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:

      if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
      {
        sub_1000BC2E4();
      }

      self->_browserActive = 0;
      self->_browserClientsInactive = 0;
      devicesCombined = self->_devicesCombined;
      self->_devicesCombined = 0;

      devicesLegacy = self->_devicesLegacy;
      self->_devicesLegacy = 0;
    }

    [(SDHotspotAgent *)self _update];
  }

  else if (dword_100970200 <= 60 && (dword_100970200 != -1 || _LogCategory_Initialize()))
  {
    sub_1000BC26C();
  }
}

- (void)enableHotspotForDevice:(id)device withCompletionHandler:(id)handler
{
  deviceCopy = device;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B5EA4;
  block[3] = &unk_1008CE730;
  block[4] = self;
  v12 = deviceCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = deviceCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_enableHotspotForDevice:(id)device withCompletionHandler:(id)handler
{
  deviceCopy = device;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v7 = arc4random();
  v8 = [(SDHotspotAgent *)self _logCategoryCreateWithLabel:@"TetheringAgent" sessionID:v7];
  v9 = objc_opt_new();
  [v9 setRequestType:1];
  [v9 setHotspotDevice:deviceCopy];
  [v9 setHotspotInfoHandler:handlerCopy];
  [v9 setLogCategory:v8];
  [v9 setSessionID:v7];
  group = [deviceCopy group];
  _sysMonitorD2DEncryptionIsAvailable = [(SDHotspotAgent *)self _sysMonitorD2DEncryptionIsAvailable];
  if (v8->var0 <= 50 && (v8->var0 != -1 || _LogCategory_Initialize()))
  {
    v12 = "no";
    if (group == 2)
    {
      v13 = "yes";
    }

    else
    {
      v13 = "no";
    }

    if (_sysMonitorD2DEncryptionIsAvailable)
    {
      v12 = "yes";
    }

    v18 = v12;
    v19 = deviceCopy;
    v17 = v13;
    LogPrintF();
  }

  v14 = group == 2;
  supportsCompanionLink = [deviceCopy supportsCompanionLink];
  var0 = v8->var0;
  if (supportsCompanionLink && ((v14 | _sysMonitorD2DEncryptionIsAvailable) & 1) != 0)
  {
    if (var0 <= 50 && (var0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000BC32C();
    }

    [(SDHotspotAgent *)self _companionLinkActivateWithRequest:v9];
  }

  else
  {
    if (var0 <= 50 && (var0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000BC318();
    }

    [(SDHotspotBrowser *)self->_hotspotBrowser enableHotspotForDevice:deviceCopy withCompletionHandler:handlerCopy];
  }
}

- (void)updateLowLatencyFilter:(id)filter isAddFilter:(BOOL)addFilter completion:(id)completion
{
  filterCopy = filter;
  completionCopy = completion;
  if (_os_feature_enabled_impl())
  {
    dispatchQueue = self->_dispatchQueue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000B61CC;
    v12[3] = &unk_1008CF450;
    v12[4] = self;
    addFilterCopy = addFilter;
    v13 = filterCopy;
    v14 = completionCopy;
    dispatch_async(dispatchQueue, v12);
  }

  else
  {
    v11 = NSErrorWithOSStatusF();
    (*(completionCopy + 2))(completionCopy, v11);
  }
}

- (void)_additionalInfoForRequest:(id)request toMessage:(id)message
{
  requestCopy = request;
  messageCopy = message;
  if (([requestCopy requestType] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    trafficFilterParams = [requestCopy trafficFilterParams];
    srcIPAddress = [trafficFilterParams srcIPAddress];
    [messageCopy setObject:srcIPAddress forKeyedSubscript:@"tfsIP"];

    trafficFilterParams2 = [requestCopy trafficFilterParams];
    v9 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [trafficFilterParams2 srcPort]);
    [messageCopy setObject:v9 forKeyedSubscript:@"tfsPrt"];

    trafficFilterParams3 = [requestCopy trafficFilterParams];
    destIPAddress = [trafficFilterParams3 destIPAddress];
    [messageCopy setObject:destIPAddress forKeyedSubscript:@"tfdIP"];

    trafficFilterParams4 = [requestCopy trafficFilterParams];
    v13 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [trafficFilterParams4 destPort]);
    [messageCopy setObject:v13 forKeyedSubscript:@"tfdPrt"];

    trafficFilterParams5 = [requestCopy trafficFilterParams];
    v15 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [trafficFilterParams5 ipProtocol]);
    [messageCopy setObject:v15 forKeyedSubscript:@"tfPro"];

    trafficFilterParams6 = [requestCopy trafficFilterParams];
    trafficClass = [trafficFilterParams6 trafficClass];
    [messageCopy setObject:trafficClass forKeyedSubscript:@"tfTC"];

    trafficFilterParams7 = [requestCopy trafficFilterParams];
    v19 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [trafficFilterParams7 ipVersion]);
    [messageCopy setObject:v19 forKeyedSubscript:@"tfIPv"];

    trafficFilterParams8 = [requestCopy trafficFilterParams];
    v21 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [trafficFilterParams8 idleTimeout]);
    [messageCopy setObject:v21 forKeyedSubscript:@"tfTO"];
  }
}

- (void)_companionLinkEnsureStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_companionLinkClient)
  {
    if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
    {
      sub_1000BC4D0();
    }

    [(RPCompanionLinkClient *)self->_companionLinkClient setInterruptionHandler:0];
    [(RPCompanionLinkClient *)self->_companionLinkClient setInvalidationHandler:0];
    [(RPCompanionLinkClient *)self->_companionLinkClient invalidate];
    companionLinkClient = self->_companionLinkClient;
    self->_companionLinkClient = 0;

    devices = self->_devices;
    self->_devices = 0;

    [(NSMutableDictionary *)self->_cachedHotspotInfoDevicesMap removeAllObjects];
    cachedHotspotInfoDevicesMap = self->_cachedHotspotInfoDevicesMap;
    self->_cachedHotspotInfoDevicesMap = 0;
  }
}

- (void)_companionLinkActivateWithRequest:(id)request
{
  requestCopy = request;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  hotspotDevice = [requestCopy hotspotDevice];
  logCategory = [requestCopy logCategory];
  deviceIdentifier = [hotspotDevice deviceIdentifier];
  if (deviceIdentifier)
  {
    v21 = logCategory;
    v22 = hotspotDevice;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    activeDevices = [(RPCompanionLinkClient *)self->_companionLinkClient activeDevices];
    v9 = [activeDevices countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v31;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(activeDevices);
        }

        v13 = *(*(&v30 + 1) + 8 * v12);
        identifier = [v13 identifier];
        v15 = [identifier isEqualToString:deviceIdentifier];

        if (v15)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [activeDevices countByEnumeratingWithState:&v30 objects:v34 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v16 = v13;

      if (!v16)
      {
        goto LABEL_15;
      }

      hotspotDevice = v22;
      if (*v21 <= 50 && (*v21 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      hotspotInfoHandler = objc_opt_new();
      [hotspotInfoHandler setAppID:@"com.sharing.hotspot"];
      [hotspotInfoHandler setControlFlags:6291712];
      [hotspotInfoHandler setDestinationDevice:v16];
      [hotspotInfoHandler setDispatchQueue:self->_dispatchQueue];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1000B6E3C;
      v29[3] = &unk_1008CDEA0;
      v29[4] = v22;
      [hotspotInfoHandler setInterruptionHandler:v29];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1000B6E98;
      v28[3] = &unk_1008CDEA0;
      v28[4] = v22;
      [hotspotInfoHandler setInvalidationHandler:v28];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1000B6EF4;
      v23[3] = &unk_1008CF4D8;
      v27 = v21;
      v23[4] = v22;
      v20 = requestCopy;
      v24 = v20;
      v25 = v16;
      selfCopy = self;
      v17 = v16;
      [hotspotInfoHandler activateWithCompletion:v23];
      [v20 setCompanionLinkClient:hotspotInfoHandler];
    }

    else
    {
LABEL_10:

LABEL_15:
      hotspotDevice = v22;
      if (*v21 <= 90 && (*v21 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v17 = NSErrorWithOSStatusF();
      hotspotInfoHandler = [requestCopy hotspotInfoHandler];
      (hotspotInfoHandler)[2](hotspotInfoHandler, 0, v17);
    }
  }

  else
  {
    if (*logCategory <= 90 && (*logCategory != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v17 = NSErrorWithOSStatusF();
    hotspotInfoHandler2 = [requestCopy hotspotInfoHandler];
    (hotspotInfoHandler2)[2](hotspotInfoHandler2, 0, v17);
  }
}

- (void)_companionLinkActivatedRequest:(id)request
{
  requestCopy = request;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  companionLinkClient = [requestCopy companionLinkClient];
  destinationDevice = [companionLinkClient destinationDevice];
  statusFlags = [destinationDevice statusFlags];

  v8 = SFDeviceProductVersion();
  v9 = objc_opt_new();
  myAltDSID = [(SDStatusMonitor *)self->_statusMonitor myAltDSID];
  [v9 setObject:myAltDSID forKeyedSubscript:@"altDSID"];

  myAppleID = [(SDStatusMonitor *)self->_statusMonitor myAppleID];
  [v9 setObject:myAppleID forKeyedSubscript:@"aplID"];

  v12 = [NSNumber numberWithBool:[(SDStatusMonitor *)self->_statusMonitor canConnectOn5GHz]];
  [v9 setObject:v12 forKeyedSubscript:@"5ghz"];

  computerName = [(SDStatusMonitor *)self->_statusMonitor computerName];
  [v9 setObject:computerName forKeyedSubscript:@"devnm"];

  v14 = [NSNumber numberWithInt:(statusFlags & 0x4000) == 0];
  [v9 setObject:v14 forKeyedSubscript:@"icld"];

  v15 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [requestCopy sessionID]);
  [v9 setObject:v15 forKeyedSubscript:@"sID"];

  v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [requestCopy requestType]);
  [v9 setObject:v16 forKeyedSubscript:@"reqT"];

  if (v8 && ([v8 isEqualToString:@"?"] & 1) == 0)
  {
    [v9 setObject:v8 forKeyedSubscript:@"proVer"];
  }

  if ([requestCopy requestType] == 2 || objc_msgSend(requestCopy, "requestType") == 3)
  {
    [(SDHotspotAgent *)self _additionalInfoForRequest:requestCopy toMessage:v9];
  }

  v17 = objc_opt_new();
  [v17 setObject:&off_10090B8C8 forKeyedSubscript:RPOptionTimeoutSeconds];
  if (*[requestCopy logCategory] <= 50)
  {
    if (*[requestCopy logCategory] != -1 || (objc_msgSend(requestCopy, "logCategory"), _LogCategory_Initialize()))
    {
      sub_1000BC574(requestCopy);
    }
  }

  v18 = RPDestinationIdentifierDirectPeer;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000B736C;
  v20[3] = &unk_1008CF500;
  v20[4] = self;
  v21 = requestCopy;
  v19 = requestCopy;
  [companionLinkClient sendRequestID:@"com.sharing.hotspot.request" request:v9 destinationID:v18 options:v17 responseHandler:v20];
}

- (void)_companionLinkHandleRequest:(id)request options:(id)options responseHandler:(id)handler
{
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v70 = 0;
  v11 = [(SDHotspotAgent *)self _logCategoryCreateWithLabel:@"TetheringAgent" sessionID:CFDictionaryGetInt64Ranged()];
  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_1000B7C3C;
  v67[3] = &unk_1008CF528;
  v69 = v11;
  v12 = handlerCopy;
  v68 = v12;
  v13 = objc_retainBlock(v67);
  if (v11->var0 <= 50 && (v11->var0 != -1 || _LogCategory_Initialize()))
  {
    v50 = requestCopy;
    LogPrintF();
  }

  v14 = [requestCopy objectForKeyedSubscript:{@"reqT", v50}];
  v15 = v14;
  if (!v14 || (v16 = [v14 integerValue], (v16 & 0xFFFFFFFFFFFFFFFELL) != 2))
  {
    v17 = [requestCopy objectForKeyedSubscript:@"devnm"];
    if (!v17)
    {
      if (v11->var0 <= 90 && (v11->var0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000BC828();
      }

      [@"Request missing name" UTF8String];
      v18 = NSErrorWithOSStatusF();
      (v13[2])(v13, 0, 0, v18);
      goto LABEL_68;
    }

    v18 = [requestCopy objectForKeyedSubscript:@"icld"];
    if (!v18)
    {
      if (v11->var0 <= 90 && (v11->var0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000BC7E8();
      }

      [@"Request missing same iCloud state" UTF8String];
      v28 = NSErrorWithOSStatusF();
      (v13[2])(v13, 0, 0, v28);
      goto LABEL_67;
    }

    v59 = v12;
    v19 = v17;
    v20 = off_100970270();
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = @"senderModelID";
    }

    v23 = optionsCopy;
    v24 = [optionsCopy objectForKeyedSubscript:v22];

    v58 = v24;
    if (!v24 && v11->var0 <= 40 && (v11->var0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000BC5FC();
    }

    v25 = [requestCopy valueForKey:@"5ghz"];

    if (v25)
    {
      v26 = [requestCopy objectForKeyedSubscript:@"5ghz"];
      CanConnectOn5GHz = [v26 BOOLValue];

      optionsCopy = v23;
      if (v11->var0 > 40)
      {
        v17 = v19;
      }

      else
      {
        v17 = v19;
        if (v11->var0 != -1 || _LogCategory_Initialize())
        {
          v27 = "no";
          if (CanConnectOn5GHz)
          {
            v27 = "yes";
          }

          v51 = v27;
          LogPrintF();
        }
      }
    }

    else
    {
      optionsCopy = v23;
      if (v11->var0 <= 40 && (v11->var0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000BC63C();
      }

      v17 = v19;
      if (v58)
      {
        CanConnectOn5GHz = SFRemoteDeviceCanConnectOn5GHz();
      }

      else
      {
        CanConnectOn5GHz = 0;
      }
    }

    v12 = v59;
    v60 = v13;
    v56 = [requestCopy objectForKeyedSubscript:{@"proVer", v51}];
    if (!v56 && v11->var0 <= 40 && (v11->var0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000BC668();
    }

    bOOLValue = [v18 BOOLValue];
    v30 = [requestCopy objectForKeyedSubscript:@"altDSID"];
    v31 = [requestCopy objectForKeyedSubscript:@"aplID"];
    v57 = v30;
    if (v30)
    {
      v32 = v30;
      v33 = v31;
      v34 = [(SDHotspotAgent *)self _sysMonitorFamilyMemberForAltDSID:v32];
    }

    else if (v31)
    {
      v33 = v31;
      v34 = [(SDHotspotAgent *)self _sysMonitorFamilyMemberForAppleID:v31];
    }

    else
    {
      v33 = 0;
      v34 = 0;
    }

    if (v34)
    {
      v35 = 1;
    }

    else
    {
      v35 = bOOLValue;
    }

    v55 = v34;
    if (v35)
    {
      v52 = v18;
      v53 = v17;
      v36 = optionsCopy;
      statusMonitor = self->_statusMonitor;
      altDSID = [v34 altDSID];
      v39 = [(SDStatusMonitor *)statusMonitor familyHotspotStateForAltDSID:altDSID];

      if (v11->var0 <= 50 && (v11->var0 != -1 || _LogCategory_Initialize()))
      {
        v45 = sub_1000BC6A8(bOOLValue, v11, v55, v39);
        if (v39 == 2)
        {
          v46 = 1;
        }

        else
        {
          v46 = bOOLValue;
        }

        optionsCopy = v36;
        if (v45 & 1) != 0 || (v46)
        {
          goto LABEL_59;
        }
      }

      else
      {
        if (v39 == 2)
        {
          v40 = 1;
        }

        else
        {
          v40 = bOOLValue;
        }

        optionsCopy = v36;
        if (v40 == 1)
        {
LABEL_59:
          v41 = v56;
          [(SDHotspotAgent *)self _companionLinkStartTetheringWithResponse:v60 logCategory:v11 modelID:v58 productVersion:v56 canConnectOn5GHz:CanConnectOn5GHz];
          v18 = v52;
          v17 = v53;
LABEL_66:

          v28 = v58;
          v13 = v60;
LABEL_67:

LABEL_68:
          goto LABEL_69;
        }
      }

      v41 = v56;
      if (v39 == -1)
      {
        v18 = v52;
        v17 = v53;
        if (v11->var0 <= 90 && (v11->var0 != -1 || _LogCategory_Initialize()))
        {
          sub_1000BC790();
        }

        v49 = NSErrorWithOSStatusF();
        (v60[2])(v60, 0, 0, v49);
      }

      else
      {
        v17 = v53;
        if (v39)
        {
          v47 = v39 == 1;
          v18 = v52;
          if (v47)
          {
            v61[0] = _NSConcreteStackBlock;
            v61[1] = 3221225472;
            v61[2] = sub_1000B7CD8;
            v61[3] = &unk_1008CF550;
            v64 = v60;
            v65 = v11;
            v61[4] = self;
            v62 = v58;
            v63 = v56;
            v66 = CanConnectOn5GHz;
            [(SDHotspotAgent *)self _userAlertForMember:v55 logCategory:v11 completion:v61];
          }

          goto LABEL_66;
        }

        if (v11->var0 <= 90 && (v11->var0 != -1 || _LogCategory_Initialize()))
        {
          sub_1000BC7BC();
        }

        v48 = NSErrorWithOSStatusF();
        (v60[2])(v60, 0, 0, v48);

        v18 = v52;
      }
    }

    else
    {
      v42 = v18;
      v43 = [NSString stringWithFormat:@"Family member missing (%@<%@>)", v33, v57];
      if (v11->var0 <= 90 && (v11->var0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      [v43 UTF8String];
      v44 = NSErrorWithOSStatusF();
      (v60[2])(v60, 0, 0, v44);

      v18 = v42;
    }

    v41 = v56;
    goto LABEL_66;
  }

  [(SDHotspotAgent *)self _companionLinkHandleLowLatencyFilterRequestOfType:v16 request:requestCopy options:optionsCopy responseHandler:v12];
LABEL_69:
}

- (void)_companionLinkHandleResponse:(id)response request:(id)request error:(id)error
{
  responseCopy = response;
  requestCopy = request;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (responseCopy)
  {
    hotspotInfoHandler2 = [responseCopy objectForKeyedSubscript:@"name"];
    v11 = [responseCopy objectForKeyedSubscript:@"pass"];
    v12 = [responseCopy objectForKeyedSubscript:@"chan"];
    v13 = [[SFRemoteHotspotInfo alloc] initWithName:hotspotInfoHandler2 password:v11 channel:v12];
    if (*[requestCopy logCategory] <= 50)
    {
      if (*[requestCopy logCategory] != -1 || (objc_msgSend(requestCopy, "logCategory"), _LogCategory_Initialize()))
      {
        sub_1000BC868(requestCopy);
      }
    }

    hotspotInfoHandler = [requestCopy hotspotInfoHandler];
    (hotspotInfoHandler)[2](hotspotInfoHandler, v13, 0);

    companionLinkClient = [requestCopy companionLinkClient];
    destinationDevice = [companionLinkClient destinationDevice];
    identifier = [destinationDevice identifier];
    hotspotDeviceIdentifier = self->_hotspotDeviceIdentifier;
    p_hotspotDeviceIdentifier = &self->_hotspotDeviceIdentifier;
    *p_hotspotDeviceIdentifier = identifier;

    if (*[requestCopy logCategory] <= 50)
    {
      if (*[requestCopy logCategory] != -1 || (objc_msgSend(requestCopy, "logCategory"), _LogCategory_Initialize()))
      {
        sub_1000BC8B0(requestCopy, p_hotspotDeviceIdentifier);
      }
    }
  }

  else
  {
    if (*[requestCopy logCategory] <= 90)
    {
      if (*[requestCopy logCategory] != -1 || (objc_msgSend(requestCopy, "logCategory"), _LogCategory_Initialize()))
      {
        sub_1000BC8FC(requestCopy);
      }
    }

    hotspotInfoHandler2 = [requestCopy hotspotInfoHandler];
    (hotspotInfoHandler2)[2](hotspotInfoHandler2, 0, errorCopy);
  }
}

- (BOOL)_fillXpcDictionaryDescriptor:(id)descriptor descriptor:(id)a4 metaData:(id)data
{
  v7 = a4;
  dataCopy = data;
  descriptorCopy = descriptor;
  CFStringGetTypeID();
  v10 = CFDictionaryGetTypedValue();
  v11 = NSDictionaryGetNSNumber();
  CFStringGetTypeID();
  v12 = CFDictionaryGetTypedValue();
  v13 = NSDictionaryGetNSNumber();
  v14 = NSDictionaryGetNSNumber();
  v15 = NSDictionaryGetNSNumber();
  v16 = NSDictionaryGetNSNumber();

  if (v10)
  {
    v17 = v11 == 0;
  }

  else
  {
    v17 = 1;
  }

  v21 = v17 || v12 == 0 || v13 == 0 || v14 == 0 || v15 == 0;
  v22 = !v21;
  if (v21)
  {
    if (dword_100970200 <= 90 && (dword_100970200 != -1 || _LogCategory_Initialize()))
    {
      sub_1000BC944();
    }
  }

  else
  {
    xpc_dictionary_set_string(dataCopy, netrbClientIfnetTrafficDescriptorLocalIp, [v10 UTF8String]);
    xpc_dictionary_set_string(dataCopy, netrbClientIfnetTrafficDescriptorRemoteIp, [v12 UTF8String]);
    xpc_dictionary_set_uint64(dataCopy, netrbClientIfnetTrafficDescriptorLocalPort, [v11 intValue]);
    xpc_dictionary_set_uint64(dataCopy, netrbClientIfnetTrafficDescriptorRemotePort, [v13 intValue]);
    xpc_dictionary_set_uint64(dataCopy, netrbClientIfnetTrafficDescriptorDeviceId, 0);
    xpc_dictionary_set_uint64(dataCopy, netrbClientIfnetTrafficDescriptorIpProtocol, [v14 intValue]);
    xpc_dictionary_set_uint64(dataCopy, netrbClientIfnetTrafficDescriptorIpVersion, [v15 intValue]);
    if (v16 && [v16 intValue])
    {
      xpc_dictionary_set_uint64(dataCopy, netrbClientIfnetTrafficDescriptorConnectionIdleTimeout, [v16 intValue]);
    }

    xpc_dictionary_set_value(v7, netrbClientLowLatencyFlowParam, dataCopy);
  }

  return v22;
}

- (void)_companionLinkHandleLowLatencyFilterRequestOfType:(int64_t)type request:(id)request options:(id)options responseHandler:(id)handler
{
  requestCopy = request;
  optionsCopy = options;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000B855C;
  v17[3] = &unk_1008CF578;
  handlerCopy = handler;
  v18 = 0;
  v19 = handlerCopy;
  v13 = objc_retainBlock(v17);
  if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v14 = xpc_dictionary_create(0, 0, 0);
  v15 = xpc_dictionary_create(0, 0, 0);
  if ([(SDHotspotAgent *)self _fillXpcDictionaryDescriptor:requestCopy descriptor:v14 metaData:v15])
  {
    if (_NETRBClientCreate())
    {
      if (type == 2)
      {
        v16 = _NETRBClientAddLowLatencyFlow();
      }

      else
      {
        v16 = _NETRBClientRemoveLowLatencyFlow();
      }

      if (v16)
      {
        if (dword_100970200 > 40 || dword_100970200 == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_25;
        }
      }

      else if (dword_100970200 > 90 || dword_100970200 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_25;
      }

      LogPrintF();
LABEL_25:
      _NETRBClientDestroy();
      goto LABEL_26;
    }

    if (dword_100970200 <= 90 && (dword_100970200 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

LABEL_26:

  (v13[2])(v13);
}

- (void)_discoveryDeviceFound:(id)found
{
  foundCopy = found;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = [foundCopy identifier];
  if (identifier)
  {
    hotspotInfo = [foundCopy hotspotInfo];
    if (!hotspotInfo)
    {
      v9 = identifier;
      v10 = [(SDHotspotAgent *)self _discoveryCachedDeviceFor:v9];
      if (v10)
      {
        if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
        {
          v24 = v9;
          v25 = v10;
          LogPrintF();
        }

        devices = self->_devices;
        if (!devices)
        {
          v22 = objc_opt_new();
          v23 = self->_devices;
          self->_devices = v22;

          devices = self->_devices;
        }

        [(NSMutableDictionary *)devices setObject:v10 forKeyedSubscript:v9, v24, v25];
        [(SDHotspotAgent *)self _discoveryUpdateCombined:0];
      }

      else if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
      {
        sub_1000BCA34();
      }

      goto LABEL_39;
    }

    v6 = hotspotInfo;
    v7 = [foundCopy statusFlags] & 0x80000;
    statusFlags = [foundCopy statusFlags];
    if (v7 | statusFlags & 0x4000)
    {
      if ((v6 & 0x80) == 0 && (statusFlags & 0x4000) != 0)
      {
        if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
        {
          sub_1000BC9F4();
        }

        goto LABEL_40;
      }

      v9 = objc_opt_new();
      [v9 setDeviceIdentifier:identifier];
      name = [foundCopy name];
      [v9 setDeviceName:name];

      [v9 setGroup:{-[SDHotspotAgent _discoveryGroupForDevice:](self, "_discoveryGroupForDevice:", foundCopy)}];
      model = [foundCopy model];
      [v9 setModel:model];

      [v9 setLastSeen:CFAbsoluteTimeGetCurrent()];
      [v9 setOsSupportsAutoHotspot:1];
      [v9 setSupportsCompanionLink:1];
      [v9 updateWithHotspotInfo:v6];
      if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
      {
        sub_1000BC9B4();
      }

      v13 = self->_devices;
      if (!v13)
      {
        v14 = objc_opt_new();
        v15 = self->_devices;
        self->_devices = v14;

        v13 = self->_devices;
      }

      deviceIdentifier = [v9 deviceIdentifier];
      [(NSMutableDictionary *)v13 setObject:v9 forKeyedSubscript:deviceIdentifier];

      cachedHotspotInfoDevicesMap = self->_cachedHotspotInfoDevicesMap;
      if (!cachedHotspotInfoDevicesMap)
      {
        v18 = objc_alloc_init(NSMutableDictionary);
        v19 = self->_cachedHotspotInfoDevicesMap;
        self->_cachedHotspotInfoDevicesMap = v18;

        cachedHotspotInfoDevicesMap = self->_cachedHotspotInfoDevicesMap;
      }

      deviceIdentifier2 = [v9 deviceIdentifier];
      [(NSMutableDictionary *)cachedHotspotInfoDevicesMap setObject:v9 forKeyedSubscript:deviceIdentifier2];

      [(SDHotspotAgent *)self _discoveryUpdateCombined:0];
LABEL_39:

      goto LABEL_40;
    }

    if (dword_100970200 <= 90 && (dword_100970200 != -1 || _LogCategory_Initialize()))
    {
      sub_1000BC974();
    }
  }

  else if (dword_100970200 <= 90 && (dword_100970200 != -1 || _LogCategory_Initialize()))
  {
    sub_1000BCA74();
  }

LABEL_40:
}

- (void)_discoveryDeviceChanged:(id)changed
{
  changedCopy = changed;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = [changedCopy identifier];
  v5 = identifier;
  if (identifier)
  {
    v6 = identifier;
    v7 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:v6];
    v8 = [(SDHotspotAgent *)self _discoveryCachedDeviceFor:v6];
    hotspotInfo = [changedCopy hotspotInfo];
    if (hotspotInfo)
    {
      v10 = 0;
    }

    else
    {
      v10 = v8 == 0;
    }

    v11 = !v10;
    if (([changedCopy statusFlags] & 0x80000) != 0)
    {
      v12 = 1;
    }

    else
    {
      v12 = ([changedCopy statusFlags] >> 14) & ((hotspotInfo & 0x80) >> 7);
    }

    if ((v11 & v12) == 1)
    {
      v13 = objc_opt_new();
      v14 = v13;
      if (hotspotInfo)
      {
        [v13 setDeviceIdentifier:v6];
        name = [changedCopy name];
        [v14 setDeviceName:name];

        [v14 setGroup:{-[SDHotspotAgent _discoveryGroupForDevice:](self, "_discoveryGroupForDevice:", changedCopy)}];
        [v14 setHandoffActive:0];
        [v14 setLastSeen:CFAbsoluteTimeGetCurrent()];
        model = [changedCopy model];
        [v14 setModel:model];

        [v14 setOsSupportsAutoHotspot:1];
        [v14 setSupportsCompanionLink:1];
        [v14 updateWithHotspotInfo:hotspotInfo];
        v17 = v14;
      }

      else
      {
        v17 = v8;

        if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
        {
          v24 = v6;
          v25 = v17;
          LogPrintF();
        }
      }

      if (([v17 componentsAreEqualTo:{v7, v24, v25}] & 1) == 0)
      {
        if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
        {
          sub_1000BCB30();
        }

        devices = self->_devices;
        if (!devices)
        {
          v19 = objc_opt_new();
          v20 = self->_devices;
          self->_devices = v19;

          devices = self->_devices;
        }

        [(NSMutableDictionary *)devices setObject:v17 forKeyedSubscript:v6];
        [(SDHotspotAgent *)self _discoveryUpdateCombined:0];
        cachedHotspotInfoDevicesMap = self->_cachedHotspotInfoDevicesMap;
        if (!cachedHotspotInfoDevicesMap)
        {
          v22 = objc_alloc_init(NSMutableDictionary);
          v23 = self->_cachedHotspotInfoDevicesMap;
          self->_cachedHotspotInfoDevicesMap = v22;

          cachedHotspotInfoDevicesMap = self->_cachedHotspotInfoDevicesMap;
        }

        [(NSMutableDictionary *)cachedHotspotInfoDevicesMap setObject:v17 forKeyedSubscript:v6];
      }

      goto LABEL_46;
    }

    if (!v7)
    {
LABEL_46:

      goto LABEL_47;
    }

    if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
    {
      sub_1000BCAB4();
    }

    if (([changedCopy statusFlags] & 0x4000) == 0 || (hotspotInfo & 0x80) != 0)
    {
      if (dword_100970200 > 50 || dword_100970200 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_34;
      }
    }

    else if (dword_100970200 > 50 || dword_100970200 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_34;
    }

    sub_1000BCAF4();
LABEL_34:
    [(NSMutableDictionary *)self->_devices removeObjectForKey:v6];
    [(SDHotspotAgent *)self _discoveryUpdateCombined:0];
    goto LABEL_46;
  }

  if (dword_100970200 <= 90 && (dword_100970200 != -1 || _LogCategory_Initialize()))
  {
    sub_1000BCB70();
  }

LABEL_47:
}

- (void)_discoveryDeviceLost:(id)lost
{
  lostCopy = lost;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = [lostCopy identifier];
  if (identifier)
  {
    v5 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:identifier];

    if (v5)
    {
      if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
      {
        sub_1000BCBB0();
      }

      [(NSMutableDictionary *)self->_devices removeObjectForKey:identifier];
      [(SDHotspotAgent *)self _discoveryUpdateCombined:0];
    }

    else if (dword_100970200 <= 30 && (dword_100970200 != -1 || _LogCategory_Initialize()))
    {
      sub_1000BCBF0();
    }
  }

  else if (dword_100970200 <= 90 && (dword_100970200 != -1 || _LogCategory_Initialize()))
  {
    sub_1000BCC30();
  }
}

- (void)_discoveryUpdateCombined:(BOOL)combined
{
  combinedCopy = combined;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = objc_opt_new();
  devices = self->_devices;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000B9694;
  v37[3] = &unk_1008CF618;
  v37[4] = self;
  v37[5] = v4;
  [(NSMutableDictionary *)devices enumerateKeysAndObjectsUsingBlock:v37];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = self->_devicesLegacy;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    do
    {
      v10 = 0;
      do
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v33 + 1) + 8 * v10);
        deviceIdentifier = [v11 deviceIdentifier];
        if (deviceIdentifier)
        {
          v13 = [(SDHotspotAgent *)self _idsDeviceIDForBluetoothID:deviceIdentifier];
          if (v13)
          {
            v14 = [v4 objectForKeyedSubscript:v13];

            if (!v14)
            {
              [v4 setObject:v11 forKeyedSubscript:v13];
            }
          }

          else if (dword_100970200 <= 90 && (dword_100970200 != -1 || _LogCategory_Initialize()))
          {
            sub_1000BCCB0();
          }
        }

        else if (dword_100970200 <= 90 && (dword_100970200 != -1 || _LogCategory_Initialize()))
        {
          sub_1000BCCF0();
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v15 = [(NSArray *)v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
      v8 = v15;
    }

    while (v15);
  }

  v16 = [(NSMutableDictionary *)self->_devicesCombined count];
  if (v16 == [v4 count])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    allValues = [v4 allValues];
    v18 = [allValues countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v30;
      while (2)
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(allValues);
          }

          v22 = *(*(&v29 + 1) + 8 * i);
          deviceIdentifier2 = [v22 deviceIdentifier];
          v24 = [(NSMutableDictionary *)self->_devicesCombined objectForKeyedSubscript:deviceIdentifier2];
          if (!v24)
          {

LABEL_36:
            v27 = 1;
            goto LABEL_37;
          }

          v25 = v24;
          v26 = [v24 componentsAreEqualTo:v22];

          if (!v26)
          {
            goto LABEL_36;
          }
        }

        v19 = [allValues countByEnumeratingWithState:&v29 objects:v38 count:16];
        v27 = 0;
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v27 = 0;
    }

LABEL_37:
  }

  else
  {
    v27 = 1;
  }

  if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
  {
    sub_1000BCD30(v27, self);
  }

  objc_storeStrong(&self->_devicesCombined, v4);
  if ((v27 | combinedCopy) == 1)
  {
    [(SDHotspotAgent *)self _discoveryUpdateClients];
  }
}

- (void)_discoveryUpdateLegacyDeviceList:(id)list
{
  listCopy = list;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
  {
    sub_1000BCDA0();
  }

  devicesLegacy = self->_devicesLegacy;
  self->_devicesLegacy = listCopy;

  [(SDHotspotAgent *)self _discoveryUpdateCombined:0];
}

- (void)updatedFoundDeviceList:(id)list
{
  listCopy = list;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B9838;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = listCopy;
  v6 = listCopy;
  dispatch_async(dispatchQueue, v7);
}

- (id)_discoveryCachedDeviceFor:(id)for
{
  forCopy = for;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = [(NSMutableDictionary *)self->_cachedHotspotInfoDevicesMap objectForKeyedSubscript:forCopy];
  if (v5 && (Current = CFAbsoluteTimeGetCurrent(), [v5 lastSeen], Current - v7 <= self->_prefStaleCacheInfoSecs) && (+[SDActivityScanner sharedScanner](SDActivityScanner, "sharedScanner"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "activeAdvertisementForDeviceWithIdentifier:", forCopy), v8, v9))
  {
    [v5 setHandoffActive:1];
    if (dword_100970200 <= 10 && (dword_100970200 != -1 || _LogCategory_Initialize()))
    {
      sub_1000BCDE0();
    }

    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_discoveryCellularSlicingStateUpdateFor:(id)for
{
  forCopy = for;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B99F0;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = forCopy;
  v6 = forCopy;
  dispatch_async(dispatchQueue, v7);
}

- (int64_t)_discoveryGroupForDevice:(id)device
{
  deviceCopy = device;
  if (([deviceCopy statusFlags] & 0x80000) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = ([deviceCopy statusFlags] >> 13) & 2;
  }

  return v4;
}

- (void)_discoveryReevaluateHandoffDevices
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B9BF4;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_idsEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_idsService)
  {
    v3 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.continuity.tethering"];
    idsService = self->_idsService;
    self->_idsService = v3;

    [(IDSService *)self->_idsService addDelegate:self queue:self->_dispatchQueue];
    if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
    {
      sub_1000BCE20();
    }
  }
}

- (void)_idsEnsureStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  idsDeviceArray = self->_idsDeviceArray;
  self->_idsDeviceArray = 0;

  idsService = self->_idsService;
  if (idsService)
  {
    [(IDSService *)idsService removeDelegate:self];
    v5 = self->_idsService;
    self->_idsService = 0;

    if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
    {
      sub_1000BCE3C();
    }
  }
}

- (id)_idsDeviceIDForBluetoothID:(id)d
{
  dCopy = d;
  idsDeviceBTDictionary = self->_idsDeviceBTDictionary;
  if (!idsDeviceBTDictionary)
  {
    v6 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    _idsDeviceArray = [(SDHotspotAgent *)self _idsDeviceArray];
    v8 = [_idsDeviceArray countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(_idsDeviceArray);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          nsuuid = [v12 nsuuid];
          if (nsuuid)
          {
            uniqueIDOverride = [v12 uniqueIDOverride];
            uUIDString = [nsuuid UUIDString];
            [(NSDictionary *)v6 setObject:uniqueIDOverride forKeyedSubscript:uUIDString];
          }
        }

        v9 = [_idsDeviceArray countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    v16 = self->_idsDeviceBTDictionary;
    self->_idsDeviceBTDictionary = v6;

    idsDeviceBTDictionary = self->_idsDeviceBTDictionary;
  }

  v17 = [(NSDictionary *)idsDeviceBTDictionary objectForKeyedSubscript:dCopy];

  return v17;
}

- (void)service:(id)service devicesChanged:(id)changed
{
  changedCopy = changed;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
  {
    sub_1000BCEF4(changedCopy);
  }

  idsDeviceArray = self->_idsDeviceArray;
  self->_idsDeviceArray = changedCopy;
  v7 = changedCopy;

  idsDeviceBTDictionary = self->_idsDeviceBTDictionary;
  self->_idsDeviceBTDictionary = 0;

  *&v9 = -1;
  *(&v9 + 1) = -1;
  *&self->_idsLegacyClientDeviceCount = v9;
  *&self->_idsTetheringClientDeviceCount = v9;

  [(SDHotspotAgent *)self _update];
}

- (void)_legacyBrowserEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_hotspotBrowser)
  {
    v3 = objc_opt_new();
    hotspotBrowser = self->_hotspotBrowser;
    self->_hotspotBrowser = v3;

    [(SDHotspotBrowser *)self->_hotspotBrowser setClientProxy:self];
    [(SDHotspotBrowser *)self->_hotspotBrowser setHotspotManager:self->_hotspotManager];
    [(SDHotspotBrowser *)self->_hotspotBrowser setIdsService:self->_idsService];
    [(SDHotspotBrowser *)self->_hotspotBrowser setD2dEncryptionAvailable:[(SDHotspotAgent *)self _sysMonitorD2DEncryptionIsAvailable]];
    [(SDHotspotBrowser *)self->_hotspotBrowser activate];
    if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
    {
      sub_1000BCF38();
    }
  }

  [(SDHotspotBrowser *)self->_hotspotBrowser setProducerScanEnabled:[(SDHotspotAgent *)self _legacyBrowserShouldScan]];
  _legacyBrowserShouldBrowse = [(SDHotspotAgent *)self _legacyBrowserShouldBrowse];
  v6 = self->_hotspotBrowser;
  if (_legacyBrowserShouldBrowse)
  {

    [(SDHotspotBrowser *)v6 startBrowsing];
  }

  else
  {

    [(SDHotspotBrowser *)v6 stopBrowsing];
  }
}

- (BOOL)_legacyBrowserShouldBrowse
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100970200 <= 40 && (dword_100970200 != -1 || _LogCategory_Initialize()))
  {
    sub_1000BCF70(self);
  }

  if (self->_prefLegacyDisabled || !self->_browserActive || self->_browserClientsInactive)
  {
    return 0;
  }

  if ([(SDHotspotAgent *)self _sysMonitorD2DEncryptionIsAvailable])
  {
    return [(SDHotspotAgent *)self _idsLegacyHostDeviceCount]!= 0;
  }

  return 1;
}

- (BOOL)_legacyBrowserShouldScan
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100970200 <= 40 && (dword_100970200 != -1 || _LogCategory_Initialize()))
  {
    sub_1000BD01C(self);
  }

  if (self->_prefLegacyDisabled || [(SDHotspotManager *)self->_hotspotManager maxConnectionsReached])
  {
    return 0;
  }

  if ([(SDHotspotAgent *)self _sysMonitorD2DEncryptionIsAvailable])
  {
    return [(SDHotspotAgent *)self _idsLegacyClientDeviceCount]> 0;
  }

  return 1;
}

- (void)_legacyBrowswerUpdateD2DState
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_hotspotBrowser)
  {
    _sysMonitorD2DEncryptionIsAvailable = [(SDHotspotAgent *)self _sysMonitorD2DEncryptionIsAvailable];
    hotspotBrowser = self->_hotspotBrowser;

    [(SDHotspotBrowser *)hotspotBrowser setD2dEncryptionAvailable:_sysMonitorD2DEncryptionIsAvailable];
  }
}

- (void)_sysMonitorEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_systemMonitor)
  {
    v3 = objc_opt_new();
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = v3;

    [(CUSystemMonitor *)self->_systemMonitor setDispatchQueue:self->_dispatchQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000BA5B8;
    v9[3] = &unk_1008CDEA0;
    v9[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setFamilyUpdatedHandler:v9];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000BA62C;
    v8[3] = &unk_1008CDEA0;
    v8[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setPrimaryAppleIDChangedHandler:v8];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000BA6A8;
    v7[3] = &unk_1008CDEA0;
    v7[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setManateeChangedHandler:v7];
    v5 = self->_systemMonitor;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000BA710;
    v6[3] = &unk_1008CDEA0;
    v6[4] = self;
    [(CUSystemMonitor *)v5 activateWithCompletion:v6];
  }
}

- (void)_sysMonitorEnsureStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(CUSystemMonitor *)self->_systemMonitor invalidate];
  systemMonitor = self->_systemMonitor;
  self->_systemMonitor = 0;
}

- (id)_sysMonitorFamilyMemberForAltDSID:(id)d
{
  dCopy = d;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  familyMembers = [(CUSystemMonitor *)self->_systemMonitor familyMembers];
  v6 = [familyMembers countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(familyMembers);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (([v11 isMe] & 1) == 0)
        {
          altDSID = [v11 altDSID];
          if (altDSID && [dCopy isEqualToString:altDSID])
          {
            v13 = v11;

            v8 = v13;
          }
        }
      }

      v7 = [familyMembers countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_sysMonitorFamilyMemberForAppleID:(id)d
{
  dCopy = d;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  familyMembers = [(CUSystemMonitor *)self->_systemMonitor familyMembers];
  v6 = [familyMembers countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(familyMembers);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (([v11 isMe] & 1) == 0)
        {
          appleID = [v11 appleID];
          if (appleID && [dCopy isEqualToString:appleID])
          {
            v13 = v11;

            v8 = v13;
          }
        }
      }

      v7 = [familyMembers countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_userAlertForMember:(id)member logCategory:(LogCategory *)category completion:(id)completion
{
  memberCopy = member;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  firstName = [memberCopy firstName];
  if (firstName)
  {
    altDSID = [memberCopy altDSID];
    if (altDSID)
    {
      v11 = [(NSMutableDictionary *)self->_userAlerts objectForKeyedSubscript:altDSID];
      if (v11)
      {
        if (category->var0 <= 50 && (category->var0 != -1 || _LogCategory_Initialize()))
        {
          v12 = firstName;
          LogPrintF();
        }

        [v11 invalidate];
        [(NSMutableDictionary *)self->_userAlerts removeObjectForKey:altDSID];
      }

      [(SDHotspotAgent *)self _postUserAlertForName:firstName altDSID:altDSID logCategory:category completion:completionCopy];
    }

    else
    {
      if (category->var0 <= 90 && (category->var0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v11 = NSErrorWithOSStatusF();
      completionCopy[2](completionCopy, v11);
    }
  }

  else
  {
    if (category->var0 <= 90 && (category->var0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    altDSID = NSErrorWithOSStatusF();
    completionCopy[2](completionCopy, altDSID);
  }
}

- (void)_postUserAlertForName:(id)name altDSID:(id)d logCategory:(LogCategory *)category completion:(id)completion
{
  nameCopy = name;
  dCopy = d;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v11 = [NSBundle bundleWithIdentifier:@"com.apple.Sharing"];
  v12 = [v11 URLForResource:@"Assets" withExtension:@"car"];

  if (!v12 && category->var0 <= 90 && (category->var0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000BD130();
  }

  v13 = SFLocalizedStringForKey();
  v14 = SFLocalizedStringForKey();
  nameCopy = [NSString stringWithFormat:v14, nameCopy];

  v16 = SFLocalizedStringForKey();
  nameCopy2 = [NSString stringWithFormat:v16, nameCopy];

  v18 = objc_opt_new();
  [v18 setObject:&__kCFBooleanTrue forKeyedSubscript:kCFUserNotificationAlertTopMostKey];
  [v18 setObject:&__kCFBooleanFalse forKeyedSubscript:SBUserNotificationDismissOnLock];
  [v18 setObject:&__kCFBooleanTrue forKeyedSubscript:SBUserNotificationDontDismissOnUnlock];
  [v18 setObject:&off_10090B8E0 forKeyedSubscript:SBUserNotificationSystemSoundIDKey];
  v32 = v13;
  [v18 setObject:v13 forKeyedSubscript:SBUserNotificationLockScreenAlertHeaderKey];
  [v18 setObject:nameCopy forKeyedSubscript:SBUserNotificationLockScreenAlertMessageKey];
  path = [v12 path];
  [v18 setObject:path forKeyedSubscript:SBUserNotificationIconImageAssetCatalogPathKey];

  [v18 setObject:@"InstantHotSpot" forKeyedSubscript:SBUserNotificationIconImageAssetCatalogImageKey];
  v20 = objc_opt_new();
  [v20 setDispatchQueue:self->_dispatchQueue];
  [v20 setTitle:nameCopy2];
  v21 = SFLocalizedStringForKey();
  [v20 setDefaultButtonTitle:v21];

  v22 = SFLocalizedStringForKey();
  [v20 setAlternateButtonTitle:v22];

  [v20 setTimeout:30.0];
  [v20 setAdditionalInfo:v18];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000BB110;
  v33[3] = &unk_1008CF640;
  categoryCopy = category;
  v23 = nameCopy;
  v34 = v23;
  v24 = completionCopy;
  v37 = v24;
  selfCopy = self;
  v25 = dCopy;
  v36 = v25;
  [v20 setResponseHandler:v33];
  if (category->var0 <= 50 && (category->var0 != -1 || _LogCategory_Initialize()))
  {
    v29 = v23;
    LogPrintF();
  }

  [v20 present];
  userAlerts = self->_userAlerts;
  if (!userAlerts)
  {
    v27 = objc_opt_new();
    v28 = self->_userAlerts;
    self->_userAlerts = v27;

    userAlerts = self->_userAlerts;
  }

  [(NSMutableDictionary *)userAlerts setObject:v20 forKeyedSubscript:v25];
}

- (void)testNotification
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BB2B0;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_updateAdvertisementSuppression:(BOOL)suppression
{
  suppressionCopy = suppression;
  if ((GestaltGetDeviceClass() & 0xFFFFFFFD) != 1 || self->_suppressAdvertisement == suppressionCopy)
  {
    return;
  }

  if (dword_100970200 <= 30)
  {
    if (dword_100970200 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_8;
      }

      suppressAdvertisement = self->_suppressAdvertisement;
    }

    LogPrintF();
  }

LABEL_8:
  self->_suppressAdvertisement = suppressionCopy;

  [(SDHotspotAgent *)self _update];
}

- (void)_registerForWombatActivityNotifications
{
  if (self->_wombatActivityReadyToken == -1)
  {
    v11[3] = v2;
    v11[4] = v3;
    if (dword_100970200 <= 20 && (dword_100970200 != -1 || _LogCategory_Initialize()))
    {
      sub_1000BD144();
    }

    dispatchQueue = self->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000BB5A0;
    handler[3] = &unk_1008CE690;
    handler[4] = self;
    notify_register_dispatch("com.apple.rapport.wombat-activity", &self->_wombatActivityReadyToken, dispatchQueue, handler);
    wombatActivityReadyToken = self->_wombatActivityReadyToken;
    v11[0] = 0;
    notify_get_state(wombatActivityReadyToken, v11);
    wombatActivityState = v11[0];
    self->_wombatActivityState = v11[0];
    if (dword_100970200 <= 30)
    {
      if (dword_100970200 != -1 || (v9 = _LogCategory_Initialize(), wombatActivityState = self->_wombatActivityState, v9))
      {
        if (wombatActivityState <= 5)
        {
          v8 = off_1008CF720[wombatActivityState];
        }

        LogPrintF();
        wombatActivityState = self->_wombatActivityState;
      }
    }

    self->_suppressAdvertisement = wombatActivityState == 1;
  }
}

- (void)_unregisterWombatActivityNotifications
{
  wombatActivityReadyToken = self->_wombatActivityReadyToken;
  if (wombatActivityReadyToken != -1)
  {
    notify_cancel(wombatActivityReadyToken);
    self->_wombatActivityReadyToken = -1;
  }
}

- (void)_registerForCellularSlicingAvailabilityNotifications
{
  p_cellularSlicingNotifyToken = &self->_cellularSlicingNotifyToken;
  if (self->_cellularSlicingNotifyToken == -1)
  {
    if (dword_100970200 <= 20 && (dword_100970200 != -1 || _LogCategory_Initialize()))
    {
      sub_1000BD1C8();
    }

    dispatchQueue = self->_dispatchQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000BB7BC;
    v7[3] = &unk_1008CE690;
    v7[4] = self;
    notify_register_dispatch("com.apple.CoreTelephony.Slicing.LLPHS.State", p_cellularSlicingNotifyToken, dispatchQueue, v7);
    cellularSlicingNotifyToken = self->_cellularSlicingNotifyToken;
    state64 = 0;
    notify_get_state(cellularSlicingNotifyToken, &state64);
    v6 = state64;
    if (dword_100970200 <= 30 && (dword_100970200 != -1 || _LogCategory_Initialize()))
    {
      sub_1000BD1E4(self, v6);
      if (!v6)
      {
        return;
      }
    }

    else if (!v6)
    {
      return;
    }

    self->_cellularSlicingIsAvailable = v6 == 2;
    [(SDLocalCellularStatusManager *)self->_cellularStatusManager publishCellularSlicingEnabledAs:?];
  }
}

- (void)_unregisterForCellularSlicingCapabilityNotifications
{
  cellularSlicingNotifyToken = self->_cellularSlicingNotifyToken;
  if (cellularSlicingNotifyToken != -1)
  {
    notify_cancel(cellularSlicingNotifyToken);
    self->_cellularSlicingNotifyToken = -1;
    self->_cellularSlicingIsAvailable = 0;
    cellularStatusManager = self->_cellularStatusManager;

    [(SDLocalCellularStatusManager *)cellularStatusManager publishCellularSlicingEnabledAs:0];
  }
}

- (id)_slicingLLPHSStateNotificationValueToString:(unint64_t)string
{
  if (string > 3)
  {
    return @"?";
  }

  else
  {
    return *(&off_1008CF750 + string);
  }
}

@end