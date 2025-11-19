@interface RPRemoteDisplayXPCConnection
- (BOOL)_entitledAndReturnError:(id *)a3;
- (BOOL)netConnectionStartWithDevice:(id)a3 session:(id)a4 error:(id *)a5;
- (RPRemoteDisplayXPCConnection)initWithDaemon:(id)a3 xpcCnx:(id)a4;
- (void)_authCompletion:(id)a3;
- (void)_handleContinuityCameraDisabledAlertResponse;
- (void)_receivedEventID:(id)a3 event:(id)a4 options:(id)a5 sessionID:(id)a6;
- (void)_receivedRequestID:(id)a3 request:(id)a4 options:(id)a5 responseHandler:(id)a6 sessionID:(id)a7;
- (void)_showContinuityCameraDisabledAlert;
- (void)connectionInvalidated;
- (void)remoteDisplayActivateDiscovery:(id)a3 completion:(id)a4;
- (void)remoteDisplayActivateServer:(id)a3 completion:(id)a4;
- (void)remoteDisplayActivateSession:(id)a3 completion:(id)a4;
- (void)remoteDisplayChangeDedicatedDevice:(id)a3;
- (void)remoteDisplayChangeDiscoverySessionStateForDevice:(id)a3 reason:(id)a4;
- (void)remoteDisplayDedicatedDeviceConfirmationWithCompletion:(id)a3;
- (void)remoteDisplayInvalidateClientSession;
- (void)remoteDisplayInvalidateSessionID:(id)a3;
- (void)remoteDisplayPersonCanceled:(id)a3;
- (void)remoteDisplaySendEventID:(id)a3 event:(id)a4 options:(id)a5 completion:(id)a6;
- (void)remoteDisplaySendRequestID:(id)a3 request:(id)a4 options:(id)a5 responseHandler:(id)a6;
- (void)remoteDisplayStopPairingServer;
- (void)remoteDisplayTryPassword:(id)a3;
- (void)sessionEndedWithID:(id)a3 netCnx:(id)a4;
- (void)sessionStartWithID:(id)a3 netCnx:(id)a4 completion:(id)a5;
- (void)updateErrorFlags:(unint64_t)a3;
@end

@implementation RPRemoteDisplayXPCConnection

- (RPRemoteDisplayXPCConnection)initWithDaemon:(id)a3 xpcCnx:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = RPRemoteDisplayXPCConnection;
  v9 = [(RPRemoteDisplayXPCConnection *)&v12 init];
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
  if (dword_1001D4BA0 <= 20 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10012A5B8(self);
  }

  tcpServerConnections = self->_daemon->_tcpServerConnections;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000B7008;
  v22[3] = &unk_1001AEF08;
  v22[4] = self;
  [(NSMutableDictionary *)tcpServerConnections enumerateKeysAndObjectsUsingBlock:v22];
  v4 = self->_activatedDiscovery;
  activatedDiscovery = self->_activatedDiscovery;
  self->_activatedDiscovery = 0;

  if (v4)
  {
    [(NSMutableSet *)self->_daemon->_activatedDiscoverySet removeObject:v4];
    [(RPRemoteDisplayDiscovery *)v4 invalidate];
  }

  [(RPRemoteDisplayServer *)self->_activatedServer invalidate];
  activatedServer = self->_activatedServer;
  self->_activatedServer = 0;

  v7 = self->_activatedSession;
  activatedSession = self->_activatedSession;
  self->_activatedSession = 0;

  if (v7)
  {
    [(NSMutableSet *)self->_daemon->_activatedSessionSet removeObject:v7];
    [(RPRemoteDisplaySession *)v7 invalidate];
  }

  activeNetCnx = self->_activeNetCnx;
  self->_activeNetCnx = 0;

  [(RPConnection *)self->_clientNetCnx invalidate];
  clientNetCnx = self->_clientNetCnx;
  self->_clientNetCnx = 0;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_serverNetCnxs;
  v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v18 + 1) + 8 * i) invalidate];
      }

      v13 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v13);
  }

  [(NSMutableSet *)self->_serverNetCnxs removeAllObjects];
  serverNetCnxs = self->_serverNetCnxs;
  self->_serverNetCnxs = 0;

  xpcCnx = self->_xpcCnx;
  self->_xpcCnx = 0;
}

- (BOOL)_entitledAndReturnError:(id *)a3
{
  if (self->_entitled)
  {
    return 1;
  }

  p_xpcCnx = &self->_xpcCnx;
  v7 = [(NSXPCConnection *)self->_xpcCnx cuValueForEntitlementNoCache:@"com.apple.RemoteDisplay"];
  v8 = [v7 isEqual:&__kCFBooleanTrue];

  if (v8)
  {
    result = 1;
    self->_entitled = 1;
    return result;
  }

  if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10012A600(p_xpcCnx);
    if (a3)
    {
      goto LABEL_9;
    }
  }

  else if (a3)
  {
LABEL_9:
    v9 = RPErrorF();
    v10 = v9;
    result = 0;
    *a3 = v9;
    return result;
  }

  return 0;
}

- (BOOL)netConnectionStartWithDevice:(id)a3 session:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 bonjourDevice];
  if (v10 || ([v8 bonjourDevice], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
  }

  else
  {
    v33 = [v8 ipAddress];

    if (!v33)
    {
      if (a5)
      {
        RPErrorF();
        *a5 = v31 = 0;
      }

      else
      {
        v31 = 0;
      }

      goto LABEL_18;
    }

    v11 = 0;
  }

  ++self->_daemon->_sessionIDLast;
  v12 = [NSNumber numberWithUnsignedInt:?];
  v13 = self->_clientNetCnx;
  if (!v13)
  {
    v14 = objc_alloc_init(RPConnection);
    v13 = v14;
    clientNetCnx = self->_clientNetCnx;
    self->_clientNetCnx = v13;

    objc_storeStrong(&self->_activeNetCnx, v14);
  }

  v16 = [v8 ipAddress];

  if (v16)
  {
    v17 = [v8 ipAddress];
    [(RPConnection *)v13 setDestinationString:v17];
  }

  else
  {
    [(RPConnection *)v13 setBonjourPeerDevice:v11];
  }

  [(RPConnection *)v13 setControlFlags:576];
  if (([v8 statusFlags] & 0x1000080000) == 0)
  {
    [(RPConnection *)v13 setControlFlags:[(RPConnection *)v13 controlFlags]| 0x400000000000];
  }

  v18 = [v9 pairingInfo];

  if (v18)
  {
    [(RPConnection *)v13 setControlFlags:[(RPConnection *)v13 controlFlags]| 0x8000000000];
  }

  [(RPConnection *)v13 setDispatchQueue:self->_dispatchQueue];
  v19 = +[RPIdentityDaemon sharedIdentityDaemon];
  [(RPConnection *)v13 setIdentityDaemon:v19];

  [(RPConnection *)v13 setKeepAliveSeconds:10];
  v20 = [NSString alloc];
  daemon = self->_daemon;
  v22 = daemon->_cnxIDLast + 1;
  daemon->_cnxIDLast = v22;
  v23 = [v20 initWithFormat:@"%@Cnx-%u", @"RDLink", v22];
  [(RPConnection *)v13 setLabel:v23];

  [(RPConnection *)v13 setLocalDeviceInfo:self->_daemon->_localDeviceInfo];
  -[RPConnection setPasswordType:](v13, "setPasswordType:", [v9 passwordType]);
  v24 = [v8 identifier];
  [(RPConnection *)v13 setPeerIdentifier:v24];

  [(RPConnection *)v13 setPresent:1];
  v25 = [v9 serviceType];
  [(RPConnection *)v13 setServiceType:v25];

  if (([v9 internalAuthFlags] & 8) != 0)
  {
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_1000B76C8;
    v46[3] = &unk_1001AB2C8;
    v46[4] = self;
    [(RPConnection *)v13 setAuthCompletionHandler:v46];
  }

  if (([v9 internalAuthFlags] & 4) != 0)
  {
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1000B76D4;
    v45[3] = &unk_1001AF138;
    v45[4] = self;
    [(RPConnection *)v13 setPromptForPasswordHandler:v45];
  }

  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000B76E4;
  v42[3] = &unk_1001AB130;
  v42[4] = self;
  v26 = v12;
  v43 = v26;
  v27 = v13;
  v44 = v27;
  [(RPConnection *)v27 setInvalidationHandler:v42];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1000B76F4;
  v40[3] = &unk_1001AB4F0;
  v40[4] = self;
  v28 = v26;
  v41 = v28;
  [(RPConnection *)v27 setReceivedEventHandler:v40];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000B770C;
  v38[3] = &unk_1001AB518;
  v38[4] = self;
  v39 = v28;
  v29 = v28;
  [(RPConnection *)v27 setReceivedRequestHandler:v38];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000B7728;
  v34[3] = &unk_1001AB590;
  v35 = v9;
  v36 = v27;
  v37 = self;
  v30 = v27;
  [(RPConnection *)v30 setStateChangedHandler:v34];
  [(RPConnection *)v30 activate];

  v31 = 1;
LABEL_18:

  return v31;
}

- (void)sessionStartWithID:(id)a3 netCnx:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(RPRemoteDisplayDevice);
  v12 = [v9 peerDeviceInfo];
  if (v12)
  {
    [v11 updateWithEndpoint:v12];
  }

  v13 = [v9 linkType];
  v14 = v13;
  if (v13 == 4)
  {
    v15 = 8;
LABEL_7:
    [v11 setStatusFlags:{objc_msgSend(v11, "statusFlags") | v15}];
    goto LABEL_8;
  }

  if ((v13 & 0xFFFFFFFE) == 8)
  {
    v15 = 0x1000000;
    goto LABEL_7;
  }

LABEL_8:
  v16 = self->_activeNetCnx;
  if (v16 && dword_1001D4BA0 < 31 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    v44 = v16;
    v45 = v9;
    LogPrintF();
  }

  objc_storeStrong(&self->_activeNetCnx, a4);
  xpcCnx = self->_xpcCnx;
  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_1000B7E78;
  v59[3] = &unk_1001AD4C0;
  v18 = v8;
  v60 = v18;
  v19 = v10;
  v61 = v19;
  v20 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v59];
  v21 = [NSNumber numberWithInt:v14];
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_1000B7F38;
  v54[3] = &unk_1001ABF30;
  v55 = v18;
  v56 = v11;
  v57 = self;
  v46 = v19;
  v47 = v55;
  v58 = v46;
  v48 = v11;
  [v20 remoteDisplayStartServerSessionID:v55 device:v11 linkType:v21 completion:v54];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v49 = v9;
  v22 = [v9 receivedMessages];
  v23 = [v22 countByEnumeratingWithState:&v50 objects:v62 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v51;
    do
    {
      v26 = 0;
      do
      {
        if (*v51 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v50 + 1) + 8 * v26);
        v28 = [v27 requestID];
        if (v28)
        {
          v29 = v28;
          v30 = [v27 request];
          if (v30)
          {
            v31 = v30;
            v32 = [v27 sessionID];

            if (v32)
            {
              if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
              {
                sub_10012A6D8(v27);
              }

              v33 = [v27 requestID];
              v34 = [v27 request];
              v35 = [v27 options];
              v36 = [v27 responseHandler];
              v37 = [v27 sessionID];
              [(RPRemoteDisplayXPCConnection *)self _receivedRequestID:v33 request:v34 options:v35 responseHandler:v36 sessionID:v37];

              goto LABEL_33;
            }
          }

          else
          {
          }
        }

        v38 = [v27 eventID];
        if (!v38)
        {
          goto LABEL_35;
        }

        v33 = v38;
        v39 = [v27 event];
        if (!v39)
        {
          goto LABEL_34;
        }

        v40 = v39;
        v41 = [v27 sessionID];

        if (!v41)
        {
          goto LABEL_35;
        }

        if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
        {
          sub_10012A72C(v27);
        }

        v33 = [v27 eventID];
        v34 = [v27 event];
        v35 = [v27 options];
        v36 = [v27 sessionID];
        [(RPRemoteDisplayXPCConnection *)self _receivedEventID:v33 event:v34 options:v35 sessionID:v36];
LABEL_33:

LABEL_34:
LABEL_35:
        v26 = v26 + 1;
      }

      while (v24 != v26);
      v42 = [v22 countByEnumeratingWithState:&v50 objects:v62 count:16];
      v24 = v42;
    }

    while (v42);
  }

  v43 = [v49 receivedMessages];
  [v43 removeAllObjects];
}

- (void)sessionEndedWithID:(id)a3 netCnx:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (self->_activatedServer)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_10012A80C();
    }

    if (GestaltGetDeviceClass() == 1 || GestaltGetDeviceClass() == 3)
    {
      [(RPRemoteDisplayDaemon *)self->_daemon _postNotificationForWombatActivity:2];
    }

    v7 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
    [v7 remoteDisplaySessionEndedWithID:v11];

    [(NSMutableSet *)self->_serverNetCnxs removeObject:v6];
    activeNetCnx = self->_activeNetCnx;
    if (activeNetCnx == v6)
    {
      self->_activeNetCnx = 0;
    }
  }

  else if (self->_activatedSession)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_10012A84C();
    }

    v9 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
    v10 = RPErrorF();
    [v9 remoteDisplaySessionError:v10];
  }

  else if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10012A88C();
  }
}

- (void)_receivedEventID:(id)a3 event:(id)a4 options:(id)a5 sessionID:(id)a6
{
  v17 = a6;
  activatedServer = self->_activatedServer;
  xpcCnx = self->_xpcCnx;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [(NSXPCConnection *)xpcCnx remoteObjectProxy];
  v16 = v15;
  if (activatedServer)
  {
    [v15 remoteDisplayReceivedEventID:v14 event:v13 options:v12 sessionID:v17];
  }

  else
  {
    [v15 remoteDisplayReceivedEventID:v14 event:v13 options:v12];
  }
}

- (void)_receivedRequestID:(id)a3 request:(id)a4 options:(id)a5 responseHandler:(id)a6 sessionID:(id)a7
{
  v12 = a6;
  v13 = a7;
  activatedServer = self->_activatedServer;
  xpcCnx = self->_xpcCnx;
  if (activatedServer)
  {
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000B846C;
    v28[3] = &unk_1001AC998;
    v25 = &v29;
    v16 = v12;
    v29 = v16;
    v17 = a5;
    v18 = a4;
    v19 = a3;
    v20 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v28];
    [v20 remoteDisplayReceivedRequestID:v19 request:v18 options:v17 responseHandler:v16 sessionID:v13];
  }

  else
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000B850C;
    v26[3] = &unk_1001AC998;
    v25 = &v27;
    v21 = v12;
    v27 = v21;
    v22 = a5;
    v23 = a4;
    v24 = a3;
    v20 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v26];
    [v20 remoteDisplayReceivedRequestID:v24 request:v23 options:v22 responseHandler:v21];
  }
}

- (void)_authCompletion:(id)a3
{
  v5 = a3;
  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10012A94C();
  }

  v4 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
  [v4 remoteDisplayAuthCompleted:v5];
}

- (void)updateErrorFlags:(unint64_t)a3
{
  v5 = self->_activatedDiscovery;
  if (v5)
  {
    v8 = v5;
    v6 = [(RPRemoteDisplayDiscovery *)v5 errorFlags]== a3;
    v5 = v8;
    if (!v6)
    {
      [(RPRemoteDisplayDiscovery *)v8 setErrorFlags:a3];
      if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_10012AA1C(self);
      }

      v7 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
      [v7 remoteDisplayUpdateErrorFlags:a3];

      v5 = v8;
    }
  }
}

- (void)_handleContinuityCameraDisabledAlertResponse
{
  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10012AA74();
  }

  v2 = [NSURL URLWithString:@"prefs:root=General&path=CONTINUITY_SPEC"];
  v3 = dispatch_queue_create("RPOpenURL", 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B89F0;
  block[3] = &unk_1001AA970;
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, block);
}

- (void)_showContinuityCameraDisabledAlert
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B8B34;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)remoteDisplayActivateDiscovery:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v28 = 0;
  v9 = [(RPRemoteDisplayXPCConnection *)self _entitledAndReturnError:&v28];
  v10 = v28;
  if (v9)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_10012AA90(self);
    }

    [v7 setDispatchQueue:self->_dispatchQueue];
    v11 = +[RPDaemon sharedDaemon];
    v12 = [v11 errorFlags];

    [v7 setErrorFlags:v12];
    objc_storeStrong(&self->_activatedDiscovery, a3);
    activatedDiscoverySet = self->_daemon->_activatedDiscoverySet;
    if (!activatedDiscoverySet)
    {
      v14 = objc_alloc_init(NSMutableSet);
      daemon = self->_daemon;
      v16 = daemon->_activatedDiscoverySet;
      daemon->_activatedDiscoverySet = v14;

      activatedDiscoverySet = self->_daemon->_activatedDiscoverySet;
    }

    [(NSMutableSet *)activatedDiscoverySet addObject:v7];
    if (v8)
    {
      v8[2](v8, v12, v10);
    }

    [(RPRemoteDisplayDaemon *)self->_daemon _updateForXPCClientChange];
    discoveredDevices = self->_daemon->_discoveredDevices;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000B8FCC;
    v25[3] = &unk_1001AF160;
    v26 = v7;
    v27 = self;
    [(NSMutableDictionary *)discoveredDevices enumerateKeysAndObjectsUsingBlock:v25];
    v18 = [(RPRemoteDisplayDaemon *)self->_daemon deviceConfirmedIdentifier];
    v19 = v18 != 0;

    v20 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
    v21 = [(RPRemoteDisplayDaemon *)self->_daemon deviceConfirmedIdentifier];
    [v20 remoteDisplayNotifyDiscoverySessionState:v19 forDevice:v21 startReason:{-[RPRemoteDisplayDaemon discoverySessionStartReason](self->_daemon, "discoverySessionStartReason")}];

    v22 = [(NSXPCConnection *)self->_xpcCnx valueForEntitlement:@"com.apple.RemoteDisplay.Dedicated"];
    if (v22)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v22 BOOLValue])
        {
          v23 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
          v24 = [(RPRemoteDisplayDaemon *)self->_daemon dedicatedDevice];
          [v23 remoteDisplayDedicatedDeviceChanged:v24];
        }
      }
    }
  }

  else if (v8)
  {
    v8[2](v8, 0, v10);
  }
}

- (void)remoteDisplayActivateServer:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v18 = 0;
  v9 = [(RPRemoteDisplayXPCConnection *)self _entitledAndReturnError:&v18];
  v10 = v18;
  if (v9)
  {
    v11 = [v7 serviceType];

    if (!v11)
    {
      [v7 setServiceType:@"_rdlink._tcp"];
    }

    activatedServerXPCCnxMap = self->_daemon->_activatedServerXPCCnxMap;
    v13 = [v7 serviceType];
    v14 = [(NSMutableDictionary *)activatedServerXPCCnxMap objectForKey:v13];

    if (v14)
    {
      if (v8)
      {
        v15 = RPErrorF();
        v8[2](v8, v15);
      }
    }

    else
    {
      if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_10012AADC(self);
      }

      [v7 setDispatchQueue:self->_dispatchQueue];
      objc_storeStrong(&self->_activatedServer, a3);
      [(RPRemoteDisplayDaemon *)self->_daemon _handleServerActivation:self];
      if (v8)
      {
        v8[2](v8, v10);
      }

      dispatchQueue = self->_dispatchQueue;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000B9258;
      v17[3] = &unk_1001AA970;
      v17[4] = self;
      dispatch_async(dispatchQueue, v17);
      [(RPRemoteDisplayDaemon *)self->_daemon _update];
    }
  }

  else if (v8)
  {
    v8[2](v8, v10);
  }
}

- (void)remoteDisplayActivateSession:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_1000B9C04;
  v66[3] = &unk_1001ABA80;
  v67 = 0;
  v9 = v8;
  v68 = v9;
  v10 = objc_retainBlock(v66);
  v65 = 0;
  v11 = [(RPRemoteDisplayXPCConnection *)self _entitledAndReturnError:&v65];
  v12 = v65;
  if (v11)
  {
    v13 = [v7 pairingInfo];

    if (v13)
    {
      v14 = [(NSXPCConnection *)self->_xpcCnx cuValueForEntitlementNoCache:@"com.apple.rapport.SessionPaired"];
      v15 = [v14 isEqual:&__kCFBooleanTrue];

      if ((v15 & 1) == 0)
      {
        self->_entitled = 0;
        if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
        {
          [(NSXPCConnection *)self->_xpcCnx processIdentifier];
          LogPrintF();
        }

        goto LABEL_22;
      }
    }

    if (self->_activatedSession)
    {
LABEL_22:
      RPErrorF();
      v12 = v19 = v12;
LABEL_23:

      goto LABEL_24;
    }

    v16 = [v7 serviceType];
    if ([@"com.apple.ddui.guestpairing" isEqualToString:v16])
    {
      v17 = off_1001D4D00[0]();

      if (v17)
      {
        [(RPRemoteDisplayXPCConnection *)self _showContinuityCameraDisabledAlert];
        goto LABEL_22;
      }
    }

    else
    {
    }

    v18 = [v7 destinationDevice];
    v19 = [v18 identifier];

    if (!v19 || (-[RPRemoteDisplayDaemon _findMatchingDeviceWithIdentifier:](self->_daemon, "_findMatchingDeviceWithIdentifier:", v19), (v20 = objc_claimAutoreleasedReturnValue()) == 0) && (([v7 pairingInfo], v23 = objc_claimAutoreleasedReturnValue(), v23, !v23) || (objc_msgSend(v7, "destinationDevice"), (v20 = objc_claimAutoreleasedReturnValue()) == 0)))
    {
      v24 = RPErrorF();
      v25 = v12;
      v12 = v24;
LABEL_80:

      goto LABEL_23;
    }

    v62 = v20;
    [v7 setDaemonDevice:?];
    v21 = [v7 serviceType];

    if (!v21)
    {
      [v7 setServiceType:@"_rdlink._tcp"];
    }

    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      v22 = [(NSXPCConnection *)self->_xpcCnx processIdentifier];
      v54 = [v7 serviceType];
      v56 = v62;
      v51 = v22;
      LogPrintF();
    }

    if (([v7 controlFlags] & 0x40000) != 0)
    {
      v61 = [v62 bonjourDevice];
      v30 = [v61 deviceInfo];
      Int64Ranged = CFDictionaryGetInt64Ranged();

      if (!v61 || (Int64Ranged & 0x18) == 0)
      {
        v32 = RPErrorF();

        v12 = v32;
LABEL_79:

        v25 = v62;
        goto LABEL_80;
      }

      v29 = "Infra";
      goto LABEL_47;
    }

    if (([v7 controlFlags] & 0x20000) == 0)
    {
      v26 = [v62 bonjourDevice];
      v27 = [v26 deviceInfo];
      v59 = CFDictionaryGetInt64Ranged();

      if (([v7 controlFlags] & 0x200000) != 0 || (daemon = self->_daemon, daemon->_prefNoInfra))
      {
        if ((v59 & 0x18) != 0 && !self->_daemon->_prefNoUSB)
        {
          v61 = [v62 bonjourDevice];
          v29 = "USB";
          goto LABEL_44;
        }
      }

      else if (!daemon->_prefNoUSB)
      {
        v61 = [v62 bonjourDevice];
        if ((v59 & 0x18) != 0)
        {
          v29 = "USB";
        }

        else
        {
          v29 = "Infra";
        }

LABEL_44:
        if (v61)
        {
          goto LABEL_47;
        }
      }
    }

    v61 = [(NSMutableDictionary *)self->_daemon->_bonjourAWDLDevices objectForKeyedSubscript:v19];
    if (!v61)
    {
      if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        v52 = v62;
        LogPrintF();
      }

      [(RPRemoteDisplayDaemon *)self->_daemon addNeedsAWDLPeer:v62, v52];
      if (!self->_clientNetCnx)
      {
        v35 = objc_alloc_init(RPConnection);
        clientNetCnx = self->_clientNetCnx;
        self->_clientNetCnx = v35;

        [(RPConnection *)self->_clientNetCnx setDispatchQueue:self->_dispatchQueue];
        v37 = +[RPIdentityDaemon sharedIdentityDaemon];
        [(RPConnection *)self->_clientNetCnx setIdentityDaemon:v37];

        objc_storeStrong(&self->_activeNetCnx, self->_clientNetCnx);
      }

      [v7 setNeedsAWDL:1];
      v61 = 0;
      goto LABEL_60;
    }

    [v7 setBonjourDevice:?];
    [v7 setNeedsAWDL:1];
    v29 = "AWDL";
LABEL_47:
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      v57 = [v7 serviceType];
      v58 = v61;
      v52 = v29;
      v55 = v62;
      LogPrintF();
    }

    v64 = v12;
    v33 = [(RPRemoteDisplayXPCConnection *)self netConnectionStartWithDevice:v62 session:v7 error:&v64, v52, v55, v57, v58];
    v34 = v64;

    v12 = v34;
    if ((v33 & 1) == 0)
    {
      goto LABEL_79;
    }

LABEL_60:
    [v7 setDispatchQueue:self->_dispatchQueue];
    v38 = sub_10001B924([(NSXPCConnection *)self->_xpcCnx processIdentifier]);
    [v7 setProcessName:v38];

    objc_storeStrong(&self->_activatedSession, a3);
    activatedSessionSet = self->_daemon->_activatedSessionSet;
    if (!activatedSessionSet)
    {
      v40 = objc_alloc_init(NSMutableSet);
      v41 = self->_daemon;
      v42 = v41->_activatedSessionSet;
      v41->_activatedSessionSet = v40;

      activatedSessionSet = self->_daemon->_activatedSessionSet;
    }

    [(NSMutableSet *)activatedSessionSet addObject:v7];
    if (v9)
    {
      (*(v9 + 2))(v9, v12);
    }

    v43 = [v7 pairingInfo];

    if (!v43)
    {
      goto LABEL_78;
    }

    v44 = [v7 pairingInfo];
    v63 = 0;
    v45 = [NSJSONSerialization JSONObjectWithData:v44 options:16 error:&v63];
    v46 = v63;

    if (v46)
    {
      if (dword_1001D4BA0 > 30)
      {
LABEL_74:
        v60 = objc_alloc_init(RPRemoteDisplayDevice);
        v47 = [v45 objectForKeyedSubscript:@"_pubID"];
        [v60 setIdentifier:v47];

        v48 = [v45 objectForKeyedSubscript:@"_pinC"];
        [(RPConnection *)self->_clientNetCnx setPassword:v48];

        [(RPConnection *)self->_clientNetCnx setPasswordType:10];
        [(RPConnection *)self->_clientNetCnx setPreferredIdentityType:13];
        [v7 setNeedsAWDL:1];
        v49 = [v45 objectForKeyedSubscript:@"_rdsr"];
        v50 = v49;
        if (v49 && [v49 length])
        {
          self->_daemon->_guestPairingStartReason = [v50 intValue];
        }

LABEL_78:
        [(RPRemoteDisplayDaemon *)self->_daemon _update];
        goto LABEL_79;
      }

      if (dword_1001D4BA0 != -1 || _LogCategory_Initialize())
      {
        v53 = v46;
        LogPrintF();
      }
    }

    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      v53 = v45;
      LogPrintF();
    }

    goto LABEL_74;
  }

LABEL_24:
  (v10[2])(v10);
}

- (void)remoteDisplayInvalidateSessionID:(id)a3
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10012AB28(self);
  }

  v4 = [(NSMutableDictionary *)self->_daemon->_tcpServerConnections objectForKeyedSubscript:v6];
  v5 = v4;
  if (v4)
  {
    [v4 invalidate];
  }
}

- (void)remoteDisplayInvalidateClientSession
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10012AB74(self);
  }

  if (self->_activatedSession)
  {
    [(NSMutableSet *)self->_daemon->_activatedSessionSet removeObject:?];
  }

  clientNetCnx = self->_clientNetCnx;
  if (clientNetCnx)
  {
    [(RPConnection *)clientNetCnx invalidate];
    v4 = self->_clientNetCnx;
  }

  else
  {
    v4 = 0;
  }

  self->_clientNetCnx = 0;

  activatedSession = self->_activatedSession;
  self->_activatedSession = 0;
}

- (void)remoteDisplaySendEventID:(id)a3 event:(id)a4 options:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v19 = 0;
  v14 = [(RPRemoteDisplayXPCConnection *)self _entitledAndReturnError:&v19];
  v15 = v19;
  if (v14)
  {
    v16 = self->_activeNetCnx;
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

- (void)remoteDisplayStopPairingServer
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  daemon = self->_daemon;

  [(RPRemoteDisplayDaemon *)daemon _stopPairingServer];
}

- (void)remoteDisplaySendRequestID:(id)a3 request:(id)a4 options:(id)a5 responseHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v18 = 0;
  v14 = [(RPRemoteDisplayXPCConnection *)self _entitledAndReturnError:&v18];
  v15 = v18;
  if (v14)
  {
    activeNetCnx = self->_activeNetCnx;
    if (activeNetCnx)
    {
      [(RPConnection *)activeNetCnx sendEncryptedRequestID:v10 request:v11 xpcID:self->_xpcID options:v12 responseHandler:v13];
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

- (void)remoteDisplayTryPassword:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v9 = 0;
  v5 = [(RPRemoteDisplayXPCConnection *)self _entitledAndReturnError:&v9];
  v6 = v9;
  if (v5)
  {
    v7 = self->_activeNetCnx;
    v8 = v7;
    if (v7)
    {
      [(RPConnection *)v7 tryPassword:v4];
    }

    else if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_10012ABBC(self);
    }
  }
}

- (void)remoteDisplayPersonCanceled:(id)a3
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v8 = 0;
  v4 = [(RPRemoteDisplayXPCConnection *)self _entitledAndReturnError:&v8];
  v5 = v8;
  if (v4)
  {
    v6 = [(NSXPCConnection *)self->_xpcCnx cuValueForEntitlementNoCache:@"com.apple.RemoteDisplay.SessionState"];
    v7 = [v6 isEqual:&__kCFBooleanTrue];

    if (v7)
    {
      [(RPRemoteDisplayDaemon *)self->_daemon _sendConfirmationCancelToAllDevices];
    }

    else if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_10012AC04(&self->_xpcCnx);
    }
  }
}

- (void)remoteDisplayChangeDiscoverySessionStateForDevice:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v23 = 0;
  v8 = [(RPRemoteDisplayXPCConnection *)self _entitledAndReturnError:&v23];
  v9 = v23;
  if (v8)
  {
    v10 = [(NSXPCConnection *)self->_xpcCnx valueForEntitlement:@"com.apple.RemoteDisplay.SessionState"];
    if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v10 BOOLValue] & 1) == 0)
    {
      if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_10012ADA8(&self->_xpcCnx);
      }

      goto LABEL_34;
    }

    v11 = &unk_1001D4000;
    if (v6)
    {
      if ([v7 isEqualToString:@"EnterOnPersonal"])
      {
        LODWORD(v12) = 2;
      }

      else
      {
        LODWORD(v12) = 0;
      }

      if ([v7 isEqualToString:@"Microphone Only"])
      {
        v12 = 3;
      }

      else
      {
        v12 = v12;
      }

      v13 = [(RPRemoteDisplayDaemon *)self->_daemon deviceConfirmedIdentifier];
      if (!v13 || (v14 = v13, -[RPRemoteDisplayDaemon deviceConfirmedIdentifier](self->_daemon, "deviceConfirmedIdentifier"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v6 isEqualToString:v15], v15, v11 = &unk_1001D4000, v14, (v16 & 1) != 0))
      {
LABEL_30:
        v20 = v11[744];
        if (v20 <= 30 && (v20 != -1 || _LogCategory_Initialize()))
        {
          sub_10012AD30(&self->_xpcCnx, v12);
        }

        [(RPRemoteDisplayDaemon *)self->_daemon _changeDiscoverySessionStateForDevice:v6 startReason:v12];
LABEL_34:

        goto LABEL_35;
      }
    }

    else if ([v7 isEqualToString:@"Microphone Only"])
    {
      v12 = 3;
    }

    else
    {
      v12 = 0;
    }

    if ([v7 isEqualToString:@"User disconnect"])
    {
      v22 = v12;
      v17 = [(RPRemoteDisplayDaemon *)self->_daemon dedicatedDevice];
      v18 = [(RPRemoteDisplayDaemon *)self->_daemon deviceConfirmedIdentifier];
      v21 = v17;
      v19 = [v17 idsDeviceIdentifier];
      LODWORD(v17) = [v18 isEqualToString:v19];

      if (v17)
      {
        if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
        {
          sub_10012ACD8(&self->_daemon);
        }

        [(RPRemoteDisplayDaemon *)self->_daemon saveDedicatedDevice:0];
      }

      v11 = &unk_1001D4000;
      v12 = v22;
    }

    [(RPRemoteDisplayDaemon *)self->_daemon _sendDiscoverySessionExitWithReason:v7];
    goto LABEL_30;
  }

LABEL_35:
}

- (void)remoteDisplayChangeDedicatedDevice:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (_os_feature_enabled_impl())
  {
    v8 = 0;
    v5 = [(RPRemoteDisplayXPCConnection *)self _entitledAndReturnError:&v8];
    v6 = v8;
    if (v5)
    {
      v7 = [(NSXPCConnection *)self->_xpcCnx valueForEntitlement:@"com.apple.RemoteDisplay.Dedicated"];
      if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v7 BOOLValue] & 1) != 0)
      {
        if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
        {
          sub_10012ADF8(&self->_xpcCnx);
        }

        [(RPRemoteDisplayDaemon *)self->_daemon saveDedicatedDevice:v4];
      }

      else if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_10012AE48(&self->_xpcCnx);
      }
    }
  }
}

- (void)remoteDisplayDedicatedDeviceConfirmationWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (_os_feature_enabled_impl())
  {
    v10 = 0;
    v5 = [(RPRemoteDisplayXPCConnection *)self _entitledAndReturnError:&v10];
    v6 = v10;
    if (v5)
    {
      v7 = [(NSXPCConnection *)self->_xpcCnx valueForEntitlement:@"com.apple.RemoteDisplay.Dedicated"];
      if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v7 BOOLValue] & 1) != 0)
      {
        v8 = [(RPRemoteDisplayDaemon *)self->_daemon dedicatedDevice];
        if (v8)
        {
          if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
          {
            sub_10012AE98(&self->_xpcCnx);
          }

          [(RPRemoteDisplayDaemon *)self->_daemon _requestConfirmationFromDevice:v8 pairingType:1];
          if (v4)
          {
            v4[2](v4, v6);
          }
        }

        else if (v4)
        {
          v9 = RPErrorF();
          v4[2](v4, v9);
        }
      }

      else if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_10012AEE8(&self->_xpcCnx);
      }

      goto LABEL_24;
    }

    if (!v4)
    {
LABEL_24:

      goto LABEL_25;
    }

LABEL_15:
    v4[2](v4, v6);
    goto LABEL_24;
  }

  if (v4)
  {
    v6 = RPErrorF();
    goto LABEL_15;
  }

LABEL_25:
}

@end