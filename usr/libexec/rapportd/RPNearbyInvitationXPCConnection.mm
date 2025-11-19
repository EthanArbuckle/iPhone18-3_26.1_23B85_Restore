@interface RPNearbyInvitationXPCConnection
- (BOOL)_entitledAndReturnError:(id *)a3;
- (BOOL)reportFoundDevice:(id)a3 outReason:(id *)a4;
- (RPNearbyInvitationXPCConnection)initWithDaemon:(id)a3 xpcCnx:(id)a4;
- (void)connectionInvalidated;
- (void)nearbyInvitationActivateDiscovery:(id)a3 completion:(id)a4;
- (void)nearbyInvitationActivateServer:(id)a3 completion:(id)a4;
- (void)nearbyInvitationActivateSession:(id)a3 completion:(id)a4;
- (void)nearbyInvitationInvalidateClientSession;
- (void)nearbyInvitationInvalidateSessionID:(id)a3;
- (void)nearbyInvitationSendEventID:(id)a3 event:(id)a4 options:(id)a5 completion:(id)a6;
- (void)nearbyInvitationSendRequestID:(id)a3 request:(id)a4 options:(id)a5 responseHandler:(id)a6;
- (void)reportLostDevice:(id)a3;
- (void)sessionActivatedWithError:(id)a3;
- (void)sessionEndedWithID:(id)a3 netCnx:(id)a4;
- (void)sessionStartWithID:(id)a3 netCnx:(id)a4 completion:(id)a5;
@end

@implementation RPNearbyInvitationXPCConnection

- (RPNearbyInvitationXPCConnection)initWithDaemon:(id)a3 xpcCnx:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = RPNearbyInvitationXPCConnection;
  v9 = [(RPNearbyInvitationXPCConnection *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_daemon, a3);
    objc_storeStrong(&v10->_xpcCnx, a4);
  }

  return v10;
}

- (void)connectionInvalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D3D90 <= 20 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
  {
    sub_100119FBC(self);
  }

  v12 = self->_activatedDiscovery;
  activatedDiscovery = self->_activatedDiscovery;
  self->_activatedDiscovery = 0;

  if (v12)
  {
    [(NSMutableSet *)self->_daemon->_activatedDiscoverySet removeObject:v12];
    [(RPNearbyInvitationDiscovery *)v12 invalidate];
  }

  v4 = self->_activatedServer;
  activatedServer = self->_activatedServer;
  self->_activatedServer = 0;

  if (v4)
  {
    activatedServerXPCCnxMap = self->_daemon->_activatedServerXPCCnxMap;
    v7 = [(RPNearbyInvitationServer *)v4 serviceType];
    [(NSMutableDictionary *)activatedServerXPCCnxMap removeObjectForKey:v7];

    [(RPNearbyInvitationServer *)v4 invalidate];
  }

  activatedSession = self->_activatedSession;
  if (activatedSession)
  {
    activatedSessionSet = self->_daemon->_activatedSessionSet;
    v10 = activatedSession;
    [(NSMutableSet *)activatedSessionSet removeObject:v10];
    [(RPNearbyInvitationSession *)v10 invalidate];
    v11 = self->_activatedSession;
    self->_activatedSession = 0;
  }
}

- (BOOL)_entitledAndReturnError:(id *)a3
{
  if (self->_entitled)
  {
    return 1;
  }

  else
  {
    p_xpcCnx = &self->_xpcCnx;
    v7 = [(NSXPCConnection *)self->_xpcCnx cuValueForEntitlementNoCache:@"com.apple.rapport.NearbyInvitation"];
    v8 = [v7 isEqual:&__kCFBooleanTrue];

    if (v8)
    {
      v9 = 0;
      self->_entitled = 1;
    }

    else
    {
      if (dword_1001D3D90 <= 90 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
      {
        sub_10011A004(p_xpcCnx);
      }

      v9 = RPErrorF();
    }

    v10 = v9;
    *a3 = v10;

    return self->_entitled;
  }
}

- (void)sessionStartWithID:(id)a3 netCnx:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(RPNearbyInvitationDevice);
  v12 = [v9 peerDeviceInfo];
  if (v12)
  {
    [v11 updateWithEndpoint:v12];
  }

  netCnx = self->_netCnx;
  self->_netCnx = v9;
  v14 = v9;

  if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  xpcCnx = self->_xpcCnx;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100063740;
  v18[3] = &unk_1001AC998;
  v19 = v10;
  v16 = v10;
  v17 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v18];
  [v17 nearbyInvitationStartServerSessionID:v8 device:v11 completion:v16];
}

- (void)sessionEndedWithID:(id)a3 netCnx:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (self->_activatedServer)
  {
    if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_10011A094();
    }

    v7 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
    [v7 nearbyInvitationSessionEndedWithID:v8];
  }
}

- (void)sessionActivatedWithError:(id)a3
{
  v6 = a3;
  [(RPNearbyInvitationSession *)self->_activatedSession setWaitingToConnect:0];
  [(RPNearbyInvitationSession *)self->_activatedSession setFailedToConnect:v6 != 0];
  activateCompletionHandler = self->_activateCompletionHandler;
  if (activateCompletionHandler)
  {
    activateCompletionHandler[2](activateCompletionHandler, v6);
    v5 = self->_activateCompletionHandler;
    self->_activateCompletionHandler = 0;
  }
}

- (void)nearbyInvitationActivateDiscovery:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v19 = 0;
  v9 = [(RPNearbyInvitationXPCConnection *)self _entitledAndReturnError:&v19];
  v10 = v19;
  self->_entitled = v9;
  if (v9)
  {
    if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_10011A0D4(self);
    }

    [v7 setDispatchQueue:self->_dispatchQueue];
    objc_storeStrong(&self->_activatedDiscovery, a3);
    activatedDiscoverySet = self->_daemon->_activatedDiscoverySet;
    if (!activatedDiscoverySet)
    {
      v12 = objc_alloc_init(NSMutableSet);
      daemon = self->_daemon;
      v14 = daemon->_activatedDiscoverySet;
      daemon->_activatedDiscoverySet = v12;

      activatedDiscoverySet = self->_daemon->_activatedDiscoverySet;
    }

    [(NSMutableSet *)activatedDiscoverySet addObject:v7];
    if (v8)
    {
      v8[2](v8, v10);
    }

    [(RPNearbyInvitationDaemon *)self->_daemon _update];
    discoveredDevices = self->_daemon->_discoveredDevices;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100063AD0;
    v16[3] = &unk_1001ACD00;
    v17 = v7;
    v18 = self;
    [(NSMutableDictionary *)discoveredDevices enumerateKeysAndObjectsUsingBlock:v16];
  }

  else if (v8)
  {
    v8[2](v8, v10);
  }
}

- (void)nearbyInvitationActivateServer:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v18 = 0;
  v9 = [(RPNearbyInvitationXPCConnection *)self _entitledAndReturnError:&v18];
  v10 = v18;
  if (v9)
  {
    v11 = [v7 serviceType];

    if (v11)
    {
      activatedServerXPCCnxMap = self->_daemon->_activatedServerXPCCnxMap;
      v13 = [v7 serviceType];
      v14 = [(NSMutableDictionary *)activatedServerXPCCnxMap objectForKey:v13];

      if (v14)
      {
        if (v8)
        {
          v17 = [v7 serviceType];
          v15 = RPErrorF();
          v8[2](v8, v15);
        }
      }

      else
      {
        if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
        {
          sub_10011A11C(self);
        }

        [v7 setDispatchQueue:self->_dispatchQueue];
        objc_storeStrong(&self->_activatedServer, a3);
        [(RPNearbyInvitationDaemon *)self->_daemon _handleServerActivation:self];
        if (v8)
        {
          v8[2](v8, v10);
        }

        [(RPNearbyInvitationDaemon *)self->_daemon _update];
      }
    }

    else
    {
      v16 = RPErrorF();

      if (v8)
      {
        v8[2](v8, v16);
      }

      v10 = v16;
    }
  }

  else if (v8)
  {
    v8[2](v8, v10);
  }
}

- (void)nearbyInvitationActivateSession:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_1000029EC;
  v41 = sub_10000318C;
  v42 = 0;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000640E8;
  v34[3] = &unk_1001ABD58;
  v36 = &v37;
  v9 = v8;
  v35 = v9;
  v10 = objc_retainBlock(v34);
  v11 = (v38 + 5);
  obj = v38[5];
  v12 = [(RPNearbyInvitationXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v11, obj);
  if (v12)
  {
    if (self->_activatedSession)
    {
      v13 = RPErrorF();
      v14 = v38[5];
      v38[5] = v13;
    }

    else
    {
      v15 = [v7 destinationDevice];
      v14 = [v15 identifier];

      if (v14)
      {
        v16 = [(RPNearbyInvitationDaemon *)self->_daemon _findMatchingDeviceWithIdentifier:v14];
        v17 = v16;
        if (v16 && ([v16 identifier], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v14, "isEqualToString:", v18), v18, (v19 & 1) != 0))
        {
          [v7 setDaemonDevice:v17];
          if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
          {
            v20 = [(NSXPCConnection *)self->_xpcCnx processIdentifier];
            v31 = [v7 serviceType];
            v32 = v17;
            v30 = v20;
            LogPrintF();
          }

          [v7 setWaitingToConnect:{1, v30, v31, v32}];
          [v7 setDispatchQueue:self->_dispatchQueue];
          objc_storeStrong(&self->_activatedSession, a3);
          v24 = objc_retainBlock(v9);
          activateCompletionHandler = self->_activateCompletionHandler;
          self->_activateCompletionHandler = v24;

          activatedSessionSet = self->_daemon->_activatedSessionSet;
          if (!activatedSessionSet)
          {
            v27 = objc_alloc_init(NSMutableSet);
            daemon = self->_daemon;
            v29 = daemon->_activatedSessionSet;
            daemon->_activatedSessionSet = v27;

            activatedSessionSet = self->_daemon->_activatedSessionSet;
          }

          [(NSMutableSet *)activatedSessionSet addObject:v7];
          [(RPNearbyInvitationDaemon *)self->_daemon _update];
        }

        else
        {
          v22 = RPErrorF();
          v23 = v38[5];
          v38[5] = v22;
        }
      }

      else
      {
        v21 = RPErrorF();
        v17 = v38[5];
        v38[5] = v21;
      }
    }
  }

  (v10[2])(v10);

  _Block_object_dispose(&v37, 8);
}

- (void)nearbyInvitationInvalidateClientSession
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
  {
    sub_10011A170(self);
  }

  if (self->_activatedSession)
  {
    [(NSMutableSet *)self->_daemon->_activatedSessionSet removeObject:?];
    v3 = self->_netCnx;
    [(RPConnection *)v3 invalidate];
    netCnx = self->_netCnx;
    self->_netCnx = 0;
  }

  daemon = self->_daemon;

  [(RPNearbyInvitationDaemon *)daemon _update];
}

- (void)nearbyInvitationInvalidateSessionID:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
  {
    sub_10011A1B8(self);
  }
}

- (void)nearbyInvitationSendEventID:(id)a3 event:(id)a4 options:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v19 = 0;
  v14 = [(RPNearbyInvitationXPCConnection *)self _entitledAndReturnError:&v19];
  v15 = v19;
  if (v14)
  {
    v16 = self->_netCnx;
    v17 = v16;
    if (v16)
    {
      [(RPConnection *)v16 sendEncryptedEventID:v10 event:v11 options:v12 completion:v13];
    }

    else if (v13)
    {
      v18 = RPErrorF();
      v13[2](v13, v18);
    }
  }

  else if (v13)
  {
    v13[2](v13, v15);
  }
}

- (void)nearbyInvitationSendRequestID:(id)a3 request:(id)a4 options:(id)a5 responseHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v18 = 0;
  v14 = [(RPNearbyInvitationXPCConnection *)self _entitledAndReturnError:&v18];
  v15 = v18;
  if (v14)
  {
    netCnx = self->_netCnx;
    if (netCnx)
    {
      [(RPConnection *)netCnx sendEncryptedRequestID:v10 request:v11 xpcID:self->_xpcID options:v12 responseHandler:v13];
    }

    else
    {
      v17 = RPErrorF();
      (*(v13 + 2))(v13, 0, 0, v17);
    }
  }

  else
  {
    (*(v13 + 2))(v13, 0, 0, v15);
  }
}

- (BOOL)reportFoundDevice:(id)a3 outReason:(id *)a4
{
  v6 = a3;
  v7 = [v6 identifier];
  if (!v7)
  {
    if (a4)
    {
      v14 = 0;
      v15 = @"missingDeviceIdentifier";
LABEL_11:
      *a4 = v15;
      goto LABEL_15;
    }

LABEL_12:
    v14 = 0;
    goto LABEL_15;
  }

  if (([(RPNearbyInvitationDiscovery *)self->_activatedDiscovery shouldReportDevice:v6]& 1) == 0)
  {
    if (a4)
    {
      v14 = 0;
      v15 = @"activateDiscoveryIgnore";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v8 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:v7];

  devices = self->_devices;
  if (!devices)
  {
    v10 = objc_alloc_init(NSMutableDictionary);
    v11 = self->_devices;
    self->_devices = v10;

    devices = self->_devices;
  }

  [(NSMutableDictionary *)devices setObject:v6 forKeyedSubscript:v7];
  v12 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
  v13 = v12;
  if (v8)
  {
    [v12 nearbyInvitationChangedDevice:v6 changes:2];
  }

  else
  {
    [v12 nearbyInvitationFoundDevice:v6];
  }

  v14 = 1;
LABEL_15:

  return v14;
}

- (void)reportLostDevice:(id)a3
{
  v7 = a3;
  v4 = [v7 identifier];
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:v4];

    if (v5)
    {
      [(NSMutableDictionary *)self->_devices setObject:0 forKeyedSubscript:v4];
      v6 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
      [v6 nearbyInvitationLostDevice:v7];
    }
  }
}

@end