@interface SDXPCServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (SDXPCServer)initWithAirDropService:(id)a3;
- (id)_stateDumpString;
- (os_state_data_s)_stateDump;
- (void)_activate;
- (void)_connectionInvalidated:(id)a3;
- (void)_invalidate;
- (void)activate;
- (void)invalidate;
- (void)stateAppendXPCConnections:(id *)a3;
@end

@implementation SDXPCServer

- (os_state_data_s)_stateDump
{
  if (dword_100971A10 <= 50 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v3 = [(SDXPCServer *)self _stateDumpString];
  if (v3)
  {
    v4 = [NSPropertyListSerialization dataWithPropertyList:v3 format:200 options:0 error:0];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 length];
      v7 = malloc_type_calloc(1uLL, v6 + 200, 0x1000040BEF03554uLL);
      v8 = v7;
      if (v7)
      {
        v7->var0 = 1;
        v7->var1.var1 = v6;
        __strlcpy_chk();
        memcpy(v8->var4, [v5 bytes], v6);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v5 = 0;
  }

  return v8;
}

- (id)_stateDumpString
{
  v33[7] = 0;
  NSAppendPrintF();
  v3 = 0;
  v4 = [(SDNearbyAgent *)self->_nearbyAgent description];
  v5 = v4;
  if (v4)
  {
    v33[6] = v3;
    v27 = v4;
    NSAppendPrintF();
    v6 = v3;

    v3 = v6;
  }

  v7 = [(SDRemoteInteractionAgent *)self->_riAgent description];

  if (v7)
  {
    v33[5] = v3;
    v28 = v7;
    NSAppendPrintF();
    v8 = v3;

    v3 = v8;
  }

  v9 = [(SDProximityPairingAgent *)self->_ppAgent description];

  if (v9)
  {
    v33[4] = v3;
    v29 = v9;
    NSAppendPrintF();
    v10 = v3;

    v3 = v10;
  }

  setupAgent = self->_setupAgent;
  v12 = CUDescriptionWithLevel();

  if (v12)
  {
    v33[3] = v3;
    v29 = v12;
    NSAppendPrintF();
    v13 = v3;

    v3 = v13;
  }

  v14 = [(SDAutoFillAgent *)self->_autoFillAgent description];

  if (v14)
  {
    v33[2] = v3;
    v30 = v14;
    NSAppendPrintF();
    v15 = v3;

    v3 = v15;
  }

  v16 = [(SDProxHandoffAgent *)self->_proxHandoffAgent description];

  if (v16)
  {
    v33[1] = v3;
    v31 = v16;
    NSAppendPrintF();
    v17 = v3;

    v3 = v17;
  }

  v33[0] = v3;
  [(SDXPCServer *)self stateAppendXPCConnections:v33, v31];
  v18 = v33[0];

  NSAppendPrintF();
  v19 = v18;

  v20 = [(SDAppleIDAgent *)self->_appleIDAgent detailedDescription];

  if (v20)
  {
    v32 = v20;
    NSAppendPrintF();
    v21 = v19;

    v19 = v21;
  }

  v22 = +[SDStatusMonitor sharedMonitor];
  v23 = [v22 description];

  if (v23)
  {
    NSAppendPrintF();
    v24 = v19;

    v19 = v24;
  }

  NSAppendPrintF();
  v25 = v19;

  return v19;
}

- (SDXPCServer)initWithAirDropService:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SDXPCServer;
  v6 = [(SDXPCServer *)&v10 init];
  if (v6)
  {
    v7 = SFMainQueue();
    dispatchQueue = v6->_dispatchQueue;
    v6->_dispatchQueue = v7;

    v6->_prefNotifyToken = -1;
    objc_storeStrong(&v6->_airDropService, a3);
  }

  return v6;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018522C;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  LogSetAppID();
  LogControl();
  if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    sub_1001929B4();
  }

  if (!self->_xpcListener)
  {
    v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.SharingServices"];
    xpcListener = self->_xpcListener;
    self->_xpcListener = v3;

    [(NSXPCListener *)self->_xpcListener setDelegate:self];
    [(NSXPCListener *)self->_xpcListener _setQueue:self->_dispatchQueue];
    [(NSXPCListener *)self->_xpcListener resume];
  }

  SFAWDEnsureInitialized();
  if (!self->_appleIDAgent)
  {
    v5 = +[SDAppleIDAgent sharedAgent];
    appleIDAgent = self->_appleIDAgent;
    self->_appleIDAgent = v5;
  }

  if (!self->_subCredentialAgent)
  {
    v7 = +[SDSubCredentialAgent sharedAgent];
    subCredentialAgent = self->_subCredentialAgent;
    self->_subCredentialAgent = v7;
  }

  if (!self->_hotspotAgent)
  {
    v9 = +[SDHotspotAgent sharedAgent];
    hotspotAgent = self->_hotspotAgent;
    self->_hotspotAgent = v9;
  }

  if (!self->_nearbyAgent)
  {
    v11 = +[SDNearbyAgent sharedNearbyAgent];
    nearbyAgent = self->_nearbyAgent;
    self->_nearbyAgent = v11;

    [(SDNearbyAgent *)self->_nearbyAgent setDispatchQueue:self->_dispatchQueue];
    [(SDNearbyAgent *)self->_nearbyAgent activate];
  }

  if (!self->_riAgent)
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x2050000000;
    v13 = qword_10098A018;
    v39 = qword_10098A018;
    if (!qword_10098A018)
    {
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_10018FCC8;
      v35[3] = &unk_1008CDA20;
      v35[4] = &v36;
      sub_10018FCC8(v35);
      v13 = v37[3];
    }

    v14 = v13;
    _Block_object_dispose(&v36, 8);
    if ([v13 supportsContentExtensions])
    {
      v15 = +[SDRemoteInteractionAgent sharedAgent];
      riAgent = self->_riAgent;
      self->_riAgent = v15;

      [(SDRemoteInteractionAgent *)self->_riAgent setDispatchQueue:self->_dispatchQueue];
      [(SDRemoteInteractionAgent *)self->_riAgent activate];
    }
  }

  if (!self->_rtiClient)
  {
    v17 = +[SDSharedRemoteTextInputClient sharedClient];
    rtiClient = self->_rtiClient;
    self->_rtiClient = v17;

    [(SDSharedRemoteTextInputClient *)self->_rtiClient setDispatchQueue:self->_dispatchQueue];
    [(SDSharedRemoteTextInputClient *)self->_rtiClient activate];
  }

  if (!self->_ppAgent && (SFIsDeviceAudioAccessory() & 1) == 0)
  {
    v19 = +[SDProximityPairingAgent sharedProximityPairingAgent];
    ppAgent = self->_ppAgent;
    self->_ppAgent = v19;

    [(SDProximityPairingAgent *)self->_ppAgent setDispatchQueue:self->_dispatchQueue];
    [(SDProximityPairingAgent *)self->_ppAgent activate];
  }

  if (!self->_setupAgent)
  {
    v21 = +[SDSetupAgent sharedSetupAgent];
    setupAgent = self->_setupAgent;
    self->_setupAgent = v21;

    [(SDSetupAgent *)self->_setupAgent setDispatchQueue:self->_dispatchQueue];
    [(SDSetupAgent *)self->_setupAgent activate];
  }

  if (!self->_autoFillAgent)
  {
    v23 = objc_alloc_init(SDAutoFillAgent);
    autoFillAgent = self->_autoFillAgent;
    self->_autoFillAgent = v23;

    [(SDAutoFillAgent *)self->_autoFillAgent setDispatchQueue:self->_dispatchQueue];
    [(SDAutoFillAgent *)self->_autoFillAgent activate];
  }

  if (!self->_proxHandoffAgent)
  {
    v25 = +[SDProxHandoffAgent sharedAgent];
    proxHandoffAgent = self->_proxHandoffAgent;
    self->_proxHandoffAgent = v25;

    [(SDProxHandoffAgent *)self->_proxHandoffAgent setDispatchQueue:self->_dispatchQueue];
    [(SDProxHandoffAgent *)self->_proxHandoffAgent activate];
  }

  if (!self->_shareAudioService)
  {
    if ((LODWORD(v35[0]) = 0, Int64 = CFPrefs_GetInt64(), LODWORD(v35[0])) && GestaltGetDeviceClass() - 1 < 3 || Int64)
    {
      v28 = objc_alloc_init(SFShareAudioService);
      shareAudioService = self->_shareAudioService;
      self->_shareAudioService = v28;

      v30 = dispatch_queue_create("ShareAudioService", 0);
      [(SFShareAudioService *)self->_shareAudioService setDispatchQueue:v30];

      v31 = +[SDStatusMonitor sharedMonitor];
      [(SFShareAudioService *)self->_shareAudioService setStatusMonitor:v31];

      [(SFShareAudioService *)self->_shareAudioService activate];
    }
  }

  if (self->_prefNotifyToken == -1)
  {
    dispatchQueue = self->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10018572C;
    handler[3] = &unk_1008CE690;
    handler[4] = self;
    notify_register_dispatch("com.apple.Sharing.prefsChanged", &self->_prefNotifyToken, dispatchQueue, handler);
  }

  if (!self->_stateHandle)
  {
    if (IsAppleInternalBuild())
    {
      v33 = self->_dispatchQueue;
      self->_stateHandle = os_state_add_handler();
    }
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100185878;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_stateHandle)
  {
    os_state_remove_handler();
    self->_stateHandle = 0;
  }

  prefNotifyToken = self->_prefNotifyToken;
  if (prefNotifyToken != -1)
  {
    notify_cancel(prefNotifyToken);
    self->_prefNotifyToken = -1;
  }

  [(NSXPCListener *)self->_xpcListener invalidate];
  xpcListener = self->_xpcListener;
  self->_xpcListener = 0;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self->_xpcConnections;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(*(&v20 + 1) + 8 * i) + 136) invalidate];
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  [(NSMutableSet *)self->_xpcConnections removeAllObjects];
  xpcConnections = self->_xpcConnections;
  self->_xpcConnections = 0;

  appleIDAgent = self->_appleIDAgent;
  self->_appleIDAgent = 0;

  [(SDNearbyAgent *)self->_nearbyAgent invalidate];
  nearbyAgent = self->_nearbyAgent;
  self->_nearbyAgent = 0;

  [(SDRemoteInteractionAgent *)self->_riAgent invalidate];
  riAgent = self->_riAgent;
  self->_riAgent = 0;

  [(SDSharedRemoteTextInputClient *)self->_rtiClient invalidate];
  rtiClient = self->_rtiClient;
  self->_rtiClient = 0;

  [(SDProximityPairingAgent *)self->_ppAgent invalidate];
  ppAgent = self->_ppAgent;
  self->_ppAgent = 0;

  [(SDSetupAgent *)self->_setupAgent invalidate];
  setupAgent = self->_setupAgent;
  self->_setupAgent = 0;

  [(SDAutoFillAgent *)self->_autoFillAgent invalidate];
  autoFillAgent = self->_autoFillAgent;
  self->_autoFillAgent = 0;

  [(SDProxHandoffAgent *)self->_proxHandoffAgent invalidate];
  proxHandoffAgent = self->_proxHandoffAgent;
  self->_proxHandoffAgent = 0;

  [(SFShareAudioService *)self->_shareAudioService invalidate];
  shareAudioService = self->_shareAudioService;
  self->_shareAudioService = 0;

  if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    sub_1001929EC();
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a4;
  dispatchQueue = self->_dispatchQueue;
  v8 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
  v9 = [[SDXPCConnection alloc] initWithServer:self xpcConnection:v6];
  xpcConnections = self->_xpcConnections;
  if (!xpcConnections)
  {
    v11 = objc_alloc_init(NSMutableSet);
    v12 = self->_xpcConnections;
    self->_xpcConnections = v11;

    xpcConnections = self->_xpcConnections;
  }

  [(NSMutableSet *)xpcConnections addObject:v9];
  xpcListener = self->_xpcListener;

  if (xpcListener == v8)
  {
    v14 = self->_xpcInterfaceClient;
    if (!v14)
    {
      v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SFXPCInterface];
      v29 = [NSSet alloc];
      v28 = objc_opt_class();
      v27 = objc_opt_class();
      v26 = objc_opt_class();
      v25 = objc_opt_class();
      v24 = objc_opt_class();
      v15 = objc_opt_class();
      v16 = objc_opt_class();
      v17 = objc_opt_class();
      v18 = [v29 initWithObjects:{v28, v27, v26, v25, v24, v15, v16, v17, objc_opt_class(), 0}];
      [(NSXPCInterface *)v14 setClasses:v18 forSelector:"shareAudioProgressEvent:info:" argumentIndex:1 ofReply:0];
      objc_storeStrong(&self->_xpcInterfaceClient, v14);
    }

    v19 = self->_xpcInterfaceServer;
    if (!v19)
    {
      v19 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SDXPCInterface];
      v20 = [NSSet alloc];
      v21 = objc_opt_class();
      v22 = [v20 initWithObjects:{v21, objc_opt_class(), 0}];
      [(NSXPCInterface *)v19 setClasses:v22 forSelector:"getPeopleSuggestions:completion:" argumentIndex:0 ofReply:1];

      objc_storeStrong(&self->_xpcInterfaceServer, v19);
    }

    [v6 _setQueue:self->_dispatchQueue];
    [v6 setExportedInterface:v19];
    [v6 setExportedObject:v9];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100185E5C;
    v30[3] = &unk_1008CE028;
    v30[4] = self;
    v31 = v9;
    [v6 setInvalidationHandler:v30];
    [v6 setRemoteObjectInterface:v14];
    [v6 resume];
    if (dword_100971A10 <= 20 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
    {
      sub_100192A40(v6);
    }
  }

  else
  {
    if (dword_100971A10 <= 60 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
    {
      sub_100192A20();
    }

    [(NSMutableSet *)self->_xpcConnections removeObject:v9];
  }

  return xpcListener == v8;
}

- (void)_connectionInvalidated:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v5 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
  [v5 connectionInvalidated];
  [(NSMutableSet *)self->_xpcConnections removeObject:v5];
}

- (void)stateAppendXPCConnections:(id *)a3
{
  NSAppendPrintF();
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = self->_xpcConnections;
  v21 = [(NSMutableSet *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v21)
  {
    v20 = *v29;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v28 + 1) + 8 * i);
        v16 = [*(v5 + 136) processIdentifier];
        NSAppendPrintF();
        if ([*(v5 + 16) count])
        {
          v23 = i;
          NSAppendPrintF();
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v22 = v5;
          v6 = *(v5 + 16);
          v7 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v7)
          {
            v8 = v7;
            v9 = 0;
            v10 = *v25;
            do
            {
              for (j = 0; j != v8; j = j + 1)
              {
                if (*v25 != v10)
                {
                  objc_enumerationMutation(v6);
                }

                v12 = *(*(&v24 + 1) + 8 * j);
                if (v9)
                {
                  v13 = ", ";
                }

                else
                {
                  v13 = "";
                }

                v14 = [(NSCountedSet *)self->_assertions countForObject:*(*(&v24 + 1) + 8 * j), v15, v17, v18];
                v17 = v12;
                v18 = v14;
                v15 = v13;
                NSAppendPrintF();
                ++v9;
              }

              v8 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:{16, v13, v12, v18}];
            }

            while (v8);
          }

          v5 = v22;
          i = v23;
        }

        if (*(v5 + 25) == 1)
        {
          NSAppendPrintF();
        }

        if (*(v5 + 32))
        {
          v15 = *(v5 + 32);
          NSAppendPrintF();
        }

        if (*(v5 + 40))
        {
          v15 = *(v5 + 40);
          NSAppendPrintF();
        }

        if (*(v5 + 64))
        {
          v15 = *(v5 + 64);
          NSAppendPrintF();
        }

        if (*(v5 + 72))
        {
          v15 = *(v5 + 72);
          NSAppendPrintF();
        }

        if (*(v5 + 88))
        {
          v15 = *(v5 + 88);
          NSAppendPrintF();
        }

        if (*(v5 + 96))
        {
          v15 = *(v5 + 96);
          NSAppendPrintF();
        }

        if (*(v5 + 104))
        {
          v15 = *(v5 + 104);
          NSAppendPrintF();
        }

        NSAppendPrintF();
      }

      v21 = [(NSMutableSet *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v21);
  }
}

@end