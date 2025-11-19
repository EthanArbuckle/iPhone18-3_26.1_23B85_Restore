@interface RPNearbyInvitationDaemon
+ (id)sharedInvitationDaemon;
- (BOOL)_clientBLENearbyActionAdvertiserShouldRun;
- (BOOL)_clientBLENearbyActionDiscoveryShouldRun;
- (BOOL)_clientBLEServerShouldRun;
- (BOOL)_serverBLEClientConnectionShouldStart;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (RPNearbyInvitationDaemon)init;
- (id)_findMatchingDeviceWithIdentifier:(id)a3;
- (id)_idleSessionConnection;
- (id)descriptionWithLevel:(int)a3;
- (void)_activate;
- (void)_bleClientConnectionEnded:(id)a3;
- (void)_bleClientConnectionStateChanged:(int)a3 cnx:(id)a4 sessionID:(id)a5;
- (void)_clientBLENearbyActionAdvertiserEnsureStarted;
- (void)_clientBLENearbyActionAdvertiserEnsureStopped;
- (void)_clientBLENearbyActionAdvertiserStartTimer;
- (void)_clientBLENearbyActionDisableDupeFilter;
- (void)_clientBLENearbyActionDiscoveryDeviceFound:(id)a3;
- (void)_clientBLENearbyActionDiscoveryDeviceLost:(id)a3;
- (void)_clientBLENearbyActionDiscoveryEnsureStarted;
- (void)_clientBLENearbyActionDiscoveryEnsureStopped;
- (void)_clientBLENearbyActionDiscoveryScanRateStartTimer;
- (void)_clientBLENearbyActionEnableDupeFilter;
- (void)_clientBLEServerEnsureStarted;
- (void)_clientBLEServerEnsureStopped;
- (void)_clientBLEServerHandleConnectionEnded:(id)a3;
- (void)_clientBLEServerHandleConnectionStarted:(id)a3;
- (void)_clientBLEServerHandleConnectionStateChange:(int)a3 cnx:(id)a4;
- (void)_clientEnsureStarted;
- (void)_clientEnsureStopped;
- (void)_clientProximityEstimatorEnsureStarted;
- (void)_clientProximityEstimatorEnsureStopped;
- (void)_clientReportFoundDevice:(id)a3;
- (void)_clientReportLostDevice:(id)a3;
- (void)_handleServerActivation:(id)a3;
- (void)_invalidate;
- (void)_invalidated;
- (void)_receivedEventID:(id)a3 event:(id)a4 options:(id)a5 xpcCnx:(id)a6 sessionID:(id)a7;
- (void)_receivedRequestID:(id)a3 request:(id)a4 options:(id)a5 responseHandler:(id)a6 xpcCnx:(id)a7 sessionID:(id)a8;
- (void)_serverBLEClientConnectionEnsureStarted;
- (void)_serverBLENearbyActionAdvertiserEnsureStarted;
- (void)_serverBLENearbyActionAdvertiserEnsureStopped;
- (void)_serverBLENearbyActionAdvertiserRestartTimer;
- (void)_serverBLENearbyActionDiscoveryDeviceFound:(id)a3;
- (void)_serverBLENearbyActionDiscoveryEnsureStarted;
- (void)_serverBLENearbyActionDiscoveryEnsureStopped;
- (void)_serverBLENearbyInfoDiscoveryDeviceFound:(id)a3;
- (void)_serverBLENearbyInfoDiscoveryDeviceLost:(id)a3;
- (void)_serverBLENearbyInfoDiscoveryEnsureStarted;
- (void)_serverBLENearbyInfoDiscoveryEnsureStopped;
- (void)_serverEnsureStarted;
- (void)_serverEnsureStopped;
- (void)_update;
- (void)_xpcConnectionInvalidated:(id)a3;
- (void)activate;
- (void)invalidate;
- (void)prefsChanged;
- (void)setBleDeviceAcceptedInvitations:(id)a3;
- (void)setBleDeviceWantingInvitations:(id)a3;
@end

@implementation RPNearbyInvitationDaemon

- (RPNearbyInvitationDaemon)init
{
  v6.receiver = self;
  v6.super_class = RPNearbyInvitationDaemon;
  v2 = [(RPNearbyInvitationDaemon *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    v4 = v3;
  }

  return v3;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005D5C8;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
  {
    sub_100119108();
  }

  RandomBytes();
  if (!self->_xpcListener)
  {
    if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_100119124();
    }

    v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.rapport.NearbyInvitation"];
    xpcListener = self->_xpcListener;
    self->_xpcListener = v3;

    [(NSXPCListener *)self->_xpcListener setDelegate:self];
    [(NSXPCListener *)self->_xpcListener _setQueue:self->_dispatchQueue];
    [(NSXPCListener *)self->_xpcListener resume];
  }

  [(RPNearbyInvitationDaemon *)self prefsChanged];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005D748;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_10011916C();
    }

    [(NSXPCListener *)self->_xpcListener invalidate];
    xpcListener = self->_xpcListener;
    self->_xpcListener = 0;

    [(CUSystemMonitor *)self->_systemMonitor invalidate];
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = 0;

    [(RPNearbyInvitationDaemon *)self _clientEnsureStopped];
    [(RPNearbyInvitationDaemon *)self _serverEnsureStopped];

    [(RPNearbyInvitationDaemon *)self _invalidated];
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled && !self->_invalidateDone && ![(NSMutableSet *)self->_xpcConnections count]&& !self->_xpcListener)
  {
    self->_invalidateDone = 1;
    if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_100119188();
    }
  }
}

- (void)prefsChanged
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  GestaltGetDeviceClass();
  v3 = CFPrefs_GetInt64() != 0;
  if (self->_prefClientEnabled != v3)
  {
    if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_1001191A4();
    }

    self->_prefClientEnabled = v3;
  }

  v4 = CFPrefs_GetInt64() != 0;
  if (self->_prefServerEnabled != v4)
  {
    if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_1001191FC();
    }

    self->_prefServerEnabled = v4;
  }

  v5 = CFPrefs_GetInt64() != 0;
  if (self->_prefGuestServerEnabled != v5)
  {
    if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_100119254();
    }

    self->_prefGuestServerEnabled = v5;
  }

  v6 = CFPrefs_GetInt64() != 0;
  if (self->_prefGuestClientEnabled != v6)
  {
    if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_1001192AC();
    }

    self->_prefGuestClientEnabled = v6;
  }

  v7 = CFPrefs_GetInt64() != 0;
  if (self->_prefServerRSSIDisabled != v7)
  {
    if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_100119304();
    }

    self->_prefServerRSSIDisabled = v7;
  }

  [(RPNearbyInvitationDaemon *)self _update];
}

+ (id)sharedInvitationDaemon
{
  if (qword_1001D61F0 != -1)
  {
    sub_10011935C();
  }

  v3 = qword_1001D61E8;

  return v3;
}

- (id)descriptionWithLevel:(int)a3
{
  NSAppendPrintF();

  return 0;
}

- (void)setBleDeviceWantingInvitations:(id)a3
{
  v4 = a3;
  v5 = self->_bleDeviceWantingInvitations;
  v6 = v4;
  v12 = v6;
  if (v5 == v6)
  {

LABEL_12:
    goto LABEL_13;
  }

  if ((v6 == 0) == (v5 != 0))
  {

LABEL_7:
    v8 = v12;
    if (dword_1001D3D90 <= 30)
    {
      if (dword_1001D3D90 != -1 || (v9 = _LogCategory_Initialize(), v8 = v12, v9))
      {
        bleDeviceWantingInvitations = self->_bleDeviceWantingInvitations;
        LogPrintF();
        v8 = v12;
      }
    }

    v10 = v8;
    v5 = self->_bleDeviceWantingInvitations;
    self->_bleDeviceWantingInvitations = v10;
    goto LABEL_12;
  }

  v7 = [(RPCompanionLinkDevice *)v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_13:
}

- (void)setBleDeviceAcceptedInvitations:(id)a3
{
  v4 = a3;
  v5 = self->_bleDeviceAcceptedInvitations;
  v6 = v4;
  v12 = v6;
  if (v5 == v6)
  {

LABEL_12:
    goto LABEL_13;
  }

  if ((v6 == 0) == (v5 != 0))
  {

LABEL_7:
    v8 = v12;
    if (dword_1001D3D90 <= 30)
    {
      if (dword_1001D3D90 != -1 || (v9 = _LogCategory_Initialize(), v8 = v12, v9))
      {
        bleDeviceAcceptedInvitations = self->_bleDeviceAcceptedInvitations;
        LogPrintF();
        v8 = v12;
      }
    }

    v10 = v8;
    v5 = self->_bleDeviceAcceptedInvitations;
    self->_bleDeviceAcceptedInvitations = v10;
    goto LABEL_12;
  }

  v7 = [(RPNearbyInvitationDevice *)v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_13:
}

- (void)_clientEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([(RPNearbyInvitationDaemon *)self _clientProximityEstimatorShouldRun])
  {
    [(RPNearbyInvitationDaemon *)self _clientProximityEstimatorEnsureStarted];
  }

  else
  {
    [(RPNearbyInvitationDaemon *)self _clientProximityEstimatorEnsureStopped];
  }

  if ([(RPNearbyInvitationDaemon *)self _clientBLENearbyActionDiscoveryShouldRun])
  {
    [(RPNearbyInvitationDaemon *)self _clientBLENearbyActionDiscoveryEnsureStarted];
  }

  else
  {
    [(RPNearbyInvitationDaemon *)self _clientBLENearbyActionDiscoveryEnsureStopped];
  }

  if ([(RPNearbyInvitationDaemon *)self _clientBLEServerShouldRun])
  {
    [(RPNearbyInvitationDaemon *)self _clientBLEServerEnsureStarted];
  }

  else
  {
    [(RPNearbyInvitationDaemon *)self _clientBLEServerEnsureStopped];
  }

  if ([(RPNearbyInvitationDaemon *)self _clientBLENearbyActionAdvertiserShouldRun])
  {

    [(RPNearbyInvitationDaemon *)self _clientBLENearbyActionAdvertiserEnsureStarted];
  }

  else
  {

    [(RPNearbyInvitationDaemon *)self _clientBLENearbyActionAdvertiserEnsureStopped];
  }
}

- (void)_clientEnsureStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(RPNearbyInvitationDaemon *)self _clientProximityEstimatorEnsureStopped];
  [(RPNearbyInvitationDaemon *)self _clientBLENearbyActionDiscoveryEnsureStopped];

  [(RPNearbyInvitationDaemon *)self _clientBLENearbyActionAdvertiserEnsureStopped];
}

- (BOOL)_clientBLENearbyActionDiscoveryShouldRun
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = [(CUSystemMonitor *)self->_systemMonitor screenOn];
  if (v3)
  {
    LOBYTE(v3) = [(NSMutableSet *)self->_activatedDiscoverySet count]!= 0;
  }

  return v3;
}

- (void)_clientBLENearbyActionDiscoveryEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_clientBLENearbyActionDiscovery)
  {
    if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_100119370();
    }

    v3 = objc_alloc_init(off_1001D3E00());
    clientBLENearbyActionDiscovery = self->_clientBLENearbyActionDiscovery;
    self->_clientBLENearbyActionDiscovery = v3;

    [(SFDeviceDiscovery *)self->_clientBLENearbyActionDiscovery setChangeFlags:1];
    [(SFDeviceDiscovery *)self->_clientBLENearbyActionDiscovery setDispatchQueue:self->_dispatchQueue];
    [(SFDeviceDiscovery *)self->_clientBLENearbyActionDiscovery setPurpose:@"RPNearbyInvitation"];
    [(SFDeviceDiscovery *)self->_clientBLENearbyActionDiscovery setRssiThreshold:-70];
    [(SFDeviceDiscovery *)self->_clientBLENearbyActionDiscovery setDiscoveryFlags:16];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10005E1B4;
    v9[3] = &unk_1001ACA90;
    v9[4] = self;
    [(SFDeviceDiscovery *)self->_clientBLENearbyActionDiscovery setDeviceFoundHandler:v9];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10005E1C0;
    v8[3] = &unk_1001ACA90;
    v8[4] = self;
    [(SFDeviceDiscovery *)self->_clientBLENearbyActionDiscovery setDeviceLostHandler:v8];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10005E1CC;
    v7[3] = &unk_1001ACAB8;
    v7[4] = self;
    [(SFDeviceDiscovery *)self->_clientBLENearbyActionDiscovery setDeviceChangedHandler:v7];
    [(SFDeviceDiscovery *)self->_clientBLENearbyActionDiscovery setInterruptionHandler:&stru_1001ACAD8];
    v5 = self->_clientBLENearbyActionDiscovery;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10005E224;
    v6[3] = &unk_1001AB2C8;
    v6[4] = self;
    [(SFDeviceDiscovery *)v5 activateWithCompletion:v6];
  }
}

- (void)_clientBLENearbyActionDiscoveryEnsureStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_clientBLENearbyActionDiscovery)
  {
    if (dword_1001D3D90 <= 50 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_100119404();
    }

    [(SFDeviceDiscovery *)self->_clientBLENearbyActionDiscovery invalidate];
    clientBLENearbyActionDiscovery = self->_clientBLENearbyActionDiscovery;
    self->_clientBLENearbyActionDiscovery = 0;
  }

  discoveredDevices = self->_discoveredDevices;
  self->_discoveredDevices = 0;

  clientNearbyActionDiscoveryTimer = self->_clientNearbyActionDiscoveryTimer;
  if (clientNearbyActionDiscoveryTimer)
  {
    v7 = clientNearbyActionDiscoveryTimer;
    dispatch_source_cancel(v7);
    v6 = self->_clientNearbyActionDiscoveryTimer;
    self->_clientNearbyActionDiscoveryTimer = 0;
  }
}

- (void)_clientBLENearbyActionDiscoveryDeviceFound:(id)a3
{
  v23 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = [v23 deviceActionType] == 84;
  v5 = v23;
  if (v4)
  {
    v6 = [v23 identifier];
    v7 = [v6 UUIDString];

    if (!v7)
    {
      sub_100119694();
      goto LABEL_39;
    }

    v8 = [v23 bleDevice];
    v9 = [v8 advertisementFields];
    CFDataGetTypeID();
    v10 = CFDictionaryGetTypedValue();

    if (v10)
    {
      v11 = +[RPIdentityDaemon sharedIdentityDaemon];
      v12 = [v11 identityOfSelfAndReturnError:0];

      v13 = [(CUSystemMonitor *)self->_systemMonitor bluetoothAddressData];
      v14 = [v12 authTagForData:v13 type:2 error:0];
      if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
      {
        sub_100119420(v23, v13);
      }

      if (memcmp([v14 bytes], objc_msgSend(v10, "bytes"), objc_msgSend(v10, "length")))
      {
        if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

LABEL_38:
LABEL_39:

        v5 = v23;
        goto LABEL_40;
      }
    }

    v15 = [(NSMutableDictionary *)self->_discoveredDevices objectForKeyedSubscript:v7];
    if (v15)
    {
      v12 = v15;
      v16 = [v15 bleDevice];
      v17 = [v16 isBLEDeviceReplaced];

      if (v17 && dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
      {
        sub_100119508(v12);
      }

      v18 = [v12 updateWithSFDevice:v23];
      if (v18)
      {
        v19 = v18;
        if ([v12 inBubble])
        {
          if (dword_1001D3D90 <= 10 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
          {
            sub_100119574();
          }

          [(RPNearbyInvitationDaemon *)self _clientReportChangedDevice:v12 changes:v19];
        }
      }

      if (([v12 inBubble] & 1) == 0)
      {
        [(RPNIProximityEstimator *)self->_proximityEstimator sendSampleForDevice:v23];
      }

      if (dword_1001D3D90 <= 10 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
      {
        sub_1001195D4();
      }
    }

    else
    {
      if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
      {
        sub_100119634();
      }

      v12 = objc_alloc_init(RPNearbyInvitationDevice);
      [v12 setIdentifier:v7];
      [v12 updateWithSFDevice:v23];
      discoveredDevices = self->_discoveredDevices;
      if (!discoveredDevices)
      {
        v21 = objc_alloc_init(NSMutableDictionary);
        v22 = self->_discoveredDevices;
        self->_discoveredDevices = v21;

        discoveredDevices = self->_discoveredDevices;
      }

      [(NSMutableDictionary *)discoveredDevices setObject:v12 forKeyedSubscript:v7];
      [(SFDeviceDiscovery *)self->_clientBLENearbyActionDiscovery setScanRate:30];
      [(RPNearbyInvitationDaemon *)self _clientBLENearbyActionDiscoveryScanRateStartTimer];
      [(RPNearbyInvitationDaemon *)self _clientBLENearbyActionDisableDupeFilter];
      [(RPNIProximityEstimator *)self->_proximityEstimator sendSampleForDevice:v23];
      [(RPNearbyInvitationDaemon *)self _update];
    }

    goto LABEL_38;
  }

LABEL_40:
}

- (void)_clientBLENearbyActionDiscoveryDeviceLost:(id)a3
{
  v7 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = [v7 identifier];
  v5 = [v4 UUIDString];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_discoveredDevices objectForKeyedSubscript:v5];
    [(NSMutableDictionary *)self->_discoveredDevices setObject:0 forKeyedSubscript:v5];
    if ([v6 inBubble])
    {
      [(RPNearbyInvitationDaemon *)self _clientReportLostDevice:v6];
    }

    if (![(NSMutableDictionary *)self->_discoveredDevices count])
    {
      [(RPNearbyInvitationDaemon *)self _clientBLENearbyActionEnableDupeFilter];
    }
  }

  else
  {
    sub_100119710();
  }
}

- (void)_clientBLENearbyActionDiscoveryScanRateStartTimer
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_clientNearbyActionDiscoveryTimer)
  {
    v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    clientNearbyActionDiscoveryTimer = self->_clientNearbyActionDiscoveryTimer;
    self->_clientNearbyActionDiscoveryTimer = v3;
    v5 = v3;

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10005E988;
    handler[3] = &unk_1001AA970;
    handler[4] = self;
    dispatch_source_set_event_handler(v5, handler);
    CUDispatchTimerSet();
    dispatch_activate(v5);
  }
}

- (void)_clientBLENearbyActionDisableDupeFilter
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (([(SFDeviceDiscovery *)self->_clientBLENearbyActionDiscovery changeFlags]& 4) == 0)
  {
    if (dword_1001D3D90 <= 50 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_1001197A8();
    }

    [(SFDeviceDiscovery *)self->_clientBLENearbyActionDiscovery setChangeFlags:[(SFDeviceDiscovery *)self->_clientBLENearbyActionDiscovery changeFlags]| 4];
  }

  clientDisabledDupeFilterTimer = self->_clientDisabledDupeFilterTimer;
  if (clientDisabledDupeFilterTimer)
  {
    v4 = clientDisabledDupeFilterTimer;
    dispatch_source_cancel(v4);
    v5 = self->_clientDisabledDupeFilterTimer;
    self->_clientDisabledDupeFilterTimer = 0;

    v6 = self->_clientDisabledDupeFilterTimer;
    self->_clientDisabledDupeFilterTimer = 0;
  }

  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  v8 = self->_clientDisabledDupeFilterTimer;
  self->_clientDisabledDupeFilterTimer = v7;
  v9 = v7;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10005EB88;
  handler[3] = &unk_1001AA970;
  handler[4] = self;
  dispatch_source_set_event_handler(v9, handler);
  CUDispatchTimerSet();
  dispatch_activate(v9);
}

- (void)_clientBLENearbyActionEnableDupeFilter
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_clientBLENearbyActionDiscovery)
  {
    if (dword_1001D3D90 <= 50 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_1001197C4();
    }

    clientDisabledDupeFilterTimer = self->_clientDisabledDupeFilterTimer;
    if (clientDisabledDupeFilterTimer)
    {
      v4 = clientDisabledDupeFilterTimer;
      dispatch_source_cancel(v4);
      v5 = self->_clientDisabledDupeFilterTimer;
      self->_clientDisabledDupeFilterTimer = 0;
    }

    clientBLENearbyActionDiscovery = self->_clientBLENearbyActionDiscovery;
    v7 = [(SFDeviceDiscovery *)clientBLENearbyActionDiscovery changeFlags]& 0xFFFFFFFB;

    [(SFDeviceDiscovery *)clientBLENearbyActionDiscovery setChangeFlags:v7];
  }
}

- (id)_idleSessionConnection
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = self->_xpcConnections;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = *v14;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        v7 = [v6 activatedSession];
        if (v7)
        {
          v8 = v7;
          v9 = [v6 activatedSession];
          if ([v9 waitingToConnect])
          {
            v10 = [v6 activatedSession];
            v11 = [v10 failedToConnect];

            if ((v11 & 1) == 0)
            {
              v3 = v6;
              goto LABEL_13;
            }
          }

          else
          {
          }
        }
      }

      v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }

LABEL_13:

  return v3;
}

- (BOOL)_clientBLENearbyActionAdvertiserShouldRun
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = [(RPNearbyInvitationDaemon *)self _idleSessionConnection];
  v4 = [v3 activatedSession];
  v5 = v4 != 0;

  return v5;
}

- (void)_clientBLENearbyActionAdvertiserEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_clientBLENearbyActionAdvertiser)
  {
    if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_1001197E0();
    }

    v3 = [(RPNearbyInvitationDaemon *)self _idleSessionConnection];
    v4 = [v3 activatedSession];

    v5 = objc_alloc_init(off_1001D3E08());
    clientBLENearbyActionAdvertiser = self->_clientBLENearbyActionAdvertiser;
    self->_clientBLENearbyActionAdvertiser = v5;

    [(SFService *)self->_clientBLENearbyActionAdvertiser setDeviceActionType:56];
    [(SFService *)self->_clientBLENearbyActionAdvertiser setDispatchQueue:self->_dispatchQueue];
    v7 = off_1001D3E10();
    [(SFService *)self->_clientBLENearbyActionAdvertiser setIdentifier:v7];

    [(SFService *)self->_clientBLENearbyActionAdvertiser setLabel:@"RPNearbyInvitation"];
    [(SFService *)self->_clientBLENearbyActionAdvertiser setPairSetupDisabled:1];
    v8 = [v4 daemonDevice];
    v9 = [v8 bleTargetData];
    [(SFService *)self->_clientBLENearbyActionAdvertiser setTargetAuthTag:v9];

    [(SFService *)self->_clientBLENearbyActionAdvertiser setAdvertiseRate:50];
    v10 = self->_clientBLENearbyActionAdvertiser;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10005EFC4;
    v12[3] = &unk_1001AAA40;
    v12[4] = self;
    v13 = v4;
    v11 = v4;
    [(SFService *)v10 activateWithCompletion:v12];
  }
}

- (void)_clientBLENearbyActionAdvertiserEnsureStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_clientBLENearbyActionAdvertiser)
  {
    if (dword_1001D3D90 <= 50 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_1001198B8();
    }

    [(SFService *)self->_clientBLENearbyActionAdvertiser invalidate];
    clientBLENearbyActionAdvertiser = self->_clientBLENearbyActionAdvertiser;
    self->_clientBLENearbyActionAdvertiser = 0;
  }

  clientNearbyActionAdvertiserTimer = self->_clientNearbyActionAdvertiserTimer;
  if (clientNearbyActionAdvertiserTimer)
  {
    v6 = clientNearbyActionAdvertiserTimer;
    dispatch_source_cancel(v6);
    v5 = self->_clientNearbyActionAdvertiserTimer;
    self->_clientNearbyActionAdvertiserTimer = 0;
  }
}

- (void)_clientBLENearbyActionAdvertiserStartTimer
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_clientNearbyActionAdvertiserTimer)
  {
    v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    clientNearbyActionAdvertiserTimer = self->_clientNearbyActionAdvertiserTimer;
    self->_clientNearbyActionAdvertiserTimer = v3;
    v5 = v3;

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10005F22C;
    handler[3] = &unk_1001AA970;
    handler[4] = self;
    dispatch_source_set_event_handler(v5, handler);
    CUDispatchTimerSet();
    dispatch_activate(v5);
  }
}

- (void)_clientProximityEstimatorEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_proximityEstimator)
  {
    if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_100119930();
    }

    v3 = objc_alloc_init(RPNIProximityEstimator);
    proximityEstimator = self->_proximityEstimator;
    self->_proximityEstimator = v3;

    [(RPNIProximityEstimator *)self->_proximityEstimator setInnerPresencePreset:6];
    [(RPNIProximityEstimator *)self->_proximityEstimator setInnerRegionName:@"nearbyInvitation-inner"];
    [(RPNIProximityEstimator *)self->_proximityEstimator setOuterRegionName:@"nearbyInvitation-outer"];
    [(RPNIProximityEstimator *)self->_proximityEstimator setDispatchQueue:self->_dispatchQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10005F4CC;
    v7[3] = &unk_1001ACB00;
    v7[4] = self;
    [(RPNIProximityEstimator *)self->_proximityEstimator setDeviceRegionChangedHandler:v7];
    v5 = self->_proximityEstimator;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10005F614;
    v6[3] = &unk_1001AB2C8;
    v6[4] = self;
    [(RPNIProximityEstimator *)v5 activateWithCompletion:v6];
  }
}

- (void)_clientProximityEstimatorEnsureStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_proximityEstimator)
  {
    if (dword_1001D3D90 <= 50 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_1001199A8();
    }

    [(RPNIProximityEstimator *)self->_proximityEstimator invalidate];
    proximityEstimator = self->_proximityEstimator;
    self->_proximityEstimator = 0;
  }

  clientDisabledDupeFilterTimer = self->_clientDisabledDupeFilterTimer;
  if (clientDisabledDupeFilterTimer)
  {
    v6 = clientDisabledDupeFilterTimer;
    dispatch_source_cancel(v6);
    v5 = self->_clientDisabledDupeFilterTimer;
    self->_clientDisabledDupeFilterTimer = 0;
  }
}

- (void)_clientReportFoundDevice:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_xpcConnections;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) reportFoundDevice:v4 outReason:{0, v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_clientReportLostDevice:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_xpcConnections;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) reportLostDevice:{v4, v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)_findMatchingDeviceWithIdentifier:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSMutableDictionary *)self->_discoveredDevices allValues];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 compareWithDeviceIdentifier:v4])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (BOOL)_clientBLEServerShouldRun
{
  if (self->_prefClientEnabled)
  {
    if (self->_prefGuestClientEnabled)
    {
      v3 = [(NSMutableDictionary *)self->_discoveredDevices count];
      if (v3)
      {
        LOBYTE(v3) = [(NSMutableSet *)self->_activatedSessionSet count]!= 0;
      }
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)_clientBLEServerEnsureStarted
{
  if (!self->_bleServer)
  {
    v11[5] = v5;
    v11[6] = v4;
    v11[9] = v2;
    v11[10] = v3;
    if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_1001199C4();
    }

    v7 = objc_alloc_init(CUBLEServer);
    bleServer = self->_bleServer;
    self->_bleServer = v7;

    [(CUBLEServer *)self->_bleServer setDispatchQueue:self->_dispatchQueue];
    [(CUBLEServer *)self->_bleServer setLabel:@"RPNearbyInvitation"];
    [(CUBLEServer *)self->_bleServer setListenPSM:CBAssignedL2CAPPSMForNearbyInvitation];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10005FDA8;
    v11[3] = &unk_1001AB770;
    v11[4] = self;
    [(CUBLEServer *)self->_bleServer setConnectionStartedHandler:v11];
    v9 = self->_bleServer;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10005FDB4;
    v10[3] = &unk_1001AB2C8;
    v10[4] = self;
    [(CUBLEServer *)v9 activateWithCompletion:v10];
  }
}

- (void)_clientBLEServerHandleConnectionStarted:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(RPConnection);
  [v5 setBleConnection:v4];
  [v5 setControlFlags:1536];
  [v5 setDispatchQueue:self->_dispatchQueue];
  v6 = +[RPIdentityDaemon sharedIdentityDaemon];
  [v5 setIdentityDaemon:v6];

  v7 = [NSString alloc];
  v8 = self->_cnxIDLast + 1;
  self->_cnxIDLast = v8;
  v9 = [v7 initWithFormat:@"NICnx-%u", v8];
  [v5 setLabel:v9];

  v10 = +[RPCompanionLinkDaemon sharedCompanionLinkDaemon];
  v11 = [v10 localDeviceInfo];
  [v5 setLocalDeviceInfo:v11];

  [v5 setPasswordType:0];
  [v5 setPresent:1];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = self->_xpcConnections;
  v13 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        v18 = [v17 activatedSession];

        if (v18)
        {
          [v5 setClient:v17];
          goto LABEL_11;
        }
      }

      v14 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100060264;
  v26[3] = &unk_1001AB2C8;
  v26[4] = v5;
  [v5 setReadErrorHandler:v26];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100060374;
  v25[3] = &unk_1001AB488;
  v25[4] = v5;
  v25[5] = self;
  [v5 setInvalidationHandler:v25];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000603E0;
  v24[3] = &unk_1001AB4F0;
  v24[4] = v5;
  v24[5] = self;
  [v5 setReceivedEventHandler:v24];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100060488;
  v23[3] = &unk_1001AB518;
  v23[4] = v5;
  v23[5] = self;
  [v5 setReceivedRequestHandler:v23];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100060544;
  v22[3] = &unk_1001AB540;
  v22[4] = v5;
  v22[5] = self;
  [v5 setStateChangedHandler:v22];
  bleServerConnections = self->_bleServerConnections;
  if (!bleServerConnections)
  {
    v20 = objc_alloc_init(NSMutableSet);
    v21 = self->_bleServerConnections;
    self->_bleServerConnections = v20;

    bleServerConnections = self->_bleServerConnections;
  }

  [(NSMutableSet *)bleServerConnections addObject:v5];
  [v5 activate];
}

- (void)_clientBLEServerHandleConnectionEnded:(id)a3
{
  if (a3)
  {
    v4 = a3;
    [v4 setClient:0];
    [(NSMutableSet *)self->_bleServerConnections removeObject:v4];
  }
}

- (void)_clientBLEServerHandleConnectionStateChange:(int)a3 cnx:(id)a4
{
  v6 = a4;
  if (a3 == 1)
  {
    v8 = v6;
    if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_100119AAC();
    }

    v7 = [(RPNearbyInvitationDaemon *)self _idleSessionConnection];
    [v7 sessionActivatedWithError:0];
    [v7 setNetCnx:v8];
    [(RPNearbyInvitationDaemon *)self _update];

    v6 = v8;
  }
}

- (void)_clientBLEServerEnsureStopped
{
  if (self->_bleServer)
  {
    if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_100119AEC();
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = self->_bleServerConnections;
    v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v10 + 1) + 8 * i) invalidate];
        }

        v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    [(NSMutableSet *)self->_bleServerConnections removeAllObjects];
    bleServerConnections = self->_bleServerConnections;
    self->_bleServerConnections = 0;

    [(CUBLEServer *)self->_bleServer invalidate];
    bleServer = self->_bleServer;
    self->_bleServer = 0;
  }
}

- (void)_serverEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([(RPNearbyInvitationDaemon *)self _serverBLENearbyInfoDiscoveryShouldRun])
  {
    [(RPNearbyInvitationDaemon *)self _serverBLENearbyInfoDiscoveryEnsureStarted];
  }

  else
  {
    [(RPNearbyInvitationDaemon *)self _serverBLENearbyInfoDiscoveryEnsureStopped];
  }

  if ([(RPNearbyInvitationDaemon *)self _serverBLENearbyActionDiscoveryShouldRun])
  {
    [(RPNearbyInvitationDaemon *)self _serverBLENearbyActionDiscoveryEnsureStarted];
  }

  else
  {
    [(RPNearbyInvitationDaemon *)self _serverBLENearbyActionDiscoveryEnsureStopped];
  }

  if ([(RPNearbyInvitationDaemon *)self _serverBLENearbyActionAdvertiserShouldRun])
  {
    [(RPNearbyInvitationDaemon *)self _serverBLENearbyActionAdvertiserEnsureStarted];
  }

  else
  {
    [(RPNearbyInvitationDaemon *)self _serverBLENearbyActionAdvertiserEnsureStopped];
  }

  if ([(RPNearbyInvitationDaemon *)self _serverBLEClientConnectionShouldStart])
  {

    [(RPNearbyInvitationDaemon *)self _serverBLEClientConnectionEnsureStarted];
  }
}

- (void)_serverEnsureStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(RPNearbyInvitationDaemon *)self _serverBLENearbyInfoDiscoveryEnsureStopped];
  [(RPNearbyInvitationDaemon *)self _serverBLENearbyActionDiscoveryEnsureStopped];

  [(RPNearbyInvitationDaemon *)self _serverBLENearbyActionAdvertiserEnsureStopped];
}

- (void)_serverBLENearbyInfoDiscoveryEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_bleNearbyInfoDiscovery)
  {
    if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_100119B08();
    }

    v3 = objc_alloc_init(RPCompanionLinkClient);
    bleNearbyInfoDiscovery = self->_bleNearbyInfoDiscovery;
    self->_bleNearbyInfoDiscovery = v3;

    [(RPCompanionLinkClient *)self->_bleNearbyInfoDiscovery setDispatchQueue:self->_dispatchQueue];
    [(RPCompanionLinkClient *)self->_bleNearbyInfoDiscovery setEncodeSensitiveProperties:1];
    [(RPCompanionLinkClient *)self->_bleNearbyInfoDiscovery setControlFlags:0x200000002];
    if (self->_prefGuestServerEnabled)
    {
      [(RPCompanionLinkClient *)self->_bleNearbyInfoDiscovery setControlFlags:[(RPCompanionLinkClient *)self->_bleNearbyInfoDiscovery controlFlags]| 0x400];
      [(RPCompanionLinkClient *)self->_bleNearbyInfoDiscovery setFlags:1];
    }

    if (!self->_prefServerRSSIDisabled)
    {
      [(RPCompanionLinkClient *)self->_bleNearbyInfoDiscovery setRssiThreshold:-57];
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100060B60;
    v9[3] = &unk_1001ACB48;
    v9[4] = self;
    [(RPCompanionLinkClient *)self->_bleNearbyInfoDiscovery setDeviceFoundHandler:v9];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100060B6C;
    v8[3] = &unk_1001ACB48;
    v8[4] = self;
    [(RPCompanionLinkClient *)self->_bleNearbyInfoDiscovery setDeviceLostHandler:v8];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100060B78;
    v7[3] = &unk_1001ACB70;
    v7[4] = self;
    [(RPCompanionLinkClient *)self->_bleNearbyInfoDiscovery setDeviceChangedHandler:v7];
    v5 = self->_bleNearbyInfoDiscovery;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100060B84;
    v6[3] = &unk_1001AB2C8;
    v6[4] = self;
    [(RPCompanionLinkClient *)v5 activateWithCompletion:v6];
  }
}

- (void)_serverBLENearbyInfoDiscoveryEnsureStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_bleNearbyInfoDiscovery)
  {
    if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_100119B80();
    }

    [(RPCompanionLinkClient *)self->_bleNearbyInfoDiscovery invalidate];
    bleNearbyInfoDiscovery = self->_bleNearbyInfoDiscovery;
    self->_bleNearbyInfoDiscovery = 0;
  }

  devicesWantingInvitations = self->_devicesWantingInvitations;
  self->_devicesWantingInvitations = 0;

  [(RPNearbyInvitationDaemon *)self setBleDeviceWantingInvitations:0];
}

- (void)_serverBLENearbyInfoDiscoveryDeviceFound:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_devicesWantingInvitations;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v14 + 1) + 8 * i) isEqualToDevice:{v4, v14}])
        {

          if (dword_1001D3D90 <= 10 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
          {
            sub_100119B9C();
          }

          goto LABEL_21;
        }
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
  {
    sub_100119BDC(v4);
  }

  devicesWantingInvitations = self->_devicesWantingInvitations;
  if (!devicesWantingInvitations)
  {
    v11 = objc_alloc_init(NSMutableSet);
    v12 = self->_devicesWantingInvitations;
    self->_devicesWantingInvitations = v11;

    devicesWantingInvitations = self->_devicesWantingInvitations;
  }

  [(NSMutableSet *)devicesWantingInvitations addObject:v4, v14];
  v13 = [(RPNearbyInvitationDaemon *)self bleDeviceWantingInvitations];

  if (!v13)
  {
    [(RPNearbyInvitationDaemon *)self setBleDeviceWantingInvitations:v4];
  }

  [(RPNearbyInvitationDaemon *)self _update];
  if ([(NSMutableSet *)self->_devicesWantingInvitations count]>= 2)
  {
    [(RPNearbyInvitationDaemon *)self _serverBLENearbyActionAdvertiserRestartTimer];
  }

LABEL_21:
}

- (void)_serverBLENearbyInfoDiscoveryDeviceLost:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_devicesWantingInvitations;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v12 + 1) + 8 * v9);
      if ([v10 isEqualToDevice:{v4, v12}])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = v10;

    if (!v11)
    {
      goto LABEL_16;
    }

    if (dword_1001D3D90 <= 50 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_100119C38();
    }

    [(NSMutableSet *)self->_devicesWantingInvitations removeObject:v11];
    [(RPNearbyInvitationDaemon *)self setBleDeviceWantingInvitations:0];
    [(RPNearbyInvitationDaemon *)self _update];
  }

  else
  {
LABEL_9:
    v11 = v5;
  }

LABEL_16:
}

- (void)_serverBLENearbyActionDiscoveryEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_bleNearbyActionDiscovery)
  {
    if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_100119C78();
    }

    v3 = objc_alloc_init(off_1001D3E00());
    bleNearbyActionDiscovery = self->_bleNearbyActionDiscovery;
    self->_bleNearbyActionDiscovery = v3;

    [(SFDeviceDiscovery *)self->_bleNearbyActionDiscovery setChangeFlags:1];
    [(SFDeviceDiscovery *)self->_bleNearbyActionDiscovery setDispatchQueue:self->_dispatchQueue];
    [(SFDeviceDiscovery *)self->_bleNearbyActionDiscovery setPurpose:@"RPNearbyInvitation"];
    [(SFDeviceDiscovery *)self->_bleNearbyActionDiscovery setRssiThreshold:-60];
    [(SFDeviceDiscovery *)self->_bleNearbyActionDiscovery setDiscoveryFlags:16];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10006127C;
    v8[3] = &unk_1001ACA90;
    v8[4] = self;
    [(SFDeviceDiscovery *)self->_bleNearbyActionDiscovery setDeviceFoundHandler:v8];
    [(SFDeviceDiscovery *)self->_bleNearbyActionDiscovery setDeviceLostHandler:&stru_1001ACBB0];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100061300;
    v7[3] = &unk_1001ACAB8;
    v7[4] = self;
    [(SFDeviceDiscovery *)self->_bleNearbyActionDiscovery setDeviceChangedHandler:v7];
    [(SFDeviceDiscovery *)self->_bleNearbyActionDiscovery setInterruptionHandler:&stru_1001ACBD0];
    v5 = self->_bleNearbyActionDiscovery;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100061358;
    v6[3] = &unk_1001AB2C8;
    v6[4] = self;
    [(SFDeviceDiscovery *)v5 activateWithCompletion:v6];
  }
}

- (void)_serverBLENearbyActionDiscoveryEnsureStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(SFDeviceDiscovery *)self->_bleNearbyActionDiscovery invalidate];
  bleNearbyActionDiscovery = self->_bleNearbyActionDiscovery;
  self->_bleNearbyActionDiscovery = 0;
}

- (void)_serverBLENearbyActionDiscoveryDeviceFound:(id)a3
{
  v11 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([v11 deviceActionType] == 56)
  {
    v4 = [v11 identifier];
    v5 = [v4 UUIDString];

    if (v5)
    {
      bleDeviceAcceptedInvitations = self->_bleDeviceAcceptedInvitations;
      if (bleDeviceAcceptedInvitations && (-[RPNearbyInvitationDevice identifier](bleDeviceAcceptedInvitations, "identifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v5 isEqualToString:v7], v7, (v8 & 1) == 0))
      {
        if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
        {
          v10 = self->_bleDeviceAcceptedInvitations;
          LogPrintF();
        }
      }

      else
      {
        if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
        {
          sub_100119DC8();
        }

        v9 = objc_alloc_init(RPNearbyInvitationDevice);
        [v9 setIdentifier:v5];
        [v9 updateWithSFDevice:v11];
        [(RPNearbyInvitationDaemon *)self setBleDeviceWantingInvitations:0];
        [(RPNearbyInvitationDaemon *)self setBleDeviceAcceptedInvitations:v9];
        [(RPNearbyInvitationDaemon *)self _update];
      }
    }

    else if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_100119E08();
    }
  }

  else
  {
    sub_100119D4C();
  }
}

- (void)_serverBLENearbyActionAdvertiserEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = [(RPNearbyInvitationDaemon *)self bleDeviceWantingInvitations];
  v4 = [v3 bleTargetData];
  bleNearbyActionAdvertiser = self->_bleNearbyActionAdvertiser;
  if (bleNearbyActionAdvertiser)
  {
    v6 = [(SFService *)bleNearbyActionAdvertiser targetAuthTag];
    if ([(NSMutableSet *)self->_devicesWantingInvitations count]>= 2)
    {

      v4 = 0;
    }

    if (v6 != v4)
    {
      if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
        [(SFService *)self->_bleNearbyActionAdvertiser setTargetAuthTag:v4, v6, v4];
      }

      else
      {
        [(SFService *)self->_bleNearbyActionAdvertiser setTargetAuthTag:v4, v13, v14];
      }
    }
  }

  else
  {
    if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_100119E48();
    }

    v7 = objc_alloc_init(off_1001D3E08());
    v8 = self->_bleNearbyActionAdvertiser;
    self->_bleNearbyActionAdvertiser = v7;

    [(SFService *)self->_bleNearbyActionAdvertiser setDeviceActionType:84];
    [(SFService *)self->_bleNearbyActionAdvertiser setDispatchQueue:self->_dispatchQueue];
    v9 = off_1001D3E18();
    [(SFService *)self->_bleNearbyActionAdvertiser setIdentifier:v9];

    [(SFService *)self->_bleNearbyActionAdvertiser setLabel:@"RPNearbyInvitation"];
    [(SFService *)self->_bleNearbyActionAdvertiser setPairSetupDisabled:1];
    [(SFService *)self->_bleNearbyActionAdvertiser setAdvertiseRate:50];
    v10 = [(NSMutableSet *)self->_devicesWantingInvitations count];
    if (v10 == 1)
    {
      [(SFService *)self->_bleNearbyActionAdvertiser setTargetAuthTag:v4];
    }

    v11 = v10 == 1;
    v12 = self->_bleNearbyActionAdvertiser;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000618C8;
    v15[3] = &unk_1001ACBF8;
    v15[4] = self;
    v18 = v11;
    v16 = v3;
    v4 = v4;
    v17 = v4;
    [(SFService *)v12 activateWithCompletion:v15];
  }
}

- (void)_serverBLENearbyActionAdvertiserEnsureStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(SFService *)self->_bleNearbyActionAdvertiser invalidate];
  bleNearbyActionAdvertiser = self->_bleNearbyActionAdvertiser;
  self->_bleNearbyActionAdvertiser = 0;

  serverNearbyActionAdvertiserTimer = self->_serverNearbyActionAdvertiserTimer;
  if (serverNearbyActionAdvertiserTimer)
  {
    v6 = serverNearbyActionAdvertiserTimer;
    dispatch_source_cancel(v6);
    v5 = self->_serverNearbyActionAdvertiserTimer;
    self->_serverNearbyActionAdvertiserTimer = 0;
  }
}

- (void)_serverBLENearbyActionAdvertiserRestartTimer
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_bleNearbyActionAdvertiser)
  {
    serverNearbyActionAdvertiserTimer = self->_serverNearbyActionAdvertiserTimer;
    if (serverNearbyActionAdvertiserTimer)
    {
      v4 = serverNearbyActionAdvertiserTimer;
      dispatch_source_cancel(v4);
      v5 = self->_serverNearbyActionAdvertiserTimer;
      self->_serverNearbyActionAdvertiserTimer = 0;

      if (dword_1001D3D90 > 50 || dword_1001D3D90 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_10;
      }
    }

    else if (dword_1001D3D90 > 50 || dword_1001D3D90 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_10;
    }

    sub_100119F04();
LABEL_10:
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    v7 = self->_serverNearbyActionAdvertiserTimer;
    self->_serverNearbyActionAdvertiserTimer = v6;
    v8 = v6;

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100061BD0;
    handler[3] = &unk_1001AA970;
    handler[4] = self;
    dispatch_source_set_event_handler(v8, handler);
    CUDispatchTimerSet();
    dispatch_activate(v8);
  }
}

- (BOOL)_serverBLEClientConnectionShouldStart
{
  if (!self->_prefServerEnabled)
  {
    return 0;
  }

  if (self->_prefGuestServerEnabled)
  {
    v3 = [(RPNearbyInvitationDaemon *)self bleDeviceAcceptedInvitations];
    if (v3)
    {
      v4 = v3;
      v5 = [(NSMutableDictionary *)self->_bleClientConnections count];

      if (!v5)
      {
        return 1;
      }
    }
  }

  return 0;
}

- (void)_serverBLEClientConnectionEnsureStarted
{
  v3 = objc_alloc_init(RPConnection);
  ++self->_sessionIDLast;
  v4 = [NSNumber numberWithUnsignedInt:?];
  v5 = [(RPNearbyInvitationDaemon *)self bleDeviceAcceptedInvitations];
  v6 = [v5 bleDevice];
  v7 = [v6 identifier];

  [v3 setBlePeerIdentifier:v7];
  [v3 setBleClientUseCase:131091];
  [v3 setControlFlags:{objc_msgSend(v3, "controlFlags") | 0x600}];
  [v3 setDispatchQueue:self->_dispatchQueue];
  v8 = [NSString alloc];
  v9 = self->_cnxIDLast + 1;
  self->_cnxIDLast = v9;
  v10 = [v8 initWithFormat:@"NICnx-%u", v9];
  [v3 setLabel:v10];

  v11 = +[RPCompanionLinkDaemon sharedCompanionLinkDaemon];
  v12 = [v11 localDeviceInfo];
  [v3 setLocalDeviceInfo:v12];

  [v3 setPasswordType:0];
  [v3 setPresent:1];
  [v3 setBleConnectionPSM:CBAssignedL2CAPPSMForNearbyInvitation];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = self->_xpcConnections;
  v14 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v29 + 1) + 8 * i);
        v19 = [v18 activatedServer];

        if (v19)
        {
          [v3 setClient:v18];
          goto LABEL_11;
        }
      }

      v15 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100062190;
  v28[3] = &unk_1001AB130;
  v28[4] = v3;
  v28[5] = self;
  v28[6] = v4;
  [v3 setInvalidationHandler:v28];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100062218;
  v27[3] = &unk_1001ACC20;
  v27[4] = v3;
  v27[5] = self;
  v27[6] = v4;
  [v3 setReceivedEventHandler:v27];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000622BC;
  v26[3] = &unk_1001ACC48;
  v26[4] = v3;
  v26[5] = self;
  v26[6] = v4;
  [v3 setReceivedRequestHandler:v26];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100062374;
  v25[3] = &unk_1001AB590;
  v25[4] = v3;
  v25[5] = self;
  v25[6] = v4;
  [v3 setStateChangedHandler:v25];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000623D4;
  v24[3] = &unk_1001AAA40;
  v24[4] = v3;
  v24[5] = v4;
  [v3 setReadErrorHandler:v24];
  bleClientConnections = self->_bleClientConnections;
  if (!bleClientConnections)
  {
    v21 = objc_alloc_init(NSMutableDictionary);
    v22 = self->_bleClientConnections;
    self->_bleClientConnections = v21;

    bleClientConnections = self->_bleClientConnections;
  }

  v23 = [v7 UUIDString];
  [(NSMutableDictionary *)bleClientConnections setObject:v3 forKeyedSubscript:v23];

  [v3 activate];
}

- (void)_bleClientConnectionEnded:(id)a3
{
  v6 = [a3 blePeerIdentifier];
  bleClientConnections = self->_bleClientConnections;
  v5 = [v6 UUIDString];
  [(NSMutableDictionary *)bleClientConnections setObject:0 forKeyedSubscript:v5];

  [(RPNearbyInvitationDaemon *)self setBleDeviceAcceptedInvitations:0];
}

- (void)_bleClientConnectionStateChanged:(int)a3 cnx:(id)a4 sessionID:(id)a5
{
  v12 = a4;
  v8 = a5;
  v9 = [v12 client];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 activatedServer];

    if (v11)
    {
      [(RPNearbyInvitationDaemon *)self setBleDeviceAcceptedInvitations:0];
      if (a3 == 1)
      {
        [v10 sessionStartWithID:v8 netCnx:v12 completion:&stru_1001ACC88];
      }

      else
      {
        [v10 sessionEndedWithID:v8 netCnx:v12];
      }
    }
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v6 = [[RPNearbyInvitationXPCConnection alloc] initWithDaemon:self xpcCnx:v5];
  [(RPNearbyInvitationXPCConnection *)v6 setDispatchQueue:self->_dispatchQueue];
  ++self->_xpcLastID;
  [(RPNearbyInvitationXPCConnection *)v6 setXpcID:?];
  xpcConnections = self->_xpcConnections;
  if (!xpcConnections)
  {
    v8 = objc_alloc_init(NSMutableSet);
    v9 = self->_xpcConnections;
    self->_xpcConnections = v8;

    xpcConnections = self->_xpcConnections;
  }

  [(NSMutableSet *)xpcConnections addObject:v6];
  [v5 _setQueue:self->_dispatchQueue];
  v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RPNearbyInvitationXPCDaemonInterface];
  [v5 setExportedInterface:v10];

  [v5 setExportedObject:v6];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100062818;
  v17 = &unk_1001AB488;
  v18 = self;
  v11 = v6;
  v19 = v11;
  [v5 setInvalidationHandler:&v14];
  v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RPNearbyInvitationXPCClientInterface, v14, v15, v16, v17, v18];
  [v5 setRemoteObjectInterface:v12];

  [v5 resume];
  if (dword_1001D3D90 <= 20 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
  {
    sub_100119F78(v5);
  }

  return 1;
}

- (void)_xpcConnectionInvalidated:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (v4)
  {
    [v4 connectionInvalidated];
    [(NSMutableSet *)self->_xpcConnections removeObject:v4];
    [(RPNearbyInvitationDaemon *)self _update];
  }
}

- (void)_update
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_systemMonitor)
  {
    v3 = objc_alloc_init(CUSystemMonitor);
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = v3;

    [(CUSystemMonitor *)self->_systemMonitor setDispatchQueue:self->_dispatchQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000629A0;
    v5[3] = &unk_1001AA970;
    v5[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setScreenOnChangedHandler:v5];
    [(CUSystemMonitor *)self->_systemMonitor activateWithCompletion:0];
  }

  if (self->_prefClientEnabled || self->_prefGuestClientEnabled)
  {
    [(RPNearbyInvitationDaemon *)self _clientEnsureStarted];
  }

  else
  {
    [(RPNearbyInvitationDaemon *)self _clientEnsureStopped];
  }

  if (self->_prefServerEnabled || self->_prefGuestServerEnabled)
  {
    [(RPNearbyInvitationDaemon *)self _serverEnsureStarted];
  }

  else
  {
    [(RPNearbyInvitationDaemon *)self _serverEnsureStopped];
  }
}

- (void)_handleServerActivation:(id)a3
{
  v9 = a3;
  v4 = [v9 activatedServer];
  v5 = [v4 serviceType];

  if (v5)
  {
    activatedServerXPCCnxMap = self->_activatedServerXPCCnxMap;
    if (!activatedServerXPCCnxMap)
    {
      v7 = objc_alloc_init(NSMutableDictionary);
      v8 = self->_activatedServerXPCCnxMap;
      self->_activatedServerXPCCnxMap = v7;

      activatedServerXPCCnxMap = self->_activatedServerXPCCnxMap;
    }

    [(NSMutableDictionary *)activatedServerXPCCnxMap setObject:v9 forKeyedSubscript:v5];
  }
}

- (void)_receivedEventID:(id)a3 event:(id)a4 options:(id)a5 xpcCnx:(id)a6 sessionID:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100062B80;
  block[3] = &unk_1001ACCB0;
  v24 = v15;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v28 = v16;
  v18 = v16;
  v19 = v14;
  v20 = v13;
  v21 = v12;
  v22 = v15;
  dispatch_async(dispatchQueue, block);
}

- (void)_receivedRequestID:(id)a3 request:(id)a4 options:(id)a5 responseHandler:(id)a6 xpcCnx:(id)a7 sessionID:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  dispatchQueue = self->_dispatchQueue;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100062E3C;
  v27[3] = &unk_1001ACCD8;
  v28 = v18;
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v32 = v19;
  v33 = v17;
  v21 = v19;
  v22 = v17;
  v23 = v16;
  v24 = v15;
  v25 = v14;
  v26 = v18;
  dispatch_async(dispatchQueue, v27);
}

@end