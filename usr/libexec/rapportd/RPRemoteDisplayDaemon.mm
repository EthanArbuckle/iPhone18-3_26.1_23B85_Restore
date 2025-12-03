@interface RPRemoteDisplayDaemon
- (BOOL)_clientBLEDiscoveryShouldRun;
- (BOOL)_clientBLENearbyActionV2AdvertiserShouldRun;
- (BOOL)_clientBLENeedsAWDLAdvertiserShouldRun;
- (BOOL)_clientBonjourAWDLBrowserShouldRun;
- (BOOL)_clientBonjourFoundDevice:(id)device reevaluate:(BOOL)reevaluate;
- (BOOL)_deviceSupportsLaguna:(id)laguna;
- (BOOL)_discoveriCloudDevicesOnly;
- (BOOL)_needToHoldPowerAssertion;
- (BOOL)_onenessEnabled;
- (BOOL)_serverBLEDiscoveryShouldStart;
- (BOOL)_serverBLENearbyActionV2DiscoveryShouldRun;
- (BOOL)_serverBonjourAWDLNeeded;
- (BOOL)addXPCMatchingToken:(unint64_t)token event:(id)event handler:(id)handler;
- (BOOL)diagnosticCommand:(id)command params:(id)params;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)removeXPCMatchingToken:(unint64_t)token;
- (RPRemoteDisplayDaemon)init;
- (RPRemoteDisplayDevice)dedicatedDevice;
- (id)_acquireRBSAssertionForEntry:(id)entry error:(id *)error;
- (id)_findMatchingDeviceWithIdentifier:(id)identifier;
- (id)_serverBonjourAuthTagString;
- (id)_serverBonjourAuthTagStringWithData:(id)data;
- (id)descriptionWithLevel:(int)level;
- (unsigned)_serverDirectLinkInterfaceIndex;
- (void)_activate;
- (void)_bleDiscoveryEnsureStarted:(BOOL)started;
- (void)_bleDiscoveryEnsureStopped;
- (void)_bluetoothUseCaseFromWombatState:(unsigned int)state resultBlock:(id)block;
- (void)_btAddressChanged;
- (void)_btAddressMonitorEnsureStarted;
- (void)_btAddressMonitorEnsureStopped;
- (void)_cameraCapabilitiesChanged:(id)changed;
- (void)_clearCameraCapabilitiesUpdateCache;
- (void)_clearConfirmationClientCache;
- (void)_clientAWDLPairingSessionWithDevice:(id)device;
- (void)_clientBLEDiscoveryDeviceFound:(id)found;
- (void)_clientBLEDiscoveryDeviceLost:(id)lost;
- (void)_clientBLEDiscoveryEnsureStopped;
- (void)_clientBLENearbyActionV2AdvertiserEnsureStarted;
- (void)_clientBLENearbyActionV2AdvertiserEnsureStopped;
- (void)_clientBLENearbyActionV2AdvertiserUpdate;
- (void)_clientBLENeedsAWDLAdvertiserEnsureStarted;
- (void)_clientBLENeedsAWDLAdvertiserEnsureStopped;
- (void)_clientBonjourAWDLBrowserEnsureStarted;
- (void)_clientBonjourAWDLBrowserEnsureStopped;
- (void)_clientBonjourAWDLBrowserFoundDevice:(id)device;
- (void)_clientBonjourAWDLBrowserLostDevice:(id)device;
- (void)_clientBonjourEnsureStarted;
- (void)_clientBonjourEnsureStopped;
- (void)_clientBonjourFoundUnresolvedDevice:(id)device;
- (void)_clientBonjourLostDevice:(id)device;
- (void)_clientBonjourLostUnresolvedDevice:(id)device;
- (void)_clientBonjourReconfirmDevice:(id)device reason:(const char *)reason;
- (void)_clientBonjourReevaluateDevices;
- (void)_clientEnsureStarted;
- (void)_clientEnsureStopped;
- (void)_clientLostAllDevices;
- (void)_connectionConfigureCommon:(id)common;
- (void)_deliverBufferedConnectionsToServer:(id)server;
- (void)_handleConfirmationResult:(id)result fromDevice:(id)device;
- (void)_handleServerActivation:(id)activation;
- (void)_invalidate;
- (void)_invalidated;
- (void)_localDeviceUpdate;
- (void)_postNotificationForWombatActivity:(unsigned int)activity;
- (void)_powerAssertionEnsureHeld;
- (void)_powerAssertionEnsureReleased;
- (void)_processPendingLostDevices;
- (void)_receivedCameraCapabilitiesMessage:(id)message fromDevice:(id)device isFirstUpdate:(BOOL)update;
- (void)_receivedCameraExitEvent:(id)event from:(id)from;
- (void)_registerForCameraCapabilitiesRequest;
- (void)_registerForIncomingMessages;
- (void)_registerForWombatStateNotifications;
- (void)_requestCameraCapabilitiesForDevice:(id)device;
- (void)_requestConfirmationFromDevicesMatching:(id)matching forPairingType:(unsigned int)type;
- (void)_scheduleCameraCapabilitiesRequest:(id)request interval:(unint64_t)interval;
- (void)_schedulePendingLostDeviceTimer;
- (void)_sendCameraCapabilitiesUpdateEventForDevice:(id)device;
- (void)_sendConfirmationCancelToAllDevices;
- (void)_sendDiscoverySessionExitWithReason:(id)reason;
- (void)_serverBLEDiscoveryEnsureStarted;
- (void)_serverBLEDiscoveryEnsureStopped;
- (void)_serverBLENearbyActionV2DiscoveryEnsureStarted;
- (void)_serverBLENearbyActionV2DiscoveryEnsureStopped;
- (void)_serverBLENeedsAWDLScannerDeviceFound:(id)found;
- (void)_serverBLENeedsAWDLScannerDeviceLost:(id)lost;
- (void)_serverBLENeedsAWDLScannerEnsureStarted;
- (void)_serverBLENeedsAWDLScannerEnsureStopped;
- (void)_serverBonjourAWDLAdvertiserEnsureStarted;
- (void)_serverBonjourAWDLAdvertiserEnsureStopped;
- (void)_serverBonjourAWDLAdvertiserUpdateTXT;
- (void)_serverBonjourEnsureStarted;
- (void)_serverBonjourEnsureStopped;
- (void)_serverBonjourUpdateTXT;
- (void)_serverEnsureStarted;
- (void)_serverEnsureStopped;
- (void)_serverHandleSessionStartWithID:(id)d netCnx:(id)cnx completion:(id)completion;
- (void)_serverProximityGetDeviceIdentifiers;
- (void)_serverReceivedNeedsAWDLEvent:(id)event;
- (void)_serverRegisterForIncomingMessages;
- (void)_serverTCPEnsureStarted;
- (void)_serverTCPEnsureStopped;
- (void)_serverTCPHandleConnectionStarted:(id)started;
- (void)_startDiscoverySessionExpirationTimer;
- (void)_startInSessionDeviceLostTimer;
- (void)_startObservingOnenessEnabledState;
- (void)_stopObservingOnenessEnabledState;
- (void)_stopPairingServer;
- (void)_unregisterWombatStateNotifications;
- (void)_update;
- (void)_updateCameraCapabilities;
- (void)_updateForXPCClientChange;
- (void)_updateXPCMatchingDiscovery;
- (void)_xpcConnectionInvalidated:(id)invalidated;
- (void)activate;
- (void)addNeedsAWDLPeer:(id)peer;
- (void)daemonInfoChanged:(unint64_t)changed;
- (void)invalidate;
- (void)prefsChanged;
- (void)saveDedicatedDevice:(id)device;
- (void)setDeviceConfirmedIdentifier:(id)identifier;
@end

@implementation RPRemoteDisplayDaemon

- (void)_update
{
  v3 = self->_prefClientEnabled || [(NSMutableSet *)self->_activatedDiscoverySet count]|| [(NSMutableSet *)self->_activatedSessionSet count]|| [(NSMutableDictionary *)self->_xpcMatchingDiscoveryMap count]!= 0;
  if (self->_prefServerEnabled || [(NSMutableDictionary *)self->_activatedServerXPCCnxMap count])
  {
    v4 = 1;
LABEL_8:
    [(RPRemoteDisplayDaemon *)self _localDeviceUpdate];
    [(RPRemoteDisplayDaemon *)self _btAddressMonitorEnsureStarted];
    goto LABEL_9;
  }

  v10 = [(NSMutableDictionary *)self->_xpcMatchingServerMap count];
  v4 = v10 != 0;
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = v3;
  }

  if (v11 == 1)
  {
    goto LABEL_8;
  }

  [(RPRemoteDisplayDaemon *)self _btAddressMonitorEnsureStopped];
  v4 = 0;
LABEL_9:
  if (v3)
  {
    [(RPRemoteDisplayDaemon *)self _clientEnsureStarted];
  }

  else
  {
    [(RPRemoteDisplayDaemon *)self _clientEnsureStopped];
  }

  v5 = +[RPIdentityDaemon sharedIdentityDaemon];
  v13 = [v5 identitiesOfType:13 error:0];

  v6 = +[RPIdentityDaemon sharedIdentityDaemon];
  v7 = [v6 identitiesOfType:12 error:0];

  if (v4)
  {
    v8 = +[RPCloudDaemon sharedCloudDaemon];
    idsDeviceArray = [v8 idsDeviceArray];
    if ([idsDeviceArray count] || objc_msgSend(v13, "count"))
    {

LABEL_16:
      [(RPRemoteDisplayDaemon *)self _serverEnsureStarted];
      goto LABEL_25;
    }

    v12 = [v7 count];

    if (v12)
    {
      goto LABEL_16;
    }
  }

  [(RPRemoteDisplayDaemon *)self _serverEnsureStopped];
LABEL_25:
  if ([(RPRemoteDisplayDaemon *)self _needToHoldPowerAssertion])
  {
    [(RPRemoteDisplayDaemon *)self _powerAssertionEnsureHeld];
  }

  else
  {
    [(RPRemoteDisplayDaemon *)self _powerAssertionEnsureReleased];
  }
}

- (BOOL)_clientBonjourAWDLBrowserShouldRun
{
  if (self->_bonjourBrowserAWDLForce)
  {
    return 1;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_activatedSessionSet;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v2 = 0;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if ([v9 needsAWDL])
        {
          processName = [v9 processName];
          v11 = [RPAssertionInfo assertionWithType:7 processName:processName];

          [v11 setHandlerQueue:self->_dispatchQueue];
          [v11 setStartHandler:&stru_1001AED48];
          [v11 setExpiredHandler:&stru_1001AED68];
          bonjourBrowserAWDLAssertions = self->_bonjourBrowserAWDLAssertions;
          if (!bonjourBrowserAWDLAssertions)
          {
            v13 = +[NSMutableSet set];
            v14 = self->_bonjourBrowserAWDLAssertions;
            self->_bonjourBrowserAWDLAssertions = v13;

            bonjourBrowserAWDLAssertions = self->_bonjourBrowserAWDLAssertions;
          }

          [(NSMutableSet *)bonjourBrowserAWDLAssertions addObject:v11];

          v2 = 1;
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)_clientBLENeedsAWDLAdvertiserShouldRun
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = self->_xpcConnections;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v24;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        clientNetCnx = [v9 clientNetCnx];
        state = [clientNetCnx state];

        if (state != 1)
        {
          activatedSession = [v9 activatedSession];
          needsAWDL = [activatedSession needsAWDL];

          if (needsAWDL)
          {
            if (([v9 usingNearbyActionV2] & 1) == 0)
            {
              activatedSession2 = [v9 activatedSession];
              bonjourDevice = [activatedSession2 bonjourDevice];

              if (!bonjourDevice)
              {
                xpcCnx = [v9 xpcCnx];
                v17 = sub_10001B924([xpcCnx processIdentifier]);
                v18 = [RPAssertionInfo assertionWithType:5 processName:v17];

                [v18 setHandlerQueue:self->_dispatchQueue];
                [v18 setStartHandler:&stru_1001AECE8];
                [v18 setExpiredHandler:&stru_1001AED08];
                bleNeedsAWDLAdvertiserAssertions = self->_bleNeedsAWDLAdvertiserAssertions;
                if (!bleNeedsAWDLAdvertiserAssertions)
                {
                  v20 = +[NSMutableSet set];
                  v21 = self->_bleNeedsAWDLAdvertiserAssertions;
                  self->_bleNeedsAWDLAdvertiserAssertions = v20;

                  bleNeedsAWDLAdvertiserAssertions = self->_bleNeedsAWDLAdvertiserAssertions;
                }

                [(NSMutableSet *)bleNeedsAWDLAdvertiserAssertions addObject:v18];

                v6 = 1;
              }
            }
          }
        }
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (void)_clientEnsureStarted
{
  DeviceClass = GestaltGetDeviceClass();
  if (([(CUSystemMonitor *)self->_systemMonitor firstUnlocked]& 1) != 0)
  {
    [(RPRemoteDisplayDaemon *)self _clientBonjourEnsureStarted];
    if ([(RPRemoteDisplayDaemon *)self _clientBLEDiscoveryShouldRun])
    {
      [(RPRemoteDisplayDaemon *)self _clientBLEDiscoveryEnsureStarted];
    }

    else
    {
      [(RPRemoteDisplayDaemon *)self _clientBLEDiscoveryEnsureStopped];
    }

    if ([(RPRemoteDisplayDaemon *)self _clientBLENearbyActionV2AdvertiserShouldRun])
    {
      [(RPRemoteDisplayDaemon *)self _clientBLENearbyActionV2AdvertiserEnsureStarted];
    }

    else
    {
      [(RPRemoteDisplayDaemon *)self _clientBLENearbyActionV2AdvertiserEnsureStopped];
    }

    if ([(RPRemoteDisplayDaemon *)self _clientBLENeedsAWDLAdvertiserShouldRun])
    {
      [(RPRemoteDisplayDaemon *)self _clientBLENeedsAWDLAdvertiserEnsureStarted];
    }

    else
    {
      [(RPRemoteDisplayDaemon *)self _clientBLENeedsAWDLAdvertiserEnsureStopped];
    }

    if ([(RPRemoteDisplayDaemon *)self _clientBonjourAWDLBrowserShouldRun])
    {
      [(RPRemoteDisplayDaemon *)self _clientBonjourAWDLBrowserEnsureStarted];
    }

    else
    {
      [(RPRemoteDisplayDaemon *)self _clientBonjourAWDLBrowserEnsureStopped];
    }

    if (DeviceClass == 100 || DeviceClass == 4)
    {

      [(RPRemoteDisplayDaemon *)self _registerForIncomingMessages];
    }
  }

  else if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_100127BF0();
  }
}

- (void)_localDeviceUpdate
{
  changed = [(RPCompanionLinkDevice *)self->_localDeviceInfo changed];
  localDeviceInfo = self->_localDeviceInfo;
  if (!localDeviceInfo)
  {
    v5 = objc_alloc_init(RPCompanionLinkDevice);
    v6 = self->_localDeviceInfo;
    self->_localDeviceInfo = v5;

    [(RPCompanionLinkDevice *)self->_localDeviceInfo setDaemon:1];
    [(RPCompanionLinkDevice *)self->_localDeviceInfo setFlags:[(RPCompanionLinkDevice *)self->_localDeviceInfo flags]| 0x48];
    localDeviceInfo = self->_localDeviceInfo;
  }

  identifier = [(RPCompanionLinkDevice *)localDeviceInfo identifier];
  if (!identifier)
  {
    v7 = +[RPCloudDaemon sharedCloudDaemon];
    idsDeviceIDSelf = [v7 idsDeviceIDSelf];
    [(RPCompanionLinkDevice *)self->_localDeviceInfo setIdentifier:idsDeviceIDSelf];

    changed = 1;
  }

  idsDeviceIdentifier = [(RPCompanionLinkDevice *)self->_localDeviceInfo idsDeviceIdentifier];
  if (!idsDeviceIdentifier)
  {
    v10 = +[RPCloudDaemon sharedCloudDaemon];
    idsDeviceIDSelf2 = [v10 idsDeviceIDSelf];
    [(RPCompanionLinkDevice *)self->_localDeviceInfo setIdsDeviceIdentifier:idsDeviceIDSelf2];

    changed = 1;
  }

  v12 = +[RPIdentityDaemon sharedIdentityDaemon];
  sessionPairingIdentifier = [v12 sessionPairingIdentifier];
  uUIDString = [sessionPairingIdentifier UUIDString];

  sessionPairingIdentifier2 = [(RPCompanionLinkDevice *)self->_localDeviceInfo sessionPairingIdentifier];
  v16 = uUIDString;
  v17 = sessionPairingIdentifier2;
  v18 = v17;
  if (v16 == v17)
  {

    goto LABEL_14;
  }

  if ((v16 != 0) == (v17 == 0))
  {

    goto LABEL_13;
  }

  v19 = [v16 isEqual:v17];

  if ((v19 & 1) == 0)
  {
LABEL_13:
    [(RPCompanionLinkDevice *)self->_localDeviceInfo setSessionPairingIdentifier:v16];
    changed = 1;
  }

LABEL_14:
  model = [(RPCompanionLinkDevice *)self->_localDeviceInfo model];

  if (!model)
  {
    v21 = GestaltCopyAnswer();
    [(RPCompanionLinkDevice *)self->_localDeviceInfo setModel:v21];

    changed = 1;
  }

  btAdvAddrStr = self->_btAdvAddrStr;
  if (!btAdvAddrStr)
  {
    goto LABEL_22;
  }

  publicIdentifier = [(RPCompanionLinkDevice *)self->_localDeviceInfo publicIdentifier];
  v24 = btAdvAddrStr;
  v25 = publicIdentifier;
  v26 = v25;
  if (v24 == v25)
  {

    goto LABEL_22;
  }

  if (v25)
  {
    v27 = [(NSString *)v24 isEqual:v25];

    if ((v27 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_22:
    if (!changed)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

LABEL_25:
  [(RPCompanionLinkDevice *)self->_localDeviceInfo setPublicIdentifier:self->_btAdvAddrStr];
LABEL_26:
  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_100129524(&self->_localDeviceInfo);
  }

LABEL_29:
  [(RPCompanionLinkDevice *)self->_localDeviceInfo setChanged:0];
}

- (BOOL)_clientBLENearbyActionV2AdvertiserShouldRun
{
  v3 = +[RPCompanionLinkDaemon sharedCompanionLinkDaemon];
  isNearbyActionV2AdvertiserActive = [v3 isNearbyActionV2AdvertiserActive];

  if (isNearbyActionV2AdvertiserActive)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_10012835C();
    }

    return 0;
  }

  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_1000AB10C;
  v47[3] = &unk_1001AB3C8;
  v47[4] = self;
  v39 = objc_retainBlock(v47);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v6 = self->_xpcConnections;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (!v7)
  {
LABEL_50:
    v40 = 0;
    goto LABEL_51;
  }

  v8 = v7;
  v40 = 0;
  v9 = *v44;
  selfCopy = self;
  while (2)
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v44 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v43 + 1) + 8 * i);
      clientNetCnx = [v11 clientNetCnx];
      state = [clientNetCnx state];

      if (state != 1)
      {
        activatedSession = [v11 activatedSession];

        if (activatedSession)
        {
          activatedSession2 = [v11 activatedSession];
          needsAWDL = [activatedSession2 needsAWDL];

          if (needsAWDL)
          {
            activatedSession3 = [v11 activatedSession];
            bonjourDevice = [activatedSession3 bonjourDevice];

            if (!bonjourDevice)
            {
              activatedSession4 = [v11 activatedSession];
              daemonDevice = [activatedSession4 daemonDevice];

              idsDeviceIdentifier = [daemonDevice idsDeviceIdentifier];
              v22 = +[RPCloudDaemon sharedCloudDaemon];
              idsDeviceMap = [v22 idsDeviceMap];
              v24 = [idsDeviceMap objectForKeyedSubscript:idsDeviceIdentifier];

              v25 = daemonDevice;
              v42 = idsDeviceIdentifier;
              if (([daemonDevice statusFlags] & 0x80000) != 0)
              {
                if (!v24)
                {
                  if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
                  {
                    sub_1001282A8();
                  }

                  v24 = 0;
                  goto LABEL_49;
                }

                v26 = daemonDevice;
                modelIdentifier = [v24 modelIdentifier];
                v29 = GestaltProductTypeStringToDeviceClass();

                if ((v29 & 0xFFFFFFFD) != 1)
                {
                  v25 = daemonDevice;
                  if (dword_1001D4BA0 > 30)
                  {
                    idsDeviceIdentifier = v42;
                  }

                  else
                  {
                    idsDeviceIdentifier = v42;
                    if (dword_1001D4BA0 != -1 || _LogCategory_Initialize())
                    {
                      sub_100128214(v24);
                    }
                  }

                  goto LABEL_49;
                }

                [v24 operatingSystemVersion];
                if ((DeviceOSVersionAtOrLater() & 1) == 0)
                {
                  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
                  {
                    sub_100128268();
                  }

LABEL_47:
                  v25 = v26;
LABEL_48:
                  idsDeviceIdentifier = v42;
LABEL_49:

                  goto LABEL_50;
                }

                v27 = selfCopy;
              }

              else
              {
                v26 = daemonDevice;
                v27 = selfCopy;
                if (([daemonDevice statusFlags] & 0x3000000000) == 0)
                {
                  if (dword_1001D4BA0 > 30)
                  {
                    goto LABEL_47;
                  }

                  v25 = daemonDevice;
                  if (dword_1001D4BA0 != -1 || _LogCategory_Initialize())
                  {
                    sub_10012831C();
                  }

                  goto LABEL_48;
                }
              }

              if (v27->_bleNearbyActionV2Device)
              {
                goto LABEL_25;
              }

              bleTargetData = [v26 bleTargetData];
              if (!bleTargetData)
              {
                if (dword_1001D4BA0 > 30)
                {
                  v25 = v26;
                  goto LABEL_48;
                }

                v25 = v26;
                idsDeviceIdentifier = v42;
                if (dword_1001D4BA0 != -1 || _LogCategory_Initialize())
                {
                  sub_1001282E8();
                }

                goto LABEL_49;
              }

              v31 = bleTargetData;
              objc_storeStrong(&v27->_bleNearbyActionV2Device, v26);
              [(RPRemoteDisplayDevice *)v27->_bleNearbyActionV2Device setNearbyActionV2Type:50];
              [v11 setUsingNearbyActionV2:1];

              if (v27->_bleNearbyActionV2Device)
              {
LABEL_25:
                xpcCnx = [v11 xpcCnx];
                v33 = sub_10001B924([xpcCnx processIdentifier]);
                v34 = [RPAssertionInfo assertionWithType:6 processName:v33];

                [v34 setHandlerQueue:selfCopy->_dispatchQueue];
                [v34 setStartHandler:v39];
                [v34 setExpiredHandler:&stru_1001AED28];
                bleNearbyActionV2AdvertiserAssertions = selfCopy->_bleNearbyActionV2AdvertiserAssertions;
                if (!bleNearbyActionV2AdvertiserAssertions)
                {
                  v36 = +[NSMutableSet set];
                  v37 = selfCopy->_bleNearbyActionV2AdvertiserAssertions;
                  selfCopy->_bleNearbyActionV2AdvertiserAssertions = v36;

                  bleNearbyActionV2AdvertiserAssertions = selfCopy->_bleNearbyActionV2AdvertiserAssertions;
                }

                [(NSMutableSet *)bleNearbyActionV2AdvertiserAssertions addObject:v34];

                v40 = 1;
              }
            }
          }
        }
      }
    }

    v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_51:

  return v40;
}

- (void)_btAddressMonitorEnsureStarted
{
  if (!self->_btAdvAddrMonitor)
  {
    v11[5] = v5;
    v11[6] = v4;
    v11[9] = v2;
    v11[10] = v3;
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100129390();
    }

    v7 = objc_alloc_init(CUSystemMonitor);
    btAdvAddrMonitor = self->_btAdvAddrMonitor;
    self->_btAdvAddrMonitor = v7;

    [(CUSystemMonitor *)self->_btAdvAddrMonitor setDispatchQueue:self->_dispatchQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000B07C4;
    v11[3] = &unk_1001AA970;
    v11[4] = self;
    [(CUSystemMonitor *)self->_btAdvAddrMonitor setRotatingIdentifierChangedHandler:v11];
    v9 = self->_btAdvAddrMonitor;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000B07CC;
    v10[3] = &unk_1001AA970;
    v10[4] = self;
    [(CUSystemMonitor *)v9 activateWithCompletion:v10];
  }
}

- (void)_clientBonjourEnsureStarted
{
  if (!self->_bonjourBrowser)
  {
    v12[5] = v5;
    v12[6] = v4;
    v12[9] = v2;
    v12[10] = v3;
    if (self->_btAdvAddrData)
    {
      if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_100128378();
      }

      v7 = objc_alloc_init(CUBonjourBrowser);
      bonjourBrowser = self->_bonjourBrowser;
      self->_bonjourBrowser = v7;

      if (self->_prefNoInfra)
      {
        v9 = 0x8000000000000;
      }

      else
      {
        v9 = 0x20000000000000;
      }

      [(CUBonjourBrowser *)self->_bonjourBrowser setBrowseFlags:v9];
      [(CUBonjourBrowser *)self->_bonjourBrowser setChangeFlags:0xFFFFFFFFLL];
      [(CUBonjourBrowser *)self->_bonjourBrowser setControlFlags:1];
      [(CUBonjourBrowser *)self->_bonjourBrowser setDispatchQueue:self->_dispatchQueue];
      [(CUBonjourBrowser *)self->_bonjourBrowser setDomain:@"local."];
      [(CUBonjourBrowser *)self->_bonjourBrowser setLabel:@"RDLink"];
      [(CUBonjourBrowser *)self->_bonjourBrowser setServiceType:@"_rdlink._tcp"];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000AB3D0;
      v12[3] = &unk_1001AB438;
      v12[4] = self;
      [(CUBonjourBrowser *)self->_bonjourBrowser setDeviceFoundHandler:v12];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000AB3EC;
      v11[3] = &unk_1001AB438;
      v11[4] = self;
      [(CUBonjourBrowser *)self->_bonjourBrowser setDeviceLostHandler:v11];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000AB464;
      v10[3] = &unk_1001AB460;
      v10[4] = self;
      [(CUBonjourBrowser *)self->_bonjourBrowser setDeviceChangedHandler:v10];
      [(CUBonjourBrowser *)self->_bonjourBrowser activate];
    }

    else if (dword_1001D4BA0 <= 20 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100128394();
    }
  }
}

- (BOOL)_clientBLEDiscoveryShouldRun
{
  if (!self->_prefBLEClient)
  {
    return 0;
  }

  if (GestaltGetDeviceClass() != 4)
  {
    return 1;
  }

  model = [(RPCompanionLinkDevice *)self->_localDeviceInfo model];
  v4 = sub_10001AD94(model) > 10;

  return v4;
}

- (void)_clientBLEDiscoveryEnsureStopped
{
  if (self->_clientBLEDiscoveryStarted)
  {
    [(RPRemoteDisplayDaemon *)self _bleDiscoveryEnsureStopped];
  }
}

- (void)_clientBLENearbyActionV2AdvertiserEnsureStopped
{
  bleNearbyActionV2Advertiser = self->_bleNearbyActionV2Advertiser;
  if (bleNearbyActionV2Advertiser)
  {
    [(RPNearbyActionV2Advertiser *)bleNearbyActionV2Advertiser invalidate];
    v4 = self->_bleNearbyActionV2Advertiser;
    self->_bleNearbyActionV2Advertiser = 0;

    bleNearbyActionV2AdvertiserAssertions = self->_bleNearbyActionV2AdvertiserAssertions;
    if (bleNearbyActionV2AdvertiserAssertions)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v6 = bleNearbyActionV2AdvertiserAssertions;
      v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v20;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v20 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v19 + 1) + 8 * i);
            v12 = +[RPAssertionTracker sharedTracker];
            [v12 stopTracking:v11];
          }

          v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v8);
      }

      [(NSMutableSet *)self->_bleNearbyActionV2AdvertiserAssertions removeAllObjects];
      v13 = self->_bleNearbyActionV2AdvertiserAssertions;
      self->_bleNearbyActionV2AdvertiserAssertions = 0;
    }

    bleNearbyActionV2Device = self->_bleNearbyActionV2Device;
    self->_bleNearbyActionV2Device = 0;

    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001281E0();
    }

    [(RPRemoteDisplayDaemon *)self _clientSendNeedsAWDLOverWiFi:0];
    v15 = sub_1000AA650();
    v16 = sub_1000AA650();
    v17 = os_signpost_id_make_with_pointer(v16, self);

    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *v18 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_END, v17, "BLE NearbyActionV2 advertisement", "BLE NearbyActionV2 advertiser stopped\n signpost_end:end_time", v18, 2u);
    }
  }
}

- (void)_clientBLENeedsAWDLAdvertiserEnsureStopped
{
  if (self->_bleNeedsAWDLAdvertiser)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001281C4();
    }

    [(SFService *)self->_bleNeedsAWDLAdvertiser invalidate];
    bleNeedsAWDLAdvertiser = self->_bleNeedsAWDLAdvertiser;
    self->_bleNeedsAWDLAdvertiser = 0;

    bleNeedsAWDLAdvertiserAssertions = self->_bleNeedsAWDLAdvertiserAssertions;
    if (bleNeedsAWDLAdvertiserAssertions)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = bleNeedsAWDLAdvertiserAssertions;
      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v14;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v13 + 1) + 8 * i);
            v11 = +[RPAssertionTracker sharedTracker];
            [v11 stopTracking:v10];
          }

          v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v7);
      }

      [(NSMutableSet *)self->_bleNeedsAWDLAdvertiserAssertions removeAllObjects];
      v12 = self->_bleNeedsAWDLAdvertiserAssertions;
      self->_bleNeedsAWDLAdvertiserAssertions = 0;
    }

    [(RPRemoteDisplayDaemon *)self _clientSendNeedsAWDLOverWiFi:0, v13];
  }
}

- (void)_clientBonjourAWDLBrowserEnsureStopped
{
  if (self->_bonjourBrowserAWDL)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100128854();
    }

    [(CUBonjourBrowser *)self->_bonjourBrowserAWDL invalidate];
    bonjourBrowserAWDL = self->_bonjourBrowserAWDL;
    self->_bonjourBrowserAWDL = 0;

    bonjourBrowserAWDLAssertions = self->_bonjourBrowserAWDLAssertions;
    if (bonjourBrowserAWDLAssertions)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v5 = bonjourBrowserAWDLAssertions;
      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v16;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v15 + 1) + 8 * i);
            v11 = +[RPAssertionTracker sharedTracker];
            [v11 stopTracking:v10];
          }

          v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v7);
      }

      [(NSMutableSet *)self->_bonjourBrowserAWDLAssertions removeAllObjects];
      v12 = self->_bonjourBrowserAWDLAssertions;
      self->_bonjourBrowserAWDLAssertions = 0;
    }

    if (!self->_bonjourAWDLAdvertiser)
    {
      v13 = +[RPWiFiP2PTransaction sharedInstance];
      [v13 invalidateForClient:@"Sidecar"];
    }

    [(NSMutableDictionary *)self->_bonjourAWDLDevices removeAllObjects];
    bonjourAWDLDevices = self->_bonjourAWDLDevices;
    self->_bonjourAWDLDevices = 0;
  }
}

- (void)_clientBonjourReevaluateDevices
{
  if ([(NSMutableDictionary *)self->_unresolvedDevices count]&& dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001287DC();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  allValues = [(NSMutableDictionary *)self->_discoveredDevices allValues];
  v4 = [allValues countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        bonjourDevice = [*(*(&v20 + 1) + 8 * i) bonjourDevice];
        if (bonjourDevice)
        {
          [(RPRemoteDisplayDaemon *)self _clientBonjourFoundDevice:bonjourDevice reevaluate:1];
        }
      }

      v5 = [allValues countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  allValues2 = [(NSMutableDictionary *)self->_unresolvedDevices allValues];
  v10 = [allValues2 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(allValues2);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        if ([(RPRemoteDisplayDaemon *)self _clientBonjourFoundDevice:v14 reevaluate:1])
        {
          if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
          {
            sub_1001287F8();
          }

          [(RPRemoteDisplayDaemon *)self _clientBonjourLostUnresolvedDevice:v14];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v15 = [allValues2 countByEnumeratingWithState:&v16 objects:v24 count:16];
      v11 = v15;
    }

    while (v15);
  }
}

- (void)_serverTCPEnsureStarted
{
  if (!self->_tcpServer)
  {
    v21 = v5;
    v22 = v4;
    v23 = v2;
    v24 = v3;
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001291DC();
    }

    v7 = objc_alloc_init(CUTCPServer);
    tcpServer = self->_tcpServer;
    self->_tcpServer = v7;

    [(CUTCPServer *)self->_tcpServer setDispatchQueue:self->_dispatchQueue];
    [(CUTCPServer *)self->_tcpServer setFlags:9];
    [(CUTCPServer *)self->_tcpServer setLabel:@"RDLink"];
    [(CUTCPServer *)self->_tcpServer setMaxConnectionCount:8];
    if (self->_awdlPairingID)
    {
      memset(v19, 0, sizeof(v19));
      v18 = 0;
      v9 = if_nametoindex("awdl0");
      [(CUTCPServer *)self->_tcpServer setMaxConnectionCount:1];
      v10 = self->_tcpServer;
      v17 = 7708;
      v20 = v9;
      [(CUTCPServer *)v10 setInterfaceAddress:&v17];
    }

    [(CUTCPServer *)self->_tcpServer setConnectionPrepareHandler:&stru_1001AEE00];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000AEB64;
    v16[3] = &unk_1001AB6E0;
    v16[4] = self;
    [(CUTCPServer *)self->_tcpServer setConnectionStartedHandler:v16];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000AEB7C;
    v15[3] = &unk_1001AEE28;
    v15[4] = self;
    [(CUTCPServer *)self->_tcpServer setConnectionEndedHandler:v15];
    v11 = self->_tcpServer;
    v14 = 0;
    [(CUTCPServer *)v11 activateDirectAndReturnError:&v14];
    v12 = v14;
    if (v12)
    {
      if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001291F8();
      }

      [(CUTCPServer *)self->_tcpServer invalidate];
      v13 = self->_tcpServer;
      self->_tcpServer = 0;
    }
  }
}

- (void)_serverEnsureStarted
{
  if (([(CUSystemMonitor *)self->_systemMonitor firstUnlocked]& 1) != 0)
  {
    if (self->_prefServerBonjourInfra)
    {
      _serverBonjourAWDLNeeded = [(RPRemoteDisplayDaemon *)self _serverBonjourAWDLNeeded];
      [(RPRemoteDisplayDaemon *)self _serverTCPEnsureStarted];
LABEL_4:
      [(RPRemoteDisplayDaemon *)self _serverBonjourEnsureStarted];
LABEL_14:
      if ([(RPRemoteDisplayDaemon *)self _serverBLEDiscoveryShouldStart])
      {
        [(RPRemoteDisplayDaemon *)self _serverBLEDiscoveryEnsureStarted];
      }

      else
      {
        [(RPRemoteDisplayDaemon *)self _serverBLEDiscoveryEnsureStopped];
      }

      if (self->_prefBLEServer && [(RPRemoteDisplayDaemon *)self _serverBLENearbyActionV2DiscoveryShouldRun])
      {
        [(RPRemoteDisplayDaemon *)self _serverBLENearbyActionV2DiscoveryEnsureStarted];
      }

      else
      {
        [(RPRemoteDisplayDaemon *)self _serverBLENearbyActionV2DiscoveryEnsureStopped];
      }

      if (self->_prefBLEServer || self->_awdlPairingID)
      {
        [(RPRemoteDisplayDaemon *)self _serverBLENeedsAWDLScannerEnsureStarted];
      }

      else
      {
        [(RPRemoteDisplayDaemon *)self _serverBLENeedsAWDLScannerEnsureStopped];
      }

      if (_serverBonjourAWDLNeeded)
      {
        [(RPRemoteDisplayDaemon *)self _serverBonjourAWDLAdvertiserEnsureStarted];
      }

      else
      {
        [(RPRemoteDisplayDaemon *)self _serverBonjourAWDLAdvertiserEnsureStopped];
      }

      if ((GestaltGetDeviceClass() == 1 || GestaltGetDeviceClass() == 3) && objc_opt_class())
      {
        [(RPRemoteDisplayDaemon *)self _registerForCameraCapabilitiesRequest];
      }

      if (!self->_serverIncomingMessageCLinkClient)
      {

        [(RPRemoteDisplayDaemon *)self _serverRegisterForIncomingMessages];
      }

      return;
    }

    netFlags = [(CUSystemMonitor *)self->_systemMonitor netFlags];
    _serverBonjourAWDLNeeded2 = [(RPRemoteDisplayDaemon *)self _serverBonjourAWDLNeeded];
    _serverBonjourAWDLNeeded = _serverBonjourAWDLNeeded2;
    if (netFlags & 1) != 0 || (_serverBonjourAWDLNeeded2)
    {
      [(RPRemoteDisplayDaemon *)self _serverTCPEnsureStarted];
      if (netFlags)
      {
        goto LABEL_4;
      }
    }

    else
    {
      [(RPRemoteDisplayDaemon *)self _serverTCPEnsureStopped];
    }

    [(RPRemoteDisplayDaemon *)self _serverBonjourEnsureStopped];
    goto LABEL_14;
  }

  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_100128D9C();
  }
}

- (BOOL)_serverBonjourAWDLNeeded
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  if ([(NSMutableDictionary *)self->_needsAWDLDevices count])
  {
    v3 = 1;
  }

  else
  {
    actionV2Devices = [(RPNearbyActionV2Discovery *)self->_bleNearbyActionV2Discovery actionV2Devices];
    v3 = [actionV2Devices count] || self->_bonjourAWDLAdvertiserForce || self->_awdlPairingID != 0;
  }

  v12 = v3;
  if ((v10[3] & 1) != 0 || [(NSMutableSet *)self->_needsAWDLRequestIdentifiers count])
  {
    v5 = 1;
  }

  else
  {
    tcpServerConnections = self->_tcpServerConnections;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000AEB10;
    v8[3] = &unk_1001AEDE0;
    v8[4] = &v9;
    [(NSMutableDictionary *)tcpServerConnections enumerateKeysAndObjectsUsingBlock:v8];
    v5 = *(v10 + 24);
  }

  _Block_object_dispose(&v9, 8);
  return v5 & 1;
}

- (void)_serverBonjourEnsureStarted
{
  if (self->_bonjourAdvertiser)
  {

    [(RPRemoteDisplayDaemon *)self _serverBonjourUpdateTXT];
  }

  else if (self->_btAdvAddrData)
  {
    tcpListeningPort = [(CUTCPServer *)self->_tcpServer tcpListeningPort];
    if (tcpListeningPort <= 0)
    {
      if (dword_1001D4BA0 <= 20 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001290AC();
      }
    }

    else
    {
      v4 = tcpListeningPort;
      if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_100129090();
      }

      v5 = objc_alloc_init(CUBonjourAdvertiser);
      bonjourAdvertiser = self->_bonjourAdvertiser;
      self->_bonjourAdvertiser = v5;

      [(CUBonjourAdvertiser *)self->_bonjourAdvertiser setDispatchQueue:self->_dispatchQueue];
      [(CUBonjourAdvertiser *)self->_bonjourAdvertiser setDomain:@"local."];
      [(CUBonjourAdvertiser *)self->_bonjourAdvertiser setLabel:@"RDLink"];
      [(CUBonjourAdvertiser *)self->_bonjourAdvertiser setPort:v4];
      [(CUBonjourAdvertiser *)self->_bonjourAdvertiser setServiceType:@"_rdlink._tcp"];
      if (!sub_10000329C())
      {
        [(CUBonjourAdvertiser *)self->_bonjourAdvertiser setInterfaceIndex:[(RPRemoteDisplayDaemon *)self _serverDirectLinkInterfaceIndex]];
      }

      [(RPRemoteDisplayDaemon *)self _serverBonjourUpdateTXT];
      v7 = self->_bonjourAdvertiser;

      [(CUBonjourAdvertiser *)v7 activate];
    }
  }

  else if (dword_1001D4BA0 <= 20 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001290C8();
  }
}

- (void)_serverBonjourUpdateTXT
{
  v5 = objc_alloc_init(NSMutableDictionary);
  [(RPRemoteDisplayDaemon *)self _localDeviceUpdate];
  _serverBonjourAuthTagString = [(RPRemoteDisplayDaemon *)self _serverBonjourAuthTagString];
  if (_serverBonjourAuthTagString)
  {
    [v5 setObject:_serverBonjourAuthTagString forKeyedSubscript:@"rpAD"];
  }

  btAdvAddrStr = self->_btAdvAddrStr;
  if (btAdvAddrStr)
  {
    [v5 setObject:btAdvAddrStr forKeyedSubscript:@"rpBA"];
  }

  [v5 setObject:@"715.2" forKeyedSubscript:@"rpVr"];
  [(CUBonjourAdvertiser *)self->_bonjourAdvertiser setTxtDictionary:v5];
}

- (id)_serverBonjourAuthTagString
{
  if (!self->_deviceAuthTagStr)
  {
    v3 = [(RPRemoteDisplayDaemon *)self _serverBonjourAuthTagStringWithData:self->_btAdvAddrData];
    deviceAuthTagStr = self->_deviceAuthTagStr;
    self->_deviceAuthTagStr = v3;

    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100129100(&self->_deviceAuthTagStr);
    }
  }

  v5 = self->_deviceAuthTagStr;

  return v5;
}

- (BOOL)_serverBLEDiscoveryShouldStart
{
  if (GestaltGetDeviceClass() != 1 && GestaltGetDeviceClass() != 3)
  {
    return 0;
  }

  actionV2Devices = [(RPNearbyActionV2Discovery *)self->_bleNearbyActionV2Discovery actionV2Devices];
  v4 = [actionV2Devices count] != 0;

  return v4;
}

- (void)_serverBLEDiscoveryEnsureStopped
{
  if (self->_serverBLEDiscoveryStarted)
  {
    [(RPRemoteDisplayDaemon *)self _bleDiscoveryEnsureStopped];
  }
}

- (BOOL)_serverBLENearbyActionV2DiscoveryShouldRun
{
  v3 = +[RPCloudDaemon sharedCloudDaemon];
  v4 = [v3 idsIsSignedIn] && self->_prefNearbyActionV2 && ((GestaltGetDeviceClass() & 0xFFFFFFFD) == 1 || objc_msgSend(v3, "idsHasMac"));

  return v4;
}

- (void)_serverBLENearbyActionV2DiscoveryEnsureStarted
{
  if (!self->_bleNearbyActionV2Discovery)
  {
    v13[5] = v5;
    v13[6] = v4;
    v13[9] = v2;
    v13[10] = v3;
    v7 = objc_alloc_init(RPNearbyActionV2Discovery);
    bleNearbyActionV2Discovery = self->_bleNearbyActionV2Discovery;
    self->_bleNearbyActionV2Discovery = v7;

    [(RPNearbyActionV2Discovery *)self->_bleNearbyActionV2Discovery setDiscoveryFlags:33554688];
    [(RPNearbyActionV2Discovery *)self->_bleNearbyActionV2Discovery setDispatchQueue:self->_dispatchQueue];
    wombatState = self->_wombatState;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000AE2B0;
    v13[3] = &unk_1001AEDB8;
    v13[4] = self;
    [(RPRemoteDisplayDaemon *)self _bluetoothUseCaseFromWombatState:wombatState resultBlock:v13];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000AE344;
    v12[3] = &unk_1001AA970;
    v12[4] = self;
    [(RPNearbyActionV2Discovery *)self->_bleNearbyActionV2Discovery setUpdateHandler:v12];
    v10 = self->_bleNearbyActionV2Discovery;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000AE384;
    v11[3] = &unk_1001AB2C8;
    v11[4] = self;
    [(RPNearbyActionV2Discovery *)v10 activateWithCompletion:v11];
  }
}

- (void)_serverBLENeedsAWDLScannerEnsureStarted
{
  if (self->_bleNeedsAWDLScanner)
  {
    _serverBLENeedsAWDLScannerScreenOff = [(RPRemoteDisplayDaemon *)self _serverBLENeedsAWDLScannerScreenOff];
    if (_serverBLENeedsAWDLScannerScreenOff != [(SFDeviceDiscovery *)self->_bleNeedsAWDLScanner overrideScreenOff])
    {
      bleNeedsAWDLScanner = self->_bleNeedsAWDLScanner;

      [(SFDeviceDiscovery *)bleNeedsAWDLScanner setOverrideScreenOff:_serverBLENeedsAWDLScannerScreenOff];
    }
  }

  else
  {
    bleNeedsAWDLScannerID = self->_bleNeedsAWDLScannerID;
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100128DB8();
    }

    v6 = objc_alloc_init(off_1001D4C10[0]());
    v7 = self->_bleNeedsAWDLScanner;
    self->_bleNeedsAWDLScanner = v6;

    [(SFDeviceDiscovery *)self->_bleNeedsAWDLScanner setChangeFlags:1];
    [(SFDeviceDiscovery *)self->_bleNeedsAWDLScanner setDiscoveryFlags:131136];
    [(SFDeviceDiscovery *)self->_bleNeedsAWDLScanner setDispatchQueue:self->_dispatchQueue];
    [(SFDeviceDiscovery *)self->_bleNeedsAWDLScanner setOverrideScreenOff:[(RPRemoteDisplayDaemon *)self _serverBLENeedsAWDLScannerScreenOff]];
    [(SFDeviceDiscovery *)self->_bleNeedsAWDLScanner setPurpose:@"RDLink"];
    DeviceClass = GestaltGetDeviceClass();
    v9 = self->_bleNeedsAWDLScanner;
    if (DeviceClass == 4)
    {
      v10 = -75;
    }

    else
    {
      v10 = -60;
    }

    [(SFDeviceDiscovery *)self->_bleNeedsAWDLScanner setRssiThreshold:v10];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000ADD9C;
    v17[3] = &unk_1001AB250;
    v17[4] = self;
    v18 = bleNeedsAWDLScannerID;
    [(SFDeviceDiscovery *)self->_bleNeedsAWDLScanner setDeviceFoundHandler:v17];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000ADDC0;
    v15[3] = &unk_1001AB250;
    v15[4] = self;
    v16 = bleNeedsAWDLScannerID;
    [(SFDeviceDiscovery *)self->_bleNeedsAWDLScanner setDeviceLostHandler:v15];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000F8BC;
    v13[3] = &unk_1001AB278;
    v13[4] = self;
    v14 = bleNeedsAWDLScannerID;
    [(SFDeviceDiscovery *)self->_bleNeedsAWDLScanner setDeviceChangedHandler:v13];
    v11 = self->_bleNeedsAWDLScanner;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000ADDE4;
    v12[3] = &unk_1001AB2C8;
    v12[4] = self;
    [(SFDeviceDiscovery *)v11 activateWithCompletion:v12];
  }
}

- (void)_serverBonjourAWDLAdvertiserEnsureStopped
{
  bonjourAWDLAdvertiser = self->_bonjourAWDLAdvertiser;
  if (bonjourAWDLAdvertiser)
  {
    if (dword_1001D4BA0 <= 30)
    {
      if (dword_1001D4BA0 != -1 || (v4 = _LogCategory_Initialize(), bonjourAWDLAdvertiser = self->_bonjourAWDLAdvertiser, v4))
      {
        v8 = CUDescriptionWithLevel();
        LogPrintF();

        bonjourAWDLAdvertiser = self->_bonjourAWDLAdvertiser;
      }
    }

    [(CUBonjourAdvertiser *)bonjourAWDLAdvertiser invalidate];
    v5 = self->_bonjourAWDLAdvertiser;
    self->_bonjourAWDLAdvertiser = 0;

    if (!self->_bonjourBrowserAWDL)
    {
      v6 = +[RPWiFiP2PTransaction sharedInstance];
      [v6 invalidateForClient:@"Sidecar"];
    }

    deviceAWDLRandomID = self->_deviceAWDLRandomID;
    self->_deviceAWDLRandomID = 0;
  }
}

- (void)_registerForCameraCapabilitiesRequest
{
  if (!self->_cameraCapabilityNotificationRegistered)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100129CA4();
    }

    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:self selector:"_cameraCapabilitiesChanged:" name:AVCaptureDeviceContinuityCaptureCameraCapabilitiesChangedNotification object:0];
    self->_cameraCapabilityNotificationRegistered = 1;
  }

  if (!self->_cameraCapabilities)
  {
    [(RPRemoteDisplayDaemon *)self _updateCameraCapabilities];
  }

  if (!self->_clinkClient)
  {
    v4 = objc_alloc_init(RPCompanionLinkClient);
    clinkClient = self->_clinkClient;
    self->_clinkClient = v4;

    [(RPCompanionLinkClient *)v4 setDispatchQueue:self->_dispatchQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000B34EC;
    v6[3] = &unk_1001AAA40;
    v6[4] = v4;
    v6[5] = self;
    [(RPCompanionLinkClient *)v4 activateWithCompletion:v6];
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100129CC0();
    }
  }
}

- (BOOL)_needToHoldPowerAssertion
{
  if (GestaltGetDeviceClass() == 1 || GestaltGetDeviceClass() == 3)
  {
    actionV2Devices = [(RPNearbyActionV2Discovery *)self->_bleNearbyActionV2Discovery actionV2Devices];
    v4 = [actionV2Devices count];

    if (v4 || [(NSMutableSet *)self->_needsAWDLRequestIdentifiers count])
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      allValues = [(NSMutableDictionary *)self->_tcpServerConnections allValues];
      v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        v7 = 0;
        v8 = *v12;
        do
        {
          for (i = 0; i != v5; i = i + 1)
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(allValues);
            }

            if ([*(*(&v11 + 1) + 8 * i) linkType] == 4)
            {
              ++v7;
            }
          }

          v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v5);
        LOBYTE(v5) = v7 != 0;
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)_powerAssertionEnsureReleased
{
  powerAssertion = self->_powerAssertion;
  if (powerAssertion)
  {
    IOPMAssertionRelease(powerAssertion);
    self->_powerAssertion = 0;
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_10012A020();
    }
  }
}

- (RPRemoteDisplayDaemon)init
{
  v6.receiver = self;
  v6.super_class = RPRemoteDisplayDaemon;
  v2 = [(RPRemoteDisplayDaemon *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    *&v3->_wombatStateReadyToken = 0xFFFFFFFFLL;
    v4 = v3;
  }

  return v3;
}

- (id)descriptionWithLevel:(int)level
{
  if (level < 21)
  {
    v200 = 0;
    v201 = &v200;
    v202 = 0x3032000000;
    v203 = sub_100002A4C;
    v204 = sub_1000031BC;
    v205 = 0;
    obj = 0;
    NSAppendPrintF();
    objc_storeStrong(&v205, 0);
    if (level >= 11)
    {
      v6 = 50;
    }

    else
    {
      v6 = 30;
    }

    v135 = v6;
    v7 = self->_systemMonitor;
    v8 = v7;
    if (v7)
    {
      v9 = (v201 + 5);
      v198 = v201[5];
      firstUnlocked = [(CUSystemMonitor *)v7 firstUnlocked];
      v11 = "no";
      if (firstUnlocked)
      {
        v11 = "yes";
      }

      deviceConfirmedIdentifier = v11;
      NSAppendPrintF();
      objc_storeStrong(v9, v198);
    }

    v12 = self->_bleDiscovery;
    if (v12)
    {
      v13 = (v201 + 5);
      v197 = v201[5];
      deviceConfirmedIdentifier = CUDescriptionWithLevel();
      NSAppendPrintF();
      objc_storeStrong(v13, v197);
    }

    v14 = self->_bleNearbyActionV2Advertiser;
    v15 = v14;
    if (v14)
    {
      v16 = (v201 + 5);
      v196 = v201[5];
      deviceConfirmedIdentifier = v14;
      NSAppendPrintF();
      objc_storeStrong(v16, v196);
    }

    v17 = self->_bleNearbyActionV2AdvertiserAssertions;
    v18 = v17;
    if (v17)
    {
      v19 = (v201 + 5);
      v195 = v201[5];
      deviceConfirmedIdentifier = v17;
      NSAppendPrintF();
      objc_storeStrong(v19, v195);
    }

    v20 = self->_bleNearbyActionV2Discovery;
    v21 = v20;
    if (v20)
    {
      v22 = (v201 + 5);
      v194 = v201[5];
      deviceConfirmedIdentifier = v20;
      NSAppendPrintF();
      objc_storeStrong(v22, v194);
    }

    v23 = self->_bleNeedsAWDLAdvertiser;
    if (v23)
    {
      v24 = (v201 + 5);
      v193 = v201[5];
      deviceConfirmedIdentifier = CUDescriptionWithLevel();
      NSAppendPrintF();
      objc_storeStrong(v24, v193);
    }

    v25 = self->_bleNeedsAWDLAdvertiserAssertions;
    v26 = v25;
    if (v25)
    {
      v27 = (v201 + 5);
      v192 = v201[5];
      deviceConfirmedIdentifier = v25;
      NSAppendPrintF();
      objc_storeStrong(v27, v192);
    }

    v28 = self->_bleNeedsAWDLScanner;
    if (v28)
    {
      v29 = (v201 + 5);
      v191 = v201[5];
      deviceConfirmedIdentifier = CUDescriptionWithLevel();
      NSAppendPrintF();
      objc_storeStrong(v29, v191);
    }

    v30 = self->_bonjourAdvertiser;
    if (v30)
    {
      v31 = (v201 + 5);
      v190 = v201[5];
      deviceConfirmedIdentifier = CUDescriptionWithLevel();
      NSAppendPrintF();
      objc_storeStrong(v31, v190);
    }

    v32 = self->_bonjourAWDLAdvertiser;
    if (v32)
    {
      v33 = (v201 + 5);
      v189 = v201[5];
      deviceConfirmedIdentifier = CUDescriptionWithLevel();
      NSAppendPrintF();
      objc_storeStrong(v33, v189);
    }

    if (self->_bonjourAWDLAdvertiserForce)
    {
      v34 = (v201 + 5);
      v188 = v201[5];
      NSAppendPrintF();
      objc_storeStrong(v34, v188);
    }

    v35 = self->_bonjourBrowser;
    if (v35)
    {
      v36 = (v201 + 5);
      v187 = v201[5];
      deviceConfirmedIdentifier = CUDescriptionWithLevel();
      NSAppendPrintF();
      objc_storeStrong(v36, v187);
    }

    v37 = self->_bonjourBrowserAWDL;
    if (v37)
    {
      v38 = (v201 + 5);
      v186 = v201[5];
      deviceConfirmedIdentifier = CUDescriptionWithLevel();
      NSAppendPrintF();
      objc_storeStrong(v38, v186);
    }

    if (self->_bonjourBrowserAWDLForce)
    {
      v39 = (v201 + 5);
      v185 = v201[5];
      NSAppendPrintF();
      objc_storeStrong(v39, v185);
    }

    v40 = self->_bonjourBrowserAWDLAssertions;
    v41 = v40;
    if (v40)
    {
      v42 = (v201 + 5);
      v184 = v201[5];
      deviceConfirmedIdentifier = v40;
      NSAppendPrintF();
      objc_storeStrong(v42, v184);
    }

    v43 = self->_tcpServer;
    v44 = v43;
    if (v43)
    {
      v45 = (v201 + 5);
      v183 = v201[5];
      v46 = v43;
      if (objc_opt_respondsToSelector())
      {
        detailedDescription = [(CUTCPServer *)v46 detailedDescription];
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          [(CUTCPServer *)v46 descriptionWithLevel:20];
        }

        else
        {
          NSPrintF();
        }
        detailedDescription = ;
      }

      v48 = detailedDescription;

      deviceConfirmedIdentifier = v48;
      NSAppendPrintF();
      objc_storeStrong(v45, v183);
    }

    v49 = self->_deviceConfirmedIdentifier;
    if (v49)
    {
      v50 = (v201 + 5);
      v182 = v201[5];
      deviceConfirmedIdentifier = self->_deviceConfirmedIdentifier;
      NSAppendPrintF();
      objc_storeStrong(v50, v182);
    }

    v51 = self->_deviceSessionPaired;
    if (v51)
    {
      v52 = (v201 + 5);
      v181 = v201[5];
      deviceConfirmedIdentifier = self->_deviceSessionPaired;
      NSAppendPrintF();
      objc_storeStrong(v52, v181);
    }

    dedicatedDevice = [(RPRemoteDisplayDaemon *)self dedicatedDevice];
    v54 = dedicatedDevice;
    if (dedicatedDevice)
    {
      v55 = (v201 + 5);
      v180 = v201[5];
      v56 = dedicatedDevice;
      if (objc_opt_respondsToSelector())
      {
        detailedDescription2 = [v56 detailedDescription];
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          [v56 descriptionWithLevel:20];
        }

        else
        {
          NSPrintF();
        }
        detailedDescription2 = ;
      }

      v58 = detailedDescription2;

      deviceConfirmedIdentifier = v58;
      NSAppendPrintF();
      objc_storeStrong(v55, v180);
    }

    allValues = [(NSMutableDictionary *)self->_activatedServerXPCCnxMap allValues];
    v60 = [allValues count];
    if (v60)
    {
      v61 = (v201 + 5);
      v179 = v201[5];
      deviceConfirmedIdentifier = v60;
      NSAppendPrintF();
      objc_storeStrong(v61, v179);
    }

    v177 = 0u;
    v178 = 0u;
    v175 = 0u;
    v176 = 0u;
    v134 = allValues;
    v62 = [v134 countByEnumeratingWithState:&v175 objects:v209 count:16];
    if (v62)
    {
      v63 = *v176;
      do
      {
        for (i = 0; i != v62; i = i + 1)
        {
          if (*v176 != v63)
          {
            objc_enumerationMutation(v134);
          }

          v65 = *(*(&v175 + 1) + 8 * i);
          v66 = (v201 + 5);
          v174 = v201[5];
          v117 = CUDescriptionWithLevel();
          NSAppendPrintF();
          objc_storeStrong(v66, v174);
        }

        v62 = [v134 countByEnumeratingWithState:&v175 objects:v209 count:{16, v117}];
      }

      while (v62);
    }

    v67 = [(NSMutableSet *)self->_bufferedConnections count];
    if (v67)
    {
      v68 = (v201 + 5);
      v173 = v201[5];
      deviceConfirmedIdentifier = v67;
      NSAppendPrintF();
      objc_storeStrong(v68, v173);
    }

    v171 = 0u;
    v172 = 0u;
    v169 = 0u;
    v170 = 0u;
    v69 = self->_bufferedConnections;
    v118 = [(NSMutableSet *)v69 countByEnumeratingWithState:&v169 objects:v208 count:16];
    if (v118)
    {
      v71 = *v170;
      do
      {
        for (j = 0; j != v118; j = j + 1)
        {
          if (*v170 != v71)
          {
            objc_enumerationMutation(v69);
          }

          v73 = *(*(&v169 + 1) + 8 * j);
          v74 = (v201 + 5);
          v168 = v201[5];
          v118 = CUDescriptionWithLevel();
          NSAppendPrintF();
          objc_storeStrong(v74, v168);
        }

        v118 = [(NSMutableSet *)v69 countByEnumeratingWithState:&v169 objects:v208 count:16, v118];
      }

      while (v118);
    }

    v75 = [(NSMutableDictionary *)self->_tcpServerConnections count];
    if (v75)
    {
      v76 = (v201 + 5);
      v167 = v201[5];
      deviceConfirmedIdentifier = v75;
      NSAppendPrintF();
      objc_storeStrong(v76, v167);
    }

    tcpServerConnections = self->_tcpServerConnections;
    v165[0] = _NSConcreteStackBlock;
    v165[1] = 3221225472;
    v165[2] = sub_1000A6644;
    v165[3] = &unk_1001AEC30;
    v165[4] = &v200;
    v166 = v135;
    [(NSMutableDictionary *)tcpServerConnections enumerateKeysAndObjectsUsingBlock:v165, deviceConfirmedIdentifier];
    v78 = [(NSMutableDictionary *)self->_discoveredDevices count];
    v79 = [(NSMutableDictionary *)self->_unresolvedDevices count];
    if (v78 | v79)
    {
      v80 = (v201 + 5);
      v164 = v201[5];
      v119 = v78;
      v130 = v79;
      NSAppendPrintF();
      objc_storeStrong(v80, v164);
    }

    discoveredDevices = self->_discoveredDevices;
    v162[0] = _NSConcreteStackBlock;
    v162[1] = 3221225472;
    v162[2] = sub_1000A66B0;
    v162[3] = &unk_1001AEC58;
    v162[4] = &v200;
    v163 = v135;
    [(NSMutableDictionary *)discoveredDevices enumerateKeysAndObjectsUsingBlock:v162, v119, v130];
    v82 = [(NSMutableDictionary *)self->_needsAWDLDevices count];
    if (v82)
    {
      v83 = (v201 + 5);
      v161 = v201[5];
      v120 = v82;
      NSAppendPrintF();
      objc_storeStrong(v83, v161);
    }

    v159[0] = 0;
    v159[1] = v159;
    v159[2] = 0x2020000000;
    v160 = 0;
    needsAWDLDevices = self->_needsAWDLDevices;
    v157[0] = _NSConcreteStackBlock;
    v157[1] = 3221225472;
    v157[2] = sub_1000A6738;
    v157[3] = &unk_1001AEC80;
    v158 = v135;
    v157[4] = &v200;
    v157[5] = v159;
    [(NSMutableDictionary *)needsAWDLDevices enumerateKeysAndObjectsUsingBlock:v157, v120];
    if ([(NSMutableSet *)self->_xpcConnections count]|| [(NSMutableDictionary *)self->_xpcMatchingDiscoveryMap count]|| [(NSMutableDictionary *)self->_xpcMatchingServerMap count])
    {
      v85 = (v201 + 5);
      v156 = v201[5];
      v121 = [(NSMutableDictionary *)self->_xpcMatchingDiscoveryMap count];
      NSAppendPrintF();
      objc_storeStrong(v85, v156);
      xpcMatchingDiscoveryMap = self->_xpcMatchingDiscoveryMap;
      v155[0] = _NSConcreteStackBlock;
      v155[1] = 3221225472;
      v155[2] = sub_1000A682C;
      v155[3] = &unk_1001AAF98;
      v155[4] = &v200;
      [(NSMutableDictionary *)xpcMatchingDiscoveryMap enumerateKeysAndObjectsUsingBlock:v155, v121];
      v87 = (v201 + 5);
      v154 = v201[5];
      v122 = [(NSMutableDictionary *)self->_xpcMatchingServerMap count];
      NSAppendPrintF();
      objc_storeStrong(v87, v154);
      xpcMatchingServerMap = self->_xpcMatchingServerMap;
      v153[0] = _NSConcreteStackBlock;
      v153[1] = 3221225472;
      v153[2] = sub_1000A6910;
      v153[3] = &unk_1001AAF98;
      v153[4] = &v200;
      [(NSMutableDictionary *)xpcMatchingServerMap enumerateKeysAndObjectsUsingBlock:v153, v122];
      v89 = (v201 + 5);
      v152 = v201[5];
      v123 = [(NSMutableSet *)self->_xpcConnections count];
      NSAppendPrintF();
      objc_storeStrong(v89, v152);
      v150 = 0u;
      v151 = 0u;
      v148 = 0u;
      v149 = 0u;
      v131 = self->_xpcConnections;
      v123 = [(NSMutableSet *)v131 countByEnumeratingWithState:&v148 objects:v207 count:16, v123];
      if (v123)
      {
        v132 = *v149;
        do
        {
          v133 = v123;
          for (k = 0; k != v133; k = k + 1)
          {
            if (*v149 != v132)
            {
              objc_enumerationMutation(v131);
            }

            v92 = *(*(&v148 + 1) + 8 * k);
            v93 = (v201 + 5);
            v147 = v201[5];
            xpcCnx = [v92 xpcCnx];
            processIdentifier = [xpcCnx processIdentifier];
            NSAppendPrintF();
            objc_storeStrong(v93, v147);

            activatedDiscovery = [v92 activatedDiscovery];

            if (activatedDiscovery)
            {
              v96 = (v201 + 5);
              v146 = v201[5];
              activatedDiscovery2 = [v92 activatedDiscovery];
              v125 = CUDescriptionWithLevel();
              NSAppendPrintF();
              objc_storeStrong(v96, v146);
            }

            activatedServer = [v92 activatedServer];

            if (activatedServer)
            {
              v99 = (v201 + 5);
              v145 = v201[5];
              activatedServer2 = [v92 activatedServer];
              v126 = CUDescriptionWithLevel();
              NSAppendPrintF();
              objc_storeStrong(v99, v145);
            }

            activatedSession = [v92 activatedSession];

            if (activatedSession)
            {
              v102 = (v201 + 5);
              v144 = v201[5];
              activatedSession2 = [v92 activatedSession];
              v127 = CUDescriptionWithLevel();
              NSAppendPrintF();
              objc_storeStrong(v102, v144);
            }

            activeNetCnx = [v92 activeNetCnx];
            clientNetCnx = [v92 clientNetCnx];
            if (activeNetCnx)
            {
              v106 = (v201 + 5);
              v143 = v201[5];
              v128 = CUDescriptionWithLevel();
              NSAppendPrintF();
              objc_storeStrong(v106, v143);
            }

            if (clientNetCnx && clientNetCnx != activeNetCnx)
            {
              v107 = (v201 + 5);
              v142 = v201[5];
              v128 = CUDescriptionWithLevel();
              NSAppendPrintF();
              objc_storeStrong(v107, v142);
            }

            v140 = 0u;
            v141 = 0u;
            v138 = 0u;
            v139 = 0u;
            serverNetCnxs = [v92 serverNetCnxs];
            v109 = [serverNetCnxs countByEnumeratingWithState:&v138 objects:v206 count:16];
            if (v109)
            {
              v110 = *v139;
              do
              {
                for (m = 0; m != v109; m = m + 1)
                {
                  if (*v139 != v110)
                  {
                    objc_enumerationMutation(serverNetCnxs);
                  }

                  v112 = *(*(&v138 + 1) + 8 * m);
                  v113 = (v201 + 5);
                  v137 = v201[5];
                  v129 = CUDescriptionWithLevel();
                  NSAppendPrintF();
                  objc_storeStrong(v113, v137);
                }

                v109 = [serverNetCnxs countByEnumeratingWithState:&v138 objects:v206 count:{16, v129}];
              }

              while (v109);
            }

            v114 = (v201 + 5);
            v136 = v201[5];
            NSAppendPrintF();
            objc_storeStrong(v114, v136);
          }

          v123 = [(NSMutableSet *)v131 countByEnumeratingWithState:&v148 objects:v207 count:16];
        }

        while (v123);
      }
    }

    v4 = v201[5];
    _Block_object_dispose(v159, 8);

    _Block_object_dispose(&v200, 8);
  }

  else
  {
    v4 = NSPrintF();
  }

  return v4;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A6A68;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001275FC();
  }

  RandomBytes();
  if (!self->_systemMonitor)
  {
    v3 = objc_alloc_init(CUSystemMonitor);
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = v3;

    [(CUSystemMonitor *)self->_systemMonitor setDispatchQueue:self->_dispatchQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000A6C7C;
    v10[3] = &unk_1001AA970;
    v10[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setFirstUnlockHandler:v10];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000A6C84;
    v9[3] = &unk_1001AA970;
    v9[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setNetFlagsChangedHandler:v9];
    v5 = self->_systemMonitor;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000A6C8C;
    v8[3] = &unk_1001AA970;
    v8[4] = self;
    [(CUSystemMonitor *)v5 activateWithCompletion:v8];
  }

  if (!self->_xpcListener)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100127618();
    }

    v6 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.RemoteDisplay"];
    xpcListener = self->_xpcListener;
    self->_xpcListener = v6;

    [(NSXPCListener *)self->_xpcListener setDelegate:self];
    [(NSXPCListener *)self->_xpcListener _setQueue:self->_dispatchQueue];
    [(NSXPCListener *)self->_xpcListener resume];
  }

  [(RPRemoteDisplayDaemon *)self _registerForWombatStateNotifications];
  [(RPRemoteDisplayDaemon *)self prefsChanged];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A6D08;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100127660();
    }

    [(NSXPCListener *)self->_xpcListener invalidate];
    xpcListener = self->_xpcListener;
    self->_xpcListener = 0;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v4 = self->_xpcConnections;
    v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v26;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v26 != v7)
          {
            objc_enumerationMutation(v4);
          }

          xpcCnx = [*(*(&v25 + 1) + 8 * i) xpcCnx];
          [xpcCnx invalidate];
        }

        v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v6);
    }

    [(NSMutableDictionary *)self->_xpcMatchingDiscoveryMap removeAllObjects];
    [(NSMutableDictionary *)self->_xpcMatchingServerMap removeAllObjects];
    [(RPRemoteDisplayDaemon *)self _clientEnsureStopped];
    [(RPRemoteDisplayDaemon *)self _serverEnsureStopped];
    [(NSMutableSet *)self->_needsAWDLNewPeers removeAllObjects];
    needsAWDLNewPeers = self->_needsAWDLNewPeers;
    self->_needsAWDLNewPeers = 0;

    [(NSMutableSet *)self->_needsAWDLSentToPeers removeAllObjects];
    needsAWDLSentToPeers = self->_needsAWDLSentToPeers;
    self->_needsAWDLSentToPeers = 0;

    [(NSMutableSet *)self->_needsAWDLRequestIdentifiers removeAllObjects];
    needsAWDLRequestIdentifiers = self->_needsAWDLRequestIdentifiers;
    self->_needsAWDLRequestIdentifiers = 0;

    needsAWDLRequestTimer = self->_needsAWDLRequestTimer;
    if (needsAWDLRequestTimer)
    {
      v14 = needsAWDLRequestTimer;
      dispatch_source_cancel(v14);
      v15 = self->_needsAWDLRequestTimer;
      self->_needsAWDLRequestTimer = 0;
    }

    [(RPRemoteDisplayDaemon *)self _unregisterWombatStateNotifications];
    [(RPRemoteDisplayDaemon *)self _btAddressMonitorEnsureStopped];
    [(CUSystemMonitor *)self->_systemMonitor invalidate];
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = 0;

    personSelected = self->_personSelected;
    self->_personSelected = 0;

    self->_selectedPersonPairingType = 0;
    discoverySessionExpirationTimer = self->_discoverySessionExpirationTimer;
    if (discoverySessionExpirationTimer)
    {
      v19 = discoverySessionExpirationTimer;
      dispatch_source_cancel(v19);
      v20 = self->_discoverySessionExpirationTimer;
      self->_discoverySessionExpirationTimer = 0;
    }

    inSessionDeviceLost = self->_inSessionDeviceLost;
    if (inSessionDeviceLost)
    {
      v22 = inSessionDeviceLost;
      dispatch_source_cancel(v22);
      v23 = self->_inSessionDeviceLost;
      self->_inSessionDeviceLost = 0;
    }

    [(RPRemoteDisplayDaemon *)self _clearConfirmationClientCache];
    [(RPRemoteDisplayDaemon *)self setDeviceConfirmedIdentifier:0];
    if (GestaltGetDeviceClass() == 1)
    {
      [(RPRemoteDisplayDaemon *)self _stopObservingOnenessEnabledState];
      authenticationManager = self->_authenticationManager;
      self->_authenticationManager = 0;
    }

    [(RPRemoteDisplayDaemon *)self _invalidated];
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled && !self->_invalidateDone && ![(NSMutableDictionary *)self->_tcpServerConnections count]&& !self->_tcpServer && ![(NSMutableSet *)self->_xpcConnections count]&& !self->_xpcListener)
  {
    self->_invalidateDone = 1;
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_10012767C();
    }
  }
}

- (void)daemonInfoChanged:(unint64_t)changed
{
  changedCopy = changed;
  if ((changed & 0x10) != 0)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100127698();
    }

    [(RPRemoteDisplayDaemon *)self _clientEnsureStopped];
    [(RPRemoteDisplayDaemon *)self _serverEnsureStopped];
    [(RPRemoteDisplayDaemon *)self _update];
    if ((changedCopy & 0x40) == 0)
    {
LABEL_3:
      if ((changedCopy & 4) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_10;
    }
  }

  else if ((changed & 0x40) == 0)
  {
    goto LABEL_3;
  }

  [(RPRemoteDisplayDaemon *)self _update];
  if ((changedCopy & 4) == 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if (self->_deviceAuthTagStr)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001276B4();
    }

    deviceAuthTagStr = self->_deviceAuthTagStr;
    self->_deviceAuthTagStr = 0;
  }

  if (self->_deviceAWDLRandomID)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001276D0();
    }

    deviceAWDLRandomID = self->_deviceAWDLRandomID;
    self->_deviceAWDLRandomID = 0;
  }

  [(RPRemoteDisplayDaemon *)self _update];
LABEL_21:
  if ((changedCopy & 9) != 0)
  {
    [(RPRemoteDisplayDaemon *)self _clientBonjourReevaluateDevices];
    [(RPRemoteDisplayDaemon *)self _update];
  }

  if ((changedCopy & 0x20) != 0)
  {
    v7 = +[RPDaemon sharedDaemon];
    errorFlags = [v7 errorFlags];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = self->_xpcConnections;
    v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v14 + 1) + 8 * i) updateErrorFlags:{errorFlags, v14}];
        }

        v11 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (BOOL)diagnosticCommand:(id)command params:(id)params
{
  commandCopy = command;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([commandCopy rangeOfString:@"rdAWDLa" options:9] != 0x7FFFFFFFFFFFFFFFLL)
  {
    bonjourAWDLAdvertiserForce = self->_bonjourAWDLAdvertiserForce;
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001276EC();
    }

    self->_bonjourAWDLAdvertiserForce = !bonjourAWDLAdvertiserForce;
    goto LABEL_13;
  }

  if ([commandCopy rangeOfString:@"rdAWDLb" options:9] != 0x7FFFFFFFFFFFFFFFLL)
  {
    bonjourBrowserAWDLForce = self->_bonjourBrowserAWDLForce;
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100127744();
    }

    self->_bonjourBrowserAWDLForce = !bonjourBrowserAWDLForce;
LABEL_13:
    [(RPRemoteDisplayDaemon *)self _update];
LABEL_14:
    v6 = 1;
    goto LABEL_15;
  }

  if (![commandCopy caseInsensitiveCompare:@"rdEval"])
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_10012779C();
    }

    [(RPRemoteDisplayDaemon *)self _clientBonjourReevaluateDevices];
    goto LABEL_14;
  }

  v6 = 0;
LABEL_15:

  return v6;
}

- (void)prefsChanged
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  GestaltGetDeviceClass();
  v3 = CFPrefs_GetInt64() != 0;
  if (self->_prefBLEClient != v3)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001277B8();
    }

    self->_prefBLEClient = v3;
  }

  v4 = CFPrefs_GetInt64() != 0;
  if (self->_prefBLEServer != v4)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100127810();
    }

    self->_prefBLEServer = v4;
  }

  v5 = CFPrefs_GetInt64() != 0;
  if (self->_prefClientEnabled != v5)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100127868();
    }

    self->_prefClientEnabled = v5;
  }

  v6 = CFPrefs_GetInt64() != 0;
  if (self->_prefIgnoreRemoteDisplayChecks != v6)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001278C0();
    }

    self->_prefIgnoreRemoteDisplayChecks = v6;
  }

  v7 = CFPrefs_GetInt64() != 0;
  if (self->_prefNearbyActionV2 != v7)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100127918();
    }

    self->_prefNearbyActionV2 = v7;
  }

  v8 = CFPrefs_GetInt64() != 0;
  if (self->_prefNoInfra != v8)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100127970();
    }

    self->_prefNoInfra = v8;
  }

  v9 = CFPrefs_GetInt64() != 0;
  if (self->_prefNoUSB != v9)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001279C8();
    }

    self->_prefNoUSB = v9;
  }

  v10 = CFPrefs_GetInt64() != 0;
  if (self->_prefAllowPairingServer != v10)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100127A20();
    }

    self->_prefAllowPairingServer = v10;
  }

  v11 = CFPrefs_GetInt64() != 0;
  if (self->_prefServerEnabled != v11)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100127A78();
    }

    self->_prefServerEnabled = v11;
  }

  v12 = CFPrefs_GetInt64() != 0;
  if (self->_prefServerBonjourInfra != v12)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100127AD0();
    }

    self->_prefServerBonjourInfra = v12;
  }

  Int64 = CFPrefs_GetInt64();
  if ((Int64 - 1001) >= 0xFFFFFFFFFFFFFC18)
  {
    v14 = Int64;
  }

  else
  {
    v14 = 60;
  }

  prefCameraCapabilitiesRetrySeconds = self->_prefCameraCapabilitiesRetrySeconds;
  if (v14 != prefCameraCapabilitiesRetrySeconds)
  {
    if (dword_1001D4BA0 <= 30)
    {
      if (dword_1001D4BA0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_59;
        }

        prefCameraCapabilitiesRetrySeconds = self->_prefCameraCapabilitiesRetrySeconds;
      }

      v22 = prefCameraCapabilitiesRetrySeconds;
      v23 = v14;
      LogPrintF();
    }

LABEL_59:
    self->_prefCameraCapabilitiesRetrySeconds = v14;
  }

  v16 = CFPrefs_GetInt64();
  if ((v16 - 28801) >= 0xFFFFFFFFFFFF8F80)
  {
    v17 = v16;
  }

  else
  {
    v17 = 28800;
  }

  prefDiscoverySessionExpirationSeconds = self->_prefDiscoverySessionExpirationSeconds;
  if (v17 != prefDiscoverySessionExpirationSeconds)
  {
    if (dword_1001D4BA0 <= 30)
    {
      if (dword_1001D4BA0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_68;
        }

        prefDiscoverySessionExpirationSeconds = self->_prefDiscoverySessionExpirationSeconds;
      }

      v22 = prefDiscoverySessionExpirationSeconds;
      v23 = v17;
      LogPrintF();
    }

LABEL_68:
    self->_prefDiscoverySessionExpirationSeconds = v17;
  }

  v19 = CFPrefs_GetInt64();
  if ((v19 - 91) >= 0xFFFFFFFFFFFFFFA6)
  {
    v20 = v19;
  }

  else
  {
    v20 = 90;
  }

  prefInSessionDeviceLostSeconds = self->_prefInSessionDeviceLostSeconds;
  if (v20 != prefInSessionDeviceLostSeconds)
  {
    if (dword_1001D4BA0 <= 30)
    {
      if (dword_1001D4BA0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_77;
        }

        prefInSessionDeviceLostSeconds = self->_prefInSessionDeviceLostSeconds;
      }

      v22 = prefInSessionDeviceLostSeconds;
      v23 = v20;
      LogPrintF();
    }

LABEL_77:
    self->_prefInSessionDeviceLostSeconds = v20;
  }

  [(RPRemoteDisplayDaemon *)self _update:v22];
}

- (BOOL)addXPCMatchingToken:(unint64_t)token event:(id)event handler:(id)handler
{
  eventCopy = event;
  handlerCopy = handler;
  CFStringGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = @"_rdlink._tcp";
  }

  CFDictionaryGetTypeID();
  v11 = CFDictionaryGetTypedValue();
  v12 = 0;
  v13 = 0;
  v14 = 0;
  if (!v11)
  {
LABEL_8:
    CFStringGetTypeID();
    v16 = CFDictionaryGetTypedValue();
    if ([v16 isEqual:@"discovery"])
    {
      v34 = v11;
      v35 = v10;
      v17 = objc_alloc_init(RPXPCMatchingEntry);
      [(RPXPCMatchingEntry *)v17 setEvent:eventCopy];
      v36 = handlerCopy;
      [(RPXPCMatchingEntry *)v17 setHandler:handlerCopy];
      [(RPXPCMatchingEntry *)v17 setToken:token];
      [(RPXPCMatchingEntry *)v17 setAngelJobLabel:v14];
      [(RPXPCMatchingEntry *)v17 setAngelAssertionName:v13];
      xpcMatchingDiscoveryMap = self->_xpcMatchingDiscoveryMap;
      if (!xpcMatchingDiscoveryMap)
      {
        v19 = objc_alloc_init(NSMutableDictionary);
        v20 = self->_xpcMatchingDiscoveryMap;
        self->_xpcMatchingDiscoveryMap = v19;

        xpcMatchingDiscoveryMap = self->_xpcMatchingDiscoveryMap;
      }

      v21 = [NSNumber numberWithUnsignedLongLong:token, v29, v31];
      [(NSMutableDictionary *)xpcMatchingDiscoveryMap setObject:v17 forKeyedSubscript:v21];

      if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        v22 = &stru_1001B1A70;
        if (v12)
        {
          v22 = v12;
        }

        v32 = v22;
        v33 = eventCopy;
        tokenCopy = token;
        LogPrintF();
      }

      [(RPRemoteDisplayDaemon *)self _updateXPCMatchingDiscovery:tokenCopy];
      handlerCopy = v36;
    }

    else
    {
      if (([v16 isEqual:@"server"] & 1) == 0 && !objc_msgSend(v16, "isEqual:", @"rdserver"))
      {
        v27 = 0;
LABEL_32:

        goto LABEL_37;
      }

      v34 = v11;
      v17 = objc_alloc_init(RPXPCMatchingEntry);
      [(RPXPCMatchingEntry *)v17 setEvent:eventCopy];
      v37 = handlerCopy;
      [(RPXPCMatchingEntry *)v17 setHandler:handlerCopy];
      [(RPXPCMatchingEntry *)v17 setToken:token];
      v35 = v10;
      [(RPXPCMatchingEntry *)v17 setServiceType:v10];
      [(RPXPCMatchingEntry *)v17 setAngelJobLabel:v14];
      [(RPXPCMatchingEntry *)v17 setAngelAssertionName:v13];
      xpcMatchingServerMap = self->_xpcMatchingServerMap;
      if (!xpcMatchingServerMap)
      {
        v24 = objc_alloc_init(NSMutableDictionary);
        v25 = self->_xpcMatchingServerMap;
        self->_xpcMatchingServerMap = v24;

        xpcMatchingServerMap = self->_xpcMatchingServerMap;
      }

      v26 = [NSNumber numberWithUnsignedLongLong:token, v29, v31];
      [(NSMutableDictionary *)xpcMatchingServerMap setObject:v17 forKeyedSubscript:v26];

      if (dword_1001D4BA0 > 30)
      {
        v10 = v35;
        handlerCopy = v37;
LABEL_31:
        v11 = v34;

        [(RPRemoteDisplayDaemon *)self _update];
        v27 = 1;
        goto LABEL_32;
      }

      handlerCopy = v37;
      if (dword_1001D4BA0 != -1 || _LogCategory_Initialize())
      {
        LogPrintF();
      }
    }

    v10 = v35;
    goto LABEL_31;
  }

  CFStringGetTypeID();
  v14 = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  v15 = CFDictionaryGetTypedValue();
  v13 = v15;
  if (v14 && v15)
  {
    v29 = v14;
    v31 = v15;
    NSAppendPrintF();
    v12 = 0;
    goto LABEL_8;
  }

  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v27 = 0;
LABEL_37:

  return v27;
}

- (BOOL)removeXPCMatchingToken:(unint64_t)token
{
  v4 = [NSNumber numberWithUnsignedLongLong:?];
  v5 = [(NSMutableDictionary *)self->_xpcMatchingDiscoveryMap objectForKeyedSubscript:v4];

  if (v5)
  {
    [(NSMutableDictionary *)self->_xpcMatchingDiscoveryMap setObject:0 forKeyedSubscript:v4];
    if (dword_1001D4BA0 > 30 || dword_1001D4BA0 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v6 = [(NSMutableDictionary *)self->_xpcMatchingServerMap objectForKeyedSubscript:v4];

  if (!v6)
  {
    v7 = 0;
    goto LABEL_11;
  }

  [(NSMutableDictionary *)self->_xpcMatchingServerMap setObject:0 forKeyedSubscript:v4];
  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
LABEL_13:
    sub_100127B28();
  }

LABEL_10:
  [(RPRemoteDisplayDaemon *)self _update];
  v7 = 1;
LABEL_11:

  return v7;
}

- (void)_updateXPCMatchingDiscovery
{
  v3 = [(NSMutableDictionary *)self->_discoveredDevices count]== 0;
  xpcMatchingDiscoveryMap = self->_xpcMatchingDiscoveryMap;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A8148;
  v6[3] = &unk_1001AB050;
  v5 = !v3;
  v7 = v5;
  v6[4] = self;
  [(NSMutableDictionary *)xpcMatchingDiscoveryMap enumerateKeysAndObjectsUsingBlock:v6];
}

- (void)_bluetoothUseCaseFromWombatState:(unsigned int)state resultBlock:(id)block
{
  v6 = 131078;
  blockCopy = block;
  v11 = blockCopy;
  if (state == 2)
  {
    v8 = 40;
    v9 = 40;
  }

  else if (state == 3)
  {
    v6 = 131080;
    v8 = 30;
    v9 = 30;
  }

  else
  {
    v10 = ![(RPRemoteDisplayDaemon *)self _onenessEnabled];
    blockCopy = v11;
    if (v10)
    {
      v6 = 0x20000;
    }

    else
    {
      v6 = 131101;
    }

    v9 = 20;
    v8 = 30;
  }

  (*(blockCopy + 2))(blockCopy, v6, v8, v9);
}

- (void)_connectionConfigureCommon:(id)common
{
  commonCopy = common;
  [(NSMutableDictionary *)self->_activatedServerXPCCnxMap allValues];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v23 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        activatedServer = [*(*(&v20 + 1) + 8 * i) activatedServer];
        passwordType = [activatedServer passwordType];
        if (passwordType > 4 || ((1 << passwordType) & 0x19) == 0)
        {
          password = [activatedServer password];
          [commonCopy setPassword:password];

          [commonCopy setPasswordType:{objc_msgSend(activatedServer, "passwordType")}];
          internalAuthFlags = [activatedServer internalAuthFlags];
          if (internalAuthFlags)
          {
            v19[0] = _NSConcreteStackBlock;
            v19[1] = 3221225472;
            v19[2] = sub_1000A86DC;
            v19[3] = &unk_1001AB7E8;
            v19[4] = activatedServer;
            [commonCopy setShowPasswordHandler:v19];
          }

          if ((internalAuthFlags & 2) != 0)
          {
            v18[0] = _NSConcreteStackBlock;
            v18[1] = 3221225472;
            v18[2] = sub_1000A8754;
            v18[3] = &unk_1001AB810;
            v18[4] = activatedServer;
            [commonCopy setHidePasswordHandler:v18];
          }

          goto LABEL_18;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000A87B4;
  v16[3] = &unk_1001AAA40;
  v16[4] = self;
  v17 = commonCopy;
  v15 = commonCopy;
  [v15 setAuthCompletionHandler:v16];
}

- (void)_updateForXPCClientChange
{
  if (GestaltGetDeviceClass() == 4)
  {
    v3 = -75;
  }

  else
  {
    v3 = -60;
  }

  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_activatedDiscoverySet;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        rssiThreshold = [v10 rssiThreshold];
        if (rssiThreshold >= v3)
        {
          v12 = v3;
        }

        else
        {
          v12 = rssiThreshold;
        }

        if (rssiThreshold)
        {
          v3 = v12;
        }

        if ([v10 triggerEnhancedDiscovery])
        {
          [v10 setTriggerEnhancedDiscovery:0];
          v7 = 1;
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);

    self->_bleRSSIThreshold = v3;
    if (v7)
    {
      [(RPRemoteDisplayDaemon *)self _bleDiscoveryTriggerEnhancedDiscovery:@"RemoteDisplayDiscovery" useCase:131076];
    }
  }

  else
  {

    self->_bleRSSIThreshold = v3;
  }

  [(RPRemoteDisplayDaemon *)self _update];
}

- (void)_clientEnsureStopped
{
  [(RPRemoteDisplayDaemon *)self _clientLostAllDevices];
  [(RPRemoteDisplayDaemon *)self _clientBLEDiscoveryEnsureStopped];
  [(RPRemoteDisplayDaemon *)self _clientBLENeedsAWDLAdvertiserEnsureStopped];
  [(RPRemoteDisplayDaemon *)self _clientBonjourAWDLBrowserEnsureStopped];
  [(RPRemoteDisplayDaemon *)self _clientBonjourEnsureStopped];
  clientIncomingMessageCLinkClient = self->_clientIncomingMessageCLinkClient;
  if (clientIncomingMessageCLinkClient)
  {
    [(RPCompanionLinkClient *)clientIncomingMessageCLinkClient invalidate];
    v4 = self->_clientIncomingMessageCLinkClient;
    self->_clientIncomingMessageCLinkClient = 0;
  }
}

- (void)_bleDiscoveryEnsureStarted:(BOOL)started
{
  startedCopy = started;
  p_bleDiscovery = &self->_bleDiscovery;
  bleDiscovery = self->_bleDiscovery;
  if (!bleDiscovery)
  {
    bleDiscoveryID = self->_bleDiscoveryID;
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100127C60();
    }

    v12 = objc_alloc_init(off_1001D4C10[0]());
    v13 = self->_bleDiscovery;
    self->_bleDiscovery = v12;

    [(SFDeviceDiscovery *)self->_bleDiscovery setChangeFlags:1];
    [(SFDeviceDiscovery *)self->_bleDiscovery setDiscoveryFlags:1];
    if ([(RPRemoteDisplayDaemon *)self _discoveriCloudDevicesOnly])
    {
      [(SFDeviceDiscovery *)*p_bleDiscovery setDiscoveryFlags:[(SFDeviceDiscovery *)*p_bleDiscovery discoveryFlags]| 0x20];
    }

    [(SFDeviceDiscovery *)self->_bleDiscovery setDispatchQueue:self->_dispatchQueue];
    [(SFDeviceDiscovery *)self->_bleDiscovery setPurpose:@"RDLink"];
    [(SFDeviceDiscovery *)self->_bleDiscovery setRssiChangeDetection:1];
    if (GestaltGetDeviceClass() == 4)
    {
      bleRSSIThreshold = -75;
    }

    else if (self->_bleRSSIThreshold)
    {
      bleRSSIThreshold = self->_bleRSSIThreshold;
    }

    else
    {
      bleRSSIThreshold = -60;
    }

    [(SFDeviceDiscovery *)self->_bleDiscovery setRssiThreshold:bleRSSIThreshold];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000A8DF8;
    v23[3] = &unk_1001AB250;
    v23[4] = self;
    v24 = bleDiscoveryID;
    [(SFDeviceDiscovery *)self->_bleDiscovery setDeviceFoundHandler:v23];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000A8E1C;
    v21[3] = &unk_1001AB250;
    v21[4] = self;
    v22 = bleDiscoveryID;
    [(SFDeviceDiscovery *)self->_bleDiscovery setDeviceLostHandler:v21];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000A8E40;
    v19[3] = &unk_1001AB278;
    v19[4] = self;
    v20 = bleDiscoveryID;
    [(SFDeviceDiscovery *)self->_bleDiscovery setDeviceChangedHandler:v19];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000A8E64;
    v17[3] = &unk_1001AB2A0;
    v17[4] = self;
    v18 = bleDiscoveryID;
    [(SFDeviceDiscovery *)self->_bleDiscovery setInterruptionHandler:v17];
    if (startedCopy)
    {
      goto LABEL_25;
    }

LABEL_7:
    if (bleDiscovery)
    {
      return;
    }

LABEL_29:
    v15 = self->_bleDiscovery;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000A8EFC;
    v16[3] = &unk_1001AB2C8;
    v16[4] = self;
    [(SFDeviceDiscovery *)v15 activateWithCompletion:v16];
    return;
  }

  _discoveriCloudDevicesOnly = [(RPRemoteDisplayDaemon *)self _discoveriCloudDevicesOnly];
  v8 = self->_bleDiscovery;
  discoveryFlags = [(SFDeviceDiscovery *)v8 discoveryFlags];
  if (_discoveriCloudDevicesOnly)
  {
    v10 = discoveryFlags | 0x20;
  }

  else
  {
    v10 = discoveryFlags & 0xFFFFFFDF;
  }

  [(SFDeviceDiscovery *)v8 setDiscoveryFlags:v10];
  if ([(SFDeviceDiscovery *)self->_bleDiscovery rssiThreshold]!= self->_bleRSSIThreshold)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100127C0C(p_bleDiscovery);
    }

    [(SFDeviceDiscovery *)*p_bleDiscovery setRssiThreshold:self->_bleRSSIThreshold];
    if (startedCopy)
    {
      goto LABEL_25;
    }

    goto LABEL_7;
  }

  if (!startedCopy)
  {
    goto LABEL_7;
  }

LABEL_25:
  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_100127CA0();
  }

  [(SFDeviceDiscovery *)*p_bleDiscovery setOverrideScreenOff:1];
  if (!bleDiscovery)
  {
    goto LABEL_29;
  }
}

- (void)_bleDiscoveryEnsureStopped
{
  if (self->_bleDiscovery)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100127D44(self);
    }

    [(SFDeviceDiscovery *)self->_bleDiscovery invalidate];
    bleDiscovery = self->_bleDiscovery;
    self->_bleDiscovery = 0;

    ++self->_bleDiscoveryID;
  }
}

- (BOOL)_discoveriCloudDevicesOnly
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_activatedDiscoverySet;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        discoveryFlags = [*(*(&v11 + 1) + 8 * i) discoveryFlags];
        if (discoveryFlags)
        {
          v5 |= discoveryFlags;
        }
      }

      v4 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
    v9 = v5 == 0;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)_clientBLEDiscoveryDeviceFound:(id)found
{
  foundCopy = found;
  model = [foundCopy model];
  v6 = model;
  if (model)
  {
    if (([model hasPrefix:@"iPhone"] & 1) != 0 || (objc_msgSend(v6, "hasPrefix:", @"iPad") & 1) != 0 || (objc_msgSend(v6, "hasPrefix:", @"iPod") & 1) != 0 || (objc_msgSend(v6, "hasPrefix:", @"RealityDevice") & 1) != 0 || self->_prefIgnoreRemoteDisplayChecks)
    {
      idsIdentifier = [foundCopy idsIdentifier];
      if (idsIdentifier)
      {
        v8 = idsIdentifier;
        v9 = +[RPCloudDaemon sharedCloudDaemon];
        idsDeviceMap = [v9 idsDeviceMap];
        v11 = [idsDeviceMap objectForKeyedSubscript:v8];

        if (([foundCopy deviceFlags] & 8) != 0 && !v11)
        {
          if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
          {
            sub_100127DC8();
          }

          goto LABEL_103;
        }

        v12 = GestaltProductTypeStringToDeviceClass();
        v68 = 0;
        v69 = 0;
        v70 = 0;
        if (v11)
        {
          v13 = v12;
          [v11 operatingSystemVersion];
          if (v13)
          {
            if ((wInTP56r94EFs9NAAi() & 1) == 0 && !self->_prefIgnoreRemoteDisplayChecks)
            {
              if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              goto LABEL_103;
            }
          }
        }

        if (GestaltGetDeviceClass() == 4 && ![(RPRemoteDisplayDaemon *)self _deviceSupportsLaguna:foundCopy])
        {
          if (dword_1001D4BA0 <= 20 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
          {
            sub_100127E08();
          }

          goto LABEL_103;
        }

        if (([foundCopy deviceFlags] & 0xC008) != 0)
        {
          if (([foundCopy deviceFlags] & 0x400) != 0 && (objc_msgSend(foundCopy, "deviceFlags") & 0x8000) != 0)
          {
            rapportIdentifier = [foundCopy rapportIdentifier];

            if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
            {
              sub_100127E48();
            }

            v8 = rapportIdentifier;
          }

          v15 = [(RPRemoteDisplayDaemon *)self _findMatchingDeviceWithIdentifier:v8];
          if (!v15)
          {
            if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
            {
              sub_100127EE0();
            }

            v30 = sub_1000AA650();
            v31 = sub_1000AA650();
            v32 = os_signpost_id_make_with_pointer(v31, self);

            if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
            {
              v33 = CUDescriptionWithLevel();
              *buf = 138412290;
              v73 = v33;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_EVENT, v32, "BLE device found", "BLE device found: %@\n", buf, 0xCu);
            }

            v34 = objc_alloc_init(RPRemoteDisplayDevice);
            [v34 setIdentifier:v8];
            [v34 setIdsDevice:v11];
            [v34 setPersistentIdentifier:v8];
            idsIdentifier2 = [foundCopy idsIdentifier];
            [v34 setVerifiedIdentity:idsIdentifier2];

            [v34 updateWithSFDevice:foundCopy];
            [v34 setIdsDeviceIdentifier:v8];
            if (self->_prefIgnoreRemoteDisplayChecks)
            {
              v36 = RPVersionToSourceVersionString();
              [v34 setSourceVersion:v36];
            }

            v59 = v11;
            discoveredDevices = self->_discoveredDevices;
            if (!discoveredDevices)
            {
              v38 = objc_alloc_init(NSMutableDictionary);
              v39 = self->_discoveredDevices;
              self->_discoveredDevices = v38;

              discoveredDevices = self->_discoveredDevices;
            }

            v57 = v8;
            [(NSMutableDictionary *)discoveredDevices setObject:v34 forKeyedSubscript:v8];
            [(RPRemoteDisplayDaemon *)self _requestCameraCapabilitiesForDevice:v34];
            [(RPRemoteDisplayDaemon *)self _updateXPCMatchingDiscovery];
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v40 = self->_xpcConnections;
            v41 = [(NSMutableSet *)v40 countByEnumeratingWithState:&v60 objects:v71 count:16];
            if (v41)
            {
              v42 = v41;
              v43 = *v61;
              do
              {
                for (i = 0; i != v42; i = i + 1)
                {
                  if (*v61 != v43)
                  {
                    objc_enumerationMutation(v40);
                  }

                  v45 = *(*(&v60 + 1) + 8 * i);
                  activatedDiscovery = [v45 activatedDiscovery];
                  v47 = [activatedDiscovery shouldReportDevice:v34];

                  if (v47)
                  {
                    xpcCnx = [v45 xpcCnx];
                    remoteObjectProxy = [xpcCnx remoteObjectProxy];
                    [remoteObjectProxy remoteDisplayFoundDevice:v34];
                  }
                }

                v42 = [(NSMutableSet *)v40 countByEnumeratingWithState:&v60 objects:v71 count:16];
              }

              while (v42);
            }

            v8 = v57;
            v11 = v59;
            goto LABEL_103;
          }

          v16 = v15;
          v55 = v6;
          if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
          {
            sub_100127E88();
          }

          statusFlags = [v16 statusFlags];
          v18 = [v16 updateWithSFDevice:foundCopy];
          [v16 setIdsDeviceIdentifier:v8];
          [(RPRemoteDisplayDaemon *)self _requestCameraCapabilitiesForDevice:v16];
          if (!v18)
          {

LABEL_103:
            goto LABEL_104;
          }

          v53 = statusFlags;
          selfCopy = self;
          v56 = v8;
          v58 = v11;
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v19 = self->_xpcConnections;
          v20 = [(NSMutableSet *)v19 countByEnumeratingWithState:&v64 objects:v74 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v65;
            do
            {
              for (j = 0; j != v21; j = j + 1)
              {
                if (*v65 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v64 + 1) + 8 * j);
                activatedDiscovery2 = [v24 activatedDiscovery];
                v26 = [activatedDiscovery2 shouldReportDevice:v16];

                if (v26)
                {
                  xpcCnx2 = [v24 xpcCnx];
                  remoteObjectProxy2 = [xpcCnx2 remoteObjectProxy];
                  [remoteObjectProxy2 remoteDisplayChangedDevice:v16 changes:v18];
                }
              }

              v21 = [(NSMutableSet *)v19 countByEnumeratingWithState:&v64 objects:v74 count:16];
            }

            while (v21);
          }

          if ((v53 & 0x200) != 0 && ([v16 statusFlags] & 0x200) == 0)
          {
            [(RPRemoteDisplayDaemon *)selfCopy _clientBonjourReconfirmDevice:v16 reason:"WiFiP2P lost"];
          }

          v6 = v55;
          v8 = v56;
          v11 = v58;
          if ((v18 & 1) != 0 && [(RPRemoteDisplayDevice *)selfCopy->_bleNearbyActionV2Device isEqualToDevice:v16])
          {
            [(RPRemoteDisplayDevice *)selfCopy->_bleNearbyActionV2Device updateWithSFDevice:foundCopy];
            [(RPRemoteDisplayDaemon *)selfCopy _clientBLENearbyActionV2AdvertiserUpdate];
          }

          if ((v18 & 0x400) != 0)
          {
            deviceConfirmedIdentifier = selfCopy->_deviceConfirmedIdentifier;
            if (deviceConfirmedIdentifier)
            {
              if (-[NSString isEqualToString:](deviceConfirmedIdentifier, "isEqualToString:", v56) && ([v16 inDiscoverySession] & 1) == 0)
              {
                [(RPRemoteDisplayDaemon *)selfCopy _startInSessionDeviceLostTimer];
              }
            }
          }
        }

        else
        {
          v16 = [(RPRemoteDisplayDaemon *)self _findMatchingDeviceWithIdentifier:v8];
          if (v16)
          {
            if (dword_1001D4BA0 <= 20 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
            {
              v51 = v16;
              v52 = foundCopy;
              LogPrintF();
            }

            bleDevice = [v16 bleDevice];
            [(RPRemoteDisplayDaemon *)self _clientBLEDiscoveryDeviceLost:bleDevice];
          }

          else if (dword_1001D4BA0 <= 20 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
          {
            sub_100127F38();
          }
        }

        goto LABEL_103;
      }

      if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_100127F78();
      }
    }

    else if (dword_1001D4BA0 <= 20 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100127D88();
    }
  }

  else if (dword_1001D4BA0 <= 10 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_100127FB8();
  }

LABEL_104:
}

- (void)_clientBLEDiscoveryDeviceLost:(id)lost
{
  lostCopy = lost;
  idsIdentifier = [lostCopy idsIdentifier];
  if (idsIdentifier)
  {
    v6 = [(RPRemoteDisplayDaemon *)self _findMatchingDeviceWithIdentifier:idsIdentifier];
    v7 = v6;
    if (v6)
    {
      bleDevice = [v6 bleDevice];
      identifier = [bleDevice identifier];
      uUIDString = [identifier UUIDString];

      bleDevice2 = [lostCopy bleDevice];
      identifier2 = [bleDevice2 identifier];
      uUIDString2 = [identifier2 UUIDString];

      if (uUIDString && uUIDString2 && ([uUIDString isEqual:uUIDString2] & 1) == 0)
      {
        if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }

      else if ([lostCopy isBLEDeviceReplaced])
      {
        if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001280CC();
        }
      }

      else
      {
        v39 = uUIDString2;
        v40 = uUIDString;
        statusFlags = [v7 statusFlags];
        selfCopy = self;
        if ([v7 removeSFDevice:lostCopy])
        {
          if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
          {
            sub_10012806C();
          }

          [(NSMutableDictionary *)self->_discoveredDevices setObject:0 forKeyedSubscript:idsIdentifier];
          [v7 clearCameraCapabilitiesRefetchTimer];
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v14 = self->_xpcConnections;
          v15 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v45 objects:v50 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v46;
            do
            {
              for (i = 0; i != v16; i = i + 1)
              {
                if (*v46 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v45 + 1) + 8 * i);
                activatedDiscovery = [v19 activatedDiscovery];
                v21 = [activatedDiscovery shouldReportDevice:v7];

                if (v21)
                {
                  xpcCnx = [v19 xpcCnx];
                  remoteObjectProxy = [xpcCnx remoteObjectProxy];
                  [remoteObjectProxy remoteDisplayLostDevice:v7];
                }
              }

              v16 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v45 objects:v50 count:16];
            }

            while (v16);
          }

          v24 = selfCopy;
          deviceConfirmedIdentifier = [(RPRemoteDisplayDaemon *)selfCopy deviceConfirmedIdentifier];
          v26 = [idsIdentifier isEqualToString:deviceConfirmedIdentifier];

          if (v26)
          {
            [(RPRemoteDisplayDaemon *)selfCopy _startInSessionDeviceLostTimer];
          }
        }

        else
        {
          if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
          {
            sub_10012800C();
          }

          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v27 = self->_xpcConnections;
          v28 = [(NSMutableSet *)v27 countByEnumeratingWithState:&v41 objects:v49 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v42;
            do
            {
              for (j = 0; j != v29; j = j + 1)
              {
                if (*v42 != v30)
                {
                  objc_enumerationMutation(v27);
                }

                v32 = *(*(&v41 + 1) + 8 * j);
                activatedDiscovery2 = [v32 activatedDiscovery];
                v34 = [activatedDiscovery2 shouldReportDevice:v7];

                if (v34)
                {
                  xpcCnx2 = [v32 xpcCnx];
                  remoteObjectProxy2 = [xpcCnx2 remoteObjectProxy];
                  [remoteObjectProxy2 remoteDisplayChangedDevice:v7 changes:2];
                }
              }

              v29 = [(NSMutableSet *)v27 countByEnumeratingWithState:&v41 objects:v49 count:16];
            }

            while (v29);
          }

          v24 = selfCopy;
        }

        [(RPRemoteDisplayDaemon *)v24 _updateXPCMatchingDiscovery];
        uUIDString2 = v39;
        uUIDString = v40;
        if ((statusFlags & 0x200) != 0 && ([v7 statusFlags] & 0x200) == 0)
        {
          [(RPRemoteDisplayDaemon *)v24 _clientBonjourReconfirmDevice:v7 reason:"BLE device lost"];
        }
      }
    }
  }

  else if (dword_1001D4BA0 <= 10 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10012810C();
  }
}

- (void)_clientBLENeedsAWDLAdvertiserEnsureStarted
{
  if (!self->_bleNeedsAWDLAdvertiser)
  {
    v9[7] = v2;
    v9[8] = v3;
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_10012814C();
    }

    v5 = objc_alloc_init(off_1001D4C18[0]());
    bleNeedsAWDLAdvertiser = self->_bleNeedsAWDLAdvertiser;
    self->_bleNeedsAWDLAdvertiser = v5;

    [(SFService *)self->_bleNeedsAWDLAdvertiser setAdvertiseRate:60];
    [(SFService *)self->_bleNeedsAWDLAdvertiser setDeviceActionType:50];
    [(SFService *)self->_bleNeedsAWDLAdvertiser setDispatchQueue:self->_dispatchQueue];
    v7 = off_1001D4C20();
    [(SFService *)self->_bleNeedsAWDLAdvertiser setIdentifier:v7];

    [(SFService *)self->_bleNeedsAWDLAdvertiser setLabel:@"RDLink"];
    [(SFService *)self->_bleNeedsAWDLAdvertiser setNeedsKeyboard:1];
    [(SFService *)self->_bleNeedsAWDLAdvertiser setPairSetupDisabled:1];
    v8 = self->_bleNeedsAWDLAdvertiser;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000AACAC;
    v9[3] = &unk_1001AB2C8;
    v9[4] = self;
    [(SFService *)v8 activateWithCompletion:v9];
    [(RPRemoteDisplayDaemon *)self _clientSendNeedsAWDLOverWiFi:1];
  }
}

- (void)_clientBLENearbyActionV2AdvertiserUpdate
{
  bleNearbyActionV2Advertiser = self->_bleNearbyActionV2Advertiser;
  if (!bleNearbyActionV2Advertiser || !self->_bleNearbyActionV2Device)
  {
    return;
  }

  targetData = [(RPNearbyActionV2Advertiser *)bleNearbyActionV2Advertiser targetData];
  bleTargetData = [(RPRemoteDisplayDevice *)self->_bleNearbyActionV2Device bleTargetData];
  v10 = targetData;
  v6 = bleTargetData;
  if (v10 != v6)
  {
    if ((v10 != 0) != (v6 == 0))
    {
      v7 = [v10 isEqual:v6];

      if (v7)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
      [(RPNearbyActionV2Advertiser *)self->_bleNearbyActionV2Advertiser setTargetData:v6, v10, v6];
    }

    else
    {
      [(RPNearbyActionV2Advertiser *)self->_bleNearbyActionV2Advertiser setTargetData:v6, v8, v9];
    }

    goto LABEL_15;
  }

LABEL_15:
}

- (void)_clientBonjourEnsureStopped
{
  if (self->_bonjourBrowser)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001283B0();
    }

    [(CUBonjourBrowser *)self->_bonjourBrowser invalidate];
    bonjourBrowser = self->_bonjourBrowser;
    self->_bonjourBrowser = 0;

    pendingLostDevicesTimer = self->_pendingLostDevicesTimer;
    if (pendingLostDevicesTimer)
    {
      dispatch_source_cancel(pendingLostDevicesTimer);
      v5 = self->_pendingLostDevicesTimer;
      self->_pendingLostDevicesTimer = 0;
    }

    [(RPRemoteDisplayDaemon *)self _updateXPCMatchingDiscovery];
  }
}

- (BOOL)_clientBonjourFoundDevice:(id)device reevaluate:(BOOL)reevaluate
{
  deviceCopy = device;
  txtDictionary = [deviceCopy txtDictionary];
  if (!self->_btAdvAddrStr)
  {
    goto LABEL_13;
  }

  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  v9 = v8;
  if (v8)
  {
    if ([v8 isEqual:self->_btAdvAddrStr])
    {
      if (dword_1001D4BA0 > 10 || dword_1001D4BA0 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      goto LABEL_53;
    }

LABEL_13:
    if (CFDictionaryGetInt64())
    {
      if (dword_1001D4BA0 <= 20 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_100128430();
      }

      goto LABEL_36;
    }

    if ((CFDictionaryGetInt64() & 0x800) != 0)
    {
      if (dword_1001D4BA0 <= 10 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001284A4();
      }

      goto LABEL_36;
    }

    v10 = +[RPIdentityDaemon sharedIdentityDaemon];
    v11 = [v10 resolveIdentityForBonjourDevice:deviceCopy typeFlags:3074];
    v12 = v11;
    if (!v11)
    {
      if (dword_1001D4BA0 <= 10 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_10012863C();
      }

      [(RPRemoteDisplayDaemon *)self _clientBonjourFoundUnresolvedDevice:deviceCopy];
      v14 = 0;
      goto LABEL_92;
    }

    idsDeviceID = [v11 idsDeviceID];
    v14 = idsDeviceID != 0;
    if (!idsDeviceID)
    {
      if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_100128504();
      }

      [(RPRemoteDisplayDaemon *)self _clientBonjourFoundUnresolvedDevice:deviceCopy];
      goto LABEL_91;
    }

    if (!reevaluate)
    {
      [(RPRemoteDisplayDaemon *)self _clientBonjourReevaluateDevices];
    }

    model = [v12 model];
    v15 = +[RPCloudDaemon sharedCloudDaemon];
    idsDeviceMap = [v15 idsDeviceMap];
    v17 = [idsDeviceMap objectForKeyedSubscript:idsDeviceID];

    v58 = v17;
    if (v17)
    {
      modelIdentifier = [v17 modelIdentifier];
      v19 = modelIdentifier;
      if (modelIdentifier)
      {
        v20 = modelIdentifier;

        model = v20;
      }
    }

    [(NSMutableDictionary *)self->_pendingLostDevices setObject:0 forKeyedSubscript:idsDeviceID];
    v21 = [(RPRemoteDisplayDaemon *)self _findMatchingDeviceWithIdentifier:idsDeviceID];
    v57 = idsDeviceID;
    if (v21)
    {
      v22 = v21;
      v23 = [v21 updateWithBonjourDevice:deviceCopy];
      if (model)
      {
        model2 = [v22 model];
        v25 = model;
        v26 = v25;
        if (model2 == v25)
        {
        }

        else
        {
          if (!model2)
          {

LABEL_73:
            [v22 setModel:v26];
            v23 = (v23 | 2);
            [(RPRemoteDisplayDaemon *)self _requestCameraCapabilitiesForDevice:v22];
LABEL_74:
            if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
            {
              sub_100128564();
            }

            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            v42 = self->_xpcConnections;
            v43 = [(NSMutableSet *)v42 countByEnumeratingWithState:&v64 objects:v69 count:16];
            if (v43)
            {
              v44 = v43;
              v52 = v14;
              v53 = v12;
              v54 = v10;
              v56 = deviceCopy;
              v45 = *v65;
              do
              {
                for (i = 0; i != v44; i = i + 1)
                {
                  if (*v65 != v45)
                  {
                    objc_enumerationMutation(v42);
                  }

                  v47 = *(*(&v64 + 1) + 8 * i);
                  activatedDiscovery = [v47 activatedDiscovery];
                  v49 = [activatedDiscovery shouldReportDevice:v22];

                  if (v49)
                  {
                    xpcCnx = [v47 xpcCnx];
                    remoteObjectProxy = [xpcCnx remoteObjectProxy];
                    [remoteObjectProxy remoteDisplayChangedDevice:v22 changes:v23];
                  }
                }

                v44 = [(NSMutableSet *)v42 countByEnumeratingWithState:&v64 objects:v69 count:16];
              }

              while (v44);

LABEL_87:
              v10 = v54;
              deviceCopy = v56;
              v12 = v53;
              v14 = v52;
LABEL_90:

              idsDeviceID = v57;
LABEL_91:

LABEL_92:
              goto LABEL_37;
            }

LABEL_89:
            goto LABEL_90;
          }

          v55 = [model2 isEqual:v25];

          if ((v55 & 1) == 0)
          {
            goto LABEL_73;
          }
        }
      }

      [(RPRemoteDisplayDaemon *)self _requestCameraCapabilitiesForDevice:v22];
      if (!v23)
      {
        goto LABEL_89;
      }

      goto LABEL_74;
    }

    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001285D0();
    }

    v22 = objc_alloc_init(RPRemoteDisplayDevice);
    [v22 setIdentifier:idsDeviceID];
    [v22 setIdsDevice:v58];
    [v22 setIdsDeviceIdentifier:idsDeviceID];
    [v22 setModel:model];
    [v22 setPersistentIdentifier:idsDeviceID];
    v54 = v10;
    if ([v12 type] == 2)
    {
      v28 = 0x80000;
    }

    else if ([v12 type] == 12)
    {
      v28 = 0x1000000000;
    }

    else
    {
      if ([v12 type] != 13)
      {
LABEL_60:
        v52 = idsDeviceID != 0;
        v53 = v12;
        v56 = deviceCopy;
        [v22 updateWithBonjourDevice:deviceCopy];
        discoveredDevices = self->_discoveredDevices;
        if (!discoveredDevices)
        {
          v30 = objc_alloc_init(NSMutableDictionary);
          v31 = self->_discoveredDevices;
          self->_discoveredDevices = v30;

          discoveredDevices = self->_discoveredDevices;
        }

        [(NSMutableDictionary *)discoveredDevices setObject:v22 forKeyedSubscript:idsDeviceID];
        [(RPRemoteDisplayDaemon *)self _requestCameraCapabilitiesForDevice:v22];
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v32 = self->_xpcConnections;
        v33 = [(NSMutableSet *)v32 countByEnumeratingWithState:&v60 objects:v68 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v61;
          do
          {
            for (j = 0; j != v34; j = j + 1)
            {
              if (*v61 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = *(*(&v60 + 1) + 8 * j);
              activatedDiscovery2 = [v37 activatedDiscovery];
              v39 = [activatedDiscovery2 shouldReportDevice:v22];

              if (v39)
              {
                xpcCnx2 = [v37 xpcCnx];
                remoteObjectProxy2 = [xpcCnx2 remoteObjectProxy];
                [remoteObjectProxy2 remoteDisplayFoundDevice:v22];
              }
            }

            v34 = [(NSMutableSet *)v32 countByEnumeratingWithState:&v60 objects:v68 count:16];
          }

          while (v34);
        }

        [(RPRemoteDisplayDaemon *)self _updateXPCMatchingDiscovery];
        goto LABEL_87;
      }

      v28 = 0x2000000000;
    }

    [v22 setStatusFlags:{objc_msgSend(v22, "statusFlags") | v28}];
    goto LABEL_60;
  }

  if (dword_1001D4BA0 > 10 || dword_1001D4BA0 == -1 && !_LogCategory_Initialize())
  {
    goto LABEL_11;
  }

LABEL_53:
  sub_1001283CC();
LABEL_11:

LABEL_36:
  v14 = 0;
LABEL_37:

  return v14;
}

- (void)_clientBonjourLostDevice:(id)device
{
  deviceCopy = device;
  v4 = +[RPIdentityDaemon sharedIdentityDaemon];
  v5 = [v4 resolveIdentityForBonjourDevice:deviceCopy typeFlags:2];
  v6 = v5;
  if (v5)
  {
    idsDeviceID = [v5 idsDeviceID];
    if (idsDeviceID)
    {
      v8 = [(RPRemoteDisplayDaemon *)self _findMatchingDeviceWithIdentifier:idsDeviceID];
      if (v8)
      {
        pendingLostDevices = self->_pendingLostDevices;
        if (!pendingLostDevices)
        {
          v10 = objc_alloc_init(NSMutableDictionary);
          v11 = self->_pendingLostDevices;
          self->_pendingLostDevices = v10;

          pendingLostDevices = self->_pendingLostDevices;
        }

        [(NSMutableDictionary *)pendingLostDevices setObject:deviceCopy forKeyedSubscript:idsDeviceID];
        [(RPRemoteDisplayDaemon *)self _schedulePendingLostDeviceTimer];
      }
    }

    else
    {
      if (dword_1001D4BA0 > 90 || dword_1001D4BA0 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v8 = CUDescriptionWithLevel();
      LogPrintF();
    }

LABEL_11:
  }
}

- (void)_schedulePendingLostDeviceTimer
{
  if (!self->_pendingLostDevicesTimer)
  {
    handler[7] = v2;
    handler[8] = v3;
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_10012869C(self);
    }

    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    pendingLostDevicesTimer = self->_pendingLostDevicesTimer;
    self->_pendingLostDevicesTimer = v5;

    v7 = self->_pendingLostDevicesTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000ABF40;
    handler[3] = &unk_1001AA970;
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);
    v8 = self->_pendingLostDevicesTimer;
    CUDispatchTimerSet();
    dispatch_activate(self->_pendingLostDevicesTimer);
  }
}

- (void)_processPendingLostDevices
{
  selfCopy = self;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001286E4(selfCopy);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [(NSMutableDictionary *)selfCopy->_pendingLostDevices allKeys];
  v31 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v31)
  {
    v29 = selfCopy;
    v30 = *v41;
    do
    {
      v3 = 0;
      do
      {
        if (*v41 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v40 + 1) + 8 * v3);
        v5 = [(NSMutableDictionary *)selfCopy->_pendingLostDevices objectForKeyedSubscript:v4];
        v6 = [(RPRemoteDisplayDaemon *)selfCopy _findMatchingDeviceWithIdentifier:v4];
        if ([v6 removeBonjourDevice:v5])
        {
          if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
          {
            sub_100128784();
          }

          [(NSMutableDictionary *)selfCopy->_discoveredDevices setObject:0 forKeyedSubscript:v4];
          [v6 clearCameraCapabilitiesRefetchTimer];
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v7 = selfCopy->_xpcConnections;
          v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v36 objects:v45 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v37;
            do
            {
              for (i = 0; i != v9; i = i + 1)
              {
                if (*v37 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                v12 = *(*(&v36 + 1) + 8 * i);
                activatedDiscovery = [v12 activatedDiscovery];
                v14 = [activatedDiscovery shouldReportDevice:v6];

                if (v14)
                {
                  xpcCnx = [v12 xpcCnx];
                  remoteObjectProxy = [xpcCnx remoteObjectProxy];
                  [remoteObjectProxy remoteDisplayLostDevice:v6];
                }
              }

              v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v36 objects:v45 count:16];
            }

            while (v9);
LABEL_35:
            selfCopy = v29;
          }
        }

        else
        {
          if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
          {
            sub_10012872C();
          }

          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v7 = selfCopy->_xpcConnections;
          v17 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v32 objects:v44 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v33;
            do
            {
              for (j = 0; j != v18; j = j + 1)
              {
                if (*v33 != v19)
                {
                  objc_enumerationMutation(v7);
                }

                v21 = *(*(&v32 + 1) + 8 * j);
                activatedDiscovery2 = [v21 activatedDiscovery];
                v23 = [activatedDiscovery2 shouldReportDevice:v6];

                if (v23)
                {
                  xpcCnx2 = [v21 xpcCnx];
                  remoteObjectProxy2 = [xpcCnx2 remoteObjectProxy];
                  [remoteObjectProxy2 remoteDisplayChangedDevice:v6 changes:2];
                }
              }

              v18 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v32 objects:v44 count:16];
            }

            while (v18);
            goto LABEL_35;
          }
        }

        v3 = v3 + 1;
      }

      while (v3 != v31);
      v26 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
      v31 = v26;
    }

    while (v26);
  }

  [(NSMutableDictionary *)selfCopy->_pendingLostDevices removeAllObjects];
  pendingLostDevices = selfCopy->_pendingLostDevices;
  selfCopy->_pendingLostDevices = 0;

  [(RPRemoteDisplayDaemon *)selfCopy _updateXPCMatchingDiscovery];
}

- (void)_clientBonjourFoundUnresolvedDevice:(id)device
{
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  uUIDString = [identifier UUIDString];

  if (uUIDString)
  {
    unresolvedDevices = self->_unresolvedDevices;
    if (!unresolvedDevices)
    {
      v7 = objc_alloc_init(NSMutableDictionary);
      v8 = self->_unresolvedDevices;
      self->_unresolvedDevices = v7;

      unresolvedDevices = self->_unresolvedDevices;
    }

    [(NSMutableDictionary *)unresolvedDevices setObject:deviceCopy forKeyedSubscript:uUIDString];
  }
}

- (void)_clientBonjourLostUnresolvedDevice:(id)device
{
  identifier = [device identifier];
  uUIDString = [identifier UUIDString];

  v5 = uUIDString;
  if (uUIDString)
  {
    [(NSMutableDictionary *)self->_unresolvedDevices setObject:0 forKeyedSubscript:uUIDString];
    v5 = uUIDString;
  }
}

- (void)_clientBonjourReconfirmDevice:(id)device reason:(const char *)reason
{
  deviceCopy = device;
  v11 = deviceCopy;
  if (dword_1001D4BA0 <= 30)
  {
    if (dword_1001D4BA0 != -1 || (v6 = _LogCategory_Initialize(), deviceCopy = v11, v6))
    {
      reasonCopy = reason;
      v10 = deviceCopy;
      LogPrintF();
      deviceCopy = v11;
    }
  }

  bonjourDevice = [deviceCopy bonjourDevice];
  v8 = bonjourDevice;
  if (bonjourDevice)
  {
    [bonjourDevice reconfirm];
  }
}

- (void)_clientBonjourAWDLBrowserEnsureStarted
{
  if (!self->_bonjourBrowserAWDL)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100128838();
    }

    v3 = +[RPWiFiP2PTransaction sharedInstance];
    [v3 activateForClient:@"Sidecar"];

    v4 = objc_alloc_init(CUBonjourBrowser);
    bonjourBrowserAWDL = self->_bonjourBrowserAWDL;
    self->_bonjourBrowserAWDL = v4;

    [(CUBonjourBrowser *)self->_bonjourBrowserAWDL setChangeFlags:0xFFFFFFFFLL];
    [(CUBonjourBrowser *)self->_bonjourBrowserAWDL setDispatchQueue:self->_dispatchQueue];
    [(CUBonjourBrowser *)self->_bonjourBrowserAWDL setDomain:@"local."];
    [(CUBonjourBrowser *)self->_bonjourBrowserAWDL setInterfaceName:@"awdl0"];
    [(CUBonjourBrowser *)self->_bonjourBrowserAWDL setLabel:@"RDLink"];
    [(CUBonjourBrowser *)self->_bonjourBrowserAWDL setServiceType:@"_rdlink._tcp"];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000AC84C;
    v20[3] = &unk_1001AB438;
    v20[4] = self;
    [(CUBonjourBrowser *)self->_bonjourBrowserAWDL setDeviceFoundHandler:v20];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000AC864;
    v19[3] = &unk_1001AB438;
    v19[4] = self;
    [(CUBonjourBrowser *)self->_bonjourBrowserAWDL setDeviceLostHandler:v19];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000AC87C;
    v18[3] = &unk_1001AB460;
    v18[4] = self;
    [(CUBonjourBrowser *)self->_bonjourBrowserAWDL setDeviceChangedHandler:v18];
    [(CUBonjourBrowser *)self->_bonjourBrowserAWDL activate];
    v6 = self->_bonjourBrowserAWDLAssertions;
    v7 = v6;
    if (v6)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v14 objects:v21 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v14 + 1) + 8 * i);
            v13 = +[RPAssertionTracker sharedTracker];
            [v13 startTracking:v12];
          }

          v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v14 objects:v21 count:16];
        }

        while (v9);
      }
    }
  }
}

- (void)_clientBonjourAWDLBrowserFoundDevice:(id)device
{
  deviceCopy = device;
  txtDictionary = [deviceCopy txtDictionary];
  if (CFDictionaryGetInt64())
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100128870();
    }

    goto LABEL_65;
  }

  Int64 = CFDictionaryGetInt64();
  if ((Int64 & 0x800) != 0)
  {
    if ((Int64 & 0x80000) != 0)
    {
      [(RPRemoteDisplayDaemon *)self _clientAWDLPairingSessionWithDevice:deviceCopy];
      goto LABEL_65;
    }

    v7 = +[RPIdentityDaemon sharedIdentityDaemon];
    v8 = [v7 resolveIdentityForBonjourDevice:deviceCopy typeFlags:3074];
    v9 = v8;
    if (v8)
    {
      idsDeviceID = [v8 idsDeviceID];
      if (idsDeviceID)
      {
        if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001288E4(deviceCopy, self, idsDeviceID);
        }

        v43 = v9;
        v44 = v7;
        v45 = txtDictionary;
        bonjourAWDLDevices = self->_bonjourAWDLDevices;
        if (!bonjourAWDLDevices)
        {
          v11 = objc_alloc_init(NSMutableDictionary);
          v12 = self->_bonjourAWDLDevices;
          self->_bonjourAWDLDevices = v11;

          bonjourAWDLDevices = self->_bonjourAWDLDevices;
        }

        v13 = idsDeviceID;
        [(NSMutableDictionary *)bonjourAWDLDevices setObject:deviceCopy forKeyedSubscript:idsDeviceID];
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v14 = self->_xpcConnections;
        v15 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v51 objects:v58 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v52;
          v47 = v14;
          v48 = *v52;
          do
          {
            v18 = 0;
            v49 = v16;
            do
            {
              if (*v52 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v51 + 1) + 8 * v18);
              clientNetCnx = [v19 clientNetCnx];
              present = [clientNetCnx present];

              if ((present & 1) == 0)
              {
                activatedSession = [v19 activatedSession];
                v23 = activatedSession;
                if (activatedSession && [activatedSession needsAWDL])
                {
                  daemonDevice = [v23 daemonDevice];
                  identifier = [daemonDevice identifier];
                  if ([identifier isEqual:v13])
                  {

LABEL_30:
                    [v23 setBonjourDevice:deviceCopy];
                    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
                    {
                      sub_100128A24(v23);
                    }

                    v34 = sub_1000AA650();
                    v35 = sub_1000AA650();
                    v36 = os_signpost_id_make_with_pointer(v35, self);

                    if (v36 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
                    {
                      serviceType = [v23 serviceType];
                      *buf = 138412546;
                      *&buf[4] = daemonDevice;
                      v56 = 2112;
                      v57 = serviceType;
                      _os_signpost_emit_with_name_impl(&_mh_execute_header, v34, OS_SIGNPOST_EVENT, v36, "Found AWDL device", "Start connection to found AWDL device (%@) for service type %@ \n", buf, 0x16u);
                    }

                    v50 = 0;
                    v38 = [v19 netConnectionStartWithDevice:daemonDevice session:v23 error:&v50];
                    v39 = v50;
                    if (v38)
                    {
                      v13 = idsDeviceID;
                      v14 = v47;
                    }

                    else
                    {
                      v14 = v47;
                      if (dword_1001D4BA0 > 90)
                      {
                        v13 = idsDeviceID;
                      }

                      else
                      {
                        v13 = idsDeviceID;
                        if (dword_1001D4BA0 != -1 || _LogCategory_Initialize())
                        {
                          v41 = daemonDevice;
                          v42 = v39;
                          LogPrintF();
                        }
                      }
                    }

LABEL_47:
                  }

                  else
                  {
                    bleDevice = [daemonDevice bleDevice];
                    rapportIdentifier = [bleDevice rapportIdentifier];
                    v28 = v13;
                    v29 = daemonDevice;
                    selfCopy = self;
                    v31 = deviceCopy;
                    v32 = rapportIdentifier;
                    v33 = [rapportIdentifier isEqual:v28];

                    deviceCopy = v31;
                    self = selfCopy;
                    daemonDevice = v29;

                    v14 = v47;
                    if (v33)
                    {
                      goto LABEL_30;
                    }

                    v13 = idsDeviceID;
                    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
                    {
                      sub_100128990(daemonDevice, idsDeviceID, buf);
                      v39 = *buf;
                      goto LABEL_47;
                    }
                  }
                }

                v17 = v48;
                v16 = v49;
              }

              v18 = v18 + 1;
            }

            while (v16 != v18);
            v40 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v51 objects:v58 count:16];
            v16 = v40;
          }

          while (v40);
        }

        v7 = v44;
        txtDictionary = v45;
        v9 = v43;
      }

      else if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_100128A7C();
      }
    }

    else if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100128ADC();
    }

    goto LABEL_65;
  }

  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_100128B3C();
  }

LABEL_65:
}

- (void)_clientAWDLPairingSessionWithDevice:(id)device
{
  deviceCopy = device;
  txtDictionary = [deviceCopy txtDictionary];
  CFStringGetTypeID();
  v6 = CFDictionaryGetTypedValue();
  v7 = v6;
  if (v6 && [v6 length] > 0xF)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = self->_xpcConnections;
    v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v31;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v30 + 1) + 8 * i);
          clientNetCnx = [v13 clientNetCnx];
          present = [clientNetCnx present];

          if ((present & 1) == 0)
          {
            activatedSession = [v13 activatedSession];
            v17 = activatedSession;
            if (activatedSession)
            {
              if ([activatedSession needsAWDL])
              {
                pairingInfo = [v17 pairingInfo];

                if (pairingInfo)
                {
                  pairingInfo2 = [v17 pairingInfo];
                  v29 = 0;
                  v20 = [NSJSONSerialization JSONObjectWithData:pairingInfo2 options:16 error:&v29];
                  v21 = v29;

                  if (v21 && dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
                  {
                    sub_100128B9C();
                  }

                  CFStringGetTypeID();
                  v22 = CFDictionaryGetTypedValue();
                  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
                  {
                    v25 = v7;
                    v26 = v22;
                    LogPrintF();
                  }

                  if (v22 && ([v22 isEqualToString:v7] & 1) != 0)
                  {
                    daemonDevice = [v17 daemonDevice];
                    [v17 setBonjourDevice:deviceCopy];
                    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
                    {
                      sub_100128BDC(v17);
                    }

                    v28 = 0;
                    v23 = [v13 netConnectionStartWithDevice:daemonDevice session:v17 error:{&v28, v25, v26}];
                    v24 = v28;
                    if ((v23 & 1) == 0 && dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF();
                    }
                  }

                  else if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF();
                  }

                  goto LABEL_45;
                }
              }
            }
          }
        }

        v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_45:
  }

  else if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_100128C34();
  }
}

- (void)_clientBonjourAWDLBrowserLostDevice:(id)device
{
  deviceCopy = device;
  v4 = +[RPIdentityDaemon sharedIdentityDaemon];
  v5 = [v4 resolveIdentityForBonjourDevice:deviceCopy typeFlags:2];
  v6 = v5;
  if (v5)
  {
    idsDeviceID = [v5 idsDeviceID];
    if (idsDeviceID)
    {
      if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_100128C74();
      }

      [(NSMutableDictionary *)self->_bonjourAWDLDevices setObject:0 forKeyedSubscript:idsDeviceID];
    }

    else if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100128CE0();
    }

    goto LABEL_13;
  }

  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    idsDeviceID = CUDescriptionWithLevel();
    LogPrintF();
LABEL_13:
  }
}

- (void)_clientLostAllDevices
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(NSMutableDictionary *)self->_discoveredDevices allValues];
  v2 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v2)
  {
    v3 = v2;
    v18 = *v25;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v24 + 1) + 8 * i);
        [v5 clearCameraCapabilitiesRefetchTimer];
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v6 = self->_xpcConnections;
        v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v21;
          do
          {
            for (j = 0; j != v8; j = j + 1)
            {
              if (*v21 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v20 + 1) + 8 * j);
              activatedDiscovery = [v11 activatedDiscovery];
              v13 = [activatedDiscovery shouldReportDevice:v5];

              if (v13)
              {
                xpcCnx = [v11 xpcCnx];
                remoteObjectProxy = [xpcCnx remoteObjectProxy];
                [remoteObjectProxy remoteDisplayLostDevice:v5];
              }
            }

            v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v8);
        }
      }

      v3 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v3);
  }

  [(NSMutableDictionary *)self->_discoveredDevices removeAllObjects];
  discoveredDevices = self->_discoveredDevices;
  self->_discoveredDevices = 0;

  [(RPRemoteDisplayDaemon *)self _updateXPCMatchingDiscovery];
}

- (void)_serverEnsureStopped
{
  [(RPRemoteDisplayDaemon *)self _serverBLENeedsAWDLScannerEnsureStopped];
  [(RPRemoteDisplayDaemon *)self _serverBonjourAWDLAdvertiserEnsureStopped];
  [(RPRemoteDisplayDaemon *)self _serverBonjourEnsureStopped];
  [(RPRemoteDisplayDaemon *)self _serverTCPEnsureStopped];
  clinkClient = self->_clinkClient;
  if (clinkClient)
  {
    [(RPCompanionLinkClient *)clinkClient invalidate];
    v4 = self->_clinkClient;
    self->_clinkClient = 0;
  }

  if (self->_cameraCapabilityNotificationRegistered)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:self name:AVCaptureDeviceContinuityCaptureCameraCapabilitiesChangedNotification object:0];
    self->_cameraCapabilityNotificationRegistered = 0;
  }

  cameraCapabilities = self->_cameraCapabilities;
  self->_cameraCapabilities = 0;

  serverIncomingMessageCLinkClient = self->_serverIncomingMessageCLinkClient;
  if (serverIncomingMessageCLinkClient)
  {
    [(RPCompanionLinkClient *)serverIncomingMessageCLinkClient invalidate];
    v8 = self->_serverIncomingMessageCLinkClient;
    self->_serverIncomingMessageCLinkClient = 0;

    needsAWDLRequestTimer = self->_needsAWDLRequestTimer;
    if (needsAWDLRequestTimer)
    {
      v11 = needsAWDLRequestTimer;
      dispatch_source_cancel(v11);
      v10 = self->_needsAWDLRequestTimer;
      self->_needsAWDLRequestTimer = 0;
    }
  }
}

- (void)_serverBLEDiscoveryEnsureStarted
{
  if (!self->_bleDiscovery)
  {
    [(RPRemoteDisplayDaemon *)self _bleDiscoveryEnsureStarted:1];
    self->_serverBLEDiscoveryStarted = 1;

    [(RPRemoteDisplayDaemon *)self _bleDiscoveryTriggerEnhancedDiscovery:@"StartWombatStream" useCase:131087];
  }
}

- (void)_serverBLENeedsAWDLScannerEnsureStopped
{
  if (self->_bleNeedsAWDLScanner)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100128E54(self);
    }

    [(SFDeviceDiscovery *)self->_bleNeedsAWDLScanner invalidate];
    bleNeedsAWDLScanner = self->_bleNeedsAWDLScanner;
    self->_bleNeedsAWDLScanner = 0;

    ++self->_bleNeedsAWDLScannerID;
    [(NSMutableDictionary *)self->_needsAWDLDevices removeAllObjects];
    needsAWDLDevices = self->_needsAWDLDevices;
    self->_needsAWDLDevices = 0;
  }
}

- (void)_serverBLENeedsAWDLScannerDeviceFound:(id)found
{
  foundCopy = found;
  idsIdentifier = [foundCopy idsIdentifier];
  if (idsIdentifier || ([foundCopy identifier], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "UUIDString"), idsIdentifier = objc_claimAutoreleasedReturnValue(), v5, idsIdentifier))
  {
    if (([foundCopy deviceFlags] & 0xC008) != 0)
    {
      v6 = [(NSMutableDictionary *)self->_needsAWDLDevices objectForKeyedSubscript:idsIdentifier];
      if ([foundCopy deviceActionType] == 50)
      {
        needsAWDLDevices = self->_needsAWDLDevices;
        if (!needsAWDLDevices)
        {
          v8 = objc_alloc_init(NSMutableDictionary);
          v9 = self->_needsAWDLDevices;
          self->_needsAWDLDevices = v8;

          needsAWDLDevices = self->_needsAWDLDevices;
        }

        [(NSMutableDictionary *)needsAWDLDevices setObject:foundCopy forKeyedSubscript:idsIdentifier];
        if (v6)
        {
          if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
          {
            sub_100128ED8();
          }
        }

        else if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
        {
          sub_100128F18();
        }
      }

      else if (v6)
      {
        [(NSMutableDictionary *)self->_needsAWDLDevices setObject:0 forKeyedSubscript:idsIdentifier];
        if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
        {
          sub_100128E98();
        }
      }

      [(RPRemoteDisplayDaemon *)self _update];
    }

    else if (dword_1001D4BA0 <= 20 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100128F58();
    }
  }

  else
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100128F98();
    }

    idsIdentifier = 0;
  }
}

- (void)_serverBLENeedsAWDLScannerDeviceLost:(id)lost
{
  lostCopy = lost;
  idsIdentifier = [lostCopy idsIdentifier];
  if (idsIdentifier)
  {
    uUIDString = idsIdentifier;
LABEL_4:
    v7 = [(NSMutableDictionary *)self->_needsAWDLDevices objectForKeyedSubscript:uUIDString];
    if (v7)
    {
      [(NSMutableDictionary *)self->_needsAWDLDevices setObject:0 forKeyedSubscript:uUIDString];
      if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_100128FD8();
      }

      [(RPRemoteDisplayDaemon *)self _update];
    }

    goto LABEL_10;
  }

  identifier = [lostCopy identifier];
  uUIDString = [identifier UUIDString];

  if (uUIDString)
  {
    goto LABEL_4;
  }

  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_100129018();
  }

LABEL_10:
}

- (void)_serverBLENearbyActionV2DiscoveryEnsureStopped
{
  bleNearbyActionV2Discovery = self->_bleNearbyActionV2Discovery;
  if (bleNearbyActionV2Discovery)
  {
    [(RPNearbyActionV2Discovery *)bleNearbyActionV2Discovery invalidate];
    v4 = self->_bleNearbyActionV2Discovery;
    self->_bleNearbyActionV2Discovery = 0;

    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100129074();
    }
  }
}

- (void)_serverBonjourEnsureStopped
{
  if (self->_bonjourAdvertiser)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001290E4();
    }

    [(CUBonjourAdvertiser *)self->_bonjourAdvertiser invalidate];
    bonjourAdvertiser = self->_bonjourAdvertiser;
    self->_bonjourAdvertiser = 0;
  }
}

- (id)_serverBonjourAuthTagStringWithData:(id)data
{
  dataCopy = data;
  v4 = dataCopy;
  if (dataCopy)
  {
    v5 = +[RPIdentityDaemon sharedIdentityDaemon];
    v6 = [v5 identityOfSelfAndReturnError:0];

    if (v6)
    {
      v7 = [v6 authTagForData:v4 type:1 error:0];
      v8 = v7;
      if (v7)
      {
        [v7 bytes];
        [v8 length];
        [v8 length];
        v9 = NSPrintF();
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_serverBonjourAWDLAdvertiserEnsureStarted
{
  p_bonjourAWDLAdvertiser = &self->_bonjourAWDLAdvertiser;
  if (self->_bonjourAWDLAdvertiser)
  {

    [(RPRemoteDisplayDaemon *)self _serverBonjourAWDLAdvertiserUpdateTXT];
  }

  else
  {
    v4 = self->_btAdvAddrData;
    if (v4)
    {
      tcpListeningPort = [(CUTCPServer *)self->_tcpServer tcpListeningPort];
      if (tcpListeningPort <= 0)
      {
        if (dword_1001D4BA0 <= 20 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001291A4();
        }
      }

      else
      {
        v6 = tcpListeningPort;
        v7 = +[RPWiFiP2PTransaction sharedInstance];
        [v7 activateForClient:@"Sidecar"];

        v8 = objc_alloc_init(CUBonjourAdvertiser);
        bonjourAWDLAdvertiser = self->_bonjourAWDLAdvertiser;
        self->_bonjourAWDLAdvertiser = v8;

        [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser setAdvertiseFlags:2048];
        [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser setDispatchQueue:self->_dispatchQueue];
        [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser setDomain:@"local."];
        [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser setInterfaceName:@"awdl0"];
        [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser setLabel:@"RDLink"];
        v10 = NSPrintF();
        [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser setName:v10, v4];

        [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser setPort:v6];
        [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser setServiceType:@"_rdlink._tcp"];
        [(RPRemoteDisplayDaemon *)self _serverBonjourAWDLAdvertiserUpdateTXT];
        if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
        {
          sub_100129140(p_bonjourAWDLAdvertiser);
        }

        v11 = sub_1000AA650();
        v12 = sub_1000AA650();
        v13 = os_signpost_id_make_with_pointer(v12, self);

        if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
        {
          v14 = *p_bonjourAWDLAdvertiser;
          v15 = CUDescriptionWithLevel();
          *buf = 138412290;
          v17 = v15;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_EVENT, v13, "Bonjour AWDL advertiser start", "Bonjour AWDL advertiser start: %@\n", buf, 0xCu);
        }

        [*p_bonjourAWDLAdvertiser activate];
      }
    }

    else if (dword_1001D4BA0 <= 20 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001291C0();
    }
  }
}

- (void)_serverBonjourAWDLAdvertiserUpdateTXT
{
  if (self->_deviceAWDLRandomID || (NSRandomData(), v3 = objc_claimAutoreleasedReturnValue(), deviceAWDLRandomID = self->_deviceAWDLRandomID, self->_deviceAWDLRandomID = v3, deviceAWDLRandomID, [(NSData *)self->_deviceAWDLRandomID length]== 6))
  {
    v14 = objc_alloc_init(NSMutableDictionary);
    v5 = self->_deviceAWDLRandomID;
    v6 = v5;
    if (v5)
    {
      bytes = [(NSData *)v5 bytes];
      v7 = NSPrintF();
      if (v7)
      {
        [v14 setObject:v7 forKeyedSubscript:{@"rpBA", bytes}];
      }

      v8 = [(RPRemoteDisplayDaemon *)self _serverBonjourAuthTagStringWithData:self->_deviceAWDLRandomID, bytes];
      if (v8)
      {
        [v14 setObject:v8 forKeyedSubscript:@"rpAD"];
      }

      if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      awdlPairingID = self->_awdlPairingID;
      if (awdlPairingID)
      {
        [v14 setObject:awdlPairingID forKeyedSubscript:@"rpPI"];
        v10 = 526336;
      }

      else
      {
        v10 = 2048;
      }

      v13 = v10;
      v11 = NSPrintF();
      [v14 setObject:v11 forKeyedSubscript:{@"rpFl", v13}];

      [v14 setObject:@"715.2" forKeyedSubscript:@"rpVr"];
      [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser setTxtDictionary:v14];
    }
  }
}

- (void)_serverTCPEnsureStopped
{
  if (self->_tcpServer)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100129238();
    }

    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = self->_bufferedConnections;
    v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v9 + 1) + 8 * i) invalidate];
        }

        v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    [(NSMutableSet *)self->_bufferedConnections removeAllObjects];
    [(NSMutableDictionary *)self->_tcpServerConnections enumerateKeysAndObjectsUsingBlock:&stru_1001AEE68];
    [(NSMutableDictionary *)self->_tcpServerConnections removeAllObjects];
    [(CUTCPServer *)self->_tcpServer invalidate];
    tcpServer = self->_tcpServer;
    self->_tcpServer = 0;
  }
}

- (void)_serverTCPHandleConnectionStarted:(id)started
{
  sessionIDLast = self->_sessionIDLast;
  self->_sessionIDLast = sessionIDLast + 1;
  startedCopy = started;
  v6 = [NSNumber numberWithUnsignedInt:sessionIDLast];
  v7 = objc_alloc_init(RPConnection);
  [v7 setControlFlags:0x400000000240];
  [v7 setDispatchQueue:self->_dispatchQueue];
  v8 = +[RPIdentityDaemon sharedIdentityDaemon];
  [v7 setIdentityDaemon:v8];

  [v7 setKeepAliveSeconds:10];
  v9 = [NSString alloc];
  v10 = self->_cnxIDLast + 1;
  self->_cnxIDLast = v10;
  v11 = [v9 initWithFormat:@"%@Cnx-%u", @"RDLink", v10];
  [v7 setLabel:v11];

  [v7 setLocalDeviceInfo:self->_localDeviceInfo];
  [v7 setTcpConnection:startedCopy];

  [(RPRemoteDisplayDaemon *)self _connectionConfigureCommon:v7];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000AF1D0;
  v22[3] = &unk_1001AB130;
  v22[4] = self;
  v22[5] = v6;
  v22[6] = v7;
  [v7 setInvalidationHandler:v22];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000AF23C;
  v21[3] = &unk_1001AB4F0;
  v21[4] = v7;
  v21[5] = v6;
  [v7 setReceivedEventHandler:v21];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000AF340;
  v20[3] = &unk_1001AB518;
  v20[4] = v7;
  v20[5] = v6;
  [v7 setReceivedRequestHandler:v20];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000AF458;
  v19[3] = &unk_1001AEE90;
  v19[4] = self;
  v19[5] = v6;
  v19[6] = v7;
  [v7 setSessionStartHandler:v19];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000AF49C;
  v18[3] = &unk_1001AB540;
  v18[4] = v7;
  v18[5] = self;
  [v7 setStateChangedHandler:v18];
  bufferedConnections = self->_bufferedConnections;
  if (!bufferedConnections)
  {
    v13 = objc_alloc_init(NSMutableSet);
    v14 = self->_bufferedConnections;
    self->_bufferedConnections = v13;

    bufferedConnections = self->_bufferedConnections;
  }

  [(NSMutableSet *)bufferedConnections addObject:v7];
  tcpServerConnections = self->_tcpServerConnections;
  if (!tcpServerConnections)
  {
    v16 = objc_alloc_init(NSMutableDictionary);
    v17 = self->_tcpServerConnections;
    self->_tcpServerConnections = v16;

    tcpServerConnections = self->_tcpServerConnections;
  }

  [(NSMutableDictionary *)tcpServerConnections setObject:v7 forKeyedSubscript:v6];
  [v7 activate];
}

- (void)_serverHandleSessionStartWithID:(id)d netCnx:(id)cnx completion:(id)completion
{
  dCopy = d;
  cnxCopy = cnx;
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_1000AFDE8;
  v56[3] = &unk_1001AEEB8;
  completionCopy = completion;
  v59 = completionCopy;
  v57 = 0;
  v8 = cnxCopy;
  v58 = v8;
  v45 = objc_retainBlock(v56);
  serviceType = [v8 serviceType];
  LODWORD(completion) = serviceType == 0;

  if (completion)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
      [v8 setServiceType:{@"_rdlink._tcp", @"_rdlink._tcp"}];
    }

    else
    {
      [v8 setServiceType:{@"_rdlink._tcp", allKeys}];
    }
  }

  serviceType2 = [v8 serviceType];
  peerDeviceInfo = [v8 peerDeviceInfo];
  model = [peerDeviceInfo model];
  v13 = GestaltProductTypeStringToDeviceClass();

  if (v13 == 4 && [serviceType2 isEqualToString:@"com.apple.continuitycapture"])
  {
    peerDeviceInfo2 = [v8 peerDeviceInfo];
    verifiedIdentity = [peerDeviceInfo2 verifiedIdentity];

    deviceConfirmedIdentifier = self->_deviceConfirmedIdentifier;
    if (!deviceConfirmedIdentifier || ![(NSString *)deviceConfirmedIdentifier isEqualToString:verifiedIdentity])
    {
      if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        v42 = self->_deviceConfirmedIdentifier;
        LogPrintF();
      }

      v39 = RPErrorF();
LABEL_57:
      v34 = v39;
      goto LABEL_69;
    }
  }

  allValues = [(NSMutableDictionary *)self->_xpcMatchingServerMap allValues];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  verifiedIdentity = allValues;
  v18 = [verifiedIdentity countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (!v18)
  {
LABEL_25:

LABEL_29:
    v31 = [(NSMutableDictionary *)self->_activatedServerXPCCnxMap objectForKeyedSubscript:serviceType2];
    v32 = v31 == 0;

    if (!v32)
    {
      v29 = 0;
      v30 = 1;
      goto LABEL_31;
    }

    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v39 = RPErrorF();
    goto LABEL_57;
  }

  v19 = *v53;
LABEL_14:
  v20 = 0;
  while (1)
  {
    if (*v53 != v19)
    {
      objc_enumerationMutation(verifiedIdentity);
    }

    v21 = *(*(&v52 + 1) + 8 * v20);
    serviceType3 = [v21 serviceType];
    v23 = serviceType3 == 0;

    if (v23)
    {
      goto LABEL_23;
    }

    serviceType4 = [v21 serviceType];
    v25 = serviceType2;
    v26 = serviceType4;
    v27 = v26;
    if (v25 == v26)
    {
      break;
    }

    if ((serviceType2 != 0) != (v26 == 0))
    {
      v28 = [v25 isEqual:v26];

      if (v28)
      {
        goto LABEL_27;
      }
    }

    else
    {
    }

LABEL_23:
    if (v18 == ++v20)
    {
      v18 = [verifiedIdentity countByEnumeratingWithState:&v52 objects:v60 count:16];
      if (v18)
      {
        goto LABEL_14;
      }

      goto LABEL_25;
    }
  }

LABEL_27:
  v29 = v21;

  if (!v29)
  {
    goto LABEL_29;
  }

  v30 = 0;
LABEL_31:
  if ([(NSMutableSet *)self->_bufferedConnections count]< 6)
  {
    if (v30)
    {
      v33 = 0;
    }

    else
    {
      v51 = 0;
      v33 = [(RPRemoteDisplayDaemon *)self _acquireRBSAssertionForEntry:v29 error:&v51];
      v34 = v51;
      if (v34)
      {
LABEL_67:

        goto LABEL_68;
      }
    }

    v35 = [(NSMutableDictionary *)self->_activatedServerXPCCnxMap objectForKeyedSubscript:serviceType2];
    v36 = v35;
    if (v35)
    {
      serverNetCnxs = [v35 serverNetCnxs];
      if (!serverNetCnxs)
      {
        serverNetCnxs = objc_alloc_init(NSMutableSet);
        [v36 setServerNetCnxs:serverNetCnxs];
      }

      [serverNetCnxs addObject:v8];
      [v8 setClient:v36];
      v38 = v47;
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_1000AFEEC;
      v47[3] = &unk_1001AD4C0;
      v47[4] = v33;
      v48 = completionCopy;
      [v36 sessionStartWithID:dCopy netCnx:v8 completion:v47];
      [(NSMutableSet *)self->_bufferedConnections removeObject:v8];
    }

    else
    {
      if (dword_1001D4BA0 <= 30)
      {
        if (dword_1001D4BA0 != -1 || _LogCategory_Initialize())
        {
          allKeys = v8;
          LogPrintF();
        }

        if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
        {
          allKeys = [(NSMutableDictionary *)self->_activatedServerXPCCnxMap allKeys];
          LogPrintF();
        }
      }

      serverNetCnxs = [v29 handler];
      if (!serverNetCnxs)
      {
        goto LABEL_66;
      }

      v38 = v49;
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_1000AFE48;
      v49[3] = &unk_1001AEEE0;
      v49[4] = v29;
      v49[5] = self;
      v50 = v33;
      (*(serverNetCnxs + 2))(serverNetCnxs, 0, 0, v49);
    }

LABEL_66:
    v34 = 0;
    goto LABEL_67;
  }

  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v34 = RPErrorF();
LABEL_68:

LABEL_69:
  (v45[2])(v45, v40);
}

- (void)_serverProximityGetDeviceIdentifiers
{
  v3 = +[NSMutableSet set];
  needsAWDLDevices = self->_needsAWDLDevices;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000B0070;
  v10[3] = &unk_1001AEAA8;
  v5 = v3;
  v11 = v5;
  [(NSMutableDictionary *)needsAWDLDevices enumerateKeysAndObjectsUsingBlock:v10];
  tcpServerConnections = self->_tcpServerConnections;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000B00EC;
  v8[3] = &unk_1001AEF08;
  v9 = v5;
  v7 = v5;
  [(NSMutableDictionary *)tcpServerConnections enumerateKeysAndObjectsUsingBlock:v8];
}

- (unsigned)_serverDirectLinkInterfaceIndex
{
  if (CreateUsableInterfaceList())
  {
    if (dword_1001D4BA0 > 30)
    {
      return 0;
    }

    if (dword_1001D4BA0 != -1 || (result = _LogCategory_Initialize()) != 0)
    {
      sub_1001292E4();
      return 0;
    }
  }

  else
  {
    ReleaseUsableInterfaceList();
    return 0;
  }

  return result;
}

- (void)_serverRegisterForIncomingMessages
{
  if (!self->_serverIncomingMessageCLinkClient)
  {
    v8[10] = v2;
    v8[11] = v3;
    v5 = objc_alloc_init(RPCompanionLinkClient);
    [v5 setDispatchQueue:self->_dispatchQueue];
    serverIncomingMessageCLinkClient = self->_serverIncomingMessageCLinkClient;
    self->_serverIncomingMessageCLinkClient = v5;
    v7 = v5;

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000B0358;
    v8[3] = &unk_1001AAA40;
    v8[4] = v7;
    v8[5] = self;
    [v7 activateWithCompletion:v8];
  }
}

- (void)_serverReceivedNeedsAWDLEvent:(id)event
{
  eventCopy = event;
  CFStringGetTypeID();
  v5 = CFDictionaryGetTypedValue();
  if (v5)
  {
    v6 = NSDictionaryGetNSNumber();
    bOOLValue = [v6 BOOLValue];

    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      v8 = "disable";
      if (bOOLValue)
      {
        v8 = "enable";
      }

      v18 = v8;
      v19 = v5;
      LogPrintF();
    }

    needsAWDLRequestIdentifiers = self->_needsAWDLRequestIdentifiers;
    if (bOOLValue)
    {
      if (!needsAWDLRequestIdentifiers)
      {
        v10 = +[NSMutableSet set];
        v11 = self->_needsAWDLRequestIdentifiers;
        self->_needsAWDLRequestIdentifiers = v10;

        needsAWDLRequestIdentifiers = self->_needsAWDLRequestIdentifiers;
      }

      [(NSMutableSet *)needsAWDLRequestIdentifiers addObject:v5, v18, v19];
      if (self->_needsAWDLRequestTimer)
      {
        goto LABEL_21;
      }

      v12 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      needsAWDLRequestTimer = self->_needsAWDLRequestTimer;
      self->_needsAWDLRequestTimer = v12;
      v14 = v12;

      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1000B0708;
      handler[3] = &unk_1001AA970;
      handler[4] = self;
      dispatch_source_set_event_handler(v14, handler);
      CUDispatchTimerSet();
      dispatch_activate(v14);
    }

    else
    {
      [(NSMutableSet *)needsAWDLRequestIdentifiers removeObject:v5];
      if ([(NSMutableSet *)self->_needsAWDLRequestIdentifiers count])
      {
        goto LABEL_21;
      }

      v15 = self->_needsAWDLRequestIdentifiers;
      self->_needsAWDLRequestIdentifiers = 0;

      v16 = self->_needsAWDLRequestTimer;
      if (!v16)
      {
        goto LABEL_21;
      }

      v14 = v16;
      dispatch_source_cancel(v14);
      v17 = self->_needsAWDLRequestTimer;
      self->_needsAWDLRequestTimer = 0;
    }

LABEL_21:
    [(RPRemoteDisplayDaemon *)self _update:v18];
    goto LABEL_22;
  }

  if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_100129358();
  }

LABEL_22:
}

- (void)_btAddressMonitorEnsureStopped
{
  if (self->_btAdvAddrMonitor)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001293AC();
    }

    [(CUSystemMonitor *)self->_btAdvAddrMonitor invalidate];
    btAdvAddrMonitor = self->_btAdvAddrMonitor;
    self->_btAdvAddrMonitor = 0;
  }
}

- (void)_btAddressChanged
{
  obj = [(CUSystemMonitor *)self->_btAdvAddrMonitor rotatingIdentifierData];
  if ([obj length] == 6 && (-[NSData isEqual:](self->_btAdvAddrData, "isEqual:", obj) & 1) == 0)
  {
    objc_storeStrong(&self->_btAdvAddrData, obj);
    v3 = obj;
    bytes = [obj bytes];
    v4 = NSPrintF();
    btAdvAddrStr = self->_btAdvAddrStr;
    self->_btAdvAddrStr = v4;

    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001293C8(&self->_btAdvAddrStr);
    }

    deviceAuthTagStr = self->_deviceAuthTagStr;
    self->_deviceAuthTagStr = 0;

    [(RPRemoteDisplayDaemon *)self _update];
  }
}

- (BOOL)_deviceSupportsLaguna:(id)laguna
{
  lagunaCopy = laguna;
  model = [lagunaCopy model];
  v5 = GestaltProductTypeStringToDeviceClass();

  v6 = +[RPCloudDaemon sharedCloudDaemon];
  idsDeviceMap = [v6 idsDeviceMap];
  idsIdentifier = [lagunaCopy idsIdentifier];
  v9 = [idsDeviceMap objectForKeyedSubscript:idsIdentifier];

  if (v9)
  {
    [v9 operatingSystemVersion];
  }

  if ((v5 & 0xFFFFFFFD) == 1)
  {
    if (v5 == 3)
    {
      model2 = [lagunaCopy model];
      if (sub_10001AC60(model2) > 7)
      {
        v12 = 1;
      }

      else
      {
        model3 = [lagunaCopy model];
        v12 = sub_10001AD0C(model3) > 12;
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_findMatchingDeviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [(NSMutableDictionary *)self->_discoveredDevices allValues];
  v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 compareWithDeviceIdentifier:identifierCopy])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (RPRemoteDisplayDevice)dedicatedDevice
{
  if (!_os_feature_enabled_impl())
  {
    v9 = 0;
    goto LABEL_15;
  }

  v2 = objc_alloc_init(CUKeychainItem);
  [v2 setAccessGroup:@"com.apple.rapport"];
  [v2 setSyncType:1];
  [v2 setType:@"RPIdentity-PairedDevice"];
  [v2 setIdentifier:@"RPRemoteDisplayDevice-Dedicated"];
  v3 = objc_alloc_init(CUKeychainManager);
  v11 = 0;
  v4 = [v3 copyItemMatchingItem:v2 flags:0 error:&v11];
  v5 = v11;
  v6 = v5;
  if (!v4)
  {
    if ([v5 code] != -25300 && dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_10012943C();
    }

    goto LABEL_13;
  }

  v7 = [RPRemoteDisplayDevice alloc];
  metadata = [v4 metadata];
  v9 = [v7 initWithKeychainDictionaryRepresentation:metadata];

  if (!v9)
  {
    if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100129408();
    }

LABEL_13:
    v9 = 0;
  }

LABEL_15:

  return v9;
}

- (void)saveDedicatedDevice:(id)device
{
  deviceCopy = device;
  if (_os_feature_enabled_impl())
  {
    dedicatedDevice = [(RPRemoteDisplayDaemon *)self dedicatedDevice];
    v6 = dedicatedDevice;
    if (dedicatedDevice == deviceCopy || ([dedicatedDevice isEqualToDevice:deviceCopy] & 1) != 0)
    {
LABEL_42:

      goto LABEL_43;
    }

    v7 = objc_alloc_init(CUKeychainManager);
    v8 = objc_alloc_init(CUKeychainItem);
    [v8 setAccessGroup:@"com.apple.rapport"];
    v24 = v7;
    v25 = v6;
    if (deviceCopy)
    {
      [v8 setAccessibleType:7];
      [v8 setInvisible:1];
      [v8 setSyncType:1];
      [v8 setType:@"RPIdentity-PairedDevice"];
      [v8 setIdentifier:@"RPRemoteDisplayDevice-Dedicated"];
      keychainDictionaryRepresentation = [deviceCopy keychainDictionaryRepresentation];
      [v8 setMetadata:keychainDictionaryRepresentation];

      v31 = 0;
      [v7 addOrUpdateOrReAddItem:v8 logCategory:&dword_1001D4BA0 logLabel:@"DedicatedDevice" error:&v31];
      v10 = v31;
      if (!v10)
      {
        if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
        {
          sub_10012947C();
        }

        goto LABEL_25;
      }

      if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        v22 = v8;
        v23 = v10;
LABEL_13:
        LogPrintF();
      }
    }

    else
    {
      [v8 setSyncType:1];
      [v8 setType:@"RPIdentity-PairedDevice"];
      [v8 setIdentifier:@"RPRemoteDisplayDevice-Dedicated"];
      v30 = 0;
      [v7 removeItemMatchingItem:v8 error:&v30];
      v10 = v30;
      if (!v10)
      {
        if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001294B0();
        }

        goto LABEL_25;
      }

      if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        v22 = v8;
        v23 = v10;
        goto LABEL_13;
      }
    }

LABEL_25:

    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001294E4();
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = self->_xpcConnections;
    v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v26 + 1) + 8 * i);
          activatedDiscovery = [v16 activatedDiscovery];

          if (activatedDiscovery)
          {
            xpcCnx = [v16 xpcCnx];
            v19 = [xpcCnx valueForEntitlement:@"com.apple.RemoteDisplay.Dedicated"];

            if (v19)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if ([v19 BOOLValue])
                {
                  xpcCnx2 = [v16 xpcCnx];
                  remoteObjectProxy = [xpcCnx2 remoteObjectProxy];
                  [remoteObjectProxy remoteDisplayDedicatedDeviceChanged:deviceCopy];
                }
              }
            }
          }
        }

        v13 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v13);
    }

    v6 = v25;
    goto LABEL_42;
  }

LABEL_43:
}

- (void)_stopPairingServer
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_100129588();
  }

  awdlPairingID = self->_awdlPairingID;
  self->_awdlPairingID = 0;

  [(RPRemoteDisplayDaemon *)self _update];
}

- (id)_acquireRBSAssertionForEntry:(id)entry error:(id *)error
{
  entryCopy = entry;
  angelJobLabel = [entryCopy angelJobLabel];
  if (angelJobLabel && (v7 = angelJobLabel, [entryCopy angelAssertionName], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    angelJobLabel2 = [entryCopy angelJobLabel];
    v10 = [RBSProcessIdentity identityForAngelJobLabel:angelJobLabel2];
    v11 = [RBSTarget targetWithProcessIdentity:v10];

    angelAssertionName = [entryCopy angelAssertionName];
    v13 = [RBSDomainAttribute attributeWithDomain:@"com.apple.rapportd" name:angelAssertionName];

    v14 = [RBSAssertion alloc];
    v22 = v13;
    v15 = [NSArray arrayWithObjects:&v22 count:1];
    v16 = [v14 initWithExplanation:@"Rapport remote display" target:v11 attributes:v15];

    v21 = 0;
    v17 = [v16 acquireWithError:&v21];
    v18 = v21;
    if (v17)
    {
      v19 = v16;
    }

    else
    {
      if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001295A4(entryCopy);
      }

      RPErrorF();
      *error = v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)_scheduleCameraCapabilitiesRequest:(id)request interval:(unint64_t)interval
{
  requestCopy = request;
  cameraCapabilitiesRefetchTimer = [requestCopy cameraCapabilitiesRefetchTimer];

  if (!cameraCapabilitiesRefetchTimer)
  {
    if (!interval)
    {
      prefCameraCapabilitiesRetrySeconds = self->_prefCameraCapabilitiesRetrySeconds;
    }

    v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    [requestCopy setCameraCapabilitiesRefetchTimer:v9];

    cameraCapabilitiesRefetchTimer2 = [requestCopy cameraCapabilitiesRefetchTimer];
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_1000B1A60;
    v17 = &unk_1001AB488;
    v11 = requestCopy;
    v18 = v11;
    selfCopy = self;
    dispatch_source_set_event_handler(cameraCapabilitiesRefetchTimer2, &v14);

    cameraCapabilitiesRefetchTimer3 = [v11 cameraCapabilitiesRefetchTimer];
    CUDispatchTimerSet();

    cameraCapabilitiesRefetchTimer4 = [v11 cameraCapabilitiesRefetchTimer];
    dispatch_activate(cameraCapabilitiesRefetchTimer4);
  }
}

- (void)_receivedCameraCapabilitiesMessage:(id)message fromDevice:(id)device isFirstUpdate:(BOOL)update
{
  updateCopy = update;
  messageCopy = message;
  deviceCopy = device;
  v33 = 0;
  CFDictionaryGetTypeID();
  v10 = CFDictionaryGetTypedValue();
  v28 = messageCopy;
  v27 = updateCopy;
  if (v10)
  {
    v11 = v10;
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      identifier = [deviceCopy identifier];
      v26 = identifier;
      LogPrintF();
LABEL_8:
    }
  }

  else
  {
    if (dword_1001D4BA0 <= 50 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      identifier = [deviceCopy identifier];
      v26 = identifier;
      LogPrintF();
      v11 = &__NSDictionary0__struct;
      goto LABEL_8;
    }

    v11 = &__NSDictionary0__struct;
  }

  [deviceCopy setCameraCapabilities:{v11, v26}];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  selfCopy = self;
  v14 = self->_xpcConnections;
  v15 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v29 + 1) + 8 * i);
        activatedDiscovery = [v19 activatedDiscovery];
        v21 = [activatedDiscovery shouldReportDevice:deviceCopy];

        if (v21)
        {
          xpcCnx = [v19 xpcCnx];
          remoteObjectProxy = [xpcCnx remoteObjectProxy];
          [remoteObjectProxy remoteDisplayChangedDevice:deviceCopy changes:2];
        }
      }

      v16 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v16);
  }

  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_100129600(v27, deviceCopy, selfCopy);
  }

  if (v27 && ([deviceCopy statusFlags] & 0x2000000000) != 0)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100129688(selfCopy);
    }

    deviceSessionPaired = selfCopy->_deviceSessionPaired;
    selfCopy->_deviceSessionPaired = 0;

    identifier2 = [deviceCopy identifier];
    [(RPRemoteDisplayDaemon *)selfCopy _changeDiscoverySessionStateForDevice:identifier2 startReason:selfCopy->_guestPairingStartReason];
  }
}

- (void)_receivedCameraExitEvent:(id)event from:(id)from
{
  fromCopy = from;
  eventCopy = event;
  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();

  if ([v8 length])
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      v12 = v8;
      v14 = fromCopy;
      LogPrintF();
    }

    if ([v8 isEqualToString:{@"User disconnect", v12, v14}])
    {
      dedicatedDevice = [(RPRemoteDisplayDaemon *)self dedicatedDevice];
      idsDeviceIdentifier = [dedicatedDevice idsDeviceIdentifier];
      v11 = [fromCopy compareWithDeviceIdentifier:idsDeviceIdentifier];

      if (v11)
      {
        if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
          [(RPRemoteDisplayDaemon *)self saveDedicatedDevice:0, v8, fromCopy];
        }

        else
        {
          [(RPRemoteDisplayDaemon *)self saveDedicatedDevice:0, v13, v15];
        }
      }
    }

    if ([fromCopy compareWithDeviceIdentifier:self->_deviceConfirmedIdentifier])
    {
      if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_10012970C();
      }

      [(RPRemoteDisplayDaemon *)self _changeDiscoverySessionStateForDevice:0 startReason:0];
    }

    else if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001296CC();
    }
  }

  else if (dword_1001D4BA0 <= 50 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10012974C();
  }
}

- (void)_registerForIncomingMessages
{
  if (!self->_clientIncomingMessageCLinkClient)
  {
    v8[10] = v2;
    v8[11] = v3;
    v5 = objc_alloc_init(RPCompanionLinkClient);
    clientIncomingMessageCLinkClient = self->_clientIncomingMessageCLinkClient;
    self->_clientIncomingMessageCLinkClient = v5;
    v7 = v5;

    [(RPCompanionLinkClient *)v7 setDispatchQueue:self->_dispatchQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000B20FC;
    v8[3] = &unk_1001AAA40;
    v8[4] = v7;
    v8[5] = self;
    [(RPCompanionLinkClient *)v7 activateWithCompletion:v8];
  }
}

- (void)_requestCameraCapabilitiesForDevice:(id)device
{
  deviceCopy = device;
  DeviceClass = GestaltGetDeviceClass();
  v6 = DeviceClass;
  if (DeviceClass == 100 || DeviceClass == 4)
  {
    cameraCapabilities = [deviceCopy cameraCapabilities];

    if (cameraCapabilities || ([deviceCopy cameraCapabilityRequestIsActive] & 1) != 0 || (objc_msgSend(deviceCopy, "cameraCapabilitiesRefetchTimer"), v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      if (dword_1001D4BA0 <= 10 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001299E0(deviceCopy);
      }
    }

    else
    {
      idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];
      if (idsDeviceIdentifier)
      {
        v10 = +[RPCloudDaemon sharedCloudDaemon];
        idsDeviceMap = [v10 idsDeviceMap];
        v12 = [idsDeviceMap objectForKeyedSubscript:idsDeviceIdentifier];

        if (v12 || ([deviceCopy statusFlags] & 0x3000000000) != 0)
        {
          modelIdentifier = [v12 modelIdentifier];
          v14 = modelIdentifier;
          if (modelIdentifier)
          {
            model = modelIdentifier;
          }

          else
          {
            model = [deviceCopy model];
          }

          v16 = model;

          v27 = 0;
          v28 = 0;
          v29 = 0;
          if (v12)
          {
            [v12 operatingSystemVersion];
          }

          v17 = GestaltProductTypeStringToDeviceClass();
          if ((v17 | 2) == 3)
          {
            v18 = v6 == 100 && v17 == 1;
            v19 = !v18;
            if (v6 == 4 || !v19)
            {
              if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
              {
                sub_100129920();
              }

              idsDeviceIdentifier2 = [deviceCopy idsDeviceIdentifier];
              [deviceCopy setCameraCapabilityRequestIsActive:1];
              v21 = objc_alloc_init(RPCompanionLinkClient);
              v22 = objc_alloc_init(RPCompanionLinkDevice);
              [v22 setIdentifier:idsDeviceIdentifier2];
              [v21 setDispatchQueue:self->_dispatchQueue];
              [v21 setDestinationDevice:v22];
              [v21 setControlFlags:6];
              v23[0] = _NSConcreteStackBlock;
              v23[1] = 3221225472;
              v23[2] = sub_1000B2A00;
              v23[3] = &unk_1001AEFD0;
              v23[4] = v21;
              v24 = deviceCopy;
              selfCopy = self;
              v26 = idsDeviceIdentifier2;
              [v21 activateWithCompletion:v23];
            }
          }
        }

        else if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
        {
          sub_100129960();
        }
      }

      else if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001299A0();
      }
    }
  }
}

- (void)_clearCameraCapabilitiesUpdateCache
{
  allValues = [(NSMutableDictionary *)self->_cameraCapabilitiesUpdateSendMap allValues];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v9 + 1) + 8 * v7) invalidate];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_cameraCapabilitiesUpdateSendMap removeAllObjects];
  cameraCapabilitiesUpdateSendMap = self->_cameraCapabilitiesUpdateSendMap;
  self->_cameraCapabilitiesUpdateSendMap = 0;
}

- (void)_cameraCapabilitiesChanged:(id)changed
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B31C8;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_updateCameraCapabilities
{
  v3 = +[AVCaptureDevice continuityCaptureCameraCapabilities];
  if (!v3)
  {
    if (dword_1001D4BA0 <= 50 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100129C68();
    }

    v3 = &__NSDictionary0__struct;
  }

  if (off_1001D4D00[0]())
  {
    dedicatedDevice = [(RPRemoteDisplayDaemon *)self dedicatedDevice];

    if (dedicatedDevice)
    {
      if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_100129C88();
      }

      [(RPRemoteDisplayDaemon *)self saveDedicatedDevice:0];
    }
  }

  cameraCapabilities = self->_cameraCapabilities;
  self->_cameraCapabilities = v3;
}

- (void)_postNotificationForWombatActivity:(unsigned int)activity
{
  if (dword_1001D4C28 == -1)
  {
    notify_register_check("com.apple.rapport.wombat-activity", &dword_1001D4C28);
  }

  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_100129E0C(activity);
  }

  notify_set_state(dword_1001D4C28, activity);

  notify_post("com.apple.rapport.wombat-activity");
}

- (void)_registerForWombatStateNotifications
{
  if (self->_wombatStateReadyToken == -1)
  {
    if (dword_1001D4BA0 <= 20 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100129E6C();
    }

    dispatchQueue = self->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000B3B4C;
    handler[3] = &unk_1001AAFE8;
    handler[4] = self;
    notify_register_dispatch("com.apple.sharing.wombat-state", &self->_wombatStateReadyToken, dispatchQueue, handler);
    wombatStateReadyToken = self->_wombatStateReadyToken;
    state64 = 0;
    notify_get_state(wombatStateReadyToken, &state64);
    wombatState = state64;
    self->_wombatState = state64;
    if (dword_1001D4BA0 <= 30)
    {
      if (dword_1001D4BA0 != -1 || (v7 = _LogCategory_Initialize(), wombatState = self->_wombatState, v7))
      {
        if (wombatState > 3)
        {
          v6 = "?";
        }

        else
        {
          v6 = (&off_1001AF2B0)[wombatState];
        }

        v8 = v6;
        v9 = wombatState;
        LogPrintF();
        wombatState = self->_wombatState;
      }
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000B3CCC;
    v10[3] = &unk_1001AEDB8;
    v10[4] = self;
    [(RPRemoteDisplayDaemon *)self _bluetoothUseCaseFromWombatState:wombatState resultBlock:v10, v8, v9];
  }

  [(RPRemoteDisplayDaemon *)self _postNotificationForWombatActivity:5];
}

- (void)_unregisterWombatStateNotifications
{
  if (self->_wombatStateReadyToken != -1)
  {
    if (dword_1001D4BA0 <= 20 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100129EF0();
    }

    notify_cancel(self->_wombatStateReadyToken);
    self->_wombatStateReadyToken = -1;
  }
}

- (BOOL)_onenessEnabled
{
  if (GestaltGetDeviceClass() != 1)
  {
    return 0;
  }

  authenticationManager = self->_authenticationManager;
  if (!authenticationManager)
  {
    v4 = [objc_alloc(off_1001D4C30()) initWithQueue:self->_dispatchQueue];
    v5 = self->_authenticationManager;
    self->_authenticationManager = v4;

    [(RPRemoteDisplayDaemon *)self _startObservingOnenessEnabledState];
    authenticationManager = self->_authenticationManager;
  }

  v6 = [(SFAuthenticationManager *)authenticationManager isEnabledForType:5];
  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_100129F0C();
  }

  return v6;
}

- (void)_startObservingOnenessEnabledState
{
  if (self->_authenticationManager)
  {
    if (dword_1001D4BA0 <= 20 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100129F64();
    }

    authenticationManager = self->_authenticationManager;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000B3F44;
    v4[3] = &unk_1001AA970;
    v4[4] = self;
    [(SFAuthenticationManager *)authenticationManager startObservingForAuthenticationStateChanges:v4 queue:self->_dispatchQueue];
  }
}

- (void)_stopObservingOnenessEnabledState
{
  if (self->_authenticationManager)
  {
    if (dword_1001D4BA0 <= 20 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100129F9C();
    }

    [(SFAuthenticationManager *)self->_authenticationManager stopObservingForAuthenticationStateChanges];
    wombatState = self->_wombatState;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000B4154;
    v4[3] = &unk_1001AEDB8;
    v4[4] = self;
    [(RPRemoteDisplayDaemon *)self _bluetoothUseCaseFromWombatState:wombatState resultBlock:v4];
  }
}

- (void)_powerAssertionEnsureHeld
{
  if (!self->_powerAssertion)
  {
    v4[0] = @"AssertType";
    v4[1] = @"AssertLevel";
    v5[0] = @"PreventUserIdleSystemSleep";
    v5[1] = &off_1001B8020;
    v4[2] = @"AssertName";
    v4[3] = @"TimeoutSeconds";
    v5[2] = @"com.apple.rapport.RPRemoteDisplayDaemon.Wombat";
    v5[3] = &off_1001B8038;
    v4[4] = @"TimeoutAction";
    v5[4] = @"TimeoutActionTurnOff";
    p_powerAssertion = &self->_powerAssertion;
    v3 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:5];
    if (IOPMAssertionCreateWithProperties(v3, p_powerAssertion) || !*p_powerAssertion)
    {
      if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_100129FEC();
      }

      *p_powerAssertion = 0;
    }

    else if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100129FB8();
    }
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v6 = [[RPRemoteDisplayXPCConnection alloc] initWithDaemon:self xpcCnx:connectionCopy];
  [(RPRemoteDisplayXPCConnection *)v6 setDispatchQueue:self->_dispatchQueue];
  ++self->_xpcLastID;
  [(RPRemoteDisplayXPCConnection *)v6 setXpcID:?];
  xpcConnections = self->_xpcConnections;
  if (!xpcConnections)
  {
    v8 = objc_alloc_init(NSMutableSet);
    v9 = self->_xpcConnections;
    self->_xpcConnections = v8;

    xpcConnections = self->_xpcConnections;
  }

  [(NSMutableSet *)xpcConnections addObject:v6];
  [connectionCopy _setQueue:self->_dispatchQueue];
  v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RPRemoteDisplayXPCDaemonInterface];
  [connectionCopy setExportedInterface:v10];

  [connectionCopy setExportedObject:v6];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1000B451C;
  v17 = &unk_1001AB488;
  selfCopy = self;
  v11 = v6;
  v19 = v11;
  [connectionCopy setInvalidationHandler:&v14];
  selfCopy = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RPRemoteDisplayXPCClientInterface, v14, v15, v16, v17, selfCopy];
  [connectionCopy setRemoteObjectInterface:selfCopy];

  [connectionCopy resume];
  if (dword_1001D4BA0 <= 20 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10012A03C(connectionCopy);
  }

  return 1;
}

- (void)_handleServerActivation:(id)activation
{
  activationCopy = activation;
  activatedServer = [activationCopy activatedServer];
  serviceType = [activatedServer serviceType];

  activatedServerXPCCnxMap = self->_activatedServerXPCCnxMap;
  if (!activatedServerXPCCnxMap)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = self->_activatedServerXPCCnxMap;
    self->_activatedServerXPCCnxMap = v7;

    activatedServerXPCCnxMap = self->_activatedServerXPCCnxMap;
  }

  if (serviceType)
  {
    v9 = serviceType;
  }

  else
  {
    v9 = @"_rdlink._tcp";
  }

  [(NSMutableDictionary *)activatedServerXPCCnxMap setObject:activationCopy forKeyedSubscript:v9];
}

- (void)_deliverBufferedConnectionsToServer:(id)server
{
  serverCopy = server;
  activatedServer = [serverCopy activatedServer];
  serviceType = [activatedServer serviceType];

  v6 = [(NSMutableSet *)self->_bufferedConnections copy];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v8)
  {
    goto LABEL_22;
  }

  v9 = *v30;
  while (2)
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v30 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v29 + 1) + 8 * i);
      serviceType2 = [v11 serviceType];
      v13 = serviceType;
      v14 = v13;
      if (serviceType2 == v13)
      {

LABEL_15:
        v25 = 0;
        v26 = &v25;
        v27 = 0x2020000000;
        v28 = 0;
        tcpServerConnections = self->_tcpServerConnections;
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_1000B48BC;
        v24[3] = &unk_1001AF020;
        v24[4] = v11;
        v24[5] = &v25;
        [(NSMutableDictionary *)tcpServerConnections enumerateKeysAndObjectsUsingBlock:v24];
        v17 = v26;
        v18 = *(v26 + 6);
        if (!v18)
        {
LABEL_21:
          _Block_object_dispose(&v25, 8);
          goto LABEL_22;
        }

        if (dword_1001D4BA0 <= 30)
        {
          if (dword_1001D4BA0 == -1)
          {
            v19 = _LogCategory_Initialize();
            v17 = v26;
            if (!v19)
            {
              goto LABEL_20;
            }

            v18 = *(v26 + 6);
          }

          v21 = v11;
          v22 = v18;
          LogPrintF();
          v17 = v26;
        }

LABEL_20:
        v20 = [NSNumber numberWithUnsignedInt:*(v17 + 6), v21, v22];
        [(RPRemoteDisplayDaemon *)self _serverHandleSessionStartWithID:v20 netCnx:v11 completion:0];

        goto LABEL_21;
      }

      if ((serviceType == 0) != (serviceType2 != 0))
      {
        v15 = [serviceType2 isEqual:v13];

        if (v15)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }
    }

    v8 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_22:
}

- (void)_xpcConnectionInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  activatedServer = [invalidatedCopy activatedServer];
  serviceType = [activatedServer serviceType];

  if (serviceType)
  {
    v6 = serviceType;
  }

  else
  {
    v6 = @"_rdlink._tcp";
  }

  [invalidatedCopy connectionInvalidated];
  [(NSMutableDictionary *)self->_activatedServerXPCCnxMap setObject:0 forKeyedSubscript:v6];
  [(NSMutableSet *)self->_xpcConnections removeObject:invalidatedCopy];
  [(RPRemoteDisplayDaemon *)self _updateForXPCClientChange];
}

- (void)addNeedsAWDLPeer:(id)peer
{
  peerCopy = peer;
  identifier = [peerCopy identifier];
  if (identifier || ([peerCopy idsDeviceIdentifier], (identifier = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = identifier;
    needsAWDLNewPeers = self->_needsAWDLNewPeers;
    if (!needsAWDLNewPeers)
    {
      v7 = objc_opt_new();
      v8 = self->_needsAWDLNewPeers;
      self->_needsAWDLNewPeers = v7;

      needsAWDLNewPeers = self->_needsAWDLNewPeers;
    }

    [(NSMutableSet *)needsAWDLNewPeers addObject:v5];
  }

  else
  {
    sub_10012A080();
  }
}

- (void)_requestConfirmationFromDevicesMatching:(id)matching forPairingType:(unsigned int)type
{
  matchingCopy = matching;
  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10012A0FC();
  }

  [(RPRemoteDisplayDaemon *)self _changeDiscoverySessionStateForDevice:0 startReason:0];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B4E30;
  block[3] = &unk_1001ABA58;
  block[4] = self;
  v10 = matchingCopy;
  typeCopy = type;
  v8 = matchingCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_handleConfirmationResult:(id)result fromDevice:(id)device
{
  resultCopy = result;
  deviceCopy = device;
  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10012A16C();
  }

  CFDictionaryGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  CFDictionaryGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  v10 = NSDictionaryGetNSNumber();
  dedicatedDevice = [(RPRemoteDisplayDaemon *)self dedicatedDevice];
  v12 = dedicatedDevice;
  if (!v10)
  {
    sub_10012A328();
    goto LABEL_40;
  }

  if (self->_personSelected)
  {
    goto LABEL_6;
  }

  if (dedicatedDevice)
  {
    v16 = dedicatedDevice;
    idsDeviceIdentifier = [dedicatedDevice idsDeviceIdentifier];
    v18 = deviceCopy;
    v19 = v18;
    if (idsDeviceIdentifier == v18)
    {

      v12 = v16;
      goto LABEL_6;
    }

    if ((v18 == 0) != (idsDeviceIdentifier != 0))
    {
      v35 = [idsDeviceIdentifier isEqual:v18];

      v12 = v16;
      if ((v35 & 1) == 0)
      {
        goto LABEL_43;
      }

LABEL_6:
      if (self->_personConfirmationSessionID)
      {
        v34 = v12;
        unsignedIntegerValue = [v10 unsignedIntegerValue];
        if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
        {
          sub_10012A1AC(unsignedIntegerValue);
        }

        v14 = [(RPRemoteDisplayDaemon *)self _findMatchingDeviceWithIdentifier:deviceCopy];
        if (unsignedIntegerValue == 1)
        {
          [(RPRemoteDisplayDaemon *)self _sendConfirmationCancelToAllDevices];
          if (v14)
          {
            if (self->_selectedPersonPairingType == 2)
            {
              v15 = 3;
            }

            else
            {
              v15 = 1;
            }

            [(RPRemoteDisplayDaemon *)self _processDiscoverySessionStateChangeForDevice:deviceCopy startReason:v15];
          }

          else
          {
            if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
            {
              sub_10012A26C();
            }

            personSelected = self->_personSelected;
            self->_personSelected = 0;

            self->_selectedPersonPairingType = 0;
          }
        }

        else if (![(NSMutableDictionary *)self->_personConfirmationClientMap count])
        {
          v31 = v8;
          v32 = deviceCopy;
          v33 = resultCopy;
          if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
          {
            sub_10012A20C(&self->_personSelected);
          }

          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v20 = self->_xpcConnections;
          v21 = [(NSMutableSet *)v20 countByEnumeratingWithState:&v36 objects:v40 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v37;
            do
            {
              for (i = 0; i != v22; i = i + 1)
              {
                if (*v37 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(&v36 + 1) + 8 * i);
                activatedDiscovery = [v25 activatedDiscovery];

                if (activatedDiscovery)
                {
                  xpcCnx = [v25 xpcCnx];
                  remoteObjectProxy = [xpcCnx remoteObjectProxy];
                  [remoteObjectProxy remoteDisplayPersonDeclined];
                }
              }

              v22 = [(NSMutableSet *)v20 countByEnumeratingWithState:&v36 objects:v40 count:16];
            }

            while (v22);
          }

          v29 = self->_personSelected;
          self->_personSelected = 0;

          self->_selectedPersonPairingType = 0;
          deviceCopy = v32;
          resultCopy = v33;
          v8 = v31;
        }

        v12 = v34;
      }

      else
      {
        sub_10012A2AC();
      }

      goto LABEL_40;
    }

    v12 = v16;
  }

LABEL_43:
  if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10012A30C();
  }

LABEL_40:
}

- (void)_sendConfirmationCancelToAllDevices
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  personConfirmationClientMap = self->_personConfirmationClientMap;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B59C0;
  v6[3] = &unk_1001AF110;
  v6[4] = self;
  [(NSMutableDictionary *)personConfirmationClientMap enumerateKeysAndObjectsUsingBlock:v6];
  [(NSMutableDictionary *)self->_personConfirmationClientMap removeAllObjects];
  v4 = self->_personConfirmationClientMap;
  self->_personConfirmationClientMap = 0;

  personConfirmationSessionID = self->_personConfirmationSessionID;
  self->_personConfirmationSessionID = 0;
}

- (void)_clearConfirmationClientCache
{
  allValues = [(NSMutableDictionary *)self->_personConfirmationClientMap allValues];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v10 + 1) + 8 * v7) invalidate];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_personConfirmationClientMap removeAllObjects];
  personConfirmationClientMap = self->_personConfirmationClientMap;
  self->_personConfirmationClientMap = 0;

  personConfirmationSessionID = self->_personConfirmationSessionID;
  self->_personConfirmationSessionID = 0;
}

- (void)_sendDiscoverySessionExitWithReason:(id)reason
{
  reasonCopy = reason;
  if (self->_deviceConfirmedIdentifier)
  {
    v5 = [(RPRemoteDisplayDaemon *)self _findMatchingDeviceWithIdentifier:?];
    v6 = v5;
    if (v5 && [v5 inDiscoverySession])
    {
      if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        v13 = reasonCopy;
        v14 = v6;
        LogPrintF();
      }

      idsDeviceIdentifier = [v6 idsDeviceIdentifier];
      v8 = objc_alloc_init(RPCompanionLinkClient);
      v9 = objc_alloc_init(RPCompanionLinkDevice);
      [v9 setIdentifier:idsDeviceIdentifier];
      [v8 setDispatchQueue:self->_dispatchQueue];
      [v8 setDestinationDevice:v9];
      [v8 setControlFlags:2097162];
      v10 = +[NSMutableDictionary dictionary];
      identifier = [(RPCompanionLinkDevice *)self->_localDeviceInfo identifier];
      [v10 setObject:identifier forKeyedSubscript:@"_i"];

      [v10 setObject:reasonCopy forKeyedSubscript:@"_cExitReson"];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000B5F24;
      v15[3] = &unk_1001AEFD0;
      v15[4] = v8;
      v15[5] = idsDeviceIdentifier;
      v16 = v10;
      selfCopy = self;
      v12 = v10;
      [v8 activateWithCompletion:v15];
    }
  }
}

- (void)setDeviceConfirmedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    deviceConfirmedIdentifier = self->_deviceConfirmedIdentifier;
    LogPrintF();
  }

  v5 = self->_deviceConfirmedIdentifier;
  self->_deviceConfirmedIdentifier = identifierCopy;
}

- (void)_startDiscoverySessionExpirationTimer
{
  discoverySessionExpirationTimer = self->_discoverySessionExpirationTimer;
  if (discoverySessionExpirationTimer)
  {
    v4 = discoverySessionExpirationTimer;
    dispatch_source_cancel(v4);
    v5 = self->_discoverySessionExpirationTimer;
    self->_discoverySessionExpirationTimer = 0;
  }

  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  v7 = self->_discoverySessionExpirationTimer;
  self->_discoverySessionExpirationTimer = v6;

  v8 = self->_discoverySessionExpirationTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000B6784;
  handler[3] = &unk_1001AA970;
  handler[4] = self;
  dispatch_source_set_event_handler(v8, handler);
  v9 = self->_discoverySessionExpirationTimer;
  prefDiscoverySessionExpirationSeconds = self->_prefDiscoverySessionExpirationSeconds;
  CUDispatchTimerSet();
  dispatch_activate(self->_discoverySessionExpirationTimer);
}

- (void)_startInSessionDeviceLostTimer
{
  if (self->_deviceConfirmedIdentifier)
  {
    inSessionDeviceLost = self->_inSessionDeviceLost;
    if (inSessionDeviceLost)
    {
      v4 = inSessionDeviceLost;
      dispatch_source_cancel(v4);
      v5 = self->_inSessionDeviceLost;
      self->_inSessionDeviceLost = 0;
    }

    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_10012A55C(&self->_deviceConfirmedIdentifier);
    }

    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    v7 = self->_inSessionDeviceLost;
    self->_inSessionDeviceLost = v6;

    v8 = self->_inSessionDeviceLost;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000B6948;
    handler[3] = &unk_1001AA970;
    handler[4] = self;
    dispatch_source_set_event_handler(v8, handler);
    v9 = self->_inSessionDeviceLost;
    prefInSessionDeviceLostSeconds = self->_prefInSessionDeviceLostSeconds;
    CUDispatchTimerSet();
    dispatch_activate(self->_inSessionDeviceLost);
  }
}

- (void)_clientBLENearbyActionV2AdvertiserEnsureStarted
{
  if (!self->_bleNearbyActionV2Device)
  {
    return;
  }

  if (self->_bleNearbyActionV2Advertiser)
  {

    [(RPRemoteDisplayDaemon *)self _clientSendNeedsAWDLOverWiFi:1];
    return;
  }

  if (dword_1001D4BA0 <= 30)
  {
    if (dword_1001D4BA0 != -1)
    {
LABEL_8:
      LogPrintF();
      goto LABEL_10;
    }

    if (_LogCategory_Initialize())
    {
      bleNearbyActionV2Device = self->_bleNearbyActionV2Device;
      goto LABEL_8;
    }
  }

LABEL_10:
  v3 = sub_1000AA650();
  v4 = sub_1000AA650();
  v5 = os_signpost_id_make_with_pointer(v4, self);

  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    v6 = self->_bleNearbyActionV2Device;
    *buf = 138412290;
    v14 = v6;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, "BLE NearbyActionV2 advertisement", "BLE NearbyActionV2 advertiser start for device %@\n signpost_begin:begin_time", buf, 0xCu);
  }

  v7 = objc_alloc_init(RPNearbyActionV2Advertiser);
  bleNearbyActionV2Advertiser = self->_bleNearbyActionV2Advertiser;
  self->_bleNearbyActionV2Advertiser = v7;

  [(RPNearbyActionV2Advertiser *)self->_bleNearbyActionV2Advertiser setDispatchQueue:self->_dispatchQueue];
  bleTargetData = [(RPRemoteDisplayDevice *)self->_bleNearbyActionV2Device bleTargetData];
  [(RPNearbyActionV2Advertiser *)self->_bleNearbyActionV2Advertiser setTargetData:bleTargetData];

  [(RPNearbyActionV2Advertiser *)self->_bleNearbyActionV2Advertiser setNearbyActionType:[(RPRemoteDisplayDevice *)self->_bleNearbyActionV2Device nearbyActionV2Type]];
  v10 = self->_bleNearbyActionV2Advertiser;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000AAFB8;
  v12[3] = &unk_1001AB2C8;
  v12[4] = self;
  [(RPNearbyActionV2Advertiser *)v10 activateWithCompletion:v12];
  [(RPRemoteDisplayDaemon *)self _clientSendNeedsAWDLOverWiFi:1];
}

- (void)_sendCameraCapabilitiesUpdateEventForDevice:(id)device
{
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  uniqueIDOverride = [deviceCopy uniqueIDOverride];
  modelIdentifier = [deviceCopy modelIdentifier];
  v7 = GestaltProductTypeStringToDeviceClass();

  v22 = 0;
  v23 = 0;
  v24 = 0;
  if (deviceCopy)
  {
    [deviceCopy operatingSystemVersion];
  }

  if (uniqueIDOverride)
  {
    v8 = v7 == 100 || v7 == 4;
    if (v8 && DeviceOSVersionAtOrLater())
    {
      if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        v16 = deviceCopy;
        LogPrintF();
      }

      v9 = [(NSMutableDictionary *)self->_cameraCapabilitiesUpdateSendMap objectForKeyedSubscript:uniqueIDOverride, v16];
      v10 = v9;
      if (!v9)
      {
        v10 = objc_alloc_init(RPCompanionLinkClient);
        [v10 setDispatchQueue:self->_dispatchQueue];
        [v10 setControlFlags:6];
        cameraCapabilitiesUpdateSendMap = self->_cameraCapabilitiesUpdateSendMap;
        if (!cameraCapabilitiesUpdateSendMap)
        {
          v12 = objc_alloc_init(NSMutableDictionary);
          v13 = self->_cameraCapabilitiesUpdateSendMap;
          self->_cameraCapabilitiesUpdateSendMap = v12;

          cameraCapabilitiesUpdateSendMap = self->_cameraCapabilitiesUpdateSendMap;
        }

        [(NSMutableDictionary *)cameraCapabilitiesUpdateSendMap setObject:v10 forKeyedSubscript:uniqueIDOverride];
      }

      destinationDevice = [v10 destinationDevice];
      if (!destinationDevice)
      {
        destinationDevice = objc_alloc_init(RPCompanionLinkDevice);
        [destinationDevice setIdentifier:uniqueIDOverride];
        [v10 setDestinationDevice:destinationDevice];
      }

      if (!v9)
      {
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_1000B2E44;
        v18[3] = &unk_1001AEFF8;
        v19 = v10;
        selfCopy = self;
        v21 = uniqueIDOverride;
        [v19 activateWithCompletion:v18];
      }

      ++self->_cameraCapabilitiesUpdatesOutstanding;
      v15 = [NSDictionary dictionaryWithObject:self->_cameraCapabilities forKey:@"_cCap"];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000B2F08;
      v17[3] = &unk_1001AAA40;
      v17[4] = self;
      v17[5] = uniqueIDOverride;
      [v10 sendEventID:@"_camCapUpdate" event:v15 options:0 completion:v17];
    }
  }
}

@end