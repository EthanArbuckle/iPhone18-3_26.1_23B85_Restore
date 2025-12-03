@interface RPNearbyInvitationXPCConnection
- (BOOL)_entitledAndReturnError:(id *)error;
- (BOOL)reportFoundDevice:(id)device outReason:(id *)reason;
- (RPNearbyInvitationXPCConnection)initWithDaemon:(id)daemon xpcCnx:(id)cnx;
- (void)connectionInvalidated;
- (void)nearbyInvitationActivateDiscovery:(id)discovery completion:(id)completion;
- (void)nearbyInvitationActivateServer:(id)server completion:(id)completion;
- (void)nearbyInvitationActivateSession:(id)session completion:(id)completion;
- (void)nearbyInvitationInvalidateClientSession;
- (void)nearbyInvitationInvalidateSessionID:(id)d;
- (void)nearbyInvitationSendEventID:(id)d event:(id)event options:(id)options completion:(id)completion;
- (void)nearbyInvitationSendRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler;
- (void)reportLostDevice:(id)device;
- (void)sessionActivatedWithError:(id)error;
- (void)sessionEndedWithID:(id)d netCnx:(id)cnx;
- (void)sessionStartWithID:(id)d netCnx:(id)cnx completion:(id)completion;
@end

@implementation RPNearbyInvitationXPCConnection

- (RPNearbyInvitationXPCConnection)initWithDaemon:(id)daemon xpcCnx:(id)cnx
{
  daemonCopy = daemon;
  cnxCopy = cnx;
  v12.receiver = self;
  v12.super_class = RPNearbyInvitationXPCConnection;
  v9 = [(RPNearbyInvitationXPCConnection *)&v12 init];
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
    serviceType = [(RPNearbyInvitationServer *)v4 serviceType];
    [(NSMutableDictionary *)activatedServerXPCCnxMap removeObjectForKey:serviceType];

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

- (BOOL)_entitledAndReturnError:(id *)error
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
    *error = v10;

    return self->_entitled;
  }
}

- (void)sessionStartWithID:(id)d netCnx:(id)cnx completion:(id)completion
{
  dCopy = d;
  cnxCopy = cnx;
  completionCopy = completion;
  v11 = objc_alloc_init(RPNearbyInvitationDevice);
  peerDeviceInfo = [cnxCopy peerDeviceInfo];
  if (peerDeviceInfo)
  {
    [v11 updateWithEndpoint:peerDeviceInfo];
  }

  netCnx = self->_netCnx;
  self->_netCnx = cnxCopy;
  v14 = cnxCopy;

  if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  xpcCnx = self->_xpcCnx;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100063740;
  v18[3] = &unk_1001AC998;
  v19 = completionCopy;
  v16 = completionCopy;
  v17 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v18];
  [v17 nearbyInvitationStartServerSessionID:dCopy device:v11 completion:v16];
}

- (void)sessionEndedWithID:(id)d netCnx:(id)cnx
{
  dCopy = d;
  cnxCopy = cnx;
  if (self->_activatedServer)
  {
    if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_10011A094();
    }

    remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
    [remoteObjectProxy nearbyInvitationSessionEndedWithID:dCopy];
  }
}

- (void)sessionActivatedWithError:(id)error
{
  errorCopy = error;
  [(RPNearbyInvitationSession *)self->_activatedSession setWaitingToConnect:0];
  [(RPNearbyInvitationSession *)self->_activatedSession setFailedToConnect:errorCopy != 0];
  activateCompletionHandler = self->_activateCompletionHandler;
  if (activateCompletionHandler)
  {
    activateCompletionHandler[2](activateCompletionHandler, errorCopy);
    v5 = self->_activateCompletionHandler;
    self->_activateCompletionHandler = 0;
  }
}

- (void)nearbyInvitationActivateDiscovery:(id)discovery completion:(id)completion
{
  discoveryCopy = discovery;
  completionCopy = completion;
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

    [discoveryCopy setDispatchQueue:self->_dispatchQueue];
    objc_storeStrong(&self->_activatedDiscovery, discovery);
    activatedDiscoverySet = self->_daemon->_activatedDiscoverySet;
    if (!activatedDiscoverySet)
    {
      v12 = objc_alloc_init(NSMutableSet);
      daemon = self->_daemon;
      v14 = daemon->_activatedDiscoverySet;
      daemon->_activatedDiscoverySet = v12;

      activatedDiscoverySet = self->_daemon->_activatedDiscoverySet;
    }

    [(NSMutableSet *)activatedDiscoverySet addObject:discoveryCopy];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v10);
    }

    [(RPNearbyInvitationDaemon *)self->_daemon _update];
    discoveredDevices = self->_daemon->_discoveredDevices;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100063AD0;
    v16[3] = &unk_1001ACD00;
    v17 = discoveryCopy;
    selfCopy = self;
    [(NSMutableDictionary *)discoveredDevices enumerateKeysAndObjectsUsingBlock:v16];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, v10);
  }
}

- (void)nearbyInvitationActivateServer:(id)server completion:(id)completion
{
  serverCopy = server;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v18 = 0;
  v9 = [(RPNearbyInvitationXPCConnection *)self _entitledAndReturnError:&v18];
  v10 = v18;
  if (v9)
  {
    serviceType = [serverCopy serviceType];

    if (serviceType)
    {
      activatedServerXPCCnxMap = self->_daemon->_activatedServerXPCCnxMap;
      serviceType2 = [serverCopy serviceType];
      v14 = [(NSMutableDictionary *)activatedServerXPCCnxMap objectForKey:serviceType2];

      if (v14)
      {
        if (completionCopy)
        {
          serviceType3 = [serverCopy serviceType];
          v15 = RPErrorF();
          completionCopy[2](completionCopy, v15);
        }
      }

      else
      {
        if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
        {
          sub_10011A11C(self);
        }

        [serverCopy setDispatchQueue:self->_dispatchQueue];
        objc_storeStrong(&self->_activatedServer, server);
        [(RPNearbyInvitationDaemon *)self->_daemon _handleServerActivation:self];
        if (completionCopy)
        {
          completionCopy[2](completionCopy, v10);
        }

        [(RPNearbyInvitationDaemon *)self->_daemon _update];
      }
    }

    else
    {
      v16 = RPErrorF();

      if (completionCopy)
      {
        completionCopy[2](completionCopy, v16);
      }

      v10 = v16;
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, v10);
  }
}

- (void)nearbyInvitationActivateSession:(id)session completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
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
  v9 = completionCopy;
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
      identifier = v38[5];
      v38[5] = v13;
    }

    else
    {
      destinationDevice = [sessionCopy destinationDevice];
      identifier = [destinationDevice identifier];

      if (identifier)
      {
        v16 = [(RPNearbyInvitationDaemon *)self->_daemon _findMatchingDeviceWithIdentifier:identifier];
        v17 = v16;
        if (v16 && ([v16 identifier], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(identifier, "isEqualToString:", v18), v18, (v19 & 1) != 0))
        {
          [sessionCopy setDaemonDevice:v17];
          if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
          {
            processIdentifier = [(NSXPCConnection *)self->_xpcCnx processIdentifier];
            serviceType = [sessionCopy serviceType];
            v32 = v17;
            v30 = processIdentifier;
            LogPrintF();
          }

          [sessionCopy setWaitingToConnect:{1, v30, serviceType, v32}];
          [sessionCopy setDispatchQueue:self->_dispatchQueue];
          objc_storeStrong(&self->_activatedSession, session);
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

          [(NSMutableSet *)activatedSessionSet addObject:sessionCopy];
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

- (void)nearbyInvitationInvalidateSessionID:(id)d
{
  dCopy = d;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
  {
    sub_10011A1B8(self);
  }
}

- (void)nearbyInvitationSendEventID:(id)d event:(id)event options:(id)options completion:(id)completion
{
  dCopy = d;
  eventCopy = event;
  optionsCopy = options;
  completionCopy = completion;
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

- (void)nearbyInvitationSendRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler
{
  dCopy = d;
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v18 = 0;
  v14 = [(RPNearbyInvitationXPCConnection *)self _entitledAndReturnError:&v18];
  v15 = v18;
  if (v14)
  {
    netCnx = self->_netCnx;
    if (netCnx)
    {
      [(RPConnection *)netCnx sendEncryptedRequestID:dCopy request:requestCopy xpcID:self->_xpcID options:optionsCopy responseHandler:handlerCopy];
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

- (BOOL)reportFoundDevice:(id)device outReason:(id *)reason
{
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  if (!identifier)
  {
    if (reason)
    {
      v14 = 0;
      v15 = @"missingDeviceIdentifier";
LABEL_11:
      *reason = v15;
      goto LABEL_15;
    }

LABEL_12:
    v14 = 0;
    goto LABEL_15;
  }

  if (([(RPNearbyInvitationDiscovery *)self->_activatedDiscovery shouldReportDevice:deviceCopy]& 1) == 0)
  {
    if (reason)
    {
      v14 = 0;
      v15 = @"activateDiscoveryIgnore";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v8 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:identifier];

  devices = self->_devices;
  if (!devices)
  {
    v10 = objc_alloc_init(NSMutableDictionary);
    v11 = self->_devices;
    self->_devices = v10;

    devices = self->_devices;
  }

  [(NSMutableDictionary *)devices setObject:deviceCopy forKeyedSubscript:identifier];
  remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
  v13 = remoteObjectProxy;
  if (v8)
  {
    [remoteObjectProxy nearbyInvitationChangedDevice:deviceCopy changes:2];
  }

  else
  {
    [remoteObjectProxy nearbyInvitationFoundDevice:deviceCopy];
  }

  v14 = 1;
LABEL_15:

  return v14;
}

- (void)reportLostDevice:(id)device
{
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  if (identifier)
  {
    v5 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:identifier];

    if (v5)
    {
      [(NSMutableDictionary *)self->_devices setObject:0 forKeyedSubscript:identifier];
      remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
      [remoteObjectProxy nearbyInvitationLostDevice:deviceCopy];
    }
  }
}

@end