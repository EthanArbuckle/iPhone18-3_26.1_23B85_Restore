@interface RPNWAgentClient
+ (id)addAgentClient;
+ (id)findAgentClient:(id)a3 tryPort:(BOOL)a4 isTCP:(BOOL)a5 isFlowHandler:(BOOL)a6;
+ (id)findAgentClientFromConnectionID:(id)a3;
+ (id)findListenerAgentClientFromApplicationServiceName:(id)a3;
+ (unsigned)findAgentClientPort:(id)a3;
+ (void)initialize;
+ (void)listAgentBundleIDs:(id)a3;
+ (void)listAgentClients:(id)a3;
- (RPNWAgentClient)init;
- (const)getTypeDescription;
- (id)description;
- (id)getCachedBundleID;
- (id)longDescription;
- (void)dealloc;
- (void)handleStatusCode:(int)a3;
- (void)removeCachedBundleID;
- (void)startNearbyInvitationDiscovery:(id)a3 agentUUID:(id)a4 applicationService:(id)a5;
- (void)startPairingDiscovery:(id)a3 agentUUID:(id)a4 applicationService:(id)a5 browseMode:(unint64_t)a6;
- (void)stopAgentClient;
- (void)updateAgentClientInfo:(id)a3 browseResponse:(id)a4 listener:(id)a5 advertiseDescriptor:(id)a6 browseDescriptor:(id)a7 isFlowHandler:(BOOL)a8 isUsingQUIC:(BOOL)a9 isTCP:(BOOL)a10 agentClientPID:(int)a11 persona:(id)a12 context:(int)a13 parameters:(id)a14;
- (void)updateListenerPairingStateIfNeeded:(int)a3;
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

+ (unsigned)findAgentClientPort:(id)a3
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

    v16 = [(RPNWConnection *)connection isConnected];
    v17 = [*p_connection peer];
    v18 = v17;
    if (v16)
    {
      v19 = [*p_connection applicationService];
      v20 = [*p_connection connectionUUID];
      v38 = _NSConcreteStackBlock;
      v39 = 3221225472;
      v40 = sub_1000898C4;
      v41 = &unk_1001AAFE8;
      v42 = v18;
      v18 = v18;
      [v18 sendStatusUpdateForConnection:v19 token:v4 connectionID:v20 status:1 responseHandler:&v38];
    }

    else
    {
      [v17 deregisterRequestID:@"com.apple.oneapi.data"];
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
      v27 = [*p_nearbyInvitationConnection applicationService];
      v28 = [*p_nearbyInvitationConnection connectionUUID];
      [v26 sendStatusUpdateForConnection:v27 connectionID:v28 status:4 responseHandler:&stru_1001ADD78];
    }

    else
    {
      v29 = [v25 nearbyInvitationSession];
      [v29 deregisterRequestID:@"com.apple.oneapi.nearbyinvitation.data"];

      v27 = [v26 nearbyInvitationSession];
      [v27 invalidate];
    }

    if (self->_type == 1)
    {
      v30 = [v26 nearbyInvitationSession];
      [v30 deregisterRequestID:@"com.apple.oneapi.nearbyinvitation.connection"];
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
    v7 = [(RPNWAgentBundleID *)v5 bundleID];

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
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

- (void)startNearbyInvitationDiscovery:(id)a3 agentUUID:(id)a4 applicationService:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(RPNWNearbyInvitationDiscoverySession);
  nearbyInvitationDiscoverySession = self->_nearbyInvitationDiscoverySession;
  self->_nearbyInvitationDiscoverySession = v11;

  [(RPNWNearbyInvitationDiscoverySession *)self->_nearbyInvitationDiscoverySession setBrowseClient:self->_browseClient];
  [(RPNWNearbyInvitationDiscoverySession *)self->_nearbyInvitationDiscoverySession setBrowseResponse:v10];

  if (self->_isUsingQUIC)
  {
    v13 = 0;
  }

  else
  {
    v13 = v9;
  }

  [(RPNWNearbyInvitationDiscoverySession *)self->_nearbyInvitationDiscoverySession setAgentUUID:v13];

  [(RPNWNearbyInvitationDiscoverySession *)self->_nearbyInvitationDiscoverySession setApplicationService:v8];
  v14 = self->_nearbyInvitationDiscoverySession;

  [(RPNWNearbyInvitationDiscoverySession *)v14 startDiscovery];
}

- (void)startPairingDiscovery:(id)a3 agentUUID:(id)a4 applicationService:(id)a5 browseMode:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (dword_1001D46B8 <= 30 && (dword_1001D46B8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001227B0(self);
  }

  v13 = objc_alloc_init(NSUUID);
  [RPNWEndpoint addDiscoverySessionID:v13 forAgentClientID:self->_agentClientID];
  v14 = [_TtC8rapportd16RPPairingSession alloc];
  v15 = +[RPNWNetworkAgent sharedNetworkAgent];
  v16 = [v15 dispatchQueue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10008A0EC;
  v22[3] = &unk_1001ADDE0;
  v22[4] = v13;
  v23 = v12;
  v25 = v11;
  v26 = v10;
  v24 = self;
  v17 = v11;
  v18 = v10;
  v19 = v12;
  v20 = [(RPPairingSession *)v14 initWithApplicationService:v19 queue:v16 availablePINsChangedHandler:0 bonjourResolveHandler:0 endpointsChangedHandler:v22];
  pairingSession = self->_pairingSession;
  self->_pairingSession = v20;

  [(RPPairingSession *)self->_pairingSession activateForBrowsingWithMode:a6 completionHandler:&stru_1001ADE00];
}

- (void)updateAgentClientInfo:(id)a3 browseResponse:(id)a4 listener:(id)a5 advertiseDescriptor:(id)a6 browseDescriptor:(id)a7 isFlowHandler:(BOOL)a8 isUsingQUIC:(BOOL)a9 isTCP:(BOOL)a10 agentClientPID:(int)a11 persona:(id)a12 context:(int)a13 parameters:(id)a14
{
  v14 = a8;
  v21 = a3;
  v57 = a4;
  v22 = a5;
  v55 = a6;
  obj = a7;
  v23 = a7;
  v24 = a12;
  v56 = a14;
  v54 = v24;
  if (v24)
  {
    objc_storeStrong(&self->_persona, a12);
  }

  v25 = 120;
  if (v14)
  {
    v25 = 136;
  }

  objc_storeStrong((&self->super.isa + v25), a3);
  v26 = v57;
  if (v57)
  {
    v27 = objc_retainBlock(v57);
    browseResponse = self->_browseResponse;
    self->_browseResponse = v27;
  }

  self->_isUsingQUIC = a9;
  if (!self->_port)
  {
    self->_port = [RPNWAgentClient findAgentClientPort:v21];
  }

  if (!self->_pid)
  {
    self->_pid = a11;
  }

  self->_isTCP = a10;
  if (v55)
  {
    objc_storeStrong(&self->_advertiseDescriptor, a6);
    self->_advertiseInvitationRoute = nw_advertise_descriptor_get_invitation_route();
    self->_advertiseInvitationScope = nw_advertise_descriptor_get_invitation_scope();
  }

  if (v23)
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

    self->_isEntitled = [RPNWUtils checkPid:a11 hasEntitlement:@"com.apple.private.application-service-browse"];
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
    if (self->_isEntitled && [RPNWUtils shouldBypassPrefixBundleIDFromParameters:v56])
    {
      v35 = &unk_1001D4000;
      if (dword_1001D46B8 <= 30)
      {
        v26 = v57;
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
      v39 = [(RPNWAgentClient *)self getCachedBundleID];
      obja = v39;
      if (a13 == 2)
      {
        v26 = v57;
        v35 = &unk_1001D4000;
        goto LABEL_44;
      }

      v35 = &unk_1001D4000;
      if (v39)
      {
        v40 = [NSString stringWithFormat:@"%@.%@", v39, v34];
        v41 = *p_applicationService;
        *p_applicationService = v40;

        if (dword_1001D46B8 > 30)
        {
          v26 = v57;
LABEL_50:
          applicationServiceServer = self->_applicationServiceServer;
          if (!applicationServiceServer)
          {
            v51 = v34;
            v44 = objc_alloc_init(RPServer);
            v45 = +[RPNWNetworkAgent sharedNetworkAgentNoCreate];
            v46 = [v45 dispatchQueue];

            if (v46)
            {
              [v44 setDispatchQueue:v46];
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
            v26 = v57;
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
          v26 = v57;
          if (!_LogCategory_Initialize())
          {
            goto LABEL_50;
          }
        }

        else
        {
          v26 = v57;
        }

LABEL_46:
        browseToken = self->_browseToken;
        v50 = self->_applicationService;
        LogPrintF();
        goto LABEL_50;
      }
    }

    v26 = v57;
    goto LABEL_44;
  }

  if (self->_browseDescriptor)
  {
    v36 = 2;
  }

  else
  {
    if (v22)
    {
      self->_type = 3;
      v37 = [v22 advertiseDescriptor];
      advertiseDescriptor = self->_advertiseDescriptor;
      self->_advertiseDescriptor = v37;

      goto LABEL_56;
    }

    v36 = 4;
  }

  self->_type = v36;
LABEL_56:
  [(RPNWAgentClient *)self updateListenerPairingStateIfNeeded:a13];
  if (dword_1001D46B8 <= 30 && (dword_1001D46B8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001228D0(self);
  }
}

- (void)updateListenerPairingStateIfNeeded:(int)a3
{
  if (a3 == 2)
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

- (void)handleStatusCode:(int)a3
{
  v5 = [(RPNWAgentClient *)self connection];
  if (a3 <= 3)
  {
    if (a3 != 1)
    {
      if (a3 == 3)
      {
        if (dword_1001D46B8 <= 30 && (dword_1001D46B8 != -1 || _LogCategory_Initialize()))
        {
          sub_100122AA0(self, v5);
        }

        v19 = [v5 peer];
        v6 = [v5 peer];
        v7 = [v6 destinationDevice];
        v8 = [(RPNWAgentClient *)self flowToken];
        v9 = [v5 inbound];
        v10 = [v5 applicationService];
        v11 = [v5 endpointUUID];
        v12 = [v5 connectionUUID];
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_10008ADDC;
        v20[3] = &unk_1001AD9E0;
        v20[4] = self;
        v21 = v5;
        [v19 connectToOneAPIPeer:v7 token:v8 inboundConnection:v9 applicationService:v10 listenerID:v11 automapListener:0 connectionID:v12 connectHandler:v20];

        goto LABEL_21;
      }

      goto LABEL_14;
    }

    v15 = 53;
LABEL_17:
    if (dword_1001D46B8 <= 30 && (dword_1001D46B8 != -1 || _LogCategory_Initialize()))
    {
      sub_100122B34(self, v5);
    }

    v16 = [(RPNWAgentClient *)self connection];
    v17 = [v16 framer];
    v18 = [(RPNWAgentClient *)self flowToken];
    [RPNWFramer writeErrorOnFramer:v17 token:v18 error:v15];

    goto LABEL_21;
  }

  if (a3 == 4)
  {
    v15 = 57;
    goto LABEL_17;
  }

  if (a3 != 5)
  {
LABEL_14:
    v15 = 50;
    goto LABEL_17;
  }

  if (dword_1001D46B8 <= 30 && (dword_1001D46B8 != -1 || _LogCategory_Initialize()))
  {
    sub_100122A0C(self, v5);
  }

  [v5 setIsConnected:1];
  v13 = [v5 framer];
  v14 = [(RPNWAgentClient *)self flowToken];
  [RPNWFramer startConnection:v13 token:v14];

LABEL_21:
}

+ (id)findAgentClient:(id)a3 tryPort:(BOOL)a4 isTCP:(BOOL)a5 isFlowHandler:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v9 = a3;
  if (!a4)
  {
    if (dword_1001D46B8 <= 30 && (dword_1001D46B8 != -1 || _LogCategory_Initialize()))
    {
      sub_100122D38(v9);
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
      if (v6)
      {
        [v17 flowClient];
      }

      else
      {
        [v17 browseClient];
      }
      v18 = ;

      if (v18 == v9)
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

  v10 = [RPNWAgentClient findAgentClientPort:v9];
  if (!v10)
  {
    v14 = 0;
    goto LABEL_41;
  }

  v11 = v10;
  if (dword_1001D46B8 <= 30 && (dword_1001D46B8 != -1 || _LogCategory_Initialize()))
  {
    v12 = @"NO";
    if (v7)
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
      if ([v17 port] == v11 && objc_msgSend(v17, "isTCP") == v7)
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

+ (id)findListenerAgentClientFromApplicationServiceName:(id)a3
{
  v3 = a3;
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
          v10 = [v9 applicationService];
          v11 = [v10 isEqualToString:v3];

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

+ (id)findAgentClientFromConnectionID:(id)a3
{
  v3 = a3;
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
        v9 = [v8 connection];
        v10 = [v9 connectionUUID];
        if ([v10 isEqual:v3])
        {

LABEL_18:
          if (dword_1001D46B8 <= 30 && (dword_1001D46B8 != -1 || _LogCategory_Initialize()))
          {
            sub_100122EEC(v8);
          }

          v14 = v8;

          goto LABEL_22;
        }

        v11 = [v8 nearbyInvitationConnection];
        v12 = [v11 connectionUUID];
        v13 = [v12 isEqual:v3];

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

+ (void)listAgentClients:(id)a3
{
  v3 = a3;
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

        v9 = [*(*(&v10 + 1) + 8 * v8) longDescription];
        [v3 appendString:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

+ (void)listAgentBundleIDs:(id)a3
{
  v3 = a3;
  v4 = qword_1001D6408;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008B9F8;
  v6[3] = &unk_1001ADE28;
  v7 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

@end