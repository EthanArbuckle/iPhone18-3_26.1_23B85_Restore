@interface RPNWNearbyInvitationPeer
+ (const)responseCodeToString:(int)string;
+ (const)statusCodeToString:(int)string;
+ (id)createNWEndpointForEndpoint:(id)endpoint agentID:(id)d applicationService:(id)service;
+ (id)createNWEndpointWithID:(id)d agentID:(id)iD applicationService:(id)service;
- (BOOL)findNearbyInvitationListenerAndCreateConnection:(id)connection applicationService:(id)service listenerID:(id)d connectionID:(id)iD agentClient:(id)client;
- (RPNWNearbyInvitationPeer)init;
- (void)connectToPeer:(id)peer inboundConnection:(BOOL)connection applicationService:(id)service listenerID:(id)d connectionID:(id)iD connectHandler:(id)handler disconnectHandler:(id)disconnectHandler;
- (void)dealloc;
- (void)handleConnectionData:(BOOL)data;
- (void)handleConnectionRequest:(id)request agentClient:(id)client;
- (void)receiveDataForConnection:(id)connection statusHandler:(id)handler;
- (void)receiveWithRequestID:(id)d receiveHandler:(id)handler;
- (void)sendDataForConnection:(id)connection applicationService:(id)service connectionID:(id)d responseHandler:(id)handler;
- (void)startDiscovery:(id)discovery foundHandler:(id)handler updateHandler:(id)updateHandler lostHandler:(id)lostHandler invalidationHandler:(id)invalidationHandler;
- (void)startServer:(id)server withCompletion:(id)completion disconnectHandler:(id)handler;
- (void)stopDiscovery;
- (void)stopServer;
@end

@implementation RPNWNearbyInvitationPeer

- (RPNWNearbyInvitationPeer)init
{
  v6.receiver = self;
  v6.super_class = RPNWNearbyInvitationPeer;
  v2 = [(RPNWNearbyInvitationPeer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = RPNWNearbyInvitationPeer;
  [(RPNWNearbyInvitationPeer *)&v2 dealloc];
}

- (void)startDiscovery:(id)discovery foundHandler:(id)handler updateHandler:(id)updateHandler lostHandler:(id)lostHandler invalidationHandler:(id)invalidationHandler
{
  discoveryCopy = discovery;
  handlerCopy = handler;
  updateHandlerCopy = updateHandler;
  lostHandlerCopy = lostHandler;
  invalidationHandlerCopy = invalidationHandler;
  if (self->_nearbyInvitationDiscovery)
  {
    if (dword_1001D40E8 <= 90 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
    {
      sub_10011D270();
    }
  }

  else
  {
    if (dword_1001D40E8 <= 30 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
    {
      sub_10011D28C(self);
    }

    v17 = objc_alloc_init(RPNearbyInvitationDiscovery);
    nearbyInvitationDiscovery = self->_nearbyInvitationDiscovery;
    self->_nearbyInvitationDiscovery = v17;

    v19 = +[RPNWNetworkAgent sharedNetworkAgent];
    dispatchQueue = [v19 dispatchQueue];
    [(RPNearbyInvitationDiscovery *)self->_nearbyInvitationDiscovery setDispatchQueue:dispatchQueue];

    [(RPNearbyInvitationDiscovery *)self->_nearbyInvitationDiscovery setDiscoveryFlags:1];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100076788;
    v29[3] = &unk_1001AD3B0;
    v30 = handlerCopy;
    [(RPNearbyInvitationDiscovery *)self->_nearbyInvitationDiscovery setDeviceFoundHandler:v29];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100076798;
    v27[3] = &unk_1001AD3D8;
    v28 = updateHandlerCopy;
    [(RPNearbyInvitationDiscovery *)self->_nearbyInvitationDiscovery setDeviceChangedHandler:v27];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000767B0;
    v25[3] = &unk_1001AD3B0;
    v26 = lostHandlerCopy;
    [(RPNearbyInvitationDiscovery *)self->_nearbyInvitationDiscovery setDeviceLostHandler:v25];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000767C0;
    v23[3] = &unk_1001AD400;
    v24 = invalidationHandlerCopy;
    [(RPNearbyInvitationDiscovery *)self->_nearbyInvitationDiscovery setInvalidationHandler:v23];
    v21 = self->_nearbyInvitationDiscovery;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000767D0;
    v22[3] = &unk_1001AB2C8;
    v22[4] = self;
    [(RPNearbyInvitationDiscovery *)v21 activateWithCompletion:v22];
  }
}

- (void)stopDiscovery
{
  if (!self->_nearbyInvitationDiscovery)
  {
    if (dword_1001D40E8 <= 30 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
    {
      sub_10011D358(self);
    }

    nearbyInvitationDiscovery = self->_nearbyInvitationDiscovery;

    [(RPNearbyInvitationDiscovery *)nearbyInvitationDiscovery invalidate];
  }
}

- (void)startServer:(id)server withCompletion:(id)completion disconnectHandler:(id)handler
{
  serverCopy = server;
  completionCopy = completion;
  handlerCopy = handler;
  if (self->_nearbyInvitationServer)
  {
    if (dword_1001D40E8 <= 90 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
    {
      sub_10011D3E4();
    }
  }

  else
  {
    v11 = objc_alloc_init(RPNearbyInvitationServer);
    nearbyInvitationServer = self->_nearbyInvitationServer;
    self->_nearbyInvitationServer = v11;

    applicationService = [serverCopy applicationService];
    [(RPNearbyInvitationServer *)self->_nearbyInvitationServer setServiceType:applicationService];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100076B40;
    v19[3] = &unk_1001AD450;
    v19[4] = self;
    v21 = handlerCopy;
    v20 = serverCopy;
    [(RPNearbyInvitationServer *)self->_nearbyInvitationServer setSessionStartHandler:v19];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100076E6C;
    v18[3] = &unk_1001AD478;
    v18[4] = self;
    [(RPNearbyInvitationServer *)self->_nearbyInvitationServer setSessionEndedHandler:v18];
    [(RPNearbyInvitationServer *)self->_nearbyInvitationServer setInvalidationHandler:&stru_1001AD498];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100076F84;
    v17[3] = &unk_1001AA970;
    v17[4] = self;
    [(RPNearbyInvitationServer *)self->_nearbyInvitationServer setInterruptionHandler:v17];
    v14 = self->_nearbyInvitationServer;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100076FE0;
    v15[3] = &unk_1001AD4C0;
    v15[4] = self;
    v16 = completionCopy;
    [(RPNearbyInvitationServer *)v14 activateWithCompletion:v15];
  }
}

- (void)stopServer
{
  nearbyInvitationServer = self->_nearbyInvitationServer;
  if (nearbyInvitationServer)
  {
    [(RPNearbyInvitationServer *)nearbyInvitationServer invalidate];
    v4 = self->_nearbyInvitationServer;
    self->_nearbyInvitationServer = 0;
  }
}

- (void)connectToPeer:(id)peer inboundConnection:(BOOL)connection applicationService:(id)service listenerID:(id)d connectionID:(id)iD connectHandler:(id)handler disconnectHandler:(id)disconnectHandler
{
  connectionCopy = connection;
  peerCopy = peer;
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  handlerCopy = handler;
  disconnectHandlerCopy = disconnectHandler;
  if (connectionCopy && !self->_nearbyInvitationSession)
  {
    if (dword_1001D40E8 <= 90 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
    {
      sub_10011D68C();
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  else
  {
    if (dword_1001D40E8 <= 30 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
    {
      sub_10011D64C();
    }

    v21 = objc_alloc_init(RPNearbyInvitationSession);
    nearbyInvitationSession = self->_nearbyInvitationSession;
    self->_nearbyInvitationSession = v21;

    v23 = +[RPNWNetworkAgent sharedNetworkAgent];
    dispatchQueue = [v23 dispatchQueue];
    [(RPNearbyInvitationSession *)self->_nearbyInvitationSession setDispatchQueue:dispatchQueue];

    [(RPNearbyInvitationSession *)self->_nearbyInvitationSession setDestinationDevice:peerCopy];
    v25 = self->_nearbyInvitationSession;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100077374;
    v26[3] = &unk_1001AD510;
    v27 = peerCopy;
    v32 = handlerCopy;
    selfCopy = self;
    v33 = disconnectHandlerCopy;
    v29 = serviceCopy;
    v30 = dCopy;
    v31 = iDCopy;
    [(RPNearbyInvitationSession *)v25 activateWithCompletion:v26];
  }
}

- (BOOL)findNearbyInvitationListenerAndCreateConnection:(id)connection applicationService:(id)service listenerID:(id)d connectionID:(id)iD agentClient:(id)client
{
  clientCopy = client;
  iDCopy = iD;
  serviceCopy = service;
  connectionCopy = connection;
  v14 = [RPNWNearbyInvitationConnection alloc];
  destinationDevice = [connectionCopy destinationDevice];
  v16 = +[NSUUID UUID];
  v17 = [(RPNWNearbyInvitationConnection *)v14 initWithPeer:destinationDevice session:connectionCopy inbound:1 internal:1 applicationService:serviceCopy connectionID:iDCopy endpointID:v16];

  [clientCopy setNearbyInvitationConnection:v17];
  nearbyInvitationConnection = [clientCopy nearbyInvitationConnection];

  if (nearbyInvitationConnection)
  {
    listen_framer = [clientCopy listen_framer];
    flowToken = [clientCopy flowToken];
    [RPNWFramer startConnection:listen_framer token:flowToken];

    nearbyInvitationConnection2 = [clientCopy nearbyInvitationConnection];
    [nearbyInvitationConnection2 setIsConnected:1];
  }

  return nearbyInvitationConnection != 0;
}

- (void)handleConnectionData:(BOOL)data
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000779A0;
  v3[3] = &unk_1001AD530;
  dataCopy = data;
  [(RPNWNearbyInvitationPeer *)self receiveDataForConnection:v3 statusHandler:&stru_1001AD570];
}

- (void)handleConnectionRequest:(id)request agentClient:(id)client
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100077D08;
  v7[3] = &unk_1001AD598;
  selfCopy = self;
  requestCopy = request;
  clientCopy = client;
  v5 = clientCopy;
  v6 = requestCopy;
  [(RPNWNearbyInvitationPeer *)selfCopy receiveWithRequestID:@"com.apple.oneapi.nearbyinvitation.connection" receiveHandler:v7];
}

+ (id)createNWEndpointWithID:(id)d agentID:(id)iD applicationService:(id)service
{
  serviceCopy = service;
  iDCopy = iD;
  dCopy = d;
  v11 = objc_alloc_init(RPNWNearbyInvitationEndpoint);
  [(RPNWNearbyInvitationEndpoint *)v11 setEndpointUUID:dCopy];

  v12 = [self createNWEndpointForEndpoint:v11 agentID:iDCopy applicationService:serviceCopy];

  return v12;
}

+ (id)createNWEndpointForEndpoint:(id)endpoint agentID:(id)d applicationService:(id)service
{
  endpointCopy = endpoint;
  dCopy = d;
  [service UTF8String];
  v25[0] = 0;
  v25[1] = 0;
  endpointUUID = [endpointCopy endpointUUID];
  [endpointUUID getUUIDBytes:v25];

  application_service = nw_endpoint_create_application_service();
  if (dCopy)
  {
    v24[0] = 0;
    v24[1] = 0;
    [dCopy getUUIDBytes:v24];
    nw_endpoint_set_agent_identifier();
  }

  device = [endpointCopy device];

  if (device)
  {
    device2 = [endpointCopy device];
    model = [device2 model];

    if (model)
    {
      device3 = [endpointCopy device];
      model2 = [device3 model];
      [model2 UTF8String];
      nw_endpoint_set_device_model();
    }

    device4 = [endpointCopy device];
    identifier = [device4 identifier];

    if (identifier)
    {
      device5 = [endpointCopy device];
      identifier2 = [device5 identifier];
      [identifier2 UTF8String];
      nw_endpoint_set_device_id();
    }

    device6 = [endpointCopy device];
    deviceColor = [device6 deviceColor];

    if (deviceColor)
    {
      device7 = [endpointCopy device];
      [device7 deviceColor];
      nw_endpoint_set_device_color();
    }
  }

  return application_service;
}

+ (const)responseCodeToString:(int)string
{
  if (string > 3)
  {
    return "N/A";
  }

  else
  {
    return (&off_1001AD658)[string];
  }
}

+ (const)statusCodeToString:(int)string
{
  if ((string - 1) > 4)
  {
    return "N/A";
  }

  else
  {
    return (&off_1001AD678)[string - 1];
  }
}

- (void)receiveWithRequestID:(id)d receiveHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (self->_nearbyInvitationSession)
  {
    if (dword_1001D40E8 <= 30 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
    {
      sub_10011D8C8();
    }

    nearbyInvitationSession = self->_nearbyInvitationSession;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10007822C;
    v9[3] = &unk_1001AD5C0;
    v10 = dCopy;
    v11 = handlerCopy;
    [(RPNearbyInvitationSession *)nearbyInvitationSession registerRequestID:v10 options:0 handler:v9];
  }

  else if (dword_1001D40E8 <= 90 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
  {
    sub_10011D908();
  }
}

- (void)receiveDataForConnection:(id)connection statusHandler:(id)handler
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100078C50;
  v8[3] = &unk_1001AD610;
  connectionCopy = connection;
  handlerCopy = handler;
  v6 = handlerCopy;
  v7 = connectionCopy;
  [(RPNWNearbyInvitationPeer *)self receiveWithRequestID:@"com.apple.oneapi.nearbyinvitation.data" receiveHandler:v8];
}

- (void)sendDataForConnection:(id)connection applicationService:(id)service connectionID:(id)d responseHandler:(id)handler
{
  connectionCopy = connection;
  serviceCopy = service;
  dCopy = d;
  handlerCopy = handler;
  if (dword_1001D40E8 <= 30 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
  {
    sub_10011DCD0();
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100078F24;
  v15[3] = &unk_1001AD638;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [(RPNWNearbyInvitationPeer *)self sendWithRequestID:@"com.apple.oneapi.nearbyinvitation.data" data:connectionCopy status:0 applicationService:serviceCopy listenerID:0 connectionID:dCopy responseHandler:v15];
}

@end