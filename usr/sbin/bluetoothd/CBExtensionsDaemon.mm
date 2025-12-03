@interface CBExtensionsDaemon
- (BOOL)remoteAlertAllowedAndReturnReason:(id *)reason extension:(id)extension;
- (BOOL)remoteAlertStartWithCBExtension:(id)extension device:(id)device error:(id *)error;
- (BOOL)resetCBExtension:(id)extension error:(id *)error;
- (id)descriptionWithLevel:(int)level;
- (id)diagnosticControl:(id)control error:(id *)error;
- (void)_appRegistrationNotification:(id)notification;
- (void)_findExtensionsStart;
- (void)_screenLockedChanged;
- (void)_systemLockChanged;
- (void)_updateExtensions:(id)extensions;
- (void)activate;
- (void)invalidate;
- (void)prefsChanged;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
- (void)screenStateChanged;
- (void)setAssertionFlags:(unsigned int)flags;
@end

@implementation CBExtensionsDaemon

- (void)_systemLockChanged
{
  p_systemMonitor = &self->_systemMonitor;
  v4 = [(CUSystemMonitor *)self->_systemMonitor systemLockState]== 2 || [(CUSystemMonitor *)*p_systemMonitor systemLockState]== 3;
  if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
  {
    sub_10009D99C(p_systemMonitor);
    if (!v4)
    {
      return;
    }
  }

  else if (!v4)
  {
    return;
  }

  extensionMap = self->_extensionMap;

  [(NSMutableDictionary *)extensionMap enumerateKeysAndObjectsUsingBlock:&stru_100ADF660];
}

- (id)descriptionWithLevel:(int)level
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_100042184;
  v34 = sub_100042554;
  v35 = 0;
  v29 = 12;
  levelCopy = level;
  v28 = 0;
  v15 = [objc_opt_class() description];
  CUAppendF();
  objc_storeStrong(&v35, 0);

  v6 = v31;
  obj = v31[5];
  v16 = [(NSMutableDictionary *)self->_extensionMap count];
  CUAppendF();
  objc_storeStrong(v6 + 5, obj);
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  extensionMap = self->_extensionMap;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000EBA34;
  v22[3] = &unk_100ADF518;
  v22[4] = &v23;
  [(NSMutableDictionary *)extensionMap enumerateKeysAndObjectsUsingBlock:v22, v16];
  if (v24[6] >= 1)
  {
    v8 = v31;
    v21 = v31[5];
    CUAppendF();
    objc_storeStrong(v8 + 5, v21);
  }

  if (self->_remoteAlertHandle)
  {
    v9 = v31;
    v20 = v31[5];
    CUAppendF();
    objc_storeStrong(v9 + 5, v20);
  }

  if (levelCopy <= 0x14)
  {
    v10 = v31;
    v19 = v31[5];
    NSAppendPrintF_safe();
    objc_storeStrong(v10 + 5, v19);
    v11 = self->_extensionMap;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000EBA98;
    v17[3] = &unk_100ADF568;
    v17[4] = &v30;
    levelCopy2 = level;
    [(NSMutableDictionary *)v11 enumerateKeysAndObjectsUsingBlock:v17];
  }

  v12 = v31[5];
  if (!v12)
  {
    v12 = &stru_100B0F9E0;
  }

  v13 = v12;
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v30, 8);

  return v13;
}

- (void)activate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
  {
    sub_1007FEFD8();
  }

  self->_prefEnforceApprovedExtensions = [(CBDaemonServer *)self->_daemonServer prefEnforceApprovedExtensions];
  if (!self->_appRegistrationObserving)
  {
    v3 = objc_alloc_init(CUCoalescer);
    updateExtensionsCoalescer = self->_updateExtensionsCoalescer;
    self->_updateExtensionsCoalescer = v3;
    v5 = v3;

    [(CUCoalescer *)v5 setDispatchQueue:self->_dispatchQueue];
    [(CUCoalescer *)v5 setMinDelay:5.0];
    [(CUCoalescer *)v5 setMaxDelay:60.0];
    [(CUCoalescer *)v5 setLeeway:1.0];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000EBFB0;
    v14[3] = &unk_100ADF590;
    v14[4] = v5;
    v14[5] = self;
    [(CUCoalescer *)v5 setActionHandler:v14];
    v6 = +[NSDistributedNotificationCenter defaultCenter];
    [v6 addObserver:self selector:"_appRegistrationNotification:" name:@"com.apple.LaunchServices.applicationRegistered" object:0];
    [v6 addObserver:self selector:"_appRegistrationNotification:" name:@"com.apple.LaunchServices.applicationUnregistered" object:0];
    self->_appRegistrationObserving = 1;
  }

  v7 = self->_systemMonitor;
  if (!v7)
  {
    v7 = objc_alloc_init(CUSystemMonitor);
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = v7;

    [(CUSystemMonitor *)v7 setDispatchQueue:self->_dispatchQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000EBFC8;
    v13[3] = &unk_100ADF5B8;
    v13[4] = self;
    [(CUSystemMonitor *)v7 setScreenLockedChangedHandler:v13];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000EBFD0;
    v12[3] = &unk_100ADF5B8;
    v12[4] = self;
    [(CUSystemMonitor *)v7 setScreenStateChangedHandler:v12];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10009D8D8;
    v11[3] = &unk_100ADF5B8;
    v11[4] = self;
    [(CUSystemMonitor *)v7 setSystemLockStateChangedHandler:v11];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100003198;
    v10[3] = &unk_100ADF5B8;
    v10[4] = self;
    [(CUSystemMonitor *)v7 setSystemUIChangedHandler:v10];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000EBFD8;
    v9[3] = &unk_100ADF5B8;
    v9[4] = self;
    [(CUSystemMonitor *)v7 activateWithCompletion:v9];
  }

  [(CBExtensionsDaemon *)self _findExtensionsStart];
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
  {
    sub_1007FEFF4();
  }

  self->_invalidateCalled = 1;
  if (self->_appRegistrationObserving)
  {
    v3 = +[NSDistributedNotificationCenter defaultCenter];
    [v3 removeObserver:self name:@"com.apple.LaunchServices.applicationRegistered" object:0];
    [v3 removeObserver:self name:@"com.apple.LaunchServices.applicationUnregistered" object:0];
    self->_appRegistrationObserving = 0;
  }

  [(NSMutableDictionary *)self->_extensionMap enumerateKeysAndObjectsUsingBlock:&stru_100ADF5F8];
  [(NSMutableDictionary *)self->_extensionMap removeAllObjects];
  extensionMap = self->_extensionMap;
  self->_extensionMap = 0;

  remoteAlertHandle = self->_remoteAlertHandle;
  if (remoteAlertHandle)
  {
    [(SBSRemoteAlertHandle *)remoteAlertHandle unregisterObserver:self];
    [(SBSRemoteAlertHandle *)self->_remoteAlertHandle invalidate];
    v6 = self->_remoteAlertHandle;
    self->_remoteAlertHandle = 0;

    self->_remoteAlertActivated = 0;
    [(CBDaemonServer *)self->_daemonServer setSystemFlags:0 mask:1];
  }

  [(CUSystemMonitor *)self->_systemMonitor invalidate];
  systemMonitor = self->_systemMonitor;
  self->_systemMonitor = 0;

  [(CUCoalescer *)self->_updateExtensionsCoalescer invalidate];
  updateExtensionsCoalescer = self->_updateExtensionsCoalescer;
  self->_updateExtensionsCoalescer = 0;
}

- (id)diagnosticControl:(id)control error:(id *)error
{
  controlCopy = control;
  CFStringGetTypeID();
  uTF8String = [CFDictionaryGetTypedValue() UTF8String];
  if (uTF8String)
  {
    v8 = uTF8String;
    if (!strcasecmp(uTF8String, "extension-found"))
    {
      CFStringGetTypeID();
      v10 = CFDictionaryGetTypedValue();
      if (v10)
      {
        v11 = [(NSMutableDictionary *)self->_extensionMap objectForKeyedSubscript:v10];
        if (v11)
        {
          v12 = objc_alloc_init(CBDevice);
          [v12 setIdentifier:@"Test Device"];
          [v11 _deviceFound:v12];

LABEL_22:
          v9 = &stru_100B0F9E0;
LABEL_23:

LABEL_24:
          goto LABEL_25;
        }

LABEL_32:
        if (error)
        {
          CBErrorF();
          *error = v9 = 0;
        }

        else
        {
          v9 = 0;
        }

        goto LABEL_23;
      }
    }

    else if (!strcasecmp(v8, "extension-launch"))
    {
      CFStringGetTypeID();
      v10 = CFDictionaryGetTypedValue();
      if (v10)
      {
        v11 = [(NSMutableDictionary *)self->_extensionMap objectForKeyedSubscript:v10];
        if (v11)
        {
          v13 = objc_alloc_init(CBDevice);
          [v13 setIdentifier:@"Test Device"];
          v17 = 0;
          v14 = [(CBExtensionsDaemon *)self remoteAlertStartWithCBExtension:v11 device:v13 error:&v17];
          v15 = v17;
          if (v14)
          {
            v9 = &stru_100B0F9E0;
          }

          else if (error)
          {
            v15 = v15;
            v9 = 0;
            *error = v15;
          }

          else
          {
            v9 = 0;
          }

          goto LABEL_23;
        }

        goto LABEL_32;
      }
    }

    else
    {
      if (strcasecmp(v8, "extension-reset"))
      {
        if (!strcasecmp(v8, "extension-update"))
        {
          [(CBExtensionsDaemon *)self _findExtensionsStart];
          v9 = &stru_100B0F9E0;
          goto LABEL_25;
        }

        if (error)
        {
          goto LABEL_7;
        }

LABEL_29:
        v9 = 0;
        goto LABEL_25;
      }

      CFStringGetTypeID();
      v10 = CFDictionaryGetTypedValue();
      if (v10)
      {
        v11 = [(NSMutableDictionary *)self->_extensionMap objectForKeyedSubscript:v10];
        if (v11)
        {
          if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
          {
            sub_1007FF050();
          }

          [v11 reset];
          goto LABEL_22;
        }

        goto LABEL_32;
      }
    }

    if (error)
    {
      CBErrorF();
      *error = v9 = 0;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_24;
  }

  if (!error)
  {
    goto LABEL_29;
  }

LABEL_7:
  CBErrorF();
  *error = v9 = 0;
LABEL_25:

  return v9;
}

- (void)prefsChanged
{
  prefEnforceApprovedExtensions = [(CBDaemonServer *)self->_daemonServer prefEnforceApprovedExtensions];
  if (self->_prefEnforceApprovedExtensions != prefEnforceApprovedExtensions)
  {
    self->_prefEnforceApprovedExtensions = prefEnforceApprovedExtensions;
    updateExtensionsCoalescer = self->_updateExtensionsCoalescer;

    [(CUCoalescer *)updateExtensionsCoalescer trigger];
  }
}

- (BOOL)resetCBExtension:(id)extension error:(id *)error
{
  extensionCopy = extension;
  extensionMap = self->_extensionMap;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000EC5F0;
  v9[3] = &unk_100ADF620;
  v10 = extensionCopy;
  v7 = extensionCopy;
  [(NSMutableDictionary *)extensionMap enumerateKeysAndObjectsUsingBlock:v9];
  [(CBExtensionsDaemon *)self _triggerPendingExtension];

  return 1;
}

- (void)_screenLockedChanged
{
  screenLockedSync = [(CUSystemMonitor *)self->_systemMonitor screenLockedSync];
  if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
  {
    sub_1007FF090();
    if (screenLockedSync)
    {
      return;
    }
  }

  else if (screenLockedSync)
  {
    return;
  }

  [(CBExtensionsDaemon *)self _triggerPendingExtension];
}

- (void)screenStateChanged
{
  screenState = [(CUSystemMonitor *)self->_systemMonitor screenState];
  if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
  {
    sub_1007FF0E0();
  }

  if (screenState < 30)
  {
    extensionMap = self->_extensionMap;

    [(NSMutableDictionary *)extensionMap enumerateKeysAndObjectsUsingBlock:&stru_100ADF640];
  }

  else
  {

    [(CBExtensionsDaemon *)self _triggerPendingExtension];
  }
}

- (void)setAssertionFlags:(unsigned int)flags
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  self->_assertionFlags = flags;

  [(CBExtensionsDaemon *)self _triggerPendingExtension];
}

- (void)_appRegistrationNotification:(id)notification
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EC854;
  block[3] = &unk_100ADF5B8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_findExtensionsStart
{
  if (self->_findExtensionsRunning)
  {
    if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
    {
      sub_1007FF1B0();
    }

    self->_findExtensionsDeferred = 1;
  }

  else
  {
    if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
    {
      sub_1007FF194();
    }

    self->_findExtensionsRunning = 1;
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);
    v5 = dispatch_queue_create("CBExtensionFindLatest", v4);

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000ECA10;
    v6[3] = &unk_100ADF688;
    v6[4] = self;
    v6[5] = mach_absolute_time();
    dispatch_async(v5, v6);
  }
}

- (void)_updateExtensions:(id)extensions
{
  extensionsCopy = extensions;
  p_info = &OBJC_METACLASS___BTVCDevice.info;
  if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
  {
    sub_1007FF24C(extensionsCopy);
  }

  [(NSMutableDictionary *)self->_extensionMap enumerateKeysAndObjectsUsingBlock:&stru_100ADF6C8];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v6 = extensionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v45 objects:v50 count:16];
  v37 = v6;
  if (v7)
  {
    v8 = v7;
    v38 = 0;
    v9 = *v46;
    v39 = *v46;
    v40 = 0;
    do
    {
      v10 = 0;
      do
      {
        if (*v46 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v45 + 1) + 8 * v10);
        v12 = [v6 objectForKeyedSubscript:v11];
        discoveryInfo = [v12 discoveryInfo];
        xpcDiscoveryInfo = [v12 xpcDiscoveryInfo];
        if (xpcDiscoveryInfo)
        {
          if ([(CBDaemonServer *)self->_daemonServer xpcEventAllowedInfo:xpcDiscoveryInfo])
          {
            v15 = [(NSMutableDictionary *)self->_extensionMap objectForKeyedSubscript:v11];
            if (v15)
            {
              v16 = v15;
              ++v40;
              v17 = *(p_info + 422);
              if (v17 <= 30 && (v17 != -1 || _LogCategory_Initialize()))
              {
                goto LABEL_27;
              }
            }

            else
            {
              v16 = objc_alloc_init(CBExtension);
              bundleID = [v12 bundleID];
              [(CBExtension *)v16 setBundleID:bundleID];

              [(CBExtension *)v16 setDispatchQueue:self->_dispatchQueue];
              [(CBExtension *)v16 setExtensionID:v11];
              [(CBExtension *)v16 setExtensionsDaemon:self];
              extensionMap = self->_extensionMap;
              if (!extensionMap)
              {
                v22 = objc_alloc_init(NSMutableDictionary);
                v23 = self->_extensionMap;
                self->_extensionMap = v22;

                extensionMap = self->_extensionMap;
              }

              [(NSMutableDictionary *)extensionMap setObject:v16 forKeyedSubscript:v11];
              ++v38;
              v24 = *(p_info + 422);
              if (v24 <= 30 && (v24 != -1 || _LogCategory_Initialize()))
              {
LABEL_27:
                CUPrintNSObjectOneLine();
                v36 = v35 = v11;
                LogPrintF_safe();

                p_info = (&OBJC_METACLASS___BTVCDevice + 32);
              }

              v6 = v37;
            }

            [(CBExtension *)v16 setPresent:1, v35, v36];
            CFStringGetTypeID();
            [(CBExtension *)v16 setSceneIdentifier:CFDictionaryGetTypedValue()];
            [(CBExtension *)v16 setScreenLocked:CFDictionaryGetInt64() != 0];
            [(CBExtension *)v16 setSystemUnlocked:CFDictionaryGetInt64() != 0];
            CFStringGetTypeID();
            [(CBExtension *)v16 setViewControllerClassName:CFDictionaryGetTypedValue()];
            [(CBExtension *)v16 updateWithXPCDiscoveryInfo:xpcDiscoveryInfo];

            v9 = v39;
            goto LABEL_30;
          }

          v19 = *(p_info + 422);
          if (v19 <= 30 && (v19 != -1 || _LogCategory_Initialize()))
          {
            sub_1007FF290();
          }
        }

        else
        {
          v18 = *(p_info + 422);
          if (v18 <= 90 && (v18 != -1 || _LogCategory_Initialize()))
          {
            sub_1007FF2D0();
          }
        }

LABEL_30:

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v25 = [v6 countByEnumeratingWithState:&v45 objects:v50 count:16];
      v8 = v25;
    }

    while (v25);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  allKeys = [(NSMutableDictionary *)self->_extensionMap allKeys];
  v27 = [allKeys countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = 0;
    v30 = *v42;
    do
    {
      v31 = 0;
      do
      {
        if (*v42 != v30)
        {
          objc_enumerationMutation(allKeys);
        }

        v32 = *(*(&v41 + 1) + 8 * v31);
        v33 = [(NSMutableDictionary *)self->_extensionMap objectForKeyedSubscript:v32];
        if (([v33 present] & 1) == 0)
        {
          [(NSMutableDictionary *)self->_extensionMap setObject:0 forKeyedSubscript:v32];
          [v33 invalidate];
          ++v29;
          if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
          {
            sub_1007FF310();
          }
        }

        v31 = v31 + 1;
      }

      while (v28 != v31);
      v34 = [allKeys countByEnumeratingWithState:&v41 objects:v49 count:16];
      v28 = v34;
    }

    while (v34);
  }

  if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

- (BOOL)remoteAlertAllowedAndReturnReason:(id *)reason extension:(id)extension
{
  extensionCopy = extension;
  if ([(CUSystemMonitor *)self->_systemMonitor screenState]<= 29)
  {
    if (!reason)
    {
      goto LABEL_14;
    }

    v11 = *reason;
    v12 = @"Screen off";
    goto LABEL_25;
  }

  if (([extensionCopy screenLocked] & 1) == 0 && -[CUSystemMonitor screenLockedSync](self->_systemMonitor, "screenLockedSync"))
  {
    if (!reason)
    {
      goto LABEL_14;
    }

    v11 = *reason;
    v12 = @"Screen locked";
LABEL_25:
    *reason = v12;
LABEL_26:

LABEL_27:
    LOBYTE(reason) = 0;
    goto LABEL_14;
  }

  if ([extensionCopy systemUnlocked])
  {
    systemLockStateSync = [(CUSystemMonitor *)self->_systemMonitor systemLockStateSync];
    if (systemLockStateSync != 1)
    {
      v8 = systemLockStateSync;
      if (systemLockStateSync != 4)
      {
        if (reason)
        {
          v9 = *reason;
          *reason = @"System locked";
        }

        if (v8 != 4)
        {
          goto LABEL_27;
        }
      }
    }
  }

  if (self->_remoteAlertActivated)
  {
    if (!reason)
    {
      goto LABEL_14;
    }

    v11 = *reason;
    v12 = @"UI already active";
    goto LABEL_25;
  }

  if ((self->_assertionFlags & 2) != 0)
  {
    if (!reason)
    {
      goto LABEL_14;
    }

    v11 = *reason;
    v12 = @"SuppressUIExtensions assertion";
    goto LABEL_25;
  }

  if (([(CUSystemMonitor *)self->_systemMonitor systemUIFlags]& 0x7E409) != 0)
  {
    if (!reason)
    {
      goto LABEL_14;
    }

    v11 = CUPrintFlags32();
    v13 = NSPrintF();
    v14 = *reason;
    *reason = v13;

    goto LABEL_26;
  }

  LOBYTE(reason) = 1;
LABEL_14:

  return reason;
}

- (BOOL)remoteAlertStartWithCBExtension:(id)extension device:(id)device error:(id *)error
{
  extensionCopy = extension;
  deviceCopy = device;
  bundleID = [extensionCopy bundleID];
  if (!bundleID)
  {
    if (!error)
    {
      goto LABEL_38;
    }

LABEL_37:
    CBErrorF();
    *error = v27 = 0;
    goto LABEL_28;
  }

  if ([(CUSystemMonitor *)self->_systemMonitor screenState]<= 29)
  {
    if (!error)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (([extensionCopy screenLocked] & 1) == 0 && -[CUSystemMonitor screenLockedSync](self->_systemMonitor, "screenLockedSync"))
  {
    if (!error)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (self->_remoteAlertActivated)
  {
    if (error)
    {
      goto LABEL_37;
    }

LABEL_38:
    v27 = 0;
    goto LABEL_28;
  }

  if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
  {
    v29 = extensionCopy;
    v31 = deviceCopy;
    LogPrintF_safe();
  }

  remoteAlertHandle = self->_remoteAlertHandle;
  if (remoteAlertHandle)
  {
    [(SBSRemoteAlertHandle *)remoteAlertHandle unregisterObserver:self];
    [(SBSRemoteAlertHandle *)self->_remoteAlertHandle invalidate];
    v11 = self->_remoteAlertHandle;
    self->_remoteAlertHandle = 0;

    self->_remoteAlertActivated = 0;
    [(CBDaemonServer *)self->_daemonServer setSystemFlags:0 mask:1];
  }

  bundleID2 = [extensionCopy bundleID];
  sceneIdentifier = [extensionCopy sceneIdentifier];
  v14 = sceneIdentifier;
  if (!bundleID2 || !sceneIdentifier)
  {
    viewControllerClassName = [extensionCopy viewControllerClassName];
    if (viewControllerClassName)
    {
      v15 = viewControllerClassName;
      errorCopy2 = error;
      v18 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:bundleID viewControllerClassName:viewControllerClassName];
LABEL_22:
      v19 = v18;

      v20 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
      dictionaryRepresentation = [deviceCopy dictionaryRepresentation];
      v22 = dictionaryRepresentation;
      if (dictionaryRepresentation)
      {
        v35 = @"device";
        v36 = dictionaryRepresentation;
        v23 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        [v20 setUserInfo:v23];
      }

      v24 = [SBSRemoteAlertHandle newHandleWithDefinition:v19 configurationContext:v20, v30, v32, v33];
      v25 = self->_remoteAlertHandle;
      self->_remoteAlertHandle = v24;

      v26 = self->_remoteAlertHandle;
      v27 = v26 != 0;
      if (v26)
      {
        [(SBSRemoteAlertHandle *)v26 registerObserver:self];
        [(SBSRemoteAlertHandle *)self->_remoteAlertHandle activateWithContext:0];
      }

      else
      {
        sub_1007FF350(errorCopy2);
      }

      goto LABEL_27;
    }

    if (error)
    {
      goto LABEL_42;
    }

LABEL_43:
    v27 = 0;
    goto LABEL_27;
  }

  v15 = [RBSProcessIdentity identityForEmbeddedApplicationIdentifier:bundleID2];
  if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
  {
    v32 = bundleID2;
    v33 = v14;
    v30 = v15;
    LogPrintF_safe();
  }

  if (v15)
  {
    errorCopy2 = error;
    v18 = [[SBSRemoteAlertDefinition alloc] initWithSceneProvidingProcess:v15 configurationIdentifier:v14];
    goto LABEL_22;
  }

  if (!error)
  {
    goto LABEL_43;
  }

LABEL_42:
  CBErrorF();
  *error = v27 = 0;
LABEL_27:

LABEL_28:
  return v27;
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  activateCopy = activate;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000EDBF4;
  v7[3] = &unk_100ADF590;
  v8 = activateCopy;
  selfCopy = self;
  v6 = activateCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000EDD3C;
  v7[3] = &unk_100ADF590;
  v8 = deactivateCopy;
  selfCopy = self;
  v6 = deactivateCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  dispatchQueue = self->_dispatchQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000EDE80;
  v8[3] = &unk_100ADF590;
  v9 = handleCopy;
  selfCopy = self;
  v7 = handleCopy;
  dispatch_async(dispatchQueue, v8);
}

@end