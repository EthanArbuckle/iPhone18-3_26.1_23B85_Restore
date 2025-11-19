@interface SDRemoteInteractionAgent
+ (id)sharedAgent;
- (BOOL)_clientShouldStart;
- (SDRemoteInteractionAgent)init;
- (id)_rpCompanionLinkDeviceForSFDevice:(id)a3;
- (id)description;
- (int)sessionStart:(id)a3;
- (void)_clientClinkDeviceChanged:(id)a3;
- (void)_clientClinkDeviceFound:(id)a3;
- (void)_clientClinkDeviceLost:(id)a3;
- (void)_clientDeviceFound:(id)a3;
- (void)_clientDeviceLockStatusChanged;
- (void)_clientDeviceLost:(id)a3;
- (void)_clientEnsureStarted;
- (void)_clientEnsureStopped;
- (void)_clientUpdateCoalesceTimerForDevice:(id)a3 identifier:(id)a4;
- (void)_commonEnsureStarted;
- (void)_commonEnsureStopped;
- (void)_commonIDSChanged:(id)a3;
- (void)_commonRapportChanged:(id)a3;
- (void)_legacy_serverHandleEvent:(id)a3;
- (void)_legacy_serverHandleRequest:(id)a3;
- (void)_legacy_serverRespondInfo:(id)a3;
- (void)_sendRTIPayload:(id)a3;
- (void)_serverEnsureStarted;
- (void)_serverEnsureStopped;
- (void)_update;
- (void)activate;
- (void)advertisingTimerFired;
- (void)advertisingTimerStart;
- (void)clientNotificationPostIfNeededForDevice:(id)a3;
- (void)clientNotificationRemoveForDevice:(id)a3;
- (void)clientNotificationUpdateForDevice:(id)a3 info:(id)a4;
- (void)clientNotificationUpdateForDevice:(id)a3 rtiData:(id)a4;
- (void)clientUserDidTapNotification:(id)a3;
- (void)handleEventWithData:(id)a3;
- (void)invalidate;
- (void)nearby:(id)a3 didDisconnectFromPeer:(id)a4 error:(id)a5;
- (void)prefsChanged;
- (void)sessionStop:(id)a3;
- (void)setPreventNotifications:(BOOL)a3;
- (void)testKeyboardPost:(id)a3;
- (void)testKeyboardPostThenUpdate;
- (void)testKeyboardRemove;
- (void)testKeyboardUpdate;
@end

@implementation SDRemoteInteractionAgent

- (id)description
{
  v30 = 0;
  NSAppendPrintF();
  v3 = 0;
  v29 = v3;
  controlService = self->_controlService;
  if (!controlService)
  {
    controlService = @"off";
  }

  v17 = controlService;
  NSAppendPrintF();
  v5 = v29;

  v28 = v5;
  if (self->_deviceDiscovery)
  {
    deviceDiscovery = self->_deviceDiscovery;
  }

  else
  {
    deviceDiscovery = @"off";
  }

  v21 = [(NSMutableDictionary *)self->_devices count];
  rssiThreshold = self->_rssiThreshold;
  v18 = deviceDiscovery;
  NSAppendPrintF();
  v7 = v28;

  v27 = v7;
  v19 = [(NSMutableSet *)self->_sessions count:v18];
  NSAppendPrintF();
  v8 = v7;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = self->_devices;
  v10 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v23 objects:v31 count:16, v19];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      v13 = 0;
      v14 = v8;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:*(*(&v23 + 1) + 8 * v13), v20];
        v20 = [v15 description];
        NSAppendPrintF();
        v8 = v14;

        v13 = v13 + 1;
        v14 = v8;
      }

      while (v11 != v13);
      v11 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v23 objects:v31 count:16, v20];
    }

    while (v11);
  }

  return v8;
}

+ (id)sharedAgent
{
  if (qword_100989EF0 != -1)
  {
    sub_10013DAB0();
  }

  v3 = qword_100989EF8;

  return v3;
}

- (SDRemoteInteractionAgent)init
{
  v6.receiver = self;
  v6.super_class = SDRemoteInteractionAgent;
  v2 = [(SDRemoteInteractionAgent *)&v6 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100139938;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100139B00;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)prefsChanged
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = CFPrefs_GetInt64() != 0;
  if (self->_clientEnabled != v3)
  {
    if (dword_100971478 <= 40 && (dword_100971478 != -1 || _LogCategory_Initialize()))
    {
      sub_10013DAFC();
    }

    self->_clientEnabled = v3;
  }

  v4 = CFPrefs_GetInt64() != 0;
  if (self->_cloudPairedOnly != v4)
  {
    if (dword_100971478 <= 40 && (dword_100971478 != -1 || _LogCategory_Initialize()))
    {
      sub_10013DB58();
    }

    self->_cloudPairedOnly = v4;
  }

  v5 = CFPrefs_GetInt64() != 0;
  if (self->_serverEnabled != v5)
  {
    if (dword_100971478 <= 40 && (dword_100971478 != -1 || _LogCategory_Initialize()))
    {
      sub_10013DBB4();
    }

    self->_serverEnabled = v5;
  }

  v6 = +[SDNearbyAgent sharedNearbyAgent];
  v7 = [v6 bleProximityRSSIThreshold:@"kb"];

  rssiThreshold = self->_rssiThreshold;
  if (v7 != rssiThreshold)
  {
    if (dword_100971478 <= 40)
    {
      if (dword_100971478 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_21;
        }

        rssiThreshold = self->_rssiThreshold;
      }

      v9 = rssiThreshold;
      v10 = v7;
      LogPrintF();
    }

LABEL_21:
    self->_rssiThreshold = v7;
  }

  [(SDRemoteInteractionAgent *)self _update:v9];
}

- (void)setPreventNotifications:(BOOL)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100139E54;
  v4[3] = &unk_1008CF798;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)_update
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(SDRemoteInteractionAgent *)self _commonEnsureStarted];
  if (self->_serverEnabled)
  {
    [(SDRemoteInteractionAgent *)self _serverEnsureStarted];
  }

  else
  {
    [(SDRemoteInteractionAgent *)self _serverEnsureStopped];
  }

  if ([(SDRemoteInteractionAgent *)self _clientShouldStart])
  {

    [(SDRemoteInteractionAgent *)self _clientEnsureStarted];
  }

  else
  {

    [(SDRemoteInteractionAgent *)self _clientEnsureStopped];
  }
}

- (void)_commonEnsureStarted
{
  v3 = +[NSNotificationCenter defaultCenter];
  if (!self->_idsMonitorInstalled)
  {
    if (dword_100971478 <= 30 && (dword_100971478 != -1 || _LogCategory_Initialize()))
    {
      sub_10013DC7C();
    }

    [v3 addObserver:self selector:"_commonIDSChanged:" name:@"SDNotificationNameIDSAccountsChanged" object:0];
    [v3 addObserver:self selector:"_commonIDSChanged:" name:@"SDNotificationNameIDSDevicesChanged" object:0];
    self->_idsMonitorInstalled = 1;
  }

  if (!self->_rapportMonitorInstalled)
  {
    [v3 addObserver:self selector:"_commonRapportChanged:" name:off_1009731D0 object:0];
    self->_rapportMonitorInstalled = 1;
  }
}

- (void)_commonEnsureStopped
{
  v3 = +[NSNotificationCenter defaultCenter];
  if (self->_idsMonitorInstalled)
  {
    if (dword_100971478 <= 30 && (dword_100971478 != -1 || _LogCategory_Initialize()))
    {
      sub_10013DC98();
    }

    [v3 removeObserver:self name:@"SDNotificationNameIDSAccountsChanged" object:0];
    [v3 removeObserver:self name:@"SDNotificationNameIDSDevicesChanged" object:0];
    self->_idsMonitorInstalled = 0;
  }

  if (self->_rapportMonitorInstalled)
  {
    [v3 removeObserver:self name:off_1009731D0 object:0];
    self->_rapportMonitorInstalled = 0;
  }
}

- (void)_commonIDSChanged:(id)a3
{
  v4 = a3;
  if (dword_100971478 <= 30 && (dword_100971478 != -1 || _LogCategory_Initialize()))
  {
    sub_10013DCB4();
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013A208;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_commonRapportChanged:(id)a3
{
  v4 = a3;
  if (dword_100971478 <= 30 && (dword_100971478 != -1 || _LogCategory_Initialize()))
  {
    sub_10013DCD0();
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013A2CC;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_serverEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_bleWPNearby)
  {
    v3 = +[SFBLEClient sharedClient];
    v4 = [v3 addNearbyDelegate:self];
    bleWPNearby = self->_bleWPNearby;
    self->_bleWPNearby = v4;
  }

  if (!self->_controlService)
  {
    if (dword_100971478 <= 30 && (dword_100971478 != -1 || _LogCategory_Initialize()))
    {
      sub_10013DCEC();
    }

    v6 = objc_alloc_init(SFService);
    controlService = self->_controlService;
    self->_controlService = v6;

    [(SFService *)self->_controlService setIdentifier:SFServiceIdentifierControl];
    [(SFService *)self->_controlService setSessionFlags:[(SFService *)self->_controlService sessionFlags]| 0x100];
    [(SFService *)self->_controlService setReceivedObjectHandler:&stru_1008D1320];
    [(SFService *)self->_controlService setReceivedRequestHandler:&stru_1008D1360];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10013A568;
    v10[3] = &unk_1008D1388;
    v10[4] = self;
    [(SFService *)self->_controlService setEventMessageHandler:v10];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10013A574;
    v9[3] = &unk_1008CEA00;
    v9[4] = self;
    [(SFService *)self->_controlService setRequestMessageHandler:v9];
    [(SFService *)self->_controlService activateWithCompletion:&stru_1008D13A8];
  }

  v8 = +[SDSharedRemoteTextInputClient sharedClient];
  [v8 addDelegate:self];
}

- (void)_serverEnsureStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  aggressiveTimer = self->_aggressiveTimer;
  if (aggressiveTimer)
  {
    v4 = aggressiveTimer;
    dispatch_source_cancel(v4);
    v5 = self->_aggressiveTimer;
    self->_aggressiveTimer = 0;
  }

  rtiTimer = self->_rtiTimer;
  if (rtiTimer)
  {
    v7 = rtiTimer;
    dispatch_source_cancel(v7);
    v8 = self->_rtiTimer;
    self->_rtiTimer = 0;
  }

  v9 = +[SFBLEClient sharedClient];
  [v9 removeNearbyDelegate:self];

  bleWPNearby = self->_bleWPNearby;
  self->_bleWPNearby = 0;

  currentSessionID = self->_currentSessionID;
  self->_currentSessionID = 0;

  currentText = self->_currentText;
  self->_currentText = 0;

  [(SFService *)self->_controlService invalidate];
  controlService = self->_controlService;
  self->_controlService = 0;

  v14 = +[SDSharedRemoteTextInputClient sharedClient];
  [v14 removeDelegate:self];
}

- (void)nearby:(id)a3 didDisconnectFromPeer:(id)a4 error:(id)a5
{
  v6 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([(NSMutableSet *)self->_legacy_sessionDeviceIDs containsObject:v6])
  {
    if (dword_100971478 <= 30 && (dword_100971478 != -1 || _LogCategory_Initialize()))
    {
      sub_10013DD64();
    }

    [(NSMutableSet *)self->_legacy_sessionDeviceIDs removeObject:v6];
  }
}

- (void)_legacy_serverHandleEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 peerDevice];
  v6 = [v5 identifier];
  v20 = 0;
  if (v6)
  {
    v7 = +[SDNearbyAgent sharedNearbyAgent];
    v8 = [v7 idsBluetoothDeviceIDsForSharing];
    v9 = [v8 containsObject:v6];

    if ((v9 & 1) == 0 && (self->_cloudPairedOnly || [v5 systemPairState] <= 0x13))
    {
      sub_10013DDA4(&v20);
    }

    else
    {
      v10 = [v4 headerFields];
      CFDictionaryGetTypeID();
      v11 = CFDictionaryGetTypedValue();

      if (v11)
      {
        if (dword_100971478 <= 30 && (dword_100971478 != -1 || _LogCategory_Initialize()))
        {
          sub_10013DE28();
        }

        v12 = +[SDSharedRemoteTextInputClient sharedClient];
        [v12 handleTextInputData:v11];
      }

      else
      {
        v13 = [v4 headerFields];
        Int64Ranged = CFDictionaryGetInt64Ranged();

        if (Int64Ranged == 10)
        {
          if (dword_100971478 <= 30 && (dword_100971478 != -1 || _LogCategory_Initialize()))
          {
            currentSessionID = self->_currentSessionID;
            v19 = v6;
            LogPrintF();
          }

          if (self->_currentSessionID)
          {
            legacy_sessionDeviceIDs = self->_legacy_sessionDeviceIDs;
            if (!legacy_sessionDeviceIDs)
            {
              v16 = objc_alloc_init(NSMutableSet);
              v17 = self->_legacy_sessionDeviceIDs;
              self->_legacy_sessionDeviceIDs = v16;

              legacy_sessionDeviceIDs = self->_legacy_sessionDeviceIDs;
            }

            [(NSMutableSet *)legacy_sessionDeviceIDs addObject:v6, currentSessionID, v19];
            [(SDRemoteInteractionAgent *)self _serverSendTextSessionDidBegin:v6];
          }
        }

        else if (dword_100971478 <= 40 && (dword_100971478 != -1 || _LogCategory_Initialize()))
        {
          sub_10013DECC();
        }
      }
    }
  }

  else
  {
    sub_10013DF0C(&v20);
  }
}

- (void)_legacy_serverHandleRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 peerDevice];
  v6 = [v5 identifier];
  v12 = 0;
  v7 = +[SDNearbyAgent sharedNearbyAgent];
  v8 = [v7 idsBluetoothDeviceIDsForSharing];
  v9 = [v8 containsObject:v6];

  if ((v9 & 1) == 0 && (self->_cloudPairedOnly || [v5 systemPairState] <= 0x13))
  {
    sub_10013DF74();
  }

  else
  {
    v10 = [v4 headerFields];
    Int64Ranged = CFDictionaryGetInt64Ranged();

    if (Int64Ranged == 1)
    {
      [(SDRemoteInteractionAgent *)self _legacy_serverRespondInfo:v4];
    }

    else if (dword_100971478 <= 40 && (dword_100971478 != -1 || _LogCategory_Initialize()))
    {
      sub_10013E078();
    }
  }
}

- (void)_legacy_serverRespondInfo:(id)a3
{
  v4 = a3;
  v9 = objc_alloc_init(NSMutableDictionary);
  v5 = MGCopyAnswer();
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"?";
  }

  [v9 setObject:v7 forKeyedSubscript:@"name"];
  v8 = [[SFResponseMessage alloc] initWithRequestMessage:v4];

  [v8 setHeaderFields:v9];
  [(SFService *)self->_controlService sendResponse:v8];
}

- (void)_sendRTIPayload:(id)a3
{
  v16 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (v16)
  {
    v5 = SFRTIDataPayloadForData();
    if (v5)
    {
      v6 = v5;
      [v4 setObject:v16 forKeyedSubscript:@"rp"];
      v7 = SFFullTextFromRTIDataPayload();
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = &stru_1008EFBD0;
      }

      v10 = v9;

      objc_storeStrong(&self->_currentText, v9);
      [v4 setObject:&off_10090BCE8 forKeyedSubscript:@"o"];
      [v4 setObject:v10 forKeyedSubscript:@"t"];
      [v4 setObject:v16 forKeyedSubscript:@"rp"];
      v11 = [[SFRemoteTextSessionInfo alloc] initWithRTIPayload:v6];
      v12 = v11;
      if (v11)
      {
        v13 = [v11 dictionaryRepresentation];
        [v4 setObject:v13 forKeyedSubscript:@"tsi"];
      }

      if (dword_100971478 <= 30 && (dword_100971478 != -1 || _LogCategory_Initialize()))
      {
        sub_10013E0B8(self);
      }

      v14 = objc_alloc_init(SFEventMessage);
      [v14 setDeviceIDs:self->_legacy_sessionDeviceIDs];
      [v14 setHeaderFields:v4];
      v15 = +[NSUUID UUID];
      [v14 setIdentifier:v15];

      [(SFService *)self->_controlService sendEvent:v14];
    }

    else
    {
      sub_10013E100();
    }
  }

  else
  {
    sub_10013E160();
  }
}

- (void)handleEventWithData:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (dword_100971478 <= 30)
  {
    if (dword_100971478 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_10013E1C0();
      v4 = v6;
    }
  }

  [(SDRemoteInteractionAgent *)self _sendRTIPayload:v4];
}

- (void)advertisingTimerFired
{
  rtiTimer = self->_rtiTimer;
  if (rtiTimer)
  {
    v4 = rtiTimer;
    dispatch_source_cancel(v4);
    v5 = self->_rtiTimer;
    self->_rtiTimer = 0;
  }

  if (dword_100971478 <= 30 && (dword_100971478 != -1 || _LogCategory_Initialize()))
  {
    sub_10013E21C();
  }

  [(SDRemoteInteractionAgent *)self handleInputDidEndWithFlags:0 sessionInfo:0];

  SFMetricsLog();
}

- (void)advertisingTimerStart
{
  if (dword_100971478 <= 30 && (dword_100971478 != -1 || _LogCategory_Initialize()))
  {
    sub_10013E238();
  }

  rtiTimer = self->_rtiTimer;
  if (rtiTimer)
  {
    v4 = rtiTimer;
    dispatch_source_cancel(v4);
    v5 = self->_rtiTimer;
    self->_rtiTimer = 0;
  }

  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  v7 = self->_rtiTimer;
  self->_rtiTimer = v6;

  v8 = self->_rtiTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10013B114;
  handler[3] = &unk_1008CDEA0;
  handler[4] = self;
  dispatch_source_set_event_handler(v8, handler);
  v9 = self->_rtiTimer;
  v10 = dispatch_time(0, 3600000000000);
  dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  dispatch_resume(self->_rtiTimer);
}

- (int)sessionStart:(id)a3
{
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10013B334;
  v23 = sub_10013B360;
  v24 = 0;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100971478 <= 30 && (dword_100971478 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5 = [v4 peerDevice];

  if (v5)
  {
    [v4 setDispatchQueue:self->_dispatchQueue];
    [v4 setAgent:self];
    v6 = [v4 remoteTextEventHandler];

    if (v6)
    {
      v7 = [v4 remoteTextEventHandler];
      v8 = v20[5];
      v20[5] = v7;
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10013B368;
    v15[3] = &unk_1008D13D0;
    v18 = &v19;
    v9 = v4;
    v16 = v9;
    v17 = self;
    [v9 setRemoteTextEventHandler:v15];

    sessions = self->_sessions;
    if (!sessions)
    {
      v11 = objc_alloc_init(NSMutableSet);
      v12 = self->_sessions;
      self->_sessions = v11;

      sessions = self->_sessions;
    }

    [(NSMutableSet *)sessions addObject:v9];
    [v9 activateWithCompletion:0];
    [(SDRemoteInteractionAgent *)self _update];
    v13 = 0;
  }

  else
  {
    v13 = -6705;
  }

  _Block_object_dispose(&v19, 8);

  return v13;
}

- (void)sessionStop:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100971478 <= 30 && (dword_100971478 != -1 || _LogCategory_Initialize()))
  {
    sub_10013E270();
  }

  [(NSMutableSet *)self->_sessions removeObject:v4];
  [(SDRemoteInteractionAgent *)self _update];
}

- (void)_clientEnsureStarted
{
  if (self->_deviceDiscovery)
  {
    if (self->_cloudPairedOnly)
    {
      v3 = +[SDNearbyAgent sharedNearbyAgent];
      v4 = [v3 idsBluetoothDeviceIDsForSharing];
    }

    else
    {
      v4 = 0;
    }

    v11 = [(SFDeviceDiscovery *)self->_deviceDiscovery deviceFilter];
    v12 = v4;
    v13 = v12;
    if (v11 == v12)
    {
    }

    else
    {
      if ((v12 == 0) != (v11 != 0))
      {
        v14 = [v11 isEqual:v12];

        if (v14)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }

      [(SFDeviceDiscovery *)self->_deviceDiscovery setDeviceFilter:v13];
    }

LABEL_17:
    -[SFDeviceDiscovery setOverrideScreenOff:](self->_deviceDiscovery, "setOverrideScreenOff:", [v13 count] != 0);

    goto LABEL_20;
  }

  if (dword_100971478 <= 30 && (dword_100971478 != -1 || _LogCategory_Initialize()))
  {
    sub_10013E28C();
  }

  v5 = objc_alloc_init(SFDeviceDiscovery);
  deviceDiscovery = self->_deviceDiscovery;
  self->_deviceDiscovery = v5;

  [(SFDeviceDiscovery *)self->_deviceDiscovery setChangeFlags:5];
  cloudPairedOnly = self->_cloudPairedOnly;
  v8 = +[SDNearbyAgent sharedNearbyAgent];
  v9 = v8;
  if (cloudPairedOnly)
  {
    v10 = [v8 idsBluetoothDeviceIDsForSharing];

    [(SFDeviceDiscovery *)self->_deviceDiscovery setDeviceFilter:v10];
  }

  else
  {
    v10 = [v8 idsDeviceIDsForRIServers];
  }

  -[SFDeviceDiscovery setOverrideScreenOff:](self->_deviceDiscovery, "setOverrideScreenOff:", [v10 count] != 0);

  [(SFDeviceDiscovery *)self->_deviceDiscovery setDiscoveryFlags:64];
  [(SFDeviceDiscovery *)self->_deviceDiscovery setPurpose:@"RIA"];
  [(SFDeviceDiscovery *)self->_deviceDiscovery setRssiThreshold:self->_rssiThreshold];
  [(SFDeviceDiscovery *)self->_deviceDiscovery setScanRate:10];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10013B994;
  v24[3] = &unk_1008CE7A0;
  v24[4] = self;
  [(SFDeviceDiscovery *)self->_deviceDiscovery setDeviceFoundHandler:v24];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10013BA24;
  v23[3] = &unk_1008CE7A0;
  v23[4] = self;
  [(SFDeviceDiscovery *)self->_deviceDiscovery setDeviceLostHandler:v23];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100030074;
  v22[3] = &unk_1008CE7C8;
  v22[4] = self;
  [(SFDeviceDiscovery *)self->_deviceDiscovery setDeviceChangedHandler:v22];
  [(SFDeviceDiscovery *)self->_deviceDiscovery activateWithCompletion:&stru_1008D13F0];
LABEL_20:
  if (!self->_notificationManager)
  {
    v15 = +[SDNotificationManager sharedManager];
    notificationManager = self->_notificationManager;
    self->_notificationManager = v15;

    [(SDNotificationManager *)self->_notificationManager activate];
  }

  if (!self->_clinkClient)
  {
    if (dword_100971478 <= 30 && (dword_100971478 != -1 || _LogCategory_Initialize()))
    {
      sub_10013E2A8();
    }

    v17 = objc_alloc_init(RPCompanionLinkClient);
    clinkClient = self->_clinkClient;
    self->_clinkClient = v17;

    [(RPCompanionLinkClient *)self->_clinkClient setControlFlags:[(RPCompanionLinkClient *)self->_clinkClient controlFlags]| 0x2004];
    [(RPCompanionLinkClient *)self->_clinkClient setDispatchQueue:self->_dispatchQueue];
    [(RPCompanionLinkClient *)self->_clinkClient setInterruptionHandler:&stru_1008D1410];
    [(RPCompanionLinkClient *)self->_clinkClient setInvalidationHandler:&stru_1008D1430];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10013BBF8;
    v21[3] = &unk_1008CE210;
    v21[4] = self;
    [(RPCompanionLinkClient *)self->_clinkClient setDeviceFoundHandler:v21];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10013BC04;
    v20[3] = &unk_1008CE210;
    v20[4] = self;
    [(RPCompanionLinkClient *)self->_clinkClient setDeviceLostHandler:v20];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10013BC10;
    v19[3] = &unk_1008CE238;
    v19[4] = self;
    [(RPCompanionLinkClient *)self->_clinkClient setDeviceChangedHandler:v19];
    [(RPCompanionLinkClient *)self->_clinkClient activateWithCompletion:&stru_1008D1450];
  }
}

- (void)_clientEnsureStopped
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = self->_notificationTimers;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_notificationTimers objectForKeyedSubscript:*(*(&v15 + 1) + 8 * i), v15];
        dispatch_source_cancel(v8);
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_notificationTimers removeAllObjects];
  notificationTimers = self->_notificationTimers;
  self->_notificationTimers = 0;

  [(NSMutableSet *)self->_sessions removeAllObjects];
  sessions = self->_sessions;
  self->_sessions = 0;

  if (self->_deviceDiscovery)
  {
    if (dword_100971478 <= 30 && (dword_100971478 != -1 || _LogCategory_Initialize()))
    {
      sub_10013E484();
    }

    [(SFDeviceDiscovery *)self->_deviceDiscovery invalidate];
    deviceDiscovery = self->_deviceDiscovery;
    self->_deviceDiscovery = 0;

    [(NSMutableDictionary *)self->_devices removeAllObjects];
    devices = self->_devices;
    self->_devices = 0;
  }

  clinkClient = self->_clinkClient;
  if (clinkClient)
  {
    [(RPCompanionLinkClient *)clinkClient invalidate];
    v14 = self->_clinkClient;
    self->_clinkClient = 0;
  }
}

- (void)_clientClinkDeviceFound:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (dword_100971478 <= 30)
  {
    v6 = v3;
    if (dword_100971478 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_10013E4B8();
      v4 = v6;
    }
  }
}

- (void)_clientClinkDeviceLost:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (dword_100971478 <= 30)
  {
    v6 = v3;
    if (dword_100971478 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_10013E4F8();
      v4 = v6;
    }
  }
}

- (void)_clientClinkDeviceChanged:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (dword_100971478 <= 30)
  {
    v6 = v3;
    if (dword_100971478 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_10013E538();
      v4 = v6;
    }
  }
}

- (void)_clientDeviceLockStatusChanged
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013C058;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (BOOL)_clientShouldStart
{
  v3 = +[SDNearbyAgent sharedNearbyAgent];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 idsDeviceIDsForRIServers];
    v6 = [v5 count];

    v7 = [v4 idsBluetoothDeviceIDsForWatches];
    v8 = [v7 count];

    v9 = self->_clientEnabled || [(NSMutableSet *)self->_sessions count]!= 0;
    if (v6 | v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    if (dword_100971478 <= 30 && (dword_100971478 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_rpCompanionLinkDeviceForSFDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v23 = [v4 model];
  v6 = [v4 idsIdentifier];
  v7 = [v4 mediaRouteID];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(RPCompanionLinkClient *)self->_clinkClient activeDevices];
  v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    v22 = v4;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [v12 idsDeviceIdentifier];
        v14 = [v13 isEqualToString:v6];

        if (v14)
        {
          goto LABEL_20;
        }

        v15 = [v12 mediaRouteIdentifier];
        v16 = [v15 isEqualToString:v7];

        if (v16)
        {
          goto LABEL_20;
        }

        v17 = [v12 name];
        if ([v17 isEqualToString:v5])
        {
          v18 = [v12 model];
          v19 = [v18 isEqualToString:v23];

          if (v19)
          {
            if (dword_100971478 <= 90 && (dword_100971478 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

LABEL_20:
            v20 = v12;
            v4 = v22;
            goto LABEL_21;
          }
        }

        else
        {
        }
      }

      v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      v20 = 0;
      v4 = v22;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v20 = 0;
  }

LABEL_21:

  return v20;
}

- (void)clientNotificationPostIfNeededForDevice:(id)a3
{
  v21 = a3;
  v4 = [v21 model];
  v5 = v4;
  if (v4)
  {
    if ([v4 hasPrefix:@"AppleTV"])
    {
      if ([v21 deviceActionType] == 19)
      {
        if (dword_100971478 <= 90 && (dword_100971478 != -1 || _LogCategory_Initialize()))
        {
          sub_10013E5D4();
        }

        goto LABEL_35;
      }

      v11 = [(RPCompanionLinkClient *)self->_clinkClient activeDevices];
      v12 = SFDeviceToRPCompanionLinkDevice();

      if (!v12)
      {
        v13 = [(SDRemoteInteractionAgent *)self _rpCompanionLinkDeviceForSFDevice:v21];
        if (!v13)
        {
          v14 = [v21 identifier];
          v18 = +[SDNearbyAgent sharedNearbyAgent];
          v19 = [v18 idsBluetoothDeviceIDsForSharing];
          v20 = [v19 containsObject:v14];

          if (v20)
          {
            [(SDNotificationManager *)self->_notificationManager riServerPostIfNeeded:v21 backgroundAction:0];
          }

          v12 = 0;
          goto LABEL_33;
        }

        v12 = v13;
      }

      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
LABEL_34:

        goto LABEL_35;
      }

      v14 = [v12 activeUserAltDSID];
      v15 = objc_alloc_init(off_1009714E8[0]());
      v16 = [v15 aa_primaryAppleAccount];
      v17 = [v16 aa_altDSID];
      if ([v17 isEqualToString:v14])
      {
        [(SDNotificationManager *)self->_notificationManager riServerPostIfNeeded:v21 backgroundAction:1];
      }

      else if (dword_100971478 <= 30 && (dword_100971478 != -1 || _LogCategory_Initialize()))
      {
        sub_10013E5B8();
      }

LABEL_33:
      goto LABEL_34;
    }

    v6 = +[SDNearbyAgent sharedNearbyAgent];
    v7 = [v6 isDeviceValidRIServer:v5];

    if (v7)
    {
      v8 = [(RPCompanionLinkClient *)self->_clinkClient activeDevices];
      v9 = SFDeviceToRPCompanionLinkDevice();
      v10 = v9 != 0;

      [(SDNotificationManager *)self->_notificationManager riServerPostIfNeeded:v21 backgroundAction:v10];
    }

    else if ([v5 hasPrefix:@"Watch"])
    {
      [(SDNotificationManager *)self->_notificationManager watchKeyboardPostIfNeeded:v21];
    }

    else if (dword_100971478 <= 60 && (dword_100971478 != -1 || _LogCategory_Initialize()))
    {
      sub_10013E578();
    }
  }

  else if (dword_100971478 <= 90 && (dword_100971478 != -1 || _LogCategory_Initialize()))
  {
    sub_10013E5F0();
  }

LABEL_35:
}

- (void)clientNotificationRemoveForDevice:(id)a3
{
  v8 = a3;
  v4 = [v8 model];
  v5 = v4;
  if (v4)
  {
    if (([v4 hasPrefix:@"AppleTV"] & 1) != 0 || (+[SDNearbyAgent sharedNearbyAgent](SDNearbyAgent, "sharedNearbyAgent"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isDeviceValidRIServer:", v5), v6, v7))
    {
      [(SDNotificationManager *)self->_notificationManager riServerRemove:v8];
    }

    else if ([v5 hasPrefix:@"Watch"])
    {
      [(SDNotificationManager *)self->_notificationManager watchKeyboardRemove:v8];
    }

    else if (dword_100971478 <= 60 && (dword_100971478 != -1 || _LogCategory_Initialize()))
    {
      sub_10013E60C();
    }
  }

  else
  {
    sub_10013E64C();
  }
}

- (void)clientNotificationUpdateForDevice:(id)a3 rtiData:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [v11 model];
  v8 = v7;
  if (v7)
  {
    if (([v7 hasPrefix:@"AppleTV"] & 1) != 0 || (+[SDNearbyAgent sharedNearbyAgent](SDNearbyAgent, "sharedNearbyAgent"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isDeviceValidRIServer:", v8), v9, v10))
    {
      [(SDNotificationManager *)self->_notificationManager riServerUpdate:v11 rtiData:v6];
    }

    else if ([v8 hasPrefix:@"Watch"])
    {
      [(SDNotificationManager *)self->_notificationManager watchKeyboardUpdate:v11 rtiData:v6];
    }

    else if (dword_100971478 <= 60 && (dword_100971478 != -1 || _LogCategory_Initialize()))
    {
      sub_10013E6AC();
    }
  }

  else
  {
    sub_10013E6EC();
  }
}

- (void)clientNotificationUpdateForDevice:(id)a3 info:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [v11 model];
  v8 = v7;
  if (v7)
  {
    if (([v7 hasPrefix:@"AppleTV"] & 1) != 0 || (+[SDNearbyAgent sharedNearbyAgent](SDNearbyAgent, "sharedNearbyAgent"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isDeviceValidRIServer:", v8), v9, v10))
    {
      [(SDNotificationManager *)self->_notificationManager riServerUpdate:v11 info:v6];
    }

    else if ([v8 hasPrefix:@"Watch"])
    {
      [(SDNotificationManager *)self->_notificationManager watchKeyboardUpdate:v11 info:v6];
    }

    else if (dword_100971478 <= 60 && (dword_100971478 != -1 || _LogCategory_Initialize()))
    {
      sub_10013E74C();
    }
  }

  else
  {
    sub_10013E78C();
  }
}

- (void)_clientUpdateCoalesceTimerForDevice:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_notificationTimers objectForKeyedSubscript:v7];
  if ([v6 needsKeyboardOnly])
  {
    if (v8)
    {
      if (dword_100971478 <= 50 && (dword_100971478 != -1 || _LogCategory_Initialize()))
      {
        sub_10013E848(v6);
      }

      dispatch_source_cancel(v8);
      [(NSMutableDictionary *)self->_notificationTimers removeObjectForKey:v7];
    }
  }

  else if (!v8)
  {
    if (dword_100971478 <= 50 && (dword_100971478 != -1 || _LogCategory_Initialize()))
    {
      sub_10013E7EC(v6);
    }

    v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    SFDispatchTimerSet();
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_10013CD68;
    v17 = &unk_1008CE158;
    v18 = v6;
    v8 = v9;
    v19 = v8;
    v20 = self;
    v10 = v7;
    v21 = v10;
    dispatch_source_set_event_handler(v8, &v14);
    notificationTimers = self->_notificationTimers;
    if (!notificationTimers)
    {
      v12 = objc_alloc_init(NSMutableDictionary);
      v13 = self->_notificationTimers;
      self->_notificationTimers = v12;

      notificationTimers = self->_notificationTimers;
    }

    [(NSMutableDictionary *)notificationTimers setObject:v8 forKeyedSubscript:v10, v14, v15, v16, v17];
    dispatch_resume(v8);
  }
}

- (void)clientUserDidTapNotification:(id)a3
{
  v4 = a3;
  v14 = v4;
  if (dword_100971478 <= 30)
  {
    if (dword_100971478 != -1 || (v5 = _LogCategory_Initialize(), v4 = v14, v5))
    {
      sub_10013E904();
      v4 = v14;
    }
  }

  v6 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:v4];
  if (v6)
  {
    v7 = [(RPCompanionLinkClient *)self->_clinkClient activeDevices];
    v8 = SFDeviceToRPCompanionLinkDevice();

    if (v8)
    {
LABEL_8:
      v10 = [v8 identifier];
      if (v10)
      {
        v11 = objc_alloc(off_1009714F0[0]());
        v12 = [v11 initWithDeviceIdentifier:v10 identifierType:off_1009714F8[0]() deviceType:1 launchContext:10];
        v13 = [(objc_class *)off_100971500() sharedInstance];
        if (dword_100971478 <= 30 && (dword_100971478 != -1 || _LogCategory_Initialize()))
        {
          sub_10013E944();
        }

        [v13 presentWithContext:v12];
      }

      else if (dword_100971478 <= 90 && (dword_100971478 != -1 || _LogCategory_Initialize()))
      {
        sub_10013E984();
      }

      goto LABEL_21;
    }

    v9 = [(SDRemoteInteractionAgent *)self _rpCompanionLinkDeviceForSFDevice:v6];
    if (v9)
    {
      v8 = v9;
      goto LABEL_8;
    }

    if (dword_100971478 <= 90 && (dword_100971478 != -1 || _LogCategory_Initialize()))
    {
      sub_10013E9C4();
    }
  }

  else if (dword_100971478 <= 90 && (dword_100971478 != -1 || _LogCategory_Initialize()))
  {
    sub_10013EA04();
  }

LABEL_21:
}

- (void)testKeyboardPost:(id)a3
{
  v6 = a3;
  if (dword_100971478 <= 50 && (dword_100971478 != -1 || _LogCategory_Initialize()))
  {
    sub_10013EA44();
  }

  v4 = objc_alloc_init(SFDevice);
  v5 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  [v4 setIdentifier:v5];

  if ([v6 isEqual:@"-autofill"])
  {
    [v4 setDeviceActionType:19];
  }

  [(SDNotificationManager *)self->_notificationManager riServerPostIfNeeded:v4 backgroundAction:0];
}

- (void)testKeyboardPostThenUpdate
{
  if (dword_100971478 <= 50 && (dword_100971478 != -1 || _LogCategory_Initialize()))
  {
    sub_10013EA60();
  }

  v4 = objc_alloc_init(SFDevice);
  v3 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  [v4 setIdentifier:v3];

  [v4 setName:@"postAndUpdate"];
  [(SDNotificationManager *)self->_notificationManager riServerPostIfNeeded:v4 backgroundAction:0];
}

- (void)testKeyboardRemove
{
  if (dword_100971478 <= 50 && (dword_100971478 != -1 || _LogCategory_Initialize()))
  {
    sub_10013EA7C();
  }

  v4 = objc_alloc_init(SFDevice);
  v3 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  [v4 setIdentifier:v3];

  [(SDNotificationManager *)self->_notificationManager riServerRemove:v4];
}

- (void)testKeyboardUpdate
{
  if (dword_100971478 <= 50 && (dword_100971478 != -1 || _LogCategory_Initialize()))
  {
    sub_10013EA98();
  }

  v5 = objc_alloc_init(SFDevice);
  v3 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  [v5 setIdentifier:v3];

  v4 = objc_alloc_init(SFRemoteTextSessionInfo);
  [v4 setTitle:@"Continuity Keyboard"];
  [(SDNotificationManager *)self->_notificationManager riServerUpdate:v5 info:v4];
}

- (void)_clientDeviceFound:(id)a3
{
  v21 = a3;
  v4 = [v21 bleDevice];
  v5 = [v21 identifier];
  v6 = [v21 idsIdentifier];
  v7 = v6;
  if (!self->_deviceDiscovery || !v5)
  {
    goto LABEL_30;
  }

  if (self->_cloudPairedOnly)
  {
    v8 = +[SDNearbyAgent sharedNearbyAgent];
    v9 = [v8 idsBluetoothDeviceIDsForSharing];
    v10 = v9;
    v11 = v5;
    goto LABEL_7;
  }

  if (v6)
  {
    v8 = +[SDNearbyAgent sharedNearbyAgent];
    v9 = [v8 idsDeviceIDsForRIServers];
    v10 = v9;
    v11 = v7;
LABEL_7:
    v12 = [v9 containsObject:v11];

    if (v12)
    {
      goto LABEL_13;
    }
  }

  if (self->_cloudPairedOnly || [v21 systemPairState] <= 0x13)
  {
    if (dword_100971478 > 9 || dword_100971478 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_30;
    }

    goto LABEL_11;
  }

LABEL_13:
  v13 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:v5];
  if (v13)
  {
    v14 = v13;
    [(SDRemoteInteractionAgent *)self _clientUpdateCoalesceTimerForDevice:v21 identifier:v5];

    goto LABEL_30;
  }

  if (!self->_preventNotifications && [v21 needsKeyboardOnly])
  {
    v15 = [v4 smoothedRSSI];
    if (v15 <= 0x8000000000000000)
    {
      v16 = 0x8000000000000000;
    }

    else
    {
      v16 = v15;
    }

    if (v16 >= self->_rssiThreshold)
    {
      if (dword_100971478 <= 50 && (dword_100971478 != -1 || _LogCategory_Initialize()))
      {
        v20 = v4;
        LogPrintF();
      }

      devices = self->_devices;
      if (!devices)
      {
        v18 = objc_alloc_init(NSMutableDictionary);
        v19 = self->_devices;
        self->_devices = v18;

        devices = self->_devices;
      }

      [(NSMutableDictionary *)devices setObject:v21 forKeyedSubscript:v5, v20];
      [(SDRemoteInteractionAgent *)self clientNotificationPostIfNeededForDevice:v21];
      goto LABEL_30;
    }

    if (dword_100971478 > 9 || dword_100971478 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_30;
    }

LABEL_11:
    LogPrintF();
  }

LABEL_30:
}

- (void)_clientDeviceLost:(id)a3
{
  v10 = a3;
  v4 = [v10 identifier];
  v5 = v4;
  if (self->_deviceDiscovery)
  {
    if (v4)
    {
      v6 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:v4];

      if (v6)
      {
        if (dword_100971478 <= 50 && (dword_100971478 != -1 || _LogCategory_Initialize()))
        {
          v9 = v10;
          LogPrintF();
        }

        v7 = [(NSMutableDictionary *)self->_notificationTimers objectForKeyedSubscript:v5, v9];
        v8 = v7;
        if (v7)
        {
          dispatch_source_cancel(v7);
          [(NSMutableDictionary *)self->_notificationTimers removeObjectForKey:v5];
        }

        [(NSMutableDictionary *)self->_devices removeObjectForKey:v5];
        [(SDRemoteInteractionAgent *)self clientNotificationRemoveForDevice:v10];
      }
    }
  }
}

@end