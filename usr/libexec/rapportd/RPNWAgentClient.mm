@interface RPNWAgentClient
+ (id)addAgentClient;
+ (id)findAgentClient:(id)client tryPort:(BOOL)port isTCP:(BOOL)p isFlowHandler:(BOOL)handler;
+ (id)findAgentClientFromConnectionID:(id)d;
+ (id)findListenerAgentClientFromApplicationServiceName:(id)name;
+ (unsigned)findAgentClientPort:(id)port;
+ (void)initialize;
+ (void)listAgentBundleIDs:(id)ds;
+ (void)listAgentClients:(id)clients;
- (RPNWAgentClient)init;
- (const)getTypeDescription;
- (id)description;
- (id)getCachedBundleID;
- (id)longDescription;
- (void)dealloc;
- (void)handleStatusCode:(int)code;
- (void)removeCachedBundleID;
- (void)startNearbyInvitationDiscovery:(id)discovery agentUUID:(id)d applicationService:(id)service;
- (void)startPairingDiscovery:(id)discovery agentUUID:(id)d applicationService:(id)service browseMode:(unint64_t)mode;
- (void)stopAgentClient;
- (void)updateAgentClientInfo:(id)info browseResponse:(id)response listener:(id)listener advertiseDescriptor:(id)descriptor browseDescriptor:(id)browseDescriptor isFlowHandler:(BOOL)handler isUsingQUIC:(BOOL)c isTCP:(BOOL)self0 agentClientPID:(int)self1 persona:(id)self2 context:(int)self3 parameters:(id)self4;
- (void)updateListenerPairingStateIfNeeded:(int)needed;
@end

@implementation RPNWAgentClient

- (RPNWAgentClient)init
{
  v6.receiver = self;
  v6.super_class = RPNWAgentClient;
  v2 = [(RPNWAgentClient *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

+ (id)addAgentClient
{
  v2 = objc_alloc_init(RPNWAgentClient);
  v3 = +[NSUUID UUID];
  [(RPNWAgentClient *)v2 setAgentClientID:v3];

  [qword_1001D6400 addObject:v2];

  return v2;
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"RPNWAgentClient[%p]", self];
  if (self->_type)
  {
    [v3 appendFormat:@" (%s): < ", -[RPNWAgentClient getTypeDescription](self, "getTypeDescription")];
    if (self->_applicationService)
    {
      [v3 appendFormat:@"appSvc=%@ ", self->_applicationService];
    }

    persona = self->_persona;
    if (persona)
    {
      v5 = [(NSString *)persona substringToIndex:8];
      [v3 appendFormat:@"persona:%@ ", v5];
    }

    if (self->_pid)
    {
      [v3 appendFormat:@"PID:%d ", self->_pid];
    }

    [v3 appendFormat:@"entitled=%d ", self->_isEntitled];
    if (self->_flowToken)
    {
      [v3 appendFormat:@"flowToken=%@ ", self->_flowToken];
    }

    if (self->_browseToken)
    {
      [v3 appendFormat:@"browseToken=%@ ", self->_browseToken];
    }

    if (self->_browseClient)
    {
      [v3 appendFormat:@"browse_client=%p ", self->_browseClient];
    }

    if (self->_browseResponse)
    {
      [v3 appendFormat:@"browse_response=%p ", self->_browseResponse];
    }

    if (self->_flowClient)
    {
      [v3 appendFormat:@"flow_client=%p ", self->_flowClient];
    }

    if (self->_isUsingQUIC)
    {
      [v3 appendFormat:@"using_QUIC=YES "];
    }

    if (self->_port)
    {
      [v3 appendFormat:@"port=%d ", self->_port];
    }

    if (self->_isTCP)
    {
      [v3 appendFormat:@"(TCP) "];
    }

    if (self->_advertiseDescriptor)
    {
      [v3 appendFormat:@"adesc=%@ ", self->_advertiseDescriptor];
    }

    if (self->_advertiseInvitationRoute)
    {
      [v3 appendFormat:@"advertise_invitation_route=%d", self->_advertiseInvitationRoute];
    }

    if (self->_advertiseInvitationScope)
    {
      [v3 appendFormat:@"advertise_invitation_scope=%d", self->_advertiseInvitationScope];
    }

    if (self->_browseDescriptor)
    {
      [v3 appendFormat:@"bdesc=%@ ", self->_browseDescriptor];
    }

    if (self->_browseInvitationScope)
    {
      [v3 appendFormat:@"browse_invitation_scope=%d", self->_browseInvitationScope];
    }

    if (self->_listen_framer)
    {
      [v3 appendFormat:@"lframer=%p ", self->_listen_framer];
    }

    [v3 appendString:@">"];
  }

  return v3;
}

- (const)getTypeDescription
{
  type = self->_type;
  if (type > 4)
  {
    return "LSTNR";
  }

  else
  {
    return off_1001ADE48[type];
  }
}

+ (void)initialize
{
  if (qword_1001D6410 != -1)
  {
    sub_10012228C();
  }
}

- (void)dealloc
{
  [(RPNWAgentClient *)self stopAgentClient];
  v3.receiver = self;
  v3.super_class = RPNWAgentClient;
  [(RPNWAgentClient *)&v3 dealloc];
}

+ (unsigned)findAgentClientPort:(id)port
{
  v3 = nw_agent_client_copy_path();
  v4 = nw_path_copy_effective_local_endpoint(v3);
  v5 = v4;
  if (v4)
  {
    port = nw_endpoint_get_port(v4);
  }

  else
  {
    port = 0;
  }

  return port;
}

- (void)stopAgentClient
{
  browseToken = self->_browseToken;
  if (!browseToken)
  {
    browseToken = self->_flowToken;
  }

  v4 = browseToken;
  if (dword_1001D46B8 <= 30 && (dword_1001D46B8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001222A0(self);
  }

  p_discoverySession = &self->_discoverySession;
  discoverySession = self->_discoverySession;
  if (discoverySession)
  {
    if (dword_1001D46B8 <= 30)
    {
      if (dword_1001D46B8 != -1 || (v7 = _LogCategory_Initialize(), discoverySession = *p_discoverySession, v7))
      {
        sub_10012233C();
        discoverySession = v43;
      }
    }

    [(RPNWDiscoverySession *)discoverySession stopDiscovery];
    v8 = *p_discoverySession;
    *p_discoverySession = 0;
  }

  p_nearbyInvitationDiscoverySession = &self->_nearbyInvitationDiscoverySession;
  nearbyInvitationDiscoverySession = self->_nearbyInvitationDiscoverySession;
  if (nearbyInvitationDiscoverySession)
  {
    if (dword_1001D46B8 <= 30)
    {
      if (dword_1001D46B8 != -1 || (v11 = _LogCategory_Initialize(), nearbyInvitationDiscoverySession = *p_nearbyInvitationDiscoverySession, v11))
      {
        sub_1001223BC();
        nearbyInvitationDiscoverySession = v43;
      }
    }

    [(RPNWNearbyInvitationDiscoverySession *)nearbyInvitationDiscoverySession stopDiscovery];
    v12 = *p_nearbyInvitationDiscoverySession;
    *p_nearbyInvitationDiscoverySession = 0;
  }

  p_connection = &self->_connection;
  connection = self->_connection;
  if (connection)
  {
    if (dword_1001D46B8 <= 30)
    {
      if (dword_1001D46B8 != -1 || (v15 = _LogCategory_Initialize(), connection = *p_connection, v15))
      {
        sub_10012243C();
        connection = v43;
      }
    }

    isConnected = [(RPNWConnection *)connection isConnected];
    peer = [*p_connection peer];
    v18 = peer;
    if (isConnected)
    {
      applicationService = [*p_connection applicationService];
      connectionUUID = [*p_connection connectionUUID];
      v38 = _NSConcreteStackBlock;
      v39 = 3221225472;
      v40 = sub_1000898C4;
      v41 = &unk_1001AAFE8;
      v42 = v18;
      v18 = v18;
      [v18 sendStatusUpdateForConnection:applicationService token:v4 connectionID:connectionUUID status:1 responseHandler:&v38];
    }

    else
    {
      [peer deregisterRequestID:@"com.apple.oneapi.data"];
      [v18 invalidate];
    }

    [*p_connection setFramer:0];
    v21 = *p_connection;
    *p_connection = 0;
  }

  p_nearbyInvitationConnection = &self->_nearbyInvitationConnection;
  nearbyInvitationConnection = self->_nearbyInvitationConnection;
  if (nearbyInvitationConnection)
  {
    if (dword_1001D46B8 <= 30)
    {
      if (dword_1001D46B8 != -1 || (v24 = _LogCategory_Initialize(), nearbyInvitationConnection = *p_nearbyInvitationConnection, v24))
      {
        sub_1001224DC();
        nearbyInvitationConnection = v43;
      }
    }

    v25 = [(RPNWNearbyInvitationConnection *)nearbyInvitationConnection peer:v38];
    v26 = v25;
    if (self->_type == 3)
    {
      applicationService2 = [*p_nearbyInvitationConnection applicationService];
      connectionUUID2 = [*p_nearbyInvitationConnection connectionUUID];
      [v26 sendStatusUpdateForConnection:applicationService2 connectionID:connectionUUID2 status:4 responseHandler:&stru_1001ADD78];
    }

    else
    {
      nearbyInvitationSession = [v25 nearbyInvitationSession];
      [nearbyInvitationSession deregisterRequestID:@"com.apple.oneapi.nearbyinvitation.data"];

      applicationService2 = [v26 nearbyInvitationSession];
      [applicationService2 invalidate];
    }

    if (self->_type == 1)
    {
      nearbyInvitationSession2 = [v26 nearbyInvitationSession];
      [nearbyInvitationSession2 deregisterRequestID:@"com.apple.oneapi.nearbyinvitation.connection"];
    }

    [*p_nearbyInvitationConnection setFramer:0];
    v31 = *p_nearbyInvitationConnection;
    *p_nearbyInvitationConnection = 0;
  }

  applicationServiceServer = self->_applicationServiceServer;
  if (applicationServiceServer)
  {
    [(RPServer *)applicationServiceServer invalidate];
    v33 = self->_applicationServiceServer;
    self->_applicationServiceServer = 0;
  }

  nearbyInvitationServer = self->_nearbyInvitationServer;
  if (nearbyInvitationServer)
  {
    [(RPNWNearbyInvitationPeer *)nearbyInvitationServer stopServer];
    v35 = self->_nearbyInvitationServer;
    self->_nearbyInvitationServer = 0;
  }

  pairingSession = self->_pairingSession;
  if (pairingSession)
  {
    [(RPPairingSession *)pairingSession stopBrowsingWithCompletionHandler:&stru_1001ADD98];
    [(RPPairingSession *)self->_pairingSession stopServerWithCompletionHandler:&stru_1001ADDB8];
    v37 = self->_pairingSession;
    self->_pairingSession = 0;
  }

  [(RPNWAgentClient *)self removeCachedBundleID:v38];
}

- (id)longDescription
{
  v3 = objc_alloc_init(NSMutableString);
  v4 = [(RPNWAgentClient *)self description];
  [v3 appendFormat:@"%@\n", v4];

  if (self->_connection)
  {
    [v3 appendFormat:@"   + %@\n", self->_connection];
  }

  discoverySession = self->_discoverySession;
  if (discoverySession)
  {
    v6 = [(RPNWDiscoverySession *)discoverySession description];
    [v3 appendString:v6];
  }

  return v3;
}

- (id)getCachedBundleID
{
  v3 = [NSNumber numberWithInt:self->_pid];
  v4 = [qword_1001D6408 objectForKeyedSubscript:v3];
  if (v4)
  {
    v5 = v4;
    if (!self->_usesBundleID)
    {
      self->_usesBundleID = 1;
      [(RPNWAgentBundleID *)v4 setAgentCount:[(RPNWAgentBundleID *)v4 agentCount]+ 1];
    }

    goto LABEL_6;
  }

  v6 = [[RPNWAgentBundleID alloc] initWithPID:self->_pid];
  if (v6)
  {
    v5 = v6;
    self->_usesBundleID = 1;
    [qword_1001D6408 setObject:v6 forKeyedSubscript:v3];
LABEL_6:
    bundleID = [(RPNWAgentBundleID *)v5 bundleID];

    goto LABEL_7;
  }

  bundleID = 0;
LABEL_7:

  return bundleID;
}

- (void)removeCachedBundleID
{
  if (self->_usesBundleID)
  {
    v6 = [NSNumber numberWithInt:self->_pid];
    v4 = [qword_1001D6408 objectForKeyedSubscript:?];
    v5 = v4;
    if (v4)
    {
      self->_usesBundleID = 0;
      [v4 setAgentCount:{objc_msgSend(v4, "agentCount") - 1}];
      if (![v5 agentCount])
      {
        [qword_1001D6408 removeObjectForKey:v6];
      }
    }

    else if (dword_1001D46B8 <= 90 && (dword_1001D46B8 != -1 || _LogCategory_Initialize()))
    {
      sub_100122638(&self->_pid, &self->super.isa);
    }
  }
}

- (void)startNearbyInvitationDiscovery:(id)discovery agentUUID:(id)d applicationService:(id)service
{
  serviceCopy = service;
  dCopy = d;
  discoveryCopy = discovery;
  v11 = objc_alloc_init(RPNWNearbyInvitationDiscoverySession);
  nearbyInvitationDiscoverySession = self->_nearbyInvitationDiscoverySession;
  self->_nearbyInvitationDiscoverySession = v11;

  [(RPNWNearbyInvitationDiscoverySession *)self->_nearbyInvitationDiscoverySession setBrowseClient:self->_browseClient];
  [(RPNWNearbyInvitationDiscoverySession *)self->_nearbyInvitationDiscoverySession setBrowseResponse:discoveryCopy];

  if (self->_isUsingQUIC)
  {
    v13 = 0;
  }

  else
  {
    v13 = dCopy;
  }

  [(RPNWNearbyInvitationDiscoverySession *)self->_nearbyInvitationDiscoverySession setAgentUUID:v13];

  [(RPNWNearbyInvitationDiscoverySession *)self->_nearbyInvitationDiscoverySession setApplicationService:serviceCopy];
  v14 = self->_nearbyInvitationDiscoverySession;

  [(RPNWNearbyInvitationDiscoverySession *)v14 startDiscovery];
}

- (void)startPairingDiscovery:(id)discovery agentUUID:(id)d applicationService:(id)service browseMode:(unint64_t)mode
{
  discoveryCopy = discovery;
  dCopy = d;
  serviceCopy = service;
  if (dword_1001D46B8 <= 30 && (dword_1001D46B8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001227B0(self);
  }

  v13 = objc_alloc_init(NSUUID);
  [RPNWEndpoint addDiscoverySessionID:v13 forAgentClientID:self->_agentClientID];
  v14 = [_TtC8rapportd16RPPairingSession alloc];
  v15 = +[RPNWNetworkAgent sharedNetworkAgent];
  dispatchQueue = [v15 dispatchQueue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10008A0EC;
  v22[3] = &unk_1001ADDE0;
  v22[4] = v13;
  v23 = serviceCopy;
  v25 = dCopy;
  v26 = discoveryCopy;
  selfCopy = self;
  v17 = dCopy;
  v18 = discoveryCopy;
  v19 = serviceCopy;
  v20 = [(RPPairingSession *)v14 initWithApplicationService:v19 queue:dispatchQueue availablePINsChangedHandler:0 bonjourResolveHandler:0 endpointsChangedHandler:v22];
  pairingSession = self->_pairingSession;
  self->_pairingSession = v20;

  [(RPPairingSession *)self->_pairingSession activateForBrowsingWithMode:mode completionHandler:&stru_1001ADE00];
}

- (void)updateAgentClientInfo:(id)info browseResponse:(id)response listener:(id)listener advertiseDescriptor:(id)descriptor browseDescriptor:(id)browseDescriptor isFlowHandler:(BOOL)handler isUsingQUIC:(BOOL)c isTCP:(BOOL)self0 agentClientPID:(int)self1 persona:(id)self2 context:(int)self3 parameters:(id)self4
{
  handlerCopy = handler;
  infoCopy = info;
  responseCopy = response;
  listenerCopy = listener;
  descriptorCopy = descriptor;
  obj = browseDescriptor;
  browseDescriptorCopy = browseDescriptor;
  personaCopy = persona;
  parametersCopy = parameters;
  v54 = personaCopy;
  if (personaCopy)
  {
    objc_storeStrong(&self->_persona, persona);
  }

  v25 = 120;
  if (handlerCopy)
  {
    v25 = 136;
  }

  objc_storeStrong((&self->super.isa + v25), info);
  v26 = responseCopy;
  if (responseCopy)
  {
    v27 = objc_retainBlock(responseCopy);
    browseResponse = self->_browseResponse;
    self->_browseResponse = v27;
  }

  self->_isUsingQUIC = c;
  if (!self->_port)
  {
    self->_port = [RPNWAgentClient findAgentClientPort:infoCopy];
  }

  if (!self->_pid)
  {
    self->_pid = d;
  }

  self->_isTCP = p;
  if (descriptorCopy)
  {
    objc_storeStrong(&self->_advertiseDescriptor, descriptor);
    self->_advertiseInvitationRoute = nw_advertise_descriptor_get_invitation_route();
    self->_advertiseInvitationScope = nw_advertise_descriptor_get_invitation_scope();
  }

  if (browseDescriptorCopy)
  {
    objc_storeStrong(&self->_browseDescriptor, obj);
    self->_browseInvitationScope = nw_browse_descriptor_get_invitation_scope();
    application_service_name = nw_browse_descriptor_get_application_service_name(self->_browseDescriptor);
    if (application_service_name)
    {
      v30 = [NSString stringWithUTF8String:application_service_name];
      applicationService = self->_applicationService;
      self->_applicationService = v30;
    }
  }

  if (self->_advertiseDescriptor)
  {
    if (dword_1001D46B8 <= 30 && (dword_1001D46B8 != -1 || _LogCategory_Initialize()))
    {
      sub_100122898();
    }

    self->_isEntitled = [RPNWUtils checkPid:d hasEntitlement:@"com.apple.private.application-service-browse"];
    v32 = nw_advertise_descriptor_get_application_service_name(self->_advertiseDescriptor);
    if (!v32)
    {
      goto LABEL_55;
    }

    p_applicationService = &self->_applicationService;
    if (self->_applicationService)
    {
      goto LABEL_55;
    }

    v34 = [NSString stringWithUTF8String:v32];
    if (self->_isEntitled && [RPNWUtils shouldBypassPrefixBundleIDFromParameters:parametersCopy])
    {
      v35 = &unk_1001D4000;
      if (dword_1001D46B8 <= 30)
      {
        v26 = responseCopy;
        if (dword_1001D46B8 != -1 || _LogCategory_Initialize())
        {
          sub_1001228B4();
        }

        obja = 0;
LABEL_44:
        objc_storeStrong(&self->_applicationService, v34);
        v42 = v35[430];
        if (v42 > 30 || v42 == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_50;
        }

        goto LABEL_46;
      }

      obja = 0;
    }

    else
    {
      getCachedBundleID = [(RPNWAgentClient *)self getCachedBundleID];
      obja = getCachedBundleID;
      if (context == 2)
      {
        v26 = responseCopy;
        v35 = &unk_1001D4000;
        goto LABEL_44;
      }

      v35 = &unk_1001D4000;
      if (getCachedBundleID)
      {
        v40 = [NSString stringWithFormat:@"%@.%@", getCachedBundleID, v34];
        v41 = *p_applicationService;
        *p_applicationService = v40;

        if (dword_1001D46B8 > 30)
        {
          v26 = responseCopy;
LABEL_50:
          applicationServiceServer = self->_applicationServiceServer;
          if (!applicationServiceServer)
          {
            v51 = v34;
            v44 = objc_alloc_init(RPServer);
            v45 = +[RPNWNetworkAgent sharedNetworkAgentNoCreate];
            dispatchQueue = [v45 dispatchQueue];

            if (dispatchQueue)
            {
              [v44 setDispatchQueue:dispatchQueue];
            }

            v59[0] = _NSConcreteStackBlock;
            v59[1] = 3221225472;
            v59[2] = sub_10008A8F0;
            v59[3] = &unk_1001AB2C8;
            v59[4] = self;
            [v44 setErrorHandler:v59];
            v58[0] = _NSConcreteStackBlock;
            v58[1] = 3221225472;
            v58[2] = sub_10008A978;
            v58[3] = &unk_1001AA970;
            v58[4] = self;
            [v44 setInterruptionHandler:v58];
            [v44 activate];
            v47 = self->_applicationServiceServer;
            self->_applicationServiceServer = v44;
            v48 = v44;

            applicationServiceServer = self->_applicationServiceServer;
            v26 = responseCopy;
            v34 = v51;
          }

          [(RPServer *)applicationServiceServer setServiceType:*p_applicationService, browseToken, v50];

LABEL_55:
          self->_type = 1;
          [RPNWListener addListenerAgentClient:self];
          goto LABEL_56;
        }

        if (dword_1001D46B8 == -1)
        {
          v26 = responseCopy;
          if (!_LogCategory_Initialize())
          {
            goto LABEL_50;
          }
        }

        else
        {
          v26 = responseCopy;
        }

LABEL_46:
        browseToken = self->_browseToken;
        v50 = self->_applicationService;
        LogPrintF();
        goto LABEL_50;
      }
    }

    v26 = responseCopy;
    goto LABEL_44;
  }

  if (self->_browseDescriptor)
  {
    v36 = 2;
  }

  else
  {
    if (listenerCopy)
    {
      self->_type = 3;
      advertiseDescriptor = [listenerCopy advertiseDescriptor];
      advertiseDescriptor = self->_advertiseDescriptor;
      self->_advertiseDescriptor = advertiseDescriptor;

      goto LABEL_56;
    }

    v36 = 4;
  }

  self->_type = v36;
LABEL_56:
  [(RPNWAgentClient *)self updateListenerPairingStateIfNeeded:context];
  if (dword_1001D46B8 <= 30 && (dword_1001D46B8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001228D0(self);
  }
}

- (void)updateListenerPairingStateIfNeeded:(int)needed
{
  if (needed == 2)
  {
    if (!self->_pairingSession)
    {
      self->_listenerPairingState = 1;
    }
  }

  else if (self->_listenerPairingState)
  {
    v6[5] = v3;
    v6[6] = v4;
    pairingSession = self->_pairingSession;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10008AA74;
    v6[3] = &unk_1001AA970;
    v6[4] = self;
    [(RPPairingSession *)pairingSession stopServerWithCompletionHandler:v6];
  }
}

- (void)handleStatusCode:(int)code
{
  connection = [(RPNWAgentClient *)self connection];
  if (code <= 3)
  {
    if (code != 1)
    {
      if (code == 3)
      {
        if (dword_1001D46B8 <= 30 && (dword_1001D46B8 != -1 || _LogCategory_Initialize()))
        {
          sub_100122AA0(self, connection);
        }

        peer = [connection peer];
        peer2 = [connection peer];
        destinationDevice = [peer2 destinationDevice];
        flowToken = [(RPNWAgentClient *)self flowToken];
        inbound = [connection inbound];
        applicationService = [connection applicationService];
        endpointUUID = [connection endpointUUID];
        connectionUUID = [connection connectionUUID];
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_10008ADDC;
        v20[3] = &unk_1001AD9E0;
        v20[4] = self;
        v21 = connection;
        [peer connectToOneAPIPeer:destinationDevice token:flowToken inboundConnection:inbound applicationService:applicationService listenerID:endpointUUID automapListener:0 connectionID:connectionUUID connectHandler:v20];

        goto LABEL_21;
      }

      goto LABEL_14;
    }

    v15 = 53;
LABEL_17:
    if (dword_1001D46B8 <= 30 && (dword_1001D46B8 != -1 || _LogCategory_Initialize()))
    {
      sub_100122B34(self, connection);
    }

    connection2 = [(RPNWAgentClient *)self connection];
    framer = [connection2 framer];
    flowToken2 = [(RPNWAgentClient *)self flowToken];
    [RPNWFramer writeErrorOnFramer:framer token:flowToken2 error:v15];

    goto LABEL_21;
  }

  if (code == 4)
  {
    v15 = 57;
    goto LABEL_17;
  }

  if (code != 5)
  {
LABEL_14:
    v15 = 50;
    goto LABEL_17;
  }

  if (dword_1001D46B8 <= 30 && (dword_1001D46B8 != -1 || _LogCategory_Initialize()))
  {
    sub_100122A0C(self, connection);
  }

  [connection setIsConnected:1];
  framer2 = [connection framer];
  flowToken3 = [(RPNWAgentClient *)self flowToken];
  [RPNWFramer startConnection:framer2 token:flowToken3];

LABEL_21:
}

+ (id)findAgentClient:(id)client tryPort:(BOOL)port isTCP:(BOOL)p isFlowHandler:(BOOL)handler
{
  handlerCopy = handler;
  pCopy = p;
  clientCopy = client;
  if (!port)
  {
    if (dword_1001D46B8 <= 30 && (dword_1001D46B8 != -1 || _LogCategory_Initialize()))
    {
      sub_100122D38(clientCopy);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v13 = qword_1001D6400;
    v14 = [v13 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (!v14)
    {
      goto LABEL_40;
    }

    v15 = *v31;
LABEL_13:
    v16 = 0;
    while (1)
    {
      if (*v31 != v15)
      {
        objc_enumerationMutation(v13);
      }

      v17 = *(*(&v30 + 1) + 8 * v16);
      if (handlerCopy)
      {
        [v17 flowClient];
      }

      else
      {
        [v17 browseClient];
      }
      v18 = ;

      if (v18 == clientCopy)
      {
        goto LABEL_35;
      }

      if (v14 == ++v16)
      {
        v14 = [v13 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v14)
        {
          goto LABEL_13;
        }

        goto LABEL_40;
      }
    }
  }

  v10 = [RPNWAgentClient findAgentClientPort:clientCopy];
  if (!v10)
  {
    v14 = 0;
    goto LABEL_41;
  }

  v11 = v10;
  if (dword_1001D46B8 <= 30 && (dword_1001D46B8 != -1 || _LogCategory_Initialize()))
  {
    v12 = @"NO";
    if (pCopy)
    {
      v12 = @"YES";
    }

    v24 = v11;
    v25 = v12;
    LogPrintF();
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = qword_1001D6400;
  v19 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
LABEL_27:
    v22 = 0;
    while (1)
    {
      if (*v27 != v21)
      {
        objc_enumerationMutation(v13);
      }

      v17 = *(*(&v26 + 1) + 8 * v22);
      if ([v17 port] == v11 && objc_msgSend(v17, "isTCP") == pCopy)
      {
        break;
      }

      if (v20 == ++v22)
      {
        v20 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v20)
        {
          goto LABEL_27;
        }

        goto LABEL_34;
      }
    }

LABEL_35:
    if (dword_1001D46B8 <= 30 && (dword_1001D46B8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v14 = v17;
    goto LABEL_40;
  }

LABEL_34:
  v14 = 0;
LABEL_40:

LABEL_41:

  return v14;
}

+ (id)findListenerAgentClientFromApplicationServiceName:(id)name
{
  nameCopy = name;
  if (dword_1001D46B8 <= 30 && (dword_1001D46B8 != -1 || _LogCategory_Initialize()))
  {
    sub_100122DC0();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = qword_1001D6400;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 type] == 1)
        {
          applicationService = [v9 applicationService];
          v11 = [applicationService isEqualToString:nameCopy];

          if (v11)
          {
            if (dword_1001D46B8 <= 30 && (dword_1001D46B8 != -1 || _LogCategory_Initialize()))
            {
              sub_100122E00(v9);
            }

            v12 = v9;

            goto LABEL_21;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if (dword_1001D46B8 <= 30 && (dword_1001D46B8 != -1 || _LogCategory_Initialize()))
  {
    sub_100122E78();
  }

  v12 = 0;
LABEL_21:

  return v12;
}

+ (id)findAgentClientFromConnectionID:(id)d
{
  dCopy = d;
  if (dword_1001D46B8 <= 30 && (dword_1001D46B8 != -1 || _LogCategory_Initialize()))
  {
    sub_100122EAC();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = qword_1001D6400;
  v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        connection = [v8 connection];
        connectionUUID = [connection connectionUUID];
        if ([connectionUUID isEqual:dCopy])
        {

LABEL_18:
          if (dword_1001D46B8 <= 30 && (dword_1001D46B8 != -1 || _LogCategory_Initialize()))
          {
            sub_100122EEC(v8);
          }

          v14 = v8;

          goto LABEL_22;
        }

        nearbyInvitationConnection = [v8 nearbyInvitationConnection];
        connectionUUID2 = [nearbyInvitationConnection connectionUUID];
        v13 = [connectionUUID2 isEqual:dCopy];

        if (v13)
        {
          goto LABEL_18;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  if (dword_1001D46B8 <= 30 && (dword_1001D46B8 != -1 || _LogCategory_Initialize()))
  {
    sub_100122F64();
  }

  v14 = 0;
LABEL_22:

  return v14;
}

+ (void)listAgentClients:(id)clients
{
  clientsCopy = clients;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = qword_1001D6400;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        longDescription = [*(*(&v10 + 1) + 8 * v8) longDescription];
        [clientsCopy appendString:longDescription];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

+ (void)listAgentBundleIDs:(id)ds
{
  dsCopy = ds;
  v4 = qword_1001D6408;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008B9F8;
  v6[3] = &unk_1001ADE28;
  v7 = dsCopy;
  v5 = dsCopy;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

@end