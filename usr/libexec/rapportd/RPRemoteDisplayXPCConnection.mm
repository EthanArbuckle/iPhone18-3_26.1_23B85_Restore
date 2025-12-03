@interface RPRemoteDisplayXPCConnection
- (BOOL)_entitledAndReturnError:(id *)error;
- (BOOL)netConnectionStartWithDevice:(id)device session:(id)session error:(id *)error;
- (RPRemoteDisplayXPCConnection)initWithDaemon:(id)daemon xpcCnx:(id)cnx;
- (void)_authCompletion:(id)completion;
- (void)_handleContinuityCameraDisabledAlertResponse;
- (void)_receivedEventID:(id)d event:(id)event options:(id)options sessionID:(id)iD;
- (void)_receivedRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler sessionID:(id)iD;
- (void)_showContinuityCameraDisabledAlert;
- (void)connectionInvalidated;
- (void)remoteDisplayActivateDiscovery:(id)discovery completion:(id)completion;
- (void)remoteDisplayActivateServer:(id)server completion:(id)completion;
- (void)remoteDisplayActivateSession:(id)session completion:(id)completion;
- (void)remoteDisplayChangeDedicatedDevice:(id)device;
- (void)remoteDisplayChangeDiscoverySessionStateForDevice:(id)device reason:(id)reason;
- (void)remoteDisplayDedicatedDeviceConfirmationWithCompletion:(id)completion;
- (void)remoteDisplayInvalidateClientSession;
- (void)remoteDisplayInvalidateSessionID:(id)d;
- (void)remoteDisplayPersonCanceled:(id)canceled;
- (void)remoteDisplaySendEventID:(id)d event:(id)event options:(id)options completion:(id)completion;
- (void)remoteDisplaySendRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler;
- (void)remoteDisplayStopPairingServer;
- (void)remoteDisplayTryPassword:(id)password;
- (void)sessionEndedWithID:(id)d netCnx:(id)cnx;
- (void)sessionStartWithID:(id)d netCnx:(id)cnx completion:(id)completion;
- (void)updateErrorFlags:(unint64_t)flags;
@end

@implementation RPRemoteDisplayXPCConnection

- (RPRemoteDisplayXPCConnection)initWithDaemon:(id)daemon xpcCnx:(id)cnx
{
  daemonCopy = daemon;
  cnxCopy = cnx;
  v12.receiver = self;
  v12.super_class = RPRemoteDisplayXPCConnection;
  v9 = [(RPRemoteDisplayXPCConnection *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_daemon, daemon);
    objc_storeStrong(&v10->_xpcCnx, cnx);
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

- (BOOL)_entitledAndReturnError:(id *)error
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
    if (error)
    {
      goto LABEL_9;
    }
  }

  else if (error)
  {
LABEL_9:
    v9 = RPErrorF();
    v10 = v9;
    result = 0;
    *error = v9;
    return result;
  }

  return 0;
}

- (BOOL)netConnectionStartWithDevice:(id)device session:(id)session error:(id *)error
{
  deviceCopy = device;
  sessionCopy = session;
  bonjourDevice = [sessionCopy bonjourDevice];
  if (bonjourDevice || ([deviceCopy bonjourDevice], (bonjourDevice = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = bonjourDevice;
  }

  else
  {
    ipAddress = [deviceCopy ipAddress];

    if (!ipAddress)
    {
      if (error)
      {
        RPErrorF();
        *error = v31 = 0;
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

  ipAddress2 = [deviceCopy ipAddress];

  if (ipAddress2)
  {
    ipAddress3 = [deviceCopy ipAddress];
    [(RPConnection *)v13 setDestinationString:ipAddress3];
  }

  else
  {
    [(RPConnection *)v13 setBonjourPeerDevice:v11];
  }

  [(RPConnection *)v13 setControlFlags:576];
  if (([deviceCopy statusFlags] & 0x1000080000) == 0)
  {
    [(RPConnection *)v13 setControlFlags:[(RPConnection *)v13 controlFlags]| 0x400000000000];
  }

  pairingInfo = [sessionCopy pairingInfo];

  if (pairingInfo)
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
  -[RPConnection setPasswordType:](v13, "setPasswordType:", [sessionCopy passwordType]);
  identifier = [deviceCopy identifier];
  [(RPConnection *)v13 setPeerIdentifier:identifier];

  [(RPConnection *)v13 setPresent:1];
  serviceType = [sessionCopy serviceType];
  [(RPConnection *)v13 setServiceType:serviceType];

  if (([sessionCopy internalAuthFlags] & 8) != 0)
  {
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_1000B76C8;
    v46[3] = &unk_1001AB2C8;
    v46[4] = self;
    [(RPConnection *)v13 setAuthCompletionHandler:v46];
  }

  if (([sessionCopy internalAuthFlags] & 4) != 0)
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
  v35 = sessionCopy;
  v36 = v27;
  selfCopy = self;
  v30 = v27;
  [(RPConnection *)v30 setStateChangedHandler:v34];
  [(RPConnection *)v30 activate];

  v31 = 1;
LABEL_18:

  return v31;
}

- (void)sessionStartWithID:(id)d netCnx:(id)cnx completion:(id)completion
{
  dCopy = d;
  cnxCopy = cnx;
  completionCopy = completion;
  v11 = objc_alloc_init(RPRemoteDisplayDevice);
  peerDeviceInfo = [cnxCopy peerDeviceInfo];
  if (peerDeviceInfo)
  {
    [v11 updateWithEndpoint:peerDeviceInfo];
  }

  linkType = [cnxCopy linkType];
  v14 = linkType;
  if (linkType == 4)
  {
    v15 = 8;
LABEL_7:
    [v11 setStatusFlags:{objc_msgSend(v11, "statusFlags") | v15}];
    goto LABEL_8;
  }

  if ((linkType & 0xFFFFFFFE) == 8)
  {
    v15 = 0x1000000;
    goto LABEL_7;
  }

LABEL_8:
  v16 = self->_activeNetCnx;
  if (v16 && dword_1001D4BA0 < 31 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    v44 = v16;
    v45 = cnxCopy;
    LogPrintF();
  }

  objc_storeStrong(&self->_activeNetCnx, cnx);
  xpcCnx = self->_xpcCnx;
  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_1000B7E78;
  v59[3] = &unk_1001AD4C0;
  v18 = dCopy;
  v60 = v18;
  v19 = completionCopy;
  v61 = v19;
  v20 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v59];
  v21 = [NSNumber numberWithInt:v14];
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_1000B7F38;
  v54[3] = &unk_1001ABF30;
  v55 = v18;
  v56 = v11;
  selfCopy = self;
  v46 = v19;
  v47 = v55;
  v58 = v46;
  v48 = v11;
  [v20 remoteDisplayStartServerSessionID:v55 device:v11 linkType:v21 completion:v54];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v49 = cnxCopy;
  receivedMessages = [cnxCopy receivedMessages];
  v23 = [receivedMessages countByEnumeratingWithState:&v50 objects:v62 count:16];
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
          objc_enumerationMutation(receivedMessages);
        }

        v27 = *(*(&v50 + 1) + 8 * v26);
        requestID = [v27 requestID];
        if (requestID)
        {
          v29 = requestID;
          request = [v27 request];
          if (request)
          {
            v31 = request;
            sessionID = [v27 sessionID];

            if (sessionID)
            {
              if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
              {
                sub_10012A6D8(v27);
              }

              requestID2 = [v27 requestID];
              request2 = [v27 request];
              options = [v27 options];
              responseHandler = [v27 responseHandler];
              sessionID2 = [v27 sessionID];
              [(RPRemoteDisplayXPCConnection *)self _receivedRequestID:requestID2 request:request2 options:options responseHandler:responseHandler sessionID:sessionID2];

              goto LABEL_33;
            }
          }

          else
          {
          }
        }

        eventID = [v27 eventID];
        if (!eventID)
        {
          goto LABEL_35;
        }

        requestID2 = eventID;
        event = [v27 event];
        if (!event)
        {
          goto LABEL_34;
        }

        v40 = event;
        sessionID3 = [v27 sessionID];

        if (!sessionID3)
        {
          goto LABEL_35;
        }

        if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
        {
          sub_10012A72C(v27);
        }

        requestID2 = [v27 eventID];
        request2 = [v27 event];
        options = [v27 options];
        responseHandler = [v27 sessionID];
        [(RPRemoteDisplayXPCConnection *)self _receivedEventID:requestID2 event:request2 options:options sessionID:responseHandler];
LABEL_33:

LABEL_34:
LABEL_35:
        v26 = v26 + 1;
      }

      while (v24 != v26);
      v42 = [receivedMessages countByEnumeratingWithState:&v50 objects:v62 count:16];
      v24 = v42;
    }

    while (v42);
  }

  receivedMessages2 = [v49 receivedMessages];
  [receivedMessages2 removeAllObjects];
}

- (void)sessionEndedWithID:(id)d netCnx:(id)cnx
{
  dCopy = d;
  cnxCopy = cnx;
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

    remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
    [remoteObjectProxy remoteDisplaySessionEndedWithID:dCopy];

    [(NSMutableSet *)self->_serverNetCnxs removeObject:cnxCopy];
    activeNetCnx = self->_activeNetCnx;
    if (activeNetCnx == cnxCopy)
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

    remoteObjectProxy2 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
    v10 = RPErrorF();
    [remoteObjectProxy2 remoteDisplaySessionError:v10];
  }

  else if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10012A88C();
  }
}

- (void)_receivedEventID:(id)d event:(id)event options:(id)options sessionID:(id)iD
{
  iDCopy = iD;
  activatedServer = self->_activatedServer;
  xpcCnx = self->_xpcCnx;
  optionsCopy = options;
  eventCopy = event;
  dCopy = d;
  remoteObjectProxy = [(NSXPCConnection *)xpcCnx remoteObjectProxy];
  v16 = remoteObjectProxy;
  if (activatedServer)
  {
    [remoteObjectProxy remoteDisplayReceivedEventID:dCopy event:eventCopy options:optionsCopy sessionID:iDCopy];
  }

  else
  {
    [remoteObjectProxy remoteDisplayReceivedEventID:dCopy event:eventCopy options:optionsCopy];
  }
}

- (void)_receivedRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler sessionID:(id)iD
{
  handlerCopy = handler;
  iDCopy = iD;
  activatedServer = self->_activatedServer;
  xpcCnx = self->_xpcCnx;
  if (activatedServer)
  {
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000B846C;
    v28[3] = &unk_1001AC998;
    v25 = &v29;
    v16 = handlerCopy;
    v29 = v16;
    optionsCopy = options;
    requestCopy = request;
    dCopy = d;
    v20 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v28];
    [v20 remoteDisplayReceivedRequestID:dCopy request:requestCopy options:optionsCopy responseHandler:v16 sessionID:iDCopy];
  }

  else
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000B850C;
    v26[3] = &unk_1001AC998;
    v25 = &v27;
    v21 = handlerCopy;
    v27 = v21;
    optionsCopy2 = options;
    requestCopy2 = request;
    dCopy2 = d;
    v20 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v26];
    [v20 remoteDisplayReceivedRequestID:dCopy2 request:requestCopy2 options:optionsCopy2 responseHandler:v21];
  }
}

- (void)_authCompletion:(id)completion
{
  completionCopy = completion;
  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10012A94C();
  }

  remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
  [remoteObjectProxy remoteDisplayAuthCompleted:completionCopy];
}

- (void)updateErrorFlags:(unint64_t)flags
{
  v5 = self->_activatedDiscovery;
  if (v5)
  {
    v8 = v5;
    v6 = [(RPRemoteDisplayDiscovery *)v5 errorFlags]== flags;
    v5 = v8;
    if (!v6)
    {
      [(RPRemoteDisplayDiscovery *)v8 setErrorFlags:flags];
      if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_10012AA1C(self);
      }

      remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
      [remoteObjectProxy remoteDisplayUpdateErrorFlags:flags];

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

- (void)remoteDisplayActivateDiscovery:(id)discovery completion:(id)completion
{
  discoveryCopy = discovery;
  completionCopy = completion;
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

    [discoveryCopy setDispatchQueue:self->_dispatchQueue];
    v11 = +[RPDaemon sharedDaemon];
    errorFlags = [v11 errorFlags];

    [discoveryCopy setErrorFlags:errorFlags];
    objc_storeStrong(&self->_activatedDiscovery, discovery);
    activatedDiscoverySet = self->_daemon->_activatedDiscoverySet;
    if (!activatedDiscoverySet)
    {
      v14 = objc_alloc_init(NSMutableSet);
      daemon = self->_daemon;
      v16 = daemon->_activatedDiscoverySet;
      daemon->_activatedDiscoverySet = v14;

      activatedDiscoverySet = self->_daemon->_activatedDiscoverySet;
    }

    [(NSMutableSet *)activatedDiscoverySet addObject:discoveryCopy];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, errorFlags, v10);
    }

    [(RPRemoteDisplayDaemon *)self->_daemon _updateForXPCClientChange];
    discoveredDevices = self->_daemon->_discoveredDevices;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000B8FCC;
    v25[3] = &unk_1001AF160;
    v26 = discoveryCopy;
    selfCopy = self;
    [(NSMutableDictionary *)discoveredDevices enumerateKeysAndObjectsUsingBlock:v25];
    deviceConfirmedIdentifier = [(RPRemoteDisplayDaemon *)self->_daemon deviceConfirmedIdentifier];
    v19 = deviceConfirmedIdentifier != 0;

    remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
    deviceConfirmedIdentifier2 = [(RPRemoteDisplayDaemon *)self->_daemon deviceConfirmedIdentifier];
    [remoteObjectProxy remoteDisplayNotifyDiscoverySessionState:v19 forDevice:deviceConfirmedIdentifier2 startReason:{-[RPRemoteDisplayDaemon discoverySessionStartReason](self->_daemon, "discoverySessionStartReason")}];

    v22 = [(NSXPCConnection *)self->_xpcCnx valueForEntitlement:@"com.apple.RemoteDisplay.Dedicated"];
    if (v22)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v22 BOOLValue])
        {
          remoteObjectProxy2 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
          dedicatedDevice = [(RPRemoteDisplayDaemon *)self->_daemon dedicatedDevice];
          [remoteObjectProxy2 remoteDisplayDedicatedDeviceChanged:dedicatedDevice];
        }
      }
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, v10);
  }
}

- (void)remoteDisplayActivateServer:(id)server completion:(id)completion
{
  serverCopy = server;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v18 = 0;
  v9 = [(RPRemoteDisplayXPCConnection *)self _entitledAndReturnError:&v18];
  v10 = v18;
  if (v9)
  {
    serviceType = [serverCopy serviceType];

    if (!serviceType)
    {
      [serverCopy setServiceType:@"_rdlink._tcp"];
    }

    activatedServerXPCCnxMap = self->_daemon->_activatedServerXPCCnxMap;
    serviceType2 = [serverCopy serviceType];
    v14 = [(NSMutableDictionary *)activatedServerXPCCnxMap objectForKey:serviceType2];

    if (v14)
    {
      if (completionCopy)
      {
        v15 = RPErrorF();
        completionCopy[2](completionCopy, v15);
      }
    }

    else
    {
      if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_10012AADC(self);
      }

      [serverCopy setDispatchQueue:self->_dispatchQueue];
      objc_storeStrong(&self->_activatedServer, server);
      [(RPRemoteDisplayDaemon *)self->_daemon _handleServerActivation:self];
      if (completionCopy)
      {
        completionCopy[2](completionCopy, v10);
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

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, v10);
  }
}

- (void)remoteDisplayActivateSession:(id)session completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_1000B9C04;
  v66[3] = &unk_1001ABA80;
  v67 = 0;
  v9 = completionCopy;
  v68 = v9;
  v10 = objc_retainBlock(v66);
  v65 = 0;
  v11 = [(RPRemoteDisplayXPCConnection *)self _entitledAndReturnError:&v65];
  v12 = v65;
  if (v11)
  {
    pairingInfo = [sessionCopy pairingInfo];

    if (pairingInfo)
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
      v12 = identifier = v12;
LABEL_23:

      goto LABEL_24;
    }

    serviceType = [sessionCopy serviceType];
    if ([@"com.apple.ddui.guestpairing" isEqualToString:serviceType])
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

    destinationDevice = [sessionCopy destinationDevice];
    identifier = [destinationDevice identifier];

    if (!identifier || (-[RPRemoteDisplayDaemon _findMatchingDeviceWithIdentifier:](self->_daemon, "_findMatchingDeviceWithIdentifier:", identifier), (v20 = objc_claimAutoreleasedReturnValue()) == 0) && (([sessionCopy pairingInfo], v23 = objc_claimAutoreleasedReturnValue(), v23, !v23) || (objc_msgSend(sessionCopy, "destinationDevice"), (v20 = objc_claimAutoreleasedReturnValue()) == 0)))
    {
      v24 = RPErrorF();
      v25 = v12;
      v12 = v24;
LABEL_80:

      goto LABEL_23;
    }

    v62 = v20;
    [sessionCopy setDaemonDevice:?];
    serviceType2 = [sessionCopy serviceType];

    if (!serviceType2)
    {
      [sessionCopy setServiceType:@"_rdlink._tcp"];
    }

    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      processIdentifier = [(NSXPCConnection *)self->_xpcCnx processIdentifier];
      serviceType3 = [sessionCopy serviceType];
      v56 = v62;
      v51 = processIdentifier;
      LogPrintF();
    }

    if (([sessionCopy controlFlags] & 0x40000) != 0)
    {
      bonjourDevice = [v62 bonjourDevice];
      deviceInfo = [bonjourDevice deviceInfo];
      Int64Ranged = CFDictionaryGetInt64Ranged();

      if (!bonjourDevice || (Int64Ranged & 0x18) == 0)
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

    if (([sessionCopy controlFlags] & 0x20000) == 0)
    {
      bonjourDevice2 = [v62 bonjourDevice];
      deviceInfo2 = [bonjourDevice2 deviceInfo];
      v59 = CFDictionaryGetInt64Ranged();

      if (([sessionCopy controlFlags] & 0x200000) != 0 || (daemon = self->_daemon, daemon->_prefNoInfra))
      {
        if ((v59 & 0x18) != 0 && !self->_daemon->_prefNoUSB)
        {
          bonjourDevice = [v62 bonjourDevice];
          v29 = "USB";
          goto LABEL_44;
        }
      }

      else if (!daemon->_prefNoUSB)
      {
        bonjourDevice = [v62 bonjourDevice];
        if ((v59 & 0x18) != 0)
        {
          v29 = "USB";
        }

        else
        {
          v29 = "Infra";
        }

LABEL_44:
        if (bonjourDevice)
        {
          goto LABEL_47;
        }
      }
    }

    bonjourDevice = [(NSMutableDictionary *)self->_daemon->_bonjourAWDLDevices objectForKeyedSubscript:identifier];
    if (!bonjourDevice)
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

      [sessionCopy setNeedsAWDL:1];
      bonjourDevice = 0;
      goto LABEL_60;
    }

    [sessionCopy setBonjourDevice:?];
    [sessionCopy setNeedsAWDL:1];
    v29 = "AWDL";
LABEL_47:
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      serviceType4 = [sessionCopy serviceType];
      v58 = bonjourDevice;
      v52 = v29;
      v55 = v62;
      LogPrintF();
    }

    v64 = v12;
    v33 = [(RPRemoteDisplayXPCConnection *)self netConnectionStartWithDevice:v62 session:sessionCopy error:&v64, v52, v55, serviceType4, v58];
    v34 = v64;

    v12 = v34;
    if ((v33 & 1) == 0)
    {
      goto LABEL_79;
    }

LABEL_60:
    [sessionCopy setDispatchQueue:self->_dispatchQueue];
    v38 = sub_10001B924([(NSXPCConnection *)self->_xpcCnx processIdentifier]);
    [sessionCopy setProcessName:v38];

    objc_storeStrong(&self->_activatedSession, session);
    activatedSessionSet = self->_daemon->_activatedSessionSet;
    if (!activatedSessionSet)
    {
      v40 = objc_alloc_init(NSMutableSet);
      v41 = self->_daemon;
      v42 = v41->_activatedSessionSet;
      v41->_activatedSessionSet = v40;

      activatedSessionSet = self->_daemon->_activatedSessionSet;
    }

    [(NSMutableSet *)activatedSessionSet addObject:sessionCopy];
    if (v9)
    {
      (*(v9 + 2))(v9, v12);
    }

    pairingInfo2 = [sessionCopy pairingInfo];

    if (!pairingInfo2)
    {
      goto LABEL_78;
    }

    pairingInfo3 = [sessionCopy pairingInfo];
    v63 = 0;
    v45 = [NSJSONSerialization JSONObjectWithData:pairingInfo3 options:16 error:&v63];
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
        [sessionCopy setNeedsAWDL:1];
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

- (void)remoteDisplayInvalidateSessionID:(id)d
{
  dCopy = d;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10012AB28(self);
  }

  v4 = [(NSMutableDictionary *)self->_daemon->_tcpServerConnections objectForKeyedSubscript:dCopy];
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

- (void)remoteDisplaySendEventID:(id)d event:(id)event options:(id)options completion:(id)completion
{
  dCopy = d;
  eventCopy = event;
  optionsCopy = options;
  completionCopy = completion;
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
      [(RPConnection *)v16 sendEncryptedEventID:dCopy event:eventCopy options:optionsCopy completion:completionCopy];
    }

    else if (completionCopy)
    {
      v18 = RPErrorF();
      completionCopy[2](completionCopy, v18);
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, v15);
  }
}

- (void)remoteDisplayStopPairingServer
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  daemon = self->_daemon;

  [(RPRemoteDisplayDaemon *)daemon _stopPairingServer];
}

- (void)remoteDisplaySendRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler
{
  dCopy = d;
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v18 = 0;
  v14 = [(RPRemoteDisplayXPCConnection *)self _entitledAndReturnError:&v18];
  v15 = v18;
  if (v14)
  {
    activeNetCnx = self->_activeNetCnx;
    if (activeNetCnx)
    {
      [(RPConnection *)activeNetCnx sendEncryptedRequestID:dCopy request:requestCopy xpcID:self->_xpcID options:optionsCopy responseHandler:handlerCopy];
    }

    else
    {
      v17 = RPErrorF();
      (*(handlerCopy + 2))(handlerCopy, 0, 0, v17);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v15);
  }
}

- (void)remoteDisplayTryPassword:(id)password
{
  passwordCopy = password;
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
      [(RPConnection *)v7 tryPassword:passwordCopy];
    }

    else if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_10012ABBC(self);
    }
  }
}

- (void)remoteDisplayPersonCanceled:(id)canceled
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

- (void)remoteDisplayChangeDiscoverySessionStateForDevice:(id)device reason:(id)reason
{
  deviceCopy = device;
  reasonCopy = reason;
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
    if (deviceCopy)
    {
      if ([reasonCopy isEqualToString:@"EnterOnPersonal"])
      {
        LODWORD(v12) = 2;
      }

      else
      {
        LODWORD(v12) = 0;
      }

      if ([reasonCopy isEqualToString:@"Microphone Only"])
      {
        v12 = 3;
      }

      else
      {
        v12 = v12;
      }

      deviceConfirmedIdentifier = [(RPRemoteDisplayDaemon *)self->_daemon deviceConfirmedIdentifier];
      if (!deviceConfirmedIdentifier || (v14 = deviceConfirmedIdentifier, -[RPRemoteDisplayDaemon deviceConfirmedIdentifier](self->_daemon, "deviceConfirmedIdentifier"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [deviceCopy isEqualToString:v15], v15, v11 = &unk_1001D4000, v14, (v16 & 1) != 0))
      {
LABEL_30:
        v20 = v11[744];
        if (v20 <= 30 && (v20 != -1 || _LogCategory_Initialize()))
        {
          sub_10012AD30(&self->_xpcCnx, v12);
        }

        [(RPRemoteDisplayDaemon *)self->_daemon _changeDiscoverySessionStateForDevice:deviceCopy startReason:v12];
LABEL_34:

        goto LABEL_35;
      }
    }

    else if ([reasonCopy isEqualToString:@"Microphone Only"])
    {
      v12 = 3;
    }

    else
    {
      v12 = 0;
    }

    if ([reasonCopy isEqualToString:@"User disconnect"])
    {
      v22 = v12;
      dedicatedDevice = [(RPRemoteDisplayDaemon *)self->_daemon dedicatedDevice];
      deviceConfirmedIdentifier2 = [(RPRemoteDisplayDaemon *)self->_daemon deviceConfirmedIdentifier];
      v21 = dedicatedDevice;
      idsDeviceIdentifier = [dedicatedDevice idsDeviceIdentifier];
      LODWORD(dedicatedDevice) = [deviceConfirmedIdentifier2 isEqualToString:idsDeviceIdentifier];

      if (dedicatedDevice)
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

    [(RPRemoteDisplayDaemon *)self->_daemon _sendDiscoverySessionExitWithReason:reasonCopy];
    goto LABEL_30;
  }

LABEL_35:
}

- (void)remoteDisplayChangeDedicatedDevice:(id)device
{
  deviceCopy = device;
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

        [(RPRemoteDisplayDaemon *)self->_daemon saveDedicatedDevice:deviceCopy];
      }

      else if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_10012AE48(&self->_xpcCnx);
      }
    }
  }
}

- (void)remoteDisplayDedicatedDeviceConfirmationWithCompletion:(id)completion
{
  completionCopy = completion;
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
        dedicatedDevice = [(RPRemoteDisplayDaemon *)self->_daemon dedicatedDevice];
        if (dedicatedDevice)
        {
          if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
          {
            sub_10012AE98(&self->_xpcCnx);
          }

          [(RPRemoteDisplayDaemon *)self->_daemon _requestConfirmationFromDevice:dedicatedDevice pairingType:1];
          if (completionCopy)
          {
            completionCopy[2](completionCopy, v6);
          }
        }

        else if (completionCopy)
        {
          v9 = RPErrorF();
          completionCopy[2](completionCopy, v9);
        }
      }

      else if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_10012AEE8(&self->_xpcCnx);
      }

      goto LABEL_24;
    }

    if (!completionCopy)
    {
LABEL_24:

      goto LABEL_25;
    }

LABEL_15:
    completionCopy[2](completionCopy, v6);
    goto LABEL_24;
  }

  if (completionCopy)
  {
    v6 = RPErrorF();
    goto LABEL_15;
  }

LABEL_25:
}

@end